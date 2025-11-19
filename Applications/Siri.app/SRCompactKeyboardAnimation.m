@interface SRCompactKeyboardAnimation
- (CGRect)beginningFrame;
- (CGRect)endingFrame;
- (SRCompactKeyboardAnimation)initWithDuration:(double)a3 curve:(int64_t)a4 beginningFrame:(CGRect)a5 endingFrame:(CGRect)a6;
- (SRCompactKeyboardAnimation)initWithKeyboardNotification:(id)a3;
@end

@implementation SRCompactKeyboardAnimation

- (SRCompactKeyboardAnimation)initWithDuration:(double)a3 curve:(int64_t)a4 beginningFrame:(CGRect)a5 endingFrame:(CGRect)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14.receiver = self;
  v14.super_class = SRCompactKeyboardAnimation;
  result = [(SRCompactKeyboardAnimation *)&v14 init];
  if (result)
  {
    result->_duration = a3;
    if ((a4 - 1) >= 3)
    {
      v13 = 0;
    }

    else
    {
      v13 = ((a4 - 1) << 16) + 0x10000;
    }

    result->_options = v13;
    result->_beginningFrame.origin.x = x;
    result->_beginningFrame.origin.y = y;
    result->_beginningFrame.size.width = width;
    result->_beginningFrame.size.height = height;
    result->_endingFrame = a6;
  }

  return result;
}

- (SRCompactKeyboardAnimation)initWithKeyboardNotification:(id)a3
{
  v4 = a3;
  if (sub_10005423C(v4))
  {
    v5 = [v4 userInfo];
    v6 = [v5 objectForKey:UIKeyboardAnimationDurationUserInfoKey];
    [v6 doubleValue];
    v8 = v7;

    if (v8 == 0.0)
    {
      v9 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        sub_1000CC44C(v9);
      }

      v10 = 0;
    }

    else
    {
      v12 = [v5 objectForKey:UIKeyboardAnimationCurveUserInfoKey];
      v13 = [v12 unsignedIntegerValue];

      v14 = [v5 objectForKey:UIKeyboardFrameBeginUserInfoKey];
      [v14 CGRectValue];
      v32 = v15;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v22 = [v5 objectForKey:UIKeyboardFrameEndUserInfoKey];
      [v22 CGRectValue];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      self = [(SRCompactKeyboardAnimation *)self initWithDuration:v13 curve:v8 beginningFrame:v32 endingFrame:v17, v19, v21, v24, v26, v28, v30];
      v10 = self;
    }
  }

  else
  {
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_FAULT))
    {
      sub_1000CC3AC(v11, v4);
    }

    v10 = 0;
  }

  return v10;
}

- (CGRect)beginningFrame
{
  x = self->_beginningFrame.origin.x;
  y = self->_beginningFrame.origin.y;
  width = self->_beginningFrame.size.width;
  height = self->_beginningFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)endingFrame
{
  x = self->_endingFrame.origin.x;
  y = self->_endingFrame.origin.y;
  width = self->_endingFrame.size.width;
  height = self->_endingFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end