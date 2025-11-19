@interface CNOnboardingPromptExtensionViewController
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation CNOnboardingPromptExtensionViewController

- (void)loadView
{
  v27.receiver = self;
  v27.super_class = CNOnboardingPromptExtensionViewController;
  [(CNOnboardingPromptExtensionViewController *)&v27 loadView];
  v3 = [(CNOnboardingPromptExtensionViewController *)self extensionContext];
  v4 = [v3 inputItems];
  v5 = [v4 firstObject];

  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"ContactName"];
  [(CNOnboardingPromptExtensionViewController *)self setContactName:v7];

  v8 = [v5 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"BottomCaption"];
  [(CNOnboardingPromptExtensionViewController *)self setBottomCaption:v9];

  v10 = [v5 userInfo];
  v11 = [v10 objectForKeyedSubscript:@"ContactBottomDetail"];
  [(CNOnboardingPromptExtensionViewController *)self setContactBottomDetail:v11];

  v12 = [v5 userInfo];
  v13 = [v12 objectForKeyedSubscript:@"BottomCount"];
  [(CNOnboardingPromptExtensionViewController *)self setContactCountString:v13];

  v14 = [v5 userInfo];
  v15 = [v14 objectForKeyedSubscript:@"ImageData"];
  [(CNOnboardingPromptExtensionViewController *)self setImageData:v15];

  v16 = [v5 userInfo];
  v17 = [v16 objectForKeyedSubscript:@"AvatarWidth"];
  [v17 floatValue];
  [(CNOnboardingPromptExtensionViewController *)self setAvatarWidth:v18];

  v19 = [v5 userInfo];
  v20 = [v19 objectForKeyedSubscript:@"AvatarTrailingSpace"];
  [v20 floatValue];
  [(CNOnboardingPromptExtensionViewController *)self setAvatarTrailingSpace:v21];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v22 = [(CNOnboardingPromptExtensionViewController *)self contactName];
    v23 = [(CNOnboardingPromptExtensionViewController *)self contactBottomDetail];
    v24 = [(CNOnboardingPromptExtensionViewController *)self bottomCaption];
    v25 = [(CNOnboardingPromptExtensionViewController *)self contactCountString];
    v26 = [(CNOnboardingPromptExtensionViewController *)self imageData];
    *buf = 138478851;
    v29 = v22;
    v30 = 2113;
    v31 = v23;
    v32 = 2112;
    v33 = v24;
    v34 = 2112;
    v35 = v25;
    v36 = 2113;
    v37 = v26;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "#ContactsButton loadView<Start> contactName: %{private}@  contactBottomDetail: %{private}@  bottomCaption: %@   contactCountStr: %@  imageData: %{private}@", buf, 0x34u);
  }

  [(CNOnboardingPromptExtensionViewController *)self setPreferredContentSize:270.0, 125.0];
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = CNOnboardingPromptExtensionViewController;
  [(CNOnboardingPromptExtensionViewController *)&v16 viewDidLoad];
  v3 = [(CNOnboardingPromptExtensionViewController *)self contactName];
  v4 = [(CNOnboardingPromptExtensionViewController *)self contactBottomDetail];
  v5 = [(CNOnboardingPromptExtensionViewController *)self contactCountString];
  v6 = [(CNOnboardingPromptExtensionViewController *)self bottomCaption];
  [(CNOnboardingPromptExtensionViewController *)self avatarWidth];
  v8 = v7;
  [(CNOnboardingPromptExtensionViewController *)self avatarTrailingSpace];
  v10 = v9;
  v11 = [(CNOnboardingPromptExtensionViewController *)self imageData];
  v12 = [_TtC25OnboardingPromptExtension35OnboardingContactHostViewController makeHostingControllerWithName:v3 bottomField:v4 contactCountText:v5 bottomText:v6 avatarWidth:v11 trailPadding:v8 imageData:v10];

  v13 = [v12 view];
  [v13 setFrame:{0.0, 0.0, 270.0, 125.0}];

  v14 = [(CNOnboardingPromptExtensionViewController *)self view];
  v15 = [v12 view];
  [v14 addSubview:v15];
}

@end