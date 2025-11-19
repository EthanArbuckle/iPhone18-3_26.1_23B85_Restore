@interface ICCollaborationButtonsController
- (ICCloudSyncingObject)cloudObject;
- (ICCollaborationButtonsController)init;
- (NSArray)activeParticipants;
- (NSArray)activityDigestSummaryParticipants;
- (UIBarButtonItem)buttonItem;
- (id)didPressManageShareButton;
- (void)dealloc;
- (void)hideContactCard;
- (void)setActiveParticipants:(id)a3;
- (void)setActivityStreamWithVisible:(BOOL)a3;
- (void)setAttributionSidebarWithVisible:(BOOL)a3;
- (void)setButtonItem:(id)a3;
- (void)setCloudObject:(id)a3;
- (void)setDidPressManageShareButton:(id)a3;
- (void)setShowsCollaboratorCursorsWithVisible:(BOOL)a3;
- (void)showAccountDeviceToDeviceEncryptionAlert;
- (void)showContactCardFor:(id)a3 from:(id)a4;
- (void)showEnableKeychainAlert;
- (void)showRecentUpdates;
- (void)showSelectionFor:(id)a3;
- (void)showShare;
- (void)updateState;
@end

@implementation ICCollaborationButtonsController

- (void)setDidPressManageShareButton:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1001C57CC;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___ICCollaborationButtonsController_didPressManageShareButton);
  v8 = *(self + OBJC_IVAR___ICCollaborationButtonsController_didPressManageShareButton);
  *v7 = v6;
  v7[1] = v4;
  v9 = self;
  sub_10000C840(v8);
}

- (ICCloudSyncingObject)cloudObject
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static Published.subscript.getter();

  return v5;
}

- (void)setCloudObject:(id)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a3;
  v6 = self;
  v7 = v5;
  static Published.subscript.setter();
  sub_10039C704();
}

- (NSArray)activeParticipants
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static Published.subscript.getter();

  sub_1000054A4(0, &qword_1006C5F80);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (void)setActiveParticipants:(id)a3
{
  sub_1000054A4(0, &qword_1006C5F80);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  static Published.subscript.setter();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;
  sub_10039D018();
  *(v4 + OBJC_IVAR___ICCollaborationButtonsController_collaboratorDataSourceObservation) = 0;

  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(ICCollaborationButtonsController *)&v5 dealloc];
}

- (UIBarButtonItem)buttonItem
{
  v2 = self;
  v3 = sub_10039E01C();

  return v3;
}

- (void)setButtonItem:(id)a3
{
  v4 = *(self + OBJC_IVAR___ICCollaborationButtonsController____lazy_storage___buttonItem);
  *(self + OBJC_IVAR___ICCollaborationButtonsController____lazy_storage___buttonItem) = a3;
  v3 = a3;
}

- (id)didPressManageShareButton
{
  if (*(self + OBJC_IVAR___ICCollaborationButtonsController_didPressManageShareButton))
  {
    v2 = *(self + OBJC_IVAR___ICCollaborationButtonsController_didPressManageShareButton + 8);
    v5[4] = *(self + OBJC_IVAR___ICCollaborationButtonsController_didPressManageShareButton);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10028DCE8;
    v5[3] = &unk_10065A3A8;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ICCollaborationButtonsController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateState
{
  v2 = self;
  sub_10039E438();
}

- (NSArray)activityDigestSummaryParticipants
{
  v2 = self;
  sub_10039E8F8();

  sub_1000054A4(0, &qword_1006C5F80);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)showRecentUpdates
{
  v2 = self;
  sub_10039EC3C();
}

- (void)showAccountDeviceToDeviceEncryptionAlert
{
  v2 = self;
  sub_10039F2FC();
}

- (void)showEnableKeychainAlert
{
  v2 = self;
  sub_1003A08AC(&unk_10065A1D8, sub_1003A11AC, &unk_10065A1F0);
}

- (void)showSelectionFor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10039FFB8(v4);
}

- (void)showContactCardFor:(id)a3 from:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1003A0EDC(v6);
}

- (void)hideContactCard
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = self;
  v4 = [Strong activeEditorController];

  v5 = [v4 presentedViewController];
  if (v5)
  {
    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)setShowsCollaboratorCursorsWithVisible:(BOOL)a3
{
  v4 = self;
  sub_10039DE14(a3);
}

- (void)setActivityStreamWithVisible:(BOOL)a3
{
  v4 = self;
  sub_1003A03C8(a3);
}

- (void)setAttributionSidebarWithVisible:(BOOL)a3
{
  v4 = self;
  sub_1003A063C(a3);
}

- (void)showShare
{
  v2 = self;
  sub_1003A08AC(&unk_10065A070, sub_1003A0D3C, &unk_10065A088);
}

@end