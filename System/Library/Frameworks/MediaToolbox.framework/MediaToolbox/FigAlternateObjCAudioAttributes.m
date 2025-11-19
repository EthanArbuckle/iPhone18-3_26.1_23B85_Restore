@interface FigAlternateObjCAudioAttributes
- (FigAlternateObjCAudioAttributes)initWithFigAlternate:(OpaqueFigAlternate *)a3;
- (NSArray)formatIDs;
- (id)channelCountForMediaOption:(id)a3;
- (id)isBinauralMediaOption:(id)a3;
- (id)isDownmixMediaOption:(id)a3;
- (id)isImmersiveMediaOption:(id)a3;
- (id)sampleRateForMediaOption:(id)a3;
- (void)dealloc;
@end

@implementation FigAlternateObjCAudioAttributes

- (FigAlternateObjCAudioAttributes)initWithFigAlternate:(OpaqueFigAlternate *)a3
{
  v7.receiver = self;
  v7.super_class = FigAlternateObjCAudioAttributes;
  v4 = [(FigAlternateObjCAudioAttributes *)&v7 init];
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
    v4->_mutex = FigSimpleMutexCreate();
  }

  return v4;
}

- (NSArray)formatIDs
{
  FigSimpleMutexLock();
  if (!self->_formatIDs)
  {
    AudioFormatIDs = FigAlternateGetAudioFormatIDs(self->_alternate);
    self->_formatIDs = AudioFormatIDs;
    if (!AudioFormatIDs)
    {
      AudioFormatIDs = [MEMORY[0x1E695DEC8] array];
      self->_formatIDs = AudioFormatIDs;
    }

    v4 = AudioFormatIDs;
  }

  FigSimpleMutexUnlock();
  v5 = self->_formatIDs;

  return v5;
}

- (id)channelCountForMediaOption:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"MediaSelectionOptionsPersistentID"];
  if (!v4)
  {
    return &unk_1F0B6F3D0;
  }

  v5 = MEMORY[0x1E696AD98];
  DeclaredAudioChannelCount = FigAlternateGetDeclaredAudioChannelCount(self->_alternate, v4, 0);

  return [v5 numberWithInt:DeclaredAudioChannelCount];
}

- (id)isBinauralMediaOption:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"MediaSelectionOptionsPersistentID"];
  if (!v4)
  {
    return MEMORY[0x1E695E110];
  }

  v7 = 0;
  if (FigAlternateGetDeclaredAudioChannelCount(self->_alternate, v4, &v7) == 2)
  {
    v5 = (v7 >> 1) & 1;
  }

  else
  {
    v5 = 0;
  }

  return [MEMORY[0x1E696AD98] numberWithInt:v5];
}

- (id)isImmersiveMediaOption:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"MediaSelectionOptionsPersistentID"];
  if (!v4)
  {
    return MEMORY[0x1E695E110];
  }

  v7 = 0;
  if (FigAlternateGetDeclaredAudioChannelCount(self->_alternate, v4, &v7) == 2)
  {
    v5 = (v7 >> 3) & 1;
  }

  else
  {
    v5 = 0;
  }

  return [MEMORY[0x1E696AD98] numberWithInt:v5];
}

- (id)isDownmixMediaOption:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"MediaSelectionOptionsPersistentID"];
  if (!v4)
  {
    return MEMORY[0x1E695E110];
  }

  v6 = 0;
  FigAlternateGetDeclaredAudioChannelCount(self->_alternate, v4, &v6);
  return [MEMORY[0x1E696AD98] numberWithInt:(v6 >> 2) & 1];
}

- (id)sampleRateForMediaOption:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"MediaSelectionOptionsPersistentID"];
  if (!v4)
  {
    return &unk_1F0B6F418;
  }

  v5 = MEMORY[0x1E696AD98];
  AudioSampleRate = FigAlternateGetAudioSampleRate(self->_alternate, v4);

  return [v5 numberWithDouble:AudioSampleRate];
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
  v4.super_class = FigAlternateObjCAudioAttributes;
  [(FigAlternateObjCAudioAttributes *)&v4 dealloc];
}

@end