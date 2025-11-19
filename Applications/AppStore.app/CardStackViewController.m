@interface CardStackViewController
- (_TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)popWithCard:(id)a3;
- (void)viewDidLoad;
@end

@implementation CardStackViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100367330();
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = sub_1002871A4();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 supportedInterfaceOrientations];

    return v5;
  }

  else
  {
    v7 = [(CardStackViewController *)v2 traitCollection];
    v8 = [v7 userInterfaceIdiom];

    if (v8 == 1)
    {
      return 30;
    }

    else
    {
      return 2;
    }
  }
}

- (void)popWithCard:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100367878(v4);
}

- (_TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_1003685B0(v5, v7, a4);
}

@end