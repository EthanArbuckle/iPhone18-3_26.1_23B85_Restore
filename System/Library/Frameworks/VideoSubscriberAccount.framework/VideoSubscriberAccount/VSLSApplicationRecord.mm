@interface VSLSApplicationRecord
+ (BOOL)isAppStoreVendableForBundleIdentifier:(id)identifier;
+ (BOOL)isDeletableForBundleIdentifier:(id)identifier;
@end

@implementation VSLSApplicationRecord

+ (BOOL)isAppStoreVendableForBundleIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CC1E70];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:0];

  LOBYTE(identifierCopy) = [v5 isAppStoreVendable];
  return identifierCopy;
}

+ (BOOL)isDeletableForBundleIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CC1E70];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:0];

  LOBYTE(identifierCopy) = [v5 isDeletable];
  return identifierCopy;
}

@end