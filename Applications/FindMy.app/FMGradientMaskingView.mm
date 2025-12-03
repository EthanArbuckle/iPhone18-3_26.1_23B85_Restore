@interface FMGradientMaskingView
+ (Class)layerClass;
- (_TtC6FindMy21FMGradientMaskingView)init;
- (_TtC6FindMy21FMGradientMaskingView)initWithCoder:(id)coder;
- (_TtC6FindMy21FMGradientMaskingView)initWithFrame:(CGRect)frame;
@end

@implementation FMGradientMaskingView

+ (Class)layerClass
{
  sub_10000905C(0, &qword_1006B95D0);

  return swift_getObjCClassFromMetadata();
}

- (_TtC6FindMy21FMGradientMaskingView)init
{
  v3 = OBJC_IVAR____TtC6FindMy21FMGradientMaskingView_gradientLayer;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(CAGradientLayer) init];
  v9.receiver = self;
  v9.super_class = type metadata accessor for FMGradientMaskingView();
  v4 = [(FMGradientMaskingView *)&v9 initWithFrame:0.0, 0.0, 0.0, 0.0];
  v5 = objc_opt_self();
  v6 = v4;
  clearColor = [v5 clearColor];
  [(FMGradientMaskingView *)v6 setBackgroundColor:clearColor];

  sub_100289124();
  return v6;
}

- (_TtC6FindMy21FMGradientMaskingView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC6FindMy21FMGradientMaskingView_gradientLayer;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(CAGradientLayer) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC6FindMy21FMGradientMaskingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end