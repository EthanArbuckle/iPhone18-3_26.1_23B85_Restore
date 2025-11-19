@interface TPSTipsByCollectionViewController
- (TPSTipsByCollectionViewControllerDelegate)contentDelegate;
- (id)collectionIDForTipID:(id)a3;
- (void)appController:(id)a3 loadingContent:(BOOL)a4;
- (void)appControllerContentUpdated:(id)a3;
- (void)dealloc;
- (void)reloadContentIfNeeded;
- (void)resetTips;
- (void)setPendingReload:(BOOL)a3;
- (void)showError;
- (void)updateContent;
- (void)updateTipsForCurrentCollection;
- (void)updateTitleTextForCollection:(id)a3;
- (void)updateWithCollectionID:(id)a3 tipID:(id)a4;
@end

@implementation TPSTipsByCollectionViewController

- (void)dealloc
{
  v3 = [(TPSAppViewController *)self appController];
  [v3 removeDelegate:self];

  v4.receiver = self;
  v4.super_class = TPSTipsByCollectionViewController;
  [(TPSTipsViewController *)&v4 dealloc];
}

- (void)setPendingReload:(BOOL)a3
{
  if (self->_pendingReload != a3)
  {
    self->_pendingReload = a3;
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
  v3 = [(TPSAppViewController *)self appController];
  v4 = [v3 collections];
  v5 = [v4 count];

  if (v5)
  {
LABEL_2:
    v6 = [(TPSAppViewController *)self appController];
    [(TPSTipsByCollectionViewController *)self appControllerContentUpdated:v6];

LABEL_3:
    v7 = [(TPSAppViewController *)self appController];
    [(TPSTipsByCollectionViewController *)self appController:v7 loadingContent:0];

    [(TPSTipsByCollectionViewController *)self reloadContentIfNeeded];
    return;
  }

  v8 = [(TPSAppViewController *)self appController];
  v9 = [v8 updatingContent];

  v10 = [(TPSAppViewController *)self appController];
  v12 = v10;
  if (!v9)
  {
    v11 = [v10 featuredCollection];

    if (!v11)
    {
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  [(TPSTipsByCollectionViewController *)self appController:v10 loadingContent:1];
}

- (void)updateTipsForCurrentCollection
{
  [(TPSTipsByCollectionViewController *)self resetTips];
  v3 = [(TPSTipsViewController *)self tips];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(TPSTipsViewController *)self currentTip];
    v12 = [v5 identifier];

    v6 = [(TPSAppViewController *)self appController];
    v7 = [v6 tipForIdentifier:v12];

    if (!v7)
    {
      v8 = [(TPSTipsViewController *)self tips];
      v7 = [v8 firstObject];
    }

    [(TPSTipsViewController *)self setCurrentTip:v7];
    v9 = [(TPSTipsViewController *)self currentTip];
    [(TPSTipsViewController *)self updatePageControlToTip:v9];
  }

  else
  {
    v10 = [(TPSAppViewController *)self appController];
    v11 = [v10 updatingContent];

    if ((v11 & 1) == 0)
    {

      [(TPSTipsByCollectionViewController *)self showError];
    }
  }
}

- (void)showError
{
  v3 = [(TPSAppViewController *)self appController];
  v4 = [v3 updatingContent];

  if ((v4 & 1) == 0)
  {
    v6 = [(TPSAppViewController *)self appController];
    v5 = [v6 lastFetchError];
    [(TPSTipsViewController *)self showErrorView:v5];
  }
}

- (void)updateWithCollectionID:(id)a3 tipID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 length])
  {
    v8 = [(TPSAppViewController *)self appController];
    v9 = [v8 collectionIdentifierForTipIdentifier:v7];

    v6 = v9;
  }

  v10 = [(TPSAppViewController *)self appController];
  v11 = [v10 collectionForIdentifier:v6];

  if (([v6 isEqualToString:@"Unknown"] & 1) == 0)
  {
    [(TPSTipsByCollectionViewController *)self updateTitleTextForCollection:v11];
  }

  if (![(TPSAppViewController *)self viewWillAppear])
  {
    objc_storeStrong(&self->_pendingCollectionID, v6);
    v14 = v7;
    pendingTipID = self->_pendingTipID;
    self->_pendingTipID = v14;
    v42 = v6;
LABEL_41:

    goto LABEL_42;
  }

  v12 = [(TPSAppViewController *)self appController];
  if ([v12 updatingContent])
  {
    v13 = 0;
  }

  else
  {
    v16 = [(TPSAppViewController *)self appController];
    v13 = [v16 contentHasLoaded];
  }

  v17 = [(TPSTipsViewController *)self collectionID];
  v18 = [v17 isEqualToString:v6];

  if ((v18 & 1) == 0)
  {
    v19 = v6;
    if (!((v11 != 0) | v13 & 1))
    {
      objc_storeStrong(&self->_pendingCollectionID, v6);
      v19 = 0;
    }

    [(TPSTipsViewController *)self setCollectionID:v19];
    currentCollectionFirstTipID = self->_currentCollectionFirstTipID;
    self->_currentCollectionFirstTipID = 0;

    [(TPSTipsViewController *)self setCurrentTip:0];
  }

  if (v13)
  {
    [(TPSTipsViewController *)self removeErrorView];
  }

  v21 = [(TPSTipsViewController *)self collectionID];
  if ([v21 isEqualToString:@"Unknown"])
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
  v23 = [v7 length];
  v24 = [(TPSTipsViewController *)self currentTip];
  v25 = v24;
  if (v23)
  {
    v26 = [v24 identifier];
    v27 = [v26 isEqualToString:v7];

    if (v27)
    {
      goto LABEL_33;
    }

    v28 = [(TPSTipsViewController *)self tipForTipID:v7];
    if (!v28)
    {
      objc_storeStrong(&self->_pendingTipID, a4);
      v29 = [(TPSTipsViewController *)self tips];
      v30 = [v29 count];

      if (!v30)
      {
        [(TPSViewController *)self setLoading:1];
      }

      goto LABEL_32;
    }

LABEL_31:
    [(TPSTipsViewController *)self setCurrentTip:v28];
LABEL_32:

    goto LABEL_33;
  }

  if (!v24)
  {
    goto LABEL_30;
  }

  v31 = [(TPSTipsViewController *)self tips];
  v32 = [(TPSTipsViewController *)self currentTip];
  v33 = [v31 indexOfObject:v32];

  if (v33 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_30:
    v34 = [(TPSTipsViewController *)self tips];
    v28 = [v34 firstObject];

    goto LABEL_31;
  }

LABEL_33:
  v35 = [(TPSTipsViewController *)self currentTip];
  [(TPSTipsViewController *)self updatePageControlToTip:v35];

  [(TPSTipsViewController *)self ensureCurrentTipVisible];
  v36 = [(TPSTipsViewController *)self currentTip];
  if (!v36)
  {
    v37 = [(TPSTipsViewController *)self tips];
    v38 = ([v37 count] == 0) & v13;

    if (v38 != 1)
    {
      goto LABEL_37;
    }

    pendingCollectionID = self->_pendingCollectionID;
    self->_pendingCollectionID = 0;

    v36 = self->_pendingTipID;
    self->_pendingTipID = 0;
  }

LABEL_37:
  v40 = [(TPSTipsViewController *)self collectionID];
  v41 = v40;
  if (!v40)
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

- (id)collectionIDForTipID:(id)a3
{
  v4 = [(TPSAppViewController *)self appController];
  v5 = [v4 tipForIdentifier:self->_pendingTipID];

  v6 = +[TPSCommonDefines sharedInstance];
  v7 = [v5 collectionIdentifiers];
  v8 = [v6 collectionIdentifierToUseForCollectionIdentifiers:v7];

  return v8;
}

- (void)appControllerContentUpdated:(id)a3
{
  v20 = self->_currentCollectionFirstTipID;
  v4 = [(TPSTipsViewController *)self tips];
  v5 = [v4 firstObject];
  v6 = [v5 identifier];
  currentCollectionFirstTipID = self->_currentCollectionFirstTipID;
  self->_currentCollectionFirstTipID = v6;

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
    v9 = [(TPSTipsViewController *)self collectionID];

    if (!v9)
    {
      pendingTipID = self->_pendingTipID;
      v11 = pendingTipID;
      if (!pendingTipID)
      {
        v9 = [(TPSTipsViewController *)self currentTip];
        v11 = [v9 identifier];
      }

      v12 = [(TPSTipsByCollectionViewController *)self collectionIDForTipID:v11];
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
      v15 = [(TPSTipsViewController *)self collectionID];
      [(TPSTipsByCollectionViewController *)self updateWithCollectionID:v15 tipID:self->_pendingTipID];

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

  v18 = [(TPSAppViewController *)self appController];
  v19 = [(TPSTipsViewController *)self collectionID];
  v17 = [v18 collectionForIdentifier:v19];

  [(TPSTipsByCollectionViewController *)self updateTitleTextForCollection:v17];
  [(TPSTipsByCollectionViewController *)self updateTipsForCurrentCollection];
LABEL_19:
}

- (void)updateTitleTextForCollection:(id)a3
{
  v7 = a3;
  v4 = [v7 shortTitle];
  if (!v4)
  {
    v5 = [v7 title];
    if (v5)
    {
      v4 = v5;
    }

    else
    {
      v4 = &stru_1000A4A50;
    }
  }

  [(TPSTipsViewController *)self setTitleText:v4];
  v6 = [(TPSTipsViewController *)self titleText];
  [(TPSTipsViewController *)self updateNavigationTitle:v6];
}

- (void)appController:(id)a3 loadingContent:(BOOL)a4
{
  if (a4)
  {
    [(TPSTipsViewController *)self removeErrorView];
    v5 = [(TPSTipsViewController *)self tips];
    v6 = [v5 count];

    if (!v6)
    {

      [(TPSViewController *)self setLoading:1];
    }
  }

  else
  {
    [(TPSViewController *)self setLoading:0];
    v7 = [(TPSTipsViewController *)self tips];
    v8 = [v7 count];

    if (v8)
    {
      [(TPSTipsViewController *)self removeErrorView];
      v9 = [(TPSTipsViewController *)self currentTip];
      [(TPSTipsViewController *)self updatePageControlToTip:v9];
    }

    else
    {
      v10 = [(TPSAppViewController *)self appController];
      v9 = [v10 lastFetchError];

      [(TPSTipsViewController *)self showErrorView:v9];
      v11 = +[TPSLogger default];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(TPSTipsViewController *)self collectionID];
        v15 = 138412546;
        v16 = v12;
        v17 = 2112;
        v18 = v9;
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
    v3 = self->_pendingCollectionID;
  }

  else
  {
    v3 = [(TPSTipsViewController *)self collectionID];
  }

  v10 = v3;
  v4 = [(TPSTipsByCollectionViewController *)self contentDelegate];
  v5 = [v4 tipsByCollectionViewController:self tipsForCollectionID:v10];

  if (v5)
  {
    currentCollectionFirstTipID = self->_currentCollectionFirstTipID;
    self->_currentCollectionFirstTipID = 0;
LABEL_7:

    goto LABEL_9;
  }

  v7 = [(TPSAppViewController *)self appController];
  v5 = [v7 tipsForCollectionIdentifier:v10];

  if (!self->_currentCollectionFirstTipID)
  {
    currentCollectionFirstTipID = [v5 firstObject];
    v8 = [currentCollectionFirstTipID identifier];
    v9 = self->_currentCollectionFirstTipID;
    self->_currentCollectionFirstTipID = v8;

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