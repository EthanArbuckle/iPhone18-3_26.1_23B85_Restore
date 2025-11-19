@interface CRLiOSSheetViewController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CRLiOSSheetViewController)initWithCoder:(id)a3;
- (CRLiOSSheetViewController)initWithContentViewController:(id)a3;
- (CRLiOSSheetViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)addCancelButtonWithTitle:(id)a3;
- (void)animateTransition:(id)a3;
- (void)didCancel;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)setShouldStretchWidth:(BOOL)a3;
- (void)setShouldTouchesOutsideCancel:(BOOL)a3;
- (void)updateViewConstraints;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CRLiOSSheetViewController

- (CRLiOSSheetViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = a3;
  v6 = a4;
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

- (CRLiOSSheetViewController)initWithCoder:(id)a3
{
  v3 = a3;
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

- (CRLiOSSheetViewController)initWithContentViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRLiOSSheetViewController;
  v6 = [(CRLiOSSheetViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    [(CRLiOSSheetViewController *)v6 setModalPresentationStyle:4];
    [(CRLiOSSheetViewController *)v7 setTransitioningDelegate:v7];
    v7->_shouldStretchWidth = 1;
    [(CRLiOSSheetViewController *)v7 addChildViewController:v5];
    objc_storeStrong(&v7->_contentViewController, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v74.receiver = self;
  v74.super_class = CRLiOSSheetViewController;
  [(CRLiOSSheetViewController *)&v74 viewDidLoad];
  v3 = [(CRLiOSSheetViewController *)self view];
  v4 = [UIColor colorWithWhite:0.0 alpha:0.400000006];
  [v3 setBackgroundColor:v4];

  v5 = objc_opt_new();
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v5];
  v6 = [(UIViewController *)self->_contentViewController view];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addSubview:v6];
  objc_storeStrong(&self->_containerView, v5);
  [(UIViewController *)self->_contentViewController didMoveToParentViewController:self];
  [(CRLiOSSheetViewController *)self inset];
  v8 = v7;
  v9 = objc_opt_new();
  if (self->_shouldStretchWidth)
  {
    v10 = [v5 leadingAnchor];
    v11 = [v3 leadingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    [v9 addObject:v12];

    v13 = [v5 trailingAnchor];
    [v3 trailingAnchor];
  }

  else
  {
    v14 = [v5 widthAnchor];
    v15 = [v14 constraintEqualToConstant:0.0];
    maxWidthConstraint = self->_maxWidthConstraint;
    self->_maxWidthConstraint = v15;

    LODWORD(v17) = 1145569280;
    [(NSLayoutConstraint *)self->_maxWidthConstraint setPriority:v17];
    v18 = [v5 leadingAnchor];
    v19 = [v3 leadingAnchor];
    v20 = [v18 constraintGreaterThanOrEqualToAnchor:v19 constant:v8];
    [v9 addObject:v20];

    v21 = [v3 trailingAnchor];
    v22 = [v5 trailingAnchor];
    v23 = [v21 constraintGreaterThanOrEqualToAnchor:v22 constant:v8];
    [v9 addObject:v23];

    v13 = [v5 centerXAnchor];
    [v3 centerXAnchor];
  }
  v24 = ;
  v25 = [v13 constraintEqualToAnchor:{v24, 17}];
  [v9 addObject:v25];

  v26 = [v6 leadingAnchor];
  v27 = [v5 leadingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  [v9 addObject:v28];

  v29 = [v6 trailingAnchor];
  v30 = [v5 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  [v9 addObject:v31];

  v32 = [v5 bottomAnchor];
  v73 = v3;
  v33 = [v3 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
  [v9 addObject:v34];

  [(UIViewController *)self->_contentViewController preferredContentSize];
  v36 = v35;
  v37 = [v6 heightAnchor];
  v38 = [v37 constraintEqualToConstant:v36];
  [v9 addObject:v38];

  v39 = objc_opt_new();
  [v39 setIdentifier:@"containerViewLayoutGuide"];
  [v5 addLayoutGuide:v39];
  if (self->_cancelButton)
  {
    v40 = [v6 backgroundColor];
    [(UIButton *)self->_cancelButton setBackgroundColor:v40];

    [(UIButton *)self->_cancelButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_containerView addSubview:self->_cancelButton];
    v41 = [(UIButton *)self->_cancelButton topAnchor];
    v42 = [v6 bottomAnchor];
    v43 = [v41 constraintEqualToAnchor:v42 constant:8.0];
    [v9 addObject:v43];

    v44 = [(UIButton *)self->_cancelButton heightAnchor];
    v45 = [v44 constraintEqualToConstant:57.0];
    [v9 addObject:v45];

    v46 = [(UIButton *)self->_cancelButton leadingAnchor];
    v47 = [v5 leadingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];
    [v9 addObject:v48];

    v49 = [(UIButton *)self->_cancelButton trailingAnchor];
    v50 = [v5 trailingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
    [v9 addObject:v51];

    v52 = [v5 safeAreaLayoutGuide];
    v53 = [v52 bottomAnchor];
    v54 = [(UIButton *)self->_cancelButton bottomAnchor];
    v55 = [v53 constraintEqualToAnchor:v54 constant:v8];
    [v9 addObject:v55];
  }

  else
  {
    v56 = [v6 topAnchor];
    v57 = [v5 topAnchor];
    v58 = [v56 constraintEqualToAnchor:v57];
    [v9 addObject:v58];

    v52 = [v6 bottomAnchor];
    v53 = [v5 bottomAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];
    [v9 addObject:v54];
  }

  v59 = [v39 topAnchor];
  v60 = [v6 topAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];
  [v9 addObject:v61];

  v62 = [v39 bottomAnchor];
  v63 = [v5 bottomAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];
  [v9 addObject:v64];

  v65 = [v5 heightAnchor];
  v66 = [v39 heightAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];
  [v9 addObject:v67];

  if ((*(&self->super.super.super.isa + v72) & 1) == 0)
  {
    v68 = [v6 layer];
    [v68 setCornerRadius:14.0];
    [v68 setMasksToBounds:1];
    v69 = [(UIButton *)self->_cancelButton layer];
    [v69 setCornerRadius:14.0];
    [v69 setMasksToBounds:1];
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

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CRLiOSSheetViewController;
  [(CRLiOSSheetViewController *)&v5 viewWillAppear:a3];
  v4 = [(CRLiOSSheetViewController *)self view];
  [v4 setNeedsUpdateConstraints];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CRLiOSSheetViewController;
  [(CRLiOSSheetViewController *)&v5 viewDidDisappear:a3];
  cancelHandler = self->_cancelHandler;
  self->_cancelHandler = 0;
}

- (void)updateViewConstraints
{
  if (self->_maxWidthConstraint)
  {
    v3 = [(CRLiOSSheetViewController *)self view];
    v4 = [v3 window];

    if (v4)
    {
      [v4 bounds];
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

    [(NSLayoutConstraint *)self->_maxWidthConstraint setActive:v4 != 0];
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
  v3 = [(CRLiOSSheetViewController *)self view];
  v4 = [v3 window];
  [v4 bounds];
  [v3 setFrame:?];
}

- (void)setShouldTouchesOutsideCancel:(BOOL)a3
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

  self->_shouldTouchesOutsideCancel = a3;
}

- (void)setShouldStretchWidth:(BOOL)a3
{
  self->_shouldStretchWidth = a3;
  if ([(CRLiOSSheetViewController *)self isViewLoaded])
  {
    v4 = [(CRLiOSSheetViewController *)self view];
    [v4 setNeedsUpdateConstraints];
  }
}

- (void)addCancelButtonWithTitle:(id)a3
{
  v4 = a3;
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

  [(UIButton *)self->_cancelButton setTitle:v4 forState:0];
  [(UIButton *)self->_cancelButton addTarget:self action:"didCancel" forControlEvents:64];
  v13 = [UIFont boldSystemFontOfSize:21.0];
  v14 = [(UIButton *)self->_cancelButton titleLabel];
  [v14 setFont:v13];
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

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (qword_101AD5A50 != -1)
  {
    sub_1013223CC();
  }

  v7 = off_1019EDAA8;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1013223E0(self, v4, v7);
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
  [(CRLiOSSheetViewController *)&v9 dismissViewControllerAnimated:v4 completion:v6];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  if (self->_tapGestureRecognizer != a3)
  {
    return 1;
  }

  v6 = [a4 view];
  v7 = [(CRLiOSSheetViewController *)self view];
  v4 = v6 == v7;

  return v4;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSSheetViewController *)self view];
  v6 = [v4 containerView];
  [v6 addSubview:v5];

  [v5 layoutIfNeeded];
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
  v16 = [v4 viewControllerForKey:UITransitionContextToViewControllerKey];

  if (v16 == self)
  {
    v17 = [v5 backgroundColor];
    v18 = +[UIColor clearColor];
    [v5 setBackgroundColor:v18];

    [(UIView *)self->_containerView setFrame:v12, v13, v14, v15];
    v15 = height;
    v14 = width;
    v13 = y;
    v12 = x;
  }

  else
  {
    v17 = +[UIColor clearColor];
  }

  [(CRLiOSSheetViewController *)self transitionDuration:v4];
  v20 = v19;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100173128;
  v26[3] = &unk_101841B70;
  v27 = v5;
  v28 = v17;
  v29 = self;
  v30 = v12;
  v31 = v13;
  v32 = v14;
  v33 = v15;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100173178;
  v24[3] = &unk_10183D270;
  v25 = v4;
  v21 = v4;
  v22 = v17;
  v23 = v5;
  [UIView animateWithDuration:v26 animations:v24 completion:v20];
}

@end