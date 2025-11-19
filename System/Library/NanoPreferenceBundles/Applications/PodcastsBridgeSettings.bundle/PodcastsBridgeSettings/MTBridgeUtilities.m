@interface MTBridgeUtilities
+ (id)localizedAddEpisodesString;
+ (id)localizedChooseShowsString;
+ (id)localizedNoPodcastsString;
+ (id)localizedNotificationsString;
+ (id)localizedOffString;
+ (id)localizedOutOfSpaceHeaderMessage;
+ (id)localizedOutOfSpaceHeaderTitle;
+ (id)localizedPodcastsDownloadsExplanation;
+ (id)localizedSavedString;
+ (id)localizedSettingsMessage;
+ (id)localizedSettingsString;
+ (id)localizedSignInMessage;
+ (id)localizedSignInString;
+ (id)localizedStringForEpisodeCount:(int64_t)a3;
+ (id)localizedUpNextString;
@end

@implementation MTBridgeUtilities

+ (id)localizedOutOfSpaceHeaderTitle
{
  v2 = +[NSBundle podcastsFoundationBundle];
  v3 = [v2 localizedStringForKey:@"SYNC_SETTINGS_OUT_OF_SPACE_HEADER_TITLE" value:@"Out of Media Storage" table:0];

  return v3;
}

+ (id)localizedOutOfSpaceHeaderMessage
{
  v2 = +[NSBundle podcastsFoundationBundle];
  v3 = [v2 localizedStringForKey:@"SYNC_SETTINGS_OUT_OF_SPACE_HEADER_MESSAGE" value:@"The storage space dedicated to media on your Apple Watch is full. To make space available table:{you can remove some podcasts, music, or audiobooks.", 0}];

  return v3;
}

+ (id)localizedNoPodcastsString
{
  v2 = +[NSBundle podcastsFoundationBundle];
  v3 = [v2 localizedStringForKey:@"SYNC_SETTINGS_CONTENT_SUMMARY_HEADER_NOTHING_ADDED_TITLE" value:@"No Podcasts" table:0];

  return v3;
}

+ (id)localizedStringForEpisodeCount:(int64_t)a3
{
  v4 = +[NSBundle podcastsFoundationBundle];
  v5 = [v4 localizedStringForKey:@"SYNC_SETTINGS_CONTENT_SUMMARY_HEADER_EPISODE_COUNT" value:&stru_1CB88 table:0];

  v6 = [NSString localizedStringWithValidatedFormat:v5 validFormatSpecifiers:@"%ld" error:0, a3];

  return v6;
}

+ (id)localizedPodcastsDownloadsExplanation
{
  v2 = +[NSBundle podcastsFoundationBundle];
  v3 = [v2 localizedStringForKey:@"SYNC_SETTINGS_DESCRIPTION" value:@"Podcasts are downloaded when Apple Watch is charging. Episodes will be removed after you listen to them." table:0];

  return v3;
}

+ (id)localizedAddEpisodesString
{
  v2 = +[NSBundle podcastsFoundationBundle];
  v3 = [v2 localizedStringForKey:@"ADD_EPISODES_FROM_GROUP_HEADER" value:@"Add Episodes From" table:0];

  return v3;
}

+ (id)localizedUpNextString
{
  v2 = +[NSBundle podcastsFoundationBundle];
  v3 = [v2 localizedStringForKey:@"UP_NEXT_CELL_STRING" value:@"Up Next" table:0];

  return v3;
}

+ (id)localizedSavedString
{
  v2 = +[NSBundle podcastsFoundationBundle];
  v3 = [v2 localizedStringForKey:@"SAVED_CELL_STRING" value:@"Saved" table:0];

  return v3;
}

+ (id)localizedChooseShowsString
{
  v2 = +[NSBundle podcastsFoundationBundle];
  v3 = [v2 localizedStringForKey:@"CHOOSE_SHOWS_GROUP_HEADER" value:@"Shows" table:0];

  return v3;
}

+ (id)localizedSignInString
{
  v2 = +[NSBundle podcastsFoundationBundle];
  v3 = [v2 localizedStringForKey:@"SIGN_IN_CELL_STRING" value:@"Sign In" table:0];

  return v3;
}

+ (id)localizedSignInMessage
{
  v2 = +[NSBundle podcastsFoundationBundle];
  v3 = [v2 localizedStringForKey:@"SIGN_IN_FOOTER_STRING" value:@"You must sign in to iTunes to use Podcasts on Apple Watch." table:0];

  return v3;
}

+ (id)localizedSettingsString
{
  v2 = +[NSBundle podcastsFoundationBundle];
  v3 = [v2 localizedStringForKey:@"SYNC_PODCASTS_CELL_STRING" value:@"Settings" table:0];

  return v3;
}

+ (id)localizedSettingsMessage
{
  v2 = +[NSBundle podcastsFoundationBundle];
  v3 = [v2 localizedStringForKey:@"SYNC_PODCASTS_FOOTER_STRING" value:@"To listen to podcasts on your Apple Watch table:{turn on Sync Podcasts in Settings.", 0}];

  return v3;
}

+ (id)localizedNotificationsString
{
  v2 = +[NSBundle podcastsFoundationBundle];
  v3 = [v2 localizedStringForKey:@"NOTIFICATIONS_GROUP_HEADER" value:@"Notifications" table:0];

  return v3;
}

+ (id)localizedOffString
{
  v2 = +[NSBundle podcastsFoundationBundle];
  v3 = [v2 localizedStringForKey:@"PODCASTS_SETTINGS_OFF" value:@"Off" table:0];

  return v3;
}

@end