@interface MTPodcastPlaylistSettings
+ (id)_longStringForEpisodes:(int64_t)a3 defaultValue:(int64_t)a4;
+ (id)_shortStringForEpisodes:(int64_t)a3 defaultValue:(int64_t)a4;
+ (id)episodesOptionArray:(BOOL)a3 defaultValue:(int64_t)a4;
+ (id)insertNewSettingsInManagedObjectContext:(id)a3;
+ (id)mediaOptionArray:(BOOL)a3;
+ (id)stringForEpisodes:(int64_t)a3 short:(BOOL)a4 defaultValue:(int64_t)a5;
+ (id)stringForMedia:(int)a3 short:(BOOL)a4;
- (double)latestEpisodeDate;
- (double)oldestEpisodeDate;
- (id)metricsAdditionalData;
- (id)metricsContentIdentifier;
- (id)metricsKeys;
- (id)predicateForSettings;
- (void)setNeedsUpdate:(BOOL)a3;
- (void)setTracksDefault:(BOOL)a3;
- (void)takeValuesFromDefaultSettings:(id)a3;
@end

@implementation MTPodcastPlaylistSettings

+ (id)_shortStringForEpisodes:(int64_t)a3 defaultValue:(int64_t)a4
{
  if (a3 > 2)
  {
    if (a3 == 6)
    {
      v4 = [a1 stringForEpisodes:a4 short:1 defaultValue:0];
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (a3)
  {
    if (a3 != 1)
    {
LABEL_9:
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"Recent %@" value:&stru_1004F3018 table:0];

      v10 = IMAccessibilityLocalizedNumber();
      v4 = [NSString stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v10];

      goto LABEL_12;
    }

    v5 = [NSBundle mainBundle:1];
    v6 = v5;
    v7 = @"MOST_RECENT_SINGULAR";
  }

  else
  {
    v5 = [NSBundle mainBundle:0];
    v6 = v5;
    v7 = @"EPISODE_ALL";
  }

  v4 = [v5 localizedStringForKey:v7 value:&stru_1004F3018 table:0];

LABEL_12:

  return v4;
}

+ (id)_longStringForEpisodes:(int64_t)a3 defaultValue:(int64_t)a4
{
  if (a3 > 2)
  {
    if (a3 > 4)
    {
      if (a3 == 5)
      {
        v5 = 10;
      }

      else
      {
        if (a3 == 6)
        {
          v8 = +[NSBundle mainBundle];
          v9 = [v8 localizedStringForKey:@"Default (%@)" value:&stru_1004F3018 table:0];

          v10 = [a1 stringForEpisodes:a4 short:1 defaultValue:0];
          v11 = [NSString stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v10];

          goto LABEL_22;
        }

        v5 = 0;
      }
    }

    else
    {
      v4 = 5;
      if (a3 != 4)
      {
        v4 = 0;
      }

      if (a3 == 3)
      {
        v5 = 3;
      }

      else
      {
        v5 = v4;
      }
    }

    goto LABEL_18;
  }

  switch(a3)
  {
    case 0:
      v12 = [NSBundle mainBundle:0];
      v9 = v12;
      v13 = @"All Episodes";
LABEL_20:
      v15 = [v12 localizedStringForKey:v13 value:&stru_1004F3018 table:0];
      goto LABEL_21;
    case 1:
      v12 = [NSBundle mainBundle:1];
      v9 = v12;
      v13 = @"Most recent episode";
      goto LABEL_20;
    case 2:
      v5 = 2;
      break;
    default:
      v5 = 0;
      break;
  }

LABEL_18:
  v14 = +[NSBundle mainBundle];
  v9 = [v14 localizedStringForKey:@"MOST_RECENT_EPISODES" value:&stru_1004F3018 table:0];

  v15 = [NSString localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%lu" error:0, v5];
LABEL_21:
  v11 = v15;
LABEL_22:

  return v11;
}

+ (id)stringForEpisodes:(int64_t)a3 short:(BOOL)a4 defaultValue:(int64_t)a5
{
  if (a4)
  {
    [a1 _shortStringForEpisodes:a3 defaultValue:a5];
  }

  else
  {
    [a1 _longStringForEpisodes:a3 defaultValue:a5];
  }
  v5 = ;

  return v5;
}

+ (id)stringForMedia:(int)a3 short:(BOOL)a4
{
  if (a3 <= 2)
  {
    v5 = *(&off_1004DC6E0 + a3);
    v6 = +[NSBundle mainBundle];
    v4 = [v6 localizedStringForKey:v5 value:&stru_1004F3018 table:0];
  }

  return v4;
}

+ (id)episodesOptionArray:(BOOL)a3 defaultValue:(int64_t)a4
{
  v5 = a3;
  v7 = [a1 stringForEpisodes:6 short:a3 defaultValue:a4];
  v8 = [a1 stringForEpisodes:1 short:v5 defaultValue:{a4, v7}];
  v16[1] = v8;
  v9 = [a1 stringForEpisodes:2 short:v5 defaultValue:a4];
  v16[2] = v9;
  v10 = [a1 stringForEpisodes:3 short:v5 defaultValue:a4];
  v16[3] = v10;
  v11 = [a1 stringForEpisodes:4 short:v5 defaultValue:a4];
  v16[4] = v11;
  v12 = [a1 stringForEpisodes:5 short:v5 defaultValue:a4];
  v16[5] = v12;
  v13 = [a1 stringForEpisodes:0 short:v5 defaultValue:a4];
  v16[6] = v13;
  v14 = [NSArray arrayWithObjects:v16 count:7];

  return v14;
}

+ (id)mediaOptionArray:(BOOL)a3
{
  v3 = a3;
  v5 = [a1 stringForMedia:0 short:a3];
  v6 = [a1 stringForMedia:1 short:{v3, v5}];
  v10[1] = v6;
  v7 = [a1 stringForMedia:2 short:v3];
  v10[2] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:3];

  return v8;
}

+ (id)insertNewSettingsInManagedObjectContext:(id)a3
{
  v3 = [NSEntityDescription insertNewObjectForEntityForName:kMTPodcastPlaylistSettingsEntityName inManagedObjectContext:a3];
  v4 = +[NSString UUID];
  [v3 setUuid:v4];

  [v3 setEpisodesToShow:1];
  [v3 setMediaType:0];
  [v3 setShowPlayedEpisodes:0];
  [v3 setTracksDefault:1];
  [v3 setNeedsUpdate:1];
  [v3 setDownloaded:0];

  return v3;
}

- (void)setTracksDefault:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTPodcastPlaylistSettings *)self flags];
  if ((v5 & 1) != v3)
  {

    [(MTPodcastPlaylistSettings *)self setFlags:v5 & 0xFFFFFFFFFFFFFFFELL | v3];
  }
}

- (double)latestEpisodeDate
{
  v3 = [(MTPodcastPlaylistSettings *)self podcast];
  v4 = [v3 playbackNewestToOldest];

  v5 = [(MTPodcastPlaylistSettings *)self episodes];
  v6 = v5;
  if (v4)
  {
    [v5 firstObject];
  }

  else
  {
    [v5 lastObject];
  }
  v7 = ;

  [v7 firstTimeAvailable];
  v9 = v8;

  return v9;
}

- (double)oldestEpisodeDate
{
  v3 = [(MTPodcastPlaylistSettings *)self podcast];
  v4 = [v3 playbackNewestToOldest];

  v5 = [(MTPodcastPlaylistSettings *)self episodes];
  v6 = v5;
  if (v4)
  {
    [v5 lastObject];
  }

  else
  {
    [v5 firstObject];
  }
  v7 = ;

  [v7 firstTimeAvailable];
  v9 = v8;

  return v9;
}

- (id)predicateForSettings
{
  v3 = [(MTPodcastPlaylistSettings *)self podcast];
  v4 = [v3 uuid];
  v5 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:v4];

  v6 = [MTEpisode predicateForExternalType:0];
  v7 = [v5 AND:v6];

  if (([(MTPodcastPlaylistSettings *)self showPlayedEpisodes]& 1) == 0)
  {
    v8 = [MTEpisode predicateForVisuallyPlayed:0];
    v9 = [v7 AND:v8];

    v7 = v9;
  }

  if ((+[PFRestrictionsController isExplicitContentAllowed]& 1) == 0)
  {
    v10 = [(MTPodcastPlaylistSettings *)self podcast];
    v11 = [v10 isExplicit];

    if (v11)
    {
      v12 = +[NSPredicate falsePredicate];
    }

    else
    {
      v13 = [MTEpisode predicateForExplicit:0];
      v12 = [v7 AND:v13];

      v7 = v13;
    }

    v7 = v12;
  }

  if ([(MTPodcastPlaylistSettings *)self mediaType])
  {
    v14 = [(MTPodcastPlaylistSettings *)self mediaType];
    v15 = &kEpisodeAudio;
    if (v14 != 1)
    {
      v15 = &kEpisodeVideo;
    }

    v16 = *v15;
    v17 = [NSPredicate predicateWithFormat:@"%K = 1", v16];
    v35[0] = v17;
    v35[1] = v7;
    v18 = [NSArray arrayWithObjects:v35 count:2];
    v19 = [NSCompoundPredicate andPredicateWithSubpredicates:v18];

    v7 = v19;
  }

  v20 = +[MTEpisode predicateForStationEligibleEpisodes];
  v21 = [v7 AND:v20];

  v22 = [(MTPodcastPlaylistSettings *)self downloaded];
  if (v22 == 1)
  {
    v33 = v21;
    v23 = @"%K != nil";
    v24 = &v33;
  }

  else
  {
    if (v22 != 2)
    {
      goto LABEL_17;
    }

    v34 = v21;
    v23 = @"%K = nil";
    v24 = &v34;
  }

  v25 = [NSPredicate predicateWithFormat:v23, kEpisodeAssetURL, v33];
  v24[1] = v25;
  v26 = [NSArray arrayWithObjects:v24 count:2];
  v27 = [NSCompoundPredicate andPredicateWithSubpredicates:v26];

  v21 = v27;
LABEL_17:
  v28 = [(MTPodcastPlaylistSettings *)self podcast];
  v29 = [v28 uuid];
  v30 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:v29];
  v31 = [v21 AND:v30];

  return v31;
}

- (void)takeValuesFromDefaultSettings:(id)a3
{
  v4 = a3;
  -[MTPodcastPlaylistSettings setMediaType:](self, "setMediaType:", [v4 mediaType]);
  v5 = [v4 showPlayedEpisodes];

  [(MTPodcastPlaylistSettings *)self setShowPlayedEpisodes:v5];

  [(MTPodcastPlaylistSettings *)self setNeedsUpdate:1];
}

- (id)metricsContentIdentifier
{
  v2 = [(MTPodcastPlaylistSettings *)self playlist];
  v3 = [v2 metricsContentIdentifier];

  return v3;
}

- (id)metricsAdditionalData
{
  v3 = [(MTPodcastPlaylistSettings *)self metricsKeys];
  v4 = [(MTPodcastPlaylistSettings *)self dictionaryWithValuesForKeys:v3];
  v7 = @"settings";
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v5;
}

- (id)metricsKeys
{
  v4[0] = kPlaylistSettingEpisodesToShow;
  v4[1] = kPlaylistSettingMediaType;
  v4[2] = kPlaylistSettingShowPlayedEpisodes;
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

- (void)setNeedsUpdate:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTPodcastPlaylistSettings *)self playlist];
  v6 = [v5 needsUpdate];

  v7 = [(MTPodcastPlaylistSettings *)self flags];
  if (((((v7 & 2) == 0) ^ v3) & 1) == 0)
  {
    v8 = v3 | v6;
    v9 = 2;
    if (!v3)
    {
      v9 = 0;
    }

    [(MTPodcastPlaylistSettings *)self setFlags:v7 & 0xFFFFFFFFFFFFFFFDLL | v9];
    v10 = [(MTPodcastPlaylistSettings *)self playlist];
    [v10 setNeedsUpdate:v8 & 1];

    v11 = [(MTPodcastPlaylistSettings *)self playlistIfDefault];
    v12 = [v11 needsUpdate];

    v13 = [(MTPodcastPlaylistSettings *)self playlistIfDefault];
    [v13 setNeedsUpdate:(v3 | v12) & 1];
  }
}

@end