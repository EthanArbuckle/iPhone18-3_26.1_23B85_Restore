@interface FPAppLibraryCollection
- (BOOL)isCollectionValidForItem:(id)item;
- (id)description;
@end

@implementation FPAppLibraryCollection

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  settings = [(FPExtensionCollection *)self settings];
  v6 = [v3 stringWithFormat:@"<%@:%p settings: %@>", v4, self, settings];

  return v6;
}

- (BOOL)isCollectionValidForItem:(id)item
{
  itemCopy = item;
  if ([itemCopy isValidAppLibrary])
  {
    providerDomainID = [itemCopy providerDomainID];
    enumeratedItemID = [(FPExtensionCollection *)self enumeratedItemID];
    providerDomainID2 = [enumeratedItemID providerDomainID];
    v8 = [providerDomainID isEqualToString:providerDomainID2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end