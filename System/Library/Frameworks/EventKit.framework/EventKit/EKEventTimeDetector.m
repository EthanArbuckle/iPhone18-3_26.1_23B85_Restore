@interface EKEventTimeDetector
+ (id)dateResultsFromString:(id)a3 referenceDate:(id)a4;
+ (id)resultDictionaryForString:(id)a3 referenceDate:(id)a4;
+ (id)resultDictionaryForString:(id)a3 referenceDate:(id)a4 ignoreDurationForApproximateTime:(BOOL)a5;
+ (id)stripRanges:(id)a3 fromString:(id)a4;
@end

@implementation EKEventTimeDetector

+ (id)resultDictionaryForString:(id)a3 referenceDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() resultDictionaryForString:v6 referenceDate:v5 ignoreDurationForApproximateTime:0];

  return v7;
}

+ (id)resultDictionaryForString:(id)a3 referenceDate:(id)a4 ignoreDurationForApproximateTime:(BOOL)a5
{
  v81 = a5;
  v121 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  [MEMORY[0x1E695DF70] array];
  v85 = v84 = a1;
  v86 = v7;
  v9 = [objc_opt_class() dateResultsFromString:v7 referenceDate:v8];
  v87 = [MEMORY[0x1E695DEE8] currentCalendar];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v112 objects:v120 count:16];
  v12 = v10;
  if (v11)
  {
    v13 = v11;
    v14 = *v113;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v113 != v14)
        {
          objc_enumerationMutation(v10);
        }

        if (v8)
        {
          v16 = [*(*(&v112 + 1) + 8 * i) date];
          v17 = [v16 isSameDayAsDate:v8 inCalendar:v87];

          if (!v17)
          {

            v12 = [objc_opt_class() dateResultsFromString:v86 referenceDate:0];
            goto LABEL_12;
          }
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v112 objects:v120 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v12 = v10;
  }

LABEL_12:

  v82 = v12;
  v83 = v8;
  if (![v12 count])
  {
    v21 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = MEMORY[0x1E695E0F0];
    v91 = MEMORY[0x1E695E0F0];
    goto LABEL_88;
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v18 = v12;
  v19 = [v18 countByEnumeratingWithState:&v108 objects:v119 count:16];
  if (!v19)
  {

    v21 = 0;
LABEL_38:
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v45 = v18;
    v46 = v18;
    v47 = [v46 countByEnumeratingWithState:&v100 objects:v117 count:16];
    if (v47)
    {
      v48 = v47;
      v38 = 0;
      v49 = *v101;
      do
      {
        for (j = 0; j != v48; ++j)
        {
          if (*v101 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = *(*(&v100 + 1) + 8 * j);
          if (!v38 || ([*(*(&v100 + 1) + 8 * j) timeIsApproximate] & 1) == 0)
          {
            v52 = v51;

            v38 = v52;
          }
        }

        v48 = [v46 countByEnumeratingWithState:&v100 objects:v117 count:16];
      }

      while (v48);
    }

    else
    {
      v38 = 0;
    }

    v18 = v45;
    goto LABEL_51;
  }

  v20 = v19;
  v21 = 0;
  v22 = *v109;
  v88 = 0;
  v90 = *v109;
  do
  {
    v23 = 0;
    v92 = v20;
    do
    {
      if (*v109 != v22)
      {
        objc_enumerationMutation(v18);
      }

      v24 = *(*(&v108 + 1) + 8 * v23);
      if (([v24 timeIsSignificant] & 1) == 0)
      {
        v94 = v21;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v25 = v18;
        v26 = v18;
        v27 = [v26 countByEnumeratingWithState:&v104 objects:v118 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v105;
LABEL_21:
          v30 = 0;
          while (1)
          {
            if (*v105 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v104 + 1) + 8 * v30);
            if (v24 != v31)
            {
              v32 = [v24 range];
              v34 = v33;
              v124.location = [v31 range];
              v124.length = v35;
              v123.location = v32;
              v123.length = v34;
              if (NSIntersectionRange(v123, v124).length)
              {
                break;
              }
            }

            if (v28 == ++v30)
            {
              v28 = [v26 countByEnumeratingWithState:&v104 objects:v118 count:16];
              if (v28)
              {
                goto LABEL_21;
              }

              goto LABEL_28;
            }
          }
        }

        else
        {
LABEL_28:

          v26 = v88;
          v88 = v24;
        }

        v20 = v92;
        v21 = v94;
        v18 = v25;
        v22 = v90;
      }

      v36 = [v24 timeZone];

      if (v36)
      {
        v37 = [v24 timeZone];

        v21 = v37;
      }

      ++v23;
    }

    while (v23 != v20);
    v20 = [v18 countByEnumeratingWithState:&v108 objects:v119 count:16];
  }

  while (v20);

  v38 = v88;
  if (!v88)
  {
    goto LABEL_38;
  }

LABEL_51:
  v39 = [v38 date];
  [v38 duration];
  v54 = v53;
  v91 = rangesSafeToRemove(v38);
  v55 = [v38 timeIsApproximate];
  v89 = v38;
  if ([v38 timeIsSignificant])
  {
    v56 = 1;
LABEL_70:
    v44 = MEMORY[0x1E695E0F0];
    goto LABEL_73;
  }

  if ([v18 count] < 2)
  {
    v56 = 0;
    goto LABEL_70;
  }

  v93 = v55;
  v95 = v21;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v57 = v18;
  v58 = [v57 countByEnumeratingWithState:&v96 objects:v116 count:16];
  if (v58)
  {
    v59 = v58;
    v56 = 0;
    v60 = 0;
    v61 = *v97;
    v44 = MEMORY[0x1E695E0F0];
    do
    {
      for (k = 0; k != v59; ++k)
      {
        if (*v97 != v61)
        {
          objc_enumerationMutation(v57);
        }

        v63 = *(*(&v96 + 1) + 8 * k);
        if ([v63 timeIsSignificant])
        {
          if (![v63 timeIsApproximate] || v60 == 0)
          {
            v65 = v63;

            [v65 duration];
            v54 = v66;
            v67 = MEMORY[0x1E695DF00];
            v68 = [v65 date];
            v69 = [v67 dateWithDatePartFromDate:v39 timePartFromDate:v68 inCalendar:v87];

            v70 = rangesSafeToRemove(v65);

            v93 = [v65 timeIsApproximate];
            v56 = 1;
            v44 = v70;
            v39 = v69;
            v60 = v65;
          }
        }
      }

      v59 = [v57 countByEnumeratingWithState:&v96 objects:v116 count:16];
    }

    while (v59);
  }

  else
  {
    v56 = 0;
    v60 = 0;
    v44 = MEMORY[0x1E695E0F0];
  }

  v21 = v95;
  v55 = v93;
LABEL_73:

  if (v39)
  {
    if (v81)
    {
      v71 = v55;
      if (![v83 isSameDayAsDate:v39 inCalendar:0])
      {
        v71 = 0;
        v43 = 0;
        if (v56)
        {
LABEL_82:
          if ((v54 <= 0.0) | v71 & 1)
          {
            v42 = 0;
            v41 = v56 ^ 1;
          }

          else
          {
            v73 = [v43 dateByAddingTimeInterval:v54];
            v42 = v73;
            if (v56)
            {
              v41 = 0;
            }

            else
            {
              v41 = 1;
              v74 = [v73 dateByAddingDays:1 inCalendar:v87];

              v42 = [v74 dateByAddingTimeInterval:-1.0];
            }
          }

          goto LABEL_87;
        }

LABEL_81:
        v72 = [v43 dateRemovingTimeComponentsInCalendar:v87];

        v43 = v72;
        goto LABEL_82;
      }
    }

    else
    {
      v71 = 0;
    }

    v43 = v39;
    [v85 addObjectsFromArray:v91];
    [v85 addObjectsFromArray:v44];
    if (v56)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  v41 = 0;
  v42 = 0;
  v43 = 0;
LABEL_87:
  v40 = v55;
LABEL_88:
  v75 = objc_opt_new();
  v76 = [v84 stripRanges:v85 fromString:v86];
  [v75 setValue:v76 forKey:@"EKEventTimeDetectorResultTitleKey"];
  [v75 setValue:v43 forKey:@"EKEventTimeDetectorResultStartDateKey"];
  [v75 setValue:v42 forKey:@"EKEventTimeDetectorResultEndDateKey"];
  v77 = [MEMORY[0x1E696AD98] numberWithBool:v40 & 1];
  [v75 setValue:v77 forKey:@"EKEventTimeDetectorResultTimeIsApproximateKey"];

  if (v43 | v42)
  {
    v78 = [MEMORY[0x1E696AD98] numberWithBool:v41 & 1];
    [v75 setValue:v78 forKey:@"EKEventTimeDetectorResultAllDayKey"];
  }

  if (v21)
  {
    [v75 setValue:v21 forKey:@"EKEventTimeDetectorResultTimeZoneKey"];
  }

  v79 = *MEMORY[0x1E69E9840];

  return v75;
}

+ (id)dateResultsFromString:(id)a3 referenceDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  if ([v5 length])
  {
    if (dateResultsFromString_referenceDate__onceToken != -1)
    {
      +[EKEventTimeDetector dateResultsFromString:referenceDate:];
    }

    v8 = dateResultsFromString_referenceDate__dateScannerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__EKEventTimeDetector_dateResultsFromString_referenceDate___block_invoke_2;
    block[3] = &unk_1E77FD7C8;
    v14 = v5;
    v15 = v6;
    v9 = v7;
    v16 = v9;
    dispatch_sync(v8, block);
    v10 = v16;
    v11 = v9;
  }

  return v7;
}

uint64_t __59__EKEventTimeDetector_dateResultsFromString_referenceDate___block_invoke()
{
  dateResultsFromString_referenceDate__s_dateScanner = DDScannerCreate();
  dateResultsFromString_referenceDate__dateScannerQueue = dispatch_queue_create("EKEventTimeDetectorDateScannerQueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

void __59__EKEventTimeDetector_dateResultsFromString_referenceDate___block_invoke_2(uint64_t a1)
{
  if (dateResultsFromString_referenceDate__s_dateScanner)
  {
    v2 = *(a1 + 32);
    if (DDScannerScanString())
    {
      v3 = DDScannerCopyResultsWithOptions();
      if (v3)
      {
        v4 = v3;
        v5 = *(a1 + 48);
        v6 = *(a1 + 40);
        v13 = v5;
        Count = CFArrayGetCount(v4);
        if (Count >= 1)
        {
          v7 = 0;
          v14 = v4;
          do
          {
            CFArrayGetValueAtIndex(v4, v7);
            DDResultGetRange();
            v8 = DDResultGetType();
            if (([@"Date" isEqualToString:v8] & 1) != 0 || (objc_msgSend(@"Time", "isEqualToString:", v8) & 1) != 0 || (objc_msgSend(@"DateTime", "isEqualToString:", v8) & 1) != 0 || (objc_msgSend(@"DateDuration", "isEqualToString:", v8) & 1) != 0 || (objc_msgSend(@"TimeDuration", "isEqualToString:", v8) & 1) != 0 || objc_msgSend(@"Timestamp", "isEqualToString:", v8))
            {
              v9 = v6;
              if (!v6)
              {
                v9 = [MEMORY[0x1E695DF00] date];
              }

              v10 = v9;
              v11 = [MEMORY[0x1E695DFE8] defaultTimeZone];
              [v8 rangeOfString:@"Duration"];
              if (!v12 || !DDResultCopyExtractedStartDateEndDate())
              {
                DDResultCopyExtractedDateFromReferenceDate();
              }

              if (resultHasApproxTime())
              {
                resultHasExactTime();
              }

              DDResultIsPastDate();
              v4 = v14;
            }

            ++v7;
          }

          while (Count != v7);
        }

        CFRelease(v4);
      }
    }
  }
}

+ (id)stripRanges:(id)a3 fromString:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MEMORY[0x1E695DF70];
  v7 = [a3 sortedArrayUsingComparator:&__block_literal_global_24];
  v8 = [v6 arrayWithArray:v7];

  if ([v8 count] && objc_msgSend(v8, "count") != 1)
  {
    v9 = 0;
    do
    {
      v10 = [v8 objectAtIndexedSubscript:v9];
      v11 = [v10 rangeValue];
      v13 = v12;

      v14 = [v8 objectAtIndexedSubscript:v9 + 1];
      v15 = [v14 rangeValue];
      v17 = v16;

      v45.location = v11;
      v45.length = v13;
      v47.location = v15;
      v47.length = v17;
      if (NSIntersectionRange(v45, v47).length)
      {
        v18 = MEMORY[0x1E696B098];
        v46.location = v11;
        v46.length = v13;
        v48.location = v15;
        v48.length = v17;
        v19 = NSUnionRange(v46, v48);
        v20 = [v18 valueWithRange:{v19.location, v19.length}];
        [v8 setObject:v20 atIndexedSubscript:v9];

        [v8 removeObjectAtIndex:v9 + 1];
      }

      else
      {
        ++v9;
      }
    }

    while (v9 < [v8 count] - 1);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v21 = v8;
  v22 = [v21 countByEnumeratingWithState:&v38 objects:v42 count:16];
  v23 = v5;
  if (v22)
  {
    v24 = v22;
    v25 = *v39;
    v23 = v5;
    do
    {
      v26 = 0;
      v27 = v23;
      do
      {
        if (*v39 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v28 = [*(*(&v38 + 1) + 8 * v26) rangeValue];
        v23 = [v27 stringByReplacingCharactersInRange:v28 withString:{v29, &stru_1F1B49D68}];

        ++v26;
        v27 = v23;
      }

      while (v24 != v26);
      v24 = [v21 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v24);
  }

  if ([v21 count])
  {
    v30 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v31 = [v23 componentsSeparatedByCharactersInSet:v30];

    v32 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF != ''"];
    v33 = [v31 filteredArrayUsingPredicate:v32];

    v34 = [v33 componentsJoinedByString:@" "];

    if ([v34 length])
    {
      v35 = v34;
    }

    else
    {
      v35 = v5;
    }

    v23 = v35;
  }

  v36 = *MEMORY[0x1E69E9840];

  return v23;
}

uint64_t __46__EKEventTimeDetector_stripRanges_fromString___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 rangeValue];
  v6 = [v4 rangeValue];

  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return v5 != v6;
  }
}

@end