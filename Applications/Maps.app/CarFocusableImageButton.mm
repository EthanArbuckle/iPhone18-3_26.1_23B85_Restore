@interface CarFocusableImageButton
- (CGSize)intrinsicContentSize;
- (CarFocusableImageButton)initWithImage:(id)a3 edgeInsets:(UIEdgeInsets)a4;
- (void)setImage:(id)a3;
- (void)setRoundedCorners:(unint64_t)a3;
- (void)setSemanticContentAttributeForImage:(int64_t)a3;
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

- (void)setImage:(id)a3
{
  [(UIImageView *)self->_imageView setImage:a3];
  [(CarFocusableImageButton *)self setNeedsLayout];

  [(CarFocusableImageButton *)self layoutIfNeeded];
}

- (void)setRoundedCorners:(unint64_t)a3
{
  if ([(CarFocusableBlurControl *)self roundedCorners]!= a3)
  {
    v5.receiver = self;
    v5.super_class = CarFocusableImageButton;
    [(CarFocusableBlurControl *)&v5 setRoundedCorners:a3];
    [(CarFocusableImageButton *)self invalidateIntrinsicContentSize];
  }
}

- (void)setSemanticContentAttributeForImage:(int64_t)a3
{
  if (self->_semanticContentAttributeForImage != a3)
  {
    self->_semanticContentAttributeForImage = a3;
    [(UIImageView *)self->_imageView setSemanticContentAttribute:?];
  }
}

- (CarFocusableImageButton)initWithImage:(id)a3 edgeInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v9 = a3;
  v36.receiver = self;
  v36.super_class = CarFocusableImageButton;
  v10 = [(CarFocusableBlurControl *)&v36 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v11 = v10;
  if (v10)
  {
    [(CarFocusableBlurControl *)v10 setRoundedCornerRadius:18.0];
    v12 = [(CarFocusableBlurControl *)v11 contentView];
    v13 = [[UIImageView alloc] initWithImage:v9];
    v35 = v9;
    imageView = v11->_imageView;
    v11->_imageView = v13;

    [(UIImageView *)v11->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v11->_imageView setContentMode:1];
    [v12 addSubview:v11->_imageView];
    v34 = [(UIImageView *)v11->_imageView centerXAnchor];
    v33 = [v12 centerXAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v37[0] = v32;
    v31 = [(UIImageView *)v11->_imageView centerYAnchor];
    v30 = [v12 centerYAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v37[1] = v29;
    v28 = [(UIImageView *)v11->_imageView topAnchor];
    v27 = [v12 topAnchor];
    v26 = [v28 constraintGreaterThanOrEqualToAnchor:v27 constant:top];
    v37[2] = v26;
    v25 = [(UIImageView *)v11->_imageView leftAnchor];
    v24 = [v12 leftAnchor];
    v15 = [v25 constraintGreaterThanOrEqualToAnchor:v24 constant:left];
    v37[3] = v15;
    v16 = [v12 rightAnchor];
    v17 = [(UIImageView *)v11->_imageView rightAnchor];
    v18 = [v16 constraintGreaterThanOrEqualToAnchor:v17 constant:right];
    v37[4] = v18;
    v19 = [v12 bottomAnchor];
    v20 = [(UIImageView *)v11->_imageView bottomAnchor];
    v21 = [v19 constraintGreaterThanOrEqualToAnchor:v20 constant:bottom];
    v37[5] = v21;
    v22 = [NSArray arrayWithObjects:v37 count:6];
    [NSLayoutConstraint activateConstraints:v22];

    v9 = v35;
  }

  return v11;
}

@end