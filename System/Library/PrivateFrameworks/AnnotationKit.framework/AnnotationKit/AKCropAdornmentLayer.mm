@interface AKCropAdornmentLayer
- (BOOL)_shouldShowHandles;
- (void)_addHandles;
- (void)_removeHandles;
- (void)_updateHandles;
- (void)updateAdornmentElements;
- (void)updateSublayersWithScale:(double)scale;
@end

@implementation AKCropAdornmentLayer

- (void)updateAdornmentElements
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  currentlyDraggedArea = [(AKAdornmentLayer *)self currentlyDraggedArea];
  if (currentlyDraggedArea - 1 < 8 || currentlyDraggedArea == 20)
  {
    cornerHandlesLayer = [(AKCropAdornmentLayer *)self cornerHandlesLayer];

    if (!cornerHandlesLayer)
    {
      [(AKCropAdornmentLayer *)self _addHandles];
    }

    [(AKCropAdornmentLayer *)self _updateHandles];
  }

  [MEMORY[0x277CD9FF0] commit];
  _shouldShowHandles = [(AKCropAdornmentLayer *)self _shouldShowHandles];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  if (!_shouldShowHandles)
  {
    [(AKCropAdornmentLayer *)self _removeHandles];
    cornerHandlesLayer2 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
    [cornerHandlesLayer2 setOpacity:0.0];

    edgeHandlesLayer = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
    v15 = edgeHandlesLayer;
    v16 = 0.0;
LABEL_14:
    [edgeHandlesLayer setOpacity:v16];

    [MEMORY[0x277CD9FF0] commit];
    goto LABEL_15;
  }

  cornerHandlesLayer3 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  superlayer = [cornerHandlesLayer3 superlayer];

  cornerHandlesLayer4 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];

  if (!cornerHandlesLayer4)
  {
    [(AKCropAdornmentLayer *)self _addHandles];
  }

  [(AKCropAdornmentLayer *)self _updateHandles];
  [MEMORY[0x277CD9FF0] commit];
  if (!superlayer)
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:0];
    [MEMORY[0x277CD9FF0] setAnimationDuration:0.2];
    cornerHandlesLayer5 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
    LODWORD(v18) = 1.0;
    [cornerHandlesLayer5 setOpacity:v18];

    edgeHandlesLayer = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
    v15 = edgeHandlesLayer;
    LODWORD(v16) = 1.0;
    goto LABEL_14;
  }

  cornerHandlesLayer6 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  LODWORD(v10) = 1.0;
  [cornerHandlesLayer6 setOpacity:v10];

  edgeHandlesLayer2 = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
  LODWORD(v12) = 1.0;
  [edgeHandlesLayer2 setOpacity:v12];

LABEL_15:
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v19.receiver = self;
  v19.super_class = AKCropAdornmentLayer;
  [(AKAdornmentLayer *)&v19 updateAdornmentElements];
  [MEMORY[0x277CD9FF0] commit];
}

- (void)updateSublayersWithScale:(double)scale
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v13.receiver = self;
  v13.super_class = AKCropAdornmentLayer;
  [(AKAdornmentLayer *)&v13 updateSublayersWithScale:scale];
  cornerHandlesLayer = [(AKCropAdornmentLayer *)self cornerHandlesLayer];

  if (cornerHandlesLayer)
  {
    [(AKAdornmentLayer *)self currentScaleFactor];
    v7 = 1.0 / v6;
    cornerHandlesLayer2 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
    [cornerHandlesLayer2 setLineWidth:v7];
  }

  edgeHandlesLayer = [(AKCropAdornmentLayer *)self edgeHandlesLayer];

  if (edgeHandlesLayer)
  {
    [(AKAdornmentLayer *)self currentScaleFactor];
    v11 = 1.0 / v10;
    edgeHandlesLayer2 = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
    [edgeHandlesLayer2 setLineWidth:v11];
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (BOOL)_shouldShowHandles
{
  annotation = [(AKAdornmentLayer *)self annotation];
  showHandles = [annotation showHandles];

  return showHandles;
}

- (void)_addHandles
{
  annotation = [(AKAdornmentLayer *)self annotation];
  v3 = objc_opt_new();
  [(AKCropAdornmentLayer *)self setEdgeHandlesLayer:v3];

  edgeHandlesLayer = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
  [edgeHandlesLayer setMasksToBounds:0];

  edgeHandlesLayer2 = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
  [edgeHandlesLayer2 setOpacity:0.0];

  color = [annotation color];
  edgeHandlesLayer3 = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
  [edgeHandlesLayer3 setFillColor:color];

  color2 = [annotation color];
  edgeHandlesLayer4 = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
  [edgeHandlesLayer4 setStrokeColor:color2];

  [(AKAdornmentLayer *)self currentScaleFactor];
  v11 = 1.0 / v10;
  edgeHandlesLayer5 = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
  [edgeHandlesLayer5 setLineWidth:v11];

  edgeHandlesLayer6 = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
  [(AKCropAdornmentLayer *)self addSublayer:edgeHandlesLayer6];

  v14 = objc_opt_new();
  [(AKCropAdornmentLayer *)self setCornerHandlesLayer:v14];

  cornerHandlesLayer = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  [cornerHandlesLayer setMasksToBounds:0];

  cornerHandlesLayer2 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  [cornerHandlesLayer2 setOpacity:0.0];

  color3 = [annotation color];
  cornerHandlesLayer3 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  [cornerHandlesLayer3 setFillColor:color3];

  v19 = [MEMORY[0x277D75348] colorWithWhite:0.2 alpha:0.5];
  cGColor = [v19 CGColor];
  cornerHandlesLayer4 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  [cornerHandlesLayer4 setStrokeColor:cGColor];

  [(AKAdornmentLayer *)self currentScaleFactor];
  v23 = 1.0 / v22;
  cornerHandlesLayer5 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  [cornerHandlesLayer5 setLineWidth:v23];

  blackColor = [MEMORY[0x277D75348] blackColor];
  cGColor2 = [blackColor CGColor];
  cornerHandlesLayer6 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  [cornerHandlesLayer6 setShadowColor:cGColor2];

  cornerHandlesLayer7 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  [cornerHandlesLayer7 setShadowOffset:{0.0, 0.2}];

  cornerHandlesLayer8 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  [cornerHandlesLayer8 setShadowRadius:4.0];

  cornerHandlesLayer9 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  LODWORD(v31) = 1050253722;
  [cornerHandlesLayer9 setShadowOpacity:v31];

  cornerHandlesLayer10 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  [(AKCropAdornmentLayer *)self addSublayer:cornerHandlesLayer10];
}

- (void)_updateHandles
{
  annotation = [(AKAdornmentLayer *)self annotation];
  pageController = [(AKAdornmentLayer *)self pageController];
  Mutable = CGPathCreateMutable();
  v5 = CGPathCreateMutable();
  v6 = [AKCropAnnotationRenderer cropHandle:0 forAnnotation:annotation withPageController:pageController];
  v7 = [AKCropAnnotationRenderer cropHandle:1 forAnnotation:annotation withPageController:pageController];
  v8 = [AKCropAnnotationRenderer cropHandle:2 forAnnotation:annotation withPageController:pageController];
  v9 = [AKCropAnnotationRenderer cropHandle:3 forAnnotation:annotation withPageController:pageController];
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
  v10 = [AKCropAnnotationRenderer cropHandle:4 forAnnotation:annotation withPageController:pageController];
  v11 = [AKCropAnnotationRenderer cropHandle:5 forAnnotation:annotation withPageController:pageController];
  v12 = [AKCropAnnotationRenderer cropHandle:6 forAnnotation:annotation withPageController:pageController];
  v13 = [AKCropAnnotationRenderer cropHandle:7 forAnnotation:annotation withPageController:pageController];
  CGPathAddPath(v5, 0, v10);
  CGPathAddPath(v5, 0, v11);
  CGPathAddPath(v5, 0, v12);
  CGPathAddPath(v5, 0, v13);
  CGPathRelease(v10);
  CGPathRelease(v11);
  CGPathRelease(v12);
  CGPathRelease(v13);
  edgeHandlesLayer = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
  [edgeHandlesLayer setPath:Mutable];

  cornerHandlesLayer = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  [cornerHandlesLayer setPath:v5];

  CGPathRelease(v5);
}

- (void)_removeHandles
{
  cornerHandlesLayer = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  [cornerHandlesLayer removeFromSuperlayer];

  cornerHandlesLayer2 = [(AKCropAdornmentLayer *)self cornerHandlesLayer];
  [cornerHandlesLayer2 setOpacity:0.0];

  [(AKCropAdornmentLayer *)self setCornerHandlesLayer:0];
  edgeHandlesLayer = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
  [edgeHandlesLayer removeFromSuperlayer];

  edgeHandlesLayer2 = [(AKCropAdornmentLayer *)self edgeHandlesLayer];
  [edgeHandlesLayer2 setOpacity:0.0];

  [(AKCropAdornmentLayer *)self setEdgeHandlesLayer:0];
}

@end