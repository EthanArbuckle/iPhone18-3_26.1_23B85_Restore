@interface VolumeSlider
- (BOOL)isOnScreenForVolumeDisplay;
- (NSString)volumeAudioCategory;
- (UIWindowScene)windowSceneForVolumeDisplay;
- (void)_sliderFluidInteractionWillBegin:(id)a3 withLocation:(CGPoint)a4;
- (void)_sliderFluidInteractionWillContinue:(id)a3 withLocation:(CGPoint)a4;
- (void)_sliderFluidInteractionWillEnd:(id)a3;
- (void)_sliderFluidInteractionWillExtend:(id)a3 insets:(UIEdgeInsets)a4;
- (void)didMoveToWindow;
- (void)sliderDidChangeValue:(id)a3;
- (void)volumeController:(id)a3 volumeControlAvailableDidChange:(BOOL)a4;
- (void)volumeController:(id)a3 volumeValueDidChange:(float)a4;
@end

@implementation VolumeSlider

- (void)didMoveToWindow
{
  v2 = self;
  sub_10072720C();
}

- (void)sliderDidChangeValue:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100727400(v4);
}

- (void)volumeController:(id)a3 volumeControlAvailableDidChange:(BOOL)a4
{
  v4 = self;
  sub_100727300(1);
}

- (void)volumeController:(id)a3 volumeValueDidChange:(float)a4
{
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music12VolumeSlider_slider);
  v6 = a3;
  v9 = self;
  if (([v5 isTracking] & 1) == 0)
  {
    sub_100727300(1);
    v7 = *(&v9->super.super.super.isa + OBJC_IVAR____TtC5Music12VolumeSlider_volumeChangeHandler);
    if (v7)
    {

      v7(v8);
      sub_100020438(v7);
    }
  }
}

- (UIWindowScene)windowSceneForVolumeDisplay
{
  v2 = self;
  v3 = [(VolumeSlider *)v2 window];
  v4 = [v3 windowScene];

  return v4;
}

- (NSString)volumeAudioCategory
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music12VolumeSlider_volumeController);
  v3 = self;
  v4 = [objc_msgSend(v2 "dataSource")];
  swift_unknownObjectRelease();
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  return v4;
}

- (BOOL)isOnScreenForVolumeDisplay
{
  v2 = self;
  if ([(VolumeSlider *)v2 isHidden])
  {

    return 0;
  }

  else
  {
    [(VolumeSlider *)v2 alpha];
    v5 = v4;

    return v5 > 0.0;
  }
}

- (void)_sliderFluidInteractionWillBegin:(id)a3 withLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  sub_1007280C4();
}

- (void)_sliderFluidInteractionWillContinue:(id)a3 withLocation:(CGPoint)a4
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music12VolumeSlider_volumeChangeHandler);
  if (v4)
  {
    v5 = self;
    v6 = sub_100030444(v4);
    v4(v6);

    sub_100020438(v4);
  }
}

- (void)_sliderFluidInteractionWillExtend:(id)a3 insets:(UIEdgeInsets)a4
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music12VolumeSlider_volumeChangeHandler);
  if (v4)
  {
    v5 = self;
    v6 = sub_100030444(v4);
    v4(v6);

    sub_100020438(v4);
  }
}

- (void)_sliderFluidInteractionWillEnd:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100727BBC(v4);
}

@end