@interface MTLibraryQuery
- (MTLibraryQuery)init;
- (void)runQuery;
- (void)runQueryInContext:(id)context;
- (void)runQueryWithPodcastPredicate:(id)predicate episodePredicate:(id)episodePredicate channelPredicate:(id)channelPredicate categoryPredicate:(id)categoryPredicate;
@end

@implementation MTLibraryQuery

- (MTLibraryQuery)init
{
  v6.receiver = self;
  v6.super_class = MTLibraryQuery;
  v2 = [(MTLibraryQuery *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_active = 1;
    v2->_fetchLimit = 0;
    v4 = v2;
  }

  return v3;
}

- (void)runQueryWithPodcastPredicate:(id)predicate episodePredicate:(id)episodePredicate channelPredicate:(id)channelPredicate categoryPredicate:(id)categoryPredicate
{
  categoryPredicateCopy = categoryPredicate;
  channelPredicateCopy = channelPredicate;
  episodePredicateCopy = episodePredicate;
  [(MTLibraryQuery *)self setPodcastPredicate:predicate];
  [(MTLibraryQuery *)self setEpisodePredicate:episodePredicateCopy];

  [(MTLibraryQuery *)self setChannelPredicate:channelPredicateCopy];
  [(MTLibraryQuery *)self setCategoryPredicate:categoryPredicateCopy];

  [(MTLibraryQuery *)self runQuery];
}

- (void)runQuery
{
  v3 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v3 mainOrPrivateContext];

  [(MTLibraryQuery *)self runQueryInContext:mainOrPrivateContext];
}

- (void)runQueryInContext:(id)context
{
  contextCopy = context;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_100008960;
  v60 = sub_10003B494;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_100008960;
  v54 = sub_10003B494;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_100008960;
  v48 = sub_10003B494;
  v49 = +[NSMutableArray array];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_100008960;
  v42 = sub_10003B494;
  v43 = 0;
  v4 = self->_episodeSortDescriptors;
  v5 = self->_podcastSortDescriptors;
  v6 = self->_channelSortDescriptors;
  v7 = self->_categorySortDescriptors;
  v8 = self->_podcastPredicate;
  v9 = self->_episodePredicate;
  v10 = self->_channelPredicate;
  v11 = self->_categoryPredicate;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10007E458;
  v23[3] = &unk_1004D98D8;
  v12 = v8;
  v24 = v12;
  v13 = v5;
  v25 = v13;
  selfCopy = self;
  v34 = &v50;
  v14 = contextCopy;
  v27 = v14;
  v35 = &v44;
  v15 = v9;
  v28 = v15;
  v36 = &v56;
  v16 = v4;
  v29 = v16;
  v17 = v10;
  v30 = v17;
  v18 = v6;
  v31 = v18;
  v19 = v11;
  v32 = v19;
  v37 = &v38;
  v20 = v7;
  v33 = v20;
  [v14 performBlockAndWait:v23];
  action = self->_action;
  if (action)
  {
    action[2](action, v51[5], v57[5], v45[5], v39[5]);
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);
}

@end