@interface AESingleBookMetadataProvider
+ (id)singleBookMetadataProviderWithAssetID:(id)a3 assetURL:(id)a4 bookVersionString:(id)a5 pathToAssetContextDirectory:(id)a6 isManagedBook:(BOOL)a7;
- (AESingleBookMetadataProvider)initWithAssetID:(id)a3 assetURL:(id)a4 bookVersionString:(id)a5 pathToAssetContextDirectory:(id)a6 isManagedBook:(BOOL)a7;
- (BOOL)isManagedWithAssetID:(id)a3;
- (NSString)description;
- (id)assetURLForAssetID:(id)a3;
- (id)bookVersionStringForAssetID:(id)a3;
- (id)pathToContextDirectoryForAssetID:(id)a3;
@end

@implementation AESingleBookMetadataProvider

+ (id)singleBookMetadataProviderWithAssetID:(id)a3 assetURL:(id)a4 bookVersionString:(id)a5 pathToAssetContextDirectory:(id)a6 isManagedBook:(BOOL)a7
{
  v7 = a7;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [[AESingleBookMetadataProvider alloc] initWithAssetID:v14 assetURL:v13 bookVersionString:v12 pathToAssetContextDirectory:v11 isManagedBook:v7];

  return v15;
}

- (AESingleBookMetadataProvider)initWithAssetID:(id)a3 assetURL:(id)a4 bookVersionString:(id)a5 pathToAssetContextDirectory:(id)a6 isManagedBook:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v26.receiver = self;
  v26.super_class = AESingleBookMetadataProvider;
  v16 = [(AESingleBookMetadataProvider *)&v26 init];
  v17 = v16;
  if (v16)
  {
    [(AESingleBookMetadataProvider *)v16 setAssetID:v12];
    [(AESingleBookMetadataProvider *)v17 setAssetURL:v13];
    [(AESingleBookMetadataProvider *)v17 setBookVersionString:v14];
    [(AESingleBookMetadataProvider *)v17 setPathToAssetContextDirectory:v15];
    [(AESingleBookMetadataProvider *)v17 setManagedBook:v7];
    if (!v12)
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
  v5 = [(AESingleBookMetadataProvider *)self assetID];
  v6 = [(AESingleBookMetadataProvider *)self assetURL];
  v7 = [(AESingleBookMetadataProvider *)self bookVersionString];
  v8 = [(AESingleBookMetadataProvider *)self pathToAssetContextDirectory];
  v9 = [(AESingleBookMetadataProvider *)self isManagedBook];
  v10 = @"NO";
  if (v9)
  {
    v10 = @"YES";
  }

  v11 = [NSString stringWithFormat:@"<%@(%p) id=%@ url=%@ version=%@ cd=%@ managed=%@>", v4, self, v5, v6, v7, v8, v10];

  return v11;
}

- (id)assetURLForAssetID:(id)a3
{
  v4 = a3;
  v5 = [(AESingleBookMetadataProvider *)self assetID];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    sub_1EB614(self);
  }

  v7 = [(AESingleBookMetadataProvider *)self assetURL];

  return v7;
}

- (id)bookVersionStringForAssetID:(id)a3
{
  v4 = a3;
  v5 = [(AESingleBookMetadataProvider *)self assetID];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    sub_1EB688(self);
  }

  v7 = [(AESingleBookMetadataProvider *)self bookVersionString];

  return v7;
}

- (id)pathToContextDirectoryForAssetID:(id)a3
{
  v4 = a3;
  v5 = [(AESingleBookMetadataProvider *)self assetID];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    sub_1EB6FC(self);
  }

  v7 = [(AESingleBookMetadataProvider *)self pathToAssetContextDirectory];

  return v7;
}

- (BOOL)isManagedWithAssetID:(id)a3
{
  v4 = a3;
  v5 = [(AESingleBookMetadataProvider *)self assetID];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    sub_1EB770(self);
  }

  v7 = [(AESingleBookMetadataProvider *)self isManagedBook];

  return v7;
}

@end