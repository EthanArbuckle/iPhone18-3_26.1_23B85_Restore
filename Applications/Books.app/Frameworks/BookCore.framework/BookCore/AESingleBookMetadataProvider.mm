@interface AESingleBookMetadataProvider
+ (id)singleBookMetadataProviderWithAssetID:(id)d assetURL:(id)l bookVersionString:(id)string pathToAssetContextDirectory:(id)directory isManagedBook:(BOOL)book;
- (AESingleBookMetadataProvider)initWithAssetID:(id)d assetURL:(id)l bookVersionString:(id)string pathToAssetContextDirectory:(id)directory isManagedBook:(BOOL)book;
- (BOOL)isManagedWithAssetID:(id)d;
- (NSString)description;
- (id)assetURLForAssetID:(id)d;
- (id)bookVersionStringForAssetID:(id)d;
- (id)pathToContextDirectoryForAssetID:(id)d;
@end

@implementation AESingleBookMetadataProvider

+ (id)singleBookMetadataProviderWithAssetID:(id)d assetURL:(id)l bookVersionString:(id)string pathToAssetContextDirectory:(id)directory isManagedBook:(BOOL)book
{
  bookCopy = book;
  directoryCopy = directory;
  stringCopy = string;
  lCopy = l;
  dCopy = d;
  v15 = [[AESingleBookMetadataProvider alloc] initWithAssetID:dCopy assetURL:lCopy bookVersionString:stringCopy pathToAssetContextDirectory:directoryCopy isManagedBook:bookCopy];

  return v15;
}

- (AESingleBookMetadataProvider)initWithAssetID:(id)d assetURL:(id)l bookVersionString:(id)string pathToAssetContextDirectory:(id)directory isManagedBook:(BOOL)book
{
  bookCopy = book;
  dCopy = d;
  lCopy = l;
  stringCopy = string;
  directoryCopy = directory;
  v26.receiver = self;
  v26.super_class = AESingleBookMetadataProvider;
  v16 = [(AESingleBookMetadataProvider *)&v26 init];
  v17 = v16;
  if (v16)
  {
    [(AESingleBookMetadataProvider *)v16 setAssetID:dCopy];
    [(AESingleBookMetadataProvider *)v17 setAssetURL:lCopy];
    [(AESingleBookMetadataProvider *)v17 setBookVersionString:stringCopy];
    [(AESingleBookMetadataProvider *)v17 setPathToAssetContextDirectory:directoryCopy];
    [(AESingleBookMetadataProvider *)v17 setManagedBook:bookCopy];
    if (!dCopy)
    {
      sub_1EB5CC(v17, v18, v19, v20, v21, v22, v23, v24);
      v17 = 0;
    }
  }

  return v17;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  assetID = [(AESingleBookMetadataProvider *)self assetID];
  assetURL = [(AESingleBookMetadataProvider *)self assetURL];
  bookVersionString = [(AESingleBookMetadataProvider *)self bookVersionString];
  pathToAssetContextDirectory = [(AESingleBookMetadataProvider *)self pathToAssetContextDirectory];
  isManagedBook = [(AESingleBookMetadataProvider *)self isManagedBook];
  v10 = @"NO";
  if (isManagedBook)
  {
    v10 = @"YES";
  }

  v11 = [NSString stringWithFormat:@"<%@(%p) id=%@ url=%@ version=%@ cd=%@ managed=%@>", v4, self, assetID, assetURL, bookVersionString, pathToAssetContextDirectory, v10];

  return v11;
}

- (id)assetURLForAssetID:(id)d
{
  dCopy = d;
  assetID = [(AESingleBookMetadataProvider *)self assetID];
  v6 = [dCopy isEqualToString:assetID];

  if ((v6 & 1) == 0)
  {
    sub_1EB614(self);
  }

  assetURL = [(AESingleBookMetadataProvider *)self assetURL];

  return assetURL;
}

- (id)bookVersionStringForAssetID:(id)d
{
  dCopy = d;
  assetID = [(AESingleBookMetadataProvider *)self assetID];
  v6 = [dCopy isEqualToString:assetID];

  if ((v6 & 1) == 0)
  {
    sub_1EB688(self);
  }

  bookVersionString = [(AESingleBookMetadataProvider *)self bookVersionString];

  return bookVersionString;
}

- (id)pathToContextDirectoryForAssetID:(id)d
{
  dCopy = d;
  assetID = [(AESingleBookMetadataProvider *)self assetID];
  v6 = [dCopy isEqualToString:assetID];

  if ((v6 & 1) == 0)
  {
    sub_1EB6FC(self);
  }

  pathToAssetContextDirectory = [(AESingleBookMetadataProvider *)self pathToAssetContextDirectory];

  return pathToAssetContextDirectory;
}

- (BOOL)isManagedWithAssetID:(id)d
{
  dCopy = d;
  assetID = [(AESingleBookMetadataProvider *)self assetID];
  v6 = [dCopy isEqualToString:assetID];

  if ((v6 & 1) == 0)
  {
    sub_1EB770(self);
  }

  isManagedBook = [(AESingleBookMetadataProvider *)self isManagedBook];

  return isManagedBook;
}

@end