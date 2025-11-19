@interface MTEpisodeDownloadCell
- (MTDownloadOfferButton)downloadButton;
- (void)cellTapped;
- (void)configureSubviews;
- (void)downloadButtonTapped:(id)a3;
- (void)setPausable:(BOOL)a3;
- (void)setPaused:(BOOL)a3;
- (void)updateWithObject:(id)a3;
@end

@implementation MTEpisodeDownloadCell

- (void)configureSubviews
{
  v10.receiver = self;
  v10.super_class = MTEpisodeDownloadCell;
  [(MTGenericCollectionCell *)&v10 configureSubviews];
  v3 = [(MTEpisodeDownloadCell *)self downloadButton];
  [(MTGenericCollectionCell *)self setSideView:v3];

  v4 = [(MTCollectionViewCell *)self deleteButton];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"DOWNLOAD_CANCEL" value:&stru_1004F3018 table:0];
  [v4 setTitle:v6 forState:0];

  v7 = [(MTCollectionViewCell *)self actionButtonsContainer];
  [v7 setNeedsLayout];

  [(MTEpisodeDownloadCell *)self setNeedsLayout];
  v8 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"cellTapped"];
  [(MTEpisodeDownloadCell *)self setTapGesture:v8];

  v9 = [(MTEpisodeDownloadCell *)self tapGesture];
  [(MTEpisodeDownloadCell *)self addGestureRecognizer:v9];
}

- (void)updateWithObject:(id)a3
{
  v18 = a3;
  if (v18 && (+[MTDB sharedInstance](MTDB, "sharedInstance"), v4 = objc_claimAutoreleasedReturnValue(), [v4 mainQueueContext], v5 = objc_claimAutoreleasedReturnValue(), v4, objc_msgSend(v18, "episodeUuid"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "episodeForUuid:", v6), v7 = objc_claimAutoreleasedReturnValue(), v6, v5, v7))
  {
    v8 = [(MTCollectionViewCell *)self contentView];
    [v8 setHidden:0];

    v9 = [v7 podcastUuid];
    [(MTGenericCollectionCell *)self setArtworkKey:v9];

    [v18 downloadProgress];
    v11 = v10;
    v12 = [(MTEpisodeDownloadCell *)self downloadButton];
    [v12 setProgress:v11];

    v13 = [v7 bestTitle];
    [(MTGenericCollectionCell *)self setTitle:v13];

    v14 = [MTEpisode dateLabelDescriptionForEpisode:v7 download:v18];
    [(MTGenericCollectionCell *)self setSubtitle:v14];

    -[MTEpisodeDownloadCell setPausable:](self, "setPausable:", [v18 isPausable]);
    v15 = [v18 downloadPhase];
    [(MTEpisodeDownloadCell *)self setPaused:[(MTEpisodeDownloadCell *)self _isPausedForDownloadPhase:v15]];
    v16 = [(MTEpisodeDownloadCell *)self _isDownloadButtonEnabledForDownloadPhase:v15];
    v17 = [(MTEpisodeDownloadCell *)self downloadButton];
    [v17 setEnabled:v16];

    [(MTEpisodeDownloadCell *)self setNeedsLayout];
  }

  else
  {
    v7 = [(MTCollectionViewCell *)self contentView];
    [v7 setHidden:1];
  }
}

- (void)setPausable:(BOOL)a3
{
  v3 = a3;
  self->_pausable = a3;
  v4 = [(MTEpisodeDownloadCell *)self downloadButton];
  [v4 setHidden:!v3];
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  self->_paused = a3;
  v5 = [(MTEpisodeDownloadCell *)self downloadButton];
  v6 = v5;
  if (v3)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  [v5 setProgressType:v7 animated:0];

  [(MTEpisodeDownloadCell *)self setNeedsLayout];
}

- (MTDownloadOfferButton)downloadButton
{
  downloadButton = self->_downloadButton;
  if (!downloadButton)
  {
    v4 = objc_alloc_init(MTDownloadOfferButton);
    v5 = self->_downloadButton;
    self->_downloadButton = v4;

    [(MTDownloadOfferButton *)self->_downloadButton addTarget:self action:"downloadButtonTapped:" forControlEvents:64];
    downloadButton = self->_downloadButton;
  }

  return downloadButton;
}

- (void)downloadButtonTapped:(id)a3
{
  v4 = [(MTCollectionViewCell *)self scrollView];
  [v4 contentOffset];
  v6 = v5;

  if (v6 <= 0.0)
  {
    v7 = [(MTCollectionViewCell *)self delegate];
    [v7 cellDidPressToggleDownload:self];
  }
}

- (void)cellTapped
{
  v5 = [(MTCollectionViewCell *)self collectionView];
  v3 = [v5 indexPathForCell:self];
  if (v3)
  {
    v4 = [v5 delegate];
    [v4 collectionView:v5 didSelectItemAtIndexPath:v3];
  }
}

@end