@interface VOTLongPressButtonInterceptor
- (VOTLongPressButtonInterceptor)initWithThreadKey:(id)a3 longPressDelay:(double)a4 longPressHandler:(id)a5;
- (void)_timerFired;
- (void)buttonDownOccurred:(id)a3;
- (void)buttonUpOccurred:(id)a3;
- (void)dealloc;
@end

@implementation VOTLongPressButtonInterceptor

- (VOTLongPressButtonInterceptor)initWithThreadKey:(id)a3 longPressDelay:(double)a4 longPressHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = VOTLongPressButtonInterceptor;
  v10 = [(VOTLongPressButtonInterceptor *)&v15 init];
  v11 = v10;
  if (v10)
  {
    *&v10->_timer = a4;
    [(VOTLongPressButtonInterceptor *)v10 setLongPressHandler:v9];
    v12 = [objc_allocWithZone(SCRCTargetSelectorTimer) initWithTarget:v11 selector:"_timerFired" threadKey:v8];
    longPressHandler = v11->_longPressHandler;
    v11->_longPressHandler = v12;
  }

  return v11;
}

- (void)dealloc
{
  v3 = [(VOTLongPressButtonInterceptor *)self timer];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = VOTLongPressButtonInterceptor;
  [(VOTLongPressButtonInterceptor *)&v4 dealloc];
}

- (void)buttonDownOccurred:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = VOTLongPressButtonInterceptor;
  [(VOTButtonInterceptor *)&v6 buttonDownOccurred:v4];
  if (!*(&self->super._listensPassively + 1))
  {
    *(&self->super._listensPassively + 1) = 1;
    if (![(VOTButtonInterceptor *)self listensPassively])
    {
      [(VOTLongPressButtonInterceptor *)self setPendingDownEvent:v4];
    }

    v5 = [(VOTLongPressButtonInterceptor *)self timer];
    [v5 dispatchAfterDelay:*&self->_timer];
  }
}

- (void)buttonUpOccurred:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VOTLongPressButtonInterceptor;
  [(VOTButtonInterceptor *)&v9 buttonUpOccurred:v4];
  *(&self->super._listensPassively + 1) = 0;
  v5 = [(VOTLongPressButtonInterceptor *)self timer];
  [v5 cancel];

  v6 = [(VOTLongPressButtonInterceptor *)self pendingDownEvent];

  if (v6)
  {
    v7 = +[AXEventTapManager sharedManager];
    v8 = [(VOTLongPressButtonInterceptor *)self pendingDownEvent];
    [v7 sendHIDSystemEvent:v8 repostCreatorHIDEvent:1 senderID:0x8000000817319373];

    [v7 sendHIDSystemEvent:v4 repostCreatorHIDEvent:1 senderID:0x8000000817319373];
    [(VOTLongPressButtonInterceptor *)self setPendingDownEvent:0];
  }
}

- (void)_timerFired
{
  v3 = [(VOTLongPressButtonInterceptor *)self longPressHandler];

  if (v3)
  {
    v4 = [(VOTLongPressButtonInterceptor *)self longPressHandler];
    v4[2]();
  }

  [(VOTLongPressButtonInterceptor *)self setPendingDownEvent:0];
}

@end