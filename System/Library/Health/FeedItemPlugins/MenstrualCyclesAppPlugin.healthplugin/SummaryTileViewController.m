@interface SummaryTileViewController
- (NSString)title;
- (_TtC24MenstrualCyclesAppPlugin25SummaryTileViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)respondToTraitCollectionChanges;
- (void)significantTimeChangeDidOccur;
- (void)userPreferredUnitChanged;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SummaryTileViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_29E268B18();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SummaryTileViewController();
  v2 = v3.receiver;
  [(SummaryTileViewController *)&v3 viewDidLayoutSubviews];
  sub_29E26AC3C();
}

- (void)respondToTraitCollectionChanges
{
  v2 = self;
  sub_29E269FA0();
  sub_29E26A124();
}

- (void)userPreferredUnitChanged
{
  v2 = self;
  sub_29E26B998();
}

- (void)significantTimeChangeDidOccur
{
  v2 = self;
  sub_29E26BA08();
}

- (_TtC24MenstrualCyclesAppPlugin25SummaryTileViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_29E26C178(v5, v7, a4);
}

- (NSString)title
{
  v2 = self;
  sub_29E26C7CC();
  v4 = v3;

  if (v4)
  {
    v5 = sub_29E2C33A4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end