@interface PHEmergencyMediaRequestViewController
- (PHEmergencyMediaRequestViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)requestCancel;
- (void)requestContinue;
@end

@implementation PHEmergencyMediaRequestViewController

- (PHEmergencyMediaRequestViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  sub_10023D968();
}

- (void)requestCancel
{
  v2 = self;
  sub_10023DAC8();
}

- (void)requestContinue
{
  v2 = self;
  sub_10023DBEC();
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10023DD14();
}

@end