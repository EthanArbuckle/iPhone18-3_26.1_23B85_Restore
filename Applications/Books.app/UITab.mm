@interface UITab
- (BKRootBarItem)rootBarItem;
- (UITab)initWithRootBarItem:(id)a3 viewControllerProvider:(id)a4;
- (void)setRootBarItem:(id)a3;
@end

@implementation UITab

- (UITab)initWithRootBarItem:(id)a3 viewControllerProvider:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a3;
  v8 = sub_10059EB00(v7, sub_10059EE94, v6);

  return v8;
}

- (BKRootBarItem)rootBarItem
{
  v2 = self;
  v3 = UITab.rootBarItem.getter();

  return v3;
}

- (void)setRootBarItem:(id)a3
{
  v4 = a3;
  v5 = self;
  UITab.rootBarItem.setter(v4);
}

@end