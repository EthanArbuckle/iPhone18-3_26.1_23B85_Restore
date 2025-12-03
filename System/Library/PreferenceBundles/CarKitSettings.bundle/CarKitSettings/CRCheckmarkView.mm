@interface CRCheckmarkView
- (CRCheckmarkView)initWithChecked:(BOOL)checked;
- (void)_configureView;
- (void)_updateViewState;
- (void)setChecked:(BOOL)checked;
@end

@implementation CRCheckmarkView

- (CRCheckmarkView)initWithChecked:(BOOL)checked
{
  v7.receiver = self;
  v7.super_class = CRCheckmarkView;
  v4 = [(CRCheckmarkView *)&v7 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_checked = checked;
    [(CRCheckmarkView *)v4 _configureView];
  }

  return v5;
}

- (void)_configureView
{
  v3 = [UIImageView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v49 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  v7 = [UIImage systemImageNamed:@"checkmark.circle.fill" compatibleWithTraitCollection:0];
  _imageThatSuppressesAccessibilityHairlineThickening = [v7 _imageThatSuppressesAccessibilityHairlineThickening];
  v9 = [_imageThatSuppressesAccessibilityHairlineThickening imageWithRenderingMode:2];
  [v49 setImage:v9];

  [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v49 setContentMode:4];
  [v49 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  if ([(CRCheckmarkView *)self isChecked])
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  [v49 setAlpha:v10];
  v11 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleBody scale:3];
  [v49 setPreferredSymbolConfiguration:v11];

  [(CRCheckmarkView *)self setCheckmarkImageView:v49];
  [(CRCheckmarkView *)self addSubview:v49];
  v12 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  v13 = [UIImage systemImageNamed:@"circle" compatibleWithTraitCollection:0];
  v14 = [v13 imageWithRenderingMode:2];
  [v12 setImage:v14];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setContentMode:4];
  [v12 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  v15 = +[UIColor tertiaryLabelColor];
  [v12 setTintColor:v15];

  if ([(CRCheckmarkView *)self isChecked])
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 1.0;
  }

  [v12 setAlpha:v16];
  v17 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleBody scale:3];
  [v12 setPreferredSymbolConfiguration:v17];

  [(CRCheckmarkView *)self setCircleImageView:v12];
  [(CRCheckmarkView *)self addSubview:v12];
  v18 = +[NSMutableArray array];
  leadingAnchor = [v49 leadingAnchor];
  leadingAnchor2 = [(CRCheckmarkView *)self leadingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v18 addObject:v21];

  trailingAnchor = [v49 trailingAnchor];
  trailingAnchor2 = [(CRCheckmarkView *)self trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v18 addObject:v24];

  topAnchor = [v49 topAnchor];
  topAnchor2 = [(CRCheckmarkView *)self topAnchor];
  v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v18 addObject:v27];

  bottomAnchor = [v49 bottomAnchor];
  bottomAnchor2 = [(CRCheckmarkView *)self bottomAnchor];
  v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v18 addObject:v30];

  leadingAnchor3 = [v12 leadingAnchor];
  leadingAnchor4 = [(CRCheckmarkView *)self leadingAnchor];
  v33 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v18 addObject:v33];

  trailingAnchor3 = [v12 trailingAnchor];
  trailingAnchor4 = [(CRCheckmarkView *)self trailingAnchor];
  v36 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v18 addObject:v36];

  topAnchor3 = [v12 topAnchor];
  topAnchor4 = [(CRCheckmarkView *)self topAnchor];
  v39 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v18 addObject:v39];

  bottomAnchor3 = [v12 bottomAnchor];
  bottomAnchor4 = [(CRCheckmarkView *)self bottomAnchor];
  v42 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v18 addObject:v42];

  heightAnchor = [v12 heightAnchor];
  widthAnchor = [v12 widthAnchor];
  v45 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:1.0];
  [v18 addObject:v45];

  heightAnchor2 = [v49 heightAnchor];
  widthAnchor2 = [v49 widthAnchor];
  v48 = [heightAnchor2 constraintEqualToAnchor:widthAnchor2 multiplier:1.0];
  [v18 addObject:v48];

  [NSLayoutConstraint activateConstraints:v18];
}

- (void)_updateViewState
{
  memset(&v12, 0, sizeof(v12));
  if ([(CRCheckmarkView *)self isChecked])
  {
    v3 = *&CGAffineTransformIdentity.c;
    *&v12.a = *&CGAffineTransformIdentity.a;
    *&v12.c = v3;
    *&v12.tx = *&CGAffineTransformIdentity.tx;
  }

  else
  {
    CGAffineTransformMakeScale(&v12, 0.01, 0.01);
  }

  checkmarkImageView = [(CRCheckmarkView *)self checkmarkImageView];
  v5 = *&CGAffineTransformIdentity.c;
  *&v11.a = *&CGAffineTransformIdentity.a;
  *&v11.c = v5;
  *&v11.tx = *&CGAffineTransformIdentity.tx;
  [checkmarkImageView setTransform:&v11];

  checkmarkImageView2 = [(CRCheckmarkView *)self checkmarkImageView];
  v11 = v12;
  [checkmarkImageView2 setTransform:&v11];

  checkmarkImageView3 = [(CRCheckmarkView *)self checkmarkImageView];
  if ([(CRCheckmarkView *)self isChecked])
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  [checkmarkImageView3 setAlpha:v8];

  circleImageView = [(CRCheckmarkView *)self circleImageView];
  if ([(CRCheckmarkView *)self isChecked])
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  [circleImageView setAlpha:v10];
}

- (void)setChecked:(BOOL)checked
{
  if (self->_checked != checked)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_checked = checked;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_AB08;
    v5[3] = &unk_6E2C0;
    v5[4] = self;
    [UIView _animateUsingDefaultTimingWithOptions:2054 animations:v5 completion:0];
  }
}

@end