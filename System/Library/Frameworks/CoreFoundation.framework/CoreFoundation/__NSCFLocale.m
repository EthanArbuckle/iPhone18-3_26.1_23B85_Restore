@interface __NSCFLocale
- (BOOL)isEqual:(id)a3;
- (id)displayNameForKey:(id)a3 value:(id)a4;
@end

@implementation __NSCFLocale

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (self == a3)
  {
    return 1;
  }

  return _CFNonObjCEqual(self, a3) != 0;
}

- (id)displayNameForKey:(id)a3 value:(id)a4
{
  v4 = CFLocaleCopyDisplayNameForPropertyValue(self, a3, a4);

  return v4;
}

@end