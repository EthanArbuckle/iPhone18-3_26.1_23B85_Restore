@interface EKUIListViewCellBackground
+ (BOOL)drawsBackgroundForEvent:(id)a3;
+ (id)_angledStripeBackground:(id)a3;
- (EKUIListViewCellBackground)initWithCornerRadius:(double)a3;
- (id)_backgroundViewFilterColorForHighlighted:(BOOL)a3 carplayMode:(BOOL)a4;
- (id)_backgroundViewFilterForHighlighted:(BOOL)a3 carplayMode:(BOOL)a4;
- (id)_carplayAngledStripeBackgroundForHighlighted:(BOOL)a3;
- (void)_configureLayer:(id)a3;
- (void)_updateBackgroundWithSolidColor:(id)a3 stripedColor:(id)a4 highlighted:(BOOL)a5 dimmed:(BOOL)a6 carplayMode:(BOOL)a7;
- (void)layoutSublayersOfLayer:(id)a3;
- (void)layoutSubviews;
- (void)updateBackgroundColorForEvent:(id)a3 highlighted:(BOOL)a4 dimmed:(BOOL)a5 carplayMode:(BOOL)a6 dragPreview:(BOOL)a7 traitCollection:(id)a8;
@end

@implementation EKUIListViewCellBackground

- (EKUIListViewCellBackground)initWithCornerRadius:(double)a3
{
  v8.receiver = self;
  v8.super_class = EKUIListViewCellBackground;
  v4 = [(EKUIListViewCellBackground *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_cornerRadius = a3;
    v6 = [(EKUIListViewCellBackground *)v4 layer];
    [(EKUIListViewCellBackground *)v5 _configureLayer:v6];
  }

  return v5;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = EKUIListViewCellBackground;
  [(EKUIListViewCellBackground *)&v4 layoutSubviews];
  v3 = [(EKUIListViewCellBackground *)self layer];
  [(EKUIListViewCellBackground *)self _configureLayer:v3];
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = EKUIListViewCellBackground;
  [(EKUIListViewCellBackground *)&v15 layoutSublayersOfLayer:v4];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 sublayers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        [v4 bounds];
        [v10 setFrame:?];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

+ (BOOL)drawsBackgroundForEvent:(id)a3
{
  v3 = a3;
  v4 = CUIKEventDisplaysAsNeedsReply();
  v5 = [v3 status];
  v6 = CUIKEventDisplaysAsTentative();

  if (v5 == 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  return (v7 | v6) & 1;
}

- (void)updateBackgroundColorForEvent:(id)a3 highlighted:(BOOL)a4 dimmed:(BOOL)a5 carplayMode:(BOOL)a6 dragPreview:(BOOL)a7 traitCollection:(id)a8
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v38 = a3;
  v14 = a8;
  if (!v14)
  {
    v14 = [(EKUIListViewCellBackground *)self traitCollection];
  }

  v15 = [v38 calendar];
  v16 = [v15 displayColor];
  [v14 userInterfaceStyle];
  v17 = CUIKAdjustedColorForColor();

  if (v12)
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
  v22 = [v38 status];
  if (CUIKEventDisplaysAsNeedsReply() && v22 != 3)
  {
    if (v10)
    {
      if (v12)
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
      v28 = [(EKUIListViewCellBackground *)self _carplayAngledStripeBackgroundForHighlighted:v12];
      v24 = [v34 colorWithPatternImage:v28];
    }

    else
    {
      v27 = MEMORY[0x1E69DC888];
      v28 = [objc_opt_class() _angledStripeBackground:v14];
      v24 = [v27 colorWithPatternImage:v28];
      v29 = 0;
    }

    [(EKUIListViewCellBackground *)self _updateBackgroundWithSolidColor:v29 stripedColor:v24 highlighted:v12 dimmed:v11 carplayMode:v10];
    goto LABEL_41;
  }

  if (!CUIKEventDisplaysAsTentative())
  {
    if (v10)
    {
      if (v12)
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
      if (!v9)
      {
        v24 = 0;
        goto LABEL_40;
      }

      [v14 userInterfaceStyle];
      v33 = CUIKBackgroundColorForCalendarColorWithOpaqueForStyle();
    }

    v24 = v33;
LABEL_40:
    [(EKUIListViewCellBackground *)self _updateBackgroundWithSolidColor:v24 stripedColor:0 highlighted:v12 dimmed:v11 carplayMode:v10];
    goto LABEL_41;
  }

  [v14 userInterfaceStyle];
  v24 = CUIKBackgroundColorForCalendarColorWithOpaqueForStyle();
  v37 = v11;
  if (v10)
  {
    if (v12)
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
    v31 = [(EKUIListViewCellBackground *)self _carplayAngledStripeBackgroundForHighlighted:v12];
    v32 = [v36 colorWithPatternImage:v31];
    v24 = v35;
  }

  else
  {
    v30 = MEMORY[0x1E69DC888];
    v31 = [objc_opt_class() _angledStripeBackground:v14];
    v32 = [v30 colorWithPatternImage:v31];
  }

  [(EKUIListViewCellBackground *)self _updateBackgroundWithSolidColor:v24 stripedColor:v32 highlighted:v12 dimmed:v37 carplayMode:v10];
LABEL_41:
}

- (void)_configureLayer:(id)a3
{
  v6 = a3;
  cornerRadius = self->_cornerRadius;
  if (cornerRadius == 0.0)
  {
    [(EKUIListViewCellBackground *)self bounds];
    cornerRadius = v5 * 0.5;
  }

  [v6 setCornerRadius:cornerRadius];
}

- (void)_updateBackgroundWithSolidColor:(id)a3 stripedColor:(id)a4 highlighted:(BOOL)a5 dimmed:(BOOL)a6 carplayMode:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v38 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  if (v8)
  {
    v14 = *MEMORY[0x1E6993300];
    v15 = [v12 cuik_colorWithAlphaScaled:*MEMORY[0x1E6993300]];

    v16 = [v13 cuik_colorWithAlphaScaled:v14];

    v13 = v16;
    v12 = v15;
  }

  v17 = [(EKUIListViewCellBackground *)self layer];
  v18 = [v17 sublayers];
  v19 = [v18 copy];

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

  v25 = [(EKUIListViewCellBackground *)self _backgroundViewFilterForHighlighted:v9 carplayMode:v7];
  v26 = [(EKUIListViewCellBackground *)self _backgroundViewFilterColorForHighlighted:v9 carplayMode:v7];
  v27 = v26;
  if (v25 && v26)
  {
    v28 = objc_opt_new();
    [(EKUIListViewCellBackground *)self _configureLayer:v28];
    [v28 setCompositingFilter:v25];
    [v28 setBackgroundColor:{objc_msgSend(v27, "CGColor")}];
    v29 = [(EKUIListViewCellBackground *)self layer];
    [v29 addSublayer:v28];
  }

  [(EKUIListViewCellBackground *)self setBackgroundColor:v12];
  if (v13)
  {
    v30 = objc_opt_new();
    [(EKUIListViewCellBackground *)self _configureLayer:v30];
    [v30 setBackgroundColor:{objc_msgSend(v13, "CGColor")}];
    CATransform3DMakeScale(&v32, 1.0, -1.0, 1.0);
    [v30 setTransform:&v32];
    v31 = [(EKUIListViewCellBackground *)self layer];
    [v31 addSublayer:v30];
  }

  [(EKUIListViewCellBackground *)self setNeedsLayout];
}

- (id)_carplayAngledStripeBackgroundForHighlighted:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DC888] clearColor];
  if (v3)
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

+ (id)_angledStripeBackground:(id)a3
{
  v3 = a3;
  if (!_angledStripeBackground__imageCache)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = _angledStripeBackground__imageCache;
    _angledStripeBackground__imageCache = v4;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%zd", objc_msgSend(v3, "userInterfaceStyle")];
  v7 = [_angledStripeBackground__imageCache objectForKey:v6];
  if (!v7)
  {
    v8 = [MEMORY[0x1E69DC888] clearColor];
    v9 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    EKUIScaleFactor();
    v10 = CUIKCreateStripedUIImage();
    v7 = [v10 resizableImageWithCapInsets:0 resizingMode:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

    [_angledStripeBackground__imageCache setObject:v7 forKey:v6];
  }

  return v7;
}

- (id)_backgroundViewFilterColorForHighlighted:(BOOL)a3 carplayMode:(BOOL)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v5 = [(EKUIListViewCellBackground *)self traitCollection];
    v6 = [v5 userInterfaceStyle];

    if (v6 == 1)
    {
      v7 = [MEMORY[0x1E69DC888] blackColor];
      v8 = v7;
      v9 = 0.3;
    }

    else
    {
      v7 = [MEMORY[0x1E69DC888] whiteColor];
      v8 = v7;
      v9 = 0.1;
    }

    v4 = [v7 colorWithAlphaComponent:v9];
  }

  return v4;
}

- (id)_backgroundViewFilterForHighlighted:(BOOL)a3 carplayMode:(BOOL)a4
{
  v6 = 0;
  if (a3 && a4)
  {
    v7 = [(EKUIListViewCellBackground *)self traitCollection];
    v8 = [v7 userInterfaceStyle];

    v9 = MEMORY[0x1E6979C58];
    if (v8 == 1)
    {
      v9 = MEMORY[0x1E6979C50];
    }

    v6 = [MEMORY[0x1E6979378] filterWithType:*v9];
    v4 = vars8;
  }

  return v6;
}

@end