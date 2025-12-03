@interface BKAudiobookBufferProducer
- (id)timeRemainingInBufferFromTrackPosition:(double)position;
- (void)updateWithChapter:(id)chapter bufferedTrackPositions:(id)positions bufferedTrackDurations:(id)durations;
@end

@implementation BKAudiobookBufferProducer

- (void)updateWithChapter:(id)chapter bufferedTrackPositions:(id)positions bufferedTrackDurations:(id)durations
{
  chapterCopy = chapter;
  positionsCopy = positions;
  durationsCopy = durations;
  if (chapterCopy && (v11 = [positionsCopy count], v11 == objc_msgSend(durationsCopy, "count")))
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = sub_2080C;
    v45 = sub_2081C;
    v46 = +[NSMutableArray array];
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = sub_2080C;
    v39 = sub_2081C;
    v40 = +[NSMutableArray array];
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = sub_2080C;
    v33 = sub_2081C;
    v34 = +[NSMutableArray array];
    [chapterCopy timeRangeInTrack];
    time = v27;
    Seconds = CMTimeGetSeconds(&time);
    [chapterCopy timeRangeInTrack];
    time = v26;
    v13 = CMTimeGetSeconds(&time);
    [chapterCopy timeRangeInAudiobook];
    time = v25;
    v14 = CMTimeGetSeconds(&time);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_20824;
    v17[3] = &unk_3D2D0;
    v15 = durationsCopy;
    v18 = v15;
    v19 = &v41;
    v22 = Seconds;
    v23 = v13;
    v20 = &v29;
    v21 = &v35;
    v24 = v14;
    [positionsCopy enumerateObjectsUsingBlock:v17];
    [(BKAudiobookBufferProducer *)self setChapter:chapterCopy];
    v16 = [BKAudiobookBufferInfo infoWithAudiobookPositions:v36[5] audiobookDurations:v15 chapterPositions:v42[5] chapterDurations:v30[5]];
    [(BKAudiobookBufferProducer *)self setBufferInfo:v16];

    [(BKAudiobookBufferProducer *)self setTrackPositions:positionsCopy];
    [(BKAudiobookBufferProducer *)self setTrackDurations:v15];

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v35, 8);

    _Block_object_dispose(&v41, 8);
  }

  else
  {
    [(BKAudiobookBufferProducer *)self setChapter:0];
    [(BKAudiobookBufferProducer *)self setBufferInfo:0];
    [(BKAudiobookBufferProducer *)self setTrackPositions:0];
    [(BKAudiobookBufferProducer *)self setTrackDurations:0];
  }
}

- (id)timeRemainingInBufferFromTrackPosition:(double)position
{
  bufferInfo = [(BKAudiobookBufferProducer *)self bufferInfo];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_2080C;
  v18 = sub_2081C;
  v19 = &off_3E198;
  trackPositions = [(BKAudiobookBufferProducer *)self trackPositions];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_20AF8;
  v10[3] = &unk_3D2F8;
  v7 = bufferInfo;
  positionCopy = position;
  v11 = v7;
  v12 = &v14;
  [trackPositions enumerateObjectsUsingBlock:v10];

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

@end