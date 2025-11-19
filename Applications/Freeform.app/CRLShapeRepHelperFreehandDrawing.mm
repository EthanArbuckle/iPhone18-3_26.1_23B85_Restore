@interface CRLShapeRepHelperFreehandDrawing
- (CRLShapeRepHelperFreehandDrawing)initWithShapeRep:(id)a3;
- (void)drawInContext:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(BOOL)a6 usingPathOverride:(id)a7 patternOffsetsBySubpathOverride:(id)a8 transparencyLayersBySubpath:(id)a9;
@end

@implementation CRLShapeRepHelperFreehandDrawing

- (CRLShapeRepHelperFreehandDrawing)initWithShapeRep:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CRLShapeRepHelperFreehandDrawing;
  v5 = [(CRLShapeRepHelperFreehandDrawing *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_shapeRep, v4);
    v7 = [v4 shapeLayout];
    objc_storeWeak(&v6->_shapeLayout, v7);

    v8 = objc_opt_class();
    v9 = [v4 shapeInfo];
    v10 = sub_100013F00(v8, v9);
    objc_storeWeak(&v6->_shapeInfo, v10);
  }

  return v6;
}

- (void)drawInContext:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(BOOL)a6 usingPathOverride:(id)a7 patternOffsetsBySubpathOverride:(id)a8 transparencyLayersBySubpath:(id)a9
{
  v9 = a5;
  CGContextSaveGState(a3);
  WeakRetained = objc_loadWeakRetained(&self->_shapeRep);
  v14 = [WeakRetained canvas];

  v15 = [v14 shouldSuppressBackgrounds];
  if (v15 != sub_1005106C8(a3))
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

  CGContextTranslateCTM(a3, -v21, -v23);
  if (!(v15 & 1 | !a4))
  {
    v24 = objc_loadWeakRetained(&self->_shapeLayout);
    v25 = [v24 fill];

    if (v25 && ([v25 isClear] & 1) == 0)
    {
      v26 = objc_loadWeakRetained(&self->_shapeLayout);
      v27 = [v26 path];
      v28 = [v27 CGPath];

      v29 = v25;
      if (sub_100510090(a3))
      {
        v30 = [v29 referenceColor];
        [v30 alphaComponent];
        v32 = [CRLColorFill colorWithWhite:0.0 alpha:v31];

        v29 = v32;
      }

      [v29 paintPath:v28 inContext:a3];
    }
  }

  v33 = objc_loadWeakRetained(&self->_shapeLayout);
  v34 = [v33 stroke];

  if (v34)
  {
    v35 = [v34 isNullStroke];
    if ((v9 & 1) != 0 && (v35 & 1) == 0)
    {
      v36 = objc_loadWeakRetained(&self->_shapeLayout);
      v37 = [v36 pencilKitStrokes];

      if (v37)
      {
        v38 = [v14 backgroundColor];
        [CRLPencilKitInkStroke drawStrokes:v37 inContext:a3 overTransparentCanvas:v38 == 0];
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
        v38 = [v42 path];

        [v34 paintPath:objc_msgSend(v38 inContext:{"CGPath"), a3}];
      }
    }
  }

  CGContextRestoreGState(a3);
}

@end