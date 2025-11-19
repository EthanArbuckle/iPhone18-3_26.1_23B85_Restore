@interface THAsset
+ (BOOL)asset:(id)a3 isSameAsAsset:(id)a4;
+ (THAsset)assetWithAsset:(id)a3;
+ (THAsset)assetWithURL:(id)a3 assetID:(id)a4;
+ (THAsset)assetWithURL:(id)a3 assetID:(id)a4 type:(id)a5;
- (BOOL)isEpub;
- (BOOL)isManagedBook;
- (BOOL)isSample;
- (NSString)author;
- (NSString)genre;
- (NSString)storeID;
- (NSString)title;
- (NSURL)storeUrl;
- (THAsset)initWithURL:(id)a3 assetID:(id)a4 type:(id)a5;
- (id)p_libraryManagerInfoWithCoordination:(BOOL)a3;
- (void)dealloc;
@end

@implementation THAsset

- (THAsset)initWithURL:(id)a3 assetID:(id)a4 type:(id)a5
{
  v10.receiver = self;
  v10.super_class = THAsset;
  v8 = [(THAsset *)&v10 init];
  if (v8)
  {
    v8->mURL = a3;
    v8->mAssetID = [a4 copy];
    v8->mType = [a5 copy];
    v8->_unfairLock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

+ (THAsset)assetWithURL:(id)a3 assetID:(id)a4 type:(id)a5
{
  v5 = [[a1 alloc] initWithURL:a3 assetID:a4 type:a5];

  return v5;
}

+ (THAsset)assetWithURL:(id)a3 assetID:(id)a4
{
  v4 = [[a1 alloc] initWithURL:a3 assetID:a4];

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THAsset;
  [(THAsset *)&v3 dealloc];
}

+ (BOOL)asset:(id)a3 isSameAsAsset:(id)a4
{
  result = 0;
  if (a3 && a4)
  {
    return ![objc_msgSend(a3 "assetType")] && objc_msgSend(objc_msgSend(a3, "assetID"), "compare:", objc_msgSend(a4, "assetID")) == 0;
  }

  return result;
}

- (BOOL)isEpub
{
  v2 = [(NSString *)[(NSURL *)[(THAsset *)self url] pathExtension] lowercaseString];

  return [@"epub" isEqualToString:v2];
}

+ (THAsset)assetWithAsset:(id)a3
{
  v4 = [a3 url];
  v5 = [a3 assetID];

  return [THAsset assetWithURL:v4 assetID:v5];
}

- (id)p_libraryManagerInfoWithCoordination:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_unfairLock);
  if (!self->_metadata)
  {
    self->_metadata = [+[AEAssetEngine libraryMgr](AEAssetEngine "libraryMgr")];
  }

  os_unfair_lock_unlock(&self->_unfairLock);
  return self->_metadata;
}

- (NSURL)storeUrl
{
  v3 = [+[AEAssetEngine storeMgr](AEAssetEngine "storeMgr")];
  v4 = [(THAsset *)self storeID];

  return [v3 bookUrlForStoreId:v4];
}

- (NSString)author
{
  result = [(THAsset *)self p_libraryManagerInfo];
  if (result)
  {

    return [IMLibraryPlist authorFromPlistEntry:result];
  }

  return result;
}

- (NSString)title
{
  result = [(THAsset *)self p_libraryManagerInfo];
  if (result)
  {

    return [IMLibraryPlist titleFromPlistEntry:result];
  }

  return result;
}

- (NSString)storeID
{
  result = [(THAsset *)self p_libraryManagerInfo];
  if (result)
  {

    return [IMLibraryPlist storeIdFromPlistEntry:result];
  }

  return result;
}

- (NSString)genre
{
  result = [(THAsset *)self p_libraryManagerInfo];
  if (result)
  {

    return [IMLibraryPlist genreFromPlistEntry:result];
  }

  return result;
}

- (BOOL)isSample
{
  v2 = [(THAsset *)self p_libraryManagerInfo];
  if (v2)
  {
    v3 = [IMLibraryPlist isSampleFromPlistEntry:v2];

    LOBYTE(v2) = [v3 BOOLValue];
  }

  return v2;
}

- (BOOL)isManagedBook
{
  v2 = [IMLibraryPlist isManagedBookFromURL:[(THAsset *)self url]];

  return [v2 BOOLValue];
}

@end