@interface FMSideBarViewLegacy
- (_TtC6FindMy19FMSideBarViewLegacy)init;
- (_TtC6FindMy19FMSideBarViewLegacy)initWithCoder:(id)coder;
- (_TtC6FindMy19FMSideBarViewLegacy)initWithFrame:(CGRect)frame;
@end

@implementation FMSideBarViewLegacy

- (_TtC6FindMy19FMSideBarViewLegacy)init
{
  v3 = OBJC_IVAR____TtC6FindMy19FMSideBarViewLegacy_blurredBackground;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UIVisualEffectView) init];
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMSideBarViewLegacy();
  v4 = [(FMSideBarViewLegacy *)&v6 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_1003D9590();
  sub_1003D9764();

  return v4;
}

- (_TtC6FindMy19FMSideBarViewLegacy)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC6FindMy19FMSideBarViewLegacy_blurredBackground;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UIVisualEffectView) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC6FindMy19FMSideBarViewLegacy)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end