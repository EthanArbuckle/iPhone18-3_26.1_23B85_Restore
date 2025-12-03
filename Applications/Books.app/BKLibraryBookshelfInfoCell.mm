@interface BKLibraryBookshelfInfoCell
- (BKLibraryBookshelfInfoCell)initWithFrame:(CGRect)frame;
- (BKLibraryBookshelfInfoCellDelegate)delegate;
- (BKLibraryBookshelfSupplementaryDataSource)dataSource;
- (BOOL)_shouldRemovePriceBadge;
- (BOOL)isAssetDownloading;
- (CGSize)audiobookBadgeSize;
- (id)cellMetrics;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (int64_t)_bookshelfCloudState;
- (void)_downloadStatusNotification:(id)notification;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)createOrUpdateAudiobookBadge;
- (void)createOrUpdateBadgeWithBadgeBackgroundColor:(id)color badgeFrameColor:(id)frameColor textConfigurationBlock:(id)block;
- (void)createOrUpdateCloudButton;
- (void)createOrUpdateDateBadge;
- (void)createOrUpdateDownloadProgressButton;
- (void)createOrUpdateFinishedLabelIfNeeded;
- (void)createOrUpdateMoreButton;
- (void)createOrUpdatePriceBadge;
- (void)dealloc;
- (void)layoutAudioViews:(CGRect *)views bounds:(CGRect)bounds isRTL:(BOOL)l;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reachabilityChanged:(id)changed;
- (void)setAsset:(id)asset;
- (void)setAudiobookStatus:(id)status;
- (void)setDataSource:(id)source;
- (void)setLibraryAsset:(id)asset;
- (void)setLibraryDownloadStatus:(id)status;
- (void)setMetrics:(id)metrics;
- (void)setupMenu;
- (void)updateConfiguration:(BOOL)configuration;
- (void)updateInfoKind;
@end

@implementation BKLibraryBookshelfInfoCell

- (BKLibraryBookshelfInfoCell)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = BKLibraryBookshelfInfoCell;
  v3 = [(BKLibraryBookshelfInfoCell *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(BKLibraryBookshelfInfoCell *)v3 setOpaque:0];
    v5 = +[NSNotificationCenter defaultCenter];
    v6 = +[BKReachability sharedReachabilityForInternetConnection];
    [v5 addObserver:v4 selector:"reachabilityChanged:" name:@"kNetworkReachabilityChangedNotification" object:v6];

    [v5 addObserver:v4 selector:"_downloadStatusNotification:" name:BKLibraryDownloadStatusNotification object:0];
    traitCollection = [(BKLibraryBookshelfInfoCell *)v4 traitCollection];
    v4->_currentUserInterfaceStyle = [traitCollection userInterfaceStyle];

    v8 = +[BURestrictionsProvider sharedInstance];
    [v8 addObserver:v4];

    v9 = +[UITraitCollection bc_allAPITraits];
    v10 = [(BKLibraryBookshelfInfoCell *)v4 registerForTraitChanges:v9 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = +[BKReachability sharedReachabilityForInternetConnection];
  [v3 removeObserver:self name:@"kNetworkReachabilityChangedNotification" object:v4];

  [v3 removeObserver:self name:BKLibraryDownloadStatusNotification object:0];
  [(BKLibraryDownloadStatus *)self->_libraryDownloadStatus removeObserver:self forKeyPath:@"combinedState" context:off_100ACEE60];
  [(BKLibraryDownloadStatus *)self->_libraryDownloadStatus removeObserver:self forKeyPath:@"progressValue" context:off_100ACEE68];
  [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"combinedState" context:off_100ACEE70];
  [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"isNew" context:off_100ACEE78];
  [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"readingProgress" context:off_100ACEE80];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_seriesBooks;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * v9) removeObserver:self forKeyPath:@"isFinished" context:off_100ACEE88];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(AEAssetAudiobookStatus *)self->_audiobookStatus removeObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" context:off_100ACEE90];
  [(AEAssetAudiobookStatus *)self->_audiobookStatus removeObserver:self forKeyPath:@"assetAudiobookStatusTrackTimeRemaining" context:off_100ACEE98];
  v10 = +[BURestrictionsProvider sharedInstance];
  [v10 removeObserver:self];

  v11.receiver = self;
  v11.super_class = BKLibraryBookshelfInfoCell;
  [(BKLibraryBookshelfInfoCell *)&v11 dealloc];
}

- (void)_downloadStatusNotification:(id)notification
{
  notificationCopy = notification;
  objc_opt_class();
  v16 = notificationCopy;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:BKLibraryDownloadStatusKey];
  v7 = BUDynamicCast();

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        assetID = [*(*(&v21 + 1) + 8 * v12) assetID];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10013B0C0;
        v19[3] = &unk_100A03440;
        v19[4] = self;
        v14 = assetID;
        v20 = v14;
        v15 = objc_retainBlock(v19);
        if (v15)
        {
          if (+[NSThread isMainThread])
          {
            (v15[2])(v15);
          }

          else
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10013B17C;
            block[3] = &unk_100A03920;
            v18 = v15;
            dispatch_async(&_dispatch_main_q, block);
          }
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if (([(BKLibraryBookshelfInfoCell *)self isHiddenOrHasHiddenAncestor]& 1) == 0)
  {
    [(BKLibraryBookshelfInfoCell *)self alpha];
    if (v8 == 1.0)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      subviews = [(BKLibraryBookshelfInfoCell *)self subviews];
      v10 = [subviews countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v23;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(subviews);
            }

            v14 = *(*(&v22 + 1) + 8 * i);
            [v14 convertPoint:self fromView:{x, y}];
            v16 = v15;
            v18 = v17;
            if ([v14 pointInside:eventCopy withEvent:?])
            {
              v19 = [v14 hitTest:eventCopy withEvent:{v16, v18}];

              goto LABEL_13;
            }
          }

          v11 = [subviews countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  v21.receiver = self;
  v21.super_class = BKLibraryBookshelfInfoCell;
  v19 = [(BKLibraryBookshelfInfoCell *)&v21 hitTest:eventCopy withEvent:x, y];
LABEL_13:

  return v19;
}

- (id)cellMetrics
{
  objc_opt_class();
  metrics = [(BKLibraryBookshelfInfoCell *)self metrics];
  v4 = BUDynamicCast();

  return v4;
}

- (void)setLibraryAsset:(id)asset
{
  assetCopy = asset;
  libraryAsset = self->_libraryAsset;
  if (libraryAsset != assetCopy)
  {
    v33 = assetCopy;
    [(BKLibraryAsset *)libraryAsset removeObserver:self forKeyPath:@"combinedState" context:off_100ACEE70];
    [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"isNew" context:off_100ACEE78];
    [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"readingProgress" context:off_100ACEE80];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v7 = self->_seriesBooks;
    v8 = [(NSSet *)v7 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v42;
      do
      {
        v11 = 0;
        do
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v41 + 1) + 8 * v11) removeObserver:self forKeyPath:@"isFinished" context:off_100ACEE88];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [(NSSet *)v7 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v9);
    }

    objc_storeStrong(&self->_libraryAsset, asset);
    v12 = self->_libraryAsset;
    if (v12)
    {
      [(BKLibraryAsset *)v12 addObserver:self forKeyPath:@"combinedState" options:0 context:off_100ACEE70];
      [(BKLibraryAsset *)self->_libraryAsset addObserver:self forKeyPath:@"isNew" options:0 context:off_100ACEE78];
      [(BKLibraryAsset *)self->_libraryAsset addObserver:self forKeyPath:@"readingProgress" options:0 context:off_100ACEE80];
      seriesBooks = [(BKLibraryAsset *)self->_libraryAsset seriesBooks];
      v14 = [seriesBooks copy];
      seriesBooks = self->_seriesBooks;
      self->_seriesBooks = v14;

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v16 = self->_seriesBooks;
      v17 = [(NSSet *)v16 countByEnumeratingWithState:&v37 objects:v45 count:16];
      assetCopy = v33;
      if (v17)
      {
        v18 = v17;
        v19 = *v38;
        do
        {
          v20 = 0;
          do
          {
            if (*v38 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [*(*(&v37 + 1) + 8 * v20) addObserver:self forKeyPath:@"isFinished" options:0 context:off_100ACEE88];
            v20 = v20 + 1;
          }

          while (v18 != v20);
          v18 = [(NSSet *)v16 countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v18);
      }

      if (self->_libraryAsset)
      {
        v21 = +[BKLibraryAssetStatusController sharedController];
        permanentOrTemporaryAssetID = [(BKLibraryAsset *)self->_libraryAsset permanentOrTemporaryAssetID];
        v23 = [v21 statusForAssetID:permanentOrTemporaryAssetID];
        [(BKLibraryBookshelfInfoCell *)self setLibraryDownloadStatus:v23];
      }

      else
      {
        [(BKLibraryBookshelfInfoCell *)self setLibraryDownloadStatus:0];
      }

      asset = self->_asset;
      if (asset)
      {
        v27 = [(BFMAsset *)asset id];
        assetID = [(BKLibraryAsset *)self->_libraryAsset assetID];
        v29 = [v27 isEqualToString:assetID];

        if ((v29 & 1) == 0)
        {
          v30 = self->_asset;
          self->_asset = 0;
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_dataSource);

      if (WeakRetained)
      {
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_10013B88C;
        v36[3] = &unk_100A033C8;
        v36[4] = self;
        v32 = objc_retainBlock(v36);
        if (v32)
        {
          if (+[NSThread isMainThread])
          {
            (v32[2])(v32);
          }

          else
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10013B898;
            block[3] = &unk_100A03920;
            v35 = v32;
            dispatch_async(&_dispatch_main_q, block);
          }
        }
      }
    }

    else
    {
      [(BKLibraryBookshelfInfoCell *)self setLibraryDownloadStatus:0];
      v24 = self->_asset;
      self->_asset = 0;

      v25 = self->_seriesBooks;
      self->_seriesBooks = 0;

      assetCopy = v33;
    }
  }
}

- (void)setupMenu
{
  moreButton = [(BKLibraryBookshelfInfoCell *)self moreButton];
  sub_100790A34(self, moreButton);

  cloudButton = [(BKLibraryBookshelfInfoCell *)self cloudButton];
  sub_100790A34(self, cloudButton);

  downloadProgressButton = [(BKLibraryBookshelfInfoCell *)self downloadProgressButton];
  sub_100790A34(self, downloadProgressButton);
}

- (void)setLibraryDownloadStatus:(id)status
{
  statusCopy = status;
  libraryDownloadStatus = self->_libraryDownloadStatus;
  if (libraryDownloadStatus != statusCopy)
  {
    if (!statusCopy)
    {
      [(BCInsetsFittingButton *)self->_cloudButton removeFromSuperview];
      cloudButton = self->_cloudButton;
      self->_cloudButton = 0;

      libraryDownloadStatus = self->_libraryDownloadStatus;
    }

    [(BKLibraryDownloadStatus *)libraryDownloadStatus removeObserver:self forKeyPath:@"combinedState" context:off_100ACEE60];
    [(BKLibraryDownloadStatus *)self->_libraryDownloadStatus removeObserver:self forKeyPath:@"progressValue" context:off_100ACEE68];
    objc_storeStrong(&self->_libraryDownloadStatus, status);
    v8 = self->_libraryDownloadStatus;
    if (v8)
    {
      [(BKLibraryDownloadStatus *)v8 addObserver:self forKeyPath:@"combinedState" options:0 context:off_100ACEE60];
      [(BKLibraryDownloadStatus *)self->_libraryDownloadStatus addObserver:self forKeyPath:@"progressValue" options:0 context:off_100ACEE68];
    }

    WeakRetained = objc_loadWeakRetained(&self->_dataSource);

    if (WeakRetained)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10013BB38;
      v13[3] = &unk_100A033C8;
      v13[4] = self;
      v10 = objc_retainBlock(v13);
      if (v10)
      {
        if (+[NSThread isMainThread])
        {
          (v10[2])(v10);
        }

        else
        {
          v11[0] = _NSConcreteStackBlock;
          v11[1] = 3221225472;
          v11[2] = sub_10013BB44;
          v11[3] = &unk_100A03920;
          v12 = v10;
          dispatch_async(&_dispatch_main_q, v11);
        }
      }
    }
  }
}

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    v5 = obj;
    if (self->_libraryAsset)
    {
      [(BKLibraryBookshelfInfoCell *)self updateConfiguration:1];
      v5 = obj;
    }
  }
}

- (void)setMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (self->_metrics != metricsCopy)
  {
    v35 = metricsCopy;
    objc_opt_class();
    v6 = BUDynamicCast();
    objc_opt_class();
    v7 = BUDynamicCast();
    [v6 infoBarHeight];
    v9 = v8;
    [v7 infoBarHeight];
    if (v9 == v10 && ([v6 dotsSpacing], v12 = v11, objc_msgSend(v7, "dotsSpacing"), v12 == v13) && (objc_msgSend(v6, "cloudSpacing"), v15 = v14, objc_msgSend(v7, "cloudSpacing"), v15 == v16) && (objc_msgSend(v6, "infoBarDateSpacing"), v18 = v17, objc_msgSend(v7, "infoBarDateSpacing"), v18 == v19))
    {
      priceColor = [v6 priceColor];
      priceColor2 = [v7 priceColor];
      if ([priceColor isEqual:priceColor2])
      {
        infoBadgeFontAttributes = [v6 infoBadgeFontAttributes];
        infoBadgeFontAttributes2 = [v7 infoBadgeFontAttributes];
        if ([infoBadgeFontAttributes isEqual:infoBadgeFontAttributes2])
        {
          expectedDateFontAttributes = [v6 expectedDateFontAttributes];
          expectedDateFontAttributes2 = [v7 expectedDateFontAttributes];
          v34 = expectedDateFontAttributes;
          if ([expectedDateFontAttributes isEqual:?] && (objc_msgSend(v6, "audioBadgeSpacing"), v28 = v27, objc_msgSend(v7, "audioBadgeSpacing"), v28 == v29))
          {
            [v6 badgeEndCapWidth];
            v31 = v30;
            [v7 badgeEndCapWidth];
            v20 = v31 != v32;
          }

          else
          {
            v20 = 1;
          }
        }

        else
        {
          v20 = 1;
        }
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = 1;
    }

    objc_storeStrong(&self->_metrics, metrics);
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);

    if (WeakRetained && v20)
    {
      [(BKLibraryBookshelfInfoCell *)self updateConfiguration:1];
    }

    metricsCopy = v35;
  }
}

- (void)layoutAudioViews:(CGRect *)views bounds:(CGRect)bounds isRTL:(BOOL)l
{
  nowPlayingIndicator = self->_nowPlayingIndicator;
  memset(&v18, 0, sizeof(v18));
  if (nowPlayingIndicator)
  {
    [(MPUNowPlayingIndicatorView *)nowPlayingIndicator bk_width:views];
    CGRectDivide(*views, &v18, views, v8, CGRectMinXEdge);
    [(MPUNowPlayingIndicatorView *)self->_nowPlayingIndicator maximumLevelHeight];
    v10 = v9;
    v18.origin.y = v18.origin.y + (CGRectGetHeight(v18) - v9) * 0.5;
    v18.size.height = v10;
    IMRectFlippedForRTL();
    [(MPUNowPlayingIndicatorView *)self->_nowPlayingIndicator setFrame:?];
    cellMetrics = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
    [cellMetrics audioBadgeSpacing];
    CGRectDivide(*views, &v18, views, v12, CGRectMinXEdge);

    audiobookBadge = self->_audiobookBadge;
    v14 = 1;
  }

  else
  {
    CGRectDivide(*views, &v18, views, self->_audiobookBadgeSize.width, CGRectMinXEdge);
    height = self->_audiobookBadgeSize.height;
    v18.origin.y = v18.origin.y + (CGRectGetHeight(v18) - height) * 0.5;
    v18.size.height = height;
    IMRectFlippedForRTL();
    [(CALayer *)self->_audiobookBadge setFrame:?];
    cellMetrics2 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
    [cellMetrics2 audioBadgeSpacing];
    CGRectDivide(*views, &v18, views, v17, CGRectMinXEdge);

    audiobookBadge = self->_audiobookBadge;
    v14 = 0;
  }

  [(CALayer *)audiobookBadge setHidden:v14];
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  v5 = [(BKLibraryBookshelfInfoCell *)self traitCollection:change];
  -[BKLibraryBookshelfInfoCell setCurrentUserInterfaceStyle:](self, "setCurrentUserInterfaceStyle:", [v5 userInterfaceStyle]);
}

- (void)layoutSubviews
{
  v62.receiver = self;
  v62.super_class = BKLibraryBookshelfInfoCell;
  [(BKLibraryBookshelfInfoCell *)&v62 layoutSubviews];
  [(BKLibraryBookshelfInfoCell *)self bounds];
  if (v5 > 0.0)
  {
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = +[UIApplication sharedApplication];
    userInterfaceLayoutDirection = [v11 userInterfaceLayoutDirection];

    remainder.origin.x = v7;
    remainder.origin.y = v8;
    remainder.size.width = v9;
    remainder.size.height = v10;
    memset(&slice, 0, sizeof(slice));
    cellMetrics = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
    [cellMetrics infoBarExpectedDateHeight];
    v15 = v14;

    cellMetrics2 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
    [cellMetrics2 infoBarDateSpacing];
    v18 = v17;

    v63.origin.x = v7;
    v63.origin.y = v8;
    v63.size.width = v9;
    v63.size.height = v10;
    CGRectDivide(v63, &slice, &remainder, v15, CGRectMaxYEdge);
    remainder.size.height = remainder.size.height - v18;
    superview = [(BCInsetsFittingButton *)self->_moreButton superview];

    if (superview)
    {
      memset(&v59, 0, sizeof(v59));
      [(BCInsetsFittingButton *)self->_moreButton bounds];
      Width = CGRectGetWidth(v64);
      CGRectDivide(remainder, &v59, &remainder, Width, CGRectMaxXEdge);
      IMRectFlippedForRTL();
      [(BCInsetsFittingButton *)self->_moreButton setFrame:?];
      cellMetrics3 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
      [cellMetrics3 dotsSpacing];
      CGRectDivide(remainder, &v59, &remainder, v22, CGRectMaxXEdge);
    }

    dataSource = [(BKLibraryBookshelfInfoCell *)self dataSource];
    collection = [dataSource collection];

    collectionID = [collection collectionID];
    v26 = [collectionID isEqualToString:kBKCollectionDefaultIDFinished];

    if (self->_audiobookBadge && ([(BKLibraryBookshelfInfoCell *)self infoKind]== 10) | v26 & 1)
    {
      [(BKLibraryBookshelfInfoCell *)self layoutAudioViews:&remainder bounds:userInterfaceLayoutDirection == 1 isRTL:v7, v8, v9, v10];
    }

    superview2 = [(BCInsetsFittingButton *)self->_cloudButton superview];

    if (superview2)
    {
      memset(&v59, 0, sizeof(v59));
      [(BCInsetsFittingButton *)self->_cloudButton bounds];
      v28 = CGRectGetWidth(v65);
      CGRectDivide(remainder, &v59, &remainder, v28, CGRectMaxXEdge);
      IMRectFlippedForRTL();
      [(BCInsetsFittingButton *)self->_cloudButton setFrame:?];
      cellMetrics4 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
      [cellMetrics4 cloudSpacing];
      CGRectDivide(remainder, &v59, &remainder, v30, CGRectMaxXEdge);
    }

    if (self->_downloadProgressButton)
    {
      memset(&v59, 0, sizeof(v59));
      cellMetrics5 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
      [cellMetrics5 infoBarHeight];
      CGRectDivide(remainder, &v59, &remainder, v32, CGRectMaxXEdge);

      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      IMRectFlippedForRTL();
      [(IMRadialProgressButton *)self->_downloadProgressButton setFrame:?];
      +[CATransaction commit];
      cellMetrics6 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
      [cellMetrics6 cloudSpacing];
      CGRectDivide(remainder, &v59, &remainder, v34, CGRectMaxXEdge);
    }

    badge = self->_badge;
    if (badge)
    {
      v58 = collection;
      size = CGRectZero.size;
      v59.origin = CGRectZero.origin;
      v59.size = size;
      v37 = v26;
      if (self->_badgeBackgroundColor)
      {
        [(BKLibraryBookshelfInfoBadge *)badge sizeThatFits:CGSizeZero.width, CGSizeZero.height];
        v39 = v38;
        cellMetrics7 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
        [cellMetrics7 badgeEndCapWidth];
        v42 = v39 + v41 * 2.0;

        CGRectDivide(remainder, &v59, &remainder, v42, CGRectMinXEdge);
      }

      else
      {
        v59 = remainder;
      }

      IMRectFlippedForRTL();
      [(BKLibraryBookshelfInfoBadge *)self->_badge setFrame:?];
      v43 = CGRectGetHeight(v59) * 0.5;
      layer = [(BKLibraryBookshelfInfoBadge *)self->_badge layer];
      [layer setCornerRadius:v43];

      cellMetrics8 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
      [cellMetrics8 cloudSpacing];
      CGRectDivide(remainder, &v59, &remainder, v46, CGRectMinXEdge);

      v47 = [UITraitCollection traitCollectionWithUserInterfaceStyle:[(BKLibraryBookshelfInfoCell *)self currentUserInterfaceStyle]];
      badgeFrameColor = [(BKLibraryBookshelfInfoCell *)self badgeFrameColor];
      v49 = [badgeFrameColor resolvedColorWithTraitCollection:v47];
      cGColor = [v49 CGColor];
      layer2 = [(BKLibraryBookshelfInfoBadge *)self->_badge layer];
      [layer2 setBorderColor:cGColor];

      badgeBackgroundColor = [(BKLibraryBookshelfInfoCell *)self badgeBackgroundColor];
      v53 = [badgeBackgroundColor resolvedColorWithTraitCollection:v47];
      cGColor2 = [v53 CGColor];
      layer3 = [(BKLibraryBookshelfInfoBadge *)self->_badge layer];
      [layer3 setBackgroundColor:cGColor2];

      v26 = v37;
      collection = v58;
    }

    if (self->_audiobookBadge && !(([(BKLibraryBookshelfInfoCell *)self infoKind]== 10) | v26 & 1))
    {
      [(BKLibraryBookshelfInfoCell *)self layoutAudioViews:&remainder bounds:userInterfaceLayoutDirection == 1 isRTL:v7, v8, v9, v10];
    }

    dateBadge = self->_dateBadge;
    if (dateBadge)
    {
      [(UILabel *)dateBadge bounds];
      Height = CGRectGetHeight(v66);
      slice.origin.y = CGRectGetMaxY(slice) - Height;
      slice.size.height = Height;
      IMRectFlippedForRTL();
      [(UILabel *)self->_dateBadge setFrame:?];
    }
  }
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  if (self->_asset != assetCopy)
  {
    v6 = assetCopy;
    objc_storeStrong(&self->_asset, asset);
    [(BKLibraryBookshelfInfoCell *)self updateConfiguration:1];
    assetCopy = v6;
  }
}

- (void)updateInfoKind
{
  if ([(BKLibraryAsset *)self->_libraryAsset isNew])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (([(BKLibraryAsset *)self->_libraryAsset isContainer]& 1) != 0)
  {
    v3 = 9;
  }

  else if (([(BKLibraryAsset *)self->_libraryAsset isProof]& 1) != 0)
  {
    v3 = 4;
  }

  else if (([(BKLibraryAsset *)self->_libraryAsset isPreorderBook]& 1) != 0)
  {
    v3 = 6;
  }

  else if (([(BFMAsset *)self->_asset isPreorder]& 1) != 0)
  {
    v3 = 5;
  }

  else if ([(BKLibraryAsset *)self->_libraryAsset state]== 5 && ([(BKLibraryAsset *)self->_libraryAsset seriesNextFlag]& 1) != 0)
  {
    v3 = 3;
  }

  else
  {
    isAudiobook = [(BKLibraryAsset *)self->_libraryAsset isAudiobook];
    libraryAsset = self->_libraryAsset;
    if (isAudiobook)
    {
      if ([(BKLibraryAsset *)libraryAsset isOwned])
      {
        v3 = 10;
      }

      else
      {
        v3 = 8;
      }
    }

    else if (([(BKLibraryAsset *)libraryAsset isSample]& 1) != 0 || ([(BKLibraryAsset *)self->_libraryAsset isOwned]& 1) == 0 && ([(BKLibraryAsset *)self->_libraryAsset isInSamples]& 1) != 0)
    {
      v3 = 7;
    }

    else if ([(BKLibraryAsset *)self->_libraryAsset state]!= 1 && ([(BKLibraryAsset *)self->_libraryAsset state]== 6 || [(BKLibraryAsset *)self->_libraryAsset state]== 5))
    {
      v3 = 8;
    }
  }

  infoKind = [(BKLibraryBookshelfInfoCell *)self infoKind];
  if (v3 == 2 || infoKind != v3)
  {
    [(BKLibraryBookshelfInfoCell *)self setInfoKind:v3];
    badge = [(BKLibraryBookshelfInfoCell *)self badge];
    [badge removeFromSuperview];

    [(BKLibraryBookshelfInfoCell *)self setBadge:0];
  }
}

- (BOOL)isAssetDownloading
{
  if (([(BKLibraryAsset *)self->_libraryAsset isDownloading]& 1) == 0 && ![(BKLibraryAsset *)self->_libraryAsset isDownloadingSupplementalContent])
  {
    return 0;
  }

  libraryDownloadStatus = [(BKLibraryBookshelfInfoCell *)self libraryDownloadStatus];
  v4 = [libraryDownloadStatus combinedState] == 4;

  return v4;
}

- (void)updateConfiguration:(BOOL)configuration
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10013CAA4;
  v3[3] = &unk_100A044C8;
  v3[4] = self;
  configurationCopy = configuration;
  [UIView performWithoutAnimation:v3];
}

- (BOOL)_shouldRemovePriceBadge
{
  dataSource = [(BKLibraryBookshelfInfoCell *)self dataSource];
  collection = [dataSource collection];

  collectionID = [collection collectionID];
  v5 = [collectionID isEqualToString:kBKCollectionDefaultIDFinished];

  LOBYTE(collectionID) = +[BKReachability isOffline];
  v6 = +[BURestrictionsProvider sharedInstance];
  isBookStoreAllowed = [v6 isBookStoreAllowed];

  return collectionID & 1 | ((isBookStoreAllowed & 1) == 0) | v5 & 1;
}

- (void)createOrUpdateFinishedLabelIfNeeded
{
  dataSource = [(BKLibraryBookshelfInfoCell *)self dataSource];
  collection = [dataSource collection];

  collectionID = [collection collectionID];
  v6 = [collectionID isEqualToString:kBKCollectionDefaultIDFinished];

  if ([(BKLibraryAsset *)self->_libraryAsset isFinished])
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Finished_Infobar" value:@"Finished" table:&stru_100A30A68];

    v10 = +[UIColor bc_booksGray];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10013E0E4;
    v12[3] = &unk_100A08248;
    v13 = v9;
    v11 = v9;
    [(BKLibraryBookshelfInfoCell *)self createOrUpdateBadgeWithBadgeBackgroundColor:0 badgeFrameColor:v10 textConfigurationBlock:v12];
  }
}

- (void)createOrUpdateDateBadge
{
  if (!self->_dateBadge)
  {
    v3 = objc_alloc_init(UILabel);
    dateBadge = self->_dateBadge;
    self->_dateBadge = v3;

    [(UILabel *)self->_dateBadge setUserInteractionEnabled:0];
    [(BKLibraryBookshelfInfoCell *)self addSubview:self->_dateBadge];
  }

  libraryAsset = [(BKLibraryBookshelfInfoCell *)self libraryAsset];
  expectedDate = [libraryAsset expectedDate];

  v6 = expectedDate;
  if (!expectedDate)
  {
    asset = [(BKLibraryBookshelfInfoCell *)self asset];
    expectedReleaseDate = [asset expectedReleaseDate];
    v9 = expectedReleaseDate;
    if (expectedReleaseDate)
    {
      releaseDate = expectedReleaseDate;
    }

    else
    {
      asset2 = [(BKLibraryBookshelfInfoCell *)self asset];
      releaseDate = [asset2 releaseDate];
    }

    v6 = releaseDate;
  }

  v22 = v6;
  v11 = [JSADateFormatter stringFromDate:v6 dateStyle:1 timeStyle:0];
  dataSource = [(BKLibraryBookshelfInfoCell *)self dataSource];
  infoExpectedDateString = [dataSource infoExpectedDateString];
  v14 = [NSString stringWithFormat:infoExpectedDateString, v11];

  cellMetrics = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
  expectedDateFontAttributes = [cellMetrics expectedDateFontAttributes];
  v17 = [TUIFontSpec attributedStringWith:v14 attributes:expectedDateFontAttributes];
  [(UILabel *)self->_dateBadge setAttributedText:v17];

  [(UILabel *)self->_dateBadge setTextAlignment:4];
  [(UILabel *)self->_dateBadge sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  v19 = v18;
  [(BKLibraryBookshelfInfoCell *)self bounds];
  [(UILabel *)self->_dateBadge setBounds:0.0, 0.0, CGRectGetWidth(v24), v19];
}

- (void)createOrUpdateAudiobookBadge
{
  if ([(BKLibraryAsset *)self->_libraryAsset isAudiobook]&& [(BKLibraryAsset *)self->_libraryAsset contentType]!= 5)
  {
    if (!self->_audiobookBadge)
    {
      v7 = +[CALayer layer];
      audiobookBadge = self->_audiobookBadge;
      self->_audiobookBadge = v7;

      layer = [(BKLibraryBookshelfInfoCell *)self layer];
      [layer addSublayer:self->_audiobookBadge];
    }

    dataSource = [(BKLibraryBookshelfInfoCell *)self dataSource];
    v11 = +[UIColor bc_booksGray];
    v30 = [dataSource infoBarAudiobookImageWithTintColor:v11];

    [v30 size];
    self->_audiobookBadgeSize.width = v12;
    self->_audiobookBadgeSize.height = v13;
    [(CALayer *)self->_audiobookBadge setBounds:0.0, 0.0, v12, v13];
    v14 = v30;
    -[CALayer setContents:](self->_audiobookBadge, "setContents:", [v30 CGImage]);
    audiobookStatus = self->_audiobookStatus;
    if (audiobookStatus)
    {
      if (!self->_nowPlayingIndicator)
      {
        v16 = [[MPUNowPlayingIndicatorView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
        nowPlayingIndicator = self->_nowPlayingIndicator;
        self->_nowPlayingIndicator = v16;

        v18 = +[UIColor bc_booksGray];
        [(MPUNowPlayingIndicatorView *)self->_nowPlayingIndicator setLevelGuttersColor:v18];

        cellMetrics = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
        [cellMetrics nowPlayingInterLevelSpacing];
        [(MPUNowPlayingIndicatorView *)self->_nowPlayingIndicator setInterLevelSpacing:?];

        cellMetrics2 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
        [cellMetrics2 nowPlayingLevelCornerRadius];
        [(MPUNowPlayingIndicatorView *)self->_nowPlayingIndicator setLevelCornerRadius:?];

        cellMetrics3 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
        [cellMetrics3 nowPlayingLevelWidth];
        [(MPUNowPlayingIndicatorView *)self->_nowPlayingIndicator setLevelWidth:?];

        cellMetrics4 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
        [cellMetrics4 nowPlayingMaximumLevelHeight];
        [(MPUNowPlayingIndicatorView *)self->_nowPlayingIndicator setMaximumLevelHeight:?];

        cellMetrics5 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
        [cellMetrics5 nowPlayingMinimumLevelHeight];
        [(MPUNowPlayingIndicatorView *)self->_nowPlayingIndicator setMinimumLevelHeight:?];

        cellMetrics6 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
        -[MPUNowPlayingIndicatorView setNumberOfLevels:](self->_nowPlayingIndicator, "setNumberOfLevels:", [cellMetrics6 nowPlayingNumberOfLevels]);

        [(BKLibraryBookshelfInfoCell *)self addSubview:self->_nowPlayingIndicator];
        audiobookStatus = self->_audiobookStatus;
      }

      assetAudiobookStatusIsPlaying = [(AEAssetAudiobookStatus *)audiobookStatus assetAudiobookStatusIsPlaying];
      v26 = self->_nowPlayingIndicator;
      if (assetAudiobookStatusIsPlaying)
      {
        [(MPUNowPlayingIndicatorView *)v26 setAlpha:1.0];
        v27 = self->_nowPlayingIndicator;
        v28 = 1;
      }

      else
      {
        [(MPUNowPlayingIndicatorView *)v26 setAlpha:0.6];
        v27 = self->_nowPlayingIndicator;
        v28 = 2;
      }

      [(MPUNowPlayingIndicatorView *)v27 setPlaybackState:v28];
    }

    else
    {
      [(MPUNowPlayingIndicatorView *)self->_nowPlayingIndicator removeFromSuperview];
      v29 = self->_nowPlayingIndicator;
      self->_nowPlayingIndicator = 0;
    }

    [(BKLibraryBookshelfInfoCell *)self setNeedsLayout];
  }

  else
  {
    audiobookBadge = [(BKLibraryBookshelfInfoCell *)self audiobookBadge];

    if (audiobookBadge)
    {
      [(CALayer *)self->_audiobookBadge removeFromSuperlayer];
      v4 = self->_audiobookBadge;
      self->_audiobookBadge = 0;

      [(BKLibraryBookshelfInfoCell *)self setNeedsLayout];
    }

    nowPlayingIndicator = [(BKLibraryBookshelfInfoCell *)self nowPlayingIndicator];

    if (nowPlayingIndicator)
    {
      [(MPUNowPlayingIndicatorView *)self->_nowPlayingIndicator removeFromSuperview];
      v6 = self->_nowPlayingIndicator;
      self->_nowPlayingIndicator = 0;

      [(BKLibraryBookshelfInfoCell *)self setNeedsLayout];
    }
  }
}

- (void)createOrUpdateMoreButton
{
  moreButton = self->_moreButton;
  if (!moreButton)
  {
    dataSource = [(BKLibraryBookshelfInfoCell *)self dataSource];
    v5 = +[UIColor bc_booksGray];
    v6 = [dataSource actionMenuImageWithTintColor:v5];

    v7 = [BCInsetsFittingButton buttonWithType:0];
    v8 = self->_moreButton;
    self->_moreButton = v7;

    [v6 size];
    v10 = v9;
    [v6 size];
    v11 = 0.0;
    [(BCInsetsFittingButton *)self->_moreButton setBounds:0.0, 0.0, v10, v12];
    [v6 size];
    v14 = 0.0;
    if ((44.0 - v13) * 0.5 >= 0.0)
    {
      [v6 size];
      v14 = (44.0 - v15) * 0.5;
    }

    [v6 size];
    if ((44.0 - v16) * 0.5 >= 0.0)
    {
      [v6 size];
      v11 = (44.0 - v17) * 0.5;
    }

    [(BCInsetsFittingButton *)self->_moreButton setTouchInsets:-v11, -v14, -v11, -v14];
    [(BCInsetsFittingButton *)self->_moreButton setImage:v6 forState:0];

    moreButton = self->_moreButton;
  }

  superview = [(BCInsetsFittingButton *)moreButton superview];

  if (!superview)
  {
    v19 = self->_moreButton;

    [(BKLibraryBookshelfInfoCell *)self addSubview:v19];
  }
}

- (void)createOrUpdateCloudButton
{
  _bookshelfCloudState = [(BKLibraryBookshelfInfoCell *)self _bookshelfCloudState];
  if (_bookshelfCloudState && (v4 = _bookshelfCloudState, [(BKLibraryAsset *)self->_libraryAsset contentType]!= 5))
  {
    if (!self->_cloudButton)
    {
      v6 = [BCInsetsFittingButton buttonWithType:0];
      cloudButton = self->_cloudButton;
      self->_cloudButton = v6;

      layer = [(BCInsetsFittingButton *)self->_cloudButton layer];
      [layer setMasksToBounds:1];

      v9 = +[UIColor bc_booksGray];
      [(BCInsetsFittingButton *)self->_cloudButton setTintColor:v9];
    }

    dataSource = [(BKLibraryBookshelfInfoCell *)self dataSource];
    v21 = [dataSource templateCloudImageForCloudState:v4];

    [v21 size];
    v12 = v11;
    [v21 size];
    v13 = 0.0;
    [(BCInsetsFittingButton *)self->_cloudButton setBounds:0.0, 0.0, v12, v14];
    [v21 size];
    v16 = 0.0;
    if ((44.0 - v15) * 0.5 >= 0.0)
    {
      [v21 size];
      v16 = (44.0 - v17) * 0.5;
    }

    [v21 size];
    if ((44.0 - v18) * 0.5 >= 0.0)
    {
      [v21 size];
      v13 = (44.0 - v19) * 0.5;
    }

    [(BCInsetsFittingButton *)self->_cloudButton setTouchInsets:-v13, -v16, -v13, -v16];
    [(BCInsetsFittingButton *)self->_cloudButton setImage:v21 forState:0];
    superview = [(BCInsetsFittingButton *)self->_cloudButton superview];

    if (!superview)
    {
      [(BKLibraryBookshelfInfoCell *)self addSubview:self->_cloudButton];
      [(BKLibraryBookshelfInfoCell *)self setNeedsLayout];
    }
  }

  else
  {
    superview2 = [(BCInsetsFittingButton *)self->_cloudButton superview];

    if (superview2)
    {
      [(BCInsetsFittingButton *)self->_cloudButton removeFromSuperview];

      [(BKLibraryBookshelfInfoCell *)self setNeedsLayout];
    }
  }
}

- (void)createOrUpdateDownloadProgressButton
{
  if ([(BKLibraryBookshelfInfoCell *)self isAssetDownloading]&& [(BKLibraryAsset *)self->_libraryAsset contentType]!= 5)
  {
    if ([(BKLibraryBookshelfInfoCell *)self isAssetDownloading])
    {
      if (!self->_downloadProgressButton)
      {
        sub_100790B70(&self->_downloadProgressButton, self);
      }

      [(BKLibraryDownloadStatus *)self->_libraryDownloadStatus progressValue];
      *&v5 = v5;
      [(IMRadialProgressButton *)self->_downloadProgressButton setProgress:v5];
    }
  }

  else
  {
    superview = [(IMRadialProgressButton *)self->_downloadProgressButton superview];

    if (superview)
    {
      [(IMRadialProgressButton *)self->_downloadProgressButton removeFromSuperview];
      downloadProgressButton = self->_downloadProgressButton;
      self->_downloadProgressButton = 0;
    }
  }

  [(BKLibraryBookshelfInfoCell *)self setNeedsLayout];
}

- (void)createOrUpdatePriceBadge
{
  if ([(BKLibraryBookshelfInfoCell *)self infoKind]!= 5 && [(BKLibraryBookshelfInfoCell *)self infoKind]!= 6)
  {
    v3 = +[BKLibraryManager defaultManager];
    priceManager = [v3 priceManager];

    libraryAsset = [(BKLibraryBookshelfInfoCell *)self libraryAsset];
    storeID = [libraryAsset storeID];

    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10013ED28;
    v8[3] = &unk_100A082E8;
    objc_copyWeak(&v10, &location);
    v7 = storeID;
    v9 = v7;
    [priceManager fetchPriceForAssetID:v7 completion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)createOrUpdateBadgeWithBadgeBackgroundColor:(id)color badgeFrameColor:(id)frameColor textConfigurationBlock:(id)block
{
  colorCopy = color;
  frameColorCopy = frameColor;
  blockCopy = block;
  if (!self->_badge)
  {
    v10 = objc_alloc_init(BKLibraryBookshelfInfoBadge);
    badge = self->_badge;
    self->_badge = v10;

    [(BKLibraryBookshelfInfoBadge *)self->_badge setUserInteractionEnabled:0];
    [(BKLibraryBookshelfInfoCell *)self addSubview:self->_badge];
  }

  cellMetrics = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
  [cellMetrics infoBarHeight];
  v14 = v13;

  blockCopy[2](blockCopy, self->_badge);
  layer = [(BKLibraryBookshelfInfoBadge *)self->_badge layer];
  [layer setBorderWidth:0.0];

  if (colorCopy)
  {
    [(BKLibraryBookshelfInfoBadge *)self->_badge setTextAlignment:1];
    layer2 = [(BKLibraryBookshelfInfoBadge *)self->_badge layer];
    [layer2 setCornerRadius:v14 * 0.5];

    [(BKLibraryBookshelfInfoCell *)self setBadgeBackgroundColor:colorCopy];
    v17 = +[UIColor clearColor];
    v18 = [colorCopy isEqual:v17];

    if (v18)
    {
      [(BKLibraryBookshelfInfoCell *)self setBadgeFrameColor:frameColorCopy];
      layer3 = [(BKLibraryBookshelfInfoBadge *)self->_badge layer];
      [layer3 setBorderWidth:1.0];
    }

    else
    {
      [(BKLibraryBookshelfInfoCell *)self setBadgeFrameColor:0];
    }
  }

  else
  {
    v20 = +[UIApplication sharedApplication];
    v21 = [v20 userInterfaceLayoutDirection] == 1;

    [(BKLibraryBookshelfInfoBadge *)self->_badge setTextAlignment:2 * v21];
    [(BKLibraryBookshelfInfoCell *)self setBadgeFrameColor:0];
    [(BKLibraryBookshelfInfoCell *)self setBadgeBackgroundColor:0];
  }

  [(BKLibraryBookshelfInfoCell *)self setNeedsLayout];
}

- (int64_t)_bookshelfCloudState
{
  if ([(BKLibraryBookshelfInfoCell *)self infoKind]== 9 || [(BKLibraryBookshelfInfoCell *)self infoKind]== 6 || [(BKLibraryBookshelfInfoCell *)self isAssetDownloading])
  {
    return 0;
  }

  libraryDownloadStatus = [(BKLibraryBookshelfInfoCell *)self libraryDownloadStatus];
  v6 = libraryDownloadStatus;
  if (libraryDownloadStatus)
  {
    state = [libraryDownloadStatus state];
  }

  else
  {
    state = 0;
  }

  isCloud = [(BKLibraryAsset *)self->_libraryAsset isCloud];
  v9 = 3;
  if (state != 10)
  {
    v9 = 0;
  }

  if (state == 9)
  {
    v9 = 2;
  }

  if ((isCloud & (state != 5)) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v9;
  }

  return v3;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_100ACEE78 == context || off_100ACEE80 == context || off_100ACEE88 == context)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10013F650;
    v22[3] = &unk_100A033C8;
    v22[4] = self;
    v15 = v22;
LABEL_21:
    dispatch_async(&_dispatch_main_q, v15);
    goto LABEL_22;
  }

  if (off_100ACEE60 == context)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10013F6AC;
    v21[3] = &unk_100A033C8;
    v21[4] = self;
    v15 = v21;
    goto LABEL_21;
  }

  if (off_100ACEE68 == context)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10013F6B8;
    v20[3] = &unk_100A033C8;
    v20[4] = self;
    v15 = v20;
    goto LABEL_21;
  }

  if (off_100ACEE70 == context)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10013F6C4;
    v19[3] = &unk_100A033C8;
    v19[4] = self;
    v15 = v19;
    goto LABEL_21;
  }

  if (off_100ACEE90 == context)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10013F6D0;
    v18[3] = &unk_100A033C8;
    v18[4] = self;
    v15 = v18;
    goto LABEL_21;
  }

  if (off_100ACEE98 == context)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10013F6DC;
    block[3] = &unk_100A033C8;
    block[4] = self;
    v15 = block;
    goto LABEL_21;
  }

  v16.receiver = self;
  v16.super_class = BKLibraryBookshelfInfoCell;
  [(BKLibraryBookshelfInfoCell *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_22:
}

- (void)reachabilityChanged:(id)changed
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013F75C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setAudiobookStatus:(id)status
{
  statusCopy = status;
  if (self->_audiobookStatus != statusCopy)
  {
    v9 = statusCopy;
    infoKind = [(BKLibraryBookshelfInfoCell *)self infoKind];
    statusCopy = v9;
    if (!v9 || infoKind == 10)
    {
      audiobookStatus = self->_audiobookStatus;
      if (audiobookStatus)
      {
        [(AEAssetAudiobookStatus *)audiobookStatus removeObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" context:off_100ACEE90];
        [(AEAssetAudiobookStatus *)self->_audiobookStatus removeObserver:self forKeyPath:@"assetAudiobookStatusTrackTimeRemaining" context:off_100ACEE98];
      }

      objc_storeStrong(&self->_audiobookStatus, status);
      v8 = self->_audiobookStatus;
      if (v8)
      {
        [(AEAssetAudiobookStatus *)v8 addObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" options:0 context:off_100ACEE90];
        [(AEAssetAudiobookStatus *)self->_audiobookStatus addObserver:self forKeyPath:@"assetAudiobookStatusTrackTimeRemaining" options:0 context:off_100ACEE98];
      }

      [(BKLibraryBookshelfInfoCell *)self updateConfiguration:1];
      statusCopy = v9;
    }
  }
}

- (BKLibraryBookshelfSupplementaryDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (BKLibraryBookshelfInfoCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)audiobookBadgeSize
{
  width = self->_audiobookBadgeSize.width;
  height = self->_audiobookBadgeSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end