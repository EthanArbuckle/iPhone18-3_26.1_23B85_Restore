@interface COSWaitForActivationController
+ (BOOL)controllerNeedsToRun;
- (id)localizedWaitScreenDescription;
- (void)didEstablishHold;
- (void)finishedActivating;
@end

@implementation COSWaitForActivationController

+ (BOOL)controllerNeedsToRun
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 isActivated];

  return v3 ^ 1;
}

- (void)didEstablishHold
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = PBBridgeGizmoDidFinishActivatingNotification;
  [v3 addObserver:self selector:"finishedActivating" name:PBBridgeGizmoDidFinishActivatingNotification object:0];

  v5 = +[UIApplication sharedApplication];
  v6 = [v5 isActivated];

  if (v6)
  {
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self name:v4 object:0];

    v10 = [(COSWaitForActivationController *)self delegate];
    [v10 buddyControllerReleaseHoldAndSkip:self];
  }

  else
  {
    v10 = +[UIApplication sharedApplication];
    v8 = [v10 setupController];
    v9 = [v8 activationManager];
    [v9 setAwaitingActivation:1];
  }
}

- (void)finishedActivating
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:PBBridgeGizmoDidFinishActivatingNotification object:0];

  v4 = [(COSWaitForActivationController *)self delegate];
  v5 = [v4 buddyControllerIsBeingHeldOff:self];

  if (v5)
  {
    v6 = [(COSWaitForActivationController *)self delegate];
    [v6 buddyControllerReleaseHoldAndSkip:self];
  }
}

- (id)localizedWaitScreenDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"ACTIVATION_DESCRIPTION" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

@end