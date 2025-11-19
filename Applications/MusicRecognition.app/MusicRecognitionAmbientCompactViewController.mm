@interface MusicRecognitionAmbientCompactViewController
- (_TtC16MusicRecognition44MusicRecognitionAmbientCompactViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation MusicRecognitionAmbientCompactViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100088908();
}

- (_TtC16MusicRecognition44MusicRecognitionAmbientCompactViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_10008943C(v5, v7, a4);
}

@end