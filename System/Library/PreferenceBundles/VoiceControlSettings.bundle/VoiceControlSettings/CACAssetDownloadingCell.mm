@interface CACAssetDownloadingCell
- (CACAssetDownloadingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setDownloading:(BOOL)downloading;
@end

@implementation CACAssetDownloadingCell

- (CACAssetDownloadingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = CACAssetDownloadingCell;
  v5 = [(CACAssetDownloadingCell *)&v9 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = [[CACAssetDownloadingView alloc] initWithActivityIndicatorStyle:100];
    downloadingView = v5->_downloadingView;
    v5->_downloadingView = v6;
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = CACAssetDownloadingCell;
  specifierCopy = specifier;
  [(CACAssetDownloadingCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"IS_ASSET_DOWNLOADING", v7.receiver, v7.super_class}];

  bOOLValue = [v5 BOOLValue];
  [(CACAssetDownloadingCell *)self setDownloading:bOOLValue];
}

- (void)setDownloading:(BOOL)downloading
{
  if (self->_downloading != downloading)
  {
    if (downloading)
    {
      downloadingView = [(CACAssetDownloadingCell *)self downloadingView];
      [(CACAssetDownloadingCell *)self setAccessoryView:downloadingView];
    }

    else
    {
      [(CACAssetDownloadingCell *)self setAccessoryView:0];
    }

    self->_downloading = downloading;
  }
}

@end