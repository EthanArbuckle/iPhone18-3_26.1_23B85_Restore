@interface PHFetchResultInstrumentation
- (BOOL)areBacktracesEnabled;
- (BOOL)isPerformanceLoggingDisabled;
- (id)formatSqlString:(id)a3 withBindVariables:(id)a4;
- (int64_t)bytesPerRow;
- (unsigned)classifyFetchPerformanceLogLevel;
- (void)beginTrackingStatisticsWithContext:(id)a3;
- (void)classifyFetchPerformanceWithTuple:(id)a3;
- (void)didExecuteFetchRequestWithContext:(id)a3 resultCount:(unint64_t)a4 sqlString:(id)a5 bindVariables:(id)a6;
- (void)didFailFetchRequestWithContext:(id)a3;
- (void)endTrackingStatisticsWithContext:(id)a3 resultCount:(unint64_t)a4 sqlString:(id)a5 bindVariables:(id)a6;
- (void)logFetchWithSqlString:(id)a3 bindVariables:(id)a4;
- (void)managedObjectContext:(id)a3 didExecuteFetchRequest:(id)a4 withSQLString:(id)a5 bindVariables:(id)a6 rowCount:(int64_t)a7;
- (void)willExecuteFetchRequestWithContext:(id)a3;
@end

@implementation PHFetchResultInstrumentation

- (BOOL)isPerformanceLoggingDisabled
{
  if (sOnceToken != -1)
  {
    dispatch_once(&sOnceToken, &__block_literal_global_21119);
  }

  return sIsLoggingDisabled;
}

- (unsigned)classifyFetchPerformanceLogLevel
{
  if (self->_suppressSlowFetchReports)
  {
    return 2;
  }

  v19 = v3;
  v20 = v2;
  v8 = qos_class_self();
  v9 = [(PHFetchResultInstrumentation *)self bytesPerRow];
  if (v8 < QOS_CLASS_USER_INITIATED)
  {
    v11 = 2;
  }

  else
  {
    rowCount = self->_rowCount;
    if (rowCount > 100 || v9 <= 327680)
    {
      v13 = rowCount < 101 && v9 > 81920;
      v14 = v9 <= 163840 || rowCount <= 100;
      v11 = 16;
      if (v14)
      {
        if (v9 <= 40960 || rowCount <= 100)
        {
          v16 = 2;
        }

        else
        {
          v16 = 16;
        }

        if (v13)
        {
          v11 = 16;
        }

        else
        {
          v11 = v16;
        }
      }
    }

    else
    {
      v11 = 16;
    }
  }

  v17 = [PHFetchLogRateLimiter sharedRateLimiter:v19];
  v18 = [v17 rateLimitedLogLevelForLogForLevel:v11];

  return v18;
}

- (int64_t)bytesPerRow
{
  p_byteCount = &self->_byteCount;
  result = self->_byteCount;
  v3 = p_byteCount[1];
  if (v3 >= 1)
  {
    result /= v3;
  }

  return result;
}

- (void)managedObjectContext:(id)a3 didExecuteFetchRequest:(id)a4 withSQLString:(id)a5 bindVariables:(id)a6 rowCount:(int64_t)a7
{
  if (a7 == -1)
  {
    [(PHFetchResultInstrumentation *)self didFailFetchRequestWithContext:a3, a4, a5, a6];
  }

  else
  {
    [(PHFetchResultInstrumentation *)self didExecuteFetchRequestWithContext:a3 resultCount:a7 sqlString:a5 bindVariables:a6];
  }
}

- (BOOL)areBacktracesEnabled
{
  if (sOnceToken != -1)
  {
    dispatch_once(&sOnceToken, &__block_literal_global_21119);
  }

  return sAreBacktracesEnabled;
}

- (id)formatSqlString:(id)a3 withBindVariables:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    context = objc_autoreleasePoolPush();
    v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v7 appendFormat:@"\nsql: %@", v5];
    v8 = [v6 count];
    if (v8)
    {
      v9 = v8;
      for (i = 0; i != v9; ++i)
      {
        v11 = objc_autoreleasePoolPush();
        v12 = [v6 objectAtIndexedSubscript:i];
        v13 = [MEMORY[0x1E69BE390] stringFromBindVariable:v12 withTypePrefix:1];
        [v7 appendFormat:@"\nsql: bind[%tu] = %@", i, v13];

        objc_autoreleasePoolPop(v11);
      }
    }

    v14 = [v7 copy];

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v14 = &stru_1F0FC60C8;
  }

  return v14;
}

- (void)classifyFetchPerformanceWithTuple:(id)a3
{
  v6 = a3;
  v4 = [(PHFetchResultInstrumentation *)self classifyFetchPerformanceLogLevel];
  if (v4 == 2)
  {
    v5 = &stru_1F0FC60C8;
  }

  else
  {
    v5 = @"Slow ";
  }

  if ([(NSString *)self->_importantFetchName hasPrefix:@"!"])
  {
    if (((v4 - 1) & 0xFE) != 0)
    {
      v4 = v4;
    }

    else
    {
      v4 = 0;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] %@", self->_importantFetchName, v5];
  }

  v6[2](v6, v4, v5);
}

- (void)logFetchWithSqlString:(id)a3 bindVariables:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__21144;
  v35 = __Block_byref_object_dispose__21145;
  v36 = 0;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __68__PHFetchResultInstrumentation_logFetchWithSqlString_bindVariables___block_invoke;
  v30[3] = &unk_1E75A67B8;
  v30[4] = &v37;
  v30[5] = &v31;
  [(PHFetchResultInstrumentation *)self classifyFetchPerformanceWithTuple:v30];
  v8 = PLFetchPerformanceGetLog();
  v9 = os_log_type_enabled(v8, v38[24]);

  if (v9)
  {
    v29 = [(PHFetchResultInstrumentation *)self formatSqlString:v6 withBindVariables:v7];
    v10 = PLFetchPerformanceGetLog();
    v11 = *(v38 + 24);
    if (os_log_type_enabled(v10, v11))
    {
      v26 = v7;
      v27 = v6;
      v24 = v32[5];
      duration = self->_duration;
      qos_class_self();
      v12 = PLShortStringFromQoSClass();
      v28 = [(PHFetchResult *)self->_fetchResult fetchRequest];
      v13 = [v28 entityName];
      byteCount = self->_byteCount;
      rowCount = self->_rowCount;
      v16 = [(PHFetchResultInstrumentation *)self bytesPerRow];
      v17 = [(PHFetchResult *)self->_fetchResult fetchOptions];
      v18 = [(PHFetchResult *)self->_fetchResult fetchRequest];
      *buf = 138414594;
      v42 = v24;
      v43 = 2048;
      v44 = duration;
      v45 = 2112;
      v46 = v12;
      v47 = 2112;
      v48 = v13;
      v49 = 2048;
      v50 = rowCount;
      v51 = 2048;
      v52 = byteCount;
      v53 = 2048;
      v54 = v16;
      v55 = 2112;
      v56 = v17;
      v57 = 2112;
      v58 = v18;
      v59 = 2112;
      v60 = v29;
      _os_log_impl(&dword_19C86F000, v10, v11, "%@PhotoKit Fetch: duration: %.2f, QoS: %@, entity: %@, count: %lld, bytes: %lld, bytes per row: %lld\nPHFetchOptions: %@\nNSFetchRequest: %@%@", buf, 0x66u);

      v7 = v26;
      v6 = v27;
    }

    if ([(PHFetchResultInstrumentation *)self areBacktracesEnabled])
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];

      if (*(v38 + 24) == 17)
      {
        v21 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        v21 = *(v38 + 24);
      }

      v22 = PLFetchPerformanceGetLog();
      if (os_log_type_enabled(v22, v21))
      {
        v23 = v32[5];
        *buf = 138412546;
        v42 = v23;
        v43 = 2112;
        v44 = *&v20;
        _os_log_impl(&dword_19C86F000, v22, v21, "%@PhotoKit Fetch: Backtrace\n%@", buf, 0x16u);
      }
    }
  }

  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);
}

- (void)endTrackingStatisticsWithContext:(id)a3 resultCount:(unint64_t)a4 sqlString:(id)a5 bindVariables:(id)a6
{
  v15 = a3;
  v10 = a5;
  v11 = a6;
  if (![(PHFetchResultInstrumentation *)self isPerformanceLoggingDisabled])
  {
    [v15 setTrackSQLiteDatabaseStatistics:self->_wasTrackingStatistics];
    v12 = [v15 databaseStatistics];
    v13 = [v12 totalCachePages];
    v14 = v13 - [(NSSQLiteDatabaseStatistics *)self->_statsStart totalCachePages];
    self->_byteCount = v14 * [v12 pageSize];
    self->_rowCount = a4;
    self->_duration = CFAbsoluteTimeGetCurrent() - self->_timeStart;
    [(PHFetchResultInstrumentation *)self logFetchWithSqlString:v10 bindVariables:v11];
  }
}

- (void)beginTrackingStatisticsWithContext:(id)a3
{
  v6 = a3;
  if (![(PHFetchResultInstrumentation *)self isPerformanceLoggingDisabled])
  {
    self->_wasTrackingStatistics = [v6 trackSQLiteDatabaseStatistics];
    [v6 setTrackSQLiteDatabaseStatistics:1];
    v4 = [v6 databaseStatistics];
    statsStart = self->_statsStart;
    self->_statsStart = v4;

    self->_timeStart = CFAbsoluteTimeGetCurrent();
  }
}

- (void)didFailFetchRequestWithContext:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_importantFetchName)
  {
    v5 = self->_importantFetchSignpost.log;
    v6 = v5;
    signpostId = self->_importantFetchSignpost.signpostId;
    if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v8 = 134217984;
      v9 = 0;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v6, OS_SIGNPOST_INTERVAL_END, signpostId, "ImportantPhotosFetch", "%tu", &v8, 0xCu);
    }
  }

  if (![(PHFetchResultInstrumentation *)self isPerformanceLoggingDisabled])
  {
    [v4 setTrackSQLiteDatabaseStatistics:self->_wasTrackingStatistics];
  }
}

- (void)didExecuteFetchRequestWithContext:(id)a3 resultCount:(unint64_t)a4 sqlString:(id)a5 bindVariables:(id)a6
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (self->_importantFetchName)
  {
    v13 = self->_importantFetchSignpost.log;
    v14 = v13;
    signpostId = self->_importantFetchSignpost.signpostId;
    if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v16 = 134217984;
      v17 = a4;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v14, OS_SIGNPOST_INTERVAL_END, signpostId, "ImportantPhotosFetch", "%tu", &v16, 0xCu);
    }
  }

  [(PHFetchResultInstrumentation *)self endTrackingStatisticsWithContext:v10 resultCount:a4 sqlString:v11 bindVariables:v12];
}

- (void)willExecuteFetchRequestWithContext:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PHFetchResultInstrumentation *)self beginTrackingStatisticsWithContext:v4];
  if (self->_importantFetchName)
  {
    v5 = PLImportantFetchGetLog();
    v6 = os_signpost_id_generate(v5);

    v7 = v5;
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      importantFetchName = self->_importantFetchName;
      v11 = 138543362;
      v12 = importantFetchName;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ImportantPhotosFetch", "%{public}@", &v11, 0xCu);
    }
  }

  else
  {
    v8 = 0;
    v6 = 0;
  }

  log = self->_importantFetchSignpost.log;
  self->_importantFetchSignpost.log = v8;

  self->_importantFetchSignpost.signpostId = v6;
}

@end