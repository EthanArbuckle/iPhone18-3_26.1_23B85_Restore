@interface PHImportResults
+ (PHImportResults)resultsWithException:(id)a3;
+ (PHImportResults)resultsWithExceptions:(id)a3;
- (NSError)error;
- (PHImportResults)init;
- (double)runTime;
- (id)exceptions;
- (id)generatePMRInfo;
- (id)importRecordExceptions;
- (unint64_t)failedToImportCount;
- (unsigned)result;
- (void)insertStart:(id)a3 end:(id)a4 intoGroups:(id)a5 ofType:(unint64_t)a6;
- (void)log:(id)a3 activity:(id)a4 description:(id)a5 digits:(unint64_t)a6;
- (void)logPMR;
- (void)verifyGroups:(id)a3;
@end

@implementation PHImportResults

- (void)logPMR
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = PLImportGetLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  if (v4)
  {
    v5 = [(PHImportResults *)self generatePMRInfo];
    v6 = [v5 objectForKeyedSubscript:@"ImportTotalTime"];
    v7 = [v6 objectForKeyedSubscript:@"Count"];
    v8 = [v7 unsignedIntegerValue];

    if (v8)
    {
      LODWORD(v9) = 0;
      v10 = v8;
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
    v13 = [v5 objectForKeyedSubscript:@"ImportTotalTime"];
    v14 = [v13 objectForKeyedSubscript:@"Duration"];
    [v14 doubleValue];
    [v12 appendFormat:@"\tTotal time to import %lu items: %8.4f\n", v8, v15];

    [v12 appendString:@"\t------------------------------------------------------------\n"];
    v16 = [v5 objectForKeyedSubscript:@"ImportDownload"];
    [(PHImportResults *)self log:v12 activity:v16 description:@"\tDownload files:           " digits:v9];

    v17 = [v5 objectForKeyedSubscript:@"ImportReadMetadata"];
    [(PHImportResults *)self log:v12 activity:v17 description:@"\tRead metadata:            " digits:v9];

    v18 = [v5 objectForKeyedSubscript:@"ImportAdjustments"];
    [(PHImportResults *)self log:v12 activity:v18 description:@"\tApply adjustments:        " digits:v9];

    v19 = [v5 objectForKeyedSubscript:@"ImportLivePhotoPairing"];
    [(PHImportResults *)self log:v12 activity:v19 description:@"\tPair LivePhotos:          " digits:v9];

    v20 = [v5 objectForKeyedSubscript:@"ImportMisc"];
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

- (void)log:(id)a3 activity:(id)a4 description:(id)a5 digits:(unint64_t)a6
{
  v18 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 objectForKeyedSubscript:@"Count"];
  v11 = [v10 unsignedIntegerValue];

  if (v11)
  {
    v12 = [v8 objectForKeyedSubscript:@"Duration"];
    [v12 doubleValue];
    v14 = v13;

    [v18 appendFormat:@"%@%8.4f", v9, *&v14];
    v15 = [v8 objectForKeyedSubscript:@"Absolute Duration"];
    [v15 doubleValue];
    v17 = v16;

    if (v14 != v17)
    {
      [v18 appendFormat:@" (ab: %.3f, av: %.3f)", *&v17, v17 / v11];
    }

    [v18 appendString:@"\n"];
  }
}

- (void)verifyGroups:(id)a3
{
  v3 = 0;
  v30 = *MEMORY[0x1E69E9840];
  do
  {
    v4 = [a3 objectAtIndexedSubscript:v3];
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
            v15 = [v12 start];
            v16 = [v11 end];
            [v15 timeIntervalSinceDate:v16];
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

- (void)insertStart:(id)a3 end:(id)a4 intoGroups:(id)a5 ofType:(unint64_t)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = a5;
  v13 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v13)
  {
LABEL_13:

LABEL_22:
    v15 = [[DurationGroup alloc] initWithStart:v10 end:v11];
    [v12 addObject:v15];
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
      objc_enumerationMutation(v12);
    }

    v15 = *(*(&v36 + 1) + 8 * v17);

    v19 = [(DurationGroup *)v15 start];
    [v10 timeIntervalSinceDate:v19];
    v21 = v20;

    if (v21 < 0.0)
    {
      break;
    }

    v25 = [(DurationGroup *)v15 end];
    [v10 timeIntervalSinceDate:v25];
    v27 = v26;

    if (v27 < 0.0)
    {
      v28 = [(DurationGroup *)v15 end];
      [v11 timeIntervalSinceDate:v28];
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
      v14 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v14)
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }
  }

  v22 = [(DurationGroup *)v15 start];
  [v11 timeIntervalSinceDate:v22];
  v24 = v23;

  if (v24 < 0.0)
  {
    goto LABEL_10;
  }

  [(DurationGroup *)v15 setStart:v10];
  v31 = [(DurationGroup *)v15 end];
  [v11 timeIntervalSinceDate:v31];
  v33 = v32;

  if (v33 >= 0.0)
  {
LABEL_17:
    [(DurationGroup *)v15 setEnd:v11];
  }

  [(DurationGroup *)v15 setWasChanged:1];
LABEL_19:

  if (!v15)
  {
    goto LABEL_22;
  }

  if ([(DurationGroup *)v15 wasChanged])
  {
    [v12 removeObject:v15];
    v34 = [(DurationGroup *)v15 start];
    v35 = [(DurationGroup *)v15 end];
    [(PHImportResults *)self insertStart:v34 end:v35 intoGroups:v12 ofType:a6];
  }

LABEL_23:
}

- (id)generatePMRInfo
{
  v2 = self;
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
    v46 = v2;
    obj = [(PHImportResults *)v2 importRecords];
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

            v9 = [v7 timers];
            [v9 duration:v6];
            v11 = v10;

            if (v11 > 0.0)
            {
              ++*(v70 + v6);
              *(v68 + v6) = v11 + *(v68 + v6);
              v12 = [v7 timers];
              v51[0] = MEMORY[0x1E69E9820];
              v51[1] = 3221225472;
              v51[2] = __34__PHImportResults_generatePMRInfo__block_invoke_2;
              v51[3] = &unk_1E75A9648;
              v51[4] = v2;
              v52 = v8;
              v53 = v6;
              [v12 processTimesOfType:v6 withBlock:v51];
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
    v14 = v2->_pmrInfo;
    v2->_pmrInfo = v13;

    v65[0] = @"Count";
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHImportResults importedCount](v2, "importedCount")}];
    v65[1] = @"Duration";
    v66[0] = v15;
    v16 = MEMORY[0x1E696AD98];
    [(PHImportResults *)v2 runTime];
    v17 = [v16 numberWithDouble:?];
    v66[1] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
    v19 = v2->_pmrInfo;
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
            v32 = [v30 start];
            [v31 timeIntervalSinceDate:v32];
            v28 = v28 + v33;
          }

          v26 = [v24 countByEnumeratingWithState:&v47 objects:v64 count:16];
        }

        while (v26);

        v2 = v46;
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

    pmrInfo = v2->_pmrInfo;
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
  v3 = [(PHImportResults *)self startTime];
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  v5 = [(PHImportResults *)self endTime];

  if (!v5)
  {
    return 0.0;
  }

  v6 = [(PHImportResults *)self endTime];
  v7 = [(PHImportResults *)self startTime];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  return v9;
}

- (NSError)error
{
  v2 = [(PHImportResults *)self exceptions];
  v3 = [v2 firstObject];
  v4 = [v3 underlyingError];

  return v4;
}

- (id)exceptions
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10.receiver = self;
  v10.super_class = PHImportResults;
  v4 = [(PHImportExceptionRecorder *)&v10 exceptions];
  v5 = [v4 count];

  if (v5)
  {
    v9.receiver = self;
    v9.super_class = PHImportResults;
    v6 = [(PHImportExceptionRecorder *)&v9 exceptions];
    [v3 addObjectsFromArray:v6];
  }

  v7 = [(PHImportResults *)self importRecordExceptions];
  if ([v7 count])
  {
    [v3 addObjectsFromArray:v7];
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

        v9 = [*(*(&v11 + 1) + 8 * i) exceptions];
        if ([v9 count])
        {
          [v3 addObjectsFromArray:v9];
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
  v2 = [(PHImportResults *)self importRecordExceptions];
  v3 = [v2 count];

  return v3;
}

- (unsigned)result
{
  v2 = self->_result;
  if (v2 != 3)
  {
    if ([(PHImportResults *)self importedCount])
    {
      v4 = [(PHImportResults *)self exceptions];
      v5 = [v4 count];

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

+ (PHImportResults)resultsWithExceptions:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 addExceptions:v3];

  return v4;
}

+ (PHImportResults)resultsWithException:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 addException:v3];

  return v4;
}

@end