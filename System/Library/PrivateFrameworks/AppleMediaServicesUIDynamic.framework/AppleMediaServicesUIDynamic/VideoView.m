@interface VideoView
- (AVPlayerViewController)accessibilityPlayerViewController;
- (BOOL)accessibilityIsPlaying;
- (CGRect)frame;
- (UIColor)backgroundColor;
- (_TtC27AppleMediaServicesUIDynamic10PlayButton)accessibilityPlayButton;
- (void)didChangeAutoPlayVideoSetting;
- (void)handleMediaServicesReset;
- (void)layoutSubviews;
- (void)playerViewController:(id)a3 willBeginFullScreenPresentationWithAnimationCoordinator:(id)a4;
- (void)setBackgroundColor:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)updateAudioSessionCategoryWithIsAudioOn:(BOOL)a3;
@end

@implementation VideoView

- (UIColor)backgroundColor
{
  v2 = self;
  v3 = VideoView.backgroundColor.getter();

  return v3;
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = self;
  VideoView.backgroundColor.setter(a3);
}

- (CGRect)frame
{
  v2 = self;
  VideoView.frame.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  v3 = self;
  VideoView.frame.setter();
}

- (void)didChangeAutoPlayVideoSetting
{
  v2 = self;
  sub_1CA18E6D4();
}

- (void)layoutSubviews
{
  v2 = self;
  VideoView.layoutSubviews()();
}

- (void)updateAudioSessionCategoryWithIsAudioOn:(BOOL)a3
{
  v3 = self;
  sub_1CA18F8A8();
}

- (void)handleMediaServicesReset
{
  v2 = self;
  sub_1CA190E68();
}

- (void)playerViewController:(id)a3 willBeginFullScreenPresentationWithAnimationCoordinator:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  VideoView.playerViewController(_:willBeginFullScreenPresentationWithAnimationCoordinator:)();

  swift_unknownObjectRelease();
}

- (AVPlayerViewController)accessibilityPlayerViewController
{
  v2 = sub_1CA191088();

  return v2;
}

- (_TtC27AppleMediaServicesUIDynamic10PlayButton)accessibilityPlayButton
{
  v2 = sub_1CA1910EC();

  return v2;
}

- (BOOL)accessibilityIsPlaying
{
  v2 = self;
  v3 = j___s27AppleMediaServicesUIDynamic9VideoViewC9isPlayingSbvg();

  return v3 & 1;
}

@end