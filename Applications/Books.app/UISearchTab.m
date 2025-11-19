@interface UISearchTab
- (BKRootBarItem)rootBarItem;
- (UISearchTab)initWithRootBarItem:(id)a3 viewControllerProvider:(id)a4;
- (void)setRootBarItem:(id)a3;
@end

@implementation UISearchTab

- (UISearchTab)initWithRootBarItem:(id)a3 viewControllerProvider:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v12[4] = sub_10059EE94;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10038D350;
  v12[3] = &unk_100A24068;
  v8 = _Block_copy(v12);
  v9 = a3;

  v10 = [(UISearchTab *)self initWithViewControllerProvider:v8];
  _Block_release(v8);
  [(UISearchTab *)v10 setRootBarItem:v9];

  return v10;
}

- (BKRootBarItem)rootBarItem
{
  v2 = self;
  v3 = UISearchTab.rootBarItem.getter();

  return v3;
}

- (void)setRootBarItem:(id)a3
{
  v4 = a3;
  v5 = self;
  UISearchTab.rootBarItem.setter(v4);
}

@end