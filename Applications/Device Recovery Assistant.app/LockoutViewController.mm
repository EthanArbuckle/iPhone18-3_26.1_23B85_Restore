@interface LockoutViewController
- (LockoutViewController)initWithEndDate:(id)date;
- (id)_descriptionStringForEndDate:(id)date;
- (void)viewDidLoad;
@end

@implementation LockoutViewController

- (LockoutViewController)initWithEndDate:(id)date
{
  dateCopy = date;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"LOCKOUT_TITLE" value:&stru_100028E90 table:0];

  v7 = [(LockoutViewController *)self _descriptionStringForEndDate:dateCopy];
  v12.receiver = self;
  v12.super_class = LockoutViewController;
  v8 = [(LockoutViewController *)&v12 initWithTitle:v6 detailText:v7 symbolName:0];
  if (v8)
  {
    v9 = [dateCopy copy];
    endDate = v8->_endDate;
    v8->_endDate = v9;
  }

  return v8;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = LockoutViewController;
  [(LockoutViewController *)&v8 viewDidLoad];
  navigationItem = [(LockoutViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1 animated:1];

  lockoutTimer = [(LockoutViewController *)self lockoutTimer];

  if (lockoutTimer)
  {
    lockoutTimer2 = [(LockoutViewController *)self lockoutTimer];
    [lockoutTimer2 invalidate];
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000BBE0;
  v7[3] = &unk_100028A88;
  v7[4] = self;
  v6 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v7 block:60.0];
  [(LockoutViewController *)self setLockoutTimer:v6];
}

- (id)_descriptionStringForEndDate:(id)date
{
  dateCopy = date;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"LOCKOUT_DETAIL_FORMAT" value:&stru_100028E90 table:0];

  v6 = objc_alloc_init(NSDateComponentsFormatter);
  [v6 setUnitsStyle:3];
  [v6 setAllowedUnits:96];
  [v6 setZeroFormattingBehavior:1];
  v7 = +[NSDate now];
  [dateCopy timeIntervalSinceDate:v7];
  v9 = v8;

  v10 = [v6 stringFromTimeInterval:v9 + 60.0];

  v11 = [NSString stringWithFormat:v5, v10];

  return v11;
}

@end