@interface RAPWebBundleContaineeViewController
- (BOOL)_supportsFullHeightCardsOnly;
- (RAPWebBundleContaineeViewController)initWithReport:(id)report completion:(id)completion;
- (double)heightForLayout:(unint64_t)layout;
- (id)_backgroundColorForModalFormSheet;
- (id)webBundleQuestion;
- (void)_handleKeyboardNotification:(id)notification aboutToHide:(BOOL)hide;
- (void)_keyboardAboutToChangeFrame:(id)frame;
- (void)_setInitialCardHeightIfNeeded;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)didDismissByGesture;
- (void)enableDismissByGesture:(BOOL)gesture;
- (void)saveInitialCardHeight:(double)height;
- (void)updateCardHeight:(double)height;
- (void)updatePreferredContentSize;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation RAPWebBundleContaineeViewController

- (void)_keyboardAboutToChangeFrame:(id)frame
{
  if (self->_keyboardShown)
  {
    [(RAPWebBundleContaineeViewController *)self _handleKeyboardNotification:frame aboutToHide:0];
  }
}

- (void)_handleKeyboardNotification:(id)notification aboutToHide:(BOOL)hide
{
  hideCopy = hide;
  notificationCopy = notification;
  v7 = notificationCopy;
  if (hideCopy)
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  else
  {
    userInfo = [notificationCopy userInfo];
    v13 = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
    [v13 CGRectValue];
    x = v14;
    y = v15;
    width = v16;
    height = v17;
  }

  userInfo2 = [v7 userInfo];
  v19 = [userInfo2 objectForKeyedSubscript:UIKeyboardAnimationDurationUserInfoKey];
  [v19 doubleValue];
  v21 = v20;

  userInfo3 = [v7 userInfo];
  v23 = [userInfo3 objectForKeyedSubscript:UIKeyboardAnimationCurveUserInfoKey];
  unsignedIntegerValue = [v23 unsignedIntegerValue];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10061D0C4;
  v25[3] = &unk_10164E3F8;
  v25[4] = self;
  *&v25[5] = x;
  *&v25[6] = y;
  *&v25[7] = width;
  *&v25[8] = height;
  [UIView animateWithDuration:unsignedIntegerValue delay:v25 options:0 animations:v21 completion:0.0];
}

- (void)updatePreferredContentSize
{
  if (sub_10000FA08(self) == 5)
  {
    presentingViewController = [(RAPWebBundleContaineeViewController *)self presentingViewController];
    view = [presentingViewController view];
    window = [view window];
    [window bounds];
    v6 = 520.0;
    if (v7 < 520.0)
    {
      presentingViewController2 = [(RAPWebBundleContaineeViewController *)self presentingViewController];
      view2 = [presentingViewController2 view];
      window2 = [view2 window];
      [window2 bounds];
      v6 = v11;
    }

    _supportsFullHeightCardsOnly = [(RAPWebBundleContaineeViewController *)self _supportsFullHeightCardsOnly];
    v13 = v6;
    if ((_supportsFullHeightCardsOnly & 1) == 0)
    {
      v14 = self->_contentViewController;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      headerView = [(RAPWebBundleHomeViewController *)v16 headerView];
      [headerView frame];
      v19 = v18;
      footerView = [(RAPWebBundleHomeViewController *)v16 footerView];

      [footerView frame];
      v22 = v21 + v19;

      v13 = fmax(self->_cardContentsHeight, 160.0 - v22) + v22;
    }

    v23 = fmin(v13, v6);

    [(RAPWebBundleContaineeViewController *)self setPreferredContentSize:390.0, v23];
  }
}

- (void)saveInitialCardHeight:(double)height
{
  if (![(RAPWebBundleContaineeViewController *)self _supportsFullHeightCardsOnly])
  {
    v19 = +[NSUserDefaults standardUserDefaults];
    v5 = [v19 dictionaryForKey:@"RAPInlineCardHeightDictionary"];
    v6 = [v5 mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }

    v9 = v8;

    webBundleQuestion = [(RAPWebBundleContaineeViewController *)self webBundleQuestion];
    questionTypeAsString = [webBundleQuestion questionTypeAsString];
    v12 = [v9 objectForKeyedSubscript:questionTypeAsString];
    [v12 doubleValue];
    v14 = v13;

    if (v14 != height)
    {
      v15 = [NSNumber numberWithDouble:height];
      webBundleQuestion2 = [(RAPWebBundleContaineeViewController *)self webBundleQuestion];
      questionTypeAsString2 = [webBundleQuestion2 questionTypeAsString];
      [v9 setObject:v15 forKeyedSubscript:questionTypeAsString2];

      v18 = [v9 copy];
      [v19 setObject:v18 forKey:@"RAPInlineCardHeightDictionary"];
    }
  }
}

- (void)updateCardHeight:(double)height
{
  if (self->_cardContentsHeight != height)
  {
    self->_cardContentsHeight = height;
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController updateHeightForCurrentLayoutAnimated:1];

    [(RAPWebBundleContaineeViewController *)self updatePreferredContentSize];
  }
}

- (void)enableDismissByGesture:(BOOL)gesture
{
  gestureCopy = gesture;
  [(RAPWebBundleContaineeViewController *)self setModalInPresentation:!gesture];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setAllowsSwipeToDismiss:gestureCopy];

  presentationController = [(RAPWebBundleContaineeViewController *)self presentationController];
  delegate = [presentationController delegate];

  if (!delegate)
  {
    presentationController2 = [(RAPWebBundleContaineeViewController *)self presentationController];
    [presentationController2 setDelegate:self];
  }
}

- (void)didDismissByGesture
{
  [(RAPWebBundleHomeViewController *)self->_contentViewController didDismissByGesture];
  v3.receiver = self;
  v3.super_class = RAPWebBundleContaineeViewController;
  [(ContaineeViewController *)&v3 didDismissByGesture];
}

- (BOOL)_supportsFullHeightCardsOnly
{
  if (sub_10000FA08(self) && sub_10000FA08(self) != 5)
  {
    return 1;
  }

  webBundleQuestion = [(RAPWebBundleContaineeViewController *)self webBundleQuestion];
  v4 = [webBundleQuestion questionType] - 21 < 0xFFFFFFFFFFFFFFF8;

  return v4;
}

- (double)heightForLayout:(unint64_t)layout
{
  result = -1.0;
  if (layout == 5)
  {
    if ([(RAPWebBundleContaineeViewController *)self _supportsFullHeightCardsOnly]|| self->_cardContentsHeight <= 0.0)
    {
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController availableHeight];
      v13 = v12;

      return v13;
    }

    else
    {
      navigationBar = [(UINavigationController *)self->_navController navigationBar];
      [navigationBar frame];
      v7 = v6;

      v8 = 470.0 - v7;
      cardContentsHeight = self->_cardContentsHeight;
      if (self->_keyboardShown)
      {
        keyboardHeight = self->_keyboardHeight;
        if (keyboardHeight + cardContentsHeight < v8)
        {
          cardContentsHeight = 486.0 - (v7 + keyboardHeight);
        }
      }

      else
      {
        v14 = fmax(cardContentsHeight, v8);
        cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
        [cardPresentationController2 bottomSafeOffset];
        cardContentsHeight = v16 + v14;
      }

      return cardContentsHeight + v7;
    }
  }

  return result;
}

- (id)webBundleQuestion
{
  initialQuestion = [(RAPReport *)self->_report initialQuestion];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    initialQuestion2 = [(RAPReport *)self->_report initialQuestion];
  }

  else
  {
    initialQuestion2 = 0;
  }

  return initialQuestion2;
}

- (void)_setInitialCardHeightIfNeeded
{
  if (![(RAPWebBundleContaineeViewController *)self _supportsFullHeightCardsOnly])
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    v3 = [v8 dictionaryForKey:@"RAPInlineCardHeightDictionary"];
    webBundleQuestion = [(RAPWebBundleContaineeViewController *)self webBundleQuestion];
    questionTypeAsString = [webBundleQuestion questionTypeAsString];
    v6 = [v3 objectForKeyedSubscript:questionTypeAsString];

    if (v6)
    {
      [v6 doubleValue];
    }

    else
    {
      v7 = 160.0;
    }

    [(RAPWebBundleContaineeViewController *)self updateCardHeight:v7];
  }
}

- (void)_setupConstraints
{
  view = [(UINavigationController *)self->_navController view];
  topAnchor = [view topAnchor];
  view2 = [(RAPWebBundleContaineeViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v24[0] = v19;
  view3 = [(UINavigationController *)self->_navController view];
  leadingAnchor = [view3 leadingAnchor];
  view4 = [(RAPWebBundleContaineeViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v24[1] = v14;
  view5 = [(UINavigationController *)self->_navController view];
  trailingAnchor = [view5 trailingAnchor];
  view6 = [(RAPWebBundleContaineeViewController *)self view];
  trailingAnchor2 = [view6 trailingAnchor];
  v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v24[2] = v6;
  view7 = [(UINavigationController *)self->_navController view];
  bottomAnchor = [view7 bottomAnchor];
  view8 = [(RAPWebBundleContaineeViewController *)self view];
  bottomAnchor2 = [view8 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v24[3] = v11;
  v12 = [NSArray arrayWithObjects:v24 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_setupViews
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setPresentedModally:1];

  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController2 setTakesAvailableHeight:1];

  cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController3 setAllowsSwipeToDismiss:0];

  cardPresentationController4 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController4 setDefaultContaineeLayout:5];

  v7 = [[UINavigationController alloc] initWithRootViewController:self->_contentViewController];
  view = [(UINavigationController *)v7 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  [(RAPWebBundleContaineeViewController *)self addChildViewController:v7];
  view2 = [(RAPWebBundleContaineeViewController *)self view];
  view3 = [(UINavigationController *)v7 view];
  [view2 addSubview:view3];

  [(UINavigationController *)v7 didMoveToParentViewController:self];
  navController = self->_navController;
  self->_navController = v7;

  [(RAPWebBundleContaineeViewController *)self _setInitialCardHeightIfNeeded];
}

- (id)_backgroundColorForModalFormSheet
{
  theme = [(RAPWebBundleContaineeViewController *)self theme];
  backgroundColorForModalFormSheet = [theme backgroundColorForModalFormSheet];

  return backgroundColorForModalFormSheet;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = RAPWebBundleContaineeViewController;
  [(RAPWebBundleContaineeViewController *)&v5 viewDidDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = RAPWebBundleContaineeViewController;
  [(ContaineeViewController *)&v7 viewWillAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_keyboardAboutToShow:" name:UIKeyboardWillShowNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_keyboardAboutToHide:" name:UIKeyboardWillHideNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_keyboardAboutToChangeFrame:" name:UIKeyboardWillChangeFrameNotification object:0];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = RAPWebBundleContaineeViewController;
  [(ContaineeViewController *)&v3 viewDidLoad];
  [(RAPWebBundleContaineeViewController *)self _setupViews];
  [(RAPWebBundleContaineeViewController *)self _setupConstraints];
  [(RAPWebBundleContaineeViewController *)self updatePreferredContentSize];
  [(RAPWebBundleContaineeViewController *)self setModalInPresentation:0];
}

- (RAPWebBundleContaineeViewController)initWithReport:(id)report completion:(id)completion
{
  reportCopy = report;
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = RAPWebBundleContaineeViewController;
  v9 = [(RAPWebBundleContaineeViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_report, report);
    v11 = [[RAPWebBundleHomeViewController alloc] initWithReport:reportCopy completion:completionCopy];
    contentViewController = v10->_contentViewController;
    v10->_contentViewController = v11;

    [(RAPWebBundleBaseViewController *)v10->_contentViewController setDelegate:v10];
    [(ContaineeViewController *)v10 setKeepOriginalSafeInsets:1];
  }

  return v10;
}

@end