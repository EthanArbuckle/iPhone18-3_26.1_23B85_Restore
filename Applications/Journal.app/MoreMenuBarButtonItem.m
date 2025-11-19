@interface MoreMenuBarButtonItem
- (UIMenu)menu;
- (_TtC7Journal21MoreMenuBarButtonItem)init;
- (_TtC7Journal21MoreMenuBarButtonItem)initWithCoder:(id)a3;
- (void)setMenu:(id)a3;
@end

@implementation MoreMenuBarButtonItem

- (_TtC7Journal21MoreMenuBarButtonItem)initWithCoder:(id)a3
{
  type metadata accessor for MoreMenuBarButtonItem();
  swift_deallocPartialClassInstance();
  return 0;
}

- (UIMenu)menu
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MoreMenuBarButtonItem();
  v2 = [(MoreMenuBarButtonItem *)&v4 menu];

  return v2;
}

- (void)setMenu:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for MoreMenuBarButtonItem();
  v4 = a3;
  v5 = v6.receiver;
  [(MoreMenuBarButtonItem *)&v6 setMenu:v4];
  sub_100246E64();
}

- (_TtC7Journal21MoreMenuBarButtonItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end