@interface STKUSSDViewController
- (BOOL)textField:(id)field shouldInsertText:(id)text replacingRange:(_NSRange)range;
- (id)_replyView;
- (unint64_t)supportedInterfaceOrientations;
- (void)_cancelClicked:(id)clicked;
- (void)_displayDidTimeout;
- (void)_keyboardWillChangeFrame:(id)frame;
- (void)_noteDidReceiveContent:(id)content;
- (void)_okayClicked:(id)clicked;
- (void)_replyClicked:(id)clicked;
- (void)_setupResponseBar;
- (void)_updateCharsRemaining;
- (void)_updateNotifyText:(id)text;
- (void)_willAppearInRemoteViewController;
- (void)clearTimeoutTimer;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dealloc;
- (void)dismiss;
- (void)dismissCoalescingSession;
- (void)sessionDidReceiveErrorCode:(int64_t)code string:(id)string;
- (void)sessionDidReceiveString:(id)string;
- (void)sessionDidReceiveSupplementaryServicesEvent:(id)event;
- (void)sessionDidTerminate;
- (void)sessionWantsResponse:(BOOL)response;
- (void)setAllowsResponse:(BOOL)response;
- (void)startTimeoutTimerIfNecessary;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation STKUSSDViewController

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(STKUSSDSessionAction *)self->_sessionAction invalidate];
  [(STKUSSDViewController *)self clearTimeoutTimer];
  v4.receiver = self;
  v4.super_class = STKUSSDViewController;
  [(STKUSSDViewController *)&v4 dealloc];
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
  v82.receiver = self;
  v82.super_class = STKUSSDViewController;
  [(STKUSSDViewController *)&v82 viewDidLoad];
  v3 = +[NSMutableArray array];
  supplementaryServicesInfo = self->_supplementaryServicesInfo;
  self->_supplementaryServicesInfo = v3;

  v5 = objc_alloc_init(NSNumberFormatter);
  decimalFormatter = self->_decimalFormatter;
  self->_decimalFormatter = v5;

  v7 = self->_decimalFormatter;
  v8 = +[NSLocale currentLocale];
  [(NSNumberFormatter *)v7 setLocale:v8];

  [(NSNumberFormatter *)self->_decimalFormatter setNumberStyle:1];
  view = [(STKUSSDViewController *)self view];
  v10 = [UIColor colorWithRed:0.349019608 green:0.349019608 blue:0.349019608 alpha:1.0];
  [view setBackgroundColor:v10];

  v81 = +[NSNotificationCenter defaultCenter];
  [v81 addObserver:self selector:"_keyboardWillChangeFrame:" name:UIKeyboardWillChangeFrameNotification object:0];
  v11 = objc_alloc_init(UILayoutGuide);
  keyboardGuide = self->_keyboardGuide;
  self->_keyboardGuide = v11;

  [view addLayoutGuide:self->_keyboardGuide];
  topAnchor = [(UILayoutGuide *)self->_keyboardGuide topAnchor];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  bottomAnchor = [safeAreaLayoutGuide bottomAnchor];
  +[TPButton defaultHeight];
  v17 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:-v16];
  keyboardTopConstraint = self->_keyboardTopConstraint;
  self->_keyboardTopConstraint = v17;

  v19 = [UIView alloc];
  [view frame];
  v20 = [v19 initWithFrame:?];
  notifyView = self->_notifyView;
  self->_notifyView = v20;

  [(UIView *)self->_notifyView setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:self->_notifyView];
  v22 = [[UITextView alloc] initWithFrame:0 textContainer:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  textView = self->_textView;
  self->_textView = v22;

  [(UITextView *)self->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UITextView *)self->_textView setFont:v24];

  v25 = +[UIColor whiteColor];
  [(UITextView *)self->_textView setTextColor:v25];

  [(UITextView *)self->_textView setEditable:0];
  [(UITextView *)self->_textView setOpaque:0];
  [(UITextView *)self->_textView setBackgroundColor:0];
  [(UITextView *)self->_textView setTextAlignment:1];
  [(UITextView *)self->_textView setSelectable:0];
  [view addSubview:self->_textView];
  v26 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:1];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v26;

  [(UIActivityIndicatorView *)self->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_notifyView addSubview:self->_activityIndicator];
  heightAnchor = [(UITextView *)self->_textView heightAnchor];
  v29 = [heightAnchor constraintEqualToConstant:0.0];
  textViewHeightConstraint = self->_textViewHeightConstraint;
  self->_textViewHeightConstraint = v29;

  LODWORD(v31) = 1144750080;
  [(NSLayoutConstraint *)self->_textViewHeightConstraint setPriority:v31];
  bottomAnchor2 = [(UITextView *)self->_textView bottomAnchor];
  topAnchor2 = [(UILayoutGuide *)self->_keyboardGuide topAnchor];
  v34 = [bottomAnchor2 constraintEqualToAnchor:topAnchor2 constant:-50.0];
  textViewBottomConstraint = self->_textViewBottomConstraint;
  self->_textViewBottomConstraint = v34;

  LODWORD(v36) = 1144766464;
  [(NSLayoutConstraint *)self->_textViewBottomConstraint setPriority:v36];
  v83[0] = self->_keyboardTopConstraint;
  widthAnchor = [(UILayoutGuide *)self->_keyboardGuide widthAnchor];
  safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
  widthAnchor2 = [safeAreaLayoutGuide2 widthAnchor];
  v77 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v83[1] = v77;
  bottomAnchor3 = [(UILayoutGuide *)self->_keyboardGuide bottomAnchor];
  v37 = view;
  bottomAnchor4 = [view bottomAnchor];
  v74 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v83[2] = v74;
  centerXAnchor = [(UILayoutGuide *)self->_keyboardGuide centerXAnchor];
  safeAreaLayoutGuide3 = [view safeAreaLayoutGuide];
  centerXAnchor2 = [safeAreaLayoutGuide3 centerXAnchor];
  v70 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v83[3] = v70;
  widthAnchor3 = [(UIView *)self->_notifyView widthAnchor];
  widthAnchor4 = [view widthAnchor];
  v67 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  v83[4] = v67;
  heightAnchor2 = [(UIView *)self->_notifyView heightAnchor];
  heightAnchor3 = [view heightAnchor];
  v64 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
  v83[5] = v64;
  centerXAnchor3 = [(UIView *)self->_notifyView centerXAnchor];
  centerXAnchor4 = [view centerXAnchor];
  v61 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v83[6] = v61;
  centerYAnchor = [(UIView *)self->_notifyView centerYAnchor];
  centerYAnchor2 = [view centerYAnchor];
  v58 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v83[7] = v58;
  topAnchor3 = [(UITextView *)self->_textView topAnchor];
  safeAreaLayoutGuide4 = [view safeAreaLayoutGuide];
  topAnchor4 = [safeAreaLayoutGuide4 topAnchor];
  v54 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:50.0];
  v38 = self->_textViewHeightConstraint;
  v83[8] = v54;
  v83[9] = v38;
  v83[10] = self->_textViewBottomConstraint;
  widthAnchor5 = [(UITextView *)self->_textView widthAnchor];
  safeAreaLayoutGuide5 = [view safeAreaLayoutGuide];
  widthAnchor6 = [safeAreaLayoutGuide5 widthAnchor];
  v50 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6 constant:-8.0];
  v83[11] = v50;
  centerXAnchor5 = [(UITextView *)self->_textView centerXAnchor];
  safeAreaLayoutGuide6 = [view safeAreaLayoutGuide];
  centerXAnchor6 = [safeAreaLayoutGuide6 centerXAnchor];
  v40 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v83[12] = v40;
  centerXAnchor7 = [(UIActivityIndicatorView *)self->_activityIndicator centerXAnchor];
  centerXAnchor8 = [(UIView *)self->_notifyView centerXAnchor];
  v43 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
  v83[13] = v43;
  centerYAnchor3 = [(UIActivityIndicatorView *)self->_activityIndicator centerYAnchor];
  centerYAnchor4 = [(UIView *)self->_notifyView centerYAnchor];
  v46 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4 constant:-35.0];
  v83[14] = v46;
  v47 = [NSArray arrayWithObjects:v83 count:15];
  [NSLayoutConstraint activateConstraints:v47];
}

- (void)_willAppearInRemoteViewController
{
  v5.receiver = self;
  v5.super_class = STKUSSDViewController;
  [(STKUSSDViewController *)&v5 _willAppearInRemoteViewController];
  _remoteViewControllerProxy = [(STKUSSDViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setAllowsMenuButtonDismissal:1];

  _remoteViewControllerProxy2 = [(STKUSSDViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy2 setAllowsAlertStacking:1];
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = objc_alloc_init(NSXPCListenerEndpoint);
  xpcEndpoint = [contextCopy xpcEndpoint];
  [v8 _setEndpoint:xpcEndpoint];

  v10 = [[NSXPCConnection alloc] initWithListenerEndpoint:v8];
  connection = self->_connection;
  self->_connection = v10;

  v12 = self->_connection;
  v13 = STKUSSDHostCommunicationInterface();
  [(NSXPCConnection *)v12 setRemoteObjectInterface:v13];

  v14 = self->_connection;
  v15 = STKUSSDSessionCommunicationInterface();
  [(NSXPCConnection *)v14 setExportedInterface:v15];

  [(NSXPCConnection *)self->_connection setExportedObject:self];
  objc_initWeak(&location, self);
  v16 = self->_connection;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100007DD8;
  v25[3] = &unk_100018488;
  objc_copyWeak(&v26, &location);
  [(NSXPCConnection *)v16 setInvalidationHandler:v25];
  [(NSXPCConnection *)self->_connection resume];
  remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  [remoteObjectProxy wakeup];

  memset(v24, 0, sizeof(v24));
  actions = [contextCopy actions];
  if ([actions countByEnumeratingWithState:v24 objects:v30 count:16])
  {
    v19 = [STKSessionAction _sessionActionFromBSAction:**(&v24[0] + 1)];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->_sessionAction, v19);
    }
  }

  v20 = +[BSPlatform sharedInstance];
  isInternalInstall = [v20 isInternalInstall];

  if (isInternalInstall)
  {
    v22 = STKCommonLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      sessionAction = self->_sessionAction;
      *buf = 138412290;
      v29 = sessionAction;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "SessionAction = %@", buf, 0xCu);
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

- (void)clearTimeoutTimer
{
  [(NSTimer *)self->_timeoutTimer invalidate];
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = 0;
}

- (void)dismiss
{
  [(STKUSSDViewController *)self clearTimeoutTimer];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100007F30;
  v4[3] = &unk_100018438;
  v4[4] = self;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100007F78;
  v3[3] = &unk_100018460;
  v3[4] = self;
  [UIView animateWithDuration:v4 animations:v3 completion:0.3];
}

- (void)startTimeoutTimerIfNecessary
{
  if (!self->_timeoutTimer)
  {
    v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"_displayDidTimeout" selector:0 userInfo:0 repeats:1.5];
    timeoutTimer = self->_timeoutTimer;
    self->_timeoutTimer = v3;

    _objc_release_x1();
  }
}

- (void)setAllowsResponse:(BOOL)response
{
  if (self->_allowsResponse != response)
  {
    self->_allowsResponse = response;
    [(STKUSSDViewController *)self _setupResponseBar];
  }
}

- (void)_cancelClicked:(id)clicked
{
  sessionAction = [(STKUSSDViewController *)self sessionAction];
  [sessionAction sendResponse:1];

  [(STKUSSDViewController *)self dismiss];
}

- (void)_okayClicked:(id)clicked
{
  if (self->_allowsResponse)
  {
    [(USSDReplyField *)self->_responseField endEditing:1];
    sessionAction = [(STKUSSDViewController *)self sessionAction];
    text = [(USSDReplyField *)self->_responseField text];
    [sessionAction sendSuccessWithResponse:text];
  }

  [(STKUSSDViewController *)self dismiss];
}

- (void)_replyClicked:(id)clicked
{
  v17 = +[NSNotificationCenter defaultCenter];
  [v17 addObserver:self selector:"_textDidChangeNotification:" name:UITextFieldTextDidChangeNotification object:self->_responseField];
  [(UIView *)self->_notifyView removeFromSuperview];
  view = [(STKUSSDViewController *)self view];
  _replyView = [(STKUSSDViewController *)self _replyView];
  [view addSubview:_replyView];
  topAnchor = [_replyView topAnchor];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v18[0] = v13;
  bottomAnchor = [_replyView bottomAnchor];
  topAnchor3 = [(UILayoutGuide *)self->_keyboardGuide topAnchor];
  v8 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
  v18[1] = v8;
  widthAnchor = [_replyView widthAnchor];
  widthAnchor2 = [view widthAnchor];
  v11 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v18[2] = v11;
  v12 = [NSArray arrayWithObjects:v18 count:3];
  [NSLayoutConstraint activateConstraints:v12];

  [(USSDReplyField *)self->_responseField becomeFirstResponder];
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

  v21.origin.x = v7;
  v21.origin.y = v9;
  v21.size.width = v11;
  v21.size.height = v13;
  MinY = CGRectGetMinY(v21);
  view = [(STKUSSDViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  MaxY = CGRectGetMaxY(v22);

  [(NSLayoutConstraint *)self->_keyboardTopConstraint setConstant:-(MaxY - MinY)];
  textViewBottomConstraint = self->_textViewBottomConstraint;
  v19 = -93.0;
  if (!self->_replyView)
  {
    v19 = -50.0;
  }

  [(NSLayoutConstraint *)textViewBottomConstraint setConstant:v19];
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = STKUSSDViewController;
  [(STKUSSDViewController *)&v10 viewDidLayoutSubviews];
  [(UITextView *)self->_textView bounds];
  v4 = v3;
  [(UITextView *)self->_textView contentSize];
  v6 = v5;
  [(UITextView *)self->_textView zoomScale];
  v8 = (v4 - v6 * v7) * 0.5;
  v9 = -0.0;
  if (v8 > 0.0)
  {
    v9 = -v8;
  }

  [(UITextView *)self->_textView setContentOffset:0.0, v9];
}

- (void)dismissCoalescingSession
{
  v3 = +[BSPlatform sharedInstance];
  isInternalInstall = [v3 isInternalInstall];

  if (isInternalInstall)
  {
    v5 = STKCommonLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received dismiss coalescing session action.", v6, 2u);
    }
  }

  [(STKUSSDViewController *)self dismiss];
}

- (void)sessionDidReceiveString:(id)string
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100008670;
  v5[3] = &unk_1000184B0;
  stringCopy = string;
  selfCopy = self;
  v4 = stringCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)sessionDidReceiveErrorCode:(int64_t)code string:(id)string
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000087EC;
  block[3] = &unk_1000184D8;
  selfCopy = self;
  codeCopy = code;
  stringCopy = string;
  v4 = stringCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)sessionDidTerminate
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008A2C;
  block[3] = &unk_100018438;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)sessionWantsResponse:(BOOL)response
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100008B30;
  v3[3] = &unk_100018500;
  v3[4] = self;
  responseCopy = response;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)sessionDidReceiveSupplementaryServicesEvent:(id)event
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100008C08;
  v4[3] = &unk_1000184B0;
  v4[4] = self;
  eventCopy = event;
  v3 = eventCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (BOOL)textField:(id)field shouldInsertText:(id)text replacingRange:(_NSRange)range
{
  length = range.length;
  textCopy = text;
  text = [field text];
  v9 = [text length];

  v10 = v9 < 0xB6 || length >= [textCopy length];
  return v10;
}

- (id)_replyView
{
  replyView = self->_replyView;
  if (!replyView)
  {
    view = [(STKUSSDViewController *)self view];
    [view bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [[UIView alloc] initWithFrame:{v6, v8, v10, v12}];
    v14 = self->_replyView;
    self->_replyView = v13;

    [(UIView *)self->_replyView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(STKUSSDViewController *)self _setupResponseBar];
    v15 = objc_alloc_init(UINavigationBar);
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15 setBarStyle:1];
    v91 = v15;
    [v15 setTranslucent:1];
    v16 = objc_opt_new();
    [v15 setBackgroundImage:v16 forBarMetrics:0];

    v17 = [UINavigationItem alloc];
    v18 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v19 = [v18 localizedStringForKey:@"REPLY" value:&stru_100018670 table:@"SIMToolkitUI"];
    v20 = [v17 initWithTitle:v19];

    v21 = [UIBarButtonItem alloc];
    v22 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v23 = [v22 localizedStringForKey:@"CANCEL" value:&stru_100018670 table:@"SIMToolkitUI"];
    v90 = [v21 initWithTitle:v23 style:0 target:self action:"_cancelClicked:"];

    [v20 setLeftBarButtonItem:v90];
    v24 = [UIBarButtonItem alloc];
    v25 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v26 = [v25 localizedStringForKey:@"REPLY" value:&stru_100018670 table:@"SIMToolkitUI"];
    v88 = [v24 initWithTitle:v26 style:0 target:self action:"_okayClicked:"];

    v89 = v20;
    [v20 setRightBarButtonItem:v88];
    v27 = v15;
    [v15 pushNavigationItem:v20 animated:0];
    [(UIView *)self->_replyView addSubview:v15];
    v28 = [USSDReplyField alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    height = [(USSDReplyField *)v28 initWithFrame:CGRectZero.origin.x, y, width, height];
    responseField = self->_responseField;
    self->_responseField = height;

    [(USSDReplyField *)self->_responseField _setLayoutDebuggingIdentifier:@"_responseField"];
    [(USSDReplyField *)self->_responseField setTranslatesAutoresizingMaskIntoConstraints:0];
    v34 = self->_responseField;
    v35 = [UIFont systemFontOfSize:17.0];
    [(USSDReplyField *)v34 setFont:v35];

    [(USSDReplyField *)self->_responseField setBorderStyle:1];
    v36 = self->_responseField;
    v37 = +[UIColor whiteColor];
    [(USSDReplyField *)v36 setTextColor:v37];

    v38 = self->_responseField;
    v39 = +[UIColor whiteColor];
    [(USSDReplyField *)v38 setInsertionPointColor:v39];

    [(USSDReplyField *)self->_responseField setDelegate:self];
    [(USSDReplyField *)self->_responseField setKeyboardAppearance:1];
    layer = [(USSDReplyField *)self->_responseField layer];
    [layer setCornerRadius:8.0];

    layer2 = [(USSDReplyField *)self->_responseField layer];
    [layer2 setMasksToBounds:1];

    v42 = +[UIColor whiteColor];
    cGColor = [v42 CGColor];
    layer3 = [(USSDReplyField *)self->_responseField layer];
    [layer3 setBorderColor:cGColor];

    layer4 = [(USSDReplyField *)self->_responseField layer];
    [layer4 setBorderWidth:1.0];

    textInputTraits = [(USSDReplyField *)self->_responseField textInputTraits];
    [textInputTraits setAcceptsFloatingKeyboard:0];
    [textInputTraits setAcceptsSplitKeyboard:0];
    v46 = +[UIColor whiteColor];
    [textInputTraits setInsertionPointColor:v46];

    [textInputTraits setKeyboardAppearance:1];
    [textInputTraits setAutocorrectionType:1];
    [textInputTraits setTextLoupeVisibility:1];
    [textInputTraits setLearnsCorrections:0];
    [(UIView *)self->_replyView addSubview:self->_responseField];
    v47 = [[UITextView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    charsRemainingView = self->_charsRemainingView;
    self->_charsRemainingView = v47;

    [(UITextView *)self->_charsRemainingView _setLayoutDebuggingIdentifier:@"_charsRemainingView"];
    [(UITextView *)self->_charsRemainingView setTranslatesAutoresizingMaskIntoConstraints:0];
    v49 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    [(UITextView *)self->_charsRemainingView setFont:v49];

    v50 = +[UIColor whiteColor];
    [(UITextView *)self->_charsRemainingView setTextColor:v50];

    v51 = +[UIColor clearColor];
    [(UITextView *)self->_charsRemainingView setBackgroundColor:v51];

    [(UITextView *)self->_charsRemainingView setTextAlignment:1];
    [(UITextView *)self->_charsRemainingView setUserInteractionEnabled:0];
    [(UIView *)self->_replyView addSubview:self->_charsRemainingView];
    topAnchor = [v27 topAnchor];
    safeAreaLayoutGuide = [(UIView *)self->_replyView safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v83 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v92[0] = v83;
    widthAnchor = [v27 widthAnchor];
    widthAnchor2 = [(UIView *)self->_replyView widthAnchor];
    v80 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v92[1] = v80;
    centerXAnchor = [v27 centerXAnchor];
    centerXAnchor2 = [(UIView *)self->_replyView centerXAnchor];
    v77 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v92[2] = v77;
    leadingAnchor = [(USSDReplyField *)self->_responseField leadingAnchor];
    leadingAnchor2 = [(UIView *)self->_replyView leadingAnchor];
    v74 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:4.0];
    v92[3] = v74;
    bottomAnchor = [(USSDReplyField *)self->_responseField bottomAnchor];
    safeAreaLayoutGuide2 = [(UIView *)self->_replyView safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
    v70 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-30.0];
    v92[4] = v70;
    widthAnchor3 = [(USSDReplyField *)self->_responseField widthAnchor];
    widthAnchor4 = [(UIView *)self->_replyView widthAnchor];
    v67 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 constant:-8.0];
    v92[5] = v67;
    heightAnchor = [(USSDReplyField *)self->_responseField heightAnchor];
    v65 = [heightAnchor constraintEqualToConstant:38.0];
    v92[6] = v65;
    leadingAnchor3 = [(UITextView *)self->_charsRemainingView leadingAnchor];
    leadingAnchor4 = [(UIView *)self->_replyView leadingAnchor];
    v62 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:4.0];
    v92[7] = v62;
    topAnchor3 = [(UITextView *)self->_charsRemainingView topAnchor];
    bottomAnchor3 = [(USSDReplyField *)self->_responseField bottomAnchor];
    v54 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3];
    v92[8] = v54;
    heightAnchor2 = [(UITextView *)self->_charsRemainingView heightAnchor];
    v56 = [heightAnchor2 constraintEqualToConstant:28.0];
    v92[9] = v56;
    widthAnchor5 = [(UITextView *)self->_charsRemainingView widthAnchor];
    widthAnchor6 = [(UIView *)self->_replyView widthAnchor];
    v59 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6 constant:-8.0];
    v92[10] = v59;
    v60 = [NSArray arrayWithObjects:v92 count:11];
    [NSLayoutConstraint activateConstraints:v60];

    [(STKUSSDViewController *)self _updateCharsRemaining];
    replyView = self->_replyView;
  }

  return replyView;
}

- (void)_noteDidReceiveContent:(id)content
{
  self->_hasReceivedContent = 1;
  activityIndicator = self->_activityIndicator;
  contentCopy = content;
  [(UIActivityIndicatorView *)activityIndicator stopAnimating];
  [(STKUSSDViewController *)self _updateNotifyText:contentCopy];

  [(STKUSSDViewController *)self _setupResponseBar];
}

- (void)_displayDidTimeout
{
  [(STKUSSDSessionAction *)self->_sessionAction sendResponse:2];

  [(STKUSSDViewController *)self dismiss];
}

- (void)_setupResponseBar
{
  [(TPButton *)self->_replyButton removeFromSuperview];
  [(TPButton *)self->_dismissButton removeFromSuperview];
  replyButton = self->_replyButton;
  self->_replyButton = 0;

  v4 = [TPButton alloc];
  v5 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
  v6 = [v5 localizedStringForKey:@"DISMISS_ALERT" value:&stru_100018670 table:@"SIMToolkitUI"];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v10 = [v4 initWithTitle:v6 icon:0 color:6 frame:{CGRectZero.origin.x, y, width, height}];
  dismissButton = self->_dismissButton;
  self->_dismissButton = v10;

  [(TPButton *)self->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = self->_dismissButton;
  v13 = +[UIColor blackColor];
  [(TPButton *)v12 setTitleColor:v13 forState:0];

  v14 = self->_dismissButton;
  v15 = +[UIColor whiteColor];
  [(TPButton *)v14 setTitleColor:v15 forState:4];

  [(UIView *)self->_notifyView addSubview:self->_dismissButton];
  allowsResponse = [(STKUSSDViewController *)self allowsResponse];
  v17 = &selRef__cancelClicked_;
  if (!allowsResponse)
  {
    v17 = &selRef__okayClicked_;
  }

  [(TPButton *)self->_dismissButton addTarget:self action:*v17 forEvents:64];
  if ([(STKUSSDViewController *)self allowsResponse])
  {
    v18 = [TPButton alloc];
    v19 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
    v20 = [v19 localizedStringForKey:@"REPLY" value:&stru_100018670 table:@"SIMToolkitUI"];
    v21 = [v18 initWithTitle:v20 icon:0 color:15 frame:{CGRectZero.origin.x, y, width, height}];
    v22 = self->_replyButton;
    self->_replyButton = v21;

    [(TPButton *)self->_replyButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = self->_replyButton;
    v24 = +[UIColor whiteColor];
    [(TPButton *)v23 setTitleColor:v24 forState:0];

    v25 = self->_replyButton;
    v26 = +[UIColor blackColor];
    [(TPButton *)v25 setTitleColor:v26 forState:4];

    [(TPButton *)self->_replyButton addTarget:self action:"_replyClicked:" forEvents:64];
    [(UIView *)self->_notifyView addSubview:self->_replyButton];
  }

  +[TPButton defaultHeight];
  v28 = v27;
  heightAnchor = [(TPButton *)self->_dismissButton heightAnchor];
  v29 = [heightAnchor constraintEqualToConstant:v28];
  v62[0] = v29;
  bottomAnchor = [(TPButton *)self->_dismissButton bottomAnchor];
  safeAreaLayoutGuide = [(UIView *)self->_notifyView safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.0];
  v62[1] = v33;
  leadingAnchor = [(TPButton *)self->_dismissButton leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_notifyView leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v62[2] = v36;
  v37 = [NSArray arrayWithObjects:v62 count:3];
  [NSLayoutConstraint activateConstraints:v37];

  if ([(STKUSSDViewController *)self allowsResponse])
  {
    +[TPSuperBottomBar defaultInterButtonSpacing];
    v39 = v38;
    widthAnchor = [(TPButton *)self->_dismissButton widthAnchor];
    widthAnchor2 = [(UIView *)self->_notifyView widthAnchor];
    v40 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.5 constant:-16.0 - v39 * 0.5];
    v61[0] = v40;
    widthAnchor3 = [(TPButton *)self->_replyButton widthAnchor];
    widthAnchor4 = [(TPButton *)self->_dismissButton widthAnchor];
    v57 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    v61[1] = v57;
    heightAnchor2 = [(TPButton *)self->_replyButton heightAnchor];
    v42 = [heightAnchor2 constraintEqualToConstant:v28];
    v61[2] = v42;
    centerYAnchor = [(TPButton *)self->_replyButton centerYAnchor];
    centerYAnchor2 = [(TPButton *)self->_dismissButton centerYAnchor];
    v45 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v61[3] = v45;
    leadingAnchor3 = [(TPButton *)self->_replyButton leadingAnchor];
    trailingAnchor = [(TPButton *)self->_dismissButton trailingAnchor];
    v48 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:v39];
    v61[4] = v48;
    v49 = [NSArray arrayWithObjects:v61 count:5];
    [NSLayoutConstraint activateConstraints:v49];

    widthAnchor5 = widthAnchor;
    widthAnchor6 = widthAnchor2;
  }

  else
  {
    +[TPSuperBottomBar defaultSideMarginForSingleButton];
    v53 = v52;
    widthAnchor5 = [(TPButton *)self->_dismissButton widthAnchor];
    widthAnchor6 = [(UIView *)self->_notifyView widthAnchor];
    v40 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6 constant:v53 * -2.0];
    v60 = v40;
    widthAnchor3 = [NSArray arrayWithObjects:&v60 count:1];
    [NSLayoutConstraint activateConstraints:widthAnchor3];
  }
}

- (void)_updateCharsRemaining
{
  text = [(USSDReplyField *)self->_responseField text];
  v4 = (182 - [text length]);

  v5 = v4 & ~(v4 >> 63);
  charsRemainingView = self->_charsRemainingView;
  v9 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
  v7 = [v9 localizedStringForKey:@"CHARS_REMAINING" value:&stru_100018670 table:@"SIMToolkitUI"];
  v8 = [NSString stringWithFormat:v7, v5];
  [(UITextView *)charsRemainingView setText:v8];
}

- (void)_updateNotifyText:(id)text
{
  textCopy = text;
  v6 = +[BSPlatform sharedInstance];
  isInternalInstall = [v6 isInternalInstall];

  if (isInternalInstall)
  {
    v8 = STKCommonLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = textCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Update text: %{public}@", buf, 0xCu);
    }
  }

  objc_storeStrong(&self->_displayText, text);
  if (self->_displayText)
  {
    displayText = self->_displayText;
  }

  else
  {
    displayText = &stru_100018670;
  }

  v10 = [(__CFString *)displayText mutableCopy];
  if ([(NSMutableArray *)self->_supplementaryServicesInfo count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = self->_supplementaryServicesInfo;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          if ([v10 length])
          {
            [v10 appendString:@"\n\n"];
          }

          v17 = sub_10000A0D0(v16);
          [v10 appendString:v17];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }
  }

  [(UITextView *)self->_textView setText:v10, v22];
  [(UIView *)self->_notifyView bounds];
  textViewHeightConstraint = self->_textViewHeightConstraint;
  [(UITextView *)self->_textView sizeThatFits:v19, v20];
  [(NSLayoutConstraint *)textViewHeightConstraint setConstant:v21];
}

@end