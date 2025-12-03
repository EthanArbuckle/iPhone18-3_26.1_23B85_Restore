@interface CardStackViewController
- (_TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)popWithCard:(id)card;
- (void)viewDidLoad;
@end

@implementation CardStackViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100367330();
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  v3 = sub_1002871A4();
  if (v3)
  {
    v4 = v3;
    supportedInterfaceOrientations = [v3 supportedInterfaceOrientations];

    return supportedInterfaceOrientations;
  }

  else
  {
    traitCollection = [(CardStackViewController *)selfCopy traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      return 30;
    }

    else
    {
      return 2;
    }
  }
}

- (void)popWithCard:(id)card
{
  cardCopy = card;
  selfCopy = self;
  sub_100367878(cardCopy);
}

- (_TtC8AppStoreP33_4C12C965B12FCBBF31BE3A1652C8D11F23CardStackViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1003685B0(v5, v7, bundle);
}

@end