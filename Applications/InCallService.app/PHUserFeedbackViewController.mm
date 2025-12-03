@interface PHUserFeedbackViewController
- (PHUserFeedbackViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation PHUserFeedbackViewController

- (void)viewDidLoad
{
  selfCopy = self;
  UserFeedbackViewController.viewDidLoad()();
}

- (PHUserFeedbackViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  UserFeedbackViewController.init(nibName:bundle:)();
}

@end