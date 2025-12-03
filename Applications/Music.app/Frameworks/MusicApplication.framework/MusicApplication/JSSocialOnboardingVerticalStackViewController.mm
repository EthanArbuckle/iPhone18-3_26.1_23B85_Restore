@interface JSSocialOnboardingVerticalStackViewController
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation JSSocialOnboardingVerticalStackViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_179B1C(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for JSSocialOnboardingVerticalStackViewController();
  v4 = v8.receiver;
  [(VerticalStackViewController *)&v8 viewDidAppear:appearCopy];
  presentingViewController = [v4 presentingViewController];
  if (presentingViewController)
  {

    navigationController = [v4 navigationController];
    if (navigationController)
    {
      v7 = navigationController;
      [navigationController setModalInPresentation:1];

      v4 = v7;
    }
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_179D64();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_17AEDC();
}

@end