@interface MoreMenuBarButtonItem
- (UIMenu)menu;
- (_TtC7Journal21MoreMenuBarButtonItem)init;
- (_TtC7Journal21MoreMenuBarButtonItem)initWithCoder:(id)coder;
- (void)setMenu:(id)menu;
@end

@implementation MoreMenuBarButtonItem

- (_TtC7Journal21MoreMenuBarButtonItem)initWithCoder:(id)coder
{
  type metadata accessor for MoreMenuBarButtonItem();
  swift_deallocPartialClassInstance();
  return 0;
}

- (UIMenu)menu
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MoreMenuBarButtonItem();
  menu = [(MoreMenuBarButtonItem *)&v4 menu];

  return menu;
}

- (void)setMenu:(id)menu
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for MoreMenuBarButtonItem();
  menuCopy = menu;
  v5 = v6.receiver;
  [(MoreMenuBarButtonItem *)&v6 setMenu:menuCopy];
  sub_100246E64();
}

- (_TtC7Journal21MoreMenuBarButtonItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end