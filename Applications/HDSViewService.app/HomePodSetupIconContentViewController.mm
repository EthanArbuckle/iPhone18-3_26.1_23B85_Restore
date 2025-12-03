@interface HomePodSetupIconContentViewController
- (void)feedbackDraftViewController:(id)controller didFailToAttachURL:(id)l error:(int64_t)error;
- (void)feedbackDraftViewController:didCompleteWithFeedbackID:;
- (void)feedbackDraftViewController:didFailToStartWithError:;
- (void)feedbackDraftViewController:didFailToSubmitFeedback:;
- (void)feedbackDraftViewControllerDidCancel:;
- (void)genericTermsRemoteUI:(id)i acceptedTermsInfo:(id)info;
- (void)genericTermsRemoteUI:(id)i didFinishWithSuccess:(BOOL)success;
- (void)genericTermsRemoteUI:(id)i failedToLoadTermsWithError:(id)error;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HomePodSetupIconContentViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10003E2A0();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100041150(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100041770(disappear);
}

- (void)feedbackDraftViewController:(id)controller didFailToAttachURL:(id)l error:(int64_t)error
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100045F60();
  (*(v6 + 8))(v9, v5);
}

- (void)genericTermsRemoteUI:(id)i didFinishWithSuccess:(BOOL)success
{
  iCopy = i;
  selfCopy = self;
  sub_1000461F0(success);
}

- (void)genericTermsRemoteUI:(id)i acceptedTermsInfo:(id)info
{
  if (info)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  iCopy = i;
  selfCopy = self;
  sub_1000465B8(v6);
}

- (void)genericTermsRemoteUI:(id)i failedToLoadTermsWithError:(id)error
{
  iCopy = i;
  errorCopy = error;
  selfCopy = self;
  sub_100046980();
}

- (void)feedbackDraftViewController:didCompleteWithFeedbackID:
{
  if (qword_100101610 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100012AAC(v0, qword_100102500);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000B08A0(0xD000000000000039, 0x80000001000C3D70, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000E70C(v3);
  }
}

- (void)feedbackDraftViewController:didFailToStartWithError:
{
  if (qword_100101610 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100012AAC(v0, qword_100102500);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000B08A0(0xD000000000000037, 0x80000001000C3D30, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000E70C(v3);
  }
}

- (void)feedbackDraftViewControllerDidCancel:
{
  if (qword_100101610 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100012AAC(v0, qword_100102500);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000B08A0(0xD000000000000028, 0x80000001000C3D00, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000E70C(v3);
  }
}

- (void)feedbackDraftViewController:didFailToSubmitFeedback:
{
  if (qword_100101610 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100012AAC(v0, qword_100102500);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000B08A0(0xD000000000000037, 0x80000001000C3C80, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000E70C(v3);
  }
}

@end