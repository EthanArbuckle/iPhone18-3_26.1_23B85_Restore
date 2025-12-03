@interface AXCameraVisionEngine
+ (BOOL)_isContainedWithinScreenBoundsForNormalizedFrame:(CGRect)frame;
+ (CGAffineTransform)_scaleNormalizedCoordinatesToSceneCoordinates:(SEL)coordinates;
+ (id)sharedEngine;
- (AVCaptureSession)captureSession;
- (AXCameraVisionEngine)init;
- (BOOL)_attemptAnnouncement:(id)announcement type:(int64_t)type isPartial:(BOOL)partial timestamp:(double)timestamp;
- (BOOL)_canCreateAccessibilityElementForFeature:(id)feature correctedFrame:(CGRect)frame allFeatures:(id)features;
- (BOOL)_canPostAnnouncement:(id)announcement type:(int64_t)type isPartial:(BOOL)partial timestamp:(double)timestamp;
- (BOOL)_hasDetectedFaces;
- (BOOL)_hasRealtimeFacesWithoutNames;
- (BOOL)_shouldReuseExistingElement:(id)element forFeature:(id)feature correctedFrame:(CGRect)frame;
- (BOOL)_updateAccessibilityElements:(id)elements forIncomingFeature:(id)feature correctedFrame:(CGRect)frame evaluatedFeatureTypes:(id)types;
- (CGRect)_motionCorrectedNormalizedFrame:(CGRect)frame frameContext:(id)context targetAttitude:(id)attitude;
- (CGRect)_motionCorrectedNormalizedFrameForFeature:(id)feature;
- (CGRect)_normalizedFrameForAccessibilityElements:(id)elements;
- (CGRect)_sceneObjectFrameForNormalizedFrame:(CGRect)frame inSceneFrame:(CGRect)sceneFrame;
- (CGSize)_lastSampleBufferSize;
- (UIView)sceneObjectElementContainerView;
- (id)_analysisOptionsForIncomingFrame;
- (id)_announcementStringForFeedbackZone:(int64_t)zone;
- (id)_filterElements:(id)elements usingRelativeAreaThreshold:(double)threshold referenceElement:(id)element;
- (id)_filterElements:(id)elements usingRelativeWidthThreshold:(double)threshold referenceElement:(id)element;
- (id)_sceneDescriptionAnnouncementForVisionFeatures:(id)features previousAnnouncementLocation:(int64_t)location locationForAnnouncement:(int64_t *)announcement announcementType:(int64_t *)type;
- (void)_applyMotionCorrectionToElement:(id)element updatedFrameContext:(id)context;
- (void)_attemptLevelingAnnouncementForZone:(int64_t)zone previousZone:(int64_t)previousZone;
- (void)_attemptSceneDescriptionAnnouncement:(id)announcement locationForAnnouncement:(int64_t)forAnnouncement type:(int64_t)type;
- (void)_clearCachedVisionResults;
- (void)_createAccessibilityElementCandidatesForVisionFeatures:(id)features evaluatedFeatureTypes:(id)types;
- (void)_dispatchToResultsQueueWithBlock:(id)block;
- (void)_generateAnnouncementsForVisionFeatures:(id)features;
- (void)_handleAnnouncementDidFinish:(id)finish;
- (void)_handleCameraMetadataObjects:(id)objects fromConnection:(id)connection;
- (void)_handleDeviceMotion:(id)motion;
- (void)_handleUpdatedVisionFeatures:(id)features evaluatedFeatureTypes:(id)types fromMotionUpdate:(BOOL)update;
- (void)_handleVisionFeatures:(id)features evaluatedFeatureTypes:(id)types userContext:(id)context;
- (void)_performBecameLevelFeedback;
- (void)_performBecameUnlevelFeedback;
- (void)_performOnMainQueueWithBlock:(id)block;
- (void)_performScreenEdgeHaptic;
- (void)_purgeExpiredVisionFeaturesUsingTime:(double)time;
- (void)_resetAccessiblityElements;
- (void)_resetAnnouncementState;
- (void)_resetScheduling;
- (void)_setCaptureDevicePosition:(int64_t)position mode:(int64_t)mode;
- (void)_setupCaptureSessionNode;
- (void)_setupEngine;
- (void)_setupHaptics;
- (void)_setupLeveling;
- (void)_sortedAndFilteredAccessibilityElements:(id)elements faces:(id *)faces persons:(id *)persons prominentObjects:(id *)objects objectClassifications:(id *)classifications;
- (void)_updateLevelFeedbackForDeviceMotion:(id)motion;
- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects forMetadataObjectTypes:(id)types fromConnection:(id)connection;
- (void)captureSessionNode:(id)node didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)dealloc;
- (void)motionManagerDidUpdateDeviceMotion:(id)motion captureOrientation:(int64_t)orientation;
- (void)setAppActive:(BOOL)active;
- (void)setCaptureDevicePosition:(int64_t)position mode:(int64_t)mode;
- (void)setCaptureSession:(id)session;
- (void)setInterfaceOrientation:(int64_t)orientation;
- (void)setPreviousSceneAnnouncementCandidateWithoutLocation:(id)location;
@end

@implementation AXCameraVisionEngine

+ (id)sharedEngine
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __36__AXCameraVisionEngine_sharedEngine__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (sharedEngine_onceToken != -1)
    {
      dispatch_once(&sharedEngine_onceToken, block);
    }
  }

  v3 = sharedEngine_sharedVisionEngine;

  return v3;
}

uint64_t __36__AXCameraVisionEngine_sharedEngine__block_invoke(uint64_t a1)
{
  sharedEngine_sharedVisionEngine = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2A1C71028]();
}

- (AXCameraVisionEngine)init
{
  v12.receiver = self;
  v12.super_class = AXCameraVisionEngine;
  v2 = [(AXCameraVisionEngine *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v4 = dispatch_queue_create("AXCameraVisionEngine", v3);
    axResultsQueue = v2->_axResultsQueue;
    v2->_axResultsQueue = v4;

    [(AXCameraVisionEngine *)v2 _setupEngine];
    [(AXCameraVisionEngine *)v2 _setupHaptics];
    [(AXCameraVisionEngine *)v2 _setupLeveling];
    [(AXCameraVisionEngine *)v2 _resetAnnouncementState];
    dictionary = [MEMORY[0x29EDB8E00] dictionary];
    mostRecentVisionFeatures = v2->__mostRecentVisionFeatures;
    v2->__mostRecentVisionFeatures = dictionary;

    dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
    mostRecentVisionFeaturesUpdateTimes = v2->__mostRecentVisionFeaturesUpdateTimes;
    v2->__mostRecentVisionFeaturesUpdateTimes = dictionary2;

    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleAnnouncementDidFinish_ name:*MEMORY[0x29EDC7E98] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXCameraVisionEngine;
  [(AXCameraVisionEngine *)&v4 dealloc];
}

- (void)setAppActive:(BOOL)active
{
  self->_appActive = active;
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __37__AXCameraVisionEngine_setAppActive___block_invoke;
  v3[3] = &unk_29F2ACE98;
  v3[4] = self;
  activeCopy = active;
  [(AXCameraVisionEngine *)self _dispatchToResultsQueueWithBlock:v3];
}

- (void)setInterfaceOrientation:(int64_t)orientation
{
  if (self->_interfaceOrientation != orientation)
  {
    self->_interfaceOrientation = orientation;
    [(AXCameraVisionEngine *)self _resetScheduling];
    [(AXCameraVisionEngine *)self _clearCachedVisionResults];
    [(AXCameraVisionEngine *)self _resetAccessiblityElements];

    [(AXCameraVisionEngine *)self _resetAnnouncementState];
  }
}

- (void)setCaptureDevicePosition:(int64_t)position mode:(int64_t)mode
{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __54__AXCameraVisionEngine_setCaptureDevicePosition_mode___block_invoke;
  v4[3] = &unk_29F2ACEC0;
  v4[4] = self;
  v4[5] = position;
  v4[6] = mode;
  [(AXCameraVisionEngine *)self _dispatchToResultsQueueWithBlock:v4];
}

- (void)_setCaptureDevicePosition:(int64_t)position mode:(int64_t)mode
{
  self->_cameraDevicePosition = position;
  self->_cameraMode = mode;
  [(AXCameraVisionEngine *)self _resetScheduling];
  [(AXCameraVisionEngine *)self _clearCachedVisionResults];
  [(AXCameraVisionEngine *)self _resetAccessiblityElements];
  [(AXCameraVisionEngine *)self _resetAnnouncementState];
  v5 = *MEMORY[0x29EDB90E8];
  v6 = *(MEMORY[0x29EDB90E8] + 8);

  [(AXCameraVisionEngine *)self set_lastSampleBufferSize:v5, v6];
}

- (void)_resetScheduling
{
  [(AXCameraVisionEngine *)self setLastDesiredAnalysisOptions:0];

  [(AXCameraVisionEngine *)self setCurrentFrameCount:0];
}

- (void)_clearCachedVisionResults
{
  _mostRecentVisionFeatures = [(AXCameraVisionEngine *)self _mostRecentVisionFeatures];
  [_mostRecentVisionFeatures removeAllObjects];
}

- (void)_resetAccessiblityElements
{
  [(AXCameraVisionEngine *)self set_accessibilityElementCandidates:0];
  sceneObjectElementContainerView = [(AXCameraVisionEngine *)self sceneObjectElementContainerView];
  [sceneObjectElementContainerView setAccessibilityElements:0];

  v4 = *MEMORY[0x29EDC7ED8];

  UIAccessibilityPostNotification(v4, 0);
}

- (void)_resetAnnouncementState
{
  [(AXCameraVisionEngine *)self setLastAnnouncement:0];
  [(AXCameraVisionEngine *)self setLastAnnouncementType:0];
  [(AXCameraVisionEngine *)self setLastAnnouncementTime:CFAbsoluteTimeGetCurrent()];
  [(AXCameraVisionEngine *)self setInflightAnnouncement:0];
  [(AXCameraVisionEngine *)self setPreviousSceneAnnouncementCandidateWithoutLocation:0];
  [(AXCameraVisionEngine *)self setLastSceneAnnouncement:0];
  [(AXCameraVisionEngine *)self setLastSceneAnnouncementFull:0];
  [(AXCameraVisionEngine *)self setLastSceneAnnouncementWithoutLocation:0];
  [(AXCameraVisionEngine *)self setLastSceneAnnouncementLocation:0];
  [(AXCameraVisionEngine *)self setLastSceneAnnouncementTime:0.0];
  [(AXCameraVisionEngine *)self setLastSceneAnnouncementFullTime:0.0];
  _levelingMotionAnalyzer = [(AXCameraVisionEngine *)self _levelingMotionAnalyzer];
  [_levelingMotionAnalyzer reset];

  [(AXCameraVisionEngine *)self setLastLevelZone:0];
  [(AXCameraVisionEngine *)self setLastLevelZoneChangedTime:0.0];
  [(AXCameraVisionEngine *)self setLastLevelAnnouncementZone:0];

  [(AXCameraVisionEngine *)self setLastLevelAnnouncementTime:0.0];
}

- (void)_dispatchToResultsQueueWithBlock:(id)block
{
  blockCopy = block;
  axResultsQueue = [(AXCameraVisionEngine *)self axResultsQueue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __57__AXCameraVisionEngine__dispatchToResultsQueueWithBlock___block_invoke;
  block[3] = &unk_29F2ACEE8;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(axResultsQueue, block);
}

void __57__AXCameraVisionEngine__dispatchToResultsQueueWithBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_performOnMainQueueWithBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    if ([MEMORY[0x29EDBA108] isMainThread])
    {
      v4 = objc_autoreleasePoolPush();
      blockCopy[2](blockCopy);
      objc_autoreleasePoolPop(v4);
    }

    else
    {
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = __53__AXCameraVisionEngine__performOnMainQueueWithBlock___block_invoke;
      block[3] = &unk_29F2ACEE8;
      v6 = blockCopy;
      dispatch_async(MEMORY[0x29EDCA578], block);
    }
  }
}

void __53__AXCameraVisionEngine__performOnMainQueueWithBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_setupEngine
{
  obj = [objc_alloc(MEMORY[0x29EDBD768]) initWithIdentifier:@"CameraEngine"];
  [obj setMaximumQueueSize:0];
  [obj setDiagnosticsEnabled:1];
  [obj setPrioritySchedulingEnabled:0];
  objc_storeStrong(&self->_visionEngine, obj);
  if ([obj canAddEvaluationNodeClass:objc_opt_class()])
  {
    v3 = [objc_alloc(MEMORY[0x29EDBD730]) initWithIdentifier:@"face"];
    [obj addEvaluationNode:v3];
  }

  if ([obj canAddEvaluationNodeClass:objc_opt_class()])
  {
    v4 = [objc_alloc(MEMORY[0x29EDBD750]) initWithIdentifier:@"prominentObject"];
    [obj addEvaluationNode:v4];
  }

  if ([obj canAddEvaluationNodeClass:objc_opt_class()])
  {
    v5 = [objc_alloc(MEMORY[0x29EDBD758]) initWithIdentifier:@"sceneDetector"];
    [v5 setTaxonomyOptions:7];
    [obj addEvaluationNode:v5];
  }

  if ([obj canAddEvaluationNodeClass:objc_opt_class()])
  {
    v6 = [objc_alloc(MEMORY[0x29EDBD738]) initWithIdentifier:@"horizon"];
    [obj addEvaluationNode:v6];
  }

  if ([obj canAddEvaluationNodeClass:objc_opt_class()])
  {
    v7 = [objc_alloc(MEMORY[0x29EDBD740]) initWithIdentifier:@"aesthetics"];
    [obj addEvaluationNode:v7];
  }

  self->_interfaceOrientation = 0;
  [(AXCameraVisionEngine *)self setCameraDevicePosition:0];
  [(AXCameraVisionEngine *)self setCameraMode:0];
}

- (void)_setupHaptics
{
  v3 = objc_alloc_init(AXCameraHapticEngine);
  hapticEngine = self->_hapticEngine;
  self->_hapticEngine = v3;

  v5 = self->_hapticEngine;

  [(AXCameraHapticEngine *)v5 setScreenEdgeFeedbackCooldownTime:0.2];
}

- (void)_setupLeveling
{
  self->__levelingMotionAnalyzer = objc_alloc_init(AXCameraLevelingMotionAnalyzer);

  MEMORY[0x2A1C71028]();
}

- (AVCaptureSession)captureSession
{
  WeakRetained = objc_loadWeakRetained(&self->_captureSession);

  return WeakRetained;
}

- (void)setCaptureSession:(id)session
{
  obj = session;
  WeakRetained = objc_loadWeakRetained(&self->_captureSession);

  v5 = obj;
  if (WeakRetained != obj)
  {
    visionEngine = [(AXCameraVisionEngine *)self visionEngine];
    v7 = [visionEngine canAddSourceNodeClass:objc_opt_class()];

    v5 = obj;
    if (v7)
    {
      objc_storeWeak(&self->_captureSession, obj);
      [(AXCameraVisionEngine *)self _setupCaptureSessionNode];
      v5 = obj;
    }
  }
}

- (void)_setupCaptureSessionNode
{
  WeakRetained = objc_loadWeakRetained(&self->_captureSession);

  if (WeakRetained)
  {
    if (!self->_captureSessionNode)
    {
      v4 = [objc_alloc(MEMORY[0x29EDBD708]) initWithIdentifier:@"captureSession"];
      [(AXCameraVisionEngine *)self setCaptureSessionNode:v4];

      visionEngine = [(AXCameraVisionEngine *)self visionEngine];
      captureSessionNode = [(AXCameraVisionEngine *)self captureSessionNode];
      [visionEngine addSourceNode:captureSessionNode];
    }

    v7 = v15;
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v8 = __48__AXCameraVisionEngine__setupCaptureSessionNode__block_invoke;
    goto LABEL_7;
  }

  captureSessionNode2 = [(AXCameraVisionEngine *)self captureSessionNode];

  if (captureSessionNode2)
  {
    v7 = block;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    v8 = __48__AXCameraVisionEngine__setupCaptureSessionNode__block_invoke_2;
LABEL_7:
    v7[2] = v8;
    v7[3] = &unk_29F2ACC80;
    v7[4] = self;
    dispatch_async(MEMORY[0x29EDCA578], v7);
  }

  objc_initWeak(&location, self);
  visionEngine2 = [(AXCameraVisionEngine *)self visionEngine];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __48__AXCameraVisionEngine__setupCaptureSessionNode__block_invoke_3;
  v11[3] = &unk_29F2ACF38;
  objc_copyWeak(&v12, &location);
  [visionEngine2 addResultHandler:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __48__AXCameraVisionEngine__setupCaptureSessionNode__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) captureSessionNode];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = *(a1 + 32);
  v4 = [v3 axResultsQueue];
  [v5 beginFrameEventsWithAVCaptureSession:WeakRetained delegate:v3 queue:v4];
}

void __48__AXCameraVisionEngine__setupCaptureSessionNode__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) captureSessionNode];
  [v1 endVideoFrameEvents];
}

void __48__AXCameraVisionEngine__setupCaptureSessionNode__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = [a3 localizedDescription];
    _AXLogWithFacility();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v8[0] = MEMORY[0x29EDCA5F8];
      v8[1] = 3221225472;
      v8[2] = __48__AXCameraVisionEngine__setupCaptureSessionNode__block_invoke_4;
      v8[3] = &unk_29F2ACF10;
      v8[4] = WeakRetained;
      v9 = v5;
      [v6 _dispatchToResultsQueueWithBlock:v8];
    }
  }
}

void __48__AXCameraVisionEngine__setupCaptureSessionNode__block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = [*(a1 + 40) features];
  v3 = [*(a1 + 40) evaluatedFeatureTypes];
  v4 = [*(a1 + 40) userContext];
  [v2 _handleVisionFeatures:v5 evaluatedFeatureTypes:v3 userContext:v4];
}

- (id)_analysisOptionsForIncomingFrame
{
  v3 = objc_alloc_init(MEMORY[0x29EDBD760]);
  _hasRealtimeFacesWithoutNames = [(AXCameraVisionEngine *)self _hasRealtimeFacesWithoutNames];
  if (_hasRealtimeFacesWithoutNames || ![(AXCameraVisionEngine *)self _hasDetectedFaces])
  {
    [v3 setDetectFaceNames:1];
    [v3 setDetectFaceRectangles:!_hasRealtimeFacesWithoutNames];
  }

  v5 = [(AXCameraVisionEngine *)self currentFrameCount]% 0x1E;
  currentFrameCount = [(AXCameraVisionEngine *)self currentFrameCount];
  lastDesiredAnalysisOptions = [(AXCameraVisionEngine *)self lastDesiredAnalysisOptions];
  v8 = objc_alloc_init(MEMORY[0x29EDBD760]);
  if ([v3 detectFaceNames])
  {
    v9 = [lastDesiredAnalysisOptions detectFaceNames] ^ 1;
    if (v5)
    {
      v10 = v9;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  [v8 setDetectFaceNames:v10];
  if ([v3 detectFaceRectangles])
  {
    v11 = [lastDesiredAnalysisOptions detectFaceRectangles] ^ 1;
    if (v5)
    {
      v12 = v11;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  [v8 setDetectFaceRectangles:v12];
  if ([v3 detectProminentObjects])
  {
    v13 = [lastDesiredAnalysisOptions detectProminentObjects] ^ 1;
    if (v5)
    {
      v14 = v13;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  [v8 setDetectProminentObjects:v14];
  if ([v3 detectScenes])
  {
    v15 = [lastDesiredAnalysisOptions detectScenes] ^ 1;
    if (currentFrameCount % 0x1E)
    {
      v16 = v15;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  [v8 setDetectScenes:v16];
  if ([v3 detectHorizon])
  {
    v17 = [lastDesiredAnalysisOptions detectHorizon] ^ 1;
    if (v5)
    {
      v18 = v17;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  [v8 setDetectHorizon:v18];
  if ([v3 detectAesthetics])
  {
    v19 = [lastDesiredAnalysisOptions detectAesthetics] ^ 1;
    if (v5)
    {
      v20 = v19;
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  [v8 setDetectAesthetics:v20];
  [(AXCameraVisionEngine *)self setCurrentFrameCount:[(AXCameraVisionEngine *)self currentFrameCount]+ 1];
  [(AXCameraVisionEngine *)self setLastDesiredAnalysisOptions:v3];

  return v8;
}

- (BOOL)_hasRealtimeFacesWithoutNames
{
  v18 = *MEMORY[0x29EDCA608];
  _mostRecentVisionFeatures = [(AXCameraVisionEngine *)self _mostRecentVisionFeatures];
  v4 = [_mostRecentVisionFeatures objectForKeyedSubscript:&unk_2A214D048];

  if (v4)
  {
    [(AXCameraVisionEngine *)self _accessibilityElementCandidates];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v16 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if ([v9 isFace])
          {
            faceName = [v9 faceName];
            v11 = [faceName length];

            if (!v11)
            {
              LOBYTE(v6) = 1;
              goto LABEL_14;
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)_hasDetectedFaces
{
  _mostRecentVisionFeatures = [(AXCameraVisionEngine *)self _mostRecentVisionFeatures];
  v4 = [_mostRecentVisionFeatures objectForKeyedSubscript:&unk_2A214D060];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    _mostRecentVisionFeatures2 = [(AXCameraVisionEngine *)self _mostRecentVisionFeatures];
    v7 = [_mostRecentVisionFeatures2 objectForKeyedSubscript:&unk_2A214D048];
    v5 = v7 != 0;
  }

  return v5;
}

- (void)_performBecameLevelFeedback
{
  hapticEngine = [(AXCameraVisionEngine *)self hapticEngine];
  [hapticEngine performLevelFeedback];
}

- (void)_performBecameUnlevelFeedback
{
  hapticEngine = [(AXCameraVisionEngine *)self hapticEngine];
  [hapticEngine performUnlevelFeedback];
}

- (void)_performScreenEdgeHaptic
{
  hapticEngine = [(AXCameraVisionEngine *)self hapticEngine];
  [hapticEngine performSubjectHitScreenEdgeFeedback];
}

- (void)_handleVisionFeatures:(id)features evaluatedFeatureTypes:(id)types userContext:(id)context
{
  v39 = *MEMORY[0x29EDCA608];
  featuresCopy = features;
  typesCopy = types;
  contextCopy = context;
  if (contextCopy)
  {
    lastCameraFrameContext = [(AXCameraVisionEngine *)self lastCameraFrameContext];
    if (!lastCameraFrameContext || (v11 = lastCameraFrameContext, [contextCopy presentationTimestamp], v13 = v12, -[AXCameraVisionEngine lastCameraFrameContext](self, "lastCameraFrameContext"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "presentationTimestamp"), v16 = v15, v14, v11, v13 > v16))
    {
      [(AXCameraVisionEngine *)self setLastCameraFrameContext:contextCopy];
    }
  }

  v28 = contextCopy;
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v18 = featuresCopy;
  v19 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v35;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v34 + 1) + 8 * i);
        if ([v23 isMotion])
        {
          v24 = AXMediaLogCommon();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            [AXCameraVisionEngine _handleVisionFeatures:v33 evaluatedFeatureTypes:v24 userContext:?];
          }
        }

        if ([v23 isCameraMetadata])
        {
          v25 = AXMediaLogCommon();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            [AXCameraVisionEngine _handleVisionFeatures:v31 evaluatedFeatureTypes:v25 userContext:?];
          }
        }

        v26 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v23, "featureType")}];
        v27 = [dictionary objectForKeyedSubscript:v26];
        if (!v27)
        {
          v27 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
          [dictionary setObject:v27 forKeyedSubscript:v26];
        }

        [v27 addObject:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v20);
  }

  if ([typesCopy count])
  {
    [(AXCameraVisionEngine *)self _handleUpdatedVisionFeatures:dictionary evaluatedFeatureTypes:typesCopy fromMotionUpdate:0];
  }
}

- (void)_handleUpdatedVisionFeatures:(id)features evaluatedFeatureTypes:(id)types fromMotionUpdate:(BOOL)update
{
  v26 = *MEMORY[0x29EDCA608];
  featuresCopy = features;
  typesCopy = types;
  _mostRecentVisionFeatures = [(AXCameraVisionEngine *)self _mostRecentVisionFeatures];
  selfCopy = self;
  _mostRecentVisionFeaturesUpdateTimes = [(AXCameraVisionEngine *)self _mostRecentVisionFeaturesUpdateTimes];
  Current = CFAbsoluteTimeGetCurrent();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = typesCopy;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        v18 = [featuresCopy objectForKeyedSubscript:v17];
        if ([v18 count])
        {
          [_mostRecentVisionFeatures setObject:v18 forKeyedSubscript:v17];
          v19 = [MEMORY[0x29EDBA070] numberWithDouble:Current];
          [_mostRecentVisionFeaturesUpdateTimes setObject:v19 forKeyedSubscript:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  [(AXCameraVisionEngine *)selfCopy _purgeExpiredVisionFeaturesUsingTime:Current];
  [(AXCameraVisionEngine *)selfCopy _createAccessibilityElementCandidatesForVisionFeatures:_mostRecentVisionFeatures evaluatedFeatureTypes:v12];
  [(AXCameraVisionEngine *)selfCopy _generateAnnouncementsForVisionFeatures:_mostRecentVisionFeatures];
}

- (void)_purgeExpiredVisionFeaturesUsingTime:(double)time
{
  v23 = *MEMORY[0x29EDCA608];
  _mostRecentVisionFeatures = [(AXCameraVisionEngine *)self _mostRecentVisionFeatures];
  _mostRecentVisionFeaturesUpdateTimes = [(AXCameraVisionEngine *)self _mostRecentVisionFeaturesUpdateTimes];
  allKeys = [_mostRecentVisionFeatures allKeys];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        integerValue = [v12 integerValue];
        v14 = [_mostRecentVisionFeaturesUpdateTimes objectForKeyedSubscript:v12];
        [v14 doubleValue];
        v16 = v15;

        [(AXCameraVisionEngine *)self _expirationTimeForFeatureType:integerValue];
        if (time - v16 >= v17)
        {
          [_mostRecentVisionFeatures setObject:0 forKeyedSubscript:v12];
          [_mostRecentVisionFeaturesUpdateTimes setObject:0 forKeyedSubscript:v12];
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }
}

- (void)_createAccessibilityElementCandidatesForVisionFeatures:(id)features evaluatedFeatureTypes:(id)types
{
  v116 = *MEMORY[0x29EDCA608];
  featuresCopy = features;
  typesCopy = types;
  sceneObjectElementContainerView = [(AXCameraVisionEngine *)self sceneObjectElementContainerView];

  if (sceneObjectElementContainerView)
  {
    lastDeviceMotion = [(AXCameraVisionEngine *)self lastDeviceMotion];
    attitude = [lastDeviceMotion attitude];

    lastCameraFrameContext = [(AXCameraVisionEngine *)self lastCameraFrameContext];
    v84 = attitude;
    v12 = typesCopy;
    if (lastCameraFrameContext)
    {
      v13 = objc_alloc(MEMORY[0x29EDBD720]);
      [lastCameraFrameContext videoFieldOfView];
      v15 = v14;
      [lastCameraFrameContext videoZoomFactor];
      v17 = v16;
      videoSourceWidth = [lastCameraFrameContext videoSourceWidth];
      videoSourceHeight = [lastCameraFrameContext videoSourceHeight];
      [lastCameraFrameContext presentationTimestamp];
      v21 = v20;
      LODWORD(v20) = v15;
      LODWORD(v22) = v17;
      v95 = [v13 initWithVideoFieldOfView:videoSourceWidth zoomFactor:videoSourceHeight sourceWidth:attitude sourceHeight:v20 presentationTimestamp:v22 attitude:v21];
    }

    else
    {
      v95 = 0;
    }

    array = [MEMORY[0x29EDB8DE8] array];
    _accessibilityElementCandidates = [(AXCameraVisionEngine *)self _accessibilityElementCandidates];
    v24 = [_accessibilityElementCandidates mutableCopy];

    v92 = [MEMORY[0x29EDB8E20] set];
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    obj = v24;
    v25 = [obj countByEnumeratingWithState:&v108 objects:v115 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v109;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v109 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v108 + 1) + 8 * i);
          v30 = objc_opt_class();
          [v29 normalizedFrame];
          if (([v30 _isContainedWithinScreenBoundsForNormalizedFrame:?] & 1) == 0)
          {
            [v92 addObject:v29];
          }

          [(AXCameraVisionEngine *)self _applyMotionCorrectionToElement:v29 updatedFrameContext:v95];
        }

        v26 = [obj countByEnumeratingWithState:&v108 objects:v115 count:16];
      }

      while (v26);
    }

    v83 = lastCameraFrameContext;

    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    typesCopy = v12;
    v31 = array;
    v86 = [&unk_2A214D0F0 countByEnumeratingWithState:&v104 objects:v114 count:16];
    if (v86)
    {
      v85 = *v105;
      v88 = *MEMORY[0x29EDC7FF0];
      v89 = v12;
      v90 = featuresCopy;
      do
      {
        v32 = 0;
        do
        {
          if (*v105 != v85)
          {
            objc_enumerationMutation(&unk_2A214D0F0);
          }

          v87 = v32;
          v33 = [featuresCopy objectForKeyedSubscript:*(*(&v104 + 1) + 8 * v32)];
          v100 = 0u;
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          v34 = [v33 countByEnumeratingWithState:&v100 objects:v113 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v101;
            v94 = v33;
            do
            {
              for (j = 0; j != v35; ++j)
              {
                if (*v101 != v36)
                {
                  objc_enumerationMutation(v33);
                }

                v38 = *(*(&v100 + 1) + 8 * j);
                [(AXCameraVisionEngine *)self _motionCorrectedNormalizedFrameForFeature:v38];
                v40 = v39;
                v42 = v41;
                v44 = v43;
                v46 = v45;
                if (![(AXCameraVisionEngine *)self _updateAccessibilityElements:v31 forIncomingFeature:v38 correctedFrame:typesCopy evaluatedFeatureTypes:?]&& [(AXCameraVisionEngine *)self _canCreateAccessibilityElementForFeature:v38 correctedFrame:featuresCopy allFeatures:v40, v42, v44, v46])
                {
                  v98 = 0u;
                  v99 = 0u;
                  v96 = 0u;
                  v97 = 0u;
                  v47 = obj;
                  v48 = [v47 countByEnumeratingWithState:&v96 objects:v112 count:16];
                  if (v48)
                  {
                    v49 = v48;
                    v50 = *v97;
LABEL_28:
                    v51 = 0;
                    while (1)
                    {
                      if (*v97 != v50)
                      {
                        objc_enumerationMutation(v47);
                      }

                      v52 = *(*(&v96 + 1) + 8 * v51);
                      if ([(AXCameraVisionEngine *)self _shouldReuseExistingElement:v52 forFeature:v38 correctedFrame:v40, v42, v44, v46])
                      {
                        break;
                      }

                      if (v49 == ++v51)
                      {
                        v49 = [v47 countByEnumeratingWithState:&v96 objects:v112 count:16];
                        if (v49)
                        {
                          goto LABEL_28;
                        }

                        goto LABEL_34;
                      }
                    }

                    v53 = v52;

                    if (!v53)
                    {
                      goto LABEL_37;
                    }

                    [v47 removeObject:v53];
                    [(AXCameraAccessibilityElement *)v53 setDidReuse:1];
                  }

                  else
                  {
LABEL_34:

LABEL_37:
                    v54 = [AXCameraAccessibilityElement alloc];
                    sceneObjectElementContainerView2 = [(AXCameraVisionEngine *)self sceneObjectElementContainerView];
                    v53 = [(AXCameraAccessibilityElement *)v54 initWithAccessibilityContainer:sceneObjectElementContainerView2];
                  }

                  sceneObjectElementContainerView3 = [(AXCameraVisionEngine *)self sceneObjectElementContainerView];
                  [sceneObjectElementContainerView3 bounds];
                  [(AXCameraVisionEngine *)self _sceneObjectFrameForNormalizedFrame:v40 inSceneFrame:v42, v44, v46, v57, v58, v59, v60];
                  v62 = v61;
                  v64 = v63;
                  v66 = v65;
                  v68 = v67;

                  v69 = [MEMORY[0x29EDBD770] locationForNormalizedFrame:-[AXCameraAccessibilityElement location](v53 previousLocation:"location") usingThirds:{-[AXCameraVisionEngine useThirdsForLocation](self, "useThirdsForLocation"), v40, v42, v44, v46}];
                  -[AXCameraAccessibilityElement setFeatureType:](v53, "setFeatureType:", [v38 featureType]);
                  [(AXCameraAccessibilityElement *)v53 setNormalizedFrame:v40, v42, v44, v46];
                  [(AXCameraAccessibilityElement *)v53 setLocation:v69];
                  [v38 confidence];
                  [(AXCameraAccessibilityElement *)v53 setConfidence:?];
                  [(AXCameraAccessibilityElement *)v53 setAccessibilityTraits:v88 | [(AXCameraAccessibilityElement *)v53 accessibilityTraits]];
                  [(AXCameraAccessibilityElement *)v53 setAccessibilityFrameInContainerSpace:v62, v64, v66, v68];
                  classificationLocalizedValue = [v38 classificationLocalizedValue];
                  [(AXCameraAccessibilityElement *)v53 setClassificationLocalizedValue:classificationLocalizedValue];

                  classificationLabel = [v38 classificationLabel];
                  [(AXCameraAccessibilityElement *)v53 setClassificationLabel:classificationLabel];

                  [(AXCameraAccessibilityElement *)v53 setCameraFrameContext:v95];
                  if ([v92 containsObject:v53])
                  {
                    v72 = 0;
                  }

                  else
                  {
                    v73 = objc_opt_class();
                    [(AXCameraAccessibilityElement *)v53 normalizedFrame];
                    v72 = [v73 _isContainedWithinScreenBoundsForNormalizedFrame:?] ^ 1;
                  }

                  [(AXCameraAccessibilityElement *)v53 setDidCrossEdge:v72];
                  faceName = [(AXCameraAccessibilityElement *)v53 faceName];
                  if ([faceName length])
                  {
LABEL_44:
                  }

                  else
                  {
                    faceDetectionResult = [v38 faceDetectionResult];
                    name = [faceDetectionResult name];
                    v77 = [name length];

                    if (v77)
                    {
                      faceName = [v38 faceDetectionResult];
                      name2 = [faceName name];
                      [(AXCameraAccessibilityElement *)v53 setFaceName:name2];

                      goto LABEL_44;
                    }
                  }

                  if (!-[AXCameraAccessibilityElement faceID](v53, "faceID") && [v38 faceId])
                  {
                    -[AXCameraAccessibilityElement setFaceID:](v53, "setFaceID:", [v38 faceId]);
                  }

                  faceDetectionResult2 = [v38 faceDetectionResult];
                  attributes = [faceDetectionResult2 attributes];

                  featuresCopy = v90;
                  if (attributes)
                  {
                    faceDetectionResult3 = [v38 faceDetectionResult];
                    attributes2 = [faceDetectionResult3 attributes];
                    [(AXCameraAccessibilityElement *)v53 setFaceAttributes:attributes2];
                  }

                  v31 = array;
                  [array addObject:v53];

                  typesCopy = v89;
                  v33 = v94;
                  continue;
                }
              }

              v35 = [v33 countByEnumeratingWithState:&v100 objects:v113 count:16];
            }

            while (v35);
          }

          v32 = v87 + 1;
        }

        while (v87 + 1 != v86);
        v86 = [&unk_2A214D0F0 countByEnumeratingWithState:&v104 objects:v114 count:16];
      }

      while (v86);
    }

    [(AXCameraVisionEngine *)self set_accessibilityElementCandidates:v31];
  }
}

- (BOOL)_canCreateAccessibilityElementForFeature:(id)feature correctedFrame:(CGRect)frame allFeatures:(id)features
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  featureCopy = feature;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  if (CGRectGetMinX(v15) < -1.0)
  {
    goto LABEL_5;
  }

  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  if (CGRectGetMaxX(v16) > 2.0)
  {
    goto LABEL_5;
  }

  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  if (CGRectGetMinY(v17) < -1.0)
  {
    goto LABEL_5;
  }

  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  if (CGRectGetMaxY(v18) > 2.0)
  {
    goto LABEL_5;
  }

  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v12 = CGRectGetWidth(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v13 = CGRectGetHeight(v20);
  if ([featureCopy isPerson])
  {
    LOBYTE(self) = [(AXCameraVisionEngine *)self cameraDevicePosition]!= 1;
    goto LABEL_6;
  }

  v14 = v12 * v13;
  if ([featureCopy isProminentObject])
  {
LABEL_10:
    LOBYTE(self) = v14 >= 0.005;
    goto LABEL_6;
  }

  if (([featureCopy isSceneClassification] & 1) == 0)
  {
    if (![featureCopy isObjectClassification])
    {
      LODWORD(self) = [featureCopy isFace] ^ 1;
      goto LABEL_6;
    }

    goto LABEL_10;
  }

LABEL_5:
  LOBYTE(self) = 0;
LABEL_6:

  return self;
}

- (BOOL)_updateAccessibilityElements:(id)elements forIncomingFeature:(id)feature correctedFrame:(CGRect)frame evaluatedFeatureTypes:(id)types
{
  v65 = *MEMORY[0x29EDCA608];
  elementsCopy = elements;
  featureCopy = feature;
  typesCopy = types;
  if ([featureCopy isFace] && !objc_msgSend(typesCopy, "containsObject:", &unk_2A214D060))
  {
    v39 = 1;
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v11 = elementsCopy;
    v12 = [v11 countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v61;
      v55 = 1.3;
LABEL_5:
      v15 = 0;
      while (1)
      {
        if (*v61 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v60 + 1) + 8 * v15);
        featureType = [featureCopy featureType];
        if (featureType != [v16 featureType])
        {
          [v16 normalizedFrame];
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v73.origin.x = v18;
          v73.origin.y = v20;
          v73.size.width = v22;
          v73.size.height = v24;
          v66 = CGRectIntersection(frame, v73);
          x = v66.origin.x;
          y = v66.origin.y;
          width = v66.size.width;
          height = v66.size.height;
          if (!CGRectIsNull(v66))
          {
            if ([v16 isPerson] && ((objc_msgSend(featureCopy, "isFace") & 1) != 0 || objc_msgSend(featureCopy, "isRealtimeFace")))
            {
              v67.origin.x = x;
              v67.origin.y = y;
              v67.size.width = width;
              v67.size.height = height;
              v30 = CGRectGetWidth(v67);
              v68.origin.x = x;
              v68.origin.y = y;
              v68.size.width = width;
              v68.size.height = height;
              v31 = v30 * CGRectGetHeight(v68);
              v32 = CGRectGetWidth(frame);
              if (v31 >= v32 * CGRectGetHeight(frame) * 0.2)
              {
                faceName = [v16 faceName];
                if ([faceName length])
                {
LABEL_33:
                }

                else
                {
                  faceDetectionResult = [featureCopy faceDetectionResult];
                  name = [faceDetectionResult name];
                  v43 = [name length];

                  if (v43)
                  {
                    faceName = [featureCopy faceDetectionResult];
                    name2 = [faceName name];
                    [v16 setFaceName:name2];

                    goto LABEL_33;
                  }
                }

                if (![v16 faceID] && objc_msgSend(featureCopy, "faceId"))
                {
                  [v16 setFaceID:{objc_msgSend(featureCopy, "faceId")}];
                }

                goto LABEL_42;
              }
            }

            else if ([v16 featureType] == 6 && objc_msgSend(featureCopy, "isFace"))
            {
              v69.origin.x = v19;
              v69.origin.y = v21;
              v69.size.width = v23;
              v69.size.height = v25;
              v57 = CGRectGetWidth(v69);
              v70.origin.x = v19;
              v70.origin.y = v21;
              v70.size.width = v23;
              v70.size.height = v25;
              v58 = v57 * CGRectGetHeight(v70);
              v56 = CGRectGetWidth(frame);
              v33 = v56 * CGRectGetHeight(frame);
              v71.origin.x = x;
              v71.origin.y = y;
              v71.size.width = width;
              v71.size.height = height;
              v34 = CGRectGetWidth(v71);
              v72.origin.x = x;
              v72.origin.y = y;
              v72.size.width = width;
              v72.size.height = height;
              v35 = CGRectGetHeight(v72);
              if (v33 == 0.0)
              {
                v36 = v58;
                if (v58 == 0.0)
                {
                  goto LABEL_22;
                }
              }

              else
              {
                v36 = v58;
                if (v58 / v33 > 0.7 && v58 / v33 < v55)
                {
LABEL_22:
                  v37 = v34 * v35;
                  if (v37 >= v36 * 0.65 && v37 >= v33 * 0.65)
                  {
                    faceName2 = [v16 faceName];
                    if ([faceName2 length])
                    {
LABEL_41:
                    }

                    else
                    {
                      faceDetectionResult2 = [featureCopy faceDetectionResult];
                      name3 = [faceDetectionResult2 name];
                      v48 = [name3 length];

                      if (v48)
                      {
                        faceName2 = [featureCopy faceDetectionResult];
                        name4 = [faceName2 name];
                        [v16 setFaceName:name4];

                        goto LABEL_41;
                      }
                    }

LABEL_42:
                    faceDetectionResult3 = [featureCopy faceDetectionResult];
                    attributes = [faceDetectionResult3 attributes];

                    if (attributes)
                    {
                      faceDetectionResult4 = [featureCopy faceDetectionResult];
                      attributes2 = [faceDetectionResult4 attributes];
                      [v16 setFaceAttributes:attributes2];
                    }

                    v39 = 1;
                    goto LABEL_45;
                  }
                }
              }
            }
          }
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v60 objects:v64 count:16];
          if (v13)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    v39 = 0;
LABEL_45:
  }

  return v39;
}

- (BOOL)_shouldReuseExistingElement:(id)element forFeature:(id)feature correctedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  elementCopy = element;
  featureCopy = feature;
  featureType = [featureCopy featureType];
  if (featureType != [elementCopy featureType])
  {
    goto LABEL_6;
  }

  if ([elementCopy faceID])
  {
    faceID = [elementCopy faceID];
    if (faceID == [featureCopy faceId])
    {
      v14 = 1;
      goto LABEL_7;
    }
  }

  [elementCopy normalizedFrame];
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  v34 = CGRectIntersection(v33, v41);
  v15 = v34.origin.x;
  v16 = v34.origin.y;
  v17 = v34.size.width;
  v18 = v34.size.height;
  if (CGRectIsNull(v34))
  {
LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  v28 = v18;
  v29 = v17;
  v30 = v16;
  v31 = v15;
  [elementCopy normalizedFrame];
  v20 = v35.origin.x;
  v21 = v35.origin.y;
  v22 = v35.size.width;
  v23 = v35.size.height;
  v32 = CGRectGetWidth(v35);
  v36.origin.x = v20;
  v36.origin.y = v21;
  v36.size.width = v22;
  v36.size.height = v23;
  v24 = v32 * CGRectGetHeight(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v25 = CGRectGetWidth(v37);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  v26 = v25 * CGRectGetHeight(v38);
  if (v26 == 0.0)
  {
    if (v24 != 0.0)
    {
      goto LABEL_6;
    }

LABEL_13:
    v39.origin.x = v31;
    v39.origin.y = v30;
    v39.size.width = v29;
    v39.size.height = v28;
    v27 = CGRectGetWidth(v39);
    v40.origin.x = v31;
    v40.origin.y = v30;
    v40.size.width = v29;
    v40.size.height = v28;
    v14 = fmax(v24 * 0.65, v26 * 0.65) <= v27 * CGRectGetHeight(v40);
    goto LABEL_7;
  }

  v14 = 0;
  if (v24 / v26 > 0.7 && v24 / v26 < 1.3)
  {
    goto LABEL_13;
  }

LABEL_7:

  return v14;
}

- (void)_generateAnnouncementsForVisionFeatures:(id)features
{
  featuresCopy = features;
  sceneObjectElementContainerView = [(AXCameraVisionEngine *)self sceneObjectElementContainerView];

  if (sceneObjectElementContainerView)
  {
    v7 = 0;
    v8 = 0;
    v6 = [(AXCameraVisionEngine *)self _sceneDescriptionAnnouncementForVisionFeatures:featuresCopy previousAnnouncementLocation:[(AXCameraVisionEngine *)self lastSceneAnnouncementLocation] locationForAnnouncement:&v8 announcementType:&v7];
    [(AXCameraVisionEngine *)self _attemptSceneDescriptionAnnouncement:v6 locationForAnnouncement:v8 type:v7];
  }
}

- (id)_sceneDescriptionAnnouncementForVisionFeatures:(id)features previousAnnouncementLocation:(int64_t)location locationForAnnouncement:(int64_t *)announcement announcementType:(int64_t *)type
{
  v132[2] = *MEMORY[0x29EDCA608];
  v9 = [features objectForKeyedSubscript:&unk_2A214D0C0];
  _accessibilityElementCandidates = [(AXCameraVisionEngine *)self _accessibilityElementCandidates];
  v125 = 0;
  v126 = 0;
  v123 = 0;
  v124 = 0;
  [(AXCameraVisionEngine *)self _sortedAndFilteredAccessibilityElements:_accessibilityElementCandidates faces:&v126 persons:&v125 prominentObjects:&v124 objectClassifications:&v123];
  v11 = v126;
  v12 = v125;
  v103 = v124;
  v105 = v123;

  v106 = [v11 arrayByAddingObjectsFromArray:v12];
  v13 = [v106 count];
  v14 = [v12 count];
  v15 = [v11 count];
  v16 = MEMORY[0x29EDBA0F8];
  if (!v15 || v14)
  {
    v17 = accessibilityCameraUILocalizedString(@"people.count");
    v104 = [v16 localizedStringWithFormat:v17, v13];
  }

  else
  {
    v17 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v18 = [v17 localizedStringForKey:@"face.count" value:&stru_2A213F7C0 table:@"Accessibility"];
    v104 = [v16 localizedStringWithFormat:v18, v13];
  }

  announcementCopy = announcement;
  typeCopy = type;
  v99 = v12;
  v100 = v11;
  if (v13)
  {
    if (v13 == 1)
    {
      firstObject = [v106 firstObject];
      faceName = [firstObject faceName];
      if ([faceName length])
      {
        faceName2 = [firstObject faceName];
      }

      else
      {
        faceName2 = v104;
      }

      v45 = faceName2;

      if ([v105 count] == 1)
      {
        firstObject2 = [v105 firstObject];
        [firstObject2 classificationLocalizedValue];
        v47 = v97 = v9;
        v132[0] = firstObject;
        v132[1] = firstObject2;
        v26 = 2;
        v25 = [MEMORY[0x29EDB8D80] arrayWithObjects:v132 count:2];
        [(AXCameraVisionEngine *)self _normalizedFrameForAccessibilityElements:v25];
        v49 = v48;
        v51 = v50;
        v53 = v52;
        v55 = v54;
        v56 = MEMORY[0x29EDBA0F8];
        v57 = accessibilityCameraUILocalizedString(@"subjects.first.and.second");
        buildSpeakableDescription = [v56 localizedStringWithFormat:v57, v45, v47];

        location = [MEMORY[0x29EDBD770] locationForNormalizedFrame:location previousLocation:-[AXCameraVisionEngine useThirdsForLocation](self usingThirds:{"useThirdsForLocation"), v49, v51, v53, v55}];
        v9 = v97;
      }

      else
      {
        buildSpeakableDescription = v45;
        location = [firstObject location];
        v25 = v106;
        v26 = 1;
      }

      goto LABEL_57;
    }

    v96 = v9;
    v27 = [MEMORY[0x29EDB9F68] set];
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v28 = v106;
    v29 = [v28 countByEnumeratingWithState:&v119 objects:v131 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v120;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v120 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v119 + 1) + 8 * i);
          faceName3 = [v33 faceName];
          v35 = [faceName3 length];

          if (v35)
          {
            faceName4 = [v33 faceName];
            [v27 addObject:faceName4];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v119 objects:v131 count:16];
      }

      while (v30);
    }

    if ([v27 count])
    {
      allObjects = [v27 allObjects];
      v38 = [allObjects sortedArrayUsingComparator:&__block_literal_global_6];

      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v39 = v27;
      v40 = [v39 countByEnumeratingWithState:&v115 objects:v130 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = 0;
        v43 = *v116;
        do
        {
          for (j = 0; j != v41; ++j)
          {
            if (*v116 != v43)
            {
              objc_enumerationMutation(v39);
            }

            v42 += [v39 countForObject:*(*(&v115 + 1) + 8 * j)];
          }

          v41 = [v39 countByEnumeratingWithState:&v115 objects:v130 count:16];
        }

        while (v41);
      }

      else
      {
        v42 = 0;
      }

      v72 = v13 - v42;
      if (v13 - v42 >= 1)
      {
        v73 = MEMORY[0x29EDBA0F8];
        v74 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
        v75 = [v74 localizedStringForKey:@"people.count" value:&stru_2A213F7C0 table:@"Accessibility"];
        v76 = [v73 localizedStringWithFormat:v75, v72];

        v77 = [v38 arrayByAddingObject:v76];

        v38 = v77;
      }

      v78 = [v38 count];
      if (v78 == 2)
      {
        v80 = MEMORY[0x29EDBA0F8];
        v81 = accessibilityCameraUILocalizedString(@"subjects.first.and.second");
        v82 = [v38 objectAtIndexedSubscript:0];
        v83 = [v38 objectAtIndexedSubscript:1];
        buildSpeakableDescription = [v80 localizedStringWithFormat:v81, v82, v83];
      }

      else
      {
        if (v78 == 1)
        {
          firstObject3 = [v38 firstObject];
        }

        else
        {
          firstObject3 = v104;
        }

        buildSpeakableDescription = firstObject3;
      }

      v9 = v96;
      locationCopy2 = location;
    }

    else
    {
      buildSpeakableDescription = v104;
      v9 = v96;
      locationCopy2 = location;
    }

    [(AXCameraVisionEngine *)self _normalizedFrameForAccessibilityElements:v28];
    location = [MEMORY[0x29EDBD770] locationForNormalizedFrame:locationCopy2 previousLocation:-[AXCameraVisionEngine useThirdsForLocation](self usingThirds:{"useThirdsForLocation"), v84, v85, v86, v87}];
    v25 = v28;

LABEL_56:
    v26 = 1;
    goto LABEL_57;
  }

  if ([v103 count])
  {
    firstObject4 = [v103 firstObject];
    buildSpeakableDescription = accessibilityCameraUILocalizedString(@"prominent.object");
    location = [firstObject4 location];
    v129 = firstObject4;
    v25 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v129 count:1];

    v26 = 3;
    goto LABEL_57;
  }

  if (![v105 count])
  {
    if ([v9 count])
    {
      v95 = [MEMORY[0x29EDBD728] builderWithOptions:0];
      [v95 addDetectedClassificationFeatures:v9];
      buildSpeakableDescription = [v95 buildSpeakableDescription];

      v25 = 0;
      location = 0;
      v26 = 5;
      goto LABEL_57;
    }

    buildSpeakableDescription = v104;
    v25 = 0;
    location = 0;
    goto LABEL_56;
  }

  v58 = [MEMORY[0x29EDBD728] builderWithOptions:0];
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v59 = v105;
  v60 = [v59 countByEnumeratingWithState:&v111 objects:v128 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v112;
    do
    {
      for (k = 0; k != v61; ++k)
      {
        if (*v112 != v62)
        {
          objc_enumerationMutation(v59);
        }

        v64 = *(*(&v111 + 1) + 8 * k);
        classificationLocalizedValue = [v64 classificationLocalizedValue];
        classificationLabel = [v64 classificationLabel];
        [v58 addDetectedClassificationLocalizedValue:classificationLocalizedValue forLabel:classificationLabel];
      }

      v61 = [v59 countByEnumeratingWithState:&v111 objects:v128 count:16];
    }

    while (v61);
  }

  if ([v59 count] > 2)
  {
    location = 0;
  }

  else
  {
    [(AXCameraVisionEngine *)self _normalizedFrameForAccessibilityElements:v59];
    location = [MEMORY[0x29EDBD770] locationForNormalizedFrame:location previousLocation:-[AXCameraVisionEngine useThirdsForLocation](self usingThirds:{"useThirdsForLocation"), v67, v68, v69, v70}];
  }

  buildSpeakableDescription = [v58 buildSpeakableDescription];
  v25 = v59;

  v26 = 4;
LABEL_57:
  sceneObjectElementContainerView = [(AXCameraVisionEngine *)self sceneObjectElementContainerView];
  [sceneObjectElementContainerView setAccessibilityElements:v25];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v89 = v25;
  v90 = [v89 countByEnumeratingWithState:&v107 objects:v127 count:16];
  if (v90)
  {
    v91 = v90;
    v92 = *v108;
    while (2)
    {
      for (m = 0; m != v91; ++m)
      {
        if (*v108 != v92)
        {
          objc_enumerationMutation(v89);
        }

        if ([*(*(&v107 + 1) + 8 * m) didCrossEdge])
        {
          [(AXCameraVisionEngine *)self _performScreenEdgeHaptic];
          goto LABEL_67;
        }
      }

      v91 = [v89 countByEnumeratingWithState:&v107 objects:v127 count:16];
      if (v91)
      {
        continue;
      }

      break;
    }
  }

LABEL_67:

  if (announcementCopy)
  {
    *announcementCopy = location;
  }

  if (typeCopy)
  {
    *typeCopy = v26;
  }

  return buildSpeakableDescription;
}

- (void)_attemptSceneDescriptionAnnouncement:(id)announcement locationForAnnouncement:(int64_t)forAnnouncement type:(int64_t)type
{
  announcementCopy = announcement;
  [(AXCameraVisionEngine *)self setPreviousSceneAnnouncementCandidateWithoutLocation:?];
  Current = CFAbsoluteTimeGetCurrent();
  [(AXCameraVisionEngine *)self lastSceneAnnouncementTime];
  v10 = Current - v9;
  [(AXCameraVisionEngine *)self lastSceneAnnouncementFullTime];
  v12 = v11;
  [(AXCameraVisionEngine *)self previousSceneAnnouncementCandidateWithoutLocationChangedTime];
  if (Current - v13 >= 1.5 || v10 >= 4.5)
  {
    lastSceneAnnouncementWithoutLocation = [(AXCameraVisionEngine *)self lastSceneAnnouncementWithoutLocation];
    v16 = [announcementCopy isEqualToString:lastSceneAnnouncementWithoutLocation];

    if (v16)
    {
      v17 = Current - v12;
      lastSceneAnnouncementLocation = [(AXCameraVisionEngine *)self lastSceneAnnouncementLocation];
      v19 = 30.0;
      if (lastSceneAnnouncementLocation == forAnnouncement)
      {
        if (v17 >= 30.0)
        {
          goto LABEL_14;
        }

LABEL_10:
        v20 = 0;
        v21 = 0;
        goto LABEL_15;
      }

      if (v17 < 30.0)
      {
        v19 = 2.0;
        if (v10 >= 2.0)
        {
          lastAnnouncementType = [(AXCameraVisionEngine *)self lastAnnouncementType];
          v20 = lastAnnouncementType == type;
          v21 = lastAnnouncementType != type;
          goto LABEL_15;
        }

        goto LABEL_10;
      }
    }

    else
    {
      v19 = 4.0;
      if (v10 < 4.0)
      {
        goto LABEL_10;
      }
    }

LABEL_14:
    v20 = 0;
    v21 = 1;
LABEL_15:
    if (forAnnouncement)
    {
      v23 = [MEMORY[0x29EDBD770] localizedStringForLocation:forAnnouncement isSubjectImplicit:{0, v19}];
      announcementCopy = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:v23, announcementCopy];

      if (v20)
      {
LABEL_17:
        v25 = [MEMORY[0x29EDBD770] localizedStringForLocation:forAnnouncement isSubjectImplicit:1];
        goto LABEL_20;
      }
    }

    else
    {
      announcementCopy = announcementCopy;
      if (v20)
      {
        goto LABEL_17;
      }
    }

    v25 = announcementCopy;
    if (!v21)
    {
LABEL_23:

      goto LABEL_24;
    }

LABEL_20:
    v26 = [v25 isEqualToString:announcementCopy];
    if ([(AXCameraVisionEngine *)self _attemptAnnouncement:v25 type:type isPartial:v26 ^ 1u timestamp:Current])
    {
      [(AXCameraVisionEngine *)self setLastSceneAnnouncement:v25];
      [(AXCameraVisionEngine *)self setLastSceneAnnouncementFull:announcementCopy];
      [(AXCameraVisionEngine *)self setLastSceneAnnouncementWithoutLocation:announcementCopy];
      [(AXCameraVisionEngine *)self setLastSceneAnnouncementLocation:forAnnouncement];
      [(AXCameraVisionEngine *)self setLastSceneAnnouncementTime:Current];
      if (v26)
      {
        [(AXCameraVisionEngine *)self setLastSceneAnnouncementFullTime:Current];
      }
    }

    goto LABEL_23;
  }

LABEL_24:
}

- (BOOL)_attemptAnnouncement:(id)announcement type:(int64_t)type isPartial:(BOOL)partial timestamp:(double)timestamp
{
  partialCopy = partial;
  announcementCopy = announcement;
  if (announcementCopy && [(AXCameraVisionEngine *)self _canPostAnnouncement:announcementCopy type:type isPartial:partialCopy timestamp:timestamp])
  {
    [(AXCameraVisionEngine *)self setInflightAnnouncement:announcementCopy];
    [(AXCameraVisionEngine *)self setLastAnnouncement:announcementCopy];
    [(AXCameraVisionEngine *)self setLastAnnouncementType:type];
    [(AXCameraVisionEngine *)self setLastAnnouncementPartial:partialCopy];
    [(AXCameraVisionEngine *)self setLastAnnouncementTime:timestamp];
    UIAccessibilitySpeakIfNotSpeaking();
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_canPostAnnouncement:(id)announcement type:(int64_t)type isPartial:(BOOL)partial timestamp:(double)timestamp
{
  v9 = [(AXCameraVisionEngine *)self inflightAnnouncement:announcement];
  if (v9)
  {
    [(AXCameraVisionEngine *)self lastAnnouncementTime];
    if (timestamp - v10 <= 7.0)
    {
      lastAnnouncementType = [(AXCameraVisionEngine *)self lastAnnouncementType];
      v14 = [(AXCameraVisionEngine *)self _priorityForAnnouncementType:type];
      v15 = [(AXCameraVisionEngine *)self _priorityForAnnouncementType:lastAnnouncementType];
      if (v14 < v15)
      {
        isLastAnnouncementPartial = 0;
        goto LABEL_4;
      }

      if (v14 <= v15)
      {
        isLastAnnouncementPartial = [(AXCameraVisionEngine *)self isLastAnnouncementPartial];
        goto LABEL_4;
      }
    }
  }

  isLastAnnouncementPartial = 1;
LABEL_4:

  return isLastAnnouncementPartial;
}

- (void)_handleAnnouncementDidFinish:(id)finish
{
  finishCopy = finish;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __53__AXCameraVisionEngine__handleAnnouncementDidFinish___block_invoke;
  v6[3] = &unk_29F2ACF10;
  v7 = finishCopy;
  selfCopy = self;
  v5 = finishCopy;
  [(AXCameraVisionEngine *)self _dispatchToResultsQueueWithBlock:v6];
}

void __53__AXCameraVisionEngine__handleAnnouncementDidFinish___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v5 = [v2 objectForKeyedSubscript:*MEMORY[0x29EDC7EA0]];

  v3 = [*(a1 + 40) inflightAnnouncement];
  v4 = [v5 isEqualToString:v3];

  if (v4)
  {
    [*(a1 + 40) setInflightAnnouncement:0];
  }
}

- (CGRect)_normalizedFrameForAccessibilityElements:(id)elements
{
  elementsCopy = elements;
  v14 = 0;
  v15 = &v14;
  v16 = 0x4010000000;
  v17 = &unk_29BC90C32;
  v4 = *(MEMORY[0x29EDB90E0] + 16);
  v18 = *MEMORY[0x29EDB90E0];
  v19 = v4;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __65__AXCameraVisionEngine__normalizedFrameForAccessibilityElements___block_invoke;
  v13[3] = &unk_29F2ACF80;
  v13[4] = &v14;
  [elementsCopy enumerateObjectsUsingBlock:v13];
  v5 = v15[4];
  v6 = v15[5];
  v7 = v15[6];
  v8 = v15[7];
  _Block_object_dispose(&v14, 8);

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

void __65__AXCameraVisionEngine__normalizedFrameForAccessibilityElements___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1 + 32;
    v5 = *(*(a1 + 32) + 8);
    [a2 normalizedFrame];
    v11.origin.x = v6;
    v11.origin.y = v7;
    v11.size.width = v8;
    v11.size.height = v9;
    v10 = CGRectUnion(v5[1], v11);
  }

  else
  {
    [a2 normalizedFrame];
    v4 = a1 + 32;
  }

  *(*(*v4 + 8) + 32) = v10;
}

- (void)_sortedAndFilteredAccessibilityElements:(id)elements faces:(id *)faces persons:(id *)persons prominentObjects:(id *)objects objectClassifications:(id *)classifications
{
  elementsCopy = elements;
  v12 = [elementsCopy axFilterObjectsUsingBlock:&__block_literal_global_560];
  v13 = [elementsCopy axFilterObjectsUsingBlock:&__block_literal_global_562];
  v14 = [elementsCopy axFilterObjectsUsingBlock:&__block_literal_global_564];
  v15 = [elementsCopy axFilterObjectsUsingBlock:&__block_literal_global_566];

  v16 = [v12 sortedArrayUsingComparator:&__block_literal_global_569];

  v17 = [v13 sortedArrayUsingComparator:&__block_literal_global_571];

  v18 = [v14 sortedArrayUsingComparator:&__block_literal_global_573];

  v19 = [v15 sortedArrayUsingComparator:&__block_literal_global_575];

  firstObject = [v16 firstObject];
  v21 = [(AXCameraVisionEngine *)self _filterElements:v16 usingRelativeAreaThreshold:firstObject referenceElement:0.110889];

  firstObject2 = [v17 firstObject];
  v23 = [(AXCameraVisionEngine *)self _filterElements:v17 usingRelativeWidthThreshold:firstObject2 referenceElement:0.333];

  firstObject3 = [v18 firstObject];
  v25 = [(AXCameraVisionEngine *)self _filterElements:v18 usingRelativeAreaThreshold:firstObject3 referenceElement:0.110889];

  firstObject4 = [v19 firstObject];
  v27 = [(AXCameraVisionEngine *)self _filterElements:v19 usingRelativeAreaThreshold:firstObject4 referenceElement:0.110889];

  firstObject5 = [v21 firstObject];
  v29 = [(AXCameraVisionEngine *)self _filterElements:v23 usingRelativeAreaThreshold:firstObject5 referenceElement:0.665334];

  firstObject6 = [v29 firstObject];
  v31 = [(AXCameraVisionEngine *)self _filterElements:v21 usingRelativeAreaThreshold:firstObject6 referenceElement:0.0184815];

  firstObject7 = [v27 firstObject];
  v42 = [(AXCameraVisionEngine *)self _filterElements:v31 usingRelativeAreaThreshold:firstObject7 referenceElement:0.0833333333];

  v33 = [(AXCameraVisionEngine *)self _filterElements:v29 usingRelativeAreaThreshold:firstObject7 referenceElement:0.5];

  firstObject8 = [v33 firstObject];
  v35 = [(AXCameraVisionEngine *)self _filterElements:v27 usingRelativeAreaThreshold:firstObject8 referenceElement:0.25];

  firstObject9 = [v42 firstObject];
  v37 = [(AXCameraVisionEngine *)self _filterElements:v35 usingRelativeAreaThreshold:firstObject9 referenceElement:0.0416666667];

  if (faces)
  {
    *faces = v42;
  }

  if (persons)
  {
    v38 = v33;
    *persons = v33;
  }

  if (objects)
  {
    v39 = v25;
    *objects = v25;
  }

  if (classifications)
  {
    v40 = v37;
    *classifications = v37;
  }
}

uint64_t __117__AXCameraVisionEngine__sortedAndFilteredAccessibilityElements_faces_persons_prominentObjects_objectClassifications___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x29EDBA070];
  v5 = a2;
  [a3 normalizedFrame];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v10 = CGRectGetWidth(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v11 = [v4 numberWithDouble:v10 * CGRectGetHeight(v26)];
  v12 = MEMORY[0x29EDBA070];
  [v5 normalizedFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v27.origin.x = v14;
  v27.origin.y = v16;
  v27.size.width = v18;
  v27.size.height = v20;
  v21 = CGRectGetWidth(v27);
  v28.origin.x = v14;
  v28.origin.y = v16;
  v28.size.width = v18;
  v28.size.height = v20;
  v22 = [v12 numberWithDouble:v21 * CGRectGetHeight(v28)];
  v23 = [v11 compare:v22];

  return v23;
}

uint64_t __117__AXCameraVisionEngine__sortedAndFilteredAccessibilityElements_faces_persons_prominentObjects_objectClassifications___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x29EDBA070];
  v5 = a2;
  [a3 normalizedFrame];
  v6 = [v4 numberWithDouble:CGRectGetWidth(v19)];
  v7 = MEMORY[0x29EDBA070];
  [v5 normalizedFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  v16 = [v7 numberWithDouble:CGRectGetWidth(v20)];
  v17 = [v6 compare:v16];

  return v17;
}

uint64_t __117__AXCameraVisionEngine__sortedAndFilteredAccessibilityElements_faces_persons_prominentObjects_objectClassifications___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x29EDBA070];
  v5 = a2;
  [a3 normalizedFrame];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v10 = CGRectGetWidth(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v11 = [v4 numberWithDouble:v10 * CGRectGetHeight(v26)];
  v12 = MEMORY[0x29EDBA070];
  [v5 normalizedFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v27.origin.x = v14;
  v27.origin.y = v16;
  v27.size.width = v18;
  v27.size.height = v20;
  v21 = CGRectGetWidth(v27);
  v28.origin.x = v14;
  v28.origin.y = v16;
  v28.size.width = v18;
  v28.size.height = v20;
  v22 = [v12 numberWithDouble:v21 * CGRectGetHeight(v28)];
  v23 = [v11 compare:v22];

  return v23;
}

uint64_t __117__AXCameraVisionEngine__sortedAndFilteredAccessibilityElements_faces_persons_prominentObjects_objectClassifications___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x29EDBA070];
  v5 = a2;
  [a3 normalizedFrame];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v10 = CGRectGetWidth(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v11 = [v4 numberWithDouble:v10 * CGRectGetHeight(v26)];
  v12 = MEMORY[0x29EDBA070];
  [v5 normalizedFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v27.origin.x = v14;
  v27.origin.y = v16;
  v27.size.width = v18;
  v27.size.height = v20;
  v21 = CGRectGetWidth(v27);
  v28.origin.x = v14;
  v28.origin.y = v16;
  v28.size.width = v18;
  v28.size.height = v20;
  v22 = [v12 numberWithDouble:v21 * CGRectGetHeight(v28)];
  v23 = [v11 compare:v22];

  return v23;
}

- (id)_filterElements:(id)elements usingRelativeAreaThreshold:(double)threshold referenceElement:(id)element
{
  elementsCopy = elements;
  v8 = elementsCopy;
  if (element)
  {
    [element normalizedFrame];
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
    v13 = CGRectGetWidth(v20);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v14 = CGRectGetHeight(v21);
    v18[1] = 3221225472;
    v18[0] = MEMORY[0x29EDCA5F8];
    v18[2] = __84__AXCameraVisionEngine__filterElements_usingRelativeAreaThreshold_referenceElement___block_invoke;
    v18[3] = &__block_descriptor_48_e45_B32__0__AXCameraAccessibilityElement_8Q16_B24l;
    *&v18[4] = threshold;
    *&v18[5] = v13 * v14;
    v15 = [v8 indexesOfObjectsPassingTest:v18];
    v16 = [v8 objectsAtIndexes:v15];
  }

  else
  {
    v16 = elementsCopy;
  }

  return v16;
}

BOOL __84__AXCameraVisionEngine__filterElements_usingRelativeAreaThreshold_referenceElement___block_invoke(uint64_t a1, void *a2)
{
  [a2 normalizedFrame];
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  v7 = CGRectGetWidth(v9);
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  return v7 * CGRectGetHeight(v10) >= *(a1 + 32) * *(a1 + 40);
}

- (id)_filterElements:(id)elements usingRelativeWidthThreshold:(double)threshold referenceElement:(id)element
{
  elementsCopy = elements;
  v8 = elementsCopy;
  if (element)
  {
    [element normalizedFrame];
    Width = CGRectGetWidth(v15);
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = __85__AXCameraVisionEngine__filterElements_usingRelativeWidthThreshold_referenceElement___block_invoke;
    v13[3] = &__block_descriptor_48_e45_B32__0__AXCameraAccessibilityElement_8Q16_B24l;
    *&v13[4] = threshold;
    *&v13[5] = Width;
    v10 = [v8 indexesOfObjectsPassingTest:v13];
    v11 = [v8 objectsAtIndexes:v10];
  }

  else
  {
    v11 = elementsCopy;
  }

  return v11;
}

- (void)setPreviousSceneAnnouncementCandidateWithoutLocation:(id)location
{
  locationCopy = location;
  previousSceneAnnouncementCandidateWithoutLocation = self->_previousSceneAnnouncementCandidateWithoutLocation;
  if (previousSceneAnnouncementCandidateWithoutLocation != locationCopy)
  {
    v8 = locationCopy;
    if (![(NSString *)previousSceneAnnouncementCandidateWithoutLocation isEqualToString:locationCopy])
    {
      v6 = [(NSString *)v8 copy];
      v7 = self->_previousSceneAnnouncementCandidateWithoutLocation;
      self->_previousSceneAnnouncementCandidateWithoutLocation = v6;

      [(AXCameraVisionEngine *)self setPreviousSceneAnnouncementCandidateWithoutLocationChangedTime:CFAbsoluteTimeGetCurrent()];
    }
  }

  MEMORY[0x2A1C71028]();
}

- (CGRect)_sceneObjectFrameForNormalizedFrame:(CGRect)frame inSceneFrame:(CGRect)sceneFrame
{
  height = sceneFrame.size.height;
  width = sceneFrame.size.width;
  y = sceneFrame.origin.y;
  x = sceneFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  [(AXCameraVisionEngine *)self interfaceOrientation];
  AXMNormalizedFrameTransform();
  memset(v16, 0, sizeof(v16));
  v12 = objc_opt_class();
  if (v12)
  {
    [v12 _scaleNormalizedCoordinatesToSceneCoordinates:{x, y, width, height}];
  }

  else
  {
    memset(v16, 0, 48);
  }

  t1 = v16[1];
  memset(&v15, 0, sizeof(v15));
  v13 = v16[0];
  CGAffineTransformConcat(&v15, &t1, &v13);
  t1 = v15;
  v17.origin.x = v11;
  v17.origin.y = v10;
  v17.size.width = v9;
  v17.size.height = v8;
  return CGRectApplyAffineTransform(v17, &t1);
}

+ (CGAffineTransform)_scaleNormalizedCoordinatesToSceneCoordinates:(SEL)coordinates
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = CGRectGetWidth(a4);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v10 = CGRectGetHeight(v13);

  return CGAffineTransformMakeScale(retstr, v9, v10);
}

+ (BOOL)_isContainedWithinScreenBoundsForNormalizedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  result = 0;
  if (CGRectGetMinX(frame) >= 0.0)
  {
    v8.origin.x = x;
    v8.origin.y = y;
    v8.size.width = width;
    v8.size.height = height;
    if (CGRectGetMaxX(v8) <= 1.0)
    {
      v9.origin.x = x;
      v9.origin.y = y;
      v9.size.width = width;
      v9.size.height = height;
      if (CGRectGetMinY(v9) >= 0.0)
      {
        v10.origin.x = x;
        v10.origin.y = y;
        v10.size.width = width;
        v10.size.height = height;
        if (CGRectGetMaxY(v10) <= 1.0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

- (void)_applyMotionCorrectionToElement:(id)element updatedFrameContext:(id)context
{
  elementCopy = element;
  contextCopy = context;
  cameraFrameContext = [elementCopy cameraFrameContext];
  deviceAttitude = [contextCopy deviceAttitude];
  v9 = deviceAttitude;
  if (cameraFrameContext && deviceAttitude)
  {
    [elementCopy normalizedFrame];
    [(AXCameraVisionEngine *)self _motionCorrectedNormalizedFrame:cameraFrameContext frameContext:v9 targetAttitude:?];
    [elementCopy setNormalizedFrame:?];
    [elementCopy setCameraFrameContext:contextCopy];
  }
}

- (CGRect)_motionCorrectedNormalizedFrameForFeature:(id)feature
{
  featureCopy = feature;
  userContext = [featureCopy userContext];
  [featureCopy normalizedFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  lastDeviceMotion = [(AXCameraVisionEngine *)self lastDeviceMotion];
  attitude = [lastDeviceMotion attitude];
  [(AXCameraVisionEngine *)self _motionCorrectedNormalizedFrame:userContext frameContext:attitude targetAttitude:v7, v9, v11, v13];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)_motionCorrectedNormalizedFrame:(CGRect)frame frameContext:(id)context targetAttitude:(id)attitude
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (context && attitude)
  {
    attitudeCopy = attitude;
    contextCopy = context;
    [contextCopy videoZoomFactor];
    v14 = v13;
    interfaceOrientation = [(AXCameraVisionEngine *)self interfaceOrientation];
    _isMirrored = [(AXCameraVisionEngine *)self _isMirrored];
    LODWORD(v17) = v14;
    [contextCopy motionCorrectedNormalizedFrame:attitudeCopy targetAttitude:interfaceOrientation targetZoomFactor:_isMirrored interfaceOrientation:x mirrored:{y, width, height, v17}];
    x = v18;
    y = v19;
    width = v20;
    height = v21;
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)_handleDeviceMotion:(id)motion
{
  motionCopy = motion;
  [(AXCameraVisionEngine *)self _updateLevelFeedbackForDeviceMotion:motionCopy];
  [(AXCameraVisionEngine *)self setLastDeviceMotion:motionCopy];
}

- (void)_updateLevelFeedbackForDeviceMotion:(id)motion
{
  motionCopy = motion;
  lastLevelZone = [(AXCameraVisionEngine *)self lastLevelZone];
  _levelingMotionAnalyzer = [(AXCameraVisionEngine *)self _levelingMotionAnalyzer];
  v7 = [_levelingMotionAnalyzer updateWithDeviceMotion:motionCopy previousZone:lastLevelZone];

  if ([(AXCameraVisionEngine *)self shouldEmitLevelFeedback]&& v7)
  {
    if (!lastLevelZone || v7 == lastLevelZone)
    {
      [(AXCameraVisionEngine *)self setLastLevelZone:v7];
    }

    else
    {
      if (v7 == 1)
      {
        [(AXCameraVisionEngine *)self _performBecameLevelFeedback];
      }

      else
      {
        [(AXCameraVisionEngine *)self _performBecameUnlevelFeedback];
      }

      [(AXCameraVisionEngine *)self setLastLevelZone:v7];
      [(AXCameraVisionEngine *)self setLastLevelZoneChangedTime:CFAbsoluteTimeGetCurrent()];
    }

    [(AXCameraVisionEngine *)self _attemptLevelingAnnouncementForZone:v7 previousZone:lastLevelZone];
  }

  else
  {
    [(AXCameraVisionEngine *)self setLastLevelZone:v7];
    Current = CFAbsoluteTimeGetCurrent();

    [(AXCameraVisionEngine *)self setLastLevelZoneChangedTime:Current];
  }
}

- (void)_attemptLevelingAnnouncementForZone:(int64_t)zone previousZone:(int64_t)previousZone
{
  previousZone = [(AXCameraVisionEngine *)self _announcementStringForFeedbackZone:zone, previousZone];
  if (!previousZone)
  {
    goto LABEL_25;
  }

  lastAnnouncementType = [(AXCameraVisionEngine *)self lastAnnouncementType];
  v7 = [(AXCameraVisionEngine *)self _isLevelingNeededForZone:zone];
  v8 = [(AXCameraVisionEngine *)self _isLevelingNeededForZone:[(AXCameraVisionEngine *)self lastLevelAnnouncementZone]];
  if (!v7 && !v8)
  {
    goto LABEL_25;
  }

  if (lastAnnouncementType == 6)
  {
    if (zone == 1)
    {
      [(AXCameraVisionEngine *)self lastLevelAnnouncementTime];
      v10 = v12;
      v11 = 0.0;
      v13 = 5.0;
      goto LABEL_18;
    }

    lastLevelAnnouncementZone = [(AXCameraVisionEngine *)self lastLevelAnnouncementZone];
    [(AXCameraVisionEngine *)self lastAnnouncementTime];
    v10 = v17;
    if (lastLevelAnnouncementZone == zone)
    {
      v11 = 10.0;
    }

    else
    {
      [(AXCameraVisionEngine *)self lastLevelZoneChangedTime];
      if (v10 < v18)
      {
        v10 = v18;
      }

      v11 = 3.0;
    }
  }

  else if (lastAnnouncementType)
  {
    [(AXCameraVisionEngine *)self lastAnnouncementTime];
    v10 = v14;
    [(AXCameraVisionEngine *)self lastLevelZoneChangedTime];
    if (v10 < v15)
    {
      v10 = v15;
    }

    v11 = 2.0;
  }

  else
  {
    [(AXCameraVisionEngine *)self lastAnnouncementTime];
    v10 = v9;
    v11 = 8.0;
  }

  v13 = 1.79769313e308;
LABEL_18:
  Current = CFAbsoluteTimeGetCurrent();
  v20 = Current - v10 >= v11 && Current - v10 <= v13;
  if (v20 && [(AXCameraVisionEngine *)self _attemptAnnouncement:previousZone type:6 isPartial:0 timestamp:Current])
  {
    [(AXCameraVisionEngine *)self setLastLevelAnnouncementZone:zone];
    [(AXCameraVisionEngine *)self setLastLevelAnnouncementTime:Current];
  }

LABEL_25:
}

- (id)_announcementStringForFeedbackZone:(int64_t)zone
{
  if ((zone - 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityCameraUILocalizedString(off_29F2AD050[zone - 1]);
  }

  return v4;
}

- (void)motionManagerDidUpdateDeviceMotion:(id)motion captureOrientation:(int64_t)orientation
{
  motionCopy = motion;
  sceneObjectElementContainerView = [(AXCameraVisionEngine *)self sceneObjectElementContainerView];

  if (sceneObjectElementContainerView)
  {
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __78__AXCameraVisionEngine_motionManagerDidUpdateDeviceMotion_captureOrientation___block_invoke;
    v8[3] = &unk_29F2AD008;
    v8[4] = self;
    orientationCopy = orientation;
    v9 = motionCopy;
    [(AXCameraVisionEngine *)self _dispatchToResultsQueueWithBlock:v8];
  }
}

void __78__AXCameraVisionEngine_motionManagerDidUpdateDeviceMotion_captureOrientation___block_invoke(uint64_t a1)
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    [*(a1 + 32) setInterfaceOrientation:*(a1 + 48)];
    if (*(a1 + 40))
    {
      [*(a1 + 32) _handleDeviceMotion:?];
      v2 = [*(a1 + 32) _mostRecentVisionFeatures];
      if ([v2 count])
      {
      }

      else
      {
        v3 = [*(a1 + 32) _accessibilityElementCandidates];
        v4 = [v3 count];

        if (!v4)
        {
          return;
        }
      }

      v5 = *(a1 + 32);

      [v5 _handleUpdatedVisionFeatures:0 evaluatedFeatureTypes:0 fromMotionUpdate:1];
    }
  }
}

- (void)captureSessionNode:(id)node didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  nodeCopy = node;
  connectionCopy = connection;
  if (UIAccessibilityIsVoiceOverRunning() && [(AXCameraVisionEngine *)self _queue_appActive])
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
    Width = CVPixelBufferGetWidth(ImageBuffer);
    [(AXCameraVisionEngine *)self set_lastSampleBufferSize:Width, CVPixelBufferGetHeight(ImageBuffer)];
    _analysisOptionsForIncomingFrame = [(AXCameraVisionEngine *)self _analysisOptionsForIncomingFrame];
    if ([_analysisOptionsForIncomingFrame hasDetectionsEnabled])
    {
      v13 = [MEMORY[0x29EDBD718] videoDeviceFromConnection:connectionCopy];
      v28 = [MEMORY[0x29EDBD718] isMirroredVideoDevice:v13];
      v26 = v13;
      activeFormat = [v13 activeFormat];
      v14 = [MEMORY[0x29EDBD718] videoDimensionsForDeviceFormat:?];
      CMSampleBufferGetPresentationTimeStamp(&time, buffer);
      Seconds = CMTimeGetSeconds(&time);
      v16 = objc_alloc(MEMORY[0x29EDBD720]);
      [activeFormat videoFieldOfView];
      v18 = v17;
      [v13 videoZoomFactor];
      v20 = v19;
      lastDeviceMotion = [(AXCameraVisionEngine *)self lastDeviceMotion];
      attitude = [lastDeviceMotion attitude];
      LODWORD(v23) = v18;
      *&v24 = v20;
      v25 = [v16 initWithVideoFieldOfView:v14 zoomFactor:v14 >> 32 sourceWidth:attitude sourceHeight:v23 presentationTimestamp:v24 attitude:Seconds];

      [nodeCopy triggerWithSampleBuffer:buffer interfaceOrientation:-[AXCameraVisionEngine interfaceOrientation](self mirrored:"interfaceOrientation") options:v28 userContext:{_analysisOptionsForIncomingFrame, v25}];
    }
  }
}

- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects forMetadataObjectTypes:(id)types fromConnection:(id)connection
{
  outputCopy = output;
  objectsCopy = objects;
  typesCopy = types;
  connectionCopy = connection;
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = __101__AXCameraVisionEngine_captureOutput_didOutputMetadataObjects_forMetadataObjectTypes_fromConnection___block_invoke;
  v16[3] = &unk_29F2AD030;
  objc_copyWeak(&v19, &location);
  v14 = objectsCopy;
  v17 = v14;
  v15 = connectionCopy;
  v18 = v15;
  [(AXCameraVisionEngine *)self _dispatchToResultsQueueWithBlock:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __101__AXCameraVisionEngine_captureOutput_didOutputMetadataObjects_forMetadataObjectTypes_fromConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleCameraMetadataObjects:*(a1 + 32) fromConnection:*(a1 + 40)];
}

- (void)_handleCameraMetadataObjects:(id)objects fromConnection:(id)connection
{
  v59 = *MEMORY[0x29EDCA608];
  objectsCopy = objects;
  connectionCopy = connection;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    [(AXCameraVisionEngine *)self _lastSampleBufferSize];
    v10 = v9;
    v11 = v8;
    if (v9 != *MEMORY[0x29EDB90E8] || v8 != *(MEMORY[0x29EDB90E8] + 8))
    {
      interfaceOrientation = [(AXCameraVisionEngine *)self interfaceOrientation];
      if (interfaceOrientation >= 3)
      {
        v14 = v11;
      }

      else
      {
        v14 = v10;
      }

      if (interfaceOrientation < 3)
      {
        v10 = v11;
      }

      v15 = [MEMORY[0x29EDBD718] videoDeviceFromConnection:connectionCopy];
      v16 = [MEMORY[0x29EDBD718] isMirroredVideoDevice:v15];
      v52 = v15;
      activeFormat = [v15 activeFormat];
      v17 = [MEMORY[0x29EDBD718] videoDimensionsForDeviceFormat:?];
      interfaceOrientation2 = [(AXCameraVisionEngine *)self interfaceOrientation];
      v43 = connectionCopy;
      if ((interfaceOrientation2 - 2) > 2)
      {
        v19 = 3;
      }

      else
      {
        v19 = qword_29BC8EB80[interfaceOrientation2 - 2];
      }

      v20 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      v50 = [MEMORY[0x29EDB8E20] set];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v45 = objectsCopy;
      obj = objectsCopy;
      v21 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v55;
        v47 = v17 >> 32;
        v48 = v17;
        v49 = v20;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v55 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v54 + 1) + 8 * i);
            v26 = [MEMORY[0x29EDBD770] featureWithMetadata:v25 interfaceOrientation:v19 isMirrored:v16 canvasSize:{v10, v14, v43}];
            if (v26)
            {
              if (v25)
              {
                [v25 time];
              }

              else
              {
                memset(&time, 0, sizeof(time));
              }

              Seconds = CMTimeGetSeconds(&time);
              v28 = objc_alloc(MEMORY[0x29EDBD720]);
              [activeFormat videoFieldOfView];
              v30 = v29;
              [v52 videoZoomFactor];
              v32 = v31;
              [(AXCameraVisionEngine *)self lastDeviceMotion];
              v34 = v33 = self;
              attitude = [v34 attitude];
              LODWORD(v36) = v30;
              *&v37 = v32;
              v38 = [v28 initWithVideoFieldOfView:v48 zoomFactor:v47 sourceWidth:attitude sourceHeight:v36 presentationTimestamp:v37 attitude:Seconds];

              [v26 setUserContext:v38];
              v20 = v49;
              [v49 addObject:v26];
              v39 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v26, "featureType")}];
              [v50 addObject:v39];

              self = v33;
            }
          }

          v22 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
        }

        while (v22);
      }

      if (![obj count])
      {
        [v50 addObject:&unk_2A214D048];
        [v50 addObject:&unk_2A214D0D8];
      }

      v40 = [v50 count];
      connectionCopy = v44;
      if (v40)
      {
        firstObject = [v20 firstObject];
        userContext = [firstObject userContext];

        [(AXCameraVisionEngine *)self _handleVisionFeatures:v20 evaluatedFeatureTypes:v50 userContext:userContext];
      }

      objectsCopy = v45;
    }
  }
}

- (UIView)sceneObjectElementContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneObjectElementContainerView);

  return WeakRetained;
}

- (CGSize)_lastSampleBufferSize
{
  width = self->__lastSampleBufferSize.width;
  height = self->__lastSampleBufferSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_handleVisionFeatures:(uint8_t *)buf evaluatedFeatureTypes:(_BYTE *)a2 userContext:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_29BC67000, log, OS_LOG_TYPE_FAULT, "Motion feature should not be handled on Vision results queue. We would have to account for this here.", buf, 2u);
}

- (void)_handleVisionFeatures:(uint8_t *)buf evaluatedFeatureTypes:(_BYTE *)a2 userContext:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_29BC67000, log, OS_LOG_TYPE_FAULT, "CameraMetadata feature not expected to be handled on Vision results queue. We would have to account for this here.", buf, 2u);
}

@end