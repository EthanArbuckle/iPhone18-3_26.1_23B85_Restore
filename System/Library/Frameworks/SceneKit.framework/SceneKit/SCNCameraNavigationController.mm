@interface SCNCameraNavigationController
- ($0B194710A4D1BCC9074A0631D7052F72)_sceneBoundingSphere;
- (BOOL)_computeBoundingSphereOmittingFloorsForNode:(__C3DNode *)node sphere:(C3DSphere *)sphere;
- (BOOL)_pointOfViewUsesOrthographicProjection;
- (BOOL)enableInertia;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)wantsRedraw;
- (SCNCameraNavigationController)initWithView:(id)view;
- (SCNVector3)cameraAutomaticTargetPoint;
- (SCNVector3)cameraTarget;
- (SCNVector3)gimbalLockVector;
- (double)_modeSensitivity;
- (double)zoomFactor;
- (float)_cappedTranslationDelta:(float)delta;
- (float)_orthographicZoomFactorForProposedZoomFactor:(float)factor;
- (float)_pointOfViewOrthographicScale;
- (float)_targetDistance;
- (float)_translationCoef;
- (id).cxx_construct;
- (id)gestureRecognizers;
- (id)pointOfView;
- (uint64_t)worldFront;
- (unint64_t)_effectiveStickyAxis;
- (void)__didChangePointOfView;
- (void)__willChangePointOfView;
- (void)_computeAutomaticTargetPointIfNeeded;
- (void)_computeStickyAxisIfNeeded:(CGPoint)needed;
- (void)_computeTranslationOrigin3DFromPoint:(CGPoint)point;
- (void)_defaultTargetForScene:(void *)scene;
- (void)_handleDoubleTap:(id)tap;
- (void)_handlePan:(id)pan;
- (void)_handlePinch:(id)pinch;
- (void)_handleRotation:(id)rotation;
- (void)_installFreeViewCameraIfNeeded;
- (void)_prepareFreeViewCamera;
- (void)_resetFreeViewCamera;
- (void)_setPointOfViewOrthographicScale:(float)scale;
- (void)_setupUpVector;
- (void)_startBrowsingIfNeeded:(CGPoint)needed;
- (void)_stopInertia;
- (void)_switchToFreeViewCamera;
- (void)_translateToViewPoint:(CGPoint)point;
- (void)_willBeginInteraction;
- (void)beginGesture:(id)gesture;
- (void)cameraDidChange;
- (void)dealloc;
- (void)focusNode:(id)node;
- (void)focusNodes:(id)nodes;
- (void)panWithGestureRecognizer:(id)recognizer;
- (void)pinchWithGestureRecognizer:(id)recognizer;
- (void)rotateOf:(double)of;
- (void)rotateWithGestureRecognizer:(id)recognizer;
- (void)sceneDidChange;
- (void)sceneWillChange;
- (void)setAutomaticCameraTarget:(BOOL)target;
- (void)setCameraTarget:(SCNVector3)target;
- (void)setEnableFreeCamera:(BOOL)camera;
- (void)setEnableInertia:(BOOL)inertia;
- (void)setEnabled:(BOOL)enabled;
- (void)setFriction:(double)friction;
- (void)setGimbalLockMode:(BOOL)mode;
- (void)setGimbalLockVector:(SCNVector3)vector;
- (void)setZoomFactor:(double)factor;
- (void)translateByX:(float)x Y:(float)y Z:(float)z;
- (void)viewWillDrawAtTime:(double)time;
- (void)zoomBy:(float)by animate:(BOOL)animate;
@end

@implementation SCNCameraNavigationController

- (id).cxx_construct
{
  *(self + 48) = 0;
  *(self + 49) = 0;
  *(self + 47) = self + 384;
  *(self + 25) = 0u;
  *(self + 26) = 0u;
  *(self + 27) = 0u;
  *(self + 28) = 0u;
  *(self + 29) = 0u;
  *(self + 30) = 0u;
  return self;
}

- (void)sceneDidChange
{
  [(SCNCameraNavigationController *)self invalidateCameraTarget];
  v3 = [-[SCNView renderer](-[SCNCameraNavigationController view](self "view")];
  if (v3)
  {
    [(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] setPointOfView:v3];
    self->_cameraTargetComputed = 0;
    [(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] setSimdTarget:0.0];

    [(SCNCameraNavigationController *)self _computeAutomaticTargetPointIfNeeded];
  }
}

- (void)cameraDidChange
{
  -[SCNCameraController setPointOfView:](-[SCNCameraNavigationController cameraController](self, "cameraController"), "setPointOfView:", [-[SCNView renderer](-[SCNCameraNavigationController view](self "view")]);

  [(SCNCameraNavigationController *)self _setupUpVector];
}

- (void)_setupUpVector
{
  v3 = [(SCNScene *)[(SCNView *)[(SCNCameraNavigationController *)self view] scene] attributeForKey:@"kSceneUpAxisAttributeKey"];
  if (v3)
  {
    [v3 SCNVector3Value];
    v43 = v5;
    v44 = v6;
    v45 = v7;
  }

  else
  {
    v4.i32[0] = 1.0;
    v44 = *v4.i64;
    v45 = 0.0;
    v4.i64[0] = 0;
    v43 = v4;
  }

  [-[SCNCameraNavigationController pointOfView](self "pointOfView")];
  v10.i32[1] = v8;
  v10.i32[2] = v9;
  v11 = 2;
  if (*&v44 == 0.0)
  {
    v11 = 1;
  }

  v46 = v10;
  *(&v46 | (4 * v11)) = 0;
  if (fabsf(v46.f32[0]) < 0.001 && fabsf(v46.f32[2]) < 0.001 && fabsf(v46.f32[1]) < 0.001)
  {
    delegate = self->_delegate;
LABEL_14:

    [(SCNCameraNavigationControllerDelegate *)delegate setUp:?];
    return;
  }

  v13 = vmulq_f32(v46, v46);
  v13.f32[0] = v13.f32[2] + vaddv_f32(*v13.f32);
  v14 = vdupq_lane_s32(*v13.f32, 0);
  v15 = vrsqrteq_f32(v14);
  v16 = vmulq_f32(v15, vrsqrtsq_f32(v14, vmulq_f32(v15, v15)));
  v17 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v13.f32[0] != 0.0)), 0x1FuLL));
  v17.i32[3] = 0;
  v19 = v43;
  v19.i32[1] = LODWORD(v44);
  v18 = vbslq_s8(vcltzq_s32(v17), vmulq_f32(v46, vmulq_f32(v16, vrsqrtsq_f32(v14, vmulq_f32(v16, v16)))), v46);
  v19.i32[2] = LODWORD(v45);
  v20 = vmulq_f32(v19, v18);
  v21 = v20.f32[2] + vaddv_f32(*v20.f32);
  if (fabsf(v21) > 0.99)
  {
    delegate = self->_delegate;
    goto LABEL_14;
  }

  v22 = vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL);
  v23 = vmlaq_f32(vmulq_f32(v22, vnegq_f32(v18)), v19, vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL));
  v24 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
  v25 = vmulq_f32(v18, v18);
  v26 = vmulq_f32(v19, v19);
  *v25.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v26, v26, 8uLL), *&vextq_s8(v25, v25, 8uLL)), vadd_f32(vzip1_s32(*v26.i8, *v25.i8), vzip2_s32(*v26.i8, *v25.i8)));
  v24.f32[3] = v21 + sqrtf(vmul_lane_f32(*v25.i8, *v25.i8, 1).f32[0]);
  v27 = vmulq_f32(v24, v24);
  *v27.i8 = vadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
  v28 = vdupq_lane_s32(vadd_f32(*v27.i8, vdup_lane_s32(*v27.i8, 1)), 0);
  v29 = vrsqrteq_f32(v28);
  v30 = vmulq_f32(v29, vrsqrtsq_f32(v28, vmulq_f32(v29, v29)));
  v31 = vbslq_s8(vceqzq_f32(v28), v24, vmulq_f32(v24, vmulq_f32(v30, vrsqrtsq_f32(v28, vmulq_f32(v30, v30)))));
  v32 = vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL);
  v33 = vnegq_f32(v31);
  v34 = vmlaq_f32(vmulq_f32(v22, v33), v19, v32);
  v35 = vaddq_f32(v34, v34);
  v36 = vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL);
  v37 = vmlaq_laneq_f32(v19, v36, v31, 3);
  v38 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), v33), v36, v32);
  v42 = vaddq_f32(v37, vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL));
  [-[SCNCameraNavigationController pointOfView](self "pointOfView")];
  v40 = vmulq_f32(v39, v42);
  if (fabsf(v40.f32[2] + vaddv_f32(*v40.f32)) > 0.70711)
  {
    delegate = self->_delegate;
    goto LABEL_14;
  }

  v41 = self->_delegate;

  [(SCNCameraNavigationControllerDelegate *)v41 setSimdUp:*v42.i64];
}

- (id)pointOfView
{
  cameraController = [(SCNCameraNavigationController *)self cameraController];

  return [(SCNCameraController *)cameraController pointOfView];
}

- (id)gestureRecognizers
{
  tapGesture = self->_tapGesture;
  if (tapGesture)
  {
    pressGesture = self->_pressGesture;
    pinchGesture = self->_pinchGesture;
    panGesture = self->_panGesture;
    rotateGesture = self->_rotateGesture;
  }

  else
  {
    pressGesture = objc_alloc_init(MEMORY[0x277D75708]);
    [(UIGestureRecognizer *)pressGesture setMinimumPressDuration:0.0];
    tapGesture = objc_alloc_init(MEMORY[0x277D75B80]);
    pinchGesture = objc_alloc_init(MEMORY[0x277D75848]);
    panGesture = objc_alloc_init(MEMORY[0x277D757F8]);
    [(UIGestureRecognizer *)panGesture setAllowedScrollTypesMask:3];
    rotateGesture = objc_alloc_init(MEMORY[0x277D75938]);
    [(UIGestureRecognizer *)tapGesture setNumberOfTapsRequired:2];
    [(UIGestureRecognizer *)pinchGesture addTarget:self action:sel__handlePinch_];
    [(UIGestureRecognizer *)panGesture addTarget:self action:sel__handlePan_];
    [(UIGestureRecognizer *)pressGesture addTarget:self action:sel__handlePress_];
    [(UIGestureRecognizer *)rotateGesture addTarget:self action:sel__handleRotation_];
    [(UIGestureRecognizer *)tapGesture addTarget:self action:sel__handleDoubleTap_];
    [(UIGestureRecognizer *)pressGesture setDelegate:self];
    [(UIGestureRecognizer *)panGesture setDelegate:self];
    [(UIGestureRecognizer *)pinchGesture setDelegate:self];
    [(UIGestureRecognizer *)rotateGesture setDelegate:self];
    [(UIGestureRecognizer *)tapGesture setDelegate:self];
    [(UIGestureRecognizer *)pinchGesture setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)rotateGesture setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)panGesture setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)tapGesture setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)pressGesture setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)pinchGesture setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)rotateGesture setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)panGesture setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)tapGesture setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)pressGesture setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)pinchGesture setEnabled:[(SCNCameraNavigationController *)self enabled]];
    [(UIGestureRecognizer *)rotateGesture setEnabled:[(SCNCameraNavigationController *)self enabled]];
    [(UIGestureRecognizer *)panGesture setEnabled:[(SCNCameraNavigationController *)self enabled]];
    [(UIGestureRecognizer *)tapGesture setEnabled:[(SCNCameraNavigationController *)self enabled]];
    [(UIGestureRecognizer *)pressGesture setEnabled:[(SCNCameraNavigationController *)self enabled]];
    self->_pinchGesture = pinchGesture;
    self->_panGesture = panGesture;
    self->_rotateGesture = rotateGesture;
    self->_pressGesture = pressGesture;
    self->_tapGesture = tapGesture;
  }

  return [MEMORY[0x277CBEA60] arrayWithObjects:{pressGesture, panGesture, tapGesture, pinchGesture, rotateGesture, 0}];
}

- (SCNCameraNavigationController)initWithView:(id)view
{
  v8.receiver = self;
  v8.super_class = SCNCameraNavigationController;
  v4 = [(SCNCameraNavigationController *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_freeViewCameraNode = view;
    v4->_delegate = objc_alloc_init(SCNCameraController);
    -[SCNCameraNavigationControllerDelegate setPointOfView:](v5->_delegate, "setPointOfView:", [view pointOfView]);
    [(SCNCameraNavigationControllerDelegate *)v5->_delegate setInertiaEnabled:1];
    if (C3DWasLinkedBeforeMajorOSYear2017())
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    [(SCNCameraNavigationControllerDelegate *)v5->_delegate setInteractionMode:v6];
    [(SCNCameraNavigationControllerDelegate *)v5->_delegate setDrivenByDefaultNavigationCameraController:1];
    [(SCNCameraNavigationControllerDelegate *)v5->_delegate setDelegate:v5];
    LODWORD(v5->_keyboard.keyCodeConfiguration) = 0;
    v5->_drawAtTimeLock._os_unfair_lock_opaque = 0;
    v5->_orthographicZoomFactor = 1.0;
    WORD1(v5->_cameraController) = 257;
    v5->_translationAllowed = 1;
    BYTE1(v5->_inertia.lastDragLocation.x) = C3DWasLinkedBeforeMajorOSYear2017();
    *&v5->_pinchShouldMoveCamera = 257;
    *&v5->_flyModeVelocity = xmmword_21C2A3CD0;
    *&v5->_truckSensitivity = xmmword_21C2A3CE0;
    [(SCNCameraNavigationController *)v5 sceneDidChange];
    [(SCNCameraNavigationController *)v5 cameraDidChange];
  }

  return v5;
}

- (void)dealloc
{
  [(SCNCameraNavigationControllerDelegate *)self->_delegate setDelegate:0];

  v3.receiver = self;
  v3.super_class = SCNCameraNavigationController;
  [(SCNCameraNavigationController *)&v3 dealloc];
}

- (void)setEnabled:(BOOL)enabled
{
  v14 = *MEMORY[0x277D85DE8];
  self->_enabled = enabled;
  gestureRecognizers = [(SCNCameraNavigationController *)self gestureRecognizers];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [gestureRecognizers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(gestureRecognizers);
        }

        [*(*(&v9 + 1) + 8 * v8++) setEnabled:self->_enabled];
      }

      while (v6 != v8);
      v6 = [gestureRecognizers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)enableInertia
{
  cameraController = [(SCNCameraNavigationController *)self cameraController];

  return [(SCNCameraController *)cameraController inertiaEnabled];
}

- (void)setEnableInertia:(BOOL)inertia
{
  inertiaCopy = inertia;
  cameraController = [(SCNCameraNavigationController *)self cameraController];

  [(SCNCameraController *)cameraController setInertiaEnabled:inertiaCopy];
}

- (void)setFriction:(double)friction
{
  frictionCopy = friction;
  cameraController = [(SCNCameraNavigationController *)self cameraController];
  *&v5 = frictionCopy;

  [(SCNCameraController *)cameraController setInertiaFriction:v5];
}

- (void)setAutomaticCameraTarget:(BOOL)target
{
  if (BYTE1(self->_inertia.lastDragLocation.x) != target)
  {
    BYTE1(self->_inertia.lastDragLocation.x) = target;
    [(SCNCameraNavigationController *)self invalidateCameraTarget];
  }
}

- (SCNVector3)cameraTarget
{
  [(SCNCameraNavigationController *)self _computeAutomaticTargetPointIfNeeded];
  cameraController = [(SCNCameraNavigationController *)self cameraController];

  [(SCNCameraController *)cameraController target];
  result.z = v6;
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)setCameraTarget:(SCNVector3)target
{
  z = target.z;
  y = target.y;
  x = target.x;
  [(SCNCameraNavigationController *)self setAutomaticCameraTarget:0];
  cameraController = [(SCNCameraNavigationController *)self cameraController];
  *&v8 = x;
  *&v9 = y;
  *&v10 = z;

  [(SCNCameraController *)cameraController setTarget:v8, v9, v10];
}

- (void)setGimbalLockMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 1;
  }

  else
  {
    v3 = 3;
  }

  cameraController = [(SCNCameraNavigationController *)self cameraController];

  [(SCNCameraController *)cameraController setInteractionMode:v3];
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

- (void)setGimbalLockVector:(SCNVector3)vector
{
  v3 = scn_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [SCNCameraNavigationController setGimbalLockVector:v3];
  }
}

- (BOOL)wantsRedraw
{
  if ([(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] isInertiaRunning])
  {
    return 1;
  }

  os_unfair_lock_lock(&self->_keyboard.keyCodeConfiguration);
  begin = self->_keyboard.forward.__begin_;
  os_unfair_lock_unlock(&self->_keyboard.keyCodeConfiguration);
  if ([(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] interactionMode])
  {
    v5 = 1;
  }

  else
  {
    v5 = begin == 0;
  }

  return !v5;
}

- (void)focusNode:(id)node
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = node;
  -[SCNCameraNavigationController focusNodes:](self, "focusNodes:", [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1]);
}

- (void)focusNodes:(id)nodes
{
  if (nodes)
  {
    self->_didEverFocusNode = 1;
    [(SCNCameraNavigationController *)self setAutomaticCameraTarget:0];
    [(SCNCameraNavigationController *)self _switchToFreeViewCamera];
    automaticTarget = [(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] automaticTarget];
    [(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] setAutomaticTarget:1];
    [(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] frameNodes:nodes];
    [(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] setAutomaticTarget:automaticTarget];
    if ([(SCNCameraNavigationController *)self _pointOfViewUsesOrthographicProjection])
    {
      originalOrthoScale = self->_originalOrthoScale;
      [(SCNCameraNavigationController *)self _pointOfViewOrthographicScale];
      v8 = (originalOrthoScale / v7);

      [(SCNCameraNavigationController *)self setZoomFactor:v8];
    }
  }
}

- (unint64_t)_effectiveStickyAxis
{
  v2 = *&self->_anon_119[27];
  if (!v2)
  {
    v3 = 304;
    if (self->_anon_119[3])
    {
      v3 = 296;
    }

    return *(&self->super.isa + v3);
  }

  return v2;
}

- (void)setEnableFreeCamera:(BOOL)camera
{
  BYTE2(self->_cameraController) = camera;
  if (!camera)
  {
    [(SCNCameraNavigationController *)self _resetFreeViewCamera];
  }
}

- (void)_resetFreeViewCamera
{
  sceneRef = [(objc_class *)self[1].super.isa sceneRef];
  if (sceneRef)
  {
    v4 = sceneRef;
    C3DSceneLock(sceneRef);
    C3DRemoveSceneRef([(objc_class *)self[1].super.isa nodeRef], [(objc_class *)self[1].super.isa sceneRef]);
    C3DSceneUnlock(v4);
  }

  [(objc_class *)self[1].super.isa removeFromParentNode];

  self[1].super.isa = 0;
}

- (void)_prepareFreeViewCamera
{
  v3 = [-[SCNView renderer](-[SCNCameraNavigationController view](self "view")];
  v4 = v3;
  if (v3 && v3 == self[1].super.isa)
  {
    return;
  }

  presentationNode = [(objc_class *)v3 presentationNode];
  if ([presentationNode camera])
  {
    camera = [presentationNode camera];
  }

  else
  {
    camera = [presentationNode light];
  }

  [camera orthographicScale];
  *&v7 = v7;
  self->_originalOrthoScale = *&v7;
  self->_orthographicZoomFactor = 1.0;
  isa = self[1].super.isa;
  if (!v4)
  {
    if (isa)
    {
      goto LABEL_13;
    }

    v9 = +[SCNNode node];
    goto LABEL_12;
  }

  if (v4 == isa)
  {
    memset(&v22, 0, sizeof(v22));
LABEL_22:
    presentationNode2 = [(objc_class *)v4 presentationNode];
    if (presentationNode2)
    {
      [presentationNode2 worldTransform];
    }

    else
    {
      memset(&v22, 0, sizeof(v22));
    }

    goto LABEL_25;
  }

  if (!isa)
  {
    v9 = [(objc_class *)v4 copy];
LABEL_12:
    self[1].super.isa = v9;
  }

LABEL_13:
  if ([(objc_class *)v4 camera])
  {
    v10 = [-[objc_class camera](v4 "camera")];
LABEL_15:
    v11 = v10;
    goto LABEL_16;
  }

  if (![(objc_class *)v4 light])
  {
    v10 = +[SCNCamera camera];
    goto LABEL_15;
  }

  light = [(objc_class *)v4 light];
  v11 = +[SCNCamera camera];
  if (light)
  {
    [light spotOuterAngle];
    [(SCNCamera *)v11 setFieldOfView:?];
    [(SCNCamera *)v11 setFieldOfViewOrientation:0];
    [light zNear];
    [(SCNCamera *)v11 setZNear:?];
    [light zFar];
    [(SCNCamera *)v11 setZFar:?];
  }

LABEL_16:
  [(objc_class *)self[1].super.isa setCamera:v11];
  [(objc_class *)self[1].super.isa setLight:0];
  [(objc_class *)self[1].super.isa setGeometry:0];
  [(objc_class *)self[1].super.isa setConstraints:0];
  v12 = +[SCNTransaction immediateMode];
  [SCNTransaction setImmediateMode:1];
  [(objc_class *)self[1].super.isa removeAllAnimations];
  [(objc_class *)self[1].super.isa removeAllActions];
  [(objc_class *)self[1].super.isa setConstraints:0];
  [SCNTransaction setImmediateMode:v12];
  memset(&v22, 0, sizeof(v22));
  if (v4)
  {
    goto LABEL_22;
  }

  v22 = SCNMatrix4Identity;
LABEL_25:
  C3DMatrix4x4FromSCNMatrix4(v21, &v22);
  if (fabs(C3DMatrix4x4Determinant3x3(v21) + -1.0) > 0.00001)
  {
    v18[0].i32[2] = 0;
    v18[0].i64[0] = 0;
    v20.i32[2] = 0;
    v20.i64[0] = 0;
    v19 = 0uLL;
    C3DMatrix4x4GetAffineTransforms(v21, v18, &v19, &v20);
    C3DQuaternionNormalize(&v19);
    C3DMatrix4x4MakeAffine(v21, v18, &v19, &v20);
    C3DMatrix4x4ToSCNMatrix4(v21, &v22);
  }

  v18[0] = *&v22.m11;
  v18[1] = *&v22.m21;
  v18[2] = *&v22.m31;
  v18[3] = *&v22.m41;
  [(objc_class *)self[1].super.isa setTransform:v18];
  [(objc_class *)self[1].super.isa setName:@"kSCNFreeViewCameraName"];
  [-[objc_class camera](self[1].super.isa "camera")];
  if ([(SCNView *)[(SCNCameraNavigationController *)self view] _showsAuthoringEnvironment])
  {
    [-[objc_class camera](self[1].super.isa "camera")];
    v15 = [-[objc_class camera](self[1].super.isa "camera")];
    *(v15 + 64) |= 4u;
  }

  sceneRef = [(SCNScene *)[(SCNView *)[(SCNCameraNavigationController *)self view] scene] sceneRef];
  if (sceneRef)
  {
    v17 = sceneRef;
    if (!C3DGetSceneRef([(objc_class *)self[1].super.isa nodeRef]))
    {
      C3DSceneLock(v17);
      C3DAddSceneRef([(objc_class *)self[1].super.isa nodeRef], v17);
      C3DSceneUnlock(v17);
    }
  }
}

- (void)_installFreeViewCameraIfNeeded
{
  if ([(SCNCameraNavigationController *)self enableFreeCamera])
  {
    renderer = [(SCNView *)[(SCNCameraNavigationController *)self view] renderer];
    if ([renderer pointOfView] != self[1].super.isa)
    {
      +[SCNTransaction begin];
      [SCNTransaction setDisableActions:1];
      [renderer setPointOfView:self[1].super.isa];
      [(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] setPointOfView:self[1].super.isa];

      +[SCNTransaction commit];
    }
  }
}

- (void)_switchToFreeViewCamera
{
  if ([(SCNCameraNavigationController *)self enableFreeCamera])
  {
    if (![(SCNCameraNavigationController *)self _freeCameraActivated])
    {
      +[SCNTransaction begin];
      [SCNTransaction setDisableActions:1];
      [(SCNCameraNavigationController *)self _prepareFreeViewCamera];
      [(SCNCameraNavigationController *)self _installFreeViewCameraIfNeeded];

      +[SCNTransaction commit];
    }
  }

  else
  {
    v3 = [-[SCNView renderer](-[SCNCameraNavigationController view](self "view")];
    cameraController = [(SCNCameraNavigationController *)self cameraController];

    [(SCNCameraController *)cameraController setPointOfView:v3];
  }
}

- (float)_cappedTranslationDelta:(float)delta
{
  [(SCNCameraNavigationController *)self _targetDistance];
  if (v5 >= 10000000.0)
  {
    [(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] simdTarget];
    v15 = v6;
    [objc_msgSend(-[SCNCameraNavigationController pointOfView](self "pointOfView")];
    v16 = vsubq_f32(v15, v7);
    [(SCNNode *)[(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] pointOfView] simdWorldFront];
    v9 = vmulq_f32(v16, v8);
    v10 = v9.f32[2] + vaddv_f32(*v9.f32);
    if (v10 >= 0.0 && delta < 0.0)
    {
      deltaCopy = 0.0;
    }

    else
    {
      deltaCopy = delta;
    }

    if (deltaCopy > 0.0 && v10 < 0.0)
    {
      return 0.0;
    }

    else
    {
      return deltaCopy;
    }
  }

  return delta;
}

- (float)_translationCoef
{
  [(SCNCameraNavigationController *)self _targetDistance];
  v3 = v2;
  if (v3 > 10000000.0)
  {
    v3 = 10000000.0;
  }

  return fmax(v3, 0.1) * 0.00999999978;
}

- (float)_targetDistance
{
  [(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] simdTarget];
  v8 = v3;
  [objc_msgSend(-[SCNCameraNavigationController pointOfView](self "pointOfView")];
  v5 = vsubq_f32(v4, v8);
  v6 = vmulq_f32(v5, v5);
  result = sqrtf(v6.f32[2] + vaddv_f32(*v6.f32));
  if (result <= 0.1)
  {
    return 0.1;
  }

  return result;
}

- (void)rotateOf:(double)of
{
  +[SCNTransaction begin];
  [SCNTransaction setDisableActions:1];
  if (BYTE3(self->_cameraController) == 1)
  {
    [(SCNCameraNavigationController *)self _switchToFreeViewCamera];
  }

  [(SCNView *)[(SCNCameraNavigationController *)self view] bounds];
  v6 = v5;
  v8 = v7;
  v9 = v5 * 0.5;
  v10 = v7 * 0.5;
  cameraController = [(SCNCameraNavigationController *)self cameraController];
  *&v12 = of;
  [(SCNCameraController *)cameraController rollBy:v12 aroundScreenPoint:v9 viewport:v10, v6, v8];

  +[SCNTransaction commit];
}

- (void)zoomBy:(float)by animate:(BOOL)animate
{
  animateCopy = animate;
  if ([(SCNCameraNavigationController *)self autoSwitchToFreeCamera])
  {
    [(SCNCameraNavigationController *)self _switchToFreeViewCamera];
  }

  if ([(SCNCameraNavigationController *)self pointOfView])
  {
    if (animateCopy)
    {
      +[SCNTransaction begin];
      [SCNTransaction setAnimationDuration:0.3];
      cameraController = [(SCNCameraNavigationController *)self cameraController];
      *&v8 = by * -100.0;
      [(SCNCameraController *)cameraController translateInCameraSpaceByX:0.0 Y:0.0 Z:v8];

      +[SCNTransaction commit];
    }

    else
    {
      cameraController2 = [(SCNCameraNavigationController *)self cameraController];

      *&v10 = by * -100.0;
      [(SCNCameraController *)cameraController2 translateInCameraSpaceByX:0.0 Y:0.0 Z:v10];
    }
  }
}

- (double)zoomFactor
{
  _pointOfViewUsesOrthographicProjection = [(SCNCameraNavigationController *)self _pointOfViewUsesOrthographicProjection];
  v4 = 76;
  if (_pointOfViewUsesOrthographicProjection)
  {
    v4 = 84;
  }

  return *(&self->super.isa + v4);
}

- (float)_orthographicZoomFactorForProposedZoomFactor:(float)factor
{
  [(SCNCameraNavigationController *)self _orthographicScaleForZoomFactor:?];
  v6 = v5;
  [(SCNCameraNavigationController *)self _sceneBoundingSphere];
  v8 = v7;
  if (v7 == 0.0)
  {
    return self->_orthographicZoomFactor;
  }

  [(SCNView *)[(SCNCameraNavigationController *)self view] bounds];
  v10 = v9;
  [(SCNView *)[(SCNCameraNavigationController *)self view] bounds];
  v12 = v11;
  if (v12 >= v10)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  if (v12 >= v10)
  {
    v12 = v10;
  }

  v14 = v12 / fmaxf(v13, 1.0);
  originalOrthoScale = self->_originalOrthoScale;
  v16 = v8 * 10000000.0;
  if (v16 <= originalOrthoScale)
  {
    v18 = self->_originalOrthoScale;
  }

  else
  {
    v17 = v16;
    v18 = v17;
  }

  v19 = v8 * 0.00001 * v14;
  if (v19 <= originalOrthoScale)
  {
    v20 = v19;
    v21 = v20;
  }

  else
  {
    v21 = self->_originalOrthoScale;
  }

  if (v6 > v18)
  {
    return originalOrthoScale / v18;
  }

  if (v6 < v21)
  {
    return originalOrthoScale / v21;
  }

  return factor;
}

- (void)setZoomFactor:(double)factor
{
  [(SCNCameraNavigationController *)self zoomFactor];
  if (factor > 0.0 && v5 != factor)
  {
    if (BYTE3(self->_cameraController) == 1)
    {
      [(SCNCameraNavigationController *)self _switchToFreeViewCamera];
    }

    pointOfView = [(SCNCameraNavigationController *)self pointOfView];
    if ([(SCNCameraNavigationController *)self _pointOfViewUsesOrthographicProjection])
    {
      *&v8 = factor;
      [(SCNCameraNavigationController *)self _orthographicZoomFactorForProposedZoomFactor:v8];
      self->_orthographicZoomFactor = v9;
      [(SCNCameraNavigationController *)self _orthographicScaleForZoomFactor:?];

      [(SCNCameraNavigationController *)self _setPointOfViewOrthographicScale:?];
    }

    else
    {
      v10 = tan(self->_cameraOriginalFieldOfView * 0.5 / 180.0 * 3.14159265);
      v11 = atan(v10 / factor);
      *&v11 = v11 / 3.14159265 * 180.0 + v11 / 3.14159265 * 180.0;
      v12 = fmin(*&v11, 120.0);
      if (v12 < 1.0)
      {
        v12 = 1.0;
      }

      v13 = v12;
      [objc_msgSend(pointOfView "camera")];
      factorCopy = factor;
      self->_fieldOfViewZoomFactor = factorCopy;
    }
  }
}

- (void)translateByX:(float)x Y:(float)y Z:(float)z
{
  v14 = *&y;
  v16 = *&x;
  if (BYTE3(self->_cameraController) == 1)
  {
    [(SCNCameraNavigationController *)self _switchToFreeViewCamera];
  }

  if ([(SCNCameraNavigationController *)self pointOfView])
  {
    *&v7 = z;
    [(SCNCameraNavigationController *)self _cappedTranslationDelta:v7];
    v8 = v16;
    v8.i32[1] = v15;
    v8.i32[2] = v9;
    v17 = v8;
    [(SCNCameraNavigationController *)self _translationCoef];
    v18 = vmulq_n_f32(v17, v10);
    cameraController = [(SCNCameraNavigationController *)self cameraController];
    LODWORD(v13) = v18.i32[1];

    *&v12 = -v18.f32[2];
    [(SCNCameraController *)cameraController translateInCameraSpaceByX:*v18.i64 Y:v13 Z:v12];
  }
}

- (void)sceneWillChange
{
  *&self->_isSceneBoundingSphereComputed = 0;
  [(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] setSimdTarget:0.0];

  [(SCNCameraNavigationController *)self _resetFreeViewCamera];
}

- (void)viewWillDrawAtTime:(double)time
{
  v5 = +[SCNTransaction immediateMode];
  [SCNTransaction setImmediateMode:1];
  os_unfair_lock_lock(&self->_drawAtTimeLock);
  if ([(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] isInertiaRunning])
  {
    sceneRef = [(SCNScene *)[(SCNView *)[(SCNCameraNavigationController *)self view] scene] sceneRef];
    if (sceneRef)
    {
      v7 = sceneRef;
      C3DSceneLock(sceneRef);
      [(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] updateInertiaAtTime:time];
      C3DSceneUnlock(v7);
    }

    else
    {
      [(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] updateInertiaAtTime:time];
    }
  }

  os_unfair_lock_unlock(&self->_drawAtTimeLock);

  [SCNTransaction setImmediateMode:v5];
}

- (void)_willBeginInteraction
{
  if (!self->_cameraTargetComputed && ![(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] automaticTarget])
  {
    [(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] simdTarget];
    v4 = vceqzq_f32(v3);
    v4.i32[3] = v4.i32[2];
    if ((vminvq_u32(v4) & 0x80000000) != 0)
    {
      self->_cameraTargetComputed = 1;
      [(SCNCameraNavigationController *)self _defaultTargetForScene:[(SCNView *)[(SCNCameraNavigationController *)self view] scene]];
      [(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] setSimdTarget:v5];
    }
  }

  [(SCNCameraNavigationController *)self _stopInertia];
  camera = [(SCNNode *)[(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] pointOfView] camera];
  if ([(SCNCamera *)camera useLegacyFov])
  {
    [(SCNCamera *)camera xFov];
    if (v7 != 0.0)
    {
      [(SCNCamera *)camera yFov];
      if (v8 != 0.0)
      {
        [(SCNView *)[(SCNCameraNavigationController *)self view] bounds];
        v11 = v10 / fmax(v9, 1.0);
        [(SCNCamera *)camera xFov];
        v13 = v12;
        [(SCNCamera *)camera yFov];
        *&v13 = v13 / v14;
        [(SCNCamera *)camera fieldOfView];
        [(SCNCamera *)camera setFieldOfView:?];
        [(SCNCamera *)camera setProjectionDirection:*&v13 > v11];
      }
    }
  }

  [objc_msgSend(-[SCNCameraNavigationController pointOfView](self "pointOfView")];
  *&v15 = v15;
  self->_cameraOriginalFieldOfView = *&v15;
  self->_fieldOfViewZoomFactor = 1.0;
  [(SCNCameraNavigationController *)self _pointOfViewOrthographicScale];
  self->_originalOrthoScale = v16;
  self->_orthographicZoomFactor = 1.0;
}

- (void)_stopInertia
{
  os_unfair_lock_lock(&self->_drawAtTimeLock);
  [(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] stopInertia];
  os_unfair_lock_unlock(&self->_drawAtTimeLock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SCNCameraNavigationController__stopInertia__block_invoke;
  block[3] = &unk_2782FB608;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  enabled = [(SCNCameraNavigationController *)self enabled];
  if (enabled)
  {
    pressGesture = self->_pressGesture;
    v9 = pressGesture == recognizer || pressGesture == gestureRecognizer;
    LOBYTE(enabled) = v9 || (tapGesture = self->_tapGesture, panGesture = self->_panGesture, tapGesture == recognizer) && (panGesture == gestureRecognizer || self->_pinchGesture == gestureRecognizer || self->_rotateGesture == gestureRecognizer) || tapGesture == gestureRecognizer && panGesture == recognizer || tapGesture == gestureRecognizer && self->_pinchGesture == recognizer;
  }

  return enabled;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  enabled = [(SCNCameraNavigationController *)self enabled];
  if (enabled)
  {
    [(SCNCameraNavigationController *)self beginGesture:begin];
  }

  return enabled;
}

- (void)_handlePinch:(id)pinch
{
  if ([(SCNCameraNavigationController *)self enabled])
  {

    [(SCNCameraNavigationController *)self pinchWithGestureRecognizer:pinch];
  }
}

- (void)_handlePan:(id)pan
{
  if ([(SCNCameraNavigationController *)self enabled])
  {

    [(SCNCameraNavigationController *)self panWithGestureRecognizer:pan];
  }
}

- (void)_handleRotation:(id)rotation
{
  if ([(SCNCameraNavigationController *)self enabled])
  {

    [(SCNCameraNavigationController *)self rotateWithGestureRecognizer:rotation];
  }
}

- (void)_handleDoubleTap:(id)tap
{
  if ([(SCNCameraNavigationController *)self enabled])
  {
    delegate = [(SCNCameraNavigationController *)self delegate];

    [(SCNCameraNavigationControllerDelegate *)delegate switchToNextCamera];
  }
}

- (void)beginGesture:(id)gesture
{
  if (BYTE3(self->_cameraController) == 1)
  {
    [(SCNCameraNavigationController *)self _switchToFreeViewCamera];
  }

  [(SCNCameraNavigationController *)self _willBeginInteraction];
  self->_isDraggingWithOneFinger = 0;
  self->_lastGestureFingerCount = 0;
  if ([gesture numberOfTouches])
  {
    [gesture locationInView:{-[SCNCameraNavigationController view](self, "view")}];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = 0.0;
    v8 = 0.0;
  }

  self->_lastInputLocation.x = v6;
  self->_lastInputLocation.y = v8;
  self->_lastRotationAngle = 0.0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SCNCameraNavigationController *)self _startBrowsingIfNeeded:v6, v8];
    v9 = 2;
LABEL_12:
    self->_browseMode = v9;
    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SCNCameraNavigationController *)self _startBrowsingIfNeeded:v6, v8];
    if (self->_translationAllowed)
    {
      self->_browseMode = 3;
      [(SCNView *)[(SCNCameraNavigationController *)self view] bounds];
      [(SCNCameraNavigationController *)self _computeTranslationOrigin3DFromPoint:v6, v10 - v8];
    }

    v9 = 1;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SCNCameraNavigationController *)self zoomFactor];
    *&v11 = v11;
    self->_initialZoom = *&v11;
  }
}

- (void)rotateWithGestureRecognizer:(id)recognizer
{
  [recognizer rotation];
  v6 = v5;
  [(SCNCameraNavigationController *)self _stopInertia];
  if ([recognizer state] == 1)
  {
    [(SCNCameraNavigationController *)self __willChangePointOfView];
  }

  +[SCNTransaction begin];
  [SCNTransaction setDisableActions:1];
  [(SCNCameraNavigationController *)self rotateOf:(v6 - self->_lastRotationAngle) / 3.14159265 * -180.0];
  +[SCNTransaction commit];
  self->_lastRotationAngle = v6;
  if ([recognizer state] == 4 || objc_msgSend(recognizer, "state") == 3)
  {

    [(SCNCameraNavigationController *)self __didChangePointOfView];
  }
}

- (void)pinchWithGestureRecognizer:(id)recognizer
{
  [(SCNCameraNavigationController *)self _stopInertia];
  if ([recognizer state] == 1)
  {
    [(SCNCameraNavigationController *)self __willChangePointOfView];
  }

  +[SCNTransaction begin];
  [SCNTransaction setDisableActions:1];
  v5 = fmax(self->_initialZoom, 0.001);
  [recognizer scale];
  [(SCNCameraNavigationController *)self setZoomFactor:v6 * v5];
  +[SCNTransaction commit];
  if ([recognizer state] == 4 || objc_msgSend(recognizer, "state") == 3)
  {

    [(SCNCameraNavigationController *)self __didChangePointOfView];
  }
}

- (void)panWithGestureRecognizer:(id)recognizer
{
  numberOfTouches = [recognizer numberOfTouches];
  if (self->_browseMode != 2)
  {
    v6 = numberOfTouches;
    [recognizer locationInView:{-[SCNCameraNavigationController view](self, "view")}];
    v8 = v7;
    v10 = v9;
    [(SCNCameraNavigationController *)self _stopInertia];
    if ([recognizer state] == 1)
    {
      [(SCNCameraNavigationController *)self __willChangePointOfView];
    }

    +[SCNTransaction begin];
    [SCNTransaction setDisableActions:1];
    if ([recognizer state] == 3)
    {
      if (self->_isDraggingWithOneFinger)
      {
        [recognizer velocityInView:{-[SCNCameraNavigationController view](self, "view")}];
        if ([(SCNView *)[(SCNCameraNavigationController *)self view] preferredFramesPerSecond])
        {
          [(SCNView *)[(SCNCameraNavigationController *)self view] preferredFramesPerSecond];
        }

        cameraController = [(SCNCameraNavigationController *)self cameraController];
        [(SCNView *)[(SCNCameraNavigationController *)self view] bounds];
        [(SCNCameraController *)cameraController endInteraction:v8 withViewport:v10 velocity:?];
        if (![(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] isInertiaRunning])
        {
          [(SCNCameraNavigationController *)self __didChangePointOfView];
        }
      }
    }

    else
    {
      switch(v6)
      {
        case 3:
          if (self->_lastGestureFingerCount != 3)
          {
            [(SCNCameraNavigationController *)self beginGesture:recognizer];
            self->_lastGestureFingerCount = 3;
          }

          [(SCNCameraNavigationController *)self _translationCoef];
          v20 = v19;
          v21 = v10 - self->_lastInputLocation.y;
          *&v21 = v21;
          [(SCNCameraNavigationController *)self _cappedTranslationDelta:v21];
          v23 = v22;
          cameraController2 = [(SCNCameraNavigationController *)self cameraController];
          *&v25 = -(v20 * v23);
          [(SCNCameraController *)cameraController2 translateInCameraSpaceByX:0.0 Y:0.0 Z:v25];
          break;
        case 2:
          if (self->_lastGestureFingerCount != 2)
          {
            [(SCNCameraNavigationController *)self beginGesture:recognizer];
            self->_lastGestureFingerCount = 2;
          }

          [(SCNView *)[(SCNCameraNavigationController *)self view] bounds];
          v10 = v18 - v10;
          [(SCNCameraNavigationController *)self _translateToViewPoint:v8, v10];
          break;
        case 1:
          if (self->_lastGestureFingerCount == 1)
          {
            self->_isDraggingWithOneFinger = 1;
            cameraController3 = [(SCNCameraNavigationController *)self cameraController];
            [(SCNView *)[(SCNCameraNavigationController *)self view] bounds];
            v14 = v13;
            v16 = v15;
            [(SCNCameraNavigationController *)self _modeSensitivity];
            [(SCNCameraController *)cameraController3 continueInteraction:v8 withViewport:v10 sensitivity:v14, v16, v17];
          }

          else
          {
            [(SCNCameraNavigationController *)self beginGesture:recognizer];
            cameraController4 = [(SCNCameraNavigationController *)self cameraController];
            [(SCNView *)[(SCNCameraNavigationController *)self view] bounds];
            [(SCNCameraController *)cameraController4 beginInteraction:v8 withViewport:v10];
            self->_lastGestureFingerCount = 1;
          }

          break;
      }
    }

    +[SCNTransaction commit];
    self->_lastInputLocation.x = v8;
    self->_lastInputLocation.y = v10;
  }
}

- (double)_modeSensitivity
{
  interactionMode = [(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] interactionMode];
  if (interactionMode >= SCNInteractionModePan)
  {
    if (interactionMode == SCNInteractionModeTruck)
    {

      [(SCNCameraNavigationController *)self truckSensitivity];
    }

    else if (interactionMode == SCNInteractionModePan)
    {

      [(SCNCameraNavigationController *)self panSensitivity];
    }

    else
    {
      return 1.0;
    }
  }

  else
  {

    [(SCNCameraNavigationController *)self rotationSensitivity];
  }

  return result;
}

- (uint64_t)worldFront
{
  v1 = [objc_msgSend(self "cameraController")];

  return [v1 simdWorldFront];
}

- (void)_startBrowsingIfNeeded:(CGPoint)needed
{
  y = needed.y;
  x = needed.x;
  +[SCNTransaction begin];
  [SCNTransaction setDisableActions:1];
  pointOfView = [(SCNCameraNavigationController *)self pointOfView];
  if (BYTE3(self->_cameraController) == 1)
  {
    [(SCNCameraNavigationController *)self _prepareFreeViewCamera];
  }

  if (![(objc_class *)pointOfView parentNode]&& pointOfView != self[1].super.isa)
  {
    [(SCNCameraNavigationController *)self _installFreeViewCameraIfNeeded];
  }

  +[SCNTransaction commit];
  self->_initialInputLocation.x = x;
  self->_initialInputLocation.y = y;
  [-[SCNCameraNavigationController pointOfView](self "pointOfView")];
  *self->_initialPointOfViewWorldPosition = v7;
  [(SCNCameraNavigationController *)self _pointOfViewOrthographicScale];
  self->_originalOrthoScale = v8;
  self->_orthographicZoomFactor = 1.0;
}

- (void)_defaultTargetForScene:(void *)scene
{
  pointOfView = [self pointOfView];
  [self worldFront];
  v24 = v6;
  [objc_msgSend(pointOfView "presentationInstance")];
  v25 = v7;
  v8.i64[0] = [self _sceneBoundingSphere];
  v8.i64[1] = v9;
  v22 = vsubq_f32(v8, v25);
  [objc_msgSend(pointOfView "camera")];
  *&v10 = v10 * 3.14159265 / 180.0;
  v11 = cosf(*&v10);
  v12 = vmulq_f32(v22, v22);
  *&v13 = v12.f32[2] + vaddv_f32(*v12.f32);
  *v12.f32 = vrsqrte_f32(v13);
  *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32)));
  v14 = vmulq_f32(v24, vmulq_n_f32(v22, vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32))).f32[0]));
  if ((v14.f32[2] + vaddv_f32(*v14.f32)) <= v11)
  {
    [objc_msgSend(pointOfView "camera")];
    *&v15 = v15;
    v23 = vmlaq_n_f32(v25, v24, *&v15);
    rootNode = [scene rootNode];
    LODWORD(v18) = v25.i32[2];
    LODWORD(v17) = v25.i32[1];
    LODWORD(v20) = v23.i32[2];
    LODWORD(v19) = v23.i32[1];
    v21 = [rootNode hitTestWithSegmentFromPoint:0 toPoint:*v25.i64 options:{v17, v18, *v23.i64, v19, v20}];
    if ([v21 count])
    {
      [objc_msgSend(v21 "firstObject")];
    }

    else
    {
      [self _targetDistance];
    }
  }
}

- (SCNVector3)cameraAutomaticTargetPoint
{
  [(SCNCameraNavigationController *)self _computeAutomaticTargetPointIfNeeded];
  cameraController = [(SCNCameraNavigationController *)self cameraController];

  [(SCNCameraController *)cameraController target];
  result.z = v6;
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)_computeAutomaticTargetPointIfNeeded
{
  if (BYTE1(self->_inertia.lastDragLocation.x) == 1 && (LOBYTE(self->_inertia.lastDragLocation.x) & 1) == 0 && ![(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] automaticTarget])
  {
    LOBYTE(self->_inertia.lastDragLocation.x) = 1;
    pointOfView = [(SCNCameraNavigationController *)self pointOfView];
    [(SCNCameraNavigationController *)self worldFront];
    v17 = v4;
    [(SCNCameraNavigationController *)self _targetDistance];
    v18 = v5;
    [objc_msgSend(pointOfView "presentationNode")];
    if (self->_didEverFocusNode)
    {
      v8 = v17;
      v7 = v18;
    }

    else
    {
      v19 = v6;
      _sceneBoundingSphere = [(SCNCameraNavigationController *)self _sceneBoundingSphere];
      v6 = v19;
      v10.i64[0] = _sceneBoundingSphere;
      v10.i64[1] = v11;
      v12 = vsubq_f32(v10, v19);
      v13 = vmulq_f32(v17, v12);
      v14 = (v13.f32[2] + vaddv_f32(*v13.f32)) <= 0.5;
      v8 = v17;
      v7 = v18;
      if (!v14)
      {
        v15 = vmulq_f32(v12, v12);
        v7 = sqrtf(v15.f32[2] + vaddv_f32(*v15.f32));
      }
    }

    *&v20 = vmlaq_n_f32(v6, v8, v7).u64[0];
    cameraController = [(SCNCameraNavigationController *)self cameraController];

    [(SCNCameraController *)cameraController setSimdTarget:v20];
  }
}

- ($0B194710A4D1BCC9074A0631D7052F72)_sceneBoundingSphere
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (!self->_isSceneBoundingSphereComputed && [(SCNScene *)[(SCNView *)[(SCNCameraNavigationController *)self view] scene] rootNode])
  {
    v8[0] = [(SCNScene *)[(SCNView *)[(SCNCameraNavigationController *)self view] scene] rootNode];
    *self->_anon_70 = SCNNodeGetBoundingSphere([MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1], 0);
    *&self->_anon_70[8] = v7;
    self->_isSceneBoundingSphereComputed = 1;
  }

  result.var0.var3 = v6;
  result.var0.var2 = v5;
  result.var0.var1 = v4;
  result.var0.var0 = v3;
  return result;
}

- (BOOL)_computeBoundingSphereOmittingFloorsForNode:(__C3DNode *)node sphere:(C3DSphere *)sphere
{
  *sphere = xmmword_21C280360;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__SCNCameraNavigationController__computeBoundingSphereOmittingFloorsForNode_sphere___block_invoke;
  v6[3] = &__block_descriptor_40_e20_q16__0____C3DNode__8l;
  v6[4] = sphere;
  C3DNodeApplyHierarchy(node, v6);
  return *(sphere + 3) >= 0.0;
}

uint64_t __84__SCNCameraNavigationController__computeBoundingSphereOmittingFloorsForNode_sphere___block_invoke(uint64_t a1, float32x4_t *a2)
{
  if (C3DNodeIsHidden(a2))
  {
    return 1;
  }

  if (!C3DNodeGetFloor(a2))
  {
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

- (void)_computeStickyAxisIfNeeded:(CGPoint)needed
{
  if (self->_anon_119[3] == 1 && !*&self->_anon_119[19])
  {
    y = needed.y;
    v4 = vcvt_f32_f64(vaddq_f64(needed, vcvtq_f64_f32(*&self->_anon_119[11])));
    *&self->_anon_119[11] = v4;
    if (vaddv_f32(vmul_f32(v4, v4)) > 1.0)
    {
      v5 = vdup_n_s32(self->_browseMode == 3);
      v6 = vcvtq_f64_f32(v4);
      v7.i64[0] = v5.u32[0];
      v7.i64[1] = v5.u32[1];
      v8 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v7, 0x3FuLL)), v6, vextq_s8(v6, v6, 8uLL));
      v9 = vabsq_f64(v8);
      if ((vmovn_s64(vcgeq_f64(v9, vdupq_laneq_s64(v9, 1))).u8[0] & 1) != 0 && v8.f64[0] != 0.0)
      {
        v10 = 1;
LABEL_10:
        *&self->_anon_119[19] = v10;
        return;
      }

      if (v8.f64[1] != 0.0)
      {
        v10 = 2;
        goto LABEL_10;
      }
    }
  }
}

- (float)_pointOfViewOrthographicScale
{
  camera = [(SCNNode *)[(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] pointOfView] camera];
  light = [(SCNNode *)[(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] pointOfView] light];
  if (!camera)
  {
    camera = light;
    if (!light)
    {
      return 1.0;
    }
  }

  [(SCNCamera *)camera orthographicScale];
  return v5;
}

- (void)_setPointOfViewOrthographicScale:(float)scale
{
  camera = [(SCNNode *)[(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] pointOfView] camera];
  light = [(SCNNode *)[(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] pointOfView] light];
  if (camera || (camera = light) != 0)
  {

    [(SCNCamera *)camera setOrthographicScale:scale];
  }
}

- (BOOL)_pointOfViewUsesOrthographicProjection
{
  camera = [(SCNNode *)[(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] pointOfView] camera];
  light = [(SCNNode *)[(SCNCameraController *)[(SCNCameraNavigationController *)self cameraController] pointOfView] light];
  if (camera)
  {

    LOBYTE(light) = [(SCNCamera *)camera usesOrthographicProjection];
  }

  else if (light)
  {
    type = [(SCNLight *)light type];

    LOBYTE(light) = [(NSString *)type isEqualToString:@"directional"];
  }

  return light;
}

- (void)_computeTranslationOrigin3DFromPoint:(CGPoint)point
{
  x = point.x;
  y = point.y;
  [(SCNView *)[(SCNCameraNavigationController *)self view] bounds];
  v4.f64[0] = x;
  v4.f64[1] = y;
  v5 = vcvt_f32_f64(v4);
  v7.f64[1] = v6;
  v32 = vcvt_hight_f32_f64(0, v7);
  pointOfView = [(SCNCameraNavigationController *)self pointOfView];
  *self->_translationOrigin = [(SCNCameraNavigationController *)self _sceneBoundingSphere];
  *&self->_translationOrigin[8] = v9;
  sceneRef = [(SCNScene *)[(SCNView *)[(SCNCameraNavigationController *)self view] scene] sceneRef];
  v11 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  nodeRef = [pointOfView nodeRef];
  v13.n128_u64[0] = v5;
  v14 = _C3DHitTestComputeHitSegment(nodeRef, v11, &v34, &v35, v32, v13);
  if (v15)
  {
    [(SCNCameraNavigationController *)self worldFront];
    v16 = vmulq_f32(*self->_translationOrigin, v17);
    v17.f32[3] = -(v16.f32[2] + vaddv_f32(*v16.f32));
    v18 = vsubq_f32(v35, v34);
    v19 = vmulq_f32(v18, v18);
    v19.f32[0] = sqrtf(v19.f32[2] + vaddv_f32(*v19.f32));
    v20 = vdivq_f32(v18, vdupq_lane_s32(*v19.f32, 0));
    v20.i32[3] = 0;
    v21 = vmulq_f32(v17, v20);
    v22 = vaddv_f32(vadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL)));
    if (v22 != 0.0 && ((v23 = v34, v23.i32[3] = 1.0, v24 = vmulq_f32(v23, v17), v25 = -vaddv_f32(vadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL))) / v22, v25 >= 0.0) ? (v26 = v25 <= v19.f32[0]) : (v26 = 0), v26))
    {
      v28 = vmlaq_n_f32(v23, v20, v25);
    }

    else
    {
      v27.i64[0] = 0x3F0000003F000000;
      v27.i64[1] = 0x3F0000003F000000;
      v28 = vmulq_f32(vaddq_f32(v34, v35), v27);
    }

    *self->_translationOrigin = v28;
  }

  else
  {
    v29 = scn_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BEF7000, v29, OS_LOG_TYPE_DEFAULT, "Warning: _computeTranslationOrigin3DFromPoint: invalid zRange", buf, 2u);
    }
  }

  if (v11)
  {
    C3DSceneUnlock(v11);
  }
}

- (void)_translateToViewPoint:(CGPoint)point
{
  x = point.x;
  y = point.y;
  [(SCNView *)[(SCNCameraNavigationController *)self view] bounds];
  v5.f64[1] = v4;
  v35 = vcvt_hight_f32_f64(0, v5);
  v6.f64[0] = x;
  v6.f64[1] = y;
  v7 = vcvt_f32_f64(v6);
  pointOfView = [(SCNCameraNavigationController *)self pointOfView];
  sceneRef = [(SCNScene *)[(SCNView *)[(SCNCameraNavigationController *)self view] scene] sceneRef];
  v10 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  nodeRef = [pointOfView nodeRef];
  v12.n128_u64[0] = v7;
  _C3DHitTestComputeHitSegment(nodeRef, v10, &v40, &v41, v35, v12);
  v14 = v13;
  if (v10)
  {
    C3DSceneUnlock(v10);
  }

  if (v14)
  {
    v34 = v40;
    v15 = vsubq_f32(v41, v40);
    v16 = vmulq_f32(v15, v15);
    v16.f32[0] = sqrtf(v16.f32[2] + vaddv_f32(*v16.f32));
    v32 = v16.f32[0];
    v17 = vdivq_f32(v15, vdupq_lane_s32(*v16.f32, 0));
    v17.i32[3] = 0;
    v36 = v17;
    [(SCNCameraNavigationController *)self worldFront];
    v18 = *self->_translationOrigin;
    v19 = vmulq_f32(v18, v20);
    v20.f32[3] = -(v19.f32[2] + vaddv_f32(*v19.f32));
    v21 = vmulq_f32(v20, v36);
    v22 = vaddv_f32(vadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL)));
    if (v22 != 0.0 && ((v23 = v34, v23.i32[3] = 1.0, v24 = vmulq_f32(v23, v20), v25 = -vaddv_f32(vadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL))) / v22, v25 >= 0.0) ? (v26 = v25 <= v32) : (v26 = 0), v26))
    {
      v37 = vsubq_f32(v18, vmlaq_n_f32(v23, v36, v25));
      [pointOfView simdWorldTransform];
      v43 = __invert_f4(v42);
      v38 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v43.columns[1], *v37.f32, 1), v43.columns[0], v37.f32[0]), v43.columns[2], v37, 2);
      +[SCNTransaction begin];
      [SCNTransaction setDisableActions:1];
      cameraController = [(SCNCameraNavigationController *)self cameraController];
      LODWORD(v30) = v38.i32[2];
      LODWORD(v29) = v38.i32[1];
      [(SCNCameraController *)cameraController translateInCameraSpaceByX:*v38.i64 Y:v29 Z:v30];
      +[SCNTransaction commit];
    }

    else
    {
      v27 = scn_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21BEF7000, v27, OS_LOG_TYPE_DEFAULT, "Warning: Warning: no C3DIntersectionRay3Plane", buf, 2u);
      }
    }
  }
}

- (void)__willChangePointOfView
{
  if (!self->_recordingPointOfViewEvents)
  {
    self->_recordingPointOfViewEvents = 1;
    [(SCNCameraNavigationController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate = [(SCNCameraNavigationController *)self delegate];

      [(SCNCameraNavigationControllerDelegate *)delegate willChangePointOfView];
    }
  }
}

- (void)__didChangePointOfView
{
  if (self->_recordingPointOfViewEvents)
  {
    [(SCNCameraNavigationController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(SCNCameraNavigationControllerDelegate *)[(SCNCameraNavigationController *)self delegate] didChangePointOfView];
    }

    self->_recordingPointOfViewEvents = 0;
  }
}

@end