@interface LDAPSettingsPlugin
- (id)supportedAccountTypeIdentifiers;
@end

@implementation LDAPSettingsPlugin

- (id)supportedAccountTypeIdentifiers
{
  v4 = ACAccountTypeIdentifierLDAP;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

@end