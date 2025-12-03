@interface PDFPageLayerEffect
+ (id)createFlashEffectForPDFLinkAnnotation:(id)annotation withLayer:(id)layer forType:(int64_t)type;
+ (id)createPDFAnnotationLayerEffectForAnnotation:(id)annotation withLayer:(id)layer;
+ (id)createPDFCoachmarkLayerEffectsWithFrame:(CGRect)frame withLayer:(id)layer;
+ (id)createPDFMarkupLayerEffectsForAnnotation:(id)annotation withLayer:(id)layer;
+ (id)createPDFNoteLayerEffectForAnnotation:(id)annotation withLayer:(id)layer;
+ (id)createPDFSelectionLayerEffectsForSelections:(id)selections withLayer:(id)layer;
- (CGRect)pageFrame;
- (PDFPageLayerEffect)initWithPDFPageLayer:(id)layer;
@end

@implementation PDFPageLayerEffect

- (PDFPageLayerEffect)initWithPDFPageLayer:(id)layer
{
  v20[5] = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  v18.receiver = self;
  v18.super_class = PDFPageLayerEffect;
  v5 = [(PDFPageLayerEffect *)&v18 init];
  if (v5)
  {
    v6 = objc_alloc_init(PDFPageLayerEffectPrivate);
    v7 = v5->_private;
    v5->_private = v6;

    objc_storeWeak(&v5->_private->pageLayer, layerCopy);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v9 = v5->_private;
    uuid = v9->uuid;
    v9->uuid = uUID;

    v5->_private->shouldRotateContent = 1;
    v19[0] = @"onOrderIn";
    null = [MEMORY[0x1E695DFB0] null];
    v20[0] = null;
    v19[1] = @"onOrderOut";
    null2 = [MEMORY[0x1E695DFB0] null];
    v20[1] = null2;
    v19[2] = @"sublayers";
    null3 = [MEMORY[0x1E695DFB0] null];
    v20[2] = null3;
    v19[3] = @"contents";
    null4 = [MEMORY[0x1E695DFB0] null];
    v20[3] = null4;
    v19[4] = @"bounds";
    null5 = [MEMORY[0x1E695DFB0] null];
    v20[4] = null5;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:5];

    [(PDFPageLayerEffect *)v5 setActions:v16];
  }

  return v5;
}

- (CGRect)pageFrame
{
  v2 = self->_private;
  x = v2->pageFrame.origin.x;
  y = v2->pageFrame.origin.y;
  width = v2->pageFrame.size.width;
  height = v2->pageFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (id)createPDFSelectionLayerEffectsForSelections:(id)selections withLayer:(id)layer
{
  layerCopy = layer;
  selectionsCopy = selections;
  v7 = [[PDFPageLayerSelectionEffect alloc] initWithPDFPageLayer:layerCopy];
  [layerCopy bounds];
  [(PDFPageLayerSelectionEffect *)v7 setFrame:?];
  [layerCopy bounds];
  [(PDFPageLayerEffect *)v7 setPageFrame:?];
  [(PDFPageLayerSelectionEffect *)v7 setZPosition:-300.0];
  [(PDFPageLayerSelectionEffect *)v7 setAllowsGroupBlending:0];
  [(PDFPageLayerSelectionEffect *)v7 setGeometryFlipped:1];
  [(PDFPageLayerSelectionEffect *)v7 setSelections:selectionsCopy];

  [layerCopy addPageLayerEffect:v7];

  return v7;
}

+ (id)createPDFCoachmarkLayerEffectsWithFrame:(CGRect)frame withLayer:(id)layer
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layerCopy = layer;
  if (PDFRectValid(x, y, width, height) && (v30.origin.x = x, v30.origin.y = y, v30.size.width = width, v30.size.height = height, !PDFRectIsEmpty(v30)))
  {
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v32 = PDFRectInset(v31, width * -0.1, height * -0.1);
    v10 = v32.origin.x;
    v11 = v32.origin.y;
    v12 = v32.size.width;
    v13 = v32.size.height;
    v14 = objc_alloc_init(MEMORY[0x1E6979380]);
    v15 = 0.0;
    [v14 setFrame:PDFRectToCGRect(v14)];
    [v14 setCornerRadius:3.0];
    v16 = objc_alloc(MEMORY[0x1E695DF70]);
    v17 = PDFCGColorCreateGenericRGB(0.949019608, 0.937254902, 0.0, 1.0);
    cGColor = [v17 CGColor];
    v19 = PDFCGColorCreateGenericRGB(0.929411765, 0.8, 0.0, 1.0);
    v20 = [v16 initWithObjects:{cGColor, objc_msgSend(v19, "CGColor"), 0}];

    page = [layerCopy page];
    rotation = [page rotation];

    if (rotation >= 180)
    {
      [v20 exchangeObjectAtIndex:0 withObjectAtIndex:1];
    }

    [v14 setColors:v20];
    if (rotation == 90)
    {
      v23 = 1.0;
    }

    else
    {
      v23 = 0.0;
    }

    if (rotation == 90)
    {
      v24 = 0.0;
    }

    else
    {
      v24 = -1.0;
    }

    if (rotation == 180)
    {
      v23 = 0.0;
      v24 = 1.0;
    }

    if (rotation == 270)
    {
      v25 = -1.0;
    }

    else
    {
      v25 = v23;
    }

    if (rotation != 270)
    {
      v15 = v24;
    }

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [v14 setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

    [v14 setShadowOffset:{v25, v15}];
    LODWORD(v27) = 1061997773;
    [v14 setShadowOpacity:v27];
    [v14 setShadowRadius:1.0];
    [v14 setGeometryFlipped:1];
    v9 = [[PDFPageLayerEffect alloc] initWithPDFPageLayer:layerCopy];
    [(PDFPageLayerEffect *)v9 setFrame:PDFRectToCGRect(v9)];
    [(PDFPageLayerEffect *)v9 setPageFrame:v10, v11, v12, v13];
    [(PDFPageLayerEffect *)v9 setZPosition:-500.0];
    [(PDFPageLayerEffect *)v9 setCompositingFilter:*MEMORY[0x1E6979CA8]];
    [(PDFPageLayerEffect *)v9 addSublayer:v14];
    [layerCopy addPageLayerEffect:v9];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)createPDFAnnotationLayerEffectForAnnotation:(id)annotation withLayer:(id)layer
{
  annotationCopy = annotation;
  layerCopy = layer;
  if (!annotationCopy || ([annotationCopy bounds], v8 = v7, v10 = v9, v12 = v11, v14 = v13, !PDFRectValid(v7, v9, v11, v13)) || (v27.origin.x = v8, v27.origin.y = v10, v27.size.width = v12, v27.size.height = v14, PDFRectIsEmpty(v27)))
  {
    v15 = 0;
    goto LABEL_5;
  }

  v17 = [annotationCopy valueForAnnotationKey:@"/Subtype"];
  v18 = [v17 isEqualToString:@"/Link"];
  v19 = [v17 isEqualToString:@"/Popup"];
  if (!v18)
  {
    goto LABEL_12;
  }

  border = [annotationCopy border];
  v21 = border;
  if (border)
  {
    [border lineWidth];
    if (v22 > 0.0)
    {

LABEL_12:
      v15 = [(PDFPageLayerEffect *)[PDFPageLayerAnnotationEffect alloc] initWithPDFPageLayer:layerCopy];
      [(PDFPageLayerAnnotationEffect *)v15 setFrame:PDFRectToCGRect(v15)];
      v23 = -200.0;
      if (v19)
      {
        v23 = 0.0;
      }

      [(PDFPageLayerAnnotationEffect *)v15 setZPosition:v23];
      if ([annotationCopy shouldDisplay])
      {
        page = [layerCopy page];
        -[PDFPageLayerAnnotationEffect setHidden:](v15, "setHidden:", [page displaysAnnotations] ^ 1);
      }

      else
      {
        [(PDFPageLayerAnnotationEffect *)v15 setHidden:1];
      }

      [(PDFPageLayerAnnotationEffect *)v15 setContentsFormat:*MEMORY[0x1E6979650]];
      [(PDFPageLayerAnnotationEffect *)v15 setGeometryFlipped:1];
      [(PDFPageLayerAnnotationEffect *)v15 setNeedsDisplay];
      [(PDFPageLayerAnnotationEffect *)v15 setDrawsAsynchronously:1];
      objc_storeWeak(&v15->super._private->annotation, annotationCopy);
      if ([v17 isEqualToString:@"/Text"])
      {
        v15->super._private->shouldRotateContent = 0;
      }

      else if ([v17 isEqualToString:@"/Ink"])
      {
        v25 = [annotationCopy valueForAnnotationKey:@"/IT"];
        if ([v25 isEqualToString:@"/InkHighlight"])
        {
          [(PDFPageLayerAnnotationEffect *)v15 setCompositingFilter:*MEMORY[0x1E6979CA8]];
        }
      }

      [layerCopy addPageLayerEffect:v15];
      goto LABEL_25;
    }
  }

  v15 = 0;
LABEL_25:

LABEL_5:

  return v15;
}

+ (id)createPDFMarkupLayerEffectsForAnnotation:(id)annotation withLayer:(id)layer
{
  annotationCopy = annotation;
  layerCopy = layer;
  if (annotationCopy && ([annotationCopy bounds], v8 = v7, v10 = v9, v12 = v11, v14 = v13, PDFRectValid(v7, v9, v11, v13)) && (v19.origin.x = v8, v19.origin.y = v10, v19.size.width = v12, v19.size.height = v14, !PDFRectIsEmpty(v19)))
  {
    v15 = [(PDFPageLayerEffect *)[PDFPageLayerMarkupAnnotationEffect alloc] initWithPDFPageLayer:layerCopy];
    [(PDFPageLayerMarkupAnnotationEffect *)v15 setFrame:PDFRectToCGRect(v15)];
    [(PDFPageLayerMarkupAnnotationEffect *)v15 setZPosition:-400.0];
    if ([annotationCopy shouldDisplay])
    {
      page = [layerCopy page];
      -[PDFPageLayerMarkupAnnotationEffect setHidden:](v15, "setHidden:", [page displaysAnnotations] ^ 1);
    }

    else
    {
      [(PDFPageLayerMarkupAnnotationEffect *)v15 setHidden:1];
    }

    [(PDFPageLayerMarkupAnnotationEffect *)v15 setCompositingFilter:*MEMORY[0x1E6979CA8]];
    [(PDFPageLayerMarkupAnnotationEffect *)v15 setAllowsGroupBlending:0];
    [(PDFPageLayerMarkupAnnotationEffect *)v15 setGeometryFlipped:1];
    objc_storeWeak(&v15->super._private->annotation, annotationCopy);
    [(PDFPageLayerMarkupAnnotationEffect *)v15 update];
    [layerCopy addPageLayerEffect:v15];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)createPDFNoteLayerEffectForAnnotation:(id)annotation withLayer:(id)layer
{
  annotationCopy = annotation;
  if (annotation)
  {
    layerCopy = layer;
    v6 = annotationCopy;
    annotationCopy = [(PDFPageLayerEffect *)[PDFPageLayerNoteEffect alloc] initWithPDFPageLayer:layerCopy];
    [(PDFPageLayerNoteEffect *)annotationCopy setBorderWidth:1.0];
    [(PDFPageLayerNoteEffect *)annotationCopy setCornerRadius:1.0];
    objc_storeWeak(&annotationCopy->super._private->annotation, v6);

    [(PDFPageLayerNoteEffect *)annotationCopy update];
    [layerCopy addPageLayerEffect:annotationCopy];
  }

  return annotationCopy;
}

+ (id)createFlashEffectForPDFLinkAnnotation:(id)annotation withLayer:(id)layer forType:(int64_t)type
{
  layerCopy = layer;
  if (annotation)
  {
    annotationCopy = annotation;
    v9 = [[PDFPageLayerEffect alloc] initWithPDFPageLayer:layerCopy];
    [annotationCopy bounds];
    x = v10;
    y = v12;
    width = v14;
    height = v16;

    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    if (type == 1)
    {
      v18 = 0.2;
    }

    else
    {
      if (type != 2)
      {
        [(PDFPageLayerEffect *)v9 setCornerRadius:1.5];
        v19 = +[PDFSelection defaultActiveColor];
        v20 = 0.25;
        v18 = 0.25;
        goto LABEL_8;
      }

      v18 = 0.75;
    }

    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v38 = PDFRectInset(v37, -3.0, -3.0);
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
    [(PDFPageLayerEffect *)v9 setCornerRadius:3.0];
    v19 = [MEMORY[0x1E69DC888] colorWithRed:0.101960784 green:0.101960784 blue:0.101960784 alpha:0.3];
    v20 = 0.0;
LABEL_8:
    -[PDFPageLayerEffect setBackgroundColor:](v9, "setBackgroundColor:", [v19 CGColor]);

    [(PDFPageLayerEffect *)v9 setFrame:PDFRectToCGRect(v21)];
    [(PDFPageLayerEffect *)v9 setPageFrame:x, y, width, height];
    [(PDFPageLayerEffect *)v9 setCompositingFilter:*MEMORY[0x1E6979CA8]];
    [(PDFPageLayerEffect *)v9 setZPosition:-500.0];
    v22 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v22 setBeginTime:v18 + CACurrentMediaTime()];
    LODWORD(v23) = 1.0;
    v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
    [v22 setFromValue:v24];

    v25 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
    [v22 setToValue:v25];

    [v22 setDuration:v20];
    LODWORD(v26) = 1.0;
    [v22 setRepeatCount:v26];
    [v22 setRemovedOnCompletion:0];
    [v22 setFillMode:*MEMORY[0x1E69797E8]];
    v27 = MEMORY[0x1E6979518];
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __78__PDFPageLayerEffect_createFlashEffectForPDFLinkAnnotation_withLayer_forType___block_invoke;
    v33 = &unk_1E8150FF8;
    v28 = layerCopy;
    v34 = v28;
    annotation = v9;
    annotationCopy2 = annotation;
    [v27 setCompletionBlock:&v30];
    [annotation addAnimation:v22 forKey:{@"fadeAnimation", v30, v31, v32, v33}];

    [MEMORY[0x1E6979518] commit];
    [v28 addPageLayerEffect:annotation];
  }

  return annotation;
}

void __78__PDFPageLayerEffect_createFlashEffectForPDFLinkAnnotation_withLayer_forType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) UUID];
  [v1 removePageLayerEffectForID:v2];
}

@end