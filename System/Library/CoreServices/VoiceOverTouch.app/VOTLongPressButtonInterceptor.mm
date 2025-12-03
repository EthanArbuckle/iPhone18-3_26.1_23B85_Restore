@interface VOTLongPressButtonInterceptor
- (VOTLongPressButtonInterceptor)initWithThreadKey:(id)key longPressDelay:(double)delay longPressHandler:(id)handler;
- (void)_timerFired;
- (void)buttonDownOccurred:(id)occurred;
- (void)buttonUpOccurred:(id)occurred;
- (void)dealloc;
@end

@implementation VOTLongPressButtonInterceptor

- (VOTLongPressButtonInterceptor)initWithThreadKey:(id)key longPressDelay:(double)delay longPressHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = VOTLongPressButtonInterceptor;
  v10 = [(VOTLongPressButtonInterceptor *)&v15 init];
  v11 = v10;
  if (v10)
  {
    *&v10->_timer = delay;
    [(VOTLongPressButtonInterceptor *)v10 setLongPressHandler:handlerCopy];
    v12 = [objc_allocWithZone(SCRCTargetSelectorTimer) initWithTarget:v11 selector:"_timerFired" threadKey:keyCopy];
    longPressHandler = v11->_longPressHandler;
    v11->_longPressHandler = v12;
  }

  return v11;
}

- (void)dealloc
{
  timer = [(VOTLongPressButtonInterceptor *)self timer];
  [timer invalidate];

  v4.receiver = self;
  v4.super_class = VOTLongPressButtonInterceptor;
  [(VOTLongPressButtonInterceptor *)&v4 dealloc];
}

- (void)buttonDownOccurred:(id)occurred
{
  occurredCopy = occurred;
  v6.receiver = self;
  v6.super_class = VOTLongPressButtonInterceptor;
  [(VOTButtonInterceptor *)&v6 buttonDownOccurred:occurredCopy];
  if (!*(&self->super._listensPassively + 1))
  {
    *(&self->super._listensPassively + 1) = 1;
    if (![(VOTButtonInterceptor *)self listensPassively])
    {
      [(VOTLongPressButtonInterceptor *)self setPendingDownEvent:occurredCopy];
    }

    timer = [(VOTLongPressButtonInterceptor *)self timer];
    [timer dispatchAfterDelay:*&self->_timer];
  }
}

- (void)buttonUpOccurred:(id)occurred
{
  occurredCopy = occurred;
  v9.receiver = self;
  v9.super_class = VOTLongPressButtonInterceptor;
  [(VOTButtonInterceptor *)&v9 buttonUpOccurred:occurredCopy];
  *(&self->super._listensPassively + 1) = 0;
  timer = [(VOTLongPressButtonInterceptor *)self timer];
  [timer cancel];

  pendingDownEvent = [(VOTLongPressButtonInterceptor *)self pendingDownEvent];

  if (pendingDownEvent)
  {
    v7 = +[AXEventTapManager sharedManager];
    pendingDownEvent2 = [(VOTLongPressButtonInterceptor *)self pendingDownEvent];
    [v7 sendHIDSystemEvent:pendingDownEvent2 repostCreatorHIDEvent:1 senderID:0x8000000817319373];

    [v7 sendHIDSystemEvent:occurredCopy repostCreatorHIDEvent:1 senderID:0x8000000817319373];
    [(VOTLongPressButtonInterceptor *)self setPendingDownEvent:0];
  }
}

- (void)_timerFired
{
  longPressHandler = [(VOTLongPressButtonInterceptor *)self longPressHandler];

  if (longPressHandler)
  {
    longPressHandler2 = [(VOTLongPressButtonInterceptor *)self longPressHandler];
    longPressHandler2[2]();
  }

  [(VOTLongPressButtonInterceptor *)self setPendingDownEvent:0];
}

@end