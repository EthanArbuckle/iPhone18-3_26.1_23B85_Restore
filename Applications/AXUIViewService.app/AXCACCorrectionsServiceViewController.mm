@interface AXCACCorrectionsServiceViewController
- (AXCACCorrectionsServiceViewController)init;
- (void)_dismiss;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)correctionsCollectionViewController:(id)controller didSelectItemWithText:(id)text;
- (void)loadView;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
@end

@implementation AXCACCorrectionsServiceViewController

- (AXCACCorrectionsServiceViewController)init
{
  v14.receiver = self;
  v14.super_class = AXCACCorrectionsServiceViewController;
  v2 = [(AXCACCorrectionsServiceViewController *)&v14 init];
  if (v2)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v3 = qword_1000318A0;
    v23 = qword_1000318A0;
    if (!qword_1000318A0)
    {
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_100004B44;
      v18 = &unk_100028780;
      v19 = &v20;
      sub_100004B44(&v15);
      v3 = v21[3];
    }

    v4 = v3;
    _Block_object_dispose(&v20, 8);
    v5 = objc_opt_new();
    [v5 setDelegate:v2];
    v6 = [[UINavigationController alloc] initWithRootViewController:v5];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v7 = qword_1000318B0;
    v23 = qword_1000318B0;
    if (!qword_1000318B0)
    {
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_100004D0C;
      v18 = &unk_100028780;
      v19 = &v20;
      sub_100004D0C(&v15);
      v7 = v21[3];
    }

    v8 = v7;
    _Block_object_dispose(&v20, 8);
    v9 = objc_opt_new();
    [v9 setViewControllerInPopover:v6];
    [v9 setPopoverPresentationDelegate:v2];
    [(AXCACCorrectionsServiceViewController *)v2 addChildViewController:v9];
    collectionViewController = v2->_collectionViewController;
    v2->_collectionViewController = v5;
    v11 = v5;

    popoverPresentingViewController = v2->_popoverPresentingViewController;
    v2->_popoverPresentingViewController = v9;
  }

  return v2;
}

- (void)loadView
{
  v3 = objc_opt_new();
  [(AXCACCorrectionsServiceViewController *)self setView:v3];
  popoverPresentingViewController = [(AXCACCorrectionsServiceViewController *)self popoverPresentingViewController];
  view = [popoverPresentingViewController view];

  [v3 addSubview:view];
  [v3 bounds];
  [view setFrame:?];
  [view setAutoresizingMask:18];
  [view setAlpha:0.0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000467C;
  v7[3] = &unk_1000287E0;
  v8 = view;
  selfCopy = self;
  v6 = view;
  [UIView animateWithDuration:v7 animations:0.3];
}

- (void)_dismiss
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000047A0;
  v3[3] = &unk_100028758;
  v3[4] = self;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100004814;
  v2[3] = &unk_100028808;
  v2[4] = self;
  [UIView animateWithDuration:v3 animations:v2 completion:0.3];
}

- (void)correctionsCollectionViewController:(id)controller didSelectItemWithText:(id)text
{
  UIAccessibilityPostNotification(0x7EDu, text);

  [(AXCACCorrectionsServiceViewController *)self _dismiss];
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  userInfo = [contextCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:AXCACCorrectionsTextKey];
  collectionViewController = [(AXCACCorrectionsServiceViewController *)self collectionViewController];
  [collectionViewController setText:v8];

  userInfo2 = [contextCopy userInfo];
  v11 = [userInfo2 objectForKeyedSubscript:AXCACCorrectionsAlternativesKey];
  collectionViewController2 = [(AXCACCorrectionsServiceViewController *)self collectionViewController];
  [collectionViewController2 setAlternatives:v11];

  userInfo3 = [contextCopy userInfo];
  v14 = [userInfo3 objectForKeyedSubscript:AXCACCorrectionsEmojisKey];
  collectionViewController3 = [(AXCACCorrectionsServiceViewController *)self collectionViewController];
  [collectionViewController3 setEmojis:v14];

  userInfo4 = [contextCopy userInfo];

  v17 = [userInfo4 objectForKeyedSubscript:AXCACCorrectionsRectKey];
  v26 = CGRectFromString(v17);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  popoverPresentingViewController = [(AXCACCorrectionsServiceViewController *)self popoverPresentingViewController];
  [popoverPresentingViewController setPortraitUpSourceRect:{x, y, width, height}];

  v23 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v23 = completionCopy;
  }
}

@end