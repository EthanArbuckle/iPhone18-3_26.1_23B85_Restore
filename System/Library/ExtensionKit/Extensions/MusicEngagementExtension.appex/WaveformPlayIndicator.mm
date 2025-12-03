@interface WaveformPlayIndicator
- (_TtC11MusicCoreUI21WaveformPlayIndicator)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation WaveformPlayIndicator

- (void)tintColorDidChange
{
  selfCopy = self;
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
  selfCopy = self;
  WaveformPlayIndicator.didMoveToWindow()();
}

- (_TtC11MusicCoreUI21WaveformPlayIndicator)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end