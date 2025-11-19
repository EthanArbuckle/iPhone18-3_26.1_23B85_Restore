@interface ARSCNView
- (ARAnchor)anchorForNode:(SCNNode *)node;
- (ARRaycastQuery)raycastQueryFromPoint:(CGPoint)point allowingTarget:(ARRaycastTarget)target alignment:(ARRaycastTargetAlignment)alignment;
- (ARSCNView)initWithCoder:(id)a3;
- (ARSCNView)initWithFrame:(CGRect)a3;
- (ARSCNView)initWithFrame:(CGRect)a3 options:(id)a4;
- (ARSession)session;
- (BOOL)automaticallyOccludesVirtualContent;
- (BOOL)runningWithSegmentation;
- (NSArray)hitTest:(CGPoint)point types:(ARHitTestResultType)types;
- (NSString)description;
- (SCNNode)nodeForAnchor:(ARAnchor *)anchor;
- (id)_anchorForNode:(id)a3 inFrame:(id)a4;
- (id)_hitTest:(CGPoint)a3 frame:(id)a4 types:(unint64_t)a5;
- (id)occlusionGeometryNodeForAnchor:(id)a3;
- (int64_t)actualPreferredFramesPerSecond;
- (int64_t)preferredFramesPerSecond;
- (simd_float3)unprojectPoint:(CGPoint)point ontoPlaneWithTransform:(simd_float4x4)planeTransform;
- (unint64_t)debugOptions;
- (unint64_t)occlusionExcludedBitMask;
- (void)_addAnchors:(id)a3;
- (void)_addOcclusionGeometryForAnchor:(id)a3;
- (void)_commonInit;
- (void)_forceUpdateCamera;
- (void)_removeAnchors:(id)a3;
- (void)_renderer:(id)a3 updateAtTime:(double)a4;
- (void)_updateAnchors:(id)a3 frame:(id)a4;
- (void)_updateBackingSize;
- (void)_updateCamera:(id)a3;
- (void)_updateDebugVisualization:(id)a3;
- (void)_updateLighting:(id)a3;
- (void)_updateNode:(id)a3 forAnchor:(id)a4 frame:(id)a5;
- (void)_updateOcclusionCompositor;
- (void)_updatePreferredFramesPerSecond;
- (void)_updateProbesWithFrame:(id)a3;
- (void)cleanupLingeringRotationState;
- (void)didMoveToWindow;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4;
- (void)session:(id)a3 didAddAnchors:(id)a4;
- (void)session:(id)a3 didChangeGeoTrackingStatus:(id)a4;
- (void)session:(id)a3 didChangeState:(unint64_t)a4;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didOutputAudioSampleBuffer:(opaqueCMSampleBuffer *)a4;
- (void)session:(id)a3 didRemoveAnchors:(id)a4;
- (void)session:(id)a3 didUpdateAnchors:(id)a4;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)session:(id)a3 willRunWithConfiguration:(id)a4;
- (void)sessionInterruptionEnded:(id)a3;
- (void)sessionShouldAttemptRelocalization:(id)a3 completion:(id)a4;
- (void)sessionWasInterrupted:(id)a3;
- (void)setActualPreferredFramesPerSecond:(int64_t)a3;
- (void)setAutomaticallyOccludesVirtualContent:(BOOL)a3;
- (void)setAutomaticallyUpdatesLighting:(BOOL)automaticallyUpdatesLighting;
- (void)setCompositorAlgorithm:(int64_t)a3;
- (void)setDebugOptions:(unint64_t)a3;
- (void)setDelegate:(id)delegate;
- (void)setOcclusionExcludedBitMask:(unint64_t)a3;
- (void)setPointOfView:(id)a3;
- (void)setPreferredFramesPerSecond:(int64_t)a3;
- (void)setProvidesOcclusionGeometry:(BOOL)a3;
- (void)setRunningWithSegmentation:(BOOL)a3;
- (void)setScene:(SCNScene *)scene;
- (void)setSegmentationUseEstimatedDepthData:(BOOL)a3;
- (void)setSession:(ARSession *)session;
- (void)windowDidRotateNotification:(id)a3;
- (void)windowWillAnimateRotateNotification:(id)a3;
- (void)windowWillRotateNotification:(id)a3;
@end

@implementation ARSCNView

- (ARSCNView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ARSCNView;
  v3 = [(ARSCNView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ARSCNView *)v3 _commonInit];
  }

  return v4;
}

- (ARSCNView)initWithFrame:(CGRect)a3 options:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  if (v9)
  {
    v10 = v9;
    v11 = [v9 mutableCopy];
    [v11 removeObjectForKey:*MEMORY[0x277CDBBE0]];
  }

  else
  {
    v11 = 0;
  }

  v15.receiver = self;
  v15.super_class = ARSCNView;
  v12 = [(ARSCNView *)&v15 initWithFrame:v11 options:x, y, width, height];
  v13 = v12;
  if (v12)
  {
    [(ARSCNView *)v12 _commonInit];
  }

  return v13;
}

- (ARSCNView)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ARSCNView;
  v5 = [(ARSCNView *)&v8 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(ARSCNView *)v5 _commonInit];
    if ([v4 containsValueForKey:@"automaticallyUpdatesLighting"])
    {
      v6->_automaticallyUpdatesLighting = [v4 decodeBoolForKey:@"automaticallyUpdatesLighting"];
    }
  }

  return v6;
}

- (void)_commonInit
{
  self->_lastFrameTimestamp = 0.0;
  lightNode = self->_lightNode;
  self->_lightNode = 0;

  v4 = objc_opt_new();
  environmentProbeNodes = self->_environmentProbeNodes;
  self->_environmentProbeNodes = v4;

  v6 = objc_opt_new();
  environmentProbeNodesToRemove = self->_environmentProbeNodesToRemove;
  self->_environmentProbeNodesToRemove = v6;

  v8 = [MEMORY[0x277CDBAA8] node];
  cameraNode = self->_cameraNode;
  self->_cameraNode = v8;

  v10 = [MEMORY[0x277CDBA48] camera];
  [(SCNNode *)self->_cameraNode setCamera:v10];

  v11 = [(SCNNode *)self->_cameraNode camera];
  [v11 setZNear:0.00100000005];

  v12 = [(SCNNode *)self->_cameraNode camera];
  [v12 setZFar:1000.0];

  self->_drawsCameraImage = 1;
  v13 = [MEMORY[0x277CBEB18] array];
  addedAnchors = self->_addedAnchors;
  self->_addedAnchors = v13;

  v15 = [MEMORY[0x277CBEB18] array];
  updatedAnchors = self->_updatedAnchors;
  self->_updatedAnchors = v15;

  v17 = [MEMORY[0x277CBEB18] array];
  removedAnchors = self->_removedAnchors;
  self->_removedAnchors = v17;

  v19 = dispatch_semaphore_create(1);
  anchorsSemaphore = self->_anchorsSemaphore;
  self->_anchorsSemaphore = v19;

  v21 = [MEMORY[0x277CBEB38] dictionary];
  nodesByAnchorIdentifier = self->_nodesByAnchorIdentifier;
  self->_nodesByAnchorIdentifier = v21;

  v23 = [MEMORY[0x277CBEB38] dictionary];
  occlusionGeometryNodesByAnchorIdentifier = self->_occlusionGeometryNodesByAnchorIdentifier;
  self->_occlusionGeometryNodesByAnchorIdentifier = v23;

  v25 = dispatch_semaphore_create(1);
  nodesSemaphore = self->_nodesSemaphore;
  self->_nodesSemaphore = v25;

  self->_arDebugOptions = 0;
  [(ARSCNView *)self bounds];
  self->_viewportSize.width = v27;
  self->_viewportSize.height = v28;
  v29 = [(ARSCNView *)self layer];
  [v29 contentsScale];
  self->_contentsScale = v30;

  self->_automaticallyUpdatesLighting = 1;
  self->_providesOcclusionGeometry = 0;
  self->_automaticallyOccludesVirtualContent = 0;
  self->_segmentationUseEstimatedDepthData = 0;
  self->_compositorAlgorithm = 0;
  warpKernel = self->_warpKernel;
  self->_warpKernel = 0;

  self->_occlusionLock._os_unfair_lock_opaque = 0;
  self->_attemptRenderSynchronisationARFrame = [MEMORY[0x277CE52D8] BOOLForKey:*MEMORY[0x277CE5190]];
  self->_renderRawSceneUnderstandingImage = [MEMORY[0x277CE52D8] BOOLForKey:*MEMORY[0x277CE5198]];
  self->_anchorUpdatesPerRendererUpdate = 1;
  v32 = [(ARSession *)self->_session replaySensor];
  v33 = [v32 replayMode];

  if (v33)
  {
    self->_attemptRenderSynchronisationARFrame = 0;
  }

  if (ARLinkedOnOrAfterYukon())
  {
    self->_rendersCameraGrain = [MEMORY[0x277CE52D8] BOOLForKey:*MEMORY[0x277CE51A0]];
    rendersMotionBlur = [MEMORY[0x277CE52D8] BOOLForKey:*MEMORY[0x277CE51A8]];
    self->_rendersMotionBlur = rendersMotionBlur;
  }

  else
  {
    rendersMotionBlur = self->_rendersMotionBlur;
  }

  self->_lastRendersMotionBlur = rendersMotionBlur;
  v35 = MEMORY[0x277D860B8];
  v36 = *(MEMORY[0x277D860B8] + 48);
  *&self->_anon_350[36] = *(MEMORY[0x277D860B8] + 32);
  *&self->_anon_350[52] = v36;
  v37 = v35[1];
  *&self->_anon_350[4] = *v35;
  *&self->_anon_350[20] = v37;
  v54 = [MEMORY[0x277CDBAF8] scene];
  [(ARSCNView *)self setScene:v54];
  v38 = [MEMORY[0x277D75348] blackColor];
  [(ARSCNView *)self setBackgroundColor:v38];

  self->_developerPreferredFramesPerSecond = -1;
  v39 = [MEMORY[0x277CE53B0] supportedVideoFormats];
  v40 = [v39 firstObject];

  v41 = objc_alloc(MEMORY[0x277CE5238]);
  v42 = [v40 deviceFormat];
  ARIntrinsicsFromDeviceFormat();
  v52 = v44;
  v53 = v43;
  v51 = v45;
  [v40 imageResolution];
  v48 = [v41 initWithIntrinsics:v53 imageResolution:{v52, v51, v46, v47}];

  [(ARSCNView *)self _updateCamera:v48];
  [MEMORY[0x277CE5370] setRenderType:1];
  v49 = [MEMORY[0x277CCAB98] defaultCenter];
  v50 = [(ARSCNView *)self renderer];
  [v49 removeObserver:v50 name:*MEMORY[0x277D76658] object:0];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ARSCNView;
  v4 = a3;
  [(ARSCNView *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_automaticallyUpdatesLighting forKey:{@"automaticallyUpdatesLighting", v5.receiver, v5.super_class}];
}

- (void)layoutSubviews
{
  v28 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = ARSCNView;
  [(ARSCNView *)&v17 layoutSubviews];
  [(ARSCNView *)self bounds];
  self->_viewportSize.width = v3;
  self->_viewportSize.height = v4;
  v5 = [(ARSCNView *)self layer];
  [v5 contentsScale];
  self->_contentsScale = v6;

  v7 = [(ARSCNView *)self window];
  v8 = [v7 windowScene];
  self->_interfaceOrientation = [v8 interfaceOrientation];

  v9 = _ARLogGeneral_0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [(ARSCNView *)self bounds];
    v12 = NSStringFromCGRect(v29);
    contentsScale = self->_contentsScale;
    v14 = NSStringFromUIInterfaceOrientation(self->_interfaceOrientation);
    *buf = 138544386;
    v19 = v11;
    v20 = 2048;
    v21 = self;
    v22 = 2114;
    v23 = v12;
    v24 = 2048;
    v25 = contentsScale;
    v26 = 2114;
    v27 = v14;
    _os_log_impl(&dword_23D3AE000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Layout changed to %{public}@, %.2fx, %{public}@", buf, 0x34u);
  }

  [(ARSCNView *)self _forceUpdateCamera];
  compositor = self->_compositor;
  if (compositor)
  {
    [(ARSCNCompositor *)compositor setCurrentOrientation:self->_interfaceOrientation];
    [(ARSCNCompositor *)self->_compositor setCurrentSize:self->_viewportSize.width, self->_viewportSize.height];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  [(ARSCNView *)self frame];
  v3 = NSStringFromCGRect(v15);
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(ARSCNView *)self session];
  v8 = [(ARSCNView *)self scene];
  [(ARSCNView *)self sceneTime];
  v10 = v9;
  v11 = [(ARSCNView *)self pointOfView];
  v12 = [v4 stringWithFormat:@"<%@: %p | session=%p scene=%@ sceneTime=%f frame=%@ pointOfView=%@>", v6, self, v7, v8, v10, v3, v11];

  return v12;
}

- (ARSession)session
{
  v2 = self;
  objc_sync_enter(v2);
  session = v2->_session;
  if (!session)
  {
    v4 = objc_opt_new();
    v5 = v2->_session;
    v2->_session = v4;

    [(ARSession *)v2->_session _addObserver:v2];
    session = v2->_session;
  }

  v6 = session;
  objc_sync_exit(v2);

  return v6;
}

- (void)setSession:(ARSession *)session
{
  v16 = session;
  v6 = self;
  objc_sync_enter(v6);
  v7 = v6->_session;
  if (v7 != v16)
  {
    [(ARSession *)v7 _removeObserver:v6];
    v8 = [(ARSCNView *)v6 currentRenderFrame];
    v9 = v8;
    if (v8)
    {
      v10 = v6->_session;
      v3 = [v8 anchors];
      [(ARSCNView *)v6 session:v10 didRemoveAnchors:v3];

      objc_storeStrong(&v6->_session, session);
      v11 = [v9 anchors];
      [(ARSCNView *)v6 session:v16 didAddAnchors:v11];
    }

    else
    {
      v12 = v16;
      v11 = v6->_session;
      v6->_session = v12;
    }

    [(ARSession *)v6->_session _addObserver:v6];
    [(ARSCNView *)v6 session:v6->_session didChangeState:[(ARSession *)v6->_session state]];
    v13 = [(ARSession *)v6->_session configuration];
    v14 = [v13 frameSemantics] & 3;
    if (v14)
    {
      v15 = 1;
    }

    else
    {
      v3 = [(ARSession *)v6->_session configuration];
      v15 = [v3 frameSemantics] & 1;
    }

    [(ARSCNView *)v6 setRunningWithSegmentation:v15];
    if (!v14)
    {
    }
  }

  objc_sync_exit(v6);
}

- (void)setAutomaticallyUpdatesLighting:(BOOL)automaticallyUpdatesLighting
{
  self->_automaticallyUpdatesLighting = automaticallyUpdatesLighting;
  if (!automaticallyUpdatesLighting)
  {
    lightNode = self->_lightNode;
    if (lightNode)
    {
      [(SCNNode *)lightNode removeFromParentNode];
      v5 = self->_lightNode;
      self->_lightNode = 0;
    }
  }
}

- (void)setRunningWithSegmentation:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__ARSCNView_setRunningWithSegmentation___block_invoke;
  v3[3] = &unk_278BCD610;
  v3[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __40__ARSCNView_setRunningWithSegmentation___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 840));
  *(*(a1 + 32) + 920) = *(a1 + 40);
  [*(a1 + 32) _updateOcclusionCompositor];
  v2 = (*(a1 + 32) + 840);

  os_unfair_lock_unlock(v2);
}

- (BOOL)runningWithSegmentation
{
  os_unfair_lock_lock(&self->_occlusionLock);
  runningWithSegmentation = self->_runningWithSegmentation;
  os_unfair_lock_unlock(&self->_occlusionLock);
  return runningWithSegmentation;
}

- (void)setAutomaticallyOccludesVirtualContent:(BOOL)a3
{
  os_unfair_lock_lock(&self->_occlusionLock);
  self->_automaticallyOccludesVirtualContent = a3;
  [(ARSCNView *)self _updateOcclusionCompositor];

  os_unfair_lock_unlock(&self->_occlusionLock);
}

- (void)setSegmentationUseEstimatedDepthData:(BOOL)a3
{
  os_unfair_lock_lock(&self->_occlusionLock);
  self->_segmentationUseEstimatedDepthData = a3;
  [(ARSCNView *)self _updateOcclusionCompositor];

  os_unfair_lock_unlock(&self->_occlusionLock);
}

- (BOOL)automaticallyOccludesVirtualContent
{
  os_unfair_lock_lock(&self->_occlusionLock);
  automaticallyOccludesVirtualContent = self->_automaticallyOccludesVirtualContent;
  os_unfair_lock_unlock(&self->_occlusionLock);
  return automaticallyOccludesVirtualContent;
}

- (void)setOcclusionExcludedBitMask:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_occlusionLock);
  self->_occlusionExcludedBitMask = a3;
  [(ARSCNView *)self _updateOcclusionCompositor];

  os_unfair_lock_unlock(&self->_occlusionLock);
}

- (unint64_t)occlusionExcludedBitMask
{
  os_unfair_lock_lock(&self->_occlusionLock);
  occlusionExcludedBitMask = self->_occlusionExcludedBitMask;
  os_unfair_lock_unlock(&self->_occlusionLock);
  return occlusionExcludedBitMask;
}

- (void)setProvidesOcclusionGeometry:(BOOL)a3
{
  v3 = a3;
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_occlusionLock);
  self->_providesOcclusionGeometry = v3;
  [(ARSCNView *)self _updateOcclusionCompositor];
  os_unfair_lock_unlock(&self->_occlusionLock);
  if (v3)
  {
    dispatch_semaphore_wait(self->_anchorsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v5 = [(ARSCNView *)self currentRenderFrame];
    dispatch_semaphore_wait(self->_nodesSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_semaphore_signal(self->_anchorsSemaphore);
    if (v5)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v6 = [v5 anchors];
      v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v22;
        do
        {
          v10 = 0;
          do
          {
            if (*v22 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [(ARSCNView *)self _addOcclusionGeometryForAnchor:*(*(&v21 + 1) + 8 * v10++)];
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v8);
      }
    }

    dispatch_semaphore_signal(self->_nodesSemaphore);
  }

  else
  {
    dispatch_semaphore_wait(self->_nodesSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [(NSMutableDictionary *)self->_occlusionGeometryNodesByAnchorIdentifier allValues];
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v17 + 1) + 8 * v15++) removeFromParentNode];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v13);
    }

    [(NSMutableDictionary *)self->_occlusionGeometryNodesByAnchorIdentifier removeAllObjects];
    dispatch_semaphore_signal(self->_nodesSemaphore);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (ARAnchor)anchorForNode:(SCNNode *)node
{
  nodesSemaphore = self->_nodesSemaphore;
  v5 = node;
  dispatch_semaphore_wait(nodesSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v6 = [(ARSCNView *)self currentRenderFrame];
  v7 = [(ARSCNView *)self _anchorForNode:v5 inFrame:v6];

  dispatch_semaphore_signal(self->_nodesSemaphore);

  return v7;
}

- (SCNNode)nodeForAnchor:(ARAnchor *)anchor
{
  nodesSemaphore = self->_nodesSemaphore;
  v5 = anchor;
  dispatch_semaphore_wait(nodesSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  nodesByAnchorIdentifier = self->_nodesByAnchorIdentifier;
  v7 = [(ARAnchor *)v5 identifier];

  v8 = [(NSMutableDictionary *)nodesByAnchorIdentifier objectForKeyedSubscript:v7];

  dispatch_semaphore_signal(self->_nodesSemaphore);

  return v8;
}

- (id)occlusionGeometryNodeForAnchor:(id)a3
{
  nodesSemaphore = self->_nodesSemaphore;
  v5 = a3;
  dispatch_semaphore_wait(nodesSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  occlusionGeometryNodesByAnchorIdentifier = self->_occlusionGeometryNodesByAnchorIdentifier;
  v7 = [v5 identifier];

  v8 = [(NSMutableDictionary *)occlusionGeometryNodesByAnchorIdentifier objectForKeyedSubscript:v7];

  dispatch_semaphore_signal(self->_nodesSemaphore);

  return v8;
}

- (NSArray)hitTest:(CGPoint)point types:(ARHitTestResultType)types
{
  y = point.y;
  x = point.x;
  v8 = [(ARSCNView *)self currentRenderFrame];
  v9 = [(ARSCNView *)self _hitTest:v8 frame:types types:x, y];

  return v9;
}

- (simd_float3)unprojectPoint:(CGPoint)point ontoPlaneWithTransform:(simd_float4x4)planeTransform
{
  v14 = *planeTransform.columns[2].i64;
  v15 = *planeTransform.columns[3].i64;
  v12 = *planeTransform.columns[0].i64;
  v13 = *planeTransform.columns[1].i64;
  y = point.y;
  x = point.x;
  v7 = [(ARSCNView *)self currentRenderFrame];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 camera];
    [v9 unprojectPoint:self->_interfaceOrientation ontoPlaneWithTransform:x orientation:y viewportSize:{v12, v13, v14, v15, self->_viewportSize.width, self->_viewportSize.height}];
    v16 = v10;
  }

  else
  {
    v16 = 0u;
  }

  return v16;
}

- (ARRaycastQuery)raycastQueryFromPoint:(CGPoint)point allowingTarget:(ARRaycastTarget)target alignment:(ARRaycastTargetAlignment)alignment
{
  y = point.y;
  x = point.x;
  v10 = [(ARSCNView *)self currentRenderFrame];
  v11 = v10;
  if (v10)
  {
    p_viewportSize = &self->_viewportSize;
    height = self->_viewportSize.height;
    v21 = x / self->_viewportSize.width;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    interfaceOrientation = self->_interfaceOrientation;
    v20 = y / height;
    v15 = [v10 camera];
    [v15 imageResolution];
    ARViewToCameraImageTransform(interfaceOrientation, 0, &v22, p_viewportSize->width, p_viewportSize->height, v16, v17);

    v18 = [v11 raycastQueryFromPoint:target allowingTarget:alignment alignment:{vaddq_f64(v24, vmlaq_n_f64(vmulq_n_f64(v23, v20), v22, v21))}];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)setScene:(SCNScene *)scene
{
  v6.receiver = self;
  v6.super_class = ARSCNView;
  v4 = scene;
  [(ARSCNView *)&v6 setScene:v4];
  v5 = [(SCNScene *)v4 rootNode:v6.receiver];

  [v5 addChildNode:self->_cameraNode];
  [(ARSCNView *)self setPointOfView:self->_cameraNode];
}

- (void)setPointOfView:(id)a3
{
  v18.receiver = self;
  v18.super_class = ARSCNView;
  v4 = a3;
  [(ARSCNView *)&v18 setPointOfView:v4];
  v5 = self->_cameraNode == v4;

  [(ARSCNView *)self setDrawsCameraImage:v5, v18.receiver, v18.super_class];
  LODWORD(v4) = [(ARSCNView *)self drawsCameraImage];
  v6 = [(ARSCNView *)self scene];
  v7 = [v6 background];
  v8 = [v7 contents];
  p_captureDeviceOutputConsumer = &self->_captureDeviceOutputConsumer;
  captureDeviceOutputConsumer = self->_captureDeviceOutputConsumer;

  if (v4)
  {
    if (v8 == captureDeviceOutputConsumer)
    {
      return;
    }

    v11 = [(ARSCNView *)self scene];
    v12 = [v11 background];
    v13 = [v12 contents];
    originalBackgroundContents = self->_originalBackgroundContents;
    self->_originalBackgroundContents = v13;
  }

  else
  {
    if (v8 != captureDeviceOutputConsumer)
    {
      return;
    }

    p_captureDeviceOutputConsumer = &self->_originalBackgroundContents;
  }

  v15 = *p_captureDeviceOutputConsumer;
  v16 = [(ARSCNView *)self scene];
  v17 = [v16 background];
  [v17 setContents:v15];
}

- (void)setDebugOptions:(unint64_t)a3
{
  v3 = 0xFFFFFFFF80000000;
  if (!(a3 >> 31))
  {
    v3 = 0;
  }

  v4 = v3 | a3 & 0x60000000;
  self->_arDebugOptions = v4;
  v5.receiver = self;
  v5.super_class = ARSCNView;
  [(ARSCNView *)&v5 setDebugOptions:a3 & ~v4];
}

- (unint64_t)debugOptions
{
  v3.receiver = self;
  v3.super_class = ARSCNView;
  return self->_arDebugOptions | [(ARSCNView *)&v3 debugOptions];
}

- (void)setPreferredFramesPerSecond:(int64_t)a3
{
  [(ARSCNView *)self setDeveloperPreferredFramesPerSecond:a3];

  [(ARSCNView *)self _updatePreferredFramesPerSecond];
}

- (int64_t)preferredFramesPerSecond
{
  developerPreferredFramesPerSecond = self->_developerPreferredFramesPerSecond;
  if (developerPreferredFramesPerSecond < 0)
  {
    v4.receiver = self;
    v4.super_class = ARSCNView;
    return [(ARSCNView *)&v4 preferredFramesPerSecond];
  }

  return developerPreferredFramesPerSecond;
}

- (void)setDelegate:(id)delegate
{
  v3.receiver = self;
  v3.super_class = ARSCNView;
  [(ARSCNView *)&v3 setDelegate:delegate];
}

- (void)_renderer:(id)a3 updateAtTime:(double)a4
{
  v77 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  if (!self->_renderThreadFixed)
  {
    pthread_set_qos_class_self_np(QOS_CLASS_USER_INTERACTIVE, -4);
    pthread_set_fixedpriority_self();
    self->_renderThreadFixed = 1;
  }

  v5 = [(ARSCNView *)self currentRenderFrame];
  v6 = v5;
  if (self->_attemptRenderSynchronisationARFrame && v5)
  {
    v7 = 0;
    while (1)
    {
      [v6 timestamp];
      if (v8 != self->_lastFrameTimestamp)
      {
        break;
      }

      usleep(0x1F4u);
      v9 = v7 + 1;
      v10 = [(ARSCNView *)self currentRenderFrame];

      [v10 timestamp];
      kdebug_trace();
      if (v10)
      {
        v6 = v10;
        if (v7++ < 4)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    v10 = v6;
    v9 = v7;
    if (!v7)
    {
      goto LABEL_15;
    }

LABEL_12:
    v12 = _ARLogGeneral_0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138543874;
      v72 = v14;
      v73 = 2048;
      v74 = self;
      v75 = 1024;
      v76 = v9;
      _os_log_impl(&dword_23D3AE000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Missed frame and retried to find a matching using %d attempts.", buf, 0x1Cu);
    }

    v6 = v10;
  }

LABEL_15:
  if (!self->_renderRawSceneUnderstandingImage || ([v6 rawSceneUnderstandingData], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "capturedImage"), v15, v16))
  {
    if (!v6 || ([v6 timestamp], v17 == self->_lastFrameTimestamp))
    {
      kdebug_trace();
LABEL_56:
      kdebug_trace();
      goto LABEL_57;
    }

    [v6 timestamp];
    v18 = [v6 captureDate];
    [v18 timeIntervalSinceNow];
    kdebug_trace();

    [v6 timestamp];
    self->_lastFrameInterval = v19 - self->_lastFrameTimestamp;
    [v6 timestamp];
    self->_lastFrameTimestamp = v20;
    if ([(ARSCNView *)self drawsCameraImageAndNilPresentation])
    {
      if (!self->_captureDeviceOutputConsumer)
      {
        v21 = [MEMORY[0x277CDBA98] captureDeviceOutputConsumer];
        captureDeviceOutputConsumer = self->_captureDeviceOutputConsumer;
        self->_captureDeviceOutputConsumer = v21;

        v23 = [(ARSCNView *)self scene];
        v24 = [v23 background];
        v25 = [v24 contents];

        if (!v25)
        {
          v26 = self->_captureDeviceOutputConsumer;
          v27 = [(ARSCNView *)self scene];
          v28 = [v27 background];
          [v28 setContents:v26];
        }
      }
    }

    v29 = [(ARSCNView *)self scene];
    v30 = [v29 background];
    v31 = [v30 contents];
    if (v31 == self->_captureDeviceOutputConsumer && [v6 capturedImage])
    {
      v68 = [(ARSCNView *)self rotationSnapshotState];

      if (v68 == 1)
      {
        goto LABEL_26;
      }

      if (!self->_renderRawSceneUnderstandingImage)
      {
        -[ARSCNView _renderCapturedPixelBuffer:](self, "_renderCapturedPixelBuffer:", [v6 capturedImage]);
        goto LABEL_26;
      }

      v29 = [v6 rawSceneUnderstandingData];
      -[ARSCNView _renderCapturedPixelBuffer:](self, "_renderCapturedPixelBuffer:", [v29 capturedImage]);
    }

    else
    {
    }

LABEL_26:
    if (self->_renderRawSceneUnderstandingImage)
    {
      v32 = [v6 rawSceneUnderstandingData];
      v33 = [v32 wideCamera];
      [(ARSCNView *)self _updateCamera:v33];
    }

    else
    {
      v32 = [v6 camera];
      [(ARSCNView *)self _updateCamera:v32];
    }

    [(ARSCNView *)self _updateProbesWithFrame:v6];
    if (self->_rendersMotionBlur)
    {
      v34 = [v6 camera];
      [v34 exposureDuration];
      v36 = v35 / self->_lastFrameInterval;
      v37 = [(SCNNode *)self->_cameraNode camera];
      [v37 setMotionBlurIntensity:v36];
    }

    else if (self->_lastRendersMotionBlur)
    {
      v38 = [(SCNNode *)self->_cameraNode camera];
      [v38 setMotionBlurIntensity:0.0];
    }

    self->_lastRendersMotionBlur = self->_rendersMotionBlur;
    if ([(ARSCNView *)self automaticallyUpdatesLighting])
    {
      v39 = [v6 lightEstimate];
      [(ARSCNView *)self _updateLighting:v39];
    }

    if ([(ARSCNView *)self rotationSnapshotState]== 2 && ([(ARSCNView *)self frameToRemoveRotationSnapshotOn]& 0x8000000000000000) == 0)
    {
      if (![(ARSCNView *)self frameToRemoveRotationSnapshotOn])
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __36__ARSCNView__renderer_updateAtTime___block_invoke;
        block[3] = &unk_278BCD4A8;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }

      [(ARSCNView *)self setFrameToRemoveRotationSnapshotOn:[(ARSCNView *)self frameToRemoveRotationSnapshotOn]- 1];
    }

    dispatch_semaphore_wait(self->_anchorsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v40 = [(NSMutableArray *)self->_addedAnchors copy];
    [(NSMutableArray *)self->_addedAnchors removeAllObjects];
    v41 = [(NSMutableArray *)self->_removedAnchors copy];
    [(NSMutableArray *)self->_removedAnchors removeAllObjects];
    if ([(ARSCNView *)self graduallyUpdateAnchors]&& [(NSMutableArray *)self->_updatedAnchors count])
    {
      v42 = [(NSMutableArray *)self->_updatedAnchors count];
      if (v42 >= self->_anchorUpdatesPerRendererUpdate)
      {
        anchorUpdatesPerRendererUpdate = self->_anchorUpdatesPerRendererUpdate;
      }

      else
      {
        anchorUpdatesPerRendererUpdate = v42;
      }

      v44 = [(NSMutableArray *)self->_updatedAnchors subarrayWithRange:0, anchorUpdatesPerRendererUpdate];
      [(NSMutableArray *)self->_updatedAnchors removeObjectsInRange:0, anchorUpdatesPerRendererUpdate];
    }

    else
    {
      v44 = [(NSMutableArray *)self->_updatedAnchors copy];
      [(NSMutableArray *)self->_updatedAnchors removeAllObjects];
    }

    dispatch_semaphore_signal(self->_anchorsSemaphore);
    [(ARSCNView *)self _removeAnchors:v41];
    [(ARSCNView *)self _addAnchors:v40];
    [(ARSCNView *)self _updateAnchors:v44 frame:v6];
    [(ARSCNView *)self _updateDebugVisualization:v6];
    if (self->_compositor && [(ARSCNView *)self rotationSnapshotState]!= 1)
    {
      [(ARSCNCompositor *)self->_compositor setCurrentFrame:v6];
    }

    if (!self->_rendersCameraGrain || ([v6 cameraGrainIntensity], v45 == 0.0))
    {
      v51 = [(SCNNode *)self->_cameraNode camera];
      [v51 setGrainIntensity:0.0];
    }

    else
    {
      v46 = [(SCNNode *)self->_cameraNode camera];
      [v46 setGrainIntensity:0.82];

      v47 = [(ARSCNView *)self renderer];
      [v47 currentRenderPassDescriptor];
      v48 = v69 = v40;
      v49 = [v48 colorAttachments];
      v50 = [v49 objectAtIndexedSubscript:0];
      v51 = [v50 texture];

      v52 = [v6 camera];
      [v52 imageResolution];
      v54 = v53;
      v56 = v55;

      *&v54 = v54;
      v57 = fmax([v51 width], objc_msgSend(v51, "height"));
      v58 = fmin([v51 width], objc_msgSend(v51, "height"));
      *&v56 = v56;
      v59 = fmaxf(v57 / *&v54, v58 / *&v56);
      v60 = [(SCNNode *)self->_cameraNode camera];
      [v60 setGrainScale:v59];

      v61 = [(SCNNode *)self->_cameraNode camera];
      [v61 setGrainIsColored:1];

      v62 = [v6 cameraGrainTexture];
      v63 = [(SCNNode *)self->_cameraNode camera];
      [v63 setGrainTexture:v62];

      v40 = v69;
      [v6 cameraGrainIntensity];
      v65 = v64;
      v66 = [(SCNNode *)self->_cameraNode camera];
      [v66 setGrainSlice:v65];
    }

    [v6 timestamp];
    kdebug_trace();

    goto LABEL_56;
  }

LABEL_57:

  v67 = *MEMORY[0x277D85DE8];
}

void __36__ARSCNView__renderer_updateAtTime___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setRotationSnapshotState:0];
  [*(*(a1 + 32) + 792) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 792);
  *(v2 + 792) = 0;

  v4 = _ARLogGeneral_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = *(a1 + 32);
    v10 = 138543618;
    v11 = v7;
    v12 = 2048;
    v13 = v8;
    _os_log_impl(&dword_23D3AE000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Removing rotation snapshot", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v5 = a4;
  v6 = [v5 renderFramesPerSecond];
  v7 = [v5 shouldRestrictFrameRate];

  [(ARSCNView *)self _updateFramesPerSecondWithTarget:v6 shouldRestrictFrameRate:v7];
}

- (void)session:(id)a3 didChangeState:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_session == a3)
  {
    v6 = _ARLogGeneral_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = "NO";
      v13 = 138543874;
      v14 = v8;
      if (a4 == 1)
      {
        v9 = "YES";
      }

      v15 = 2048;
      v16 = self;
      v17 = 2082;
      v18 = v9;
      _os_log_impl(&dword_23D3AE000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Setting playing state to %{public}s", &v13, 0x20u);
    }

    v10 = a4 == 1;

    [(ARSCNView *)self set_wantsSceneRendererDelegationMessages:v10];
    [(ARSCNView *)self setPlaying:v10];
    v11 = [(ARSCNView *)self renderer];
    [v11 set_enableARMode:1];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 didAddAnchors:(id)a4
{
  anchorsSemaphore = self->_anchorsSemaphore;
  v6 = a4;
  dispatch_semaphore_wait(anchorsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [(NSMutableArray *)self->_removedAnchors removeObjectsInArray:v6];
  [(NSMutableArray *)self->_addedAnchors addObjectsFromArray:v6];
  [(NSMutableArray *)self->_updatedAnchors removeObjectsInArray:v6];
  [(NSMutableArray *)self->_updatedAnchors addObjectsFromArray:v6];

  v7 = self->_anchorsSemaphore;

  dispatch_semaphore_signal(v7);
}

- (void)session:(id)a3 didUpdateAnchors:(id)a4
{
  v9 = a4;
  dispatch_semaphore_wait(self->_anchorsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if ([(ARSCNView *)self graduallyUpdateAnchors])
  {
    v5 = [(NSMutableArray *)self->_updatedAnchors count];
    anchorUpdatesPerRendererUpdate = self->_anchorUpdatesPerRendererUpdate;
    if (v5)
    {
      v7 = [(NSMutableArray *)self->_updatedAnchors count];
      v8 = [v9 count] + v7;
      if (anchorUpdatesPerRendererUpdate + 1 < v8)
      {
        v8 = anchorUpdatesPerRendererUpdate + 1;
      }
    }

    else
    {
      if (anchorUpdatesPerRendererUpdate < 2)
      {
        goto LABEL_9;
      }

      v8 = anchorUpdatesPerRendererUpdate - 1;
    }

    self->_anchorUpdatesPerRendererUpdate = v8;
  }

LABEL_9:
  [(NSMutableArray *)self->_updatedAnchors removeObjectsInArray:v9];
  [(NSMutableArray *)self->_updatedAnchors addObjectsFromArray:v9];
  dispatch_semaphore_signal(self->_anchorsSemaphore);
}

- (void)session:(id)a3 didRemoveAnchors:(id)a4
{
  anchorsSemaphore = self->_anchorsSemaphore;
  v6 = a4;
  dispatch_semaphore_wait(anchorsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [(NSMutableArray *)self->_addedAnchors removeObjectsInArray:v6];
  [(NSMutableArray *)self->_updatedAnchors removeObjectsInArray:v6];
  [(NSMutableArray *)self->_removedAnchors addObjectsFromArray:v6];

  v7 = self->_anchorsSemaphore;

  dispatch_semaphore_signal(v7);
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ARSCNView_session_didFailWithError___block_invoke;
  block[3] = &unk_278BCD548;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __38__ARSCNView_session_didFailWithError___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) session];
  v3 = [v2 delegate];
  if (v6 == v3)
  {
  }

  else
  {
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return;
    }

    v6 = [*(a1 + 32) delegate];
    [v6 session:*(a1 + 40) didFailWithError:*(a1 + 48)];
  }
}

- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ARSCNView_session_cameraDidChangeTrackingState___block_invoke;
  block[3] = &unk_278BCD548;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __50__ARSCNView_session_cameraDidChangeTrackingState___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) session];
  v3 = [v2 delegate];
  if (v6 == v3)
  {
  }

  else
  {
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return;
    }

    v6 = [*(a1 + 32) delegate];
    [v6 session:*(a1 + 40) cameraDidChangeTrackingState:*(a1 + 48)];
  }
}

- (void)sessionWasInterrupted:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__ARSCNView_sessionWasInterrupted___block_invoke;
  v6[3] = &unk_278BCD520;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __35__ARSCNView_sessionWasInterrupted___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) session];
  v3 = [v2 delegate];
  if (v6 == v3)
  {
  }

  else
  {
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return;
    }

    v6 = [*(a1 + 32) delegate];
    [v6 sessionWasInterrupted:*(a1 + 40)];
  }
}

- (void)sessionInterruptionEnded:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__ARSCNView_sessionInterruptionEnded___block_invoke;
  v6[3] = &unk_278BCD520;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __38__ARSCNView_sessionInterruptionEnded___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) session];
  v3 = [v2 delegate];
  if (v6 == v3)
  {
  }

  else
  {
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return;
    }

    v6 = [*(a1 + 32) delegate];
    [v6 sessionInterruptionEnded:*(a1 + 40)];
  }
}

- (void)sessionShouldAttemptRelocalization:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ARSCNView_sessionShouldAttemptRelocalization_completion___block_invoke;
  block[3] = &unk_278BCD570;
  v11 = v6;
  v12 = v7;
  block[4] = self;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __59__ARSCNView_sessionShouldAttemptRelocalization_completion___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) session];
  v3 = [v2 delegate];
  if (v7 == v3)
  {
  }

  else
  {
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return;
    }

    v6 = *(a1 + 48);
    v7 = [*(a1 + 32) delegate];
    (*(v6 + 16))(v6, [v7 sessionShouldAttemptRelocalization:*(a1 + 40)]);
  }
}

- (void)session:(id)a3 didOutputAudioSampleBuffer:(opaqueCMSampleBuffer *)a4
{
  v6 = a3;
  if (a4)
  {
    CFRetain(a4);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ARSCNView_session_didOutputAudioSampleBuffer___block_invoke;
  block[3] = &unk_278BCD598;
  block[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __48__ARSCNView_session_didOutputAudioSampleBuffer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [*(a1 + 32) session];
  v4 = [v3 delegate];
  v5 = v4;
  if (v2 == v4)
  {
  }

  else
  {
    v6 = [*(a1 + 32) delegate];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }

    v2 = [*(a1 + 32) delegate];
    [v2 session:*(a1 + 40) didOutputAudioSampleBuffer:*(a1 + 48)];
  }

LABEL_6:
  v8 = *(a1 + 48);
  if (v8)
  {

    CFRelease(v8);
  }
}

- (void)session:(id)a3 didChangeGeoTrackingStatus:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ARSCNView_session_didChangeGeoTrackingStatus___block_invoke;
  block[3] = &unk_278BCD548;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __48__ARSCNView_session_didChangeGeoTrackingStatus___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) session];
  v3 = [v2 delegate];
  if (v6 == v3)
  {
  }

  else
  {
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return;
    }

    v6 = [*(a1 + 32) delegate];
    [v6 session:*(a1 + 40) didChangeGeoTrackingStatus:*(a1 + 48)];
  }
}

- (void)session:(id)a3 willRunWithConfiguration:(id)a4
{
  v6 = a4;
  if (([v6 frameSemantics] & 3) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [v6 frameSemantics] & 1;
  }

  [(ARSCNView *)self setRunningWithSegmentation:v5];
  if ([v6 frameSemantics])
  {
    [(ARSCNView *)self setAutomaticallyOccludesVirtualContent:1];
    [(ARSCNView *)self setSegmentationUseEstimatedDepthData:0];
  }

  if ((~[v6 frameSemantics] & 3) == 0)
  {
    [(ARSCNView *)self setAutomaticallyOccludesVirtualContent:1];
    [(ARSCNView *)self setSegmentationUseEstimatedDepthData:1];
  }
}

- (id)_anchorForNode:(id)a3 inFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 scene];
  v9 = [v8 rootNode];

  v10 = MEMORY[0x277CBEB58];
  v11 = [(NSMutableDictionary *)self->_nodesByAnchorIdentifier allValues];
  v12 = [v10 setWithArray:v11];

  v13 = [(NSMutableDictionary *)self->_occlusionGeometryNodesByAnchorIdentifier allValues];
  [v12 addObjectsFromArray:v13];

  v14 = v6;
  v15 = v14;
  v16 = 0;
  v17 = v14;
  if (v14 && v9 != v14)
  {
    v18 = v14;
    while (([v12 containsObject:v18] & 1) == 0)
    {
      v17 = [v18 parentNode];

      v16 = 0;
      if (v17)
      {
        v18 = v17;
        if (v17 != v9)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    v19 = [(NSMutableDictionary *)self->_nodesByAnchorIdentifier allKeysForObject:v18];
    v20 = [v19 firstObject];

    if (!v20)
    {
      v21 = [(NSMutableDictionary *)self->_occlusionGeometryNodesByAnchorIdentifier allKeysForObject:v18];
      v20 = [v21 firstObject];
    }

    v22 = [v7 anchors];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __36__ARSCNView__anchorForNode_inFrame___block_invoke;
    v27[3] = &unk_278BCD4F8;
    v23 = v20;
    v28 = v23;
    v24 = [v22 indexOfObjectPassingTest:v27];

    if (v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = 0;
    }

    else
    {
      v25 = [v7 anchors];
      v16 = [v25 objectAtIndexedSubscript:v24];
    }

    v17 = v18;
  }

LABEL_14:

  return v16;
}

uint64_t __36__ARSCNView__anchorForNode_inFrame___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_hitTest:(CGPoint)a3 frame:(id)a4 types:(unint64_t)a5
{
  if (a4)
  {
    p_viewportSize = &self->_viewportSize;
    height = self->_viewportSize.height;
    v16 = a3.x / self->_viewportSize.width;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    interfaceOrientation = self->_interfaceOrientation;
    v15 = a3.y / height;
    v9 = a4;
    v10 = [v9 camera];
    [v10 imageResolution];
    ARViewToCameraImageTransform(interfaceOrientation, 0, &v17, p_viewportSize->width, p_viewportSize->height, v11, v12);

    v13 = [v9 hitTest:a5 types:{vaddq_f64(v19, vmlaq_n_f64(vmulq_n_f64(v18, v15), v17, v16))}];
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  return v13;
}

- (void)_forceUpdateCamera
{
  v3 = [(ARSCNView *)self currentRenderFrame];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 camera];
    [(ARSCNView *)self _updateCamera:v4];

    v3 = v5;
  }
}

- (void)_updateCamera:(id)a3
{
  v4 = a3;
  if ([(ARSCNView *)self rotationSnapshotState]!= 1)
  {
    interfaceOrientation = self->_interfaceOrientation;
    v6 = [(SCNNode *)self->_cameraNode camera];
    [v6 zNear];
    v8 = v7;
    v9 = [(SCNNode *)self->_cameraNode camera];
    [v9 zFar];
    [v4 projectionMatrixForOrientation:interfaceOrientation viewportSize:self->_viewportSize.width zNear:self->_viewportSize.height zFar:{v8, v10}];
    v45 = v12;
    v47 = v11;
    v42 = v14;
    v43 = v13;

    v15 = [(SCNNode *)self->_cameraNode camera];
    v50 = v47;
    v51 = v45;
    v52 = v43;
    v53 = v42;
    [v15 setProjectionTransform:&v50];

    if ([v4 trackingState])
    {
      v16 = ARCameraToDisplayRotation(self->_interfaceOrientation) * 3.14159265 / 180.0;
      v18 = __sincosf_stret(v16 * 0.5);
      cosval = v18.__cosval;
      _Q0 = vmulq_n_f32(xmmword_23D3DC2D0, v18.__sinval);
      _S2 = _Q0.i32[1];
      _S4 = _Q0.i32[2];
      __asm { FMLS            S3, S4, V0.S[2] }

      v27 = vmuls_lane_f32(v18.__cosval, _Q0, 2);
      v28 = vmuls_lane_f32(v18.__cosval, *_Q0.f32, 1);
      HIDWORD(v29) = 0;
      *&v29 = _S3 + (cosval * cosval);
      *(&v29 + 1) = (v27 + (_Q0.f32[0] * _Q0.f32[1])) + (v27 + (_Q0.f32[0] * _Q0.f32[1]));
      *(&v29 + 2) = -(v28 - (_Q0.f32[0] * _Q0.f32[2])) - (v28 - (_Q0.f32[0] * _Q0.f32[2]));
      v30 = -(v27 - (_Q0.f32[0] * _Q0.f32[1])) - (v27 - (_Q0.f32[0] * _Q0.f32[1]));
      __asm
      {
        FMLA            S5, S2, V0.S[1]
        FMLA            S6, S4, V0.S[1]
      }

      *&v33 = v30;
      *(&v33 + 1) = (_S5 + (cosval * cosval)) - (_Q0.f32[0] * _Q0.f32[0]);
      *(&v33 + 1) = COERCE_UNSIGNED_INT(_S6 + _S6);
      v46 = v33;
      v48 = v29;
      __asm
      {
        FMLA            S5, S4, V0.S[1]
        FMLA            S1, S4, V0.S[2]
        FMLS            S1, S2, V0.S[1]
      }

      _Q0.f32[0] = (v28 + (_Q0.f32[2] * _Q0.f32[0])) + (v28 + (_Q0.f32[2] * _Q0.f32[0]));
      _Q0.f32[1] = _S5 + _S5;
      _Q0.i64[1] = _S1;
      v44 = _Q0;
      [v4 transform];
      v41 = 0;
      v49[0] = v48;
      v49[1] = v46;
      v49[2] = v44;
      v49[3] = xmmword_23D3DC050;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      do
      {
        *(&v50 + v41 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(v49[v41])), v38, *&v49[v41], 1), v39, v49[v41], 2), v40, v49[v41], 3);
        ++v41;
      }

      while (v41 != 4);
      [(SCNNode *)self->_cameraNode setSimdTransform:*&v50, *&v51, *&v52, *&v53];
    }
  }
}

- (void)_updateLighting:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v22 = v4;
    lightNode = self->_lightNode;
    if (!lightNode)
    {
      v6 = [MEMORY[0x277CDBAA8] node];
      v7 = self->_lightNode;
      self->_lightNode = v6;

      v8 = [MEMORY[0x277CDBA88] light];
      [(SCNNode *)self->_lightNode setLight:v8];

      v9 = *MEMORY[0x277CDBB88];
      v10 = [(SCNNode *)self->_lightNode light];
      [v10 setType:v9];

      [(SCNNode *)self->_lightNode setPosition:0.0, 0.0, 0.0];
      v11 = [(ARSCNView *)self scene];
      v12 = [v11 rootNode];
      [v12 addChildNode:self->_lightNode];

      lightNode = self->_lightNode;
    }

    v13 = [(SCNNode *)lightNode light];
    v14 = [v22 sphericalHarmonicsCoefficients];
    [v13 set_sphericalHarmonics:v14];

    v15 = [(ARSCNView *)self scene];
    v16 = [v15 lightingEnvironment];
    v17 = [v16 contents];

    v4 = v22;
    if (v17)
    {
      [v22 ambientIntensity];
      v19 = v18 / 1000.0;
      v20 = [(ARSCNView *)self scene];
      v21 = [v20 lightingEnvironment];
      [v21 setIntensity:v19];

      v4 = v22;
    }
  }
}

- (void)_updateProbesWithFrame:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 renderFramesPerSecond];
  v6 = [v4 lightEstimate];
  v58 = v4;
  if (v6)
  {
    v7 = [v4 lightEstimate];
    [v7 ambientIntensity];
    *&v8 = v8;
    v9 = *&v8;
  }

  else
  {
    v9 = 1000.0;
  }

  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v57 = objc_opt_new();
  v10 = self->_environmentProbeNodes;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 1.0 / v5;
    v14 = *v64;
    v15 = v13;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v64 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v63 + 1) + 8 * i);
        v18 = [v17 light];

        if (v18)
        {
          v19 = [(ARSCNView *)self anchorForNode:v17];

          if (v19)
          {
            v20 = [v17 light];
            v21 = [v20 probeEnvironment];
            if (v21)
            {
              v22 = v21;
              [v17 light];
              v24 = v23 = v10;
              v25 = [v24 probeEnvironment];
              [v25 intensity];
              v27 = v26;

              v10 = v23;
              if (v27 < 1.0)
              {
                v28 = [v17 light];
                v29 = [v28 probeEnvironment];
                [v29 intensity];
                [v29 setIntensity:v30 + v15];
              }

              goto LABEL_21;
            }
          }

          else
          {
            v31 = [v17 valueForKey:@"timestamp"];

            if (!v31)
            {
              v32 = MEMORY[0x277CCABB0];
              [v58 timestamp];
              v33 = [v32 numberWithDouble:?];
              [v17 setValue:v33 forKey:@"timestamp"];
            }

            v34 = [v17 valueForKey:@"timestamp"];
            [v34 doubleValue];
            v36 = v35;

            v20 = [v17 light];
            v37 = [v20 probeEnvironment];
            if (v37)
            {
              v38 = v37;
              v39 = v36 + 1.0;
              [v58 timestamp];
              v41 = v40;

              if (v39 < v41)
              {
                v42 = [v17 light];
                v43 = [v42 probeEnvironment];
                [v43 intensity];
                [v43 setIntensity:v44 - v15];

                v45 = [v17 light];
                v46 = [v45 probeEnvironment];
                [v46 intensity];
                v48 = v47;

                if (v48 <= 0.0)
                {
                  [v57 addObject:v17];
                }
              }

              goto LABEL_21;
            }
          }

LABEL_21:
          if ([(ARSCNView *)self automaticallyUpdatesLighting])
          {
            v49 = [v17 light];
            [v49 setIntensity:v9];
          }

          continue;
        }
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v63 objects:v68 count:16];
    }

    while (v12);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v50 = v57;
  v51 = [v50 countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v60;
    do
    {
      for (j = 0; j != v52; ++j)
      {
        if (*v60 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v59 + 1) + 8 * j);
        [(NSMutableArray *)self->_environmentProbeNodes removeObject:v55];
        [(NSMutableArray *)self->_environmentProbeNodesToRemove addObject:v55];
      }

      v52 = [v50 countByEnumeratingWithState:&v59 objects:v67 count:16];
    }

    while (v52);
  }

  v56 = *MEMORY[0x277D85DE8];
}

- (void)_addAnchors:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_opt_new();
    dispatch_semaphore_wait(self->_nodesSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v35 = v4;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v39;
      v9 = 0x27E2BD000uLL;
      do
      {
        v10 = 0;
        v36 = v7;
        do
        {
          if (*v39 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v38 + 1) + 8 * v10);
          v12 = *(v9 + 960);
          v13 = *(&self->super.super.super.super.isa + v12);
          v14 = [v11 identifier];
          v15 = [v13 objectForKeyedSubscript:v14];

          if (!v15)
          {
            v16 = [(ARSCNView *)self delegate];
            v17 = objc_opt_respondsToSelector();

            if (v17)
            {
              kdebug_trace();
              v18 = [(ARSCNView *)self delegate];
              v15 = [v18 renderer:self nodeForAnchor:v11];

              kdebug_trace();
              if (!v15)
              {
                v15 = [MEMORY[0x277CBEB68] null];
                goto LABEL_15;
              }
            }

            else
            {
              v15 = [MEMORY[0x277CDBAA8] node];
            }

            v19 = [(ARSCNView *)self scene];
            [v19 rootNode];
            v20 = v8;
            v21 = v5;
            v23 = v22 = v9;
            [v23 addChildNode:v15];

            v24 = *(&self->super.super.super.super.isa + v12);
            v25 = [v11 identifier];
            [v24 setObject:v15 forKeyedSubscript:v25];

            v9 = v22;
            v5 = v21;
            v8 = v20;
            v7 = v36;
          }

          if ([(ARSCNView *)self providesOcclusionGeometry])
          {
            [(ARSCNView *)self _addOcclusionGeometryForAnchor:v11];
          }

LABEL_15:
          [v5 addObject:v15];

          ++v10;
        }

        while (v7 != v10);
        v7 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v7);
    }

    dispatch_semaphore_signal(self->_nodesSemaphore);
    v26 = [(ARSCNView *)self delegate];
    v27 = objc_opt_respondsToSelector();

    if ((v27 & 1) != 0 && [v5 count])
    {
      v28 = 0;
      do
      {
        v29 = [v5 objectAtIndexedSubscript:v28];
        v30 = [MEMORY[0x277CBEB68] null];
        v31 = [v29 isEqual:v30];

        if ((v31 & 1) == 0)
        {
          kdebug_trace();
          v32 = [(ARSCNView *)self delegate];
          v33 = [obj objectAtIndexedSubscript:v28];
          [v32 renderer:self didAddNode:v29 forAnchor:v33];

          kdebug_trace();
        }

        ++v28;
      }

      while (v28 < [v5 count]);
    }

    v4 = v35;
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_updateAnchors:(id)a3 frame:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  obj = a3;
  v25 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        nodesByAnchorIdentifier = self->_nodesByAnchorIdentifier;
        v12 = [v10 identifier];
        v13 = [(NSMutableDictionary *)nodesByAnchorIdentifier objectForKeyedSubscript:v12];

        if ([(ARSCNView *)self providesOcclusionGeometry])
        {
          occlusionGeometryNodesByAnchorIdentifier = self->_occlusionGeometryNodesByAnchorIdentifier;
          v15 = [v10 identifier];
          v16 = [(NSMutableDictionary *)occlusionGeometryNodesByAnchorIdentifier objectForKeyedSubscript:v15];

          if (!v13)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v16 = 0;
          if (!v13)
          {
            goto LABEL_12;
          }
        }

        v17 = [(ARSCNView *)self delegate];
        v18 = objc_opt_respondsToSelector();

        if (v18)
        {
          kdebug_trace();
          v19 = [(ARSCNView *)self delegate];
          [v19 renderer:self willUpdateNode:v13 forAnchor:v10];

          kdebug_trace();
        }

LABEL_12:
        if (v16)
        {
          [v16 setCategoryBitMask:{objc_msgSend(v16, "categoryBitMask") | 0x40000000}];
          [v10 transform];
          [v16 setSimdTransform:?];
        }

        if (v13)
        {
          [(ARSCNView *)self _updateNode:v13 forAnchor:v10 frame:v25];
          v20 = [(ARSCNView *)self delegate];
          v21 = objc_opt_respondsToSelector();

          if (v21)
          {
            kdebug_trace();
            v22 = [(ARSCNView *)self delegate];
            [v22 renderer:self didUpdateNode:v13 forAnchor:v10];

            kdebug_trace();
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_updateNode:(id)a3 forAnchor:(id)a4 frame:(id)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 environmentTexture];

    if (v9)
    {
      v10 = [v7 light];
      v11 = [v10 probeEnvironment];
      v12 = [v11 contents];
      v13 = [v8 environmentTexture];

      v14 = [v7 light];
      v15 = [v14 probeEnvironment];
      v16 = [v15 contents];

      if (v16 && v12 != v13)
      {
        v17 = [v7 clone];
        v18 = [(ARSCNView *)self scene];
        v19 = [v18 rootNode];
        [v19 addChildNode:v17];

        [(NSMutableArray *)self->_environmentProbeNodes addObject:v17];
      }

      if (v12 != v13)
      {
        v20 = v8;
        v21 = objc_opt_new();
        [v21 setType:*MEMORY[0x277CDBB88]];
        [v21 setProbeType:1];
        [v7 setLight:v21];
        if (([(NSMutableArray *)self->_environmentProbeNodes containsObject:v7]& 1) == 0)
        {
          [(NSMutableArray *)self->_environmentProbeNodes addObject:v7];
        }

        [v20 extent];
        if (fabsf(v22) == INFINITY || ([v20 extent], fabsf(v23) == INFINITY))
        {
          v25 = 0;
        }

        else
        {
          [v20 extent];
          v25 = fabsf(v24) != INFINITY;
        }

        v26 = [v7 light];
        [v26 setParallaxCorrectionEnabled:v25];

        [v20 extent];
        v44 = v27;
        v28 = [v7 light];
        [v28 setProbeExtents:v44];

        v29 = [v7 light];
        [v29 setParallaxCenterOffset:-0.000000381469818];

        v30 = [v7 light];
        [v30 setParallaxExtentsFactor:*vdupq_n_s32(0x3FA66666u).i64];

        v31 = [v20 environmentTexture];
        v32 = [v7 light];
        v33 = [v32 probeEnvironment];
        [v33 setContents:v31];

        v34 = [v7 light];
        v35 = [v34 probeEnvironment];
        [v35 setIntensity:0.0];

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v36 = self->_environmentProbeNodesToRemove;
        v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v46;
          do
          {
            for (i = 0; i != v38; ++i)
            {
              if (*v46 != v39)
              {
                objc_enumerationMutation(v36);
              }

              [*(*(&v45 + 1) + 8 * i) removeFromParentNode];
            }

            v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v45 objects:v49 count:16];
          }

          while (v38);
        }

        [(NSMutableArray *)self->_environmentProbeNodesToRemove removeAllObjects];
      }
    }
  }

  [v8 transform];
  [v7 setSimdTransform:?];
  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = v8;
      if ([v41 isDetectionOnly])
      {
        v42 = [v7 isHidden];
      }

      else
      {
        v42 = [v41 isTracked] ^ 1;
      }

      [v7 setHidden:v42];
    }

    else
    {
      [v7 setHidden:{objc_msgSend(v8, "isTracked") ^ 1}];
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)_removeAnchors:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_opt_new();
    dispatch_semaphore_wait(self->_nodesSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v31 = v4;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v34;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v34 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v33 + 1) + 8 * i);
          if ([(ARSCNView *)self providesOcclusionGeometry])
          {
            occlusionGeometryNodesByAnchorIdentifier = self->_occlusionGeometryNodesByAnchorIdentifier;
            v12 = [v10 identifier];
            v13 = [(NSMutableDictionary *)occlusionGeometryNodesByAnchorIdentifier objectForKeyedSubscript:v12];

            if (v13)
            {
              [v13 removeFromParentNode];
              v14 = self->_occlusionGeometryNodesByAnchorIdentifier;
              v15 = [v10 identifier];
              [(NSMutableDictionary *)v14 removeObjectForKey:v15];
            }
          }

          nodesByAnchorIdentifier = self->_nodesByAnchorIdentifier;
          v17 = [v10 identifier];
          v18 = [(NSMutableDictionary *)nodesByAnchorIdentifier objectForKeyedSubscript:v17];

          if (v18)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ([(NSMutableArray *)self->_environmentProbeNodes containsObject:v18]& 1) == 0)
            {
              [v18 removeFromParentNode];
            }

            v19 = self->_nodesByAnchorIdentifier;
            v20 = [v10 identifier];
            [(NSMutableDictionary *)v19 removeObjectForKey:v20];

            [v5 addObject:v18];
          }

          else
          {
            v21 = [MEMORY[0x277CBEB68] null];
            [v5 addObject:v21];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v7);
    }

    dispatch_semaphore_signal(self->_nodesSemaphore);
    v22 = [(ARSCNView *)self delegate];
    v23 = objc_opt_respondsToSelector();

    if ((v23 & 1) != 0 && [v5 count])
    {
      v24 = 0;
      do
      {
        v25 = [v5 objectAtIndexedSubscript:v24];
        v26 = [MEMORY[0x277CBEB68] null];
        v27 = [v25 isEqual:v26];

        if ((v27 & 1) == 0)
        {
          kdebug_trace();
          v28 = [(ARSCNView *)self delegate];
          v29 = [obj objectAtIndexedSubscript:v24];
          [v28 renderer:self didRemoveNode:v25 forAnchor:v29];

          kdebug_trace();
        }

        ++v24;
      }

      while (v24 < [v5 count]);
    }

    v4 = v31;
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_addOcclusionGeometryForAnchor:(id)a3
{
  v4 = a3;
  occlusionGeometryNodesByAnchorIdentifier = self->_occlusionGeometryNodesByAnchorIdentifier;
  v15 = v4;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)occlusionGeometryNodesByAnchorIdentifier objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = [(ARSCNView *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      kdebug_trace();
      v10 = [(ARSCNView *)self delegate];
      v7 = [v10 renderer:self occlusionGeometryNodeForAnchor:v15];

      kdebug_trace();
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = [MEMORY[0x277CDBAA8] node];
    }

    v11 = [(ARSCNView *)self scene];
    v12 = [v11 rootNode];
    [v12 addChildNode:v7];

    v13 = self->_occlusionGeometryNodesByAnchorIdentifier;
    v14 = [v15 identifier];
    [(NSMutableDictionary *)v13 setObject:v7 forKeyedSubscript:v14];
  }

LABEL_7:
}

- (void)_updateDebugVisualization:(id)a3
{
  v25 = a3;
  worldOriginNode = self->_worldOriginNode;
  if (self->_arDebugOptions >> 31)
  {
    if (!worldOriginNode)
    {
      v5 = [ARSCNVisualizationHelper createAxesNode:0.200000003];
      v6 = self->_worldOriginNode;
      self->_worldOriginNode = v5;

      [(SCNNode *)self->_worldOriginNode setCastsShadow:0];
    }

    v7 = [(ARSCNView *)self scene];
    v8 = [v7 rootNode];
    [v8 addChildNode:self->_worldOriginNode];
  }

  else
  {
    [(SCNNode *)worldOriginNode removeFromParentNode];
  }

  featurePointNode = self->_featurePointNode;
  if ((self->_arDebugOptions & 0x40000000) == 0)
  {
    [(SCNNode *)featurePointNode removeFromParentNode];
    currentlyVisibleDebugPointerCloud = self->_currentlyVisibleDebugPointerCloud;
    self->_currentlyVisibleDebugPointerCloud = 0;
LABEL_14:

    goto LABEL_15;
  }

  v11 = v25;
  if (!featurePointNode)
  {
    v12 = objc_opt_new();
    v13 = self->_featurePointNode;
    self->_featurePointNode = v12;

    [(SCNNode *)self->_featurePointNode setCastsShadow:0];
    v11 = v25;
  }

  v14 = self->_currentlyVisibleDebugPointerCloud;
  v15 = [v11 featurePoints];

  if (v14 != v15)
  {
    v16 = [v25 featurePoints];
    v17 = [ARSCNVisualizationHelper createGeometryForPointCloud:v16];
    [(SCNNode *)self->_featurePointNode setGeometry:v17];

    v18 = [v25 featurePoints];
    v19 = self->_currentlyVisibleDebugPointerCloud;
    self->_currentlyVisibleDebugPointerCloud = v18;
  }

  v20 = [(SCNNode *)self->_featurePointNode parentNode];

  if (!v20)
  {
    currentlyVisibleDebugPointerCloud = [(ARSCNView *)self scene];
    v21 = [currentlyVisibleDebugPointerCloud rootNode];
    [v21 addChildNode:self->_featurePointNode];

    goto LABEL_14;
  }

LABEL_15:
  compositor = self->_compositor;
  if (compositor)
  {
    v23 = [(ARSCNCompositor *)compositor showOcclusionGeometry];
    v24 = self->_arDebugOptions & 0x20000000;
    if (v24 != v23)
    {
      self->_arDebugOptions;
      [(ARSCNCompositor *)self->_compositor setShowOcclusionGeometry:v24 != 0];
    }
  }
}

- (void)_updateOcclusionCompositor
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(ARSession *)self->_session configuration];
  v4 = [v3 disableOcclusionForPersonSegmentation];

  if (v4)
  {
LABEL_2:
    compositor = self->_compositor;
    self->_compositor = 0;
    v6 = *MEMORY[0x277D85DE8];

    return;
  }

  v7 = self->_compositorAlgorithm == 1;
  v8 = [(ARSession *)self->_session configuration];
  v9 = ~[v8 frameSemantics] & 3;

  if (v9)
  {
    v11 = [(ARSession *)self->_session configuration];
    v12 = [v11 frameSemantics];

    if ((v12 & 1) == 0)
    {
      goto LABEL_2;
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  if ([(ARSCNCompositor *)self->_compositor compositorAlgorithm]!= v7 || v10 != [(ARSCNCompositor *)self->_compositor mode])
  {
    v13 = self->_compositor;
    self->_compositor = 0;
  }

  if (!self->_compositor)
  {
    v14 = _ARLogGeneral_0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v20 = 138544130;
      v21 = v16;
      v22 = 2048;
      v23 = self;
      v24 = 2048;
      v25 = v10;
      v26 = 2048;
      v27 = v7;
      _os_log_impl(&dword_23D3AE000, v14, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Setting up ARSCNCompositor (%li, %li)", &v20, 0x2Au);
    }

    v17 = [[ARSCNCompositor alloc] initWithView:self mode:v10 algorithm:v7];
    v18 = self->_compositor;
    self->_compositor = v17;
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setCompositorAlgorithm:(int64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__ARSCNView_setCompositorAlgorithm___block_invoke;
  v8[3] = &unk_278BCD5E8;
  v8[4] = self;
  v8[5] = a3;
  dispatch_async(MEMORY[0x277D85CD0], v8);
  v4 = _ARLogGeneral_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543618;
    v10 = v6;
    v11 = 2048;
    v12 = self;
    _os_log_impl(&dword_23D3AE000, v4, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Called set algorithm", buf, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __36__ARSCNView_setCompositorAlgorithm___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 840));
  *(*(a1 + 32) + 944) = *(a1 + 40);
  [*(a1 + 32) _updateOcclusionCompositor];
  v2 = (*(a1 + 32) + 840);

  os_unfair_lock_unlock(v2);
}

- (void)setActualPreferredFramesPerSecond:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = ARSCNView;
  [(ARSCNView *)&v3 setPreferredFramesPerSecond:a3];
}

- (int64_t)actualPreferredFramesPerSecond
{
  v3.receiver = self;
  v3.super_class = ARSCNView;
  return [(ARSCNView *)&v3 preferredFramesPerSecond];
}

- (void)_updatePreferredFramesPerSecond
{
  if ([(ARSCNView *)self developerPreferredFramesPerSecond]< 0 || [(ARSCNView *)self shouldRestrictFrameRate])
  {
    v3 = [(ARSCNView *)self targetFramesPerSecond];
  }

  else
  {
    v3 = [(ARSCNView *)self developerPreferredFramesPerSecond];
  }

  v4 = v3;
  v6.receiver = self;
  v6.super_class = ARSCNView;
  if (v3 != [(ARSCNView *)&v6 preferredFramesPerSecond])
  {
    v5.receiver = self;
    v5.super_class = ARSCNView;
    [(ARSCNView *)&v5 setPreferredFramesPerSecond:v4];
  }
}

- (void)didMoveToWindow
{
  v11.receiver = self;
  v11.super_class = ARSCNView;
  [(ARSCNView *)&v11 didMoveToWindow];
  if (didMoveToWindow_onceToken != -1)
  {
    [ARSCNView didMoveToWindow];
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D772D8];
  [v3 removeObserver:self name:*MEMORY[0x277D772D8] object:0];
  v5 = *MEMORY[0x277D772D0];
  [v3 removeObserver:self name:*MEMORY[0x277D772D0] object:0];
  v6 = *MEMORY[0x277D772A0];
  [v3 removeObserver:self name:*MEMORY[0x277D772A0] object:0];
  v7 = [(ARSCNView *)self window];

  if (v7)
  {
    v8 = [(ARSCNView *)self window];
    [v3 addObserver:self selector:sel_windowWillRotateNotification_ name:v4 object:v8];

    v9 = [(ARSCNView *)self window];
    [v3 addObserver:self selector:sel_windowWillAnimateRotateNotification_ name:v5 object:v9];

    v10 = [(ARSCNView *)self window];
    [v3 addObserver:self selector:sel_windowDidRotateNotification_ name:v6 object:v10];
  }

  else
  {
    [(ARSCNView *)self cleanupLingeringRotationState];
  }
}

void __28__ARSCNView_didMoveToWindow__block_invoke()
{
  _alwaysRotateCounterclockwise = 0;
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    _alwaysRotateCounterclockwise = 1;
    v2 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v2 objectForInfoDictionaryKey:@"UIRequiresFullScreen"];

    v3 = v6;
    if (v6)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v3 = v6;
      if (isKindOfClass)
      {
        v5 = [v6 BOOLValue];
        v3 = v6;
        if (v5)
        {
          _alwaysRotateCounterclockwise = 0;
        }
      }
    }
  }
}

- (void)windowWillRotateNotification:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v6 = [(ARSCNView *)self window];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    kdebug_trace();
    v8 = [v4 userInfo];
    v9 = [v8 objectForKey:*MEMORY[0x277D772C0]];

    self->_lastInterfaceOrientation = self->_interfaceOrientation;
    self->_interfaceOrientation = [v9 integerValue];
    [(ARSCNView *)self transform];
    if (CGAffineTransformIsIdentity(&v21))
    {
      v10 = _ARLogGeneral_0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        LODWORD(v21.a) = 138543618;
        *(&v21.a + 4) = v12;
        WORD2(v21.b) = 2048;
        *(&v21.b + 6) = self;
        _os_log_impl(&dword_23D3AE000, v10, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: ARSCNViewRotationSnapshotStateSettingUp", &v21, 0x16u);
      }

      [(ARSCNView *)self setRotationSnapshotState:1];
      v13 = [(ARSCNView *)self snapshotViewAfterScreenUpdates:0];
      rotationSnapshot = self->_rotationSnapshot;
      self->_rotationSnapshot = v13;

      [(UIView *)self->_rotationSnapshot setAutoresizingMask:45];
      [(UIView *)self->_rotationSnapshot setUserInteractionEnabled:0];
      [(ARSCNView *)self bounds];
      [(UIView *)self->_rotationSnapshot setFrame:?];
      [(ARSCNView *)self addSubview:self->_rotationSnapshot];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __42__ARSCNView_windowWillRotateNotification___block_invoke;
      v20[3] = &unk_278BCD4A8;
      v20[4] = self;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __42__ARSCNView_windowWillRotateNotification___block_invoke_2;
      v19[3] = &unk_278BCD638;
      v19[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:50332162 delay:v20 options:v19 animations:0.02 completion:0.0];
    }

    else
    {
      v15 = [(ARSCNView *)self renderer];
      [v15 _setInterfaceOrientation:self->_interfaceOrientation];

      interfaceOrientation = self->_interfaceOrientation;
      v17 = [(ARSCNView *)self compositor];
      [v17 setCurrentOrientation:interfaceOrientation];
    }

    kdebug_trace();
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __42__ARSCNView_windowWillRotateNotification___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = _ARLogGeneral_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = *(a1 + 32);
    v13 = 138543618;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_23D3AE000, v2, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: ARSCNViewRotationSnapshotStateSetUp", &v13, 0x16u);
  }

  [*(a1 + 32) setRotationSnapshotState:2];
  [*(a1 + 32) _forceUpdateCamera];
  [*(a1 + 32) _updateBackingSize];
  v7 = [*(a1 + 32) renderer];
  [v7 _setInterfaceOrientation:*(*(a1 + 32) + 752)];

  v8 = *(a1 + 32);
  v9 = v8[94];
  v10 = [v8 compositor];
  [v10 setCurrentOrientation:v9];

  result = [*(a1 + 32) setFrameToRemoveRotationSnapshotOn:0];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)windowWillAnimateRotateNotification:(id)a3
{
  v4 = [a3 object];
  v5 = [(ARSCNView *)self window];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    kdebug_trace();
    v7 = ARCameraToDisplayRotation(self->_lastInterfaceOrientation);
    v8 = ARCameraToDisplayRotation(self->_interfaceOrientation);
    if (self->_rotationSnapshot)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __49__ARSCNView_windowWillAnimateRotateNotification___block_invoke;
      v12[3] = &unk_278BCD660;
      v12[5] = v8;
      v12[6] = v7;
      v12[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v12];
      v9 = MEMORY[0x277D75D18];
      v10 = [MEMORY[0x277D75128] sharedApplication];
      [v10 windowRotationDuration];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __49__ARSCNView_windowWillAnimateRotateNotification___block_invoke_2;
      v11[3] = &unk_278BCD4A8;
      v11[4] = self;
      [v9 animateWithDuration:2 delay:v11 options:0 animations:? completion:?];
    }

    kdebug_trace();
  }
}

uint64_t __49__ARSCNView_windowWillAnimateRotateNotification___block_invoke(void *a1)
{
  v2 = (a1[5] - a1[6]) * 3.14159265 / 180.0;
  if (v2 > 3.14159253 && v2 < 3.14159277 || v2 > -3.14159277 && v2 < -3.14159253)
  {
    v3 = 1.0;
    if (_alwaysRotateCounterclockwise == 1)
    {
      v4 = *(a1[4] + 760);
      v5 = v4 == 4 || v4 == 1;
      v3 = -1.0;
      if (v5)
      {
        v3 = 1.0;
      }
    }

    v2 = v2 + v3 * 0.000000238418579;
  }

  CGAffineTransformMakeRotation(&v11, -v2);
  v6 = a1[4];
  v10 = v11;
  [v6 setTransform:&v10];
  CGAffineTransformMakeRotation(&v9, v2);
  v7 = *(a1[4] + 792);
  v10 = v9;
  return [v7 setTransform:&v10];
}

uint64_t __49__ARSCNView_windowWillAnimateRotateNotification___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

- (void)windowDidRotateNotification:(id)a3
{
  v6 = [a3 object];
  v4 = [(ARSCNView *)self window];
  if ([v6 isEqual:v4])
  {
    rotationSnapshot = self->_rotationSnapshot;

    if (rotationSnapshot)
    {

      [(ARSCNView *)self cleanupLingeringRotationState];
    }
  }

  else
  {
  }
}

- (void)cleanupLingeringRotationState
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __42__ARSCNView_cleanupLingeringRotationState__block_invoke;
  v2[3] = &unk_278BCD4A8;
  v2[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v2];
}

uint64_t __42__ARSCNView_cleanupLingeringRotationState__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setRotationSnapshotState:0];
  [*(*(a1 + 32) + 792) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 792);
  *(v2 + 792) = 0;

  v4 = *(a1 + 32);
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  v7[0] = *MEMORY[0x277CBF2C0];
  v7[1] = v5;
  v7[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v4 setTransform:v7];
}

- (void)_updateBackingSize
{
  if ([(ARSCNView *)self rotationSnapshotState]!= 1)
  {
    v3.receiver = self;
    v3.super_class = ARSCNView;
    [(ARSCNView *)&v3 _updateBackingSize];
  }
}

@end