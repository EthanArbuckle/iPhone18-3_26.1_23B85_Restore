@interface PPXBLDownloadAsset
- (NSArray)children;
- (NSString)identifier;
- (PPXBLDownloadAsset)initWithBLDownloadStatus:(id)a3 isParent:(BOOL)a4;
- (PPXBLDownloadAsset)parent;
- (void)addChild:(id)a3;
- (void)removeFromParent;
@end

@implementation PPXBLDownloadAsset

- (PPXBLDownloadAsset)initWithBLDownloadStatus:(id)a3 isParent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v26.receiver = self;
  v26.super_class = PPXBLDownloadAsset;
  v7 = [(PPXBLDownloadAsset *)&v26 init];
  if (v7)
  {
    v8 = [v6 downloadID];
    downloadID = v7->_downloadID;
    v7->_downloadID = v8;

    v7->_isAudiobook = [v6 isAudiobook];
    v7->_isParent = v4;
    if (v4)
    {
      v10 = [v6 storePlaylistID];
      v11 = [v10 stringValue];
      storeID = v7->_storeID;
      v7->_storeID = v11;

      v13 = objc_opt_new();
      childAssets = v7->_childAssets;
      v7->_childAssets = v13;
    }

    else
    {
      v15 = [v6 storeID];
      v16 = [v15 longLongValue];

      if (v16)
      {
        childAssets = [v6 storeID];
        v17 = [childAssets stringValue];
        v18 = v7->_storeID;
        v7->_storeID = v17;
      }

      else
      {
        v20 = [v6 permLink];

        if (!v20)
        {
          goto LABEL_7;
        }

        v21 = [v6 permLink];
        v22 = [NSURL URLWithString:v21];
        permlink = v7->_permlink;
        v7->_permlink = v22;

        v24 = v7->_permlink;
        if (v24)
        {
          v25 = [(NSURL *)v24 identifierFromPermlink];
          childAssets = v7->_temporaryAssetID;
          v7->_temporaryAssetID = v25;
        }

        else
        {
          childAssets = v7->_temporaryAssetID;
          v7->_temporaryAssetID = 0;
        }
      }
    }
  }

LABEL_7:

  return v7;
}

- (NSString)identifier
{
  v3 = [(PPXBLDownloadAsset *)self storeID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(PPXBLDownloadAsset *)self temporaryAssetID];
  }

  v6 = v5;

  return v6;
}

- (void)addChild:(id)a3
{
  v5 = a3;
  v4 = [(PPXBLDownloadAsset *)self childAssets];
  [v4 addObject:v5];

  [v5 setParent:self];
}

- (void)removeFromParent
{
  v3 = [(PPXBLDownloadAsset *)self parent];
  v4 = [v3 childAssets];
  [v4 removeObject:self];

  [(PPXBLDownloadAsset *)self setParent:0];
}

- (NSArray)children
{
  v2 = [(PPXBLDownloadAsset *)self childAssets];
  v3 = [v2 copy];

  return v3;
}

- (PPXBLDownloadAsset)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end