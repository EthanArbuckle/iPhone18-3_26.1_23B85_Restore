@interface MCDCuratedPlaylistsContentManager
- (id)_modelRequest;
- (id)itemAtIndexPath:(id)path;
- (int64_t)allowedNumberOfItemsForDisplayWithResponse:(id)response inSection:(int64_t)section;
- (void)_initiatePlaybackForItem:(id)item;
@end

@implementation MCDCuratedPlaylistsContentManager

- (int64_t)allowedNumberOfItemsForDisplayWithResponse:(id)response inSection:(int64_t)section
{
  lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  v8 = [results numberOfItemsInSection:section];

  if (v8 < [(MCDGroupingsContentManager *)self maximumNumberOfItemsForDisplay])
  {
    return v8;
  }

  return [(MCDGroupingsContentManager *)self maximumNumberOfItemsForDisplay];
}

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  v7 = [results itemsInSectionAtIndex:0];
  v8 = [pathCopy row];

  v9 = [v7 objectAtIndexedSubscript:v8];

  return v9;
}

- (void)_initiatePlaybackForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    playbackManager = [(MCDFuseContentManager *)self playbackManager];
    playlist = [itemCopy playlist];
    viewController = [(MCDFuseContentManager *)self viewController];
    combinedPlayActivityFeatureName = [viewController combinedPlayActivityFeatureName];
    [playbackManager initiatePlaybackForPlaylist:playlist lastResponse:0 shuffled:0 playActivityFeatureName:combinedPlayActivityFeatureName];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    playbackManager = [(MCDFuseContentManager *)self playbackManager];
    playlist = [(MCDFuseContentManager *)self viewController];
    viewController = [playlist combinedPlayActivityFeatureName];
    [playbackManager initiatePlaybackForPlaylist:itemCopy lastResponse:0 shuffled:0 playActivityFeatureName:viewController];
  }

LABEL_6:
}

- (id)_modelRequest
{
  v3 = objc_alloc_init(MusicStoreCuratorPlaylistsRequest);
  dataSource = [(MCDFuseContentManager *)self dataSource];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    dataSource2 = [(MCDFuseContentManager *)self dataSource];
    -[MusicStoreCuratorPlaylistsRequest setCuratorStoreAdamID:](v3, "setCuratorStoreAdamID:", [dataSource2 curatorID]);
  }

  return v3;
}

@end