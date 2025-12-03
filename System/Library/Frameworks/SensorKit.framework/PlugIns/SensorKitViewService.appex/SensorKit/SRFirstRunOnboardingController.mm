@interface SRFirstRunOnboardingController
+ (void)initialize;
- (void)addNextButton;
- (void)cancelPrompt:(id)prompt;
- (void)completePrompt:(id)prompt;
- (void)dealloc;
- (void)disableSensorKit:(id)kit;
- (void)enableSensorKit:(id)kit;
- (void)loadPrivacy;
- (void)loadTurnOn;
- (void)loadWelcome;
- (void)presentNextStep:(id)step;
- (void)showSensorKitPrivacyPage:(id)page;
- (void)viewDidLoad;
@end

@implementation SRFirstRunOnboardingController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100015F48 = os_log_create("com.apple.SensorKit", "SRLogFirstRunOnboardingController");
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SRFirstRunOnboardingController;
  [(SRFirstRunOnboardingController *)&v2 dealloc];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SRFirstRunOnboardingController;
  [(SRFirstRunOnboardingController *)&v5 viewDidLoad];
  step = self->_step;
  switch(step)
  {
    case 2:
      [(SRFirstRunOnboardingController *)self loadTurnOn];
      break;
    case 1:
      [(SRFirstRunOnboardingController *)self loadPrivacy];
      break;
    case 0:
      [(SRFirstRunOnboardingController *)self loadWelcome];
      break;
  }

  v4 = [[UIBarButtonItem alloc] initWithTitle:+[NSString srui_localizedStringForCode:](NSString style:"srui_localizedStringForCode:" target:26) action:{0, self, "cancelPrompt:"}];
  [-[SRFirstRunOnboardingController navigationItem](self "navigationItem")];
}

- (void)addNextButton
{
  v3 = +[OBBoldTrayButton boldButton];
  [v3 setTitle:+[NSString srui_localizedStringForCode:](NSString forState:{"srui_localizedStringForCode:", 58), 0}];
  [v3 addTarget:self action:"presentNextStep:" forControlEvents:64];
  buttonTray = [(SRFirstRunOnboardingController *)self buttonTray];

  [buttonTray addButton:v3];
}

- (void)loadWelcome
{
  [-[SRFirstRunOnboardingController headerView](self "headerView")];
  [-[SRFirstRunOnboardingController headerView](self "headerView")];

  [(SRFirstRunOnboardingController *)self addNextButton];
}

- (void)loadPrivacy
{
  v2 = objc_alloc_init(UIStackView);
  [v2 setAxis:1];
  for (i = 60; i != 64; ++i)
  {
    v4 = objc_autoreleasePoolPush();
    uIFontTextStyleHeadline = [[SRBulletedListItem alloc] initWithTitle:+[NSString srui_localizedStringForCode:](NSString description:"srui_localizedStringForCode:" image:i) textStyle:0, +[UIImage imageNamed:inBundle:withConfiguration:](UIImage, "imageNamed:inBundle:withConfiguration:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"bullet_%ld", i - 59), +[NSBundle skui_bundle], 0), UIFontTextStyleHeadline];
    [v2 addArrangedSubview:uIFontTextStyleHeadline];
    [v2 setCustomSpacing:objc_msgSend(objc_msgSend(v2 afterView:{"arrangedSubviews"), "lastObject"), 26.0}];

    objc_autoreleasePoolPop(v4);
  }

  v6 = [UIButton buttonWithType:1];
  [(UILabel *)[(UIButton *)v6 titleLabel] setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleBody]];
  [(UIButton *)v6 setTitle:[NSString forState:"srui_localizedStringForCode:" srui_localizedStringForCode:?], 0];
  [(UIButton *)v6 addTarget:self action:"showSensorKitPrivacyPage:" forControlEvents:64];
  [(UIButton *)v6 setAccessibilityTraits:UIAccessibilityTraitLink];
  [(UILabel *)[(UIButton *)v6 titleLabel] setLineBreakMode:0];
  [(UILabel *)[(UIButton *)v6 titleLabel] setNumberOfLines:0];
  [(UIButton *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)[(UIButton *)v6 titleLabel] setTextAlignment:4];
  [v2 addArrangedSubview:v6];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [-[SRFirstRunOnboardingController contentView](self "contentView")];
  v8[0] = [-[UIButton topAnchor](v6 "topAnchor")];
  v8[1] = [-[UIButton bottomAnchor](v6 "bottomAnchor")];
  v8[2] = [-[UILabel widthAnchor](-[UIButton titleLabel](v6 "titleLabel")];
  v8[3] = [objc_msgSend(v2 "topAnchor")];
  v8[4] = [objc_msgSend(v2 "leadingAnchor")];
  v8[5] = [objc_msgSend(v2 "trailingAnchor")];
  v8[6] = [objc_msgSend(v2 "bottomAnchor")];
  [NSLayoutConstraint activateConstraints:[NSArray arrayWithObjects:v8 count:7]];

  [(SRFirstRunOnboardingController *)self addNextButton];
}

- (void)showSensorKitPrivacyPage:(id)page
{
  v4 = qword_100015F48;
  if (os_log_type_enabled(qword_100015F48, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Showing Privacy Page", v6, 2u);
  }

  v5 = +[OBPrivacyPresenter srui_presenterForPrivacySplash];
  [v5 setPresentingViewController:self];
  [v5 present];
}

- (void)loadTurnOn
{
  v3 = +[OBLinkTrayButton linkButton];
  [v3 setBackgroundColor:{+[UIColor tertiarySystemFillColor](UIColor, "tertiarySystemFillColor")}];
  [v3 setClipsToBounds:1];
  [objc_msgSend(v3 "layer")];
  [v3 setTitle:+[NSString srui_localizedStringForCode:](NSString forState:{"srui_localizedStringForCode:", 65), 0}];
  [v3 addTarget:self action:"enableSensorKit:" forControlEvents:64];
  [-[SRFirstRunOnboardingController buttonTray](self "buttonTray")];
  v4 = +[OBLinkTrayButton linkButton];
  [v4 setBackgroundColor:{+[UIColor tertiarySystemFillColor](UIColor, "tertiarySystemFillColor")}];
  [v4 setClipsToBounds:1];
  [objc_msgSend(v4 "layer")];
  [v4 setTitle:+[NSString srui_localizedStringForCode:](NSString forState:{"srui_localizedStringForCode:", 66), 0}];
  [v4 addTarget:self action:"disableSensorKit:" forControlEvents:64];
  buttonTray = [(SRFirstRunOnboardingController *)self buttonTray];

  [buttonTray addButton:v4];
}

- (void)enableSensorKit:(id)kit
{
  [+[SRAuthorizationClient sharedInstance](SRAuthorizationClient setFirstRunOnboardingCompleted:"setFirstRunOnboardingCompleted:", 1];
  [+[SRAuthorizationClient sharedInstance](SRAuthorizationClient setDataCollectionEnabled:"setDataCollectionEnabled:", 1];

  [(SRFirstRunOnboardingController *)self completePrompt:kit];
}

- (void)disableSensorKit:(id)kit
{
  [+[SRAuthorizationClient sharedInstance](SRAuthorizationClient setFirstRunOnboardingCompleted:"setFirstRunOnboardingCompleted:", 0];
  [+[SRAuthorizationClient sharedInstance](SRAuthorizationClient setDataCollectionEnabled:"setDataCollectionEnabled:", 0];

  [(SRFirstRunOnboardingController *)self completePrompt:kit];
}

- (void)presentNextStep:(id)step
{
  step = self->_step;
  if (step >= 2)
  {
    v4 = qword_100015F48;
    if (os_log_type_enabled(qword_100015F48, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "Trying to go past the last step", buf, 2u);
    }

    return;
  }

  if (step)
  {
    if (step != 1)
    {
      v7 = 0;
      goto LABEL_10;
    }

    v6 = 55;
  }

  else
  {
    v6 = 54;
  }

  v7 = [NSString srui_localizedStringForCode:v6];
  if (!step)
  {
    v8 = 56;
    goto LABEL_14;
  }

LABEL_10:
  if (step != 1)
  {
    v9 = 0;
    goto LABEL_16;
  }

  v8 = 57;
LABEL_14:
  v9 = [NSString srui_localizedStringForCode:v8];
LABEL_16:
  v12 = [[SRFirstRunOnboardingController alloc] initWithTitle:v7 detailText:v9 icon:0 contentLayout:2];
  headerView = [(SRFirstRunOnboardingController *)v12 headerView];
  LODWORD(v11) = 1036831949;
  [headerView setTitleHyphenationFactor:v11];
  [(SRFirstRunOnboardingController *)v12 setStep:step + 1];
  [(SRFirstRunOnboardingController *)v12 setDelegate:[(SRFirstRunOnboardingController *)self delegate]];
  [-[SRFirstRunOnboardingController navigationController](self "navigationController")];
}

- (void)cancelPrompt:(id)prompt
{
  delegate = [(SRFirstRunOnboardingController *)self delegate];
  [(SRAuthorizationTableDelegate *)delegate authorizationTable:0 foundIssueWithApp:[NSError errorWithDomain:SRErrorDomain code:8196 userInfo:0]];

  [(SRAuthorizationTableDelegate *)delegate authorizationTableCompletedPromptSuccessfully:0];
}

- (void)completePrompt:(id)prompt
{
  delegate = [(SRFirstRunOnboardingController *)self delegate];

  [(SRAuthorizationTableDelegate *)delegate authorizationTableCompletedPromptSuccessfully:0];
}

@end