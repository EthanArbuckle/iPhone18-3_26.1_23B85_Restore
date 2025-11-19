@interface MTPodcastManifest
+ (void)createManifestForActivity:(id)a3 completion:(id)a4;
- (MTPodcastManifest)initWithInitialEpisodeUuid:(id)a3 sectionType:(unint64_t)a4;
- (id)activity;
- (void)_propertyDidChange;
@end

@implementation MTPodcastManifest

- (MTPodcastManifest)initWithInitialEpisodeUuid:(id)a3 sectionType:(unint64_t)a4
{
  v6 = a3;
  if ([v6 length])
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = sub_100008B8C;
    v49 = sub_10003B59C;
    v50 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = sub_100008B8C;
    v43 = sub_10003B59C;
    v44 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_100008B8C;
    v37 = sub_10003B59C;
    v38 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = sub_100008B8C;
    v31 = sub_10003B59C;
    v32 = 0;
    v7 = +[MTDB sharedInstance];
    v8 = [v7 mainOrPrivateContext];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10012F458;
    v19[3] = &unk_1004DD658;
    v9 = v8;
    v20 = v9;
    v10 = v6;
    v21 = v10;
    v22 = &v45;
    v23 = &v39;
    v24 = &v33;
    v25 = &v27;
    v26 = a4;
    [v9 performBlockAndWait:v19];
    if ([v46[5] length])
    {
      v11 = [NSFetchRequest alloc];
      v12 = [v11 initWithEntityName:kMTEpisodeEntityName];
      [v12 setPredicate:v28[5]];
      [v12 setSortDescriptors:v34[5]];
      v18.receiver = self;
      v18.super_class = MTPodcastManifest;
      v13 = [(MTPredicateManifest *)&v18 initWithInitialEpisodeUuid:v10 fetchRequest:v12];
      v14 = v13;
      if (v13)
      {
        [(MTPodcastManifest *)v13 setPodcastUuid:v46[5]];
        [(MTPodcastManifest *)v14 setSectionType:a4];
        [(MTPodcastManifest *)v14 setTitle:v40[5]];
        v15 = [MTPodcast predicateForPodcastUUID:v46[5]];
        [(MTPredicateManifest *)v14 _observeAllPropertyChangesForEntityName:kMTPodcastEntityName predicate:v15];
      }

      self = v14;

      v16 = self;
    }

    else
    {
      v16 = 0;
    }

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v33, 8);

    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(&v45, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)activity
{
  v6.receiver = self;
  v6.super_class = MTPodcastManifest;
  v3 = [(MTPlayerManifest *)&v6 activity];
  v4 = [NSNumber numberWithUnsignedInteger:[(MTPodcastManifest *)self sectionType]];
  [v3 setValue:v4 forKey:@"MTPodcastManifestActivitySectionType"];

  return v3;
}

+ (void)createManifestForActivity:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 userInfo];
  v9 = [v8 valueForKey:@"MTPodcastManifestActivitySectionType"];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10012F6D8;
  v12[3] = &unk_1004DA248;
  v13 = v9;
  v14 = v6;
  v10 = v9;
  v11 = v6;
  [a1 episodeUuidForActivity:v7 completion:v12];
}

- (void)_propertyDidChange
{
  v3 = +[MTDB sharedInstance];
  v4 = [v3 mainOrPrivateContext];

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100008B8C;
  v16 = sub_10003B59C;
  v17 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10012F8F0;
  v8[3] = &unk_1004D87E8;
  v5 = v4;
  v9 = v5;
  v10 = self;
  v11 = &v12;
  [v5 performBlockAndWait:v8];
  v6 = v13[5];
  v7 = [(MTPredicateManifest *)self sortDescriptors];
  LOBYTE(v6) = [v6 isEqual:v7];

  if ((v6 & 1) == 0)
  {
    [(MTPredicateManifest *)self setSortDescriptors:v13[5]];
    [(MTPredicateManifest *)self _refetch:0];
  }

  _Block_object_dispose(&v12, 8);
}

@end