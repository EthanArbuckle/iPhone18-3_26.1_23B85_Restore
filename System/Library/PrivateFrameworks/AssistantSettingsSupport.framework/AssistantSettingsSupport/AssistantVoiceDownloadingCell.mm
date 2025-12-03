@interface AssistantVoiceDownloadingCell
- (AssistantVoiceDownloadingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setDownloading:(BOOL)downloading;
@end

@implementation AssistantVoiceDownloadingCell

- (AssistantVoiceDownloadingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = AssistantVoiceDownloadingCell;
  v4 = [(PSTableCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [[AssistantVoiceDownloadingView alloc] initWithActivityIndicatorStyle:100];
    downloadingView = v4->_downloadingView;
    v4->_downloadingView = v5;

    [(AssistantVoiceDownloadingView *)v4->_downloadingView sizeToFit];
  }

  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = AssistantVoiceDownloadingCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"IS_VOICE_DOWNLOADING", v7.receiver, v7.super_class}];

  bOOLValue = [v5 BOOLValue];
  [(AssistantVoiceDownloadingCell *)self setDownloading:bOOLValue];
}

- (void)setDownloading:(BOOL)downloading
{
  if (self->_downloading != downloading)
  {
    if (downloading)
    {
      v5 = [[AssistantVoiceDownloadingView alloc] initWithActivityIndicatorStyle:100];
      downloadingView = self->_downloadingView;
      self->_downloadingView = v5;

      [(AssistantVoiceDownloadingView *)self->_downloadingView sizeToFit];
      [(AssistantVoiceDownloadingCell *)self setAccessoryView:self->_downloadingView];
      [(AssistantVoiceDownloadingCell *)self setNeedsLayout];
    }

    else
    {
      [(AssistantVoiceDownloadingCell *)self setAccessoryView:0];
      v7 = self->_downloadingView;
      self->_downloadingView = 0;
    }

    self->_downloading = downloading;
  }
}

@end