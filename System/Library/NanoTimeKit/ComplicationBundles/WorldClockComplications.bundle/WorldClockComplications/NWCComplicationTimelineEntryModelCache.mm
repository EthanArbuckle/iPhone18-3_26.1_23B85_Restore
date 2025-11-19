@interface NWCComplicationTimelineEntryModelCache
+ (id)_endOfDayForDate:(id)a3;
+ (id)_startOfDayAfterDate:(id)a3;
+ (id)_startOfDayBeforeDate:(id)a3;
+ (id)_startOfDayForDate:(id)a3;
- (BOOL)hasEntryModelForDate:(id)a3;
- (NWCComplicationTimelineEntryModelCache)initWithDataSource:(id)a3;
- (NWCComplicationTimelineEntryModelCacheDataSource)dataSource;
- (id)_cachedEntryModelAfterDate:(id)a3 limit:(unint64_t)a4;
- (id)_cachedEntryModelForDate:(id)a3;
- (id)entryModelForDate:(id)a3;
- (id)entryModelsAfterDate:(id)a3 limit:(unint64_t)a4;
- (void)_extendCacheTowardDate:(id)a3;
- (void)invalidate;
@end

@implementation NWCComplicationTimelineEntryModelCache

- (NWCComplicationTimelineEntryModelCache)initWithDataSource:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NWCComplicationTimelineEntryModelCache;
  v5 = [(NWCComplicationTimelineEntryModelCache *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, v4);
  }

  return v6;
}

- (BOOL)hasEntryModelForDate:(id)a3
{
  v3 = [(NWCComplicationTimelineEntryModelCache *)self _cachedEntryModelForDate:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)entryModelForDate:(id)a3
{
  v4 = a3;
  [(NWCComplicationTimelineEntryModelCache *)self _extendCacheTowardDate:v4];
  v5 = [(NWCComplicationTimelineEntryModelCache *)self _cachedEntryModelForDate:v4];

  return v5;
}

- (id)entryModelsAfterDate:(id)a3 limit:(unint64_t)a4
{
  v6 = a3;
  v7 = [objc_opt_class() _startOfDayAfterDate:v6];
  [(NWCComplicationTimelineEntryModelCache *)self _extendCacheTowardDate:v7];
  v8 = [(NWCComplicationTimelineEntryModelCache *)self _cachedEntryModelAfterDate:v6 limit:a4];

  return v8;
}

- (void)invalidate
{
  v3 = [(NWCComplicationTimelineEntryModelCache *)self cachedEntryModels];
  [v3 removeAllObjects];

  [(NWCComplicationTimelineEntryModelCache *)self setCachedEntryModels:0];
  cacheStartDate = self->_cacheStartDate;
  self->_cacheStartDate = 0;

  cacheEndDate = self->_cacheEndDate;
  self->_cacheEndDate = 0;
}

- (void)_extendCacheTowardDate:(id)a3
{
  v21 = a3;
  v4 = [(NWCComplicationTimelineEntryModelCache *)self cachedEntryModels];

  if (!v4)
  {
    v16 = [objc_opt_class() _startOfDayForDate:v21];
    cacheStartDate = self->_cacheStartDate;
    self->_cacheStartDate = v16;

    v18 = [objc_opt_class() _endOfDayForDate:v21];
    cacheEndDate = self->_cacheEndDate;
    self->_cacheEndDate = v18;

    v14 = [(NWCComplicationTimelineEntryModelCache *)self dataSource];
    v15 = [v14 loadEntryModelsForDay:self->_cacheStartDate];
    v20 = [v15 mutableCopy];
    [(NWCComplicationTimelineEntryModelCache *)self setCachedEntryModels:v20];

    goto LABEL_7;
  }

  if ([v21 compare:self->_cacheStartDate] == -1)
  {
    v5 = [objc_opt_class() _startOfDayBeforeDate:self->_cacheStartDate];
    v6 = self->_cacheStartDate;
    self->_cacheStartDate = v5;

    v7 = [(NWCComplicationTimelineEntryModelCache *)self dataSource];
    v8 = [v7 loadEntryModelsForDay:self->_cacheStartDate];
    v9 = [v8 mutableCopy];

    v10 = [(NWCComplicationTimelineEntryModelCache *)self cachedEntryModels];
    [v9 addObjectsFromArray:v10];

    [(NWCComplicationTimelineEntryModelCache *)self setCachedEntryModels:v9];
  }

  if ([v21 compare:self->_cacheEndDate] == 1)
  {
    v11 = [objc_opt_class() _startOfDayAfterDate:self->_cacheEndDate];
    v12 = self->_cacheEndDate;
    self->_cacheEndDate = v11;

    v13 = [(NWCComplicationTimelineEntryModelCache *)self dataSource];
    v14 = [v13 loadEntryModelsForDay:self->_cacheEndDate];

    v15 = [(NWCComplicationTimelineEntryModelCache *)self cachedEntryModels];
    [v15 addObjectsFromArray:v14];
LABEL_7:
  }
}

- (id)_cachedEntryModelForDate:(id)a3
{
  v4 = a3;
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
  v5 = v4;
  v14 = v5;
  v15 = &v16;
  v6 = MEMORY[0x23EEBDCB0](&v10);
  v7 = [(NWCComplicationTimelineEntryModelCache *)self cachedEntryModels:v10];
  [v7 enumerateObjectsWithOptions:2 usingBlock:v6];

  v8 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v8;
}

- (id)_cachedEntryModelAfterDate:(id)a3 limit:(unint64_t)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(NWCComplicationTimelineEntryModelCache *)self _cachedEntryModelForDate:v6];
  if (!v7)
  {
    v10 = NTALogForCategory(6uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_23BDD8898(self, v6, v10);
    }

    goto LABEL_7;
  }

  v8 = [(NWCComplicationTimelineEntryModelCache *)self cachedEntryModels];
  v9 = [v8 indexOfObject:v7];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = NTALogForCategory(6uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = [(NWCComplicationTimelineEntryModelCache *)self cachedEntryModels];
      v24 = 134218754;
      v25 = v11;
      v26 = 2112;
      v27 = v7;
      v28 = 2112;
      v29 = v6;
      v30 = 2112;
      v31 = v13;
      _os_log_error_impl(&dword_23BDCF000, v10, OS_LOG_TYPE_ERROR, "[%public}@] Failed to find entryModelForDate %@ for date %@ in models: %@.", &v24, 0x2Au);
    }

LABEL_7:

    v14 = MEMORY[0x277CBEBF8];
    goto LABEL_8;
  }

  v17 = [(NWCComplicationTimelineEntryModelCache *)self cachedEntryModels];
  v18 = [v17 count];

  if (v18 - v9 >= a4)
  {
    v19 = a4;
  }

  else
  {
    v19 = v18 - v9;
  }

  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:v19];
  if (v9 < v19 + v9)
  {
    do
    {
      v20 = [(NWCComplicationTimelineEntryModelCache *)self cachedEntryModels];
      v21 = [v20 objectAtIndexedSubscript:v9];

      v22 = [v21 entryDate];
      v23 = [v22 compare:v6];

      if (v23 == 1)
      {
        [v14 addObject:v21];
      }

      ++v9;
      --v19;
    }

    while (v19);
  }

LABEL_8:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_startOfDayForDate:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 startOfDayForDate:v4];

  return v6;
}

+ (id)_startOfDayBeforeDate:(id)a3
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 dateByAddingUnit:16 value:-1 toDate:v5 options:0];

  v8 = [a1 _startOfDayForDate:v7];

  return v8;
}

+ (id)_startOfDayAfterDate:(id)a3
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 dateByAddingUnit:16 value:1 toDate:v5 options:0];

  v8 = [a1 _startOfDayForDate:v7];

  return v8;
}

+ (id)_endOfDayForDate:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 components:28 fromDate:v4];

  [v6 setHour:23];
  [v6 setMinute:59];
  [v6 setSecond:59];
  v7 = [v5 dateFromComponents:v6];

  return v7;
}

- (NWCComplicationTimelineEntryModelCacheDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end