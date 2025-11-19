@interface TemplateStatusCellContentView
- (NSArray)accessibilityElements;
- (_TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView)initWithArrangedSubviews:(id)a3;
- (_TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView)initWithCoder:(id)a3;
- (_TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView)initWithFrame:(CGRect)a3;
- (void)buttonAction:(id)a3;
@end

@implementation TemplateStatusCellContentView

- (_TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSArray)accessibilityElements
{
  v2 = self;
  v3 = sub_100532AA8();

  if (v3)
  {
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)buttonAction:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = *&self->internalConfiguration[OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration];
  if (v6)
  {

    v6(v7);
    sub_1000301AC(v6);

    sub_10000B070(v8);
  }

  else
  {
    sub_10000B070(v8);
  }
}

- (_TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView)initWithArrangedSubviews:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end