@interface PKAutoRefineController
- (PKAutoRefineController)init;
- (uint64_t)isRefinableStroke:(uint64_t)result;
- (uint64_t)stableSynthesisParametersFromSourceStrokes:(void *)a3 outInk:(void *)a4 outReferenceStroke:;
- (void)clearRefinableStrokes;
- (void)indexRefinableStroke:(uint64_t)a1;
- (void)removeAsRefinableStrokes:(uint64_t)a1;
- (void)setIsAutoRefineOn:(int)a3 force:;
- (void)setIsAutoRefineOn:(uint64_t)a1;
@end

@implementation PKAutoRefineController

- (PKAutoRefineController)init
{
  v14.receiver = self;
  v14.super_class = PKAutoRefineController;
  v2 = [(PKAutoRefineController *)&v14 init];
  if (v2)
  {
    objc_opt_self();
    v2->_isAutoRefineOn = +[PKSettingsDaemon autoRefineEnabled];
    v2->_forceAutoRefineState = 0;
    v3 = [MEMORY[0x1E695DF70] array];
    refinableLocalPencilStrokeUUIDs = v2->_refinableLocalPencilStrokeUUIDs;
    v2->_refinableLocalPencilStrokeUUIDs = v3;

    objc_initWeak(&location, v2);
    v5 = [PKAutoRefineSettingsObserver alloc];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __30__PKAutoRefineController_init__block_invoke;
    v11[3] = &unk_1E82D7618;
    objc_copyWeak(&v12, &location);
    v6 = [(PKAutoRefineSettingsObserver *)v5 initWithHandler:v11];
    settingsObserver = v2->_settingsObserver;
    v2->_settingsObserver = v6;

    v8 = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEBUG, "AutoRefine create PKAutoRefineController.", v10, 2u);
    }

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __30__PKAutoRefineController_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__PKAutoRefineController_init__block_invoke_2;
  v4[3] = &unk_1E82D69B8;
  objc_copyWeak(&v5, (a1 + 32));
  PKPerformOnMainThread(v4);
  objc_destroyWeak(&v5);
}

void __30__PKAutoRefineController_init__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = WeakRetained[24];
    v3 = os_log_create("com.apple.pencilkit", "AutoRefine");
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v2 == 1)
    {
      if (v4)
      {
        v5 = v6[25];
        *buf = 67109120;
        v8 = v5;
        _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "State is forced to: %{BOOL}d.", buf, 8u);
      }
    }

    else
    {
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "Handle AutoRefine settings did change.", buf, 2u);
      }

      [(PKAutoRefineController *)v6 setIsAutoRefineOn:"autoRefineEnabled") force:0];
    }

    WeakRetained = v6;
  }
}

- (void)setIsAutoRefineOn:(int)a3 force:
{
  if (a1)
  {
    v3 = a3;
    v4 = a2;
    if (*(a1 + 25) != a2 || *(a1 + 24) != a3)
    {
      [(PKAutoRefineController *)a1 clearRefinableStrokes];
      if ((v3 & 1) == 0)
      {
        objc_opt_self();
        v4 = +[PKSettingsDaemon autoRefineEnabled];
      }

      *(a1 + 25) = v4;
      *(a1 + 24) = v3;
    }
  }
}

- (void)clearRefinableStrokes
{
  if (a1)
  {
    [*(a1 + 8) removeAllObjects];
    v1 = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      *v2 = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v1, OS_LOG_TYPE_DEBUG, "AutoRefine _refinableLocalPencilStrokeUUIDs cleared.", v2, 2u);
    }
  }
}

- (void)indexRefinableStroke:(uint64_t)a1
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1 && v3 && *(a1 + 25) == 1)
  {
    if (PKIsPadDevice() && CHGetPersonalizedSynthesisSupportState() > 2)
    {
      v5 = *(a1 + 8);
      v6 = [v4 _strokeUUID];
      [v5 addObject:v6];
    }

    else
    {
      v7 = os_log_create("com.apple.pencilkit", "AutoRefine");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Asked to index refinable stroke, but device does not support it (yet)", &v11, 2u);
      }
    }

    v8 = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [v4 _bounds];
      v9 = NSStringFromCGRect(v16);
      v10 = [*(a1 + 8) count];
      v11 = 138412546;
      v12 = v9;
      v13 = 2048;
      v14 = v10;
      _os_log_debug_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEBUG, "AutoRefine _refinableLocalPencilStrokeUUIDs adding one stroke (bounds = %@) -> new count = %ld", &v11, 0x16u);
    }
  }
}

- (void)setIsAutoRefineOn:(uint64_t)a1
{
  if (a1)
  {
    v2 = a2;
    if (*(a1 + 25) != a2 || (*(a1 + 24) & 1) == 0)
    {
      [(PKAutoRefineController *)a1 clearRefinableStrokes];
      *(a1 + 25) = v2;
      *(a1 + 24) = 1;
    }
  }
}

- (uint64_t)isRefinableStroke:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 8);
    v3 = [a2 _strokeUUID];
    v4 = [v2 containsObject:v3];

    return v4;
  }

  return result;
}

- (void)removeAsRefinableStrokes:(uint64_t)a1
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(a1 + 8);
          v10 = [*(*(&v14 + 1) + 8 * v8) _strokeUUID];
          [v9 removeObject:v10];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v6);
    }

    v11 = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [v4 count];
      v13 = [*(a1 + 8) count];
      *buf = 134218240;
      v19 = v12;
      v20 = 2048;
      v21 = v13;
      _os_log_debug_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEBUG, "AutoRefine _refinableLocalPencilStrokeUUIDs removed %ld strokes -> new count = %ld", buf, 0x16u);
    }
  }
}

- (uint64_t)stableSynthesisParametersFromSourceStrokes:(void *)a3 outInk:(void *)a4 outReferenceStroke:
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = v7;
  if (!a1)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 1;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__29;
  v34 = __Block_byref_object_dispose__29;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__29;
  v28 = __Block_byref_object_dispose__29;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__29;
  v22 = __Block_byref_object_dispose__29;
  v23 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = -1;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __95__PKAutoRefineController_stableSynthesisParametersFromSourceStrokes_outInk_outReferenceStroke___block_invoke;
  v16[3] = &unk_1E82DBD10;
  v16[4] = a1;
  v16[5] = v17;
  v16[6] = &v24;
  v16[7] = &v18;
  v16[8] = &v30;
  v16[9] = &v36;
  [v7 enumerateObjectsWithOptions:2 usingBlock:v16];
  v9 = *(a1 + 32);
  if (v9 && *(v37 + 24) == 1 && v31[5] == v9)
  {
    *a3 = v9;
    v11 = *(a1 + 40);
  }

  else
  {
    v10 = v25[5];
    if (!v10)
    {
      v13 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = [v8 count];
        *buf = 134217984;
        v41 = v15;
        _os_log_error_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_ERROR, "AutoRefine: No reflowable stroke identified among %ld stroke to determine the synthesis parameters, fallback to using a non-refinable stroke instead.", buf, 0xCu);
      }

      *a3 = [v19[5] _ink];
      v12 = 0;
      *a4 = v19[5];
      goto LABEL_11;
    }

    *a3 = [v10 _ink];
    v11 = v25[5];
  }

  *a4 = v11;
  v12 = *(v37 + 24);
LABEL_11:
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
LABEL_12:

  return v12 & 1;
}

void __95__PKAutoRefineController_stableSynthesisParametersFromSourceStrokes_outInk_outReferenceStroke___block_invoke(void *a1, void *a2)
{
  v16 = a2;
  v4 = *(a1[4] + 8);
  v5 = [v16 _strokeUUID];
  v6 = [v4 indexOfObject:v5];

  if (([v16 _isSynthesizedInk] & 1) == 0 && v6 != 0x7FFFFFFFFFFFFFFFLL && v6 > *(*(a1[5] + 8) + 24))
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *(*(a1[5] + 8) + 24) = v6;
  }

  v7 = *(a1[7] + 8);
  v9 = *(v7 + 40);
  v8 = (v7 + 40);
  if (!v9)
  {
    objc_storeStrong(v8, a2);
  }

  v10 = *(*(a1[8] + 8) + 40);
  v11 = [v16 ink];
  v12 = v11;
  v13 = *(a1[8] + 8);
  v14 = *(v13 + 40);
  if (v10)
  {
    v15 = [v11 isEqual:v14];

    if ((v15 & 1) == 0)
    {
      *(*(a1[9] + 8) + 24) = 0;
    }
  }

  else
  {
    *(v13 + 40) = v11;
  }
}

@end