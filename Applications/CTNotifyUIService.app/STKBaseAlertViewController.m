@interface STKBaseAlertViewController
- (BOOL)validateAction:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_displayDidTimeout;
- (void)_keyboardWillChangeFrame:(id)a3;
- (void)_restartTimeoutTimer:(float)a3;
- (void)clearTimeoutTimer;
- (void)configureWithContext:(id)a3 completion:(id)a4;
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
  v3 = [(STKSessionAction *)self->_sessionAction behavior];
  [v3 timeout];
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
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
  v3 = [(STKBaseAlertViewController *)self view];
  v4 = [UIColor colorWithRed:0.0431372549 green:0.0431372549 blue:0.0431372549 alpha:0.9];
  [v3 setBackgroundColor:v4];

  v5 = &selRef_setConstant_;
  v73 = v3;
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
    v14 = [(UITextView *)self->_textView centerYAnchor];
    v15 = [v3 centerYAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    textViewCenterYConstraint = self->_textViewCenterYConstraint;
    self->_textViewCenterYConstraint = v16;

    LODWORD(v18) = 1144766464;
    [(NSLayoutConstraint *)self->_textViewCenterYConstraint setPriority:v18];
    bottomBar = self->_bottomBar;
    if (bottomBar)
    {
      v71 = [(UIView *)bottomBar topAnchor];
    }

    else
    {
      v20 = [v3 safeAreaLayoutGuide];
      v71 = [v20 bottomAnchor];
    }

    topBar = self->_topBar;
    if (topBar)
    {
      v22 = [(UIView *)topBar bottomAnchor];
    }

    else
    {
      v23 = [v3 safeAreaLayoutGuide];
      v22 = [v23 topAnchor];
    }

    v64 = v22;
    [v3 addSubview:self->_textView];
    v69 = [(UITextView *)self->_textView leadingAnchor];
    v68 = [v3 leadingAnchor];
    v67 = [v69 constraintEqualToAnchor:v68 constant:30.0];
    v77[0] = v67;
    v66 = [(UITextView *)self->_textView trailingAnchor];
    v65 = [v3 trailingAnchor];
    v63 = [v66 constraintEqualToAnchor:v65 constant:-30.0];
    v77[1] = v63;
    v24 = [(UITextView *)self->_textView topAnchor];
    v25 = [v24 constraintEqualToAnchor:v22 constant:30.0];
    v77[2] = v25;
    v26 = [(UITextView *)self->_textView bottomAnchor];
    v27 = [v26 constraintEqualToAnchor:v71 constant:-30.0];
    v77[3] = v27;
    v28 = [(UITextView *)self->_textView centerXAnchor];
    v29 = [v3 centerXAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v31 = self->_textViewCenterYConstraint;
    v77[4] = v30;
    v77[5] = v31;
    v32 = [NSArray arrayWithObjects:v77 count:6];
    [NSLayoutConstraint activateConstraints:v32];

    v3 = v73;
    v5 = &selRef_setConstant_;
  }

  v33 = [(STKBaseAlertViewController *)self newTopBar];
  v34 = self->_topBar;
  self->_topBar = v33;

  [(UIView *)self->_topBar setTranslatesAutoresizingMaskIntoConstraints:0];
  if (self->_topBar)
  {
    [v3 addSubview:?];
    v70 = [(UIView *)self->_topBar topAnchor];
    v72 = [v3 safeAreaLayoutGuide];
    v35 = [v72 topAnchor];
    v36 = [v70 constraintEqualToAnchor:v35];
    v76[0] = v36;
    v37 = [(UIView *)self->_topBar widthAnchor];
    v38 = [v3 widthAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];
    v76[1] = v39;
    v40 = [(UIView *)self->_topBar centerXAnchor];
    v41 = [v73 centerXAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];
    v76[2] = v42;
    v43 = [NSArray arrayWithObjects:v76 count:3];
    [NSLayoutConstraint activateConstraints:v43];

    v3 = v73;
    v5 = &selRef_setConstant_;
  }

  v44 = [(STKBaseAlertViewController *)self newBottomBar];
  v45 = *(v5 + 574);
  v46 = *&self->SBUIRemoteAlertServiceViewController_opaque[v45];
  *&self->SBUIRemoteAlertServiceViewController_opaque[v45] = v44;

  [*&self->SBUIRemoteAlertServiceViewController_opaque[v45] setTranslatesAutoresizingMaskIntoConstraints:0];
  if (*&self->SBUIRemoteAlertServiceViewController_opaque[v45])
  {
    [v3 addSubview:?];
    v47 = [*&self->SBUIRemoteAlertServiceViewController_opaque[v45] bottomAnchor];
    v48 = [v3 safeAreaLayoutGuide];
    v49 = [v48 bottomAnchor];
    v50 = [v47 constraintEqualToAnchor:v49];
    bottomBarBottomConstraint = self->_bottomBarBottomConstraint;
    self->_bottomBarBottomConstraint = v50;

    v75[0] = self->_bottomBarBottomConstraint;
    v52 = [*&self->SBUIRemoteAlertServiceViewController_opaque[v45] widthAnchor];
    v53 = [v3 widthAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];
    v75[1] = v54;
    v55 = [*&self->SBUIRemoteAlertServiceViewController_opaque[v45] centerXAnchor];
    v56 = [v3 centerXAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];
    v75[2] = v57;
    v58 = [*&self->SBUIRemoteAlertServiceViewController_opaque[v45] heightAnchor];
    [*&self->SBUIRemoteAlertServiceViewController_opaque[v45] bounds];
    v60 = [v58 constraintEqualToConstant:v59];
    v75[3] = v60;
    v61 = [NSArray arrayWithObjects:v75 count:4];
    [NSLayoutConstraint activateConstraints:v61];

    v3 = v73;
    v62 = +[NSNotificationCenter defaultCenter];
    [v62 addObserver:self selector:"_keyboardWillChangeFrame:" name:UIKeyboardWillChangeFrameNotification object:0];
  }
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [a3 actions];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
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
          objc_enumerationMutation(v7);
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

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
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

  if (v6)
  {
    v6[2](v6);
  }
}

- (BOOL)validateAction:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_keyboardWillChangeFrame:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
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
  v15 = [(STKBaseAlertViewController *)self view];
  [v15 bounds];
  MaxY = CGRectGetMaxY(v21);

  v17 = MaxY - MinY;
  [(NSLayoutConstraint *)self->_bottomBarBottomConstraint setConstant:-v17];
  textViewCenterYConstraint = self->_textViewCenterYConstraint;

  [(NSLayoutConstraint *)textViewCenterYConstraint setConstant:v17 * -0.5];
}

- (void)_restartTimeoutTimer:(float)a3
{
  [(STKBaseAlertViewController *)self clearTimeoutTimer];
  v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"_displayDidTimeout" selector:0 userInfo:0 repeats:a3];
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