@interface EKAvailabilityCachedSpanRange
+ (id)_clampDateRangeForSpans:(id)spans startDate:(id)date endDate:(id)endDate;
- (BOOL)_rangeCompletelyCoversPeriodBetweenStartDate:(id)date endDate:(id)endDate;
- (BOOL)spanType:(int64_t)type isSimilarToSpanType:(int64_t)spanType;
- (EKAvailabilityCachedSpanRange)init;
- (id)cachedSpansFromSpans:(id)spans;
- (id)description;
- (id)gatherFreshlyCachedSpansBetweenStartDate:(id)date endDate:(id)endDate;
- (id)mergeSpansOfSameType:(id)type;
- (id)spans;
- (int64_t)_currentMaxSpanTypeIn:(id)in;
- (void)insertSpans:(id)spans;
- (void)sanitizeAndInsertResults:(id)results inRange:(id)range;
@end

@implementation EKAvailabilityCachedSpanRange

- (EKAvailabilityCachedSpanRange)init
{
  v6.receiver = self;
  v6.super_class = EKAvailabilityCachedSpanRange;
  v2 = [(EKAvailabilityCachedSpanRange *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    cachedSpans = v2->_cachedSpans;
    v2->_cachedSpans = v3;
  }

  return v2;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E6992F88]);
  v8.receiver = self;
  v8.super_class = EKAvailabilityCachedSpanRange;
  v4 = [(EKAvailabilityCachedSpanRange *)&v8 description];
  v5 = [v3 initWithSuperclassDescription:v4];

  [v5 setKey:@"_cachedSpans" withArray:self->_cachedSpans];
  build = [v5 build];

  return build;
}

- (id)gatherFreshlyCachedSpansBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKAvailabilityCachedSpanRange gatherFreshlyCachedSpansBetweenStartDate:endDate:];
  }

  if ([(EKAvailabilityCachedSpanRange *)self _rangeCompletelyCoversPeriodBetweenStartDate:dateCopy endDate:endDateCopy])
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    date = [MEMORY[0x1E695DF00] date];
    cachedSpans = self->_cachedSpans;
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __82__EKAvailabilityCachedSpanRange_gatherFreshlyCachedSpansBetweenStartDate_endDate___block_invoke;
    v20 = &unk_1E77FE1C0;
    v11 = endDateCopy;
    v21 = v11;
    v12 = dateCopy;
    v22 = v12;
    v23 = date;
    v13 = v8;
    v24 = v13;
    v14 = date;
    [(NSMutableArray *)cachedSpans enumerateObjectsUsingBlock:&v17];
    if ([v13 count])
    {
      v15 = [objc_opt_class() _clampDateRangeForSpans:v13 startDate:v12 endDate:v11];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __82__EKAvailabilityCachedSpanRange_gatherFreshlyCachedSpansBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  v6 = [v16 span];
  v7 = [v6 startDate];
  v8 = [v6 endDate];
  if ([*(a1 + 32) CalIsBeforeOrSameAsDate:v7])
  {
    *a4 = 1;
  }

  else if ([*(a1 + 40) CalIsBeforeDate:v8])
  {
    v9 = [v16 creationDate];
    [*(a1 + 48) timeIntervalSinceDate:v9];
    v11 = v10;
    v12 = +[EKDebugPreferences shared];
    [v12 availabilityFreshnessWindow];
    v14 = v13;

    v15 = *(a1 + 56);
    if (v11 <= v14)
    {
      [v15 addObject:v6];
    }

    else
    {
      [v15 removeAllObjects];
      *a4 = 1;
    }
  }
}

- (int64_t)_currentMaxSpanTypeIn:(id)in
{
  inCopy = in;
  if ([inCopy count])
  {
    v4 = 0;
    v5 = -1;
    v6 = 2;
    do
    {
      v7 = [inCopy objectAtIndexedSubscript:v4];
      if ([v7 integerValue] >= 1)
      {
        v8 = [EKAvailabilitySpanDate valueForSpanType:v4];
        v9 = v5 < v8;
        if (v5 <= v8)
        {
          v5 = v8;
        }

        if (v9)
        {
          v6 = v4;
        }
      }

      ++v4;
    }

    while (v4 < [inCopy count]);
  }

  else
  {
    v6 = 2;
  }

  return v6;
}

- (void)sanitizeAndInsertResults:(id)results inRange:(id)range
{
  v28[1] = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  rangeCopy = range;
  if (!resultsCopy)
  {
    v23 = 0;
LABEL_10:
    v24 = [EKAvailabilitySpan alloc];
    startDate = [rangeCopy startDate];
    endDate = [rangeCopy endDate];
    v8 = [(EKAvailabilitySpan *)v24 initWithStartDate:startDate endDate:endDate type:v23];

    v28[0] = v8;
    startDate2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    [(EKAvailabilityCachedSpanRange *)self insertSpans:startDate2];
    goto LABEL_11;
  }

  if (![resultsCopy count])
  {
    v23 = 2;
    goto LABEL_10;
  }

  v8 = objc_opt_new();
  firstObject = [resultsCopy firstObject];
  startDate2 = [firstObject startDate];

  startDate3 = [rangeCopy startDate];
  v12 = [startDate3 isBeforeDate:startDate2];

  if (v12)
  {
    v13 = [EKAvailabilitySpan alloc];
    startDate4 = [rangeCopy startDate];
    v15 = [(EKAvailabilitySpan *)v13 initWithStartDate:startDate4 endDate:startDate2 type:2];
    [(EKAvailabilitySpan *)v8 addObject:v15];
  }

  [(EKAvailabilitySpan *)v8 addObjectsFromArray:resultsCopy];
  lastObject = [resultsCopy lastObject];
  endDate2 = [lastObject endDate];

  endDate3 = [rangeCopy endDate];
  v19 = [endDate3 isAfterDate:endDate2];

  if (v19)
  {
    v20 = [EKAvailabilitySpan alloc];
    endDate4 = [rangeCopy endDate];
    v22 = [(EKAvailabilitySpan *)v20 initWithStartDate:endDate2 endDate:endDate4 type:2];
    [(EKAvailabilitySpan *)v8 addObject:v22];
  }

  [(EKAvailabilityCachedSpanRange *)self insertSpans:v8];

LABEL_11:
  v27 = *MEMORY[0x1E69E9840];
}

- (id)cachedSpansFromSpans:(id)spans
{
  v20 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = spansCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [EKAvailabilityCachedSpan alloc];
        v12 = [(EKAvailabilityCachedSpan *)v11 initWithSpan:v10, v15];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)spanType:(int64_t)type isSimilarToSpanType:(int64_t)spanType
{
  if (type == spanType)
  {
    return 1;
  }

  v13 = v5;
  v14 = v4;
  return type == 1 && spanType == 5 || type == 5 && spanType == 1 || [EKAvailabilityUtilities showTypeAsUnavailable:type, v7, v6, v13, v14, v8, v9]&& [EKAvailabilityUtilities showTypeAsUnavailable:spanType]|| ![EKAvailabilityUtilities showTypeAsBusy:type]&& ![EKAvailabilityUtilities showTypeAsBusy:spanType];
}

- (id)mergeSpansOfSameType:(id)type
{
  v36 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v29 = [MEMORY[0x1E695DF70] arrayWithArray:?];
  v4 = 0;
  do
  {
    v28 = v4;
    v5 = qword_1A81C3C38[v4];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = typeCopy;
    v7 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v32;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v31 + 1) + 8 * i);
          if (-[EKAvailabilityCachedSpanRange spanType:isSimilarToSpanType:](self, "spanType:isSimilarToSpanType:", v5, [v12 type]))
          {
            if (!v9)
            {
              goto LABEL_13;
            }

            endDate = [v9 endDate];
            [v12 startDate];
            v30 = v9;
            v14 = v8;
            v15 = v10;
            v16 = v5;
            selfCopy = self;
            v19 = v18 = v6;
            v20 = [endDate isAfterDate:v19];

            v6 = v18;
            self = selfCopy;
            v5 = v16;
            v10 = v15;
            v8 = v14;
            v9 = v30;

            if (v20)
            {
              endDate2 = [v12 endDate];
              [v30 setEndDate:endDate2];

              v22 = +[EKAvailabilityUtilities orderForType:](EKAvailabilityUtilities, "orderForType:", [v12 type]);
              if (v22 > +[EKAvailabilityUtilities orderForType:](EKAvailabilityUtilities, "orderForType:", [v30 type]))
              {
                [v30 setType:{objc_msgSend(v12, "type")}];
              }

              [v29 removeObject:v12];
            }

            else
            {
LABEL_13:
              v23 = v12;

              v9 = v23;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v4 = v28 + 1;
  }

  while (v28 != 2);
  v24 = [(EKAvailabilityCachedSpanRange *)self cachedSpansFromSpans:v29];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)insertSpans:(id)spans
{
  v78 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  v5 = EKAvailabilityHandle;
  if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_DEBUG))
  {
    [(EKAvailabilityCachedSpanRange *)spansCopy insertSpans:v5];
    if (!spansCopy)
    {
LABEL_35:
      v59 = EKAvailabilityHandle;
      if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_ERROR))
      {
        [EKAvailabilityCachedSpanRange insertSpans:v59];
      }

      goto LABEL_37;
    }
  }

  else if (!spansCopy)
  {
    goto LABEL_35;
  }

  if (![spansCopy count])
  {
    goto LABEL_35;
  }

  v64 = spansCopy;
  v63 = [spansCopy sortedArrayUsingComparator:&__block_literal_global_31];
  v6 = [MEMORY[0x1E695DF70] arrayWithArray:?];
  v7 = objc_opt_new();
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  selfCopy = self;
  v8 = self->_cachedSpans;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v72 objects:v77 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v73;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v73 != v11)
        {
          objc_enumerationMutation(v8);
        }

        span = [*(*(&v72 + 1) + 8 * i) span];
        [v7 addObject:span];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v72 objects:v77 count:16];
    }

    while (v10);
  }

  v14 = objc_alloc(MEMORY[0x1E6992F70]);
  firstObject = [v6 firstObject];
  startDate = [firstObject startDate];
  v62 = v6;
  lastObject = [v6 lastObject];
  endDate = [lastObject endDate];
  v19 = [v14 initWithStartDate:startDate endDate:endDate];

  v20 = objc_alloc(MEMORY[0x1E6992F70]);
  firstObject2 = [v7 firstObject];
  startDate2 = [firstObject2 startDate];
  lastObject2 = [v7 lastObject];
  endDate2 = [lastObject2 endDate];
  v25 = [v20 initWithStartDate:startDate2 endDate:endDate2];

  v61 = v25;
  if (!-[NSMutableArray count](selfCopy->_cachedSpans, "count") || [v19 containsRange:v25])
  {
    v26 = v62;
    v27 = [(EKAvailabilityCachedSpanRange *)selfCopy mergeSpansOfSameType:v62];
    cachedSpans = selfCopy->_cachedSpans;
    selfCopy->_cachedSpans = v27;
    goto LABEL_33;
  }

  v67 = objc_opt_new();
  v66 = objc_opt_new();
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v29 = v7;
  v30 = [v29 countByEnumeratingWithState:&v68 objects:v76 count:16];
  if (!v30)
  {
    goto LABEL_32;
  }

  v31 = v30;
  v32 = *v69;
  do
  {
    v33 = 0;
    do
    {
      if (*v69 != v32)
      {
        objc_enumerationMutation(v29);
      }

      v34 = *(*(&v68 + 1) + 8 * v33);
      endDate3 = [v34 endDate];
      startDate3 = [v19 startDate];
      v37 = [endDate3 CalIsBeforeOrSameAsDate:startDate3];

      if (v37)
      {
        v38 = v67;
LABEL_23:
        [(NSMutableArray *)v38 addObject:v34];
        goto LABEL_24;
      }

      endDate4 = [v19 endDate];
      startDate4 = [v34 startDate];
      v41 = [endDate4 CalIsBeforeOrSameAsDate:startDate4];

      if (v41)
      {
        v38 = v66;
        goto LABEL_23;
      }

      if ([v19 intersectsRange:v34])
      {
        startDate5 = [v34 startDate];
        startDate6 = [v19 startDate];
        v44 = [startDate5 CalIsBeforeDate:startDate6];

        if (v44)
        {
          v45 = [EKAvailabilitySpan alloc];
          startDate7 = [v34 startDate];
          startDate8 = [v19 startDate];
          v48 = -[EKAvailabilitySpan initWithStartDate:endDate:type:](v45, "initWithStartDate:endDate:type:", startDate7, startDate8, [v34 type]);

          [(NSMutableArray *)v67 addObject:v48];
        }

        endDate5 = [v19 endDate];
        endDate6 = [v34 endDate];
        v51 = [endDate5 CalIsBeforeDate:endDate6];

        if (v51)
        {
          v52 = [EKAvailabilitySpan alloc];
          endDate7 = [v19 endDate];
          endDate8 = [v34 endDate];
          v55 = -[EKAvailabilitySpan initWithStartDate:endDate:type:](v52, "initWithStartDate:endDate:type:", endDate7, endDate8, [v34 type]);

          [(NSMutableArray *)v66 addObject:v55];
        }
      }

LABEL_24:
      ++v33;
    }

    while (v31 != v33);
    v56 = [v29 countByEnumeratingWithState:&v68 objects:v76 count:16];
    v31 = v56;
  }

  while (v56);
LABEL_32:

  cachedSpans = v67;
  v26 = v62;
  [(NSMutableArray *)v67 addObjectsFromArray:v62];
  [(NSMutableArray *)v67 addObjectsFromArray:v66];
  v57 = [(EKAvailabilityCachedSpanRange *)selfCopy mergeSpansOfSameType:v67];
  v58 = selfCopy->_cachedSpans;
  selfCopy->_cachedSpans = v57;

LABEL_33:
  spansCopy = v64;

LABEL_37:
  v60 = *MEMORY[0x1E69E9840];
}

uint64_t __45__EKAvailabilityCachedSpanRange_insertSpans___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 startDate];
  v7 = [v5 startDate];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = [v4 endDate];
    v10 = [v5 endDate];
    v8 = [v9 compare:v10];
  }

  return v8;
}

- (id)spans
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  cachedSpans = self->_cachedSpans;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__EKAvailabilityCachedSpanRange_spans__block_invoke;
  v7[3] = &unk_1E77FE208;
  v5 = v3;
  v8 = v5;
  [(NSMutableArray *)cachedSpans enumerateObjectsUsingBlock:v7];

  return v5;
}

void __38__EKAvailabilityCachedSpanRange_spans__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 span];
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 span];
    [v4 addObject:v5];
  }
}

- (BOOL)_rangeCompletelyCoversPeriodBetweenStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  cachedSpans = self->_cachedSpans;
  dateCopy = date;
  firstObject = [(NSMutableArray *)cachedSpans firstObject];
  lastObject = [(NSMutableArray *)self->_cachedSpans lastObject];
  span = [firstObject span];
  startDate = [span startDate];
  v13 = [startDate CalIsBeforeOrSameAsDate:dateCopy];

  if (v13)
  {
    span2 = [lastObject span];
    endDate = [span2 endDate];
    v16 = [endDate CalIsAfterOrSameAsDate:endDateCopy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)_clampDateRangeForSpans:(id)spans startDate:(id)date endDate:(id)endDate
{
  v52 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  dateCopy = date;
  endDateCopy = endDate;
  if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_DEBUG))
  {
    +[EKAvailabilityCachedSpanRange _clampDateRangeForSpans:startDate:endDate:];
  }

  v10 = spansCopy;
  v11 = [v10 count];
  v12 = v10;
  if (v10)
  {
    v13 = v11;
    v12 = v10;
    if (v11)
    {
      firstObject = [v10 firstObject];
      lastObject = [v10 lastObject];
      startDate = [firstObject startDate];
      if ([startDate CalIsBeforeDate:dateCopy])
      {
      }

      else
      {
        endDate = [lastObject endDate];
        v18 = [endDate CalIsAfterDate:endDateCopy];

        if (!v18)
        {
          v37 = EKAvailabilityHandle;
          v12 = v10;
          if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_DEBUG))
          {
            [EKAvailabilityCachedSpanRange _clampDateRangeForSpans:v37 startDate:? endDate:?];
            v12 = v10;
          }

          goto LABEL_24;
        }
      }

      v19 = EKAvailabilityHandle;
      if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_DEBUG))
      {
        v40 = v19;
        startDate2 = [firstObject startDate];
        endDate2 = [lastObject endDate];
        *buf = 138413058;
        v45 = startDate2;
        v46 = 2112;
        v47 = endDate2;
        v48 = 2112;
        v49 = dateCopy;
        v50 = 2112;
        v51 = endDateCopy;
        _os_log_debug_impl(&dword_1A805E000, v40, OS_LOG_TYPE_DEBUG, "Clamping date range for spans.  Original start date: [%@].  Original end date: [%@].  New start date: [%@].  New end date: [%@].", buf, 0x2Au);
      }

      v20 = v13 - 1;
      if (v13 == 1)
      {
        type = [firstObject type];
        startDate3 = [firstObject startDate];
        endDate3 = [firstObject endDate];
        startDate4 = [firstObject startDate];
        v25 = [startDate4 CalIsBeforeDate:dateCopy];

        if (v25)
        {
          v26 = dateCopy;

          startDate3 = v26;
        }

        endDate4 = [firstObject endDate];
        v28 = [endDate4 CalIsAfterDate:endDateCopy];

        if (v28)
        {
          v29 = endDateCopy;

          endDate3 = v29;
        }

        v30 = [[EKAvailabilitySpan alloc] initWithStartDate:startDate3 endDate:endDate3 type:type];
        v31 = EKAvailabilityHandle;
        if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_DEBUG))
        {
          [EKAvailabilityCachedSpanRange _clampDateRangeForSpans:v31 startDate:type endDate:?];
        }

        v43 = v30;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
      }

      else
      {
        v32 = [EKAvailabilitySpan alloc];
        endDate5 = [firstObject endDate];
        startDate3 = -[EKAvailabilitySpan initWithStartDate:endDate:type:](v32, "initWithStartDate:endDate:type:", dateCopy, endDate5, [firstObject type]);

        v34 = [EKAvailabilitySpan alloc];
        startDate5 = [lastObject startDate];
        v36 = -[EKAvailabilitySpan initWithStartDate:endDate:type:](v34, "initWithStartDate:endDate:type:", startDate5, endDateCopy, [lastObject type]);

        v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v10];
        [v12 replaceObjectAtIndex:0 withObject:startDate3];
        [v12 replaceObjectAtIndex:v20 withObject:v36];
        if (os_log_type_enabled(EKAvailabilityHandle, OS_LOG_TYPE_DEBUG))
        {
          +[EKAvailabilityCachedSpanRange _clampDateRangeForSpans:startDate:endDate:];
        }
      }

LABEL_24:
    }
  }

  v38 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)gatherFreshlyCachedSpansBetweenStartDate:endDate:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_0(&dword_1A805E000, v0, v1, "Gathering freshly cached spans between [%@] and [%@]");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)insertSpans:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1A805E000, a2, OS_LOG_TYPE_DEBUG, "Inserting spans [%@].", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_clampDateRangeForSpans:startDate:endDate:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_0(&dword_1A805E000, v0, v1, "Clamping date range for spans between [%@] and [%@]");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_clampDateRangeForSpans:startDate:endDate:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_0(&dword_1A805E000, v0, v1, "Clamped the spans.  firstTruncatedSpan: [%@].  lastTruncatedSpan: [%@]");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_clampDateRangeForSpans:(void *)a1 startDate:(unint64_t)a2 endDate:.cold.4(void *a1, unint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = EKAvailabilitySpanTypeAsString(a2);
  v6 = 138412290;
  v7 = v4;
  _os_log_debug_impl(&dword_1A805E000, v3, OS_LOG_TYPE_DEBUG, "There is only one span.  Created a new span and set its type to: [%@]", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end