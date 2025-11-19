@interface LastMenstrualPeriodViewController
- (_TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewModelProviderDidUpdate:(id)a3;
@end

@implementation LastMenstrualPeriodViewController

- (_TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_29E07C100(v5, v7, a4);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_29E07C344();
}

- (void)viewModelProviderDidUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29E07D490();
}

@end