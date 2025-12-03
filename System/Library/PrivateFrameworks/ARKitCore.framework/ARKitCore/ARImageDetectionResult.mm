@interface ARImageDetectionResult
- (BOOL)isEqual:(id)equal;
- (__n128)setVisionTransform:(__n128)transform;
- (__n128)setWorldTrackingCameraTransformAtDetection:(__n128)detection;
- (double)setTransform:(__n128)transform;
- (double)transform;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ARImageDetectionResult

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    referenceImage = [(ARImageDetectionResult *)self referenceImage];
    referenceImage2 = [v5 referenceImage];
    if ([referenceImage isEqual:referenceImage2])
    {
      [v5 visionTransform];
      v21 = v9;
      v22 = v8;
      v19 = v11;
      v20 = v10;
      [(ARImageDetectionResult *)self visionTransform];
      v16 = AREqualTransforms(v22, v21, v20, v19, v12, v13, v14, v15);

      if ((v16 & 1) != 0 && AREqualTransforms(*(v5 + 7), *(v5 + 8), *(v5 + 9), *(v5 + 10), *&self[1].super.isa, *&self[1]._referenceImage, *&self[1]._odtObjectIdentifer, *self[1]._anon_30) && vabdd_f64(*(v5 + 1), self->_estimatedScaleFactor) <= 2.22044605e-16)
      {
        v17 = *(v5 + 4) == self->_odtObjectIdentifer;
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
    }

    v17 = 0;
    goto LABEL_10;
  }

  v17 = 0;
LABEL_11:

  return v17;
}

- (double)transform
{
  *v2.i64 = ARRenderingToVisionCoordinateTransform();
  v6 = 0;
  v7 = self[4];
  v8 = self[5];
  v9 = self[6];
  v20 = self[3];
  v21 = v7;
  v22 = v8;
  v23 = v9;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  do
  {
    *(&v24 + v6) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*(&v20 + v6))), v3, *(&v20 + v6), 1), v4, *(&v20 + v6), 2), v5, *(&v20 + v6), 3);
    v6 += 16;
  }

  while (v6 != 64);
  v18 = v25;
  v19 = v24;
  v16 = v27;
  v17 = v26;
  *&v10 = ARVisionToRenderingCoordinateTransform();
  v11 = 0;
  v20 = v10;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  do
  {
    *(&v24 + v11) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*(&v20 + v11))), v18, *(&v20 + v11), 1), v17, *(&v20 + v11), 2), v16, *(&v20 + v11), 3);
    v11 += 16;
  }

  while (v11 != 64);
  return *v24.i64;
}

- (double)setTransform:(__n128)transform
{
  *v6.i64 = ARVisionToRenderingCoordinateTransform();
  v10 = 0;
  v28 = a2;
  transformCopy = transform;
  v30 = a4;
  v31 = a5;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  do
  {
    *(&v32 + v10) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6, COERCE_FLOAT(*(&v28 + v10))), v7, v28.n128_u64[v10 / 8], 1), v8, *(&v28 + v10), 2), v9, *(&v28 + v10), 3);
    v10 += 16;
  }

  while (v10 != 64);
  v25 = v33;
  v27 = v32;
  v21 = v35;
  v23 = v34;
  v11.n128_f64[0] = ARRenderingToVisionCoordinateTransform();
  v12 = 0;
  v28 = v11;
  transformCopy = v13;
  v30 = v14;
  v31 = v15;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  do
  {
    *(&v32 + v12) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*(&v28 + v12))), v25, v28.n128_u64[v12 / 8], 1), v23, *(&v28 + v12), 2), v21, *(&v28 + v12), 3);
    v12 += 16;
  }

  while (v12 != 64);
  result = *v32.i64;
  v17 = v33;
  v18 = v34;
  v19 = v35;
  self[3] = v32;
  self[4] = v17;
  self[5] = v18;
  self[6] = v19;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(ARImageDetectionResult *)self visionTransform];
  *(v4 + 48) = v5;
  *(v4 + 64) = v6;
  *(v4 + 80) = v7;
  *(v4 + 96) = v8;
  referenceImage = [(ARImageDetectionResult *)self referenceImage];
  v10 = *(v4 + 16);
  *(v4 + 16) = referenceImage;

  [(ARImageDetectionResult *)self worldTrackingCameraTransformAtDetection];
  *(v4 + 112) = v11;
  *(v4 + 128) = v12;
  *(v4 + 144) = v13;
  *(v4 + 160) = v14;
  [(ARImageDetectionResult *)self estimatedScaleFactor];
  *(v4 + 8) = v15;
  *(v4 + 32) = [(ARImageDetectionResult *)self odtObjectIdentifer];
  return v4;
}

- (__n128)setVisionTransform:(__n128)transform
{
  result[3] = a2;
  result[4] = transform;
  result[5] = a4;
  result[6] = a5;
  return result;
}

- (__n128)setWorldTrackingCameraTransformAtDetection:(__n128)detection
{
  result[7] = a2;
  result[8] = detection;
  result[9] = a4;
  result[10] = a5;
  return result;
}

@end