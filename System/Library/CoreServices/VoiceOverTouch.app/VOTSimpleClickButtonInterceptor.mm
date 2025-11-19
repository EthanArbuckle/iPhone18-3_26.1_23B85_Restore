@interface VOTSimpleClickButtonInterceptor
- (BOOL)touchEventOccurred:(id)a3 inTVDirectTouch:(BOOL)a4;
- (VOTSimpleClickButtonInterceptor)initWithThreadKey:(id)a3 simpleClickHandler:(id)a4;
- (void)_drainQueue:(BOOL)a3;
- (void)_timerFired;
- (void)buttonDownOccurred:(id)a3;
- (void)buttonUpOccurred:(id)a3;
- (void)dealloc;
@end

@implementation VOTSimpleClickButtonInterceptor

- (VOTSimpleClickButtonInterceptor)initWithThreadKey:(id)a3 simpleClickHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = VOTSimpleClickButtonInterceptor;
  v8 = [(VOTSimpleClickButtonInterceptor *)&v16 init];
  if (v8)
  {
    v9 = [objc_allocWithZone(SCRCTargetSelectorTimer) initWithTarget:v8 selector:"_timerFired" threadKey:v6];
    simpleClickHandler = v8->_simpleClickHandler;
    v8->_simpleClickHandler = v9;

    v11 = objc_alloc_init(NSMutableArray);
    timer = v8->_timer;
    v8->_timer = v11;

    [(VOTSimpleClickButtonInterceptor *)v8 setSimpleClickHandler:v7];
    v13 = dispatch_queue_create("ButtonInterceptorQueue", 0);
    v14 = *&v8->_clickDown;
    *&v8->_clickDown = v13;
  }

  return v8;
}

- (void)dealloc
{
  v3 = [(VOTSimpleClickButtonInterceptor *)self timer];
  [v3 invalidate];

  v4 = *&self->_clickDown;
  *&self->_clickDown = 0;

  v5.receiver = self;
  v5.super_class = VOTSimpleClickButtonInterceptor;
  [(VOTSimpleClickButtonInterceptor *)&v5 dealloc];
}

- (void)buttonDownOccurred:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = VOTSimpleClickButtonInterceptor;
  [(VOTButtonInterceptor *)&v14 buttonDownOccurred:v4];
  *(&self->super._listensPassively + 1) = 1;
  v5 = *&self->_clickDown;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10011431C;
  v11 = &unk_1001C7778;
  v12 = self;
  v13 = v4;
  v6 = v4;
  dispatch_sync(v5, &v8);
  v7 = [(VOTSimpleClickButtonInterceptor *)self timer:v8];
  [v7 dispatchAfterDelay:0.3];
}

- (void)buttonUpOccurred:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = VOTSimpleClickButtonInterceptor;
  [(VOTButtonInterceptor *)&v16 buttonUpOccurred:v4];
  v5 = *&self->_clickDown;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1001144C8;
  v13 = &unk_1001C7778;
  v14 = self;
  v15 = v4;
  v6 = v4;
  dispatch_sync(v5, &v10);
  v7 = [(VOTSimpleClickButtonInterceptor *)self timer:v10];
  [v7 cancel];

  if (*(&self->super._listensPassively + 1) && ([(VOTSimpleClickButtonInterceptor *)self simpleClickHandler], v8 = objc_claimAutoreleasedReturnValue(), v9 = v8[2](), v8, v9))
  {
    [(VOTSimpleClickButtonInterceptor *)self _drainQueue:0];
  }

  else
  {
    [(VOTSimpleClickButtonInterceptor *)self _drainQueue:1];
    *(&self->super._listensPassively + 2) = 1;
  }

  *(&self->super._listensPassively + 1) = 0;
}

- (void)_timerFired
{
  *(&self->super._listensPassively + 1) = 0;
  *(&self->super._listensPassively + 2) = 1;
  [(VOTSimpleClickButtonInterceptor *)self _drainQueue:1];
}

- (BOOL)touchEventOccurred:(id)a3 inTVDirectTouch:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 handInfo];
  v8 = [v7 eventType];

  if (v4)
  {
    if (v8 == 1 && [v6 fingerCount] == 2)
    {
      v9 = +[VOTElement systemWideElement];
      [v9 sendTouchCancelledEvent];
    }

    LOBYTE(v10) = 0;
  }

  else
  {
    v11 = v8 < 0xB;
    v12 = *&self->_clickDown;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001146C0;
    block[3] = &unk_1001CB700;
    block[4] = self;
    v13 = v11 & (0x540u >> v8);
    v17 = v8 == 1;
    v18 = v11 & (0x540u >> v8);
    v16 = v6;
    dispatch_sync(v12, block);
    if (v8 == 1)
    {
      *(&self->super._listensPassively + 2) = 0;
    }

    else if (v13 && !*(&self->super._listensPassively + 2))
    {
      [(VOTSimpleClickButtonInterceptor *)self _drainQueue:0];
    }

    v10 = *(&self->super._listensPassively + 2);
    if (v10 == 1)
    {
      [(VOTSimpleClickButtonInterceptor *)self _drainQueue:1];
    }
  }

  return v10;
}

- (void)_drainQueue:(BOOL)a3
{
  v3 = *&self->_clickDown;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001147C8;
  v4[3] = &unk_1001C89E8;
  v5 = a3;
  v4[4] = self;
  dispatch_async(v3, v4);
}

@end