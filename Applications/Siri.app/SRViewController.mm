@interface SRViewController
- (id)preferredFocusEnvironments;
- (void)_cleanupAllViews;
- (void)setUpViews;
- (void)tearDownViews;
- (void)viewDidLoad;
@end

@implementation SRViewController

- (void)setUpViews
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v2, &location);
  SiriUIInvokeOnMainQueue();
  objc_destroyWeak(&v2);
  objc_destroyWeak(&location);
}

- (void)_cleanupAllViews
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v2, &location);
  SiriUIInvokeOnMainQueue();
  objc_destroyWeak(&v2);
  objc_destroyWeak(&location);
}

- (id)preferredFocusEnvironments
{
  if (self->_siriVC)
  {
    siriVC = self->_siriVC;
    preferredFocusEnvironments = [NSArray arrayWithObjects:&siriVC count:1];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SRViewController;
    preferredFocusEnvironments = [(SRViewController *)&v4 preferredFocusEnvironments];
  }

  return preferredFocusEnvironments;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SRViewController;
  [(SRViewController *)&v5 viewDidLoad];
  view = [(SRViewController *)self view];
  v4 = +[UIColor clearColor];
  [view setBackgroundColor:v4];
}

- (void)tearDownViews
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v2, &location);
  SiriUIInvokeOnMainQueue();
  objc_destroyWeak(&v2);
  objc_destroyWeak(&location);
}

@end