@interface CSLIconTapGestureRecognizer
- (CGPoint)locationInView:(id)view;
- (CSLIconTapGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)_longPressTimerFired:(id)fired;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation CSLIconTapGestureRecognizer

- (CSLIconTapGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v11.receiver = self;
  v11.super_class = CSLIconTapGestureRecognizer;
  v7 = [(CSLIconTapGestureRecognizer *)&v11 initWithTarget:targetCopy action:action];
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

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  v14.receiver = self;
  v14.super_class = CSLIconTapGestureRecognizer;
  [(CSLIconTapGestureRecognizer *)&v14 touchesBegan:beganCopy withEvent:eventCopy];
  if ([beganCopy count] < 2)
  {
    if (self->_trackingTouch)
    {
      [(CSLIconTapGestureRecognizer *)self setState:4];
    }

    else
    {
      anyObject = [beganCopy anyObject];
      objc_storeStrong(&self->_trackingTouch, anyObject);
      window = [anyObject window];
      [anyObject locationInView:0];
      [window _convertPointToSceneReferenceSpace:?];
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

- (CGPoint)locationInView:(id)view
{
  viewCopy = view;
  v5 = viewCopy;
  if (viewCopy)
  {
    window = [viewCopy window];
    [window _convertPointFromSceneReferenceSpace:{self->_startLocation.x, self->_startLocation.y}];
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

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = CSLIconTapGestureRecognizer;
  [(CSLIconTapGestureRecognizer *)&v9 touchesCancelled:cancelledCopy withEvent:eventCopy];
  trackingTouch = self->_trackingTouch;
  self->_trackingTouch = 0;

  [(CSLIconTapGestureRecognizer *)self setState:4];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = CSLIconTapGestureRecognizer;
  [(CSLIconTapGestureRecognizer *)&v9 touchesEnded:endedCopy withEvent:eventCopy];
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

- (void)_longPressTimerFired:(id)fired
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