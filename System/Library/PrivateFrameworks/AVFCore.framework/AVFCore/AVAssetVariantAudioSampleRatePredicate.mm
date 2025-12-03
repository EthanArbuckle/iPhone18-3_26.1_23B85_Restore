@interface AVAssetVariantAudioSampleRatePredicate
- (AVAssetVariantAudioSampleRatePredicate)initWithSampleRate:(double)rate mediaSelectionOption:(id)option operatorType:(unint64_t)type;
@end

@implementation AVAssetVariantAudioSampleRatePredicate

- (AVAssetVariantAudioSampleRatePredicate)initWithSampleRate:(double)rate mediaSelectionOption:(id)option operatorType:(unint64_t)type
{
  v9 = NSSelectorFromString(&cfstr_Samplerateform.isa);
  v11.receiver = self;
  v11.super_class = AVAssetVariantAudioSampleRatePredicate;
  return -[AVAssetVariantRenditionSpecificAudioAttributePredicate initWithAttributeSelector:mediaSelectionOption:value:operatorType:](&v11, sel_initWithAttributeSelector_mediaSelectionOption_value_operatorType_, v9, option, [MEMORY[0x1E696AD98] numberWithDouble:rate], type);
}

@end