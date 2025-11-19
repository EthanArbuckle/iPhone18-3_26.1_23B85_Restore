@interface ConfirmationSheetViewController
- (_TtC26ADAskForExceptionExtension31ConfirmationSheetViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC26ADAskForExceptionExtension31ConfirmationSheetViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)dealloc;
- (void)handleScreenTimePinCompletionNotificationWithNotification:(id)a3;
- (void)miniProductPageRequestDidFinish;
- (void)moreInformationPressed;
- (void)primaryButtonPressed;
- (void)secondaryButtonPressed;
- (void)viewDidLoad;
@end

@implementation ConfirmationSheetViewController

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4 name:STRestrictionsPINControllerDidFinishNotification object:0];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for ConfirmationSheetViewController();
  [(ConfirmationSheetViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ConfirmationSheetViewController();
  v2 = v3.receiver;
  [(ConfirmationSheetViewController *)&v3 viewDidLoad];
  sub_100004874();
  sub_100006F24();
}

- (void)moreInformationPressed
{
  v2 = self;
  sub_100007870();
}

- (void)primaryButtonPressed
{
  v3 = sub_100003360(&qword_100025A30, &qword_1000194F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_100017DC0();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_100017DA0();
  v8 = self;
  v9 = sub_100017D90();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  sub_1000080E4(0, 0, v6, &unk_100019218, v10);
}

- (void)secondaryButtonPressed
{
  v2 = self;
  sub_100008514();
}

- (_TtC26ADAskForExceptionExtension31ConfirmationSheetViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26ADAskForExceptionExtension31ConfirmationSheetViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleScreenTimePinCompletionNotificationWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100009A80(v4);
}

- (void)miniProductPageRequestDidFinish
{
  if (qword_1000251F0 != -1)
  {
    swift_once();
  }

  v0 = sub_1000178E0();
  sub_10000BEDC(v0, qword_100025420);
  oslog = sub_1000178C0();
  v1 = sub_100017DF0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Mini product page finished loading", v2, 2u);
  }
}

@end