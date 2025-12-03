@interface VolumeSlider
- (BOOL)isOnScreenForVolumeDisplay;
- (NSString)volumeAudioCategory;
- (UIWindowScene)windowSceneForVolumeDisplay;
- (void)_sliderFluidInteractionWillBegin:(id)begin withLocation:(CGPoint)location;
- (void)_sliderFluidInteractionWillContinue:(id)continue withLocation:(CGPoint)location;
- (void)_sliderFluidInteractionWillEnd:(id)end;
- (void)_sliderFluidInteractionWillExtend:(id)extend insets:(UIEdgeInsets)insets;
- (void)didMoveToWindow;
- (void)sliderDidChangeValue:(id)value;
- (void)volumeController:(id)controller volumeControlAvailableDidChange:(BOOL)change;
- (void)volumeController:(id)controller volumeValueDidChange:(float)change;
@end

@implementation VolumeSlider

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_10072720C();
}

- (void)sliderDidChangeValue:(id)value
{
  valueCopy = value;
  selfCopy = self;
  sub_100727400(valueCopy);
}

- (void)volumeController:(id)controller volumeControlAvailableDidChange:(BOOL)change
{
  selfCopy = self;
  sub_100727300(1);
}

- (void)volumeController:(id)controller volumeValueDidChange:(float)change
{
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music12VolumeSlider_slider);
  controllerCopy = controller;
  selfCopy = self;
  if (([v5 isTracking] & 1) == 0)
  {
    sub_100727300(1);
    v7 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5Music12VolumeSlider_volumeChangeHandler);
    if (v7)
    {

      v7(v8);
      sub_100020438(v7);
    }
  }
}

- (UIWindowScene)windowSceneForVolumeDisplay
{
  selfCopy = self;
  window = [(VolumeSlider *)selfCopy window];
  windowScene = [window windowScene];

  return windowScene;
}

- (NSString)volumeAudioCategory
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music12VolumeSlider_volumeController);
  selfCopy = self;
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
  selfCopy = self;
  if ([(VolumeSlider *)selfCopy isHidden])
  {

    return 0;
  }

  else
  {
    [(VolumeSlider *)selfCopy alpha];
    v5 = v4;

    return v5 > 0.0;
  }
}

- (void)_sliderFluidInteractionWillBegin:(id)begin withLocation:(CGPoint)location
{
  beginCopy = begin;
  selfCopy = self;
  sub_1007280C4();
}

- (void)_sliderFluidInteractionWillContinue:(id)continue withLocation:(CGPoint)location
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music12VolumeSlider_volumeChangeHandler);
  if (v4)
  {
    selfCopy = self;
    v6 = sub_100030444(v4);
    v4(v6);

    sub_100020438(v4);
  }
}

- (void)_sliderFluidInteractionWillExtend:(id)extend insets:(UIEdgeInsets)insets
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music12VolumeSlider_volumeChangeHandler);
  if (v4)
  {
    selfCopy = self;
    v6 = sub_100030444(v4);
    v4(v6);

    sub_100020438(v4);
  }
}

- (void)_sliderFluidInteractionWillEnd:(id)end
{
  endCopy = end;
  selfCopy = self;
  sub_100727BBC(endCopy);
}

@end