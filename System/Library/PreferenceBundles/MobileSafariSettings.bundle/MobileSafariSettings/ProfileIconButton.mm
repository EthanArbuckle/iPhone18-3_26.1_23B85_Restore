@interface ProfileIconButton
- (CGSize)intrinsicContentSize;
- (ProfileIconButton)init;
- (void)layoutSubviews;
- (void)setIconName:(id)name;
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
    imageView = [(ProfileIconButton *)v2 imageView];
    [imageView setTintColor:v3];

    widthAnchor = [(ProfileIconButton *)v2 widthAnchor];
    heightAnchor = [(ProfileIconButton *)v2 heightAnchor];
    v7 = [widthAnchor constraintEqualToAnchor:heightAnchor];
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
    layer = [(ProfileIconButton *)self layer];
    [layer setCornerRadius:v3];

    layer2 = [(ProfileIconButton *)self layer];
    [layer2 setBorderWidth:3.0];

    tintColor = [(ProfileIconButton *)self tintColor];
    imageView = [(ProfileIconButton *)self imageView];
    [imageView setTintColor:tintColor];

    tintColor2 = [(ProfileIconButton *)self tintColor];
    cGColor = [tintColor2 CGColor];
    layer3 = [(ProfileIconButton *)self layer];
    [layer3 setBorderColor:cGColor];

    tintColor3 = [(ProfileIconButton *)self tintColor];
    imageView2 = [tintColor3 colorWithAlphaComponent:0.1];
    cgColor = [imageView2 cgColor];
    layer4 = [(ProfileIconButton *)self layer];
    [layer4 setBackgroundColor:cgColor];
  }

  else
  {
    layer5 = [(ProfileIconButton *)self layer];
    [layer5 setBorderWidth:0.0];

    layer6 = [(ProfileIconButton *)self layer];
    [layer6 setBorderColor:0];

    layer7 = [(ProfileIconButton *)self layer];
    [layer7 setBackgroundColor:0];

    tintColor3 = +[UIColor secondaryLabelColor];
    imageView2 = [(ProfileIconButton *)self imageView];
    [imageView2 setTintColor:tintColor3];
  }
}

- (void)setIconName:(id)name
{
  nameCopy = name;
  if (self->_iconName != nameCopy)
  {
    v10 = nameCopy;
    objc_storeStrong(&self->_iconName, name);
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

    nameCopy = v10;
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