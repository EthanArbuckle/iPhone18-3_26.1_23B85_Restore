@interface SoundActionsPracticeNavigationController
- (SoundActionsPracticeNavigationController)initWithAssetURL:(id)l usage:(int64_t)usage;
- (void)_setupLearnMoreViewControllerWithData:(id)data;
- (void)_setupPracticeViewController;
- (void)setAssetURL:(id)l;
- (void)viewDidLoad;
@end

@implementation SoundActionsPracticeNavigationController

- (SoundActionsPracticeNavigationController)initWithAssetURL:(id)l usage:(int64_t)usage
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = SoundActionsPracticeNavigationController;
  v7 = [(SoundActionsPracticeNavigationController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SoundActionsPracticeNavigationController *)v7 setAssetURL:lCopy];
    [(SoundActionsPracticeNavigationController *)v8 setUsage:usage];
  }

  return v8;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SoundActionsPracticeNavigationController;
  [(SoundActionsPracticeNavigationController *)&v8 viewDidLoad];
  if ([(SoundActionsPracticeNavigationController *)self usage])
  {
    v3 = +[SoundActionsPracticeUtilities sharedInstance];
    usage = [(SoundActionsPracticeNavigationController *)self usage];
    assetURL = [(SoundActionsPracticeNavigationController *)self assetURL];
    practiceViewController = [v3 dataForSoundUsage:usage assetURL:assetURL];

    [(SoundActionsPracticeNavigationController *)self _setupLearnMoreViewControllerWithData:practiceViewController];
    learnMoreViewController = [(SoundActionsPracticeNavigationController *)self learnMoreViewController];
    [(SoundActionsPracticeNavigationController *)self pushViewController:learnMoreViewController animated:0];
  }

  else
  {
    [(SoundActionsPracticeNavigationController *)self _setupPracticeViewController];
    practiceViewController = [(SoundActionsPracticeNavigationController *)self practiceViewController];
    [(SoundActionsPracticeNavigationController *)self pushViewController:practiceViewController animated:0];
  }
}

- (void)setAssetURL:(id)l
{
  lCopy = l;
  v5 = [lCopy copy];
  assetURL = self->_assetURL;
  self->_assetURL = v5;

  v8 = [lCopy copy];
  practiceViewController = [(SoundActionsPracticeNavigationController *)self practiceViewController];
  [practiceViewController setAssetURL:v8];
}

- (void)_setupLearnMoreViewControllerWithData:(id)data
{
  dataCopy = data;
  learnMoreViewController = [(SoundActionsPracticeNavigationController *)self learnMoreViewController];

  if (!learnMoreViewController)
  {
    v6 = [SoundActionsLearnMoreViewController alloc];
    v7 = settingsLocString(@"SOUND_ACTION_LEARN_PAGE_TITLE", @"Accessibility");
    v8 = settingsLocString(@"SOUND_ACTION_LEARN_PAGE_DETAIL", @"Accessibility");
    v9 = [(SoundActionsLearnMoreViewController *)v6 initWithTitle:v7 detailText:v8 icon:0];
    [(SoundActionsPracticeNavigationController *)self setLearnMoreViewController:v9];

    v15 = dataCopy;
    v10 = [NSArray arrayWithObjects:&v15 count:1];
    learnMoreViewController2 = [(SoundActionsPracticeNavigationController *)self learnMoreViewController];
    [learnMoreViewController2 setSounds:v10];
  }

  v12 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_doneTapped:"];
  learnMoreViewController3 = [(SoundActionsPracticeNavigationController *)self learnMoreViewController];
  navigationItem = [learnMoreViewController3 navigationItem];
  [navigationItem setRightBarButtonItem:v12];
}

- (void)_setupPracticeViewController
{
  practiceViewController = [(SoundActionsPracticeNavigationController *)self practiceViewController];

  if (!practiceViewController)
  {
    v4 = [SoundActionsPracticeViewController alloc];
    v5 = settingsLocString(@"SOUND_ACTION_PRACTICE_PAGE_TITLE", @"Accessibility");
    v6 = settingsLocString(@"SOUND_ACTION_PRACTICE_PAGE_DETAIL", @"Accessibility");
    v7 = [(SoundActionsPracticeViewController *)v4 initWithTitle:v5 detailText:v6 icon:0 contentLayout:3];
    [(SoundActionsPracticeNavigationController *)self setPracticeViewController:v7];

    assetURL = [(SoundActionsPracticeNavigationController *)self assetURL];
    v9 = [assetURL copy];
    practiceViewController2 = [(SoundActionsPracticeNavigationController *)self practiceViewController];
    [practiceViewController2 setAssetURL:v9];
  }

  v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_doneTapped:"];
  practiceViewController3 = [(SoundActionsPracticeNavigationController *)self practiceViewController];
  navigationItem = [practiceViewController3 navigationItem];
  [navigationItem setRightBarButtonItem:v13];
}

@end