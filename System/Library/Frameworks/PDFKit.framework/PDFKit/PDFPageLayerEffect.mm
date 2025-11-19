@interface PDFPageLayerEffect
+ (id)createFlashEffectForPDFLinkAnnotation:(id)a3 withLayer:(id)a4 forType:(int64_t)a5;
+ (id)createPDFAnnotationLayerEffectForAnnotation:(id)a3 withLayer:(id)a4;
+ (id)createPDFCoachmarkLayerEffectsWithFrame:(CGRect)a3 withLayer:(id)a4;
+ (id)createPDFMarkupLayerEffectsForAnnotation:(id)a3 withLayer:(id)a4;
+ (id)createPDFNoteLayerEffectForAnnotation:(id)a3 withLayer:(id)a4;
+ (id)createPDFSelectionLayerEffectsForSelections:(id)a3 withLayer:(id)a4;
- (CGRect)pageFrame;
- (PDFPageLayerEffect)initWithPDFPageLayer:(id)a3;
@end

@implementation PDFPageLayerEffect

- (PDFPageLayerEffect)initWithPDFPageLayer:(id)a3
{
  v20[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PDFPageLayerEffect;
  v5 = [(PDFPageLayerEffect *)&v18 init];
  if (v5)
  {
    v6 = objc_alloc_init(PDFPageLayerEffectPrivate);
    v7 = v5->_private;
    v5->_private = v6;

    objc_storeWeak(&v5->_private->pageLayer, v4);
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = v5->_private;
    uuid = v9->uuid;
    v9->uuid = v8;

    v5->_private->shouldRotateContent = 1;
    v19[0] = @"onOrderIn";
    v11 = [MEMORY[0x1E695DFB0] null];
    v20[0] = v11;
    v19[1] = @"onOrderOut";
    v12 = [MEMORY[0x1E695DFB0] null];
    v20[1] = v12;
    v19[2] = @"sublayers";
    v13 = [MEMORY[0x1E695DFB0] null];
    v20[2] = v13;
    v19[3] = @"contents";
    v14 = [MEMORY[0x1E695DFB0] null];
    v20[3] = v14;
    v19[4] = @"bounds";
    v15 = [MEMORY[0x1E695DFB0] null];
    v20[4] = v15;
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

+ (id)createPDFSelectionLayerEffectsForSelections:(id)a3 withLayer:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PDFPageLayerSelectionEffect alloc] initWithPDFPageLayer:v5];
  [v5 bounds];
  [(PDFPageLayerSelectionEffect *)v7 setFrame:?];
  [v5 bounds];
  [(PDFPageLayerEffect *)v7 setPageFrame:?];
  [(PDFPageLayerSelectionEffect *)v7 setZPosition:-300.0];
  [(PDFPageLayerSelectionEffect *)v7 setAllowsGroupBlending:0];
  [(PDFPageLayerSelectionEffect *)v7 setGeometryFlipped:1];
  [(PDFPageLayerSelectionEffect *)v7 setSelections:v6];

  [v5 addPageLayerEffect:v7];

  return v7;
}

+ (id)createPDFCoachmarkLayerEffectsWithFrame:(CGRect)a3 withLayer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
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
    v18 = [v17 CGColor];
    v19 = PDFCGColorCreateGenericRGB(0.929411765, 0.8, 0.0, 1.0);
    v20 = [v16 initWithObjects:{v18, objc_msgSend(v19, "CGColor"), 0}];

    v21 = [v8 page];
    v22 = [v21 rotation];

    if (v22 >= 180)
    {
      [v20 exchangeObjectAtIndex:0 withObjectAtIndex:1];
    }

    [v14 setColors:v20];
    if (v22 == 90)
    {
      v23 = 1.0;
    }

    else
    {
      v23 = 0.0;
    }

    if (v22 == 90)
    {
      v24 = 0.0;
    }

    else
    {
      v24 = -1.0;
    }

    if (v22 == 180)
    {
      v23 = 0.0;
      v24 = 1.0;
    }

    if (v22 == 270)
    {
      v25 = -1.0;
    }

    else
    {
      v25 = v23;
    }

    if (v22 != 270)
    {
      v15 = v24;
    }

    v26 = [MEMORY[0x1E69DC888] blackColor];
    [v14 setShadowColor:{objc_msgSend(v26, "CGColor")}];

    [v14 setShadowOffset:{v25, v15}];
    LODWORD(v27) = 1061997773;
    [v14 setShadowOpacity:v27];
    [v14 setShadowRadius:1.0];
    [v14 setGeometryFlipped:1];
    v9 = [[PDFPageLayerEffect alloc] initWithPDFPageLayer:v8];
    [(PDFPageLayerEffect *)v9 setFrame:PDFRectToCGRect(v9)];
    [(PDFPageLayerEffect *)v9 setPageFrame:v10, v11, v12, v13];
    [(PDFPageLayerEffect *)v9 setZPosition:-500.0];
    [(PDFPageLayerEffect *)v9 setCompositingFilter:*MEMORY[0x1E6979CA8]];
    [(PDFPageLayerEffect *)v9 addSublayer:v14];
    [v8 addPageLayerEffect:v9];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)createPDFAnnotationLayerEffectForAnnotation:(id)a3 withLayer:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5 || ([v5 bounds], v8 = v7, v10 = v9, v12 = v11, v14 = v13, !PDFRectValid(v7, v9, v11, v13)) || (v27.origin.x = v8, v27.origin.y = v10, v27.size.width = v12, v27.size.height = v14, PDFRectIsEmpty(v27)))
  {
    v15 = 0;
    goto LABEL_5;
  }

  v17 = [v5 valueForAnnotationKey:@"/Subtype"];
  v18 = [v17 isEqualToString:@"/Link"];
  v19 = [v17 isEqualToString:@"/Popup"];
  if (!v18)
  {
    goto LABEL_12;
  }

  v20 = [v5 border];
  v21 = v20;
  if (v20)
  {
    [v20 lineWidth];
    if (v22 > 0.0)
    {

LABEL_12:
      v15 = [(PDFPageLayerEffect *)[PDFPageLayerAnnotationEffect alloc] initWithPDFPageLayer:v6];
      [(PDFPageLayerAnnotationEffect *)v15 setFrame:PDFRectToCGRect(v15)];
      v23 = -200.0;
      if (v19)
      {
        v23 = 0.0;
      }

      [(PDFPageLayerAnnotationEffect *)v15 setZPosition:v23];
      if ([v5 shouldDisplay])
      {
        v24 = [v6 page];
        -[PDFPageLayerAnnotationEffect setHidden:](v15, "setHidden:", [v24 displaysAnnotations] ^ 1);
      }

      else
      {
        [(PDFPageLayerAnnotationEffect *)v15 setHidden:1];
      }

      [(PDFPageLayerAnnotationEffect *)v15 setContentsFormat:*MEMORY[0x1E6979650]];
      [(PDFPageLayerAnnotationEffect *)v15 setGeometryFlipped:1];
      [(PDFPageLayerAnnotationEffect *)v15 setNeedsDisplay];
      [(PDFPageLayerAnnotationEffect *)v15 setDrawsAsynchronously:1];
      objc_storeWeak(&v15->super._private->annotation, v5);
      if ([v17 isEqualToString:@"/Text"])
      {
        v15->super._private->shouldRotateContent = 0;
      }

      else if ([v17 isEqualToString:@"/Ink"])
      {
        v25 = [v5 valueForAnnotationKey:@"/IT"];
        if ([v25 isEqualToString:@"/InkHighlight"])
        {
          [(PDFPageLayerAnnotationEffect *)v15 setCompositingFilter:*MEMORY[0x1E6979CA8]];
        }
      }

      [v6 addPageLayerEffect:v15];
      goto LABEL_25;
    }
  }

  v15 = 0;
LABEL_25:

LABEL_5:

  return v15;
}

+ (id)createPDFMarkupLayerEffectsForAnnotation:(id)a3 withLayer:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && ([v5 bounds], v8 = v7, v10 = v9, v12 = v11, v14 = v13, PDFRectValid(v7, v9, v11, v13)) && (v19.origin.x = v8, v19.origin.y = v10, v19.size.width = v12, v19.size.height = v14, !PDFRectIsEmpty(v19)))
  {
    v15 = [(PDFPageLayerEffect *)[PDFPageLayerMarkupAnnotationEffect alloc] initWithPDFPageLayer:v6];
    [(PDFPageLayerMarkupAnnotationEffect *)v15 setFrame:PDFRectToCGRect(v15)];
    [(PDFPageLayerMarkupAnnotationEffect *)v15 setZPosition:-400.0];
    if ([v5 shouldDisplay])
    {
      v17 = [v6 page];
      -[PDFPageLayerMarkupAnnotationEffect setHidden:](v15, "setHidden:", [v17 displaysAnnotations] ^ 1);
    }

    else
    {
      [(PDFPageLayerMarkupAnnotationEffect *)v15 setHidden:1];
    }

    [(PDFPageLayerMarkupAnnotationEffect *)v15 setCompositingFilter:*MEMORY[0x1E6979CA8]];
    [(PDFPageLayerMarkupAnnotationEffect *)v15 setAllowsGroupBlending:0];
    [(PDFPageLayerMarkupAnnotationEffect *)v15 setGeometryFlipped:1];
    objc_storeWeak(&v15->super._private->annotation, v5);
    [(PDFPageLayerMarkupAnnotationEffect *)v15 update];
    [v6 addPageLayerEffect:v15];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)createPDFNoteLayerEffectForAnnotation:(id)a3 withLayer:(id)a4
{
  v4 = a3;
  if (a3)
  {
    v5 = a4;
    v6 = v4;
    v4 = [(PDFPageLayerEffect *)[PDFPageLayerNoteEffect alloc] initWithPDFPageLayer:v5];
    [(PDFPageLayerNoteEffect *)v4 setBorderWidth:1.0];
    [(PDFPageLayerNoteEffect *)v4 setCornerRadius:1.0];
    objc_storeWeak(&v4->super._private->annotation, v6);

    [(PDFPageLayerNoteEffect *)v4 update];
    [v5 addPageLayerEffect:v4];
  }

  return v4;
}

+ (id)createFlashEffectForPDFLinkAnnotation:(id)a3 withLayer:(id)a4 forType:(int64_t)a5
{
  v7 = a4;
  if (a3)
  {
    v8 = a3;
    v9 = [[PDFPageLayerEffect alloc] initWithPDFPageLayer:v7];
    [v8 bounds];
    x = v10;
    y = v12;
    width = v14;
    height = v16;

    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    if (a5 == 1)
    {
      v18 = 0.2;
    }

    else
    {
      if (a5 != 2)
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
    v28 = v7;
    v34 = v28;
    a3 = v9;
    v35 = a3;
    [v27 setCompletionBlock:&v30];
    [a3 addAnimation:v22 forKey:{@"fadeAnimation", v30, v31, v32, v33}];

    [MEMORY[0x1E6979518] commit];
    [v28 addPageLayerEffect:a3];
  }

  return a3;
}

void __78__PDFPageLayerEffect_createFlashEffectForPDFLinkAnnotation_withLayer_forType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) UUID];
  [v1 removePageLayerEffectForID:v2];
}

@end