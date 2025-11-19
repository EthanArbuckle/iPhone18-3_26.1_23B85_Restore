@interface MCDCuratedPlaylistsDataSource
- (MCDCuratedPlaylistsDataSource)initWithCurator:(id)a3;
- (int64_t)curatorID;
@end

@implementation MCDCuratedPlaylistsDataSource

- (MCDCuratedPlaylistsDataSource)initWithCurator:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MCDCuratedPlaylistsDataSource;
  v6 = [(MCDCuratedPlaylistsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_curator, a3);
  }

  return v7;
}

- (int64_t)curatorID
{
  v2 = [(MCDCuratedPlaylistsDataSource *)self curator];
  v3 = [v2 identifiers];
  v4 = [v3 universalStore];
  v5 = [v4 adamID];

  return v5;
}

@end