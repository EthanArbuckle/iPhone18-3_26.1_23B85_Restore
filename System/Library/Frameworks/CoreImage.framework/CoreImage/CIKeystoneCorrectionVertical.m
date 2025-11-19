@interface CIKeystoneCorrectionVertical
- (void)computeRotation;
@end

@implementation CIKeystoneCorrectionVertical

- (void)computeRotation
{
  v3 = [(CIKeystoneCorrection *)self inputBottomLeft];
  [(CIVector *)v3 X];
  *&v4 = v4;
  v34 = *&v4;
  [(CIVector *)v3 Y];
  *&v5 = v5;
  v33 = *&v5;
  v6 = [(CIKeystoneCorrection *)self inputTopLeft];
  [(CIVector *)v6 X];
  *&v7 = v7;
  v32 = *&v7;
  [(CIVector *)v6 Y];
  *&v8 = v8;
  v31 = *&v8;
  v9 = [(CIKeystoneCorrection *)self inputBottomRight];
  [(CIVector *)v9 X];
  *&v10 = v10;
  v30 = *&v10;
  [(CIVector *)v9 Y];
  *&v11 = v11;
  v29 = *&v11;
  v12 = [(CIKeystoneCorrection *)self inputTopRight];
  [(CIVector *)v12 X];
  *&v13 = v13;
  v28 = *&v13;
  [(CIVector *)v12 Y];
  *&v14 = v14;
  v15 = *self->super._anon_80;
  v16 = *&self->super._anon_80[16];
  v17 = *&self->super._anon_80[32];
  v18 = vaddq_f32(v17, vmlaq_n_f32(vmulq_n_f32(v15, v34), v16, v33));
  v19 = COERCE_DOUBLE(vdiv_f32(*v18.i8, *&vdupq_laneq_s32(v18, 2)));
  v20 = vaddq_f32(v17, vmlaq_n_f32(vmulq_n_f32(v15, v32), v16, v31));
  v21 = COERCE_DOUBLE(vdiv_f32(*v20.i8, *&vdupq_laneq_s32(v20, 2)));
  v22 = vaddq_f32(v17, vmlaq_n_f32(vmulq_n_f32(v15, v30), v16, v29));
  v23 = COERCE_DOUBLE(vdiv_f32(*v22.i8, *&vdupq_laneq_s32(v22, 2)));
  v24 = vaddq_f32(v17, vmlaq_n_f32(vmulq_n_f32(v15, v28), v16, *&v14));
  v25 = COERCE_DOUBLE(vdiv_f32(*v24.i8, *&vdupq_laneq_s32(v24, 2)));
  v26 = CI::Perspective::keystoneV(v19, v21, v23, v25);
  self->super.pitch = v26;
  self->super.roll = CI::Perspective::horizonV(v27, v19, v21, v23, v25, v26, self->super.yaw);
}

@end