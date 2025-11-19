@interface FPAppLibraryCollection
- (BOOL)isCollectionValidForItem:(id)a3;
- (id)description;
@end

@implementation FPAppLibraryCollection

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(FPExtensionCollection *)self settings];
  v6 = [v3 stringWithFormat:@"<%@:%p settings: %@>", v4, self, v5];

  return v6;
}

- (BOOL)isCollectionValidForItem:(id)a3
{
  v4 = a3;
  if ([v4 isValidAppLibrary])
  {
    v5 = [v4 providerDomainID];
    v6 = [(FPExtensionCollection *)self enumeratedItemID];
    v7 = [v6 providerDomainID];
    v8 = [v5 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end