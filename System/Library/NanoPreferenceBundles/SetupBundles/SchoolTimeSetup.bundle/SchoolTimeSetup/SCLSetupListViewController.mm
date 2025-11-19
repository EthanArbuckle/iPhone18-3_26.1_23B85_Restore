@interface SCLSetupListViewController
+ (id)defaultSetupViewModel;
- (SCLSetupListViewController)init;
- (SCLSetupPrincipleClass)flowController;
- (void)doneButtonSelected:(id)a3;
- (void)loadSpecifierSource;
@end

@implementation SCLSetupListViewController

- (SCLSetupListViewController)init
{
  v6.receiver = self;
  v6.super_class = SCLSetupListViewController;
  v2 = [(SCLSetupListViewController *)&v6 init];
  if (v2)
  {
    v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v2 action:"doneButtonSelected:"];
    v4 = [(SCLSetupListViewController *)v2 navigationItem];
    [v4 setRightBarButtonItem:v3];
  }

  return v2;
}

- (void)loadSpecifierSource
{
  v3 = [objc_opt_class() defaultSetupViewModel];
  viewModel = self->_viewModel;
  self->_viewModel = v3;
  v5 = v3;

  v6 = [[SCLSetupSpecifierDataSource alloc] initWithListController:self viewModel:v5];
  [(SCLSetupSpecifierDataSource *)v6 setActive:1];
  [(SCLSetupListViewController *)self setSpecifierSource:v6];
}

- (void)doneButtonSelected:(id)a3
{
  v5 = [(SCLSetupListViewController *)self flowController];
  v4 = [(SCLSetupListViewController *)self viewModel];
  [v5 commitViewModel:v4];
}

+ (id)defaultSetupViewModel
{
  v2 = objc_alloc_init(SCLSettingsViewModel);
  [v2 setEnabled:1];
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 SCL_nonWeekendDays];

  v5 = +[SCLTimeIntervalModel defaultTimeInterval];
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];

  [v2 setScheduleType:2];
  [v2 setRepeatSchedule:v4];
  [v2 setTimeIntervals:v6];
  v7 = [[SCLRecurrenceSchedule alloc] initWithTimeIntervals:v6 repeatSchedule:v4];
  [v2 setCustomSchedule:v7];

  return v2;
}

- (SCLSetupPrincipleClass)flowController
{
  WeakRetained = objc_loadWeakRetained(&self->_flowController);

  return WeakRetained;
}

@end