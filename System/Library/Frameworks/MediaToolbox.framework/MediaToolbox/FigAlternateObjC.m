@interface FigAlternateObjC
+ (id)dummy;
- (FigAlternateObjC)initWithFigAlternate:(OpaqueFigAlternate *)a3;
- (FigAlternateObjCAudioAttributes)audioAttributes;
- (FigAlternateObjCVideoAttributes)videoAttributes;
- (void)dealloc;
@end

@implementation FigAlternateObjC

- (FigAlternateObjC)initWithFigAlternate:(OpaqueFigAlternate *)a3
{
  v11.receiver = self;
  v11.super_class = FigAlternateObjC;
  v4 = [(FigAlternateObjC *)&v11 init];
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
    PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(v5);
    if (PlaylistAlternateURL)
    {
      PlaylistAlternateURL = CFRetain(PlaylistAlternateURL);
    }

    v4->_url = PlaylistAlternateURL;
    IsPeakBitRateDeclared = FigAlternateIsPeakBitRateDeclared(a3);
    AverageBitRate = -1.0;
    DeclaredPeakBitRate = -1.0;
    if (IsPeakBitRateDeclared)
    {
      DeclaredPeakBitRate = FigAlternateGetDeclaredPeakBitRate(a3);
    }

    v4->_peakBitRate = DeclaredPeakBitRate;
    if (FigAlternateIsAverageBitRateDeclared(a3))
    {
      AverageBitRate = FigAlternateGetAverageBitRate(a3);
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