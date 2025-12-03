@interface MTPlaylist
+ (id)relationshipKeyPathsForPrefetchingArtworkCatalog;
- (MPArtworkCatalog)artworkCatalog;
@end

@implementation MTPlaylist

+ (id)relationshipKeyPathsForPrefetchingArtworkCatalog
{
  v4 = kPlaylistSettings;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (MPArtworkCatalog)artworkCatalog
{
  v3 = objc_alloc_init(MPTiledArtworkRequest);
  objc_initWeak(&location, self);
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_4090;
  v12 = &unk_1C868;
  objc_copyWeak(&v13, &location);
  [v3 setArtworkCatalogsBlock:&v9];
  [v3 setNumberOfRows:{2, v9, v10, v11, v12}];
  [v3 setNumberOfColumns:2];
  [v3 setNamespaceIdentifier:@"MTPlaylist"];
  uuid = [(MTPlaylist *)self uuid];
  [v3 setEntityIdentifier:uuid];

  v5 = [MPArtworkCatalog alloc];
  v6 = +[MPTiledArtworkDataSource sharedDataSource];
  v7 = [v5 initWithToken:v3 dataSource:v6];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v7;
}

@end