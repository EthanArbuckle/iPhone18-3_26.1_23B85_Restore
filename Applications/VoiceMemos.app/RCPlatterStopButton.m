@interface RCPlatterStopButton
- (BOOL)_stopButtonContainsPoint:(CGPoint)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (RCPlatterStopButton)initWithFrame:(CGRect)a3;
- (RCPlatterStopButtonDelegate)delegate;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)_handleUserTouch:(id)a3;
- (void)_setupCAPackageManager;
- (void)_setupLongPressGestureRecognizer;
- (void)didTapOnStopButton:(id)a3;
- (void)layoutSubviews;
- (void)setState:(unint64_t)a3;
- (void)transitionToState:(unint64_t)a3 viaState:(unint64_t)a4 transitionDuration:(double)a5;
@end

@implementation RCPlatterStopButton

- (RCPlatterStopButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = RCPlatterStopButton;
  v3 = [(RCPlatterStopButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(RCPlatterStopButton *)v3 _setupCAPackageManager];
    [(RCPlatterStopButton *)v4 _setupLongPressGestureRecognizer];
  }

  return v4;
}

- (void)setState:(unint64_t)a3
{
  if (self->_state != a3 || ![(RCPlatterStopButton *)self didSetInitialMicaState])
  {
    self->_state = a3;
    v5 = 3;
    if (a3 != 2)
    {
      v5 = 0;
    }

    if (a3 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    v7 = [(RCPlatterStopButton *)self packageManager];
    [v7 setMicaState:v6];

    [(RCPlatterStopButton *)self setDidSetInitialMicaState:1];

    [(RCPlatterStopButton *)self setNeedsLayout];
  }
}

- (void)transitionToState:(unint64_t)a3 viaState:(unint64_t)a4 transitionDuration:(double)a5
{
  [(RCPlatterStopButton *)self setState:a4];
  v8 = dispatch_time(0, (a5 * 1000000000.0));
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005F510;
  v9[3] = &unk_10028A420;
  v9[4] = self;
  v9[5] = a3;
  dispatch_after(v8, &_dispatch_main_q, v9);
}

- (void)didTapOnStopButton:(id)a3
{
  v4 = [(RCPlatterStopButton *)self delegate];
  [v4 didTapOnStopButton:self];
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = RCPlatterStopButton;
  [(RCPlatterStopButton *)&v28 layoutSubviews];
  v3 = [(RCPlatterStopButton *)self packageManager];
  v4 = [v3 view];
  v5 = [v4 superview];

  if (v5 != self)
  {
    v6 = [(RCPlatterStopButton *)self packageManager];
    v7 = [v6 view];
    [(RCPlatterStopButton *)self addSubview:v7];
  }

  v8 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v8 platterStopButtonHeight];
  v10 = v9;

  v11 = [(RCPlatterStopButton *)self packageManager];
  v12 = [v11 view];
  v13 = *&CGAffineTransformIdentity.c;
  *&v27.a = *&CGAffineTransformIdentity.a;
  *&v27.c = v13;
  *&v27.tx = *&CGAffineTransformIdentity.tx;
  [v12 setTransform:&v27];

  v14 = [(RCPlatterStopButton *)self packageManager];
  v15 = [v14 view];
  [v15 setFrame:{0.0, 0.0, v10, v10}];

  [(RCPlatterStopButton *)self bounds];
  CGAffineTransformMakeScale(&v26, v16 / v10, v16 / v10);
  v17 = [(RCPlatterStopButton *)self packageManager];
  v18 = [v17 view];
  v27 = v26;
  [v18 setTransform:&v27];

  [(RCPlatterStopButton *)self bounds];
  MidX = CGRectGetMidX(v29);
  [(RCPlatterStopButton *)self bounds];
  MidY = CGRectGetMidY(v30);
  v21 = [(RCPlatterStopButton *)self packageManager];
  v22 = [v21 view];
  [v22 setCenter:{MidX, MidY}];

  if ([(RCPlatterStopButton *)self didSetInitialMicaState])
  {
    [(RCPlatterStopButton *)self bounds];
    if (v23 == 0.0 || ([(RCPlatterStopButton *)self bounds], v24 == 0.0))
    {
      v25 = [(RCPlatterStopButton *)self packageManager];
      [v25 pauseAnimations];
    }

    else
    {
      v25 = [(RCPlatterStopButton *)self packageManager];
      [v25 resumeAnimations];
    }
  }
}

- (void)_setupCAPackageManager
{
  v3 = +[RCPlatterStopButtonCAPackageManager stopButtonPackageManager];
  [(RCPlatterStopButton *)self setPackageManager:v3];
}

- (void)_setupLongPressGestureRecognizer
{
  v3 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"_handleUserTouch:"];
  [(RCPlatterStopButton *)self setLongPressRecognizer:v3];

  v4 = [(RCPlatterStopButton *)self longPressRecognizer];
  [(RCPlatterStopButton *)self addGestureRecognizer:v4];

  v5 = [(RCPlatterStopButton *)self longPressRecognizer];
  [v5 setMinimumPressDuration:0.0];

  v6 = [(RCPlatterStopButton *)self longPressRecognizer];
  [v6 setDelegate:self];
}

- (void)_handleUserTouch:(id)a3
{
  v4 = a3;
  [v4 locationInView:self];
  v6 = v5;
  v8 = v7;
  v9 = [v4 state];

  if (v9 <= 2)
  {
    if (v9 != 1 && (v9 != 2 || ![(RCPlatterStopButton *)self _stopButtonContainsPoint:v6, v8]))
    {
      return;
    }

    v10 = [(RCPlatterStopButton *)self packageManager];
    v12 = v10;
    v11 = 2;
    goto LABEL_12;
  }

  if (v9 != 3)
  {
    if (v9 != 4)
    {
      return;
    }

    goto LABEL_11;
  }

  if (![(RCPlatterStopButton *)self _stopButtonContainsPoint:v6, v8])
  {
LABEL_11:
    v10 = [(RCPlatterStopButton *)self packageManager];
    v12 = v10;
    v11 = 1;
LABEL_12:
    [v10 setMicaState:v11];
    goto LABEL_13;
  }

  v12 = [(RCPlatterStopButton *)self delegate];
  [v12 didTapOnStopButton:self];
LABEL_13:
}

- (BOOL)_stopButtonContainsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(RCPlatterStopButton *)self bounds];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a3;
  v6 = [(RCPlatterStopButton *)self longPressRecognizer];

  return v6 != v5 || [(RCPlatterStopButton *)self state]== 1;
}

- (id)accessibilityLabel
{
  if ([(RCPlatterStopButton *)self state]== 1)
  {
    v3 = @"AX_STOP";
LABEL_5:
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:&stru_100295BB8 table:0];

    goto LABEL_7;
  }

  if ([(RCPlatterStopButton *)self state]== 2)
  {
    v3 = @"AX_RECORDING_STOPPED";
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = RCPlatterStopButton;
  v3 = [(RCPlatterStopButton *)&v6 accessibilityTraits];
  if ([(RCPlatterStopButton *)self state]== 1)
  {
    v4 = &UIAccessibilityTraitButton;
LABEL_5:
    v3 |= *v4;
    return v3;
  }

  if ([(RCPlatterStopButton *)self state]== 2)
  {
    v4 = &UIAccessibilityTraitImage;
    goto LABEL_5;
  }

  return v3;
}

- (RCPlatterStopButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end