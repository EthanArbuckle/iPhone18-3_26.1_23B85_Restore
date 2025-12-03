@interface MPMediaDownload
+ (id)MPMediaDownloadsFromATAssets:(id)assets;
+ (id)MPMediaDownloadsFromMPStoreDownloads:(id)downloads;
+ (int64_t)_downloadReasonFromStoreDownload:(id)download;
- (BOOL)isEqual:(id)equal;
- (MPMediaDownload)initWithATAsset:(id)asset;
- (MPMediaDownload)initWithMPStoreDownload:(id)download;
- (id)description;
- (unint64_t)hash;
@end

@implementation MPMediaDownload

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = 1;
  if (equalCopy != self)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ((v5 = [(MPMediaDownload *)self deviceLibraryID]) == 0 || v5 != [(MPMediaDownload *)equalCopy deviceLibraryID]) && ((v6 = [(MPMediaDownload *)self storeItemID]) == 0 || v6 != [(MPMediaDownload *)equalCopy storeItemID]))
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  result = self->_deviceLibraryID;
  if (!result)
  {
    return self->_storeItemID;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %lld %lld %f %d>", v5, self->_deviceLibraryID, self->_storeItemID, *&self->_downloadProgress, self->_downloadReason];

  return v6;
}

- (MPMediaDownload)initWithATAsset:(id)asset
{
  assetCopy = asset;
  v13.receiver = self;
  v13.super_class = MPMediaDownload;
  v5 = [(MPMediaDownload *)&v13 init];
  if (v5)
  {
    identifier = [assetCopy identifier];
    v5->_deviceLibraryID = [identifier longLongValue];

    storeInfo = [assetCopy storeInfo];
    adamID = [storeInfo adamID];
    v5->_storeItemID = [adamID longLongValue];

    [assetCopy downloadProgress];
    v5->_downloadProgress = v9;
    downloadOnly = [assetCopy downloadOnly];
    v11 = 2;
    if (!downloadOnly)
    {
      v11 = 0;
    }

    v5->_downloadReason = v11;
    v5->_downloadPausedReason = [MPMediaDownload MPMediaDownloadPauseReasonForATAsset:assetCopy];
  }

  return v5;
}

- (MPMediaDownload)initWithMPStoreDownload:(id)download
{
  downloadCopy = download;
  v8.receiver = self;
  v8.super_class = MPMediaDownload;
  v5 = [(MPMediaDownload *)&v8 init];
  if (v5)
  {
    v5->_deviceLibraryID = [downloadCopy libraryItemIdentifier];
    v5->_storeItemID = [downloadCopy storeItemIdentifier];
    [downloadCopy percentComplete];
    v5->_downloadProgress = v6;
    v5->_downloadReason = [MPMediaDownload _downloadReasonFromStoreDownload:downloadCopy];
    v5->_downloadPausedReason = 0;
  }

  return v5;
}

+ (int64_t)_downloadReasonFromStoreDownload:(id)download
{
  reason = [download reason];
  if (reason == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (reason == 2);
  }
}

+ (id)MPMediaDownloadsFromATAssets:(id)assets
{
  v19 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = assetsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [MPMediaDownload alloc];
        v12 = [(MPMediaDownload *)v11 initWithATAsset:v10, v14];
        [array addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return array;
}

+ (id)MPMediaDownloadsFromMPStoreDownloads:(id)downloads
{
  v19 = *MEMORY[0x1E69E9840];
  downloadsCopy = downloads;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = downloadsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [MPMediaDownload alloc];
        v12 = [(MPMediaDownload *)v11 initWithMPStoreDownload:v10, v14];
        [array addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return array;
}

@end