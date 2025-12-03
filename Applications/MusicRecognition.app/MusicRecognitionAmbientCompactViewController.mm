@interface MusicRecognitionAmbientCompactViewController
- (_TtC16MusicRecognition44MusicRecognitionAmbientCompactViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation MusicRecognitionAmbientCompactViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100088908();
}

- (_TtC16MusicRecognition44MusicRecognitionAmbientCompactViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_10008943C(v5, v7, bundle);
}

@end