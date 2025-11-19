@interface CNMockLoggerProvider
+ (id)loggerProvider;
@end

@implementation CNMockLoggerProvider

+ (id)loggerProvider
{
  v2 = objc_alloc_init(CNMockLoggerProvider);
  v3 = objc_alloc_init(CNMockContactsLogger);
  [(CNMockLoggerProvider *)v2 setContactsLogger:v3];

  v4 = objc_alloc_init(CNMockSpotlightIndexingLogger);
  [(CNMockLoggerProvider *)v2 setSpotlightIndexingLogger:v4];

  v5 = objc_alloc_init(CNMockFavoritesLogger);
  [(CNMockLoggerProvider *)v2 setFavoritesLogger:v5];

  v6 = objc_alloc_init(CNMockGeminiLogger);
  [(CNMockLoggerProvider *)v2 setGeminiLogger:v6];

  v7 = objc_alloc_init(CNMockAPITriageLogger);
  [(CNMockLoggerProvider *)v2 setApiTriageLogger:v7];

  return v2;
}

@end