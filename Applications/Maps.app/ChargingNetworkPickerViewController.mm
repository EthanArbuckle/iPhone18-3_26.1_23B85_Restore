@interface ChargingNetworkPickerViewController
+ (NSString)reuseIdentifier;
- (_TtC4Maps35ChargingNetworkPickerViewController)initWithExcludedNetworks:(id)networks delegate:(id)delegate;
- (_TtP4Maps43ChargingNetworkPickerViewControllerDelegate_)delegate;
- (void)didSelectNetwork:(id)network isSuggested:(BOOL)suggested;
- (void)reloadData;
- (void)searchBarCancelButtonClicked:(id)clicked;
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

- (_TtC4Maps35ChargingNetworkPickerViewController)initWithExcludedNetworks:(id)networks delegate:(id)delegate
{
  networksCopy = networks;
  if (networks)
  {
    sub_100014C84(0, &unk_101917480);
    sub_10029BDD8();
    networksCopy = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  swift_unknownObjectRetain();
  return sub_100524044(networksCopy);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100524348();
}

- (void)didSelectNetwork:(id)network isSuggested:(BOOL)suggested
{
  networkCopy = network;
  selfCopy = self;
  sub_100524A30(networkCopy, suggested);
}

- (void)reloadData
{
  selfCopy = self;
  if ([(ChargingNetworkPickerViewController *)selfCopy isViewLoaded])
  {
    [*(selfCopy + OBJC_IVAR____TtC4Maps35ChargingNetworkPickerViewController_tableView) reloadData];
  }
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  [clickedCopy resignFirstResponder];
  [(ChargingNetworkPickerViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
}

@end