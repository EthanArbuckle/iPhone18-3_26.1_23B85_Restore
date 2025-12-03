@interface THAsset
+ (BOOL)asset:(id)asset isSameAsAsset:(id)asAsset;
+ (THAsset)assetWithAsset:(id)asset;
+ (THAsset)assetWithURL:(id)l assetID:(id)d;
+ (THAsset)assetWithURL:(id)l assetID:(id)d type:(id)type;
- (BOOL)isEpub;
- (BOOL)isManagedBook;
- (BOOL)isSample;
- (NSString)author;
- (NSString)genre;
- (NSString)storeID;
- (NSString)title;
- (NSURL)storeUrl;
- (THAsset)initWithURL:(id)l assetID:(id)d type:(id)type;
- (id)p_libraryManagerInfoWithCoordination:(BOOL)coordination;
- (void)dealloc;
@end

@implementation THAsset

- (THAsset)initWithURL:(id)l assetID:(id)d type:(id)type
{
  v10.receiver = self;
  v10.super_class = THAsset;
  v8 = [(THAsset *)&v10 init];
  if (v8)
  {
    v8->mURL = l;
    v8->mAssetID = [d copy];
    v8->mType = [type copy];
    v8->_unfairLock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

+ (THAsset)assetWithURL:(id)l assetID:(id)d type:(id)type
{
  v5 = [[self alloc] initWithURL:l assetID:d type:type];

  return v5;
}

+ (THAsset)assetWithURL:(id)l assetID:(id)d
{
  v4 = [[self alloc] initWithURL:l assetID:d];

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THAsset;
  [(THAsset *)&v3 dealloc];
}

+ (BOOL)asset:(id)asset isSameAsAsset:(id)asAsset
{
  result = 0;
  if (asset && asAsset)
  {
    return ![objc_msgSend(asset "assetType")] && objc_msgSend(objc_msgSend(asset, "assetID"), "compare:", objc_msgSend(asAsset, "assetID")) == 0;
  }

  return result;
}

- (BOOL)isEpub
{
  lowercaseString = [(NSString *)[(NSURL *)[(THAsset *)self url] pathExtension] lowercaseString];

  return [@"epub" isEqualToString:lowercaseString];
}

+ (THAsset)assetWithAsset:(id)asset
{
  v4 = [asset url];
  assetID = [asset assetID];

  return [THAsset assetWithURL:v4 assetID:assetID];
}

- (id)p_libraryManagerInfoWithCoordination:(BOOL)coordination
{
  coordinationCopy = coordination;
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
  storeID = [(THAsset *)self storeID];

  return [v3 bookUrlForStoreId:storeID];
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
  p_libraryManagerInfo = [(THAsset *)self p_libraryManagerInfo];
  if (p_libraryManagerInfo)
  {
    v3 = [IMLibraryPlist isSampleFromPlistEntry:p_libraryManagerInfo];

    LOBYTE(p_libraryManagerInfo) = [v3 BOOLValue];
  }

  return p_libraryManagerInfo;
}

- (BOOL)isManagedBook
{
  v2 = [IMLibraryPlist isManagedBookFromURL:[(THAsset *)self url]];

  return [v2 BOOLValue];
}

@end