@interface AKPolygonAdornmentLayer
- (void)updateAdornmentElements;
- (void)updateSublayersWithScale:(double)scale;
@end

@implementation AKPolygonAdornmentLayer

- (void)updateAdornmentElements
{
  v47 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  sublayers = [(AKPolygonAdornmentLayer *)self sublayers];
  v4 = [sublayers countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v4)
  {
    v5 = *v43;
    while (2)
    {
      for (i = 0; i != v4; i = (i + 1))
      {
        if (*v43 != v5)
        {
          objc_enumerationMutation(sublayers);
        }

        v7 = *(*(&v42 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [sublayers countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  annotation = [(AKAdornmentLayer *)self annotation];
  if ([(AKAdornmentLayer *)self currentlyDraggedArea]== 17)
  {
    if (!v4)
    {
      v4 = objc_alloc_init(AKEllipseLayer);
      [annotation rectangle];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      +[AKPolygonPointOfInterestHelper pointsControlPointDistanceFactor];
      v18 = v17;
      v48.origin.x = v10;
      v48.origin.y = v12;
      v48.size.width = v14;
      v48.size.height = v16;
      v19 = v18 * CGRectGetWidth(v48);
      +[AKPolygonPointOfInterestHelper pointsControlPointDistanceFactor];
      v21 = v20;
      v49.origin.x = v10;
      v49.origin.y = v12;
      v49.size.width = v14;
      v49.size.height = v16;
      v22 = v21 * CGRectGetHeight(v49);
      v50.origin.x = v10;
      v50.origin.y = v12;
      v50.size.width = v14;
      v50.size.height = v16;
      v23 = (CGRectGetWidth(v50) - v19) * 0.5;
      v51.origin.x = v10;
      v51.origin.y = v12;
      v51.size.width = v14;
      v51.size.height = v16;
      v24 = (CGRectGetHeight(v51) - v22) * 0.5;
      v52.origin.x = v10;
      v52.origin.y = v12;
      v52.size.width = v14;
      v52.size.height = v16;
      v53 = CGRectInset(v52, v23, v24);
      x = v53.origin.x;
      y = v53.origin.y;
      width = v53.size.width;
      height = v53.size.height;
      pageController = [(AKAdornmentLayer *)self pageController];
      geometryHelper = [pageController geometryHelper];
      [geometryHelper convertRect:self fromModelToLayer:{x, y, width, height}];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      v39 = *&qword_27E399028;
      [(AKAdornmentLayer *)self currentScaleFactor];
      [(AKEllipseLayer *)v4 setLineWidth:v39 / v40];
      [(AKEllipseLayer *)v4 setFrame:v32, v34, v36, v38];
      [(AKPolygonAdornmentLayer *)self addSublayer:v4];
    }
  }

  else
  {
    [(AKEllipseLayer *)v4 removeFromSuperlayer];
  }

  v41.receiver = self;
  v41.super_class = AKPolygonAdornmentLayer;
  [(AKAdornmentLayer *)&v41 updateAdornmentElements];
  [MEMORY[0x277CD9FF0] commit];
}

- (void)updateSublayersWithScale:(double)scale
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sublayers = [(AKPolygonAdornmentLayer *)self sublayers];
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

  [v6 setLineWidth:*&qword_27E399028 / scale];
  v10.receiver = self;
  v10.super_class = AKPolygonAdornmentLayer;
  [(AKAdornmentLayer *)&v10 updateSublayersWithScale:scale];
}

@end