@interface NWCComplicationTimelineEntryModelCache
+ (id)_endOfDayForDate:(id)date;
+ (id)_startOfDayAfterDate:(id)date;
+ (id)_startOfDayBeforeDate:(id)date;
+ (id)_startOfDayForDate:(id)date;
- (BOOL)hasEntryModelForDate:(id)date;
- (NWCComplicationTimelineEntryModelCache)initWithDataSource:(id)source;
- (NWCComplicationTimelineEntryModelCacheDataSource)dataSource;
- (id)_cachedEntryModelAfterDate:(id)date limit:(unint64_t)limit;
- (id)_cachedEntryModelForDate:(id)date;
- (id)entryModelForDate:(id)date;
- (id)entryModelsAfterDate:(id)date limit:(unint64_t)limit;
- (void)_extendCacheTowardDate:(id)date;
- (void)invalidate;
@end

@implementation NWCComplicationTimelineEntryModelCache

- (NWCComplicationTimelineEntryModelCache)initWithDataSource:(id)source
{
  sourceCopy = source;
  v8.receiver = self;
  v8.super_class = NWCComplicationTimelineEntryModelCache;
  v5 = [(NWCComplicationTimelineEntryModelCache *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, sourceCopy);
  }

  return v6;
}

- (BOOL)hasEntryModelForDate:(id)date
{
  v3 = [(NWCComplicationTimelineEntryModelCache *)self _cachedEntryModelForDate:date];
  v4 = v3 != 0;

  return v4;
}

- (id)entryModelForDate:(id)date
{
  dateCopy = date;
  [(NWCComplicationTimelineEntryModelCache *)self _extendCacheTowardDate:dateCopy];
  v5 = [(NWCComplicationTimelineEntryModelCache *)self _cachedEntryModelForDate:dateCopy];

  return v5;
}

- (id)entryModelsAfterDate:(id)date limit:(unint64_t)limit
{
  dateCopy = date;
  v7 = [objc_opt_class() _startOfDayAfterDate:dateCopy];
  [(NWCComplicationTimelineEntryModelCache *)self _extendCacheTowardDate:v7];
  v8 = [(NWCComplicationTimelineEntryModelCache *)self _cachedEntryModelAfterDate:dateCopy limit:limit];

  return v8;
}

- (void)invalidate
{
  cachedEntryModels = [(NWCComplicationTimelineEntryModelCache *)self cachedEntryModels];
  [cachedEntryModels removeAllObjects];

  [(NWCComplicationTimelineEntryModelCache *)self setCachedEntryModels:0];
  cacheStartDate = self->_cacheStartDate;
  self->_cacheStartDate = 0;

  cacheEndDate = self->_cacheEndDate;
  self->_cacheEndDate = 0;
}

- (void)_extendCacheTowardDate:(id)date
{
  dateCopy = date;
  cachedEntryModels = [(NWCComplicationTimelineEntryModelCache *)self cachedEntryModels];

  if (!cachedEntryModels)
  {
    v16 = [objc_opt_class() _startOfDayForDate:dateCopy];
    cacheStartDate = self->_cacheStartDate;
    self->_cacheStartDate = v16;

    v18 = [objc_opt_class() _endOfDayForDate:dateCopy];
    cacheEndDate = self->_cacheEndDate;
    self->_cacheEndDate = v18;

    dataSource = [(NWCComplicationTimelineEntryModelCache *)self dataSource];
    cachedEntryModels3 = [dataSource loadEntryModelsForDay:self->_cacheStartDate];
    v20 = [cachedEntryModels3 mutableCopy];
    [(NWCComplicationTimelineEntryModelCache *)self setCachedEntryModels:v20];

    goto LABEL_7;
  }

  if ([dateCopy compare:self->_cacheStartDate] == -1)
  {
    v5 = [objc_opt_class() _startOfDayBeforeDate:self->_cacheStartDate];
    v6 = self->_cacheStartDate;
    self->_cacheStartDate = v5;

    dataSource2 = [(NWCComplicationTimelineEntryModelCache *)self dataSource];
    v8 = [dataSource2 loadEntryModelsForDay:self->_cacheStartDate];
    v9 = [v8 mutableCopy];

    cachedEntryModels2 = [(NWCComplicationTimelineEntryModelCache *)self cachedEntryModels];
    [v9 addObjectsFromArray:cachedEntryModels2];

    [(NWCComplicationTimelineEntryModelCache *)self setCachedEntryModels:v9];
  }

  if ([dateCopy compare:self->_cacheEndDate] == 1)
  {
    v11 = [objc_opt_class() _startOfDayAfterDate:self->_cacheEndDate];
    v12 = self->_cacheEndDate;
    self->_cacheEndDate = v11;

    dataSource3 = [(NWCComplicationTimelineEntryModelCache *)self dataSource];
    dataSource = [dataSource3 loadEntryModelsForDay:self->_cacheEndDate];

    cachedEntryModels3 = [(NWCComplicationTimelineEntryModelCache *)self cachedEntryModels];
    [cachedEntryModels3 addObjectsFromArray:dataSource];
LABEL_7:
  }
}

- (id)_cachedEntryModelForDate:(id)date
{
  dateCopy = date;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_23BDD76BC;
  v20 = sub_23BDD76CC;
  v21 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = sub_23BDD76D4;
  v13 = &unk_278B99B60;
  v5 = dateCopy;
  v14 = v5;
  v15 = &v16;
  v6 = MEMORY[0x23EEBDCB0](&v10);
  v7 = [(NWCComplicationTimelineEntryModelCache *)self cachedEntryModels:v10];
  [v7 enumerateObjectsWithOptions:2 usingBlock:v6];

  v8 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v8;
}

- (id)_cachedEntryModelAfterDate:(id)date limit:(unint64_t)limit
{
  v32 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v7 = [(NWCComplicationTimelineEntryModelCache *)self _cachedEntryModelForDate:dateCopy];
  if (!v7)
  {
    v10 = NTALogForCategory(6uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_23BDD8898(self, dateCopy, v10);
    }

    goto LABEL_7;
  }

  cachedEntryModels = [(NWCComplicationTimelineEntryModelCache *)self cachedEntryModels];
  v9 = [cachedEntryModels indexOfObject:v7];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = NTALogForCategory(6uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = v11;
      cachedEntryModels2 = [(NWCComplicationTimelineEntryModelCache *)self cachedEntryModels];
      v24 = 134218754;
      v25 = v11;
      v26 = 2112;
      v27 = v7;
      v28 = 2112;
      v29 = dateCopy;
      v30 = 2112;
      v31 = cachedEntryModels2;
      _os_log_error_impl(&dword_23BDCF000, v10, OS_LOG_TYPE_ERROR, "[%public}@] Failed to find entryModelForDate %@ for date %@ in models: %@.", &v24, 0x2Au);
    }

LABEL_7:

    v14 = MEMORY[0x277CBEBF8];
    goto LABEL_8;
  }

  cachedEntryModels3 = [(NWCComplicationTimelineEntryModelCache *)self cachedEntryModels];
  v18 = [cachedEntryModels3 count];

  if (v18 - v9 >= limit)
  {
    limitCopy = limit;
  }

  else
  {
    limitCopy = v18 - v9;
  }

  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:limitCopy];
  if (v9 < limitCopy + v9)
  {
    do
    {
      cachedEntryModels4 = [(NWCComplicationTimelineEntryModelCache *)self cachedEntryModels];
      v21 = [cachedEntryModels4 objectAtIndexedSubscript:v9];

      entryDate = [v21 entryDate];
      v23 = [entryDate compare:dateCopy];

      if (v23 == 1)
      {
        [v14 addObject:v21];
      }

      ++v9;
      --limitCopy;
    }

    while (limitCopy);
  }

LABEL_8:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_startOfDayForDate:(id)date
{
  v3 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar startOfDayForDate:dateCopy];

  return v6;
}

+ (id)_startOfDayBeforeDate:(id)date
{
  v4 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar dateByAddingUnit:16 value:-1 toDate:dateCopy options:0];

  v8 = [self _startOfDayForDate:v7];

  return v8;
}

+ (id)_startOfDayAfterDate:(id)date
{
  v4 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar dateByAddingUnit:16 value:1 toDate:dateCopy options:0];

  v8 = [self _startOfDayForDate:v7];

  return v8;
}

+ (id)_endOfDayForDate:(id)date
{
  v3 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:28 fromDate:dateCopy];

  [v6 setHour:23];
  [v6 setMinute:59];
  [v6 setSecond:59];
  v7 = [currentCalendar dateFromComponents:v6];

  return v7;
}

- (NWCComplicationTimelineEntryModelCacheDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end