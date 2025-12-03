@interface MCDCuratedPlaylistsDataSource
- (MCDCuratedPlaylistsDataSource)initWithCurator:(id)curator;
- (int64_t)curatorID;
@end

@implementation MCDCuratedPlaylistsDataSource

- (MCDCuratedPlaylistsDataSource)initWithCurator:(id)curator
{
  curatorCopy = curator;
  v9.receiver = self;
  v9.super_class = MCDCuratedPlaylistsDataSource;
  v6 = [(MCDCuratedPlaylistsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_curator, curator);
  }

  return v7;
}

- (int64_t)curatorID
{
  curator = [(MCDCuratedPlaylistsDataSource *)self curator];
  identifiers = [curator identifiers];
  universalStore = [identifiers universalStore];
  adamID = [universalStore adamID];

  return adamID;
}

@end