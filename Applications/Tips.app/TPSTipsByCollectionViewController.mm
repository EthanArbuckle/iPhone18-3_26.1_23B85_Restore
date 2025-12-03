@interface TPSTipsByCollectionViewController
- (TPSTipsByCollectionViewControllerDelegate)contentDelegate;
- (id)collectionIDForTipID:(id)d;
- (void)appController:(id)controller loadingContent:(BOOL)content;
- (void)appControllerContentUpdated:(id)updated;
- (void)dealloc;
- (void)reloadContentIfNeeded;
- (void)resetTips;
- (void)setPendingReload:(BOOL)reload;
- (void)showError;
- (void)updateContent;
- (void)updateTipsForCurrentCollection;
- (void)updateTitleTextForCollection:(id)collection;
- (void)updateWithCollectionID:(id)d tipID:(id)iD;
@end

@implementation TPSTipsByCollectionViewController

- (void)dealloc
{
  appController = [(TPSAppViewController *)self appController];
  [appController removeDelegate:self];

  v4.receiver = self;
  v4.super_class = TPSTipsByCollectionViewController;
  [(TPSTipsViewController *)&v4 dealloc];
}

- (void)setPendingReload:(BOOL)reload
{
  if (self->_pendingReload != reload)
  {
    self->_pendingReload = reload;
    [(TPSTipsByCollectionViewController *)self reloadContentIfNeeded];
  }
}

- (void)reloadContentIfNeeded
{
  if ([(TPSTipsByCollectionViewController *)self pendingReload]&& [(TPSAppViewController *)self viewWillAppear])
  {
    [(TPSTipsByCollectionViewController *)self updateTipsForCurrentCollection];

    [(TPSTipsByCollectionViewController *)self setPendingReload:0];
  }
}

- (void)updateContent
{
  appController = [(TPSAppViewController *)self appController];
  collections = [appController collections];
  v5 = [collections count];

  if (v5)
  {
LABEL_2:
    appController2 = [(TPSAppViewController *)self appController];
    [(TPSTipsByCollectionViewController *)self appControllerContentUpdated:appController2];

LABEL_3:
    appController3 = [(TPSAppViewController *)self appController];
    [(TPSTipsByCollectionViewController *)self appController:appController3 loadingContent:0];

    [(TPSTipsByCollectionViewController *)self reloadContentIfNeeded];
    return;
  }

  appController4 = [(TPSAppViewController *)self appController];
  updatingContent = [appController4 updatingContent];

  appController5 = [(TPSAppViewController *)self appController];
  v12 = appController5;
  if (!updatingContent)
  {
    featuredCollection = [appController5 featuredCollection];

    if (!featuredCollection)
    {
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  [(TPSTipsByCollectionViewController *)self appController:appController5 loadingContent:1];
}

- (void)updateTipsForCurrentCollection
{
  [(TPSTipsByCollectionViewController *)self resetTips];
  tips = [(TPSTipsViewController *)self tips];
  v4 = [tips count];

  if (v4)
  {
    currentTip = [(TPSTipsViewController *)self currentTip];
    identifier = [currentTip identifier];

    appController = [(TPSAppViewController *)self appController];
    firstObject = [appController tipForIdentifier:identifier];

    if (!firstObject)
    {
      tips2 = [(TPSTipsViewController *)self tips];
      firstObject = [tips2 firstObject];
    }

    [(TPSTipsViewController *)self setCurrentTip:firstObject];
    currentTip2 = [(TPSTipsViewController *)self currentTip];
    [(TPSTipsViewController *)self updatePageControlToTip:currentTip2];
  }

  else
  {
    appController2 = [(TPSAppViewController *)self appController];
    updatingContent = [appController2 updatingContent];

    if ((updatingContent & 1) == 0)
    {

      [(TPSTipsByCollectionViewController *)self showError];
    }
  }
}

- (void)showError
{
  appController = [(TPSAppViewController *)self appController];
  updatingContent = [appController updatingContent];

  if ((updatingContent & 1) == 0)
  {
    appController2 = [(TPSAppViewController *)self appController];
    lastFetchError = [appController2 lastFetchError];
    [(TPSTipsViewController *)self showErrorView:lastFetchError];
  }
}

- (void)updateWithCollectionID:(id)d tipID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (![dCopy length])
  {
    appController = [(TPSAppViewController *)self appController];
    v9 = [appController collectionIdentifierForTipIdentifier:iDCopy];

    dCopy = v9;
  }

  appController2 = [(TPSAppViewController *)self appController];
  v11 = [appController2 collectionForIdentifier:dCopy];

  if (([dCopy isEqualToString:@"Unknown"] & 1) == 0)
  {
    [(TPSTipsByCollectionViewController *)self updateTitleTextForCollection:v11];
  }

  if (![(TPSAppViewController *)self viewWillAppear])
  {
    objc_storeStrong(&self->_pendingCollectionID, dCopy);
    v14 = iDCopy;
    pendingTipID = self->_pendingTipID;
    self->_pendingTipID = v14;
    v42 = dCopy;
LABEL_41:

    goto LABEL_42;
  }

  appController3 = [(TPSAppViewController *)self appController];
  if ([appController3 updatingContent])
  {
    contentHasLoaded = 0;
  }

  else
  {
    appController4 = [(TPSAppViewController *)self appController];
    contentHasLoaded = [appController4 contentHasLoaded];
  }

  collectionID = [(TPSTipsViewController *)self collectionID];
  v18 = [collectionID isEqualToString:dCopy];

  if ((v18 & 1) == 0)
  {
    v19 = dCopy;
    if (!((v11 != 0) | contentHasLoaded & 1))
    {
      objc_storeStrong(&self->_pendingCollectionID, dCopy);
      v19 = 0;
    }

    [(TPSTipsViewController *)self setCollectionID:v19];
    currentCollectionFirstTipID = self->_currentCollectionFirstTipID;
    self->_currentCollectionFirstTipID = 0;

    [(TPSTipsViewController *)self setCurrentTip:0];
  }

  if (contentHasLoaded)
  {
    [(TPSTipsViewController *)self removeErrorView];
  }

  collectionID2 = [(TPSTipsViewController *)self collectionID];
  if ([collectionID2 isEqualToString:@"Unknown"])
  {

    goto LABEL_23;
  }

  if (!v18)
  {

    goto LABEL_22;
  }

  v22 = self->_pendingTipID;

  if (v22)
  {
LABEL_22:
    [(TPSTipsByCollectionViewController *)self updateTipsForCurrentCollection];
  }

LABEL_23:
  v23 = [iDCopy length];
  currentTip = [(TPSTipsViewController *)self currentTip];
  v25 = currentTip;
  if (v23)
  {
    identifier = [currentTip identifier];
    v27 = [identifier isEqualToString:iDCopy];

    if (v27)
    {
      goto LABEL_33;
    }

    firstObject = [(TPSTipsViewController *)self tipForTipID:iDCopy];
    if (!firstObject)
    {
      objc_storeStrong(&self->_pendingTipID, iD);
      tips = [(TPSTipsViewController *)self tips];
      v30 = [tips count];

      if (!v30)
      {
        [(TPSViewController *)self setLoading:1];
      }

      goto LABEL_32;
    }

LABEL_31:
    [(TPSTipsViewController *)self setCurrentTip:firstObject];
LABEL_32:

    goto LABEL_33;
  }

  if (!currentTip)
  {
    goto LABEL_30;
  }

  tips2 = [(TPSTipsViewController *)self tips];
  currentTip2 = [(TPSTipsViewController *)self currentTip];
  v33 = [tips2 indexOfObject:currentTip2];

  if (v33 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_30:
    tips3 = [(TPSTipsViewController *)self tips];
    firstObject = [tips3 firstObject];

    goto LABEL_31;
  }

LABEL_33:
  currentTip3 = [(TPSTipsViewController *)self currentTip];
  [(TPSTipsViewController *)self updatePageControlToTip:currentTip3];

  [(TPSTipsViewController *)self ensureCurrentTipVisible];
  currentTip4 = [(TPSTipsViewController *)self currentTip];
  if (!currentTip4)
  {
    tips4 = [(TPSTipsViewController *)self tips];
    v38 = ([tips4 count] == 0) & contentHasLoaded;

    if (v38 != 1)
    {
      goto LABEL_37;
    }

    pendingCollectionID = self->_pendingCollectionID;
    self->_pendingCollectionID = 0;

    currentTip4 = self->_pendingTipID;
    self->_pendingTipID = 0;
  }

LABEL_37:
  collectionID3 = [(TPSTipsViewController *)self collectionID];
  v41 = collectionID3;
  if (!collectionID3)
  {
    v41 = self->_pendingCollectionID;
  }

  v42 = v41;

  if (![(NSString *)v42 isEqualToString:@"Unknown"])
  {
    pendingTipID = [(TPSAppViewController *)self appController];
    [pendingTipID collectionIdentifierViewed:v42];
    goto LABEL_41;
  }

LABEL_42:
}

- (id)collectionIDForTipID:(id)d
{
  appController = [(TPSAppViewController *)self appController];
  v5 = [appController tipForIdentifier:self->_pendingTipID];

  v6 = +[TPSCommonDefines sharedInstance];
  collectionIdentifiers = [v5 collectionIdentifiers];
  v8 = [v6 collectionIdentifierToUseForCollectionIdentifiers:collectionIdentifiers];

  return v8;
}

- (void)appControllerContentUpdated:(id)updated
{
  v20 = self->_currentCollectionFirstTipID;
  tips = [(TPSTipsViewController *)self tips];
  firstObject = [tips firstObject];
  identifier = [firstObject identifier];
  currentCollectionFirstTipID = self->_currentCollectionFirstTipID;
  self->_currentCollectionFirstTipID = identifier;

  if (self->_pendingTipID)
  {
    v8 = 1;
  }

  else
  {
    v8 = v20 == 0;
  }

  if (!v8 && ![(NSString *)v20 isEqualToString:self->_currentCollectionFirstTipID])
  {
    objc_storeStrong(&self->_pendingTipID, self->_currentCollectionFirstTipID);
  }

  if ([(NSString *)self->_pendingCollectionID isEqualToString:@"Unknown"])
  {
    collectionID = [(TPSTipsViewController *)self collectionID];

    if (!collectionID)
    {
      pendingTipID = self->_pendingTipID;
      identifier2 = pendingTipID;
      if (!pendingTipID)
      {
        collectionID = [(TPSTipsViewController *)self currentTip];
        identifier2 = [collectionID identifier];
      }

      v12 = [(TPSTipsByCollectionViewController *)self collectionIDForTipID:identifier2];
      pendingCollectionID = self->_pendingCollectionID;
      self->_pendingCollectionID = v12;

      if (!pendingTipID)
      {
      }
    }
  }

  v14 = self->_pendingCollectionID;
  if (self->_pendingTipID)
  {
    if (!v14)
    {
      collectionID2 = [(TPSTipsViewController *)self collectionID];
      [(TPSTipsByCollectionViewController *)self updateWithCollectionID:collectionID2 tipID:self->_pendingTipID];

LABEL_18:
      v16 = self->_pendingTipID;
      self->_pendingTipID = 0;

      v17 = self->_pendingCollectionID;
      self->_pendingCollectionID = 0;
      goto LABEL_19;
    }

LABEL_17:
    [TPSTipsByCollectionViewController updateWithCollectionID:"updateWithCollectionID:tipID:" tipID:?];
    goto LABEL_18;
  }

  if (v14)
  {
    goto LABEL_17;
  }

  appController = [(TPSAppViewController *)self appController];
  collectionID3 = [(TPSTipsViewController *)self collectionID];
  v17 = [appController collectionForIdentifier:collectionID3];

  [(TPSTipsByCollectionViewController *)self updateTitleTextForCollection:v17];
  [(TPSTipsByCollectionViewController *)self updateTipsForCurrentCollection];
LABEL_19:
}

- (void)updateTitleTextForCollection:(id)collection
{
  collectionCopy = collection;
  shortTitle = [collectionCopy shortTitle];
  if (!shortTitle)
  {
    title = [collectionCopy title];
    if (title)
    {
      shortTitle = title;
    }

    else
    {
      shortTitle = &stru_1000A4A50;
    }
  }

  [(TPSTipsViewController *)self setTitleText:shortTitle];
  titleText = [(TPSTipsViewController *)self titleText];
  [(TPSTipsViewController *)self updateNavigationTitle:titleText];
}

- (void)appController:(id)controller loadingContent:(BOOL)content
{
  if (content)
  {
    [(TPSTipsViewController *)self removeErrorView];
    tips = [(TPSTipsViewController *)self tips];
    v6 = [tips count];

    if (!v6)
    {

      [(TPSViewController *)self setLoading:1];
    }
  }

  else
  {
    [(TPSViewController *)self setLoading:0];
    tips2 = [(TPSTipsViewController *)self tips];
    v8 = [tips2 count];

    if (v8)
    {
      [(TPSTipsViewController *)self removeErrorView];
      currentTip = [(TPSTipsViewController *)self currentTip];
      [(TPSTipsViewController *)self updatePageControlToTip:currentTip];
    }

    else
    {
      appController = [(TPSAppViewController *)self appController];
      currentTip = [appController lastFetchError];

      [(TPSTipsViewController *)self showErrorView:currentTip];
      v11 = +[TPSLogger default];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        collectionID = [(TPSTipsViewController *)self collectionID];
        v15 = 138412546;
        v16 = collectionID;
        v17 = 2112;
        v18 = currentTip;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Tips feed %@ load failed with error %@", &v15, 0x16u);
      }
    }

    pendingTipID = self->_pendingTipID;
    self->_pendingTipID = 0;

    pendingCollectionID = self->_pendingCollectionID;
    self->_pendingCollectionID = 0;
  }
}

- (void)resetTips
{
  if ([(NSString *)self->_pendingCollectionID length]&& ![(NSString *)self->_pendingCollectionID isEqualToString:@"Unknown"])
  {
    collectionID = self->_pendingCollectionID;
  }

  else
  {
    collectionID = [(TPSTipsViewController *)self collectionID];
  }

  v10 = collectionID;
  contentDelegate = [(TPSTipsByCollectionViewController *)self contentDelegate];
  v5 = [contentDelegate tipsByCollectionViewController:self tipsForCollectionID:v10];

  if (v5)
  {
    currentCollectionFirstTipID = self->_currentCollectionFirstTipID;
    self->_currentCollectionFirstTipID = 0;
LABEL_7:

    goto LABEL_9;
  }

  appController = [(TPSAppViewController *)self appController];
  v5 = [appController tipsForCollectionIdentifier:v10];

  if (!self->_currentCollectionFirstTipID)
  {
    currentCollectionFirstTipID = [v5 firstObject];
    identifier = [currentCollectionFirstTipID identifier];
    v9 = self->_currentCollectionFirstTipID;
    self->_currentCollectionFirstTipID = identifier;

    goto LABEL_7;
  }

LABEL_9:
  [(TPSTipsViewController *)self setTips:v5];
}

- (TPSTipsByCollectionViewControllerDelegate)contentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contentDelegate);

  return WeakRetained;
}

@end