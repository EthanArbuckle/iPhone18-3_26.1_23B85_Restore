@interface AVPlayerItemSegment
- (AVPlayerInterstitialEvent)interstitialEvent;
- (NSArray)loadedTimeRanges;
- (NSDate)startDate;
- (id)_initWithFigSegment:(OpaqueFigPlaybackItemSegment *)a3;
- (id)debugDescription;
- (id)description;
- (void)dealloc;
@end

@implementation AVPlayerItemSegment

- (id)_initWithFigSegment:(OpaqueFigPlaybackItemSegment *)a3
{
  v7.receiver = self;
  v7.super_class = AVPlayerItemSegment;
  v4 = [(AVPlayerItemSegment *)&v7 init];
  if (v4)
  {
    if (a3)
    {
      v5 = CFRetain(a3);
    }

    else
    {
      v5 = 0;
    }

    v4->_figSegment = v5;
  }

  return v4;
}

- (void)dealloc
{
  figSegment = self->_figSegment;
  if (figSegment)
  {
    CFRelease(figSegment);
  }

  v4.receiver = self;
  v4.super_class = AVPlayerItemSegment;
  [(AVPlayerItemSegment *)&v4 dealloc];
}

- (id)debugDescription
{
  v2 = CFCopyDescription(self->_figSegment);

  return v2;
}

- (id)description
{
  v2 = CFCopyDescription(self->_figSegment);

  return v2;
}

- (NSArray)loadedTimeRanges
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  LoadedTimeRanges = FigPlaybackItemSegmentGetLoadedTimeRanges();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [LoadedTimeRanges countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(LoadedTimeRanges);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        memset(&v11, 0, sizeof(v11));
        CMTimeRangeMakeFromDictionary(&v11, v8);
        v10 = v11;
        -[NSArray addObject:](v2, "addObject:", [MEMORY[0x1E696B098] valueWithCMTimeRange:&v10]);
        ++v7;
      }

      while (v5 != v7);
      v5 = [LoadedTimeRanges countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

- (NSDate)startDate
{
  v2 = [FigPlaybackItemSegmentGetStartDate() copy];

  return v2;
}

- (AVPlayerInterstitialEvent)interstitialEvent
{
  v2 = FigPlaybackItemSegmentGetInterstitialEvent();

  return v2;
}

@end