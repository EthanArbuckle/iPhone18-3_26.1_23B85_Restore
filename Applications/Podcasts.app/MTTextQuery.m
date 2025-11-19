@interface MTTextQuery
- (id)titleForPodcastUuid:(id)a3;
- (void)runQueryWithText:(id)a3;
@end

@implementation MTTextQuery

- (void)runQueryWithText:(id)a3
{
  v4 = a3;
  v5 = [NSSortDescriptor sortDescriptorWithKey:kEpisodePubDate ascending:0];
  v75[0] = v5;
  v6 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeEpisodeNumber ascending:0];
  v75[1] = v6;
  v7 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeLevel ascending:1];
  v75[2] = v7;
  v60 = kEpisodeTitle;
  v8 = [NSSortDescriptor sortDescriptorWithKey:"sortDescriptorWithKey:ascending:selector:" ascending:? selector:?];
  v75[3] = v8;
  v9 = [NSArray arrayWithObjects:v75 count:4];
  [(MTLibraryQuery *)self setEpisodeSortDescriptors:v9];

  v58 = kPodcastTitle;
  v10 = [NSSortDescriptor sortDescriptorWithKey:"sortDescriptorWithKey:ascending:selector:" ascending:? selector:?];
  v11 = [NSArray arrayWithObject:v10];
  [(MTLibraryQuery *)self setPodcastSortDescriptors:v11];

  v12 = +[MTCategory sortDescriptorsForCategoriesInSearch];
  v53 = self;
  [(MTLibraryQuery *)self setCategorySortDescriptors:v12];

  v13 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v14 = [v4 stringByTrimmingCharactersInSet:v13];
  v15 = +[NSCharacterSet whitespaceCharacterSet];
  v16 = [v14 componentsSeparatedByCharactersInSet:v15];

  v69 = +[NSMutableArray array];
  v68 = +[NSMutableArray array];
  v67 = +[NSMutableArray array];
  v66 = +[NSMutableArray array];
  v65 = +[NSMutableArray array];
  v64 = +[NSMutableArray array];
  v63 = +[NSMutableArray array];
  v62 = +[NSMutableArray array];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v16;
  v17 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
  if (v17)
  {
    v18 = v17;
    v56 = *v71;
    v55 = kPodcastDescription;
    v19 = kEpisodeDescription;
    v20 = kChannelName;
    v21 = kChannelSubscriptionName;
    v22 = kChannelShowCount;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v71 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v70 + 1) + 8 * i);
        v25 = [NSPredicate predicateWithFormat:@"%K contains[cl] %@", v58, v24];
        [v69 addObject:v25];

        v26 = [NSPredicate predicateWithFormat:@"%K contains[cl] %@", v55, v24];
        [v68 addObject:v26];

        v27 = [NSPredicate predicateWithFormat:@"%K contains[cl] %@", v60, v24];
        [v67 addObject:v27];

        v28 = [NSPredicate predicateWithFormat:@"%K contains[cl] %@", v19, v24];
        [v66 addObject:v28];

        v29 = [NSPredicate predicateWithFormat:@"%K contains[cl] %@", v20, v24];
        [v65 addObject:v29];

        v30 = [NSPredicate predicateWithFormat:@"%K contains[cl] %@", v21, v24];
        [v64 addObject:v30];

        v31 = [NSPredicate predicateWithFormat:@"%K > %@", v22, &off_100500C28];
        [v63 addObject:v31];

        v32 = [MTCategory predicateForLibraryCategoriesMatching:v24];
        [v62 addObject:v32];
      }

      v18 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
    }

    while (v18);
  }

  v33 = [NSCompoundPredicate andPredicateWithSubpredicates:v69];
  v34 = [NSCompoundPredicate andPredicateWithSubpredicates:v68];
  v35 = +[MTPodcast predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  v36 = [NSArray arrayWithObjects:v33, v34, 0];
  v61 = [NSCompoundPredicate orPredicateWithSubpredicates:v36];

  v37 = [NSArray arrayWithObjects:v35, v61, 0];
  v59 = [NSCompoundPredicate andPredicateWithSubpredicates:v37];

  v38 = [NSCompoundPredicate andPredicateWithSubpredicates:v67];

  v39 = [NSCompoundPredicate andPredicateWithSubpredicates:v66];

  v40 = [NSArray arrayWithObjects:v38, v39, 0];
  v41 = [NSCompoundPredicate orPredicateWithSubpredicates:v40];

  v42 = v41;
  v57 = +[MTEpisode predicateForEpisodesInSearchResults];

  v43 = [NSArray arrayWithObjects:v57, v42, 0];

  v44 = [NSCompoundPredicate andPredicateWithSubpredicates:v43];

  v45 = [v65 arrayByAddingObjectsFromArray:v63];
  v46 = [NSCompoundPredicate andPredicateWithSubpredicates:v45];

  v47 = [v64 arrayByAddingObjectsFromArray:v63];
  v48 = [NSCompoundPredicate andPredicateWithSubpredicates:v47];

  v49 = [NSArray arrayWithObjects:v46, v48, 0];
  v50 = [NSCompoundPredicate orPredicateWithSubpredicates:v49];

  v51 = v50;
  v52 = [NSCompoundPredicate andPredicateWithSubpredicates:v62];
  [(MTLibraryQuery *)v53 runQueryWithPodcastPredicate:v59 episodePredicate:v44 channelPredicate:v51 categoryPredicate:v52];
}

- (id)titleForPodcastUuid:(id)a3
{
  v3 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100008960;
  v18 = sub_10003B494;
  v19 = 0;
  if (v3)
  {
    v4 = +[MTDB sharedInstance];
    v5 = [v4 mainOrPrivateContext];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10007F370;
    v10[3] = &unk_1004D87E8;
    v6 = v5;
    v11 = v6;
    v12 = v3;
    v13 = &v14;
    [v6 performBlockAndWait:v10];

    v7 = v15[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v14, 8);

  return v8;
}

@end