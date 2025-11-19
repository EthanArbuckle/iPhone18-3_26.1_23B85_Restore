@interface PHAudioCallBackgroundGradientViewController
- (PHAudioCallBackgroundGradientViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIView)backgroundContentView;
- (void)viewDidLoad;
@end

@implementation PHAudioCallBackgroundGradientViewController

- (UIView)backgroundContentView
{
  v2 = self;
  v3 = sub_1001E8CC4();

  return v3;
}

- (void)viewDidLoad
{
  v2 = self;
  AudioCallBackgroundGradientViewController.viewDidLoad()();
}

- (PHAudioCallBackgroundGradientViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return AudioCallBackgroundGradientViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end