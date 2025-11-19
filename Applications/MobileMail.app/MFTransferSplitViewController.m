@interface MFTransferSplitViewController
- (AccountListController)accountListController;
- (BOOL)executeIfSplitViewIsAvailable:(id)a3;
- (CGSize)preferredContentSize;
- (MFTransferSplitViewController)initWithItems:(id)a3 scene:(id)a4 options:(unint64_t)a5 didDismissHandler:(id)a6;
- (MFTransferStackViewController)stackViewController;
- (MessageDisplayCapable)scene;
- (TransferNavigationController)transferNavigationController;
- (id)_disabledMailAccountForSourceAccounts:(id)a3 toSameAccountOnly:(BOOL)a4;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (void)_restoreLayoutForDisplayMode:(int64_t)a3;
- (void)setUsePushFromLeftPresentation:(BOOL)a3;
- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)transferMailboxPickerController:(id)a3 animateMessageToPoint:(CGPoint)a4 inView:(id)a5 completion:(id)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MFTransferSplitViewController

- (MFTransferSplitViewController)initWithItems:(id)a3 scene:(id)a4 options:(unint64_t)a5 didDismissHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = MFTransferSplitViewController;
  v14 = [(MFTransferSplitViewController *)&v21 initWithStyle:2];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_itemsToDisplay, a3);
    objc_storeWeak(&v15->_scene, v12);
    v15->_transferOptions = a5;
    v16 = objc_retainBlock(v13);
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
    v6 = [(MFTransferSplitViewController *)self scene];
    v7 = [(TransferNavigationController *)v4 initWithMessages:itemsToDisplay scene:v6 options:self->_transferOptions];
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
    v5 = [(MFTransferSplitViewController *)self scene];
    v6 = [(MFTransferStackViewController *)v4 initWithScene:v5];
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
    v6 = [(MFTransferSplitViewController *)self transferNavigationController];
    v7 = [v6 mailboxPickerController];
    v8 = [v7 sourceAccounts];

    v9 = [(MFTransferSplitViewController *)self _disabledMailAccountForSourceAccounts:v8 toSameAccountOnly:(transferOptions >> 7) & 1];
    if ((self->_transferOptions & 0x80) != 0 && [v8 count] != 1)
    {
      v20 = +[NSAssertionHandler currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"MFTransferSplitViewController.m" lineNumber:82 description:{@"TransferOptionSameAccountOnly option only allows messages in one account. Accounts: %@", v8}];
    }

    v10 = [AccountListController alloc];
    v11 = [(MFTransferSplitViewController *)self scene];
    v12 = [(AccountListController *)v10 initWithScene:v11];
    v13 = self->_accountListController;
    self->_accountListController = v12;

    v14 = [(MFTransferSplitViewController *)self transferNavigationController];
    v15 = [v14 mailboxPickerController];
    [(AccountListController *)self->_accountListController setAccountListDelegate:v15];

    v16 = [(MFTransferSplitViewController *)self transferNavigationController];
    v17 = [v16 mailboxPickerController];
    v18 = [v17 account];
    [(AccountListController *)self->_accountListController setSelectedAccount:v18];

    [(AccountListController *)self->_accountListController setDisabledAccounts:v9];
    accountListController = self->_accountListController;
  }

  return accountListController;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MFTransferSplitViewController;
  [(MFTransferSplitViewController *)&v9 traitCollectionDidChange:v4];
  if ([(MFTransferSplitViewController *)self didAppear])
  {
    v5 = [(MFTransferSplitViewController *)self traitCollection];
    v6 = [v5 mf_traitDifferenceAffectsTextLayout:v4];

    if (v6)
    {
      v7 = [(MFTransferSplitViewController *)self transferNavigationController];
      v8 = [v7 mailboxPickerController];
      [v8 dismiss];
    }
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v30.receiver = self;
  v30.super_class = MFTransferSplitViewController;
  [(MFTransferSplitViewController *)&v30 viewWillAppear:?];
  v5 = [(MFTransferSplitViewController *)self stackViewController];
  v6 = [v5 navigationController];

  if (v6)
  {
    v7 = [v6 viewControllers];
    v8 = [v7 lastObject];
    v9 = [(MFTransferSplitViewController *)self stackViewController];

    if (v8 == v9)
    {
      v10 = [v6 popViewControllerAnimated:0];
    }
  }

  v11 = [(MFTransferSplitViewController *)self transferNavigationController];
  v12 = [v11 mailboxPickerController];
  [v12 setAnimationDelegate:self];

  v13 = [UINavigationController alloc];
  v14 = [(MFTransferSplitViewController *)self stackViewController];
  v15 = [v13 initWithRootViewController:v14];
  stackNavigationController = self->_stackNavigationController;
  self->_stackNavigationController = v15;

  v17 = [(MFTransferSplitViewController *)self accountListController];
  [(MFTransferSplitViewController *)self setViewController:v17 forColumn:0];

  [(MFTransferSplitViewController *)self setViewController:v11 forColumn:1];
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
  v18 = [(MFTransferSplitViewController *)self view];
  [v18 layoutIfNeeded];

  transferOptions = self->_transferOptions;
  v20 = [(MFTransferSplitViewController *)self stackViewController];
  [v20 setTransferOptions:transferOptions];

  [v11 beginAppearanceTransition:1 animated:v3];
  [(UINavigationController *)self->_stackNavigationController beginAppearanceTransition:1 animated:v3];
  v21 = [(MFTransferSplitViewController *)self stackViewController];
  v22 = [v21 stackController];
  LOBYTE(transferOptions) = [v22 hasStackedItems];

  if ((transferOptions & 1) == 0)
  {
    v23 = [(NSArray *)self->_itemsToDisplay ef_map:&stru_100655E08];
    v24 = [(MFTransferSplitViewController *)self stackViewController];
    [v24 displayStackedViewsForItemsWithIDs:v23];
  }

  _Block_object_dispose(&v26, 8);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MFTransferSplitViewController;
  [(MFTransferSplitViewController *)&v4 viewDidAppear:a3];
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
  v4 = [(MFTransferSplitViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(MFTransferSplitViewController *)self scene];
  v6 = [v5 mf_window];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(MFTransferSplitViewController *)self view];
  [v15 setFrame:{v8, v10, v12, v14}];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MFTransferSplitViewController;
  [(MFTransferSplitViewController *)&v6 viewDidDisappear:a3];
  [(MFTransferSplitViewController *)self setDidAppear:0];
  v4 = [(MFTransferSplitViewController *)self didDismissHandler];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
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

- (void)_restoreLayoutForDisplayMode:(int64_t)a3
{
  if ((a3 - 4) >= 3)
  {
    if ((a3 - 2) >= 2)
    {
      return;
    }

    v4 = 1;
  }

  else if (MUISolariumFeatureEnabled())
  {
    v4 = [(MFTransferSplitViewController *)self isCollapsed];
  }

  else
  {
    v4 = 0;
  }

  [(MFTransferSplitViewController *)self mf_setColumn:v4 visible:1 animated:0 completion:0];
}

- (void)setUsePushFromLeftPresentation:(BOOL)a3
{
  self->_usePushFromLeftPresentation = a3;
  if (a3)
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  [(MFTransferSplitViewController *)self setTransitioningDelegate:v3];
}

- (void)transferMailboxPickerController:(id)a3 animateMessageToPoint:(CGPoint)a4 inView:(id)a5 completion:(id)a6
{
  y = a4.y;
  x = a4.x;
  v10 = a5;
  v11 = a6;
  v12 = [v10 window];
  [v10 convertPoint:0 toView:{x, y}];
  [v12 convertPoint:0 toWindow:?];
  v14 = v13;
  v16 = v15;

  v17 = [(MFTransferSplitViewController *)self stackViewController];
  v18 = [v17 stackContainerView];

  v19 = [v18 snapshotView];
  v20 = [(MFTransferSplitViewController *)self view];
  [v18 frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [v18 superview];
  [v20 convertRect:v29 fromView:{v22, v24, v26, v28}];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  [v20 addSubview:v19];
  [v19 setFrame:{v31, v33, v35, v37}];
  v38 = *&CGAffineTransformIdentity.c;
  tx = CGAffineTransformIdentity.tx;
  ty = CGAffineTransformIdentity.ty;
  *&m.a = *&CGAffineTransformIdentity.a;
  *&m.c = v38;
  m.tx = tx;
  m.ty = ty;
  [v19 setTransform:&m];
  [v18 setHidden:1];
  v41 = [v19 layer];
  [v41 position];
  v43 = v42;
  v45 = v44;

  v46 = [v19 superview];
  v47 = [v19 window];
  [v47 convertPoint:0 fromWindow:{v14, v16}];
  [v46 convertPoint:0 fromView:?];
  v49 = v48;
  v51 = v50;

  v73 = v51;
  v74 = v49;
  if (v19)
  {
    [v19 transform];
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
  if (v19)
  {
    [v19 transform];
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
  v70 = [v19 layer];
  [v70 addAnimation:v68 forKey:0];

  v77[0] = _NSConcreteStackBlock;
  v77[1] = 3221225472;
  v77[2] = sub_100227E44;
  v77[3] = &unk_10064C7E8;
  v71 = v19;
  v78 = v71;
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_100227F00;
  v75[3] = &unk_10064E7F8;
  v72 = v11;
  v76 = v72;
  [UIView animateWithDuration:196609 delay:v77 options:v75 animations:0.200000003 completion:0.299999997];
}

- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4
{
  v7 = a3;
  v6 = [(MFTransferSplitViewController *)self stackViewController];
  [v6 updateForDisplayMode:a4 isCollapsed:{objc_msgSend(v7, "isCollapsed")}];
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v5 = a3;
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

- (id)animationControllerForDismissedController:(id)a3
{
  v3 = a3;
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

- (BOOL)executeIfSplitViewIsAvailable:(id)a3
{
  v4 = a3;
  v5 = [(MFTransferSplitViewController *)self scene];
  v6 = [v5 conformsToProtocol:&OBJC_PROTOCOL___SplitLayoutCapable];
  if (v6)
  {
    v7 = [v5 splitViewController];
    v4[2](v4, v7);
  }

  return v6;
}

- (id)_disabledMailAccountForSourceAccounts:(id)a3 toSameAccountOnly:(BOOL)a4
{
  v4 = a4;
  v17 = a3;
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 accountsProvider];
  v20 = [v6 displayedAccounts];

  v7 = +[NSMutableSet set];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v17;
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
        v11 = v20;
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
              if (v4 && v15 != v10 || ([MailAccount canMoveMessagesFromAccount:v10 toAccount:*(*(&v22 + 1) + 8 * i)]& 1) == 0)
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