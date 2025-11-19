@interface CarETACardViewController
- ($FEAE32A1819615878361D0F810751286)cornerMaskForCarCardLayout:(SEL)a3;
- (CarETAArrivedSign)arrivedSign;
- (CarETACardSign)etaSign;
- (CarETACardViewController)initWithDataSource:(id)a3 delegate:(id)a4 interruptPresenter:(id)a5;
- (CarETAInfoSign)etaCollapsedSign;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (NSMutableArray)signAnimationQueue;
- (_TtC4Maps18CarETAExpandedSign)etaExpandedSign;
- (void)_carplayConnectionDidChange:(id)a3;
- (void)_didArrive;
- (void)_handleTrayToggleGesture:(id)a3;
- (void)cardDidUpdateFocus:(BOOL)a3;
- (void)setArrived:(BOOL)a3;
- (void)setCurrentSign:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setETA:(id)a3;
- (void)setExpanded:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setIncomingSign:(id)a3;
- (void)setSharingButtonHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)updateArrivalState:(unint64_t)a3;
- (void)updateContent;
- (void)viewDidLoad;
@end

@implementation CarETACardViewController

- (NSArray)preferredFocusEnvironments
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = v3;
  if (self->_grabberView)
  {
    [v3 addObject:?];
  }

  v5 = [(CarETACardViewController *)self currentSign];
  v6 = [v5 preferredFocusEnvironments];
  v7 = v6;
  v8 = &__NSArray0__struct;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  [v4 addObjectsFromArray:v9];
  v10 = [v4 copy];

  return v10;
}

- (void)updateContent
{
  v3 = +[MNNavigationService sharedService];
  -[CarETACardViewController updateArrivalState:](self, "updateArrivalState:", [v3 arrivalState]);

  v4 = [(CarETACardViewController *)self etaCollapsedSign];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained sharingButtonTitle];
  [v4 setTitleForShareTripButton:v6];

  v7 = [(CarETACardViewController *)self etaCollapsedSign];
  v8 = objc_loadWeakRetained(&self->_dataSource);
  v9 = [v8 contactSharingSuggestion];
  [v7 setContactSharingSuggestion:v9];

  v10 = [(CarETACardViewController *)self etaCollapsedSign];
  [v10 updateContent];

  v11 = [(CarETACardViewController *)self etaExpandedSign];
  [v11 updateContent];

  v12 = [(CarETACardViewController *)self arrivedSign];
  [v12 updateContent];
}

- (CarETAInfoSign)etaCollapsedSign
{
  etaCollapsedSign = self->_etaCollapsedSign;
  if (!etaCollapsedSign)
  {
    v4 = [CarETAInfoSign alloc];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_loadWeakRetained(&self->_interruptPresenter);
    v7 = [(CarETAInfoSign *)v4 initWithDelegate:WeakRetained metricsDelegate:self interruptPresenter:v6];
    v8 = self->_etaCollapsedSign;
    self->_etaCollapsedSign = v7;

    [(CarETAInfoSign *)self->_etaCollapsedSign setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarETAInfoSign *)self->_etaCollapsedSign setLatestETA:self->_latestETA];
    [(CarETAInfoSign *)self->_etaCollapsedSign setShareButtonHidden:self->_sharingButtonHidden];
    etaCollapsedSign = self->_etaCollapsedSign;
  }

  return etaCollapsedSign;
}

- (_TtC4Maps18CarETAExpandedSign)etaExpandedSign
{
  etaExpandedSign = self->_etaExpandedSign;
  if (!etaExpandedSign)
  {
    v4 = [_TtC4Maps18CarETAExpandedSign alloc];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [(CarETAExpandedSign *)v4 initWithDataSource:WeakRetained delegate:v6 parentViewController:self];
    v8 = self->_etaExpandedSign;
    self->_etaExpandedSign = v7;

    [(CarETAExpandedSign *)self->_etaExpandedSign setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarETAExpandedSign *)self->_etaExpandedSign setLatestETA:self->_latestETA];
    etaExpandedSign = self->_etaExpandedSign;
  }

  return etaExpandedSign;
}

- (CarETAArrivedSign)arrivedSign
{
  arrivedSign = self->_arrivedSign;
  if (!arrivedSign)
  {
    v4 = [CarETAArrivedSign alloc];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_loadWeakRetained(&self->_dataSource);
    v7 = [(CarETAArrivedSign *)v4 initWithDelegate:WeakRetained dataSource:v6];
    v8 = self->_arrivedSign;
    self->_arrivedSign = v7;

    [(CarETAArrivedSign *)self->_arrivedSign setTranslatesAutoresizingMaskIntoConstraints:0];
    arrivedSign = self->_arrivedSign;
  }

  return arrivedSign;
}

- (CarETACardSign)etaSign
{
  if ([(CarETACardViewController *)self isExpanded])
  {
    [(CarETACardViewController *)self etaExpandedSign];
  }

  else
  {
    [(CarETACardViewController *)self etaCollapsedSign];
  }
  v3 = ;

  return v3;
}

- (NSMutableArray)signAnimationQueue
{
  signAnimationQueue = self->_signAnimationQueue;
  if (!signAnimationQueue)
  {
    v4 = objc_opt_new();
    v5 = self->_signAnimationQueue;
    self->_signAnimationQueue = v4;

    signAnimationQueue = self->_signAnimationQueue;
  }

  return signAnimationQueue;
}

- (void)updateArrivalState:(unint64_t)a3
{
  if (self->_latestArrivalState != a3)
  {
    self->_latestArrivalState = a3;
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (a3 - 1 > 4)
      {
        v6 = @"Unavailable";
      }

      else
      {
        v6 = *(&off_101631088 + a3 - 1);
      }

      v7 = v6;
      v17 = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "etaCardVC: updateArrivalState: %@", &v17, 0xCu);
    }

    if (a3 <= 5)
    {
      if (((1 << a3) & 3) != 0)
      {
        v14 = [(CarETACardViewController *)self arrivedSign];
        [v14 setState:0];

        [(CarETACardViewController *)self setArrived:0];
        v11 = [(CarETACardViewController *)self etaSign];
        [(CarETACardViewController *)self setCurrentSign:v11 animated:[(CarETACardViewController *)self isViewLoaded] completion:0];
      }

      else
      {
        if (((1 << a3) & 0x14) == 0)
        {
          v15 = [(CarETACardViewController *)self arrivedSign];
          [v15 setState:0];

          [(CarETACardViewController *)self _didArrive];
          return;
        }

        v8 = +[MNNavigationService sharedService];
        v9 = [v8 isArrivedAtEVCharger];

        v10 = +[MNNavigationService sharedService];
        v11 = [v10 arrivalChargingStationInfo];

        if (v9)
        {
          [v11 chargingTime];
          if (v12 <= 0.0)
          {
            v13 = 1;
          }

          else
          {
            v13 = 2;
          }
        }

        else
        {
          v13 = 1;
        }

        v16 = [(CarETACardViewController *)self arrivedSign];
        [v16 setState:v13];

        [(CarETACardViewController *)self _didArrive];
      }
    }
  }
}

- (void)setETA:(id)a3
{
  v5 = a3;
  if (self->_latestETA != v5)
  {
    v6 = v5;
    if (v5)
    {
      objc_storeStrong(&self->_lastNonnullETA, a3);
    }

    objc_storeStrong(&self->_latestETA, a3);
    [(CarETAInfoSign *)self->_etaCollapsedSign setLatestETA:self->_latestETA];
    [(CarETAExpandedSign *)self->_etaExpandedSign setLatestETA:self->_latestETA];
    v5 = v6;
  }
}

- (NSArray)focusOrderSubItems
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(CarETACardViewController *)self currentSign];
  v5 = [v4 focusOrderSubItems];
  [v3 addObjectsFromArray:v5];

  return v3;
}

- (void)_didArrive
{
  [(CarETACardViewController *)self setArrived:1];
  if ([(CarETACardViewController *)self isExpanded])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = [(CarETACardViewController *)self currentSign];
    [WeakRetained etaCardSign:v4 didSelectAction:0];
  }

  v5 = [(CarETACardViewController *)self arrivedSign];
  [(CarETACardViewController *)self setCurrentSign:v5 animated:[(CarETACardViewController *)self isViewLoaded] completion:0];

  v6 = [(CarETACardViewController *)self arrivedSign];
  v7 = [v6 state];

  if (v7 == 1)
  {
    v8 = 296;
  }

  else
  {
    if (v7 != 2)
    {
      return;
    }

    v8 = 295;
  }

  v9 = +[MKMapService sharedService];
  [v9 captureUserAction:v8 onTarget:1001 eventValue:0];
}

- (void)setSharingButtonHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_sharingButtonHidden != a3)
  {
    v4 = a3;
    self->_sharingButtonHidden = a3;
    etaCollapsedSign = self->_etaCollapsedSign;
    if (a4)
    {
      v8 = [(CarETACardViewController *)self currentSign];
      [(CarETAInfoSign *)etaCollapsedSign setShareButtonHidden:v4 animated:v8 == self->_etaCollapsedSign];
    }

    else
    {
      v7 = self->_etaCollapsedSign;

      [CarETAInfoSign setShareButtonHidden:v7 animated:"setShareButtonHidden:animated:"];
    }
  }
}

- (void)setIncomingSign:(id)a3
{
  v5 = a3;
  if (self->_incomingSign != v5)
  {
    v6 = sub_100006E1C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "etaCardVC: incoming sign is now %@", &v7, 0xCu);
    }

    objc_storeStrong(&self->_incomingSign, a3);
  }
}

- (void)setArrived:(BOOL)a3
{
  if (self->_arrived != a3)
  {
    self->_arrived = a3;
    v4 = [(CarETACardViewController *)self grabberView];
    [v4 setHidden:self->_arrived];
  }
}

- (void)setCurrentSign:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  if (self->_currentSign == v9)
  {
    v11 = [(CarETACardViewController *)self signAnimationQueue];
    v12 = [v11 count];

    if (!v12)
    {
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  if (v9)
  {
    v13 = [(CarETACardViewController *)self signAnimationQueue];
    v14 = [v13 lastObject];

    if (v14 == v9)
    {
      if (!v10)
      {
        goto LABEL_22;
      }

      v43 = sub_100006E1C();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        *buf = 138412290;
        v66 = v45;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "etaCardVC: ignoring update to: %@ as it is already queued", buf, 0xCu);
      }

LABEL_21:
      v10[2](v10, 1);
      goto LABEL_22;
    }
  }

  v47 = v6;
  v15 = sub_100006E1C();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    *buf = 138412546;
    v66 = v17;
    v67 = 2112;
    v68 = v19;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "etaCardVC: setting currentSign with class: %@, previous sign class: %@", buf, 0x16u);
  }

  obj = a3;

  v55 = v9;
  v20 = v9;
  v21 = [(CarETACardViewController *)self signAnimationQueue];
  v22 = [v21 lastObject];
  currentSign = v22;
  if (!v22)
  {
    currentSign = self->_currentSign;
  }

  v54 = currentSign;

  [(CarETACardViewController *)self setIncomingSign:v20];
  v24 = [(CarETACardViewController *)self view];
  [v24 addSubview:v20];

  v53 = self->_currentSignBottomConstraint;
  v51 = [(CarETACardSign *)v20 topAnchor];
  v52 = [(CarETACardViewController *)self view];
  v50 = [v52 topAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v64[0] = v49;
  v48 = [(CarETACardSign *)v20 leadingAnchor];
  v25 = [(CarETACardViewController *)self view];
  v26 = [v25 leadingAnchor];
  v27 = [v48 constraintEqualToAnchor:v26];
  v64[1] = v27;
  v28 = [(CarETACardSign *)v20 trailingAnchor];
  v29 = [(CarETACardViewController *)self view];
  v30 = [v29 trailingAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  v64[2] = v31;
  v32 = [NSArray arrayWithObjects:v64 count:3];
  currentSignTopAndSideConstraints = self->_currentSignTopAndSideConstraints;
  self->_currentSignTopAndSideConstraints = v32;

  v34 = [(CarETACardSign *)v20 bottomAnchor];
  v35 = [(CarETACardViewController *)self view];
  v36 = [v35 bottomAnchor];
  v37 = [v34 constraintEqualToAnchor:v36];
  currentSignBottomConstraint = self->_currentSignBottomConstraint;
  self->_currentSignBottomConstraint = v37;

  [NSLayoutConstraint activateConstraints:self->_currentSignTopAndSideConstraints];
  v39 = [(CarETACardViewController *)self view];
  [v39 layoutIfNeeded];

  [(NSLayoutConstraint *)v53 setActive:0];
  [(NSLayoutConstraint *)self->_currentSignBottomConstraint setActive:1];
  if (self->_currentSign)
  {
    v40 = 0.0;
    [(CarETACardSign *)v20 setAlpha:0.0, obj];
    v41 = [(CarETACardViewController *)self signAnimationQueue];
    [v41 addObject:v20];

    if (v47)
    {
      v40 = 0.5;
    }

    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_100E236B4;
    v60[3] = &unk_101661A40;
    v61 = v20;
    v42 = v54;
    v62 = v54;
    v63 = self;
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100E2373C;
    v56[3] = &unk_10165D3A0;
    v57 = v62;
    v58 = self;
    v59 = v10;
    [UIView animateWithDuration:6 delay:v60 usingSpringWithDamping:v56 initialSpringVelocity:v40 options:0.0 animations:0.800000012 completion:0.100000001];
  }

  else
  {
    objc_storeStrong(&self->_currentSign, obj);
    [(CarETACardViewController *)self setIncomingSign:0];
    v42 = v54;
    if (v10)
    {
      v10[2](v10, 1);
    }
  }

  v9 = v55;
LABEL_22:
}

- (void)setExpanded:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = v8;
  if (self->_expanded == v6)
  {
    if (v8)
    {
      (*(v8 + 2))(v8, 1);
    }
  }

  else
  {
    self->_expanded = v6;
    [(UISwipeGestureRecognizer *)self->_collapsedSwipeGesture setEnabled:!v6];
    [(UISwipeGestureRecognizer *)self->_expandedSwipeGesture setEnabled:self->_expanded];
    if ([(CarETACardViewController *)self hasArrived])
    {
      v10 = [(CarETACardViewController *)self arrivedSign];
    }

    else
    {
      v11 = sub_100006E1C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = @"collapsing";
        if (v6)
        {
          v12 = @"expanding";
        }

        v14 = 138412290;
        v15 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "etaCardVC: %@ tray", &v14, 0xCu);
      }

      v10 = [(CarETACardViewController *)self etaSign];
    }

    v13 = v10;
    [(CarETACardViewController *)self setCurrentSign:v10 animated:v5 completion:v9];
  }
}

- (void)cardDidUpdateFocus:(BOOL)a3
{
  self->_cardFocused = a3;
  v4 = [(CarETACardViewController *)self _shouldHideGrabber];
  grabberView = self->_grabberView;

  [(CarUIGrabber *)grabberView setHidden:v4];
}

- ($FEAE32A1819615878361D0F810751286)cornerMaskForCarCardLayout:(SEL)a3
{
  retstr->var0 = 15;
  v5 = 24.0;
  if (self->_expanded)
  {
    v5 = 28.0;
  }

  retstr->var1 = v5;
  result = kCACornerCurveContinuous;
  retstr->var2 = result;
  *&retstr->var3 = xmmword_1011FDDA0;
  return result;
}

- (void)_handleTrayToggleGesture:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [(CarETACardViewController *)self currentSign];
  [WeakRetained etaCardSign:v4 didSelectAction:0];
}

- (void)_carplayConnectionDidChange:(id)a3
{
  v4 = +[CarDisplayController sharedInstance];
  v5 = [v4 screen];

  if (v5)
  {
    v6 = +[CarDisplayController sharedInstance];
    self->_alwaysHideGrabber = [v6 supportsInteractionModels:1] ^ 1;

    v7 = [(CarETACardViewController *)self _shouldHideGrabber];
    grabberView = self->_grabberView;

    [(CarUIGrabber *)grabberView setHidden:v7];
  }
}

- (void)viewDidLoad
{
  v58.receiver = self;
  v58.super_class = CarETACardViewController;
  [(CarETACardViewController *)&v58 viewDidLoad];
  v3 = [(CarETACardViewController *)self view];
  [v3 setAccessibilityIdentifier:@"CarETACard"];

  v4 = [[CarUIGrabber alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  grabberView = self->_grabberView;
  self->_grabberView = v4;

  [(CarUIGrabber *)self->_grabberView _setBlurEnabled:0];
  [(CarUIGrabber *)self->_grabberView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CarUIGrabber *)self->_grabberView setUserInteractionEnabled:0];
  [(CarUIGrabber *)self->_grabberView setHidden:[(CarETACardViewController *)self _shouldHideGrabber]];
  v6 = [(CarETACardViewController *)self view];
  [v6 addSubview:self->_grabberView];

  v7 = +[CarDisplayController sharedInstance];
  v8 = [v7 supportsInteractionModels:1];

  v9 = +[CarDisplayController sharedInstance];
  v10 = [v9 supportsInteractionModels:8];

  v11 = v8 ^ 1;
  v12 = sub_100006E1C();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (((v8 ^ 1) & 1) == 0 && (v10 & 1) == 0)
  {
    if (!v13)
    {
LABEL_10:

      v20 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:"_handleTrayToggleGesture:"];
      collapsedSwipeGesture = self->_collapsedSwipeGesture;
      self->_collapsedSwipeGesture = v20;

      [(UISwipeGestureRecognizer *)self->_collapsedSwipeGesture setDirection:4];
      [(UISwipeGestureRecognizer *)self->_collapsedSwipeGesture setEnabled:!self->_expanded];
      v22 = [(CarETACardViewController *)self view];
      [v22 addGestureRecognizer:self->_collapsedSwipeGesture];

      v23 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:"_handleTrayToggleGesture:"];
      expandedSwipeGesture = self->_expandedSwipeGesture;
      self->_expandedSwipeGesture = v23;

      [(UISwipeGestureRecognizer *)self->_expandedSwipeGesture setDirection:8];
      [(UISwipeGestureRecognizer *)self->_expandedSwipeGesture setEnabled:self->_expanded];
      v12 = [(CarETACardViewController *)self view];
      [v12 addGestureRecognizer:self->_expandedSwipeGesture];
      goto LABEL_24;
    }

    v14 = self;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(CarETACardViewController *)v14 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

        goto LABEL_9;
      }
    }

    v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_9:

    *buf = 138543362;
    v61 = v19;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}@] Attaching swipe gestures to ETA tray, car supports touch and does not support touchpad", buf, 0xCu);

    goto LABEL_10;
  }

  if (v13)
  {
    v25 = self;
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    if (objc_opt_respondsToSelector())
    {
      v28 = [(CarETACardViewController *)v25 performSelector:"accessibilityIdentifier"];
      v29 = v28;
      if (v28 && ![v28 isEqualToString:v27])
      {
        v30 = [NSString stringWithFormat:@"%@<%p, %@>", v27, v25, v29];

        goto LABEL_17;
      }
    }

    v30 = [NSString stringWithFormat:@"%@<%p>", v27, v25];
LABEL_17:

    if (v8)
    {
      v31 = @"YES";
    }

    else
    {
      v31 = @"NO";
    }

    v32 = v31;
    if (v10)
    {
      v33 = @"YES";
    }

    else
    {
      v33 = @"NO";
    }

    v34 = v33;
    *buf = 138543874;
    v61 = v30;
    v62 = 2114;
    v63 = v32;
    v64 = 2114;
    v65 = v34;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}@] Not attaching swipe gestures to ETA tray (touch: %{public}@, touchpad: %{public}@)", buf, 0x20u);
  }

LABEL_24:

  self->_alwaysHideGrabber = v11;
  v56 = [(CarUIGrabber *)self->_grabberView topAnchor];
  v57 = [(CarETACardViewController *)self view];
  v55 = [v57 topAnchor];
  v54 = [v56 constraintEqualToAnchor:v55 constant:4.0];
  v59[0] = v54;
  v52 = [(CarUIGrabber *)self->_grabberView leadingAnchor];
  v53 = [(CarETACardViewController *)self view];
  v51 = [v53 leadingAnchor];
  v50 = [v52 constraintGreaterThanOrEqualToAnchor:v51];
  v59[1] = v50;
  v48 = [(CarUIGrabber *)self->_grabberView centerXAnchor];
  v49 = [(CarETACardViewController *)self view];
  v47 = [v49 centerXAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v59[2] = v46;
  v35 = [(CarETACardViewController *)self view];
  v36 = [v35 trailingAnchor];
  v37 = [(CarUIGrabber *)self->_grabberView trailingAnchor];
  v38 = [v36 constraintGreaterThanOrEqualToAnchor:v37];
  v59[3] = v38;
  v39 = [(CarUIGrabber *)self->_grabberView widthAnchor];
  v40 = [v39 constraintEqualToConstant:32.0];
  v59[4] = v40;
  v41 = [(CarUIGrabber *)self->_grabberView heightAnchor];
  v42 = [v41 constraintEqualToConstant:4.0];
  v59[5] = v42;
  v43 = [NSArray arrayWithObjects:v59 count:6];
  [NSLayoutConstraint activateConstraints:v43];

  if ([(CarETACardViewController *)self hasArrived])
  {
    [(CarETACardViewController *)self arrivedSign];
  }

  else
  {
    [(CarETACardViewController *)self etaSign];
  }
  v44 = ;
  [(CarETACardViewController *)self setCurrentSign:v44];

  v45 = +[NSNotificationCenter defaultCenter];
  [v45 addObserver:self selector:"_carplayConnectionDidChange:" name:@"CarDisplayDidChangeConnectedNotification" object:0];
}

- (CarETACardViewController)initWithDataSource:(id)a3 delegate:(id)a4 interruptPresenter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = CarETACardViewController;
  v11 = [(CarETACardViewController *)&v16 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_dataSource, v8);
    objc_storeWeak(&v12->_delegate, v9);
    v12->_sharingButtonHidden = 1;
    objc_storeWeak(&v12->_interruptPresenter, v10);
  }

  v13 = [(CarETACardViewController *)v12 view];
  LODWORD(v14) = 1148846080;
  [v13 setContentCompressionResistancePriority:1 forAxis:v14];

  return v12;
}

@end