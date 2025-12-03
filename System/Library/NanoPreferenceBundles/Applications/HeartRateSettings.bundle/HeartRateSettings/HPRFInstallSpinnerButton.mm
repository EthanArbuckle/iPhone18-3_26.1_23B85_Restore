@interface HPRFInstallSpinnerButton
+ (id)applicationSpinnerView;
- (HPRFInstallSpinnerButton)initWithFrame:(CGRect)frame showSquare:(BOOL)square;
- (void)layoutSubviews;
- (void)prepareProgressIndicatorIfNeeded;
- (void)showProgressAnimation;
- (void)stopSpinnerView;
@end

@implementation HPRFInstallSpinnerButton

+ (id)applicationSpinnerView
{
  if (qword_1E3A0 != -1)
  {
    sub_C9A4();
  }

  v3 = qword_1E398;

  return v3;
}

- (HPRFInstallSpinnerButton)initWithFrame:(CGRect)frame showSquare:(BOOL)square
{
  squareCopy = square;
  v15.receiver = self;
  v15.super_class = HPRFInstallSpinnerButton;
  v5 = [(HPRFInstallSpinnerButton *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    v6 = [UIImageView alloc];
    v7 = +[HPRFInstallSpinnerButton applicationSpinnerView];
    v8 = [v6 initWithImage:v7];
    spinnerView = v5->_spinnerView;
    v5->_spinnerView = v8;

    [(HPRFInstallSpinnerButton *)v5 addSubview:v5->_spinnerView];
    if (squareCopy)
    {
      v10 = objc_alloc_init(UIView);
      squareView = v5->_squareView;
      v5->_squareView = v10;

      v12 = v5->_squareView;
      v13 = +[UIColor systemOrangeColor];
      [(UIView *)v12 setBackgroundColor:v13];

      [(HPRFInstallSpinnerButton *)v5 addSubview:v5->_squareView];
    }

    v5->_showingSpinner = 0;
  }

  return v5;
}

- (void)prepareProgressIndicatorIfNeeded
{
  if (!self->_progressIndicator)
  {
    v3 = [SUUICircleProgressIndicator alloc];
    [(HPRFInstallSpinnerButton *)self bounds];
    v4 = [v3 initWithFrame:?];
    progressIndicator = self->_progressIndicator;
    self->_progressIndicator = v4;

    [(SUUICircleProgressIndicator *)self->_progressIndicator setAutoresizingMask:18];
    v6 = self->_progressIndicator;
    v7 = +[UIColor clearColor];
    [(SUUICircleProgressIndicator *)v6 setBackgroundColor:v7];

    [(SUUICircleProgressIndicator *)self->_progressIndicator setUserInteractionEnabled:0];
    [(HPRFInstallSpinnerButton *)self addSubview:self->_progressIndicator];

    [(HPRFInstallSpinnerButton *)self layoutIfNeeded];
  }
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = HPRFInstallSpinnerButton;
  [(HPRFInstallSpinnerButton *)&v13 layoutSubviews];
  [(HPRFInstallSpinnerButton *)self bounds];
  v4 = v3 + -0.5;
  [(HPRFInstallSpinnerButton *)self bounds];
  v6 = v5 + -0.5;
  [(HPRFInstallSpinnerButton *)self bounds];
  v8 = v7 + 1.0;
  [(HPRFInstallSpinnerButton *)self bounds];
  [(UIImageView *)self->_spinnerView setFrame:v4, v6, v8, v9 + 1.0];
  if (self->_squareView)
  {
    [(HPRFInstallSpinnerButton *)self bounds];
    [(UIView *)self->_squareView setFrame:?];
    progressIndicator = self->_progressIndicator;
    if (progressIndicator)
    {
      [(SUUICircleProgressIndicator *)progressIndicator center];
    }

    else
    {
      v12 = 14.5;
      v11 = 14.5;
    }

    [(UIView *)self->_squareView setCenter:v11, v12];
  }
}

- (void)showProgressAnimation
{
  [(SUUICircleProgressIndicator *)self->_progressIndicator progress];
  if (v3 == 0.0)
  {
    [(SUUICircleProgressIndicator *)self->_progressIndicator setHidden:1];
    layer = [(UIImageView *)self->_spinnerView layer];
    v5 = [layer animationForKey:@"HPRFRotationAnimationKey"];

    if (!v5)
    {
      v6 = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
      LODWORD(v7) = 1095307227;
      v8 = [NSNumber numberWithFloat:v7];
      [v6 setToValue:v8];

      [v6 setDuration:2.0];
      [v6 setCumulative:1];
      LODWORD(v9) = 2139095040;
      [v6 setRepeatCount:v9];
      [v6 setRemovedOnCompletion:0];
      [v6 setFrameInterval:0.0333333333];
      layer2 = [(UIImageView *)self->_spinnerView layer];
      [layer2 addAnimation:v6 forKey:@"HPRFRotationAnimationKey"];
    }

    [(UIImageView *)self->_spinnerView setHidden:0];
    self->_showingSpinner = 1;
  }

  else
  {

    [(HPRFInstallSpinnerButton *)self stopSpinnerView];
  }
}

- (void)stopSpinnerView
{
  if (self->_showingSpinner)
  {
    self->_showingSpinner = 0;
    layer = [(UIImageView *)self->_spinnerView layer];
    [layer removeAnimationForKey:@"HPRFRotationAnimationKey"];
  }

  [(UIImageView *)self->_spinnerView setHidden:1];
  progressIndicator = self->_progressIndicator;

  [(SUUICircleProgressIndicator *)progressIndicator setHidden:0];
}

@end