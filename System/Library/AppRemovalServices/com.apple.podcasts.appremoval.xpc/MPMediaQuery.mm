@interface MPMediaQuery
+ (id)mt_allItemsForPodcastsAppWithAdditionalFilterPredicate:(id)a3 includePendingDeletions:(BOOL)a4 disableSystemPredicates:(BOOL)a5;
+ (id)mt_iTunesUQuery;
+ (id)mt_podcastsQuery;
@end

@implementation MPMediaQuery

+ (id)mt_allItemsForPodcastsAppWithAdditionalFilterPredicate:(id)a3 includePendingDeletions:(BOOL)a4 disableSystemPredicates:(BOOL)a5
{
  v6 = a3;
  v7 = +[MPMediaQuery mt_podcastsQuery];
  v8 = v7;
  if (v6)
  {
    [v7 addFilterPredicate:v6];
  }

  v23 = v8;
  v9 = [NSArray arrayWithObjects:&v23 count:1];
  v10 = +[MPMediaQuery mt_iTunesUQuery];
  v11 = v10;
  if (v6)
  {
    [v10 addFilterPredicate:v6];
  }

  v12 = [v9 arrayByAddingObject:v11];

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10000637C;
  v21 = sub_10000638C;
  v22 = &__NSArray0__struct;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100006394;
  v15[3] = &unk_10000C6F0;
  v16 = a5;
  v15[4] = &v17;
  [v12 enumerateObjectsUsingBlock:v15];
  v13 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v13;
}

+ (id)mt_podcastsQuery
{
  v2 = +[MPMediaQuery podcastsQuery];
  [v2 setGroupingType:6];

  return v2;
}

+ (id)mt_iTunesUQuery
{
  v2 = objc_alloc_init(MPMediaQuery);
  v3 = [NSNumber numberWithInt:4104];
  v4 = [MPMediaPropertyPredicate predicateWithValue:v3 forProperty:MPMediaItemPropertyMediaType];
  [v2 addFilterPredicate:v4];

  [v2 setGroupingType:1];

  return v2;
}

@end