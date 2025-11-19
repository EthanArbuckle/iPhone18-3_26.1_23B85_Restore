@interface NSFileProviderKnownFolderLocation
- (NSFileProviderKnownFolderLocation)initWithExistingItemIdentifier:(id)a3;
- (NSFileProviderKnownFolderLocation)initWithParentItemIdentifier:(id)a3 filename:(id)a4;
@end

@implementation NSFileProviderKnownFolderLocation

- (NSFileProviderKnownFolderLocation)initWithParentItemIdentifier:(id)a3 filename:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[FPKnownFolderPathMatchingLocation alloc] initWithParentItemIdentifier:v7 filename:v6];

  return &v8->super;
}

- (NSFileProviderKnownFolderLocation)initWithExistingItemIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[FPKnownFolderExistingLocation alloc] initWithExistingItemIdentifier:v4];

  return &v5->super;
}

@end