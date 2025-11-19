@interface RemoteEngagementViewController
- (_TtC24AMSEngagementViewService30RemoteEngagementViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)didReceiveMemoryWarning;
- (void)handleButtonActions:(id)a3;
- (void)loadView;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation RemoteEngagementViewController

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_10000EB58;
  }

  v7 = a3;
  v8 = self;
  sub_100009AD8(a3, v6);
  sub_100006708(v6);
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_10000EB14;
  }

  v7 = a3;
  v8 = self;
  sub_10000A0A0(a3, v6);
  sub_100006708(v6);
}

- (void)handleButtonActions:(id)a3
{
  if (a3)
  {
    sub_100008CB8(0, &qword_100021E70, SBUIRemoteAlertButtonAction_ptr);
    sub_10000E060();
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_10000A4D8(v4);
}

- (void)loadView
{
  v2 = self;
  sub_10000A974();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10000AA5C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10000ADC8(a3, &selRef_viewWillAppear_, &ViewControllerPresenter.viewWillAppear());
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10000AB9C(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_10000AC48(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_10000ADC8(a3, &selRef_viewDidDisappear_, &ViewControllerPresenter.viewDidDisappear());
}

- (void)didReceiveMemoryWarning
{
  v2 = self;
  sub_10000AED4();
}

- (_TtC24AMSEngagementViewService30RemoteEngagementViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_10000D934(v5, v7, a4);
}

@end