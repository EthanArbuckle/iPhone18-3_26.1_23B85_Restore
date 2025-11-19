@interface PDFPageLayerAnnotationEffect
- (CGRect)pageFrame;
- (id)UUID;
- (id)annotation;
- (void)drawInContext:(CGContext *)a3;
- (void)update;
@end

@implementation PDFPageLayerAnnotationEffect

- (CGRect)pageFrame
{
  WeakRetained = objc_loadWeakRetained(&self->super._private->annotation);
  [WeakRetained extendedBoundsForAction:0];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)update
{
  WeakRetained = objc_loadWeakRetained(&self->super._private->pageLayer);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v4 = [WeakRetained geometryInterface];
    v5.n128_u64[0] = 0;
    v6.n128_u64[0] = 0;
    [v4 convertRectToRootView:v8 fromPageLayer:{PDFRectMake(v5, v6, 1.0, 1.0)}];
    [(PDFPageLayerAnnotationEffect *)self setContentsScale:v7];
    [(PDFPageLayerAnnotationEffect *)self setNeedsDisplay];

    WeakRetained = v8;
  }
}

- (id)annotation
{
  WeakRetained = objc_loadWeakRetained(&self->super._private->annotation);

  return WeakRetained;
}

- (id)UUID
{
  WeakRetained = objc_loadWeakRetained(&self->super._private->annotation);
  v3 = [WeakRetained pdfAnnotationUUID];

  return v3;
}

- (void)drawInContext:(CGContext *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->super._private->annotation);
  v5 = objc_loadWeakRetained(&self->super._private->pageLayer);
  if (WeakRetained)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    CGContextSaveGState(a3);
    [WeakRetained bounds];
    v8 = v7;
    v10 = v9;
    [WeakRetained extendedBoundsForAction:0];
    v12 = v11;
    v14 = v13;
    v15 = [v5 page];
    [v15 boundsForBox:{objc_msgSend(v5, "displayBox")}];
    v17 = v16;
    v19 = v18;

    CGContextTranslateCTM(a3, v8 - v12 + v17 - v8, v10 - v14 + v19 - v10);
    v20 = +[PDFPage isNativeRotationDrawingEnabledForThisThread];
    [PDFPage setNativeRotationDrawingEnabledForThisThread:1];
    CGContextSetProperty();
    [WeakRetained drawWithBox:objc_msgSend(v5 inContext:{"displayBox"), a3}];
    [PDFPage setNativeRotationDrawingEnabledForThisThread:v20];
    [PDFAnnotation setAnnotationPageLayerEffectIsFlipped:0];
    CGContextRestoreGState(a3);
  }
}

@end