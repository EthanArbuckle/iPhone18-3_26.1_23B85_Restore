@interface IMBAuthenticationHeaderView
- (_TtC8Business27IMBAuthenticationHeaderView)init;
- (_TtC8Business27IMBAuthenticationHeaderView)initWithCoder:(id)a3;
- (_TtC8Business27IMBAuthenticationHeaderView)initWithFrame:(CGRect)a3;
@end

@implementation IMBAuthenticationHeaderView

- (_TtC8Business27IMBAuthenticationHeaderView)init
{
  v3 = OBJC_IVAR____TtC8Business27IMBAuthenticationHeaderView_messageLabel;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UILabel) init];
  v6.receiver = self;
  v6.super_class = type metadata accessor for IMBAuthenticationHeaderView();
  v4 = [(IMBAuthenticationHeaderView *)&v6 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_100042518();
  sub_100042684();

  return v4;
}

- (_TtC8Business27IMBAuthenticationHeaderView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC8Business27IMBAuthenticationHeaderView_messageLabel;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UILabel) init];
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (_TtC8Business27IMBAuthenticationHeaderView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end