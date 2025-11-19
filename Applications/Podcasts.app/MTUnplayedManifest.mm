@interface MTUnplayedManifest
+ (void)createManifestForActivity:(id)a3 completion:(id)a4;
- (MTUnplayedManifest)initWithInitialEpisodeUuid:(id)a3 newestToOldest:(BOOL)a4;
@end

@implementation MTUnplayedManifest

- (MTUnplayedManifest)initWithInitialEpisodeUuid:(id)a3 newestToOldest:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[MTEpisode predicateForEpisodesOnUnplayedTab];
  if (v4)
  {
    v8 = [NSSortDescriptor sortDescriptorWithKey:kEpisodePubDate ascending:0];
    v20 = v8;
    v9 = &v20;
  }

  else
  {
    v8 = [NSSortDescriptor sortDescriptorWithKey:kEpisodePubDate ascending:1];
    v19 = v8;
    v9 = &v19;
  }

  v10 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeEpisodeNumber ascending:v4 ^ 1];
  v9[1] = v10;
  v11 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeLevel ascending:v4];
  v9[2] = v11;
  v12 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeTitle ascending:1 selector:"localizedStandardCompare:"];
  v9[3] = v12;
  v13 = [NSArray arrayWithObjects:v9 count:4];
  v18.receiver = self;
  v18.super_class = MTUnplayedManifest;
  v14 = [(MTPredicateManifest *)&v18 initWithInitialEpisodeUuid:v6 predicateToTrack:v7 sortDescriptors:v13];

  if (v14)
  {
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"EPISODE_UNPLAYED_TITLE" value:&stru_1004F3018 table:0];
    [(MTUnplayedManifest *)v14 setTitle:v16];
  }

  return v14;
}

+ (void)createManifestForActivity:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100154FD8;
  v7[3] = &unk_1004D9220;
  v8 = a4;
  v6 = v8;
  [a1 episodeUuidForActivity:a3 completion:v7];
}

@end