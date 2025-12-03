@interface ARMeshAnchor
- (ARMeshAnchor)initWithAnchor:(id)anchor;
- (ARMeshAnchor)initWithCoder:(id)coder;
- (ARMeshAnchor)initWithGeometry:(double)geometry atTimestamp:(double)timestamp identifier:(double)identifier transform:(double)transform;
- (ARMeshAnchor)initWithGeometry:(double)geometry atTimestamp:(double)timestamp identifier:(double)identifier transform:(double)transform voxelSize:(double)size;
- (ARMeshAnchor)initWithGeometry:(id)geometry atTimestamp:(double)timestamp identifier:(id)identifier;
- (__n128)initWithGeometry:(simd_float4)geometry atTimestamp:(simd_float4)timestamp identifier:(simd_float4)identifier visionTransform:(simd_float4)transform referenceOriginTransform:(uint64_t)originTransform;
- (id)description;
- (uint64_t)initWithGeometry:(__n128)geometry atTimestamp:(__n128)timestamp identifier:(__n128)identifier referenceOriginTransform:(__n128)transform;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARMeshAnchor

- (uint64_t)initWithGeometry:(__n128)geometry atTimestamp:(__n128)timestamp identifier:(__n128)identifier referenceOriginTransform:(__n128)transform
{
  v12 = a9;
  v13 = a8;
  vertices = [v13 vertices];
  ARMinimumCornerForVertexSource(vertices);

  ARMatrix4x4FromRotationAndTranslation();
  v19 = [self initWithGeometry:v13 atTimestamp:v12 identifier:a2 visionTransform:v15 referenceOriginTransform:{v16, v17, v18, *&geometry, *&timestamp, *&identifier, *&transform}];

  return v19;
}

- (__n128)initWithGeometry:(simd_float4)geometry atTimestamp:(simd_float4)timestamp identifier:(simd_float4)identifier visionTransform:(simd_float4)transform referenceOriginTransform:(uint64_t)originTransform
{
  v20 = a8;
  v21 = a9;
  *v22.i64 = ARVisionToRenderingCoordinateTransform();
  v26 = 0;
  geometryCopy = geometry;
  timestampCopy = timestamp;
  identifierCopy = identifier;
  transformCopy = transform;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  do
  {
    *(&v54 + v26) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*(&geometryCopy + v26))), v23, *&geometryCopy.f32[v26 / 4], 1), v24, *(&geometryCopy + v26), 2), v25, *(&geometryCopy + v26), 3);
    v26 += 16;
  }

  while (v26 != 64);
  v40 = v55;
  v41 = v54;
  v38 = v57;
  v39 = v56;
  *v27.i64 = ARRenderingToVisionCoordinateTransform();
  v28 = 0;
  geometryCopy = v27;
  timestampCopy = v29;
  identifierCopy = v30;
  transformCopy = v31;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  do
  {
    *(&v54 + v28) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v41, COERCE_FLOAT(*(&geometryCopy + v28))), v40, *&geometryCopy.f32[v28 / 4], 1), v39, *(&geometryCopy + v28), 2), v38, *(&geometryCopy + v28), 3);
    v28 += 16;
  }

  while (v28 != 64);
  v32 = 0;
  geometryCopy = v54;
  timestampCopy = v55;
  identifierCopy = v56;
  transformCopy = v57;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  do
  {
    *(&v54 + v32) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a14, COERCE_FLOAT(*(&geometryCopy + v32))), a15, *&geometryCopy.f32[v32 / 4], 1), a16, *(&geometryCopy + v32), 2), a17, *(&geometryCopy + v32), 3);
    v32 += 16;
  }

  while (v32 != 64);
  v44 = *v56.i64;
  v45 = *v57.i64;
  v42 = *v54.i64;
  v43 = *v55.i64;
  vertices = [v20 vertices];
  ARConvertVisionSourceToWorldSource(vertices, 0, geometry, timestamp, identifier, transform);

  normals = [v20 normals];
  ARConvertVisionSourceToWorldSource(normals, 1, geometry, timestamp, identifier, transform);

  v35 = [self initWithGeometry:v20 atTimestamp:v21 identifier:a2 transform:{v42, v43, v44, v45}];
  v36 = v35;
  if (v35)
  {
    v35[15] = geometry;
    v35[16] = timestamp;
    v35[17] = identifier;
    v35[18] = transform;
  }

  return v36;
}

- (ARMeshAnchor)initWithGeometry:(id)geometry atTimestamp:(double)timestamp identifier:(id)identifier
{
  identifierCopy = identifier;
  geometryCopy = geometry;
  vertices = [geometryCopy vertices];
  ARMinimumCornerForVertexSource(vertices);

  ARMatrix4x4FromRotationAndTranslation();
  v15 = [(ARMeshAnchor *)self initWithGeometry:geometryCopy atTimestamp:identifierCopy identifier:timestamp transform:v11, v12, v13, v14];

  return v15;
}

- (ARMeshAnchor)initWithGeometry:(double)geometry atTimestamp:(double)timestamp identifier:(double)identifier transform:(double)transform
{
  v13 = a8;
  v34.receiver = self;
  v34.super_class = ARMeshAnchor;
  transform = [(ARAnchor *)&v34 initWithIdentifier:a9 transform:geometry, timestamp, identifier, transform];
  v15 = transform;
  if (transform)
  {
    objc_storeStrong(&transform->_geometry, a8);
    v15->_timestamp = a2;
    vertices = [v13 vertices];
    v17 = [vertices count];
    v18 = 0uLL;
    if (v17 >= 2)
    {
      v19 = v17;
      buffer = [vertices buffer];
      contents = [buffer contents];

      *&v18 = *contents;
      v23 = *(contents + 8);
      v22 = (contents + 8);
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

    vertices2 = [v13 vertices];
    *v15->_corner = ARMinimumCornerForVertexSource(vertices2);

    v15->_maxExtentError = 0.0;
    [(ARAnchor *)v15 setLastUpdateTimestamp:a2];
  }

  return v15;
}

- (ARMeshAnchor)initWithGeometry:(double)geometry atTimestamp:(double)timestamp identifier:(double)identifier transform:(double)transform voxelSize:(double)size
{
  v15 = a9;
  v25.receiver = self;
  v25.super_class = ARMeshAnchor;
  transform = [(ARAnchor *)&v25 initWithIdentifier:a10 transform:geometry, timestamp, identifier, transform];
  v17 = transform;
  if (transform)
  {
    objc_storeStrong(&transform->_geometry, a9);
    v17->_timestamp = a2;
    v18 = size * 64.0;
    *&v18 = size * 64.0;
    *v17->_extent = vdupq_lane_s32(*&v18, 0);
    v17->_maxExtentError = size * 8.0;
    v19 = vnegq_f32(*v17->_extent);
    v19.i32[1] = 0;
    *v17->_corner = v19;
    [(ARAnchor *)v17 setLastUpdateTimestamp:a2];
  }

  return v17;
}

- (ARMeshAnchor)initWithAnchor:(id)anchor
{
  anchorCopy = anchor;
  v17.receiver = self;
  v17.super_class = ARMeshAnchor;
  v5 = [(ARAnchor *)&v17 initWithAnchor:anchorCopy];
  if (v5)
  {
    geometry = [anchorCopy geometry];
    geometry = v5->_geometry;
    v5->_geometry = geometry;

    [anchorCopy timestamp];
    v5->_timestamp = v8;
    [anchorCopy extent];
    *v5->_extent = v9;
    [anchorCopy maxExtentError];
    v5->_maxExtentError = v10;
    [anchorCopy visionTransform];
    *&v5[1].super.super.isa = v11;
    *&v5[1].super._identifier = v12;
    *&v5[1].super._sessionIdentifier = v13;
    *v5[1].super._anon_30 = v14;
    [anchorCopy corner];
    *v5->_corner = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ARMeshAnchor;
  coderCopy = coder;
  [(ARAnchor *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_geometry forKey:{@"geometry", v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"timestamp" forKey:self->_timestamp];
  [coderCopy ar_encodeVector3:@"extent" forKey:*self->_extent];
  [coderCopy encodeDouble:@"maxExtentError" forKey:self->_maxExtentError];
  [coderCopy ar_encodeMatrix4x4:@"visionTransform" forKey:{*&self[1].super.super.isa, *&self[1].super._identifier, *&self[1].super._sessionIdentifier, *self[1].super._anon_30}];
  [coderCopy ar_encodeVector3:@"corner" forKey:*self->_corner];
}

- (ARMeshAnchor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = ARMeshAnchor;
  v5 = [(ARAnchor *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"geometry"];
    geometry = v5->_geometry;
    v5->_geometry = v6;

    [coderCopy decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v8;
    [coderCopy ar_decodeVector3ForKey:@"extent"];
    *v5->_extent = v9;
    [coderCopy decodeDoubleForKey:@"maxExtentError"];
    v5->_maxExtentError = v10;
    [coderCopy ar_decodeMatrix4x4ForKey:@"visionTransform"];
    *&v5[1].super.super.isa = v11;
    *&v5[1].super._identifier = v12;
    *&v5[1].super._sessionIdentifier = v13;
    *v5[1].super._anon_30 = v14;
    [coderCopy ar_decodeVector3ForKey:@"corner"];
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

  identifier = [(ARAnchor *)self identifier];
  [v6 appendFormat:@" identifier=%@", identifier];

  name = [(ARAnchor *)self name];

  if (name)
  {
    name2 = [(ARAnchor *)self name];
    [v6 appendFormat:@" name=%@", name2];
  }

  geometry = [(ARMeshAnchor *)self geometry];
  [v6 appendFormat:@" geometry=%@", geometry];

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