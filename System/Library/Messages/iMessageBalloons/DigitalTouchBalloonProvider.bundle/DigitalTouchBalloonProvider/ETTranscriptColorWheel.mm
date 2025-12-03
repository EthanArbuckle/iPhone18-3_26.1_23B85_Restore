@interface ETTranscriptColorWheel
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (ETTranscriptColorWheel)initWithFrame:(CGRect)frame;
- (double)_doneViewDiameter;
- (id)pickerViewHighlightedColor;
- (void)_setPickerPositionInGradientWheel;
- (void)beganTouches:(id)touches;
- (void)createDoneButtonWithFrame:(CGRect)frame;
- (void)dismissAnimatedWithDuration:(double)duration completion:(id)completion;
- (void)doneButtonTapped:(id)tapped;
- (void)layoutSubviews;
- (void)presentAnimatedWithDuration:(double)duration completion:(id)completion;
- (void)setHueForPaletteCircle:(id)circle;
@end

@implementation ETTranscriptColorWheel

- (ETTranscriptColorWheel)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = ETTranscriptColorWheel;
  v3 = [(ETTranscriptColorWheel *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(ETTranscriptColorWheel *)v3 setBackgroundColor:v4];

    v5 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    gradientImageView = v3->_gradientImageView;
    v3->_gradientImageView = v9;

    v11 = v3->_gradientImageView;
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [UIImage imageNamed:@"color-wheel-gradient" inBundle:v12];
    [(UIImageView *)v11 setImage:v13];

    [(ETTranscriptColorWheel *)v3 addSubview:v3->_gradientImageView];
    v14 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v14 setUserInteractionEnabled:0];
    layer = [v14 layer];
    v16 = +[UIColor blackColor];
    [layer setBorderColor:{objc_msgSend(v16, "CGColor")}];

    layer2 = [v14 layer];
    [layer2 setBorderWidth:2.0];

    [(ETTranscriptColorWheel *)v3 addSubview:v14];
    [(ETTranscriptColorWheel *)v3 setPickerCircle:v14];
    [(ETTranscriptColorWheel *)v3 createDoneButtonWithFrame:CGRectZero.origin.x, y, width, height];
    [(ETTranscriptColorWheel *)v3 setAlpha:0.0];
  }

  return v3;
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = ETTranscriptColorWheel;
  [(ETTranscriptColorWheel *)&v27 layoutSubviews];
  [(ETTranscriptColorWheel *)self frame];
  UIRoundToViewScale();
  [(ETTranscriptColorWheel *)self setColorWheelRadius:?];
  UIRoundToViewScale();
  [(ETTranscriptColorWheel *)self setGradientWidth:?];
  UIRoundToViewScale();
  [(ETTranscriptColorWheel *)self setPickerDiameter:?];
  [(ETTranscriptColorWheel *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v7 * 0.5;
  v12 = v9 * 0.5;
  [(ETTranscriptColorWheel *)self colorWheelRadius];
  [(UIImageView *)self->_gradientImageView setFrame:0.0, 0.0, v13 + v13, v13 + v13];
  [(UIImageView *)self->_gradientImageView setCenter:v11, v12];
  [(UIView *)self->_doneView bounds];
  Width = CGRectGetWidth(v28);
  doneView = self->_doneView;
  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  MidX = CGRectGetMidX(v29);
  v30.origin.x = v4;
  v30.origin.y = v6;
  v30.size.width = v8;
  v30.size.height = v10;
  [(UIView *)doneView setCenter:MidX, CGRectGetMidY(v30)];
  layer = [(UIView *)self->_doneView layer];
  [layer setCornerRadius:Width * 0.5];

  doneButton = [(ETTranscriptColorWheel *)self doneButton];
  v19 = Width * 0.17;
  v20 = fmax(roundf(v19), 18.0);
  titleLabel = [doneButton titleLabel];
  v22 = [UIFont systemFontOfSize:v20];
  [titleLabel setFont:v22];

  [doneButton sizeToFit];
  [(UIView *)self->_doneView center];
  [doneButton setCenter:?];
  [(ETTranscriptColorWheel *)self pickerDiameter];
  v24 = v23;
  pickerCircle = [(ETTranscriptColorWheel *)self pickerCircle];
  [pickerCircle setSize:{v24, v24}];
  layer2 = [pickerCircle layer];
  [layer2 setCornerRadius:v24 * 0.5];

  [(ETTranscriptColorWheel *)self _setPickerPositionInGradientWheel];
}

- (void)setHueForPaletteCircle:(id)circle
{
  v5 = 0;
  backgroundColor = [circle backgroundColor];
  [backgroundColor getHue:&v5 saturation:0 brightness:0 alpha:0];

  RadiansFromHue();
  [(ETTranscriptColorWheel *)self setHueRotation:?];
}

- (void)_setPickerPositionInGradientWheel
{
  [(ETTranscriptColorWheel *)self bounds];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  MidX = CGRectGetMidX(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MidY = CGRectGetMidY(v17);
  [(ETTranscriptColorWheel *)self colorWheelRadius];
  v10 = v9;
  [(ETTranscriptColorWheel *)self gradientWidth];
  v12 = v10 + v11 * -0.5;
  [(ETTranscriptColorWheel *)self hueRotation];
  v14 = __sincos_stret(v13);

  [(ETTranscriptColorWheel *)self updatePickerPositionForPoint:MidX + v12 * v14.__cosval, MidY - v12 * v14.__sinval];
}

- (double)_doneViewDiameter
{
  [(ETTranscriptColorWheel *)self colorWheelRadius];
  v4 = v3;
  [(ETTranscriptColorWheel *)self gradientWidth];
  return v4 - v5 + -2.0 + v4 - v5 + -2.0;
}

- (void)presentAnimatedWithDuration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  memset(&v24, 0, sizeof(v24));
  CGAffineTransformMakeScale(&v24, 0.8, 0.8);
  gradientImageView = self->_gradientImageView;
  v23 = v24;
  [(UIImageView *)gradientImageView setTransform:&v23];
  [(UIImageView *)self->_gradientImageView setAlpha:0.0];
  pickerCircle = [(ETTranscriptColorWheel *)self pickerCircle];
  [pickerCircle setAlpha:0.0];

  pickerCircle2 = [(ETTranscriptColorWheel *)self pickerCircle];
  v23 = v24;
  [pickerCircle2 setTransform:&v23];

  doneButton = [(ETTranscriptColorWheel *)self doneButton];
  [doneButton setAlpha:0.0];
  [(ETTranscriptColorWheel *)self _doneViewDiameter];
  v12 = v11;
  [(UIView *)self->_doneView setSize:v11, v11];
  doneView = self->_doneView;
  v14 = +[UIColor blackColor];
  [(UIView *)doneView setBackgroundColor:v14];

  [(ETTranscriptColorWheel *)self colorWheelRadius];
  v16 = self->_doneView;
  CGAffineTransformMakeScale(&v23, (v15 + v15) * 0.8 / v12, (v15 + v15) * 0.8 / v12);
  [(UIView *)v16 setTransform:&v23];
  self->_presented = 1;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_EFA4;
  v21[3] = &unk_248A8;
  v21[4] = self;
  v22 = doneButton;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_F0A4;
  v19[3] = &unk_248F8;
  v20 = completionCopy;
  v17 = completionCopy;
  v18 = doneButton;
  [UIView animateWithDuration:v21 animations:v19 completion:duration];
}

- (void)dismissAnimatedWithDuration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  doneButton = [(ETTranscriptColorWheel *)self doneButton];
  [(ETTranscriptColorWheel *)self colorWheelRadius];
  v9 = v8 + v8;
  [(ETTranscriptColorWheel *)self _doneViewDiameter];
  self->_presented = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_F210;
  v15[3] = &unk_24B00;
  v16 = doneButton;
  selfCopy = self;
  v18 = v9 * 0.8 / v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_F314;
  v13[3] = &unk_24B28;
  v13[4] = self;
  v14 = completionCopy;
  v11 = completionCopy;
  v12 = doneButton;
  [UIView animateWithDuration:v15 animations:v13 completion:duration];
}

- (void)beganTouches:(id)touches
{
  v9.receiver = self;
  v9.super_class = ETTranscriptColorWheel;
  [(ETTranscriptColorWheel *)&v9 beganTouches:touches];
  delegate = [(ETTranscriptColorWheel *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ETTranscriptColorWheel *)self delegate];
    pickerCircle = [(ETTranscriptColorWheel *)self pickerCircle];
    backgroundColor = [pickerCircle backgroundColor];
    [delegate2 colorWheel:self pickerColorChanged:backgroundColor];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ETTranscriptColorWheel;
    v5 = [(ETTranscriptColorWheel *)&v7 gestureRecognizerShouldBegin:beginCopy];
  }

  return v5;
}

- (void)doneButtonTapped:(id)tapped
{
  pickerCircle = [(ETTranscriptColorWheel *)self pickerCircle];
  backgroundColor = [pickerCircle backgroundColor];

  delegate = [(ETTranscriptColorWheel *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(ETTranscriptColorWheel *)self delegate];
    [delegate2 colorWheel:self didPickColor:backgroundColor];
  }
}

- (id)pickerViewHighlightedColor
{
  [(ETTranscriptColorWheel *)self pickerRotation];
  HueFromRadians();

  return [UIColor colorWithHue:"colorWithHue:saturation:brightness:alpha:" saturation:? brightness:? alpha:?];
}

- (void)createDoneButtonWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v14.receiver = self;
  v14.super_class = ETTranscriptColorWheel;
  [(ETTranscriptColorWheel *)&v14 createDoneButtonWithFrame:?];
  v8 = [[UIView alloc] initWithFrame:{x, y, width, height}];
  doneView = self->_doneView;
  self->_doneView = v8;

  v10 = self->_doneView;
  v11 = +[UIColor blackColor];
  [(UIView *)v10 setBackgroundColor:v11];

  v12 = self->_doneView;
  doneButton = [(ETTranscriptColorWheel *)self doneButton];
  [(ETTranscriptColorWheel *)self insertSubview:v12 below:doneButton];
}

@end