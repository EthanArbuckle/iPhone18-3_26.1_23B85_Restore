@interface PHEmergencyMediaRequestViewController
- (PHEmergencyMediaRequestViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)requestCancel;
- (void)requestContinue;
@end

@implementation PHEmergencyMediaRequestViewController

- (PHEmergencyMediaRequestViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  sub_10023D968();
}

- (void)requestCancel
{
  selfCopy = self;
  sub_10023DAC8();
}

- (void)requestContinue
{
  selfCopy = self;
  sub_10023DBEC();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_10023DD14();
}

@end