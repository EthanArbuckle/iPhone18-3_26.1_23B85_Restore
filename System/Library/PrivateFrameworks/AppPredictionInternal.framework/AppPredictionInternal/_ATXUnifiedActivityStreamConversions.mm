@interface _ATXUnifiedActivityStreamConversions
+ (id)sessionPublisherFromTransitionPublisher:(id)publisher;
@end

@implementation _ATXUnifiedActivityStreamConversions

+ (id)sessionPublisherFromTransitionPublisher:(id)publisher
{
  v3 = MEMORY[0x277D42648];
  publisherCopy = publisher;
  v5 = [v3 tupleWithFirst:0 second:0];
  v6 = [publisherCopy scanWithInitial:v5 nextPartialResult:&__block_literal_global_15];

  v7 = [v6 filterWithIsIncluded:&__block_literal_global_18_1];
  v8 = [v7 mapWithTransform:&__block_literal_global_21_2];
  v9 = [v8 filterWithIsIncluded:&__block_literal_global_25_6];

  return v9;
}

@end