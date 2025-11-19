@interface SiriLightHostView
+ (Class)layerClass;
- (_TtC16IntelligentLight17SiriLightHostView)initWithCoder:(id)a3;
- (_TtC16IntelligentLight17SiriLightHostView)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
@end

@implementation SiriLightHostView

- (void)didMoveToWindow
{
  v2 = self;
  sub_1000059E8();
}

+ (Class)layerClass
{
  sub_1000071EC();

  return swift_getObjCClassFromMetadata();
}

- (_TtC16IntelligentLight17SiriLightHostView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC16IntelligentLight17SiriLightHostView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end