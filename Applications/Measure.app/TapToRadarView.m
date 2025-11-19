@interface TapToRadarView
- (_TtC7Measure14TapToRadarView)initWithCoder:(id)a3;
- (void)fileRadar;
- (void)updateForCurrentOrientation;
@end

@implementation TapToRadarView

- (_TtC7Measure14TapToRadarView)initWithCoder:(id)a3
{
  *&self->delegate[OBJC_IVAR____TtC7Measure14TapToRadarView_delegate] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC7Measure14TapToRadarView_rtlFormat;
  v5 = [objc_opt_self() sharedApplication];
  v6 = [v5 userInterfaceLayoutDirection];

  *(&self->super.super.super.super.super.isa + v4) = v6 == 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)fileRadar
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = self;
    sub_1001ADAA0();
    swift_unknownObjectRelease();
  }
}

- (void)updateForCurrentOrientation
{
  v2 = self;
  sub_1001B3E78();
}

@end