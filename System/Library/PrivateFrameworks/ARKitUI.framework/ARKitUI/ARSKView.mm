@interface ARSKView
- (ARAnchor)anchorForNode:(SKNode *)node;
- (ARSKView)initWithCoder:(id)a3;
- (ARSKView)initWithFrame:(CGRect)a3;
- (ARSession)session;
- (NSArray)hitTest:(CGPoint)point types:(ARHitTestResultType)types;
- (SKNode)nodeForAnchor:(ARAnchor *)anchor;
- (id)_anchorForNode:(id)a3 inFrame:(id)a4;
- (void)_updateAnchors:(id)a3 camera:(id)a4;
- (void)_updateNode:(float32x4_t)a3 forAnchor:(float32x4_t)a4 projectionMatrix:(float32x4_t)a5 camera:(uint64_t)a6 orientation:(void *)a7;
- (void)commonInit;
- (void)dealloc;
- (void)layoutSubviews;
- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4;
- (void)session:(id)a3 didChangeGeoTrackingStatus:(id)a4;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didOutputAudioSampleBuffer:(opaqueCMSampleBuffer *)a4;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)sessionInterruptionEnded:(id)a3;
- (void)sessionShouldAttemptRelocalization:(id)a3 completion:(id)a4;
- (void)sessionWasInterrupted:(id)a3;
- (void)setSession:(ARSession *)session;
@end

@implementation ARSKView

- (ARSKView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ARSKView;
  v3 = [(SKView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ARSKView *)v3 commonInit];
  }

  return v4;
}

- (ARSKView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ARSKView;
  v3 = [(SKView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

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
  v3 = [(ARSKView *)self window];
  v4 = [v3 windowScene];
  self->_interfaceOrientation = [v4 interfaceOrientation];

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
    v18 = self;
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
  v7 = session;
  v5 = self;
  objc_sync_enter(v5);
  v6 = v5->_session;
  if (v6 != v7)
  {
    [(ARSession *)v6 _removeObserver:v5];
    objc_storeStrong(&v5->_session, session);
    [(ARSession *)v5->_session _addObserver:v5];
  }

  objc_sync_exit(v5);
}

- (NSArray)hitTest:(CGPoint)point types:(ARHitTestResultType)types
{
  y = point.y;
  x = point.x;
  v8 = [(ARSession *)self->_session currentFrame];
  v9 = v8;
  if (v8)
  {
    p_viewportSize = &self->_viewportSize;
    height = self->_viewportSize.height;
    v19 = x / self->_viewportSize.width;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    interfaceOrientation = self->_interfaceOrientation;
    v18 = y / height;
    v13 = [v8 camera];
    [v13 imageResolution];
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
  v6 = [(ARSession *)session currentFrame];
  v7 = [(ARSKView *)self _anchorForNode:v5 inFrame:v6];

  return v7;
}

- (SKNode)nodeForAnchor:(ARAnchor *)anchor
{
  nodesByAnchorIdentifier = self->_nodesByAnchorIdentifier;
  v4 = [(ARAnchor *)anchor identifier];
  v5 = [(NSMutableDictionary *)nodesByAnchorIdentifier objectForKeyedSubscript:v4];

  return v5;
}

- (id)_anchorForNode:(id)a3 inFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEB98];
  v9 = [(NSMutableDictionary *)self->_nodesByAnchorIdentifier allValues];
  v10 = [v8 setWithArray:v9];

  v11 = [v6 scene];
  v12 = v6;
  v13 = v12;
  v14 = 0;
  v15 = v12;
  if (v12 && v11 != v12)
  {
    v16 = v12;
    while (([v10 containsObject:v16] & 1) == 0)
    {
      v15 = [v16 parent];

      v14 = 0;
      if (v15)
      {
        v16 = v15;
        if (v15 != v11)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    v17 = [(NSMutableDictionary *)self->_nodesByAnchorIdentifier allKeysForObject:v16];
    v18 = [v17 firstObject];

    v19 = [v7 anchors];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __35__ARSKView__anchorForNode_inFrame___block_invoke;
    v24[3] = &unk_278BCD4F8;
    v20 = v18;
    v25 = v20;
    v21 = [v19 indexOfObjectPassingTest:v24];

    if (v21 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0;
    }

    else
    {
      v22 = [v7 anchors];
      v14 = [v22 objectAtIndexedSubscript:v21];
    }

    v15 = v16;
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

- (void)_updateAnchors:(id)a3 camera:(id)a4
{
  v87 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v71 = a4;
  v61 = v6;
  v7 = [MEMORY[0x277CBEB98] setWithArray:v6];
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
        v15 = [v13 identifier];
        v16 = [(NSMutableDictionary *)nodesByAnchorIdentifier objectForKeyedSubscript:v15];

        if (v16)
        {
          [v16 removeFromParent];
          v17 = self->_nodesByAnchorIdentifier;
          v18 = [v13 identifier];
          [(NSMutableDictionary *)v17 removeObjectForKey:v18];

          v19 = [(SKView *)self delegate];
          LOBYTE(v18) = objc_opt_respondsToSelector();

          if (v18)
          {
            v20 = [(SKView *)self delegate];
            [v20 view:self didRemoveNode:v16 forAnchor:v13];
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
        v27 = [v25 identifier];
        v28 = [(NSMutableDictionary *)v26 objectForKeyedSubscript:v27];

        if (!v28)
        {
          v29 = [(SKView *)self delegate];
          v30 = objc_opt_respondsToSelector();

          if (v30)
          {
            v31 = [(SKView *)self delegate];
            v28 = [v31 view:self nodeForAnchor:v25];

            if (!v28)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v28 = [MEMORY[0x277CDCF58] node];
          }

          v32 = [(SKView *)self scene];
          [v32 addChild:v28];

          v33 = self->_nodesByAnchorIdentifier;
          v34 = [v25 identifier];
          [(NSMutableDictionary *)v33 setObject:v28 forKeyedSubscript:v34];
        }

        v35 = [(SKView *)self delegate];
        v36 = objc_opt_respondsToSelector();

        if (v36)
        {
          v37 = [(SKView *)self delegate];
          [v37 view:self didAddNode:v28 forAnchor:v25];
        }

LABEL_24:
      }

      v22 = [v63 countByEnumeratingWithState:&v76 objects:v85 count:16];
    }

    while (v22);
  }

  interfaceOrientation = self->_interfaceOrientation;
  [v71 projectionMatrix];
  v68 = v40;
  v70 = v39;
  v66 = v42;
  v67 = v41;
  v43 = [v71 trackingState];
  v72 = 0u;
  v73 = 0u;
  v44 = 3;
  if (v43)
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
        v51 = [v49 identifier];
        v52 = [(NSMutableDictionary *)v50 objectForKeyedSubscript:v51];

        if (v52)
        {
          v53 = [(SKView *)self delegate];
          v54 = objc_opt_respondsToSelector();

          if (v54)
          {
            v55 = [(SKView *)self delegate];
            [v55 view:self willUpdateNode:v52 forAnchor:v49];
          }

          [(ARSKView *)self _updateNode:v52 forAnchor:v49 projectionMatrix:v71 camera:v65 orientation:v70, v68, v67, v66];
          v56 = [(SKView *)self delegate];
          v57 = objc_opt_respondsToSelector();

          if (v57)
          {
            v58 = [(SKView *)self delegate];
            [v58 view:self didUpdateNode:v52 forAnchor:v49];
          }
        }
      }

      v46 = [v62 countByEnumeratingWithState:&v72 objects:v84 count:16];
    }

    while (v46);
  }

  v59 = *MEMORY[0x277D85DE8];
}

- (void)_updateNode:(float32x4_t)a3 forAnchor:(float32x4_t)a4 projectionMatrix:(float32x4_t)a5 camera:(uint64_t)a6 orientation:(void *)a7
{
  v14 = a7;
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
  v26 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v50.f32[0]), a3, *v50.f32, 1), a4, v50, 2), a5, v50, 3);
  v27 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v50.f32[0] + 1.0), a3, *v50.f32, 1), a4, v50, 2), a5, v50, 3);
  v28 = ((v27.f32[0] / v27.f32[3]) - (v26.f32[0] / v26.f32[3]));
  v46 = ((v26.f32[0] / v26.f32[3]) + 1.0) * 0.5;
  v44 = (1.0 - (v26.f32[1] / v26.f32[3])) * 0.5;
  memset(&v49, 0, sizeof(v49));
  ARCameraImageToViewTransform(a10, 0, &v49, v18, v20, a1[84].f64[0], a1[84].f64[1]);
  v47 = vmulq_f64(vaddq_f64(*&v49.tx, vmlaq_n_f64(vmulq_n_f64(*&v49.c, v44), *&v49.a, v46)), a1[84]);
  v29 = [(float64x2_t *)a1 scene];
  [(float64x2_t *)a1 convertPoint:v29 toScene:*&v47];
  v31 = v30;
  v33 = v32;

  [v14 setHidden:v40 > 0.0];
  [v14 setPosition:{v31, v33}];
  [v14 setXScale:v28];
  [v14 setYScale:v28];
  [v14 setZPosition:v40];
  v34 = ARCameraToDisplayRotation(a10);
  [v16 eulerAngles];
  [v14 setZRotation:v34 * -3.14159265 / 180.0 - v35];
  if (objc_opt_respondsToSelector())
  {
    [v14 setHidden:{objc_msgSend(v15, "isTracked") ^ 1}];
  }
}

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__ARSKView_session_didUpdateFrame___block_invoke;
  v7[3] = &unk_278BCD520;
  v8 = v5;
  v9 = self;
  v6 = v5;
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

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ARSKView_session_didFailWithError___block_invoke;
  block[3] = &unk_278BCD548;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ARSKView_session_cameraDidChangeTrackingState___block_invoke;
  block[3] = &unk_278BCD548;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)sessionWasInterrupted:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__ARSKView_sessionWasInterrupted___block_invoke;
  v6[3] = &unk_278BCD520;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)sessionInterruptionEnded:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__ARSKView_sessionInterruptionEnded___block_invoke;
  v6[3] = &unk_278BCD520;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)sessionShouldAttemptRelocalization:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ARSKView_sessionShouldAttemptRelocalization_completion___block_invoke;
  block[3] = &unk_278BCD570;
  v11 = v6;
  v12 = v7;
  block[4] = self;
  v8 = v6;
  v9 = v7;
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

- (void)session:(id)a3 didOutputAudioSampleBuffer:(opaqueCMSampleBuffer *)a4
{
  v6 = a3;
  if (a4)
  {
    CFRetain(a4);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ARSKView_session_didOutputAudioSampleBuffer___block_invoke;
  block[3] = &unk_278BCD598;
  block[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
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

- (void)session:(id)a3 didChangeGeoTrackingStatus:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ARSKView_session_didChangeGeoTrackingStatus___block_invoke;
  block[3] = &unk_278BCD548;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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