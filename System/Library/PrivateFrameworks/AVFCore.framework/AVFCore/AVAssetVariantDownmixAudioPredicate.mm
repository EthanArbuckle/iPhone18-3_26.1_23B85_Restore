@interface AVAssetVariantDownmixAudioPredicate
- (AVAssetVariantDownmixAudioPredicate)initWithDownmixAudio:(BOOL)audio mediaSelectionOption:(id)option;
@end

@implementation AVAssetVariantDownmixAudioPredicate

- (AVAssetVariantDownmixAudioPredicate)initWithDownmixAudio:(BOOL)audio mediaSelectionOption:(id)option
{
  audioCopy = audio;
  v7 = NSSelectorFromString(&cfstr_Isdownmixmedia.isa);
  v9.receiver = self;
  v9.super_class = AVAssetVariantDownmixAudioPredicate;
  return -[AVAssetVariantRenditionSpecificAudioAttributePredicate initWithAttributeSelector:mediaSelectionOption:value:operatorType:](&v9, sel_initWithAttributeSelector_mediaSelectionOption_value_operatorType_, v7, option, [MEMORY[0x1E696AD98] numberWithBool:audioCopy], 4);
}

@end