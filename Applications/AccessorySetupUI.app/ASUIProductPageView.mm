@interface ASUIProductPageView
- (_TtC16AccessorySetupUI19ASUIProductPageView)initWithCoder:(id)a3;
- (_TtC16AccessorySetupUI19ASUIProductPageView)initWithFrame:(CGRect)a3;
@end

@implementation ASUIProductPageView

- (_TtC16AccessorySetupUI19ASUIProductPageView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_imageView) = 0;
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() systemImageNamed:v4];

  if (!v5)
  {
    __break(1u);
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_defaultSymbolImage) = v5;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC16AccessorySetupUI19ASUIProductPageView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end