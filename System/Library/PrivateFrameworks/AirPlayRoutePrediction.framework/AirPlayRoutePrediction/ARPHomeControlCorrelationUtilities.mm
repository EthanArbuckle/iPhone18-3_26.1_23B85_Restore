@interface ARPHomeControlCorrelationUtilities
- (ARPHomeControlCorrelationUtilities)initWithKnowledgeStore:(id)store;
- (BOOL)writeArchive:(id)archive toFilePath:(id)path;
@end

@implementation ARPHomeControlCorrelationUtilities

- (ARPHomeControlCorrelationUtilities)initWithKnowledgeStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = ARPHomeControlCorrelationUtilities;
  v6 = [(ARPHomeControlCorrelationUtilities *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_knowledgeStore, store);
  }

  return v7;
}

- (BOOL)writeArchive:(id)archive toFilePath:(id)path
{
  v29 = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  pathCopy = path;
  v7 = pathCopy;
  if (archiveCopy && pathCopy)
  {
    v26 = 0;
    v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:archiveCopy requiringSecureCoding:1 error:&v26];
    v9 = v26;
    if (v9)
    {
      v10 = v9;
      v11 = 0;
LABEL_15:

      goto LABEL_16;
    }

    stringByDeletingLastPathComponent = [v7 stringByDeletingLastPathComponent];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v25 = 0;
    [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v25];
    v10 = v25;

    if (!v10)
    {
      v24 = 0;
      [v8 writeToFile:v7 options:1073741825 error:&v24];
      v10 = v24;
      v14 = ARPLog();
      v15 = v14;
      if (!v10)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = v7;
          _os_log_impl(&dword_23EB15000, v15, OS_LOG_TYPE_DEFAULT, "Successfully persisted correlations dictionary produced when correlating Home Controls and MicroLocations: %@", buf, 0xCu);
        }

        notify_post([@"com.apple.AirPlayRoutePrediction.ARPHomeControlSuggester.ReQuery" UTF8String]);
        v10 = 0;
        v11 = 1;
        goto LABEL_14;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(ARPHomeControlCorrelationUtilities *)v10 writeArchive:v15 toFilePath:v16, v17, v18, v19, v20, v21];
      }
    }

    v11 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v10 = ARPLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [ARPHomeControlCorrelationUtilities writeArchive:v10 toFilePath:?];
  }

  v11 = 0;
LABEL_16:

  v22 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __93__ARPHomeControlCorrelationUtilities_firstHomeKitEventsWithPredicate_sortStartDateAscending___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __93__ARPHomeControlCorrelationUtilities_firstHomeKitEventsWithPredicate_sortStartDateAscending___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 startDate];
  v7 = [v5 startDate];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  if (v9 <= 0.0)
  {
    v11 = [v4 startDate];
    v12 = [v5 startDate];
    [v11 timeIntervalSinceDate:v12];
    v10 = v13 < 0.0;
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

uint64_t __88__ARPHomeControlCorrelationUtilities_homeKitEventsWithPredicate_sortStartDateAscending___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __88__ARPHomeControlCorrelationUtilities_homeKitEventsWithPredicate_sortStartDateAscending___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 startDate];
  v7 = [v5 startDate];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  if (v9 <= 0.0)
  {
    v11 = [v4 startDate];
    v12 = [v5 startDate];
    [v11 timeIntervalSinceDate:v12];
    v10 = v13 < 0.0;
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (void)writeArchive:(uint64_t)a3 toFilePath:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23EB15000, a2, a3, "Error when trying to persist Home Controls MicroLocation Correlation: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)homeKitAccessoriesWithPredicate:(uint64_t)a3 sortStartDateAscending:(uint64_t)a4 limit:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23EB15000, a2, a3, "Error querying HomeKit Accessory events from knowledge store: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)homeKitScenesWithPredicate:(uint64_t)a3 sortStartDateAscending:(uint64_t)a4 limit:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23EB15000, a2, a3, "Error querying HomeKit Scene events from knowledge store: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end