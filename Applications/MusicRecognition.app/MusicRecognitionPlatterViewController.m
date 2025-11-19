@interface MusicRecognitionPlatterViewController
- (_TtC16MusicRecognition37MusicRecognitionPlatterViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)receivedWithSpectralOutput:(id)a3;
- (void)setKeyColor:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3;
@end

@implementation MusicRecognitionPlatterViewController

- (void)setKeyColor:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_keyColor);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicRecognition37MusicRecognitionPlatterViewController_keyColor) = a3;
  v3 = a3;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10000E574();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10000EB68(a3);
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_10000FD04(a3);
  swift_unknownObjectRelease();
}

- (_TtC16MusicRecognition37MusicRecognitionPlatterViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100010008(v5, v7, a4);
}

- (void)receivedWithSpectralOutput:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_100010518(v4);
}

@end