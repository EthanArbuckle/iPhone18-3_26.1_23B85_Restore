@interface BKPreviewAudiobookProducer
- (void)_previewAudiobookForIdentifier:(id)identifier completion:(id)completion;
- (void)audiobookForIdentifier:(id)identifier completion:(id)completion;
@end

@implementation BKPreviewAudiobookProducer

- (void)audiobookForIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  objc_opt_class();
  v9 = BUDynamicCast();

  if (v9)
  {
    [(BKPreviewAudiobookProducer *)self _previewAudiobookForIdentifier:v9 completion:completionCopy];
  }

  else
  {
    v8 = objc_retainBlock(completionCopy);

    if (v8)
    {
      (*(v8 + 2))(v8, 0, 0);
    }

    completionCopy = v8;
  }
}

- (void)_previewAudiobookForIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v7 = [BKAVAudiobook alloc];
  storeID = [identifierCopy storeID];
  v9 = [(BKAVAudiobook *)v7 initWithAssetID:storeID];

  title = [identifierCopy title];
  [(BKAVAudiobook *)v9 setTitle:title];

  author = [identifierCopy author];
  [(BKAVAudiobook *)v9 setAuthor:author];

  [(BKAVAudiobook *)v9 setAudiobookPreview:1];
  v12 = [BKAVAudiobookTrack alloc];
  previewURL = [identifierCopy previewURL];
  v14 = [(BKAVAudiobookTrack *)v12 initWithAssetURL:previewURL];

  title2 = [identifierCopy title];
  [(BKAVAudiobookTrack *)v14 setTitle:title2];

  author2 = [identifierCopy author];
  [(BKAVAudiobookTrack *)v14 setAuthor:author2];

  [identifierCopy duration];
  [(BKAVAudiobookTrack *)v14 setDuration:?];
  [(BKAVAudiobookTrack *)v14 setAudiobook:v9];
  v17 = objc_opt_new();
  [identifierCopy duration];
  [v17 setDuration:?];
  [identifierCopy duration];
  v19 = v18;

  CMTimeMakeWithSeconds(&duration.start, v19, 1000000);
  start = kCMTimeZero;
  CMTimeRangeMake(&v24, &start, &duration.start);
  duration = v24;
  [v17 setTimeRangeInTrack:&duration];
  if (v17)
  {
    [v17 timeRangeInTrack];
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
  }

  duration = v21;
  [v17 setTimeRangeInAudiobook:{&duration, *&v21.start.value, *&v21.start.epoch, *&v21.duration.timescale}];
  [v17 setTrack:v14];
  [(BKAVAudiobookTrack *)v14 addChapter:v17];
  [(BKAVAudiobook *)v9 addTrack:v14];
  v20 = objc_retainBlock(completionCopy);

  if (v20)
  {
    v20[2](v20, v9, 0);
  }
}

@end