@interface NSArray
- (id)nanoPrivacyAwareDescriptionForCalendars;
- (id)nanoPrivacyAwareDescriptionForEvents;
@end

@implementation NSArray

- (id)nanoPrivacyAwareDescriptionForEvents
{
  v3 = objc_opt_class();

  return [NCSLogging nanoPrivacyAwareDescriptionForCollection:self expectedClass:v3];
}

- (id)nanoPrivacyAwareDescriptionForCalendars
{
  v3 = objc_opt_class();

  return [NCSLogging nanoPrivacyAwareDescriptionForCollection:self expectedClass:v3];
}

@end