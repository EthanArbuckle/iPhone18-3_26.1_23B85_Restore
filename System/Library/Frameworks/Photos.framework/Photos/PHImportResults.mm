@interface PHImportResults
+ (PHImportResults)resultsWithException:(id)exception;
+ (PHImportResults)resultsWithExceptions:(id)exceptions;
- (NSError)error;
- (PHImportResults)init;
- (double)runTime;
- (id)exceptions;
- (id)generatePMRInfo;
- (id)importRecordExceptions;
- (unint64_t)failedToImportCount;
- (unsigned)result;
- (void)insertStart:(id)start end:(id)end intoGroups:(id)groups ofType:(unint64_t)type;
- (void)log:(id)log activity:(id)activity description:(id)description digits:(unint64_t)digits;
- (void)logPMR;
- (void)verifyGroups:(id)groups;
@end

@implementation PHImportResults

- (void)logPMR
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = PLImportGetLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  if (v4)
  {
    generatePMRInfo = [(PHImportResults *)self generatePMRInfo];
    v6 = [generatePMRInfo objectForKeyedSubscript:@"ImportTotalTime"];
    v7 = [v6 objectForKeyedSubscript:@"Count"];
    unsignedIntegerValue = [v7 unsignedIntegerValue];

    if (unsignedIntegerValue)
    {
      LODWORD(v9) = 0;
      v10 = unsignedIntegerValue;
      do
      {
        v9 = (v9 + 1);
        v11 = v10 > 9;
        v10 /= 0xAuLL;
      }

      while (v11);
    }

    else
    {
      v9 = 0;
    }

    v12 = [MEMORY[0x1E696AD60] stringWithString:@"\n\n"];
    [v12 appendString:@"\t============================================================\n"];
    [v12 appendString:@"\t                    Import Performance                      \n"];
    [v12 appendString:@"\t============================================================\n"];
    v13 = [generatePMRInfo objectForKeyedSubscript:@"ImportTotalTime"];
    v14 = [v13 objectForKeyedSubscript:@"Duration"];
    [v14 doubleValue];
    [v12 appendFormat:@"\tTotal time to import %lu items: %8.4f\n", unsignedIntegerValue, v15];

    [v12 appendString:@"\t------------------------------------------------------------\n"];
    v16 = [generatePMRInfo objectForKeyedSubscript:@"ImportDownload"];
    [(PHImportResults *)self log:v12 activity:v16 description:@"\tDownload files:           " digits:v9];

    v17 = [generatePMRInfo objectForKeyedSubscript:@"ImportReadMetadata"];
    [(PHImportResults *)self log:v12 activity:v17 description:@"\tRead metadata:            " digits:v9];

    v18 = [generatePMRInfo objectForKeyedSubscript:@"ImportAdjustments"];
    [(PHImportResults *)self log:v12 activity:v18 description:@"\tApply adjustments:        " digits:v9];

    v19 = [generatePMRInfo objectForKeyedSubscript:@"ImportLivePhotoPairing"];
    [(PHImportResults *)self log:v12 activity:v19 description:@"\tPair LivePhotos:          " digits:v9];

    v20 = [generatePMRInfo objectForKeyedSubscript:@"ImportMisc"];
    [(PHImportResults *)self log:v12 activity:v20 description:@"\tMiscellaneous processing: " digits:v9];

    [v12 appendString:@"\t============================================================\n"];
    v21 = PLImportGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v12;
      _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEBUG, "PMR %@", buf, 0xCu);
    }
  }
}

- (void)log:(id)log activity:(id)activity description:(id)description digits:(unint64_t)digits
{
  logCopy = log;
  activityCopy = activity;
  descriptionCopy = description;
  v10 = [activityCopy objectForKeyedSubscript:@"Count"];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    v12 = [activityCopy objectForKeyedSubscript:@"Duration"];
    [v12 doubleValue];
    v14 = v13;

    [logCopy appendFormat:@"%@%8.4f", descriptionCopy, *&v14];
    v15 = [activityCopy objectForKeyedSubscript:@"Absolute Duration"];
    [v15 doubleValue];
    v17 = v16;

    if (v14 != v17)
    {
      [logCopy appendFormat:@" (ab: %.3f, av: %.3f)", *&v17, v17 / unsignedIntegerValue];
    }

    [logCopy appendString:@"\n"];
  }
}

- (void)verifyGroups:(id)groups
{
  v3 = 0;
  v30 = *MEMORY[0x1E69E9840];
  do
  {
    v4 = [groups objectAtIndexedSubscript:v3];
    [v4 sortUsingComparator:&__block_literal_global_112_41288];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          v11 = v8;
          if (*v22 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = PLImportGetLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = [pmrKey objectAtIndexedSubscript:v3];
            *buf = 138412546;
            v26 = v14;
            v27 = 2112;
            v28 = v12;
            _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_INFO, "%@: created group: %@", buf, 0x16u);
          }

          if (v11)
          {
            start = [v12 start];
            v16 = [v11 end];
            [start timeIntervalSinceDate:v16];
            v18 = v17;

            if (v18 < 0.0)
            {
              v19 = PLImportGetLog();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v26 = v11;
                v27 = 2112;
                v28 = v12;
                _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "!!!!!!!!!!ERROR: Found a group (%@) which overlaps another group (%@)", buf, 0x16u);
              }
            }
          }

          v8 = v12;
        }

        v7 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v7);
    }

    ++v3;
  }

  while (v3 != 17);
}

uint64_t __32__PHImportResults_verifyGroups___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 start];
  v7 = [v5 start];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  if (v9 >= 0.0)
  {
    v11 = [v4 start];
    v12 = [v5 start];
    [v11 timeIntervalSinceDate:v12];
    v10 = v13 > 0.0;
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (void)insertStart:(id)start end:(id)end intoGroups:(id)groups ofType:(unint64_t)type
{
  v41 = *MEMORY[0x1E69E9840];
  startCopy = start;
  endCopy = end;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  groupsCopy = groups;
  v13 = [groupsCopy countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v13)
  {
LABEL_13:

LABEL_22:
    v15 = [[DurationGroup alloc] initWithStart:startCopy end:endCopy];
    [groupsCopy addObject:v15];
    goto LABEL_23;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v37;
LABEL_3:
  v17 = 0;
  v18 = v15;
  while (1)
  {
    if (*v37 != v16)
    {
      objc_enumerationMutation(groupsCopy);
    }

    v15 = *(*(&v36 + 1) + 8 * v17);

    start = [(DurationGroup *)v15 start];
    [startCopy timeIntervalSinceDate:start];
    v21 = v20;

    if (v21 < 0.0)
    {
      break;
    }

    v25 = [(DurationGroup *)v15 end];
    [startCopy timeIntervalSinceDate:v25];
    v27 = v26;

    if (v27 < 0.0)
    {
      v28 = [(DurationGroup *)v15 end];
      [endCopy timeIntervalSinceDate:v28];
      v30 = v29;

      if (v30 < 0.0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

LABEL_10:
    ++v17;
    v18 = v15;
    if (v14 == v17)
    {
      v14 = [groupsCopy countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v14)
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }
  }

  start2 = [(DurationGroup *)v15 start];
  [endCopy timeIntervalSinceDate:start2];
  v24 = v23;

  if (v24 < 0.0)
  {
    goto LABEL_10;
  }

  [(DurationGroup *)v15 setStart:startCopy];
  v31 = [(DurationGroup *)v15 end];
  [endCopy timeIntervalSinceDate:v31];
  v33 = v32;

  if (v33 >= 0.0)
  {
LABEL_17:
    [(DurationGroup *)v15 setEnd:endCopy];
  }

  [(DurationGroup *)v15 setWasChanged:1];
LABEL_19:

  if (!v15)
  {
    goto LABEL_22;
  }

  if ([(DurationGroup *)v15 wasChanged])
  {
    [groupsCopy removeObject:v15];
    start3 = [(DurationGroup *)v15 start];
    v35 = [(DurationGroup *)v15 end];
    [(PHImportResults *)self insertStart:start3 end:v35 intoGroups:groupsCopy ofType:type];
  }

LABEL_23:
}

- (id)generatePMRInfo
{
  selfCopy = self;
  v72 = *MEMORY[0x1E69E9840];
  pmrInfo = self->_pmrInfo;
  if (!pmrInfo)
  {
    if (generatePMRInfo_onceToken != -1)
    {
      dispatch_once(&generatePMRInfo_onceToken, &__block_literal_global_41294);
    }

    v71 = 0;
    memset(v70, 0, sizeof(v70));
    v69 = 0;
    memset(v68, 0, sizeof(v68));
    v4 = objc_opt_new();
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v46 = selfCopy;
    obj = [(PHImportResults *)selfCopy importRecords];
    v45 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
    if (v45)
    {
      v44 = *v55;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v55 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v6 = 0;
          v7 = *(*(&v54 + 1) + 8 * i);
          do
          {
            if ([v4 count] <= v6)
            {
              v8 = objc_opt_new();
              [v4 addObject:v8];
            }

            else
            {
              v8 = [v4 objectAtIndexedSubscript:v6];
            }

            timers = [v7 timers];
            [timers duration:v6];
            v11 = v10;

            if (v11 > 0.0)
            {
              ++*(v70 + v6);
              *(v68 + v6) = v11 + *(v68 + v6);
              timers2 = [v7 timers];
              v51[0] = MEMORY[0x1E69E9820];
              v51[1] = 3221225472;
              v51[2] = __34__PHImportResults_generatePMRInfo__block_invoke_2;
              v51[3] = &unk_1E75A9648;
              v51[4] = selfCopy;
              v52 = v8;
              v53 = v6;
              [timers2 processTimesOfType:v6 withBlock:v51];
            }

            ++v6;
          }

          while (v6 != 17);
        }

        v45 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
      }

      while (v45);
    }

    v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:17];
    v14 = selfCopy->_pmrInfo;
    selfCopy->_pmrInfo = v13;

    v65[0] = @"Count";
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHImportResults importedCount](selfCopy, "importedCount")}];
    v65[1] = @"Duration";
    v66[0] = v15;
    v16 = MEMORY[0x1E696AD98];
    [(PHImportResults *)selfCopy runTime];
    v17 = [v16 numberWithDouble:?];
    v66[1] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
    v19 = selfCopy->_pmrInfo;
    v20 = [pmrKey objectAtIndexedSubscript:17];
    [(NSMutableDictionary *)v19 setObject:v18 forKeyedSubscript:v20];

    for (j = 0; j != 17; ++j)
    {
      v22 = *(v70 + j);
      if (v22)
      {
        v23 = [v4 objectAtIndexedSubscript:j];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v24 = v23;
        v25 = [v24 countByEnumeratingWithState:&v47 objects:v64 count:16];
        if (!v25)
        {

LABEL_40:
          _PFAssertFailHandler();
        }

        v26 = v25;
        v27 = *v48;
        v28 = 0.0;
        do
        {
          for (k = 0; k != v26; ++k)
          {
            if (*v48 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v30 = *(*(&v47 + 1) + 8 * k);
            v31 = [v30 end];
            start = [v30 start];
            [v31 timeIntervalSinceDate:start];
            v28 = v28 + v33;
          }

          v26 = [v24 countByEnumeratingWithState:&v47 objects:v64 count:16];
        }

        while (v26);

        selfCopy = v46;
        if (v28 == 0.0)
        {
          goto LABEL_40;
        }

        v34 = *(v68 + j);
        if (v34 == 0.0)
        {
          goto LABEL_40;
        }

        if (v28 > v34)
        {
          v35 = PLImportGetLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349312;
            v61 = v28;
            v62 = 2050;
            v63 = v34;
            _os_log_impl(&dword_19C86F000, v35, OS_LOG_TYPE_ERROR, "It is unexpected for duration (%{public}g) to be <= absoluteDuration (%{public}g)", buf, 0x16u);
          }
        }

        v58[0] = @"Count";
        v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v22];
        v59[0] = v36;
        v58[1] = @"Duration";
        v37 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
        v59[1] = v37;
        v58[2] = @"Absolute Duration";
        v38 = [MEMORY[0x1E696AD98] numberWithDouble:v34];
        v59[2] = v38;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:3];
        v40 = v46->_pmrInfo;
        v41 = [pmrKey objectAtIndexedSubscript:j];
        [(NSMutableDictionary *)v40 setObject:v39 forKeyedSubscript:v41];
      }
    }

    pmrInfo = selfCopy->_pmrInfo;
  }

  return pmrInfo;
}

void __34__PHImportResults_generatePMRInfo__block_invoke()
{
  v0 = pmrKey;
  pmrKey = &unk_1F102E330;
}

- (double)runTime
{
  startTime = [(PHImportResults *)self startTime];
  if (!startTime)
  {
    return 0.0;
  }

  v4 = startTime;
  endTime = [(PHImportResults *)self endTime];

  if (!endTime)
  {
    return 0.0;
  }

  endTime2 = [(PHImportResults *)self endTime];
  startTime2 = [(PHImportResults *)self startTime];
  [endTime2 timeIntervalSinceDate:startTime2];
  v9 = v8;

  return v9;
}

- (NSError)error
{
  exceptions = [(PHImportResults *)self exceptions];
  firstObject = [exceptions firstObject];
  underlyingError = [firstObject underlyingError];

  return underlyingError;
}

- (id)exceptions
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10.receiver = self;
  v10.super_class = PHImportResults;
  exceptions = [(PHImportExceptionRecorder *)&v10 exceptions];
  v5 = [exceptions count];

  if (v5)
  {
    v9.receiver = self;
    v9.super_class = PHImportResults;
    exceptions2 = [(PHImportExceptionRecorder *)&v9 exceptions];
    [v3 addObjectsFromArray:exceptions2];
  }

  importRecordExceptions = [(PHImportResults *)self importRecordExceptions];
  if ([importRecordExceptions count])
  {
    [v3 addObjectsFromArray:importRecordExceptions];
  }

  return v3;
}

- (id)importRecordExceptions
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_importRecords;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        exceptions = [*(*(&v11 + 1) + 8 * i) exceptions];
        if ([exceptions count])
        {
          [v3 addObjectsFromArray:exceptions];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (unint64_t)failedToImportCount
{
  importRecordExceptions = [(PHImportResults *)self importRecordExceptions];
  v3 = [importRecordExceptions count];

  return v3;
}

- (unsigned)result
{
  v2 = self->_result;
  if (v2 != 3)
  {
    if ([(PHImportResults *)self importedCount])
    {
      exceptions = [(PHImportResults *)self exceptions];
      v5 = [exceptions count];

      if (v5)
      {
        LOBYTE(v2) = 2;
      }

      else
      {
        LOBYTE(v2) = 1;
      }
    }

    else
    {
      LOBYTE(v2) = 4;
    }

    self->_result = v2;
  }

  return v2;
}

- (PHImportResults)init
{
  v6.receiver = self;
  v6.super_class = PHImportResults;
  v2 = [(PHImportExceptionRecorder *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    importRecords = v2->_importRecords;
    v2->_importRecords = v3;
  }

  return v2;
}

+ (PHImportResults)resultsWithExceptions:(id)exceptions
{
  exceptionsCopy = exceptions;
  v4 = objc_opt_new();
  [v4 addExceptions:exceptionsCopy];

  return v4;
}

+ (PHImportResults)resultsWithException:(id)exception
{
  exceptionCopy = exception;
  v4 = objc_opt_new();
  [v4 addException:exceptionCopy];

  return v4;
}

@end