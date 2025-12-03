@interface BKLibraryBookshelfWantToReadBookCell
- (BCUCoverEffectsEnvironment)coverEffectsEnvironment;
- (BKLibraryActionHandler)actionHandler;
- (BKLibraryBookshelfLayoutManager)layoutManager;
- (BKLibraryBookshelfStorageProvider)storageProvider;
- (BKLibraryBookshelfSupplementaryDataSource)dataSource;
- (BKLibraryBookshelfWantToReadBookCell)initWithFrame:(CGRect)frame;
- (BOOL)accessibilityActivate;
- (BOOL)canPreorder;
- (BOOL)isAccessibilityElement;
- (BOOL)isAudiobook;
- (BOOL)isCloud;
- (BOOL)isDownloading;
- (BOOL)isLocal;
- (BOOL)isSample;
- (BOOL)isStore;
- (BOOL)shouldDragWithTouch:(id)touch;
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
- (id)dragPreviewParametersForDrop:(BOOL)drop;
- (void)_cancelDownload:(id)download;
- (void)_updateAssetStrings;
- (void)_updateTintedImages;
- (void)applyLayoutAttributes:(id)attributes;
- (void)buyButton:(id)button initialBuy:(id)buy completion:(id)completion;
- (void)cleanupCell;
- (void)configureDebugLayout;
- (void)dealloc;
- (void)handleTapWithCompletion:(id)completion;
- (void)layoutCoverView;
- (void)layoutSubviews;
- (void)nightModeChanged;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prepareForReuse;
- (void)reachabilityChanged:(id)changed;
- (void)setAsset:(id)asset;
- (void)setAudiobookStatus:(id)status;
- (void)setCoverEffectsEnvironment:(id)environment;
- (void)setCoverHidden:(BOOL)hidden;
- (void)setDataSource:(id)source;
- (void)setInitialAsset:(id)asset;
- (void)setLibraryAsset:(id)asset;
- (void)setLibraryDownloadStatus:(id)status;
- (void)setSelected:(BOOL)selected;
- (void)setupMenuWithLibraryAsset:(id)asset withActionHandler:(id)handler;
- (void)togglePlayPause:(id)pause;
- (void)updateBuyReadButton;
- (void)updateStarRatingProductProfile;
- (void)updateTextForProductProfile;
@end

@implementation BKLibraryBookshelfWantToReadBookCell

- (BKLibraryBookshelfWantToReadBookCell)initWithFrame:(CGRect)frame
{
  v64.receiver = self;
  v64.super_class = BKLibraryBookshelfWantToReadBookCell;
  v3 = [(BKLibraryBookshelfCollectionViewCell *)&v64 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIApplication sharedApplication];
    v3->_isRTL = [v4 userInterfaceLayoutDirection] == 1;

    v5 = objc_alloc_init(BKLibraryBookshelfCoverView);
    coverView = v3->_coverView;
    v3->_coverView = v5;

    coverLayer = [(BKLibraryBookshelfCoverView *)v3->_coverView coverLayer];
    [coverLayer setBottomAligned:0];

    contentView = [(BKLibraryBookshelfWantToReadBookCell *)v3 contentView];
    [contentView addSubview:v3->_coverView];

    v9 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v13 = [v9 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    checkmarkView = v3->_checkmarkView;
    v3->_checkmarkView = v13;

    contentView2 = [(BKLibraryBookshelfWantToReadBookCell *)v3 contentView];
    [contentView2 addSubview:v3->_checkmarkView];

    height = [[BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"Not downloaded" value:&stru_100A30A68 table:0];
    [(BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize *)height setAccessibilityLabel:v18];

    [(BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize *)height setAccessibilityTraits:[(BKLibraryBookshelfImageViewWithMinimumAccessibilityFrameSize *)height accessibilityTraits]& ~UIAccessibilityTraitImage];
    cloudView = v3->_cloudView;
    v3->_cloudView = &height->super;
    v20 = height;

    contentView3 = [(BKLibraryBookshelfWantToReadBookCell *)v3 contentView];
    [contentView3 addSubview:v3->_cloudView];

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
    contentView4 = [(BKLibraryBookshelfWantToReadBookCell *)v3 contentView];
    [contentView4 addSubview:v3->_downloadProgressButton];

    v28 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v28;

    v30 = v3->_titleLabel;
    accessibilityTraits = [(UILabel *)v30 accessibilityTraits];
    [(UILabel *)v30 setAccessibilityTraits:UIAccessibilityTraitHeader | accessibilityTraits];
    [(UILabel *)v3->_titleLabel setLineBreakMode:4];
    v32 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    authorLabel = v3->_authorLabel;
    v3->_authorLabel = v32;

    [(UILabel *)v3->_authorLabel setLineBreakMode:4];
    contentView5 = [(BKLibraryBookshelfWantToReadBookCell *)v3 contentView];
    [contentView5 addSubview:v3->_titleLabel];

    contentView6 = [(BKLibraryBookshelfWantToReadBookCell *)v3 contentView];
    [contentView6 addSubview:v3->_authorLabel];

    height2 = [[BKLibraryStarRating alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    starRating = v3->_starRating;
    v3->_starRating = height2;

    [(BKLibraryStarRating *)v3->_starRating setDelegate:v3];
    [(BKLibraryStarRating *)v3->_starRating setEnabled:0];
    [(BKLibraryStarRating *)v3->_starRating setIsRTL:v3->_isRTL];
    contentView7 = [(BKLibraryBookshelfWantToReadBookCell *)v3 contentView];
    [contentView7 addSubview:v3->_starRating];

    v39 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    starRatingCountLabel = v3->_starRatingCountLabel;
    v3->_starRatingCountLabel = v39;

    contentView8 = [(BKLibraryBookshelfWantToReadBookCell *)v3 contentView];
    [contentView8 addSubview:v3->_starRatingCountLabel];

    v42 = [IMTouchInsetsButton buttonWithType:0];
    moreButton = v3->_moreButton;
    v3->_moreButton = v42;

    [(IMTouchInsetsButton *)v3->_moreButton setTouchInsets:-10.0, -10.0, -10.0, -10.0];
    contentView9 = [(BKLibraryBookshelfWantToReadBookCell *)v3 contentView];
    [contentView9 addSubview:v3->_moreButton];

    v45 = objc_alloc_init(BCBuyGetTwoStateButton);
    readBuyButton = v3->_readBuyButton;
    v3->_readBuyButton = v45;

    [(BCBuyGetTwoStateButton *)v3->_readBuyButton setClipsToBounds:1];
    [(BCBuyGetTwoStateButton *)v3->_readBuyButton setDelegate:v3];
    titleLabel = [(BCBuyGetTwoStateButton *)v3->_readBuyButton titleLabel];
    [titleLabel setAdjustsFontSizeToFitWidth:1];

    titleLabel2 = [(BCBuyGetTwoStateButton *)v3->_readBuyButton titleLabel];
    [titleLabel2 setBaselineAdjustment:1];

    contentView10 = [(BKLibraryBookshelfWantToReadBookCell *)v3 contentView];
    [contentView10 addSubview:v3->_readBuyButton];

    v50 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    bookDescription = v3->_bookDescription;
    v3->_bookDescription = v50;

    [(UILabel *)v3->_bookDescription setTextAlignment:4];
    [(UILabel *)v3->_bookDescription setUserInteractionEnabled:0];
    contentView11 = [(BKLibraryBookshelfWantToReadBookCell *)v3 contentView];
    [contentView11 addSubview:v3->_bookDescription];

    v53 = objc_alloc_init(UIImageView);
    dragBarView = v3->_dragBarView;
    v3->_dragBarView = v53;

    contentView12 = [(BKLibraryBookshelfWantToReadBookCell *)v3 contentView];
    [contentView12 addSubview:v3->_dragBarView];

    v56 = +[CAShapeLayer layer];
    separatorline = v3->_separatorline;
    v3->_separatorline = v56;

    v58 = +[UIScreen mainScreen];
    [v58 scale];
    [(CAShapeLayer *)v3->_separatorline setLineWidth:1.0 / v59];

    layer = [(BKLibraryBookshelfWantToReadBookCell *)v3 layer];
    [layer addSublayer:v3->_separatorline];

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
  coverView = [(BKLibraryBookshelfWantToReadBookCell *)self coverView];
  coverLayer = [coverView coverLayer];

  return coverLayer;
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
  coverLayer = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
  isHidden = [coverLayer isHidden];

  if (isHidden)
  {
    [(BKLibraryBookshelfWantToReadBookCell *)self setCoverHidden:0];
  }

  +[CATransaction commit];
}

- (BCUCoverEffectsEnvironment)coverEffectsEnvironment
{
  coverLayer = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
  coverEffectsEnvironment = [coverLayer coverEffectsEnvironment];

  return coverEffectsEnvironment;
}

- (void)setCoverEffectsEnvironment:(id)environment
{
  environmentCopy = environment;
  coverLayer = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
  [coverLayer setCoverEffectsEnvironment:environmentCopy];
}

- (void)handleTapWithCompletion:(id)completion
{
  completionCopy = completion;
  readBuyButton = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
  isHidden = [readBuyButton isHidden];

  if ((isHidden & 1) == 0)
  {
    readBuyButton2 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [readBuyButton2 resetButtonState];
  }

  actionHandler = [(BKLibraryBookshelfWantToReadBookCell *)self actionHandler];
  indexPath = [(BKLibraryBookshelfWantToReadBookCell *)self indexPath];
  [actionHandler bookTapped:indexPath completion:completionCopy];
}

- (id)dragPreview
{
  v3 = [UIDragPreview alloc];
  coverView = [(BKLibraryBookshelfWantToReadBookCell *)self coverView];
  v5 = [v3 initWithView:coverView];

  return v5;
}

- (id)dragPreviewParametersForDrop:(BOOL)drop
{
  v4 = objc_alloc_init(UIDragPreviewParameters);
  traitCollection = [(BKLibraryBookshelfWantToReadBookCell *)self traitCollection];
  v6 = [traitCollection traitCollectionByModifyingTraits:&stru_100A07A28];

  v7 = +[UIColor bc_booksBackground];
  v8 = [v7 resolvedColorWithTraitCollection:v6];
  [v4 setBackgroundColor:v8];

  return v4;
}

- (void)setCoverHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  coverView = [(BKLibraryBookshelfWantToReadBookCell *)self coverView];
  [coverView setHidden:hiddenCopy];

  +[CATransaction commit];
}

- (id)coverImage
{
  coverLayer = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
  image = [coverLayer image];

  return image;
}

- (CGRect)coverFrame
{
  layer = [(BKLibraryBookshelfWantToReadBookCell *)self layer];
  coverLayer = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
  [coverLayer coverBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  coverLayer2 = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
  [layer convertRect:coverLayer2 fromLayer:{v6, v8, v10, v12}];
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
  columnMetrics = [(BKLibraryBookshelfWantToReadBookCell *)self columnMetrics];
  [columnMetrics margins];
  [(BKLibraryBookshelfWantToReadBookCell *)self bookCoverLeftMargin];

  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    wantToReadMetrics = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
    [wantToReadMetrics editModeMargin];
    checkmarkView = [(BKLibraryBookshelfWantToReadBookCell *)self checkmarkView];
    image = [checkmarkView image];
    [image size];
    wantToReadMetrics2 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
    [wantToReadMetrics2 checkMarkSpacing];
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  objc_initWeak(&location, self);
  if (off_100ACE578 == context)
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

  if (off_100ACE588 == context)
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

  if (off_100ACE590 == context)
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

  if (off_100ACE580 == context)
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

  if (off_100ACE568 == context)
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

  if (off_100ACE570 == context)
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
  [(BKLibraryBookshelfWantToReadBookCell *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_14:
  objc_destroyWeak(&location);
}

- (void)reachabilityChanged:(id)changed
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

- (void)buyButton:(id)button initialBuy:(id)buy completion:(id)completion
{
  buyCopy = buy;
  completionCopy = completion;
  v8 = [buyCopy length];
  actionHandler = [(BKLibraryBookshelfWantToReadBookCell *)self actionHandler];
  indexPath = [(BKLibraryBookshelfWantToReadBookCell *)self indexPath];
  if (v8)
  {
    [actionHandler directBuyTapped:indexPath buyParameters:buyCopy completion:completionCopy];
  }

  else
  {
    [actionHandler bookTapped:indexPath];

    actionHandler = objc_retainBlock(completionCopy);
    if (actionHandler)
    {
      actionHandler[2](actionHandler, 1);
    }
  }
}

- (BOOL)isStore
{
  libraryAsset = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  isStore = [libraryAsset isStore];

  return isStore;
}

- (BOOL)isDownloading
{
  libraryAsset = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  if ([libraryAsset isDownloading])
  {
    isDownloadingSupplementalContent = 1;
  }

  else
  {
    libraryAsset2 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
    isDownloadingSupplementalContent = [libraryAsset2 isDownloadingSupplementalContent];
  }

  return isDownloadingSupplementalContent;
}

- (BOOL)isLocal
{
  libraryAsset = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  isLocal = [libraryAsset isLocal];

  return isLocal;
}

- (BOOL)isCloud
{
  libraryAsset = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  isCloud = [libraryAsset isCloud];

  return isCloud;
}

- (BOOL)isSample
{
  libraryAsset = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  isSample = [libraryAsset isSample];

  return isSample;
}

- (BOOL)isAudiobook
{
  libraryAsset = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  if ([libraryAsset isAudiobook])
  {
    bOOLValue = 1;
  }

  else
  {
    libraryAsset2 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
    isStoreAudiobook = [libraryAsset2 isStoreAudiobook];
    bOOLValue = [isStoreAudiobook BOOLValue];
  }

  return bOOLValue;
}

- (BOOL)canPreorder
{
  asset = [(BKLibraryBookshelfWantToReadBookCell *)self asset];
  isPreorder = [asset isPreorder];

  return isPreorder;
}

- (BOOL)wasPreordered
{
  libraryAsset = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  isPreorderBook = [libraryAsset isPreorderBook];

  return isPreorderBook;
}

- (BOOL)storeReachable
{
  dataSource = [(BKLibraryBookshelfWantToReadBookCell *)self dataSource];
  storeReachable = [dataSource storeReachable];

  return storeReachable;
}

- (BOOL)shouldShowCloud
{
  libraryAsset = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  if ([libraryAsset isCloud])
  {
    libraryAsset2 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
    v5 = [libraryAsset2 isPreorderBook] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  libraryAsset3 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  isAudiobook = [libraryAsset3 isAudiobook];

  libraryAsset4 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  isBook = [libraryAsset4 isBook];

  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    LOBYTE(v10) = 0;
  }

  else if ((isBook | isAudiobook) & v5)
  {
    return ![(BKLibraryBookshelfWantToReadBookCell *)self isDownloading];
  }

  else
  {
    libraryAsset5 = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
    if ([libraryAsset5 isNonLocalSample])
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
  coverLayer = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
  [coverLayer bounds];
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
  coverLayer2 = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
  v21 = *&CGAffineTransformIdentity.c;
  *&v39.a = *&CGAffineTransformIdentity.a;
  *&v39.c = v21;
  *&v39.tx = *&CGAffineTransformIdentity.tx;
  [coverLayer2 setAffineTransform:&v39];

  if (v6 != CGSizeZero.width || v8 != CGSizeZero.height)
  {
    +[UIView inheritedAnimationDuration];
  }

  coverView = [(BKLibraryBookshelfWantToReadBookCell *)self coverView];
  [coverView setFrame:{x, y, width, height}];

  if ([(BKLibraryBookshelfWantToReadBookCell *)self isSelected])
  {
    memset(&v39, 0, sizeof(v39));
    wantToReadMetrics = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
    [wantToReadMetrics shrinkAmount];
    v26 = v25;
    wantToReadMetrics2 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
    [wantToReadMetrics2 shrinkAmount];
    CGAffineTransformMakeScale(&v39, v26, v28);

    v38 = v39;
    coverLayer3 = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
    v37 = v38;
    [coverLayer3 setAffineTransform:&v37];

    coverLayer4 = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
    LODWORD(v31) = 1.0;
    [coverLayer4 setOpacity:v31];
  }

  else
  {
    isInEditMode = [(BKLibraryBookshelfCollectionViewCell *)self isInEditMode];
    if (isInEditMode)
    {
      wantToReadMetrics3 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
      [wantToReadMetrics3 shrinkAlpha];
      v34 = v33;
    }

    else
    {
      v34 = 1.0;
    }

    coverLayer5 = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
    *&v36 = v34;
    [coverLayer5 setOpacity:v36];

    if (isInEditMode)
    {
    }
  }
}

- (void)layoutSubviews
{
  v517.receiver = self;
  v517.super_class = BKLibraryBookshelfWantToReadBookCell;
  [(BKLibraryBookshelfWantToReadBookCell *)&v517 layoutSubviews];
  wantToReadMetrics = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
  [(BKLibraryBookshelfWantToReadBookCell *)self updateBuyReadButton];
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    [wantToReadMetrics editModeMargin];
    v5 = v4;
  }

  else
  {
    columnMetrics = [(BKLibraryBookshelfWantToReadBookCell *)self columnMetrics];
    [columnMetrics margins];
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
  libraryAsset = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  isStore = [libraryAsset isStore];

  dragBarView = [(BKLibraryBookshelfWantToReadBookCell *)self dragBarView];
  image = [dragBarView image];
  [image size];
  v471 = v28;
  v466 = v29;

  if (isStore)
  {
    isInEditMode = [(BKLibraryBookshelfCollectionViewCell *)self isInEditMode];
  }

  else
  {
    isInEditMode = 1;
  }

  starRating = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
  [starRating setHidden:isStore ^ 1];

  starRatingCountLabel = [(BKLibraryBookshelfWantToReadBookCell *)self starRatingCountLabel];
  [starRatingCountLabel setHidden:isStore ^ 1];

  +[UIView inheritedAnimationDuration];
  v485 = v22;
  v486 = v20;
  if (v33 == 0.0)
  {
    if (isInEditMode)
    {
      v38 = 0.0;
    }

    else
    {
      v38 = 1.0;
    }

    bookDescription = [(BKLibraryBookshelfWantToReadBookCell *)self bookDescription];
    [bookDescription setAlpha:v38];

    if ([(BKLibraryBookshelfWantToReadBookCell *)self shouldShowCloud])
    {
      v40 = 1.0;
    }

    else
    {
      v40 = 0.0;
    }

    cloudView = [(BKLibraryBookshelfWantToReadBookCell *)self cloudView];
    [cloudView setAlpha:v40];

    shouldShowCloud = [(BKLibraryBookshelfWantToReadBookCell *)self shouldShowCloud];
    cloudView2 = [(BKLibraryBookshelfWantToReadBookCell *)self cloudView];
    [cloudView2 setIsAccessibilityElement:shouldShowCloud];

    if ([(BKLibraryBookshelfWantToReadBookCell *)self shouldShowDownloadProgressButton])
    {
      v44 = 1.0;
    }

    else
    {
      v44 = 0.0;
    }

    downloadProgressButton = [(BKLibraryBookshelfWantToReadBookCell *)self downloadProgressButton];
    [downloadProgressButton setAlpha:v44];

    if ([(BKLibraryBookshelfWantToReadBookCell *)self shouldShowMoreButton])
    {
      v46 = 1.0;
    }

    else
    {
      v46 = 0.0;
    }

    moreButton = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
    [moreButton setAlpha:v46];

    if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
    {
      v48 = 0.0;
    }

    else
    {
      v48 = 1.0;
    }

    readBuyButton = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [readBuyButton setAlpha:v48];

    if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
    {
      v50 = 1.0;
    }

    else
    {
      v50 = 0.0;
    }

    checkmarkView = [(BKLibraryBookshelfWantToReadBookCell *)self checkmarkView];
    [checkmarkView setAlpha:v50];

    if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
    {
      v52 = 1.0;
    }

    else
    {
      v52 = 0.0;
    }

    dragBarView2 = [(BKLibraryBookshelfWantToReadBookCell *)self dragBarView];
    [dragBarView2 setAlpha:v52];
  }

  else
  {
    isInEditMode2 = [(BKLibraryBookshelfCollectionViewCell *)self isInEditMode];
    v35 = 0.0;
    if ((isInEditMode2 & 1) == 0)
    {
      +[UIView inheritedAnimationDuration];
      v35 = v36 + -0.08;
    }

    v515[0] = _NSConcreteStackBlock;
    v515[1] = 3221225472;
    v515[2] = sub_1001109E4;
    v515[3] = &unk_100A044C8;
    v515[4] = self;
    v516 = isInEditMode;
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
  if (isInEditMode)
  {
    v56 = 0;
  }

  else
  {
    bookDescription2 = [(BKLibraryBookshelfWantToReadBookCell *)self bookDescription];
    text = [bookDescription2 text];
    v56 = [text length] != 0;
  }

  [(BKLibraryBookshelfWantToReadBookCell *)self layoutCoverView];
  [(BKLibraryBookshelfWantToReadBookCell *)self bookCoverLeftMargin];
  v60 = v5 + v59;
  v520.origin.x = rect;
  v520.origin.y = v18;
  v520.size.width = v486;
  v520.size.height = v22;
  v61 = v60 + CGRectGetWidth(v520);
  [wantToReadMetrics lockupMargin];
  v63 = v61 + v62;
  v484 = v18;
  if ([(BKLibraryBookshelfCollectionViewCell *)self isInEditMode])
  {
    checkmarkView2 = [(BKLibraryBookshelfWantToReadBookCell *)self checkmarkView];
    image2 = [checkmarkView2 image];
    [image2 size];
    v67 = v66;
    [wantToReadMetrics checkMarkSpacing];
    v63 = v63 + v67 + v68;
  }

  v521.origin.x = v502.origin.x;
  v499 = v10;
  v521.origin.y = v10;
  v521.size.width = v12;
  v521.size.height = v14;
  rect_24 = v63;
  v69 = CGRectGetWidth(v521) - (v5 + v63);
  readBuyButton2 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
  [readBuyButton2 alignmentSizeThatFits:{1.79769313e308, 1.79769313e308}];
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
    readBuyButton3 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    configuration = [readBuyButton3 configuration];
    v78 = [configuration copy];

    [v78 contentInsets];
    v80 = v79;
    [v78 contentInsets];
    v82 = v80 + v81;
    image3 = [v78 image];
    [image3 size];
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
    readBuyButton4 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [readBuyButton4 setConfiguration:v78];

    rect_16 = ceil(rect_16 * fmax(v90, 0.75));
    readBuyButton5 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [readBuyButton5 setButtonShrinkFactor:v90];

    readBuyButton6 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    buttonFont = [readBuyButton6 buttonFont];

    [buttonFont pointSize];
    v101 = [buttonFont fontWithSize:ceil(v90 * v100)];

    readBuyButton7 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [readBuyButton7 setButtonFont:v101];

    v73 = v87 + ceil(v89 * v90);
    v55 = v486;
    v71 = v481;
  }

  stackedLayout = [(BKLibraryBookshelfWantToReadBookCell *)self stackedLayout];
  v104 = v88;
  v105 = v88;
  if ((stackedLayout & 1) == 0)
  {
    [wantToReadMetrics readBuyLeadingEdgeSpacing];
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
      [wantToReadMetrics dragHandleHorizontalSpacing];
      v109 = v471 + rect_24 + v108;
      columnMetrics2 = [(BKLibraryBookshelfWantToReadBookCell *)self columnMetrics];
      [columnMetrics2 margins];
      v112 = v109 + v111;
      v55 = v486;
      v104 = v107 - v112;
    }
  }

  else
  {
    [wantToReadMetrics readBuyLeadingEdgeSpacing];
    v104 = v88 - (v73 + v113);
  }

  isInEditMode3 = [(BKLibraryBookshelfCollectionViewCell *)self isInEditMode];
  v523.origin.x = v502.origin.x;
  v523.origin.y = v499;
  v523.size.width = v12;
  v523.size.height = v14;
  MaxX = CGRectGetMaxX(v523);
  if (isInEditMode3)
  {
    columnMetrics3 = [(BKLibraryBookshelfWantToReadBookCell *)self columnMetrics];
    [columnMetrics3 margins];
    v71 = v116;
  }

  v474 = v71;
  titleLabel = [(BKLibraryBookshelfWantToReadBookCell *)self titleLabel];
  [titleLabel sizeThatFits:{v104, 1.79769313e308}];
  v489 = v118;

  v524.origin.x = rect;
  v524.origin.y = v484;
  v524.size.height = v485;
  v524.size.width = v55;
  MinY = CGRectGetMinY(v524);
  [wantToReadMetrics titleSpacing];
  v121 = MinY + v120;
  [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v123 = v122;
  v500 = v12;
  v501 = v14;
  v125 = v124;
  v127 = v126;
  v129 = v128;
  titleLabel2 = [(BKLibraryBookshelfWantToReadBookCell *)self titleLabel];
  [titleLabel2 setFrame:{v123, v125, v127, v129}];

  authorLabel = [(BKLibraryBookshelfWantToReadBookCell *)self authorLabel];
  [authorLabel sizeThatFits:{v104, 1.79769313e308}];
  v133 = v132;

  v525.origin.x = rect_24;
  v525.origin.y = v121;
  v525.size.width = v104;
  v525.size.height = v489;
  MaxY = CGRectGetMaxY(v525);
  [wantToReadMetrics authorSpacing];
  v136 = MaxY + v135;
  [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v138 = v137;
  v140 = v139;
  v142 = v141;
  v144 = v143;
  authorLabel2 = [(BKLibraryBookshelfWantToReadBookCell *)self authorLabel];
  [authorLabel2 setFrame:{v138, v140, v142, v144}];

  v526.origin.x = rect_24;
  v457 = v136;
  v458 = v133;
  v526.origin.y = v136;
  v526.size.width = v104;
  v526.size.height = v133;
  v146 = CGRectGetMaxY(v526);
  starRating2 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
  isHidden = [starRating2 isHidden];

  starRating3 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
  isHidden2 = [starRating3 isHidden];

  [wantToReadMetrics ratingWidth];
  v152 = v151;
  [wantToReadMetrics ratingHorizontalSpacing];
  v483 = v104;
  v154 = v104 - (v152 + v153);
  starRatingCountLabel2 = [(BKLibraryBookshelfWantToReadBookCell *)self starRatingCountLabel];
  [starRatingCountLabel2 sizeThatFits:{v154, 1.79769313e308}];
  v157 = v156;
  v159 = v158;

  v490 = v154;
  v160 = (v157 > v154) | isHidden2;
  [wantToReadMetrics ratingSpacing];
  v492 = v146;
  v162 = v146 + v161;
  if (!((v157 > v154) | isHidden2 & 1))
  {
    [wantToReadMetrics ratingHeight];
    if (v159 > v163)
    {
      [wantToReadMetrics ratingHeight];
      v162 = v162 + (v159 - v164) * 0.5;
    }
  }

  v487 = v159;
  v165 = 0.0;
  v166 = 0.0;
  if ((isHidden & 1) == 0)
  {
    [wantToReadMetrics ratingWidth];
    v165 = v167;
    [wantToReadMetrics ratingHeight];
    v166 = v168;
  }

  isRTL = [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
  starRating4 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
  [starRating4 setIsRTL:isRTL];

  [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v172 = v171;
  v174 = v173;
  v176 = v175;
  v178 = v177;
  starRating5 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
  [starRating5 setFrame:{v172, v174, v176, v178}];

  v527.origin.x = rect_24;
  v527.origin.y = v162;
  v469 = v165;
  v527.size.width = v165;
  v527.size.height = v166;
  v180 = CGRectGetMaxX(v527);
  [wantToReadMetrics ratingHorizontalSpacing];
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
  starRatingCountLabel3 = [(BKLibraryBookshelfWantToReadBookCell *)self starRatingCountLabel];
  [starRatingCountLabel3 setFrame:{v189, v191, v193, v195}];

  v197 = v492;
  if ((isHidden & 1) == 0)
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

  [wantToReadMetrics descriptionLeftMargin];
  v200 = rect_8 - v199;
  [wantToReadMetrics descriptionRightMargin];
  v202 = v200 - v201;
  bookDescription3 = [(BKLibraryBookshelfWantToReadBookCell *)self bookDescription];
  [bookDescription3 sizeThatFits:{v202, 1.79769313e308}];
  v205 = v204;

  [wantToReadMetrics descriptionTopMargin];
  v493 = v205;
  v207 = v205 + v206;
  [wantToReadMetrics descriptionBottomMargin];
  v209 = v207 + v208;
  [wantToReadMetrics descriptionSpacing];
  v211 = v197 + v210;
  [wantToReadMetrics descriptionLeftMargin];
  v491 = rect_24 + v212;
  [wantToReadMetrics descriptionTopMargin];
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
    [wantToReadMetrics descriptionSpacing];
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
    checkmarkView3 = [(BKLibraryBookshelfWantToReadBookCell *)self checkmarkView];
    image4 = [checkmarkView3 image];
    [image4 size];
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

  stackedLayout2 = [(BKLibraryBookshelfWantToReadBookCell *)self stackedLayout];
  v231 = v221 - v479;
  v480 = v218;
  if (stackedLayout2)
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
  readBuyButton8 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
  v242 = v238;
  v243 = v218;
  v244 = v240;
  v245 = v232;
  [readBuyButton8 setAlignmentFrame:{v234, v236, v242, v244}];

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
  moreButton2 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
  [moreButton2 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v250 = v249;

  [wantToReadMetrics moreHeight];
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
    [wantToReadMetrics stackedButtonHorizontalSpacing];
    v476 = v253 + v254;
    v255 = floor(MidY + v252 * -0.5);
  }

  else
  {
    v476 = rect_8a - v250;
    [wantToReadMetrics moreSpacing];
    v255 = v246 + v256;
  }

  v472 = v255;
  v257 = v252;
  wantToReadMetrics2 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
  [wantToReadMetrics2 moreSpacing];
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

  wantToReadMetrics3 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
  [wantToReadMetrics3 stackedButtonHorizontalSpacing];
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

  wantToReadMetrics4 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
  [wantToReadMetrics4 cloudSpacing];
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

  wantToReadMetrics5 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
  [wantToReadMetrics5 stackedButtonHorizontalSpacing];
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

  moreButton3 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
  [moreButton3 setTouchInsets:{v262, v267, v272, v277}];

  [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v280 = v279;
  v282 = v281;
  v284 = v283;
  v286 = v285;
  moreButton4 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
  [moreButton4 setFrame:{v280, v282, v284, v286}];

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
    [wantToReadMetrics stackedButtonHorizontalSpacing];
  }

  else
  {
    [wantToReadMetrics cloudSpacing];
  }

  [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v290 = v289;
  v292 = v291;
  v294 = v293;
  v296 = v295;
  downloadProgressButton2 = [(BKLibraryBookshelfWantToReadBookCell *)self downloadProgressButton];
  [downloadProgressButton2 setFrame:{v290, v292, v294, v296}];

  cloudView3 = [(BKLibraryBookshelfWantToReadBookCell *)self cloudView];
  image5 = [cloudView3 image];
  [image5 size];
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
    [wantToReadMetrics stackedButtonHorizontalSpacing];
    v306 = v304 + v305;
    v307 = floor(v467 + v303 * -0.5);
  }

  else
  {
    v306 = rect_8a - v301;
    [wantToReadMetrics cloudSpacing];
    v307 = v288 + v308;
  }

  [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
  IMRectFlippedForRTL();
  v473 = v301;
  v310 = v309;
  v312 = v311;
  v314 = v313;
  v316 = v315;
  cloudView4 = [(BKLibraryBookshelfWantToReadBookCell *)self cloudView];
  [cloudView4 setFrame:{v310, v312, v314, v316}];

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
      wantToReadMetrics6 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
      [wantToReadMetrics6 moreSpacing];
      v468 = v480 + v321;

      [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v323 = v322;
      v325 = v324;
      v327 = v326;
      v329 = v328;
      moreButton5 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
      [moreButton5 setFrame:{v323, v325, v327, v329}];

      wantToReadMetrics7 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
      [wantToReadMetrics7 moreSpacing];

      [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v333 = v332;
      v335 = v334;
      v337 = v336;
      v339 = v338;
      downloadProgressButton3 = [(BKLibraryBookshelfWantToReadBookCell *)self downloadProgressButton];
      [downloadProgressButton3 setFrame:{v333, v335, v337, v339}];

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
      [wantToReadMetrics stackedButtonHorizontalSpacing];
      v344 = v342 + v343;
      [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
      IMRectFlippedForRTL();
      v346 = v345;
      v348 = v347;
      v350 = v349;
      v352 = v351;
      cloudView5 = [(BKLibraryBookshelfWantToReadBookCell *)self cloudView];
      v354 = v350;
      v319 = v499;
      [cloudView5 setFrame:{v346, v348, v354, v352}];

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

  isInEditMode4 = [(BKLibraryBookshelfCollectionViewCell *)self isInEditMode];
  [(BKLibraryBookshelfWantToReadBookCell *)self frame];
  v356 = CGRectGetHeight(v545);
  if (isInEditMode4)
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
    titleLabel3 = [(BKLibraryBookshelfWantToReadBookCell *)self titleLabel];
    [titleLabel3 frame];
    v550 = CGRectOffset(v549, 0.0, v358);
    v362 = v550.origin.x;
    v363 = v550.origin.y;
    v364 = v550.size.width;
    v365 = v550.size.height;
    titleLabel4 = [(BKLibraryBookshelfWantToReadBookCell *)self titleLabel];
    [titleLabel4 setFrame:{v362, v363, v364, v365}];

    authorLabel3 = [(BKLibraryBookshelfWantToReadBookCell *)self authorLabel];
    [authorLabel3 frame];
    v552 = CGRectOffset(v551, 0.0, v358);
    v368 = v552.origin.x;
    v369 = v552.origin.y;
    v370 = v552.size.width;
    v371 = v552.size.height;
    authorLabel4 = [(BKLibraryBookshelfWantToReadBookCell *)self authorLabel];
    [authorLabel4 setFrame:{v368, v369, v370, v371}];

    starRating6 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
    [starRating6 frame];
    v554 = CGRectOffset(v553, 0.0, v358);
    v374 = v554.origin.x;
    v375 = v554.origin.y;
    v376 = v554.size.width;
    v377 = v554.size.height;
    starRating7 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
    [starRating7 setFrame:{v374, v375, v376, v377}];

    starRatingCountLabel4 = [(BKLibraryBookshelfWantToReadBookCell *)self starRatingCountLabel];
    [starRatingCountLabel4 frame];
    v556 = CGRectOffset(v555, 0.0, v358);
    v380 = v556.origin.x;
    v381 = v556.origin.y;
    v382 = v556.size.width;
    v383 = v556.size.height;
    starRatingCountLabel5 = [(BKLibraryBookshelfWantToReadBookCell *)self starRatingCountLabel];
    [starRatingCountLabel5 setFrame:{v380, v381, v382, v383}];

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
    readBuyButton9 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [readBuyButton9 frame];
    v560 = CGRectOffset(v559, 0.0, v359);
    v388 = v560.origin.x;
    v389 = v319;
    v390 = v385;
    v391 = v560.origin.y;
    v392 = v560.size.width;
    v393 = v386;
    v394 = v560.size.height;
    readBuyButton10 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [readBuyButton10 setFrame:{v388, v391, v392, v394}];

    moreButton6 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
    [moreButton6 frame];
    v562 = CGRectOffset(v561, 0.0, v359);
    v397 = v562.origin.x;
    v398 = v562.origin.y;
    v399 = v562.size.width;
    v400 = v562.size.height;
    moreButton7 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
    [moreButton7 setFrame:{v397, v398, v399, v400}];

    downloadProgressButton4 = [(BKLibraryBookshelfWantToReadBookCell *)self downloadProgressButton];
    [downloadProgressButton4 frame];
    v564 = CGRectOffset(v563, 0.0, v359);
    v403 = v564.origin.x;
    v404 = v564.origin.y;
    v405 = v564.size.width;
    v406 = v564.size.height;
    downloadProgressButton5 = [(BKLibraryBookshelfWantToReadBookCell *)self downloadProgressButton];
    v408 = v406;
    v386 = v393;
    [downloadProgressButton5 setFrame:{v403, v404, v405, v408}];

    cloudView6 = [(BKLibraryBookshelfWantToReadBookCell *)self cloudView];
    [cloudView6 frame];
    v566 = CGRectOffset(v565, 0.0, v359);
    v410 = v566.origin.x;
    v411 = v566.origin.y;
    v412 = v566.size.width;
    v413 = v566.size.height;
    cloudView7 = [(BKLibraryBookshelfWantToReadBookCell *)self cloudView];
    v415 = v412;
    v385 = v390;
    v319 = v389;
    [cloudView7 setFrame:{v410, v411, v415, v413}];
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
    selfCopy = self;
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
  bookDescription4 = [(BKLibraryBookshelfWantToReadBookCell *)self bookDescription];
  [bookDescription4 setFrame:{v418, v420, v422, v424}];

LABEL_128:
  v426 = +[UIBezierPath bezierPath];
  separatorline = [(BKLibraryBookshelfWantToReadBookCell *)self separatorline];
  [separatorline lineWidth];
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
  separatorline2 = [(BKLibraryBookshelfWantToReadBookCell *)self separatorline];
  [separatorline2 addAnimation:v436 forKey:0];

  cGPath = [v426 CGPath];
  separatorline3 = [(BKLibraryBookshelfWantToReadBookCell *)self separatorline];
  [separatorline3 setPath:cGPath];

  audiobookControl = [(BKLibraryBookshelfCollectionViewCell *)self audiobookControl];
  if (audiobookControl)
  {
    [wantToReadMetrics audiobookControlMargin];
    v443 = v442;
    [audiobookControl frame];
    v445 = v444;
    v447 = v446;
    [(BKLibraryBookshelfWantToReadBookCell *)self coverFrame];
    v449 = v443 + v448;
    v452 = v451 + v450 - v447 - v443;
    [audiobookControl frame];
    v573.origin.x = v449;
    v573.origin.y = v452;
    v573.size.width = v445;
    v573.size.height = v447;
    if (!CGRectEqualToRect(v572, v573))
    {
      [(BKLibraryBookshelfWantToReadBookCell *)self isRTL];
      IMRectFlippedForRTL();
      [audiobookControl setFrame:?];
    }
  }

  readBuyButton11 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
  [readBuyButton11 updateButton];
}

- (void)_updateTintedImages
{
  wantToReadMetrics = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
  if (wantToReadMetrics)
  {
    v4 = wantToReadMetrics;
    dataSource = [(BKLibraryBookshelfWantToReadBookCell *)self dataSource];

    if (dataSource)
    {
      wantToReadMetrics2 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
      moreTintColor = [wantToReadMetrics2 moreTintColor];

      dataSource2 = [(BKLibraryBookshelfWantToReadBookCell *)self dataSource];
      v8 = [dataSource2 dragBarImageWithTintColor:moreTintColor];
      dragBarView = [(BKLibraryBookshelfWantToReadBookCell *)self dragBarView];
      [dragBarView setImage:v8];

      dataSource3 = [(BKLibraryBookshelfWantToReadBookCell *)self dataSource];
      v11 = [dataSource3 selectedCheckmarkImageForSelectedState:{-[BKLibraryBookshelfWantToReadBookCell isSelected](self, "isSelected")}];
      checkmarkView = [(BKLibraryBookshelfWantToReadBookCell *)self checkmarkView];
      [checkmarkView setImage:v11];

      if ([(BKLibraryBookshelfWantToReadBookCell *)self isSelected])
      {
        +[UIColor bc_booksKeyColor];
      }

      else
      {
        +[UIColor bc_booksTertiaryLabelColor];
      }
      v13 = ;
      checkmarkView2 = [(BKLibraryBookshelfWantToReadBookCell *)self checkmarkView];
      [checkmarkView2 setTintColor:v13];

      moreButton = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
      dataSource4 = [(BKLibraryBookshelfWantToReadBookCell *)self dataSource];
      v17 = [dataSource4 actionMenuImageWithTintColor:moreTintColor];
      [moreButton setImage:v17 forState:0];

      dataSource5 = [(BKLibraryBookshelfWantToReadBookCell *)self dataSource];
      v19 = [dataSource5 templateCloudImageForCloudState:1];
      cloudView = [(BKLibraryBookshelfWantToReadBookCell *)self cloudView];
      [cloudView setImage:v19];

      cloudView2 = [(BKLibraryBookshelfWantToReadBookCell *)self cloudView];
      [cloudView2 setTintColor:moreTintColor];
    }
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  v53.receiver = self;
  v53.super_class = BKLibraryBookshelfWantToReadBookCell;
  attributesCopy = attributes;
  [(BKLibraryBookshelfCollectionViewCell *)&v53 applyLayoutAttributes:attributesCopy];
  objc_opt_class();
  v5 = BUDynamicCast();
  indexPath = [attributesCopy indexPath];

  [(BKLibraryBookshelfWantToReadBookCell *)self setIndexPath:indexPath];
  v7 = +[UIApplication sharedApplication];
  -[BKLibraryBookshelfWantToReadBookCell setIsRTL:](self, "setIsRTL:", [v7 userInterfaceLayoutDirection] == 1);

  -[BKLibraryBookshelfWantToReadBookCell setLayoutDebugMode:](self, "setLayoutDebugMode:", [v5 layoutDebugMode]);
  if ([v5 layoutDebugMode])
  {
    [(BKLibraryBookshelfWantToReadBookCell *)self configureDebugLayout];
  }

  else
  {
    layer = [(BKLibraryBookshelfWantToReadBookCell *)self layer];
    [layer setBorderWidth:0.0];
  }

  cellMetrics = [v5 cellMetrics];
  [(BKLibraryBookshelfWantToReadBookCell *)self setMetrics:cellMetrics];

  columnMetrics = [v5 columnMetrics];
  [(BKLibraryBookshelfWantToReadBookCell *)self setColumnMetrics:columnMetrics];

  lastItem = [v5 lastItem];
  separatorline = [(BKLibraryBookshelfWantToReadBookCell *)self separatorline];
  [separatorline setHidden:lastItem];

  objc_opt_class();
  cellMetrics2 = [v5 cellMetrics];
  v14 = BUDynamicCast();

  wantToReadMetrics = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];

  if (v14 != wantToReadMetrics)
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
    titleLabel = [(BKLibraryBookshelfWantToReadBookCell *)self titleLabel];
    [titleLabel setNumberOfLines:v17];

    descriptionVisibleRows = [v14 descriptionVisibleRows];
    bookDescription = [(BKLibraryBookshelfWantToReadBookCell *)self bookDescription];
    [bookDescription setNumberOfLines:descriptionVisibleRows];

    starRating = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
    frameColor = [starRating frameColor];
    ratingFrameColor = [v14 ratingFrameColor];

    if (frameColor != ratingFrameColor)
    {
      ratingFrameColor2 = [v14 ratingFrameColor];
      starRating2 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
      [starRating2 setFrameColor:ratingFrameColor2];
    }

    starRating3 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
    fillColor = [starRating3 fillColor];
    ratingFillColor = [v14 ratingFillColor];

    if (fillColor != ratingFillColor)
    {
      ratingFillColor2 = [v14 ratingFillColor];
      starRating4 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
      [starRating4 setFillColor:ratingFillColor2];
    }

    starRating5 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
    emptyColor = [starRating5 emptyColor];
    ratingEmptyColor = [v14 ratingEmptyColor];

    if (emptyColor != ratingEmptyColor)
    {
      ratingEmptyColor2 = [v14 ratingEmptyColor];
      starRating6 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
      [starRating6 setEmptyColor:ratingEmptyColor2];
    }

    [v14 editMargin];
    [(BKLibraryBookshelfWantToReadBookCell *)self setEditMargin:?];
    cellSeparatorColor = [v14 cellSeparatorColor];
    cGColor = [cellSeparatorColor CGColor];
    separatorline2 = [(BKLibraryBookshelfWantToReadBookCell *)self separatorline];
    [separatorline2 setStrokeColor:cGColor];

    [(BKLibraryBookshelfWantToReadBookCell *)self updateTextForProductProfile];
    [(BKLibraryBookshelfWantToReadBookCell *)self updateStarRatingProductProfile];
    [(BKLibraryBookshelfWantToReadBookCell *)self _updateTintedImages];
  }

  libraryAsset = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];

  if (libraryAsset)
  {
    +[UIView inheritedAnimationDuration];
    v41 = v40;
    coverView = [(BKLibraryBookshelfWantToReadBookCell *)self coverView];
    coverLayer = [coverView coverLayer];
    if (v41 == 0.0)
    {
      libraryAsset = self->_libraryAsset;
      [(BKLibraryBookshelfWantToReadBookCell *)self coverArea];
      [coverLayer setLibraryAsset:libraryAsset size:{v48, v49}];
    }

    else
    {
      [(BKLibraryBookshelfWantToReadBookCell *)self coverArea];
      [coverLayer preloadCoverImageAtSize:{v44, v45}];

      v46 = dispatch_time(0, (v41 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100111558;
      block[3] = &unk_100A033C8;
      block[4] = self;
      dispatch_after(v46, &_dispatch_main_q, block);
    }

    coverView2 = [(BKLibraryBookshelfWantToReadBookCell *)self coverView];
    coverLayer2 = [coverView2 coverLayer];
    [coverLayer2 setAnimateFrameChange:1];

    [(BKLibraryBookshelfWantToReadBookCell *)self layoutIfNeeded];
  }
}

- (void)setSelected:(BOOL)selected
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
    selectedCopy = selected;
    [UIView animateWithDuration:v5 animations:0.2];
  }
}

- (void)setLibraryAsset:(id)asset
{
  assetCopy = asset;
  libraryAsset = self->_libraryAsset;
  if (libraryAsset != assetCopy)
  {
    v17 = assetCopy;
    if (libraryAsset && ([(BKLibraryAsset *)libraryAsset isContainer]& 1) == 0)
    {
      [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"combinedState" context:off_100ACE578];
      [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"title" context:off_100ACE580];
      [(BKLibraryAsset *)self->_libraryAsset removeObserver:self forKeyPath:@"author" context:off_100ACE580];
    }

    objc_storeStrong(&self->_libraryAsset, asset);
    if (self->_libraryAsset)
    {
      v7 = +[BKLibraryAssetStatusController sharedController];
      permanentOrTemporaryAssetID = [(BKLibraryAsset *)self->_libraryAsset permanentOrTemporaryAssetID];
      v9 = [v7 statusForAssetID:permanentOrTemporaryAssetID];
      [(BKLibraryBookshelfWantToReadBookCell *)self setLibraryDownloadStatus:v9];
    }

    else
    {
      [(BKLibraryBookshelfWantToReadBookCell *)self setLibraryDownloadStatus:0];
    }

    asset = [(BKLibraryBookshelfWantToReadBookCell *)self asset];
    [(BKLibraryBookshelfWantToReadBookCell *)self setAsset:0];
    v11 = self->_libraryAsset;
    if (v11 && ([(BKLibraryAsset *)v11 isContainer]& 1) == 0)
    {
      [(BKLibraryAsset *)self->_libraryAsset addObserver:self forKeyPath:@"combinedState" options:0 context:off_100ACE578];
      [(BKLibraryAsset *)self->_libraryAsset addObserver:self forKeyPath:@"title" options:0 context:off_100ACE580];
      [(BKLibraryAsset *)self->_libraryAsset addObserver:self forKeyPath:@"author" options:0 context:off_100ACE580];
    }

    if (!asset)
    {
      readBuyButton = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
      [readBuyButton resetButtonState];
    }

    libraryAsset = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
    if (libraryAsset)
    {
      coverLayer = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
      [(BKLibraryBookshelfWantToReadBookCell *)self coverArea];
      [coverLayer setLibraryAsset:libraryAsset size:{v15, v16}];

      [(BKLibraryBookshelfWantToReadBookCell *)self _updateAssetStrings];
      [(BKLibraryBookshelfWantToReadBookCell *)self setNeedsLayout];
    }

    assetCopy = v17;
  }
}

- (void)setLibraryDownloadStatus:(id)status
{
  statusCopy = status;
  libraryDownloadStatus = self->_libraryDownloadStatus;
  if (libraryDownloadStatus != statusCopy)
  {
    v7 = statusCopy;
    [(BKLibraryDownloadStatus *)libraryDownloadStatus removeObserver:self forKeyPath:@"combinedState" context:off_100ACE568];
    [(BKLibraryDownloadStatus *)self->_libraryDownloadStatus removeObserver:self forKeyPath:@"progressValue" context:off_100ACE570];
    objc_storeStrong(&self->_libraryDownloadStatus, status);
    [(BKLibraryDownloadStatus *)self->_libraryDownloadStatus addObserver:self forKeyPath:@"combinedState" options:0 context:off_100ACE568];
    [(BKLibraryDownloadStatus *)self->_libraryDownloadStatus addObserver:self forKeyPath:@"progressValue" options:0 context:off_100ACE570];
    statusCopy = v7;
  }
}

- (void)_updateAssetStrings
{
  libraryAsset = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  title = [libraryAsset title];
  wantToReadMetrics = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
  titleFontAttributes = [wantToReadMetrics titleFontAttributes];
  v6 = [TUIFontSpec attributedStringWith:title attributes:titleFontAttributes];
  titleLabel = [(BKLibraryBookshelfWantToReadBookCell *)self titleLabel];
  [titleLabel setAttributedText:v6];

  displayAuthor = [libraryAsset displayAuthor];
  wantToReadMetrics2 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
  authorFontAttributes = [wantToReadMetrics2 authorFontAttributes];
  v11 = [TUIFontSpec attributedStringWith:displayAuthor attributes:authorFontAttributes];
  authorLabel = [(BKLibraryBookshelfWantToReadBookCell *)self authorLabel];
  [authorLabel setAttributedText:v11];
}

- (void)setInitialAsset:(id)asset
{
  [(BKLibraryBookshelfWantToReadBookCell *)self setAsset:asset];
  readBuyButton = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
  [readBuyButton resetButtonState];
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  if (self->_asset != assetCopy)
  {
    v15 = assetCopy;
    if (!assetCopy || (-[BFMAsset id](assetCopy, "id"), v6 = objc_claimAutoreleasedReturnValue(), -[BKLibraryBookshelfWantToReadBookCell libraryAsset](self, "libraryAsset"), v7 = objc_claimAutoreleasedReturnValue(), [v7 assetID], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v6, "isEqualToString:", v8), v8, v7, v6, assetCopy = v15, v9))
    {
      objc_storeStrong(&self->_asset, asset);
      asset = self->_asset;
      readBuyButton = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
      [readBuyButton setAsset:asset];

      [(BFMAsset *)self->_asset averageRating];
      v13 = v12;
      starRating = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
      [starRating setRating:v13];

      [(BKLibraryBookshelfWantToReadBookCell *)self updateTextForProductProfile];
      [(BKLibraryBookshelfWantToReadBookCell *)self updateStarRatingProductProfile];
      assetCopy = v15;
    }
  }
}

- (void)updateTextForProductProfile
{
  libraryAsset = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
  name = [(BFMAsset *)self->_asset name];
  title = name;
  if (!name)
  {
    title = [libraryAsset title];
  }

  wantToReadMetrics = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
  titleFontAttributes = [wantToReadMetrics titleFontAttributes];
  v7 = [TUIFontSpec attributedStringWith:title attributes:titleFontAttributes];
  titleLabel = [(BKLibraryBookshelfWantToReadBookCell *)self titleLabel];
  [titleLabel setAttributedText:v7];

  if (!name)
  {
  }

  artistName = [(BFMAsset *)self->_asset artistName];
  displayAuthor = artistName;
  if (!artistName)
  {
    displayAuthor = [libraryAsset displayAuthor];
  }

  wantToReadMetrics2 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
  authorFontAttributes = [wantToReadMetrics2 authorFontAttributes];
  v13 = [TUIFontSpec attributedStringWith:displayAuthor attributes:authorFontAttributes];
  authorLabel = [(BKLibraryBookshelfWantToReadBookCell *)self authorLabel];
  [authorLabel setAttributedText:v13];

  if (!artistName)
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

  wantToReadMetrics3 = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
  descriptionFontAttributes = [wantToReadMetrics3 descriptionFontAttributes];
  v21 = [TUIFontSpec attributedStringWith:v18 attributes:descriptionFontAttributes];
  bookDescription = [(BKLibraryBookshelfWantToReadBookCell *)self bookDescription];
  [bookDescription setAttributedText:v21];

  [(BKLibraryBookshelfWantToReadBookCell *)self setNeedsLayout];
}

- (void)updateStarRatingProductProfile
{
  dataSource = [(BKLibraryBookshelfWantToReadBookCell *)self dataSource];
  if (dataSource)
  {
    v4 = dataSource;
    asset = [(BKLibraryBookshelfWantToReadBookCell *)self asset];

    if (asset)
    {
      dataSource2 = [(BKLibraryBookshelfWantToReadBookCell *)self dataSource];
      starRatingCountLabel = [dataSource2 starRatingCountLabel];
      v16 = [NSString localizedStringWithFormat:starRatingCountLabel, [(BFMAsset *)self->_asset ratingCount]];

      wantToReadMetrics = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
      starRatingCountFontAttributes = [wantToReadMetrics starRatingCountFontAttributes];
      v10 = [TUIFontSpec attributedStringWith:v16 attributes:starRatingCountFontAttributes];
      starRatingCountLabel2 = [(BKLibraryBookshelfWantToReadBookCell *)self starRatingCountLabel];
      [starRatingCountLabel2 setAttributedText:v10];

      dataSource3 = [(BKLibraryBookshelfWantToReadBookCell *)self dataSource];
      starRatingCountAccessibilityLabel = [dataSource3 starRatingCountAccessibilityLabel];
      v14 = [NSString localizedStringWithFormat:starRatingCountAccessibilityLabel, [(BFMAsset *)self->_asset ratingCount]];
      starRatingCountLabel3 = [(BKLibraryBookshelfWantToReadBookCell *)self starRatingCountLabel];
      [starRatingCountLabel3 setAccessibilityLabel:v14];

      [(BKLibraryBookshelfWantToReadBookCell *)self setNeedsLayout];
    }
  }
}

- (void)setDataSource:(id)source
{
  objc_storeWeak(&self->_dataSource, source);
  dataSource = [(BKLibraryBookshelfWantToReadBookCell *)self dataSource];
  moreButtonAccessibilityLabel = [dataSource moreButtonAccessibilityLabel];
  [(IMTouchInsetsButton *)self->_moreButton setAccessibilityLabel:moreButtonAccessibilityLabel];

  [(BKLibraryBookshelfWantToReadBookCell *)self _updateTintedImages];
  [(BKLibraryBookshelfWantToReadBookCell *)self updateStarRatingProductProfile];

  [(BKLibraryBookshelfWantToReadBookCell *)self setNeedsLayout];
}

- (void)setAudiobookStatus:(id)status
{
  statusCopy = status;
  audiobookStatus = self->_audiobookStatus;
  if (audiobookStatus != statusCopy)
  {
    v9 = statusCopy;
    if (audiobookStatus)
    {
      [(AEAssetAudiobookStatus *)audiobookStatus removeObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" context:off_100ACE588];
      [(AEAssetAudiobookStatus *)self->_audiobookStatus removeObserver:self forKeyPath:@"assetAudiobookStatusTrackProgress" context:off_100ACE590];
    }

    objc_storeStrong(&self->_audiobookStatus, status);
    v7 = self->_audiobookStatus;
    if (v7)
    {
      [(AEAssetAudiobookStatus *)v7 addObserver:self forKeyPath:@"assetAudiobookStatusIsPlaying" options:0 context:off_100ACE588];
      [(AEAssetAudiobookStatus *)self->_audiobookStatus addObserver:self forKeyPath:@"assetAudiobookStatusTrackProgress" options:0 context:off_100ACE590];
    }

    wantToReadMetrics = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
    [wantToReadMetrics audiobookControlDiameter];
    [(BKLibraryBookshelfCollectionViewCell *)self updateAudiobookControlWithStatus:v9 diameter:?];

    statusCopy = v9;
  }
}

- (void)updateBuyReadButton
{
  libraryAsset = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];

  if (libraryAsset)
  {
    wantToReadMetrics = [(BKLibraryBookshelfWantToReadBookCell *)self wantToReadMetrics];
    if (![(BKLibraryBookshelfWantToReadBookCell *)self isCloud]&& ![(BKLibraryBookshelfWantToReadBookCell *)self isLocal]&& ![(BKLibraryBookshelfWantToReadBookCell *)self isDownloading]&& [(BKLibraryBookshelfWantToReadBookCell *)self isStore]|| [(BKLibraryBookshelfWantToReadBookCell *)self isSample]|| [(BKLibraryBookshelfWantToReadBookCell *)self canPreorder]|| [(BKLibraryBookshelfWantToReadBookCell *)self wasPreordered])
    {
      readBuyStoreFontAttributes = [wantToReadMetrics readBuyStoreFontAttributes];
      font = [readBuyStoreFontAttributes font];
      readBuyButton = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
      [readBuyButton setButtonFont:font];

      readBuyStoreTextColor = [wantToReadMetrics readBuyStoreTextColor];
      readBuyButton2 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
      [readBuyButton2 setTextColor:readBuyStoreTextColor];

      readBuyStoreFillColor = [wantToReadMetrics readBuyStoreFillColor];
      readBuyButton3 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
      [readBuyButton3 setBackgroundFillColor:readBuyStoreFillColor];

      readBuyStoreTextHilightColor = [wantToReadMetrics readBuyStoreTextHilightColor];
      readBuyButton4 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
      [readBuyButton4 setTextHilightColor:readBuyStoreTextHilightColor];

      readBuyStoreFillHilightColor = [wantToReadMetrics readBuyStoreFillHilightColor];
      readBuyButton5 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
      [readBuyButton5 setBackgroundFillHighlightColor:readBuyStoreFillHilightColor];

      readBuyStoreFrameColor = [wantToReadMetrics readBuyStoreFrameColor];
    }

    else
    {
      readBuyFontAttributes = [wantToReadMetrics readBuyFontAttributes];
      font2 = [readBuyFontAttributes font];
      readBuyButton6 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
      [readBuyButton6 setButtonFont:font2];

      readBuyTextColor = [wantToReadMetrics readBuyTextColor];
      readBuyButton7 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
      [readBuyButton7 setTextColor:readBuyTextColor];

      readBuyFillColor = [wantToReadMetrics readBuyFillColor];
      readBuyButton8 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
      [readBuyButton8 setBackgroundFillColor:readBuyFillColor];

      readBuyTextHilightColor = [wantToReadMetrics readBuyTextHilightColor];
      readBuyButton9 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
      [readBuyButton9 setTextHilightColor:readBuyTextHilightColor];

      readBuyFillHilightColor = [wantToReadMetrics readBuyFillHilightColor];
      readBuyButton10 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
      [readBuyButton10 setBackgroundFillHighlightColor:readBuyFillHilightColor];

      readBuyStoreFrameColor = [wantToReadMetrics readBuyFrameColor];
    }

    v16 = readBuyStoreFrameColor;
    readBuyButton11 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [readBuyButton11 setFrameColor:v16];

    [wantToReadMetrics readBuyFrameWidth];
    v19 = v18;
    readBuyButton12 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [readBuyButton12 setFrameWidth:v19];

    readBuyStoreTextDisabledColor = [wantToReadMetrics readBuyStoreTextDisabledColor];
    readBuyButton13 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [readBuyButton13 setDisabledTextColor:readBuyStoreTextDisabledColor];

    buyStateBackgroundFillColor = [wantToReadMetrics buyStateBackgroundFillColor];
    readBuyButton14 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [readBuyButton14 setBuyStateBackgroundFillColor:buyStateBackgroundFillColor];

    readBuyButton15 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    configuration = [readBuyButton15 configuration];
    v27 = [configuration copy];

    [v27 setContentInsets:{6.0, 20.0, 6.0, 20.0}];
    readBuyButton16 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [readBuyButton16 setConfiguration:v27];

    readBuyButton17 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
    [readBuyButton17 updateButton];
  }
}

- (void)_cancelDownload:(id)download
{
  if ([(BKLibraryBookshelfWantToReadBookCell *)self isDownloading])
  {
    actionHandler = [(BKLibraryBookshelfWantToReadBookCell *)self actionHandler];
    libraryAsset = [(BKLibraryBookshelfWantToReadBookCell *)self libraryAsset];
    [actionHandler bookCancelDownload:libraryAsset];
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
  cGColor = [v4 CGColor];
  layer = [(BKLibraryBookshelfWantToReadBookCell *)self layer];
  [layer setBorderColor:cGColor];

  layer2 = [(BKLibraryBookshelfWantToReadBookCell *)self layer];
  [layer2 setBorderWidth:0.5];

  v8 = +[UIColor redColor];
  v9 = [v8 colorWithAlphaComponent:0.2];
  cGColor2 = [v9 CGColor];
  coverLayer = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
  [coverLayer setBorderColor:cGColor2];

  coverLayer2 = [(BKLibraryBookshelfWantToReadBookCell *)self coverLayer];
  [coverLayer2 setBorderWidth:0.5];

  v13 = +[UIColor redColor];
  v14 = [v13 colorWithAlphaComponent:0.2];
  cGColor3 = [v14 CGColor];
  checkmarkView = [(BKLibraryBookshelfWantToReadBookCell *)self checkmarkView];
  layer3 = [checkmarkView layer];
  [layer3 setBorderColor:cGColor3];

  checkmarkView2 = [(BKLibraryBookshelfWantToReadBookCell *)self checkmarkView];
  layer4 = [checkmarkView2 layer];
  [layer4 setBorderWidth:0.5];

  v20 = +[UIColor redColor];
  v21 = [v20 colorWithAlphaComponent:0.2];
  cGColor4 = [v21 CGColor];
  cloudView = [(BKLibraryBookshelfWantToReadBookCell *)self cloudView];
  layer5 = [cloudView layer];
  [layer5 setBorderColor:cGColor4];

  cloudView2 = [(BKLibraryBookshelfWantToReadBookCell *)self cloudView];
  layer6 = [cloudView2 layer];
  [layer6 setBorderWidth:0.5];

  v27 = +[UIColor redColor];
  v28 = [v27 colorWithAlphaComponent:0.2];
  cGColor5 = [v28 CGColor];
  titleLabel = [(BKLibraryBookshelfWantToReadBookCell *)self titleLabel];
  layer7 = [titleLabel layer];
  [layer7 setBorderColor:cGColor5];

  titleLabel2 = [(BKLibraryBookshelfWantToReadBookCell *)self titleLabel];
  layer8 = [titleLabel2 layer];
  [layer8 setBorderWidth:0.5];

  v34 = +[UIColor redColor];
  v35 = [v34 colorWithAlphaComponent:0.2];
  cGColor6 = [v35 CGColor];
  authorLabel = [(BKLibraryBookshelfWantToReadBookCell *)self authorLabel];
  layer9 = [authorLabel layer];
  [layer9 setBorderColor:cGColor6];

  authorLabel2 = [(BKLibraryBookshelfWantToReadBookCell *)self authorLabel];
  layer10 = [authorLabel2 layer];
  [layer10 setBorderWidth:0.5];

  v41 = +[UIColor redColor];
  v42 = [v41 colorWithAlphaComponent:0.2];
  cGColor7 = [v42 CGColor];
  moreButton = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
  layer11 = [moreButton layer];
  [layer11 setBorderColor:cGColor7];

  moreButton2 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
  layer12 = [moreButton2 layer];
  [layer12 setBorderWidth:0.5];

  v48 = +[UIColor redColor];
  v49 = [v48 colorWithAlphaComponent:0.2];
  cGColor8 = [v49 CGColor];
  starRating = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
  layer13 = [starRating layer];
  [layer13 setBorderColor:cGColor8];

  starRating2 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
  layer14 = [starRating2 layer];
  [layer14 setBorderWidth:0.5];

  v55 = +[UIColor redColor];
  v56 = [v55 colorWithAlphaComponent:0.2];
  cGColor9 = [v56 CGColor];
  starRatingCountLabel = [(BKLibraryBookshelfWantToReadBookCell *)self starRatingCountLabel];
  layer15 = [starRatingCountLabel layer];
  [layer15 setBorderColor:cGColor9];

  starRatingCountLabel2 = [(BKLibraryBookshelfWantToReadBookCell *)self starRatingCountLabel];
  layer16 = [starRatingCountLabel2 layer];
  [layer16 setBorderWidth:0.5];

  v62 = +[UIColor redColor];
  v63 = [v62 colorWithAlphaComponent:0.2];
  cGColor10 = [v63 CGColor];
  readBuyButton = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
  layer17 = [readBuyButton layer];
  [layer17 setBorderColor:cGColor10];

  readBuyButton2 = [(BKLibraryBookshelfWantToReadBookCell *)self readBuyButton];
  layer18 = [readBuyButton2 layer];
  [layer18 setBorderWidth:0.5];

  v69 = +[UIColor redColor];
  v70 = [v69 colorWithAlphaComponent:0.2];
  cGColor11 = [v70 CGColor];
  bookDescription = [(BKLibraryBookshelfWantToReadBookCell *)self bookDescription];
  layer19 = [bookDescription layer];
  [layer19 setBorderColor:cGColor11];

  bookDescription2 = [(BKLibraryBookshelfWantToReadBookCell *)self bookDescription];
  layer20 = [bookDescription2 layer];
  [layer20 setBorderWidth:0.5];
}

- (BOOL)shouldDragWithTouch:(id)touch
{
  [touch locationInView:self];
  v5 = v4;
  v7 = v6;
  dragBarView = [(BKLibraryBookshelfWantToReadBookCell *)self dragBarView];
  [dragBarView frame];
  v23 = CGRectInset(v22, -20.0, -20.0);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;

  isInEditMode = [(BKLibraryBookshelfCollectionViewCell *)self isInEditMode];
  if (isInEditMode)
  {
    v14 = x;
    v15 = y;
    v16 = width;
    v17 = height;
    v18 = v5;
    v19 = v7;

    LOBYTE(isInEditMode) = CGRectContainsPoint(*&v14, *&v18);
  }

  return isInEditMode;
}

- (void)setupMenuWithLibraryAsset:(id)asset withActionHandler:(id)handler
{
  handlerCopy = handler;
  assetCopy = asset;
  moreButton = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
  dataSource = [(BKLibraryBookshelfWantToReadBookCell *)self dataSource];
  collection = [dataSource collection];
  v19 = [handlerCopy analyticsAssetPropertyProviderForLibraryAsset:assetCopy fromSourceView:moreButton inCollection:collection];

  moreButton2 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
  tracker = [handlerCopy tracker];
  [moreButton2 setupAppAnalyticsReportingUsingTracker:tracker withPropertyProvider:v19];

  moreButton3 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
  [moreButton3 setShowsMenuAsPrimaryAction:1];

  moreButton4 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
  dataSource2 = [(BKLibraryBookshelfWantToReadBookCell *)self dataSource];
  collection2 = [dataSource2 collection];
  v17 = [handlerCopy menuWithLibraryAsset:assetCopy sourceView:moreButton4 collection:collection2];

  moreButton5 = [(BKLibraryBookshelfWantToReadBookCell *)self moreButton];
  [moreButton5 setMenu:v17];
}

- (void)togglePlayPause:(id)pause
{
  audiobookStatus = [(BKLibraryBookshelfWantToReadBookCell *)self audiobookStatus];
  [audiobookStatus assetAudiobookStatusTogglePlayPause];
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
  text = [(UILabel *)self->_titleLabel text];
  v5 = [text length];

  if (v5)
  {
    titleLabel = [(BKLibraryBookshelfWantToReadBookCell *)self titleLabel];
    text2 = [titleLabel text];
    [v3 addObject:text2];
  }

  text3 = [(UILabel *)self->_authorLabel text];
  v9 = [text3 length];

  if (v9)
  {
    authorLabel = [(BKLibraryBookshelfWantToReadBookCell *)self authorLabel];
    text4 = [authorLabel text];
    [v3 addObject:text4];
  }

  v12 = [v3 componentsJoinedByString:{@", "}];

  return v12;
}

- (id)accessibilityUserInputLabels
{
  v3 = +[NSMutableArray array];
  titleLabel = [(BKLibraryBookshelfWantToReadBookCell *)self titleLabel];
  text = [titleLabel text];
  v6 = [text length];

  if (v6)
  {
    titleLabel2 = [(BKLibraryBookshelfWantToReadBookCell *)self titleLabel];
    text2 = [titleLabel2 text];
    [v3 addObject:text2];
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
    starRating = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
    accessibilityLabel = [starRating accessibilityLabel];
    v5AccessibilityLabel = [accessibilityLabel accessibilityLabel];
    starRating2 = [(BKLibraryBookshelfWantToReadBookCell *)self starRating];
    accessibilityValue = [starRating2 accessibilityValue];
    v9 = [AXCustomContent customContentWithLabel:v5AccessibilityLabel value:accessibilityValue];
    [v3 addObject:v9];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Ratings" value:&stru_100A30A68 table:0];
    asset = [(BKLibraryBookshelfWantToReadBookCell *)self asset];
    v13 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", @"%lu", [asset ratingCount]);
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