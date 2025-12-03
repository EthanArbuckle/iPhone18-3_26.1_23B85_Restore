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
  extensionContext = [(CNOnboardingPromptExtensionViewController *)self extensionContext];
  inputItems = [extensionContext inputItems];
  firstObject = [inputItems firstObject];

  userInfo = [firstObject userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"ContactName"];
  [(CNOnboardingPromptExtensionViewController *)self setContactName:v7];

  userInfo2 = [firstObject userInfo];
  v9 = [userInfo2 objectForKeyedSubscript:@"BottomCaption"];
  [(CNOnboardingPromptExtensionViewController *)self setBottomCaption:v9];

  userInfo3 = [firstObject userInfo];
  v11 = [userInfo3 objectForKeyedSubscript:@"ContactBottomDetail"];
  [(CNOnboardingPromptExtensionViewController *)self setContactBottomDetail:v11];

  userInfo4 = [firstObject userInfo];
  v13 = [userInfo4 objectForKeyedSubscript:@"BottomCount"];
  [(CNOnboardingPromptExtensionViewController *)self setContactCountString:v13];

  userInfo5 = [firstObject userInfo];
  v15 = [userInfo5 objectForKeyedSubscript:@"ImageData"];
  [(CNOnboardingPromptExtensionViewController *)self setImageData:v15];

  userInfo6 = [firstObject userInfo];
  v17 = [userInfo6 objectForKeyedSubscript:@"AvatarWidth"];
  [v17 floatValue];
  [(CNOnboardingPromptExtensionViewController *)self setAvatarWidth:v18];

  userInfo7 = [firstObject userInfo];
  v20 = [userInfo7 objectForKeyedSubscript:@"AvatarTrailingSpace"];
  [v20 floatValue];
  [(CNOnboardingPromptExtensionViewController *)self setAvatarTrailingSpace:v21];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    contactName = [(CNOnboardingPromptExtensionViewController *)self contactName];
    contactBottomDetail = [(CNOnboardingPromptExtensionViewController *)self contactBottomDetail];
    bottomCaption = [(CNOnboardingPromptExtensionViewController *)self bottomCaption];
    contactCountString = [(CNOnboardingPromptExtensionViewController *)self contactCountString];
    imageData = [(CNOnboardingPromptExtensionViewController *)self imageData];
    *buf = 138478851;
    v29 = contactName;
    v30 = 2113;
    v31 = contactBottomDetail;
    v32 = 2112;
    v33 = bottomCaption;
    v34 = 2112;
    v35 = contactCountString;
    v36 = 2113;
    v37 = imageData;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "#ContactsButton loadView<Start> contactName: %{private}@  contactBottomDetail: %{private}@  bottomCaption: %@   contactCountStr: %@  imageData: %{private}@", buf, 0x34u);
  }

  [(CNOnboardingPromptExtensionViewController *)self setPreferredContentSize:270.0, 125.0];
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = CNOnboardingPromptExtensionViewController;
  [(CNOnboardingPromptExtensionViewController *)&v16 viewDidLoad];
  contactName = [(CNOnboardingPromptExtensionViewController *)self contactName];
  contactBottomDetail = [(CNOnboardingPromptExtensionViewController *)self contactBottomDetail];
  contactCountString = [(CNOnboardingPromptExtensionViewController *)self contactCountString];
  bottomCaption = [(CNOnboardingPromptExtensionViewController *)self bottomCaption];
  [(CNOnboardingPromptExtensionViewController *)self avatarWidth];
  v8 = v7;
  [(CNOnboardingPromptExtensionViewController *)self avatarTrailingSpace];
  v10 = v9;
  imageData = [(CNOnboardingPromptExtensionViewController *)self imageData];
  v12 = [_TtC25OnboardingPromptExtension35OnboardingContactHostViewController makeHostingControllerWithName:contactName bottomField:contactBottomDetail contactCountText:contactCountString bottomText:bottomCaption avatarWidth:imageData trailPadding:v8 imageData:v10];

  view = [v12 view];
  [view setFrame:{0.0, 0.0, 270.0, 125.0}];

  view2 = [(CNOnboardingPromptExtensionViewController *)self view];
  view3 = [v12 view];
  [view2 addSubview:view3];
}

@end