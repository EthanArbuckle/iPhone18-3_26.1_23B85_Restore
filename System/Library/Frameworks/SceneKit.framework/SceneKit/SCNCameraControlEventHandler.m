@interface SCNCameraControlEventHandler
+ (SCNMatrix4)matrixWithNoRoll:(SEL)a3;
+ (double)frontVectorWithPointOfView:(void *)a3;
- (BOOL)_isInertiaRunning;
- (BOOL)computeBoundingSphereOmittingFloorsForNode:(__C3DNode *)a3 sphere:(C3DSphere *)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)wantsRedraw;
- (SCNCameraControlEventHandler)init;
- (SCNVector3)cameraAutomaticTargetPoint;
- (SCNVector3)cameraTarget;
- (SCNVector3)gimbalLockVector;
- (__n128)viewedObjectSphere;
- (id)gestureRecognizers;
- (uint64_t)frontVector;
- (void)_beginTranslateAtLocation:(CGPoint)a3;
- (void)_handleDoubleTap:(id)a3;
- (void)_handlePan:(id)a3;
- (void)_handlePinch:(id)a3;
- (void)_handleRotation:(id)a3;
- (void)_installFreeViewCameraIfNeeded;
- (void)_onInertiaTimer;
- (void)_prepareFreeViewCamera;
- (void)_resetBrowseScaleFactor;
- (void)_resetFreeViewCamera;
- (void)_rotateWithDrag:(CGPoint)a3 mode:(int64_t)a4 stickyAxis:(unint64_t)a5;
- (void)_setInertiaRunning:(BOOL)a3;
- (void)_startBrowsingIfNeeded:(CGPoint)a3;
- (void)_switchToFreeViewCamera;
- (void)_translateTo:(CGPoint)a3;
- (void)activateFreeCamera;
- (void)beginGesture:(id)a3;
- (void)cameraDidChange;
- (void)clearRoll;
- (void)computeAutomaticTargetPoint;
- (void)dealloc;
- (void)endDraggingWithVelocity:(CGPoint)a3;
- (void)focusNode:(id)a3;
- (void)panWithGestureRecognizer:(id)a3;
- (void)pinchWithGestureRecognizer:(id)a3;
- (void)rotateOf:(double)a3;
- (void)rotateWithGestureRecognizer:(id)a3;
- (void)rotateWithVector:(int64_t)a3 mode:;
- (void)sceneDidChange;
- (void)sceneWillChange;
- (void)setAllowsTranslation:(BOOL)a3;
- (void)setAutomaticCameraTarget:(BOOL)a3;
- (void)setEnableFreeCamera:(BOOL)a3;
- (void)setEnableInertia:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setGimbalLockMode:(BOOL)a3;
- (void)setZoomFactor:(double)a3;
- (void)translateByX:(float)a3 Y:(float)a4 Z:(float)a5;
- (void)updateBrowseScaleFactor;
- (void)viewWillDrawAtTime:(double)a3;
- (void)zoomBy:(float)a3 animate:(BOOL)a4;
@end

@implementation SCNCameraControlEventHandler

- (SCNCameraControlEventHandler)init
{
  v3.receiver = self;
  v3.super_class = SCNCameraControlEventHandler;
  result = [(SCNEventHandler *)&v3 init];
  if (result)
  {
    result->_zoomFactor = 1.0;
    *(result + 312) |= 8u;
    *(result + 312) &= ~2u;
    result->_friction = 0.05;
    result->_browseScaleFactor = 1.0;
    *(result + 312) |= 0x20u;
    *(result + 313) &= ~2u;
    result->_stateLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)dealloc
{
  [(SCNNode *)self->_freeViewCameraNode removeFromParentNode];

  v3.receiver = self;
  v3.super_class = SCNCameraControlEventHandler;
  [(SCNEventHandler *)&v3 dealloc];
}

- (void)setEnabled:(BOOL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  *(self + 312) = *(self + 312) & 0xFE | a3;
  v4 = [(SCNCameraControlEventHandler *)self gestureRecognizers];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setEnabled:*(self + 312) & 1];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setAllowsTranslation:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 312) = *(self + 312) & 0xDF | v3;
}

- (void)setEnableInertia:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 312) = *(self + 312) & 0xF7 | v3;
}

- (void)setGimbalLockMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 313) = *(self + 313) & 0xFD | v3;
}

- (SCNVector3)gimbalLockVector
{
  v2 = 0.0;
  v3 = 1.0;
  v4 = 0.0;
  result.z = v4;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setAutomaticCameraTarget:(BOOL)a3
{
  v3 = *(self + 312);
  if (((((v3 & 2) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    *(self + 312) = v3 & 0xFD | v4;
    [(SCNCameraControlEventHandler *)self invalidateCameraTarget];
  }
}

- (SCNVector3)cameraTarget
{
  x = self->_cameraTarget.x;
  y = self->_cameraTarget.y;
  z = self->_cameraTarget.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)focusNode:(id)a3
{
  if (a3)
  {
    *(self + 312) |= 0x10u;
    [(SCNCameraControlEventHandler *)self _setInertiaRunning:0];
    [(SCNCameraControlEventHandler *)self _switchToFreeViewCamera];
    [(SCNCameraControlEventHandler *)self setAutomaticCameraTarget:0];
    v43 = 0;
    v44 = 0;
    [(SCNCameraControlEventHandler *)self frontVector];
    v35 = v5;
    v42 = 0.0;
    if ([a3 getBoundingSphereCenter:&v43 radius:&v42])
    {
      originalFovX = self->_originalFovX;
      if (originalFovX <= self->_originalFovY)
      {
        originalFovX = self->_originalFovY;
      }

      v7 = (originalFovX * 0.5) / 180.0 * 3.14159265;
      memset(v41, 0, sizeof(v41));
      [a3 worldTransform];
      *&v8 = v42;
      v9.i64[0] = 0;
      v9.i64[1] = v8;
      v32 = v9;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      C3DMatrix4x4FromSCNMatrix4(&v37, v41);
      v36[0] = v37;
      v36[1] = v38;
      v36[2] = v39;
      v36[3] = v40;
      *v10.i64 = C3DVector3RotateAndScale(v36, v32);
      v11 = vmulq_f32(v10, v10);
      v12 = sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
      v42 = v12;
      v13 = tanf(v7);
      v14 = sqrt(((v12 / v13) * (v12 / v13)) + v12 * v12);
    }

    else
    {
      [(SCNCameraControlEventHandler *)self _browseScale];
      v14 = v15;
    }

    v16 = [a3 presentationNode];
    LODWORD(v18) = HIDWORD(v43);
    LODWORD(v17) = v43;
    LODWORD(v19) = v44;
    [v16 convertPosition:0 toNode:{v17, v18, v19}];
    v31 = v21;
    v33 = v20;
    v30 = v22;
    [(SCNCameraControlEventHandler *)self setCameraTarget:?];
    v23 = v35;
    v24 = vmulq_f32(v23, v23);
    v25 = sqrtf(v24.f32[2] + vaddv_f32(*v24.f32));
    if (v25 != 0.0)
    {
      v26 = v33;
      HIDWORD(v27) = HIDWORD(v31);
      v26.i32[1] = v30;
      v26.i32[2] = v31;
      v28 = v14;
      v34 = v28 / v25;
      v29 = vsubq_f32(v26, vmulq_n_f32(v35, v28 / v25));
      LODWORD(v27) = v29.i32[1];
      v23.i32[0] = v29.i32[2];
      [(SCNNode *)self->_freeViewCameraNode setPosition:*v29.i64, v27, *v23.i64];
      self->_browseScaleFactor = v34;
    }
  }

  else
  {

    [(SCNCameraControlEventHandler *)self setAutomaticCameraTarget:1];
  }
}

- (void)setEnableFreeCamera:(BOOL)a3
{
  self->super._enableFreeCamera = a3;
  if (!a3)
  {
    [(SCNCameraControlEventHandler *)self _resetFreeViewCamera];
  }
}

- (void)activateFreeCamera
{
  v3.receiver = self;
  v3.super_class = SCNCameraControlEventHandler;
  [(SCNEventHandler *)&v3 activateFreeCamera];
  [(SCNCameraControlEventHandler *)self _prepareFreeViewCamera];
}

- (void)_resetFreeViewCamera
{
  if ([(SCNNode *)self->_freeViewCameraNode sceneRef])
  {
    C3DRemoveSceneRef([(SCNNode *)self->_freeViewCameraNode nodeRef], [(SCNNode *)self->_freeViewCameraNode sceneRef]);
  }

  [(SCNNode *)self->_freeViewCameraNode removeFromParentNode];

  self->_freeViewCameraNode = 0;
}

- (void)_prepareFreeViewCamera
{
  v3 = [-[SCNView renderer](-[SCNEventHandler view](self "view")];
  v4 = v3;
  if (v3 && v3 == self->_freeViewCameraNode)
  {
    return;
  }

  v5 = [(SCNNode *)v3 presentationNode];
  [(SCNCamera *)[(SCNNode *)v5 camera] xFov];
  *&v6 = v6;
  self->_originalFovX = *&v6;
  [(SCNCamera *)[(SCNNode *)v5 camera] yFov];
  v8 = v7;
  self->_originalFovY = v8;
  if (v8 == 0.0 && self->_originalFovX == 0.0)
  {
    v8 = 60.0;
  }

  self->_originalFovY = v8;
  [(SCNCamera *)[(SCNNode *)v5 camera] orthographicScale];
  *&v10 = v10;
  self->_originalOrthoScale = *&v10;
  self->_zoomFactor = 1.0;
  freeViewCameraNode = self->_freeViewCameraNode;
  if (!v4)
  {
    if (freeViewCameraNode)
    {
      goto LABEL_15;
    }

    v12 = +[SCNNode node];
    goto LABEL_14;
  }

  if (v4 == freeViewCameraNode)
  {
    memset(&v27, 0, sizeof(v27));
LABEL_24:
    v17 = [(SCNNode *)v4 presentationNode];
    if (v17)
    {
      [(SCNNode *)v17 worldTransform];
    }

    else
    {
      memset(&v27, 0, sizeof(v27));
    }

    goto LABEL_27;
  }

  if (!freeViewCameraNode)
  {
    v12 = [(SCNNode *)v4 copy];
LABEL_14:
    self->_freeViewCameraNode = v12;
  }

LABEL_15:
  if ([(SCNNode *)v4 camera])
  {
    v13 = [(SCNCamera *)[(SCNNode *)v4 camera] copy];
LABEL_17:
    v14 = v13;
    goto LABEL_18;
  }

  if (![(SCNNode *)v4 light])
  {
    v13 = +[SCNCamera camera];
    goto LABEL_17;
  }

  v16 = [(SCNNode *)v4 light];
  v14 = +[SCNCamera camera];
  if (v16)
  {
    [(SCNLight *)v16 spotOuterAngle];
    [(SCNCamera *)v14 setFieldOfView:?];
    [(SCNCamera *)v14 setFieldOfViewOrientation:0];
    [(SCNLight *)v16 zNear];
    [(SCNCamera *)v14 setZNear:?];
    [(SCNLight *)v16 zFar];
    [(SCNCamera *)v14 setZFar:?];
  }

LABEL_18:
  [(SCNNode *)self->_freeViewCameraNode setCamera:v14];
  [(SCNNode *)self->_freeViewCameraNode setLight:0];
  [(SCNNode *)self->_freeViewCameraNode setGeometry:0];
  v15 = +[SCNTransaction immediateMode];
  [SCNTransaction setImmediateMode:1];
  [(SCNNode *)self->_freeViewCameraNode removeAllAnimations];
  [SCNTransaction setImmediateMode:v15];
  memset(&v27, 0, sizeof(v27));
  if (v4)
  {
    goto LABEL_24;
  }

  v27 = SCNMatrix4Identity;
LABEL_27:
  memset(v26, 0, sizeof(v26));
  C3DMatrix4x4FromSCNMatrix4(v26, &v27);
  if (fabs(C3DMatrix4x4Determinant3x3(v26) + -1.0) > 0.00001)
  {
    v23[0].i32[2] = 0;
    v23[0].i64[0] = 0;
    v25.i32[2] = 0;
    v25.i64[0] = 0;
    v24 = 0uLL;
    C3DMatrix4x4GetAffineTransforms(v26, v23, &v24, &v25);
    C3DQuaternionNormalize(&v24);
    C3DMatrix4x4MakeAffine(v26, v23, &v24, &v25);
    C3DMatrix4x4ToSCNMatrix4(v26, &v27);
  }

  v23[0] = *&v27.m11;
  v23[1] = *&v27.m21;
  v23[2] = *&v27.m31;
  v23[3] = *&v27.m41;
  [(SCNNode *)self->_freeViewCameraNode setTransform:v23];
  [(SCNNode *)self->_freeViewCameraNode setName:@"kSCNFreeViewCameraName"];
  -[SCNCamera setName:](-[SCNNode camera](self->_freeViewCameraNode, "camera"), "setName:", [@"kSCNFreeViewCameraName" stringByAppendingString:@"Camera"]);
  if ([(SCNView *)[(SCNEventHandler *)self view] _showsAuthoringEnvironment])
  {
    [(SCNCamera *)[(SCNNode *)self->_freeViewCameraNode camera] setAutomaticallyAdjustsZRange:1];
    v18 = [(SCNCamera *)[(SCNNode *)self->_freeViewCameraNode camera] cameraRef];
    *(v18 + 64) |= 4u;
  }

  v19 = [(SCNScene *)[(SCNView *)[(SCNEventHandler *)self view] scene] sceneRef];
  if (v19)
  {
    v20 = v19;
    if (!C3DGetSceneRef([(SCNNode *)self->_freeViewCameraNode nodeRef]))
    {
      C3DAddSceneRef([(SCNNode *)self->_freeViewCameraNode nodeRef], v20);
    }
  }

  [(SCNCameraControlEventHandler *)self viewedObjectSphere];
  *&self->_cameraTarget.x = v21;
  self->_cameraTarget.z = v22;
}

- (void)_installFreeViewCameraIfNeeded
{
  if ([(SCNEventHandler *)self enableFreeCamera])
  {
    v3 = [(SCNView *)[(SCNEventHandler *)self view] renderer];
    if ([v3 pointOfView] != self->_freeViewCameraNode)
    {
      +[SCNTransaction begin];
      [SCNTransaction setDisableActions:1];
      [v3 setPointOfView:self->_freeViewCameraNode];
      [(SCNCameraControlEventHandler *)self updateBrowseScaleFactor];

      +[SCNTransaction commit];
    }
  }
}

- (void)_switchToFreeViewCamera
{
  if ([(SCNEventHandler *)self enableFreeCamera]&& ![(SCNCameraControlEventHandler *)self _freeCameraActivated])
  {
    +[SCNTransaction begin];
    [SCNTransaction setDisableActions:1];
    [(SCNCameraControlEventHandler *)self _prepareFreeViewCamera];
    [(SCNCameraControlEventHandler *)self _installFreeViewCameraIfNeeded];

    +[SCNTransaction commit];
  }
}

- (SCNVector3)cameraAutomaticTargetPoint
{
  if ((*(self + 312) & 4) == 0)
  {
    [(SCNCameraControlEventHandler *)self computeAutomaticTargetPoint];
  }

  x = self->_autoCameraTarget.x;
  y = self->_autoCameraTarget.y;
  z = self->_autoCameraTarget.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (void)computeAutomaticTargetPoint
{
  *(self + 312) |= 4u;
  v3 = [-[SCNView renderer](-[SCNEventHandler view](self "view")];
  [(SCNCameraControlEventHandler *)self _browseScale];
  v5 = v4;
  [(SCNCameraControlEventHandler *)self frontVector];
  v22 = v6;
  v7 = [v3 presentationInstance];
  LODWORD(v8) = 0;
  LODWORD(v9) = 0;
  LODWORD(v10) = 0;
  [v7 convertPosition:0 toNode:{v8, v9, v10}];
  v24 = v12;
  v25 = v11;
  v23 = v13;
  if ((*(self + 312) & 0x10) != 0)
  {
    v17 = v22;
  }

  else
  {
    [(SCNCameraControlEventHandler *)self viewedObjectSphere];
    v14 = v25;
    v14.i32[1] = v24;
    v14.f32[2] = v23;
    v16 = vsubq_f32(v15, v14);
    v17 = v22;
    v18 = vmulq_f32(v22, v16);
    if ((v18.f32[2] + vaddv_f32(*v18.f32)) > 0.5)
    {
      v19 = vmulq_f32(v16, v16);
      v5 = sqrtf(v19.f32[2] + vaddv_f32(*v19.f32));
    }
  }

  v20 = v5;
  *&self->_autoCameraTarget.x = vadd_f32(__PAIR64__(v24, v25.u32[0]), COERCE_FLOAT32X2_T(C3DVector3Rescale(v17, v20)));
  self->_autoCameraTarget.z = v23 + v21;
}

- (void)_resetBrowseScaleFactor
{
  self->_browseScaleFactor = 1.0;
  v3 = [-[SCNView renderer](-[SCNEventHandler view](self "view")];
  if (v3)
  {
    v4 = [v3 presentationNode];
    if (v4)
    {
      [v4 worldTransform];
      v5 = 0u;
      v6 = vext_s8(0, *&vextq_s8(v5, v5, 8uLL), 4uLL);
    }

    else
    {
      v6 = 0;
      v5.i32[0] = 0;
      v5.i32[3] = 0;
    }

    *&v5.i32[1] = v6;
    v7 = vmulq_f32(v5, v5);
    self->_browseScaleFactor = sqrtf(v7.f32[2] + vaddv_f32(*v7.f32));
  }
}

- (void)updateBrowseScaleFactor
{
  if ((*(self + 312) & 2) != 0)
  {
    [(SCNCameraControlEventHandler *)self cameraAutomaticTargetPoint];
  }

  else
  {
    [(SCNCameraControlEventHandler *)self cameraTarget];
  }

  v9 = [-[SCNView renderer](-[SCNEventHandler view](self view];
  v10 = [v9 presentationNode];
  if (v10)
  {
    [v10 worldTransform];
    v11 = 0u;
    v12 = vext_s8(0, *&vextq_s8(v11, v11, 8uLL), 4uLL);
  }

  else
  {
    v11.i32[0] = 0;
    v11.i32[3] = 0;
    v12 = 0;
  }

  v13 = v20;
  v13.i32[1] = v18;
  v13.i32[2] = v19;
  *&v11.i32[1] = v12;
  v14 = vsubq_f32(v11, v13);
  v15 = vmulq_f32(v14, v14);
  v16 = sqrtf(v15.f32[2] + vaddv_f32(*v15.f32));
  v17 = v16;
  if (v16 <= 0.1)
  {
    v16 = 0.1;
  }

  self->_browseScaleFactor = v16;
  +[SCNTransaction begin];
  [SCNTransaction setAnimationDuration:0.0];
  [objc_msgSend(v9 "camera")];
  +[SCNTransaction commit];
}

- (void)rotateOf:(double)a3
{
  if (self->super._autoSwitchToFreeCamera)
  {
    [(SCNCameraControlEventHandler *)self _switchToFreeViewCamera];
  }

  *(self + 313) &= ~1u;
  v5 = [-[SCNView renderer](-[SCNEventHandler view](self "view")];
  if (v5)
  {
    v6 = v5;
    memset(v14, 0, sizeof(v14));
    memset(v13, 0, sizeof(v13));
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    [v5 transform];
    C3DMatrix4x4FromSCNMatrix4(v14, &v9);
    v7 = a3 * -3.14159265 / 180.0;
    C3DMatrix4x4MakeRotationZ(v13, v7);
    C3DMatrix4x4Mult(v13, v14, v14);
    C3DMatrix4x4ToSCNMatrix4(v14, &v9);
    v8[0] = v9;
    v8[1] = v10;
    v8[2] = v11;
    v8[3] = v12;
    [v6 setTransform:v8];
  }
}

- (void)zoomBy:(float)a3 animate:(BOOL)a4
{
  v4 = a4;
  if (self->super._autoSwitchToFreeCamera)
  {
    [(SCNCameraControlEventHandler *)self _switchToFreeViewCamera];
  }

  v7 = [-[SCNView renderer](-[SCNEventHandler view](self "view")];
  if (v7)
  {
    v8 = v7;
    memset(v21, 0, sizeof(v21));
    memset(v20, 0, sizeof(v20));
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    [v7 transform];
    v9.n128_u64[0] = 0;
    v9.n128_u32[3] = 0;
    v9.n128_f32[2] = a3 * -100.0;
    v15 = v9;
    C3DMatrix4x4MakeTranslation(v21, &v15);
    C3DMatrix4x4FromSCNMatrix4(v20, &v16);
    v10 = C3DMatrix4x4Mult(v21, v20, v21);
    if (v4)
    {
      +[SCNTransaction begin];
      [SCNTransaction setAnimationDuration:0.3];
      C3DMatrix4x4ToSCNMatrix4(v21, &v16);
      v11 = v16;
      v12 = v17;
      v13 = v18;
      v14 = v19;
      [v8 setTransform:&v11];
      +[SCNTransaction commit];
    }

    else
    {
      C3DMatrix4x4ToSCNMatrix4(v21, &v16);
      v11 = v16;
      v12 = v17;
      v13 = v18;
      v14 = v19;
      [v8 setTransform:&v11];
    }
  }
}

- (void)setZoomFactor:(double)a3
{
  if (self->_zoomFactor == a3)
  {
    return;
  }

  if (self->super._autoSwitchToFreeCamera)
  {
    [(SCNCameraControlEventHandler *)self _switchToFreeViewCamera];
  }

  v5 = [-[SCNView renderer](-[SCNEventHandler view](self "view")];
  if ([objc_msgSend(v5 "camera")])
  {
    zoomFactor = self->_zoomFactor;
    if (zoomFactor != 0.0)
    {
      originalOrthoScale = self->_originalOrthoScale;
      [(SCNCameraControlEventHandler *)self viewedObjectSphere];
      v9 = v8;
      if (v8 == 0.0)
      {
        return;
      }

      v10 = (originalOrthoScale / zoomFactor);
      [(SCNView *)[(SCNEventHandler *)self view] bounds];
      v12 = v11;
      [(SCNView *)[(SCNEventHandler *)self view] bounds];
      v14 = v9;
      v15 = v14 + v14;
      v16 = self->_originalOrthoScale;
      if (v14 + v14 <= v16)
      {
        v15 = self->_originalOrthoScale;
      }

      if (v15 <= v10)
      {
        if (self->_zoomFactor >= a3)
        {
          return;
        }
      }

      else
      {
        v17 = v14 * 0.1;
        v18 = v13;
        v19 = v12;
        if (v18 >= v19)
        {
          v20 = v12;
        }

        else
        {
          v20 = v18;
        }

        v21 = v20;
        if (v18 < v19)
        {
          v18 = v12;
        }

        v22 = v17 * (v21 / fmax(v18, 1.0));
        if (v22 <= v16)
        {
          v16 = v22;
        }

        if (v16 >= v10)
        {
          if (self->_zoomFactor <= a3)
          {
            return;
          }
        }

        else
        {
          [objc_msgSend(v5 "camera")];
        }
      }
    }

LABEL_31:
    v32 = a3;
    self->_zoomFactor = v32;
    return;
  }

  originalFovX = self->_originalFovX;
  v24 = tan(originalFovX * 0.0174532925 * 0.5);
  v25 = atan(v24 / a3);
  v26 = (v25 + v25) / 3.14159265 * 180.0;
  originalFovY = self->_originalFovY;
  v28 = tan(originalFovY * 0.0174532925 * 0.5);
  v29 = atan(v28 / a3);
  if ((v26 > 1.0 || originalFovX <= 0.0) && v26 < 120.0)
  {
    v30 = (v29 + v29) / 3.14159265 * 180.0;
    if ((v30 > 1.0 || originalFovY <= 0.0) && v30 < 120.0)
    {
      if (v5)
      {
        v31 = v30;
        [objc_msgSend(v5 "camera")];
        [objc_msgSend(v5 "camera")];
      }

      goto LABEL_31;
    }
  }
}

- (void)translateByX:(float)a3 Y:(float)a4 Z:(float)a5
{
  v18 = *&a4;
  v20 = *&a3;
  if (self->super._autoSwitchToFreeCamera)
  {
    [(SCNCameraControlEventHandler *)self _switchToFreeViewCamera];
  }

  v7 = [-[SCNView renderer](-[SCNEventHandler view](self view];
  if (v7)
  {
    v8 = v7;
    [(SCNCameraControlEventHandler *)self cameraAutomaticTargetPoint];
    memset(&v24, 0, sizeof(v24));
    [v8 transform];
    [(SCNCameraControlEventHandler *)self _translationCoef];
    browseScaleFactor = self->_browseScaleFactor;
    v11 = 0.0;
    if (browseScaleFactor < 100000.0 || a5 >= 0.0)
    {
      v11 = a5;
    }

    v13 = browseScaleFactor;
    v14 = v11 > 0.0 && v13 < 0.1;
    a.m11 = 1.0;
    v15 = vneg_f32(__PAIR64__(LODWORD(v19), LODWORD(v20)));
    v16 = -v11;
    *&a.m14 = 0;
    *&a.m12 = 0;
    a.m22 = 1.0;
    if (v14)
    {
      v16 = -0.0;
    }

    *&a.m23 = 0;
    *&a.m31 = 0;
    *&a.m33 = 1065353216;
    *&a.m41 = vmul_n_f32(v15, v9);
    a.m43 = v9 * v16;
    a.m44 = 1.0;
    b = v24;
    SCNMatrix4Mult(&v23, &a, &b);
    v24 = v23;
    [v8 setTransform:&v23];
    v17 = v20;
    if (*&v20 != 0.0 || (v17 = v19, *&v19 != 0.0))
    {
      [(SCNCameraControlEventHandler *)self invalidateCameraTarget];
    }

    [(SCNCameraControlEventHandler *)self focusNode:0, v17];
    [(SCNCameraControlEventHandler *)self updateBrowseScaleFactor];
  }
}

- (void)sceneWillChange
{
  *(self + 304) &= ~1u;
  *(self + 313) &= ~1u;
  [(SCNCameraControlEventHandler *)self _resetFreeViewCamera];

  [(SCNCameraControlEventHandler *)self _setInertiaRunning:0];
}

- (void)sceneDidChange
{
  [(SCNCameraControlEventHandler *)self invalidateCameraTarget];

  [(SCNCameraControlEventHandler *)self _resetBrowseScaleFactor];
}

- (void)cameraDidChange
{
  [(SCNCameraControlEventHandler *)self _resetBrowseScaleFactor];

  [(SCNCameraControlEventHandler *)self invalidateCameraTarget];
}

- (void)_onInertiaTimer
{
  v3 = CACurrentMediaTime();
  lastSimulationTime = self->_lastSimulationTime;
  v5 = ((v3 - lastSimulationTime) * 60.0);
  self->_lastSimulationTime = lastSimulationTime + v5 / 60.0;
  if (v5 >= 1)
  {
    p_inertiaVelocity = &self->_inertiaVelocity;
    do
    {
      friction = self->_friction;
      x = p_inertiaVelocity->x;
      y = self->_inertiaVelocity.y;
      if (friction != 0.0)
      {
        x = (1.0 - friction) * x;
        p_inertiaVelocity->x = x;
        y = y * (1.0 - self->_friction);
        self->_inertiaVelocity.y = y;
      }

      v10 = y + self->_totalDragWithInertia.y;
      self->_totalDragWithInertia.x = x + self->_totalDragWithInertia.x;
      self->_totalDragWithInertia.y = v10;
      --v5;
    }

    while (v5);
  }

  +[SCNTransaction begin];
  [SCNTransaction setDisableActions:1];
  [(SCNCameraControlEventHandler *)self _rotateWithDrag:self->_browseMode mode:self->_stickyAxis stickyAxis:self->_totalDragWithInertia.x, self->_totalDragWithInertia.y];
  +[SCNTransaction commit];
  if (self->_inertiaVelocity.y * self->_inertiaVelocity.y + self->_inertiaVelocity.x * self->_inertiaVelocity.x < 0.001)
  {

    [(SCNCameraControlEventHandler *)self _setInertiaRunning:0];
  }
}

- (void)rotateWithVector:(int64_t)a3 mode:
{
  v13 = v3;
  v4 = [-[SCNView renderer](-[SCNEventHandler view](self view];
  v5 = v4;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  if (v4)
  {
    [v4 transform];
  }

  memset(v8, 0, sizeof(v8));
  C3DMatrix4x4FromSCNMatrix4(v8, &v9);
  memset(v7, 0, sizeof(v7));
  C3DMatrix4x4MakeEulerRotation(v7, &v13);
  C3DMatrix4x4Mult(v7, v8, v8);
  C3DMatrix4x4ToSCNMatrix4(v8, &v9);
  v6[0] = v9;
  v6[1] = v10;
  v6[2] = v11;
  v6[3] = v12;
  [v5 setTransform:v6];
}

- (void)viewWillDrawAtTime:(double)a3
{
  if ([(SCNCameraControlEventHandler *)self _isInertiaRunning])
  {

    [(SCNCameraControlEventHandler *)self _onInertiaTimer];
  }
}

- (void)_setInertiaRunning:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_stateLock);
  if (v3)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  *(self + 313) = *(self + 313) & 0xFB | v5;

  os_unfair_lock_unlock(&self->_stateLock);
}

- (BOOL)_isInertiaRunning
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = (*(self + 313) >> 2) & 1;
  os_unfair_lock_unlock(&self->_stateLock);
  return v3;
}

- (BOOL)wantsRedraw
{
  if ([(SCNCameraControlEventHandler *)self _isInertiaRunning])
  {
    return 1;
  }

  return [(SCNCameraControlEventHandler *)self _3DConnexionIsPressed];
}

- (void)endDraggingWithVelocity:(CGPoint)a3
{
  if ((*(self + 312) & 8) != 0)
  {
    v7 = fabs(a3.y);
    if (fabs(a3.x) >= 10.0 || v7 >= 10.0)
    {
      v18 = v3;
      y = a3.y;
      v11 = vdivq_f64(a3, xmmword_21C2A3CC0);
      self->_inertiaVelocity = v11;
      if (self->_friction == 0.0)
      {
        __asm
        {
          FMOV            V2.2D, #-20.0
          FMOV            V4.2D, #20.0
        }

        self->_inertiaVelocity = vbslq_s8(vcgtzq_f64(v11), vminnmq_f64(v11, _Q4), vbslq_s8(vcgtq_f64(_Q2, v11), _Q2, v11));
      }

      [(SCNCameraControlEventHandler *)self _setInertiaRunning:1, v4, v18, v5];
      self->_lastSimulationTime = CACurrentMediaTime();
      v17 = [(SCNEventHandler *)self view];

      [(SCNView *)v17 eventHandlerWantsRedraw];
    }
  }
}

- (void)_startBrowsingIfNeeded:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (self->super._autoSwitchToFreeCamera)
  {
    [(SCNCameraControlEventHandler *)self _switchToFreeViewCamera];
  }

  v6 = [-[SCNView renderer](-[SCNEventHandler view](self "view")];
  +[SCNTransaction begin];
  [SCNTransaction setDisableActions:1];
  if (self->super._autoSwitchToFreeCamera)
  {
    [(SCNCameraControlEventHandler *)self _prepareFreeViewCamera];
  }

  if ([(SCNNode *)v6 parentNode]|| v6 == self->_freeViewCameraNode)
  {
    v7 = [(SCNNode *)v6 presentationNode];
    [(SCNCamera *)[(SCNNode *)v7 camera] xFov];
    *&v8 = v8;
    self->_originalFovX = *&v8;
    [(SCNCamera *)[(SCNNode *)v7 camera] yFov];
    v10 = v9;
    self->_originalFovY = v10;
    if (v10 == 0.0 && self->_originalFovX == 0.0)
    {
      v10 = 60.0;
    }

    self->_originalFovY = v10;
    [(SCNCamera *)[(SCNNode *)v7 camera] orthographicScale];
    *&v12 = v12;
    self->_originalOrthoScale = *&v12;
    self->_zoomFactor = 1.0;
  }

  else
  {
    [(SCNCameraControlEventHandler *)self _installFreeViewCameraIfNeeded];
  }

  +[SCNTransaction commit];
  [(SCNCameraControlEventHandler *)self computeAutomaticTargetPoint];
  freeViewCameraNode = self->_freeViewCameraNode;
  if (freeViewCameraNode)
  {
    [(SCNNode *)freeViewCameraNode transform:0];
    C3DMatrix4x4FromSCNMatrix4(self->_initialMatrix.components, &v14);
    self->_initialPoint.x = x;
    self->_initialPoint.y = y;
    *(self + 313) &= ~1u;
  }
}

- (BOOL)computeBoundingSphereOmittingFloorsForNode:(__C3DNode *)a3 sphere:(C3DSphere *)a4
{
  *a4 = xmmword_21C280360;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__SCNCameraControlEventHandler_computeBoundingSphereOmittingFloorsForNode_sphere___block_invoke;
  v6[3] = &__block_descriptor_40_e20_q16__0____C3DNode__8l;
  v6[4] = a4;
  C3DNodeApplyHierarchy(a3, v6);
  return *(a4 + 3) >= 0.0;
}

uint64_t __82__SCNCameraControlEventHandler_computeBoundingSphereOmittingFloorsForNode_sphere___block_invoke(uint64_t a1, float32x4_t *a2)
{
  if (C3DNodeIsHidden(a2))
  {
    return 1;
  }

  if (!C3DNodeGetFloor(a2))
  {
    v11 = 0uLL;
    Geometry = C3DNodeGetGeometry(a2);
    if (Geometry)
    {
      if (C3DGetBoundingSphere(Geometry, 0, &v11))
      {
        WorldMatrix = C3DNodeGetWorldMatrix(a2);
        *&v7 = C3DSphereXFormMatrix4x4(&v11, WorldMatrix, &v11);
        C3DSphereMakeByMergingSpheres(*(a1 + 32), *(a1 + 32), &v11, v7, v8, v9, v10);
      }
    }
  }

  return 0;
}

- (__n128)viewedObjectSphere
{
  if ((a1[19].i8[0] & 1) == 0)
  {
    v15 = 0uLL;
    if (-[float32x4_t computeBoundingSphereOmittingFloorsForNode:sphere:](a1, "computeBoundingSphereOmittingFloorsForNode:sphere:", [objc_msgSend(objc_msgSend(-[float32x4_t view](a1 "view")], &v15))
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      C3DNodeComputeWorldMatrix([objc_msgSend(objc_msgSend(-[float32x4_t view](a1 "view")], &v11);
      v7 = v11;
      v8 = v12;
      v9 = v13;
      v10 = v14;
      *v2.i64 = C3DVector3MultMatrix4x4(&v7, v15);
      v3 = v15.u32[3];
      v2.i32[3] = v15.i32[3];
      v15 = v2;
      v2.i64[0] = 0;
      v2.i64[1] = v3;
      v7 = v11;
      v8 = v12;
      v9 = v13;
      v10 = v14;
      *v4.i64 = C3DVector3RotateAndScale(&v7, v2);
      v5 = vmulq_f32(v4, v4);
      v15.i32[3] = sqrtf(v5.f32[2] + vaddv_f32(*v5.f32));
      a1[18] = v15;
    }

    else
    {
      a1[18] = xmmword_21C27F610;
    }

    a1[19].i8[0] |= 1u;
  }

  return a1[18];
}

+ (double)frontVectorWithPointOfView:(void *)a3
{
  [objc_msgSend(a3 "camera")];
  *v4.i64 = C3DCameraGetFrontDirection();
  v7 = v4;
  v5 = 0uLL;
  memset(v13, 0, sizeof(v13));
  if (a3)
  {
    [a3 worldTransform];
    v5 = 0uLL;
  }

  v11 = v5;
  v12 = v5;
  v9 = v5;
  v10 = v5;
  C3DMatrix4x4FromSCNMatrix4(&v9, v13);
  v8[0] = v9;
  v8[1] = v10;
  v8[2] = v11;
  v8[3] = v12;
  return C3DVector3Rotate(v8, v7);
}

- (uint64_t)frontVector
{
  v1 = [objc_msgSend(objc_msgSend(a1 "view")];
  v2 = objc_opt_class();

  return [v2 frontVectorWithPointOfView:v1];
}

- (void)_beginTranslateAtLocation:(CGPoint)a3
{
  x = a3.x;
  y = a3.y;
  [(SCNView *)[(SCNEventHandler *)self view] bounds];
  v20 = v4;
  [(SCNView *)[(SCNEventHandler *)self view] bounds];
  v17 = v5;
  v6 = [-[SCNView renderer](-[SCNEventHandler view](self "view")];
  v7.f64[0] = v20;
  v7.f64[1] = v17;
  v21 = vcvt_hight_f32_f64(0, v7);
  v7.f64[0] = x;
  v7.f64[1] = y;
  v8 = vcvt_f32_f64(v7);
  [(SCNCameraControlEventHandler *)self viewedObjectSphere];
  *self->_clickOrigin = v9;
  [(SCNCameraControlEventHandler *)self frontVector];
  v25 = v10;
  v23 = 0u;
  v24 = 0u;
  v11 = [v6 nodeRef];
  v12 = [(SCNScene *)[(SCNView *)[(SCNEventHandler *)self view] scene] sceneRef];
  v13.n128_u64[0] = v8;
  _C3DHitTestComputeHitSegment(v11, v12, &v23, &v24, v21, v13);
  if (v14)
  {
    buf = 0uLL;
    C3DPlaneMakeWithVectors(&buf, self->_clickOrigin, &v25);
    if (!C3DIntersectionSegment3Plane(&v23, &buf, self->_clickOrigin))
    {
      *&v15 = C3DVector3MidVector(v23, v24);
      *self->_clickOrigin = v15;
    }
  }

  else
  {
    v16 = scn_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      buf.n128_u16[0] = 0;
      _os_log_impl(&dword_21BEF7000, v16, OS_LOG_TYPE_DEFAULT, "Warning: _beginTranslateAtLocation: invalid zRange", &buf, 2u);
    }
  }
}

+ (SCNMatrix4)matrixWithNoRoll:(SEL)a3
{
  memset(&v31, 0, sizeof(v31));
  memset(&v30, 0, sizeof(v30));
  C3DMatrix4x4FromSCNMatrix4(&v31, a4);
  C3DMatrix4x4Invert(&v31, &v30);
  v26 = v31.columns[0];
  v27 = v31.columns[1];
  v28 = v31.columns[2];
  v29 = v31.columns[3];
  *v6.i64 = C3DVector3Rotate(&v26, xmmword_21C27F8C0);
  v24 = v6;
  v26 = v31.columns[0];
  v27 = v31.columns[1];
  v28 = v31.columns[2];
  v29 = v31.columns[3];
  *v7.i64 = C3DVector3Rotate(&v26, xmmword_21C27F900);
  v8.i64[0] = 0;
  v9 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v8, vdupq_lane_s32(*v24.f32, 1)), 0), xmmword_21C27F9A0, xmmword_21C27F8C0);
  v10 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
  v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), vnegq_f32(v7)), v9, v10);
  v12 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
  v13 = vmlaq_f32(vmulq_f32(v10, vnegq_f32(v12)), v7, vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL));
  v14 = vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL);
  v15 = vmulq_f32(v13, v13);
  *v11.i32 = v15.f32[1] + (v15.f32[2] + v15.f32[0]);
  *v15.f32 = vrsqrte_f32(v11.u32[0]);
  *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v11.u32[0], vmul_f32(*v15.f32, *v15.f32)));
  v16 = vmulq_n_f32(v14, vmul_f32(*v15.f32, vrsqrts_f32(v11.u32[0], vmul_f32(*v15.f32, *v15.f32))).f32[0]);
  v17 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), vnegq_f32(v16)), v24, vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL));
  v18 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
  v19 = vmulq_f32(v17, v17);
  v10.f32[0] = v19.f32[1] + (v19.f32[2] + v19.f32[0]);
  *v19.f32 = vrsqrte_f32(v10.u32[0]);
  *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v19.f32, *v19.f32)));
  v25 = vmulq_n_f32(v18, vmul_f32(*v19.f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v19.f32, *v19.f32))).f32[0]);
  v20 = C3DVector3Angle(v16, v24);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  C3DMatrix4x4MakeAxisAngleRotation(&v26, &v25, v20);
  C3DMatrix4x4Mult(&v31, &v26, &v31);
  C3DMatrix4x4ToSCNMatrix4(&v31, a4);
  v22 = *&a4->m21;
  *&retstr->m11 = *&a4->m11;
  *&retstr->m21 = v22;
  v23 = *&a4->m41;
  *&retstr->m31 = *&a4->m31;
  *&retstr->m41 = v23;
  return result;
}

- (void)clearRoll
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [-[SCNView renderer](-[SCNEventHandler view](self "view")];
  if (v3)
  {
    [v3 worldTransform];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
  }

  v4 = objc_opt_class();
  if (v4)
  {
    v6[0] = v11;
    v6[1] = v12;
    v6[2] = v13;
    v6[3] = v14;
    [v4 matrixWithNoRoll:v6];
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v5 = [-[SCNView renderer](-[SCNEventHandler view](self "view")];
  v7 = v11;
  v8 = v12;
  v9 = v13;
  v10 = v14;
  [v5 setWorldTransform:&v7];
}

- (void)_rotateWithDrag:(CGPoint)a3 mode:(int64_t)a4 stickyAxis:(unint64_t)a5
{
  y = a3.y;
  x = a3.x;
  v64.i32[2] = 0;
  v64.i64[0] = 0;
  DWORD2(v63) = 0;
  *&v63 = 0;
  self->_totalDragWithInertia = a3;
  v10 = [-[SCNView renderer](-[SCNEventHandler view](self "view")];
  if ((*(self + 313) & 1) == 0)
  {
    *self->_upDir = xmmword_21C27F8C0;
    v11 = *&self->_initialMatrix.components[4];
    v59 = *self->_initialMatrix.components;
    v60 = v11;
    v12 = *&self->_initialMatrix.components[12];
    v61 = *&self->_initialMatrix.components[8];
    v62 = v12;
    *&v13 = C3DVector3Rotate(&v59, xmmword_21C27F8C0);
    *self->_upDir = v13;
    *(self + 313) |= 1u;
  }

  *(v58.i64 + 4) = 0;
  p_initialMatrix = &self->_initialMatrix;
  v58.i32[0] = 0;
  *&v15 = C3DMatrix4x4GetTranslation(&self->_initialMatrix, &v58).n128_u64[0];
  if (a4 == 1)
  {
    if ((*(self + 312) & 2) != 0)
    {
      [(SCNCameraControlEventHandler *)self cameraAutomaticTargetPoint];
    }

    else
    {
      [(SCNCameraControlEventHandler *)self cameraTarget];
    }

    v16.i32[1] = v17;
    v16.i32[2] = v18;
    v47 = v16;
    v21 = vsubq_f32(v16, v58);
  }

  else
  {
    v19 = *&self->_initialMatrix.components[4];
    v59 = *p_initialMatrix->components;
    v60 = v19;
    v20 = *&self->_initialMatrix.components[12];
    v61 = *&self->_initialMatrix.components[8];
    v62 = v20;
    *v21.i64 = C3DVector3Rotate(&v59, xmmword_21C27F900);
    x = -x;
    y = -y;
    v47 = 0u;
  }

  v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
  v23 = vnegq_f32(v21);
  v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*self->_upDir, *self->_upDir), *self->_upDir, 0xCuLL), v23), *self->_upDir, v22);
  v25 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
  v26 = vmulq_f32(v24, v24);
  v24.f32[0] = v26.f32[1] + (v26.f32[2] + v26.f32[0]);
  v26.i32[1] = 0;
  v27 = v24.u32[0];
  *v24.f32 = vrsqrte_f32(v24.u32[0]);
  *v24.f32 = vmul_f32(*v24.f32, vrsqrts_f32(v27, vmul_f32(*v24.f32, *v24.f32)));
  v28 = vmulq_n_f32(v25, vmul_f32(*v24.f32, vrsqrts_f32(v27, vmul_f32(*v24.f32, *v24.f32))).f32[0]);
  v64 = v28;
  if ((*(self + 313) & 2) != 0)
  {
    v62 = 0u;
    v63 = xmmword_21C27F9A0;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    *&v45 = C3DMatrix4x4MakeIdentity(&v59).n128_u64[0];
    if (a5 <= 1)
    {
      C3DMatrix4x4MakeAxisAngleRotation(&v59, &v64, y * -0.00872664626);
    }

    if ((a5 & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      C3DMatrix4x4MakeAxisAngleRotation(&v54, &v63, x * -0.00872664626);
      v45 = C3DMatrix4x4Mult(&v59, &v54, &v59);
    }
  }

  else
  {
    v29 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), v23), v28, v22);
    v30 = vmulq_f32(v29, v29);
    *&v31 = v30.f32[1] + (v30.f32[2] + v30.f32[0]);
    v32 = vrsqrte_f32(v31);
    v33 = vmul_f32(v32, vrsqrts_f32(v31, vmul_f32(v32, v32)));
    v34 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), vmul_f32(v33, vrsqrts_f32(v31, vmul_f32(v33, v33))).f32[0]);
    v62 = 0u;
    v63 = v34;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v35 = 0.0;
    if (a5 == 2)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = y;
    }

    if (a5 == 1)
    {
      v36 = y;
    }

    else
    {
      v35 = x;
    }

    *&v36 = v36;
    v37.f32[0] = v35;
    v38 = vmlsq_lane_f32(vmulq_n_f32(v28, v37.f32[0]), v34, *&v36, 0);
    v39 = vmulq_f32(v38, v38);
    *&v40 = v39.f32[2] + vaddv_f32(*v39.f32);
    *v39.f32 = vrsqrte_f32(v40);
    *v39.f32 = vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32)));
    v41 = vmulq_n_f32(v38, vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32))).f32[0]);
    v42 = vmlaq_f32(vmulq_f32(v22, vnegq_f32(v41)), v21, vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL));
    v43 = vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL);
    v44 = vmulq_f32(v42, v42);
    v26.f32[0] = v44.f32[1] + (v44.f32[2] + v44.f32[0]);
    *v44.f32 = vrsqrte_f32(*v26.f32);
    *v44.f32 = vmul_f32(*v44.f32, vrsqrts_f32(*v26.f32, vmul_f32(*v44.f32, *v44.f32)));
    v54 = vmulq_n_f32(v43, vmul_f32(*v44.f32, vrsqrts_f32(*v26.f32, vmul_f32(*v44.f32, *v44.f32))).f32[0]);
    v37.i32[1] = LODWORD(v36);
    C3DMatrix4x4MakeAxisAngleRotation(&v59, &v54, sqrtf(vaddv_f32(vmul_f32(v37, v37))) * 0.00872664626);
  }

  if (a4 == 2)
  {
    [(SCNCameraControlEventHandler *)self invalidateCameraTarget];
  }

  else
  {
    v58 = vsubq_f32(v58, v47);
    v54 = v59;
    v55 = v60;
    v56 = v61;
    v57 = v62;
    *v46.i64 = C3DVector3Rotate(&v54, v58);
    v58 = vaddq_f32(v47, v46);
  }

  C3DMatrix4x4Mult3x3(p_initialMatrix, &v59, &v59);
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  memset(v53, 0, sizeof(v53));
  C3DMatrix4x4MakeTranslation(v53, &v58);
  C3DMatrix4x4Mult(&v59, v53, &v54);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  C3DMatrix4x4ToSCNMatrix4(&v54, &v49);
  v48[0] = v49;
  v48[1] = v50;
  v48[2] = v51;
  v48[3] = v52;
  [v10 setTransform:v48];
}

- (void)_translateTo:(CGPoint)a3
{
  x = a3.x;
  y = a3.y;
  v38 = 0u;
  v39 = 0u;
  memset(v37, 0, sizeof(v37));
  *(v36.i64 + 4) = 0;
  v36.i32[0] = 0;
  v35 = 0uLL;
  v4 = [-[SCNView renderer](-[SCNEventHandler view](self "view")];
  [(SCNView *)[(SCNEventHandler *)self view] bounds];
  v17 = v5;
  [(SCNView *)[(SCNEventHandler *)self view] bounds];
  v6.f64[0] = v17;
  v6.f64[1] = v7;
  v18 = vcvt_hight_f32_f64(0, v6);
  v6.f64[0] = x;
  v6.f64[1] = y;
  v8 = vcvt_f32_f64(v6);
  v9 = [v4 nodeRef];
  v10 = [(SCNScene *)[(SCNView *)[(SCNEventHandler *)self view] scene] sceneRef];
  v11.n128_u64[0] = v8;
  _C3DHitTestComputeHitSegment(v9, v10, &v39, &v38, v18, v11);
  if (v12)
  {
    *(v34.i64 + 4) = 0;
    v34.i32[0] = 0;
    v13 = [v4 nodeRef];
    C3DNodeGetWorldPosition(v13, &v34);
    v38 = v34;
    [(SCNCameraControlEventHandler *)self frontVector];
    v33 = v14;
    C3DPlaneMakeWithVectors(&v35, self->_clickOrigin, &v33);
    if (C3DIntersectionRay3Plane(v37, &v35, &v36))
    {
      v32 = vnegq_f32(vsubq_f32(v36, *self->_clickOrigin));
      v30 = 0u;
      v31 = 0u;
      *buf = 0u;
      v29 = 0u;
      memset(v27, 0, sizeof(v27));
      C3DMatrix4x4MakeTranslation(buf, &v32);
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v15 = [v4 presentationNode];
      if (v15)
      {
        [v15 transform];
      }

      else
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
      }

      memset(v22, 0, sizeof(v22));
      C3DMatrix4x4FromSCNMatrix4(v22, &v23);
      C3DMatrix4x4Mult(v22, buf, v27);
      C3DMatrix4x4ToSCNMatrix4(v27, &v23);
      v21[0] = v23;
      v21[1] = v24;
      v21[2] = v25;
      v21[3] = v26;
      [v4 setTransform:v21];
      [(SCNCameraControlEventHandler *)self focusNode:0];
    }

    else
    {
      v16 = scn_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21BEF7000, v16, OS_LOG_TYPE_DEFAULT, "Warning: Warning: no C3DIntersectionRay3Plane", buf, 2u);
      }
    }
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  pressGesture = self->_pressGesture;
  if (pressGesture == a3 || pressGesture == a4)
  {
    return 1;
  }

  tapGesture = self->_tapGesture;
  panGesture = self->_panGesture;
  if (tapGesture == a3 && (panGesture == a4 || self->_pinchGesture == a4 || self->_rotateGesture == a4))
  {
    return 1;
  }

  if (tapGesture == a4 && panGesture == a3)
  {
    return 1;
  }

  return tapGesture == a4 && self->_pinchGesture == a3;
}

- (id)gestureRecognizers
{
  tapGesture = self->_tapGesture;
  if (tapGesture)
  {
    pressGesture = self->_pressGesture;
  }

  else
  {
    pressGesture = objc_alloc_init(MEMORY[0x277D75708]);
    [(UIGestureRecognizer *)pressGesture setMinimumPressDuration:0.0];
    v5 = objc_alloc_init(MEMORY[0x277D75B80]);
    v6 = objc_alloc_init(MEMORY[0x277D75848]);
    v7 = objc_alloc_init(MEMORY[0x277D757F8]);
    v8 = objc_alloc_init(MEMORY[0x277D75938]);
    [(UIGestureRecognizer *)v5 setNumberOfTapsRequired:2];
    [(UIGestureRecognizer *)v6 addTarget:self action:sel__handlePinch_];
    [(UIGestureRecognizer *)v7 addTarget:self action:sel__handlePan_];
    [(UIGestureRecognizer *)pressGesture addTarget:self action:sel__handlePress_];
    [(UIGestureRecognizer *)v8 addTarget:self action:sel__handleRotation_];
    [(UIGestureRecognizer *)v5 addTarget:self action:sel__handleDoubleTap_];
    [(UIGestureRecognizer *)pressGesture setDelegate:self];
    [(UIGestureRecognizer *)v7 setDelegate:self];
    [(UIGestureRecognizer *)v6 setDelegate:self];
    [(UIGestureRecognizer *)v8 setDelegate:self];
    [(UIGestureRecognizer *)v5 setDelegate:self];
    [(UIGestureRecognizer *)v6 setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)v8 setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)v7 setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)v5 setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)pressGesture setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)v6 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v8 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v7 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v5 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)pressGesture setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v6 setEnabled:[(SCNCameraControlEventHandler *)self enabled]];
    [(UIGestureRecognizer *)v8 setEnabled:[(SCNCameraControlEventHandler *)self enabled]];
    [(UIGestureRecognizer *)v7 setEnabled:[(SCNCameraControlEventHandler *)self enabled]];
    [(UIGestureRecognizer *)v5 setEnabled:[(SCNCameraControlEventHandler *)self enabled]];
    [(UIGestureRecognizer *)pressGesture setEnabled:[(SCNCameraControlEventHandler *)self enabled]];
    self->_tapGesture = v5;
    self->_panGesture = v7;
    self->_pinchGesture = v6;
    self->_rotateGesture = v8;
    self->_pressGesture = pressGesture;
    tapGesture = self->_tapGesture;
  }

  return [MEMORY[0x277CBEA60] arrayWithObjects:{pressGesture, self->_panGesture, tapGesture, self->_pinchGesture, self->_rotateGesture, 0}];
}

- (void)_handlePinch:(id)a3
{
  if (*(self + 312))
  {
    [(SCNCameraControlEventHandler *)self pinchWithGestureRecognizer:a3];
  }
}

- (void)_handlePan:(id)a3
{
  if (*(self + 312))
  {
    [(SCNCameraControlEventHandler *)self panWithGestureRecognizer:a3];
  }
}

- (void)_handleRotation:(id)a3
{
  if (*(self + 312))
  {
    [(SCNCameraControlEventHandler *)self rotateWithGestureRecognizer:a3];
  }
}

- (void)_handleDoubleTap:(id)a3
{
  if (*(self + 312))
  {
    v5 = [(SCNEventHandler *)self view:a3];

    [(SCNView *)v5 switchToNextCamera];
  }
}

- (void)beginGesture:(id)a3
{
  [(SCNCameraControlEventHandler *)self _setInertiaRunning:0];
  self->_isDraggingWithOneFinger = 0;
  self->_lastGestureFingerCount = 0;
  if ([a3 numberOfTouches])
  {
    [a3 locationOfTouch:0 inView:{-[SCNEventHandler view](self, "view")}];
    v6 = v5;
    v8 = v7;
    [(SCNView *)[(SCNEventHandler *)self view] bounds];
    v10 = v9 - v8;
  }

  else
  {
    v10 = 0.0;
    v6 = 0.0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_roll = 0.0;
    [(SCNCameraControlEventHandler *)self _startBrowsingIfNeeded:v6, v10];
    v11 = *&self->_initialMatrix.components[12];
    v13 = *self->_initialMatrix.components;
    v12 = *&self->_initialMatrix.components[4];
    *&self->_initialMatrixForRoll.components[9] = *&self->_initialMatrix.components[8];
    *&self->_initialMatrixForRoll.components[13] = v11;
    *&self->_initialMatrixForRoll.components[1] = v13;
    *&self->_initialMatrixForRoll.components[5] = v12;
    self->_browseMode = 3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SCNCameraControlEventHandler *)self _startBrowsingIfNeeded:v6, v10];
      if ((*(self + 312) & 0x20) != 0)
      {
        self->_browseMode = 4;
        [(SCNCameraControlEventHandler *)self _beginTranslateAtLocation:v6, v10];
      }

      self->_browseMode = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_initialZoom = self->_zoomFactor;
      }
    }
  }
}

- (void)rotateWithGestureRecognizer:(id)a3
{
  [(SCNCameraControlEventHandler *)self _setInertiaRunning:0];
  *(self + 313) &= ~1u;
  v5 = [-[SCNView renderer](-[SCNEventHandler view](self "view")];
  if (v5)
  {
    v6 = v5;
    memset(v13, 0, sizeof(v13));
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    [a3 rotation];
    *&v7 = v7;
    self->_roll = *&v7;
    C3DMatrix4x4MakeRotationZ(v13, *&v7);
    C3DMatrix4x4Mult(v13, &self->_initialMatrixForRoll.components[1], v13);
    C3DMatrix4x4ToSCNMatrix4(v13, &v9);
    v8[0] = v9;
    v8[1] = v10;
    v8[2] = v11;
    v8[3] = v12;
    [v6 setTransform:v8];
  }
}

- (void)pinchWithGestureRecognizer:(id)a3
{
  v4 = fmax(self->_initialZoom, 0.001);
  [a3 scale];
  v6 = v5 * v4;

  [(SCNCameraControlEventHandler *)self setZoomFactor:v6];
}

- (void)panWithGestureRecognizer:(id)a3
{
  v5 = [a3 numberOfTouches];
  if (self->_browseMode != 3)
  {
    v6 = v5;
    if ([a3 state] == 3)
    {
      if (self->_isDraggingWithOneFinger)
      {
        [a3 velocityInView:{-[SCNEventHandler view](self, "view")}];

        [(SCNCameraControlEventHandler *)self endDraggingWithVelocity:?];
      }
    }

    else
    {
      [a3 translationInView:{-[SCNEventHandler view](self, "view")}];
      switch(v6)
      {
        case 3:
          v18 = -v8;
          if (self->_lastGestureFingerCount != 3)
          {
            [(SCNCameraControlEventHandler *)self beginGesture:a3];
            self->_lastGestureFingerCount = 3;
          }

          [(SCNCameraControlEventHandler *)self _translationCoef];
          v19.n128_u64[0] = 0;
          memset(v30, 0, sizeof(v30));
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          *&v21 = v18 * v20;
          v19.n128_u64[1] = v21;
          v25 = v19;
          C3DMatrix4x4MakeTranslation(v30, &v25);
          v22 = [-[SCNView renderer](-[SCNEventHandler view](self view];
          C3DMatrix4x4ToSCNMatrix4(v30, &v26);
          v24[0] = v26;
          v24[1] = v27;
          v24[2] = v28;
          v24[3] = v29;
          [v22 setTransform:v24];
          break;
        case 2:
          if (self->_lastGestureFingerCount != 2)
          {
            [(SCNCameraControlEventHandler *)self beginGesture:a3];
            self->_lastGestureFingerCount = 2;
          }

          [a3 locationOfTouch:0 inView:{-[SCNEventHandler view](self, "view")}];
          v14 = v13;
          v16 = v15;
          [(SCNView *)[(SCNEventHandler *)self view] bounds];

          [(SCNCameraControlEventHandler *)self _translateTo:v14, v17 - v16];
          break;
        case 1:
          if (self->_lastGestureFingerCount == 1)
          {
            self->_isDraggingWithOneFinger = 1;
            v9 = v7 + v7;
            browseMode = self->_browseMode;
            stickyAxis = self->_stickyAxis;
            v12 = v8 * -2.0;

            [(SCNCameraControlEventHandler *)self _rotateWithDrag:browseMode mode:stickyAxis stickyAxis:v9, v12];
          }

          else
          {
            [(SCNCameraControlEventHandler *)self beginGesture:a3];
            v23 = [(SCNEventHandler *)self view];
            [a3 setTranslation:v23 inView:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
            self->_lastGestureFingerCount = 1;
          }

          break;
      }
    }
  }
}

@end