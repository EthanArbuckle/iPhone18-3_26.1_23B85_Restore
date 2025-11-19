@interface COSWatchUnpairInstructionsController
- (COSWatchUnpairInstructionsController)init;
- (id)detailText;
- (id)firstBulletText;
- (id)learnMoreButtonTitle;
- (id)titleText;
- (void)close;
- (void)learnMoreButtonPressed:(id)a3;
- (void)presentWithController:(id)a3;
- (void)viewDidLoad;
@end

@implementation COSWatchUnpairInstructionsController

- (COSWatchUnpairInstructionsController)init
{
  v3.receiver = self;
  v3.super_class = COSWatchUnpairInstructionsController;
  result = [(COSOptinViewController *)&v3 init];
  if (result)
  {
    result->_instructionsContext = 0;
  }

  return result;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = COSWatchUnpairInstructionsController;
  [(COSWatchUnpairInstructionsController *)&v19 viewDidLoad];
  v18 = [(COSWatchUnpairInstructionsController *)self titleText];
  v17 = [(COSWatchUnpairInstructionsController *)self detailText];
  v3 = [(COSWatchUnpairInstructionsController *)self headerView];
  [v3 setTitle:v18];

  v4 = [(COSWatchUnpairInstructionsController *)self headerView];
  [v4 setDetailText:v17];

  v5 = [UIImage systemImageNamed:@"gear"];
  v6 = BPSBridgeTintColor();
  v7 = [v5 imageWithTintColor:v6];

  v8 = [(COSWatchUnpairInstructionsController *)self firstBulletText];
  [(COSWatchUnpairInstructionsController *)self addBulletedListItemWithTitle:v8 description:&stru_10026E598 image:v7];
  v9 = [UIImage systemImageNamed:@"xmark.circle"];
  v10 = BPSBridgeTintColor();
  v11 = [v9 imageWithTintColor:v10];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"TINKER_GRADUATE_BULLET_TWO" value:&stru_10026E598 table:@"Localizable-tinker"];
  [(COSWatchUnpairInstructionsController *)self addBulletedListItemWithTitle:v13 description:&stru_10026E598 image:v11];

  v14 = [UIImage systemImageNamed:@"lock.circle"];
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"TINKER_GRADUATE_BULLET_THREE" value:&stru_10026E598 table:@"Localizable-tinker"];
  [(COSWatchUnpairInstructionsController *)self addBulletedListItemWithTitle:v16 description:&stru_10026E598 image:v14];
}

- (void)presentWithController:(id)a3
{
  v4 = a3;
  v5 = [[COSNavigationController alloc] initWithRootViewController:self];
  [(COSNavigationController *)v5 setModalPresentationStyle:5];
  v6 = [(COSNavigationController *)v5 view];
  v7 = +[UIColor clearColor];
  [v6 setBackgroundColor:v7];

  v8 = [(COSNavigationController *)v5 navigationBar];
  sub_10002C794(v8);

  v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"close"];
  v10 = [(COSWatchUnpairInstructionsController *)self navigationItem];
  [v10 setRightBarButtonItem:v9];

  [(COSNavigationController *)v5 setModalPresentationStyle:1];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000C15A8;
  v17[3] = &unk_100268358;
  v11 = v4;
  v18 = v11;
  v12 = v5;
  v19 = v12;
  v13 = objc_retainBlock(v17);
  v14 = [v11 transitionCoordinator];
  if (v14)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000C15BC;
    v15[3] = &unk_10026A4C8;
    v16 = v13;
    [v14 animateAlongsideTransition:0 completion:v15];
  }

  else
  {
    (v13[2])(v13);
  }
}

- (id)titleText
{
  instructionsContext = self->_instructionsContext;
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (instructionsContext == 1)
  {
    v5 = @"TINKER_MIGRATION_FAILED_TITLE";
  }

  else
  {
    v5 = @"TINKER_GRADUATE_TITLE";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_10026E598 table:@"Localizable-tinker"];

  return v6;
}

- (id)detailText
{
  instructionsContext = self->_instructionsContext;
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (instructionsContext == 1)
  {
    v5 = @"TINKER_MIGRATION_FAILED_DESCRIPTION";
  }

  else
  {
    v5 = @"TINKER_GRADUATE_DESCRIPTION";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_10026E598 table:@"Localizable-tinker"];

  return v6;
}

- (id)firstBulletText
{
  instructionsContext = self->_instructionsContext;
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (instructionsContext == 1)
  {
    v5 = @"TINKER_MIGRATION_FAILED_BULLET_ONE";
  }

  else
  {
    v5 = @"TINKER_GRADUATE_BULLET_ONE";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_10026E598 table:@"Localizable-tinker"];

  return v6;
}

- (void)close
{
  [(COSWatchUnpairInstructionsController *)self dismissViewControllerAnimated:1 completion:&stru_10026B150];
  if (!self->_instructionsContext)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 removeObjectForKey:@"DisplayGraduationUnpairInstructions"];
  }
}

- (id)learnMoreButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"TINKER_GRADUATE_LEARN_MORE" value:&stru_10026E598 table:@"Localizable-tinker"];

  return v3;
}

- (void)learnMoreButtonPressed:(id)a3
{
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [NSURL URLWithString:@"https://support.apple.com/HT209512"];
  [v4 openURL:v3 configuration:0 completionHandler:0];
}

@end