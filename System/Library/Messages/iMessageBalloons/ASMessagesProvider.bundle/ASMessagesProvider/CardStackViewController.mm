@interface CardStackViewController
- (_TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)popWithCard:(id)a3;
- (void)viewDidLoad;
@end

@implementation CardStackViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_599684();
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = sub_599B64();

  return v3;
}

- (void)popWithCard:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_599C50(v4);
}

- (_TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_769240();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_59A988(v5, v7, a4);
}

@end