@interface EKEventSuggestionGenerator
+ (void)adjustTimeForUIAndApplyToAutocompleteResults:(id)a3 usingCurrentStartDate:(id)a4 currentEndDate:(id)a5 timeImplicitlySet:(BOOL)a6 calendar:(id)a7;
- (EKEventSuggestionGenerator)init;
- (void)_generateEventSuggestionsAsynchronouslyFromString:(id)a3 defaultSuggestionVisibility:(unint64_t)a4 options:(unint64_t)a5 defaultCalendar:(id)a6 referenceDate:(id)a7 initialEvent:(id)a8 pasteboardItemProvider:(id)a9 handler:(id)a10;
- (void)eventSuggestionsFromString:(id)a3 initialEvent:(id)a4 defaultSuggestionVisibility:(unint64_t)a5 options:(unint64_t)a6 handler:(id)a7;
@end

@implementation EKEventSuggestionGenerator

- (EKEventSuggestionGenerator)init
{
  v7.receiver = self;
  v7.super_class = EKEventSuggestionGenerator;
  v2 = [(EKEventSuggestionGenerator *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.calendarUIKit.eventSuggestionsGeneratorQueue", v3);
    queryQueue = v2->_queryQueue;
    v2->_queryQueue = v4;
  }

  return v2;
}

- (void)eventSuggestionsFromString:(id)a3 initialEvent:(id)a4 defaultSuggestionVisibility:(unint64_t)a5 options:(unint64_t)a6 handler:(id)a7
{
  v12 = a7;
  v13 = a4;
  v14 = a3;
  v16 = [v13 calendar];
  v15 = [v13 startDate];
  [(EKEventSuggestionGenerator *)self _generateEventSuggestionsAsynchronouslyFromString:v14 defaultSuggestionVisibility:a5 options:a6 defaultCalendar:v16 referenceDate:v15 initialEvent:v13 pasteboardItemProvider:0 handler:v12];
}

- (void)_generateEventSuggestionsAsynchronouslyFromString:(id)a3 defaultSuggestionVisibility:(unint64_t)a4 options:(unint64_t)a5 defaultCalendar:(id)a6 referenceDate:(id)a7 initialEvent:(id)a8 pasteboardItemProvider:(id)a9 handler:(id)a10
{
  v143 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a6;
  v116 = a7;
  v18 = a8;
  v19 = a9;
  v115 = a10;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(EKEventSuggestionGenerator *)self setFinishedCompletionHandlerCalled:0];
  [(EKEventSuggestionGenerator *)self setLastQueryString:v16];
  [(EKEventSuggestionGenerator *)self setLastDefaultResult:0];
  [(EKEventSuggestionGenerator *)self setLastDefaultReminderResult:0];
  [(EKEventSuggestionGenerator *)self setLastResults:MEMORY[0x1E695E0F0]];
  v111 = v18;
  v20 = v18 == 0;
  if ((a5 & 0x40) != 0)
  {
    v21 = [v17 eventStore];
    v22 = [v21 reminderIntegrationCalendar];

    v110 = v22;
    v108 = v22 != 0;
  }

  else
  {
    v110 = 0;
    v108 = 0;
  }

  v23 = v16;
  v24 = v23;
  v106 = a4 == 1;
  if (a4 > 1)
  {
    v114 = 0;
    v27 = 0;
    v26 = v23;
  }

  else
  {
    v25 = [EKEventTimeDetector resultDictionaryForString:v23 referenceDate:v116 ignoreDurationForApproximateTime:(a5 >> 1) & 1];
    v26 = [v25 objectForKeyedSubscript:@"EKEventTimeDetectorResultTitleKey"];

    v114 = v25;
    v27 = [v25 objectForKeyedSubscript:@"EKEventTimeDetectorResultStartDateKey"];
  }

  v28 = [v26 length];
  v29 = v28 != 0;
  if (a4 && v28)
  {
    v29 = a4 == 1 && v27 != 0;
  }

  v113 = v26;
  if ((a5 & 0x10) != 0)
  {
    v32 = 1;
    goto LABEL_20;
  }

  v31 = [v26 length];
  v32 = v31 != 0;
  if (v29 || v31)
  {
LABEL_20:
    v104 = v27;
    v112 = v24;
    v35 = v17;
    v36 = (a5 >> 2) & 1;
    v37 = (a5 | v20) & 1;
    v109 = v19;
    v38 = (a5 >> 3) & 1;
    v39 = (a5 >> 5) & 1;
    v40 = [(EKEventSuggestionGenerator *)self queryQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __190__EKEventSuggestionGenerator__generateEventSuggestionsAsynchronouslyFromString_defaultSuggestionVisibility_options_defaultCalendar_referenceDate_initialEvent_pasteboardItemProvider_handler___block_invoke;
    block[3] = &unk_1E78004D0;
    block[4] = self;
    v41 = v114;
    v126 = v41;
    v134 = v39;
    v102 = v116;
    v127 = v102;
    v135 = v108;
    v105 = v35;
    v42 = v35;
    v24 = v112;
    v43 = v42;
    v128 = v42;
    v136 = v37;
    v129 = v113;
    v137 = v36;
    v33 = v111;
    v130 = v111;
    v138 = v106;
    v107 = v112;
    v131 = v107;
    v139 = v29;
    v103 = v115;
    v133 = v103;
    v140 = v32;
    v141 = v38;
    v19 = v109;
    v132 = v109;
    dispatch_async(v40, block);

    if (!v29)
    {
      [(EKEventSuggestionGenerator *)self setLastDefaultResult:0];
      v17 = v105;
      goto LABEL_37;
    }

    v100 = v43;
    v44 = [v41 objectForKeyedSubscript:@"EKEventTimeDetectorResultTitleKey"];
    v45 = [v41 objectForKeyedSubscript:@"EKEventTimeDetectorResultStartDateKey"];
    v46 = [v41 objectForKeyedSubscript:@"EKEventTimeDetectorResultEndDateKey"];
    v47 = [v41 objectForKeyedSubscript:@"EKEventTimeDetectorResultTimeZoneKey"];
    v48 = [v41 objectForKeyedSubscript:@"EKEventTimeDetectorResultAllDayKey"];
    v49 = [v48 BOOLValue];

    v50 = [v41 objectForKeyedSubscript:@"EKEventTimeDetectorResultTimeIsApproximateKey"];
    v51 = [v50 BOOLValue];

    v52 = [[EKAutocompleteSearchResult alloc] initWithSource:1];
    [(EKAutocompleteSearchResult *)v52 setApproximateTime:v51];
    [(EKAutocompleteSearchResult *)v52 setTitle:v44];
    v101 = v47;
    if (v47)
    {
      [(EKAutocompleteSearchResult *)v52 setTimeZone:v47];
    }

    else
    {
      v53 = [MEMORY[0x1E695DFE8] defaultTimeZone];
      [(EKAutocompleteSearchResult *)v52 setTimeZone:v53];
    }

    v17 = v105;
    [(EKAutocompleteSearchResult *)v52 setAllDay:((v45 | v46) != 0) & v49];
    v19 = v109;
    if (v45)
    {
      [(EKAutocompleteSearchResult *)v52 setStartDate:v45];
      if (v46)
      {
LABEL_27:
        [(EKAutocompleteSearchResult *)v52 setEndDate:v46];
        [(EKAutocompleteSearchResult *)v52 setCalendar:v100];
        -[EKAutocompleteSearchResult setCalendarColor:](v52, "setCalendarColor:", [v100 CGColor]);
        [(EKEventSuggestionGenerator *)self setLastDefaultResult:v52];
        goto LABEL_35;
      }
    }

    else
    {
      v54 = [MEMORY[0x1E6992FB0] shared];
      [v54 defaultEventDuration];
      v56 = v55;

      if (v102)
      {
        v57 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
        v58 = [MEMORY[0x1E695DF10] CalComponentForHours:9];
        v59 = v44;
        v60 = MEMORY[0x1E695DF00];
        v61 = [v57 dateFromComponents:v58];
        v62 = v60;
        v44 = v59;
        v63 = [v62 dateWithDatePartFromDate:v102 timePartFromDate:v61 inCalendar:v57];
        [(EKAutocompleteSearchResult *)v52 setStartDate:v63];

        v19 = v109;
      }

      else
      {
        v57 = [MEMORY[0x1E695DF00] nextRoundedChunkForDuration:v56];
        [(EKAutocompleteSearchResult *)v52 setStartDate:v57];
      }

      v45 = 0;
      if (v46)
      {
        goto LABEL_27;
      }
    }

    v64 = [MEMORY[0x1E6992FB0] shared];
    [v64 defaultEventDuration];
    v66 = v65;

    v67 = [(EKAutocompleteSearchResult *)v52 startDate];
    v68 = [v67 dateByAddingTimeInterval:v66];
    [(EKAutocompleteSearchResult *)v52 setEndDate:v68];

    [(EKAutocompleteSearchResult *)v52 setCalendar:v100];
    -[EKAutocompleteSearchResult setCalendarColor:](v52, "setCalendarColor:", [v100 CGColor]);
    [(EKEventSuggestionGenerator *)self setLastDefaultResult:v52];
    if (v108)
    {
      v69 = [[EKAutocompleteSearchResult alloc] initWithSource:1];
      v70 = [(EKAutocompleteSearchResult *)v52 title];
      [(EKAutocompleteSearchResult *)v69 setTitle:v70];

      v71 = [(EKAutocompleteSearchResult *)v52 timeZone];
      [(EKAutocompleteSearchResult *)v69 setTimeZone:v71];

      [(EKAutocompleteSearchResult *)v69 setAllDay:[(EKAutocompleteSearchResult *)v52 allDay]];
      v72 = [(EKAutocompleteSearchResult *)v52 startDate];
      [(EKAutocompleteSearchResult *)v69 setStartDate:v72];

      if ([(EKAutocompleteSearchResult *)v52 allDay])
      {
        [(EKAutocompleteSearchResult *)v52 endDate];
      }

      else
      {
        [(EKAutocompleteSearchResult *)v69 startDate];
      }
      v99 = ;
      [(EKAutocompleteSearchResult *)v69 setEndDate:v99];

      [(EKAutocompleteSearchResult *)v69 setCalendar:v110];
      goto LABEL_36;
    }

LABEL_35:
    v69 = 0;
LABEL_36:
    [(EKEventSuggestionGenerator *)self setLastDefaultReminderResult:v69];

    v24 = v112;
LABEL_37:
    v73 = [(EKEventSuggestionGenerator *)self lastDefaultResult];
    v34 = v113;
    if (v73)
    {
      v74 = 1;
    }

    else
    {
      v75 = [(EKEventSuggestionGenerator *)self lastDefaultReminderResult];
      v74 = v75 != 0;
    }

    v76 = [(EKEventSuggestionGenerator *)self lastResults];

    if (!v74 && !v76)
    {
LABEL_67:
      v96 = dispatch_time(0, 500000000);
      v117[0] = MEMORY[0x1E69E9820];
      v117[1] = 3221225472;
      v117[2] = __190__EKEventSuggestionGenerator__generateEventSuggestionsAsynchronouslyFromString_defaultSuggestionVisibility_options_defaultCalendar_referenceDate_initialEvent_pasteboardItemProvider_handler___block_invoke_2_30;
      v117[3] = &unk_1E77FD7A0;
      v118 = v107;
      v119 = self;
      v120 = v103;
      v97 = MEMORY[0x1E69E96A0];
      dispatch_after(v96, MEMORY[0x1E69E96A0], v117);

      v27 = v104;
      goto LABEL_68;
    }

    v77 = objc_alloc(MEMORY[0x1E695DF70]);
    v78 = v77;
    if (v76)
    {
      v79 = [(EKEventSuggestionGenerator *)self lastResults];
      v80 = [v78 initWithCapacity:{objc_msgSend(v79, "count") + 2}];

      if (!v74)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v80 = [v77 initWithCapacity:2];
      if (!v74)
      {
LABEL_50:
        if (v76)
        {
          v85 = [(EKEventSuggestionGenerator *)self lastResults];
          v86 = [v85 count];

          v87 = 0;
          if (v86)
          {
            while (1)
            {
              v88 = [(EKEventSuggestionGenerator *)self lastResults];
              v89 = [v88 objectAtIndexedSubscript:v87];
              v90 = [v89 source];

              if (v90 != 1)
              {
                break;
              }

              if (v86 == ++v87)
              {
                v87 = v86;
                break;
              }
            }
          }

          v123 = 0u;
          v124 = 0u;
          v121 = 0u;
          v122 = 0u;
          v91 = [(EKEventSuggestionGenerator *)self lastResults];
          v92 = [v91 countByEnumeratingWithState:&v121 objects:v142 count:16];
          if (v92)
          {
            v93 = v92;
            v94 = *v122;
            do
            {
              for (i = 0; i != v93; ++i)
              {
                if (*v122 != v94)
                {
                  objc_enumerationMutation(v91);
                }

                if (v87)
                {
                  --v87;
                }

                else
                {
                  [v80 addObject:*(*(&v121 + 1) + 8 * i)];
                }
              }

              v93 = [v91 countByEnumeratingWithState:&v121 objects:v142 count:16];
            }

            while (v93);
          }

          v33 = v111;
        }

        [(EKEventSuggestionGenerator *)self setLastResults:v80];

        v24 = v112;
        goto LABEL_67;
      }
    }

    v81 = [(EKEventSuggestionGenerator *)self lastDefaultResult];

    if (v81)
    {
      v82 = [(EKEventSuggestionGenerator *)self lastDefaultResult];
      [v80 addObject:v82];
    }

    v83 = [(EKEventSuggestionGenerator *)self lastDefaultReminderResult];

    if (v83)
    {
      v84 = [(EKEventSuggestionGenerator *)self lastDefaultReminderResult];
      [v80 addObject:v84];
    }

    goto LABEL_50;
  }

  (*(v115 + 2))(v115, MEMORY[0x1E695E0F0], 1);
  v33 = v111;
  v34 = v113;
LABEL_68:

  v98 = *MEMORY[0x1E69E9840];
}

void __190__EKEventSuggestionGenerator__generateEventSuggestionsAsynchronouslyFromString_defaultSuggestionVisibility_options_defaultCalendar_referenceDate_initialEvent_pasteboardItemProvider_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) runningTitleSearch];

  if (v2)
  {
    v3 = [*(a1 + 32) runningTitleSearch];
    [v3 cancel];

    [*(a1 + 32) setRunningTitleSearch:0];
  }

  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy__23;
  v37[4] = __Block_byref_object_dispose__23;
  v38 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __190__EKEventSuggestionGenerator__generateEventSuggestionsAsynchronouslyFromString_defaultSuggestionVisibility_options_defaultCalendar_referenceDate_initialEvent_pasteboardItemProvider_handler___block_invoke_14;
  aBlock[3] = &unk_1E7800480;
  v30 = v37;
  v4 = *(a1 + 40);
  v31 = *(a1 + 104);
  v5 = *(a1 + 48);
  v32 = *(a1 + 105);
  v6 = *(a1 + 56);
  v33 = *(a1 + 106);
  v7 = *(a1 + 64);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v24 = v9;
  v25 = v8;
  v34 = *(a1 + 107);
  v26 = *(a1 + 72);
  v35 = *(a1 + 108);
  v10 = *(a1 + 80);
  v11 = *(a1 + 32);
  v27 = v10;
  v28 = v11;
  v36 = *(a1 + 109);
  v29 = *(a1 + 96);
  v12 = _Block_copy(aBlock);
  v13 = v12;
  if (*(a1 + 110) == 1)
  {
    v14 = [*(a1 + 56) eventStore];
    v15 = *(a1 + 111);
    v16 = *(a1 + 64);
    v17 = *(a1 + 72);
    v18 = *(a1 + 88);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __190__EKEventSuggestionGenerator__generateEventSuggestionsAsynchronouslyFromString_defaultSuggestionVisibility_options_defaultCalendar_referenceDate_initialEvent_pasteboardItemProvider_handler___block_invoke_2_22;
    v20[3] = &unk_1E78004A8;
    v21 = v13;
    v22 = v37;
    v20[4] = *(a1 + 32);
    v19 = [EKAutocompleteSearch searchWithEventStore:v14 searchString:v16 maximumResultCount:0 ignoreScheduledEvents:v15 initialEvent:v17 pasteboardItemProvider:v18 completionHandler:v20];
    [*(a1 + 32) setRunningTitleSearch:v19];
  }

  else
  {
    (*(v12 + 2))(v12);
  }

  _Block_object_dispose(v37, 8);
}

void __190__EKEventSuggestionGenerator__generateEventSuggestionsAsynchronouslyFromString_defaultSuggestionVisibility_options_defaultCalendar_referenceDate_initialEvent_pasteboardItemProvider_handler___block_invoke_14(uint64_t a1)
{
  v86 = *MEMORY[0x1E69E9840];
  v64 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(*(*(a1 + 96) + 8) + 40), "count")}];
  v59 = objc_opt_new();
  *(&v58 + 1) = [*(a1 + 32) objectForKeyedSubscript:@"EKEventTimeDetectorResultStartDateKey"];
  *&v58 = [*(a1 + 32) objectForKeyedSubscript:@"EKEventTimeDetectorResultEndDateKey"];
  v57 = [*(a1 + 32) objectForKeyedSubscript:@"EKEventTimeDetectorResultTimeZoneKey"];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"EKEventTimeDetectorResultAllDayKey"];
  v56 = [v2 BOOLValue];

  v3 = [*(a1 + 32) objectForKeyedSubscript:@"EKEventTimeDetectorResultTimeIsApproximateKey"];
  v4 = [v3 BOOLValue];

  v5 = *(a1 + 104);
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = *(*(*(a1 + 96) + 8) + 40);
  v6 = [obj countByEnumeratingWithState:&v80 objects:v85 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = v5 & v4;
    v9 = *v81;
    if (v57)
    {
      v10 = v5 & v4;
    }

    else
    {
      v10 = 1;
    }

    v63 = v10;
    if (*(&v58 + 1))
    {
      v11 = v5 & v4;
    }

    else
    {
      v11 = 1;
    }

    v62 = v11;
    if (v58)
    {
      v12 = v5 & v4;
    }

    else
    {
      v12 = 1;
    }

    if (v58 == 0)
    {
      v8 = 1;
    }

    v60 = v8;
    v61 = v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v81 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v80 + 1) + 8 * i);
        v15 = v14;
        if ([v14 source] == 4)
        {
          v16 = [v14 pasteboardResults];
          v15 = [v16 firstObject];
        }

        v17 = [v15 source];
        if (v17 != 2)
        {
          if ((v63 & 1) == 0)
          {
            [v15 setTimeZone:v57];
          }

          if ((v60 & 1) == 0)
          {
            [v15 setAllDay:v56];
          }

          v18 = [v15 endDate];
          v19 = [v15 startDate];
          [v18 timeIntervalSinceDate:v19];
          v21 = v20;

          if (v62)
          {
            v22 = *(a1 + 40);
            if (v22)
            {
              v23 = MEMORY[0x1E695DF00];
              v24 = [v15 startDate];
              v25 = [v23 dateWithDatePartFromDate:v22 timePartFromDate:v24 inCalendar:0];
              [v15 setStartDate:v25];
            }

            else
            {
              v26 = [v15 startDate];
              v27 = [v26 nextDateMatchingTimeComponents];
              [v15 setStartDate:v27];
            }
          }

          else
          {
            [v15 setStartDate:*(&v58 + 1)];
          }

          if (v61)
          {
            v28 = [v15 startDate];
            v29 = [v28 dateByAddingTimeInterval:v21];
            [v15 setEndDate:v29];
          }

          else
          {
            [v15 setEndDate:v58];
          }
        }

        v30 = [v14 isReminder];
        if ((*(a1 + 105) & 1) != 0 || !v30)
        {
          if (v17 == 2)
          {
            [v15 setCalendar:*(a1 + 48)];
          }

          else
          {
            if (((*(a1 + 106) | v30) & 1) == 0)
            {
              [v15 setCalendar:*(a1 + 48)];
            }

            v31 = [v15 calendar];
            [v15 setCalendarColor:{objc_msgSend(v31, "CGColor")}];
          }

          [v64 addObject:v14];
          v32 = [v15 title];
          v33 = [v32 hasPrefixCaseAndDiacriticInsensitive:*(a1 + 56)];

          if (v33)
          {
            [v59 addObject:v14];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v80 objects:v85 count:16];
    }

    while (v7);
  }

  v34 = objc_opt_new();
  if (*(a1 + 107) == 1 && [v64 count] >= 4)
  {
    v35 = MEMORY[0x1E695DF70];
    v36 = [v59 array];
    v37 = [v36 subarrayWithRange:{0, fmin(objc_msgSend(v59, "count"), 3.0)}];
    v38 = [v35 arrayWithArray:v37];

LABEL_49:
    goto LABEL_50;
  }

  v39 = MEMORY[0x1E695DF70];
  v40 = [v59 array];
  v41 = [v40 subarrayWithRange:{0, fmin(objc_msgSend(v59, "count"), 7.0)}];
  v38 = [v39 arrayWithArray:v41];

  v42 = [v64 count];
  if (v42 > [v59 count] && objc_msgSend(v38, "count") <= 6)
  {
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __190__EKEventSuggestionGenerator__generateEventSuggestionsAsynchronouslyFromString_defaultSuggestionVisibility_options_defaultCalendar_referenceDate_initialEvent_pasteboardItemProvider_handler___block_invoke_2;
    v77[3] = &unk_1E7800430;
    v38 = v38;
    v78 = v38;
    v79 = v59;
    [v64 enumerateObjectsUsingBlock:v77];

    v36 = v78;
    goto LABEL_49;
  }

LABEL_50:
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v43 = v38;
  v44 = [v43 countByEnumeratingWithState:&v73 objects:v84 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v74;
    do
    {
      for (j = 0; j != v45; ++j)
      {
        if (*v74 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v73 + 1) + 8 * j);
        v49 = *(a1 + 64);
        if (!v49 || [*(*(&v73 + 1) + 8 * j) isDifferentEnoughFromInitialEvent:v49 consideringTimeProperties:*(a1 + 108)])
        {
          [v34 addObject:v48];
        }
      }

      v45 = [v43 countByEnumeratingWithState:&v73 objects:v84 count:16];
    }

    while (v45);
  }

  v50 = +[EKLogSubsystem autocomplete];
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    __190__EKEventSuggestionGenerator__generateEventSuggestionsAsynchronouslyFromString_defaultSuggestionVisibility_options_defaultCalendar_referenceDate_initialEvent_pasteboardItemProvider_handler___block_invoke_14_cold_1(v34, a1, v50);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __190__EKEventSuggestionGenerator__generateEventSuggestionsAsynchronouslyFromString_defaultSuggestionVisibility_options_defaultCalendar_referenceDate_initialEvent_pasteboardItemProvider_handler___block_invoke_19;
  block[3] = &unk_1E7800458;
  v51 = *(a1 + 72);
  v52 = *(a1 + 80);
  v53 = *(a1 + 88);
  v67 = v51;
  v68 = v52;
  v71 = *(a1 + 109);
  v72 = *(a1 + 105);
  v69 = v34;
  v70 = v53;
  v54 = v34;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v55 = *MEMORY[0x1E69E9840];
}

void __190__EKEventSuggestionGenerator__generateEventSuggestionsAsynchronouslyFromString_defaultSuggestionVisibility_options_defaultCalendar_referenceDate_initialEvent_pasteboardItemProvider_handler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([*(a1 + 32) count] > 6)
  {
    *a4 = 1;
  }

  else if (([*(a1 + 40) containsObject:v6] & 1) == 0)
  {
    [*(a1 + 32) addObject:v6];
  }
}

void __190__EKEventSuggestionGenerator__generateEventSuggestionsAsynchronouslyFromString_defaultSuggestionVisibility_options_defaultCalendar_referenceDate_initialEvent_pasteboardItemProvider_handler___block_invoke_19(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) lastQueryString];
  LODWORD(v2) = [v2 isEqualToString:v3];

  if (v2)
  {
    v12 = [MEMORY[0x1E695DF70] array];
    v4 = [*(a1 + 40) lastDefaultResult];
    if (v4)
    {
      v5 = *(a1 + 64);

      if (v5 == 1)
      {
        v6 = [*(a1 + 40) lastDefaultResult];
        [v12 addObject:v6];
      }
    }

    v7 = [*(a1 + 40) lastDefaultReminderResult];
    if (v7)
    {
      v8 = *(a1 + 65);

      if (v8 == 1)
      {
        v9 = [*(a1 + 40) lastDefaultReminderResult];
        [v12 addObject:v9];
      }
    }

    [v12 addObjectsFromArray:*(a1 + 48)];
    [*(a1 + 40) setLastResults:v12];
    [*(a1 + 40) setFinishedCompletionHandlerCalled:1];
    v10 = *(a1 + 56);
    v11 = [*(a1 + 40) lastResults];
    (*(v10 + 16))(v10, v11, 1);
  }
}

void __190__EKEventSuggestionGenerator__generateEventSuggestionsAsynchronouslyFromString_defaultSuggestionVisibility_options_defaultCalendar_referenceDate_initialEvent_pasteboardItemProvider_handler___block_invoke_2_22(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    v8 = [*(a1 + 32) queryQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __190__EKEventSuggestionGenerator__generateEventSuggestionsAsynchronouslyFromString_defaultSuggestionVisibility_options_defaultCalendar_referenceDate_initialEvent_pasteboardItemProvider_handler___block_invoke_23;
    v11[3] = &unk_1E77FD108;
    v9 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v9;
    dispatch_async(v8, v11);
  }

  else
  {
    v10 = +[EKLogSubsystem autocomplete];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __190__EKEventSuggestionGenerator__generateEventSuggestionsAsynchronouslyFromString_defaultSuggestionVisibility_options_defaultCalendar_referenceDate_initialEvent_pasteboardItemProvider_handler___block_invoke_2_22_cold_1(v7, v10);
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __190__EKEventSuggestionGenerator__generateEventSuggestionsAsynchronouslyFromString_defaultSuggestionVisibility_options_defaultCalendar_referenceDate_initialEvent_pasteboardItemProvider_handler___block_invoke_23(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 setRunningTitleSearch:0];
}

void __190__EKEventSuggestionGenerator__generateEventSuggestionsAsynchronouslyFromString_defaultSuggestionVisibility_options_defaultCalendar_referenceDate_initialEvent_pasteboardItemProvider_handler___block_invoke_2_30(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) lastQueryString];
  LODWORD(v2) = [v2 isEqualToString:v3];

  if (v2 && ([*(a1 + 40) finishedCompletionHandlerCalled] & 1) == 0)
  {
    v4 = *(a1 + 48);
    v5 = [*(a1 + 40) lastResults];
    (*(v4 + 16))(v4, v5, 0);
  }
}

+ (void)adjustTimeForUIAndApplyToAutocompleteResults:(id)a3 usingCurrentStartDate:(id)a4 currentEndDate:(id)a5 timeImplicitlySet:(BOOL)a6 calendar:(id)a7
{
  v8 = a6;
  v51 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [v11 firstObject];
  v16 = v15;
  if (!v8 && [v15 source] == 1 && !objc_msgSend(v16, "approximateTime"))
  {
    goto LABEL_22;
  }

  v17 = [MEMORY[0x1E695DF00] date];
  v38 = v13;
  v36 = v16;
  if (!v8)
  {
LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v18 = 1;
  v19 = [v14 dateByAddingUnit:16 value:1 toDate:v17 options:0];
  v20 = [v12 isAfterOrSameDayAsDate:v19 inCalendar:0];

  if ((v20 & 1) == 0)
  {
    v21 = [v17 laterDate:v13];

    if (v21 == v17)
    {
      v34 = [MEMORY[0x1E695DF00] dateWithDatePartFromDate:v17 timePartFromDate:v12 inCalendar:0];

      v18 = 0;
      v12 = v34;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_8:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __139__EKEventSuggestionGenerator_adjustTimeForUIAndApplyToAutocompleteResults_usingCurrentStartDate_currentEndDate_timeImplicitlySet_calendar___block_invoke;
  aBlock[3] = &unk_1E78004F8;
  v48 = v8;
  v49 = v18;
  v12 = v12;
  v45 = v12;
  v35 = v17;
  v46 = v35;
  v37 = v14;
  v47 = v14;
  v22 = _Block_copy(aBlock);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v39 = v11;
  v23 = v11;
  v24 = [v23 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v41;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v41 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v40 + 1) + 8 * i);
        if ([v28 source] != 2 && objc_msgSend(v28, "source") != 1)
        {
          if ([v28 source] == 4)
          {
            v29 = [v28 pasteboardResults];
            v30 = [v29 count];

            if (v30 == 1)
            {
              v31 = [v28 pasteboardResults];
              v32 = [v31 firstObject];
              v22[2](v22, v32);
            }
          }

          else
          {
            v22[2](v22, v28);
          }
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v25);
  }

  v13 = v38;
  v11 = v39;
  v16 = v36;
  v14 = v37;
LABEL_22:

  v33 = *MEMORY[0x1E69E9840];
}

void __139__EKEventSuggestionGenerator_adjustTimeForUIAndApplyToAutocompleteResults_usingCurrentStartDate_currentEndDate_timeImplicitlySet_calendar___block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = [v19 endDate];
  v4 = [v19 startDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  v7 = *(a1 + 57);
  if (*(a1 + 56))
  {
    if ((*(a1 + 57) & 1) == 0)
    {
      v8 = MEMORY[0x1E695DF00];
      v9 = *(a1 + 32);
      v10 = [v19 startDate];
      v11 = [v8 dateWithDatePartFromDate:v9 timePartFromDate:v10 inCalendar:0];

      if (([v19 allDay] & 1) == 0)
      {
        v12 = [*(a1 + 40) laterDate:v11];
        v13 = *(a1 + 40);

        if (v12 == v13)
        {
          v14 = [v11 dateByAddingDays:1 inCalendar:*(a1 + 48)];

          v11 = v14;
        }
      }

      v15 = [v11 dateByAddingTimeInterval:v6];
      [v19 setStartDate:v11];
      goto LABEL_10;
    }

LABEL_9:
    v16 = MEMORY[0x1E695DF00];
    v17 = *(a1 + 32);
    v18 = [v19 startDate];
    v11 = [v16 dateWithDatePartFromDate:v17 timePartFromDate:v18 inCalendar:0];

    [v19 setStartDate:v11];
    v15 = [v11 dateByAddingTimeInterval:v6];
LABEL_10:
    [v19 setEndDate:v15];

    goto LABEL_11;
  }

  if ((*(a1 + 57) & 1) != 0 || [v19 allDay])
  {
    goto LABEL_9;
  }

  [v19 setStartDate:*(a1 + 32)];
  v11 = [*(a1 + 32) dateByAddingTimeInterval:v6];
  [v19 setEndDate:v11];
LABEL_11:
}

void __190__EKEventSuggestionGenerator__generateEventSuggestionsAsynchronouslyFromString_defaultSuggestionVisibility_options_defaultCalendar_referenceDate_initialEvent_pasteboardItemProvider_handler___block_invoke_14_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 count];
  v6 = *(a2 + 72);
  v8[0] = 67109378;
  v8[1] = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_1A805E000, a3, OS_LOG_TYPE_DEBUG, "Finished with %d suggestions for query %@", v8, 0x12u);
  v7 = *MEMORY[0x1E69E9840];
}

void __190__EKEventSuggestionGenerator__generateEventSuggestionsAsynchronouslyFromString_defaultSuggestionVisibility_options_defaultCalendar_referenceDate_initialEvent_pasteboardItemProvider_handler___block_invoke_2_22_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "EventSuggestionGenerator Error when searching with EKAutocompleteSearch: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end