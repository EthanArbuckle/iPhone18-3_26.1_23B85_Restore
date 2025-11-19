@interface EffectControl
- (_TtC34VideoConferenceControlCenterModule13EffectControl)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation EffectControl

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for EffectControl();
  v2 = v4.receiver;
  [(EffectControl *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC34VideoConferenceControlCenterModule13EffectControl_backgroundView];
  [v2 _continuousCornerRadius];
  [v3 _setContinuousCornerRadius:?];
}

- (_TtC34VideoConferenceControlCenterModule13EffectControl)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end