@interface IMBTableHeaderView
- (_TtC8Business18IMBTableHeaderView)initWithCoder:(id)a3;
- (_TtC8Business18IMBTableHeaderView)initWithFrame:(CGRect)a3;
@end

@implementation IMBTableHeaderView

- (_TtC8Business18IMBTableHeaderView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___subtitleLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Business18IMBTableHeaderView____lazy_storage___separatorView) = 0;
  v3 = OBJC_IVAR____TtC8Business18IMBTableHeaderView_separatorColor;
  *(&self->super.super.super.isa + v3) = [objc_opt_self() blackColor];
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (_TtC8Business18IMBTableHeaderView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end