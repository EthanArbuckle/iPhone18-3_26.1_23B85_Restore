@interface PKPencilSqueezeAnalyticsController
+ (uint64_t)currentSqueezeThresholdIndex;
- (id)initWithDelegate:(id *)delegate;
- (void)_didHideMiniPaletteWithBlock:(uint64_t)block;
- (void)_logSqueezeCategory:(uint64_t)category;
- (void)didHideMiniPaletteByChangingContext;
- (void)didHideMiniPaletteByDrawing;
- (void)didHideMiniPaletteBySqueezingAgain;
- (void)didHideMiniPaletteByTappingOutsideOnScreen;
- (void)didShowMiniPaletteIsUndoRedoPalette:(uint64_t)palette;
- (void)didUseMiniPalette;
@end

@implementation PKPencilSqueezeAnalyticsController

- (id)initWithDelegate:(id *)delegate
{
  v3 = a2;
  if (delegate)
  {
    v6.receiver = delegate;
    v6.super_class = PKPencilSqueezeAnalyticsController;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    delegate = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 3, v3);
    }
  }

  return delegate;
}

- (void)didShowMiniPaletteIsUndoRedoPalette:(uint64_t)palette
{
  v6 = *MEMORY[0x1E69E9840];
  if (palette && (*(palette + 9) & 1) == 0)
  {
    v4 = PKPencilSqueezeAnalyticsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = a2;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "did show mini palette, isUndoRedoPalette: %{BOOL}d", v5, 8u);
    }

    *(palette + 9) = 1;
    *(palette + 11) = 0;
    *(palette + 8) = a2;
    *(palette + 16) = CACurrentMediaTime();
  }
}

- (void)didUseMiniPalette
{
  if (self && *(self + 9) && (*(self + 10) & 1) == 0)
  {
    v2 = PKPencilSqueezeAnalyticsLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "did use mini palette", v3, 2u);
    }

    *(self + 10) = 1;
  }
}

- (void)didHideMiniPaletteByDrawing
{
  if (self)
  {
    v1[0] = MEMORY[0x1E69E9820];
    v1[1] = 3221225472;
    v1[2] = __65__PKPencilSqueezeAnalyticsController_didHideMiniPaletteByDrawing__block_invoke;
    v1[3] = &unk_1E82D7148;
    v1[4] = self;
    [(PKPencilSqueezeAnalyticsController *)self _didHideMiniPaletteWithBlock:v1];
  }
}

void __65__PKPencilSqueezeAnalyticsController_didHideMiniPaletteByDrawing__block_invoke(uint64_t a1)
{
  v2 = PKPencilSqueezeAnalyticsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "did hide mini palette by drawing", v3, 2u);
  }

  [(PKPencilSqueezeAnalyticsController *)*(a1 + 32) _logSqueezeCategory:?];
}

- (void)_logSqueezeCategory:(uint64_t)category
{
  v46 = *MEMORY[0x1E69E9840];
  if (category)
  {
    preferredSqueezeAction = [MEMORY[0x1E69DCD58] preferredSqueezeAction];
    v5 = preferredSqueezeAction;
    if (preferredSqueezeAction >= 5)
    {
      if (preferredSqueezeAction == 6)
      {
        v5 = 8;
      }

      else if (preferredSqueezeAction == 5)
      {
        if (*(category + 8))
        {
          v5 = 10;
        }

        else
        {
          v5 = 9;
        }
      }

      else
      {
        v35 = PKPencilSqueezeAnalyticsLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v5;
          _os_log_error_impl(&dword_1C7CCA000, v35, OS_LOG_TYPE_ERROR, "Unable to map squeeze trigger action: %lu", &buf, 0xCu);
        }

        v5 = 0;
      }
    }

    WeakRetained = objc_loadWeakRetained((category + 24));
    v7 = [WeakRetained pencilSqueezeAnalyticsControllerIsHovering:category];

    v8 = objc_loadWeakRetained((category + 24));
    [v8 pencilSqueezeAnalyticsControllerHoverZOffset:category];
    v10 = v9;

    v11 = objc_loadWeakRetained((category + 24));
    v12 = v11;
    if (!v7 || (v10 >= 0.1 ? (v13 = v10 > 1.0) : (v13 = 1), v13))
    {
      v17 = [v11 pencilSqueezeAnalyticsControllerIsHovering:category];

      v18 = objc_loadWeakRetained((category + 24));
      [v18 pencilSqueezeAnalyticsControllerHoverZOffset:category];
      v20 = v19;

      if ((v17 & (v20 == 0.0)) != 0)
      {
        v16 = 2;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v14 = [v11 pencilSqueezeAnalyticsControllerHoverSettings:category];
      allowDoubleTapOnlyWithPencilHover = [objc_opt_class() allowDoubleTapOnlyWithPencilHover];

      if (allowDoubleTapOnlyWithPencilHover)
      {
        v16 = 3;
      }

      else
      {
        v16 = 1;
      }
    }

    v21 = +[PKPencilDevice squeezeThreshold];
    v22 = PKPencilSqueezeThresholdMap(v21);
    v23 = objc_loadWeakRetained((category + 24));
    v24 = [v23 pencilSqueezeAnalyticsControllerHoverSettings:category];
    toolPreviewActive = [v24 toolPreviewActive];

    v40[0] = @"squeezeCategory";
    v26 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    *&buf = v26;
    v40[1] = @"triggerAction";
    v27 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    *(&buf + 1) = v27;
    v40[2] = @"pencilLocation";
    v28 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
    v42 = v28;
    v40[3] = @"squeezeThreshold";
    v29 = [MEMORY[0x1E696AD98] numberWithInteger:v22];
    v43 = v29;
    v40[4] = @"hoverSettingState";
    v30 = [MEMORY[0x1E696AD98] numberWithBool:toolPreviewActive];
    v44 = v30;
    v40[5] = @"bundleId_category";
    v31 = +[PKStatisticsManager bundleIDCategory];
    v45 = v31;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:v40 count:6];

    v33 = PKPencilSqueezeAnalyticsLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v36) = 138477827;
      *(&v36 + 4) = v32;
      _os_log_impl(&dword_1C7CCA000, v33, OS_LOG_TYPE_DEFAULT, "Send event: %{private}@", &v36, 0xCu);
    }

    *&v36 = MEMORY[0x1E69E9820];
    *(&v36 + 1) = 3221225472;
    v37 = __102__PKPencilSqueezeAnalyticsController__logSqueezeCategory_action_location_threshold_hoverSettingState___block_invoke;
    v38 = &unk_1E82D8058;
    v39 = v32;
    v34 = v32;
    AnalyticsSendEventLazy();
  }
}

- (void)_didHideMiniPaletteWithBlock:(uint64_t)block
{
  v3 = a2;
  if (block && *(block + 9) && (*(block + 11) & 1) == 0)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
    *(block + 8) = 0x1000000;
  }
}

- (void)didHideMiniPaletteBySqueezingAgain
{
  if (self)
  {
    v1[0] = MEMORY[0x1E69E9820];
    v1[1] = 3221225472;
    v1[2] = __72__PKPencilSqueezeAnalyticsController_didHideMiniPaletteBySqueezingAgain__block_invoke;
    v1[3] = &unk_1E82D7148;
    v1[4] = self;
    [(PKPencilSqueezeAnalyticsController *)self _didHideMiniPaletteWithBlock:v1];
  }
}

void __72__PKPencilSqueezeAnalyticsController_didHideMiniPaletteBySqueezingAgain__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 10) == 1)
  {

    [(PKPencilSqueezeAnalyticsController *)v2 _logSqueezeCategory:?];
  }

  else
  {
    v3 = CACurrentMediaTime() - *(*(a1 + 32) + 16);
    v4 = PKPencilSqueezeAnalyticsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 8);
      v7 = 134218240;
      v8 = v3;
      v9 = 1024;
      v10 = v5;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "did hide mini palette after %.2f seconds, isUndoRedoPalette: %{BOOL}d", &v7, 0x12u);
    }

    if (v3 >= 0.5)
    {
      v6 = 12;
    }

    else
    {
      v6 = 8;
    }

    [(PKPencilSqueezeAnalyticsController *)*(a1 + 32) _logSqueezeCategory:v6];
  }
}

- (void)didHideMiniPaletteByTappingOutsideOnScreen
{
  if (self)
  {
    v1[0] = MEMORY[0x1E69E9820];
    v1[1] = 3221225472;
    v1[2] = __80__PKPencilSqueezeAnalyticsController_didHideMiniPaletteByTappingOutsideOnScreen__block_invoke;
    v1[3] = &unk_1E82D7148;
    v1[4] = self;
    [(PKPencilSqueezeAnalyticsController *)self _didHideMiniPaletteWithBlock:v1];
  }
}

- (void)didHideMiniPaletteByChangingContext
{
  if (self)
  {
    v1[0] = MEMORY[0x1E69E9820];
    v1[1] = 3221225472;
    v1[2] = __73__PKPencilSqueezeAnalyticsController_didHideMiniPaletteByChangingContext__block_invoke;
    v1[3] = &unk_1E82D7148;
    v1[4] = self;
    [(PKPencilSqueezeAnalyticsController *)self _didHideMiniPaletteWithBlock:v1];
  }
}

+ (uint64_t)currentSqueezeThresholdIndex
{
  objc_opt_self();
  v0 = +[PKPencilDevice squeezeThreshold];
  v1 = PKPencilSqueezeThresholdMap(v0);

  return v1;
}

@end