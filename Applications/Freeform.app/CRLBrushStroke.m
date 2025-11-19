@interface CRLBrushStroke
+ (BOOL)brushStrokeUsesMetal;
+ (BOOL)p_isDirectContextWideColorCapable:(id)a3;
+ (CGColor)p_colorForDrawingIntoDirectContext:(id)a3 fromOriginalColor:(id)a4;
+ (id)p_metalShaderQueue;
+ (id)p_metalTextureQueue;
+ (void)p_drawColor:(id)a3 intoContext:(CGContext *)a4 usingImageAsMask:(CGImage *)a5 withRect:(CGRect)a6;
- (BOOL)p_isDrawingRasterizedIntoPDFWithContext:(CGContext *)a3;
- (BOOL)p_isFreehandDrawingStrokeWithFixedTileWidth;
- (BOOL)p_prefersRasterRenderingInContext:(CGContext *)a3;
- (BOOL)p_shouldDrawAsVectorInContext:(CGContext *)a3;
- (BOOL)p_shouldSplitAtSharpAngles;
- (CRLBrushStroke)initWithName:(id)a3 color:(id)a4 width:(double)a5 cap:(unint64_t)a6 join:(unint64_t)a7 pattern:(id)a8 miterLimit:(double)a9;
- (double)horizontalMarginForSwatch;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)p_brushPath:(id)a3 inContext:(CGContext *)a4 orDirectly:(id)a5 parameterized:(BOOL)a6 drawRasterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8 withLayoutOptions:(id)a9;
- (id)p_metalBrushShaderForPixelFormat:(unint64_t)a3 andDevice:(id)a4;
- (id)p_metalOpacityShaderForPixelFormat:(unint64_t)a3 andDevice:(id)a4;
- (id)p_metalTextureForCurrentStrokeAndDevice:(id)a3;
- (id)strokeLineEnd:(id)a3;
- (id)strokedCopyOfPath:(id)a3;
- (int64_t)p_fastElementPercentage:(double *)a3 forOverallPercentage:(double)a4 onPath:(id)a5 withCachedCurrentElementPercentage:(id *)a6;
- (unint64_t)cap;
- (void)i_setCap:(unint64_t)a3;
- (void)p_brushPath:(id)a3 withScaling:(id)a4 inElementRange:(_NSRange)a5 intoPath:(id)a6 orIntoVector:(void *)a7 sectionIndex:(unint64_t *)a8 viewScale:(double)a9 withLayoutOptions:(id)a10 currentSubpathIndex:(unint64_t)a11 cachedCurrentElementPercentage:(id *)a12;
- (void)p_brushSection:(id)a3 sectionIndex:(unint64_t)a4 ontoPath:(id)a5 inElementRange:(_NSRange)a6 intoPath:(id)a7 orIntoVector:(void *)a8 viewScale:(double)a9 strokeTileLayout:(id)a10 cachedCurrentElementPercentage:(id *)a11;
- (void)p_finishMetalRenderInContext:(CGContext *)a3 orDirectly:(id)a4 pathVertexData:(void *)a5 parameterized:(BOOL)a6 shouldReverseDrawOrder:(BOOL)a7 withLayoutOptions:(id)a8;
- (void)p_rasterBrushPath:(CGPath *)a3 inContext:(CGContext *)a4 orDirectly:(id)a5 parameterized:(BOOL)a6 shouldReverseDrawOrder:(BOOL)a7 withLayoutOptions:(id)a8;
- (void)p_rasterRenderSection:(id)a3 sectionIndex:(unint64_t)a4 ontoPath:(id)a5 inElementRange:(_NSRange)a6 into:(void *)a7 viewScale:(double)a8 strokeTileLayout:(id)a9 cachedCurrentElementPercentage:(id *)a10;
- (void)paintLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 inContext:(CGContext *)a7 useFastDrawing:(BOOL)a8;
- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6 parameterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8;
- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6 parameterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8 withLayoutOptions:(id)a9;
@end

@implementation CRLBrushStroke

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CRLMutableBrushStroke alloc];
  v5 = [(CRLSmartStroke *)self strokeName];
  v6 = [(CRLStroke *)self color];
  [(CRLStroke *)self width];
  v8 = v7;
  v9 = [(CRLBrushStroke *)self cap];
  v10 = [(CRLStroke *)self join];
  v11 = [(CRLStroke *)self pattern];
  [(CRLStroke *)self miterLimit];
  v13 = [(CRLBrushStroke *)v4 initWithName:v5 color:v6 width:v9 cap:v10 join:v11 pattern:v8 miterLimit:v12];

  return v13;
}

- (CRLBrushStroke)initWithName:(id)a3 color:(id)a4 width:(double)a5 cap:(unint64_t)a6 join:(unint64_t)a7 pattern:(id)a8 miterLimit:(double)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a8;
  v22.receiver = self;
  v22.super_class = CRLBrushStroke;
  v19 = [(CRLSmartStroke *)&v22 initWithName:v16 color:v17 width:a6 cap:a7 join:v18 pattern:a5 miterLimit:a9];
  v20 = v19;
  if (v19)
  {
    [(CRLBrushStroke *)v19 i_setCap:1];
  }

  return v20;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CRLSmartStroke *)self strokeName];
  [(CRLStroke *)self width];
  v7 = [NSString stringWithFormat:@"<%@ %p strokeName='%@' width=%f>", v4, self, v5, v6];

  return v7;
}

+ (BOOL)brushStrokeUsesMetal
{
  v2 = +[CRLCapabilities currentCapabilities];
  v3 = [v2 isMetalCapable];

  return v3;
}

- (unint64_t)cap
{
  v2 = [(CRLStroke *)self i_cap];
  if (v2 != 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138B814();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138B828();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138B8B8();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v4 = [NSString stringWithUTF8String:"[CRLBrushStroke cap]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:267 isFatal:0 description:"CRLBrushStroke should only ever have a round cap."];
  }

  return v2;
}

- (void)i_setCap:(unint64_t)a3
{
  v3.receiver = self;
  v3.super_class = CRLBrushStroke;
  [(CRLStroke *)&v3 i_setCap:1];
}

- (double)horizontalMarginForSwatch
{
  v8.receiver = self;
  v8.super_class = CRLBrushStroke;
  [(CRLStroke *)&v8 horizontalMarginForSwatch];
  v4 = v3;
  v5 = [(CRLSmartStroke *)self strokeName];
  v6 = [v5 isEqualToString:@"Pen"];

  result = 7.0;
  if (!v6)
  {
    return v4;
  }

  return result;
}

- (BOOL)p_shouldSplitAtSharpAngles
{
  v2 = [(CRLSmartStroke *)self strokeName];
  v3 = [CRLBrushStrokeLoader storageForBrushStrokeNamed:v2];

  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138B8E0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138B8F4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138B988();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v5 = [NSString stringWithUTF8String:"[CRLBrushStroke p_shouldSplitAtSharpAngles]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:290 isFatal:0 description:"invalid nil value for '%{public}s'", "storage"];
  }

  v7 = [v3 options];
  v8 = [v7 objectForKeyedSubscript:@"split-at-sharp-angles"];

  if (!v8)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138B9B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138B9D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138BA6C();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v10 = [NSString stringWithUTF8String:"[CRLBrushStroke p_shouldSplitAtSharpAngles]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:292 isFatal:0 description:"invalid nil value for '%{public}s'", "splitAtSharpAnglesOption"];
  }

  v12 = [v8 BOOLValue];

  return v12;
}

- (id)strokeLineEnd:(id)a3
{
  v4 = a3;
  if ([v4 isNone])
  {
    v5 = v4;
  }

  else
  {
    v6 = [v4 identifier];
    v7 = [v6 rangeOfString:@":"];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [v6 substringFromIndex:&v7[v8]];

      v6 = v9;
    }

    v10 = [(CRLSmartStroke *)self strokeName];
    v11 = [CRLBrushStrokeLoader storageForBrushStrokeNamed:v10];

    if (!v11)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138BA94();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10138BAA8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10138BB3C();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v13 = [NSString stringWithUTF8String:"[CRLBrushStroke strokeLineEnd:]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:312 isFatal:0 description:"invalid nil value for '%{public}s'", "storage"];
    }

    v15 = [v11 lineEnds];
    v16 = [v15 objectForKeyedSubscript:v6];

    v17 = v16;
    if (!v16)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138BB64();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10138BB8C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10138BC20();
      }

      v18 = off_1019EDA68;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v19 = [NSString stringWithUTF8String:"[CRLBrushStroke strokeLineEnd:]"];
      v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
      [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:314 isFatal:0 description:"invalid nil value for '%{public}s'", "strokedLineEnd"];

      v17 = v4;
    }

    v5 = v17;
  }

  return v5;
}

- (void)paintLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 inContext:(CGContext *)a7 useFastDrawing:(BOOL)a8
{
  v8 = a8;
  y = a4.y;
  x = a4.x;
  v15 = a3;
  v16 = v15;
  if (v8)
  {
    v17 = [v15 identifier];
    v18 = [v17 rangeOfString:@":"];
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = [v17 substringFromIndex:&v18[v19]];

      v21 = [CRLLineEnd lineEndWithIdentifier:v20];

      v17 = v20;
      v16 = v21;
    }

    v24.receiver = self;
    v24.super_class = CRLBrushStroke;
    [(CRLStroke *)&v24 paintLineEnd:v16 atPoint:a7 atAngle:1 withScale:x inContext:y useFastDrawing:a5, a6];
  }

  else
  {
    v22 = [(CRLBrushStroke *)self strokeLineEnd:v15];

    v23.receiver = self;
    v23.super_class = CRLBrushStroke;
    v16 = v22;
    [(CRLStroke *)&v23 paintLineEnd:v22 atPoint:a7 atAngle:0 withScale:x inContext:y useFastDrawing:a5, a6];
  }
}

- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6 parameterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v12 = a4;
  v15 = objc_alloc_init(CRLBrushStrokeLayoutOptions);
  [(CRLBrushStroke *)self paintPath:a3 wantsInteriorStroke:v12 inContext:a5 useFastDrawing:v10 parameterized:v9 shouldReverseDrawOrder:v8 withLayoutOptions:v15];
}

- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6 parameterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8 withLayoutOptions:(id)a9
{
  v9 = a8;
  v10 = a7;
  v11 = a6;
  v13 = a4;
  v16 = a9;
  if (v11)
  {
    v19.receiver = self;
    v19.super_class = CRLBrushStroke;
    [(CRLStroke *)&v19 paintPath:a3 wantsInteriorStroke:v13 inContext:a5 useFastDrawing:1 parameterized:v10 shouldReverseDrawOrder:v9];
  }

  else if ([(CRLStroke *)self shouldRender])
  {
    if ([(CRLBrushStroke *)self p_shouldDrawAsVectorInContext:a5])
    {
      v17 = [CRLBezierPath bezierPathWithCGPath:a3];
      v18 = [(CRLBrushStroke *)self p_brushPath:v17 inContext:a5 orDirectly:0 parameterized:v10 drawRasterized:0 shouldReverseDrawOrder:0 withLayoutOptions:v16];
    }

    else
    {
      [(CRLBrushStroke *)self p_rasterBrushPath:a3 inContext:a5 orDirectly:0 parameterized:v10 shouldReverseDrawOrder:v9 withLayoutOptions:v16];
    }
  }
}

- (id)strokedCopyOfPath:(id)a3
{
  v4 = a3;
  if (![(CRLStroke *)self shouldRender])
  {
    goto LABEL_6;
  }

  if (!v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138BC48();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138BC5C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138BCF0();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v5 = [NSString stringWithUTF8String:"[CRLBrushStroke strokedCopyOfPath:]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:368 isFatal:0 description:"invalid nil value for '%{public}s'", "inputPath"];
    goto LABEL_16;
  }

  if (![v4 containsElementsOtherThanMoveAndClose])
  {
LABEL_6:
    v7 = 0;
    goto LABEL_18;
  }

  v5 = objc_alloc_init(CRLBrushStrokeLayoutOptions);
  v6 = [(CRLBrushStroke *)self p_brushPath:v4 inContext:0 orDirectly:0 parameterized:0 drawRasterized:0 shouldReverseDrawOrder:0 withLayoutOptions:v5];
  if (!v6)
  {
LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  v7 = [CRLBezierPathBooleanOperationHelper pathByNormalizingPath:v6];
LABEL_17:

LABEL_18:

  return v7;
}

- (id)p_brushPath:(id)a3 inContext:(CGContext *)a4 orDirectly:(id)a5 parameterized:(BOOL)a6 drawRasterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8 withLayoutOptions:(id)a9
{
  v9 = a7;
  v10 = a6;
  v12 = a3;
  v90 = a5;
  v95 = a9;
  v84 = v10;
  if (v10 && !v9)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138BD18();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10138BD2C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138BDBC();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = +[CRLAssertionHandler packedBacktraceString];
      sub_101330248(v15);
    }

    v16 = [NSString stringWithUTF8String:"[CRLBrushStroke p_brushPath:inContext:orDirectly:parameterized:drawRasterized:shouldReverseDrawOrder:withLayoutOptions:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:395 isFatal:0 description:"Parameterized strokes must draw rasterized."];
  }

  if (v95)
  {
    v18 = !v9;
  }

  else
  {
    v18 = 1;
  }

  if (!v18 && ([v95 strokeEnd], v19 <= 0.0) || (objc_msgSend(v12, "length"), v20 == 0.0))
  {
    v91 = 0;
    goto LABEL_111;
  }

  if (v84)
  {
    v21 = [v12 bezierPathByFlatteningPathWithFlatness:0.1];

    if ([v21 isEffectivelyClosed] && (objc_msgSend(v21, "isClockwise") & 1) == 0)
    {
      v22 = [v21 bezierPathByReversingPath];

      v12 = v22;
    }

    else
    {
      v12 = v21;
    }
  }

  if (v90)
  {
    [v90 transform];
    v23 = sub_100139A00(&v104.a);
    [v90 contentsScale];
LABEL_26:
    v25 = v23 / v24;
    goto LABEL_27;
  }

  if (a4)
  {
    if (![(CRLBrushStroke *)self p_isDrawingRasterizedIntoPDFWithContext:?])
    {
      CGContextGetCTM(&v104, a4);
      v23 = sub_100139A00(&v104.a);
      v24 = sub_100510A7C(a4);
      goto LABEL_26;
    }

    v25 = 3.0;
  }

  else
  {
    v25 = 1.0;
  }

LABEL_27:
  v88 = v25;
  if (v9)
  {
    operator new();
  }

  v26 = +[CRLBezierPath bezierPath];
  [v26 setWindingRule:0];
  v27 = [v12 copy];
  v91 = v26;

  [(CRLStroke *)self width];
  [v27 setLineWidth:?];
  [(CRLStroke *)self miterLimit];
  [v27 setMiterLimit:?];
  v12 = v27;
  v98 = 0;
  [v27 length];
  v29 = v28;
  v94 = [(CRLBrushStroke *)self p_shouldSplitAtSharpAngles];
  x = CGPointZero.x;
  y = CGPointZero.y;
  v97 = CGPointZero;
  v32 = [v27 elementCount];
  v96[0] = 0;
  v96[1] = 1;
  v96[2] = 0;
  if (v32 >= 1)
  {
    v92 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0.0;
    v36 = 0.0;
    while (1)
    {
      v37 = v36;
      v38 = [v12 elementAtIndex:v34 associatedPoints:&v104.c];
      [v12 lengthOfElement:v34];
      v40 = v39 / v29;
      v36 = v36 + v40;
      if (v38 == 3)
      {
        *&v104.c = v97;
      }

      else
      {
        if (v38 == 2)
        {
          if (v94)
          {
            v85 = x;
            v86 = v35;
            v41 = y;
            v87 = v37 + v40;
            a = v104.a;
            v43 = sub_10011F31C(v104.c, v104.d, v104.a);
            v45 = v44;
            v46 = sub_100120074(v43, v44);
            if (v46 >= 1.0)
            {
              v49 = sub_10011F340(v43, v45, 1.0 / v46);
            }

            else
            {
              v47 = sub_10011F31C(v104.tx, v104.ty, a);
              v49 = sub_10011F2FC(v47, v48);
            }

            if (v34 < 2)
            {
              v37 = v86;
              v36 = v87;
            }

            else if (sub_10011F328(v85, v41, v49, v50) >= 0.99 || (~v33 + v34) < 1)
            {
              v37 = v86;
              v36 = v87;
            }

            else
            {
              v36 = v87;
              if (v37 - v86 <= 0.0)
              {
                v37 = v86;
              }

              else
              {
                [(CRLBrushStroke *)self p_brushPath:v12 withScaling:v33 inElementRange:v34 - v33 intoPath:v26 orIntoVector:0 sectionIndex:&v98 viewScale:v86 withLayoutOptions:v37 - v86 currentSubpathIndex:v88 cachedCurrentElementPercentage:v95, v92, v96];
                v33 = v34 - 1;
              }
            }

            v65 = sub_10011F31C(*&v105, *(&v105 + 1), v104.tx);
            x = sub_10011F2FC(v65, v66);
            y = v67;
            v35 = v37;
          }

          *&v104.a = v105;
          goto LABEL_75;
        }

        if (!v38)
        {
          if ((v34 - v33) >= 1)
          {
            if ([(CRLBrushStroke *)self p_isFreehandDrawingStrokeWithFixedTileWidth])
            {
              v98 = 0;
            }

            else
            {
              v57 = [v95 patternOffsetsBySubpath];
              v58 = v57 == 0;

              if (!v58)
              {
                v59 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                if (qword_101AD5A10 != -1)
                {
                  sub_10138BDE4();
                }

                v60 = off_1019EDA68;
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109890;
                  *&buf[4] = v59;
                  *&buf[8] = 2082;
                  *&buf[10] = "[CRLBrushStroke p_brushPath:inContext:orDirectly:parameterized:drawRasterized:shouldReverseDrawOrder:withLayoutOptions:]";
                  v100 = 2082;
                  v101 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm";
                  v102 = 1024;
                  v103 = 478;
                  _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d If there is a patternOffsetsBySubpath array, this should be a freehand drawing stroke.", buf, 0x22u);
                }

                if (qword_101AD5A10 != -1)
                {
                  sub_10138BE0C();
                }

                v61 = off_1019EDA68;
                if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                {
                  v68 = +[CRLAssertionHandler packedBacktraceString];
                  *buf = 67109378;
                  *&buf[4] = v59;
                  *&buf[8] = 2114;
                  *&buf[10] = v68;
                  _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
                }

                v62 = [NSString stringWithUTF8String:"[CRLBrushStroke p_brushPath:inContext:orDirectly:parameterized:drawRasterized:shouldReverseDrawOrder:withLayoutOptions:]"];
                v63 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
                [CRLAssertionHandler handleFailureInFunction:v62 file:v63 lineNumber:478 isFatal:0 description:"If there is a patternOffsetsBySubpath array, this should be a freehand drawing stroke."];
              }
            }

            [(CRLBrushStroke *)self p_brushPath:v12 withScaling:v33 inElementRange:v34 - v33 intoPath:v26 orIntoVector:0 sectionIndex:&v98 viewScale:v35 withLayoutOptions:v36 - v35 currentSubpathIndex:v88 cachedCurrentElementPercentage:v95, v92++, v96];
            v35 = v36;
            v33 = v34;
          }

          *&v104.a = *&v104.c;
          v97 = *&v104.c;
          goto LABEL_75;
        }
      }

      if (!v94)
      {
        break;
      }

      v51 = sub_10011F31C(v104.c, v104.d, v104.a);
      v54 = sub_10011F2FC(v51, v52);
      v55 = v53;
      if (v34 < 2)
      {
        goto LABEL_50;
      }

      v56 = sub_10011F328(x, y, v54, v53) >= 0.99 || (~v33 + v34) < 1;
      if (v56 || v37 - v35 <= 0.0)
      {
        goto LABEL_50;
      }

      [(CRLBrushStroke *)self p_brushPath:v12 withScaling:v33 inElementRange:v34 - v33 intoPath:v26 orIntoVector:0 sectionIndex:&v98 viewScale:v35 withLayoutOptions:v37 - v35 currentSubpathIndex:v88 cachedCurrentElementPercentage:v95, v92, v96];
      v33 = v34 - 1;
LABEL_51:
      *&v104.a = *&v104.c;
      x = v54;
      y = v55;
      v35 = v37;
LABEL_75:
      if (v32 == ++v34)
      {
        goto LABEL_84;
      }
    }

    v54 = x;
    v55 = y;
LABEL_50:
    v37 = v35;
    goto LABEL_51;
  }

  v32 = 0;
  v33 = 0;
  v92 = 0;
  v36 = 0.0;
  v35 = 0.0;
LABEL_84:
  v69 = v32 + ~v33;
  if (v69 >= 1)
  {
    if ([(CRLBrushStroke *)self p_isFreehandDrawingStrokeWithFixedTileWidth])
    {
      v98 = 0;
    }

    else
    {
      v70 = [v95 patternOffsetsBySubpath];
      v71 = v70 == 0;

      if (!v71)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10138BE34();
        }

        v72 = off_1019EDA68;
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          sub_10138BE5C();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10138BEEC();
        }

        v73 = off_1019EDA68;
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          v74 = +[CRLAssertionHandler packedBacktraceString];
          sub_101330248(v74);
        }

        v75 = [NSString stringWithUTF8String:"[CRLBrushStroke p_brushPath:inContext:orDirectly:parameterized:drawRasterized:shouldReverseDrawOrder:withLayoutOptions:]"];
        v76 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
        [CRLAssertionHandler handleFailureInFunction:v75 file:v76 lineNumber:552 isFatal:0 description:"If there is a patternOffsetsBySubpath array, this should be a freehand drawing stroke."];
      }
    }

    [(CRLBrushStroke *)self p_brushPath:v12 withScaling:v33 inElementRange:v69 intoPath:v26 orIntoVector:0 sectionIndex:&v98 viewScale:v35 withLayoutOptions:v36 - v35 currentSubpathIndex:v88 cachedCurrentElementPercentage:v95, v92, v96];
  }

  if (a4)
  {
    v77 = v26;
    if (!v26)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138BF14();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10138BF3C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10138BFD0();
      }

      v78 = off_1019EDA68;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v79 = [NSString stringWithUTF8String:"[CRLBrushStroke p_brushPath:inContext:orDirectly:parameterized:drawRasterized:shouldReverseDrawOrder:withLayoutOptions:]"];
      v80 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
      [CRLAssertionHandler handleFailureInFunction:v79 file:v80 lineNumber:577 isFatal:0 description:"invalid nil value for '%{public}s'", "resultPath"];

      v77 = 0;
    }

    v81 = v77;
    CGContextAddPath(a4, [v91 CGPath]);
    v82 = [(CRLStroke *)self color];
    CGContextSetFillColorWithColor(a4, [v82 CGColor]);

    CGContextFillPath(a4);
  }

LABEL_111:

  return v91;
}

- (void)p_brushPath:(id)a3 withScaling:(id)a4 inElementRange:(_NSRange)a5 intoPath:(id)a6 orIntoVector:(void *)a7 sectionIndex:(unint64_t *)a8 viewScale:(double)a9 withLayoutOptions:(id)a10 currentSubpathIndex:(unint64_t)a11 cachedCurrentElementPercentage:(id *)a12
{
  length = a5.length;
  location = a5.location;
  var1 = a4.var1;
  var0 = a4.var0;
  v20 = a3;
  v109 = a6;
  v21 = a10;
  if ([v20 elementCount] >= 2)
  {
    v22 = [v21 patternOffsetsBySubpath];
    v101 = var0;
    if (v22)
    {
      v23 = [(CRLBrushStroke *)self p_isFreehandDrawingStrokeWithFixedTileWidth];

      if ((v23 & 1) == 0)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10138C1BC();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10138C1D0();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10138C260();
        }

        v24 = off_1019EDA68;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v25 = [NSString stringWithUTF8String:"[CRLBrushStroke p_brushPath:withScaling:inElementRange:intoPath:orIntoVector:sectionIndex:viewScale:withLayoutOptions:currentSubpathIndex:cachedCurrentElementPercentage:]"];
        v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
        [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:592 isFatal:0 description:"We only know how to adjust the pattern of constant width layout brush strokes."];
      }
    }

    [(CRLStroke *)self width];
    v28 = v27;
    v29 = [(CRLSmartStroke *)self strokeName];
    v102 = v28;
    v104 = [CRLBrushStrokeLoader storageForBrushStrokeNamed:v29];

    v30 = v104;
    if (!v104)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138C288();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10138C2B0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10138C344();
      }

      v31 = off_1019EDA68;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v32 = [NSString stringWithUTF8String:"[CRLBrushStroke p_brushPath:withScaling:inElementRange:intoPath:orIntoVector:sectionIndex:viewScale:withLayoutOptions:currentSubpathIndex:cachedCurrentElementPercentage:]"];
      v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
      [CRLAssertionHandler handleFailureInFunction:v32 file:v33 lineNumber:597 isFatal:0 description:"invalid nil value for '%{public}s'", "storage"];

      v30 = 0;
    }

    v107 = [v30 paths];
    v105 = [v30 bounds];
    v106 = [v107 objectForKey:@"middle"];
    v34 = [v107 objectForKey:@"start"];
    if (v34)
    {
      v35 = [v107 objectForKey:@"end"];
      v36 = v35 != 0;
    }

    else
    {
      v36 = 0;
    }

    v37 = 5.0;
    v38 = v28;
    if (v28 >= 5.0)
    {
      v42 = @"middle";
    }

    else
    {
      v39 = [v107 objectForKey:{@"small", 5.0, v28}];
      v40 = v39;
      if (v39)
      {
        v41 = v39;

        v36 = 0;
        v42 = @"small";
        v106 = v41;
      }

      else
      {
        v42 = @"middle";
      }
    }

    [v20 length];
    v44 = v43;
    v45 = v101 + var1;
    if (v36)
    {
      v46 = [v105 objectForKeyedSubscript:@"start"];
      v47 = [v46 lastObject];
      [v47 CGRectValue];
      v49 = v48;
      v51 = v50;

      v52 = [v105 objectForKeyedSubscript:@"end"];
      v53 = [v52 lastObject];
      [v53 CGRectValue];
      v55 = v54;
      v57 = v56;

      v58 = v49 / v51;
      v59 = var1 * v44 * 0.5;
      v60 = v101 + fmin(v102 * v58, v59) / v44;
      [(CRLBrushStroke *)self p_brushSection:@"start" sectionIndex:0 ontoPath:v20 inElementRange:location intoPath:length orIntoVector:v109 viewScale:a9 strokeTileLayout:a7 cachedCurrentElementPercentage:a12];
      v61 = v45 - fmin(v102 * (v55 / v57), v59) / v44;
      [(CRLBrushStroke *)self p_brushSection:@"end" sectionIndex:0 ontoPath:v20 inElementRange:location intoPath:length orIntoVector:v109 viewScale:a9 strokeTileLayout:v61 cachedCurrentElementPercentage:v45, 0.0, 1.0, a7, a12];
      v45 = v61;
    }

    else
    {
      v60 = v101;
    }

    v62 = [v106 count];
    if (!v62 || v45 <= v60)
    {
      goto LABEL_79;
    }

    v63 = [v105 objectForKeyedSubscript:v42];
    v64 = [v63 lastObject];
    [v64 CGRectValue];
    v66 = v65;
    v68 = v67;

    v69 = v66 / v68;
    v70 = v45 - v60;
    v71 = v44 * (v45 - v60);
    v72 = v102 * v69;
    v73 = (v71 / (v102 * v69) + 1.0);
    if (v62 == 1)
    {
      v73 = 1;
    }

    v103 = v73;
    v74 = [v21 patternOffsetsBySubpath];
    v75 = v74 == 0;

    if (v75)
    {
      v81 = 0.0;
LABEL_56:
      if ([(CRLBrushStroke *)self p_isFreehandDrawingStrokeWithFixedTileWidth])
      {
        v86 = v70 * (v72 / v71);
        if (v81 > 0.0 && v81 > v86)
        {
          v87 = *a8;
          do
          {
            v81 = v81 - v86;
            v88 = (1664525 * v87 + 1013904223);
            if (v88 % v62 == v87 % v62)
            {
              v87 = v88 + 1;
            }

            else
            {
              v87 = (1664525 * v87 + 1013904223);
            }
          }

          while (v81 > 0.0 && v81 > v86);
          *a8 = v87;
        }
      }

      else
      {
        v86 = v70 / v103;
      }

      if (vabdd_f64(v60, v45) > 0.00000999999975)
      {
        do
        {
          v89 = [(CRLBrushStroke *)self p_isFreehandDrawingStrokeWithFixedTileWidth];
          v90 = fmin(v45, v86 + v60);
          v91 = 1.0;
          v92 = 0.0;
          if (v89)
          {
            if (v81 > 0.0)
            {
              v93 = v81 / v86;
              v81 = 0.0;
              v92 = v93 + 0.0;
            }

            v94 = v90 - v60;
            v95 = v86 * (1.0 - v92);
            if (v90 - v60 <= v95)
            {
              if (v90 - v60 < v95)
              {
                v91 = 1.0 - (v95 - v94) / v86;
              }
            }

            else
            {
              v90 = v90 - (v94 - v95);
            }
          }

          [(CRLBrushStroke *)self p_brushSection:v42 sectionIndex:*a8 % v62 ontoPath:v20 inElementRange:location intoPath:length orIntoVector:v109 viewScale:a9 strokeTileLayout:v60 cachedCurrentElementPercentage:v90, v92, v91, a7, a12];
          v96 = 1664525 * *a8 + 1013904223;
          if (v96 % v62 == *a8 % v62)
          {
            v97 = v96 + 1;
          }

          else
          {
            v97 = 1664525 * *a8 + 1013904223;
          }

          *a8 = v97;
          v60 = v90;
        }

        while (vabdd_f64(v90, v45) > 0.00000999999975);
      }

LABEL_79:

      goto LABEL_80;
    }

    v76 = [v21 patternOffsetsBySubpath];
    v77 = [v76 count] > a11;

    if (v77)
    {
      v78 = [v21 patternOffsetsBySubpath];
      v79 = [v78 objectAtIndexedSubscript:a11];
      [v79 crl_CGFloatValue];
    }

    else
    {
      v82 = [v21 patternOffsetsBySubpath];
      v83 = [v82 count] == 1;

      if (!v83)
      {
        v100 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10138C36C();
        }

        v84 = off_1019EDA68;
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          v99 = [v21 patternOffsetsBySubpath];
          *buf = 67110402;
          v111 = v100;
          v112 = 2082;
          v113 = "[CRLBrushStroke p_brushPath:withScaling:inElementRange:intoPath:orIntoVector:sectionIndex:viewScale:withLayoutOptions:currentSubpathIndex:cachedCurrentElementPercentage:]";
          v114 = 2082;
          v115 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm";
          v116 = 1024;
          v117 = 702;
          v118 = 2048;
          v119 = [v99 count];
          v120 = 2048;
          v121 = a11;
          _os_log_error_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Not enough pattern offsets for each subpath. Got %zi for index %zi", buf, 0x36u);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10138C394();
        }

        v85 = off_1019EDA68;
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v78 = [NSString stringWithUTF8String:"[CRLBrushStroke p_brushPath:withScaling:inElementRange:intoPath:orIntoVector:sectionIndex:viewScale:withLayoutOptions:currentSubpathIndex:cachedCurrentElementPercentage:]"];
        v79 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
        v98 = [v21 patternOffsetsBySubpath];
        +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v78, v79, 702, 0, "Not enough pattern offsets for each subpath. Got %zi for index %zi", [v98 count], a11);

        v81 = 0.0;
        goto LABEL_55;
      }

      v78 = [v21 patternOffsetsBySubpath];
      v79 = [v78 objectAtIndexedSubscript:0];
      [v79 crl_CGFloatValue];
    }

    v81 = v80 / v44;
LABEL_55:

    goto LABEL_56;
  }

LABEL_80:
}

- (void)p_brushSection:(id)a3 sectionIndex:(unint64_t)a4 ontoPath:(id)a5 inElementRange:(_NSRange)a6 intoPath:(id)a7 orIntoVector:(void *)a8 viewScale:(double)a9 strokeTileLayout:(id)a10 cachedCurrentElementPercentage:(id *)a11
{
  length = a6.length;
  location = a6.location;
  var3 = a10.var3;
  var2 = a10.var2;
  var1 = a10.var1;
  var0 = a10.var0;
  v39 = a3;
  v40 = a5;
  v22 = a7;
  v38 = v22;
  if (a8)
  {
    if (v22)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138C3BC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10138C3D0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10138C464();
      }

      v23 = off_1019EDA68;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v24 = [NSString stringWithUTF8String:"[CRLBrushStroke p_brushSection:sectionIndex:ontoPath:inElementRange:intoPath:orIntoVector:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]"];
      v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
      [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:759 isFatal:0 description:"expected nil value for '%{public}s'", "resultPath"];
    }

    [(CRLBrushStroke *)self p_rasterRenderSection:v39 sectionIndex:a4 ontoPath:v40 inElementRange:location into:length viewScale:a8 strokeTileLayout:a9 cachedCurrentElementPercentage:var0, var1, var2, var3, a11];
  }

  else
  {
    if (v22)
    {
      v26 = [(CRLSmartStroke *)self strokeName];
      v27 = [CRLBrushStrokeLoader storageForBrushStrokeNamed:v26];

      if (!v27)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10138C48C();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10138C4A0();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10138C534();
        }

        v28 = off_1019EDA68;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v29 = [NSString stringWithUTF8String:"[CRLBrushStroke p_brushSection:sectionIndex:ontoPath:inElementRange:intoPath:orIntoVector:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]"];
        v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
        [CRLAssertionHandler handleFailureInFunction:v29 file:v30 lineNumber:763 isFatal:0 description:"invalid nil value for '%{public}s'", "storage"];
      }

      v31 = [v27 paths];
      v32 = [v31 objectForKeyedSubscript:v39];
      v33 = [v32 objectAtIndexedSubscript:a4];

      [(CRLStroke *)self width];
      if (v34 >= 15.0)
      {
        v36 = v38;
        v35 = [v33 originalPath];
      }

      else
      {
        v35 = [v33 pathWithPossibleSmoothing];
        v36 = v38;
      }

      [v35 recursiveSubdivideOntoPath:v40 withScaling:location inElementRange:length into:{v36, var0, var1 - var0}];
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138C55C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10138C570();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10138C600();
      }

      v37 = off_1019EDA68;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v27 = [NSString stringWithUTF8String:"[CRLBrushStroke p_brushSection:sectionIndex:ontoPath:inElementRange:intoPath:orIntoVector:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]"];
      v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
      [CRLAssertionHandler handleFailureInFunction:v27 file:v31 lineNumber:769 isFatal:0 description:"resultPath and resultVector are both nil!"];
    }
  }
}

- (void)p_rasterBrushPath:(CGPath *)a3 inContext:(CGContext *)a4 orDirectly:(id)a5 parameterized:(BOOL)a6 shouldReverseDrawOrder:(BOOL)a7 withLayoutOptions:(id)a8
{
  v9 = a7;
  v10 = a6;
  v14 = a5;
  v15 = a8;
  if (v14)
  {
    [v14 transform];
  }

  else
  {
    CGContextGetCTM(&v21, a4);
  }

  v16 = sqrt(v21.b * v21.b + v21.a * v21.a);
  if (a4 && [(CRLBrushStroke *)self p_isDrawingRasterizedIntoPDFWithContext:a4])
  {
    v16 = 3.0;
  }

  if (v14 || v10 || ([(CRLStroke *)self width], v17 > 0.5 / v16))
  {
    v18 = [CRLBezierPath bezierPathWithCGPath:a3];
    v19 = [(CRLBrushStroke *)self p_brushPath:v18 inContext:a4 orDirectly:v14 parameterized:v10 drawRasterized:1 shouldReverseDrawOrder:v9 withLayoutOptions:v15];
  }

  else if (a4)
  {
    v20.receiver = self;
    v20.super_class = CRLBrushStroke;
    [(CRLStroke *)&v20 paintPath:a3 wantsInteriorStroke:0 inContext:a4 useFastDrawing:0 parameterized:0 shouldReverseDrawOrder:0];
  }
}

- (void)p_rasterRenderSection:(id)a3 sectionIndex:(unint64_t)a4 ontoPath:(id)a5 inElementRange:(_NSRange)a6 into:(void *)a7 viewScale:(double)a8 strokeTileLayout:(id)a9 cachedCurrentElementPercentage:(id *)a10
{
  length = a6.length;
  location = a6.location;
  var3 = a9.var3;
  var2 = a9.var2;
  var1 = a9.var1;
  var0 = a9.var0;
  v260 = a3;
  v16 = a5;
  v17 = location + length;
  while (location < [v16 elementCount])
  {
    [v16 lengthOfElement:location];
    if (v18 != 0.0)
    {
      break;
    }

    ++location;
  }

  while (v17 > location)
  {
    [v16 lengthOfElement:v17];
    if (v19 != 0.0)
    {
      break;
    }

    --v17;
  }

  if (v17 < location)
  {
    goto LABEL_166;
  }

  v298 = 0.0;
  v299 = 0.0;
  v286 = [(CRLBrushStroke *)self p_fastElementPercentage:&v299 forOverallPercentage:v16 onPath:a10 withCachedCurrentElementPercentage:var0];
  v20 = [(CRLBrushStroke *)self p_fastElementPercentage:&v298 forOverallPercentage:v16 onPath:a10 withCachedCurrentElementPercentage:var1];
  if (v286 < location)
  {
    v299 = 0.0;
    v286 = location;
  }

  if (v20 > v17)
  {
    v298 = 1.0;
    v20 = v17;
  }

  v276 = a4;
  if (v20 > v286)
  {
    if (v299 == 1.0 || fabs(v299 + -1.0) < 0.000000999999997)
    {
      v299 = 0.0;
      ++v286;
    }

    v21 = v298;
    if (v298 == 0.0)
    {
      v298 = 1.0;
      --v20;
    }
  }

  v282 = v20;
  v22 = +[CRLBezierPath bezierPath];
  [v22 appendBezierPath:v16 fromSegment:v286 t:v282 toSegment:0 t:v299 withoutMove:v298];
  CGAffineTransformMakeScale(&v302, a8, a8);
  [v22 transformUsingAffineTransform:&v302];
  v281 = [v22 bezierPathByFlatteningPathWithFlatness:0.1];

  v263 = 1.0 / a8;
  CGAffineTransformMakeScale(&v302, 1.0 / a8, 1.0 / a8);
  [v281 transformUsingAffineTransform:&v302];
  [(CRLStroke *)self width];
  v23 = 0.5 / a8;
  if (v24 > 0.5 / a8)
  {
    [(CRLStroke *)self width];
    v23 = v25;
  }

  v274 = v23;
  __p = 0;
  v296 = 0;
  v297 = 0;
  v294 = CGPointZero;
  v26 = [v281 elementCount];
  v27 = v26;
  if (v26)
  {
    v28 = 0;
    v289 = v26 - 1;
    while (1)
    {
      *&v302.a = xmmword_1014629F0;
      *&v302.c = xmmword_1014629F0;
      *&v302.tx = xmmword_1014629F0;
      v29 = [v281 elementAtIndex:v28 associatedPoints:&v302];
      v30 = v29;
      v300 = *&v302.a;
      if (!v29)
      {
        break;
      }

      if (v29 != 1)
      {
        if (v29 == 3)
        {
          goto LABEL_36;
        }

        v31 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10138C628();
        }

        v32 = off_1019EDA68;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109890;
          *&buf[4] = v31;
          *&buf[8] = 2082;
          *&buf[10] = "[CRLBrushStroke p_rasterRenderSection:sectionIndex:ontoPath:inElementRange:into:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]";
          *&buf[18] = 2082;
          *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm";
          *&buf[28] = 1024;
          *&buf[30] = 867;
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Path should be flat by now.", buf, 0x22u);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10138C650();
        }

        v33 = off_1019EDA68;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v71 = +[CRLAssertionHandler packedBacktraceString];
          *buf = 67109378;
          *&buf[4] = v31;
          *&buf[8] = 2114;
          *&buf[10] = v71;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
        }

        v34 = [NSString stringWithUTF8String:"[CRLBrushStroke p_rasterRenderSection:sectionIndex:ontoPath:inElementRange:into:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]"];
        v35 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
        [CRLAssertionHandler handleFailureInFunction:v34 file:v35 lineNumber:867 isFatal:0 description:"Path should be flat by now."];

        if (!v30)
        {
          break;
        }

        if (v30 == 3)
        {
LABEL_36:
          v300 = v294;
        }
      }

      y = v300.y;
      x = v300.x;
      v38 = v296;
      v39 = sub_10011F068(v300.x, v300.y, *(v296 - 2), *(v296 - 1)) * a8 * a8;
      if (v39 > 0.000000999999997 && v39 <= 1.0)
      {
        if (v28 == v289 || (*buf = xmmword_1014629F0, *&buf[16] = xmmword_1014629F0, *&buf[32] = xmmword_1014629F0, [v281 elementAtIndex:v28 + 1 associatedPoints:buf]) && (v38 = v296, v41 = *&buf[8], v284 = *buf, y = v300.y, x = v300.x, v42 = sub_10011F31C(v300.x, v300.y, *(v296 - 2)), v44 = sub_10011F2FC(v42, v43), v45 = a8, v46 = var3, v48 = v47, v49 = sub_10011F31C(v284, v41, x), v51 = sub_10011F2FC(v49, v50), v53 = v52, v54 = v48, var3 = v46, a8 = v45, sub_10011F328(v44, v54, v51, v53) < 0.99))
        {
LABEL_47:
          if ((v30 | 2) != 3)
          {
            v55 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10138C678();
            }

            v56 = off_1019EDA68;
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109890;
              *&buf[4] = v55;
              *&buf[8] = 2082;
              *&buf[10] = "[CRLBrushStroke p_rasterRenderSection:sectionIndex:ontoPath:inElementRange:into:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]";
              *&buf[18] = 2082;
              *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm";
              *&buf[28] = 1024;
              *&buf[30] = 910;
              _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should only have line and close elements by now.", buf, 0x22u);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_10138C6A0();
            }

            v57 = off_1019EDA68;
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              v72 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              *&buf[4] = v55;
              *&buf[8] = 2114;
              *&buf[10] = v72;
              _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v58 = [NSString stringWithUTF8String:"[CRLBrushStroke p_rasterRenderSection:sectionIndex:ontoPath:inElementRange:into:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]"];
            v59 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
            [CRLAssertionHandler handleFailureInFunction:v58 file:v59 lineNumber:910 isFatal:0 description:"Should only have line and close elements by now."];

            v38 = v296;
            y = v300.y;
            x = v300.x;
          }

          v60 = sqrt(v39) / 50.0;
          if (v60 <= 1.0)
          {
            v60 = 1.0;
          }

          v61 = v60;
          if (v60 >= 1)
          {
            v62 = *(v38 - 2);
            v63 = *(v38 - 1);
            v64 = sub_10011F31C(x, y, v62);
            v66 = v65;
            v67 = v61;
            v68 = 1;
            do
            {
              v69 = sub_10011F340(v64, v66, v68 / v67);
              *buf = sub_10011F334(v62, v63, v69);
              *&buf[8] = v70;
              sub_1000DACAC(&__p, buf);
              ++v68;
              --v61;
            }

            while (v61);
          }
        }
      }

      else if (v39 > 1.0)
      {
        goto LABEL_47;
      }

LABEL_62:
      if (++v28 == v27)
      {
        goto LABEL_63;
      }
    }

    sub_1000DACAC(&__p, &v300);
    v294 = v300;
    goto LABEL_62;
  }

LABEL_63:
  v73 = __p;
  v74 = (v296 - __p) >> 4;
  if (v74 >= 2)
  {
    v268 = v296 - __p;
    v75 = [(CRLSmartStroke *)self strokeName];
    v259 = [CRLBrushStrokeLoader storageForBrushStrokeNamed:v75];

    v76 = v259;
    if (!v259)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138C6C8();
      }

      v77 = off_1019EDA68;
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        sub_10138C6F0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10138C784();
      }

      v78 = off_1019EDA68;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        v79 = +[CRLAssertionHandler packedBacktraceString];
        sub_101330248(v79);
      }

      v80 = [NSString stringWithUTF8String:"[CRLBrushStroke p_rasterRenderSection:sectionIndex:ontoPath:inElementRange:into:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]"];
      v81 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
      [CRLAssertionHandler handleFailureInFunction:v80 file:v81 lineNumber:928 isFatal:0 description:"invalid nil value for '%{public}s'", "storage"];

      v76 = 0;
    }

    v82 = [v76 textureIndices];
    v83 = [v82 objectForKeyedSubscript:v260];
    v84 = [v83 objectAtIndexedSubscript:a4];
    v292 = [v84 unsignedIntegerValue];

    v290 = [v259 totalSectionCount];
    LODWORD(v84) = log2(64.0) - 1;
    v85 = log2((v274 + v274) * a8);
    v86 = 1.0;
    v87 = (v84 - sub_1004C3240(ceil(v85), 1.0, v84));
    v279 = exp2f(-v87);
    v258 = v87;
    v262 = exp2f(-(v87 + 1.0));
    v88 = v74 - 1;
    v89 = *__p;
    v90 = *(__p + 1);
    v91 = (__p + 24);
    v92 = 0.0;
    v93 = v74 - 1;
    do
    {
      v94 = *(v91 - 1);
      v95 = *v91;
      v92 = sub_100120090(v94, *v91, v89, v90) + v92;
      v91 += 2;
      v90 = v95;
      v89 = v94;
      --v93;
    }

    while (v93);
    v96 = [v259 paths];
    v97 = [v96 objectForKeyedSubscript:v260];
    v98 = [v97 objectAtIndexedSubscript:v276];
    v99 = [v98 originalPath];

    if (!v99)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138C7AC();
      }

      v100 = off_1019EDA68;
      if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
      {
        sub_10138C7D4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10138C868();
      }

      v101 = off_1019EDA68;
      if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
      {
        v102 = +[CRLAssertionHandler packedBacktraceString];
        sub_101330248(v102);
      }

      v96 = [NSString stringWithUTF8String:"[CRLBrushStroke p_rasterRenderSection:sectionIndex:ontoPath:inElementRange:into:viewScale:strokeTileLayout:cachedCurrentElementPercentage:]"];
      v97 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
      [CRLAssertionHandler handleFailureInFunction:v96 file:v97 lineNumber:985 isFatal:0 description:"invalid nil value for '%{public}s'", "originalPathForSection"];
    }

    [v99 bounds];
    v103 = a8;
    v104 = v92 / (var3 - var2);
    v105 = fmin(v303.origin.x, 0.0);
    v106 = fmax(CGRectGetMaxX(v303), 1.0) + -1.0;
    if (var2 >= 0.001)
    {
      var2 = (var2 - v105) / (1.0 - v105 + v106);
    }

    else
    {
      v107 = __p;
      v108 = *__p;
      v109 = *(__p + 1);
      v110 = sub_10011F31C(*__p, v109, *(__p + 2));
      v112 = sub_10011F2FC(v110, v111);
      v86 = 1.0;
      v114 = sub_10011F340(v112, v113, v104 * -v105);
      *v107 = sub_10011F334(v108, v109, v114);
      *(v107 + 1) = v115;
    }

    if (var3 <= 0.999)
    {
      var3 = (var3 - v105) / (1.0 - v105 + v106);
    }

    else
    {
      v116 = (__p + 16 * v88);
      v117 = *v116;
      v118 = v116[1];
      v119 = sub_10011F31C(*v116, v118, *(__p + v268 - 32));
      v121 = sub_10011F2FC(v119, v120);
      v123 = sub_10011F340(v121, v122, v106 * v104);
      *v116 = sub_10011F334(v117, v118, v123);
      *(v116 + 1) = v124;
    }

    v125 = v103;

    sub_100522C60(buf, v74);
    v126 = *buf;
    **buf = 0;
    v127 = *__p;
    v128 = *(__p + 1);
    v129 = (v126 + 4);
    v130 = (__p + 24);
    v131 = 0.0;
    do
    {
      v132 = *(v130 - 1);
      v133 = *v130;
      v131 = sub_100120090(v132, *v130, v127, v128) + v131;
      *v129++ = v131;
      v130 += 2;
      v128 = v133;
      v127 = v132;
      --v88;
    }

    while (v88);
    v265 = v131;
    v134 = *(a7 + 1);
    v135 = v134 - *a7;
    v136 = v134 != *a7;
    if (v134 == *a7)
    {
LABEL_109:
      v151 = [(CRLBrushStroke *)self p_shouldSplitAtSharpAngles];
      v152 = v299;
      if (v151)
      {
        if (v299 > 0.99 && v286 < v17)
        {
          ++v286;
          v299 = 0.0;
          v152 = 0.0;
        }

        v154 = v298;
        if (v298 < 0.01 && v282 > location)
        {
          --v282;
          v298 = 1.0;
        }
      }

      else
      {
        if (v299 < 0.01 && v286 > location)
        {
          --v286;
          v299 = 1.0;
          v152 = 1.0;
        }

        v154 = v298;
        if (v298 > 0.99 && v282 < v17)
        {
          ++v282;
          v298 = 0.0;
        }
      }

      v158 = *__p;
      v159 = *(__p + 1);
      [v16 gradientAt:v286 fromElement:{v152, v154}];
      v269 = sub_10011F31C(v158, v159, v160);
      v161 = *(v296 - 2);
      v162 = *(v296 - 1);
      [v16 gradientAt:v282 fromElement:v298];
      v164 = sub_10011F334(v161, v162, v163);
      v266 = v165;
      v267 = v164;
      v166 = [(CRLSmartStroke *)self strokeName];
      v167 = [v166 isEqualToString:@"Basic"];
      v261 = var3;
      if (v167)
      {
        v168 = 0;
      }

      else
      {
        v96 = [(CRLSmartStroke *)self strokeName];
        if ([v96 isEqualToString:@"Basic Rounded"])
        {
          v168 = 0;
        }

        else
        {
          v97 = [(CRLSmartStroke *)self strokeName];
          if (([v97 isEqualToString:@"Basic Square"] & 1) == 0)
          {

            v170 = v259;
            goto LABEL_146;
          }

          v168 = 1;
        }
      }

      v169 = [v16 isEffectivelyClosed];
      if (v168)
      {
      }

      if (v167)
      {

        v170 = v259;
        if (!v169)
        {
LABEL_146:
          v181 = 0;
          v182 = 0;
          v183 = 4.0 * v258;
          v184 = (v290 - 1);
          v185 = (v290 - 1);
          v186 = 4.0 * 4.0 + 64.0;
          v187 = v183 + (v86 - v279) * 64.0;
          *&v183 = v183 + (v86 - v262) * 64.0;
          v188 = 1.0 - (v187 / v186);
          *&v183 = 1.0 - (*&v183 / v186);
          v189 = vabds_f32(*&v183, v188);
          v190 = v188;
          v191 = *&v183;
          v192 = v189 / (v274 * v125);
          v193 = v86 / (v290 * v186);
          v194 = v192 + v190;
          *&v192 = v191 - v192;
          v195 = v193 + v190;
          v196 = v191 - v193 + v185;
          v197 = (v195 + v185 - v292) / v290;
          v198 = v274 * 0.5;
          v287 = 1.0 - (((v184 + v194) - v292) / v290);
          v275 = 1.0 - (((v184 + *&v192) - v292) / v290);
          v264 = v263 + v198;
          *&v191 = v86 - v197;
          v280 = LODWORD(v191);
          v199 = v86 - (v196 - v292) / v290;
          v200 = 1.0;
          v278 = v199;
          do
          {
            v201 = v269;
            if (v182)
            {
              v201 = *(__p + v181 - 16);
            }

            v291 = var3;
            v293 = v86;
            v202 = (__p + v181);
            v203 = v182 + 1;
            v205 = v266;
            v204 = v267;
            if (v182 + 1 < v74)
            {
              v204 = v202[2];
              v205 = v202[3];
            }

            v206 = *v202;
            v207 = v202[1];
            v208 = sub_10011F31C(*v202, v207, v201);
            v210 = sub_10011F2FC(v208, v209);
            v212 = v211;
            v213 = sub_10011F31C(v204, v205, v206);
            v215 = sub_10011F2FC(v213, v214);
            v217 = v216;
            v218 = sub_10011F340(v215, v216, -1.0);
            v220 = sub_10011F328(v210, v212, v218, v219);
            v221 = acos(fmin(fmax(v220, -1.0), v200));
            v222 = sin(v221 * 0.5);
            [(CRLStroke *)self miterLimit];
            v283 = v223 * 0.995;
            v285 = v200 / v222;
            if (v200 / v222 <= v223 * 0.995)
            {
              v237 = sub_10011FA08(v210, v212, v215);
              v239 = sub_10012104C(0, v237, v238);
              v241 = sub_10011F2FC(v239, v240);
              v232 = sub_10011F340(v241, v242, v264 / v222);
            }

            else
            {
              v224 = sub_10012104C(0, v210, v212);
              v226 = v225;
              v227 = sub_10012104C(0, v215, v217);
              v229 = v228;
              v230 = sub_10011F2FC(v224, v226);
              v232 = sub_10011F340(v230, v231, v264);
              v233 = sub_10011F2FC(v227, v229);
              v235 = sub_10011F340(v233, v234, v264);
              v291 = v236;
              v293 = v235;
            }

            v243 = *(*buf + 4 * v182) / v265;
            v244 = sub_1004C3260(var0, var1, v243);
            v245 = sub_1004C3260(var2, v261, v243);
            v246 = sub_10011F334(v206, v207, v232);
            v248 = v245;
            v249 = v244;
            v250 = v246;
            if (v136)
            {
              LODWORD(v302.a) = 0;
              v251 = v247;
              *(&v302.a + 1) = v246;
              *&v302.b = __PAIR64__(LODWORD(v248), LODWORD(v251));
              *&v302.c = __PAIR64__(v280, LODWORD(v287));
              *&v302.d = __PAIR64__(LODWORD(v249), LODWORD(v278));
              sub_10051B618(a7, &v302);
            }

            else
            {
              v251 = v247;
            }

            LODWORD(v302.a) = 0;
            *(&v302.a + 1) = v250;
            *&v302.b = __PAIR64__(LODWORD(v248), LODWORD(v251));
            *&v302.c = __PAIR64__(v280, LODWORD(v287));
            *&v302.d = __PAIR64__(LODWORD(v249), LODWORD(v278));
            sub_10051B618(a7, &v302);
            v252 = sub_10011F31C(v206, v207, v232);
            LODWORD(v302.a) = 0;
            *&v253 = v253;
            *(&v302.a + 1) = v252;
            *&v302.b = __PAIR64__(LODWORD(v248), LODWORD(v253));
            *&v302.c = __PAIR64__(v280, LODWORD(v275));
            *&v302.d = __PAIR64__(LODWORD(v249), LODWORD(v278));
            sub_10051B618(a7, &v302);
            var3 = v291;
            v86 = v293;
            if (v285 > v283)
            {
              v254 = sub_10011F334(v206, v207, v293);
              LODWORD(v302.a) = 0;
              *&v255 = v255;
              *(&v302.a + 1) = v254;
              *&v302.b = __PAIR64__(LODWORD(v248), LODWORD(v255));
              *&v302.c = __PAIR64__(v280, LODWORD(v287));
              *&v302.d = __PAIR64__(LODWORD(v249), LODWORD(v278));
              sub_10051B618(a7, &v302);
              v256 = sub_10011F31C(v206, v207, v293);
              LODWORD(v302.a) = 0;
              *&v257 = v257;
              *(&v302.a + 1) = v256;
              *&v302.b = __PAIR64__(LODWORD(v248), LODWORD(v257));
              *&v302.c = __PAIR64__(v280, LODWORD(v275));
              *&v302.d = __PAIR64__(LODWORD(v249), LODWORD(v278));
              sub_10051B618(a7, &v302);
            }

            v136 = 0;
            v181 += 16;
            ++v182;
            v200 = 1.0;
          }

          while (v74 != v203);
          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }

          v73 = __p;
          goto LABEL_163;
        }
      }

      else
      {

        v170 = v259;
        if ((v169 & 1) == 0)
        {
          goto LABEL_146;
        }
      }

      v171 = *(v296 - 1);
      v277 = *(v296 - 2);
      [v16 gradientAt:v282 fromElement:v298];
      v173 = v172;
      var3 = v174;
      v175 = *__p;
      v176 = *(__p + 1);
      [v16 gradientAt:v286 fromElement:v299];
      v178 = v177;
      v269 = sub_10011F31C(v277, v171, v173);
      v179 = sub_10011F334(v175, v176, v178);
      v266 = v180;
      v267 = v179;
      v86 = 1.0;
      goto LABEL_146;
    }

    v137 = v134 - 2;
    v138 = *(a7 + 2);
    if (v134 >= v138)
    {
      v141 = v135 >> 5;
      v142 = (v135 >> 5) + 1;
      if (v142 >> 59)
      {
        sub_1000C1D48();
      }

      v143 = v138 - *a7;
      if (v143 >> 4 > v142)
      {
        v142 = v143 >> 4;
      }

      if (v143 >= 0x7FFFFFFFFFFFFFE0)
      {
        v144 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v144 = v142;
      }

      if (v144)
      {
        sub_100522C18(a7, v144);
      }

      v145 = (32 * v141);
      v97 = 0;
      v146 = v137[1];
      *v145 = *v137;
      v145[1] = v146;
      v140 = 32 * v141 + 32;
      v147 = *(a7 + 1) - *a7;
      v148 = v145 - v147;
      memcpy(v145 - v147, *a7, v147);
      v149 = *a7;
      *a7 = v148;
      *(a7 + 1) = v140;
      *(a7 + 2) = 0;
      if (!v149)
      {
        v150 = a7;
        goto LABEL_108;
      }

      operator delete(v149);
    }

    else
    {
      v139 = *(v134 - 1);
      *v134 = *v137;
      v134[1] = v139;
      v140 = (v134 + 2);
    }

    v150 = a7;
LABEL_108:
    v150[1] = v140;
    goto LABEL_109;
  }

LABEL_163:
  if (v73)
  {
    v296 = v73;
    operator delete(v73);
  }

LABEL_166:
}

- (void)p_finishMetalRenderInContext:(CGContext *)a3 orDirectly:(id)a4 pathVertexData:(void *)a5 parameterized:(BOOL)a6 shouldReverseDrawOrder:(BOOL)a7 withLayoutOptions:(id)a8
{
  v9 = a6;
  v12 = a4;
  v165 = a8;
  context = objc_autoreleasePoolPush();
  v182 = a5;
  v169 = v12;
  if (*(a5 + 1) != *a5)
  {
    c = a3;
    if (v12)
    {
      [v12 frame];
      [v12 transform];
      sub_10011ECB4();
      m11 = transform.m11;
      m12 = transform.m12;
      v213 = *&transform.m13;
      v214 = *&transform.m21;
      v211 = *&transform.m13;
      v212 = *&transform.m21;
      if (v16 > 0.0 && v13 > 0.0)
      {
        v163 = [(CRLStroke *)self color];
        goto LABEL_21;
      }
    }

    else
    {
      ClipBoundingBox = CGContextGetClipBoundingBox(a3);
      width = ClipBoundingBox.size.width;
      height = ClipBoundingBox.size.height;
      CGContextGetCTM(&transform, a3);
      m11 = transform.m11;
      m12 = transform.m12;
      v213 = *&transform.m13;
      v214 = *&transform.m21;
      if ([(CRLBrushStroke *)self p_isDrawingRasterizedIntoPDFWithContext:a3])
      {
        v216.m11 = m11;
        v216.m12 = m12;
        *&v216.m13 = v213;
        *&v216.m21 = v214;
        CGAffineTransformScale(&transform, &v216, 3.0, 3.0);
        m11 = transform.m11;
        m12 = transform.m12;
        v213 = *&transform.m13;
        v214 = *&transform.m21;
      }

      v211 = v213;
      v212 = v214;
      if (width > 0.0 && height > 0.0)
      {
        if (a3)
        {
          v163 = [(CRLStroke *)self colorForCGContext:a3];
        }

        else
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10138C890();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10138C8B8();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10138C948();
          }

          v19 = off_1019EDA68;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            +[CRLAssertionHandler packedBacktraceString];
            objc_claimAutoreleasedReturnValue();
            sub_10130E89C();
          }

          v20 = [NSString stringWithUTF8String:"[CRLBrushStroke p_finishMetalRenderInContext:orDirectly:pathVertexData:parameterized:shouldReverseDrawOrder:withLayoutOptions:]"];
          v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
          [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:1168 isFatal:0 description:"Should have either a direct context or a CGContext."];

          v163 = 0;
          v12 = v169;
        }

LABEL_21:
        [(CRLStroke *)self width];
        v23 = v22;
        [v163 alphaComponent];
        v24 = sqrt(m12 * m12 + m11 * m11);
        v26 = v25;
        v27 = 1.0 / v24;
        v28 = v23 * v24 * v26;
        if (v23 < v27)
        {
          v26 = v28;
        }

        if (v9)
        {
          v26 = 1.0;
        }

        v175 = v26;
        if (v12)
        {
          v156 = 0;
          v149 = 0;
          x = CGRectZero.origin.x;
          y = CGRectZero.origin.y;
          v30 = CGRectZero.size.width;
          v29 = CGRectZero.size.height;
        }

        else
        {
          CGContextSaveGState(c);
          v216.m11 = m11;
          v216.m12 = m12;
          *&v216.m13 = v211;
          *&v216.m21 = v212;
          CGAffineTransformInvert(&transform, &v216);
          CGContextConcatCTM(c, &transform);
          v31 = *&CGAffineTransformIdentity.tx;
          v211 = *&CGAffineTransformIdentity.c;
          v212 = v31;
          v219 = CGContextGetClipBoundingBox(c);
          v220 = CGRectIntegral(v219);
          x = v220.origin.x;
          y = v220.origin.y;
          v30 = v220.size.width;
          v29 = v220.size.height;
          v149 = fmin(v220.size.width, 1024.0);
          v156 = fmin(v220.size.height, 1024.0);
        }

        v174 = sub_10016BB74();
        v160 = v9;
        if (v12)
        {
          v32 = [v12 metalDeviceOverride];
          v33 = v32 == 0;

          if (!v33)
          {
            v34 = [v169 metalDeviceOverride];

            v174 = v34;
          }
        }

        v35 = +[NSMutableArray array];
        v195 = +[NSMutableArray array];
        v36 = *(a5 + 1) - *a5;
        if (v36)
        {
          v37 = 0;
          v38 = v36 >> 5;
          v180 = v36 >> 5;
          do
          {
            v39 = 0;
            v40 = *v182;
            v41 = 32 * v37;
            v42 = v37;
            do
            {
              if (*(v40 + v41) == 1)
              {
                if (v39)
                {
                  break;
                }

                ++v37;
              }

              else
              {
                ++v39;
              }

              ++v42;
              v41 += 32;
            }

            while (v42 < v38);
            v43 = v40 + 32 * v37;
            v37 += v39;
            memset(&transform, 0, 24);
            sub_100522D14(&transform, v43, v40 + 32 * v37, (32 * v39) >> 5);
            v44 = transform.m11;
            v45 = *&transform.m12 - *&transform.m11;
            if (*&transform.m12 != *&transform.m11)
            {
              v184 = v37;
              v46 = 0;
              v47 = v45 >> 5;
              v193 = (v45 >> 5) - 3;
              do
              {
                v48 = [CRLGLDataBufferAttribute attributeWithName:@"position" bufferUsage:35044 dataType:5 normalized:0 componentCount:2];
                v49 = [CRLGLDataBufferAttribute attributeWithName:@"textureCoordinate" bufferUsage:35044 dataType:5 normalized:0 componentCount:2];
                v50 = [CRLGLDataBufferAttribute attributeWithName:@"clampedTextureCoordinate" bufferUsage:35044 dataType:5 normalized:0 componentCount:2];
                v51 = [CRLGLDataBufferAttribute attributeWithName:@"percentAlongPath" bufferUsage:35044 dataType:5 normalized:1 componentCount:1];
                v217[0] = v48;
                v217[1] = v49;
                v217[2] = v50;
                v217[3] = v51;
                v52 = [NSArray arrayWithObjects:v217 count:4];
                v53 = 65534;
                if (v47 - v46 <= 0xFFFE)
                {
                  v53 = v47 - v46;
                }

                if (v53 + v46 <= v193 || v53 + v46 >= v47)
                {
                  v55 = v53;
                }

                else
                {
                  v55 = v47 - v46 - 3;
                }

                v56 = [CRLGPUDataBuffer newDataBufferWithVertexAttributes:v52 vertexCount:v55 indexElementCount:0 device:v174];
                [v56 setMetalDrawMode:4];
                v206[0] = _NSConcreteStackBlock;
                v206[1] = 3321888768;
                v206[2] = sub_100520768;
                v206[3] = &unk_10186C498;
                v206[4] = v55;
                v206[5] = v46;
                v210 = a7;
                v206[6] = v47;
                v208 = 0;
                v209 = 0;
                __p = 0;
                sub_100522DCC(&__p, *&transform.m11, *&transform.m12, (*&transform.m12 - *&transform.m11) >> 5);
                [v56 updateMetalDataBufferAttributes:v52 withBlock:v206];
                [v35 addObject:v56];
                v46 += v55;
                v57 = [NSNumber numberWithBool:v46 >= v47];
                [v195 addObject:v57];

                if (__p)
                {
                  v208 = __p;
                  operator delete(__p);
                }
              }

              while (v46 < v47);
              v44 = transform.m11;
              v37 = v184;
              v38 = v180;
            }

            if (v44 != 0.0)
            {
              transform.m12 = v44;
              operator delete(*&v44);
            }
          }

          while (v37 < v38);
        }

        if (v169)
        {
          if ([CRLBrushStroke p_isDirectContextWideColorCapable:v169])
          {
            v58 = 115;
          }

          else
          {
            v58 = 70;
          }

          v59 = [v169 metalDrawable];
          v60 = [v59 texture];
          v61 = [v60 width];

          v62 = [v169 metalDrawable];
          v63 = [v62 texture];
          v64 = [v63 height];
        }

        else
        {
          v58 = 70;
          v64 = v156;
          v61 = v149;
        }

        v65 = +[CRLCapabilities currentCapabilities];
        [v65 maximumMetalTextureSizeForDevice:v174];
        v67 = v66;
        v69 = v68;

        v70 = v64;
        v71 = v61;
        if (v160 || ((v72 = v61 + v61, v73 = v64 + v64, v72 <= v67) ? (v74 = v73 > v69) : (v74 = 1), v70 = v64, v71 = v61, v74))
        {
          if (!v71)
          {
LABEL_87:

            goto LABEL_88;
          }
        }

        else
        {
          v70 = v73;
          if (!v72)
          {
            goto LABEL_87;
          }
        }

        if (v70 && v61 && v64)
        {
          v188 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:"texture2DDescriptorWithPixelFormat:width:height:mipmapped:" width:10 height:? mipmapped:?];
          [v188 setUsage:5];
          [v188 setStorageMode:2];
          v181 = [v174 newTextureWithDescriptor:v188];
          v194 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:v58 width:v61 height:v64 mipmapped:0];
          [v194 setUsage:5];
          [v194 setStorageMode:0];
          if (v169)
          {
            v75 = [v169 metalDrawable];
            v183 = [v75 texture];
          }

          else
          {
            v183 = [v174 newTextureWithDescriptor:v194];
          }

          v178 = +[MTLRenderPassDescriptor renderPassDescriptor];
          v76 = [v178 colorAttachments];
          v148 = [v76 objectAtIndexedSubscript:0];

          [v148 setTexture:v181];
          [v148 setStoreAction:1];
          [v148 setLoadAction:2];
          [v148 setClearColor:{0.0, 0.0, 0.0, 0.0}];
          [(CRLBrushStroke *)self p_metalBrushShaderForPixelFormat:10 andDevice:v174];
          v78 = v77 = c;
          v187 = [(CRLBrushStroke *)self p_metalOpacityShaderForPixelFormat:v58 andDevice:v174];
          v177 = +[CRLGPUDataBuffer newDataBufferWithVertexRect:textureRect:device:](CRLGPUDataBuffer, "newDataBufferWithVertexRect:textureRect:device:", v174, 0.0, 0.0, [v183 width], objc_msgSend(v183, "height"), 0.0, 0.0, 1.0, 1.0);
          v203[0] = v160;
          __asm { FMOV            V0.4S, #1.0 }

          v204 = _Q0;
          [v165 strokeEnd];
          *&v83 = v83;
          v205 = LODWORD(v83);
          v84 = [v163 CGColor];
          if (v169)
          {
            v84 = [CRLBrushStroke p_colorForDrawingIntoDirectContext:v169 fromOriginalColor:v163];
          }

          Components = CGColorGetComponents(v84);
          v87 = *Components;
          v86 = Components[1];
          v88 = Components[2];
          v179 = [(CRLBrushStroke *)self p_metalTextureForCurrentStrokeAndDevice:v174];
          v170 = sub_10016BE38(v174);
          v89 = v87;
          *&v90 = v175 * v89;
          v91 = v86;
          v92 = v88;
          *(&v90 + 1) = v175 * v91;
          *(&v90 + 1) = __PAIR64__(LODWORD(v175), v175 * v92);
          v176 = v90;
          if (v169)
          {
            [v169 frame];
            v94 = v93;
            v96 = v95;
            v97 = *&CATransform3DIdentity.m13;
            *&v216.m11 = *&CATransform3DIdentity.m11;
            *&v216.m13 = v97;
            v98 = *&CATransform3DIdentity.m23;
            *&v216.m21 = *&CATransform3DIdentity.m21;
            *&v216.m23 = v98;
            v99 = *&CATransform3DIdentity.m33;
            *&v216.m31 = *&CATransform3DIdentity.m31;
            *&v216.m33 = v99;
            v100 = *&CATransform3DIdentity.m43;
            *&v216.m41 = *&CATransform3DIdentity.m41;
            *&v216.m43 = v100;
            CATransform3DScale(&transform, &v216, 2.0 / v93, -2.0 / v95, 1.0);
            v216 = transform;
            CATransform3DTranslate(&transform, &v216, v94 * -0.5, v96 * -0.5, 0.0);
            v216 = transform;
            [v169 contentsScale];
            v102 = v101;
            [v169 contentsScale];
            CATransform3DScale(&transform, &v216, 1.0 / v102, 1.0 / v103, 1.0);
            v185 = *&transform.m13;
            v190 = *&transform.m11;
            v167 = *&transform.m23;
            *ca = *&transform.m21;
            v157 = *&transform.m33;
            v161 = *&transform.m31;
            v150 = *&transform.m43;
            v154 = *&transform.m41;
            m.m11 = m11;
            m.m12 = m12;
            *&m.m13 = v213;
            *&m.m21 = v214;
            CATransform3DMakeAffineTransform(&v216, &m);
            *&m.m11 = v190;
            *&m.m13 = v185;
            *&m.m21 = *ca;
            *&m.m23 = v167;
            *&m.m31 = v161;
            *&m.m33 = v157;
            *&m.m41 = v154;
            *&m.m43 = v150;
            CATransform3DConcat(&transform, &v216, &m);
            *cb = *&transform.m23;
            v151 = *&transform.m11;
            v155 = *&transform.m21;
            v186 = *&transform.m33;
            v158 = *&transform.m31;
            v162 = *&transform.m13;
            v191 = *&transform.m43;
            v168 = *&transform.m41;
            v104 = [v170 commandBuffer];
            v105 = [v104 renderCommandEncoderWithDescriptor:v178];
            transform.m12 = 0.0;
            transform.m11 = 0.0;
            transform.m13 = [v188 width];
            transform.m14 = [v188 height];
            *&transform.m21 = xmmword_101463BB0;
            [v105 setViewport:&transform];
            [v105 setFragmentTexture:v179 atIndex:0];
            *&v216.m11 = vcvt_hight_f32_f64(vcvt_f32_f64(v151), v162);
            *&v216.m13 = vcvt_hight_f32_f64(vcvt_f32_f64(v155), *cb);
            *&v216.m21 = vcvt_hight_f32_f64(vcvt_f32_f64(v158), v186);
            *&v216.m23 = vcvt_hight_f32_f64(vcvt_f32_f64(v168), v191);
            [v78 setPipelineStateWithEncoder:v105 vertexBytes:&v216 fragmentBytes:v203];
            v199 = 0u;
            v200 = 0u;
            v197 = 0u;
            v198 = 0u;
            v106 = v35;
            v107 = [v106 countByEnumeratingWithState:&v197 objects:v215 count:16];
            if (v107)
            {
              v108 = *v198;
              do
              {
                for (i = 0; i != v107; i = i + 1)
                {
                  if (*v198 != v108)
                  {
                    objc_enumerationMutation(v106);
                  }

                  [*(*(&v197 + 1) + 8 * i) drawWithEncoder:v105 atIndex:{objc_msgSend(v78, "bufferIndex")}];
                }

                v107 = [v106 countByEnumeratingWithState:&v197 objects:v215 count:16];
              }

              while (v107);
            }

            [v105 endEncoding];
            v110 = +[MTLRenderPassDescriptor renderPassDescriptor];
            v111 = [v110 colorAttachments];
            v112 = [v111 objectAtIndexedSubscript:0];

            [v112 setTexture:v183];
            [v112 setStoreAction:1];
            [v112 setLoadAction:2];
            [v112 setClearColor:{0.0, 0.0, 0.0, 0.0}];
            v113 = [v104 renderCommandEncoderWithDescriptor:v110];
            transform.m12 = 0.0;
            transform.m11 = 0.0;
            transform.m13 = [v194 width];
            transform.m14 = [v194 height];
            *&transform.m21 = xmmword_101463BB0;
            [v113 setViewport:&transform];
            [v113 setFragmentTexture:v181 atIndex:0];
            sub_1001C66F0(&transform, 0.0, [v194 width], 0.0, objc_msgSend(v194, "height"), -1.0, 1.0);
            *&m.m11 = vcvt_hight_f32_f64(vcvt_f32_f64(*&transform.m11), *&transform.m13);
            *&m.m13 = vcvt_hight_f32_f64(vcvt_f32_f64(*&transform.m21), *&transform.m23);
            *&m.m21 = vcvt_hight_f32_f64(vcvt_f32_f64(*&transform.m31), *&transform.m33);
            *&m.m23 = vcvt_hight_f32_f64(vcvt_f32_f64(*&transform.m41), *&transform.m43);
            *&transform.m11 = v176;
            LOBYTE(transform.m13) = 1;
            [v187 setPipelineStateWithEncoder:v113 vertexBytes:&m fragmentBytes:&transform];
            [v177 drawWithEncoder:v113 atIndex:{objc_msgSend(v187, "bufferIndex")}];
            [v113 endEncoding];
            [v104 enqueue];
            v114 = [v169 metalDrawable];
            [v104 presentDrawable:v114];

            [v104 commit];
          }

          else
          {
            v143 = vcvtpd_s64_f64(v30 * 0.0009765625);
            if (v143 >= 1)
            {
              v144 = 0;
              v115 = vcvtpd_s64_f64(v29 * 0.0009765625);
              v116 = v156;
              v142 = vcvtd_n_f64_s64(-v149, 1uLL);
              rect = v149;
              v117 = 2.0 / v149;
              v152 = vcvtd_n_f64_s64(-v156, 1uLL);
              v118 = 2.0 / v156;
              v146 = v115;
              do
              {
                if (v115 >= 1)
                {
                  v159 = 0;
                  v119 = (x + (v144 << 10));
                  v120 = v142 - v119;
                  do
                  {
                    memset(&transform, 0, sizeof(transform));
                    CATransform3DMakeScale(&transform, v117, v118, 1.0);
                    m = transform;
                    v121 = (y + (v159 << 10));
                    CATransform3DTranslate(&v216, &m, v120, v152 - v121, 0.0);
                    transform = v216;
                    v196.m11 = m11;
                    v196.m12 = m12;
                    *&v196.m13 = v213;
                    *&v196.m21 = v214;
                    CATransform3DMakeAffineTransform(&m, &v196);
                    v196 = transform;
                    CATransform3DConcat(&v216, &m, &v196);
                    v122 = 0;
                    transform = v216;
                    while (v122 < [v35 count])
                    {
                      v192 = [v170 commandBuffer];
                      v123 = 0;
                      while (v122 < [v35 count] && v123 <= 8)
                      {
                        v124 = [v192 renderCommandEncoderWithDescriptor:v178];
                        v216.m12 = 0.0;
                        v216.m11 = 0.0;
                        v216.m13 = [v188 width];
                        v216.m14 = [v188 height];
                        *&v216.m21 = xmmword_101463BB0;
                        [v124 setViewport:&v216];
                        [v124 setFragmentTexture:v179 atIndex:0];
                        *&m.m11 = vcvt_hight_f32_f64(vcvt_f32_f64(*&transform.m11), *&transform.m13);
                        *&m.m13 = vcvt_hight_f32_f64(vcvt_f32_f64(*&transform.m21), *&transform.m23);
                        *&m.m21 = vcvt_hight_f32_f64(vcvt_f32_f64(*&transform.m31), *&transform.m33);
                        *&m.m23 = vcvt_hight_f32_f64(vcvt_f32_f64(*&transform.m41), *&transform.m43);
                        [v78 setPipelineStateWithEncoder:v124 vertexBytes:&m fragmentBytes:v203];
                        v123 += 2;
                        v125 = v122;
                        do
                        {
                          if (v125 >= [v35 count])
                          {
                            break;
                          }

                          v126 = [v35 objectAtIndexedSubscript:v125];
                          [v126 drawWithEncoder:v124 atIndex:{objc_msgSend(v78, "bufferIndex")}];
                          v127 = [v195 objectAtIndexedSubscript:v125];
                          v128 = [v127 BOOLValue];

                          ++v125;
                        }

                        while ((v128 & 1) == 0);
                        [v124 endEncoding];
                        v129 = +[MTLRenderPassDescriptor renderPassDescriptor];
                        v130 = [v129 colorAttachments];
                        v131 = [v130 objectAtIndexedSubscript:0];

                        [v131 setTexture:v183];
                        [v131 setStoreAction:1];
                        if (v122)
                        {
                          [v131 setLoadAction:1];
                        }

                        else
                        {
                          [v131 setLoadAction:2];
                          [v131 setClearColor:{0.0, 0.0, 0.0, 0.0}];
                        }

                        v132 = [v192 renderCommandEncoderWithDescriptor:v129];
                        v216.m12 = 0.0;
                        v216.m11 = 0.0;
                        v216.m13 = [v194 width];
                        v216.m14 = [v194 height];
                        *&v216.m21 = xmmword_101463BB0;
                        [v132 setViewport:&v216];
                        [v132 setFragmentTexture:v181 atIndex:0];
                        sub_1001C66F0(&v216, 0.0, [v194 width], 0.0, objc_msgSend(v194, "height"), -1.0, 1.0);
                        *&v196.m11 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v216.m11), *&v216.m13);
                        *&v196.m13 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v216.m21), *&v216.m23);
                        *&v196.m21 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v216.m31), *&v216.m33);
                        *&v196.m23 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v216.m41), *&v216.m43);
                        *&v216.m11 = v176;
                        LOBYTE(v216.m13) = 1;
                        [v187 setPipelineStateWithEncoder:v132 vertexBytes:&v196 fragmentBytes:&v216];
                        [v177 drawWithEncoder:v132 atIndex:{objc_msgSend(v187, "bufferIndex")}];
                        [v132 endEncoding];

                        v122 = v125;
                      }

                      if (v122 > [v35 count])
                      {
                        v133 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                        if (qword_101AD5A10 != -1)
                        {
                          sub_10138C970();
                        }

                        v134 = off_1019EDA68;
                        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                        {
                          LODWORD(v216.m11) = 67109890;
                          HIDWORD(v216.m11) = v133;
                          LOWORD(v216.m12) = 2082;
                          *(&v216.m12 + 2) = "[CRLBrushStroke p_finishMetalRenderInContext:orDirectly:pathVertexData:parameterized:shouldReverseDrawOrder:withLayoutOptions:]";
                          WORD1(v216.m13) = 2082;
                          *(&v216.m13 + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm";
                          WORD2(v216.m14) = 1024;
                          *(&v216.m14 + 6) = 1523;
                          _os_log_error_impl(&_mh_execute_header, v134, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d The buffer index should not be greater than the number of buffers.", &v216, 0x22u);
                        }

                        if (qword_101AD5A10 != -1)
                        {
                          sub_10138C998();
                        }

                        v135 = off_1019EDA68;
                        if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                        {
                          v139 = +[CRLAssertionHandler packedBacktraceString];
                          LODWORD(v216.m11) = 67109378;
                          HIDWORD(v216.m11) = v133;
                          LOWORD(v216.m12) = 2114;
                          *(&v216.m12 + 2) = v139;
                          _os_log_error_impl(&_mh_execute_header, v135, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &v216, 0x12u);
                        }

                        v136 = [NSString stringWithUTF8String:"[CRLBrushStroke p_finishMetalRenderInContext:orDirectly:pathVertexData:parameterized:shouldReverseDrawOrder:withLayoutOptions:]"];
                        v137 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
                        [CRLAssertionHandler handleFailureInFunction:v136 file:v137 lineNumber:1523 isFatal:0 description:"The buffer index should not be greater than the number of buffers."];
                      }

                      v138 = [v35 count];
                      [v192 enqueue];
                      [v192 commit];
                      if (v122 >= v138)
                      {
                        [v192 waitUntilCompleted];
                      }

                      v77 = c;
                    }

                    v140 = sub_10016BBEC(v183);
                    if (v160)
                    {
                      v221.origin.x = (x + (v144 << 10));
                      v221.origin.y = (y + (v159 << 10));
                      v221.size.width = rect;
                      v221.size.height = v116;
                      CGContextDrawImage(v77, v221, v140);
                    }

                    else
                    {
                      v141 = [v163 colorWithAlphaComponent:1.0];
                      [objc_opt_class() p_drawColor:v141 intoContext:v77 usingImageAsMask:v140 withRect:{v119, v121, rect, v116}];

                      v77 = c;
                    }

                    CGImageRelease(v140);
                    ++v159;
                  }

                  while (v159 != v146);
                }

                ++v144;
                v115 = v146;
              }

              while (v144 != v143);
            }

            CGContextRestoreGState(v77);
          }
        }

        goto LABEL_87;
      }
    }
  }

LABEL_88:
  objc_autoreleasePoolPop(context);
}

+ (BOOL)p_isDirectContextWideColorCapable:(id)a3
{
  v3 = [a3 metalDrawable];
  v4 = [v3 texture];
  v5 = [v4 pixelFormat] == 115;

  return v5;
}

+ (CGColor)p_colorForDrawingIntoDirectContext:(id)a3 fromOriginalColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 CGColor];
  if ([v6 destinationColorSpaceOverride] || objc_msgSend(v7, "colorRGBSpace") == 1)
  {
    v9 = [v6 destinationColorSpaceOverride];
    if (!v9)
    {
      v10 = [a1 p_isDirectContextWideColorCapable:v6];
      v11 = &kCGColorSpaceExtendedSRGB;
      if (!v10)
      {
        v11 = &kCGColorSpaceSRGB;
      }

      v12 = CGColorSpaceCreateWithName(*v11);
      v9 = CFAutorelease(v12);
    }

    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v9, kCGRenderingIntentDefault, [v7 CGColor], 0);
    v8 = CFAutorelease(CopyByMatchingToColorSpace);
  }

  return v8;
}

+ (void)p_drawColor:(id)a3 intoContext:(CGContext *)a4 usingImageAsMask:(CGImage *)a5 withRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v12 = a3;
  CGContextSaveGState(a4);
  v13 = CGImageGetWidth(a5);
  v14 = CGImageGetHeight(a5);
  v15 = sub_10050DF80(2, v13, v14);
  v16 = CGImageGetWidth(a5);
  v17 = CGImageGetHeight(a5);
  v38.size.width = v16;
  v38.size.height = v17;
  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  CGContextDrawImage(v15, v38, a5);
  Image = CGBitmapContextCreateImage(v15);
  CGContextRelease(v15);
  v37 = xmmword_101466510;
  v19 = CGImageGetWidth(Image);
  v20 = CGImageGetHeight(Image);
  BitsPerComponent = CGImageGetBitsPerComponent(Image);
  BitsPerPixel = CGImageGetBitsPerPixel(Image);
  BytesPerRow = CGImageGetBytesPerRow(Image);
  DataProvider = CGImageGetDataProvider(Image);
  ShouldInterpolate = CGImageGetShouldInterpolate(Image);
  v26 = CGImageMaskCreate(v19, v20, BitsPerComponent, BitsPerPixel, BytesPerRow, DataProvider, &v37, ShouldInterpolate);
  CGImageRelease(Image);
  if (sub_100510804(a4) && !CGBitmapContextGetBitmapInfo(a4))
  {
    if ([v12 colorRGBSpace] == 1)
    {
      v34 = 35;
    }

    else
    {
      v34 = 3;
    }

    v35 = CGImageGetWidth(a5);
    v36 = CGImageGetHeight(a5);
    v32 = sub_10050DF80(v34, v35, v36);
    v30 = CGImageGetWidth(a5);
    v31 = CGImageGetHeight(a5);
    v28 = 0.0;
    v27 = 1;
    v29 = 0.0;
  }

  else
  {
    v27 = 0;
    v28 = x;
    v29 = y;
    v30 = width;
    v31 = height;
    v32 = a4;
  }

  v39.origin.x = v28;
  v39.origin.y = v29;
  v39.size.width = v30;
  v39.size.height = v31;
  CGContextClipToMask(v32, v39, v26);
  CGImageRelease(v26);
  CGContextSetFillColorWithColor(v32, [v12 CGColor]);
  v40.origin.x = v28;
  v40.origin.y = v29;
  v40.size.width = v30;
  v40.size.height = v31;
  CGContextFillRect(v32, v40);
  if (v27)
  {
    v33 = CGBitmapContextCreateImage(v32);
    CGContextRelease(v32);
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    CGContextDrawImage(a4, v41, v33);
    CGImageRelease(v33);
  }

  CGContextRestoreGState(a4);
}

- (BOOL)p_shouldDrawAsVectorInContext:(CGContext *)a3
{
  if (a3)
  {
    v5 = sub_100510804(a3);
    if (v5)
    {
      LOBYTE(v5) = ![(CRLBrushStroke *)self p_prefersRasterRenderingInContext:a3];
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138C9C0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138C9D4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138CA68();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v7 = [NSString stringWithUTF8String:"[CRLBrushStroke p_shouldDrawAsVectorInContext:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1667 isFatal:0 description:"invalid nil value for '%{public}s'", "ctx"];

    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)p_prefersRasterRenderingInContext:(CGContext *)a3
{
  if (!a3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138CA90();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138CAA4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138CB38();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v6 = [NSString stringWithUTF8String:"[CRLBrushStroke p_prefersRasterRenderingInContext:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1675 isFatal:0 description:"invalid nil value for '%{public}s'", "ctx"];
  }

  if (sub_1005114F4(a3))
  {
    return 1;
  }

  v9 = [(CRLSmartStroke *)self strokeName];
  if ([v9 isEqualToString:@"Pencil"])
  {
    v8 = 1;
  }

  else
  {
    v10 = [(CRLSmartStroke *)self strokeName];
    v8 = [v10 isEqualToString:@"Crayon"];
  }

  return v8;
}

- (BOOL)p_isDrawingRasterizedIntoPDFWithContext:(CGContext *)a3
{
  if (!a3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138CB60();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138CB74();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138CC08();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v6 = [NSString stringWithUTF8String:"[CRLBrushStroke p_isDrawingRasterizedIntoPDFWithContext:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1680 isFatal:0 description:"invalid nil value for '%{public}s'", "ctx"];
  }

  v8 = sub_100510804(a3);
  if (v8)
  {
    LOBYTE(v8) = ![(CRLBrushStroke *)self p_shouldDrawAsVectorInContext:a3];
  }

  return v8;
}

- (BOOL)p_isFreehandDrawingStrokeWithFixedTileWidth
{
  v3 = [(CRLSmartStroke *)self strokeName];
  if ([v3 isEqualToString:@"Pencil"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CRLSmartStroke *)self strokeName];
    v4 = [v5 isEqualToString:@"Crayon"];
  }

  return v4;
}

- (int64_t)p_fastElementPercentage:(double *)a3 forOverallPercentage:(double)a4 onPath:(id)a5 withCachedCurrentElementPercentage:(id *)a6
{
  v10 = a5;
  [v10 length];
  var2 = 0.0;
  if (a6->var0 == v10 && a6->var2 <= v11 * a4)
  {
    var1 = a6->var1;
    if (var1 <= 1)
    {
      var2 = 0.0;
    }

    else
    {
      var2 = a6->var2;
    }

    if (var1 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = a6->var1;
    }
  }

  else
  {
    v13 = 1;
  }

  v14 = [v10 elementPercentage:a3 forOverallPercentage:v13 startingElementIndex:a4 lengthToStartingElement:var2];
  if (v14 > v13)
  {
    do
    {
      [v10 lengthOfElement:v13];
      var2 = var2 + v15;
      ++v13;
    }

    while (v14 != v13);
    objc_storeStrong(&a6->var0, a5);
    a6->var1 = v14;
    a6->var2 = var2;
  }

  return v14;
}

+ (id)p_metalTextureQueue
{
  if (qword_101A353C0 != -1)
  {
    sub_10138CC30();
  }

  v3 = qword_101A353B8;

  return v3;
}

+ (id)p_metalShaderQueue
{
  if (qword_101A353D0 != -1)
  {
    sub_10138CC44();
  }

  v3 = qword_101A353C8;

  return v3;
}

- (id)p_metalTextureForCurrentStrokeAndDevice:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1005219E8;
  v17 = sub_1005219F8;
  v18 = 0;
  if (qword_101A353E0 != -1)
  {
    sub_10138CC58();
  }

  v5 = +[CRLBrushStroke p_metalTextureQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100521A4C;
  block[3] = &unk_10186C6F0;
  v11 = self;
  v12 = &v13;
  v10 = v4;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)p_metalBrushShaderForPixelFormat:(unint64_t)a3 andDevice:(id)a4
{
  v5 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1005219E8;
  v18 = sub_1005219F8;
  v19 = 0;
  if (qword_101A353F0 != -1)
  {
    sub_10138CE84();
  }

  v6 = +[CRLBrushStroke p_metalShaderQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100522564;
  block[3] = &unk_10186C738;
  v11 = v5;
  v12 = &v14;
  v13 = a3;
  v7 = v5;
  dispatch_sync(v6, block);

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

- (id)p_metalOpacityShaderForPixelFormat:(unint64_t)a3 andDevice:(id)a4
{
  v5 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1005219E8;
  v18 = sub_1005219F8;
  v19 = 0;
  if (qword_101A35400 != -1)
  {
    sub_10138CEAC();
  }

  v6 = +[CRLBrushStroke p_metalShaderQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005228DC;
  block[3] = &unk_10186C738;
  v11 = v5;
  v12 = &v14;
  v13 = a3;
  v7 = v5;
  dispatch_sync(v6, block);

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

@end