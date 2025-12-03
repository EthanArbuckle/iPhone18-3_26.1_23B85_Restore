@interface MTEpisodeDownloadCell
- (MTDownloadOfferButton)downloadButton;
- (void)cellTapped;
- (void)configureSubviews;
- (void)downloadButtonTapped:(id)tapped;
- (void)setPausable:(BOOL)pausable;
- (void)setPaused:(BOOL)paused;
- (void)updateWithObject:(id)object;
@end

@implementation MTEpisodeDownloadCell

- (void)configureSubviews
{
  v10.receiver = self;
  v10.super_class = MTEpisodeDownloadCell;
  [(MTGenericCollectionCell *)&v10 configureSubviews];
  downloadButton = [(MTEpisodeDownloadCell *)self downloadButton];
  [(MTGenericCollectionCell *)self setSideView:downloadButton];

  deleteButton = [(MTCollectionViewCell *)self deleteButton];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"DOWNLOAD_CANCEL" value:&stru_1004F3018 table:0];
  [deleteButton setTitle:v6 forState:0];

  actionButtonsContainer = [(MTCollectionViewCell *)self actionButtonsContainer];
  [actionButtonsContainer setNeedsLayout];

  [(MTEpisodeDownloadCell *)self setNeedsLayout];
  v8 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"cellTapped"];
  [(MTEpisodeDownloadCell *)self setTapGesture:v8];

  tapGesture = [(MTEpisodeDownloadCell *)self tapGesture];
  [(MTEpisodeDownloadCell *)self addGestureRecognizer:tapGesture];
}

- (void)updateWithObject:(id)object
{
  objectCopy = object;
  if (objectCopy && (+[MTDB sharedInstance](MTDB, "sharedInstance"), v4 = objc_claimAutoreleasedReturnValue(), [v4 mainQueueContext], v5 = objc_claimAutoreleasedReturnValue(), v4, objc_msgSend(objectCopy, "episodeUuid"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "episodeForUuid:", v6), contentView2 = objc_claimAutoreleasedReturnValue(), v6, v5, contentView2))
  {
    contentView = [(MTCollectionViewCell *)self contentView];
    [contentView setHidden:0];

    podcastUuid = [contentView2 podcastUuid];
    [(MTGenericCollectionCell *)self setArtworkKey:podcastUuid];

    [objectCopy downloadProgress];
    v11 = v10;
    downloadButton = [(MTEpisodeDownloadCell *)self downloadButton];
    [downloadButton setProgress:v11];

    bestTitle = [contentView2 bestTitle];
    [(MTGenericCollectionCell *)self setTitle:bestTitle];

    v14 = [MTEpisode dateLabelDescriptionForEpisode:contentView2 download:objectCopy];
    [(MTGenericCollectionCell *)self setSubtitle:v14];

    -[MTEpisodeDownloadCell setPausable:](self, "setPausable:", [objectCopy isPausable]);
    downloadPhase = [objectCopy downloadPhase];
    [(MTEpisodeDownloadCell *)self setPaused:[(MTEpisodeDownloadCell *)self _isPausedForDownloadPhase:downloadPhase]];
    v16 = [(MTEpisodeDownloadCell *)self _isDownloadButtonEnabledForDownloadPhase:downloadPhase];
    downloadButton2 = [(MTEpisodeDownloadCell *)self downloadButton];
    [downloadButton2 setEnabled:v16];

    [(MTEpisodeDownloadCell *)self setNeedsLayout];
  }

  else
  {
    contentView2 = [(MTCollectionViewCell *)self contentView];
    [contentView2 setHidden:1];
  }
}

- (void)setPausable:(BOOL)pausable
{
  pausableCopy = pausable;
  self->_pausable = pausable;
  downloadButton = [(MTEpisodeDownloadCell *)self downloadButton];
  [downloadButton setHidden:!pausableCopy];
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  self->_paused = paused;
  downloadButton = [(MTEpisodeDownloadCell *)self downloadButton];
  v6 = downloadButton;
  if (pausedCopy)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  [downloadButton setProgressType:v7 animated:0];

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

- (void)downloadButtonTapped:(id)tapped
{
  scrollView = [(MTCollectionViewCell *)self scrollView];
  [scrollView contentOffset];
  v6 = v5;

  if (v6 <= 0.0)
  {
    delegate = [(MTCollectionViewCell *)self delegate];
    [delegate cellDidPressToggleDownload:self];
  }
}

- (void)cellTapped
{
  collectionView = [(MTCollectionViewCell *)self collectionView];
  v3 = [collectionView indexPathForCell:self];
  if (v3)
  {
    delegate = [collectionView delegate];
    [delegate collectionView:collectionView didSelectItemAtIndexPath:v3];
  }
}

@end