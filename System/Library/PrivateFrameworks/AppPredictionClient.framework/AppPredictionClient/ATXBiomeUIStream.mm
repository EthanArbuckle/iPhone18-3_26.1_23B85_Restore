@interface ATXBiomeUIStream
- (id)deprecatedPublisherFromStartTime:(double)time;
- (id)publisherFromStartTime:(double)time;
- (id)publisherFromStartTime:(double)time consumerSubType:(unsigned __int8)type;
- (void)donateUIEvent:(id)event;
@end

@implementation ATXBiomeUIStream

- (id)publisherFromStartTime:(double)time
{
  v6.receiver = self;
  v6.super_class = ATXBiomeUIStream;
  v3 = [(ATXUniversalBiomeUIStream *)&v6 genericEventPublisherFromStartTime:time];
  v4 = [v3 filterWithIsIncluded:&__block_literal_global_39];

  return v4;
}

uint64_t __43__ATXBiomeUIStream_publisherFromStartTime___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)publisherFromStartTime:(double)time consumerSubType:(unsigned __int8)type
{
  v7.receiver = self;
  v7.super_class = ATXBiomeUIStream;
  v4 = [(ATXUniversalBiomeUIStream *)&v7 genericEventPublisherFromStartTime:type consumerSubType:time];
  v5 = [v4 filterWithIsIncluded:&__block_literal_global_14];

  return v5;
}

uint64_t __59__ATXBiomeUIStream_publisherFromStartTime_consumerSubType___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)deprecatedPublisherFromStartTime:(double)time
{
  v6.receiver = self;
  v6.super_class = ATXBiomeUIStream;
  v3 = [(ATXUniversalBiomeUIStream *)&v6 deprecatedGenericEventPublisherFromStartTime:time];
  v4 = [v3 filterWithIsIncluded:&__block_literal_global_18];

  return v4;
}

uint64_t __53__ATXBiomeUIStream_deprecatedPublisherFromStartTime___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)donateUIEvent:(id)event
{
  v3.receiver = self;
  v3.super_class = ATXBiomeUIStream;
  [(ATXUniversalBiomeUIStream *)&v3 donateGenericUIEvent:event];
}

@end