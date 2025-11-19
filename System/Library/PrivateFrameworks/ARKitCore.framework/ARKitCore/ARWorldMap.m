@interface ARWorldMap
+ (NSObject)keyframesForTrackingData:(double)a3 withFeaturePoints:(double)a4 referenceOriginTransform:(double)a5;
+ (__n64)boundsForTrackingData:(uint64_t)a1;
+ (id)featurePointsForTrackingData:(float32x4_t)a3 referenceOriginTransform:(float32x4_t)a4;
- (ARWorldMap)initWithCoder:(id)a3;
- (ARWorldMap)initWithTrackingData:(__n128)a3 referenceOriginTransform:(__n128)a4;
- (BOOL)isEqual:(id)a3;
- (NSObject)extractReferenceObjectWithTransform:(__n128)a3 center:(float64x2_t)a4 extent:(__n128)a5 error:(float32x4_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARWorldMap

- (ARWorldMap)initWithTrackingData:(__n128)a3 referenceOriginTransform:(__n128)a4
{
  v8 = a7;
  v25.receiver = a1;
  v25.super_class = ARWorldMap;
  v9 = [(ARWorldMap *)&v25 init];
  if (v9)
  {
    v10 = [objc_opt_class() featurePointsForTrackingData:v8 referenceOriginTransform:{a2.n128_f64[0], a3.n128_f64[0], a4.n128_f64[0], a5.n128_f64[0]}];
    [(ARPointCloud *)v10 computeBounds];
    v19 = v12;
    v20 = v11;
    v9->_version = 3;
    v13 = [v8 copy];
    trackingData = v9->_trackingData;
    v9->_trackingData = v13;

    *&v9[1].super.isa = a2;
    *&v9[1]._rawFeaturePoints = a3;
    *&v9[1]._trackingData = a4;
    *v9[1]._center = a5;
    rawFeaturePoints = v9->_rawFeaturePoints;
    v9->_rawFeaturePoints = v10;
    v16 = v10;

    *v9->_center = v20;
    *v9->_extent = v19;
    anchors = v9->_anchors;
    v9->_anchors = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (NSObject)extractReferenceObjectWithTransform:(__n128)a3 center:(float64x2_t)a4 extent:(__n128)a5 error:(float32x4_t)a6
{
  v84 = *MEMORY[0x1E69E9840];
  v11 = objc_opt_new();
  [a1 referenceOriginTransform];
  v87 = __invert_f4(v86);
  v12 = 0;
  *buf = a2;
  *&buf[16] = a3;
  v82 = a4;
  v83 = a5;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  do
  {
    *(&v77 + v12) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v87.columns[0], COERCE_FLOAT(*&buf[v12])), v87.columns[1], *&buf[v12], 1), v87.columns[2], *&buf[v12], 2), v87.columns[3], *&buf[v12], 3);
    v12 += 16;
  }

  while (v12 != 64);
  v68 = v77;
  *v13.f32 = ARInnerScaleFromMatrix(v77, v78);
  v59 = v13;
  *v14.i64 = ARNormalizedTransform(v68);
  v73 = v15;
  v75 = v14;
  v69 = v17;
  v71 = v16;
  *v18.i64 = ARRenderingToVisionCoordinateTransform();
  v22 = 0;
  *buf = v75;
  *&buf[16] = v73;
  v82 = v71;
  v83 = v69;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  do
  {
    *(&v77 + v22) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*&buf[v22])), v19, *&buf[v22], 1), v20, *&buf[v22], 2), v21, *&buf[v22], 3);
    v22 += 16;
  }

  while (v22 != 64);
  v55 = v78;
  v57 = v77;
  v51 = v80;
  v53 = v79;
  *&v23 = ARVisionToRenderingCoordinateTransform();
  v24 = 0;
  *buf = v23;
  *&buf[16] = v25;
  v82 = v26;
  v83 = v27;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  do
  {
    *(&v77 + v24) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, COERCE_FLOAT(*&buf[v24])), v55, *&buf[v24], 1), v53, *&buf[v24], 2), v51, *&buf[v24], 3);
    v24 += 16;
  }

  while (v24 != 64);
  v56 = v79;
  v58 = v80;
  v52 = v77;
  v54 = v78;
  v28.i64[0] = 0x3F0000003F000000;
  v28.i64[1] = 0x3F0000003F000000;
  v29 = vmulq_f32(a7, v28);
  v61 = vmulq_f32(vsubq_f32(a6, v29), v59);
  v65 = vmulq_f32(vaddq_f32(a6, v29), v59);
  *v30.i64 = ARRenderingToVisionCoordinateTransform();
  v62 = vaddq_f32(v33, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, v61.f32[0]), v31, *v61.f32, 1), v32, v61, 2));
  *v34.i64 = ARRenderingToVisionCoordinateTransform();
  v38 = vaddq_f32(v37, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, v65.f32[0]), v35, *v65.f32, 1), v36, v65, 2));
  v39 = vdivq_f32(v62, vdupq_laneq_s32(v62, 3));
  v40 = vdivq_f32(v38, vdupq_laneq_s32(v38, 3));
  v39.i32[3] = 0;
  v40.i32[3] = 0;
  v63 = vminnmq_f32(v39, v40);
  v66 = vmaxnmq_f32(v39, v40);
  v41 = [a1 trackingData];
  *buf = *v63.i32;
  *&buf[8] = vcvtq_f64_f32(*&vextq_s8(v63, v63, 4uLL));
  *&buf[24] = *v66.i32;
  v82 = vcvtq_f64_f32(*&vextq_s8(v66, v66, 4uLL));
  v42 = CV3DVIOExtractObjectMap();

  if (v42)
  {
    v43 = _ARLogGeneral_29();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      v46 = NSStringFromCV3DVIOReturn(v42);
      *buf = 138543874;
      *&buf[4] = v45;
      *&buf[12] = 2048;
      *&buf[14] = a1;
      *&buf[22] = 2114;
      *&buf[24] = v46;
      _os_log_impl(&dword_1C241C000, v43, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error extracting reference object: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v47 = [ARReferenceObject alloc];
    v88.columns[1] = v73;
    v88.columns[0] = v75;
    v88.columns[3] = v69;
    v88.columns[2] = v71;
    v89 = __invert_f4(v88);
    v43 = [(ARReferenceObject *)v47 initWithTrackingData:v11 referenceOriginTransform:*v89.columns[0].i64, *v89.columns[1].i64, *v89.columns[2].i64, *v89.columns[3].i64];
    v48 = [v43 rawFeaturePoints];
    v49 = [v48 count];

    if (v49 >= 0x33)
    {

      goto LABEL_15;
    }
  }

  if (a9)
  {
    ARErrorWithCodeAndUserInfo(400, 0);
    *a9 = v43 = 0;
  }

  else
  {
    v43 = 0;
  }

LABEL_15:

  return v43;
}

- (unint64_t)hash
{
  v2 = [(ARWorldMap *)self trackingData];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    if (AREqualTransforms(*&self[1].super.isa, *&self[1]._rawFeaturePoints, *&self[1]._trackingData, *self[1]._center, v5[5], v5[6], v5[7], v5[8]) && [(NSArray *)self->_anchors isEqual:v5->i64[1]]&& ((surfaceData = self->_surfaceData, surfaceData == v5[2].i64[1]) || [(NSData *)surfaceData isEqual:?]))
    {
      trackingData = self->_trackingData;
      v8 = [(float32x4_t *)v5 trackingData];
      v9 = [(NSData *)trackingData isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (v5)
  {
    *(v5 + 24) = self->_version;
    v7 = [(NSData *)self->_trackingData copyWithZone:a3];
    v8 = *(v6 + 32);
    *(v6 + 32) = v7;

    v9 = *&self[1].super.isa;
    v10 = *&self[1]._rawFeaturePoints;
    v11 = *self[1]._center;
    *(v6 + 112) = *&self[1]._trackingData;
    *(v6 + 128) = v11;
    *(v6 + 80) = v9;
    *(v6 + 96) = v10;
    objc_storeStrong((v6 + 16), self->_rawFeaturePoints);
    *(v6 + 48) = *self->_center;
    *(v6 + 64) = *self->_extent;
    v12 = [(NSData *)self->_surfaceData copyWithZone:a3];
    v13 = *(v6 + 40);
    *(v6 + 40) = v12;

    v14 = [(NSArray *)self->_anchors copyWithZone:a3];
    v15 = *(v6 + 8);
    *(v6 + 8) = v14;
  }

  return v6;
}

- (id)description
{
  v3 = [(ARWorldMap *)self anchors];
  if ([v3 count] == 1)
  {
    v4 = @"1 anchor";
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(ARWorldMap *)self anchors];
    v4 = [v5 stringWithFormat:@"%d anchors", objc_msgSend(v6, "count")];
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [(ARWorldMap *)self center];
  v11 = ARVector3Description(v10);
  [(ARWorldMap *)self extent];
  v13 = ARVector3Description(v12);
  v14 = [(ARWorldMap *)self rawFeaturePoints];
  v15 = [v7 stringWithFormat:@"<%@: %p center=%@ extent=%@ | %@, %d features>", v9, self, v11, v13, v4, objc_msgSend(v14, "count")];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 encodeInteger:-[ARWorldMap version](self forKey:{"version"), @"version"}];
  v5 = [(ARWorldMap *)self trackingData];
  [v4 encodeObject:v5 forKey:@"trackingData"];

  v6 = [(ARWorldMap *)self surfaceData];
  [v4 encodeObject:v6 forKey:@"surfaceData"];

  [(ARWorldMap *)self referenceOriginTransform];
  [v4 ar_encodeMatrix4x4:@"referenceOriginTransform" forKey:?];
  v7 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(ARWorldMap *)self anchors];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v7 addObject:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [v4 encodeObject:v7 forKey:@"anchors"];
}

- (ARWorldMap)initWithCoder:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"version"];
  if (v5 >= 4)
  {
    v6 = ARErrorWithCodeAndUserInfo(302, 0);
    [v4 failWithError:v6];

    v7 = _ARLogGeneral_29();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138543874;
      v27 = v9;
      v28 = 2048;
      v29 = self;
      v30 = 2048;
      v31 = v5;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error loading map: Unsupported map version (%ld)", buf, 0x20u);
    }

LABEL_14:
    v20 = 0;
    goto LABEL_15;
  }

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trackingData"];
  if (!v7)
  {
    v21 = ARErrorWithCodeAndUserInfo(302, 0);
    [v4 failWithError:v21];

    v22 = _ARLogGeneral_29();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138543618;
      v27 = v24;
      v28 = 2048;
      v29 = self;
      _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error loading map: Malformed map data", buf, 0x16u);
    }

    goto LABEL_14;
  }

  [v4 ar_decodeMatrix4x4ForKey:@"referenceOriginTransform"];
  v10 = [(ARWorldMap *)self initWithTrackingData:v7 referenceOriginTransform:?];
  v11 = v10;
  if (v10)
  {
    v10->_version = v5;
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"surfaceData"];
    surfaceData = v11->_surfaceData;
    v11->_surfaceData = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"anchors"];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v11->_anchors, v19);
  }

  self = v11;
  v20 = self;
LABEL_15:

  return v20;
}

+ (id)featurePointsForTrackingData:(float32x4_t)a3 referenceOriginTransform:(float32x4_t)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a7;
  v9 = objc_opt_new();
  v10 = CV3DVIOCreatePointsFromMap();
  if (v10)
  {
    v11 = v10;
    if (ARShouldUseLogTypeError_onceToken_37 != -1)
    {
      +[ARWorldMap featurePointsForTrackingData:referenceOriginTransform:];
    }

    v12 = ARShouldUseLogTypeError_internalOSVersion_37;
    v13 = _ARLogGeneral_29();
    v14 = v13;
    if (v12 == 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = NSStringFromCV3DVIOReturn(v11);
        *buf = 138543874;
        *&buf[4] = v16;
        *&buf[12] = 2048;
        *&buf[14] = a1;
        *&buf[22] = 2114;
        *&buf[24] = v17;
        v18 = "%{public}@ <%p>: Failed to parse feature points: %{public}@";
        p_super = &v14->super;
        v20 = OS_LOG_TYPE_ERROR;
LABEL_13:
        _os_log_impl(&dword_1C241C000, p_super, v20, v18, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v16 = NSStringFromClass(v27);
      v17 = NSStringFromCV3DVIOReturn(v11);
      *buf = 138543874;
      *&buf[4] = v16;
      *&buf[12] = 2048;
      *&buf[14] = a1;
      *&buf[22] = 2114;
      *&buf[24] = v17;
      v18 = "Error: %{public}@ <%p>: Failed to parse feature points: %{public}@";
      p_super = &v14->super;
      v20 = OS_LOG_TYPE_INFO;
      goto LABEL_13;
    }

LABEL_17:

    v26 = +[ARPointCloud emptyPointCloud];
    goto LABEL_18;
  }

  v14 = [[ARPointCloud alloc] initWithPointData:v9];
  if (![(ARPointCloud *)v14 count])
  {
    v28 = _ARLogGeneral_29();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138543618;
      *&buf[4] = v30;
      *&buf[12] = 2048;
      *&buf[14] = a1;
      _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Warning: Zero feature points in map.", buf, 0x16u);
    }

    goto LABEL_17;
  }

  *&v21 = ARVisionToRenderingCoordinateTransform();
  v22 = 0;
  v36[0] = v21;
  v36[1] = v23;
  v36[2] = v24;
  v36[3] = v25;
  memset(buf, 0, sizeof(buf));
  v38 = 0u;
  *v39 = 0u;
  do
  {
    *&buf[v22 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(v36[v22])), a3, *&v36[v22], 1), a4, v36[v22], 2), a5, v36[v22], 3);
    ++v22;
  }

  while (v22 != 4);
  v26 = [(ARPointCloud *)v14 pointCloudByApplyingTransform:*buf, *&buf[16], *&v38, v39[0]];

LABEL_18:

  return v26;
}

+ (__n64)boundsForTrackingData:(uint64_t)a1
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = CV3DVIOGetMapBounds();
  if (!v2)
  {
    v3.f64[0] = 0.0;
    v4.f64[0] = 0.0;
    __asm { FMOV            V6.2D, #0.5 }

    v20 = vmulq_f64(vaddq_f64(v3, v4), _Q6).f64[0];
    v21 = COERCE_DOUBLE(*&vmulq_f64(vaddq_f64(0, 0), _Q6).f64[1]);
    result.n64_f32[0] = -v21;
    *&v20 = v20;
    result.n64_u32[1] = LODWORD(v20);
    return result;
  }

  v5 = v2;
  if (ARShouldUseLogTypeError_onceToken_37 != -1)
  {
    +[ARWorldMap boundsForTrackingData:];
  }

  v6 = ARShouldUseLogTypeError_internalOSVersion_37;
  v7 = _ARLogGeneral_29();
  v8 = v7;
  if (v6 == 1)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromCV3DVIOReturn(v5);
      *buf = 138543874;
      v25 = v10;
      v26 = 2048;
      v27 = a1;
      v28 = 2114;
      v29 = v11;
      v12 = "%{public}@ <%p>: Failed to parse bounds: %{public}@";
      v13 = v8;
      v14 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_1C241C000, v13, v14, v12, buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v23 = objc_opt_class();
    v10 = NSStringFromClass(v23);
    v11 = NSStringFromCV3DVIOReturn(v5);
    *buf = 138543874;
    v25 = v10;
    v26 = 2048;
    v27 = a1;
    v28 = 2114;
    v29 = v11;
    v12 = "Error: %{public}@ <%p>: Failed to parse bounds: %{public}@";
    v13 = v8;
    v14 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }

  return 0;
}

+ (NSObject)keyframesForTrackingData:(double)a3 withFeaturePoints:(double)a4 referenceOriginTransform:(double)a5
{
  v61 = *MEMORY[0x1E69E9840];
  v10 = a7;
  v11 = a8;
  v48 = 0;
  v49 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v12 = CV3DVIOCreateKeyframesFromMap();
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v41 = __82__ARWorldMap_keyframesForTrackingData_withFeaturePoints_referenceOriginTransform___block_invoke;
  v42 = &unk_1E817D868;
  v43 = &v45;
  v44 = v49;
  if (v12)
  {
    if (ARShouldUseLogTypeError_onceToken_37 != -1)
    {
      +[ARWorldMap boundsForTrackingData:];
    }

    v13 = ARShouldUseLogTypeError_internalOSVersion_37;
    v14 = _ARLogGeneral_29();
    v15 = v14;
    if (v13 == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = NSStringFromCV3DVIOReturn(v12);
        *buf = 138543874;
        *&buf[4] = v17;
        *&buf[12] = 2048;
        *&buf[14] = a1;
        *&buf[22] = 2114;
        *&buf[24] = v18;
        _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed to parse keyframes: %{public}@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = NSStringFromCV3DVIOReturn(v12);
      *buf = 138543874;
      *&buf[4] = v33;
      *&buf[12] = 2048;
      *&buf[14] = a1;
      *&buf[22] = 2114;
      *&buf[24] = v34;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed to parse keyframes: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v15 = objc_opt_new();
    if (v49)
    {
      v19 = 0;
      for (i = 0; i < v49; ++i)
      {
        v60 = 0;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        *&buf[16] = 0u;
        v51 = 0u;
        *buf = 0u;
        v21 = (v46[3] + v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v21[2];
        v52 = v21[3];
        *&buf[16] = v23;
        v51 = v24;
        v25 = v21[7];
        v27 = v21[4];
        v26 = v21[5];
        v55 = v21[6];
        v56 = v25;
        v53 = v27;
        v54 = v26;
        v29 = v21[9];
        v28 = v21[10];
        v30 = v21[8];
        v60 = *(v21 + 22);
        v58 = v29;
        v59 = v28;
        v57 = v30;
        *buf = v22;
        v31 = [[ARKeyFrame alloc] initWithKeyframeData:buf featurePoints:v11 referenceOriginTransform:a2, a3, a4, a5];
        [v15 addObject:v31];

        v19 += 184;
      }
    }
  }

  v41(v40);
  _Block_object_dispose(&v45, 8);
  if (v12)
  {
    v15 = objc_opt_new();
  }

  return v15;
}

@end