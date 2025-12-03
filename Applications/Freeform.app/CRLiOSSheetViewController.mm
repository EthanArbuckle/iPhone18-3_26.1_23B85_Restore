@interface CRLiOSSheetViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CRLiOSSheetViewController)initWithCoder:(id)coder;
- (CRLiOSSheetViewController)initWithContentViewController:(id)controller;
- (CRLiOSSheetViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)addCancelButtonWithTitle:(id)title;
- (void)animateTransition:(id)transition;
- (void)didCancel;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)setShouldStretchWidth:(BOOL)width;
- (void)setShouldTouchesOutsideCancel:(BOOL)cancel;
- (void)updateViewConstraints;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation CRLiOSSheetViewController

- (CRLiOSSheetViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018419E8);
  }

  v8 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v18 = v7;
    v19 = 2082;
    v20 = "[CRLiOSSheetViewController initWithNibName:bundle:]";
    v21 = 2082;
    v22 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSSheetViewController.m";
    v23 = 1024;
    v24 = 24;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101841A08);
  }

  v9 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v10 = v9;
    v11 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v18 = v7;
    v19 = 2114;
    v20 = v11;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v12 = [NSString stringWithUTF8String:"[CRLiOSSheetViewController initWithNibName:bundle:]"];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSSheetViewController.m"];
  [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:24 isFatal:0 description:"Do not call method"];

  v14 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLiOSSheetViewController initWithNibName:bundle:]"];
  v15 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v14 userInfo:0];
  v16 = v15;

  objc_exception_throw(v15);
}

- (CRLiOSSheetViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101841A28);
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v15 = v4;
    v16 = 2082;
    v17 = "[CRLiOSSheetViewController initWithCoder:]";
    v18 = 2082;
    v19 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSSheetViewController.m";
    v20 = 1024;
    v21 = 29;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101841A48);
  }

  v6 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v7 = v6;
    v8 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v15 = v4;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v9 = [NSString stringWithUTF8String:"[CRLiOSSheetViewController initWithCoder:]"];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSSheetViewController.m"];
  [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:29 isFatal:0 description:"Do not call method"];

  v11 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLiOSSheetViewController initWithCoder:]"];
  v12 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v11 userInfo:0];
  v13 = v12;

  objc_exception_throw(v12);
}

- (CRLiOSSheetViewController)initWithContentViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = CRLiOSSheetViewController;
  v6 = [(CRLiOSSheetViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    [(CRLiOSSheetViewController *)v6 setModalPresentationStyle:4];
    [(CRLiOSSheetViewController *)v7 setTransitioningDelegate:v7];
    v7->_shouldStretchWidth = 1;
    [(CRLiOSSheetViewController *)v7 addChildViewController:controllerCopy];
    objc_storeStrong(&v7->_contentViewController, controller);
  }

  return v7;
}

- (void)viewDidLoad
{
  v74.receiver = self;
  v74.super_class = CRLiOSSheetViewController;
  [(CRLiOSSheetViewController *)&v74 viewDidLoad];
  view = [(CRLiOSSheetViewController *)self view];
  v4 = [UIColor colorWithWhite:0.0 alpha:0.400000006];
  [view setBackgroundColor:v4];

  v5 = objc_opt_new();
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v5];
  view2 = [(UIViewController *)self->_contentViewController view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addSubview:view2];
  objc_storeStrong(&self->_containerView, v5);
  [(UIViewController *)self->_contentViewController didMoveToParentViewController:self];
  [(CRLiOSSheetViewController *)self inset];
  v8 = v7;
  v9 = objc_opt_new();
  if (self->_shouldStretchWidth)
  {
    leadingAnchor = [v5 leadingAnchor];
    leadingAnchor2 = [view leadingAnchor];
    v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v9 addObject:v12];

    trailingAnchor = [v5 trailingAnchor];
    [view trailingAnchor];
  }

  else
  {
    widthAnchor = [v5 widthAnchor];
    v15 = [widthAnchor constraintEqualToConstant:0.0];
    maxWidthConstraint = self->_maxWidthConstraint;
    self->_maxWidthConstraint = v15;

    LODWORD(v17) = 1145569280;
    [(NSLayoutConstraint *)self->_maxWidthConstraint setPriority:v17];
    leadingAnchor3 = [v5 leadingAnchor];
    leadingAnchor4 = [view leadingAnchor];
    v20 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4 constant:v8];
    [v9 addObject:v20];

    trailingAnchor2 = [view trailingAnchor];
    trailingAnchor3 = [v5 trailingAnchor];
    v23 = [trailingAnchor2 constraintGreaterThanOrEqualToAnchor:trailingAnchor3 constant:v8];
    [v9 addObject:v23];

    trailingAnchor = [v5 centerXAnchor];
    [view centerXAnchor];
  }
  v24 = ;
  v25 = [trailingAnchor constraintEqualToAnchor:{v24, 17}];
  [v9 addObject:v25];

  leadingAnchor5 = [view2 leadingAnchor];
  leadingAnchor6 = [v5 leadingAnchor];
  v28 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [v9 addObject:v28];

  trailingAnchor4 = [view2 trailingAnchor];
  trailingAnchor5 = [v5 trailingAnchor];
  v31 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  [v9 addObject:v31];

  bottomAnchor = [v5 bottomAnchor];
  v73 = view;
  bottomAnchor2 = [view bottomAnchor];
  v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v9 addObject:v34];

  [(UIViewController *)self->_contentViewController preferredContentSize];
  v36 = v35;
  heightAnchor = [view2 heightAnchor];
  v38 = [heightAnchor constraintEqualToConstant:v36];
  [v9 addObject:v38];

  v39 = objc_opt_new();
  [v39 setIdentifier:@"containerViewLayoutGuide"];
  [v5 addLayoutGuide:v39];
  if (self->_cancelButton)
  {
    backgroundColor = [view2 backgroundColor];
    [(UIButton *)self->_cancelButton setBackgroundColor:backgroundColor];

    [(UIButton *)self->_cancelButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_containerView addSubview:self->_cancelButton];
    topAnchor = [(UIButton *)self->_cancelButton topAnchor];
    bottomAnchor3 = [view2 bottomAnchor];
    v43 = [topAnchor constraintEqualToAnchor:bottomAnchor3 constant:8.0];
    [v9 addObject:v43];

    heightAnchor2 = [(UIButton *)self->_cancelButton heightAnchor];
    v45 = [heightAnchor2 constraintEqualToConstant:57.0];
    [v9 addObject:v45];

    leadingAnchor7 = [(UIButton *)self->_cancelButton leadingAnchor];
    leadingAnchor8 = [v5 leadingAnchor];
    v48 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    [v9 addObject:v48];

    trailingAnchor6 = [(UIButton *)self->_cancelButton trailingAnchor];
    trailingAnchor7 = [v5 trailingAnchor];
    v51 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    [v9 addObject:v51];

    safeAreaLayoutGuide = [v5 safeAreaLayoutGuide];
    bottomAnchor4 = [safeAreaLayoutGuide bottomAnchor];
    bottomAnchor5 = [(UIButton *)self->_cancelButton bottomAnchor];
    v55 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:v8];
    [v9 addObject:v55];
  }

  else
  {
    topAnchor2 = [view2 topAnchor];
    topAnchor3 = [v5 topAnchor];
    v58 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    [v9 addObject:v58];

    safeAreaLayoutGuide = [view2 bottomAnchor];
    bottomAnchor4 = [v5 bottomAnchor];
    bottomAnchor5 = [safeAreaLayoutGuide constraintEqualToAnchor:bottomAnchor4];
    [v9 addObject:bottomAnchor5];
  }

  topAnchor4 = [v39 topAnchor];
  topAnchor5 = [view2 topAnchor];
  v61 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  [v9 addObject:v61];

  bottomAnchor6 = [v39 bottomAnchor];
  bottomAnchor7 = [v5 bottomAnchor];
  v64 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  [v9 addObject:v64];

  heightAnchor3 = [v5 heightAnchor];
  heightAnchor4 = [v39 heightAnchor];
  v67 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
  [v9 addObject:v67];

  if ((*(&self->super.super.super.isa + v72) & 1) == 0)
  {
    layer = [view2 layer];
    [layer setCornerRadius:14.0];
    [layer setMasksToBounds:1];
    layer2 = [(UIButton *)self->_cancelButton layer];
    [layer2 setCornerRadius:14.0];
    [layer2 setMasksToBounds:1];
  }

  if (self->_shouldTouchesOutsideCancel)
  {
    v70 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"didTapUsingGestureRecognizer:"];
    [(UITapGestureRecognizer *)v70 setDelegate:self];
    [(UITapGestureRecognizer *)v70 setCancelsTouchesInView:0];
    [v73 addGestureRecognizer:v70];
    tapGestureRecognizer = self->_tapGestureRecognizer;
    self->_tapGestureRecognizer = v70;
  }

  [NSLayoutConstraint activateConstraints:v9];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CRLiOSSheetViewController;
  [(CRLiOSSheetViewController *)&v5 viewWillAppear:appear];
  view = [(CRLiOSSheetViewController *)self view];
  [view setNeedsUpdateConstraints];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CRLiOSSheetViewController;
  [(CRLiOSSheetViewController *)&v5 viewDidDisappear:disappear];
  cancelHandler = self->_cancelHandler;
  self->_cancelHandler = 0;
}

- (void)updateViewConstraints
{
  if (self->_maxWidthConstraint)
  {
    view = [(CRLiOSSheetViewController *)self view];
    window = [view window];

    if (window)
    {
      [window bounds];
      if (v5 >= v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = v5;
      }

      [(CRLiOSSheetViewController *)self inset];
      [(NSLayoutConstraint *)self->_maxWidthConstraint setConstant:v7 + v8 * -2.0];
    }

    [(NSLayoutConstraint *)self->_maxWidthConstraint setActive:window != 0];
  }

  v9.receiver = self;
  v9.super_class = CRLiOSSheetViewController;
  [(CRLiOSSheetViewController *)&v9 updateViewConstraints];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = CRLiOSSheetViewController;
  [(CRLiOSSheetViewController *)&v5 viewWillLayoutSubviews];
  view = [(CRLiOSSheetViewController *)self view];
  window = [view window];
  [window bounds];
  [view setFrame:?];
}

- (void)setShouldTouchesOutsideCancel:(BOOL)cancel
{
  if ([(CRLiOSSheetViewController *)self isViewLoaded])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132216C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101322180();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101322208();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLiOSSheetViewController setShouldTouchesOutsideCancel:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSSheetViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:177 isFatal:0 description:"Can't set shouldTouchesOutsideCancel after loading the view"];
  }

  self->_shouldTouchesOutsideCancel = cancel;
}

- (void)setShouldStretchWidth:(BOOL)width
{
  self->_shouldStretchWidth = width;
  if ([(CRLiOSSheetViewController *)self isViewLoaded])
  {
    view = [(CRLiOSSheetViewController *)self view];
    [view setNeedsUpdateConstraints];
  }
}

- (void)addCancelButtonWithTitle:(id)title
{
  titleCopy = title;
  if ([(CRLiOSSheetViewController *)self isViewLoaded])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101322230();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101322244();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013222CC();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLiOSSheetViewController addCancelButtonWithTitle:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSSheetViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:194 isFatal:0 description:"Can't add a cancel button after loading the view"];
  }

  if (self->_cancelButton)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013222F4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132231C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013223A4();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLiOSSheetViewController addCancelButtonWithTitle:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSSheetViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:195 isFatal:0 description:"Can't have more than one cancel button"];
  }

  v11 = [UIButton buttonWithType:1];
  cancelButton = self->_cancelButton;
  self->_cancelButton = v11;

  [(UIButton *)self->_cancelButton setTitle:titleCopy forState:0];
  [(UIButton *)self->_cancelButton addTarget:self action:"didCancel" forControlEvents:64];
  v13 = [UIFont boldSystemFontOfSize:21.0];
  titleLabel = [(UIButton *)self->_cancelButton titleLabel];
  [titleLabel setFont:v13];
}

- (void)didCancel
{
  cancelHandler = self->_cancelHandler;
  if (cancelHandler)
  {
    cancelHandler[2](self->_cancelHandler);
  }

  else
  {
    [(CRLiOSSheetViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (qword_101AD5A50 != -1)
  {
    sub_1013223CC();
  }

  v7 = off_1019EDAA8;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1013223E0(self, animatedCopy, v7);
  }

  if (qword_101AD5A50 != -1)
  {
    sub_101322548();
  }

  v8 = off_1019EDAA8;
  if (os_log_type_enabled(off_1019EDAA8, OS_LOG_TYPE_DEBUG))
  {
    sub_101322570(self, v8);
  }

  v9.receiver = self;
  v9.super_class = CRLiOSSheetViewController;
  [(CRLiOSSheetViewController *)&v9 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  if (self->_tapGestureRecognizer != recognizer)
  {
    return 1;
  }

  view = [touch view];
  view2 = [(CRLiOSSheetViewController *)self view];
  v4 = view == view2;

  return v4;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  view = [(CRLiOSSheetViewController *)self view];
  containerView = [transitionCopy containerView];
  [containerView addSubview:view];

  [view layoutIfNeeded];
  [(UIView *)self->_containerView frame];
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  v11 = CGRectGetHeight(v34);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v36 = CGRectOffset(v35, 0.0, v11);
  v12 = v36.origin.x;
  v13 = v36.origin.y;
  v14 = v36.size.width;
  v15 = v36.size.height;
  v16 = [transitionCopy viewControllerForKey:UITransitionContextToViewControllerKey];

  if (v16 == self)
  {
    backgroundColor = [view backgroundColor];
    v18 = +[UIColor clearColor];
    [view setBackgroundColor:v18];

    [(UIView *)self->_containerView setFrame:v12, v13, v14, v15];
    v15 = height;
    v14 = width;
    v13 = y;
    v12 = x;
  }

  else
  {
    backgroundColor = +[UIColor clearColor];
  }

  [(CRLiOSSheetViewController *)self transitionDuration:transitionCopy];
  v20 = v19;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100173128;
  v26[3] = &unk_101841B70;
  v27 = view;
  v28 = backgroundColor;
  selfCopy = self;
  v30 = v12;
  v31 = v13;
  v32 = v14;
  v33 = v15;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100173178;
  v24[3] = &unk_10183D270;
  v25 = transitionCopy;
  v21 = transitionCopy;
  v22 = backgroundColor;
  v23 = view;
  [UIView animateWithDuration:v26 animations:v24 completion:v20];
}

@end