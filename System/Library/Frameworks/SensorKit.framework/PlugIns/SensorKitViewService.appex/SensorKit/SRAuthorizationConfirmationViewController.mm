@interface SRAuthorizationConfirmationViewController
+ (void)initialize;
- (void)addHeaderToStackView:(id)view withSpacing:(double)spacing text:(id)text;
- (void)addLabelToStackView:(id)view withSpacing:(double)spacing text:(id)text font:(id)font;
- (void)cancelPrompt;
- (void)changeAuthorization:(id)authorization;
- (void)dealloc;
- (void)prepareContentView;
- (void)viewDidLoad;
@end

@implementation SRAuthorizationConfirmationViewController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100015F20 = os_log_create("com.apple.SensorKit", "SRAuthorizationConfirmationViewController");
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SRAuthorizationConfirmationViewController;
  [(SRAuthorizationConfirmationViewController *)&v4 viewDidLoad];
  [-[SRAuthorizationConfirmationViewController headerView](self "headerView")];
  [(SRAuthorizationConfirmationViewController *)self prepareContentView];
  v3 = +[OBBoldTrayButton boldButton];
  [v3 setTitle:+[NSString srui_localizedStringForCode:](NSString forState:{"srui_localizedStringForCode:", 82), 0}];
  [v3 addTarget:self action:"changeAuthorization:" forControlEvents:64];
  [-[SRAuthorizationConfirmationViewController buttonTray](self "buttonTray")];
  [-[SRAuthorizationConfirmationViewController navigationItem](self "navigationItem")];
}

- (void)prepareContentView
{
  v3 = +[NSMutableArray array];
  v4 = +[NSMutableArray array];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000019FC;
  v15[3] = &unk_1000103E0;
  v15[4] = self;
  v15[5] = v3;
  v15[6] = v4;
  [(NSArray *)[(SRAuthorizationConfirmationViewController *)self authState] enumerateObjectsUsingBlock:v15];
  v5 = objc_alloc_init(UIStackView);
  [v5 setAxis:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setSpacing:22.0];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v10 = sub_100001A78;
  v11 = &unk_100010408;
  selfCopy = self;
  v13 = v5;
  v14 = +[UIImage skui_bulletImage];
  if ([v3 count])
  {
    (v10)(v9, v3, 49);
  }

  if ([v4 count])
  {
    (v10)(v9, v4, 50);
  }

  [(SRAuthorizationConfirmationViewController *)self addHeaderToStackView:v5 withSpacing:[NSString text:"srui_localizedStringForCode:" srui_localizedStringForCode:?], 6.0];
  v8 = 0;
  v6 = [NSString stringWithValidatedFormat:[(NSBundle *)[(SRAuthorizationConfirmationViewController *)self appBundle] srui_localizedAuthorizationConfirmationDetail] validFormatSpecifiers:@"%@" error:&v8, [(NSBundle *)[(SRAuthorizationConfirmationViewController *)self appBundle] sk_studyName]];
  if (!v6)
  {
    v7 = qword_100015F20;
    if (os_log_type_enabled(qword_100015F20, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v18 = v8;
      _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Failed to localize string because %{public}@", buf, 0xCu);
    }
  }

  [(SRAuthorizationConfirmationViewController *)self addLabelToStackView:v5 withSpacing:v6 text:[UIFont font:"preferredFontForTextStyle:" preferredFontForTextStyle:?], 6.0];
  [-[SRAuthorizationConfirmationViewController contentView](self "contentView")];
  v16[0] = [objc_msgSend(v5 "topAnchor")];
  v16[1] = [objc_msgSend(v5 "leadingAnchor")];
  v16[2] = [objc_msgSend(v5 "trailingAnchor")];
  v16[3] = [objc_msgSend(v5 "bottomAnchor")];
  [NSLayoutConstraint activateConstraints:[NSArray arrayWithObjects:v16 count:4]];
}

- (void)dealloc
{
  [(SRAuthorizationConfirmationViewController *)self setAuthState:0];
  [(SRAuthorizationConfirmationViewController *)self setServices:0];
  [(SRAuthorizationConfirmationViewController *)self setAppBundle:0];
  [(SRAuthorizationConfirmationViewController *)self setCompletionHandler:0];
  [(SRAuthorizationConfirmationViewController *)self setCancelHandler:0];
  [(SRAuthorizationConfirmationViewController *)self setAuthStore:0];
  v3.receiver = self;
  v3.super_class = SRAuthorizationConfirmationViewController;
  [(SRAuthorizationConfirmationViewController *)&v3 dealloc];
}

- (void)changeAuthorization:(id)authorization
{
  v5 = qword_100015F20;
  if (os_log_type_enabled(qword_100015F20, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Button pressed to confirm authorization changes. Updating TCC...", buf, 2u);
  }

  [authorization setUserInteractionEnabled:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001ED8;
  v8[3] = &unk_100010430;
  v8[4] = self;
  [(NSArray *)[(SRAuthorizationConfirmationViewController *)self authState] enumerateObjectsUsingBlock:v8];
  v6 = qword_100015F20;
  if (os_log_type_enabled(qword_100015F20, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "TCC updates complete, telling daemon to start recording", buf, 2u);
  }

  [+[SRAuthorizationClient sharedInstance](SRAuthorizationClient completeEnrollmentForBundleId:"completeEnrollmentForBundleId:sensors:" sensors:[(NSBundle *)[(SRAuthorizationConfirmationViewController *)self appBundle] bundleIdentifier], [(SRAuthorizationStore *)[(SRAuthorizationConfirmationViewController *)self authStore] sensors]];
  v7 = qword_100015F20;
  if (os_log_type_enabled(qword_100015F20, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Daemon update complete, telling delegate to continue", buf, 2u);
  }

  (*([(SRAuthorizationConfirmationViewController *)self completionHandler]+ 2))();
}

- (void)cancelPrompt
{
  v2 = *([(SRAuthorizationConfirmationViewController *)self cancelHandler]+ 2);

  v2();
}

- (void)addHeaderToStackView:(id)view withSpacing:(double)spacing text:(id)text
{
  v9 = [UIFont fontWithDescriptor:[[UIFontDescriptor preferredFontDescriptorWithTextStyle:?] size:"fontDescriptorWithSymbolicTraits:", 2], 0.0];

  [(SRAuthorizationConfirmationViewController *)self addLabelToStackView:view withSpacing:text text:v9 font:spacing];
}

- (void)addLabelToStackView:(id)view withSpacing:(double)spacing text:(id)text font:(id)font
{
  v10 = objc_alloc_init(UILabel);
  [v10 setText:text];
  [v10 setTextAlignment:4];
  [v10 setLineBreakMode:0];
  [v10 setNumberOfLines:0];
  [v10 setFont:font];
  [view addArrangedSubview:v10];
  [view setCustomSpacing:v10 afterView:spacing];
}

@end