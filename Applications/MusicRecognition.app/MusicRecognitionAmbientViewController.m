@interface MusicRecognitionAmbientViewController
- (_TtC16MusicRecognition37MusicRecognitionAmbientViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation MusicRecognitionAmbientViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1000C2094();
}

- (_TtC16MusicRecognition37MusicRecognitionAmbientViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_1000C2D8C(v5, v7, a4);
}

@end