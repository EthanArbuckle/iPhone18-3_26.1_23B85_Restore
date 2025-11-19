@interface AssistantVoiceDownloadingCell
- (AssistantVoiceDownloadingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setDownloading:(BOOL)a3;
@end

@implementation AssistantVoiceDownloadingCell

- (AssistantVoiceDownloadingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = AssistantVoiceDownloadingCell;
  v4 = [(PSTableCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [[AssistantVoiceDownloadingView alloc] initWithActivityIndicatorStyle:100];
    downloadingView = v4->_downloadingView;
    v4->_downloadingView = v5;

    [(AssistantVoiceDownloadingView *)v4->_downloadingView sizeToFit];
  }

  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = AssistantVoiceDownloadingCell;
  v4 = a3;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{@"IS_VOICE_DOWNLOADING", v7.receiver, v7.super_class}];

  v6 = [v5 BOOLValue];
  [(AssistantVoiceDownloadingCell *)self setDownloading:v6];
}

- (void)setDownloading:(BOOL)a3
{
  if (self->_downloading != a3)
  {
    if (a3)
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

    self->_downloading = a3;
  }
}

@end