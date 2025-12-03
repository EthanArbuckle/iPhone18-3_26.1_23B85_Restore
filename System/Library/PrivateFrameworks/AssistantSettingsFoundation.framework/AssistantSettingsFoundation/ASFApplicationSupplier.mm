@interface ASFApplicationSupplier
- (id)applicationForBundleId:(id)id;
@end

@implementation ASFApplicationSupplier

- (id)applicationForBundleId:(id)id
{
  idCopy = id;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:idCopy allowPlaceholder:0 error:0];
  if (v4)
  {
    v5 = [ASFApplication alloc];
    localizedName = [v4 localizedName];
    v7 = [(ASFApplication *)v5 initWithBundleId:idCopy localizedName:localizedName];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end