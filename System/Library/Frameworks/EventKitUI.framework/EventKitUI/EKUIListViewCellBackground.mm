@interface EKUIListViewCellBackground
+ (BOOL)drawsBackgroundForEvent:(id)event;
+ (id)_angledStripeBackground:(id)background;
- (EKUIListViewCellBackground)initWithCornerRadius:(double)radius;
- (id)_backgroundViewFilterColorForHighlighted:(BOOL)highlighted carplayMode:(BOOL)mode;
- (id)_backgroundViewFilterForHighlighted:(BOOL)highlighted carplayMode:(BOOL)mode;
- (id)_carplayAngledStripeBackgroundForHighlighted:(BOOL)highlighted;
- (void)_configureLayer:(id)layer;
- (void)_updateBackgroundWithSolidColor:(id)color stripedColor:(id)stripedColor highlighted:(BOOL)highlighted dimmed:(BOOL)dimmed carplayMode:(BOOL)mode;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)layoutSubviews;
- (void)updateBackgroundColorForEvent:(id)event highlighted:(BOOL)highlighted dimmed:(BOOL)dimmed carplayMode:(BOOL)mode dragPreview:(BOOL)preview traitCollection:(id)collection;
@end

@implementation EKUIListViewCellBackground

- (EKUIListViewCellBackground)initWithCornerRadius:(double)radius
{
  v8.receiver = self;
  v8.super_class = EKUIListViewCellBackground;
  v4 = [(EKUIListViewCellBackground *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_cornerRadius = radius;
    layer = [(EKUIListViewCellBackground *)v4 layer];
    [(EKUIListViewCellBackground *)v5 _configureLayer:layer];
  }

  return v5;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = EKUIListViewCellBackground;
  [(EKUIListViewCellBackground *)&v4 layoutSubviews];
  layer = [(EKUIListViewCellBackground *)self layer];
  [(EKUIListViewCellBackground *)self _configureLayer:layer];
}

- (void)layoutSublayersOfLayer:(id)layer
{
  v17 = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  v15.receiver = self;
  v15.super_class = EKUIListViewCellBackground;
  [(EKUIListViewCellBackground *)&v15 layoutSublayersOfLayer:layerCopy];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  sublayers = [layerCopy sublayers];
  v6 = [sublayers countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(sublayers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        [layerCopy bounds];
        [v10 setFrame:?];
        ++v9;
      }

      while (v7 != v9);
      v7 = [sublayers countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

+ (BOOL)drawsBackgroundForEvent:(id)event
{
  eventCopy = event;
  v4 = CUIKEventDisplaysAsNeedsReply();
  status = [eventCopy status];
  v6 = CUIKEventDisplaysAsTentative();

  if (status == 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  return (v7 | v6) & 1;
}

- (void)updateBackgroundColorForEvent:(id)event highlighted:(BOOL)highlighted dimmed:(BOOL)dimmed carplayMode:(BOOL)mode dragPreview:(BOOL)preview traitCollection:(id)collection
{
  previewCopy = preview;
  modeCopy = mode;
  dimmedCopy = dimmed;
  highlightedCopy = highlighted;
  eventCopy = event;
  collectionCopy = collection;
  if (!collectionCopy)
  {
    collectionCopy = [(EKUIListViewCellBackground *)self traitCollection];
  }

  calendar = [eventCopy calendar];
  displayColor = [calendar displayColor];
  [collectionCopy userInterfaceStyle];
  v17 = CUIKAdjustedColorForColor();

  if (highlightedCopy)
  {
    v18 = v17;
  }

  else
  {
    v19 = CalSolariumEnabled();
    v20 = 0.3;
    if (v19)
    {
      v20 = 0.2;
    }

    v18 = [v17 colorWithAlphaComponent:v20];
  }

  v21 = v18;
  status = [eventCopy status];
  if (CUIKEventDisplaysAsNeedsReply() && status != 3)
  {
    if (modeCopy)
    {
      if (highlightedCopy)
      {
        if (MEMORY[0x1D38B98D0]())
        {
          v23 = v21;
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }

      v29 = v23;
      v34 = MEMORY[0x1E69DC888];
      v28 = [(EKUIListViewCellBackground *)self _carplayAngledStripeBackgroundForHighlighted:highlightedCopy];
      v24 = [v34 colorWithPatternImage:v28];
    }

    else
    {
      v27 = MEMORY[0x1E69DC888];
      v28 = [objc_opt_class() _angledStripeBackground:collectionCopy];
      v24 = [v27 colorWithPatternImage:v28];
      v29 = 0;
    }

    [(EKUIListViewCellBackground *)self _updateBackgroundWithSolidColor:v29 stripedColor:v24 highlighted:highlightedCopy dimmed:dimmedCopy carplayMode:modeCopy];
    goto LABEL_41;
  }

  if (!CUIKEventDisplaysAsTentative())
  {
    if (modeCopy)
    {
      if (highlightedCopy)
      {
        if (MEMORY[0x1D38B98D0]())
        {
          v26 = v21;
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v26 = 0;
      }

      v33 = v26;
    }

    else
    {
      if (!previewCopy)
      {
        v24 = 0;
        goto LABEL_40;
      }

      [collectionCopy userInterfaceStyle];
      v33 = CUIKBackgroundColorForCalendarColorWithOpaqueForStyle();
    }

    v24 = v33;
LABEL_40:
    [(EKUIListViewCellBackground *)self _updateBackgroundWithSolidColor:v24 stripedColor:0 highlighted:highlightedCopy dimmed:dimmedCopy carplayMode:modeCopy];
    goto LABEL_41;
  }

  [collectionCopy userInterfaceStyle];
  v24 = CUIKBackgroundColorForCalendarColorWithOpaqueForStyle();
  v37 = dimmedCopy;
  if (modeCopy)
  {
    if (highlightedCopy)
    {
      if (MEMORY[0x1D38B98D0]())
      {
        v25 = v21;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }

    v35 = v25;

    v36 = MEMORY[0x1E69DC888];
    v31 = [(EKUIListViewCellBackground *)self _carplayAngledStripeBackgroundForHighlighted:highlightedCopy];
    v32 = [v36 colorWithPatternImage:v31];
    v24 = v35;
  }

  else
  {
    v30 = MEMORY[0x1E69DC888];
    v31 = [objc_opt_class() _angledStripeBackground:collectionCopy];
    v32 = [v30 colorWithPatternImage:v31];
  }

  [(EKUIListViewCellBackground *)self _updateBackgroundWithSolidColor:v24 stripedColor:v32 highlighted:highlightedCopy dimmed:v37 carplayMode:modeCopy];
LABEL_41:
}

- (void)_configureLayer:(id)layer
{
  layerCopy = layer;
  cornerRadius = self->_cornerRadius;
  if (cornerRadius == 0.0)
  {
    [(EKUIListViewCellBackground *)self bounds];
    cornerRadius = v5 * 0.5;
  }

  [layerCopy setCornerRadius:cornerRadius];
}

- (void)_updateBackgroundWithSolidColor:(id)color stripedColor:(id)stripedColor highlighted:(BOOL)highlighted dimmed:(BOOL)dimmed carplayMode:(BOOL)mode
{
  modeCopy = mode;
  dimmedCopy = dimmed;
  highlightedCopy = highlighted;
  v38 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  stripedColorCopy = stripedColor;
  if (dimmedCopy)
  {
    v14 = *MEMORY[0x1E6993300];
    v15 = [colorCopy cuik_colorWithAlphaScaled:*MEMORY[0x1E6993300]];

    v16 = [stripedColorCopy cuik_colorWithAlphaScaled:v14];

    stripedColorCopy = v16;
    colorCopy = v15;
  }

  layer = [(EKUIListViewCellBackground *)self layer];
  sublayers = [layer sublayers];
  v19 = [sublayers copy];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v34;
    do
    {
      v24 = 0;
      do
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v33 + 1) + 8 * v24++) removeFromSuperlayer];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v22);
  }

  v25 = [(EKUIListViewCellBackground *)self _backgroundViewFilterForHighlighted:highlightedCopy carplayMode:modeCopy];
  v26 = [(EKUIListViewCellBackground *)self _backgroundViewFilterColorForHighlighted:highlightedCopy carplayMode:modeCopy];
  v27 = v26;
  if (v25 && v26)
  {
    v28 = objc_opt_new();
    [(EKUIListViewCellBackground *)self _configureLayer:v28];
    [v28 setCompositingFilter:v25];
    [v28 setBackgroundColor:{objc_msgSend(v27, "CGColor")}];
    layer2 = [(EKUIListViewCellBackground *)self layer];
    [layer2 addSublayer:v28];
  }

  [(EKUIListViewCellBackground *)self setBackgroundColor:colorCopy];
  if (stripedColorCopy)
  {
    v30 = objc_opt_new();
    [(EKUIListViewCellBackground *)self _configureLayer:v30];
    [v30 setBackgroundColor:{objc_msgSend(stripedColorCopy, "CGColor")}];
    CATransform3DMakeScale(&v32, 1.0, -1.0, 1.0);
    [v30 setTransform:&v32];
    layer3 = [(EKUIListViewCellBackground *)self layer];
    [layer3 addSublayer:v30];
  }

  [(EKUIListViewCellBackground *)self setNeedsLayout];
}

- (id)_carplayAngledStripeBackgroundForHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  if (highlightedCopy)
  {
    v5 = @"carplayNeedsReplyStripeColorHighlighted";
  }

  else
  {
    v5 = @"carplayNeedsReplyStripeColor";
  }

  v6 = [MEMORY[0x1E69DC888] colorNamed:v5];
  EKUIScaleFactor();
  v7 = CUIKCreateStripedUIImage();
  v8 = [v7 resizableImageWithCapInsets:0 resizingMode:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  return v8;
}

+ (id)_angledStripeBackground:(id)background
{
  backgroundCopy = background;
  if (!_angledStripeBackground__imageCache)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v5 = _angledStripeBackground__imageCache;
    _angledStripeBackground__imageCache = dictionary;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%zd", objc_msgSend(backgroundCopy, "userInterfaceStyle")];
  v7 = [_angledStripeBackground__imageCache objectForKey:v6];
  if (!v7)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    EKUIScaleFactor();
    v10 = CUIKCreateStripedUIImage();
    v7 = [v10 resizableImageWithCapInsets:0 resizingMode:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

    [_angledStripeBackground__imageCache setObject:v7 forKey:v6];
  }

  return v7;
}

- (id)_backgroundViewFilterColorForHighlighted:(BOOL)highlighted carplayMode:(BOOL)mode
{
  v4 = 0;
  if (highlighted && mode)
  {
    traitCollection = [(EKUIListViewCellBackground *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 1)
    {
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      v8 = blackColor;
      v9 = 0.3;
    }

    else
    {
      blackColor = [MEMORY[0x1E69DC888] whiteColor];
      v8 = blackColor;
      v9 = 0.1;
    }

    v4 = [blackColor colorWithAlphaComponent:v9];
  }

  return v4;
}

- (id)_backgroundViewFilterForHighlighted:(BOOL)highlighted carplayMode:(BOOL)mode
{
  v6 = 0;
  if (highlighted && mode)
  {
    traitCollection = [(EKUIListViewCellBackground *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    v9 = MEMORY[0x1E6979C58];
    if (userInterfaceStyle == 1)
    {
      v9 = MEMORY[0x1E6979C50];
    }

    v6 = [MEMORY[0x1E6979378] filterWithType:*v9];
    v4 = vars8;
  }

  return v6;
}

@end