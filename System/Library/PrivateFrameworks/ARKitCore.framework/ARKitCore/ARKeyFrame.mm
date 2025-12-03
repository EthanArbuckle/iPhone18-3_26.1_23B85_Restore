@interface ARKeyFrame
- (ARKeyFrame)initWithKeyframeData:(float32x4_t)data featurePoints:(float32x4_t)points referenceOriginTransform:(float32x4_t)transform;
- (__n128)setCameraIntrinsics:(__n128)intrinsics;
- (id)description;
@end

@implementation ARKeyFrame

- (ARKeyFrame)initWithKeyframeData:(float32x4_t)data featurePoints:(float32x4_t)points referenceOriginTransform:(float32x4_t)transform
{
  v10 = a8;
  v63.receiver = self;
  v63.super_class = ARKeyFrame;
  v11 = [(ARKeyFrame *)&v63 init];
  if (v11)
  {
    v62[0] = 0;
    v62[1] = 0;
    v61 = v62;
    if (*(a7 + 168))
    {
      v12 = 0;
      do
      {
        v65.columns[0].i64[0] = *(*(a7 + 176) + 4 * v12);
        std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long>(&v61, &v65);
        ++v12;
      }

      while (v12 < *(a7 + 168));
    }

    std::set<unsigned long long>::set[abi:ne200100](v60, &v61);
    v13 = [v10 filterPointCloudWithIdentifiers:v60];
    featurePoints = v11->_featurePoints;
    v11->_featurePoints = v13;

    std::__tree<std::array<unsigned char,16ul>>::destroy(v60, v60[1]);
    *v15.i64 = ARMatrix4x4MakeRowMajorTransform(a7);
    v54 = v16;
    v55 = v15;
    v52 = v18;
    v53 = v17;
    *v19.i64 = ARVisionToRenderingCoordinateTransform();
    v50 = v20;
    v51 = v19;
    v48 = v22;
    v49 = v21;
    *v23.i64 = ARRenderingToVisionCameraCoordinateTransform();
    v44 = v24;
    v45 = v23;
    v46 = v26;
    v47 = v25;
    v66.columns[1] = v54;
    v66.columns[0] = v55;
    v66.columns[3] = v52;
    v66.columns[2] = v53;
    v67 = __invert_f4(v66);
    v27 = 0;
    v64 = v67;
    do
    {
      v65.columns[v27] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51, COERCE_FLOAT(*&v64.columns[v27])), v50, *v64.columns[v27].f32, 1), v49, v64.columns[v27], 2), v48, v64.columns[v27], 3);
      ++v27;
    }

    while (v27 != 4);
    v28 = 0;
    v29 = v65.columns[0];
    v30 = v65.columns[1];
    v31 = v65.columns[2];
    v32 = v65.columns[3];
    v64.columns[0] = v45;
    v64.columns[1] = v44;
    v64.columns[2] = v47;
    v64.columns[3] = v46;
    do
    {
      v65.columns[v28] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(*&v64.columns[v28])), v30, *v64.columns[v28].f32, 1), v31, v64.columns[v28], 2), v32, v64.columns[v28], 3);
      ++v28;
    }

    while (v28 != 4);
    v33 = 0;
    v64 = v65;
    do
    {
      v65.columns[v33] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*&v64.columns[v33])), data, *v64.columns[v33].f32, 1), points, v64.columns[v33], 2), transform, v64.columns[v33], 3);
      ++v33;
    }

    while (v33 != 4);
    v34 = v65.columns[1];
    v35 = v65.columns[2];
    v36 = v65.columns[3];
    *&v11[1].super.isa = v65.columns[0];
    *v11[1]._anon_10 = v34;
    *&v11[1]._anon_10[16] = v35;
    *&v11[1]._anon_10[32] = v36;
    RowMajorTransform = ARMatrix3x3MakeRowMajorTransform((a7 + 96));
    *&v11->_anon_10[8] = v38;
    *v11->_anon_10 = RowMajorTransform;
    *&v11->_anon_10[24] = v39;
    *&v11->_anon_10[16] = v40;
    *&v11->_anon_10[40] = v41;
    *&v11->_anon_10[32] = v42;
    std::__tree<std::array<unsigned char,16ul>>::destroy(&v61, v62[0]);
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(ARKeyFrame *)self transform];
  v10 = ARMatrix4x4Description(0, v6, v7, v8, v9);
  featurePoints = [(ARKeyFrame *)self featurePoints];
  v12 = [featurePoints description];
  v13 = [v3 stringWithFormat:@"<%@: %p transform=%@ featurePoints=%@>", v5, self, v10, v12];

  return v13;
}

- (__n128)setCameraIntrinsics:(__n128)intrinsics
{
  result[1] = a2;
  result[2] = intrinsics;
  result[3] = a4;
  return result;
}

@end