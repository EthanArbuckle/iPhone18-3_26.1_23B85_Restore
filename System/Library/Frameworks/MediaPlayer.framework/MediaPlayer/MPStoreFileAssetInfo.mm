@interface MPStoreFileAssetInfo
- (MPStoreFileAssetInfo)initWithiTunesCloudStoreFileAssetInfo:(id)a3;
- (NSArray)fairPlayInfoList;
- (int64_t)flavorType;
- (int64_t)protectionType;
@end

@implementation MPStoreFileAssetInfo

- (int64_t)protectionType
{
  result = [(ICStoreFileAssetInfo *)self->_internalInfo protectionType];
  if ((result - 1) >= 4)
  {
    return 0;
  }

  return result;
}

- (int64_t)flavorType
{
  v2 = [(ICStoreFileAssetInfo *)self->_internalInfo flavorType];
  if (v2 == 203)
  {
    v3 = 203;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 202)
  {
    v3 = 202;
  }

  if (v2 == 201)
  {
    v4 = 201;
  }

  else
  {
    v4 = 0;
  }

  if (v2 == 104)
  {
    v4 = 104;
  }

  if (v2 <= 201)
  {
    v3 = v4;
  }

  if (v2 == 103)
  {
    v5 = 103;
  }

  else
  {
    v5 = 0;
  }

  if (v2 == 102)
  {
    v5 = 102;
  }

  if (v2 == 101)
  {
    v5 = 101;
  }

  if (v2 <= 103)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

- (NSArray)fairPlayInfoList
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [(ICStoreFileAssetInfo *)self->_internalInfo fairPlayInfoList];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [[MPStoreFileAssetFairPlayInfo alloc] initWithiTunesCloudStoreFileAssetFairPlayInfo:*(*(&v10 + 1) + 8 * i)];
        if (v8)
        {
          if (!v5)
          {
            v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v5 addObject:v8];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MPStoreFileAssetInfo)initWithiTunesCloudStoreFileAssetInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MPStoreFileAssetInfo;
  v6 = [(MPStoreFileAssetInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalInfo, a3);
  }

  return v7;
}

@end