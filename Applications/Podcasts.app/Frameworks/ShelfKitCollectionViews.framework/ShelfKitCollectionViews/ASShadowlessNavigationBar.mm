@interface ASShadowlessNavigationBar
- (ASShadowlessNavigationBar)init;
- (void)pushNavigationItem:(id)item animated:(BOOL)animated;
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
    standardAppearance = [(ASShadowlessNavigationBar *)v2 standardAppearance];
    [standardAppearance setShadowColor:0];
    [(ASShadowlessNavigationBar *)v3 setStandardAppearance:standardAppearance];
  }

  return v3;
}

- (void)pushNavigationItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  [(ASShadowlessNavigationBar *)self _setTitleOpacity:1.0];
  v7.receiver = self;
  v7.super_class = ASShadowlessNavigationBar;
  [(ASShadowlessNavigationBar *)&v7 pushNavigationItem:itemCopy animated:animatedCopy];
}

@end