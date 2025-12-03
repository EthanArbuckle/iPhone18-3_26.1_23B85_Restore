@interface MusicRecognitionPlatterViewController
- (_TtC16MusicRecognition37MusicRecognitionPlatterViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)receivedWithSpectralOutput:(id)output;
- (void)setKeyColor:(id)color;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator;
@end

@implementation MusicRecognitionPlatterViewController

- (void)setKeyColor:(id)color
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_keyColor);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_keyColor) = color;
  colorCopy = color;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10000E574();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10000EB68(appear);
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10000FD04(coordinator);
  swift_unknownObjectRelease();
}

- (_TtC16MusicRecognition37MusicRecognitionPlatterViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100010008(v5, v7, bundle);
}

- (void)receivedWithSpectralOutput:(id)output
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100010518(v4);
}

@end