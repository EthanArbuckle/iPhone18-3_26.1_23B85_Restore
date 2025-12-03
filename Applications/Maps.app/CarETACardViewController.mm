@interface CarETACardViewController
- ($FEAE32A1819615878361D0F810751286)cornerMaskForCarCardLayout:(SEL)layout;
- (CarETAArrivedSign)arrivedSign;
- (CarETACardSign)etaSign;
- (CarETACardViewController)initWithDataSource:(id)source delegate:(id)delegate interruptPresenter:(id)presenter;
- (CarETAInfoSign)etaCollapsedSign;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (NSMutableArray)signAnimationQueue;
- (_TtC4Maps18CarETAExpandedSign)etaExpandedSign;
- (void)_carplayConnectionDidChange:(id)change;
- (void)_didArrive;
- (void)_handleTrayToggleGesture:(id)gesture;
- (void)cardDidUpdateFocus:(BOOL)focus;
- (void)setArrived:(BOOL)arrived;
- (void)setCurrentSign:(id)sign animated:(BOOL)animated completion:(id)completion;
- (void)setETA:(id)a;
- (void)setExpanded:(BOOL)expanded animated:(BOOL)animated completion:(id)completion;
- (void)setIncomingSign:(id)sign;
- (void)setSharingButtonHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)updateArrivalState:(unint64_t)state;
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

  currentSign = [(CarETACardViewController *)self currentSign];
  preferredFocusEnvironments = [currentSign preferredFocusEnvironments];
  v7 = preferredFocusEnvironments;
  v8 = &__NSArray0__struct;
  if (preferredFocusEnvironments)
  {
    v8 = preferredFocusEnvironments;
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

  etaCollapsedSign = [(CarETACardViewController *)self etaCollapsedSign];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  sharingButtonTitle = [WeakRetained sharingButtonTitle];
  [etaCollapsedSign setTitleForShareTripButton:sharingButtonTitle];

  etaCollapsedSign2 = [(CarETACardViewController *)self etaCollapsedSign];
  v8 = objc_loadWeakRetained(&self->_dataSource);
  contactSharingSuggestion = [v8 contactSharingSuggestion];
  [etaCollapsedSign2 setContactSharingSuggestion:contactSharingSuggestion];

  etaCollapsedSign3 = [(CarETACardViewController *)self etaCollapsedSign];
  [etaCollapsedSign3 updateContent];

  etaExpandedSign = [(CarETACardViewController *)self etaExpandedSign];
  [etaExpandedSign updateContent];

  arrivedSign = [(CarETACardViewController *)self arrivedSign];
  [arrivedSign updateContent];
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

- (void)updateArrivalState:(unint64_t)state
{
  if (self->_latestArrivalState != state)
  {
    self->_latestArrivalState = state;
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (state - 1 > 4)
      {
        v6 = @"Unavailable";
      }

      else
      {
        v6 = *(&off_101631088 + state - 1);
      }

      v7 = v6;
      v17 = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "etaCardVC: updateArrivalState: %@", &v17, 0xCu);
    }

    if (state <= 5)
    {
      if (((1 << state) & 3) != 0)
      {
        arrivedSign = [(CarETACardViewController *)self arrivedSign];
        [arrivedSign setState:0];

        [(CarETACardViewController *)self setArrived:0];
        etaSign = [(CarETACardViewController *)self etaSign];
        [(CarETACardViewController *)self setCurrentSign:etaSign animated:[(CarETACardViewController *)self isViewLoaded] completion:0];
      }

      else
      {
        if (((1 << state) & 0x14) == 0)
        {
          arrivedSign2 = [(CarETACardViewController *)self arrivedSign];
          [arrivedSign2 setState:0];

          [(CarETACardViewController *)self _didArrive];
          return;
        }

        v8 = +[MNNavigationService sharedService];
        isArrivedAtEVCharger = [v8 isArrivedAtEVCharger];

        v10 = +[MNNavigationService sharedService];
        etaSign = [v10 arrivalChargingStationInfo];

        if (isArrivedAtEVCharger)
        {
          [etaSign chargingTime];
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

        arrivedSign3 = [(CarETACardViewController *)self arrivedSign];
        [arrivedSign3 setState:v13];

        [(CarETACardViewController *)self _didArrive];
      }
    }
  }
}

- (void)setETA:(id)a
{
  aCopy = a;
  if (self->_latestETA != aCopy)
  {
    v6 = aCopy;
    if (aCopy)
    {
      objc_storeStrong(&self->_lastNonnullETA, a);
    }

    objc_storeStrong(&self->_latestETA, a);
    [(CarETAInfoSign *)self->_etaCollapsedSign setLatestETA:self->_latestETA];
    [(CarETAExpandedSign *)self->_etaExpandedSign setLatestETA:self->_latestETA];
    aCopy = v6;
  }
}

- (NSArray)focusOrderSubItems
{
  v3 = objc_alloc_init(NSMutableArray);
  currentSign = [(CarETACardViewController *)self currentSign];
  focusOrderSubItems = [currentSign focusOrderSubItems];
  [v3 addObjectsFromArray:focusOrderSubItems];

  return v3;
}

- (void)_didArrive
{
  [(CarETACardViewController *)self setArrived:1];
  if ([(CarETACardViewController *)self isExpanded])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    currentSign = [(CarETACardViewController *)self currentSign];
    [WeakRetained etaCardSign:currentSign didSelectAction:0];
  }

  arrivedSign = [(CarETACardViewController *)self arrivedSign];
  [(CarETACardViewController *)self setCurrentSign:arrivedSign animated:[(CarETACardViewController *)self isViewLoaded] completion:0];

  arrivedSign2 = [(CarETACardViewController *)self arrivedSign];
  state = [arrivedSign2 state];

  if (state == 1)
  {
    v8 = 296;
  }

  else
  {
    if (state != 2)
    {
      return;
    }

    v8 = 295;
  }

  v9 = +[MKMapService sharedService];
  [v9 captureUserAction:v8 onTarget:1001 eventValue:0];
}

- (void)setSharingButtonHidden:(BOOL)hidden animated:(BOOL)animated
{
  if (self->_sharingButtonHidden != hidden)
  {
    hiddenCopy = hidden;
    self->_sharingButtonHidden = hidden;
    etaCollapsedSign = self->_etaCollapsedSign;
    if (animated)
    {
      currentSign = [(CarETACardViewController *)self currentSign];
      [(CarETAInfoSign *)etaCollapsedSign setShareButtonHidden:hiddenCopy animated:currentSign == self->_etaCollapsedSign];
    }

    else
    {
      v7 = self->_etaCollapsedSign;

      [CarETAInfoSign setShareButtonHidden:v7 animated:"setShareButtonHidden:animated:"];
    }
  }
}

- (void)setIncomingSign:(id)sign
{
  signCopy = sign;
  if (self->_incomingSign != signCopy)
  {
    v6 = sub_100006E1C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = signCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "etaCardVC: incoming sign is now %@", &v7, 0xCu);
    }

    objc_storeStrong(&self->_incomingSign, sign);
  }
}

- (void)setArrived:(BOOL)arrived
{
  if (self->_arrived != arrived)
  {
    self->_arrived = arrived;
    grabberView = [(CarETACardViewController *)self grabberView];
    [grabberView setHidden:self->_arrived];
  }
}

- (void)setCurrentSign:(id)sign animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  signCopy = sign;
  completionCopy = completion;
  if (self->_currentSign == signCopy)
  {
    signAnimationQueue = [(CarETACardViewController *)self signAnimationQueue];
    v12 = [signAnimationQueue count];

    if (!v12)
    {
      if (!completionCopy)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  if (signCopy)
  {
    signAnimationQueue2 = [(CarETACardViewController *)self signAnimationQueue];
    lastObject = [signAnimationQueue2 lastObject];

    if (lastObject == signCopy)
    {
      if (!completionCopy)
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
      completionCopy[2](completionCopy, 1);
      goto LABEL_22;
    }
  }

  v47 = animatedCopy;
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

  obj = sign;

  v55 = signCopy;
  v20 = signCopy;
  signAnimationQueue3 = [(CarETACardViewController *)self signAnimationQueue];
  lastObject2 = [signAnimationQueue3 lastObject];
  currentSign = lastObject2;
  if (!lastObject2)
  {
    currentSign = self->_currentSign;
  }

  v54 = currentSign;

  [(CarETACardViewController *)self setIncomingSign:v20];
  view = [(CarETACardViewController *)self view];
  [view addSubview:v20];

  v53 = self->_currentSignBottomConstraint;
  topAnchor = [(CarETACardSign *)v20 topAnchor];
  view2 = [(CarETACardViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v49 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v64[0] = v49;
  leadingAnchor = [(CarETACardSign *)v20 leadingAnchor];
  view3 = [(CarETACardViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v64[1] = v27;
  trailingAnchor = [(CarETACardSign *)v20 trailingAnchor];
  view4 = [(CarETACardViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v64[2] = v31;
  v32 = [NSArray arrayWithObjects:v64 count:3];
  currentSignTopAndSideConstraints = self->_currentSignTopAndSideConstraints;
  self->_currentSignTopAndSideConstraints = v32;

  bottomAnchor = [(CarETACardSign *)v20 bottomAnchor];
  view5 = [(CarETACardViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v37 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  currentSignBottomConstraint = self->_currentSignBottomConstraint;
  self->_currentSignBottomConstraint = v37;

  [NSLayoutConstraint activateConstraints:self->_currentSignTopAndSideConstraints];
  view6 = [(CarETACardViewController *)self view];
  [view6 layoutIfNeeded];

  [(NSLayoutConstraint *)v53 setActive:0];
  [(NSLayoutConstraint *)self->_currentSignBottomConstraint setActive:1];
  if (self->_currentSign)
  {
    v40 = 0.0;
    [(CarETACardSign *)v20 setAlpha:0.0, obj];
    signAnimationQueue4 = [(CarETACardViewController *)self signAnimationQueue];
    [signAnimationQueue4 addObject:v20];

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
    selfCopy = self;
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100E2373C;
    v56[3] = &unk_10165D3A0;
    v57 = v62;
    selfCopy2 = self;
    v59 = completionCopy;
    [UIView animateWithDuration:6 delay:v60 usingSpringWithDamping:v56 initialSpringVelocity:v40 options:0.0 animations:0.800000012 completion:0.100000001];
  }

  else
  {
    objc_storeStrong(&self->_currentSign, obj);
    [(CarETACardViewController *)self setIncomingSign:0];
    v42 = v54;
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  signCopy = v55;
LABEL_22:
}

- (void)setExpanded:(BOOL)expanded animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  expandedCopy = expanded;
  completionCopy = completion;
  v9 = completionCopy;
  if (self->_expanded == expandedCopy)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1);
    }
  }

  else
  {
    self->_expanded = expandedCopy;
    [(UISwipeGestureRecognizer *)self->_collapsedSwipeGesture setEnabled:!expandedCopy];
    [(UISwipeGestureRecognizer *)self->_expandedSwipeGesture setEnabled:self->_expanded];
    if ([(CarETACardViewController *)self hasArrived])
    {
      arrivedSign = [(CarETACardViewController *)self arrivedSign];
    }

    else
    {
      v11 = sub_100006E1C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = @"collapsing";
        if (expandedCopy)
        {
          v12 = @"expanding";
        }

        v14 = 138412290;
        v15 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "etaCardVC: %@ tray", &v14, 0xCu);
      }

      arrivedSign = [(CarETACardViewController *)self etaSign];
    }

    v13 = arrivedSign;
    [(CarETACardViewController *)self setCurrentSign:arrivedSign animated:animatedCopy completion:v9];
  }
}

- (void)cardDidUpdateFocus:(BOOL)focus
{
  self->_cardFocused = focus;
  _shouldHideGrabber = [(CarETACardViewController *)self _shouldHideGrabber];
  grabberView = self->_grabberView;

  [(CarUIGrabber *)grabberView setHidden:_shouldHideGrabber];
}

- ($FEAE32A1819615878361D0F810751286)cornerMaskForCarCardLayout:(SEL)layout
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

- (void)_handleTrayToggleGesture:(id)gesture
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  currentSign = [(CarETACardViewController *)self currentSign];
  [WeakRetained etaCardSign:currentSign didSelectAction:0];
}

- (void)_carplayConnectionDidChange:(id)change
{
  v4 = +[CarDisplayController sharedInstance];
  screen = [v4 screen];

  if (screen)
  {
    v6 = +[CarDisplayController sharedInstance];
    self->_alwaysHideGrabber = [v6 supportsInteractionModels:1] ^ 1;

    _shouldHideGrabber = [(CarETACardViewController *)self _shouldHideGrabber];
    grabberView = self->_grabberView;

    [(CarUIGrabber *)grabberView setHidden:_shouldHideGrabber];
  }
}

- (void)viewDidLoad
{
  v58.receiver = self;
  v58.super_class = CarETACardViewController;
  [(CarETACardViewController *)&v58 viewDidLoad];
  view = [(CarETACardViewController *)self view];
  [view setAccessibilityIdentifier:@"CarETACard"];

  v4 = [[CarUIGrabber alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  grabberView = self->_grabberView;
  self->_grabberView = v4;

  [(CarUIGrabber *)self->_grabberView _setBlurEnabled:0];
  [(CarUIGrabber *)self->_grabberView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CarUIGrabber *)self->_grabberView setUserInteractionEnabled:0];
  [(CarUIGrabber *)self->_grabberView setHidden:[(CarETACardViewController *)self _shouldHideGrabber]];
  view2 = [(CarETACardViewController *)self view];
  [view2 addSubview:self->_grabberView];

  v7 = +[CarDisplayController sharedInstance];
  v8 = [v7 supportsInteractionModels:1];

  v9 = +[CarDisplayController sharedInstance];
  v10 = [v9 supportsInteractionModels:8];

  v11 = v8 ^ 1;
  view4 = sub_100006E1C();
  v13 = os_log_type_enabled(view4, OS_LOG_TYPE_INFO);
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
      view3 = [(CarETACardViewController *)self view];
      [view3 addGestureRecognizer:self->_collapsedSwipeGesture];

      v23 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:"_handleTrayToggleGesture:"];
      expandedSwipeGesture = self->_expandedSwipeGesture;
      self->_expandedSwipeGesture = v23;

      [(UISwipeGestureRecognizer *)self->_expandedSwipeGesture setDirection:8];
      [(UISwipeGestureRecognizer *)self->_expandedSwipeGesture setEnabled:self->_expanded];
      view4 = [(CarETACardViewController *)self view];
      [view4 addGestureRecognizer:self->_expandedSwipeGesture];
      goto LABEL_24;
    }

    selfCopy = self;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(CarETACardViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v16, selfCopy, v18];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v16, selfCopy];
LABEL_9:

    *buf = 138543362;
    v61 = selfCopy;
    _os_log_impl(&_mh_execute_header, view4, OS_LOG_TYPE_INFO, "[%{public}@] Attaching swipe gestures to ETA tray, car supports touch and does not support touchpad", buf, 0xCu);

    goto LABEL_10;
  }

  if (v13)
  {
    selfCopy2 = self;
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    if (objc_opt_respondsToSelector())
    {
      v28 = [(CarETACardViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v29 = v28;
      if (v28 && ![v28 isEqualToString:v27])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v27, selfCopy2, v29];

        goto LABEL_17;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v27, selfCopy2];
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
    v61 = selfCopy2;
    v62 = 2114;
    v63 = v32;
    v64 = 2114;
    v65 = v34;
    _os_log_impl(&_mh_execute_header, view4, OS_LOG_TYPE_INFO, "[%{public}@] Not attaching swipe gestures to ETA tray (touch: %{public}@, touchpad: %{public}@)", buf, 0x20u);
  }

LABEL_24:

  self->_alwaysHideGrabber = v11;
  topAnchor = [(CarUIGrabber *)self->_grabberView topAnchor];
  view5 = [(CarETACardViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v54 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:4.0];
  v59[0] = v54;
  leadingAnchor = [(CarUIGrabber *)self->_grabberView leadingAnchor];
  view6 = [(CarETACardViewController *)self view];
  leadingAnchor2 = [view6 leadingAnchor];
  v50 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  v59[1] = v50;
  centerXAnchor = [(CarUIGrabber *)self->_grabberView centerXAnchor];
  view7 = [(CarETACardViewController *)self view];
  centerXAnchor2 = [view7 centerXAnchor];
  v46 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v59[2] = v46;
  view8 = [(CarETACardViewController *)self view];
  trailingAnchor = [view8 trailingAnchor];
  trailingAnchor2 = [(CarUIGrabber *)self->_grabberView trailingAnchor];
  v38 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
  v59[3] = v38;
  widthAnchor = [(CarUIGrabber *)self->_grabberView widthAnchor];
  v40 = [widthAnchor constraintEqualToConstant:32.0];
  v59[4] = v40;
  heightAnchor = [(CarUIGrabber *)self->_grabberView heightAnchor];
  v42 = [heightAnchor constraintEqualToConstant:4.0];
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

- (CarETACardViewController)initWithDataSource:(id)source delegate:(id)delegate interruptPresenter:(id)presenter
{
  sourceCopy = source;
  delegateCopy = delegate;
  presenterCopy = presenter;
  v16.receiver = self;
  v16.super_class = CarETACardViewController;
  v11 = [(CarETACardViewController *)&v16 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_dataSource, sourceCopy);
    objc_storeWeak(&v12->_delegate, delegateCopy);
    v12->_sharingButtonHidden = 1;
    objc_storeWeak(&v12->_interruptPresenter, presenterCopy);
  }

  view = [(CarETACardViewController *)v12 view];
  LODWORD(v14) = 1148846080;
  [view setContentCompressionResistancePriority:1 forAxis:v14];

  return v12;
}

@end