@interface ABDeviceSceneViewController
- (CATransform3D)actionButtonPerspectiveTransform;
- (double)actionButtonScreenScale;
- (double)actionButtonTranslationWithPressProgress:(uint64_t)a1;
- (id)delegate;
- (id)setDelegate:(id *)result;
- (uint64_t)isScenePresented;
- (void)_didPresentFrame;
- (void)_renderWithTargetTimestamp:(double)a3 duration:(double)a4 renderInputs:(ABDeviceSceneRenderInputs *)a5;
- (void)_setupSceneIfNeeded;
- (void)_subscribeToFramePresentationIfNeeded;
- (void)devicePerspectiveTransform;
- (void)renderWithTargetTimestamp:(double)a3 duration:(double)a4 renderInputs:;
- (void)renderer:(id)a3 willRenderScene:(id)a4 atTime:(double)a5;
- (void)viewDidLoad;
@end

@implementation ABDeviceSceneViewController

- (void)viewDidLoad
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = ABDeviceSceneViewController;
  [(ABDeviceSceneViewController *)&v8 viewDidLoad];
  v3 = ABLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[ABDeviceSceneResourceLoader sharedLoader];
    v5 = [(ABDeviceSceneResourceLoader *)v4 areResourcesLoaded];
    v6 = @"no";
    if (v5)
    {
      v6 = @"yes";
    }

    *buf = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_23DE18000, v3, OS_LOG_TYPE_DEFAULT, "(%{public}@) loading the view; scene resources are ready: %{public}@", buf, 0x16u);
  }

  [(ABDeviceSceneViewController *)self _setupSceneIfNeeded];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)renderWithTargetTimestamp:(double)a3 duration:(double)a4 renderInputs:
{
  v30 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v8 = +[ABDeviceSceneResourceLoader sharedLoader];
    v9 = [(ABDeviceSceneResourceLoader *)v8 areResourcesLoaded];

    if (v9)
    {
      v10 = *(a2 + 168);
      v24 = *(a2 + 160);
      v11 = *(a2 + 144);
      v23[8] = *(a2 + 128);
      v23[9] = v11;
      v12 = *(a2 + 80);
      v23[4] = *(a2 + 64);
      v23[5] = v12;
      v13 = *(a2 + 112);
      v23[6] = *(a2 + 96);
      v23[7] = v13;
      v14 = *(a2 + 16);
      v23[0] = *a2;
      v23[1] = v14;
      v15 = *(a2 + 48);
      v23[2] = *(a2 + 32);
      v23[3] = v15;
      v16 = v10;
      v17 = *(a2 + 176);
      v25 = v16;
      v26 = v17;
      v27 = *(a2 + 184);
      [a1 _renderWithTargetTimestamp:v23 duration:a3 renderInputs:a4];
    }

    else if (!a1[144])
    {
      v18 = ABLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v29 = a1;
        _os_log_impl(&dword_23DE18000, v18, OS_LOG_TYPE_DEFAULT, "(%{public}@) view controller will initiate resource loading", buf, 0xCu);
      }

      v19 = +[ABDeviceSceneResourceLoader sharedLoader];
      v20 = [(ABDeviceSceneResourceLoader *)v19 loadResourcesWithCompletion:?];
      v21 = a1[144];
      a1[144] = v20;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __79__ABDeviceSceneViewController_renderWithTargetTimestamp_duration_renderInputs___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = ABLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_23DE18000, v3, OS_LOG_TYPE_DEFAULT, "Finished resource loading, isSuccess: %{public}@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)devicePerspectiveTransform
{
  if (a1)
  {
    v4 = [a1[124] pointOfView];
    memset(&v19, 0, sizeof(v19));
    v5 = [v4 camera];
    v6 = v5;
    if (v5)
    {
      [v5 projectionTransform];
    }

    else
    {
      memset(&v19, 0, sizeof(v19));
    }

    memset(&v18, 0, sizeof(v18));
    if (v4)
    {
      [v4 worldTransform];
    }

    memset(&v17, 0, sizeof(v17));
    m = v18;
    SCNMatrix4Invert(&v17, &m);
    memset(&m, 0, sizeof(m));
    v7 = [a1 view];
    [v7 bounds];
    v9 = v8 * 0.5;
    v10 = [a1 view];
    [v10 bounds];
    memset(&b.m22, 0, 40);
    v12 = v11 * 0.5;
    *&b.m12 = 0u;
    b.m11 = v9;
    b.m22 = v12;
    b.m33 = -1.0;
    b.m44 = 1.0;
    a = v19;
    SCNMatrix4Mult(&m, &a, &b);

    memset(&b, 0, sizeof(b));
    a = v17;
    v13 = m;
    SCNMatrix4Mult(&b, &a, &v13);
    a = b;
    CATransform3DFromSCNMatrix4(&a, a2);
  }

  else
  {
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

- (CATransform3D)actionButtonPerspectiveTransform
{
  if (result)
  {
    v18 = 0uLL;
    v19 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    m43 = result[7].m43;
    if (m43 == 0.0)
    {
      memset(&v11, 0, 64);
    }

    else
    {
      [*&m43 transform];
    }

    CATransform3DFromSCNMatrix4(&v11, &v12);
    memset(&v11, 0, sizeof(v11));
    v4 = ABDegreesToRadians(-90.0);
    CATransform3DMakeRotation(&v11, v4, 0.0, 1.0, 0.0);
    ABButtonOffsetFromDeviceCenter();
    memset(&v10, 0, sizeof(v10));
    CATransform3DMakeTranslation(&v10, v5, v6, 0.0);
    a = v11;
    v7 = v10;
    CATransform3DConcat(&v9, &a, &v7);
    *&a.m31 = v16;
    *&a.m33 = v17;
    *&a.m41 = v18;
    *&a.m43 = v19;
    *&a.m11 = v12;
    *&a.m13 = v13;
    *&a.m21 = v14;
    *&a.m23 = v15;
    return CATransform3DConcat(a2, &v9, &a);
  }

  else
  {
    *(a2 + 96) = 0uLL;
    *(a2 + 112) = 0uLL;
    *(a2 + 64) = 0uLL;
    *(a2 + 80) = 0uLL;
    *(a2 + 32) = 0uLL;
    *(a2 + 48) = 0uLL;
    *a2 = 0uLL;
    *(a2 + 16) = 0uLL;
  }

  return result;
}

- (void)renderer:(id)a3 willRenderScene:(id)a4 atTime:(double)a5
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__ABDeviceSceneViewController_renderer_willRenderScene_atTime___block_invoke;
  block[3] = &unk_278BFFC38;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__ABDeviceSceneViewController_renderer_willRenderScene_atTime___block_invoke(uint64_t a1)
{
  v2 = [(ABDeviceSceneViewController *)*(a1 + 32) delegate];
  [v2 deviceSceneViewControllerWillRenderScene:*(a1 + 32)];
}

- (void)_setupSceneIfNeeded
{
  if (!self->_sceneView)
  {
    v3 = +[ABDeviceSceneResourceLoader sharedLoader];
    v4 = [(ABDeviceSceneResourceLoader *)v3 areResourcesLoaded];

    if (v4)
    {
      p_sceneModel = &self->_sceneModel;
      v6 = +[ABDeviceSceneResourceLoader sharedLoader];
      [(ABDeviceSceneResourceLoader *)v6 sceneModel];
      __move_assignment_8_8_s0_s8_s16_S_s24_s32_s40_s48_s56_s64_s72_t80w64(&self->_sceneModel, v18);

      v7 = +[ABDeviceSceneResourceLoader sharedLoader];
      v8 = [(ABDeviceSceneResourceLoader *)v7 sceneView];
      sceneView = self->_sceneView;
      self->_sceneView = v8;

      v10 = [(ABDeviceSceneViewController *)self view];
      [v10 addSubview:self->_sceneView];

      v11 = [(ABDeviceSceneViewController *)self view];
      [v11 frame];
      [(SCNView *)self->_sceneView setBounds:?];

      [(SCNView *)self->_sceneView setAutoresizingMask:18];
      [(SCNView *)self->_sceneView setDelegate:self];
      v12 = objc_opt_new();
      displayView = self->_displayView;
      self->_displayView = v12;

      [(ABDeviceDisplayView *)self->_displayView sizeToFit];
      v14 = [(ABDeviceDisplayView *)self->_displayView layer];
      v15 = [(SCNNode *)p_sceneModel->displayNode geometry];
      v16 = [v15 firstMaterial];
      v17 = [v16 emission];
      [v17 setContents:v14];
    }
  }
}

- (void)_renderWithTargetTimestamp:(double)a3 duration:(double)a4 renderInputs:(ABDeviceSceneRenderInputs *)a5
{
  [(ABDeviceSceneViewController *)self _setupSceneIfNeeded:a3];
  v7 = [(SCNView *)self->_sceneView pointOfView];
  v8 = [v7 camera];

  [v8 setFocusDistance:a5->cameraAndLight.focusDistance];
  [v8 setFocalLength:a5->cameraAndLight.focalLength];
  [v8 setFStop:a5->cameraAndLight.fStop];
  [v8 setApertureBladeCount:a5->cameraAndLight.apertureBladeCount];
  lightingIntensity = a5->cameraAndLight.lightingIntensity;
  v10 = [(SCNScene *)self->_sceneModel.scene lightingEnvironment];
  [v10 setIntensity:lightingIntensity];

  buttonPressProgress = a5->buttonPressProgress;
  v12 = ABButtonPressDepth();
  LOBYTE(v10) = ABDeviceIsD23();
  IsV5x = ABDeviceIsV5x();
  v14 = -(v12 * buttonPressProgress);
  v15 = IsV5x | v10;
  capNode = self->_sceneModel.buttonModel.capNode;
  if (v15)
  {
    v14 = -v14;
  }

  v17 = v14;
  a.m11 = 1.0;
  *&a.m14 = 0;
  *&a.m12 = 0;
  a.m22 = 1.0;
  *&a.m23 = 0;
  *&a.m31 = 0;
  *&a.m33 = 1065353216;
  a.m41 = v17;
  a.m42 = 0.0;
  a.m43 = 0.0;
  a.m44 = 1.0;
  [(SCNNode *)capNode setTransform:&a];
  sidesNode = self->_sceneModel.buttonModel.sidesNode;
  a.m11 = 1.0;
  *&a.m14 = 0;
  *&a.m12 = 0;
  a.m22 = 1.0;
  *&a.m23 = 0;
  *&a.m31 = 0;
  *&a.m33 = 1065353216;
  a.m41 = v17;
  a.m42 = 0.0;
  a.m43 = 0.0;
  a.m44 = 1.0;
  [(SCNNode *)sidesNode setTransform:&a];
  v19 = *&self->_sceneModel.buttonModel.highlightTransform.m21;
  *&a.m11 = *&self->_sceneModel.buttonModel.highlightTransform.m11;
  v20 = *&self->_sceneModel.buttonModel.highlightTransform.m31;
  v21 = *&self->_sceneModel.buttonModel.highlightTransform.m41;
  *&a.m21 = v19;
  *&a.m31 = v20;
  *&a.m41 = v21;
  *&b.m14 = 0;
  *&b.m12 = 0;
  b.m11 = 1.0;
  b.m22 = 1.0;
  *&b.m23 = 0;
  *&b.m31 = 0;
  *&b.m33 = 1065353216;
  b.m41 = v17;
  *&b.m42 = 0;
  b.m44 = 1.0;
  SCNMatrix4Mult(&v43, &a, &b);
  capNodeHighlight = self->_sceneModel.buttonModel.capNodeHighlight;
  a = v43;
  [(SCNNode *)capNodeHighlight setTransform:&a];
  v23 = *&self->_sceneModel.buttonModel.highlightTransform.m21;
  *&a.m11 = *&self->_sceneModel.buttonModel.highlightTransform.m11;
  v24 = *&self->_sceneModel.buttonModel.highlightTransform.m31;
  v25 = *&self->_sceneModel.buttonModel.highlightTransform.m41;
  *&a.m21 = v23;
  *&a.m31 = v24;
  *&a.m41 = v25;
  *&b.m14 = 0;
  *&b.m12 = 0;
  b.m11 = 1.0;
  b.m22 = 1.0;
  *&b.m23 = 0;
  *&b.m31 = 0;
  *&b.m33 = 1065353216;
  b.m41 = v17;
  *&b.m42 = 0;
  b.m44 = 1.0;
  SCNMatrix4Mult(&v41, &a, &b);
  sidesNodeHighlight = self->_sceneModel.buttonModel.sidesNodeHighlight;
  a = v41;
  [(SCNNode *)sidesNodeHighlight setTransform:&a];
  v27 = *&a5->modelTransform.m31;
  v28 = *&a5->modelTransform.m41;
  v29 = *&a5->modelTransform.m43;
  v37 = *&a5->modelTransform.m33;
  v38 = v28;
  v39 = v29;
  v30 = *&a5->modelTransform.m13;
  *&a.m11 = *&a5->modelTransform.m11;
  v31 = *&a5->modelTransform.m21;
  v32 = *&a5->modelTransform.m23;
  *&a.m21 = v30;
  *&a.m31 = v31;
  *&a.m41 = v32;
  v36 = v27;
  SCNMatrix4FromCATransform3D(&a, v40);
  deviceNode = self->_sceneModel.deviceNode;
  *&a.m11 = v40[0];
  *&a.m21 = v40[1];
  *&a.m31 = v40[2];
  *&a.m41 = v40[3];
  [(SCNNode *)deviceNode setTransform:&a];
  __copy_constructor_8_8_s0_s8_s16_s24_s32_s40_s48_t56w64(v34, &self->_sceneModel.buttonModel);
  ABDeviceSceneButtonModelSetColor(v34, a5->buttonHighlight.color, a5->buttonHighlight.opacity);
  [(ABDeviceDisplayView *)&self->_displayView->super.super.super.isa setIslandMode:?];
  [(ABDeviceSceneViewController *)self _subscribeToFramePresentationIfNeeded];
}

- (void)_subscribeToFramePresentationIfNeeded
{
  if (!self->_isScenePresented)
  {
    objc_initWeak(&location, self);
    sceneView = self->_sceneView;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __68__ABDeviceSceneViewController__subscribeToFramePresentationIfNeeded__block_invoke;
    v4[3] = &unk_278BFFD20;
    objc_copyWeak(&v5, &location);
    [(SCNView *)sceneView _addGPUFramePresentedHandler:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __68__ABDeviceSceneViewController__subscribeToFramePresentationIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didPresentFrame];
}

- (void)_didPresentFrame
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = ABLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = self;
    _os_log_impl(&dword_23DE18000, v3, OS_LOG_TYPE_DEFAULT, "(%{public}@) did present frame", buf, 0xCu);
  }

  v4 = [(ABDeviceSceneViewController *)self scenePresentationBarrier];
  [v4 doubleValue];
  v6 = v5;

  if (v6 <= 0.0 || ([MEMORY[0x277CBEAA8] now], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "timeIntervalSinceReferenceDate"), v9 = v8 - v6, v7, v9 <= 0.2))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__ABDeviceSceneViewController__didPresentFrame__block_invoke;
    block[3] = &unk_278BFFC38;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v10 = ABLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = self;
      _os_log_impl(&dword_23DE18000, v10, OS_LOG_TYPE_DEFAULT, "(%{public}@) delaying scene presentation", buf, 0xCu);
    }

    [(ABDeviceSceneViewController *)self setScenePresentationBarrier:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (double)actionButtonTranslationWithPressProgress:(uint64_t)a1
{
  if (a1)
  {
    return -(ABButtonPressDepth() * a2);
  }

  else
  {
    return 0.0;
  }
}

- (double)actionButtonScreenScale
{
  if (a1)
  {
    return ABButtonScreenScale();
  }

  else
  {
    return 0.0;
  }
}

- (id)delegate
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 146);
    v1 = vars8;
  }

  return WeakRetained;
}

- (id)setDelegate:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 146, a2);
  }

  return result;
}

- (uint64_t)isScenePresented
{
  if (a1)
  {
    v1 = *(a1 + 1160);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

@end