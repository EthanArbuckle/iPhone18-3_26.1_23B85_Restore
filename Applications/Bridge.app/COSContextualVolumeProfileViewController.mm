@interface COSContextualVolumeProfileViewController
- (COSContextualVolumeProfileViewController)initWithCoder:(id)coder;
- (COSContextualVolumeProfileViewController)initWithNibName:(id)name bundle:(id)bundle;
- (NSNumber)userProfile;
- (id)specifiers;
- (void)dealloc;
- (void)setUserProfile:(id)profile;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation COSContextualVolumeProfileViewController

- (COSContextualVolumeProfileViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100154888(v5, v7, bundle);
}

- (COSContextualVolumeProfileViewController)initWithCoder:(id)coder
{
  *&self->BPSListController_opaque[OBJC_IVAR___COSContextualVolumeProfileViewController____lazy_storage___controller] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, selfCopy);

  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for ContextualVolumeProfileViewController();
  [(COSContextualVolumeProfileViewController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100154B34(appear);
}

- (id)specifiers
{
  selfCopy = self;
  sub_10015507C();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSNumber)userProfile
{
  selfCopy = self;
  v3 = sub_10015587C();
  (*((swift_isaMask & *v3) + 0x90))();

  v4 = [objc_allocWithZone(NSNumber) initWithInteger:ConsiderateVolumeProfile.rawValue.getter()];

  return v4;
}

- (void)setUserProfile:(id)profile
{
  profileCopy = profile;
  selfCopy = self;
  [profileCopy integerValue];
  v5 = ConsiderateVolumeProfile.init(rawValue:)();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    v8 = sub_10015587C();
    (*((swift_isaMask & *v8) + 0x98))(v7);
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_1001559D4(viewCopy);

  (*(v7 + 8))(v9, v6);
}

@end