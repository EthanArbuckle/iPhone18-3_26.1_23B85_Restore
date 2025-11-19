@interface CRLBoardItemFactoryObjCHelper
+ (id)freehandDrawingShapeItemsFromPKStroke:(id)a3 adjustedBaseWidth:(double)a4 boardItemFactory:(id)a5;
+ (id)freehandDrawingShapeItemsFromPKStroke:(id)a3 unadjustedPencilKitBaseWidth:(double)a4 boardItemFactory:(id)a5;
+ (id)p_bezierAndStrokePathDataSubpathsByClippingBezier:(id)a3 andStrokePathData:(id)a4 fromOriginalPKStroke:(id)a5 toPath:(id)a6;
+ (id)p_freehandDrawingShapeItemsFromClippedPKStroke:(id)a3 adjustedBaseWidth:(double)a4 boardItemFactory:(id)a5;
+ (id)p_strokePathCompactData:(id)a3 byTrimmingToMap:(id)a4 outInitialTValue:(double *)a5;
@end

@implementation CRLBoardItemFactoryObjCHelper

+ (id)freehandDrawingShapeItemsFromPKStroke:(id)a3 adjustedBaseWidth:(double)a4 boardItemFactory:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 _clipPlane];

  if (v10)
  {
    v11 = [PKDrawing alloc];
    v27 = v8;
    v12 = [NSArray arrayWithObjects:&v27 count:1];
    v13 = [v11 initWithStrokes:v12];

    [v13 _clipMaskedStrokes];
    v14 = +[NSMutableArray array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = [v13 strokes];
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [a1 p_freehandDrawingShapeItemsFromClippedPKStroke:*(*(&v22 + 1) + 8 * i) adjustedBaseWidth:v9 boardItemFactory:a4];
          [v14 addObjectsFromArray:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v14 = [a1 p_freehandDrawingShapeItemsFromClippedPKStroke:v8 adjustedBaseWidth:v9 boardItemFactory:a4];
  }

  return v14;
}

+ (id)p_freehandDrawingShapeItemsFromClippedPKStroke:(id)a3 adjustedBaseWidth:(double)a4 boardItemFactory:(id)a5
{
  v8 = a3;
  v57 = a5;
  v58 = +[NSMutableArray array];
  v70 = 0;
  v9 = [CRLPKStrokeConverter pathFromPKStroke:v8 pencilKitStrokePathData:&v70];
  v10 = v70;
  v11 = [CRLPencilKitInkStroke alloc];
  v12 = [v8 ink];
  v56 = [(CRLPencilKitInkStroke *)v11 initWithInk:v12 adjustedWidth:a4];

  memset(&v69, 0, sizeof(v69));
  if (v8)
  {
    [v8 transform];
  }

  v13 = [v8 mask];
  v14 = [v13 CGPath];

  if (v14)
  {
    v15 = [CRLBezierPath bezierPathWithCGPath:v14];
  }

  else
  {
    v15 = 0;
  }

  v68 = v69;
  [v15 transformUsingAffineTransform:&v68];
  if (v15)
  {
    [v8 crl_maximumActualWidth];
    v17 = [v15 bezierPathByOffsettingPath:1 joinStyle:v16 * 0.5];
    [a1 p_bezierAndStrokePathDataSubpathsByClippingBezier:v9 andStrokePathData:v10 fromOriginalPKStroke:v8 toPath:v17];
  }

  else
  {
    v17 = [[CRLBoardItemFactoryObjCHelperSlicedStroke alloc] initWithBezierPath:v9 compactData:v10, v10, v9];
    v72 = v17;
    [NSArray arrayWithObjects:&v72 count:1];
  }
  v18 = ;

  v68 = v69;
  v19 = sub_100139A14(&v68.a);
  memset(&v68, 0, sizeof(v68));
  CGAffineTransformMakeScale(&v67, v19, v20);
  CGAffineTransformInvert(&v68, &v67);
  [v8 _anchorPointForTexture];
  v22 = v21;
  v24 = v23;
  t1 = v69;
  memset(&v67, 0, sizeof(v67));
  t2 = v68;
  CGAffineTransformConcat(&v67, &t1, &t2);
  a = v67.a;
  b = v67.b;
  c = v67.c;
  d = v67.d;
  tx = v67.tx;
  ty = v67.ty;
  v53 = v8;
  v55 = +[CRLFreehandDrawingShapeTypeHelper freehandDrawingShapeTypeFromPKShapeType:](_TtC8Freeform33CRLFreehandDrawingShapeTypeHelper, "freehandDrawingShapeTypeFromPKShapeType:", [v8 _shapeType]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v18;
  v31 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = ty + v24 * d + b * v22;
    v34 = tx + v24 * c + a * v22;
    v35 = *v62;
    y = CGPointZero.y;
    v37 = v15;
    do
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v62 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v61 + 1) + 8 * i);
        v40 = [v39 bezierPath];
        v41 = [v39 compactData];
        [v40 bounds];
        v59 = v42;
        v60 = v43;
        v44 = [CRLBezierPathSource pathSourceWithBezierPath:v40];
        if (v15)
        {
          v45 = [v15 copy];
          if (v59 != CGPointZero.x || v60 != y)
          {
            CGAffineTransformMakeTranslation(&t1, -v59, -v60);
            [v45 transformUsingAffineTransform:&t1];
          }
        }

        else
        {
          v45 = 0;
        }

        [v41 setAnchorPointForTexture:{sub_10011F31C(v34, v33, vaddq_f64(*&v68.tx, vmlaq_n_f64(vmulq_n_f64(*&v68.c, v60), *&v68.a, v59)).f64[0])}];
        v47 = objc_opt_class();
        v48 = [v57 makeShapeItemForFreehandDrawingWithPathSource:v44 position:v56 stroke:0 fill:v41 pencilKitStrokePathCompactData:v45 maskPath:v55 snappedShapeType:{v59, v60}];
        v49 = sub_100013F00(v47, v48);

        [v58 addObject:v49];
        v15 = v37;
      }

      v32 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v32);
  }

  return v58;
}

+ (id)freehandDrawingShapeItemsFromPKStroke:(id)a3 unadjustedPencilKitBaseWidth:(double)a4 boardItemFactory:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v9 ink];
  v11 = [v10 inkType];
  [CRLPencilKitInkStroke adjustedStrokeWidthFromWidth:v11 forInkType:a4];
  v13 = v12;

  v14 = [a1 freehandDrawingShapeItemsFromPKStroke:v9 adjustedBaseWidth:v8 boardItemFactory:v13];

  return v14;
}

+ (id)p_bezierAndStrokePathDataSubpathsByClippingBezier:(id)a3 andStrokePathData:(id)a4 fromOriginalPKStroke:(id)a5 toPath:(id)a6
{
  v38 = a4;
  v34 = a5;
  v44 = 0;
  v9 = [CRLBezierPathBooleanOperationHelper linePathWithLinePath:a3 intersectedWithFilledPath:a6 outMapToInputPaths:&v44];
  v37 = v44;
  v10 = [v37 elementCount];
  if (v10 != [v9 elementCount])
  {
    v11 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10130F150();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F178(v11, v12);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10130F244();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v13, v11);
    }

    v14 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLBoardItemFactoryObjCHelper p_bezierAndStrokePathDataSubpathsByClippingBezier:andStrokePathData:fromOriginalPKStroke:toPath:]");
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBoardItemFactoryObjCHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:202 isFatal:0 description:"expected equality between %{public}s and %{public}s", "BOOLeanPathMap.elementCount", "clippedPath.elementCount"];
  }

  if ([v9 containsElementsOtherThanMoveAndClose])
  {
    v36 = +[NSMutableArray array];
    v16 = [v9 rangesOfSubpaths];
    v17 = [v16 crl_arrayOfObjectsPassingTest:&stru_10183A408];

    v18 = [v17 count];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (!v20)
    {
      goto LABEL_27;
    }

    v21 = v20;
    v22 = *v41;
    while (1)
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v41 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v40 + 1) + 8 * i) rangeValue];
        if (v18 == 1)
        {
          v26 = v9;
          if (([v26 containsElementsOtherThanMoveAndClose] & 1) == 0)
          {
            goto LABEL_25;
          }

          v27 = v37;
        }

        else
        {
          v28 = v24;
          v29 = v25;
          v26 = [v9 copyWithPointsInRange:{v24, v25}];
          if (([v26 containsElementsOtherThanMoveAndClose] & 1) == 0)
          {
            goto LABEL_25;
          }

          v27 = [v37 copyWithElementsInRange:{v28, v29}];
        }

        v30 = v27;
        v39 = -1.0;
        v31 = [a1 p_strokePathCompactData:v38 byTrimmingToMap:v27 outInitialTValue:&v39];
        if (v39 > 0.0)
        {
          [v34 crl_particleOffsetAt:0 forSecondaryParticles:v39];
          [v31 setParticleOffset:?];
          [v34 crl_particleOffsetAt:1 forSecondaryParticles:v39];
          [v31 setSecondaryParticleOffset:?];
        }

        v32 = [[CRLBoardItemFactoryObjCHelperSlicedStroke alloc] initWithBezierPath:v26 compactData:v31];
        [v36 addObject:v32];

LABEL_25:
      }

      v21 = [v19 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (!v21)
      {
LABEL_27:

        goto LABEL_29;
      }
    }
  }

  v36 = &__NSArray0__struct;
LABEL_29:

  return v36;
}

+ (id)p_strokePathCompactData:(id)a3 byTrimmingToMap:(id)a4 outInitialTValue:(double *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 elementCount];
  v10 = [CRLPKStrokePathCompactData alloc];
  v11 = [v7 randomSeed];
  v12 = [v7 creationDate];
  v13 = [(CRLPKStrokePathCompactData *)v10 initWithCapacity:v9 randomSeed:v11 creationDate:v12];

  [v7 renderScaleX];
  [(CRLPKStrokePathCompactData *)v13 setRenderScaleX:?];
  [v7 renderScaleY];
  [(CRLPKStrokePathCompactData *)v13 setRenderScaleY:?];
  v14 = [v7 renderGroupID];
  [(CRLPKStrokePathCompactData *)v13 setRenderGroupID:v14];

  -[CRLPKStrokePathCompactData setShouldSolveMath:](v13, "setShouldSolveMath:", [v7 shouldSolveMath]);
  -[CRLPKStrokePathCompactData setIsSynthesizedStroke:](v13, "setIsSynthesizedStroke:", [v7 isSynthesizedStroke]);
  [v7 particleOffset];
  [(CRLPKStrokePathCompactData *)v13 setParticleOffset:?];
  [v7 secondaryParticleOffset];
  [(CRLPKStrokePathCompactData *)v13 setSecondaryParticleOffset:?];
  if (v9 >= 1)
  {
    v15 = 0;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v30 = vnegq_f64(v16);
    v17 = -1.0;
    do
    {
      v36 = NAN;
      v18 = [v8 inputPathIndexForOutputElementIndex:v15 outInputT:&v36];
      if (v18)
      {
        v20 = -1.0;
      }

      else
      {
        v20 = v36;
      }

      if (!v18)
      {
        v17 = v36;
      }

      if (v17 >= 0.0 && v20 < 0.0)
      {
        v22 = v17;
      }

      else
      {
        v22 = v20;
      }

      if (v22 < 0.0 && v15 + 1 < v9)
      {
        *&v35[2] = 0x7FF8000000000000;
        if (![v8 inputPathIndexForOutputElementIndex:v36 outInputT:v20])
        {
          v22 = *&v35[2];
        }
      }

      if (v22 >= 0.0)
      {
        *v19.i64 = v22;
      }

      else
      {
        *v19.i64 = 0.0;
      }

      v31 = v19;
      v24 = vcvtmd_u64_f64(*v19.i64);
      memset(&v35[2], 0, 28);
      if (v7)
      {
        [v7 strokePointCompactDataAtIndex:v24];
      }

      *v19.i64 = *v31.i64 - trunc(*v31.i64);
      v19.i64[0] = vbslq_s8(v30, v19, v31).i64[0];
      if (*v19.i64 != 0.0)
      {
        v25 = v24 + 1;
        v29 = *v19.i64;
        v26 = [v7 pointCount];
        v27 = v29;
        if (v25 < v26)
        {
          memset(v35, 0, 28);
          if (v7)
          {
            [v7 strokePointCompactDataAtIndex:{v25, v29}];
            v27 = v29;
          }

          v33[0] = v35[2];
          *(v33 + 12) = *(&v35[2] + 12);
          v32[0] = v35[0];
          *(v32 + 12) = *(v35 + 12);
          sub_1001C7670(v33, v32, v34, v27);
          v35[2] = *v34;
          *(&v35[2] + 12) = *&v34[12];
        }
      }

      v35[0] = v35[2];
      *(v35 + 12) = *(&v35[2] + 12);
      [(CRLPKStrokePathCompactData *)v13 appendStrokePointCompactData:v35];
      if (a5 && !v15)
      {
        *a5 = *v31.i64;
      }

      ++v15;
    }

    while (v9 != v15);
  }

  return v13;
}

@end