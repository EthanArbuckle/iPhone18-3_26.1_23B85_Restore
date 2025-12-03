@interface SCNCameraController
- (BOOL)_isLocationValid:(CGPoint)valid inViewport:(CGSize)viewport;
- (BOOL)useOrbitInteractionMode;
- (SCNCameraController)init;
- (SCNVector3)target;
- (SCNVector3)up;
- (SCNVector3)worldUp;
- (__n128)_targetRelativeToPointOfViewParent;
- (double)_convertRotationFromWorldToPointOfView:(void *)view;
- (double)_mapToSphere:(float64_t)sphere inViewport:(double)viewport;
- (double)_orientationForMode;
- (double)_orthographicViewSpaceTranslationForZoomAtScreenPoint:(float)point scaleDelta:(float64_t)delta viewport:(float64_t)viewport;
- (double)lookAtWith:(float32x4_t)with target:;
- (double)unrolledWorldOrientation:(float *)orientation;
- (float)maximumHorizontalAngle;
- (float)minimumHorizontalAngle;
- (float32x4_t)_directionForScreenPoint:(double)point viewport:(float64_t)viewport;
- (void)_capOrientationAnglesToMaximum;
- (void)_endDraggingWithVelocity:(CGPoint)velocity;
- (void)_resetOrientationState;
- (void)_rotateByX:(float)x Y:(float)y;
- (void)_setInertiaRunning:(BOOL)running;
- (void)_translateInCameraSpaceByX:(float)x Y:(float)y Z:(float)z;
- (void)_updateArcballOrientation;
- (void)_updateInertiaAtTime:(double)time;
- (void)_updateRotation;
- (void)beginInteraction:(CGPoint)location withViewport:(CGSize)viewport;
- (void)clearRoll;
- (void)continueInteraction:(CGPoint)location withViewport:(CGSize)viewport sensitivity:(CGFloat)sensitivity;
- (void)dealloc;
- (void)dollyBy:(float)delta onScreenPoint:(CGPoint)point viewport:(CGSize)viewport;
- (void)dollyToTarget:(float)delta;
- (void)frameNodes:(NSArray *)nodes;
- (void)rollAroundTarget:(float)delta;
- (void)rollBy:(float)delta aroundScreenPoint:(CGPoint)point viewport:(CGSize)viewport;
- (void)rollCameraSpaceBy:(float)by withPoint:(CGPoint)point viewport:(CGSize)viewport;
- (void)rotateByX:(float)deltaX Y:(float)deltaY;
- (void)setInertiaEnabled:(BOOL)inertiaEnabled;
- (void)setInteractionMode:(SCNInteractionMode)interactionMode;
- (void)setMaximumHorizontalAngle:(float)maximumHorizontalAngle;
- (void)setMaximumVerticalAngle:(float)maximumVerticalAngle;
- (void)setMinimumHorizontalAngle:(float)minimumHorizontalAngle;
- (void)setMinimumVerticalAngle:(float)minimumVerticalAngle;
- (void)setPointOfView:(id)view updateUpTransform:(BOOL)transform;
- (void)setSimdUp:(SCNCameraController *)self;
- (void)translateInCameraSpaceByX:(float)deltaX Y:(float)deltaY Z:(float)deltaZ;
- (void)translateInScreenSpaceTo:(CGPoint)to viewport:(CGSize)viewport;
@end

@implementation SCNCameraController

- (SCNCameraController)init
{
  v7.receiver = self;
  v7.super_class = SCNCameraController;
  v2 = [(SCNCameraController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_inertia.friction = 0x3F8000003D4CCCCDLL;
    v2->_inertia.translationSensitivity = 1.0;
    *v2->_up = xmmword_21C27F8C0;
    v2->_automaticTarget = 0;
    v4 = C3DWasLinkedBeforeMajorOSYear2017();
    v5 = 1;
    if (v4)
    {
      v5 = 2;
    }

    v3->_interactionMode = v5;
  }

  return v3;
}

- (void)dealloc
{
  [(SCNCameraController *)self _setInertiaRunning:0];
  v3.receiver = self;
  v3.super_class = SCNCameraController;
  [(SCNCameraController *)&v3 dealloc];
}

- (SCNVector3)target
{
  [(SCNCameraController *)self simdTarget];
  v4 = v3;
  v6 = v5;
  result.z = v6;
  result.y = v4;
  result.x = v2;
  return result;
}

- (SCNVector3)up
{
  [(SCNCameraController *)self simdUp];
  v4 = v3;
  v6 = v5;
  result.z = v6;
  result.y = v4;
  result.x = v2;
  return result;
}

- (SCNVector3)worldUp
{
  [(SCNCameraController *)self simdUp];
  v4 = v3;
  v6 = v5;
  result.z = v6;
  result.y = v4;
  result.x = v2;
  return result;
}

- (void)setPointOfView:(id)view updateUpTransform:(BOOL)transform
{
  if (self->_pointOfView != view)
  {
    [(SCNCameraController *)self _setInertiaRunning:0, transform];

    self->_pointOfView = view;
  }
}

- (void)setInteractionMode:(SCNInteractionMode)interactionMode
{
  if (self->_interactionMode != interactionMode)
  {
    [(SCNCameraController *)self _setInertiaRunning:0];
    self->_interactionMode = interactionMode;
  }
}

- (void)setInertiaEnabled:(BOOL)inertiaEnabled
{
  self->_inertia.inertiaEnabled = inertiaEnabled;
  if ([(SCNCameraController *)self isInertiaRunning]&& !inertiaEnabled)
  {

    [(SCNCameraController *)self _setInertiaRunning:0];
  }
}

- (void)setSimdUp:(SCNCameraController *)self
{
  v6 = v2;
  [(SCNCameraController *)self _setInertiaRunning:0];
  v4 = vmulq_f32(v6, v6);
  *&v5 = v4.f32[2] + vaddv_f32(*v4.f32);
  *v4.f32 = vrsqrte_f32(v5);
  *v4.f32 = vmul_f32(*v4.f32, vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32)));
  *self->_up = vmulq_n_f32(v6, vmul_f32(*v4.f32, vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32))).f32[0]);
}

- (float)minimumHorizontalAngle
{
  v2 = *self->_minimumAngles;
  LODWORD(result) = v2;
  return result;
}

- (float)maximumHorizontalAngle
{
  v2 = *self->_maximumAngles;
  LODWORD(result) = v2;
  return result;
}

- (void)setMinimumVerticalAngle:(float)minimumVerticalAngle
{
  v3 = minimumVerticalAngle / 180.0 * 3.14159265;
  if (v3 > 1.57079633)
  {
    v3 = 1.57079633;
  }

  v4 = fmax(v3, -1.57079633);
  *&self->_minimumAngles[4] = v4;
}

- (void)setMinimumHorizontalAngle:(float)minimumHorizontalAngle
{
  v3 = minimumHorizontalAngle / 180.0 * 3.14159265;
  if (v3 > 3.14159265)
  {
    v3 = 3.14159265;
  }

  v4 = fmax(v3, -3.14159265);
  *self->_minimumAngles = v4;
}

- (void)setMaximumVerticalAngle:(float)maximumVerticalAngle
{
  v3 = maximumVerticalAngle / 180.0 * 3.14159265;
  if (v3 > 1.57079633)
  {
    v3 = 1.57079633;
  }

  v4 = fmax(v3, -1.57079633);
  *&self->_maximumAngles[4] = v4;
}

- (void)setMaximumHorizontalAngle:(float)maximumHorizontalAngle
{
  v3 = maximumHorizontalAngle / 180.0 * 3.14159265;
  if (v3 > 3.14159265)
  {
    v3 = 3.14159265;
  }

  v4 = fmax(v3, -3.14159265);
  *self->_maximumAngles = v4;
}

- (void)translateInCameraSpaceByX:(float)deltaX Y:(float)deltaY Z:(float)deltaZ
{
  [(SCNCameraController *)self _setInertiaRunning:0];
  *&v9 = deltaX;
  *&v10 = deltaY;
  *&v11 = deltaZ;

  [(SCNCameraController *)self _translateInCameraSpaceByX:v9 Y:v10 Z:v11];
}

- (void)translateInScreenSpaceTo:(CGPoint)to viewport:(CGSize)viewport
{
  height = viewport.height;
  width = viewport.width;
  y = to.y;
  x = to.x;
  [(SCNCameraController *)self _setInertiaRunning:0];
  v6.f64[0] = width;
  v6.f64[1] = height;
  __asm { FMOV            V1.2D, #-0.5 }

  v12 = vmulq_f64(v6, _Q1);
  v6.f64[0] = x;
  v6.f64[1] = height - y;
  v17 = COERCE_DOUBLE(vcvt_f32_f64(vaddq_f64(v6, v12)));
  pointOfView = [(SCNCameraController *)self pointOfView];

  [(SCNNode *)pointOfView simdLocalTranslateBy:v17];
}

- (void)rotateByX:(float)deltaX Y:(float)deltaY
{
  [(SCNCameraController *)self _setInertiaRunning:0];
  if (!self->_handlingInteraction)
  {
    [(SCNCameraController *)self _resetOrientationState];
  }

  v7 = deltaX / 180.0 * 3.14159265;
  *&v7 = v7;
  v8 = deltaY / 180.0 * 3.14159265;
  *&v8 = v8;

  [(SCNCameraController *)self _rotateByX:v7 Y:v8];
}

- (void)rollCameraSpaceBy:(float)by withPoint:(CGPoint)point viewport:(CGSize)viewport
{
  height = viewport.height;
  width = viewport.width;
  y = point.y;
  x = point.x;
  [(SCNCameraController *)self _setInertiaRunning:0];
  [(SCNCameraController *)self _directionForScreenPoint:x viewport:y, width, height];
  v12 = v11;
  v13 = vmulq_f32(v11, v11);
  *&v14 = v13.f32[2] + vaddv_f32(*v13.f32);
  if (*&v14 <= 0.000000001)
  {
    v18 = *(MEMORY[0x277D860B8] + 48);
  }

  else
  {
    v20 = v14;
    v15 = by / 180.0 * 3.14159265;
    v21 = v12;
    LODWORD(v18) = *&__sincosf_stret(v15 * 0.5);
    v16 = vrsqrte_f32(v20);
    v17 = vmul_f32(v16, vrsqrts_f32(v20, vmul_f32(v16, v16)));
    *&v18 = vmulq_n_f32(vmulq_n_f32(v21, vmul_f32(v17, vrsqrts_f32(v20, vmul_f32(v17, v17))).f32[0]), *&v18).u64[0];
  }

  v22 = *&v18;
  pointOfView = [(SCNCameraController *)self pointOfView];

  [(SCNNode *)pointOfView simdLocalRotateBy:v22];
}

- (void)rollAroundTarget:(float)delta
{
  [(SCNCameraController *)self _setInertiaRunning:0];
  [(SCNCameraController *)self simdTarget];
  v12 = v5;
  [(SCNNode *)[(SCNCameraController *)self pointOfView] simdWorldTransform];
  v6 = __invert_f4(v16);
  v6.columns[2] = vaddq_f32(v6.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6.columns[0], v12.f32[0]), v6.columns[1], *v12.f32, 1), v6.columns[2], v12, 2));
  v6.columns[0] = vmulq_f32(v6.columns[2], v6.columns[2]);
  v6.columns[1].f32[0] = v6.columns[0].f32[2] + vaddv_f32(*v6.columns[0].f32);
  if (v6.columns[1].f32[0] <= 0.000000001)
  {
    v9 = *(MEMORY[0x277D860B8] + 48);
  }

  else
  {
    v11 = v6.columns[1];
    v6.columns[0].f32[0] = delta / 180.0 * 3.14159265;
    v13 = v6.columns[2];
    LODWORD(v9) = *&__sincosf_stret(v6.columns[0].f32[0] * 0.5);
    v7 = vrsqrte_f32(v11.u32[0]);
    v8 = vmul_f32(v7, vrsqrts_f32(v11.u32[0], vmul_f32(v7, v7)));
    *&v9 = vmulq_n_f32(vmulq_n_f32(v13, vmul_f32(v8, vrsqrts_f32(v11.u32[0], vmul_f32(v8, v8))).f32[0]), *&v9).u64[0];
  }

  v14 = *&v9;
  pointOfView = [(SCNCameraController *)self pointOfView];

  [(SCNNode *)pointOfView simdLocalRotateBy:v14];
}

- (void)dollyToTarget:(float)delta
{
  [(SCNCameraController *)self _setInertiaRunning:0];
  pointOfView = [(SCNCameraController *)self pointOfView];
  if (pointOfView)
  {
    [(SCNNode *)pointOfView transform];
    v8.columns[0] = v24;
    v8.columns[1].i32[0] = v25.i32[0];
    v7 = v24.i32[3];
    v8.columns[2].i32[0] = v25.i32[1];
    v9 = v26.i32[0];
    v8.columns[3] = v27;
    v10 = vextq_s8(v27, vtrn2q_s32(v26, v27), 4uLL);
    v11 = vzip2q_s64(v26, v25);
    v6 = vextq_s8(v8.columns[0], v8.columns[0], 8uLL);
    *v6.i8 = vext_s8(*v24.f32, *v6.i8, 4uLL);
  }

  else
  {
    v8.columns[3] = 0uLL;
    v9 = 0;
    v8.columns[2].i32[0] = 0;
    v8.columns[1].i32[0] = 0;
    v7 = 0;
    v8.columns[0] = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v6.i64[0] = 0;
  }

  v8.columns[0] = vextq_s8(vextq_s8(v8.columns[0], v8.columns[0], 4uLL), v6, 0xCuLL);
  v8.columns[0].i32[3] = v7;
  v8.columns[1].i32[1] = v8.columns[2].i32[0];
  v8.columns[1].i64[1] = v11.i64[1];
  v8.columns[2] = vextq_s8(v10, v11, 8uLL);
  v8.columns[2].i32[0] = v9;
  v8.columns[3] = vextq_s8(vextq_s8(v8.columns[3], v8.columns[3], 4uLL), v10, 0xCuLL);
  v28 = __invert_f4(v8);
  v23 = vaddq_f32(v28.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28.columns[0], COERCE_FLOAT(*self->_target)), v28.columns[1], *self->_target, 1), v28.columns[2], *self->_target, 2));
  v28.columns[0] = vmulq_f32(v23, v23);
  v28.columns[2].f32[0] = v28.columns[0].f32[2] + vaddv_f32(*v28.columns[0].f32);
  *v28.columns[0].f32 = vrsqrte_f32(v28.columns[2].u32[0]);
  *v28.columns[0].f32 = vmul_f32(*v28.columns[0].f32, vrsqrts_f32(v28.columns[2].u32[0], vmul_f32(*v28.columns[0].f32, *v28.columns[0].f32)));
  v21 = *self->_target;
  LODWORD(v22) = vmul_f32(*v28.columns[0].f32, vrsqrts_f32(v28.columns[2].u32[0], vmul_f32(*v28.columns[0].f32, *v28.columns[0].f32))).u32[0];
  [(SCNNode *)[(SCNCameraController *)self pointOfView] simdWorldPosition];
  v20 = v12;
  pointOfView2 = [(SCNCameraController *)self pointOfView];
  +[SCNNode simdLocalFront];
  [(SCNNode *)pointOfView2 simdConvertVector:0 toNode:?];
  v14 = vsubq_f32(v21, v20);
  v16 = vmulq_f32(v14, v15);
  if ((v16.f32[2] + vaddv_f32(*v16.f32)) <= 0.0)
  {
    v17 = -1.0;
  }

  else
  {
    v17 = 1.0;
  }

  v18 = vmulq_f32(v14, v14);
  if (((v18.f32[2] + vaddv_f32(*v18.f32)) * v17) < 0.0 && delta < 0.0)
  {
    delta = 0.0;
  }

  [(SCNNode *)[(SCNCameraController *)self pointOfView] simdLocalTranslateBy:*vmulq_n_f32(vmulq_n_f32(vnegq_f32(v23), v22), v17 * delta).i64];
}

- (BOOL)useOrbitInteractionMode
{
  if ([(SCNCameraController *)self interactionMode]== SCNInteractionModeOrbitArcball || [(SCNCameraController *)self interactionMode]== SCNInteractionModeOrbitCenteredArcball)
  {
    LOBYTE(interactionMode) = 1;
  }

  else
  {
    interactionMode = [(SCNCameraController *)self interactionMode];
    if (interactionMode != SCNInteractionModeOrbitTurntable)
    {
      LOBYTE(interactionMode) = [(SCNCameraController *)self interactionMode]== SCNInteractionModeOrbitAngleMapping;
    }
  }

  return interactionMode;
}

- (double)unrolledWorldOrientation:(float *)orientation
{
  [objc_msgSend(self "pointOfView")];
  v114 = v5;
  [objc_msgSend(self "pointOfView")];
  v109 = v6;
  [self simdUp];
  v8 = vmulq_f32(v109, v7);
  v9 = v8.f32[2] + vaddv_f32(*v8.f32);
  v10 = fabsf(fabsf(v9) + -1.0);
  if (v9 <= -1.0)
  {
    v10 = 0.0;
  }

  if (v9 >= 1.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= 0.01)
  {
    [self simdTarget];
    v110 = v14;
    [objc_msgSend(self "pointOfView")];
    v111 = vsubq_f32(v110, v15);
    if ([self useOrbitInteractionMode])
    {
      v17 = v111;
      v16 = v114;
      v18 = vcgtq_f32(vdupq_n_s32(0x3C23D70Au), vabdq_f32(0, v111));
      v18.i32[3] = v18.i32[2];
      if ((vminvq_u32(v18) & 0x80000000) != 0)
      {
        v21 = 0;
      }

      else
      {
        v19 = vmulq_f32(v111, v111);
        *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
        *v19.f32 = vrsqrte_f32(v20);
        *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32)));
        v17 = vmulq_n_f32(v111, vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32))).f32[0]);
        v21 = 1;
      }
    }

    else
    {
      v21 = 0;
      v17 = v111;
      v16 = v114;
    }

    v22 = 0;
    v23 = v17;
    v23.i32[3] = v17.i32[0];
    v93 = v23;
    v91 = vnegq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
    v92 = vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL);
    v98 = *(MEMORY[0x277D860B8] + 48);
    v24 = 0.0;
    do
    {
      v112 = vnegq_f32(v16);
      v115 = v16;
      [self simdUp];
      v26 = v115;
      v27 = v25;
      v28 = vdupq_laneq_s32(v115, 3);
      v29 = vzip1q_s32(v26, v26);
      v29.i32[0] = v115.i32[2];
      v30 = vextq_s8(v28, v115, 4uLL);
      v107 = vuzp1q_s32(v26, v26);
      v31 = v107;
      v31.i32[0] = v115.i32[1];
      v32 = v112;
      v33 = v112;
      v33.i32[3] = v112.i32[0];
      v34 = vextq_s8(vextq_s8(v32, v32, 0xCuLL), v32, 8uLL);
      v35 = vextq_s8(vuzp1q_s32(v32, v32), v112, 0xCuLL);
      v108 = v28;
      if (v21)
      {
        v36 = xmmword_21C27FD00;
        v37 = 0uLL;
        v38 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(vmulq_f32(v93, v30), xmmword_21C27FD00), 0, v115), xmmword_21C27FD00, vmulq_f32(v92, v29)), v31, v91);
        v39 = vzip1q_s32(v38, v38);
        v39.i32[0] = v38.i32[2];
        v40 = vmlaq_f32(vmlaq_f32(vmulq_f32(vmulq_f32(v33, vextq_s8(vdupq_laneq_s32(v38, 3), v38, 4uLL)), xmmword_21C27FD00), v38, v28), xmmword_21C27FD00, vmulq_f32(v34, v39));
        v41 = vuzp1q_s32(v38, v38);
        v41.i32[0] = v38.i32[1];
        v113 = vmlaq_f32(v40, v41, vnegq_f32(v35));
      }

      else
      {
        v101 = v25;
        v104 = v35;
        v99 = v34;
        v96 = v31;
        v97 = v33;
        v94 = v30;
        v95 = v29;
        +[SCNNode simdLocalFront];
        v30 = v94;
        v29 = v95;
        v31 = v96;
        v33 = v97;
        v34 = v99;
        v27 = v101;
        v35 = v104;
        v26 = v115;
        v113 = v42;
        v36 = xmmword_21C27FD00;
        v37 = 0uLL;
      }

      v43 = v27;
      v43.i32[3] = v27.i32[0];
      v44 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(vmulq_f32(v43, v30), v36), v37, v26), v36, vmulq_f32(vextq_s8(vextq_s8(v27, v27, 0xCuLL), v27, 8uLL), v29)), v31, vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL));
      v45 = vzip1q_s32(v44, v44);
      v45.i32[0] = v44.i32[2];
      v46 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(v33, vextq_s8(vdupq_laneq_s32(v44, 3), v44, 4uLL)), v36), v44, v26, 3), v36, vmulq_f32(v34, v45));
      v47 = vuzp1q_s32(v44, v44);
      v47.i32[0] = v44.i32[1];
      v100 = vmlsq_f32(v46, v47, v35);
      +[SCNNode simdLocalUp];
      v102 = v48;
      +[SCNNode simdLocalFront];
      v50 = vmulq_f32(v100, v49);
      v51.f32[0] = v50.f32[2] + vaddv_f32(*v50.f32);
      v52 = vmlsq_lane_f32(v100, v49, v51, 0);
      v53 = v49;
      v54 = vmulq_f32(v52, v52);
      v54.f32[0] = v54.f32[2] + vaddv_f32(*v54.f32);
      v55 = vdupq_lane_s32(*v54.f32, 0);
      v56 = vrsqrteq_f32(v55);
      v57 = vmulq_f32(v56, vrsqrtsq_f32(v55, vmulq_f32(v56, v56)));
      v58 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v54.f32[0] != 0.0)), 0x1FuLL));
      v58.i32[3] = 0;
      v59 = vbslq_s8(vcltzq_s32(v58), vmulq_f32(vmulq_f32(v57, vrsqrtsq_f32(v55, vmulq_f32(v57, v57))), v52), v52);
      v105 = v53;
      v60 = vmulq_f32(v102, v53);
      v60.f32[0] = v60.f32[2] + vaddv_f32(*v60.f32);
      v61 = vmlsq_lane_f32(v102, v53, *v60.f32, 0);
      v62 = vmulq_f32(v61, v61);
      v63 = v61;
      v62.f32[0] = v62.f32[2] + vaddv_f32(*v62.f32);
      v64 = vdupq_lane_s32(*v62.f32, 0);
      v65 = vrsqrteq_f32(v64);
      v66 = vmulq_f32(v65, vrsqrtsq_f32(v64, vmulq_f32(v65, v65)));
      v67 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v62.f32[0] != 0.0)), 0x1FuLL));
      v67.i32[3] = 0;
      v68 = vbslq_s8(vcltzq_s32(v67), vmulq_f32(vmulq_f32(v66, vrsqrtsq_f32(v64, vmulq_f32(v66, v66))), v63), v63);
      v69 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL), vnegq_f32(v59)), v68, vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL));
      v103 = vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL);
      v70 = vmulq_f32(v68, v59);
      v71 = v70.f32[2] + vaddv_f32(*v70.f32);
      if (v71 >= 1.0)
      {
        v71 = 1.0;
      }

      if (v71 <= -1.0)
      {
        v71 = -1.0;
      }

      v72 = acosf(v71);
      v73 = vmulq_f32(v105, v103);
      if ((v73.f32[2] + vaddv_f32(*v73.f32)) <= 0.0)
      {
        v74 = -v72;
      }

      else
      {
        v74 = v72;
      }

      v75 = vmulq_f32(v113, v113);
      v76 = v75.f32[2] + vaddv_f32(*v75.f32);
      v77 = v98;
      if (v76 > 0.000000001)
      {
        v106 = v76;
        v78 = __sincosf_stret(v74 * -0.5);
        v79 = vrsqrte_f32(LODWORD(v106));
        v80 = vmul_f32(v79, vrsqrts_f32(LODWORD(v106), vmul_f32(v79, v79)));
        v77 = vmulq_n_f32(vmulq_n_f32(v113, vmul_f32(v80, vrsqrts_f32(LODWORD(v106), vmul_f32(v80, v80))).f32[0]), v78.__sinval);
        v77.i32[3] = LODWORD(v78.__cosval);
      }

      v81 = v115;
      v82 = vextq_s8(vextq_s8(v81, v81, 0xCuLL), v115, 8uLL);
      v81.i32[3] = v115.i32[0];
      v83 = vzip1q_s32(v77, v77);
      v83.i32[0] = v77.i32[2];
      v84 = vmlaq_f32(vmlaq_f32(vmulq_f32(vmulq_f32(v81, vextq_s8(vdupq_laneq_s32(v77, 3), v77, 4uLL)), xmmword_21C27FD00), v77, v108), xmmword_21C27FD00, vmulq_f32(v82, v83));
      v85 = vuzp1q_s32(v77, v77);
      v85.i32[0] = v77.i32[1];
      v16 = vmlsq_f32(v84, v85, vextq_s8(v107, v115, 0xCuLL));
      v24 = v24 + v74;
      if (fabsf(v72) <= 0.001)
      {
        break;
      }
    }

    while (v22++ < 0x63);
    if (orientation)
    {
      *orientation = v24;
    }

    v87 = vmulq_f32(v16, v16);
    *v87.i8 = vadd_f32(*v87.i8, *&vextq_s8(v87, v87, 8uLL));
    v88 = vdupq_lane_s32(vadd_f32(*v87.i8, vdup_lane_s32(*v87.i8, 1)), 0);
    v89 = vrsqrteq_f32(v88);
    v90 = vmulq_f32(v89, vrsqrtsq_f32(v88, vmulq_f32(v89, v89)));
    *&result = vbslq_s8(vceqzq_f32(v88), v16, vmulq_f32(v16, vmulq_f32(v90, vrsqrtsq_f32(v88, vmulq_f32(v90, v90))))).u64[0];
  }

  else
  {
    if (orientation)
    {
      *orientation = 0.0;
    }

    pointOfView = [self pointOfView];

    [pointOfView simdWorldOrientation];
  }

  return result;
}

- (void)clearRoll
{
  [(SCNCameraController *)self _setInertiaRunning:0];
  [(SCNCameraController *)self unrolledWorldOrientation:0];
  v5 = v3;
  pointOfView = [(SCNCameraController *)self pointOfView];

  [(SCNNode *)pointOfView setSimdWorldOrientation:v5];
}

- (void)frameNodes:(NSArray *)nodes
{
  v27[1] = *MEMORY[0x277D85DE8];
  [(SCNCameraController *)self _setInertiaRunning:0];
  if ([(SCNNode *)[(SCNCameraController *)self pointOfView] camera])
  {
    scene = [(SCNNode *)[(SCNCameraController *)self pointOfView] scene];
    if (scene)
    {
      v6 = scene;
      BoundingSphere = SCNNodeGetBoundingSphere(nodes, 16843009);
      v9.i64[0] = BoundingSphere;
      v9.i64[1] = v8;
      v10 = *(&v8 + 1);
      if (*(&v8 + 1) != 0.0)
      {
        v26 = v9;
        if ([[(SCNNode *)[(SCNCameraController *)self pointOfView] camera] usesOrthographicProjection])
        {
          v27[0] = [v6 rootNode];
          v11.i64[0] = SCNNodeGetBoundingSphere([MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1], 0x10000);
          v11.i64[1] = v12;
          v13 = vsubq_f32(v26, v11);
          v14 = vmulq_f32(v13, v13);
          v15 = (*(&v12 + 1) + sqrtf(v14.f32[2] + vaddv_f32(*v14.f32)));
          [[(SCNNode *)[(SCNCameraController *)self pointOfView] camera] zNear];
          v17 = v16 + v15;
          [[(SCNNode *)[(SCNCameraController *)self pointOfView] camera] setOrthographicScale:(v10 * 1.33)];
        }

        else
        {
          [[(SCNNode *)[(SCNCameraController *)self pointOfView] camera] fieldOfView];
          *&v20 = v20;
          *&v20 = (*&v20 * 0.5) / 180.0 * 3.14159265;
          v21 = (v10 / sinf(*&v20));
          [[(SCNNode *)[(SCNCameraController *)self pointOfView] camera] zNear];
          v17 = v18 + v21;
        }

        *&v18 = v17;
        [(SCNNode *)[(SCNCameraController *)self pointOfView:*&v18] simdWorldFront];
        v23 = vmulq_f32(v22, v22);
        *&v24 = v23.f32[2] + vaddv_f32(*v23.f32);
        *v23.f32 = vrsqrte_f32(v24);
        *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32)));
        [(SCNNode *)[(SCNCameraController *)self pointOfView] setSimdPosition:*vmlsq_lane_f32(v26, vmulq_n_f32(v22, vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32))).f32[0]), v25, 0).i64];
        if ([(SCNCameraController *)self automaticTarget])
        {
          [(SCNCameraController *)self setSimdTarget:*&BoundingSphere];
        }
      }
    }
  }
}

- (double)lookAtWith:(float32x4_t)with target:
{
  [self simdUp];
  v3 = vsubq_f32(with, a2);
  v4 = vmulq_f32(v3, v3);
  *&v5 = v4.f32[2] + vaddv_f32(*v4.f32);
  v6 = vrsqrte_f32(v5);
  v7 = vmul_f32(v6, vrsqrts_f32(v5, vmul_f32(v6, v6)));
  v8 = vmulq_n_f32(vnegq_f32(v3), vmul_f32(v7, vrsqrts_f32(v5, vmul_f32(v7, v7))).f32[0]);
  v10 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), vnegq_f32(v9)), v8, vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
  v11 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
  v12 = vmulq_f32(v10, v10);
  *&v13 = v12.f32[1] + (v12.f32[2] + v12.f32[0]);
  *v12.f32 = vrsqrte_f32(v13);
  *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32)));
  *&result = vmulq_n_f32(v11, vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32))).f32[0]).u64[0];
  return result;
}

- (void)beginInteraction:(CGPoint)location withViewport:(CGSize)viewport
{
  height = viewport.height;
  y = location.y;
  width = viewport.width;
  x = location.x;
  [(SCNCameraController *)self _setInertiaRunning:0];
  v5.f64[0] = width;
  v5.f64[1] = height;
  v17 = v5;
  self->_handlingInteraction = 1;
  if ([(SCNCameraController *)self automaticTarget])
  {
    sceneRef = [(SCNNode *)[(SCNCameraController *)self pointOfView] sceneRef];
    if (!sceneRef)
    {
      return;
    }

    v7 = sceneRef;
    v8.f64[0] = x;
    v16 = vcvt_hight_f32_f64(0, v17);
    v8.f64[1] = y;
    v9 = vcvt_f32_f64(v8);
    C3DSceneLock(sceneRef);
    nodeRef = [(SCNNode *)[(SCNCameraController *)self pointOfView] nodeRef];
    HitTestResultsAtPoint = C3DSceneCreateHitTestResultsAtPoint(v7, nodeRef, 0, *&v9, v16, v11);
    C3DSceneUnlock(v7);
    if (HitTestResultsAtPoint)
    {
      v13 = [SCNHitTestResult hitTestResultsFromHitTestResultRef:HitTestResultsAtPoint];
      CFRelease(HitTestResultsAtPoint);
      if ([v13 count])
      {
        [objc_msgSend(v13 objectAtIndex:{0), "worldCoordinates"}];
        [(SCNCameraController *)self setTarget:?];
      }
    }
  }

  else
  {
    v14.f64[0] = x;
    v14.f64[1] = y;
    v9 = vcvt_f32_f64(v14);
  }

  *self->_anon_70 = v9;
  *&self->_anon_70[16] = v9;
  [(SCNCameraController *)self _resetOrientationState];
  if ([(SCNCameraController *)self interactionMode]== SCNInteractionModeOrbitCenteredArcball || [(SCNCameraController *)self interactionMode]== SCNInteractionModeOrbitArcball)
  {
    *self->_anon_90 = vmla_f32(vneg_f32(*self->_anon_70), 0x3F0000003F000000, vcvt_f32_f64(v17));
    [(SCNCameraController *)self _mapToSphere:x inViewport:y, width, height];
    *&self->_anon_90[16] = v15;
  }
}

- (void)continueInteraction:(CGPoint)location withViewport:(CGSize)viewport sensitivity:(CGFloat)sensitivity
{
  height = viewport.height;
  width = viewport.width;
  v21 = *&location.y;
  y = location.y;
  *&self->_anon_70[8] = vcvt_f32_f64(location);
  if (viewport.width >= viewport.height)
  {
    v9 = viewport.width;
  }

  else
  {
    v9 = viewport.height;
  }

  v10 = 360.0 / v9 * sensitivity;
  v11 = sensitivity;
  self->_inertia.rotationSensitivity = v10;
  self->_inertia.translationSensitivity = v11;
  if ([(SCNCameraController *)self interactionMode:location]== SCNInteractionModeFly || [(SCNCameraController *)self interactionMode]== SCNInteractionModeOrbitTurntable || [(SCNCameraController *)self interactionMode]== SCNInteractionModeOrbitAngleMapping)
  {
    v12 = *&self->_anon_70[8];
    v13 = COERCE_DOUBLE(vmul_n_f32(vsub_f32(*self->_anon_70, *&v12), self->_inertia.rotationSensitivity));
    LODWORD(v12) = HIDWORD(v13);
    [(SCNCameraController *)self rotateByX:v13 Y:v12];
    *self->_anon_70 = *&self->_anon_70[8];
  }

  else
  {
    if ([(SCNCameraController *)self interactionMode]!= SCNInteractionModeOrbitCenteredArcball && [(SCNCameraController *)self interactionMode]!= SCNInteractionModeOrbitArcball)
    {
      if ([(SCNCameraController *)self interactionMode]== SCNInteractionModePan)
      {
        v15 = vsub_f32(*&self->_anon_70[8], *&self->_anon_70[16]);
        v16 = COERCE_DOUBLE(vmul_n_f32(v15, self->_inertia.translationSensitivity));
        v15.f32[0] = -*&v16;
        LODWORD(v16) = HIDWORD(v16);
        v17 = 0.0;
        selfCopy2 = self;
      }

      else
      {
        if ([(SCNCameraController *)self interactionMode]!= SCNInteractionModeTruck)
        {
          goto LABEL_8;
        }

        v15 = vmul_n_f32(vsub_f32(*&self->_anon_70[8], *&self->_anon_70[16]), self->_inertia.translationSensitivity);
        *&v17 = -v15.f32[1];
        v16 = 0.0;
        selfCopy2 = self;
      }

      [(SCNCameraController *)selfCopy2 _translateInCameraSpaceByX:*&v15 Y:v16 Z:v17];
      goto LABEL_8;
    }

    [(SCNCameraController *)self _mapToSphere:v20 inViewport:v22, width, height];
    *&self->_anon_90[32] = v14;
    [(SCNCameraController *)self _updateArcballOrientation];
  }

LABEL_8:
  *&self->_anon_70[16] = *&self->_anon_70[8];
}

- (void)rollBy:(float)delta aroundScreenPoint:(CGPoint)point viewport:(CGSize)viewport
{
  height = viewport.height;
  width = viewport.width;
  y = point.y;
  x = point.x;
  [(SCNCameraController *)self _setInertiaRunning:0];
  [(SCNCameraController *)self _directionForScreenPoint:x viewport:y, width, height];
  v12 = v11;
  v13 = vmulq_f32(v11, v11);
  *&v14 = v13.f32[2] + vaddv_f32(*v13.f32);
  if (*&v14 <= 0.000000001)
  {
    v19 = *(MEMORY[0x277D860B8] + 48);
  }

  else
  {
    v27 = v14;
    v15 = delta / 180.0 * 3.14159265;
    v28 = v12;
    v16 = __sincosf_stret(v15 * 0.5);
    v17 = vrsqrte_f32(v27);
    v18 = vmul_f32(v17, vrsqrts_f32(v27, vmul_f32(v17, v17)));
    v19 = vmulq_n_f32(vmulq_n_f32(v28, vmul_f32(v18, vrsqrts_f32(v27, vmul_f32(v18, v18))).f32[0]), v16.__sinval);
    v19.i32[3] = LODWORD(v16.__cosval);
  }

  v29 = v19;
  [(SCNNode *)[(SCNCameraController *)self pointOfView] simdOrientation];
  v21 = v20;
  v21.i32[3] = v20.i32[0];
  v22 = v29;
  v23 = vzip1q_s32(v22, v22);
  v23.i32[0] = v29.i32[2];
  v24 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(v29, 3), v29, 4uLL), v21), xmmword_21C27FD00), v29, v20, 3), xmmword_21C27FD00, vmulq_f32(v23, vextq_s8(vextq_s8(v20, v20, 0xCuLL), v20, 8uLL)));
  v25 = vuzp1q_s32(v22, v22);
  v25.i32[0] = v29.i32[1];
  *&v30 = vmlsq_f32(v24, v25, vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL)).u64[0];
  pointOfView = [(SCNCameraController *)self pointOfView];

  [(SCNNode *)pointOfView setSimdOrientation:v30];
}

- (void)dollyBy:(float)delta onScreenPoint:(CGPoint)point viewport:(CGSize)viewport
{
  height = viewport.height;
  width = viewport.width;
  y = point.y;
  x = point.x;
  [(SCNCameraController *)self _setInertiaRunning:0];
  [(SCNCameraController *)self _directionForScreenPoint:x viewport:y, width, height];
  v13 = v10;
  pointOfView = [(SCNCameraController *)self pointOfView];
  *&v12 = vmulq_n_f32(v13, delta).u64[0];

  [(SCNNode *)pointOfView simdLocalTranslateBy:v12];
}

- (void)_resetOrientationState
{
  [(SCNNode *)[(SCNCameraController *)self pointOfView] simdWorldTransform];
  *&self->_anon_10[16] = v3;
  *&self->_anon_10[32] = v4;
  *&self->_anon_10[48] = v5;
  *&self->_anon_10[64] = v6;
  v7 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL), vnegq_f32(v4)), v5, vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL));
  v8 = vmulq_f32(v3, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL));
  v9 = (v8.f32[2] + vaddv_f32(*v8.f32)) < 0.0;
  v10 = 1.0;
  if (v9)
  {
    v10 = -1.0;
  }

  v11 = vmulq_f32(v3, v3);
  v12 = vmulq_f32(v4, v4);
  v13 = vadd_f32(vzip1_s32(*v11.i8, *v12.i8), vzip2_s32(*v11.i8, *v12.i8));
  v14 = vextq_s8(v11, v11, 8uLL);
  *v14.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v14.f32, *&vextq_s8(v12, v12, 8uLL)), v13));
  v15 = vmulq_f32(v5, v5);
  v14.i32[2] = sqrtf(v15.f32[2] + vaddv_f32(*v15.f32));
  v16 = vmulq_n_f32(v14, v10);
  v17 = vceqzq_f32(v16);
  v17.i32[3] = v17.i32[2];
  if ((vmaxvq_u32(v17) & 0x80000000) == 0)
  {
    v18 = vmvnq_s8(vorrq_s8(vcltzq_f32(v16), vcgezq_f32(v16)));
    v18.i32[3] = v18.i32[2];
    if ((vmaxvq_u32(v18) & 0x80000000) == 0)
    {
      v19 = vdivq_f32(v3, vdupq_lane_s32(*v16.f32, 0));
      v20 = vdivq_f32(v4, vdupq_lane_s32(*v16.f32, 1));
      v21 = vdivq_f32(v5, vdupq_laneq_s32(v16, 2));
      v22 = v21.f32[2] + (*v19.i32 + v20.f32[1]);
      if (v22 > 0.0)
      {
        *v21.f32 = vsub_f32(*&vzip2q_s32(v20, vuzp1q_s32(v20, v21)), *&vtrn2q_s32(v21, vzip2q_s32(v21, v19)));
        v21.f32[2] = *&v19.i32[1] - v20.f32[0];
        v23 = v22 + 1.0;
        v21.f32[3] = v22 + 1.0;
LABEL_17:
        v20.i32[0] = 0;
        v32 = vmulq_n_f32(v21, 0.5 / sqrtf(v23));
        v33 = vmvnq_s8(vceqq_f32(v32, v32));
        v33.i32[0] = vmaxvq_u32(v33);
        v24 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v20, v33), 0), *(MEMORY[0x277D860B8] + 48), v32);
        goto LABEL_18;
      }

      if (*v19.i32 <= v20.f32[1] || *v19.i32 <= v21.f32[2])
      {
        if (v20.f32[1] > v21.f32[2])
        {
          v26 = v20;
          v26.f32[1] = (v20.f32[1] + 1.0) - *v19.i32;
          v26.i32[3] = v21.i32[0];
          v27 = vzip2q_s32(vzip1q_s32(v19, v21), vtrn1q_s32(v21, v19));
          v28 = vsubq_f32(v26, v27);
          v20 = vrev64q_s32(vaddq_f32(v20, v27));
          v21 = vtrn2q_s32(v20, v28);
          v23 = *&v28.i32[1];
          goto LABEL_17;
        }

        *v21.f32 = vadd_f32(*v21.f32, *&vzip2q_s32(v19, v20));
        v23 = ((v21.f32[2] + 1.0) - *v19.i32) - v20.f32[1];
        v21.f32[2] = v23;
        v31 = *&v19.i32[1] - v20.f32[0];
      }

      else
      {
        v23 = ((*v19.i32 + 1.0) - v20.f32[1]) - v21.f32[2];
        *&v29 = v20.f32[0] + *&v19.i32[1];
        v30 = v21.f32[0] + *&v19.i32[2];
        v31 = v20.f32[2] - v21.f32[1];
        v21.i64[0] = __PAIR64__(v29, LODWORD(v23));
        v21.f32[2] = v30;
      }

      v21.f32[3] = v31;
      goto LABEL_17;
    }
  }

  v24 = *(MEMORY[0x277D860B8] + 48);
LABEL_18:
  *&self->_anon_10[80] = v24;
  *self->_anon_10 = 0;
  v34 = vmvn_s8(vceqz_f32(*self->_minimumAngles));
  if ((vpmax_u32(v34, v34).u32[0] & 0x80000000) != 0 || (v35.i64[0] = 0, v36 = vmvn_s8(vceqz_f32(*self->_maximumAngles)), (vpmax_u32(v36, v36).u32[0] & 0x80000000) != 0))
  {
    interactionMode = [(SCNCameraController *)self interactionMode];
    pointOfView = [(SCNCameraController *)self pointOfView];
    if (interactionMode)
    {
      [(SCNNode *)pointOfView simdWorldPosition];
      v73 = v39;
      [(SCNCameraController *)self simdTarget];
      v41 = vsubq_f32(v73, v40);
    }

    else
    {
      [(SCNNode *)pointOfView simdWorldFront];
      v41 = vnegq_f32(v42);
    }

    v74 = v41;
    [(SCNCameraController *)self simdUp];
    v44 = vmulq_f32(v74, v43);
    v44.f32[0] = v44.f32[2] + vaddv_f32(*v44.f32);
    v70 = vmlsq_lane_f32(v74, v43, *v44.f32, 0);
    v72 = atan2f(v70.f32[0], v70.f32[2]);
    [(SCNNode *)[(SCNCameraController *)self pointOfView] simdWorldRight];
    v46 = vmulq_f32(v45, v70);
    v47.f32[0] = v46.f32[2] + vaddv_f32(*v46.f32);
    v48 = vmlsq_lane_f32(v70, v45, v47, 0);
    v49 = v45;
    v71 = v45;
    v50 = vmulq_f32(v48, v48);
    v50.f32[0] = v50.f32[2] + vaddv_f32(*v50.f32);
    v51 = vdupq_lane_s32(*v50.f32, 0);
    v52 = vrsqrteq_f32(v51);
    v53 = vmulq_f32(v52, vrsqrtsq_f32(v51, vmulq_f32(v52, v52)));
    v54 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v50.f32[0] != 0.0)), 0x1FuLL));
    v54.i32[3] = 0;
    v55 = vbslq_s8(vcltzq_s32(v54), vmulq_f32(vmulq_f32(v53, vrsqrtsq_f32(v51, vmulq_f32(v53, v53))), v48), v48);
    v56 = vmulq_f32(v74, v49);
    v56.f32[0] = v56.f32[2] + vaddv_f32(*v56.f32);
    v57 = vmlsq_lane_f32(v74, v49, *v56.f32, 0);
    v58 = vmulq_f32(v57, v57);
    v59 = v57;
    v58.f32[0] = v58.f32[2] + vaddv_f32(*v58.f32);
    v60 = vdupq_lane_s32(*v58.f32, 0);
    v61 = vrsqrteq_f32(v60);
    v62 = vmulq_f32(v61, vrsqrtsq_f32(v60, vmulq_f32(v61, v61)));
    v63 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v58.f32[0] != 0.0)), 0x1FuLL));
    v63.i32[3] = 0;
    v64 = vbslq_s8(vcltzq_s32(v63), vmulq_f32(vmulq_f32(v62, vrsqrtsq_f32(v60, vmulq_f32(v62, v62))), v59), v59);
    v65 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL), vnegq_f32(v55)), v64, vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL));
    v75 = vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL);
    v66 = vmulq_f32(v64, v55);
    v67 = v66.f32[2] + vaddv_f32(*v66.f32);
    if (v67 >= 1.0)
    {
      v67 = 1.0;
    }

    if (v67 <= -1.0)
    {
      v67 = -1.0;
    }

    v68 = acosf(v67);
    v35 = vmulq_f32(v71, v75);
    v69 = vaddv_f32(*v35.f32);
    v35.f32[0] = v72;
    if ((v35.f32[2] + v69) <= 0.0)
    {
      v68 = -v68;
    }

    v35.f32[1] = v68;
  }

  *&self->_anon_10[8] = v35.i64[0];
}

- (float32x4_t)_directionForScreenPoint:(double)point viewport:(float64_t)viewport
{
  result = [objc_msgSend(self "pointOfView")];
  if (result)
  {
    v6 = result;
    result = C3DGetScene(result);
    if (result)
    {
      v7 = result;
      v8 = C3DGetScene(v6);
      C3DSceneLock(v8);
      memset(v20, 0, sizeof(v20));
      if (C3DNodeGetProjectionInfos(v6, v20))
      {
        if ((v20[0] & 2) != 0)
        {
          C3DAdjustZRangeOfProjectionInfos(v20, v6, 0, v7);
        }

        v9.f64[0] = viewport;
        v9.f64[1] = a5;
        v19 = vcvt_hight_f32_f64(0, v9);
        v21 = *C3DProjectionInfosGetMatrix(v20, &v19, 0);
        __invert_f4(v21);
        __asm { FMOV            V1.4S, #-1.0 }

        v15 = C3DGetScene(v6);
        return C3DSceneUnlock(v15);
      }

      else
      {
        v16 = C3DGetScene(v6);
        return C3DSceneUnlock(v16);
      }
    }
  }

  return result;
}

- (void)_updateInertiaAtTime:(double)time
{
  if (!self->_inertia.inertiaRunning)
  {
    return;
  }

  v4 = (time - self->_inertia.lastSimulationTime) * 60.0;
  v5 = fmaxf(v4, 1.0);
  self->_inertia.lastSimulationTime = time;
  if (v5 >= 1)
  {
    friction = self->_inertia.friction;
    do
    {
      if (friction != 0.0)
      {
        if (v4 <= 1.0)
        {
          v7 = v4;
        }

        else
        {
          v7 = 1.0;
        }

        *self->_anon_e0 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*self->_anon_e0), 1.0 - (fmaxf(v7, 0.0) * friction)));
      }

      v4 = v4 + -1.0;
      --v5;
    }

    while (v5);
  }

  if (![(SCNCameraController *)self drivenByDefaultNavigationCameraController])
  {
    +[SCNTransaction begin];
    [SCNTransaction setDisableActions:1];
  }

  v8 = *self->_anon_e0;
  v9 = vmulq_f64(vcvtq_f64_f32(v8), vdupq_n_s64(0x3F847AE147AE147BuLL));
  *v9.f32 = vcvt_f32_f64(v9);
  v9.i32[2] = 0;
  v10 = vaddq_f32(*&self->_anon_90[32], vaddq_f32(*&self->_anon_90[16], v9));
  v11 = vmulq_f32(v10, v10);
  *&v12 = v11.f32[2] + vaddv_f32(*v11.f32);
  *v11.f32 = vrsqrte_f32(v12);
  *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32)));
  v13 = COERCE_DOUBLE(vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32))));
  *&self->_anon_90[32] = vmulq_n_f32(v10, *&v13);
  interactionMode = self->_interactionMode;
  if (interactionMode <= 2)
  {
    if (interactionMode < 3)
    {
      v17 = vmul_n_f32(v8, self->_inertia.rotationSensitivity);
      v18 = -v17.f32[0] / 180.0 * 3.14159265;
      *&v18 = v18;
      v19 = v17.f32[1] / 180.0 * 3.14159265;
      *&v19 = v19;
      [(SCNCameraController *)self _rotateByX:v18 Y:v19];
    }

    goto LABEL_22;
  }

  if ((interactionMode - 3) < 2)
  {
    [(SCNCameraController *)self _updateArcballOrientation];
  }

  else
  {
    if (interactionMode == 5)
    {
      v15 = COERCE_DOUBLE(vmul_n_f32(v8, self->_inertia.translationSensitivity));
      v8.f32[0] = -*&v15;
      *&v15 = -*(&v15 + 1);
      v13 = 0.0;
      selfCopy2 = self;
      goto LABEL_21;
    }

    if (interactionMode == 6)
    {
      v8 = vmul_n_f32(v8, self->_inertia.translationSensitivity);
      LODWORD(v13) = v8.i32[1];
      v15 = 0.0;
      selfCopy2 = self;
LABEL_21:
      [(SCNCameraController *)selfCopy2 _translateInCameraSpaceByX:*&v8 Y:v15 Z:v13];
    }
  }

LABEL_22:
  if (![(SCNCameraController *)self drivenByDefaultNavigationCameraController])
  {
    +[SCNTransaction commit];
  }

  if (vaddv_f32(vmul_f32(*self->_anon_e0, *self->_anon_e0)) < 0.1)
  {

    [(SCNCameraController *)self _setInertiaRunning:0];
  }
}

- (__n128)_targetRelativeToPointOfViewParent
{
  if ([-[__n128 pointOfView](self "pointOfView")])
  {
    v2 = [-[__n128 pointOfView](self "pointOfView")];
    v3 = self[16];

    [v2 simdConvertPosition:0 fromNode:v3.n128_f64[0]];
  }

  else
  {
    return self[16];
  }

  return result;
}

- (void)_translateInCameraSpaceByX:(float)x Y:(float)y Z:(float)z
{
  pointOfView = [(SCNCameraController *)self pointOfView];

  [(SCNNode *)pointOfView simdLocalTranslateBy:COERCE_DOUBLE(__PAIR64__(LODWORD(y), LODWORD(x)))];
}

- (void)_rotateByX:(float)x Y:(float)y
{
  v5 = vceqz_f32(*&x);
  if ((vpmin_u32(v5, v5).u32[0] & 0x80000000) == 0)
  {
    v6 = vadd_f32(*&x, *self->_anon_10);
    *&v7 = *v6.i32 + -6.28318531;
    v8 = vbsl_s8(vcgtd_f64(*v6.i32, 6.28318531), __PAIR64__(v6.u32[1], v7), v6);
    *&v9 = *v8.i32 + 6.28318531;
    v10 = vbsl_s8(vcgtd_f64(-6.28318531, *v8.i32), __PAIR64__(v8.u32[1], v9), v8);
    *&v11 = *&v10.i32[1] + -6.28318531;
    v12 = vbsl_s8(vcgtd_f64(*&v10.i32[1], 6.28318531), __PAIR64__(v11, v10.u32[0]), v10);
    *&v13 = *&v12.i32[1] + 6.28318531;
    *self->_anon_10 = vbsl_s8(vcgtd_f64(-6.28318531, *&v12.i32[1]), __PAIR64__(v13, v12.u32[0]), v12);
    [(SCNCameraController *)self _updateRotation];
  }
}

- (double)_orientationForMode
{
  v41 = *(MEMORY[0x277D860B8] + 48);
  if ([self interactionMode])
  {
    if ([self interactionMode] == 1)
    {
      [self simdUp];
    }

    else
    {
      if ([self interactionMode] != 2)
      {
        v30 = v41;
        goto LABEL_15;
      }

      [objc_msgSend(self "pointOfView")];
    }

    v14 = v2;
    v15 = vmulq_f32(v2, v2);
    *&v3 = v15.f32[2] + vaddv_f32(*v15.f32);
    v16 = v41;
    if (*&v3 > 0.000000001)
    {
      v36 = v3;
      v40 = v14;
      v17 = __sincosf_stret(0.5 * COERCE_FLOAT(*(self + 16)));
      v18 = vrsqrte_f32(v36);
      v19 = vmul_f32(v18, vrsqrts_f32(v36, vmul_f32(v18, v18)));
      v16 = vmulq_n_f32(vmulq_n_f32(v40, vmul_f32(v19, vrsqrts_f32(v36, vmul_f32(v19, v19))).f32[0]), v17.__sinval);
      v16.i32[3] = LODWORD(v17.__cosval);
    }

    v39 = v16;
    [objc_msgSend(self pointOfView];
  }

  else
  {
    pointOfView = [self pointOfView];
    [self simdUp];
    [pointOfView simdConvertVector:0 fromNode:?];
    v6 = v5;
    v7 = vmulq_f32(v5, v5);
    *&v8 = v7.f32[2] + vaddv_f32(*v7.f32);
    v9 = v41;
    if (*&v8 > 0.000000001)
    {
      v36 = v8;
      v38 = v6;
      v10 = __sincosf_stret(0.5 * COERCE_FLOAT(*(self + 16)));
      v11 = vrsqrte_f32(v36);
      v12 = vmul_f32(v11, vrsqrts_f32(v36, vmul_f32(v11, v11)));
      v9 = vmulq_n_f32(vmulq_n_f32(v38, vmul_f32(v12, vrsqrts_f32(v36, vmul_f32(v12, v12))).f32[0]), v10.__sinval);
      v9.i32[3] = LODWORD(v10.__cosval);
    }

    v39 = v9;
    +[SCNNode simdLocalRight];
  }

  v20 = v13;
  v21 = vmulq_f32(v13, v13);
  v22 = v21.f32[2] + vaddv_f32(*v21.f32);
  v23 = v41;
  if (v22 > 0.000000001)
  {
    v37 = v22;
    v42 = v20;
    v24 = __sincosf_stret(*(self + 20) * 0.5);
    v25 = vrsqrte_f32(LODWORD(v37));
    v26 = vmul_f32(v25, vrsqrts_f32(LODWORD(v37), vmul_f32(v25, v25)));
    v23 = vmulq_n_f32(vmulq_n_f32(v42, vmul_f32(v26, vrsqrts_f32(LODWORD(v37), vmul_f32(v26, v26))).f32[0]), v24.__sinval);
    v23.i32[3] = LODWORD(v24.__cosval);
  }

  v27 = v39;
  v27.i32[3] = v39.i32[0];
  v28 = vzip1q_s32(v23, v23);
  v28.i32[0] = v23.i32[2];
  v29 = vuzp1q_s32(v23, v23);
  v29.i32[0] = v23.i32[1];
  v30 = vmlsq_f32(vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(v27, vextq_s8(vdupq_laneq_s32(v23, 3), v23, 4uLL)), xmmword_21C27FD00), v23, v39, 3), xmmword_21C27FD00, vmulq_f32(vextq_s8(vextq_s8(v39, v39, 0xCuLL), v39, 8uLL), v28)), v29, vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL));
LABEL_15:
  v31 = vmulq_f32(v30, v30);
  *v31.i8 = vadd_f32(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
  v32 = vdupq_lane_s32(vadd_f32(*v31.i8, vdup_lane_s32(*v31.i8, 1)), 0);
  v33 = vrsqrteq_f32(v32);
  v34 = vmulq_f32(v33, vrsqrtsq_f32(v32, vmulq_f32(v33, v33)));
  *&result = vbslq_s8(vceqzq_f32(v32), v30, vmulq_f32(v30, vmulq_f32(v34, vrsqrtsq_f32(v32, vmulq_f32(v34, v34))))).u64[0];
  return result;
}

- (void)_capOrientationAnglesToMaximum
{
  interactionMode = self->_interactionMode;
  if (interactionMode > 1)
  {
    return;
  }

  v3 = *self->_anon_10;
  v4 = vadd_f32(*&self->_anon_10[8], v3);
  v5.i32[0] = v4.i32[0];
  v5.i32[1] = vneg_f32(v4).i32[1];
  v6 = vbsl_s8(vceqd_s64(interactionMode, 0), v4, v5);
  v7 = *self->_maximumAngles;
  if (v7.f32[0] != 0.0 || COERCE_FLOAT(*self->_minimumAngles) != 0.0)
  {
    if ((vcgt_f32(v6, v7).u8[0] & 1) != 0 && v3.f32[0] > 0.0)
    {
      v8 = fmaxf(vadd_f32(v3, vsub_f32(v7, v6)).f32[0], 0.0);
LABEL_11:
      v3.f32[0] = v8;
      *self->_anon_10 = v3;
      goto LABEL_12;
    }

    v9 = *self->_minimumAngles;
    if ((vcgt_f32(v9, v6).u8[0] & 1) != 0 && v3.f32[0] < 0.0)
    {
      v8 = vadd_f32(v3, vsub_f32(v9, v6)).f32[0];
      if (v8 > 0.0)
      {
        v8 = 0.0;
      }

      goto LABEL_11;
    }
  }

LABEL_12:
  if (v7.f32[1] != 0.0 || *&self->_minimumAngles[4] != 0.0)
  {
    if (interactionMode)
    {
      if (v6.f32[1] > v7.f32[1])
      {
        v10 = v3.f32[1];
        if (v3.f32[1] < 0.0)
        {
          v11 = v6.f32[1] - v7.f32[1];
          goto LABEL_28;
        }
      }

      v12 = *&self->_minimumAngles[4];
      if (v6.f32[1] < v12)
      {
        v13 = v3.f32[1];
        if (v3.f32[1] > 0.0)
        {
          v14 = v6.f32[1] - v12;
LABEL_24:
          v15 = fmaxf(v14 + v13, 0.0);
LABEL_30:
          v3.f32[1] = v15;
          *self->_anon_10 = v3;
        }
      }
    }

    else
    {
      if (v6.f32[1] > v7.f32[1])
      {
        v13 = v3.f32[1];
        if (v3.f32[1] > 0.0)
        {
          v14 = v7.f32[1] - v6.f32[1];
          goto LABEL_24;
        }
      }

      v16 = *&self->_minimumAngles[4];
      if (v6.f32[1] < v16)
      {
        v10 = v3.f32[1];
        if (v3.f32[1] < 0.0)
        {
          v11 = v16 - v6.f32[1];
LABEL_28:
          v15 = v11 + v10;
          if (v15 > 0.0)
          {
            v15 = 0.0;
          }

          goto LABEL_30;
        }
      }
    }
  }
}

- (void)_updateRotation
{
  if (self->_interactionMode <= 2uLL)
  {
    [(SCNCameraController *)self _capOrientationAnglesToMaximum];
    if ([(SCNCameraController *)self useOrbitInteractionMode])
    {
      [(SCNNode *)[(SCNCameraController *)self pointOfView] setSimdWorldTransform:*&self->_anon_10[16], *&self->_anon_10[32], *&self->_anon_10[48], *&self->_anon_10[64]];
      pointOfView = [(SCNCameraController *)self pointOfView];
      [(SCNCameraController *)self _orientationForMode];
      v7 = v4;
      [(SCNCameraController *)self simdTarget];

      [(SCNNode *)pointOfView simdRotateBy:v7 aroundTarget:v5];
    }

    else
    {
      [(SCNNode *)[(SCNCameraController *)self pointOfView] setSimdWorldOrientation:*&self->_anon_10[80]];
      pointOfView2 = [(SCNCameraController *)self pointOfView];
      [(SCNCameraController *)self _orientationForMode];

      [(SCNNode *)pointOfView2 simdLocalRotateBy:?];
    }
  }
}

- (double)_convertRotationFromWorldToPointOfView:(void *)view
{
  [objc_msgSend(view "pointOfView")];
  v16 = v3;
  [objc_msgSend(view "pointOfView")];
  v5 = vnegq_f32(v4);
  v6 = vzip1q_s32(v5, v5);
  v6.i32[0] = v5.i32[2];
  v7 = vuzp1q_s32(v5, v5);
  v7.i32[0] = v5.i32[1];
  v5.i32[3] = v4.i32[3];
  v8 = a2;
  v8.i32[3] = a2.i32[0];
  v9 = vmlsq_f32(vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(v8, vextq_s8(vdupq_laneq_s32(v5, 3), v5, 4uLL)), xmmword_21C27FD00), v5, a2, 3), xmmword_21C27FD00, vmulq_f32(vextq_s8(vextq_s8(a2, a2, 0xCuLL), a2, 8uLL), v6)), v7, vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL));
  v10 = v16;
  v10.i32[3] = v16.i32[0];
  v11 = vzip1q_s32(v9, v9);
  v11.i32[0] = v9.i32[2];
  v12 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(v10, vextq_s8(vdupq_laneq_s32(v9, 3), v9, 4uLL)), xmmword_21C27FD00), v9, v16, 3), xmmword_21C27FD00, vmulq_f32(vextq_s8(vextq_s8(v16, v16, 0xCuLL), v16, 8uLL), v11));
  v13 = vuzp1q_s32(v9, v9);
  v13.i32[0] = v9.i32[1];
  *&result = vmlsq_f32(v12, v13, vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL)).u64[0];
  return result;
}

- (void)_updateArcballOrientation
{
  if (self->_interactionMode >= 2uLL)
  {
    v4 = *&self->_anon_90[16];
    v3 = *&self->_anon_90[32];
    v5 = vcgtq_f32(vdupq_n_s32(0x3727C5ACu), vabdq_f32(v4, v3));
    v5.i32[3] = v5.i32[2];
    if ((vminvq_u32(v5) & 0x80000000) == 0)
    {
      v6 = vmulq_f32(v4, v3);
      v7 = v6.f32[2] + vaddv_f32(*v6.f32);
      if (fabsf(v7) < 1.0)
      {
        v10 = vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL);
        v8 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL), vnegq_f32(v4)), v3, v10);
        v9 = vmulq_f32(v8, v8);
        v10.f32[0] = v9.f32[1] + (v9.f32[2] + v9.f32[0]);
        if (v10.f32[0] <= 0.000000001)
        {
          v14 = *(MEMORY[0x277D860B8] + 48);
        }

        else
        {
          v22 = v10;
          v23 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
          v11 = acosf(v7);
          LODWORD(v14) = *&__sincosf_stret((v11 * -2.0) * 0.5);
          v12 = vrsqrte_f32(v22.u32[0]);
          v13 = vmul_f32(v12, vrsqrts_f32(v22.u32[0], vmul_f32(v12, v12)));
          *&v14 = vmulq_n_f32(vmulq_n_f32(v23, vmul_f32(v13, vrsqrts_f32(v22.u32[0], vmul_f32(v13, v13))).f32[0]), *&v14).u64[0];
        }

        [(SCNCameraController *)self _convertRotationFromWorldToPointOfView:*&v14, *&v22];
        v24 = v15;
        pointOfView = [(SCNCameraController *)self pointOfView];
        v17 = vmulq_f32(v24, v24);
        *v17.i8 = vadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
        v18 = vdupq_lane_s32(vadd_f32(*v17.i8, vdup_lane_s32(*v17.i8, 1)), 0);
        v19 = vrsqrteq_f32(v18);
        v20 = vmulq_f32(v19, vrsqrtsq_f32(v18, vmulq_f32(v19, v19)));
        v24.i64[0] = vbslq_s8(vceqzq_f32(v18), v24, vmulq_f32(v24, vmulq_f32(v20, vrsqrtsq_f32(v18, vmulq_f32(v20, v20))))).u64[0];
        [(SCNCameraController *)self simdTarget];
        [(SCNNode *)pointOfView simdRotateBy:*v24.i64 aroundTarget:v21];
        v3 = *&self->_anon_90[32];
      }

      *&self->_anon_90[16] = v3;
    }
  }
}

- (BOOL)_isLocationValid:(CGPoint)valid inViewport:(CGSize)viewport
{
  v4 = valid.x <= viewport.width;
  if (valid.y > viewport.height)
  {
    v4 = 0;
  }

  if (valid.y < 0.0)
  {
    v4 = 0;
  }

  return valid.x >= 0.0 && v4;
}

- (double)_mapToSphere:(float64_t)sphere inViewport:(double)viewport
{
  a2.f64[1] = sphere;
  if (*&self[39] == 3)
  {
    a2 = vaddq_f64(a2, vcvtq_f64_f32(self[18]));
  }

  if (viewport >= a5)
  {
    viewportCopy = viewport;
  }

  else
  {
    viewportCopy = a5;
  }

  *&viewportCopy = viewportCopy;
  v6 = vsubq_f64(a2, vdupq_lane_s64(COERCE__INT64((*&viewportCopy * 0.5)), 0));
  *v6.f32 = vdiv_f32(vcvt_f32_f64(v6), vdup_lane_s32(*&viewportCopy, 0));
  v7 = COERCE_FLOAT(vmul_f32(*&v6, *&v6).i32[1]) + (v6.f32[0] * v6.f32[0]);
  v8 = v7 < 0.125;
  v9 = 0.125 / sqrtf(v7);
  v10 = sqrtf(0.25 - v7);
  if (!v8)
  {
    v10 = v9;
  }

  v6.f32[2] = v10;
  v11 = vmulq_f32(v6, v6);
  *&v12 = v11.f32[2] + vaddv_f32(*v11.f32);
  *v11.f32 = vrsqrte_f32(v12);
  *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32)));
  v6.i64[0] = vmulq_n_f32(v6, vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32))).f32[0]).u64[0];
  return *v6.i64;
}

- (void)_endDraggingWithVelocity:(CGPoint)velocity
{
  if (self->_inertia.inertiaEnabled)
  {
    y = velocity.y;
    v8 = vcvt_f32_f64(velocity);
    v9 = vcge_f32(vabs_f32(v8), vdup_n_s32(0x3DCCCCCDu));
    if ((vpmax_u32(v9, v9).u32[0] & 0x80000000) != 0)
    {
      v18 = v3;
      v11 = vdiv_f32(v8, vdup_n_s32(0x42700000u));
      *self->_anon_e0 = v11;
      if (self->_inertia.friction == 0.0)
      {
        v12 = vdup_lane_s32(vcgt_f32(v11, 0), 0);
        v13 = -20.0;
        if (v11.f32[0] >= -20.0)
        {
          v14 = v11.f32[0];
        }

        else
        {
          v14 = -20.0;
        }

        v11.i32[0] = fminf(v11.f32[0], 20.0);
        v15 = vbsl_s8(v12, v11, __PAIR64__(v11.u32[1], LODWORD(v14)));
        v16 = fminf(*&v15.i32[1], 20.0);
        if (*&v15.i32[1] >= -20.0)
        {
          v13 = *&v15.i32[1];
        }

        if (*&v15.i32[1] <= 0.0)
        {
          v17 = v13;
        }

        else
        {
          v17 = v16;
        }

        *&v15.i32[1] = v17;
        *self->_anon_e0 = v15;
      }

      else
      {
        v17 = v11.f32[1];
      }

      *&self->_anon_e0[4] = -v17;
      [(SCNCameraController *)self _setInertiaRunning:1, v4, v18, v5, v6];
      self->_inertia.lastSimulationTime = CACurrentMediaTime();
    }
  }
}

- (void)_setInertiaRunning:(BOOL)running
{
  if (self->_inertia.inertiaRunning != running)
  {
    v10[7] = v3;
    v10[8] = v4;
    if (running)
    {
      [(SCNCameraController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __42__SCNCameraController__setInertiaRunning___block_invoke;
        v10[3] = &unk_2782FB608;
        v10[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], v10);
      }

      if (![(SCNCameraController *)self drivenByDefaultNavigationCameraController])
      {
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __42__SCNCameraController__setInertiaRunning___block_invoke_2;
        v9[3] = &unk_2782FDEA0;
        v9[4] = self;
        *&self->_anon_e0[8] = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:1 repeats:v9 block:0.0166666667];
      }

      self->_inertia.inertiaRunning = running;
    }

    else
    {
      if (![(SCNCameraController *)self drivenByDefaultNavigationCameraController])
      {
        v7 = *&self->_anon_e0[8];
        if (v7)
        {
          [v7 invalidate];
        }

        *&self->_anon_e0[8] = 0;
      }

      self->_inertia.inertiaRunning = running;
      [(SCNCameraController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __42__SCNCameraController__setInertiaRunning___block_invoke_3;
        block[3] = &unk_2782FB608;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }
}

uint64_t __42__SCNCameraController__setInertiaRunning___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);

  return [v2 cameraInertiaWillStartForController:v3];
}

uint64_t __42__SCNCameraController__setInertiaRunning___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CACurrentMediaTime();

  return [v1 _updateInertiaAtTime:v2];
}

uint64_t __42__SCNCameraController__setInertiaRunning___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);

  return [v2 cameraInertiaDidEndForController:v3];
}

- (double)_orthographicViewSpaceTranslationForZoomAtScreenPoint:(float)point scaleDelta:(float64_t)delta viewport:(float64_t)viewport
{
  v6 = [objc_msgSend(self "pointOfView")];
  v7 = 0.0;
  if (v6)
  {
    v8 = v6;
    v9 = C3DGetScene(v6);
    if (v9)
    {
      v10 = v9;
      v11 = C3DGetScene(v8);
      C3DSceneLock(v11);
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      memset(v33, 0, sizeof(v33));
      if (C3DNodeGetProjectionInfos(v8, v33))
      {
        if ((v33[0] & 8) != 0)
        {
          v22 = C3DGetScene(v8);
          C3DSceneUnlock(v22);
          v23 = scn_default_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [SCNCameraController(SPI) _orthographicViewSpaceTranslationForZoomAtScreenPoint:v23 scaleDelta:? viewport:?];
          }
        }

        else
        {
          if ((v33[0] & 2) != 0)
          {
            C3DAdjustZRangeOfProjectionInfos(v33, v8, 0, v10);
          }

          v12 = C3DGetScene(v8);
          C3DSceneUnlock(v12);
          v13.f64[0] = delta;
          v13.f64[1] = viewport;
          v32 = vcvt_hight_f32_f64(0, v13);
          v45 = *C3DProjectionInfosGetMatrix(v33, &v32, 0);
          v46 = __invert_f4(v45);
          v25 = v46.columns[0];
          v26 = v46.columns[1];
          v27 = v46.columns[2];
          v28 = *v46.columns[3].f32;
          *&v34 = *&v34 + point;
          v47 = *C3DProjectionInfosGetMatrix(v33, &v32, 0);
          v48 = __invert_f4(v47);
          v14 = (*&a2 + *&a2) / delta + -1.0;
          v15 = (*(&a2 + 1) + *(&a2 + 1)) / viewport + -1.0;
          __asm { FMOV            V7.4S, #-1.0 }

          return COERCE_DOUBLE(vsub_f32(vadd_f32(v28, *&vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v25, v14), v26, v15), _Q7, v27)), vadd_f32(*v48.columns[3].f32, *&vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v48.columns[0], v14), v48.columns[1], v15), _Q7, v48.columns[2]))));
        }
      }

      else
      {
        v21 = C3DGetScene(v8);
        C3DSceneUnlock(v21);
      }
    }
  }

  return v7;
}

@end