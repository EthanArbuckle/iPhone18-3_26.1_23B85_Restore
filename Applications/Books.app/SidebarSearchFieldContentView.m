@interface SidebarSearchFieldContentView
- (_TtC5Books29SidebarSearchFieldContentView)initWithCoder:(id)a3;
- (_TtC5Books29SidebarSearchFieldContentView)initWithFrame:(CGRect)a3;
@end

@implementation SidebarSearchFieldContentView

- (_TtC5Books29SidebarSearchFieldContentView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC5Books29SidebarSearchFieldContentView_searchBar;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UISearchBar) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books29SidebarSearchFieldContentView_textSubscriptionCancellable) = 0;
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (_TtC5Books29SidebarSearchFieldContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end