@interface FeedbackRemoteViewController
- (_TtC18FeedbackRemoteView28FeedbackRemoteViewController)initWithCoder:(id)a3;
- (_TtC18FeedbackRemoteView28FeedbackRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)didInvalidateForRemoteAlert;
- (void)feedbackDraftViewController:(id)a3 didCompleteWithFeedbackID:(id)a4;
- (void)feedbackDraftViewController:(id)a3 didFailToAttachURL:(id)a4 error:(int64_t)a5;
- (void)feedbackDraftViewController:(id)a3 didFailToStartWithError:(int64_t)a4;
- (void)feedbackDraftViewController:(id)a3 didFailToSubmitFeedback:(id)a4;
- (void)feedbackDraftViewControllerDidCancel:(id)a3;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FeedbackRemoteViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1000018A8(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100001BAC(a3);
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_100006860;
  }

  v7 = a3;
  v8 = self;
  sub_1000054A8(v6);
  sub_100006434(v6);
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_10000647C;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  sub_100002674(a3, v6, v7);
  sub_100006434(v6);
}

- (_TtC18FeedbackRemoteView28FeedbackRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_state] = 0xF000000000000007;
    *&self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_feedbackd] = 0;
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *&self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_state] = 0xF000000000000007;
    *&self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_feedbackd] = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for FeedbackRemoteViewController();
  v9 = [(FeedbackRemoteViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC18FeedbackRemoteView28FeedbackRemoteViewController)initWithCoder:(id)a3
{
  *&self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_state] = 0xF000000000000007;
  *&self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC18FeedbackRemoteView28FeedbackRemoteViewController_feedbackd] = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FeedbackRemoteViewController();
  v4 = a3;
  v5 = [(FeedbackRemoteViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (void)feedbackDraftViewController:(id)a3 didCompleteWithFeedbackID:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_100005600(v6, v8);
}

- (void)feedbackDraftViewController:(id)a3 didFailToStartWithError:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_100005764();
}

- (void)feedbackDraftViewController:(id)a3 didFailToAttachURL:(id)a4 error:(int64_t)a5
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000058C4(v9);
  (*(v6 + 8))(v9, v5);
}

- (void)feedbackDraftViewControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100005B78();
}

- (void)feedbackDraftViewController:(id)a3 didFailToSubmitFeedback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100005C64(v7);
}

- (void)didInvalidateForRemoteAlert
{
  if (qword_100011490 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000622C(v0, qword_100011498);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_100004AD4(0xD00000000000001DLL, 0x8000000100008120, &v9);
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s", v3, 0xCu);
    sub_1000062AC(v4);
  }

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Terminating self", v7, 2u);
  }

  v8 = [objc_opt_self() sharedApplication];
  [v8 terminateWithSuccess];
}

@end