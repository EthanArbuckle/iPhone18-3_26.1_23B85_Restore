@interface FPKnownFolderExistingLocation
- (FPKnownFolderExistingLocation)initWithCoder:(id)coder;
- (FPKnownFolderExistingLocation)initWithExistingItemIdentifier:(id)identifier;
@end

@implementation FPKnownFolderExistingLocation

- (FPKnownFolderExistingLocation)initWithExistingItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = FPKnownFolderExistingLocation;
  v5 = [(FPKnownFolderExistingLocation *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;
  }

  return v5;
}

- (FPKnownFolderExistingLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FPKnownFolderExistingLocation;
  v5 = [(FPKnownFolderExistingLocation *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_itemIdentifier"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;
  }

  return v5;
}

@end