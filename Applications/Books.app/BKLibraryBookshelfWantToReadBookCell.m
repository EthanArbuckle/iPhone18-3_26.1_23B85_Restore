@interface BKLibraryBookshelfWantToReadBookCell
- (BCUCoverEffectsEnvironment)coverEffectsEnvironment;
- (BKLibraryActionHandler)actionHandler;
- (BKLibraryBookshelfLayoutManager)layoutManager;
- (BKLibraryBookshelfStorageProvider)storageProvider;
- (BKLibraryBookshelfSupplementaryDataSource)dataSource;
- (BKLibraryBookshelfWantToReadBookCell)initWithFrame:(CGRect)a3;
- (BOOL)accessibilityActivate;
- (BOOL)canPreorder;
- (BOOL)isAccessibilityElement;
- (BOOL)isAudiobook;
- (BOOL)isCloud;
- (BOOL)isDownloading;
- (BOOL)isLocal;
- (BOOL)isSample;
- (BOOL)isStore;
- (BOOL)shouldDragWithTouch:(id)a3;
- (BOOL)shouldShowCloud;
- (BOOL)shouldShowDownloadProgressButton;
- (BOOL)shouldShowMoreButton;
- (BOOL)storeReachable;
- (BOOL)wasPreordered;
- (CGRect)coverArea;
- (CGRect)coverContainerFrame;
- (CGRect)coverFrame;
- (CGSize)bookCoverSize;
- (id)accessibilityCustomContent;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)coverImage;
- (id)coverLayer;
- (id)dragPreview;
- (id)dragPreviewParametersForDrop:(BOOL)a3;
- (void)_cancelDownload:(id)a3;
- (void)_updateAssetStrings;
- (void)_updateTintedImages;
- (void)applyLayoutAttributes:(id)a3;
- (void)buyButton:(id)a3 initialBuy:(id)a4 completion:(id)a5;
- (void)cleanupCell;
- (void)configureDebugLayout;
- (void)dealloc;
- (void)handleTapWithCompletion:(id)a3;
- (void)layoutCoverView;
- (void)layoutSubviews;
- (void)nightModeChanged;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareForReuse;
- (void)reachabilityChanged:(id)a3;
- (void)setAsset:(id)a3;
- (void)setAudiobookStatus:(id)a3;
- (void)setCoverEffectsEnvironment:(id)a3;
- (void)setCoverHidden:(BOOL)a3;
- (void)setDataSource:(id)a3;
- (void)setInitialAsset:(id)a3;
- (void)setLibraryAsset:(id)a3;
- (void)setLibraryDownloadStatus:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setupMenuWithLibraryAsset:(id)a3 withActionHandler:(id)a4;
- (void)togglePlayPause:(id)a3;
- (void)updateBuyReadButton;
- (void)updateStarRatingProductProfile;
- (void)updateTextForProductProfile;
@end

@implementation BKLibraryBookshelfWantToReadBookCell

- (BKLibraryBookshelfWantToReadBookCell)initWithFrame:(CGRect)a3
{
  v64.receiver = self;
  v64.super_class = BKLibraryBookshelfWantToReadBookCell;
  v3 = [(BKLibraryBookshelfCollectionViewCell *)&v64 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIApplication sharedApplication];
    v3->_isRTL = [v4 userInterfaceLayoutDirection] == 1;

    v5 = objc_alloc_init(BKLibraryBookshelfCoverView);
    coverView = v3->_coverView;
    v3->_coverView = v5;

    v7 = [(BKLibraryBookshelfCoverView *)v3->_coverView coverLayer];
    [v7 setBottomAligned:0];

    v8 = [(BKLibraryBookshelfWantToReadBookCell *)v3 contentView];
    [v8 addSubview:v3->_coverView];

    v9 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v13 = [v9 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    checkmarkView = v3->_checkmarkView;
    v3->_checkmarkView = v13;

    v15 = [(BKLibraryBookshelfWantToReadBookCell *)v3 contentView];
    [v15 addSubview:v3->_checkmarkView];

    v16 = [[BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"Not downloaded" value:&stru_100A30A68 table:0];
    [(BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize *)v16 setAccessibilityLabel:v18];

    [(BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize *)v16 setAccessibilityTraits:[(BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize *)v16 accessibilityTraits]& ~UIAccessibilityTraitImage];
    cloudView = v3->_cloudView;
    v3->_cloudView = &v16->super;
    v20 = v16;

    v21 = [(BKLibraryBookshelfWantToReadBookCell *)v3 contentView];
    [v21 addSubview:v3->_cloudView];

    v22 = [[IMRadialProgressButton alloc] initWithFrame:{0.0, 0.0, 17.0, 17.0}];
    downloadProgressButton = v3->_downloadProgressButton;
    v3->_downloadProgressButton = v22;

    [(IMRadialProgressButton *)v3->_downloadProgressButton setCenterImageNormal:0];
    [(IMRadialProgressButton *)v3->_downloadProgressButton setCenterImageSelected:0];
    [(IMRadialProgressButton *)v3->_downloadProgressButton setInscribeProgress:0];
    v24 = +[UIColor bc_booksKeyColor];
    [(IMRadialProgressButton *)v3->_downloadProgressButton setProgressColor:v24];

    [(IMRadialProgressButton *)v3->_downloadProgressButton setProgressLineCap:1];
    [(IMRadialProgressButton *)v3->_downloadProgressButton setProgressThickness:2.0];
    v25 = +[UIColor bc_booksTableSelectionColor];
    [(IMRadialProgressButton *)v3->_downloadProgressButton setTrackColor:v25];

    [(IMRadialProgressButton *)v3->_downloadProgressButton setTrackDiameter:17.0];
    [(IMRadialProgressButton *)v3->_downloadProgressButton setTrackThickness:2.0];
    [(IMRadialProgressButton *)v3->_downloadProgressButton setTouchInsets:-13.5, -13.5, -13.5, -13.5];
    [(IMRadialProgressButton *)v3->_downloadProgressButton addTarget:v3 action:"_cancelDownload:" forControlEvents:64];
    [(BKLibraryDownloadStatus *)v3->_libraryDownloadStatus progressValue];
    *&v26 = v26;
    [(IMRadialProgressButton *)v3->_downloadProgressButton setProgress:v26];
    v27 = [(BKLibraryBookshelfWantToReadBookCell *)v3 contentView];
    [v27 addSubview:v3->_downloadProgressButton];

    v28 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v28;

    v30 = v3->_titleLabel;
    v31 = [(UILabel *)v30 accessibilityTraits];
    [(UILabel *)v30 setAccessibilityTraits:UIAccessibilityTraitHeader | v31];
    [(UILabel *)v3->_titleLabel setLineBreakMode:4];
    v32 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    authorLabel = v3->_authorLabel;
    v3->_authorLabel = v32;

    [(UILabel *)v3->_authorLabel setLineBreakMode:4];
    v34 = [(BKLibraryBookshelfWantToReadBookCell *)v3 contentView];
    [v34 addSubview:v3->_titleLabel];

    v35 = [(BKLibraryBookshelfWantToReadBookCell *)v3 contentView];
    [v35 addSubview:v3->_authorLabel];

    v36 = [[BKLibraryStarRating alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    starRating = v3->_starRating;
    v3->_starRating = v36;

    [(BKLibraryStarRating *)v3->_starRating setDelegate:v3];
    [(BKLibraryStarRating *)v3->_starRating setEnabled:0];
    [(BKLibraryStarRating *)v3->_starRating setIsRTL:v3->_isRTL];
    v38 = [(BKLibraryBookshelfWantToReadBookCell *)v3 contentView];
    [v38 addSubview:v3->_starRating];

    v39 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    starRatingCountLabel = v3->_starRatingCountLabel;
    v3->_starRatingCountLabel = v39;

    v41 = [(BKLibraryBookshelfWantToReadBookCell *)v3 contentView];
    [v41 addSubview:v3->_starRatingCountLabel];

    v42 = [IMTouchInsetsButton buttonWithType:0];
    moreButton = v3->_moreButton;
    v3->_moreButton = v42;

    [(IMTouchInsetsButton *)v3->_moreButton setTouchInsets:-10.0, -10.0, -10.0, -10.0];
    v44 = [(BKLibraryBookshelfWantToReadBookCell *)v3 contentView];
    [v44 addSubview:v3->_moreButton];

    v45 = objc_alloc_init(BCBuyGetTwoStateButton);
    readBuyButton = v3->_readBuyButton;
    v3->_readBuyButton = v45;

    [(BCBuyGetTwoStateButton *)v3->_readBuyButton setClipsToBounds:1];
    [(BCBuyGetTwoStateButton *)v3->_readBuyButton setDelegate:v3];
    v47 = [(BCBuyGetTwoStateButton *)v3->_readBuyButton titleLabel];
    [v47 setAdjustsFontSizeToFitWidth:1];

    v48 = [(BCBuyGetTwoStateButton *)v3->_readBuyButton titleLabel];
    [v48 setBaselineAdjustment:1];

    v49 = [(BKLibraryBookshelfWantToReadBookCell *)v3 contentView];
    [v49 addSubview:v3->_readBuyButton];

    v50 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    bookDescription = v3->_bookDescription;
    v3->_bookDescription = v50;

    [(UILabel *)v3->_bookDescription setTextAlignment:4];
    [(UILabel *)v3->_bookDescription setUserInteractionEnabled:0];
    v52 = [(BKLibraryBookshelfWantToReadBookCell *)v3 contentView];
    [v52 addSubview:v3->_bookDescription];

    v53 = objc_alloc_init(UIImageView);
    dragBarView = v3->_dragBarView;
    v3->_dragBarView = v53;

    v55 = [(BKLibraryBookshelfWantToReadBookCell *)v3 contentView];
    [v55 addSubview:v3->_dragBarView];

    v56 = +[CAShapeLayer layer];
    separatorline = v3->_separatorline;
    v3->_separatorline = v56;

    v58 = +[UIScreen mainScreen];
    [v58 scale];
    [(CAShapeLayer *)v3->_separatorline setLineWidth:1.0 / v59];

    v60 = [(BKLibraryBookshelfWantToReadBookCell *)v3 layer];
    [v60 addSublayer:v3->_separatorline];

    v61 = +[NSNotificationCenter defaultCenter];
    [v61 addObserver:v3 selector:"reachabilityChanged:" name:@"kNetworkReachabilityChangedNotification" object:0];

    v62 = +[UIColor bc_booksTableSelectionColor];

    [(BKLibraryBookshelfCollectionViewCell *)v3 setHighlightBackgroundColor:v62];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"kNetworkReachabilityChangedNotification" object:0];

  [(BKLibraryDownloadStatus *)self->_libraryDownloadStatus removeObserver:self forKeyPath:@"combinedState" context:off_100ACE568];
  [(BKLibraryDownloadStatus *)self->_libraryDownloadStatus removeObserver:self forKeyPath:@"progressValue" context:off_100ACE570];
  libraryAsset = self->_libraryAsset;
  if (libraryAsset && ([(BKLibraryAsset *)libraryAsset isContainer]& 1) == 0)
  {
    [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"combinedState" context:off_100ACE578];
    [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"title" context:off_100ACE580];
    [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"author" context:off_100ACE580];
  }

  [(AEAssetAudiobookStatus *)self->_audiobookStatus removeObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" context:off_100ACE588];
  [(AEAssetAudiobookStatus *)self->_audiobookStatus removeObserver:self forKeyPath:@"assetAudiobookStatusTrackProgress" context:off_100ACE590];
  v5.receiver = self;
  v5.super_class = BKLibraryBookshelfWantToReadBookCell;
  [(BKLibraryBookshelfCollectionViewCell *)&v5 dealloc];
}

- (id)coverLayer
{
  v2 = [(BKLibraryBookshelfWantToReadBookCell *)self coverView];
  v3 = [v2 coverLayer];

  return v3;
}

- (void)cleanupCell
{
  [(BKLibraryBookshelfWantToReadBookCell *)self setLibraryDownloadStatus:0];
  [(BKLibraryBookshelfWantToReadBookCell *)self setLibraryAsset:0];

  [(BKLibraryBookshelfWantToReadBookCell *)self setAudiobookStatus:0];
}

- (void)prepareForReuse
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v5.receiver = self;
  v5.super_class = BKLibraryBookshelfWantToReadBookCell;
  [(BKLibraryBookshelfCollectionViewCell *)&v5 prepareForReuse];
  [(BKLibraryBookshelfWantToReadBookCell *)self cleanupCell];
  v3 = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
  v4 = [v3 isHidden];

  if (v4)
  {
    [(BKLibraryBookshelfWantToReadBookCell *)self setCoverHidden:0];
  }

  +[CATransaction commit];
}

- (BCUCoverEffectsEnvironment)coverEffectsEnvironment
{
  v2 = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
  v3 = [v2 coverEffectsEnvironment];

  return v3;
}

- (void)setCoverEffectsEnvironment:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
  [v5 setCoverEffectsEnvironment:v4];
}

- (void)handleTapWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
  v6 = [v5 isHidden];

  if ((v6 & 1) == 0)
  {
    v7 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [v7 resetButtonState];
  }

  v9 = [(BKLibraryBookshelfWantToReadBookCell *)self actionHandler];
  v8 = [(BKLibraryBookshelfWantToReadBookCell *)self indexPath];
  [v9 bookTapped:v8 completion:v4];
}

- (id)dragPreview
{
  v3 = [UIDragPreview alloc];
  v4 = [(BKLibraryBookshelfWantToReadBookCell *)self coverView];
  v5 = [v3 initWithView:v4];

  return v5;
}

- (id)dragPreviewParametersForDrop:(BOOL)a3
{
  v4 = objc_alloc_init(UIDragPreviewParameters);
  v5 = [(BKLibraryBookshelfWantToReadBookCell *)self traitCollection];
  v6 = [v5 traitCollectionByModifyingTraits:&stru_100A07A28];

  v7 = +[UIColor bc_booksBackground];
  v8 = [v7 resolvedColorWithTraitCollection:v6];
  [v4 setBackgroundColor:v8];

  return v4;
}

- (void)setCoverHidden:(BOOL)a3
{
  v3 = a3;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v5 = [(BKLibraryBookshelfWantToReadBookCell *)self coverView];
  [v5 setHidden:v3];

  +[CATransaction commit];
}

- (id)coverImage
{
  v2 = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
  v3 = [v2 image];

  return v3;
}

- (CGRect)coverFrame
{
  v3 = [(BKLibraryBookshelfWantToReadBookCell *)self layer];
  v4 = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
  [v4 coverBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
  [v3 convertRect:v13 fromLayer:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)coverContainerFrame
{
  [(BKLibraryBookshelfWantToReadBookCell *)self coverArea];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(BKLibraryBookshelfWantToReadBookCell *)self frame];
  v10 = v9 * 0.5 - v8 * 0.5;
  v11 = v4;
  v12 = v6;
  v13 = v8;

  return CGRectIntegral(*&v11);
}

- (CGRect)coverArea
{
  [(BKLibraryBookshelfWantToReadBookCell *)self bounds];
  v3 = [(BKLibraryBookshelfWantToReadBookCell *)self columnMetrics];
  [v3 margins];
  [(BKLibraryBookshelfWantToReadBookCell *)self bookCoverLeftMargin];

  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    v4 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
    [v4 editModeMargin];
    v5 = [(BKLibraryBookshelfWantToReadBookCell *)self checkmarkView];
    v6 = [v5 image];
    [v6 size];
    v7 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
    [v7 checkMarkSpacing];
  }

  [(BKLibraryBookshelfWantToReadBookCell *)self bookCoverSize];
  [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
  [(BKLibraryBookshelfWantToReadBookCell *)self bounds];

  IMRectFlippedForRTL();
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_initWeak(&location, self);
  if (off_100ACE578 == a6)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010E270;
    block[3] = &unk_100A035F8;
    block[4] = self;
    objc_copyWeak(&v27, &location);
    dispatch_async(&_dispatch_main_q, block);
    v13 = &v27;
LABEL_13:
    objc_destroyWeak(v13);
    goto LABEL_14;
  }

  if (off_100ACE588 == a6)
  {
    v14 = v24;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10010E2D4;
    v24[3] = &unk_100A035D0;
    objc_copyWeak(&v25, &location);
    v15 = v24;
LABEL_12:
    dispatch_async(&_dispatch_main_q, v15);
    v13 = (v14 + 4);
    goto LABEL_13;
  }

  if (off_100ACE590 == a6)
  {
    v14 = v22;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10010E364;
    v22[3] = &unk_100A035D0;
    objc_copyWeak(&v23, &location);
    v15 = v22;
    goto LABEL_12;
  }

  if (off_100ACE580 == a6)
  {
    v14 = v20;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10010E3FC;
    v20[3] = &unk_100A035D0;
    objc_copyWeak(&v21, &location);
    v15 = v20;
    goto LABEL_12;
  }

  if (off_100ACE568 == a6)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10010E45C;
    v19[3] = &unk_100A033C8;
    v19[4] = self;
    v16 = v19;
LABEL_17:
    dispatch_async(&_dispatch_main_q, v16);
    goto LABEL_14;
  }

  if (off_100ACE570 == a6)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10010E464;
    v18[3] = &unk_100A033C8;
    v18[4] = self;
    v16 = v18;
    goto LABEL_17;
  }

  v17.receiver = self;
  v17.super_class = BKLibraryBookshelfWantToReadBookCell;
  [(BKLibraryBookshelfWantToReadBookCell *)&v17 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_14:
  objc_destroyWeak(&location);
}

- (void)reachabilityChanged:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010E554;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)nightModeChanged
{
  v3.receiver = self;
  v3.super_class = BKLibraryBookshelfWantToReadBookCell;
  [(BKLibraryBookshelfCollectionViewCell *)&v3 nightModeChanged];
  [(BKLibraryBookshelfWantToReadBookCell *)self setNeedsLayout];
}

- (void)buyButton:(id)a3 initialBuy:(id)a4 completion:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [v11 length];
  v9 = [(BKLibraryBookshelfWantToReadBookCell *)self actionHandler];
  v10 = [(BKLibraryBookshelfWantToReadBookCell *)self indexPath];
  if (v8)
  {
    [v9 directBuyTapped:v10 buyParameters:v11 completion:v7];
  }

  else
  {
    [v9 bookTapped:v10];

    v9 = objc_retainBlock(v7);
    if (v9)
    {
      v9[2](v9, 1);
    }
  }
}

- (BOOL)isStore
{
  v2 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  v3 = [v2 isStore];

  return v3;
}

- (BOOL)isDownloading
{
  v3 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  if ([v3 isDownloading])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
    v4 = [v5 isDownloadingSupplementalContent];
  }

  return v4;
}

- (BOOL)isLocal
{
  v2 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  v3 = [v2 isLocal];

  return v3;
}

- (BOOL)isCloud
{
  v2 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  v3 = [v2 isCloud];

  return v3;
}

- (BOOL)isSample
{
  v2 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  v3 = [v2 isSample];

  return v3;
}

- (BOOL)isAudiobook
{
  v3 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  if ([v3 isAudiobook])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
    v6 = [v5 isStoreAudiobook];
    v4 = [v6 BOOLValue];
  }

  return v4;
}

- (BOOL)canPreorder
{
  v2 = [(BKLibraryBookshelfWantToReadBookCell *)self asset];
  v3 = [v2 isPreorder];

  return v3;
}

- (BOOL)wasPreordered
{
  v2 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  v3 = [v2 isPreorderBook];

  return v3;
}

- (BOOL)storeReachable
{
  v2 = [(BKLibraryBookshelfWantToReadBookCell *)self dataSource];
  v3 = [v2 storeReachable];

  return v3;
}

- (BOOL)shouldShowCloud
{
  v3 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  if ([v3 isCloud])
  {
    v4 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
    v5 = [v4 isPreorderBook] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  v7 = [v6 isAudiobook];

  v8 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  v9 = [v8 isBook];

  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    LOBYTE(v10) = 0;
  }

  else if ((v9 | v7) & v5)
  {
    return ![(BKLibraryBookshelfWantToReadBookCell *)self isDownloading];
  }

  else
  {
    v11 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
    if ([v11 isNonLocalSample])
    {
      v10 = ![(BKLibraryBookshelfWantToReadBookCell *)self isDownloading];
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (BOOL)shouldShowDownloadProgressButton
{
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    return 0;
  }

  return [(BKLibraryBookshelfWantToReadBookCell *)self isDownloading];
}

- (BOOL)shouldShowMoreButton
{
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    return 0;
  }

  else
  {
    return ![(BKLibraryBookshelfWantToReadBookCell *)self isDownloading];
  }
}

- (void)layoutCoverView
{
  v4 = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  [(BKLibraryBookshelfWantToReadBookCell *)self coverArea];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(BKLibraryBookshelfWantToReadBookCell *)self frame];
  v40.origin.y = v15 * 0.5 - v14 * 0.5;
  v40.origin.x = v10;
  v40.size.width = v12;
  v40.size.height = v14;
  v41 = CGRectIntegral(v40);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  v20 = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
  v21 = *&CGAffineTransformIdentity.c;
  *&v39.a = *&CGAffineTransformIdentity.a;
  *&v39.c = v21;
  *&v39.tx = *&CGAffineTransformIdentity.tx;
  [v20 setAffineTransform:&v39];

  if (v6 != CGSizeZero.width || v8 != CGSizeZero.height)
  {
    +[UIView inheritedAnimationDuration];
  }

  v23 = [(BKLibraryBookshelfWantToReadBookCell *)self coverView];
  [v23 setFrame:{x, y, width, height}];

  if ([(BKLibraryBookshelfWantToReadBookCell *)self isSelected])
  {
    memset(&v39, 0, sizeof(v39));
    v24 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
    [v24 shrinkAmount];
    v26 = v25;
    v27 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
    [v27 shrinkAmount];
    CGAffineTransformMakeScale(&v39, v26, v28);

    v38 = v39;
    v29 = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
    v37 = v38;
    [v29 setAffineTransform:&v37];

    v30 = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
    LODWORD(v31) = 1.0;
    [v30 setOpacity:v31];
  }

  else
  {
    v32 = [(BKLibraryBookshelfCollectionViewCell *)self isInEditMode];
    if (v32)
    {
      v2 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
      [v2 shrinkAlpha];
      v34 = v33;
    }

    else
    {
      v34 = 1.0;
    }

    v35 = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
    *&v36 = v34;
    [v35 setOpacity:v36];

    if (v32)
    {
    }
  }
}

- (void)layoutSubviews
{
  v517.receiver = self;
  v517.super_class = BKLibraryBookshelfWantToReadBookCell;
  [(BKLibraryBookshelfWantToReadBookCell *)&v517 layoutSubviews];
  v3 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
  [(BKLibraryBookshelfWantToReadBookCell *)self updateBuyReadButton];
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    [v3 editModeMargin];
    v5 = v4;
  }

  else
  {
    v6 = [(BKLibraryBookshelfWantToReadBookCell *)self columnMetrics];
    [v6 margins];
    v5 = v7;
  }

  [(BKLibraryBookshelfWantToReadBookCell *)self bounds];
  v502.origin.x = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(BKLibraryBookshelfWantToReadBookCell *)self coverArea];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [(BKLibraryBookshelfWantToReadBookCell *)self frame];
  v518.origin.y = v23 * 0.5 - v22 * 0.5;
  rect = v16;
  v518.origin.x = v16;
  v518.size.width = v20;
  v518.size.height = v22;
  v519 = CGRectIntegral(v518);
  y = v519.origin.y;
  x = v519.origin.x;
  height = v519.size.height;
  width = v519.size.width;
  v24 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  v25 = [v24 isStore];

  v26 = [(BKLibraryBookshelfWantToReadBookCell *)self dragBarView];
  v27 = [v26 image];
  [v27 size];
  v471 = v28;
  v466 = v29;

  if (v25)
  {
    v30 = [(BKLibraryBookshelfCollectionViewCell *)self isInEditMode];
  }

  else
  {
    v30 = 1;
  }

  v31 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
  [v31 setHidden:v25 ^ 1];

  v32 = [(BKLibraryBookshelfWantToReadBookCell *)self starRatingCountLabel];
  [v32 setHidden:v25 ^ 1];

  +[UIView inheritedAnimationDuration];
  v485 = v22;
  v486 = v20;
  if (v33 == 0.0)
  {
    if (v30)
    {
      v38 = 0.0;
    }

    else
    {
      v38 = 1.0;
    }

    v39 = [(BKLibraryBookshelfWantToReadBookCell *)self bookDescription];
    [v39 setAlpha:v38];

    if ([(BKLibraryBookshelfWantToReadBookCell *)self shouldShowCloud])
    {
      v40 = 1.0;
    }

    else
    {
      v40 = 0.0;
    }

    v41 = [(BKLibraryBookshelfWantToReadBookCell *)self cloudView];
    [v41 setAlpha:v40];

    v42 = [(BKLibraryBookshelfWantToReadBookCell *)self shouldShowCloud];
    v43 = [(BKLibraryBookshelfWantToReadBookCell *)self cloudView];
    [v43 setIsAccessibilityElement:v42];

    if ([(BKLibraryBookshelfWantToReadBookCell *)self shouldShowDownloadProgressButton])
    {
      v44 = 1.0;
    }

    else
    {
      v44 = 0.0;
    }

    v45 = [(BKLibraryBookshelfWantToReadBookCell *)self downloadProgressButton];
    [v45 setAlpha:v44];

    if ([(BKLibraryBookshelfWantToReadBookCell *)self shouldShowMoreButton])
    {
      v46 = 1.0;
    }

    else
    {
      v46 = 0.0;
    }

    v47 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
    [v47 setAlpha:v46];

    if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
    {
      v48 = 0.0;
    }

    else
    {
      v48 = 1.0;
    }

    v49 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [v49 setAlpha:v48];

    if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
    {
      v50 = 1.0;
    }

    else
    {
      v50 = 0.0;
    }

    v51 = [(BKLibraryBookshelfWantToReadBookCell *)self checkmarkView];
    [v51 setAlpha:v50];

    if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
    {
      v52 = 1.0;
    }

    else
    {
      v52 = 0.0;
    }

    v53 = [(BKLibraryBookshelfWantToReadBookCell *)self dragBarView];
    [v53 setAlpha:v52];
  }

  else
  {
    v34 = [(BKLibraryBookshelfCollectionViewCell *)self isInEditMode];
    v35 = 0.0;
    if ((v34 & 1) == 0)
    {
      +[UIView inheritedAnimationDuration];
      v35 = v36 + -0.08;
    }

    v515[0] = _NSConcreteStackBlock;
    v515[1] = 3221225472;
    v515[2] = sub_1001109E4;
    v515[3] = &unk_100A044C8;
    v515[4] = self;
    v516 = v30;
    [UIView animateWithDuration:32 delay:v515 options:0 animations:0.08 completion:v35];
    if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
    {
      v37 = 0.18;
    }

    else
    {
      +[UIView inheritedAnimationDuration];
      v37 = v54 + -0.26;
    }

    v514[0] = _NSConcreteStackBlock;
    v514[1] = 3221225472;
    v514[2] = sub_100110B3C;
    v514[3] = &unk_100A033C8;
    v514[4] = self;
    [UIView animateWithDuration:32 delay:v514 options:0 animations:0.08 completion:v37];
  }

  v55 = v486;
  if (v30)
  {
    v56 = 0;
  }

  else
  {
    v57 = [(BKLibraryBookshelfWantToReadBookCell *)self bookDescription];
    v58 = [v57 text];
    v56 = [v58 length] != 0;
  }

  [(BKLibraryBookshelfWantToReadBookCell *)self layoutCoverView];
  [(BKLibraryBookshelfWantToReadBookCell *)self bookCoverLeftMargin];
  v60 = v5 + v59;
  v520.origin.x = rect;
  v520.origin.y = v18;
  v520.size.width = v486;
  v520.size.height = v22;
  v61 = v60 + CGRectGetWidth(v520);
  [v3 lockupMargin];
  v63 = v61 + v62;
  v484 = v18;
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    v64 = [(BKLibraryBookshelfWantToReadBookCell *)self checkmarkView];
    v65 = [v64 image];
    [v65 size];
    v67 = v66;
    [v3 checkMarkSpacing];
    v63 = v63 + v67 + v68;
  }

  v521.origin.x = v502.origin.x;
  v499 = v10;
  v521.origin.y = v10;
  v521.size.width = v12;
  v521.size.height = v14;
  rect_24 = v63;
  v69 = CGRectGetWidth(v521) - (v5 + v63);
  v70 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
  [v70 alignmentSizeThatFits:{1.79769313e308, 1.79769313e308}];
  v71 = v5;
  v73 = v72;
  v75 = v74;

  rect_16 = v75;
  v481 = v71;
  if (v73 <= v69)
  {
    v88 = v69;
  }

  else
  {
    v76 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    v77 = [v76 configuration];
    v78 = [v77 copy];

    [v78 contentInsets];
    v80 = v79;
    [v78 contentInsets];
    v82 = v80 + v81;
    v83 = [v78 image];
    [v83 size];
    v85 = v82 + v84;
    [v78 imagePadding];
    v87 = v86 + v85;

    v88 = v69;
    v89 = v73 + v87;
    v90 = 1.0;
    if (v73 > v69 - v87)
    {
      if (v89 <= v69 || v89 == 0.0)
      {
        v90 = 1.0;
      }

      else
      {
        v90 = v69 / v89;
      }
    }

    [v78 contentInsets];
    [v78 setContentInsets:{v90 * v92, v90 * v93, v90 * v94, v90 * v95}];
    v96 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [v96 setConfiguration:v78];

    rect_16 = ceil(rect_16 * fmax(v90, 0.75));
    v97 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [v97 setButtonShrinkFactor:v90];

    v98 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    v99 = [v98 buttonFont];

    [v99 pointSize];
    v101 = [v99 fontWithSize:ceil(v90 * v100)];

    v102 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [v102 setButtonFont:v101];

    v73 = v87 + ceil(v89 * v90);
    v55 = v486;
    v71 = v481;
  }

  v103 = [(BKLibraryBookshelfWantToReadBookCell *)self stackedLayout];
  v104 = v88;
  v105 = v88;
  if ((v103 & 1) == 0)
  {
    [v3 readBuyLeadingEdgeSpacing];
    v105 = v88 - (v73 + v106);
  }

  rect_8 = v105;
  v479 = v73;
  if ([(BKLibraryBookshelfWantToReadBookCell *)self stackedLayout]|| [(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
    {
      v522.origin.x = v502.origin.x;
      v522.origin.y = v499;
      v522.size.width = v12;
      v522.size.height = v14;
      v107 = CGRectGetWidth(v522);
      [v3 dragHandleHorizontalSpacing];
      v109 = v471 + rect_24 + v108;
      v110 = [(BKLibraryBookshelfWantToReadBookCell *)self columnMetrics];
      [v110 margins];
      v112 = v109 + v111;
      v55 = v486;
      v104 = v107 - v112;
    }
  }

  else
  {
    [v3 readBuyLeadingEdgeSpacing];
    v104 = v88 - (v73 + v113);
  }

  v114 = [(BKLibraryBookshelfCollectionViewCell *)self isInEditMode];
  v523.origin.x = v502.origin.x;
  v523.origin.y = v499;
  v523.size.width = v12;
  v523.size.height = v14;
  MaxX = CGRectGetMaxX(v523);
  if (v114)
  {
    v115 = [(BKLibraryBookshelfWantToReadBookCell *)self columnMetrics];
    [v115 margins];
    v71 = v116;
  }

  v474 = v71;
  v117 = [(BKLibraryBookshelfWantToReadBookCell *)self titleLabel];
  [v117 sizeThatFits:{v104, 1.79769313e308}];
  v489 = v118;

  v524.origin.x = rect;
  v524.origin.y = v484;
  v524.size.height = v485;
  v524.size.width = v55;
  MinY = CGRectGetMinY(v524);
  [v3 titleSpacing];
  v121 = MinY + v120;
  [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v123 = v122;
  v500 = v12;
  v501 = v14;
  v125 = v124;
  v127 = v126;
  v129 = v128;
  v130 = [(BKLibraryBookshelfWantToReadBookCell *)self titleLabel];
  [v130 setFrame:{v123, v125, v127, v129}];

  v131 = [(BKLibraryBookshelfWantToReadBookCell *)self authorLabel];
  [v131 sizeThatFits:{v104, 1.79769313e308}];
  v133 = v132;

  v525.origin.x = rect_24;
  v525.origin.y = v121;
  v525.size.width = v104;
  v525.size.height = v489;
  MaxY = CGRectGetMaxY(v525);
  [v3 authorSpacing];
  v136 = MaxY + v135;
  [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v138 = v137;
  v140 = v139;
  v142 = v141;
  v144 = v143;
  v145 = [(BKLibraryBookshelfWantToReadBookCell *)self authorLabel];
  [v145 setFrame:{v138, v140, v142, v144}];

  v526.origin.x = rect_24;
  v457 = v136;
  v458 = v133;
  v526.origin.y = v136;
  v526.size.width = v104;
  v526.size.height = v133;
  v146 = CGRectGetMaxY(v526);
  v147 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
  v148 = [v147 isHidden];

  v149 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
  v150 = [v149 isHidden];

  [v3 ratingWidth];
  v152 = v151;
  [v3 ratingHorizontalSpacing];
  v483 = v104;
  v154 = v104 - (v152 + v153);
  v155 = [(BKLibraryBookshelfWantToReadBookCell *)self starRatingCountLabel];
  [v155 sizeThatFits:{v154, 1.79769313e308}];
  v157 = v156;
  v159 = v158;

  v490 = v154;
  v160 = (v157 > v154) | v150;
  [v3 ratingSpacing];
  v492 = v146;
  v162 = v146 + v161;
  if (!((v157 > v154) | v150 & 1))
  {
    [v3 ratingHeight];
    if (v159 > v163)
    {
      [v3 ratingHeight];
      v162 = v162 + (v159 - v164) * 0.5;
    }
  }

  v487 = v159;
  v165 = 0.0;
  v166 = 0.0;
  if ((v148 & 1) == 0)
  {
    [v3 ratingWidth];
    v165 = v167;
    [v3 ratingHeight];
    v166 = v168;
  }

  v169 = [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
  v170 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
  [v170 setIsRTL:v169];

  [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v172 = v171;
  v174 = v173;
  v176 = v175;
  v178 = v177;
  v179 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
  [v179 setFrame:{v172, v174, v176, v178}];

  v527.origin.x = rect_24;
  v527.origin.y = v162;
  v469 = v165;
  v527.size.width = v165;
  v527.size.height = v166;
  v180 = CGRectGetMaxX(v527);
  [v3 ratingHorizontalSpacing];
  v182 = v180 + v181;
  v454 = v166;
  v456 = v162;
  v183 = v162 + (v166 - v487) * 0.5;
  v184 = v182;
  v185 = floor(v183);
  if (v160)
  {
    v186 = CGSizeZero.height;
  }

  else
  {
    v186 = v487;
  }

  if (v160)
  {
    v187 = CGSizeZero.width;
  }

  else
  {
    v187 = v490;
  }

  [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v189 = v188;
  v191 = v190;
  v193 = v192;
  v195 = v194;
  v196 = [(BKLibraryBookshelfWantToReadBookCell *)self starRatingCountLabel];
  [v196 setFrame:{v189, v191, v193, v195}];

  v197 = v492;
  if ((v148 & 1) == 0)
  {
    v528.origin.x = rect_24;
    v528.size.height = v454;
    v528.origin.y = v456;
    v528.size.width = v469;
    v197 = CGRectGetMaxY(v528);
    v529.origin.x = v184;
    v529.origin.y = v185;
    v529.size.width = v187;
    v529.size.height = v186;
    v198 = CGRectGetMaxY(v529);
    if (v197 < v198)
    {
      v197 = v198;
    }
  }

  [v3 descriptionLeftMargin];
  v200 = rect_8 - v199;
  [v3 descriptionRightMargin];
  v202 = v200 - v201;
  v203 = [(BKLibraryBookshelfWantToReadBookCell *)self bookDescription];
  [v203 sizeThatFits:{v202, 1.79769313e308}];
  v205 = v204;

  [v3 descriptionTopMargin];
  v493 = v205;
  v207 = v205 + v206;
  [v3 descriptionBottomMargin];
  v209 = v207 + v208;
  [v3 descriptionSpacing];
  v211 = v197 + v210;
  [v3 descriptionLeftMargin];
  v491 = rect_24 + v212;
  [v3 descriptionTopMargin];
  v488 = v211 + v213;
  v214 = rect_24;
  v215 = v211;
  v216 = rect_8;
  v217 = v209;
  if (v56)
  {
    v218 = CGRectGetMaxY(*&v214);
  }

  else
  {
    v219 = CGRectGetMinY(*&v214);
    [v3 descriptionSpacing];
    v218 = v219 + v220;
  }

  v221 = MaxX - v474;
  v530.origin.y = v488;
  v530.origin.x = v491;
  v470 = v202;
  v530.size.width = v202;
  v530.size.height = v493;
  v222 = CGRectGetMinY(v530);
  rect_8a = MaxX - v474;
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    v223 = [(BKLibraryBookshelfWantToReadBookCell *)self checkmarkView];
    v224 = [v223 image];
    [v224 size];
    v475 = v225;
    v227 = v226;

    v531.origin.x = x;
    v531.origin.y = y;
    v531.size.width = width;
    v531.size.height = height;
    v455 = CGRectGetMidY(v531) - v227 * 0.5;
    v532.origin.x = x;
    v532.origin.y = y;
    v532.size.width = width;
    v532.size.height = height;
    v513[1] = 3221225472;
    v513[0] = _NSConcreteStackBlock;
    v513[2] = sub_100110BE4;
    v513[3] = &unk_100A07A50;
    v513[4] = self;
    *&v513[5] = v481;
    *&v513[6] = v455;
    v513[7] = v475;
    *&v513[8] = v227;
    v513[9] = *&v502.origin.x;
    *&v513[10] = v499;
    *&v513[11] = v500;
    *&v513[12] = v501;
    *&v513[13] = rect_8a - v471;
    v513[14] = round(CGRectGetMidY(v532) - v466 * 0.5);
    v221 = rect_8a;
    *&v513[15] = v471;
    *&v513[16] = v466;
    [UIView performWithoutAnimation:v513];
  }

  v228 = v479;
  if (v483 >= v479)
  {
    v229 = v479;
  }

  else
  {
    v229 = v483;
  }

  v230 = [(BKLibraryBookshelfWantToReadBookCell *)self stackedLayout];
  v231 = v221 - v479;
  v480 = v218;
  if (v230)
  {
    v232 = rect_24;
  }

  else
  {
    v218 = v222;
    v232 = v221 - v228;
  }

  [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v234 = v233;
  v236 = v235;
  v238 = v237;
  v240 = v239;
  v241 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
  v242 = v238;
  v243 = v218;
  v244 = v240;
  v245 = v232;
  [v241 setAlignmentFrame:{v234, v236, v242, v244}];

  v533.origin.x = v232;
  v533.origin.y = v218;
  v533.size.width = v229;
  v533.size.height = rect_16;
  v246 = CGRectGetMaxY(v533);
  if ([(BKLibraryBookshelfWantToReadBookCell *)self stackedLayout])
  {
    v534.origin.x = v232;
    v534.origin.y = v218;
    v534.size.width = v229;
    v534.size.height = rect_16;
    v480 = CGRectGetMaxY(v534);
  }

  v535.origin.x = v232;
  v535.origin.y = v218;
  v535.size.width = v229;
  v535.size.height = rect_16;
  MidY = CGRectGetMidY(v535);
  v248 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
  [v248 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v250 = v249;

  [v3 moreHeight];
  v252 = v251;
  v463 = v243;
  v465 = v229;
  v482 = v245;
  v478 = v250;
  v467 = MidY;
  if ([(BKLibraryBookshelfWantToReadBookCell *)self stackedLayout])
  {
    v536.origin.x = v245;
    v536.origin.y = v243;
    v536.size.width = v229;
    v536.size.height = rect_16;
    v253 = CGRectGetMaxX(v536);
    [v3 stackedButtonHorizontalSpacing];
    v476 = v253 + v254;
    v255 = floor(MidY + v252 * -0.5);
  }

  else
  {
    v476 = rect_8a - v250;
    [v3 moreSpacing];
    v255 = v246 + v256;
  }

  v472 = v255;
  v257 = v252;
  v258 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
  [v258 moreSpacing];
  v260 = v259;
  v261 = -v259;

  if (v260 >= 10.0)
  {
    v262 = v261;
  }

  else
  {
    v262 = -10.0;
  }

  v263 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
  [v263 stackedButtonHorizontalSpacing];
  v265 = v264;
  v266 = -v264;

  if (v265 >= 10.0)
  {
    v267 = v266;
  }

  else
  {
    v267 = -10.0;
  }

  v268 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
  [v268 cloudSpacing];
  v270 = v269;
  v271 = -v269;

  if (v270 >= 10.0)
  {
    v272 = v271;
  }

  else
  {
    v272 = -10.0;
  }

  v273 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
  [v273 stackedButtonHorizontalSpacing];
  v275 = v274;
  v276 = -v274;

  if (v275 >= 10.0)
  {
    v277 = v276;
  }

  else
  {
    v277 = -10.0;
  }

  v278 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
  [v278 setTouchInsets:{v262, v267, v272, v277}];

  [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v280 = v279;
  v282 = v281;
  v284 = v283;
  v286 = v285;
  v287 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
  [v287 setFrame:{v280, v282, v284, v286}];

  v537.origin.x = v476;
  v537.origin.y = v472;
  v537.size.width = v478;
  v537.size.height = v257;
  v288 = CGRectGetMaxY(v537);
  if ([(BKLibraryBookshelfWantToReadBookCell *)self stackedLayout])
  {
    v538.origin.x = v482;
    v538.origin.y = v463;
    v538.size.width = v465;
    v538.size.height = rect_16;
    CGRectGetMaxX(v538);
    [v3 stackedButtonHorizontalSpacing];
  }

  else
  {
    [v3 cloudSpacing];
  }

  [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v290 = v289;
  v292 = v291;
  v294 = v293;
  v296 = v295;
  v297 = [(BKLibraryBookshelfWantToReadBookCell *)self downloadProgressButton];
  [v297 setFrame:{v290, v292, v294, v296}];

  v298 = [(BKLibraryBookshelfWantToReadBookCell *)self cloudView];
  v299 = [v298 image];
  [v299 size];
  v301 = v300;
  v303 = v302;

  v461 = v257;
  if ([(BKLibraryBookshelfWantToReadBookCell *)self stackedLayout])
  {
    v539.origin.y = v472;
    v539.origin.x = v476;
    v539.size.width = v478;
    v539.size.height = v257;
    v304 = CGRectGetMaxX(v539);
    [v3 stackedButtonHorizontalSpacing];
    v306 = v304 + v305;
    v307 = floor(v467 + v303 * -0.5);
  }

  else
  {
    v306 = rect_8a - v301;
    [v3 cloudSpacing];
    v307 = v288 + v308;
  }

  [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v473 = v301;
  v310 = v309;
  v312 = v311;
  v314 = v313;
  v316 = v315;
  v317 = [(BKLibraryBookshelfWantToReadBookCell *)self cloudView];
  [v317 setFrame:{v310, v312, v314, v316}];

  if ([(BKLibraryBookshelfWantToReadBookCell *)self stackedLayout])
  {
    v540.origin.x = v306;
    v540.origin.y = v307;
    v540.size.width = v473;
    v540.size.height = v303;
    v318 = CGRectGetMaxX(v540);
    v541.origin.x = v502.origin.x;
    v541.origin.y = v499;
    v541.size.width = v500;
    v541.size.height = v501;
    v319 = v499;
    if (v318 > CGRectGetWidth(v541))
    {
      v320 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
      [v320 moreSpacing];
      v468 = v480 + v321;

      [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v323 = v322;
      v325 = v324;
      v327 = v326;
      v329 = v328;
      v330 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
      [v330 setFrame:{v323, v325, v327, v329}];

      v331 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
      [v331 moreSpacing];

      [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v333 = v332;
      v335 = v334;
      v337 = v336;
      v339 = v338;
      v340 = [(BKLibraryBookshelfWantToReadBookCell *)self downloadProgressButton];
      [v340 setFrame:{v333, v335, v337, v339}];

      v542.origin.x = rect_24;
      v542.origin.y = v468;
      v542.size.width = v478;
      v542.size.height = v461;
      v341 = CGRectGetMidY(v542);
      v543.origin.x = rect_24;
      v543.origin.y = v468;
      v543.size.width = v478;
      v543.size.height = v461;
      v342 = CGRectGetMaxX(v543);
      [v3 stackedButtonHorizontalSpacing];
      v344 = v342 + v343;
      [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v346 = v345;
      v348 = v347;
      v350 = v349;
      v352 = v351;
      v353 = [(BKLibraryBookshelfWantToReadBookCell *)self cloudView];
      v354 = v350;
      v319 = v499;
      [v353 setFrame:{v346, v348, v354, v352}];

      v544.origin.x = v344;
      v544.origin.y = floor(v341 + v303 * -0.5);
      v544.size.width = v473;
      v544.size.height = v303;
      v480 = CGRectGetMaxY(v544);
    }
  }

  else
  {
    v319 = v499;
  }

  v355 = [(BKLibraryBookshelfCollectionViewCell *)self isInEditMode];
  [(BKLibraryBookshelfWantToReadBookCell *)self frame];
  v356 = CGRectGetHeight(v545);
  if (v355)
  {
    v357 = v356 * 0.5;
    v546.origin.x = rect_24;
    v546.origin.y = v457;
    v546.size.height = v458;
    v546.size.width = v483;
    v358 = floor((v357 - CGRectGetMinY(v546)) / 1.5);
    v359 = 0.0;
  }

  else
  {
    v358 = floor((v356 - v480) * 0.5);
    if (v56 || [(BKLibraryBookshelfWantToReadBookCell *)self stackedLayout])
    {
      v359 = v358;
    }

    else
    {
      [(BKLibraryBookshelfWantToReadBookCell *)self frame];
      v360 = CGRectGetHeight(v547) * 0.5;
      v548.origin.x = v482;
      v548.origin.y = v463;
      v548.size.width = v465;
      v548.size.height = rect_16;
      v359 = floor(v360 - CGRectGetMaxY(v548));
    }
  }

  if (v358 == 0.0)
  {
    v386 = v500;
    v385 = v470;
  }

  else
  {
    v361 = [(BKLibraryBookshelfWantToReadBookCell *)self titleLabel];
    [v361 frame];
    v550 = CGRectOffset(v549, 0.0, v358);
    v362 = v550.origin.x;
    v363 = v550.origin.y;
    v364 = v550.size.width;
    v365 = v550.size.height;
    v366 = [(BKLibraryBookshelfWantToReadBookCell *)self titleLabel];
    [v366 setFrame:{v362, v363, v364, v365}];

    v367 = [(BKLibraryBookshelfWantToReadBookCell *)self authorLabel];
    [v367 frame];
    v552 = CGRectOffset(v551, 0.0, v358);
    v368 = v552.origin.x;
    v369 = v552.origin.y;
    v370 = v552.size.width;
    v371 = v552.size.height;
    v372 = [(BKLibraryBookshelfWantToReadBookCell *)self authorLabel];
    [v372 setFrame:{v368, v369, v370, v371}];

    v373 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
    [v373 frame];
    v554 = CGRectOffset(v553, 0.0, v358);
    v374 = v554.origin.x;
    v375 = v554.origin.y;
    v376 = v554.size.width;
    v377 = v554.size.height;
    v378 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
    [v378 setFrame:{v374, v375, v376, v377}];

    v379 = [(BKLibraryBookshelfWantToReadBookCell *)self starRatingCountLabel];
    [v379 frame];
    v556 = CGRectOffset(v555, 0.0, v358);
    v380 = v556.origin.x;
    v381 = v556.origin.y;
    v382 = v556.size.width;
    v383 = v556.size.height;
    v384 = [(BKLibraryBookshelfWantToReadBookCell *)self starRatingCountLabel];
    [v384 setFrame:{v380, v381, v382, v383}];

    v557.origin.y = v488;
    v557.origin.x = v491;
    v557.size.width = v470;
    v557.size.height = v493;
    v558 = CGRectOffset(v557, 0.0, v358);
    v488 = v558.origin.y;
    v491 = v558.origin.x;
    v385 = v558.size.width;
    v493 = v558.size.height;
    v386 = v500;
  }

  if (v359 != 0.0)
  {
    v387 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [v387 frame];
    v560 = CGRectOffset(v559, 0.0, v359);
    v388 = v560.origin.x;
    v389 = v319;
    v390 = v385;
    v391 = v560.origin.y;
    v392 = v560.size.width;
    v393 = v386;
    v394 = v560.size.height;
    v395 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [v395 setFrame:{v388, v391, v392, v394}];

    v396 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
    [v396 frame];
    v562 = CGRectOffset(v561, 0.0, v359);
    v397 = v562.origin.x;
    v398 = v562.origin.y;
    v399 = v562.size.width;
    v400 = v562.size.height;
    v401 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
    [v401 setFrame:{v397, v398, v399, v400}];

    v402 = [(BKLibraryBookshelfWantToReadBookCell *)self downloadProgressButton];
    [v402 frame];
    v564 = CGRectOffset(v563, 0.0, v359);
    v403 = v564.origin.x;
    v404 = v564.origin.y;
    v405 = v564.size.width;
    v406 = v564.size.height;
    v407 = [(BKLibraryBookshelfWantToReadBookCell *)self downloadProgressButton];
    v408 = v406;
    v386 = v393;
    [v407 setFrame:{v403, v404, v405, v408}];

    v409 = [(BKLibraryBookshelfWantToReadBookCell *)self cloudView];
    [v409 frame];
    v566 = CGRectOffset(v565, 0.0, v359);
    v410 = v566.origin.x;
    v411 = v566.origin.y;
    v412 = v566.size.width;
    v413 = v566.size.height;
    v414 = [(BKLibraryBookshelfWantToReadBookCell *)self cloudView];
    v415 = v412;
    v385 = v390;
    v319 = v389;
    [v414 setFrame:{v410, v411, v415, v413}];
  }

  +[UIView inheritedAnimationDuration];
  if (v416 == 0.0)
  {
    [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
  }

  else
  {
    if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
    {
      goto LABEL_128;
    }

    *&v502.origin.y = _NSConcreteStackBlock;
    *&v502.size.width = 3221225472;
    *&v502.size.height = sub_100110CD4;
    v503 = &unk_100A04558;
    v504 = self;
    v505 = v491;
    v506 = v488;
    v507 = v385;
    v508 = v493;
    v509 = v502.origin.x;
    v510 = v319;
    v511 = v386;
    v512 = v501;
    [UIView performWithoutAnimation:&v502.origin.y];
    [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
  }

  IMRectFlippedForRTL();
  v418 = v417;
  v420 = v419;
  v422 = v421;
  v424 = v423;
  v425 = [(BKLibraryBookshelfWantToReadBookCell *)self bookDescription];
  [v425 setFrame:{v418, v420, v422, v424}];

LABEL_128:
  v426 = +[UIBezierPath bezierPath];
  v427 = [(BKLibraryBookshelfWantToReadBookCell *)self separatorline];
  [v427 lineWidth];
  v429 = v428 * -0.5 + 1.0;

  v567.origin.x = rect;
  v567.origin.y = v484;
  v567.size.width = v486;
  v567.size.height = v485;
  MinX = CGRectGetMinX(v567);
  if ([(BKLibraryBookshelfWantToReadBookCell *)self isRTL])
  {
    v568.origin.x = rect;
    v568.origin.y = v484;
    v568.size.width = v486;
    v568.size.height = v485;
    MinX = CGRectGetMaxX(v568);
    v431 = v502.origin.x;
    v569.origin.x = v502.origin.x;
    v432 = v319;
    v569.origin.y = v319;
    v433 = v500;
    v434 = v501;
    v569.size.width = v500;
    v569.size.height = v501;
    v435 = CGRectGetMaxX(v569) - rect_8a;
  }

  else
  {
    v435 = rect_8a;
    v431 = v502.origin.x;
    v432 = v319;
    v433 = v500;
    v434 = v501;
  }

  v570.origin.x = v431;
  v570.origin.y = v432;
  v570.size.width = v433;
  v570.size.height = v434;
  [v426 moveToPoint:{MinX, CGRectGetMaxY(v570) - v429}];
  v571.origin.x = v431;
  v571.origin.y = v432;
  v571.size.width = v433;
  v571.size.height = v434;
  [v426 addLineToPoint:{v435, CGRectGetMaxY(v571) - v429}];
  v436 = [CABasicAnimation animationWithKeyPath:@"path"];
  [v436 setToValue:{objc_msgSend(v426, "CGPath")}];
  +[UIView inheritedAnimationDuration];
  [v436 setDuration:?];
  v437 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v436 setTimingFunction:v437];

  [v436 setFillMode:kCAFillModeForwards];
  [v436 setRemovedOnCompletion:0];
  v438 = [(BKLibraryBookshelfWantToReadBookCell *)self separatorline];
  [v438 addAnimation:v436 forKey:0];

  v439 = [v426 CGPath];
  v440 = [(BKLibraryBookshelfWantToReadBookCell *)self separatorline];
  [v440 setPath:v439];

  v441 = [(BKLibraryBookshelfCollectionViewCell *)self audiobookControl];
  if (v441)
  {
    [v3 audiobookControlMargin];
    v443 = v442;
    [v441 frame];
    v445 = v444;
    v447 = v446;
    [(BKLibraryBookshelfWantToReadBookCell *)self coverFrame];
    v449 = v443 + v448;
    v452 = v451 + v450 - v447 - v443;
    [v441 frame];
    v573.origin.x = v449;
    v573.origin.y = v452;
    v573.size.width = v445;
    v573.size.height = v447;
    if (!CGRectEqualToRect(v572, v573))
    {
      [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
      IMRectFlippedForRTL();
      [v441 setFrame:?];
    }
  }

  v453 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
  [v453 updateButton];
}

- (void)_updateTintedImages
{
  v3 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
  if (v3)
  {
    v4 = v3;
    v5 = [(BKLibraryBookshelfWantToReadBookCell *)self dataSource];

    if (v5)
    {
      v6 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
      v22 = [v6 moreTintColor];

      v7 = [(BKLibraryBookshelfWantToReadBookCell *)self dataSource];
      v8 = [v7 dragBarImageWithTintColor:v22];
      v9 = [(BKLibraryBookshelfWantToReadBookCell *)self dragBarView];
      [v9 setImage:v8];

      v10 = [(BKLibraryBookshelfWantToReadBookCell *)self dataSource];
      v11 = [v10 selectedCheckmarkImageForSelectedState:{-[BKLibraryBookshelfWantToReadBookCell isSelected](self, "isSelected")}];
      v12 = [(BKLibraryBookshelfWantToReadBookCell *)self checkmarkView];
      [v12 setImage:v11];

      if ([(BKLibraryBookshelfWantToReadBookCell *)self isSelected])
      {
        +[UIColor bc_booksKeyColor];
      }

      else
      {
        +[UIColor bc_booksTertiaryLabelColor];
      }
      v13 = ;
      v14 = [(BKLibraryBookshelfWantToReadBookCell *)self checkmarkView];
      [v14 setTintColor:v13];

      v15 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
      v16 = [(BKLibraryBookshelfWantToReadBookCell *)self dataSource];
      v17 = [v16 actionMenuImageWithTintColor:v22];
      [v15 setImage:v17 forState:0];

      v18 = [(BKLibraryBookshelfWantToReadBookCell *)self dataSource];
      v19 = [v18 templateCloudImageForCloudState:1];
      v20 = [(BKLibraryBookshelfWantToReadBookCell *)self cloudView];
      [v20 setImage:v19];

      v21 = [(BKLibraryBookshelfWantToReadBookCell *)self cloudView];
      [v21 setTintColor:v22];
    }
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v53.receiver = self;
  v53.super_class = BKLibraryBookshelfWantToReadBookCell;
  v4 = a3;
  [(BKLibraryBookshelfCollectionViewCell *)&v53 applyLayoutAttributes:v4];
  objc_opt_class();
  v5 = BUDynamicCast();
  v6 = [v4 indexPath];

  [(BKLibraryBookshelfWantToReadBookCell *)self setIndexPath:v6];
  v7 = +[UIApplication sharedApplication];
  -[BKLibraryBookshelfWantToReadBookCell setIsRTL:](self, "setIsRTL:", [v7 userInterfaceLayoutDirection] == 1);

  -[BKLibraryBookshelfWantToReadBookCell setLayoutDebugMode:](self, "setLayoutDebugMode:", [v5 layoutDebugMode]);
  if ([v5 layoutDebugMode])
  {
    [(BKLibraryBookshelfWantToReadBookCell *)self configureDebugLayout];
  }

  else
  {
    v8 = [(BKLibraryBookshelfWantToReadBookCell *)self layer];
    [v8 setBorderWidth:0.0];
  }

  v9 = [v5 cellMetrics];
  [(BKLibraryBookshelfWantToReadBookCell *)self setMetrics:v9];

  v10 = [v5 columnMetrics];
  [(BKLibraryBookshelfWantToReadBookCell *)self setColumnMetrics:v10];

  v11 = [v5 lastItem];
  v12 = [(BKLibraryBookshelfWantToReadBookCell *)self separatorline];
  [v12 setHidden:v11];

  objc_opt_class();
  v13 = [v5 cellMetrics];
  v14 = BUDynamicCast();

  v15 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];

  if (v14 != v15)
  {
    [(BKLibraryBookshelfWantToReadBookCell *)self setWantToReadMetrics:v14];
    [(BKLibraryBookshelfWantToReadBookCell *)self setMetrics:v14];
    [v14 bookCoverSize];
    [(BKLibraryBookshelfWantToReadBookCell *)self setBookCoverSize:?];
    [v14 bookCoverLeftMargin];
    [(BKLibraryBookshelfWantToReadBookCell *)self setBookCoverLeftMargin:?];
    -[BKLibraryBookshelfWantToReadBookCell setStackedLayout:](self, "setStackedLayout:", [v14 stackedLayout]);
    [v14 titleMaxLines];
    v17 = v16;
    v18 = [(BKLibraryBookshelfWantToReadBookCell *)self titleLabel];
    [v18 setNumberOfLines:v17];

    v19 = [v14 descriptionVisibleRows];
    v20 = [(BKLibraryBookshelfWantToReadBookCell *)self bookDescription];
    [v20 setNumberOfLines:v19];

    v21 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
    v22 = [v21 frameColor];
    v23 = [v14 ratingFrameColor];

    if (v22 != v23)
    {
      v24 = [v14 ratingFrameColor];
      v25 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
      [v25 setFrameColor:v24];
    }

    v26 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
    v27 = [v26 fillColor];
    v28 = [v14 ratingFillColor];

    if (v27 != v28)
    {
      v29 = [v14 ratingFillColor];
      v30 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
      [v30 setFillColor:v29];
    }

    v31 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
    v32 = [v31 emptyColor];
    v33 = [v14 ratingEmptyColor];

    if (v32 != v33)
    {
      v34 = [v14 ratingEmptyColor];
      v35 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
      [v35 setEmptyColor:v34];
    }

    [v14 editMargin];
    [(BKLibraryBookshelfWantToReadBookCell *)self setEditMargin:?];
    v36 = [v14 cellSeparatorColor];
    v37 = [v36 CGColor];
    v38 = [(BKLibraryBookshelfWantToReadBookCell *)self separatorline];
    [v38 setStrokeColor:v37];

    [(BKLibraryBookshelfWantToReadBookCell *)self updateTextForProductProfile];
    [(BKLibraryBookshelfWantToReadBookCell *)self updateStarRatingProductProfile];
    [(BKLibraryBookshelfWantToReadBookCell *)self _updateTintedImages];
  }

  v39 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];

  if (v39)
  {
    +[UIView inheritedAnimationDuration];
    v41 = v40;
    v42 = [(BKLibraryBookshelfWantToReadBookCell *)self coverView];
    v43 = [v42 coverLayer];
    if (v41 == 0.0)
    {
      libraryAsset = self->_libraryAsset;
      [(BKLibraryBookshelfWantToReadBookCell *)self coverArea];
      [v43 setLibraryAsset:libraryAsset size:{v48, v49}];
    }

    else
    {
      [(BKLibraryBookshelfWantToReadBookCell *)self coverArea];
      [v43 preloadCoverImageAtSize:{v44, v45}];

      v46 = dispatch_time(0, (v41 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100111558;
      block[3] = &unk_100A033C8;
      block[4] = self;
      dispatch_after(v46, &_dispatch_main_q, block);
    }

    v50 = [(BKLibraryBookshelfWantToReadBookCell *)self coverView];
    v51 = [v50 coverLayer];
    [v51 setAnimateFrameChange:1];

    [(BKLibraryBookshelfWantToReadBookCell *)self layoutIfNeeded];
  }
}

- (void)setSelected:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = BKLibraryBookshelfWantToReadBookCell;
  [(BKLibraryBookshelfWantToReadBookCell *)&v7 setSelected:?];
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001116C8;
    v5[3] = &unk_100A044C8;
    v5[4] = self;
    v6 = a3;
    [UIView animateWithDuration:v5 animations:0.2];
  }
}

- (void)setLibraryAsset:(id)a3
{
  v5 = a3;
  libraryAsset = self->_libraryAsset;
  if (libraryAsset != v5)
  {
    v17 = v5;
    if (libraryAsset && ([(BKLibraryAsset *)libraryAsset isContainer]& 1) == 0)
    {
      [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"combinedState" context:off_100ACE578];
      [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"title" context:off_100ACE580];
      [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"author" context:off_100ACE580];
    }

    objc_storeStrong(&self->_libraryAsset, a3);
    if (self->_libraryAsset)
    {
      v7 = +[BKLibraryAssetStatusController sharedController];
      v8 = [(BKLibraryAsset *)self->_libraryAsset permanentOrTemporaryAssetID];
      v9 = [v7 statusForAssetID:v8];
      [(BKLibraryBookshelfWantToReadBookCell *)self setLibraryDownloadStatus:v9];
    }

    else
    {
      [(BKLibraryBookshelfWantToReadBookCell *)self setLibraryDownloadStatus:0];
    }

    v10 = [(BKLibraryBookshelfWantToReadBookCell *)self asset];
    [(BKLibraryBookshelfWantToReadBookCell *)self setAsset:0];
    v11 = self->_libraryAsset;
    if (v11 && ([(BKLibraryAsset *)v11 isContainer]& 1) == 0)
    {
      [(BKLibraryAsset *)self->_libraryAsset addObserver:self forKeyPath:@"combinedState" options:0 context:off_100ACE578];
      [(BKLibraryAsset *)self->_libraryAsset addObserver:self forKeyPath:@"title" options:0 context:off_100ACE580];
      [(BKLibraryAsset *)self->_libraryAsset addObserver:self forKeyPath:@"author" options:0 context:off_100ACE580];
    }

    if (!v10)
    {
      v12 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
      [v12 resetButtonState];
    }

    v13 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
    if (v13)
    {
      v14 = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
      [(BKLibraryBookshelfWantToReadBookCell *)self coverArea];
      [v14 setLibraryAsset:v13 size:{v15, v16}];

      [(BKLibraryBookshelfWantToReadBookCell *)self _updateAssetStrings];
      [(BKLibraryBookshelfWantToReadBookCell *)self setNeedsLayout];
    }

    v5 = v17;
  }
}

- (void)setLibraryDownloadStatus:(id)a3
{
  v5 = a3;
  libraryDownloadStatus = self->_libraryDownloadStatus;
  if (libraryDownloadStatus != v5)
  {
    v7 = v5;
    [(BKLibraryDownloadStatus *)libraryDownloadStatus removeObserver:self forKeyPath:@"combinedState" context:off_100ACE568];
    [(BKLibraryDownloadStatus *)self->_libraryDownloadStatus removeObserver:self forKeyPath:@"progressValue" context:off_100ACE570];
    objc_storeStrong(&self->_libraryDownloadStatus, a3);
    [(BKLibraryDownloadStatus *)self->_libraryDownloadStatus addObserver:self forKeyPath:@"combinedState" options:0 context:off_100ACE568];
    [(BKLibraryDownloadStatus *)self->_libraryDownloadStatus addObserver:self forKeyPath:@"progressValue" options:0 context:off_100ACE570];
    v5 = v7;
  }
}

- (void)_updateAssetStrings
{
  v13 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  v3 = [v13 title];
  v4 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
  v5 = [v4 titleFontAttributes];
  v6 = [TUIFontSpec attributedStringWith:v3 attributes:v5];
  v7 = [(BKLibraryBookshelfWantToReadBookCell *)self titleLabel];
  [v7 setAttributedText:v6];

  v8 = [v13 displayAuthor];
  v9 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
  v10 = [v9 authorFontAttributes];
  v11 = [TUIFontSpec attributedStringWith:v8 attributes:v10];
  v12 = [(BKLibraryBookshelfWantToReadBookCell *)self authorLabel];
  [v12 setAttributedText:v11];
}

- (void)setInitialAsset:(id)a3
{
  [(BKLibraryBookshelfWantToReadBookCell *)self setAsset:a3];
  v4 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
  [v4 resetButtonState];
}

- (void)setAsset:(id)a3
{
  v5 = a3;
  if (self->_asset != v5)
  {
    v15 = v5;
    if (!v5 || (-[BFMAsset id](v5, "id"), v6 = objc_claimAutoreleasedReturnValue(), -[BKLibraryBookshelfWantToReadBookCell libraryAsset](self, "libraryAsset"), v7 = objc_claimAutoreleasedReturnValue(), [v7 assetID], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v6, "isEqualToString:", v8), v8, v7, v6, v5 = v15, v9))
    {
      objc_storeStrong(&self->_asset, a3);
      asset = self->_asset;
      v11 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
      [v11 setAsset:asset];

      [(BFMAsset *)self->_asset averageRating];
      v13 = v12;
      v14 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
      [v14 setRating:v13];

      [(BKLibraryBookshelfWantToReadBookCell *)self updateTextForProductProfile];
      [(BKLibraryBookshelfWantToReadBookCell *)self updateStarRatingProductProfile];
      v5 = v15;
    }
  }
}

- (void)updateTextForProductProfile
{
  v23 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  v3 = [(BFMAsset *)self->_asset name];
  v4 = v3;
  if (!v3)
  {
    v4 = [v23 title];
  }

  v5 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
  v6 = [v5 titleFontAttributes];
  v7 = [TUIFontSpec attributedStringWith:v4 attributes:v6];
  v8 = [(BKLibraryBookshelfWantToReadBookCell *)self titleLabel];
  [v8 setAttributedText:v7];

  if (!v3)
  {
  }

  v9 = [(BFMAsset *)self->_asset artistName];
  v10 = v9;
  if (!v9)
  {
    v10 = [v23 displayAuthor];
  }

  v11 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
  v12 = [v11 authorFontAttributes];
  v13 = [TUIFontSpec attributedStringWith:v10 attributes:v12];
  v14 = [(BKLibraryBookshelfWantToReadBookCell *)self authorLabel];
  [v14 setAttributedText:v13];

  if (!v9)
  {
  }

  v15 = [BCMAssetWrapper htmlStrippedStandardNotesForAsset:self->_asset];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = [BCMAssetWrapper htmlStrippedStandardDescriptionForAsset:self->_asset];
  }

  v18 = v17;

  v19 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
  v20 = [v19 descriptionFontAttributes];
  v21 = [TUIFontSpec attributedStringWith:v18 attributes:v20];
  v22 = [(BKLibraryBookshelfWantToReadBookCell *)self bookDescription];
  [v22 setAttributedText:v21];

  [(BKLibraryBookshelfWantToReadBookCell *)self setNeedsLayout];
}

- (void)updateStarRatingProductProfile
{
  v3 = [(BKLibraryBookshelfWantToReadBookCell *)self dataSource];
  if (v3)
  {
    v4 = v3;
    v5 = [(BKLibraryBookshelfWantToReadBookCell *)self asset];

    if (v5)
    {
      v6 = [(BKLibraryBookshelfWantToReadBookCell *)self dataSource];
      v7 = [v6 starRatingCountLabel];
      v16 = [NSString localizedStringWithFormat:v7, [(BFMAsset *)self->_asset ratingCount]];

      v8 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
      v9 = [v8 starRatingCountFontAttributes];
      v10 = [TUIFontSpec attributedStringWith:v16 attributes:v9];
      v11 = [(BKLibraryBookshelfWantToReadBookCell *)self starRatingCountLabel];
      [v11 setAttributedText:v10];

      v12 = [(BKLibraryBookshelfWantToReadBookCell *)self dataSource];
      v13 = [v12 starRatingCountAccessibilityLabel];
      v14 = [NSString localizedStringWithFormat:v13, [(BFMAsset *)self->_asset ratingCount]];
      v15 = [(BKLibraryBookshelfWantToReadBookCell *)self starRatingCountLabel];
      [v15 setAccessibilityLabel:v14];

      [(BKLibraryBookshelfWantToReadBookCell *)self setNeedsLayout];
    }
  }
}

- (void)setDataSource:(id)a3
{
  objc_storeWeak(&self->_dataSource, a3);
  v4 = [(BKLibraryBookshelfWantToReadBookCell *)self dataSource];
  v5 = [v4 moreButtonAccessibilityLabel];
  [(IMTouchInsetsButton *)self->_moreButton setAccessibilityLabel:v5];

  [(BKLibraryBookshelfWantToReadBookCell *)self _updateTintedImages];
  [(BKLibraryBookshelfWantToReadBookCell *)self updateStarRatingProductProfile];

  [(BKLibraryBookshelfWantToReadBookCell *)self setNeedsLayout];
}

- (void)setAudiobookStatus:(id)a3
{
  v5 = a3;
  audiobookStatus = self->_audiobookStatus;
  if (audiobookStatus != v5)
  {
    v9 = v5;
    if (audiobookStatus)
    {
      [(AEAssetAudiobookStatus *)audiobookStatus removeObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" context:off_100ACE588];
      [(AEAssetAudiobookStatus *)self->_audiobookStatus removeObserver:self forKeyPath:@"assetAudiobookStatusTrackProgress" context:off_100ACE590];
    }

    objc_storeStrong(&self->_audiobookStatus, a3);
    v7 = self->_audiobookStatus;
    if (v7)
    {
      [(AEAssetAudiobookStatus *)v7 addObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" options:0 context:off_100ACE588];
      [(AEAssetAudiobookStatus *)self->_audiobookStatus addObserver:self forKeyPath:@"assetAudiobookStatusTrackProgress" options:0 context:off_100ACE590];
    }

    v8 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
    [v8 audiobookControlDiameter];
    [(BKLibraryBookshelfCollectionViewCell *)self updateAudiobookControlWithStatus:v9 diameter:?];

    v5 = v9;
  }
}

- (void)updateBuyReadButton
{
  v3 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];

  if (v3)
  {
    v41 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
    if (![(BKLibraryBookshelfWantToReadBookCell *)self isCloud]&& ![(BKLibraryBookshelfWantToReadBookCell *)self isLocal]&& ![(BKLibraryBookshelfWantToReadBookCell *)self isDownloading]&& [(BKLibraryBookshelfWantToReadBookCell *)self isStore]|| [(BKLibraryBookshelfWantToReadBookCell *)self isSample]|| [(BKLibraryBookshelfWantToReadBookCell *)self canPreorder]|| [(BKLibraryBookshelfWantToReadBookCell *)self wasPreordered])
    {
      v4 = [v41 readBuyStoreFontAttributes];
      v5 = [v4 font];
      v6 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
      [v6 setButtonFont:v5];

      v7 = [v41 readBuyStoreTextColor];
      v8 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
      [v8 setTextColor:v7];

      v9 = [v41 readBuyStoreFillColor];
      v10 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
      [v10 setBackgroundFillColor:v9];

      v11 = [v41 readBuyStoreTextHilightColor];
      v12 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
      [v12 setTextHilightColor:v11];

      v13 = [v41 readBuyStoreFillHilightColor];
      v14 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
      [v14 setBackgroundFillHighlightColor:v13];

      v15 = [v41 readBuyStoreFrameColor];
    }

    else
    {
      v30 = [v41 readBuyFontAttributes];
      v31 = [v30 font];
      v32 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
      [v32 setButtonFont:v31];

      v33 = [v41 readBuyTextColor];
      v34 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
      [v34 setTextColor:v33];

      v35 = [v41 readBuyFillColor];
      v36 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
      [v36 setBackgroundFillColor:v35];

      v37 = [v41 readBuyTextHilightColor];
      v38 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
      [v38 setTextHilightColor:v37];

      v39 = [v41 readBuyFillHilightColor];
      v40 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
      [v40 setBackgroundFillHighlightColor:v39];

      v15 = [v41 readBuyFrameColor];
    }

    v16 = v15;
    v17 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [v17 setFrameColor:v16];

    [v41 readBuyFrameWidth];
    v19 = v18;
    v20 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [v20 setFrameWidth:v19];

    v21 = [v41 readBuyStoreTextDisabledColor];
    v22 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [v22 setDisabledTextColor:v21];

    v23 = [v41 buyStateBackgroundFillColor];
    v24 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [v24 setBuyStateBackgroundFillColor:v23];

    v25 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    v26 = [v25 configuration];
    v27 = [v26 copy];

    [v27 setContentInsets:{6.0, 20.0, 6.0, 20.0}];
    v28 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [v28 setConfiguration:v27];

    v29 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [v29 updateButton];
  }
}

- (void)_cancelDownload:(id)a3
{
  if ([(BKLibraryBookshelfWantToReadBookCell *)self isDownloading])
  {
    v6 = [(BKLibraryBookshelfWantToReadBookCell *)self actionHandler];
    v4 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
    [v6 bookCancelDownload:v4];
  }

  else
  {
    v5 = BKLibraryUILog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10078E0CC(v5);
    }
  }
}

- (void)configureDebugLayout
{
  v3 = +[UIColor redColor];
  v4 = [v3 colorWithAlphaComponent:0.2];
  v5 = [v4 CGColor];
  v6 = [(BKLibraryBookshelfWantToReadBookCell *)self layer];
  [v6 setBorderColor:v5];

  v7 = [(BKLibraryBookshelfWantToReadBookCell *)self layer];
  [v7 setBorderWidth:0.5];

  v8 = +[UIColor redColor];
  v9 = [v8 colorWithAlphaComponent:0.2];
  v10 = [v9 CGColor];
  v11 = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
  [v11 setBorderColor:v10];

  v12 = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
  [v12 setBorderWidth:0.5];

  v13 = +[UIColor redColor];
  v14 = [v13 colorWithAlphaComponent:0.2];
  v15 = [v14 CGColor];
  v16 = [(BKLibraryBookshelfWantToReadBookCell *)self checkmarkView];
  v17 = [v16 layer];
  [v17 setBorderColor:v15];

  v18 = [(BKLibraryBookshelfWantToReadBookCell *)self checkmarkView];
  v19 = [v18 layer];
  [v19 setBorderWidth:0.5];

  v20 = +[UIColor redColor];
  v21 = [v20 colorWithAlphaComponent:0.2];
  v22 = [v21 CGColor];
  v23 = [(BKLibraryBookshelfWantToReadBookCell *)self cloudView];
  v24 = [v23 layer];
  [v24 setBorderColor:v22];

  v25 = [(BKLibraryBookshelfWantToReadBookCell *)self cloudView];
  v26 = [v25 layer];
  [v26 setBorderWidth:0.5];

  v27 = +[UIColor redColor];
  v28 = [v27 colorWithAlphaComponent:0.2];
  v29 = [v28 CGColor];
  v30 = [(BKLibraryBookshelfWantToReadBookCell *)self titleLabel];
  v31 = [v30 layer];
  [v31 setBorderColor:v29];

  v32 = [(BKLibraryBookshelfWantToReadBookCell *)self titleLabel];
  v33 = [v32 layer];
  [v33 setBorderWidth:0.5];

  v34 = +[UIColor redColor];
  v35 = [v34 colorWithAlphaComponent:0.2];
  v36 = [v35 CGColor];
  v37 = [(BKLibraryBookshelfWantToReadBookCell *)self authorLabel];
  v38 = [v37 layer];
  [v38 setBorderColor:v36];

  v39 = [(BKLibraryBookshelfWantToReadBookCell *)self authorLabel];
  v40 = [v39 layer];
  [v40 setBorderWidth:0.5];

  v41 = +[UIColor redColor];
  v42 = [v41 colorWithAlphaComponent:0.2];
  v43 = [v42 CGColor];
  v44 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
  v45 = [v44 layer];
  [v45 setBorderColor:v43];

  v46 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
  v47 = [v46 layer];
  [v47 setBorderWidth:0.5];

  v48 = +[UIColor redColor];
  v49 = [v48 colorWithAlphaComponent:0.2];
  v50 = [v49 CGColor];
  v51 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
  v52 = [v51 layer];
  [v52 setBorderColor:v50];

  v53 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
  v54 = [v53 layer];
  [v54 setBorderWidth:0.5];

  v55 = +[UIColor redColor];
  v56 = [v55 colorWithAlphaComponent:0.2];
  v57 = [v56 CGColor];
  v58 = [(BKLibraryBookshelfWantToReadBookCell *)self starRatingCountLabel];
  v59 = [v58 layer];
  [v59 setBorderColor:v57];

  v60 = [(BKLibraryBookshelfWantToReadBookCell *)self starRatingCountLabel];
  v61 = [v60 layer];
  [v61 setBorderWidth:0.5];

  v62 = +[UIColor redColor];
  v63 = [v62 colorWithAlphaComponent:0.2];
  v64 = [v63 CGColor];
  v65 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
  v66 = [v65 layer];
  [v66 setBorderColor:v64];

  v67 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
  v68 = [v67 layer];
  [v68 setBorderWidth:0.5];

  v69 = +[UIColor redColor];
  v70 = [v69 colorWithAlphaComponent:0.2];
  v71 = [v70 CGColor];
  v72 = [(BKLibraryBookshelfWantToReadBookCell *)self bookDescription];
  v73 = [v72 layer];
  [v73 setBorderColor:v71];

  v75 = [(BKLibraryBookshelfWantToReadBookCell *)self bookDescription];
  v74 = [v75 layer];
  [v74 setBorderWidth:0.5];
}

- (BOOL)shouldDragWithTouch:(id)a3
{
  [a3 locationInView:self];
  v5 = v4;
  v7 = v6;
  v8 = [(BKLibraryBookshelfWantToReadBookCell *)self dragBarView];
  [v8 frame];
  v23 = CGRectInset(v22, -20.0, -20.0);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;

  v13 = [(BKLibraryBookshelfCollectionViewCell *)self isInEditMode];
  if (v13)
  {
    v14 = x;
    v15 = y;
    v16 = width;
    v17 = height;
    v18 = v5;
    v19 = v7;

    LOBYTE(v13) = CGRectContainsPoint(*&v14, *&v18);
  }

  return v13;
}

- (void)setupMenuWithLibraryAsset:(id)a3 withActionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
  v9 = [(BKLibraryBookshelfWantToReadBookCell *)self dataSource];
  v10 = [v9 collection];
  v19 = [v6 analyticsAssetPropertyProviderForLibraryAsset:v7 fromSourceView:v8 inCollection:v10];

  v11 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
  v12 = [v6 tracker];
  [v11 setupAppAnalyticsReportingUsingTracker:v12 withPropertyProvider:v19];

  v13 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
  [v13 setShowsMenuAsPrimaryAction:1];

  v14 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
  v15 = [(BKLibraryBookshelfWantToReadBookCell *)self dataSource];
  v16 = [v15 collection];
  v17 = [v6 menuWithLibraryAsset:v7 sourceView:v14 collection:v16];

  v18 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
  [v18 setMenu:v17];
}

- (void)togglePlayPause:(id)a3
{
  v3 = [(BKLibraryBookshelfWantToReadBookCell *)self audiobookStatus];
  [v3 assetAudiobookStatusTogglePlayPause];
}

- (BOOL)isAccessibilityElement
{
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = BKLibraryBookshelfWantToReadBookCell;
  return [(BKLibraryBookshelfWantToReadBookCell *)&v4 isAccessibilityElement];
}

- (id)accessibilityLabel
{
  v3 = +[NSMutableArray array];
  v4 = [(UILabel *)self->_titleLabel text];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(BKLibraryBookshelfWantToReadBookCell *)self titleLabel];
    v7 = [v6 text];
    [v3 addObject:v7];
  }

  v8 = [(UILabel *)self->_authorLabel text];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [(BKLibraryBookshelfWantToReadBookCell *)self authorLabel];
    v11 = [v10 text];
    [v3 addObject:v11];
  }

  v12 = [v3 componentsJoinedByString:{@", "}];

  return v12;
}

- (id)accessibilityUserInputLabels
{
  v3 = +[NSMutableArray array];
  v4 = [(BKLibraryBookshelfWantToReadBookCell *)self titleLabel];
  v5 = [v4 text];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [(BKLibraryBookshelfWantToReadBookCell *)self titleLabel];
    v8 = [v7 text];
    [v3 addObject:v8];
  }

  return v3;
}

- (BOOL)accessibilityActivate
{
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    [(BKLibraryBookshelfWantToReadBookCell *)self setSelected:[(BKLibraryBookshelfWantToReadBookCell *)self isSelected]^ 1];
    return 1;
  }

  else
  {
    v4.receiver = self;
    v4.super_class = BKLibraryBookshelfWantToReadBookCell;
    return [(BKLibraryBookshelfWantToReadBookCell *)&v4 accessibilityActivate];
  }
}

- (id)accessibilityCustomContent
{
  v3 = +[NSMutableArray array];
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    v4 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
    v5 = [v4 accessibilityLabel];
    v6 = [v5 accessibilityLabel];
    v7 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
    v8 = [v7 accessibilityValue];
    v9 = [AXCustomContent customContentWithLabel:v6 value:v8];
    [v3 addObject:v9];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Ratings" value:&stru_100A30A68 table:0];
    v12 = [(BKLibraryBookshelfWantToReadBookCell *)self asset];
    v13 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", @"%lu", [v12 ratingCount]);
    v14 = [AXCustomContent customContentWithLabel:v11 value:v13];
    [v3 addObject:v14];
  }

  return v3;
}

- (BKLibraryBookshelfSupplementaryDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (BKLibraryBookshelfStorageProvider)storageProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_storageProvider);

  return WeakRetained;
}

- (BKLibraryBookshelfLayoutManager)layoutManager
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutManager);

  return WeakRetained;
}

- (BKLibraryActionHandler)actionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_actionHandler);

  return WeakRetained;
}

- (CGSize)bookCoverSize
{
  width = self->_bookCoverSize.width;
  height = self->_bookCoverSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end