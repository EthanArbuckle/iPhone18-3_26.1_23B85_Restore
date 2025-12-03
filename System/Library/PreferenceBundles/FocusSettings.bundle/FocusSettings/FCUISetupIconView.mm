@interface FCUISetupIconView
- (void)layoutSubviews;
- (void)setBackgroundColorForModeColorName:(id)name;
@end

@implementation FCUISetupIconView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = FCUISetupIconView;
  [(FCUISetupIconView *)&v3 layoutSubviews];
  [(FCUISetupIconView *)self frame];
  [(FCUISetupIconView *)self _setCornerRadius:CGRectGetHeight(v4) * 0.5];
  [(FCUISetupIconView *)self setClipsToBounds:1];
}

- (void)setBackgroundColorForModeColorName:(id)name
{
  aSelectorName = name;
  if ([(NSString *)aSelectorName length])
  {
    v4 = NSSelectorFromString(aSelectorName);
    if (objc_opt_respondsToSelector())
    {
      v5 = [UIColor performSelector:v4];
    }

    else
    {
      v5 = +[UIColor systemDarkGrayColor];
    }

    v6 = v5;
    [(FCUISetupIconView *)self setBackgroundColor:v5];
  }

  _objc_release_x1();
}

@end