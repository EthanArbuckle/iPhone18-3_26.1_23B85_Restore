@interface SFAnalyticsSQLiteStore
+ (SFAnalyticsSQLiteStore)storeWithPath:(id)path schema:(id)schema;
- (BOOL)tryToOpenDatabase;
- (NSArray)allEvents;
- (NSArray)hardFailures;
- (NSArray)rockwells;
- (NSArray)samples;
- (NSArray)softFailures;
- (NSDate)uploadDate;
- (NSString)databaseBasename;
- (NSString)metricsAccountID;
- (id)dataPropertyForKey:(id)key;
- (id)summaryCounts;
- (int64_t)hardFailureCountForEventType:(id)type;
- (int64_t)softFailureCountForEventType:(id)type;
- (int64_t)successCountForEventType:(id)type;
- (void)addSample:(id)sample forName:(id)name;
- (void)clearAllData;
- (void)dealloc;
- (void)incrementHardFailureCountForEventType:(id)type;
- (void)incrementSoftFailureCountForEventType:(id)type;
- (void)incrementSuccessCountForEventType:(id)type;
- (void)removeAllSamplesForName:(id)name;
- (void)setDataProperty:(id)property forKey:(id)key;
- (void)setMetricsAccountID:(id)d;
- (void)setUploadDate:(id)date;
- (void)streamEventsWithLimit:(id)limit fromTable:(id)table eventHandler:(id)handler;
@end

@implementation SFAnalyticsSQLiteStore

- (BOOL)tryToOpenDatabase
{
  v14 = *MEMORY[0x1E69E9840];
  if (![(SFSQLite *)self isOpen])
  {
    v11 = 0;
    v3 = [(SFSQLite *)self openWithError:&v11];
    v4 = v11;
    if (v3)
    {
      v5 = secLogObjForScope("SFAnalytics");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v6 = "successfully opened analytics db";
        v7 = v5;
        v8 = 2;
LABEL_8:
        _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }

    else
    {
      v5 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v4;
        v6 = "SFAnalytics: failed to open analytics db: %@";
        v7 = v5;
        v8 = 12;
        goto LABEL_8;
      }
    }

    goto LABEL_10;
  }

  v3 = 1;
LABEL_10:
  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)streamEventsWithLimit:(id)limit fromTable:(id)table eventHandler:(id)handler
{
  v15[1] = *MEMORY[0x1E69E9840];
  limitCopy = limit;
  tableCopy = table;
  handlerCopy = handler;
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v15[0] = @"data";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__SFAnalyticsSQLiteStore_streamEventsWithLimit_fromTable_eventHandler___block_invoke;
    v13[3] = &unk_1E70D70E8;
    v14 = handlerCopy;
    [(SFSQLite *)self select:v11 from:tableCopy where:0 bindings:0 orderBy:&unk_1EFAAC640 limit:limitCopy forEachRow:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __71__SFAnalyticsSQLiteStore_streamEventsWithLimit_fromTable_eventHandler___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v5 = [v8 indexForColumnName:@"data"];
  v6 = v8;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v8 blobAtIndex:?];
    if (v7)
    {
      *a3 = (*(*(a1 + 32) + 16))() ^ 1;
    }

    v6 = v8;
  }
}

- (void)clearAllData
{
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    [(SFSQLite *)self deleteFrom:@"success_count" where:@"event_type like ?" bindings:&unk_1EFAAC610];
    [(SFSQLite *)self deleteFrom:@"hard_failures" where:@"id >= 0" bindings:0];
    [(SFSQLite *)self deleteFrom:@"soft_failures" where:@"id >= 0" bindings:0];
    [(SFSQLite *)self deleteFrom:@"samples" where:@"id >= 0" bindings:0];

    [(SFSQLite *)self deleteFrom:@"rockwell" where:@"event_type like ?" bindings:&unk_1EFAAC628];
  }
}

- (id)dataPropertyForKey:(id)key
{
  v3 = [(SFSQLite *)self propertyForKey:key];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v3 options:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDataProperty:(id)property forKey:(id)key
{
  keyCopy = key;
  v7 = [property base64EncodedStringWithOptions:0];
  [(SFSQLite *)self setProperty:v7 forKey:keyCopy];
}

- (void)setMetricsAccountID:(id)d
{
  dCopy = d;
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    if (dCopy)
    {
      [(SFSQLite *)self setProperty:dCopy forKey:@"account_id"];
    }

    else
    {
      [(SFSQLite *)self removePropertyForKey:@"account_id"];
    }
  }
}

- (NSString)metricsAccountID
{
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v3 = [(SFSQLite *)self propertyForKey:@"account_id"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUploadDate:(id)date
{
  dateCopy = date;
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    [(SFSQLite *)self setDateProperty:dateCopy forKey:@"upload_date"];
  }
}

- (NSDate)uploadDate
{
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v3 = [(SFSQLite *)self datePropertyForKey:@"upload_date"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)removeAllSamplesForName:(id)name
{
  nameCopy = name;
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"name == '%@'", nameCopy];
    [(SFSQLite *)self deleteFrom:@"samples" where:nameCopy bindings:0];
  }
}

- (void)addSample:(id)sample forName:(id)name
{
  v14[3] = *MEMORY[0x1E69E9840];
  sampleCopy = sample;
  nameCopy = name;
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v13[0] = @"timestamp";
    v8 = MEMORY[0x1E696AD98];
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
    v14[0] = v10;
    v14[1] = nameCopy;
    v13[1] = @"name";
    v13[2] = @"value";
    v14[2] = sampleCopy;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
    [(SFSQLite *)self insertOrReplaceInto:@"samples" values:v11];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (NSArray)samples
{
  v7[2] = *MEMORY[0x1E69E9840];
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v7[0] = @"name";
    v7[1] = @"value";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
    v4 = [(SFSQLite *)self select:v3 from:@"samples"];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (NSArray)allEvents
{
  v21[2] = *MEMORY[0x1E69E9840];
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    [(SFSQLite *)self begin];
    v3 = objc_opt_new();
    v21[0] = @"timestamp";
    v21[1] = @"data";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v5 = [(SFSQLite *)self select:v4 from:@"rockwell" mapEachRow:&__block_literal_global_47];

    [v3 addObjectsFromArray:v5];
    v20[0] = @"timestamp";
    v20[1] = @"data";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v7 = [(SFSQLite *)self select:v6 from:@"hard_failures" mapEachRow:&__block_literal_global_47];

    [v3 addObjectsFromArray:v7];
    v19[0] = @"timestamp";
    v19[1] = @"data";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v9 = [(SFSQLite *)self select:v8 from:@"soft_failures" mapEachRow:&__block_literal_global_47];

    [v3 addObjectsFromArray:v9];
    v18[0] = @"timestamp";
    v18[1] = @"data";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v11 = [(SFSQLite *)self select:v10 from:@"notes" mapEachRow:&__block_literal_global_47];

    [v3 addObjectsFromArray:v11];
    [(SFSQLite *)self end];
    v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"timestamp" ascending:1];
    v17 = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    [v3 sortUsingDescriptors:v13];

    v14 = [v3 valueForKey:@"record"];
  }

  else
  {
    v14 = objc_opt_new();
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

id __35__SFAnalyticsSQLiteStore_allEvents__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SFAnalyticsEvent alloc] initFromRow:v2];

  return v3;
}

- (NSArray)softFailures
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v7[0] = @"data";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    v4 = [(SFSQLite *)self select:v3 from:@"soft_failures" mapEachRow:&__block_literal_global_44];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (NSArray)hardFailures
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v7[0] = @"data";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    v4 = [(SFSQLite *)self select:v3 from:@"hard_failures" mapEachRow:&__block_literal_global_42_5774];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (NSArray)rockwells
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v7[0] = @"data";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    v4 = [(SFSQLite *)self select:v3 from:@"rockwell" mapEachRow:&__block_literal_global_5776];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)summaryCounts
{
  v25 = *MEMORY[0x1E69E9840];
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(SFSQLite *)self selectAllFrom:@"success_count" where:0 bindings:0];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = v21 = 0u;
    v3 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v19;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v19 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v18 + 1) + 8 * i);
          v8 = [v7 objectForKeyedSubscript:@"event_type"];
          if (v8)
          {
            v22[0] = @"success_count";
            v9 = [v7 objectForKeyedSubscript:?];
            v23[0] = v9;
            v22[1] = @"hard_failure_count";
            v10 = [v7 objectForKeyedSubscript:@"hard_failure_count"];
            v23[1] = v10;
            v22[2] = @"soft_failure_count";
            v11 = [v7 objectForKeyedSubscript:@"soft_failure_count"];
            v23[2] = v11;
            v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
            [dictionary setObject:v12 forKeyedSubscript:v8];
          }

          else
          {
            v9 = secLogObjForScope("SFAnalytics");
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEBUG, "ignoring entry in success counts table without an event name", buf, 2u);
            }
          }
        }

        v4 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v4);
    }
  }

  else
  {
    dictionary = objc_opt_new();
  }

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)incrementSoftFailureCountForEventType:(id)type
{
  v14[4] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v5 = [(SFAnalyticsSQLiteStore *)self successCountForEventType:typeCopy];
    v6 = [(SFAnalyticsSQLiteStore *)self hardFailureCountForEventType:typeCopy];
    v7 = [(SFAnalyticsSQLiteStore *)self softFailureCountForEventType:typeCopy];
    v14[0] = typeCopy;
    v13[0] = @"event_type";
    v13[1] = @"success_count";
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    v14[1] = v8;
    v13[2] = @"hard_failure_count";
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
    v14[2] = v9;
    v13[3] = @"soft_failure_count";
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:v7 + 1];
    v14[3] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
    [(SFSQLite *)self insertOrReplaceInto:@"success_count" values:v11];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)incrementHardFailureCountForEventType:(id)type
{
  v14[4] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v5 = [(SFAnalyticsSQLiteStore *)self successCountForEventType:typeCopy];
    v6 = [(SFAnalyticsSQLiteStore *)self hardFailureCountForEventType:typeCopy];
    v7 = [(SFAnalyticsSQLiteStore *)self softFailureCountForEventType:typeCopy];
    v14[0] = typeCopy;
    v13[0] = @"event_type";
    v13[1] = @"success_count";
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    v14[1] = v8;
    v13[2] = @"hard_failure_count";
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v6 + 1];
    v14[2] = v9;
    v13[3] = @"soft_failure_count";
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    v14[3] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
    [(SFSQLite *)self insertOrReplaceInto:@"success_count" values:v11];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (int64_t)softFailureCountForEventType:(id)type
{
  v14[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v14[0] = @"soft_failure_count";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v13 = typeCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    v7 = [(SFSQLite *)self select:v5 from:@"success_count" where:@"event_type = ?" bindings:v6];
    firstObject = [v7 firstObject];
    v9 = [firstObject valueForKey:@"soft_failure_count"];
    integerValue = [v9 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return integerValue;
}

- (int64_t)hardFailureCountForEventType:(id)type
{
  v14[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v14[0] = @"hard_failure_count";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v13 = typeCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    v7 = [(SFSQLite *)self select:v5 from:@"success_count" where:@"event_type = ?" bindings:v6];
    firstObject = [v7 firstObject];
    v9 = [firstObject valueForKey:@"hard_failure_count"];
    integerValue = [v9 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return integerValue;
}

- (void)incrementSuccessCountForEventType:(id)type
{
  v14[4] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v5 = [(SFAnalyticsSQLiteStore *)self successCountForEventType:typeCopy];
    v6 = [(SFAnalyticsSQLiteStore *)self hardFailureCountForEventType:typeCopy];
    v7 = [(SFAnalyticsSQLiteStore *)self softFailureCountForEventType:typeCopy];
    v14[0] = typeCopy;
    v13[0] = @"event_type";
    v13[1] = @"success_count";
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v5 + 1];
    v14[1] = v8;
    v13[2] = @"hard_failure_count";
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
    v14[2] = v9;
    v13[3] = @"soft_failure_count";
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    v14[3] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
    [(SFSQLite *)self insertOrReplaceInto:@"success_count" values:v11];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (int64_t)successCountForEventType:(id)type
{
  v14[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v14[0] = @"success_count";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v13 = typeCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    v7 = [(SFSQLite *)self select:v5 from:@"success_count" where:@"event_type = ?" bindings:v6];
    firstObject = [v7 firstObject];
    v9 = [firstObject valueForKey:@"success_count"];
    integerValue = [v9 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return integerValue;
}

- (NSString)databaseBasename
{
  path = [(SFSQLite *)self path];
  lastPathComponent = [path lastPathComponent];
  pathExtension = [lastPathComponent pathExtension];
  stringByDeletingPathExtension = [pathExtension stringByDeletingPathExtension];

  return stringByDeletingPathExtension;
}

- (void)dealloc
{
  [(SFSQLite *)self close];
  v3.receiver = self;
  v3.super_class = SFAnalyticsSQLiteStore;
  [(SFSQLite *)&v3 dealloc];
}

+ (SFAnalyticsSQLiteStore)storeWithPath:(id)path schema:(id)schema
{
  v20 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  schemaCopy = schema;
  if (![pathCopy length])
  {
    stringByStandardizingPath = secLogObjForScope("SecCritical");
    if (os_log_type_enabled(stringByStandardizingPath, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "Cannot init db with empty path";
LABEL_14:
      _os_log_impl(&dword_1887D2000, stringByStandardizingPath, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
    }

LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  if (![schemaCopy length])
  {
    stringByStandardizingPath = secLogObjForScope("SecCritical");
    if (os_log_type_enabled(stringByStandardizingPath, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "Cannot init db without schema";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  stringByStandardizingPath = [pathCopy stringByStandardizingPath];
  v9 = [[self alloc] initWithPath:stringByStandardizingPath schema:schemaCopy];
  v17 = 0;
  v10 = [v9 openWithError:&v17];
  v11 = v17;
  v12 = v11;
  if ((v10 & 1) == 0 && (!v11 || [v11 code] != 23))
  {
    v13 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "SFAnalytics: could not open db at init, will try again later. Error: %@", buf, 0xCu);
    }
  }

LABEL_16:
  v15 = *MEMORY[0x1E69E9840];

  return v9;
}

@end