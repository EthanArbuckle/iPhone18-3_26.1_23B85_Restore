@interface VOTUISystemPointerController
- (BOOL)handlePointerEvent:(id)a3;
- (CGPoint)lastPointerEventPoint;
- (VOTUISystemPointerController)initWithContextId:(unsigned int)a3;
- (VOTUISystemPointerControllerDelegate)delegate;
- (void)dealloc;
- (void)movePointerToPoint:(CGPoint)a3 contextId:(unsigned int)a4;
@end

@implementation VOTUISystemPointerController

- (VOTUISystemPointerController)initWithContextId:(unsigned int)a3
{
  v3 = *&a3;
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

- (void)movePointerToPoint:(CGPoint)a3 contextId:(unsigned int)a4
{
  v5 = [[BKSContextRelativePoint alloc] initWithPoint:*&a4 contextID:{a3.x, a3.y}];
  v4 = +[BKSMousePointerService sharedInstance];
  [v4 setContextRelativePointerPosition:v5 onDisplay:0 withAnimationParameters:0 restrictingToPID:0xFFFFFFFFLL];
}

- (BOOL)handlePointerEvent:(id)a3
{
  v4 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - *&qword_4B338 > 0.05)
  {
    v6 = [v4 pointerControllerInfo];
    v7 = [v6 pointerIsAbsolute];

    if (v7)
    {
      v8 = [v4 pointerControllerInfo];
      [v8 pointerX];
      v10 = v9;
      v11 = [v4 pointerControllerInfo];
      [v11 pointerY];
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

        v21 = [(VOTUISystemPointerController *)self delegate];
        [v21 systemPointerController:self pointerDidMoveToGlobalPoint:{v18, v20}];
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