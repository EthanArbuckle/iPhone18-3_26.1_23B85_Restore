@interface PersonalizedImageView
- (CGSize)intrinsicContentSize;
- (PersonalizedImageView)initWithMainImage:(id)image mainImageSize:(CGSize)size userImageDiameter:(double)diameter userImageExtensionPastMainImage:(double)mainImage;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)layoutSubviews;
@end

@implementation PersonalizedImageView

- (CGSize)intrinsicContentSize
{
  userImageExtensionPastMainImage = self->_userImageExtensionPastMainImage;
  v3 = self->_mainImageSize.width + userImageExtensionPastMainImage * 2.0;
  v4 = self->_mainImageSize.height + userImageExtensionPastMainImage;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = PersonalizedImageView;
  [(PersonalizedImageView *)&v8 layoutSubviews];
  [(UIImageView *)self->_mainImageView bounds];
  v3 = [UIBezierPath bezierPathWithRect:?];
  userImageView = self->_userImageView;
  [(UIImageView *)userImageView bounds];
  [(UIImageView *)userImageView convertRect:self->_mainImageView toView:?];
  v10 = CGRectInset(v9, -3.0, -3.0);
  v5 = [UIBezierPath bezierPathWithOvalInRect:v10.origin.x, v10.origin.y, v10.size.width, v10.size.height];
  [v3 appendPath:v5];
  v6 = +[CAShapeLayer layer];
  [v6 setFillRule:kCAFillRuleEvenOdd];
  [v6 setPath:{objc_msgSend(v3, "CGPath")}];
  layer = [(UIImageView *)self->_mainImageView layer];
  [layer setMask:v6];
}

- (void)_setupConstraints
{
  v3 = [[MUSizeLayout alloc] initWithItem:self->_mainImageView size:{self->_mainImageSize.width, self->_mainImageSize.height}];
  v26[0] = v3;
  v4 = [[MUSizeLayout alloc] initWithItem:self->_userImageView size:{self->_userImageSize.width, self->_userImageSize.height}];
  v26[1] = v4;
  v5 = [NSArray arrayWithObjects:v26 count:2];
  [NSLayoutConstraint _mapsui_activateLayouts:v5];

  topAnchor = [(UIImageView *)self->_mainImageView topAnchor];
  topAnchor2 = [(PersonalizedImageView *)self topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v25[0] = v22;
  leftAnchor = [(UIImageView *)self->_mainImageView leftAnchor];
  leftAnchor2 = [(PersonalizedImageView *)self leftAnchor];
  v19 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:self->_userImageExtensionPastMainImage + -4.0];
  v25[1] = v19;
  rightAnchor = [(UIImageView *)self->_mainImageView rightAnchor];
  rightAnchor2 = [(PersonalizedImageView *)self rightAnchor];
  v16 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-4.0 - self->_userImageExtensionPastMainImage];
  v25[2] = v16;
  bottomAnchor = [(UIImageView *)self->_mainImageView bottomAnchor];
  bottomAnchor2 = [(PersonalizedImageView *)self bottomAnchor];
  v7 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-self->_userImageExtensionPastMainImage];
  v25[3] = v7;
  rightAnchor3 = [(UIImageView *)self->_userImageView rightAnchor];
  rightAnchor4 = [(UIImageView *)self->_mainImageView rightAnchor];
  v10 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4 constant:self->_userImageExtensionPastMainImage];
  v25[4] = v10;
  bottomAnchor3 = [(UIImageView *)self->_userImageView bottomAnchor];
  bottomAnchor4 = [(UIImageView *)self->_mainImageView bottomAnchor];
  v13 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:self->_userImageExtensionPastMainImage];
  v25[5] = v13;
  v14 = [NSArray arrayWithObjects:v25 count:6];
  [NSLayoutConstraint activateConstraints:v14];
}

- (void)_setupViews
{
  v3 = [UIImageView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  mainImageView = self->_mainImageView;
  self->_mainImageView = v7;

  [(UIImageView *)self->_mainImageView setImage:self->_mainImage];
  [(UIImageView *)self->_mainImageView setContentMode:1];
  [(PersonalizedImageView *)self addSubview:self->_mainImageView];
  v9 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  userImageView = self->_userImageView;
  self->_userImageView = v9;

  v11 = +[UserInformationManager sharedInstance];
  userIcon = [v11 userIcon];
  [(UIImageView *)self->_userImageView setImage:userIcon];

  [(PersonalizedImageView *)self addSubview:self->_userImageView];
  LODWORD(v13) = 1148846080;
  [(PersonalizedImageView *)self setContentCompressionResistancePriority:1 forAxis:v13];
  LODWORD(v14) = 1148846080;

  [(PersonalizedImageView *)self setContentCompressionResistancePriority:0 forAxis:v14];
}

- (PersonalizedImageView)initWithMainImage:(id)image mainImageSize:(CGSize)size userImageDiameter:(double)diameter userImageExtensionPastMainImage:(double)mainImage
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  v16.receiver = self;
  v16.super_class = PersonalizedImageView;
  v13 = [(PersonalizedImageView *)&v16 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_mainImage, image);
    v14->_mainImageSize.width = width;
    v14->_mainImageSize.height = height;
    v14->_userImageSize.width = diameter;
    v14->_userImageSize.height = diameter;
    v14->_userImageExtensionPastMainImage = mainImage;
    [(PersonalizedImageView *)v14 _setupViews];
    [(PersonalizedImageView *)v14 _setupConstraints];
  }

  return v14;
}

@end