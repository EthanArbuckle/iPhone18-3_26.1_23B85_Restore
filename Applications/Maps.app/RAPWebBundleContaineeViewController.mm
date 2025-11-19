@interface RAPWebBundleContaineeViewController
- (BOOL)_supportsFullHeightCardsOnly;
- (RAPWebBundleContaineeViewController)initWithReport:(id)a3 completion:(id)a4;
- (double)heightForLayout:(unint64_t)a3;
- (id)_backgroundColorForModalFormSheet;
- (id)webBundleQuestion;
- (void)_handleKeyboardNotification:(id)a3 aboutToHide:(BOOL)a4;
- (void)_keyboardAboutToChangeFrame:(id)a3;
- (void)_setInitialCardHeightIfNeeded;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)didDismissByGesture;
- (void)enableDismissByGesture:(BOOL)a3;
- (void)saveInitialCardHeight:(double)a3;
- (void)updateCardHeight:(double)a3;
- (void)updatePreferredContentSize;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation RAPWebBundleContaineeViewController

- (void)_keyboardAboutToChangeFrame:(id)a3
{
  if (self->_keyboardShown)
  {
    [(RAPWebBundleContaineeViewController *)self _handleKeyboardNotification:a3 aboutToHide:0];
  }
}

- (void)_handleKeyboardNotification:(id)a3 aboutToHide:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  else
  {
    v12 = [v6 userInfo];
    v13 = [v12 objectForKey:UIKeyboardFrameEndUserInfoKey];
    [v13 CGRectValue];
    x = v14;
    y = v15;
    width = v16;
    height = v17;
  }

  v18 = [v7 userInfo];
  v19 = [v18 objectForKeyedSubscript:UIKeyboardAnimationDurationUserInfoKey];
  [v19 doubleValue];
  v21 = v20;

  v22 = [v7 userInfo];
  v23 = [v22 objectForKeyedSubscript:UIKeyboardAnimationCurveUserInfoKey];
  v24 = [v23 unsignedIntegerValue];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10061D0C4;
  v25[3] = &unk_10164E3F8;
  v25[4] = self;
  *&v25[5] = x;
  *&v25[6] = y;
  *&v25[7] = width;
  *&v25[8] = height;
  [UIView animateWithDuration:v24 delay:v25 options:0 animations:v21 completion:0.0];
}

- (void)updatePreferredContentSize
{
  if (sub_10000FA08(self) == 5)
  {
    v3 = [(RAPWebBundleContaineeViewController *)self presentingViewController];
    v4 = [v3 view];
    v5 = [v4 window];
    [v5 bounds];
    v6 = 520.0;
    if (v7 < 520.0)
    {
      v8 = [(RAPWebBundleContaineeViewController *)self presentingViewController];
      v9 = [v8 view];
      v10 = [v9 window];
      [v10 bounds];
      v6 = v11;
    }

    v12 = [(RAPWebBundleContaineeViewController *)self _supportsFullHeightCardsOnly];
    v13 = v6;
    if ((v12 & 1) == 0)
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

      v17 = [(RAPWebBundleHomeViewController *)v16 headerView];
      [v17 frame];
      v19 = v18;
      v20 = [(RAPWebBundleHomeViewController *)v16 footerView];

      [v20 frame];
      v22 = v21 + v19;

      v13 = fmax(self->_cardContentsHeight, 160.0 - v22) + v22;
    }

    v23 = fmin(v13, v6);

    [(RAPWebBundleContaineeViewController *)self setPreferredContentSize:390.0, v23];
  }
}

- (void)saveInitialCardHeight:(double)a3
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

    v10 = [(RAPWebBundleContaineeViewController *)self webBundleQuestion];
    v11 = [v10 questionTypeAsString];
    v12 = [v9 objectForKeyedSubscript:v11];
    [v12 doubleValue];
    v14 = v13;

    if (v14 != a3)
    {
      v15 = [NSNumber numberWithDouble:a3];
      v16 = [(RAPWebBundleContaineeViewController *)self webBundleQuestion];
      v17 = [v16 questionTypeAsString];
      [v9 setObject:v15 forKeyedSubscript:v17];

      v18 = [v9 copy];
      [v19 setObject:v18 forKey:@"RAPInlineCardHeightDictionary"];
    }
  }
}

- (void)updateCardHeight:(double)a3
{
  if (self->_cardContentsHeight != a3)
  {
    self->_cardContentsHeight = a3;
    v5 = [(ContaineeViewController *)self cardPresentationController];
    [v5 updateHeightForCurrentLayoutAnimated:1];

    [(RAPWebBundleContaineeViewController *)self updatePreferredContentSize];
  }
}

- (void)enableDismissByGesture:(BOOL)a3
{
  v3 = a3;
  [(RAPWebBundleContaineeViewController *)self setModalInPresentation:!a3];
  v5 = [(ContaineeViewController *)self cardPresentationController];
  [v5 setAllowsSwipeToDismiss:v3];

  v6 = [(RAPWebBundleContaineeViewController *)self presentationController];
  v7 = [v6 delegate];

  if (!v7)
  {
    v8 = [(RAPWebBundleContaineeViewController *)self presentationController];
    [v8 setDelegate:self];
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

  v3 = [(RAPWebBundleContaineeViewController *)self webBundleQuestion];
  v4 = [v3 questionType] - 21 < 0xFFFFFFFFFFFFFFF8;

  return v4;
}

- (double)heightForLayout:(unint64_t)a3
{
  result = -1.0;
  if (a3 == 5)
  {
    if ([(RAPWebBundleContaineeViewController *)self _supportsFullHeightCardsOnly]|| self->_cardContentsHeight <= 0.0)
    {
      v11 = [(ContaineeViewController *)self cardPresentationController];
      [v11 availableHeight];
      v13 = v12;

      return v13;
    }

    else
    {
      v5 = [(UINavigationController *)self->_navController navigationBar];
      [v5 frame];
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
        v15 = [(ContaineeViewController *)self cardPresentationController];
        [v15 bottomSafeOffset];
        cardContentsHeight = v16 + v14;
      }

      return cardContentsHeight + v7;
    }
  }

  return result;
}

- (id)webBundleQuestion
{
  v3 = [(RAPReport *)self->_report initialQuestion];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(RAPReport *)self->_report initialQuestion];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setInitialCardHeightIfNeeded
{
  if (![(RAPWebBundleContaineeViewController *)self _supportsFullHeightCardsOnly])
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    v3 = [v8 dictionaryForKey:@"RAPInlineCardHeightDictionary"];
    v4 = [(RAPWebBundleContaineeViewController *)self webBundleQuestion];
    v5 = [v4 questionTypeAsString];
    v6 = [v3 objectForKeyedSubscript:v5];

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
  v23 = [(UINavigationController *)self->_navController view];
  v21 = [v23 topAnchor];
  v22 = [(RAPWebBundleContaineeViewController *)self view];
  v20 = [v22 topAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v24[0] = v19;
  v18 = [(UINavigationController *)self->_navController view];
  v16 = [v18 leadingAnchor];
  v17 = [(RAPWebBundleContaineeViewController *)self view];
  v15 = [v17 leadingAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v24[1] = v14;
  v13 = [(UINavigationController *)self->_navController view];
  v3 = [v13 trailingAnchor];
  v4 = [(RAPWebBundleContaineeViewController *)self view];
  v5 = [v4 trailingAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v24[2] = v6;
  v7 = [(UINavigationController *)self->_navController view];
  v8 = [v7 bottomAnchor];
  v9 = [(RAPWebBundleContaineeViewController *)self view];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v24[3] = v11;
  v12 = [NSArray arrayWithObjects:v24 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_setupViews
{
  v3 = [(ContaineeViewController *)self cardPresentationController];
  [v3 setPresentedModally:1];

  v4 = [(ContaineeViewController *)self cardPresentationController];
  [v4 setTakesAvailableHeight:1];

  v5 = [(ContaineeViewController *)self cardPresentationController];
  [v5 setAllowsSwipeToDismiss:0];

  v6 = [(ContaineeViewController *)self cardPresentationController];
  [v6 setDefaultContaineeLayout:5];

  v7 = [[UINavigationController alloc] initWithRootViewController:self->_contentViewController];
  v8 = [(UINavigationController *)v7 view];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(RAPWebBundleContaineeViewController *)self addChildViewController:v7];
  v9 = [(RAPWebBundleContaineeViewController *)self view];
  v10 = [(UINavigationController *)v7 view];
  [v9 addSubview:v10];

  [(UINavigationController *)v7 didMoveToParentViewController:self];
  navController = self->_navController;
  self->_navController = v7;

  [(RAPWebBundleContaineeViewController *)self _setInitialCardHeightIfNeeded];
}

- (id)_backgroundColorForModalFormSheet
{
  v2 = [(RAPWebBundleContaineeViewController *)self theme];
  v3 = [v2 backgroundColorForModalFormSheet];

  return v3;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = RAPWebBundleContaineeViewController;
  [(RAPWebBundleContaineeViewController *)&v5 viewDidDisappear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = RAPWebBundleContaineeViewController;
  [(ContaineeViewController *)&v7 viewWillAppear:a3];
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

- (RAPWebBundleContaineeViewController)initWithReport:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = RAPWebBundleContaineeViewController;
  v9 = [(RAPWebBundleContaineeViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_report, a3);
    v11 = [[RAPWebBundleHomeViewController alloc] initWithReport:v7 completion:v8];
    contentViewController = v10->_contentViewController;
    v10->_contentViewController = v11;

    [(RAPWebBundleBaseViewController *)v10->_contentViewController setDelegate:v10];
    [(ContaineeViewController *)v10 setKeepOriginalSafeInsets:1];
  }

  return v10;
}

@end