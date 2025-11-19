@interface TPSBaseTipCollectionViewCell
+ (id)attributedStringOperationQueue;
- (BOOL)handleTipsURL:(id)a3;
- (BOOL)setTip:(id)a3 withCellAppearance:(id)a4;
- (BOOL)videoAssetViewCanDisplayAssets:(id)a3;
- (CGPoint)parallaxOffset;
- (CGSize)cacheCellSize;
- (TPSBaseTipCollectionViewCell)initWithFrame:(CGRect)a3;
- (TPSBaseTipCollectionViewCellDelegate)delegate;
- (UIEdgeInsets)contentSafeAreaInsets;
- (id)imagePath;
- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5;
- (id)uniqueIdentifierForCurrentTip;
- (void)actionButtonTapped;
- (void)applyLayoutAttributes:(id)a3;
- (void)commonInit;
- (void)constellationContentParserAttributedStringUpdated:(id)a3;
- (void)contentLayoutChanged:(id)a3 userInfo:(id)a4;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)continuePlayVideo;
- (void)dealloc;
- (void)handleTripleTapInternalGesture:(id)a3;
- (void)handleURL:(id)a3;
- (void)imageAssetViewImageUpdated:(id)a3;
- (void)loadBodyContentIfNeeded;
- (void)loadContentIfNeeded;
- (void)logAnimationFinished;
- (void)playVideo;
- (void)prepareForReuse;
- (void)removeContentParser;
- (void)replayButtonTapped;
- (void)replayVideo;
- (void)resetVideoPlayer;
- (void)scrollToTop;
- (void)scrubVideoToFirstFrame;
- (void)setContentSafeAreaInsets:(UIEdgeInsets)a3;
- (void)setParallaxOffset:(CGPoint)a3;
- (void)setupActionButtonConfiguration;
- (void)updateActionButton;
- (void)updateAssetIfAllowed;
- (void)updateAssetPaths;
- (void)updateAssetViewBackground;
- (void)updateAssetsConfiguration;
- (void)updateAttributedStringWithCache;
- (void)updateButtonFonts;
- (void)updateConstraints;
- (void)updateContentLabel;
- (void)updateFonts;
- (void)updateHeroHeightConstraint;
- (void)updateImageReadyStatus;
- (void)updateImageView;
- (void)updateLoadingStatus;
- (void)updateVideoPath;
- (void)videoAssetViewUpdateAssetLoadingFinished:(id)a3 error:(id)a4;
@end

@implementation TPSBaseTipCollectionViewCell

+ (id)attributedStringOperationQueue
{
  if (qword_1000B5190 != -1)
  {
    sub_10006A074();
  }

  v3 = qword_1000B5198;

  return v3;
}

- (void)dealloc
{
  [(TPSBaseTipCollectionViewCell *)self removeContentParser];
  [(NSBlockOperation *)self->_contentTextOperation cancel];
  contentTextOperation = self->_contentTextOperation;
  self->_contentTextOperation = 0;

  contentTextOperationID = self->_contentTextOperationID;
  self->_contentTextOperationID = 0;

  [(TPSKVOManager *)self->_KVOManager removeAllKVOObjects];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:self];

  v6.receiver = self;
  v6.super_class = TPSBaseTipCollectionViewCell;
  [(TPSBaseTipCollectionViewCell *)&v6 dealloc];
}

- (void)commonInit
{
  self->_hasBodyContent = 1;
  self->_imageParallaxMultiplier = 1.0;
  self->_heroAssetHorizontalMargin = 0.0;
}

- (TPSBaseTipCollectionViewCell)initWithFrame:(CGRect)a3
{
  v47.receiver = self;
  v47.super_class = TPSBaseTipCollectionViewCell;
  v3 = [(TPSBaseTipCollectionViewCell *)&v47 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TPSBaseTipCollectionViewCell *)v3 commonInit];
    v5 = [[TPSKVOManager alloc] initWithObserver:v4];
    KVOManager = v4->_KVOManager;
    v4->_KVOManager = v5;

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v4 selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

    v8 = [(TPSBaseTipCollectionViewCell *)v4 contentView];
    [v8 setClipsToBounds:1];
    v9 = *&UIEdgeInsetsZero.bottom;
    *&v4->_contentSafeAreaInsets.top = *&UIEdgeInsetsZero.top;
    *&v4->_contentSafeAreaInsets.bottom = v9;
    v4->_contentFinishedLoading = 0;
    v10 = objc_alloc_init(TPSVideoAssetView);
    heroAssetView = v4->_heroAssetView;
    v4->_heroAssetView = v10;

    [(TPSVideoAssetView *)v4->_heroAssetView setVideoDelegate:v4];
    [(TPSVideoAssetView *)v4->_heroAssetView setDelegate:v4];
    [(TPSVideoAssetView *)v4->_heroAssetView setTranslatesAutoresizingMaskIntoConstraints:0];
    if ((+[TPSCommonDefines isPhoneUI]& 1) == 0)
    {
      [(TPSVideoAssetView *)v4->_heroAssetView setAspectFillAsset:1];
    }

    [(TPSBaseTipCollectionViewCell *)v4 updateAssetViewBackground];
    v12 = objc_alloc_init(UILabel);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v12;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_titleLabel setOpaque:1];
    [(UILabel *)v4->_titleLabel setTextAlignment:4];
    v14 = +[UIColor clearColor];
    [(UILabel *)v4->_titleLabel setBackgroundColor:v14];

    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(UILabel *)v4->_titleLabel setLineBreakMode:0];
    v15 = [(TPSBaseTipCollectionViewCell *)v4 titleFont];
    [(UILabel *)v4->_titleLabel setFont:v15];

    [(UILabel *)v4->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v16 = +[TPSAppearance defaultLabelColor];
    [(UILabel *)v4->_titleLabel setTextColor:v16];

    [(UILabel *)v4->_titleLabel setLineBreakStrategy:0];
    v17 = objc_alloc_init(UIScrollView);
    contentScrollView = v4->_contentScrollView;
    v4->_contentScrollView = v17;

    v19 = +[UIColor clearColor];
    [(UIScrollView *)v4->_contentScrollView setBackgroundColor:v19];

    [(UIScrollView *)v4->_contentScrollView setContentInsetAdjustmentBehavior:3];
    [(UIScrollView *)v4->_contentScrollView setDirectionalLockEnabled:1];
    [(UIScrollView *)v4->_contentScrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v4->_contentScrollView setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 addSubview:v4->_contentScrollView];
    [(UIScrollView *)v4->_contentScrollView addSubview:v4->_heroAssetView];
    [(UIScrollView *)v4->_contentScrollView addSubview:v4->_titleLabel];
    [(TPSKVOManager *)v4->_KVOManager addKVOObject:v4->_contentScrollView forKeyPath:@"contentSize" options:3 context:"contentLayoutChanged:userInfo:"];
    [(TPSKVOManager *)v4->_KVOManager addKVOObject:v4->_contentScrollView forKeyPath:@"contentOffset" options:3 context:"contentLayoutChanged:userInfo:"];
    v20 = [(UIScrollView *)v4->_contentScrollView topAnchor];
    v21 = [v8 topAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    [v22 setActive:1];

    v23 = [(UIScrollView *)v4->_contentScrollView leadingAnchor];
    v24 = [v8 leadingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    [v25 setActive:1];

    v26 = [(UIScrollView *)v4->_contentScrollView trailingAnchor];
    v27 = [v8 trailingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    [v28 setActive:1];

    v29 = [(UIScrollView *)v4->_contentScrollView bottomAnchor];
    v30 = [v8 bottomAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    [v31 setActive:1];

    if (v4->_hasBodyContent)
    {
      v32 = objc_alloc_init(TPSTipContentLabel);
      contentLabel = v4->_contentLabel;
      v4->_contentLabel = v32;

      [(TPSTipContentLabel *)v4->_contentLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(TPSTipContentLabel *)v4->_contentLabel setAdjustsFontForContentSizeCategory:1];
      v34 = +[TPSAppearance defaultLabelColor];
      [(TPSTipContentLabel *)v4->_contentLabel setTextColor:v34];

      v35 = +[TPSAppearance defaultTextLabelFont];
      [(TPSTipContentLabel *)v4->_contentLabel setFont:v35];

      v36 = +[UIColor clearColor];
      [(TPSTipContentLabel *)v4->_contentLabel setBackgroundColor:v36];

      [(TPSTipContentLabel *)v4->_contentLabel setNumberOfLines:0];
      [(TPSTipContentLabel *)v4->_contentLabel setLineBreakMode:0];
      v37 = +[TPSAppearance defaultLabelColor];
      [(TPSTipContentLabel *)v4->_contentLabel setTextColor:v37];

      [(UIScrollView *)v4->_contentScrollView addSubview:v4->_contentLabel];
      v38 = objc_alloc_init(TPSTipContentTextView);
      contentTextView = v4->_contentTextView;
      v4->_contentTextView = v38;

      [(TPSTipContentTextView *)v4->_contentTextView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(TPSTipContentTextView *)v4->_contentTextView setScrollEnabled:0];
      [(TPSTipContentTextView *)v4->_contentTextView _setInteractiveTextSelectionDisabled:1];
      v40 = +[UIColor clearColor];
      [(TPSTipContentTextView *)v4->_contentTextView setBackgroundColor:v40];

      [(TPSTipContentTextView *)v4->_contentTextView setEditable:0];
      v41 = +[TPSAppearance defaultTextLabelFont];
      [(TPSTipContentTextView *)v4->_contentTextView setFont:v41];

      [(TPSTipContentTextView *)v4->_contentTextView setDataDetectorTypes:0];
      v42 = [(TPSTipContentTextView *)v4->_contentTextView textContainer];
      [v42 setHeightTracksTextView:1];

      [(TPSTipContentTextView *)v4->_contentTextView setDelegate:v4];
      [(TPSTipContentTextView *)v4->_contentTextView setOpaque:1];
      [(TPSTipContentTextView *)v4->_contentTextView setHidden:1];
      [(TPSTipContentTextView *)v4->_contentTextView setTextContainerInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
      v43 = [(TPSTipContentTextView *)v4->_contentTextView textContainer];
      [v43 setLineFragmentPadding:0.0];

      [(UIScrollView *)v4->_contentScrollView addSubview:v4->_contentTextView];
    }
  }

  if (+[TPSCommonDefines isInternalBuild])
  {
    [(UIScrollView *)v4->_contentScrollView setUserInteractionEnabled:1];
    v44 = [[UITapGestureRecognizer alloc] initWithTarget:v4 action:"handleTripleTapInternalGesture:"];
    [v44 setNumberOfTapsRequired:3];
    [(TPSTipContentLabel *)v4->_contentLabel setUserInteractionEnabled:1];
    [(TPSTipContentLabel *)v4->_contentLabel addGestureRecognizer:v44];
    v45 = [[UITapGestureRecognizer alloc] initWithTarget:v4 action:"handleTripleTapInternalGesture:"];
    [v45 setNumberOfTapsRequired:3];
    [(TPSTipContentTextView *)v4->_contentTextView setUserInteractionEnabled:1];
    [(TPSTipContentTextView *)v4->_contentTextView addGestureRecognizer:v45];
  }

  return v4;
}

- (void)prepareForReuse
{
  [(TPSBaseTipCollectionViewCell *)self resetVideoPlayer];
  [(TPSBaseTipCollectionViewCell *)self setParallaxOffset:CGPointZero.x, CGPointZero.y];
  v3 = +[TPSAppearance defaultTextLabelFont];
  [(TPSTipContentLabel *)self->_contentLabel setFont:v3];

  v4.receiver = self;
  v4.super_class = TPSBaseTipCollectionViewCell;
  [(TPSBaseTipCollectionViewCell *)&v4 prepareForReuse];
}

- (void)scrollToTop
{
  contentScrollView = self->_contentScrollView;
  if (contentScrollView && [(UIScrollView *)contentScrollView contentInsetAdjustmentBehavior]!= 2)
  {
    [(TPSBaseTipCollectionViewCell *)self contentSafeAreaInsets];
    v5 = self->_contentScrollView;

    [(UIScrollView *)v5 setContentOffset:0.0, -v4];
  }
}

- (void)setContentSafeAreaInsets:(UIEdgeInsets)a3
{
  self->_contentSafeAreaInsets = a3;
  if (a3.bottom == 0.0)
  {
    v3 = -30.0 - self->_additionalBottomOffset;
  }

  else
  {
    v3 = -20.0 - a3.bottom;
  }

  if (self->_bottomPadding != v3)
  {
    self->_bottomPadding = v3;
    [(TPSBaseTipCollectionViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  [(TPSTipContentTextView *)self->_contentTextView setTipID:0];
  [(TPSTipContentLabel *)self->_contentLabel setTipID:0];
  [(TPSTipContentLabel *)self->_contentLabel setAttributedText:0];
  [(TPSTipContentTextView *)self->_contentTextView setAttributedText:0];
  v4 = [(TPSBaseTipCollectionViewCell *)self appController];
  v5 = [(TPSBaseTipCollectionViewCell *)self tip];
  v6 = [v5 identifier];
  [v4 updateAttributedString:0 forIdentifier:v6];

  [(TPSBaseTipCollectionViewCell *)self updateFonts];
  [(TPSBaseTipCollectionViewCell *)self updateContentLabel];
  [(TPSBaseTipCollectionViewCell *)self updateButtonFonts];

  [(TPSBaseTipCollectionViewCell *)self setNeedsUpdateConstraints];
}

- (void)setParallaxOffset:(CGPoint)a3
{
  if (self->_parallaxOffset.x != a3.x || self->_parallaxOffset.y != a3.y)
  {
    self->_parallaxOffset = a3;
    [(NSLayoutConstraint *)self->_assetViewLayoutGuideCenterXConstraint setConstant:a3.x * self->_imageParallaxMultiplier];
  }
}

- (BOOL)setTip:(id)a3 withCellAppearance:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(TPSTip *)self->_tip isEqual:v7];
  [v8 size];
  v11 = v10;
  v13 = v12;
  width = self->_cacheCellSize.width;
  height = self->_cacheCellSize.height;
  objc_storeStrong(&self->_cellAppearance, a4);
  objc_storeStrong(&self->_tip, a3);
  if (([(TPSTip *)self->_tip hasImage]& 1) != 0)
  {
    v16 = [(TPSVideoAssetView *)self->_heroAssetView imageView];
    v17 = [v16 image];
    [(TPSBaseTipCollectionViewCell *)self setHeroImageUpdated:v17 != 0];
  }

  else
  {
    [(TPSBaseTipCollectionViewCell *)self setHeroImageUpdated:1];
  }

  [(TPSBaseTipCollectionViewCell *)self setBodyContentProcessingCount:0];
  v18 = [(TPSTip *)self->_tip bodyText];

  if (!v18)
  {
    v44 = v8;
    v19 = v7;
    v20 = [(TPSBaseTipCollectionViewCell *)self appController];
    v21 = [(TPSBaseTipCollectionViewCell *)self tip];
    v22 = [v21 identifier];
    v23 = [v20 attributedStringForIdentifier:v22];

    if (!v23)
    {
      v24 = [(TPSTip *)self->_tip bodyContent];

      if (v24)
      {
        [(TPSBaseTipCollectionViewCell *)self setBodyContentProcessingCount:1];
      }
    }

    v7 = v19;
    v8 = v44;
  }

  [(TPSBaseTipCollectionViewCell *)self updateAssetsConfiguration];
  [(TPSBaseTipCollectionViewCell *)self updateVideoPath];
  [(TPSBaseTipCollectionViewCell *)self updateAssetViewBackground];
  if (v11 == width)
  {
    v25 = v9 ^ 1;
  }

  else
  {
    v25 = 1;
  }

  if (v13 == height)
  {
    v26 = v25;
  }

  else
  {
    v26 = 1;
  }

  if (v26)
  {
    if ((v9 & 1) == 0)
    {
      [(TPSBaseTipCollectionViewCell *)self setVideoHasDisplayed:0];
    }

    [(TPSBaseTipCollectionViewCell *)self scrollToTop];
    v27 = [(TPSTip *)self->_tip title];
    [(UILabel *)self->_titleLabel setText:v27];

    self->_hasNotifiedDelegateContentLoaded = 0;
    self->_contentFinishedLoading = 0;
    v28 = +[NSDate date];
    animationInitialLoadTime = self->_animationInitialLoadTime;
    self->_animationInitialLoadTime = v28;

    [(NSBlockOperation *)self->_contentTextOperation cancel];
    contentTextOperation = self->_contentTextOperation;
    self->_contentTextOperation = 0;

    contentTextOperationID = self->_contentTextOperationID;
    self->_contentTextOperationID = 0;

    [v8 size];
    self->_cacheCellSize.width = v32;
    self->_cacheCellSize.height = v33;
    [(TPSBaseTipCollectionViewCell *)self updateAssetIfAllowed];
    if ((v9 & 1) == 0 && self->_hasBodyContent)
    {
      [(TPSTipContentTextView *)self->_contentTextView setTipID:0];
      [(TPSTipContentTextView *)self->_contentTextView setHidden:1];
      [(TPSTipContentTextView *)self->_contentTextView setAttributedText:0];
      [(UIButton *)self->_actionButton setHidden:1];
      -[TPSBaseTipCollectionViewCell setNeedsTextView:](self, "setNeedsTextView:", [v7 containsLinks]);
      v34 = [(TPSBaseTipCollectionViewCell *)self tip];
      v35 = [v34 bodyText];

      if (v35)
      {
        [(TPSBaseTipCollectionViewCell *)self updateContentLabel];
      }

      else
      {
        v36 = [(TPSBaseTipCollectionViewCell *)self contentLabel];
        [v36 setTipID:0];

        v37 = [(TPSBaseTipCollectionViewCell *)self contentLabel];
        [v37 setText:0];

        v38 = [(TPSBaseTipCollectionViewCell *)self contentLabel];
        [v38 setAttributedText:0];

        v39 = [(TPSBaseTipCollectionViewCell *)self contentLabel];
        [v39 setHidden:1];
      }
    }
  }

  if ([(TPSBaseTipCollectionViewCell *)self bodyContentProcessingCount])
  {
    v40 = 0;
  }

  else
  {
    v40 = [(TPSBaseTipCollectionViewCell *)self heroImageUpdated];
  }

  [(TPSBaseTipCollectionViewCell *)self setImageLoadingFinished:v40];
  if (([(TPSTip *)self->_tip hasVideo]& 1) == 0)
  {
    [(TPSBaseTipCollectionViewCell *)self setVideoLoadingFinished:1];
    if (!v26)
    {
      goto LABEL_28;
    }

LABEL_30:
    v42 = [(TPSTip *)self->_tip hasVideo];
    goto LABEL_31;
  }

  v41 = [(TPSVideoAssetView *)self->_heroAssetView downloadedVideoPath];
  [(TPSBaseTipCollectionViewCell *)self setVideoLoadingFinished:v41 != 0];

  if (v26)
  {
    goto LABEL_30;
  }

LABEL_28:
  v42 = 0;
LABEL_31:
  [(TPSBaseTipCollectionViewCell *)self setShouldLogAnimationFinished:v42];

  return v26;
}

- (id)imagePath
{
  v2 = [(TPSBaseTipCollectionViewCell *)self assetsConfiguration];
  v3 = [TPSContentURLController assetPathFromAssetConfiguration:v2 type:0];

  return v3;
}

- (void)updateVideoPath
{
  v3 = [(TPSBaseTipCollectionViewCell *)self assetsConfiguration];
  v4 = [v3 cacheIdentifierForType:1];
  [(TPSVideoAssetView *)self->_heroAssetView setCacheVideoIdentifier:v4];

  v6 = [(TPSBaseTipCollectionViewCell *)self assetsConfiguration];
  v5 = [TPSContentURLController assetPathFromAssetConfiguration:v6 type:1];
  [(TPSVideoAssetView *)self->_heroAssetView setVideoPath:v5];
}

- (void)updateAssetViewBackground
{
  v6 = +[TPSAppearance defaultBackgroundColor];
  noImageBackgroundColorOverride = self->_noImageBackgroundColorOverride;
  if (noImageBackgroundColorOverride)
  {
    v4 = noImageBackgroundColorOverride;
  }

  else
  {
    v4 = +[TPSAppearance secondaryBackgroundColor];
  }

  v5 = v4;
  [(TPSVideoAssetView *)self->_heroAssetView setDefaultBackgroundColor:v6];
  [(TPSVideoAssetView *)self->_heroAssetView setNoImageBackgroundColor:v5];
}

- (void)updateAssetIfAllowed
{
  [(TPSVideoAssetView *)self->_heroAssetView cancel];
  [(TPSVideoAssetView *)self->_heroAssetView setImage:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained tipCollectionViewCellCanDisplayAssets:self];

  if ((v4 & 1) == 0)
  {
    v5 = [(TPSBaseTipCollectionViewCell *)self assetsConfiguration];
    v6 = [v5 cacheIdentifierForType:0];

    v7 = [TPSImageAssetController imageFromMemoryCacheForIdentifier:v6];
    if (v7)
    {
    }

    else
    {
      v8 = [TPSImageAssetController dataCacheForIdentifier:v6];

      if (!v8)
      {
        return;
      }
    }
  }

  [(TPSBaseTipCollectionViewCell *)self updateImageView];
}

- (void)updateImageView
{
  if (![(TPSBaseTipCollectionViewCell *)self videoHasDisplayed])
  {
    v5 = [(TPSBaseTipCollectionViewCell *)self imagePath];
    v3 = [(TPSBaseTipCollectionViewCell *)self assetsConfiguration];
    v4 = [v3 cacheIdentifierForType:0];

    [(TPSVideoAssetView *)self->_heroAssetView fetchImageWithIdentifier:v4 path:v5];
  }
}

- (void)updateAssetsConfiguration
{
  v3 = [(TPSTip *)self->_tip isTip];
  cellAppearance = self->_cellAppearance;
  if (v3)
  {
    v5 = [(TPSTipCellAppearance *)cellAppearance isCompactLayout];
  }

  else
  {
    v5 = [(TPSTipCellAppearance *)cellAppearance isBookendsCompactLayout];
  }

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v15 = [(TPSBaseTipCollectionViewCell *)self tip];
  v7 = +[TPSUIAppController sharedInstance];
  v8 = [v15 fullContentAssets];
  v9 = [v15 language];
  v10 = [(TPSBaseTipCollectionViewCell *)self cellAppearance];
  v11 = [v10 userInterfaceStyle];
  v12 = [(TPSBaseTipCollectionViewCell *)self tip];
  v13 = [v12 assetFileInfoManager];
  v14 = [v7 assetConfigurationForAssets:v8 language:v9 sizeClass:v6 style:v11 assetFileInfoManager:v13];

  [(TPSBaseTipCollectionViewCell *)self setAssetsConfiguration:v14];
}

- (void)updateFonts
{
  v3 = +[UIApplication sharedApplication];
  category = [v3 preferredContentSizeCategory];

  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(category);
  v5 = &kTPSHyphenationFactorAccessibility;
  if (!IsAccessibilityCategory)
  {
    v5 = &kTPSHyphenationFactorDefault;
  }

  self->_labelHyphenationFactor = *v5;
  [(TPSBaseTipCollectionViewCell *)self labelHyphenationFactor];
  [(UILabel *)self->_titleLabel _setHyphenationFactor:?];
}

- (void)updateLoadingStatus
{
  if (!self->_hasNotifiedDelegateContentLoaded)
  {
    if (self->_imageLoadingFinished && self->_videoLoadingFinished)
    {
      self->_contentFinishedLoading = 1;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained cellContentLoaded:self];

      self->_hasNotifiedDelegateContentLoaded = 1;
    }

    [(TPSBaseTipCollectionViewCell *)self updateHeroHeightConstraint];
  }
}

- (void)contentLayoutChanged:(id)a3 userInfo:(id)a4
{
  v5 = a4;
  v6 = [v5 objectForKeyedSubscript:NSKeyValueChangeOldKey];
  v7 = [v5 objectForKeyedSubscript:NSKeyValueChangeNewKey];

  if (v6 != v7)
  {
    v8 = [(TPSBaseTipCollectionViewCell *)self delegate];
    [v8 tipCollectionViewCellContentLayoutChanged:self];
  }
}

- (void)loadContentIfNeeded
{
  v3 = [(TPSVideoAssetView *)self->_heroAssetView image];

  if (!v3)
  {
    [(TPSBaseTipCollectionViewCell *)self updateImageView];
  }

  [(TPSBaseTipCollectionViewCell *)self playVideo];
}

- (void)logAnimationFinished
{
  if ([(TPSBaseTipCollectionViewCell *)self shouldLogAnimationFinished]&& self->_contentFinishedLoading)
  {
    v12 = [(TPSBaseTipCollectionViewCell *)self tip];
    v3 = [v12 identifier];
    v4 = [(TPSBaseTipCollectionViewCell *)self videoHasFinished];
    v5 = [(TPSBaseTipCollectionViewCell *)self animationSource];
    v6 = [(TPSBaseTipCollectionViewCell *)self tip];
    v7 = [v6 collectionIdentifiers];
    v8 = [v7 firstObject];
    v9 = [(TPSBaseTipCollectionViewCell *)self tip];
    v10 = [v9 correlationID];
    v11 = [TPSAnalyticsEventAnimationFinished eventWithTipID:v3 animationFinished:v4 animationSource:v5 collectionID:v8 correlationID:v10];
    [v11 log];

    [(TPSBaseTipCollectionViewCell *)self setShouldLogAnimationFinished:0];
  }
}

- (void)updateAttributedStringWithCache
{
  v3 = [(TPSBaseTipCollectionViewCell *)self appController];
  v4 = [(TPSBaseTipCollectionViewCell *)self tip];
  v5 = [v4 identifier];
  v15 = [v3 attributedStringForIdentifier:v5];

  if (v15)
  {
    v6 = [(TPSBaseTipCollectionViewCell *)self uniqueIdentifierForCurrentTip];
    if ([(TPSTip *)self->_tip containsLinks])
    {
      p_contentTextView = &self->_contentTextView;
      v8 = [(TPSTipContentTextView *)self->_contentTextView tipID];
      v9 = [v8 isEqualToString:v6];

      if ((v9 & 1) == 0)
      {
        v10 = [(TPSBaseTipCollectionViewCell *)self contentTextView];
        [v10 setAttributedText:v15];

        [*p_contentTextView setTipID:v6];
      }

      if (([*p_contentTextView isHidden] & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      p_contentTextView = &self->_contentLabel;
      v11 = [(TPSTipContentLabel *)self->_contentLabel tipID];
      v12 = [v11 isEqualToString:v6];

      if ((v12 & 1) == 0)
      {
        [*p_contentTextView setAttributedText:v15];
        [*p_contentTextView setTipID:v6];
      }

      if (![*p_contentTextView isHidden])
      {
        goto LABEL_12;
      }
    }

    v13 = *p_contentTextView;
    if (v13)
    {
      v14 = v13;
      [(TPSBaseTipCollectionViewCell *)self setNeedsUpdateConstraints];
      [v14 setHidden:0];
      [v14 setAlpha:1.0];
    }

LABEL_12:
  }

  [(TPSBaseTipCollectionViewCell *)self updateActionButton];
  [(TPSBaseTipCollectionViewCell *)self updateImageReadyStatus];
}

- (void)updateActionButton
{
  if (self->_hasBodyContent)
  {
    v3 = [(TPSTip *)self->_tip actions];
    v4 = [v3 count];

    actionButton = self->_actionButton;
    if (v4)
    {
      if (!actionButton)
      {
        v6 = [UIButton buttonWithType:0];
        v7 = self->_actionButton;
        self->_actionButton = v6;

        [(UIButton *)self->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UIButton *)self->_actionButton addTarget:self action:"actionButtonTapped" forControlEvents:64];
        actionButton = self->_actionButton;
      }

      if ([(UIButton *)actionButton isHidden])
      {
        [(UIButton *)self->_actionButton setHidden:0];
      }

      [(UIButton *)self->_actionButton setEnabled:!self->_isSharedVariant];
      v8 = [(UIButton *)self->_actionButton configuration];
      v9 = [v8 title];
      v10 = [(TPSTip *)self->_tip actions];
      v11 = [v10 firstObject];
      v12 = [v11 text];
      v13 = [v9 isEqualToString:v12];

      if (v13)
      {
        [(TPSBaseTipCollectionViewCell *)self updateButtonFonts];
      }

      else
      {
        [(TPSBaseTipCollectionViewCell *)self setupActionButtonConfiguration];
      }

      v15 = [(UIButton *)self->_actionButton superview];

      v16 = &selRef_collectionView_previewForDismissingContextMenuWithConfiguration_;
      if (!v15)
      {
        [(UIScrollView *)self->_contentScrollView addSubview:self->_actionButton];
        v17 = [(UIScrollView *)self->_contentScrollView frameLayoutGuide];
        v18 = [(UIButton *)self->_actionButton centerXAnchor];
        v19 = [v17 centerXAnchor];
        v20 = [v18 constraintEqualToAnchor:v19];
        [v20 setActive:1];

        v21 = [(UIButton *)self->_actionButton widthAnchor];
        v22 = [v17 widthAnchor];
        v23 = [v21 constraintLessThanOrEqualToAnchor:v22 multiplier:1.0 constant:0.0];
        actionButtonWidthConstraint = self->_actionButtonWidthConstraint;
        self->_actionButtonWidthConstraint = v23;

        LODWORD(v25) = 1148846080;
        [(UIButton *)self->_actionButton setContentCompressionResistancePriority:1 forAxis:v25];
        v26 = [(UIButton *)self->_actionButton topAnchor];
        v27 = [(TPSTipContentLabel *)self->_contentLabel bottomAnchor];
        v28 = [v26 constraintEqualToAnchor:v27 constant:16.0];
        actionButtonTextLabelTopConstraint = self->_actionButtonTextLabelTopConstraint;
        self->_actionButtonTextLabelTopConstraint = v28;

        LODWORD(v30) = 1148829696;
        [(NSLayoutConstraint *)self->_actionButtonTextLabelTopConstraint setPriority:v30];
        v31 = [(UIButton *)self->_actionButton bottomAnchor];
        v16 = &selRef_collectionView_previewForDismissingContextMenuWithConfiguration_;
        v32 = [(UIScrollView *)self->_contentScrollView bottomAnchor];
        v33 = [v31 constraintEqualToAnchor:v32 constant:self->_bottomPadding];
        actionButtonBottomConstraint = self->_actionButtonBottomConstraint;
        self->_actionButtonBottomConstraint = v33;

        LODWORD(v35) = 1148846080;
        [(NSLayoutConstraint *)self->_actionButtonBottomConstraint setPriority:v35];
      }

      if (self->_contentTextView && !self->_actionButtonTextViewTopConstraint)
      {
        v36 = [(UIButton *)self->_actionButton topAnchor];
        v37 = [(TPSTipContentTextView *)self->_contentTextView bottomAnchor];
        v38 = [v36 constraintEqualToAnchor:v37 constant:16.0];
        actionButtonTextViewTopConstraint = self->_actionButtonTextViewTopConstraint;
        self->_actionButtonTextViewTopConstraint = v38;

        LODWORD(v40) = 1148846080;
        [(NSLayoutConstraint *)self->_actionButtonTextViewTopConstraint setPriority:v40];
      }

      [(NSLayoutConstraint *)self->_actionButtonWidthConstraint setActive:1];
      v41 = [(TPSBaseTipCollectionViewCell *)self tip];
      v42 = [v41 footnoteContent];
      if (v42)
      {
        v43 = 0;
      }

      else
      {
        v43 = !self->_isSharedVariant;
      }

      [(NSLayoutConstraint *)self->_actionButtonBottomConstraint setActive:v43];

      [(NSLayoutConstraint *)self->_actionButtonTextLabelTopConstraint setActive:[(TPSTipContentLabel *)self->_contentLabel isHidden]^ 1];
      [(NSLayoutConstraint *)self->_actionButtonTextViewTopConstraint setActive:[(NSLayoutConstraint *)self->_actionButtonTextLabelTopConstraint isActive]^ 1];
      v44 = *(&self->super.super.super.super.super.isa + *(v16 + 145));

      [v44 setNeedsLayout];
    }

    else
    {
      [(UIButton *)actionButton setHidden:1];
      [(NSLayoutConstraint *)self->_actionButtonTextLabelTopConstraint setActive:0];
      [(NSLayoutConstraint *)self->_actionButtonTextViewTopConstraint setActive:0];
      [(NSLayoutConstraint *)self->_actionButtonWidthConstraint setActive:0];
      v14 = self->_actionButtonBottomConstraint;

      [(NSLayoutConstraint *)v14 setActive:0];
    }
  }
}

- (void)actionButtonTapped
{
  v3 = [(TPSTip *)self->_tip actions];
  v5 = [v3 firstObject];

  v4 = [v5 URL];
  [(TPSBaseTipCollectionViewCell *)self handleTipsURL:v4];
}

- (BOOL)handleTipsURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[TPSLogger default];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Links tapped inside content %@", &v19, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained tipCollectionViewCell:self linkTappedForURL:v4];

    v7 = [TPSURLActionComponents componentsWithURL:v4];
    v8 = [v7 actionType];
    v9 = [v7 URL];
    v10 = [v7 bundleID];
    v11 = v10;
    if (v8 <= 4)
    {
      if ((v8 - 2) < 3)
      {
        if (v9)
        {
          v13 = +[TPSLogger default];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v19 = 138412290;
            v20 = v9;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Open url with %@", &v19, 0xCu);
          }

          [(TPSBaseTipCollectionViewCell *)self handleURL:v9];
        }

        goto LABEL_29;
      }

      if (v8 == 1)
      {
        if (!v10)
        {
          goto LABEL_29;
        }

        v14 = +[LSApplicationWorkspace defaultWorkspace];
        [v14 openApplicationWithBundleID:v11];
LABEL_28:

        goto LABEL_29;
      }
    }

    else if (v8 > 8)
    {
      if (v8 == 9)
      {
        v12 = objc_loadWeakRetained(&self->_delegate);
        v15 = [v7 bundleID];
        v16 = [v7 identifier];
        [v12 tipCollectionViewCell:self showUserGuideWithIdentifier:v15 topicId:v16];

        goto LABEL_24;
      }

      if (v8 == 11)
      {
        v12 = objc_loadWeakRetained(&self->_delegate);
        [v12 tipCollectionViewCell:self showTryItModeForURL:v4];
        goto LABEL_24;
      }
    }

    else
    {
      if ((v8 - 5) < 2)
      {
        if (v9)
        {
          v12 = objc_loadWeakRetained(&self->_delegate);
          [v12 tipCollectionViewCell:self showSafariViewForURL:v9];
LABEL_24:
        }

LABEL_29:

        goto LABEL_30;
      }

      if (v8 == 7)
      {
        if (v9)
        {
          v12 = objc_loadWeakRetained(&self->_delegate);
          [v12 tipCollectionViewCell:self showVideoForURL:v9];
          goto LABEL_24;
        }

        goto LABEL_29;
      }
    }

    v17 = +[TPSLogger default];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Open safari for URL %@", &v19, 0xCu);
    }

    v14 = +[UIApplication sharedApplication];
    [v14 openURL:v4 options:&__NSDictionary0__struct completionHandler:0];
    goto LABEL_28;
  }

LABEL_30:

  return 0;
}

- (void)setupActionButtonConfiguration
{
  v3 = [(TPSTip *)self->_tip actions];
  v15 = [v3 firstObject];

  if ([(TPSTip *)self->_tip isChecklistTip]&& ([(TPSTip *)self->_tip isCompleted]& 1) == 0)
  {
    actionButton = self->_actionButton;
    v12 = [(TPSTip *)self->_tip actions];
    v13 = [v12 firstObject];
    v14 = [v13 text];
    [(UIButton *)actionButton configureWithTitle:v14];
  }

  else if ([v15 type] == 11)
  {
    v4 = self->_actionButton;
    v5 = [v15 text];
    [(UIButton *)v4 configureWithTitle:v5];

    [(UIButton *)self->_actionButton configureImageWithSymbolName:@"hand.draw.fill" padding:2.0];
    [(UIButton *)self->_actionButton configureMediumFontStyle];
  }

  else
  {
    v6 = +[UIButtonConfiguration borderedButtonConfiguration];
    v7 = +[UIColor systemBlueColor];
    [v6 setBaseForegroundColor:v7];

    v8 = +[UIColor secondarySystemBackgroundColor];
    [v6 setBaseBackgroundColor:v8];

    v9 = self->_actionButton;
    v10 = [v15 text];
    [(UIButton *)v9 configureWithTitle:v10 preferredConfiguration:v6];
  }
}

- (id)uniqueIdentifierForCurrentTip
{
  v3 = [(TPSBaseTipCollectionViewCell *)self tip];
  v4 = [v3 identifier];

  v5 = [(TPSBaseTipCollectionViewCell *)self traitCollection];
  v6 = [v5 userInterfaceStyle];

  if (v6 == 2)
  {
    v7 = [v4 stringByAppendingString:@"-Dark"];

    v4 = v7;
  }

  return v4;
}

- (void)removeContentParser
{
  v3 = [(TPSBaseTipCollectionViewCell *)self contentParser];
  [v3 setDelegate:0];

  v4 = [(TPSBaseTipCollectionViewCell *)self contentParser];
  [v4 cancelAssetFetches];

  [(TPSBaseTipCollectionViewCell *)self setContentParser:0];
}

- (void)updateContentLabel
{
  if (self->_hasBodyContent)
  {
    v3 = [(TPSBaseTipCollectionViewCell *)self appController];
    v4 = [(TPSBaseTipCollectionViewCell *)self tip];
    v5 = [v4 identifier];
    v6 = [v3 attributedStringForIdentifier:v5];

    if (v6)
    {
      [(TPSBaseTipCollectionViewCell *)self updateAttributedStringWithCache];
    }

    else
    {
      v7 = [(TPSBaseTipCollectionViewCell *)self uniqueIdentifierForCurrentTip];
      v8 = [(TPSBaseTipCollectionViewCell *)self tip];
      v9 = [v8 bodyContent];

      if (v9)
      {
        if (([v7 isEqualToString:self->_contentTextOperationID] & 1) == 0)
        {
          contentTextOperation = self->_contentTextOperation;
          if (contentTextOperation)
          {
            [(NSBlockOperation *)contentTextOperation cancel];
            v11 = self->_contentTextOperation;
            self->_contentTextOperation = 0;
          }

          v12 = [(TPSBaseTipCollectionViewCell *)self tip];
          v13 = [v12 containsLinks];

          if (v13)
          {
            v14 = [(TPSBaseTipCollectionViewCell *)self contentTextView];
            [(TPSBaseTipCollectionViewCell *)self setNeedsUpdateConstraints];
          }

          v15 = objc_alloc_init(NSBlockOperation);
          v16 = self->_contentTextOperation;
          self->_contentTextOperation = v15;

          objc_storeStrong(&self->_contentTextOperationID, v7);
          objc_initWeak(&location, self);
          objc_initWeak(&from, v7);
          v39[0] = NSFontAttributeName;
          v17 = +[TPSAppearance defaultTextLabelFont];
          v40[0] = v17;
          v39[1] = NSForegroundColorAttributeName;
          v18 = +[TPSAppearance defaultLabelColor];
          v40[1] = v18;
          v19 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];

          [(TPSBaseTipCollectionViewCell *)self removeContentParser];
          v20 = objc_alloc_init(TPSConstellationContentParser);
          [(TPSBaseTipCollectionViewCell *)self setContentParser:v20];

          v21 = [(TPSBaseTipCollectionViewCell *)self traitCollection];
          v22 = [(TPSBaseTipCollectionViewCell *)self contentParser];
          [v22 setTraitCollection:v21];

          v23 = self->_contentTextOperation;
          v30 = _NSConcreteStackBlock;
          v31 = 3221225472;
          v32 = sub_100005924;
          v33 = &unk_1000A2E80;
          objc_copyWeak(&v35, &location);
          v24 = v19;
          v34 = v24;
          objc_copyWeak(&v36, &from);
          [(NSBlockOperation *)v23 addExecutionBlock:&v30];
          v25 = [TPSBaseTipCollectionViewCell attributedStringOperationQueue:v30];
          [v25 addOperation:self->_contentTextOperation];

          objc_destroyWeak(&v36);
          objc_destroyWeak(&v35);

          objc_destroyWeak(&from);
          objc_destroyWeak(&location);
        }
      }

      else
      {
        v26 = [(TPSTip *)self->_tip bodyText];

        if (v26)
        {
          v27 = [(TPSTipContentLabel *)self->_contentLabel tipID];
          v28 = [v27 isEqualToString:v7];

          if ((v28 & 1) == 0)
          {
            [(TPSTipContentLabel *)self->_contentLabel setTipID:v7];
            v29 = [(TPSTip *)self->_tip bodyText];
            [(TPSTipContentLabel *)self->_contentLabel setText:v29];
          }

          if ([(TPSTipContentLabel *)self->_contentLabel isHidden])
          {
            [(TPSTipContentLabel *)self->_contentLabel setHidden:0];
          }

          [(TPSBaseTipCollectionViewCell *)self updateActionButton];
        }
      }
    }
  }
}

- (void)updateButtonFonts
{
  v3 = [(TPSTip *)self->_tip actions];
  v4 = [v3 firstObject];

  if ([v4 type] == 11)
  {
    [(UIButton *)self->_actionButton configureMediumFontStyle];
  }

  [(UIButton *)self->_actionButton onConfigurationUpdated];
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TPSBaseTipCollectionViewCell;
  [(TPSBaseTipCollectionViewCell *)&v7 applyLayoutAttributes:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 parallaxOffset];
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  [(TPSBaseTipCollectionViewCell *)self setParallaxOffset:x, y];
}

- (void)updateConstraints
{
  [(TPSTipCellAppearance *)self->_cellAppearance contentSidePadding];
  [(NSLayoutConstraint *)self->_actionButtonWidthConstraint setConstant:v3 * -2.0];
  if (![(TPSBaseTipCollectionViewCell *)self isSharedVariant])
  {
    [(NSLayoutConstraint *)self->_actionButtonBottomConstraint setConstant:self->_bottomPadding];
  }

  [(TPSBaseTipCollectionViewCell *)self updateHeroHeightConstraint];
  v4.receiver = self;
  v4.super_class = TPSBaseTipCollectionViewCell;
  [(TPSBaseTipCollectionViewCell *)&v4 updateConstraints];
}

- (void)updateHeroHeightConstraint
{
  [(TPSTipCellAppearance *)self->_cellAppearance assetHeight];
  v4 = v3;
  if (self->_cellAppearance)
  {
    heroAssetView = self->_heroAssetView;
    if (heroAssetView)
    {
      v6 = [(TPSVideoAssetView *)heroAssetView image];

      if (v6)
      {
        v7 = [(TPSVideoAssetView *)self->_heroAssetView image];
        [v7 size];
        v9 = v8;
        v11 = v10;

        if (v11 > 0.0)
        {
          v12 = v9 / v11;
          if (+[TPSCommonDefines isPhoneUI])
          {
            [(TPSBaseTipCollectionViewCell *)self bounds];
            v13 = 0;
            v4 = (v14 - self->_heroAssetHorizontalMargin) / v12;
          }

          else
          {
            v13 = v12 >= 1.0;
          }

          [(TPSVideoAssetView *)self->_heroAssetView setAspectFillAsset:v13];
        }
      }
    }
  }

  assetViewHeightConstraint = self->_assetViewHeightConstraint;

  [(NSLayoutConstraint *)assetViewHeightConstraint setConstant:v4];
}

- (void)scrubVideoToFirstFrame
{
  [(TPSBaseTipCollectionViewCell *)self logAnimationFinished];
  heroAssetView = self->_heroAssetView;

  [(TPSVideoAssetView *)heroAssetView scrubVideoToFirstFrame];
}

- (void)continuePlayVideo
{
  [(TPSVideoAssetView *)self->_heroAssetView continuePlayVideo];

  [(TPSBaseTipCollectionViewCell *)self setShouldLogAnimationFinished:1];
}

- (void)resetVideoPlayer
{
  [(TPSBaseTipCollectionViewCell *)self setVideoHasDisplayed:0];
  [(TPSVideoAssetView *)self->_heroAssetView resetVideoPlayer];

  [(TPSBaseTipCollectionViewCell *)self logAnimationFinished];
}

- (void)playVideo
{
  [(TPSBaseTipCollectionViewCell *)self setAnimationSource:TPSAnimationSourceOrganic];
  heroAssetView = self->_heroAssetView;

  [(TPSVideoAssetView *)heroAssetView playVideo];
}

- (void)replayVideo
{
  [(TPSBaseTipCollectionViewCell *)self logAnimationFinished];
  [(TPSBaseTipCollectionViewCell *)self setAnimationSource:TPSAnimationSourceOther];
  [(TPSBaseTipCollectionViewCell *)self setShouldLogAnimationFinished:1];
  heroAssetView = self->_heroAssetView;

  [(TPSVideoAssetView *)heroAssetView replayVideo];
}

- (void)replayButtonTapped
{
  [(TPSBaseTipCollectionViewCell *)self setAnimationSource:TPSAnimationSourceReplay];
  [(TPSBaseTipCollectionViewCell *)self setShouldLogAnimationFinished:1];
  [(TPSVideoAssetView *)self->_heroAssetView replayVideo];
  v10 = [(TPSBaseTipCollectionViewCell *)self tip];
  v3 = [v10 identifier];
  v4 = [(TPSBaseTipCollectionViewCell *)self tip];
  v5 = [v4 collectionIdentifiers];
  v6 = [v5 firstObject];
  v7 = [(TPSBaseTipCollectionViewCell *)self tip];
  v8 = [v7 correlationID];
  v9 = [TPSAnalyticsEventReplayButtonTapped eventWithTipID:v3 collectionID:v6 correlationID:v8];
  [v9 log];
}

- (void)loadBodyContentIfNeeded
{
  v10 = [(TPSBaseTipCollectionViewCell *)self tip];
  v3 = [v10 bodyContent];
  if (!v3)
  {
LABEL_4:

    return;
  }

  v4 = v3;
  v5 = [(TPSBaseTipCollectionViewCell *)self contentLabel];
  v6 = [v5 attributedText];
  if ([v6 length])
  {

    goto LABEL_4;
  }

  v7 = [(TPSBaseTipCollectionViewCell *)self contentTextView];
  v8 = [v7 attributedText];
  v9 = [v8 length];

  if (!v9)
  {

    [(TPSBaseTipCollectionViewCell *)self updateContentLabel];
  }
}

- (void)updateAssetPaths
{
  [(TPSBaseTipCollectionViewCell *)self stopVideoPlayer];
  [(TPSBaseTipCollectionViewCell *)self updateAssetsConfiguration];
  [(TPSBaseTipCollectionViewCell *)self updateAssetIfAllowed];
  [(TPSBaseTipCollectionViewCell *)self updateVideoPath];

  [(TPSBaseTipCollectionViewCell *)self updateAssetViewBackground];
}

- (void)updateImageReadyStatus
{
  if (![(TPSBaseTipCollectionViewCell *)self bodyContentProcessingCount]&& [(TPSBaseTipCollectionViewCell *)self heroImageUpdated])
  {
    [(TPSBaseTipCollectionViewCell *)self setImageLoadingFinished:1];

    [(TPSBaseTipCollectionViewCell *)self updateLoadingStatus];
  }
}

- (void)imageAssetViewImageUpdated:(id)a3
{
  if (self->_heroAssetView == a3)
  {
    [(TPSBaseTipCollectionViewCell *)self setHeroImageUpdated:1];
    [(TPSBaseTipCollectionViewCell *)self updateImageReadyStatus];

    [(TPSBaseTipCollectionViewCell *)self setNeedsUpdateConstraints];
  }
}

- (BOOL)videoAssetViewCanDisplayAssets:(id)a3
{
  v3 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v3) = [WeakRetained tipCollectionViewCellCanDisplayAssets:v3];

  return v3;
}

- (void)videoAssetViewUpdateAssetLoadingFinished:(id)a3 error:(id)a4
{
  [(TPSBaseTipCollectionViewCell *)self setVideoLoadingFinished:1];
  [(TPSBaseTipCollectionViewCell *)self updateLoadingStatus];
  if (!a4)
  {
    v9 = [(TPSBaseTipCollectionViewCell *)self tip];
    v6 = [v9 identifier];
    v7 = +[NSDate now];
    [v7 timeIntervalSinceDate:self->_animationInitialLoadTime];
    v8 = [TPSAnalyticsEventAnimationLoadTime eventWithTipID:v6 animationLoadTime:?];
    [v8 log];
  }
}

- (void)constellationContentParserAttributedStringUpdated:(id)a3
{
  v10 = a3;
  v4 = [v10 identifier];
  v5 = [(TPSBaseTipCollectionViewCell *)self tip];
  v6 = [v5 identifier];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = [(TPSBaseTipCollectionViewCell *)self appController];
    v9 = [v10 attributedString];
    [v8 updateAttributedString:v9 forIdentifier:v4];

    [(TPSTipContentTextView *)self->_contentTextView setTipID:0];
    [(TPSTipContentLabel *)self->_contentLabel setTipID:0];
    [(TPSTipContentTextView *)self->_contentTextView setAttributedText:0];
    [(TPSTipContentLabel *)self->_contentLabel setAttributedText:0];
    -[TPSBaseTipCollectionViewCell setBodyContentProcessingCount:](self, "setBodyContentProcessingCount:", [v10 numOfActiveRemoteURLSessions]);
    [(TPSBaseTipCollectionViewCell *)self updateAttributedStringWithCache];
  }
}

- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_isSharedVariant && (-[TPSBaseTipCollectionViewCell appController](self, "appController"), v11 = objc_claimAutoreleasedReturnValue(), -[TPSBaseTipCollectionViewCell tip](self, "tip"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v11 hasLocalVariant:v12], v12, v11, v13))
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100006868;
    v19[3] = &unk_1000A2EA8;
    v19[4] = self;
    v14 = [UIAction actionWithHandler:v19];
    v15 = v10;
  }

  else
  {
    v14 = v10;
    if ([v9 contentType])
    {
      goto LABEL_7;
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000692C;
    v17[3] = &unk_1000A2ED0;
    v17[4] = self;
    v18 = v9;
    v14 = [UIAction actionWithHandler:v17];

    v15 = v18;
  }

LABEL_7:

  return v14;
}

- (void)handleTripleTapInternalGesture:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tipCollectionViewCellHandleTripleTapInternalGesture:self];
}

- (TPSBaseTipCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)cacheCellSize
{
  width = self->_cacheCellSize.width;
  height = self->_cacheCellSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)contentSafeAreaInsets
{
  top = self->_contentSafeAreaInsets.top;
  left = self->_contentSafeAreaInsets.left;
  bottom = self->_contentSafeAreaInsets.bottom;
  right = self->_contentSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGPoint)parallaxOffset
{
  x = self->_parallaxOffset.x;
  y = self->_parallaxOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)handleURL:(id)a3
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  static TipsWorkspace.openSensitive(_:)();
  (*(v4 + 8))(v7, v3);
}

@end