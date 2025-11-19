@interface PHUserFeedbackViewController
- (PHUserFeedbackViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation PHUserFeedbackViewController

- (void)viewDidLoad
{
  v2 = self;
  UserFeedbackViewController.viewDidLoad()();
}

- (PHUserFeedbackViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  UserFeedbackViewController.init(nibName:bundle:)();
}

@end