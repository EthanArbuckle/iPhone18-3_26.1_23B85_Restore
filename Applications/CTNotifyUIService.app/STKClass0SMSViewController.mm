@interface STKClass0SMSViewController
- (id)alertContainerView;
- (id)blurEffectContainerView;
- (id)contentContainerView;
- (id)darkBlurView;
- (id)dismissButton;
- (id)learnMoreButton;
- (id)messageTextLabel;
- (id)messageTitleLabel;
- (unint64_t)supportedInterfaceOrientations;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dealloc;
- (void)dismiss;
- (void)learnMoreButtonClicked:(id)clicked;
- (void)setMessageString:(id)string;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation STKClass0SMSViewController

- (void)dealloc
{
  [(STKClass0SMSSessionAction *)self->_sessionAction invalidate];
  v3.receiver = self;
  v3.super_class = STKClass0SMSViewController;
  [(STKClass0SMSViewController *)&v3 dealloc];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = STKClass0SMSViewController;
  [(STKClass0SMSViewController *)&v4 viewDidLoad];
  _remoteViewControllerProxy = [(STKClass0SMSViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setAllowsAlertStacking:1];
}

- (void)viewDidLayoutSubviews
{
  v74.receiver = self;
  v74.super_class = STKClass0SMSViewController;
  [(STKClass0SMSViewController *)&v74 viewDidLayoutSubviews];
  view = [(STKClass0SMSViewController *)self view];
  [view bounds];
  v71 = v5;
  v72 = v4;
  v70 = v6;
  v73 = v7;

  view2 = [(STKClass0SMSViewController *)self view];
  [view2 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  messageTitleLabel = [(STKClass0SMSViewController *)self messageTitleLabel];
  learnMoreButton = [(STKClass0SMSViewController *)self learnMoreButton];
  messageTextLabel = [(STKClass0SMSViewController *)self messageTextLabel];
  v75.origin.x = v10;
  v75.origin.y = v12;
  v20 = v12;
  v75.size.width = v14;
  v75.size.height = v16;
  v21 = CGRectGetHeight(v75) + -40.0 + -52.0 + -24.0;
  [messageTitleLabel frame];
  v22 = v21 - (CGRectGetHeight(v76) + 16.0);
  [learnMoreButton frame];
  v23 = v22 - (CGRectGetHeight(v77) + 32.0) + -44.0;
  [messageTextLabel sizeThatFits:?];
  if (v24 >= v23)
  {
    v24 = v23;
  }

  rect_16 = v24;
  y = CGRectZero.origin.y;
  v26 = v24 + 52.0 + 44.0 + 24.0;
  v78.origin.x = v10;
  v78.origin.y = v20;
  v78.size.width = v14;
  v78.size.height = v16;
  v27 = CGRectGetWidth(v78) * 0.5;
  v79.origin.x = CGRectZero.origin.x;
  rect_8 = y;
  v79.origin.y = y;
  v79.size.width = 270.0;
  v79.size.height = v26;
  v28 = v27 - CGRectGetWidth(v79) * 0.5;
  v80.origin.x = v10;
  v80.origin.y = v20;
  v80.size.width = v14;
  v80.size.height = v16;
  v29 = CGRectGetHeight(v80) * 0.5;
  v81.origin.x = v28;
  v81.origin.y = y;
  v81.size.width = 270.0;
  v81.size.height = v26;
  v30 = v29 - CGRectGetHeight(v81) * 0.5;
  contentContainerView = [(STKClass0SMSViewController *)self contentContainerView];
  blurEffectContainerView = [(STKClass0SMSViewController *)self blurEffectContainerView];
  [blurEffectContainerView setFrame:{v28, v30, 270.0, v26}];
  recta = v30;
  v33 = v26;
  [contentContainerView setFrame:{v28, v30, 270.0, v26}];
  view3 = [(STKClass0SMSViewController *)self view];
  [view3 bringSubviewToFront:contentContainerView];

  [messageTitleLabel frame];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v82.origin.x = v28;
  v82.origin.y = v30;
  v82.size.width = 270.0;
  v82.size.height = v33;
  v43 = CGRectGetWidth(v82) * 0.5;
  v83.origin.x = v36;
  v83.origin.y = v38;
  v83.size.width = v40;
  v83.size.height = v42;
  v44 = v43 - CGRectGetWidth(v83) * 0.5;
  v84.origin.x = v44;
  v84.origin.y = v38;
  v84.size.width = v40;
  v84.size.height = v42;
  v45 = 36.0 - CGRectGetHeight(v84);
  [messageTitleLabel setFrame:{v44, v45, v40, v42}];
  v85.origin.x = v44;
  v85.origin.y = v45;
  v85.size.width = v40;
  v85.size.height = v42;
  v46 = CGRectGetMaxY(v85) + 16.0;
  [messageTextLabel setFrame:{20.0, v46, 230.0, rect_16}];
  dismissButton = [(STKClass0SMSViewController *)self dismissButton];
  [blurEffectContainerView frame];
  Width = CGRectGetWidth(v86);
  v87.origin.x = v28;
  v87.size.width = 270.0;
  v87.origin.y = recta;
  v87.size.height = v33;
  v49 = CGRectGetWidth(v87) * 0.5;
  v88.origin.x = CGRectZero.origin.x;
  v88.origin.y = rect_8;
  v88.size.width = Width;
  v88.size.height = 44.0;
  v50 = v49 - CGRectGetWidth(v88) * 0.5;
  v89.origin.x = 20.0;
  v89.origin.y = v46;
  v89.size.width = 230.0;
  v89.size.height = rect_16;
  [dismissButton setFrame:{v50, CGRectGetMaxY(v89) + 24.0, Width, 44.0}];
  lineLayer = self->_lineLayer;
  [dismissButton frame];
  v53 = v52;
  [dismissButton frame];
  [(CALayer *)lineLayer setFrame:v53, -1.0, CGRectGetWidth(v90), 1.0];
  alertContainerView = [(STKClass0SMSViewController *)self alertContainerView];
  [alertContainerView setFrame:{v72, v71, v70, v73}];
  darkBlurView = [(STKClass0SMSViewController *)self darkBlurView];
  [darkBlurView setFrame:{v72, v71, v70, v73}];
  [learnMoreButton sizeToFit];
  [learnMoreButton frame];
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v91.origin.x = v72;
  v91.origin.y = v71;
  v91.size.width = v70;
  v91.size.height = v73;
  v64 = CGRectGetHeight(v91) + -32.0;
  v92.origin.x = v57;
  v92.origin.y = v59;
  v92.size.width = v61;
  v92.size.height = v63;
  v65 = v64 - CGRectGetHeight(v92);
  v93.origin.x = v72;
  v93.origin.y = v71;
  v93.size.width = v70;
  v93.size.height = v73;
  v66 = CGRectGetWidth(v93) * 0.5;
  v94.origin.x = v57;
  v94.origin.y = v65;
  v94.size.width = v61;
  v94.size.height = v63;
  [learnMoreButton setFrame:{v66 - CGRectGetWidth(v94) * 0.5, v65, v61, v63}];
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  actions = [context actions];
  v8 = [actions countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(actions);
        }

        v12 = [STKSessionAction _sessionActionFromBSAction:*(*(&v15 + 1) + 8 * i)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          sessionAction = self->_sessionAction;
          self->_sessionAction = v12;

          goto LABEL_11;
        }
      }

      v9 = [actions countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v14 = self->_sessionAction;
    *buf = 138412290;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "sessionAction = %@", buf, 0xCu);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)learnMoreButtonClicked:(id)clicked
{
  v5 = [[STKClass0SMSAboutViewController alloc] initWithNibName:0 bundle:0];
  v4 = [[UINavigationController alloc] initWithRootViewController:v5];
  [(STKClass0SMSViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)dismiss
{
  [(STKClass0SMSSessionAction *)self->_sessionAction sendResponse:0];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100005AA8;
  v4[3] = &unk_100018438;
  v4[4] = self;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100005AF0;
  v3[3] = &unk_100018460;
  v3[4] = self;
  [UIView animateWithDuration:v4 animations:v3 completion:0.3];
}

- (void)setMessageString:(id)string
{
  stringCopy = string;
  sessionAction = [(STKClass0SMSViewController *)self sessionAction];
  sessionData = [sessionAction sessionData];

  address = [sessionData address];
  if ([address length] && objc_msgSend(sessionData, "showsFromAddress"))
  {
    v8 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v9 = [v8 localizedStringForKey:@"CLASS_0_ALERT_MESSAGE_FROM" value:&stru_100018670 table:@"SIMToolkitUI"];
    v10 = [NSString stringWithFormat:v9, address];

    v15[0] = v10;
    v15[1] = stringCopy;
    v11 = [NSArray arrayWithObjects:v15 count:2];
    v12 = [v11 componentsJoinedByString:@"\n"];

    stringCopy = v12;
  }

  messageTextLabel = [(STKClass0SMSViewController *)self messageTextLabel];
  [messageTextLabel setText:stringCopy];

  view = [(STKClass0SMSViewController *)self view];
  [view setNeedsLayout];
}

- (id)contentContainerView
{
  contentContainerView = self->_contentContainerView;
  if (!contentContainerView)
  {
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_contentContainerView;
    self->_contentContainerView = v4;

    v6 = self->_contentContainerView;
    v7 = +[UIColor clearColor];
    [(UIView *)v6 setBackgroundColor:v7];

    view = [(STKClass0SMSViewController *)self view];
    [view addSubview:self->_contentContainerView];

    contentContainerView = self->_contentContainerView;
  }

  return contentContainerView;
}

- (id)messageTitleLabel
{
  messageTitleLabel = self->_messageTitleLabel;
  if (!messageTitleLabel)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_messageTitleLabel;
    self->_messageTitleLabel = v4;

    v6 = self->_messageTitleLabel;
    v7 = [UIFont boldSystemFontOfSize:17.0];
    [(UILabel *)v6 setFont:v7];

    v8 = self->_messageTitleLabel;
    v9 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v10 = [v9 localizedStringForKey:@"CLASS0SMS_ALERT_TITLE" value:&stru_100018670 table:@"SIMToolkitUI"];
    [(UILabel *)v8 setText:v10];

    v11 = self->_messageTitleLabel;
    v12 = +[UIColor whiteColor];
    [(UILabel *)v11 setTextColor:v12];

    [(UILabel *)self->_messageTitleLabel sizeToFit];
    contentContainerView = [(STKClass0SMSViewController *)self contentContainerView];
    [contentContainerView addSubview:self->_messageTitleLabel];

    messageTitleLabel = self->_messageTitleLabel;
  }

  return messageTitleLabel;
}

- (id)messageTextLabel
{
  messageTextLabel = self->_messageTextLabel;
  if (!messageTextLabel)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_messageTextLabel;
    self->_messageTextLabel = v4;

    [(UILabel *)self->_messageTextLabel setTextAlignment:1];
    v6 = self->_messageTextLabel;
    v7 = [UIFont systemFontOfSize:15.0];
    [(UILabel *)v6 setFont:v7];

    v8 = self->_messageTextLabel;
    v9 = +[UIColor whiteColor];
    [(UILabel *)v8 setTextColor:v9];

    [(UILabel *)self->_messageTextLabel setLineBreakMode:0];
    [(UILabel *)self->_messageTextLabel setNumberOfLines:0];
    contentContainerView = [(STKClass0SMSViewController *)self contentContainerView];
    [contentContainerView addSubview:self->_messageTextLabel];

    messageTextLabel = self->_messageTextLabel;
  }

  return messageTextLabel;
}

- (id)dismissButton
{
  dismissButton = self->_dismissButton;
  if (!dismissButton)
  {
    v4 = [UIButton buttonWithType:1];
    v5 = self->_dismissButton;
    self->_dismissButton = v4;

    v6 = self->_dismissButton;
    v7 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v8 = [v7 localizedStringForKey:@"CLASS0SMS_DISMISS" value:&stru_100018670 table:@"SIMToolkitUI"];
    [(UIButton *)v6 setTitle:v8 forState:0];

    titleLabel = [(UIButton *)self->_dismissButton titleLabel];
    v10 = [UIFont boldSystemFontOfSize:17.0];
    [titleLabel setFont:v10];

    titleLabel2 = [(UIButton *)self->_dismissButton titleLabel];
    [titleLabel2 sizeToFit];

    v12 = self->_dismissButton;
    v13 = +[UIColor whiteColor];
    [(UIButton *)v12 setTitleColor:v13 forState:0];

    [(UIButton *)self->_dismissButton addTarget:self action:"dismissButtonClicked:" forControlEvents:64];
    contentContainerView = [(STKClass0SMSViewController *)self contentContainerView];
    [contentContainerView addSubview:self->_dismissButton];

    v15 = +[CALayer layer];
    lineLayer = self->_lineLayer;
    self->_lineLayer = v15;

    v17 = self->_lineLayer;
    v18 = +[UIColor blackColor];
    -[CALayer setBackgroundColor:](v17, "setBackgroundColor:", [v18 CGColor]);

    LODWORD(v19) = 1036831949;
    [(CALayer *)self->_lineLayer setOpacity:v19];
    layer = [(UIButton *)self->_dismissButton layer];
    [layer addSublayer:self->_lineLayer];

    dismissButton = self->_dismissButton;
  }

  return dismissButton;
}

- (id)learnMoreButton
{
  learnMoreButton = self->_learnMoreButton;
  if (!learnMoreButton)
  {
    v4 = [UIButton buttonWithType:1];
    v5 = self->_learnMoreButton;
    self->_learnMoreButton = v4;

    v6 = self->_learnMoreButton;
    v7 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v8 = [v7 localizedStringForKey:@"CLASS0SMS_ALERT_LEARN_MORE_TITLE" value:&stru_100018670 table:@"SIMToolkitUI"];
    [(UIButton *)v6 setTitle:v8 forState:0];

    [(UIButton *)self->_learnMoreButton addTarget:self action:"learnMoreButtonClicked:" forControlEvents:64];
    v9 = self->_learnMoreButton;
    v10 = +[UIColor whiteColor];
    [(UIButton *)v9 setTitleColor:v10 forState:0];

    alertContainerView = [(STKClass0SMSViewController *)self alertContainerView];
    contentView = [alertContainerView contentView];
    [contentView addSubview:self->_learnMoreButton];

    learnMoreButton = self->_learnMoreButton;
  }

  return learnMoreButton;
}

- (id)darkBlurView
{
  darkBlurView = self->_darkBlurView;
  if (!darkBlurView)
  {
    v4 = objc_alloc_init(UIVisualEffectView);
    v5 = self->_darkBlurView;
    self->_darkBlurView = v4;

    v6 = [UIBlurEffect effectWithStyle:2];
    [(UIVisualEffectView *)self->_darkBlurView setEffect:v6];
    view = [(STKClass0SMSViewController *)self view];
    [view insertSubview:self->_darkBlurView atIndex:0];

    darkBlurView = self->_darkBlurView;
  }

  return darkBlurView;
}

- (id)alertContainerView
{
  alertContainerView = self->_alertContainerView;
  if (!alertContainerView)
  {
    v4 = objc_alloc_init(UIVisualEffectView);
    v5 = self->_alertContainerView;
    self->_alertContainerView = v4;

    v6 = [UIBlurEffect effectWithStyle:2];
    v7 = [UIVibrancyEffect effectForBlurEffect:v6];

    [(UIVisualEffectView *)self->_alertContainerView setEffect:v7];
    v8 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v9 = +[UIColor clearColor];
    [v8 setBackgroundColor:v9];

    contentView = [(UIVisualEffectView *)self->_alertContainerView contentView];
    [contentView addSubview:v8];

    view = [(STKClass0SMSViewController *)self view];
    [view insertSubview:self->_alertContainerView atIndex:0];

    view2 = [(STKClass0SMSViewController *)self view];
    [view2 setNeedsLayout];

    alertContainerView = self->_alertContainerView;
  }

  return alertContainerView;
}

- (id)blurEffectContainerView
{
  blurEffectContainerView = self->_blurEffectContainerView;
  if (!blurEffectContainerView)
  {
    v4 = [[UIVisualEffectView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_blurEffectContainerView;
    self->_blurEffectContainerView = v4;

    v6 = [UIBlurEffect effectWithStyle:1];
    [(UIVisualEffectView *)self->_blurEffectContainerView setEffect:v6];
    [(UIVisualEffectView *)self->_blurEffectContainerView setAlpha:0.6];
    layer = [(UIVisualEffectView *)self->_blurEffectContainerView layer];
    [layer setCornerRadius:13.0];

    [(UIVisualEffectView *)self->_blurEffectContainerView setClipsToBounds:1];
    view = [(STKClass0SMSViewController *)self view];
    [view addSubview:self->_blurEffectContainerView];

    blurEffectContainerView = self->_blurEffectContainerView;
  }

  return blurEffectContainerView;
}

@end