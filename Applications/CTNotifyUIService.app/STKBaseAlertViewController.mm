@interface STKBaseAlertViewController
- (BOOL)validateAction:(id)action;
- (unint64_t)supportedInterfaceOrientations;
- (void)_displayDidTimeout;
- (void)_keyboardWillChangeFrame:(id)frame;
- (void)_restartTimeoutTimer:(float)timer;
- (void)clearTimeoutTimer;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dealloc;
- (void)dismiss;
- (void)startTimeoutTimerIfNecessary;
- (void)viewDidLoad;
@end

@implementation STKBaseAlertViewController

- (void)dealloc
{
  [(STKSessionAction *)self->_sessionAction invalidate];
  [(STKBaseAlertViewController *)self clearTimeoutTimer];
  v3.receiver = self;
  v3.super_class = STKBaseAlertViewController;
  [(STKBaseAlertViewController *)&v3 dealloc];
}

- (void)startTimeoutTimerIfNecessary
{
  behavior = [(STKSessionAction *)self->_sessionAction behavior];
  [behavior timeout];
  v5 = v4;

  HIDWORD(v6) = 1065646817;
  if (v5 <= 0.01)
  {

    [(STKBaseAlertViewController *)self clearTimeoutTimer];
  }

  else
  {

    *&v6 = v5;
    [(STKBaseAlertViewController *)self _restartTimeoutTimer:v6];
  }
}

- (void)clearTimeoutTimer
{
  [(NSTimer *)self->_timeoutTimer invalidate];
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = 0;
}

- (void)dismiss
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100004304;
  v3[3] = &unk_100018438;
  v3[4] = self;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000434C;
  v2[3] = &unk_100018460;
  v2[4] = self;
  [UIView animateWithDuration:v3 animations:v2 completion:0.3];
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
  v74.receiver = self;
  v74.super_class = STKBaseAlertViewController;
  [(STKBaseAlertViewController *)&v74 viewDidLoad];
  view = [(STKBaseAlertViewController *)self view];
  v4 = [UIColor colorWithRed:0.0431372549 green:0.0431372549 blue:0.0431372549 alpha:0.9];
  [view setBackgroundColor:v4];

  v5 = &selRef_setConstant_;
  v73 = view;
  if ([objc_opt_class() wantsTextView])
  {
    v6 = objc_alloc_init(UITextView);
    textView = self->_textView;
    self->_textView = v6;

    [(UITextView *)self->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = self->_textView;
    v9 = [UIFont systemFontOfSize:18.0];
    [(UITextView *)v8 setFont:v9];

    v10 = self->_textView;
    v11 = +[UIColor whiteColor];
    [(UITextView *)v10 setTextColor:v11];

    v12 = self->_textView;
    v13 = +[UIColor clearColor];
    [(UITextView *)v12 setBackgroundColor:v13];

    [(UITextView *)self->_textView setTextAlignment:1];
    [(UITextView *)self->_textView setEditable:0];
    centerYAnchor = [(UITextView *)self->_textView centerYAnchor];
    centerYAnchor2 = [view centerYAnchor];
    v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    textViewCenterYConstraint = self->_textViewCenterYConstraint;
    self->_textViewCenterYConstraint = v16;

    LODWORD(v18) = 1144766464;
    [(NSLayoutConstraint *)self->_textViewCenterYConstraint setPriority:v18];
    bottomBar = self->_bottomBar;
    if (bottomBar)
    {
      topAnchor = [(UIView *)bottomBar topAnchor];
    }

    else
    {
      safeAreaLayoutGuide = [view safeAreaLayoutGuide];
      topAnchor = [safeAreaLayoutGuide bottomAnchor];
    }

    topBar = self->_topBar;
    if (topBar)
    {
      bottomAnchor = [(UIView *)topBar bottomAnchor];
    }

    else
    {
      safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
      bottomAnchor = [safeAreaLayoutGuide2 topAnchor];
    }

    v64 = bottomAnchor;
    [view addSubview:self->_textView];
    leadingAnchor = [(UITextView *)self->_textView leadingAnchor];
    leadingAnchor2 = [view leadingAnchor];
    v67 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:30.0];
    v77[0] = v67;
    trailingAnchor = [(UITextView *)self->_textView trailingAnchor];
    trailingAnchor2 = [view trailingAnchor];
    v63 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-30.0];
    v77[1] = v63;
    topAnchor2 = [(UITextView *)self->_textView topAnchor];
    v25 = [topAnchor2 constraintEqualToAnchor:bottomAnchor constant:30.0];
    v77[2] = v25;
    bottomAnchor2 = [(UITextView *)self->_textView bottomAnchor];
    v27 = [bottomAnchor2 constraintEqualToAnchor:topAnchor constant:-30.0];
    v77[3] = v27;
    centerXAnchor = [(UITextView *)self->_textView centerXAnchor];
    centerXAnchor2 = [view centerXAnchor];
    v30 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v31 = self->_textViewCenterYConstraint;
    v77[4] = v30;
    v77[5] = v31;
    v32 = [NSArray arrayWithObjects:v77 count:6];
    [NSLayoutConstraint activateConstraints:v32];

    view = v73;
    v5 = &selRef_setConstant_;
  }

  newTopBar = [(STKBaseAlertViewController *)self newTopBar];
  v34 = self->_topBar;
  self->_topBar = newTopBar;

  [(UIView *)self->_topBar setTranslatesAutoresizingMaskIntoConstraints:0];
  if (self->_topBar)
  {
    [view addSubview:?];
    topAnchor3 = [(UIView *)self->_topBar topAnchor];
    safeAreaLayoutGuide3 = [view safeAreaLayoutGuide];
    topAnchor4 = [safeAreaLayoutGuide3 topAnchor];
    v36 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v76[0] = v36;
    widthAnchor = [(UIView *)self->_topBar widthAnchor];
    widthAnchor2 = [view widthAnchor];
    v39 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v76[1] = v39;
    centerXAnchor3 = [(UIView *)self->_topBar centerXAnchor];
    centerXAnchor4 = [v73 centerXAnchor];
    v42 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v76[2] = v42;
    v43 = [NSArray arrayWithObjects:v76 count:3];
    [NSLayoutConstraint activateConstraints:v43];

    view = v73;
    v5 = &selRef_setConstant_;
  }

  newBottomBar = [(STKBaseAlertViewController *)self newBottomBar];
  v45 = *(v5 + 574);
  v46 = *&self->SBUIRemoteAlertServiceViewController_opaque[v45];
  *&self->SBUIRemoteAlertServiceViewController_opaque[v45] = newBottomBar;

  [*&self->SBUIRemoteAlertServiceViewController_opaque[v45] setTranslatesAutoresizingMaskIntoConstraints:0];
  if (*&self->SBUIRemoteAlertServiceViewController_opaque[v45])
  {
    [view addSubview:?];
    bottomAnchor3 = [*&self->SBUIRemoteAlertServiceViewController_opaque[v45] bottomAnchor];
    safeAreaLayoutGuide4 = [view safeAreaLayoutGuide];
    bottomAnchor4 = [safeAreaLayoutGuide4 bottomAnchor];
    v50 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    bottomBarBottomConstraint = self->_bottomBarBottomConstraint;
    self->_bottomBarBottomConstraint = v50;

    v75[0] = self->_bottomBarBottomConstraint;
    widthAnchor3 = [*&self->SBUIRemoteAlertServiceViewController_opaque[v45] widthAnchor];
    widthAnchor4 = [view widthAnchor];
    v54 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    v75[1] = v54;
    centerXAnchor5 = [*&self->SBUIRemoteAlertServiceViewController_opaque[v45] centerXAnchor];
    centerXAnchor6 = [view centerXAnchor];
    v57 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v75[2] = v57;
    heightAnchor = [*&self->SBUIRemoteAlertServiceViewController_opaque[v45] heightAnchor];
    [*&self->SBUIRemoteAlertServiceViewController_opaque[v45] bounds];
    v60 = [heightAnchor constraintEqualToConstant:v59];
    v75[3] = v60;
    v61 = [NSArray arrayWithObjects:v75 count:4];
    [NSLayoutConstraint activateConstraints:v61];

    view = v73;
    v62 = +[NSNotificationCenter defaultCenter];
    [v62 addObserver:self selector:"_keyboardWillChangeFrame:" name:UIKeyboardWillChangeFrameNotification object:0];
  }
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
        if (v12)
        {
          v13 = v12;
          if ([(STKBaseAlertViewController *)self validateAction:v12])
          {
            objc_storeStrong(&self->_sessionAction, v13);
          }

          goto LABEL_13;
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

LABEL_13:

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sessionAction = self->_sessionAction;
    *buf = 138412290;
    v20 = sessionAction;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "sessionAction = %@", buf, 0xCu);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (BOOL)validateAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_keyboardWillChangeFrame:(id)frame
{
  userInfo = [frame userInfo];
  v5 = [userInfo objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v20.origin.x = v7;
  v20.origin.y = v9;
  v20.size.width = v11;
  v20.size.height = v13;
  MinY = CGRectGetMinY(v20);
  view = [(STKBaseAlertViewController *)self view];
  [view bounds];
  MaxY = CGRectGetMaxY(v21);

  v17 = MaxY - MinY;
  [(NSLayoutConstraint *)self->_bottomBarBottomConstraint setConstant:-v17];
  textViewCenterYConstraint = self->_textViewCenterYConstraint;

  [(NSLayoutConstraint *)textViewCenterYConstraint setConstant:v17 * -0.5];
}

- (void)_restartTimeoutTimer:(float)timer
{
  [(STKBaseAlertViewController *)self clearTimeoutTimer];
  v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"_displayDidTimeout" selector:0 userInfo:0 repeats:timer];
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = v5;

  _objc_release_x1();
}

- (void)_displayDidTimeout
{
  [(STKSessionAction *)self->_sessionAction sendResponse:2];

  [(STKBaseAlertViewController *)self dismiss];
}

@end