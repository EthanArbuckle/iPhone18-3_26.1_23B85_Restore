@interface SRCompactKeyboardState
- (CGRect)frame;
- (CGRect)frameForAnimation;
- (SRCompactKeyboardState)initWithFrame:(CGRect)a3 animation:(id)a4;
- (SRCompactKeyboardState)initWithKeyboardNotification:(id)a3;
@end

@implementation SRCompactKeyboardState

- (SRCompactKeyboardState)initWithFrame:(CGRect)a3 animation:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = SRCompactKeyboardState;
  v11 = [(SRCompactKeyboardState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_frame.origin.x = x;
    v11->_frame.origin.y = y;
    v11->_frame.size.width = width;
    v11->_frame.size.height = height;
    objc_storeStrong(&v11->_animation, a4);
  }

  return v12;
}

- (SRCompactKeyboardState)initWithKeyboardNotification:(id)a3
{
  v4 = a3;
  if (sub_10005423C(v4))
  {
    v5 = [v4 userInfo];
    v6 = [v5 objectForKey:UIKeyboardFrameBeginUserInfoKey];
    [v6 CGRectValue];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = [v5 objectForKey:UIKeyboardFrameEndUserInfoKey];
    [v15 CGRectValue];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = v4;
    v25 = [v24 name];
    v26 = sub_10005461C();
    v27 = [v26 containsObject:v25];

    if ((v27 & 1) == 0)
    {
      v28 = sub_1000546E8();
      v29 = [v28 containsObject:v25];

      if (v29)
      {
        v8 = v17;
        v10 = v19;
        v12 = v21;
        v14 = v23;
      }

      else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_FAULT))
      {
        sub_1000CC32C();
      }
    }

    v32 = [[SRCompactKeyboardAnimation alloc] initWithKeyboardNotification:v24];
    self = [(SRCompactKeyboardState *)self initWithFrame:v32 animation:v8, v10, v12, v14];

    v31 = self;
  }

  else
  {
    v30 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_FAULT))
    {
      sub_1000CC28C(v30, v4);
    }

    v31 = 0;
  }

  return v31;
}

- (CGRect)frameForAnimation
{
  v3 = [(SRCompactKeyboardState *)self animation];
  v4 = v3;
  if (v3)
  {
    [v3 endingFrame];
  }

  else
  {
    [(SRCompactKeyboardState *)self frame];
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end