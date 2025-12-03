@interface PHFetchResultInstrumentation
- (BOOL)areBacktracesEnabled;
- (BOOL)isPerformanceLoggingDisabled;
- (id)formatSqlString:(id)string withBindVariables:(id)variables;
- (int64_t)bytesPerRow;
- (unsigned)classifyFetchPerformanceLogLevel;
- (void)beginTrackingStatisticsWithContext:(id)context;
- (void)classifyFetchPerformanceWithTuple:(id)tuple;
- (void)didExecuteFetchRequestWithContext:(id)context resultCount:(unint64_t)count sqlString:(id)string bindVariables:(id)variables;
- (void)didFailFetchRequestWithContext:(id)context;
- (void)endTrackingStatisticsWithContext:(id)context resultCount:(unint64_t)count sqlString:(id)string bindVariables:(id)variables;
- (void)logFetchWithSqlString:(id)string bindVariables:(id)variables;
- (void)managedObjectContext:(id)context didExecuteFetchRequest:(id)request withSQLString:(id)string bindVariables:(id)variables rowCount:(int64_t)count;
- (void)willExecuteFetchRequestWithContext:(id)context;
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
  bytesPerRow = [(PHFetchResultInstrumentation *)self bytesPerRow];
  if (v8 < QOS_CLASS_USER_INITIATED)
  {
    v11 = 2;
  }

  else
  {
    rowCount = self->_rowCount;
    if (rowCount > 100 || bytesPerRow <= 327680)
    {
      v13 = rowCount < 101 && bytesPerRow > 81920;
      v14 = bytesPerRow <= 163840 || rowCount <= 100;
      v11 = 16;
      if (v14)
      {
        if (bytesPerRow <= 40960 || rowCount <= 100)
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

- (void)managedObjectContext:(id)context didExecuteFetchRequest:(id)request withSQLString:(id)string bindVariables:(id)variables rowCount:(int64_t)count
{
  if (count == -1)
  {
    [(PHFetchResultInstrumentation *)self didFailFetchRequestWithContext:context, request, string, variables];
  }

  else
  {
    [(PHFetchResultInstrumentation *)self didExecuteFetchRequestWithContext:context resultCount:count sqlString:string bindVariables:variables];
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

- (id)formatSqlString:(id)string withBindVariables:(id)variables
{
  stringCopy = string;
  variablesCopy = variables;
  if (stringCopy)
  {
    context = objc_autoreleasePoolPush();
    v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v7 appendFormat:@"\nsql: %@", stringCopy];
    v8 = [variablesCopy count];
    if (v8)
    {
      v9 = v8;
      for (i = 0; i != v9; ++i)
      {
        v11 = objc_autoreleasePoolPush();
        v12 = [variablesCopy objectAtIndexedSubscript:i];
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

- (void)classifyFetchPerformanceWithTuple:(id)tuple
{
  tupleCopy = tuple;
  classifyFetchPerformanceLogLevel = [(PHFetchResultInstrumentation *)self classifyFetchPerformanceLogLevel];
  if (classifyFetchPerformanceLogLevel == 2)
  {
    v5 = &stru_1F0FC60C8;
  }

  else
  {
    v5 = @"Slow ";
  }

  if ([(NSString *)self->_importantFetchName hasPrefix:@"!"])
  {
    if (((classifyFetchPerformanceLogLevel - 1) & 0xFE) != 0)
    {
      classifyFetchPerformanceLogLevel = classifyFetchPerformanceLogLevel;
    }

    else
    {
      classifyFetchPerformanceLogLevel = 0;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] %@", self->_importantFetchName, v5];
  }

  tupleCopy[2](tupleCopy, classifyFetchPerformanceLogLevel, v5);
}

- (void)logFetchWithSqlString:(id)string bindVariables:(id)variables
{
  v61 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  variablesCopy = variables;
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
    v29 = [(PHFetchResultInstrumentation *)self formatSqlString:stringCopy withBindVariables:variablesCopy];
    v10 = PLFetchPerformanceGetLog();
    v11 = *(v38 + 24);
    if (os_log_type_enabled(v10, v11))
    {
      v26 = variablesCopy;
      v27 = stringCopy;
      v24 = v32[5];
      duration = self->_duration;
      qos_class_self();
      v12 = PLShortStringFromQoSClass();
      fetchRequest = [(PHFetchResult *)self->_fetchResult fetchRequest];
      entityName = [fetchRequest entityName];
      byteCount = self->_byteCount;
      rowCount = self->_rowCount;
      bytesPerRow = [(PHFetchResultInstrumentation *)self bytesPerRow];
      fetchOptions = [(PHFetchResult *)self->_fetchResult fetchOptions];
      fetchRequest2 = [(PHFetchResult *)self->_fetchResult fetchRequest];
      *buf = 138414594;
      v42 = v24;
      v43 = 2048;
      v44 = duration;
      v45 = 2112;
      v46 = v12;
      v47 = 2112;
      v48 = entityName;
      v49 = 2048;
      v50 = rowCount;
      v51 = 2048;
      v52 = byteCount;
      v53 = 2048;
      v54 = bytesPerRow;
      v55 = 2112;
      v56 = fetchOptions;
      v57 = 2112;
      v58 = fetchRequest2;
      v59 = 2112;
      v60 = v29;
      _os_log_impl(&dword_19C86F000, v10, v11, "%@PhotoKit Fetch: duration: %.2f, QoS: %@, entity: %@, count: %lld, bytes: %lld, bytes per row: %lld\nPHFetchOptions: %@\nNSFetchRequest: %@%@", buf, 0x66u);

      variablesCopy = v26;
      stringCopy = v27;
    }

    if ([(PHFetchResultInstrumentation *)self areBacktracesEnabled])
    {
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols componentsJoinedByString:@"\n"];

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

- (void)endTrackingStatisticsWithContext:(id)context resultCount:(unint64_t)count sqlString:(id)string bindVariables:(id)variables
{
  contextCopy = context;
  stringCopy = string;
  variablesCopy = variables;
  if (![(PHFetchResultInstrumentation *)self isPerformanceLoggingDisabled])
  {
    [contextCopy setTrackSQLiteDatabaseStatistics:self->_wasTrackingStatistics];
    databaseStatistics = [contextCopy databaseStatistics];
    totalCachePages = [databaseStatistics totalCachePages];
    v14 = totalCachePages - [(NSSQLiteDatabaseStatistics *)self->_statsStart totalCachePages];
    self->_byteCount = v14 * [databaseStatistics pageSize];
    self->_rowCount = count;
    self->_duration = CFAbsoluteTimeGetCurrent() - self->_timeStart;
    [(PHFetchResultInstrumentation *)self logFetchWithSqlString:stringCopy bindVariables:variablesCopy];
  }
}

- (void)beginTrackingStatisticsWithContext:(id)context
{
  contextCopy = context;
  if (![(PHFetchResultInstrumentation *)self isPerformanceLoggingDisabled])
  {
    self->_wasTrackingStatistics = [contextCopy trackSQLiteDatabaseStatistics];
    [contextCopy setTrackSQLiteDatabaseStatistics:1];
    databaseStatistics = [contextCopy databaseStatistics];
    statsStart = self->_statsStart;
    self->_statsStart = databaseStatistics;

    self->_timeStart = CFAbsoluteTimeGetCurrent();
  }
}

- (void)didFailFetchRequestWithContext:(id)context
{
  v10 = *MEMORY[0x1E69E9840];
  contextCopy = context;
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
    [contextCopy setTrackSQLiteDatabaseStatistics:self->_wasTrackingStatistics];
  }
}

- (void)didExecuteFetchRequestWithContext:(id)context resultCount:(unint64_t)count sqlString:(id)string bindVariables:(id)variables
{
  v18 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  stringCopy = string;
  variablesCopy = variables;
  if (self->_importantFetchName)
  {
    v13 = self->_importantFetchSignpost.log;
    v14 = v13;
    signpostId = self->_importantFetchSignpost.signpostId;
    if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v16 = 134217984;
      countCopy = count;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v14, OS_SIGNPOST_INTERVAL_END, signpostId, "ImportantPhotosFetch", "%tu", &v16, 0xCu);
    }
  }

  [(PHFetchResultInstrumentation *)self endTrackingStatisticsWithContext:contextCopy resultCount:count sqlString:stringCopy bindVariables:variablesCopy];
}

- (void)willExecuteFetchRequestWithContext:(id)context
{
  v13 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  [(PHFetchResultInstrumentation *)self beginTrackingStatisticsWithContext:contextCopy];
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