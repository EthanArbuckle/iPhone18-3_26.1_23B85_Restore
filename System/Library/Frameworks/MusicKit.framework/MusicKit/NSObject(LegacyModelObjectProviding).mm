@interface NSObject(LegacyModelObjectProviding)
- (id)musicKit_sanitizedLegacyModelObject;
@end

@implementation NSObject(LegacyModelObjectProviding)

- (id)musicKit_sanitizedLegacyModelObject
{
  getMPModelObjectClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end