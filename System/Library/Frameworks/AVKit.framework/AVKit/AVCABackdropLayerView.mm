@interface AVCABackdropLayerView
+ (id)averageFilter;
+ (id)blurFilter;
+ (id)colorMatrixFilter;
+ (id)reducedTransparencyColor;
- (AVCABackdropLayerView)groupLeader;
- (AVCABackdropLayerView)initWithFrame:(CGRect)frame;
- (BOOL)isCaptureOnly;
- (id)_blurRadiusNSNumberValue;
- (void)_ensureDependents;
- (void)_enumerateDependents:(id)dependents;
- (void)_setUpBlurFilterIfNeeded;
- (void)_setUpVariableBlurFilterIfNeeded;
- (void)_updateBlurFilterRadiusIfNeeded;
- (void)_updateFilters;
- (void)_updateVariableBlurFilterMaskImageIfNeeded;
- (void)addDependent:(id)dependent;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)removeDependent:(id)dependent;
- (void)setBlurRadius:(double)radius;
- (void)setCaptureOnly:(BOOL)only;
- (void)setCustomBackgroundColor:(id)color;
- (void)setGroupLeader:(id)leader;
- (void)setOverrideBlurOnlyFilter:(BOOL)filter;
- (void)setVariableBlurMaskImage:(id)image;
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

- (void)_enumerateDependents:(id)dependents
{
  v16 = *MEMORY[0x1E69E9840];
  dependentsCopy = dependents;
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

        dependentsCopy[2](dependentsCopy, *(*(&v11 + 1) + 8 * v10++));
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
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    dependents = self->_dependents;
    self->_dependents = weakObjectsHashTable;

    MEMORY[0x1EEE66BB8](weakObjectsHashTable, dependents);
  }
}

- (void)_updateFilters
{
  v60[1] = *MEMORY[0x1E69E9840];
  if ([(AVCABackdropLayerView *)self overrideBlurOnlyFilter]&& self->_blurFilter)
  {
    [(AVCABackdropLayerView *)self setBackgroundColor:0];
    variableBlurMaskImage = self->_variableBlurMaskImage;
    layer = [(AVCABackdropLayerView *)self layer];
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
    [layer setFilters:v25];

    layer2 = [(AVCABackdropLayerView *)self layer];
    [layer2 setScale:v5];

LABEL_24:
    layer3 = [(AVCABackdropLayerView *)self layer];
    [layer3 setEnabled:1];

    return;
  }

  groupLeader = [(AVCABackdropLayerView *)self groupLeader];

  groupLeader2 = [(AVCABackdropLayerView *)self groupLeader];

  dependents = [(AVCABackdropLayerView *)self dependents];
  v10 = [dependents count];

  if (!groupLeader)
  {
    layer4 = [(AVCABackdropLayerView *)self layer];
    [layer4 setGroupName:0];

    layer5 = [(AVCABackdropLayerView *)self layer];
    [layer5 setFilters:MEMORY[0x1E695E0F0]];
    goto LABEL_11;
  }

  if (groupLeader2 == self && (v10 || [(AVCABackdropLayerView *)self isCaptureOnly]))
  {
    layer6 = [(AVCABackdropLayerView *)self layer];
    groupName = [layer6 groupName];

    if (!groupName)
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      globallyUniqueString = [processInfo globallyUniqueString];
      layer7 = [(AVCABackdropLayerView *)self layer];
      [layer7 setGroupName:globallyUniqueString];
    }

    activeBackdropEffect = [(AVCABackdropLayerView *)self activeBackdropEffect];
    if ((activeBackdropEffect - 2) >= 2)
    {
      if (activeBackdropEffect == 1)
      {
        [(AVCABackdropLayerView *)self setHidden:0];
        layer8 = [(AVCABackdropLayerView *)self layer];
        [layer8 setEnabled:1];

        layer9 = [(AVCABackdropLayerView *)self layer];
        [layer9 setScale:0.25];

        layer13 = +[AVCABackdropLayerView blurFilter];
        v58[0] = layer13;
        v40 = +[AVCABackdropLayerView colorMatrixFilter];
        v58[1] = v40;
        v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
        layer10 = [(AVCABackdropLayerView *)self layer];
        [layer10 setFilters:v41];

        goto LABEL_34;
      }

      if (activeBackdropEffect)
      {
LABEL_35:
        [(AVCABackdropLayerView *)self setBackgroundColor:0];
        [(AVCABackdropLayerView *)self _enumerateDependents:&__block_literal_global_50];
        return;
      }
    }

    [(AVCABackdropLayerView *)self setHidden:[(AVCABackdropLayerView *)self isCaptureOnly]];
    layer11 = [(AVCABackdropLayerView *)self layer];
    [layer11 setEnabled:0];

    layer12 = [(AVCABackdropLayerView *)self layer];
    [layer12 setScale:0.0];

    layer13 = [(AVCABackdropLayerView *)self layer];
    [layer13 setFilters:MEMORY[0x1E695E0F0]];
LABEL_34:

    goto LABEL_35;
  }

  customBackgroundColor = [(AVCABackdropLayerView *)self customBackgroundColor];

  if (customBackgroundColor)
  {
    layer14 = [(AVCABackdropLayerView *)self layer];
    [layer14 setGroupName:0];

    [(AVCABackdropLayerView *)self setActiveBackdropEffect:0];
    layer15 = [(AVCABackdropLayerView *)self layer];
    [layer15 setEnabled:0];

    customBackgroundColor2 = [(AVCABackdropLayerView *)self customBackgroundColor];
LABEL_9:
    [(AVCABackdropLayerView *)self setBackgroundColor:customBackgroundColor2];
LABEL_11:

    return;
  }

  groupLeader3 = [(AVCABackdropLayerView *)self groupLeader];
  -[AVCABackdropLayerView setActiveBackdropEffect:](self, "setActiveBackdropEffect:", [groupLeader3 activeBackdropEffect]);

  activeBackdropEffect2 = [(AVCABackdropLayerView *)self activeBackdropEffect];
  if (activeBackdropEffect2 > 1)
  {
    if (activeBackdropEffect2 == 2)
    {
      [(AVCABackdropLayerView *)self setBackgroundColor:0];
      layer16 = [(AVCABackdropLayerView *)self layer];
      [layer16 setGroupName:0];

      layer17 = [(AVCABackdropLayerView *)self layer];
      [layer17 setEnabled:1];

      layer18 = [(AVCABackdropLayerView *)self layer];
      [layer18 setScale:0.25];

      v47 = +[AVCABackdropLayerView averageFilter];
      v57[0] = v47;
      v48 = +[AVCABackdropLayerView colorMatrixFilter];
      v57[1] = v48;
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
      layer19 = [(AVCABackdropLayerView *)self layer];
      [layer19 setFilters:v49];

      return;
    }

    if (activeBackdropEffect2 == 3)
    {
      layer20 = [(AVCABackdropLayerView *)self layer];
      [layer20 setGroupName:0];

      layer21 = [(AVCABackdropLayerView *)self layer];
      [layer21 setEnabled:0];

      layer22 = [(AVCABackdropLayerView *)self layer];
      [layer22 setFilters:MEMORY[0x1E695E0F0]];

      customBackgroundColor2 = +[AVCABackdropLayerView reducedTransparencyColor];
      goto LABEL_9;
    }
  }

  else
  {
    if (!activeBackdropEffect2)
    {
      [(AVCABackdropLayerView *)self setBackgroundColor:0];
      layer23 = [(AVCABackdropLayerView *)self layer];
      [layer23 setGroupName:0];

      layer5 = [(AVCABackdropLayerView *)self layer];
      [layer5 setEnabled:0];
      goto LABEL_11;
    }

    if (activeBackdropEffect2 == 1)
    {
      [(AVCABackdropLayerView *)self setBackgroundColor:0];
      groupLeader4 = [(AVCABackdropLayerView *)self groupLeader];
      layer24 = [groupLeader4 layer];
      groupName2 = [layer24 groupName];
      layer25 = [(AVCABackdropLayerView *)self layer];
      [layer25 setGroupName:groupName2];

      if (groupLeader2 == self)
      {
        groupLeader4 = +[AVCABackdropLayerView blurFilter];
        v56[0] = groupLeader4;
        layer24 = +[AVCABackdropLayerView colorMatrixFilter];
        v56[1] = layer24;
        filters = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
      }

      else
      {
        groupName2 = [(AVCABackdropLayerView *)self groupLeader];
        layer25 = [groupName2 layer];
        filters = [layer25 filters];
      }

      layer26 = [(AVCABackdropLayerView *)self layer];
      [layer26 setFilters:filters];

      if (groupLeader2 == self)
      {

        v53 = 0.25;
      }

      else
      {

        groupLeader4 = [(AVCABackdropLayerView *)self groupLeader];
        layer24 = [groupLeader4 layer];
        [layer24 scale];
        v53 = v52;
      }

      layer27 = [(AVCABackdropLayerView *)self layer];
      [layer27 setScale:v53];

      if (groupLeader2 != self)
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
    layer = [(AVCABackdropLayerView *)self layer];
    [layer setFilters:0];

    [(AVCABackdropLayerView *)self _updateFilters];
  }
}

- (void)_updateBlurFilterRadiusIfNeeded
{
  if (self->_overrideBlurOnlyFilter)
  {
    _blurRadiusNSNumberValue = [(AVCABackdropLayerView *)self _blurRadiusNSNumberValue];
    [(CAFilter *)self->_blurFilter setValue:_blurRadiusNSNumberValue forKey:@"inputRadius"];
    [(CAFilter *)self->_variableBlurFilter setValue:_blurRadiusNSNumberValue forKey:@"inputRadius"];
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
    _blurRadiusNSNumberValue = [(AVCABackdropLayerView *)self _blurRadiusNSNumberValue];
    [v3 setValue:_blurRadiusNSNumberValue forKey:@"inputRadius"];

    v5 = MEMORY[0x1E695E118];
    [v3 setValue:MEMORY[0x1E695E118] forKey:@"inputNormalizeEdges"];
    [v3 setValue:v5 forKey:@"inputHardEdges"];
    [v3 setValue:@"high" forKey:@"inputQuality"];
    [v3 setValue:@"high" forKey:@"inputIntermediateBitDepth"];
    blurFilter = self->_blurFilter;
    self->_blurFilter = v3;
  }
}

- (void)setVariableBlurMaskImage:(id)image
{
  imageCopy = image;
  if (self->_variableBlurMaskImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_variableBlurMaskImage, image);
    [(AVCABackdropLayerView *)self _setUpVariableBlurFilterIfNeeded];
    [(AVCABackdropLayerView *)self _updateBlurFilterRadiusIfNeeded];
    [(AVCABackdropLayerView *)self _updateVariableBlurFilterMaskImageIfNeeded];
    [(AVCABackdropLayerView *)self _updateFilters];
    imageCopy = v6;
  }
}

- (void)setBlurRadius:(double)radius
{
  blurRadius = self->_blurRadius;
  radiusCopy = radius;
  if (vabds_f32(blurRadius, radiusCopy) >= 0.00000011921)
  {
    self->_blurRadius = radius;
    [(AVCABackdropLayerView *)self _setUpBlurFilterIfNeeded];
    [(AVCABackdropLayerView *)self _setUpVariableBlurFilterIfNeeded];
    [(AVCABackdropLayerView *)self _updateBlurFilterRadiusIfNeeded];

    [(AVCABackdropLayerView *)self _updateFilters];
  }
}

- (void)setOverrideBlurOnlyFilter:(BOOL)filter
{
  if (self->_overrideBlurOnlyFilter != filter)
  {
    filterCopy = filter;
    self->_overrideBlurOnlyFilter = filter;
    layer = [(AVCABackdropLayerView *)self layer];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      layer2 = [(AVCABackdropLayerView *)self layer];
      [layer2 setShouldOverrideScale:!filterCopy];
    }

    [(AVCABackdropLayerView *)self _setUpBlurFilterIfNeeded];
  }
}

- (void)removeDependent:(id)dependent
{
  dependentCopy = dependent;
  if (dependentCopy != self)
  {
    v7 = dependentCopy;
    groupLeader = [(AVCABackdropLayerView *)self groupLeader];

    if (groupLeader == self)
    {
      [(AVCABackdropLayerView *)self _ensureDependents];
      dependents = [(AVCABackdropLayerView *)self dependents];
      [dependents removeObject:v7];
    }

    else
    {
      dependents = [(AVCABackdropLayerView *)self groupLeader];
      [dependents removeDependent:v7];
    }

    dependentCopy = v7;
  }
}

- (void)addDependent:(id)dependent
{
  dependentCopy = dependent;
  if (dependentCopy != self)
  {
    v7 = dependentCopy;
    groupLeader = [(AVCABackdropLayerView *)self groupLeader];

    if (groupLeader == self)
    {
      [(AVCABackdropLayerView *)self _ensureDependents];
      dependents = [(AVCABackdropLayerView *)self dependents];
      [dependents addObject:v7];
    }

    else
    {
      dependents = [(AVCABackdropLayerView *)self groupLeader];
      [dependents addDependent:v7];
    }

    dependentCopy = v7;
  }
}

- (void)updateGroupLeader
{
  avkit_backdropGroupLeader = [(UIView *)self avkit_backdropGroupLeader];
  [(AVCABackdropLayerView *)self setGroupLeader:avkit_backdropGroupLeader];

  window = [(AVCABackdropLayerView *)self window];
  if (window)
  {
    v5 = window;
    groupLeader = [(AVCABackdropLayerView *)self groupLeader];

    if (!groupLeader)
    {

      [(AVCABackdropLayerView *)self setGroupLeader:self];
    }
  }
}

- (void)setGroupLeader:(id)leader
{
  obj = leader;
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
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      if (obj == self)
      {
        [defaultCenter addObserver:self selector:sel_updateActiveBackdropEffectIfGroupLeader name:*MEMORY[0x1E69DD920] object:0];

        [(AVCABackdropLayerView *)self updateActiveBackdropEffectIfGroupLeader];
      }

      else
      {
        [defaultCenter removeObserver:self name:*MEMORY[0x1E69DD920] object:0];
      }
    }

    [(AVCABackdropLayerView *)self _updateFilters];
    v5 = obj;
  }
}

- (void)setCustomBackgroundColor:(id)color
{
  v4 = [color copy];
  customBackgroundColor = self->_customBackgroundColor;
  self->_customBackgroundColor = v4;

  [(AVCABackdropLayerView *)self _updateFilters];
}

- (void)setCaptureOnly:(BOOL)only
{
  onlyCopy = only;
  layer = [(AVCABackdropLayerView *)self layer];
  [layer setCaptureOnly:onlyCopy];
}

- (BOOL)isCaptureOnly
{
  layer = [(AVCABackdropLayerView *)self layer];
  captureOnly = [layer captureOnly];

  return captureOnly;
}

- (void)updateActiveBackdropEffectIfGroupLeader
{
  groupLeader = [(AVCABackdropLayerView *)self groupLeader];

  if (groupLeader == self)
  {
    activeBackdropEffect = [(AVCABackdropLayerView *)self activeBackdropEffect];
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
      dependents = [(AVCABackdropLayerView *)self dependents];
      v7 = [dependents count];

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
    if (activeBackdropEffect != [(AVCABackdropLayerView *)self activeBackdropEffect])
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

- (AVCABackdropLayerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AVCABackdropLayerView;
  v3 = [(AVCABackdropLayerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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