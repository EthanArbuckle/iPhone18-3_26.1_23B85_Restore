@interface BKLibraryBookshelfInfoCell
- (BKLibraryBookshelfInfoCell)initWithFrame:(CGRect)a3;
- (BKLibraryBookshelfInfoCellDelegate)delegate;
- (BKLibraryBookshelfSupplementaryDataSource)dataSource;
- (BOOL)_shouldRemovePriceBadge;
- (BOOL)isAssetDownloading;
- (CGSize)audiobookBadgeSize;
- (id)cellMetrics;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (int64_t)_bookshelfCloudState;
- (void)_downloadStatusNotification:(id)a3;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)createOrUpdateAudiobookBadge;
- (void)createOrUpdateBadgeWithBadgeBackgroundColor:(id)a3 badgeFrameColor:(id)a4 textConfigurationBlock:(id)a5;
- (void)createOrUpdateCloudButton;
- (void)createOrUpdateDateBadge;
- (void)createOrUpdateDownloadProgressButton;
- (void)createOrUpdateFinishedLabelIfNeeded;
- (void)createOrUpdateMoreButton;
- (void)createOrUpdatePriceBadge;
- (void)dealloc;
- (void)layoutAudioViews:(CGRect *)a3 bounds:(CGRect)a4 isRTL:(BOOL)a5;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)reachabilityChanged:(id)a3;
- (void)setAsset:(id)a3;
- (void)setAudiobookStatus:(id)a3;
- (void)setDataSource:(id)a3;
- (void)setLibraryAsset:(id)a3;
- (void)setLibraryDownloadStatus:(id)a3;
- (void)setMetrics:(id)a3;
- (void)setupMenu;
- (void)updateConfiguration:(BOOL)a3;
- (void)updateInfoKind;
@end

@implementation BKLibraryBookshelfInfoCell

- (BKLibraryBookshelfInfoCell)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = BKLibraryBookshelfInfoCell;
  v3 = [(BKLibraryBookshelfInfoCell *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(BKLibraryBookshelfInfoCell *)v3 setOpaque:0];
    v5 = +[NSNotificationCenter defaultCenter];
    v6 = +[BKReachability sharedReachabilityForInternetConnection];
    [v5 addObserver:v4 selector:"reachabilityChanged:" name:@"kNetworkReachabilityChangedNotification" object:v6];

    [v5 addObserver:v4 selector:"_downloadStatusNotification:" name:BKLibraryDownloadStatusNotification object:0];
    v7 = [(BKLibraryBookshelfInfoCell *)v4 traitCollection];
    v4->_currentUserInterfaceStyle = [v7 userInterfaceStyle];

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

- (void)_downloadStatusNotification:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v16 = v4;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:BKLibraryDownloadStatusKey];
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

        v13 = [*(*(&v21 + 1) + 8 * v12) assetID];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10013B0C0;
        v19[3] = &unk_100A03440;
        v19[4] = self;
        v14 = v13;
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (([(BKLibraryBookshelfInfoCell *)self isHiddenOrHasHiddenAncestor]& 1) == 0)
  {
    [(BKLibraryBookshelfInfoCell *)self alpha];
    if (v8 == 1.0)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v9 = [(BKLibraryBookshelfInfoCell *)self subviews];
      v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v22 + 1) + 8 * i);
            [v14 convertPoint:self fromView:{x, y}];
            v16 = v15;
            v18 = v17;
            if ([v14 pointInside:v7 withEvent:?])
            {
              v19 = [v14 hitTest:v7 withEvent:{v16, v18}];

              goto LABEL_13;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
  v19 = [(BKLibraryBookshelfInfoCell *)&v21 hitTest:v7 withEvent:x, y];
LABEL_13:

  return v19;
}

- (id)cellMetrics
{
  objc_opt_class();
  v3 = [(BKLibraryBookshelfInfoCell *)self metrics];
  v4 = BUDynamicCast();

  return v4;
}

- (void)setLibraryAsset:(id)a3
{
  v5 = a3;
  libraryAsset = self->_libraryAsset;
  if (libraryAsset != v5)
  {
    v33 = v5;
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

    objc_storeStrong(&self->_libraryAsset, a3);
    v12 = self->_libraryAsset;
    if (v12)
    {
      [(BKLibraryAsset *)v12 addObserver:self forKeyPath:@"combinedState" options:0 context:off_100ACEE70];
      [(BKLibraryAsset *)self->_libraryAsset addObserver:self forKeyPath:@"isNew" options:0 context:off_100ACEE78];
      [(BKLibraryAsset *)self->_libraryAsset addObserver:self forKeyPath:@"readingProgress" options:0 context:off_100ACEE80];
      v13 = [(BKLibraryAsset *)self->_libraryAsset seriesBooks];
      v14 = [v13 copy];
      seriesBooks = self->_seriesBooks;
      self->_seriesBooks = v14;

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v16 = self->_seriesBooks;
      v17 = [(NSSet *)v16 countByEnumeratingWithState:&v37 objects:v45 count:16];
      v5 = v33;
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
        v22 = [(BKLibraryAsset *)self->_libraryAsset permanentOrTemporaryAssetID];
        v23 = [v21 statusForAssetID:v22];
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
        v28 = [(BKLibraryAsset *)self->_libraryAsset assetID];
        v29 = [v27 isEqualToString:v28];

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

      v5 = v33;
    }
  }
}

- (void)setupMenu
{
  v3 = [(BKLibraryBookshelfInfoCell *)self moreButton];
  sub_100790A34(self, v3);

  v4 = [(BKLibraryBookshelfInfoCell *)self cloudButton];
  sub_100790A34(self, v4);

  v5 = [(BKLibraryBookshelfInfoCell *)self downloadProgressButton];
  sub_100790A34(self, v5);
}

- (void)setLibraryDownloadStatus:(id)a3
{
  v5 = a3;
  libraryDownloadStatus = self->_libraryDownloadStatus;
  if (libraryDownloadStatus != v5)
  {
    if (!v5)
    {
      [(BCInsetsFittingButton *)self->_cloudButton removeFromSuperview];
      cloudButton = self->_cloudButton;
      self->_cloudButton = 0;

      libraryDownloadStatus = self->_libraryDownloadStatus;
    }

    [(BKLibraryDownloadStatus *)libraryDownloadStatus removeObserver:self forKeyPath:@"combinedState" context:off_100ACEE60];
    [(BKLibraryDownloadStatus *)self->_libraryDownloadStatus removeObserver:self forKeyPath:@"progressValue" context:off_100ACEE68];
    objc_storeStrong(&self->_libraryDownloadStatus, a3);
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

- (void)setDataSource:(id)a3
{
  obj = a3;
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

- (void)setMetrics:(id)a3
{
  v5 = a3;
  if (self->_metrics != v5)
  {
    v35 = v5;
    objc_opt_class();
    v6 = BUDynamicCast();
    objc_opt_class();
    v7 = BUDynamicCast();
    [v6 infoBarHeight];
    v9 = v8;
    [v7 infoBarHeight];
    if (v9 == v10 && ([v6 dotsSpacing], v12 = v11, objc_msgSend(v7, "dotsSpacing"), v12 == v13) && (objc_msgSend(v6, "cloudSpacing"), v15 = v14, objc_msgSend(v7, "cloudSpacing"), v15 == v16) && (objc_msgSend(v6, "infoBarDateSpacing"), v18 = v17, objc_msgSend(v7, "infoBarDateSpacing"), v18 == v19))
    {
      v22 = [v6 priceColor];
      v23 = [v7 priceColor];
      if ([v22 isEqual:v23])
      {
        v24 = [v6 infoBadgeFontAttributes];
        v25 = [v7 infoBadgeFontAttributes];
        if ([v24 isEqual:v25])
        {
          v26 = [v6 expectedDateFontAttributes];
          v33 = [v7 expectedDateFontAttributes];
          v34 = v26;
          if ([v26 isEqual:?] && (objc_msgSend(v6, "audioBadgeSpacing"), v28 = v27, objc_msgSend(v7, "audioBadgeSpacing"), v28 == v29))
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

    objc_storeStrong(&self->_metrics, a3);
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);

    if (WeakRetained && v20)
    {
      [(BKLibraryBookshelfInfoCell *)self updateConfiguration:1];
    }

    v5 = v35;
  }
}

- (void)layoutAudioViews:(CGRect *)a3 bounds:(CGRect)a4 isRTL:(BOOL)a5
{
  nowPlayingIndicator = self->_nowPlayingIndicator;
  memset(&v18, 0, sizeof(v18));
  if (nowPlayingIndicator)
  {
    [(MPUNowPlayingIndicatorView *)nowPlayingIndicator bk_width:a3];
    CGRectDivide(*a3, &v18, a3, v8, CGRectMinXEdge);
    [(MPUNowPlayingIndicatorView *)self->_nowPlayingIndicator maximumLevelHeight];
    v10 = v9;
    v18.origin.y = v18.origin.y + (CGRectGetHeight(v18) - v9) * 0.5;
    v18.size.height = v10;
    IMRectFlippedForRTL();
    [(MPUNowPlayingIndicatorView *)self->_nowPlayingIndicator setFrame:?];
    v11 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
    [v11 audioBadgeSpacing];
    CGRectDivide(*a3, &v18, a3, v12, CGRectMinXEdge);

    audiobookBadge = self->_audiobookBadge;
    v14 = 1;
  }

  else
  {
    CGRectDivide(*a3, &v18, a3, self->_audiobookBadgeSize.width, CGRectMinXEdge);
    height = self->_audiobookBadgeSize.height;
    v18.origin.y = v18.origin.y + (CGRectGetHeight(v18) - height) * 0.5;
    v18.size.height = height;
    IMRectFlippedForRTL();
    [(CALayer *)self->_audiobookBadge setFrame:?];
    v16 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
    [v16 audioBadgeSpacing];
    CGRectDivide(*a3, &v18, a3, v17, CGRectMinXEdge);

    audiobookBadge = self->_audiobookBadge;
    v14 = 0;
  }

  [(CALayer *)audiobookBadge setHidden:v14];
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = [(BKLibraryBookshelfInfoCell *)self traitCollection:a3];
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
    v12 = [v11 userInterfaceLayoutDirection];

    remainder.origin.x = v7;
    remainder.origin.y = v8;
    remainder.size.width = v9;
    remainder.size.height = v10;
    memset(&slice, 0, sizeof(slice));
    v13 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
    [v13 infoBarExpectedDateHeight];
    v15 = v14;

    v16 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
    [v16 infoBarDateSpacing];
    v18 = v17;

    v63.origin.x = v7;
    v63.origin.y = v8;
    v63.size.width = v9;
    v63.size.height = v10;
    CGRectDivide(v63, &slice, &remainder, v15, CGRectMaxYEdge);
    remainder.size.height = remainder.size.height - v18;
    v19 = [(BCInsetsFittingButton *)self->_moreButton superview];

    if (v19)
    {
      memset(&v59, 0, sizeof(v59));
      [(BCInsetsFittingButton *)self->_moreButton bounds];
      Width = CGRectGetWidth(v64);
      CGRectDivide(remainder, &v59, &remainder, Width, CGRectMaxXEdge);
      IMRectFlippedForRTL();
      [(BCInsetsFittingButton *)self->_moreButton setFrame:?];
      v21 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
      [v21 dotsSpacing];
      CGRectDivide(remainder, &v59, &remainder, v22, CGRectMaxXEdge);
    }

    v23 = [(BKLibraryBookshelfInfoCell *)self dataSource];
    v24 = [v23 collection];

    v25 = [v24 collectionID];
    v26 = [v25 isEqualToString:kBKCollectionDefaultIDFinished];

    if (self->_audiobookBadge && ([(BKLibraryBookshelfInfoCell *)self infoKind]== 10) | v26 & 1)
    {
      [(BKLibraryBookshelfInfoCell *)self layoutAudioViews:&remainder bounds:v12 == 1 isRTL:v7, v8, v9, v10];
    }

    v27 = [(BCInsetsFittingButton *)self->_cloudButton superview];

    if (v27)
    {
      memset(&v59, 0, sizeof(v59));
      [(BCInsetsFittingButton *)self->_cloudButton bounds];
      v28 = CGRectGetWidth(v65);
      CGRectDivide(remainder, &v59, &remainder, v28, CGRectMaxXEdge);
      IMRectFlippedForRTL();
      [(BCInsetsFittingButton *)self->_cloudButton setFrame:?];
      v29 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
      [v29 cloudSpacing];
      CGRectDivide(remainder, &v59, &remainder, v30, CGRectMaxXEdge);
    }

    if (self->_downloadProgressButton)
    {
      memset(&v59, 0, sizeof(v59));
      v31 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
      [v31 infoBarHeight];
      CGRectDivide(remainder, &v59, &remainder, v32, CGRectMaxXEdge);

      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      IMRectFlippedForRTL();
      [(IMRadialProgressButton *)self->_downloadProgressButton setFrame:?];
      +[CATransaction commit];
      v33 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
      [v33 cloudSpacing];
      CGRectDivide(remainder, &v59, &remainder, v34, CGRectMaxXEdge);
    }

    badge = self->_badge;
    if (badge)
    {
      v58 = v24;
      size = CGRectZero.size;
      v59.origin = CGRectZero.origin;
      v59.size = size;
      v37 = v26;
      if (self->_badgeBackgroundColor)
      {
        [(BKLibraryBookshelfInfoBadge *)badge sizeThatFits:CGSizeZero.width, CGSizeZero.height];
        v39 = v38;
        v40 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
        [v40 badgeEndCapWidth];
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
      v44 = [(BKLibraryBookshelfInfoBadge *)self->_badge layer];
      [v44 setCornerRadius:v43];

      v45 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
      [v45 cloudSpacing];
      CGRectDivide(remainder, &v59, &remainder, v46, CGRectMinXEdge);

      v47 = [UITraitCollection traitCollectionWithUserInterfaceStyle:[(BKLibraryBookshelfInfoCell *)self currentUserInterfaceStyle]];
      v48 = [(BKLibraryBookshelfInfoCell *)self badgeFrameColor];
      v49 = [v48 resolvedColorWithTraitCollection:v47];
      v50 = [v49 CGColor];
      v51 = [(BKLibraryBookshelfInfoBadge *)self->_badge layer];
      [v51 setBorderColor:v50];

      v52 = [(BKLibraryBookshelfInfoCell *)self badgeBackgroundColor];
      v53 = [v52 resolvedColorWithTraitCollection:v47];
      v54 = [v53 CGColor];
      v55 = [(BKLibraryBookshelfInfoBadge *)self->_badge layer];
      [v55 setBackgroundColor:v54];

      v26 = v37;
      v24 = v58;
    }

    if (self->_audiobookBadge && !(([(BKLibraryBookshelfInfoCell *)self infoKind]== 10) | v26 & 1))
    {
      [(BKLibraryBookshelfInfoCell *)self layoutAudioViews:&remainder bounds:v12 == 1 isRTL:v7, v8, v9, v10];
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

- (void)setAsset:(id)a3
{
  v5 = a3;
  if (self->_asset != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_asset, a3);
    [(BKLibraryBookshelfInfoCell *)self updateConfiguration:1];
    v5 = v6;
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
    v4 = [(BKLibraryAsset *)self->_libraryAsset isAudiobook];
    libraryAsset = self->_libraryAsset;
    if (v4)
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

  v6 = [(BKLibraryBookshelfInfoCell *)self infoKind];
  if (v3 == 2 || v6 != v3)
  {
    [(BKLibraryBookshelfInfoCell *)self setInfoKind:v3];
    v7 = [(BKLibraryBookshelfInfoCell *)self badge];
    [v7 removeFromSuperview];

    [(BKLibraryBookshelfInfoCell *)self setBadge:0];
  }
}

- (BOOL)isAssetDownloading
{
  if (([(BKLibraryAsset *)self->_libraryAsset isDownloading]& 1) == 0 && ![(BKLibraryAsset *)self->_libraryAsset isDownloadingSupplementalContent])
  {
    return 0;
  }

  v3 = [(BKLibraryBookshelfInfoCell *)self libraryDownloadStatus];
  v4 = [v3 combinedState] == 4;

  return v4;
}

- (void)updateConfiguration:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10013CAA4;
  v3[3] = &unk_100A044C8;
  v3[4] = self;
  v4 = a3;
  [UIView performWithoutAnimation:v3];
}

- (BOOL)_shouldRemovePriceBadge
{
  v2 = [(BKLibraryBookshelfInfoCell *)self dataSource];
  v3 = [v2 collection];

  v4 = [v3 collectionID];
  v5 = [v4 isEqualToString:kBKCollectionDefaultIDFinished];

  LOBYTE(v4) = +[BKReachability isOffline];
  v6 = +[BURestrictionsProvider sharedInstance];
  v7 = [v6 isBookStoreAllowed];

  return v4 & 1 | ((v7 & 1) == 0) | v5 & 1;
}

- (void)createOrUpdateFinishedLabelIfNeeded
{
  v3 = [(BKLibraryBookshelfInfoCell *)self dataSource];
  v4 = [v3 collection];

  v5 = [v4 collectionID];
  v6 = [v5 isEqualToString:kBKCollectionDefaultIDFinished];

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

  v5 = [(BKLibraryBookshelfInfoCell *)self libraryAsset];
  v20 = [v5 expectedDate];

  v6 = v20;
  if (!v20)
  {
    v7 = [(BKLibraryBookshelfInfoCell *)self asset];
    v8 = [v7 expectedReleaseDate];
    v9 = v8;
    if (v8)
    {
      v21 = v8;
    }

    else
    {
      v10 = [(BKLibraryBookshelfInfoCell *)self asset];
      v21 = [v10 releaseDate];
    }

    v6 = v21;
  }

  v22 = v6;
  v11 = [JSADateFormatter stringFromDate:v6 dateStyle:1 timeStyle:0];
  v12 = [(BKLibraryBookshelfInfoCell *)self dataSource];
  v13 = [v12 infoExpectedDateString];
  v14 = [NSString stringWithFormat:v13, v11];

  v15 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
  v16 = [v15 expectedDateFontAttributes];
  v17 = [TUIFontSpec attributedStringWith:v14 attributes:v16];
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

      v9 = [(BKLibraryBookshelfInfoCell *)self layer];
      [v9 addSublayer:self->_audiobookBadge];
    }

    v10 = [(BKLibraryBookshelfInfoCell *)self dataSource];
    v11 = +[UIColor bc_booksGray];
    v30 = [v10 infoBarAudiobookImageWithTintColor:v11];

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

        v19 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
        [v19 nowPlayingInterLevelSpacing];
        [(MPUNowPlayingIndicatorView *)self->_nowPlayingIndicator setInterLevelSpacing:?];

        v20 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
        [v20 nowPlayingLevelCornerRadius];
        [(MPUNowPlayingIndicatorView *)self->_nowPlayingIndicator setLevelCornerRadius:?];

        v21 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
        [v21 nowPlayingLevelWidth];
        [(MPUNowPlayingIndicatorView *)self->_nowPlayingIndicator setLevelWidth:?];

        v22 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
        [v22 nowPlayingMaximumLevelHeight];
        [(MPUNowPlayingIndicatorView *)self->_nowPlayingIndicator setMaximumLevelHeight:?];

        v23 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
        [v23 nowPlayingMinimumLevelHeight];
        [(MPUNowPlayingIndicatorView *)self->_nowPlayingIndicator setMinimumLevelHeight:?];

        v24 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
        -[MPUNowPlayingIndicatorView setNumberOfLevels:](self->_nowPlayingIndicator, "setNumberOfLevels:", [v24 nowPlayingNumberOfLevels]);

        [(BKLibraryBookshelfInfoCell *)self addSubview:self->_nowPlayingIndicator];
        audiobookStatus = self->_audiobookStatus;
      }

      v25 = [(AEAssetAudiobookStatus *)audiobookStatus assetAudiobookStatusIsPlaying];
      v26 = self->_nowPlayingIndicator;
      if (v25)
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
    v3 = [(BKLibraryBookshelfInfoCell *)self audiobookBadge];

    if (v3)
    {
      [(CALayer *)self->_audiobookBadge removeFromSuperlayer];
      v4 = self->_audiobookBadge;
      self->_audiobookBadge = 0;

      [(BKLibraryBookshelfInfoCell *)self setNeedsLayout];
    }

    v5 = [(BKLibraryBookshelfInfoCell *)self nowPlayingIndicator];

    if (v5)
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
    v4 = [(BKLibraryBookshelfInfoCell *)self dataSource];
    v5 = +[UIColor bc_booksGray];
    v6 = [v4 actionMenuImageWithTintColor:v5];

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

  v18 = [(BCInsetsFittingButton *)moreButton superview];

  if (!v18)
  {
    v19 = self->_moreButton;

    [(BKLibraryBookshelfInfoCell *)self addSubview:v19];
  }
}

- (void)createOrUpdateCloudButton
{
  v3 = [(BKLibraryBookshelfInfoCell *)self _bookshelfCloudState];
  if (v3 && (v4 = v3, [(BKLibraryAsset *)self->_libraryAsset contentType]!= 5))
  {
    if (!self->_cloudButton)
    {
      v6 = [BCInsetsFittingButton buttonWithType:0];
      cloudButton = self->_cloudButton;
      self->_cloudButton = v6;

      v8 = [(BCInsetsFittingButton *)self->_cloudButton layer];
      [v8 setMasksToBounds:1];

      v9 = +[UIColor bc_booksGray];
      [(BCInsetsFittingButton *)self->_cloudButton setTintColor:v9];
    }

    v10 = [(BKLibraryBookshelfInfoCell *)self dataSource];
    v21 = [v10 templateCloudImageForCloudState:v4];

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
    v20 = [(BCInsetsFittingButton *)self->_cloudButton superview];

    if (!v20)
    {
      [(BKLibraryBookshelfInfoCell *)self addSubview:self->_cloudButton];
      [(BKLibraryBookshelfInfoCell *)self setNeedsLayout];
    }
  }

  else
  {
    v5 = [(BCInsetsFittingButton *)self->_cloudButton superview];

    if (v5)
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
    v3 = [(IMRadialProgressButton *)self->_downloadProgressButton superview];

    if (v3)
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
    v4 = [v3 priceManager];

    v5 = [(BKLibraryBookshelfInfoCell *)self libraryAsset];
    v6 = [v5 storeID];

    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10013ED28;
    v8[3] = &unk_100A082E8;
    objc_copyWeak(&v10, &location);
    v7 = v6;
    v9 = v7;
    [v4 fetchPriceForAssetID:v7 completion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)createOrUpdateBadgeWithBadgeBackgroundColor:(id)a3 badgeFrameColor:(id)a4 textConfigurationBlock:(id)a5
{
  v22 = a3;
  v8 = a4;
  v9 = a5;
  if (!self->_badge)
  {
    v10 = objc_alloc_init(BKLibraryBookshelfInfoBadge);
    badge = self->_badge;
    self->_badge = v10;

    [(BKLibraryBookshelfInfoBadge *)self->_badge setUserInteractionEnabled:0];
    [(BKLibraryBookshelfInfoCell *)self addSubview:self->_badge];
  }

  v12 = [(BKLibraryBookshelfInfoCell *)self cellMetrics];
  [v12 infoBarHeight];
  v14 = v13;

  v9[2](v9, self->_badge);
  v15 = [(BKLibraryBookshelfInfoBadge *)self->_badge layer];
  [v15 setBorderWidth:0.0];

  if (v22)
  {
    [(BKLibraryBookshelfInfoBadge *)self->_badge setTextAlignment:1];
    v16 = [(BKLibraryBookshelfInfoBadge *)self->_badge layer];
    [v16 setCornerRadius:v14 * 0.5];

    [(BKLibraryBookshelfInfoCell *)self setBadgeBackgroundColor:v22];
    v17 = +[UIColor clearColor];
    v18 = [v22 isEqual:v17];

    if (v18)
    {
      [(BKLibraryBookshelfInfoCell *)self setBadgeFrameColor:v8];
      v19 = [(BKLibraryBookshelfInfoBadge *)self->_badge layer];
      [v19 setBorderWidth:1.0];
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

  v5 = [(BKLibraryBookshelfInfoCell *)self libraryDownloadStatus];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 state];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BKLibraryAsset *)self->_libraryAsset isCloud];
  v9 = 3;
  if (v7 != 10)
  {
    v9 = 0;
  }

  if (v7 == 9)
  {
    v9 = 2;
  }

  if ((v8 & (v7 != 5)) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v9;
  }

  return v3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (off_100ACEE78 == a6 || off_100ACEE80 == a6 || off_100ACEE88 == a6)
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

  if (off_100ACEE60 == a6)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10013F6AC;
    v21[3] = &unk_100A033C8;
    v21[4] = self;
    v15 = v21;
    goto LABEL_21;
  }

  if (off_100ACEE68 == a6)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10013F6B8;
    v20[3] = &unk_100A033C8;
    v20[4] = self;
    v15 = v20;
    goto LABEL_21;
  }

  if (off_100ACEE70 == a6)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10013F6C4;
    v19[3] = &unk_100A033C8;
    v19[4] = self;
    v15 = v19;
    goto LABEL_21;
  }

  if (off_100ACEE90 == a6)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10013F6D0;
    v18[3] = &unk_100A033C8;
    v18[4] = self;
    v15 = v18;
    goto LABEL_21;
  }

  if (off_100ACEE98 == a6)
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
  [(BKLibraryBookshelfInfoCell *)&v16 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_22:
}

- (void)reachabilityChanged:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013F75C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setAudiobookStatus:(id)a3
{
  v5 = a3;
  if (self->_audiobookStatus != v5)
  {
    v9 = v5;
    v6 = [(BKLibraryBookshelfInfoCell *)self infoKind];
    v5 = v9;
    if (!v9 || v6 == 10)
    {
      audiobookStatus = self->_audiobookStatus;
      if (audiobookStatus)
      {
        [(AEAssetAudiobookStatus *)audiobookStatus removeObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" context:off_100ACEE90];
        [(AEAssetAudiobookStatus *)self->_audiobookStatus removeObserver:self forKeyPath:@"assetAudiobookStatusTrackTimeRemaining" context:off_100ACEE98];
      }

      objc_storeStrong(&self->_audiobookStatus, a3);
      v8 = self->_audiobookStatus;
      if (v8)
      {
        [(AEAssetAudiobookStatus *)v8 addObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" options:0 context:off_100ACEE90];
        [(AEAssetAudiobookStatus *)self->_audiobookStatus addObserver:self forKeyPath:@"assetAudiobookStatusTrackTimeRemaining" options:0 context:off_100ACEE98];
      }

      [(BKLibraryBookshelfInfoCell *)self updateConfiguration:1];
      v5 = v9;
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