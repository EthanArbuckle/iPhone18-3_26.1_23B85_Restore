@interface PKGroupQuery
+ (id)_strokesInLine:(id)a3 inDrawing:(id)a4;
- (BOOL)_strokes:(id)a3 containsAnyStrokes:(id)a4;
- (PKDrawing)drawing;
- (PKGroupQuery)initWithRecognitionSessionManager:(id)a3;
- (id)_closestLineToPoint:(CGPoint)a3 isTop:(BOOL)a4;
- (id)_lines:(id)a3 containingStrokes:(id)a4;
- (id)_strokesAtLineIndex:(int64_t)a3 containingStrokes:(id)a4;
- (id)_strokesForIdentifiers:(id)a3 inDrawing:(id)a4;
- (id)_strokesInLine:(id)a3 leftOf:(BOOL)a4 point:(CGPoint)a5;
- (id)fetchCurrentHandwritingStrokeUUIDs;
- (id)firstStrokesInStrokes:(id)a3 isRTL:(BOOL)a4;
- (id)handwritingStrokeUUIDs;
- (id)lastStrokesInStrokes:(id)a3 isRTL:(BOOL)a4;
- (id)strokeGroups;
- (int64_t)_firstLineIndexFromInitialStrokes:(id)a3;
- (int64_t)_lastLineIndexFromInitialStrokes:(id)a3;
- (int64_t)_tokenizationLevelForSelectionType:(int64_t)a3;
- (int64_t)contentTypeForIntersectedStrokes:(id)a3;
- (void)_precalculateStrokeGroupProperties:(id)a3;
- (void)dealloc;
- (void)fetchCurrentStrokeGroupItems:(id)a3;
- (void)pause;
- (void)q_fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes:(id)a3 completion:(id)a4;
- (void)q_fetchStrokesBetweenTopPoint:(CGPoint)a3 bottomPoint:(CGPoint)a4 isRTL:(BOOL)a5 completion:(id)a6;
- (void)q_fetchStrokesForPoint:(CGPoint)a3 selectionType:(int64_t)a4 inputType:(int64_t)a5 visibleOnscreenStrokes:(id)a6 completion:(id)a7;
- (void)queryDidUpdateResult:(id)a3;
- (void)setHandwritingStrokeUUIDs:(id)a3;
- (void)setMathPreferredUpdatesInterval:(double)a3;
- (void)setStrokeGroups:(id)a3;
- (void)start;
- (void)teardown;
- (void)textStrokesCoveredByStroke:(id)a3 completion:(id)a4;
@end

@implementation PKGroupQuery

- (PKGroupQuery)initWithRecognitionSessionManager:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = PKGroupQuery;
  v5 = [(PKQuery *)&v24 initWithRecognitionSessionManager:v4];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E6997BB8]);
    v7 = [(PKRecognitionSessionManager *)v4 session];
    v8 = [v6 initWithRecognitionSession:v7];
    strokeGroupQuery = v5->_strokeGroupQuery;
    v5->_strokeGroupQuery = v8;

    [(CHStrokeGroupQuery *)v5->_strokeGroupQuery preferredUpdatesInterval];
    v5->_defaultUpdatesInterval = v10;
    v11 = [(PKGroupQuery *)v5 strokeGroupQuery];
    [v11 setDelegate:v5];

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_USER_INITIATED, 0);

    v14 = dispatch_queue_create("com.apple.PencilKit.GroupQueryIntersection", v13);
    intersectionQueue = v5->_intersectionQueue;
    v5->_intersectionQueue = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.PencilKit.GroupQueryStrokeGroupComputation", v16);
    strokeGroupComputationQueue = v5->_strokeGroupComputationQueue;
    v5->_strokeGroupComputationQueue = v17;
  }

  v19 = [MEMORY[0x1E695E000] standardUserDefaults];
  v20 = [v19 BOOLForKey:@"internalSettings.drawing.forceFastGroupingForLassolessSelection"];

  if (v20)
  {
    v21 = [(PKQuery *)v5 sessionManager];
    v22 = [(PKRecognitionSessionManager *)v21 session];
    [v22 setShouldForceFastGrouping:1];
  }

  return v5;
}

- (void)setMathPreferredUpdatesInterval:(double)a3
{
  defaultUpdatesInterval = a3;
  v12 = *MEMORY[0x1E69E9840];
  if (a3 == 0.0)
  {
    defaultUpdatesInterval = self->_defaultUpdatesInterval;
  }

  v5 = os_log_create("com.apple.pencilkit", "Math");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_defaultUpdatesInterval;
    v8 = 134218240;
    v9 = defaultUpdatesInterval;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Update preferred updates interval: %g, default: %g", &v8, 0x16u);
  }

  v7 = [(PKGroupQuery *)self strokeGroupQuery];
  [v7 setPreferredUpdatesInterval:defaultUpdatesInterval];
}

- (void)fetchCurrentStrokeGroupItems:(id)a3
{
  v8 = a3;
  v4 = [(PKGroupQuery *)self strokeGroups];
  v5 = v4;
  v6 = MEMORY[0x1E695E0F0];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8[2](v8, v7);
}

- (void)setStrokeGroups:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  strokeGroups = v4->_strokeGroups;
  v4->_strokeGroups = v5;

  objc_sync_exit(v4);
}

- (id)strokeGroups
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_strokeGroups;
  objc_sync_exit(v2);

  return v3;
}

- (id)fetchCurrentHandwritingStrokeUUIDs
{
  v2 = [(PKGroupQuery *)self handwritingStrokeUUIDs];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFD8] set];
  }

  v5 = v4;

  return v5;
}

- (void)setHandwritingStrokeUUIDs:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  handwritingStrokeUUIDs = obj->_handwritingStrokeUUIDs;
  obj->_handwritingStrokeUUIDs = v4;

  objc_sync_exit(obj);
}

- (id)handwritingStrokeUUIDs
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_handwritingStrokeUUIDs;
  objc_sync_exit(v2);

  return v3;
}

- (void)start
{
  v2 = [(PKGroupQuery *)self strokeGroupQuery];
  [v2 start];
}

- (void)pause
{
  v2 = [(PKGroupQuery *)self strokeGroupQuery];
  [v2 pause];
}

- (void)teardown
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__PKGroupQuery_teardown__block_invoke;
  block[3] = &unk_1E82D6388;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKGroupQuery;
  [(PKGroupQuery *)&v2 dealloc];
}

- (PKDrawing)drawing
{
  v2 = [(PKQuery *)self sessionManager];
  v3 = [(PKRecognitionSessionManager *)v2 drawing];

  return v3;
}

- (void)queryDidUpdateResult:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [a3 strokeGroupItems];
  v5 = os_log_create("com.apple.pencilkit", "Recognition");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 count];
    v7 = [(PKQuery *)self sessionManager];
    v8 = 138412802;
    v9 = self;
    v10 = 2048;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "StateUpdate: Did update group query results for %@ with %lu stroke group items for session manager %@", &v8, 0x20u);
  }

  [(PKGroupQuery *)self _precalculateStrokeGroupProperties:v4];
}

- (void)textStrokesCoveredByStroke:(id)a3 completion:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _PKSignpostLog();
  v9 = os_signpost_id_generate(v8);

  v10 = _PKSignpostLog();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "textStrokesCoveredByStroke", "", buf, 2u);
  }

  v12 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, v12, OS_LOG_TYPE_INFO, "BEGIN textStrokesCoveredByStroke", buf, 2u);
  }

  v24[0] = v6;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v14 = [PKStrokeProvider slicesForStrokes:v13];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__PKGroupQuery_textStrokesCoveredByStroke_completion___block_invoke;
  aBlock[3] = &unk_1E82D62E8;
  aBlock[4] = self;
  v22 = v9;
  v15 = v7;
  v21 = v15;
  v16 = _Block_copy(aBlock);
  v17 = [(PKGroupQuery *)self strokeGroupQuery];
  v18 = [v14 objectAtIndex:0];
  v19 = [v17 tokenStrokeIdentifiersWithCoveringStroke:v18 completion:v16 shouldCancel:0];
}

void __54__PKGroupQuery_textStrokesCoveredByStroke_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.pencilkit", "Actions");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 strokeIdentifiers];
    v9 = [v8 allObjects];
    v23 = 134217984;
    v24 = [v9 count];
    _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Scratch Out will delete %lu text strokes.", &v23, 0xCu);
  }

  v10 = *(a1 + 32);
  v11 = [v5 strokeIdentifiers];
  v12 = [v11 allObjects];
  v13 = [*(a1 + 32) drawing];
  v14 = [v10 _strokesForIdentifiers:v12 inDrawing:v13];

  v15 = *(a1 + 32);
  v16 = [v6 allObjects];
  v17 = [*(a1 + 32) drawing];
  v18 = [v15 _strokesForIdentifiers:v16 inDrawing:v17];

  v19 = _PKSignpostLog();
  v20 = v19;
  v21 = *(a1 + 48);
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    LOWORD(v23) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v20, OS_SIGNPOST_INTERVAL_END, v21, "textStrokesCoveredByStroke", "", &v23, 2u);
  }

  v22 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_1C7CCA000, v22, OS_LOG_TYPE_INFO, "END textStrokesCoveredByStroke", &v23, 2u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v14, v18, [v5 resultLevel] == 0);
}

- (void)_precalculateStrokeGroupProperties:(id)a3
{
  v4 = a3;
  v5 = [(PKGroupQuery *)self drawing];
  v6 = [v5 copy];

  v7 = [v4 copy];
  strokeGroupComputationQueue = self->_strokeGroupComputationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PKGroupQuery__precalculateStrokeGroupProperties___block_invoke;
  block[3] = &unk_1E82D6400;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(strokeGroupComputationQueue, block);
}

void __51__PKGroupQuery__precalculateStrokeGroupProperties___block_invoke(uint64_t a1)
{
  v26 = [MEMORY[0x1E695DFA8] set];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  for (i = 0; i < [*(a1 + 32) count]; ++i)
  {
    v4 = [*(a1 + 32) objectAtIndexedSubscript:i];
    v5 = [PKGroupQuery _strokesInLine:v4 inDrawing:*(a1 + 40)];
    [PKDrawing _boundingBoxForStrokeArray:v5];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    if ([v4 strokeGroupType] == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    v15 = objc_alloc_init(PKStrokeGroupItem);
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_strokeGroupItem, v4);
      objc_setProperty_nonatomic_copy(v16, v17, v5, 16);
      v16->_bounds.origin.x = v7;
      v16->_bounds.origin.y = v9;
      v16->_bounds.size.width = v11;
      v16->_bounds.size.height = v13;
      v16->_contentType = v14;
    }

    [v2 addObject:v16];
    if ([v4 strokeGroupType] == 1)
    {
      v18 = [v4 mathResult];
      if (!v18 || ([v4 mathResult], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "hasLowConfidence"), v19, v18, v20))
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __51__PKGroupQuery__precalculateStrokeGroupProperties___block_invoke_2;
        v27[3] = &unk_1E82D6310;
        v28 = v26;
        [v5 enumerateObjectsUsingBlock:v27];
      }
    }
  }

  [*(a1 + 48) setStrokeGroups:v2];
  [*(a1 + 48) setHandwritingStrokeUUIDs:v26];
  v21 = [*(a1 + 48) delegate];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    v23 = [*(a1 + 48) delegate];
    v24 = *(a1 + 48);
    v25 = [v2 copy];
    [v23 groupQuery:v24 foundItems:v25];
  }
}

void __51__PKGroupQuery__precalculateStrokeGroupProperties___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 _strokeUUID];
  [v2 addObject:?];
}

- (id)_strokesForIdentifiers:(id)a3 inDrawing:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) strokeUUID];
        v13 = [v6 _visibleStrokeForIdentifier:v12];

        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v7;
}

+ (id)_strokesInLine:(id)a3 inDrawing:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v17 = v5;
  v7 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v5 strokeIdentifiers];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v19 + 1) + 8 * v11) strokeUUID];
        v13 = [v6 _visibleStrokeForIdentifier:v12];

        if (v13)
        {
          [v7 addObject:v13];
        }

        else
        {
          v14 = os_log_create("com.apple.pencilkit", "");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_ERROR, "Unable to find stroke from stroke group in drawing.", buf, 2u);
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v15 = [v7 copy];

  return v15;
}

- (id)_lines:(id)a3 containingStrokes:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        if (v13)
        {
          v14 = *(v13 + 16);
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;
        if ([(PKGroupQuery *)self _strokes:v15 containsAnyStrokes:v7, v18])
        {
          [v8 addObject:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v16 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v10 = v16;
    }

    while (v16);
  }

  return v8;
}

- (BOOL)_strokes:(id)a3 containsAnyStrokes:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v22 = a4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v21 = *v28;
    do
    {
      v20 = v7;
      for (i = 0; i != v20; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v10 = v22;
        v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v11)
        {
          v12 = *v24;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v24 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v23 + 1) + 8 * j);
              v15 = [v9 _strokeUUID];
              v16 = [v14 _strokeUUID];
              v17 = [v15 isEqual:v16];

              if (v17)
              {

                v18 = 1;
                goto LABEL_19;
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
      v18 = 0;
    }

    while (v7);
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  return v18;
}

- (void)q_fetchStrokesForPoint:(CGPoint)a3 selectionType:(int64_t)a4 inputType:(int64_t)a5 visibleOnscreenStrokes:(id)a6 completion:(id)a7
{
  y = a3.y;
  x = a3.x;
  v13 = a6;
  v14 = a7;
  v15 = objc_alloc_init(PKIntersectionResult);
  v16 = [(PKQuery *)self sessionManager];
  if ([v16 state] == 3)
  {
    v17 = 3;
  }

  else
  {
    v17 = 2;
  }

  [(PKIntersectionResult *)v15 setIntersectionAlgorithmType:v17];

  if (a4 == 6 || !a4)
  {
    v14[2](v14, 0);
  }

  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy_;
  v35[4] = __Block_byref_object_dispose_;
  v36 = [(PKGroupQuery *)self strokeGroupQuery];
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy_;
  v33[4] = __Block_byref_object_dispose_;
  v34 = [(PKGroupQuery *)self drawing];
  intersectionQueue = self->_intersectionQueue;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __97__PKGroupQuery_q_fetchStrokesForPoint_selectionType_inputType_visibleOnscreenStrokes_completion___block_invoke;
  v22[3] = &unk_1E82D6360;
  v29 = x;
  v30 = y;
  v23 = v13;
  v24 = v15;
  v25 = self;
  v26 = v14;
  v31 = a5;
  v32 = a4;
  v27 = v35;
  v28 = v33;
  v19 = v14;
  v20 = v15;
  v21 = v13;
  dispatch_async(intersectionQueue, v22);

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v35, 8);
}

void __97__PKGroupQuery_q_fetchStrokesForPoint_selectionType_inputType_visibleOnscreenStrokes_completion___block_invoke(uint64_t a1)
{
  v2 = [PKClusteringUtility _geometricBasedStrokeClusteringFromPoint:*(a1 + 32) visibleStrokes:1 selectionType:*(a1 + 96) inputType:*(a1 + 80), *(a1 + 88)];
  if ([v2 count])
  {
    v3 = [*(a1 + 48) _tokenizationLevelForSelectionType:*(a1 + 104)];
    v4 = *(*(*(a1 + 64) + 8) + 40);
    v5 = [PKStrokeProvider _identifiersForStrokes:v2];
    v6 = *(a1 + 80);
    v7 = *(a1 + 88);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __97__PKGroupQuery_q_fetchStrokesForPoint_selectionType_inputType_visibleOnscreenStrokes_completion___block_invoke_3;
    v14[3] = &unk_1E82D6338;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v15[0] = v8;
    v15[1] = v9;
    v10 = *(a1 + 104);
    v19 = *(a1 + 72);
    v20 = v10;
    v16 = *(a1 + 32);
    v17 = v2;
    v18 = *(a1 + 56);
    v11 = [v4 tokenizedStrokeResultForInitialStrokes:v5 point:v3 tokenizationLevel:v14 completion:0 shouldCancel:{v6, v7}];
    v12 = v15;

    v13 = v16;
  }

  else
  {
    [*(a1 + 40) setIntersectedStrokes:v2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__PKGroupQuery_q_fetchStrokesForPoint_selectionType_inputType_visibleOnscreenStrokes_completion___block_invoke_2;
    block[3] = &unk_1E82D63D8;
    v12 = &v23;
    v23 = *(a1 + 56);
    v22 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v13 = v22;
  }
}

uint64_t __97__PKGroupQuery_q_fetchStrokesForPoint_selectionType_inputType_visibleOnscreenStrokes_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __97__PKGroupQuery_q_fetchStrokesForPoint_selectionType_inputType_visibleOnscreenStrokes_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 resultLevel] == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = [*(a1 + 32) intersectionAlgorithmType];
  }

  [*(a1 + 32) setIntersectionAlgorithmType:v4];
  v5 = *(a1 + 40);
  v6 = [v3 strokeIdentifiers];
  v7 = [v6 allObjects];
  v8 = [v5 _strokesForIdentifiers:v7 inDrawing:*(*(*(a1 + 72) + 8) + 40)];

  v9 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v8];
  v10 = v9;
  if (*(a1 + 80) == 5)
  {
    v11 = [MEMORY[0x1E695DFA0] orderedSetWithOrderedSet:v9];
    [v11 addObjectsFromArray:*(a1 + 48)];
  }

  else
  {
    v11 = v9;
  }

  v12 = [MEMORY[0x1E695DFA0] orderedSetWithOrderedSet:v11];
  if (([v12 intersectsOrderedSet:*(a1 + 56)] & 1) == 0)
  {
    [v12 unionOrderedSet:*(a1 + 56)];
    v13 = v12;

    v11 = v13;
  }

  [*(a1 + 32) setIntersectedStrokes:v11];
  [*(a1 + 32) setContentType:{objc_msgSend(*(a1 + 40), "contentTypeForIntersectedStrokes:", v11)}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __97__PKGroupQuery_q_fetchStrokesForPoint_selectionType_inputType_visibleOnscreenStrokes_completion___block_invoke_4;
  v14[3] = &unk_1E82D63D8;
  v16 = *(a1 + 64);
  v15 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

uint64_t __97__PKGroupQuery_q_fetchStrokesForPoint_selectionType_inputType_visibleOnscreenStrokes_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (int64_t)_tokenizationLevelForSelectionType:(int64_t)a3
{
  if ((a3 - 2) > 3)
  {
    return 0;
  }

  else
  {
    return qword_1C801C140[a3 - 2];
  }
}

- (id)_closestLineToPoint:(CGPoint)a3 isTop:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v41 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [(PKGroupQuery *)self strokeGroups];
  v7 = 0;
  v8 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v8)
  {
    v30 = *v36;
    v9 = 1.79769313e308;
    do
    {
      v10 = 0;
      do
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v35 + 1) + 8 * v10);
        if (v11)
        {
          v12 = v11[2];
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v15)
        {
          v16 = *v32;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v32 != v16)
              {
                objc_enumerationMutation(v14);
              }

              [*(*(&v31 + 1) + 8 * i) _bounds];
              v18 = v43.origin.x;
              v19 = v43.origin.y;
              width = v43.size.width;
              height = v43.size.height;
              MidX = CGRectGetMidX(v43);
              v44.origin.x = v18;
              v44.origin.y = v19;
              v44.size.width = width;
              v44.size.height = height;
              MidY = CGRectGetMidY(v44);
              v24 = MidY <= y;
              if (!v4)
              {
                v24 = MidY >= y;
              }

              if (!v24)
              {
                v25 = sqrt((MidY - y) * (MidY - y) + (MidX - x) * (MidX - x));
                if (v25 < v9)
                {
                  v26 = v11;

                  v7 = v26;
                  v9 = v25;
                }
              }
            }

            v15 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v15);
        }

        ++v10;
      }

      while (v10 != v8);
      v27 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      v8 = v27;
    }

    while (v27);
  }

  return v7;
}

- (void)q_fetchStrokesBetweenTopPoint:(CGPoint)a3 bottomPoint:(CGPoint)a4 isRTL:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  y = a4.y;
  x = a4.x;
  v9 = a3.y;
  v10 = a3.x;
  v12 = a6;
  v13 = [(PKGroupQuery *)self strokeGroups];
  if (v13)
  {
    v14 = [(PKGroupQuery *)self strokeGroups];
    v15 = [v14 count];

    if (v15)
    {
      v49 = v12;
      v16 = [(PKGroupQuery *)self _closestLineToPoint:1 isTop:v10, v9];
      v17 = [(PKGroupQuery *)self _closestLineToPoint:0 isTop:x, y];
      v18 = [(PKGroupQuery *)self strokeGroups];
      v19 = [v18 indexOfObject:v16];

      v20 = [(PKGroupQuery *)self strokeGroups];
      v21 = [v20 indexOfObject:v17];

      if (!(v16 | v17))
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __75__PKGroupQuery_q_fetchStrokesBetweenTopPoint_bottomPoint_isRTL_completion___block_invoke;
        block[3] = &unk_1E82D63B0;
        v57 = v12;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }

      v22 = v16 != 0;
      v23 = v17 == 0;
      if (v17)
      {
        v24 = v16 == 0;
      }

      else
      {
        v24 = 0;
      }

      if (v24)
      {
        v25 = v21;
      }

      else
      {
        v25 = v19;
      }

      if (v22 && v23)
      {
        v26 = v19;
      }

      else
      {
        v26 = v21;
      }

      if (v22 && v23)
      {
        v27 = v19;
      }

      else
      {
        v27 = v25;
      }

      if (v26 < v27)
      {
        v28 = v16;

        v26 = v27;
        v17 = v28;
      }

      if (v16)
      {
        v29 = *(v16 + 24);
        if (v17)
        {
LABEL_21:
          v30 = *(v17 + 24);
LABEL_22:
          v48 = v6;
          v31 = [MEMORY[0x1E695DFA0] orderedSet];
          if (v29 == v30)
          {
            v32 = v29;
          }

          else
          {
            v32 = 3;
          }

          v33 = v27 + 1;
          if (v27 + 1 < v26)
          {
            do
            {
              v34 = [(PKGroupQuery *)self strokeGroups];
              v35 = [v34 objectAtIndexedSubscript:v33];

              if (v35)
              {
                v36 = v35[2];
              }

              else
              {
                v36 = 0;
              }

              v37 = v36;
              [v31 addObjectsFromArray:v37];

              if (v32 != 3)
              {
                v38 = v35 ? v35[3] : 0;
                if (v38 != v32)
                {
                  v32 = 3;
                }
              }

              ++v33;
            }

            while (v26 != v33);
          }

          v41 = v31;
          v51 = [v41 mutableCopy];
          v50 = [(PKGroupQuery *)self _strokesInLine:v16 leftOf:v48 point:v10, v9];
          v42 = [(PKGroupQuery *)self _strokesInLine:v17 leftOf:!v48 point:x, y];
          if (v16 == v17)
          {
            v43 = [v50 mutableCopy];
            [v43 intersectOrderedSet:v42];
            [v51 unionOrderedSet:v43];
          }

          else
          {
            [v51 unionOrderedSet:v50];
            [v51 unionOrderedSet:v42];
          }

          v39 = v51;

          v40 = objc_alloc_init(PKIntersectionResult);
          [(PKIntersectionResult *)v40 setIntersectedStrokes:v39];
          v44 = [(PKQuery *)self sessionManager];
          if ([v44 state] == 3)
          {
            v45 = 3;
          }

          else
          {
            v45 = 2;
          }

          [(PKIntersectionResult *)v40 setIntersectionAlgorithmType:v45];

          [(PKIntersectionResult *)v40 setContentType:v32];
          v12 = v49;
          goto LABEL_47;
        }
      }

      else
      {
        v29 = 0;
        if (v17)
        {
          goto LABEL_21;
        }
      }

      v30 = 0;
      goto LABEL_22;
    }
  }

  v16 = os_log_create("com.apple.pencilkit", "Recognition");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, v16, OS_LOG_TYPE_DEFAULT, "No recognition results available", buf, 2u);
  }

  v39 = 0;
  v40 = 0;
LABEL_47:

  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __75__PKGroupQuery_q_fetchStrokesBetweenTopPoint_bottomPoint_isRTL_completion___block_invoke_37;
  v52[3] = &unk_1E82D63D8;
  v53 = v40;
  v54 = v12;
  v46 = v40;
  v47 = v12;
  dispatch_async(MEMORY[0x1E69E96A0], v52);
}

- (id)_strokesInLine:(id)a3 leftOf:(BOOL)a4 point:(CGPoint)a5
{
  x = a5.x;
  v6 = a4;
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  if (v7)
  {
    v9 = v7[2];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        [v14 _bounds];
        v15 = v30.origin.x;
        y = v30.origin.y;
        width = v30.size.width;
        height = v30.size.height;
        MidX = CGRectGetMidX(v30);
        v31.origin.x = v15;
        v31.origin.y = y;
        v31.size.width = width;
        v31.size.height = height;
        MidY = CGRectGetMidY(v31);
        v21 = MidX < x;
        if (!v6)
        {
          v21 = MidX > x;
        }

        if (v21)
        {
          [v8 addObject:{v14, MidY}];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  return v8;
}

- (int64_t)_firstLineIndexFromInitialStrokes:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 array];
  for (i = 0; ; ++i)
  {
    v7 = [(PKGroupQuery *)self strokeGroups];
    v8 = i < [v7 count];

    if (!v8)
    {
      break;
    }

    v9 = [(PKGroupQuery *)self strokeGroups];
    v10 = [v9 objectAtIndexedSubscript:i];

    v14[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v12 = [(PKGroupQuery *)self _lines:v11 containingStrokes:v5];

    LOBYTE(v11) = [v12 count] == 1;
    if (v11)
    {
      goto LABEL_6;
    }
  }

  i = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:

  return i;
}

- (int64_t)_lastLineIndexFromInitialStrokes:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 array];
  v5 = [(PKGroupQuery *)self strokeGroups];
  v6 = [v5 count];

  while (--v6 >= 0)
  {
    v7 = [(PKGroupQuery *)self strokeGroups];
    v8 = [v7 objectAtIndexedSubscript:v6];

    v12[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v10 = [(PKGroupQuery *)self _lines:v9 containingStrokes:v4];

    LOBYTE(v9) = [v10 count] == 1;
    if (v9)
    {
      goto LABEL_6;
    }
  }

  v6 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:

  return v6;
}

- (id)firstStrokesInStrokes:(id)a3 isRTL:(BOOL)a4
{
  v6 = a3;
  v7 = [(PKGroupQuery *)self strokeGroups];
  v8 = v7;
  if (v7 && [v7 count] && (v9 = -[PKGroupQuery _firstLineIndexFromInitialStrokes:](self, "_firstLineIndexFromInitialStrokes:", v6), v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v12 = [(PKGroupQuery *)self _strokesAtLineIndex:v9 containingStrokes:v6];
    v13 = [v12 mutableCopy];
    v14 = [v8 objectAtIndexedSubscript:v9];
    if (v14)
    {
      v28 = v14[4];
      v29 = v14[5];
      v15 = v14[6];
      v16 = v14[7];
    }

    else
    {
      v28 = 0.0;
      v29 = 0.0;
      v15 = 0.0;
      v16 = 0.0;
    }

    while (v9 < [v8 count])
    {
      v17 = [v8 objectAtIndexedSubscript:v9];
      if (v17)
      {
        v19 = v17[4];
        v18 = v17[5];
        v20 = v17[6];
        v21 = v17[7];
      }

      else
      {
        v18 = 0.0;
        v20 = 0.0;
        v21 = 0.0;
        v19 = 0.0;
      }

      v31.origin.x = v19;
      v31.origin.y = v18;
      v31.size.width = v20;
      v31.size.height = v21;
      MinY = CGRectGetMinY(v31);
      v32.origin.x = v28;
      v32.origin.y = v29;
      v32.size.width = v15;
      v32.size.height = v16;
      v23 = CGRectGetMinY(v32);
      v33.origin.x = v19;
      v33.origin.y = v18;
      v33.size.width = v20;
      v33.size.height = v21;
      v34.origin.x = v28;
      v34.origin.y = v29;
      v34.size.width = v15;
      v34.size.height = v16;
      v24 = CGRectIntersectsRect(v33, v34);
      if (MinY - v23 < 20.0 && v24)
      {
        v26 = [(PKGroupQuery *)self _strokesAtLineIndex:v9 containingStrokes:v6, MinY - v23];
        v27 = v26;
        if (v26 && [v26 count])
        {
          [v13 unionOrderedSet:v27];
        }
      }

      ++v9;
    }

    if (a4)
    {
      [PKDrawing _findRightmostStrokes:v13];
    }

    else
    {
      [PKDrawing _findLeftmostStrokes:v13];
    }
    v10 = ;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_strokesAtLineIndex:(int64_t)a3 containingStrokes:(id)a4
{
  v6 = a4;
  v7 = [(PKGroupQuery *)self strokeGroups];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    v14 = 0;
  }

  else
  {
    v9 = [(PKGroupQuery *)self strokeGroups];
    v10 = [v9 objectAtIndexedSubscript:a3];
    v11 = v10;
    if (v10)
    {
      v12 = *(v10 + 16);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = [MEMORY[0x1E695DFA0] orderedSetWithArray:v13];
    [v14 intersectOrderedSet:v6];
  }

  return v14;
}

- (id)lastStrokesInStrokes:(id)a3 isRTL:(BOOL)a4
{
  v6 = a3;
  v7 = [(PKGroupQuery *)self strokeGroups];
  v8 = v7;
  if (v7 && [v7 count] && (v9 = -[PKGroupQuery _lastLineIndexFromInitialStrokes:](self, "_lastLineIndexFromInitialStrokes:", v6), v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v12 = [(PKGroupQuery *)self _strokesAtLineIndex:v9 containingStrokes:v6];
    v13 = [v12 mutableCopy];
    v14 = [v8 objectAtIndexedSubscript:v9];
    if (v14)
    {
      v29 = v14[4];
      v30 = v14[5];
      v15 = v14[6];
      v16 = v14[7];
    }

    else
    {
      v29 = 0.0;
      v30 = 0.0;
      v15 = 0.0;
      v16 = 0.0;
    }

    if ((v9 & 0x8000000000000000) == 0)
    {
      do
      {
        v17 = [v8 objectAtIndexedSubscript:{v9, *&v29, *&v30}];
        if (v17)
        {
          v19 = v17[4];
          v18 = v17[5];
          v20 = v17[6];
          v21 = v17[7];
        }

        else
        {
          v18 = 0.0;
          v20 = 0.0;
          v21 = 0.0;
          v19 = 0.0;
        }

        v32.origin.x = v19;
        v32.origin.y = v18;
        v32.size.width = v20;
        v32.size.height = v21;
        MaxY = CGRectGetMaxY(v32);
        v33.origin.x = v29;
        v33.origin.y = v30;
        v33.size.width = v15;
        v33.size.height = v16;
        v23 = CGRectGetMaxY(v33);
        v34.origin.x = v19;
        v34.origin.y = v18;
        v34.size.width = v20;
        v34.size.height = v21;
        v35.origin.x = v29;
        v35.origin.y = v30;
        v35.size.width = v15;
        v35.size.height = v16;
        v24 = CGRectIntersectsRect(v34, v35);
        if (MaxY - v23 > -20.0 && v24)
        {
          v26 = [(PKGroupQuery *)self _strokesAtLineIndex:v9 containingStrokes:v6, MaxY - v23];
          v27 = v26;
          if (v26 && [v26 count])
          {
            [v13 unionOrderedSet:v27];
          }
        }
      }

      while (v9-- > 0);
    }

    if (a4)
    {
      [PKDrawing _findLeftmostStrokes:v13];
    }

    else
    {
      [PKDrawing _findRightmostStrokes:v13];
    }
    v10 = ;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)q_fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes:(id)a3 completion:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v43 = a3;
  v6 = a4;
  v7 = [(PKGroupQuery *)self strokeGroups];
  if (v7 && (-[PKGroupQuery strokeGroups](self, "strokeGroups"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v7, v9))
  {
    v10 = [MEMORY[0x1E695DFA0] orderedSet];
    v11 = [MEMORY[0x1E695DFA0] orderedSet];
    v12 = [(PKGroupQuery *)self strokeGroups];
    v13 = [(PKGroupQuery *)self _lines:v12 containingStrokes:v43];

    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v18 = v13;
    v19 = [v18 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v19)
    {
      v20 = *v49;
      do
      {
        v21 = 0;
        do
        {
          if (*v49 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v48 + 1) + 8 * v21);
          if (v22)
          {
            v23 = v22[2];
          }

          else
          {
            v23 = 0;
          }

          v24 = v23;
          [v10 addObjectsFromArray:v24];

          if (v22)
          {
            v25 = v22[4];
            v26 = v22[5];
            v27 = v22[6];
            v28 = v22[7];
          }

          else
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v25 = 0;
          }

          v55.origin.x = x;
          v55.origin.y = y;
          v55.size.width = width;
          v55.size.height = height;
          v56 = CGRectUnion(v55, *&v25);
          x = v56.origin.x;
          y = v56.origin.y;
          width = v56.size.width;
          height = v56.size.height;
          ++v21;
        }

        while (v19 != v21);
        v29 = [v18 countByEnumeratingWithState:&v48 objects:v53 count:16];
        v19 = v29;
      }

      while (v29);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v30 = [(PKGroupQuery *)self strokeGroups];
    v31 = [v30 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v31)
    {
      v32 = y + -20.0;
      v33 = *v45;
      do
      {
        v34 = 0;
        do
        {
          if (*v45 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v44 + 1) + 8 * v34);
          if (([v18 containsObject:v35] & 1) == 0)
          {
            if (v35)
            {
              v36 = v35[4];
              v37 = v35[5];
              v38 = v35[6];
              v39 = v35[7];
            }

            else
            {
              v37 = 0;
              v38 = 0;
              v39 = 0;
              v36 = 0;
            }

            v57.origin.x = x;
            v57.origin.y = v32;
            v57.size.width = width;
            v57.size.height = 40.0;
            if (CGRectIntersectsRect(*&v36, v57))
            {
              if (v35)
              {
                v40 = v35[2];
              }

              else
              {
                v40 = 0;
              }

              v41 = v40;
              [v11 addObjectsFromArray:v41];
            }
          }

          ++v34;
        }

        while (v31 != v34);
        v42 = [v30 countByEnumeratingWithState:&v44 objects:v52 count:16];
        v31 = v42;
      }

      while (v42);
    }

    v6[2](v6, v10, v11);
  }

  else
  {
    v6[2](v6, 0, 0);
  }
}

- (int64_t)contentTypeForIntersectedStrokes:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(PKGroupQuery *)self strokeGroups];
  obj = v5;
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        if (v10)
        {
          v11 = *(v10 + 16);
        }

        else
        {
          v11 = 0;
        }

        v12 = MEMORY[0x1E695DFB8];
        v13 = v11;
        v14 = [v12 orderedSetWithArray:v13];
        v15 = [v4 intersectsOrderedSet:v14];

        if (v15)
        {
          if (v6)
          {
            if (v10)
            {
              v16 = *(v10 + 24);
            }

            else
            {
              v16 = 0;
            }

            if (v6 != v16)
            {
              v6 = 3;
              v5 = obj;
              goto LABEL_22;
            }
          }

          else if (v10)
          {
            v6 = *(v10 + 24);
          }

          else
          {
            v6 = 0;
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v5 = obj;
      v17 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      v7 = v17;
    }

    while (v17);
  }

LABEL_22:

  return v6;
}

@end