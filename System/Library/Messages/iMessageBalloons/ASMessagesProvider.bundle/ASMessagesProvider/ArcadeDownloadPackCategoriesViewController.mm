@interface ArcadeDownloadPackCategoriesViewController
- (void)didTapContinueButton;
- (void)didTapSkipButton;
- (void)viewDidLoad;
@end

@implementation ArcadeDownloadPackCategoriesViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(ArcadeDownloadPackViewController *)&v5 viewDidLoad];
  [v2 setModalInPresentation:{1, v5.receiver, v5.super_class}];
  navigationItem = [v2 navigationItem];
  [navigationItem setHidesBackButton:1];

  navigationItem2 = [v2 navigationItem];
  [navigationItem2 setBackButtonDisplayMode:1];
}

- (void)didTapContinueButton
{
  selfCopy = self;
  sub_764120();
}

- (void)didTapSkipButton
{
  selfCopy = self;
  sub_764110();
  [(ArcadeDownloadPackCategoriesViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
}

@end