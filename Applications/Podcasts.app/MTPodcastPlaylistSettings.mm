@interface MTPodcastPlaylistSettings
+ (id)_longStringForEpisodes:(int64_t)episodes defaultValue:(int64_t)value;
+ (id)_shortStringForEpisodes:(int64_t)episodes defaultValue:(int64_t)value;
+ (id)episodesOptionArray:(BOOL)array defaultValue:(int64_t)value;
+ (id)insertNewSettingsInManagedObjectContext:(id)context;
+ (id)mediaOptionArray:(BOOL)array;
+ (id)stringForEpisodes:(int64_t)episodes short:(BOOL)short defaultValue:(int64_t)value;
+ (id)stringForMedia:(int)media short:(BOOL)short;
- (double)latestEpisodeDate;
- (double)oldestEpisodeDate;
- (id)metricsAdditionalData;
- (id)metricsContentIdentifier;
- (id)metricsKeys;
- (id)predicateForSettings;
- (void)setNeedsUpdate:(BOOL)update;
- (void)setTracksDefault:(BOOL)default;
- (void)takeValuesFromDefaultSettings:(id)settings;
@end

@implementation MTPodcastPlaylistSettings

+ (id)_shortStringForEpisodes:(int64_t)episodes defaultValue:(int64_t)value
{
  if (episodes > 2)
  {
    if (episodes == 6)
    {
      v4 = [self stringForEpisodes:value short:1 defaultValue:0];
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (episodes)
  {
    if (episodes != 1)
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

+ (id)_longStringForEpisodes:(int64_t)episodes defaultValue:(int64_t)value
{
  if (episodes > 2)
  {
    if (episodes > 4)
    {
      if (episodes == 5)
      {
        v5 = 10;
      }

      else
      {
        if (episodes == 6)
        {
          v8 = +[NSBundle mainBundle];
          v9 = [v8 localizedStringForKey:@"Default (%@)" value:&stru_1004F3018 table:0];

          v10 = [self stringForEpisodes:value short:1 defaultValue:0];
          v11 = [NSString stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v10];

          goto LABEL_22;
        }

        v5 = 0;
      }
    }

    else
    {
      v4 = 5;
      if (episodes != 4)
      {
        v4 = 0;
      }

      if (episodes == 3)
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

  switch(episodes)
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

+ (id)stringForEpisodes:(int64_t)episodes short:(BOOL)short defaultValue:(int64_t)value
{
  if (short)
  {
    [self _shortStringForEpisodes:episodes defaultValue:value];
  }

  else
  {
    [self _longStringForEpisodes:episodes defaultValue:value];
  }
  v5 = ;

  return v5;
}

+ (id)stringForMedia:(int)media short:(BOOL)short
{
  if (media <= 2)
  {
    v5 = *(&off_1004DC6E0 + media);
    v6 = +[NSBundle mainBundle];
    v4 = [v6 localizedStringForKey:v5 value:&stru_1004F3018 table:0];
  }

  return v4;
}

+ (id)episodesOptionArray:(BOOL)array defaultValue:(int64_t)value
{
  arrayCopy = array;
  v7 = [self stringForEpisodes:6 short:array defaultValue:value];
  v8 = [self stringForEpisodes:1 short:arrayCopy defaultValue:{value, v7}];
  v16[1] = v8;
  v9 = [self stringForEpisodes:2 short:arrayCopy defaultValue:value];
  v16[2] = v9;
  v10 = [self stringForEpisodes:3 short:arrayCopy defaultValue:value];
  v16[3] = v10;
  v11 = [self stringForEpisodes:4 short:arrayCopy defaultValue:value];
  v16[4] = v11;
  v12 = [self stringForEpisodes:5 short:arrayCopy defaultValue:value];
  v16[5] = v12;
  v13 = [self stringForEpisodes:0 short:arrayCopy defaultValue:value];
  v16[6] = v13;
  v14 = [NSArray arrayWithObjects:v16 count:7];

  return v14;
}

+ (id)mediaOptionArray:(BOOL)array
{
  arrayCopy = array;
  v5 = [self stringForMedia:0 short:array];
  v6 = [self stringForMedia:1 short:{arrayCopy, v5}];
  v10[1] = v6;
  v7 = [self stringForMedia:2 short:arrayCopy];
  v10[2] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:3];

  return v8;
}

+ (id)insertNewSettingsInManagedObjectContext:(id)context
{
  v3 = [NSEntityDescription insertNewObjectForEntityForName:kMTPodcastPlaylistSettingsEntityName inManagedObjectContext:context];
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

- (void)setTracksDefault:(BOOL)default
{
  defaultCopy = default;
  flags = [(MTPodcastPlaylistSettings *)self flags];
  if ((flags & 1) != defaultCopy)
  {

    [(MTPodcastPlaylistSettings *)self setFlags:flags & 0xFFFFFFFFFFFFFFFELL | defaultCopy];
  }
}

- (double)latestEpisodeDate
{
  podcast = [(MTPodcastPlaylistSettings *)self podcast];
  playbackNewestToOldest = [podcast playbackNewestToOldest];

  episodes = [(MTPodcastPlaylistSettings *)self episodes];
  v6 = episodes;
  if (playbackNewestToOldest)
  {
    [episodes firstObject];
  }

  else
  {
    [episodes lastObject];
  }
  v7 = ;

  [v7 firstTimeAvailable];
  v9 = v8;

  return v9;
}

- (double)oldestEpisodeDate
{
  podcast = [(MTPodcastPlaylistSettings *)self podcast];
  playbackNewestToOldest = [podcast playbackNewestToOldest];

  episodes = [(MTPodcastPlaylistSettings *)self episodes];
  v6 = episodes;
  if (playbackNewestToOldest)
  {
    [episodes lastObject];
  }

  else
  {
    [episodes firstObject];
  }
  v7 = ;

  [v7 firstTimeAvailable];
  v9 = v8;

  return v9;
}

- (id)predicateForSettings
{
  podcast = [(MTPodcastPlaylistSettings *)self podcast];
  uuid = [podcast uuid];
  v5 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:uuid];

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
    podcast2 = [(MTPodcastPlaylistSettings *)self podcast];
    isExplicit = [podcast2 isExplicit];

    if (isExplicit)
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
    mediaType = [(MTPodcastPlaylistSettings *)self mediaType];
    v15 = &kEpisodeAudio;
    if (mediaType != 1)
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

  downloaded = [(MTPodcastPlaylistSettings *)self downloaded];
  if (downloaded == 1)
  {
    v33 = v21;
    v23 = @"%K != nil";
    v24 = &v33;
  }

  else
  {
    if (downloaded != 2)
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
  podcast3 = [(MTPodcastPlaylistSettings *)self podcast];
  uuid2 = [podcast3 uuid];
  v30 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:uuid2];
  v31 = [v21 AND:v30];

  return v31;
}

- (void)takeValuesFromDefaultSettings:(id)settings
{
  settingsCopy = settings;
  -[MTPodcastPlaylistSettings setMediaType:](self, "setMediaType:", [settingsCopy mediaType]);
  showPlayedEpisodes = [settingsCopy showPlayedEpisodes];

  [(MTPodcastPlaylistSettings *)self setShowPlayedEpisodes:showPlayedEpisodes];

  [(MTPodcastPlaylistSettings *)self setNeedsUpdate:1];
}

- (id)metricsContentIdentifier
{
  playlist = [(MTPodcastPlaylistSettings *)self playlist];
  metricsContentIdentifier = [playlist metricsContentIdentifier];

  return metricsContentIdentifier;
}

- (id)metricsAdditionalData
{
  metricsKeys = [(MTPodcastPlaylistSettings *)self metricsKeys];
  v4 = [(MTPodcastPlaylistSettings *)self dictionaryWithValuesForKeys:metricsKeys];
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

- (void)setNeedsUpdate:(BOOL)update
{
  updateCopy = update;
  playlist = [(MTPodcastPlaylistSettings *)self playlist];
  needsUpdate = [playlist needsUpdate];

  flags = [(MTPodcastPlaylistSettings *)self flags];
  if (((((flags & 2) == 0) ^ updateCopy) & 1) == 0)
  {
    v8 = updateCopy | needsUpdate;
    v9 = 2;
    if (!updateCopy)
    {
      v9 = 0;
    }

    [(MTPodcastPlaylistSettings *)self setFlags:flags & 0xFFFFFFFFFFFFFFFDLL | v9];
    playlist2 = [(MTPodcastPlaylistSettings *)self playlist];
    [playlist2 setNeedsUpdate:v8 & 1];

    playlistIfDefault = [(MTPodcastPlaylistSettings *)self playlistIfDefault];
    needsUpdate2 = [playlistIfDefault needsUpdate];

    playlistIfDefault2 = [(MTPodcastPlaylistSettings *)self playlistIfDefault];
    [playlistIfDefault2 setNeedsUpdate:(updateCopy | needsUpdate2) & 1];
  }
}

@end