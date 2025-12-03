@interface MCDAlbumsDataSource
- (MCDAlbumsDataSource)initWithGenre:(id)genre;
- (MCDAlbumsDataSource)initWithPerson:(id)person;
- (id)containerObject;
- (id)itemSortDescriptors;
- (id)requestItemKind;
- (id)requestItemProperties;
- (id)scopedContainers;
@end

@implementation MCDAlbumsDataSource

- (MCDAlbumsDataSource)initWithPerson:(id)person
{
  personCopy = person;
  v9.receiver = self;
  v9.super_class = MCDAlbumsDataSource;
  v6 = [(MCDAlbumsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_person, person);
  }

  return v7;
}

- (MCDAlbumsDataSource)initWithGenre:(id)genre
{
  genreCopy = genre;
  v9.receiver = self;
  v9.super_class = MCDAlbumsDataSource;
  v6 = [(MCDAlbumsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_genre, genre);
  }

  return v7;
}

- (id)requestItemKind
{
  v2 = [MPModelSong kindWithVariants:3];
  v3 = [MPModelAlbum kindWithSongKind:v2];

  return v3;
}

- (id)requestItemProperties
{
  v14[0] = MPModelRelationshipAlbumArtist;
  v13 = MPModelPropertyArtistName;
  v2 = [NSArray arrayWithObjects:&v13 count:1];
  v3 = [MPPropertySet propertySetWithProperties:v2];
  v15[0] = v3;
  v14[1] = MPModelRelationshipAlbumRepresentativeSong;
  v12[0] = MPModelPropertySongTitle;
  v12[1] = MPModelPropertySongHasVideo;
  v4 = [NSArray arrayWithObjects:v12 count:2];
  v5 = [MPPropertySet propertySetWithProperties:v4];
  v15[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

  v7 = [MPPropertySet alloc];
  v11[0] = MPModelPropertyAlbumTitle;
  v11[1] = MPModelPropertyAlbumIsFavorite;
  v11[2] = MPModelPropertyAlbumIsDisliked;
  v11[3] = MPModelPropertyAlbumIsCompilation;
  v11[4] = MPModelPropertyAlbumArtwork;
  v11[5] = MPModelPropertyAlbumTrackCount;
  v11[6] = MPModelPropertyAlbumYear;
  v11[7] = MPModelPropertyAlbumSongPopularity;
  v8 = [NSArray arrayWithObjects:v11 count:8];
  v9 = [v7 initWithProperties:v8 relationships:v6];

  return v9;
}

- (id)itemSortDescriptors
{
  sortingPreference = [(_MCDLibraryDataSource *)self sortingPreference];
  if ([(_MCDLibraryDataSource *)self limitedUI])
  {
    v4 = MCDSortByRecentlyPlayed;

    sortingPreference = v4;
  }

  if ([sortingPreference isEqualToString:MCDSortByRecentlyAdded])
  {
    v5 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertyAlbumLibraryAddedDate ascending:0];
    v20 = v5;
    v6 = &v20;
LABEL_7:
    v7 = [NSArray arrayWithObjects:v6 count:1];
LABEL_14:

    goto LABEL_15;
  }

  if ([sortingPreference isEqualToString:MCDSortByRecentlyPlayed])
  {
    v5 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertyAlbumLastDevicePlaybackDate ascending:0];
    v19 = v5;
    v6 = &v19;
    goto LABEL_7;
  }

  v8 = [sortingPreference isEqualToString:MCDSortByArtist];
  if (!sortingPreference || v8)
  {
    v17[0] = MPModelRelationshipAlbumArtist;
    v17[1] = MPModelPropertyArtistName;
    v5 = [NSArray arrayWithObjects:v17 count:2];
    v9 = [MPModelSortDescriptor sortDescriptorWithKeyPath:v5 ascending:1];
    v18[0] = v9;
    v10 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertyAlbumTitle ascending:1];
    v18[1] = v10;
    v11 = v18;
    goto LABEL_13;
  }

  if ([sortingPreference isEqualToString:MCDSortByReleaseDateAscending])
  {
    v15 = MPModelPropertyAlbumReleaseDateComponents;
    v5 = [NSArray arrayWithObjects:&v15 count:1];
    v9 = [MPModelSortDescriptor sortDescriptorWithKeyPath:v5 ascending:1];
    v16[0] = v9;
    v10 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertyAlbumTitle ascending:1];
    v16[1] = v10;
    v11 = v16;
LABEL_13:
    v7 = [NSArray arrayWithObjects:v11 count:2];

    goto LABEL_14;
  }

  if ([sortingPreference isEqualToString:MCDSortByReleaseDateDescending])
  {
    v13 = MPModelPropertyAlbumReleaseDateComponents;
    v5 = [NSArray arrayWithObjects:&v13 count:1];
    v9 = [MPModelSortDescriptor sortDescriptorWithKeyPath:v5 ascending:0];
    v14[0] = v9;
    v10 = [NSSortDescriptor sortDescriptorWithKey:MPModelPropertyAlbumTitle ascending:1];
    v14[1] = v10;
    v11 = v14;
    goto LABEL_13;
  }

  v7 = 0;
LABEL_15:

  return v7;
}

- (id)scopedContainers
{
  person = [(MCDAlbumsDataSource *)self person];

  if (person)
  {
    person2 = [(MCDAlbumsDataSource *)self person];
    v9 = person2;
    v5 = &v9;
  }

  else
  {
    genre = [(MCDAlbumsDataSource *)self genre];

    if (!genre)
    {
      goto LABEL_6;
    }

    person2 = [(MCDAlbumsDataSource *)self genre];
    v8 = person2;
    v5 = &v8;
  }

  genre = [NSArray arrayWithObjects:v5 count:1];

LABEL_6:

  return genre;
}

- (id)containerObject
{
  scopedContainers = [(MCDAlbumsDataSource *)self scopedContainers];
  firstObject = [scopedContainers firstObject];

  return firstObject;
}

@end