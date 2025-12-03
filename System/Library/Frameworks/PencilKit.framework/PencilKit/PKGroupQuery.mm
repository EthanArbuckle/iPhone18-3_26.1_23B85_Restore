@interface PKGroupQuery
+ (id)_strokesInLine:(id)line inDrawing:(id)drawing;
- (BOOL)_strokes:(id)_strokes containsAnyStrokes:(id)strokes;
- (PKDrawing)drawing;
- (PKGroupQuery)initWithRecognitionSessionManager:(id)manager;
- (id)_closestLineToPoint:(CGPoint)point isTop:(BOOL)top;
- (id)_lines:(id)_lines containingStrokes:(id)strokes;
- (id)_strokesAtLineIndex:(int64_t)index containingStrokes:(id)strokes;
- (id)_strokesForIdentifiers:(id)identifiers inDrawing:(id)drawing;
- (id)_strokesInLine:(id)line leftOf:(BOOL)of point:(CGPoint)point;
- (id)fetchCurrentHandwritingStrokeUUIDs;
- (id)firstStrokesInStrokes:(id)strokes isRTL:(BOOL)l;
- (id)handwritingStrokeUUIDs;
- (id)lastStrokesInStrokes:(id)strokes isRTL:(BOOL)l;
- (id)strokeGroups;
- (int64_t)_firstLineIndexFromInitialStrokes:(id)strokes;
- (int64_t)_lastLineIndexFromInitialStrokes:(id)strokes;
- (int64_t)_tokenizationLevelForSelectionType:(int64_t)type;
- (int64_t)contentTypeForIntersectedStrokes:(id)strokes;
- (void)_precalculateStrokeGroupProperties:(id)properties;
- (void)dealloc;
- (void)fetchCurrentStrokeGroupItems:(id)items;
- (void)pause;
- (void)q_fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes:(id)strokes completion:(id)completion;
- (void)q_fetchStrokesBetweenTopPoint:(CGPoint)point bottomPoint:(CGPoint)bottomPoint isRTL:(BOOL)l completion:(id)completion;
- (void)q_fetchStrokesForPoint:(CGPoint)point selectionType:(int64_t)type inputType:(int64_t)inputType visibleOnscreenStrokes:(id)strokes completion:(id)completion;
- (void)queryDidUpdateResult:(id)result;
- (void)setHandwritingStrokeUUIDs:(id)ds;
- (void)setMathPreferredUpdatesInterval:(double)interval;
- (void)setStrokeGroups:(id)groups;
- (void)start;
- (void)teardown;
- (void)textStrokesCoveredByStroke:(id)stroke completion:(id)completion;
@end

@implementation PKGroupQuery

- (PKGroupQuery)initWithRecognitionSessionManager:(id)manager
{
  managerCopy = manager;
  v24.receiver = self;
  v24.super_class = PKGroupQuery;
  v5 = [(PKQuery *)&v24 initWithRecognitionSessionManager:managerCopy];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E6997BB8]);
    session = [(PKRecognitionSessionManager *)managerCopy session];
    v8 = [v6 initWithRecognitionSession:session];
    strokeGroupQuery = v5->_strokeGroupQuery;
    v5->_strokeGroupQuery = v8;

    [(CHStrokeGroupQuery *)v5->_strokeGroupQuery preferredUpdatesInterval];
    v5->_defaultUpdatesInterval = v10;
    strokeGroupQuery = [(PKGroupQuery *)v5 strokeGroupQuery];
    [strokeGroupQuery setDelegate:v5];

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

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v20 = [standardUserDefaults BOOLForKey:@"internalSettings.drawing.forceFastGroupingForLassolessSelection"];

  if (v20)
  {
    sessionManager = [(PKQuery *)v5 sessionManager];
    session2 = [(PKRecognitionSessionManager *)sessionManager session];
    [session2 setShouldForceFastGrouping:1];
  }

  return v5;
}

- (void)setMathPreferredUpdatesInterval:(double)interval
{
  defaultUpdatesInterval = interval;
  v12 = *MEMORY[0x1E69E9840];
  if (interval == 0.0)
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

  strokeGroupQuery = [(PKGroupQuery *)self strokeGroupQuery];
  [strokeGroupQuery setPreferredUpdatesInterval:defaultUpdatesInterval];
}

- (void)fetchCurrentStrokeGroupItems:(id)items
{
  itemsCopy = items;
  strokeGroups = [(PKGroupQuery *)self strokeGroups];
  v5 = strokeGroups;
  v6 = MEMORY[0x1E695E0F0];
  if (strokeGroups)
  {
    v6 = strokeGroups;
  }

  v7 = v6;

  itemsCopy[2](itemsCopy, v7);
}

- (void)setStrokeGroups:(id)groups
{
  groupsCopy = groups;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [groupsCopy copy];
  strokeGroups = selfCopy->_strokeGroups;
  selfCopy->_strokeGroups = v5;

  objc_sync_exit(selfCopy);
}

- (id)strokeGroups
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_strokeGroups;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)fetchCurrentHandwritingStrokeUUIDs
{
  handwritingStrokeUUIDs = [(PKGroupQuery *)self handwritingStrokeUUIDs];
  v3 = handwritingStrokeUUIDs;
  if (handwritingStrokeUUIDs)
  {
    v4 = handwritingStrokeUUIDs;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFD8] set];
  }

  v5 = v4;

  return v5;
}

- (void)setHandwritingStrokeUUIDs:(id)ds
{
  dsCopy = ds;
  obj = self;
  objc_sync_enter(obj);
  handwritingStrokeUUIDs = obj->_handwritingStrokeUUIDs;
  obj->_handwritingStrokeUUIDs = dsCopy;

  objc_sync_exit(obj);
}

- (id)handwritingStrokeUUIDs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_handwritingStrokeUUIDs;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)start
{
  strokeGroupQuery = [(PKGroupQuery *)self strokeGroupQuery];
  [strokeGroupQuery start];
}

- (void)pause
{
  strokeGroupQuery = [(PKGroupQuery *)self strokeGroupQuery];
  [strokeGroupQuery pause];
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
  sessionManager = [(PKQuery *)self sessionManager];
  drawing = [(PKRecognitionSessionManager *)sessionManager drawing];

  return drawing;
}

- (void)queryDidUpdateResult:(id)result
{
  v14 = *MEMORY[0x1E69E9840];
  strokeGroupItems = [result strokeGroupItems];
  v5 = os_log_create("com.apple.pencilkit", "Recognition");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [strokeGroupItems count];
    sessionManager = [(PKQuery *)self sessionManager];
    v8 = 138412802;
    selfCopy = self;
    v10 = 2048;
    v11 = v6;
    v12 = 2112;
    v13 = sessionManager;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "StateUpdate: Did update group query results for %@ with %lu stroke group items for session manager %@", &v8, 0x20u);
  }

  [(PKGroupQuery *)self _precalculateStrokeGroupProperties:strokeGroupItems];
}

- (void)textStrokesCoveredByStroke:(id)stroke completion:(id)completion
{
  v24[1] = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  completionCopy = completion;
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

  v24[0] = strokeCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v14 = [PKStrokeProvider slicesForStrokes:v13];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__PKGroupQuery_textStrokesCoveredByStroke_completion___block_invoke;
  aBlock[3] = &unk_1E82D62E8;
  aBlock[4] = self;
  v22 = v9;
  v15 = completionCopy;
  v21 = v15;
  v16 = _Block_copy(aBlock);
  strokeGroupQuery = [(PKGroupQuery *)self strokeGroupQuery];
  v18 = [v14 objectAtIndex:0];
  v19 = [strokeGroupQuery tokenStrokeIdentifiersWithCoveringStroke:v18 completion:v16 shouldCancel:0];
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

- (void)_precalculateStrokeGroupProperties:(id)properties
{
  propertiesCopy = properties;
  drawing = [(PKGroupQuery *)self drawing];
  v6 = [drawing copy];

  v7 = [propertiesCopy copy];
  strokeGroupComputationQueue = self->_strokeGroupComputationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PKGroupQuery__precalculateStrokeGroupProperties___block_invoke;
  block[3] = &unk_1E82D6400;
  v12 = v7;
  v13 = v6;
  selfCopy = self;
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

- (id)_strokesForIdentifiers:(id)identifiers inDrawing:(id)drawing
{
  v20 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  drawingCopy = drawing;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = identifiersCopy;
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

        strokeUUID = [*(*(&v15 + 1) + 8 * i) strokeUUID];
        v13 = [drawingCopy _visibleStrokeForIdentifier:strokeUUID];

        if (v13)
        {
          [array addObject:v13];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return array;
}

+ (id)_strokesInLine:(id)line inDrawing:(id)drawing
{
  v24 = *MEMORY[0x1E69E9840];
  lineCopy = line;
  drawingCopy = drawing;
  v17 = lineCopy;
  array = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  strokeIdentifiers = [lineCopy strokeIdentifiers];
  v9 = [strokeIdentifiers countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(strokeIdentifiers);
        }

        strokeUUID = [*(*(&v19 + 1) + 8 * v11) strokeUUID];
        v13 = [drawingCopy _visibleStrokeForIdentifier:strokeUUID];

        if (v13)
        {
          [array addObject:v13];
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
      v9 = [strokeIdentifiers countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v15 = [array copy];

  return v15;
}

- (id)_lines:(id)_lines containingStrokes:(id)strokes
{
  v23 = *MEMORY[0x1E69E9840];
  _linesCopy = _lines;
  strokesCopy = strokes;
  array = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = _linesCopy;
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
        if ([(PKGroupQuery *)self _strokes:v15 containsAnyStrokes:strokesCopy, v18])
        {
          [array addObject:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v16 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v10 = v16;
    }

    while (v16);
  }

  return array;
}

- (BOOL)_strokes:(id)_strokes containsAnyStrokes:(id)strokes
{
  v33 = *MEMORY[0x1E69E9840];
  _strokesCopy = _strokes;
  strokesCopy = strokes;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = _strokesCopy;
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
        v10 = strokesCopy;
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
              _strokeUUID = [v9 _strokeUUID];
              _strokeUUID2 = [v14 _strokeUUID];
              v17 = [_strokeUUID isEqual:_strokeUUID2];

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

- (void)q_fetchStrokesForPoint:(CGPoint)point selectionType:(int64_t)type inputType:(int64_t)inputType visibleOnscreenStrokes:(id)strokes completion:(id)completion
{
  y = point.y;
  x = point.x;
  strokesCopy = strokes;
  completionCopy = completion;
  v15 = objc_alloc_init(PKIntersectionResult);
  sessionManager = [(PKQuery *)self sessionManager];
  if ([sessionManager state] == 3)
  {
    v17 = 3;
  }

  else
  {
    v17 = 2;
  }

  [(PKIntersectionResult *)v15 setIntersectionAlgorithmType:v17];

  if (type == 6 || !type)
  {
    completionCopy[2](completionCopy, 0);
  }

  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy_;
  v35[4] = __Block_byref_object_dispose_;
  strokeGroupQuery = [(PKGroupQuery *)self strokeGroupQuery];
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy_;
  v33[4] = __Block_byref_object_dispose_;
  drawing = [(PKGroupQuery *)self drawing];
  intersectionQueue = self->_intersectionQueue;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __97__PKGroupQuery_q_fetchStrokesForPoint_selectionType_inputType_visibleOnscreenStrokes_completion___block_invoke;
  v22[3] = &unk_1E82D6360;
  v29 = x;
  v30 = y;
  v23 = strokesCopy;
  v24 = v15;
  selfCopy = self;
  v26 = completionCopy;
  inputTypeCopy = inputType;
  typeCopy = type;
  v27 = v35;
  v28 = v33;
  v19 = completionCopy;
  v20 = v15;
  v21 = strokesCopy;
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

- (int64_t)_tokenizationLevelForSelectionType:(int64_t)type
{
  if ((type - 2) > 3)
  {
    return 0;
  }

  else
  {
    return qword_1C801C140[type - 2];
  }
}

- (id)_closestLineToPoint:(CGPoint)point isTop:(BOOL)top
{
  topCopy = top;
  y = point.y;
  x = point.x;
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
              if (!topCopy)
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

- (void)q_fetchStrokesBetweenTopPoint:(CGPoint)point bottomPoint:(CGPoint)bottomPoint isRTL:(BOOL)l completion:(id)completion
{
  lCopy = l;
  y = bottomPoint.y;
  x = bottomPoint.x;
  v9 = point.y;
  v10 = point.x;
  completionCopy = completion;
  strokeGroups = [(PKGroupQuery *)self strokeGroups];
  if (strokeGroups)
  {
    strokeGroups2 = [(PKGroupQuery *)self strokeGroups];
    v15 = [strokeGroups2 count];

    if (v15)
    {
      v49 = completionCopy;
      v16 = [(PKGroupQuery *)self _closestLineToPoint:1 isTop:v10, v9];
      v17 = [(PKGroupQuery *)self _closestLineToPoint:0 isTop:x, y];
      strokeGroups3 = [(PKGroupQuery *)self strokeGroups];
      v19 = [strokeGroups3 indexOfObject:v16];

      strokeGroups4 = [(PKGroupQuery *)self strokeGroups];
      v21 = [strokeGroups4 indexOfObject:v17];

      if (!(v16 | v17))
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __75__PKGroupQuery_q_fetchStrokesBetweenTopPoint_bottomPoint_isRTL_completion___block_invoke;
        block[3] = &unk_1E82D63B0;
        v57 = completionCopy;
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
          v48 = lCopy;
          orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
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
              strokeGroups5 = [(PKGroupQuery *)self strokeGroups];
              v35 = [strokeGroups5 objectAtIndexedSubscript:v33];

              if (v35)
              {
                v36 = v35[2];
              }

              else
              {
                v36 = 0;
              }

              v37 = v36;
              [orderedSet addObjectsFromArray:v37];

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

          v41 = orderedSet;
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
          sessionManager = [(PKQuery *)self sessionManager];
          if ([sessionManager state] == 3)
          {
            v45 = 3;
          }

          else
          {
            v45 = 2;
          }

          [(PKIntersectionResult *)v40 setIntersectionAlgorithmType:v45];

          [(PKIntersectionResult *)v40 setContentType:v32];
          completionCopy = v49;
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
  v54 = completionCopy;
  v46 = v40;
  v47 = completionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v52);
}

- (id)_strokesInLine:(id)line leftOf:(BOOL)of point:(CGPoint)point
{
  x = point.x;
  ofCopy = of;
  v28 = *MEMORY[0x1E69E9840];
  lineCopy = line;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  if (lineCopy)
  {
    v9 = lineCopy[2];
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
        if (!ofCopy)
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

- (int64_t)_firstLineIndexFromInitialStrokes:(id)strokes
{
  v14[1] = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  array = [strokesCopy array];
  for (i = 0; ; ++i)
  {
    strokeGroups = [(PKGroupQuery *)self strokeGroups];
    v8 = i < [strokeGroups count];

    if (!v8)
    {
      break;
    }

    strokeGroups2 = [(PKGroupQuery *)self strokeGroups];
    v10 = [strokeGroups2 objectAtIndexedSubscript:i];

    v14[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v12 = [(PKGroupQuery *)self _lines:v11 containingStrokes:array];

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

- (int64_t)_lastLineIndexFromInitialStrokes:(id)strokes
{
  v12[1] = *MEMORY[0x1E69E9840];
  array = [strokes array];
  strokeGroups = [(PKGroupQuery *)self strokeGroups];
  v6 = [strokeGroups count];

  while (--v6 >= 0)
  {
    strokeGroups2 = [(PKGroupQuery *)self strokeGroups];
    v8 = [strokeGroups2 objectAtIndexedSubscript:v6];

    v12[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v10 = [(PKGroupQuery *)self _lines:v9 containingStrokes:array];

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

- (id)firstStrokesInStrokes:(id)strokes isRTL:(BOOL)l
{
  strokesCopy = strokes;
  strokeGroups = [(PKGroupQuery *)self strokeGroups];
  v8 = strokeGroups;
  if (strokeGroups && [strokeGroups count] && (v9 = -[PKGroupQuery _firstLineIndexFromInitialStrokes:](self, "_firstLineIndexFromInitialStrokes:", strokesCopy), v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v12 = [(PKGroupQuery *)self _strokesAtLineIndex:v9 containingStrokes:strokesCopy];
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
        v26 = [(PKGroupQuery *)self _strokesAtLineIndex:v9 containingStrokes:strokesCopy, MinY - v23];
        v27 = v26;
        if (v26 && [v26 count])
        {
          [v13 unionOrderedSet:v27];
        }
      }

      ++v9;
    }

    if (l)
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

- (id)_strokesAtLineIndex:(int64_t)index containingStrokes:(id)strokes
{
  strokesCopy = strokes;
  strokeGroups = [(PKGroupQuery *)self strokeGroups];
  v8 = [strokeGroups count];

  if (v8 <= index)
  {
    v14 = 0;
  }

  else
  {
    strokeGroups2 = [(PKGroupQuery *)self strokeGroups];
    v10 = [strokeGroups2 objectAtIndexedSubscript:index];
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
    [v14 intersectOrderedSet:strokesCopy];
  }

  return v14;
}

- (id)lastStrokesInStrokes:(id)strokes isRTL:(BOOL)l
{
  strokesCopy = strokes;
  strokeGroups = [(PKGroupQuery *)self strokeGroups];
  v8 = strokeGroups;
  if (strokeGroups && [strokeGroups count] && (v9 = -[PKGroupQuery _lastLineIndexFromInitialStrokes:](self, "_lastLineIndexFromInitialStrokes:", strokesCopy), v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v12 = [(PKGroupQuery *)self _strokesAtLineIndex:v9 containingStrokes:strokesCopy];
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
          v26 = [(PKGroupQuery *)self _strokesAtLineIndex:v9 containingStrokes:strokesCopy, MaxY - v23];
          v27 = v26;
          if (v26 && [v26 count])
          {
            [v13 unionOrderedSet:v27];
          }
        }
      }

      while (v9-- > 0);
    }

    if (l)
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

- (void)q_fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes:(id)strokes completion:(id)completion
{
  v54 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  completionCopy = completion;
  strokeGroups = [(PKGroupQuery *)self strokeGroups];
  if (strokeGroups && (-[PKGroupQuery strokeGroups](self, "strokeGroups"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, strokeGroups, v9))
  {
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
    strokeGroups2 = [(PKGroupQuery *)self strokeGroups];
    v13 = [(PKGroupQuery *)self _lines:strokeGroups2 containingStrokes:strokesCopy];

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
          [orderedSet addObjectsFromArray:v24];

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
    strokeGroups3 = [(PKGroupQuery *)self strokeGroups];
    v31 = [strokeGroups3 countByEnumeratingWithState:&v44 objects:v52 count:16];
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
            objc_enumerationMutation(strokeGroups3);
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
              [orderedSet2 addObjectsFromArray:v41];
            }
          }

          ++v34;
        }

        while (v31 != v34);
        v42 = [strokeGroups3 countByEnumeratingWithState:&v44 objects:v52 count:16];
        v31 = v42;
      }

      while (v42);
    }

    completionCopy[2](completionCopy, orderedSet, orderedSet2);
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0);
  }
}

- (int64_t)contentTypeForIntersectedStrokes:(id)strokes
{
  v25 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  strokeGroups = [(PKGroupQuery *)self strokeGroups];
  obj = strokeGroups;
  v6 = 0;
  v7 = [strokeGroups countByEnumeratingWithState:&v20 objects:v24 count:16];
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
        v15 = [strokesCopy intersectsOrderedSet:v14];

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
              strokeGroups = obj;
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
      strokeGroups = obj;
      v17 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      v7 = v17;
    }

    while (v17);
  }

LABEL_22:

  return v6;
}

@end