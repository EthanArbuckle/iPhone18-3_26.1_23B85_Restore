@interface GestureInstructionItemView
- (BOOL)_usesLargeSize;
- (CGSize)_descriptionSizeThatFitsSize:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (GestureInstructionItemView)initWithImageName:(id)a3 title:(id)a4 description:(id)a5;
- (void)layoutSubviews;
@end

@implementation GestureInstructionItemView

- (GestureInstructionItemView)initWithImageName:(id)a3 title:(id)a4 description:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v39.receiver = self;
  v39.super_class = GestureInstructionItemView;
  v11 = [(GestureInstructionItemView *)&v39 init];
  if (v11)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [UIImageView alloc];
    v14 = [UIImage imageNamed:v8 inBundle:v12];
    v15 = [v13 initWithImage:v14];
    imageView = v11->_imageView;
    v11->_imageView = v15;

    [(UIImageView *)v11->_imageView setContentMode:4];
    [(GestureInstructionItemView *)v11 addSubview:v11->_imageView];
    v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    [v17 _scaledValueForValue:14.0];
    v19 = v18;

    v20 = objc_alloc_init(UILabel);
    titleLabel = v11->_titleLabel;
    v11->_titleLabel = v20;

    [(UILabel *)v11->_titleLabel setText:v9];
    v22 = v11->_titleLabel;
    v23 = +[UIColor systemGrayColor];
    [(UILabel *)v22 setTextColor:v23];

    [(UILabel *)v11->_titleLabel setNumberOfLines:0];
    v24 = v11->_titleLabel;
    v25 = [UIFont boldSystemFontOfSize:v19];
    [(UILabel *)v24 setFont:v25];

    [(UILabel *)v11->_titleLabel sizeToFit];
    [(GestureInstructionItemView *)v11 addSubview:v11->_titleLabel];
    v26 = objc_alloc_init(UILabel);
    descriptionLabel = v11->_descriptionLabel;
    v11->_descriptionLabel = v26;

    [(UILabel *)v11->_descriptionLabel setText:v10];
    v28 = v11->_descriptionLabel;
    v29 = +[UIColor whiteColor];
    [(UILabel *)v28 setTextColor:v29];

    [(UILabel *)v11->_descriptionLabel setNumberOfLines:0];
    v30 = v11->_descriptionLabel;
    v31 = [UIFont systemFontOfSize:v19];
    [(UILabel *)v30 setFont:v31];

    [(UILabel *)v11->_descriptionLabel sizeToFit];
    [(GestureInstructionItemView *)v11 addSubview:v11->_descriptionLabel];
    v32 = +[UIApplication sharedApplication];
    v33 = [v32 preferredContentSizeCategory];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

    if (IsAccessibilityContentSizeCategory)
    {
      LODWORD(v35) = 1.0;
      [(UILabel *)v11->_titleLabel _setHyphenationFactor:v35];
      LODWORD(v36) = 1.0;
      [(UILabel *)v11->_descriptionLabel _setHyphenationFactor:v36];
    }

    v37 = v11;
  }

  return v11;
}

- (BOOL)_usesLargeSize
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 preferredContentSizeCategory];
  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

  return IsAccessibilityContentSizeCategory;
}

- (void)layoutSubviews
{
  v3 = [UIView userInterfaceLayoutDirectionForSemanticContentAttribute:[(GestureInstructionItemView *)self semanticContentAttribute]];
  v4 = [(GestureInstructionItemView *)self _usesLargeSize];
  v5 = 30.0;
  if (v4)
  {
    v5 = 0.0;
    v6 = 0.0;
  }

  else
  {
    v6 = 80.0;
  }

  if (v3 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (v3 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  [(GestureInstructionItemView *)self bounds];
  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  if (v4)
  {
    [(UIImageView *)self->_imageView removeFromSuperview];
  }

  else
  {
    if (v3 == UIUserInterfaceLayoutDirectionRightToLeft)
    {
      v17 = CGRectGetMaxX(*&v9) + -40.0;
    }

    else
    {
      v17 = 40.0;
    }

    imageView = self->_imageView;
    v19 = [(UIImageView *)imageView image];
    [v19 size];
    [(UIImageView *)imageView setCenter:v17, v20 * 0.5];
  }

  [(UILabel *)self->_titleLabel sizeThatFits:v15 - v7 - v8, 1.79769313e308];
  v22 = v21;
  v24 = v23;
  if (v3 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v32.origin.x = v13;
    v32.origin.y = v14;
    v32.size.width = v15;
    v32.size.height = v16;
    v6 = CGRectGetMaxX(v32) - v6 - v22;
  }

  [(UILabel *)self->_titleLabel setFrame:v6, 0.0, v22, v24];
  [(GestureInstructionItemView *)self _descriptionSizeThatFitsSize:v15, v16];
  v26 = v25;
  v28 = v27;
  descriptionLabel = self->_descriptionLabel;
  [(UILabel *)self->_titleLabel frame];
  MaxY = CGRectGetMaxY(v33);

  [(UILabel *)descriptionLabel setFrame:v7, MaxY, v26, v28];
}

- (CGSize)_descriptionSizeThatFitsSize:(CGSize)a3
{
  width = a3.width;
  v5 = [(GestureInstructionItemView *)self _usesLargeSize:a3.width];
  v6 = 80.0;
  v7 = 0.0;
  if (v5)
  {
    v6 = 0.0;
  }

  else
  {
    v7 = 30.0;
  }

  v8 = width - v6 - v7;
  [(UILabel *)self->_descriptionLabel sizeThatFits:v8, 3.40282347e38];
  v10 = v8;
  result.height = v9;
  result.width = v10;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UILabel *)self->_titleLabel frame];
  v7 = v6;
  [(GestureInstructionItemView *)self _descriptionSizeThatFitsSize:width, height];
  v9 = v7 + v8;
  v10 = width;
  result.height = v9;
  result.width = v10;
  return result;
}

@end