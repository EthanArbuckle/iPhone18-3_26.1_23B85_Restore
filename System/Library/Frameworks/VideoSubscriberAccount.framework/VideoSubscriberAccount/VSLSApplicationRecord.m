@interface VSLSApplicationRecord
+ (BOOL)isAppStoreVendableForBundleIdentifier:(id)a3;
+ (BOOL)isDeletableForBundleIdentifier:(id)a3;
@end

@implementation VSLSApplicationRecord

+ (BOOL)isAppStoreVendableForBundleIdentifier:(id)a3
{
  v3 = MEMORY[0x277CC1E70];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];

  LOBYTE(v4) = [v5 isAppStoreVendable];
  return v4;
}

+ (BOOL)isDeletableForBundleIdentifier:(id)a3
{
  v3 = MEMORY[0x277CC1E70];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];

  LOBYTE(v4) = [v5 isDeletable];
  return v4;
}

@end