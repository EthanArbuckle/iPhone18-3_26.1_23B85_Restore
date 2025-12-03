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
  isActivated = [v2 isActivated];

  return isActivated ^ 1;
}

- (void)didEstablishHold
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = PBBridgeGizmoDidFinishActivatingNotification;
  [v3 addObserver:self selector:"finishedActivating" name:PBBridgeGizmoDidFinishActivatingNotification object:0];

  v5 = +[UIApplication sharedApplication];
  isActivated = [v5 isActivated];

  if (isActivated)
  {
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self name:v4 object:0];

    delegate = [(COSWaitForActivationController *)self delegate];
    [delegate buddyControllerReleaseHoldAndSkip:self];
  }

  else
  {
    delegate = +[UIApplication sharedApplication];
    setupController = [delegate setupController];
    activationManager = [setupController activationManager];
    [activationManager setAwaitingActivation:1];
  }
}

- (void)finishedActivating
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:PBBridgeGizmoDidFinishActivatingNotification object:0];

  delegate = [(COSWaitForActivationController *)self delegate];
  v5 = [delegate buddyControllerIsBeingHeldOff:self];

  if (v5)
  {
    delegate2 = [(COSWaitForActivationController *)self delegate];
    [delegate2 buddyControllerReleaseHoldAndSkip:self];
  }
}

- (id)localizedWaitScreenDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"ACTIVATION_DESCRIPTION" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

@end