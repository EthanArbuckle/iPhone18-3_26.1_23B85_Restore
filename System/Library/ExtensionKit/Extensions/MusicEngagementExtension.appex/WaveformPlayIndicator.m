@interface WaveformPlayIndicator
- (_TtC11MusicCoreUI21WaveformPlayIndicator)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation WaveformPlayIndicator

- (void)tintColorDidChange
{
  v2 = self;
  WaveformPlayIndicator.tintColorDidChange()();
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(WaveformPlayIndicator *)&v3 layoutSubviews];
  if (!*&v2[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation])
  {
    WaveformPlayIndicator.layoutBarsToWaveform()();
  }
}

- (void)didMoveToWindow
{
  v2 = self;
  WaveformPlayIndicator.didMoveToWindow()();
}

- (_TtC11MusicCoreUI21WaveformPlayIndicator)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end