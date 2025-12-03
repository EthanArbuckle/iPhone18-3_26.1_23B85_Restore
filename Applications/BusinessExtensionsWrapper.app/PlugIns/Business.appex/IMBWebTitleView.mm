@interface IMBWebTitleView
- (_TtC8Business15IMBWebTitleView)init;
- (_TtC8Business15IMBWebTitleView)initWithCoder:(id)coder;
- (_TtC8Business15IMBWebTitleView)initWithFrame:(CGRect)frame;
@end

@implementation IMBWebTitleView

- (_TtC8Business15IMBWebTitleView)init
{
  v3 = OBJC_IVAR____TtC8Business15IMBWebTitleView_titleLabel;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UILabel) init];
  v6.receiver = self;
  v6.super_class = type metadata accessor for IMBWebTitleView();
  v4 = [(IMBWebTitleView *)&v6 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_100081094();
  sub_100081360();

  return v4;
}

- (_TtC8Business15IMBWebTitleView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC8Business15IMBWebTitleView_titleLabel;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UILabel) init];
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (_TtC8Business15IMBWebTitleView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end