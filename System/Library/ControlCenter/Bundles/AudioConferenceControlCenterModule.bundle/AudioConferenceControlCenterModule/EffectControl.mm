@interface EffectControl
- (_TtC34AudioConferenceControlCenterModule13EffectControl)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation EffectControl

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for EffectControl();
  v2 = v4.receiver;
  [(EffectControl *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC34AudioConferenceControlCenterModule13EffectControl_backgroundView];
  [v2 _continuousCornerRadius];
  [v3 _setContinuousCornerRadius:?];
}

- (_TtC34AudioConferenceControlCenterModule13EffectControl)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end