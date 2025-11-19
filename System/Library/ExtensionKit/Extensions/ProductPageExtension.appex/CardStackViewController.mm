@interface CardStackViewController
- (_TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)popWithCard:(id)a3;
- (void)viewDidLoad;
@end

@implementation CardStackViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1005FBA00();
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = sub_1005FBEE0();

  return v3;
}

- (void)popWithCard:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005FBFCC(v4);
}

- (_TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_10076FF9C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1005FCD04(v5, v7, a4);
}

@end