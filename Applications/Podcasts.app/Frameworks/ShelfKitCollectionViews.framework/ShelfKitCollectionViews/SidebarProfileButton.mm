@interface SidebarProfileButton
- (_TtC23ShelfKitCollectionViews20SidebarProfileButton)initWithFrame:(CGRect)frame;
- (void)accountDidChange;
- (void)dealloc;
- (void)traitCollectionDidChange:(id)change;
- (void)viewTapped;
@end

@implementation SidebarProfileButton

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:selfCopy name:ACDAccountStoreDidChangeNotification object:0];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(SidebarProfileButton *)&v7 dealloc];
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v6.receiver;
  [(SidebarProfileButton *)&v6 traitCollectionDidChange:changeCopy];
  [v5 invalidateIntrinsicContentSize];
  [v5 setNeedsUpdateConstraints];
}

- (void)viewTapped
{
  selfCopy = self;
  sub_2CCD58();
}

- (void)accountDidChange
{
  selfCopy = self;
  sub_2CC4F4();
}

- (_TtC23ShelfKitCollectionViews20SidebarProfileButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end