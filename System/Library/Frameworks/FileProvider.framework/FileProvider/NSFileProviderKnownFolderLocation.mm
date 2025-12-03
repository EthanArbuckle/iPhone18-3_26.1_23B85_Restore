@interface NSFileProviderKnownFolderLocation
- (NSFileProviderKnownFolderLocation)initWithExistingItemIdentifier:(id)identifier;
- (NSFileProviderKnownFolderLocation)initWithParentItemIdentifier:(id)identifier filename:(id)filename;
@end

@implementation NSFileProviderKnownFolderLocation

- (NSFileProviderKnownFolderLocation)initWithParentItemIdentifier:(id)identifier filename:(id)filename
{
  filenameCopy = filename;
  identifierCopy = identifier;
  v8 = [[FPKnownFolderPathMatchingLocation alloc] initWithParentItemIdentifier:identifierCopy filename:filenameCopy];

  return &v8->super;
}

- (NSFileProviderKnownFolderLocation)initWithExistingItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[FPKnownFolderExistingLocation alloc] initWithExistingItemIdentifier:identifierCopy];

  return &v5->super;
}

@end