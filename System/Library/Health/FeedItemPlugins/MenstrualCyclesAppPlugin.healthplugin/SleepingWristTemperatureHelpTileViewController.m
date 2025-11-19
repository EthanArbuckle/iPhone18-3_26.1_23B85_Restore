@interface SleepingWristTemperatureHelpTileViewController
- (_TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation SleepingWristTemperatureHelpTileViewController

- (void)loadView
{
  v3 = self;
  v2 = sub_29E0E0908();
  [(SleepingWristTemperatureHelpTileViewController *)v3 setView:v2];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SleepingWristTemperatureHelpTileViewController();
  v2 = v4.receiver;
  [(SleepingWristTemperatureHelpTileViewController *)&v4 viewDidLoad];
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController_didSubmitAnalyticsEventForView;
  if ((v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController_didSubmitAnalyticsEventForView] & 1) == 0)
  {
    sub_29E0E1098(0);
    v2[v3] = 1;
  }
}

- (_TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_29E0E170C(v5, v7, a4);
}

@end