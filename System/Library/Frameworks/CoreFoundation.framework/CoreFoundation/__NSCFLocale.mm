@interface __NSCFLocale
- (BOOL)isEqual:(id)equal;
- (id)displayNameForKey:(id)key value:(id)value;
@end

@implementation __NSCFLocale

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  if (self == equal)
  {
    return 1;
  }

  return _CFNonObjCEqual(self, equal) != 0;
}

- (id)displayNameForKey:(id)key value:(id)value
{
  v4 = CFLocaleCopyDisplayNameForPropertyValue(self, key, value);

  return v4;
}

@end