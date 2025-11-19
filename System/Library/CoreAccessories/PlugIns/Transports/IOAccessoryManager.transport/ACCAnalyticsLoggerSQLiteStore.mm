@interface ACCAnalyticsLoggerSQLiteStore
+ (ACCAnalyticsLoggerSQLiteStore)storeWithPath:(id)a3 schema:(id)a4;
- (BOOL)tryToOpenDatabase;
- (NSArray)allEvents;
- (NSDate)uploadDate;
- (id)summaryCounts;
- (int64_t)successCount;
- (int64_t)wrapFailureCount;
- (void)addEventDict:(id)a3 toTable:(id)a4;
- (void)clearAllData;
- (void)dealloc;
- (void)incrementSuccessCount;
- (void)incrementWrapFailureCount;
- (void)setUploadDate:(id)a3;
@end

@implementation ACCAnalyticsLoggerSQLiteStore

+ (ACCAnalyticsLoggerSQLiteStore)storeWithPath:(id)a3 schema:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  objc_sync_enter(v8);
  if (storeWithPath_schema__onceToken != -1)
  {
    +[ACCAnalyticsLoggerSQLiteStore storeWithPath:schema:];
  }

  v9 = [v6 stringByStandardizingPath];
  v10 = [storeWithPath_schema__loggingStores objectForKeyedSubscript:v9];
  if (!v10)
  {
    v10 = [[a1 alloc] initWithPath:v9 schema:v7];
    [storeWithPath_schema__loggingStores setObject:v10 forKeyedSubscript:v9];
  }

  objc_sync_exit(v8);

  return v10;
}

uint64_t __54__ACCAnalyticsLoggerSQLiteStore_storeWithPath_schema___block_invoke()
{
  storeWithPath_schema__loggingStores = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  [(ACCSQLite *)self close];
  v3.receiver = self;
  v3.super_class = ACCAnalyticsLoggerSQLiteStore;
  [(ACCSQLite *)&v3 dealloc];
}

- (BOOL)tryToOpenDatabase
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(ACCSQLite *)self isOpen])
  {
    v3 = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] ACCEventLogger: db is closed, attempting to open", buf, 2u);
    }

    v7 = 0;
    v3 = [(ACCSQLite *)self openWithError:&v7];
    v4 = v7;
    if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] ACCEventLogger: failed to open db with error %@", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (int64_t)successCount
{
  v12[1] = *MEMORY[0x277D85DE8];
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    v12[0] = @"success_count";
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v11 = @"accessoryDatabaseCounts";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    v5 = [(ACCSQLite *)self select:v3 from:@"success_count" where:@"event_type = ?" bindings:v4];
    v6 = [v5 firstObject];
    v7 = [v6 valueForKey:@"success_count"];
    v8 = [v7 integerValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (int64_t)wrapFailureCount
{
  v12[1] = *MEMORY[0x277D85DE8];
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    v12[0] = @"wrap_failure_count";
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v11 = @"accessoryDatabaseCounts";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    v5 = [(ACCSQLite *)self select:v3 from:@"success_count" where:@"event_type = ?" bindings:v4];
    v6 = [v5 firstObject];
    v7 = [v6 valueForKey:@"wrap_failure_count"];
    v8 = [v7 integerValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)incrementSuccessCount
{
  v10[3] = *MEMORY[0x277D85DE8];
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    v3 = [(ACCAnalyticsLoggerSQLiteStore *)self successCount];
    v4 = [(ACCAnalyticsLoggerSQLiteStore *)self wrapFailureCount];
    v10[0] = @"accessoryDatabaseCounts";
    v9[0] = @"event_type";
    v9[1] = @"success_count";
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:v3 + 1];
    v10[1] = v5;
    v9[2] = @"wrap_failure_count";
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
    v10[2] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
    [(ACCSQLite *)self insertOrReplaceInto:@"success_count" values:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)incrementWrapFailureCount
{
  v10[3] = *MEMORY[0x277D85DE8];
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    v3 = [(ACCAnalyticsLoggerSQLiteStore *)self successCount];
    v4 = [(ACCAnalyticsLoggerSQLiteStore *)self wrapFailureCount];
    v10[0] = @"accessoryDatabaseCounts";
    v9[0] = @"event_type";
    v9[1] = @"success_count";
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
    v10[1] = v5;
    v9[2] = @"wrap_failure_count";
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:v4 + 1];
    v10[2] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
    [(ACCSQLite *)self insertOrReplaceInto:@"success_count" values:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)summaryCounts
{
  v25 = *MEMORY[0x277D85DE8];
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    v15 = [MEMORY[0x277CBEB38] dictionary];
    [(ACCSQLite *)self selectAllFrom:@"success_count" where:0 bindings:0];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = v19 = 0u;
    v3 = [obj countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v17;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v17 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v16 + 1) + 8 * i);
          v8 = [v7 objectForKeyedSubscript:@"event_type"];
          if (v8)
          {
            v22[0] = @"success_count";
            v9 = [v7 objectForKeyedSubscript:@"success_count"];
            v22[1] = @"wrap_failure_count";
            v23[0] = v9;
            v10 = [v7 objectForKeyedSubscript:@"wrap_failure_count"];
            v23[1] = v10;
            v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
            [v15 setObject:v11 forKeyedSubscript:v8];
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] ACCEventLogger: ignoring entry in success counts table without an event name", buf, 2u);
          }
        }

        v4 = [obj countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v4);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v15;
      _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] successCountsDict: %@", buf, 0xCu);
    }
  }

  else
  {
    v15 = objc_opt_new();
  }

  v12 = *MEMORY[0x277D85DE8];

  return v15;
}

- (NSArray)allEvents
{
  v21[1] = *MEMORY[0x277D85DE8];
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    v21[0] = @"data";
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v4 = [(ACCSQLite *)self select:v3 from:@"all_events"];

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = MEMORY[0x277CCAC58];
          v12 = [*(*(&v16 + 1) + 8 * i) objectForKeyedSubscript:{@"data", v16}];
          v13 = [v11 propertyListWithData:v12 options:0 format:0 error:0];

          [v5 addObject:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = objc_opt_new();
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)addEventDict:(id)a3 toTable:(id)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    v14 = 0;
    v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:v6 format:200 options:0 error:&v14];
    v9 = v14;
    v10 = v9;
    if (v9 || !v8)
    {
      if (v9 && !v8 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v10;
        _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] Couldn't serialize failure record: %@", buf, 0xCu);
      }
    }

    else
    {
      v17[0] = @"timestamp";
      v11 = [MEMORY[0x277CBEAA8] date];
      v17[1] = @"data";
      v18[0] = v11;
      v18[1] = v8;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
      [(ACCSQLite *)self insertOrReplaceInto:v7 values:v12];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (NSDate)uploadDate
{
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    v3 = [(ACCSQLite *)self datePropertyForKey:@"upload_date"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUploadDate:(id)a3
{
  v4 = a3;
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    [(ACCSQLite *)self setDateProperty:v4 forKey:@"upload_date"];
  }
}

- (void)clearAllData
{
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    [(ACCSQLite *)self deleteFrom:@"success_count" where:@"event_type like ?" bindings:&unk_2848FBC18];

    [(ACCSQLite *)self deleteFrom:@"all_events" where:@"id >= 0" bindings:0];
  }
}

@end