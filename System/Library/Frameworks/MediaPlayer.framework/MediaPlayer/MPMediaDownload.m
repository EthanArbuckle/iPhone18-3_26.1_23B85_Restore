@interface MPMediaDownload
+ (id)MPMediaDownloadsFromATAssets:(id)a3;
+ (id)MPMediaDownloadsFromMPStoreDownloads:(id)a3;
+ (int64_t)_downloadReasonFromStoreDownload:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MPMediaDownload)initWithATAsset:(id)a3;
- (MPMediaDownload)initWithMPStoreDownload:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation MPMediaDownload

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = 1;
  if (v4 != self)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ((v5 = [(MPMediaDownload *)self deviceLibraryID]) == 0 || v5 != [(MPMediaDownload *)v4 deviceLibraryID]) && ((v6 = [(MPMediaDownload *)self storeItemID]) == 0 || v6 != [(MPMediaDownload *)v4 storeItemID]))
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

- (MPMediaDownload)initWithATAsset:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MPMediaDownload;
  v5 = [(MPMediaDownload *)&v13 init];
  if (v5)
  {
    v6 = [v4 identifier];
    v5->_deviceLibraryID = [v6 longLongValue];

    v7 = [v4 storeInfo];
    v8 = [v7 adamID];
    v5->_storeItemID = [v8 longLongValue];

    [v4 downloadProgress];
    v5->_downloadProgress = v9;
    v10 = [v4 downloadOnly];
    v11 = 2;
    if (!v10)
    {
      v11 = 0;
    }

    v5->_downloadReason = v11;
    v5->_downloadPausedReason = [MPMediaDownload MPMediaDownloadPauseReasonForATAsset:v4];
  }

  return v5;
}

- (MPMediaDownload)initWithMPStoreDownload:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MPMediaDownload;
  v5 = [(MPMediaDownload *)&v8 init];
  if (v5)
  {
    v5->_deviceLibraryID = [v4 libraryItemIdentifier];
    v5->_storeItemID = [v4 storeItemIdentifier];
    [v4 percentComplete];
    v5->_downloadProgress = v6;
    v5->_downloadReason = [MPMediaDownload _downloadReasonFromStoreDownload:v4];
    v5->_downloadPausedReason = 0;
  }

  return v5;
}

+ (int64_t)_downloadReasonFromStoreDownload:(id)a3
{
  v3 = [a3 reason];
  if (v3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v3 == 2);
  }
}

+ (id)MPMediaDownloadsFromATAssets:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)MPMediaDownloadsFromMPStoreDownloads:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

@end