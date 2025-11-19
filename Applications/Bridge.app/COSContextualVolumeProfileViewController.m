@interface COSContextualVolumeProfileViewController
- (COSContextualVolumeProfileViewController)initWithCoder:(id)a3;
- (COSContextualVolumeProfileViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (NSNumber)userProfile;
- (id)specifiers;
- (void)dealloc;
- (void)setUserProfile:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation COSContextualVolumeProfileViewController

- (COSContextualVolumeProfileViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100154888(v5, v7, a4);
}

- (COSContextualVolumeProfileViewController)initWithCoder:(id)a3
{
  *&self->BPSListController_opaque[OBJC_IVAR___COSContextualVolumeProfileViewController____lazy_storage___controller] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)dealloc
{
  v2 = self;
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, v2);

  v4.receiver = v2;
  v4.super_class = type metadata accessor for ContextualVolumeProfileViewController();
  [(COSContextualVolumeProfileViewController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100154B34(a3);
}

- (id)specifiers
{
  v2 = self;
  sub_10015507C();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSNumber)userProfile
{
  v2 = self;
  v3 = sub_10015587C();
  (*((swift_isaMask & *v3) + 0x90))();

  v4 = [objc_allocWithZone(NSNumber) initWithInteger:ConsiderateVolumeProfile.rawValue.getter()];

  return v4;
}

- (void)setUserProfile:(id)a3
{
  v4 = a3;
  v9 = self;
  [v4 integerValue];
  v5 = ConsiderateVolumeProfile.init(rawValue:)();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    v8 = sub_10015587C();
    (*((swift_isaMask & *v8) + 0x98))(v7);
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_1001559D4(v10);

  (*(v7 + 8))(v9, v6);
}

@end