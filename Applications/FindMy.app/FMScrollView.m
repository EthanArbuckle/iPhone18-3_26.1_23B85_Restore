@interface FMScrollView
- (_TtC6FindMy12FMScrollView)init;
- (_TtC6FindMy12FMScrollView)initWithCoder:(id)a3;
- (_TtC6FindMy12FMScrollView)initWithFrame:(CGRect)a3;
@end

@implementation FMScrollView

- (_TtC6FindMy12FMScrollView)init
{
  v3 = OBJC_IVAR____TtC6FindMy12FMScrollView_content;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(UIView) init];
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMScrollView();
  v4 = [(FMScrollView *)&v8 initWithFrame:0.0, 0.0, 0.0, 0.0];
  v5 = *(&v4->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy12FMScrollView_content);
  v6 = v4;
  [(FMScrollView *)v6 addSubview:v5];
  sub_10003A640();

  return v6;
}

- (_TtC6FindMy12FMScrollView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC6FindMy12FMScrollView_content;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(UIView) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC6FindMy12FMScrollView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end