@interface EKUIOverlayCalendarSignificantDatesProvider
- (EKUIOverlayCalendarSignificantDatesProvider)init;
- (id)firstOfOverlayMonthsForCalendarMonth:(id)month;
- (id)firstOfOverlayYearsForCalendarMonth:(id)month;
- (void)_invalidateCaches;
- (void)_load;
- (void)_requestDate:(id)date;
- (void)dealloc;
@end

@implementation EKUIOverlayCalendarSignificantDatesProvider

- (EKUIOverlayCalendarSignificantDatesProvider)init
{
  v7.receiver = self;
  v7.super_class = EKUIOverlayCalendarSignificantDatesProvider;
  v2 = [(EKUIOverlayCalendarSignificantDatesProvider *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("EKUIOverlayCalendarSignificantDatesProvider", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__invalidateCaches name:*MEMORY[0x1E6993308] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E6993308] object:0];

  v4.receiver = self;
  v4.super_class = EKUIOverlayCalendarSignificantDatesProvider;
  [(EKUIOverlayCalendarSignificantDatesProvider *)&v4 dealloc];
}

- (void)_invalidateCaches
{
  currentRequest = self->_currentRequest;
  if (currentRequest)
  {
    midpoint = currentRequest;
  }

  else
  {
    midpoint = [(CalDateRange *)self->_cachedDateRange midpoint];
  }

  v11 = midpoint;
  cachedDateRange = self->_cachedDateRange;
  self->_cachedDateRange = 0;

  cachedCentralYear = self->_cachedCentralYear;
  self->_cachedCentralYear = 0;

  cachedFirstsOfMonths = self->_cachedFirstsOfMonths;
  self->_cachedFirstsOfMonths = 0;

  cachedFirstsOfYears = self->_cachedFirstsOfYears;
  self->_cachedFirstsOfYears = 0;

  ++self->_currentGeneration;
  v9 = CUIKGetOverlayCalendar();

  if (v9)
  {
    [(EKUIOverlayCalendarSignificantDatesProvider *)self _requestDate:v11];
  }

  else
  {
    significantDatesChangedHandler = self->_significantDatesChangedHandler;
    if (significantDatesChangedHandler)
    {
      significantDatesChangedHandler[2](significantDatesChangedHandler, 0);
    }
  }
}

- (id)firstOfOverlayMonthsForCalendarMonth:(id)month
{
  monthCopy = month;
  [(EKUIOverlayCalendarSignificantDatesProvider *)self _requestDate:monthCopy];
  v5 = [(NSDictionary *)self->_cachedFirstsOfMonths objectForKeyedSubscript:monthCopy];

  return v5;
}

- (id)firstOfOverlayYearsForCalendarMonth:(id)month
{
  monthCopy = month;
  [(EKUIOverlayCalendarSignificantDatesProvider *)self _requestDate:monthCopy];
  v5 = [(NSDictionary *)self->_cachedFirstsOfYears objectForKeyedSubscript:monthCopy];

  return v5;
}

- (void)_requestDate:(id)date
{
  dateCopy = date;
  v5 = CUIKGetOverlayCalendar();

  if (v5)
  {
    if ([(CalDateRange *)self->_cachedCentralYear containsDate:dateCopy])
    {
      currentRequest = self->_currentRequest;
      ++self->_currentGeneration;
      self->_currentRequest = 0;
    }

    else
    {
      objc_storeStrong(&self->_currentRequest, date);
      if (!self->_loadPending)
      {
        self->_loadPending = 1;
        [(EKUIOverlayCalendarSignificantDatesProvider *)self _load];
      }
    }
  }
}

- (void)_load
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__EKUIOverlayCalendarSignificantDatesProvider__load__block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(queue, block);
}

void __52__EKUIOverlayCalendarSignificantDatesProvider__load__block_invoke(uint64_t a1)
{
  v79[0] = 0;
  v79[1] = v79;
  v79[2] = 0x2020000000;
  v79[3] = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__14;
  v77 = __Block_byref_object_dispose__14;
  v78 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__14;
  v71 = __Block_byref_object_dispose__14;
  v72 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__14;
  v65 = __Block_byref_object_dispose__14;
  v66 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__14;
  v59 = __Block_byref_object_dispose__14;
  v60 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__EKUIOverlayCalendarSignificantDatesProvider__load__block_invoke_5;
  block[3] = &unk_1E8441978;
  block[4] = *(a1 + 32);
  block[5] = &v51;
  block[6] = v79;
  block[7] = &v73;
  block[8] = &v67;
  block[9] = &v61;
  block[10] = &v55;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  if ((v52[3] & 1) == 0)
  {
    v2 = CUIKCalendar();
    v3 = CUIKGetOverlayCalendar();
    if (v3)
    {
      if (!v62[5] || !v56[5])
      {
        v4 = objc_opt_new();
        v5 = v62[5];
        v62[5] = v4;

        v6 = objc_opt_new();
        v7 = v56[5];
        v56[5] = v6;
      }

      v8 = [v2 components:6 fromDate:v74[5]];
      v9 = [v2 dateFromComponents:v8];

      v10 = objc_alloc(MEMORY[0x1E6992F70]);
      v11 = [v2 dateByAddingUnit:4 value:1 toDate:v9 options:1024];
      v12 = [v10 initWithStartDate:v9 endDate:v11];

      v13 = [v2 dateByAddingUnit:4 value:-2 toDate:v9 options:1024];
      v14 = [v12 endDate];
      v15 = [v2 dateByAddingUnit:4 value:2 toDate:v14 options:1024];
      v33 = v9;

      v16 = [objc_alloc(MEMORY[0x1E6992F70]) initWithStartDate:v13 endDate:v15];
      v31 = v15;
      v32 = v13;
      v17 = objc_opt_new();
      v18 = v62[5];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __52__EKUIOverlayCalendarSignificantDatesProvider__load__block_invoke_2;
      v47[3] = &unk_1E84419A0;
      v19 = v16;
      v48 = v19;
      v20 = v17;
      v49 = v20;
      [v18 enumerateKeysAndObjectsUsingBlock:v47];
      [v62[5] removeObjectsForKeys:v20];
      [v56[5] removeObjectsForKeys:v20];
      v34 = v3;
      v21 = [v19 subtractRange:v68[5]];
      v22 = objc_opt_new();
      v23 = objc_opt_new();
      v24 = [v21 distinctRanges];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __52__EKUIOverlayCalendarSignificantDatesProvider__load__block_invoke_3;
      v42[3] = &unk_1E84419F0;
      v43 = v34;
      v44 = v2;
      v25 = v22;
      v45 = v25;
      v26 = v23;
      v46 = v26;
      [v24 enumerateObjectsUsingBlock:v42];

      [v62[5] setValuesForKeysWithDictionary:v25];
      [v56[5] setValuesForKeysWithDictionary:v26];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __52__EKUIOverlayCalendarSignificantDatesProvider__load__block_invoke_5;
      v35[3] = &unk_1E8441A18;
      v35[4] = *(a1 + 32);
      v36 = v19;
      v39 = v79;
      v40 = &v61;
      v41 = &v55;
      v37 = v12;
      v38 = v21;
      v27 = v21;
      v28 = v12;
      v29 = v19;
      v30 = MEMORY[0x1E69E96A0];
      dispatch_sync(MEMORY[0x1E69E96A0], v35);

      v3 = v34;
    }
  }

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v67, 8);

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(v79, 8);
}

void __52__EKUIOverlayCalendarSignificantDatesProvider__load__block_invoke_5(void *a1)
{
  v2 = a1[4];
  if (!*(v2 + 56) || [*(v2 + 16) containsDate:?])
  {
    *(*(a1[5] + 8) + 24) = 1;
  }

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = *(a1[4] + 48);
    objc_storeStrong((*(a1[7] + 8) + 40), *(a1[4] + 56));
    objc_storeStrong((*(a1[8] + 8) + 40), *(a1[4] + 8));
    v3 = [*(a1[4] + 24) mutableCopy];
    v4 = *(a1[9] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = [*(a1[4] + 32) mutableCopy];
    v7 = *(a1[10] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = a1[4];
  v10 = *(v9 + 56);
  *(v9 + 56) = 0;

  *(a1[4] + 64) = 0;
}

void __52__EKUIOverlayCalendarSignificantDatesProvider__load__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsDate:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

void __52__EKUIOverlayCalendarSignificantDatesProvider__load__block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setDay:1];
  v5 = a1[4];
  v6 = [v3 startDate];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__EKUIOverlayCalendarSignificantDatesProvider__load__block_invoke_4;
  v14[3] = &unk_1E84419C8;
  v15 = v3;
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[4];
  v10 = a1[7];
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v16 = v12;
  v17 = v11;
  v13 = v3;
  [v5 enumerateDatesStartingAfterDate:v6 matchingComponents:v4 options:1024 usingBlock:v14];
}

void __52__EKUIOverlayCalendarSignificantDatesProvider__load__block_invoke_4(id *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  if ([a1[4] containsDate:?])
  {
    v6 = [a1[5] components:30 fromDate:v14];
    v7 = [v6 day];
    [v6 setDay:1];
    v8 = [a1[5] dateFromComponents:v6];
    v9 = [a1[6] objectForKeyedSubscript:v8];
    if (!v9)
    {
      v9 = objc_opt_new();
      [a1[6] setObject:v9 forKeyedSubscript:v8];
    }

    v10 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    [v9 addObject:v10];

    v11 = [a1[7] components:1073741832 fromDate:v14];
    if ([v11 month] == 1 && (objc_msgSend(v11, "isLeapMonth") & 1) == 0)
    {
      v12 = [a1[8] objectForKeyedSubscript:v8];
      if (!v12)
      {
        v12 = objc_opt_new();
        [a1[8] setObject:v12 forKeyedSubscript:v8];
      }

      v13 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
      [v12 addObject:v13];
    }
  }

  else
  {
    *a4 = 1;
  }
}

uint64_t __52__EKUIOverlayCalendarSignificantDatesProvider__load__block_invoke_5(uint64_t result)
{
  v1 = *(result + 32);
  if (*(*(*(result + 64) + 8) + 24) == *(v1 + 48))
  {
    v2 = result;
    objc_storeStrong((v1 + 8), *(result + 40));
    objc_storeStrong((*(v2 + 32) + 16), *(v2 + 48));
    objc_storeStrong((*(v2 + 32) + 24), *(*(*(v2 + 72) + 8) + 40));
    objc_storeStrong((*(v2 + 32) + 32), *(*(*(v2 + 80) + 8) + 40));
    result = *(*(v2 + 32) + 72);
    if (result)
    {
      v3 = *(result + 16);

      return v3();
    }
  }

  return result;
}

@end