@interface AVBackdropView
+ (id)secondaryMaterialOverlayView;
+ (void)applyBaseTrackTintToView:(id)view;
+ (void)applyCompletedTrackTintToView:(id)view;
+ (void)applyGlyphTintColor:(id)color toView:(id)view;
+ (void)applyLoadedTrackTintToView:(id)view;
+ (void)applyPrimaryGlyphTintToView:(id)view;
+ (void)applySecondaryGlyphTintToView:(id)view;
+ (void)configureSlider:(id)slider thumbView:(id)view loadedTrackView:(id)trackView withTimelineMarkers:(id)markers;
+ (void)configureView:(id)view forTintEffectWithColor:(id)color filterType:(id)type;
+ (void)removeAllFiltersFromView:(id)view;
@end

@implementation AVBackdropView

+ (id)secondaryMaterialOverlayView
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:0];
  [v2 setUserInteractionEnabled:0];
  v3 = MEMORY[0x1E69DD290];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v5 = [v3 effectCompositingColor:blackColor withMode:23 alpha:0.06];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v2 setBackgroundEffects:v6];

  return v2;
}

+ (void)configureView:(id)view forTintEffectWithColor:(id)color filterType:(id)type
{
  viewCopy = view;
  colorCopy = color;
  typeCopy = type;
  v11 = +[AVKitGlobalSettings shared];
  thirdGenerationControlsEnabled = [v11 thirdGenerationControlsEnabled];
  v13 = *MEMORY[0x1E6979CF8];

  if (thirdGenerationControlsEnabled)
  {
    v14 = v13 == typeCopy;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {

    typeCopy = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = viewCopy;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy _setTextColorFollowsTintColor:1];
    [viewCopy setTintColor:colorCopy];
    layer = [viewCopy layer];
    v18 = [MEMORY[0x1E6979378] filterWithType:typeCopy];
    [layer setCompositingFilter:v18];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v16 titleForState:0], (v19 = objc_claimAutoreleasedReturnValue()) != 0) && (v20 = v19, objc_msgSend(v16, "imageForState:", 0), v21 = objc_claimAutoreleasedReturnValue(), v21, v20, !v21))
    {
      v22 = colorCopy;
      v23 = typeCopy;
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

        titleLabel = [v16 titleLabel];
        [self configureView:titleLabel forTintEffectWithColor:v22 filterType:v23];

        v22 = 0;
        v23 = v26;
      }

      else
      {
        titleLabel2 = [v16 titleLabel];

        if (titleLabel2)
        {
          titleLabel3 = [v16 titleLabel];
          [self configureView:titleLabel3 forTintEffectWithColor:0 filterType:*MEMORY[0x1E6979CC0]];
        }
      }

      v30 = [MEMORY[0x1E69DD858] layerWithTintColor:v22 filterType:v23];
      v31 = [MEMORY[0x1E69DD840] configWithContentConfig:v30];
      contentConfig = [v31 contentConfig];
      [contentConfig configureLayerView:viewCopy];
    }
  }
}

+ (void)applyLoadedTrackTintToView:(id)view
{
  v3 = MEMORY[0x1E69DC888];
  viewCopy = view;
  v5 = [v3 colorWithWhite:1.0 alpha:0.08];
  [AVBackdropView configureView:viewCopy forTintEffectWithColor:v5 filterType:*MEMORY[0x1E6979CF8]];
}

+ (void)applyCompletedTrackTintToView:(id)view
{
  v3 = MEMORY[0x1E69DC888];
  viewCopy = view;
  v5 = [v3 colorWithWhite:1.0 alpha:0.35];
  [AVBackdropView configureView:viewCopy forTintEffectWithColor:v5 filterType:*MEMORY[0x1E6979CF8]];
}

+ (void)applyBaseTrackTintToView:(id)view
{
  v3 = MEMORY[0x1E69DC888];
  viewCopy = view;
  v5 = [v3 colorWithWhite:1.0 alpha:0.1];
  [AVBackdropView configureView:viewCopy forTintEffectWithColor:v5 filterType:*MEMORY[0x1E6979CF8]];
}

+ (void)configureSlider:(id)slider thumbView:(id)view loadedTrackView:(id)trackView withTimelineMarkers:(id)markers
{
  v38 = *MEMORY[0x1E69E9840];
  sliderCopy = slider;
  trackViewCopy = trackView;
  markersCopy = markers;
  v11 = +[AVKitGlobalSettings shared];
  thirdGenerationControlsEnabled = [v11 thirdGenerationControlsEnabled];
  v13 = *MEMORY[0x1E6979CF8];
  if (thirdGenerationControlsEnabled)
  {
    v13 = 0;
  }

  v14 = v13;

  layer = [sliderCopy layer];
  [layer setAllowsGroupBlending:0];

  _minTrackView = [sliderCopy _minTrackView];
  layer2 = [_minTrackView layer];
  [layer2 setCompositingFilter:v14];

  _minTrackView2 = [sliderCopy _minTrackView];
  [_minTrackView2 setAlpha:0.35];

  _maxTrackView = [sliderCopy _maxTrackView];
  layer3 = [_maxTrackView layer];
  [layer3 setCompositingFilter:v14];

  _maxTrackView2 = [sliderCopy _maxTrackView];
  [_maxTrackView2 setAlpha:0.1];

  [trackViewCopy setAlpha:0.08];
  v32 = trackViewCopy;
  layer4 = [trackViewCopy layer];
  [layer4 setCompositingFilter:v14];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = markersCopy;
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
        whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        v30 = [whiteColor colorWithAlphaComponent:0.5];
        [v28 setBackgroundColor:v30];

        layer5 = [v28 layer];
        [layer5 setCompositingFilter:v14];
      }

      v25 = [v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v25);
  }
}

+ (void)applyGlyphTintColor:(id)color toView:(id)view
{
  v4 = MEMORY[0x1E6979CF8];
  if (!color)
  {
    v4 = MEMORY[0x1E6979CC0];
  }

  [self configureView:view forTintEffectWithColor:color filterType:*v4];
}

+ (void)applySecondaryGlyphTintToView:(id)view
{
  viewCopy = view;
  secondaryGlyphTintColor = [objc_opt_class() secondaryGlyphTintColor];
  [self configureView:viewCopy forTintEffectWithColor:secondaryGlyphTintColor filterType:*MEMORY[0x1E6979CF8]];
}

+ (void)applyPrimaryGlyphTintToView:(id)view
{
  v4 = MEMORY[0x1E69DC888];
  viewCopy = view;
  v6 = [v4 colorWithWhite:1.0 alpha:0.75];
  [self configureView:viewCopy forTintEffectWithColor:v6 filterType:*MEMORY[0x1E6979CF8]];
}

+ (void)removeAllFiltersFromView:(id)view
{
  layer = [view layer];
  [layer setCompositingFilter:0];
}

@end