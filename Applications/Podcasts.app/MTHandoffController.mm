@interface MTHandoffController
- (BOOL)continueCoreSpotlightItemActivity:(id)activity;
- (BOOL)continueCoreSpotlightSearchActivity:(id)activity;
- (MTHandoffController)init;
- (id)supportedActivityTypes;
- (void)continueActivity:(id)activity;
- (void)continuePlaybackActivity:(id)activity;
@end

@implementation MTHandoffController

- (MTHandoffController)init
{
  v3.receiver = self;
  v3.super_class = MTHandoffController;
  return [(MTHandoffController *)&v3 init];
}

- (void)continueActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v5 = +[IMPlayerManifest supportedActivityTypes];
  if ([v5 containsObject:activityType])
  {
    [(MTHandoffController *)self continuePlaybackActivity:activityCopy];
  }

  else if ([activityType isEqualToString:CSSearchableItemActionType])
  {
    [(MTHandoffController *)self continueCoreSpotlightItemActivity:activityCopy];
  }

  else if ([activityType isEqualToString:CSQueryContinuationActionType])
  {
    [(MTHandoffController *)self continueCoreSpotlightSearchActivity:activityCopy];
  }
}

- (id)supportedActivityTypes
{
  v2 = +[IMPlayerManifest supportedActivityTypes];
  v3 = [v2 mutableCopy];

  [v3 addObject:CSSearchableItemActionType];
  [v3 addObject:CSQueryContinuationActionType];

  return v3;
}

- (void)continuePlaybackActivity:(id)activity
{
  activityCopy = activity;
  v4 = +[MTPlayerController defaultInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100099D10;
  v6[3] = &unk_1004D84F8;
  v7 = activityCopy;
  v5 = activityCopy;
  [v4 restoreFromUserActivity:v5 startPlayback:1 reason:2 interactive:0 completion:v6];
}

- (BOOL)continueCoreSpotlightItemActivity:(id)activity
{
  activityCopy = activity;
  userInfo = [activityCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:MDItemUniqueIdentifier];

  if (![v5 length])
  {
    userInfo2 = [activityCopy userInfo];
    v7 = [userInfo2 objectForKeyedSubscript:CSSearchableItemActivityIdentifier];

    v5 = v7;
  }

  if ([v5 length] >= 2)
  {
    v9 = [v5 substringFromIndex:1];
    v10 = +[MTDB sharedInstance];
    mainOrPrivateContext = [v10 mainOrPrivateContext];

    v12 = +[MTApplication appController];
    [v12 dismissSearchOverlayController];

    if ([v5 hasPrefix:@"p"])
    {
      containerIdentifier = [mainOrPrivateContext podcastForFeedUrl:v9];
      v8 = containerIdentifier != 0;
      if (containerIdentifier)
      {
        v14 = +[MTApplication appController];
        [v14 presentPodcast:containerIdentifier episode:0 podcastTab:0 startPlayback:0 animated:0];

        [IMMetrics recordUserAction:@"spotlight" dataSource:containerIdentifier withData:&off_1005024B0];
        v8 = 1;
      }

      goto LABEL_21;
    }

    if ([v5 hasPrefix:@"e"])
    {
      containerIdentifier = [activityCopy containerIdentifier];
      if ([containerIdentifier length])
      {
        [MTEpisode predicateForEpisodeGuid:v9 onFeedURL:containerIdentifier];
      }

      else
      {
        [MTEpisode predicateForEpisodeGuid:v9];
      }
      v15 = ;
      v17 = [mainOrPrivateContext objectsInEntity:kMTEpisodeEntityName predicate:v15 sortDescriptors:0];
      firstObject = [v17 firstObject];
      v20 = firstObject;
      v8 = firstObject != 0;
      if (firstObject)
      {
        v24 = [firstObject isInPodcastDetailsUnplayedTab] ^ 1;
        +[MTApplication appController];
        v21 = v25 = v15;
        podcast = [v20 podcast];
        [v21 presentPodcast:podcast episode:v20 podcastTab:v24 startPlayback:0 animated:0];

        v15 = v25;
        [IMMetrics recordUserAction:@"spotlight" dataSource:v20 withData:&off_1005024D8];
      }
    }

    else
    {
      if (![v5 hasPrefix:@"s"])
      {
        v8 = 0;
LABEL_22:

        goto LABEL_23;
      }

      containerIdentifier = [MTPlaylist predicateForVisiblePlaylistWithUUID:v9];
      v15 = [mainOrPrivateContext objectsInEntity:kMTPlaylistEntityName predicate:containerIdentifier sortDescriptors:0];
      v16 = [v15 count];
      v8 = v16 != 0;
      if (!v16)
      {
        goto LABEL_20;
      }

      v17 = [v15 objectAtIndexedSubscript:0];
      v18 = +[MTApplication appController];
      [v18 presentStation:v17 new:0];

      [IMMetrics recordUserAction:@"spotlight" dataSource:v17 withData:&off_100502500];
    }

LABEL_20:
LABEL_21:

    goto LABEL_22;
  }

  v8 = 0;
LABEL_23:

  return v8;
}

- (BOOL)continueCoreSpotlightSearchActivity:(id)activity
{
  userInfo = [activity userInfo];
  v4 = [userInfo objectForKeyedSubscript:CSSearchQueryString];

  v5 = [v4 length];
  if (v5)
  {
    v6 = +[MTApplication appController];
    [v6 showSearchControllerWithSearchText:v4];
  }

  return v5 != 0;
}

@end