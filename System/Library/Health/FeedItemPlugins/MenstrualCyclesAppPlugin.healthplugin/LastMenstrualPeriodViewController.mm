@interface LastMenstrualPeriodViewController
- (_TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewModelProviderDidUpdate:(id)update;
@end

@implementation LastMenstrualPeriodViewController

- (_TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_29E07C100(v5, v7, bundle);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29E07C344();
}

- (void)viewModelProviderDidUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  sub_29E07D490();
}

@end