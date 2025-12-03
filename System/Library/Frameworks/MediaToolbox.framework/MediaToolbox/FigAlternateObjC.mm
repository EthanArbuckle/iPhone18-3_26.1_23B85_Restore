@interface FigAlternateObjC
+ (id)dummy;
- (FigAlternateObjC)initWithFigAlternate:(OpaqueFigAlternate *)alternate;
- (FigAlternateObjCAudioAttributes)audioAttributes;
- (FigAlternateObjCVideoAttributes)videoAttributes;
- (void)dealloc;
@end

@implementation FigAlternateObjC

- (FigAlternateObjC)initWithFigAlternate:(OpaqueFigAlternate *)alternate
{
  v11.receiver = self;
  v11.super_class = FigAlternateObjC;
  v4 = [(FigAlternateObjC *)&v11 init];
  if (v4)
  {
    if (alternate)
    {
      v5 = CFRetain(alternate);
    }

    else
    {
      v5 = 0;
    }

    v4->_alternate = v5;
    PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(v5);
    if (PlaylistAlternateURL)
    {
      PlaylistAlternateURL = CFRetain(PlaylistAlternateURL);
    }

    v4->_url = PlaylistAlternateURL;
    IsPeakBitRateDeclared = FigAlternateIsPeakBitRateDeclared(alternate);
    AverageBitRate = -1.0;
    DeclaredPeakBitRate = -1.0;
    if (IsPeakBitRateDeclared)
    {
      DeclaredPeakBitRate = FigAlternateGetDeclaredPeakBitRate(alternate);
    }

    v4->_peakBitRate = DeclaredPeakBitRate;
    if (FigAlternateIsAverageBitRateDeclared(alternate))
    {
      AverageBitRate = FigAlternateGetAverageBitRate(alternate);
    }

    v4->_averageBitRate = AverageBitRate;
    v4->_mutex = FigSimpleMutexCreate();
  }

  return v4;
}

- (FigAlternateObjCVideoAttributes)videoAttributes
{
  FigSimpleMutexLock();
  if (!self->_videoAttributes && FigAlternateHasVideo(self->_alternate))
  {
    self->_videoAttributes = [[FigAlternateObjCVideoAttributes alloc] initWithFigAlternate:self->_alternate];
  }

  FigSimpleMutexUnlock();
  v3 = self->_videoAttributes;

  return v3;
}

- (FigAlternateObjCAudioAttributes)audioAttributes
{
  FigSimpleMutexLock();
  if (!self->_audioAttributes && FigAlternateHasAudio(self->_alternate))
  {
    self->_audioAttributes = [[FigAlternateObjCAudioAttributes alloc] initWithFigAlternate:self->_alternate];
  }

  FigSimpleMutexUnlock();
  v3 = self->_audioAttributes;

  return v3;
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
  v4.super_class = FigAlternateObjC;
  [(FigAlternateObjC *)&v4 dealloc];
}

+ (id)dummy
{
  v2 = objc_alloc_init(FigAlternateObjCDummy);

  return v2;
}

@end