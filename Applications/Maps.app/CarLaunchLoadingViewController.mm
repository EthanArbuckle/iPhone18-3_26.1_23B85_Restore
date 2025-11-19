@interface CarLaunchLoadingViewController
- (id)initForResume;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CarLaunchLoadingViewController

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CarLaunchLoadingViewController;
  [(CarLaunchLoadingViewController *)&v5 viewDidDisappear:a3];
  if (self->_configuredForResume)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 postNotificationName:@"CarDisplayDidBecomeActiveNotification" object:0];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CarLaunchLoadingViewController;
  [(CarLaunchLoadingViewController *)&v5 viewDidAppear:a3];
  if (!self->_configuredForResume)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 postNotificationName:@"CarDisplayDidFinishLaunchingNotification" object:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CarLaunchLoadingViewController;
  [(CarLaunchLoadingViewController *)&v8 viewWillAppear:a3];
  if (+[CarDisplayController debugLaunchPerformance])
  {
    v4 = +[UIColor systemRedColor];
  }

  else
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [(CarLaunchLoadingViewController *)self traitCollection];
    v4 = [UIColor colorNamed:@"CartographyBackground" inBundle:v5 compatibleWithTraitCollection:v6];
  }

  v7 = [(CarLaunchLoadingViewController *)self view];
  [v7 setBackgroundColor:v4];
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