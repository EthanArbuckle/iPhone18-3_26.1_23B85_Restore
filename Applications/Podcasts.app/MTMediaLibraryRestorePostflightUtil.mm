@interface MTMediaLibraryRestorePostflightUtil
+ (id)downloadCandidateMediaItems;
+ (id)postRestoreCandidateMediaItems;
+ (id)uuidsByRemovingDownloadCandidatesFromEpisodeUuids:(id)uuids;
@end

@implementation MTMediaLibraryRestorePostflightUtil

+ (id)downloadCandidateMediaItems
{
  v2 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanFalse forProperty:MPMediaItemPropertyIsLocal];
  v3 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanFalse forProperty:MPMediaItemPropertyNeedsRestore];
  v4 = MPMediaEntityPropertyKeepLocal;
  v5 = [MPMediaPropertyPredicate predicateWithValue:&off_100500D60 forProperty:MPMediaEntityPropertyKeepLocal];
  v6 = [MPMediaPropertyPredicate predicateWithValue:&off_100500D78 forProperty:v4];
  v16[0] = v5;
  v16[1] = v6;
  v7 = [NSArray arrayWithObjects:v16 count:2];
  v8 = [MPMediaCompoundAnyPredicate predicateMatchingPredicates:v7];

  v15[0] = v2;
  v15[1] = v3;
  v15[2] = v8;
  v9 = [NSArray arrayWithObjects:v15 count:3];
  v10 = [MPMediaCompoundAllPredicate predicateMatchingPredicates:v9];

  v11 = [MPMediaQuery mt_allItemsForPodcastsAppWithAdditionalFilterPredicate:v10 disableSystemPredicates:1];
  v12 = [NSSet setWithArray:v11];
  v13 = [v12 objectsPassingTest:&stru_1004DA6C8];

  return v13;
}

+ (id)postRestoreCandidateMediaItems
{
  v2 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanFalse forProperty:MPMediaItemPropertyIsLocal];
  v3 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanFalse forProperty:MPMediaItemPropertyNeedsRestore];
  v4 = [MPMediaPropertyPredicate predicateWithValue:&off_100500D78 forProperty:MPMediaEntityPropertyKeepLocal];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v5 = [NSArray arrayWithObjects:v10 count:3];
  v6 = [MPMediaCompoundAllPredicate predicateMatchingPredicates:v5];

  v7 = [MPMediaQuery mt_allItemsForPodcastsAppWithAdditionalFilterPredicate:v6 disableSystemPredicates:1];
  v8 = [NSSet setWithArray:v7];

  return v8;
}

+ (id)uuidsByRemovingDownloadCandidatesFromEpisodeUuids:(id)uuids
{
  uuidsCopy = uuids;
  if ([uuidsCopy count])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_1000089EC;
    v23 = sub_10003B4CC;
    v5 = uuidsCopy;
    v24 = v5;
    downloadCandidateMediaItems = [self downloadCandidateMediaItems];
    v7 = [downloadCandidateMediaItems mt_compactMap:&stru_1004DA6E8];

    v8 = +[MTDB sharedInstance];
    mainOrPrivateContext = [v8 mainOrPrivateContext];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10009D040;
    v14[3] = &unk_1004DA778;
    v18 = &v19;
    v15 = v5;
    v10 = mainOrPrivateContext;
    v16 = v10;
    v11 = v7;
    v17 = v11;
    [v10 performBlockAndWait:v14];
    v12 = v20[5];

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v12 = uuidsCopy;
  }

  return v12;
}

@end