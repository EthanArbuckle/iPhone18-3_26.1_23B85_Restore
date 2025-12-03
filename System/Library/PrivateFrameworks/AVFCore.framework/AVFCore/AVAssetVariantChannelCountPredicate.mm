@interface AVAssetVariantChannelCountPredicate
- (AVAssetVariantChannelCountPredicate)initWithChannelCount:(int64_t)count mediaSelectionOption:(id)option operatorType:(unint64_t)type;
@end

@implementation AVAssetVariantChannelCountPredicate

- (AVAssetVariantChannelCountPredicate)initWithChannelCount:(int64_t)count mediaSelectionOption:(id)option operatorType:(unint64_t)type
{
  v9 = NSSelectorFromString(&cfstr_Channelcountfo.isa);
  v11.receiver = self;
  v11.super_class = AVAssetVariantChannelCountPredicate;
  return -[AVAssetVariantRenditionSpecificAudioAttributePredicate initWithAttributeSelector:mediaSelectionOption:value:operatorType:](&v11, sel_initWithAttributeSelector_mediaSelectionOption_value_operatorType_, v9, option, [MEMORY[0x1E696AD98] numberWithInteger:count], type);
}

@end