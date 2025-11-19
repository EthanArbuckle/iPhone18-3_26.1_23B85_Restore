@interface TPSIntroTipCollectionViewCell
- (BOOL)setTip:(id)a3 withCellAppearance:(id)a4;
- (void)commonInit;
- (void)prepareForReuse;
- (void)setContentSafeAreaInsets:(UIEdgeInsets)a3;
- (void)setImageLoadingFinished:(BOOL)a3;
- (void)setLoading:(BOOL)a3;
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

- (void)setLoading:(BOOL)a3
{
  if (self->_loading != a3)
  {
    self->_loading = a3;
    loadingView = self->_loadingView;
    if (a3)
    {
      if (loadingView)
      {
        return;
      }

      v6 = objc_alloc_init(TPSLoadingView);
      v7 = self->_loadingView;
      self->_loadingView = v6;

      [(TPSLoadingView *)self->_loadingView setTranslatesAutoresizingMaskIntoConstraints:0];
      v21 = [(TPSIntroTipCollectionViewCell *)self contentView];
      [v21 addSubview:self->_loadingView];
      v8 = [(TPSLoadingView *)self->_loadingView topAnchor];
      v9 = [v21 topAnchor];
      v10 = [v8 constraintEqualToAnchor:v9];
      loadingViewTopAnchorConstraint = self->_loadingViewTopAnchorConstraint;
      self->_loadingViewTopAnchorConstraint = v10;

      [(NSLayoutConstraint *)self->_loadingViewTopAnchorConstraint setActive:1];
      v12 = [(TPSLoadingView *)self->_loadingView bottomAnchor];
      v13 = [v21 bottomAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];
      [v14 setActive:1];

      v15 = [(TPSLoadingView *)self->_loadingView leadingAnchor];
      v16 = [v21 leadingAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];
      [v17 setActive:1];

      v18 = [(TPSLoadingView *)self->_loadingView trailingAnchor];
      v19 = [v21 trailingAnchor];
      v20 = [v18 constraintEqualToAnchor:v19];
      [v20 setActive:1];

      v5 = v21;
    }

    else
    {
      [(TPSLoadingView *)loadingView removeFromSuperview];
      v5 = self->_loadingView;
      self->_loadingView = 0;
    }
  }
}

- (BOOL)setTip:(id)a3 withCellAppearance:(id)a4
{
  v14.receiver = self;
  v14.super_class = TPSIntroTipCollectionViewCell;
  v5 = [(TPSBookendsCollectionViewCell *)&v14 setTip:a3 withCellAppearance:a4];
  v6 = +[TPSAssetCacheController sharedInstance];
  v7 = [(TPSBaseTipCollectionViewCell *)self heroAssetView];
  v8 = [v7 cacheVideoIdentifier];
  v9 = [v6 dataCacheForIdentifier:v8];

  if (v9)
  {
    v10 = 0.1;
  }

  else
  {
    v10 = kTPSVideoAssetViewDefaultStartTime;
  }

  v11 = [(TPSBaseTipCollectionViewCell *)self heroAssetView];
  [v11 setVideoDelayTime:v10];

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

- (void)setImageLoadingFinished:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = TPSIntroTipCollectionViewCell;
  [(TPSBaseTipCollectionViewCell *)&v5 setImageLoadingFinished:?];
  if (v3)
  {
    [(TPSIntroTipCollectionViewCell *)self setLoading:0];
  }
}

- (void)setContentSafeAreaInsets:(UIEdgeInsets)a3
{
  top = a3.top;
  v5.receiver = self;
  v5.super_class = TPSIntroTipCollectionViewCell;
  [(TPSBaseTipCollectionViewCell *)&v5 setContentSafeAreaInsets:a3.top, a3.left, a3.bottom, a3.right];
  [(NSLayoutConstraint *)self->_loadingViewTopAnchorConstraint setConstant:top];
}

@end