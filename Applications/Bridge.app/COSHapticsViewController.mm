@interface COSHapticsViewController
- (COSHapticsViewController)initWithCoder:(id)coder;
- (COSHapticsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)loadSpecifiersFromPlistName:(id)name target:(id)target;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)volumeControllerDidUpdateHapticState:(id)state;
@end

@implementation COSHapticsViewController

- (COSHapticsViewController)initWithNibName:(id)name bundle:(id)bundle
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
  sub_10013E6A4(v5, v7, bundle);
  return result;
}

- (COSHapticsViewController)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR___COSHapticsViewController_hapticStateSpecifierIdentifierMap;
  *&self->BPSListController_opaque[v3] = sub_10013F624(&off_10026D2D8);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)loadSpecifiersFromPlistName:(id)name target:(id)target
{
  if (target)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    selfCopy2 = self;
  }

  v7 = String._bridgeToObjectiveC()();
  v10.receiver = self;
  v10.super_class = type metadata accessor for HapticsViewController();
  v8 = [(COSHapticsViewController *)&v10 loadSpecifiersFromPlistName:v7 target:self];

  sub_10013F864(v11);

  return v8;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10013E9BC(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HapticsViewController();
  v4 = v5.receiver;
  [(COSHapticsViewController *)&v5 viewWillDisappear:disappearCopy];
  [*&v4[OBJC_IVAR___COSHapticsViewController_volumeController] endObservingHaptics];
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
  sub_10013EF9C(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)volumeControllerDidUpdateHapticState:(id)state
{
  selfCopy = self;
  sub_10013F234();
}

@end