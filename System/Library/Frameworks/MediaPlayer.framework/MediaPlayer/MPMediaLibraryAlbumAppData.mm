@interface MPMediaLibraryAlbumAppData
- (MPMediaLibraryAlbumAppData)init;
- (MPMediaLibraryAlbumAppData)initWithAppDataDictionary:(id)dictionary;
- (id)createAppDataDictionary;
- (id)songPopularityForAdamID:(int64_t)d;
- (id)songPopularityForIdentifiers:(id)identifiers;
- (void)setSongPopularity:(id)popularity forAdamID:(int64_t)d;
- (void)setSongPopularity:(id)popularity forIdentifierSet:(id)set;
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dirtyPopularityDict = self->_dirtyPopularityDict;
    self->_dirtyPopularityDict = dictionary;

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

- (id)songPopularityForAdamID:(int64_t)d
{
  if (d)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", d];
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

- (void)setSongPopularity:(id)popularity forAdamID:(int64_t)d
{
  if (d)
  {
    v6 = MEMORY[0x1E696AEC0];
    popularityCopy = popularity;
    v8 = [v6 stringWithFormat:@"%lld", d];
    [(NSMutableDictionary *)self->_dirtyPopularityDict setObject:popularityCopy forKey:v8];
  }
}

- (id)songPopularityForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  universalStore = [identifiersCopy universalStore];
  v6 = -[MPMediaLibraryAlbumAppData songPopularityForAdamID:](self, "songPopularityForAdamID:", [universalStore adamID]);

  if (!v6)
  {
    universalStore2 = [identifiersCopy universalStore];
    v6 = -[MPMediaLibraryAlbumAppData songPopularityForAdamID:](self, "songPopularityForAdamID:", [universalStore2 purchasedAdamID]);

    if (!v6)
    {
      universalStore3 = [identifiersCopy universalStore];
      v6 = -[MPMediaLibraryAlbumAppData songPopularityForAdamID:](self, "songPopularityForAdamID:", [universalStore3 subscriptionAdamID]);
    }
  }

  return v6;
}

- (void)setSongPopularity:(id)popularity forIdentifierSet:(id)set
{
  popularityCopy = popularity;
  setCopy = set;
  universalStore = [setCopy universalStore];
  adamID = [universalStore adamID];

  if (!adamID)
  {
    universalStore2 = [setCopy universalStore];
    adamID = [universalStore2 purchasedAdamID];

    if (!adamID)
    {
      universalStore3 = [setCopy universalStore];
      adamID = [universalStore3 subscriptionAdamID];
    }
  }

  [(MPMediaLibraryAlbumAppData *)self setSongPopularity:popularityCopy forAdamID:adamID];
}

- (MPMediaLibraryAlbumAppData)initWithAppDataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = [(MPMediaLibraryAlbumAppData *)self init];
  if (v6)
  {
    v7 = [dictionaryCopy objectForKey:@"appDataDictionaryVersion"];
    v8 = v7;
    if (v7 && [v7 intValue] == 2)
    {
      objc_storeStrong(&v6->_appDataDict, dictionary);
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

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dirtyPopularityDict = v3->_dirtyPopularityDict;
    v3->_dirtyPopularityDict = dictionary;
  }

  return v3;
}

@end