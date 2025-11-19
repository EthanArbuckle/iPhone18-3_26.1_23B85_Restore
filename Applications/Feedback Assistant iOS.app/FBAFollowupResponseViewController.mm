@interface FBAFollowupResponseViewController
- (BOOL)isReadyForDropSessionFromController:(id)a3 tableView:(id)a4 dropSessionDidUpdate:(id)a5 withDestinationIndexPath:(id)a6;
- (_TtC18Feedback_Assistant33FBAFollowupResponseViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (void)attachmentsAlert:(id)a3 needsDeviceDiagnosticsController:(id)a4;
- (void)attachmentsAlertDidSelectOption:(id)a3;
- (void)awakeFromNib;
- (void)beginSubmission;
- (void)cancelAndDismissFollowupResponseController;
- (void)dealloc;
- (void)deviceDiagnosticsController:(id)a3 didChangeState:(int64_t)a4;
- (void)deviceDiagnosticsController:(id)a3 didFailToAttach:(id)a4 toDevice:(id)a5 error:(id)a6;
- (void)deviceDiagnosticsController:(id)a3 didFailToConnectToDevice:(id)a4;
- (void)deviceDiagnosticsController:(id)a3 didUpdateAttachment:(id)a4 onDevice:(id)a5;
- (void)deviceDiagnosticsController:(id)a3 didUpdateDevice:(id)a4;
- (void)deviceDiagnosticsController:(id)a3 needsSelectionFromDevices:(id)a4 completion:(id)a5;
- (void)deviceDiagnosticsController:(void *)a1 didRemoveDevice:;
- (void)keyboardWillHideWithNotification:(id)a3;
- (void)keyboardWillShowWithNotification:(id)a3;
- (void)prepareForSegue:(id)a3 sender:(id)a4;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)setContentItem:(id)a3;
- (void)setFollowup:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)userDidCancel;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation FBAFollowupResponseViewController

- (void)setFollowup:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10005D090(a3);
}

- (void)setContentItem:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem) = a3;
  v3 = a3;
}

- (void)awakeFromNib
{
  v2 = self;
  sub_10005D634();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10005D740();
}

- (void)dealloc
{
  v2 = self;
  static os_log_type_t.info.getter();
  v3 = *(&v2->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log);
  os_log(_:dso:log:_:_:)();
  v4 = [objc_opt_self() defaultCenter];
  [v4 removeObserver:v2];

  v5.receiver = v2;
  v5.super_class = type metadata accessor for FBAFollowupResponseViewController();
  [(FBAFollowupResponseViewController *)&v5 dealloc];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = type metadata accessor for FBAFollowupResponseViewController();
  swift_unknownObjectRetain();
  v7 = v10.receiver;
  [(FBAFollowupResponseViewController *)&v10 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  v8 = [v7 tableView];
  if (v8)
  {
    v9 = v8;
    [v8 setContentOffset:0 animated:{0.0, -300.0}];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

- (void)prepareForSegue:(id)a3 sender:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a3;
    v9 = self;
  }

  sub_10005DD18(a3);

  sub_1000454C8(v10, &unk_10010A0E0, qword_1000C3700);
}

- (void)beginSubmission
{
  v2 = self;
  sub_10005E0C0();
}

- (void)userDidCancel
{
  v2 = self;
  sub_10005F8DC();
}

- (void)cancelAndDismissFollowupResponseController
{
  v2 = self;
  sub_10005FB8C();
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  v13 = sub_100067768();

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  sub_10006787C();

  (*(v7 + 8))(v10, v6);
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
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

- (void)keyboardWillShowWithNotification:(id)a3
{
  v4 = a3;
  v8 = self;
  static os_log_type_t.debug.getter();
  v5 = *(&v8->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log);
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

  *(&v8->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_keyboardHeight) = v7;
}

- (void)keyboardWillHideWithNotification:(id)a3
{
  v3 = self;
  static os_log_type_t.debug.getter();
  v4 = *(&v3->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log);
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000C29F0;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100047484();
  *(v5 + 32) = 0xD00000000000001FLL;
  *(v5 + 40) = 0x80000001000CC890;
  os_log(_:dso:log:_:_:)();
}

- (_TtC18Feedback_Assistant33FBAFollowupResponseViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_100064D18(v5, v7, a4);
}

- (void)deviceDiagnosticsController:(id)a3 didFailToAttach:(id)a4 toDevice:(id)a5 error:(id)a6
{
  type metadata accessor for FBAAddAttachmentsController();
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = self;
  sub_100050218(v11, v13, v10, v12);
}

- (void)deviceDiagnosticsController:(id)a3 needsSelectionFromDevices:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  sub_1000497E4(0, &qword_1001098C8, FBKGroupedDevice_ptr);
  sub_10005327C();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a3;
  v11 = self;
  sub_1000681EC(v8, sub_1000689BC, v9);
}

- (void)deviceDiagnosticsController:(void *)a1 didRemoveDevice:
{
  v1 = a1;
  sub_10005CDE4();
  sub_10006256C(1, 0, 0, 0, 0, 0);
}

- (void)deviceDiagnosticsController:(id)a3 didFailToConnectToDevice:(id)a4
{
  v5 = a4;
  v6 = self;
  sub_10004BFF0(v6);
}

- (void)deviceDiagnosticsController:(id)a3 didUpdateDevice:(id)a4
{
  v4 = self;
  sub_10005CDE4();
  sub_10006256C(0, 0, 0, 0, 0, 0);
}

- (void)deviceDiagnosticsController:(id)a3 didUpdateAttachment:(id)a4 onDevice:(id)a5
{
  v5 = self;
  sub_10005CDE4();
  sub_10006256C(0, 0, 0, 0, 0, 0);
}

- (void)deviceDiagnosticsController:(id)a3 didChangeState:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1000655D8(v6, a4);
}

- (BOOL)isReadyForDropSessionFromController:(id)a3 tableView:(id)a4 dropSessionDidUpdate:(id)a5 withDestinationIndexPath:(id)a6
{
  v8 = sub_100041AA0(&qword_100109880, &qword_1000C2C98);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - v10;
  if (a6)
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

  v14 = self;
  sub_1000454C8(v11, &qword_100109880, &qword_1000C2C98);
  v15 = *(&v14->super.super.super.super.isa + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState);

  return v15 != 5;
}

- (void)attachmentsAlert:(id)a3 needsDeviceDiagnosticsController:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_100068320(v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)attachmentsAlertDidSelectOption:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10006874C();
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100068824();
}

@end