@interface CarFocusableImageButton
- (CGSize)intrinsicContentSize;
- (CarFocusableImageButton)initWithImage:(id)image edgeInsets:(UIEdgeInsets)insets;
- (void)setImage:(id)image;
- (void)setRoundedCorners:(unint64_t)corners;
- (void)setSemanticContentAttributeForImage:(int64_t)image;
@end

@implementation CarFocusableImageButton

- (CGSize)intrinsicContentSize
{
  [(CarFocusableBlurControl *)self roundedCorners];
  v2 = 36.0;
  v3 = 36.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setImage:(id)image
{
  [(UIImageView *)self->_imageView setImage:image];
  [(CarFocusableImageButton *)self setNeedsLayout];

  [(CarFocusableImageButton *)self layoutIfNeeded];
}

- (void)setRoundedCorners:(unint64_t)corners
{
  if ([(CarFocusableBlurControl *)self roundedCorners]!= corners)
  {
    v5.receiver = self;
    v5.super_class = CarFocusableImageButton;
    [(CarFocusableBlurControl *)&v5 setRoundedCorners:corners];
    [(CarFocusableImageButton *)self invalidateIntrinsicContentSize];
  }
}

- (void)setSemanticContentAttributeForImage:(int64_t)image
{
  if (self->_semanticContentAttributeForImage != image)
  {
    self->_semanticContentAttributeForImage = image;
    [(UIImageView *)self->_imageView setSemanticContentAttribute:?];
  }
}

- (CarFocusableImageButton)initWithImage:(id)image edgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  imageCopy = image;
  v36.receiver = self;
  v36.super_class = CarFocusableImageButton;
  v10 = [(CarFocusableBlurControl *)&v36 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v11 = v10;
  if (v10)
  {
    [(CarFocusableBlurControl *)v10 setRoundedCornerRadius:18.0];
    contentView = [(CarFocusableBlurControl *)v11 contentView];
    v13 = [[UIImageView alloc] initWithImage:imageCopy];
    v35 = imageCopy;
    imageView = v11->_imageView;
    v11->_imageView = v13;

    [(UIImageView *)v11->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v11->_imageView setContentMode:1];
    [contentView addSubview:v11->_imageView];
    centerXAnchor = [(UIImageView *)v11->_imageView centerXAnchor];
    centerXAnchor2 = [contentView centerXAnchor];
    v32 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v37[0] = v32;
    centerYAnchor = [(UIImageView *)v11->_imageView centerYAnchor];
    centerYAnchor2 = [contentView centerYAnchor];
    v29 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v37[1] = v29;
    topAnchor = [(UIImageView *)v11->_imageView topAnchor];
    topAnchor2 = [contentView topAnchor];
    v26 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:top];
    v37[2] = v26;
    leftAnchor = [(UIImageView *)v11->_imageView leftAnchor];
    leftAnchor2 = [contentView leftAnchor];
    v15 = [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2 constant:left];
    v37[3] = v15;
    rightAnchor = [contentView rightAnchor];
    rightAnchor2 = [(UIImageView *)v11->_imageView rightAnchor];
    v18 = [rightAnchor constraintGreaterThanOrEqualToAnchor:rightAnchor2 constant:right];
    v37[4] = v18;
    bottomAnchor = [contentView bottomAnchor];
    bottomAnchor2 = [(UIImageView *)v11->_imageView bottomAnchor];
    v21 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:bottom];
    v37[5] = v21;
    v22 = [NSArray arrayWithObjects:v37 count:6];
    [NSLayoutConstraint activateConstraints:v22];

    imageCopy = v35;
  }

  return v11;
}

@end