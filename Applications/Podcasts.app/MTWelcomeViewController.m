@interface MTWelcomeViewController
- (MTWelcomeViewController)init;
- (MTWelcomeViewController)initWithMetricsSender:(id)a3;
- (void)addAcknowledgementCompletionBlock:(id)a3;
- (void)didTapStartButton;
- (void)loadView;
- (void)performAcknowledgementCompletionBlocks;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MTWelcomeViewController

- (MTWelcomeViewController)init
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"WELCOME_START_LINK" value:&stru_1004F3018 table:0];

  v5 = [OBPrivacyLinkController linkWithBundleIdentifier:kMTPodcastsPrivacyIdentifier];
  [v5 setModalPresentationStyle:2];
  v6 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v7 = [v6 objectForKey:@"MTWelcomeVersion"];

  v53 = v7;
  if (v7)
  {
    v51 = v4;
    v52 = self;
    v50 = v5;
    v54 = objc_alloc_init(NSMutableArray);
    if (+[PFClientUtil supportsEnhanceDialogue])
    {
      v8 = [AMSUIOnboardingFeature alloc];
      v9 = [UIImage _systemImageNamed:@"wand.and.sparkles"];
      v10 = [v9 imageWithRenderingMode:2];
      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:@"WELCOME_TITLE_A" value:&stru_1004F3018 table:0];
      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"WELCOME_DESCRIPTION_A" value:&stru_1004F3018 table:0];
      v15 = [v8 initWithImage:v10 titleText:v12 descriptionText:v14];
      [v54 addObject:v15];
    }

    v16 = [AMSUIOnboardingFeature alloc];
    v17 = [UIImage _systemImageNamed:@"hare"];
    v18 = [v17 imageWithRenderingMode:2];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"WELCOME_TITLE_B" value:&stru_1004F3018 table:0];
    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"WELCOME_DESCRIPTION_B" value:&stru_1004F3018 table:0];
    v23 = [v16 initWithImage:v18 titleText:v20 descriptionText:v22];
    [v54 addObject:v23];

    v24 = [AMSUIOnboardingFeature alloc];
    v25 = [UIImage _systemImageNamed:@"square.grid.2x2"];
    v26 = [v25 imageWithRenderingMode:2];
    v27 = +[NSBundle mainBundle];
    v28 = [v27 localizedStringForKey:@"WELCOME_TITLE_C" value:&stru_1004F3018 table:0];
    v29 = +[NSBundle mainBundle];
    v30 = [v29 localizedStringForKey:@"WELCOME_DESCRIPTION_C" value:&stru_1004F3018 table:0];
    v31 = [v24 initWithImage:v26 titleText:v28 descriptionText:v30];
    [v54 addObject:v31];

    v61.receiver = v52;
    v61.super_class = MTWelcomeViewController;
    LODWORD(v31) = [(MTWelcomeViewController *)&v61 respondsToSelector:"initWithTitleText:appName:features:primaryButtonText:privacyLinkController:"];
    v32 = +[NSBundle mainBundle];
    v33 = v32;
    if (v31)
    {
      v34 = [(__CFString *)v32 localizedStringForKey:@"WELCOME_WHATS_NEW_TITLE_PART_1" value:&stru_1004F3018 table:0];

      v35 = +[NSBundle mainBundle];
      v36 = [v35 localizedStringForKey:@"WELCOME_WHATS_NEW_TITLE_PART_2" value:&stru_1004F3018 table:0];

      v4 = v51;
      if ([(__CFString *)v36 isEqualToString:@"WELCOME_WHATS_NEW_TITLE_PART_2"])
      {

        v36 = &stru_1004F3018;
      }

      v37 = v54;
      v60.receiver = v52;
      v60.super_class = MTWelcomeViewController;
      v38 = v50;
      v39 = [(MTWelcomeViewController *)&v60 initWithTitleText:v34 appName:v36 features:v54 primaryButtonText:v51 privacyLinkController:v50, v50];
    }

    else
    {
      v36 = [(__CFString *)v32 localizedStringForKey:@"WELCOME_HEADER_TITLE" value:&stru_1004F3018 table:0];
      v59.receiver = v52;
      v59.super_class = MTWelcomeViewController;
      v37 = v54;
      v38 = v50;
      v4 = v51;
      v39 = [(MTWelcomeViewController *)&v59 initWithTitleText:v36 features:v54 primaryButtonText:v51 privacyLinkController:v50];
      v34 = v33;
    }
  }

  else
  {
    v40 = v5;
    v64.receiver = self;
    v64.super_class = MTWelcomeViewController;
    if ([(MTWelcomeViewController *)&v64 respondsToSelector:"initWithHeaderImage:titleText:descriptionText:appName:primaryButtonText:privacyLinkController:"])
    {
      v41 = v4;
      v42 = +[NSBundle mainBundle];
      v37 = [v42 localizedStringForKey:@"WELCOME_FIRST_TIME_TITLE_PART_1" value:&stru_1004F3018 table:0];

      v43 = +[NSBundle mainBundle];
      v34 = [v43 localizedStringForKey:@"WELCOME_FIRST_TIME_TITLE_PART_2" value:&stru_1004F3018 table:0];

      if ([(__CFString *)v34 isEqualToString:@"WELCOME_FIRST_TIME_TITLE_PART_2"])
      {

        v34 = &stru_1004F3018;
      }

      v36 = +[UIImage podcastsAppIcon];
      v44 = +[NSBundle mainBundle];
      v45 = [v44 localizedStringForKey:@"WELCOME_FIRST_TIME_USER_DESCRIPTION" value:&stru_1004F3018 table:0];
      v63.receiver = self;
      v63.super_class = MTWelcomeViewController;
      v38 = v40;
      v39 = [(MTWelcomeViewController *)&v63 initWithHeaderImage:v36 titleText:v37 descriptionText:v45 appName:v34 primaryButtonText:v41 privacyLinkController:v40];

      v4 = v41;
    }

    else
    {
      v37 = +[UIImage podcastsAppIcon];
      v34 = +[NSBundle mainBundle];
      v36 = [(__CFString *)v34 localizedStringForKey:@"WELCOME_FIRST_TIME_USER_TITLE" value:&stru_1004F3018 table:0];
      v44 = +[NSBundle mainBundle];
      v46 = [v44 localizedStringForKey:@"WELCOME_FIRST_TIME_USER_DESCRIPTION" value:&stru_1004F3018 table:0];
      v62.receiver = self;
      v62.super_class = MTWelcomeViewController;
      v39 = [(MTWelcomeViewController *)&v62 initWithHeaderImage:v37 titleText:v36 descriptionText:v46 primaryButtonText:v4 privacyLinkController:v5];

      v38 = v5;
    }
  }

  v58.receiver = v39;
  v58.super_class = MTWelcomeViewController;
  v47 = [(MTWelcomeViewController *)&v58 welcomeController];
  v48 = [v47 headerView];
  [v48 setTitleHyphenationFactor:0.0];

  if (v39)
  {
    objc_initWeak(&location, v39);
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_10012E174;
    v55[3] = &unk_1004DD608;
    objc_copyWeak(&v56, &location);
    [(MTWelcomeViewController *)v39 setPrimaryButtonCallback:v55];
    objc_destroyWeak(&v56);
    objc_destroyWeak(&location);
  }

  return v39;
}

- (MTWelcomeViewController)initWithMetricsSender:(id)a3
{
  v5 = a3;
  v6 = [(MTWelcomeViewController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metricsSender, a3);
  }

  return v7;
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = MTWelcomeViewController;
  [(MTWelcomeViewController *)&v4 loadView];
  v2 = _MTLogCategoryPrivacy();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Welcome VC loadView", v3, 2u);
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = MTWelcomeViewController;
  [(MTWelcomeViewController *)&v4 viewDidLoad];
  v2 = _MTLogCategoryPrivacy();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Welcome VC viewDidLoad", v3, 2u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MTWelcomeViewController;
  [(MTWelcomeViewController *)&v5 viewWillAppear:a3];
  v3 = _MTLogCategoryPrivacy();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Welcome VC will appear", v4, 2u);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = MTWelcomeViewController;
  [(MTWelcomeViewController *)&v7 viewDidAppear:a3];
  v4 = _MTLogCategoryPrivacy();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Welcome VC did appear", v6, 2u);
  }

  v5 = [(MTWelcomeViewController *)self metricsSender];
  [v5 welcomeControllerDidAppear];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = MTWelcomeViewController;
  [(MTWelcomeViewController *)&v13 viewWillDisappear:a3];
  v4 = _MTLogCategoryPrivacy();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Welcome VC will disappear", v12, 2u);
  }

  v5 = [(MTWelcomeViewController *)self acknowledged];
  v6 = _MTLogCategoryPrivacy();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      v8 = "Welcome screen dismissed after user acknowledgement";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v9, v10, v8, v12, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    *v12 = 0;
    v8 = "WelcomeVC dismissed but user HAS NOT ACKNOWLEDGED";
    v9 = v7;
    v10 = OS_LOG_TYPE_FAULT;
    goto LABEL_8;
  }

  v11 = [(MTWelcomeViewController *)self metricsSender];
  [v11 welcomeControllerWillDisappear];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = MTWelcomeViewController;
  [(MTWelcomeViewController *)&v7 viewDidDisappear:a3];
  v4 = _MTLogCategoryPrivacy();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Welcome VC did disappear", v6, 2u);
  }

  v5 = [(MTWelcomeViewController *)self metricsSender];
  [v5 welcomeControllerDidDisappear];
}

- (void)didTapStartButton
{
  +[MTWelcomeUtil markWelcomeAsShown];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10012E6A0;
  v3[3] = &unk_1004D8358;
  v3[4] = self;
  [(MTWelcomeViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

- (void)addAcknowledgementCompletionBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    acknowledgementCompletionBlocks = self->_acknowledgementCompletionBlocks;
    v10 = v4;
    if (!acknowledgementCompletionBlocks)
    {
      v6 = +[NSMutableArray array];
      v7 = self->_acknowledgementCompletionBlocks;
      self->_acknowledgementCompletionBlocks = v6;

      acknowledgementCompletionBlocks = self->_acknowledgementCompletionBlocks;
    }

    v8 = [v10 copy];
    v9 = objc_retainBlock(v8);
    [(NSMutableArray *)acknowledgementCompletionBlocks addObject:v9];

    v4 = v10;
  }
}

- (void)performAcknowledgementCompletionBlocks
{
  v3 = [(NSMutableArray *)self->_acknowledgementCompletionBlocks copy];
  [(NSMutableArray *)self->_acknowledgementCompletionBlocks removeAllObjects];
  [v3 enumerateObjectsUsingBlock:&stru_1004DD628];
}

@end