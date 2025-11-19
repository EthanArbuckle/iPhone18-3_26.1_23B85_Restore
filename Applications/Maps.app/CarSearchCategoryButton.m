@interface CarSearchCategoryButton
- (CarSearchCategoryButton)initWithFrame:(CGRect)a3;
- (id)accessibilityUserInputLabels;
- (void)_updateLableColor;
- (void)focusDidChange:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setTitle:(id)a3 image:(id)a4;
@end

@implementation CarSearchCategoryButton

- (id)accessibilityUserInputLabels
{
  v3 = [(UILabel *)self->_label text];
  if (v3)
  {
    v4 = [(UILabel *)self->_label text];
    v7 = v4;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v5 = &off_1016EDC10;
  }

  return v5;
}

- (void)setTitle:(id)a3 image:(id)a4
{
  label = self->_label;
  v7 = a4;
  [(UILabel *)label setText:a3];
  [(UIImageView *)self->_imageView setImage:v7];
}

- (void)_updateLableColor
{
  if (([(CarSearchCategoryButton *)self isFocused]& 1) != 0 || ([(CarSearchCategoryButton *)self isHighlighted]& 1) != 0)
  {
    v3 = +[UIColor _externalSystemWhiteColor];
  }

  else
  {
    v3 = +[UIColor labelColor];
  }

  v4 = v3;
  [(UILabel *)self->_label setTextColor:v3];
}

- (void)focusDidChange:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CarSearchCategoryButton;
  [(CarFocusableControl *)&v4 focusDidChange:a3];
  [(CarSearchCategoryButton *)self _updateLableColor];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CarSearchCategoryButton;
  [(CarFocusableControl *)&v4 setHighlighted:a3];
  [(CarSearchCategoryButton *)self _updateLableColor];
}

- (CarSearchCategoryButton)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = CarSearchCategoryButton;
  v3 = [(CarFocusableControl *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CarFocusableControl *)v3 setFocusableControlStyle:1];
    [(CarFocusableControl *)v4 setFocusLayerInsets:-4.0, -4.0, -4.0, -4.0];
    [(CarSearchCategoryButton *)v4 setAccessibilityIdentifier:@"CarSearchCategoryCell"];
    v5 = [(CarSearchCategoryButton *)v4 accessibilityTraits];
    [(CarSearchCategoryButton *)v4 setAccessibilityTraits:UIAccessibilityTraitButton | v5];
    [(CarFocusableControl *)v4 setMetrics:1.0, 10.0, 8.0];
    v6 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    label = v4->_label;
    v4->_label = v6;

    v8 = [UIFont systemFontOfSize:8.0];
    [(UILabel *)v4->_label setFont:v8];

    LODWORD(v9) = 1148846080;
    [(UILabel *)v4->_label setContentCompressionResistancePriority:1 forAxis:v9];
    LODWORD(v10) = 1132068864;
    [(UILabel *)v4->_label setContentCompressionResistancePriority:0 forAxis:v10];
    [(UILabel *)v4->_label setAccessibilityIdentifier:@"CarSearchCategoryLabel"];
    v11 = [[UIImageView alloc] initWithImage:0];
    imageView = v4->_imageView;
    v4->_imageView = v11;

    [(UIImageView *)v4->_imageView setContentMode:1];
    [(UIImageView *)v4->_imageView setAccessibilityIdentifier:@"CarSearchCategoryIcon"];
    v13 = [UIStackView alloc];
    v21[0] = v4->_imageView;
    v21[1] = v4->_label;
    v14 = [NSArray arrayWithObjects:v21 count:2];
    v15 = [v13 initWithArrangedSubviews:v14];

    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15 setDistribution:0];
    [v15 setAlignment:3];
    [v15 setAxis:1];
    [(CarFocusableControl *)v4 addSubview:v15];
    LODWORD(v16) = 1148846080;
    v17 = [v15 _maps_constraintsEqualToEdgesOfView:v4 insets:UIEdgeInsetsZero.top priority:{UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v16}];
    v18 = [v17 allConstraints];
    [NSLayoutConstraint activateConstraints:v18];
  }

  return v4;
}

@end