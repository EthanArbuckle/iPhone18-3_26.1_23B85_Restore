@interface ATXIntentStream
+ (id)generateParameterCombitionsForKeys:(id)keys;
- (id)_getIntentEventFromBMAppIntent:(id)intent source:(int64_t)source bundleIdFilter:(id)filter allowMissingTitles:(BOOL)titles intentsToKeep:(id)keep;
- (id)_getIntentEventFromLinkActionRecord:(id)record source:(int64_t)source bundleIdFilter:(id)filter allowMissingTitles:(BOOL)titles;
- (id)_unarchiveInteractionFromBMAppIntent:(id)intent;
- (id)_uuidForBMAppIntent:(id)intent interaction:(id)interaction;
- (id)getIntentEventForSourceItemID:(id)d forSource:(int64_t)source;
- (id)getIntentEventsBetweenStartDate:(id)date endDate:(id)endDate forSource:(int64_t)source bundleIdFilter:(id)filter allowMissingTitles:(BOOL)titles limit:(unint64_t)limit INIntentFilter:(id)intentFilter linkActionFilter:(id)self0;
- (unint64_t)numberOfIntentEventsBetweenStartDate:(id)date endDate:(id)endDate;
- (void)_enumerateIntentEventsBetweenStartDate:(id)date endDate:(id)endDate forSource:(int64_t)source bundleIdFilter:(id)filter allowMissingTitles:(BOOL)titles reversed:(BOOL)reversed INIntentFilter:(id)intentFilter linkActionFilter:(id)self0 block:(id)self1;
@end

@implementation ATXIntentStream

- (id)getIntentEventsBetweenStartDate:(id)date endDate:(id)endDate forSource:(int64_t)source bundleIdFilter:(id)filter allowMissingTitles:(BOOL)titles limit:(unint64_t)limit INIntentFilter:(id)intentFilter linkActionFilter:(id)self0
{
  titlesCopy = titles;
  actionFilterCopy = actionFilter;
  intentFilterCopy = intentFilter;
  filterCopy = filter;
  endDateCopy = endDate;
  dateCopy = date;
  v22 = objc_opt_new();
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __141__ATXIntentStream_getIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_limit_INIntentFilter_linkActionFilter___block_invoke;
  v27[3] = &unk_1E80C1A58;
  v28 = v22;
  limitCopy = limit;
  v23 = v22;
  [(ATXIntentStream *)self _enumerateIntentEventsBetweenStartDate:dateCopy endDate:endDateCopy forSource:source bundleIdFilter:filterCopy allowMissingTitles:titlesCopy reversed:1 INIntentFilter:intentFilterCopy linkActionFilter:actionFilterCopy block:v27];

  reverseObjectEnumerator = [v23 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  return allObjects;
}

- (unint64_t)numberOfIntentEventsBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__ATXIntentStream_numberOfIntentEventsBetweenStartDate_endDate___block_invoke;
  v10[3] = &unk_1E80C1A80;
  v10[4] = &v11;
  [(ATXIntentStream *)self _enumerateIntentEventsBetweenStartDate:dateCopy endDate:endDateCopy forSource:4 bundleIdFilter:0 allowMissingTitles:0 reversed:0 INIntentFilter:0 linkActionFilter:0 block:v10];
  v8 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)_enumerateIntentEventsBetweenStartDate:(id)date endDate:(id)endDate forSource:(int64_t)source bundleIdFilter:(id)filter allowMissingTitles:(BOOL)titles reversed:(BOOL)reversed INIntentFilter:(id)intentFilter linkActionFilter:(id)self0 block:(id)self1
{
  reversedCopy = reversed;
  dateCopy = date;
  endDateCopy = endDate;
  filterCopy = filter;
  intentFilterCopy = intentFilter;
  actionFilterCopy = actionFilter;
  blockCopy = block;
  context = objc_autoreleasePoolPush();
  v17 = objc_alloc_init(MEMORY[0x1E69AD068]);
  if (reversedCopy)
  {
    v18 = endDateCopy;
  }

  else
  {
    v18 = dateCopy;
  }

  v49 = endDateCopy;
  v50 = dateCopy;
  if (reversedCopy)
  {
    v19 = dateCopy;
  }

  else
  {
    v19 = endDateCopy;
  }

  v60[0] = 0;
  v47 = v17;
  v20 = [v17 transcriptPublisherWithStreamName:0 fromDate:v18 toDate:v19 maxEvents:0 reversed:reversedCopy error:{v60, intentFilterCopy}];
  v21 = v60[0];
  v22 = BiomeLibrary();
  v23 = [v22 App];
  intent = [v23 Intent];
  v25 = [intent atx_publisherWithStartDate:v18 endDate:v19 maxEvents:0 lastN:0 reversed:reversedCopy];

  if (v21 || !v20)
  {
    v27 = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [ATXIntentStream _enumerateIntentEventsBetweenStartDate:endDate:forSource:bundleIdFilter:allowMissingTitles:reversed:INIntentFilter:linkActionFilter:block:];
    }

    v26 = v25;
  }

  else
  {
    v26 = [v25 orderedMergeWithOther:v20 comparator:&__block_literal_global_48];
  }

  v28 = v26;
  v29 = MEMORY[0x1E695DFD8];
  v30 = +[ATXIntentGlobals sharedInstance];
  approvedSiriKitIntents = [v30 approvedSiriKitIntents];
  v32 = [v29 setWithArray:approvedSiriKitIntents];

  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __157__ATXIntentStream__enumerateIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_reversed_INIntentFilter_linkActionFilter_block___block_invoke_2;
  v57[3] = &unk_1E80C3318;
  v33 = v41;
  v58 = v33;
  v34 = actionFilterCopy;
  v59 = v34;
  v35 = [v28 filterWithIsIncluded:v57];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __157__ATXIntentStream__enumerateIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_reversed_INIntentFilter_linkActionFilter_block___block_invoke_25;
  v51[3] = &unk_1E80C3340;
  v51[4] = self;
  sourceCopy = source;
  v36 = filterCopy;
  titlesCopy = titles;
  v52 = v36;
  v53 = v32;
  v37 = blockCopy;
  v54 = v37;
  v38 = v32;
  v39 = [v35 sinkWithCompletion:&__block_literal_global_24_0 shouldContinue:v51];

  objc_autoreleasePoolPop(context);
}

uint64_t __157__ATXIntentStream__enumerateIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_reversed_INIntentFilter_linkActionFilter_block___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 timestamp];
  v7 = v6;
  [v5 timestamp];
  if (v7 >= v8)
  {
    [v4 timestamp];
    v11 = v10;
    [v5 timestamp];
    if (v11 <= v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t __157__ATXIntentStream__enumerateIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_reversed_INIntentFilter_linkActionFilter_block___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  if (!v3)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = *(a1 + 40);
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_7:
      v5 = 1;
      goto LABEL_12;
    }

    v6 = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __157__ATXIntentStream__enumerateIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_reversed_INIntentFilter_linkActionFilter_block___block_invoke_2_cold_1();
    }

LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = (*(v4 + 16))(v4, v3);
LABEL_12:

  return v5;
}

void __157__ATXIntentStream__enumerateIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_reversed_INIntentFilter_linkActionFilter_block___block_invoke_21(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __157__ATXIntentStream__enumerateIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_reversed_INIntentFilter_linkActionFilter_block___block_invoke_21_cold_1(v2);
    }
  }
}

uint64_t __157__ATXIntentStream__enumerateIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_reversed_INIntentFilter_linkActionFilter_block___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 eventBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 32) _getIntentEventFromBMAppIntent:v5 source:*(a1 + 64) bundleIdFilter:*(a1 + 40) allowMissingTitles:*(a1 + 72) intentsToKeep:*(a1 + 48)];
LABEL_5:
    v7 = v6;
    if (v6)
    {
      v8 = (*(*(a1 + 56) + 16))();
    }

    else
    {
      v8 = 1;
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 32) _getIntentEventFromLinkActionRecord:v5 source:*(a1 + 64) bundleIdFilter:*(a1 + 40) allowMissingTitles:*(a1 + 72)];
    goto LABEL_5;
  }

  v9 = __atxlog_handle_action_prediction();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    __157__ATXIntentStream__enumerateIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_reversed_INIntentFilter_linkActionFilter_block___block_invoke_2_cold_1();
  }

  v8 = 1;
LABEL_12:

  objc_autoreleasePoolPop(v4);
  return v8;
}

- (id)getIntentEventForSourceItemID:(id)d forSource:(int64_t)source
{
  dCopy = d;
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v8 = objc_opt_new();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__ATXIntentStream_getIntentEventForSourceItemID_forSource___block_invoke;
  v16[3] = &unk_1E80C3368;
  v17 = dCopy;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__ATXIntentStream_getIntentEventForSourceItemID_forSource___block_invoke_2;
  v14[3] = &unk_1E80C3390;
  v9 = v17;
  v15 = v9;
  v10 = [(ATXIntentStream *)self getIntentEventsBetweenStartDate:distantPast endDate:v8 forSource:source bundleIdFilter:0 allowMissingTitles:0 limit:2 INIntentFilter:v16 linkActionFilter:v14];

  if ([v10 count] >= 2)
  {
    v11 = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXIntentStream getIntentEventForSourceItemID:forSource:];
    }
  }

  firstObject = [v10 firstObject];

  return firstObject;
}

uint64_t __59__ATXIntentStream_getIntentEventForSourceItemID_forSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 itemID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __59__ATXIntentStream_getIntentEventForSourceItemID_forSource___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 executionUUID];
  v4 = [v3 UUIDString];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

+ (id)generateParameterCombitionsForKeys:(id)keys
{
  keysCopy = keys;
  if ([keysCopy count])
  {
    v4 = objc_opt_new();
    v5 = [keysCopy count];
    if (v5)
    {
      v6 = 1;
      v7 = 1 << v5;
      if ((1 << v5) <= 2)
      {
        v7 = 2;
      }

      v8 = v7;
      do
      {
        v9 = objc_opt_new();
        v10 = 0;
        v11 = v6;
        do
        {
          if (v11)
          {
            v12 = [keysCopy objectAtIndexedSubscript:v10];
            [v9 addObject:v12];
          }

          ++v10;
          v13 = v11 > 1;
          v11 >>= 1;
        }

        while (v13);
        v14 = [v9 copy];
        [v4 addObject:v14];

        ++v6;
      }

      while (v6 != v8);
    }

    v15 = [MEMORY[0x1E695DFD8] set];
    [v4 addObject:v15];

    v16 = [v4 copy];
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  return v16;
}

- (id)_getIntentEventFromLinkActionRecord:(id)record source:(int64_t)source bundleIdFilter:(id)filter allowMissingTitles:(BOOL)titles
{
  v72 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  filterCopy = filter;
  executionUUID = [recordCopy executionUUID];
  if (executionUUID)
  {
    resolvedAction = [recordCopy resolvedAction];
    if (!resolvedAction)
    {
      bundleIdentifier = __atxlog_handle_action_prediction();
      if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_FAULT))
      {
        [ATXIntentStream _getIntentEventFromLinkActionRecord:source:bundleIdFilter:allowMissingTitles:];
      }

      v24 = 0;
      goto LABEL_81;
    }

    bundleIdentifier = [recordCopy bundleIdentifier];
    if (![bundleIdentifier length])
    {
      firstObject = __atxlog_handle_action_prediction();
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
      {
        [ATXIntentStream _getIntentEventFromLinkActionRecord:resolvedAction source:? bundleIdFilter:? allowMissingTitles:?];
      }

      v24 = 0;
      goto LABEL_80;
    }

    predictions = [recordCopy predictions];
    firstObject = [predictions firstObject];

    if (!firstObject)
    {
      v25 = __atxlog_handle_default();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [ATXIntentStream _getIntentEventFromLinkActionRecord:resolvedAction source:v25 bundleIdFilter:? allowMissingTitles:?];
      }

      v24 = 0;
      goto LABEL_79;
    }

    v58 = filterCopy;
    displayRepresentation = [firstObject displayRepresentation];
    [displayRepresentation title];
    v19 = v18 = firstObject;
    atx_efficientLocalizedString = [v19 atx_efficientLocalizedString];

    v60 = v18;
    displayRepresentation2 = [v18 displayRepresentation];
    subtitle = [displayRepresentation2 subtitle];
    atx_efficientLocalizedString2 = [subtitle atx_efficientLocalizedString];

    if (!titles && ![atx_efficientLocalizedString length])
    {
      v26 = __atxlog_handle_action_prediction();
      filterCopy = v58;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [ATXIntentStream _getIntentEventFromLinkActionRecord:source:bundleIdFilter:allowMissingTitles:];
      }

      v24 = 0;
      firstObject = v60;
      goto LABEL_64;
    }

    v57 = bundleIdentifier;
    source = [recordCopy source];
    filterCopy = v58;
    v23 = source == 3 || [recordCopy source] == 7;
    firstObject = v60;
    if (v58 && ![v58 isEqualToString:v57])
    {
      v26 = __atxlog_handle_action_prediction();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        bundleIdentifier = v57;
        [ATXIntentStream _getIntentEventFromLinkActionRecord:source:bundleIdFilter:allowMissingTitles:];
        v24 = 0;
LABEL_64:
        v25 = atx_efficientLocalizedString;
LABEL_78:

LABEL_79:
LABEL_80:

LABEL_81:
        goto LABEL_82;
      }

LABEL_63:
      v24 = 0;
      bundleIdentifier = v57;
      goto LABEL_64;
    }

    if (source > 1)
    {
      switch(source)
      {
        case 2:
          if (!v23)
          {
            goto LABEL_61;
          }

          break;
        case 3:
          if (v23)
          {
            goto LABEL_61;
          }

          break;
        case 4:
          break;
        default:
          goto LABEL_61;
      }

LABEL_39:
      v26 = objc_opt_new();
      predictions2 = [recordCopy predictions];

      if (predictions2)
      {
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        predictions3 = [recordCopy predictions];
        v29 = [predictions3 countByEnumeratingWithState:&v63 objects:v71 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v64;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v64 != v31)
              {
                objc_enumerationMutation(predictions3);
              }

              parameterIdentifiers = [*(*(&v63 + 1) + 8 * i) parameterIdentifiers];
              [v26 addObjectsFromArray:parameterIdentifiers];
            }

            v30 = [predictions3 countByEnumeratingWithState:&v63 objects:v71 count:16];
          }

          while (v30);
        }

        filterCopy = v58;
      }

      metadataProvider = self->_metadataProvider;
      if (!metadataProvider)
      {
        v35 = objc_alloc_init(MEMORY[0x1E69ACF60]);
        v36 = self->_metadataProvider;
        self->_metadataProvider = v35;

        metadataProvider = self->_metadataProvider;
      }

      identifier = [resolvedAction identifier];
      v62 = 0;
      bundleIdentifier = v57;
      v38 = [(LNMetadataProvider *)metadataProvider actionForBundleIdentifier:v57 andActionIdentifier:identifier error:&v62];
      v39 = v62;

      v59 = v38;
      v55 = v39;
      if (v38)
      {
        v40 = [objc_alloc(MEMORY[0x1E696E730]) initWithAppBundleIdentifier:v57 linkAction:resolvedAction linkActionMetadata:v38];
        v41 = __atxlog_handle_action_prediction();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          identifier2 = [resolvedAction identifier];
          *buf = 138412546;
          v68 = identifier2;
          v69 = 2112;
          v70 = v26;
          _os_log_impl(&dword_1BF549000, v41, OS_LOG_TYPE_INFO, "Predictable parameters for %@ from link: %@", buf, 0x16u);
        }

        firstObject = v60;
        if (v40)
        {
          [v40 _className];
          v54 = v53 = v40;
          if (v54)
          {
            v43 = objc_alloc(MEMORY[0x1E696AB80]);
            executionDate = [recordCopy executionDate];
            executionDate2 = [recordCopy executionDate];
            v52 = [v43 initWithStartDate:executionDate endDate:executionDate2];

            LOBYTE(v51) = 0;
            v46 = [[ATXAction alloc] initWithIntent:v40 actionUUID:executionUUID bundleId:v57 heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v51 title:atx_efficientLocalizedString subtitle:atx_efficientLocalizedString2];
            if ([v26 count])
            {
              predictions4 = [recordCopy predictions];
              v48 = [predictions4 _pas_mappedArrayWithTransform:&__block_literal_global_36];
              [(ATXAction *)v46 setPredictableParameterCombinations:v48];
            }

            else
            {
              [(ATXAction *)v46 setPredictableParameterCombinations:MEMORY[0x1E695E0F0]];
            }

            firstObject = v60;
            v49 = v52;
            v24 = [[ATXIntentEvent alloc] initWithBundleId:v57 intentType:v54 dateInterval:v52 action:v46];
          }

          else
          {
            v49 = __atxlog_handle_action_prediction();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              [ATXIntentStream _getIntentEventFromLinkActionRecord:v57 source:resolvedAction bundleIdFilter:? allowMissingTitles:?];
            }

            v24 = 0;
          }

          v25 = atx_efficientLocalizedString;

          v40 = v53;
        }

        else
        {
          v54 = __atxlog_handle_action_prediction();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            [ATXIntentStream _getIntentEventFromLinkActionRecord:v57 source:resolvedAction bundleIdFilter:? allowMissingTitles:?];
          }

          v24 = 0;
          v25 = atx_efficientLocalizedString;
        }
      }

      else
      {
        v40 = __atxlog_handle_action_prediction();
        firstObject = v60;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          [ATXIntentStream _getIntentEventFromLinkActionRecord:source:bundleIdFilter:allowMissingTitles:];
        }

        v24 = 0;
        v25 = atx_efficientLocalizedString;
      }

      goto LABEL_78;
    }

    if (source)
    {
      if (source == 1 && source != 3)
      {
        goto LABEL_39;
      }
    }

    else if (source == 3)
    {
      goto LABEL_39;
    }

LABEL_61:
    v26 = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [ATXIntentStream _getIntentEventFromLinkActionRecord:source:bundleIdFilter:allowMissingTitles:];
    }

    goto LABEL_63;
  }

  resolvedAction = __atxlog_handle_action_prediction();
  if (os_log_type_enabled(resolvedAction, OS_LOG_TYPE_FAULT))
  {
    [ATXIntentStream _getIntentEventFromLinkActionRecord:source:bundleIdFilter:allowMissingTitles:];
  }

  v24 = 0;
LABEL_82:

  return v24;
}

ATXActionPredictableParameters *__96__ATXIntentStream__getIntentEventFromLinkActionRecord_source_bundleIdFilter_allowMissingTitles___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 parameterIdentifiers];

  if (v3)
  {
    v4 = [ATXActionPredictableParameters alloc];
    v5 = objc_alloc(MEMORY[0x1E695DFD8]);
    v6 = [v2 parameterIdentifiers];
    v7 = [v5 initWithArray:v6];
    v3 = [(ATXActionPredictableParameters *)v4 initWithParameterKeys:v7];
  }

  return v3;
}

- (id)_unarchiveInteractionFromBMAppIntent:(id)intent
{
  intentCopy = intent;
  v4 = objc_autoreleasePoolPush();
  interaction = [intentCopy interaction];
  if (interaction)
  {
    v11 = 0;
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:interaction error:&v11];
    v7 = v11;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = __atxlog_handle_action_prediction();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ATXIntentStream _unarchiveInteractionFromBMAppIntent:];
      }
    }
  }

  else
  {
    v7 = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXIntentStream _unarchiveInteractionFromBMAppIntent:];
    }

    v6 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v6;
}

- (id)_uuidForBMAppIntent:(id)intent interaction:(id)interaction
{
  intentCopy = intent;
  interactionCopy = interaction;
  itemID = [intentCopy itemID];

  if (!itemID || (v9 = objc_alloc(MEMORY[0x1E696AFB0]), [intentCopy itemID], v10 = objc_claimAutoreleasedReturnValue(), identifier2 = objc_msgSend(v9, "initWithUUIDString:", v10), v10, !identifier2))
  {
    if (!interactionCopy)
    {
      interactionCopy = [(ATXIntentStream *)self _unarchiveInteractionFromBMAppIntent:intentCopy];
    }

    identifier = [interactionCopy identifier];

    if (!identifier || (v13 = objc_alloc(MEMORY[0x1E696AFB0]), [interactionCopy identifier], v14 = objc_claimAutoreleasedReturnValue(), identifier2 = objc_msgSend(v13, "initWithUUIDString:", v14), v14, !identifier2))
    {
      intent = [interactionCopy intent];
      identifier2 = [intent identifier];

      if (identifier2)
      {
        v16 = objc_alloc(MEMORY[0x1E696AFB0]);
        intent2 = [interactionCopy intent];
        identifier3 = [intent2 identifier];
        identifier2 = [v16 initWithUUIDString:identifier3];
      }
    }
  }

  return identifier2;
}

- (id)_getIntentEventFromBMAppIntent:(id)intent source:(int64_t)source bundleIdFilter:(id)filter allowMissingTitles:(BOOL)titles intentsToKeep:(id)keep
{
  v60 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  filterCopy = filter;
  keepCopy = keep;
  if (![intentCopy intentType])
  {
    v15 = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
    }

    goto LABEL_7;
  }

  if ([intentCopy handlingStatus] == 5)
  {
    v15 = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
    }

LABEL_7:
    v16 = 0;
    goto LABEL_74;
  }

  v15 = [(ATXIntentStream *)self _unarchiveInteractionFromBMAppIntent:intentCopy];
  if (!v15)
  {
    v17 = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
    }

    v16 = 0;
    goto LABEL_73;
  }

  v17 = [(ATXIntentStream *)self _uuidForBMAppIntent:intentCopy interaction:v15];
  if (!v17)
  {
    intentClass = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(intentClass, OS_LOG_TYPE_FAULT))
    {
      [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
    }

    goto LABEL_18;
  }

  if ([v15 direction]!= 2)
  {
    if (!titles)
    {
      intent = [v15 intent];
      atx_titleLengthWithoutLocalizing = [intent atx_titleLengthWithoutLocalizing];

      if (!atx_titleLengthWithoutLocalizing)
      {
        intentClass = __atxlog_handle_action_prediction();
        if (os_log_type_enabled(intentClass, OS_LOG_TYPE_ERROR))
        {
          [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
        }

        goto LABEL_18;
      }
    }

    intentClass = [intentCopy intentClass];
    if (keepCopy)
    {
      intent2 = [v15 intent];
      if ([intent2 _type] == 2)
      {
      }

      else
      {
        v22 = [keepCopy containsObject:intentClass];

        if ((v22 & 1) == 0)
        {
          _className = __atxlog_handle_action_prediction();
          if (os_log_type_enabled(_className, OS_LOG_TYPE_DEBUG))
          {
            [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
          }

          v16 = 0;
          goto LABEL_71;
        }
      }
    }

    intent3 = [v15 intent];
    _className = [intent3 _className];

    if ([_className isEqualToString:@"INIntent"])
    {
      bundleID = __atxlog_handle_action_prediction();
      if (os_log_type_enabled(bundleID, OS_LOG_TYPE_DEBUG))
      {
        [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
      }

      v16 = 0;
      goto LABEL_70;
    }

    bundleID = [intentCopy bundleID];
    if ([bundleID length])
    {
      if ([MEMORY[0x1E69C5CF8] isInternalBuild] && -[NSObject hasPrefix:](bundleID, "hasPrefix:", @"appshack."))
      {
        v26 = -[NSObject substringFromIndex:](bundleID, "substringFromIndex:", [@"appshack." length]);

        bundleID = v26;
      }

      if (!filterCopy || ([filterCopy isEqualToString:bundleID] & 1) != 0)
      {
        log = bundleID;
        _donatedBySiri = [v15 _donatedBySiri];
        if (_donatedBySiri != [intentCopy donatedBySiri])
        {
          v28 = __atxlog_handle_action_prediction();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
          {
            [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
          }
        }

        if (source <= 1)
        {
          if (source)
          {
            if (source != 1)
            {
              goto LABEL_66;
            }

            goto LABEL_56;
          }
        }

        else if (source != 2)
        {
          if (source != 3)
          {
            if (source != 4)
            {
              goto LABEL_66;
            }

LABEL_57:
            v50 = _className;
            intent4 = [v15 intent];
            _intents_bundleIdForDisplay = [intent4 _intents_bundleIdForDisplay];
            v33 = _intents_bundleIdForDisplay;
            if (_intents_bundleIdForDisplay)
            {
              v34 = _intents_bundleIdForDisplay;
            }

            else
            {
              v34 = log;
            }

            bundleID = v34;

            v35 = [ATXAction alloc];
            intent5 = [v15 intent];
            LOBYTE(v48) = 0;
            v37 = [(ATXAction *)v35 initWithIntent:intent5 actionUUID:v17 bundleId:bundleID heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v48 title:0 subtitle:0];

            dateInterval = [v15 dateInterval];
            loga = v37;
            if (!dateInterval)
            {
              v39 = __atxlog_handle_default();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
              {
                [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
              }

              v40 = objc_alloc(MEMORY[0x1E696AB80]);
              absoluteTimestamp = [intentCopy absoluteTimestamp];
              absoluteTimestamp2 = [intentCopy absoluteTimestamp];
              dateInterval = [v40 initWithStartDate:absoluteTimestamp endDate:absoluteTimestamp2];

              v37 = loga;
            }

            v43 = [ATXIntentEvent alloc];
            intent6 = [v15 intent];
            _className2 = [intent6 _className];
            v45 = v37;
            v46 = _className2;
            v16 = [(ATXIntentEvent *)v43 initWithBundleId:bundleID intentType:_className2 dateInterval:dateInterval action:v45];

            _className = v50;
            v29 = loga;
            goto LABEL_69;
          }

LABEL_56:
          if ((_donatedBySiri & 1) == 0)
          {
            goto LABEL_57;
          }

LABEL_66:
          v29 = __atxlog_handle_default();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
          }

          v16 = 0;
          bundleID = log;
          goto LABEL_69;
        }

        if (_donatedBySiri)
        {
          goto LABEL_57;
        }

        goto LABEL_66;
      }

      v29 = __atxlog_handle_action_prediction();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
      }
    }

    else
    {
      v29 = __atxlog_handle_action_prediction();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [v15 intent];
        v30 = logb = v29;
        *buf = 138412802;
        v55 = v30;
        v56 = 2112;
        v57 = _className;
        v58 = 2048;
        sourceCopy = source;
        _os_log_error_impl(&dword_1BF549000, logb, OS_LOG_TYPE_ERROR, "Donation Processing (INIntent) - Rejected: filtered out because there was no bundleId for intent: %@, intentType: %@, intentSource: %lld", buf, 0x20u);

        v29 = logb;
      }
    }

    v16 = 0;
LABEL_69:

LABEL_70:
LABEL_71:

    goto LABEL_72;
  }

  intentClass = __atxlog_handle_action_prediction();
  if (os_log_type_enabled(intentClass, OS_LOG_TYPE_DEBUG))
  {
    [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
  }

LABEL_18:
  v16 = 0;
LABEL_72:

LABEL_73:
LABEL_74:

  return v16;
}

- (void)_enumerateIntentEventsBetweenStartDate:endDate:forSource:bundleIdFilter:allowMissingTitles:reversed:INIntentFilter:linkActionFilter:block:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __157__ATXIntentStream__enumerateIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_reversed_INIntentFilter_linkActionFilter_block___block_invoke_2_cold_1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0(&dword_1BF549000, v2, v3, "ATXIntentStream: Unexpected intent event body: %@", v4, v5, v6, v7, v8);
}

void __157__ATXIntentStream__enumerateIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_reversed_INIntentFilter_linkActionFilter_block___block_invoke_21_cold_1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)getIntentEventForSourceItemID:forSource:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_getIntentEventFromLinkActionRecord:source:bundleIdFilter:allowMissingTitles:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_getIntentEventFromLinkActionRecord:source:bundleIdFilter:allowMissingTitles:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_getIntentEventFromLinkActionRecord:(uint64_t)a1 source:(void *)a2 bundleIdFilter:allowMissingTitles:.cold.3(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_getIntentEventFromLinkActionRecord:(uint64_t)a1 source:(void *)a2 bundleIdFilter:allowMissingTitles:.cold.4(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_getIntentEventFromLinkActionRecord:source:bundleIdFilter:allowMissingTitles:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_getIntentEventFromLinkActionRecord:(void *)a1 source:(NSObject *)a2 bundleIdFilter:allowMissingTitles:.cold.7(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 identifier];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_1BF549000, a2, OS_LOG_TYPE_DEBUG, "Donation Processing (Link) - Action not predictable: %@", v4, 0xCu);
}

- (void)_getIntentEventFromLinkActionRecord:(void *)a1 source:bundleIdFilter:allowMissingTitles:.cold.8(void *a1)
{
  v1 = [a1 mangledTypeName];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)_unarchiveInteractionFromBMAppIntent:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_unarchiveInteractionFromBMAppIntent:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEBUG, "Donation Processing (INIntent) - Rejected: not in the intents to keep, %@", v1, 0xCu);
}

- (void)_getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:.cold.6()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:.cold.10()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:.cold.11()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:.cold.12()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end