@interface MTPlaylistManifest
+ (void)createManifestForActivity:(id)a3 completion:(id)a4;
- (BOOL)_updatePlaylistEpisodes;
- (MTPlaylistManifest)initWithPlaylistUuid:(id)a3 initialEpisodeUuid:(id)a4;
- (id)activitySpotlightIdentifier;
- (void)_load:(id)a3;
- (void)_propertyDidChange;
@end

@implementation MTPlaylistManifest

- (MTPlaylistManifest)initWithPlaylistUuid:(id)a3 initialEpisodeUuid:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSPredicate falsePredicate];
  v20.receiver = self;
  v20.super_class = MTPlaylistManifest;
  v9 = [(MTPredicateManifest *)&v20 initWithInitialEpisodeUuid:v7 predicateToTrack:v8 sortDescriptors:0];

  if (v9)
  {
    v10 = [NSPredicate predicateWithFormat:@"%K == %@", kPlaylistUuid, v6];
    [(MTPredicateManifest *)v9 _observeAllPropertyChangesForEntityName:kMTPlaylistEntityName predicate:v10];
    [(MTPlaylistManifest *)v9 setPlaylistUuid:v6];
    v11 = [(MTPlayerManifest *)v9 activity];
    v12 = [(MTPlaylistManifest *)v9 playlistUuid];
    [v11 setValue:v12 forKey:@"MTPlaylistManifestPlaylistUuid"];

    v13 = +[MTDB sharedInstance];
    v14 = [v13 mainOrPrivateContext];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100097CC8;
    v17[3] = &unk_1004D8798;
    v18 = v14;
    v19 = v9;
    v15 = v14;
    [v15 performBlockAndWait:v17];
  }

  return v9;
}

- (id)activitySpotlightIdentifier
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000089BC;
  v16 = sub_10003B4B4;
  v17 = 0;
  v3 = +[MTDB sharedInstance];
  v4 = [v3 mainOrPrivateContext];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100097EA0;
  v8[3] = &unk_1004D87E8;
  v5 = v4;
  v9 = v5;
  v10 = self;
  v11 = &v12;
  [v5 performBlockAndWait:v8];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

+ (void)createManifestForActivity:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 userInfo];
  v9 = [v8 valueForKey:@"MTPlaylistManifestPlaylistUuid"];

  if (v9)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100098044;
    v10[3] = &unk_1004DA248;
    v12 = v7;
    v11 = v9;
    [a1 episodeUuidForActivity:v6 completion:v10];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)_load:(id)a3
{
  v4 = a3;
  [(MTPlaylistManifest *)self _updatePlaylistEpisodes];
  v5.receiver = self;
  v5.super_class = MTPlaylistManifest;
  [(MTPredicateManifest *)&v5 _load:v4];
}

- (BOOL)_updatePlaylistEpisodes
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000089BC;
  v20 = sub_10003B4B4;
  v21 = &__NSArray0__struct;
  v3 = +[MTDB sharedInstance];
  v4 = [v3 mainOrPrivateContext];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100098328;
  v12[3] = &unk_1004D87E8;
  v5 = v4;
  v13 = v5;
  v14 = self;
  v15 = &v16;
  [v5 performBlockAndWait:v12];
  if (!v17[5])
  {
    goto LABEL_5;
  }

  v6 = [(MTPredicateManifest *)self explicitSortOrder];
  v7 = [v6 isEqualToArray:v17[5]];

  v8 = v17[5];
  if ((v7 & 1) == 0)
  {
    [(MTPredicateManifest *)self setExplicitSortOrder:v8];
    v10 = [NSPredicate predicateWithFormat:@"%K IN %@", kEpisodeUuid, v17[5]];
    [(MTPredicateManifest *)self setPredicate:v10];
    goto LABEL_7;
  }

  if (!v8)
  {
LABEL_5:
    v10 = +[NSPredicate falsePredicate];
    [(MTPredicateManifest *)self setPredicate:v10];
LABEL_7:

    v9 = 1;
    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:

  _Block_object_dispose(&v16, 8);
  return v9;
}

- (void)_propertyDidChange
{
  if ([(MTPlaylistManifest *)self _updatePlaylistEpisodes])
  {

    [(MTPredicateManifest *)self _refetch:0];
  }
}

@end