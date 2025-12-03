@interface MTPlaylistManifest
+ (void)createManifestForActivity:(id)activity completion:(id)completion;
- (BOOL)_updatePlaylistEpisodes;
- (MTPlaylistManifest)initWithPlaylistUuid:(id)uuid initialEpisodeUuid:(id)episodeUuid;
- (id)activitySpotlightIdentifier;
- (void)_load:(id)_load;
- (void)_propertyDidChange;
@end

@implementation MTPlaylistManifest

- (MTPlaylistManifest)initWithPlaylistUuid:(id)uuid initialEpisodeUuid:(id)episodeUuid
{
  uuidCopy = uuid;
  episodeUuidCopy = episodeUuid;
  v8 = +[NSPredicate falsePredicate];
  v20.receiver = self;
  v20.super_class = MTPlaylistManifest;
  v9 = [(MTPredicateManifest *)&v20 initWithInitialEpisodeUuid:episodeUuidCopy predicateToTrack:v8 sortDescriptors:0];

  if (v9)
  {
    uuidCopy = [NSPredicate predicateWithFormat:@"%K == %@", kPlaylistUuid, uuidCopy];
    [(MTPredicateManifest *)v9 _observeAllPropertyChangesForEntityName:kMTPlaylistEntityName predicate:uuidCopy];
    [(MTPlaylistManifest *)v9 setPlaylistUuid:uuidCopy];
    activity = [(MTPlayerManifest *)v9 activity];
    playlistUuid = [(MTPlaylistManifest *)v9 playlistUuid];
    [activity setValue:playlistUuid forKey:@"MTPlaylistManifestPlaylistUuid"];

    v13 = +[MTDB sharedInstance];
    mainOrPrivateContext = [v13 mainOrPrivateContext];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100097CC8;
    v17[3] = &unk_1004D8798;
    v18 = mainOrPrivateContext;
    v19 = v9;
    v15 = mainOrPrivateContext;
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
  mainOrPrivateContext = [v3 mainOrPrivateContext];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100097EA0;
  v8[3] = &unk_1004D87E8;
  v5 = mainOrPrivateContext;
  v9 = v5;
  selfCopy = self;
  v11 = &v12;
  [v5 performBlockAndWait:v8];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

+ (void)createManifestForActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  userInfo = [activityCopy userInfo];
  v9 = [userInfo valueForKey:@"MTPlaylistManifestPlaylistUuid"];

  if (v9)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100098044;
    v10[3] = &unk_1004DA248;
    v12 = completionCopy;
    v11 = v9;
    [self episodeUuidForActivity:activityCopy completion:v10];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)_load:(id)_load
{
  _loadCopy = _load;
  [(MTPlaylistManifest *)self _updatePlaylistEpisodes];
  v5.receiver = self;
  v5.super_class = MTPlaylistManifest;
  [(MTPredicateManifest *)&v5 _load:_loadCopy];
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
  mainOrPrivateContext = [v3 mainOrPrivateContext];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100098328;
  v12[3] = &unk_1004D87E8;
  v5 = mainOrPrivateContext;
  v13 = v5;
  selfCopy = self;
  v15 = &v16;
  [v5 performBlockAndWait:v12];
  if (!v17[5])
  {
    goto LABEL_5;
  }

  explicitSortOrder = [(MTPredicateManifest *)self explicitSortOrder];
  v7 = [explicitSortOrder isEqualToArray:v17[5]];

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