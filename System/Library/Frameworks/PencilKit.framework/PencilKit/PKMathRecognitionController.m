@interface PKMathRecognitionController
- (BOOL)processDelayedItemsIfNecessary;
- (PKMathRecognitionController)init;
- (PKMathRecognitionController)initWithDelegate:(id)a3;
- (PKMathRecognitionControllerDelegate)delegate;
- (void)_drawingDidUpdate:(uint64_t)a1;
- (void)_foundStrokeGroups:(int)a3 canDelay:;
- (void)_updateExpressionForItem:(void *)a3 expression:;
- (void)actuallySendDelayedItems:(double *)a1;
- (void)didEraseStrokes:(id)a3;
- (void)reset;
- (void)sendDelayedItems;
- (void)setDelegate:(id)a3;
@end

@implementation PKMathRecognitionController

- (PKMathRecognitionController)init
{
  v5.receiver = self;
  v5.super_class = PKMathRecognitionController;
  v2 = [(PKMathRecognitionController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PKMathRecognitionController *)v2 reset];
  }

  return v3;
}

- (PKMathRecognitionController)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKMathRecognitionController;
  v5 = [(PKMathRecognitionController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKMathRecognitionController *)v5 reset];
    [(PKMathRecognitionController *)v6 setDelegate:v4];
  }

  return v6;
}

- (void)reset
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v3 doubleForKey:@"internalSettings.mathUpdateDelay"];
  self->_updateItemsDelay = v4;

  if (self->_updateItemsDelay == 0.0)
  {
    self->_updateItemsDelay = 0.9;
  }

  v5 = os_log_create("com.apple.pencilkit", "Math");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    updateItemsDelay = self->_updateItemsDelay;
    v17 = 134217984;
    v18 = updateItemsDelay;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Setting up PKMathRecognitionController with update delay: %g", &v17, 0xCu);
  }

  v7 = [MEMORY[0x1E695DFD8] set];
  currentItems = self->_currentItems;
  self->_currentItems = v7;

  changeMap = self->_changeMap;
  v10 = MEMORY[0x1E695E0F8];
  self->_changeMap = MEMORY[0x1E695E0F8];

  stableIdentifierMap = self->_stableIdentifierMap;
  self->_stableIdentifierMap = v10;

  sortIndexMap = self->_sortIndexMap;
  self->_sortIndexMap = v10;

  expressionMap = self->_expressionMap;
  self->_expressionMap = v10;

  shouldSolveMap = self->_shouldSolveMap;
  self->_shouldSolveMap = v10;

  currentMathRecognitionItems = self->_currentMathRecognitionItems;
  self->_currentMathRecognitionItems = MEMORY[0x1E695E0F0];

  delayedItems = self->_delayedItems;
  self->_delayedItems = 0;
}

- (void)_foundStrokeGroups:(int)a3 canDelay:
{
  v150 = *MEMORY[0x1E69E9840];
  v107 = a2;
  if (!a1)
  {
    goto LABEL_74;
  }

  v105 = a3;
  v5 = os_log_create("com.apple.pencilkit", "Math");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v143 = [v107 count];
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Found stroke groups: %lu", buf, 0xCu);
  }

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:a1 selector:? object:?];
  v6 = *(a1 + 8);
  a1[8] = 0.0;

  v115 = a1;
  v106 = [a1 delegate];
  v7 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v107, "count")}];
  v122 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v107, "count")}];
  v121 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v107, "count")}];
  v120 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v107, "count")}];
  v119 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v107, "count")}];
  v118 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v107, "count")}];
  v113 = [MEMORY[0x1E695DFA8] set];
  v108 = [MEMORY[0x1E695DFA8] set];
  v110 = [MEMORY[0x1E695DF70] array];
  v112 = [MEMORY[0x1E695DF70] array];
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v8 = v107;
  v9 = [v8 countByEnumeratingWithState:&v137 objects:v149 count:16];
  v125 = v7;
  v109 = v8;
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v138;
    v123 = *v138;
    do
    {
      v13 = 0;
      do
      {
        if (*v138 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v137 + 1) + 8 * v13);
        if (v14)
        {
          v15 = v14[1];
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;
        v17 = [v16 mathResult];

        if (v17)
        {
          v18 = [v17 preferredTranscription];
          if (qword_1ED6A5360 != -1)
          {
            dispatch_once(&qword_1ED6A5360, &__block_literal_global_72);
          }

          if (![v18 length] || objc_msgSend(v18, "rangeOfCharacterFromSet:", _MergedGlobals_159) == 0x7FFFFFFFFFFFFFFFLL)
          {
            v19 = os_log_create("com.apple.pencilkit", "Math");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138477827;
              v143 = v18;
              _os_log_impl(&dword_1C7CCA000, v19, OS_LOG_TYPE_DEFAULT, "Ignoring expression: %{private}@", buf, 0xCu);
            }

            goto LABEL_29;
          }

          v18 = [[PKMathRecognitionItem alloc] initWithStrokeGroupItem:v14 uuid:0];
          v20 = [(PKMathRecognitionItem *)v18 strokesForIdentifier];
          if ([v20 count])
          {
            v21 = [v18 uuid];
            v22 = [v7 containsObject:v21];

            v12 = v123;
            if ((v22 & 1) == 0)
            {
              v23 = [v18 uuid];
              [v7 addObject:v23];

              if (v18)
              {
                v18[12] = v11;
              }

              [v110 addObject:v18];
LABEL_28:
              ++v11;
LABEL_29:

              goto LABEL_30;
            }
          }

          else
          {
          }

          v24 = os_log_create("com.apple.pencilkit", "Math");
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v116 = [(PKMathRecognitionItem *)v18 strokesForIdentifier];
            v25 = [v116 count];
            v26 = [v18 uuid];
            v27 = [v7 containsObject:v26];
            [v17 preferredTranscription];
            v29 = v28 = v11;
            *buf = 134218499;
            v143 = v25;
            v144 = 1024;
            *v145 = v27;
            v7 = v125;
            *&v145[4] = 2113;
            *&v145[6] = v29;
            _os_log_impl(&dword_1C7CCA000, v24, OS_LOG_TYPE_DEFAULT, "Unable to add a math item. Identifier strokes: %ld, existing: %{BOOL}d, expression: %{private}@", buf, 0x1Cu);

            v11 = v28;
            v12 = v123;

            v8 = v109;
          }

          goto LABEL_28;
        }

LABEL_30:

        ++v13;
      }

      while (v10 != v13);
      v30 = [v8 countByEnumeratingWithState:&v137 objects:v149 count:16];
      v10 = v30;
    }

    while (v30);
  }

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v31 = v110;
  v32 = v115;
  v33 = v122;
  obj = v31;
  v124 = [v31 countByEnumeratingWithState:&v133 objects:v148 count:16];
  if (!v124)
  {
    goto LABEL_58;
  }

  v117 = *v134;
  do
  {
    v34 = 0;
    do
    {
      if (*v134 != v117)
      {
        objc_enumerationMutation(obj);
      }

      v35 = *(*(&v133 + 1) + 8 * v34);
      v36 = [v35 uuid];
      v37 = [(PKMathRecognitionItem *)v35 changeIdentifier];
      v38 = [(PKMathRecognitionItem *)v35 stableIdentifier];
      v39 = MEMORY[0x1E696AD98];
      [v35 sortIndex];
      v127 = [v39 numberWithDouble:?];
      v40 = [v35 expression];
      v41 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v35, "shouldSolveMathFlagIsSet")}];
      if ([*(v32 + 1) containsObject:v36])
      {
        v42 = [*(v32 + 2) objectForKeyedSubscript:v36];
        if (![v42 isEqual:v37])
        {
          goto LABEL_47;
        }

        v43 = [*(v115 + 3) objectForKeyedSubscript:v36];
        if (([v43 isEqual:v38] & 1) == 0)
        {

LABEL_47:
LABEL_48:
          v49 = os_log_create("com.apple.pencilkit", "Math");
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v50 = [v35 expression];
            *buf = 138477827;
            v143 = v50;
            _os_log_impl(&dword_1C7CCA000, v49, OS_LOG_TYPE_DEFAULT, "Expression change detected: %{private}@", buf, 0xCu);
          }

          [v113 addObject:v36];
          [v112 addObject:v35];
          [(PKMathRecognitionItem *)v35 _tagAsRecentlyUpdated];
LABEL_51:
          v32 = v115;
          goto LABEL_52;
        }

        v44 = [*(v115 + 5) objectForKeyedSubscript:v36];
        v111 = [v44 isEqual:v40];

        if ((v111 & 1) == 0)
        {
          goto LABEL_48;
        }

        v32 = v115;
        v45 = [*(v115 + 4) objectForKeyedSubscript:v36];
        v46 = [v45 isEqual:v127];

        if ((v46 & 1) == 0)
        {
          v51 = os_log_create("com.apple.pencilkit", "Math");
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v52 = [v35 expression];
            *buf = 138477827;
            v143 = v52;
            _os_log_impl(&dword_1C7CCA000, v51, OS_LOG_TYPE_DEFAULT, "Sort index changed for: %{private}@", buf, 0xCu);
          }

          [v113 addObject:v36];
          goto LABEL_51;
        }

        v47 = [*(v115 + 6) objectForKeyedSubscript:v36];
        v48 = [v47 isEqual:v41];

        if ((v48 & 1) == 0)
        {
          [v108 addObject:v36];
        }
      }

LABEL_52:
      v7 = v125;
      [v125 addObject:v36];
      v33 = v122;
      [v122 setObject:v37 forKeyedSubscript:v36];
      [v121 setObject:v38 forKeyedSubscript:v36];
      [v120 setObject:v127 forKeyedSubscript:v36];
      [v119 setObject:v40 forKeyedSubscript:v36];
      [v118 setObject:v41 forKeyedSubscript:v36];

      ++v34;
    }

    while (v124 != v34);
    v31 = obj;
    v53 = [obj countByEnumeratingWithState:&v133 objects:v148 count:16];
    v124 = v53;
  }

  while (v53);
LABEL_58:

  v54 = [*(v32 + 1) mutableCopy];
  [v54 minusSet:v7];
  v55 = [v7 mutableCopy];
  [v55 minusSet:*(v32 + 1)];
  v126 = v55;
  v128 = v54;
  if (v105 && ![v55 count] && !objc_msgSend(v108, "count") && (objc_msgSend(v54, "count") || objc_msgSend(v113, "count")))
  {
    v85 = os_log_create("com.apple.pencilkit", "Math");
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      v86 = [v54 count];
      v87 = [v113 count];
      v88 = [v108 count];
      *buf = 134218752;
      v143 = v86;
      v144 = 2048;
      *v145 = v87;
      *&v145[8] = 2048;
      *&v145[10] = v88;
      v146 = 2048;
      v147 = v106;
      _os_log_impl(&dword_1C7CCA000, v85, OS_LOG_TYPE_DEFAULT, "Delaying items. Removed: %lu, changedItems: %lu, solvingChanged: %lu, delegate: %p", buf, 0x2Au);
    }

    v89 = v32[9];
    if ([v112 count] && !objc_msgSend(v54, "count"))
    {
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v90 = v112;
      v91 = [v90 countByEnumeratingWithState:&v129 objects:v141 count:16];
      if (v91)
      {
        v92 = v91;
        v93 = *v130;
        v94 = 0.0;
        do
        {
          for (i = 0; i != v92; ++i)
          {
            if (*v130 != v93)
            {
              objc_enumerationMutation(v90);
            }

            v96 = [(PKMathRecognitionItem *)*(*(&v129 + 1) + 8 * i) _remainingDelayForTargetDelay:?];
            if (v94 < v96)
            {
              v94 = v96;
            }
          }

          v92 = [v90 countByEnumeratingWithState:&v129 objects:v141 count:16];
        }

        while (v92);
      }

      else
      {
        v94 = 0.0;
      }

      v98 = os_log_create("com.apple.pencilkit", "Math");
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v143 = *&v94;
        _os_log_impl(&dword_1C7CCA000, v98, OS_LOG_TYPE_DEFAULT, "Calculated delay: %g", buf, 0xCu);
      }

      v32 = v115;
      v99 = v115[9];
      if (v94 < v99)
      {
        v99 = v94;
      }

      v89 = fmax(v99, 0.1);
    }

    v84 = v109;
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:v32 selector:sel_sendDelayedItems object:0];
    v100 = *(v32 + 8);
    v32[8] = 0.0;

    v101 = [v84 copy];
    v102 = *(v32 + 8);
    *(v32 + 8) = v101;

    v103 = os_log_create("com.apple.pencilkit", "Math");
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      v104 = [v84 count];
      *buf = 134218240;
      v143 = v104;
      v144 = 2048;
      *v145 = v89;
      _os_log_impl(&dword_1C7CCA000, v103, OS_LOG_TYPE_DEFAULT, "Schedule delayed items: %lu, %g", buf, 0x16u);
    }

    [v32 performSelector:sel_sendDelayedItems withObject:0 afterDelay:v89];
    v56 = v106;
    v83 = v121;
    v33 = v122;
    v81 = obj;
    v58 = v119;
    v80 = v120;
    v60 = v118;
  }

  else
  {
    v56 = v106;
    if ([v54 count] || objc_msgSend(v55, "count") || objc_msgSend(v113, "count"))
    {
      v57 = os_log_create("com.apple.pencilkit", "Math");
      v58 = v119;
      v59 = v120;
      v60 = v118;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v61 = v55;
        v62 = [v54 count];
        v63 = [v61 count];
        v64 = [v113 count];
        *buf = 134218752;
        v143 = v62;
        v55 = v61;
        v144 = 2048;
        *v145 = v63;
        v33 = v122;
        v56 = v106;
        *&v145[8] = 2048;
        *&v145[10] = v64;
        v146 = 2048;
        v147 = v106;
        _os_log_impl(&dword_1C7CCA000, v57, OS_LOG_TYPE_DEFAULT, "Removed: %lu, newItems: %lu, changedItems: %lu, delegate: %p", buf, 0x2Au);
      }

      [v56 mathRecognitionController:v32 didUpdateExpressions:v113 newItems:v55 removedItems:v54 mathItems:obj];
    }

    else
    {
      v97 = os_log_create("com.apple.pencilkit", "Math");
      v58 = v119;
      v59 = v120;
      v60 = v118;
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7CCA000, v97, OS_LOG_TYPE_DEFAULT, "No change detected", buf, 2u);
      }
    }

    v65 = v121;
    if ([v108 count] && (v32[10] & 2) != 0)
    {
      v66 = os_log_create("com.apple.pencilkit", "Math");
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v67 = [v108 count];
        *buf = 134217984;
        v143 = v67;
        _os_log_impl(&dword_1C7CCA000, v66, OS_LOG_TYPE_DEFAULT, "Solving style changed: %lu", buf, 0xCu);
      }

      [v56 mathRecognitionController:v32 solveStateChangedForExpressions:v108 mathItems:obj];
      v65 = v121;
    }

    v68 = [v7 copy];
    v69 = *(v32 + 1);
    *(v32 + 1) = v68;

    v70 = [v33 copy];
    v71 = *(v32 + 2);
    *(v32 + 2) = v70;

    v72 = [v65 copy];
    v73 = *(v32 + 3);
    *(v32 + 3) = v72;

    v74 = [v59 copy];
    v75 = *(v32 + 4);
    *(v32 + 4) = v74;

    v76 = [v58 copy];
    v77 = *(v32 + 5);
    *(v32 + 5) = v76;

    v78 = [v60 copy];
    v79 = *(v32 + 6);
    *(v32 + 6) = v78;

    v80 = v59;
    v81 = obj;
    v82 = [obj copy];
    v83 = v65;
    v84 = *(v32 + 7);
    *(v32 + 7) = v82;
  }

LABEL_74:
}

void __55__PKMathRecognitionController__shouldIgnoreMathResult___block_invoke()
{
  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"=- "];
  v0 = [v2 invertedSet];
  v1 = _MergedGlobals_159;
  _MergedGlobals_159 = v0;
}

- (void)_updateExpressionForItem:(void *)a3 expression:
{
  if (a1)
  {
    v5 = a3;
    v9 = [a2 uuid];
    v6 = [*(a1 + 40) mutableCopy];
    [v6 setObject:v5 forKeyedSubscript:v9];

    v7 = [v6 copy];
    v8 = *(a1 + 40);
    *(a1 + 40) = v7;
  }
}

- (void)_drawingDidUpdate:(uint64_t)a1
{
  v47 = *MEMORY[0x1E69E9840];
  v34 = a2;
  if (a1 && [*(a1 + 56) count] && (*(a1 + 80) & 2) != 0)
  {
    v3 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(*(a1 + 56), "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v4 = [v34 strokes];
    v5 = [v4 countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v40;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v40 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v39 + 1) + 8 * i);
          if (([v9 _flags] & 0x20000000000) != 0)
          {
            v10 = [v9 _strokeUUID];
            [v3 addObject:v10];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v6);
    }

    v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(a1 + 56), "count")}];
    [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(*(a1 + 56), "count")}];
    v33 = v32 = a1;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v12 = *(a1 + 56);
    v13 = [v12 countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v36;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v35 + 1) + 8 * j);
          v18 = [(PKMathRecognitionItem *)v17 heroStroke];
          v19 = v18;
          if (v18)
          {
            v20 = [v18 _strokeUUID];
            v21 = [v3 containsObject:v20];

            if (v21 != [v17 shouldSolveMathFlagIsSet])
            {
              if (v17)
              {
                *(v17 + 75) = v21;
                [(PKStrokeGroupItem *)*(v17 + 8) refreshStrokesInDrawing:v34];
              }

              v22 = [v17 uuid];
              [v33 addObject:v22];
            }
          }

          else
          {
            v21 = 0;
          }

          v23 = [v17 uuid];

          if (v23)
          {
            v24 = [MEMORY[0x1E696AD98] numberWithBool:v21];
            v25 = [v17 uuid];
            [v11 setObject:v24 forKeyedSubscript:v25];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v14);
    }

    if ([v33 count])
    {
      v26 = [v11 copy];
      v27 = v32[6];
      v32[6] = v26;

      v28 = os_log_create("com.apple.pencilkit", "Math");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v33 count];
        *buf = 134217984;
        v44 = v29;
        _os_log_impl(&dword_1C7CCA000, v28, OS_LOG_TYPE_DEFAULT, "Found %lu groups with updated solve state", buf, 0xCu);
      }

      v30 = [v32 delegate];
      v31 = [v33 copy];
      [v30 mathRecognitionController:v32 solveStateChangedForExpressions:v31 mathItems:v32[7]];
    }
  }
}

- (void)setDelegate:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->__sessionManager);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->__sessionManager, v4);
    *&self->_delegateFlags = *&self->_delegateFlags & 0xFE | objc_opt_respondsToSelector() & 1;
    v6 = (objc_opt_respondsToSelector() & 1) != 0 ? 2 : 0;
    *&self->_delegateFlags = *&self->_delegateFlags & 0xFD | v6;
    v7 = (objc_opt_respondsToSelector() & 1) != 0 ? 4 : 0;
    *&self->_delegateFlags = *&self->_delegateFlags & 0xFB | v7;
    if ([(NSSet *)self->_currentItems count])
    {
      v8 = [(NSArray *)self->_currentMathRecognitionItems count];
      if (v4)
      {
        if (v8)
        {
          v9 = os_log_create("com.apple.pencilkit", "Math");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = [(NSSet *)self->_currentItems count];
            v14 = 134217984;
            v15 = v10;
            _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "Updating new delegate with items: %lu", &v14, 0xCu);
          }

          v11 = [MEMORY[0x1E695DFD8] set];
          currentItems = self->_currentItems;
          v13 = [MEMORY[0x1E695DFD8] set];
          [v4 mathRecognitionController:self didUpdateExpressions:v11 newItems:currentItems removedItems:v13 mathItems:self->_currentMathRecognitionItems];
        }
      }
    }
  }
}

- (void)sendDelayedItems
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self->_delayedItems)
  {
    goto LABEL_7;
  }

  if ((*&self->_delegateFlags & 1) == 0)
  {
    goto LABEL_7;
  }

  v3 = [(PKMathRecognitionController *)self delegate];
  [v3 mathRecognitionControllerTimestampForLatestUserInteraction:self];
  v5 = v4;

  if (v5 <= 0.0)
  {
    goto LABEL_7;
  }

  v6 = CACurrentMediaTime() - v5;
  v7 = os_log_create("com.apple.pencilkit", "Math");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = v6;
    _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Interactive timestamp delta: %g", &v13, 0xCu);
  }

  if (v6 < self->_updateItemsDelay)
  {
    v10 = os_log_create("com.apple.pencilkit", "Math");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(NSArray *)self->_delayedItems count];
      v12 = self->_updateItemsDelay - v6;
      v13 = 134218240;
      v14 = *&v11;
      v15 = 2048;
      v16 = v12;
      _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "Interactive delayed items: %lu, %g", &v13, 0x16u);
    }

    [(PKMathRecognitionController *)self performSelector:sel_sendDelayedItems withObject:0 afterDelay:self->_updateItemsDelay - v6];
  }

  else
  {
LABEL_7:
    delayedItems = self->_delayedItems;
    self->_delayedItems = 0;
    v9 = delayedItems;

    [(PKMathRecognitionController *)self actuallySendDelayedItems:v9];
  }
}

- (void)actuallySendDelayedItems:(double *)a1
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = os_log_create("com.apple.pencilkit", "Math");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = [v3 count];
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Send delayed items: %lu", &v5, 0xCu);
    }

    if (v3)
    {
      [(PKMathRecognitionController *)a1 _foundStrokeGroups:v3 canDelay:0];
    }
  }
}

- (BOOL)processDelayedItemsIfNecessary
{
  delayedItems = self->_delayedItems;
  if (delayedItems)
  {
    v4 = delayedItems;
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_sendDelayedItems object:0];
    v5 = self->_delayedItems;
    self->_delayedItems = 0;

    [(PKMathRecognitionController *)self actuallySendDelayedItems:v4];
  }

  return delayedItems != 0;
}

- (void)didEraseStrokes:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((*&self->_delegateFlags & 4) != 0)
  {
    v21 = [MEMORY[0x1E695DFA8] set];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = self;
    obj = self->_currentMathRecognitionItems;
    v5 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v5)
    {
      v6 = v5;
      v22 = *v28;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v27 + 1) + 8 * i);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v9 = [v8 strokes];
          v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v24;
            while (2)
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v24 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = [*(*(&v23 + 1) + 8 * j) _strokeUUID];
                v15 = [v4 containsObject:v14];

                if (v15)
                {
                  v16 = [v8 uuid];
                  [v21 addObject:v16];

                  goto LABEL_17;
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }

        v6 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v6);
    }

    v17 = [(PKMathRecognitionController *)v19 delegate];
    v18 = [v21 copy];
    [v17 mathRecognitionController:v19 didEraseStrokesInExpressions:v18];
  }
}

- (PKMathRecognitionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->__sessionManager);

  return WeakRetained;
}

@end