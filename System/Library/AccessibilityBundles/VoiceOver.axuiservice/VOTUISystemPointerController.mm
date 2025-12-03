@interface VOTUISystemPointerController
- (BOOL)handlePointerEvent:(id)event;
- (CGPoint)lastPointerEventPoint;
- (VOTUISystemPointerController)initWithContextId:(unsigned int)id;
- (VOTUISystemPointerControllerDelegate)delegate;
- (void)dealloc;
- (void)movePointerToPoint:(CGPoint)point contextId:(unsigned int)id;
@end

@implementation VOTUISystemPointerController

- (VOTUISystemPointerController)initWithContextId:(unsigned int)id
{
  v3 = *&id;
  v16.receiver = self;
  v16.super_class = VOTUISystemPointerController;
  v4 = [(VOTUISystemPointerController *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v4->_contextId = v3;
    if (v3)
    {
      v6 = +[BKSMousePointerService sharedInstance];
      v7 = [v6 requestGlobalMouseEventsForDisplay:0 targetContextID:v3];
      pointerEventStream = v5->_pointerEventStream;
      v5->_pointerEventStream = v7;
    }

    __asm { FMOV            V0.2D, #-1.0 }

    v5->_lastPointerEventPoint = _Q0;
    v14 = +[AXUIEventManager sharedEventManager];
    [v14 registerEventHandler:v5];
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[AXUIEventManager sharedEventManager];
  [v3 unregisterEventHandler:self];

  [(BSInvalidatable *)self->_pointerEventStream invalidate];
  pointerEventStream = self->_pointerEventStream;
  self->_pointerEventStream = 0;

  v5.receiver = self;
  v5.super_class = VOTUISystemPointerController;
  [(VOTUISystemPointerController *)&v5 dealloc];
}

- (void)movePointerToPoint:(CGPoint)point contextId:(unsigned int)id
{
  v5 = [[BKSContextRelativePoint alloc] initWithPoint:*&id contextID:{point.x, point.y}];
  v4 = +[BKSMousePointerService sharedInstance];
  [v4 setContextRelativePointerPosition:v5 onDisplay:0 withAnimationParameters:0 restrictingToPID:0xFFFFFFFFLL];
}

- (BOOL)handlePointerEvent:(id)event
{
  eventCopy = event;
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - *&qword_4B338 > 0.05)
  {
    pointerControllerInfo = [eventCopy pointerControllerInfo];
    pointerIsAbsolute = [pointerControllerInfo pointerIsAbsolute];

    if (pointerIsAbsolute)
    {
      pointerControllerInfo2 = [eventCopy pointerControllerInfo];
      [pointerControllerInfo2 pointerX];
      v10 = v9;
      pointerControllerInfo3 = [eventCopy pointerControllerInfo];
      [pointerControllerInfo3 pointerY];
      v13 = v12;

      [(VOTUISystemPointerController *)self lastPointerEventPoint];
      if (v15 != v10 || v14 != v13)
      {
        qword_4B338 = *&Current;
        [(VOTUISystemPointerController *)self setLastPointerEventPoint:v10, v13];
        v16 = +[AXBackBoardServer server];
        [v16 convertPoint:-[VOTUISystemPointerController contextId](self fromContextId:{"contextId"), v10, v13}];
        v18 = v17;
        v20 = v19;

        delegate = [(VOTUISystemPointerController *)self delegate];
        [delegate systemPointerController:self pointerDidMoveToGlobalPoint:{v18, v20}];
      }
    }
  }

  return 0;
}

- (VOTUISystemPointerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)lastPointerEventPoint
{
  x = self->_lastPointerEventPoint.x;
  y = self->_lastPointerEventPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end