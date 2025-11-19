@interface MDLCamera
- (MDLCamera)init;
- (MDLTexture)bokehKernelWithSize:(vector_int2)size;
- (float)circleOfConfusionForDistance:(float)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (matrix_float4x4)projectionMatrix;
- (vector_float3)exposure;
- (vector_float3)flash;
- (vector_float3)rayTo:(vector_int2)pixel forViewPort:(vector_int2)size;
- (void)dealloc;
- (void)lookAt:(vector_float3)focusPosition from:(vector_float3)cameraPosition;
- (void)setAperture:(float)a3;
- (void)setAspect:(float)a3;
- (void)setFarVisibilityDistance:(float)farVisibilityDistance;
- (void)setFieldOfView:(float)fieldOfView;
- (void)setFocalLength:(float)focalLength;
- (void)setFov:(float)a3;
- (void)setNearVisibilityDistance:(float)nearVisibilityDistance;
- (void)setSensorAspect:(float)sensorAspect;
- (void)setSensorVerticalAperture:(float)sensorVerticalAperture;
- (void)setZFar:(float)a3;
- (void)setZNear:(float)a3;
@end

@implementation MDLCamera

- (MDLCamera)init
{
  v6.receiver = self;
  v6.super_class = MDLCamera;
  v2 = [(MDLObject *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MDLTransform);
    objc_msgSend_setTransform_(v2, v4, v3);

    operator new();
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v13 = objc_msgSend_transform(self, v11, v12);
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  LODWORD(v14) = objc_msgSend_isSubclassOfClass_(v14, v16, v15);

  if (v14)
  {
    v19 = objc_msgSend_transform(self, v17, v18);
    v21 = objc_msgSend_copyWithZone_(v19, v20, a3);
    objc_msgSend_setTransform_(v10, v22, v21);
  }

  *(v10 + 64) = self->_worldToMetersConversionScale;
  focalDistanceAnimation = self->_focalDistanceAnimation;
  if (focalDistanceAnimation)
  {
    v24 = objc_msgSend_copyWithZone_(focalDistanceAnimation, v17, a3);
    v25 = *(v10 + 72);
    *(v10 + 72) = v24;
  }

  fStopAnimation = self->_fStopAnimation;
  if (fStopAnimation)
  {
    v27 = objc_msgSend_copyWithZone_(fStopAnimation, v17, a3);
    v28 = *(v10 + 80);
    *(v10 + 80) = v27;
  }

  focalLengthAnimation = self->_focalLengthAnimation;
  if (focalLengthAnimation)
  {
    v30 = objc_msgSend_copyWithZone_(focalLengthAnimation, v17, a3);
    v31 = *(v10 + 88);
    *(v10 + 88) = v30;
  }

  apertureAnimation = self->_apertureAnimation;
  if (apertureAnimation)
  {
    v33 = objc_msgSend_copyWithZone_(apertureAnimation, v17, a3);
    v34 = *(v10 + 96);
    *(v10 + 96) = v33;
  }

  apertureAspectAnimation = self->_apertureAspectAnimation;
  if (apertureAspectAnimation)
  {
    v36 = objc_msgSend_copyWithZone_(apertureAspectAnimation, v17, a3);
    v37 = *(v10 + 104);
    *(v10 + 104) = v36;
  }

  operator new();
}

- (void)dealloc
{
  camera = self->_camera;
  if (camera)
  {
    (*(camera->var0 + 1))(camera, a2);
  }

  v4.receiver = self;
  v4.super_class = MDLCamera;
  [(MDLCamera *)&v4 dealloc];
}

- (matrix_float4x4)projectionMatrix
{
  v2 = sub_239F1622C(self->_camera, 0.0);
  result.columns[3].i64[1] = v10;
  result.columns[3].i64[0] = v9;
  result.columns[2].i64[1] = v8;
  result.columns[2].i64[0] = v7;
  result.columns[1].i64[1] = v6;
  result.columns[1].i64[0] = v5;
  result.columns[0].i64[1] = v4;
  result.columns[0].f32[1] = v3;
  result.columns[0].f32[0] = v2;
  return result;
}

- (vector_float3)rayTo:(vector_int2)pixel forViewPort:(vector_int2)size
{
  sub_239F1633C(self->_camera, COERCE_DOUBLE(vcvt_f32_s32(pixel)), COERCE_DOUBLE(vcvt_f32_s32(size)));
  result.i64[1] = v5;
  result.i64[0] = v4;
  return result;
}

- (void)setFocalLength:(float)focalLength
{
  camera = self->_camera;
  camera[3].columns[0].f32[2] = focalLength;
  camera[3].columns[2].f32[3] = atanf(camera[3].columns[2].f32[2] / (focalLength + focalLength)) * 114.59;

  sub_239F15C58(camera);
}

- (void)setAperture:(float)a3
{
  camera = self->_camera;
  camera[3].columns[2].f32[2] = a3;
  camera[3].columns[2].f32[3] = atanf(a3 / (camera[3].columns[0].f32[2] + camera[3].columns[0].f32[2])) * 114.59;

  sub_239F15C58(camera);
}

- (void)setSensorVerticalAperture:(float)sensorVerticalAperture
{
  camera = self->_camera;
  camera[3].columns[2].f32[2] = sensorVerticalAperture;
  camera[3].columns[2].f32[3] = atanf(sensorVerticalAperture / (camera[3].columns[0].f32[2] + camera[3].columns[0].f32[2])) * 114.59;

  sub_239F15C58(camera);
}

- (void)setFov:(float)a3
{
  camera = self->_camera;
  camera[3].columns[2].f32[3] = a3;
  camera[3].columns[2].f32[0] = 0.5 / tanf(a3 * 0.017453);
  v5 = camera[3].columns[2].f32[2];
  v6 = tanf(a3 * 0.0087266);
  camera[3].columns[0].f32[2] = v5 / (v6 + v6);

  sub_239F15C58(camera);
}

- (void)setFieldOfView:(float)fieldOfView
{
  camera = self->_camera;
  camera[3].columns[2].f32[3] = fieldOfView;
  camera[3].columns[2].f32[0] = 0.5 / tanf(fieldOfView * 0.017453);
  v5 = camera[3].columns[2].f32[2];
  v6 = tanf(fieldOfView * 0.0087266);
  camera[3].columns[0].f32[2] = v5 / (v6 + v6);

  sub_239F15C58(camera);
}

- (void)setAspect:(float)a3
{
  camera = self->_camera;
  camera[3].columns[3].f32[0] = a3;
  sub_239F15C58(camera);
}

- (void)setSensorAspect:(float)sensorAspect
{
  camera = self->_camera;
  camera[3].columns[3].f32[0] = sensorAspect;
  sub_239F15C58(camera);
}

- (float)circleOfConfusionForDistance:(float)a3
{
  result = (self->_camera[1].var19 * self->_camera[2].var3) / (a3 - self->_camera[1].var19);
  if (result >= self->_maximumCircleOfConfusion)
  {
    return self->_maximumCircleOfConfusion;
  }

  return result;
}

- (void)setZNear:(float)a3
{
  camera = self->_camera;
  camera[4].columns[1].f32[0] = a3;
  sub_239F15C58(camera);
}

- (void)setZFar:(float)a3
{
  camera = self->_camera;
  camera[4].columns[1].f32[1] = a3;
  sub_239F15C58(camera);
}

- (void)setNearVisibilityDistance:(float)nearVisibilityDistance
{
  camera = self->_camera;
  camera[4].columns[1].f32[0] = nearVisibilityDistance;
  sub_239F15C58(camera);
}

- (void)setFarVisibilityDistance:(float)farVisibilityDistance
{
  camera = self->_camera;
  camera[4].columns[1].f32[1] = farVisibilityDistance;
  sub_239F15C58(camera);
}

- (MDLTexture)bokehKernelWithSize:(vector_int2)size
{
  v4 = size.i32[0];
  v5 = size.i32[1];
  v44 = 4 * size.i32[1] * size.i32[0];
  v45 = malloc_type_malloc(v44, 0x100004052888210uLL);
  v8 = objc_msgSend_apertureBladeCount(self, v6, v7);
  v10 = v8;
  v11 = v4 / 2;
  v46 = v5 / -2;
  if (v8 - 3 > 0xD)
  {
    if (v5 >= 1)
    {
      v33 = 0;
      v34 = v45;
      do
      {
        if (v4 >= 1)
        {
          v35 = v4 / -2;
          v36 = v4;
          do
          {
            if ((v33 + v46) * (v33 + v46) + v35 * v35 < (v11 * v11))
            {
              v37 = -1;
            }

            else
            {
              v37 = -16777216;
            }

            *v34++ = v37;
            ++v35;
            --v36;
          }

          while (v36);
        }

        ++v33;
      }

      while (v33 != v5);
    }
  }

  else
  {
    v12 = v8;
    v13 = 3.14159265 / v8;
    v14 = cosf(v13);
    if (v5 >= 1)
    {
      v16 = 0;
      *v15.i32 = v11;
      v17 = (v14 * v11) * (v14 * v11);
      v18 = 6.28318531 / v12;
      v19 = vdup_lane_s32(*v15.i8, 0);
      v20 = v45;
      do
      {
        if (v4 >= 1)
        {
          for (i = 0; i != v4; ++i)
          {
            v22 = i - v11;
            if ((v16 + v46) * (v16 + v46) + v22 * v22 < v17)
            {
LABEL_12:
              v32 = -1;
            }

            else
            {
              v23 = 0;
              *v15.i32 = v22;
              *&v15.i32[1] = (v16 + v46);
              v47 = v15;
              while (1)
              {
                v24 = v23 * v18;
                v25 = v24 + v18;
                v26 = __sincosf_stret(v24);
                v27 = vmul_n_f32(__PAIR64__(LODWORD(v26.__sinval), LODWORD(v26.__cosval)), v11);
                v28 = __sincosf_stret(v25);
                v29.i64[1] = v47.i64[1];
                *v30.i8 = vmul_f32(vmla_f32(vneg_f32(v27), v19, __PAIR64__(LODWORD(v28.__sinval), LODWORD(v28.__cosval))), vrev64_s32(vsub_f32(*v47.i8, v27)));
                *v29.i8 = vdup_lane_s32(*v30.i8, 1);
                *v30.i8 = vsub_f32(*v30.i8, *v29.i8);
                v29.i32[0] = 1.0;
                v31.i64[0] = 0x8000000080000000;
                v31.i64[1] = 0x8000000080000000;
                v15 = vbslq_s8(v31, v29, v30);
                if (*v30.i32 == 0.0)
                {
                  v15.i32[0] = v30.i32[0];
                }

                if (*v15.i32 < 0)
                {
                  break;
                }

                if (v10 == ++v23)
                {
                  goto LABEL_12;
                }
              }

              v32 = -16777216;
            }

            *v20++ = v32;
          }
        }

        ++v16;
      }

      while (v16 != v5);
    }
  }

  v38 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v9, v45, v44);
  v39 = [MDLTexture alloc];
  isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v39, v40, v38, 1, @"bokeh", v4, 4, 1, *&size, 0);
  free(v45);

  return isCube;
}

- (vector_float3)exposure
{
  v2 = *&self->_camera[2].var15;
  result.i64[1] = a2;
  result.i64[0] = self;
  return result;
}

- (void)lookAt:(vector_float3)focusPosition from:(vector_float3)cameraPosition
{
  v8 = v4;
  sub_239F15E78(self->_camera, v5);
  camera = self->_camera;

  sub_239F74B20(camera, v8);
}

- (vector_float3)flash
{
  v2 = *self->_flash;
  result.i64[1] = a2;
  result.i64[0] = self;
  return result;
}

@end