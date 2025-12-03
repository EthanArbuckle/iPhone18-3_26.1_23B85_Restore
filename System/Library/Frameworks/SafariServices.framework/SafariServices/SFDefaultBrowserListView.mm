@interface SFDefaultBrowserListView
- (BOOL)_shouldHidePinnedHeader;
- (BOOL)_shouldHideScrollInstruction;
- (CGPoint)_collectionViewInitialOffset;
- (CGSize)intrinsicContentSize;
- (SFDefaultBrowserChangeDelegate)delegate;
- (SFDefaultBrowserListView)initWithCompletionHandler:(id)handler;
- (SFDefaultBrowserListViewController)containerViewController;
- (id)_sectionFooterView;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (void)_createPlaceholderLockupViews;
- (void)_didFinishAppInstallation:(id)installation browserChoiceResult:(int64_t)result;
- (void)_installBrowserWithLockupView:(id)view shouldObserveProgress:(BOOL)progress;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)_showAlertForRestrictedBrowser;
- (void)_updateBrowserLockupViews;
- (void)_updateCell:(id)cell lockupView:(id)view;
- (void)_updateHeaderWithLockupView:(id)view;
- (void)_updateListWithState:(unint64_t)state lockupView:(id)view;
- (void)_updateSelectedCellWithProgressMetaData:(id)data lockupView:(id)view;
- (void)browserInstallerDidCancelInstallation;
- (void)browserInstallerDidCompleteAppStoreInstallation;
- (void)browserInstallerDidCompleteInstallation;
- (void)browserInstallerDidFailWithError:(id)error appName:(id)name shouldDismissSheet:(BOOL)sheet;
- (void)browserInstallerDidStartInstallation;
- (void)browserInstallerDownloadWithProgress:(id)progress;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)footerViewDidTapConfirmationAction:(id)action;
- (void)hostApplicationEnteredBackground;
- (void)layoutSubviews;
- (void)lockupViewDidFinishRequest:(id)request;
- (void)productDetailsUserDidInteractWithApp:(id)app interactionType:(id)type;
- (void)setContainerViewController:(id)controller;
- (void)setHeaderView:(id)view;
- (void)setInstructionView:(id)view;
@end

@implementation SFDefaultBrowserListView

- (SFDefaultBrowserListView)initWithCompletionHandler:(id)handler
{
  v39[4] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v38.receiver = self;
  v38.super_class = SFDefaultBrowserListView;
  v5 = [(SFDefaultBrowserListView *)&v38 init];
  if (v5)
  {
    v6 = _Block_copy(handlerCopy);
    completionHandler = v5->_completionHandler;
    v5->_completionHandler = v6;

    [(SFDefaultBrowserListView *)v5 _createPlaceholderLockupViews];
    [(SFDefaultBrowserListView *)v5 _updateBrowserLockupViews];
    v36 = [objc_alloc(MEMORY[0x1E69DC808]) initWithSectionProvider:&__block_literal_global_1];
    v8 = objc_alloc(MEMORY[0x1E69DC7F0]);
    [MEMORY[0x1E69DCEB0] mainScreen];
    v9 = v37 = handlerCopy;
    [v9 bounds];
    v10 = [v8 initWithFrame:v36 collectionViewLayout:?];
    collectionView = v5->_collectionView;
    v5->_collectionView = v10;

    [(UICollectionView *)v5->_collectionView setDelegate:v5];
    [(UICollectionView *)v5->_collectionView setDataSource:v5];
    [(UICollectionView *)v5->_collectionView setScrollEnabled:0];
    v12 = v5->_collectionView;
    v13 = objc_opt_class();
    v14 = +[SFDefaultBrowserAppCollectionViewCell reuseIdentifier];
    [(UICollectionView *)v12 registerClass:v13 forCellWithReuseIdentifier:v14];

    v15 = v5->_collectionView;
    v16 = objc_opt_class();
    v17 = *MEMORY[0x1E69DDC00];
    v18 = +[SFDefaultBrowserListFooterView reuseIdentifier];
    [(UICollectionView *)v15 registerClass:v16 forSupplementaryViewOfKind:v17 withReuseIdentifier:v18];

    [(SFDefaultBrowserListView *)v5 addSubview:v5->_collectionView];
    [(UICollectionView *)v5->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    layoutMarginsGuide = [(SFDefaultBrowserListView *)v5 layoutMarginsGuide];
    v30 = MEMORY[0x1E696ACD8];
    topAnchor = [(UICollectionView *)v5->_collectionView topAnchor];
    topAnchor2 = [(SFDefaultBrowserListView *)v5 topAnchor];
    v33 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v39[0] = v33;
    leadingAnchor = [(UICollectionView *)v5->_collectionView leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v39[1] = v20;
    trailingAnchor = [(UICollectionView *)v5->_collectionView trailingAnchor];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v39[2] = v23;
    bottomAnchor = [(UICollectionView *)v5->_collectionView bottomAnchor];
    bottomAnchor2 = [(SFDefaultBrowserListView *)v5 bottomAnchor];
    v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v39[3] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
    [v30 activateConstraints:v27];

    handlerCopy = v37;
    v28 = v5;
  }

  return v5;
}

id __54__SFDefaultBrowserListView_initWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E69DC7E0];
  v4 = a3;
  v5 = [[v3 alloc] initWithAppearance:0];
  v6 = [MEMORY[0x1E69DC888] clearColor];
  [v5 setBackgroundColor:v6];

  [v5 setShowsSeparators:0];
  v7 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v5 layoutEnvironment:v4];

  [v7 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];

  return v7;
}

- (void)dealloc
{
  [(UIScrollView *)self->_containerScrollView _removeScrollViewScrollObserver:self];
  v3.receiver = self;
  v3.super_class = SFDefaultBrowserListView;
  [(SFDefaultBrowserListView *)&v3 dealloc];
}

- (void)setContainerViewController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    [(UIScrollView *)self->_containerScrollView _removeScrollViewScrollObserver:self];
    objc_storeWeak(&self->_containerViewController, obj);
    scrollView = [obj scrollView];
    objc_storeStrong(&self->_containerScrollView, scrollView);
    [scrollView _addScrollViewScrollObserver:self];
    browserInstaller = self->_browserInstaller;
    if (browserInstaller)
    {
      [(SFDefaultBrowserInstaller *)browserInstaller setPresentingViewController:obj];
    }

    else
    {
      v8 = [[SFDefaultBrowserInstaller alloc] initWithPresentingViewController:obj];
      v9 = self->_browserInstaller;
      self->_browserInstaller = v8;

      [(SFDefaultBrowserInstaller *)self->_browserInstaller setDelegate:self];
    }

    v5 = obj;
  }
}

- (void)setHeaderView:(id)view
{
  viewCopy = view;
  if (self->_headerView != viewCopy)
  {
    v8 = viewCopy;
    objc_storeStrong(&self->_headerView, view);
    isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
    viewCopy = v8;
    if (isSolariumEnabled)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DD6C0]) initWithScrollView:self->_containerScrollView edge:1];
      [(SFDefaultBrowserPinnedHeaderView *)self->_headerView setPocketContainerInteraction:v7];

      viewCopy = v8;
    }
  }
}

- (void)setInstructionView:(id)view
{
  viewCopy = view;
  if (self->_instructionView != viewCopy)
  {
    v8 = viewCopy;
    objc_storeStrong(&self->_instructionView, view);
    isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
    viewCopy = v8;
    if (isSolariumEnabled)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DD6C0]) initWithScrollView:self->_containerScrollView edge:4];
      [(SFDefaultBrowserScrollInstructionView *)self->_instructionView setPocketContainerInteraction:v7];

      viewCopy = v8;
    }
  }
}

- (void)hostApplicationEnteredBackground
{
  mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
  LOBYTE(v4) = self->_userTriedSelectingDisabledBrowser;
  [mEMORY[0x1E69C8810] didSelectBrowserChoice:0 browserAlreadyInstalled:0 browsersWithProductPagesViewed:self->_browsersWithProductPageViewed browserList:self->_browserListBundleIDs userCohort:self->_userCohort listContainsDisabledBrowser:self->_listContainsDisabledBrowser userTriedSelectingDisabledBrowser:v4];

  if ([(SFDefaultBrowserListView *)self _isInstalling])
  {
    if (self->_state == 2)
    {
      [(SFDefaultBrowserInstaller *)self->_browserInstaller stopQuerying];
    }

    [(SFDefaultBrowserInstaller *)self->_browserInstaller enableDaemonNotification];
    v5 = [(NSArray *)self->_browserAppLockupViews objectAtIndexedSubscript:[(NSIndexPath *)self->_selectedIndexPath item]];
    [(SFDefaultBrowserListView *)self _didFinishAppInstallation:v5 browserChoiceResult:2];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SFDefaultBrowserListView;
  [(SFDefaultBrowserListView *)&v4 layoutSubviews];
  [(SFDefaultBrowserListView *)self bounds];
  v3 = fmax((CGRectGetWidth(v5) + -500.0) * 0.5, 0.0);
  [(SFDefaultBrowserListView *)self setLayoutMargins:0.0, v3, 0.0, v3];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  collectionView = self->_collectionView;
  pathCopy = path;
  v7 = +[SFDefaultBrowserAppCollectionViewCell reuseIdentifier];
  v8 = [(UICollectionView *)collectionView dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:pathCopy];

  browserAppLockupViews = self->_browserAppLockupViews;
  v10 = [pathCopy row];

  v11 = [(NSArray *)browserAppLockupViews objectAtIndexedSubscript:v10];
  [(SFDefaultBrowserListView *)self _updateCell:v8 lockupView:v11];

  return v8;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  collectionView = self->_collectionView;
  v7 = *MEMORY[0x1E69DDC00];
  pathCopy = path;
  v9 = +[SFDefaultBrowserListFooterView reuseIdentifier];
  v10 = [(UICollectionView *)collectionView dequeueReusableSupplementaryViewOfKind:v7 withReuseIdentifier:v9 forIndexPath:pathCopy];

  [v10 setDelegate:self];
  [v10 updateButtonState:self->_state];

  return v10;
}

- (void)_updateCell:(id)cell lockupView:(id)view
{
  v15[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  viewCopy = view;
  if (cellCopy)
  {
    [cellCopy setLockupView:viewCopy];
    lockup = [viewCopy lockup];
    v8 = [lockup id];

    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E69DC7C0]);
      [v9 setDisplayedState:0];
      lockup2 = [viewCopy lockup];
      offer = [lockup2 offer];

      if (offer)
      {
        v15[0] = v9;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
        [cellCopy setAccessories:v12];
      }

      else
      {
        v14[0] = v9;
        v12 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
        v14[1] = v12;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
        [cellCopy setAccessories:{v13, v14[0]}];
      }
    }
  }
}

- (void)_updateSelectedCellWithProgressMetaData:(id)data lockupView:(id)view
{
  viewCopy = view;
  if (data)
  {
    v6 = MEMORY[0x1E698B3A8];
    dataCopy = data;
    data = [[v6 alloc] initWithMetadata:dataCopy action:0];
  }

  lockup = [viewCopy lockup];
  v9 = [lockup lockupWithOffer:data];
  [viewCopy setLockup:v9];

  v10 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:self->_selectedIndexPath];
  [(SFDefaultBrowserListView *)self _updateCell:v10 lockupView:viewCopy];
  [(SFDefaultBrowserListView *)self _updateHeaderWithLockupView:viewCopy];
}

- (void)_updateHeaderWithLockupView:(id)view
{
  viewCopy = view;
  v4 = objc_alloc(MEMORY[0x1E698B3C8]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  request = [viewCopy request];
  v7 = [request copy];
  [v5 setRequest:v7];

  if ([(SFDefaultBrowserListView *)self _isInstalling])
  {
    lockup = [viewCopy lockup];
    offer = [lockup offer];
  }

  else
  {
    offer = 0;
  }

  lockup2 = [viewCopy lockup];
  v11 = [lockup2 lockupWithOffer:offer];
  [v5 setLockup:v11];

  [(SFDefaultBrowserPinnedHeaderView *)self->_headerView setLockupView:v5];
  [(SFDefaultBrowserPinnedHeaderView *)self->_headerView setHidden:[(SFDefaultBrowserListView *)self _shouldHidePinnedHeader]];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[NSArray objectAtIndexedSubscript:](self->_browserAppLockupViews, "objectAtIndexedSubscript:", [pathCopy item]);
  selectedIndexPath = self->_selectedIndexPath;
  if (selectedIndexPath && [(NSIndexPath *)selectedIndexPath isEqual:pathCopy])
  {
    [(UICollectionView *)self->_collectionView deselectItemAtIndexPath:pathCopy animated:1];
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = pathCopy;
    v8 = 3;
  }

  v9 = self->_selectedIndexPath;
  self->_selectedIndexPath = v7;

  [(SFDefaultBrowserListView *)self _updateListWithState:v8 lockupView:v5];
  [(SFDefaultBrowserScrollInstructionView *)self->_instructionView setHidden:[(SFDefaultBrowserListView *)self _shouldHideScrollInstruction]];
}

- (void)_createPlaceholderLockupViews
{
  array = [MEMORY[0x1E695DF70] array];
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v7 = 6;
  do
  {
    v8 = [objc_alloc(MEMORY[0x1E698B3C8]) initWithFrame:{v3, v4, v5, v6}];
    [v8 setShowsPlaceholderContent:1];
    [array addObject:v8];

    --v7;
  }

  while (v7);
  v9 = [array copy];
  browserAppLockupViews = self->_browserAppLockupViews;
  self->_browserAppLockupViews = v9;

  [(UICollectionView *)self->_collectionView reloadData];
}

- (void)_updateBrowserLockupViews
{
  v3 = +[SFBrowserASCLockupViewGenerator sharedGenerator];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__SFDefaultBrowserListView__updateBrowserLockupViews__block_invoke;
  v4[3] = &unk_1E848F758;
  v4[4] = self;
  [v3 generateLockupViewsWithDelegate:self completionHandler:v4];
}

uint64_t __53__SFDefaultBrowserListView__updateBrowserLockupViews__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1E69DC808];
    v4 = a2;
    v5 = [[v3 alloc] initWithSectionProvider:&__block_literal_global_25];
    v6 = [v4 copy];

    v7 = *(a1 + 32);
    v8 = *(v7 + 408);
    *(v7 + 408) = v6;

    v9 = [*(*(a1 + 32) + 408) firstObject];
    v10 = [v9 subviews];
    v11 = [v10 firstObject];
    v12 = [v11 effectiveUserInterfaceLayoutDirection];

    if (!v12)
    {
      [*(*(a1 + 32) + 416) setSemanticContentAttribute:3];
      [v5 setLayoutRTL:0];
    }

    [*(*(a1 + 32) + 416) setCollectionViewLayout:v5];
    v13 = *(*(a1 + 32) + 416);
    v14 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
    [v13 reloadSections:v14];

    [*(a1 + 32) invalidateIntrinsicContentSize];
  }

  v15 = *(*(*(a1 + 32) + 432) + 16);

  return v15();
}

id __53__SFDefaultBrowserListView__updateBrowserLockupViews__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DC7E0];
  v4 = a3;
  v5 = [[v3 alloc] initWithAppearance:2];
  v6 = [MEMORY[0x1E69DC888] clearColor];
  [v5 setBackgroundColor:v6];

  [v5 setHeaderTopPadding:0.0];
  v7 = [v5 separatorConfiguration];
  [v7 setBottomSeparatorInsets:{0.0, 15.0, 0.0, 0.0}];
  if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
  {
    [v7 setBottomSeparatorVisibility:1];
  }

  [v5 setFooterMode:1];
  [v5 setSeparatorConfiguration:v7];
  v8 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v5 layoutEnvironment:v4];

  [v8 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  v9 = MEMORY[0x1E6995588];
  v10 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v11 = [MEMORY[0x1E6995558] estimatedDimension:90.0];
  v12 = [v9 sizeWithWidthDimension:v10 heightDimension:v11];

  v13 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v12 elementKind:*MEMORY[0x1E69DDC00] alignment:5];
  [v13 setExtendsBoundary:1];
  v16[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v8 setBoundarySupplementaryItems:v14];

  return v8;
}

- (CGSize)intrinsicContentSize
{
  [(UICollectionView *)self->_collectionView bounds];
  v4 = v3;
  v6 = v5;
  traitCollection = [(SFDefaultBrowserListView *)self traitCollection];
  [SFDefaultBrowserAppCollectionViewCell estimatedSizeForBounds:traitCollection withTraits:v4, v6];
  v9 = v8;

  [(UICollectionView *)self->_collectionView layoutMargins];
  v11 = v10;
  v13 = v12;
  [(UICollectionView *)self->_collectionView bounds];
  v15 = v14 - v11 - v13 + -16.0;
  [(UICollectionView *)self->_collectionView bounds];
  v17 = v16;
  state = self->_state;
  traitCollection2 = [(SFDefaultBrowserListView *)self traitCollection];
  [SFDefaultBrowserListFooterView sizeForBounds:state state:traitCollection2 traitCollection:v15, v17];
  v21 = v20;

  v22 = v21 + v9 * [(NSArray *)self->_browserAppLockupViews count];
  v23 = *MEMORY[0x1E69DE788];
  result.height = v22;
  result.width = v23;
  return result;
}

- (CGPoint)_collectionViewInitialOffset
{
  superview = [(SFDefaultBrowserListView *)self superview];
  v3 = superview;
  if (superview)
  {
    [superview frame];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = *MEMORY[0x1E695EFF8];
    v7 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (id)_sectionFooterView
{
  collectionView = self->_collectionView;
  v3 = *MEMORY[0x1E69DDC00];
  v4 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v5 = [(UICollectionView *)collectionView supplementaryViewForElementKind:v3 atIndexPath:v4];

  return v5;
}

- (BOOL)_shouldHidePinnedHeader
{
  if (self->initialContainerScrollViewContentOffsetY == 0.0)
  {
    [(UIScrollView *)self->_containerScrollView contentOffset];
    self->initialContainerScrollViewContentOffsetY = v3;
  }

  if (!self->_selectedIndexPath)
  {
    return 1;
  }

  [(UICollectionView *)self->_collectionView visibleSize];
  v5 = v4;
  v7 = v6;
  [(UIScrollView *)self->_containerScrollView contentOffset];
  v9 = v8;
  v10 = [(UICollectionView *)self->_collectionView layoutAttributesForItemAtIndexPath:self->_selectedIndexPath];
  [v10 size];
  v12 = v11;
  v14 = v13;
  [v10 frame];
  v16 = v15;
  [(SFDefaultBrowserListView *)self _collectionViewInitialOffset];
  v21.origin.y = self->initialContainerScrollViewContentOffsetY + v16 + v17 - v14;
  v20.origin.x = 0.0;
  v21.origin.x = 0.0;
  v20.origin.y = v9;
  v20.size.width = v5;
  v20.size.height = v7;
  v21.size.width = v12;
  v21.size.height = v14;
  v18 = CGRectIntersectsRect(v20, v21);

  return v18;
}

- (BOOL)_shouldHideScrollInstruction
{
  if (!self->_selectedIndexPath || [(SFDefaultBrowserListView *)self _isInstalling])
  {
    return 1;
  }

  _sectionFooterView = [(SFDefaultBrowserListView *)self _sectionFooterView];
  v5 = _sectionFooterView;
  if (_sectionFooterView)
  {
    [_sectionFooterView frame];
    v7 = v6;
    v9 = v8;
    [v5 frame];
    v11 = v10;
    [(SFDefaultBrowserListView *)self _collectionViewInitialOffset];
    v13 = v9 * 0.5 + v11 + v12;
    v14 = self->_containerScrollView;
    [(UIScrollView *)v14 frame];
    v16 = v15;
    v18 = v17;
    [(UIScrollView *)v14 contentOffset];
    v20 = v19;

    v22.origin.x = 0.0;
    v23.origin.x = 0.0;
    v22.origin.y = v13;
    v22.size.width = v7;
    v22.size.height = v9;
    v23.origin.y = v20;
    v23.size.width = v16;
    v23.size.height = v18;
    v3 = CGRectIntersectsRect(v22, v23);
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)_didFinishAppInstallation:(id)installation browserChoiceResult:(int64_t)result
{
  installationCopy = installation;
  if (result == 1)
  {
    self->_state = 3;
    _sectionFooterView = [(SFDefaultBrowserListView *)self _sectionFooterView];
    [_sectionFooterView updateButtonState:self->_state];
  }

  [(UICollectionView *)self->_collectionView setUserInteractionEnabled:1];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained setNavigationEnabled:1];

  [(SFDefaultBrowserListView *)self _updateSelectedCellWithProgressMetaData:0 lockupView:installationCopy];
  v9 = +[SFDefaultBrowserPromptController sharedController];
  didCompleteBrowserSheet = [v9 didCompleteBrowserSheet];

  if (didCompleteBrowserSheet)
  {
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    v12 = SFDefaultBrowserSelectionStateKey();
    [safari_browserDefaults setInteger:1 forKey:v12];

    v13 = objc_loadWeakRetained(&self->_delegate);
    lockup = [installationCopy lockup];
    bundleID = [lockup bundleID];
    [v13 didChangeDefaultBrowserWithBundleIdentifier:bundleID browserChoiceResult:result];
  }

  else
  {
    v16 = WBS_LOG_CHANNEL_PREFIXBrowserChoiceScreen();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SFDefaultBrowserListView _didFinishAppInstallation:v16 browserChoiceResult:?];
    }
  }
}

- (void)_updateListWithState:(unint64_t)state lockupView:(id)view
{
  viewCopy = view;
  self->_state = state;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  state = self->_state;
  if (state - 1 >= 2)
  {
    if (state == 3)
    {
      [(UICollectionView *)self->_collectionView setUserInteractionEnabled:1];
      [WeakRetained setNavigationEnabled:1];
      selfCopy2 = self;
      v10 = viewCopy;
    }

    else
    {
      selfCopy2 = self;
      v10 = 0;
    }

    [(SFDefaultBrowserListView *)selfCopy2 _updateSelectedCellWithProgressMetaData:0 lockupView:v10];
  }

  else
  {
    [(UICollectionView *)self->_collectionView setUserInteractionEnabled:0];
    [WeakRetained setNavigationEnabled:0];
    indeterminateProgressMetadata = [MEMORY[0x1E698B3E0] indeterminateProgressMetadata];
    [(SFDefaultBrowserListView *)self _updateSelectedCellWithProgressMetaData:indeterminateProgressMetadata lockupView:viewCopy];
  }

  _sectionFooterView = [(SFDefaultBrowserListView *)self _sectionFooterView];
  [_sectionFooterView updateButtonState:self->_state];
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  [(SFDefaultBrowserPinnedHeaderView *)self->_headerView setHidden:[(SFDefaultBrowserListView *)self _shouldHidePinnedHeader]];
  _shouldHideScrollInstruction = [(SFDefaultBrowserListView *)self _shouldHideScrollInstruction];
  instructionView = self->_instructionView;

  [(SFDefaultBrowserScrollInstructionView *)instructionView setHidden:_shouldHideScrollInstruction];
}

- (void)footerViewDidTapConfirmationAction:(id)action
{
  v4 = [(NSArray *)self->_browserAppLockupViews objectAtIndexedSubscript:[(NSIndexPath *)self->_selectedIndexPath item]];
  lockup = [v4 lockup];
  v6 = objc_alloc(MEMORY[0x1E69635F8]);
  bundleID = [lockup bundleID];
  v8 = [v6 initWithBundleIdentifier:bundleID allowPlaceholder:0 error:0];
  if (v8)
  {
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:@"com.apple.AppStore" allowPlaceholder:0 error:0];

    if (!v9)
    {
      v10 = MEMORY[0x1E69DC650];
      v11 = _WBSLocalizedString();
      v12 = MEMORY[0x1E696AEC0];
      v13 = _WBSLocalizedString();
      title = [lockup title];
      title2 = [lockup title];
      v16 = [v12 stringWithFormat:v13, title, title2];
      v17 = [v10 alertControllerWithTitle:v11 message:v16 preferredStyle:1];

      v18 = MEMORY[0x1E69DC648];
      v19 = _WBSLocalizedString();
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __63__SFDefaultBrowserListView_footerViewDidTapConfirmationAction___block_invoke;
      v28[3] = &unk_1E848F780;
      v28[4] = self;
      v20 = v4;
      v29 = v20;
      v21 = [v18 actionWithTitle:v19 style:1 handler:v28];
      [v17 addAction:v21];

      v22 = MEMORY[0x1E69DC648];
      v23 = _WBSLocalizedString();
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __63__SFDefaultBrowserListView_footerViewDidTapConfirmationAction___block_invoke_2;
      v26[3] = &unk_1E848F780;
      v26[4] = self;
      v27 = v20;
      v24 = [v22 actionWithTitle:v23 style:0 handler:v26];

      [v17 addAction:v24];
      [v17 setPreferredAction:v24];
      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      [WeakRetained presentViewController:v17 animated:1 completion:0];

      goto LABEL_5;
    }
  }

  [(SFDefaultBrowserListView *)self _installBrowserWithLockupView:v4 shouldObserveProgress:[(SFDefaultBrowserListView *)self hostAppIsInBackground]^ 1];
LABEL_5:
}

uint64_t __63__SFDefaultBrowserListView_footerViewDidTapConfirmationAction___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateListWithState:1 lockupView:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 464);

  return [v2 installAppStore];
}

- (void)_installBrowserWithLockupView:(id)view shouldObserveProgress:(BOOL)progress
{
  progressCopy = progress;
  viewCopy = view;
  lockup = [viewCopy lockup];
  browserListAgeRating = self->_browserListAgeRating;
  v8 = [lockup id];
  numberValue = [v8 numberValue];
  v10 = [(NSMutableDictionary *)browserListAgeRating objectForKeyedSubscript:numberValue];
  v11 = [SFDefaultBrowserInstaller isRestrictedToInstallBrowser:lockup withAgeRating:v10];

  if (v11)
  {
    [(SFDefaultBrowserListView *)self _showAlertForRestrictedBrowser];
    goto LABEL_11;
  }

  v12 = [(SFDefaultBrowserInstaller *)self->_browserInstaller browserIsAlreadyInstalled:lockup];
  browserInstaller = self->_browserInstaller;
  v14 = self->_browserListAgeRating;
  v15 = [lockup id];
  numberValue2 = [v15 numberValue];
  v17 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:numberValue2];
  v18 = [(SFDefaultBrowserInstaller *)browserInstaller installBrowserFromLockup:lockup shouldObserveProgress:progressCopy ageRating:v17];

  if (v18)
  {
    [(SFDefaultBrowserListView *)self _updateListWithState:2 lockupView:viewCopy];
  }

  lockup2 = [viewCopy lockup];
  if (objc_opt_respondsToSelector())
  {

    if (!v12 && !v18)
    {
      goto LABEL_9;
    }

    lockup2 = [MEMORY[0x1E69C8810] sharedLogger];
    lockup3 = [viewCopy lockup];
    bundleID = [lockup3 bundleID];
    LOBYTE(v22) = self->_userTriedSelectingDisabledBrowser;
    [lockup2 didSelectBrowserChoice:bundleID browserAlreadyInstalled:v12 browsersWithProductPagesViewed:self->_browsersWithProductPageViewed browserList:self->_browserListBundleIDs userCohort:self->_userCohort listContainsDisabledBrowser:self->_listContainsDisabledBrowser userTriedSelectingDisabledBrowser:v22];
  }

LABEL_9:
  if (v12)
  {
    [(SFDefaultBrowserListView *)self _didFinishAppInstallation:viewCopy browserChoiceResult:1];
  }

LABEL_11:
}

- (void)browserInstallerDownloadWithProgress:(id)progress
{
  browserAppLockupViews = self->_browserAppLockupViews;
  selectedIndexPath = self->_selectedIndexPath;
  progressCopy = progress;
  v11 = [(NSArray *)browserAppLockupViews objectAtIndexedSubscript:[(NSIndexPath *)selectedIndexPath item]];
  v7 = MEMORY[0x1E698B3E0];
  [progressCopy fractionCompleted];
  v9 = v8;

  v10 = [v7 progressMetadataWithValue:v9];
  [(SFDefaultBrowserListView *)self _updateSelectedCellWithProgressMetaData:v10 lockupView:v11];
}

- (void)browserInstallerDidStartInstallation
{
  v3 = [(NSArray *)self->_browserAppLockupViews objectAtIndexedSubscript:[(NSIndexPath *)self->_selectedIndexPath item]];
  [(SFDefaultBrowserListView *)self _updateListWithState:2 lockupView:v3];
}

- (void)browserInstallerDidCancelInstallation
{
  v3 = [(NSArray *)self->_browserAppLockupViews objectAtIndexedSubscript:[(NSIndexPath *)self->_selectedIndexPath item]];
  [(SFDefaultBrowserListView *)self _updateListWithState:3 lockupView:v3];
}

- (void)browserInstallerDidCompleteInstallation
{
  if (!self->_didInstallApp)
  {
    self->_didInstallApp = 1;
    v4 = [(NSArray *)self->_browserAppLockupViews objectAtIndexedSubscript:[(NSIndexPath *)self->_selectedIndexPath item]];
    [(SFDefaultBrowserListView *)self _didFinishAppInstallation:v4 browserChoiceResult:0];
  }
}

- (void)browserInstallerDidCompleteAppStoreInstallation
{
  if (!self->_didInstallAppStore)
  {
    self->_didInstallAppStore = 1;
    v4 = [(NSArray *)self->_browserAppLockupViews objectAtIndexedSubscript:[(NSIndexPath *)self->_selectedIndexPath item]];
    [(SFDefaultBrowserListView *)self _installBrowserWithLockupView:v4 shouldObserveProgress:[(SFDefaultBrowserListView *)self hostAppIsInBackground]^ 1];
  }
}

- (void)browserInstallerDidFailWithError:(id)error appName:(id)name shouldDismissSheet:(BOOL)sheet
{
  sheetCopy = sheet;
  errorCopy = error;
  nameCopy = name;
  v10 = WBS_LOG_CHANNEL_PREFIXBrowserChoiceScreen();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [SFDefaultBrowserListView browserInstallerDidFailWithError:nameCopy appName:v10 shouldDismissSheet:errorCopy];
  }

  v11 = [(NSArray *)self->_browserAppLockupViews objectAtIndexedSubscript:[(NSIndexPath *)self->_selectedIndexPath item]];
  if (sheetCopy)
  {
    [(SFDefaultBrowserListView *)self _didFinishAppInstallation:v11 browserChoiceResult:2];
  }

  else
  {
    v12 = MEMORY[0x1E69DC650];
    v13 = MEMORY[0x1E696AEC0];
    v14 = _WBSLocalizedString();
    nameCopy = [v13 stringWithFormat:v14, nameCopy];
    v16 = _WBSLocalizedString();
    v17 = [v12 alertControllerWithTitle:nameCopy message:v16 preferredStyle:1];

    v18 = MEMORY[0x1E69DC648];
    v19 = _WBSLocalizedString();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __88__SFDefaultBrowserListView_browserInstallerDidFailWithError_appName_shouldDismissSheet___block_invoke;
    v22[3] = &unk_1E848F780;
    v22[4] = self;
    v23 = v11;
    v20 = [v18 actionWithTitle:v19 style:1 handler:v22];
    [v17 addAction:v20];

    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained presentViewController:v17 animated:1 completion:0];
  }
}

- (void)_showAlertForRestrictedBrowser
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_1D4644000, a2, OS_LOG_TYPE_ERROR, "Disabled to install %{public}@ due to one of the following restrictions: managed apple ID, age rating or retail store demo mode", &v2, 0xCu);
}

- (void)lockupViewDidFinishRequest:(id)request
{
  requestCopy = request;
  lockup = [requestCopy lockup];
  browserListAgeRating = self->_browserListAgeRating;
  if (!browserListAgeRating)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v7 = self->_browserListAgeRating;
    self->_browserListAgeRating = dictionary;

    browserListAgeRating = self->_browserListAgeRating;
  }

  offer = [lockup offer];
  ageRating = [offer ageRating];
  v10 = [lockup id];
  numberValue = [v10 numberValue];
  [(NSMutableDictionary *)browserListAgeRating setObject:ageRating forKey:numberValue];

  if (!self->_browserListBundleIDs)
  {
    array = [MEMORY[0x1E695DF70] array];
    browserListBundleIDs = self->_browserListBundleIDs;
    self->_browserListBundleIDs = array;
  }

  lockup2 = [requestCopy lockup];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = self->_browserListBundleIDs;
    lockup3 = [requestCopy lockup];
    bundleID = [lockup3 bundleID];
    [(NSMutableArray *)v16 addObject:bundleID];
  }

  if ([(NSMutableArray *)self->_browserListBundleIDs count]== 12)
  {
    mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
    [mEMORY[0x1E69C8810] didShowBrowserChoiceScreen:self->_browserListBundleIDs];
  }

  if (!self->_listContainsDisabledBrowser)
  {
    offer2 = [lockup offer];
    ageRating2 = [offer2 ageRating];
    v22 = [SFDefaultBrowserInstaller isRestrictedToInstallBrowser:lockup withAgeRating:ageRating2];

    if (v22)
    {
      self->_listContainsDisabledBrowser = 1;
    }
  }

  lockup4 = [requestCopy lockup];
  v24 = [lockup4 lockupWithOffer:0];
  [requestCopy setLockup:v24];
}

- (void)productDetailsUserDidInteractWithApp:(id)app interactionType:(id)type
{
  v30 = *MEMORY[0x1E69E9840];
  appCopy = app;
  typeCopy = type;
  v8 = WBS_LOG_CHANNEL_PREFIXBrowserChoiceScreen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = typeCopy;
    _os_log_impl(&dword_1D4644000, v8, OS_LOG_TYPE_INFO, "Received user interaction with type %{public}@", &buf, 0xCu);
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v9 = getASCLockupProductDetailsInteractionTypeSelectedSymbolLoc_ptr;
  v25 = getASCLockupProductDetailsInteractionTypeSelectedSymbolLoc_ptr;
  if (!getASCLockupProductDetailsInteractionTypeSelectedSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v27 = __getASCLockupProductDetailsInteractionTypeSelectedSymbolLoc_block_invoke;
    v28 = &unk_1E848F710;
    v29 = &v22;
    __getASCLockupProductDetailsInteractionTypeSelectedSymbolLoc_block_invoke(&buf);
    v9 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v9)
  {
    [SFDefaultBrowserListView productDetailsUserDidInteractWithApp:interactionType:];
    __break(1u);
  }

  if ([typeCopy isEqualToString:{*v9, v22}])
  {
    v10 = [(NSArray *)self->_browserAppLockupViews indexOfObject:appCopy];
    v11 = [MEMORY[0x1E696AC88] indexPathForItem:v10 inSection:0];
    [(UICollectionView *)self->_collectionView selectItemAtIndexPath:v11 animated:0 scrollPosition:0];
    [(SFDefaultBrowserListView *)self collectionView:self->_collectionView didSelectItemAtIndexPath:v11];
  }

  if (!self->_browsersWithProductPageViewed)
  {
    v12 = [MEMORY[0x1E695DFA8] set];
    browsersWithProductPageViewed = self->_browsersWithProductPageViewed;
    self->_browsersWithProductPageViewed = v12;
  }

  lockup = [appCopy lockup];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = self->_browsersWithProductPageViewed;
    lockup2 = [appCopy lockup];
    bundleID = [lockup2 bundleID];
    [(NSMutableSet *)v16 addObject:bundleID];

    mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
    lockup3 = [appCopy lockup];
    bundleID2 = [lockup3 bundleID];
    [mEMORY[0x1E69C8810] didViewBrowserProductPage:bundleID2];
  }
}

- (SFDefaultBrowserChangeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SFDefaultBrowserListViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (void)browserInstallerDidFailWithError:(uint64_t)a1 appName:(void *)a2 shouldDismissSheet:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 safari_privacyPreservingDescription];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1D4644000, v5, OS_LOG_TYPE_ERROR, "Failed to install %{public}@ with error: %{public}@", &v7, 0x16u);
}

- (uint64_t)productDetailsUserDidInteractWithApp:interactionType:.cold.1()
{
  dlerror();
  v0 = abort_report_np();
  return [SSReadingList addReadingListItemWithURL:v0 title:v1 previewText:v2 error:?];
}

@end