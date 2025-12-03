@interface BSUIVibrancyEffectView
- (BSUIVibrancyEffectView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_updateSubviews;
- (void)_updateSubviewsIfNeeded;
- (void)layoutSubviews;
- (void)setBlurEnabled:(BOOL)enabled;
- (void)setCaptureOnly:(BOOL)only;
- (void)setContentType:(unint64_t)type;
- (void)setIsEnabled:(BOOL)enabled;
- (void)updateFilters;
@end

@implementation BSUIVibrancyEffectView

- (void)_updateSubviewsIfNeeded
{
  if (self->_needsUpdate.subviews)
  {
    self->_needsUpdate.subviews = 0;
    [(BSUIVibrancyEffectView *)self _updateSubviews];
  }
}

- (void)layoutSubviews
{
  [(BSUIVibrancyEffectView *)self _updateSubviewsIfNeeded];
  v24.receiver = self;
  v24.super_class = BSUIVibrancyEffectView;
  [(BSUIVibrancyView *)&v24 layoutSubviews];
  [(BSUIVibrancyEffectView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  contentView = [(BSUIVibrancyEffectView *)self contentView];
  [contentView setFrame:{v4, v6, v8, v10}];

  materialBackdropView = [(BSUIVibrancyEffectView *)self materialBackdropView];
  [materialBackdropView setFrame:{v4, v6, v8, v10}];

  vibrancyView = [(BSUIVibrancyEffectView *)self vibrancyView];
  [vibrancyView setFrame:{v4, v6, v8, v10}];

  materialBackdropView2 = [(BSUIVibrancyEffectView *)self materialBackdropView];
  [materialBackdropView2 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  maskView = [(BSUIVibrancyEffectView *)self maskView];
  [maskView setFrame:{v16, v18, v20, v22}];
}

- (void)_updateSubviews
{
  if ([(BSUIVibrancyEffectView *)self isEnabled])
  {
    v3 = !+[(BSUIVibrancyView *)BSUIVibrancyEffectView];
  }

  else
  {
    v3 = 0;
  }

  configuration = [(BSUIVibrancyView *)self configuration];
  [(UIView *)self->_contentView setAlpha:(v3 ^ 1u)];
  if (v3)
  {
    [(BSUIVibrancyEffectView *)self bounds];
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = v7;
    if (!self->_materialBackdropView)
    {
      v12 = [[BSUIVibrancyBackdropView alloc] initWithFrame:v4, v5, v6, v7];
      materialBackdropView = self->_materialBackdropView;
      self->_materialBackdropView = v12;

      [(BSUIVibrancyBackdropView *)self->_materialBackdropView setUserInteractionEnabled:0];
      backdropLayer = [(BSUIVibrancyBackdropView *)self->_materialBackdropView backdropLayer];
      [backdropLayer setUsesGlobalGroupNamespace:1];

      [(BSUIVibrancyEffectView *)self addSubview:self->_materialBackdropView];
    }

    isCaptureOnly = [(BSUIVibrancyEffectView *)self isCaptureOnly];
    effectType = [configuration effectType];
    vibrancyView = [(BSUIVibrancyBackdropView *)self->_materialBackdropView backdropLayer];
    [vibrancyView setCaptureOnly:isCaptureOnly];
    v18 = 0.1;
    if (effectType == 3)
    {
      v18 = 1.0;
    }

    [vibrancyView setScale:v18];
    if (!self->_maskView)
    {
      v19 = [objc_alloc(MEMORY[0x1E69DD648]) initWithSourceView:self->_contentView];
      [(UIView *)v19 setFrame:v8, v9, v10, v11];
      maskView = self->_maskView;
      self->_maskView = v19;
    }

    v21 = effectType == 3 || isCaptureOnly;
    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = self->_maskView;
    }

    [(BSUIVibrancyBackdropView *)self->_materialBackdropView setMaskView:v22];
    if (!self->_vibrancyView)
    {
      v24 = [(_UIPortalView *)[BSUIVibrancyAnimatingPortalView alloc] initWithSourceView:self->_contentView];
      [(_UIPortalView *)v24 setFrame:v8, v9, v10, v11];
      [(_UIPortalView *)v24 setAllowsHitTesting:1];
      objc_storeStrong(&self->_vibrancyView, v24);
      [(BSUIVibrancyEffectView *)self addSubview:self->_vibrancyView];
    }
  }

  else
  {
    [(BSUIVibrancyBackdropView *)self->_materialBackdropView removeFromSuperview];
    v23 = self->_materialBackdropView;
    self->_materialBackdropView = 0;

    [(UIView *)self->_vibrancyView removeFromSuperview];
    vibrancyView = self->_vibrancyView;
    self->_vibrancyView = 0;
  }
}

- (void)updateFilters
{
  configuration = [(BSUIVibrancyView *)self configuration];
  effectValues = [configuration effectValues];
  values = self->_values;
  self->_values = effectValues;

  isBlurEnabled = [(BSUIVibrancyEffectView *)self isBlurEnabled];
  contentType = [(BSUIVibrancyEffectView *)self contentType];
  effectType = [configuration effectType];
  v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (effectType != 3)
  {
    if (!isBlurEnabled)
    {
      groupName = 0;
      v25 = 1;
      v26 = 1050253722;
      v27 = *"333?";
      goto LABEL_13;
    }

    v15 = *MEMORY[0x1E6979880];
    v16 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979880]];
    v48 = 0u;
    v46 = 0u;
    memset(v47, 0, sizeof(v47));
    v45 = 0u;
    v17 = self->_values;
    if (v17)
    {
      [(BSUIVibrancyEffectValues *)v17 backdropColorMatrix];
    }

    [v16 setName:@"color"];
    v44[2] = v47[0];
    v44[3] = v47[1];
    v44[4] = v48;
    v44[0] = v45;
    v44[1] = v46;
    v18 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v44];
    v19 = *MEMORY[0x1E6979AC0];
    [v16 setValue:v18 forKey:*MEMORY[0x1E6979AC0]];

    [v42 addObject:v16];
    v20 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v20 setName:@"blur"];
    [v20 setValue:&unk_1F158AF78 forKey:*MEMORY[0x1E6979BA8]];
    [v20 setValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6979B78]];
    [v42 addObject:v20];
    groupName = [(BSUIVibrancyEffectValues *)self->_values groupName];

    if (contentType == 1)
    {
      v21 = [MEMORY[0x1E6979378] filterWithType:v15];
      v22 = groupName;
      [v21 setName:@"vibrantColor"];
      v23 = MEMORY[0x1E696B098];
      v24 = self->_values;
      if (v24)
      {
        [(BSUIVibrancyEffectValues *)v24 vibrantColorMatrix];
      }

      else
      {
        v48 = 0u;
        v46 = 0u;
        memset(v47, 0, sizeof(v47));
        v45 = 0u;
      }

      v34 = [v23 valueWithCAColorMatrix:&v45];
      [v21 setValue:v34 forKey:v19];

      [v42 insertObject:v21 atIndex:0];
      [groupName stringByAppendingString:@"-withVibrancy"];
      v25 = 0;
      groupName = v30 = 1;
      goto LABEL_21;
    }

LABEL_11:
    v25 = 0;
    v26 = 0;
    v27 = 1.0;
LABEL_13:
    v21 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979880]];
    [v21 setName:@"colorToAlphaMask"];
    v46 = 0u;
    memset(v47, 0, 28);
    v45 = 0u;
    *(&v47[1] + 3) = v27;
    *&v48 = 0;
    *(&v48 + 1) = v26;
    v28 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v45];
    v29 = *MEMORY[0x1E6979AC0];
    [v21 setValue:v28 forKey:*MEMORY[0x1E6979AC0]];

    [v21 setValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6979B98]];
    [v43 addObject:v21];
    if (effectType == 3)
    {
      v30 = 0;
LABEL_22:

      v10 = groupName;
      backdropLayer = [(BSUIVibrancyBackdropView *)self->_materialBackdropView backdropLayer];
      [backdropLayer setGroupName:groupName];

      [(BSUIVibrancyBackdropView *)self->_materialBackdropView setHidden:v25];
      [(UIView *)self->_vibrancyView setHidden:v30];
      layer = [(UIView *)self->_vibrancyView layer];
      v37 = layer;
      if (effectType == 3)
      {
        v38 = *MEMORY[0x1E69798E0];
      }

      else
      {
        v38 = 0;
      }

      [layer setCompositingFilter:v38];

      layer2 = [(BSUIVibrancyBackdropView *)self->_materialBackdropView layer];
      _setLayerFilters(layer2, v42);

      layer3 = [(UIView *)self->_vibrancyView layer];
      _setLayerFilters(layer3, v43);

      goto LABEL_26;
    }

    v22 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D78]];
    [v22 setName:@"vibrantColor"];
    v31 = MEMORY[0x1E696B098];
    v32 = self->_values;
    if (v32)
    {
      [(BSUIVibrancyEffectValues *)v32 vibrantColorMatrix];
    }

    else
    {
      v48 = 0u;
      v46 = 0u;
      memset(v47, 0, sizeof(v47));
      v45 = 0u;
    }

    v33 = [v31 valueWithCAColorMatrix:&v45];
    [v22 setValue:v33 forKey:v29];

    [v43 addObject:v22];
    v30 = 0;
LABEL_21:

    goto LABEL_22;
  }

  alternativeVibrancyEffectLUT = [configuration alternativeVibrancyEffectLUT];
  v10 = alternativeVibrancyEffectLUT;
  if (alternativeVibrancyEffectLUT)
  {
    resolvedLUTFilter = [alternativeVibrancyEffectLUT resolvedLUTFilter];
    if (!resolvedLUTFilter)
    {
LABEL_26:

      goto LABEL_27;
    }

    [v42 addObject:resolvedLUTFilter];
    v12 = MEMORY[0x1E696AEC0];
    groupName2 = [configuration groupName];
    groupName3 = [v10 groupName];
    groupName = [v12 stringWithFormat:@"%@-%@", groupName2, groupName3];

    goto LABEL_11;
  }

LABEL_27:
}

- (BSUIVibrancyEffectView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = BSUIVibrancyEffectView;
  v3 = [(BSUIVibrancyView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(BSUIVibrancyEffectView *)v3 bounds];
    v4->_isEnabled = 1;
    v4->_blurEnabled = 1;
    v4->_contentType = 0;
    v9 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
    contentView = v4->_contentView;
    v4->_contentView = v9;

    [(BSUIVibrancyEffectView *)v4 addSubview:v4->_contentView];
    [(BSUIVibrancyEffectView *)v4 invalidateSubviews];
  }

  return v4;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = BSUIVibrancyEffectView;
  v5 = [(BSUIVibrancyEffectView *)&v11 hitTest:event withEvent:test.x, test.y];
  contentView = [(BSUIVibrancyEffectView *)self contentView];
  subviews = [contentView subviews];
  v8 = [subviews containsObject:v5];

  if (v8)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setIsEnabled:(BOOL)enabled
{
  if (self->_isEnabled != enabled)
  {
    self->_isEnabled = enabled;
    [(BSUIVibrancyEffectView *)self invalidateSubviews];

    [(BSUIVibrancyView *)self _invalidateFilters];
  }
}

- (void)setBlurEnabled:(BOOL)enabled
{
  if (self->_blurEnabled != enabled)
  {
    self->_blurEnabled = enabled;
    [(BSUIVibrancyView *)self _invalidateFilters];
  }
}

- (void)setCaptureOnly:(BOOL)only
{
  if (self->_captureOnly != only)
  {
    self->_captureOnly = only;
    [(BSUIVibrancyEffectView *)self invalidateSubviews];
  }
}

- (void)setContentType:(unint64_t)type
{
  if (self->_contentType != type)
  {
    self->_contentType = type;
    [(BSUIVibrancyView *)self _invalidateFilters];
  }
}

@end