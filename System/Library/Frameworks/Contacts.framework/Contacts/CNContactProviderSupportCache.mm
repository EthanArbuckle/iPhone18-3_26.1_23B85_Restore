@interface CNContactProviderSupportCache
+ (_TtC8Contacts29CNContactProviderSupportCache)sharedCache;
- (NSArray)cachedBundleIdentifiers;
- (void)invalidateCache;
@end

@implementation CNContactProviderSupportCache

+ (_TtC8Contacts29CNContactProviderSupportCache)sharedCache
{
  if (qword_1EAECB7E8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAECB7F0;

  return v3;
}

- (NSArray)cachedBundleIdentifiers
{
  swift_beginAccess();

  sub_195621320(v2);
  v3 = sub_19565D3EC();

  return v3;
}

- (void)invalidateCache
{
  selfCopy = self;
  sub_195622100(selfCopy);
}

@end