@interface SCLSetupListViewController
+ (id)defaultSetupViewModel;
- (SCLSetupListViewController)init;
- (SCLSetupPrincipleClass)flowController;
- (void)doneButtonSelected:(id)selected;
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
    navigationItem = [(SCLSetupListViewController *)v2 navigationItem];
    [navigationItem setRightBarButtonItem:v3];
  }

  return v2;
}

- (void)loadSpecifierSource
{
  defaultSetupViewModel = [objc_opt_class() defaultSetupViewModel];
  viewModel = self->_viewModel;
  self->_viewModel = defaultSetupViewModel;
  v5 = defaultSetupViewModel;

  v6 = [[SCLSetupSpecifierDataSource alloc] initWithListController:self viewModel:v5];
  [(SCLSetupSpecifierDataSource *)v6 setActive:1];
  [(SCLSetupListViewController *)self setSpecifierSource:v6];
}

- (void)doneButtonSelected:(id)selected
{
  flowController = [(SCLSetupListViewController *)self flowController];
  viewModel = [(SCLSetupListViewController *)self viewModel];
  [flowController commitViewModel:viewModel];
}

+ (id)defaultSetupViewModel
{
  v2 = objc_alloc_init(SCLSettingsViewModel);
  [v2 setEnabled:1];
  v3 = +[NSCalendar currentCalendar];
  sCL_nonWeekendDays = [v3 SCL_nonWeekendDays];

  v5 = +[SCLTimeIntervalModel defaultTimeInterval];
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];

  [v2 setScheduleType:2];
  [v2 setRepeatSchedule:sCL_nonWeekendDays];
  [v2 setTimeIntervals:v6];
  v7 = [[SCLRecurrenceSchedule alloc] initWithTimeIntervals:v6 repeatSchedule:sCL_nonWeekendDays];
  [v2 setCustomSchedule:v7];

  return v2;
}

- (SCLSetupPrincipleClass)flowController
{
  WeakRetained = objc_loadWeakRetained(&self->_flowController);

  return WeakRetained;
}

@end