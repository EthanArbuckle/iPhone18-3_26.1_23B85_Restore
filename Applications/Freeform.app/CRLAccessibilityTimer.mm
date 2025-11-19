@interface CRLAccessibilityTimer
- (CRLAccessibilityTimer)initWithTargetSerialQueue:(id)a3;
- (void)_reallyCancel;
- (void)afterDelay:(double)a3 processBlock:(id)a4;
- (void)cancel;
- (void)dealloc;
@end

@implementation CRLAccessibilityTimer

- (CRLAccessibilityTimer)initWithTargetSerialQueue:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CRLAccessibilityTimer;
  v5 = [(CRLAccessibilityTimer *)&v15 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      [(CRLAccessibilityTimer *)v5 _setDispatchQueue:v4];
    }

    else
    {
      v7 = [NSString alloc];
      v8 = +[NSBundle mainBundle];
      v9 = [v8 bundleIdentifier];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v7 initWithFormat:@"%@.%@.TimerQueue", v9, v11];

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

- (void)afterDelay:(double)a3 processBlock:(id)a4
{
  v6 = a4;
  [(CRLAccessibilityTimer *)self _setCancelled:0];
  v7 = [(CRLAccessibilityTimer *)self _dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004B3228;
  block[3] = &unk_10183F0D0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)_reallyCancel
{
  v3 = [(CRLAccessibilityTimer *)self _dispatchTimer];
  if (v3)
  {
    v4 = v3;
    dispatch_source_cancel(v3);
    [(CRLAccessibilityTimer *)self _setDispatchTimer:0];
    v3 = v4;
  }
}

- (void)cancel
{
  [(CRLAccessibilityTimer *)self _setCancelled:1];
  v3 = [(CRLAccessibilityTimer *)self _dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004B34C8;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_async(v3, block);
}

@end