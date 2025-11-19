@interface PKShapeDrawingController
+ (CGMutablePathRef)_createNormalizedPathFromPath:(uint64_t)a1;
+ (uint64_t)hasSnapToShapeEntitlement;
- (CGRect)_addCurrentStrokePoint:(CGFloat)a3;
- (double)_arrowRadiusForStroke:(void *)a1 inputScale:(double)a2;
- (double)aspectRatioAdjustedSizeFromResult:(void *)a1;
- (id).cxx_construct;
- (id)_arrowStrokesWithInputScale:(void *)a3 firstPt:(double)a4 secondPt:(double)a5 radius:(double)a6 averageInputPoint:(double)a7 sourceStroke:(double)a8;
- (id)_generateChatBubble:(void *)a3 sourceStroke:(uint64_t)a4 inputScale:(double)a5 averageInputPoint:;
- (id)_generateCloud:(void *)a3 sourceStroke:(uint64_t)a4 inputScale:(double)a5 averageInputPoint:;
- (id)_generateHeart:(void *)a3 sourceStroke:(uint64_t)a4 inputScale:(double)a5 averageInputPoint:;
- (id)_generateLine:(void *)a3 sourceStroke:(uint64_t)a4 inputScale:(uint64_t *)a5 averageInputPoint:(double)a6 shapeTypeOut:;
- (id)_generateManhattanLine:(void *)a3 sourceStroke:(uint64_t)a4 inputScale:(double)a5 averageInputPoint:;
- (id)_generateOutlineArrow:(void *)a3 sourceStroke:(uint64_t)a4 inputScale:(double)a5 averageInputPoint:;
- (id)_generateOval:(void *)a3 sourceStroke:(uint64_t)a4 inputScale:(double)a5 averageInputPoint:;
- (id)_generatePentagon:(void *)a3 sourceStroke:(uint64_t)a4 inputScale:(double)a5 averageInputPoint:;
- (id)_generateRectangle:(void *)a3 sourceStroke:(uint64_t)a4 inputScale:(double)a5 averageInputPoint:;
- (id)_generateStar:(void *)a3 sourceStroke:(uint64_t)a4 inputScale:(double)a5 averageInputPoint:;
- (id)_generateTriangle:(void *)a3 sourceStroke:(uint64_t)a4 inputScale:(double)a5 averageInputPoint:;
- (id)_strokeFromPoints:(uint64_t)a3 inputScale:(void *)a4 averageInputPoint:(double)a5 sourceStroke:;
- (id)detectedShapeWithInputScale:(void *)a3 averageInputPoint:(void *)a4 allowedShapeTypes:(double)a5 createCurrentStrokeBlock:;
- (id)shapeFromStroke:(__int128 *)a3 inputScale:(void *)a4 averageInputPoint:(double)a5 allowedShapeTypes:;
- (uint64_t)_shapeTypeFromResultName:(uint64_t)a1;
- (uint64_t)hasMovementStopped;
- (uint64_t)isScratchOutActive;
- (void)_addAngles:(void *)result;
- (void)_checkDetectedStroke;
- (void)addStrokePoint:(CGFloat)a3 inputPoint:(CGFloat)a4;
- (void)beginStrokeAtPoint:(CGFloat)a3;
- (void)initWithDelegate:(void *)a1;
- (void)resetStroke;
- (void)setDetectedShape:(uint64_t)a1;
@end

@implementation PKShapeDrawingController

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  return self;
}

- (void)initWithDelegate:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v26.receiver = a1;
    v26.super_class = PKShapeDrawingController;
    v4 = objc_msgSendSuper2(&v26, sel_init);
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 25, v3);
      if (0xAAAAAAAAAAAAAAABLL * ((a1[11] - a1[9]) >> 3) <= 9)
      {
        operator new();
      }

      a1[20] = 0x3FC999999999999ALL;
      v5 = objc_alloc_init(PKAveragePointGenerator);
      v6 = a1[15];
      a1[15] = v5;

      v7 = objc_opt_class();
      v8 = [MEMORY[0x1E695E000] standardUserDefaults];
      v9 = [v8 objectForKey:@"internalSettings.shapeRecognition.minimumDelay"];
      v10 = PKDynamicCast(v7, v9);

      if (v10)
      {
        [v10 doubleValue];
        if (v11 > 0.0)
        {
          [v10 doubleValue];
          a1[20] = v12;
        }
      }

      a1[21] = 0x3FE6666666666666;
      v13 = objc_opt_class();
      v14 = [MEMORY[0x1E695E000] standardUserDefaults];
      v15 = [v14 objectForKey:@"internalSettings.shapeRecognition.maximumDelay"];
      v16 = PKDynamicCast(v13, v15);

      if (v16)
      {
        [v16 doubleValue];
        if (v17 > 0.0)
        {
          [v16 doubleValue];
          a1[21] = v18;
        }
      }

      a1[22] = 0x3FD3333333333333;
      v19 = objc_opt_class();
      v20 = [MEMORY[0x1E695E000] standardUserDefaults];
      v21 = [v20 objectForKey:@"internalSettings.shapeRecognition.maximumFastDelay"];
      v22 = PKDynamicCast(v19, v21);

      if (v22)
      {
        [v22 doubleValue];
        if (v23 > 0.0)
        {
          [v22 doubleValue];
          a1[22] = v24;
        }
      }
    }
  }

  return a1;
}

- (uint64_t)isScratchOutActive
{
  WeakRetained = objc_loadWeakRetained((a1 + 200));
  v2 = objc_opt_respondsToSelector();

  return v2 & 1;
}

+ (CGMutablePathRef)_createNormalizedPathFromPath:(uint64_t)a1
{
  objc_opt_self();
  BoundingBox = CGPathGetBoundingBox(a2);
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  memset(&transform, 0, sizeof(transform));
  CGAffineTransformMakeTranslation(&t1, -BoundingBox.origin.x, -BoundingBox.origin.y);
  CGAffineTransformMakeScale(&v6, 1.0 / width, 1.0 / height);
  CGAffineTransformConcat(&transform, &t1, &v6);
  return CGPathCreateMutableCopyByTransformingPath(a2, &transform);
}

void __48__PKShapeDrawingController__normalizedHeartPath__block_invoke()
{
  v36[6] = *MEMORY[0x1E69E9840];
  v0 = @"M 76.9531 23.4375 C 78.1738 23.4375 79.8828 22.6562 81.1035 21.875 C 116.016 -0.634766 138.77 -26.6113 138.77 -53.125 C 138.77 -74.9023 123.779 -90.4297 104.199 -90.4297 C 92.2363 -90.4297 82.4707 -83.6914 76.9531 -73.3398 C 71.4844 -83.6426 61.7188 -90.4297 49.707 -90.4297 C 30.127 -90.4297 15.1367 -74.9023 15.1367 -53.125 C 15.1367 -26.6113 37.8906 -0.634766 72.8516 21.875 C 74.0723 22.6562 75.7812 23.4375 76.9531 23.4375 Z";
  v34 = objc_opt_self();
  Mutable = CGPathCreateMutable();
  v2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v3 = [@"M 76.9531 23.4375 C 78.1738 23.4375 79.8828 22.6562 81.1035 21.875 C 116.016 -0.634766 138.77 -26.6113 138.77 -53.125 C 138.77 -74.9023 123.779 -90.4297 104.199 -90.4297 C 92.2363 -90.4297 82.4707 -83.6914 76.9531 -73.3398 C 71.4844 -83.6426 61.7188 -90.4297 49.707 -90.4297 C 30.127 -90.4297 15.1367 -74.9023 15.1367 -53.125 C 15.1367 -26.6113 37.8906 -0.634766 72.8516 21.875 C 74.0723 22.6562 75.7812 23.4375 76.9531 23.4375 Z" componentsSeparatedByCharactersInSet:v2];

  v4 = [v3 count];
  v5 = v4;
  if (v4)
  {
    v6 = 0;
    v7 = v4 - 2;
    v8 = @"L";
    v35 = v4 - 6;
    while (1)
    {
      v9 = [v3 objectAtIndexedSubscript:v6];
      v10 = [v9 isEqualToString:@"M"];
      v11 = v6 + 1;
      v12 = v6 + 1 < v7 ? v10 : 0;
      if (v12 == 1)
      {
        break;
      }

      v19 = [v9 isEqualToString:v8];
      if (v11 < v7)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      if (v20 == 1)
      {
        v21 = [v3 objectAtIndexedSubscript:v6 + 1];
        [v21 doubleValue];
        v23 = v22;

        v24 = [v3 objectAtIndexedSubscript:v6 + 2];
        [v24 doubleValue];
        v26 = v25;

        CGPathAddLineToPoint(Mutable, 0, v23, v26);
        goto LABEL_13;
      }

      v27 = [v9 isEqualToString:@"C"];
      if (v11 < v35)
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      if (v28 == 1)
      {
        v29 = v8;
        for (i = 0; i != 6; ++i)
        {
          v31 = [v3 objectAtIndexedSubscript:v11];
          [v31 doubleValue];
          v36[i] = v32;

          ++v11;
        }

        CGPathAddCurveToPoint(Mutable, 0, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5]);
        v8 = v29;
      }

      else if ([v9 isEqualToString:@"Z"])
      {
        CGPathCloseSubpath(Mutable);

        goto LABEL_25;
      }

LABEL_14:

      v6 = v11;
      if (v11 >= v5)
      {
        goto LABEL_25;
      }
    }

    v13 = [v3 objectAtIndexedSubscript:v6 + 1];
    [v13 doubleValue];
    v15 = v14;

    v16 = [v3 objectAtIndexedSubscript:v6 + 2];
    [v16 doubleValue];
    v18 = v17;

    CGPathMoveToPoint(Mutable, 0, v15, v18);
LABEL_13:
    v11 = v6 + 3;
    goto LABEL_14;
  }

LABEL_25:
  v33 = [(PKShapeDrawingController *)v34 _createNormalizedPathFromPath:?];
  CGPathRelease(Mutable);

  qword_1ED6A5448 = v33;
}

- (double)_arrowRadiusForStroke:(void *)a1 inputScale:(double)a2
{
  v3 = a1;
  v4 = [v3 path];
  v5 = [v4 count];
  if (v5)
  {
    v6 = 0;
    v7 = 0.0;
    do
    {
      [v4 radiusAtIndex:v6];
      v7 = v7 + v8;
      ++v6;
    }

    while (v5 != v6);
    v9 = v7 / v5 + 5.0;
  }

  else
  {
    v9 = 10.0;
  }

  return v9 * a2;
}

void __48__PKShapeDrawingController_shapeRecognizerQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.pencilkit.shapeRecognizer", attr);
  v2 = qword_1ED6A5458;
  qword_1ED6A5458 = v1;
}

void __43__PKShapeDrawingController_shapeRecognizer__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E6997B80]) initWithMode:3 locale:0];
  v1 = [v0 characterSetForStrings:&unk_1F47C1E80];
  [v0 setActiveCharacterSet:v1];

  [v0 setMaxRecognitionResultCount:3];
  [v0 setMinimumDrawingSize:{0.0, 0.0}];
  v2 = qword_1ED6A5468;
  qword_1ED6A5468 = v0;
}

void __57__PKShapeDrawingController_recognitionResultsForDrawing___block_invoke(void *a1)
{
  if (a1[4])
  {
    if (qword_1ED6A5470 != -1)
    {
      dispatch_once(&qword_1ED6A5470, &__block_literal_global_24);
    }

    v2 = qword_1ED6A5468;
  }

  else
  {
    v2 = 0;
  }

  v6 = v2;
  v3 = [v2 recognitionResultsForDrawing:a1[5] options:0];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __49__PKShapeDrawingController__chDrawingFromStroke___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) addPoint:?];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

- (id)_arrowStrokesWithInputScale:(void *)a3 firstPt:(double)a4 secondPt:(double)a5 radius:(double)a6 averageInputPoint:(double)a7 sourceStroke:(double)a8
{
  v56[2] = *MEMORY[0x1E69E9840];
  *&v55 = a5;
  *(&v55 + 1) = a6;
  v17 = a3;
  v18 = 1.0 / sqrt((a8 - a6) * (a8 - a6) + (a7 - a5) * (a7 - a5));
  v19 = (a7 - a5) * v18;
  v20 = (a8 - a6) * v18;
  v21 = a5 + (a9 + a9) * v19;
  v22 = a6 + (a9 + a9) * v20;
  v23 = v20 * a9;
  v24 = -(v19 * a9);
  *&v54 = v20 * a9 + v21;
  *(&v54 + 1) = v22 - v19 * a9;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  std::vector<CGPoint>::push_back[abi:ne200100](&v51, &v54);
  std::vector<CGPoint>::push_back[abi:ne200100](&v51, &v55);
  __p = 0;
  v49 = 0;
  v50 = 0;
  PKPointsFromLineSegments(&v51, &__p, a4 * 6.0);
  v25 = a2[7];
  v45 = a2[6];
  v46 = v25;
  v47 = *(a2 + 16);
  v26 = a2[3];
  v41 = a2[2];
  v42 = v26;
  v27 = a2[5];
  v43 = a2[4];
  v44 = v27;
  v28 = a2[1];
  v39 = *a2;
  v40 = v28;
  v29 = [(PKShapeDrawingController *)a1 _strokeFromPoints:&v39 inputScale:v17 averageInputPoint:a4 sourceStroke:?];
  v30 = v51;
  *v51 = v21 - v23;
  v30[1] = v22 - v24;
  std::vector<CGPoint>::resize(&__p, 0);
  PKPointsFromLineSegments(&v51, &__p, a4 * 6.0);
  v31 = a2[7];
  v45 = a2[6];
  v46 = v31;
  v47 = *(a2 + 16);
  v32 = a2[3];
  v41 = a2[2];
  v42 = v32;
  v33 = a2[5];
  v43 = a2[4];
  v44 = v33;
  v34 = a2[1];
  v39 = *a2;
  v40 = v34;
  v35 = [(PKShapeDrawingController *)a1 _strokeFromPoints:&v39 inputScale:v17 averageInputPoint:a4 sourceStroke:?];
  v36 = v35;
  v37 = 0;
  if (v29 && v35)
  {
    v56[0] = v29;
    v56[1] = v35;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
  }

  if (__p)
  {
    v49 = __p;
    operator delete(__p);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  return v37;
}

- (id)_strokeFromPoints:(uint64_t)a3 inputScale:(void *)a4 averageInputPoint:(double)a5 sourceStroke:
{
  v85 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = v9;
  if (a2[1] == *a2)
  {
    v18 = 0;
  }

  else
  {
    v11 = *(a1 + 152);
    v12 = [v9 path];
    v13 = [v12 count];

    if (v13)
    {
      v14 = [v10 ink];
      v15 = [v14 identifier];
      v16 = [v15 isEqualToString:@"com.apple.ink.fountainpen"];

      v17 = v16 ^ 1;
    }

    else
    {
      v17 = 0;
    }

    v19 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v10 ink];
      v21 = [v20 identifier];
      v22 = [v10 ink];
      [v22 _weight];
      v24 = v23;
      v25 = [v10 ink];
      *buf = 138412802;
      *&buf[4] = v21;
      *&buf[12] = 2048;
      *&buf[14] = v24;
      *&buf[22] = 1024;
      *&buf[24] = [v25 _weightIsUndefined];
      _os_log_impl(&dword_1C7CCA000, v19, OS_LOG_TYPE_INFO, "Generating shape with ink: %@, weight: %g, undefined: %d", buf, 0x1Cu);
    }

    v26 = fmax(v11, 0.1);
    if (v17)
    {
      v27 = objc_alloc_init(PKAveragePointGenerator);
      [(PKAveragePointGenerator *)v27 addStroke:v10];
      memset(buf, 0, sizeof(buf));
      [(PKAveragePointGenerator *)v27 currentStrokePoint];
      v29 = *a2;
      v28 = a2[1];
      v30 = (v28 - *a2) >> 4;
      std::vector<PKCompressedStrokePoint>::vector[abi:ne200100](&__p, v30);
      [v10 timestamp];
      v32 = v31;
      if (v28 != v29)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = v26 / v30;
        if (v30 <= 1)
        {
          v30 = 1;
        }

        do
        {
          *&v73[8] = *&(*a2)[v33];
          *v73 = v32 + v36 * v35;
          *&v73[40] = *&buf[40];
          v74 = *&buf[56];
          v75 = *&buf[72];
          v76 = *&buf[88];
          *&v73[24] = *&buf[24];
          PKCompressStrokePoint(v73, v32, v77);
          v37 = (__p + v34);
          v38 = v77[1];
          *v37 = v77[0];
          v37[1] = v38;
          v37[2].i32[0] = v78;
          ++v35;
          v34 += 36;
          v33 += 2;
        }

        while (v30 != v35);
      }

      v39 = [PKStrokePath alloc];
      v40 = __p;
      v41 = v80;
      v42 = [v10 _inputType];
      v43 = [MEMORY[0x1E696AFB0] UUID];
      v44 = [(PKStrokePath *)v39 initWithPoints:v40 count:0x8E38E38E38E38E39 * ((v41 - v40) >> 2) immutableCount:0x8E38E38E38E38E39 * ((v41 - v40) >> 2) inputType:v42 timestamp:v43 UUID:v32];

      v45 = objc_alloc(objc_opt_class());
      v46 = [v10 ink];
      v47 = *(MEMORY[0x1E695EFD0] + 16);
      *v73 = *MEMORY[0x1E695EFD0];
      *&v73[16] = v47;
      *&v73[32] = *(MEMORY[0x1E695EFD0] + 32);
      v18 = [v45 initWithInk:v46 strokePath:v44 transform:v73 mask:0];

      if (__p)
      {
        v80 = __p;
        operator delete(__p);
      }
    }

    else
    {
      v27 = [[PKStrokeGenerator alloc] initWithStrokeNoiseSmoothing:0];
      WeakRetained = objc_loadWeakRetained((a1 + 200));
      v49 = objc_opt_respondsToSelector();

      if (v49)
      {
        v50 = objc_loadWeakRetained((a1 + 200));
        v51 = [v50 shapeDrawingControllerMaximumSupportedContentVersion:a1];
      }

      else
      {
        v51 = 4;
      }

      v52 = [v10 ink];
      [(PKAveragePointGenerator *)v27 setupForInk:v52 maximumSupportedContentVersion:v51];

      [(PKAveragePointGenerator *)v27 setAdditionalRollAngle:0.0];
      *(a3 + 112) = 0;
      if (v10)
      {
        v53 = [v10 path];
        v54 = [v53 count];
        if (v54)
        {
          v55 = 0;
          v56 = 0.0;
          do
          {
            v57 = 0.0;
            memset(buf, 0, sizeof(buf));
            if (v53)
            {
              [v53 decompressedPointAt:v55];
              v57 = *&buf[56];
            }

            if (v55)
            {
              DKDMixAnglesInRadians(v56, v57, 1.0 / (v55 + 1));
              v57 = v58;
            }

            ++v55;
            v56 = v57;
          }

          while (v54 != v55);
        }

        else
        {
          v57 = 0.0;
        }

        *(a3 + 24) = v57;
      }

      v59 = *a2;
      v60 = ((a2[1] - *a2) >> 4) - 1;
      if ((a2[1] - *a2) >> 4 == 1)
      {
        v64 = 0.0;
      }

      else
      {
        v63 = *v59;
        v62 = v59[1];
        v61 = v59 + 3;
        v64 = 0.0;
        do
        {
          v65 = *(v61 - 1);
          v66 = *v61;
          v64 = v64 + sqrt((v62 - *v61) * (v62 - *v61) + (v63 - v65) * (v63 - v65));
          v61 += 2;
          v62 = v66;
          v63 = v65;
          --v60;
        }

        while (v60);
      }

      *(a3 + 40) = v64 / (v26 * a5);
      v67 = *(a3 + 112);
      v82 = *(a3 + 96);
      v83 = v67;
      v84 = *(a3 + 128);
      v68 = *(a3 + 48);
      *&buf[32] = *(a3 + 32);
      *&buf[48] = v68;
      v69 = *(a3 + 80);
      *&buf[64] = *(a3 + 64);
      *&buf[80] = v69;
      v70 = *(a3 + 16);
      *buf = *a3;
      *&buf[16] = v70;
      v18 = [(PKAveragePointGenerator *)v27 strokeFromPoints:a2 sourceStroke:v10 inputScale:buf averageInputPoint:a5];
    }

    v71 = [v10 _clipPlane];
    [v18 _setClipPlane:v71];
  }

  return v18;
}

- (id)_generateLine:(void *)a3 sourceStroke:(uint64_t)a4 inputScale:(uint64_t *)a5 averageInputPoint:(double)a6 shapeTypeOut:
{
  v11 = a2;
  v12 = a3;
  __p = 0;
  v62 = 0;
  v63 = 0;
  [v11 startLocation];
  v14 = v13;
  v16 = v15;
  [v11 endLocation];
  v18 = v17;
  v20 = v19;
  v21 = [MEMORY[0x1E695DF70] array];
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, v14, v16);
  [v11 controlPoint];
  v24 = v23;
  [v11 controlPoint];
  CGPathAddQuadCurveToPoint(Mutable, 0, v24, v25, v18, v20);
  PKPointsFromPath(Mutable, &__p, a6 * 6.0, a6 * 0.1);
  CGPathRelease(Mutable);
  v26 = *(a4 + 112);
  v58 = *(a4 + 96);
  v59 = v26;
  v60 = *(a4 + 128);
  v27 = *(a4 + 48);
  v54 = *(a4 + 32);
  v55 = v27;
  v28 = *(a4 + 80);
  v56 = *(a4 + 64);
  v57 = v28;
  v29 = *(a4 + 16);
  v52 = *a4;
  v53 = v29;
  v30 = [(PKShapeDrawingController *)a1 _strokeFromPoints:&v52 inputScale:v12 averageInputPoint:a6 sourceStroke:?];
  if (v30)
  {
    [v21 addObject:v30];
  }

  if ([v11 startEndpointType] == 1)
  {
    v31 = [PKShapeDrawingController _arrowRadiusForStroke:v12 inputScale:a6];
    [v11 controlPoint];
    v33 = v32;
    v35 = v34;
    v36 = *(a4 + 112);
    v58 = *(a4 + 96);
    v59 = v36;
    v60 = *(a4 + 128);
    v37 = *(a4 + 48);
    v54 = *(a4 + 32);
    v55 = v37;
    v38 = *(a4 + 80);
    v56 = *(a4 + 64);
    v57 = v38;
    v39 = *(a4 + 16);
    v52 = *a4;
    v53 = v39;
    v40 = [(PKShapeDrawingController *)a1 _arrowStrokesWithInputScale:v12 firstPt:a6 secondPt:v14 radius:v16 averageInputPoint:v33 sourceStroke:v35, v31];
    [v21 addObjectsFromArray:v40];

    v41 = 5;
  }

  else
  {
    v31 = 0.0;
    v41 = 6;
  }

  if ([v11 endEndpointType] == 1)
  {
    if (v31 == 0.0)
    {
      v31 = [PKShapeDrawingController _arrowRadiusForStroke:v12 inputScale:a6];
    }

    [v11 controlPoint];
    v43 = v42;
    v45 = v44;
    v46 = *(a4 + 112);
    v58 = *(a4 + 96);
    v59 = v46;
    v60 = *(a4 + 128);
    v47 = *(a4 + 48);
    v54 = *(a4 + 32);
    v55 = v47;
    v48 = *(a4 + 80);
    v56 = *(a4 + 64);
    v57 = v48;
    v49 = *(a4 + 16);
    v52 = *a4;
    v53 = v49;
    v50 = [(PKShapeDrawingController *)a1 _arrowStrokesWithInputScale:v12 firstPt:a6 secondPt:v18 radius:v20 averageInputPoint:v43 sourceStroke:v45, v31];
    [v21 addObjectsFromArray:v50];

    v41 = 5;
  }

  if (a5)
  {
    *a5 = v41;
  }

  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }

  return v21;
}

- (double)aspectRatioAdjustedSizeFromResult:(void *)a1
{
  v1 = a1;
  [v1 size];
  if (v2 <= 0.0 || v3 <= 0.0)
  {
    v5 = *MEMORY[0x1E695F060];
  }

  else
  {
    v4 = 1.0;
    if (v2 / v3 >= 1.0)
    {
      v4 = v2 / v3;
      if (v2 / v3 > 1.0)
      {
        v4 = 1.0;
      }
    }

    v5 = (v2 + v3) * 0.5 * v4;
  }

  return v5;
}

- (id)_generatePentagon:(void *)a3 sourceStroke:(uint64_t)a4 inputScale:(double)a5 averageInputPoint:
{
  v50[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v12 = [PKShapeDrawingController aspectRatioAdjustedSizeFromResult:v9];
  v13 = 0;
  if (v12 > 0.0)
  {
    v14 = v11;
    if (v11 > 0.0)
    {
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      [v9 center];
      v37 = v16;
      v38 = v15;
      memset(&v43, 0, sizeof(v43));
      [v9 rotation];
      CGAffineTransformMakeRotation(&v43, v17 * 3.14159265 / 180.0);
      v18.f64[0] = v38;
      v18.f64[1] = v37;
      v39 = v18;
      v19 = 5;
      v20 = 2.19911486;
      do
      {
        v21 = __sincos_stret(v20);
        v40[0] = vaddq_f64(v39, vaddq_f64(*&v43.tx, vmlaq_n_f64(vmulq_n_f64(*&v43.c, v14 * v21.__sinval * 0.5), *&v43.a, v12 * v21.__cosval * 0.5)));
        std::vector<CGPoint>::push_back[abi:ne200100](&v44, v40);
        v20 = v20 + 1.25663706;
        --v19;
      }

      while (v19);
      __asm { FMOV            V2.2D, #0.5 }

      v42 = vmlaq_f64(vmulq_f64(v45[-1], _Q2), _Q2, *v44);
      std::vector<CGPoint>::insert(&v44, v44, &v42);
      std::vector<CGPoint>::push_back[abi:ne200100](&v44, &v42);
      PKPointsFromLineSegments(&v44, &v47, a5 * 6.0);
      if ([v10 _pathHasClockwisePointOrdering])
      {
        if (v47 != v48)
        {
          v27 = v48 - 2;
          if (v48 - 2 > v47)
          {
            v28 = v47 + 2;
            do
            {
              v29 = *(v28 - 1);
              *(v28 - 1) = *v27;
              *v27 = v29;
              v27 -= 2;
              _CF = v28 >= v27;
              v28 += 2;
            }

            while (!_CF);
          }
        }
      }

      v30 = *(a4 + 112);
      v40[6] = *(a4 + 96);
      v40[7] = v30;
      v41 = *(a4 + 128);
      v31 = *(a4 + 48);
      v40[2] = *(a4 + 32);
      v40[3] = v31;
      v32 = *(a4 + 80);
      v40[4] = *(a4 + 64);
      v40[5] = v32;
      v33 = *(a4 + 16);
      v40[0] = *a4;
      v40[1] = v33;
      v34 = [(PKShapeDrawingController *)a1 _strokeFromPoints:v40 inputScale:v10 averageInputPoint:a5 sourceStroke:?];
      v35 = v34;
      if (v34)
      {
        v50[0] = v34;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
      }

      else
      {
        v13 = 0;
      }

      if (v44)
      {
        v45 = v44;
        operator delete(v44);
      }

      if (v47)
      {
        v48 = v47;
        operator delete(v47);
      }
    }
  }

  return v13;
}

- (id)_generateRectangle:(void *)a3 sourceStroke:(uint64_t)a4 inputScale:(double)a5 averageInputPoint:
{
  v51[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  [v9 lowerLeftPoint];
  v36 = v12;
  v37 = v11;
  *&v44 = v11;
  *(&v44 + 1) = v12;
  [v9 lowerRightPoint];
  *&v43 = v13.f64[0];
  *(&v43 + 1) = v14;
  v13.f64[1] = v14;
  v15.f64[0] = v37;
  v15.f64[1] = v36;
  __asm { FMOV            V1.2D, #0.5 }

  v42 = vaddq_f64(v15, vmulq_f64(vsubq_f64(v13, v15), _Q1));
  [v9 upperRightPoint];
  *&v41 = v21;
  *(&v41 + 1) = v22;
  [v9 upperLeftPoint];
  *&v40 = v23;
  *(&v40 + 1) = v24;
  std::vector<CGPoint>::push_back[abi:ne200100](&v45, &v42);
  std::vector<CGPoint>::push_back[abi:ne200100](&v45, &v43);
  std::vector<CGPoint>::push_back[abi:ne200100](&v45, &v41);
  std::vector<CGPoint>::push_back[abi:ne200100](&v45, &v40);
  std::vector<CGPoint>::push_back[abi:ne200100](&v45, &v44);
  std::vector<CGPoint>::push_back[abi:ne200100](&v45, &v42);
  PKPointsFromLineSegments(&v45, &v48, a5 * 6.0);
  if ([v10 _pathHasClockwisePointOrdering])
  {
    if (v48 != v49)
    {
      v25 = v49 - 2;
      if (v49 - 2 > v48)
      {
        v26 = v48 + 2;
        do
        {
          v27 = *(v26 - 1);
          *(v26 - 1) = *v25;
          *v25 = v27;
          v25 -= 2;
          _CF = v26 >= v25;
          v26 += 2;
        }

        while (!_CF);
      }
    }
  }

  v28 = *(a4 + 112);
  v38[6] = *(a4 + 96);
  v38[7] = v28;
  v39 = *(a4 + 128);
  v29 = *(a4 + 48);
  v38[2] = *(a4 + 32);
  v38[3] = v29;
  v30 = *(a4 + 80);
  v38[4] = *(a4 + 64);
  v38[5] = v30;
  v31 = *(a4 + 16);
  v38[0] = *a4;
  v38[1] = v31;
  v32 = [(PKShapeDrawingController *)a1 _strokeFromPoints:v38 inputScale:v10 averageInputPoint:a5 sourceStroke:?];
  v33 = v32;
  if (v32)
  {
    v51[0] = v32;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
  }

  else
  {
    v34 = 0;
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  return v34;
}

- (id)_generateOutlineArrow:(void *)a3 sourceStroke:(uint64_t)a4 inputScale:(double)a5 averageInputPoint:
{
  v54[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  [v9 size];
  v13 = v12;
  v14 = 0;
  if (v12 > 0.0)
  {
    v15 = v11;
    if (v11 > 0.0)
    {
      v51 = 0;
      v52 = 0;
      v53 = 0;
      [v9 rotation];
      v17 = v16;
      [v9 center];
      v19 = v18;
      v21 = v20;
      [v9 controlPoint];
      x = v22;
      v41 = v23;
      v24 = *(MEMORY[0x1E695EFD0] + 16);
      *&m.a = *MEMORY[0x1E695EFD0];
      *&m.c = v24;
      *&m.tx = *(MEMORY[0x1E695EFD0] + 32);
      *&v42.a = *&m.a;
      *&v42.c = v24;
      *&v42.tx = *&m.tx;
      CGAffineTransformTranslate(&m, &v42, v19, v21);
      v49 = m;
      CGAffineTransformRotate(&v42, &v49, v17 * -3.14159265 / 180.0);
      m = v42;
      v49 = v42;
      CGAffineTransformTranslate(&v42, &v49, -v19, -v21);
      m = v42;
      Mutable = CGPathCreateMutable();
      v39 = a5;
      v26 = v19 - v13 * 0.5;
      v27 = v15 * 0.5;
      v28 = v21 - v15 * 0.5;
      v56.origin.x = v26;
      v56.origin.y = v28;
      v56.size.width = v13;
      v56.size.height = v15;
      v29 = CGRectGetMaxY(v56) - v41;
      v30 = v15 + v29 * -2.0;
      v31 = v28 + v29 + v30 * 0.5;
      CGPathMoveToPoint(Mutable, &m, v26, v31);
      CGPathAddLineToPoint(Mutable, &m, v26, v30 * 0.5 + v31);
      CGPathAddLineToPoint(Mutable, &m, x, v41);
      CGPathAddLineToPoint(Mutable, &m, x, v41 - (v29 + v30));
      CGPathAddLineToPoint(Mutable, &m, v13 + v26, v27 + v28);
      CGPathAddLineToPoint(Mutable, &m, x, v41 + v29);
      CGPathAddLineToPoint(Mutable, &m, x, v41 - v30);
      CGPathAddLineToPoint(Mutable, &m, v26, v28 + v29);
      CGPathCloseSubpath(Mutable);
      PKPointsFromPath(Mutable, &v51, v39 * 6.0, v39 * 0.1);
      CGPathRelease(Mutable);
      v32 = *(a4 + 112);
      v46 = *(a4 + 96);
      v47 = v32;
      v48 = *(a4 + 128);
      v33 = *(a4 + 48);
      *&v42.tx = *(a4 + 32);
      v43 = v33;
      v34 = *(a4 + 80);
      v44 = *(a4 + 64);
      v45 = v34;
      v35 = *(a4 + 16);
      *&v42.a = *a4;
      *&v42.c = v35;
      v36 = [(PKShapeDrawingController *)a1 _strokeFromPoints:&v42 inputScale:v10 averageInputPoint:v39 sourceStroke:?];
      v37 = v36;
      if (v36)
      {
        v54[0] = v36;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
      }

      else
      {
        v14 = 0;
      }

      if (v51)
      {
        v52 = v51;
        operator delete(v51);
      }
    }
  }

  return v14;
}

- (id)_generateTriangle:(void *)a3 sourceStroke:(uint64_t)a4 inputScale:(double)a5 averageInputPoint:
{
  v51[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  [v9 vertex1];
  v37 = v12;
  v38 = v11;
  *&v44 = v11;
  *(&v44 + 1) = v12;
  [v9 vertex2];
  v35 = v14;
  v36 = v13;
  *&v43 = v13;
  *(&v43 + 1) = v14;
  [v9 vertex3];
  v15.f64[0] = v36;
  v15.f64[1] = v35;
  v16.f64[0] = v38;
  v16.f64[1] = v37;
  *&v42 = v17;
  *(&v42 + 1) = v18;
  __asm { FMOV            V1.2D, #0.5 }

  v41 = vaddq_f64(v16, vmulq_f64(vsubq_f64(v15, v16), _Q1));
  std::vector<CGPoint>::push_back[abi:ne200100](&v45, &v41);
  std::vector<CGPoint>::push_back[abi:ne200100](&v45, &v43);
  std::vector<CGPoint>::push_back[abi:ne200100](&v45, &v42);
  std::vector<CGPoint>::push_back[abi:ne200100](&v45, &v44);
  std::vector<CGPoint>::push_back[abi:ne200100](&v45, &v41);
  PKPointsFromLineSegments(&v45, &v48, a5 * 6.0);
  if ([v10 _pathHasClockwisePointOrdering])
  {
    if (v48 != v49)
    {
      v24 = v49 - 2;
      if (v49 - 2 > v48)
      {
        v25 = v48 + 2;
        do
        {
          v26 = *(v25 - 1);
          *(v25 - 1) = *v24;
          *v24 = v26;
          v24 -= 2;
          _CF = v25 >= v24;
          v25 += 2;
        }

        while (!_CF);
      }
    }
  }

  v27 = *(a4 + 112);
  v39[6] = *(a4 + 96);
  v39[7] = v27;
  v40 = *(a4 + 128);
  v28 = *(a4 + 48);
  v39[2] = *(a4 + 32);
  v39[3] = v28;
  v29 = *(a4 + 80);
  v39[4] = *(a4 + 64);
  v39[5] = v29;
  v30 = *(a4 + 16);
  v39[0] = *a4;
  v39[1] = v30;
  v31 = [(PKShapeDrawingController *)a1 _strokeFromPoints:v39 inputScale:v10 averageInputPoint:a5 sourceStroke:?];
  v32 = v31;
  if (v31)
  {
    v51[0] = v31;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
  }

  else
  {
    v33 = 0;
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  return v33;
}

- (id)_generateManhattanLine:(void *)a3 sourceStroke:(uint64_t)a4 inputScale:(double)a5 averageInputPoint:
{
  v43 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  __p = 0;
  v36 = 0;
  v37 = 0;
  [v9 startLocation];
  *&v29[0] = v11;
  *(&v29[0] + 1) = v12;
  std::vector<CGPoint>::push_back[abi:ne200100](&__p, v29);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = [v9 pathPoints];
  v14 = [v13 countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v14)
  {
    v15 = *v32;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v31 + 1) + 8 * i) CGPointValue];
        *&v29[0] = v17;
        *(&v29[0] + 1) = v18;
        std::vector<CGPoint>::push_back[abi:ne200100](&__p, v29);
      }

      v14 = [v13 countByEnumeratingWithState:&v31 objects:v42 count:16];
    }

    while (v14);
  }

  [v9 endLocation];
  *&v29[0] = v19;
  *(&v29[0] + 1) = v20;
  std::vector<CGPoint>::push_back[abi:ne200100](&__p, v29);
  PKPointsFromLineSegments(&__p, &v38, a5 * 6.0);
  v21 = *(a4 + 112);
  v29[6] = *(a4 + 96);
  v29[7] = v21;
  v30 = *(a4 + 128);
  v22 = *(a4 + 48);
  v29[2] = *(a4 + 32);
  v29[3] = v22;
  v23 = *(a4 + 80);
  v29[4] = *(a4 + 64);
  v29[5] = v23;
  v24 = *(a4 + 16);
  v29[0] = *a4;
  v29[1] = v24;
  v25 = [(PKShapeDrawingController *)a1 _strokeFromPoints:v29 inputScale:v10 averageInputPoint:a5 sourceStroke:?];
  v26 = v25;
  if (v25)
  {
    v41 = v25;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  }

  else
  {
    v27 = 0;
  }

  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  return v27;
}

- (id)_generateHeart:(void *)a3 sourceStroke:(uint64_t)a4 inputScale:(double)a5 averageInputPoint:
{
  v43[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v12 = [PKShapeDrawingController aspectRatioAdjustedSizeFromResult:v9];
  v13 = 0;
  if (v12 > 0.0)
  {
    v14 = v11;
    if (v11 > 0.0)
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      [v9 center];
      memset(&transform, 0, sizeof(transform));
      CGAffineTransformMakeTranslation(&transform, v15, v16);
      v38 = transform;
      [v9 rotation];
      CGAffineTransformRotate(&v31, &v38, v17 * 3.14159265 / 180.0);
      transform = v31;
      v38 = v31;
      CGAffineTransformScale(&v31, &v38, v12, v14);
      transform = v31;
      v38 = v31;
      CGAffineTransformTranslate(&v31, &v38, -0.5, -0.5);
      transform = v31;
      v18 = objc_opt_self();
      *&v31.a = MEMORY[0x1E69E9820];
      *&v31.b = 3221225472;
      *&v31.c = __48__PKShapeDrawingController__normalizedHeartPath__block_invoke;
      *&v31.d = &__block_descriptor_40_e5_v8__0l;
      *&v31.tx = v18;
      if (qword_1ED6A5450 != -1)
      {
        dispatch_once(&qword_1ED6A5450, &v31);
      }

      v19 = CGPathCreateMutableCopyByTransformingPath(qword_1ED6A5448, &transform);
      PKPointsFromPath(v19, &v40, a5 * 6.0, a5 * 0.1);
      CGPathRelease(v19);
      if (([v10 _pathHasClockwisePointOrdering] & 1) == 0 && v40 != v41)
      {
        v20 = v41 - 2;
        if (v41 - 2 > v40)
        {
          v21 = v40 + 2;
          do
          {
            v22 = *(v21 - 1);
            *(v21 - 1) = *v20;
            *v20 = v22;
            v20 -= 2;
            v23 = v21 >= v20;
            v21 += 2;
          }

          while (!v23);
        }
      }

      v24 = *(a4 + 112);
      v35 = *(a4 + 96);
      v36 = v24;
      v37 = *(a4 + 128);
      v25 = *(a4 + 48);
      *&v31.tx = *(a4 + 32);
      v32 = v25;
      v26 = *(a4 + 80);
      v33 = *(a4 + 64);
      v34 = v26;
      v27 = *(a4 + 16);
      *&v31.a = *a4;
      *&v31.c = v27;
      v28 = [(PKShapeDrawingController *)a1 _strokeFromPoints:&v31 inputScale:v10 averageInputPoint:a5 sourceStroke:?];
      v29 = v28;
      if (v28)
      {
        v43[0] = v28;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
      }

      else
      {
        v13 = 0;
      }

      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }
    }
  }

  return v13;
}

- (id)_generateCloud:(void *)a3 sourceStroke:(uint64_t)a4 inputScale:(double)a5 averageInputPoint:
{
  v61[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  __p = 0;
  v55 = 0;
  v56 = 0;
  [v9 center];
  v12 = v11;
  v14 = v13;
  [v9 size];
  v17 = v16;
  v18 = 0;
  if (v16 > 0.0)
  {
    v19 = v15;
    if (v15 > 0.0)
    {
      [v9 rotation];
      if (v19 <= v17)
      {
        v21 = v19;
      }

      else
      {
        v21 = v17;
      }

      if (v19 <= v17)
      {
        v22 = v17;
      }

      else
      {
        v22 = v19;
      }

      if (v19 <= v17)
      {
        v23 = v20;
      }

      else
      {
        v23 = v20 + 90.0;
      }

      objc_opt_self();
      v24 = v21 * 1.42857143;
      v25 = 1;
      if (v21 * 1.42857143 < v22)
      {
        v26 = 400.0;
        v27 = v21 * 1.42857143;
        while (1)
        {
          v26 = v26 + 80.0;
          v24 = v21 * (v26 / 280.0);
          if (v24 > v22 && v24 - v22 > v22 - v27)
          {
            break;
          }

          ++v25;
          v27 = v21 * (v26 / 280.0);
          if (v24 >= v22)
          {
            goto LABEL_20;
          }
        }

        v24 = v27;
      }

LABEL_20:
      memset(&transform, 0, sizeof(transform));
      CGAffineTransformMakeTranslation(&transform, v12, v14);
      t1 = transform;
      CGAffineTransformRotate(&m, &t1, v23 * 3.14159265 / 180.0);
      transform = m;
      t1 = m;
      CGAffineTransformScale(&m, &t1, v24, v21);
      transform = m;
      t1 = m;
      CGAffineTransformTranslate(&m, &t1, -0.5, -0.5);
      transform = m;
      v29 = objc_opt_self();
      Mutable = CGPathCreateMutable();
      memset(&v58, 0, sizeof(v58));
      CGAffineTransformMakeTranslation(&v58, 160.0, 0.0);
      objc_opt_self();
      CGPathAddArc(Mutable, 0, 137.5, 59.5, 55.5, -1.03876237, 2.87379342, 1);
      CGPathAddArc(Mutable, 0, 65.5, 136.0, 65.0, -1.26852383, 2.07935753, 1);
      CGPathAddArc(Mutable, 0, 70.0, 212.0, 41.0, -2.65976523, 1.03454926, 1);
      CGPathAddArc(Mutable, 0, 132.0, 232.0, 44.0, 2.78456263, 0.869410475, 1);
      v31 = v25;
      do
      {
        m = v58;
        objc_opt_self();
        CGPathAddArc(Mutable, &m, 40.0, 222.0, 58.0, 2.27242155, 0.869171107, 1);
        t1 = v58;
        CGAffineTransformMakeTranslation(&t2, 80.0, 0.0);
        CGAffineTransformConcat(&m, &t1, &t2);
        v58 = m;
        --v31;
      }

      while (v31);
      v57 = v58;
      objc_opt_self();
      t1 = v57;
      CGAffineTransformMakeTranslation(&t2, -240.0, 0.0);
      CGAffineTransformConcat(&m, &t1, &t2);
      v57 = m;
      CGPathAddArc(Mutable, &v57, 268.0, 232.0, 44.0, 2.2664888, 0.368228686, 1);
      CGPathAddArc(Mutable, &v57, 330.0, 212.0, 41.0, 2.09887078, -0.474399883, 1);
      CGPathAddArc(Mutable, &v57, 335.0, 136.0, 65.0, 1.05539318, -1.85885177, 1);
      CGPathAddArc(Mutable, &v57, 262.5, 59.5, 55.5, 0.279104812, -2.09669403, 1);
      v32 = 0;
      do
      {
        t1 = v58;
        CGAffineTransformMakeTranslation(&t2, -80.0, 0.0);
        CGAffineTransformConcat(&m, &t1, &t2);
        v58 = m;
        objc_opt_self();
        CGPathAddArc(Mutable, &m, 40.0, 58.0, 58.0, dbl_1C801EE20[v32-- == 0], dbl_1C801EE30[--v25 == 0], 1);
      }

      while (v25);
      v33 = [(PKShapeDrawingController *)v29 _createNormalizedPathFromPath:?];
      CGPathRelease(Mutable);
      v34 = CGPathCreateMutableCopyByTransformingPath(v33, &transform);
      CGPathRelease(v33);
      PKPointsFromPath(v34, &__p, a5 * 6.0, a5 * 0.1);
      CGPathRelease(v34);
      if (([v10 _pathHasClockwisePointOrdering] & 1) == 0 && __p != v55)
      {
        v35 = v55 - 16;
        if (v55 - 16 > __p)
        {
          v36 = __p + 16;
          do
          {
            v37 = *(v36 - 1);
            *(v36 - 1) = *v35;
            *v35 = v37;
            v35 -= 16;
            v38 = v36 >= v35;
            v36 += 16;
          }

          while (!v38);
        }
      }

      v39 = *(a4 + 112);
      v50 = *(a4 + 96);
      v51 = v39;
      v52 = *(a4 + 128);
      v40 = *(a4 + 48);
      *&m.tx = *(a4 + 32);
      v47 = v40;
      v41 = *(a4 + 80);
      v48 = *(a4 + 64);
      v49 = v41;
      v42 = *(a4 + 16);
      *&m.a = *a4;
      *&m.c = v42;
      v43 = [(PKShapeDrawingController *)a1 _strokeFromPoints:&m inputScale:v10 averageInputPoint:a5 sourceStroke:?];
      v44 = v43;
      if (v43)
      {
        v61[0] = v43;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
      }

      else
      {
        v18 = 0;
      }

      if (__p)
      {
        v55 = __p;
        operator delete(__p);
      }
    }
  }

  return v18;
}

- (id)_generateStar:(void *)a3 sourceStroke:(uint64_t)a4 inputScale:(double)a5 averageInputPoint:
{
  v54[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = 0;
  v42 = [PKShapeDrawingController aspectRatioAdjustedSizeFromResult:v9]* 0.5;
  if (v42 > 0.0)
  {
    v41 = v12 * 0.5;
    if (v12 * 0.5 > 0.0)
    {
      v51 = 0;
      v52 = 0;
      v53 = 0;
      [v9 center];
      v46 = v14;
      v47 = v13;
      memset(&v50, 0, sizeof(v50));
      [v9 rotation];
      CGAffineTransformMakeRotation(&v50, v15 * 3.14159265 / 180.0);
      Mutable = CGPathCreateMutable();
      v40 = a5;
      v17 = v42 * 0.4;
      v45 = v41 * 0.4;
      v18 = 5;
      v19 = -1.57079633;
      do
      {
        v20 = __sincos_stret(v19);
        v21 = __sincos_stret(v19 + -0.628318531);
        v22 = __sincos_stret(v19 + 0.628318531);
        c = v50.c;
        tx = v50.tx;
        ty = v50.ty;
        a = v50.a;
        b = v50.b;
        d = v50.d;
        v27 = v47 + v50.tx + v45 * v21.__sinval * v50.c + v50.a * (v17 * v21.__cosval);
        v28 = v46 + v50.ty + v45 * v21.__sinval * v50.d + v50.b * (v17 * v21.__cosval);
        if (v18 == 5)
        {
          CGPathMoveToPoint(Mutable, 0, v27, v28);
        }

        else
        {
          CGPathAddLineToPoint(Mutable, 0, v27, v28);
        }

        v17 = v42 * 0.4;
        CGPathAddLineToPoint(Mutable, 0, v47 + tx + v41 * v20.__sinval * c + a * (v42 * v20.__cosval), v46 + ty + v41 * v20.__sinval * d + b * (v42 * v20.__cosval));
        CGPathAddLineToPoint(Mutable, 0, v47 + tx + v45 * v22.__sinval * c + a * (v17 * v22.__cosval), v46 + ty + v45 * v22.__sinval * d + b * (v17 * v22.__cosval));
        v19 = v19 + 1.25663706;
        --v18;
      }

      while (v18);
      PKPointsFromPath(Mutable, &v51, v40 * 6.0, v40 * 0.1);
      CGPathRelease(Mutable);
      if ([v10 _pathHasClockwisePointOrdering])
      {
        if (v51 != v52)
        {
          v29 = v52 - 2;
          if (v52 - 2 > v51)
          {
            v30 = v51 + 2;
            do
            {
              v31 = *(v30 - 1);
              *(v30 - 1) = *v29;
              *v29 = v31;
              v29 -= 2;
              v32 = v30 >= v29;
              v30 += 2;
            }

            while (!v32);
          }
        }
      }

      v33 = *(a4 + 112);
      v48[6] = *(a4 + 96);
      v48[7] = v33;
      v49 = *(a4 + 128);
      v34 = *(a4 + 48);
      v48[2] = *(a4 + 32);
      v48[3] = v34;
      v35 = *(a4 + 80);
      v48[4] = *(a4 + 64);
      v48[5] = v35;
      v36 = *(a4 + 16);
      v48[0] = *a4;
      v48[1] = v36;
      v37 = [(PKShapeDrawingController *)a1 _strokeFromPoints:v48 inputScale:v10 averageInputPoint:v40 sourceStroke:?];
      v38 = v37;
      if (v37)
      {
        v54[0] = v37;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
      }

      else
      {
        v11 = 0;
      }

      if (v51)
      {
        v52 = v51;
        operator delete(v51);
      }
    }
  }

  return v11;
}

- (id)_generateChatBubble:(void *)a3 sourceStroke:(uint64_t)a4 inputScale:(double)a5 averageInputPoint:
{
  v58[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  [v9 size];
  v13 = v12;
  v14 = 0;
  if (v12 > 0.0)
  {
    v15 = v11;
    if (v11 > 0.0)
    {
      v45 = a5;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      [v9 center];
      v17 = v16;
      v19 = v18;
      if (v13 >= v15)
      {
        v20 = v15;
      }

      else
      {
        v20 = v13;
      }

      v21 = v20 * 0.5;
      v22 = *(MEMORY[0x1E695EFD0] + 16);
      *&m.a = *MEMORY[0x1E695EFD0];
      *&m.c = v22;
      *&m.tx = *(MEMORY[0x1E695EFD0] + 32);
      *&v46.a = *&m.a;
      *&v46.c = v22;
      *&v46.tx = *&m.tx;
      CGAffineTransformTranslate(&m, &v46, v17, v19);
      v53 = m;
      CGAffineTransformScale(&v46, &v53, v13 * 0.5 / v21, v15 * 0.5 / v21);
      m = v46;
      v53 = v46;
      CGAffineTransformTranslate(&v46, &v53, -v17, -v19);
      m = v46;
      [v9 stemLocation];
      v24 = v23;
      v26 = v25;
      [v9 stemWidth];
      v28 = v27;
      v53 = m;
      CGAffineTransformInvert(&v46, &v53);
      v29 = v46.tx + v26 * v46.c + v46.a * v24;
      v30 = v46.ty + v26 * v46.d + v46.b * v24;
      v31 = atan2(v30 - v19, v29 - v17);
      Mutable = CGPathCreateMutable();
      CGPathAddArc(Mutable, &m, v17, v19, v21, v31 + v28 * -0.5, v31 + v28 * 0.5, 1);
      CGPathAddLineToPoint(Mutable, &m, v29, v30);
      v33 = __sincos_stret(v31 + v28 * -0.5);
      CGPathAddLineToPoint(Mutable, &m, v17 + v33.__cosval * v21, v19 + v33.__sinval * v21);
      PKPointsFromPath(Mutable, &v55, v45 * 6.0, v45 * 0.1);
      CGPathRelease(Mutable);
      if ([v10 _pathHasClockwisePointOrdering])
      {
        if (v55 != v56)
        {
          v34 = v56 - 2;
          if (v56 - 2 > v55)
          {
            v35 = v55 + 2;
            do
            {
              v36 = *(v35 - 1);
              *(v35 - 1) = *v34;
              *v34 = v36;
              v34 -= 2;
              v37 = v35 >= v34;
              v35 += 2;
            }

            while (!v37);
          }
        }
      }

      v38 = *(a4 + 112);
      v50 = *(a4 + 96);
      v51 = v38;
      v52 = *(a4 + 128);
      v39 = *(a4 + 48);
      *&v46.tx = *(a4 + 32);
      v47 = v39;
      v40 = *(a4 + 80);
      v48 = *(a4 + 64);
      v49 = v40;
      v41 = *(a4 + 16);
      *&v46.a = *a4;
      *&v46.c = v41;
      v42 = [(PKShapeDrawingController *)a1 _strokeFromPoints:&v46 inputScale:v10 averageInputPoint:v45 sourceStroke:?];
      v43 = v42;
      if (v42)
      {
        v58[0] = v42;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:1];
      }

      else
      {
        v14 = 0;
      }

      if (v55)
      {
        v56 = v55;
        operator delete(v55);
      }
    }
  }

  return v14;
}

- (id)_generateOval:(void *)a3 sourceStroke:(uint64_t)a4 inputScale:(double)a5 averageInputPoint:
{
  v47[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  [v9 size];
  v13 = v12;
  v14 = 0;
  if (v12 > 0.0)
  {
    v15 = v11;
    if (v11 > 0.0)
    {
      v44 = 0;
      v45 = 0;
      v46 = 0;
      [v9 center];
      v17 = v16;
      v19 = v18;
      memset(&transform, 0, sizeof(transform));
      CGAffineTransformMakeTranslation(&transform, v16, v18);
      v42 = transform;
      [v9 rotation];
      CGAffineTransformRotate(&v35, &v42, v20 * 3.14159265 / 180.0);
      transform = v35;
      v42 = v35;
      CGAffineTransformTranslate(&v35, &v42, -v17, -v19);
      transform = v35;
      [v9 center];
      v49.origin.x = v21 - v13 * 0.5;
      v49.origin.y = v22 - v15 * 0.5;
      v49.size.width = v13;
      v49.size.height = v15;
      v23 = CGPathCreateWithEllipseInRect(v49, &transform);
      PKPointsFromPath(v23, &v44, a5 * 6.0, a5 * 0.1);
      CGPathRelease(v23);
      if ([v10 _pathHasClockwisePointOrdering])
      {
        if (v44 != v45)
        {
          v24 = v45 - 2;
          if (v45 - 2 > v44)
          {
            v25 = v44 + 2;
            do
            {
              v26 = *(v25 - 1);
              *(v25 - 1) = *v24;
              *v24 = v26;
              v24 -= 2;
              v27 = v25 >= v24;
              v25 += 2;
            }

            while (!v27);
          }
        }
      }

      v28 = *(a4 + 112);
      v39 = *(a4 + 96);
      v40 = v28;
      v41 = *(a4 + 128);
      v29 = *(a4 + 48);
      *&v35.tx = *(a4 + 32);
      v36 = v29;
      v30 = *(a4 + 80);
      v37 = *(a4 + 64);
      v38 = v30;
      v31 = *(a4 + 16);
      *&v35.a = *a4;
      *&v35.c = v31;
      v32 = [(PKShapeDrawingController *)a1 _strokeFromPoints:&v35 inputScale:v10 averageInputPoint:a5 sourceStroke:?];
      v33 = v32;
      if (v32)
      {
        v47[0] = v32;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
      }

      else
      {
        v14 = 0;
      }

      if (v44)
      {
        v45 = v44;
        operator delete(v44);
      }
    }
  }

  return v14;
}

- (uint64_t)_shapeTypeFromResultName:(uint64_t)a1
{
  v3 = a2;
  v4 = [v3 lowercaseString];
  if (([v4 isEqualToString:@"freeform"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"rectangle"])
    {
      v5 = 2;
      goto LABEL_27;
    }

    if ([v4 isEqualToString:@"triangle"])
    {
      v5 = 3;
      goto LABEL_27;
    }

    if ([v4 isEqualToString:@"oval"])
    {
      v5 = 1;
      goto LABEL_27;
    }

    if ([v4 isEqualToString:@"star"])
    {
      v5 = 8;
      goto LABEL_27;
    }

    if ([v4 isEqualToString:@"heart"])
    {
      v5 = 9;
      goto LABEL_27;
    }

    if ([v4 isEqualToString:@"chat bubble"])
    {
      v5 = 10;
      goto LABEL_27;
    }

    if ([v4 isEqualToString:@"pentagon"])
    {
      v5 = 4;
      goto LABEL_27;
    }

    if ([v4 isEqualToString:@"line"])
    {
      v5 = 6;
      goto LABEL_27;
    }

    if ([v4 isEqualToString:@"outline arrow"])
    {
      v5 = 11;
      goto LABEL_27;
    }

    if ([v4 isEqualToString:@"arrow"])
    {
      v5 = 5;
      goto LABEL_27;
    }

    if ([v4 isEqualToString:@"manhattan line"])
    {
      v5 = 7;
      goto LABEL_27;
    }

    if ([v4 isEqualToString:@"cloud"])
    {
      v5 = 12;
      goto LABEL_27;
    }

    if ([v4 isEqualToString:@"scratchout"] && (-[PKShapeDrawingController isScratchOutActive](a1) & 1) != 0)
    {
      v5 = 13;
      goto LABEL_27;
    }
  }

  v5 = 0;
LABEL_27:

  return v5;
}

- (id)shapeFromStroke:(__int128 *)a3 inputScale:(void *)a4 averageInputPoint:(double)a5 allowedShapeTypes:
{
  v158 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v128 = a4;
  v129 = v9;
  if (!a1)
  {
    goto LABEL_118;
  }

  if (!memcmp(a3, &PKInputPointZero, 0x88uLL))
  {
    v11 = [v9 path];
    v12 = [v11 count];

    if (v12)
    {
      v13 = [v9 path];
      [v13 timestampAtIndex:0];
      v15 = v14;

      v16 = [v9 path];
      v17 = [v9 path];
      [v16 timestampAtIndex:{objc_msgSend(v17, "count") - 1}];
      v19 = v18;

      *(a1 + 152) = v19 - v15;
    }

    v20 = v9;
    v21 = objc_alloc_init(PKAveragePointGenerator);
    [(PKAveragePointGenerator *)v21 addStroke:v20];
    [(PKAveragePointGenerator *)v21 currentInputPoint];

    v22 = v156;
    a3[6] = v155;
    a3[7] = v22;
    *(a3 + 16) = v157;
    v23 = v152;
    a3[2] = v151;
    a3[3] = v23;
    v24 = v154;
    a3[4] = v153;
    a3[5] = v24;
    v10 = v150;
    *a3 = block;
    a3[1] = v10;
  }

  v138 = 0;
  if (*(a1 + 193) != 1)
  {
    goto LABEL_19;
  }

  v25 = 1.0;
  if (a5 > 0.0)
  {
    v26 = [v9 _strokeData];
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v31 = [v26 _pointsCount];
    if (v31)
    {
      for (i = 0; i != v31; ++i)
      {
        [v26 interpolatedLocationAt:{i, v128}];
        v162.origin.x = v33;
        v162.origin.y = v34;
        v162.size.width = 0.0;
        v162.size.height = 0.0;
        v160.origin.x = x;
        v160.origin.y = y;
        v160.size.width = width;
        v160.size.height = height;
        v161 = CGRectUnion(v160, v162);
        x = v161.origin.x;
        y = v161.origin.y;
        width = v161.size.width;
        height = v161.size.height;
      }
    }

    *&v10 = 1.0 / a5 * height;
    if (1.0 / a5 * width > 4.0 || *&v10 > 4.0)
    {
      v25 = a5;
      goto LABEL_16;
    }

LABEL_19:
    v42 = 0;
    goto LABEL_26;
  }

LABEL_16:
  v36 = [v9 path];
  v37 = [v36 count];

  if (v37 > 0xFA0)
  {
    v42 = 0;
  }

  else
  {
    v38 = v9;
    v39 = objc_alloc_init(MEMORY[0x1E6997B50]);
    v139 = 0;
    v140 = &v139;
    v141 = 0x2020000000;
    LOBYTE(v142) = 0;
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3221225472;
    *&v150 = __49__PKShapeDrawingController__chDrawingFromStroke___block_invoke;
    *(&v150 + 1) = &unk_1E82D87E0;
    v40 = v39;
    *&v151 = v40;
    *(&v151 + 1) = &v139;
    [v38 enumeratePointsWithTimestep:&block usingBlock:0.00833333333];
    if (*(v140 + 24) == 1)
    {
      [v40 endStroke];
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    _Block_object_dispose(&v139, 8);
    v43 = v41;
    v139 = 0;
    v140 = &v139;
    v141 = 0x3032000000;
    v142 = __Block_byref_object_copy__34;
    v143 = __Block_byref_object_dispose__34;
    v144 = 0;
    if (qword_1ED6A5460 != -1)
    {
      dispatch_once(&qword_1ED6A5460, &__block_literal_global_82);
    }

    v44 = qword_1ED6A5458;
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3221225472;
    *&v150 = __57__PKShapeDrawingController_recognitionResultsForDrawing___block_invoke;
    *(&v150 + 1) = &unk_1E82DBFB8;
    *&v152 = &v139;
    *&v151 = a1;
    v45 = v43;
    *(&v151 + 1) = v45;
    dispatch_sync(v44, &block);

    v42 = v140[5];
    _Block_object_dispose(&v139, 8);
  }

  a5 = v25;
LABEL_26:
  if (![v42 count])
  {
LABEL_43:
    v58 = 0;
    if (v9 && (*(a1 + 192) & 1) != 0)
    {
      v59 = [(PKShapeDrawingController *)a1 isScratchOutActive];
      if (v138 == 13)
      {
        v60 = 0;
      }

      else
      {
        v60 = v59;
      }

      if (v60 == 1)
      {
        v147 = v9;
        v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v147 count:1];
      }

      else
      {
        v58 = 0;
      }
    }

    goto LABEL_90;
  }

  v46 = [v42 objectAtIndexedSubscript:0];
  if ([v42 count] < 2)
  {
    v47 = 0;
  }

  else
  {
    v47 = [v42 objectAtIndexedSubscript:1];
  }

  v48 = [v46 string];
  v138 = [(PKShapeDrawingController *)a1 _shapeTypeFromResultName:v48];

  if (v128)
  {
    v49 = [MEMORY[0x1E696AD98] numberWithInteger:v138];
    v50 = [v128 containsObject:v49];

    if ((v50 & 1) == 0)
    {
      v138 = 0;
      goto LABEL_42;
    }
  }

  if (!v138)
  {
LABEL_42:

    goto LABEL_43;
  }

  v51 = os_log_create("com.apple.pencilkit", "Actions");
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    v52 = [v46 string];
    LODWORD(block) = 138412290;
    *(&block + 4) = v52;
    _os_log_impl(&dword_1C7CCA000, v51, OS_LOG_TYPE_DEFAULT, "Shape recognized %@.", &block, 0xCu);
  }

  if (v138 > 7)
  {
    if (v138 <= 10)
    {
      if (v138 == 8)
      {
        v83 = a3[7];
        v155 = a3[6];
        v156 = v83;
        v157 = *(a3 + 16);
        v84 = a3[3];
        v151 = a3[2];
        v152 = v84;
        v85 = a3[5];
        v153 = a3[4];
        v154 = v85;
        v86 = a3[1];
        block = *a3;
        v150 = v86;
        v57 = [(PKShapeDrawingController *)a1 _generateStar:v46 sourceStroke:v9 inputScale:&block averageInputPoint:a5];
      }

      else
      {
        v61 = a3[7];
        v155 = a3[6];
        v156 = v61;
        v157 = *(a3 + 16);
        v62 = a3[3];
        v151 = a3[2];
        v152 = v62;
        v63 = a3[5];
        v153 = a3[4];
        v154 = v63;
        v64 = a3[1];
        block = *a3;
        v150 = v64;
        if (v138 == 9)
        {
          [(PKShapeDrawingController *)a1 _generateHeart:v46 sourceStroke:v9 inputScale:&block averageInputPoint:a5];
        }

        else
        {
          [(PKShapeDrawingController *)a1 _generateChatBubble:v46 sourceStroke:v9 inputScale:&block averageInputPoint:a5];
        }
        v57 = ;
      }

      goto LABEL_88;
    }

    if (v138 == 11)
    {
      v87 = a3[7];
      v155 = a3[6];
      v156 = v87;
      v157 = *(a3 + 16);
      v88 = a3[3];
      v151 = a3[2];
      v152 = v88;
      v89 = a3[5];
      v153 = a3[4];
      v154 = v89;
      v90 = a3[1];
      block = *a3;
      v150 = v90;
      v57 = [(PKShapeDrawingController *)a1 _generateOutlineArrow:v46 sourceStroke:v9 inputScale:&block averageInputPoint:a5];
      goto LABEL_88;
    }

    if (v138 == 12)
    {
      v91 = a3[7];
      v155 = a3[6];
      v156 = v91;
      v157 = *(a3 + 16);
      v92 = a3[3];
      v151 = a3[2];
      v152 = v92;
      v93 = a3[5];
      v153 = a3[4];
      v154 = v93;
      v94 = a3[1];
      block = *a3;
      v150 = v94;
      v57 = [(PKShapeDrawingController *)a1 _generateCloud:v46 sourceStroke:v9 inputScale:&block averageInputPoint:a5];
      goto LABEL_88;
    }

    if (v138 != 13 || ![(PKShapeDrawingController *)a1 isScratchOutActive])
    {
      goto LABEL_42;
    }

    if ([v9 _pointsCount] >= 0x3E9)
    {
      v69 = os_log_create("com.apple.pencilkit", "Actions");
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v70 = [v9 _pointsCount];
        LODWORD(block) = 134217984;
        *(&block + 4) = v70;
        _os_log_impl(&dword_1C7CCA000, v69, OS_LOG_TYPE_DEFAULT, "Scratch Out stroke has %lu points, cancelling due to too many.", &block, 0xCu);
      }

      goto LABEL_87;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 200));
    v110 = [WeakRetained shapeDrawingController:a1 scratchOutStrokesCoveredByStroke:v9];

    if ((v110 & 1) == 0)
    {
LABEL_87:
      v138 = 0;
      v148 = v9;
      v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v148 count:1];
      goto LABEL_88;
    }

    goto LABEL_42;
  }

  if (v138 <= 3)
  {
    switch(v138)
    {
      case 1:
        v75 = a3[7];
        v155 = a3[6];
        v156 = v75;
        v157 = *(a3 + 16);
        v76 = a3[3];
        v151 = a3[2];
        v152 = v76;
        v77 = a3[5];
        v153 = a3[4];
        v154 = v77;
        v78 = a3[1];
        block = *a3;
        v150 = v78;
        v57 = [(PKShapeDrawingController *)a1 _generateOval:v46 sourceStroke:v9 inputScale:&block averageInputPoint:a5];
        goto LABEL_88;
      case 2:
        v79 = a3[7];
        v155 = a3[6];
        v156 = v79;
        v157 = *(a3 + 16);
        v80 = a3[3];
        v151 = a3[2];
        v152 = v80;
        v81 = a3[5];
        v153 = a3[4];
        v154 = v81;
        v82 = a3[1];
        block = *a3;
        v150 = v82;
        v57 = [(PKShapeDrawingController *)a1 _generateRectangle:v46 sourceStroke:v9 inputScale:&block averageInputPoint:a5];
        goto LABEL_88;
      case 3:
        v53 = a3[7];
        v155 = a3[6];
        v156 = v53;
        v157 = *(a3 + 16);
        v54 = a3[3];
        v151 = a3[2];
        v152 = v54;
        v55 = a3[5];
        v153 = a3[4];
        v154 = v55;
        v56 = a3[1];
        block = *a3;
        v150 = v56;
        v57 = [(PKShapeDrawingController *)a1 _generateTriangle:v46 sourceStroke:v9 inputScale:&block averageInputPoint:a5];
LABEL_88:
        v58 = v57;
        goto LABEL_89;
    }

    goto LABEL_42;
  }

  if ((v138 - 5) < 2)
  {
    v71 = a3[7];
    v155 = a3[6];
    v156 = v71;
    v157 = *(a3 + 16);
    v72 = a3[3];
    v151 = a3[2];
    v152 = v72;
    v73 = a3[5];
    v153 = a3[4];
    v154 = v73;
    v74 = a3[1];
    block = *a3;
    v150 = v74;
    v57 = [(PKShapeDrawingController *)a1 _generateLine:v46 sourceStroke:v9 inputScale:&block averageInputPoint:&v138 shapeTypeOut:a5];
    goto LABEL_88;
  }

  if (v138 == 4)
  {
    v95 = a3[7];
    v155 = a3[6];
    v156 = v95;
    v157 = *(a3 + 16);
    v96 = a3[3];
    v151 = a3[2];
    v152 = v96;
    v97 = a3[5];
    v153 = a3[4];
    v154 = v97;
    v98 = a3[1];
    block = *a3;
    v150 = v98;
    v57 = [(PKShapeDrawingController *)a1 _generatePentagon:v46 sourceStroke:v9 inputScale:&block averageInputPoint:a5];
    goto LABEL_88;
  }

  if (v138 != 7)
  {
    goto LABEL_42;
  }

  if ([v42 count] < 2)
  {
    v68 = 100.0;
  }

  else
  {
    v65 = [v42 objectAtIndexedSubscript:1];
    [v65 score];
    v67 = v66;

    v68 = fabs(v67);
  }

  [v46 score];
  v58 = 0;
  if (fabs(v99) < 0.0001 && v68 > 2.0)
  {
    v100 = a3[7];
    v155 = a3[6];
    v156 = v100;
    v157 = *(a3 + 16);
    v101 = a3[3];
    v151 = a3[2];
    v152 = v101;
    v102 = a3[5];
    v153 = a3[4];
    v154 = v102;
    v103 = a3[1];
    block = *a3;
    v150 = v103;
    v58 = [(PKShapeDrawingController *)a1 _generateManhattanLine:v46 sourceStroke:v9 inputScale:&block averageInputPoint:a5];
  }

  if (!v58 && v47 && v68 < 1.0)
  {
    v104 = [v47 string];
    v138 = [(PKShapeDrawingController *)a1 _shapeTypeFromResultName:v104];

    if ((v138 - 5) <= 1)
    {
      v105 = a3[7];
      v155 = a3[6];
      v156 = v105;
      v157 = *(a3 + 16);
      v106 = a3[3];
      v151 = a3[2];
      v152 = v106;
      v107 = a3[5];
      v153 = a3[4];
      v154 = v107;
      v108 = a3[1];
      block = *a3;
      v150 = v108;
      v57 = [(PKShapeDrawingController *)a1 _generateLine:v47 sourceStroke:v9 inputScale:&block averageInputPoint:&v138 shapeTypeOut:a5];
      goto LABEL_88;
    }

    goto LABEL_42;
  }

LABEL_89:

  if (!v58)
  {
    goto LABEL_43;
  }

LABEL_90:
  if ([v58 count])
  {
    v111 = [MEMORY[0x1E696AFB0] UUID];
    objc_storeStrong((a1 + 224), v111);

    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v112 = v58;
    v113 = [v112 countByEnumeratingWithState:&v134 objects:v146 count:16];
    if (v113)
    {
      v114 = *v135;
      do
      {
        for (j = 0; j != v113; ++j)
        {
          if (*v135 != v114)
          {
            objc_enumerationMutation(v112);
          }

          v116 = *(*(&v134 + 1) + 8 * j);
          v117 = *(a1 + 224);
          [v116 _setGroupID:v117];

          [v116 _setShapeType:v138];
        }

        v113 = [v112 countByEnumeratingWithState:&v134 objects:v146 count:16];
      }

      while (v113);
    }

    if ([v112 count] >= 2)
    {
      v118 = [MEMORY[0x1E696AFB0] UUID];
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v119 = v112;
      v120 = [v119 countByEnumeratingWithState:&v130 objects:v145 count:16];
      if (v120)
      {
        v121 = *v131;
        do
        {
          for (k = 0; k != v120; ++k)
          {
            if (*v131 != v121)
            {
              objc_enumerationMutation(v119);
            }

            [*(*(&v130 + 1) + 8 * k) _setRenderGroupID:v118];
          }

          v120 = [v119 countByEnumeratingWithState:&v130 objects:v145 count:16];
        }

        while (v120);
      }
    }
  }

  if ((![v58 count] || !v138) && ((v123 = -[PKShapeDrawingController isScratchOutActive](a1), v138 == 13) ? (v124 = v123) : (v124 = 0), v124 != 1) || (v125 = [PKShape alloc], (a1 = -[PKShape initWithShapeType:strokes:originalStroke:](v125, "initWithShapeType:strokes:originalStroke:", v138, v58, v129)) == 0))
  {
    v126 = os_log_create("com.apple.pencilkit", "Actions");
    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block) = 0;
      _os_log_impl(&dword_1C7CCA000, v126, OS_LOG_TYPE_DEFAULT, "Shape recognized <none>.", &block, 2u);
    }

    a1 = 0;
  }

LABEL_118:

  return a1;
}

- (id)detectedShapeWithInputScale:(void *)a3 averageInputPoint:(void *)a4 allowedShapeTypes:(double)a5 createCurrentStrokeBlock:
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (a1)
  {
    if (((*(a1 + 193) & 1) != 0 || *(a1 + 216)) && ((*(a1 + 64) & 1) != 0 || *(a1 + 65) == 1))
    {
      v12 = (*(v10 + 2))(v10);
      [v12 renderBounds];
      if (v14 / a5 < 10.0 && v13 / a5 < 10.0 || v12 == 0)
      {
        a1 = 0;
      }

      else
      {
        v17 = *(a2 + 112);
        v22[6] = *(a2 + 96);
        v22[7] = v17;
        v23 = *(a2 + 128);
        v18 = *(a2 + 48);
        v22[2] = *(a2 + 32);
        v22[3] = v18;
        v19 = *(a2 + 80);
        v22[4] = *(a2 + 64);
        v22[5] = v19;
        v20 = *(a2 + 16);
        v22[0] = *a2;
        v22[1] = v20;
        a1 = [(PKShapeDrawingController *)a1 shapeFromStroke:v12 inputScale:v22 averageInputPoint:v9 allowedShapeTypes:a5];
      }
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (void)_addAngles:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = CACurrentMediaTime();
    result = v3[12];
    v5 = v3[13];
    if (result == v5 || *(v5 - 8) < v4 + -0.1)
    {
      v6 = (v5 - result) >> 5;
      if (v6 >= 0xA)
      {
        v7 = v5 - 32;
        do
        {
          if (v5 != result + 4)
          {
            memmove(result, result + 4, v7 - result);
            result = v3[12];
          }

          v5 = v7;
          v3[13] = v7;
          v6 = (v7 - result) >> 5;
          v7 -= 32;
        }

        while (v6 > 9);
        v5 = v7 + 32;
      }

      v8 = a2[4];
      v9 = a2[14];
      v10 = v3[14];
      if (v5 >= v10)
      {
        v11 = v10 - result;
        if (v11 >> 4 <= v6 + 1)
        {
          v12 = v6 + 1;
        }

        else
        {
          v12 = v11 >> 4;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFE0)
        {
          v13 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<PolarPoint>>(v13);
      }

      *v5 = a2[3];
      *(v5 + 8) = v8;
      *(v5 + 16) = v9;
      *(v5 + 24) = v4;
      v3[13] = v5 + 32;
    }
  }

  return result;
}

- (CGRect)_addCurrentStrokePoint:(CGFloat)a3
{
  if (result)
  {
    p_x = &result->origin.x;
    v22.size.width = 1.0;
    v22.size.height = 1.0;
    v22.origin.x = a2;
    v22.origin.y = a3;
    result[1] = CGRectUnion(result[1], v22);
    _Q0.f64[0] = a2;
    _Q0.f64[1] = a3;
    *&_Q0.f64[0] = vmovn_s64(vcvtq_s64_f64(vmulq_f64(_Q0, vdupq_n_s64(0x4059000000000000uLL))));
    *&v5 = SLODWORD(_Q0.f64[0]);
    *(&v5 + 1) = SHIDWORD(_Q0.f64[0]);
    v20 = v5;
    __asm { FMOV            V0.2S, #-1.0 }

    v21 = -_Q0.f64[0];
    std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100]((p_x + 1), &v20);
    v10 = CACurrentMediaTime();
    result = p_x[9];
    v11 = p_x[10];
    if (result == v11 || *(v11 - 1) < v10 + -0.1)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v11 - result) >> 3);
      if (v12 >= 0xA)
      {
        v13 = v11 - 3;
        do
        {
          if (v11 != &result->size.height)
          {
            memmove(result, &result->size.height, v13 - result);
            result = p_x[9];
          }

          v11 = v13;
          p_x[10] = v13;
          v12 = 0xAAAAAAAAAAAAAAABLL * ((v13 - result) >> 3);
          v13 -= 3;
        }

        while (v12 > 9);
        v11 = v13 + 3;
      }

      v14 = p_x[11];
      if (v11 >= v14)
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v14 - result) >> 3);
        if (2 * v15 <= v12 + 1)
        {
          v16 = v12 + 1;
        }

        else
        {
          v16 = 2 * v15;
        }

        if (v15 >= 0x555555555555555)
        {
          v17 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v17 = v16;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<TimestampedPoint>>(v17);
      }

      *v11 = a2;
      v11[1] = a3;
      v11[2] = v10;
      p_x[10] = v11 + 3;
    }
  }

  return result;
}

- (void)beginStrokeAtPoint:(CGFloat)a3
{
  if (a1)
  {
    v6 = *(a1 + 208);
    *(a1 + 208) = 0;

    [(PKAveragePointGenerator *)*(a1 + 120) reset];
    *(a1 + 128) = 0;
    *(a1 + 64) = 0;
    *(a1 + 66) = 0;
    v7 = *(MEMORY[0x1E695F050] + 16);
    *(a1 + 32) = *MEMORY[0x1E695F050];
    *(a1 + 48) = v7;
    std::vector<ClipperLib::IntPoint>::resize((a1 + 8), 0);
    [(PKShapeDrawingController *)a1 _addCurrentStrokePoint:a2, a3];
    v8 = CACurrentMediaTime();
    *(a1 + 136) = v8;
    *(a1 + 144) = v8;
    *(a1 + 152) = 0;
    *(a1 + 67) = 1;
    *(a1 + 184) = 0;
  }
}

- (void)addStrokePoint:(CGFloat)a3 inputPoint:(CGFloat)a4
{
  if (a1)
  {
    v5 = (a1 + 8);
    if (*(a1 + 16) != *(a1 + 8))
    {
      v9 = a2[7];
      v30 = a2[6];
      v31 = v9;
      v32 = *(a2 + 16);
      v10 = a2[3];
      v26 = a2[2];
      v27 = v10;
      v11 = a2[5];
      v28 = a2[4];
      v29 = v11;
      v12 = a2[1];
      v24 = *a2;
      v25 = v12;
      [(PKShapeDrawingController *)a1 _addAngles:?];
      v13 = *(a1 + 16);
      v14 = sqrt((a4 - (*(v13 - 16) / 100)) * (a4 - (*(v13 - 16) / 100)) + (a3 - (*(v13 - 24) / 100)) * (a3 - (*(v13 - 24) / 100)));
      v15 = 10.0;
      if (!*(a1 + 208))
      {
        v15 = 2.0;
      }

      if (v14 > v15)
      {
        [(PKShapeDrawingController *)a1 _addCurrentStrokePoint:a3, a4];
        v16 = *(a1 + 120);
        v17 = a2[7];
        v30 = a2[6];
        v31 = v17;
        v32 = *(a2 + 16);
        v18 = a2[3];
        v26 = a2[2];
        v27 = v18;
        v19 = a2[5];
        v28 = a2[4];
        v29 = v19;
        v20 = a2[1];
        v24 = *a2;
        v25 = v20;
        [(PKAveragePointGenerator *)v16 addInputPoint:?];
        ++*(a1 + 128);
        v21 = CACurrentMediaTime();
        if (*(a1 + 208))
        {
          WeakRetained = objc_loadWeakRetained((a1 + 200));
          [WeakRetained shapeDrawingControllerShapeDetectionCancelled:a1];

          *(a1 + 136) = v21;
          v23 = v21;
        }

        else
        {
          v23 = *(a1 + 136);
        }

        *(a1 + 144) = v21;
        if (v21 - v23 > 0.3 && sqrt((a4 - (*(*v5 + 8) / 100)) * (a4 - (*(*v5 + 8) / 100)) + (a3 - (**v5 / 100)) * (a3 - (**v5 / 100))) < 20.0 && fabs(ClipperLib::Area(v5)) / 10000.0 > 500.0)
        {
          *(a1 + 64) = 1;
        }
      }

      [(PKShapeDrawingController *)a1 _checkDetectedStroke];
    }
  }
}

- (void)_checkDetectedStroke
{
  if (a1)
  {
    v2 = *(a1 + 208);
    if (v2)
    {
    }

    else if (*(a1 + 67))
    {
      v3 = *(a1 + 8);
      v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v3) >> 3);
      if (v4 >= 2)
      {
        v5 = v4 - 1;
        if (v5)
        {
          v8 = *v3;
          v7 = v3[1];
          v6 = v3 + 4;
          v9 = 0.0;
          do
          {
            v10 = *(v6 - 1);
            v11 = *v6;
            v12 = (v8 / 100) - (v10 / 100);
            v9 = v9 + sqrt(((v7 / 100) - (*v6 / 100)) * ((v7 / 100) - (*v6 / 100)) + v12 * v12);
            v6 += 3;
            v7 = v11;
            v8 = v10;
            --v5;
          }

          while (v5);
          if (v9 >= 10.0)
          {
            v13 = CACurrentMediaTime();
            v14 = *(a1 + 160);
            if (v13 - *(a1 + 136) > v14 && v13 - *(a1 + 184) >= v14)
            {
              *(a1 + 184) = v13;
              if (*(a1 + 194) == 1 && (*(a1 + 66) & 1) == 0)
              {
                v15 = *(a1 + 195);
              }

              else
              {
                v15 = 0;
              }

              if (*(a1 + 193) == 1)
              {
                if ([(PKShapeDrawingController *)a1 hasMovementStopped])
                {
                  *(a1 + 65) = 1;
                  *(a1 + 152) = *(a1 + 152) + v13 - *(a1 + 136);
                  WeakRetained = objc_loadWeakRetained((a1 + 200));
                  [WeakRetained shapeDrawingControllerShapeGestureDetected:a1 isFastGesture:v15 & 1];

                  *(a1 + 66) = 1;
                }
              }

              else if (*(a1 + 64) == 1 && [(PKShapeDrawingController *)a1 hasMovementStopped])
              {
                *(a1 + 152) = *(a1 + 152) + v13 - *(a1 + 136);
                v17 = objc_loadWeakRetained((a1 + 200));
                [v17 shapeDrawingControllerShapeGestureDetected:a1 isFastGesture:v15 & 1];

                *(a1 + 66) = 1;
              }
            }
          }
        }
      }
    }
  }
}

- (void)resetStroke
{
  if (a1)
  {
    *(a1 + 67) = 0;
    std::vector<TimestampedPoint>::resize((a1 + 72), 0);
    std::vector<TimestampedAngles>::resize((a1 + 96), 0);
    v2 = *(MEMORY[0x1E695F050] + 16);
    *(a1 + 32) = *MEMORY[0x1E695F050];
    *(a1 + 48) = v2;
    std::vector<ClipperLib::IntPoint>::resize((a1 + 8), 0);
    v3 = *(a1 + 208);
    *(a1 + 208) = 0;
  }
}

- (uint64_t)hasMovementStopped
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = CACurrentMediaTime();
  v3 = 0.0;
  v4 = 0.0;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - *(a1 + 72)) >> 3) >= 2)
  {
    v5 = CACurrentMediaTime();
    v6 = *(a1 + 72);
    v7 = v6[2];
    v8 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - v6) >> 3);
    v4 = 0.0;
    v9 = v7;
    v10 = 0.0;
    if (v8 != 1)
    {
      v11 = v5 - *(a1 + 160);
      v9 = v6[2];
      v10 = 0.0;
      if (v6[5] <= v11)
      {
        v10 = sqrt((v6[4] - v6[1]) * (v6[4] - v6[1]) + (v6[3] - *v6) * (v6[3] - *v6));
        if (v8 == 2 || (v12 = v6[8], v12 > v11))
        {
          v9 = v6[5];
        }

        else
        {
          v13 = v6 + 6;
          v14 = v8 - 2;
          do
          {
            v9 = v12;
            v10 = v10 + sqrt((v13[1] - *(v13 - 2)) * (v13[1] - *(v13 - 2)) + (*v13 - *(v13 - 3)) * (*v13 - *(v13 - 3)));
            if (!--v14)
            {
              break;
            }

            v12 = v13[5];
            v13 += 3;
          }

          while (v12 <= v11);
        }
      }
    }

    if (v9 - v7 > 0.0)
    {
      v15 = v10 / (v9 - v7);
      if (v15 >= 0.0)
      {
        v4 = v10 / (v9 - v7);
        if (v15 > 400.0)
        {
          v4 = 400.0;
        }
      }
    }
  }

  v17 = *(a1 + 96);
  v16 = *(a1 + 104);
  v18 = v16 - v17;
  v19 = (v16 - v17) >> 5;
  if (v19 >= 2)
  {
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    v23 = v19 - 1;
    v47 = *(v17 + 24);
    v48 = *(v16 - 24);
    v49 = v4;
    v50 = v2;
    v24 = *v17;
    v25 = *(v17 + 8);
    v26 = (v17 + 48);
    v27 = *(v17 + 16);
    do
    {
      v28 = *(v26 - 2);
      v29 = *(v26 - 1);
      v30 = *v26;
      v26 += 4;
      v31 = v30;
      DKDDiffAngleInRadians(v24, v28);
      if (v32 < 0.0)
      {
        v32 = -v32;
      }

      v22 = v22 + v32;
      DKDDiffAngleInRadians(v25, v29);
      if (v33 < 0.0)
      {
        v33 = -v33;
      }

      v21 = v21 + v33;
      DKDDiffAngleInRadians(v27, v31);
      if (v34 < 0.0)
      {
        v34 = -v34;
      }

      v20 = v20 + v34;
      v27 = v31;
      v25 = v29;
      v24 = v28;
      --v23;
    }

    while (v23);
    v4 = v49;
    v2 = v50;
    v3 = 0.0;
    v35 = *(v17 + v18 - 8) - v47;
    if (v35 > 0.0)
    {
      v3 = v21 / v35;
      if (v48 > 0.15)
      {
        v36 = v20 / v35;
        v37 = v22 / v35;
        if (v3 >= v37)
        {
          v37 = v3;
        }

        if (v37 >= v36)
        {
          v3 = v37;
        }

        else
        {
          v3 = v36;
        }
      }
    }
  }

  if (*(a1 + 194) == 1 && *(a1 + 66) != 1)
  {
    v38 = *(a1 + 195);
    v40 = 168;
    if (*(a1 + 195))
    {
      v40 = 176;
    }

    v39 = (a1 + v40);
  }

  else
  {
    v38 = 0;
    v39 = (a1 + 168);
  }

  if (v2 - *(a1 + 136) <= 0.3)
  {
    return 0;
  }

  v41 = (v4 / -400.0 + 1.0) * *v39 + *(a1 + 160) * (1.0 - (v4 / -400.0 + 1.0));
  if (v2 - *(a1 + 144) <= v41 || v3 >= 0.5)
  {
    return 0;
  }

  v44 = _PKSignpostLog();
  if (os_signpost_enabled(v44))
  {
    *buf = 134218240;
    v52 = v41;
    v53 = 1024;
    v54 = v38;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v44, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ShapeRecognition", "%.2fs delay, fast:%d", buf, 0x12u);
  }

  v45 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, v45, OS_LOG_TYPE_INFO, "DISCRETE ShapeRecognition", buf, 2u);
  }

  v46 = os_log_create("com.apple.pencilkit", "Actions");
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v52 = v41;
    v53 = 1024;
    v54 = v38;
    _os_log_impl(&dword_1C7CCA000, v46, OS_LOG_TYPE_DEFAULT, "Shape recognition triggered with %.2fs delay, fast:%d", buf, 0x12u);
  }

  return 1;
}

+ (uint64_t)hasSnapToShapeEntitlement
{
  objc_opt_self();
  if (qword_1ED6A5478 != -1)
  {
    dispatch_once(&qword_1ED6A5478, &__block_literal_global_129);
  }

  return _MergedGlobals_164;
}

void __53__PKShapeDrawingController_hasSnapToShapeEntitlement__block_invoke()
{
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.PencilKit.allowsSnapToShape", 0);
    _MergedGlobals_164 = [v2 BOOLValue];
    CFRelease(v1);
  }
}

- (void)setDetectedShape:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 208), a2);
  }
}

@end