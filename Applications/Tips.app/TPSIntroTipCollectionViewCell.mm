@interface TPSIntroTipCollectionViewCell
- (BOOL)setTip:(id)tip withCellAppearance:(id)appearance;
- (void)commonInit;
- (void)prepareForReuse;
- (void)setContentSafeAreaInsets:(UIEdgeInsets)insets;
- (void)setImageLoadingFinished:(BOOL)finished;
- (void)setLoading:(BOOL)loading;
- (void)updateLoadingStatus;
@end

@implementation TPSIntroTipCollectionViewCell

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = TPSIntroTipCollectionViewCell;
  [(TPSBaseTipCollectionViewCell *)&v3 commonInit];
  [(TPSBaseTipCollectionViewCell *)self setHasBodyContent:0];
}

- (void)setLoading:(BOOL)loading
{
  if (self->_loading != loading)
  {
    self->_loading = loading;
    loadingView = self->_loadingView;
    if (loading)
    {
      if (loadingView)
      {
        return;
      }

      v6 = objc_alloc_init(TPSLoadingView);
      v7 = self->_loadingView;
      self->_loadingView = v6;

      [(TPSLoadingView *)self->_loadingView setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView = [(TPSIntroTipCollectionViewCell *)self contentView];
      [contentView addSubview:self->_loadingView];
      topAnchor = [(TPSLoadingView *)self->_loadingView topAnchor];
      topAnchor2 = [contentView topAnchor];
      v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
      loadingViewTopAnchorConstraint = self->_loadingViewTopAnchorConstraint;
      self->_loadingViewTopAnchorConstraint = v10;

      [(NSLayoutConstraint *)self->_loadingViewTopAnchorConstraint setActive:1];
      bottomAnchor = [(TPSLoadingView *)self->_loadingView bottomAnchor];
      bottomAnchor2 = [contentView bottomAnchor];
      v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [v14 setActive:1];

      leadingAnchor = [(TPSLoadingView *)self->_loadingView leadingAnchor];
      leadingAnchor2 = [contentView leadingAnchor];
      v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [v17 setActive:1];

      trailingAnchor = [(TPSLoadingView *)self->_loadingView trailingAnchor];
      trailingAnchor2 = [contentView trailingAnchor];
      v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [v20 setActive:1];

      v5 = contentView;
    }

    else
    {
      [(TPSLoadingView *)loadingView removeFromSuperview];
      v5 = self->_loadingView;
      self->_loadingView = 0;
    }
  }
}

- (BOOL)setTip:(id)tip withCellAppearance:(id)appearance
{
  v14.receiver = self;
  v14.super_class = TPSIntroTipCollectionViewCell;
  v5 = [(TPSBookendsCollectionViewCell *)&v14 setTip:tip withCellAppearance:appearance];
  v6 = +[TPSAssetCacheController sharedInstance];
  heroAssetView = [(TPSBaseTipCollectionViewCell *)self heroAssetView];
  cacheVideoIdentifier = [heroAssetView cacheVideoIdentifier];
  v9 = [v6 dataCacheForIdentifier:cacheVideoIdentifier];

  if (v9)
  {
    v10 = 0.1;
  }

  else
  {
    v10 = kTPSVideoAssetViewDefaultStartTime;
  }

  heroAssetView2 = [(TPSBaseTipCollectionViewCell *)self heroAssetView];
  [heroAssetView2 setVideoDelayTime:v10];

  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = [(TPSBaseTipCollectionViewCell *)self imageLoadingFinished]^ 1;
  }

  [(TPSIntroTipCollectionViewCell *)self setLoading:v12];
  return v5;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = TPSIntroTipCollectionViewCell;
  [(TPSBaseTipCollectionViewCell *)&v3 prepareForReuse];
  [(TPSIntroTipCollectionViewCell *)self setLoading:0];
}

- (void)updateLoadingStatus
{
  v3.receiver = self;
  v3.super_class = TPSIntroTipCollectionViewCell;
  [(TPSBaseTipCollectionViewCell *)&v3 updateLoadingStatus];
  if ([(TPSBaseTipCollectionViewCell *)self videoLoadingFinished]|| [(TPSBaseTipCollectionViewCell *)self imageLoadingFinished])
  {
    [(TPSIntroTipCollectionViewCell *)self setLoading:0];
  }
}

- (void)setImageLoadingFinished:(BOOL)finished
{
  finishedCopy = finished;
  v5.receiver = self;
  v5.super_class = TPSIntroTipCollectionViewCell;
  [(TPSBaseTipCollectionViewCell *)&v5 setImageLoadingFinished:?];
  if (finishedCopy)
  {
    [(TPSIntroTipCollectionViewCell *)self setLoading:0];
  }
}

- (void)setContentSafeAreaInsets:(UIEdgeInsets)insets
{
  top = insets.top;
  v5.receiver = self;
  v5.super_class = TPSIntroTipCollectionViewCell;
  [(TPSBaseTipCollectionViewCell *)&v5 setContentSafeAreaInsets:insets.top, insets.left, insets.bottom, insets.right];
  [(NSLayoutConstraint *)self->_loadingViewTopAnchorConstraint setConstant:top];
}

@end