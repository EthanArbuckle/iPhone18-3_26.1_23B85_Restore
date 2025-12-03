@interface SharedSummaryTileViewController
- (NSString)title;
- (_TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation SharedSummaryTileViewController

- (_TtC24MenstrualCyclesAppPlugin31SharedSummaryTileViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_29DF42A00(v5, v7, bundle);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29DF42E40();
}

- (NSString)title
{
  selfCopy = self;
  sub_29DF454F8();
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