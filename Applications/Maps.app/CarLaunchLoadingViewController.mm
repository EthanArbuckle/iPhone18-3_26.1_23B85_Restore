@interface CarLaunchLoadingViewController
- (id)initForResume;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CarLaunchLoadingViewController

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CarLaunchLoadingViewController;
  [(CarLaunchLoadingViewController *)&v5 viewDidDisappear:disappear];
  if (self->_configuredForResume)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 postNotificationName:@"CarDisplayDidBecomeActiveNotification" object:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CarLaunchLoadingViewController;
  [(CarLaunchLoadingViewController *)&v5 viewDidAppear:appear];
  if (!self->_configuredForResume)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 postNotificationName:@"CarDisplayDidFinishLaunchingNotification" object:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = CarLaunchLoadingViewController;
  [(CarLaunchLoadingViewController *)&v8 viewWillAppear:appear];
  if (+[CarDisplayController debugLaunchPerformance])
  {
    v4 = +[UIColor systemRedColor];
  }

  else
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    traitCollection = [(CarLaunchLoadingViewController *)self traitCollection];
    v4 = [UIColor colorNamed:@"CartographyBackground" inBundle:v5 compatibleWithTraitCollection:traitCollection];
  }

  view = [(CarLaunchLoadingViewController *)self view];
  [view setBackgroundColor:v4];
}

- (id)initForResume
{
  result = [(CarLaunchLoadingViewController *)self init];
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

@end