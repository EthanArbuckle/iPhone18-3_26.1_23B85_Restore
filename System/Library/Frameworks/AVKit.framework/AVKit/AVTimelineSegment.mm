@interface AVTimelineSegment
- (AVInterstitialTimeRange)interstitialTimeRange;
- (AVTimelineSegment)initWithSegment:(id)segment;
- (BOOL)isEqual:(id)equal;
- (BOOL)supplementsPrimaryContent;
- (double)startTime;
@end

@implementation AVTimelineSegment

- (BOOL)supplementsPrimaryContent
{
  playerInterstitialEvent = [(AVTimelineSegment *)self playerInterstitialEvent];
  supplementsPrimaryContent = [playerInterstitialEvent supplementsPrimaryContent];

  return supplementsPrimaryContent;
}

- (AVInterstitialTimeRange)interstitialTimeRange
{
  if (!self->_interstitialTimeRange && [(AVTimelineSegment *)self isInterstitial])
  {
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    v16 = 0u;
    memset(v17, 0, sizeof(v17));
    playerItemSegment = [(AVTimelineSegment *)self playerItemSegment];
    v4 = playerItemSegment;
    if (playerItemSegment)
    {
      [playerItemSegment timeMapping];
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      v16 = 0u;
      memset(v17, 0, sizeof(v17));
    }

    v13 = v18;
    v14 = v19;
    v15 = v20;
    v10 = v18;
    v11 = v19;
    v12 = v20;
    v5 = [[AVInterstitialTimeRange alloc] initWithTimeRange:&v10];
    interstitialTimeRange = self->_interstitialTimeRange;
    self->_interstitialTimeRange = v5;

    v7 = self->_interstitialTimeRange;
    v10 = *(v17 + 8);
    *&v11 = *(&v17[1] + 1);
    [(AVInterstitialTimeRange *)v7 _setPlayingDuration:CMTimeGetSeconds(&v10)];
  }

  v8 = self->_interstitialTimeRange;

  return v8;
}

- (double)startTime
{
  playerItemSegment = self->_playerItemSegment;
  if (!playerItemSegment)
  {
    return 0.0;
  }

  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  [(AVPlayerItemSegment *)playerItemSegment timeMapping];
  *&v4.value = v8;
  v4.epoch = v9;
  return CMTimeGetSeconds(&v4);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    playerItemSegment = self->_playerItemSegment;
    playerItemSegment = [equalCopy playerItemSegment];
    v7 = playerItemSegment == playerItemSegment;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (AVTimelineSegment)initWithSegment:(id)segment
{
  segmentCopy = segment;
  v6 = segmentCopy;
  if (segmentCopy)
  {
    v15 = 0u;
    memset(v16, 0, sizeof(v16));
    [segmentCopy timeMapping];
    time = *(v16 + 8);
    Seconds = CMTimeGetSeconds(&time);
    time = *(&v16[3] + 8);
    v8 = CMTimeGetSeconds(&time) <= 0.0;
  }

  else
  {
    v8 = 0;
    Seconds = 0.0;
  }

  v13.receiver = self;
  v13.super_class = AVTimelineSegment;
  v9 = [(AVTimelineSegment *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_playerItemSegment, segment);
    v10->_interstitial = [v6 segmentType] == 1;
    if (v6)
    {
      v11 = [v6 segmentType] == 0;
    }

    else
    {
      v11 = 0;
    }

    v10->_primary = v11;
    v10->_duration = Seconds;
    v10->_collapsed = v8;
  }

  return v10;
}

@end