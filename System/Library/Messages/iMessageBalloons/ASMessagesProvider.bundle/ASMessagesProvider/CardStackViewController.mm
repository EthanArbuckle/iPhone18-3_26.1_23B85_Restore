@interface CardStackViewController
- (_TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)popWithCard:(id)card;
- (void)viewDidLoad;
@end

@implementation CardStackViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_599684();
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  v3 = sub_599B64();

  return v3;
}

- (void)popWithCard:(id)card
{
  cardCopy = card;
  selfCopy = self;
  sub_599C50(cardCopy);
}

- (_TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_769240();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_59A988(v5, v7, bundle);
}

@end