@interface CardStackViewController
- (_TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)popWithCard:(id)card;
- (void)viewDidLoad;
@end

@implementation CardStackViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1005FBA00();
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  v3 = sub_1005FBEE0();

  return v3;
}

- (void)popWithCard:(id)card
{
  cardCopy = card;
  selfCopy = self;
  sub_1005FBFCC(cardCopy);
}

- (_TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_10076FF9C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1005FCD04(v5, v7, bundle);
}

@end