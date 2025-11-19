@interface AVAssetVariantAudioRenditionSpecificAttributes
- (AVAssetVariantAudioRenditionSpecificAttributes)initWithFigAlternateObjC:(id)a3 mediaSelectionOption:(id)a4;
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

- (AVAssetVariantAudioRenditionSpecificAttributes)initWithFigAlternateObjC:(id)a3 mediaSelectionOption:(id)a4
{
  v8.receiver = self;
  v8.super_class = AVAssetVariantAudioRenditionSpecificAttributes;
  v6 = [(AVAssetVariantAudioRenditionSpecificAttributes *)&v8 init];
  if (v6)
  {
    v6->_figAlternateObjC = a3;
    v6->_mediaSelectionOption = a4;
  }

  return v6;
}

@end