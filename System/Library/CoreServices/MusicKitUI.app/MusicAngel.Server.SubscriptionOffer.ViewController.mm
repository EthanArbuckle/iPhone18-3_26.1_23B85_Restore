@interface MusicAngel.Server.SubscriptionOffer.ViewController
- (BOOL)dynamicViewControllerShouldDismiss:(id)dismiss;
- (_TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer14ViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)dynamicViewController:(id)controller contentViewWithDictionary:(id)dictionary frame:(CGRect)frame;
- (void)dynamicViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error;
- (void)viewDidLoad;
@end

@implementation MusicAngel.Server.SubscriptionOffer.ViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100005CC8();
}

- (_TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer14ViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  sub_1000070EC();
}

- (BOOL)dynamicViewControllerShouldDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_1000071E8();

  return 0;
}

- (id)dynamicViewController:(id)controller contentViewWithDictionary:(id)dictionary frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  v13 = sub_100007264(x, y, width, height);

  return v13;
}

- (void)dynamicViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  sub_100007398(errorCopy, result, error);
}

@end