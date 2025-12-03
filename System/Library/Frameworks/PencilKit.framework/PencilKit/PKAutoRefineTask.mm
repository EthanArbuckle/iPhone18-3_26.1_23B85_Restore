@interface PKAutoRefineTask
- (id)debugInfo;
- (uint64_t)cancel;
- (uint64_t)hasOngoingAnimation;
- (uint64_t)isInvalidatedGivenDrawing:(void *)drawing autoRefineController:(void *)controller currentStrokes:(void *)strokes inStrokesToReplace:(void *)replace lineDrawing:(void *)lineDrawing strokeGroups:(void *)groups outStrokeGroupsToReplace:(void *)toReplace outStrokesToPreserve:;
- (uint64_t)queryItemIsEqualToQueryItem:(uint64_t)item;
- (uint64_t)strokesAnimationCompletedWithSuccess:(uint64_t)result;
- (void)dealloc;
- (void)executeSynthesisWithSession:(void *)session processingBlock:(void *)block completionBlock:;
- (void)locale;
- (void)trimTaskForNewItem:(_BYTE *)item shouldCancel:;
- (void)trimTaskForNewStroke:(char *)stroke shouldCancel:;
- (void)updateCommittableRange;
@end

@implementation PKAutoRefineTask

void __93__PKAutoRefineTask_initWithQueryItem_firstColumnToCommit_lastColumnToCommit_providerVersion___block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 32) + 8);
  if (v4)
  {
    v4 = v4[10];
  }

  v5 = v4;
  v6 = [v5 strokeIndexesForColumnsInRange:{a2, 1}];

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __93__PKAutoRefineTask_initWithQueryItem_firstColumnToCommit_lastColumnToCommit_providerVersion___block_invoke_2;
  v13 = &unk_1E82DB168;
  v14 = *(a1 + 32);
  v15 = &v16;
  [v6 enumerateRangesUsingBlock:&v10];
  v7 = os_log_create("com.apple.pencilkit", "AutoRefine");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [v6 description];
    v9 = *(v17 + 24);
    *buf = 134218498;
    v21 = a2;
    v22 = 2112;
    v23 = v8;
    v24 = 1024;
    v25 = v9;
    _os_log_debug_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEBUG, "New AutoRefine task checking refinable strokes in column %ld, stroke indexes: %@, foundRefinable ? %d", buf, 0x1Cu);
  }

  if ((v17[3] & 1) == 0)
  {
    [*(a1 + 40) addIndex:a2];
  }

  _Block_object_dispose(&v16, 8);
}

void __93__PKAutoRefineTask_initWithQueryItem_firstColumnToCommit_lastColumnToCommit_providerVersion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = *(*(a1 + 32) + 8);
  if (v8)
  {
    v8 = v8[14];
  }

  v9 = v8;
  v10 = [v9 intersectsIndexesInRange:{a2, a3}];

  if (v10)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

uint64_t __93__PKAutoRefineTask_initWithQueryItem_firstColumnToCommit_lastColumnToCommit_providerVersion___block_invoke_2_6(uint64_t result, unint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(result + 32);
  v5 = *(v4 + 32);
  if (a2 + a3 > v5)
  {
    if (a2 > v5)
    {
      v5 = a2;
    }

    *(v4 + 32) = v5;
    v6 = *(result + 32);
    v7 = a2 + a3 - 1;
    if (*(v6 + 40) > v7)
    {
      *(v6 + 40) = v7;
    }

    *a4 = 1;
  }

  return result;
}

- (void)updateCommittableRange
{
  if (self)
  {
    v2 = *(self + 32);
    v3 = *(self + 40);
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v5 = *(self + 8);
    if (v5)
    {
      v5 = v5[10];
    }

    v6 = v5;
    v7 = *(self + 8);
    if (v7)
    {
      v7 = v7[10];
    }

    v8 = v7;
    transcriptionPaths = [v8 transcriptionPaths];
    firstObject = [transcriptionPaths firstObject];
    v11 = v3 - v2;
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __42__PKAutoRefineTask_updateCommittableRange__block_invoke;
    v30 = &unk_1E82DB1E0;
    v12 = indexSet;
    v31 = v12;
    v32 = &v43;
    v33 = &v39;
    v34 = &v35;
    [v6 enumerateTokensInTranscriptionPath:firstObject columnRange:v2 tokenProcessingBlock:{v11 + 1, &v27}];

    v13 = v36[3];
    if (v13 <= 0)
    {
      *(self + 88) = 0;
      v14 = 1.0;
    }

    else
    {
      *(self + 88) = v44[3] / v13;
      v14 = v40[3] / v13;
    }

    *(self + 96) = v14;
    v15 = *(self + 8);
    if (v15)
    {
      v15 = v15[12];
    }

    v16 = v15;
    v17 = [v16 objectsAtIndexes:{v12, v27, v28, v29, v30}];
    v18 = *(self + 80);
    *(self + 80) = v17;

    v19 = *(self + 8);
    if (v19)
    {
      v19 = v19[10];
    }

    v20 = v19;
    v21 = *(self + 8);
    if (v21)
    {
      v21 = v21[10];
    }

    v22 = v21;
    transcriptionPaths2 = [v22 transcriptionPaths];
    firstObject2 = [transcriptionPaths2 firstObject];
    v25 = [v20 transcriptionWithPath:firstObject2 columnRange:v2 filterLowConfidence:{v11 + 1, 0}];
    v26 = *(self + 72);
    *(self + 72) = v25;

    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(&v43, 8);
  }
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  queryItem = self->_queryItem;
  self->_queryItem = 0;

  objc_storeWeak(&self->_delegate, 0);
  v4 = os_log_create("com.apple.pencilkit", "AutoRefine");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "AutoRefine task destroyed %p.", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = PKAutoRefineTask;
  [(PKAutoRefineTask *)&v5 dealloc];
}

- (void)locale
{
  if (self)
  {
    v2 = self[1];
    if (v2)
    {
      v2 = v2[15];
    }

    self = v2;
    v1 = vars8;
  }

  return self;
}

void __42__PKAutoRefineTask_updateCommittableRange__block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 strokeIndexes];
  [v4 addIndexes:v5];

  v6 = [objc_alloc(MEMORY[0x1E6997B98]) initWithTokenizedTextResultToken:v3];
  if ([v6 hasValidPrincipalLines])
  {
    [v6 principalOrientation];
    *(*(a1[5] + 8) + 24) = v7 + *(*(a1[5] + 8) + 24);
    if (v6)
    {
      [v6 principalLines];
      [v6 principalLines];
      [v6 principalLines];
      [v6 principalLines];
      v8 = *(&v37 + 1) + *(&v30 + 1) - *(&v23 + 1);
      v9 = *(&v16 + 1);
    }

    else
    {
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v9 = 0.0;
      v11 = 0u;
      v12 = 0u;
      v8 = 0.0;
    }

    [v6 bounds];
    *(*(a1[6] + 8) + 24) = *(*(a1[6] + 8) + 24) + (v8 - v9) * 0.5 * v10;
    ++*(*(a1[7] + 8) + 24);
  }
}

- (void)executeSynthesisWithSession:(void *)session processingBlock:(void *)block completionBlock:
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  sessionCopy = session;
  blockCopy = block;
  if (self)
  {
    v10 = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "AutoRefine task performing the synthesis query %p.", buf, 0xCu);
    }

    if (v7)
    {
      v11 = [objc_alloc(MEMORY[0x1E6997BE8]) initWithRecognitionSession:v7];
      v12 = os_log_create("com.apple.pencilkit", "AutoRefine");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(self + 80) count];
        v14 = *(self + 72);
        *buf = 134218243;
        selfCopy2 = v13;
        v25 = 2113;
        v26 = v14;
        _os_log_impl(&dword_1C7CCA000, v12, OS_LOG_TYPE_DEFAULT, "AutoRefine synthesis query initialized. Strokes to replace: %lu, string to refine: %{private}@", buf, 0x16u);
      }

      v16 = *(self + 72);
      v15 = *(self + 80);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __80__PKAutoRefineTask_executeSynthesisWithSession_processingBlock_completionBlock___block_invoke;
      v20[3] = &unk_1E82DB208;
      v20[4] = self;
      v21 = sessionCopy;
      v22 = blockCopy;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __80__PKAutoRefineTask_executeSynthesisWithSession_processingBlock_completionBlock___block_invoke_21;
      v19[3] = &unk_1E82D69E8;
      v19[4] = self;
      v17 = [v11 refinedTokensForSingleLineContextStrokes:v15 transcription:v16 completion:v20 shouldCancel:v19];
    }

    else
    {
      v18 = os_log_create("com.apple.pencilkit", "AutoRefine");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        selfCopy2 = self;
        _os_log_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_DEFAULT, "Session has been invalidated, canceling task %p.", buf, 0xCu);
      }

      [(PKAutoRefineTask *)self cancel];
    }
  }
}

- (uint64_t)cancel
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = v1;
      _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "AutoRefine task cancelled %p.", &v4, 0xCu);
    }

    *(v1 + 104) = 1;
    result = [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    *(v1 + 64) = v3;
  }

  return result;
}

void __80__PKAutoRefineTask_executeSynthesisWithSession_processingBlock_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v45 = a2;
  v44 = a3;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v46 = a1;
  v6 = v5 - *(*(a1 + 32) + 56);
  v7 = os_log_create("com.apple.pencilkit", "AutoRefine");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 134218496;
    v55 = v8;
    v56 = 2048;
    v57 = [v45 count];
    v58 = 2048;
    v59 = *&v6;
    _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "AutoRefine synthesis query %p, starting the drawing update block with %ld synthesized tokens, after task duration = %f", buf, 0x20u);
  }

  if (v6 >= 0.5)
  {
    v10 = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v15 = *(v46 + 32);
    *buf = 134218496;
    v55 = v15;
    v56 = 2048;
    v57 = *&v6;
    v58 = 2048;
    v59 = 0x3FE0000000000000;
    v12 = "AutoRefine synthesis query %p not sleeping before triggering the strokes update: %f >= %f";
    v13 = v10;
    v14 = 32;
  }

  else
  {
    v9 = 0.5 - v6;
    [MEMORY[0x1E696AF00] sleepForTimeInterval:v9];
    v10 = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v11 = *(v46 + 32);
    *buf = 134218240;
    v55 = v11;
    v56 = 2048;
    v57 = *&v9;
    v12 = "AutoRefine synthesis query %p sleeping for %f before triggering the strokes update.";
    v13 = v10;
    v14 = 22;
  }

  _os_log_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
LABEL_9:

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v17 = v16 - *(*(v46 + 32) + 56);
  v18 = os_log_create("com.apple.pencilkit", "AutoRefine");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(v46 + 32);
    v20 = [v45 count];
    *buf = 134218496;
    v55 = v19;
    v56 = 2048;
    v57 = v20;
    v58 = 2048;
    v59 = *&v17;
    _os_log_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_DEFAULT, "AutoRefine synthesis query %p, running the drawing update block with %ld synthesized tokens, after task duration = %f", buf, 0x20u);
  }

  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v45, "count")}];
  v22 = objc_opt_new();
  v23 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v45;
  v24 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v24)
  {
    v25 = 0;
    v26 = *v51;
    v27 = 0.0;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v51 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v50 + 1) + 8 * i);
        if ([v29 hasPrecedingSpace])
        {
          [v22 appendString:@" "];
        }

        v30 = [v29 string];
        [v22 appendString:v30];

        v31 = [v29 drawing];
        [v23 appendDrawing:v31];

        v32 = [v29 drawing];
        [v21 addObject:v32];

        if ([v29 hasValidPrincipalLines])
        {
          [v29 principalOrientation];
          v27 = v27 + v33;
          ++v25;
        }
      }

      v24 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
    }

    while (v24);

    if (v25 >= 1)
    {
      v34 = v27 / v25;
      goto LABEL_26;
    }
  }

  else
  {
  }

  v34 = 0.0;
LABEL_26:
  v35 = *(v46 + 32);
  v37 = *(v35 + 88);
  v36 = *(v35 + 96);
  v38 = os_log_create("com.apple.pencilkit", "AutoRefine");
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = *(v46 + 32);
    v40 = [obj count];
    *buf = 134218755;
    v55 = v39;
    v56 = 2048;
    v57 = v40;
    v58 = 2117;
    v59 = v22;
    v60 = 2048;
    v61 = v17;
    _os_log_impl(&dword_1C7CCA000, v38, OS_LOG_TYPE_DEFAULT, "AutoRefine synthesis query %p, running the drawing update block with tokens = %ld, string = %{sensitive}@ after task duration = %f", buf, 0x2Au);
  }

  v41 = *(v46 + 40);
  v42 = [obj count];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __80__PKAutoRefineTask_executeSynthesisWithSession_processingBlock_completionBlock___block_invoke_18;
  v48[3] = &unk_1E82D63D8;
  v43 = *(v46 + 48);
  v48[4] = *(v46 + 32);
  v49 = v43;
  (*(v41 + 16))(v41, v21, v44, v23, v42, v48, v37 - v34, v36);
}

void __80__PKAutoRefineTask_executeSynthesisWithSession_processingBlock_completionBlock___block_invoke_18(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80__PKAutoRefineTask_executeSynthesisWithSession_processingBlock_completionBlock___block_invoke_2;
  v3[3] = &unk_1E82D63D8;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __80__PKAutoRefineTask_executeSynthesisWithSession_processingBlock_completionBlock___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  (*(*(a1 + 40) + 16))();
  v2 = os_log_create("com.apple.pencilkit", "AutoRefine");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "AutoRefine task completed %p.", &v4, 0xCu);
  }
}

uint64_t __80__PKAutoRefineTask_executeSynthesisWithSession_processingBlock_completionBlock___block_invoke_21(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 104);
  }

  return v1 & 1;
}

- (uint64_t)hasOngoingAnimation
{
  v9 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (self[104] & 1) != 0 || (self[105])
    {
      v2 = 0;
    }

    else
    {
      v2 = self[106];
    }

    v3 = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134218240;
      selfCopy = self;
      v7 = 1024;
      v8 = v2 & 1;
      _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "AutoRefine task %p hasOngoingAnimation ? %d", &v5, 0x12u);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (uint64_t)strokesAnimationCompletedWithSuccess:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    *(result + 105) = 1;
    result = [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    *(v3 + 64) = v4;
    *(v3 + 107) = a2;
  }

  return result;
}

- (id)debugInfo
{
  v53[5] = *MEMORY[0x1E69E9840];
  if (self)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];
    v1 = CHGetSynthesisModelVersionForLocale();
    v37 = v1;
    if (localeIdentifier)
    {
      v2 = v1 == 0;
    }

    else
    {
      v2 = 1;
    }

    if (!v2)
    {
      [dictionary setObject:v1 forKeyedSubscript:@"modelVersionForUserLocale"];
      [dictionary setObject:localeIdentifier forKeyedSubscript:@"userLocale"];
    }

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v4 = *(self + 8);
    v38 = dictionary2;
    if (v4)
    {
      v4 = v4[10];
    }

    v5 = v4;
    v6 = *(self + 8);
    if (v6)
    {
      v6 = v6[15];
    }

    v45 = v6;
    if (v5)
    {
      v44 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "tokenColumnCount")}];
      transcriptionPaths = [v5 transcriptionPaths];
      firstObject = [transcriptionPaths firstObject];

      refinableTranscriptionPath = [v5 refinableTranscriptionPath];
      for (i = 0; i < [v5 tokenColumnCount]; ++i)
      {
        v9 = [v5 tokenRowsAtColumnIndex:i];
        v10 = [v5 transcriptionWithPath:firstObject columnRange:i filterLowConfidence:1 allowPrecedingSeparator:{0, 1}];
        v11 = [v5 transcriptionWithPath:refinableTranscriptionPath columnRange:i filterLowConfidence:1 allowPrecedingSeparator:{0, 1}];
        v12 = [v5 strokeIndexesForColumnsInRange:{i, 1}];
        string = [MEMORY[0x1E696AD60] string];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __41__PKAutoRefineTask__serializedTextResult__block_invoke;
        v46[3] = &unk_1E82DB1B8;
        v14 = string;
        v47 = v14;
        [v12 enumerateRangesUsingBlock:v46];
        v52[0] = @"topTranscription";
        v52[1] = @"refinableTranscription";
        v53[0] = v10;
        v53[1] = v11;
        v52[2] = @"rowCount";
        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
        v53[2] = v15;
        v53[3] = v14;
        v52[3] = @"strokeIndexes";
        v52[4] = @"recognitionLocale";
        languageIdentifier = [v45 languageIdentifier];
        v53[4] = languageIdentifier;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:5];
        [v44 addObject:v17];
      }

      [v38 setObject:v44 forKeyedSubscript:@"tokenColumns"];
    }

    [dictionary setObject:v38 forKeyedSubscript:@"textResult"];
    v18 = *(self + 8);
    if (v18)
    {
      v18 = v18[10];
    }

    v19 = v18;
    refinableTranscription = [v19 refinableTranscription];
    [dictionary setObject:refinableTranscription forKeyedSubscript:@"refinableTranscription"];

    v50[0] = @"lastColumnToCommit";
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:*(self + 40)];
    v51[0] = v21;
    v50[1] = @"firstColumnToCommit";
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:*(self + 32)];
    v51[1] = v22;
    v50[2] = @"startTime";
    v23 = [MEMORY[0x1E696AD98] numberWithDouble:*(self + 56)];
    v51[2] = v23;
    v50[3] = @"completionTime";
    v24 = [MEMORY[0x1E696AD98] numberWithDouble:*(self + 64)];
    v51[3] = v24;
    v50[4] = @"duration";
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:*(self + 64) - *(self + 56)];
    v51[4] = v25;
    v50[5] = @"initialFirstColumnToCommit";
    v26 = [MEMORY[0x1E696AD98] numberWithInteger:*(self + 16)];
    v51[5] = v26;
    v50[6] = @"initialLastColumnToCommit";
    v27 = [MEMORY[0x1E696AD98] numberWithInteger:*(self + 24)];
    v51[6] = v27;
    v50[7] = @"strokesToReplace";
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(self + 80), "count")}];
    v51[7] = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:8];
    [dictionary setObject:v29 forKeyedSubscript:@"commit"];

    v48[0] = @"isCanceled";
    v30 = [MEMORY[0x1E696AD98] numberWithBool:*(self + 104)];
    v49[0] = v30;
    v48[1] = @"isComplete";
    v31 = [MEMORY[0x1E696AD98] numberWithBool:*(self + 105)];
    v49[1] = v31;
    v48[2] = @"hasStrokeAnimationStarted";
    v32 = [MEMORY[0x1E696AD98] numberWithBool:*(self + 106)];
    v49[2] = v32;
    v48[3] = @"strokesRefinementSuccessful";
    v33 = [MEMORY[0x1E696AD98] numberWithBool:*(self + 107)];
    v49[3] = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:4];
    [dictionary setObject:v34 forKeyedSubscript:@"status"];
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

void __41__PKAutoRefineTask__serializedTextResult__block_invoke(uint64_t a1, NSUInteger a2, NSUInteger a3)
{
  if ([*(a1 + 32) length])
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  v6 = *(a1 + 32);
  v9.location = a2;
  v9.length = a3;
  v7 = NSStringFromRange(v9);
  [v6 appendFormat:@"%@", v7];
}

- (void)trimTaskForNewStroke:(char *)stroke shouldCancel:
{
  v173 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (!self)
  {
    goto LABEL_71;
  }

  v152 = 0;
  v153 = &v152;
  v154 = 0x4812000000;
  v155 = __Block_byref_object_copy__24;
  v156 = __Block_byref_object_dispose__24;
  v157 = "";
  v159 = 0;
  v160 = 0;
  v158 = 0;
  v151 = 0u;
  v150 = 0u;
  v149 = 0u;
  if (v4)
  {
    [v4 transform];
  }

  path = [v5 path];
  v122 = v5;
  v7 = [PKFloatRange alloc];
  path2 = [v5 path];
  v9 = -[PKFloatRange initWithLowerBound:upperBound:](v7, "initWithLowerBound:upperBound:", 0.0, [path2 count]);
  selfCopy = self;
  v145[0] = MEMORY[0x1E69E9820];
  v145[1] = 3221225472;
  v145[2] = __54__PKAutoRefineTask_trimTaskForNewStroke_shouldCancel___block_invoke;
  v145[3] = &unk_1E82DB230;
  v145[4] = &v152;
  v146 = v149;
  v147 = v150;
  v148 = v151;
  [path enumerateInterpolatedPointsInRange:v9 strideByDistance:v145 usingBlock:3.0];

  __p = 0;
  v143 = 0;
  v144 = 0;
  [PKPathUtility convexHull:&__p forPoints:v153 + 6];
  if (v143 == __p)
  {
    v101 = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v162 = v122;
      _os_log_error_impl(&dword_1C7CCA000, v101, OS_LOG_TYPE_ERROR, "New strokes %@ has no points.", buf, 0xCu);
    }

    *stroke = 0;
    goto LABEL_67;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__PKAutoRefineTask_trimTaskForNewStroke_shouldCancel___block_invoke_105;
  aBlock[3] = &unk_1E82DB258;
  aBlock[4] = self;
  v128 = _Block_copy(aBlock);
  selfCopy2 = self;
  v11 = self[5];
  if (v11 < self[4])
  {
    goto LABEL_64;
  }

  LOBYTE(v124) = 0;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v120 = vnegq_f64(v12);
  while (2)
  {
    x = v128[2](v128, v11);
    y = v13;
    r2 = v14;
    height = v15;
    v17 = selfCopy2[1];
    if (v17)
    {
      v18 = v17[1] + 32 * v11;
      v19 = *v18;
      v20 = *(v18 + 8);
      width = *(v18 + 16);
      v21 = *(v18 + 24);
      v17 = v17[10];
    }

    else
    {
      v19 = 0.0;
      v20 = 0.0;
      width = 0.0;
      v21 = 0.0;
    }

    v23 = v17;
    v24 = [v23 strokeIndexesForColumnsInRange:{v11, 1}];
    v127 = v11;
    v131 = [v24 count];

    v27 = selfCopy[1];
    if (v27)
    {
      v125 = v131;
      *v25.i64 = *(v27[7] + 8 * v11) * v131;
      rect = v25;
      v27 = v27[10];
    }

    else
    {
      *v26.i64 = v131;
      v25.i64[0] = 0;
      v125 = v131;
      rect = vbslq_s8(v120, v25, v26);
    }

    v28 = v27;
    v29 = selfCopy[1];
    if (v29)
    {
      v29 = v29[10];
    }

    v30 = v29;
    transcriptionPaths = [v30 transcriptionPaths];
    firstObject = [transcriptionPaths firstObject];
    v33 = [v28 transcriptionWithPath:firstObject columnRange:v11 filterLowConfidence:{1, 0}];

    v34 = selfCopy;
    if (v11 <= selfCopy[4])
    {
      v75 = -1;
      goto LABEL_43;
    }

    v35 = 0;
    v36 = v11 - 1;
    v37 = 32 * v127 - 16;
    while (1)
    {
      v38 = v128[2](v128, v36);
      v134 = v39;
      v136 = v38;
      v41 = v40;
      v43 = v42;
      v44 = v34[1];
      if (v44)
      {
        v44 = v44[10];
      }

      v45 = v44;
      v46 = [v45 strokeIndexesForColumnsInRange:{v36, 1}];
      v47 = [v46 count];

      v48 = v21;
      v49 = width;
      v50 = v20;
      v51 = v19;
      v52 = selfCopy;
      v53 = selfCopy[1];
      if (v53)
      {
        v54 = *(*(v53 + 56) + 8 * v36);
      }

      else
      {
        v54 = 0.0;
      }

      if (v43 >= height)
      {
        v55 = v43;
      }

      else
      {
        v55 = height;
      }

      v56 = v55 * -0.5;
      v174.origin.y = v134;
      v174.origin.x = v136;
      v174.size.width = v41;
      v174.size.height = v43;
      v175 = CGRectInset(v174, v56, 0.0);
      v196.origin.x = x;
      v196.origin.y = y;
      v196.size.width = r2;
      v196.size.height = height;
      v176 = CGRectIntersection(v175, v196);
      v57.i64[1] = rect.i64[1];
      v176.origin.y = *rect.i64 + v54 * v47;
      rect = v57;
      v131 += v47;
      if (v43 >= height)
      {
        v58 = height;
      }

      else
      {
        v58 = v43;
      }

      v19 = v51;
      v20 = v50;
      width = v49;
      v21 = v48;
      if (v176.size.height > v58 * 0.5)
      {
        goto LABEL_30;
      }

      punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
      v60 = [v33 stringByTrimmingCharactersInSet:punctuationCharacterSet];
      if (![v60 length])
      {

        v52 = selfCopy;
        goto LABEL_30;
      }

      v52 = selfCopy;
      if (height >= v43 * 0.4)
      {
        break;
      }

LABEL_30:
      v177.origin.x = x;
      v177.origin.y = y;
      v177.size.width = r2;
      v177.size.height = height;
      v197.origin.y = v134;
      v197.origin.x = v136;
      v197.size.width = v41;
      v197.size.height = v43;
      v178 = CGRectUnion(v177, v197);
      x = v178.origin.x;
      y = v178.origin.y;
      r2 = v178.size.width;
      height = v178.size.height;
      v61 = v52[1];
      if (v61)
      {
        v62 = (*(v61 + 8) + v37);
        v63 = *(v62 - 2);
        v64 = *(v62 - 1);
        v65 = *v62;
        v66 = v62[1];
      }

      else
      {
        v65 = 0;
        v66 = 0;
        v64 = 0;
        v63 = 0;
      }

      v179.origin.x = v19;
      v179.origin.y = v20;
      v179.size.width = width;
      v179.size.height = v48;
      v180 = CGRectUnion(v179, *&v63);
      v19 = v180.origin.x;
      v20 = v180.origin.y;
      width = v180.size.width;
      v21 = v180.size.height;
      v67 = v52[1];
      if (v67)
      {
        v67 = v67[10];
      }

      v68 = v67;
      v69 = v52[1];
      if (v69)
      {
        v69 = v69[10];
      }

      v70 = v69;
      transcriptionPaths2 = [v70 transcriptionPaths];
      firstObject2 = [transcriptionPaths2 firstObject];
      v73 = [v68 transcriptionWithPath:firstObject2 columnRange:v36 filterLowConfidence:{1, 0}];
      v76 = [v73 stringByAppendingString:v33];

      v34 = selfCopy;
      v37 -= 32;
      ++v35;
      v33 = v76;
      if (v36-- <= selfCopy[4])
      {
        goto LABEL_42;
      }
    }

    v76 = v33;
LABEL_42:
    v125 = v131;
    v75 = ~v35;
    v33 = v76;
LABEL_43:
    [v122 _bounds];
    v135 = v80;
    v137 = v79;
    if (*rect.i64 / v125 != 0.0)
    {
      v181.origin.x = v19;
      v181.origin.y = v20;
      v181.size.width = width;
      v181.size.height = v21;
      MidX = CGRectGetMidX(v181);
      v182.size.height = v21;
      v82 = MidX;
      v182.origin.x = v19;
      v182.origin.y = v20;
      v182.size.width = width;
      [PKPathUtility boundingBoxOfPoints:&__p rotatedAroundPoint:v82 byAngle:CGRectGetMaxY(v182), -(*rect.i64 / v125)];
      v135 = v84;
      v137 = v83;
    }

    v85 = v77;
    v86 = v78;
    v183.origin.x = x;
    v183.origin.y = y;
    v183.size.width = r2;
    v183.size.height = height;
    v87 = CGRectGetHeight(v183);
    v184.origin.x = x;
    v184.origin.y = y;
    v184.size.width = r2;
    v184.size.height = height;
    v88 = fmax(CGRectGetWidth(v184) / fmax([v33 length], 1.0), 20.0);
    if (v88 >= v87)
    {
      v89 = v88;
    }

    else
    {
      v89 = v87;
    }

    v185.origin.x = v85;
    v185.origin.y = v86;
    v185.size.width = v137;
    v185.size.height = v135;
    MinX = CGRectGetMinX(v185);
    v186.origin.x = v85;
    v186.origin.y = v86;
    v186.size.width = v137;
    v186.size.height = v135;
    MinY = CGRectGetMinY(v186);
    v187.origin.x = v85;
    v187.origin.y = v86;
    v187.size.width = v137;
    v187.size.height = v135;
    v90 = CGRectGetWidth(v187);
    v188.origin.x = v85;
    v188.origin.y = v86;
    v188.size.width = v137;
    v188.size.height = v135;
    v91 = CGRectGetHeight(v188);
    v132 = v85;
    v189.origin.x = v85;
    recta = v86;
    v189.origin.y = v86;
    v189.size.width = v137;
    v189.size.height = v135;
    v92 = CGRectGetMinY(v189);
    v190.origin.x = x;
    v190.origin.y = y;
    v190.size.width = r2;
    v190.size.height = height;
    v93 = CGRectGetWidth(v190);
    v191.origin.x = v132;
    v191.origin.y = recta;
    v191.size.height = v135;
    v191.size.width = v137;
    v94 = CGRectGetHeight(v191);
    if (v124)
    {
      v124 = 1;
    }

    else
    {
      v192.size.height = v94;
      v192.origin.x = x;
      v198.origin.y = y;
      v192.origin.y = v92;
      v192.size.width = v93;
      v198.origin.x = x;
      v198.size.width = r2;
      v198.size.height = height;
      v124 = CGRectIntersectsRect(v192, v198);
    }

    v193.origin.x = MinX + v89 * -0.5;
    v193.size.width = v89 + v90;
    v193.origin.y = MinY;
    v193.size.height = v91;
    v199.origin.x = x;
    v199.origin.y = y;
    v199.size.width = r2;
    v199.size.height = height;
    if (CGRectIntersectsRect(v193, v199))
    {
      v95 = os_log_create("com.apple.pencilkit", "AutoRefine");
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
      {
        v96 = selfCopy[1];
        if (v96)
        {
          v96 = v96[10];
        }

        v97 = v96;
        topTranscription = [v97 topTranscription];
        v194.origin.x = v132;
        v194.origin.y = recta;
        v194.size.width = v137;
        v194.size.height = v135;
        v99 = NSStringFromCGRect(v194);
        v195.origin.x = x;
        v195.origin.y = y;
        v195.size.width = r2;
        v195.size.height = height;
        v100 = NSStringFromCGRect(v195);
        *buf = 134219267;
        v162 = selfCopy;
        v163 = 2117;
        v164 = topTranscription;
        v165 = 2048;
        v166 = v127;
        v167 = 2117;
        v168 = v33;
        v169 = 2112;
        v170 = v99;
        v171 = 2112;
        v172 = v100;
        _os_log_debug_impl(&dword_1C7CCA000, v95, OS_LOG_TYPE_DEBUG, "AutoRefine Task %p with transcription _%{sensitive}@_ - column [%ld] = _%{sensitive}@_ TRIMMED by new stroke that is too close: bounds %@ vs %@", buf, 0x3Eu);
      }

      v11 = v75 + v127;
      selfCopy2 = selfCopy;
      if (v75 + v127 < selfCopy[4])
      {
LABEL_64:
        v102 = os_log_create("com.apple.pencilkit", "AutoRefine");
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
        {
          v113 = selfCopy[1];
          if (v113)
          {
            v113 = v113[10];
          }

          v114 = v113;
          topTranscription2 = [v114 topTranscription];
          *buf = 134218243;
          v162 = selfCopy;
          v163 = 2117;
          v164 = topTranscription2;
          _os_log_debug_impl(&dword_1C7CCA000, v102, OS_LOG_TYPE_DEBUG, "AutoRefine Task %p with transcription _%{sensitive}@_ CANCELED by new stroke - no safe column remaining", buf, 0x16u);
        }

        goto LABEL_65;
      }

      continue;
    }

    break;
  }

  if (v127 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_64;
  }

  v104 = v127 < selfCopy[5];
  v102 = os_log_create("com.apple.pencilkit", "AutoRefine");
  v105 = os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG);
  if (v104)
  {
    if (v105)
    {
      v106 = selfCopy[1];
      if (v106)
      {
        v106 = v106[10];
      }

      v107 = v106;
      topTranscription3 = [v107 topTranscription];
      v109 = selfCopy[5];
      *buf = 134218755;
      v162 = selfCopy;
      v163 = 2117;
      v164 = topTranscription3;
      v165 = 2048;
      v166 = v109;
      v167 = 2048;
      v168 = v127;
      _os_log_debug_impl(&dword_1C7CCA000, v102, OS_LOG_TYPE_DEBUG, "AutoRefine Task %p with transcription _%{sensitive}@_ CANCELED with last column changed from %ld to %ld", buf, 0x2Au);
    }

    goto LABEL_65;
  }

  if (v124)
  {
    if (v105)
    {
      v110 = selfCopy[1];
      if (v110)
      {
        v110 = v110[10];
      }

      v111 = v110;
      topTranscription4 = [v111 topTranscription];
      *buf = 134218243;
      v162 = selfCopy;
      v163 = 2117;
      v164 = topTranscription4;
      _os_log_debug_impl(&dword_1C7CCA000, v102, OS_LOG_TYPE_DEBUG, "AutoRefine Task %p with transcription _%{sensitive}@_ - CANCELED by new stroke that may fall on the same line of text", buf, 0x16u);
    }

LABEL_65:
    v103 = 1;
  }

  else
  {
    if (v105)
    {
      v116 = selfCopy[1];
      if (v116)
      {
        v116 = v116[10];
      }

      v117 = v116;
      topTranscription5 = [v117 topTranscription];
      v119 = selfCopy[5];
      *buf = 134218499;
      v162 = selfCopy;
      v163 = 2117;
      v164 = topTranscription5;
      v165 = 2048;
      v166 = v119;
      _os_log_debug_impl(&dword_1C7CCA000, v102, OS_LOG_TYPE_DEBUG, "AutoRefine Task %p with transcription _%{sensitive}@_ - last column [%ld] NOT TRIMMED by new stroke.", buf, 0x20u);
    }

    v103 = 0;
  }

  *stroke = v103;
LABEL_67:
  v5 = v122;
  if (__p)
  {
    v143 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v152, 8);
  if (v158)
  {
    v159 = v158;
    operator delete(v158);
  }

LABEL_71:
}

void __54__PKAutoRefineTask_trimTaskForNewStroke_shouldCancel___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v22 = v3;
  [v3 location];
  v7 = vaddq_f64(*(a1 + 72), vmlaq_n_f64(vmulq_n_f64(*(a1 + 56), v5), *(a1 + 40), v6));
  v9 = v4[7];
  v8 = v4[8];
  if (v9 >= v8)
  {
    v11 = v4[6];
    v12 = v9 - v11;
    v13 = (v9 - v11) >> 4;
    v14 = v13 + 1;
    if ((v13 + 1) >> 60)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v15 = v8 - v11;
    if (v15 >> 3 > v14)
    {
      v14 = v15 >> 3;
    }

    v16 = v15 >= 0x7FFFFFFFFFFFFFF0;
    v17 = 0xFFFFFFFFFFFFFFFLL;
    if (!v16)
    {
      v17 = v14;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>((v4 + 6), v17);
    }

    v18 = (v9 - v11) >> 4;
    v19 = (16 * v13);
    v20 = (16 * v13 - 16 * v18);
    *v19 = v7;
    f64 = v19[1].f64;
    memcpy(v20, v11, v12);
    v21 = v4[6];
    v4[6] = v20;
    v4[7] = f64;
    v4[8] = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v9 = v7;
    f64 = v9 + 16;
  }

  v4[7] = f64;
}

double __54__PKAutoRefineTask_trimTaskForNewStroke_shouldCancel___block_invoke_105(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 32) + 8);
  if (v4)
  {
    v5 = *(v4 + 32) + 32 * a2;
    v7 = *v5;
    v6 = *(v5 + 8);
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    v8 = 0.0;
    v9 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
  }

  v24.origin.x = v7;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v9;
  if (CGRectEqualToRect(v24, *MEMORY[0x1E695F050]))
  {
    v10 = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = *(v13 + 8);
      if (v14)
      {
        v14 = v14[10];
      }

      v15 = v14;
      v16 = [v15 topTranscription];
      v17 = 134218499;
      v18 = a2;
      v19 = 2048;
      v20 = v13;
      v21 = 2117;
      v22 = v16;
      _os_log_error_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_ERROR, "Rotated bounds for column %ld not available in AutoRefine Task %p with transcription _%{sensitive}@_", &v17, 0x20u);
    }

    v11 = *(*(a1 + 32) + 8);
    if (v11)
    {
      return *(*(v11 + 8) + 32 * a2);
    }

    else
    {
      return 0.0;
    }
  }

  return v7;
}

- (uint64_t)queryItemIsEqualToQueryItem:(uint64_t)item
{
  v3 = a2;
  v4 = v3;
  if (item)
  {
    if (v3)
    {
      v5 = *(v3 + 12);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = *(item + 8);
    if (v7)
    {
      v7 = v7[12];
    }

    v8 = v7;
    item = [v6 isEqualToArray:v8];
  }

  return item;
}

- (void)trimTaskForNewItem:(_BYTE *)item shouldCancel:
{
  v136 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (self)
  {
    v107 = v4;
    if (v4)
    {
      v6 = *(v4 + 10);
      v7 = v5[12];
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v8 = v7;
    v9 = self[1];
    if (v9)
    {
      v9 = v9[12];
    }

    v111 = v6;
    v10 = v9;
    v110 = [v8 differenceFromArray:v10];

    v11 = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self[1];
      if (v12)
      {
        v12 = v12[10];
      }

      v13 = v12;
      topTranscription = [v13 topTranscription];
      topTranscription2 = [v6 topTranscription];
      insertions = [v110 insertions];
      v17 = [insertions count];
      removals = [v110 removals];
      *buf = 134219011;
      selfCopy7 = self;
      v114 = 2117;
      v115 = topTranscription;
      v116 = 2117;
      v117 = topTranscription2;
      v118 = 2048;
      v119 = v17;
      v120 = 2048;
      v121 = [removals count];
      _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEFAULT, "AutoRefine Task %p with transcription %{sensitive}@ comparing with new item with transcription %{sensitive}@. different strokes +%ld, -%ld", buf, 0x34u);
    }

    removals2 = [v110 removals];
    if ([removals2 count])
    {

      removals3 = [v110 removals];
      if ([removals3 count])
      {

        removals4 = [v110 removals];
        if ([removals4 count])
        {
          removals5 = [v110 removals];
          v23 = [removals5 count];
          v24 = self[1];
          if (v24)
          {
            v24 = v24[12];
          }

          v25 = v24;
          v26 = v23 < [v25 count];

          if (v26)
          {
            v27 = os_log_create("com.apple.pencilkit", "AutoRefine");
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              v81 = self[1];
              if (v81)
              {
                v81 = v81[10];
              }

              v82 = v81;
              topTranscription3 = [v82 topTranscription];
              v84 = self[1];
              if (v84)
              {
                v84 = v84[10];
              }

              v85 = v84;
              tokenColumnCount = [v85 tokenColumnCount];
              topTranscription4 = [v111 topTranscription];
              tokenColumnCount2 = [v111 tokenColumnCount];
              *buf = 134219011;
              selfCopy7 = self;
              v114 = 2117;
              v115 = topTranscription3;
              v116 = 2048;
              v117 = tokenColumnCount;
              v118 = 2117;
              v119 = topTranscription4;
              v120 = 2048;
              v121 = tokenColumnCount2;
              _os_log_debug_impl(&dword_1C7CCA000, v27, OS_LOG_TYPE_DEBUG, "AutoRefine Task %p with transcription %{sensitive}@ (%ld columns) CANCELLED by new item with transcription %{sensitive}@ (%ld columns) that has removed strokes.", buf, 0x34u);
            }

            *item = 1;
          }
        }

        else
        {
        }
      }

      else
      {
        insertions2 = [v110 insertions];
        [insertions2 count];

        v31 = self[4];
        v108 = self[5];
        v105 = v108 + 1 - v31;
        if (v108 + 1 <= v31)
        {
          goto LABEL_46;
        }

        v32 = self[4];
        v33 = 0x7FFFFFFFFFFFFFFFLL;
        v104 = v32;
        while (v32 < [v111 tokenColumnCount])
        {
          v34 = [v111 strokeIndexesForColumnsInRange:{v32, 1}];
          v35 = self[1];
          if (v35)
          {
            v35 = v35[10];
          }

          v36 = v35;
          v37 = [v36 strokeIndexesForColumnsInRange:{v32, 1}];

          v38 = self[1];
          if (v38)
          {
            v38 = v38[10];
          }

          v39 = v38;
          v40 = self[1];
          if (v40)
          {
            v40 = v40[10];
          }

          v41 = v40;
          refinableTranscriptionPath = [v41 refinableTranscriptionPath];
          v43 = [v39 transcriptionWithPath:refinableTranscriptionPath columnRange:v32 filterLowConfidence:{1, 0}];

          refinableTranscriptionPath2 = [v111 refinableTranscriptionPath];
          v45 = [v111 transcriptionWithPath:refinableTranscriptionPath2 columnRange:v32 filterLowConfidence:{1, 0}];

          LODWORD(refinableTranscriptionPath2) = [v43 isEqualToString:v45];
          v46 = [v34 isEqualToIndexSet:v37] & refinableTranscriptionPath2;
          v47 = v32;
          if ((v46 & 1) == 0)
          {
            v48 = os_log_create("com.apple.pencilkit", "AutoRefine");
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              v51 = self[1];
              if (v51)
              {
                v51 = v51[10];
              }

              v102 = v51;
              topTranscription5 = [v102 topTranscription];
              v52 = self[1];
              if (v52)
              {
                v52 = v52[10];
              }

              v101 = v52;
              tokenColumnCount3 = [v101 tokenColumnCount];
              v97 = self[4];
              v98 = self[5];
              topTranscription6 = [v111 topTranscription];
              tokenColumnCount4 = [v111 tokenColumnCount];
              *buf = 134220803;
              selfCopy7 = self;
              v114 = 2117;
              v115 = topTranscription5;
              v116 = 2048;
              v117 = tokenColumnCount3;
              v118 = 2048;
              v119 = v97;
              v120 = 2048;
              v121 = v98;
              v122 = 2117;
              v123 = topTranscription6;
              v124 = 2048;
              v125 = tokenColumnCount4;
              v126 = 2048;
              v127 = v32;
              v128 = 2112;
              v129 = v34;
              v130 = 2112;
              v131 = v45;
              v132 = 2112;
              v133 = v37;
              v134 = 2112;
              v135 = v43;
              _os_log_debug_impl(&dword_1C7CCA000, v48, OS_LOG_TYPE_DEBUG, "AutoRefine Task %p with transcription %{sensitive}@ (%ld columns, committable range %ld-%ld) TRIMMED by new item with transcription %{sensitive}@ (%ld columns), different strokes in column %ld: %@ [%@] vs  %@ [%@]", buf, 0x7Au);
            }

            v47 = v33;
          }

          if (v108 == v32++)
          {
            v50 = 0;
          }

          else
          {
            v50 = v46;
          }

          v33 = v47;
          if ((v50 & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        v47 = v33;
LABEL_45:
        v31 = v104;
        if (v47 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_46:
          v54 = self[1];
          if (v54)
          {
            v54 = v54[10];
          }

          v55 = v54;
          v56 = self[1];
          if (v56)
          {
            v56 = v56[10];
          }

          v57 = v56;
          transcriptionPaths = [v57 transcriptionPaths];
          firstObject = [transcriptionPaths firstObject];
          v60 = [v55 transcriptionWithPath:firstObject columnRange:v31 filterLowConfidence:{v105, 0}];

          v61 = os_log_create("com.apple.pencilkit", "AutoRefine");
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
          {
            v72 = self[1];
            if (v72)
            {
              v72 = v72[10];
            }

            v109 = v72;
            topTranscription7 = [v109 topTranscription];
            v74 = self[1];
            if (v74)
            {
              v74 = v74[10];
            }

            v75 = v74;
            tokenColumnCount5 = [v75 tokenColumnCount];
            v78 = self[4];
            v77 = self[5];
            topTranscription8 = [v111 topTranscription];
            tokenColumnCount6 = [v111 tokenColumnCount];
            *buf = 134219779;
            selfCopy7 = self;
            v114 = 2117;
            v115 = topTranscription7;
            v116 = 2048;
            v117 = tokenColumnCount5;
            v118 = 2048;
            v119 = v78;
            v120 = 2048;
            v121 = v77;
            v122 = 2112;
            v123 = v60;
            v124 = 2117;
            v125 = topTranscription8;
            v126 = 2048;
            v127 = tokenColumnCount6;
            _os_log_debug_impl(&dword_1C7CCA000, v61, OS_LOG_TYPE_DEBUG, "AutoRefine Task %p with transcription %{sensitive}@ (%ld columns, committable range %ld-%ld, committable string %@) CANCELLED by new item with transcription %{sensitive}@ (%ld columns) - no column remains valid", buf, 0x52u);
          }

          *item = 1;
        }

        else
        {
          if (v47 < self[5])
          {
            v62 = self[1];
            if (v62)
            {
              v62 = v62[10];
            }

            v63 = v62;
            v64 = self[1];
            if (v64)
            {
              v64 = v64[10];
            }

            v65 = v64;
            transcriptionPaths2 = [v65 transcriptionPaths];
            firstObject2 = [transcriptionPaths2 firstObject];
            v68 = [v63 transcriptionWithPath:firstObject2 columnRange:? filterLowConfidence:?];

            v69 = os_log_create("com.apple.pencilkit", "AutoRefine");
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
            {
              v89 = self[1];
              if (v89)
              {
                v89 = v89[10];
              }

              v90 = v89;
              topTranscription9 = [v90 topTranscription];
              v92 = self[1];
              if (v92)
              {
                v92 = v92[10];
              }

              v93 = v92;
              tokenColumnCount7 = [v93 tokenColumnCount];
              v95 = self[4];
              v96 = self[5];
              *buf = 134219779;
              selfCopy7 = self;
              v114 = 2117;
              v115 = topTranscription9;
              v116 = 2048;
              v117 = tokenColumnCount7;
              v118 = 2048;
              v119 = v95;
              v120 = 2048;
              v121 = v96;
              v122 = 2048;
              v123 = v95;
              v124 = 2048;
              v125 = v47;
              v126 = 2117;
              v127 = v68;
              _os_log_debug_impl(&dword_1C7CCA000, v69, OS_LOG_TYPE_DEBUG, "AutoRefine Task %p with transcription %{sensitive}@ (%ld columns, committable range %ld-%ld) TRIMMED to committable range %ld-%ld, new string to refine = %{sensitive}@", buf, 0x52u);
            }

            self[5] = v47;
            [(PKAutoRefineTask *)self updateCommittableRange];
            v70 = os_log_create("com.apple.pencilkit", "AutoRefine");
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              v71 = self[9];
              *buf = 134218243;
              selfCopy7 = self;
              v114 = 2117;
              v115 = v71;
              _os_log_impl(&dword_1C7CCA000, v70, OS_LOG_TYPE_DEFAULT, "AutoRefine task %p just trimmed has committable transcription = _%{sensitive}@_", buf, 0x16u);
            }
          }

          *item = 0;
        }
      }
    }

    else
    {
      insertions3 = [v110 insertions];
      [insertions3 count];

      *item = 1;
      v29 = os_log_create("com.apple.pencilkit", "AutoRefine");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        selfCopy7 = self;
        _os_log_impl(&dword_1C7CCA000, v29, OS_LOG_TYPE_DEFAULT, "AutoRefine task %p should be canceled", buf, 0xCu);
      }
    }

    v5 = v107;
  }
}

- (uint64_t)isInvalidatedGivenDrawing:(void *)drawing autoRefineController:(void *)controller currentStrokes:(void *)strokes inStrokesToReplace:(void *)replace lineDrawing:(void *)lineDrawing strokeGroups:(void *)groups outStrokeGroupsToReplace:(void *)toReplace outStrokesToPreserve:
{
  v122 = *MEMORY[0x1E69E9840];
  v16 = a2;
  drawingCopy = drawing;
  controllerCopy = controller;
  strokesCopy = strokes;
  replaceCopy = replace;
  lineDrawingCopy = lineDrawing;
  if (!self)
  {
    v65 = 0;
    goto LABEL_73;
  }

  if (*(self + 104) == 1)
  {
    v17 = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      selfCopy8 = self;
      v111 = 2048;
      strokeCount = [replaceCopy strokeCount];
      _os_log_debug_impl(&dword_1C7CCA000, v17, OS_LOG_TYPE_DEBUG, "AutoRefine task %p has been canceled, invalid for updating the drawing - %ld strokes generated.", buf, 0x16u);
    }

LABEL_5:
    v87 = v17;

    goto LABEL_71;
  }

  if (!replaceCopy || ![replaceCopy strokeCount])
  {
    v17 = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      selfCopy8 = self;
      v111 = 2048;
      strokeCount = [strokesCopy count];
      _os_log_debug_impl(&dword_1C7CCA000, v17, OS_LOG_TYPE_DEBUG, "AutoRefine task %p did not generate any drawing from %ld strokes to replace.", buf, 0x16u);
    }

    goto LABEL_5;
  }

  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v22 = 0x1E695D000uLL;
  array = [MEMORY[0x1E695DF70] array];
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = lineDrawingCopy;
  v87 = array;
  v24 = [obj countByEnumeratingWithState:&v104 objects:v121 count:16];
  if (v24)
  {
    v78 = v24;
    v25 = 0;
    toReplaceCopy = toReplace;
    groupsCopy = groups;
    v79 = *v105;
    v26 = 1;
    do
    {
      for (i = 0; i != v78; ++i)
      {
        if (*v105 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v104 + 1) + 8 * i);
        array2 = [*(v22 + 3952) array];
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v29 = v27;
        v30 = [v29 countByEnumeratingWithState:&v100 objects:v120 count:16];
        if (v30)
        {
          v31 = *v101;
          while (2)
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v101 != v31)
              {
                objc_enumerationMutation(v29);
              }

              strokeUUID = [*(*(&v100 + 1) + 8 * j) strokeUUID];
              v34 = [v16 _visibleStrokeForIdentifier:strokeUUID];

              if (v25)
              {
                v25 = 1;
                if (!v34)
                {
                  goto LABEL_64;
                }
              }

              else
              {
                v25 = [(PKAutoRefineController *)drawingCopy isRefinableStroke:v34];
                if (!v34)
                {
LABEL_64:
                  v63 = os_log_create("com.apple.pencilkit", "AutoRefine");
                  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 134217984;
                    selfCopy8 = self;
                    _os_log_debug_impl(&dword_1C7CCA000, v63, OS_LOG_TYPE_DEBUG, "AutoRefine task %p cancelled because it can no longer access one of the strokes to replace.", buf, 0xCu);
                  }

                  goto LABEL_71;
                }
              }

              [v34 _bounds];
              v125.origin.x = v35;
              v125.origin.y = v36;
              v125.size.width = v37;
              v125.size.height = v38;
              v123.origin.x = x;
              v123.origin.y = y;
              v123.size.width = width;
              v123.size.height = height;
              v124 = CGRectUnion(v123, v125);
              x = v124.origin.x;
              y = v124.origin.y;
              width = v124.size.width;
              height = v124.size.height;
              [array2 addObject:v34];
            }

            v30 = [v29 countByEnumeratingWithState:&v100 objects:v120 count:16];
            if (v30)
            {
              continue;
            }

            break;
          }

          v26 = 0;
        }

        [v87 addObject:array2];
        v22 = 0x1E695D000;
      }

      v78 = [obj countByEnumeratingWithState:&v104 objects:v121 count:16];
    }

    while (v78);

    if ((v26 & 1) == 0)
    {
      if (v25)
      {
        if ([controllerCopy count])
        {
          v99 = 0;
          v95 = 0u;
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v39 = controllerCopy;
          v40 = [v39 countByEnumeratingWithState:&v95 objects:v119 count:16];
          if (v40)
          {
            v41 = *v96;
            while (2)
            {
              for (k = 0; k != v40; ++k)
              {
                if (*v96 != v41)
                {
                  objc_enumerationMutation(v39);
                }

                [(PKAutoRefineTask *)self trimTaskForNewStroke:&v99 shouldCancel:?];
                if (v99 == 1)
                {
                  v68 = os_log_create("com.apple.pencilkit", "AutoRefine");
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 134217984;
                    selfCopy8 = self;
                    _os_log_debug_impl(&dword_1C7CCA000, v68, OS_LOG_TYPE_DEBUG, "AutoRefine task %p cancelled because current stroke is being drawn nearby.", buf, 0xCu);
                  }

                  goto LABEL_71;
                }
              }

              v40 = [v39 countByEnumeratingWithState:&v95 objects:v119 count:16];
              if (v40)
              {
                continue;
              }

              break;
            }
          }
        }

        v43 = *(self + 8);
        if (v43)
        {
          v43 = v43[10];
        }

        v44 = v43;
        v82 = [v44 strokeIndexesForColumnsInRange:?];

        v45 = *(self + 8);
        if (v45)
        {
          v45 = v45[12];
        }

        v46 = v45;
        obja = [v46 objectsAtIndexes:v82];

        v47 = [MEMORY[0x1E695DFD8] setWithArray:strokesCopy];
        v48 = [MEMORY[0x1E695DFD8] setWithArray:obja];
        v49 = [v47 isSubsetOfSet:v48];

        v50 = os_log_create("com.apple.pencilkit", "AutoRefine");
        v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG);
        if (v49)
        {
          if (v51)
          {
            v69 = [strokesCopy count];
            v70 = [obja count];
            v71 = *(self + 32);
            v72 = *(self + 40);
            *buf = 134219008;
            selfCopy8 = self;
            v111 = 2048;
            strokeCount = v69;
            v113 = 2048;
            v114 = v70;
            v115 = 2048;
            v116 = v71;
            v117 = 2048;
            v118 = v72;
            _os_log_debug_impl(&dword_1C7CCA000, v50, OS_LOG_TYPE_DEBUG, "AutoRefine task %p NOT rejecting new drawing with %ld strokes to replace and %ld strokes in the commitable range [%ld-%ld].", buf, 0x34u);
          }

          if (toReplaceCopy)
          {
            v52 = *(self + 8);
            if (v52)
            {
              v52 = v52[12];
            }

            v53 = v52;
            v80 = [v53 mutableCopy];

            v54 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v80, "count")}];
            [v80 removeObjectsInArray:obja];
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            v55 = v80;
            v56 = [v55 countByEnumeratingWithState:&v91 objects:v108 count:16];
            if (v56)
            {
              v57 = *v92;
              do
              {
                for (m = 0; m != v56; ++m)
                {
                  if (*v92 != v57)
                  {
                    objc_enumerationMutation(v55);
                  }

                  strokeUUID2 = [*(*(&v91 + 1) + 8 * m) strokeUUID];
                  v60 = [v16 _visibleStrokeForIdentifier:strokeUUID2];

                  if (v60)
                  {
                    [v54 addObject:v60];
                  }
                }

                v56 = [v55 countByEnumeratingWithState:&v91 objects:v108 count:16];
              }

              while (v56);
            }

            v61 = v54;
            *toReplaceCopy = v54;
          }

          if (groupsCopy)
          {
            v62 = v87;
            *groupsCopy = v87;
          }
        }

        else
        {
          if (v51)
          {
            strokeCount2 = [replaceCopy strokeCount];
            v74 = *(self + 32);
            v75 = *(self + 40);
            *buf = 134218752;
            selfCopy8 = self;
            v111 = 2048;
            strokeCount = strokeCount2;
            v113 = 2048;
            v114 = v74;
            v115 = 2048;
            v116 = v75;
            _os_log_debug_impl(&dword_1C7CCA000, v50, OS_LOG_TYPE_DEBUG, "AutoRefine task %p rejecting new drawing with %ld strokes because some strokes to replace are not in the committable token range [%ld-%ld].", buf, 0x2Au);
          }
        }

        v65 = v49 ^ 1u;
      }

      else
      {
        v67 = os_log_create("com.apple.pencilkit", "AutoRefine");
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          selfCopy8 = self;
          _os_log_debug_impl(&dword_1C7CCA000, v67, OS_LOG_TYPE_DEBUG, "AutoRefine task %p skips committing synthetic drawing with no refinable strokes.", buf, 0xCu);
        }

        v65 = 0;
        *groupsCopy = &unk_1F47C1D90;
      }

      goto LABEL_72;
    }
  }

  else
  {
  }

  v64 = os_log_create("com.apple.pencilkit", "AutoRefine");
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    selfCopy8 = self;
    _os_log_debug_impl(&dword_1C7CCA000, v64, OS_LOG_TYPE_DEBUG, "AutoRefine task %p did not have any stroke to replace.", buf, 0xCu);
  }

LABEL_71:
  v65 = 1;
LABEL_72:

LABEL_73:
  return v65;
}

@end