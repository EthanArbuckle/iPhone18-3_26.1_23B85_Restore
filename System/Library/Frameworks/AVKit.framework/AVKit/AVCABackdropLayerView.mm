@interface AVCABackdropLayerView
+ (id)averageFilter;
+ (id)blurFilter;
+ (id)colorMatrixFilter;
+ (id)reducedTransparencyColor;
- (AVCABackdropLayerView)groupLeader;
- (AVCABackdropLayerView)initWithFrame:(CGRect)a3;
- (BOOL)isCaptureOnly;
- (id)_blurRadiusNSNumberValue;
- (void)_ensureDependents;
- (void)_enumerateDependents:(id)a3;
- (void)_setUpBlurFilterIfNeeded;
- (void)_setUpVariableBlurFilterIfNeeded;
- (void)_updateBlurFilterRadiusIfNeeded;
- (void)_updateFilters;
- (void)_updateVariableBlurFilterMaskImageIfNeeded;
- (void)addDependent:(id)a3;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)removeDependent:(id)a3;
- (void)setBlurRadius:(double)a3;
- (void)setCaptureOnly:(BOOL)a3;
- (void)setCustomBackgroundColor:(id)a3;
- (void)setGroupLeader:(id)a3;
- (void)setOverrideBlurOnlyFilter:(BOOL)a3;
- (void)setVariableBlurMaskImage:(id)a3;
- (void)updateActiveBackdropEffectIfGroupLeader;
- (void)updateGroupLeader;
@end

@implementation AVCABackdropLayerView

- (AVCABackdropLayerView)groupLeader
{
  WeakRetained = objc_loadWeakRetained(&self->_groupLeader);

  return WeakRetained;
}

- (id)_blurRadiusNSNumberValue
{
  blurRadius = self->_blurRadius;
  *&blurRadius = blurRadius;
  return [MEMORY[0x1E696AD98] numberWithFloat:blurRadius];
}

- (void)_enumerateDependents:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSHashTable *)self->_dependents copy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v4[2](v4, *(*(&v11 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_ensureDependents
{
  if (!self->_dependents)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    dependents = self->_dependents;
    self->_dependents = v3;

    MEMORY[0x1EEE66BB8](v3, dependents);
  }
}

- (void)_updateFilters
{
  v60[1] = *MEMORY[0x1E69E9840];
  if ([(AVCABackdropLayerView *)self overrideBlurOnlyFilter]&& self->_blurFilter)
  {
    [(AVCABackdropLayerView *)self setBackgroundColor:0];
    variableBlurMaskImage = self->_variableBlurMaskImage;
    v4 = [(AVCABackdropLayerView *)self layer];
    if (variableBlurMaskImage)
    {
      variableBlurFilter = self->_variableBlurFilter;
      v5 = 1.0;
      p_variableBlurFilter = &variableBlurFilter;
    }

    else
    {
      v60[0] = self->_blurFilter;
      v5 = 0.25;
      p_variableBlurFilter = v60;
    }

    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:p_variableBlurFilter count:1];
    [v4 setFilters:v25];

    v26 = [(AVCABackdropLayerView *)self layer];
    [v26 setScale:v5];

LABEL_24:
    v27 = [(AVCABackdropLayerView *)self layer];
    [v27 setEnabled:1];

    return;
  }

  v7 = [(AVCABackdropLayerView *)self groupLeader];

  v8 = [(AVCABackdropLayerView *)self groupLeader];

  v9 = [(AVCABackdropLayerView *)self dependents];
  v10 = [v9 count];

  if (!v7)
  {
    v15 = [(AVCABackdropLayerView *)self layer];
    [v15 setGroupName:0];

    v55 = [(AVCABackdropLayerView *)self layer];
    [v55 setFilters:MEMORY[0x1E695E0F0]];
    goto LABEL_11;
  }

  if (v8 == self && (v10 || [(AVCABackdropLayerView *)self isCaptureOnly]))
  {
    v16 = [(AVCABackdropLayerView *)self layer];
    v17 = [v16 groupName];

    if (!v17)
    {
      v18 = [MEMORY[0x1E696AE30] processInfo];
      v19 = [v18 globallyUniqueString];
      v20 = [(AVCABackdropLayerView *)self layer];
      [v20 setGroupName:v19];
    }

    v21 = [(AVCABackdropLayerView *)self activeBackdropEffect];
    if ((v21 - 2) >= 2)
    {
      if (v21 == 1)
      {
        [(AVCABackdropLayerView *)self setHidden:0];
        v38 = [(AVCABackdropLayerView *)self layer];
        [v38 setEnabled:1];

        v39 = [(AVCABackdropLayerView *)self layer];
        [v39 setScale:0.25];

        v24 = +[AVCABackdropLayerView blurFilter];
        v58[0] = v24;
        v40 = +[AVCABackdropLayerView colorMatrixFilter];
        v58[1] = v40;
        v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
        v42 = [(AVCABackdropLayerView *)self layer];
        [v42 setFilters:v41];

        goto LABEL_34;
      }

      if (v21)
      {
LABEL_35:
        [(AVCABackdropLayerView *)self setBackgroundColor:0];
        [(AVCABackdropLayerView *)self _enumerateDependents:&__block_literal_global_50];
        return;
      }
    }

    [(AVCABackdropLayerView *)self setHidden:[(AVCABackdropLayerView *)self isCaptureOnly]];
    v22 = [(AVCABackdropLayerView *)self layer];
    [v22 setEnabled:0];

    v23 = [(AVCABackdropLayerView *)self layer];
    [v23 setScale:0.0];

    v24 = [(AVCABackdropLayerView *)self layer];
    [v24 setFilters:MEMORY[0x1E695E0F0]];
LABEL_34:

    goto LABEL_35;
  }

  v11 = [(AVCABackdropLayerView *)self customBackgroundColor];

  if (v11)
  {
    v12 = [(AVCABackdropLayerView *)self layer];
    [v12 setGroupName:0];

    [(AVCABackdropLayerView *)self setActiveBackdropEffect:0];
    v13 = [(AVCABackdropLayerView *)self layer];
    [v13 setEnabled:0];

    v14 = [(AVCABackdropLayerView *)self customBackgroundColor];
LABEL_9:
    [(AVCABackdropLayerView *)self setBackgroundColor:v14];
LABEL_11:

    return;
  }

  v28 = [(AVCABackdropLayerView *)self groupLeader];
  -[AVCABackdropLayerView setActiveBackdropEffect:](self, "setActiveBackdropEffect:", [v28 activeBackdropEffect]);

  v29 = [(AVCABackdropLayerView *)self activeBackdropEffect];
  if (v29 > 1)
  {
    if (v29 == 2)
    {
      [(AVCABackdropLayerView *)self setBackgroundColor:0];
      v44 = [(AVCABackdropLayerView *)self layer];
      [v44 setGroupName:0];

      v45 = [(AVCABackdropLayerView *)self layer];
      [v45 setEnabled:1];

      v46 = [(AVCABackdropLayerView *)self layer];
      [v46 setScale:0.25];

      v47 = +[AVCABackdropLayerView averageFilter];
      v57[0] = v47;
      v48 = +[AVCABackdropLayerView colorMatrixFilter];
      v57[1] = v48;
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
      v50 = [(AVCABackdropLayerView *)self layer];
      [v50 setFilters:v49];

      return;
    }

    if (v29 == 3)
    {
      v35 = [(AVCABackdropLayerView *)self layer];
      [v35 setGroupName:0];

      v36 = [(AVCABackdropLayerView *)self layer];
      [v36 setEnabled:0];

      v37 = [(AVCABackdropLayerView *)self layer];
      [v37 setFilters:MEMORY[0x1E695E0F0]];

      v14 = +[AVCABackdropLayerView reducedTransparencyColor];
      goto LABEL_9;
    }
  }

  else
  {
    if (!v29)
    {
      [(AVCABackdropLayerView *)self setBackgroundColor:0];
      v43 = [(AVCABackdropLayerView *)self layer];
      [v43 setGroupName:0];

      v55 = [(AVCABackdropLayerView *)self layer];
      [v55 setEnabled:0];
      goto LABEL_11;
    }

    if (v29 == 1)
    {
      [(AVCABackdropLayerView *)self setBackgroundColor:0];
      v30 = [(AVCABackdropLayerView *)self groupLeader];
      v31 = [v30 layer];
      v32 = [v31 groupName];
      v33 = [(AVCABackdropLayerView *)self layer];
      [v33 setGroupName:v32];

      if (v8 == self)
      {
        v30 = +[AVCABackdropLayerView blurFilter];
        v56[0] = v30;
        v31 = +[AVCABackdropLayerView colorMatrixFilter];
        v56[1] = v31;
        v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
      }

      else
      {
        v32 = [(AVCABackdropLayerView *)self groupLeader];
        v33 = [v32 layer];
        v34 = [v33 filters];
      }

      v51 = [(AVCABackdropLayerView *)self layer];
      [v51 setFilters:v34];

      if (v8 == self)
      {

        v53 = 0.25;
      }

      else
      {

        v30 = [(AVCABackdropLayerView *)self groupLeader];
        v31 = [v30 layer];
        [v31 scale];
        v53 = v52;
      }

      v54 = [(AVCABackdropLayerView *)self layer];
      [v54 setScale:v53];

      if (v8 != self)
      {
      }

      goto LABEL_24;
    }
  }
}

- (void)_updateVariableBlurFilterMaskImageIfNeeded
{
  if (self->_overrideBlurOnlyFilter)
  {
    [(CAFilter *)self->_variableBlurFilter setValue:[(UIImage *)self->_variableBlurMaskImage CGImage] forKey:@"inputMaskImage"];
    v4 = [(AVCABackdropLayerView *)self layer];
    [v4 setFilters:0];

    [(AVCABackdropLayerView *)self _updateFilters];
  }
}

- (void)_updateBlurFilterRadiusIfNeeded
{
  if (self->_overrideBlurOnlyFilter)
  {
    v4 = [(AVCABackdropLayerView *)self _blurRadiusNSNumberValue];
    [(CAFilter *)self->_blurFilter setValue:v4 forKey:@"inputRadius"];
    [(CAFilter *)self->_variableBlurFilter setValue:v4 forKey:@"inputRadius"];
  }
}

- (void)_setUpVariableBlurFilterIfNeeded
{
  if (!self->_variableBlurFilter && self->_overrideBlurOnlyFilter && self->_variableBlurMaskImage)
  {
    v3 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D70]];
    [v3 setValue:MEMORY[0x1E695E118] forKey:@"inputNormalizeEdges"];
    [v3 setValue:MEMORY[0x1E695E110] forKey:@"inputDither"];
    variableBlurFilter = self->_variableBlurFilter;
    self->_variableBlurFilter = v3;
  }
}

- (void)_setUpBlurFilterIfNeeded
{
  if (!self->_blurFilter && self->_overrideBlurOnlyFilter && !self->_variableBlurMaskImage)
  {
    v3 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    v4 = [(AVCABackdropLayerView *)self _blurRadiusNSNumberValue];
    [v3 setValue:v4 forKey:@"inputRadius"];

    v5 = MEMORY[0x1E695E118];
    [v3 setValue:MEMORY[0x1E695E118] forKey:@"inputNormalizeEdges"];
    [v3 setValue:v5 forKey:@"inputHardEdges"];
    [v3 setValue:@"high" forKey:@"inputQuality"];
    [v3 setValue:@"high" forKey:@"inputIntermediateBitDepth"];
    blurFilter = self->_blurFilter;
    self->_blurFilter = v3;
  }
}

- (void)setVariableBlurMaskImage:(id)a3
{
  v5 = a3;
  if (self->_variableBlurMaskImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_variableBlurMaskImage, a3);
    [(AVCABackdropLayerView *)self _setUpVariableBlurFilterIfNeeded];
    [(AVCABackdropLayerView *)self _updateBlurFilterRadiusIfNeeded];
    [(AVCABackdropLayerView *)self _updateVariableBlurFilterMaskImageIfNeeded];
    [(AVCABackdropLayerView *)self _updateFilters];
    v5 = v6;
  }
}

- (void)setBlurRadius:(double)a3
{
  blurRadius = self->_blurRadius;
  v5 = a3;
  if (vabds_f32(blurRadius, v5) >= 0.00000011921)
  {
    self->_blurRadius = a3;
    [(AVCABackdropLayerView *)self _setUpBlurFilterIfNeeded];
    [(AVCABackdropLayerView *)self _setUpVariableBlurFilterIfNeeded];
    [(AVCABackdropLayerView *)self _updateBlurFilterRadiusIfNeeded];

    [(AVCABackdropLayerView *)self _updateFilters];
  }
}

- (void)setOverrideBlurOnlyFilter:(BOOL)a3
{
  if (self->_overrideBlurOnlyFilter != a3)
  {
    v4 = a3;
    self->_overrideBlurOnlyFilter = a3;
    v6 = [(AVCABackdropLayerView *)self layer];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [(AVCABackdropLayerView *)self layer];
      [v8 setShouldOverrideScale:!v4];
    }

    [(AVCABackdropLayerView *)self _setUpBlurFilterIfNeeded];
  }
}

- (void)removeDependent:(id)a3
{
  v4 = a3;
  if (v4 != self)
  {
    v7 = v4;
    v5 = [(AVCABackdropLayerView *)self groupLeader];

    if (v5 == self)
    {
      [(AVCABackdropLayerView *)self _ensureDependents];
      v6 = [(AVCABackdropLayerView *)self dependents];
      [v6 removeObject:v7];
    }

    else
    {
      v6 = [(AVCABackdropLayerView *)self groupLeader];
      [v6 removeDependent:v7];
    }

    v4 = v7;
  }
}

- (void)addDependent:(id)a3
{
  v4 = a3;
  if (v4 != self)
  {
    v7 = v4;
    v5 = [(AVCABackdropLayerView *)self groupLeader];

    if (v5 == self)
    {
      [(AVCABackdropLayerView *)self _ensureDependents];
      v6 = [(AVCABackdropLayerView *)self dependents];
      [v6 addObject:v7];
    }

    else
    {
      v6 = [(AVCABackdropLayerView *)self groupLeader];
      [v6 addDependent:v7];
    }

    v4 = v7;
  }
}

- (void)updateGroupLeader
{
  v3 = [(UIView *)self avkit_backdropGroupLeader];
  [(AVCABackdropLayerView *)self setGroupLeader:v3];

  v4 = [(AVCABackdropLayerView *)self window];
  if (v4)
  {
    v5 = v4;
    v6 = [(AVCABackdropLayerView *)self groupLeader];

    if (!v6)
    {

      [(AVCABackdropLayerView *)self setGroupLeader:self];
    }
  }
}

- (void)setGroupLeader:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_groupLeader);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->_groupLeader);

    v7 = objc_loadWeakRetained(&self->_groupLeader);
    [v7 removeDependent:self];

    v8 = objc_storeWeak(&self->_groupLeader, obj);
    [(AVCABackdropLayerView *)obj addDependent:self];

    if ((obj == self) == (v6 != self))
    {
      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      if (obj == self)
      {
        [v9 addObserver:self selector:sel_updateActiveBackdropEffectIfGroupLeader name:*MEMORY[0x1E69DD920] object:0];

        [(AVCABackdropLayerView *)self updateActiveBackdropEffectIfGroupLeader];
      }

      else
      {
        [v9 removeObserver:self name:*MEMORY[0x1E69DD920] object:0];
      }
    }

    [(AVCABackdropLayerView *)self _updateFilters];
    v5 = obj;
  }
}

- (void)setCustomBackgroundColor:(id)a3
{
  v4 = [a3 copy];
  customBackgroundColor = self->_customBackgroundColor;
  self->_customBackgroundColor = v4;

  [(AVCABackdropLayerView *)self _updateFilters];
}

- (void)setCaptureOnly:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVCABackdropLayerView *)self layer];
  [v4 setCaptureOnly:v3];
}

- (BOOL)isCaptureOnly
{
  v2 = [(AVCABackdropLayerView *)self layer];
  v3 = [v2 captureOnly];

  return v3;
}

- (void)updateActiveBackdropEffectIfGroupLeader
{
  v3 = [(AVCABackdropLayerView *)self groupLeader];

  if (v3 == self)
  {
    v4 = [(AVCABackdropLayerView *)self activeBackdropEffect];
    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      v5 = 3;
    }

    else if ([(AVCABackdropLayerView *)self forceLowQualityEffect])
    {
      v5 = 2;
    }

    else
    {
      v6 = [(AVCABackdropLayerView *)self dependents];
      v7 = [v6 count];

      if (v7 < 1)
      {
        v5 = 1;
      }

      else
      {
        v10 = 0;
        v11 = &v10;
        v12 = 0x2020000000;
        v13 = 0;
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __64__AVCABackdropLayerView_updateActiveBackdropEffectIfGroupLeader__block_invoke;
        v9[3] = &unk_1E7208AF8;
        v9[4] = &v10;
        [(AVCABackdropLayerView *)self _enumerateDependents:v9];
        v8 = v11[3];
        if (v8)
        {
          if (v8 <= 2 && [(UIView *)self avkit_isInAScrollView])
          {
            v5 = 2;
          }

          else
          {
            v5 = 1;
          }
        }

        else
        {
          v5 = 0;
        }

        _Block_object_dispose(&v10, 8);
      }
    }

    [(AVCABackdropLayerView *)self setActiveBackdropEffect:v5];
    if (v4 != [(AVCABackdropLayerView *)self activeBackdropEffect])
    {
      [(AVCABackdropLayerView *)self _updateFilters];
    }
  }
}

void __64__AVCABackdropLayerView_updateActiveBackdropEffectIfGroupLeader__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _isInAWindow] && (objc_msgSend(v3, "isHidden") & 1) == 0)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = AVCABackdropLayerView;
  [(AVCABackdropLayerView *)&v3 didMoveToSuperview];
  [(AVCABackdropLayerView *)self updateGroupLeader];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = AVCABackdropLayerView;
  [(AVCABackdropLayerView *)&v3 didMoveToWindow];
  [(AVCABackdropLayerView *)self updateGroupLeader];
}

- (AVCABackdropLayerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AVCABackdropLayerView;
  v3 = [(AVCABackdropLayerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_blurRadius = 50.0;
    [(AVCABackdropLayerView *)v3 setUserInteractionEnabled:0];
  }

  return v4;
}

+ (id)reducedTransparencyColor
{
  if (reducedTransparencyColor_onceToken != -1)
  {
    dispatch_once(&reducedTransparencyColor_onceToken, &__block_literal_global_24_21083);
  }

  v3 = reducedTransparencyColor_reducedTransparencyColor;

  return v3;
}

uint64_t __49__AVCABackdropLayerView_reducedTransparencyColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.168627451 green:0.180392157 blue:0.188235294 alpha:1.0];
  v1 = reducedTransparencyColor_reducedTransparencyColor;
  reducedTransparencyColor_reducedTransparencyColor = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)colorMatrixFilter
{
  if (colorMatrixFilter_onceToken != -1)
  {
    dispatch_once(&colorMatrixFilter_onceToken, &__block_literal_global_18_21086);
  }

  v3 = colorMatrixFilter_colorMatrixFilter;

  return v3;
}

void __42__AVCABackdropLayerView_colorMatrixFilter__block_invoke()
{
  v0 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979880]];
  v1 = colorMatrixFilter_colorMatrixFilter;
  colorMatrixFilter_colorMatrixFilter = v0;

  CAColorMatrixMakeSaturation();
  CAColorMatrixMakeColorSourceOver();
  CAColorMatrixMakeColorSourceOver();
  CAColorMatrixConcat();
  CAColorMatrixConcat();
  v2 = colorMatrixFilter_colorMatrixFilter;
  memset(v4, 0, sizeof(v4));
  v3 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:{v4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}];
  [v2 setValue:v3 forKey:@"inputColorMatrix"];
}

+ (id)averageFilter
{
  if (averageFilter_onceToken != -1)
  {
    dispatch_once(&averageFilter_onceToken, &__block_literal_global_16_21092);
  }

  v3 = averageFilter_averageFilter;

  return v3;
}

uint64_t __38__AVCABackdropLayerView_averageFilter__block_invoke()
{
  v0 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979810]];
  v1 = averageFilter_averageFilter;
  averageFilter_averageFilter = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)blurFilter
{
  if (blurFilter_onceToken != -1)
  {
    dispatch_once(&blurFilter_onceToken, &__block_literal_global_21094);
  }

  v3 = blurFilter_blurFilter;

  return v3;
}

uint64_t __35__AVCABackdropLayerView_blurFilter__block_invoke()
{
  v0 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
  v1 = blurFilter_blurFilter;
  blurFilter_blurFilter = v0;

  [blurFilter_blurFilter setValue:&unk_1EFF13300 forKey:@"inputRadius"];
  [blurFilter_blurFilter setValue:MEMORY[0x1E695E118] forKey:@"inputNormalizeEdges"];
  [blurFilter_blurFilter setValue:@"low" forKey:@"inputQuality"];
  v2 = blurFilter_blurFilter;

  return [v2 setValue:@"low" forKey:@"inputIntermediateBitDepth"];
}

@end