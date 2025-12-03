@interface PPXBLDownloadAsset
- (NSArray)children;
- (NSString)identifier;
- (PPXBLDownloadAsset)initWithBLDownloadStatus:(id)status isParent:(BOOL)parent;
- (PPXBLDownloadAsset)parent;
- (void)addChild:(id)child;
- (void)removeFromParent;
@end

@implementation PPXBLDownloadAsset

- (PPXBLDownloadAsset)initWithBLDownloadStatus:(id)status isParent:(BOOL)parent
{
  parentCopy = parent;
  statusCopy = status;
  v26.receiver = self;
  v26.super_class = PPXBLDownloadAsset;
  v7 = [(PPXBLDownloadAsset *)&v26 init];
  if (v7)
  {
    downloadID = [statusCopy downloadID];
    downloadID = v7->_downloadID;
    v7->_downloadID = downloadID;

    v7->_isAudiobook = [statusCopy isAudiobook];
    v7->_isParent = parentCopy;
    if (parentCopy)
    {
      storePlaylistID = [statusCopy storePlaylistID];
      stringValue = [storePlaylistID stringValue];
      storeID = v7->_storeID;
      v7->_storeID = stringValue;

      v13 = objc_opt_new();
      childAssets = v7->_childAssets;
      v7->_childAssets = v13;
    }

    else
    {
      storeID = [statusCopy storeID];
      longLongValue = [storeID longLongValue];

      if (longLongValue)
      {
        childAssets = [statusCopy storeID];
        stringValue2 = [childAssets stringValue];
        v18 = v7->_storeID;
        v7->_storeID = stringValue2;
      }

      else
      {
        permLink = [statusCopy permLink];

        if (!permLink)
        {
          goto LABEL_7;
        }

        permLink2 = [statusCopy permLink];
        v22 = [NSURL URLWithString:permLink2];
        permlink = v7->_permlink;
        v7->_permlink = v22;

        v24 = v7->_permlink;
        if (v24)
        {
          identifierFromPermlink = [(NSURL *)v24 identifierFromPermlink];
          childAssets = v7->_temporaryAssetID;
          v7->_temporaryAssetID = identifierFromPermlink;
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
  storeID = [(PPXBLDownloadAsset *)self storeID];
  v4 = storeID;
  if (storeID)
  {
    temporaryAssetID = storeID;
  }

  else
  {
    temporaryAssetID = [(PPXBLDownloadAsset *)self temporaryAssetID];
  }

  v6 = temporaryAssetID;

  return v6;
}

- (void)addChild:(id)child
{
  childCopy = child;
  childAssets = [(PPXBLDownloadAsset *)self childAssets];
  [childAssets addObject:childCopy];

  [childCopy setParent:self];
}

- (void)removeFromParent
{
  parent = [(PPXBLDownloadAsset *)self parent];
  childAssets = [parent childAssets];
  [childAssets removeObject:self];

  [(PPXBLDownloadAsset *)self setParent:0];
}

- (NSArray)children
{
  childAssets = [(PPXBLDownloadAsset *)self childAssets];
  v3 = [childAssets copy];

  return v3;
}

- (PPXBLDownloadAsset)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end