@interface UITab
- (BKRootBarItem)rootBarItem;
- (UITab)initWithRootBarItem:(id)item viewControllerProvider:(id)provider;
- (void)setRootBarItem:(id)item;
@end

@implementation UITab

- (UITab)initWithRootBarItem:(id)item viewControllerProvider:(id)provider
{
  v5 = _Block_copy(provider);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  itemCopy = item;
  v8 = sub_10059EB00(itemCopy, sub_10059EE94, v6);

  return v8;
}

- (BKRootBarItem)rootBarItem
{
  selfCopy = self;
  v3 = UITab.rootBarItem.getter();

  return v3;
}

- (void)setRootBarItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  UITab.rootBarItem.setter(itemCopy);
}

@end