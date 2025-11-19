@interface ATXIntentStream
+ (id)generateParameterCombitionsForKeys:(id)a3;
- (id)_getIntentEventFromBMAppIntent:(id)a3 source:(int64_t)a4 bundleIdFilter:(id)a5 allowMissingTitles:(BOOL)a6 intentsToKeep:(id)a7;
- (id)_getIntentEventFromLinkActionRecord:(id)a3 source:(int64_t)a4 bundleIdFilter:(id)a5 allowMissingTitles:(BOOL)a6;
- (id)_unarchiveInteractionFromBMAppIntent:(id)a3;
- (id)_uuidForBMAppIntent:(id)a3 interaction:(id)a4;
- (id)getIntentEventForSourceItemID:(id)a3 forSource:(int64_t)a4;
- (id)getIntentEventsBetweenStartDate:(id)a3 endDate:(id)a4 forSource:(int64_t)a5 bundleIdFilter:(id)a6 allowMissingTitles:(BOOL)a7 limit:(unint64_t)a8 INIntentFilter:(id)a9 linkActionFilter:(id)a10;
- (unint64_t)numberOfIntentEventsBetweenStartDate:(id)a3 endDate:(id)a4;
- (void)_enumerateIntentEventsBetweenStartDate:(id)a3 endDate:(id)a4 forSource:(int64_t)a5 bundleIdFilter:(id)a6 allowMissingTitles:(BOOL)a7 reversed:(BOOL)a8 INIntentFilter:(id)a9 linkActionFilter:(id)a10 block:(id)a11;
@end

@implementation ATXIntentStream

- (id)getIntentEventsBetweenStartDate:(id)a3 endDate:(id)a4 forSource:(int64_t)a5 bundleIdFilter:(id)a6 allowMissingTitles:(BOOL)a7 limit:(unint64_t)a8 INIntentFilter:(id)a9 linkActionFilter:(id)a10
{
  v11 = a7;
  v17 = a10;
  v18 = a9;
  v19 = a6;
  v20 = a4;
  v21 = a3;
  v22 = objc_opt_new();
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __141__ATXIntentStream_getIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_limit_INIntentFilter_linkActionFilter___block_invoke;
  v27[3] = &unk_1E80C1A58;
  v28 = v22;
  v29 = a8;
  v23 = v22;
  [(ATXIntentStream *)self _enumerateIntentEventsBetweenStartDate:v21 endDate:v20 forSource:a5 bundleIdFilter:v19 allowMissingTitles:v11 reversed:1 INIntentFilter:v18 linkActionFilter:v17 block:v27];

  v24 = [v23 reverseObjectEnumerator];
  v25 = [v24 allObjects];

  return v25;
}

- (unint64_t)numberOfIntentEventsBetweenStartDate:(id)a3 endDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__ATXIntentStream_numberOfIntentEventsBetweenStartDate_endDate___block_invoke;
  v10[3] = &unk_1E80C1A80;
  v10[4] = &v11;
  [(ATXIntentStream *)self _enumerateIntentEventsBetweenStartDate:v6 endDate:v7 forSource:4 bundleIdFilter:0 allowMissingTitles:0 reversed:0 INIntentFilter:0 linkActionFilter:0 block:v10];
  v8 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)_enumerateIntentEventsBetweenStartDate:(id)a3 endDate:(id)a4 forSource:(int64_t)a5 bundleIdFilter:(id)a6 allowMissingTitles:(BOOL)a7 reversed:(BOOL)a8 INIntentFilter:(id)a9 linkActionFilter:(id)a10 block:(id)a11
{
  v11 = a8;
  v14 = a3;
  v15 = a4;
  v43 = a6;
  v40 = a9;
  v16 = a10;
  v42 = a11;
  context = objc_autoreleasePoolPush();
  v17 = objc_alloc_init(MEMORY[0x1E69AD068]);
  if (v11)
  {
    v18 = v15;
  }

  else
  {
    v18 = v14;
  }

  v49 = v15;
  v50 = v14;
  if (v11)
  {
    v19 = v14;
  }

  else
  {
    v19 = v15;
  }

  v60[0] = 0;
  v47 = v17;
  v20 = [v17 transcriptPublisherWithStreamName:0 fromDate:v18 toDate:v19 maxEvents:0 reversed:v11 error:{v60, v40}];
  v21 = v60[0];
  v22 = BiomeLibrary();
  v23 = [v22 App];
  v24 = [v23 Intent];
  v25 = [v24 atx_publisherWithStartDate:v18 endDate:v19 maxEvents:0 lastN:0 reversed:v11];

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
  v31 = [v30 approvedSiriKitIntents];
  v32 = [v29 setWithArray:v31];

  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __157__ATXIntentStream__enumerateIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_reversed_INIntentFilter_linkActionFilter_block___block_invoke_2;
  v57[3] = &unk_1E80C3318;
  v33 = v41;
  v58 = v33;
  v34 = v16;
  v59 = v34;
  v35 = [v28 filterWithIsIncluded:v57];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __157__ATXIntentStream__enumerateIntentEventsBetweenStartDate_endDate_forSource_bundleIdFilter_allowMissingTitles_reversed_INIntentFilter_linkActionFilter_block___block_invoke_25;
  v51[3] = &unk_1E80C3340;
  v51[4] = self;
  v55 = a5;
  v36 = v43;
  v56 = a7;
  v52 = v36;
  v53 = v32;
  v37 = v42;
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

- (id)getIntentEventForSourceItemID:(id)a3 forSource:(int64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E695DF00] distantPast];
  v8 = objc_opt_new();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__ATXIntentStream_getIntentEventForSourceItemID_forSource___block_invoke;
  v16[3] = &unk_1E80C3368;
  v17 = v6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__ATXIntentStream_getIntentEventForSourceItemID_forSource___block_invoke_2;
  v14[3] = &unk_1E80C3390;
  v9 = v17;
  v15 = v9;
  v10 = [(ATXIntentStream *)self getIntentEventsBetweenStartDate:v7 endDate:v8 forSource:a4 bundleIdFilter:0 allowMissingTitles:0 limit:2 INIntentFilter:v16 linkActionFilter:v14];

  if ([v10 count] >= 2)
  {
    v11 = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXIntentStream getIntentEventForSourceItemID:forSource:];
    }
  }

  v12 = [v10 firstObject];

  return v12;
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

+ (id)generateParameterCombitionsForKeys:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_opt_new();
    v5 = [v3 count];
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
            v12 = [v3 objectAtIndexedSubscript:v10];
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

- (id)_getIntentEventFromLinkActionRecord:(id)a3 source:(int64_t)a4 bundleIdFilter:(id)a5 allowMissingTitles:(BOOL)a6
{
  v72 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = [v10 executionUUID];
  if (v12)
  {
    v13 = [v10 resolvedAction];
    if (!v13)
    {
      v14 = __atxlog_handle_action_prediction();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [ATXIntentStream _getIntentEventFromLinkActionRecord:source:bundleIdFilter:allowMissingTitles:];
      }

      v24 = 0;
      goto LABEL_81;
    }

    v14 = [v10 bundleIdentifier];
    if (![v14 length])
    {
      v16 = __atxlog_handle_action_prediction();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [ATXIntentStream _getIntentEventFromLinkActionRecord:v13 source:? bundleIdFilter:? allowMissingTitles:?];
      }

      v24 = 0;
      goto LABEL_80;
    }

    v15 = [v10 predictions];
    v16 = [v15 firstObject];

    if (!v16)
    {
      v25 = __atxlog_handle_default();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [ATXIntentStream _getIntentEventFromLinkActionRecord:v13 source:v25 bundleIdFilter:? allowMissingTitles:?];
      }

      v24 = 0;
      goto LABEL_79;
    }

    v58 = v11;
    v17 = [v16 displayRepresentation];
    [v17 title];
    v19 = v18 = v16;
    v61 = [v19 atx_efficientLocalizedString];

    v60 = v18;
    v20 = [v18 displayRepresentation];
    v21 = [v20 subtitle];
    v56 = [v21 atx_efficientLocalizedString];

    if (!a6 && ![v61 length])
    {
      v26 = __atxlog_handle_action_prediction();
      v11 = v58;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [ATXIntentStream _getIntentEventFromLinkActionRecord:source:bundleIdFilter:allowMissingTitles:];
      }

      v24 = 0;
      v16 = v60;
      goto LABEL_64;
    }

    v57 = v14;
    v22 = [v10 source];
    v11 = v58;
    v23 = v22 == 3 || [v10 source] == 7;
    v16 = v60;
    if (v58 && ![v58 isEqualToString:v57])
    {
      v26 = __atxlog_handle_action_prediction();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v14 = v57;
        [ATXIntentStream _getIntentEventFromLinkActionRecord:source:bundleIdFilter:allowMissingTitles:];
        v24 = 0;
LABEL_64:
        v25 = v61;
LABEL_78:

LABEL_79:
LABEL_80:

LABEL_81:
        goto LABEL_82;
      }

LABEL_63:
      v24 = 0;
      v14 = v57;
      goto LABEL_64;
    }

    if (a4 > 1)
    {
      switch(a4)
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
      v27 = [v10 predictions];

      if (v27)
      {
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v28 = [v10 predictions];
        v29 = [v28 countByEnumeratingWithState:&v63 objects:v71 count:16];
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
                objc_enumerationMutation(v28);
              }

              v33 = [*(*(&v63 + 1) + 8 * i) parameterIdentifiers];
              [v26 addObjectsFromArray:v33];
            }

            v30 = [v28 countByEnumeratingWithState:&v63 objects:v71 count:16];
          }

          while (v30);
        }

        v11 = v58;
      }

      metadataProvider = self->_metadataProvider;
      if (!metadataProvider)
      {
        v35 = objc_alloc_init(MEMORY[0x1E69ACF60]);
        v36 = self->_metadataProvider;
        self->_metadataProvider = v35;

        metadataProvider = self->_metadataProvider;
      }

      v37 = [v13 identifier];
      v62 = 0;
      v14 = v57;
      v38 = [(LNMetadataProvider *)metadataProvider actionForBundleIdentifier:v57 andActionIdentifier:v37 error:&v62];
      v39 = v62;

      v59 = v38;
      v55 = v39;
      if (v38)
      {
        v40 = [objc_alloc(MEMORY[0x1E696E730]) initWithAppBundleIdentifier:v57 linkAction:v13 linkActionMetadata:v38];
        v41 = __atxlog_handle_action_prediction();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = [v13 identifier];
          *buf = 138412546;
          v68 = v42;
          v69 = 2112;
          v70 = v26;
          _os_log_impl(&dword_1BF549000, v41, OS_LOG_TYPE_INFO, "Predictable parameters for %@ from link: %@", buf, 0x16u);
        }

        v16 = v60;
        if (v40)
        {
          [v40 _className];
          v54 = v53 = v40;
          if (v54)
          {
            v43 = objc_alloc(MEMORY[0x1E696AB80]);
            v44 = [v10 executionDate];
            v45 = [v10 executionDate];
            v52 = [v43 initWithStartDate:v44 endDate:v45];

            LOBYTE(v51) = 0;
            v46 = [[ATXAction alloc] initWithIntent:v40 actionUUID:v12 bundleId:v57 heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v51 title:v61 subtitle:v56];
            if ([v26 count])
            {
              v47 = [v10 predictions];
              v48 = [v47 _pas_mappedArrayWithTransform:&__block_literal_global_36];
              [(ATXAction *)v46 setPredictableParameterCombinations:v48];
            }

            else
            {
              [(ATXAction *)v46 setPredictableParameterCombinations:MEMORY[0x1E695E0F0]];
            }

            v16 = v60;
            v49 = v52;
            v24 = [[ATXIntentEvent alloc] initWithBundleId:v57 intentType:v54 dateInterval:v52 action:v46];
          }

          else
          {
            v49 = __atxlog_handle_action_prediction();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              [ATXIntentStream _getIntentEventFromLinkActionRecord:v57 source:v13 bundleIdFilter:? allowMissingTitles:?];
            }

            v24 = 0;
          }

          v25 = v61;

          v40 = v53;
        }

        else
        {
          v54 = __atxlog_handle_action_prediction();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            [ATXIntentStream _getIntentEventFromLinkActionRecord:v57 source:v13 bundleIdFilter:? allowMissingTitles:?];
          }

          v24 = 0;
          v25 = v61;
        }
      }

      else
      {
        v40 = __atxlog_handle_action_prediction();
        v16 = v60;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          [ATXIntentStream _getIntentEventFromLinkActionRecord:source:bundleIdFilter:allowMissingTitles:];
        }

        v24 = 0;
        v25 = v61;
      }

      goto LABEL_78;
    }

    if (a4)
    {
      if (a4 == 1 && v22 != 3)
      {
        goto LABEL_39;
      }
    }

    else if (v22 == 3)
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

  v13 = __atxlog_handle_action_prediction();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
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

- (id)_unarchiveInteractionFromBMAppIntent:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 interaction];
  if (v5)
  {
    v11 = 0;
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v11];
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

- (id)_uuidForBMAppIntent:(id)a3 interaction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 itemID];

  if (!v8 || (v9 = objc_alloc(MEMORY[0x1E696AFB0]), [v6 itemID], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "initWithUUIDString:", v10), v10, !v11))
  {
    if (!v7)
    {
      v7 = [(ATXIntentStream *)self _unarchiveInteractionFromBMAppIntent:v6];
    }

    v12 = [v7 identifier];

    if (!v12 || (v13 = objc_alloc(MEMORY[0x1E696AFB0]), [v7 identifier], v14 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v13, "initWithUUIDString:", v14), v14, !v11))
    {
      v15 = [v7 intent];
      v11 = [v15 identifier];

      if (v11)
      {
        v16 = objc_alloc(MEMORY[0x1E696AFB0]);
        v17 = [v7 intent];
        v18 = [v17 identifier];
        v11 = [v16 initWithUUIDString:v18];
      }
    }
  }

  return v11;
}

- (id)_getIntentEventFromBMAppIntent:(id)a3 source:(int64_t)a4 bundleIdFilter:(id)a5 allowMissingTitles:(BOOL)a6 intentsToKeep:(id)a7
{
  v60 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a7;
  if (![v12 intentType])
  {
    v15 = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
    }

    goto LABEL_7;
  }

  if ([v12 handlingStatus] == 5)
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

  v15 = [(ATXIntentStream *)self _unarchiveInteractionFromBMAppIntent:v12];
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

  v17 = [(ATXIntentStream *)self _uuidForBMAppIntent:v12 interaction:v15];
  if (!v17)
  {
    v18 = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
    }

    goto LABEL_18;
  }

  if ([v15 direction]!= 2)
  {
    if (!a6)
    {
      v19 = [v15 intent];
      v20 = [v19 atx_titleLengthWithoutLocalizing];

      if (!v20)
      {
        v18 = __atxlog_handle_action_prediction();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
        }

        goto LABEL_18;
      }
    }

    v18 = [v12 intentClass];
    if (v14)
    {
      v21 = [v15 intent];
      if ([v21 _type] == 2)
      {
      }

      else
      {
        v22 = [v14 containsObject:v18];

        if ((v22 & 1) == 0)
        {
          v24 = __atxlog_handle_action_prediction();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
          }

          v16 = 0;
          goto LABEL_71;
        }
      }
    }

    v23 = [v15 intent];
    v24 = [v23 _className];

    if ([v24 isEqualToString:@"INIntent"])
    {
      v25 = __atxlog_handle_action_prediction();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
      }

      v16 = 0;
      goto LABEL_70;
    }

    v25 = [v12 bundleID];
    if ([v25 length])
    {
      if ([MEMORY[0x1E69C5CF8] isInternalBuild] && -[NSObject hasPrefix:](v25, "hasPrefix:", @"appshack."))
      {
        v26 = -[NSObject substringFromIndex:](v25, "substringFromIndex:", [@"appshack." length]);

        v25 = v26;
      }

      if (!v13 || ([v13 isEqualToString:v25] & 1) != 0)
      {
        log = v25;
        v27 = [v15 _donatedBySiri];
        if (v27 != [v12 donatedBySiri])
        {
          v28 = __atxlog_handle_action_prediction();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
          {
            [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
          }
        }

        if (a4 <= 1)
        {
          if (a4)
          {
            if (a4 != 1)
            {
              goto LABEL_66;
            }

            goto LABEL_56;
          }
        }

        else if (a4 != 2)
        {
          if (a4 != 3)
          {
            if (a4 != 4)
            {
              goto LABEL_66;
            }

LABEL_57:
            v50 = v24;
            v31 = [v15 intent];
            v32 = [v31 _intents_bundleIdForDisplay];
            v33 = v32;
            if (v32)
            {
              v34 = v32;
            }

            else
            {
              v34 = log;
            }

            v25 = v34;

            v35 = [ATXAction alloc];
            v36 = [v15 intent];
            LOBYTE(v48) = 0;
            v37 = [(ATXAction *)v35 initWithIntent:v36 actionUUID:v17 bundleId:v25 heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v48 title:0 subtitle:0];

            v38 = [v15 dateInterval];
            loga = v37;
            if (!v38)
            {
              v39 = __atxlog_handle_default();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
              {
                [ATXIntentStream _getIntentEventFromBMAppIntent:source:bundleIdFilter:allowMissingTitles:intentsToKeep:];
              }

              v40 = objc_alloc(MEMORY[0x1E696AB80]);
              v41 = [v12 absoluteTimestamp];
              v42 = [v12 absoluteTimestamp];
              v38 = [v40 initWithStartDate:v41 endDate:v42];

              v37 = loga;
            }

            v43 = [ATXIntentEvent alloc];
            v49 = [v15 intent];
            v44 = [v49 _className];
            v45 = v37;
            v46 = v44;
            v16 = [(ATXIntentEvent *)v43 initWithBundleId:v25 intentType:v44 dateInterval:v38 action:v45];

            v24 = v50;
            v29 = loga;
            goto LABEL_69;
          }

LABEL_56:
          if ((v27 & 1) == 0)
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
          v25 = log;
          goto LABEL_69;
        }

        if (v27)
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
        v57 = v24;
        v58 = 2048;
        v59 = a4;
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

  v18 = __atxlog_handle_action_prediction();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
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