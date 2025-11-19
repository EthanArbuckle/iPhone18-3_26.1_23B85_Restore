@interface COSAppInstallButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (COSAppInstallButton)initWithFrame:(CGRect)a3;
- (void)_updateButtonOutline;
- (void)layoutSubviews;
- (void)setMode:(unint64_t)a3 animated:(BOOL)a4;
- (void)tintColorDidChange;
- (void)updateOutlineEnabled:(BOOL)a3 forMode:(unint64_t)a4;
@end

@implementation COSAppInstallButton

- (COSAppInstallButton)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = COSAppInstallButton;
  v3 = [(COSAppInstallButton *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UIView);
    outline = v3->_outline;
    v3->_outline = v4;

    v6 = [(UIView *)v3->_outline layer];
    [v6 setBorderWidth:1.0];

    v7 = [(UIView *)v3->_outline layer];
    [v7 setCornerRadius:3.0];

    v8 = v3->_outline;
    v9 = +[UIColor clearColor];
    [(UIView *)v8 setBackgroundColor:v9];

    [(UIView *)v3->_outline setUserInteractionEnabled:0];
    [(COSAppInstallButton *)v3 addSubview:v3->_outline];
    v10 = sub_10007BEAC(@"INSTALL", 0);
    installLabel = v3->_installLabel;
    v3->_installLabel = v10;

    [(COSAppInstallButton *)v3 addSubview:v3->_installLabel];
    v12 = sub_10007BEAC(@"INSTALLED", 1);
    installedLabel = v3->_installedLabel;
    v3->_installedLabel = v12;

    [(COSAppInstallButton *)v3 addSubview:v3->_installedLabel];
    v14 = sub_10007BEAC(@"UNAVAILABLE", 1);
    unavailableLabel = v3->_unavailableLabel;
    v3->_unavailableLabel = v14;

    [(COSAppInstallButton *)v3 addSubview:v3->_unavailableLabel];
    v16 = sub_10007BEAC(@"INSTALLING", 1);
    installingLabel = v3->_installingLabel;
    v3->_installingLabel = v16;

    [(COSAppInstallButton *)v3 addSubview:v3->_installingLabel];
    [(COSAppInstallButton *)v3 setMode:1 animated:0];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UILabel *)self->_installLabel sizeThatFits:?];
  v8 = v7 + 20.0;
  if (v8 >= CGSizeZero.width)
  {
    v9 = v8;
  }

  else
  {
    v9 = CGSizeZero.width;
  }

  if (v6 + 7.0 >= CGSizeZero.height)
  {
    v10 = v6 + 7.0;
  }

  else
  {
    v10 = CGSizeZero.height;
  }

  [(UILabel *)self->_installedLabel sizeThatFits:width, height];
  v13 = v12 + 20.0;
  if (v13 >= v9)
  {
    v9 = v13;
  }

  if (v11 + 7.0 >= v10)
  {
    v10 = v11 + 7.0;
  }

  [(UILabel *)self->_unavailableLabel sizeThatFits:width, height];
  v16 = v15 + 20.0;
  if (v16 >= v9)
  {
    v9 = v16;
  }

  if (v14 + 7.0 >= v10)
  {
    v10 = v14 + 7.0;
  }

  [(UILabel *)self->_installingLabel sizeThatFits:width, height];
  v19 = v18 + 20.0;
  if (v19 < v9)
  {
    v19 = v9;
  }

  v20 = v17 + 7.0;
  if (v20 < v10)
  {
    v20 = v10;
  }

  result.height = v20;
  result.width = v19;
  return result;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = COSAppInstallButton;
  [(COSAppInstallButton *)&v11 layoutSubviews];
  [(COSAppInstallButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_10007C1CC(self->_installLabel, v3, v5, v7, v9);
  sub_10007C1CC(self->_installedLabel, v4, v6, v8, v10);
  sub_10007C1CC(self->_unavailableLabel, v4, v6, v8, v10);
  sub_10007C1CC(self->_installingLabel, v4, v6, v8, v10);
  [(COSAppInstallButton *)self setMode:self->_mode animated:0];
}

- (void)updateOutlineEnabled:(BOOL)a3 forMode:(unint64_t)a4
{
  if (a4 - 1 > 3)
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  else
  {
    [*(&self->super.super.super.super.super.isa + *off_100269F00[a4 - 1]) frame];
    x = v5;
    y = v7;
    width = v9;
    height = v11;
  }

  [(COSAppInstallButton *)self _updateButtonOutline];
  outline = self->_outline;
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v14 = CGRectGetMinX(v19) + -10.0 + -1.0;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v15 = CGRectGetMinY(v20) + -3.5;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v16 = CGRectGetWidth(v21) + 20.0;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v17 = CGRectGetHeight(v22) + 7.0;

  [(UIView *)outline setFrame:v14, v15, v16, v17];
}

- (void)setMode:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  self->_mode = a3;
  v7 = a3 == 1;
  [(COSAppInstallButton *)self setEnabled:a3 == 1];
  v8 = 0.0;
  v9[1] = 3221225472;
  v9[0] = _NSConcreteStackBlock;
  v9[2] = sub_10007C4C0;
  v9[3] = &unk_100269EC0;
  if (v4)
  {
    v8 = 0.5;
  }

  v9[4] = self;
  v9[5] = a3;
  v10 = v7;
  [UIView animateWithDuration:4 delay:v9 options:&stru_100269EE0 animations:v8 completion:0.0];
}

- (void)_updateButtonOutline
{
  v5 = [(UIView *)self->_outline layer];
  if ([(COSAppInstallButton *)self isEnabled])
  {
    BPSSetupTintColor();
  }

  else
  {
    +[UIColor darkGrayColor];
  }
  v3 = ;
  v4 = [(COSAppInstallButton *)self _accessibilityHigherContrastTintColorForColor:v3];
  [v5 setBorderColor:{objc_msgSend(v4, "cgColor")}];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = COSAppInstallButton;
  [(COSAppInstallButton *)&v3 tintColorDidChange];
  [(COSAppInstallButton *)self _updateButtonOutline];
}

@end