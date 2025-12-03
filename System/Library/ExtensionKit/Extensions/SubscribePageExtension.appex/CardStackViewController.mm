@interface CardStackViewController
- (_TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D110623CardStackViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)popWithCard:(id)card;
- (void)viewDidLoad;
@end

@implementation CardStackViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1006EF160();
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  v3 = sub_1006EF640();

  return v3;
}

- (void)popWithCard:(id)card
{
  cardCopy = card;
  selfCopy = self;
  sub_1006EF740(cardCopy);
}

- (_TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D110623CardStackViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100753094();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1006F0478(v5, v7, bundle);
}

@end