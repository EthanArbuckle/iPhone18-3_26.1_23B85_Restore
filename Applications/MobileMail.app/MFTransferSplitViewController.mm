@interface MFTransferSplitViewController
- (AccountListController)accountListController;
- (BOOL)executeIfSplitViewIsAvailable:(id)available;
- (CGSize)preferredContentSize;
- (MFTransferSplitViewController)initWithItems:(id)items scene:(id)scene options:(unint64_t)options didDismissHandler:(id)handler;
- (MFTransferStackViewController)stackViewController;
- (MessageDisplayCapable)scene;
- (TransferNavigationController)transferNavigationController;
- (id)_disabledMailAccountForSourceAccounts:(id)accounts toSameAccountOnly:(BOOL)only;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (void)_restoreLayoutForDisplayMode:(int64_t)mode;
- (void)setUsePushFromLeftPresentation:(BOOL)presentation;
- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode;
- (void)traitCollectionDidChange:(id)change;
- (void)transferMailboxPickerController:(id)controller animateMessageToPoint:(CGPoint)point inView:(id)view completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MFTransferSplitViewController

- (MFTransferSplitViewController)initWithItems:(id)items scene:(id)scene options:(unint64_t)options didDismissHandler:(id)handler
{
  itemsCopy = items;
  sceneCopy = scene;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = MFTransferSplitViewController;
  v14 = [(MFTransferSplitViewController *)&v21 initWithStyle:2];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_itemsToDisplay, items);
    objc_storeWeak(&v15->_scene, sceneCopy);
    v15->_transferOptions = options;
    v16 = objc_retainBlock(handlerCopy);
    didDismissHandler = v15->_didDismissHandler;
    v15->_didDismissHandler = v16;

    [(MFTransferSplitViewController *)v15 setDelegate:v15];
    v18 = objc_opt_new();
    v19 = +[UIColor mailSplitViewBorderColor];
    [v18 setBorderColor:v19];

    [(MFTransferSplitViewController *)v15 setConfiguration:v18];
  }

  return v15;
}

- (TransferNavigationController)transferNavigationController
{
  transferNavigationController = self->_transferNavigationController;
  if (!transferNavigationController)
  {
    v4 = [TransferNavigationController alloc];
    itemsToDisplay = self->_itemsToDisplay;
    scene = [(MFTransferSplitViewController *)self scene];
    v7 = [(TransferNavigationController *)v4 initWithMessages:itemsToDisplay scene:scene options:self->_transferOptions];
    v8 = self->_transferNavigationController;
    self->_transferNavigationController = v7;

    transferNavigationController = self->_transferNavigationController;
  }

  return transferNavigationController;
}

- (MFTransferStackViewController)stackViewController
{
  stackViewController = self->_stackViewController;
  if (!stackViewController)
  {
    v4 = [MFTransferStackViewController alloc];
    scene = [(MFTransferSplitViewController *)self scene];
    v6 = [(MFTransferStackViewController *)v4 initWithScene:scene];
    v7 = self->_stackViewController;
    self->_stackViewController = v6;

    stackViewController = self->_stackViewController;
  }

  return stackViewController;
}

- (AccountListController)accountListController
{
  accountListController = self->_accountListController;
  if (!accountListController)
  {
    transferOptions = self->_transferOptions;
    transferNavigationController = [(MFTransferSplitViewController *)self transferNavigationController];
    mailboxPickerController = [transferNavigationController mailboxPickerController];
    sourceAccounts = [mailboxPickerController sourceAccounts];

    v9 = [(MFTransferSplitViewController *)self _disabledMailAccountForSourceAccounts:sourceAccounts toSameAccountOnly:(transferOptions >> 7) & 1];
    if ((self->_transferOptions & 0x80) != 0 && [sourceAccounts count] != 1)
    {
      v20 = +[NSAssertionHandler currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"MFTransferSplitViewController.m" lineNumber:82 description:{@"TransferOptionSameAccountOnly option only allows messages in one account. Accounts: %@", sourceAccounts}];
    }

    v10 = [AccountListController alloc];
    scene = [(MFTransferSplitViewController *)self scene];
    v12 = [(AccountListController *)v10 initWithScene:scene];
    v13 = self->_accountListController;
    self->_accountListController = v12;

    transferNavigationController2 = [(MFTransferSplitViewController *)self transferNavigationController];
    mailboxPickerController2 = [transferNavigationController2 mailboxPickerController];
    [(AccountListController *)self->_accountListController setAccountListDelegate:mailboxPickerController2];

    transferNavigationController3 = [(MFTransferSplitViewController *)self transferNavigationController];
    mailboxPickerController3 = [transferNavigationController3 mailboxPickerController];
    account = [mailboxPickerController3 account];
    [(AccountListController *)self->_accountListController setSelectedAccount:account];

    [(AccountListController *)self->_accountListController setDisabledAccounts:v9];
    accountListController = self->_accountListController;
  }

  return accountListController;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = MFTransferSplitViewController;
  [(MFTransferSplitViewController *)&v9 traitCollectionDidChange:changeCopy];
  if ([(MFTransferSplitViewController *)self didAppear])
  {
    traitCollection = [(MFTransferSplitViewController *)self traitCollection];
    v6 = [traitCollection mf_traitDifferenceAffectsTextLayout:changeCopy];

    if (v6)
    {
      transferNavigationController = [(MFTransferSplitViewController *)self transferNavigationController];
      mailboxPickerController = [transferNavigationController mailboxPickerController];
      [mailboxPickerController dismiss];
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v30.receiver = self;
  v30.super_class = MFTransferSplitViewController;
  [(MFTransferSplitViewController *)&v30 viewWillAppear:?];
  stackViewController = [(MFTransferSplitViewController *)self stackViewController];
  navigationController = [stackViewController navigationController];

  if (navigationController)
  {
    viewControllers = [navigationController viewControllers];
    lastObject = [viewControllers lastObject];
    stackViewController2 = [(MFTransferSplitViewController *)self stackViewController];

    if (lastObject == stackViewController2)
    {
      v10 = [navigationController popViewControllerAnimated:0];
    }
  }

  transferNavigationController = [(MFTransferSplitViewController *)self transferNavigationController];
  mailboxPickerController = [transferNavigationController mailboxPickerController];
  [mailboxPickerController setAnimationDelegate:self];

  v13 = [UINavigationController alloc];
  stackViewController3 = [(MFTransferSplitViewController *)self stackViewController];
  v15 = [v13 initWithRootViewController:stackViewController3];
  stackNavigationController = self->_stackNavigationController;
  self->_stackNavigationController = v15;

  accountListController = [(MFTransferSplitViewController *)self accountListController];
  [(MFTransferSplitViewController *)self setViewController:accountListController forColumn:0];

  [(MFTransferSplitViewController *)self setViewController:transferNavigationController forColumn:1];
  [(MFTransferSplitViewController *)self setViewController:self->_stackNavigationController forColumn:2];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100227488;
  v25[3] = &unk_10064E2A8;
  v25[4] = &v26;
  [(MFTransferSplitViewController *)self executeIfSplitViewIsAvailable:v25];
  [(MFTransferSplitViewController *)self _restoreLayoutForDisplayMode:v27[3]];
  view = [(MFTransferSplitViewController *)self view];
  [view layoutIfNeeded];

  transferOptions = self->_transferOptions;
  stackViewController4 = [(MFTransferSplitViewController *)self stackViewController];
  [stackViewController4 setTransferOptions:transferOptions];

  [transferNavigationController beginAppearanceTransition:1 animated:appearCopy];
  [(UINavigationController *)self->_stackNavigationController beginAppearanceTransition:1 animated:appearCopy];
  stackViewController5 = [(MFTransferSplitViewController *)self stackViewController];
  stackController = [stackViewController5 stackController];
  LOBYTE(transferOptions) = [stackController hasStackedItems];

  if ((transferOptions & 1) == 0)
  {
    v23 = [(NSArray *)self->_itemsToDisplay ef_map:&stru_100655E08];
    stackViewController6 = [(MFTransferSplitViewController *)self stackViewController];
    [stackViewController6 displayStackedViewsForItemsWithIDs:v23];
  }

  _Block_object_dispose(&v26, 8);
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MFTransferSplitViewController;
  [(MFTransferSplitViewController *)&v4 viewDidAppear:appear];
  [(MFTransferSplitViewController *)self setDidAppear:1];
  if ([(MFTransferSplitViewController *)self displayMode]== 1)
  {
    [(MFTransferSplitViewController *)self _ensureSupplementaryViewControllerIsVisibleAnimated:1];
  }
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = MFTransferSplitViewController;
  [(MFTransferSplitViewController *)&v16 viewDidLoad];
  v3 = +[UIColor clearColor];
  view = [(MFTransferSplitViewController *)self view];
  [view setBackgroundColor:v3];

  scene = [(MFTransferSplitViewController *)self scene];
  mf_window = [scene mf_window];
  [mf_window frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  view2 = [(MFTransferSplitViewController *)self view];
  [view2 setFrame:{v8, v10, v12, v14}];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = MFTransferSplitViewController;
  [(MFTransferSplitViewController *)&v6 viewDidDisappear:disappear];
  [(MFTransferSplitViewController *)self setDidAppear:0];
  didDismissHandler = [(MFTransferSplitViewController *)self didDismissHandler];
  v5 = didDismissHandler;
  if (didDismissHandler)
  {
    (*(didDismissHandler + 16))(didDismissHandler);
  }

  [(MFTransferSplitViewController *)self setDidDismissHandler:0];
}

- (CGSize)preferredContentSize
{
  if (MUISolariumFeatureEnabled() && +[UIDevice mf_isPadIdiom](UIDevice, "mf_isPadIdiom") && (-[MFTransferSplitViewController popoverPresentationController](self, "popoverPresentationController"), v3 = objc_claimAutoreleasedReturnValue(), [v3 presentingViewController], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MFTransferSplitViewController;
    [(MFTransferSplitViewController *)&v7 preferredContentSize];
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)_restoreLayoutForDisplayMode:(int64_t)mode
{
  if ((mode - 4) >= 3)
  {
    if ((mode - 2) >= 2)
    {
      return;
    }

    isCollapsed = 1;
  }

  else if (MUISolariumFeatureEnabled())
  {
    isCollapsed = [(MFTransferSplitViewController *)self isCollapsed];
  }

  else
  {
    isCollapsed = 0;
  }

  [(MFTransferSplitViewController *)self mf_setColumn:isCollapsed visible:1 animated:0 completion:0];
}

- (void)setUsePushFromLeftPresentation:(BOOL)presentation
{
  self->_usePushFromLeftPresentation = presentation;
  if (presentation)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  [(MFTransferSplitViewController *)self setTransitioningDelegate:selfCopy];
}

- (void)transferMailboxPickerController:(id)controller animateMessageToPoint:(CGPoint)point inView:(id)view completion:(id)completion
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  completionCopy = completion;
  window = [viewCopy window];
  [viewCopy convertPoint:0 toView:{x, y}];
  [window convertPoint:0 toWindow:?];
  v14 = v13;
  v16 = v15;

  stackViewController = [(MFTransferSplitViewController *)self stackViewController];
  stackContainerView = [stackViewController stackContainerView];

  snapshotView = [stackContainerView snapshotView];
  view = [(MFTransferSplitViewController *)self view];
  [stackContainerView frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  superview = [stackContainerView superview];
  [view convertRect:superview fromView:{v22, v24, v26, v28}];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  [view addSubview:snapshotView];
  [snapshotView setFrame:{v31, v33, v35, v37}];
  v38 = *&CGAffineTransformIdentity.c;
  tx = CGAffineTransformIdentity.tx;
  ty = CGAffineTransformIdentity.ty;
  *&m.a = *&CGAffineTransformIdentity.a;
  *&m.c = v38;
  m.tx = tx;
  m.ty = ty;
  [snapshotView setTransform:&m];
  [stackContainerView setHidden:1];
  layer = [snapshotView layer];
  [layer position];
  v43 = v42;
  v45 = v44;

  superview2 = [snapshotView superview];
  window2 = [snapshotView window];
  [window2 convertPoint:0 fromWindow:{v14, v16}];
  [superview2 convertPoint:0 fromView:?];
  v49 = v48;
  v51 = v50;

  v73 = v51;
  v74 = v49;
  if (snapshotView)
  {
    [snapshotView transform];
    a = m.a;
    b = m.b;
    c = m.c;
    d = m.d;
    v56 = m.tx;
    v57 = m.ty;
  }

  else
  {
    v57 = 0.0;
    d = 0.0;
    b = 0.0;
    v56 = 0.0;
    c = 0.0;
    a = 0.0;
  }

  *&v58 = -1;
  *(&v58 + 1) = -1;
  *&m.c = v58;
  *&m.tx = v58;
  *&m.a = v58;
  if (snapshotView)
  {
    [snapshotView transform];
  }

  else
  {
    memset(&v79, 0, sizeof(v79));
  }

  CGAffineTransformTranslate(&m, &v79, v56 + v45 * c + a * v43 - v43, v57 + v45 * d + b * v43 - v45);
  v60 = m.a;
  v59 = m.b;
  v62 = m.c;
  v61 = m.d;
  v64 = m.tx;
  v63 = m.ty;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, &m, v43, v45);
  CGPathAddQuadCurveToPoint(Mutable, &m, (v43 + v64 + v73 * v62 + v60 * v74) * 0.5 + 0.0, (v45 + v63 + v73 * v61 + v59 * v74) * 0.5 + -450.0, v64 + v73 * v62 + v60 * v74, v63 + v73 * v61 + v59 * v74);
  v66 = [[NSMutableArray alloc] initWithCapacity:2];
  v67 = [CAKeyframeAnimation animationWithKeyPath:@"position"];
  [v67 setPath:Mutable];
  CGPathRelease(Mutable);
  [v66 addObject:v67];
  v68 = +[CAAnimationGroup animation];
  [v68 setAnimations:v66];
  UIAnimationDragCoefficient();
  [v68 setDuration:v69 * 0.5];
  layer2 = [snapshotView layer];
  [layer2 addAnimation:v68 forKey:0];

  v77[0] = _NSConcreteStackBlock;
  v77[1] = 3221225472;
  v77[2] = sub_100227E44;
  v77[3] = &unk_10064C7E8;
  v71 = snapshotView;
  v78 = v71;
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_100227F00;
  v75[3] = &unk_10064E7F8;
  v72 = completionCopy;
  v76 = v72;
  [UIView animateWithDuration:196609 delay:v77 options:v75 animations:0.200000003 completion:0.299999997];
}

- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode
{
  controllerCopy = controller;
  stackViewController = [(MFTransferSplitViewController *)self stackViewController];
  [stackViewController updateForDisplayMode:mode isCollapsed:{objc_msgSend(controllerCopy, "isCollapsed")}];
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_alloc_init(MFTransferSplitViewPresentationAnimationController);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_alloc_init(MFTransferSplitViewDismissalAnimationController);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)executeIfSplitViewIsAvailable:(id)available
{
  availableCopy = available;
  scene = [(MFTransferSplitViewController *)self scene];
  v6 = [scene conformsToProtocol:&OBJC_PROTOCOL___SplitLayoutCapable];
  if (v6)
  {
    splitViewController = [scene splitViewController];
    availableCopy[2](availableCopy, splitViewController);
  }

  return v6;
}

- (id)_disabledMailAccountForSourceAccounts:(id)accounts toSameAccountOnly:(BOOL)only
{
  onlyCopy = only;
  accountsCopy = accounts;
  v5 = +[UIApplication sharedApplication];
  accountsProvider = [v5 accountsProvider];
  displayedAccounts = [accountsProvider displayedAccounts];

  v7 = +[NSMutableSet set];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = accountsCopy;
  v8 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v19 = *v27;
    do
    {
      v9 = 0;
      v21 = v8;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = displayedAccounts;
        v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v12)
        {
          v13 = *v23;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = *(*(&v22 + 1) + 8 * i);
              if (onlyCopy && v15 != v10 || ([MailAccount canMoveMessagesFromAccount:v10 toAccount:*(*(&v22 + 1) + 8 * i)]& 1) == 0)
              {
                [v7 addObject:v15];
              }
            }

            v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v12);
        }

        v9 = v9 + 1;
      }

      while (v9 != v21);
      v8 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  return v7;
}

- (MessageDisplayCapable)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end