@interface CRCheckmarkView
- (CRCheckmarkView)initWithChecked:(BOOL)a3;
- (void)_configureView;
- (void)_updateViewState;
- (void)setChecked:(BOOL)a3;
@end

@implementation CRCheckmarkView

- (CRCheckmarkView)initWithChecked:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = CRCheckmarkView;
  v4 = [(CRCheckmarkView *)&v7 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_checked = a3;
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
  v8 = [v7 _imageThatSuppressesAccessibilityHairlineThickening];
  v9 = [v8 imageWithRenderingMode:2];
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
  v19 = [v49 leadingAnchor];
  v20 = [(CRCheckmarkView *)self leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v18 addObject:v21];

  v22 = [v49 trailingAnchor];
  v23 = [(CRCheckmarkView *)self trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  [v18 addObject:v24];

  v25 = [v49 topAnchor];
  v26 = [(CRCheckmarkView *)self topAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  [v18 addObject:v27];

  v28 = [v49 bottomAnchor];
  v29 = [(CRCheckmarkView *)self bottomAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  [v18 addObject:v30];

  v31 = [v12 leadingAnchor];
  v32 = [(CRCheckmarkView *)self leadingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];
  [v18 addObject:v33];

  v34 = [v12 trailingAnchor];
  v35 = [(CRCheckmarkView *)self trailingAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];
  [v18 addObject:v36];

  v37 = [v12 topAnchor];
  v38 = [(CRCheckmarkView *)self topAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];
  [v18 addObject:v39];

  v40 = [v12 bottomAnchor];
  v41 = [(CRCheckmarkView *)self bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];
  [v18 addObject:v42];

  v43 = [v12 heightAnchor];
  v44 = [v12 widthAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 multiplier:1.0];
  [v18 addObject:v45];

  v46 = [v49 heightAnchor];
  v47 = [v49 widthAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 multiplier:1.0];
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

  v4 = [(CRCheckmarkView *)self checkmarkImageView];
  v5 = *&CGAffineTransformIdentity.c;
  *&v11.a = *&CGAffineTransformIdentity.a;
  *&v11.c = v5;
  *&v11.tx = *&CGAffineTransformIdentity.tx;
  [v4 setTransform:&v11];

  v6 = [(CRCheckmarkView *)self checkmarkImageView];
  v11 = v12;
  [v6 setTransform:&v11];

  v7 = [(CRCheckmarkView *)self checkmarkImageView];
  if ([(CRCheckmarkView *)self isChecked])
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  [v7 setAlpha:v8];

  v9 = [(CRCheckmarkView *)self circleImageView];
  if ([(CRCheckmarkView *)self isChecked])
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  [v9 setAlpha:v10];
}

- (void)setChecked:(BOOL)a3
{
  if (self->_checked != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_checked = a3;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_AB08;
    v5[3] = &unk_6E2C0;
    v5[4] = self;
    [UIView _animateUsingDefaultTimingWithOptions:2054 animations:v5 completion:0];
  }
}

@end