@interface TapToRadarView
- (_TtC7Measure14TapToRadarView)initWithCoder:(id)coder;
- (void)fileRadar;
- (void)updateForCurrentOrientation;
@end

@implementation TapToRadarView

- (_TtC7Measure14TapToRadarView)initWithCoder:(id)coder
{
  *&self->delegate[OBJC_IVAR____TtC7Measure14TapToRadarView_delegate] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC7Measure14TapToRadarView_rtlFormat;
  sharedApplication = [objc_opt_self() sharedApplication];
  userInterfaceLayoutDirection = [sharedApplication userInterfaceLayoutDirection];

  *(&self->super.super.super.super.super.isa + v4) = userInterfaceLayoutDirection == 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)fileRadar
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_1001ADAA0();
    swift_unknownObjectRelease();
  }
}

- (void)updateForCurrentOrientation
{
  selfCopy = self;
  sub_1001B3E78();
}

@end