@interface MusicAngel.Server.SubscriptionOffer.ViewController
- (BOOL)dynamicViewControllerShouldDismiss:(id)a3;
- (_TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer14ViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)dynamicViewController:(id)a3 contentViewWithDictionary:(id)a4 frame:(CGRect)a5;
- (void)dynamicViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5;
- (void)viewDidLoad;
@end

@implementation MusicAngel.Server.SubscriptionOffer.ViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100005CC8();
}

- (_TtCVCE10MusicKitUIC17_MusicKit_SwiftUI10MusicAngel6Server17SubscriptionOffer14ViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  sub_1000070EC();
}

- (BOOL)dynamicViewControllerShouldDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000071E8();

  return 0;
}

- (id)dynamicViewController:(id)a3 contentViewWithDictionary:(id)a4 frame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  v13 = sub_100007264(x, y, width, height);

  return v13;
}

- (void)dynamicViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_100007398(v11, a4, a5);
}

@end