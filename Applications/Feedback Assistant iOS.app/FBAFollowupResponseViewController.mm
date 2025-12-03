@interface FBAFollowupResponseViewController
- (BOOL)isReadyForDropSessionFromController:(id)controller tableView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (_TtC18Feedback_Assistant33FBAFollowupResponseViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (void)attachmentsAlert:(id)alert needsDeviceDiagnosticsController:(id)controller;
- (void)attachmentsAlertDidSelectOption:(id)option;
- (void)awakeFromNib;
- (void)beginSubmission;
- (void)cancelAndDismissFollowupResponseController;
- (void)dealloc;
- (void)deviceDiagnosticsController:(id)controller didChangeState:(int64_t)state;
- (void)deviceDiagnosticsController:(id)controller didFailToAttach:(id)attach toDevice:(id)device error:(id)error;
- (void)deviceDiagnosticsController:(id)controller didFailToConnectToDevice:(id)device;
- (void)deviceDiagnosticsController:(id)controller didUpdateAttachment:(id)attachment onDevice:(id)device;
- (void)deviceDiagnosticsController:(id)controller didUpdateDevice:(id)device;
- (void)deviceDiagnosticsController:(id)controller needsSelectionFromDevices:(id)devices completion:(id)completion;
- (void)deviceDiagnosticsController:(void *)controller didRemoveDevice:;
- (void)keyboardWillHideWithNotification:(id)notification;
- (void)keyboardWillShowWithNotification:(id)notification;
- (void)prepareForSegue:(id)segue sender:(id)sender;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)setContentItem:(id)item;
- (void)setFollowup:(id)followup;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)userDidCancel;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation FBAFollowupResponseViewController

- (void)setFollowup:(id)followup
{
  followupCopy = followup;
  selfCopy = self;
  sub_10005D090(followup);
}

- (void)setContentItem:(id)item
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem) = item;
  itemCopy = item;
}

- (void)awakeFromNib
{
  selfCopy = self;
  sub_10005D634();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10005D740();
}

- (void)dealloc
{
  selfCopy = self;
  static os_log_type_t.info.getter();
  v3 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log);
  os_log(_:dso:log:_:_:)();
  defaultCenter = [objc_opt_self() defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for FBAFollowupResponseViewController();
  [(FBAFollowupResponseViewController *)&v5 dealloc];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = type metadata accessor for FBAFollowupResponseViewController();
  swift_unknownObjectRetain();
  v7 = v10.receiver;
  [(FBAFollowupResponseViewController *)&v10 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  tableView = [v7 tableView];
  if (tableView)
  {
    v9 = tableView;
    [tableView setContentOffset:0 animated:{0.0, -300.0}];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

- (void)prepareForSegue:(id)segue sender:(id)sender
{
  if (sender)
  {
    segueCopy = segue;
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    segueCopy2 = segue;
    selfCopy2 = self;
  }

  sub_10005DD18(segue);

  sub_1000454C8(v10, &unk_10010A0E0, qword_1000C3700);
}

- (void)beginSubmission
{
  selfCopy = self;
  sub_10005E0C0();
}

- (void)userDidCancel
{
  selfCopy = self;
  sub_10005F8DC();
}

- (void)cancelAndDismissFollowupResponseController
{
  selfCopy = self;
  sub_10005FB8C();
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_100067768();

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10006787C();

  (*(v7 + 8))(v10, v6);
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v8, v4);
  return UITableViewAutomaticDimension;
}

- (void)keyboardWillShowWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  static os_log_type_t.debug.getter();
  v5 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log);
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000C29F0;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100047484();
  *(v6 + 32) = 0xD00000000000001FLL;
  *(v6 + 40) = 0x80000001000CC8B0;
  os_log(_:dso:log:_:_:)();

  NSNotification.keyboardAttributes.getter(v9);
  v7 = v10;

  *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_keyboardHeight) = v7;
}

- (void)keyboardWillHideWithNotification:(id)notification
{
  selfCopy = self;
  static os_log_type_t.debug.getter();
  v4 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log);
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000C29F0;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100047484();
  *(v5 + 32) = 0xD00000000000001FLL;
  *(v5 + 40) = 0x80000001000CC890;
  os_log(_:dso:log:_:_:)();
}

- (_TtC18Feedback_Assistant33FBAFollowupResponseViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_100064D18(v5, v7, bundle);
}

- (void)deviceDiagnosticsController:(id)controller didFailToAttach:(id)attach toDevice:(id)device error:(id)error
{
  type metadata accessor for FBAAddAttachmentsController();
  controllerCopy = controller;
  attachCopy = attach;
  errorCopy = error;
  selfCopy = self;
  sub_100050218(attachCopy, selfCopy, controllerCopy, errorCopy);
}

- (void)deviceDiagnosticsController:(id)controller needsSelectionFromDevices:(id)devices completion:(id)completion
{
  v7 = _Block_copy(completion);
  sub_1000497E4(0, &qword_1001098C8, FBKGroupedDevice_ptr);
  sub_10005327C();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  controllerCopy = controller;
  selfCopy = self;
  sub_1000681EC(v8, sub_1000689BC, v9);
}

- (void)deviceDiagnosticsController:(void *)controller didRemoveDevice:
{
  controllerCopy = controller;
  sub_10005CDE4();
  sub_10006256C(1, 0, 0, 0, 0, 0);
}

- (void)deviceDiagnosticsController:(id)controller didFailToConnectToDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  sub_10004BFF0(selfCopy);
}

- (void)deviceDiagnosticsController:(id)controller didUpdateDevice:(id)device
{
  selfCopy = self;
  sub_10005CDE4();
  sub_10006256C(0, 0, 0, 0, 0, 0);
}

- (void)deviceDiagnosticsController:(id)controller didUpdateAttachment:(id)attachment onDevice:(id)device
{
  selfCopy = self;
  sub_10005CDE4();
  sub_10006256C(0, 0, 0, 0, 0, 0);
}

- (void)deviceDiagnosticsController:(id)controller didChangeState:(int64_t)state
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1000655D8(controllerCopy, state);
}

- (BOOL)isReadyForDropSessionFromController:(id)controller tableView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  v8 = sub_100041AA0(&qword_100109880, &qword_1000C2C98);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - v10;
  if (path)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for IndexPath();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for IndexPath();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  selfCopy = self;
  sub_1000454C8(v11, &qword_100109880, &qword_1000C2C98);
  v15 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState);

  return v15 != 5;
}

- (void)attachmentsAlert:(id)alert needsDeviceDiagnosticsController:(id)controller
{
  v6 = _Block_copy(controller);
  _Block_copy(v6);
  alertCopy = alert;
  selfCopy = self;
  sub_100068320(selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)attachmentsAlertDidSelectOption:(id)option
{
  optionCopy = option;
  selfCopy = self;
  sub_10006874C();
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_100068824();
}

@end