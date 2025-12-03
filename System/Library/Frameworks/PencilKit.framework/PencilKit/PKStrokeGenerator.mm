@interface PKStrokeGenerator
+ (vector<PKInputPoint,)inputPointsFromPath:(id)path maxSegmentLength:(SEL)length velocityForDistanceFunction:(CGPath *)function;
+ (vector<PKInputPoint,)inputPointsFromPoints:(id)points velocityForDistanceFunction:(SEL)function;
+ (void)initialize;
- (BOOL)_alwaysUseRollAngleForFountainPen;
- (BOOL)lastPointIsMasked;
- (BOOL)shouldSnapPointToRuler:(CGPoint)ruler;
- (CGAffineTransform)rulerTransform;
- (CGPoint)getRulerSnapLineOriginAndTangent:(CGPoint *)tangent andNormal:(CGPoint *)normal;
- (CGPoint)lastPoint;
- (CGPoint)snapPointToRuler:(CGPoint)ruler;
- (PKStrokeGenerator)initWithStrokeNoiseSmoothing:(BOOL)smoothing;
- (PKStrokeGeneratorDelegate)delegate;
- (_PKStrokePoint)_latestStrokePoint;
- (_PKStrokePoint)outputCurrentStrokePoint:(SEL)point lastPoint:(id *)lastPoint;
- (_PKStrokePoint)outputPoint:(SEL)point baseValues:(id *)values lastPoint:(_PKStrokePoint *)lastPoint;
- (double)distanceToRulerCenter:(CGPoint)center;
- (double)latestNonPredictedTimestamp;
- (double)latestTimestamp;
- (id).cxx_construct;
- (id)_newStrokeWithCurrentDataAndStrokeDataUUID:(id)d;
- (id)newStrokeWithCurrentData;
- (id)newStrokeWithCurrentDataCopy;
- (id)strokeFromInputPoints:(void *)points inputType:(int64_t)type ink:(id)ink inputScale:(double)scale randomSeed:(unsigned int)seed strokeClass:(Class)class;
- (id)strokeFromLineSegments:(const void *)segments maxSegmentLength:(double)length ink:(id)ink inputScale:(double)scale strokeClass:(Class)class;
- (id)strokeFromPath:(CGPath *)path ink:(id)ink inputScale:(double)scale maxSegmentLength:(double)length velocityForDistanceFunction:(id)function strokeClass:(Class)class;
- (id)strokeFromPoints:(CGPoint *)points count:(unint64_t)count ink:(id)ink inputScale:(double)scale strokeClass:(Class)class;
- (id)strokeFromPoints:(const void *)points sourceStroke:(id)stroke inputScale:(double)scale averageInputPoint:(id *)point;
- (int64_t)fetchFilteredPointsFromIndex:(int64_t)index accessBlock:(id)block;
- (void)_drawingAddPoint:(id *)point;
- (void)_drawingUpdateAllPointsDidTimeout:(BOOL)timeout updateSemaphore:(BOOL)semaphore;
- (void)_drawingUpdateAllPointsDidTimeoutWithStrokeUUID:(id)d;
- (void)_removePredictedTouches;
- (void)_updatePredictedTouches;
- (void)addPoint:(id *)point;
- (void)addPoints:()vector<PKInputPoint;
- (void)allowSnappingToRuler:(CGAffineTransform *)ruler width:(double)width;
- (void)closeStroke;
- (void)configureFilters;
- (void)dealloc;
- (void)drawingBeganWithStroke:(id)stroke inputType:(int64_t)type activeInputProperties:(unint64_t)properties inputScale:(double)scale start:(id)start;
- (void)drawingCancelledWithCompletion:(id)completion;
- (void)drawingEndedEstimatesTimeout:(double)timeout completion:(id)completion;
- (void)drawingUpdateAllPointsDidTimeoutWithStrokeUUID:(id)d;
- (void)drawingUpdatePoint:(id *)point;
- (void)getUpdatedRangeFromIndex:(unint64_t *)index;
- (void)maskToRuler;
- (void)reset;
- (void)resetFilters;
- (void)setRulerTransform:(CGAffineTransform *)transform;
- (void)setupForInk:(id)ink maximumSupportedContentVersion:(int64_t)version;
- (void)snapToRuler;
- (void)updateImmutableCount;
- (void)updateRulerSnapping;
- (void)whenFinishedProcessingPointsCallCompletion:(id)completion;
@end

@implementation PKStrokeGenerator

+ (void)initialize
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PKStrokeGenerator;
  objc_msgSendSuper2(&v2, sel_initialize);
  objc_opt_class();
}

- (id).cxx_construct
{
  *(self + 28) = 0;
  *(self + 29) = 0;
  *(self + 30) = 0;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  return self;
}

- (PKStrokeGeneratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)resetFilters
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = self->_allInputPointFilters;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v6 + 1) + 8 * v5++) resetFilter];
      }

      while (v3 != v5);
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (BOOL)_alwaysUseRollAngleForFountainPen
{
  if (qword_1ED6A5568 != -1)
  {
    dispatch_once(&qword_1ED6A5568, &__block_literal_global_91);
  }

  return _MergedGlobals_171;
}

void __54__PKStrokeGenerator__alwaysUseRollAngleForFountainPen__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.PencilKit"];
  _MergedGlobals_171 = [v0 BOOLForKey:@"PKAlwaysUseRollAngleForFountainPen"];
}

- (PKStrokeGenerator)initWithStrokeNoiseSmoothing:(BOOL)smoothing
{
  v21[2] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = PKStrokeGenerator;
  v3 = [(PKStrokeGenerator *)&v20 init];
  v4 = v3;
  if (v3)
  {
    allInputPointFilters = v3->_allInputPointFilters;
    v3->_allInputPointFilters = MEMORY[0x1E695E0F0];

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v4->_enableDidUpdateRoll = [standardUserDefaults BOOLForKey:@"internalSettings.drawing.disableDidUpdateRoll"] ^ 1;

    v7 = objc_alloc_init(PKInputPointExtraRollLatencyFilter);
    extraRollLatencyFilter = v4->_extraRollLatencyFilter;
    v4->_extraRollLatencyFilter = v7;

    v9 = objc_alloc_init(PKInputPointRollNoiseFilter);
    rollNoiseFilter = v4->_rollNoiseFilter;
    v4->_rollNoiseFilter = v9;

    v11 = v4->_rollNoiseFilter;
    v21[0] = v4->_extraRollLatencyFilter;
    v21[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v13 = v4->_allInputPointFilters;
    v4->_allInputPointFilters = v12;

    v4->_baseRollAngleLock._os_unfair_lock_opaque = 0;
    if (qword_1ED6A5570 != -1)
    {
      dispatch_once(&qword_1ED6A5570, &__block_literal_global_399);
    }

    if (byte_1ED6A5561 == 1)
    {
      v4->_keepPredictedTouchesAtEndOfStroke = byte_1ED6A5561;
    }

    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v15 = dispatch_queue_create("com.apple.pencilkit.draw-input", v14);
    inputQueue = v4->_inputQueue;
    v4->_inputQueue = v15;

    v17 = dispatch_queue_create("com.apple.pencilkit.draw-output", v14);
    outputQueue = v4->_outputQueue;
    v4->_outputQueue = v17;

    v4->_inputScale = 1.0;
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  inputProvider = self->_inputProvider;
  if (inputProvider)
  {
    objc_destroyWeak(inputProvider + 1);
    MEMORY[0x1CCA6ECB0](inputProvider, 0x81C40803F642BLL);
  }

  pixelSmoothingFilter = self->_pixelSmoothingFilter;
  if (pixelSmoothingFilter)
  {
    objc_destroyWeak(pixelSmoothingFilter + 6);
    MEMORY[0x1CCA6ECB0](pixelSmoothingFilter, 0x10A1C40F7C73FE6);
  }

  pointReductionFilter = self->_pointReductionFilter;
  if (pointReductionFilter)
  {
    *pointReductionFilter = &unk_1F476B108;
    v6 = pointReductionFilter[21];
    if (v6)
    {
      pointReductionFilter[22] = v6;
      operator delete(v6);
    }

    v7 = pointReductionFilter[18];
    if (v7)
    {
      pointReductionFilter[19] = v7;
      operator delete(v7);
    }

    *pointReductionFilter = &unk_1F476B178;
    v8 = pointReductionFilter[10];
    if (v8)
    {
      pointReductionFilter[11] = v8;
      operator delete(v8);
    }

    *pointReductionFilter = &unk_1F476B1D0;
    v9 = pointReductionFilter[6];
    if (v9)
    {
      pointReductionFilter[7] = v9;
      operator delete(v9);
    }

    MEMORY[0x1CCA6ECB0](pointReductionFilter, 0x10B1C40B92EB384);
  }

  startHookFilter = self->_startHookFilter;
  if (startHookFilter)
  {
    MEMORY[0x1CCA6ECB0](startHookFilter, 0x10A1C40A8CDCD5BLL);
  }

  endHookFilter = self->_endHookFilter;
  if (endHookFilter)
  {
    MEMORY[0x1CCA6ECB0](endHookFilter, 0x10A1C40A8CDCD5BLL);
  }

  velocityFilter = self->_velocityFilter;
  if (velocityFilter)
  {
    MEMORY[0x1CCA6ECB0](velocityFilter, 0x10A1C40A8CDCD5BLL);
  }

  directionAngleFilter = self->_directionAngleFilter;
  if (directionAngleFilter)
  {
    objc_destroyWeak(directionAngleFilter + 6);
    MEMORY[0x1CCA6ECB0](directionAngleFilter, 0x10A1C40F9F78CB0);
  }

  inputSmoother = self->_inputSmoother;
  if (inputSmoother)
  {
    *inputSmoother = &unk_1F4769730;
    objc_destroyWeak(inputSmoother + 17);
    v15 = inputSmoother[14];
    if (v15)
    {
      inputSmoother[15] = v15;
      operator delete(v15);
    }

    *inputSmoother = &unk_1F47693D8;
    v16 = inputSmoother[10];
    if (v16)
    {
      inputSmoother[11] = v16;
      operator delete(v16);
    }

    *inputSmoother = &unk_1F4769430;
    v17 = inputSmoother[6];
    if (v17)
    {
      inputSmoother[7] = v17;
      operator delete(v17);
    }

    MEMORY[0x1CCA6ECB0](inputSmoother, 0x10A1C4091D11D32);
  }

  fountainPenFilter = self->_fountainPenFilter;
  if (fountainPenFilter)
  {
    *fountainPenFilter = &unk_1F47693D8;
    v19 = fountainPenFilter[10];
    if (v19)
    {
      fountainPenFilter[11] = v19;
      operator delete(v19);
    }

    *fountainPenFilter = &unk_1F4769430;
    v20 = fountainPenFilter[6];
    if (v20)
    {
      fountainPenFilter[7] = v20;
      operator delete(v20);
    }

    MEMORY[0x1CCA6ECB0](fountainPenFilter, 0x10A1C40F23EBCE3);
  }

  propertySmoother = self->_propertySmoother;
  if (propertySmoother)
  {
    objc_destroyWeak(propertySmoother + 15);
    *propertySmoother = &unk_1F47693D8;
    v22 = propertySmoother[10];
    if (v22)
    {
      propertySmoother[11] = v22;
      operator delete(v22);
    }

    *propertySmoother = &unk_1F4769430;
    v23 = propertySmoother[6];
    if (v23)
    {
      propertySmoother[7] = v23;
      operator delete(v23);
    }

    MEMORY[0x1CCA6ECB0](propertySmoother, 0x10A1C40E2AAAF71);
  }

  inputToOutputFilter = self->_inputToOutputFilter;
  if (inputToOutputFilter)
  {
    objc_destroyWeak(inputToOutputFilter + 13);
    *inputToOutputFilter = &unk_1F476B538;
    v25 = inputToOutputFilter[10];
    if (v25)
    {
      inputToOutputFilter[11] = v25;
      operator delete(v25);
    }

    *inputToOutputFilter = &unk_1F476B590;
    v26 = inputToOutputFilter[6];
    if (v26)
    {
      inputToOutputFilter[7] = v26;
      operator delete(v26);
    }

    MEMORY[0x1CCA6ECB0](inputToOutputFilter, 0x10A1C40D2FCA11BLL);
  }

  startCapFilter = self->_startCapFilter;
  if (startCapFilter)
  {
    MEMORY[0x1CCA6ECB0](startCapFilter, 0x10A1C40C3B39206);
  }

  azimuthFilter = self->_azimuthFilter;
  if (azimuthFilter)
  {
    objc_destroyWeak(azimuthFilter + 14);
    *azimuthFilter = &unk_1F476B1D0;
    v29 = azimuthFilter[6];
    if (v29)
    {
      azimuthFilter[7] = v29;
      operator delete(v29);
    }

    MEMORY[0x1CCA6ECB0](azimuthFilter, 0x10A1C40B77D0725);
  }

  endDelayFilter = self->_endDelayFilter;
  if (endDelayFilter)
  {
    MEMORY[0x1CCA6ECB0](endDelayFilter, 0x10A1C400B2F72BELL);
  }

  endCapFilter = self->_endCapFilter;
  if (endCapFilter)
  {
    MEMORY[0x1CCA6ECB0](endCapFilter, 0x10A1C40C3B39206);
  }

  compressionFilter = self->_compressionFilter;
  if (compressionFilter)
  {
    *compressionFilter = &unk_1F476B808;
    v33 = compressionFilter[10];
    if (v33)
    {
      compressionFilter[11] = v33;
      operator delete(v33);
    }

    *compressionFilter = &unk_1F476B860;
    v34 = compressionFilter[6];
    if (v34)
    {
      compressionFilter[7] = v34;
      operator delete(v34);
    }

    MEMORY[0x1CCA6ECB0](compressionFilter, 0x10A1C40AE98C8B9);
  }

  decompressionFilter = self->_decompressionFilter;
  if (decompressionFilter)
  {
    *decompressionFilter = &unk_1F476B968;
    v36 = decompressionFilter[10];
    if (v36)
    {
      decompressionFilter[11] = v36;
      operator delete(v36);
    }

    *decompressionFilter = &unk_1F476B9C0;
    v37 = decompressionFilter[6];
    if (v37)
    {
      decompressionFilter[7] = v37;
      operator delete(v37);
    }

    MEMORY[0x1CCA6ECB0](decompressionFilter, 0x10A1C40E4B39F60);
  }

  rulerExtremaFilter = self->_rulerExtremaFilter;
  if (rulerExtremaFilter)
  {
    objc_destroyWeak(rulerExtremaFilter + 13);
    *rulerExtremaFilter = &unk_1F47693D8;
    v39 = rulerExtremaFilter[10];
    if (v39)
    {
      rulerExtremaFilter[11] = v39;
      operator delete(v39);
    }

    *rulerExtremaFilter = &unk_1F4769430;
    v40 = rulerExtremaFilter[6];
    if (v40)
    {
      rulerExtremaFilter[7] = v40;
      operator delete(v40);
    }

    MEMORY[0x1CCA6ECB0](rulerExtremaFilter, 0x10A1C40D2FCA11BLL);
  }

  estimatedAltitudeAndAzimuthFilter = self->_estimatedAltitudeAndAzimuthFilter;
  if (estimatedAltitudeAndAzimuthFilter)
  {
    objc_destroyWeak(estimatedAltitudeAndAzimuthFilter + 16);
    MEMORY[0x1CCA6ECB0](estimatedAltitudeAndAzimuthFilter, 0x10A1C40BB619F7BLL);
  }

  animationFilter = self->_animationFilter;
  if (animationFilter)
  {
    objc_destroyWeak(animationFilter + 6);
    MEMORY[0x1CCA6ECB0](animationFilter, 0x10A1C40F7C73FE6);
  }

  noiseSmoother = self->_noiseSmoother;
  if (noiseSmoother)
  {
    objc_destroyWeak(noiseSmoother + 15);
    *noiseSmoother = &unk_1F476B178;
    v44 = noiseSmoother[10];
    if (v44)
    {
      noiseSmoother[11] = v44;
      operator delete(v44);
    }

    *noiseSmoother = &unk_1F476B1D0;
    v45 = noiseSmoother[6];
    if (v45)
    {
      noiseSmoother[7] = v45;
      operator delete(v45);
    }

    MEMORY[0x1CCA6ECB0](noiseSmoother, 0x10A1C40E2AAAF71);
  }

  v46.receiver = self;
  v46.super_class = PKStrokeGenerator;
  [(PKStrokeGenerator *)&v46 dealloc];
}

- (void)setupForInk:(id)ink maximumSupportedContentVersion:(int64_t)version
{
  inkCopy = ink;
  [(PKStrokeGenerator *)self setRollAngleEnabled:0];
  [(PKStrokeGenerator *)self setAdditionalRollAngle:0.0];
  [(PKStrokeGenerator *)self setShouldClearAzimuth:0];
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_8;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [standardUserDefaults valueForKey:@"internalSettings.drawing.markerUsesRollForAzimuth"];
  if (v7)
  {
    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v9 = [standardUserDefaults2 BOOLForKey:@"internalSettings.drawing.markerUsesRollForAzimuth"];

    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  if ([inkCopy _isMarkerInk])
  {
    [(PKStrokeGenerator *)self setRollAngleEnabled:1];
  }

LABEL_8:
  if (![inkCopy _isFountainPenInkV2])
  {
    goto LABEL_23;
  }

  v10 = _os_feature_enabled_impl() ^ 1;
  if (version < 3)
  {
    LOBYTE(v10) = 1;
  }

  if (v10)
  {
LABEL_23:
    if ([inkCopy _isFountainPenInk])
    {
      [(PKStrokeGenerator *)self setShouldClearAzimuth:1];
    }
  }

  else
  {
    [(PKStrokeGenerator *)self setShouldClearAzimuth:1];
    v11 = +[PKPencilDevice activePencil];
    if ([v11 isRollSupported])
    {
    }

    else
    {
      _alwaysUseRollAngleForFountainPen = [(PKStrokeGenerator *)self _alwaysUseRollAngleForFountainPen];

      if (!_alwaysUseRollAngleForFountainPen)
      {
        goto LABEL_18;
      }
    }

    [(PKStrokeGenerator *)self setRollAngleEnabled:1];
    [(PKStrokeGenerator *)self setAdditionalRollAngle:1.57079633];
  }

LABEL_18:
}

- (void)configureFilters
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"internalSettings.roll.extraLatency"];
  extraRollLatencyFilter = self->_extraRollLatencyFilter;
  if (extraRollLatencyFilter)
  {
    extraRollLatencyFilter->_numFramesExtraLatency = v3;
  }

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults2 integerForKey:@"internalSettings.roll.noiseOffset"];
  rollNoiseFilter = self->_rollNoiseFilter;
  if (rollNoiseFilter && rollNoiseFilter->_rollOffsetNoise != v5)
  {
    rollNoiseFilter->_rollOffsetNoise = v5;
    [(PKInputPointRollNoiseFilter *)rollNoiseFilter _recalculateOffset];
  }

  standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [standardUserDefaults3 integerForKey:@"internalSettings.roll.noiseJitter"];
  v8 = self->_rollNoiseFilter;
  if (v8)
  {
    v8->_rollJitterNoise = v7;
  }
}

- (void)drawingBeganWithStroke:(id)stroke inputType:(int64_t)type activeInputProperties:(unint64_t)properties inputScale:(double)scale start:(id)start
{
  strokeCopy = stroke;
  startCopy = start;
  shouldClearAzimuth = [(PKStrokeGenerator *)self shouldClearAzimuth];
  rollAngleEnabled = [(PKStrokeGenerator *)self rollAngleEnabled];
  if (self)
  {
    os_unfair_lock_lock(&self->_baseRollAngleLock);
    baseRollAngle = self->_baseRollAngle;
    os_unfair_lock_unlock(&self->_baseRollAngleLock);
  }

  else
  {
    baseRollAngle = 0.0;
  }

  [(PKStrokeGenerator *)self additionalRollAngle];
  self->_currentStrokeRollBaseValue = -1.0;
  inputQueue = self->_inputQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__PKStrokeGenerator_drawingBeganWithStroke_inputType_activeInputProperties_inputScale_start___block_invoke;
  block[3] = &unk_1E82DC6F8;
  v29 = shouldClearAzimuth;
  v30 = rollAngleEnabled;
  v24 = baseRollAngle;
  v25 = v18;
  block[4] = self;
  v22 = strokeCopy;
  propertiesCopy = properties;
  typeCopy = type;
  scaleCopy = scale;
  v23 = startCopy;
  v19 = startCopy;
  v20 = strokeCopy;
  dispatch_async(inputQueue, block);
}

void __93__PKStrokeGenerator_drawingBeganWithStroke_inputType_activeInputProperties_inputScale_start___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 416);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __93__PKStrokeGenerator_drawingBeganWithStroke_inputType_activeInputProperties_inputScale_start___block_invoke_2;
  v9[3] = &unk_1E82DC6D0;
  v9[4] = v2;
  v14 = *(a1 + 96);
  v11 = *(a1 + 56);
  v10 = *(a1 + 40);
  v12 = *(a1 + 72);
  v13 = *(a1 + 88);
  dispatch_sync(v3, v9);
  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, v4, v5, v6, v7);
  }
}

void __93__PKStrokeGenerator_drawingBeganWithStroke_inputType_activeInputProperties_inputScale_start___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 256) = 0x7FEFFFFFFFFFFFFFLL;
  *(*(a1 + 32) + 273) = *(a1 + 88);
  *(*(a1 + 32) + 274) = *(a1 + 89);
  *(*(a1 + 32) + 280) = *(a1 + 48);
  *(*(a1 + 32) + 288) = *(a1 + 56);
  [*(a1 + 32) configureFilters];
  v2 = os_log_create("com.apple.pencilkit", "Stroke Generator");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v19 = 0;
    _os_log_debug_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEBUG, "Drawing began", v19, 2u);
  }

  objc_storeStrong((*(a1 + 32) + 184), *(a1 + 40));
  v3 = [*(a1 + 40) _flags];
  if ((v3 & 0x2000000000) == 0)
  {
    [*(*(a1 + 32) + 184) _setFlags:v3 & 0xFFFFFFC00000001FLL | (32 * arc4random()) | 0x2000000000];
  }

  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (qword_1ED6A5570 != -1)
  {
    dispatch_once(&qword_1ED6A5570, &__block_literal_global_399);
  }

  v6 = (byte_1ED6A5561 & 1) != 0 || v4 == 1 && (v5 & 0xC) == 8;
  *(*(a1 + 32) + 272) = v6;
  *(*(a1 + 32) + 608) = *(a1 + 80);
  [*(a1 + 32) setUseRuler:0];
  [*(a1 + 32) setCanSnapToRuler:0];
  [*(a1 + 32) setIsSnappedToRuler:0];
  [*(a1 + 32) setStrokeMaxForce:0.0];
  [*(a1 + 32) setTouchSensitivity:1.0];
  if (_UIAccessibilityForceTouchEnabled())
  {
    _UIAccessibilityForceTouchSensitivity();
    [*(a1 + 32) setTouchSensitivity:(1.0 - v8) * -3.0 + 1.0];
  }

  v9 = *(a1 + 64);
  *(*(a1 + 32) + 192) = *(a1 + 72);
  *(*(a1 + 32) + 200) = v9;
  *(*(a1 + 32) + 208) = 0;
  *(*(a1 + 32) + 216) = 0;
  [*(a1 + 40) _timestamp];
  v10 = *(a1 + 32);
  *(v10 + 80) = v11;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v10 + 104) = _Q0;
  *(v10 + 120) = 0u;
  *(v10 + 136) = 0u;
  *(v10 + 152) = 0u;
  *(v10 + 168) = 0;
  *(*(*(a1 + 32) + 592) + 104) = *(*(a1 + 32) + 80);
  v16 = [*(a1 + 32) outputFilter];
  v17 = [*(*(a1 + 32) + 184) ink];
  v18.n128_u64[0] = *(*(a1 + 32) + 608);
  (**v16)(v16, v17, *(a1 + 72), v18);

  if ((v5 & 8) != 0)
  {
    if (*(a1 + 72) != 1)
    {
      goto LABEL_22;
    }

    if (qword_1ED6A5578 != -1)
    {
      dispatch_once(&qword_1ED6A5578, &__block_literal_global_559);
    }

    if (byte_1ED6A5562 == 1)
    {
LABEL_22:
      *(*(*(a1 + 32) + 456) + 40) = 1;
      *(*(*(a1 + 32) + 464) + 40) = 1;
    }
  }
}

- (void)allowSnappingToRuler:(CGAffineTransform *)ruler width:(double)width
{
  inputQueue = self->_inputQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v5 = *&ruler->c;
  v7 = *&ruler->a;
  v6[2] = __48__PKStrokeGenerator_allowSnappingToRuler_width___block_invoke;
  v6[3] = &unk_1E82DC720;
  v6[4] = self;
  v8 = v5;
  v9 = *&ruler->tx;
  widthCopy = width;
  dispatch_async(inputQueue, v6);
}

uint64_t __48__PKStrokeGenerator_allowSnappingToRuler_width___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  [*(a1 + 32) setRulerTransform:v4];
  [*(a1 + 32) setRulerWidth:*(a1 + 88)];
  [*(a1 + 32) setUseRuler:1];
  return [*(a1 + 32) setCanSnapToRuler:1];
}

- (CGPoint)getRulerSnapLineOriginAndTangent:(CGPoint *)tangent andNormal:(CGPoint *)normal
{
  [(PKStrokeGenerator *)self rulerTransform];
  [(PKStrokeGenerator *)self rulerWidth];
  v8 = v7 * 0.5;
  if ([(PKStrokeGenerator *)self isSnappedToRuler])
  {
    v9 = [(PKStroke *)self->_currentStroke ink];
    behavior = [v9 behavior];
    if (behavior)
    {
      v11 = -(behavior[3] - self->_baseValues.aspectRatio * (self->_baseValues.edgeWidth + self->_baseValues.radius) * behavior[2]);
    }

    else
    {
      v11 = 0.0;
    }

    v8 = v8 + v11 / self->_inputScale;
  }

  if ([(PKStrokeGenerator *)self isSnappedToRulerTopSide])
  {
    v12 = v8;
  }

  else
  {
    v12 = -v8;
  }

  _Q1 = 0u;
  v14 = vmulq_n_f64(0, v12);
  if (tangent)
  {
    *tangent = vaddq_f64(0, vmlaq_f64(v14, vdupq_n_s64(0x4059000000000000uLL), 0));
  }

  if (normal)
  {
    v15 = vsubq_f64(vaddq_f64(0, vmlaq_f64(vmulq_n_f64(0, v12 + v12), 0, 0)), vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, *(MEMORY[0x1E695EFF8] + 8)), 0, *MEMORY[0x1E695EFF8])));
    *normal = vmulq_n_f64(v15, 1.0 / sqrt(COERCE_DOUBLE(*&vmulq_f64(v15, v15).f64[1]) + v15.f64[0] * v15.f64[0]));
  }

  _D4 = 0xC059000000000000;
  v17 = v14.f64[0] + 0.0 * -100.0 + 0.0;
  __asm { FMLA            D3, D4, V1.D[1] }

  v23 = _D3 + 0.0;
  result.y = v23;
  result.x = v17;
  return result;
}

- (double)distanceToRulerCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  [(PKStrokeGenerator *)self rulerTransform];
  v6 = *(MEMORY[0x1E695EFF8] + 8) * 0.0 + 0.0 * *MEMORY[0x1E695EFF8] + 0.0;
  [(PKStrokeGenerator *)self rulerWidth];
  v8 = v7 * 0.5 * 0.0 + 0.0 * 0.0 + 0.0 - v6;
  v9 = 1.0 / sqrt(v8 * v8 + v8 * v8);
  return (y - v6) * (v8 * v9) + (x - v6) * (v8 * v9);
}

- (BOOL)shouldSnapPointToRuler:(CGPoint)ruler
{
  y = ruler.y;
  x = ruler.x;
  useRuler = [(PKStrokeGenerator *)self useRuler];
  if (useRuler)
  {
    if (self->_currentInputType == 1)
    {
      v7 = 25.0;
    }

    else
    {
      v7 = 45.0;
    }

    [(PKStrokeGenerator *)self rulerWidth];
    v9 = v8 * 0.5 + v7;
    [(PKStrokeGenerator *)self rulerTransform];
    [(PKStrokeGenerator *)self distanceToRulerCenter:x, y];
    LOBYTE(useRuler) = fabs(v10) < v9 * sqrt(v13 * v13 + v12 * v12);
  }

  return useRuler;
}

- (void)snapToRuler
{
  delegate = [(PKStrokeGenerator *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    delegate2 = [(PKStrokeGenerator *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate3 = [(PKStrokeGenerator *)self delegate];
      [delegate3 strokeGeneratorDidSnapToRuler:self];
    }
  }

  end = self->_drawPoints.__end_;
  v32[0] = *(end - 136);
  v9 = *(end - 104);
  v10 = *(end - 72);
  v11 = *(end - 120);
  v32[3] = *(end - 88);
  v32[4] = v10;
  v32[1] = v11;
  v32[2] = v9;
  v12 = *(end - 40);
  v13 = *(end - 24);
  v14 = *(end - 56);
  v33 = *(end - 1);
  v32[6] = v12;
  v32[7] = v13;
  v32[5] = v14;
  v30[0] = *(end - 136);
  v15 = *(end - 120);
  v16 = *(end - 104);
  v17 = *(end - 72);
  v30[3] = *(end - 88);
  v30[4] = v17;
  v30[1] = v15;
  v30[2] = v16;
  v18 = *(end - 56);
  v19 = *(end - 40);
  v20 = *(end - 24);
  v31 = *(end - 1);
  v30[6] = v19;
  v30[7] = v20;
  v30[5] = v18;
  [(PKStrokeGenerator *)self outputCurrentStrokePoint:v32 lastPoint:v30];
  v21 = v37;
  *&self->_baseValues.aspectRatio = v36;
  *&self->_baseValues.force = v21;
  v22 = v39;
  *&self->_baseValues.altitude = v38;
  *&self->_baseValues.radius2 = v22;
  v23 = v35;
  *&self->_baseValues.timestamp = v34;
  *&self->_baseValues.location.y = v23;
  [(PKStrokeGenerator *)self distanceToRulerCenter:*self->_drawPoints.__begin_, *(self->_drawPoints.__begin_ + 1)];
  [(PKStrokeGenerator *)self setIsSnappedToRulerTopSide:v24 > 0.0];
  [(PKStrokeGenerator *)self setIsSnappedToRuler:1];
  _clipPlane = [(PKStroke *)self->_currentStroke _clipPlane];

  if (_clipPlane)
  {
    [(PKStroke *)self->_currentStroke _setClipPlane:0];
  }

  begin = self->_drawPoints.__begin_;
  v27 = self->_drawPoints.__end_;
  while (begin != v27)
  {
    [(PKStrokeGenerator *)self snapPointToRuler:*begin, *(begin + 1)];
    *begin = v28;
    *(begin + 1) = v29;
    begin = (begin + 136);
  }
}

- (void)maskToRuler
{
  [(PKStrokeGenerator *)self distanceToRulerCenter:*self->_drawPoints.__begin_, *(self->_drawPoints.__begin_ + 1)];
  [(PKStrokeGenerator *)self setIsSnappedToRulerTopSide:v3 > 0.0];
  [(PKStrokeGenerator *)self setIsSnappedToRuler:0];
  [(PKStrokeGenerator *)self getRulerSnapLineOriginAndTangent:0 andNormal:v11];
  v5 = v4;
  v7 = v6;
  _clipPlane = [(PKStroke *)self->_currentStroke _clipPlane];

  if (!_clipPlane)
  {
    v9 = [_PKStrokeClipPlane alloc];
    v10 = [(_PKStrokeClipPlane *)v9 initWithOrigin:v5 normal:v7, -v11[0], -v11[1]];
    [(PKStroke *)self->_currentStroke _setClipPlane:v10];
  }
}

- (CGPoint)snapPointToRuler:(CGPoint)ruler
{
  y = ruler.y;
  x = ruler.x;
  v16 = *MEMORY[0x1E69E9840];
  if ([(PKStrokeGenerator *)self isSnappedToRuler])
  {
    [(PKStrokeGenerator *)self getRulerSnapLineOriginAndTangent:&v14 andNormal:0];
    v8 = 1.0 / sqrt((v15 - v7) * (v15 - v7) + (v14 - v6) * (v14 - v6));
    v9 = (v14 - v6) * v8;
    v10 = (v15 - v7) * v8;
    v11 = (y - v7) * v10 + (x - v6) * v9;
    x = v6 + v9 * v11;
    y = v7 + v10 * v11;
  }

  v12 = x;
  v13 = y;
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)updateRulerSnapping
{
  if ([(PKStrokeGenerator *)self canSnapToRuler])
  {
    v3 = self->_drawPoints.__end_ - self->_drawPoints.__begin_;
    if (v3)
    {
      if (0xF0F0F0F0F0F0F0F1 * (v3 >> 3) >= 2 && ![(PKStrokeGenerator *)self isPreviewing])
      {
        begin = self->_drawPoints.__begin_;
        end = self->_drawPoints.__end_;
        v6 = *(end - 17) - *begin;
        v7 = *(end - 16) - *(begin + 1);
        [(PKStrokeGenerator *)self rulerTransform];
        v8 = v7 * v7 + v6 * v6;
        if (v8 > self->_inputScale * (self->_inputScale * 225.0))
        {
          v14 = *(MEMORY[0x1E695EFF8] + 8);
          v15 = *MEMORY[0x1E695EFF8];
          if ([(PKStrokeGenerator *)self shouldSnapPointToRuler:*self->_drawPoints.__begin_, *(self->_drawPoints.__begin_ + 1)]&& (v9 = v21 + v17 + v19 * 0.0 - (v21 + v14 * v19 + v17 * v15), v10 = v20 + v16 + v18 * 0.0 - (v20 + v14 * v18 + v16 * v15), v11 = 1.0 / sqrt(v8), v12 = 1.0 / sqrt(v9 * v9 + v10 * v10), fabs(v7 * v11 * (v9 * v12) + v6 * v11 * (v10 * v12)) > 0.86))
          {
            [(PKStrokeGenerator *)self snapToRuler];
          }

          else
          {
            [(PKStrokeGenerator *)self maskToRuler];
          }

          [(PKStrokeGenerator *)self setCanSnapToRuler:0];
        }
      }

      if ([(PKStrokeGenerator *)self canSnapToRuler])
      {
        _clipPlane = [(PKStroke *)self->_currentStroke _clipPlane];

        if (!_clipPlane)
        {
          [(PKStrokeGenerator *)self maskToRuler];
        }
      }
    }
  }
}

- (BOOL)lastPointIsMasked
{
  [(PKStrokeGenerator *)self lastPoint];
  v5 = v4 == INFINITY && v3 == INFINITY;
  result = 0;
  if (!v5 && [(PKStrokeGenerator *)self useRuler]&& ![(PKStrokeGenerator *)self isSnappedToRuler])
  {
    [(PKStrokeGenerator *)self lastPoint];
    [(PKStrokeGenerator *)self distanceToRulerCenter:?];
    v8 = v7;
    [(PKStrokeGenerator *)self rulerWidth];
    v10 = v9 * 0.5;
    [(PKStrokeGenerator *)self rulerTransform];
    v11 = v10 * sqrt(v13 * v13 + v12 * v12);
    if ([(PKStrokeGenerator *)self isSnappedToRulerTopSide])
    {
      if (v8 < v11)
      {
        return 1;
      }
    }

    if (![(PKStrokeGenerator *)self isSnappedToRulerTopSide]&& v11 > -v8)
    {
      return 1;
    }
  }

  return result;
}

- (void)getUpdatedRangeFromIndex:(unint64_t *)index
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  outputQueue = self->_outputQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PKStrokeGenerator_getUpdatedRangeFromIndex___block_invoke;
  block[3] = &unk_1E82DC748;
  block[4] = self;
  block[5] = &v7;
  block[6] = index;
  dispatch_sync(outputQueue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __46__PKStrokeGenerator_getUpdatedRangeFromIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) outputFilter];
  result = (*(*v2 + 16))(v2, *(a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)reset
{
  self->_drawPoints.__end_ = self->_drawPoints.__begin_;
  self->_latestNonPredictedTimestamp = 0.0;
  self->_immutableCount = 0;
  self->_missedUpdates = 0;
  [(PKStrokeGenerator *)self setIsSnappedToRuler:0];
  std::vector<_PKStrokePoint>::resize(&self->_outputPoints.__begin_, 0);
  self->_outputImmutableCount = 0;
  self->_inputHasChanged = 0;
}

- (_PKStrokePoint)outputCurrentStrokePoint:(SEL)point lastPoint:(id *)lastPoint
{
  v5 = *&lastPoint->var13;
  v20[6] = *&lastPoint->var11;
  v20[7] = v5;
  var15 = lastPoint->var15;
  v6 = *&lastPoint->var5;
  v20[2] = *&lastPoint->var3;
  v20[3] = v6;
  v7 = *&lastPoint->var9;
  v20[4] = *&lastPoint->var7;
  v20[5] = v7;
  v8 = *&lastPoint->var1;
  v20[0] = lastPoint->var0;
  v20[1] = v8;
  v9 = *&self->_baseValues.force;
  v19[2] = *&self->_baseValues.aspectRatio;
  v19[3] = v9;
  v10 = *&self->_baseValues.radius2;
  v19[4] = *&self->_baseValues.altitude;
  v19[5] = v10;
  v11 = *&self->_baseValues.location.y;
  v19[0] = *&self->_baseValues.timestamp;
  v19[1] = v11;
  v12 = *&a5->var13;
  v17[6] = *&a5->var11;
  v17[7] = v12;
  v18 = a5->var15;
  v13 = *&a5->var5;
  v17[2] = *&a5->var3;
  v17[3] = v13;
  v14 = *&a5->var9;
  v17[4] = *&a5->var7;
  v17[5] = v14;
  v15 = *&a5->var1;
  v17[0] = a5->var0;
  v17[1] = v15;
  return [(PKStrokeGenerator *)self outputPoint:v20 baseValues:v19 lastPoint:v17];
}

- (_PKStrokePoint)outputPoint:(SEL)point baseValues:(id *)values lastPoint:(_PKStrokePoint *)lastPoint
{
  touchSensitivity = self->_touchSensitivity;
  if ([(PKStrokeGenerator *)self isPreviewing])
  {
    v12 = [(PKStroke *)self->_currentStroke ink];
    identifier = [v12 identifier];
    v14 = [identifier isEqualToString:@"com.apple.ink.watercolor"];

    if (v14)
    {
      values->var1 = 0.7;
      values->var3 = 0.785398163;
    }
  }

  v48 = 0;
  v15 = *&lastPoint->force;
  v47[2] = *&lastPoint->aspectRatio;
  v47[3] = v15;
  v16 = *&lastPoint->radius2;
  v47[4] = *&lastPoint->altitude;
  v47[5] = v16;
  v17 = *&lastPoint->location.y;
  v47[0] = *&lastPoint->timestamp;
  v47[1] = v17;
  LOBYTE(v48) = self->_isSnappedToRuler;
  *&v17 = a6->var11;
  endTimestamp = self->_endTimestamp;
  v50 = v17;
  currentStroke = self->_currentStroke;
  currentInputType = self->_currentInputType;
  inputScale = self->_inputScale;
  v53 = touchSensitivity;
  *&v17 = self->_eraserIndicatorAlpha;
  strokeMaxForce = self->_strokeMaxForce;
  var1 = strokeMaxForce;
  v55 = v17;
  currentActiveInputProperties = self->_currentActiveInputProperties;
  v56 = currentStroke;
  v57 = currentActiveInputProperties;
  if (strokeMaxForce < values->var1)
  {
    var1 = values->var1;
  }

  self->_strokeMaxForce = var1;
  v21 = [(PKStroke *)currentStroke ink];
  behavior = [v21 behavior];
  v23 = *&values->var13;
  v44 = *&values->var11;
  v45 = v23;
  var15 = values->var15;
  v24 = *&values->var5;
  v40 = *&values->var3;
  v41 = v24;
  v25 = *&values->var9;
  v42 = *&values->var7;
  v43 = v25;
  v26 = *&values->var1;
  var0 = values->var0;
  v39 = v26;
  self->_eraserIndicatorAlpha = [(PKInkBehavior *)behavior brushOpacityForPoint:v47 context:?];

  *&retstr->altitude = 0u;
  *&retstr->radius2 = 0u;
  *&retstr->aspectRatio = 0u;
  *&retstr->force = 0u;
  *&retstr->timestamp = 0u;
  *&retstr->location.y = 0u;
  v27 = [(PKStroke *)self->_currentStroke ink];
  behavior2 = [v27 behavior];
  v29 = *&values->var13;
  v44 = *&values->var11;
  v45 = v29;
  var15 = values->var15;
  v30 = *&values->var5;
  v40 = *&values->var3;
  v41 = v30;
  v31 = *&values->var9;
  v42 = *&values->var7;
  v43 = v31;
  v32 = *&values->var1;
  var0 = values->var0;
  v39 = v32;
  [(PKInkBehavior *)behavior2 outputForPoint:v47 context:retstr];

  shouldClearAzimuth = self->_shouldClearAzimuth;
  if (!self->_currentRollAngleEnabled)
  {
    if (!self->_currentShouldClearAzimuth)
    {
LABEL_21:
      if (self->_isSnappedToRuler)
      {
        result = [(PKStrokeGenerator *)self getRulerSnapLineOriginAndTangent:0 andNormal:&var0];
        if (!shouldClearAzimuth)
        {
          goto LABEL_23;
        }
      }

      return result;
    }

LABEL_20:
    retstr->azimuth = 0.0;
    goto LABEL_21;
  }

  if (self->_currentInputType != 1)
  {
    if (!self->_currentShouldClearAzimuth)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v35 = retstr->azimuth - (values->var13 - self->_currentBaseRollAngle + self->_currentAdditionalRollAngle);
  v36 = fmod(v35, 6.28318531);
  if (v35 <= 6.28318531 && v35 >= 0.0)
  {
    v36 = v35;
  }

  if (v36 < 0.0)
  {
    v36 = v36 + 6.28318531;
  }

  if (v36 == 0.0)
  {
    v36 = 0.0;
  }

  retstr->azimuth = v36;
  if (self->_isSnappedToRuler)
  {
    [(PKStrokeGenerator *)self getRulerSnapLineOriginAndTangent:0 andNormal:&var0];
LABEL_23:
    retstr->azimuth = atan2(var0.var0.y, var0.var0.x);
  }

  return result;
}

- (_PKStrokePoint)_latestStrokePoint
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x9012000000;
  v14 = __Block_byref_object_copy__37;
  v15 = __Block_byref_object_dispose__37;
  v16 = "";
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  outputQueue = self->_outputQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__PKStrokeGenerator__latestStrokePoint__block_invoke;
  v10[3] = &unk_1E82D8600;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(outputQueue, v10);
  v5 = v12;
  v6 = *(v12 + 6);
  *&retstr->aspectRatio = *(v12 + 5);
  *&retstr->force = v6;
  v7 = *(v5 + 8);
  *&retstr->altitude = *(v5 + 7);
  *&retstr->radius2 = v7;
  v8 = *(v5 + 4);
  *&retstr->timestamp = *(v5 + 3);
  *&retstr->location.y = v8;
  _Block_object_dispose(&v11, 8);
  return result;
}

__n128 __39__PKStrokeGenerator__latestStrokePoint__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  if (v1 != *(*(a1 + 32) + 40))
  {
    v2 = *(*(a1 + 40) + 8);
    v3 = *(v1 - 16);
    v5 = *(v1 - 64);
    v4 = *(v1 - 48);
    *(v2 + 112) = *(v1 - 32);
    *(v2 + 128) = v3;
    *(v2 + 80) = v5;
    *(v2 + 96) = v4;
    result = *(v1 - 96);
    v7 = *(v1 - 80);
    *(v2 + 48) = result;
    *(v2 + 64) = v7;
  }

  return result;
}

- (int64_t)fetchFilteredPointsFromIndex:(int64_t)index accessBlock:(id)block
{
  blockCopy = block;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  outputQueue = self->_outputQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__PKStrokeGenerator_fetchFilteredPointsFromIndex_accessBlock___block_invoke;
  v11[3] = &unk_1E82DC770;
  v11[4] = self;
  v12 = blockCopy;
  v13 = &v15;
  indexCopy = index;
  v8 = blockCopy;
  dispatch_sync(outputQueue, v11);
  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v9;
}

void __62__PKStrokeGenerator_fetchFilteredPointsFromIndex_accessBlock___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 72) == 1)
  {
    std::vector<_PKStrokePoint>::resize((v2 + 40), *(v2 + 64));
    v3 = [*(a1 + 32) outputFilter];
    *(*(a1 + 32) + 64) = (*(*v3 + 24))(v3, *(*(a1 + 32) + 64), *(a1 + 32) + 40);
    *(*(a1 + 32) + 72) = 0;
    v2 = *(a1 + 32);
  }

  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 48) - *(v2 + 40)) >> 5);
  v5 = *(a1 + 56);
  if (v5 < 0 || v5 >= v4)
  {
    if (v5 > v4)
    {
      v7 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v8 = *(a1 + 56);
        v9 = 134218240;
        v10 = v8;
        v11 = 2048;
        v12 = v4;
        _os_log_fault_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_FAULT, "fromIndex > outputPointsSize (%lu > %lu)", &v9, 0x16u);
      }
    }
  }

  else
  {
    v6 = (*(*(a1 + 40) + 16))();
    memcpy(v6, (*(*(a1 + 32) + 40) + 96 * *(a1 + 56)), 96 * (v4 - *(a1 + 56)));
  }

  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 64);
}

- (id)newStrokeWithCurrentData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__29;
  v10 = __Block_byref_object_dispose__30;
  v11 = 0;
  outputQueue = self->_outputQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__PKStrokeGenerator_newStrokeWithCurrentData__block_invoke;
  v5[3] = &unk_1E82D6868;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(outputQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __45__PKStrokeGenerator_newStrokeWithCurrentData__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [v2[23] _strokeDataUUID];
  v3 = [v2 _newStrokeWithCurrentDataAndStrokeDataUUID:?];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)newStrokeWithCurrentDataCopy
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__29;
  v10 = __Block_byref_object_dispose__30;
  v11 = 0;
  outputQueue = self->_outputQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PKStrokeGenerator_newStrokeWithCurrentDataCopy__block_invoke;
  v5[3] = &unk_1E82D6868;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(outputQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __49__PKStrokeGenerator_newStrokeWithCurrentDataCopy__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v3 = [v2 _newStrokeWithCurrentDataAndStrokeDataUUID:?];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_newStrokeWithCurrentDataAndStrokeDataUUID:(id)d
{
  dCopy = d;
  if (!self->_currentStroke || (v5 = [(PKStrokeGenerator *)self compressionFilter], (*(*v5 + 40))(v5), compressionFilter = self->_compressionFilter, compressionFilter[11] == compressionFilter[10]))
  {
    copyForMutation = 0;
  }

  else
  {
    copyForMutation = [(PKStroke *)self->_currentStroke copyForMutation];
    if (self->_captureLiveData)
    {
      v8 = [PKLiveStrokePath alloc];
      v9 = compressionFilter[10];
      v10 = compressionFilter[11];
      v11 = *(self->_compressionFilter + 9);
      currentInputType = self->_currentInputType;
      timestamp = self->_baseValues.timestamp;
      uUID = dCopy;
      if (!dCopy)
      {
        uUID = [MEMORY[0x1E696AFB0] UUID];
      }

      v15 = [(PKLiveStrokePath *)v8 initWithPoints:v9 count:0x8E38E38E38E38E39 * ((v10 - v9) >> 2) immutableCount:v11 inputType:currentInputType timestamp:uUID UUID:&self->_drawPoints inputPoints:timestamp];
      [copyForMutation set_strokeData:v15];
    }

    else
    {
      v16 = [PKStrokePath alloc];
      v17 = compressionFilter[10];
      v18 = compressionFilter[11];
      v19 = *(self->_compressionFilter + 9);
      v20 = self->_currentInputType;
      v21 = self->_baseValues.timestamp;
      uUID = dCopy;
      if (!dCopy)
      {
        uUID = [MEMORY[0x1E696AFB0] UUID];
      }

      v15 = [(PKStrokePath *)v16 initWithPoints:v17 count:0x8E38E38E38E38E39 * ((v18 - v17) >> 2) immutableCount:v19 inputType:v20 timestamp:uUID UUID:v21];
      [copyForMutation set_strokeData:v15];
    }

    if (!dCopy)
    {
    }

    v22 = [copyForMutation ink];
    if ([v22 _isFountainPenInkV2] && objc_msgSend(copyForMutation, "requiredContentVersion") <= 2)
    {
      _copyWithOriginalRequiredContentVersion = [v22 _copyWithOriginalRequiredContentVersion];

      v22 = _copyWithOriginalRequiredContentVersion;
      [copyForMutation _setInk:_copyWithOriginalRequiredContentVersion];
    }

    if (self->_shouldSetIsSafeForStyleInventorFlag)
    {
      [copyForMutation _setIsSafeForStyleInventory:1];
    }
  }

  return copyForMutation;
}

- (void)drawingUpdatePoint:(id *)point
{
  outputQueue = self->_outputQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v5 = *&point->var7;
  v15 = *&point->var9;
  v6 = *&point->var13;
  v16 = *&point->var11;
  v17 = v6;
  var0 = point->var0;
  v11 = *&point->var1;
  v8 = *&point->var5;
  v12 = *&point->var3;
  v13 = v8;
  v14 = v5;
  v9[2] = __40__PKStrokeGenerator_drawingUpdatePoint___block_invoke;
  v9[3] = &unk_1E82D85D8;
  v9[4] = self;
  var15 = point->var15;
  v10 = var0;
  dispatch_async(outputQueue, v9);
  [(PKStrokeGenerator *)self drawingUpdateAllPoints];
}

- (void)drawingUpdateAllPointsDidTimeoutWithStrokeUUID:(id)d
{
  dCopy = d;
  outputQueue = self->_outputQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__PKStrokeGenerator_drawingUpdateAllPointsDidTimeoutWithStrokeUUID___block_invoke;
  v7[3] = &unk_1E82D6890;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(outputQueue, v7);
}

- (void)_drawingUpdateAllPointsDidTimeoutWithStrokeUUID:(id)d
{
  dCopy = d;
  if (!dCopy || (-[PKStroke _strokeUUID](self->_currentStroke, "_strokeUUID"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isEqual:dCopy], v4, (v5 & 1) != 0))
  {
    [(PKStrokeGenerator *)self _drawingUpdateAllPointsDidTimeout:dCopy != 0 updateSemaphore:1];
  }
}

- (void)_drawingUpdateAllPointsDidTimeout:(BOOL)timeout updateSemaphore:(BOOL)semaphore
{
  semaphoreCopy = semaphore;
  timeoutCopy = timeout;
  v33 = *MEMORY[0x1E69E9840];
  end = self->_updatedDrawPoints.__end_;
  begin = self->_updatedDrawPoints.__begin_;
  if (end == begin)
  {
    goto LABEL_25;
  }

  LOBYTE(keepPredictedTouchesAtEndOfStroke) = 0;
  v10 = 0;
  v11 = self->_drawPoints.__begin_;
  v12 = 0xF0F0F0F0F0F0F0F1 * ((self->_drawPoints.__end_ - v11) >> 3);
  v13 = v11 + 80;
  v14 = begin;
LABEL_3:
  while (2)
  {
    v15 = v14;
    immutableCount = self->_immutableCount;
    v17 = v12 - immutableCount;
    if (v12 > immutableCount)
    {
      v18 = &v13[136 * immutableCount];
      do
      {
        if (*v18 == *(v15 + 10))
        {
          v19 = *(v15 + 2);
          *(v18 - 8) = v19;
          if (self->_currentRollAngleEnabled && self->_enableDidUpdateRoll)
          {
            v18[4] = *(v15 + 14);
          }

          if (!self->_currentInputType)
          {
            *(v18 - 8) = v19 / self->_touchSensitivity;
          }

          if (!*(v15 + 16))
          {
            *v18 = NAN;
          }

          keepPredictedTouchesAtEndOfStroke = self->_keepPredictedTouchesAtEndOfStroke;
          if (!keepPredictedTouchesAtEndOfStroke)
          {
            v14 = (v15 + 136);
            LOBYTE(keepPredictedTouchesAtEndOfStroke) = 1;
            v10 = v15;
            if ((v15 + 136) == end)
            {
              goto LABEL_21;
            }

            goto LABEL_3;
          }

          v10 = v15;
        }

        v18 += 17;
        --v17;
      }

      while (v17);
    }

    v14 = (v15 + 136);
    if ((v15 + 136) != end)
    {
      continue;
    }

    break;
  }

  v15 = v10;
  if (keepPredictedTouchesAtEndOfStroke)
  {
LABEL_21:
    v20 = (v15 + 136);
    if ((v15 + 136) != begin)
    {
      v21 = end - v20;
      if (end != v20)
      {
        memmove(begin, v20, end - v20);
      }

      self->_updatedDrawPoints.__end_ = (begin + v21);
    }
  }

LABEL_25:
  [(PKStrokeGenerator *)self updateImmutableCount];
  if (self->_drawingEndedButNotFinished)
  {
    v22 = self->_immutableCount;
    v23 = 0xF0F0F0F0F0F0F0F1 * ((self->_drawPoints.__end_ - self->_drawPoints.__begin_) >> 3);
    if (v22 >= v23 || timeoutCopy)
    {
      self->_drawingEndedButNotFinished = 0;
      if (v22 < v23)
      {
        self->_immutableCount = v23;
        if (!semaphoreCopy)
        {
          return;
        }

        v25 = os_log_create("com.apple.pencilkit", "Stroke Generator");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v29) = 0;
          _os_log_debug_impl(&dword_1C7CCA000, v25, OS_LOG_TYPE_DEBUG, "Timeout waiting for updates", &v29, 2u);
        }
      }

      else if (!semaphoreCopy)
      {
        return;
      }

      if (self->_missedUpdates >= 1)
      {
        v26 = os_log_create("com.apple.pencilkit", "Stroke Generator");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v28 = self->_immutableCount;
          missedUpdates = self->_missedUpdates;
          v29 = 134218240;
          v30 = missedUpdates;
          v31 = 2048;
          v32 = v28;
          _os_log_error_impl(&dword_1C7CCA000, v26, OS_LOG_TYPE_ERROR, "Missed updates at end of stroke: %lu (total points: %lu)", &v29, 0x16u);
        }
      }

      dispatch_semaphore_signal(self->_drawingWaitForFinishSemaphore);
    }
  }
}

- (void)updateImmutableCount
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  [processInfo systemUptime];
  v5 = v4;

  if (![(PKStrokeGenerator *)self canSnapToRuler])
  {
    begin = self->_drawPoints.__begin_;
    v7 = 0xF0F0F0F0F0F0F0F1 * ((self->_drawPoints.__end_ - begin) >> 3);
    if (v7 >= 2)
    {
      for (i = self->_immutableCount; i < v7; self->_immutableCount = i)
      {
        v9 = (begin + 136 * i);
        if ((v9[10] & 0x8000000000000000) != 0)
        {
          v10 = 0;
        }

        else
        {
          if (v9[8] >= v5 + -0.1)
          {
            return;
          }

          v9[10] = NAN;
          ++self->_missedUpdates;
          v10 = *(v9 + 10) >= 0;
        }

        if (v9[9])
        {
          break;
        }

        if (v10)
        {
          break;
        }

        i = self->_immutableCount + 1;
      }
    }
  }
}

- (void)_removePredictedTouches
{
  begin = self->_drawPoints.__begin_;
  end = self->_drawPoints.__end_;
  p_drawPoints = &self->_drawPoints;
  v5 = 0xF0F0F0F0F0F0F0F1 * ((end - begin) >> 3);
  for (i = end - 64; v5-- >= 1; i -= 136)
  {
    v8 = *i;
    if ((v8 & 1) == 0)
    {
      std::vector<PKInputPoint>::resize(p_drawPoints, v5 + 1);
      return;
    }
  }
}

- (void)_updatePredictedTouches
{
  begin = self->_drawPoints.__begin_;
  end = self->_drawPoints.__end_;
  v4 = 0xF0F0F0F0F0F0F0F1 * ((end - begin) >> 3);
  v5 = (end + 24);
  v6 = v4;
  while (v6-- >= 1)
  {
    v8 = *(v5 - 88);
    v5 -= 17;
    if ((v8 & 1) == 0)
    {
      v9 = v6 + 1;
      if (v9 < v4)
      {
        v10 = 0;
        v11 = *(v5 - 1);
        v12 = *v5;
        v13 = v5[1];
        v14 = v5[7];
        v15 = *(v5 + 11);
        do
        {
          while (1)
          {
            v16 = (begin + 136 * v9);
            if (vabdd_f64(v16[2], v11) >= 0.00999999978)
            {
              v16[2] = v11;
              v10 = 1;
            }

            if (vabdd_f64(v16[3], v12) >= 0.00999999978)
            {
              v16[3] = v12;
              v10 = 1;
            }

            if (vabdd_f64(v16[4], v12) >= 0.00999999978)
            {
              *(v16 + 4) = v13;
              v10 = 1;
            }

            if (vabdd_f64(v16[14], v15) < 0.00999999978)
            {
              break;
            }

            v16[14] = v15;
            *(v16 + 10) = v14;
            *(v16 + 72) = 0;
            ++v9;
            v10 = 1;
            if (v9 == v4)
            {
              goto LABEL_18;
            }
          }

          *(v16 + 10) = v14;
          *(v16 + 72) = 0;
          ++v9;
        }

        while (v9 != v4);
        if ((v10 & 1) == 0)
        {
          return;
        }

LABEL_18:
        self->_inputHasChanged = 1;
      }

      return;
    }
  }
}

- (double)latestNonPredictedTimestamp
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  outputQueue = self->_outputQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__PKStrokeGenerator_latestNonPredictedTimestamp__block_invoke;
  v5[3] = &unk_1E82D6868;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(outputQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __48__PKStrokeGenerator_latestNonPredictedTimestamp__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (double)latestTimestamp
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  outputQueue = self->_outputQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__PKStrokeGenerator_latestTimestamp__block_invoke;
  v5[3] = &unk_1E82D8600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(outputQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __36__PKStrokeGenerator_latestTimestamp__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (v3 != v2)
  {
    result = *(v2 - 72);
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (void)addPoints:()vector<PKInputPoint
{
  inputQueue = self->_inputQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3321888768;
  v4[2] = __31__PKStrokeGenerator_addPoints___block_invoke;
  v4[3] = &unk_1F476AFE8;
  v4[4] = self;
  __p = 0;
  v6 = 0;
  v7 = 0;
  std::vector<PKInputPoint>::__init_with_size[abi:ne200100]<PKInputPoint*,PKInputPoint*>(&__p, a3->__begin_, a3->__end_, 0xF0F0F0F0F0F0F0F1 * ((a3->__end_ - a3->__begin_) >> 3));
  dispatch_async(inputQueue, v4);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void __31__PKStrokeGenerator_addPoints___block_invoke(void *a1)
{
  v1 = a1[4];
  if (*(v1 + 184))
  {
    v3 = *(v1 + 416);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3321888768;
    v4[2] = __31__PKStrokeGenerator_addPoints___block_invoke_2;
    v4[3] = &unk_1F476AFE8;
    v6 = 0;
    v7 = 0;
    __p = 0;
    std::vector<PKInputPoint>::__init_with_size[abi:ne200100]<PKInputPoint*,PKInputPoint*>(&__p, a1[5], a1[6], 0xF0F0F0F0F0F0F0F1 * ((a1[6] - a1[5]) >> 3));
    v4[4] = a1[4];
    dispatch_sync(v3, v4);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }
}

uint64_t __31__PKStrokeGenerator_addPoints___block_invoke_2(uint64_t result)
{
  v3 = *(result + 48) - *(result + 40);
  if (v3 >= 1)
  {
    v18 = v1;
    v19 = v2;
    v4 = result;
    v5 = 0;
    v6 = v3 / 0x88uLL;
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    do
    {
      v8 = *(v4 + 32);
      v9 = *(v4 + 40) + v5;
      v16[0] = *v9;
      v10 = *(v9 + 64);
      v12 = *(v9 + 16);
      v11 = *(v9 + 32);
      v16[3] = *(v9 + 48);
      v16[4] = v10;
      v16[1] = v12;
      v16[2] = v11;
      v14 = *(v9 + 96);
      v13 = *(v9 + 112);
      v15 = *(v9 + 80);
      v17 = *(v9 + 128);
      v16[6] = v14;
      v16[7] = v13;
      v16[5] = v15;
      result = [v8 _drawingAddPoint:v16];
      v5 += 136;
      --v7;
    }

    while (v7);
  }

  return result;
}

- (void)addPoint:(id *)point
{
  inputQueue = self->_inputQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v4 = *&point->var7;
  v14 = *&point->var9;
  v5 = *&point->var13;
  v15 = *&point->var11;
  v16 = v5;
  var0 = point->var0;
  v10 = *&point->var1;
  v7 = *&point->var5;
  v11 = *&point->var3;
  v12 = v7;
  v13 = v4;
  v8[2] = __30__PKStrokeGenerator_addPoint___block_invoke;
  v8[3] = &unk_1E82D85D8;
  v8[4] = self;
  var15 = point->var15;
  v9 = var0;
  dispatch_async(inputQueue, v8);
}

void __30__PKStrokeGenerator_addPoint___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 184))
  {
    v2 = *(v1 + 416);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __30__PKStrokeGenerator_addPoint___block_invoke_2;
    v3[3] = &unk_1E82D85D8;
    v3[4] = v1;
    v9 = *(a1 + 120);
    v10 = *(a1 + 136);
    v11 = *(a1 + 152);
    v12 = *(a1 + 168);
    v5 = *(a1 + 56);
    v6 = *(a1 + 72);
    v7 = *(a1 + 88);
    v8 = *(a1 + 104);
    v4 = *(a1 + 40);
    dispatch_sync(v2, v3);
  }
}

uint64_t __30__PKStrokeGenerator_addPoint___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 120);
  v3 = *(a1 + 152);
  v7[6] = *(a1 + 136);
  v7[7] = v3;
  v8 = *(a1 + 168);
  v4 = *(a1 + 56);
  v5 = *(a1 + 88);
  v7[2] = *(a1 + 72);
  v7[3] = v5;
  v7[4] = *(a1 + 104);
  v7[5] = v2;
  v7[0] = *(a1 + 40);
  v7[1] = v4;
  return [v1 _drawingAddPoint:v7];
}

- (void)closeStroke
{
  inputQueue = self->_inputQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__PKStrokeGenerator_closeStroke__block_invoke;
  block[3] = &unk_1E82D6388;
  block[4] = self;
  dispatch_async(inputQueue, block);
}

void __32__PKStrokeGenerator_closeStroke__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 184))
  {
    v2 = *(v1 + 416);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__PKStrokeGenerator_closeStroke__block_invoke_2;
    block[3] = &unk_1E82D6388;
    block[4] = v1;
    dispatch_sync(v2, block);
  }
}

uint64_t __32__PKStrokeGenerator_closeStroke__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _removePredictedTouches];
  v2 = *(*(a1 + 32) + 16);
  v3 = *(*(a1 + 32) + 24);
  v4 = *(v3 - 136);
  v5 = *(v3 - 128);
  v6 = *(v3 - 40);
  v28 = *(v3 - 56);
  v29 = v6;
  v30 = *(v3 - 24);
  v31 = *(v3 - 8);
  v7 = *(v3 - 104);
  v24 = *(v3 - 120);
  v25 = v7;
  v8 = *(v3 - 72);
  v26 = *(v3 - 88);
  v27 = v8;
  v9 = *v2;
  v10 = v2[1];
  v11 = 1.0 / fmax(sqrt((v10 - v5) * (v10 - v5) + (*v2 - v4) * (*v2 - v4)) / 6.0, 2.0);
  v12 = 0.0;
  do
  {
    v13 = *(a1 + 32);
    v15[0] = v9 * v12 + v4 * (1.0 - v12);
    v15[1] = v10 * v12 + v5 * (1.0 - v12);
    v20 = v28;
    v21 = v29;
    v22 = v30;
    v23 = v31;
    v16 = v24;
    v17 = v25;
    v18 = v26;
    v19 = v27;
    result = [v13 _drawingAddPoint:v15];
    v12 = v11 + v12;
  }

  while (v12 <= 1.0);
  return result;
}

- (void)_drawingAddPoint:(id *)point
{
  v40 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_allInputPointFilters count])
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v5 = self->_allInputPointFilters;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v6)
    {
      v7 = *v36;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v36 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v35 + 1) + 8 * i);
          v10 = *&point->var13;
          v32 = *&point->var11;
          v33 = v10;
          var15 = point->var15;
          v11 = *&point->var5;
          v28 = *&point->var3;
          v29 = v11;
          v12 = *&point->var9;
          v30 = *&point->var7;
          v31 = v12;
          v13 = *&point->var1;
          var0 = point->var0;
          v27 = v13;
          [v9 addInputPoint:&var0];
          if (v9)
          {
            [v9 currentFilteredPoint];
          }

          else
          {
            var15 = 0;
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            var0 = 0u;
            v27 = 0u;
          }

          v14 = v33;
          *&point->var11 = v32;
          *&point->var13 = v14;
          point->var15 = var15;
          v15 = v29;
          *&point->var3 = v28;
          *&point->var5 = v15;
          v16 = v31;
          *&point->var7 = v30;
          *&point->var9 = v16;
          v17 = v27;
          point->var0 = var0;
          *&point->var1 = v17;
        }

        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v6);
    }
  }

  self->_inputHasChanged = 1;
  if (!point->var8)
  {
    currentStrokeRollBaseValue = self->_currentStrokeRollBaseValue;
    var13 = point->var13;
    if (currentStrokeRollBaseValue >= 0.0)
    {
      DKDDiffAngleInRadians(point->var13, currentStrokeRollBaseValue);
      if (v22 >= self->_currentStrokeRollDeltaMin)
      {
        if (v22 > self->_currentStrokeRollDeltaMax)
        {
          self->_currentStrokeRollDeltaMax = v22;
        }
      }

      else
      {
        self->_currentStrokeRollDeltaMin = v22;
      }
    }

    else
    {
      v20 = fmod(point->var13, 6.28318531);
      if (var13 <= 6.28318531 && var13 >= 0.0)
      {
        v20 = var13;
      }

      if (v20 < 0.0)
      {
        v20 = v20 + 6.28318531;
      }

      if (v20 == 0.0)
      {
        v20 = 0.0;
      }

      self->_currentStrokeRollBaseValue = v20;
      self->_currentStrokeRollDeltaMin = 0.0;
      self->_currentStrokeRollDeltaMax = 0.0;
    }

    var7 = point->var7;
    if (var7 < self->_latestNonPredictedTimestamp)
    {
      var7 = self->_latestNonPredictedTimestamp;
    }

    self->_latestNonPredictedTimestamp = var7;
    [(PKStrokeGenerator *)self _removePredictedTouches:*&var0];
  }

  [(PKStrokeGenerator *)self snapPointToRuler:point->var0.var0.x, point->var0.var0.y, *&var0, v27, v28, v29, v30, v31, v32, v33, var15];
  point->var0.var0.x = v24;
  point->var0.var0.y = v25;
  if (point->var8)
  {
    point->var9 = -1;
  }

  std::vector<PKInputPoint>::push_back[abi:ne200100](&self->_drawPoints, point);
  [(PKStrokeGenerator *)self updateRulerSnapping];
  [(PKStrokeGenerator *)self drawingUpdateAllPoints];
  [(PKStrokeGenerator *)self updateImmutableCount];
  [(PKStrokeGenerator *)self setLastPoint:point->var0.var0.x, point->var0.var0.y];
}

- (void)drawingEndedEstimatesTimeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  inputQueue = self->_inputQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PKStrokeGenerator_drawingEndedEstimatesTimeout_completion___block_invoke;
  block[3] = &unk_1E82DC798;
  block[4] = self;
  v10 = completionCopy;
  timeoutCopy = timeout;
  v8 = completionCopy;
  dispatch_async(inputQueue, block);
  [(PKStrokeGenerator *)self setLastPoint:INFINITY, INFINITY];
}

void __61__PKStrokeGenerator_drawingEndedEstimatesTimeout_completion___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 184))
  {
    v2 = os_log_create("com.apple.pencilkit", "Stroke Generator");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEBUG, "Drawing ended", buf, 2u);
    }

    *buf = 0;
    v25 = buf;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__29;
    v28 = __Block_byref_object_dispose__30;
    v29 = 0;
    v3 = *(a1 + 32);
    v4 = *(v3 + 416);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__PKStrokeGenerator_drawingEndedEstimatesTimeout_completion___block_invoke_35;
    block[3] = &unk_1E82D8600;
    block[4] = v3;
    block[5] = buf;
    dispatch_sync(v4, block);
    if (*(v25 + 5))
    {
      v5 = *(a1 + 48);
      v6 = os_log_create("com.apple.pencilkit", "Stroke Generator");
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
      if (v5 <= 0.0)
      {
        if (v7)
        {
          *v22 = 0;
          _os_log_debug_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEBUG, "No estimates timeout", v22, 2u);
        }

        [*(a1 + 32) _drawingUpdateAllPointsDidTimeout:1 updateSemaphore:0];
        v12 = *(v25 + 5);
        *(v25 + 5) = 0;
      }

      else
      {
        if (v7)
        {
          *v22 = 0;
          _os_log_debug_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEBUG, "Waiting for estimates", v22, 2u);
        }

        v8 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
        v9 = *(a1 + 32);
        v10 = *(v9 + 416);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __61__PKStrokeGenerator_drawingEndedEstimatesTimeout_completion___block_invoke_36;
        v21[3] = &unk_1E82D8600;
        v21[4] = v9;
        v21[5] = buf;
        dispatch_after(v8, v10, v21);
        dispatch_semaphore_wait(*(*(a1 + 32) + 264), 0xFFFFFFFFFFFFFFFFLL);
      }
    }

    v13 = os_log_create("com.apple.pencilkit", "Stroke Generator");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *v22 = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEBUG, "Finishing drawing ended", v22, 2u);
    }

    v14 = *(a1 + 32);
    v15 = *(v14 + 416);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __61__PKStrokeGenerator_drawingEndedEstimatesTimeout_completion___block_invoke_37;
    v20[3] = &unk_1E82D6388;
    v20[4] = v14;
    dispatch_sync(v15, v20);
    v16 = +[PKLocalStrokeTracker sharedInstance];
    [(PKLocalStrokeTracker *)v16 addStroke:?];

    (*(*(a1 + 40) + 16))();
    v17 = *(a1 + 32);
    v18 = *(v17 + 416);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __61__PKStrokeGenerator_drawingEndedEstimatesTimeout_completion___block_invoke_2;
    v19[3] = &unk_1E82D6388;
    v19[4] = v17;
    dispatch_sync(v18, v19);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = *(*(a1 + 40) + 16);

    v11();
  }
}

double __61__PKStrokeGenerator_drawingEndedEstimatesTimeout_completion___block_invoke_35(uint64_t a1)
{
  *(*(a1 + 32) + 72) = 1;
  v2 = *(a1 + 32);
  if (v2[272])
  {
    [v2 _updatePredictedTouches];
  }

  else
  {
    [v2 _removePredictedTouches];
  }

  [*(a1 + 32) setCanSnapToRuler:0];
  *(*(*(a1 + 32) + 456) + 40) = 0;
  v3 = [*(a1 + 32) outputFilter];
  (*(*v3 + 8))(v3);
  [*(a1 + 32) updateImmutableCount];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  if (*(v4 + 208) != 0xF0F0F0F0F0F0F0F1 * ((v5 - *(v4 + 16)) >> 3))
  {
    v6 = [*(v4 + 184) _strokeUUID];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *(*(a1 + 32) + 248) = 1;
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
  }

  result = *(v5 - 72);
  *(v4 + 256) = result;
  return result;
}

void __61__PKStrokeGenerator_drawingEndedEstimatesTimeout_completion___block_invoke_37(uint64_t a1)
{
  v2 = [*(a1 + 32) _newStrokeWithCurrentDataAndStrokeDataUUID:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 184);
  *(v3 + 184) = v2;
}

void __61__PKStrokeGenerator_drawingEndedEstimatesTimeout_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) outputFilter];
  (*(*v2 + 32))(v2);
  v3 = *(a1 + 32);
  v4 = *(v3 + 184);
  *(v3 + 184) = 0;
}

- (void)drawingCancelledWithCompletion:(id)completion
{
  completionCopy = completion;
  inputQueue = self->_inputQueue;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __52__PKStrokeGenerator_drawingCancelledWithCompletion___block_invoke;
  v10 = &unk_1E82D63D8;
  selfCopy = self;
  v12 = completionCopy;
  v6 = completionCopy;
  dispatch_async(inputQueue, &v7);
  [(PKStrokeGenerator *)self setLastPoint:INFINITY, INFINITY, v7, v8, v9, v10, selfCopy];
}

void __52__PKStrokeGenerator_drawingCancelledWithCompletion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = os_log_create("com.apple.pencilkit", "Stroke Generator");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEBUG, "Drawing cancelled", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 416);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PKStrokeGenerator_drawingCancelledWithCompletion___block_invoke_39;
  block[3] = &unk_1E82D6388;
  block[4] = v3;
  dispatch_sync(v4, block);
}

void __52__PKStrokeGenerator_drawingCancelledWithCompletion___block_invoke_39(uint64_t a1)
{
  v2 = [*(a1 + 32) outputFilter];
  (*(*v2 + 32))(v2);
  v3 = *(a1 + 32);
  v4 = *(v3 + 184);
  *(v3 + 184) = 0;
}

+ (vector<PKInputPoint,)inputPointsFromPoints:(id)points velocityForDistanceFunction:(SEL)function
{
  v7 = a5;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &__block_literal_global_42_1;
  }

  __p = 0;
  v35 = 0;
  v36 = 0;
  PKArcLengthsFromPointArray(a4, &__p);
  v9 = *(a4 + 1) - *a4;
  if (!v9)
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    v12 = 0.0;
    retstr->__cap_ = 0;
LABEL_12:
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    if (*(a4 + 1) != *a4)
    {
      v15 = v14;
      v16 = 0;
      v17 = 0;
      v18 = 0.0;
      do
      {
        [PKInkProperties rangeForInput:1];
        v20 = v19;
        [PKInkProperties rangeForInput:1];
        v22 = fmin(v20, fmax(v21, v8[2](v8, v18 / v12)));
        v23 = *(__p + v17);
        v15 = v15 + v23 / v22;
        v33 = 0;
        v31 = 0u;
        v32 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v29 = *&v15;
        v25 = *(*a4 + v16);
        *&v30 = -1;
        *&v26 = 0xBFF0000000000000;
        std::vector<PKInputPoint>::push_back[abi:ne200100](retstr, &v25);
        v18 = v18 + v23;
        ++v17;
        v16 += 16;
      }

      while (v17 < (*(a4 + 1) - *a4) >> 4);
    }

    goto LABEL_15;
  }

  v10 = v9 >> 4;
  v11 = __p;
  if (v10 <= 1)
  {
    v10 = 1;
  }

  v12 = 0.0;
  do
  {
    v13 = *v11++;
    v12 = v12 + v13;
    --v10;
  }

  while (v10);
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  if (v12 >= 0.0)
  {
    goto LABEL_12;
  }

LABEL_15:
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  return result;
}

+ (vector<PKInputPoint,)inputPointsFromPath:(id)path maxSegmentLength:(SEL)length velocityForDistanceFunction:(CGPath *)function
{
  v9 = a6;
  __p = 0;
  v12 = 0;
  v13 = 0;
  PKPointsFromPath(function, &__p, a5, 0.0);
  [path inputPointsFromPoints:&__p velocityForDistanceFunction:v9];
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return result;
}

- (id)strokeFromInputPoints:(void *)points inputType:(int64_t)type ink:(id)ink inputScale:(double)scale randomSeed:(unsigned int)seed strokeClass:(Class)class
{
  v9 = *&seed;
  inkCopy = ink;
  v15 = dispatch_semaphore_create(0);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__29;
  v31 = __Block_byref_object_dispose__30;
  v32 = objc_alloc_init(class);
  [v28[5] _setInk:inkCopy];
  [v28[5] _setRandomSeed:v9];
  if (*(points + 1) != *points)
  {
    path = [v28[5] path];
    [path _setTimestamp:*(*points + 64)];

    if (type)
    {
      v17 = 23;
    }

    else
    {
      v17 = 8;
    }

    [(PKStrokeGenerator *)self drawingBeganWithStroke:v28[5] inputType:type activeInputProperties:v17 inputScale:0 start:scale];
    __p = 0;
    v25 = 0;
    v26 = 0;
    std::vector<PKInputPoint>::__init_with_size[abi:ne200100]<PKInputPoint*,PKInputPoint*>(&__p, *points, *(points + 1), 0xF0F0F0F0F0F0F0F1 * ((*(points + 1) - *points) >> 3));
    [(PKStrokeGenerator *)self addPoints:&__p];
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __91__PKStrokeGenerator_strokeFromInputPoints_inputType_ink_inputScale_randomSeed_strokeClass___block_invoke;
    v21[3] = &unk_1E82DC7E0;
    v23 = &v27;
    v18 = v15;
    v22 = v18;
    [(PKStrokeGenerator *)self drawingEndedEstimatesTimeout:v21 completion:0.0];
    dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
  }

  v19 = v28[5];
  _Block_object_dispose(&v27, 8);

  return v19;
}

void __91__PKStrokeGenerator_strokeFromInputPoints_inputType_ink_inputScale_randomSeed_strokeClass___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)strokeFromPath:(CGPath *)path ink:(id)ink inputScale:(double)scale maxSegmentLength:(double)length velocityForDistanceFunction:(id)function strokeClass:(Class)class
{
  inkCopy = ink;
  functionCopy = function;
  v16 = objc_opt_class();
  if (v16)
  {
    [v16 inputPointsFromPath:path maxSegmentLength:functionCopy velocityForDistanceFunction:length];
  }

  else
  {
    __p = 0;
    v20 = 0;
    v21 = 0;
  }

  v17 = [(PKStrokeGenerator *)self strokeFromInputPoints:&__p inputType:0 ink:inkCopy inputScale:arc4random() randomSeed:class strokeClass:scale];
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  return v17;
}

- (id)strokeFromPoints:(CGPoint *)points count:(unint64_t)count ink:(id)ink inputScale:(double)scale strokeClass:(Class)class
{
  inkCopy = ink;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(&v19, points, &points[count], count);
  v13 = objc_opt_class();
  if (v13)
  {
    [v13 inputPointsFromPoints:&v19 velocityForDistanceFunction:0];
  }

  else
  {
    __p = 0;
    v17 = 0;
    v18 = 0;
  }

  v14 = [(PKStrokeGenerator *)self strokeFromInputPoints:&__p inputType:0 ink:inkCopy inputScale:arc4random() randomSeed:class strokeClass:scale];
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  return v14;
}

- (id)strokeFromPoints:(const void *)points sourceStroke:(id)stroke inputScale:(double)scale averageInputPoint:(id *)point
{
  strokeCopy = stroke;
  v11 = objc_opt_class();
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __80__PKStrokeGenerator_strokeFromPoints_sourceStroke_inputScale_averageInputPoint___block_invoke;
  v29 = &__block_descriptor_168_e8_d16__0d8l;
  v12 = *&point->var13;
  v36 = *&point->var11;
  v37 = v12;
  var15 = point->var15;
  v13 = *&point->var5;
  v32 = *&point->var3;
  v33 = v13;
  v14 = *&point->var9;
  v34 = *&point->var7;
  v35 = v14;
  v15 = *&point->var1;
  var0 = point->var0;
  v31 = v15;
  if (v11)
  {
    [v11 inputPointsFromPoints:points velocityForDistanceFunction:&v26];
    if (v40 != v39)
    {
      v16 = 0xF0F0F0F0F0F0F0F1 * ((v40 - v39) >> 3);
      if (v16 <= 1)
      {
        v16 = 1;
      }

      v17 = v39 + 112;
      do
      {
        var13 = point->var13;
        var5 = point->var5;
        v20 = *&point->var3;
        *(v17 - 6) = *&point->var1;
        *(v17 - 5) = v20;
        *(v17 - 8) = var5;
        *v17 = var13;
        v17 += 17;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
  }

  _inputType = [strokeCopy _inputType];
  v22 = [strokeCopy ink];
  v23 = arc4random();
  v24 = [(PKStrokeGenerator *)self strokeFromInputPoints:&v39 inputType:_inputType ink:v22 inputScale:v23 randomSeed:objc_opt_class() strokeClass:scale];

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  return v24;
}

- (id)strokeFromLineSegments:(const void *)segments maxSegmentLength:(double)length ink:(id)ink inputScale:(double)scale strokeClass:(Class)class
{
  inkCopy = ink;
  v10 = 0;
  v11 = 0;
  __src = 0;
  v37 = 0;
  v38 = 0;
  v12 = ((*(segments + 1) - *segments) >> 4) - 1;
  do
  {
    v13 = 0;
    v14 = *(*segments + 16 * v11++);
    v15 = *(*segments + 16 * v11);
    v16 = vsubq_f64(v14, v15);
    v16.f64[0] = sqrt(COERCE_DOUBLE(*&vmulq_f64(v16, v16).f64[1]) + v16.f64[0] * v16.f64[0]) / length;
    v17 = vcvtpd_u64_f64(v16.f64[0]);
    v18 = ceil(v16.f64[0]);
    v34 = vsubq_f64(v15, v14);
    v35 = v14;
    do
    {
      v19 = vaddq_f64(v35, vmulq_n_f64(v34, v13 / v18));
      if (v10 >= v38)
      {
        v20 = __src;
        v21 = v10 - __src;
        v22 = (v10 - __src) >> 4;
        v23 = v22 + 1;
        if ((v22 + 1) >> 60)
        {
          std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
        }

        v24 = v38 - __src;
        if ((v38 - __src) >> 3 > v23)
        {
          v23 = v24 >> 3;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFF0)
        {
          v25 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v23;
        }

        if (v25)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(&__src, v25);
        }

        v26 = v22;
        v27 = (16 * v22);
        f64 = v27[-v26].f64;
        *v27 = v19;
        v10 = v27 + 1;
        memcpy(f64, v20, v21);
        v29 = __src;
        __src = f64;
        v37 = v10;
        v38 = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      else
      {
        *v10++ = v19;
      }

      v37 = v10;
      ++v13;
    }

    while (v13 <= v17);
  }

  while (v11 != v12);
  v30 = [PKStrokeGenerator strokeFromPoints:"strokeFromPoints:count:ink:inputScale:strokeClass:" count:scale ink:? inputScale:? strokeClass:?];
  if (__src)
  {
    v37 = __src;
    operator delete(__src);
  }

  return v30;
}

- (void)whenFinishedProcessingPointsCallCompletion:(id)completion
{
  completionCopy = completion;
  inputQueue = self->_inputQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__PKStrokeGenerator_whenFinishedProcessingPointsCallCompletion___block_invoke;
  v7[3] = &unk_1E82D6D58;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(inputQueue, v7);
}

void __64__PKStrokeGenerator_whenFinishedProcessingPointsCallCompletion___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 416);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKStrokeGenerator_whenFinishedProcessingPointsCallCompletion___block_invoke_2;
  block[3] = &unk_1E82D63B0;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

- (CGAffineTransform)rulerTransform
{
  v3 = *&self[13].d;
  *&retstr->a = *&self[13].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[13].ty;
  return self;
}

- (void)setRulerTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_rulerTransform.c = *&transform->c;
  *&self->_rulerTransform.tx = v4;
  *&self->_rulerTransform.a = v3;
}

- (CGPoint)lastPoint
{
  objc_copyStruct(v4, &self->_lastPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end