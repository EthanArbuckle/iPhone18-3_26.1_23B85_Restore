@interface BKUploadStatusCell
- (BCCacheVendedLayer)coverImageLayer;
- (UILabel)statusLabel;
- (UILabel)titleLabel;
- (UIView)coverImageContainerView;
- (UIView)textContainerView;
- (void)_updateBookCover;
- (void)awakeFromNib;
- (void)configureForAsset:(id)asset;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation BKUploadStatusCell

- (void)awakeFromNib
{
  v4.receiver = self;
  v4.super_class = BKUploadStatusCell;
  [(BKUploadStatusCell *)&v4 awakeFromNib];
  coverImageContainerView = [(BKUploadStatusCell *)self coverImageContainerView];
  [coverImageContainerView setClipsToBounds:0];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = BKUploadStatusCell;
  [(BKUploadStatusCell *)&v4 prepareForReuse];
  coverImageLayer = [(BKUploadStatusCell *)self coverImageLayer];
  [coverImageLayer removeFromSuperlayer];

  [(BKUploadStatusCell *)self setCoverImageLayer:0];
}

- (void)configureForAsset:(id)asset
{
  assetCopy = asset;
  v32 = assetCopy;
  if (assetCopy)
  {
    title = [assetCopy title];
    titleLabel = [(BKUploadStatusCell *)self titleLabel];
    [titleLabel setText:title];

    path = [v32 path];
    v8 = [path length];

    if (v8)
    {
      v9 = [BKLibraryFileSizeManagerCacheItemRequest alloc];
      assetID = [v32 assetID];
      path2 = [v32 path];
      v12 = [NSURL fileURLWithPath:path2];
      v13 = [v9 initWithCacheItemRequestWithAssetID:assetID assetURL:v12];

      v14 = +[BKLibraryFileSizeManager sharedInstance];
      v15 = [v14 synchronousFileSizeForCacheItemRequest:v13];

      longLongValue = [v15 longLongValue];
    }

    else
    {
      longLongValue = [v32 fileSize];
    }

    statusLabel3 = [NSByteCountFormatter stringFromByteCount:longLongValue countStyle:0];
    v19 = +[BKLibraryAssetStatusController sharedController];
    assetID2 = [v32 assetID];
    v21 = [v19 statusForAssetID:assetID2];

    if ([v21 state] == 9)
    {
      statusLabel2 = +[NSBundle mainBundle];
      v23 = [statusLabel2 localizedStringForKey:@"%@ - Uploading" value:&stru_100A30A68 table:0];
      v24 = [NSString stringWithFormat:v23, statusLabel3];
      statusLabel = [(BKUploadStatusCell *)self statusLabel];
      [statusLabel setText:v24];
    }

    else
    {
      statusLabel2 = [(BKUploadStatusCell *)self statusLabel];
      [statusLabel2 setText:statusLabel3];
    }

    v26 = +[BCCacheManager defaultCacheManager];
    permanentOrTemporaryAssetID = [v32 permanentOrTemporaryAssetID];
    v28 = [v26 fetchLayerForAssetID:permanentOrTemporaryAssetID size:2 options:{41.0, 53.0}];
    [(BKUploadStatusCell *)self setCoverImageLayer:v28];

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    coverImageContainerView = [(BKUploadStatusCell *)self coverImageContainerView];
    layer = [coverImageContainerView layer];
    coverImageLayer = [(BKUploadStatusCell *)self coverImageLayer];
    [layer addSublayer:coverImageLayer];

    [(BKUploadStatusCell *)self _updateBookCover];
    +[CATransaction commit];
  }

  else
  {
    titleLabel2 = [(BKUploadStatusCell *)self titleLabel];
    [titleLabel2 setText:@"General Book Title"];

    statusLabel3 = [(BKUploadStatusCell *)self statusLabel];
    [statusLabel3 setText:@"3.4 MB - Uploading"];
  }
}

- (void)_updateBookCover
{
  coverImageLayer = [(BKUploadStatusCell *)self coverImageLayer];
  describedImageShown = [coverImageLayer describedImageShown];

  if (describedImageShown)
  {
    coverImageLayer2 = [(BKUploadStatusCell *)self coverImageLayer];
    describedImageShown2 = [coverImageLayer2 describedImageShown];
    [describedImageShown2 imageSize];
  }

  CGRectMakeWithOriginSize();
  coverImageContainerView = [(BKUploadStatusCell *)self coverImageContainerView];
  [coverImageContainerView bounds];
  CGRectFitRectInRectClip();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  coverImageLayer3 = [(BKUploadStatusCell *)self coverImageLayer];
  [coverImageLayer3 setFrame:{v9, v11, v13, v15}];
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