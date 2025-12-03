@interface CardTitleView
- (_TtC7Measure13CardTitleView)init;
- (_TtC7Measure13CardTitleView)initWithCoder:(id)coder;
- (_TtC7Measure13CardTitleView)initWithFrame:(CGRect)frame;
@end

@implementation CardTitleView

- (_TtC7Measure13CardTitleView)init
{
  v3 = OBJC_IVAR____TtC7Measure13CardTitleView_editableTitleView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UITextField) init];
  v4 = OBJC_IVAR____TtC7Measure13CardTitleView_title;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UILabel) init];
  v7.receiver = self;
  v7.super_class = type metadata accessor for CardTitleView();
  v5 = [(CardTitleView *)&v7 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_1000CACBC();

  return v5;
}

- (_TtC7Measure13CardTitleView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC7Measure13CardTitleView_editableTitleView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UITextField) init];
  v5 = OBJC_IVAR____TtC7Measure13CardTitleView_title;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(UILabel) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC7Measure13CardTitleView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end