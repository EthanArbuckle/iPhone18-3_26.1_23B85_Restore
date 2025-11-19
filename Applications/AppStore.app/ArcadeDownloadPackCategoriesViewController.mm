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
  v3 = [v2 navigationItem];
  [v3 setHidesBackButton:1];

  v4 = [v2 navigationItem];
  [v4 setBackButtonDisplayMode:1];
}

- (void)didTapContinueButton
{
  v2 = self;
  dispatch thunk of ArcadeDownloadPackCategoriesPagePresenter.didTapContinueButton()();
}

- (void)didTapSkipButton
{
  v2 = self;
  dispatch thunk of ArcadeDownloadPackCategoriesPagePresenter.didTapSkipButton()();
  [(ArcadeDownloadPackCategoriesViewController *)v2 dismissViewControllerAnimated:1 completion:0];
}

@end