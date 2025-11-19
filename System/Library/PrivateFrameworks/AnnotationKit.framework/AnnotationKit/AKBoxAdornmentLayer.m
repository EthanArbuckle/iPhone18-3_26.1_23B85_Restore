@interface AKBoxAdornmentLayer
- (BOOL)_drawsBorderForAnnotation:(id)a3;
- (CGRect)_rectangleForAnnotation:(id)a3;
- (void)updateAdornmentElements;
- (void)updateSublayersWithScale:(double)a3;
@end

@implementation AKBoxAdornmentLayer

- (void)updateAdornmentElements
{
  v42 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = [(AKBoxAdornmentLayer *)self sublayers];
  v4 = [v3 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v4)
  {
    v5 = *v38;
    while (2)
    {
      for (i = 0; i != v4; i = (i + 1))
      {
        if (*v38 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v37 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          [(AKBoxLayer *)v4 removeFromSuperlayer];
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = [(AKAdornmentLayer *)self annotation];
  v9 = [(AKBoxAdornmentLayer *)self _drawsBorderForAnnotation:v8];

  if (v9)
  {
    if (!v4)
    {
      v10 = [(AKAdornmentLayer *)self annotation];
      v11 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = 2.3;
      }

      else
      {
        v13 = 0.0;
      }

      if (isKindOfClass)
      {
        v14 = 3.0;
      }

      else
      {
        v14 = *&qword_27E399BA8;
      }

      v4 = [[AKBoxLayer alloc] initWithBorderWidth:v14 cornerRadius:v13];
    }

    v15 = [(AKAdornmentLayer *)self annotation];
    [(AKBoxAdornmentLayer *)self _rectangleForAnnotation:v15];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v43.origin.x = v17;
    v43.origin.y = v19;
    v43.size.width = v21;
    v43.size.height = v23;
    Width = CGRectGetWidth(v43);
    v44.origin.x = v17;
    v44.origin.y = v19;
    v44.size.width = v21;
    v44.size.height = v23;
    [(AKBoxLayer *)v4 setBounds:0.0, 0.0, Width, CGRectGetHeight(v44)];
    v45.origin.x = v17;
    v45.origin.y = v19;
    v45.size.width = v21;
    v45.size.height = v23;
    MidX = CGRectGetMidX(v45);
    v46.origin.x = v17;
    v46.origin.y = v19;
    v46.size.width = v21;
    v46.size.height = v23;
    [(AKBoxLayer *)v4 setPosition:MidX, CGRectGetMidY(v46)];
    [(AKBoxAdornmentLayer *)self addSublayer:v4];
  }

  v26 = [(AKAdornmentLayer *)self annotation];
  v27 = [v26 conformsToAKRotatableAnnotationProtocol];

  if (v27)
  {
    v31 = *(MEMORY[0x277CBF2C0] + 16);
    *&v36.a = *MEMORY[0x277CBF2C0];
    v32 = *&v36.a;
    *&v36.c = v31;
    *&v36.tx = *(MEMORY[0x277CBF2C0] + 32);
    v30 = *&v36.tx;
    v28 = [(AKAdornmentLayer *)self annotation];
    [v28 rotationAngle];
    CGAffineTransformMakeRotation(&t2, v29);
    *&t1.a = v32;
    *&t1.c = v31;
    *&t1.tx = v30;
    CGAffineTransformConcat(&v36, &t1, &t2);

    t2 = v36;
    [(AKBoxLayer *)v4 setAffineTransform:&t2];
  }

  v33.receiver = self;
  v33.super_class = AKBoxAdornmentLayer;
  [(AKAdornmentLayer *)&v33 updateAdornmentElements];
  [MEMORY[0x277CD9FF0] commit];
}

- (void)updateSublayersWithScale:(double)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(AKBoxAdornmentLayer *)self sublayers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [v6 setBorderWidthScale:a3];
  v10.receiver = self;
  v10.super_class = AKBoxAdornmentLayer;
  [(AKAdornmentLayer *)&v10 updateSublayersWithScale:a3];
}

- (BOOL)_drawsBorderForAnnotation:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = 0;
      goto LABEL_17;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v3;
      v6 = [v5 fillColor];
      if (!v6)
      {
        v7 = [v5 strokeColor];
        if (v7)
        {
          [v5 strokeWidth];
          isKindOfClass = v8 <= 0.0;
        }

        else
        {
          isKindOfClass = 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
      if (![v3 isMemberOfClass:objc_opt_class()])
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        goto LABEL_17;
      }

      v5 = v3;
      v6 = [v5 annotationText];
      if (v6)
      {
        v7 = [v5 annotationText];
        isKindOfClass = [v7 length] != 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    isKindOfClass = 0;
LABEL_16:

    goto LABEL_17;
  }

  isKindOfClass = 1;
LABEL_17:

  return isKindOfClass & 1;
}

- (CGRect)_rectangleForAnnotation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    [AKAnnotationRenderer textBoundsOfAnnotation:v4 withOptionalAnnotationRect:0 optionalText:x, y, width, height];
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    if (+[AKGeometryHelper exifOrientationHasReversedAxes:](AKGeometryHelper, "exifOrientationHasReversedAxes:", [v4 originalExifOrientation]))
    {
      v22 = -1.0;
      v23 = -5.0;
    }

    else
    {
      v22 = -5.0;
      v23 = -1.0;
    }

    v18 = v57;
    v19 = v59;
    v20 = v61;
    v21 = v63;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_3:
    [v4 rectangle];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(AKAdornmentLayer *)self annotation];
    [AKAnnotationRenderer draggingBoundsInsetsForAnnotation:v13];
    v15 = v14;
    v17 = v16;

    v18 = v6;
    v19 = v8;
    v20 = v10;
    v21 = v12;
    v22 = v15;
    v23 = v17;
LABEL_4:
    v64 = CGRectInset(*&v18, v22, v23);
    x = v64.origin.x;
    y = v64.origin.y;
    width = v64.size.width;
    height = v64.size.height;
  }

  v28 = [(AKAdornmentLayer *)self pageController];
  v29 = [v28 geometryHelper];
  [v29 contentAlignedRectForRect:{x, y, width, height}];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  if (![AKGeometryHelper annotationHasRotation:v4 outAngle:0])
  {
    v38 = [v28 geometryHelper];
    [v38 screenPixelAlignedRectForRect:{v31, v33, v35, v37}];
    v31 = v39;
    v33 = v40;
    v35 = v41;
    v37 = v42;
  }

  v43 = [v28 geometryHelper];
  [v43 convertRect:self fromModelToLayer:{v31, v33, v35, v37}];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  v52 = v45;
  v53 = v47;
  v54 = v49;
  v55 = v51;
  result.size.height = v55;
  result.size.width = v54;
  result.origin.y = v53;
  result.origin.x = v52;
  return result;
}

@end