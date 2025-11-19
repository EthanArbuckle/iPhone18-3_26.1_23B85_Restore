@interface ATXNotificationResolutionDictionarySource
- (ATXNotificationResolutionDictionarySource)initWithResolutionDictionary:(id)a3;
@end

@implementation ATXNotificationResolutionDictionarySource

- (ATXNotificationResolutionDictionarySource)initWithResolutionDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXNotificationResolutionDictionarySource;
  v6 = [(ATXNotificationResolutionDictionarySource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resolutionDictionary, a3);
  }

  return v7;
}

@end