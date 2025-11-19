@interface FPKnownFolderExistingLocation
- (FPKnownFolderExistingLocation)initWithCoder:(id)a3;
- (FPKnownFolderExistingLocation)initWithExistingItemIdentifier:(id)a3;
@end

@implementation FPKnownFolderExistingLocation

- (FPKnownFolderExistingLocation)initWithExistingItemIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FPKnownFolderExistingLocation;
  v5 = [(FPKnownFolderExistingLocation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;
  }

  return v5;
}

- (FPKnownFolderExistingLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FPKnownFolderExistingLocation;
  v5 = [(FPKnownFolderExistingLocation *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_itemIdentifier"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;
  }

  return v5;
}

@end