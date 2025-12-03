@interface PHAudioCallBackgroundGradientViewController
- (PHAudioCallBackgroundGradientViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UIView)backgroundContentView;
- (void)viewDidLoad;
@end

@implementation PHAudioCallBackgroundGradientViewController

- (UIView)backgroundContentView
{
  selfCopy = self;
  v3 = sub_1001E8CC4();

  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  AudioCallBackgroundGradientViewController.viewDidLoad()();
}

- (PHAudioCallBackgroundGradientViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return AudioCallBackgroundGradientViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end