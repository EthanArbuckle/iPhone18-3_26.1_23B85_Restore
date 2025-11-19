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
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end