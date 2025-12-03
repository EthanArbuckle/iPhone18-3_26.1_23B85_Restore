@interface _EXAppExtensionBrowserConfiguration
- (NSArray)extensionPointIdentifiers;
- (void)setExtensionPointIdentifiers:(id)identifiers;
@end

@implementation _EXAppExtensionBrowserConfiguration

- (NSArray)extensionPointIdentifiers
{
  v2 = *(self + OBJC_IVAR____EXAppExtensionBrowserConfiguration_extensionPointIdentifiers);

  v3 = sub_1D2A00498();

  return v3;
}

- (void)setExtensionPointIdentifiers:(id)identifiers
{
  v4 = sub_1D2A004A8();
  v5 = *(self + OBJC_IVAR____EXAppExtensionBrowserConfiguration_extensionPointIdentifiers);
  *(self + OBJC_IVAR____EXAppExtensionBrowserConfiguration_extensionPointIdentifiers) = v4;
}

@end