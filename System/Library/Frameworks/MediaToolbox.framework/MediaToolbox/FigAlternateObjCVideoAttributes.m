@interface FigAlternateObjCVideoAttributes
- (CGSize)presentationSize;
- (FigAlternateObjCVideoAttributes)initWithFigAlternate:(OpaqueFigAlternate *)a3;
- (NSArray)codecTypes;
- (NSArray)videoLayoutAttributes;
- (NSString)videoRange;
- (void)dealloc;
@end

@implementation FigAlternateObjCVideoAttributes

- (FigAlternateObjCVideoAttributes)initWithFigAlternate:(OpaqueFigAlternate *)a3
{
  v9.receiver = self;
  v9.super_class = FigAlternateObjCVideoAttributes;
  v4 = [(FigAlternateObjCVideoAttributes *)&v9 init];
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

    v4->_alternate = v5;
    v4->_presentationSize.width = FigAlternateGetResolution(a3);
    v4->_presentationSize.height = v6;
    if (FigAlternateIsFrameRateDeclared(a3))
    {
      FrameRate = FigAlternateGetFrameRate(a3);
    }

    else
    {
      FrameRate = -1.0;
    }

    v4->_nominalFrameRate = FrameRate;
    v4->_mutex = FigSimpleMutexCreate();
  }

  return v4;
}

- (NSString)videoRange
{
  VideoRange = FigAlternateGetVideoRange(self->_alternate);
  v3 = @"AVVideoRangeSDR";
  if (VideoRange == 2)
  {
    v3 = @"AVVideoRangeHLG";
  }

  if (VideoRange == 3)
  {
    return @"AVVideoRangePQ";
  }

  else
  {
    return &v3->isa;
  }
}

- (NSArray)codecTypes
{
  FigSimpleMutexLock();
  if (!self->_videoCodecTypes)
  {
    VideoCodecs = FigAlternateGetVideoCodecs(self->_alternate);
    self->_videoCodecTypes = VideoCodecs;
    if (!VideoCodecs)
    {
      VideoCodecs = [MEMORY[0x1E695DEC8] array];
      self->_videoCodecTypes = VideoCodecs;
    }

    v4 = VideoCodecs;
  }

  FigSimpleMutexUnlock();
  v5 = self->_videoCodecTypes;

  return v5;
}

- (NSArray)videoLayoutAttributes
{
  FigSimpleMutexLock();
  if (!self->_videoLayoutAttributes)
  {
    VideoLayoutTags = FigAlternateGetVideoLayoutTags(self->_alternate);
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = 0;
    if (!VideoLayoutTags)
    {
      goto LABEL_4;
    }

LABEL_3:
    for (i = CFArrayGetCount(VideoLayoutTags); v5 < i; i = 0)
    {
      v7 = [[FigAlternateObjCVideoLayoutAttributes alloc] initWithTagCollection:CFArrayGetValueAtIndex(VideoLayoutTags, v5)];
      [v4 addObject:v7];

      ++v5;
      if (VideoLayoutTags)
      {
        goto LABEL_3;
      }

LABEL_4:
      ;
    }

    self->_videoLayoutAttributes = v4;
  }

  FigSimpleMutexUnlock();
  v8 = self->_videoLayoutAttributes;

  return v8;
}

- (void)dealloc
{
  alternate = self->_alternate;
  if (alternate)
  {
    CFRelease(alternate);
  }

  FigSimpleMutexDestroy();
  v4.receiver = self;
  v4.super_class = FigAlternateObjCVideoAttributes;
  [(FigAlternateObjCVideoAttributes *)&v4 dealloc];
}

- (CGSize)presentationSize
{
  width = self->_presentationSize.width;
  height = self->_presentationSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end