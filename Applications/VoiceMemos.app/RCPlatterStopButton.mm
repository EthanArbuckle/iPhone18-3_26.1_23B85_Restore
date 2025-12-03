@interface RCPlatterStopButton
- (BOOL)_stopButtonContainsPoint:(CGPoint)point;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (RCPlatterStopButton)initWithFrame:(CGRect)frame;
- (RCPlatterStopButtonDelegate)delegate;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)_handleUserTouch:(id)touch;
- (void)_setupCAPackageManager;
- (void)_setupLongPressGestureRecognizer;
- (void)didTapOnStopButton:(id)button;
- (void)layoutSubviews;
- (void)setState:(unint64_t)state;
- (void)transitionToState:(unint64_t)state viaState:(unint64_t)viaState transitionDuration:(double)duration;
@end

@implementation RCPlatterStopButton

- (RCPlatterStopButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = RCPlatterStopButton;
  v3 = [(RCPlatterStopButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(RCPlatterStopButton *)v3 _setupCAPackageManager];
    [(RCPlatterStopButton *)v4 _setupLongPressGestureRecognizer];
  }

  return v4;
}

- (void)setState:(unint64_t)state
{
  if (self->_state != state || ![(RCPlatterStopButton *)self didSetInitialMicaState])
  {
    self->_state = state;
    v5 = 3;
    if (state != 2)
    {
      v5 = 0;
    }

    if (state == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    packageManager = [(RCPlatterStopButton *)self packageManager];
    [packageManager setMicaState:v6];

    [(RCPlatterStopButton *)self setDidSetInitialMicaState:1];

    [(RCPlatterStopButton *)self setNeedsLayout];
  }
}

- (void)transitionToState:(unint64_t)state viaState:(unint64_t)viaState transitionDuration:(double)duration
{
  [(RCPlatterStopButton *)self setState:viaState];
  v8 = dispatch_time(0, (duration * 1000000000.0));
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005F510;
  v9[3] = &unk_10028A420;
  v9[4] = self;
  v9[5] = state;
  dispatch_after(v8, &_dispatch_main_q, v9);
}

- (void)didTapOnStopButton:(id)button
{
  delegate = [(RCPlatterStopButton *)self delegate];
  [delegate didTapOnStopButton:self];
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = RCPlatterStopButton;
  [(RCPlatterStopButton *)&v28 layoutSubviews];
  packageManager = [(RCPlatterStopButton *)self packageManager];
  view = [packageManager view];
  superview = [view superview];

  if (superview != self)
  {
    packageManager2 = [(RCPlatterStopButton *)self packageManager];
    view2 = [packageManager2 view];
    [(RCPlatterStopButton *)self addSubview:view2];
  }

  v8 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v8 platterStopButtonHeight];
  v10 = v9;

  packageManager3 = [(RCPlatterStopButton *)self packageManager];
  view3 = [packageManager3 view];
  v13 = *&CGAffineTransformIdentity.c;
  *&v27.a = *&CGAffineTransformIdentity.a;
  *&v27.c = v13;
  *&v27.tx = *&CGAffineTransformIdentity.tx;
  [view3 setTransform:&v27];

  packageManager4 = [(RCPlatterStopButton *)self packageManager];
  view4 = [packageManager4 view];
  [view4 setFrame:{0.0, 0.0, v10, v10}];

  [(RCPlatterStopButton *)self bounds];
  CGAffineTransformMakeScale(&v26, v16 / v10, v16 / v10);
  packageManager5 = [(RCPlatterStopButton *)self packageManager];
  view5 = [packageManager5 view];
  v27 = v26;
  [view5 setTransform:&v27];

  [(RCPlatterStopButton *)self bounds];
  MidX = CGRectGetMidX(v29);
  [(RCPlatterStopButton *)self bounds];
  MidY = CGRectGetMidY(v30);
  packageManager6 = [(RCPlatterStopButton *)self packageManager];
  view6 = [packageManager6 view];
  [view6 setCenter:{MidX, MidY}];

  if ([(RCPlatterStopButton *)self didSetInitialMicaState])
  {
    [(RCPlatterStopButton *)self bounds];
    if (v23 == 0.0 || ([(RCPlatterStopButton *)self bounds], v24 == 0.0))
    {
      packageManager7 = [(RCPlatterStopButton *)self packageManager];
      [packageManager7 pauseAnimations];
    }

    else
    {
      packageManager7 = [(RCPlatterStopButton *)self packageManager];
      [packageManager7 resumeAnimations];
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

  longPressRecognizer = [(RCPlatterStopButton *)self longPressRecognizer];
  [(RCPlatterStopButton *)self addGestureRecognizer:longPressRecognizer];

  longPressRecognizer2 = [(RCPlatterStopButton *)self longPressRecognizer];
  [longPressRecognizer2 setMinimumPressDuration:0.0];

  longPressRecognizer3 = [(RCPlatterStopButton *)self longPressRecognizer];
  [longPressRecognizer3 setDelegate:self];
}

- (void)_handleUserTouch:(id)touch
{
  touchCopy = touch;
  [touchCopy locationInView:self];
  v6 = v5;
  v8 = v7;
  state = [touchCopy state];

  if (state <= 2)
  {
    if (state != 1 && (state != 2 || ![(RCPlatterStopButton *)self _stopButtonContainsPoint:v6, v8]))
    {
      return;
    }

    packageManager = [(RCPlatterStopButton *)self packageManager];
    delegate = packageManager;
    v11 = 2;
    goto LABEL_12;
  }

  if (state != 3)
  {
    if (state != 4)
    {
      return;
    }

    goto LABEL_11;
  }

  if (![(RCPlatterStopButton *)self _stopButtonContainsPoint:v6, v8])
  {
LABEL_11:
    packageManager = [(RCPlatterStopButton *)self packageManager];
    delegate = packageManager;
    v11 = 1;
LABEL_12:
    [packageManager setMicaState:v11];
    goto LABEL_13;
  }

  delegate = [(RCPlatterStopButton *)self delegate];
  [delegate didTapOnStopButton:self];
LABEL_13:
}

- (BOOL)_stopButtonContainsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(RCPlatterStopButton *)self bounds];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  longPressRecognizer = [(RCPlatterStopButton *)self longPressRecognizer];

  return longPressRecognizer != recognizerCopy || [(RCPlatterStopButton *)self state]== 1;
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
  accessibilityTraits = [(RCPlatterStopButton *)&v6 accessibilityTraits];
  if ([(RCPlatterStopButton *)self state]== 1)
  {
    v4 = &UIAccessibilityTraitButton;
LABEL_5:
    accessibilityTraits |= *v4;
    return accessibilityTraits;
  }

  if ([(RCPlatterStopButton *)self state]== 2)
  {
    v4 = &UIAccessibilityTraitImage;
    goto LABEL_5;
  }

  return accessibilityTraits;
}

- (RCPlatterStopButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end