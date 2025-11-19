@interface ChargingNetworkPickerViewController
+ (NSString)reuseIdentifier;
- (_TtC4Maps35ChargingNetworkPickerViewController)initWithExcludedNetworks:(id)a3 delegate:(id)a4;
- (_TtP4Maps43ChargingNetworkPickerViewControllerDelegate_)delegate;
- (void)didSelectNetwork:(id)a3 isSuggested:(BOOL)a4;
- (void)reloadData;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)viewDidLoad;
@end

@implementation ChargingNetworkPickerViewController

- (_TtP4Maps43ChargingNetworkPickerViewControllerDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (NSString)reuseIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC4Maps35ChargingNetworkPickerViewController)initWithExcludedNetworks:(id)a3 delegate:(id)a4
{
  v4 = a3;
  if (a3)
  {
    sub_100014C84(0, &unk_101917480);
    sub_10029BDD8();
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  swift_unknownObjectRetain();
  return sub_100524044(v4);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100524348();
}

- (void)didSelectNetwork:(id)a3 isSuggested:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_100524A30(v6, a4);
}

- (void)reloadData
{
  v2 = self;
  if ([(ChargingNetworkPickerViewController *)v2 isViewLoaded])
  {
    [*(v2 + OBJC_IVAR____TtC4Maps35ChargingNetworkPickerViewController_tableView) reloadData];
  }
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = a3;
  v5 = self;
  [v4 resignFirstResponder];
  [(ChargingNetworkPickerViewController *)v5 dismissViewControllerAnimated:1 completion:0];
}

@end