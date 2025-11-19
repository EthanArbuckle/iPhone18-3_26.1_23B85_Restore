@interface ASShadowlessNavigationBar
- (ASShadowlessNavigationBar)init;
- (void)pushNavigationItem:(id)a3 animated:(BOOL)a4;
@end

@implementation ASShadowlessNavigationBar

- (ASShadowlessNavigationBar)init
{
  v6.receiver = self;
  v6.super_class = ASShadowlessNavigationBar;
  v2 = [(ASShadowlessNavigationBar *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(ASShadowlessNavigationBar *)v2 standardAppearance];
    [v4 setShadowColor:0];
    [(ASShadowlessNavigationBar *)v3 setStandardAppearance:v4];
  }

  return v3;
}

- (void)pushNavigationItem:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(ASShadowlessNavigationBar *)self _setTitleOpacity:1.0];
  v7.receiver = self;
  v7.super_class = ASShadowlessNavigationBar;
  [(ASShadowlessNavigationBar *)&v7 pushNavigationItem:v6 animated:v4];
}

@end