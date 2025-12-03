@interface CRLShapeRepHelperFreehandDrawing
- (CRLShapeRepHelperFreehandDrawing)initWithShapeRep:(id)rep;
- (void)drawInContext:(CGContext *)context withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(BOOL)opacity usingPathOverride:(id)override patternOffsetsBySubpathOverride:(id)subpathOverride transparencyLayersBySubpath:(id)subpath;
@end

@implementation CRLShapeRepHelperFreehandDrawing

- (CRLShapeRepHelperFreehandDrawing)initWithShapeRep:(id)rep
{
  repCopy = rep;
  v12.receiver = self;
  v12.super_class = CRLShapeRepHelperFreehandDrawing;
  v5 = [(CRLShapeRepHelperFreehandDrawing *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_shapeRep, repCopy);
    shapeLayout = [repCopy shapeLayout];
    objc_storeWeak(&v6->_shapeLayout, shapeLayout);

    v8 = objc_opt_class();
    shapeInfo = [repCopy shapeInfo];
    v10 = sub_100013F00(v8, shapeInfo);
    objc_storeWeak(&v6->_shapeInfo, v10);
  }

  return v6;
}

- (void)drawInContext:(CGContext *)context withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(BOOL)opacity usingPathOverride:(id)override patternOffsetsBySubpathOverride:(id)subpathOverride transparencyLayersBySubpath:(id)subpath
{
  optionsCopy = options;
  CGContextSaveGState(context);
  WeakRetained = objc_loadWeakRetained(&self->_shapeRep);
  canvas = [WeakRetained canvas];

  shouldSuppressBackgrounds = [canvas shouldSuppressBackgrounds];
  if (shouldSuppressBackgrounds != sub_1005106C8(context))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138F3E4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138F3F8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138F498();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v16);
    }

    v17 = [NSString stringWithUTF8String:"[CRLShapeRepHelperFreehandDrawing drawInContext:withContent:strokeDrawOptions:withOpacity:usingPathOverride:patternOffsetsBySubpathOverride:transparencyLayersBySubpath:]"];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRepHelperFreehandDrawing.m"];
    [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:77 isFatal:0 description:"Canvas and CGContext disagree about whether we are suppressing backgrounds"];
  }

  v19 = objc_loadWeakRetained(&self->_shapeLayout);
  [v19 pathBounds];
  v21 = v20;
  v23 = v22;

  CGContextTranslateCTM(context, -v21, -v23);
  if (!(shouldSuppressBackgrounds & 1 | !content))
  {
    v24 = objc_loadWeakRetained(&self->_shapeLayout);
    fill = [v24 fill];

    if (fill && ([fill isClear] & 1) == 0)
    {
      v26 = objc_loadWeakRetained(&self->_shapeLayout);
      path = [v26 path];
      cGPath = [path CGPath];

      v29 = fill;
      if (sub_100510090(context))
      {
        referenceColor = [v29 referenceColor];
        [referenceColor alphaComponent];
        v32 = [CRLColorFill colorWithWhite:0.0 alpha:v31];

        v29 = v32;
      }

      [v29 paintPath:cGPath inContext:context];
    }
  }

  v33 = objc_loadWeakRetained(&self->_shapeLayout);
  stroke = [v33 stroke];

  if (stroke)
  {
    isNullStroke = [stroke isNullStroke];
    if ((optionsCopy & 1) != 0 && (isNullStroke & 1) == 0)
    {
      v36 = objc_loadWeakRetained(&self->_shapeLayout);
      pencilKitStrokes = [v36 pencilKitStrokes];

      if (pencilKitStrokes)
      {
        backgroundColor = [canvas backgroundColor];
        [CRLPencilKitInkStroke drawStrokes:pencilKitStrokes inContext:context overTransparentCanvas:backgroundColor == 0];
      }

      else
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10138F4C0();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10138F4E8();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10138F598();
        }

        v39 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130EFC0(v39);
        }

        v40 = [NSString stringWithUTF8String:"[CRLShapeRepHelperFreehandDrawing drawInContext:withContent:strokeDrawOptions:withOpacity:usingPathOverride:patternOffsetsBySubpathOverride:transparencyLayersBySubpath:]"];
        v41 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRepHelperFreehandDrawing.m"];
        [CRLAssertionHandler handleFailureInFunction:v40 file:v41 lineNumber:105 isFatal:0 description:"invalid nil value for '%{public}s'", "pencilKitStrokes"];

        v42 = objc_loadWeakRetained(&self->_shapeLayout);
        backgroundColor = [v42 path];

        [stroke paintPath:objc_msgSend(backgroundColor inContext:{"CGPath"), context}];
      }
    }
  }

  CGContextRestoreGState(context);
}

@end