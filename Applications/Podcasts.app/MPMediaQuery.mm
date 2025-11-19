@interface MPMediaQuery
+ (id)mt_allItemsForPodcastsAppWithAdditionalFilterPredicate:(id)a3 includePendingDeletions:(BOOL)a4 disableSystemPredicates:(BOOL)a5;
+ (id)mt_iTunesUQuery;
+ (id)mt_podcastsQuery;
@end

@implementation MPMediaQuery

+ (id)mt_allItemsForPodcastsAppWithAdditionalFilterPredicate:(id)a3 includePendingDeletions:(BOOL)a4 disableSystemPredicates:(BOOL)a5
{
  v7 = a3;
  v8 = +[MPMediaQuery mt_podcastsQuery];
  v9 = v8;
  if (v7)
  {
    [v8 addFilterPredicate:v7];
  }

  v26 = v9;
  v10 = [NSArray arrayWithObjects:&v26 count:1];
  v11 = +[MPMediaQuery mt_iTunesUQuery];
  v12 = v11;
  if (v7)
  {
    [v11 addFilterPredicate:v7];
  }

  v13 = [v10 arrayByAddingObject:v12];

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1000088F0;
  v24 = sub_10003B45C;
  v25 = &__NSArray0__struct;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100068844;
  v18[3] = &unk_1004D8F88;
  v19 = a5;
  v18[4] = &v20;
  [v13 enumerateObjectsUsingBlock:v18];
  if (!a4)
  {
    v14 = [v21[5] mt_filter:&stru_1004D8FC8];
    v15 = v21[5];
    v21[5] = v14;
  }

  v16 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v16;
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