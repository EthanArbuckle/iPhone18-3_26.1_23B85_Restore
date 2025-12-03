@interface AVAssetVariantAudioAttributes
- (AVAssetVariantAudioAttributes)initWithFigAlternateObjC:(id)c;
- (AVAssetVariantAudioRenditionSpecificAttributes)renditionSpecificAttributesForMediaOption:(AVMediaSelectionOption *)mediaSelectionOption;
- (NSArray)formatIDs;
- (id)description;
- (void)dealloc;
@end

@implementation AVAssetVariantAudioAttributes

- (NSArray)formatIDs
{
  audioAttributes = [(FigAlternateObjC *)self->_figAlternateObjC audioAttributes];

  return [audioAttributes formatIDs];
}

- (AVAssetVariantAudioRenditionSpecificAttributes)renditionSpecificAttributesForMediaOption:(AVMediaSelectionOption *)mediaSelectionOption
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v6, v7, v8, v9, v10, "[mediaSelectionOption isKindOfClass:[AVMediaSelectionOption class]]"), 0}];
    objc_exception_throw(v13);
  }

  v11 = [[AVAssetVariantAudioRenditionSpecificAttributes alloc] initWithFigAlternateObjC:self->_figAlternateObjC mediaSelectionOption:mediaSelectionOption];

  return v11;
}

- (void)dealloc
{
  FigSimpleMutexDestroy();
  v3.receiver = self;
  v3.super_class = AVAssetVariantAudioAttributes;
  [(AVAssetVariantAudioAttributes *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, formatIDs:%@>", NSStringFromClass(v4), self, -[AVAssetVariantAudioAttributes formatIDs](self, "formatIDs")];
}

- (AVAssetVariantAudioAttributes)initWithFigAlternateObjC:(id)c
{
  v6.receiver = self;
  v6.super_class = AVAssetVariantAudioAttributes;
  v4 = [(AVAssetVariantAudioAttributes *)&v6 init];
  if (v4)
  {
    v4->_figAlternateObjC = c;
    v4->_mutex = FigSimpleMutexCreate();
  }

  return v4;
}

@end