@interface AKPopupAdornmentLayer
- (void)updateAdornmentElements;
- (void)updateSublayersWithScale:(double)scale;
@end

@implementation AKPopupAdornmentLayer

- (void)updateAdornmentElements
{
  v39 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  sublayers = [(AKPopupAdornmentLayer *)self sublayers];
  v4 = [sublayers countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v35;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v35 != v6)
      {
        objc_enumerationMutation(sublayers);
      }

      v8 = *(*(&v34 + 1) + 8 * v7);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [sublayers countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v9 = v8;

    if (v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v9 = objc_alloc_init(AKMiniNoteLayer);
  [(AKMiniNoteLayer *)v9 setBorderWidth:1.0];
  [(AKPopupAdornmentLayer *)self addSublayer:v9];
LABEL_12:
  annotation = [(AKAdornmentLayer *)self annotation];
  parentAnnotation = [annotation parentAnnotation];
  v12 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v14 = parentAnnotation;
    color = [v14 color];
    v16 = [AKHighlightAppearanceHelper attributeTagForHighlightOfColor:color];

    if (v16 == 763000)
    {
      color2 = [v14 color];
      v18 = color2;
    }

    else
    {
      v18 = [AKHighlightAppearanceHelper colorForNoteOfHighlightAttributeTag:v16];
      color2 = [AKHighlightAppearanceHelper borderColorForNoteOfHighlightAttributeTag:v16];
    }

    -[AKMiniNoteLayer setBackgroundColor:](v9, "setBackgroundColor:", [v18 CGColor]);
    -[AKMiniNoteLayer setBorderColor:](v9, "setBorderColor:", [color2 CGColor]);
  }

  pageController = [(AKAdornmentLayer *)self pageController];
  [annotation rectangle];
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  MidX = CGRectGetMidX(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  MidY = CGRectGetMidY(v41);
  geometryHelper = [pageController geometryHelper];
  [geometryHelper convertPoint:self fromModelToLayer:{MidX, MidY}];
  v28 = v27;
  v30 = v29;

  [(AKMiniNoteLayer *)v9 setBounds:0.0, 0.0, width, height];
  [(AKMiniNoteLayer *)v9 setAnchorPoint:0.5, 0.5];
  [(AKMiniNoteLayer *)v9 setPosition:v28, v30];
  [(AKAdornmentLayer *)self currentScaleFactor];
  if (v31 != 9.22337204e18)
  {
    CGAffineTransformMakeScale(&v33, 1.0 / v31, 1.0 / v31);
    [(AKMiniNoteLayer *)v9 setAffineTransform:&v33];
  }

  v32.receiver = self;
  v32.super_class = AKPopupAdornmentLayer;
  [(AKAdornmentLayer *)&v32 updateAdornmentElements];
  [MEMORY[0x277CD9FF0] commit];
}

- (void)updateSublayersWithScale:(double)scale
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sublayers = [(AKPopupAdornmentLayer *)self sublayers];
  v6 = [sublayers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(sublayers);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [sublayers countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [v6 setBorderWidth:1.0 / scale];
  v10.receiver = self;
  v10.super_class = AKPopupAdornmentLayer;
  [(AKAdornmentLayer *)&v10 updateSublayersWithScale:scale];
}

@end