@interface MPMediaLibraryAlbumAppData
- (MPMediaLibraryAlbumAppData)init;
- (MPMediaLibraryAlbumAppData)initWithAppDataDictionary:(id)a3;
- (id)createAppDataDictionary;
- (id)songPopularityForAdamID:(int64_t)a3;
- (id)songPopularityForIdentifiers:(id)a3;
- (void)setSongPopularity:(id)a3 forAdamID:(int64_t)a4;
- (void)setSongPopularity:(id)a3 forIdentifierSet:(id)a4;
@end

@implementation MPMediaLibraryAlbumAppData

- (id)createAppDataDictionary
{
  if ([(NSMutableDictionary *)self->_dirtyPopularityDict count])
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    [(NSDictionary *)v3 setObject:&unk_1F1509A60 forKey:@"appDataDictionaryVersion"];
    v4 = [(NSDictionary *)self->_appDataDict objectForKey:@"popularityDictionary"];
    if (v4)
    {
      v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v4];
      [(NSMutableDictionary *)v5 addEntriesFromDictionary:self->_dirtyPopularityDict];
    }

    else
    {
      v5 = self->_dirtyPopularityDict;
    }

    [(NSDictionary *)v3 setObject:v5 forKey:@"popularityDictionary"];
    v7 = [MEMORY[0x1E695DF90] dictionary];
    dirtyPopularityDict = self->_dirtyPopularityDict;
    self->_dirtyPopularityDict = v7;

    appDataDict = self->_appDataDict;
    self->_appDataDict = v3;
    v10 = v3;

    v6 = self->_appDataDict;
  }

  else
  {
    v6 = self->_appDataDict;
  }

  return v6;
}

- (id)songPopularityForAdamID:(int64_t)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", a3];
    v5 = [(NSMutableDictionary *)self->_dirtyPopularityDict objectForKey:v4];
    if (!v5)
    {
      v6 = [(NSDictionary *)self->_appDataDict objectForKey:@"popularityDictionary"];
      v5 = [v6 objectForKey:v4];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSongPopularity:(id)a3 forAdamID:(int64_t)a4
{
  if (a4)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = a3;
    v8 = [v6 stringWithFormat:@"%lld", a4];
    [(NSMutableDictionary *)self->_dirtyPopularityDict setObject:v7 forKey:v8];
  }
}

- (id)songPopularityForIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [v4 universalStore];
  v6 = -[MPMediaLibraryAlbumAppData songPopularityForAdamID:](self, "songPopularityForAdamID:", [v5 adamID]);

  if (!v6)
  {
    v7 = [v4 universalStore];
    v6 = -[MPMediaLibraryAlbumAppData songPopularityForAdamID:](self, "songPopularityForAdamID:", [v7 purchasedAdamID]);

    if (!v6)
    {
      v8 = [v4 universalStore];
      v6 = -[MPMediaLibraryAlbumAppData songPopularityForAdamID:](self, "songPopularityForAdamID:", [v8 subscriptionAdamID]);
    }
  }

  return v6;
}

- (void)setSongPopularity:(id)a3 forIdentifierSet:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v6 universalStore];
  v8 = [v7 adamID];

  if (!v8)
  {
    v9 = [v6 universalStore];
    v8 = [v9 purchasedAdamID];

    if (!v8)
    {
      v10 = [v6 universalStore];
      v8 = [v10 subscriptionAdamID];
    }
  }

  [(MPMediaLibraryAlbumAppData *)self setSongPopularity:v11 forAdamID:v8];
}

- (MPMediaLibraryAlbumAppData)initWithAppDataDictionary:(id)a3
{
  v5 = a3;
  v6 = [(MPMediaLibraryAlbumAppData *)self init];
  if (v6)
  {
    v7 = [v5 objectForKey:@"appDataDictionaryVersion"];
    v8 = v7;
    if (v7 && [v7 intValue] == 2)
    {
      objc_storeStrong(&v6->_appDataDict, a3);
    }
  }

  return v6;
}

- (MPMediaLibraryAlbumAppData)init
{
  v8.receiver = self;
  v8.super_class = MPMediaLibraryAlbumAppData;
  v2 = [(MPMediaLibraryAlbumAppData *)&v8 init];
  v3 = v2;
  if (v2)
  {
    appDataDict = v2->_appDataDict;
    v2->_appDataDict = 0;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    dirtyPopularityDict = v3->_dirtyPopularityDict;
    v3->_dirtyPopularityDict = v5;
  }

  return v3;
}

@end