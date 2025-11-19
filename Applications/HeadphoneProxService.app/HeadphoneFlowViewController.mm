@interface HeadphoneFlowViewController
- (_TtC20HeadphoneProxService27HeadphoneFlowViewController)initWithCoder:(id)a3;
- (_TtC20HeadphoneProxService27HeadphoneFlowViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_willAppearInRemoteViewController;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HeadphoneFlowViewController

- (_TtC20HeadphoneProxService27HeadphoneFlowViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_10009E3F8(v5, v7, a4);
}

- (_TtC20HeadphoneProxService27HeadphoneFlowViewController)initWithCoder:(id)a3
{
  v3 = &self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_interactor];
  *(v3 + 4) = 0;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v4 = &self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_presenter];
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *&self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController____lazy_storage___usbHeadphoneConnectionManager] = 1;
  self->SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService27HeadphoneFlowViewController_homePressed] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1000A069C;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  sub_10009E610(v8, v6, v7);
  sub_1000622D4(v6);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10009F6A8(a3);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10009F800(a3);
}

- (void)handleButtonActions:(id)a3
{
  if (a3)
  {
    sub_1000084D4(0, &qword_10011F948, SBUIRemoteAlertButtonAction_ptr);
    sub_10001C19C(&unk_10011F950, &qword_10011F948, SBUIRemoteAlertButtonAction_ptr);
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_10009FE2C(v4);
}

- (void)_willAppearInRemoteViewController
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(HeadphoneFlowViewController *)&v4 _willAppearInRemoteViewController];
  v3 = sub_10003E658();
  if (v3)
  {
    [v3 setAllowsAlertStacking:{1, v4.receiver, v4.super_class}];
    swift_unknownObjectRelease();
  }
}

@end