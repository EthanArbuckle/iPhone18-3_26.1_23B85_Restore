@interface AKCropAdornmentLayer
- (BOOL)_shouldShowHandles;
- (void)_addHandles;
- (void)_removeHandles;
- (void)_updateHandles;
- (void)updateAdornmentElements;
- (void)updateSublayersWithScale:(double)a3;
@end

@implementation AKCropAdornmentLayer

- (void)updateAdornmentElements
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v3 = [(AKAdornmentLayer *)self currentlyDraggedArea];
  if (v3 - 1 < 8 || v3 == 20)
  {
    v4 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];

    if (!v4)
    {
      [(AKCropAdornmentLayer *)self _addHandles];
    }

    [(AKCropAdornmentLayer *)self _updateHandles];
  }

  [MEMORY[0x277CD9FF0] commit];
  v5 = [(AKCropAdornmentLayer *)self _shouldShowHandles];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  if (!v5)
  {
    [(AKCropAdornmentLayer *)self _removeHandles];
    v13 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
    [v13 setOpacity:0.0];

    v14 = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
    v15 = v14;
    v16 = 0.0;
LABEL_14:
    [v14 setOpacity:v16];

    [MEMORY[0x277CD9FF0] commit];
    goto LABEL_15;
  }

  v6 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  v7 = [v6 superlayer];

  v8 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];

  if (!v8)
  {
    [(AKCropAdornmentLayer *)self _addHandles];
  }

  [(AKCropAdornmentLayer *)self _updateHandles];
  [MEMORY[0x277CD9FF0] commit];
  if (!v7)
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:0];
    [MEMORY[0x277CD9FF0] setAnimationDuration:0.2];
    v17 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
    LODWORD(v18) = 1.0;
    [v17 setOpacity:v18];

    v14 = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
    v15 = v14;
    LODWORD(v16) = 1.0;
    goto LABEL_14;
  }

  v9 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  LODWORD(v10) = 1.0;
  [v9 setOpacity:v10];

  v11 = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
  LODWORD(v12) = 1.0;
  [v11 setOpacity:v12];

LABEL_15:
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v19.receiver = self;
  v19.super_class = AKCropAdornmentLayer;
  [(AKAdornmentLayer *)&v19 updateAdornmentElements];
  [MEMORY[0x277CD9FF0] commit];
}

- (void)updateSublayersWithScale:(double)a3
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v13.receiver = self;
  v13.super_class = AKCropAdornmentLayer;
  [(AKAdornmentLayer *)&v13 updateSublayersWithScale:a3];
  v5 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];

  if (v5)
  {
    [(AKAdornmentLayer *)self currentScaleFactor];
    v7 = 1.0 / v6;
    v8 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
    [v8 setLineWidth:v7];
  }

  v9 = [(AKCropAdornmentLayer *)self edgeHandlesLayer];

  if (v9)
  {
    [(AKAdornmentLayer *)self currentScaleFactor];
    v11 = 1.0 / v10;
    v12 = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
    [v12 setLineWidth:v11];
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (BOOL)_shouldShowHandles
{
  v2 = [(AKAdornmentLayer *)self annotation];
  v3 = [v2 showHandles];

  return v3;
}

- (void)_addHandles
{
  v33 = [(AKAdornmentLayer *)self annotation];
  v3 = objc_opt_new();
  [(AKCropAdornmentLayer *)self setEdgeHandlesLayer:v3];

  v4 = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
  [v4 setMasksToBounds:0];

  v5 = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
  [v5 setOpacity:0.0];

  v6 = [v33 color];
  v7 = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
  [v7 setFillColor:v6];

  v8 = [v33 color];
  v9 = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
  [v9 setStrokeColor:v8];

  [(AKAdornmentLayer *)self currentScaleFactor];
  v11 = 1.0 / v10;
  v12 = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
  [v12 setLineWidth:v11];

  v13 = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
  [(AKCropAdornmentLayer *)self addSublayer:v13];

  v14 = objc_opt_new();
  [(AKCropAdornmentLayer *)self setCornerHandlesLayer:v14];

  v15 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  [v15 setMasksToBounds:0];

  v16 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  [v16 setOpacity:0.0];

  v17 = [v33 color];
  v18 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  [v18 setFillColor:v17];

  v19 = [MEMORY[0x277D75348] colorWithWhite:0.2 alpha:0.5];
  v20 = [v19 CGColor];
  v21 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  [v21 setStrokeColor:v20];

  [(AKAdornmentLayer *)self currentScaleFactor];
  v23 = 1.0 / v22;
  v24 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  [v24 setLineWidth:v23];

  v25 = [MEMORY[0x277D75348] blackColor];
  v26 = [v25 CGColor];
  v27 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  [v27 setShadowColor:v26];

  v28 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  [v28 setShadowOffset:{0.0, 0.2}];

  v29 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  [v29 setShadowRadius:4.0];

  v30 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  LODWORD(v31) = 1050253722;
  [v30 setShadowOpacity:v31];

  v32 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  [(AKCropAdornmentLayer *)self addSublayer:v32];
}

- (void)_updateHandles
{
  v16 = [(AKAdornmentLayer *)self annotation];
  v3 = [(AKAdornmentLayer *)self pageController];
  Mutable = CGPathCreateMutable();
  v5 = CGPathCreateMutable();
  v6 = [AKCropAnnotationRenderer cropHandle:0 forAnnotation:v16 withPageController:v3];
  v7 = [AKCropAnnotationRenderer cropHandle:1 forAnnotation:v16 withPageController:v3];
  v8 = [AKCropAnnotationRenderer cropHandle:2 forAnnotation:v16 withPageController:v3];
  v9 = [AKCropAnnotationRenderer cropHandle:3 forAnnotation:v16 withPageController:v3];
  if (v6)
  {
    CGPathAddPath(Mutable, 0, v6);
  }

  if (v7)
  {
    CGPathAddPath(Mutable, 0, v7);
  }

  if (v8)
  {
    CGPathAddPath(Mutable, 0, v8);
  }

  if (v9)
  {
    CGPathAddPath(Mutable, 0, v9);
  }

  CGPathRelease(v6);
  CGPathRelease(v7);
  CGPathRelease(v8);
  CGPathRelease(v9);
  v10 = [AKCropAnnotationRenderer cropHandle:4 forAnnotation:v16 withPageController:v3];
  v11 = [AKCropAnnotationRenderer cropHandle:5 forAnnotation:v16 withPageController:v3];
  v12 = [AKCropAnnotationRenderer cropHandle:6 forAnnotation:v16 withPageController:v3];
  v13 = [AKCropAnnotationRenderer cropHandle:7 forAnnotation:v16 withPageController:v3];
  CGPathAddPath(v5, 0, v10);
  CGPathAddPath(v5, 0, v11);
  CGPathAddPath(v5, 0, v12);
  CGPathAddPath(v5, 0, v13);
  CGPathRelease(v10);
  CGPathRelease(v11);
  CGPathRelease(v12);
  CGPathRelease(v13);
  v14 = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
  [v14 setPath:Mutable];

  v15 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  [v15 setPath:v5];

  CGPathRelease(v5);
}

- (void)_removeHandles
{
  v3 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  [v3 removeFromSuperlayer];

  v4 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  [v4 setOpacity:0.0];

  [(AKCropAdornmentLayer *)self setCornerHandlesLayer:0];
  v5 = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
  [v5 removeFromSuperlayer];

  v6 = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
  [v6 setOpacity:0.0];

  [(AKCropAdornmentLayer *)self setEdgeHandlesLayer:0];
}

@end