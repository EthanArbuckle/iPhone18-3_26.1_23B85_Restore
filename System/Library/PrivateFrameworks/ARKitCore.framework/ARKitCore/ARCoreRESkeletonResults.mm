@interface ARCoreRESkeletonResults
- (BOOL)isEqual:(id)equal;
- (CGSize)imageResolution;
- (__n128)setCameraIntrinsics:(__n128)intrinsics;
- (id)anchorsForCameraWithTransform:(float32x4_t)transform referenceOriginTransform:(float32x4_t)originTransform existingAnchors:(float32x4_t)anchors anchorsToRemove:(uint64_t)remove;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ARCoreRESkeletonResults

- (id)anchorsForCameraWithTransform:(float32x4_t)transform referenceOriginTransform:(float32x4_t)originTransform existingAnchors:(float32x4_t)anchors anchorsToRemove:(uint64_t)remove
{
  v89 = *MEMORY[0x1E69E9840];
  v48 = a7;
  v65 = objc_opt_new();
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v48;
  v8 = [obj countByEnumeratingWithState:&v74 objects:v88 count:{16, v48}];
  if (v8)
  {
    v9 = *v75;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v75 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v74 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          identifier = [v11 identifier];
          [v65 setObject:v11 forKey:identifier];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v74 objects:v88 count:16];
    }

    while (v8);
  }

  v56 = objc_opt_new();
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  retargetedSkeletons = [self retargetedSkeletons];
  v13 = [retargetedSkeletons countByEnumeratingWithState:&v70 objects:v87 count:16];
  if (v13)
  {
    v51 = *v71;
    v14 = MEMORY[0x1E69E9B18];
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v71 != v51)
        {
          objc_enumerationMutation(retargetedSkeletons);
        }

        v16 = *(*(&v70 + 1) + 8 * j);
        *v17.i64 = ARVisionCameraToRenderingCoordinateTransform();
        v61 = v18;
        v63 = v17;
        v57 = v20;
        v59 = v19;
        [v16 visionTransform];
        v21 = 0;
        v78 = v22;
        v79 = v23;
        v80 = v24;
        v81 = v25;
        do
        {
          *(&v82 + v21) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63, COERCE_FLOAT(*(&v78 + v21))), v61, *&v78.f32[v21 / 4], 1), v59, *(&v78 + v21), 2), v57, *(&v78 + v21), 3);
          v21 += 16;
        }

        while (v21 != 64);
        v26 = 0;
        v27 = v82;
        v28 = v83;
        v29 = v84;
        v30 = v85;
        v31 = v14[1];
        v32 = v14[2];
        v33 = v14[3];
        v78 = *v14;
        v79 = v31;
        v80 = v32;
        v81 = v33;
        do
        {
          *(&v82 + v26) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*(&v78 + v26))), v28, *&v78.f32[v26 / 4], 1), v29, *(&v78 + v26), 2), v30, *(&v78 + v26), 3);
          v26 += 16;
        }

        while (v26 != 64);
        v34 = 0;
        v78 = v82;
        v79 = v83;
        v80 = v84;
        v81 = v85;
        do
        {
          *(&v82 + v34) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*(&v78 + v34))), transform, *&v78.f32[v34 / 4], 1), originTransform, *(&v78 + v34), 2), anchors, *(&v78 + v34), 3);
          v34 += 16;
        }

        while (v34 != 64);
        v58 = *v82.i64;
        v60 = *v83.i64;
        v62 = *v84.i64;
        v64 = *v85.i64;
        identifier2 = [v16 identifier];
        v36 = [v65 objectForKeyedSubscript:identifier2];

        v37 = [ARBodyAnchor alloc];
        if (v36)
        {
          identifier3 = [v36 identifier];
          v39 = [(ARBodyAnchor *)v37 initWithIdentifier:identifier3 transform:1 tracked:v16 skeletonData:v58, v60, v62, v64];

          identifier4 = [v16 identifier];
          [v65 removeObjectForKey:identifier4];
        }

        else
        {
          identifier4 = [v16 identifier];
          v39 = [(ARBodyAnchor *)v37 initWithIdentifier:identifier4 transform:1 tracked:v16 skeletonData:v58, v60, v62, v64];
        }

        [v56 addObject:v39];
      }

      v13 = [retargetedSkeletons countByEnumeratingWithState:&v70 objects:v87 count:16];
    }

    while (v13);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  allValues = [v65 allValues];
  v42 = [allValues countByEnumeratingWithState:&v66 objects:v86 count:16];
  if (v42)
  {
    v43 = *v67;
    do
    {
      for (k = 0; k != v42; ++k)
      {
        if (*v67 != v43)
        {
          objc_enumerationMutation(allValues);
        }

        v45 = *(*(&v66 + 1) + 8 * k);
        if ([v45 isTracked])
        {
          v46 = [v45 copyWithTrackedState:0];
          [v56 addObject:v46];
        }
      }

      v42 = [allValues countByEnumeratingWithState:&v66 objects:v86 count:16];
    }

    while (v42);
  }

  return v56;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 16) = self->_timestamp;
  v6 = [(NSArray *)self->_retargetedSkeletons copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = *&self[1].super.isa;
  v9 = *&self[1]._imageResolution.height;
  *(v5 + 64) = *&self[1]._timestamp;
  *(v5 + 80) = v9;
  *(v5 + 48) = v8;
  *(v5 + 24) = self->_imageResolution;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v6 = v5;
    v9 = *(v5 + 2) == self->_timestamp && ([v5[1] isEqual:self->_retargetedSkeletons] & 1) == 0 && (v7 = vdupq_n_s32(0x38FA0000u), v8 = vandq_s8(vandq_s8(vcgeq_f32(v7, vabdq_f32(v6[4], *&self[1]._timestamp)), vcgeq_f32(v7, vabdq_f32(v6[3], *&self[1].super.isa))), vcgeq_f32(v7, vabdq_f32(v6[5], *&self[1]._imageResolution.height))), v8.i32[3] = v8.i32[2], (vminvq_u32(v8) & 0x80000000) != 0) && *v6[2].i64 == self->_imageResolution.height && *&v6[1].i64[1] == self->_imageResolution.width;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (__n128)setCameraIntrinsics:(__n128)intrinsics
{
  result[3] = a2;
  result[4] = intrinsics;
  result[5] = a4;
  return result;
}

- (CGSize)imageResolution
{
  width = self->_imageResolution.width;
  height = self->_imageResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

@end