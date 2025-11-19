@interface ProfileIconButton
- (CGSize)intrinsicContentSize;
- (ProfileIconButton)init;
- (void)layoutSubviews;
- (void)setIconName:(id)a3;
- (void)tintColorDidChange;
@end

@implementation ProfileIconButton

- (ProfileIconButton)init
{
  v10.receiver = self;
  v10.super_class = ProfileIconButton;
  v2 = [(ProfileIconButton *)&v10 init];
  if (v2)
  {
    v3 = +[UIColor secondaryLabelColor];
    v4 = [(ProfileIconButton *)v2 imageView];
    [v4 setTintColor:v3];

    v5 = [(ProfileIconButton *)v2 widthAnchor];
    v6 = [(ProfileIconButton *)v2 heightAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];
    [v7 setActive:1];

    v8 = v2;
  }

  return v2;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = ProfileIconButton;
  [(ProfileIconButton *)&v18 layoutSubviews];
  if ([(ProfileIconButton *)self isSelected])
  {
    [(ProfileIconButton *)self bounds];
    v3 = CGRectGetHeight(v19) * 0.5;
    v4 = [(ProfileIconButton *)self layer];
    [v4 setCornerRadius:v3];

    v5 = [(ProfileIconButton *)self layer];
    [v5 setBorderWidth:3.0];

    v6 = [(ProfileIconButton *)self tintColor];
    v7 = [(ProfileIconButton *)self imageView];
    [v7 setTintColor:v6];

    v8 = [(ProfileIconButton *)self tintColor];
    v9 = [v8 CGColor];
    v10 = [(ProfileIconButton *)self layer];
    [v10 setBorderColor:v9];

    v11 = [(ProfileIconButton *)self tintColor];
    v12 = [v11 colorWithAlphaComponent:0.1];
    v13 = [v12 cgColor];
    v14 = [(ProfileIconButton *)self layer];
    [v14 setBackgroundColor:v13];
  }

  else
  {
    v15 = [(ProfileIconButton *)self layer];
    [v15 setBorderWidth:0.0];

    v16 = [(ProfileIconButton *)self layer];
    [v16 setBorderColor:0];

    v17 = [(ProfileIconButton *)self layer];
    [v17 setBackgroundColor:0];

    v11 = +[UIColor secondaryLabelColor];
    v12 = [(ProfileIconButton *)self imageView];
    [v12 setTintColor:v11];
  }
}

- (void)setIconName:(id)a3
{
  v5 = a3;
  if (self->_iconName != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_iconName, a3);
    if ([(NSString *)self->_iconName isEqualToString:@"ellipsis"])
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    iconName = self->_iconName;
    v8 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle2 scale:v6];
    v9 = [UIImage _systemImageNamed:iconName withConfiguration:v8];
    [(ProfileIconButton *)self setImage:v9 forState:0];

    v5 = v10;
  }
}

- (void)tintColorDidChange
{
  iconName = self->_iconName;
  if (iconName && ![(NSString *)iconName isEqualToString:@"ellipsis"])
  {
    v4 = self->_iconName;
    v6 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle2 scale:1];
    v5 = [UIImage _systemImageNamed:v4 withConfiguration:v6];
    [(ProfileIconButton *)self setImage:v5 forState:0];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = 50.0;
  v3 = 50.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end