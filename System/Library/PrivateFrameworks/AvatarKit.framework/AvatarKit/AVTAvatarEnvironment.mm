@interface AVTAvatarEnvironment
- (BOOL)faceIsFullyVisible;
- (VFXNode)currentPointOfView;
- (id)defaultEnvironmentNode;
- (id)initAndInstallInScene:(id)a3 renderer:(id)a4;
- (id)pointOfViewForFramingMode:(id)a3;
- (void)avatarDidChange:(id)a3 presentationConfiguration:(id)a4;
- (void)configureARCameraForFaceTracking;
- (void)configureARCameraForReticle;
- (void)defaultEnvironmentNode;
- (void)didSnapshot;
- (void)hideTrackingLossIndicator;
- (void)setEnablePhysicsSimulation:(BOOL)a3;
- (void)setFramingMode:(id)a3 animationDuration:(double)a4;
- (void)setFramingModeForcingPointOfViewUpdate:(id)a3;
- (void)setShowReticle:(BOOL)a3;
- (void)showTrackingLossIndicator;
- (void)updateCustomCameras;
- (void)updatePointOfViewFromFramingMode;
- (void)updateSpecializedLighting;
- (void)updateWithPresentationConfiguration:(id)a3;
- (void)willSnapshot;
@end

@implementation AVTAvatarEnvironment

- (id)defaultEnvironmentNode
{
  v2 = +[AVTResourceLocator sharedResourceLocator];
  v3 = [AVTResourceLocator pathForEnvironmentResource:v2 ofType:? isDirectory:?];
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:0];
  v16 = 0;
  v5 = [MEMORY[0x1E69DF388] avt_rootNodeForWorldAtURL:v4 options:0 error:&v16];
  v6 = v16;
  if (v6)
  {
    v7 = avt_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(AVTAvatarEnvironment *)v3 defaultEnvironmentNode];
    }
  }

  v8 = [AVTResourceLocator pathForMemojiResource:v2 ofType:? isDirectory:?];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8 isDirectory:0];
    v15 = 0;
    v10 = [MEMORY[0x1E69DF388] avt_nodeNamed:@"cameras" forWorldAtURL:v9 options:0 error:&v15];
    v11 = v15;
    if (v11)
    {
      v12 = avt_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(AVTAvatarEnvironment *)v8 defaultEnvironmentNode];
      }
    }

    if (v10)
    {
      [v5 addChildNode:v10];
    }
  }

  v13 = [v5 clone];
  [v13 setName:@"environment"];

  return v13;
}

- (id)initAndInstallInScene:(id)a3 renderer:(id)a4
{
  v63[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v61.receiver = self;
  v61.super_class = AVTAvatarEnvironment;
  v8 = [(AVTAvatarEnvironment *)&v61 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_scene, v6);
    objc_storeWeak(&v9->_renderer, v7);
    v10 = [(AVTAvatarEnvironment *)v9 defaultEnvironmentNode];
    environmentNode = v9->_environmentNode;
    v9->_environmentNode = v10;

    WeakRetained = objc_loadWeakRetained(&v9->_scene);
    v13 = [WeakRetained rootNode];
    [v13 addChildNode:v9->_environmentNode];

    v14 = [(VFXNode *)v9->_environmentNode childNodeWithName:@"camera" recursively:1];
    animojiCamera = v9->_animojiCamera;
    v9->_animojiCamera = v14;

    v16 = [(VFXNode *)v9->_environmentNode childNodeWithName:@"cameras" recursively:1];
    memojiCameraGroup = v9->_memojiCameraGroup;
    v9->_memojiCameraGroup = v16;

    v18 = [(VFXNode *)v9->_environmentNode childNodeWithName:@"lighting" recursively:1];
    defaultLightingNode = v9->_defaultLightingNode;
    v9->_defaultLightingNode = v18;

    objc_storeStrong(&v9->_defaultPointOfView, v9->_animojiCamera);
    v20 = [(VFXNode *)v9->_defaultPointOfView name];
    framingMode = v9->_framingMode;
    v9->_framingMode = v20;

    defaultPointOfView = v9->_defaultPointOfView;
    v23 = objc_loadWeakRetained(&v9->_renderer);
    [v23 setPointOfView:defaultPointOfView];

    if (!v9->_defaultPointOfView)
    {
      v24 = avt_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [AVTAvatarEnvironment initAndInstallInScene:v24 renderer:?];
      }
    }

    v25 = [MEMORY[0x1E69DF330] node];
    whitePlane = v9->_whitePlane;
    v9->_whitePlane = v25;

    LODWORD(v27) = 10.0;
    LODWORD(v28) = 10.0;
    v29 = [MEMORY[0x1E69DF338] planeWithWidth:v27 height:v28];
    [(VFXNode *)v9->_whitePlane setModel:v29];

    v30 = [(VFXNode *)v9->_whitePlane model];
    v31 = [v30 firstMaterial];
    [v31 setShadingModel:2];

    [(VFXNode *)v9->_whitePlane setPosition:0.0];
    [(VFXNode *)v9->_whitePlane setRenderingOrder:1000];
    [(VFXNode *)v9->_whitePlane setOpacity:0.0];
    v32 = [MEMORY[0x1E69DF330] node];
    trackingLostIndicator = v9->_trackingLostIndicator;
    v9->_trackingLostIndicator = v32;

    LODWORD(v34) = 1.0;
    LODWORD(v35) = 1.0;
    v36 = [MEMORY[0x1E69DF338] planeWithWidth:v34 height:v35];
    [(VFXNode *)v9->_trackingLostIndicator setModel:v36];

    v37 = [(VFXNode *)v9->_trackingLostIndicator model];
    v38 = [v37 firstMaterial];
    [v38 setWritesToDepthBuffer:0];

    v39 = [(VFXNode *)v9->_trackingLostIndicator model];
    v40 = [v39 firstMaterial];
    [v40 setReadsFromDepthBuffer:0];

    v41 = [(VFXNode *)v9->_trackingLostIndicator model];
    v42 = [v41 firstMaterial];
    [v42 setBlendMode:1];

    v43 = [(VFXNode *)v9->_trackingLostIndicator model];
    v44 = [v43 firstMaterial];
    [v44 setShadingModel:2];

    v45 = [MEMORY[0x1E69DC888] redColor];
    v46 = [(VFXNode *)v9->_trackingLostIndicator model];
    v47 = [v46 firstMaterial];
    v48 = [v47 diffuse];
    [v48 setContents:v45];

    [(VFXNode *)v9->_trackingLostIndicator setPosition:3.52429132e-14];
    [(VFXNode *)v9->_trackingLostIndicator setRenderingOrder:100];
    [(VFXNode *)v9->_trackingLostIndicator setOpacity:0.0];
    v49 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v50 = [v49 pathForResource:@"trackingIndicator" ofType:@"shader"];

    v51 = [MEMORY[0x1E696AEC0] stringWithContentsOfFile:v50 encoding:4 error:0];
    v52 = [(VFXNode *)v9->_trackingLostIndicator model];
    v62 = *MEMORY[0x1E69DF3B0];
    v63[0] = v51;
    v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
    [v52 setShaderModifiers:v53];

    [(VFXNode *)v9->_defaultPointOfView addChildNode:v9->_trackingLostIndicator];
    v54 = [(VFXNode *)v9->_defaultPointOfView copy];
    arModeCamera = v9->_arModeCamera;
    v9->_arModeCamera = v54;

    v56 = [(VFXNode *)v9->_defaultPointOfView camera];
    v57 = [v56 copy];
    [(VFXNode *)v9->_arModeCamera setCamera:v57];

    [(VFXNode *)v9->_arModeCamera setName:@"cameraARMode"];
    v58 = [(VFXNode *)v9->_arModeCamera camera];
    [v58 setName:@"cameraARMode"];

    [(VFXNode *)v9->_environmentNode addChildNode:v9->_arModeCamera];
    [(AVTAvatarEnvironment *)v9 configureARCameraForReticle];
    [(VFXNode *)v9->_defaultPointOfView addChildNode:v9->_whitePlane];
  }

  v59 = *MEMORY[0x1E69E9840];
  return v9;
}

- (VFXNode)currentPointOfView
{
  WeakRetained = objc_loadWeakRetained(&self->_renderer);
  v3 = [WeakRetained pointOfView];

  return v3;
}

- (void)avatarDidChange:(id)a3 presentationConfiguration:(id)a4
{
  obj = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_avatar);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_avatar, obj);
    [(AVTAvatarEnvironment *)self updateCustomCameras];
    [(AVTAvatarEnvironment *)self updateSpecializedLighting];
  }

  [(AVTAvatarEnvironment *)self updateWithPresentationConfiguration:v6];
  [(AVTAvatarEnvironment *)self updatePointOfViewFromFramingMode];
}

- (void)updateCustomCameras
{
  [(VFXNode *)self->_customCamera removeFromParentNode];
  WeakRetained = objc_loadWeakRetained(&self->_avatar);
  v4 = [WeakRetained cameraNode];
  v5 = [v4 clone];
  customCamera = self->_customCamera;
  self->_customCamera = v5;

  if (self->_customCamera)
  {
    environmentNode = self->_environmentNode;

    [(VFXNode *)environmentNode addChildNode:?];
  }
}

- (void)updateSpecializedLighting
{
  [(VFXNode *)self->_specializedLightingNode removeFromParentNode];
  WeakRetained = objc_loadWeakRetained(&self->_avatar);
  v4 = [WeakRetained lightingNode];
  v5 = [v4 clone];
  specializedLightingNode = self->_specializedLightingNode;
  self->_specializedLightingNode = v5;

  v7 = self->_specializedLightingNode;
  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_scene);
    v9 = [v8 rootNode];
    [v9 addChildNode:self->_specializedLightingNode];
  }

  defaultLightingNode = self->_defaultLightingNode;

  [(VFXNode *)defaultLightingNode setHidden:v7 != 0];
}

- (void)setFramingMode:(id)a3 animationDuration:(double)a4
{
  v8 = a3;
  if (![(NSString *)self->_framingMode isEqualToString:?])
  {
    v6 = [v8 copy];
    framingMode = self->_framingMode;
    self->_framingMode = v6;

    if (a4 <= 0.0)
    {
      [(AVTAvatarEnvironment *)self updatePointOfViewFromFramingMode];
    }

    else
    {
      [MEMORY[0x1E69DF378] begin];
      [MEMORY[0x1E69DF378] setAnimationDuration:a4];
      [(AVTAvatarEnvironment *)self updatePointOfViewFromFramingMode];
      [MEMORY[0x1E69DF378] commit];
    }
  }
}

- (void)setFramingModeForcingPointOfViewUpdate:(id)a3
{
  v4 = [a3 copy];
  framingMode = self->_framingMode;
  self->_framingMode = v4;

  [(AVTAvatarEnvironment *)self updatePointOfViewFromFramingMode];
}

- (id)pointOfViewForFramingMode:(id)a3
{
  v4 = a3;
  if ([(__CFString *)v4 isEqualToString:@"cameraGrid"])
  {
    WeakRetained = objc_loadWeakRetained(&self->_avatar);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {

      v4 = @"cameraGridMemoji";
    }
  }

  v7 = [(VFXNode *)self->_environmentNode childNodeWithName:v4 recursively:1];

  return v7;
}

- (void)updatePointOfViewFromFramingMode
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = [a2 name];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_1_2(&dword_1BB472000, v4, v5, "Error: Failed to find the %@ camera, using the default one instead (%@)", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)updateWithPresentationConfiguration:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_avatar);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (updateWithPresentationConfiguration__onceToken != -1)
  {
    [AVTAvatarEnvironment updateWithPresentationConfiguration:];
  }

  v7 = isKindOfClass & 1;
  v8 = [v4 usesAR];

  environmentNode = self->_environmentNode;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__AVTAvatarEnvironment_updateWithPresentationConfiguration___block_invoke_2;
  v14[3] = &__block_descriptor_34_e21_v24__0__VFXNode_8_B16l;
  v15 = v7;
  v16 = v8;
  [(VFXNode *)environmentNode enumerateHierarchyUsingBlock:v14];
  v10 = objc_loadWeakRetained(&self->_avatar);
  v11 = [v10 rootJointNode];
  v12 = [v11 parentNode];
  v13 = [(VFXNode *)self->_arModeCamera parentNode];
  [v12 convertTransform:v13 toNode:{*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), *(MEMORY[0x1E69E9B18] + 48)}];
  [(VFXNode *)self->_arModeCamera setTransform:?];
}

void __60__AVTAvatarEnvironment_updateWithPresentationConfiguration___block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    updateWithPresentationConfiguration__shadowSamples = 1;
    updateWithPresentationConfiguration__shadowSize = 1;
  }
}

void __60__AVTAvatarEnvironment_updateWithPresentationConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 light];
  v9 = v3;
  if (*(a1 + 32) == 1)
  {
    if ([v3 type] == 2)
    {
      [v9 setCastsShadow:1];
      v4 = 512.0;
      if (updateWithPresentationConfiguration__shadowSize)
      {
        v4 = 1024.0;
      }

      [v9 setShadowMapSize:{v4, v4}];
      if (updateWithPresentationConfiguration__shadowSamples)
      {
        v5 = 32;
      }

      else
      {
        v5 = 16;
      }

      [v9 setShadowSampleCount:v5];
      [v9 setShadowRadius:0.0];
      LODWORD(v6) = 1036831949;
      if (!*(a1 + 33))
      {
        *&v6 = 1.0;
      }

      [v9 setZNear:v6];
      LODWORD(v7) = 1120403456;
      [v9 setZFar:v7];
      [v9 setAutomaticallyAdjustsShadowProjection:*(a1 + 33)];
      LODWORD(v8) = 25.0;
      [v9 setOrthographicScale:v8];
    }
  }

  else
  {
    [v3 setCastsShadow:0];
  }
}

- (void)setEnablePhysicsSimulation:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v18 = [WeakRetained physicsWorld];

  [v18 speed];
  if ((((v6 != 4.0) ^ v3) & 1) == 0)
  {
    v7 = 0.0;
    if (v3)
    {
      *&v7 = 4.0;
    }

    [v18 setSpeed:v7];
    if (v3)
    {
      v8 = objc_loadWeakRetained(&self->_scene);
      v9 = [v8 clock];
      v10 = [v9 isPaused];
      v11 = objc_loadWeakRetained(&self->_scene);
      v12 = [v11 clock];
      [v12 setPaused:v10 ^ 1u];

      v13 = objc_loadWeakRetained(&self->_scene);
      v14 = [v13 clock];
      v15 = [v14 isPaused];
      v16 = objc_loadWeakRetained(&self->_scene);
      v17 = [v16 clock];
      [v17 setPaused:v15 ^ 1u];
    }
  }
}

- (void)setShowReticle:(BOOL)a3
{
  if (self->_trackingLostIndicatorVisible != a3)
  {
    if (a3)
    {
      [(AVTAvatarEnvironment *)self configureARCameraForReticle];

      [(AVTAvatarEnvironment *)self showTrackingLossIndicator];
    }

    else
    {
      [(AVTAvatarEnvironment *)self configureARCameraForFaceTracking];

      [(AVTAvatarEnvironment *)self hideTrackingLossIndicator];
    }
  }
}

- (void)showTrackingLossIndicator
{
  self->_trackingLostIndicatorVisible = 1;
  v3 = [(VFXNode *)self->_trackingLostIndicator model];
  [v3 setValue:&unk_1F39E11D8 forKey:@"hold"];

  [MEMORY[0x1E69DF378] begin];
  [MEMORY[0x1E69DF378] setAnimationDuration:0.23];
  v4 = [(VFXNode *)self->_trackingLostIndicator model];
  [v4 setValue:&unk_1F39E11E8 forKey:@"hold"];

  LODWORD(v5) = 1.0;
  [(VFXNode *)self->_trackingLostIndicator setOpacity:v5];
  [MEMORY[0x1E69DF378] commit];
  v13 = [MEMORY[0x1E6979318] animationWithKeyPath:@"scale"];
  [v13 setDuration:30.0];
  v6 = [MEMORY[0x1E696B098] avt_valueWithFloat3_usableWithKVCForSCNVector3:0.00718750152];
  [v13 setFromValue:v6];

  __asm { FMOV            V0.4S, #1.0 }

  v12 = [MEMORY[0x1E696B098] avt_valueWithFloat3_usableWithKVCForSCNVector3:*&_Q0];
  [v13 setToValue:v12];

  [(VFXNode *)self->_trackingLostIndicator addAnimation:v13 forKey:@"pulse"];
}

- (void)hideTrackingLossIndicator
{
  self->_trackingLostIndicatorVisible = 0;
  [MEMORY[0x1E69DF378] begin];
  [MEMORY[0x1E69DF378] setAnimationDuration:0.23];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__AVTAvatarEnvironment_hideTrackingLossIndicator__block_invoke;
  v4[3] = &unk_1E7F47F90;
  v4[4] = self;
  [MEMORY[0x1E69DF378] setCompletionBlock:v4];
  v3 = [(VFXNode *)self->_trackingLostIndicator model];
  [v3 setValue:&unk_1F39E11D8 forKey:@"hold"];

  [MEMORY[0x1E69DF378] commit];
}

uint64_t __49__AVTAvatarEnvironment_hideTrackingLossIndicator__block_invoke(uint64_t a1)
{
  [MEMORY[0x1E69DF378] begin];
  [MEMORY[0x1E69DF378] setAnimationDuration:0.3];
  v2 = MEMORY[0x1E69DF378];
  v3 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
  [v2 setAnimationTimingFunction:v3];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__AVTAvatarEnvironment_hideTrackingLossIndicator__block_invoke_2;
  v5[3] = &unk_1E7F47F90;
  v5[4] = *(a1 + 32);
  [MEMORY[0x1E69DF378] setCompletionBlock:v5];
  [*(*(a1 + 32) + 32) setOpacity:0.0];
  return [MEMORY[0x1E69DF378] commit];
}

uint64_t __49__AVTAvatarEnvironment_hideTrackingLossIndicator__block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 40) & 1) == 0)
  {
    return [*(v1 + 32) removeAnimationForKey:@"pulse"];
  }

  return result;
}

- (void)configureARCameraForFaceTracking
{
  WeakRetained = objc_loadWeakRetained(&self->_avatar);
  v3 = [WeakRetained rootJointNode];
  v4 = [v3 parentNode];
  v5 = [(VFXNode *)self->_arModeCamera parentNode];
  [v4 convertTransform:v5 toNode:{*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), *(MEMORY[0x1E69E9B18] + 48)}];
  [(VFXNode *)self->_arModeCamera setTransform:?];
}

- (void)configureARCameraForReticle
{
  v6 = [(VFXNode *)self->_defaultPointOfView camera];
  v3 = [(VFXNode *)self->_arModeCamera camera];
  [v6 focalLength];
  [v3 setFocalLength:?];
  [v6 sensorHeight];
  [v3 setSensorHeight:?];
  [v3 setProjectionDirection:{objc_msgSend(v6, "projectionDirection")}];
  defaultPointOfView = self->_defaultPointOfView;
  v5 = [(VFXNode *)self->_arModeCamera parentNode];
  [(VFXNode *)defaultPointOfView convertTransform:v5 toNode:*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), *(MEMORY[0x1E69E9B18] + 48)];
  [(VFXNode *)self->_arModeCamera setTransform:?];
}

- (void)willSnapshot
{
  [(VFXNode *)self->_trackingLostIndicator setHidden:1];
  v2 = MEMORY[0x1E69DF378];

  [v2 flush];
}

- (void)didSnapshot
{
  [(VFXNode *)self->_trackingLostIndicator setHidden:0];
  v2 = MEMORY[0x1E69DF378];

  [v2 flush];
}

- (BOOL)faceIsFullyVisible
{
  v2 = [(VFXNode *)self->_whitePlane presentationNode];
  [v2 opacity];
  v4 = v3 == 0.0;

  return v4;
}

- (void)defaultEnvironmentNode
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [a2 description];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_1_2(&dword_1BB472000, v3, v4, "Error: could not load scene at %@ with error: %@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

@end