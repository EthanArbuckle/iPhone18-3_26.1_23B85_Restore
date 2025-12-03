@interface AVAssetVariantImmersiveAudioPredicate
- (AVAssetVariantImmersiveAudioPredicate)initWithImmersiveAudio:(BOOL)audio mediaSelectionOption:(id)option;
@end

@implementation AVAssetVariantImmersiveAudioPredicate

- (AVAssetVariantImmersiveAudioPredicate)initWithImmersiveAudio:(BOOL)audio mediaSelectionOption:(id)option
{
  audioCopy = audio;
  v7 = NSSelectorFromString(&cfstr_Isimmersivemed.isa);
  v9.receiver = self;
  v9.super_class = AVAssetVariantImmersiveAudioPredicate;
  return -[AVAssetVariantRenditionSpecificAudioAttributePredicate initWithAttributeSelector:mediaSelectionOption:value:operatorType:](&v9, sel_initWithAttributeSelector_mediaSelectionOption_value_operatorType_, v7, option, [MEMORY[0x1E696AD98] numberWithBool:audioCopy], 4);
}

@end