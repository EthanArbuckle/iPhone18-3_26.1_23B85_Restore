@interface NSSet
- (id)nanoPrivacyAwareDescriptionForCalendars;
- (id)nanoPrivacyAwareDescriptionForEvents;
@end

@implementation NSSet

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