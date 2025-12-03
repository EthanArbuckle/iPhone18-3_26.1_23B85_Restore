@interface ICCollaborationButtonsController
- (ICCloudSyncingObject)cloudObject;
- (ICCollaborationButtonsController)init;
- (NSArray)activeParticipants;
- (NSArray)activityDigestSummaryParticipants;
- (UIBarButtonItem)buttonItem;
- (id)didPressManageShareButton;
- (void)dealloc;
- (void)hideContactCard;
- (void)setActiveParticipants:(id)participants;
- (void)setActivityStreamWithVisible:(BOOL)visible;
- (void)setAttributionSidebarWithVisible:(BOOL)visible;
- (void)setButtonItem:(id)item;
- (void)setCloudObject:(id)object;
- (void)setDidPressManageShareButton:(id)button;
- (void)setShowsCollaboratorCursorsWithVisible:(BOOL)visible;
- (void)showAccountDeviceToDeviceEncryptionAlert;
- (void)showContactCardFor:(id)for from:(id)from;
- (void)showEnableKeychainAlert;
- (void)showRecentUpdates;
- (void)showSelectionFor:(id)for;
- (void)showShare;
- (void)updateState;
@end

@implementation ICCollaborationButtonsController

- (void)setDidPressManageShareButton:(id)button
{
  v4 = _Block_copy(button);
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
  selfCopy = self;
  sub_10000C840(v8);
}

- (ICCloudSyncingObject)cloudObject
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.getter();

  return v5;
}

- (void)setCloudObject:(id)object
{
  swift_getKeyPath();
  swift_getKeyPath();
  objectCopy = object;
  selfCopy = self;
  v7 = objectCopy;
  static Published.subscript.setter();
  sub_10039C704();
}

- (NSArray)activeParticipants
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.getter();

  sub_1000054A4(0, &qword_1006C5F80);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (void)setActiveParticipants:(id)participants
{
  sub_1000054A4(0, &qword_1006C5F80);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.setter();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  sub_10039D018();
  *(selfCopy + OBJC_IVAR___ICCollaborationButtonsController_collaboratorDataSourceObservation) = 0;

  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(ICCollaborationButtonsController *)&v5 dealloc];
}

- (UIBarButtonItem)buttonItem
{
  selfCopy = self;
  v3 = sub_10039E01C();

  return v3;
}

- (void)setButtonItem:(id)item
{
  v4 = *(self + OBJC_IVAR___ICCollaborationButtonsController____lazy_storage___buttonItem);
  *(self + OBJC_IVAR___ICCollaborationButtonsController____lazy_storage___buttonItem) = item;
  itemCopy = item;
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
  selfCopy = self;
  sub_10039E438();
}

- (NSArray)activityDigestSummaryParticipants
{
  selfCopy = self;
  sub_10039E8F8();

  sub_1000054A4(0, &qword_1006C5F80);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)showRecentUpdates
{
  selfCopy = self;
  sub_10039EC3C();
}

- (void)showAccountDeviceToDeviceEncryptionAlert
{
  selfCopy = self;
  sub_10039F2FC();
}

- (void)showEnableKeychainAlert
{
  selfCopy = self;
  sub_1003A08AC(&unk_10065A1D8, sub_1003A11AC, &unk_10065A1F0);
}

- (void)showSelectionFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_10039FFB8(forCopy);
}

- (void)showContactCardFor:(id)for from:(id)from
{
  forCopy = for;
  fromCopy = from;
  selfCopy = self;
  sub_1003A0EDC(forCopy);
}

- (void)hideContactCard
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  selfCopy = self;
  activeEditorController = [Strong activeEditorController];

  presentedViewController = [activeEditorController presentedViewController];
  if (presentedViewController)
  {
    [presentedViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)setShowsCollaboratorCursorsWithVisible:(BOOL)visible
{
  selfCopy = self;
  sub_10039DE14(visible);
}

- (void)setActivityStreamWithVisible:(BOOL)visible
{
  selfCopy = self;
  sub_1003A03C8(visible);
}

- (void)setAttributionSidebarWithVisible:(BOOL)visible
{
  selfCopy = self;
  sub_1003A063C(visible);
}

- (void)showShare
{
  selfCopy = self;
  sub_1003A08AC(&unk_10065A070, sub_1003A0D3C, &unk_10065A088);
}

@end