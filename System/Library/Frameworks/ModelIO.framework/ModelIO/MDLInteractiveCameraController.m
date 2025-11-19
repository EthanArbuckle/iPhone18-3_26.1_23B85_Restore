@interface MDLInteractiveCameraController
- (MDLInteractiveCameraController)init;
- (__n128)framingBounds;
- (uint64_t)setFramingBounds:(_OWORD *)a3;
- (void)frameObject;
- (void)update:(float)a3;
@end

@implementation MDLInteractiveCameraController

- (MDLInteractiveCameraController)init
{
  v12.receiver = self;
  v12.super_class = MDLInteractiveCameraController;
  v2 = [(MDLInteractiveCameraController *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    camera = v2->_camera;
    v2->_camera = v3;

    *v2->_lookAt = 0u;
    *v2->_dragPoint = 0u;
    __asm { FMOV            V1.2S, #1.0 }

    *v2->_viewSize = _D1;
    __asm { FMOV            V1.4S, #-1.0 }

    *v2->_anon_40 = _Q1;
    *&v2->_anon_40[16] = 0u;
    v2->_zoom = 1.0;
  }

  return v2;
}

- (uint64_t)setFramingBounds:(_OWORD *)a3
{
  *(a1 + 80) = a3[1];
  *(a1 + 64) = *a3;
  return MEMORY[0x2821F9670](a1, sel_frameObject, a3);
}

- (__n128)framingBounds
{
  result = *(a1 + 80);
  *a2 = *(a1 + 64);
  *(a2 + 16) = result;
  return result;
}

- (void)frameObject
{
  camera = self->_camera;
  var4 = camera->super._camera[2].var4;
  v5 = *self->_anon_40;
  v6 = *&self->_anon_40[16];
  v7 = vcgtq_f32(v6, v5);
  v8 = vceqz_s32(*v7.i8);
  v9 = v8.i8[0] | (v7.i32[2] == 0) | v8.i8[4];
  if (v8.i8[0] & 1 | (v7.i32[2] == 0) | v8.i8[4] & 1)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  v11 = vdupq_n_s32(v10);
  __asm { FMOV            V3.4S, #-5.0 }

  v17 = vbslq_s8(v11, v6, _Q3);
  __asm { FMOV            V3.4S, #5.0 }

  objc_msgSend_frameBoundingBox_setNearAndFar_(camera, a2, 1, vbslq_s8(v11, v5, _Q3), *&v17);
  v20 = -100.0;
  if (v9)
  {
    v21.i64[0] = 0x3F0000003F000000;
    v21.i64[1] = 0x3F0000003F000000;
    v22 = vmulq_f32(vsubq_f32(v26, v27), v21);
    v23 = vmulq_f32(v22, v22);
    v24 = sqrtf(vaddv_f32(*v23.f32) + v23.f32[2]);
    if (v24 > 1.1755e-38)
    {
      v25 = var4 * 0.0174532925;
      v20 = (v24 * 1.05) / sinf(v25 * 0.5);
    }
  }

  self->_targetDistance = self->_zoom * v20;

  MEMORY[0x2821F9670](self, sel_update_, v19);
}

- (void)update:(float)a3
{
  camera = self->_camera->super._camera;
  camera[3].columns[3].i32[0] = vdiv_f32(*self->_viewSize, vdup_lane_s32(*self->_viewSize, 1)).u32[0];
  sub_239F15C58(camera);
  mode = self->_mode;
  if (mode == 2)
  {
    v19 = self->_camera->super._camera;
    v24 = *&v19[2].var7;
    objc_msgSend_translation(v19->var10, v5, v6);
    v15 = self->_camera->super._camera;
    targetDistance = self->_targetDistance;
    v14.i32[0] = LODWORD(self->_pitch);
    yaw = self->_yaw;
    v18 = v24;
  }

  else
  {
    if (mode != 1)
    {
      if (!mode)
      {
        v8.n128_u32[0] = 0;
        v8.n128_u32[3] = 0;
        *(v8.n128_u64 + 4) = LODWORD(self->_targetElevation);
        targetElevation = self->_targetElevation;
        v21 = v8;
        *&dword_27DF912AC = *&dword_27DF912AC + (a3 * 10.0);
        v9 = self->_targetDistance;
        v8.n128_f32[0] = *&dword_27DF912AC * -0.1;
        v10 = __sincosf_stret(v8.n128_f32[0]);
        v11.n128_f32[0] = v10.__sinval * v9;
        v11.n128_f32[1] = targetElevation;
        v11.n128_f32[2] = v10.__cosval * v9;
        sub_239F15E78(self->_camera->super._camera, v11);
        v12 = self->_camera->super._camera;

        sub_239F74B20(v12, v21);
      }

      return;
    }

    *self->_dragVector = vmul_f32(vmul_n_f32(0xC040000040A00000, a3), vsub_f32(*self->_dragPoint, *self->_clickPoint));
    v13 = self->_camera->super._camera;
    v23 = *&v13[2].var7;
    objc_msgSend_translation(v13->var10, v5, v6);
    v14 = vadd_f32(*&self->_pitch, vrev64_s32(*self->_dragVector));
    *&self->_pitch = v14;
    v15 = self->_camera->super._camera;
    targetDistance = self->_targetDistance;
    yaw = v14.f32[1];
    v18 = v23;
  }

  sub_239F15FA8(v15, v18, targetDistance, v14.f32[0], yaw);
}

@end