@interface CSLIconTapGestureRecognizer
- (CGPoint)locationInView:(id)a3;
- (CSLIconTapGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_longPressTimerFired:(id)a3;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation CSLIconTapGestureRecognizer

- (CSLIconTapGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CSLIconTapGestureRecognizer;
  v7 = [(CSLIconTapGestureRecognizer *)&v11 initWithTarget:v6 action:a4];
  v8 = v7;
  if (v7)
  {
    v7->_longPressDuration = 0.75;
    [(CSLIconTapGestureRecognizer *)v7 setCancelsTouchesInView:0];
    [(CSLIconTapGestureRecognizer *)v8 _setRequiresSystemGesturesToFail:1];
    v9 = v8;
  }

  return v8;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CSLIconTapGestureRecognizer;
  [(CSLIconTapGestureRecognizer *)&v14 touchesBegan:v6 withEvent:v7];
  if ([v6 count] < 2)
  {
    if (self->_trackingTouch)
    {
      [(CSLIconTapGestureRecognizer *)self setState:4];
    }

    else
    {
      v8 = [v6 anyObject];
      objc_storeStrong(&self->_trackingTouch, v8);
      v9 = [v8 window];
      [v8 locationInView:0];
      [v9 _convertPointToSceneReferenceSpace:?];
      self->_startLocation.x = v10;
      self->_startLocation.y = v11;

      if (self->_longPressEnabled)
      {
        v12 = [NSTimer scheduledTimerWithTimeInterval:self target:"_longPressTimerFired:" selector:0 userInfo:0 repeats:self->_longPressDuration];
        longPressTimer = self->_longPressTimer;
        self->_longPressTimer = v12;
      }

      [(CSLIconTapGestureRecognizer *)self setState:1];
    }
  }

  else
  {
    [(CSLIconTapGestureRecognizer *)self setState:5];
  }
}

- (CGPoint)locationInView:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 window];
    [v6 _convertPointFromSceneReferenceSpace:{self->_startLocation.x, self->_startLocation.y}];
    [v5 convertPoint:0 fromView:?];
    x = v7;
    y = v9;
  }

  else
  {
    x = self->_startLocation.x;
    y = self->_startLocation.y;
  }

  v11 = x;
  v12 = y;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9.receiver = self;
  v9.super_class = CSLIconTapGestureRecognizer;
  [(CSLIconTapGestureRecognizer *)&v9 touchesCancelled:v6 withEvent:v7];
  trackingTouch = self->_trackingTouch;
  self->_trackingTouch = 0;

  [(CSLIconTapGestureRecognizer *)self setState:4];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9.receiver = self;
  v9.super_class = CSLIconTapGestureRecognizer;
  [(CSLIconTapGestureRecognizer *)&v9 touchesEnded:v6 withEvent:v7];
  trackingTouch = self->_trackingTouch;
  self->_trackingTouch = 0;

  [(CSLIconTapGestureRecognizer *)self setState:3];
}

- (void)reset
{
  v4.receiver = self;
  v4.super_class = CSLIconTapGestureRecognizer;
  [(CSLIconTapGestureRecognizer *)&v4 reset];
  sub_2223C(self);
  trackingTouch = self->_trackingTouch;
  self->_trackingTouch = 0;

  self->_isLongPress = 0;
}

- (void)_longPressTimerFired:(id)a3
{
  v4 = cslprf_icon_field_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v7 = "[CSLIconTapGestureRecognizer _longPressTimerFired:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_22290;
  block[3] = &unk_38828;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end