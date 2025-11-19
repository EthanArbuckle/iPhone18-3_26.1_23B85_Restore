@interface CACAssetDownloadingCell
- (CACAssetDownloadingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setDownloading:(BOOL)a3;
@end

@implementation CACAssetDownloadingCell

- (CACAssetDownloadingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v9.receiver = self;
  v9.super_class = CACAssetDownloadingCell;
  v5 = [(CACAssetDownloadingCell *)&v9 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  if (v5)
  {
    v6 = [[CACAssetDownloadingView alloc] initWithActivityIndicatorStyle:100];
    downloadingView = v5->_downloadingView;
    v5->_downloadingView = v6;
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = CACAssetDownloadingCell;
  v4 = a3;
  [(CACAssetDownloadingCell *)&v7 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{@"IS_ASSET_DOWNLOADING", v7.receiver, v7.super_class}];

  v6 = [v5 BOOLValue];
  [(CACAssetDownloadingCell *)self setDownloading:v6];
}

- (void)setDownloading:(BOOL)a3
{
  if (self->_downloading != a3)
  {
    if (a3)
    {
      v5 = [(CACAssetDownloadingCell *)self downloadingView];
      [(CACAssetDownloadingCell *)self setAccessoryView:v5];
    }

    else
    {
      [(CACAssetDownloadingCell *)self setAccessoryView:0];
    }

    self->_downloading = a3;
  }
}

@end