@interface AVAssetVariantAudioRenditionSpecificAttributes
- (AVAssetVariantAudioRenditionSpecificAttributes)initWithFigAlternateObjC:(id)c mediaSelectionOption:(id)option;
- (BOOL)isBinaural;
- (BOOL)isDownmix;
- (BOOL)isImmersive;
- (NSInteger)channelCount;
- (double)sampleRate;
- (void)dealloc;
@end

@implementation AVAssetVariantAudioRenditionSpecificAttributes

- (NSInteger)channelCount
{
  v2 = [-[FigAlternateObjC audioAttributes](self->_figAlternateObjC "audioAttributes")];

  return [v2 integerValue];
}

- (BOOL)isBinaural
{
  v2 = [-[FigAlternateObjC audioAttributes](self->_figAlternateObjC "audioAttributes")];

  return [v2 BOOLValue];
}

- (BOOL)isImmersive
{
  v2 = [-[FigAlternateObjC audioAttributes](self->_figAlternateObjC "audioAttributes")];

  return [v2 BOOLValue];
}

- (BOOL)isDownmix
{
  v2 = [-[FigAlternateObjC audioAttributes](self->_figAlternateObjC "audioAttributes")];

  return [v2 BOOLValue];
}

- (double)sampleRate
{
  v2 = [-[FigAlternateObjC audioAttributes](self->_figAlternateObjC "audioAttributes")];

  [v2 doubleValue];
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetVariantAudioRenditionSpecificAttributes;
  [(AVAssetVariantAudioRenditionSpecificAttributes *)&v3 dealloc];
}

- (AVAssetVariantAudioRenditionSpecificAttributes)initWithFigAlternateObjC:(id)c mediaSelectionOption:(id)option
{
  v8.receiver = self;
  v8.super_class = AVAssetVariantAudioRenditionSpecificAttributes;
  v6 = [(AVAssetVariantAudioRenditionSpecificAttributes *)&v8 init];
  if (v6)
  {
    v6->_figAlternateObjC = c;
    v6->_mediaSelectionOption = option;
  }

  return v6;
}

@end