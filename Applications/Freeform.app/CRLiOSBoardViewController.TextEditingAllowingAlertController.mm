@interface CRLiOSBoardViewController.TextEditingAllowingAlertController
- (_TtCC8Freeform25CRLiOSBoardViewController34TextEditingAllowingAlertController)initWithCoder:(id)coder;
- (_TtCC8Freeform25CRLiOSBoardViewController34TextEditingAllowingAlertController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation CRLiOSBoardViewController.TextEditingAllowingAlertController

- (_TtCC8Freeform25CRLiOSBoardViewController34TextEditingAllowingAlertController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = _s34TextEditingAllowingAlertControllerCMa();
  v9 = [(CRLiOSBoardViewController.TextEditingAllowingAlertController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtCC8Freeform25CRLiOSBoardViewController34TextEditingAllowingAlertController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _s34TextEditingAllowingAlertControllerCMa();
  coderCopy = coder;
  v5 = [(CRLiOSBoardViewController.TextEditingAllowingAlertController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end