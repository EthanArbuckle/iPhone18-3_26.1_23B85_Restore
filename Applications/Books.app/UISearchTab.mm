@interface UISearchTab
- (BKRootBarItem)rootBarItem;
- (UISearchTab)initWithRootBarItem:(id)item viewControllerProvider:(id)provider;
- (void)setRootBarItem:(id)item;
@end

@implementation UISearchTab

- (UISearchTab)initWithRootBarItem:(id)item viewControllerProvider:(id)provider
{
  v6 = _Block_copy(provider);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v12[4] = sub_10059EE94;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10038D350;
  v12[3] = &unk_100A24068;
  v8 = _Block_copy(v12);
  itemCopy = item;

  v10 = [(UISearchTab *)self initWithViewControllerProvider:v8];
  _Block_release(v8);
  [(UISearchTab *)v10 setRootBarItem:itemCopy];

  return v10;
}

- (BKRootBarItem)rootBarItem
{
  selfCopy = self;
  v3 = UISearchTab.rootBarItem.getter();

  return v3;
}

- (void)setRootBarItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  UISearchTab.rootBarItem.setter(itemCopy);
}

@end