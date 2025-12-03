@interface PKStroke
+ ($FF38E1E694A259ECA75E65D4243A6BF6)averagePointForSynthesisFromSourceStrokes:(SEL)strokes;
+ (CGRect)_calculateBounds:(id)bounds transform:(CGAffineTransform *)transform ink:(id)ink inkTransform:(CGAffineTransform *)inkTransform strokePath:(id)path;
+ (PKCompressedStrokePoint)_compressStrokePoint:(SEL)point withTimestamp:(_PKStrokePoint *)timestamp;
+ (PKStroke)allocWithZone:(_NSZone *)zone;
+ (_PKStrokePoint)_decompressStrokePoint:(SEL)point withTimestamp:(PKCompressedStrokePoint *)timestamp;
+ (id)_commonGroupIDForStrokes:(id)strokes;
+ (id)_createStrokesFromCHDrawing:(id)drawing transform:(CGAffineTransform *)transform inputScale:(double)scale sourceStrokes:(id)strokes strokeClass:(Class)class newInk:(id)ink suggestedHeight:(double)height shouldSetSynthesizedFlag:(BOOL)self0;
+ (id)_snapToShape:(id)shape inputScale:(double)scale;
+ (id)_strokesByCullingStrokes:(id)strokes toRectangle:(CGRect)rectangle;
+ (id)_testStrokeFromPoints:(PKCompressedStrokePoint *)points length:(int64_t)length ink:(id)ink;
+ (id)copyStrokes:(id)strokes hidden:(BOOL)hidden;
+ (id)sliceWithEraser:(const void *)eraser toClip:(id)clip;
+ (id)sliceWithEraser:(const void *)eraser toClip:(id)clip clipType:(int)type;
+ (int64_t)_requiredContentVersionForStrokePath:(id)path ink:(id)ink;
+ (void)_applyPropertiesToNewStrokes:(id)strokes fromOldStrokes:(id)oldStrokes;
+ (void)_consumeRenderVertexes:(id)vertexes ink:(id)ink inkTransform:(CGAffineTransform *)transform strokePath:(id)path;
- (BOOL)_containsSamePointsAsStroke:(id)stroke;
- (BOOL)_isBitmapEraserStroke;
- (BOOL)_isInternal;
- (BOOL)_isMaskedStroke;
- (BOOL)_newAsciiBitfield;
- (BOOL)_newAsciiBitfieldWithWidth:(int64_t)width height:(int64_t)height;
- (BOOL)_pathHasAzimuthAngles;
- (BOOL)_pathHasClockwisePointOrdering;
- (BOOL)_shouldBeClippedAgainstLegacyCanvas;
- (BOOL)_visitVisibleSubstrokes:(id)substrokes inDrawing:(id)drawing;
- (BOOL)intersectsClipperPath:(void *)path;
- (BOOL)intersectsClosedStroke:(id)stroke;
- (BOOL)intersectsClosedStrokeMasked:(id)masked;
- (BOOL)intersectsLineFrom:(CGPoint)from to:(CGPoint)to minThreshold:(double)threshold;
- (BOOL)intersectsLineFromMasked:(CGPoint)masked to:(CGPoint)to minThreshold:(double)threshold;
- (BOOL)intersectsPoint:(CGPoint)point;
- (BOOL)intersectsPoint:(CGPoint)point boundsOutset:(double)outset minimumStrokeThreshold:(double)threshold;
- (BOOL)intersectsPointMasked:(CGPoint)masked boundsOutset:(double)outset minimumStrokeThreshold:(double)threshold;
- (BOOL)intersectsRect:(CGRect)rect;
- (BOOL)intersectsRectMasked:(CGRect)masked;
- (CGAffineTransform)_inkTransform;
- (CGPath)_newPathRepresentation;
- (CGPath)newPathRepresentationMasked;
- (CGPath)newSelectionPathRepresentationWithPointsCount:(int *)count;
- (CGPoint)_anchorPointForTexture;
- (CGPoint)_locationAtIndex:(unint64_t)index;
- (CGPoint)_locationAtIndex:(unint64_t)index applyStrokeTransform:(BOOL)transform;
- (CGPoint)intersectionFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint;
- (CGRect)_calculateBounds;
- (CGRect)_untransformedBounds;
- (NSArray)maskedPathRanges;
- (NSUUID)_strokeDataUUID;
- (PKContentVersion)requiredContentVersion;
- (PKStroke)init;
- (PKStroke)initWithData:(id)data id:(id)id flags:(id)flags ink:(id)ink transform:(CGAffineTransform *)transform substrokes:(id)substrokes;
- (PKStroke)initWithData:(id)data id:(id)id hidden:(BOOL)hidden ink:(id)ink transform:(CGAffineTransform *)transform substrokes:(id)substrokes;
- (PKStroke)initWithInk:(PKInk *)ink strokePath:(PKStrokePath *)strokePath transform:(CGAffineTransform *)transform mask:(UIBezierPath *)mask;
- (PKStroke)initWithInk:(PKInk *)ink strokePath:(PKStrokePath *)strokePath transform:(CGAffineTransform *)transform mask:(UIBezierPath *)mask randomSeed:(uint32_t)randomSeed;
- (PKStroke)strokeWithInk:(id)ink;
- (UIBezierPath)mask;
- (double)_maxWidthForStroke;
- (double)_particleOffsetAt:(double)at forSecondaryParticles:(BOOL)particles;
- (double)_thresholdForPoint:(_PKStrokePoint *)point;
- (double)_timestampAtIndex:(unint64_t)index;
- (double)endTimestamp;
- (double)startTimestamp;
- (double)timestamp;
- (double)timestampAtIndex:(unint64_t)index;
- (id)_ascii;
- (id)_initWithPath:(CGPath *)path ink:(id)ink maxSegmentLength:(double)length inputScale:(double)scale velocityForDistanceFunction:(id)function;
- (id)_mergeWithStroke:(id)stroke inDrawing:(id)drawing;
- (id)_newStrokeWithSubstrokes:(id)substrokes inDrawing:(id)drawing;
- (id)_sliceWithSlicingBlock:(id)block inDrawing:(id)drawing newRootStroke:(id *)stroke;
- (id)_strokeWithUUID:(id)d dataUUID:(id)iD;
- (id)_substrokeWithRange:(_NSRange)range;
- (id)_updateStroke:(id)stroke inDrawing:(id)drawing;
- (id)debugQuickLookObject;
- (id)descriptionAtDepth:(int64_t)depth;
- (id)sliceWithEraser:(const void *)eraser;
- (id)sliceWithMask:(const void *)mask;
- (int64_t)_inputType;
- (int64_t)_visibleSubstrokeCountInDrawing:(id)drawing;
- (uint32_t)randomSeed;
- (unint64_t)_pointsCount;
- (unint64_t)hash;
- (void)_addVisibleSubstrokesTo:(id)to inDrawing:(id)drawing;
- (void)_appendPointsOfInterestForSelection:(void *)selection step:(double)step;
- (void)_appendPointsOfInterestForSelectionMasked:(void *)masked;
- (void)_applyTransform:(CGAffineTransform *)transform;
- (void)_setHidden:(BOOL)hidden;
- (void)_setIsInProgressScribbleStroke:(BOOL)stroke;
- (void)_setIsNewCopy:(BOOL)copy;
- (void)_setIsPastedStroke:(BOOL)stroke;
- (void)_setIsSafeForStyleInventory:(BOOL)inventory;
- (void)_setIsSharedStroke:(BOOL)stroke;
- (void)_setIsSynthesizedInk:(BOOL)ink;
- (void)_setRandomSeed:(unsigned int)seed;
- (void)debugRender:(CGContext *)render;
- (void)debugRenderMasked:(CGContext *)masked;
- (void)enumeratePointsWithDistanceStep:(double)step usingBlock:(id)block;
- (void)enumeratePointsWithTimestep:(double)timestep usingBlock:(id)block;
- (void)generateClipPaths:(void *)paths transform:(CGAffineTransform *)transform;
- (void)generateClipperPath:(void *)path;
- (void)generateMask;
- (void)interpolatePointDataWithStep:(double)step from:(double)from to:(double)to usingBlock:(id)block;
- (void)interpolatePointDataWithStep:(double)step usingBlock:(id)block;
@end

@implementation PKStroke

- (PKStroke)init
{
  v3.receiver = self;
  v3.super_class = PKStroke;
  return [(PKStroke *)&v3 init];
}

- (void)generateClipPaths:(void *)paths transform:(CGAffineTransform *)transform
{
  v66 = *MEMORY[0x1E69E9840];
  _clipPlane = [(PKStroke *)self _clipPlane];
  if (_clipPlane)
  {
    [(PKStroke *)self _untransformedBounds];
    v68 = CGRectInset(v67, -100.0, -100.0);
    x = v68.origin.x;
    y = v68.origin.y;
    width = v68.size.width;
    height = v68.size.height;
    MinX = CGRectGetMinX(v68);
    v69.origin.x = x;
    v69.origin.y = y;
    v69.size.width = width;
    v69.size.height = height;
    *&v58 = MinX;
    *(&v58 + 1) = CGRectGetMaxY(v69);
    v70.origin.x = x;
    v70.origin.y = y;
    v70.size.width = width;
    v70.size.height = height;
    MaxX = CGRectGetMaxX(v70);
    v71.origin.x = x;
    v71.origin.y = y;
    v71.size.width = width;
    v71.size.height = height;
    v59 = MaxX;
    MaxY = CGRectGetMaxY(v71);
    v72.origin.x = x;
    v72.origin.y = y;
    v72.size.width = width;
    v72.size.height = height;
    v14 = CGRectGetMaxX(v72);
    v73.origin.x = x;
    v73.origin.y = y;
    v73.size.width = width;
    v73.size.height = height;
    v61 = v14;
    MinY = CGRectGetMinY(v73);
    v74.origin.x = x;
    v74.origin.y = y;
    v74.size.width = width;
    v74.size.height = height;
    v15 = CGRectGetMinX(v74);
    v75.origin.x = x;
    v75.origin.y = y;
    v75.size.width = width;
    v75.size.height = height;
    v63 = v15;
    v64 = CGRectGetMinY(v75);
    v65 = v58;
    [_clipPlane normal];
    v17 = v16;
    v19 = v18;
    v20 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    do
    {
      v22 = *(&v58 + v20);
      v21 = *(&v58 + v20 + 8);
      *__p = *(&v58 + v20 + 16);
      [_clipPlane distanceToPoint:{v22, v21}];
      v24 = v23;
      [_clipPlane distanceToPoint:{*__p, *&__p[1]}];
      if (v24 < 0.0 || v25 >= 0.0)
      {
        if (v24 >= 0.0 || v25 < 0.0)
        {
          if (v24 >= 0.0 && v25 >= 0.0)
          {
            std::vector<CGPoint>::push_back[abi:ne200100](&v55, __p);
          }
        }

        else
        {
          v30 = 1.0 / sqrt((*&__p[1] - v21) * (*&__p[1] - v21) + (*__p - v22) * (*__p - v22));
          v31 = (*__p - v22) * v30;
          v32 = (*&__p[1] - v21) * v30;
          v33 = v24 / (v19 * v32 + v31 * v17);
          *&v51 = v22 - v31 * v33;
          *(&v51 + 1) = v21 - v32 * v33;
          std::vector<CGPoint>::push_back[abi:ne200100](&v55, &v51);
          std::vector<CGPoint>::push_back[abi:ne200100](&v55, __p);
        }
      }

      else
      {
        v26 = 1.0 / sqrt((*&__p[1] - v21) * (*&__p[1] - v21) + (*__p - v22) * (*__p - v22));
        v27 = (*__p - v22) * v26;
        v28 = (*&__p[1] - v21) * v26;
        v29 = v24 / (v19 * v28 + v27 * v17);
        *&v51 = v22 - v27 * v29;
        *(&v51 + 1) = v21 - v28 * v29;
        std::vector<CGPoint>::push_back[abi:ne200100](&v55, &v51);
      }

      v20 += 16;
    }

    while (v20 != 64);
    v34 = v55;
    if (v56 != v55)
    {
      v35 = 0;
      v36 = 0;
      __p[0] = 0;
      __p[1] = 0;
      v54 = 0;
      v50 = vdupq_n_s64(0x4059000000000000uLL);
      __asm { FMOV            V0.2S, #-1.0 }

      v42 = -_D0;
      do
      {
        v43 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, *&v34[v35 + 8]), *&transform->a, *&v34[v35])), v50)));
        *&v44 = v43.i32[0];
        *(&v44 + 1) = v43.i32[1];
        v51 = v44;
        v52 = v42;
        std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](__p, &v51);
        ++v36;
        v34 = v55;
        v35 += 16;
      }

      while (v36 < (v56 - v55) >> 4);
      if (ClipperLib::Area(__p) >= 0.0 && __p[0] != __p[1])
      {
        v45 = __p[1] - 24;
        if (__p[1] - 24 > __p[0])
        {
          v46 = __p[0] + 24;
          do
          {
            v47 = *(v46 - 1);
            v48 = *(v46 - 24);
            v49 = *(v45 + 2);
            *(v46 - 24) = *v45;
            *(v46 - 1) = v49;
            *v45 = v48;
            *(v45 + 2) = v47;
            v45 -= 24;
            _CF = v46 >= v45;
            v46 += 24;
          }

          while (!_CF);
        }
      }

      std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](paths, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v34 = v55;
    }

    if (v34)
    {
      v56 = v34;
      operator delete(v34);
    }
  }
}

- (BOOL)_shouldBeClippedAgainstLegacyCanvas
{
  if ([(PKStroke *)self _isHidden])
  {
    return 0;
  }

  v3 = [(PKStroke *)self ink];
  identifier = [v3 identifier];
  v5 = [identifier isEqualToString:@"com.apple.ink.eraser"];

  if (v5)
  {
    return 0;
  }

  [(PKStroke *)self _bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  v13.size.width = 1024.0;
  v13.size.height = 768.0;
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v14 = CGRectIntersection(v11, v13);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  return !CGRectEqualToRect(v12, v14);
}

+ ($FF38E1E694A259ECA75E65D4243A6BF6)averagePointForSynthesisFromSourceStrokes:(SEL)strokes
{
  v7 = a4;
  if ([v7 count])
  {
    v5 = objc_alloc_init(PKAveragePointGenerator);
    [(PKAveragePointGenerator *)v5 addStrokes:v7];
    retstr->var15 = 0;
    *&retstr->var11 = 0u;
    *&retstr->var13 = 0u;
    *&retstr->var7 = 0u;
    *&retstr->var9 = 0u;
    *&retstr->var3 = 0u;
    *&retstr->var5 = 0u;
    retstr->var0 = 0u;
    *&retstr->var1 = 0u;
    [(PKAveragePointGenerator *)v5 currentInputPoint];
  }

  else
  {
    *&retstr->var11 = xmmword_1C801CA88;
    *&retstr->var13 = unk_1C801CA98;
    retstr->var15 = 0;
    *&retstr->var3 = xmmword_1C801CA48;
    *&retstr->var5 = unk_1C801CA58;
    *&retstr->var7 = xmmword_1C801CA68;
    *&retstr->var9 = unk_1C801CA78;
    retstr->var0 = PKInkingToolWidthCalcPoint;
    *&retstr->var1 = unk_1C801CA38;
  }

  return result;
}

+ (id)_createStrokesFromCHDrawing:(id)drawing transform:(CGAffineTransform *)transform inputScale:(double)scale sourceStrokes:(id)strokes strokeClass:(Class)class newInk:(id)ink suggestedHeight:(double)height shouldSetSynthesizedFlag:(BOOL)self0
{
  v162[1] = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  strokesCopy = strokes;
  inkCopy = ink;
  v130 = drawingCopy;
  if (![drawingCopy strokeCount])
  {
    array = 0;
    goto LABEL_92;
  }

  v124 = inkCopy;
  v123 = [strokesCopy indexesOfObjectsPassingTest:&__block_literal_global_38];
  if ([v123 count])
  {
    v18 = [strokesCopy objectsAtIndexes:v123];

    v19 = v18;
  }

  else
  {
    v19 = strokesCopy;
  }

  strokesCopy = v19;
  firstObject = [v19 firstObject];
  v21 = firstObject;
  if (inkCopy && firstObject)
  {
    v22 = [class alloc];
    _strokeData = [v21 _strokeData];
    [v21 transform];
    mask = [v21 mask];
    v24 = [v22 initWithInk:inkCopy strokePath:_strokeData transform:&v144 mask:mask];

    firstObject = v24;
    if (!v24)
    {
      goto LABEL_11;
    }
  }

  else if (!firstObject)
  {
LABEL_11:
    v25 = [PKStrokePoint alloc];
    v26 = [(PKStrokePoint *)v25 initWithLocation:*MEMORY[0x1E695EFF8] timeOffset:*(MEMORY[0x1E695EFF8] + 8) size:0.0 opacity:3.0 force:3.0 azimuth:1.0 altitude:1.0, 0.0, 0];
    v27 = [class alloc];
    v28 = inkCopy;
    if (!inkCopy)
    {
      v29 = [PKInk alloc];
      mask = [MEMORY[0x1E69DC888] blackColor];
      v28 = [(PKInk *)v29 initWithInkType:@"com.apple.ink.monoline" color:mask];
    }

    v30 = [PKStrokePath alloc];
    v162[0] = v26;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v162 count:1];
    v32 = [MEMORY[0x1E695DF00] now];
    v33 = [(PKStrokePath *)v30 initWithControlPoints:v31 creationDate:v32];
    v34 = *(MEMORY[0x1E695EFD0] + 16);
    v144 = *MEMORY[0x1E695EFD0];
    v145 = v34;
    v146 = *(MEMORY[0x1E695EFD0] + 32);
    v35 = [v27 initWithInk:v28 strokePath:v33 transform:&v144 mask:0];

    if (!v124)
    {
    }

    firstObject = v35;
  }

  v129 = firstObject;
  path = [firstObject path];
  if ([path count])
  {
    v37 = [v129 ink];
    _isFountainPenInk = [v37 _isFountainPenInk];

    v126 = _isFountainPenInk ^ 1;
  }

  else
  {
    v126 = 0;
  }

  v152 = 0;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  [PKStroke averagePointForSynthesisFromSourceStrokes:strokesCopy];
  array = [MEMORY[0x1E695DF70] array];
  for (i = 0; [v130 strokeCount] > i; ++i)
  {
    v40 = [v130 pointCountForStrokeIndex:i];
    if (v40)
    {
      __p = 0;
      v142 = 0;
      v143 = 0;
      std::vector<CGPoint>::reserve(&__p, v40);
      for (j = 0; j != v40; ++j)
      {
        [v130 pointForStrokeIndex:i pointIndex:j];
        v44 = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, v42), *&transform->a, v43));
        v45 = __p;
        v46 = v142;
        v47 = v142 - __p;
        if (v142 == __p || *(v142 - 2) != v44.f64[0] || *(v142 - 1) != v44.f64[1])
        {
          if (v142 >= v143)
          {
            v49 = v47 >> 4;
            v50 = (v47 >> 4) + 1;
            if (v50 >> 60)
            {
              std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
            }

            v51 = v143 - __p;
            if ((v143 - __p) >> 3 > v50)
            {
              v50 = v51 >> 3;
            }

            v52 = v51 >= 0x7FFFFFFFFFFFFFF0;
            v53 = 0xFFFFFFFFFFFFFFFLL;
            if (!v52)
            {
              v53 = v50;
            }

            if (v53)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(&__p, v53);
            }

            *(16 * v49) = v44;
            v48 = 16 * v49 + 16;
            memcpy(0, v45, v47);
            v54 = __p;
            __p = 0;
            v142 = v48;
            v143 = 0;
            if (v54)
            {
              operator delete(v54);
            }
          }

          else
          {
            *v142 = v44;
            v48 = (v46 + 16);
          }

          v142 = v48;
        }
      }

      v55 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v56 = [v129 ink];
        identifier = [v56 identifier];
        v58 = [v129 ink];
        [v58 _weight];
        v60 = v59;
        v61 = [v129 ink];
        _weightIsUndefined = [v61 _weightIsUndefined];
        *buf = 138412802;
        *&buf[4] = identifier;
        *&buf[12] = 2048;
        *&buf[14] = v60;
        *&buf[22] = 1024;
        *&buf[24] = _weightIsUndefined;
        _os_log_impl(&dword_1C7CCA000, v55, OS_LOG_TYPE_INFO, "Synthesize stroke with ink: %@, weight: %g, undefined: %d", buf, 0x1Cu);
      }

      if (v126)
      {
        v131 = objc_alloc_init(PKAveragePointGenerator);
        if ([strokesCopy count])
        {
          [(PKAveragePointGenerator *)v131 addStrokes:strokesCopy];
        }

        else
        {
          [(PKAveragePointGenerator *)v131 addStroke:v129];
        }

        v157 = 0u;
        v158 = 0u;
        v155 = 0u;
        v156 = 0u;
        memset(buf, 0, sizeof(buf));
        [(PKAveragePointGenerator *)v131 currentStrokePoint];
        v95 = __p;
        v94 = v142;
        v96 = (v142 - __p) >> 4;
        std::vector<PKCompressedStrokePoint>::vector[abi:ne200100](&v139, v96);
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v98 = v97;
        if (v94 != v95)
        {
          v99 = 0;
          v100 = 0;
          v101 = 0;
          if (v96 <= 1)
          {
            v96 = 1;
          }

          if (*&buf[24] >= height * 0.142857143 + 2.0)
          {
            v102 = height * 0.142857143 + 2.0;
          }

          else
          {
            v102 = *&buf[24];
          }

          if (height <= 0.0)
          {
            v103 = *&buf[24];
          }

          else
          {
            v103 = v102;
          }

          do
          {
            v136.location = *(__p + v99);
            v136.timestamp = v98 + v101 * 0.0166666667;
            v136.radius = v103;
            *&v136.aspectRatio = v155;
            *&v136.force = v156;
            *&v136.altitude = v157;
            *&v136.radius2 = v158;
            PKCompressStrokePoint(&v136, v98, v137);
            v104 = (v139 + v100);
            v105 = v137[1];
            *v104 = v137[0];
            v104[1] = v105;
            v104[2].i32[0] = v138;
            ++v101;
            v100 += 36;
            v99 += 16;
          }

          while (v96 != v101);
        }

        v106 = [PKStrokePath alloc];
        v107 = v139;
        v108 = v140;
        _inputType = [v129 _inputType];
        uUID = [MEMORY[0x1E696AFB0] UUID];
        v111 = [(PKStrokePath *)v106 initWithPoints:v107 count:0x8E38E38E38E38E39 * ((v108 - v107) >> 2) immutableCount:0x8E38E38E38E38E39 * ((v108 - v107) >> 2) inputType:_inputType timestamp:uUID UUID:v98];

        v112 = objc_alloc(objc_opt_class());
        v113 = [v129 ink];
        v114 = *(MEMORY[0x1E695EFD0] + 16);
        *&v136.timestamp = *MEMORY[0x1E695EFD0];
        *&v136.location.y = v114;
        *&v136.aspectRatio = *(MEMORY[0x1E695EFD0] + 32);
        v115 = [v112 initWithInk:v113 strokePath:v111 transform:&v136 mask:0];

        [array addObject:v115];
        if (v139)
        {
          v140 = v139;
          operator delete(v139);
        }
      }

      else
      {
        if (v129)
        {
          [v129 transform];
          v63 = *buf;
          v64 = *&buf[8];
        }

        else
        {
          v64 = 0.0;
          v63 = 0.0;
        }

        v131 = objc_alloc_init(PKStrokeGenerator);
        v65 = ((v142 - __p) >> 4) - 1;
        if ((v142 - __p) >> 4 == 1)
        {
          v69 = 0.0;
        }

        else
        {
          v68 = *__p;
          v67 = *(__p + 1);
          v66 = (__p + 24);
          v69 = 0.0;
          do
          {
            v70 = *(v66 - 1);
            v71 = *v66;
            v69 = v69 + sqrt((v67 - *v66) * (v67 - *v66) + (v68 - v70) * (v68 - v70));
            v66 += 2;
            v67 = v71;
            v68 = v70;
            --v65;
          }

          while (v65);
        }

        *(&v146 + 1) = v69 / (v40 * 0.0166666667 * scale);
        v159 = v150;
        v160 = v151;
        v161 = v152;
        v155 = v146;
        v156 = v147;
        v157 = v148;
        v158 = v149;
        *buf = v144;
        *&buf[16] = v145;
        v72 = [(PKAveragePointGenerator *)v131 strokeFromPoints:&__p sourceStroke:v129 inputScale:buf averageInputPoint:scale];
        v73 = v72;
        v74 = sqrt(v64 * v64 + v63 * v63);
        if (fabs(v74 + -1.0) >= 0.00999999978)
        {
          _strokeData2 = [v72 _strokeData];
          v76 = [_strokeData2 count];
          std::vector<PKCompressedStrokePoint>::vector[abi:ne200100](&v136, v76);
          if (v76)
          {
            v77 = 0;
            for (k = 0; k != v76; ++k)
            {
              LODWORD(v155) = 0;
              memset(buf, 0, sizeof(buf));
              if (_strokeData2)
              {
                [_strokeData2 _compressedPointAt:k];
                v79 = *&buf[12] + -2.0;
              }

              else
              {
                v79 = -2.0;
              }

              v80 = v79 * v74 + 2.0;
              *&buf[12] = v80;
              v81 = *&v136.timestamp + v77;
              v82 = *buf;
              v83 = *&buf[16];
              *(v81 + 32) = v155;
              *v81 = v82;
              *(v81 + 16) = v83;
              v77 += 36;
            }
          }

          v84 = [PKStrokePath alloc];
          timestamp = v136.timestamp;
          x = v136.location.x;
          _inputType2 = [v129 _inputType];
          [v73 timestamp];
          v89 = v88;
          uUID2 = [MEMORY[0x1E696AFB0] UUID];
          v91 = [(PKStrokePath *)v84 initWithPoints:*&timestamp count:0x8E38E38E38E38E39 * ((*&x - *&timestamp) >> 2) immutableCount:0x8E38E38E38E38E39 * ((*&x - *&timestamp) >> 2) inputType:_inputType2 timestamp:uUID2 UUID:v89];

          v92 = objc_alloc(objc_opt_class());
          v93 = [v73 ink];
          if (v73)
          {
            [v73 transform];
          }

          else
          {
            v155 = 0u;
            memset(buf, 0, sizeof(buf));
          }

          v116 = [v92 initWithInk:v93 strokePath:v91 transform:buf mask:0];

          if (*&v136.timestamp)
          {
            v136.location.x = v136.timestamp;
            operator delete(*&v136.timestamp);
          }

          v73 = v116;
        }

        [array addObject:v73];
      }

      if (__p)
      {
        v142 = __p;
        operator delete(__p);
      }
    }
  }

  if (flag)
  {
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v117 = array;
    v118 = [v117 countByEnumeratingWithState:&v132 objects:v153 count:16];
    if (v118)
    {
      v119 = *v133;
      do
      {
        for (m = 0; m != v118; ++m)
        {
          if (*v133 != v119)
          {
            objc_enumerationMutation(v117);
          }

          [*(*(&v132 + 1) + 8 * m) _setIsSynthesizedInk:1];
        }

        v118 = [v117 countByEnumeratingWithState:&v132 objects:v153 count:16];
      }

      while (v118);
    }
  }

  inkCopy = v124;
LABEL_92:

  return array;
}

+ (PKStroke)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [_PKStrokeConcrete allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___PKStroke;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (id)_initWithPath:(CGPath *)path ink:(id)ink maxSegmentLength:(double)length inputScale:(double)scale velocityForDistanceFunction:(id)function
{
  inkCopy = ink;
  functionCopy = function;
  v14 = objc_alloc_init(PKStrokeGenerator);
  v15 = [(PKStrokeGenerator *)v14 strokeFromPath:path ink:inkCopy inputScale:functionCopy maxSegmentLength:objc_opt_class() velocityForDistanceFunction:scale strokeClass:length];

  return v15;
}

- (PKStroke)initWithData:(id)data id:(id)id hidden:(BOOL)hidden ink:(id)ink transform:(CGAffineTransform *)transform substrokes:(id)substrokes
{
  hiddenCopy = hidden;
  dataCopy = data;
  idCopy = id;
  inkCopy = ink;
  substrokesCopy = substrokes;
  _legacyRandomSeed = [dataCopy _legacyRandomSeed];
  v19 = *&transform->c;
  v22[0] = *&transform->a;
  v22[1] = v19;
  v22[2] = *&transform->tx;
  v20 = [(PKStroke *)self initWithData:dataCopy id:idCopy flags:hiddenCopy | (32 * _legacyRandomSeed) | 0x2000000000 ink:inkCopy transform:v22 substrokes:substrokesCopy];

  return v20;
}

- (PKStroke)initWithData:(id)data id:(id)id flags:(id)flags ink:(id)ink transform:(CGAffineTransform *)transform substrokes:(id)substrokes
{
  v9 = *(&flags.var0.var1 + 1);
  dataCopy = data;
  idCopy = id;
  v13 = v9;
  transformCopy = transform;
  PKCrash();
}

- (PKStroke)initWithInk:(PKInk *)ink strokePath:(PKStrokePath *)strokePath transform:(CGAffineTransform *)transform mask:(UIBezierPath *)mask
{
  v10 = ink;
  v11 = strokePath;
  v12 = mask;
  v13 = *&transform->c;
  v16[0] = *&transform->a;
  v16[1] = v13;
  v16[2] = *&transform->tx;
  v14 = [(PKStroke *)self initWithInk:v10 strokePath:v11 transform:v16 mask:v12 randomSeed:arc4random()];

  return v14;
}

- (PKStroke)initWithInk:(PKInk *)ink strokePath:(PKStrokePath *)strokePath transform:(CGAffineTransform *)transform mask:(UIBezierPath *)mask randomSeed:(uint32_t)randomSeed
{
  v9 = ink;
  v10 = strokePath;
  v11 = mask;
  PKCrash();
}

- (PKStroke)strokeWithInk:(id)ink
{
  inkCopy = ink;
  path = [(PKStroke *)self path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [path regenerateStrokeWithInk:inkCopy randomSeed:-[PKStroke randomSeed](self strokeClass:{"randomSeed"), objc_opt_class()}];
    [(PKStroke *)self transform];
    [v6 _setTransform:v10];
    _strokeMask = [(PKStroke *)self _strokeMask];
    [v6 _setStrokeMask:_strokeMask];
  }

  else
  {
    v8 = objc_alloc(objc_opt_class());
    [(PKStroke *)self transform];
    _strokeMask = [(PKStroke *)self mask];
    v6 = [v8 initWithInk:inkCopy strokePath:path transform:v10 mask:_strokeMask];
  }

  return v6;
}

- (NSUUID)_strokeDataUUID
{
  path = [(PKStroke *)self path];
  _strokeDataUUID = [path _strokeDataUUID];

  return _strokeDataUUID;
}

- (void)_setIsSynthesizedInk:(BOOL)ink
{
  inkCopy = ink;
  _flags = [(PKStroke *)self _flags];
  v6 = 0x10000000000;
  if (!inkCopy)
  {
    v6 = 0;
  }

  [(PKStroke *)self _setFlags:_flags & 0xFFFFFEFFFFFFFFFFLL | v6];
}

- (void)_setIsSafeForStyleInventory:(BOOL)inventory
{
  inventoryCopy = inventory;
  _flags = [(PKStroke *)self _flags];
  v6 = 0x40000000000;
  if (!inventoryCopy)
  {
    v6 = 0;
  }

  [(PKStroke *)self _setFlags:_flags & 0xFFFFFBFFFFFFFFFFLL | v6];
}

- (void)_setIsPastedStroke:(BOOL)stroke
{
  strokeCopy = stroke;
  _flags = [(PKStroke *)self _flags];
  v6 = 0x80000000000;
  if (!strokeCopy)
  {
    v6 = 0;
  }

  [(PKStroke *)self _setFlags:_flags & 0xFFFFF7FFFFFFFFFFLL | v6];
}

- (void)_setIsSharedStroke:(BOOL)stroke
{
  strokeCopy = stroke;
  _flags = [(PKStroke *)self _flags];
  v6 = 0x100000000000;
  if (!strokeCopy)
  {
    v6 = 0;
  }

  [(PKStroke *)self _setFlags:_flags & 0xFFFFEFFFFFFFFFFFLL | v6];
}

- (void)_setHidden:(BOOL)hidden
{
  v4 = [(PKStroke *)self _flags]& 0xFFFFFFFFFFFFFFFELL | hidden;

  [(PKStroke *)self _setFlags:v4];
}

- (void)_setIsNewCopy:(BOOL)copy
{
  copyCopy = copy;
  _flags = [(PKStroke *)self _flags];
  v6 = 16;
  if (!copyCopy)
  {
    v6 = 0;
  }

  [(PKStroke *)self _setFlags:_flags & 0xFFFFFFFFFFFFFFEFLL | v6];
}

- (void)_setIsInProgressScribbleStroke:(BOOL)stroke
{
  strokeCopy = stroke;
  _flags = [(PKStroke *)self _flags];
  v6 = 0x4000000000;
  if (!strokeCopy)
  {
    v6 = 0;
  }

  [(PKStroke *)self _setFlags:_flags & 0xFFFFFFBFFFFFFFFFLL | v6];
}

- (CGPath)_newPathRepresentation
{
  _strokeMask = [(PKStroke *)self _strokeMask];

  if (_strokeMask)
  {

    return [(PKStroke *)self newPathRepresentationMasked];
  }

  else
  {
    path = [(PKStroke *)self path];
    _newPathRepresentation = [path _newPathRepresentation];

    return _newPathRepresentation;
  }
}

- (unint64_t)_pointsCount
{
  path = [(PKStroke *)self path];
  _pointsCount = [path _pointsCount];

  return _pointsCount;
}

- (void)_setRandomSeed:(unsigned int)seed
{
  v4 = [(PKStroke *)self _flags]& 0xFFFFFFC00000001FLL | (32 * seed) | 0x2000000000;

  [(PKStroke *)self _setFlags:v4];
}

- (uint32_t)randomSeed
{
  if (([(PKStroke *)self _flags]& 0x2000000000) != 0)
  {
    return [(PKStroke *)self _flags]>> 5;
  }

  else
  {
    _strokeData = [(PKStroke *)self _strokeData];
    LODWORD(v4) = [_strokeData _legacyRandomSeed];
  }

  return v4;
}

- (UIBezierPath)mask
{
  _strokeMask = [(PKStroke *)self _strokeMask];
  bezierPath = [_strokeMask bezierPath];

  return bezierPath;
}

- (NSArray)maskedPathRanges
{
  v16[1] = *MEMORY[0x1E69E9840];
  _strokeMask = [(PKStroke *)self _strokeMask];
  v4 = _strokeMask;
  if (_strokeMask)
  {
    v5 = MEMORY[0x1E695DF70];
    centerlineSlices = [_strokeMask centerlineSlices];
    v7 = [v5 arrayWithCapacity:(centerlineSlices[1] - *centerlineSlices) >> 4];
    centerlineSlices2 = [v4 centerlineSlices];
    v9 = *centerlineSlices2;
    v10 = centerlineSlices2[1];
    if (*centerlineSlices2 != v10)
    {
      do
      {
        v11 = [[PKFloatRange alloc] initWithLowerBound:*v9 upperBound:v9[1]];
        [v7 addObject:v11];

        v9 += 2;
      }

      while (v9 != v10);
    }
  }

  else
  {
    v12 = [PKFloatRange alloc];
    path = [(PKStroke *)self path];
    v14 = -[PKFloatRange initWithLowerBound:upperBound:](v12, "initWithLowerBound:upperBound:", 0.0, ([path count] - 1));
    v16[0] = v14;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  }

  return v7;
}

- (unint64_t)hash
{
  _strokeUUID = [(PKStroke *)self _strokeUUID];
  v3 = [_strokeUUID hash];

  return v3;
}

- (double)timestamp
{
  path = [(PKStroke *)self path];
  [path _timestamp];
  v4 = v3;

  return v4;
}

- (int64_t)_inputType
{
  path = [(PKStroke *)self path];
  _inputType = [path _inputType];

  return _inputType;
}

- (BOOL)_isInternal
{
  v3 = [(PKStroke *)self ink];
  if ([v3 _isEraserInk])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PKStroke *)self ink];
    if ([v5 _isLassoInk])
    {
      v4 = 1;
    }

    else
    {
      _clipPlane = [(PKStroke *)self _clipPlane];
      v4 = _clipPlane != 0;
    }
  }

  return v4;
}

+ (void)_consumeRenderVertexes:(id)vertexes ink:(id)ink inkTransform:(CGAffineTransform *)transform strokePath:(id)path
{
  vertexesCopy = vertexes;
  inkCopy = ink;
  pathCopy = path;
  behavior = [inkCopy behavior];
  particleDescriptor = [behavior particleDescriptor];

  if (particleDescriptor)
  {
    [particleDescriptor particleSize];
    [particleDescriptor particleRotation];
  }

  else
  {
    [inkCopy particleRotation];
  }

  operator new();
}

void __63__PKStroke__consumeRenderVertexes_ink_inkTransform_strokePath___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = **(a1 + 40) + 96 * a2;
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);
  v35 = *(v7 + 32);
  v11 = *(v7 + 40);
  v12 = *(v7 + 56);
  if (v6)
  {
    v13 = *(v7 + 80);
    a = *(a1 + 48);
    v33 = *(a1 + 72);
    v34 = *(a1 + 56);
    ty = *(a1 + 88);
    if ([v6 _isFountainPenInkV2])
    {
      v16 = 0.0;
      if (v13 >= 0.0)
      {
        v16 = v13;
        if (v13 > 1.0)
        {
          v16 = 1.0;
        }
      }

      *(&v17 + 1) = *(&v33 + 1);
      *&v17 = 1.0 - v16 + *&v33 * (1.0 - (1.0 - v16));
      v18 = v34;
    }

    else
    {
      v17 = v33;
      v18 = v34;
    }
  }

  else
  {
    v18 = 0uLL;
    ty = 0.0;
    a = 0.0;
    v17 = 0uLL;
  }

  angle = v12;
  if (*(a1 + 120) == 1)
  {
    *&t1.b = v18;
    *&t1.d = v17;
    t1.a = a;
    t1.ty = ty;
    CGAffineTransformMakeRotation(&t2, v12);
    CGAffineTransformConcat(&v40, &t1, &t2);
    v18 = *&v40.b;
    v17 = *&v40.d;
    a = v40.a;
    ty = v40.ty;
  }

  *&t1.d = v17;
  *&t1.b = v18;
  t1.a = a;
  t1.ty = ty;
  CGAffineTransformMakeTranslation(&t2, v8, v9);
  CGAffineTransformConcat(&v40, &t1, &t2);
  v19 = 0;
  v20 = v40.a;
  b = v40.b;
  c = v40.c;
  d = v40.d;
  tx = v40.tx;
  v25 = v40.ty;
  v26 = *(a1 + 112);
  v27 = v26 + v10 * v35 * *(a1 + 96);
  v28 = v26 + v10 * *(a1 + 104);
  v40.a = -v27;
  v40.b = -v28;
  v40.c = v27;
  v40.d = -v28;
  v40.tx = v27;
  v40.ty = v28;
  v41 = -v27;
  v42 = v28;
  do
  {
    v5[2](v5, tx + c * *(&v40.b + v19) + v20 * *(&v40.a + v19), v25 + d * *(&v40.b + v19) + b * *(&v40.a + v19));
    v19 += 16;
  }

  while (v19 != 64);
  if (v11 != 0.0)
  {
    memset(&t1, 0, sizeof(t1));
    CGAffineTransformMakeRotation(&t1, angle);
    v37 = t1;
    v36.a = v20;
    v36.b = b;
    v36.c = c;
    v36.d = d;
    v36.tx = tx;
    v36.ty = v25;
    CGAffineTransformConcat(&t2, &v37, &v36);
    t1 = t2;
    p_b = &v40.b;
    v30 = 4;
    do
    {
      v31 = vaddq_f64(*&t1.tx, vmlaq_n_f64(vmulq_n_f64(*&t1.c, *p_b + 0.0), *&t1.a, *(p_b - 1) - v11));
      (v5[2])(v5, v31, v31.n128_f64[1]);
      p_b += 2;
      --v30;
    }

    while (v30);
  }
}

- (CGRect)_calculateBounds
{
  if ([(PKStroke *)self hasSubstrokes])
  {
    v3 = *MEMORY[0x1E695F050];
    v4 = *(MEMORY[0x1E695F050] + 8);
    v5 = *(MEMORY[0x1E695F050] + 16);
    v6 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    _strokeMask = [(PKStroke *)self _strokeMask];
    [(PKStroke *)self _transform];
    v8 = [(PKStroke *)self ink];
    [(PKStroke *)self _inkTransform];
    path = [(PKStroke *)self path];
    [PKStroke _calculateBounds:_strokeMask transform:v19 ink:v8 inkTransform:&v18 strokePath:path];
    v3 = v10;
    v4 = v11;
    v5 = v12;
    v6 = v13;
  }

  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

+ (CGRect)_calculateBounds:(id)bounds transform:(CGAffineTransform *)transform ink:(id)ink inkTransform:(CGAffineTransform *)inkTransform strokePath:(id)path
{
  boundsCopy = bounds;
  inkCopy = ink;
  pathCopy = path;
  v14 = pathCopy;
  if (boundsCopy)
  {
    v15 = *&transform->c;
    v60 = *&transform->a;
    v61 = v15;
    v62 = *&transform->tx;
    [boundsCopy _boundsWithTransform:&v60];
    x = v16;
    y = v18;
    width = v20;
    height = v22;
  }

  else if ([pathCopy count])
  {
    v24 = *&transform->c;
    v41 = *&transform->a;
    v42 = v24;
    v43 = *&transform->tx;
    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v59 = 0x7FEFFFFFFFFFFFFFLL;
    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0xFFEFFFFFFFFFFFFFLL;
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0x7FEFFFFFFFFFFFFFLL;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0xFFEFFFFFFFFFFFFFLL;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__PKStroke__calculateBounds_transform_ink_inkTransform_strokePath___block_invoke;
    aBlock[3] = &unk_1E82D8FD0;
    aBlock[4] = &v56;
    aBlock[5] = &v52;
    aBlock[6] = &v48;
    aBlock[7] = &v44;
    v25 = _Block_copy(aBlock);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __67__PKStroke__calculateBounds_transform_ink_inkTransform_strokePath___block_invoke_2;
    v38[3] = &unk_1E82D8FF8;
    v26 = v25;
    v39 = v26;
    v27 = *&inkTransform->c;
    v60 = *&inkTransform->a;
    v61 = v27;
    v62 = *&inkTransform->tx;
    [PKStroke _consumeRenderVertexes:v38 ink:inkCopy inkTransform:&v60 strokePath:v14];
    v28 = v53[3];
    v29 = v57[3];
    if (v28 >= v29 && (v30 = v45[3], v31 = v49[3], v30 >= v31))
    {
      v32 = v28 - v29;
      v33 = v30 - v31;
      v63 = CGRectIntegral(*&v29);
      x = v63.origin.x;
      y = v63.origin.y;
      width = v63.size.width;
      height = v63.size.height;
    }

    else
    {
      x = *MEMORY[0x1E695F050];
      y = *(MEMORY[0x1E695F050] + 8);
      width = *(MEMORY[0x1E695F050] + 16);
      height = *(MEMORY[0x1E695F050] + 24);
    }

    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&v48, 8);
    _Block_object_dispose(&v52, 8);
    _Block_object_dispose(&v56, 8);
  }

  else
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
  }

  v34 = x;
  v35 = y;
  v36 = width;
  v37 = height;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

uint64_t __67__PKStroke__calculateBounds_transform_ink_inkTransform_strokePath___block_invoke(uint64_t result, double a2, double a3)
{
  v3 = *(result + 96) + a3 * *(result + 80) + *(result + 64) * a2;
  v4 = *(result + 104) + a3 * *(result + 88) + *(result + 72) * a2;
  v5 = *(*(result + 32) + 8);
  v6 = *(v5 + 24);
  if (v6 >= v3)
  {
    v6 = v3;
  }

  *(v5 + 24) = v6;
  v7 = *(*(result + 40) + 8);
  v8 = *(v7 + 24);
  if (v8 < v3)
  {
    v8 = v3;
  }

  *(v7 + 24) = v8;
  v9 = *(*(result + 48) + 8);
  v10 = *(v9 + 24);
  if (v10 >= v4)
  {
    v10 = v4;
  }

  *(v9 + 24) = v10;
  v11 = *(*(result + 56) + 8);
  if (*(v11 + 24) >= v4)
  {
    v4 = *(v11 + 24);
  }

  *(v11 + 24) = v4;
  return result;
}

void __67__PKStroke__calculateBounds_transform_ink_inkTransform_strokePath___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a2 >= 1)
  {
    v5 = 0;
    do
    {
      v6[2](v6, v5++, *(a1 + 32));
    }

    while (a2 != v5);
  }
}

- (CGAffineTransform)_inkTransform
{
  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v4;
  *&retstr->tx = *(v3 + 32);
  return self;
}

- (void)_applyTransform:(CGAffineTransform *)transform
{
  [(PKStroke *)self _transform];
  v5 = *&transform->c;
  *&v6.a = *&transform->a;
  *&v6.c = v5;
  *&v6.tx = *&transform->tx;
  CGAffineTransformConcat(&v8, &t1, &v6);
  t1 = v8;
  [(PKStroke *)self _setTransform:&t1];
}

- (id)_strokeWithUUID:(id)d dataUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  PKCrash();
}

- (id)_newStrokeWithSubstrokes:(id)substrokes inDrawing:(id)drawing
{
  substrokesCopy = substrokes;
  drawingCopy = drawing;
  PKCrash();
}

- (CGRect)_untransformedBounds
{
  memset(&v4, 0, sizeof(v4));
  [(PKStroke *)self _transform];
  CGAffineTransformInvert(&v4, &v3);
  [(PKStroke *)self _bounds];
  v3 = v4;
  return CGRectApplyAffineTransform(v5, &v3);
}

- (void)_appendPointsOfInterestForSelection:(void *)selection step:(double)step
{
  _strokeMask = [(PKStroke *)self _strokeMask];

  if (_strokeMask)
  {

    [(PKStroke *)self _appendPointsOfInterestForSelectionMasked:selection];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__PKStroke__appendPointsOfInterestForSelection_step___block_invoke;
    v8[3] = &unk_1E82D9020;
    v8[4] = self;
    v8[5] = selection;
    [(PKStroke *)self interpolatePointDataWithStep:v8 usingBlock:step];
  }
}

void __53__PKStroke__appendPointsOfInterestForSelection_step___block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);
  if (v7)
  {
    [v7 _transform];
    v8 = v44;
    v9 = v42;
    v11 = v46;
    v10 = v45;
    v13 = v47;
    v12 = v48;
    v7 = *(a1 + 32);
  }

  else
  {
    v12 = 0.0;
    v11 = 0.0;
    v8 = 0.0;
    v13 = 0.0;
    v10 = 0.0;
    v9 = 0.0;
  }

  v43 = 0u;
  v14 = [v7 path];
  v15 = v14;
  if (v14)
  {
    [v14 _compressedPointAt:a4];
  }

  else
  {
    v43 = 0u;
  }

  v16 = v13 + a3 * v10 + v9 * a2;
  v17 = v12 + a3 * v11 + v8 * a2;

  LOWORD(v18) = 0;
  v19 = 10.0;
  LOWORD(v19) = 0;
  v20 = v19 / 1000.0;
  v21 = v18 / 10.0 + *(&v43 + 3);
  v22 = 1.0;
  if (v20 >= 1.0)
  {
    v22 = v20;
  }

  v23 = v21 * v22;
  if (v23 >= 15.0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 15.0;
  }

  v25 = 0.0;
  do
  {
    v26 = __sincos_stret(v25);
    v27 = v16 + v24 * v26.__cosval;
    v28 = v17 + v24 * v26.__sinval;
    v29 = *(a1 + 40);
    v31 = *(v29 + 8);
    v30 = *(v29 + 16);
    if (v31 >= v30)
    {
      v33 = *v29;
      v34 = v31 - *v29;
      v35 = v34 >> 4;
      v36 = (v34 >> 4) + 1;
      if (v36 >> 60)
      {
        std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
      }

      v37 = v30 - v33;
      if (v37 >> 3 > v36)
      {
        v36 = v37 >> 3;
      }

      if (v37 >= 0x7FFFFFFFFFFFFFF0)
      {
        v38 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v36;
      }

      if (v38)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(*(a1 + 40), v38);
      }

      v39 = (16 * v35);
      *v39 = v27;
      v39[1] = v28;
      v32 = 16 * v35 + 16;
      memcpy(0, v33, v34);
      v40 = *v29;
      *v29 = 0;
      *(v29 + 8) = v32;
      *(v29 + 16) = 0;
      if (v40)
      {
        operator delete(v40);
      }
    }

    else
    {
      *v31 = v27;
      v31[1] = v28;
      v32 = (v31 + 2);
    }

    *(v29 + 8) = v32;
    v25 = v25 + 0.392699082;
  }

  while (v25 < 6.28318531);
}

- (double)_maxWidthForStroke
{
  path = [(PKStroke *)self path];
  [path _maxWidth];
  v4 = v3;

  return v4;
}

- (id)descriptionAtDepth:(int64_t)depth
{
  v4 = &stru_1F476BD20;
  v5 = [&stru_1F476BD20 stringByPaddingToLength:2 * depth withString:@" " startingAtIndex:0];
  memset(&v16, 0, sizeof(v16));
  [(PKStroke *)self transform];
  transform = v16;
  if (!CGAffineTransformIsIdentity(&transform))
  {
    if (*MEMORY[0x1E695EFD0] == v16.a && *(MEMORY[0x1E695EFD0] + 8) == v16.b && *(MEMORY[0x1E695EFD0] + 16) == v16.c)
    {
      v8 = MEMORY[0x1E696AEC0];
      if (*(MEMORY[0x1E695EFD0] + 24) == v16.d)
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"transform=[%ld, %ld] ", v16.tx, v16.ty];
        goto LABEL_13;
      }
    }

    else
    {
      v8 = MEMORY[0x1E696AEC0];
    }

    transform = v16;
    v9 = NSStringFromCGAffineTransform(&transform);
    v4 = [v8 stringWithFormat:@"transform=%@ ", v9];
  }

LABEL_13:
  v10 = MEMORY[0x1E696AEC0];
  v11 = [(PKStroke *)self ink];
  identifier = [v11 identifier];
  v13 = [v10 stringWithFormat:@"%@<PKStroke: %p %@ %@>", v5, self, identifier, v4];

  return v13;
}

- (id)_ascii
{
  [(PKStroke *)self bounds];
  v4 = [PKStroke _asciiDimensionForBoundsDimension:v3];
  [(PKStroke *)self bounds];
  v6 = [PKStroke _asciiDimensionForBoundsDimension:v5];
  v7 = [(PKStroke *)self _newAsciiBitfieldWithWidth:v4 height:v6];
  string = [MEMORY[0x1E696AD60] string];
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if (v4 >= 1)
      {
        for (j = 0; j != v4; ++j)
        {
          if (v7[[PKStroke _asciiBitfieldIndexForX:j y:i width:v4]])
          {
            v11 = @"■";
          }

          else
          {
            v11 = @" ";
          }

          v12 = v11;
          [string appendString:v12];
        }
      }

      [string appendString:@"\n"];
    }
  }

  free(v7);

  return string;
}

- (BOOL)_newAsciiBitfield
{
  [(PKStroke *)self bounds];
  v4 = [PKStroke _asciiDimensionForBoundsDimension:v3];
  [(PKStroke *)self bounds];
  v6 = [PKStroke _asciiDimensionForBoundsDimension:v5];

  return [(PKStroke *)self _newAsciiBitfieldWithWidth:v4 height:v6];
}

- (BOOL)_newAsciiBitfieldWithWidth:(int64_t)width height:(int64_t)height
{
  v7 = height * width;
  v8 = malloc_type_calloc(height * width, 1uLL, 0x100004077774924uLL);
  [(PKStroke *)self bounds];
  v10 = v9;
  v12 = v11;
  [(PKStroke *)self bounds];
  v14 = v13;
  v16 = v15;
  if (v7 >= 1)
  {
    bzero(v8, v7);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __46__PKStroke__newAsciiBitfieldWithWidth_height___block_invoke;
  v18[3] = &__block_descriptor_88_e26_v40__0_CGPoint_dd_8d24_B32l;
  v18[4] = v14;
  v18[5] = v16;
  v18[6] = v10;
  v18[7] = v12;
  v18[8] = width;
  v18[9] = height;
  v18[10] = v8;
  [(PKStroke *)self interpolatePointDataWithStep:v18 usingBlock:1.0];
  return v8;
}

int64_t __46__PKStroke__newAsciiBitfieldWithWidth_height___block_invoke(uint64_t a1, double a2, double a3)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = (a2 - *(a1 + 32)) / *(a1 + 48) * v4;
  v7 = (a3 - *(a1 + 40)) / *(a1 + 56) * v5;
  if (v4 - 1 >= (v6 & ~(v6 >> 63)))
  {
    v8 = v6 & ~(v6 >> 63);
  }

  else
  {
    v8 = v4 - 1;
  }

  v9 = v5 - 1;
  if (v9 >= (v7 & ~(v7 >> 63)))
  {
    v10 = v7 & ~(v7 >> 63);
  }

  else
  {
    v10 = v9;
  }

  result = [PKStroke _asciiBitfieldIndexForX:v8 y:v10 width:?];
  *(*(a1 + 80) + result) = 1;
  return result;
}

- (id)debugQuickLookObject
{
  v3 = objc_alloc_init(PKDrawing);
  v4 = [(PKDrawing *)v3 _addStroke:self];
  [(PKDrawing *)v3 bounds];
  v5 = [PKDrawing imageFromRect:v3 scale:"imageFromRect:scale:"];

  return v5;
}

+ (id)copyStrokes:(id)strokes hidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v19 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(strokesCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = strokesCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 _isHidden] == hiddenCopy)
        {
          [v6 addObject:v11];
        }

        else
        {
          copyForMutation = [v11 copyForMutation];
          [copyForMutation _setHidden:hiddenCopy];
          [v6 addObject:copyForMutation];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v6;
}

- (id)_substrokeWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = +[PKContentVersionUtility sharedUtility];
  programLinkedOnOrAfterDawnburst = [(PKContentVersionUtility *)v6 programLinkedOnOrAfterDawnburst];

  copyForMutation = 0;
  if (location < [(PKStroke *)self _pointsCount])
  {
    v9 = length + location + (programLinkedOnOrAfterDawnburst ^ 1u) - 1;
    v10 = v9 - location;
    if (v9 >= location)
    {
      if (v9 >= [(PKStroke *)self _pointsCount])
      {
        copyForMutation = 0;
      }

      else
      {
        v11 = v10 + 1;
        std::vector<PKCompressedStrokePoint>::vector[abi:ne200100](__p, v10 + 1);
        if (v10 != -1)
        {
          v12 = 0;
          v13 = v10 + 1;
          do
          {
            v14 = [(PKStroke *)self path:v25];
            v15 = v14;
            if (v14)
            {
              [v14 _compressedPointAt:location];
            }

            else
            {
              LODWORD(v27) = 0;
              v25 = 0u;
              v26 = 0u;
            }

            v16 = __p[0] + v12;
            *(v16 + 8) = v27;
            *v16 = v25;
            *(v16 + 1) = v26;

            v12 += 36;
            ++location;
            --v13;
          }

          while (v13);
        }

        uUID = [MEMORY[0x1E696AFB0] UUID];
        v18 = [PKStrokePath alloc];
        v19 = __p[0];
        path = [(PKStroke *)self path];
        _inputType = [path _inputType];
        path2 = [(PKStroke *)self path];
        [path2 _timestamp];
        v23 = [(PKStrokePath *)v18 initWithPoints:v19 count:v11 immutableCount:v11 inputType:_inputType timestamp:uUID UUID:?];

        copyForMutation = [(PKStroke *)self copyForMutation];
        [copyForMutation setPath:v23];

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }
  }

  return copyForMutation;
}

- (CGPoint)_locationAtIndex:(unint64_t)index
{
  [(PKStroke *)self _locationAtIndex:index applyStrokeTransform:1];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)_locationAtIndex:(unint64_t)index applyStrokeTransform:(BOOL)transform
{
  transformCopy = transform;
  path = [(PKStroke *)self path];
  [path locationAtIndex:index];
  if (transformCopy)
  {
    v13 = v9;
    v14 = v8;
    [(PKStroke *)self _transform];
    v15 = vaddq_f64(v18, vmlaq_n_f64(vmulq_n_f64(v17, v13), v16, v14));
    v10 = v15.f64[1];
  }

  else
  {
    v15.f64[0] = v8;
    v10 = v9;
  }

  v11 = v15.f64[0];
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)enumeratePointsWithDistanceStep:(double)step usingBlock:(id)block
{
  blockCopy = block;
  v6 = [[PKStrokeProviderSlice alloc] initWithStroke:self tStart:0.0 tEnd:[(PKStroke *)self _pointsCount]];
  [(PKStrokeProviderSlice *)v6 enumeratePointsWithDistanceStep:blockCopy usingBlock:step];
}

- (void)enumeratePointsWithTimestep:(double)timestep usingBlock:(id)block
{
  blockCopy = block;
  v6 = [[PKStrokeProviderSlice alloc] initWithStroke:self tStart:0.0 tEnd:[(PKStroke *)self _pointsCount]];
  [(PKStrokeProviderSlice *)v6 enumeratePointsWithTimestep:blockCopy usingBlock:timestep];
}

- (double)timestampAtIndex:(unint64_t)index
{
  path = [(PKStroke *)self path];
  [path timestampAtIndex:index];
  v6 = v5;

  return v6;
}

- (double)_timestampAtIndex:(unint64_t)index
{
  [(PKStroke *)self timestampAtIndex:index];
  v5 = v4;
  path = [(PKStroke *)self path];
  [path _timestamp];
  v8 = v5 + v7;

  return v8;
}

- (BOOL)_containsSamePointsAsStroke:(id)stroke
{
  strokeCopy = stroke;
  [(PKStroke *)self _bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [strokeCopy _bounds];
  v29.origin.x = v13;
  v29.origin.y = v14;
  v29.size.width = v15;
  v29.size.height = v16;
  v28.origin.x = v6;
  v28.origin.y = v8;
  v28.size.width = v10;
  v28.size.height = v12;
  if (CGRectEqualToRect(v28, v29) && (v17 = -[PKStroke _pointsCount](self, "_pointsCount"), v17 == [strokeCopy _pointsCount]))
  {
    v18 = 0;
    do
    {
      _pointsCount = [(PKStroke *)self _pointsCount];
      v20 = _pointsCount <= v18;
      if (_pointsCount <= v18)
      {
        break;
      }

      [(PKStroke *)self _locationAtIndex:v18];
      v22 = v21;
      v24 = v23;
      [strokeCopy _locationAtIndex:v18];
      if (vabdd_f64(v22, v26) >= 0.01)
      {
        break;
      }

      ++v18;
    }

    while (vabdd_f64(v24, v25) < 0.01);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (double)startTimestamp
{
  path = [(PKStroke *)self path];
  [path timestampAtIndex:0];
  v4 = v3;

  return v4;
}

- (double)endTimestamp
{
  path = [(PKStroke *)self path];
  [path timestampAtIndex:{-[PKStroke _pointsCount](self, "_pointsCount") - 1}];
  v5 = v4;

  return v5;
}

+ (int64_t)_requiredContentVersionForStrokePath:(id)path ink:(id)ink
{
  pathCopy = path;
  inkCopy = ink;
  requiredContentVersion = [inkCopy requiredContentVersion];
  if (requiredContentVersion >= 3 && [inkCopy _isFountainPenInk] && !objc_msgSend(pathCopy, "hasAzimuthAngles"))
  {
    requiredContentVersion = 2;
  }

  return requiredContentVersion;
}

- (PKContentVersion)requiredContentVersion
{
  _strokeData = [(PKStroke *)self _strokeData];
  v4 = [(PKStroke *)self ink];
  v5 = [PKStroke _requiredContentVersionForStrokePath:_strokeData ink:v4];

  return v5;
}

+ (id)_strokesByCullingStrokes:(id)strokes toRectangle:(CGRect)rectangle
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  v33 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(strokesCopy, "count")}];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = strokesCopy;
  v9 = 0;
  v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        [v13 _bounds];
        v36.origin.x = x;
        v36.origin.y = y;
        v36.size.width = width;
        v36.size.height = height;
        if (CGRectIntersectsRect(v35, v36))
        {
          if (v9)
          {
            lastObject = [v8 lastObject];
            _renderGroupID = [lastObject _renderGroupID];

            _renderGroupID2 = [v13 _renderGroupID];
            v17 = _renderGroupID2;
            if (_renderGroupID && _renderGroupID2 && [_renderGroupID isEqual:_renderGroupID2])
            {
              [v8 addObject:v9];
            }
          }

          v9 = 0;
          [v8 addObject:v13];
        }

        else
        {
          if (v9)
          {
            continue;
          }

          if (![v8 count])
          {
            goto LABEL_18;
          }

          lastObject2 = [v8 lastObject];
          _renderGroupID3 = [lastObject2 _renderGroupID];
          _renderGroupID4 = [v13 _renderGroupID];
          v21 = _renderGroupID3;
          v22 = _renderGroupID4;
          if (!(v21 | v22))
          {

LABEL_18:
            v9 = 0;
            continue;
          }

          v23 = v22;
          if (v21 && v22)
          {
            v24 = [v21 isEqual:v22];

            if (v24)
            {
              goto LABEL_18;
            }
          }

          else
          {
          }

          v9 = v13;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
  }

  return v8;
}

- (CGPoint)intersectionFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint
{
  v20 = *MEMORY[0x1E69E9840];
  v19[0] = point;
  v19[1] = toPoint;
  v12 = 0;
  v13 = &v12;
  v14 = 0x4012000000;
  v15 = __Block_byref_object_copy__14;
  v16 = __Block_byref_object_dispose__14;
  v17 = "";
  v18 = vdupq_n_s64(0x7FF8000000000000uLL);
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x4012000000;
  v11[3] = __Block_byref_object_copy__14;
  v11[4] = __Block_byref_object_dispose__14;
  v11[5] = "";
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__PKStroke_intersectionFromPoint_toPoint___block_invoke;
  v8[3] = &unk_1E82D9068;
  v8[4] = self;
  v8[5] = v9;
  v8[7] = &v12;
  v8[8] = v19;
  v8[6] = v11;
  [(PKStroke *)self interpolatePointDataWithStep:v8 usingBlock:1.0];
  v4 = v13[6];
  v5 = v13[7];
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v12, 8);
  v6 = v4;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

void *__42__PKStroke_intersectionFromPoint_toPoint___block_invoke(uint64_t a1, _BYTE *a2, double a3, double a4)
{
  v20 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if (result)
  {
    v11 = a4;
    v12 = a3;
    result = [result _transform];
    a4 = v11;
    a3 = v12;
    v8 = v17;
    v7 = v18;
    v9 = v19;
  }

  else
  {
    v9 = 0uLL;
    v8 = 0uLL;
    v7 = 0uLL;
  }

  v10 = vaddq_f64(v9, vmlaq_n_f64(vmulq_n_f64(v7, a4), v8, a3));
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v15 = 0;
    v17 = *(*(*(a1 + 48) + 8) + 48);
    v18 = v10;
    v13 = v10;
    result = DKDIntersectionOfLines(*(a1 + 64), v17.f64, &v15, &v16, &v14, 0, 0);
    if (result)
    {
      *(*(*(a1 + 56) + 8) + 48) = v14;
      *a2 = 1;
    }

    v10 = v13;
  }

  *(*(*(a1 + 48) + 8) + 48) = v10;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

+ (id)_testStrokeFromPoints:(PKCompressedStrokePoint *)points length:(int64_t)length ink:(id)ink
{
  inkCopy = ink;
  if (!inkCopy)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    inkCopy = [PKInk inkWithIdentifier:@"com.apple.ink.pen" color:blackColor weight:-1.0];
  }

  v10 = [PKStrokePath alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v12 = [(PKStrokePath *)v10 initWithPoints:points count:length immutableCount:length inputType:0 timestamp:uUID UUID:0.0];

  v13 = [self alloc];
  v14 = *(MEMORY[0x1E695EFD0] + 16);
  v17[0] = *MEMORY[0x1E695EFD0];
  v17[1] = v14;
  v17[2] = *(MEMORY[0x1E695EFD0] + 32);
  v15 = [v13 initWithInk:inkCopy strokePath:v12 transform:v17 mask:0];

  return v15;
}

- (BOOL)_pathHasClockwisePointOrdering
{
  path = [(PKStroke *)self path];
  _pointsCount = [(PKStroke *)self _pointsCount];
  v5 = _pointsCount;
  if (_pointsCount)
  {
    v6 = 0;
    v7 = _pointsCount - 1;
    v8 = 0.0;
    do
    {
      [path locationAtIndex:v6];
      v10 = v9;
      v12 = v11;
      if (v7 == v6)
      {
        v13 = 0;
      }

      else
      {
        v13 = v6 + 1;
      }

      [path locationAtIndex:v13];
      ++v6;
      v8 = v8 + v10 * v15 - v14 * v12;
    }

    while (v5 != v6);
    LOBYTE(v5) = v8 < 0.0;
  }

  return v5;
}

- (BOOL)_pathHasAzimuthAngles
{
  path = [(PKStroke *)self path];
  hasAzimuthAngles = [path hasAzimuthAngles];

  return hasAzimuthAngles;
}

+ (id)_commonGroupIDForStrokes:(id)strokes
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  strokesCopy = strokes;
  v4 = [strokesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(strokesCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if (v6)
        {
          _groupID = [v9 _groupID];
          v11 = _groupID;
          if (!_groupID || ([_groupID isEqual:v6] & 1) == 0)
          {
            v5 = 0;
          }
        }

        else
        {
          _groupID2 = [v9 _groupID];
          v5 = _groupID2 != 0;
          v6 = _groupID2;
        }
      }

      v4 = [strokesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);

    if (v5)
    {
      v13 = v6;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {

    v6 = 0;
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

+ (void)_applyPropertiesToNewStrokes:(id)strokes fromOldStrokes:(id)oldStrokes
{
  v16 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  v6 = [PKStroke _commonGroupIDForStrokes:oldStrokes];
  if (v6)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = strokesCopy;
    v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v8)
    {
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v11 + 1) + 8 * v10++) _setGroupID:{v6, v11}];
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (BOOL)_isBitmapEraserStroke
{
  v2 = [(PKStroke *)self ink];
  identifier = [v2 identifier];
  v4 = [identifier isEqualToString:@"com.apple.ink.eraser"];

  return v4;
}

- (BOOL)_isMaskedStroke
{
  _clipPlane = [(PKStroke *)self _clipPlane];
  if (_clipPlane)
  {
    v4 = 1;
  }

  else
  {
    _renderMask = [(PKStroke *)self _renderMask];
    v4 = _renderMask != 0;
  }

  return v4;
}

- (CGPoint)_anchorPointForTexture
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (double)_particleOffsetAt:(double)at forSecondaryParticles:(BOOL)particles
{
  particlesCopy = particles;
  v41 = *&at;
  v6 = [(PKStroke *)self ink];
  behavior = [v6 behavior];

  renderingDescriptor = [behavior renderingDescriptor];
  type = [renderingDescriptor type];

  if (type != 1)
  {
    goto LABEL_8;
  }

  if (particlesCopy)
  {
    secondaryParticleDescriptor = [behavior secondaryParticleDescriptor];

    if (!secondaryParticleDescriptor)
    {
      goto LABEL_9;
    }
  }

  if (*v41.i64 < 0.0)
  {
    v11 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_ERROR, "parametricValue should not be negative.", buf, 2u);
    }

LABEL_8:
    if (particlesCopy)
    {
LABEL_9:
      [(PKStroke *)self _secondaryParticleOffset];
LABEL_14:
      v13 = v12;
      goto LABEL_15;
    }

LABEL_13:
    [(PKStroke *)self _particleOffset];
    goto LABEL_14;
  }

  if (*v41.i64 == 0.0)
  {
    if (particlesCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  path = [(PKStroke *)self path];
  v16 = [path count];
  *v17.i64 = v16;
  if (v16 < *v41.i64)
  {
    v18 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_ERROR, "parametricValue should not be greater than the point count of the path.", buf, 2u);
    }

    *v17.i64 = [path count];
    v41 = v17;
  }

  array = [MEMORY[0x1E695DF70] array];
  v20 = 0;
  v21 = vcvtmd_u64_f64(*v41.i64);
  do
  {
    v22 = [path objectAtIndexedSubscript:v20];
    [array addObject:v22];

    ++v20;
  }

  while (v20 <= v21);
  *v23.i64 = *v41.i64 - trunc(*v41.i64);
  v24.f64[0] = NAN;
  v24.f64[1] = NAN;
  if (*vbslq_s8(vnegq_f64(v24), v23, v41).i64 != 0.0)
  {
    v25 = [path interpolatedPointAt:?];
    [array addObject:v25];
  }

  if ([array count] > 1)
  {
    v28 = [PKStrokePath alloc];
    creationDate = [path creationDate];
    v30 = [(PKStrokePath *)v28 initWithControlPoints:array creationDate:creationDate];

    v31 = [PKStroke alloc];
    v32 = [(PKStroke *)self ink];
    [(PKStroke *)self transform];
    mask = [(PKStroke *)self mask];
    v34 = [(PKStroke *)v31 initWithInk:v32 strokePath:v30 transform:buf mask:mask randomSeed:[(PKStroke *)self randomSeed]];

    [(PKStroke *)self _particleOffset];
    v36 = v35;
    [(PKStroke *)self _secondaryParticleOffset];
    selfCopy = [(PKStroke *)v34 _copyWithNewParticleOffset:v36 secondaryParticleOffset:v37];
  }

  else
  {
    v26 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C7CCA000, v26, OS_LOG_TYPE_ERROR, "Should be able to get at least two points for a partial stroke.", buf, 2u);
    }

    selfCopy = self;
  }

  v38 = MTLCreateSystemDefaultDevice();
  v39 = [PKMetalResourceHandler sharedResourceHandlerWithDevice:v38];
  v40 = [PKMetalRenderer initWithDrawingPixelSize:v38 actualSize:v39 device:0 resourceHandler:? sixChannelBlendingMode:?];
  v13 = [PKMetalRenderer particleOffsetAtEndOfStroke:v40 forSecondaryParticles:selfCopy];

LABEL_15:
  return v13;
}

+ (id)_snapToShape:(id)shape inputScale:(double)scale
{
  v25 = *MEMORY[0x1E69E9840];
  shapeCopy = shape;
  array = [MEMORY[0x1E695DF70] array];
  v7 = objc_alloc_init(PKShapeDrawingController);
  v8 = v7;
  if (v7)
  {
    v7->_shapeRecognitionOn = 1;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = shapeCopy;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if ([v14 _shapeType])
        {
          [array addObject:v14];
        }

        else
        {
          v19 = 0;
          memset(v18, 0, sizeof(v18));
          v15 = [(PKShapeDrawingController *)v8 shapeFromStroke:v14 inputScale:v18 averageInputPoint:0 allowedShapeTypes:scale];
          strokes = [v15 strokes];
          if (strokes)
          {
            [array addObjectsFromArray:strokes];
            v11 = 1;
          }

          else
          {
            [array addObject:v14];
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);

    if (v11)
    {
      v10 = array;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
  }

  return v10;
}

- (void)interpolatePointDataWithStep:(double)step usingBlock:(id)block
{
  blockCopy = block;
  _pointsCount = [(PKStroke *)self _pointsCount];
  v7 = _pointsCount - 1;
  if (!_pointsCount)
  {
    v7 = 0;
  }

  [(PKStroke *)self interpolatePointDataWithStep:blockCopy from:step to:0.0 usingBlock:v7];
}

- (void)interpolatePointDataWithStep:(double)step from:(double)from to:(double)to usingBlock:(id)block
{
  blockCopy = block;
  _strokeData = [(PKStroke *)self _strokeData];
  v12 = [_strokeData count];

  if (v12)
  {
    v32 = 0;
    fromCopy = from;
    toCopy = to;
    if (from <= to)
    {
      v15 = from - from;
      v31 = to - to;
      fromCopy2 = from;
      do
      {
        if (fromCopy2 == fromCopy)
        {
          v17 = v15;
        }

        else
        {
          v17 = 0.0;
        }

        if (fromCopy2 == toCopy || (step >= 1.0 ? (v18 = fromCopy2 == fromCopy) : (v18 = 1), v18))
        {
          v20 = v31;
          if (fromCopy2 != toCopy)
          {
            v20 = 1.0;
          }

          v21 = v20 - v17;
          v22 = vcvtpd_s64_f64(v21 / step);
          if (v22 < 1)
          {
            v23 = 0.0;
          }

          else
          {
            v23 = v21 / v22;
          }

          v24 = fromCopy2 != fromCopy;
          if (v24 <= v22)
          {
            do
            {
              _strokeData2 = [(PKStroke *)self _strokeData];
              [_strokeData2 locationOnSegment:fromCopy2 t:v17 + v23 * v24];
              v27 = v26;
              v29 = v28;

              blockCopy[2](blockCopy, &v32, v27, v29, v17 + v23 * v24 + fromCopy2);
              if (v32)
              {
                break;
              }
            }

            while (v24++ < v22);
          }
        }

        else
        {
          _strokeData3 = [(PKStroke *)self _strokeData];
          [_strokeData3 locationAtIndex:fromCopy2];
          (blockCopy[2])(blockCopy, &v32);

          if (v32)
          {
            break;
          }
        }

        ++fromCopy2;
      }

      while (fromCopy2 <= toCopy);
    }
  }
}

- (void)debugRender:(CGContext *)render
{
  if (![(PKStroke *)self hasSubstrokes])
  {
    _strokeMask = [(PKStroke *)self _strokeMask];

    if (_strokeMask)
    {

      [(PKStroke *)self debugRenderMasked:render];
    }

    else
    {
      memset(&v17, 0, sizeof(v17));
      CGContextGetCTM(&v17, render);
      CGContextSetLineWidth(render, 2.0 / v17.a);
      if (![(PKStroke *)self _isHidden])
      {
        CGContextSetRGBStrokeColor(render, 1.0, 0.0, 0.0, 0.5);
        [(PKStroke *)self _bounds];
        CGContextStrokeRect(render, v19);
      }

      CGContextSetRGBStrokeColor(render, 1.0, 0.578, 0.0, 1.0);
      Mutable = CGPathCreateMutable();
      v15[0] = 0;
      v15[1] = v15;
      v15[2] = 0x2020000000;
      v16 = 1;
      v13 = 0u;
      v14 = 0u;
      v12 = 0u;
      [(PKStroke *)self _transform];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v8 = v12;
      v7[2] = __33__PKStroke_Slicing__debugRender___block_invoke;
      v7[3] = &unk_1E82D9930;
      v9 = v13;
      v10 = v14;
      v7[4] = v15;
      v11 = Mutable;
      [(PKStroke *)self interpolatePointDataWithStep:v7 usingBlock:0.1];
      CGContextAddPath(render, Mutable);
      CGContextStrokePath(render);
      _Block_object_dispose(v15, 8);
    }
  }
}

void __33__PKStroke_Slicing__debugRender___block_invoke(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 72) + a3 * *(a1 + 56) + *(a1 + 40) * a2;
  v6 = *(a1 + 80) + a3 * *(a1 + 64) + *(a1 + 48) * a2;
  v7 = *(*(*(a1 + 32) + 8) + 24);
  v8 = *(a1 + 88);
  if (v7 == 1)
  {
    CGPathMoveToPoint(v8, 0, v5, v6);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  else
  {

    CGPathAddLineToPoint(v8, 0, v5, v6);
  }
}

- (CGPath)newSelectionPathRepresentationWithPointsCount:(int *)count
{
  _strokeData = [(PKStroke *)self _strokeData];
  *count = vcvtd_n_s64_f64([_strokeData _pointsCount], 2uLL);

  return [(PKStroke *)self _newPathRepresentation];
}

- (double)_thresholdForPoint:(_PKStrokePoint *)point
{
  aspectRatio = 1.0;
  if (point->aspectRatio >= 1.0)
  {
    aspectRatio = point->aspectRatio;
  }

  result = (point->radius + point->edgeWidth) * aspectRatio;
  if (result < 3.5)
  {
    return 3.5;
  }

  return result;
}

- (BOOL)intersectsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _strokeMask = [(PKStroke *)self _strokeMask];

  if (_strokeMask)
  {

    return [(PKStroke *)self intersectsPointMasked:x, y];
  }

  else
  {

    return [(PKStroke *)self intersectsPoint:x boundsOutset:y minimumStrokeThreshold:10.0, 10.0];
  }
}

- (BOOL)intersectsPoint:(CGPoint)point boundsOutset:(double)outset minimumStrokeThreshold:(double)threshold
{
  y = point.y;
  x = point.x;
  _strokeMask = [(PKStroke *)self _strokeMask];

  if (_strokeMask)
  {

    return [(PKStroke *)self intersectsPointMasked:x boundsOutset:y minimumStrokeThreshold:outset, threshold];
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    [(PKStroke *)self _bounds];
    v21 = CGRectInset(v20, -outset, -outset);
    v19.x = x;
    v19.y = y;
    if (CGRectContainsPoint(v21, v19))
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __73__PKStroke_Slicing__intersectsPoint_boundsOutset_minimumStrokeThreshold___block_invoke;
      v13[3] = &unk_1E82D9958;
      *&v13[6] = threshold;
      *&v13[7] = x;
      *&v13[8] = y;
      v13[4] = self;
      v13[5] = &v14;
      [(PKStroke *)self interpolatePointDataWithStep:v13 usingBlock:1.0];
    }

    v12 = *(v15 + 24);
    _Block_object_dispose(&v14, 8);
    return v12;
  }
}

uint64_t __73__PKStroke_Slicing__intersectsPoint_boundsOutset_minimumStrokeThreshold___block_invoke(uint64_t a1, _BYTE *a2, double a3, double a4, double a5)
{
  v9 = *(a1 + 32);
  if (v9)
  {
    [v9 _transform];
    v10 = *(&v24 + 1);
    v11 = *&v24;
    v13 = *(&v25 + 1);
    v12 = *&v25;
    v14 = *(&v26 + 1);
    v15 = *&v26;
    v9 = *(a1 + 32);
  }

  else
  {
    v14 = 0.0;
    v13 = 0.0;
    v10 = 0.0;
    v15 = 0.0;
    v12 = 0.0;
    v11 = 0.0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = [v9 _strokeData];
  v17 = v16;
  if (v16)
  {
    [v16 decompressedPointAt:a5];
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
  }

  v18 = *(a1 + 32);
  v23[2] = v26;
  v23[3] = v27;
  v23[4] = v28;
  v23[5] = v29;
  v23[0] = v24;
  v23[1] = v25;
  result = [v18 _thresholdForPoint:v23];
  v21 = fmax(v20, *(a1 + 48));
  if ((v14 + a4 * v13 + v10 * a3 - *(a1 + 64)) * (v14 + a4 * v13 + v10 * a3 - *(a1 + 64)) + (v15 + a4 * v12 + v11 * a3 - *(a1 + 56)) * (v15 + a4 * v12 + v11 * a3 - *(a1 + 56)) < v21 * v21)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a2 = 1;
  }

  return result;
}

- (BOOL)intersectsLineFrom:(CGPoint)from to:(CGPoint)to minThreshold:(double)threshold
{
  y = to.y;
  x = to.x;
  v8 = from.y;
  v9 = from.x;
  _strokeMask = [(PKStroke *)self _strokeMask];

  if (_strokeMask)
  {

    return [(PKStroke *)self intersectsLineFromMasked:v9 to:v8 minThreshold:x, y, threshold];
  }

  else
  {
    [(PKStroke *)self _bounds];
    v30 = CGRectInset(v29, -threshold, -threshold);
    v13 = v30.origin.x;
    v14 = v30.origin.y;
    width = v30.size.width;
    height = v30.size.height;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v28.x = v9;
    v28.y = v8;
    if (CGRectContainsPoint(v30, v28) || DKDLineIntersectsRect(x, y, v9, v8, v13, v14, width, height))
    {
      v22[0] = 0;
      v22[1] = v22;
      v22[2] = 0x4012000000;
      v22[3] = __Block_byref_object_copy__18;
      v22[4] = __Block_byref_object_dispose__18;
      v22[5] = "";
      v20[0] = 0;
      v20[1] = v20;
      v20[2] = 0x2020000000;
      v21 = 0;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __56__PKStroke_Slicing__intersectsLineFrom_to_minThreshold___block_invoke;
      v18[3] = &unk_1E82D9980;
      *&v18[8] = v9;
      *&v18[9] = v8;
      v18[4] = self;
      v18[5] = &v23;
      v19 = (y - v8) * (y - v8) + (x - v9) * (x - v9) > 1.0;
      *&v18[10] = x;
      *&v18[11] = y;
      v18[6] = v20;
      v18[7] = v22;
      [(PKStroke *)self interpolatePointDataWithStep:v18 usingBlock:1.0, 0x2020000000];
      _Block_object_dispose(v20, 8);
      _Block_object_dispose(v22, 8);
    }

    v17 = *(v24 + 24);
    _Block_object_dispose(&v23, 8);
    return v17;
  }
}

uint64_t __56__PKStroke_Slicing__intersectsLineFrom_to_minThreshold___block_invoke(uint64_t a1, _BYTE *a2, double a3, double a4, double a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  if (v8)
  {
    [v8 _transform];
    v16 = v29;
    v18 = v28;
    v20 = v30;
    v8 = *(a1 + 32);
  }

  else
  {
    v18 = 0u;
    v20 = 0u;
    v16 = 0u;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = [v8 _strokeData];
  v10 = v9;
  if (v9)
  {
    [v9 decompressedPointAt:a5];
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
  }

  v11 = *(a1 + 32);
  v37 = v30;
  v38 = v31;
  v39 = v32;
  v40 = v33;
  v35 = v28;
  v36 = v29;
  result = [v11 _thresholdForPoint:&v35];
  v13 = vaddq_f64(v21, vmlaq_n_f64(vmulq_n_f64(v17, a4), v19, a3));
  if ((v13.f64[1] - *(a1 + 72)) * (v13.f64[1] - *(a1 + 72)) + (v13.f64[0] - *(a1 + 64)) * (v13.f64[0] - *(a1 + 64)) < v14 * v14)
  {
    goto LABEL_8;
  }

  if (*(a1 + 96) == 1 && *(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v26 = 0;
    v15 = *(a1 + 64);
    v35 = *(a1 + 80);
    v36 = v15;
    v34[0] = *(*(*(a1 + 56) + 8) + 48);
    v34[1] = v13;
    v24 = v13;
    result = DKDIntersectionOfLines(&v35, v34, &v26, &v27, v25, 0, 0);
    if (result)
    {
LABEL_8:
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a2 = 1;
      return result;
    }

    v13 = v24;
  }

  *(*(*(a1 + 56) + 8) + 48) = v13;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  return result;
}

- (void)generateClipperPath:(void *)path
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  [(PKStroke *)self _transform];
  std::vector<ClipperLib::IntPoint>::reserve(path, [(PKStroke *)self _pointsCount]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __41__PKStroke_Slicing__generateClipperPath___block_invoke;
  v12[3] = &__block_descriptor_88_e26_v40__0_CGPoint_dd_8d24_B32l;
  v13 = v17;
  v14 = v18;
  v15 = v19;
  pathCopy = path;
  [(PKStroke *)self interpolatePointDataWithStep:v12 usingBlock:1.0];
  v6 = *path;
  v5 = *(path + 1);
  if (v5 - *path == 24)
  {
    v11 = *(v6 + 8);
    v7 = *(path + 2);
    if (v5 >= v7)
    {
      v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3);
      if (2 * v8 <= 2)
      {
        v9 = 2;
      }

      else
      {
        v9 = 2 * v8;
      }

      if (v8 >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::IntPoint>>(path, v10);
    }

    *v5 = *v6 + 1;
    *(v5 + 8) = v11;
    *(path + 1) = v5 + 24;
  }
}

double __41__PKStroke_Slicing__generateClipperPath___block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  v4 = *(a1 + 80);
  v5 = a4;
  v6 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(vaddq_f64(*(a1 + 64), vmlaq_n_f64(vmulq_n_f64(*(a1 + 48), a3), *(a1 + 32), a2)), vdupq_n_s64(0x4059000000000000uLL))));
  *&v7 = v6.i32[0];
  *(&v7 + 1) = v6.i32[1];
  v9 = v7;
  v10 = v5;
  v11 = -1082130432;
  std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](v4, &v9);
  return result;
}

- (BOOL)intersectsClosedStroke:(id)stroke
{
  strokeCopy = stroke;
  _strokeMask = [(PKStroke *)self _strokeMask];

  if (_strokeMask)
  {
    v6 = [(PKStroke *)self intersectsClosedStrokeMasked:strokeCopy];
  }

  else
  {
    __p = 0;
    v9 = 0;
    v10 = 0;
    [strokeCopy generateClipperPath:&__p];
    v6 = [(PKStroke *)self intersectsClipperPath:&__p];
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }
  }

  return v6;
}

- (BOOL)intersectsClipperPath:(void *)path
{
  v43 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = 0;
  v17 = 0;
  [(PKStroke *)self generateClipperPath:&v15];
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v30 = 0u;
  v31 = 0u;
  v18 = &off_1F4769838;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  __p = 0u;
  v23 = 0;
  v24[0] = v24;
  v24[1] = v24;
  v24[2] = 0;
  v25 = 0;
  v32 = 0;
  v26 = 0;
  v27 = 0;
  v36 = 0;
  v28 = 0;
  v29 = &unk_1F4769880;
  ClipperLib::ClipperBase::AddPath(&v18 + *(v18 - 3), path, 1, 1);
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  v9 = 0u;
  v8 = &unk_1F4769AC8;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  ClipperLib::Clipper::Execute(&v18, 0, &v8, 0, 0);
  v4 = (v13 - v12) >> 3;
  if (v4 < 1)
  {
    v6 = 0;
  }

  else
  {
    if (**(&v10 + 1) == *v12)
    {
      v5 = 0;
    }

    else
    {
      v5 = -1;
    }

    v6 = v5 + v4 != 0;
  }

  ClipperLib::PolyTree::~PolyTree(&v8);
  std::__list_imp<long long>::clear(v24);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (*(&v20 + 1))
  {
    *&v21 = *(&v20 + 1);
    operator delete(*(&v20 + 1));
  }

  if (v19)
  {
    *(&v19 + 1) = v19;
    operator delete(v19);
  }

  ClipperLib::ClipperBase::~ClipperBase(&v29);
  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  return v6;
}

- (BOOL)intersectsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  _strokeMask = [(PKStroke *)self _strokeMask];

  if (_strokeMask)
  {

    return [(PKStroke *)self intersectsRectMasked:x, y, width, height];
  }

  else
  {
    __p = 0;
    v14 = 0;
    v15 = 0;
    v10 = *(MEMORY[0x1E695EFD0] + 16);
    v12[0] = *MEMORY[0x1E695EFD0];
    v12[1] = v10;
    v12[2] = *(MEMORY[0x1E695EFD0] + 32);
    generateRectClipperPath(v12, &__p, x, y, width, height);
    v11 = [(PKStroke *)self intersectsClipperPath:&__p];
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }

    return v11;
  }
}

- (id)_sliceWithSlicingBlock:(id)block inDrawing:(id)drawing newRootStroke:(id *)stroke
{
  blockCopy = block;
  drawingCopy = drawing;
  strokeCopy = stroke;
  v38 = drawingCopy;
  selfCopy = self;
  objc_storeStrong(strokeCopy, self);
  if (![(PKStroke *)selfCopy hasSubstrokes])
  {
    v24 = blockCopy[2](blockCopy, selfCopy);
    v25 = v24;
    if (v24 && [v24 count])
    {
      if ([v25 count] != 1 || (objc_msgSend(v25, "firstObject"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "_strokeUUID"), v27 = objc_claimAutoreleasedReturnValue(), -[PKStroke _strokeUUID](selfCopy, "_strokeUUID"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v27, "isEqual:", v28), v28, v27, v26, (v29 & 1) == 0))
      {
        v30 = [(PKStroke *)selfCopy _newStrokeWithSubstrokes:v25 inDrawing:v38];

        objc_storeStrong(strokeCopy, v30);
        v31 = [v25 arrayByAddingObject:v30];
        selfCopy = v30;
LABEL_21:

        goto LABEL_26;
      }
    }

    else
    {
      v32 = *strokeCopy;
      *strokeCopy = 0;
    }

    v31 = MEMORY[0x1E695E0F0];
    goto LABEL_21;
  }

  v11 = [(PKStroke *)selfCopy _substrokesInDrawing:v38];
  array = [MEMORY[0x1E695DF70] array];
  v13 = [v11 count];
  if (v13 < 1)
  {
    v17 = 0;
  }

  else
  {
    v36 = selfCopy;
    v35 = strokeCopy;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = [v11 objectAtIndexedSubscript:{v14, v35}];
      v39 = 0;
      v19 = [v18 _sliceWithSlicingBlock:blockCopy inDrawing:v38 newRootStroke:&v39];
      [array addObjectsFromArray:v19];
      v16 |= v39 != v18;
      v20 = v39 != 0;
      if ((v16 & 1) != 0 && !v17)
      {
        v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
        v17 = v21;
        if (v14)
        {
          [v21 replaceObjectsInRange:0 withObjectsFromArray:0 range:{v11, 0, v14}];
        }
      }

      if (v39)
      {
        [v17 addObject:?];
      }

      v15 |= v20;

      ++v14;
    }

    while (v13 != v14);
    if (v16)
    {
      if ((v15 & 1) == 0)
      {
        v34 = *v35;
        *v35 = 0;

        v31 = MEMORY[0x1E695E0F0];
        selfCopy = v36;
        goto LABEL_25;
      }

      selfCopy = v36;
      v22 = [(PKStroke *)v36 _newStrokeWithSubstrokes:v17 inDrawing:v38];
      [array addObject:v22];
      v23 = *v35;
      *v35 = v22;
    }

    else
    {
      selfCopy = v36;
    }
  }

  v31 = array;
LABEL_25:

LABEL_26:

  return v31;
}

- (int64_t)_visibleSubstrokeCountInDrawing:(id)drawing
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__PKStroke_Slicing___visibleSubstrokeCountInDrawing___block_invoke;
  v5[3] = &unk_1E82D99A8;
  v5[4] = &v6;
  [(PKStroke *)self _visitVisibleSubstrokes:v5 inDrawing:drawing];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __53__PKStroke_Slicing___visibleSubstrokeCountInDrawing___block_invoke(uint64_t a1, void *a2)
{
  if (([a2 hasSubstrokes] & 1) == 0)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return 1;
}

- (void)_addVisibleSubstrokesTo:(id)to inDrawing:(id)drawing
{
  toCopy = to;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__PKStroke_Slicing___addVisibleSubstrokesTo_inDrawing___block_invoke;
  v8[3] = &unk_1E82D9670;
  v9 = toCopy;
  v7 = toCopy;
  [(PKStroke *)self _visitVisibleSubstrokes:v8 inDrawing:drawing];
}

uint64_t __55__PKStroke_Slicing___addVisibleSubstrokesTo_inDrawing___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 hasSubstrokes] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }

  return 1;
}

- (BOOL)_visitVisibleSubstrokes:(id)substrokes inDrawing:(id)drawing
{
  v21 = *MEMORY[0x1E69E9840];
  substrokesCopy = substrokes;
  drawingCopy = drawing;
  v19 = 0;
  if (![(PKStroke *)self _isHidden]&& ([(PKStroke *)self hasSubstrokes]|| [(PKStroke *)self _pointsCount]))
  {
    v9 = substrokesCopy[2](substrokesCopy, self, &v19);
    v8 = v19;
    if (v9 && (v19 & 1) == 0)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v10 = [(PKStroke *)self _substrokesInDrawing:drawingCopy, 0];
      v11 = [v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v11)
      {
        v12 = *v16;
LABEL_9:
        v13 = 0;
        while (1)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v19 = [*(*(&v15 + 1) + 8 * v13) _visitVisibleSubstrokes:substrokesCopy inDrawing:drawingCopy];
          if (v19)
          {
            break;
          }

          if (v11 == ++v13)
          {
            v11 = [v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
            if (v11)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }

      v8 = v19;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (id)_updateStroke:(id)stroke inDrawing:(id)drawing
{
  strokeCopy = stroke;
  drawingCopy = drawing;
  PKCrash();
}

- (id)_mergeWithStroke:(id)stroke inDrawing:(id)drawing
{
  strokeCopy = stroke;
  drawingCopy = drawing;
  PKCrash();
}

- (void)_appendPointsOfInterestForSelectionMasked:(void *)masked
{
  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  [(PKStroke *)self _transform];
  operator new();
}

- (id)sliceWithEraser:(const void *)eraser
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = self;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [PKStroke sliceWithEraser:eraser toClip:v4 clipType:2];

  v6 = [v5 objectAtIndexedSubscript:0];

  return v6;
}

- (id)sliceWithMask:(const void *)mask
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = self;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [PKStroke sliceWithEraser:mask toClip:v4 clipType:0];

  v6 = [v5 objectAtIndexedSubscript:0];

  return v6;
}

+ (id)sliceWithEraser:(const void *)eraser toClip:(id)clip
{
  v4 = [self sliceWithEraser:eraser toClip:clip clipType:2];

  return v4;
}

+ (id)sliceWithEraser:(const void *)eraser toClip:(id)clip clipType:(int)type
{
  v136 = *MEMORY[0x1E69E9840];
  v127 = 0;
  v126 = 0;
  v128 = 0;
  v130 = 0;
  v132 = 0;
  v131 = 0;
  v135 = 0;
  v133 = 0;
  v134 = 0;
  v123 = 0u;
  v124 = 0u;
  v111 = &off_1F4769838;
  v84 = &v122;
  v122 = &unk_1F4769880;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0;
  v117[0] = v117;
  v83 = v117;
  v117[1] = v117;
  v117[2] = 0;
  v118 = 0;
  v125 = 0;
  v119 = 0;
  v120 = 0;
  v129 = 0;
  v121 = ZFillCallback;
  clipCopy = clip;
  v6 = [clipCopy count];
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = [clipCopy objectAtIndexedSubscript:{i, v83, v84}];
      v9 = v8;
      memset(v101, 0, 48);
      if (v8)
      {
        [v8 _transform];
      }

      v109 = *v101;
      if (CGAffineTransformIsIdentity(&v109))
      {
        v10 = *(v111 - 3);
        _strokeMask = [v9 _strokeMask];
        ClipperLib::ClipperBase::AddPaths(&v111 + v10, [_strokeMask maskPaths], 0, 1);
      }

      else
      {
        memset(&v109, 0, sizeof(v109));
        CGAffineTransformMakeScale(&t1, 0.01, 0.01);
        t2 = *v101;
        CGAffineTransformConcat(&v108, &t1, &t2);
        CGAffineTransformMakeScale(&t1, 100.0, 100.0);
        CGAffineTransformConcat(&v109, &v108, &t1);
        _strokeMask2 = [v9 _strokeMask];
        maskPaths = [_strokeMask2 maskPaths];

        v14 = *maskPaths;
        v15 = *(maskPaths + 8);
        while (v14 != v15)
        {
          memset(&v108, 0, 24);
          std::vector<ClipperLib::IntPoint>::__init_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(&v108, *v14, v14[1], 0xAAAAAAAAAAAAAAABLL * ((v14[1] - *v14) >> 3));
          memset(&t1, 0, 24);
          std::vector<ClipperLib::IntPoint>::reserve(&t1, 0xAAAAAAAAAAAAAAABLL * ((*&v108.b - *&v108.a) >> 3));
          a = v108.a;
          b = v108.b;
          while (*&a != *&b)
          {
            v18 = *(*&a + 16);
            *&t2.a = vcvtq_s64_f64(vaddq_f64(*&v109.tx, vmlaq_n_f64(vmulq_n_f64(*&v109.c, *(*&a + 8)), *&v109.a, **&a)));
            t2.c = v18;
            std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](&t1, &t2);
            *&a += 24;
          }

          ClipperLib::ClipperBase::AddPath(&v111 + *(v111 - 3), &t1, 0, 1);
          if (*&t1.a)
          {
            t1.b = t1.a;
            operator delete(*&t1.a);
          }

          if (*&v108.a)
          {
            v108.b = v108.a;
            operator delete(*&v108.a);
          }

          v14 += 3;
        }
      }
    }
  }

  memset(v105, 0, sizeof(v105));
  memset(&v101[8], 0, 61);
  *v101 = &unk_1F4769AC8;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  ClipperLib::Clipper::Execute(&v111, type, v101, 0, 0);
  if (*&v101[40] == *&v101[32])
  {
    v86 = 0;
  }

  else
  {
    v19 = [clipCopy count];
    v98 = 0;
    v99 = 0;
    v100 = 0;
    *&v109.a = &v98;
    LOBYTE(v109.b) = 0;
    if (v19)
    {
      if (v19 < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v21 = *&v101[40];
    v20 = *&v101[32];
    if (*&v101[32] != *&v101[40])
    {
      v91 = vdupq_n_s64(0x4059000000000000uLL);
      do
      {
        v22 = 0;
        v23 = 0;
        v24 = *v20;
        pointa = vdivq_f64(vcvtq_f64_s64(**(*v20 + 8)), v91);
        while (v23 < [clipCopy count])
        {
          v25 = [clipCopy objectAtIndexedSubscript:v23];
          [v25 _bounds];
          v139 = CGRectInset(v138, -1.0, -1.0);
          x = v139.origin.x;
          y = v139.origin.y;
          width = v139.size.width;
          height = v139.size.height;

          v140.origin.x = x;
          v140.origin.y = y;
          v140.size.width = width;
          v140.size.height = height;
          if (CGRectContainsPoint(v140, pointa))
          {
            v30 = v98 + v22;
            v32 = *(v98 + v22 + 8);
            v31 = *(v98 + v22 + 16);
            if (v32 >= v31)
            {
              v34 = (v32 - *v30) >> 3;
              if ((v34 + 1) >> 61)
              {
                std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
              }

              v35 = v31 - *v30;
              v36 = v35 >> 2;
              if (v35 >> 2 <= (v34 + 1))
              {
                v36 = v34 + 1;
              }

              if (v35 >= 0x7FFFFFFFFFFFFFF8)
              {
                v37 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v37 = v36;
              }

              if (v37)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>>(v98 + v22, v37);
              }

              v38 = (8 * v34);
              *v38 = v24;
              v33 = 8 * v34 + 8;
              v39 = *(v30 + 8) - *v30;
              v40 = v38 - v39;
              memcpy(v38 - v39, *v30, v39);
              v41 = *v30;
              *v30 = v40;
              *(v30 + 8) = v33;
              *(v30 + 16) = 0;
              if (v41)
              {
                operator delete(v41);
              }
            }

            else
            {
              *v32 = v24;
              v33 = (v32 + 1);
            }

            *(v30 + 8) = v33;
            break;
          }

          ++v23;
          v22 += 24;
        }

        ++v20;
      }

      while (v20 != v21);
    }

    v86 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v99 - v98 >= 1)
    {
      v42 = 0;
      v43 = 0xAAAAAAAAAAAAAAABLL * ((v99 - v98) >> 3);
      if (v43 <= 1)
      {
        v43 = 1;
      }

      v85 = v43;
      while (*(v98 + 24 * v42 + 8) == *(v98 + 24 * v42))
      {
        [v86 addObject:MEMORY[0x1E695E0F0]];
LABEL_98:
        if (++v42 == v85)
        {
          goto LABEL_99;
        }
      }

      v89 = [clipCopy objectAtIndexedSubscript:v42];
      v44 = v98;
      v45 = (v98 + 24 * v42);
      if (v45[1] - *v45 == 8)
      {
        memset(&v109, 0, 24);
        std::vector<ClipperLib::PolyNode *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ClipperLib::PolyNode **>,std::__wrap_iter<ClipperLib::PolyNode **>>(&v109, 0, *v45, v45[1], (v45[1] - *v45) >> 3);
        v46 = v109.a;
        v47 = (*&v109.b - *&v109.a) >> 3;
        if (v47 >= 1)
        {
          v48 = 0;
          while (2)
          {
            v49 = *(*&v46 + 8 * v48);
            for (j = *(v49 + 8); j != *(v49 + 16); j += 24)
            {
              if (*(j + 20) > 0.0)
              {
                if (v46 != 0.0)
                {
                  v109.b = v46;
                  operator delete(*&v46);
                }

                v44 = v98;
                goto LABEL_62;
              }
            }

            std::vector<ClipperLib::PolyNode *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ClipperLib::PolyNode **>,std::__wrap_iter<ClipperLib::PolyNode **>>(&v109, *&v109.b, *(v49 + 32), *(v49 + 40), (*(v49 + 40) - *(v49 + 32)) >> 3);
            v46 = v109.a;
            v47 += (*(*(*&v109.a + 8 * v48) + 40) - *(*(*&v109.a + 8 * v48) + 32)) >> 3;
            if (++v48 < v47)
            {
              continue;
            }

            break;
          }
        }

        v110 = v89;
        v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v110 count:{1, v83}];
        [v86 addObject:v51];

        v52 = v109.a;
        if (!*&v109.a)
        {
          goto LABEL_97;
        }

        v109.b = v109.a;
      }

      else
      {
LABEL_62:
        *&__p = 0.0;
        __dst = 0;
        v97 = 0;
        std::vector<ClipperLib::PolyNode *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ClipperLib::PolyNode **>,std::__wrap_iter<ClipperLib::PolyNode **>>(&__p, 0, *(v44 + 24 * v42), *(v44 + 24 * v42 + 8), (*(v44 + 24 * v42 + 8) - *(v44 + 24 * v42)) >> 3);
        v87 = (__dst - __p) >= 9 && [v89 _shapeType] != 0;
        v88 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v53 = (__dst - __p) >> 3;
        if (v53 >= 1)
        {
          for (k = 0; k < v53; ++k)
          {
            copyForSubstroke = [v89 copyForSubstroke];
            v56 = objc_alloc_init(PKStrokeMask);
            [copyForSubstroke _setStrokeMask:v56];
            if (v87)
            {
              [copyForSubstroke _setGroupID:0];
              [copyForSubstroke _setShapeType:0];
            }

            maskPaths2 = [(PKStrokeMask *)v56 maskPaths];
            std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](maskPaths2, (*(__p + k) + 8));
            v58 = v42;
            v59 = *(__p + k);
            v60 = *(v59 + 32);
            v61 = *(v59 + 40);
            while (v60 != v61)
            {
              v62 = *v60;
              std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](-[PKStrokeMask maskPaths](v56, "maskPaths"), (*v60 + 8));
              std::vector<ClipperLib::PolyNode *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ClipperLib::PolyNode **>,std::__wrap_iter<ClipperLib::PolyNode **>>(&__p, __dst, *(v62 + 32), *(v62 + 40), (*(v62 + 40) - *(v62 + 32)) >> 3);
              v53 += (*(v62 + 40) - *(v62 + 32)) >> 3;
              ++v60;
            }

            [(PKStrokeMask *)v56 calculateCenterlineSlices:copyForSubstroke];
            v42 = v58;
            maskPaths3 = [(PKStrokeMask *)v56 maskPaths];
            v64 = *maskPaths3;
            v65 = *(maskPaths3 + 8);
            while (v64 != v65)
            {
              v67 = *v64;
              v66 = v64[1];
              if (*v64 != v66)
              {
                v68 = 0;
                v69 = (v66 - v67 - 24) / 0x18uLL;
                v70 = vdupq_n_s64(v69);
                v71 = (v67 + 68);
                do
                {
                  v72 = vdupq_n_s64(v68);
                  v73 = vmovn_s64(vcgeq_u64(v70, vorrq_s8(v72, xmmword_1C8018F80)));
                  if (vuzp1_s16(v73, *v70.i8).u8[0])
                  {
                    *(v71 - 12) = -1082130432;
                  }

                  if (vuzp1_s16(v73, *&v70).i8[2])
                  {
                    *(v71 - 6) = -1082130432;
                  }

                  if (vuzp1_s16(*&v70, vmovn_s64(vcgeq_u64(v70, vorrq_s8(v72, xmmword_1C801D840)))).i32[1])
                  {
                    *v71 = -1082130432;
                    v71[6] = -1082130432;
                  }

                  v68 += 4;
                  v71 += 24;
                }

                while (((v69 + 4) & 0x1FFFFFFFFFFFFFFCLL) != v68);
              }

              v64 += 3;
            }

            memset(&v109, 0, sizeof(v109));
            if (v89)
            {
              [v89 _transform];
            }

            v108 = v109;
            if (!CGAffineTransformIsIdentity(&v108))
            {
              memset(&v108, 0, sizeof(v108));
              CGAffineTransformMakeScale(&t1, 0.01, 0.01);
              v94 = v109;
              CGAffineTransformConcat(&t2, &t1, &v94);
              CGAffineTransformMakeScale(&v94, 100.0, 100.0);
              CGAffineTransformConcat(&t1, &t2, &v94);
              CGAffineTransformInvert(&v108, &t1);
              maskPaths4 = [(PKStrokeMask *)v56 maskPaths];
              v75 = *maskPaths4;
              v76 = maskPaths4[1];
              if (*maskPaths4 != v76)
              {
                v77 = *&v108.a;
                v78 = *&v108.c;
                v79 = *&v108.tx;
                do
                {
                  v80 = *v75;
                  v81 = v75[1];
                  while (v80 != v81)
                  {
                    *v80 = vcvtq_s64_f64(vaddq_f64(v79, vmlaq_n_f64(vmulq_n_f64(v78, v80->i64[1]), v77, v80->i64[0])));
                    v80 = (v80 + 24);
                  }

                  v75 += 3;
                }

                while (v75 != v76);
              }
            }

            [v88 addObject:copyForSubstroke];
          }
        }

        [v86 addObject:{v88, v83}];

        v52 = *&__p;
        if (*&__p == 0.0)
        {
          goto LABEL_97;
        }

        __dst = __p;
      }

      operator delete(*&v52);
LABEL_97:

      goto LABEL_98;
    }

LABEL_99:
    *&v109.a = &v98;
    std::vector<std::vector<ClipperLib::PolyNode *>>::__destroy_vector::operator()[abi:ne200100](&v109);
  }

  ClipperLib::PolyTree::~PolyTree(v101);
  *v101 = v105;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](v101);
  std::__list_imp<long long>::clear(v83);
  if (v115)
  {
    *(&v115 + 1) = v115;
    operator delete(v115);
  }

  if (*(&v113 + 1))
  {
    *&v114 = *(&v113 + 1);
    operator delete(*(&v113 + 1));
  }

  if (v112)
  {
    *(&v112 + 1) = v112;
    operator delete(v112);
  }

  ClipperLib::ClipperBase::~ClipperBase(v84);

  return v86;
}

- (CGPath)newPathRepresentationMasked
{
  Mutable = CGPathCreateMutable();
  _strokeMask = [(PKStroke *)self _strokeMask];
  maskPaths = [_strokeMask maskPaths];

  v6 = *maskPaths;
  for (i = *(maskPaths + 8); v6 != i; v6 += 3)
  {
    CGPathMoveToPoint(Mutable, 0, **v6 / 100.0, (*v6)[1] / 100.0);
    v8 = *v6;
    v9 = v6[1];
    while (v8 != v9)
    {
      v10 = *v8;
      v11 = v8[1];
      v8 += 3;
      CGPathAddLineToPoint(Mutable, 0, v10 / 100.0, v11 / 100.0);
    }

    CGPathCloseSubpath(Mutable);
  }

  return Mutable;
}

- (void)debugRenderMasked:(CGContext *)masked
{
  CGContextSetRGBStrokeColor(masked, 0.0, 0.97, 0.0, 1.0);
  Mutable = CGPathCreateMutable();
  _strokeMask = [(PKStroke *)self _strokeMask];
  maskPaths = [_strokeMask maskPaths];

  v8 = *maskPaths;
  for (i = *(maskPaths + 8); v8 != i; v8 += 3)
  {
    CGPathMoveToPoint(Mutable, 0, **v8 / 100.0, (*v8)[1] / 100.0);
    v10 = *v8;
    v11 = v8[1];
    while (v10 != v11)
    {
      v12 = *v10;
      v13 = v10[1];
      v10 += 3;
      CGPathAddLineToPoint(Mutable, 0, v12 / 100.0, v13 / 100.0);
    }

    CGPathCloseSubpath(Mutable);
  }

  CGContextSaveGState(masked);
  [(PKStroke *)self _transform];
  CGContextConcatCTM(masked, &transform);
  CGContextAddPath(masked, Mutable);
  CGContextStrokePath(masked);
  CGContextRestoreGState(masked);
  CGPathRelease(Mutable);
  CGContextSetRGBStrokeColor(masked, 1.0, 0.578, 0.0, 1.0);
  _strokeMask2 = [(PKStroke *)self _strokeMask];
  centerlineSlices = [_strokeMask2 centerlineSlices];

  v17 = *centerlineSlices;
  for (j = *(centerlineSlices + 8); v17 != j; v17 += 2)
  {
    v18 = *v17;
    v19 = v17[1];
    v20 = CGPathCreateMutable();
    transform.a = 0.0;
    *&transform.b = &transform;
    *&transform.c = 0x2020000000;
    LOBYTE(transform.d) = 1;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __39__PKStroke_Slicing__debugRenderMasked___block_invoke;
    v21[3] = &unk_1E82D99D0;
    v21[4] = self;
    v21[5] = &transform;
    v21[6] = v20;
    [(PKStroke *)self interpolatePointDataWithStep:v21 from:0.1 to:v18 usingBlock:v19];
    CGContextAddPath(masked, v20);
    CGContextStrokePath(masked);
    CGPathRelease(v20);
    _Block_object_dispose(&transform, 8);
  }
}

void __39__PKStroke_Slicing__debugRenderMasked___block_invoke(void *a1, double a2, double a3)
{
  v6 = a1[4];
  if (v6)
  {
    [v6 _transform];
    v7 = v16;
    v8 = v17;
    v10 = v18;
    v9 = v19;
    v12 = v20;
    v11 = v21;
  }

  else
  {
    v11 = 0.0;
    v9 = 0.0;
    v8 = 0.0;
    v12 = 0.0;
    v10 = 0.0;
    v7 = 0.0;
  }

  v13 = v12 + a3 * v10 + v7 * a2;
  v14 = v11 + a3 * v9 + v8 * a2;
  v15 = a1[6];
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    CGPathMoveToPoint(v15, 0, v13, v14);
    *(*(a1[5] + 8) + 24) = 0;
  }

  else
  {
    CGPathAddLineToPoint(v15, 0, v13, v14);
  }
}

- (void)generateMask
{
  _strokeMask = [(PKStroke *)self _strokeMask];

  if (!_strokeMask)
  {
    v4 = objc_alloc_init(PKStrokeMask);
    [(PKStroke *)self _setStrokeMask:v4];
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x4812000000;
    v23[3] = __Block_byref_object_copy__7;
    v23[4] = __Block_byref_object_dispose__8;
    v23[5] = "";
    v25 = 0;
    v26 = 0;
    v24 = 0;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x4812000000;
    v19[3] = __Block_byref_object_copy__7;
    v19[4] = __Block_byref_object_dispose__8;
    v19[5] = "";
    v21 = 0;
    v22 = 0;
    __p = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __33__PKStroke_Slicing__generateMask__block_invoke_11;
    aBlock[3] = &unk_1E82D9A18;
    aBlock[4] = v23;
    v5 = _Block_copy(aBlock);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __33__PKStroke_Slicing__generateMask__block_invoke_2;
    v12[3] = &unk_1E82D9A40;
    v16 = v23;
    v17 = v19;
    v6 = v5;
    v14 = v6;
    v15 = &__block_literal_global_47;
    v7 = v4;
    v13 = v7;
    v8 = [(PKStroke *)self ink];
    [(PKStroke *)self _inkTransform];
    path = [(PKStroke *)self path];
    [PKStroke _consumeRenderVertexes:v12 ink:v8 inkTransform:&v11 strokePath:path];

    maskPaths = [(PKStrokeMask *)v7 maskPaths];
    ClipperLib::SimplifyPolygons(maskPaths, maskPaths, 1);

    _Block_object_dispose(v19, 8);
    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(v23, 8);
    if (v24)
    {
      v25 = v24;
      operator delete(v24);
    }
  }
}

double __33__PKStroke_Slicing__generateMask__block_invoke(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  v4 = v3 >> 4;
  if (v3 >> 4 < 1)
  {
    result = 0.0;
  }

  else
  {
    v5 = v2 + v3;
    v7 = *(v5 - 16);
    v6 = *(v5 - 8);
    v8 = (v2 + 8);
    v9 = 0.0;
    do
    {
      v11 = *(v8 - 1);
      v10 = *v8;
      v9 = v9 + v11 * v6 - *v8 * v7;
      v8 += 2;
      v7 = v11;
      v6 = v10;
      --v4;
    }

    while (v4);
    result = v9 * 0.5;
  }

  if (result < 0.0)
  {
    return -result;
  }

  return result;
}

void __33__PKStroke_Slicing__generateMask__block_invoke_11(uint64_t a1, double a2, double a3)
{
  *&v3 = a2;
  *(&v3 + 1) = a3;
  std::vector<CGPoint>::push_back[abi:ne200100](*(*(a1 + 32) + 8) + 48, &v3);
}

void __33__PKStroke_Slicing__generateMask__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 >= 1)
  {
    v6 = 0;
    v19 = vdupq_n_s64(0x4059000000000000uLL);
    do
    {
      *(*(*(a1 + 56) + 8) + 56) = *(*(*(a1 + 56) + 8) + 48);
      *(*(*(a1 + 64) + 8) + 56) = *(*(*(a1 + 64) + 8) + 48);
      v26 = 0uLL;
      *&v26 = v5[2](v5, v6, *(a1 + 40));
      *(&v26 + 1) = v7;
      if (v6 < a2 - 1)
      {
        v22[0] = 0;
        v22[1] = 0;
        v22[0] = COERCE_VOID_(v5[2](v5, v6 + 1, *(a1 + 40)));
        v22[1] = v8;
        std::vector<CGPoint>::push_back[abi:ne200100](*(*(a1 + 64) + 8) + 48, &v26);
        std::vector<CGPoint>::push_back[abi:ne200100](*(*(a1 + 64) + 8) + 48, v22);
        do
        {
          if (v6 + 2 >= a2)
          {
            break;
          }

          v20 = 0uLL;
          *&v20 = (v5[2])(v5);
          *(&v20 + 1) = v9;
          std::vector<CGPoint>::push_back[abi:ne200100](*(*(a1 + 64) + 8) + 48, &v20);
          v24 = 0;
          v25 = 0;
          __p = 0;
          v10 = *(*(a1 + 64) + 8);
          v11 = *(v10 + 48);
          v12 = *(v10 + 56);
          v13 = (v10 + 48);
          if (((v12 - v11) >> 4) < 4)
          {
            if (&__p != v13)
            {
              std::vector<CGPoint>::__assign_with_size[abi:ne200100]<CGPoint*,CGPoint*>(&__p, v11, v12, (v12 - v11) >> 4);
            }
          }

          else
          {
            [PKPathUtility convexHull:&__p forPoints:v13];
          }

          v14 = (*(*(a1 + 48) + 16))();
          if (__p)
          {
            v24 = __p;
            operator delete(__p);
          }

          ++v6;
        }

        while (v14 <= 10.0);
      }

      v24 = 0;
      v25 = 0;
      __p = 0;
      [PKPathUtility convexHull:&__p forPoints:*(*(a1 + 56) + 8) + 48, *&v19];
      memset(v22, 0, sizeof(v22));
      v15 = __p;
      v16 = v24;
      while (v15 != v16)
      {
        v17 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(*v15, v19)));
        *&v18 = v17.i32[0];
        *(&v18 + 1) = v17.i32[1];
        v20 = v18;
        v21 = 0xBF80000000000000;
        std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](v22, &v20);
        ++v15;
      }

      std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100]([*(a1 + 32) maskPaths], v22);
      if (v22[0])
      {
        v22[1] = v22[0];
        operator delete(v22[0]);
      }

      if (__p)
      {
        v24 = __p;
        operator delete(__p);
      }

      ++v6;
    }

    while (v6 < a2);
  }
}

- (BOOL)intersectsPointMasked:(CGPoint)masked boundsOutset:(double)outset minimumStrokeThreshold:(double)threshold
{
  v44 = *MEMORY[0x1E69E9840];
  [(PKStroke *)self _bounds];
  v47 = CGRectInset(v46, -outset, -outset);
  v45.y = v15;
  v45.x = v16;
  if (CGRectContainsPoint(v47, v45))
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    v31 = 0u;
    v32 = 0u;
    v19 = &off_1F4769838;
    *v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    __p = 0u;
    v24 = 0;
    v25[0] = v25;
    v25[1] = v25;
    v25[2] = 0;
    v26 = 0;
    v33 = 0;
    v27 = 0;
    v28 = 0;
    v37 = 0;
    v29 = 0;
    v30 = &unk_1F4769880;
    memset(&v18, 0, sizeof(v18));
    [(PKStroke *)self _transform];
    CGAffineTransformInvert(&v18, &v17);
    v7 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(vaddq_f64(*&v18.tx, vmlaq_n_f64(vmulq_n_f64(*&v18.c, v15), *&v18.a, v16)), vdupq_n_s64(0x4059000000000000uLL))));
    *&v8 = v7.i32[0];
    *(&v8 + 1) = v7.i32[1];
    *&v17.a = v8;
    v17.c = -0.0078125;
    _strokeMask = [(PKStroke *)self _strokeMask];
    maskPaths = [_strokeMask maskPaths];

    v11 = *maskPaths;
    v12 = maskPaths[1];
    if (*maskPaths == v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      do
      {
        v13 ^= ClipperLib::PointInPolygon(&v17, v11) != 0;
        v11 += 24;
      }

      while (v11 != v12);
    }

    std::__list_imp<long long>::clear(v25);
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    if (*(&v21 + 1))
    {
      *&v22 = *(&v21 + 1);
      operator delete(*(&v21 + 1));
    }

    if (v20[0])
    {
      v20[1] = v20[0];
      operator delete(v20[0]);
    }

    ClipperLib::ClipperBase::~ClipperBase(&v30);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (BOOL)intersectsLineFromMasked:(CGPoint)masked to:(CGPoint)to minThreshold:(double)threshold
{
  y = to.y;
  x = to.x;
  v35 = masked.y;
  v37 = masked.x;
  v71 = *MEMORY[0x1E69E9840];
  [(PKStroke *)self _bounds];
  v74 = CGRectInset(v73, -threshold, -threshold);
  v7 = v74.origin.x;
  v8 = v74.origin.y;
  width = v74.size.width;
  height = v74.size.height;
  v72.y = v35;
  v72.x = v37;
  if (!CGRectContainsPoint(v74, v72) && !DKDLineIntersectsRect(x, y, v37, v35, v7, v8, width, height))
  {
    goto LABEL_25;
  }

  memset(&v47, 0, sizeof(v47));
  [(PKStroke *)self _transform];
  CGAffineTransformInvert(&v47, v49);
  v11 = vaddq_f64(*&v47.tx, vmlaq_n_f64(vmulq_n_f64(*&v47.c, v35), *&v47.a, v37));
  if ((y - v35) * (y - v35) + (x - v37) * (x - v37) > 1.0)
  {
    v36 = *&v47.a;
    v38 = v11;
    v31 = *&v47.c;
    v32 = *&v47.tx;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    std::vector<ClipperLib::IntPoint>::reserve(&v44, 2uLL);
    v30 = vdupq_n_s64(0x4059000000000000uLL);
    v12 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(v38, v30)));
    *&v13 = v12.i32[0];
    *(&v13 + 1) = v12.i32[1];
    *v49 = v13;
    *&v49[16] = 0xBF80000000000000;
    std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](&v44, v49);
    v14 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(vaddq_f64(v32, vmlaq_n_f64(vmulq_n_f64(v31, y), v36, x)), v30)));
    *&v13 = v14.i32[0];
    *(&v13 + 1) = v14.i32[1];
    *v49 = v13;
    *&v49[16] = 0xBF80000000000000;
    std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](&v44, v49);
    v15 = *(v44 + 1);
    if (v15 == *(v44 + 4))
    {
      *(v44 + 1) = v15 + 1;
    }

    v62 = 0;
    v61 = 0;
    v63 = 0;
    v65 = 0;
    v67 = 0;
    v66 = 0;
    v70 = 0;
    v68 = 0;
    v69 = 0;
    v58 = 0u;
    v59 = 0u;
    *v49 = &off_1F4769838;
    memset(&v49[8], 0, 48);
    __p = 0u;
    v51 = 0;
    v52[0] = v52;
    v52[1] = v52;
    v52[2] = 0;
    v53 = 0;
    v60 = 0;
    v54 = 0;
    v55 = 0;
    v64 = 0;
    v56 = 0;
    v57 = &unk_1F4769880;
    v16 = *(*v49 - 24);
    _strokeMask = [(PKStroke *)self _strokeMask];
    ClipperLib::ClipperBase::AddPaths(&v49[v16], [_strokeMask maskPaths], 1, 1);

    memset(v43, 0, 29);
    v42 = 0u;
    v41 = 0u;
    v40 = &unk_1F4769AC8;
    memset(&v43[5], 0, 24);
    memset(v39, 0, sizeof(v39));
    ClipperLib::Clipper::Execute(v49, 2, &v40, 0, 0);
    if (v43[0] - *(&v42 + 1) == 8 && (v18 = *(**(&v42 + 1) + 8), *(**(&v42 + 1) + 16) - v18 == 48))
    {
      v19 = v18[1];
      v20 = *(v44 + 1);
      if (*v18 == *v44 && v19 == v20 || (v21 = 0, v18[3] == *v44) && v18[4] == v20 && (v21 = 0, *v18 == *(v44 + 3)) && v19 == *(v44 + 4))
      {
        v21 = 1;
      }
    }

    else
    {
      v21 = 0;
    }

    v48 = v39;
    std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&v48);
    ClipperLib::PolyTree::~PolyTree(&v40);
    std::__list_imp<long long>::clear(v52);
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    if (*&v49[32])
    {
      *&v49[40] = *&v49[32];
      operator delete(*&v49[32]);
    }

    if (*&v49[8])
    {
      *&v49[16] = *&v49[8];
      operator delete(*&v49[8]);
    }

    ClipperLib::ClipperBase::~ClipperBase(&v57);
    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }

    if ((v21 & 1) == 0)
    {
      v28 = 1;
      return v28 & 1;
    }

    goto LABEL_25;
  }

  v22 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(v11, vdupq_n_s64(0x4059000000000000uLL))));
  *&v23 = v22.i32[0];
  *(&v23 + 1) = v22.i32[1];
  *v49 = v23;
  *&v49[16] = 0xBF80000000000000;
  _strokeMask2 = [(PKStroke *)self _strokeMask];
  maskPaths = [_strokeMask2 maskPaths];

  v26 = *maskPaths;
  v27 = maskPaths[1];
  if (v26 == v27)
  {
LABEL_25:
    v28 = 0;
    return v28 & 1;
  }

  v28 = 0;
  do
  {
    v28 ^= ClipperLib::PointInPolygon(v49, v26) != 0;
    v26 += 24;
  }

  while (v26 != v27);
  return v28 & 1;
}

- (BOOL)intersectsClosedStrokeMasked:(id)masked
{
  v49 = *MEMORY[0x1E69E9840];
  maskedCopy = masked;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v48 = 0;
  v46 = 0;
  v47 = 0;
  v36 = 0u;
  v37 = 0u;
  v24 = &off_1F4769838;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v30[0] = v30;
  v30[1] = v30;
  v30[2] = 0;
  v31 = 0;
  v38 = 0;
  v32 = 0;
  v33 = 0;
  v42 = 0;
  v34 = 0;
  v35 = &unk_1F4769880;
  v14 = 0;
  v15 = &v14;
  v16 = 0x4812000000;
  v17 = __Block_byref_object_copy__15;
  v18 = __Block_byref_object_dispose__16;
  v19 = "";
  v21 = 0;
  v22 = 0;
  __p = 0;
  std::vector<ClipperLib::IntPoint>::reserve(&__p, [maskedCopy _pointsCount]);
  memset(&v13, 0, sizeof(v13));
  [(PKStroke *)self _transform];
  CGAffineTransformInvert(&v13, &v12);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v11 = v13;
  v10[2] = __50__PKStroke_Slicing__intersectsClosedStrokeMasked___block_invoke;
  v10[3] = &unk_1E82D9A68;
  v10[4] = &v14;
  [maskedCopy interpolatePointDataWithStep:v10 usingBlock:1.0];
  ClipperLib::ClipperBase::AddPath(&v24 + *(v24 - 3), (v15 + 6), 0, 1);
  v5 = *(v24 - 3);
  _strokeMask = [(PKStroke *)self _strokeMask];
  ClipperLib::ClipperBase::AddPaths(&v24 + v5, [_strokeMask maskPaths], 1, 1);

  memset(&v12, 0, 24);
  ClipperLib::Clipper::Execute(&v24, 0, &v12, 0, 0);
  a = v12.a;
  b = v12.b;
  v23 = &v12;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&v23);
  _Block_object_dispose(&v14, 8);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  std::__list_imp<long long>::clear(v30);
  if (v28)
  {
    *(&v28 + 1) = v28;
    operator delete(v28);
  }

  if (*(&v26 + 1))
  {
    *&v27 = *(&v26 + 1);
    operator delete(*(&v26 + 1));
  }

  if (v25)
  {
    *(&v25 + 1) = v25;
    operator delete(v25);
  }

  ClipperLib::ClipperBase::~ClipperBase(&v35);

  return *&b != *&a;
}

double __50__PKStroke_Slicing__intersectsClosedStrokeMasked___block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a4;
  v6 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(vaddq_f64(*(a1 + 72), vmlaq_n_f64(vmulq_n_f64(*(a1 + 56), a3), *(a1 + 40), a2)), vdupq_n_s64(0x4059000000000000uLL))));
  *&v7 = v6.i32[0];
  *(&v7 + 1) = v6.i32[1];
  v9 = v7;
  v10 = v5;
  v11 = -1082130432;
  std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](v4 + 48, &v9);
  return result;
}

- (BOOL)intersectsRectMasked:(CGRect)masked
{
  height = masked.size.height;
  width = masked.size.width;
  y = masked.origin.y;
  x = masked.origin.x;
  v47 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v34 = 0u;
  v35 = 0u;
  v22 = &off_1F4769838;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v28[0] = v28;
  v28[1] = v28;
  v28[2] = 0;
  v29 = 0;
  v36 = 0;
  v30 = 0;
  v31 = 0;
  v40 = 0;
  v32 = 0;
  v33 = &unk_1F4769880;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  std::vector<ClipperLib::IntPoint>::reserve(&v18, 4uLL);
  memset(&v17, 0, sizeof(v17));
  [(PKStroke *)self _transform];
  CGAffineTransformInvert(&v17, &v16);
  __p = 0;
  v14 = 0;
  v15 = 0;
  v16 = v17;
  generateRectClipperPath(&v16, &__p, x, y, width, height);
  ClipperLib::ClipperBase::AddPath(&v22 + *(v22 - 3), &v18, 0, 1);
  v8 = *(v22 - 3);
  _strokeMask = [(PKStroke *)self _strokeMask];
  ClipperLib::ClipperBase::AddPaths(&v22 + v8, [_strokeMask maskPaths], 1, 1);

  memset(&v16, 0, 24);
  ClipperLib::Clipper::Execute(&v22, 0, &v16, 0, 0);
  a = v16.a;
  b = v16.b;
  v21 = &v16;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&v21);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  std::__list_imp<long long>::clear(v28);
  if (v26)
  {
    *(&v26 + 1) = v26;
    operator delete(v26);
  }

  if (*(&v24 + 1))
  {
    *&v25 = *(&v24 + 1);
    operator delete(*(&v24 + 1));
  }

  if (v23)
  {
    *(&v23 + 1) = v23;
    operator delete(v23);
  }

  ClipperLib::ClipperBase::~ClipperBase(&v33);
  return *&b != *&a;
}

+ (PKCompressedStrokePoint)_compressStrokePoint:(SEL)point withTimestamp:(_PKStrokePoint *)timestamp
{
  v5 = *&timestamp->force;
  v9[2] = *&timestamp->aspectRatio;
  v9[3] = v5;
  v6 = *&timestamp->radius2;
  v9[4] = *&timestamp->altitude;
  v9[5] = v6;
  v7 = *&timestamp->location.y;
  v9[0] = *&timestamp->timestamp;
  v9[1] = v7;
  return PKCompressStrokePoint(v9, a5, retstr);
}

+ (_PKStrokePoint)_decompressStrokePoint:(SEL)point withTimestamp:(PKCompressedStrokePoint *)timestamp
{
  v5 = *&timestamp->var3;
  *&v7.var0.var0 = *&timestamp->var0.var0;
  *&v7.var3 = v5;
  *&v7.var10 = *&timestamp->var10;
  PKDecompressStrokePoint(&v7, a5, retstr);
  return result;
}

@end