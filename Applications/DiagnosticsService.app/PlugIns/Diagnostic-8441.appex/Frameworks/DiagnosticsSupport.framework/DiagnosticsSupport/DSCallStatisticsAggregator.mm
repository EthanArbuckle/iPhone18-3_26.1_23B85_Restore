@interface DSCallStatisticsAggregator
- (BOOL)_isDateInRange:(id)range;
- (DSCallStatisticsAggregator)init;
- (id)_getAndValidateDateFromLogLine:(id)line;
- (id)getSynchronousResult;
- (int64_t)_getDaysBetween:(id)between and:(id)and;
- (void)_fillCallLogWithMissingDays:(int64_t)days fromDate:(id)date;
- (void)_flushAccumulatedLogDataWithDate:(id)date;
- (void)_resetAccumulator;
- (void)beginAggregation;
@end

@implementation DSCallStatisticsAggregator

- (DSCallStatisticsAggregator)init
{
  if ([DSEntitlementUtilities currentProcessHasEntitlement:@"com.apple.DiagnosticsSupport.CallStatsAccess"])
  {
    v13.receiver = self;
    v13.super_class = DSCallStatisticsAggregator;
    v3 = [(DSCallStatisticsAggregator *)&v13 init];
    v4 = v3;
    if (v3)
    {
      *&v3->_futureDateDetected = 0;
      v5 = +[NSDate date];
      referenceDate = v4->_referenceDate;
      v4->_referenceDate = v5;

      v7 = objc_opt_new();
      generationLock = v4->_generationLock;
      v4->_generationLock = v7;

      v4->_generationComplete = 0;
      v9 = [NSMutableArray arrayWithCapacity:14];
      callLog = v4->_callLog;
      v4->_callLog = v9;

      v4->_missingDaysRemaining = 14;
      *&v4->_totals.droppedCallCount = 0;
      *&v4->_totals.droppedVoLTECallCount = 0;
      v4->_totals.deviceDroppedCallCount = 0;
      *&v4->_accumulated.droppedVoLTECallCount = 0;
      *&v4->_accumulated.droppedCallCount = 0;
      v4->_accumulated.deviceDroppedCallCount = 0;
    }

    self = v4;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)beginAggregation
{
  generationLock = [(DSCallStatisticsAggregator *)self generationLock];
  [generationLock lock];

  [(DSCallStatisticsAggregator *)self setGenerationComplete:0];
  generationLock2 = [(DSCallStatisticsAggregator *)self generationLock];
  [generationLock2 unlock];

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v5 = [[DSGeneralLogCollector alloc] initWithLogIDs:&off_1EEA0];
  objc_initWeak(&location, self);
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = __46__DSCallStatisticsAggregator_beginAggregation__block_invoke;
  v12 = &unk_18468;
  selfCopy = self;
  v14 = &v17;
  objc_copyWeak(&v15, &location);
  [(DSGeneralLogCollector *)v5 enumerateLogLinesWithBlock:&v9];
  [(DSCallStatisticsAggregator *)self _flushAccumulatedLogDataWithDate:v18[5], v9, v10, v11, v12, selfCopy, v14];
  generationLock3 = [(DSCallStatisticsAggregator *)self generationLock];
  [generationLock3 lock];

  [(DSCallStatisticsAggregator *)self setGenerationComplete:1];
  generationLock4 = [(DSCallStatisticsAggregator *)self generationLock];
  [generationLock4 signal];

  generationLock5 = [(DSCallStatisticsAggregator *)self generationLock];
  [generationLock5 unlock];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v17, 8);
}

id __46__DSCallStatisticsAggregator_beginAggregation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) isCancelled];
  if (v4)
  {
    v5 = DiagnosticLogHandleForCategory(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__DSCallStatisticsAggregator_beginAggregation__block_invoke_cold_3(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  else
  {
    v5 = [*(a1 + 32) _getAndValidateDateFromLogLine:v3];
    if (v5)
    {
      v13 = [*(a1 + 32) _getDaysBetween:*(*(*(a1 + 40) + 8) + 40) and:v5];
      if ((v13 & 0x8000000000000000) != 0)
      {
        [*(a1 + 32) setOutOfOrderDateDetected:1];
        WeakRetained = DiagnosticLogHandleForCategory(3);
        if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
        {
          __46__DSCallStatisticsAggregator_beginAggregation__block_invoke_cold_1(WeakRetained, v27, v28, v29, v30, v31, v32, v33);
        }
      }

      else
      {
        v14 = v13;
        v15 = *(*(*(a1 + 40) + 8) + 40);
        v16 = DiagnosticLogHandleForCategory(3);
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          v18 = 1;
        }

        else
        {
          v18 = v15 == 0;
        }

        if (v18)
        {
          if (v17)
          {
            v35 = 134217984;
            v36 = v14;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "date change, flushing new log entry; daysElapsed=%ld", &v35, 0xCu);
          }

          [*(a1 + 32) _flushAccumulatedLogDataWithDate:*(*(*(a1 + 40) + 8) + 40)];
          [*(a1 + 32) _fillCallLogWithMissingDays:v14 - 1 fromDate:*(*(*(a1 + 40) + 8) + 40)];
        }

        else
        {
          if (v17)
          {
            LOWORD(v35) = 0;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "new log line contains the same date as a previous one, accumulating", &v35, 2u);
          }
        }

        WeakRetained = objc_loadWeakRetained((a1 + 48));
        if (WeakRetained)
        {
          *(WeakRetained + 28) += [v3 integerFromFieldAtIndex:12];
          *(WeakRetained + 32) += [v3 integerFromFieldAtIndex:14];
          *(WeakRetained + 36) += [v3 integerFromFieldAtIndex:15];
          *(WeakRetained + 40) += [v3 integerFromFieldAtIndex:4];
          *(WeakRetained + 44) += [v3 integerFromFieldAtIndex:5];
        }

        objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
      }
    }

    else
    {
      WeakRetained = DiagnosticLogHandleForCategory(3);
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
      {
        __46__DSCallStatisticsAggregator_beginAggregation__block_invoke_cold_2(WeakRetained, v20, v21, v22, v23, v24, v25, v26);
      }
    }
  }

  return v4;
}

- (id)getSynchronousResult
{
  generationLock = [(DSCallStatisticsAggregator *)self generationLock];
  [generationLock lock];

  if (![(DSCallStatisticsAggregator *)self generationComplete])
  {
    do
    {
      generationLock2 = [(DSCallStatisticsAggregator *)self generationLock];
      [generationLock2 wait];
    }

    while (![(DSCallStatisticsAggregator *)self generationComplete]);
  }

  generationLock3 = [(DSCallStatisticsAggregator *)self generationLock];
  [generationLock3 unlock];

  if ([(DSCallStatisticsAggregator *)self isCancelled])
  {
    v6 = 0;
  }

  else
  {
    v16[0] = @"futureDateDetected";
    v7 = [NSNumber numberWithBool:[(DSCallStatisticsAggregator *)self futureDateDetected]];
    v17[0] = v7;
    v16[1] = @"outOfOrderDateDetected";
    v8 = [NSNumber numberWithBool:[(DSCallStatisticsAggregator *)self outOfOrderDateDetected]];
    v17[1] = v8;
    v16[2] = @"totalLoggedDayCount";
    callLog = [(DSCallStatisticsAggregator *)self callLog];
    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [callLog count]);
    v17[2] = v10;
    v16[3] = @"totalPlacedCallCount";
    v11 = [NSNumber numberWithInt:self->_totals.placedCallCount];
    v17[3] = v11;
    v16[4] = @"totalDroppedCallCount";
    v12 = [NSNumber numberWithInt:self->_totals.droppedCallCount];
    v17[4] = v12;
    v16[5] = @"totalDeviceDroppedCallCount";
    v13 = [NSNumber numberWithInt:self->_totals.deviceDroppedCallCount];
    v17[5] = v13;
    v16[6] = @"callLog";
    callLog2 = [(DSCallStatisticsAggregator *)self callLog];
    v17[6] = callLog2;
    v6 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:7];
  }

  return v6;
}

- (BOOL)_isDateInRange:(id)range
{
  rangeCopy = range;
  referenceDate = [(DSCallStatisticsAggregator *)self referenceDate];
  [rangeCopy timeIntervalSinceDate:referenceDate];
  v7 = v6;

  v8 = DiagnosticLogHandleForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "interval since now: %f", &v10, 0xCu);
  }

  if (v7 <= 86400.0)
  {
    return v7 > -1209600.0;
  }

  [(DSCallStatisticsAggregator *)self setFutureDateDetected:1];
  return 0;
}

- (id)_getAndValidateDateFromLogLine:(id)line
{
  v4 = [line stringFromFieldAtIndex:10];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = +[DSDateFormatter sharedFormatter];
  v6 = [v5 formatterWithType:3];
  v7 = [v6 dateFromString:v4];

  if (v7 && ![(DSCallStatisticsAggregator *)self _isDateInRange:v7])
  {

LABEL_5:
    v7 = 0;
  }

  return v7;
}

- (void)_resetAccumulator
{
  *&self->_accumulated.droppedVoLTECallCount = 0;
  *&self->_accumulated.droppedCallCount = 0;
  self->_accumulated.deviceDroppedCallCount = 0;
}

- (void)_fillCallLogWithMissingDays:(int64_t)days fromDate:(id)date
{
  dateCopy = date;
  missingDaysRemaining = [(DSCallStatisticsAggregator *)self missingDaysRemaining];
  if (missingDaysRemaining >= days)
  {
    daysCopy = days;
  }

  else
  {
    daysCopy = missingDaysRemaining;
  }

  v9 = DiagnosticLogHandleForCategory(3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v22 = daysCopy;
    v23 = 2112;
    v24 = dateCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "filling call log with empty data for %ld days starting from [%@]", buf, 0x16u);
  }

  v18 = daysCopy;
  if (daysCopy >= 1)
  {
    v10 = 1;
    v11 = daysCopy;
    do
    {
      v12 = [dateCopy dateByAddingTimeInterval:v10 * 86400.0];
      v13 = +[DSDateFormatter sharedFormatter];
      v14 = [v13 formatterWithType:4];
      v15 = [v14 stringFromDate:v12];

      if (v15)
      {
        v19[0] = @"date";
        v19[1] = @"placedCallCount";
        v20[0] = v15;
        v20[1] = &off_1EE60;
        v19[2] = @"droppedCallCount";
        v19[3] = @"deviceDroppedCallCount";
        v20[2] = &off_1EE60;
        v20[3] = &off_1EE60;
        v19[4] = @"droppedWiFiCallCount";
        v19[5] = @"droppedVoLTECallCount";
        v20[4] = &off_1EE60;
        v20[5] = &off_1EE60;
        v16 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:6];
        callLog = [(DSCallStatisticsAggregator *)self callLog];
        [callLog addObject:v16];
      }

      ++v10;
      --v11;
    }

    while (v11);
  }

  [(DSCallStatisticsAggregator *)self setMissingDaysRemaining:[(DSCallStatisticsAggregator *)self missingDaysRemaining]- v18];
}

- (int64_t)_getDaysBetween:(id)between and:(id)and
{
  betweenCopy = between;
  andCopy = and;
  v7 = andCopy;
  v8 = 0;
  if (betweenCopy && andCopy)
  {
    [andCopy timeIntervalSinceDate:betweenCopy];
    v8 = (v9 / 86400.0);
  }

  v10 = DiagnosticLogHandleForCategory(3);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = betweenCopy;
    v14 = 2112;
    v15 = v7;
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "days between [%@] and [%@]: %ld", &v12, 0x20u);
  }

  return v8;
}

- (void)_flushAccumulatedLogDataWithDate:(id)date
{
  if (date)
  {
    dateCopy = date;
    v5 = +[DSDateFormatter sharedFormatter];
    v6 = [v5 formatterWithType:4];
    v7 = [v6 stringFromDate:dateCopy];

    if (v7)
    {
      v16[0] = v7;
      v15[0] = @"date";
      v15[1] = @"placedCallCount";
      v8 = [NSNumber numberWithInt:self->_accumulated.placedCallCount];
      v16[1] = v8;
      v15[2] = @"droppedCallCount";
      v9 = [NSNumber numberWithInt:self->_accumulated.droppedCallCount];
      v16[2] = v9;
      v15[3] = @"deviceDroppedCallCount";
      v10 = [NSNumber numberWithInt:self->_accumulated.deviceDroppedCallCount];
      v16[3] = v10;
      v15[4] = @"droppedWiFiCallCount";
      v11 = [NSNumber numberWithInt:self->_accumulated.droppedWiFiCallCount];
      v16[4] = v11;
      v15[5] = @"droppedVoLTECallCount";
      v12 = [NSNumber numberWithInt:self->_accumulated.droppedVoLTECallCount];
      v16[5] = v12;
      v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:6];

      callLog = [(DSCallStatisticsAggregator *)self callLog];
      [callLog addObject:v13];

      self->_totals.deviceDroppedCallCount += self->_accumulated.deviceDroppedCallCount;
      *&self->_totals.droppedCallCount = vaddq_s32(*&self->_totals.droppedCallCount, *&self->_accumulated.droppedCallCount);
    }
  }

  [(DSCallStatisticsAggregator *)self _resetAccumulator];
}

@end