@interface ATXBiomeUIStream
- (id)deprecatedPublisherFromStartTime:(double)a3;
- (id)publisherFromStartTime:(double)a3;
- (id)publisherFromStartTime:(double)a3 consumerSubType:(unsigned __int8)a4;
- (void)donateUIEvent:(id)a3;
@end

@implementation ATXBiomeUIStream

- (id)publisherFromStartTime:(double)a3
{
  v6.receiver = self;
  v6.super_class = ATXBiomeUIStream;
  v3 = [(ATXUniversalBiomeUIStream *)&v6 genericEventPublisherFromStartTime:a3];
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

- (id)publisherFromStartTime:(double)a3 consumerSubType:(unsigned __int8)a4
{
  v7.receiver = self;
  v7.super_class = ATXBiomeUIStream;
  v4 = [(ATXUniversalBiomeUIStream *)&v7 genericEventPublisherFromStartTime:a4 consumerSubType:a3];
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

- (id)deprecatedPublisherFromStartTime:(double)a3
{
  v6.receiver = self;
  v6.super_class = ATXBiomeUIStream;
  v3 = [(ATXUniversalBiomeUIStream *)&v6 deprecatedGenericEventPublisherFromStartTime:a3];
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

- (void)donateUIEvent:(id)a3
{
  v3.receiver = self;
  v3.super_class = ATXBiomeUIStream;
  [(ATXUniversalBiomeUIStream *)&v3 donateGenericUIEvent:a3];
}

@end