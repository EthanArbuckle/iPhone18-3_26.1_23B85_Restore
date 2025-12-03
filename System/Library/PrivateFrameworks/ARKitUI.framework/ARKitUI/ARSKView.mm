@interface ARSKView
- (ARAnchor)anchorForNode:(SKNode *)node;
- (ARSKView)initWithCoder:(id)coder;
- (ARSKView)initWithFrame:(CGRect)frame;
- (ARSession)session;
- (NSArray)hitTest:(CGPoint)point types:(ARHitTestResultType)types;
- (SKNode)nodeForAnchor:(ARAnchor *)anchor;
- (id)_anchorForNode:(id)node inFrame:(id)frame;
- (void)_updateAnchors:(id)anchors camera:(id)camera;
- (void)_updateNode:(float32x4_t)node forAnchor:(float32x4_t)anchor projectionMatrix:(float32x4_t)matrix camera:(uint64_t)camera orientation:(void *)orientation;
- (void)commonInit;
- (void)dealloc;
- (void)layoutSubviews;
- (void)session:(id)session cameraDidChangeTrackingState:(id)state;
- (void)session:(id)session didChangeGeoTrackingStatus:(id)status;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didOutputAudioSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)session:(id)session didUpdateFrame:(id)frame;
- (void)sessionInterruptionEnded:(id)ended;
- (void)sessionShouldAttemptRelocalization:(id)relocalization completion:(id)completion;
- (void)sessionWasInterrupted:(id)interrupted;
- (void)setSession:(ARSession *)session;
@end

@implementation ARSKView

- (ARSKView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ARSKView;
  v3 = [(SKView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(ARSKView *)v3 commonInit];
  }

  return v4;
}

- (ARSKView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ARSKView;
  v3 = [(SKView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ARSKView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = objc_opt_new();
  nodesByAnchorIdentifier = self->_nodesByAnchorIdentifier;
  self->_nodesByAnchorIdentifier = v3;

  v5 = objc_opt_new();
  lastFrameAnchors = self->_lastFrameAnchors;
  self->_lastFrameAnchors = v5;

  [(ARSKView *)self bounds];
  self->_viewportSize.width = v7;
  self->_viewportSize.height = v8;
  [(SKView *)self setAllowsTransparency:1];
  [(SKView *)self setIgnoresSiblingOrder:1];
  v9 = MEMORY[0x277CE5370];

  [v9 setRenderType:3];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ARSKView;
  [(SKView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v23 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v14.receiver = self;
  v14.super_class = ARSKView;
  [(SKView *)&v14 layoutSubviews];
  kdebug_trace();
  window = [(ARSKView *)self window];
  windowScene = [window windowScene];
  self->_interfaceOrientation = [windowScene interfaceOrientation];

  [(ARSKView *)self bounds];
  self->_viewportSize.width = v5;
  self->_viewportSize.height = v6;
  if (_ARLogGeneral_onceToken_0 != -1)
  {
    [ARSKView layoutSubviews];
  }

  v7 = _ARLogGeneral_logObj_0;
  if (os_log_type_enabled(_ARLogGeneral_logObj_0, OS_LOG_TYPE_DEBUG))
  {
    v8 = v7;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [(ARSKView *)self bounds];
    v11 = NSStringFromCGRect(v24);
    v12 = NSStringFromUIInterfaceOrientation(self->_interfaceOrientation);
    *buf = 138544130;
    v16 = v10;
    v17 = 2048;
    selfCopy = self;
    v19 = 2114;
    v20 = v11;
    v21 = 2114;
    v22 = v12;
    _os_log_impl(&dword_23D3AE000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: [ARSKView] Layout changed to %{public}@, %{public}@", buf, 0x2Au);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (ARSession)session
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  session = selfCopy->_session;
  if (!session)
  {
    v4 = objc_opt_new();
    v5 = selfCopy->_session;
    selfCopy->_session = v4;

    [(ARSession *)selfCopy->_session _addObserver:selfCopy];
    session = selfCopy->_session;
  }

  v6 = session;
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)setSession:(ARSession *)session
{
  v7 = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = selfCopy->_session;
  if (v6 != v7)
  {
    [(ARSession *)v6 _removeObserver:selfCopy];
    objc_storeStrong(&selfCopy->_session, session);
    [(ARSession *)selfCopy->_session _addObserver:selfCopy];
  }

  objc_sync_exit(selfCopy);
}

- (NSArray)hitTest:(CGPoint)point types:(ARHitTestResultType)types
{
  y = point.y;
  x = point.x;
  currentFrame = [(ARSession *)self->_session currentFrame];
  v9 = currentFrame;
  if (currentFrame)
  {
    p_viewportSize = &self->_viewportSize;
    height = self->_viewportSize.height;
    v19 = x / self->_viewportSize.width;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    interfaceOrientation = self->_interfaceOrientation;
    v18 = y / height;
    camera = [currentFrame camera];
    [camera imageResolution];
    ARViewToCameraImageTransform(interfaceOrientation, 0, &v20, p_viewportSize->width, p_viewportSize->height, v14, v15);

    v16 = [v9 hitTest:types types:{vaddq_f64(v22, vmlaq_n_f64(vmulq_n_f64(v21, v18), v20, v19))}];
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  return v16;
}

- (ARAnchor)anchorForNode:(SKNode *)node
{
  session = self->_session;
  v5 = node;
  currentFrame = [(ARSession *)session currentFrame];
  v7 = [(ARSKView *)self _anchorForNode:v5 inFrame:currentFrame];

  return v7;
}

- (SKNode)nodeForAnchor:(ARAnchor *)anchor
{
  nodesByAnchorIdentifier = self->_nodesByAnchorIdentifier;
  identifier = [(ARAnchor *)anchor identifier];
  v5 = [(NSMutableDictionary *)nodesByAnchorIdentifier objectForKeyedSubscript:identifier];

  return v5;
}

- (id)_anchorForNode:(id)node inFrame:(id)frame
{
  nodeCopy = node;
  frameCopy = frame;
  v8 = MEMORY[0x277CBEB98];
  allValues = [(NSMutableDictionary *)self->_nodesByAnchorIdentifier allValues];
  v10 = [v8 setWithArray:allValues];

  scene = [nodeCopy scene];
  v12 = nodeCopy;
  v13 = v12;
  v14 = 0;
  parent = v12;
  if (v12 && scene != v12)
  {
    v16 = v12;
    while (([v10 containsObject:v16] & 1) == 0)
    {
      parent = [v16 parent];

      v14 = 0;
      if (parent)
      {
        v16 = parent;
        if (parent != scene)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    v17 = [(NSMutableDictionary *)self->_nodesByAnchorIdentifier allKeysForObject:v16];
    firstObject = [v17 firstObject];

    anchors = [frameCopy anchors];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __35__ARSKView__anchorForNode_inFrame___block_invoke;
    v24[3] = &unk_278BCD4F8;
    v20 = firstObject;
    v25 = v20;
    v21 = [anchors indexOfObjectPassingTest:v24];

    if (v21 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0;
    }

    else
    {
      anchors2 = [frameCopy anchors];
      v14 = [anchors2 objectAtIndexedSubscript:v21];
    }

    parent = v16;
  }

LABEL_12:

  return v14;
}

uint64_t __35__ARSKView__anchorForNode_inFrame___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)_updateAnchors:(id)anchors camera:(id)camera
{
  v87 = *MEMORY[0x277D85DE8];
  anchorsCopy = anchors;
  cameraCopy = camera;
  v61 = anchorsCopy;
  v7 = [MEMORY[0x277CBEB98] setWithArray:anchorsCopy];
  v8 = [(NSSet *)self->_lastFrameAnchors mutableCopy];
  [v8 minusSet:v7];
  v69 = [v7 mutableCopy];
  [v69 minusSet:self->_lastFrameAnchors];
  v60 = v7;
  objc_storeStrong(&self->_lastFrameAnchors, v7);
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v80 objects:v86 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v81;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v81 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v80 + 1) + 8 * i);
        nodesByAnchorIdentifier = self->_nodesByAnchorIdentifier;
        identifier = [v13 identifier];
        v16 = [(NSMutableDictionary *)nodesByAnchorIdentifier objectForKeyedSubscript:identifier];

        if (v16)
        {
          [v16 removeFromParent];
          v17 = self->_nodesByAnchorIdentifier;
          identifier2 = [v13 identifier];
          [(NSMutableDictionary *)v17 removeObjectForKey:identifier2];

          delegate = [(SKView *)self delegate];
          LOBYTE(identifier2) = objc_opt_respondsToSelector();

          if (identifier2)
          {
            delegate2 = [(SKView *)self delegate];
            [delegate2 view:self didRemoveNode:v16 forAnchor:v13];
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v80 objects:v86 count:16];
    }

    while (v10);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v63 = v69;
  v21 = [v63 countByEnumeratingWithState:&v76 objects:v85 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v77;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v77 != v23)
        {
          objc_enumerationMutation(v63);
        }

        v25 = *(*(&v76 + 1) + 8 * j);
        v26 = self->_nodesByAnchorIdentifier;
        identifier3 = [v25 identifier];
        node = [(NSMutableDictionary *)v26 objectForKeyedSubscript:identifier3];

        if (!node)
        {
          delegate3 = [(SKView *)self delegate];
          v30 = objc_opt_respondsToSelector();

          if (v30)
          {
            delegate4 = [(SKView *)self delegate];
            node = [delegate4 view:self nodeForAnchor:v25];

            if (!node)
            {
              goto LABEL_24;
            }
          }

          else
          {
            node = [MEMORY[0x277CDCF58] node];
          }

          scene = [(SKView *)self scene];
          [scene addChild:node];

          v33 = self->_nodesByAnchorIdentifier;
          identifier4 = [v25 identifier];
          [(NSMutableDictionary *)v33 setObject:node forKeyedSubscript:identifier4];
        }

        delegate5 = [(SKView *)self delegate];
        v36 = objc_opt_respondsToSelector();

        if (v36)
        {
          delegate6 = [(SKView *)self delegate];
          [delegate6 view:self didAddNode:node forAnchor:v25];
        }

LABEL_24:
      }

      v22 = [v63 countByEnumeratingWithState:&v76 objects:v85 count:16];
    }

    while (v22);
  }

  interfaceOrientation = self->_interfaceOrientation;
  [cameraCopy projectionMatrix];
  v68 = v40;
  v70 = v39;
  v66 = v42;
  v67 = v41;
  trackingState = [cameraCopy trackingState];
  v72 = 0u;
  v73 = 0u;
  v44 = 3;
  if (trackingState)
  {
    v44 = interfaceOrientation;
  }

  v65 = v44;
  v74 = 0uLL;
  v75 = 0uLL;
  v62 = v61;
  v45 = [v62 countByEnumeratingWithState:&v72 objects:v84 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v73;
    do
    {
      for (k = 0; k != v46; ++k)
      {
        if (*v73 != v47)
        {
          objc_enumerationMutation(v62);
        }

        v49 = *(*(&v72 + 1) + 8 * k);
        v50 = self->_nodesByAnchorIdentifier;
        identifier5 = [v49 identifier];
        v52 = [(NSMutableDictionary *)v50 objectForKeyedSubscript:identifier5];

        if (v52)
        {
          delegate7 = [(SKView *)self delegate];
          v54 = objc_opt_respondsToSelector();

          if (v54)
          {
            delegate8 = [(SKView *)self delegate];
            [delegate8 view:self willUpdateNode:v52 forAnchor:v49];
          }

          [(ARSKView *)self _updateNode:v52 forAnchor:v49 projectionMatrix:cameraCopy camera:v65 orientation:v70, v68, v67, v66];
          delegate9 = [(SKView *)self delegate];
          v57 = objc_opt_respondsToSelector();

          if (v57)
          {
            delegate10 = [(SKView *)self delegate];
            [delegate10 view:self didUpdateNode:v52 forAnchor:v49];
          }
        }
      }

      v46 = [v62 countByEnumeratingWithState:&v72 objects:v84 count:16];
    }

    while (v46);
  }

  v59 = *MEMORY[0x277D85DE8];
}

- (void)_updateNode:(float32x4_t)node forAnchor:(float32x4_t)anchor projectionMatrix:(float32x4_t)matrix camera:(uint64_t)camera orientation:(void *)orientation
{
  orientationCopy = orientation;
  v15 = a8;
  v16 = a9;
  [v16 imageResolution];
  v18 = v17;
  v20 = v19;
  [v16 transform];
  v52 = __invert_f4(v51);
  v38 = v52.columns[1];
  v39 = v52.columns[0];
  v36 = v52.columns[3];
  v37 = v52.columns[2];
  [v15 transform];
  v21 = 0;
  v48[0] = v22;
  v48[1] = v23;
  v48[2] = v24;
  v48[3] = v25;
  memset(&v49, 0, sizeof(v49));
  v50 = 0u;
  do
  {
    *(&v49.a + v21 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39, COERCE_FLOAT(v48[v21])), v38, *&v48[v21], 1), v37, v48[v21], 2), v36, v48[v21], 3);
    ++v21;
  }

  while (v21 != 4);
  v40 = v50.f32[2];
  v26 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v50.f32[0]), node, *v50.f32, 1), anchor, v50, 2), matrix, v50, 3);
  v27 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v50.f32[0] + 1.0), node, *v50.f32, 1), anchor, v50, 2), matrix, v50, 3);
  v28 = ((v27.f32[0] / v27.f32[3]) - (v26.f32[0] / v26.f32[3]));
  v46 = ((v26.f32[0] / v26.f32[3]) + 1.0) * 0.5;
  v44 = (1.0 - (v26.f32[1] / v26.f32[3])) * 0.5;
  memset(&v49, 0, sizeof(v49));
  ARCameraImageToViewTransform(a10, 0, &v49, v18, v20, self[84].f64[0], self[84].f64[1]);
  v47 = vmulq_f64(vaddq_f64(*&v49.tx, vmlaq_n_f64(vmulq_n_f64(*&v49.c, v44), *&v49.a, v46)), self[84]);
  scene = [(float64x2_t *)self scene];
  [(float64x2_t *)self convertPoint:scene toScene:*&v47];
  v31 = v30;
  v33 = v32;

  [orientationCopy setHidden:v40 > 0.0];
  [orientationCopy setPosition:{v31, v33}];
  [orientationCopy setXScale:v28];
  [orientationCopy setYScale:v28];
  [orientationCopy setZPosition:v40];
  v34 = ARCameraToDisplayRotation(a10);
  [v16 eulerAngles];
  [orientationCopy setZRotation:v34 * -3.14159265 / 180.0 - v35];
  if (objc_opt_respondsToSelector())
  {
    [orientationCopy setHidden:{objc_msgSend(v15, "isTracked") ^ 1}];
  }
}

- (void)session:(id)session didUpdateFrame:(id)frame
{
  frameCopy = frame;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__ARSKView_session_didUpdateFrame___block_invoke;
  v7[3] = &unk_278BCD520;
  v8 = frameCopy;
  selfCopy = self;
  v6 = frameCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __35__ARSKView_session_didUpdateFrame___block_invoke(uint64_t a1)
{
  [*(a1 + 32) timestamp];
  v2 = [*(a1 + 32) captureDate];
  [v2 timeIntervalSinceNow];
  kdebug_trace();

  kdebug_trace();
  v3 = [*(a1 + 40) scene];
  [v3 _setBackgroundContentsWithBuffer:{objc_msgSend(*(a1 + 32), "capturedImage")}];

  kdebug_trace();
  kdebug_trace();
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) anchors];
  v6 = [*(a1 + 32) camera];
  [v4 _updateAnchors:v5 camera:v6];

  kdebug_trace();
  [*(a1 + 32) timestamp];

  return kdebug_trace();
}

- (void)session:(id)session didFailWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ARSKView_session_didFailWithError___block_invoke;
  block[3] = &unk_278BCD548;
  block[4] = self;
  v11 = sessionCopy;
  v12 = errorCopy;
  v8 = errorCopy;
  v9 = sessionCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __37__ARSKView_session_didFailWithError___block_invoke(uint64_t a1)
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

- (void)session:(id)session cameraDidChangeTrackingState:(id)state
{
  sessionCopy = session;
  stateCopy = state;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ARSKView_session_cameraDidChangeTrackingState___block_invoke;
  block[3] = &unk_278BCD548;
  block[4] = self;
  v11 = sessionCopy;
  v12 = stateCopy;
  v8 = stateCopy;
  v9 = sessionCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __49__ARSKView_session_cameraDidChangeTrackingState___block_invoke(uint64_t a1)
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

- (void)sessionWasInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__ARSKView_sessionWasInterrupted___block_invoke;
  v6[3] = &unk_278BCD520;
  v6[4] = self;
  v7 = interruptedCopy;
  v5 = interruptedCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __34__ARSKView_sessionWasInterrupted___block_invoke(uint64_t a1)
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

- (void)sessionInterruptionEnded:(id)ended
{
  endedCopy = ended;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__ARSKView_sessionInterruptionEnded___block_invoke;
  v6[3] = &unk_278BCD520;
  v6[4] = self;
  v7 = endedCopy;
  v5 = endedCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __37__ARSKView_sessionInterruptionEnded___block_invoke(uint64_t a1)
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

- (void)sessionShouldAttemptRelocalization:(id)relocalization completion:(id)completion
{
  relocalizationCopy = relocalization;
  completionCopy = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ARSKView_sessionShouldAttemptRelocalization_completion___block_invoke;
  block[3] = &unk_278BCD570;
  v11 = relocalizationCopy;
  v12 = completionCopy;
  block[4] = self;
  v8 = relocalizationCopy;
  v9 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__ARSKView_sessionShouldAttemptRelocalization_completion___block_invoke(uint64_t a1)
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

- (void)session:(id)session didOutputAudioSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  sessionCopy = session;
  if (buffer)
  {
    CFRetain(buffer);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ARSKView_session_didOutputAudioSampleBuffer___block_invoke;
  block[3] = &unk_278BCD598;
  block[4] = self;
  v9 = sessionCopy;
  bufferCopy = buffer;
  v7 = sessionCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __47__ARSKView_session_didOutputAudioSampleBuffer___block_invoke(uint64_t a1)
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

- (void)session:(id)session didChangeGeoTrackingStatus:(id)status
{
  sessionCopy = session;
  statusCopy = status;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ARSKView_session_didChangeGeoTrackingStatus___block_invoke;
  block[3] = &unk_278BCD548;
  block[4] = self;
  v11 = sessionCopy;
  v12 = statusCopy;
  v8 = statusCopy;
  v9 = sessionCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __47__ARSKView_session_didChangeGeoTrackingStatus___block_invoke(uint64_t a1)
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

@end