@interface AVBackdropView
+ (id)secondaryMaterialOverlayView;
+ (void)applyBaseTrackTintToView:(id)a3;
+ (void)applyCompletedTrackTintToView:(id)a3;
+ (void)applyGlyphTintColor:(id)a3 toView:(id)a4;
+ (void)applyLoadedTrackTintToView:(id)a3;
+ (void)applyPrimaryGlyphTintToView:(id)a3;
+ (void)applySecondaryGlyphTintToView:(id)a3;
+ (void)configureSlider:(id)a3 thumbView:(id)a4 loadedTrackView:(id)a5 withTimelineMarkers:(id)a6;
+ (void)configureView:(id)a3 forTintEffectWithColor:(id)a4 filterType:(id)a5;
+ (void)removeAllFiltersFromView:(id)a3;
@end

@implementation AVBackdropView

+ (id)secondaryMaterialOverlayView
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:0];
  [v2 setUserInteractionEnabled:0];
  v3 = MEMORY[0x1E69DD290];
  v4 = [MEMORY[0x1E69DC888] blackColor];
  v5 = [v3 effectCompositingColor:v4 withMode:23 alpha:0.06];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v2 setBackgroundEffects:v6];

  return v2;
}

+ (void)configureView:(id)a3 forTintEffectWithColor:(id)a4 filterType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[AVKitGlobalSettings shared];
  v12 = [v11 thirdGenerationControlsEnabled];
  v13 = *MEMORY[0x1E6979CF8];

  if (v12)
  {
    v14 = v13 == v10;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {

    v10 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v8;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 _setTextColorFollowsTintColor:1];
    [v8 setTintColor:v9];
    v17 = [v8 layer];
    v18 = [MEMORY[0x1E6979378] filterWithType:v10];
    [v17 setCompositingFilter:v18];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v16 titleForState:0], (v19 = objc_claimAutoreleasedReturnValue()) != 0) && (v20 = v19, objc_msgSend(v16, "imageForState:", 0), v21 = objc_claimAutoreleasedReturnValue(), v21, v20, !v21))
    {
      v22 = v9;
      v23 = v10;
      v24 = [v16 titleForState:0];

      if (v24)
      {
        v33 = 0.0;
        [v22 getRed:0 green:0 blue:0 alpha:&v33];
        v25 = *MEMORY[0x1E6979CC0];
        if (v33 < 1.0)
        {
          v25 = v23;
        }

        v26 = v25;

        v27 = [v16 titleLabel];
        [a1 configureView:v27 forTintEffectWithColor:v22 filterType:v23];

        v22 = 0;
        v23 = v26;
      }

      else
      {
        v28 = [v16 titleLabel];

        if (v28)
        {
          v29 = [v16 titleLabel];
          [a1 configureView:v29 forTintEffectWithColor:0 filterType:*MEMORY[0x1E6979CC0]];
        }
      }

      v30 = [MEMORY[0x1E69DD858] layerWithTintColor:v22 filterType:v23];
      v31 = [MEMORY[0x1E69DD840] configWithContentConfig:v30];
      v32 = [v31 contentConfig];
      [v32 configureLayerView:v8];
    }
  }
}

+ (void)applyLoadedTrackTintToView:(id)a3
{
  v3 = MEMORY[0x1E69DC888];
  v4 = a3;
  v5 = [v3 colorWithWhite:1.0 alpha:0.08];
  [AVBackdropView configureView:v4 forTintEffectWithColor:v5 filterType:*MEMORY[0x1E6979CF8]];
}

+ (void)applyCompletedTrackTintToView:(id)a3
{
  v3 = MEMORY[0x1E69DC888];
  v4 = a3;
  v5 = [v3 colorWithWhite:1.0 alpha:0.35];
  [AVBackdropView configureView:v4 forTintEffectWithColor:v5 filterType:*MEMORY[0x1E6979CF8]];
}

+ (void)applyBaseTrackTintToView:(id)a3
{
  v3 = MEMORY[0x1E69DC888];
  v4 = a3;
  v5 = [v3 colorWithWhite:1.0 alpha:0.1];
  [AVBackdropView configureView:v4 forTintEffectWithColor:v5 filterType:*MEMORY[0x1E6979CF8]];
}

+ (void)configureSlider:(id)a3 thumbView:(id)a4 loadedTrackView:(id)a5 withTimelineMarkers:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a6;
  v11 = +[AVKitGlobalSettings shared];
  v12 = [v11 thirdGenerationControlsEnabled];
  v13 = *MEMORY[0x1E6979CF8];
  if (v12)
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [v8 layer];
  [v15 setAllowsGroupBlending:0];

  v16 = [v8 _minTrackView];
  v17 = [v16 layer];
  [v17 setCompositingFilter:v14];

  v18 = [v8 _minTrackView];
  [v18 setAlpha:0.35];

  v19 = [v8 _maxTrackView];
  v20 = [v19 layer];
  [v20 setCompositingFilter:v14];

  v21 = [v8 _maxTrackView];
  [v21 setAlpha:0.1];

  [v9 setAlpha:0.08];
  v32 = v9;
  v22 = [v9 layer];
  [v22 setCompositingFilter:v14];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = v10;
  v24 = [v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v34;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v33 + 1) + 8 * i);
        [v28 setAlpha:1.0];
        v29 = [MEMORY[0x1E69DC888] whiteColor];
        v30 = [v29 colorWithAlphaComponent:0.5];
        [v28 setBackgroundColor:v30];

        v31 = [v28 layer];
        [v31 setCompositingFilter:v14];
      }

      v25 = [v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v25);
  }
}

+ (void)applyGlyphTintColor:(id)a3 toView:(id)a4
{
  v4 = MEMORY[0x1E6979CF8];
  if (!a3)
  {
    v4 = MEMORY[0x1E6979CC0];
  }

  [a1 configureView:a4 forTintEffectWithColor:a3 filterType:*v4];
}

+ (void)applySecondaryGlyphTintToView:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() secondaryGlyphTintColor];
  [a1 configureView:v4 forTintEffectWithColor:v5 filterType:*MEMORY[0x1E6979CF8]];
}

+ (void)applyPrimaryGlyphTintToView:(id)a3
{
  v4 = MEMORY[0x1E69DC888];
  v5 = a3;
  v6 = [v4 colorWithWhite:1.0 alpha:0.75];
  [a1 configureView:v5 forTintEffectWithColor:v6 filterType:*MEMORY[0x1E6979CF8]];
}

+ (void)removeAllFiltersFromView:(id)a3
{
  v3 = [a3 layer];
  [v3 setCompositingFilter:0];
}

@end