@interface FBAOSLogViewerDataSource
- (BOOL)hasMoreLogs;
- (BOOL)lastFetchReturnedZeroEvents;
- (BOOL)persistence:(id)persistence results:(id)results error:(id)error;
- (BOOL)shouldContinue;
- (FBAOSLogViewerDataSource)initWithArchive:(id)archive pageSize:(int64_t)size pageCompletion:(id)completion error:(id)error;
- (id)logAtIndex:(int64_t)index;
- (id)loggerLibWithArchive:(id)archive pageSize:(unint64_t)size;
- (int64_t)numberOfLogs;
- (void)dealloc;
- (void)fetchNextBatch;
- (void)nextPage;
- (void)nextPageForReal;
- (void)persistenceDidFinishReadingForStartDate:(id)date endDate:(id)endDate;
- (void)prepareForNextDateRangeFetch;
- (void)prepareForNextPage;
@end

@implementation FBAOSLogViewerDataSource

- (FBAOSLogViewerDataSource)initWithArchive:(id)archive pageSize:(int64_t)size pageCompletion:(id)completion error:(id)error
{
  archiveCopy = archive;
  completionCopy = completion;
  errorCopy = error;
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
  v15 = [archiveCopy checkResourceIsReachableAndReturnError:&v36];
  v16 = v36;
  v17 = sub_10000A588();
  v18 = v17;
  if (v15)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      path = [archiveCopy path];
      *buf = 138543362;
      v39 = path;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Initializing log viewer with log archive [%{public}@]", buf, 0xCu);
    }

    v20 = objc_retainBlock(completionCopy);
    pageFetchCompletion = v14->_pageFetchCompletion;
    v14->_pageFetchCompletion = v20;

    v22 = objc_retainBlock(errorCopy);
    fetchErrorBlock = v14->_fetchErrorBlock;
    v14->_fetchErrorBlock = v22;

    objc_storeStrong(&v14->_logArchivePath, archive);
    v14->_pageSize = size;
    v24 = [(FBAOSLogViewerDataSource *)v14 loggerLibWithArchive:archiveCopy pageSize:[(FBAOSLogViewerDataSource *)v14 pageSize]];
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
    fetchErrorBlock = [(FBAOSLogViewerDataSource *)v14 fetchErrorBlock];

    if (fetchErrorBlock)
    {
      loggerLib = [(FBAOSLogViewerDataSource *)v14 loggerLib];
      fba_hasValidStartAndEndDates = [loggerLib fba_hasValidStartAndEndDates];

      if ((fba_hasValidStartAndEndDates & 1) == 0)
      {
        [(FBAOSLogViewerDataSource *)v14 setFoundCorruptDate:1];
        v31 = sub_10000A588();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_1000922D8(v14, v31);
        }

        fetchErrorBlock2 = [(FBAOSLogViewerDataSource *)v14 fetchErrorBlock];
        v33 = sub_10002791C(-1008);
        (fetchErrorBlock2)[2](fetchErrorBlock2, v33);
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
  loggerLib = [(FBAOSLogViewerDataSource *)self loggerLib];
  fba_hasValidStartAndEndDates = [loggerLib fba_hasValidStartAndEndDates];

  if (fba_hasValidStartAndEndDates)
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
  savedEvents = [(FBAOSLogViewerDataSource *)self savedEvents];
  v3 = [savedEvents count];

  return v3;
}

- (id)logAtIndex:(int64_t)index
{
  savedEvents = [(FBAOSLogViewerDataSource *)self savedEvents];
  v5 = [savedEvents objectAtIndexedSubscript:index];
  fba_toString = [v5 fba_toString];

  return fba_toString;
}

- (BOOL)hasMoreLogs
{
  oldestEventTimestamp = [(FBAOSLogViewerDataSource *)self oldestEventTimestamp];

  if (!oldestEventTimestamp)
  {
    return 1;
  }

  loggerLib = [(FBAOSLogViewerDataSource *)self loggerLib];

  if (!loggerLib)
  {
    return 0;
  }

  oldestEventTimestamp2 = [(FBAOSLogViewerDataSource *)self oldestEventTimestamp];
  loggerLib2 = [(FBAOSLogViewerDataSource *)self loggerLib];
  endDate = [loggerLib2 endDate];
  v8 = [oldestEventTimestamp2 compare:endDate] != 0;

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

  oldestEventTimestamp = [(FBAOSLogViewerDataSource *)self oldestEventTimestamp];
  v5 = oldestEventTimestamp;
  if (oldestEventTimestamp)
  {
    startDate = oldestEventTimestamp;
  }

  else
  {
    loggerLib = [(FBAOSLogViewerDataSource *)self loggerLib];
    startDate = [loggerLib startDate];
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

  v10 = [startDate dateByAddingTimeInterval:v8];
  v11 = sub_10000A588();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    fba_toString = [startDate fba_toString];
    fba_toString2 = [v10 fba_toString];
    v15 = 138543618;
    v16 = *&fba_toString;
    v17 = 2114;
    v18 = fba_toString2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "start date: [%{public}@]  end date: [%{public}@] ", &v15, 0x16u);
  }

  [(FBAOSLogViewerDataSource *)self prepareForNextDateRangeFetch];
  loggerLib2 = [(FBAOSLogViewerDataSource *)self loggerLib];
  [loggerLib2 fetchFromStartDate:startDate toEndDate:v10];
}

- (id)loggerLibWithArchive:(id)archive pageSize:(unint64_t)size
{
  archiveCopy = archive;
  v6 = objc_alloc_init(OSLogPersistence);
  [v6 setOptions:1];
  [v6 setBatchSize:size];
  [v6 setLogArchive:archiveCopy];

  v7 = sub_10000A588();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    archiveVersion = [v6 archiveVersion];
    startDate = [v6 startDate];
    fba_toString = [startDate fba_toString];
    endDate = [v6 endDate];
    fba_toString2 = [endDate fba_toString];
    v14 = 134218498;
    v15 = archiveVersion;
    v16 = 2114;
    v17 = fba_toString;
    v18 = 2114;
    v19 = fba_toString2;
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

- (BOOL)persistence:(id)persistence results:(id)results error:(id)error
{
  resultsCopy = results;
  errorCopy = error;
  [(FBAOSLogViewerDataSource *)self setGotDelegateCallbackInLastFetch:1];
  v9 = sub_10000A588();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100092484();
  }

  if ([resultsCopy count])
  {
    if (!errorCopy)
    {
      fetchErrorBlock2 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(resultsCopy, "count")}];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v14 = resultsCopy;
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
          eventCountForCurrentPage = [(FBAOSLogViewerDataSource *)self eventCountForCurrentPage];
          v21 = [fetchErrorBlock2 count]+ eventCountForCurrentPage;
          if (v21 >= [(FBAOSLogViewerDataSource *)self pageSize])
          {
            break;
          }

          machTimestamp = [v19 machTimestamp];
          if (machTimestamp > [(FBAOSLogViewerDataSource *)self oldestEventMachTime])
          {
            [fetchErrorBlock2 addObject:v19];
            -[FBAOSLogViewerDataSource setOldestEventMachTime:](self, "setOldestEventMachTime:", [v19 machTimestamp]);
            timestamp = [v19 timestamp];
            [(FBAOSLogViewerDataSource *)self setOldestEventTimestamp:timestamp];
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

      [(FBAOSLogViewerDataSource *)self setEventCountForCurrentPage:[fetchErrorBlock2 count]+ [(FBAOSLogViewerDataSource *)self eventCountForCurrentPage]];
      [(FBAOSLogViewerDataSource *)self setNumberOfEventsInLastFetch:[fetchErrorBlock2 count]];
      v24 = sub_10000A588();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_100092530(fetchErrorBlock2);
      }

      savedEvents = [(FBAOSLogViewerDataSource *)self savedEvents];
      v26 = [fetchErrorBlock2 copy];
      [savedEvents addObjectsFromArray:v26];

      shouldContinue = [(FBAOSLogViewerDataSource *)self shouldContinue];
      goto LABEL_25;
    }

    v10 = sub_10000A588();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000924B8(errorCopy, v10);
    }

    fetchErrorBlock = [(FBAOSLogViewerDataSource *)self fetchErrorBlock];

    if (!fetchErrorBlock)
    {
      shouldContinue = 0;
      goto LABEL_26;
    }

    fetchErrorBlock2 = [(FBAOSLogViewerDataSource *)self fetchErrorBlock];
    (fetchErrorBlock2[2].isa)(fetchErrorBlock2, errorCopy);
  }

  else
  {
    fetchErrorBlock2 = sub_10000A588();
    if (os_log_type_enabled(fetchErrorBlock2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, fetchErrorBlock2, OS_LOG_TYPE_DEFAULT, "No more results, done", buf, 2u);
    }
  }

  shouldContinue = 0;
LABEL_25:

LABEL_26:
  return shouldContinue;
}

- (void)persistenceDidFinishReadingForStartDate:(id)date endDate:(id)endDate
{
  if ([(FBAOSLogViewerDataSource *)self gotDelegateCallbackInLastFetch:date]&& ![(FBAOSLogViewerDataSource *)self lastFetchReturnedZeroEvents])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(FBAOSLogViewerDataSource *)self numberOfEmptyFetches]+ 1;
  }

  [(FBAOSLogViewerDataSource *)self setNumberOfEmptyFetches:v5];
  fetchWatchdog = [(FBAOSLogViewerDataSource *)self fetchWatchdog];
  [(FBAOSLogViewerDataSource *)self setFetchWatchdog:fetchWatchdog + 1];
  if (fetchWatchdog < 1000)
  {
    shouldContinue = [(FBAOSLogViewerDataSource *)self shouldContinue];
    v11 = sub_10000A588();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if (shouldContinue)
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

      pageFetchCompletion = [(FBAOSLogViewerDataSource *)self pageFetchCompletion];

      if (pageFetchCompletion)
      {
        v14 = sub_10000A588();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          sub_1000925E8(self);
        }

        pageFetchCompletion2 = [(FBAOSLogViewerDataSource *)self pageFetchCompletion];
        (pageFetchCompletion2)[2](pageFetchCompletion2, self);
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

    fetchErrorBlock = [(FBAOSLogViewerDataSource *)self fetchErrorBlock];
    v9 = sub_10002791C(-1008);
    (fetchErrorBlock)[2](fetchErrorBlock, v9);
  }
}

@end