@interface BKUploadStatusCell
- (BCCacheVendedLayer)coverImageLayer;
- (UILabel)statusLabel;
- (UILabel)titleLabel;
- (UIView)coverImageContainerView;
- (UIView)textContainerView;
- (void)_updateBookCover;
- (void)awakeFromNib;
- (void)configureForAsset:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation BKUploadStatusCell

- (void)awakeFromNib
{
  v4.receiver = self;
  v4.super_class = BKUploadStatusCell;
  [(BKUploadStatusCell *)&v4 awakeFromNib];
  v3 = [(BKUploadStatusCell *)self coverImageContainerView];
  [v3 setClipsToBounds:0];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = BKUploadStatusCell;
  [(BKUploadStatusCell *)&v4 prepareForReuse];
  v3 = [(BKUploadStatusCell *)self coverImageLayer];
  [v3 removeFromSuperlayer];

  [(BKUploadStatusCell *)self setCoverImageLayer:0];
}

- (void)configureForAsset:(id)a3
{
  v4 = a3;
  v32 = v4;
  if (v4)
  {
    v5 = [v4 title];
    v6 = [(BKUploadStatusCell *)self titleLabel];
    [v6 setText:v5];

    v7 = [v32 path];
    v8 = [v7 length];

    if (v8)
    {
      v9 = [BKLibraryFileSizeManagerCacheItemRequest alloc];
      v10 = [v32 assetID];
      v11 = [v32 path];
      v12 = [NSURL fileURLWithPath:v11];
      v13 = [v9 initWithCacheItemRequestWithAssetID:v10 assetURL:v12];

      v14 = +[BKLibraryFileSizeManager sharedInstance];
      v15 = [v14 synchronousFileSizeForCacheItemRequest:v13];

      v16 = [v15 longLongValue];
    }

    else
    {
      v16 = [v32 fileSize];
    }

    v18 = [NSByteCountFormatter stringFromByteCount:v16 countStyle:0];
    v19 = +[BKLibraryAssetStatusController sharedController];
    v20 = [v32 assetID];
    v21 = [v19 statusForAssetID:v20];

    if ([v21 state] == 9)
    {
      v22 = +[NSBundle mainBundle];
      v23 = [v22 localizedStringForKey:@"%@ - Uploading" value:&stru_100A30A68 table:0];
      v24 = [NSString stringWithFormat:v23, v18];
      v25 = [(BKUploadStatusCell *)self statusLabel];
      [v25 setText:v24];
    }

    else
    {
      v22 = [(BKUploadStatusCell *)self statusLabel];
      [v22 setText:v18];
    }

    v26 = +[BCCacheManager defaultCacheManager];
    v27 = [v32 permanentOrTemporaryAssetID];
    v28 = [v26 fetchLayerForAssetID:v27 size:2 options:{41.0, 53.0}];
    [(BKUploadStatusCell *)self setCoverImageLayer:v28];

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    v29 = [(BKUploadStatusCell *)self coverImageContainerView];
    v30 = [v29 layer];
    v31 = [(BKUploadStatusCell *)self coverImageLayer];
    [v30 addSublayer:v31];

    [(BKUploadStatusCell *)self _updateBookCover];
    +[CATransaction commit];
  }

  else
  {
    v17 = [(BKUploadStatusCell *)self titleLabel];
    [v17 setText:@"General Book Title"];

    v18 = [(BKUploadStatusCell *)self statusLabel];
    [v18 setText:@"3.4 MB - Uploading"];
  }
}

- (void)_updateBookCover
{
  v3 = [(BKUploadStatusCell *)self coverImageLayer];
  v4 = [v3 describedImageShown];

  if (v4)
  {
    v5 = [(BKUploadStatusCell *)self coverImageLayer];
    v6 = [v5 describedImageShown];
    [v6 imageSize];
  }

  CGRectMakeWithOriginSize();
  v7 = [(BKUploadStatusCell *)self coverImageContainerView];
  [v7 bounds];
  CGRectFitRectInRectClip();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(BKUploadStatusCell *)self coverImageLayer];
  [v16 setFrame:{v9, v11, v13, v15}];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = BKUploadStatusCell;
  [(BKUploadStatusCell *)&v3 layoutSubviews];
  [(BKUploadStatusCell *)self _updateBookCover];
}

- (UIView)textContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_textContainerView);

  return WeakRetained;
}

- (UILabel)titleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_titleLabel);

  return WeakRetained;
}

- (UILabel)statusLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_statusLabel);

  return WeakRetained;
}

- (BCCacheVendedLayer)coverImageLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_coverImageLayer);

  return WeakRetained;
}

- (UIView)coverImageContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_coverImageContainerView);

  return WeakRetained;
}

@end