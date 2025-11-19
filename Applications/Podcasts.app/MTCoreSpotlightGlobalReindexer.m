@interface MTCoreSpotlightGlobalReindexer
- (BOOL)collectNextBatch:(id)a3;
- (MTCoreSpotlightGlobalReindexer)initWithStartingIndexPath:(id)a3;
- (id)_entitiesByRemovingAlreadyProcessedFrom:(id)a3;
- (id)description;
- (id)nextBatch;
- (void)cancel;
- (void)markUpdateUnnecessaryForObjectIDs:(id)a3;
- (void)reset;
- (void)setCanceled:(BOOL)a3;
- (void)setCurrentFetchRequest:(id)a3;
@end

@implementation MTCoreSpotlightGlobalReindexer

- (MTCoreSpotlightGlobalReindexer)initWithStartingIndexPath:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MTCoreSpotlightGlobalReindexer;
  v5 = [(MTCoreSpotlightGlobalReindexer *)&v15 init];
  if (v5)
  {
    if (qword_100583C08 != -1)
    {
      sub_1003B2C4C();
    }

    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D3B30;
    block[3] = &unk_1004D8688;
    block[4] = &v17;
    dispatch_sync(qword_100583C10, block);
    v6 = v18[3];
    _Block_object_dispose(&v17, 8);
    v5->_debugID = v6;
    v7 = +[NSMutableArray array];
    indexAllCompletions = v5->_indexAllCompletions;
    v5->_indexAllCompletions = v7;

    [(MTCoreSpotlightGlobalReindexer *)v5 reset];
    if (v4)
    {
      v5->_nextIndexPath.object = [MTCoreSpotlightUtil objectTypeForIndexPath:v4];
      v5->_nextIndexPath.batch = [MTCoreSpotlightUtil batchForIndexPath:v4];
      v5->_indexInCurrentBatch = [MTCoreSpotlightUtil indexInBatchForIndexPath:v4];
    }

    v9 = +[NSMutableSet set];
    externallyProcessedMOIDs = v5->_externallyProcessedMOIDs;
    v5->_externallyProcessedMOIDs = v9;

    v11 = +[MTDB sharedInstance];
    v12 = [v11 createSingleUsePrivateContext:@"MTCoreSpotlightGlobalReindexer"];
    context = v5->_context;
    v5->_context = v12;
  }

  return v5;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = MTCoreSpotlightGlobalReindexer;
  v3 = [(MTCoreSpotlightGlobalReindexer *)&v10 description];
  v4 = [NSNumber numberWithInteger:self->_debugID];
  v5 = v4;
  v6 = @"NO";
  if (self->_finished)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->_canceled)
  {
    v6 = @"YES";
  }

  v8 = [NSString stringWithFormat:@"%@, debugID=%@, finished=%@, canceled=%@", v3, v4, v7, v6];

  return v8;
}

- (void)setCurrentFetchRequest:(id)a3
{
  v5 = a3;
  currentFetchRequest = self->_currentFetchRequest;
  p_currentFetchRequest = &self->_currentFetchRequest;
  if (currentFetchRequest != v5)
  {
    v8 = v5;
    objc_storeStrong(p_currentFetchRequest, a3);
    [(NSFetchRequest *)*p_currentFetchRequest setFetchLimit:50000];
    [(NSFetchRequest *)*p_currentFetchRequest setResultType:1];
    v5 = v8;
  }
}

- (id)nextBatch
{
  if ([(MTCoreSpotlightGlobalReindexer *)self canceled]|| [(MTCoreSpotlightGlobalReindexer *)self finished]|| self->_nextIndexPath.object >= 3)
  {
    [(MTCoreSpotlightGlobalReindexer *)self setFinished:1];
    v3 = 0;
  }

  else
  {
    v5 = 50000 * self->_nextIndexPath.batch;
    v6 = [(MTCoreSpotlightGlobalReindexer *)self currentFetchRequest];
    [v6 setFetchOffset:v5];

    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_100008A5C;
    v22 = sub_10003B504;
    v23 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_100008A5C;
    v16 = sub_10003B504;
    v17 = 0;
    v7 = [(MTCoreSpotlightGlobalReindexer *)self context];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000D3240;
    v11[3] = &unk_1004D91F8;
    v11[4] = self;
    v11[5] = &v12;
    v11[6] = &v18;
    [v7 performBlockAndWait:v11];

    v8 = v13[5];
    if (!v8)
    {
      [v19[5] logAndThrow:1];
      v8 = v13[5];
    }

    if ([v8 count])
    {
      ++self->_nextIndexPath.batch;
      v9 = v13[5];
    }

    else
    {
      ++self->_nextIndexPath.object;
      self->_nextIndexPath.batch = 0;
      self->_indexInCurrentBatch = 0;
      v10 = [MTCoreSpotlightUtil fetchRequestForIndexType:?];
      [(MTCoreSpotlightGlobalReindexer *)self setCurrentFetchRequest:v10];

      v9 = [(MTCoreSpotlightGlobalReindexer *)self nextBatch];
    }

    v3 = v9;
    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(&v18, 8);
  }

  return v3;
}

- (BOOL)collectNextBatch:(id)a3
{
  v4 = a3;
  v5 = [(MTCoreSpotlightGlobalReindexer *)self nextBatch];
  if ([v5 count])
  {
    v6 = [(MTCoreSpotlightGlobalReindexer *)self context];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000D3474;
    v14 = &unk_1004DB7A0;
    v18 = v4;
    v15 = self;
    v7 = v5;
    v16 = v7;
    v17 = v6;
    v8 = v6;
    [v8 performBlockAndWait:&v11];
    v9 = [v7 count] != 0;
  }

  else
  {
    v8 = _MTLogCategorySpotlight();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Indexing] *** batch processing - no more entities for processing [%@]", buf, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (void)cancel
{
  [(MTCoreSpotlightGlobalReindexer *)self setCanceled:1];

  [(MTCoreSpotlightGlobalReindexer *)self setFinished:1];
}

- (void)setCanceled:(BOOL)a3
{
  self->_canceled = a3;
  if (a3)
  {
    [(MTCoreSpotlightGlobalReindexer *)self setFinished:1];
  }
}

- (void)reset
{
  self->_nextIndexPath.object = 0;
  self->_nextIndexPath.batch = 0;
  v3 = [MTCoreSpotlightUtil fetchRequestForIndexType:0];
  [(MTCoreSpotlightGlobalReindexer *)self setCurrentFetchRequest:v3];

  v4 = +[NSMutableSet set];
  externallyProcessedMOIDs = self->_externallyProcessedMOIDs;
  self->_externallyProcessedMOIDs = v4;

  [(MTCoreSpotlightGlobalReindexer *)self setCanceled:0];

  [(MTCoreSpotlightGlobalReindexer *)self setFinished:0];
}

- (void)markUpdateUnnecessaryForObjectIDs:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->_externallyProcessedMOIDs addObjectsFromArray:?];
  }
}

- (id)_entitiesByRemovingAlreadyProcessedFrom:(id)a3
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000D3990;
  v9[3] = &unk_1004DB7C8;
  v9[4] = self;
  v3 = a3;
  v4 = [v3 mt_filter:v9];
  v5 = [v3 count];

  v6 = v5 - [v4 count];
  if (v6 >= 1)
  {
    v7 = _MTLogCategorySpotlight();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[BatchGenerator] filtering out %d already encountered items", buf, 8u);
    }
  }

  return v4;
}

@end