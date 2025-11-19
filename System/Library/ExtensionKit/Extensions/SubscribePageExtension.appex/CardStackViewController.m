@interface CardStackViewController
- (_TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D110623CardStackViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)popWithCard:(id)a3;
- (void)viewDidLoad;
@end

@implementation CardStackViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1006EF160();
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = sub_1006EF640();

  return v3;
}

- (void)popWithCard:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1006EF740(v4);
}

- (_TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D110623CardStackViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_100753094();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1006F0478(v5, v7, a4);
}

@end