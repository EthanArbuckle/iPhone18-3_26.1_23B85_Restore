@interface FBAOSLogViewerDataSource
- (BOOL)hasMoreLogs;
- (BOOL)lastFetchReturnedZeroEvents;
- (BOOL)persistence:(id)a3 results:(id)a4 error:(id)a5;
- (BOOL)shouldContinue;
- (FBAOSLogViewerDataSource)initWithArchive:(id)a3 pageSize:(int64_t)a4 pageCompletion:(id)a5 error:(id)a6;
- (id)logAtIndex:(int64_t)a3;
- (id)loggerLibWithArchive:(id)a3 pageSize:(unint64_t)a4;
- (int64_t)numberOfLogs;
- (void)dealloc;
- (void)fetchNextBatch;
- (void)nextPage;
- (void)nextPageForReal;
- (void)persistenceDidFinishReadingForStartDate:(id)a3 endDate:(id)a4;
- (void)prepareForNextDateRangeFetch;
- (void)prepareForNextPage;
@end

@implementation FBAOSLogViewerDataSource

- (FBAOSLogViewerDataSource)initWithArchive:(id)a3 pageSize:(int64_t)a4 pageCompletion:(id)a5 error:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v37.receiver = self;
  v37.super_class = FBAOSLogViewerDataSource;
  v14 = [(FBAOSLogViewerDataSource *)&v37 init];
  if (!v14)
  {
LABEL_11:
    v34 = v14;
    goto LABEL_15;
  }

  v36 = 0;
  v15 = [v11 checkResourceIsReachableAndReturnError:&v36];
  v16 = v36;
  v17 = sub_10000A588();
  v18 = v17;
  if (v15)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v11 path];
      *buf = 138543362;
      v39 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Initializing log viewer with log archive [%{public}@]", buf, 0xCu);
    }

    v20 = objc_retainBlock(v12);
    pageFetchCompletion = v14->_pageFetchCompletion;
    v14->_pageFetchCompletion = v20;

    v22 = objc_retainBlock(v13);
    fetchErrorBlock = v14->_fetchErrorBlock;
    v14->_fetchErrorBlock = v22;

    objc_storeStrong(&v14->_logArchivePath, a3);
    v14->_pageSize = a4;
    v24 = [(FBAOSLogViewerDataSource *)v14 loggerLibWithArchive:v11 pageSize:[(FBAOSLogViewerDataSource *)v14 pageSize]];
    loggerLib = v14->_loggerLib;
    v14->_loggerLib = v24;

    [(OSLogPersistence *)v14->_loggerLib setDelegate:v14];
    v26 = objc_opt_new();
    savedEvents = v14->_savedEvents;
    v14->_savedEvents = v26;

    v14->_oldestEventMachTime = 0;
    v14->_gotDelegateCallbackInLastFetch = 0;
    v14->_numberOfEventsInLastFetch = 0;
    v14->_numberOfEmptyFetches = 0;
    v14->_pendingNextPageRequest = 0;
    v14->_fetchWatchdog = 0;
    v28 = [(FBAOSLogViewerDataSource *)v14 fetchErrorBlock];

    if (v28)
    {
      v29 = [(FBAOSLogViewerDataSource *)v14 loggerLib];
      v30 = [v29 fba_hasValidStartAndEndDates];

      if ((v30 & 1) == 0)
      {
        [(FBAOSLogViewerDataSource *)v14 setFoundCorruptDate:1];
        v31 = sub_10000A588();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_1000922D8(v14, v31);
        }

        v32 = [(FBAOSLogViewerDataSource *)v14 fetchErrorBlock];
        v33 = sub_10002791C(-1008);
        (v32)[2](v32, v33);
      }
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_100092214(v14, v16, v18);
  }

  v34 = 0;
LABEL_15:

  return v34;
}

- (void)dealloc
{
  [(FBAOSLogViewerDataSource *)self setLoggerLib:0];
  v3.receiver = self;
  v3.super_class = FBAOSLogViewerDataSource;
  [(FBAOSLogViewerDataSource *)&v3 dealloc];
}

- (void)nextPage
{
  v3 = [(FBAOSLogViewerDataSource *)self loggerLib];
  v4 = [v3 fba_hasValidStartAndEndDates];

  if (v4)
  {
    v5 = sub_10000A588();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Next Page", v6, 2u);
    }

    if ([(FBAOSLogViewerDataSource *)self pendingNextPageRequest]< 1)
    {
      [(FBAOSLogViewerDataSource *)self nextPageForReal];
    }

    else
    {
      [(FBAOSLogViewerDataSource *)self setPendingNextPageRequest:[(FBAOSLogViewerDataSource *)self pendingNextPageRequest]+ 1];
    }
  }
}

- (void)nextPageForReal
{
  [(FBAOSLogViewerDataSource *)self prepareForNextPage];

  [(FBAOSLogViewerDataSource *)self fetchNextBatch];
}

- (int64_t)numberOfLogs
{
  v2 = [(FBAOSLogViewerDataSource *)self savedEvents];
  v3 = [v2 count];

  return v3;
}

- (id)logAtIndex:(int64_t)a3
{
  v4 = [(FBAOSLogViewerDataSource *)self savedEvents];
  v5 = [v4 objectAtIndexedSubscript:a3];
  v6 = [v5 fba_toString];

  return v6;
}

- (BOOL)hasMoreLogs
{
  v3 = [(FBAOSLogViewerDataSource *)self oldestEventTimestamp];

  if (!v3)
  {
    return 1;
  }

  v4 = [(FBAOSLogViewerDataSource *)self loggerLib];

  if (!v4)
  {
    return 0;
  }

  v5 = [(FBAOSLogViewerDataSource *)self oldestEventTimestamp];
  v6 = [(FBAOSLogViewerDataSource *)self loggerLib];
  v7 = [v6 endDate];
  v8 = [v5 compare:v7] != 0;

  return v8;
}

- (void)prepareForNextPage
{
  [(FBAOSLogViewerDataSource *)self setEventCountForCurrentPage:0];
  [(FBAOSLogViewerDataSource *)self setNumberOfEmptyFetches:0];

  [(FBAOSLogViewerDataSource *)self prepareForNextDateRangeFetch];
}

- (void)prepareForNextDateRangeFetch
{
  [(FBAOSLogViewerDataSource *)self setNumberOfEventsInLastFetch:0];
  [(FBAOSLogViewerDataSource *)self setGotDelegateCallbackInLastFetch:0];

  [(FBAOSLogViewerDataSource *)self setFetchWatchdog:0];
}

- (BOOL)lastFetchReturnedZeroEvents
{
  if ([(FBAOSLogViewerDataSource *)self numberOfEventsInLastFetch])
  {
    return 0;
  }

  return [(FBAOSLogViewerDataSource *)self gotDelegateCallbackInLastFetch];
}

- (void)fetchNextBatch
{
  v3 = sub_10000A588();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100092400(self);
  }

  v4 = [(FBAOSLogViewerDataSource *)self oldestEventTimestamp];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(FBAOSLogViewerDataSource *)self loggerLib];
    v6 = [v7 startDate];
  }

  v8 = 10.0;
  if ([(FBAOSLogViewerDataSource *)self numberOfEmptyFetches]>= 2)
  {
    v8 = fmin(__exp10([(FBAOSLogViewerDataSource *)self numberOfEmptyFetches]), 1.79769313e308);
  }

  v9 = sub_10000A588();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v15 = 134217984;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Time delta: [%f]", &v15, 0xCu);
  }

  v10 = [v6 dateByAddingTimeInterval:v8];
  v11 = sub_10000A588();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v6 fba_toString];
    v13 = [v10 fba_toString];
    v15 = 138543618;
    v16 = *&v12;
    v17 = 2114;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "start date: [%{public}@]  end date: [%{public}@] ", &v15, 0x16u);
  }

  [(FBAOSLogViewerDataSource *)self prepareForNextDateRangeFetch];
  v14 = [(FBAOSLogViewerDataSource *)self loggerLib];
  [v14 fetchFromStartDate:v6 toEndDate:v10];
}

- (id)loggerLibWithArchive:(id)a3 pageSize:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(OSLogPersistence);
  [v6 setOptions:1];
  [v6 setBatchSize:a4];
  [v6 setLogArchive:v5];

  v7 = sub_10000A588();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 archiveVersion];
    v9 = [v6 startDate];
    v10 = [v9 fba_toString];
    v11 = [v6 endDate];
    v12 = [v11 fba_toString];
    v14 = 134218498;
    v15 = v8;
    v16 = 2114;
    v17 = v10;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Log archive version is [%lu] start date: [%{public}@] end date [%{public}@]", &v14, 0x20u);
  }

  return v6;
}

- (BOOL)shouldContinue
{
  if ([(FBAOSLogViewerDataSource *)self isCurrentPageComplete])
  {
    return 0;
  }

  return [(FBAOSLogViewerDataSource *)self hasMoreLogs];
}

- (BOOL)persistence:(id)a3 results:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  [(FBAOSLogViewerDataSource *)self setGotDelegateCallbackInLastFetch:1];
  v9 = sub_10000A588();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100092484();
  }

  if ([v7 count])
  {
    if (!v8)
    {
      v12 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v14 = v7;
      v15 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v29;
LABEL_14:
        v18 = 0;
        while (1)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v28 + 1) + 8 * v18);
          v20 = [(FBAOSLogViewerDataSource *)self eventCountForCurrentPage];
          v21 = [v12 count]+ v20;
          if (v21 >= [(FBAOSLogViewerDataSource *)self pageSize])
          {
            break;
          }

          v22 = [v19 machTimestamp];
          if (v22 > [(FBAOSLogViewerDataSource *)self oldestEventMachTime])
          {
            [v12 addObject:v19];
            -[FBAOSLogViewerDataSource setOldestEventMachTime:](self, "setOldestEventMachTime:", [v19 machTimestamp]);
            v23 = [v19 timestamp];
            [(FBAOSLogViewerDataSource *)self setOldestEventTimestamp:v23];
          }

          if (v16 == ++v18)
          {
            v16 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
            if (v16)
            {
              goto LABEL_14;
            }

            break;
          }
        }
      }

      [(FBAOSLogViewerDataSource *)self setEventCountForCurrentPage:[v12 count]+ [(FBAOSLogViewerDataSource *)self eventCountForCurrentPage]];
      [(FBAOSLogViewerDataSource *)self setNumberOfEventsInLastFetch:[v12 count]];
      v24 = sub_10000A588();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_100092530(v12);
      }

      v25 = [(FBAOSLogViewerDataSource *)self savedEvents];
      v26 = [v12 copy];
      [v25 addObjectsFromArray:v26];

      v13 = [(FBAOSLogViewerDataSource *)self shouldContinue];
      goto LABEL_25;
    }

    v10 = sub_10000A588();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000924B8(v8, v10);
    }

    v11 = [(FBAOSLogViewerDataSource *)self fetchErrorBlock];

    if (!v11)
    {
      v13 = 0;
      goto LABEL_26;
    }

    v12 = [(FBAOSLogViewerDataSource *)self fetchErrorBlock];
    (v12[2].isa)(v12, v8);
  }

  else
  {
    v12 = sub_10000A588();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No more results, done", buf, 2u);
    }
  }

  v13 = 0;
LABEL_25:

LABEL_26:
  return v13;
}

- (void)persistenceDidFinishReadingForStartDate:(id)a3 endDate:(id)a4
{
  if ([(FBAOSLogViewerDataSource *)self gotDelegateCallbackInLastFetch:a3]&& ![(FBAOSLogViewerDataSource *)self lastFetchReturnedZeroEvents])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(FBAOSLogViewerDataSource *)self numberOfEmptyFetches]+ 1;
  }

  [(FBAOSLogViewerDataSource *)self setNumberOfEmptyFetches:v5];
  v6 = [(FBAOSLogViewerDataSource *)self fetchWatchdog];
  [(FBAOSLogViewerDataSource *)self setFetchWatchdog:v6 + 1];
  if (v6 < 1000)
  {
    v10 = [(FBAOSLogViewerDataSource *)self shouldContinue];
    v11 = sub_10000A588();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if (v10)
    {
      if (v12)
      {
        sub_1000926B0();
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000B31C;
      block[3] = &unk_1000DE430;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      if (v12)
      {
        sub_1000925B4();
      }

      v13 = [(FBAOSLogViewerDataSource *)self pageFetchCompletion];

      if (v13)
      {
        v14 = sub_10000A588();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          sub_1000925E8(self);
        }

        v15 = [(FBAOSLogViewerDataSource *)self pageFetchCompletion];
        (v15)[2](v15, self);
      }

      if ([(FBAOSLogViewerDataSource *)self pendingNextPageRequest]>= 1)
      {
        v16 = sub_10000A588();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          sub_10009267C();
        }

        [(FBAOSLogViewerDataSource *)self setPendingNextPageRequest:[(FBAOSLogViewerDataSource *)self pendingNextPageRequest]- 1];
        [(FBAOSLogViewerDataSource *)self nextPageForReal];
      }
    }
  }

  else
  {
    [(FBAOSLogViewerDataSource *)self setFoundCorruptDate:1];
    v7 = sub_10000A588();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000926E4();
    }

    v8 = [(FBAOSLogViewerDataSource *)self fetchErrorBlock];
    v9 = sub_10002791C(-1008);
    (v8)[2](v8, v9);
  }
}

@end