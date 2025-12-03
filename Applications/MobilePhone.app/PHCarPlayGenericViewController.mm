@interface PHCarPlayGenericViewController
- (BOOL)shouldRespondToHardwareControlEvent;
- (PHCarPlayGenericViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation PHCarPlayGenericViewController

- (PHCarPlayGenericViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = PHCarPlayGenericViewController;
  v4 = [(PHCarPlayGenericViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(PHCarPlayGenericViewController *)v4 setRespondsToEventsWhileInCall:1];
  }

  return v5;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PHCarPlayGenericViewController;
  [(PHCarPlayGenericViewController *)&v4 viewDidLoad];
  if (+[PHCarPlayUtilities activeInterfaceMechanismIsHardware])
  {
    navigationItem = [(PHCarPlayGenericViewController *)self navigationItem];
    [navigationItem setHidesBackButton:1];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PHCarPlayGenericViewController;
  [(PHCarPlayGenericViewController *)&v5 viewDidAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"hardwareControlEventNotification:" name:TUCarPlayHardwareControlEventNotification object:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PHCarPlayGenericViewController;
  [(PHCarPlayGenericViewController *)&v5 viewDidDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:TUCarPlayHardwareControlEventNotification object:0];
}

- (BOOL)shouldRespondToHardwareControlEvent
{
  v3 = +[UIApplication sharedApplication];
  isSuspended = [v3 isSuspended];

  v5 = +[TUCallCenter sharedInstance];
  if ([v5 currentAudioAndVideoCallCount])
  {
    respondsToEventsWhileInCall = [(PHCarPlayGenericViewController *)self respondsToEventsWhileInCall];

    if ((respondsToEventsWhileInCall & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  if ([(PHCarPlayGenericViewController *)self isViewLoaded]&& !(isSuspended & 1 | ![(PHCarPlayGenericViewController *)self viewIsInAppearedState]))
  {
    presentedViewController = [(PHCarPlayGenericViewController *)self presentedViewController];
    v7 = presentedViewController == 0;

    return v7;
  }

  return 0;
}

@end