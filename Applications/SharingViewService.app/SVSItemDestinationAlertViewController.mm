@interface SVSItemDestinationAlertViewController
- (SVSItemDestinationAlertViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation SVSItemDestinationAlertViewController

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_10006709C;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  sub_10008F250(a3, v6, v7);
  sub_100025EF4(v6, v7);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10009058C(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_100090850(a3);
}

- (SVSItemDestinationAlertViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_100091D64(v5, v7, a4);
}

@end