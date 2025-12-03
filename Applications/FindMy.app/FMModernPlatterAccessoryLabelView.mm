@interface FMModernPlatterAccessoryLabelView
- (_TtC6FindMy33FMModernPlatterAccessoryLabelView)initWithCoder:(id)coder;
- (_TtC6FindMy33FMModernPlatterAccessoryLabelView)initWithFrame:(CGRect)frame;
@end

@implementation FMModernPlatterAccessoryLabelView

- (_TtC6FindMy33FMModernPlatterAccessoryLabelView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC6FindMy33FMModernPlatterAccessoryLabelView_label;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy33FMModernPlatterAccessoryLabelView_chevron;
  v6 = sub_1003DE824();
  v7 = [objc_allocWithZone(UIImageView) initWithImage:v6];

  *(&self->super.super.super.super.isa + v5) = v7;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC6FindMy33FMModernPlatterAccessoryLabelView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end