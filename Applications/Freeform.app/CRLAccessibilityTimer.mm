@interface CRLAccessibilityTimer
- (CRLAccessibilityTimer)initWithTargetSerialQueue:(id)queue;
- (void)_reallyCancel;
- (void)afterDelay:(double)delay processBlock:(id)block;
- (void)cancel;
- (void)dealloc;
@end

@implementation CRLAccessibilityTimer

- (CRLAccessibilityTimer)initWithTargetSerialQueue:(id)queue
{
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = CRLAccessibilityTimer;
  v5 = [(CRLAccessibilityTimer *)&v15 init];
  v6 = v5;
  if (v5)
  {
    if (queueCopy)
    {
      [(CRLAccessibilityTimer *)v5 _setDispatchQueue:queueCopy];
    }

    else
    {
      v7 = [NSString alloc];
      v8 = +[NSBundle mainBundle];
      bundleIdentifier = [v8 bundleIdentifier];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v7 initWithFormat:@"%@.%@.TimerQueue", bundleIdentifier, v11];

      v13 = dispatch_queue_create([v12 UTF8String], 0);
      [(CRLAccessibilityTimer *)v6 _setDispatchQueue:v13];
    }
  }

  return v6;
}

- (void)dealloc
{
  [(CRLAccessibilityTimer *)self _reallyCancel];
  [(CRLAccessibilityTimer *)self _setDispatchQueue:0];
  v3.receiver = self;
  v3.super_class = CRLAccessibilityTimer;
  [(CRLAccessibilityTimer *)&v3 dealloc];
}

- (void)afterDelay:(double)delay processBlock:(id)block
{
  blockCopy = block;
  [(CRLAccessibilityTimer *)self _setCancelled:0];
  _dispatchQueue = [(CRLAccessibilityTimer *)self _dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004B3228;
  block[3] = &unk_10183F0D0;
  delayCopy = delay;
  block[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  dispatch_async(_dispatchQueue, block);
}

- (void)_reallyCancel
{
  _dispatchTimer = [(CRLAccessibilityTimer *)self _dispatchTimer];
  if (_dispatchTimer)
  {
    v4 = _dispatchTimer;
    dispatch_source_cancel(_dispatchTimer);
    [(CRLAccessibilityTimer *)self _setDispatchTimer:0];
    _dispatchTimer = v4;
  }
}

- (void)cancel
{
  [(CRLAccessibilityTimer *)self _setCancelled:1];
  _dispatchQueue = [(CRLAccessibilityTimer *)self _dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004B34C8;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_async(_dispatchQueue, block);
}

@end