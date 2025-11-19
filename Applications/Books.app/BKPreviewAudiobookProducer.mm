@interface BKPreviewAudiobookProducer
- (void)_previewAudiobookForIdentifier:(id)a3 completion:(id)a4;
- (void)audiobookForIdentifier:(id)a3 completion:(id)a4;
@end

@implementation BKPreviewAudiobookProducer

- (void)audiobookForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  v9 = BUDynamicCast();

  if (v9)
  {
    [(BKPreviewAudiobookProducer *)self _previewAudiobookForIdentifier:v9 completion:v6];
  }

  else
  {
    v8 = objc_retainBlock(v6);

    if (v8)
    {
      (*(v8 + 2))(v8, 0, 0);
    }

    v6 = v8;
  }
}

- (void)_previewAudiobookForIdentifier:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [BKAVAudiobook alloc];
  v8 = [v6 storeID];
  v9 = [(BKAVAudiobook *)v7 initWithAssetID:v8];

  v10 = [v6 title];
  [(BKAVAudiobook *)v9 setTitle:v10];

  v11 = [v6 author];
  [(BKAVAudiobook *)v9 setAuthor:v11];

  [(BKAVAudiobook *)v9 setAudiobookPreview:1];
  v12 = [BKAVAudiobookTrack alloc];
  v13 = [v6 previewURL];
  v14 = [(BKAVAudiobookTrack *)v12 initWithAssetURL:v13];

  v15 = [v6 title];
  [(BKAVAudiobookTrack *)v14 setTitle:v15];

  v16 = [v6 author];
  [(BKAVAudiobookTrack *)v14 setAuthor:v16];

  [v6 duration];
  [(BKAVAudiobookTrack *)v14 setDuration:?];
  [(BKAVAudiobookTrack *)v14 setAudiobook:v9];
  v17 = objc_opt_new();
  [v6 duration];
  [v17 setDuration:?];
  [v6 duration];
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
  v20 = objc_retainBlock(v5);

  if (v20)
  {
    v20[2](v20, v9, 0);
  }
}

@end