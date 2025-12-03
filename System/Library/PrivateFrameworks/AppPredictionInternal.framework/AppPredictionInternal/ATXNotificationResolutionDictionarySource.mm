@interface ATXNotificationResolutionDictionarySource
- (ATXNotificationResolutionDictionarySource)initWithResolutionDictionary:(id)dictionary;
@end

@implementation ATXNotificationResolutionDictionarySource

- (ATXNotificationResolutionDictionarySource)initWithResolutionDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = ATXNotificationResolutionDictionarySource;
  v6 = [(ATXNotificationResolutionDictionarySource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resolutionDictionary, dictionary);
  }

  return v7;
}

@end