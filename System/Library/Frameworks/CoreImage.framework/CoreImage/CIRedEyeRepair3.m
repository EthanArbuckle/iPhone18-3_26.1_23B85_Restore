@interface CIRedEyeRepair3
+ ($807B2EF8CC2A3BA0CBD71F9CA1C0D669)settingsWithOptions:(SEL)a3;
+ ($A3B2E143E1A03423F9FC703C010436DC)bitmapRectWithImageSubRectangle:(CGRect)a3 settings:(id *)a4;
+ (CGRect)supportRectangleWithFaceArray:(id)a3 options:(id)a4;
+ (CGRect)supportRectangleWithRepair:(id)a3 imageSize:(CGSize)a4;
+ (float)yawAngleWithFaceDictionary:(id)a3;
+ (int)bitmapRect:(id *)a3 point:(CGPoint *)a4 polygon:(CGPoint)a5[8] andDistMatrix:(float)a6[4] forEye:(int)a7 inFaceDictionary:(id)a8 settings:(id *)a9;
+ (int)faceContext:(id *)a3 withFaceArray:(id)a4 index:(int)a5 settings:(id *)a6;
+ (void)insertIntoConnectionHopper:(id *)a3 index1:(int)a4 drop1:(int)a5 index2:(int)a6 drop2:(int)a7 score:(float)a8;
+ (void)insertIntoThreadHopper:(id *)a3 index:(int)a4 recChannel:(float)a5 hue:(float)a6 saturation:(float)a7 luminance:(float)a8 shapeMetricTotal:(float)a9 xPosition:(float)a10;
- ($000CCD7ED2ADA2E18343834BA3C2DAF0)focusStatsWithBitmap:(id *)a3 IOD:(float)a4;
- ($A3B2E143E1A03423F9FC703C010436DC)bitmapRectWithDictionaryRectArray:(id)a3;
- ($A3B2E143E1A03423F9FC703C010436DC)globalBitmapRectWithDictionaryRectArray:(id)a3;
- ($A3B2E143E1A03423F9FC703C010436DC)repairRect;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)RGBtoHSV:(id)a3;
- (BOOL)edgePoint:(CGPoint *)a3 withBitmap:(id *)a4 center:(CGPoint)a5 perp:(CGPoint)a6;
- (BOOL)gatherFaceStatistics:(id *)a3;
- (BOOL)initGridWithBitmap:(id *)a3 scale:(int)a4;
- (BOOL)isConvex:(id *)a3;
- (BOOL)openRepairDictionary:(id)a3 convexHull:(id *)a4 facts:(id *)a5;
- (BOOL)trimConcaveFromHull:(id *)a3;
- (BOOL)trimEndPointFromHull:(id *)a3;
- (BOOL)trimStartPointFromHull:(id *)a3;
- (BOOL)unpackToGlobalRepairDictionary:(id)a3 convexHull:(id *)a4 facts:(id *)a5;
- (CGAffineTransform)inverseImageTransformForOrientation:(SEL)a3;
- (CGPoint)bitmapPointWithDictionaryPoint:(CGPoint)a3;
- (CGPoint)bitmapPointWithDictionaryPointArray:(id)a3;
- (CGPoint)centroidWithConvexHull:(id *)a3;
- (CGPoint)dictionaryPointWithBitmapPoint:(CGPoint)a3;
- (CGPoint)dictionaryPointWithGlobalBitmapPoint:(CGPoint)a3;
- (CGPoint)globalBitmapPointWithDictionaryPoint:(CGPoint)a3;
- (CGPoint)globalBitmapPointWithDictionaryPointArray:(id)a3;
- (CGPoint)leftHandedTransform:(CGAffineTransform *)a3 ofPoint:(CGPoint)a4;
- (CGPoint)threadCentroid:(id *)a3;
- (CIRedEyeRepair3)initWithExternalBuffer:(char *)a3 subRectangle:(CGRect)a4 rowBytes:(unint64_t)a5 options:(id)a6;
- (float)threadSignedArea:(id *)a3 centroid:(CGPoint)a4;
- (id)dictionaryPointArrayWithBitmapPoint:(CGPoint)a3;
- (id)dictionaryPointArrayWithEyeBitmapPoint:(CGPoint)a3;
- (id)dictionaryPointArrayWithGlobalBitmapPoint:(CGPoint)a3;
- (id)dictionaryRectArrayWithBitmapRect:(id)a3;
- (id)dictionaryRectArrayWithGlobalBitmapRect:(id)a3;
- (id)mutableCopyOfArray:(id)a3;
- (id)repairArray;
- (id)repairWithSide:(int)a3;
- (id)stringWithRER3Error:(int)a3;
- (int)addPoint:(CGPoint)a3 toHull:(id *)a4;
- (int)addPoint:(CGPoint)a3 toShapePoints:(id *)a4;
- (int)analyzeMask:(id *)a3 usingConvexHull:(id *)a4 producingOptimizedMask:(id *)a5;
- (int)attemptClosureOfThreadIndex:(int)a3;
- (int)closeThreadIndex:(int)a3 usingVectorField:(id *)a4;
- (int)color:(id *)a3 underConvexHull:(id *)a4 saturated:(id *)a5;
- (int)connectThreads:(int)a3 drop1:(int)a4 and:(int)a5 drop2:(int)a6;
- (int)connectThreadsInGrid;
- (int)convexHull:(id *)a3 ofOriented:(BOOL)a4 shape:(id *)a5;
- (int)convexHull:(id *)a3 ofOriented:(BOOL)a4 threadIndex:(int)a5;
- (int)copyGridInto:(id *)a3 transform:(CGAffineTransform *)a4 height:(int)a5;
- (int)copyShape:(id *)a3 into:(id *)a4 transform:(CGAffineTransform *)a5 height:(int)a6;
- (int)executeRepairWithRepairDictionary:(id)a3;
- (int)findThreadsInGrid;
- (int)gatherThreadInfo:(id *)a3;
- (int)improvedShape:(id *)a3 withShape:(id *)a4;
- (int)initHull:(id *)a3 withOrientation:(BOOL)a4;
- (int)initShapePoints:(id *)a3 withMaxPoints:(int)a4;
- (int)insertPoint:(CGPoint)a3 andDirection:(CGPoint)a4 intoGrid:(BOOL)a5;
- (int)linkUpPointIndex:(int)a3 toPointIndex:(int)a4;
- (int)lookForPoint:(CGPoint *)a3 onLine:(id)a4 nearestPoint:(CGPoint)a5;
- (int)newShape:(id *)a3;
- (int)newShape:(id *)a3 byInterpolatingBetweenCheckpoints:(id)a4[100] nc:(int)a5 usingVectorField:(id *)a6;
- (int)newThread:(id *)a3;
- (int)nextPointIndexWithPointIndex:(int)a3;
- (int)packGlobalRepairDictionary:(id *)a3 withConvexHull:(id *)a4 facts:(id *)a5;
- (int)prepareBitmapsWithString:(char *)a3;
- (int)prepareMasksWithConvexHull:(id *)a3;
- (int)prepareTransformWithEyeIndex:(int)a3;
- (int)prominenceConvexHull:(id *)a3 facts:(id *)a4;
- (int)recognizeThreadsWinningThreadIndex:(int *)a3 info:(id *)a4;
- (int)renderConvexHull:(id *)a3 distance:(float)a4 fieldToBitmap:(id *)a5;
- (int)renderEyePolygonToBitmap:(id *)a3;
- (int)renderHull:(id *)a3 toBitmap:(id *)a4;
- (int)repairDictionary:(id *)a3 withEyeIndex:(int)a4;
- (int)replacePointAndDirection:(int)a3;
- (int)saveRepairDictionary:(id *)a3 withConvexHull:(id *)a4 facts:(id *)a5;
- (int)shape:(id *)a3 withThreadAtIndex:(int)a4 centroid:(CGPoint)a5;
- (int)transformRepairArray:(CGAffineTransform *)a3;
- (int)updateWithFaceIndex:(int)a3;
- (int)updatedCheckpoint:(CGPoint *)a3 withCheckpoint:(CGPoint)a4 checkpointIndex:(int)a5 angle:(float)a6 width:(int)a7 height:(int)a8 inChannel:(id *)a9 threadIndex:(int)a10 returningEdgeWidth:(float *)a11;
- (int)widenedHull:(id *)a3 withHull:(id *)a4 by:(float)a5;
- (void)autoRepairWithFaceArray:(id)a3;
- (void)computeLengthsAnglesAndDeltaAnglesForShape:(id *)a3;
- (void)condenseFourChannelRecognitionMap:(id *)a3 intoOneChanneMap:(id *)a4;
- (void)dealloc;
- (void)executeRepair:(id)a3;
- (void)forAllGridPointsNear:(int)a3 withinRadius:(float)a4 do:(void *)a5 context:(void *)a6;
- (void)forAllGridThreadsNear:(CGPoint)a3 withinRadius:(float)a4 do:(void *)a5 context:(void *)a6;
- (void)initBitmaps;
- (void)magnitudeMap:(id *)a3 fromGabor:(id *)a4;
- (void)measureHull:(id *)a3 majorAxis:(CGPoint *)a4 majorTo:(CGPoint *)a5 majorDiameter:(float *)a6 minorAxis:(CGPoint *)a7 minorTo:(CGPoint *)a8 minorDiameter:(float *)a9;
- (void)point:(CGPoint)a3 toGridRow:(int *)a4 column:(int *)a5;
- (void)printConnectionHopper:(id *)a3 message:(char *)a4;
- (void)printFaceArray;
- (void)printThreadWithIndex:(int)a3;
- (void)printThreadsOnlyClosed:(BOOL)a3 message:(char *)a4;
- (void)putThreadAtIndex:(int)a3;
- (void)regressionWithPointIndex:(int)a3;
- (void)removeRedundantPointsFromShape:(id *)a3 closerThan:(float)a4;
- (void)removeSmallBumpsFromShape:(id *)a3 center:(CGPoint)a4 threshold:(float)a5;
- (void)removeSpikesFromShape:(id *)a3;
- (void)removeThreadAtIndex:(int)a3;
- (void)repairExternalBuffer;
- (void)slidingWindowAnalysisOfShape:(id *)a3 into:(id *)a4;
- (void)swapHopperElement:(id *)a3 withElement:(id *)a4;
- (void)termBitmaps;
- (void)termGrid;
- (void)termHull:(id *)a3;
- (void)termShapePoints:(id *)a3;
- (void)transformConvexHull:(id *)a3 withTransform:(CGAffineTransform *)a4;
- (void)transformGlobalsWithTransform:(CGAffineTransform *)a3;
@end

@implementation CIRedEyeRepair3

+ ($A3B2E143E1A03423F9FC703C010436DC)bitmapRectWithImageSubRectangle:(CGRect)a3 settings:(id *)a4
{
  width = a3.size.width;
  v5 = rintf(width);
  height = a3.size.height;
  x = a3.origin.x;
  v8 = rintf(x);
  y = a3.origin.y;
  v10 = rintf(y);
  BitmapRect = makeBitmapRect(v8, (a4->var4 - (v10 + rintf(height))), (v8 + v5), (a4->var4 - v10));
  result.var2 = v12;
  result.var3 = HIDWORD(v12);
  result.var0 = BitmapRect;
  result.var1 = HIDWORD(BitmapRect);
  return result;
}

+ (float)yawAngleWithFaceDictionary:(id)a3
{
  [objc_msgSend(a3 objectForKeyedSubscript:{@"leftEyeX", "floatValue"}];
  v5 = v4;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"leftEyeY", "floatValue"}];
  v7 = v6;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"rightEyeX", "floatValue"}];
  v9 = v8;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"rightEyeY", "floatValue"}];
  v11 = v10;
  v12 = (v5 + v9) * 0.5;
  v13 = (v7 + v10) * 0.5;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"mouthCenterX", "floatValue"}];
  v15 = v14;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"mouthCenterY", "floatValue"}];
  v17 = v16;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"noseTipX", "floatValue"}];
  v19 = v18;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"noseTipY", "floatValue"}];
  v20 = 1.0 / sqrtf(((v17 - v13) * (v17 - v13)) + ((v15 - v12) * (v15 - v12)));
  v22 = (((v21 - v17) * -((v15 - v12) * v20)) + ((v19 - v15) * ((v17 - v13) * v20))) / (((v11 - v17) * -((v15 - v12) * v20)) + ((v9 - v15) * ((v17 - v13) * v20)));
  [objc_msgSend(a3 objectForKeyedSubscript:{@"leftEyeLeftX", "floatValue"}];
  v24 = v23;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"leftEyeLeftY", "floatValue"}];
  v26 = v25;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"leftEyeRightX", "floatValue"}];
  v28 = v27;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"leftEyeRightY", "floatValue"}];
  v30 = v29;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"rightEyeLeftX", "floatValue"}];
  v32 = v31;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"rightEyeLeftY", "floatValue"}];
  v34 = v33;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"rightEyeRightX", "floatValue"}];
  v36 = v35;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"rightEyeRightY", "floatValue"}];
  v38 = atan((1.0 - (sqrtf(((v37 - v34) * (v37 - v34)) + ((v36 - v32) * (v36 - v32))) / sqrtf(((v30 - v26) * (v30 - v26)) + ((v28 - v24) * (v28 - v24))))) * 5.5) * 32.0;
  v39 = sin(v22 * 1.3) * 45.0;
  return ((v39 + v38) * 0.5) * 3.14159265 / 180.0;
}

+ (int)bitmapRect:(id *)a3 point:(CGPoint *)a4 polygon:(CGPoint)a5[8] andDistMatrix:(float)a6[4] forEye:(int)a7 inFaceDictionary:(id)a8 settings:(id *)a9
{
  [objc_msgSend(a8 objectForKeyedSubscript:{@"leftEyeX", "floatValue"}];
  v16 = v15;
  [objc_msgSend(a8 objectForKeyedSubscript:{@"leftEyeY", "floatValue"}];
  v18 = v17;
  [objc_msgSend(a8 objectForKeyedSubscript:{@"rightEyeX", "floatValue"}];
  v20 = v19;
  [objc_msgSend(a8 objectForKeyedSubscript:{@"rightEyeY", "floatValue"}];
  v22 = v21 - v18;
  [CIRedEyeRepair3 yawAngleWithFaceDictionary:a8];
  v24 = sqrt(((v22 * v22) + ((v20 - v16) * (v20 - v16)))) / cos(v23);
  if (v24 < 200.0)
  {
    a9->var7 = 0;
  }

  a9->var24 = v24;
  if (a7)
  {
    if (a7 != 1)
    {
      return 53;
    }

    v95 = a3;
    v96 = a4;
    v115 = @"rightEyelidSWY";
    v117 = a9;
    v111 = @"rightEyelidLowerY";
    v113 = @"rightEyelidSWX";
    v107 = @"rightEyelidSEY";
    v109 = @"rightEyelidLowerX";
    v103 = @"rightEyeRightY";
    v105 = @"rightEyelidSEX";
    v99 = @"rightEyelidNEY";
    v101 = @"rightEyeRightX";
    v97 = @"rightEyelidNEX";
    v25 = @"rightEyelidUpperY";
    v26 = @"rightEyelidUpperX";
    v27 = @"rightEyelidNWY";
    v28 = @"rightEyelidNWX";
    v29 = @"rightEyeLeftY";
    v30 = @"rightEyeLeftX";
    v31 = @"rightEyeY";
    v32 = @"rightEyeX";
  }

  else
  {
    v95 = a3;
    v96 = a4;
    v115 = @"leftEyelidSWY";
    v117 = a9;
    v111 = @"leftEyelidLowerY";
    v113 = @"leftEyelidSWX";
    v107 = @"leftEyelidSEY";
    v109 = @"leftEyelidLowerX";
    v103 = @"leftEyeRightY";
    v105 = @"leftEyelidSEX";
    v99 = @"leftEyelidNEY";
    v101 = @"leftEyeRightX";
    v97 = @"leftEyelidNEX";
    v25 = @"leftEyelidUpperY";
    v26 = @"leftEyelidUpperX";
    v27 = @"leftEyelidNWY";
    v28 = @"leftEyelidNWX";
    v29 = @"leftEyeLeftY";
    v30 = @"leftEyeLeftX";
    v31 = @"leftEyeY";
    v32 = @"leftEyeX";
  }

  [objc_msgSend(a8 objectForKeyedSubscript:{v32), "floatValue"}];
  v92 = v33;
  [objc_msgSend(a8 objectForKeyedSubscript:{v31), "floatValue"}];
  v91 = v34;
  [objc_msgSend(a8 objectForKeyedSubscript:{v30), "floatValue"}];
  v36 = v35;
  [objc_msgSend(a8 objectForKeyedSubscript:{v29), "floatValue"}];
  v38 = v37;
  [objc_msgSend(a8 objectForKeyedSubscript:{v28), "floatValue"}];
  v94 = v39;
  [objc_msgSend(a8 objectForKeyedSubscript:{v27), "floatValue"}];
  v93 = v40;
  [objc_msgSend(a8 objectForKeyedSubscript:{v26), "floatValue"}];
  v118 = v41;
  [objc_msgSend(a8 objectForKeyedSubscript:{v25), "floatValue"}];
  v43 = v42;
  [objc_msgSend(a8 objectForKeyedSubscript:{v97), "floatValue"}];
  v98 = v44;
  [objc_msgSend(a8 objectForKeyedSubscript:{v99), "floatValue"}];
  v100 = v45;
  [objc_msgSend(a8 objectForKeyedSubscript:{v101), "floatValue"}];
  v47 = v46;
  [objc_msgSend(a8 objectForKeyedSubscript:{v103), "floatValue"}];
  v49 = v48;
  [objc_msgSend(a8 objectForKeyedSubscript:{v105), "floatValue"}];
  v106 = v50;
  [objc_msgSend(a8 objectForKeyedSubscript:{v107), "floatValue"}];
  v108 = v51;
  [objc_msgSend(a8 objectForKeyedSubscript:{v109), "floatValue"}];
  v53 = v52;
  [objc_msgSend(a8 objectForKeyedSubscript:{v111), "floatValue"}];
  v55 = v54;
  [objc_msgSend(a8 objectForKeyedSubscript:{v113), "floatValue"}];
  v104 = v56;
  [objc_msgSend(a8 objectForKeyedSubscript:{v115), "floatValue"}];
  v102 = v57;
  v114 = v47;
  v58 = v47 - v36;
  v112 = v49;
  v59 = v49 - v38;
  v60 = atan2(-(v49 - v38), v58);
  v61 = sqrtf((v59 * v59) + (v58 * v58));
  v110 = v53;
  v116 = v43;
  v62 = vabds_f32((((v53 - v36) * v59) - (v58 * (v55 - v38))) / v61, (((v118 - v36) * v59) - (v58 * (v43 - v38))) / v61);
  v63 = (v61 * 0.5) / v62;
  v64 = __sincos_stret(v60);
  sinval = v64.__sinval;
  cosval = v64.__cosval;
  *a6 = cosval;
  a6[1] = -sinval;
  a6[2] = v63 * sinval;
  a6[3] = v63 * cosval;
  var7 = v117->var7;
  if (var7 > 3)
  {
    return 17;
  }

  result = 0;
  v69 = flt_19CF28F20[var7];
  v70 = flt_19CF28F30[var7];
  v71 = v62 * 1.8;
  v72 = v61 * 1.3;
  v73 = 1.0 / fmaxf(v61, 0.00001);
  v117->var23 = v69;
  v74 = v72 * 0.5;
  v75 = (v58 * v73);
  v76 = v92 - v74 * v75;
  v77 = v71 * 0.5;
  v78 = (v59 * v73);
  v79 = v76 - v77 * v78;
  v80 = v91 - v74 * v78;
  *v81.i64 = -(v58 * v73);
  v82 = v80 - v77 * *v81.i64;
  v83 = v92 + v74 * v75;
  v84 = v83 - v77 * v78;
  v85 = v91 + v74 * v78;
  v86 = v85 - v77 * *v81.i64;
  v87 = v76 + v77 * v78;
  v88 = v80 + v77 * *v81.i64;
  v89 = v83 + v77 * v78;
  v90 = v85 + v77 * *v81.i64;
  *&v85 = v79;
  v81.f32[0] = v84;
  *&v78 = v87;
  *&v89 = v89;
  *&v79 = fminf(*&v85, fminf(v81.f32[0], fminf(*&v78, *&v89)));
  *&v85 = fmaxf(*&v85, fmaxf(v81.f32[0], fmaxf(*&v78, *&v89)));
  *&v89 = v82;
  v81.f32[0] = v86;
  *&v78 = v88;
  *&v90 = v90;
  *&v87 = fminf(*&v89, fminf(v81.f32[0], fminf(*&v78, *&v90)));
  *&v90 = fmaxf(*&v89, fmaxf(v81.f32[0], fmaxf(*&v78, *&v90)));
  v81.f32[0] = floorf(*&v87 * v69);
  v81.i32[1] = ceilf(*&v90 * v69);
  v81.i64[1] = __PAIR64__(COERCE_UNSIGNED_INT(ceilf(*&v85 * v69)), COERCE_UNSIGNED_INT(floorf(*&v79 * v69)));
  *v95 = vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(v81, v70)));
  v96->x = v92;
  v96->y = v91;
  a5->x = v36;
  a5->y = v38;
  a5[1].x = v94;
  a5[1].y = v93;
  a5[2].x = v118;
  a5[2].y = v116;
  a5[3].x = v98;
  a5[3].y = v100;
  a5[4].x = v114;
  a5[4].y = v112;
  a5[5].x = v106;
  a5[5].y = v108;
  a5[6].x = v110;
  a5[6].y = v55;
  a5[7].x = v104;
  a5[7].y = v102;
  return result;
}

+ (int)faceContext:(id *)a3 withFaceArray:(id)a4 index:(int)a5 settings:(id *)a6
{
  memset(__src, 0, 376);
  v8 = [a4 objectAtIndexedSubscript:a5];
  result = [CIRedEyeRepair3 bitmapRect:&__src[3] point:&__src[1] polygon:&__src[7] andDistMatrix:&__src[5] forEye:0 inFaceDictionary:v8 settings:a6];
  if (!result)
  {
    result = [CIRedEyeRepair3 bitmapRect:&__src[4] point:&__src[2] polygon:&__src[15] andDistMatrix:&__src[6] forEye:1 inFaceDictionary:v8 settings:a6];
    if (!result)
    {
      v10 = unionBitmapRects(__src[3].i64[0], __src[3].i64[1], __src[4].i64[0]);
      v11 = 0;
      v13.i64[0] = __PAIR64__(v12, v10);
      __src[0].i64[0] = v10;
      __src[0].i64[1] = v12;
      v14 = vzip1q_s32(v13, v13);
      v15.f64[0] = v12;
      *__src[1].i64 = *__src[1].i64 - v12;
      *&__src[1].i64[1] = *&__src[1].i64[1] - v10;
      *__src[2].i64 = *__src[2].i64 - v12;
      *&__src[2].i64[1] = *&__src[2].i64[1] - v10;
      __src[3] = vsubq_s32(__src[3], v14);
      __src[4] = vsubq_s32(__src[4], v14);
      v15.f64[1] = v10;
      do
      {
        v16 = &__src[v11];
        v17 = vsubq_f64(__src[v11 + 8], v15);
        v16[7] = vsubq_f64(__src[v11 + 7], v15);
        v16[8] = v17;
        v18 = vsubq_f64(__src[v11 + 16], v15);
        v16[15] = vsubq_f64(__src[v11 + 15], v15);
        v16[16] = v18;
        v11 += 2;
      }

      while (v11 != 8);
      memcpy(a3, __src, sizeof($B29CA33EEFC607F4C0219A205B6CAFC6));
      return 0;
    }
  }

  return result;
}

+ ($807B2EF8CC2A3BA0CBD71F9CA1C0D669)settingsWithOptions:(SEL)a3
{
  *&retstr->var26 = 0;
  *&retstr->var25.c = 0u;
  *&retstr->var25.tx = 0u;
  *&retstr->var21 = 0u;
  *&retstr->var25.a = 0u;
  *&retstr->var18.origin.y = 0u;
  *&retstr->var18.size.height = 0u;
  *&retstr->var12 = 0u;
  *&retstr->var16 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var0 = 0u;
  v6 = [a4 objectForKeyedSubscript:@"downsampleType"];
  if (v6)
  {
    v7 = [v6 intValue];
  }

  else
  {
    v7 = 1;
  }

  retstr->var7 = v7;
  v8 = [a4 objectForKeyedSubscript:@"downsampleOversizeX"];
  if (v8)
  {
    [v8 floatValue];
  }

  else
  {
    v9 = 1.3;
  }

  retstr->var8 = v9;
  v10 = [a4 objectForKeyedSubscript:@"downsampleOversizeY"];
  if (v10)
  {
    [v10 floatValue];
  }

  else
  {
    v11 = 1.8;
  }

  retstr->var9 = v11;
  v12 = [a4 objectForKeyedSubscript:@"gradientChannel"];
  if (v12)
  {
    v13 = [v12 intValue];
  }

  else
  {
    v13 = 6;
  }

  retstr->var10 = v13;
  v14 = [a4 objectForKeyedSubscript:@"edgeFindingChannel"];
  if (v14)
  {
    v15 = [v14 intValue];
  }

  else
  {
    v15 = 6;
  }

  retstr->var11 = v15;
  v16 = [a4 objectForKeyedSubscript:@"minMagnitude"];
  if (v16)
  {
    [v16 floatValue];
  }

  else
  {
    v17 = 0.1;
  }

  retstr->var12 = v17;
  v18 = [a4 objectForKeyedSubscript:@"regressionRadius"];
  if (v18)
  {
    [v18 floatValue];
  }

  else
  {
    v19 = 2.5;
  }

  retstr->var13 = v19;
  v20 = [a4 objectForKeyedSubscript:@"capture"];
  if (v20)
  {
    [v20 floatValue];
  }

  else
  {
    v21 = 3.14;
  }

  retstr->var14 = v21;
  v22 = [a4 objectForKeyedSubscript:@"alignmentTolerance"];
  if (v22)
  {
    [v22 floatValue];
  }

  else
  {
    v23 = 0.72;
  }

  retstr->var15 = v23;
  v24 = [a4 objectForKeyedSubscript:@"connectThreshold"];
  if (v24)
  {
    [v24 floatValue];
  }

  else
  {
    v25 = 7.0;
  }

  retstr->var16 = v25;
  v26 = [a4 objectForKeyedSubscript:@"forceFail"];
  if (v26)
  {
    LOBYTE(v26) = [v26 BOOLValue];
  }

  retstr->var17 = v26;
  v27 = [a4 objectForKeyedSubscript:@"orientation"];
  if (v27)
  {
    v28 = [v27 intValue];
  }

  else
  {
    v28 = 1;
  }

  retstr->var19 = v28;
  v29 = [a4 objectForKeyedSubscript:@"imageExtent"];
  if (v29)
  {
    v30 = v29;
    [objc_msgSend(v29 objectAtIndexedSubscript:{0), "floatValue"}];
    v32 = v31;
    [objc_msgSend(v30 objectAtIndexedSubscript:{1), "floatValue"}];
    v34 = v33;
    [objc_msgSend(v30 objectAtIndexedSubscript:{2), "floatValue"}];
    v36 = v35;
    [objc_msgSend(v30 objectAtIndexedSubscript:{3), "floatValue"}];
    v38 = v37;
  }

  else
  {
    v32 = 0.0;
    v34 = 0.0;
    v36 = 0.0;
    v38 = 0.0;
  }

  retstr->var18.origin.x = v32;
  retstr->var18.origin.y = v34;
  retstr->var18.size.width = v36;
  retstr->var18.size.height = v38;
  v39 = [a4 objectForKeyedSubscript:@"cameraModel"];
  if (v39)
  {
    v40 = v39;
  }

  else
  {
    v40 = @"Unknown";
  }

  result = [(__CFString *)v40 isEqualToString:@"iPhone X"];
  if (result)
  {
    v42 = 1;
  }

  else
  {
    result = [(__CFString *)v40 isEqualToString:@"iPhone 4"];
    if ((result & 1) != 0 || (result = [(__CFString *)v40 isEqualToString:@"iPhone"], result))
    {
      v42 = 2;
    }

    else
    {
      result = [(__CFString *)v40 containsString:@"KODAK"];
      if (result)
      {
        v42 = 3;
      }

      else
      {
        v42 = 4;
      }
    }
  }

  retstr->var20 = v42;
  v43 = v36;
  v44 = v38;
  retstr->var0 = v43;
  retstr->var1 = v44;
  retstr->var2 = 1.0 / v43;
  retstr->var3 = 1.0 / v44;
  v45 = rintf(v44);
  retstr->var4 = v45;
  retstr->var26 = v45;
  return result;
}

- (int)updateWithFaceIndex:(int)a3
{
  self->S.faceIndex = a3;
  result = [CIRedEyeRepair3 faceContext:&self->FC withFaceArray:self->faceArray index:*&a3 settings:&self->S];
  if (!result)
  {
    x = self->S.inputImageExtent.origin.x;
    y = self->S.inputImageExtent.origin.y;
    height = self->S.inputImageExtent.size.height;
    minrow = self->FC.FR.minrow;
    maxrow = self->FC.FR.maxrow;
    mincol = self->FC.FR.mincol;
    maxcol = self->FC.FR.maxcol;
    self->ioffx = mincol;
    self->ioffy = minrow;
    self->ROIRect.origin.x = x + mincol;
    self->ROIRect.origin.y = y + height - maxrow;
    self->ROIRect.size.width = (maxcol - mincol);
    self->ROIRect.size.height = (maxrow - minrow);
  }

  return result;
}

- (void)repairExternalBuffer
{
  v2 = *&self->repairRect.minrow;
  v3 = HIDWORD(v2);
  v4 = *&self->repairRect.mincol;
  v5 = SHIDWORD(v4) <= v4 || SHIDWORD(v2) <= v2;
  if (v5 || __PAIR64__(HIDWORD(v2) - v2, HIDWORD(v4) - v4) != *&self->repairMap.width)
  {
    return;
  }

  p_repairMap = &self->repairMap;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  if (self->FC.FR.mincol > v4 || self->FC.FR.minrow > v2 || self->FC.FR.maxcol < SHIDWORD(v4) || self->FC.FR.maxrow < SHIDWORD(v2))
  {
    v8 = offsetBitmapRect(*&self->FC.FR.minrow, *&self->FC.FR.mincol, -v4, -v2);
    v10 = v9;
    v11 = offsetBitmapRect(v2, v4, -v4, -v2);
    v12 = intersectBitmapRects(v8, v10, v11);
    v14 = v12;
    v15 = v13;
    if (SHIDWORD(v13) <= v13 || SHIDWORD(v12) <= v12)
    {
      return;
    }

    constructSliceBitmap(&self->repairMap, v40, v12, v13);
    v17 = offsetBitmapRect(v14, v15, v4, v2);
    v4 = v18;
    v3 = HIDWORD(v17);
    p_repairMap = v40;
    LODWORD(v2) = v17;
  }

  if (self->subRectangle.mincol <= v4 && v2 >= self->subRectangle.minrow && self->subRectangle.maxcol >= SHIDWORD(v4) && v3 <= self->subRectangle.maxrow)
  {
    baseAddress = p_repairMap->baseAddress;
    samplesPerPixel = p_repairMap->samplesPerPixel;
    width = p_repairMap->width;
    p_height = &p_repairMap->height;
    height = p_repairMap->height;
    v24 = p_height[1];
    v25 = offsetBitmapRect(v2 | (v3 << 32), v4, -self->FC.FR.mincol, -self->FC.FR.minrow);
    if (height >= 1)
    {
      v27 = 0;
      rowSamples = self->fullBitmap.rowSamples;
      v29 = self->fullBitmap.samplesPerPixel;
      v30 = (baseAddress + 1);
      v31 = &self->fullBitmap.baseAddress[v29 * v26 + 2 + (rowSamples * v25)];
      do
      {
        if (width >= 1)
        {
          v32 = v31;
          v33 = v30;
          v34 = width;
          do
          {
            v35 = v33[2] | (v33[2] << 8);
            v36 = *(v32 - 1);
            v37 = *v32;
            v38 = (*v33 - v36) * v35 + 0x8000;
            v39 = (*(v33 - 1) - v37) * v35 + 0x8000;
            *(v32 - 2) += ((v33[1] - *(v32 - 2)) * v35 + 0x8000) >> 16;
            *(v32 - 1) = v36 + BYTE2(v38);
            *v32 = v37 + BYTE2(v39);
            v33 += samplesPerPixel;
            v32 += v29;
            --v34;
          }

          while (v34);
        }

        ++v27;
        v30 += v24;
        v31 += rowSamples;
      }

      while (v27 != height);
    }
  }
}

- ($A3B2E143E1A03423F9FC703C010436DC)repairRect
{
  v2 = *&self->repairRect.mincol;
  v3 = *&self->repairRect.minrow;
  result.var2 = v2;
  result.var3 = HIDWORD(v2);
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  return result;
}

- (CGPoint)bitmapPointWithDictionaryPoint:(CGPoint)a3
{
  v3 = a3.x * self->S.xf;
  yf = self->S.yf;
  v5 = a3.y * yf;
  v6 = (v3 - self->ioffx);
  v7 = ((yf - v5) - self->ioffy);
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)globalBitmapPointWithDictionaryPoint:(CGPoint)a3
{
  v3 = a3.x * self->S.xf;
  yf = self->S.yf;
  v5 = a3.y * yf;
  v6 = v3;
  v7 = (yf - v5);
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)bitmapPointWithDictionaryPointArray:(id)a3
{
  [objc_msgSend(a3 objectAtIndexedSubscript:{0), "floatValue"}];
  v6 = v5 * self->S.xf;
  [objc_msgSend(a3 objectAtIndexedSubscript:{1), "floatValue"}];
  v8 = (self->S.yf - (v7 * self->S.yf)) - self->ioffy;
  v9 = (v6 - self->ioffx);
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)globalBitmapPointWithDictionaryPointArray:(id)a3
{
  [objc_msgSend(a3 objectAtIndexedSubscript:{0), "floatValue"}];
  v6 = v5 * self->S.xf;
  [objc_msgSend(a3 objectAtIndexedSubscript:{1), "floatValue"}];
  v8 = self->S.yf - (v7 * self->S.yf);
  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)dictionaryPointWithBitmapPoint:(CGPoint)a3
{
  v3 = a3.x + self->ioffx;
  v4 = a3.y + self->ioffy;
  v5 = (self->S.xfi * v3);
  v6 = (self->S.yfi * (self->S.yf - v4));
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)dictionaryPointWithGlobalBitmapPoint:(CGPoint)a3
{
  x = a3.x;
  y = a3.y;
  v5 = (self->S.xfi * x);
  v6 = ((self->S.yf - y) * self->S.yfi);
  result.y = v6;
  result.x = v5;
  return result;
}

- (id)dictionaryPointArrayWithEyeBitmapPoint:(CGPoint)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = 136;
  if (!self->S.side)
  {
    v3 = 120;
  }

  v4 = 144;
  if (!self->S.side)
  {
    v4 = 128;
  }

  v5 = a3.x + (self->FC.FR.mincol + *(&self->super.isa + v4));
  *&v5 = v5;
  v6 = a3.y + (self->FC.FR.minrow + *(&self->super.isa + v3));
  *&v5 = self->S.xfi * *&v5;
  v7 = self->S.yfi * (self->S.yf - v6);
  v10[0] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  *&v8 = v7;
  v10[1] = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
}

- (id)dictionaryPointArrayWithBitmapPoint:(CGPoint)a3
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = a3.x + self->FC.FR.mincol;
  *&v3 = v3;
  v4 = a3.y + self->FC.FR.minrow;
  *&v3 = self->S.xfi * *&v3;
  v5 = self->S.yfi * (self->S.yf - v4);
  v8[0] = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  *&v6 = v5;
  v8[1] = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
}

- (id)dictionaryPointArrayWithGlobalBitmapPoint:(CGPoint)a3
{
  v7[2] = *MEMORY[0x1E69E9840];
  *&a3.x = a3.x;
  y = a3.y;
  *&a3.x = self->S.xfi * *&a3.x;
  v4 = (self->S.yf - y) * self->S.yfi;
  v7[0] = [MEMORY[0x1E696AD98] numberWithFloat:a3.x];
  *&v5 = v4;
  v7[1] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
}

- ($A3B2E143E1A03423F9FC703C010436DC)bitmapRectWithDictionaryRectArray:(id)a3
{
  [objc_msgSend(a3 objectAtIndexedSubscript:{0), "floatValue"}];
  v6 = rintf(v5 * self->S.xf);
  [objc_msgSend(a3 objectAtIndexedSubscript:{1), "floatValue"}];
  v8 = rintf(v7 * self->S.yf);
  [objc_msgSend(a3 objectAtIndexedSubscript:{2), "floatValue"}];
  v10 = rintf(v9 * self->S.xf);
  [objc_msgSend(a3 objectAtIndexedSubscript:{3), "floatValue"}];
  BitmapRect = makeBitmapRect(v6, (self->S.ify - (rintf(v11 * self->S.yf) + v8)), (v10 + v6), (self->S.ify - v8));
  v14 = -self->ioffx;
  v15 = -self->ioffy;

  v16 = offsetBitmapRect(BitmapRect, v13, v14, v15);
  result.var2 = v17;
  result.var3 = HIDWORD(v17);
  result.var0 = v16;
  result.var1 = HIDWORD(v16);
  return result;
}

- ($A3B2E143E1A03423F9FC703C010436DC)globalBitmapRectWithDictionaryRectArray:(id)a3
{
  [objc_msgSend(a3 objectAtIndexedSubscript:{0), "floatValue"}];
  v6 = rintf(v5 * self->S.xf);
  [objc_msgSend(a3 objectAtIndexedSubscript:{1), "floatValue"}];
  v8 = rintf(v7 * self->S.yf);
  [objc_msgSend(a3 objectAtIndexedSubscript:{2), "floatValue"}];
  v10 = rintf(v9 * self->S.xf);
  [objc_msgSend(a3 objectAtIndexedSubscript:{3), "floatValue"}];
  v12 = rintf(v11 * self->S.yf);
  ify = self->S.ify;

  BitmapRect = makeBitmapRect(v6, (ify - (v12 + v8)), (v10 + v6), (ify - v8));
  result.var2 = v15;
  result.var3 = HIDWORD(v15);
  result.var0 = BitmapRect;
  result.var1 = HIDWORD(BitmapRect);
  return result;
}

- (id)dictionaryRectArrayWithBitmapRect:(id)a3
{
  v13[4] = *MEMORY[0x1E69E9840];
  xfi = self->S.xfi;
  *&v3 = xfi * (self->ioffx + a3.var2);
  yfi = self->S.yfi;
  v6 = yfi * (self->S.ify - (self->ioffy + a3.var1));
  v7 = xfi * (a3.var3 - a3.var2);
  v8 = yfi * (a3.var1 - a3.var0);
  v13[0] = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  *&v9 = v6;
  v13[1] = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  *&v10 = v7;
  v13[2] = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  *&v11 = v8;
  v13[3] = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
}

- (id)dictionaryRectArrayWithGlobalBitmapRect:(id)a3
{
  v13[4] = *MEMORY[0x1E69E9840];
  xfi = self->S.xfi;
  *&v3 = xfi * a3.var2;
  yfi = self->S.yfi;
  v6 = yfi * (self->S.ify - a3.var1);
  v7 = xfi * (a3.var3 - a3.var2);
  v8 = yfi * (a3.var1 - a3.var0);
  v13[0] = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  *&v9 = v6;
  v13[1] = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  *&v10 = v7;
  v13[2] = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  *&v11 = v8;
  v13[3] = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
}

- (int)saveRepairDictionary:(id *)a3 withConvexHull:(id *)a4 facts:(id *)a5
{
  v103[4] = *MEMORY[0x1E69E9840];
  [(CIRedEyeRepair3 *)self centroidWithConvexHull:a4];
  v9 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithEyeBitmapPoint:?];
  v10 = [(CIRedEyeRepair3 *)self dictionaryRectArrayWithGlobalBitmapRect:*&self->FC.FR.minrow, *&self->FC.FR.mincol];
  if (!v10)
  {
    return 8;
  }

  v11 = v10;
  v12 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithBitmapPoint:self->FC.leftEye.x, self->FC.leftEye.y];
  if (!v12)
  {
    return 8;
  }

  v13 = v12;
  v14 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithBitmapPoint:self->FC.rightEye.x, self->FC.rightEye.y];
  if (!v14)
  {
    return 8;
  }

  v15 = v14;
  v16 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithBitmapPoint:self->FC.LPoly[0].x, self->FC.LPoly[0].y];
  if (!v16)
  {
    return 8;
  }

  v17 = v16;
  v18 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithBitmapPoint:self->FC.LPoly[1].x, self->FC.LPoly[1].y];
  if (!v18)
  {
    return 8;
  }

  v19 = v18;
  v20 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithBitmapPoint:self->FC.LPoly[2].x, self->FC.LPoly[2].y];
  if (!v20)
  {
    return 8;
  }

  v92 = v20;
  v21 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithBitmapPoint:self->FC.LPoly[3].x, self->FC.LPoly[3].y];
  if (!v21)
  {
    return 8;
  }

  v91 = v21;
  v22 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithBitmapPoint:self->FC.LPoly[4].x, self->FC.LPoly[4].y];
  if (!v22)
  {
    return 8;
  }

  v90 = v22;
  v23 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithBitmapPoint:self->FC.LPoly[5].x, self->FC.LPoly[5].y];
  if (!v23)
  {
    return 8;
  }

  v89 = v23;
  v24 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithBitmapPoint:self->FC.LPoly[6].x, self->FC.LPoly[6].y];
  if (!v24)
  {
    return 8;
  }

  v88 = v24;
  v25 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithBitmapPoint:self->FC.LPoly[7].x, self->FC.LPoly[7].y];
  if (!v25)
  {
    return 8;
  }

  v87 = v25;
  v26 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithBitmapPoint:self->FC.RPoly[0].x, self->FC.RPoly[0].y];
  if (!v26)
  {
    return 8;
  }

  v86 = v26;
  v27 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithBitmapPoint:self->FC.RPoly[1].x, self->FC.RPoly[1].y];
  if (!v27)
  {
    return 8;
  }

  v85 = v27;
  v28 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithBitmapPoint:self->FC.RPoly[2].x, self->FC.RPoly[2].y];
  if (!v28)
  {
    return 8;
  }

  v84 = v28;
  v29 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithBitmapPoint:self->FC.RPoly[3].x, self->FC.RPoly[3].y];
  if (!v29)
  {
    return 8;
  }

  v83 = v29;
  v30 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithBitmapPoint:self->FC.RPoly[4].x, self->FC.RPoly[4].y];
  if (!v30)
  {
    return 8;
  }

  v82 = v30;
  v31 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithBitmapPoint:self->FC.RPoly[5].x, self->FC.RPoly[5].y];
  if (!v31)
  {
    return 8;
  }

  v81 = v31;
  v32 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithBitmapPoint:self->FC.RPoly[6].x, self->FC.RPoly[6].y];
  if (!v32)
  {
    return 8;
  }

  v80 = v32;
  v79 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithBitmapPoint:self->FC.RPoly[7].x, self->FC.RPoly[7].y];
  if (!v79)
  {
    return 8;
  }

  v78 = [(CIRedEyeRepair3 *)self dictionaryRectArrayWithBitmapRect:*&self->FC.LR.minrow, *&self->FC.LR.mincol];
  if (!v78)
  {
    return 8;
  }

  v77 = [(CIRedEyeRepair3 *)self dictionaryRectArrayWithBitmapRect:*&self->FC.RR.minrow, *&self->FC.RR.mincol];
  if (!v77)
  {
    return 8;
  }

  *&v33 = self->FC.leftDistMatrix[0];
  v103[0] = [MEMORY[0x1E696AD98] numberWithFloat:v33];
  *&v34 = self->FC.leftDistMatrix[1];
  v103[1] = [MEMORY[0x1E696AD98] numberWithFloat:v34];
  *&v35 = self->FC.leftDistMatrix[2];
  v103[2] = [MEMORY[0x1E696AD98] numberWithFloat:v35];
  *&v36 = self->FC.leftDistMatrix[3];
  v103[3] = [MEMORY[0x1E696AD98] numberWithFloat:v36];
  v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:4];
  if (!v76)
  {
    return 8;
  }

  *&v37 = self->FC.rightDistMatrix[0];
  v102[0] = [MEMORY[0x1E696AD98] numberWithFloat:v37];
  *&v38 = self->FC.rightDistMatrix[1];
  v102[1] = [MEMORY[0x1E696AD98] numberWithFloat:v38];
  *&v39 = self->FC.rightDistMatrix[2];
  v102[2] = [MEMORY[0x1E696AD98] numberWithFloat:v39];
  *&v40 = self->FC.rightDistMatrix[3];
  v102[3] = [MEMORY[0x1E696AD98] numberWithFloat:v40];
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:4];
  if (!v41)
  {
    return 8;
  }

  v100[0] = @"faceRect";
  v100[1] = @"leftEye";
  v101[0] = v11;
  v101[1] = v13;
  v100[2] = @"rightEye";
  v100[3] = @"leftPoly0";
  v101[2] = v15;
  v101[3] = v17;
  v100[4] = @"leftPoly1";
  v100[5] = @"leftPoly2";
  v101[4] = v19;
  v101[5] = v92;
  v100[6] = @"leftPoly3";
  v100[7] = @"leftPoly4";
  v101[6] = v91;
  v101[7] = v90;
  v100[8] = @"leftPoly5";
  v100[9] = @"leftPoly6";
  v101[8] = v89;
  v101[9] = v88;
  v100[10] = @"leftPoly7";
  v100[11] = @"rightPoly0";
  v101[10] = v87;
  v101[11] = v86;
  v100[12] = @"rightPoly1";
  v100[13] = @"rightPoly2";
  v101[12] = v85;
  v101[13] = v84;
  v100[14] = @"rightPoly3";
  v100[15] = @"rightPoly4";
  v101[14] = v83;
  v101[15] = v82;
  v100[16] = @"rightPoly5";
  v100[17] = @"rightPoly6";
  v101[16] = v81;
  v101[17] = v80;
  v100[18] = @"rightPoly7";
  v100[19] = @"leftRect";
  v101[18] = v79;
  v101[19] = v78;
  v100[20] = @"rightRect";
  v100[21] = @"leftDistMatrix";
  v101[20] = v77;
  v101[21] = v76;
  v100[22] = @"rightDistMatrix";
  v101[22] = v41;
  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:23];
  if (!v42)
  {
    return 8;
  }

  v43 = v42;
  v44 = [MEMORY[0x1E695DF70] array];
  if (!v44)
  {
    return 8;
  }

  v45 = v44;
  if (a4->var1 >= 1)
  {
    v46 = 0;
    v47 = 0;
    do
    {
      [v45 addObject:{-[CIRedEyeRepair3 dictionaryPointArrayWithEyeBitmapPoint:](self, "dictionaryPointArrayWithEyeBitmapPoint:", a4->var3[v46].x, a4->var3[v46].y)}];
      ++v47;
      ++v46;
    }

    while (v47 < a4->var1);
  }

  v98[0] = @"counterClockwise";
  v99[0] = [MEMORY[0x1E696AD98] numberWithBool:a4->var0];
  v98[1] = @"nPoints";
  v99[1] = [MEMORY[0x1E696AD98] numberWithInt:a4->var1];
  v98[2] = @"maxPoints";
  v48 = [MEMORY[0x1E696AD98] numberWithInt:a4->var2];
  v98[3] = @"hullBody";
  v99[2] = v48;
  v99[3] = v45;
  v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v99 forKeys:v98 count:4];
  if (!v49)
  {
    return 8;
  }

  v50 = v49;
  v96[0] = @"downsampleType";
  v97[0] = [MEMORY[0x1E696AD98] numberWithInt:self->S.downsampleType];
  v96[1] = @"downsampleOversizeX";
  *&v51 = self->S.downsampleOversizeX;
  v97[1] = [MEMORY[0x1E696AD98] numberWithFloat:v51];
  v96[2] = @"downsampleOversizeY";
  *&v52 = self->S.downsampleOversizeY;
  v97[2] = [MEMORY[0x1E696AD98] numberWithFloat:v52];
  v96[3] = @"gradientChannel";
  v97[3] = [MEMORY[0x1E696AD98] numberWithInt:self->S.gradientChannel];
  v96[4] = @"edgeFindingChannel";
  v97[4] = [MEMORY[0x1E696AD98] numberWithInt:self->S.edgeFindingChannel];
  v96[5] = @"minMagnitude";
  *&v53 = self->S.minMagnitude;
  v97[5] = [MEMORY[0x1E696AD98] numberWithFloat:v53];
  v96[6] = @"regressionRadius";
  *&v54 = self->S.regressionRadius;
  v97[6] = [MEMORY[0x1E696AD98] numberWithFloat:v54];
  v96[7] = @"capture";
  *&v55 = self->S.capture;
  v97[7] = [MEMORY[0x1E696AD98] numberWithFloat:v55];
  v96[8] = @"alignmentTolerance";
  *&v56 = self->S.alignmentTolerance;
  v97[8] = [MEMORY[0x1E696AD98] numberWithFloat:v56];
  v96[9] = @"connectThreshold";
  *&v57 = self->S.connectThreshold;
  v97[9] = [MEMORY[0x1E696AD98] numberWithFloat:v57];
  v96[10] = @"faceIndex";
  v97[10] = [MEMORY[0x1E696AD98] numberWithInt:self->S.faceIndex];
  v96[11] = @"side";
  v97[11] = [MEMORY[0x1E696AD98] numberWithInt:self->S.side];
  v96[12] = @"scale";
  *&v58 = self->S.scale;
  v97[12] = [MEMORY[0x1E696AD98] numberWithFloat:v58];
  v96[13] = @"IOD";
  *&v59 = self->S.IOD;
  v97[13] = [MEMORY[0x1E696AD98] numberWithFloat:v59];
  v96[14] = @"transform";
  v95[0] = [MEMORY[0x1E696AD98] numberWithDouble:self->S.transform.a];
  v95[1] = [MEMORY[0x1E696AD98] numberWithDouble:self->S.transform.b];
  v95[2] = [MEMORY[0x1E696AD98] numberWithDouble:self->S.transform.c];
  v95[3] = [MEMORY[0x1E696AD98] numberWithDouble:self->S.transform.d];
  v95[4] = [MEMORY[0x1E696AD98] numberWithDouble:self->S.transform.tx];
  v95[5] = [MEMORY[0x1E696AD98] numberWithDouble:self->S.transform.ty];
  v97[14] = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:6];
  v96[15] = @"height";
  v97[15] = [MEMORY[0x1E696AD98] numberWithInt:self->S.height];
  v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:v96 count:16];
  if (!v60)
  {
    return 8;
  }

  v93[0] = @"context";
  v93[1] = @"convexHull";
  v94[0] = v43;
  v94[1] = v50;
  v94[2] = v60;
  v93[2] = @"settings";
  v93[3] = @"xf";
  *&v61 = self->S.xf;
  v94[3] = [MEMORY[0x1E696AD98] numberWithFloat:v61];
  v93[4] = @"yf";
  *&v62 = self->S.yf;
  v94[4] = [MEMORY[0x1E696AD98] numberWithFloat:v62];
  v93[5] = @"ioffx";
  v94[5] = [MEMORY[0x1E696AD98] numberWithInt:self->S.ioffx];
  v93[6] = @"ioffy";
  v94[6] = [MEMORY[0x1E696AD98] numberWithInt:self->S.ioffy];
  v93[7] = @"px";
  v94[7] = [v9 objectAtIndexedSubscript:0];
  v93[8] = @"py";
  v94[8] = [v9 objectAtIndexedSubscript:1];
  v93[9] = @"pointX";
  v94[9] = [v9 objectAtIndexedSubscript:0];
  v93[10] = @"pointY";
  v94[10] = [v9 objectAtIndexedSubscript:1];
  v93[11] = @"skinval";
  *&v63 = self->M.skinval;
  v94[11] = [MEMORY[0x1E696AD98] numberWithFloat:v63];
  v93[12] = @"avgLuminance";
  *&v64 = self->M.avgLuminance;
  v94[12] = [MEMORY[0x1E696AD98] numberWithFloat:v64];
  v93[13] = @"minLuminance";
  *&v65 = self->M.minLuminance;
  v94[13] = [MEMORY[0x1E696AD98] numberWithFloat:v65];
  v93[14] = @"maxLuminance";
  *&v66 = self->M.maxLuminance;
  v94[14] = [MEMORY[0x1E696AD98] numberWithFloat:v66];
  v93[15] = @"darkPercent";
  *&v67 = self->M.darkPercent;
  v94[15] = [MEMORY[0x1E696AD98] numberWithFloat:v67];
  v93[16] = @"clipPercent";
  *&v68 = self->M.clipPercent;
  v94[16] = [MEMORY[0x1E696AD98] numberWithFloat:v68];
  v93[17] = @"variance";
  v94[17] = [MEMORY[0x1E696AD98] numberWithDouble:self->FS.variance];
  v93[18] = @"nNonZero";
  v94[18] = [MEMORY[0x1E696AD98] numberWithInt:self->FS.nNonZero];
  v93[19] = @"xPosition";
  *&v69 = a5->var6;
  v94[19] = [MEMORY[0x1E696AD98] numberWithFloat:v69];
  v93[20] = @"hue";
  *&v70 = a5->var7;
  v94[20] = [MEMORY[0x1E696AD98] numberWithFloat:v70];
  v93[21] = @"saturation";
  *&v71 = a5->var8;
  v94[21] = [MEMORY[0x1E696AD98] numberWithFloat:v71];
  v93[22] = @"luminance";
  *&v72 = a5->var9;
  v94[22] = [MEMORY[0x1E696AD98] numberWithFloat:v72];
  v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:23];
  if (!v73)
  {
    return 8;
  }

  v74 = v73;
  result = 0;
  *a3 = v74;
  return result;
}

- (int)packGlobalRepairDictionary:(id *)a3 withConvexHull:(id *)a4 facts:(id *)a5
{
  v103[4] = *MEMORY[0x1E69E9840];
  [(CIRedEyeRepair3 *)self centroidWithConvexHull:a4];
  v9 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithGlobalBitmapPoint:?];
  v10 = [(CIRedEyeRepair3 *)self dictionaryRectArrayWithGlobalBitmapRect:*&self->FC.FR.minrow, *&self->FC.FR.mincol];
  if (!v10)
  {
    return 8;
  }

  v11 = v10;
  v12 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithGlobalBitmapPoint:self->FC.leftEye.x, self->FC.leftEye.y];
  if (!v12)
  {
    return 8;
  }

  v13 = v12;
  v14 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithGlobalBitmapPoint:self->FC.rightEye.x, self->FC.rightEye.y];
  if (!v14)
  {
    return 8;
  }

  v15 = v14;
  v16 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithGlobalBitmapPoint:self->FC.LPoly[0].x, self->FC.LPoly[0].y];
  if (!v16)
  {
    return 8;
  }

  v17 = v16;
  v18 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithGlobalBitmapPoint:self->FC.LPoly[1].x, self->FC.LPoly[1].y];
  if (!v18)
  {
    return 8;
  }

  v19 = v18;
  v20 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithGlobalBitmapPoint:self->FC.LPoly[2].x, self->FC.LPoly[2].y];
  if (!v20)
  {
    return 8;
  }

  v92 = v20;
  v21 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithGlobalBitmapPoint:self->FC.LPoly[3].x, self->FC.LPoly[3].y];
  if (!v21)
  {
    return 8;
  }

  v91 = v21;
  v22 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithGlobalBitmapPoint:self->FC.LPoly[4].x, self->FC.LPoly[4].y];
  if (!v22)
  {
    return 8;
  }

  v90 = v22;
  v23 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithGlobalBitmapPoint:self->FC.LPoly[5].x, self->FC.LPoly[5].y];
  if (!v23)
  {
    return 8;
  }

  v89 = v23;
  v24 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithGlobalBitmapPoint:self->FC.LPoly[6].x, self->FC.LPoly[6].y];
  if (!v24)
  {
    return 8;
  }

  v88 = v24;
  v25 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithGlobalBitmapPoint:self->FC.LPoly[7].x, self->FC.LPoly[7].y];
  if (!v25)
  {
    return 8;
  }

  v87 = v25;
  v26 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithGlobalBitmapPoint:self->FC.RPoly[0].x, self->FC.RPoly[0].y];
  if (!v26)
  {
    return 8;
  }

  v86 = v26;
  v27 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithGlobalBitmapPoint:self->FC.RPoly[1].x, self->FC.RPoly[1].y];
  if (!v27)
  {
    return 8;
  }

  v85 = v27;
  v28 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithGlobalBitmapPoint:self->FC.RPoly[2].x, self->FC.RPoly[2].y];
  if (!v28)
  {
    return 8;
  }

  v84 = v28;
  v29 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithGlobalBitmapPoint:self->FC.RPoly[3].x, self->FC.RPoly[3].y];
  if (!v29)
  {
    return 8;
  }

  v83 = v29;
  v30 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithGlobalBitmapPoint:self->FC.RPoly[4].x, self->FC.RPoly[4].y];
  if (!v30)
  {
    return 8;
  }

  v82 = v30;
  v31 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithGlobalBitmapPoint:self->FC.RPoly[5].x, self->FC.RPoly[5].y];
  if (!v31)
  {
    return 8;
  }

  v81 = v31;
  v32 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithGlobalBitmapPoint:self->FC.RPoly[6].x, self->FC.RPoly[6].y];
  if (!v32)
  {
    return 8;
  }

  v80 = v32;
  v79 = [(CIRedEyeRepair3 *)self dictionaryPointArrayWithGlobalBitmapPoint:self->FC.RPoly[7].x, self->FC.RPoly[7].y];
  if (!v79)
  {
    return 8;
  }

  v78 = [(CIRedEyeRepair3 *)self dictionaryRectArrayWithGlobalBitmapRect:*&self->FC.LR.minrow, *&self->FC.LR.mincol];
  if (!v78)
  {
    return 8;
  }

  v77 = [(CIRedEyeRepair3 *)self dictionaryRectArrayWithGlobalBitmapRect:*&self->FC.RR.minrow, *&self->FC.RR.mincol];
  if (!v77)
  {
    return 8;
  }

  *&v33 = self->FC.leftDistMatrix[0];
  v103[0] = [MEMORY[0x1E696AD98] numberWithFloat:v33];
  *&v34 = self->FC.leftDistMatrix[1];
  v103[1] = [MEMORY[0x1E696AD98] numberWithFloat:v34];
  *&v35 = self->FC.leftDistMatrix[2];
  v103[2] = [MEMORY[0x1E696AD98] numberWithFloat:v35];
  *&v36 = self->FC.leftDistMatrix[3];
  v103[3] = [MEMORY[0x1E696AD98] numberWithFloat:v36];
  v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:4];
  if (!v76)
  {
    return 8;
  }

  *&v37 = self->FC.rightDistMatrix[0];
  v102[0] = [MEMORY[0x1E696AD98] numberWithFloat:v37];
  *&v38 = self->FC.rightDistMatrix[1];
  v102[1] = [MEMORY[0x1E696AD98] numberWithFloat:v38];
  *&v39 = self->FC.rightDistMatrix[2];
  v102[2] = [MEMORY[0x1E696AD98] numberWithFloat:v39];
  *&v40 = self->FC.rightDistMatrix[3];
  v102[3] = [MEMORY[0x1E696AD98] numberWithFloat:v40];
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:4];
  if (!v41)
  {
    return 8;
  }

  v100[0] = @"faceRect";
  v100[1] = @"leftEye";
  v101[0] = v11;
  v101[1] = v13;
  v100[2] = @"rightEye";
  v100[3] = @"leftPoly0";
  v101[2] = v15;
  v101[3] = v17;
  v100[4] = @"leftPoly1";
  v100[5] = @"leftPoly2";
  v101[4] = v19;
  v101[5] = v92;
  v100[6] = @"leftPoly3";
  v100[7] = @"leftPoly4";
  v101[6] = v91;
  v101[7] = v90;
  v100[8] = @"leftPoly5";
  v100[9] = @"leftPoly6";
  v101[8] = v89;
  v101[9] = v88;
  v100[10] = @"leftPoly7";
  v100[11] = @"rightPoly0";
  v101[10] = v87;
  v101[11] = v86;
  v100[12] = @"rightPoly1";
  v100[13] = @"rightPoly2";
  v101[12] = v85;
  v101[13] = v84;
  v100[14] = @"rightPoly3";
  v100[15] = @"rightPoly4";
  v101[14] = v83;
  v101[15] = v82;
  v100[16] = @"rightPoly5";
  v100[17] = @"rightPoly6";
  v101[16] = v81;
  v101[17] = v80;
  v100[18] = @"rightPoly7";
  v100[19] = @"leftRect";
  v101[18] = v79;
  v101[19] = v78;
  v100[20] = @"rightRect";
  v100[21] = @"leftDistMatrix";
  v101[20] = v77;
  v101[21] = v76;
  v100[22] = @"rightDistMatrix";
  v101[22] = v41;
  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:23];
  if (!v42)
  {
    return 8;
  }

  v43 = v42;
  v44 = [MEMORY[0x1E695DF70] array];
  if (!v44)
  {
    return 8;
  }

  v45 = v44;
  if (a4->var1 >= 1)
  {
    v46 = 0;
    v47 = 0;
    do
    {
      [v45 addObject:{-[CIRedEyeRepair3 dictionaryPointArrayWithGlobalBitmapPoint:](self, "dictionaryPointArrayWithGlobalBitmapPoint:", a4->var3[v46].x, a4->var3[v46].y)}];
      ++v47;
      ++v46;
    }

    while (v47 < a4->var1);
  }

  v98[0] = @"counterClockwise";
  v99[0] = [MEMORY[0x1E696AD98] numberWithBool:a4->var0];
  v98[1] = @"nPoints";
  v99[1] = [MEMORY[0x1E696AD98] numberWithInt:a4->var1];
  v98[2] = @"maxPoints";
  v48 = [MEMORY[0x1E696AD98] numberWithInt:a4->var2];
  v98[3] = @"hullBody";
  v99[2] = v48;
  v99[3] = v45;
  v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v99 forKeys:v98 count:4];
  if (!v49)
  {
    return 8;
  }

  v50 = v49;
  v96[0] = @"downsampleType";
  v97[0] = [MEMORY[0x1E696AD98] numberWithInt:self->S.downsampleType];
  v96[1] = @"downsampleOversizeX";
  *&v51 = self->S.downsampleOversizeX;
  v97[1] = [MEMORY[0x1E696AD98] numberWithFloat:v51];
  v96[2] = @"downsampleOversizeY";
  *&v52 = self->S.downsampleOversizeY;
  v97[2] = [MEMORY[0x1E696AD98] numberWithFloat:v52];
  v96[3] = @"gradientChannel";
  v97[3] = [MEMORY[0x1E696AD98] numberWithInt:self->S.gradientChannel];
  v96[4] = @"edgeFindingChannel";
  v97[4] = [MEMORY[0x1E696AD98] numberWithInt:self->S.edgeFindingChannel];
  v96[5] = @"minMagnitude";
  *&v53 = self->S.minMagnitude;
  v97[5] = [MEMORY[0x1E696AD98] numberWithFloat:v53];
  v96[6] = @"regressionRadius";
  *&v54 = self->S.regressionRadius;
  v97[6] = [MEMORY[0x1E696AD98] numberWithFloat:v54];
  v96[7] = @"capture";
  *&v55 = self->S.capture;
  v97[7] = [MEMORY[0x1E696AD98] numberWithFloat:v55];
  v96[8] = @"alignmentTolerance";
  *&v56 = self->S.alignmentTolerance;
  v97[8] = [MEMORY[0x1E696AD98] numberWithFloat:v56];
  v96[9] = @"connectThreshold";
  *&v57 = self->S.connectThreshold;
  v97[9] = [MEMORY[0x1E696AD98] numberWithFloat:v57];
  v96[10] = @"faceIndex";
  v97[10] = [MEMORY[0x1E696AD98] numberWithInt:self->S.faceIndex];
  v96[11] = @"side";
  v97[11] = [MEMORY[0x1E696AD98] numberWithInt:self->S.side];
  v96[12] = @"scale";
  *&v58 = self->S.scale;
  v97[12] = [MEMORY[0x1E696AD98] numberWithFloat:v58];
  v96[13] = @"IOD";
  *&v59 = self->S.IOD;
  v97[13] = [MEMORY[0x1E696AD98] numberWithFloat:v59];
  v96[14] = @"transform";
  v95[0] = [MEMORY[0x1E696AD98] numberWithDouble:self->S.transform.a];
  v95[1] = [MEMORY[0x1E696AD98] numberWithDouble:self->S.transform.b];
  v95[2] = [MEMORY[0x1E696AD98] numberWithDouble:self->S.transform.c];
  v95[3] = [MEMORY[0x1E696AD98] numberWithDouble:self->S.transform.d];
  v95[4] = [MEMORY[0x1E696AD98] numberWithDouble:self->S.transform.tx];
  v95[5] = [MEMORY[0x1E696AD98] numberWithDouble:self->S.transform.ty];
  v97[14] = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:6];
  v96[15] = @"height";
  v97[15] = [MEMORY[0x1E696AD98] numberWithInt:self->S.height];
  v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:v96 count:16];
  if (!v60)
  {
    return 8;
  }

  v93[0] = @"context";
  v93[1] = @"convexHull";
  v94[0] = v43;
  v94[1] = v50;
  v94[2] = v60;
  v93[2] = @"settings";
  v93[3] = @"xf";
  *&v61 = self->S.xf;
  v94[3] = [MEMORY[0x1E696AD98] numberWithFloat:v61];
  v93[4] = @"yf";
  *&v62 = self->S.yf;
  v94[4] = [MEMORY[0x1E696AD98] numberWithFloat:v62];
  v93[5] = @"ioffx";
  v94[5] = [MEMORY[0x1E696AD98] numberWithInt:self->S.ioffx];
  v93[6] = @"ioffy";
  v94[6] = [MEMORY[0x1E696AD98] numberWithInt:self->S.ioffy];
  v93[7] = @"px";
  v94[7] = [v9 objectAtIndexedSubscript:0];
  v93[8] = @"py";
  v94[8] = [v9 objectAtIndexedSubscript:1];
  v93[9] = @"pointX";
  v94[9] = [v9 objectAtIndexedSubscript:0];
  v93[10] = @"pointY";
  v94[10] = [v9 objectAtIndexedSubscript:1];
  v93[11] = @"skinval";
  *&v63 = self->M.skinval;
  v94[11] = [MEMORY[0x1E696AD98] numberWithFloat:v63];
  v93[12] = @"avgLuminance";
  *&v64 = self->M.avgLuminance;
  v94[12] = [MEMORY[0x1E696AD98] numberWithFloat:v64];
  v93[13] = @"minLuminance";
  *&v65 = self->M.minLuminance;
  v94[13] = [MEMORY[0x1E696AD98] numberWithFloat:v65];
  v93[14] = @"maxLuminance";
  *&v66 = self->M.maxLuminance;
  v94[14] = [MEMORY[0x1E696AD98] numberWithFloat:v66];
  v93[15] = @"darkPercent";
  *&v67 = self->M.darkPercent;
  v94[15] = [MEMORY[0x1E696AD98] numberWithFloat:v67];
  v93[16] = @"clipPercent";
  *&v68 = self->M.clipPercent;
  v94[16] = [MEMORY[0x1E696AD98] numberWithFloat:v68];
  v93[17] = @"variance";
  v94[17] = [MEMORY[0x1E696AD98] numberWithDouble:self->FS.variance];
  v93[18] = @"nNonZero";
  v94[18] = [MEMORY[0x1E696AD98] numberWithInt:self->FS.nNonZero];
  v93[19] = @"xPosition";
  *&v69 = a5->var6;
  v94[19] = [MEMORY[0x1E696AD98] numberWithFloat:v69];
  v93[20] = @"hue";
  *&v70 = a5->var7;
  v94[20] = [MEMORY[0x1E696AD98] numberWithFloat:v70];
  v93[21] = @"saturation";
  *&v71 = a5->var8;
  v94[21] = [MEMORY[0x1E696AD98] numberWithFloat:v71];
  v93[22] = @"luminance";
  *&v72 = a5->var9;
  v94[22] = [MEMORY[0x1E696AD98] numberWithFloat:v72];
  v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:23];
  if (!v73)
  {
    return 8;
  }

  v74 = v73;
  result = 0;
  *a3 = v74;
  return result;
}

- (BOOL)unpackToGlobalRepairDictionary:(id)a3 convexHull:(id *)a4 facts:(id *)a5
{
  [objc_msgSend(a3 objectForKeyedSubscript:{@"xf", "floatValue"}];
  self->S.xf = v9;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"yf", "floatValue"}];
  self->S.yf = v10;
  v11.i32[0] = LODWORD(self->S.xf);
  v11.f32[1] = v10;
  __asm { FMOV            V2.2S, #1.0 }

  *&self->S.xfi = vdiv_f32(_D2, v11);
  self->S.ify = rintf(v10);
  self->S.ioffx = [objc_msgSend(a3 objectForKeyedSubscript:{@"ioffx", "intValue"}];
  self->S.ioffy = [objc_msgSend(a3 objectForKeyedSubscript:{@"ioffy", "intValue"}];
  [objc_msgSend(a3 objectForKeyedSubscript:{@"skinval", "floatValue"}];
  self->M.skinval = v17;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"avgLuminance", "floatValue"}];
  self->M.avgLuminance = v18;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"minLuminance", "floatValue"}];
  self->M.minLuminance = v19;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"maxLuminance", "floatValue"}];
  self->M.maxLuminance = v20;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"darkPercent", "floatValue"}];
  self->M.darkPercent = v21;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"clipPercent", "floatValue"}];
  self->M.clipPercent = v22;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"xPosition", "floatValue"}];
  a5->var6 = v23;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"hue", "floatValue"}];
  a5->var7 = v24;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"saturation", "floatValue"}];
  a5->var8 = v25;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"luminance", "floatValue"}];
  a5->var9 = v26;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"variance", "doubleValue"}];
  self->FS.variance = v27;
  self->FS.nNonZero = [objc_msgSend(a3 objectForKeyedSubscript:{@"nNonZero", "intValue"}];
  v28 = [a3 objectForKeyedSubscript:@"context"];
  if (!v28)
  {
    goto LABEL_37;
  }

  v29 = v28;
  v30 = [v28 objectForKeyedSubscript:@"faceRect"];
  if (!v30)
  {
    goto LABEL_37;
  }

  v31 = v30;
  v32 = [v29 objectForKeyedSubscript:@"leftEye"];
  if (!v32)
  {
    goto LABEL_37;
  }

  v33 = v32;
  v34 = [v29 objectForKeyedSubscript:@"rightEye"];
  if (!v34)
  {
    goto LABEL_37;
  }

  v35 = v34;
  v36 = [v29 objectForKeyedSubscript:@"leftPoly0"];
  if (!v36)
  {
    goto LABEL_37;
  }

  v37 = v36;
  v38 = [v29 objectForKeyedSubscript:@"leftPoly1"];
  if (!v38)
  {
    goto LABEL_37;
  }

  v39 = v38;
  v40 = [v29 objectForKeyedSubscript:@"leftPoly2"];
  if (!v40)
  {
    goto LABEL_37;
  }

  v41 = v40;
  v42 = [v29 objectForKeyedSubscript:@"leftPoly3"];
  if (!v42)
  {
    goto LABEL_37;
  }

  v170 = v42;
  v43 = [v29 objectForKeyedSubscript:@"leftPoly4"];
  if (!v43)
  {
    goto LABEL_37;
  }

  v169 = v43;
  v44 = [v29 objectForKeyedSubscript:@"leftPoly5"];
  if (!v44)
  {
    goto LABEL_37;
  }

  v168 = v44;
  v45 = [v29 objectForKeyedSubscript:@"leftPoly6"];
  if (!v45)
  {
    goto LABEL_37;
  }

  v167 = v45;
  v46 = [v29 objectForKeyedSubscript:@"leftPoly7"];
  if (!v46)
  {
    goto LABEL_37;
  }

  v166 = v46;
  v47 = [v29 objectForKeyedSubscript:@"rightPoly0"];
  if (!v47)
  {
    goto LABEL_37;
  }

  v165 = v47;
  v48 = [v29 objectForKeyedSubscript:@"rightPoly1"];
  if (!v48)
  {
    goto LABEL_37;
  }

  v164 = v48;
  v49 = [v29 objectForKeyedSubscript:@"rightPoly2"];
  if (!v49)
  {
    goto LABEL_37;
  }

  v163 = v49;
  v50 = [v29 objectForKeyedSubscript:@"rightPoly3"];
  if (!v50)
  {
    goto LABEL_37;
  }

  v162 = v50;
  v51 = [v29 objectForKeyedSubscript:@"rightPoly4"];
  if (!v51)
  {
    goto LABEL_37;
  }

  v161 = v51;
  v52 = [v29 objectForKeyedSubscript:@"rightPoly5"];
  if (!v52)
  {
    goto LABEL_37;
  }

  v159 = v52;
  v160 = [v29 objectForKeyedSubscript:@"rightPoly6"];
  if (!v160)
  {
    goto LABEL_37;
  }

  v53 = [v29 objectForKeyedSubscript:@"rightPoly7"];
  if (!v53)
  {
    goto LABEL_37;
  }

  v157 = v41;
  v158 = v53;
  v54 = [v29 objectForKeyedSubscript:@"leftRect"];
  if (!v54)
  {
    goto LABEL_37;
  }

  v55 = v54;
  v156 = [v29 objectForKeyedSubscript:@"rightRect"];
  if (!v156)
  {
    goto LABEL_37;
  }

  v155 = [v29 objectForKeyedSubscript:@"leftDistMatrix"];
  if (!v155)
  {
    goto LABEL_37;
  }

  v153 = [v29 objectForKeyedSubscript:@"rightDistMatrix"];
  if (!v153)
  {
    goto LABEL_37;
  }

  v56 = [a3 objectForKeyedSubscript:@"convexHull"];
  if (!v56)
  {
    goto LABEL_37;
  }

  v57 = v56;
  v154 = [v56 objectForKeyedSubscript:@"hullBody"];
  if (!v154)
  {
    goto LABEL_37;
  }

  v58 = [a3 objectForKeyedSubscript:@"settings"];
  v59 = v58;
  if (!v58)
  {
    return v59;
  }

  v151 = [v58 objectForKeyedSubscript:@"transform"];
  if (!v151
    || (*&self->FC.FR.minrow = [(CIRedEyeRepair3 *)self globalBitmapRectWithDictionaryRectArray:v31],
        *&self->FC.FR.mincol = v60,
        [(CIRedEyeRepair3 *)self globalBitmapPointWithDictionaryPointArray:v33],
        self->FC.leftEye.x = v61,
        self->FC.leftEye.y = v62,
        [(CIRedEyeRepair3 *)self globalBitmapPointWithDictionaryPointArray:v35],
        self->FC.rightEye.x = v63,
        self->FC.rightEye.y = v64,
        [(CIRedEyeRepair3 *)self globalBitmapPointWithDictionaryPointArray:v37],
        self->FC.LPoly[0].x = v65,
        self->FC.LPoly[0].y = v66,
        [(CIRedEyeRepair3 *)self globalBitmapPointWithDictionaryPointArray:v39],
        self->FC.LPoly[1].x = v67,
        self->FC.LPoly[1].y = v68,
        [(CIRedEyeRepair3 *)self globalBitmapPointWithDictionaryPointArray:v157],
        self->FC.LPoly[2].x = v69,
        self->FC.LPoly[2].y = v70,
        [(CIRedEyeRepair3 *)self globalBitmapPointWithDictionaryPointArray:v170],
        self->FC.LPoly[3].x = v71,
        self->FC.LPoly[3].y = v72,
        [(CIRedEyeRepair3 *)self globalBitmapPointWithDictionaryPointArray:v169],
        self->FC.LPoly[4].x = v73,
        self->FC.LPoly[4].y = v74,
        [(CIRedEyeRepair3 *)self globalBitmapPointWithDictionaryPointArray:v168],
        self->FC.LPoly[5].x = v75,
        self->FC.LPoly[5].y = v76,
        [(CIRedEyeRepair3 *)self globalBitmapPointWithDictionaryPointArray:v167],
        self->FC.LPoly[6].x = v77,
        self->FC.LPoly[6].y = v78,
        [(CIRedEyeRepair3 *)self globalBitmapPointWithDictionaryPointArray:v166],
        self->FC.LPoly[7].x = v79,
        self->FC.LPoly[7].y = v80,
        [(CIRedEyeRepair3 *)self globalBitmapPointWithDictionaryPointArray:v165],
        self->FC.RPoly[0].x = v81,
        self->FC.RPoly[0].y = v82,
        [(CIRedEyeRepair3 *)self globalBitmapPointWithDictionaryPointArray:v164],
        self->FC.RPoly[1].x = v83,
        self->FC.RPoly[1].y = v84,
        [(CIRedEyeRepair3 *)self globalBitmapPointWithDictionaryPointArray:v163],
        self->FC.RPoly[2].x = v85,
        self->FC.RPoly[2].y = v86,
        [(CIRedEyeRepair3 *)self globalBitmapPointWithDictionaryPointArray:v162],
        self->FC.RPoly[3].x = v87,
        self->FC.RPoly[3].y = v88,
        [(CIRedEyeRepair3 *)self globalBitmapPointWithDictionaryPointArray:v161],
        self->FC.RPoly[4].x = v89,
        self->FC.RPoly[4].y = v90,
        [(CIRedEyeRepair3 *)self globalBitmapPointWithDictionaryPointArray:v159],
        self->FC.RPoly[5].x = v91,
        self->FC.RPoly[5].y = v92,
        [(CIRedEyeRepair3 *)self globalBitmapPointWithDictionaryPointArray:v160],
        self->FC.RPoly[6].x = v93,
        self->FC.RPoly[6].y = v94,
        [(CIRedEyeRepair3 *)self globalBitmapPointWithDictionaryPointArray:v158],
        self->FC.RPoly[7].x = v95,
        self->FC.RPoly[7].y = v96,
        *&self->FC.LR.minrow = [(CIRedEyeRepair3 *)self globalBitmapRectWithDictionaryRectArray:v55],
        *&self->FC.LR.mincol = v97,
        *&self->FC.RR.minrow = [(CIRedEyeRepair3 *)self globalBitmapRectWithDictionaryRectArray:v156],
        *&self->FC.RR.mincol = v98,
        [objc_msgSend(v155 objectAtIndexedSubscript:{0), "floatValue"}],
        self->FC.leftDistMatrix[0] = v99,
        [objc_msgSend(v155 objectAtIndexedSubscript:{1), "floatValue"}],
        self->FC.leftDistMatrix[1] = v100,
        [objc_msgSend(v155 objectAtIndexedSubscript:{2), "floatValue"}],
        self->FC.leftDistMatrix[2] = v101,
        [objc_msgSend(v155 objectAtIndexedSubscript:{3), "floatValue"}],
        self->FC.leftDistMatrix[3] = v102,
        [objc_msgSend(v153 objectAtIndexedSubscript:{0), "floatValue"}],
        self->FC.rightDistMatrix[0] = v103,
        [objc_msgSend(v153 objectAtIndexedSubscript:{1), "floatValue"}],
        self->FC.rightDistMatrix[1] = v104,
        [objc_msgSend(v153 objectAtIndexedSubscript:{2), "floatValue"}],
        self->FC.rightDistMatrix[2] = v105,
        [objc_msgSend(v153 objectAtIndexedSubscript:{3), "floatValue"}],
        self->FC.rightDistMatrix[3] = v106,
        self->S.ioffx = self->FC.FR.mincol,
        self->S.ioffy = self->FC.FR.minrow,
        (v107 = malloc_type_malloc(0x18uLL, 0x10200409093602BuLL)) == 0))
  {
LABEL_37:
    LOBYTE(v59) = 0;
    return v59;
  }

  v108 = v107;
  *v107 = [objc_msgSend(v57 objectForKeyedSubscript:{@"counterClockwise", "BOOLValue"}];
  *(v108 + 1) = [objc_msgSend(v57 objectForKeyedSubscript:{@"nPoints", "intValue"}];
  v109 = [objc_msgSend(v57 objectForKeyedSubscript:{@"maxPoints", "intValue"}];
  *(v108 + 2) = v109;
  v110 = malloc_type_malloc(16 * v109, 0x1000040451B5BE8uLL);
  *(v108 + 2) = v110;
  if (!v110)
  {
    free(v108);
    goto LABEL_37;
  }

  bzero(v110, 16 * *(v108 + 2));
  if (*(v108 + 1) >= 1)
  {
    v111 = 0;
    v112 = 0;
    do
    {
      v113 = (*(v108 + 2) + v111);
      -[CIRedEyeRepair3 globalBitmapPointWithDictionaryPointArray:](self, "globalBitmapPointWithDictionaryPointArray:", [v154 objectAtIndexedSubscript:{v112, v151}]);
      *v113 = v114;
      v113[1] = v115;
      ++v112;
      v111 += 16;
    }

    while (v112 < *(v108 + 1));
  }

  v116 = [v59 objectForKeyedSubscript:{@"downsampleType", v151}];
  if (v116)
  {
    v117 = [v116 intValue];
  }

  else
  {
    v117 = 1;
  }

  self->S.downsampleType = v117;
  v119 = [v59 objectForKeyedSubscript:@"downsampleOversizeX"];
  if (v119)
  {
    [v119 floatValue];
  }

  else
  {
    v120 = 1.3;
  }

  self->S.downsampleOversizeX = v120;
  v121 = [v59 objectForKeyedSubscript:@"downsampleOversizeY"];
  if (v121)
  {
    [v121 floatValue];
  }

  else
  {
    v122 = 1.8;
  }

  self->S.downsampleOversizeY = v122;
  v123 = [v59 objectForKeyedSubscript:@"gradientChannel"];
  if (v123)
  {
    v124 = [v123 intValue];
  }

  else
  {
    v124 = 6;
  }

  self->S.gradientChannel = v124;
  v125 = [v59 objectForKeyedSubscript:@"edgeFindingChannel"];
  if (v125)
  {
    v126 = [v125 intValue];
  }

  else
  {
    v126 = 6;
  }

  self->S.edgeFindingChannel = v126;
  v127 = [v59 objectForKeyedSubscript:@"minMagnitude"];
  if (v127)
  {
    [v127 floatValue];
  }

  else
  {
    v128 = 0.1;
  }

  self->S.minMagnitude = v128;
  v129 = [v59 objectForKeyedSubscript:@"regressionRadius"];
  if (v129)
  {
    [v129 floatValue];
  }

  else
  {
    v130 = 2.5;
  }

  self->S.regressionRadius = v130;
  v131 = [v59 objectForKeyedSubscript:@"capture"];
  if (v131)
  {
    [v131 floatValue];
  }

  else
  {
    v132 = 3.14;
  }

  self->S.capture = v132;
  v133 = [v59 objectForKeyedSubscript:@"alignmentTolerance"];
  if (v133)
  {
    [v133 floatValue];
  }

  else
  {
    v134 = 0.72;
  }

  self->S.alignmentTolerance = v134;
  v135 = [v59 objectForKeyedSubscript:@"connectThreshold"];
  if (v135)
  {
    [v135 floatValue];
  }

  else
  {
    v136 = 7.0;
  }

  self->S.connectThreshold = v136;
  v137 = [v59 objectForKeyedSubscript:@"faceIndex"];
  if (v137)
  {
    LODWORD(v137) = [v137 intValue];
  }

  self->S.faceIndex = v137;
  v138 = [v59 objectForKeyedSubscript:@"side"];
  if (v138)
  {
    LODWORD(v138) = [v138 intValue];
  }

  self->S.side = v138;
  v139 = [v59 objectForKeyedSubscript:@"scale"];
  if (v139)
  {
    [v139 floatValue];
  }

  else
  {
    v140 = 1.0;
  }

  self->S.scale = v140;
  v141 = [v59 objectForKeyedSubscript:@"IOD"];
  if (v141)
  {
    [v141 floatValue];
  }

  else
  {
    v142 = 100.0;
  }

  self->S.IOD = v142;
  v143 = [v59 objectForKeyedSubscript:@"height"];
  if (v143)
  {
    v144 = [v143 intValue];
  }

  else
  {
    v144 = 3024;
  }

  self->S.height = v144;
  [objc_msgSend(v152 objectAtIndexedSubscript:{0), "floatValue"}];
  self->S.transform.a = v145;
  LOBYTE(v59) = 1;
  [objc_msgSend(v152 objectAtIndexedSubscript:{1), "floatValue"}];
  self->S.transform.b = v146;
  [objc_msgSend(v152 objectAtIndexedSubscript:{2), "floatValue"}];
  self->S.transform.c = v147;
  [objc_msgSend(v152 objectAtIndexedSubscript:{3), "floatValue"}];
  self->S.transform.d = v148;
  [objc_msgSend(v152 objectAtIndexedSubscript:{4), "floatValue"}];
  self->S.transform.tx = v149;
  [objc_msgSend(v152 objectAtIndexedSubscript:{5), "floatValue"}];
  self->S.transform.ty = v150;
  *a4 = v108;
  return v59;
}

- (BOOL)openRepairDictionary:(id)a3 convexHull:(id *)a4 facts:(id *)a5
{
  v28 = 0;
  v7 = [(CIRedEyeRepair3 *)self unpackToGlobalRepairDictionary:a3 convexHull:&v28 facts:a5];
  if (v7)
  {
    RPoly = self->FC.RPoly;
    v8.i64[0] = *&self->S.ioffx;
    v10 = vrev64q_s32(v8);
    v11 = vzip1q_s32(v10, v10);
    v12.i64[0] = v8.i32[0];
    v12.i64[1] = v8.i32[1];
    v13 = vcvtq_f64_s64(v12);
    self->FC.leftEye = vsubq_f64(self->FC.leftEye, v13);
    self->FC.rightEye = vsubq_f64(self->FC.rightEye, v13);
    v14 = 8;
    do
    {
      v15 = vsubq_f64(RPoly[-7], v13);
      RPoly[-8] = vsubq_f64(RPoly[-8], v13);
      RPoly[-7] = v15;
      v16 = vsubq_f64(RPoly[1], v13);
      *RPoly = vsubq_f64(*RPoly, v13);
      RPoly[1] = v16;
      RPoly += 2;
      v14 -= 2;
    }

    while (v14);
    LR = self->FC.LR;
    self->FC.LR = vsubq_s32(LR, v11);
    RR = self->FC.RR;
    self->FC.RR = vsubq_s32(RR, v11);
    v19 = v28;
    v20 = *(v28 + 4);
    if (v20 >= 1)
    {
      mincol = LR.mincol;
      side = self->S.side;
      if (side)
      {
        mincol = RR.mincol;
      }

      v23 = mincol;
      minrow = LR.minrow;
      if (side)
      {
        minrow = RR.minrow;
      }

      v25 = (*(v28 + 16) + 8);
      do
      {
        v26 = *v25 - minrow;
        *(v25 - 1) = *(v25 - 1) - v23;
        *v25 = v26;
        v25 += 2;
        --v20;
      }

      while (v20);
    }

    *a4 = v19;
  }

  return v7;
}

- (CIRedEyeRepair3)initWithExternalBuffer:(char *)a3 subRectangle:(CGRect)a4 rowBytes:(unint64_t)a5 options:(id)a6
{
  v7 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  self->repairMap.baseAddress = 0;
  self->faceBitmap.baseAddress = 0;
  self->repairs = 0;
  [CIRedEyeRepair3 settingsWithOptions:a6];
  v14 = v32;
  *&self->S.transform.a = v31;
  *&self->S.transform.c = v14;
  *&self->S.transform.tx = v33;
  *&self->S.height = v34;
  v15 = v28;
  *&self->S.connectThreshold = v27;
  *&self->S.inputImageExtent.origin.y = v15;
  v16 = v30;
  *&self->S.inputImageExtent.size.height = v29;
  *&self->S.faceIndex = v16;
  v17 = v24;
  *&self->S.xf = v23;
  *&self->S.ify = v17;
  v18 = v26;
  *&self->S.downsampleOversizeX = v25;
  *&self->S.minMagnitude = v18;
  self->repairs = [MEMORY[0x1E695DF70] array];
  v19 = [CIRedEyeRepair3 bitmapRectWithImageSubRectangle:&self->S settings:x, y, width, height];
  *&self->subRectangle.minrow = v19;
  *&self->subRectangle.mincol = v20;
  constructBitmap(&self->fullBitmap, a3, HIDWORD(v20) - v20, HIDWORD(v19) - v19, 4, 1, v7, 100.0);
  if ([a6 objectForKeyedSubscript:@"inspector"])
  {
    -[CIRedEyeRepair3 setInspector:](self, "setInspector:", [a6 objectForKeyedSubscript:@"inspector"]);
  }

  v22.receiver = self;
  v22.super_class = CIRedEyeRepair3;
  return [(CIRedEyeRepair3 *)&v22 init];
}

- (void)dealloc
{
  if (self->faceBitmap.baseAddress)
  {
    termBitmap(&self->faceBitmap.baseAddress);
  }

  if (self->repairMap.baseAddress)
  {
    termBitmap(&self->repairMap.baseAddress);
  }

  self->repairs = 0;
  v3.receiver = self;
  v3.super_class = CIRedEyeRepair3;
  [(CIRedEyeRepair3 *)&v3 dealloc];
}

+ (CGRect)supportRectangleWithRepair:(id)a3 imageSize:(CGSize)a4
{
  width = a4.width;
  height = a4.height;
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{@"context", "objectForKeyedSubscript:", @"faceRect"}];
  [objc_msgSend(v6 objectAtIndexedSubscript:{0), "floatValue"}];
  v8 = rintf(v7 * width);
  [objc_msgSend(v6 objectAtIndexedSubscript:{1), "floatValue"}];
  v10 = rintf(v9 * height);
  [objc_msgSend(v6 objectAtIndexedSubscript:{2), "floatValue"}];
  v12 = rintf(v11 * width);
  [objc_msgSend(v6 objectAtIndexedSubscript:{3), "floatValue"}];
  v14 = rintf(v13 * height);
  v15 = v8;
  v16 = v10;
  v17 = v12;
  result.size.height = v14;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

+ (CGRect)supportRectangleWithFaceArray:(id)a3 options:(id)a4
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v18 = 0;
  [CIRedEyeRepair3 settingsWithOptions:a4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  v5 = [a3 count];
  v6 = v5;
  if (!v5)
  {
LABEL_10:
    v12 = *MEMORY[0x1E695F050];
    v13 = *(MEMORY[0x1E695F050] + 8);
    v14 = *(MEMORY[0x1E695F050] + 16);
    v15 = *(MEMORY[0x1E695F050] + 24);
    goto LABEL_13;
  }

  if (v5 >= 1)
  {
    v7 = 0;
    LODWORD(v8) = 0;
    LODWORD(v9) = 0;
    v10 = 0;
    while (1)
    {
      LODWORD(v17) = v10;
      if ([CIRedEyeRepair3 faceContext:v19 withFaceArray:a3 index:v10 settings:&v16])
      {
        goto LABEL_10;
      }

      if (v10)
      {
        v9 = unionBitmapRects(v9 | (v8 << 32), v7, *&v19[0]);
        v7 = v11;
      }

      else
      {
        v7 = *(&v19[0] + 1);
        v9 = *&v19[0];
      }

      v8 = HIDWORD(v9);
      v10 = (v10 + 1);
      if (v6 == v10)
      {
        goto LABEL_12;
      }
    }
  }

  LODWORD(v9) = 0;
  LODWORD(v8) = 0;
  v7 = 0;
LABEL_12:
  v12 = v7;
  v13 = (v18 - v8);
  v14 = (HIDWORD(v7) - v7);
  v15 = (v8 - v9);
LABEL_13:
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGAffineTransform)inverseImageTransformForOrientation:(SEL)a3
{
  v40 = *MEMORY[0x1E69E9840];
  xf = self->S.xf;
  if (a4 <= 4)
  {
    yf = self->S.xf;
  }

  else
  {
    yf = self->S.yf;
  }

  if (a4 <= 4)
  {
    xf = self->S.yf;
  }

  v11[0] = 0x3FF0000000000000;
  v11[1] = 0;
  v11[2] = 0;
  v11[3] = 0x3FF0000000000000;
  v11[4] = 0;
  v11[5] = 0;
  v11[6] = 0xBFF0000000000000;
  v11[7] = 0;
  v11[8] = 0;
  v11[9] = 0x3FF0000000000000;
  *&v11[10] = yf;
  v12 = xmmword_19CF26640;
  v13 = 0;
  v14 = 0;
  v15 = 0xBFF0000000000000;
  v16 = yf;
  v17 = xf;
  v19 = 0;
  v20 = 0;
  v18 = 0x3FF0000000000000;
  v21 = xmmword_19CF25100;
  v23 = xmmword_19CF26640;
  v24 = xmmword_19CF25100;
  v22 = xf;
  v25 = xf;
  v26 = yf;
  v27 = xmmword_19CF26640;
  v29 = 0;
  v30 = 0;
  v28 = 0x3FF0000000000000;
  v31 = yf;
  v32 = xmmword_19CF26650;
  v34 = 0u;
  v35 = 0u;
  v33 = 0x3FF0000000000000;
  v36 = 0x3FF0000000000000;
  v37 = xmmword_19CF25100;
  v38 = xf;
  v39 = 0;
  if ((a4 - 9) >= 0xFFFFFFF8)
  {
    v6 = a4 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = &v11[6 * v6];
  v8 = v7[2];
  *&v10.c = v7[1];
  *&v10.tx = v8;
  *&v10.a = *v7;
  return CGAffineTransformInvert(retstr, &v10);
}

- (void)printFaceArray
{
  v75 = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->faceArray count];
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = v3 & 0x7FFFFFFF;
    do
    {
      v6 = [(NSArray *)self->faceArray objectAtIndexedSubscript:v4];
      [objc_msgSend(v6 objectForKeyedSubscript:{@"leftEyeX", "floatValue"}];
      v8 = v7;
      v9 = v7;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"leftEyeY", "floatValue"}];
      v11 = v10;
      v12 = v10;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"rightEyeX", "floatValue"}];
      v14 = v13;
      v15 = v13;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"rightEyeY", "floatValue"}];
      v17 = v16;
      v18 = v16;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"mouthCenterX", "floatValue"}];
      v70 = v19;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"mouthCenterY", "floatValue"}];
      v68 = v20;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"centerX", "floatValue"}];
      v66 = v21;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"centerY", "floatValue"}];
      v64 = v22;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"noseBridgeX", "floatValue"}];
      v71 = v23;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"noseBridgeY", "floatValue"}];
      v69 = v24;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"noseTipX", "floatValue"}];
      v67 = v25;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"noseTipY", "floatValue"}];
      v65 = v26;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"leftEyeLeftX", "floatValue"}];
      v63 = v27;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"leftEyeLeftY", "floatValue"}];
      v62 = v28;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"leftEyelidUpperX", "floatValue"}];
      v61 = v29;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"leftEyelidUpperY", "floatValue"}];
      v59 = v30;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"leftEyeRightX", "floatValue"}];
      v57 = v31;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"leftEyeRightY", "floatValue"}];
      v55 = v32;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"leftEyelidLowerX", "floatValue"}];
      v53 = v33;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"leftEyelidLowerY", "floatValue"}];
      v51 = v34;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"rightEyeLeftX", "floatValue"}];
      v60 = v35;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"rightEyeLeftY", "floatValue"}];
      v58 = v36;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"rightEyelidUpperX", "floatValue"}];
      v56 = v37;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"rightEyelidUpperY", "floatValue"}];
      v54 = v38;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"rightEyeRightX", "floatValue"}];
      v52 = v39;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"rightEyeRightY", "floatValue"}];
      v50 = v40;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"rightEyelidLowerX", "floatValue"}];
      v49 = v41;
      [objc_msgSend(v6 objectForKeyedSubscript:{@"rightEyelidLowerY", "floatValue"}];
      v48 = v42;
      snprintf(__str, 0x100uLL, "face %d   left (%.1f, %.1f) right (%.1f, %.1f) IOD %.1f", ++v4, v9, v12, v15, v18, sqrtf(((v17 - v11) * (v17 - v11)) + ((v14 - v8) * (v14 - v8))));
      v43 = ci_logger_render();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v73 = __str;
        _os_log_debug_impl(&dword_19CC36000, v43, OS_LOG_TYPE_DEBUG, "%s\n", buf, 0xCu);
      }

      if (self->printFaceArrayLevel >= 2)
      {
        snprintf(__str, 0x100uLL, "face %d   mouth (%.1f, %.1f) center (%.1f, %.1f)", v4, v70, v68, v66, v64);
        v44 = ci_logger_render();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v73 = __str;
          _os_log_debug_impl(&dword_19CC36000, v44, OS_LOG_TYPE_DEBUG, "%s\n", buf, 0xCu);
        }

        snprintf(__str, 0x100uLL, "face %d   nose bridge (%.1f, %.1f) tip (%.1f, %.1f)", v4, v71, v69, v67, v65);
        v45 = ci_logger_render();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v73 = __str;
          _os_log_debug_impl(&dword_19CC36000, v45, OS_LOG_TYPE_DEBUG, "%s\n", buf, 0xCu);
        }

        if (self->printFaceArrayLevel >= 3)
        {
          snprintf(__str, 0x100uLL, "face %d   left eye l (%.1f, %.1f) u (%.1f, %.1f) r (%.1f, %.1f) d (%.1f, %.1f)", v4, v63, v62, v61, v59, v57, v55, v53, v51);
          v46 = ci_logger_render();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v73 = __str;
            _os_log_debug_impl(&dword_19CC36000, v46, OS_LOG_TYPE_DEBUG, "%s\n", buf, 0xCu);
          }

          snprintf(__str, 0x100uLL, "face %d   right eye l (%.1f, %.1f) u (%.1f, %.1f) r (%.1f, %.1f) d (%.1f, %.1f)", v4, v60, v58, v56, v54, v52, v50, v49, v48);
          v47 = ci_logger_render();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v73 = __str;
            _os_log_debug_impl(&dword_19CC36000, v47, OS_LOG_TYPE_DEBUG, "%s\n", buf, 0xCu);
          }
        }
      }
    }

    while (v5 != v4);
  }
}

- (void)autoRepairWithFaceArray:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  self->faceArray = a3;
  v4 = [a3 count];
  if (self->printFaceArrayLevel >= 1)
  {
    [(CIRedEyeRepair3 *)self printFaceArray];
  }

  v5 = [MEMORY[0x1E695DF70] array];
  self->failureCauses = v5;
  if (v4)
  {
    if (v4 >= 1)
    {
      v6 = 0;
      while (1)
      {
        self->S.faceIndex = v6;
        v7 = [(CIRedEyeRepair3 *)self updateWithFaceIndex:v6];
        if (v7)
        {
          break;
        }

        if (self->S.IOD < 54.0)
        {
          failureCauses = self->failureCauses;
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"red-eye correction was prevented: (face %d) features too small to resolve properly", (v6 + 1)];
          goto LABEL_10;
        }

        initBitmap(&self->faceBitmap, self->FC.FR.maxcol - self->FC.FR.mincol, self->FC.FR.maxrow - self->FC.FR.minrow, 4, 1, 100.0);
        if (self->faceBitmap.baseAddress)
        {
          v10 = offsetBitmapRect(*&self->FC.FR.minrow, *&self->FC.FR.mincol, -self->subRectangle.mincol, -self->subRectangle.minrow);
          copySliceOfBitmapToBitmap(&self->fullBitmap, &self->faceBitmap.baseAddress, v10, v11);
          [(CIRedEyeRepair3 *)self gatherFaceStatistics:&self->M];
          inspector = self->inspector;
          if (inspector)
          {
            [(RedEyeInspector3 *)inspector getFaceStatistics:&self->M];
          }

          *&v48[0] = 0;
          v49 = 0;
          v13 = [(CIRedEyeRepair3 *)self repairDictionary:v48 withEyeIndex:0];
          v14 = [(CIRedEyeRepair3 *)self repairDictionary:&v49 withEyeIndex:1];
          v15 = 0.0;
          v16 = 0.0;
          v17 = 0.0;
          v18 = 0.0;
          v19 = 0.0;
          if (!v13)
          {
            [objc_msgSend(*&v48[0] objectForKeyedSubscript:{@"xPosition", "floatValue"}];
            v21 = v20;
            [objc_msgSend(*&v48[0] objectForKeyedSubscript:{@"hue", "floatValue"}];
            v23 = v22;
            [objc_msgSend(*&v48[0] objectForKeyedSubscript:{@"saturation", "floatValue"}];
            v25 = v24;
            [objc_msgSend(*&v48[0] objectForKeyedSubscript:{@"luminance", "floatValue"}];
            v16 = v21;
            v17 = v23;
            v18 = v25;
            v19 = v26;
          }

          v27 = 0.0;
          v28 = 0.0;
          v29 = 0.0;
          if (!v14)
          {
            [objc_msgSend(v49 objectForKeyedSubscript:{@"xPosition", "floatValue"}];
            v31 = v30;
            [objc_msgSend(v49 objectForKeyedSubscript:{@"hue", "floatValue"}];
            v33 = v32;
            [objc_msgSend(v49 objectForKeyedSubscript:{@"saturation", "floatValue"}];
            v35 = v34;
            [objc_msgSend(v49 objectForKeyedSubscript:{@"luminance", "floatValue"}];
            v15 = v31;
            v27 = v33;
            v28 = v35;
            v29 = v36;
          }

          v37 = self->inspector;
          if (!v37)
          {
            goto LABEL_26;
          }

          [(RedEyeInspector3 *)v37 getIdentifyingString:&v50 settings:&self->S];
          if (v13 && v14)
          {
            goto LABEL_57;
          }

          printf("%s ", &v50);
          if (v13)
          {
            if (v14)
            {
              goto LABEL_25;
            }

LABEL_64:
            printf("R[xp %.3f hue %.3f sat %.3f lum %.1f] ", v15, v27, v28, v29);
          }

          else
          {
            printf("L[xp %.3f hue %.3f sat %.3f lum %.1f] ", v16, v17, v18, v19);
            if (!v14)
            {
              goto LABEL_64;
            }
          }

LABEL_25:
          putchar(10);
LABEL_26:
          if (!v13)
          {
            if (v17 <= 0.384 || v17 >= 0.426 || v18 >= 0.3 || v18 <= 0.118 || v19 <= 100.0 || fabs(v16) <= 0.075)
            {
              v13 = 0;
              if (v17 > 0.64 && v17 < 0.75 && v19 > 190.0)
              {
                v38 = self->inspector;
                v13 = 61;
                if (v38)
                {
                  v39 = "%s (L) prevent shine repair\n";
LABEL_40:
                  [(RedEyeInspector3 *)v38 getIdentifyingString:&v50 settings:&self->S];
                  printf(v39, &v50);
                }
              }
            }

            else
            {
              v38 = self->inspector;
              v13 = 60;
              if (v38)
              {
                v39 = "%s (L) prevent sclera repair\n";
                goto LABEL_40;
              }
            }
          }

          if (!v14)
          {
            if (v27 <= 0.384 || v27 >= 0.426 || v28 >= 0.3 || v28 <= 0.118 || v29 <= 100.0 || fabs(v15) <= 0.075)
            {
              v14 = 0;
              if (v27 > 0.64 && v27 < 0.75 && v29 > 190.0)
              {
                v40 = self->inspector;
                v14 = 61;
                if (v40)
                {
                  v41 = "%s (R) prevent shine repair\n";
LABEL_55:
                  [(RedEyeInspector3 *)v40 getIdentifyingString:&v50 settings:&self->S];
                  printf(v41, &v50);
                }
              }
            }

            else
            {
              v40 = self->inspector;
              v14 = 60;
              if (v40)
              {
                v41 = "%s (R) prevent sclera repair\n";
                goto LABEL_55;
              }
            }
          }

          if (v13)
          {
LABEL_57:
            v42 = self->failureCauses;
            v43 = [(CIRedEyeRepair3 *)self stringWithRER3Error:v13];
            repairs = v42;
          }

          else
          {
            repairs = self->repairs;
            v43 = *&v48[0];
          }

          [(NSMutableArray *)repairs addObject:v43];
          if (v14)
          {
            v45 = self->failureCauses;
            v46 = [(CIRedEyeRepair3 *)self stringWithRER3Error:v14];
            v47 = v45;
          }

          else
          {
            v47 = self->repairs;
            v46 = v49;
          }

          [(NSMutableArray *)v47 addObject:v46];
          termBitmap(&self->faceBitmap.baseAddress);
          self->faceBitmap.baseAddress = 0;
        }

LABEL_11:
        v6 = (v6 + 1);
        if (v4 == v6)
        {
          goto LABEL_66;
        }
      }

      failureCauses = self->failureCauses;
      v9 = [(CIRedEyeRepair3 *)self stringWithRER3Error:v7];
LABEL_10:
      [(NSMutableArray *)failureCauses addObject:v9];
      goto LABEL_11;
    }
  }

  else
  {
    -[NSMutableArray addObject:](v5, "addObject:", [MEMORY[0x1E696AEC0] stringWithFormat:@"red-eye correction was prevented: no face detected"]);
    if (!self->S.forceFail)
    {
      return;
    }
  }

LABEL_66:
  if (self->S.orientation != 1)
  {
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    [(CIRedEyeRepair3 *)self inverseImageTransformForOrientation:?];
    v48[0] = v50;
    v48[1] = v51;
    v48[2] = v52;
    [(CIRedEyeRepair3 *)self transformRepairArray:v48];
  }
}

- (id)repairWithSide:(int)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  repairs = self->repairs;
  v6 = [(NSMutableArray *)repairs countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v16;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v16 != v8)
    {
      objc_enumerationMutation(repairs);
    }

    v10 = *(*(&v15 + 1) + 8 * v9);
    v11 = [objc_msgSend(v10 objectForKeyedSubscript:{@"rf", "intValue"}];
    v12 = [objc_msgSend(v10 objectForKeyedSubscript:{@"re", "intValue"}];
    if (v11 == self->S.faceIndex && v12 == a3)
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [(NSMutableArray *)repairs countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)mutableCopyOfArray:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = 0;
    v3 = [MEMORY[0x1E696AE40] dataWithPropertyList:a3 format:200 options:0 error:&v7];
    if (v3)
    {
      v4 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:1 format:0 error:&v7];
      if (v4)
      {
        return v4;
      }
    }

    v6 = [v7 localizedDescription];
    [v6 getCString:v8 maxLength:128 encoding:{objc_msgSend(MEMORY[0x1E696AEC0], "defaultCStringEncoding")}];
    printf("mutableCopyOfArray: %s\n", v8);
  }

  return 0;
}

- (CGPoint)leftHandedTransform:(CGAffineTransform *)a3 ofPoint:(CGPoint)a4
{
  d = a3->d;
  if (a3->a == 0.0 && d == 0.0)
  {
    yf = self->S.yf;
    xf = self->S.xf;
  }

  else
  {
    yf = self->S.yf;
    xf = yf;
  }

  v7 = yf - a4.y;
  v8 = a3->tx + v7 * a3->c + a3->a * a4.x;
  v9 = xf - (a3->ty + v7 * d + a3->b * a4.x);
  v10 = v8;
  result.y = v9;
  result.x = v10;
  return result;
}

- (void)transformGlobalsWithTransform:(CGAffineTransform *)a3
{
  mincol = self->FC.FR.mincol;
  minrow = self->FC.FR.minrow;
  maxcol = self->FC.FR.maxcol;
  maxrow = self->FC.FR.maxrow;
  v9 = *&a3->c;
  v68 = *&a3->a;
  v69 = v9;
  v70 = *&a3->tx;
  [(CIRedEyeRepair3 *)self leftHandedTransform:&v68 ofPoint:mincol, minrow];
  v11 = v10;
  v13 = v12;
  v14 = *&a3->c;
  v68 = *&a3->a;
  v69 = v14;
  v70 = *&a3->tx;
  [(CIRedEyeRepair3 *)self leftHandedTransform:&v68 ofPoint:maxcol, maxrow];
  v15 = v11;
  *&v16 = v16;
  *&v17 = fminf(v15, *&v16);
  *&v16 = fmaxf(v15, *&v16);
  v18 = v13;
  *&v19 = v19;
  v20.f32[0] = fminf(v18, *&v19);
  v20.i32[1] = fmaxf(v18, *&v19);
  v20.i64[1] = __PAIR64__(LODWORD(v16), v17);
  self->FC.FR = vcvtq_s32_f32(vrndxq_f32(v20));
  v21 = *&a3->c;
  v68 = *&a3->a;
  v69 = v21;
  v70 = *&a3->tx;
  [(CIRedEyeRepair3 *)self leftHandedTransform:&v68 ofPoint:self->FC.leftEye.x, self->FC.leftEye.y];
  self->FC.leftEye.x = v22;
  self->FC.leftEye.y = v23;
  v24 = *&a3->c;
  v68 = *&a3->a;
  v69 = v24;
  v70 = *&a3->tx;
  [(CIRedEyeRepair3 *)self leftHandedTransform:&v68 ofPoint:self->FC.rightEye.x, self->FC.rightEye.y];
  self->FC.rightEye.x = v25;
  self->FC.rightEye.y = v26;
  for (i = 184; i != 312; i += 16)
  {
    v28 = self + i;
    v29 = *&a3->c;
    v68 = *&a3->a;
    v69 = v29;
    v70 = *&a3->tx;
    [(CIRedEyeRepair3 *)self leftHandedTransform:&v68 ofPoint:*(&self->super.isa + i), *(&self->inspector + i)];
    *v28 = v30;
    *(v28 + 1) = v31;
    v32 = *&a3->c;
    v68 = *&a3->a;
    v69 = v32;
    v70 = *&a3->tx;
    [(CIRedEyeRepair3 *)self leftHandedTransform:&v68 ofPoint:*(v28 + 16), *(v28 + 17)];
    *(v28 + 16) = v33;
    *(v28 + 17) = v34;
  }

  v35 = self->FC.LR.mincol;
  v36 = self->FC.LR.minrow;
  v37 = self->FC.LR.maxcol;
  v38 = self->FC.LR.maxrow;
  v39 = *&a3->c;
  v68 = *&a3->a;
  v69 = v39;
  v70 = *&a3->tx;
  [(CIRedEyeRepair3 *)self leftHandedTransform:&v68 ofPoint:v35, v36];
  v41 = v40;
  v43 = v42;
  v44 = *&a3->c;
  v68 = *&a3->a;
  v69 = v44;
  v70 = *&a3->tx;
  [(CIRedEyeRepair3 *)self leftHandedTransform:&v68 ofPoint:v37, v38];
  v45 = v41;
  *&v46 = v46;
  *&v47 = fminf(v45, *&v46);
  *&v48 = fmaxf(v45, *&v46);
  *&v46 = v43;
  *&v49 = v49;
  v50.f32[0] = fminf(*&v46, *&v49);
  v51 = fmaxf(*&v46, *&v49);
  v52 = self->FC.RR.mincol;
  v53 = self->FC.RR.maxrow;
  v54 = self->FC.RR.minrow;
  v50.f32[1] = v51;
  v55 = self->FC.RR.maxcol;
  v50.i64[1] = __PAIR64__(v48, v47);
  self->FC.LR = vcvtq_s32_f32(vrndxq_f32(v50));
  v56 = v53;
  v57 = *&a3->c;
  v68 = *&a3->a;
  v69 = v57;
  v70 = *&a3->tx;
  [(CIRedEyeRepair3 *)self leftHandedTransform:&v68 ofPoint:v52, v54];
  v59 = v58;
  v61 = v60;
  v62 = *&a3->c;
  v68 = *&a3->a;
  v69 = v62;
  v70 = *&a3->tx;
  [(CIRedEyeRepair3 *)self leftHandedTransform:&v68 ofPoint:v55, v56];
  v63 = v59;
  *&v64 = v64;
  v65 = v61;
  *&v66 = v66;
  v67.f32[0] = fminf(v65, *&v66);
  v67.i32[1] = fmaxf(v65, *&v66);
  v67.i64[1] = __PAIR64__(COERCE_UNSIGNED_INT(fmaxf(v63, *&v64)), COERCE_UNSIGNED_INT(fminf(v63, *&v64)));
  self->FC.RR = vcvtq_s32_f32(vrndxq_f32(v67));
}

- (void)transformConvexHull:(id *)a3 withTransform:(CGAffineTransform *)a4
{
  if (a3->var1 >= 1)
  {
    v16 = v4;
    v17 = v5;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = &a3->var3[v9];
      v12 = *&a4->c;
      v15[0] = *&a4->a;
      v15[1] = v12;
      v15[2] = *&a4->tx;
      [(CIRedEyeRepair3 *)self leftHandedTransform:v15 ofPoint:v11->x, v11->y];
      v11->x = v13;
      v11->y = v14;
      ++v10;
      ++v9;
    }

    while (v10 < a3->var1);
  }
}

- (int)transformRepairArray:(CGAffineTransform *)a3
{
  v5 = [(NSMutableArray *)self->repairs count];
  v6 = a3->a == 0.0 && a3->d == 0.0;
  if (v5 < 1)
  {
    return 0;
  }

  v7 = 0;
  v28 = 0;
  v29 = 0;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  p_size = &self->S.inputImageExtent.size;
  v9 = v5 & 0x7FFFFFFF;
  v10 = 0;
  v11 = 0.0;
  __asm { FMOV            V9.2S, #1.0 }

  v22 = 0u;
  while ([(CIRedEyeRepair3 *)self unpackToGlobalRepairDictionary:[(NSMutableArray *)self->repairs objectAtIndexedSubscript:v7 convexHull:v22] facts:&v29, v26])
  {
    v17 = *&a3->c;
    v23 = *&a3->a;
    v24 = v17;
    v25 = *&a3->tx;
    [(CIRedEyeRepair3 *)self transformGlobalsWithTransform:&v23];
    v18 = *&a3->c;
    v23 = *&a3->a;
    v24 = v18;
    v25 = *&a3->tx;
    [(CIRedEyeRepair3 *)self transformConvexHull:v29 withTransform:&v23];
    if (v6)
    {
      v10 = vcvt_f32_f64(*p_size);
      *&v19 = *&self->S.xf;
      v11 = *(&v19 + 1);
      *&self->S.xf = vrev64_s32(*&v19);
      *&self->S.xfi = vrev64_s32(vdiv_f32(_D9, *&v19));
      v22 = v19;
      self->S.ify = rintf(*&v19);
      v20 = vcvtq_f64_f32(v10);
      *p_size = vextq_s8(v20, v20, 8uLL);
    }

    result = [(CIRedEyeRepair3 *)self packGlobalRepairDictionary:&v28 withConvexHull:v29 facts:v26, v22];
    if (result)
    {
      return result;
    }

    [(NSMutableArray *)self->repairs replaceObjectAtIndex:v7 withObject:v28];
    if (v6)
    {
      self->S.yf = v11;
      LODWORD(self->S.xf) = v22;
      self->S.xfi = 1.0 / *&v22;
      self->S.yfi = 1.0 / v11;
      self->S.ify = rintf(v11);
      *p_size = vcvtq_f64_f32(v10);
    }

    if (v9 == ++v7)
    {
      return 0;
    }
  }

  return 1;
}

- (id)repairArray
{
  v2 = [(CIRedEyeRepair3 *)self mutableCopyOfArray:self->repairs];

  return v2;
}

- (id)stringWithRER3Error:(int)a3
{
  if ((a3 - 1) > 0x3C)
  {
    v3 = "unknown error code";
  }

  else
  {
    v3 = off_1E75C3A70[a3 - 1];
  }

  return [MEMORY[0x1E696AEC0] stringWithCString:v3 encoding:30];
}

- (void)executeRepair:(id)a3
{
  self->failureCauses = [MEMORY[0x1E695DF70] array];
  v5 = [(CIRedEyeRepair3 *)self executeRepairWithRepairDictionary:a3];
  if (v5)
  {
    failureCauses = self->failureCauses;
    v7 = [(CIRedEyeRepair3 *)self stringWithRER3Error:v5];

    [(NSMutableArray *)failureCauses addObject:v7];
  }
}

- (void)magnitudeMap:(id *)a3 fromGabor:(id *)a4
{
  var2 = a4->var2;
  if (var2 >= 1)
  {
    v5 = 0;
    var1 = a4->var1;
    var6 = a3->var6;
    var3 = a3->var3;
    var0 = a3->var0;
    v10 = a4->var0;
    v11 = 4 * a4->var3;
    v12 = 4 * a4->var6;
    do
    {
      if (var1 >= 1)
      {
        v13 = var1;
        v14 = 8;
        v15 = var0;
        do
        {
          *v15 = (*&v10[v14] * 255.0);
          v15 += var6;
          v14 += v12;
          --v13;
        }

        while (v13);
      }

      ++v5;
      var0 += var3;
      v10 += v11;
    }

    while (v5 != var2);
  }
}

- (void)condenseFourChannelRecognitionMap:(id *)a3 intoOneChanneMap:(id *)a4
{
  bzero(a4->var0, a4->var5);
  var2 = a3->var2;
  if (var2 >= 1)
  {
    v7 = 0;
    var1 = a3->var1;
    var6 = a4->var6;
    var3 = a4->var3;
    var0 = a4->var0;
    v12 = a3->var6;
    v13 = a3->var3;
    v14 = a3->var0;
    do
    {
      if (var1 >= 1)
      {
        v15 = var1;
        v16 = var0;
        v17 = v14;
        do
        {
          *v16 = *v17;
          v17 += v12;
          v16 += var6;
          --v15;
        }

        while (v15);
      }

      ++v7;
      v14 += v13;
      var0 += var3;
    }

    while (v7 != var2);
  }
}

- (int)initShapePoints:(id *)a3 withMaxPoints:(int)a4
{
  v6 = malloc_type_malloc(48 * a4, 0x1000040EED21634uLL);
  a3->var2 = v6;
  if (!v6)
  {
    return 29;
  }

  result = 0;
  a3->var0 = 0;
  a3->var1 = a4;
  return result;
}

- (int)addPoint:(CGPoint)a3 toShapePoints:(id *)a4
{
  var0 = a4->var0;
  if (a4->var0 >= a4->var1)
  {
    return 30;
  }

  result = 0;
  v6 = a4->var2 + 48 * var0;
  *v6 = a3;
  *(v6 + 2) = 0;
  *(v6 + 6) = 0;
  a4->var0 = var0 + 1;
  return result;
}

- (void)termShapePoints:(id *)a3
{
  free(a3->var2);
  *&a3->var0 = 0;
  a3->var2 = 0;
}

- (int)copyShape:(id *)a3 into:(id *)a4 transform:(CGAffineTransform *)a5 height:(int)a6
{
  v10 = *&a3->var3;
  *&a4->var0 = *&a3->var0;
  *&a4->var3 = v10;
  a4->var2 = 0;
  v11 = malloc_type_malloc(48 * a3->var0, 0x1000040EED21634uLL);
  a4->var2 = v11;
  if (!v11)
  {
    return 31;
  }

  memmove(v11, a3->var2, 48 * a3->var0);
  var0 = a4->var0;
  a4->var1 = a4->var0;
  if (var0 >= 1)
  {
    var2 = a4->var2;
    do
    {
      v14 = a6 - *(var2 + 1);
      v15 = *var2 + 0.5;
      *var2 = v15;
      *(var2 + 1) = v14;
      *var2 = vaddq_f64(*&a5->tx, vmlaq_n_f64(vmulq_n_f64(*&a5->c, v14), *&a5->a, v15));
      var2 = (var2 + 48);
      --var0;
    }

    while (var0);
  }

  return 0;
}

- (BOOL)initGridWithBitmap:(id *)a3 scale:(int)a4
{
  v4 = (a3->var1 + a4 - 1) / a4;
  p_G = &self->G;
  v6 = (a3->var2 + a4 - 1) / a4;
  self->G.width = v4;
  self->G.height = v6;
  self->G.scaleFactor = 1.0 / a4;
  v7 = malloc_type_malloc(8 * v6 * v4, 0x100004000313F17uLL);
  p_G->grid = v7;
  if (v7)
  {
    p_G->maxPoints = 500;
    v8 = malloc_type_malloc(0xBB80uLL, 0x1000040565EDBD2uLL);
    p_G->points = v8;
    if (v8)
    {
      __memset_chk();
      p_G->nPoints = 0;
      height = p_G->height;
      if (height >= 1)
      {
        grid = p_G->grid;
        width = p_G->width;
        do
        {
          if (width >= 1)
          {
            memset(grid, 255, 8 * width);
            grid = (grid + 8 * (width - 1) + 8);
          }

          --height;
        }

        while (height);
      }

      p_G->nextNetNumber = 1;
      p_G->maxThreads = 200;
      v12 = malloc_type_malloc(0x4B00uLL, 0x1000040DB95C216uLL);
      p_G->threads = v12;
      if (v12)
      {
        __memset_chk();
        p_G->nThreads = 0;
        p_G->maxShapes = 20;
        v13 = malloc_type_malloc(0x280uLL, 0x1020040A150DD5AuLL);
        p_G->shapes = v13;
        if (v13)
        {
          __memset_chk();
          p_G->nShapes = 0;
          LOBYTE(v7) = 1;
          return v7;
        }

        free(p_G->threads);
        p_G->threads = 0;
      }

      free(p_G->points);
      p_G->points = 0;
    }

    free(p_G->grid);
    LOBYTE(v7) = 0;
    p_G->grid = 0;
  }

  return v7;
}

- (void)termGrid
{
  p_G = &self->G;
  free(self->G.grid);
  p_G->grid = 0;
  free(p_G->points);
  p_G->points = 0;
  free(p_G->threads);
  p_G->threads = 0;
  shapes = p_G->shapes;
  if (p_G->nShapes >= 1)
  {
    v5 = 0;
    do
    {
      [(CIRedEyeRepair3 *)self termShapePoints:shapes];
      ++v5;
      shapes = (shapes + 32);
    }

    while (v5 < p_G->nShapes);
    shapes = p_G->shapes;
  }

  free(shapes);
  p_G->shapes = 0;
}

- (void)point:(CGPoint)a3 toGridRow:(int *)a4 column:(int *)a5
{
  scaleFactor = self->G.scaleFactor;
  v6 = vcvtmd_s64_f64(a3.y * scaleFactor);
  if (v6 < 0)
  {
    v6 = 0;
  }

  else
  {
    height = self->G.height;
    if (height <= v6)
    {
      v6 = height - 1;
    }
  }

  v8 = vcvtmd_s64_f64(a3.x * scaleFactor);
  if (v8 < 0)
  {
    v10 = 0;
  }

  else
  {
    width = self->G.width;
    if (width <= v8)
    {
      v10 = width - 1;
    }

    else
    {
      v10 = v8;
    }
  }

  *a4 = v6;
  *a5 = v10;
}

- (int)insertPoint:(CGPoint)a3 andDirection:(CGPoint)a4 intoGrid:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  v8 = a3.y;
  v9 = a3.x;
  p_G = &self->G;
  nPoints = self->G.nPoints;
  maxPoints = self->G.maxPoints;
  if (nPoints >= maxPoints)
  {
    v15 = malloc_type_malloc(96 * maxPoints + 19200, 0x1000040565EDBD2uLL);
    if (!v15)
    {
      return 19;
    }

    points = v15;
    memmove(v15, p_G->points, 96 * p_G->nPoints);
    free(p_G->points);
    p_G->points = points;
    nPoints = p_G->nPoints;
    p_G->maxPoints += 200;
  }

  else
  {
    points = self->G.points;
  }

  v21 = 0;
  p_G->nPoints = nPoints + 1;
  v16 = points + 96 * nPoints;
  if (v5)
  {
    [(CIRedEyeRepair3 *)self point:&v21 + 4 toGridRow:&v21 column:v9, v8];
    v17 = (p_G->grid + 8 * v21 + 8 * p_G->width * HIDWORD(v21));
    v18 = *v17;
  }

  else
  {
    v17 = 0;
    v18 = -1;
  }

  result = 0;
  *(v16 + 16) = v18;
  *v16 = v9;
  *(v16 + 1) = v8;
  *(v16 + 2) = x;
  *(v16 + 3) = y;
  *(v16 + 68) = -1;
  nextNetNumber = p_G->nextNetNumber;
  *(v16 + 19) = 0;
  *(v16 + 20) = nextNetNumber;
  p_G->nextNetNumber = nextNetNumber + 1;
  if (v5)
  {
    result = 0;
    *v17 = nPoints;
  }

  return result;
}

- (int)newThread:(id *)a3
{
  p_G = &self->G;
  nThreads = self->G.nThreads;
  maxThreads = self->G.maxThreads;
  if (nThreads < maxThreads)
  {
    threads = self->G.threads;
LABEL_5:
    result = 0;
    p_G->nThreads = nThreads + 1;
    *a3 = (threads + 96 * nThreads);
    return result;
  }

  v8 = malloc_type_malloc(96 * maxThreads + 9600, 0x1000040DB95C216uLL);
  if (v8)
  {
    threads = v8;
    memmove(v8, p_G->threads, 96 * p_G->nThreads);
    free(p_G->threads);
    p_G->threads = threads;
    nThreads = p_G->nThreads;
    p_G->maxThreads += 100;
    goto LABEL_5;
  }

  return 36;
}

- (int)newShape:(id *)a3
{
  p_G = &self->G;
  nShapes = self->G.nShapes;
  maxShapes = self->G.maxShapes;
  if (nShapes < maxShapes)
  {
    shapes = self->G.shapes;
LABEL_5:
    result = 0;
    p_G->nShapes = nShapes + 1;
    *a3 = (shapes + 32 * nShapes);
    return result;
  }

  v8 = malloc_type_malloc(32 * maxShapes + 320, 0x1020040A150DD5AuLL);
  if (v8)
  {
    shapes = v8;
    memmove(v8, p_G->shapes, 32 * p_G->nShapes);
    free(p_G->shapes);
    p_G->shapes = shapes;
    nShapes = p_G->nShapes;
    p_G->maxShapes += 10;
    goto LABEL_5;
  }

  return 34;
}

- (int)connectThreads:(int)a3 drop1:(int)a4 and:(int)a5 drop2:(int)a6
{
  threads = self->G.threads;
  v8 = threads + 96 * a3;
  v9 = (threads + 96 * a5);
  v10 = *(v8 + 1);
  points = self->G.points;
  v12 = v10;
  if (a4 >= 1)
  {
    do
    {
      v13 = points + 96 * v12;
      v14 = *(v13 + 18);
      *(v13 + 18) = -1;
      v12 = v14;
      *(points + 24 * v14 + 17) = -1;
      --a4;
    }

    while (a4);
    v10 = v14;
  }

  v15 = *v9;
  v16 = *v9;
  if (a6 >= 1)
  {
    do
    {
      v17 = points + 96 * v16;
      v18 = *(v17 + 17);
      *(v17 + 17) = -1;
      v16 = v18;
      *(points + 24 * v18 + 18) = -1;
      --a6;
    }

    while (a6);
    v15 = v18;
  }

  *(points + 24 * v12 + 17) = v15;
  *(points + 24 * v16 + 18) = v10;
  *(v8 + 1) = v9[1];
  [(CIRedEyeRepair3 *)self removeThreadAtIndex:*&a5];
  *(v9 + 24) = 0;

  return [(CIRedEyeRepair3 *)self gatherThreadInfo:v8];
}

- (void)putThreadAtIndex:(int)a3
{
  v11 = 0;
  p_G = &self->G;
  v5 = (self->G.threads + 96 * a3);
  v6 = (self->G.points + 96 * *v5);
  [(CIRedEyeRepair3 *)self point:&v11 + 4 toGridRow:&v11 column:*v6, v6[1]];
  v7 = p_G->grid + 8 * v11 + 8 * p_G->width * HIDWORD(v11);
  v10 = *(v7 + 4);
  v8 = (v7 + 4);
  v9 = v10;
  v5[7] = v10;
  v5[8] = -1;
  if (v10 != -1)
  {
    *(p_G->threads + 24 * v9 + 8) = a3;
  }

  *v8 = a3;
}

- (void)removeThreadAtIndex:(int)a3
{
  v9 = 0;
  p_G = &self->G;
  threads = self->G.threads;
  v5 = (threads + 96 * a3);
  v6 = v5[8];
  if (v6 == -1)
  {
    v8 = (self->G.points + 96 * *v5);
    [(CIRedEyeRepair3 *)self point:&v9 + 4 toGridRow:&v9 column:*v8, v8[1]];
    v7 = v5[7];
    *(p_G->grid + 2 * v9 + 2 * p_G->width * HIDWORD(v9) + 1) = v7;
  }

  else
  {
    v7 = v5[7];
    *(threads + 24 * v6 + 7) = v7;
  }

  if (v7 != -1)
  {
    *(p_G->threads + 24 * v7 + 8) = v5[8];
  }
}

- (int)lookForPoint:(CGPoint *)a3 onLine:(id)a4 nearestPoint:(CGPoint)a5
{
  if (a4.var0 == 0.0 && a4.var1 == 0.0)
  {
    return 37;
  }

  result = 0;
  v6 = a5.y * a4.var0 + -a4.var1 * a5.x;
  v7 = a4.var0 == 0.0;
  v8 = (a4.var1 * a4.var1) + (a4.var0 * a4.var0);
  v9 = -((a4.var1 * v6) + (a4.var0 * a4.var2)) / v8;
  v10 = -(a4.var2 + (a4.var0 * v9)) / a4.var1;
  v11 = ((a4.var2 * -a4.var1) + (a4.var0 * v6)) / v8;
  v12 = -(a4.var2 + (a4.var1 * v11)) / a4.var0;
  if (v7)
  {
    v12 = v9;
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  a3->x = v12;
  a3->y = v13;
  return result;
}

- (void)forAllGridPointsNear:(int)a3 withinRadius:(float)a4 do:(void *)a5 context:(void *)a6
{
  v26 = 0;
  v27 = 0;
  p_G = &self->G;
  v12 = (self->G.points + 96 * a3);
  v13 = *v12;
  v14 = v12[1];
  v15 = a4;
  [(CIRedEyeRepair3 *)self point:&v27 + 4 toGridRow:&v26 + 4 column:*v12 - a4, v14 - a4];
  [(CIRedEyeRepair3 *)self point:&v27 toGridRow:&v26 column:*v12 + v15, v12[1] + v15];
  v16 = v27;
  v17 = HIDWORD(v27);
  if (SHIDWORD(v27) <= v27)
  {
    v18 = a4 * a4;
    v19 = v26;
    do
    {
      v20 = HIDWORD(v26);
      if (SHIDWORD(v26) <= v19)
      {
        do
        {
          v21 = *(p_G->grid + 2 * v20 + 2 * p_G->width * v17);
          if (v21 != -1)
          {
            do
            {
              v22 = p_G->points + 96 * v21;
              if (v21 != a3)
              {
                v23 = *v22 - v13;
                v24 = *(v22 + 8) - v14;
                if (((v24 * v24) + (v23 * v23)) <= v18)
                {
                  (a5)(a6);
                }
              }

              v21 = *(v22 + 64);
            }

            while (v21 != -1);
            v19 = v26;
          }

          v25 = v20++ < v19;
        }

        while (v25);
        v16 = v27;
      }

      v25 = v17++ < v16;
    }

    while (v25);
  }
}

- (void)forAllGridThreadsNear:(CGPoint)a3 withinRadius:(float)a4 do:(void *)a5 context:(void *)a6
{
  y = a3.y;
  x = a3.x;
  v24 = 0;
  v25 = 0;
  v12 = a4;
  [(CIRedEyeRepair3 *)self point:&v25 + 4 toGridRow:&v24 + 4 column:a3.x - a4, a3.y - a4];
  [(CIRedEyeRepair3 *)self point:&v25 toGridRow:&v24 column:x + v12, y + v12];
  v13 = v25;
  v14 = HIDWORD(v25);
  if (SHIDWORD(v25) <= v25)
  {
    v15 = a4 * a4;
    v16 = v24;
    do
    {
      v17 = HIDWORD(v24);
      if (SHIDWORD(v24) <= v16)
      {
        do
        {
          v18 = *(self->G.grid + 2 * v17 + 2 * self->G.width * v14 + 1);
          if (v18 != -1)
          {
            do
            {
              v19 = (self->G.threads + 96 * v18);
              v20 = (self->G.points + 96 * *v19);
              v21 = *v20 - x;
              v22 = v20[1] - y;
              if (((v22 * v22) + (v21 * v21)) <= v15)
              {
                (a5)(a6);
              }

              v18 = v19[7];
            }

            while (v18 != -1);
            v16 = v24;
          }

          v23 = v17++ < v16;
        }

        while (v23);
        v13 = v25;
      }

      v23 = v14++ < v13;
    }

    while (v23);
  }
}

- (int)replacePointAndDirection:(int)a3
{
  v10 = 0uLL;
  v6 = self->G.points + 96 * a3;
  LODWORD(v3) = *(v6 + 21);
  LODWORD(v4) = *(v6 + 22);
  LODWORD(v5) = *(v6 + 23);
  result = [(CIRedEyeRepair3 *)self lookForPoint:&v10 onLine:v3 nearestPoint:v4, v5, *v6, *(v6 + 1)];
  if (!result)
  {
    *(v6 + 2) = *v6;
    *v6 = v10;
    v9 = *(v6 + 21);
    v8 = *(v6 + 22);
    if (*(v6 + 3) * -v9 + v8 * *(v6 + 2) >= 0.0)
    {
      v9 = -v9;
    }

    else
    {
      v8 = -v8;
    }

    *(v6 + 3) = *(v6 + 1);
    *(v6 + 2) = v8;
    *(v6 + 3) = v9;
  }

  return result;
}

- (int)linkUpPointIndex:(int)a3 toPointIndex:(int)a4
{
  points = self->G.points;
  v5 = (points + 96 * a3);
  v6 = (points + 96 * a4);
  v7 = v6[19];
  v8 = v5[19];
  if (v7 > v8 + 1)
  {
    return 0;
  }

  v9 = v5[20];
  if (v6[20] == v9)
  {
    return 0;
  }

  v10 = v6[18];
  if (v10 != -1)
  {
    *(points + 24 * v10 + 17) = -1;
    goto LABEL_5;
  }

  if (v7 <= 0)
  {
LABEL_5:
    v5[17] = a4;
    v6[18] = a3;
    v6[19] = v8 + 1;
    v6[20] = v9;
    v11 = *(points + 24 * a4 + 17);
    if (v11 != -1)
    {
      v12 = v5[20];
      v13 = v8 + 2;
      do
      {
        v14 = (points + 96 * v11);
        v14[19] = v13;
        v14[20] = v12;
        v11 = v14[17];
        ++v13;
      }

      while (v11 != -1);
    }

    return 0;
  }

  return 38;
}

- (int)copyGridInto:(id *)a3 transform:(CGAffineTransform *)a4 height:(int)a5
{
  p_G = &self->G;
  memmove(a3, &self->G, 0x50uLL);
  a3->var3 = 0;
  a3->var6 = 0;
  v9 = malloc_type_malloc(8 * a3->var1 * a3->var0, 0x100004000313F17uLL);
  a3->var3 = v9;
  if (v9)
  {
    memmove(v9, p_G->grid, 8 * a3->var1 * a3->var0);
    v10 = malloc_type_malloc(96 * a3->var4, 0x1000040565EDBD2uLL);
    a3->var6 = v10;
    if (v10)
    {
      memmove(v10, p_G->points, 96 * a3->var4);
      var4 = a3->var4;
      a3->var5 = var4;
      if (var4 >= 1)
      {
        var6 = a3->var6;
        v13 = a5;
        do
        {
          v14 = v13 - *(var6 + 1);
          v15 = *var6 + 0.5;
          *var6 = v15;
          *(var6 + 1) = v14;
          *var6 = vaddq_f64(*&a4->tx, vmlaq_n_f64(vmulq_n_f64(*&a4->c, v14), *&a4->a, v15));
          v16 = v13 - *(var6 + 5);
          v17 = *(var6 + 4) + 0.5;
          *(var6 + 4) = v17;
          *(var6 + 5) = v16;
          *(var6 + 2) = vaddq_f64(*&a4->tx, vmlaq_n_f64(vmulq_n_f64(*&a4->c, v16), *&a4->a, v17));
          LODWORD(v17) = *(var6 + 22);
          v18 = *(var6 + 21);
          v19 = *(var6 + 23) + v18 * -0.5 + (*&v17 * a5);
          *&v18 = v19 * a4->a - a4->tx * v18 + *&v17 * a4->ty;
          *(var6 + 22) = -*&v17;
          *(var6 + 23) = LODWORD(v18);
          var6 = (var6 + 96);
          --var4;
        }

        while (var4);
      }

      v20 = malloc_type_malloc(96 * a3->var8, 0x1000040DB95C216uLL);
      a3->var10 = v20;
      if (v20)
      {
        memmove(v20, p_G->threads, 96 * a3->var8);
        a3->var9 = a3->var8;
        v21 = malloc_type_malloc(32 * a3->var11, 0x1020040A150DD5AuLL);
        a3->var13 = v21;
        if (v21)
        {
          memmove(v21, p_G->shapes, 32 * a3->var11);
          var11 = a3->var11;
          if (var11 < 1)
          {
            result = 0;
            a3->var12 = var11;
            return result;
          }

          v23 = 0;
          var13 = a3->var13;
          v25 = vdupq_n_s64(var11 - 1);
          v26 = (var13 + 40);
          do
          {
            v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v23), xmmword_19CF22E40)));
            if (v27.i8[0])
            {
              *(v26 - 4) = 0;
            }

            if (v27.i8[4])
            {
              *v26 = 0;
            }

            v23 += 2;
            v26 += 8;
          }

          while (((var11 + 1) & 0xFFFFFFFE) != v23);
          a3->var12 = var11;
          v28 = 0;
          v29 = (p_G->shapes + 8);
          while (1)
          {
            v30 = malloc_type_malloc(48 * *var13, 0x1000040EED21634uLL);
            *(var13 + 1) = v30;
            if (!v30)
            {
              break;
            }

            v32 = *v29;
            v29 += 4;
            v31 = v32;
            v33 = *var13;
            var13 = (var13 + 32);
            memmove(v30, v31, 48 * v33);
            result = 0;
            if (++v28 >= a3->var11)
            {
              return result;
            }
          }

          v35 = a3->var13;
          v36 = a3->var11;
          if (v36 >= 1)
          {
            v37 = 0;
            v38 = (v35 + 8);
            do
            {
              if (*v38)
              {
                free(*v38);
                *v38 = 0;
                v36 = a3->var11;
              }

              ++v37;
              v38 += 4;
            }

            while (v37 < v36);
            v35 = a3->var13;
          }

          free(v35);
          a3->var13 = 0;
        }

        free(a3->var10);
        a3->var10 = 0;
      }

      free(a3->var6);
      a3->var6 = 0;
    }

    free(a3->var3);
    a3->var3 = 0;
  }

  return 39;
}

- (int)nextPointIndexWithPointIndex:(int)a3
{
  v3 = self->G.points + 96 * a3;
  *&v5 = (self->S.capture * self->S.capture) + 1.0;
  HIDWORD(v5) = -1;
  [(CIRedEyeRepair3 *)self forAllGridPointsNear:*v3 withinRadius:*(v3 + 1) do:*(v3 + 84) context:__PAIR64__(LODWORD(self->S.alignmentTolerance), *(v3 + 23)), v5];
  return v6;
}

- (void)regressionWithPointIndex:(int)a3
{
  v3 = *&a3;
  v5 = (self->G.points + 96 * a3);
  v6 = *v5;
  v23 = vcvt_f32_f64(*v5);
  v22 = vcvt_hight_f32_f64(v23, v6);
  v24 = 1;
  p_S = &self->S;
  *v6.f64 = self->S.regressionRadius;
  [CIRedEyeRepair3 forAllGridPointsNear:"forAllGridPointsNear:withinRadius:do:context:" withinRadius:v6.f64[0] do:? context:?];
  v8 = vmul_n_f32(v23, 1.0 / 1);
  v9 = vsub_f32(*&v22.u32[2], *v22.f32);
  v10 = COERCE_DOUBLE(vcgt_f32(v9, vdup_lane_s32(v9, 1)));
  v20 = v8;
  if (LOBYTE(v10))
  {
    v21 = v8;
    *&v10 = p_S->regressionRadius;
    [(CIRedEyeRepair3 *)self forAllGridPointsNear:v3 withinRadius:regressionHorizontalAction do:&v21 context:v10];
    v11 = 0.0;
    if (*(&v21 + 2) != 0.0)
    {
      v11 = *(&v21 + 3) / *(&v21 + 2);
    }

    _S4 = v20.f32[1] - (v20.f32[0] * v11);
    _S0 = -1.0;
  }

  else
  {
    v21 = v8;
    *&v10 = p_S->regressionRadius;
    [(CIRedEyeRepair3 *)self forAllGridPointsNear:v3 withinRadius:regressionVerticalAction do:&v21 context:v10];
    _S0 = 0.0;
    if (*(&v21 + 2) != 0.0)
    {
      _S0 = *(&v21 + 3) / *(&v21 + 2);
    }

    _V4.S[1] = v20.i32[1];
    __asm { FMLS            S4, S0, V4.S[1] }

    v11 = -1.0;
  }

  v19 = 1.0 / sqrtf((_S0 * _S0) + (v11 * v11));
  v5[21] = v11 * v19;
  v5[22] = _S0 * v19;
  v5[23] = _S4 * v19;
}

- (int)initHull:(id *)a3 withOrientation:(BOOL)a4
{
  v6 = 24;
  v7 = malloc_type_malloc(0x18uLL, 0x10200409093602BuLL);
  if (v7)
  {
    v8 = v7;
    *v7 = a4;
    *(v7 + 4) = 0x4000000000;
    v9 = malloc_type_malloc(0x400uLL, 0x1000040451B5BE8uLL);
    *(v8 + 2) = v9;
    if (v9)
    {
      bzero(v9, 0x400uLL);
      v6 = 0;
      *a3 = v8;
    }

    else
    {
      free(v8);
      return 24;
    }
  }

  return v6;
}

- (void)termHull:(id *)a3
{
  free(a3->var3);

  free(a3);
}

- (int)addPoint:(CGPoint)a3 toHull:(id *)a4
{
  y = a3.y;
  x = a3.x;
  var1 = a4->var1;
  var2 = a4->var2;
  if (var1 < var2)
  {
    var3 = a4->var3;
LABEL_5:
    result = 0;
    a4->var1 = var1 + 1;
    p_x = &var3[var1].x;
    *p_x = x;
    p_x[1] = y;
    return result;
  }

  v10 = malloc_type_malloc(16 * var2 + 512, 0x1000040451B5BE8uLL);
  if (v10)
  {
    var3 = v10;
    memmove(v10, a4->var3, 16 * a4->var1);
    free(a4->var3);
    a4->var3 = var3;
    var1 = a4->var1;
    a4->var2 += 32;
    goto LABEL_5;
  }

  return 50;
}

- (BOOL)trimConcaveFromHull:(id *)a3
{
  var1 = a3->var1;
  if (var1 < 3)
  {
    return 0;
  }

  v4 = &a3->var3[var1];
  x = v4[-2].x;
  y = v4[-2].y;
  v7 = v4[-1].x;
  v8 = v4[-1].y;
  v9 = x - v4[-3].x;
  v10 = y - v4[-3].y;
  *&x = v7 - x;
  *&y = v8 - y;
  if (a3->var0 == ((v9 * *&y) - (v10 * *&x)) < 0.0)
  {
    return 0;
  }

  v4[-2].x = v7;
  v4[-2].y = v8;
  a3->var1 = var1 - 1;
  return 1;
}

- (BOOL)trimEndPointFromHull:(id *)a3
{
  var1 = a3->var1;
  if (var1 < 3)
  {
    return 0;
  }

  var3 = a3->var3;
  v5 = &var3[var1];
  x = v5[-1].x;
  y = v5[-1].y;
  v8 = x - v5[-2].x;
  v9 = y - v5[-2].y;
  *&x = var3->x - x;
  *&y = var3->y - y;
  if (a3->var0 == ((v8 * *&y) - (v9 * *&x)) < 0.0)
  {
    return 0;
  }

  a3->var1 = var1 - 1;
  return 1;
}

- (BOOL)trimStartPointFromHull:(id *)a3
{
  var1 = a3->var1;
  if (var1 < 3)
  {
    return 0;
  }

  var3 = a3->var3;
  v5 = &var3[var1];
  y = var3->y;
  v7 = var3->x - v5[-1].x;
  v8 = y - v5[-1].y;
  v9 = var3[1].x - var3->x;
  *&y = var3[1].y - y;
  if (a3->var0 == ((v7 * *&y) - (v8 * v9)) < 0.0)
  {
    return 0;
  }

  v11 = 0;
  v12 = 1;
  do
  {
    a3->var3[v11] = a3->var3[v11 + 1];
    ++v12;
    v13 = a3->var1;
    ++v11;
  }

  while (v12 < v13);
  a3->var1 = v13 - 1;
  return 1;
}

- (BOOL)isConvex:(id *)a3
{
  var1 = a3->var1;
  if (var1 < 1)
  {
    return 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v7 = 1;
    do
    {
      if (v4 * 16)
      {
        var3 = a3->var3;
        v9 = &var3[v4];
        p_x = &var3[v4 - 1].x;
        p_y = &var3[v4 - 1].y;
        v12 = &var3[v4].y;
        v13 = &var3[v4 + 1].y;
        v14 = &var3[var1];
        v15 = &v14[-2].x;
        v16 = &v14[-2].y;
        v6 = (var1 - 1);
        if (v6 == v4)
        {
          p_x = v15;
          p_y = v16;
          v9 = &var3[v6];
          v12 = &v9->y;
          v17 = &var3->y;
        }

        else
        {
          var3 = (var3 + v4 * 16 + 16);
          v17 = v13;
        }
      }

      else
      {
        v9 = a3->var3;
        v18 = &v9[var1];
        p_x = &v18[-1].x;
        p_y = &v18[-1].y;
        v12 = &v9->y;
        var3 = v9 + 1;
        v17 = &v9[1].y;
      }

      v19 = v9->x - *p_x;
      v20 = *v12 - *p_y;
      v21 = var3->x - v9->x;
      v22 = *v17 - *v12;
      if (a3->var0 != ((v19 * v22) - (v20 * v21)) < 0.0)
      {
        break;
      }

      v5 = v7 >= var1;
      ++v4;
      ++v7;
    }

    while (var1 != v4);
  }

  return v5;
}

- (int)convexHull:(id *)a3 ofOriented:(BOOL)a4 threadIndex:(int)a5
{
  v13 = 0;
  result = [(CIRedEyeRepair3 *)self initHull:&v13 withOrientation:a4];
  if (!result)
  {
    v9 = (self->G.threads + 96 * a5);
    if (v9[6])
    {
      v10 = (self->G.points + 96 * *v9);
      result = [(CIRedEyeRepair3 *)self addPoint:v13 toHull:*v10, v10[1]];
      if (!result)
      {
        v11 = *(v10 + 17);
        if (v11 == -1)
        {
          do
          {
LABEL_8:
              ;
            }
          }

          while ([(CIRedEyeRepair3 *)self trimStartPointFromHull:v13]);
          if ([(CIRedEyeRepair3 *)self isConvex:v13])
          {
            result = 0;
            *a3 = v13;
          }

          else
          {
            [(CIRedEyeRepair3 *)self termHull:v13];
            return 40;
          }
        }

        else
        {
          while (1)
          {
            v12 = (self->G.points + 96 * v11);
            result = [(CIRedEyeRepair3 *)self addPoint:v13 toHull:*v12, v12[1]];
            if (result)
            {
              break;
            }

              ;
            }

            v11 = *(v12 + 17);
            if (v11 == -1)
            {
              goto LABEL_8;
            }
          }
        }
      }
    }

    else
    {
      [(CIRedEyeRepair3 *)self termHull:v13];
      return 41;
    }
  }

  return result;
}

- (int)convexHull:(id *)a3 ofOriented:(BOOL)a4 shape:(id *)a5
{
  v13 = 0;
  result = [(CIRedEyeRepair3 *)self initHull:&v13 withOrientation:a4];
  if (!result)
  {
    var2 = a5->var2;
    result = [(CIRedEyeRepair3 *)self addPoint:v13 toHull:*var2, *(var2 + 1)];
    if (!result)
    {
      if (a5->var0 < 2)
      {
        do
        {
LABEL_8:
            ;
          }
        }

        while ([(CIRedEyeRepair3 *)self trimStartPointFromHull:v13]);
        result = 0;
        *a3 = v13;
      }

      else
      {
        v10 = 1;
        while (1)
        {
          v11 = *(var2 + 6);
          v12 = *(var2 + 7);
          var2 = (var2 + 48);
          result = [(CIRedEyeRepair3 *)self addPoint:v13 toHull:v11, v12];
          if (result)
          {
            break;
          }

            ;
          }

          if (++v10 >= a5->var0)
          {
            goto LABEL_8;
          }
        }
      }
    }
  }

  return result;
}

- (void)measureHull:(id *)a3 majorAxis:(CGPoint *)a4 majorTo:(CGPoint *)a5 majorDiameter:(float *)a6 minorAxis:(CGPoint *)a7 minorTo:(CGPoint *)a8 minorDiameter:(float *)a9
{
  var3 = a3->var3;
  var1 = a3->var1;
  v11 = &var3[var1];
  x = v11[-1].x;
  y = v11[-1].y;
  v15 = var3->x;
  v14 = var3->y;
  p_y = &var3[1].y;
  v17 = 0.0;
  v18 = -1;
  do
  {
    v19 = fabs(v15 * (*p_y - y) + x * (v14 - *p_y) + *(p_y - 1) * (y - v14)) * 0.5;
    ++v18;
    p_y += 2;
    v20 = v17 < v19;
    v17 = v19;
  }

  while (v20);
  if (var1 <= v18)
  {
    v32 = 0.0;
    v26 = -10000.0;
    v31 = 0.0;
    v23 = 10000.0;
    v30 = 0.0;
    v29 = 0.0;
    v28 = 0.0;
    v27 = 0.0;
    v25 = 0.0;
    v24 = 0.0;
  }

  else
  {
    v21 = 0;
    v22 = v18;
    v23 = 10000.0;
    v24 = 0.0;
    v25 = 0.0;
    v26 = -10000.0;
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
    do
    {
      p_x = &var3[v21 + 1].x;
      v34 = *p_x;
      v35 = p_x[1];
      v36 = &var3[v18].x;
      v37 = *v36;
      v38 = v36[1];
      v39 = fabs(v34 * (v38 - v14) + v15 * (v35 - v38) + *v36 * (v14 - v35)) * 0.5;
      if (v18 <= var1 - 1)
      {
        v40 = var1 - 1;
      }

      else
      {
        v40 = v18;
      }

      v41 = v39;
      v42 = v40 - v18;
      v43 = &var3[v18-- + 1].y;
      while (1)
      {
        v44 = v37 - v15;
        v45 = v38 - v14;
        v46 = (v45 * v45) + (v44 * v44);
        if (v46 < v23)
        {
          v23 = v46;
          v32 = v15;
          v31 = v14;
          v28 = v37;
          v27 = v38;
        }

        if (v46 > v26)
        {
          v26 = v46;
          v30 = v15;
          v29 = v14;
          v25 = v37;
          v24 = v38;
        }

        if (!v42)
        {
          break;
        }

        v37 = *(v43 - 1);
        v38 = *v43;
        v47 = fabs(v34 * (*v43 - v14) + v15 * (v35 - *v43) + v37 * (v14 - v35)) * 0.5;
        ++v18;
        --v42;
        v43 += 2;
        v20 = v41 < v47;
        v41 = v47;
        if (!v20)
        {
          goto LABEL_17;
        }
      }

      v18 = v40;
LABEL_17:
      if (v21 >= v22)
      {
        break;
      }

      ++v21;
      v14 = v35;
      v15 = v34;
    }

    while (v18 < var1);
  }

  a4->x = v30;
  a4->y = v29;
  a5->x = v25;
  a5->y = v24;
  *a6 = sqrtf(v26);
  a7->x = v32;
  a7->y = v31;
  a8->x = v28;
  a8->y = v27;
  *a9 = sqrtf(v23);
}

- (int)renderHull:(id *)a3 toBitmap:(id *)a4
{
  var1 = a4->var1;
  var2 = a4->var2;
  DeviceGray = CGColorSpaceCreateDeviceGray();
  if (!DeviceGray)
  {
    return 10;
  }

  v9 = DeviceGray;
  v10 = CGBitmapContextCreate(a4->var0, var1, var2, 8uLL, a4->var4, DeviceGray, 0);
  CGColorSpaceRelease(v9);
  if (!v10)
  {
    return 42;
  }

  CGContextSetRGBFillColor(v10, 0.0, 0.0, 0.0, 1.0);
  CGContextBeginPath(v10);
  CGContextMoveToPoint(v10, 0.0, 0.0);
  CGContextAddLineToPoint(v10, var1, 0.0);
  CGContextAddLineToPoint(v10, var1, var2);
  CGContextAddLineToPoint(v10, 0.0, var2);
  CGContextAddLineToPoint(v10, 0.0, 0.0);
  CGContextClosePath(v10);
  CGContextFillPath(v10);
  CGContextSetRGBFillColor(v10, 1.0, 1.0, 1.0, 1.0);
  CGContextBeginPath(v10);
  if (a3->var1 <= 0)
  {
    v13 = (var2 - 1);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = (var2 - 1);
    do
    {
      v14 = &a3->var3[v11];
      v15 = v14->x + 0.5;
      v16 = v13 - v14->y + 0.5;
      if (v11 * 16)
      {
        CGContextAddLineToPoint(v10, v15, v16);
      }

      else
      {
        CGContextMoveToPoint(v10, v15, v16);
      }

      ++v12;
      ++v11;
    }

    while (v12 < a3->var1);
  }

  CGContextAddLineToPoint(v10, a3->var3->x + 0.5, v13 - a3->var3->y + 0.5);
  CGContextClosePath(v10);
  CGContextFillPath(v10);
  CGContextRelease(v10);
  return 0;
}

- (int)widenedHull:(id *)a3 withHull:(id *)a4 by:(float)a5
{
  v34 = 0;
  v9 = [(CIRedEyeRepair3 *)self initHull:&v34 withOrientation:0];
  if (v9)
  {
    return v9;
  }

  var1 = a4->var1;
  if (var1 < 1)
  {
LABEL_15:
    v10 = 0;
    *a3 = v34;
  }

  else
  {
    v33 = 0.0;
    v32 = 0;
    v30 = 0;
    v12 = 24;
    v13 = 1;
    v31 = 0.0;
    while (1)
    {
      v14 = v12 == 24 ? var1 : 0;
      v15 = v13 >= var1 ? var1 : 0;
      var3 = a4->var3;
      v17 = &var3[v14] + v12;
      v18 = *(v17 - 40);
      v19 = *(v17 - 32);
      v20 = *(&var3[-1] + v12 - 8);
      v21 = *(&var3[-1].x + v12);
      v22 = (&var3->x + v12 + -16 * v15);
      v23 = *(v22 - 1);
      v24 = *v22;
      v25 = lineEquationThroughTwoPoints(&v32, v18, v19, v20, v21);
      if (v25)
      {
        break;
      }

      v25 = lineEquationThroughTwoPoints(&v30, v20, v21, v23, v24);
      if (v25)
      {
        break;
      }

      v26 = (*&v32 * *(&v30 + 1)) - (*&v30 * *(&v32 + 1));
      v27 = ((*(&v32 + 1) * (v31 + a5)) - (*(&v30 + 1) * (v33 + a5))) / v26;
      v28 = ((*&v30 * (v33 + a5)) - (*&v32 * (v31 + a5))) / v26;
      v33 = (v33 + a5) - a5;
      v31 = (v31 + a5) - a5;
      v9 = [(CIRedEyeRepair3 *)self addPoint:v34 toHull:v27, v28];
      if (v9)
      {
        return v9;
      }

      v12 += 16;
      if (++v13 - var1 == 1)
      {
        goto LABEL_15;
      }
    }

    v10 = v25;
    [(CIRedEyeRepair3 *)self termHull:v34];
  }

  return v10;
}

- (int)renderConvexHull:(id *)a3 distance:(float)a4 fieldToBitmap:(id *)a5
{
  v112 = *MEMORY[0x1E69E9840];
  v109 = 0;
  v107 = 0u;
  v108 = 0u;
  var0 = a5->var0;
  var2 = a5->var2;
  var3 = a5->var3;
  var6 = a5->var6;
  var1 = a5->var1;
  initBitmap(&v107, var1, var2, var6, 1, 100.0);
  if (!v107)
  {
    return 45;
  }

  v14 = [(CIRedEyeRepair3 *)self renderHull:a3 toBitmap:&v107];
  if (!v14)
  {
    v15 = v107;
    v16 = v108;
    v17 = SHIDWORD(v108);
    v106 = var0;
    bzero(var0, a5->var5);
    v18 = a3;
    v19 = a3->var1;
    v20 = malloc_type_malloc(12 * v19, 0x10000403E1C8BA9uLL);
    if (v20)
    {
      v103 = v16;
      v104 = var1;
      v21 = 0;
      v22 = var6;
      v23 = 1;
      v105 = v20;
      v24 = v20;
      while ((v19 & ~(v19 >> 31)) != v21)
      {
        if (v19 <= v23)
        {
          v25 = v19;
        }

        else
        {
          v25 = 0;
        }

        v26 = lineEquationThroughTwoPoints(v24, v18->var3[v21].x, v18->var3[v21].y, v18->var3[v23 - v25].x, v18->var3[v23 - v25].y);
        ++v21;
        v24 += 3;
        ++v23;
        if (v26)
        {
          v14 = v26;
          termBitmap(&v107);
          free(v105);
          return v14;
        }
      }

      v28 = v15;
      v29 = v18;
      v30 = v106;
      if (v19 < 1)
      {
LABEL_73:
        free(v105);
        if (var2 >= 1)
        {
          for (i = 0; i != var2; ++i)
          {
            if (v104 >= 1)
            {
              v100 = v104;
              v101 = v28;
              v102 = v30;
              do
              {
                if (*v101 >= 0x79u)
                {
                  *v102 = -1;
                }

                v102 += v22;
                v101 += v17;
                --v100;
              }

              while (v100);
            }

            v30 += var3;
            v28 += v103;
          }
        }

        termBitmap(&v107);
        return 0;
      }

      else
      {
        v31 = 0;
        while (1)
        {
          v32 = v31 ? 0 : v19;
          v33 = v31 + 1;
          v34 = v31 + 1 >= v19 ? v19 : 0;
          v35 = &v105[3 * v31 - 3 + 3 * v32];
          v36 = *v35;
          v37 = v35[1];
          v38 = &v105[3 * v31];
          v39 = *v38;
          v40 = v38[1];
          v41 = *v35 - *v38;
          v42 = v37 - v40;
          v43 = sqrtf((v42 * v42) + (v41 * v41));
          if (v43 == 0.0)
          {
            break;
          }

          v44 = v33 - v34;
          v45 = &v105[3 * (v33 - v34)];
          v46 = *v45;
          v47 = v45[1];
          v48 = v39 - *v45;
          v49.f32[0] = v40 - v47;
          v50 = sqrtf((v49.f32[0] * v49.f32[0]) + (v48 * v48));
          if (v50 == 0.0)
          {
            break;
          }

          v51 = v29->var3;
          p_x = &v51[v31].x;
          v53 = &v51[v44].x;
          v54 = *v53;
          v55 = *p_x;
          if (*v53 >= v55)
          {
            v56 = *p_x;
            if (*v53 > v55)
            {
              v55 = v54;
            }
          }

          else
          {
            v56 = v54;
          }

          v57 = v53[1];
          v58 = p_x[1];
          if (v57 >= v58)
          {
            v59 = p_x[1];
            if (v57 > v58)
            {
              v58 = v57;
            }
          }

          else
          {
            v59 = v57;
          }

          v60 = v35[2];
          v61 = v38[2];
          v62 = v45[2];
          v63 = 1.0 / v43;
          v64 = v41 * v63;
          v65 = v42 * v63;
          v66 = (v60 - v61) * v63;
          v67 = v61 - v62;
          v68 = 1.0 / v50;
          v69 = v61 + a4;
          v70 = v62 + a4;
          v71 = (v40 * (v62 + a4)) - (v47 * v69);
          v72 = (v39 * v47) - (v46 * v40);
          v73 = v71 / v72;
          v74 = ((v46 * v69) - (v39 * v70)) / v72;
          v75 = v69 - a4;
          v76 = (v37 * ((v69 - a4) + a4)) - (v40 * (v60 + a4));
          v77 = (v36 * v40) - (v39 * v37);
          v78 = v76 / v77;
          v79 = ((v39 * (v60 + a4)) - (v36 * ((v69 - a4) + a4))) / v77;
          v80 = (v75 + a4) - a4;
          if (v73 > v55)
          {
            v81 = v73;
          }

          else
          {
            v81 = v55;
          }

          if (v73 >= v56)
          {
            v55 = v81;
          }

          else
          {
            v56 = v73;
          }

          if (v74 > v58)
          {
            v82 = v74;
          }

          else
          {
            v82 = v58;
          }

          if (v74 >= v59)
          {
            v74 = v59;
            v58 = v82;
          }

          if (v78 > v55)
          {
            v83 = v78;
          }

          else
          {
            v83 = v55;
          }

          if (v78 >= v56)
          {
            v84 = v56;
          }

          else
          {
            v84 = v78;
          }

          if (v78 >= v56)
          {
            v55 = v83;
          }

          if (v79 > v58)
          {
            v85 = v79;
          }

          else
          {
            v85 = v58;
          }

          if (v79 < v74)
          {
            v74 = v79;
            v85 = v58;
          }

          v86 = vcvtps_s32_f32(v55);
          v87 = vcvtms_s32_f32(v74);
          v88 = vcvtps_s32_f32(v85);
          v89 = v87 & ~(v87 >> 31);
          if (var2 < v88)
          {
            v88 = var2;
          }

          if (v104 < v86)
          {
            v86 = v104;
          }

          v110[0] = -v39;
          v110[1] = -v40;
          v110[2] = -v80;
          v110[3] = v64;
          v110[4] = v65;
          v110[5] = v66;
          v110[6] = v39;
          v110[7] = v40;
          v110[8] = v80 + a4;
          v110[9] = -(v48 * v68);
          v49.f32[1] = v67;
          v111 = vmul_n_f32(vneg_f32(v49), v68);
          if (v89 < v88)
          {
            v90 = vcvtms_s32_f32(v84);
            v91 = v90 & ~(v90 >> 31);
            v92 = &v106[var3 * v89];
            do
            {
              if (v91 < v86)
              {
                v93 = &v92[v91 * v22];
                v94 = v91;
                do
                {
                  v95 = 0;
                  v96 = v94;
                  while ((v110[v95 + 2] + ((v110[v95 + 1] * v89) + (v110[v95] * v96))) > 0.0)
                  {
                    v95 += 3;
                    if ((v95 * 4) == 48)
                    {
                      v97 = (1.0 - ((((-v40 * v89) + (v110[0] * v96)) - v80) / a4)) * 255.0;
                      v98 = rintf(v97);
                      if (v98 >= 255)
                      {
                        v98 = 255;
                      }

                      *v93 = v98 & ~(v98 >> 31);
                      break;
                    }
                  }

                  ++v94;
                  v93 += v22;
                }

                while (v94 != v86);
              }

              ++v89;
              v92 += var3;
            }

            while (v89 != v88);
          }

          v31 = v33;
          if (v33 == v19)
          {
            goto LABEL_73;
          }
        }

        termBitmap(&v107);
        free(v105);
        return 44;
      }
    }

    else
    {
      termBitmap(&v107);
      return 46;
    }
  }

  return v14;
}

- (CGPoint)centroidWithConvexHull:(id *)a3
{
  var1 = a3->var1;
  v4 = 0.0;
  if (var1 < 1)
  {
    v11 = 0;
  }

  else
  {
    v5 = 0;
    var3 = a3->var3;
    v7 = 0;
    do
    {
      v7 = vcvt_f32_f64(vaddq_f64(var3[v5++], vcvtq_f64_f32(v7)));
    }

    while (var1 != v5);
    v8 = 0;
    v9 = vcvtq_f64_f32(vmul_n_f32(v7, 1.0 / var1));
    v10 = var3 + 1;
    v11 = 0;
    v4 = 0.0;
    v12 = vdupq_n_s64(0x3FD5555551C112DAuLL);
    do
    {
      if (v8 >= var1 - 1)
      {
        v13 = a3->var3;
      }

      else
      {
        v13 = v10;
      }

      v14 = v10[-1];
      v15 = vcvt_f32_f64(vmulq_f64(vaddq_f64(vaddq_f64(v14, *v13), v9), v12));
      v16 = vsubq_f64(v14, v9);
      v17 = v16.f64[0];
      *v16.f64 = v16.f64[1];
      v18 = vsubq_f64(*v13, v9);
      v19 = v18.f64[0];
      *v18.f64 = v18.f64[1];
      *v16.f64 = fabsf(((v17 * *v18.f64) - (*v16.f64 * v19)) * 0.5);
      v11 = vmla_n_f32(v11, v15, *v16.f64);
      v4 = v4 + *v16.f64;
      ++v8;
      ++v10;
    }

    while (var1 != v8);
  }

  v20 = vcvtq_f64_f32(vmul_n_f32(v11, 1.0 / v4));
  v21 = v20.f64[1];
  result.x = v20.f64[0];
  result.y = v21;
  return result;
}

- (int)analyzeMask:(id *)a3 usingConvexHull:(id *)a4 producingOptimizedMask:(id *)a5
{
  v154 = *MEMORY[0x1E69E9840];
  inspector = self->inspector;
  if (inspector)
  {
    v10 = [(RedEyeInspector3 *)inspector debuggingThisFaceAndEye:&self->S];
  }

  else
  {
    v10 = 0;
  }

  var1 = a4->var1;
  if (!var1)
  {
    return 3;
  }

  [(CIRedEyeRepair3 *)self centroidWithConvexHull:a4];
  v13 = v12;
  v15 = v14;
  v16 = malloc_type_malloc(80 * var1, 0x10000404E27CAF5uLL);
  if (!v16)
  {
    return 4;
  }

  v17 = v16;
  v146 = var1;
  v144 = v16;
  if (var1 >= 1)
  {
    v142 = a5;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    var3 = a4->var3;
    v23 = v16;
    while (1)
    {
      x = var3->x;
      y = var3->y;
      *(v23 + 2) = *&var3->x;
      *(v23 + 3) = y;
      v26 = lineEquationThroughTwoPoints(v23, v13, v15, x, y);
      if (v26)
      {
        goto LABEL_123;
      }

      v27 = x - v13;
      v28 = y - v15;
      *(v23 + 4) = v27;
      *(v23 + 5) = v28;
      if (v10)
      {
        printf("sector %d:\n", v18);
      }

      v147 = v20;
      v29 = sqrtf((v28 * v28) + (v27 * v27));
      v30 = v29;
      v31 = 1.0 / v29;
      v32 = v31 * v27;
      v33 = v31 * v28;
      v34 = v30 * 0.8;
      v35 = fminf(v34, 4.0);
      v36 = rintf(v35 + v35);
      v37 = x - (v32 * v35);
      v38 = y - (v33 * v35);
      v39 = v37;
      *&v30 = v38;
      v40 = bilinearLookup(a3, v39, *&v30);
      v41 = v40;
      *(v23 + 12) = v40;
      *(v23 + 52) = v40;
      if (v36 < 2)
      {
        v49 = 0;
        v51 = v40;
        v50 = v40;
        if (!v10)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v42 = v32;
        v43 = v33;
        v44 = v36 - 1;
        do
        {
          v37 = v37 + v42;
          v38 = v38 + v43;
          v45 = v37;
          v46 = v38;
          v47 = bilinearLookup(a3, v45, v46);
          v48 = v47;
          if (v10)
          {
            printf("%d ", v47);
          }

          v49 = *(v23 + 14);
          if ((v41 - v48) > v49)
          {
            *(v23 + 14) = v41 - v48;
            v49 = v41 - v48;
          }

          v50 = *(v23 + 13);
          if (v48 > v50)
          {
            *(v23 + 13) = v48;
            v50 = v48;
          }

          v51 = *(v23 + 12);
          if (v48 < v51)
          {
            *(v23 + 12) = v48;
            v51 = v48;
          }

          v41 = v48;
          --v44;
        }

        while (v44);
        if (!v10)
        {
          goto LABEL_24;
        }
      }

      printf(" -- max %d min %d grad %d\n", v50, v51, v49);
      v51 = *(v23 + 12);
      v50 = *(v23 + 13);
      v49 = *(v23 + 14);
LABEL_24:
      var1 = v146;
      v52 = (v50 - v51);
      v53 = 255.0 / (v52 * 0.8);
      *&v52 = -((v51 + v52 * 0.1) * v53);
      *(v23 + 15) = v53;
      *(v23 + 16) = LODWORD(v52);
      v19 += v49;
      v21 += v50;
      v20 = v51 + v147;
      ++v18;
      ++var3;
      v23 += 80;
      if (v18 == v146)
      {
        v55 = v21;
        v56 = v19;
        v57 = v20;
        a5 = v142;
        v17 = v144;
        goto LABEL_31;
      }
    }
  }

  v55 = 0.0;
  v57 = 0.0;
  v56 = 0.0;
LABEL_31:
  v58 = v55 / var1;
  if (v10)
  {
    printf("max average %.1f min average %.1f max gradient %.1f\n", v58, (v57 / var1), (v56 / var1));
  }

  if (var1 >= 1)
  {
    v59 = (v17 + 76);
    v60 = var1;
    do
    {
      v61 = *(v59 - 4);
      v62 = *(v59 - 3);
      v63 = rintf(v62 + (v58 * v61));
      if (v63 >= 255)
      {
        v63 = 255;
      }

      *v59 = v63 & ~(v63 >> 31);
      *(v59 - 2) = v61;
      *(v59 - 1) = v62;
      v59 += 20;
      --v60;
    }

    while (v60);
    v64 = 0;
    v65 = v17 + 156;
    v66 = -1;
    v67 = v17;
    do
    {
      if (*(v67 + 19) <= 199 && var1 != 1)
      {
        v69 = -1;
        v70 = v66;
        while (1)
        {
          v71 = var1 & ((v64 + v69) >> 31);
          v72 = v70 + v71;
          if (*&v17[80 * v72 + 76] > 200)
          {
            break;
          }

          --v69;
          --v70;
          if (!(var1 + v69))
          {
            goto LABEL_60;
          }
        }

        if (var1 + v69)
        {
          if (var1 == 1)
          {
            v73 = v64 + v71 + v69;
            v74 = 1;
          }

          else
          {
            v74 = 1;
            v75 = v65;
            while (1)
            {
              v76 = v64 + v74 >= var1 ? var1 : 0;
              if (*&v75[-80 * v76] > 200)
              {
                break;
              }

              v75 += 80;
              if (var1 == ++v74)
              {
                goto LABEL_60;
              }
            }

            v73 = v64 - v76 + v74;
          }

          if (v74 != var1)
          {
            *(v67 + 68) = vmla_n_f32(*&v17[80 * v72 + 60], vsub_f32(*&v17[80 * v73 + 60], *&v17[80 * v72 + 60]), -v69 / (v74 - v69));
          }
        }
      }

LABEL_60:
      ++v64;
      v67 += 80;
      ++v66;
      v65 += 80;
    }

    while (v64 != var1);
    v77 = v17 + 68;
    v78 = var1;
    do
    {
      *(v77 - 1) = *v77;
      v77 += 10;
      --v78;
    }

    while (v78);
  }

  var0 = a3->var0;
  var6 = a3->var6;
  v81 = a3->var3;
  var2 = a3->var2;
  v143 = a3->var1;
  v82 = a5->var3;
  v83 = a5->var6;
  v136 = a5->var0;
  v137 = var0;
  bzero(a5->var0, a5->var5);
  if (var1 < 1)
  {
LABEL_122:
    free(v17);
    return 0;
  }

  else
  {
    v84 = v81;
    v85 = 0;
    v86 = v13;
    v87 = v15;
    v88 = v86;
    v89 = v87;
    __asm { FMOV            V0.2D, #5.0 }

    v140 = _Q0;
    v94 = v17;
    v139 = v10;
    v138 = v84;
    while (1)
    {
      if (v85 + 1 == var1)
      {
        v95 = 0;
      }

      else
      {
        v95 = v85 + 1;
      }

      v96 = &v17[80 * v95];
      v97 = vmlaq_f64(*(v94 + 1), v140, *(v94 + 2));
      v98 = vmlaq_f64(*(v96 + 1), v140, *(v96 + 2));
      if (v97.f64[0] > v88)
      {
        v99 = v97.f64[0];
      }

      else
      {
        v99 = v86;
      }

      if (v97.f64[0] < v88)
      {
        v100 = v97.f64[0];
      }

      else
      {
        v100 = v86;
      }

      if (v97.f64[0] < v88)
      {
        v99 = v86;
      }

      v101 = v97.f64[1] > v89 ? v97.f64[1] : v87;
      v102 = v97.f64[1] < v89 ? v97.f64[1] : v87;
      v103 = v97.f64[1] < v89 ? v87 : v101;
      v104 = v100;
      v105 = v98.f64[0] > v99 ? v98.f64[0] : v99;
      v106 = v98.f64[0] < v104 ? v98.f64[0] : v100;
      v107 = v98.f64[0] < v104 ? v99 : v105;
      v148 = v85 + 1;
      v145 = v85;
      if (v98.f64[1] >= v102)
      {
        if (v98.f64[1] > v103)
        {
          v103 = v98.f64[1];
        }
      }

      else
      {
        v102 = v98.f64[1];
      }

      v108 = vcvtps_s32_f32(v107);
      v109 = vcvtps_s32_f32(v103);
      v110 = var2 >= v109 ? v109 : var2;
      v111 = v143 >= v108 ? v108 : v143;
      v149 = *v94;
      v150 = *(v94 + 2);
      v152 = *(v96 + 2);
      v151 = *v96;
      v151 = vneg_f32(v151);
      v152 = -v152;
      v26 = lineEquationThroughTwoPoints(&v153, v97.f64[0], v97.f64[1], v98.f64[0], v98.f64[1]);
      if (v26)
      {
        break;
      }

      var1 = v146;
      if (v139)
      {
        printf("sector %d ", v145);
        v112 = *(v94 + 15);
        v113 = *(v94 + 16);
        v114 = rintf(v113 + (v58 * v112));
        if (v114 >= 255)
        {
          v114 = 255;
        }

        printf("factor %.3f offset %.3f max sample %d\n", v112, v113, v114 & ~(v114 >> 31));
      }

      v115 = vcvtms_s32_f32(v102);
      v116 = v115 & ~(v115 >> 31);
      if (v116 < v110)
      {
        v117 = vcvtms_s32_f32(v106);
        v118 = v117 & ~(v117 >> 31);
        v119 = &v136[v82 * v116];
        v120 = &v137[v138 * v116];
        v121 = *(&v149 + 1);
        v122 = v150;
        v123 = v151;
        v124 = v152;
        do
        {
          if (v118 < v111)
          {
            v125 = &v119[v83 * v118];
            v126 = &v120[var6 * v118];
            v127 = v118;
            do
            {
              v128 = 0;
              v129 = v127;
              while ((*(&v149 + v128 + 8) + ((*(&v149 + v128 + 4) * v116) + (*(&v149 + v128) * v129))) > 0.0)
              {
                v128 += 12;
                if (v128 == 36)
                {
                  v130 = (v122 + ((v121 * v116) + (*&v149 * v129))) / ((v122 + ((v121 * v116) + (*&v149 * v129))) + (v124 + ((v123.f32[1] * v116) + (v123.f32[0] * v129))));
                  v131 = *(v94 + 16);
                  v132 = *(v94 + 15) + (v130 * (*(v96 + 15) - *(v94 + 15)));
                  v133 = v131 + (v130 * (*(v96 + 16) - v131));
                  LOBYTE(v131) = *v126;
                  v134 = rintf(v133 + (LODWORD(v131) * v132));
                  if (v134 >= 255)
                  {
                    v134 = 255;
                  }

                  *v125 = v134 & ~(v134 >> 31);
                  break;
                }
              }

              ++v127;
              v126 += var6;
              v125 += v83;
            }

            while (v127 != v111);
          }

          ++v116;
          v120 += v138;
          v119 += v82;
        }

        while (v116 != v110);
      }

      v94 += 80;
      v85 = v148;
      v17 = v144;
      if (v148 == v146)
      {
        goto LABEL_122;
      }
    }

LABEL_123:
    v54 = v26;
    free(v144);
  }

  return v54;
}

- (BOOL)edgePoint:(CGPoint *)a3 withBitmap:(id *)a4 center:(CGPoint)a5 perp:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v9 = a5.y;
  v10 = a5.x;
  v11 = 0;
  v65[22] = *MEMORY[0x1E69E9840];
  v62 = 0;
  v63[0] = 0;
  v12 = a5.x + a6.x * -7.0;
  p_samplesPerPixel = &self->fullBitmap.samplesPerPixel;
  v14 = a5.y + a6.y * -7.0;
  do
  {
    v15 = v14;
    v16 = v12;
    bilinearARGB8LookupComponents(a4, &v62 + 1, v63, v63 + 1, &v62, v16, v15);
    v17 = p_samplesPerPixel[124];
    v18 = HIDWORD(v63[0]);
    if (v17 <= 4)
    {
      if (v17 > 2)
      {
        if (v17 == 3)
        {
          v19 = v63[0];
          v21 = ((2 * HIDWORD(v63[0])) | 1) - (LODWORD(v63[0]) + HIDWORD(v62));
          v22 = v21 >> 1;
          goto LABEL_19;
        }

        v19 = v63[0];
        v23 = 2404 * LODWORD(v63[0]) + 1225 * HIDWORD(v63[0]) + 467 * HIDWORD(v62);
      }

      else
      {
        if (v17 != 1)
        {
          if (v17 != 2)
          {
LABEL_48:
            v19 = v63[0];
            v20 = (-4915 * LODWORD(v63[0]) + (HIDWORD(v63[0]) << 13) + 1229) >> 12;
LABEL_49:
            if (v20 >= 255)
            {
              v20 = 255;
            }

            goto LABEL_51;
          }

          v19 = v63[0];
          v21 = 257 * HIDWORD(v63[0]) * LODWORD(v63[0]) - 13107 * HIDWORD(v62) + 0x8000;
          v22 = v21 >> 16;
LABEL_19:
          v24 = v22 & ~(v21 >> 31);
          goto LABEL_52;
        }

        v19 = v63[0];
        v23 = 1202 * LODWORD(v63[0]) + 2660 * HIDWORD(v63[0]) + 234 * HIDWORD(v62);
      }

      v24 = (v23 + 2048) >> 12;
      goto LABEL_52;
    }

    if (v17 <= 6)
    {
      if (v17 == 5)
      {
        v19 = v63[0];
        v24 = HIDWORD(v63[0]);
        goto LABEL_52;
      }

      v19 = v63[0];
      v20 = ((1638 * ((257 * HIDWORD(v62) * ((257 * HIDWORD(v63[0]) * LODWORD(v63[0])) >> 16)) >> 16) + 2048) >> 12) + ((-4915 * LODWORD(v63[0]) + (HIDWORD(v63[0]) << 13) + 1229) >> 12);
      goto LABEL_49;
    }

    switch(v17)
    {
      case 7:
        v19 = v63[0];
        if (10 * HIDWORD(v63[0]) <= 2295)
        {
          v26 = 2295;
        }

        else
        {
          v26 = 10 * HIDWORD(v63[0]);
        }

        v27 = 10 * LODWORD(v63[0]);
        if (10 * LODWORD(v63[0]) <= 2295)
        {
          v27 = 2295;
        }

        v28 = v27 - 2295;
        v29 = 5 * HIDWORD(v62);
        if (5 * HIDWORD(v62) <= 1020)
        {
          v29 = 1020;
        }

        v30 = ((257 * v29 - 262140) * (((257 * v26 - 589815) * v28) >> 16)) >> 16;
        v25 = 257 * ((HIDWORD(v63[0]) - HIDWORD(v62)) & ~((HIDWORD(v63[0]) - HIDWORD(v62)) >> 31)) * ((2570 * HIDWORD(v63[0]) * ((HIDWORD(v63[0]) - LODWORD(v63[0])) & ~((HIDWORD(v63[0]) - LODWORD(v63[0])) >> 31))) >> 16);
        v24 = (v30 + (v25 >> 16)) & ~((v30 + (v25 >> 16)) >> 31);
        break;
      case 8:
        v19 = v63[0];
        if (SHIDWORD(v63[0]) <= SLODWORD(v63[0]))
        {
          v31 = v63[0];
        }

        else
        {
          v31 = HIDWORD(v63[0]);
        }

        if (SHIDWORD(v63[0]) >= SLODWORD(v63[0]))
        {
          v32 = v63[0];
        }

        else
        {
          v32 = HIDWORD(v63[0]);
        }

        if (SHIDWORD(v62) > v31)
        {
          v31 = HIDWORD(v62);
        }

        if (SHIDWORD(v62) < v32)
        {
          v32 = HIDWORD(v62);
        }

        v33 = v31 - v32;
        v34 = v31 + v32;
        if (v34 > 255)
        {
          v34 = 510 - v34;
        }

        if (v34 <= 1)
        {
          v34 = 1;
        }

        v35 = 255 * v33 / v34;
        if (v35 >= 255)
        {
          v35 = 255;
        }

        v36 = 257 * v33 * ((257 * ((2404 * LODWORD(v63[0]) + 1225 * HIDWORD(v63[0]) + 467 * HIDWORD(v62) + 2048) >> 12) * ((257 * ((257 * HIDWORD(v63[0]) * LODWORD(v63[0])) >> 16) * v35) >> 16)) >> 16);
        v24 = (v36 >> 14) & ~((4 * v36) >> 31);
        break;
      case 9:
        v19 = v63[0];
        v20 = HIDWORD(v63[0]) - (LODWORD(v63[0]) + ((257 * HIDWORD(v63[0]) * LODWORD(v63[0])) >> 16));
LABEL_51:
        v24 = v20 & ~(v20 >> 31);
        goto LABEL_52;
      default:
        goto LABEL_48;
    }

    if (v24 >= 255)
    {
      v24 = 255;
    }

LABEL_52:
    v37 = &v63[v11 + 1];
    *v37 = v24;
    v37[1] = v18;
    v38 = HIDWORD(v62);
    v37[2] = v19;
    v37[3] = v38;
    v12 = x + v16;
    v14 = y + v15;
    v11 += 2;
  }

  while (v11 != 30);
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = v64;
  v44 = v65;
  v45 = -1;
  for (i = 2; i != 13; ++i)
  {
    v47 = *(v44 - 16) + ((6144 * *(v44 - 12) + 2048) >> 12);
    v48 = *(v44 - 4);
    v49 = *v44 + ((6144 * v48 + 2048) >> 12);
    if (v49 > v47 && v49 - v47 > v42)
    {
      v40 = v43 + ((6144 * v43 + 2048) >> 12);
      v42 = v49 - v47;
      v41 = *(v44 - 16) + ((6144 * *(v44 - 12) + 2048) >> 12);
      v39 = *v44 + ((6144 * v48 + 2048) >> 12);
      v45 = i;
    }

    v44 += 4;
    v43 = v48;
  }

  if (v45 == -1)
  {
    v54 = 0.0;
    v55 = 0.0;
  }

  else
  {
    v50 = v39;
    v51 = v40;
    v52 = (v41 + v39) * 0.5;
    if (v40 >= v41)
    {
      v56 = 0.0;
      if (v52 > v51)
      {
        v56 = (v52 - v51) / (v50 - v51);
      }

      v57 = ((v52 - v41) / (v51 - v41)) + -1.0;
      if (v52 < v51)
      {
        v58 = ((v52 - v41) / (v51 - v41)) + -1.0;
      }

      else
      {
        v58 = v56;
      }

      if (v51 > v50)
      {
        v53 = v57;
      }

      else
      {
        v53 = v58;
      }
    }

    else
    {
      v53 = (v52 - v51) / (v50 - v51);
    }

    v59 = (v53 + (v45 - 7));
    v54 = v10 + v59 * x;
    v55 = v9 + v59 * y;
  }

  result = v45 != -1;
  a3->x = v54;
  a3->y = v55;
  return result;
}

+ (void)insertIntoConnectionHopper:(id *)a3 index1:(int)a4 drop1:(int)a5 index2:(int)a6 drop2:(int)a7 score:(float)a8
{
  var0 = a3->var0;
  if (var0 < 1)
  {
    LODWORD(v9) = 0;
LABEL_9:
    if (var0 <= 18)
    {
      v11 = (var0 - 1);
    }

    else
    {
      v11 = 18;
    }

    if (v11 >= v9)
    {
      v12 = v11 + 1;
      v13 = &a3->var1[v11 + 1];
      do
      {
        *&v13->var0 = *&v13[-1].var0;
        v13->var4 = v13[-1].var4;
        --v13;
        --v12;
      }

      while (v12 > v9);
      LODWORD(var0) = a3->var0;
    }

    v14 = &a3->var1[v9];
    v14->var0 = a4;
    v14->var1 = a5;
    v14->var2 = a6;
    v14->var3 = a7;
    v14->var4 = a8;
    if (var0 < 20)
    {
      v15 = var0 + 1;
    }

    else
    {
      v15 = 20;
    }

    a3->var0 = v15;
    return;
  }

  v9 = 0;
  p_var4 = &a3->var1[0].var4;
  while (*p_var4 <= a8)
  {
    ++v9;
    p_var4 += 5;
    if (var0 == v9)
    {
      LODWORD(v9) = a3->var0;
      break;
    }
  }

  if (v9 <= 0x13)
  {
    goto LABEL_9;
  }
}

- (void)printConnectionHopper:(id *)a3 message:(char *)a4
{
  printf("\n%s -- hopper with %d elements total\n", a4, a3->var0);
  if (a3->var0 >= 1)
  {
    v5 = 0;
    v6 = 4;
    do
    {
      printf("  element %d i %3d/%d j %3d/%d score %5.3f\n", v5++, *(&a3->var0 + v6), *(&a3->var1[0].var0 + v6), *(&a3->var1[0].var1 + v6), *(&a3->var1[0].var2 + v6), *(&a3->var1[0].var3 + v6));
      v6 += 20;
    }

    while (v5 < a3->var0);
  }
}

- (void)printThreadWithIndex:(int)a3
{
  v3 = self->G.threads + 96 * a3;
  if (v3[24])
  {
    printf("  ");
    if (v3[25] == 1)
    {
      printf("closed ");
    }

    printf("thread %3d start %4d end %4d %3d points length %5.1f turn %6.1f");
  }

  else
  {
    printf("attempt to print invalid thread %d\n");
  }
}

- (void)printThreadsOnlyClosed:(BOOL)a3 message:(char *)a4
{
  v4 = a3;
  p_G = &self->G;
  printf("\n%s -- %d threads total\n", a4, self->G.nThreads);
  nThreads = p_G->nThreads;
  if (nThreads >= 1)
  {
    v8 = 0;
    v9 = p_G->threads + 25;
    do
    {
      if (*(v9 - 1) == 1 && (!v4 || *v9 == 1))
      {
        [(CIRedEyeRepair3 *)self printThreadWithIndex:v8];
        putchar(10);
        nThreads = p_G->nThreads;
      }

      v9 += 96;
      v8 = (v8 + 1);
    }

    while (v8 < nThreads);
  }
}

- (int)gatherThreadInfo:(id *)a3
{
  if (!a3->var6)
  {
    return 35;
  }

  points = self->G.points;
  v5 = points + 96 * a3->var0;
  a3->var5 = *(v5 + 20);
  v6 = *(v5 + 17);
  if (v6 == -1)
  {
    v14 = 0.0;
    v9 = 1;
    v13 = 0.0;
  }

  else
  {
    v7 = *v5;
    v8 = *(v5 + 1);
    v9 = 1;
    v10 = 0.0;
    v11 = 1.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    do
    {
      v15 = v7;
      v16 = v8;
      v17 = (points + 96 * v6);
      v7 = *v17;
      v8 = v17[1];
      *&v15 = *v17 - v15;
      *&v16 = v8 - v16;
      v18 = sqrtf((*&v16 * *&v16) + (*&v15 * *&v15));
      v19 = v11 / fmaxf(v18, 0.00001);
      v20 = v19 * *&v15;
      v21 = v19 * *&v16;
      if (v9 >= 2)
      {
        v22 = asin(((v12 * v21) - (v20 * v10)));
        v11 = 1.0;
        v13 = v22 + v13;
      }

      v14 = v14 + v18;
      ++v9;
      v6 = *(v17 + 17);
      v10 = v21;
      v12 = v20;
    }

    while (v6 != -1);
  }

  result = 0;
  a3->var2 = v9;
  a3->var3 = v14;
  a3->var4 = v13;
  return result;
}

- (int)findThreadsInGrid
{
  p_G = &self->G;
  self->G.nThreads = 0;
  nPoints = self->G.nPoints;
  if (nPoints < 1)
  {
    return 0;
  }

  v5 = 0;
  v15 = 0;
  p_y = &self->FC.rightEye.y;
  while (1)
  {
    points = p_G->points;
    v8 = (points + 96 * v5);
    if (v8[18] == -1)
    {
      v9 = v8[17];
      if (v9 != -1)
      {
        break;
      }
    }

LABEL_4:
    if (++v5 >= nPoints)
    {
      return 0;
    }
  }

  v10 = v8[20];
  v11 = v5;
  do
  {
    v12 = v9;
    if (*(points + 24 * v11 + 20) != v10)
    {
      return 33;
    }

    v11 = v9;
    v9 = *(points + 24 * v9 + 17);
  }

  while (v9 != -1);
  result = [(CIRedEyeRepair3 *)self newThread:&v15];
  if (!result)
  {
    v14 = v15;
    *v15 = v5;
    v14[1] = v12;
    *(v14 + 12) = 1;
    *(v14 + 11) = p_y[62];
    result = [(CIRedEyeRepair3 *)self gatherThreadInfo:?];
    if (!result)
    {
      nPoints = p_G->nPoints;
      goto LABEL_4;
    }
  }

  return result;
}

- (int)connectThreadsInGrid
{
  memset(v42, 0, sizeof(v42));
  p_G = &self->G;
  if (self->G.nThreads >= 1)
  {
    v3 = self;
    v4 = 0;
    do
    {
      [(CIRedEyeRepair3 *)v3 putThreadAtIndex:v4];
      v4 = (v4 + 1);
      nThreads = p_G->nThreads;
    }

    while (v4 < nThreads);
    if (nThreads >= 1)
    {
      p_mincol = &v3->subRectangle.mincol;
      v37 = v3;
      v38 = &v3->subRectangle.mincol;
      while (1)
      {
        v8 = 0;
        v41 = 0;
        threads = p_G->threads;
        do
        {
          if (*(threads + 24) == 1 && (*(threads + 25) & 1) == 0)
          {
            v10 = (p_G->points + 96 * *(threads + 1));
            v40[1] = threads;
            v40[0] = v8;
            v40[2] = v10;
            v40[3] = p_G;
            v40[4] = &v41;
            *&v5 = *(p_mincol + 124) + *(p_mincol + 124);
            [(CIRedEyeRepair3 *)v3 forAllGridThreadsNear:threadSearchAction withinRadius:v40 do:*v10 context:v10[1], v5];
            nThreads = p_G->nThreads;
          }

          ++v8;
          threads = (threads + 96);
        }

        while (v8 < nThreads);
        v11 = v41;
        if (v41 >= 1)
        {
          break;
        }

LABEL_47:
        if (!v11)
        {
          return 0;
        }

        result = 0;
        nThreads = p_G->nThreads;
        v3 = v37;
        if (nThreads < 1)
        {
          return result;
        }
      }

      v12 = 0;
      v39 = 0;
      while (1)
      {
        v13 = v42 + 5 * v12;
        v14 = v13[4];
        if (v14 > *(p_mincol + 124) && (v39 & 1) == 0)
        {
          break;
        }

        v15 = *v13;
        v16 = p_G->threads;
        v17 = v16 + 96 * v15;
        if (v17[24] != 1)
        {
          return 49;
        }

        v18 = *(v13 + 2);
        v19 = (v16 + 96 * v18);
        if (*(v19 + 24) != 1)
        {
          return 49;
        }

        v20 = *(v13 + 1);
        points = p_G->points;
        v22 = *(v17 + 1);
        v23 = v20;
        if (v20 >= 1)
        {
          do
          {
            LODWORD(v22) = *(points + 24 * v22 + 18);
            --v23;
          }

          while (v23);
        }

        v24 = *(v13 + 3);
        v25 = *v19;
        v26 = v24;
        if (v24 >= 1)
        {
          do
          {
            LODWORD(v25) = *(points + 24 * v25 + 17);
            --v26;
          }

          while (v26);
        }

        v27 = pointToPointScore(points + 96 * v22, points + 96 * v25);
        if (v27 != v14 || v27 == -1.0 || v27 == -2.0)
        {
          v30 = v12 + 1;
          v39 = 1;
          p_mincol = v38;
        }

        else
        {
          if (v15 == v18)
          {
            *(v16 + 96 * v15 + 25) = 1;
          }

          else
          {
            result = [(CIRedEyeRepair3 *)v37 connectThreads:v15 drop1:v20 and:v18 drop2:v24];
            if (result)
            {
              return result;
            }

            v11 = v41;
          }

          p_mincol = v38;
          v30 = v12 + 1;
          if (v12 + 1 < v11)
          {
            v32 = v12 + 1;
            do
            {
              v33 = v42 + 5 * v32;
              if (*v33 == v15 || v33[2] == v18)
              {
                v34 = v12 + 2;
                if (v12 + 2 < v11)
                {
                  v35 = v34;
                  v36 = v42 + 20 * v34;
                  do
                  {
                    *(v36 - 20) = *v36;
                    *(v36 - 1) = *(v36 + 4);
                    ++v35;
                    v11 = v41;
                    v36 += 20;
                  }

                  while (v35 < v41);
                }

                v41 = --v11;
              }

              else
              {
                if (*v33 == v18)
                {
                  *v33 = v15;
                }

                LODWORD(v12) = v32;
              }

              v32 = v12 + 1;
            }

            while (v12 + 1 < v11);
          }
        }

        v12 = v30;
        if (v30 >= v11)
        {
          goto LABEL_47;
        }
      }
    }
  }

  return 0;
}

- (void)initBitmaps
{
  self->PB.O.baseAddress = 0;
  self->PB.OO.baseAddress = 0;
  self->PB.EP.baseAddress = 0;
  self->PB.D.baseAddress = 0;
  self->PB.G.baseAddress = 0;
  self->PB.M.baseAddress = 0;
  self->PB.S.baseAddress = 0;
  self->PB.P.baseAddress = 0;
}

- (void)termBitmaps
{
  p_PB = &self->PB;
  v3 = &self->PB;
  baseAddress = v3->O.baseAddress;
  p_baseAddress = &v3->O.baseAddress;
  if (baseAddress)
  {
    termBitmap(p_baseAddress);
  }

  if (p_PB->OO.baseAddress)
  {
    termBitmap(&p_PB->OO.baseAddress);
  }

  if (p_PB->EP.baseAddress)
  {
    termBitmap(&p_PB->EP.baseAddress);
  }

  if (p_PB->D.baseAddress)
  {
    termBitmap(&p_PB->D.baseAddress);
  }

  if (p_PB->G.baseAddress)
  {
    termBitmap(&p_PB->G.baseAddress);
  }

  if (p_PB->M.baseAddress)
  {
    termBitmap(&p_PB->M.baseAddress);
  }

  if (p_PB->S.baseAddress)
  {
    termBitmap(&p_PB->S.baseAddress);
  }

  if (p_PB->P.baseAddress)
  {

    termBitmap(&p_PB->P.baseAddress);
  }
}

- (void)removeRedundantPointsFromShape:(id *)a3 closerThan:(float)a4
{
  v4 = a4 * a4;
  var2 = a3->var2;
  var0 = a3->var0;
  if (var0 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = a3->var2;
    while (1)
    {
      if (!v7)
      {
        goto LABEL_7;
      }

      v10 = (var2 + 48 * v8);
      v11 = *v9 - *(v10 - 6);
      v12 = *(v9 + 1) - *(v10 - 5);
      if (((v12 * v12) + (v11 * v11)) > v4)
      {
        break;
      }

LABEL_8:
      ++v7;
      v9 = (v9 + 48);
      if (var0 == v7)
      {
        goto LABEL_11;
      }
    }

    if (v7 != v8)
    {
      v13 = *v9;
      v14 = *(v9 + 2);
      *(v10 + 1) = *(v9 + 1);
      *(v10 + 2) = v14;
      *v10 = v13;
    }

LABEL_7:
    ++v8;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_11:
  v15 = (var2 + 48 * v8);
  v16 = *var2 - *(v15 - 6);
  v17 = *(var2 + 1) - *(v15 - 5);
  a3->var0 = v8 - (((v17 * v17) + (v16 * v16)) <= v4);
  [(CIRedEyeRepair3 *)self computeLengthsAnglesAndDeltaAnglesForShape:?];
}

- (void)computeLengthsAnglesAndDeltaAnglesForShape:(id *)a3
{
  var0 = a3->var0;
  if (a3->var0 >= 1)
  {
    v5 = 0;
    var2 = a3->var2;
    do
    {
      if (v5 == var0 - 1)
      {
        v7 = a3->var2;
      }

      else
      {
        v7 = (var2 + 48);
      }

      computeLengthAndAngle(var2, v7);
      ++v5;
      var2 = (var2 + 48);
      var0 = a3->var0;
    }

    while (v5 < a3->var0);
    if (var0 >= 1)
    {
      v8 = 0;
      v9 = a3->var2;
      v10 = (v9 + 48 * var0);
      while (1)
      {
        v11 = v8 ? v9 : v10;
        v12 = *(v9 + 5) - *(v11 - 7);
        v13 = v12;
        if (v12 < -3.14159265)
        {
          break;
        }

        if (v13 >= 3.14159265)
        {
          v14 = v13 + -6.28318531;
          goto LABEL_16;
        }

LABEL_17:
        *(v9 + 6) = v12;
        ++v8;
        v9 = (v9 + 48);
        if (var0 == v8)
        {
          return;
        }
      }

      v14 = v13 + 6.28318531;
LABEL_16:
      v12 = v14;
      goto LABEL_17;
    }
  }
}

- (void)removeSmallBumpsFromShape:(id *)a3 center:(CGPoint)a4 threshold:(float)a5
{
  var0 = a3->var0;
  if (a3->var0 >= 1)
  {
    y = a4.y;
    v8 = 0;
    var2 = a3->var2;
    v10 = var2;
    do
    {
      if (var0 < 4)
      {
        goto LABEL_29;
      }

      v11 = var0 - 1;
      v12 = (v10 + 48);
      if (v8 == var0 - 1)
      {
        v12 = var2;
      }

      v13 = v8 ? (v10 - 48) : (var2 + 48 * var0 - 48);
      v14 = (var0 - 2);
      v15 = v8 >= v14 ? (var2 + 48 * v8 + -48 * v14) : (v10 + 96);
      LODWORD(a4.x) = *(v10 + 24);
      LODWORD(a4.y) = *(v12 + 6);
      if (*&a4.x < 0.0 == *&a4.y < 0.0)
      {
        goto LABEL_29;
      }

      v16 = fabsf(*&a4.x) + fabsf(*&a4.y);
      a4.x = fabsf(*&a4.x + *&a4.y);
      a4.y = v16 * 0.333333;
      if (a4.y <= a4.x)
      {
        goto LABEL_29;
      }

      v17 = v13[1] - y;
      v18 = *(v10 + 8) - y;
      v19 = *(v12 + 1) - y;
      v20 = v15[1] - y;
      a4.x = (*v10 + *v12) * 0.5;
      a4.y = (v18 + v19) * 0.5;
      v21 = (*v12 - *v10) * (v18 + v19) * 0.5 + (*v10 - *v13) * (v17 + v18) * 0.5 + (*v15 - *v12) * (v19 + v20) * 0.5;
      v22 = (*v15 - a4.x) * (v20 + a4.y - y) * 0.5 + (a4.x - *v13) * (v17 + a4.y - y) * 0.5;
      if (vabds_f32(v22, v21) >= a5)
      {
        goto LABEL_29;
      }

      *v10 = a4;
      computeLengthAndAngle(v13, v10);
      computeLengthAndAngle(v10, v15);
      if (v8 == v11)
      {
        memmove(var2, var2 + 48, 48 * v8--);
        v10 -= 48;
      }

      else if (v8 + 1 < var0)
      {
        v23 = var2 + 48 * v8 + 48;
        v24 = v8;
        v25 = a3;
        do
        {
          v26 = (var2 + 48 * v24);
          a4 = *v23;
          *&a4.y = *(v23 + 1);
          v27 = *(v23 + 2);
          v26[1] = *&a4.y;
          v26[2] = v27;
          *v26 = a4;
          ++v24;
          v23 += 48;
        }

        while (v11 != v24);
        goto LABEL_22;
      }

      v25 = a3;
LABEL_22:
      --v25->var0;
      v28 = var2 + 48 * v11;
      v29 = &v28[48 * v8 - 96];
      if (v8 >= 2)
      {
        v29 = v10 - 96;
      }

      v30 = (v28 - 48);
      if (v8)
      {
        v30 = v10 - 48;
      }

      v31 = (v10 + 48);
      if (v8 == v14)
      {
        v31 = var2;
      }

      v32 = *(v30 + 20);
      *(v30 + 24) = v32 - *(v29 + 20);
      LODWORD(a4.y) = *(v10 + 20);
      *(v10 + 24) = *&a4.y - v32;
      *&a4.x = *(v31 + 5) - *&a4.y;
      *(v31 + 6) = LODWORD(a4.x);
      --v8;
      v10 -= 48;
      --var0;
LABEL_29:
      ++v8;
      v10 += 48;
    }

    while (v8 < var0);
  }

  [(CIRedEyeRepair3 *)self computeLengthsAnglesAndDeltaAnglesForShape:a4.x, a4.y];
}

- (void)removeSpikesFromShape:(id *)a3
{
  v5 = 0;
  do
  {
    LODWORD(var0) = a3->var0;
    if (a3->var0 < 1)
    {
      return;
    }

    var2 = a3->var2;
    v8 = -2;
    v9 = 2;
    v10 = 3;
    v11 = var2;
    do
    {
      v12 = 0.0;
      v13 = v9;
      v14 = v8;
      do
      {
        v15 = ((v14 & ~(v14 >> 31)) + v13 - ((v14 & ~(v14 >> 31)) + v13 != 0)) / var0;
        if ((v14 & ~(v14 >> 31)) + v13)
        {
          ++v15;
        }

        v16 = v14 + var0 * v15;
        do
        {
          v17 = v16;
          v18 = __OFSUB__(v16, var0);
          v16 -= var0;
        }

        while (v16 < 0 == v18);
        v19 = fabsf(*(var2 + 12 * v17 + 6));
        if (v19 > v12)
        {
          v12 = v19;
        }

        ++v14;
        --v13;
      }

      while (v14 != v10);
      *(v11 + 11) = v12;
      v11 = (v11 + 48);
      ++v8;
      --v9;
    }

    while (v10++ != var0 + 2);
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = v21 - 2;
      v24 = (v23 & ~(v23 >> 31)) + 2;
      if (v24 == v21)
      {
        v25 = v21;
      }

      else
      {
        v25 = v21 + 1;
      }

      v26 = v24 - v25;
      if (var0 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = var0;
      }

      v28 = *(var2 + 6);
      if (v24 == v21)
      {
        v29 = v26 / v27;
      }

      else
      {
        v29 = v26 / v27 + 1;
      }

      if (v21 <= 0)
      {
        v30 = var0;
      }

      else
      {
        v30 = 0;
      }

      v31 = v21 + v30 - 1;
      v32 = a3->var2;
      v33 = (v32 + 48 * v31);
      v34 = *(v32 + 12 * (v23 + var0 * v29) + 6);
      LODWORD(v35) = v21 + 1;
      if (v21 + 1 >= var0)
      {
        v36 = var0;
      }

      else
      {
        v36 = 0;
      }

      v37 = *(v32 + 12 * (v35 - v36) + 6);
      v38 = var0 + v21 + 2;
      do
      {
        v38 -= var0;
      }

      while (v38 >= var0);
      v39 = fabsf(v28);
      v40 = *(v32 + 12 * v38 + 6);
      v41 = fmaxf(vabds_f32(v28, v33[6]), vabds_f32(v28, v34)) <= 1.0;
      v42 = fmaxf(vabds_f32(v28, v37), vabds_f32(v28, v40)) <= 1.0;
      if (v39 <= 1.57079633)
      {
        if (v39 <= 1.0)
        {
          goto LABEL_43;
        }

        v43 = v41 || v42;
      }

      else
      {
        v43 = 0;
      }

      if (v39 != *(var2 + 11) || v43)
      {
LABEL_43:
        ++v21;
        goto LABEL_44;
      }

      if (v35 < var0)
      {
        v35 = v35;
        v44 = 48 * v21;
        do
        {
          v45 = (a3->var2 + v44);
          v46 = v45[4];
          *v45 = v45[3];
          v45[1] = v46;
          v45[2] = v45[5];
          ++v35;
          var0 = a3->var0;
          v44 += 48;
        }

        while (v35 < var0);
      }

      LODWORD(var0) = var0 - 1;
      a3->var0 = var0;
      var2 = (var2 - 48);
      v22 = 1;
LABEL_44:
      var2 = (var2 + 48);
    }

    while (v21 < var0);
    if ((v22 & 1) == 0)
    {
      break;
    }

    [(CIRedEyeRepair3 *)self computeLengthsAnglesAndDeltaAnglesForShape:a3];
    v47 = v5++ >= 2;
    v48 = !v47;
  }

  while ((v48 & v22 & 1) != 0);
}

- (void)slidingWindowAnalysisOfShape:(id *)a3 into:(id *)a4
{
  v4 = 0;
  var0 = a3->var0;
  v6 = vdupq_n_s64(var0 - 1);
  v7 = 28;
  v8 = 124;
  do
  {
    if ((var0 >> ++v4) > 1)
    {
      v13 = var0 >> v4 >> 1;
      var2 = a3->var2;
      if (v13 < 0)
      {
        v17 = 0.0;
      }

      else
      {
        v15 = -v13;
        v16 = (2 * v13) | 1;
        v17 = 0.0;
        do
        {
          if (v15 >= var0)
          {
            v18 = var0;
          }

          else
          {
            v18 = 0;
          }

          if (v15 >= 0)
          {
            v19 = -v18;
          }

          else
          {
            v19 = var0;
          }

          v17 = v17 + *(var2 + 12 * v19 + 12 * v15++ + 6);
          --v16;
        }

        while (v16);
      }

      if (var0 >= 1)
      {
        v20 = var0 - v13;
        v21 = (var2 + v7);
        v22 = var0;
        do
        {
          *v21 = v17;
          v21 += 12;
          v23 = v17 - *(var2 + 12 * v20 + 6);
          if (v20 + 1 == var0)
          {
            v20 = 0;
          }

          else
          {
            ++v20;
          }

          if (v13 + 1 == var0)
          {
            v13 = 0;
          }

          else
          {
            ++v13;
          }

          v17 = v23 + *(var2 + 12 * v13 + 6);
          --v22;
        }

        while (v22);
      }
    }

    else if (var0 >= 1)
    {
      v9 = 0;
      v10 = (a3->var2 + v8);
      do
      {
        v11 = vdupq_n_s64(v9);
        v12 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v11, xmmword_19CF22E40)));
        if (vuzp1_s16(v12, *v6.i8).u8[0])
        {
          *(v10 - 24) = 0;
        }

        if (vuzp1_s16(v12, *&v6).i8[2])
        {
          *(v10 - 12) = 0;
        }

        if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v11, xmmword_19CF22E30)))).i32[1])
        {
          *v10 = 0;
          v10[12] = 0;
        }

        v9 += 4;
        v10 += 48;
      }

      while (((var0 + 3) & 0xFFFFFFFC) != v9);
    }

    v7 += 4;
    v8 += 4;
  }

  while (v4 != 4);
  v24 = 0;
  v25 = 1.0 / var0;
  var1 = a4->var1;
  var3 = a4->var3;
  v29 = (a3->var2 + 28);
  do
  {
    a4->var0[v24] = 0.0;
    v26 = a4->var2;
    a4->var2[v24] = 0.0;
    v30 = &var1[v24];
    *v30 = 0.0;
    var3[v24] = 0;
    if (a3->var0 >= 1)
    {
      v31 = 0;
      v32 = 0;
      v34 = 0.0;
      v35 = v29;
      v36 = 0.0;
      v37 = 0.0;
      while (1)
      {
        v38 = *v35;
        if (*v35 < 0.0)
        {
          var3[v24] = ++v31;
        }

        if (v32)
        {
          if (v38 >= v36)
          {
            v39 = &v26[v24];
            v40 = v38;
            if (v38 <= v34)
            {
              goto LABEL_45;
            }

            goto LABEL_44;
          }

          v39 = &var1[v24];
          v40 = v34;
        }

        else
        {
          *v30 = v38;
          v39 = &v26[v24];
          v40 = v38;
        }

        v36 = v38;
LABEL_44:
        *v39 = v38;
        v34 = v40;
LABEL_45:
        v33 = COERCE_DOUBLE(0x400921FB54442D18 - (v24 << 52));
        v37 = vabds_f32(v38, v33) + v37;
        a4->var0[v24] = v37;
        ++v32;
        v35 += 12;
        if (v32 >= a3->var0)
        {
          goto LABEL_50;
        }
      }
    }

    v37 = 0.0;
LABEL_50:
    a4->var0[v24++] = v25 * v37;
    ++v29;
  }

  while (v24 != 4);
}

- (int)updatedCheckpoint:(CGPoint *)a3 withCheckpoint:(CGPoint)a4 checkpointIndex:(int)a5 angle:(float)a6 width:(int)a7 height:(int)a8 inChannel:(id *)a9 threadIndex:(int)a10 returningEdgeWidth:(float *)a11
{
  y = a4.y;
  x = a4.x;
  v144[4] = *MEMORY[0x1E69E9840];
  memset(v144, 0, 30);
  v140 = 0;
  memset(v139, 0, sizeof(v139));
  if (self->inspector)
  {
    v18 = [(RedEyeInspector3 *)self->inspector debuggingThisFaceAndEye:&self->S andThreadIndex:*&a10];
  }

  else
  {
    v18 = 0;
  }

  var0 = a9->var0;
  var3 = a9->var3;
  var6 = a9->var6;
  v23 = __sincos_stret(a6);
  cosval = v23.__cosval;
  sinval = v23.__sinval;
  v26 = vcvts_n_f32_s32(a7, 1uLL);
  v27 = vcvts_n_f32_s32(a8, 1uLL);
  v28 = (v26 * cosval);
  v29 = (v27 * sinval);
  v30 = x + v28 + v29;
  v123 = v27;
  v124 = sinval;
  v31 = (v26 * sinval);
  v127 = cosval;
  v32 = -(cosval * v27);
  v33 = y + v31 + v32;
  v34 = x + v28 - v29;
  v35 = y + v31 - v32;
  v36 = x - v28;
  v37 = v30;
  v38 = v33;
  if (v34 >= v37)
  {
    v39 = v30;
    if (v34 > v37)
    {
      v37 = v34;
    }
  }

  else
  {
    v39 = v34;
  }

  v40 = y - v31;
  v41 = v36 - v29;
  v128 = x;
  if (v35 >= v38)
  {
    v42 = v33;
    if (v35 > v38)
    {
      v38 = v35;
    }
  }

  else
  {
    v42 = v35;
  }

  v43 = v40 - v32;
  if (v41 >= v39)
  {
    if (v41 > v37)
    {
      v37 = v41;
    }
  }

  else
  {
    v39 = v41;
  }

  v44 = v36 + v29;
  v125 = y;
  if (v43 >= v42)
  {
    if (v43 > v38)
    {
      v38 = v43;
    }
  }

  else
  {
    v42 = v43;
  }

  v45 = v40 + v32;
  if (v44 >= v39)
  {
    if (v44 > v37)
    {
      v37 = v44;
    }
  }

  else
  {
    v39 = v44;
  }

  if (v45 >= v42)
  {
    if (v45 > v38)
    {
      v38 = v45;
    }
  }

  else
  {
    v42 = v45;
  }

  v136 = 0.0;
  v135 = 0;
  LODWORD(v22) = vcvtms_s32_f32(v39);
  BitmapRect = makeBitmapRect(v22, vcvtms_s32_f32(v42), vcvtms_s32_f32(v37) + 1, vcvtms_s32_f32(v38) + 1);
  v48 = BitmapRect;
  v49 = v47 & 0xFFFFFFFF00000000;
  if ((v47 & 0x80000000) == 0)
  {
    v49 = v47;
  }

  var1 = a9->var1;
  if (var1 >= SHIDWORD(v49))
  {
    v51 = v49;
  }

  else
  {
    v51 = v49 | (var1 << 32);
  }

  if (a9->var2 >= SHIDWORD(BitmapRect))
  {
    var2 = HIDWORD(BitmapRect);
  }

  else
  {
    var2 = a9->var2;
  }

  result = lineEquationThroughTwoPoints(&v135, v30, v33, v34, v35);
  if (result)
  {
    return result;
  }

  v134 = 0.0;
  v133 = 0;
  result = lineEquationThroughTwoPoints(&v133, v34, v35, v41, v43);
  if (result)
  {
    return result;
  }

  v132 = 0.0;
  v131 = 0;
  result = lineEquationThroughTwoPoints(&v131, v41, v43, v44, v45);
  if (result)
  {
    return result;
  }

  v130 = 0.0;
  v129 = 0;
  result = lineEquationThroughTwoPoints(&v129, v44, v45, v30, v33);
  if (result)
  {
    return result;
  }

  v54 = v48 & ~(v48 >> 31);
  if (a8 >= 1)
  {
    bzero(v141, 4 * a8);
    bzero(v143, 4 * a8);
  }

  if (v54 < var2)
  {
    v55 = v135;
    v56 = &var0[var3 * v54];
    v57 = v136;
    v58 = v133;
    v59 = v134;
    v60 = v131;
    v61 = v132;
    v62 = v129;
    v63 = v130;
    do
    {
      if (v51 < SHIDWORD(v51))
      {
        v64 = var6 * v51;
        v65 = v51;
        do
        {
          v66 = v65;
          if ((v57 + ((*(&v55 + 1) * v54) + (*&v55 * v65))) > 0.0)
          {
            v67 = v59 + ((*(&v58 + 1) * v54) + (*&v58 * v66));
            if (v67 > 0.0 && (v61 + ((*(&v60 + 1) * v54) + (*&v60 * v66))) > 0.0 && (v63 + ((*(&v62 + 1) * v54) + (*&v62 * v66))) > 0.0)
            {
              v68 = vcvtms_s32_f32(v67);
              if ((v68 & 0x80000000) == 0 && v68 < a8)
              {
                v69 = v56[v64];
                ++v141[v68];
                v143[v68] += v69;
              }
            }
          }

          ++v65;
          v64 += var6;
        }

        while (HIDWORD(v51) != v65);
      }

      ++v54;
      v56 += var3;
    }

    while (v54 != var2);
  }

  if (a8 < 1)
  {
    return 58;
  }

  v70 = v139;
  v71 = v141;
  v72 = v143;
  v73 = a8;
  do
  {
    v74 = *v72++;
    v75 = v74;
    v76 = *v71++;
    *v70++ = v75 / v76;
    --v73;
  }

  while (v73);
  LOBYTE(v144[0]) = 0;
  if (a8 != 1)
  {
    v77 = &v142;
    v78 = &v139[1];
    v79 = &v138;
    v80 = v144 + 1;
    v81 = a8 - 1;
    do
    {
      if (*(v77 - 1) && *v77)
      {
        *v80 = 1;
        *v79 = fmaxf(*(v78 - 1) - *v78, 0.0);
      }

      else
      {
        *v80 = 0;
      }

      ++v77;
      ++v78;
      ++v79;
      ++v80;
      --v81;
    }

    while (v81);
  }

  v82 = 0;
  v83 = 0.0;
  v84 = 0.0;
  do
  {
    if (*(v144 + v82) == 1)
    {
      v85 = v137[v82];
      v84 = v84 + v85;
      v83 = v83 + (v82 * v85);
    }

    ++v82;
  }

  while (a8 != v82);
  if (v84 == 0.0)
  {
    return 58;
  }

  v86 = 0;
  v87 = 0.0;
  v88 = v83 / v84;
  do
  {
    if (*(v144 + v86) == 1)
    {
      v87 = v87 + (((v86 - v88) * (v86 - v88)) * v137[v86]);
    }

    ++v86;
  }

  while (a8 != v86);
  v89 = sqrtf(v87 / v84);
  *a11 = v89;
  v90 = -1.0;
  v91 = 0.0;
  v92 = v139;
  v93 = v144;
  v94 = 256.0;
  v95 = a8;
  do
  {
    v96 = *v93++;
    if (v96 == 1)
    {
      v97 = *v92;
      if (*v92 < v94)
      {
        v94 = *v92;
      }

      if (v97 > v90)
      {
        v90 = *v92;
      }

      v91 = v91 + v97;
    }

    ++v92;
    --v95;
  }

  while (v95);
  v98 = 0;
  v99 = 0;
  v100 = v94;
  v101 = v90;
  v102 = 0.0;
  v103 = v139;
  v104 = v144;
  v105 = a8;
  v106 = 0.0;
  v107 = v91 / a8;
  do
  {
    v108 = *v104++;
    if (v108 == 1)
    {
      v109 = *v103;
      if (*v103 >= v107)
      {
        v102 = v102 + v109;
        ++v99;
      }

      else
      {
        v106 = v106 + v109;
        ++v98;
      }
    }

    ++v103;
    --v105;
  }

  while (v105);
  v110 = v106 / v98;
  v111 = v102 / v99;
  if (v18)
  {
    v112 = v89;
    printf("checkpoint %d bins (min %.2f max %.2f avg %.2f low avg %.2f high avg %.2f)\n", a5, v100, v101, v107, v110, v111);
    v113 = 0;
    do
    {
      if (*(v144 + v113) == 1)
      {
        v114 = v139[v113];
        printf("  %6.2f", v114);
        printf(" |");
        if (v113)
        {
          v115 = rintf(v139[v113 - 1] - v114);
          if (v115 >= 1)
          {
            do
            {
              putchar(42);
              --v115;
            }

            while (v115);
          }
        }

        putchar(10);
      }

      ++v113;
    }

    while (v113 != a8);
    printf("mean = %.2f SD = %.2f\n", v88, v112);
  }

  v116 = -v123;
  if (a8 == 1)
  {
    v117 = v125;
    goto LABEL_109;
  }

  v118 = 0;
  v119 = v110 + (v111 - v110) * 0.2;
  v117 = v125;
  while ((*(v144 + v118) & 1) == 0)
  {
    ++v118;
LABEL_108:
    v116 = v116 + 1.0;
    if (v118 == a8 - 1)
    {
      goto LABEL_109;
    }
  }

  v120 = v139[v118++];
  v121 = v139[v118];
  if (v120 <= v119 || v121 > v119)
  {
    goto LABEL_108;
  }

  v116 = v116 + ((v119 - v120) / (v121 - v120));
LABEL_109:
  result = 0;
  a3->x = v128 + (v116 * v124);
  a3->y = v117 + (v116 * -v127);
  return result;
}

- (int)newShape:(id *)a3 byInterpolatingBetweenCheckpoints:(id)a4[100] nc:(int)a5 usingVectorField:(id *)a6
{
  v65 = *MEMORY[0x1E69E9840];
  if (a5 < 1)
  {
    v12 = 0;
    v11 = 0;
  }

  else
  {
    LODWORD(v11) = 0;
    v12 = 0;
    v13 = 1;
    v14 = a4;
    do
    {
      if (v13 >= a5)
      {
        v15 = a5;
      }

      else
      {
        v15 = 0;
      }

      v16 = &v14[-v15];
      v17 = v14->var0.x - v16[1].var0.x;
      v18 = v14->var0.y - v16[1].var0.y;
      v19 = sqrt(((v18 * v18) + (v17 * v17)));
      *&v19 = v19 + v19 + v19 + v19;
      v20 = vcvtps_s32_f32(*&v19);
      if (v12 <= v20)
      {
        v12 = v20;
      }

      v11 = (v11 + v20);
      ++v14;
      ++v13;
    }

    while (v13 - a5 != 1);
  }

  v21 = malloc_type_malloc(16 * v12, 0x1000040451B5BE8uLL);
  if (!v21)
  {
    return 27;
  }

  v22 = v21;
  v62 = 0;
  v23 = [(CIRedEyeRepair3 *)self newShape:&v62];
  if (v23 || (v23 = [(CIRedEyeRepair3 *)self initShapePoints:v62 withMaxPoints:v11]) != 0)
  {
LABEL_14:
    v24 = v23;
    free(v22);
  }

  else
  {
    if (a5 >= 1)
    {
      v25 = 0;
      v60 = a3;
      while (1)
      {
        v26 = &a4[v25];
        x = v26->var0.x;
        y = v26->var0.y;
        v23 = [(CIRedEyeRepair3 *)self addPoint:v62 toShapePoints:v26->var0.x, y, v60];
        if (v23)
        {
          goto LABEL_14;
        }

        v29 = v25 + 1;
        if (v29 >= a5)
        {
          v30 = a5;
        }

        else
        {
          v30 = 0;
        }

        v61 = v29;
        v31 = &a4[v29 - v30];
        v33 = v31->var0.x;
        v32 = v31->var0.y;
        v34 = x - v31->var0.x;
        v35 = y - v32;
        v36 = (v35 * v35) + (v34 * v34);
        v37 = sqrt(v36);
        *&v37 = v37 + v37 + v37 + v37;
        LODWORD(v29) = vcvtps_s32_f32(*&v37);
        if (v12 < v29)
        {
          goto LABEL_41;
        }

        if (v29 < 1)
        {
          break;
        }

        v38 = 0;
        v39 = -1;
        v40 = v22 + 1;
        do
        {
          v41 = x;
          v42 = y;
          bilinearFloat4LookupComponents(a6, &v63, v41, v42);
          v43 = 6.28318531 - v64;
          v44 = __sincos_stret(v43);
          x = x + v44.__cosval * 0.5;
          y = y + v44.__sinval * 0.5;
          *(v40 - 1) = x;
          *v40 = y;
          v45 = v33 - x;
          v46 = v32 - y;
          v47 = (v46 * v46) + (v45 * v45);
          if (v47 < v36)
          {
            v39 = v38;
            v36 = v47;
          }

          ++v38;
          v40 += 2;
        }

        while (v29 != v38);
        if (v39 == -1)
        {
          break;
        }

        if (v39 >= v29)
        {
          goto LABEL_41;
        }

        v25 = v61;
        if (v39 >= 1)
        {
          v48 = &v22[2 * v39];
          v49 = v48 + 1;
LABEL_33:
          v50 = 0;
          v51 = v33 - *v48;
          v52 = v32 - *v49;
          v53 = v39;
          v54 = v22 + 1;
          do
          {
            v55 = ((1.0 / v39) * v50);
            v56 = *(v54 - 1) + v51 * v55;
            v57 = *v54 + v52 * v55;
            *(v54 - 1) = v56;
            *v54 = v57;
            ++v50;
            v54 += 2;
          }

          while (v39 != v50);
          v58 = v22 + 1;
          while (![(CIRedEyeRepair3 *)self addPoint:v62 toShapePoints:*(v58 - 1), *v58])
          {
            v58 += 2;
            if (!--v53)
            {
              goto LABEL_38;
            }
          }

          free(v22);
          return 28;
        }

LABEL_38:
        a3 = v60;
        if (v25 == a5)
        {
          goto LABEL_39;
        }
      }

      if (v29 <= 1)
      {
LABEL_41:
        free(v22);
        return 27;
      }

      v39 = 1;
      v49 = v22 + 3;
      v48 = v22 + 2;
      v25 = v61;
      goto LABEL_33;
    }

LABEL_39:
    free(v22);
    v24 = 0;
    *a3 = v62;
  }

  return v24;
}

- (int)improvedShape:(id *)a3 withShape:(id *)a4
{
  v72 = *MEMORY[0x1E69E9840];
  v65 = 0;
  inspector = self->inspector;
  if (inspector && [(RedEyeInspector3 *)inspector debuggingThisFaceAndEye:&self->S andThreadIndex:a4->var5])
  {
    [(RedEyeInspector3 *)self->inspector getIdentifyingString:v67 settings:&self->S];
    printf("\n%s %3d with %d points\n", v67, a4->var5, a4->var0);
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  var0 = a4->var0;
  if (a4->var0 < 1)
  {
    v20 = 0;
    v12 = 0.0;
    goto LABEL_23;
  }

  v9 = 0;
  v10 = 0;
  var2 = a4->var2;
  v12 = 0.0;
  do
  {
    v13 = *(var2 + 4);
    v14 = *var2;
    v15 = *(var2 + 1);
    bilinearFloat4LookupComponents(&self->PB.G, &v70, v14, v15);
    v16 = 6.28318531 - v71 - *(var2 + 5);
    v17 = v16;
    if (v16 >= 3.14159265)
    {
      v18 = v17 + -6.28318531;
    }

    else
    {
      if (v17 >= -3.14159265)
      {
        goto LABEL_12;
      }

      v18 = v17 + 6.28318531;
    }

    v16 = v18;
LABEL_12:
    if (fabsf(v16) < 0.17453)
    {
      if (v9 <= 99)
      {
        v19 = &v67[24 * v9];
        *v19 = *var2;
        *(v19 + 4) = v10;
        *(v19 + 5) = 0;
        ++v9;
      }

      if (v7)
      {
        printf("  %d\n", v10);
        var0 = a4->var0;
      }
    }

    v12 = v12 + v13;
    ++v10;
    var2 = (var2 + 48);
  }

  while (v10 < var0);
  v20 = v9;
  if (v9 > 0)
  {
    v21 = 0;
    v22 = 20;
    do
    {
      *&v67[v22] = checkpointScore(v21++, v67, v9, a4);
      v22 += 24;
    }

    while (v9 != v21);
  }

  while (1)
  {
LABEL_23:
    v23 = v20;
    if (v20 < 1)
    {
      v25 = -1;
      v30 = v12;
    }

    else
    {
      v24 = 0;
      v25 = -1;
      v26 = v69;
      v27 = v12;
      do
      {
        v28 = *v26;
        v26 += 6;
        v29 = v28;
        if (v28 < v27)
        {
          v25 = v24;
          v27 = v29;
        }

        ++v24;
      }

      while (v20 != v24);
      v30 = v27;
    }

    v31 = v12 * 0.1 <= v30 || v20 <= 1;
    v32 = !v31;
    if (v20 <= 10 && !v32)
    {
      break;
    }

    v33 = v25 + 1;
    if (v25 + 1 < v20)
    {
      v34 = &v67[24 * v33];
      do
      {
        v35 = &v67[24 * v33 - 24];
        v36 = *v34;
        *(v35 + 2) = *(v34 + 2);
        *v35 = v36;
        ++v33;
        v34 += 24;
      }

      while (v20 != v33);
    }

    --v20;
    if (v25 <= 0)
    {
      v37 = v23 - 1;
    }

    else
    {
      v37 = 0;
    }

    *&v69[3 * v25 - 3 + 3 * v37] = checkpointScore(v25 + v37 - 1, v67, v20, a4);
    if (v25 >= v20)
    {
      v38 = v23 - 1;
    }

    else
    {
      v38 = 0;
    }

    *&v69[3 * (v25 - v38)] = checkpointScore(v25 - v38, v67, v20, a4);
  }

  if (v7)
  {
    [(RedEyeInspector3 *)self->inspector getIdentifyingString:v66 settings:&self->S];
    printf("\n%s %3d with %d points and %d checkpoints\n", v66, a4->var5, a4->var0, v20);
    if (v20 >= 1)
    {
      v39 = v68;
      v40 = v20;
      do
      {
        printf("  %d (%.1f, %.1f)\n", *(v39 + 2), *(v39 - 1), *v39);
        v39 += 24;
        --v40;
      }

      while (v40);
    }
  }

  if (v20 > 1)
  {
    v42 = 0;
    v43 = v12 * 0.41;
    v44 = v43;
    v45 = v44 * 0.4;
    v46 = rintf(v45);
    if (v46 <= 3)
    {
      v46 = 3;
    }

    v47 = v44 * 0.8;
    v48 = rintf(v47);
    if (v46 >= 10)
    {
      v49 = 10;
    }

    else
    {
      v49 = v46;
    }

    if (v48 <= 6)
    {
      v50 = 6;
    }

    else
    {
      v50 = v48;
    }

    if (v50 >= 30)
    {
      v51 = 30;
    }

    else
    {
      v51 = v50;
    }

    v64 = 0.0;
    v52 = 0.0;
    for (i = v67; ; i += 24)
    {
      v54 = *i;
      v55 = *(i + 1);
      v56 = *i;
      v57 = v55;
      bilinearFloat4LookupComponents(&self->PB.G, &v70, v56, v57);
      *&v58 = 6.28318531 - v71;
      result = [(CIRedEyeRepair3 *)self updatedCheckpoint:i withCheckpoint:v42 checkpointIndex:v49 angle:v51 width:&self->PB.D height:a4->var5 inChannel:v54 threadIndex:v55 returningEdgeWidth:v58, &v64];
      if (result)
      {
        break;
      }

      v52 = v52 + v64;
      if (v23 == ++v42)
      {
        if (v7)
        {
          [(RedEyeInspector3 *)self->inspector getIdentifyingString:v66 settings:&self->S];
          printf("\n%s after update %3d with %d points and %d checkpoints\n", v66, a4->var5, a4->var0, v23);
          v59 = v68;
          v60 = v23;
          do
          {
            printf("  %d (%.1f, %.1f)\n", *(v59 + 2), *(v59 - 1), *v59);
            v59 += 24;
            --v60;
          }

          while (v60);
          printf("edge width %.2f\n", (v52 / v23));
        }

        var5 = a4->var5;
        result = [(CIRedEyeRepair3 *)self newShape:&v65 byInterpolatingBetweenCheckpoints:v67 nc:v23 usingVectorField:&self->PB.G];
        if (!result)
        {
          [(CIRedEyeRepair3 *)self computeLengthsAnglesAndDeltaAnglesForShape:v65];
          result = 0;
          v62 = v65;
          *(v65 + 16) = *&self->S.faceIndex;
          *(v62 + 24) = var5;
          *a3 = v62;
        }

        return result;
      }
    }
  }

  else
  {
    result = 0;
    *a3 = 0;
  }

  return result;
}

- (int)shape:(id *)a3 withThreadAtIndex:(int)a4 centroid:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  p_G = &self->G;
  threads = self->G.threads;
  inspector = self->inspector;
  if (inspector)
  {
    v13 = [(RedEyeInspector3 *)inspector debuggingThisFaceAndEye:&self->S andThreadIndex:*&a4];
  }

  else
  {
    v13 = 0;
  }

  v28 = 0;
  v29 = 0;
  result = [(CIRedEyeRepair3 *)self newShape:&v29];
  if (!result)
  {
    v15 = (threads + 96 * a4);
    result = [(CIRedEyeRepair3 *)self initShapePoints:v29 withMaxPoints:v15[2]];
    if (!result)
    {
      v16 = v29;
      *(v29 + 16) = *&self->S.faceIndex;
      *(v16 + 24) = a4;
      v17 = p_G->points + 96 * *v15;
      v18 = *(v17 + 68);
      if (v18 == -1)
      {
LABEL_10:
        result = [(CIRedEyeRepair3 *)self addPoint:v16 toShapePoints:*v17, *(v17 + 8)];
        if (!result)
        {
          if (*v29 == *(v29 + 4))
          {
            if (*v29 < 2)
            {
              return 48;
            }

            LODWORD(v20) = 1050790593;
            [(CIRedEyeRepair3 *)self removeRedundantPointsFromShape:v20 closerThan:?];
            if (v13)
            {
              puts("\nbefore");
              if (*v29 >= 1)
              {
                v22 = 0;
                v23 = *(v29 + 8);
                do
                {
                  printf("%3d (%5.1f, %5.1f) %6.4f %6.1f° del %6.1f\n", v22++, *v23, *(v23 + 8), *(v23 + 16), *(v23 + 20) * 180.0 / 3.14159265, *(v23 + 24) * 180.0 / 3.14159265);
                  v23 += 48;
                }

                while (v22 < *v29);
              }
            }

            *&v21 = self->S.scale * 1.5 * self->S.scale;
            [(CIRedEyeRepair3 *)self removeSmallBumpsFromShape:x center:y threshold:v21];
            if (*v29 > 1)
            {
              [(CIRedEyeRepair3 *)self removeSpikesFromShape:?];
              v24 = v29;
              shapes = p_G->shapes;
              result = [(CIRedEyeRepair3 *)self improvedShape:&v28 withShape:v29];
              if (!result)
              {
                v26 = v28;
                if (v28)
                {
                  v27 = p_G->shapes + v24 - shapes;
                  *(v27 + 6) = -1;
                  *(v27 + 2) = -1;
                }

                else
                {
                  v26 = v29;
                }

                result = 0;
                *a3 = v26;
              }
            }

            else
            {
              return 48;
            }
          }

          else
          {
            return 47;
          }
        }
      }

      else
      {
        while (1)
        {
          points = p_G->points;
          result = [(CIRedEyeRepair3 *)self addPoint:v29 toShapePoints:*v17, *(v17 + 8)];
          if (result)
          {
            break;
          }

          v17 = points + 96 * v18;
          v18 = *(v17 + 68);
          if (v18 == -1)
          {
            v16 = v29;
            goto LABEL_10;
          }
        }
      }
    }
  }

  return result;
}

- (int)closeThreadIndex:(int)a3 usingVectorField:(id *)a4
{
  v46[2] = *MEMORY[0x1E69E9840];
  inspector = self->inspector;
  if (inspector && [(RedEyeInspector3 *)inspector debuggingThisFaceAndEye:&self->S andThreadIndex:*&a3])
  {
    putchar(10);
  }

  v10 = (self->G.threads + 96 * a3);
  points = self->G.points;
  v12 = 96 * *v10;
  v13 = (points + 96 * v10[1]);
  v14 = *v13;
  v15 = v13[1];
  v16 = *v13 - v5;
  v45 = *(points + v12);
  v17 = *(points + v12 + 8);
  v18 = v15 - v45.f64[1];
  v19 = (v18 * v18) + (v16 * v16);
  v20 = sqrt(v19);
  *&v20 = v20 + v20 + v20 + v20;
  LODWORD(v4) = vcvtps_s32_f32(*&v20);
  v21 = malloc_type_malloc(32 * v4, 0x1000040451B5BE8uLL);
  if (!v21)
  {
    return 20;
  }

  v22 = v21;
  if (v4 < 1)
  {
    goto LABEL_21;
  }

  v23 = 0;
  v24 = v4;
  v25 = v21 + 1;
  LODWORD(v26) = -1;
  do
  {
    v27 = v14;
    v28 = v15;
    bilinearFloat4LookupComponents(a4, v46, v27, v28);
    v14 = v14 + v46[0].f32[0] * 0.5;
    v15 = v15 + v46[0].f32[1] * 0.5;
    *(v25 - 1) = v14;
    *v25 = v15;
    v29 = v45.f64[0] - v14;
    v30 = v17 - v15;
    v31 = (v30 * v30) + (v29 * v29);
    if (v31 >= v19)
    {
      v26 = v26;
    }

    else
    {
      v26 = v23;
    }

    if (v31 < v19)
    {
      v19 = v31;
    }

    ++v23;
    v25 += 2;
  }

  while (v4 != v23);
  if (v26 == -1)
  {
LABEL_21:
    v43 = 21;
  }

  else if (v26 < 1)
  {
LABEL_20:
    v43 = 0;
  }

  else
  {
    v32 = 0;
    v33 = vsubq_f64(v45, v22[v26]);
    do
    {
      v22[v32] = vmlaq_n_f64(v22[v32], v33, ((1.0 / v26) * v32));
      ++v32;
    }

    while (v26 != v32);
    v34 = &v22->f64[1];
    v35 = &v22[v24].f64[1];
    while (1)
    {
      v36 = [(CIRedEyeRepair3 *)self insertPoint:0 andDirection:*(v34 - 1) intoGrid:*v34, *(v35 - 1), *v35, *&v45];
      if (v36)
      {
        break;
      }

      v37 = self->G.nPoints - 1;
      v38 = self->G.points;
      v39 = self->G.threads + 96 * a3;
      v40 = *(v39 + 2);
      v41 = *(v39 + 1);
      *(v38 + 24 * v41 + 17) = v37;
      v42 = v38 + 96 * v37;
      *(v42 + 17) = -1;
      *(v42 + 18) = v41;
      *(v39 + 1) = v37;
      *(v39 + 2) = v40 + 1;
      v35 += 2;
      v34 += 2;
      if (!--v26)
      {
        goto LABEL_20;
      }
    }

    v43 = v36;
  }

  free(v22);
  return v43;
}

- (int)attemptClosureOfThreadIndex:(int)a3
{
  p_G = &self->G;
  v4 = (self->G.threads + 96 * a3);
  if (*(v4 + 24) != 1)
  {
    return 22;
  }

  v5 = *&a3;
  inspector = self->inspector;
  if (inspector && [(RedEyeInspector3 *)inspector debuggingThisFaceAndEye:&self->S andThreadIndex:*&a3])
  {
    [(CIRedEyeRepair3 *)self printThreadWithIndex:v5];
    putchar(10);
    v8 = p_G->points + 96 * *v4;
    printf("  0 %d (%.2f, %.2f)\n", *v4, *v8, *(v8 + 8));
    v9 = *(v8 + 68);
    if (v9 != -1)
    {
      v10 = 1;
      do
      {
        v11 = p_G->points + 96 * v9;
        printf("  %d %d (%.2f, %.2f)\n", v10++, v9, *v11, *(v11 + 8));
        v9 = *(v11 + 68);
      }

      while (v9 != -1);
    }

    putchar(10);
  }

  points = p_G->points;
  v14 = *v4;
  v13 = v4[1];
  v15 = points + 96 * *v4;
  v16 = points + 96 * v13;
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = *v15;
  v20 = *(v15 + 1);
  v21 = *v16 - *v15;
  v22 = v18 - v20;
  v23 = sqrtf((v22 * v22) + (v21 * v21));
  v24 = *(v16 + 18);
  v25 = v13;
  while (v24 != -1)
  {
    v25 = v24;
    v26 = (points + 96 * v24);
    v27 = v17 - *v26;
    v28 = v18 - v26[1];
    v24 = *(v26 + 18);
    if (sqrtf((v28 * v28) + (v27 * v27)) > v23)
    {
      if (v24 != -1)
      {
        goto LABEL_13;
      }

      break;
    }
  }

  v24 = v25;
LABEL_13:
  v29 = *(v15 + 17);
  if (v29 == -1)
  {
    v44 = 0;
    v37 = v23;
LABEL_33:
    v29 = v14;
    goto LABEL_34;
  }

  LOBYTE(v30) = v14 != v24;
  v31 = -1;
  v32 = 0.0;
  v33 = 10000.0;
  v34 = *(v15 + 1);
  v35 = *v15;
  v36 = *(v15 + 17);
  v37 = 10000.0;
  do
  {
    v38 = v35;
    v39 = v34;
    v40 = points + 96 * v36;
    v30 = v30 & (v36 != v24);
    v35 = *v40;
    v34 = *(v40 + 1);
    *&v38 = v38 - *v40;
    *&v39 = v39 - v34;
    v32 = sqrt(((*&v39 * *&v39) + (*&v38 * *&v38))) + v32;
    if (v30 == 1)
    {
      v41 = v17 - v35;
      v42 = v18 - v34;
      v43 = sqrtf((v42 * v42) + (v41 * v41));
      if (v43 < v37 && *(v4 + 3) * 0.5 > v32)
      {
        v31 = v36;
        v37 = v43;
        v33 = v32;
      }
    }

    v36 = *(v40 + 17);
  }

  while (v36 != -1);
  v44 = 0;
  if (v31 == -1 || v37 >= v23)
  {
    goto LABEL_27;
  }

  if (*(v4 + 3) * 0.5 <= v33)
  {
    v44 = 0;
LABEL_27:
    v37 = v23;
    goto LABEL_28;
  }

  v45 = points + 96 * v31;
  v46 = *(v45 + 18);
  *(v45 + 18) = -1;
  *v4 = v31;
  *(points + 24 * v46 + 17) = -1;
  v29 = *(v15 + 17);
  v44 = 1;
  v14 = v31;
LABEL_28:
  if (v29 == -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v14 = v29;
    v48 = points + 96 * v29;
    v49 = v19 - *v48;
    v50 = v20 - *(v48 + 1);
    v29 = *(v48 + 17);
    if (sqrtf((v50 * v50) + (v49 * v49)) > v23)
    {
      break;
    }

    if (v29 == -1)
    {
      goto LABEL_33;
    }
  }

  if (v29 == -1)
  {
    goto LABEL_33;
  }

LABEL_34:
  v51 = *(v16 + 18);
  if (v51 == -1)
  {
    goto LABEL_46;
  }

  LOBYTE(v52) = v13 != v29;
  v53 = -1;
  v54 = 0.0;
  v55 = 10000.0;
  v56 = 10000.0;
  do
  {
    v57 = v17;
    v58 = v18;
    v59 = points + 96 * v51;
    v52 = v52 & (v51 != v29);
    v17 = *v59;
    v18 = *(v59 + 1);
    *&v57 = v57 - *v59;
    *&v58 = v58 - v18;
    v54 = sqrt(((*&v58 * *&v58) + (*&v57 * *&v57))) + v54;
    if (v52 == 1)
    {
      v60 = v19 - v17;
      v61 = v20 - v18;
      v62 = sqrtf((v61 * v61) + (v60 * v60));
      if (v62 < v56 && *(v4 + 3) * 0.5 > v54)
      {
        v53 = v51;
        v56 = v62;
        v55 = v54;
      }
    }

    v51 = *(v59 + 18);
  }

  while (v51 != -1);
  if (v53 == -1 || v56 >= v37 || *(v4 + 3) * 0.5 <= v55)
  {
LABEL_46:
    if ((v44 & 1) == 0 && *(v4 + 3) * 0.2 <= v23)
    {
LABEL_50:
      if (*(v4 + 25))
      {
        return 0;
      }

      else
      {
        return 23;
      }
    }
  }

  else
  {
    v63 = points + 96 * v53;
    v64 = *(v63 + 17);
    *(v63 + 17) = -1;
    v4[1] = v53;
    *(points + 24 * v64 + 18) = -1;
  }

  result = [(CIRedEyeRepair3 *)self closeThreadIndex:v5 usingVectorField:&self->PB.G];
  if (result == 21 || !result)
  {
    *(v4 + 25) = 1;
    result = [(CIRedEyeRepair3 *)self gatherThreadInfo:v4];
    if (!result)
    {
      goto LABEL_50;
    }
  }

  return result;
}

- (CGPoint)threadCentroid:(id *)a3
{
  points = self->G.points;
  v4 = points + 96 * a3->var0;
  v5 = vcvt_f32_f64(*v4);
  v6 = *(v4 + 17);
  if (v6 == -1)
  {
    v9 = 1.0;
  }

  else
  {
    v7 = 1;
    do
    {
      v8 = points + 96 * v6;
      ++v7;
      v5 = vcvt_f32_f64(vaddq_f64(*v8, vcvtq_f64_f32(v5)));
      v6 = *(v8 + 17);
    }

    while (v6 != -1);
    v9 = v7;
  }

  v10 = vcvtq_f64_f32(vmul_n_f32(v5, 1.0 / v9));
  v11 = v10.f64[1];
  result.x = v10.f64[0];
  result.y = v11;
  return result;
}

- (float)threadSignedArea:(id *)a3 centroid:(CGPoint)a4
{
  points = self->G.points;
  v5 = points + 96 * a3->var0;
  v6 = *(v5 + 17);
  v7 = *(v5 + 1);
  if (v6 == -1)
  {
    v16 = v7 - a4.y;
    v8 = 0.0;
    v15 = v16;
    v10 = *v5;
  }

  else
  {
    v8 = 0.0;
    v9 = *(v5 + 1);
    v10 = *v5;
    do
    {
      v11 = v10;
      v12 = (points + 96 * v6);
      v13 = v9 - a4.y;
      v10 = *v12;
      v9 = v12[1];
      v14 = *v12 - v11;
      v15 = v9 - a4.y;
      *&v13 = (v13 + v9 - a4.y) * 0.5;
      v8 = v8 + (v14 * *&v13);
      v6 = *(v12 + 17);
    }

    while (v6 != -1);
    v16 = v7 - a4.y;
  }

  v17 = *v5 - v10;
  v18 = (v15 + v16) * 0.5;
  return v8 + (v17 * v18);
}

- (int)color:(id *)a3 underConvexHull:(id *)a4 saturated:(id *)a5
{
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  p_PB = &self->PB;
  width = self->PB.O.width;
  height = self->PB.O.height;
  initBitmap(&v41, width, height, 1, 1, 100.0);
  if (!v41)
  {
    return 51;
  }

  result = [(CIRedEyeRepair3 *)self renderHull:a4 toBitmap:&v41];
  if (!result)
  {
    if (height)
    {
      v15 = 0;
      baseAddress = p_PB->D.baseAddress;
      v17 = 0.0;
      v18 = 0.0;
      v19 = v41;
      v20 = (p_PB->O.baseAddress + 2);
      v21 = 0.0;
      v22 = 0.0;
      v23 = 0.0;
      v24 = 0.0;
      v25 = 0.0;
      v26 = 0.0;
      do
      {
        if (width)
        {
          v27 = width;
          v28 = v20;
          v29 = v19;
          v30 = baseAddress;
          do
          {
            LOBYTE(v13) = *v29;
            v13 = LODWORD(v13) * 0.0039216;
            v31 = *v28;
            v32 = *(v28 - 1);
            v33 = *(v28 - 2);
            LOBYTE(v14) = *v30;
            v14 = LODWORD(v14);
            v26 = v26 + (v31 * v13);
            v25 = v25 + (v32 * v13);
            v24 = v24 + (v33 * v13);
            v23 = v23 + (v14 * v13);
            if (v31 > 0xFA)
            {
              v21 = v21 + v13;
            }

            if (v32 > 0xFA)
            {
              v18 = v18 + v13;
            }

            if (v33 > 0xFA)
            {
              v17 = v17 + v13;
            }

            v22 = v22 + v13;
            v29 += SHIDWORD(v42);
            v30 += p_PB->D.samplesPerPixel;
            v28 += p_PB->O.samplesPerPixel;
            --v27;
          }

          while (v27);
        }

        ++v15;
        v19 += v42;
        baseAddress += p_PB->D.rowSamples;
        v20 += p_PB->O.rowSamples;
      }

      while (v15 != height);
    }

    else
    {
      v26 = 0.0;
      v25 = 0.0;
      v24 = 0.0;
      v23 = 0.0;
      v22 = 0.0;
      v21 = 0.0;
      v18 = 0.0;
      v17 = 0.0;
    }

    v34 = v26 / v22;
    v35 = v25 / v22;
    v36 = v24 / v22;
    v37 = v23 / v22;
    v38 = v21 / v22;
    v39 = v18 / v22;
    v40 = v17 / v22;
    termBitmap(&v41);
    result = 0;
    a5->var0 = v38;
    a5->var1 = v39;
    a5->var2 = v40;
    a5->var3 = 0.0;
    a3->var0 = v34;
    a3->var1 = v35;
    a3->var2 = v36;
    a3->var3 = v37;
  }

  return result;
}

+ (void)insertIntoThreadHopper:(id *)a3 index:(int)a4 recChannel:(float)a5 hue:(float)a6 saturation:(float)a7 luminance:(float)a8 shapeMetricTotal:(float)a9 xPosition:(float)a10
{
  var0 = a3->var0;
  if (var0 < 1)
  {
    LODWORD(v11) = 0;
LABEL_16:
    if (var0 <= 18)
    {
      v15 = (var0 - 1);
    }

    else
    {
      v15 = 18;
    }

    if (v15 >= v11)
    {
      v16 = v15 + 1;
      v17 = &a3->var1[v15 + 1];
      do
      {
        *&v17->var0 = *&v17[-1].var0;
        *&v17->var3 = *&v17[-1].var3;
        --v17;
        --v16;
      }

      while (v16 > v11);
      LODWORD(var0) = a3->var0;
    }

    v18 = &a3->var1[v11];
    v18->var0 = a4;
    v18->var1 = a5;
    v18->var2 = a6;
    v18->var3 = a7;
    v18->var4 = a8;
    v18->var5 = a9;
    v18->var6 = a10;
    if (var0 < 20)
    {
      v19 = var0 + 1;
    }

    else
    {
      v19 = 20;
    }

    a3->var0 = v19;
    return;
  }

  v11 = 0;
  p_var5 = &a3->var1[0].var5;
  while (1)
  {
    v13 = *(p_var5 - 4) < a5;
    if (*(p_var5 - 4) >= a5)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (*(p_var5 - 2) < a7)
    {
      v13 = v14;
    }

    if (*p_var5 > a9)
    {
      ++v13;
    }

    if (v13 > 1)
    {
      break;
    }

    ++v11;
    p_var5 += 7;
    if (var0 == v11)
    {
      LODWORD(v11) = a3->var0;
      break;
    }
  }

  if (v11 <= 0x13)
  {
    goto LABEL_16;
  }
}

- (void)swapHopperElement:(id *)a3 withElement:(id *)a4
{
  v7 = *MEMORY[0x1E69E9840];
  *&v5[12] = *&a3->var3;
  *v5 = *&a3->var0;
  v4 = *&a4->var3;
  *&a3->var0 = *&a4->var0;
  *&a3->var3 = v4;
  *&a4->var0 = *v5;
  *&a4->var3 = *&v5[12];
  if (self->inspector)
  {
    [(RedEyeInspector3 *)self->inspector getIdentifyingString:v6 settings:&self->S];
    printf("%s swapping\n", v6);
  }
}

- (int)recognizeThreadsWinningThreadIndex:(int *)a3 info:(id *)a4
{
  v90 = 0;
  p_G = &self->G;
  if (self->G.nThreads >= 1)
  {
    v6 = 0;
    v103 = 0;
    v104[0] = 0;
    v101 = 0.0;
    v102 = 0;
    v99 = 0.0;
    v100 = 0.0;
    v97 = 0.0;
    v98 = 0.0;
    v95 = 0.0;
    v96 = 0.0;
    v94 = 0.0;
    memset(v91, 0, sizeof(v91));
    v92 = 0u;
    memset(v93, 0, 460);
    v88 = 0u;
    v89 = 0u;
    memset(v87, 0, sizeof(v87));
    threads = self->G.threads;
    v84 = &self->G;
    do
    {
      *(threads + 26) = 0;
      if (*(threads + 24) == 1)
      {
        inspector = self->inspector;
        if (inspector && [(RedEyeInspector3 *)inspector debuggingThisFaceAndEye:&self->S])
        {
          [(CIRedEyeRepair3 *)self printThreadWithIndex:v6];
          putchar(10);
          v9 = 1;
        }

        else
        {
          v9 = 0;
        }

        v10 = [(CIRedEyeRepair3 *)self attemptClosureOfThreadIndex:v6];
        if (v10 != 23)
        {
          v11 = v10;
          if (v10)
          {
            return v11;
          }

          [(CIRedEyeRepair3 *)self threadCentroid:threads];
          v13 = v12;
          v15 = v14;
          [(CIRedEyeRepair3 *)self threadSignedArea:threads centroid:?];
          if (v16 < 0.0)
          {
            v17 = [(CIRedEyeRepair3 *)self shape:&v103 withThreadAtIndex:v6 centroid:v13, v15];
            if (v17)
            {
              return v17;
            }

            [(CIRedEyeRepair3 *)self slidingWindowAnalysisOfShape:v103 into:v87];
            LODWORD(v19) = DWORD1(v87[0]);
            LODWORD(v20) = v87[0];
            v21 = *v87 > 0.62832;
            if (*(v87 + 1) > 0.68068)
            {
              v21 = 1;
            }

            LODWORD(v18) = DWORD2(v87[0]);
            v22 = *(v87 + 2) > 0.61087 || v21;
            if (v89 > 0)
            {
              v22 = 1;
            }

            if (SDWORD1(v89) > 2)
            {
              v23 = 1;
            }

            else
            {
              v23 = v22;
            }

            if (SDWORD2(v89) > 21)
            {
              v23 = 1;
            }

            v85 = v23;
            if (v23 != 1 || *v87 <= 0.66323 && (LODWORD(v20) = 1062338430, *(v87 + 1) <= 0.8203) && (LODWORD(v19) = 1062045612, *(v87 + 2) <= 0.80285) && v89 <= 0 && SDWORD1(v89) <= 5 && SDWORD2(v89) <= 25)
            {
              if (v9)
              {
                puts("\nafter");
                if (*v103 >= 1)
                {
                  v24 = 0;
                  v25 = *(v103 + 8);
                  do
                  {
                    printf("%3d (%5.1f, %5.1f) %6.4f %6.1f° del %6.1f [%6.1f %6.1f %6.1f %6.1f]\n", v24, *v25, *(v25 + 8), *(v25 + 16), (*(v25 + 20) * 57.296), (*(v25 + 24) * 57.296), (*(v25 + 28) * 57.296), (*(v25 + 32) * 57.296), (*(v25 + 36) * 57.296), (*(v25 + 40) * 57.296));
                    v24 = (v24 + 1);
                    v25 += 48;
                  }

                  while (v24 < *v103);
                }
              }

              v26 = self->inspector;
              if (v26)
              {
                v27 = [(RedEyeInspector3 *)v26 newSavedShape:v19];
                height = self->S.height;
                v29 = *&self->S.transform.c;
                v86[0] = *&self->S.transform.a;
                v86[1] = v29;
                v86[2] = *&self->S.transform.tx;
                [(CIRedEyeRepair3 *)self copyShape:v103 into:v27 transform:v86 height:height];
              }

              if (v9)
              {
                v30 = -4;
                v31 = &v88;
                do
                {
                  v32 = COERCE_DOUBLE(0x400921FB54442D18 - ((v30 + 4) << 52));
                  printf("1/%d scale: min %4.2f max %4.2f avg %4.2f # neg %d\n", 2 << (v30 + 4), ((*(v31 - 4) - v32) * 57.296), ((*v31 - v32) * 57.296), (*(v31 - 8) * 57.296), *(v31 + 4));
                  v31 = (v31 + 4);
                }

                while (!__CFADD__(v30++, 1));
              }

              v17 = [(CIRedEyeRepair3 *)self convexHull:&v102 ofOriented:0 shape:v103, v19, v20, v18];
              p_G = v84;
              if (v17)
              {
                return v17;
              }

              [(CIRedEyeRepair3 *)self measureHull:v102 majorAxis:&v100 majorTo:&v98 majorDiameter:v104 + 4 minorAxis:&v96 minorTo:&v94 minorDiameter:v104];
              v34 = atan2(v99 - v101, v98 - v100);
              v35 = atan2(v95 - v97, v94 - v96);
              v36 = [(CIRedEyeRepair3 *)self color:threads + 52 underConvexHull:v102 saturated:threads + 68];
              if (v36)
              {
                v11 = v36;
                [(CIRedEyeRepair3 *)self termHull:v102];
                return v11;
              }

              LODWORD(v37) = *(threads + 13);
              LODWORD(v38) = *(threads + 14);
              LODWORD(v39) = *(threads + 15);
              LODWORD(v40) = *(threads + 16);
              [(CIRedEyeRepair3 *)self RGBtoHSV:v37, v38, v39, v40];
              v42 = v41;
              v44 = v43;
              v46 = v45;
              p_FC = &self->FC;
              v48 = 32;
              if (!self->S.side)
              {
                v48 = 16;
              }

              v49 = 72;
              if (!self->S.side)
              {
                v49 = 56;
              }

              v50 = *(&p_FC->FR.minrow + v48);
              v51 = *(&p_FC->FR.minrow + v49);
              v52 = *(threads + 14) * 0.587 + *(threads + 13) * 0.299 + *(threads + 15) * 0.114;
              scale = self->S.scale;
              v54 = (self->S.IOD * scale);
              v55 = v54 * 0.032;
              v56 = v54 * 0.14;
              v57 = HIDWORD(v104[0]);
              v58 = *(v104 + 1) >= v55 && *(v104 + 1) <= v56;
              if (v58 || v56 * 1.17 >= *(v104 + 1) && fabs(v42 + -0.333) <= 0.15 && v44 >= 0.45 && v52 >= 75.0)
              {
                v83 = v13;
                v59 = v34;
                v60 = v35;
                *(threads + 26) = 1;
                *(threads + 9) = v57;
                *(threads + 10) = v59;
                *(threads + 11) = v104[0];
                *(threads + 12) = v60;
                v61 = v44;
                v62 = v42;
                v63 = v46;
                [(CIRedEyeRepair3 *)self termHull:v102];
                v65 = v62;
                *&v66 = v61;
                if (v62 == 0.0 || v63 == 0.0 || v61 == 1.0 || *(threads + 13) > 255.0)
                {
                  v67 = v85;
                }

                else
                {
                  v80 = (v63 / 255.0) * 0.42;
                  v71 = sin(v61 + -0.2);
                  v65 = v62;
                  HIDWORD(v64) = 1071202172;
                  HIDWORD(v66) = HIDWORD(v80);
                  *&v71 = v80 * v71 + 0.3945 + v61 * -0.21;
                  if (vabds_f32(v62, *&v71) <= 0.0735)
                  {
                    v72 = sqrt((v61 + -0.2) / 6.0) + 0.23;
                    v73 = (v63 / 255.0) < v72;
                    if (v61 < 0.28)
                    {
                      v73 = 1;
                    }

                    v67 = v85 & v73;
                  }

                  else
                  {
                    v67 = v85;
                  }

                  *&v66 = v61;
                }

                if ((v67 & 1) == 0)
                {
                  v68 = v50 - v51;
                  v69 = v68 * scale;
                  v70 = (v83 - v69) / v54;
                  *(threads + 21) = (*v87 + *(v87 + 1)) + *(v87 + 2);
                  LODWORD(v70) = *(threads + 16);
                  *&v68 = v65;
                  *&v64 = v52;
                  [CIRedEyeRepair3 insertIntoThreadHopper:"insertIntoThreadHopper:index:recChannel:hue:saturation:luminance:shapeMetricTotal:xPosition:" index:&v90 recChannel:v6 hue:v70 saturation:v68 luminance:v66 shapeMetricTotal:v64 xPosition:?];
                }
              }
            }
          }
        }
      }

      v6 = (v6 + 1);
      threads = (threads + 96);
    }

    while (v6 < p_G->nThreads);
    v74 = v90;
    if (v90 < 2)
    {
      goto LABEL_85;
    }

    if (v90 == 3)
    {
      v75 = &v91[7];
      if (![(CIRedEyeRepair3 *)self hopperElement:v91 isMoreScleraThanElement:&v91[7]])
      {
        v75 = &v93[8];
        if (![(CIRedEyeRepair3 *)self hopperElement:v91 isMoreScleraThanElement:&v93[8]])
        {
LABEL_79:
          v74 = v90;
          if (v90 >= 1)
          {
LABEL_80:
            v76 = 0;
            v77 = 28 * v74;
            do
            {
              if (v76)
              {
                *(p_G->threads + 96 * v91[v76 / 4] + 26) = 0;
              }

              v76 += 28;
            }

            while (v77 != v76);
LABEL_86:
            v11 = 0;
            *a3 = v91[0];
            *&v78.var0 = __PAIR64__(v91[2], v91[6]);
            *&v78.var2 = *&v91[3];
            *a4 = v78;
            return v11;
          }

LABEL_85:
          if (!v74)
          {
            return 25;
          }

          goto LABEL_86;
        }
      }
    }

    else
    {
      if (v90 != 2)
      {
        goto LABEL_80;
      }

      v75 = &v91[7];
      if (![(CIRedEyeRepair3 *)self hopperElement:v91 isMoreScleraThanElement:&v91[7]])
      {
        goto LABEL_79;
      }
    }

    [(CIRedEyeRepair3 *)self swapHopperElement:v91 withElement:v75];
    goto LABEL_79;
  }

  return 25;
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)RGBtoHSV:(id)a3
{
  var2 = a3.var2;
  v4 = fmaxf(a3.var0, fmaxf(a3.var1, a3.var2));
  v5 = fminf(a3.var0, fminf(a3.var1, a3.var2));
  v6 = v4 - v5;
  v7 = 0.0;
  if ((v4 - v5) == 0.0)
  {
    v8 = 0.0;
    goto LABEL_18;
  }

  v9 = v6;
  v10 = v4 + v5;
  v11 = v10 * 0.5;
  if ((v10 * 0.5) <= 0.5)
  {
    v12 = v6 / v10;
  }

  else
  {
    v12 = v9 / (510.0 - v10);
  }

  v13 = 1.0 / (v9 * 6.0);
  if (a3.var0 == v4)
  {
    v14 = ((a3.var1 - var2) * v13);
    v15 = 0.333333333;
  }

  else
  {
    if (a3.var1 != v4)
    {
      v16 = (a3.var0 - a3.var1) * v13;
      if (var2 != v4)
      {
        v16 = 0.0;
      }

      goto LABEL_11;
    }

    v14 = ((var2 - a3.var0) * v13);
    v15 = 0.666666667;
  }

  v16 = v14 + v15;
LABEL_11:
  v17 = floorf(v16);
  v5 = 0.0;
  v8 = 0.0;
  if (v12 >= 0.0)
  {
    v8 = v12;
    if (v12 > 1.0)
    {
      v8 = 1.0;
    }
  }

  v7 = v16 - v17;
  if (v11 >= 0.0)
  {
    if (v11 <= 255.0)
    {
      v5 = v11;
    }

    else
    {
      v5 = 255.0;
    }
  }

LABEL_18:
  v18 = 0.0;
  v19 = v7;
  result.var3 = v18;
  result.var2 = v5;
  result.var1 = v8;
  result.var0 = v19;
  return result;
}

- (int)prominenceConvexHull:(id *)a3 facts:(id *)a4
{
  v110 = *MEMORY[0x1E69E9840];
  v106 = 0;
  v104 = 0.0;
  v105 = 0.0;
  v103[0] = 0;
  v103[1] = 0;
  p_PB = &self->PB;
  baseAddress = self->PB.G.baseAddress;
  rowSamples = self->PB.G.rowSamples;
  samplesPerPixel = self->PB.G.samplesPerPixel;
  v11 = self->PB.O.baseAddress;
  p_O = &self->PB.O;
  v96 = self->PB.O.rowSamples;
  v12 = self->PB.O.samplesPerPixel;
  width = self->PB.width;
  height = self->PB.height;
  inspector = self->inspector;
  if (inspector)
  {
    [(RedEyeInspector3 *)inspector initGradients:v103];
  }

  if (![(CIRedEyeRepair3 *)self initGridWithBitmap:p_O scale:8])
  {
    v31 = self->inspector;
    if (v31)
    {
      [(RedEyeInspector3 *)v31 termGradients:v103];
    }

    return 18;
  }

  v92 = a4;
  v93 = p_PB;
  v94 = v11;
  v95 = v12;
  v91 = a3;
  v14 = width;
  if (height >= 1)
  {
    v15 = 0;
    v16 = (baseAddress + 12);
    v97 = 4 * rowSamples;
    do
    {
      if (v15 && v15 < height - 1 && v14 >= 1)
      {
        v17 = 0;
        v18 = v16;
        do
        {
          if (v17 && v17 < width - 1 && *(v18 - 1) > self->S.minMagnitude)
          {
            v19 = __sincos_stret(*v18);
            v20 = [(CIRedEyeRepair3 *)self edgePoint:&v104 withBitmap:p_O center:v17 perp:v15, v19.__sinval, v19.__cosval];
            if (v20 && [(CIRedEyeRepair3 *)self insertPoint:1 andDirection:v104 intoGrid:v105, v19.__cosval, -v19.__sinval])
            {
              return 52;
            }

            v21 = self->inspector;
            v14 = width;
            if (v21)
            {
              [(RedEyeInspector3 *)v21 addGradientRow:v15 column:v17 good:v20 toList:v103];
              v14 = width;
            }
          }

          v17 = (v17 + 1);
          v18 += samplesPerPixel;
        }

        while (v14 != v17);
      }

      v15 = (v15 + 1);
      v16 = (v16 + v97);
    }

    while (v15 != height);
  }

  p_G = &self->G;
  v106 = 0;
  if (self->G.nPoints < 1)
  {
    goto LABEL_36;
  }

  v23 = 0;
  do
  {
    [(CIRedEyeRepair3 *)self regressionWithPointIndex:v23];
    v23 = v106 + 1;
    v106 = v23;
    nPoints = self->G.nPoints;
  }

  while (v23 < nPoints);
  v106 = 0;
  if (nPoints < 1)
  {
LABEL_36:
    v106 = 0;
    v28 = v95;
  }

  else
  {
    v25 = 0;
    do
    {
      v26 = [(CIRedEyeRepair3 *)self replacePointAndDirection:v25];
      if (v26)
      {
        return v26;
      }

      v25 = v106 + 1;
      v106 = v25;
      v27 = self->G.nPoints;
    }

    while (v25 < v27);
    v106 = 0;
    v28 = v95;
    if (v27 >= 1)
    {
      v29 = 0;
      do
      {
        v30 = [(CIRedEyeRepair3 *)self nextPointIndexWithPointIndex:v29];
        if (v30 != -1)
        {
          v26 = [(CIRedEyeRepair3 *)self linkUpPointIndex:v106 toPointIndex:v30];
          if (v26)
          {
            return v26;
          }
        }

        v29 = v106 + 1;
        v106 = v29;
      }

      while (v29 < self->G.nPoints);
    }
  }

  v32 = [(CIRedEyeRepair3 *)self findThreadsInGrid];
  v33 = self->inspector;
  if (v33 && [(RedEyeInspector3 *)v33 BOOLOptionIsOn:3]&& [(RedEyeInspector3 *)self->inspector BOOLOptionIsOn:5])
  {
    v34 = [(RedEyeInspector3 *)self->inspector initEyeMarkUpsWithBitmap:p_O];
    v35 = width;
    if (height >= 1)
    {
      v36 = 0;
      v37 = v94;
      do
      {
        if (v35 >= 1)
        {
          v38 = 0;
          v39 = v37;
          do
          {
            [(RedEyeInspector3 *)self->inspector emitEyeMarkUps:v34 pixel:v39 rectangleAtRow:v36 column:v38 settings:&self->S];
            v35 = width;
            v38 = (v38 + 1);
            v39 += v95;
          }

          while (width != v38);
        }

        v36 = (v36 + 1);
        v37 += v96;
      }

      while (v36 != height);
    }

    p_G = &self->G;
    [(RedEyeInspector3 *)self->inspector emitEyeMarkUps:v34 threadsWithGrid:&self->G settings:&self->S];
    [(RedEyeInspector3 *)self->inspector getIdentifyingStringEdge:&v107 settings:&self->S];
    -[RedEyeInspector3 saveEyeMarkUps:withName:](self->inspector, "saveEyeMarkUps:withName:", v34, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s-T.tiff", &v107]);
    [(RedEyeInspector3 *)self->inspector termEyeMarkUps:v34];
    v28 = v95;
  }

  if (v32)
  {
    return v32;
  }

  v32 = [(CIRedEyeRepair3 *)self connectThreadsInGrid];
  v40 = self->inspector;
  if (v40 && [(RedEyeInspector3 *)v40 BOOLOptionIsOn:3]&& [(RedEyeInspector3 *)self->inspector BOOLOptionIsOn:5])
  {
    v41 = [(RedEyeInspector3 *)self->inspector initEyeMarkUpsWithBitmap:p_O];
    v42 = width;
    if (height >= 1)
    {
      v43 = 0;
      v44 = v94;
      do
      {
        if (v42 >= 1)
        {
          v45 = 0;
          v46 = v44;
          do
          {
            [(RedEyeInspector3 *)self->inspector emitEyeMarkUps:v41 pixel:v46 rectangleAtRow:v43 column:v45 settings:&self->S];
            v42 = width;
            v45 = (v45 + 1);
            v46 += v95;
          }

          while (width != v45);
        }

        v43 = (v43 + 1);
        v44 += v96;
      }

      while (v43 != height);
    }

    [(RedEyeInspector3 *)self->inspector emitEyeMarkUps:v41 threadsWithGrid:p_G settings:&self->S];
    [(RedEyeInspector3 *)self->inspector getIdentifyingStringEdge:&v107 settings:&self->S];
    -[RedEyeInspector3 saveEyeMarkUps:withName:](self->inspector, "saveEyeMarkUps:withName:", v41, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s-C.tiff", &v107]);
    [(RedEyeInspector3 *)self->inspector termEyeMarkUps:v41];
    v28 = v95;
  }

  if (v32)
  {
    return v32;
  }

  v102 = 0uLL;
  v32 = [(CIRedEyeRepair3 *)self recognizeThreadsWinningThreadIndex:&v106 info:&v102];
  v51 = self->inspector;
  v52 = v94;
  if (v51)
  {
    [(RedEyeInspector3 *)v51 setDebugFaceIndex:self->S.faceIndex side:self->S.side];
    v53 = [(RedEyeInspector3 *)self->inspector newSavedGradientList];
    if (v53)
    {
      v54 = v53;
      v55 = self->inspector;
      v56 = *&v93->Tp.c;
      v107 = *&v93->Tp.a;
      v108 = v56;
      v109 = *&v93->Tp.tx;
      [(RedEyeInspector3 *)v55 copyGradients:v103 into:v54 bitmap:&v93->G transform:&v107];
    }

    v57 = [(RedEyeInspector3 *)self->inspector newSavedGrid];
    v58 = v93->height;
    v59 = *&v93->Tp.c;
    v107 = *&v93->Tp.a;
    v108 = v59;
    v109 = *&v93->Tp.tx;
    [(CIRedEyeRepair3 *)self copyGridInto:v57 transform:&v107 height:v58];
    [(RedEyeInspector3 *)self->inspector termGradients:v103];
    v60 = self->inspector;
    if (v60 && [(RedEyeInspector3 *)v60 BOOLOptionIsOn:3]&& [(RedEyeInspector3 *)self->inspector BOOLOptionIsOn:5])
    {
      v61 = [(RedEyeInspector3 *)self->inspector initEyeMarkUpsWithBitmap:p_O];
      v62 = width;
      if (height >= 1)
      {
        v63 = 0;
        v64 = v94;
        do
        {
          if (v62 >= 1)
          {
            v65 = 0;
            v66 = v64;
            do
            {
              [(RedEyeInspector3 *)self->inspector emitEyeMarkUps:v61 pixel:v66 rectangleAtRow:v63 column:v65 settings:&self->S];
              v62 = width;
              v65 = (v65 + 1);
              v66 += v95;
            }

            while (width != v65);
          }

          v63 = (v63 + 1);
          v64 += v96;
        }

        while (v63 != height);
      }

      [(RedEyeInspector3 *)self->inspector emitEyeMarkUps:v61 threadsWithGrid:p_G settings:&self->S];
      [(RedEyeInspector3 *)self->inspector getIdentifyingStringEdge:&v107 settings:&self->S];
      -[RedEyeInspector3 saveEyeMarkUps:withName:](self->inspector, "saveEyeMarkUps:withName:", v61, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s-R.tiff", &v107]);
      [(RedEyeInspector3 *)self->inspector termEyeMarkUps:v61];
      v52 = v94;
      v28 = v95;
    }
  }

  if (v32)
  {
    return v32;
  }

  v101 = 0;
  v67 = p_G->threads + 96 * v106;
  v68 = self->inspector;
  if (v68 && [(RedEyeInspector3 *)v68 BOOLOptionIsOn:2])
  {
    v69 = *(v67 + 16) * 180.0 / 3.14159265;
    v70 = rintf(v69);
    v71 = 82;
    if (!self->S.side)
    {
      v71 = 76;
    }

    printf("      %c %3d turn %d° ", v71, v106, v70);
    LODWORD(v72) = *(v67 + 52);
    LODWORD(v73) = *(v67 + 56);
    LODWORD(v74) = *(v67 + 60);
    LODWORD(v75) = *(v67 + 64);
    [(CIRedEyeRepair3 *)self RGBtoHSV:v72, v73, v74, v75];
    printf("%3.1f%% of IOD HSV (%5.3f, %5.3f, %5.1f) SAT (%2d %2d %2d) REC %5.1f\n", *(v67 + 36) * 100.0 / (self->S.IOD * self->S.scale), v78, v76, v77, rintf(*(v67 + 68) * 100.0), rintf(*(v67 + 72) * 100.0), rintf(*(v67 + 76) * 100.0), *(v67 + 64));
  }

  LODWORD(v47) = *(v67 + 52);
  LODWORD(v48) = *(v67 + 56);
  LODWORD(v49) = *(v67 + 60);
  LODWORD(v50) = *(v67 + 64);
  [(CIRedEyeRepair3 *)self RGBtoHSV:v47, v48, v49, v50];
  v92->var0 = *(v67 + 52);
  *&v92->var1 = vuzp1q_s32(*(v67 + 36), vrev64q_s32(*(v67 + 36)));
  LODWORD(v79) = *(v67 + 84);
  DWORD1(v79) = v102;
  *(&v79 + 1) = *(&v102 + 4);
  *&v92->var5 = v79;
  v92->var9 = *(&v102 + 3);
  nShapes = p_G->nShapes;
  if (nShapes < 1)
  {
    goto LABEL_84;
  }

  shapes = p_G->shapes;
  v82 = (shapes + 32 * (nShapes - 1));
  do
  {
    if (*(shapes + 6) == v106)
    {
      v82 = shapes;
LABEL_88:
      v83 = [(CIRedEyeRepair3 *)self convexHull:&v101 ofOriented:0 shape:v82];
      goto LABEL_89;
    }

    shapes = (shapes + 32);
    --nShapes;
  }

  while (nShapes);
  if (v82 && *(v82 + 6) == v106)
  {
    goto LABEL_88;
  }

LABEL_84:
  v83 = [(CIRedEyeRepair3 *)self convexHull:&v101 ofOriented:0 threadIndex:v106];
LABEL_89:
  v32 = v83;
  if (!v83)
  {
    v85 = self->inspector;
    if (v85 && [(RedEyeInspector3 *)v85 BOOLOptionIsOn:3])
    {
      v86 = [(RedEyeInspector3 *)self->inspector initEyeMarkUpsWithBitmap:p_O];
      v87 = width;
      if (height >= 1)
      {
        v88 = 0;
        do
        {
          if (v87 >= 1)
          {
            v89 = 0;
            v90 = v52;
            do
            {
              [(RedEyeInspector3 *)self->inspector emitEyeMarkUps:v86 pixel:v90 rectangleAtRow:v88 column:v89 settings:&self->S];
              v87 = width;
              v89 = (v89 + 1);
              v90 += v28;
            }

            while (width != v89);
          }

          v88 = (v88 + 1);
          v52 += v96;
        }

        while (v88 != height);
      }

      if (v101)
      {
        [(RedEyeInspector3 *)self->inspector emitEyeMarkUps:v86 convexHull:v101 settings:&self->S];
      }

      [(RedEyeInspector3 *)self->inspector getIdentifyingStringEdge:&v107 settings:&self->S];
      -[RedEyeInspector3 saveEyeMarkUps:withName:](self->inspector, "saveEyeMarkUps:withName:", v86, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s.tiff", &v107]);
      [(RedEyeInspector3 *)self->inspector termEyeMarkUps:v86];
    }

    [(CIRedEyeRepair3 *)self termGrid];
    v32 = 0;
    *v91 = v101;
  }

  return v32;
}

- (int)prepareTransformWithEyeIndex:(int)a3
{
  p_FC = &self->FC;
  v5 = 64;
  if (!a3)
  {
    v5 = 48;
  }

  v6 = 68;
  if (!a3)
  {
    v6 = 52;
  }

  v7 = 72;
  if (!a3)
  {
    v7 = 56;
  }

  v8 = 76;
  if (!a3)
  {
    v8 = 60;
  }

  v9 = *(&p_FC->FR.minrow + v6);
  v10 = *(&p_FC->FR.minrow + v7);
  v11 = v10;
  v12 = (self->FC.FR.maxrow - (v9 + self->FC.FR.minrow));
  v13 = *(&p_FC->FR.minrow + v8) - v10;
  v14 = v9 - *(&p_FC->FR.minrow + v5);
  p_S = &self->S;
  downsampleType = self->S.downsampleType;
  if ((downsampleType - 1) < 3)
  {
    scale = self->S.scale;
    v18 = v13 * scale;
    p_PB = &self->PB;
    v20 = v14 * scale;
    v21 = MEMORY[0x1E695EFD0];
    self->PB.width = rintf(v18);
    self->PB.height = rintf(v20);
    v22 = *v21;
    v23 = v21[1];
    *&self->PB.T.a = *v21;
    *&self->PB.T.c = v23;
    v24 = v21[2];
    *&self->PB.T.tx = v24;
    v25 = self->S.scale;
    *&v43.a = v22;
    *&v43.c = v23;
    *&v43.tx = v24;
    CGAffineTransformScale(&v44, &v43, v25, v25);
    v26 = *&v44.c;
    *&self->PB.T.a = *&v44.a;
    *&self->PB.T.c = v26;
    *&self->PB.T.tx = *&v44.tx;
    v27 = -v11;
    v28 = -v12;
    v29 = *&self->PB.T.c;
    *&v43.a = *&self->PB.T.a;
    *&v43.c = v29;
    *&v43.tx = *&self->PB.T.tx;
LABEL_13:
    CGAffineTransformTranslate(&v44, &v43, v27, v28);
    v34 = *&v44.c;
    *&p_PB->T.a = *&v44.a;
    *&p_PB->T.c = v34;
    *&p_PB->T.tx = *&v44.tx;
    height = p_S->inputImageExtent.size.height;
    maxrow = p_FC->FR.maxrow;
    mincol = p_FC->FR.mincol;
    v38 = &self->PB;
    v39 = *&v38->T.c;
    *&v43.a = *&v38->T.a;
    *&v43.c = v39;
    *&v43.tx = *&v38->T.tx;
    memset(&v44, 0, sizeof(v44));
    CGAffineTransformTranslate(&v44, &v43, -mincol, -(rintf(height) - maxrow));
    v42 = v44;
    CGAffineTransformInvert(&v43, &v42);
    result = 0;
    v41 = *&v43.c;
    *&v38->Tp.a = *&v43.a;
    *&v38->Tp.c = v41;
    *&v38->Tp.tx = *&v43.tx;
    return result;
  }

  if (!downsampleType)
  {
    p_PB = &self->PB;
    v30 = MEMORY[0x1E695EFD0];
    self->PB.width = v13;
    self->PB.height = v14;
    v31 = *v30;
    v32 = v30[1];
    *&self->PB.T.a = *v30;
    *&self->PB.T.c = v32;
    v33 = v30[2];
    *&self->PB.T.tx = v33;
    v27 = -v11;
    v28 = -v12;
    *&v43.a = v31;
    *&v43.c = v32;
    *&v43.tx = v33;
    goto LABEL_13;
  }

  return 17;
}

- (int)renderEyePolygonToBitmap:(id *)a3
{
  var1 = a3->var1;
  var2 = a3->var2;
  DeviceGray = CGColorSpaceCreateDeviceGray();
  if (!DeviceGray)
  {
    return 10;
  }

  v8 = DeviceGray;
  v9 = CGBitmapContextCreate(a3->var0, var1, var2, 8uLL, a3->var4, DeviceGray, 0);
  CGColorSpaceRelease(v8);
  if (!v9)
  {
    return 42;
  }

  CGContextSetRGBFillColor(v9, 0.0, 0.0, 0.0, 1.0);
  CGContextBeginPath(v9);
  CGContextMoveToPoint(v9, 0.0, 0.0);
  CGContextAddLineToPoint(v9, var1, 0.0);
  CGContextAddLineToPoint(v9, var1, var2);
  CGContextAddLineToPoint(v9, 0.0, var2);
  CGContextAddLineToPoint(v9, 0.0, 0.0);
  CGContextClosePath(v9);
  CGContextFillPath(v9);
  CGContextSetRGBFillColor(v9, 1.0, 1.0, 1.0, 1.0);
  CGContextBeginPath(v9);
  v10 = 0;
  p_FC = &self->FC;
  v12 = 64;
  if (!self->S.side)
  {
    v12 = 48;
  }

  v13 = 72;
  if (!self->S.side)
  {
    v13 = 56;
  }

  v14 = *(&p_FC->FR.minrow + v13);
  v15 = 112;
  v16 = *(&p_FC->FR.minrow + v12);
  if (self->S.side)
  {
    v15 = 240;
  }

  v17 = v16;
  v18 = (var2 - 1);
  v19 = (&p_FC->FR.minrow + v15);
  v20 = v18;
  v21 = (&self->FC.FR.mincol + v15);
  do
  {
    v22 = *(v21 - 1) - v14 + 0.5;
    v23 = v17 - *v21 + v20 + 0.5;
    if (v10)
    {
      CGContextAddLineToPoint(v9, v22, v23);
    }

    else
    {
      CGContextMoveToPoint(v9, v22, v23);
    }

    ++v10;
    v21 += 2;
  }

  while (v10 != 8);
  CGContextAddLineToPoint(v9, *v19 - v14 + 0.5, v17 - v19[1] + v20 + 0.5);
  CGContextClosePath(v9);
  CGContextFillPath(v9);
  CGContextRelease(v9);
  return 0;
}

- (int)prepareBitmapsWithString:(char *)a3
{
  v57[1] = *MEMORY[0x1E69E9840];
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v5 = [MEMORY[0x1E695DEF0] dataWithBytes:self->faceBitmap.baseAddress length:self->faceBitmap.size];
  v6 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
  v7 = [+[CIImage imageWithBitmapData:bytesPerRow:size:format:colorSpace:](CIImage imageByClampingToExtent:v5];
  p_PB = &self->PB;
  v9 = *&self->PB.T.c;
  v42 = *&self->PB.T.a;
  v43 = v9;
  v44 = *&self->PB.T.tx;
  v10 = [(CIImage *)v7 imageByApplyingTransform:&v42];
  initBitmap(&self->PB.OO, self->PB.width, self->PB.height, 4, 1, 100.0);
  if (!self->PB.OO.baseAddress)
  {
    CGColorSpaceRelease(v6);
    return 9;
  }

  v11 = +[CIContext context];
  [(CIContext *)v11 render:v10 toBitmap:self->PB.OO.baseAddress rowBytes:self->PB.OO.rowBytes bounds:266 format:v6 colorSpace:0.0, 0.0, p_PB->width, self->PB.height];
  CGColorSpaceRelease(v6);
  initBitmap(&self->PB.O, p_PB->width, self->PB.height, 4, 1, 100.0);
  if (!self->PB.O.baseAddress)
  {
    return 9;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (!DeviceRGB)
  {
    return 10;
  }

  v13 = DeviceRGB;
  [(CIContext *)v11 render:v10 toBitmap:self->PB.O.baseAddress rowBytes:self->PB.O.rowBytes bounds:266 format:DeviceRGB colorSpace:0.0, 0.0, p_PB->width, self->PB.height];
  CGColorSpaceRelease(v13);
  inspector = self->inspector;
  if (inspector && [(RedEyeInspector3 *)inspector BOOLOptionIsOn:4])
  {
    [(RedEyeInspector3 *)self->inspector saveBitmap:&self->PB.O format:266 faceIndex:self->S.faceIndex side:self->S.side name:"1-ORIG" which:a3];
  }

  gradientChannel = self->S.gradientChannel;
  if (gradientChannel > 9)
  {
    return 54;
  }

  v17 = dword_19CF2B718[gradientChannel];
  v56 = @"inputChannel";
  v57[0] = [MEMORY[0x1E696AD98] numberWithInt:v17];
  v37 = -[CIImage imageByApplyingFilter:withInputParameters:](v10, "imageByApplyingFilter:withInputParameters:", @"RedEyeChannel", [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1]);
  v18 = (self->S.IOD * self->S.scale) * 0.05;
  v19 = v18;
  v20 = self->inspector;
  if (v20)
  {
    if ([(RedEyeInspector3 *)v20 BOOLOptionIsOn:4])
    {
      initBitmap(&v45, p_PB->width, self->PB.height, 4, 1, 100.0);
      if (v45)
      {
        [(CIContext *)v11 render:v37 toBitmap:v45 rowBytes:SDWORD1(v46) bounds:266 format:0 colorSpace:0.0, 0.0, p_PB->width, self->PB.height];
        [(RedEyeInspector3 *)self->inspector saveBitmap:&v45 format:266 faceIndex:self->S.faceIndex side:self->S.side name:"2-REC" which:a3];
        termBitmap(&v45);
      }
    }
  }

  v54 = @"inputRadius";
  *&v18 = v19;
  v55 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
  v21 = -[CIImage imageByApplyingFilter:withInputParameters:](v37, "imageByApplyingFilter:withInputParameters:", @"RedEyeMinMorphology", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1]);
  v23 = self->inspector;
  if (v23)
  {
    if ([(RedEyeInspector3 *)v23 BOOLOptionIsOn:4])
    {
      initBitmap(&v45, p_PB->width, self->PB.height, 4, 1, 100.0);
      if (v45)
      {
        [(CIContext *)v11 render:v21 toBitmap:v45 rowBytes:SDWORD1(v46) bounds:266 format:0 colorSpace:0.0, 0.0, p_PB->width, self->PB.height];
        [(RedEyeInspector3 *)self->inspector saveBitmap:&v45 format:266 faceIndex:self->S.faceIndex side:self->S.side name:"3-MIN" which:a3];
        termBitmap(&v45);
      }
    }
  }

  v52 = @"inputRadius";
  *&v22 = v19;
  v53 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
  v24 = -[CIImage imageByApplyingFilter:withInputParameters:](v21, "imageByApplyingFilter:withInputParameters:", @"RedEyeMaxMorphology", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1]);
  v25 = self->inspector;
  if (v25)
  {
    if ([(RedEyeInspector3 *)v25 BOOLOptionIsOn:4])
    {
      initBitmap(&v45, p_PB->width, self->PB.height, 4, 1, 100.0);
      if (v45)
      {
        [(CIContext *)v11 render:v24 toBitmap:v45 rowBytes:SDWORD1(v46) bounds:266 format:0 colorSpace:0.0, 0.0, p_PB->width, self->PB.height];
        [(RedEyeInspector3 *)self->inspector saveBitmap:&v45 format:266 faceIndex:self->S.faceIndex side:self->S.side name:"4-MAX" which:a3];
        termBitmap(&v45);
      }
    }
  }

  v50 = @"inputSubtractedImage";
  v51 = v24;
  v26 = -[CIImage imageByApplyingFilter:withInputParameters:](v37, "imageByApplyingFilter:withInputParameters:", @"RedEyeDifference", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1]);
  v27 = v26;
  if (self->PB.maskRender)
  {
    v27 = [[(CIImage *)v26 imageByApplyingFilter:@"RedEyeMaxMorphology" withInputParameters:&unk_1F10827A8] imageByApplyingFilter:@"RedEyeMinMorphology" withInputParameters:&unk_1F10827D0];
  }

  initBitmap(&v45, p_PB->width, self->PB.height, 4, 1, 100.0);
  if (!v45)
  {
    termBitmap(&self->PB.O.baseAddress);
    return 11;
  }

  [(CIContext *)v11 render:v27 toBitmap:v45 rowBytes:SDWORD1(v46) bounds:266 format:0 colorSpace:0.0, 0.0, p_PB->width, self->PB.height];
  initBitmap(&self->PB.D, p_PB->width, self->PB.height, 1, 1, 100.0);
  if (!self->PB.D.baseAddress)
  {
    termBitmap(&self->PB.O.baseAddress);
    termBitmap(&v45);
    return 12;
  }

  [(CIRedEyeRepair3 *)self condenseFourChannelRecognitionMap:&v45 intoOneChanneMap:&self->PB.D];
  v28 = self->inspector;
  if (v28 && [(RedEyeInspector3 *)v28 BOOLOptionIsOn:4])
  {
    [(RedEyeInspector3 *)self->inspector saveBitmap:&v45 format:266 faceIndex:self->S.faceIndex side:self->S.side name:"5-DIFF" which:a3];
  }

  termBitmap(&v45);
  if (!self->PB.computeGradient)
  {
    self->PB.G.baseAddress = 0;
    goto LABEL_42;
  }

  v29 = [(CIImage *)v27 imageByApplyingFilter:@"RedEyeGradient"];
  *&v44 = 0;
  v42 = 0u;
  v43 = 0u;
  initBitmap(&v42, p_PB->width, self->PB.height, 4, 2, 100.0);
  if (!v42)
  {
LABEL_63:
    termBitmap(&self->PB.O.baseAddress);
    termBitmap(&self->PB.D.baseAddress);
    return 13;
  }

  [(CIContext *)v11 render:v29 toBitmap:v42 rowBytes:SDWORD1(v43) bounds:2056 format:0 colorSpace:0.0, 0.0, p_PB->width, self->PB.height];
  initBitmap(&self->PB.G, p_PB->width, self->PB.height, 4, 4, 100.0);
  baseAddress = self->PB.G.baseAddress;
  if (!baseAddress)
  {
    termBitmap(&v42);
    goto LABEL_63;
  }

  src.data = v42;
  src.height = SHIDWORD(v42);
  src.width = 4 * SDWORD2(v42);
  src.rowBytes = SDWORD1(v43);
  height = self->PB.G.height;
  dest.data = baseAddress;
  dest.height = height;
  rowBytes = self->PB.G.rowBytes;
  dest.width = 4 * self->PB.G.width;
  dest.rowBytes = rowBytes;
  vImageConvert_Planar16FtoPlanarF(&src, &dest, 0);
  termBitmap(&v42);
  v33 = self->inspector;
  if (v33)
  {
    if ([(RedEyeInspector3 *)v33 BOOLOptionIsOn:4])
    {
      v39 = 0;
      memset(v38, 0, sizeof(v38));
      initBitmap(v38, p_PB->width, self->PB.height, 1, 1, 100.0);
      if (*&v38[0])
      {
        [(CIRedEyeRepair3 *)self magnitudeMap:v38 fromGabor:&self->PB.G];
        [(RedEyeInspector3 *)self->inspector saveBitmap:v38 format:266 faceIndex:self->S.faceIndex side:self->S.side name:"6-MAG" which:a3];
        termBitmap(v38);
      }
    }
  }

LABEL_42:
  if (self->PB.computeShine)
  {
    v48 = @"inputThresholds";
    v49 = [CIVector vectorWithX:0.36 Y:0.36 Z:0.36 W:0.0];
    v34 = -[CIImage imageByApplyingFilter:withInputParameters:](v10, "imageByApplyingFilter:withInputParameters:", @"RedEyeGlintFinder", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1]);
    initBitmap(&v45, p_PB->width, self->PB.height, 4, 1, 100.0);
    if (!v45)
    {
      termBitmap(&self->PB.O.baseAddress);
      termBitmap(&self->PB.D.baseAddress);
      if (self->PB.G.baseAddress)
      {
        termBitmap(&self->PB.G.baseAddress);
      }

      return 14;
    }

    [(CIContext *)v11 render:v34 toBitmap:v45 rowBytes:SDWORD1(v46) bounds:266 format:0 colorSpace:0.0, 0.0, p_PB->width, self->PB.height];
    initBitmap(&self->PB.S, p_PB->width, self->PB.height, 1, 1, 100.0);
    if (!self->PB.S.baseAddress)
    {
      termBitmap(&self->PB.O.baseAddress);
      termBitmap(&self->PB.D.baseAddress);
      if (self->PB.G.baseAddress)
      {
        termBitmap(&self->PB.G.baseAddress);
      }

      termBitmap(&v45);
      return 15;
    }

    [(CIRedEyeRepair3 *)self condenseFourChannelRecognitionMap:&v45 intoOneChanneMap:&self->PB.S];
    v35 = self->inspector;
    if (v35 && [(RedEyeInspector3 *)v35 BOOLOptionIsOn:4])
    {
      [(RedEyeInspector3 *)self->inspector saveBitmap:&v45 format:266 faceIndex:self->S.faceIndex side:self->S.side name:"7-SHIN" which:a3];
    }

    termBitmap(&v45);
  }

  else
  {
    self->PB.S.baseAddress = 0;
  }

  if (!self->PB.computeEyePolygon)
  {
    return 0;
  }

  initBitmap(&self->PB.EP, p_PB->width, self->PB.height, 1, 1, 100.0);
  if (!self->PB.EP.baseAddress)
  {
    termBitmap(&self->PB.O.baseAddress);
    termBitmap(&self->PB.D.baseAddress);
    if (self->PB.G.baseAddress)
    {
      termBitmap(&self->PB.G.baseAddress);
    }

    if (!self->PB.S.baseAddress)
    {
      return 59;
    }

    p_S = &self->PB.S;
LABEL_68:
    termBitmap(&p_S->baseAddress);
    return 59;
  }

  result = [(CIRedEyeRepair3 *)self renderEyePolygonToBitmap:&self->PB.EP];
  if (result)
  {
    termBitmap(&self->PB.O.baseAddress);
    termBitmap(&self->PB.D.baseAddress);
    if (self->PB.G.baseAddress)
    {
      termBitmap(&self->PB.G.baseAddress);
    }

    if (self->PB.S.baseAddress)
    {
      termBitmap(&self->PB.S.baseAddress);
    }

    p_S = &self->PB.EP;
    goto LABEL_68;
  }

  return result;
}

- (int)prepareMasksWithConvexHull:(id *)a3
{
  v4 = self;
  v210 = *MEMORY[0x1E69E9840];
  inspector = self->inspector;
  if (inspector)
  {
    if ([(RedEyeInspector3 *)inspector BOOLOptionIsOn:0])
    {
      [(RedEyeInspector3 *)v4->inspector saveBitmap:&v4->PB.O format:266 faceIndex:v4->S.faceIndex side:v4->S.side name:"1-ORIG" which:"M"];
    }

    v6 = v4->inspector;
    if (v6)
    {
      if ([(RedEyeInspector3 *)v6 BOOLOptionIsOn:1])
      {
        [(RedEyeInspector3 *)v4->inspector saveBitmap:&v4->PB.D format:266 faceIndex:v4->S.faceIndex side:v4->S.side name:"2-DIFF" which:"M"];
      }

      v7 = v4->inspector;
      if (v7)
      {
        if ([(RedEyeInspector3 *)v7 BOOLOptionIsOn:1])
        {
          [(RedEyeInspector3 *)v4->inspector saveBitmap:&v4->PB.S format:266 faceIndex:v4->S.faceIndex side:v4->S.side name:"A-OSHN" which:"M"];
        }

        v8 = v4->inspector;
        if (v8 && [(RedEyeInspector3 *)v8 BOOLOptionIsOn:1])
        {
          [(RedEyeInspector3 *)v4->inspector saveBitmap:&v4->PB.EP format:266 faceIndex:v4->S.faceIndex side:v4->S.side name:"B-POLY" which:"M"];
        }
      }
    }
  }

  p_PB = &v4->PB;
  initBitmap(&v4->PB.M, v4->PB.width, v4->PB.height, 1, 1, 100.0);
  if (!v4->PB.M.baseAddress)
  {
    return 6;
  }

  v10 = [(CIRedEyeRepair3 *)v4 analyzeMask:&v4->PB.D usingConvexHull:a3 producingOptimizedMask:&v4->PB.M];
  if (v10)
  {
    return v10;
  }

  v11 = v4->inspector;
  if (v11 && [(RedEyeInspector3 *)v11 BOOLOptionIsOn:1])
  {
    [(RedEyeInspector3 *)v4->inspector saveBitmap:&v4->PB.M format:266 faceIndex:v4->S.faceIndex side:v4->S.side name:"3-OPTI" which:"M"];
  }

  v206 = 0;
  v207 = 0;
  v204 = 0u;
  v205 = 0u;
  v10 = [(CIRedEyeRepair3 *)v4 widenedHull:&v207 withHull:a3 by:COERCE_DOUBLE(COERCE_UNSIGNED_INT(1.0))];
  if (v10)
  {
    return v10;
  }

  initBitmap(&v204, v4->PB.width, v4->PB.height, 1, 1, 100.0);
  if (!v204)
  {
    [(CIRedEyeRepair3 *)v4 termHull:v207];
    return 7;
  }

  LODWORD(v14) = 2.0;
  v15 = [(CIRedEyeRepair3 *)v4 renderConvexHull:v207 distance:&v204 fieldToBitmap:v14];
  if (v15)
  {
    v12 = v15;
    [(CIRedEyeRepair3 *)v4 termHull:v207];
    termBitmap(&v204);
    return v12;
  }

  v16 = v4->inspector;
  if (v16 && [(RedEyeInspector3 *)v16 BOOLOptionIsOn:1])
  {
    [(RedEyeInspector3 *)v4->inspector saveBitmap:&v204 format:266 faceIndex:v4->S.faceIndex side:v4->S.side name:"4-DIST" which:"M"];
  }

  [(CIRedEyeRepair3 *)v4 termHull:v207];
  if ((applyMaxFilter8(&v4->PB.M.baseAddress, 3) & 1) == 0)
  {
    termBitmap(&v204);
    return 0;
  }

  baseAddress = v4->PB.S.baseAddress;
  rowSamples = v4->PB.S.rowSamples;
  samplesPerPixel = v4->PB.S.samplesPerPixel;
  width = p_PB->width;
  height = v4->PB.height;
  if (height < 1)
  {
    v40 = 0.0;
    v42 = 0.0;
    v41 = 0.0;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = SHIDWORD(v205);
    v26 = v205;
    v27 = v204;
    v28 = v4->PB.M.samplesPerPixel;
    v29 = v4->PB.M.rowSamples;
    v30 = v4->PB.S.baseAddress;
    v31 = v4->PB.M.baseAddress;
    do
    {
      if (width >= 1)
      {
        v32 = 0;
        v33 = v30;
        v34 = v27;
        v35 = v31;
        do
        {
          v36 = *v33;
          v37 = *v34 | (*v34 << 8);
          v38 = v37 * *v35;
          v39 = (v38 + 0x8000) >> 16;
          if (v38 >= 0x8000)
          {
            v24 += v39 * v32;
            v23 += v39 * v21;
            v22 += v39;
          }

          ++v32;
          *v35 = v39;
          *v33 = (v37 * v36 + 0x8000) >> 16;
          v35 += v28;
          v34 += v25;
          v33 += samplesPerPixel;
        }

        while (width != v32);
      }

      ++v21;
      v31 += v29;
      v27 += v26;
      v30 += rowSamples;
    }

    while (v21 != height);
    v40 = v24;
    v41 = v22;
    v42 = v23;
  }

  termBitmap(&v204);
  v45 = v4->inspector;
  if (v45)
  {
    v182 = [(RedEyeInspector3 *)v45 debuggingThisFaceAndEye:&v4->S];
  }

  else
  {
    v182 = 0;
  }

  p_S = &v4->S;
  v46 = 32;
  if (!v4->S.side)
  {
    v46 = 16;
  }

  v47 = 40;
  if (!v4->S.side)
  {
    v47 = 24;
  }

  v48 = 64;
  if (!v4->S.side)
  {
    v48 = 48;
  }

  v49 = 56;
  if (v4->S.side)
  {
    v49 = 72;
  }

  v50 = 96;
  if (!v4->S.side)
  {
    v50 = 80;
  }

  p_FC = &v4->FC;
  v186 = &v4->PB;
  if (height >= 1)
  {
    v51 = 0;
    v180 = v40 / v41;
    v52 = *(&p_FC->FR.minrow + v46) - *(&p_FC->FR.minrow + v49);
    v43 = *(&p_FC->FR.minrow + v47) - *(&p_FC->FR.minrow + v48);
    v184 = v43;
    v53 = (&p_FC->FR.minrow + v50);
    v54 = 0.0;
    v44 = 0.0;
    v55 = 1.0;
    v56 = baseAddress;
    v57 = 0.0;
    *&v43 = v42 / v41;
    v178 = v42 / v41;
    v58 = 0.0;
    do
    {
      v187 = v44;
      if (width >= 1)
      {
        v59 = 0;
        *&v43 = v44 - v184;
        v199 = *v53;
        v195 = v53[1] * *&v43;
        v192 = v53[2];
        v60 = v53[3] * *&v43;
        v61 = 0.0;
        v62 = v56;
        do
        {
          LOBYTE(v43) = *v62;
          v43 = pow((LODWORD(v43) * 0.0039216), 7.0);
          v55 = 1.0;
          *&v43 = v43;
          v63 = v61 - v52;
          *&v43 = sqrtf(((v60 + (v63 * v192)) * (v60 + (v63 * v192))) + ((v195 + (v63 * v199)) * (v195 + (v63 * v199)))) * *&v43;
          v58 = v58 + *&v43;
          v57 = v57 + (v59 * *&v43);
          v54 = v54 + (v51 * *&v43);
          v61 = v61 + 1.0;
          ++v59;
          v62 += samplesPerPixel;
        }

        while (width != v59);
      }

      v44 = v187 + v55;
      ++v51;
      v56 += rowSamples;
    }

    while (v51 != height);
    p_PB = &v4->PB;
    if (v58 > 0.0)
    {
      v200 = v52;
      v64 = 0;
      v65 = v57 / v58;
      v66 = 0.0;
      v67 = v209;
      v68 = v54 / v58;
      do
      {
        v69 = __sincos_stret(v66);
        for (i = 0; i != 10; ++i)
        {
          sinval = v69.__sinval;
          cosval = v69.__cosval;
          v67[i] = bilinearLookup(&v4->PB.S, v65 + (i * cosval), v68 + (i * sinval));
        }

        ++v64;
        v66 = v66 + 0.7854;
        v67 += 10;
      }

      while (v64 != 8);
      if (v182)
      {
        [(RedEyeInspector3 *)v4->inspector getIdentifyingString:v208 settings:p_S];
        printf("%s glint neighborhood\n", v208);
        v74 = 0;
        v75 = v209;
        do
        {
          printf("%d ", v74);
          for (j = 0; j != 10; ++j)
          {
            printf("%3d ", v75[j]);
          }

          putchar(10);
          ++v74;
          v75 += 10;
        }

        while (v74 != 8);
      }

      v77 = 0;
      v78 = -1.0;
      v79 = v209;
      v80 = 256.0;
      v81 = v200;
      do
      {
        v82 = 0;
        v83 = 0.0;
        do
        {
          LOBYTE(v73) = v79[v82];
          v73 = LODWORD(v73);
          v83 = v83 + v73;
          v82 += 10;
        }

        while (v82 != 80);
        v84 = v83 * 0.125;
        if (v84 < v80)
        {
          v80 = v84;
        }

        if (v84 > v78)
        {
          v78 = v84;
        }

        *&v208[4 * v77++] = v84;
        ++v79;
      }

      while (v77 != 10);
      if (v182)
      {
        printf("A ");
        for (k = 0; k != 40; k += 4)
        {
          printf("%3d ", rintf(*&v208[k]));
        }

        putchar(10);
        p_IOD = &v4->S.IOD;
        v87 = v4->S.IOD * 0.025;
        v88 = v80 / v78;
        printf("intensity %5.1f diameter %4.1f falloff %.3f\n", v78, v87, v88);
        putchar(10);
        v81 = v200;
      }

      else
      {
        v88 = v80 / v78;
        p_IOD = &v4->S.IOD;
        v87 = v4->S.IOD * 0.025;
      }

      if (v78 < 121.0 || v88 > 0.28)
      {
        v94 = v180 - v81;
        v95 = v178 - v184;
        v96 = sqrtf((v95 * v95) + (v94 * v94));
        v97 = *p_IOD;
        if (v97 * 0.025 <= v96)
        {
          p_PB = &v4->PB;
          bzero(baseAddress, v4->PB.S.size);
        }

        else
        {
          v98 = 0;
          v43 = v97 * 0.009;
          *&v43 = v43;
          v44 = *&v43;
          if (*&v43 < 1.3)
          {
            *&v43 = 1.3;
          }

          LODWORD(v44) = 0.5;
          p_PB = &v4->PB;
          do
          {
            if (width >= 1)
            {
              v99 = 0;
              v100 = baseAddress;
              do
              {
                v101 = (*&v43 - sqrtf(((v98 - v68) * (v98 - v68)) + ((v99 - v65) * (v99 - v65)))) * 0.5;
                v102 = 1.0;
                if (v101 <= 1.0)
                {
                  v102 = v101;
                  if (v101 < 0.0)
                  {
                    v102 = 0.0;
                  }
                }

                *v100 = rintf(v102 * 255.0);
                ++v99;
                v100 += samplesPerPixel;
              }

              while (width != v99);
            }

            ++v98;
            baseAddress += rowSamples;
          }

          while (v98 != height);
        }
      }

      else
      {
        v89 = 0;
        v44 = (v87 + 2.0) * 0.5;
        *&v44 = v44;
        v43 = *p_IOD * 0.025;
        *&v43 = v43;
        if (*&v43 < 1.3)
        {
          *&v43 = 1.3;
        }

        if (*&v43 >= *&v44)
        {
          *&v43 = *&v44;
        }

        LODWORD(v44) = 0.5;
        p_PB = &v4->PB;
        do
        {
          if (width >= 1)
          {
            v90 = 0;
            v91 = baseAddress;
            do
            {
              v92 = (*&v43 - sqrtf(((v89 - v68) * (v89 - v68)) + ((v90 - v65) * (v90 - v65)))) * 0.5;
              v93 = 1.0;
              if (v92 <= 1.0)
              {
                v93 = v92;
                if (v92 < 0.0)
                {
                  v93 = 0.0;
                }
              }

              *v91 = rintf(v93 * *v91);
              ++v90;
              v91 += samplesPerPixel;
            }

            while (width != v90);
          }

          ++v89;
          baseAddress += rowSamples;
        }

        while (v89 != height);
      }
    }
  }

  v103 = v4->inspector;
  if (v103 && [(RedEyeInspector3 *)v103 BOOLOptionIsOn:1, v43, v44])
  {
    [(RedEyeInspector3 *)v4->inspector saveBitmap:&p_PB->M format:266 faceIndex:v4->S.faceIndex side:v4->S.side name:"5-PROD" which:"M"];
    [(RedEyeInspector3 *)v4->inspector saveBitmap:&p_PB->S format:266 faceIndex:v4->S.faceIndex side:v4->S.side name:"6-SHIN" which:"M"];
  }

  v104 = p_PB->height;
  if (v104 < 1)
  {
    return 56;
  }

  v105 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v110 = p_PB->width;
  v111 = p_PB->M.samplesPerPixel;
  v112 = p_PB->S.samplesPerPixel;
  v113 = 1;
  v114 = p_PB->S.baseAddress;
  v115 = p_PB->M.baseAddress;
  do
  {
    if (v110 >= 1)
    {
      v116 = 0;
      v117 = v114;
      v118 = v115;
      do
      {
        v119 = *v118 | *v117;
        if (v105 <= v106)
        {
          v120 = v106;
        }

        else
        {
          v120 = v105;
        }

        if (v105 >= v108)
        {
          v121 = v108;
        }

        else
        {
          v121 = v105;
        }

        if (v105 < v108)
        {
          v120 = v106;
        }

        if (v116 <= v107)
        {
          v122 = v107;
        }

        else
        {
          v122 = v116;
        }

        if (v116 >= v109)
        {
          v123 = v109;
        }

        else
        {
          v123 = v116;
        }

        if (v116 < v109)
        {
          v122 = v107;
        }

        if (v113)
        {
          v123 = v116;
          v121 = v105;
          v122 = v116;
          v120 = v105;
        }

        if (v119)
        {
          v109 = v123;
        }

        else
        {
          v109 = v109;
        }

        if (v119)
        {
          v108 = v121;
          v107 = v122;
          v106 = v120;
          v113 = 0;
        }

        ++v116;
        v118 += v111;
        v117 += v112;
      }

      while (v110 != v116);
    }

    ++v105;
    v115 += p_PB->M.rowSamples;
    v114 += p_PB->S.rowSamples;
  }

  while (v105 != v104);
  if (v113)
  {
    return 56;
  }

  v190 = p_PB->S.baseAddress;
  v193 = p_PB->M.baseAddress;
  v166 = p_PB->S.rowSamples;
  v167 = p_PB->M.rowSamples;
  v201 = v107 + 1;
  v196 = v106 + 1;
  BitmapRect = makeBitmapRect(v109, v108, (v107 + 1), (v106 + 1));
  v168 = v124;
  termBitmap(&v4->repairMap.baseAddress);
  initBitmap(&v4->repairMap, v201 - v109, v196 - v108, 4, 1, 100.0);
  v125 = v4->repairMap.baseAddress;
  if (!v125)
  {
    return 2;
  }

  v156 = v110;
  v157 = v104;
  v126 = BitmapRect;
  v165 = p_PB->OO.rowSamples;
  v164 = v4->repairMap.rowSamples;
  p_repairMap = &v4->repairMap;
  v179 = v4->repairMap.samplesPerPixel;
  v127 = BitmapRect;
  v197 = p_PB->EP.baseAddress;
  v202 = p_PB->OO.baseAddress;
  v128 = p_PB->EP.rowSamples;
  v183 = p_PB->EP.samplesPerPixel;
  v185 = p_PB->OO.samplesPerPixel;
  avgLuminance = v4->M.avgLuminance;
  [(CIRedEyeRepair3 *)v4 start12BitRandom:75838567];
  if (BitmapRect < SHIDWORD(BitmapRect))
  {
    v181 = v4;
    v172 = 0;
    v174 = 0;
    v130 = (avgLuminance * 0.0000036 * avgLuminance + 0.08) * 255.0;
    v175 = rintf(v130);
    v173 = &v197[v128 * BitmapRect];
    v188 = &v193[v167 * BitmapRect];
    v191 = &v190[v166 * BitmapRect];
    v160 = v111 * v168;
    v159 = v112 * v168;
    v163 = v128;
    v171 = &v202[v185 * v168 + 1 + (v165 * BitmapRect)];
    v131 = v125 + 3;
    v176 = v112;
    v177 = v111;
    do
    {
      v170 = v127;
      v169 = v131;
      if (SHIDWORD(v168) > v168)
      {
        v133 = v159;
        v132 = v160;
        v134 = v171;
        v135 = v183 * v168;
        v136 = HIDWORD(v168) - v168;
        do
        {
          v203 = v136;
          v198 = v188[v132];
          v194 = v191[v133];
          v137 = v198 | (v198 << 8);
          v138 = v194 | (v194 << 8);
          v139 = *(v134 - 1);
          v140 = *v134;
          v141 = v134[1];
          [(CIRedEyeRepair3 *)v181 next12BitRandom];
          *&v142 = v142 * 7.5;
          v143 = rintf(*&v142) + v175;
          if (v143 >= 255)
          {
            v143 = 255;
          }

          v144 = v143 & ~(v143 >> 31);
          v145 = v139 + (((v144 - v139) * v137 + 0x8000) >> 16);
          v146 = v140 + (((v144 - v140) * v137 + 0x8000) >> 16);
          v147 = v141 + (((v144 - v141) * v137 + 0x8000) >> 16);
          *(v131 - 3) = v145 + (((255 - v145) * v138 + 0x8000) >> 16);
          *(v131 - 2) = v146 + (((255 - v146) * v138 + 0x8000) >> 16);
          *(v131 - 1) = v147 + (((255 - v147) * v138 + 0x8000) >> 16);
          *v131 = -1;
          if (v194 | v198)
          {
            if (v173[v135])
            {
              ++v174;
            }

            else
            {
              ++v172;
            }
          }

          p_PB = v186;
          v134 += v185;
          v135 += v183;
          v132 += v177;
          v133 += v176;
          v131 += v179;
          v136 = v203 - 1;
        }

        while (v203 != 1);
      }

      v127 = v170 + 1;
      v188 += v167;
      v191 += v166;
      v173 += v163;
      v171 += v165;
      v131 = &v169[v164];
    }

    while (v170 + 1 != HIDWORD(BitmapRect));
    v4 = v181;
    v126 = BitmapRect;
    if (v174 < v172)
    {
      return 56;
    }
  }

  v148 = v4->inspector;
  if (v148 && [(RedEyeInspector3 *)v148 BOOLOptionIsOn:0])
  {
    initBitmap(&p_PB->P, v156, v157, 4, 1, 100.0);
    v149 = p_PB->P.baseAddress;
    if (v149)
    {
      memmove(v149, p_PB->OO.baseAddress, p_PB->P.size);
      copyBitmapToSliceOfBitmap(p_repairMap, &p_PB->P, v126, v168);
      [(RedEyeInspector3 *)v4->inspector saveBitmap:&p_PB->P format:266 faceIndex:p_S->faceIndex side:p_S->side name:"7-FINL" which:"M"];
      goto LABEL_163;
    }

    return 2;
  }

LABEL_163:
  v150 = 64;
  if (!p_S->side)
  {
    v150 = 48;
  }

  v151 = 72;
  if (!p_S->side)
  {
    v151 = 56;
  }

  v152 = offsetBitmapRect(v126, v168, *(&p_FC->FR.minrow + v151), *(&p_FC->FR.minrow + v150));
  v12 = 0;
  *&v4->repairRect.minrow = offsetBitmapRect(v152, v153, p_FC->FR.mincol, p_FC->FR.minrow);
  *&v4->repairRect.mincol = v154;
  return v12;
}

- (int)repairDictionary:(id *)a3 withEyeIndex:(int)a4
{
  v4 = *&a4;
  v34[1] = *MEMORY[0x1E69E9840];
  v30 = 0;
  v33 = 0;
  v34[0] = 0;
  p_S = &self->S;
  self->S.side = a4;
  [(CIRedEyeRepair3 *)self initBitmaps];
  v8 = [(CIRedEyeRepair3 *)self prepareTransformWithEyeIndex:v4];
  if (v8)
  {
    return v8;
  }

  self->PB.maskRender = 0;
  self->PB.computeGradient = 1;
  self->PB.computeShine = 0;
  self->PB.computeEyePolygon = 0;
  v8 = [(CIRedEyeRepair3 *)self prepareBitmapsWithString:"TI"];
  if (v8)
  {
    return v8;
  }

  v25 = a3;
  v26 = 0;
  v27 = 0;
  v11 = 0;
  v12 = *&self->PB.Tp.a;
  v13 = *&self->PB.Tp.tx;
  *&p_S->transform.c = *&self->PB.Tp.c;
  *&p_S->transform.tx = v13;
  *&p_S->transform.a = v12;
  v14 = &v29;
  p_S->height = self->PB.height;
  v15 = &v33;
  v16 = v31;
  v17 = 1;
  do
  {
    v18 = v17;
    if (v17)
    {
      v19 = 6;
    }

    else
    {
      v19 = 8 * (p_S->IOD < 130.0);
    }

    p_S->edgeFindingChannel = v19;
    v20 = [(CIRedEyeRepair3 *)self prominenceConvexHull:v15 facts:v16, v25];
    *v14 = v20;
    if (v20)
    {
      *v15 = 0;
    }

    else
    {
      ++v11;
      v26 = v16;
      v27 = *v15;
    }

    v17 = 0;
    v14 = &v28;
    v16 = &v32;
    v15 = v34;
  }

  while ((v18 & 1) != 0);
  if (v11 != 1)
  {
    if (!v11)
    {
      return v29;
    }

    v27 = v33;
    [(CIRedEyeRepair3 *)self termHull:v34[0]];
    v26 = v31;
  }

  [(CIRedEyeRepair3 *)self termBitmaps];
  if (!v27)
  {
    return 0;
  }

  scale = p_S->scale;
  if (scale < 1.0)
  {
    v22 = *(v27 + 4);
    if (v22 >= 1)
    {
      v23 = (1.0 / scale);
      v24 = *(v27 + 16);
      do
      {
        *v24 = vmulq_n_f64(*v24, v23);
        ++v24;
        --v22;
      }

      while (v22);
    }
  }

  v9 = [(CIRedEyeRepair3 *)self saveRepairDictionary:&v30 withConvexHull:v27 facts:v26];
  [(CIRedEyeRepair3 *)self termHull:v27];
  if (!v9)
  {
    *v25 = v30;
  }

  return v9;
}

- (int)executeRepairWithRepairDictionary:(id)a3
{
  v28 = 0;
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  if (![(CIRedEyeRepair3 *)self openRepairDictionary:a3 convexHull:&v28 facts:v26])
  {
    return 1;
  }

  p_minrow = &self->FC.FR.minrow;
  initBitmap(&self->faceBitmap, self->FC.FR.maxcol - self->FC.FR.mincol, self->FC.FR.maxrow - self->FC.FR.minrow, 4, 1, 100.0);
  if (self->faceBitmap.baseAddress)
  {
    v5 = offsetBitmapRect(*p_minrow, *&self->FC.FR.mincol, -self->subRectangle.mincol, -self->subRectangle.minrow);
    copySliceOfBitmapToBitmap(&self->fullBitmap, &self->faceBitmap.baseAddress, v5, v6);
    [(CIRedEyeRepair3 *)self initBitmaps];
    v7 = 8;
    if (!self->S.side)
    {
      v7 = 6;
    }

    v8 = 68;
    if (!self->S.side)
    {
      v8 = 52;
    }

    v9 = 9;
    if (!self->S.side)
    {
      v9 = 7;
    }

    v10 = 76;
    if (!self->S.side)
    {
      v10 = 60;
    }

    v11 = *(p_minrow + v8);
    v12 = p_minrow[v9];
    v13 = self->FC.FR.maxrow - self->FC.FR.minrow - v11;
    v14 = v11 - LODWORD(p_minrow[v7]);
    v15 = MEMORY[0x1E695EFD0];
    self->PB.width = (*(p_minrow + v10) - v12);
    self->PB.height = v14;
    v16 = *v15;
    v17 = v15[1];
    *&self->PB.T.a = *v15;
    *&self->PB.T.c = v17;
    v18 = v15[2];
    *&self->PB.T.tx = v18;
    *&v24.a = v16;
    *&v24.c = v17;
    *&v24.tx = v18;
    CGAffineTransformTranslate(&v25, &v24, -v12, -v13);
    v19 = *&v25.c;
    *&self->PB.T.a = *&v25.a;
    *&self->PB.T.c = v19;
    *&self->PB.T.tx = *&v25.tx;
    v20 = *&self->PB.T.c;
    *&v24.a = *&self->PB.T.a;
    *&v24.c = v20;
    *&v24.tx = *&self->PB.T.tx;
    CGAffineTransformInvert(&v25, &v24);
    v21 = *&v25.c;
    *&self->PB.Tp.a = *&v25.a;
    *&self->PB.Tp.c = v21;
    *&self->PB.Tp.tx = *&v25.tx;
    self->S.scale = 1.0;
    self->PB.maskRender = 1;
    self->PB.computeGradient = 0;
    self->PB.computeShine = 1;
    self->PB.computeEyePolygon = 1;
    v22 = [(CIRedEyeRepair3 *)self prepareBitmapsWithString:"MI"];
    if (!v22)
    {
      v22 = [(CIRedEyeRepair3 *)self prepareMasksWithConvexHull:v28];
    }

    [(CIRedEyeRepair3 *)self termBitmaps];
  }

  else
  {
    v22 = 55;
  }

  [(CIRedEyeRepair3 *)self termHull:v28];
  return v22;
}

- (BOOL)gatherFaceStatistics:(id *)a3
{
  p_FS = &self->FS;
  p_faceBitmap = &self->faceBitmap;
  *&v3 = self->S.IOD;
  *&self->FS.variance = [(CIRedEyeRepair3 *)self focusStatsWithBitmap:&self->faceBitmap IOD:v3];
  *&p_FS->nNonZero = v8;
  width = p_faceBitmap->width;
  height = p_faceBitmap->height;
  if (height < 1)
  {
    v21 = 0.0;
    v39 = 0.0;
    v19 = 1000.0;
    v20 = -1000.0;
    v38 = 0.0;
    v37 = 0.0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    samplesPerPixel = p_faceBitmap->samplesPerPixel;
    rowSamples = p_faceBitmap->rowSamples;
    v17 = (p_faceBitmap->baseAddress + 1);
    v18 = 0.0;
    v19 = 1000.0;
    v20 = -1000.0;
    v21 = 0.0;
    do
    {
      if (width >= 1)
      {
        v22 = v17;
        v23 = width;
        do
        {
          v24 = *(v22 - 1);
          v25 = v24;
          v26 = v22[1];
          v27 = *v22;
          v28 = v27 * 0.587 + v26 * 0.299 + v24 * 0.114;
          if (v28 < v19)
          {
            v19 = v28;
          }

          if (v28 > v20)
          {
            v20 = v28;
          }

          if (v26 > 0xFA || v27 > 0xFA || v24 > 0xFAu)
          {
            ++v13;
          }

          if (v27 <= v26)
          {
            v31 = v22[1];
          }

          else
          {
            v31 = *v22;
          }

          if (v27 >= v26)
          {
            v32 = v22[1];
          }

          else
          {
            v32 = *v22;
          }

          if (v31 <= v24)
          {
            v31 = *(v22 - 1);
          }

          if (v32 >= v24)
          {
            v33 = *(v22 - 1);
          }

          else
          {
            v33 = v32;
          }

          v34 = ((v31 - v33) * v26) / 65025.0;
          if (v34 > 0.05)
          {
            ++v12;
            v18 = v18 + v34;
          }

          v21 = v21 + v28;
          if (v26 < 0x8D && v27 < 0x8D && v25 < 0x8D)
          {
            ++v14;
          }

          v22 += samplesPerPixel;
          --v23;
        }

        while (v23);
      }

      ++v11;
      v17 += rowSamples;
    }

    while (v11 != height);
    v37 = v14 * 100.0;
    v38 = v13 * 100.0;
    v39 = 1.0 / v12 * v18;
    if (!v12)
    {
      v39 = 0.0;
    }
  }

  v40 = 1.0 / (height * width);
  self->skinval = v39;
  v41 = v40 * v21;
  a3->var0 = v39;
  a3->var1 = v41;
  a3->var2 = v19;
  a3->var3 = v20;
  v42 = v40 * v37;
  v43 = v40 * v38;
  a3->var4 = v42;
  a3->var5 = v43;
  return 1;
}

- ($000CCD7ED2ADA2E18343834BA3C2DAF0)focusStatsWithBitmap:(id *)a3 IOD:(float)a4
{
  v53 = *MEMORY[0x1E69E9840];
  var0 = a3->var0;
  var2 = a3->var2;
  var3 = a3->var3;
  var6 = a3->var6;
  var1 = a3->var1;
  bzero(v52, 0x800uLL);
  bzero(v51, 0x400uLL);
  if (var2 > 2)
  {
    v9 = 1;
    do
    {
      if (var1 >= 3)
      {
        v10 = var1 - 2;
        v11 = var0;
        do
        {
          v12 = v11[var3 + 1 + var6];
          v13 = v11[var3 + var6 + 1 - var6];
          v14 = v11[2 * var6 + 1 + var3];
          v15 = v11[var3 + var6 + 1 - var3];
          v16 = v11[2 * var3 + 1 + var6];
          ++v51[v12];
          if (v12 <= 0xF0 && v13 <= 0xF0 && v14 <= 0xF0 && v15 <= 0xF0 && v16 <= 0xF0)
          {
            v17 = ((v13 + v14 + v15 + v16 + 2) >> 2) - v12 + 256;
            ++v52[v17];
          }

          v11 += var6;
          --v10;
        }

        while (v10);
      }

      var0 += var3;
    }

    while (v9++ != var2 - 2);
  }

  v19 = 0;
  v20 = xmmword_19CF22EA0;
  v21 = 0uLL;
  v22.i64[0] = 0x400000004;
  v22.i64[1] = 0x400000004;
  v23 = 0uLL;
  do
  {
    v24 = *&v52[v19];
    v21 = vaddq_s32(v24, v21);
    v23 = vmlaq_s32(v23, v24, v20);
    v20 = vaddq_s32(v20, v22);
    v19 += 4;
  }

  while (v19 != 512);
  v25 = 0;
  v26 = vaddvq_s32(v21);
  v27 = vdupq_lane_s64(COERCE__INT64(vaddvq_s32(v23) / v26), 0);
  v28 = xmmword_19CF22EA0;
  v29 = 0.0;
  v30.i64[0] = 0x400000004;
  v30.i64[1] = 0x400000004;
  do
  {
    v31.i64[0] = v28.u32[0];
    v31.i64[1] = v28.u32[1];
    v32 = vcvtq_f64_u64(v31);
    v31.i64[0] = v28.u32[2];
    v31.i64[1] = v28.u32[3];
    v33 = vsubq_f64(vcvtq_f64_u64(v31), v27);
    v34 = vsubq_f64(v32, v27);
    v35 = *&v52[v25];
    v31.i64[0] = v35;
    v31.i64[1] = DWORD1(v35);
    v36 = vcvtq_f64_u64(v31);
    v31.i64[0] = DWORD2(v35);
    v31.i64[1] = HIDWORD(v35);
    v37 = vmulq_f64(vmulq_f64(v33, v33), vcvtq_f64_u64(v31));
    v38 = vmulq_f64(vmulq_f64(v34, v34), v36);
    v29 = v29 + v38.f64[0] + v38.f64[1] + v37.f64[0] + v37.f64[1];
    v28 = vaddq_s32(v28, v30);
    v25 += 4;
  }

  while (v25 != 512);
  v39 = 0;
  v40 = 0;
  do
  {
    if (v52[v39])
    {
      v40 = (v40 + 1) | v40 & 0xFFFFFFFF00000000;
    }

    ++v39;
  }

  while (v39 != 512);
  v41 = (var2 - 3) * (var1 - 3);
  if (v41 < 20)
  {
    v49 = 255;
    v46 = 2;
  }

  else
  {
    v42 = 0;
    v43 = 0;
    v44 = v41 / 20;
    do
    {
      v45 = v42 + 1;
      if (v42 > 0xFE)
      {
        break;
      }

      v43 += v51[v42++];
    }

    while (v43 < v44);
    v46 = 2 - v45;
    v47 = 0;
    v48 = 255;
    do
    {
      v49 = v48 - 1;
      if (!v48)
      {
        break;
      }

      v47 += v51[v48--];
    }

    while (v47 < v44);
  }

  v50 = v29 / v26 / ((v46 + v49) / 255.0);
  result.var1 = v40;
  result.var0 = v50;
  return result;
}

@end