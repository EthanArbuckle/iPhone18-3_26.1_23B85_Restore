@interface SidebarProfileButton
- (_TtC23ShelfKitCollectionViews20SidebarProfileButton)initWithFrame:(CGRect)a3;
- (void)accountDidChange;
- (void)dealloc;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewTapped;
@end

@implementation SidebarProfileButton

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 defaultCenter];
  [v6 removeObserver:v5 name:ACDAccountStoreDidChangeNotification object:0];

  v7.receiver = v5;
  v7.super_class = ObjectType;
  [(SidebarProfileButton *)&v7 dealloc];
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(SidebarProfileButton *)&v6 traitCollectionDidChange:v4];
  [v5 invalidateIntrinsicContentSize];
  [v5 setNeedsUpdateConstraints];
}

- (void)viewTapped
{
  v2 = self;
  sub_2CCD58();
}

- (void)accountDidChange
{
  v2 = self;
  sub_2CC4F4();
}

- (_TtC23ShelfKitCollectionViews20SidebarProfileButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end