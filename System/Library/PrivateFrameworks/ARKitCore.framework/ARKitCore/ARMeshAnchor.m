@interface ARMeshAnchor
- (ARMeshAnchor)initWithAnchor:(id)a3;
- (ARMeshAnchor)initWithCoder:(id)a3;
- (ARMeshAnchor)initWithGeometry:(double)a3 atTimestamp:(double)a4 identifier:(double)a5 transform:(double)a6;
- (ARMeshAnchor)initWithGeometry:(double)a3 atTimestamp:(double)a4 identifier:(double)a5 transform:(double)a6 voxelSize:(double)a7;
- (ARMeshAnchor)initWithGeometry:(id)a3 atTimestamp:(double)a4 identifier:(id)a5;
- (__n128)initWithGeometry:(simd_float4)a3 atTimestamp:(simd_float4)a4 identifier:(simd_float4)a5 visionTransform:(simd_float4)a6 referenceOriginTransform:(uint64_t)a7;
- (id)description;
- (uint64_t)initWithGeometry:(__n128)a3 atTimestamp:(__n128)a4 identifier:(__n128)a5 referenceOriginTransform:(__n128)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARMeshAnchor

- (uint64_t)initWithGeometry:(__n128)a3 atTimestamp:(__n128)a4 identifier:(__n128)a5 referenceOriginTransform:(__n128)a6
{
  v12 = a9;
  v13 = a8;
  v14 = [v13 vertices];
  ARMinimumCornerForVertexSource(v14);

  ARMatrix4x4FromRotationAndTranslation();
  v19 = [a1 initWithGeometry:v13 atTimestamp:v12 identifier:a2 visionTransform:v15 referenceOriginTransform:{v16, v17, v18, *&a3, *&a4, *&a5, *&a6}];

  return v19;
}

- (__n128)initWithGeometry:(simd_float4)a3 atTimestamp:(simd_float4)a4 identifier:(simd_float4)a5 visionTransform:(simd_float4)a6 referenceOriginTransform:(uint64_t)a7
{
  v20 = a8;
  v21 = a9;
  *v22.i64 = ARVisionToRenderingCoordinateTransform();
  v26 = 0;
  v50 = a3;
  v51 = a4;
  v52 = a5;
  v53 = a6;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  do
  {
    *(&v54 + v26) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*(&v50 + v26))), v23, *&v50.f32[v26 / 4], 1), v24, *(&v50 + v26), 2), v25, *(&v50 + v26), 3);
    v26 += 16;
  }

  while (v26 != 64);
  v40 = v55;
  v41 = v54;
  v38 = v57;
  v39 = v56;
  *v27.i64 = ARRenderingToVisionCoordinateTransform();
  v28 = 0;
  v50 = v27;
  v51 = v29;
  v52 = v30;
  v53 = v31;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  do
  {
    *(&v54 + v28) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v41, COERCE_FLOAT(*(&v50 + v28))), v40, *&v50.f32[v28 / 4], 1), v39, *(&v50 + v28), 2), v38, *(&v50 + v28), 3);
    v28 += 16;
  }

  while (v28 != 64);
  v32 = 0;
  v50 = v54;
  v51 = v55;
  v52 = v56;
  v53 = v57;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  do
  {
    *(&v54 + v32) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a14, COERCE_FLOAT(*(&v50 + v32))), a15, *&v50.f32[v32 / 4], 1), a16, *(&v50 + v32), 2), a17, *(&v50 + v32), 3);
    v32 += 16;
  }

  while (v32 != 64);
  v44 = *v56.i64;
  v45 = *v57.i64;
  v42 = *v54.i64;
  v43 = *v55.i64;
  v33 = [v20 vertices];
  ARConvertVisionSourceToWorldSource(v33, 0, a3, a4, a5, a6);

  v34 = [v20 normals];
  ARConvertVisionSourceToWorldSource(v34, 1, a3, a4, a5, a6);

  v35 = [a1 initWithGeometry:v20 atTimestamp:v21 identifier:a2 transform:{v42, v43, v44, v45}];
  v36 = v35;
  if (v35)
  {
    v35[15] = a3;
    v35[16] = a4;
    v35[17] = a5;
    v35[18] = a6;
  }

  return v36;
}

- (ARMeshAnchor)initWithGeometry:(id)a3 atTimestamp:(double)a4 identifier:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v9 vertices];
  ARMinimumCornerForVertexSource(v10);

  ARMatrix4x4FromRotationAndTranslation();
  v15 = [(ARMeshAnchor *)self initWithGeometry:v9 atTimestamp:v8 identifier:a4 transform:v11, v12, v13, v14];

  return v15;
}

- (ARMeshAnchor)initWithGeometry:(double)a3 atTimestamp:(double)a4 identifier:(double)a5 transform:(double)a6
{
  v13 = a8;
  v34.receiver = a1;
  v34.super_class = ARMeshAnchor;
  v14 = [(ARAnchor *)&v34 initWithIdentifier:a9 transform:a3, a4, a5, a6];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_geometry, a8);
    v15->_timestamp = a2;
    v16 = [v13 vertices];
    v17 = [v16 count];
    v18 = 0uLL;
    if (v17 >= 2)
    {
      v19 = v17;
      v20 = [v16 buffer];
      v21 = [v20 contents];

      *&v18 = *v21;
      v23 = *(v21 + 8);
      v22 = (v21 + 8);
      v24 = v23;
      v25 = v23;
      v26 = v18;
      do
      {
        if (v24 >= *v22)
        {
          v24 = *v22;
        }

        v27 = *(v22 - 2);
        v26 = vbsl_s8(vcgt_f32(v27, v26), v26, v27);
        *&v18 = vbsl_s8(vcgt_f32(v27, *&v18), v27, *&v18);
        if (v25 < *v22)
        {
          v25 = *v22;
        }

        v22 += 3;
        --v19;
      }

      while (v19);
      *&v18 = vsub_f32(*&v18, v26);
      *(&v18 + 2) = v25 - v24;
    }

    *v15->_extent = v18;

    v28 = [v13 vertices];
    *v15->_corner = ARMinimumCornerForVertexSource(v28);

    v15->_maxExtentError = 0.0;
    [(ARAnchor *)v15 setLastUpdateTimestamp:a2];
  }

  return v15;
}

- (ARMeshAnchor)initWithGeometry:(double)a3 atTimestamp:(double)a4 identifier:(double)a5 transform:(double)a6 voxelSize:(double)a7
{
  v15 = a9;
  v25.receiver = a1;
  v25.super_class = ARMeshAnchor;
  v16 = [(ARAnchor *)&v25 initWithIdentifier:a10 transform:a3, a4, a5, a6];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_geometry, a9);
    v17->_timestamp = a2;
    v18 = a7 * 64.0;
    *&v18 = a7 * 64.0;
    *v17->_extent = vdupq_lane_s32(*&v18, 0);
    v17->_maxExtentError = a7 * 8.0;
    v19 = vnegq_f32(*v17->_extent);
    v19.i32[1] = 0;
    *v17->_corner = v19;
    [(ARAnchor *)v17 setLastUpdateTimestamp:a2];
  }

  return v17;
}

- (ARMeshAnchor)initWithAnchor:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ARMeshAnchor;
  v5 = [(ARAnchor *)&v17 initWithAnchor:v4];
  if (v5)
  {
    v6 = [v4 geometry];
    geometry = v5->_geometry;
    v5->_geometry = v6;

    [v4 timestamp];
    v5->_timestamp = v8;
    [v4 extent];
    *v5->_extent = v9;
    [v4 maxExtentError];
    v5->_maxExtentError = v10;
    [v4 visionTransform];
    *&v5[1].super.super.isa = v11;
    *&v5[1].super._identifier = v12;
    *&v5[1].super._sessionIdentifier = v13;
    *v5[1].super._anon_30 = v14;
    [v4 corner];
    *v5->_corner = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ARMeshAnchor;
  v4 = a3;
  [(ARAnchor *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_geometry forKey:{@"geometry", v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"timestamp" forKey:self->_timestamp];
  [v4 ar_encodeVector3:@"extent" forKey:*self->_extent];
  [v4 encodeDouble:@"maxExtentError" forKey:self->_maxExtentError];
  [v4 ar_encodeMatrix4x4:@"visionTransform" forKey:{*&self[1].super.super.isa, *&self[1].super._identifier, *&self[1].super._sessionIdentifier, *self[1].super._anon_30}];
  [v4 ar_encodeVector3:@"corner" forKey:*self->_corner];
}

- (ARMeshAnchor)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ARMeshAnchor;
  v5 = [(ARAnchor *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"geometry"];
    geometry = v5->_geometry;
    v5->_geometry = v6;

    [v4 decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v8;
    [v4 ar_decodeVector3ForKey:@"extent"];
    *v5->_extent = v9;
    [v4 decodeDoubleForKey:@"maxExtentError"];
    v5->_maxExtentError = v10;
    [v4 ar_decodeMatrix4x4ForKey:@"visionTransform"];
    *&v5[1].super.super.isa = v11;
    *&v5[1].super._identifier = v12;
    *&v5[1].super._sessionIdentifier = v13;
    *v5[1].super._anon_30 = v14;
    [v4 ar_decodeVector3ForKey:@"corner"];
    *v5->_corner = v15;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  v7 = [(ARAnchor *)self identifier];
  [v6 appendFormat:@" identifier=%@", v7];

  v8 = [(ARAnchor *)self name];

  if (v8)
  {
    v9 = [(ARAnchor *)self name];
    [v6 appendFormat:@" name=%@", v9];
  }

  v10 = [(ARMeshAnchor *)self geometry];
  [v6 appendFormat:@" geometry=%@", v10];

  [(ARAnchor *)self transform];
  v15 = ARMatrix4x4Description(0, v11, v12, v13, v14);
  [v6 appendFormat:@" transform=%@", v15];

  if (ARInternalOSBuild())
  {
    [(ARMeshAnchor *)self timestamp];
    [v6 appendFormat:@" timestamp=%f", v16];
  }

  [v6 appendString:@">"];

  return v6;
}

@end