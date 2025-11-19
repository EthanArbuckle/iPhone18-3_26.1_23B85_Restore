@interface COSHapticsViewController
- (COSHapticsViewController)initWithCoder:(id)a3;
- (COSHapticsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)loadSpecifiersFromPlistName:(id)a3 target:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)volumeControllerDidUpdateHapticState:(id)a3;
@end

@implementation COSHapticsViewController

- (COSHapticsViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  sub_10013E6A4(v5, v7, a4);
  return result;
}

- (COSHapticsViewController)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR___COSHapticsViewController_hapticStateSpecifierIdentifierMap;
  *&self->BPSListController_opaque[v3] = sub_10013F624(&off_10026D2D8);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)loadSpecifiersFromPlistName:(id)a3 target:(id)a4
{
  if (a4)
  {
    v5 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v6 = self;
  }

  v7 = String._bridgeToObjectiveC()();
  v10.receiver = self;
  v10.super_class = type metadata accessor for HapticsViewController();
  v8 = [(COSHapticsViewController *)&v10 loadSpecifiersFromPlistName:v7 target:self];

  sub_10013F864(v11);

  return v8;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10013E9BC(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HapticsViewController();
  v4 = v5.receiver;
  [(COSHapticsViewController *)&v5 viewWillDisappear:v3];
  [*&v4[OBJC_IVAR___COSHapticsViewController_volumeController] endObservingHaptics];
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
  sub_10013EF9C(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)volumeControllerDidUpdateHapticState:(id)a3
{
  v3 = self;
  sub_10013F234();
}

@end