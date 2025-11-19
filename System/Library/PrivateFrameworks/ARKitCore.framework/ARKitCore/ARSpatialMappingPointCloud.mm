@interface ARSpatialMappingPointCloud
+ (id)dictionaryFromArray:(id)a3;
- (ARSpatialMappingPointCloud)initWithPointCloud:(__n128)a3 transform:(__n128)a4 identifier:(__n128)a5 timestamp:(double)a6;
- (float32x4_t)pointsToWorld;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)updateTransform:(void *)a1;
- (void)setCameraPose:(__n128)a3;
@end

@implementation ARSpatialMappingPointCloud

- (ARSpatialMappingPointCloud)initWithPointCloud:(__n128)a3 transform:(__n128)a4 identifier:(__n128)a5 timestamp:(double)a6
{
  v53 = *MEMORY[0x1E69E9840];
  v12 = a9;
  v46.receiver = a1;
  v46.super_class = ARSpatialMappingPointCloud;
  v13 = [(ARSpatialMappingPointCloud *)&v46 init];
  if (!v13)
  {
LABEL_30:
    v40 = 0;
    goto LABEL_31;
  }

  v13->_count = CV3DReconPointCloudGetPointsCount();
  v14 = *MEMORY[0x1E69C6C58];
  if (*MEMORY[0x1E69C6C58] != 4)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARSpatialMappingPointCloud initWithPointCloud:transform:identifier:timestamp:];
    }

    v15 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v16 = _ARLogGeneral();
    v17 = v16;
    if (v15 == 1)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        *buf = 138543874;
        v48 = v19;
        v49 = 2048;
        v50 = v13;
        v51 = 2048;
        v52 = v14;
        _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Compressed semantics bin size must be 4, found %lu", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138543874;
      v48 = v21;
      v49 = 2048;
      v50 = v13;
      v51 = 2048;
      v52 = v14;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Compressed semantics bin size must be 4, found %lu", buf, 0x20u);
    }

    goto LABEL_30;
  }

  PointsRawPtr = CV3DReconPointCloudGetPointsRawPtr();
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v13->_anon_8, v13->_count);
  if (v13->_count)
  {
    v24 = 0;
    v25 = (PointsRawPtr + 8);
    do
    {
      *&v23 = *(v25 - 1);
      DWORD2(v23) = *v25;
      *(*v13->_anon_8 + 16 * v24++) = v23;
      v25 += 3;
    }

    while (v24 < v13->_count);
  }

  ColorRawPtr = CV3DReconPointCloudGetColorRawPtr();
  if (ColorRawPtr)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v13->_anon_38, v13->_count);
    if (v13->_count)
    {
      v28 = 0;
      v29 = (ColorRawPtr + 8);
      do
      {
        *&v27 = *(v29 - 1);
        DWORD2(v27) = *v29;
        *(*v13->_anon_38 + 16 * v28++) = v27;
        v29 += 3;
      }

      while (v28 < v13->_count);
    }
  }

  NormalsRawPtr = CV3DReconPointCloudGetNormalsRawPtr();
  if (NormalsRawPtr)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v13->_anon_20, v13->_count);
    if (v13->_count)
    {
      v32 = 0;
      v33 = (NormalsRawPtr + 8);
      do
      {
        *&v31 = *(v33 - 1);
        DWORD2(v31) = *v33;
        *(*v13->_anon_20 + 16 * v32++) = v31;
        v33 += 3;
      }

      while (v32 < v13->_count);
    }
  }

  SemanticHistogramLabelsRawPtr = CV3DReconPointCloudGetSemanticHistogramLabelsRawPtr();
  SemanticHistogramVotesRawPtr = CV3DReconPointCloudGetSemanticHistogramVotesRawPtr();
  if (SemanticHistogramLabelsRawPtr)
  {
    v36 = SemanticHistogramVotesRawPtr;
    if (!SemanticHistogramVotesRawPtr)
    {
      __assert_rtn("[ARSpatialMappingPointCloud initWithPointCloud:transform:identifier:timestamp:]", "ARSpatialMappingPointCloud.mm", 106, "votes");
    }

    std::vector<unsigned char>::resize(&v13->_semantics, v13->_count);
    v13->_semanticsBinSize = 4;
    _ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEE6resizeEm(v13->_anon_68, v13->_count);
    _ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEE6resizeEm(v13->_anon_80, v13->_count);
    if (v13->_count)
    {
      v38 = 0;
      do
      {
        *(*v13->_anon_68 + 4 * v38) = *(SemanticHistogramLabelsRawPtr + v13->_semanticsBinSize * v38);
        v37.i32[0] = *(v36 + v13->_semanticsBinSize * v38);
        v39 = vmovl_u8(*v37.i8).u64[0];
        *(*v13->_anon_80 + 8 * v38) = v39;
        v39.i32[0] = *(*v13->_anon_68 + 4 * v38);
        v37 = vmovl_u8(v39);
        v13->_semantics.__begin_[v38++] = v37.i8[0];
      }

      while (v38 < v13->_count);
    }
  }

  *&v13[1].super.isa = a2;
  *&v13[1]._anon_8[8] = a3;
  *v13[1]._anon_20 = a4;
  *&v13[1]._anon_20[16] = a5;
  objc_storeStrong(&v13->_identifier, a9);
  v13->_timestamp = a6;
  v40 = v13;
LABEL_31:

  return v40;
}

- (uint64_t)updateTransform:(void *)a1
{
  result = [a1 setCameraPose:?];
  a1[20] = a1[19];
  return result;
}

- (float32x4_t)pointsToWorld
{
  v2 = a1 + 19;
  v3 = a1[20] - a1[19];
  if ([a1 count] != v3 >> 4)
  {
    v4 = a1;
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v2, [v4 count]);
    v5 = v4[1];
    v6 = v4[2];
    v7 = *v2;
    v8 = v4;
    while (v5 != v6)
    {
      [v8 cameraPose];
      v9 = *v5++;
      *v7++ = vaddq_f32(v13, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, v9.f32[0]), v11, *v9.f32, 1), v12, v9, 2));
    }
  }

  return *v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = v4;
  if (v4)
  {
    *(v4 + 176) = self->_count;
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__insert_with_sizeB8ne200100INS_11__wrap_iterIPS1_EES8_EES8_NS6_IPKS1_EET_T0_l(v4 + 8, *(v4 + 16), *self->_anon_8, *&self->_anon_8[8], (*&self->_anon_8[8] - *self->_anon_8) >> 4);
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__insert_with_sizeB8ne200100INS_11__wrap_iterIPS1_EES8_EES8_NS6_IPKS1_EET_T0_l(v5 + 32, *(v5 + 40), *self->_anon_20, *&self->_anon_20[8], (*&self->_anon_20[8] - *self->_anon_20) >> 4);
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__insert_with_sizeB8ne200100INS_11__wrap_iterIPS1_EES8_EES8_NS6_IPKS1_EET_T0_l(v5 + 56, *(v5 + 64), *self->_anon_38, *&self->_anon_38[8], (*&self->_anon_38[8] - *self->_anon_38) >> 4);
    *(v5 + 184) = self->_semanticsBinSize;
    std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(v5 + 80, *(v5 + 88), self->_semantics.__begin_, self->_semantics.__end_, self->_semantics.__end_ - self->_semantics.__begin_);
    _ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEE18__insert_with_sizeB8ne200100INS_11__wrap_iterIPS1_EES8_EES8_NS6_IPKS1_EET_T0_l(v5 + 104, *(v5 + 112), *self->_anon_68, *&self->_anon_68[8], (*&self->_anon_68[8] - *self->_anon_68) >> 2);
    _ZNSt3__16vectorIDv4_tNS_9allocatorIS1_EEE18__insert_with_sizeB8ne200100INS_11__wrap_iterIPS1_EES8_EES8_NS6_IPKS1_EET_T0_l(v5 + 128, *(v5 + 136), *self->_anon_80, *&self->_anon_80[8], (*&self->_anon_80[8] - *self->_anon_80) >> 3);
    v6 = *&self[1].super.isa;
    v7 = *&self[1]._anon_8[8];
    v8 = *&self[1]._anon_20[16];
    *(v5 + 240) = *self[1]._anon_20;
    *(v5 + 256) = v8;
    *(v5 + 208) = v6;
    *(v5 + 224) = v7;
    objc_storeStrong((v5 + 192), self->_identifier);
    *(v5 + 200) = self->_timestamp;
  }

  return v5;
}

+ (id)dictionaryFromArray:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v44 = a3;
  v47 = [MEMORY[0x1E695DF70] array];
  v52 = [MEMORY[0x1E695DF70] array];
  v51 = [MEMORY[0x1E695DF70] array];
  v53 = [MEMORY[0x1E695DF70] array];
  v50 = [MEMORY[0x1E695DF70] array];
  v49 = [MEMORY[0x1E695DF70] array];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v44;
  v3 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
  if (v3)
  {
    v46 = *v58;
    do
    {
      v48 = 0;
      v54 = v3;
      do
      {
        if (*v58 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v57 + 1) + 8 * v48);
        v5 = +[ARQAHelper arrayOf3dPoints:count:](ARQAHelper, "arrayOf3dPoints:count:", [v4 pointsToWorld], objc_msgSend(v4, "count"));
        [v47 addObjectsFromArray:v5];

        v55 = 0;
        v56 = 0;
        v6 = 0;
        v7 = 0;
        while (v56 < [v4 count])
        {
          v8 = [v4 semanticLabels];
          v9 = [v4 semanticVotes];
          v10 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{*(objc_msgSend(v4, "semantics") + v56)}];
          [v53 addObject:v10];

          v11 = MEMORY[0x1E696AD98];
          LODWORD(v12) = *([v4 normals] + v55);
          v13 = [v11 numberWithFloat:v12];
          v66[0] = v13;
          v14 = MEMORY[0x1E696AD98];
          LODWORD(v15) = *([v4 normals] + 4 * v7 + 4);
          v16 = [v14 numberWithFloat:v15];
          v66[1] = v16;
          v17 = MEMORY[0x1E696AD98];
          LODWORD(v18) = *([v4 normals] + 4 * v7 + 8);
          v19 = [v17 numberWithFloat:v18];
          v66[2] = v19;
          v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:3];
          [v52 addObject:v20];

          v21 = MEMORY[0x1E696AD98];
          LODWORD(v22) = *([v4 colors] + v55);
          v23 = [v21 numberWithFloat:v22];
          v65[0] = v23;
          v24 = MEMORY[0x1E696AD98];
          LODWORD(v25) = *([v4 colors] + 4 * v7 + 4);
          v26 = [v24 numberWithFloat:v25];
          v65[1] = v26;
          v27 = MEMORY[0x1E696AD98];
          LODWORD(v28) = *([v4 colors] + 4 * v7 + 8);
          v29 = [v27 numberWithFloat:v28];
          v65[2] = v29;
          v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:3];
          [v51 addObject:v30];

          v31 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*(v8 + v7)];
          v64[0] = v31;
          v32 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*(v8 + v7 + 1)];
          v64[1] = v32;
          v33 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*(v8 + v7 + 2)];
          v64[2] = v33;
          v34 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*(v8 + v7 + 3)];
          v64[3] = v34;
          v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
          [v50 addObject:v35];

          v36 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*(v9 + v6)];
          v63[0] = v36;
          v37 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*(v9 + v6 + 1)];
          v63[1] = v37;
          v38 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*(v9 + v6 + 2)];
          v63[2] = v38;
          v39 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*(v9 + v6 + 3)];
          v63[3] = v39;
          v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:4];
          [v49 addObject:v40];

          v7 += 4;
          v6 += 8;
          v55 += 16;
          ++v56;
        }

        ++v48;
      }

      while (v48 != v54);
      v3 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
    }

    while (v3);
  }

  v62[0] = @"V8A";
  v61[0] = @"semanticVersion";
  v61[1] = @"count";
  v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v47, "count")}];
  v62[1] = v41;
  v62[2] = v47;
  v61[2] = @"points";
  v61[3] = @"normals";
  v62[3] = v52;
  v62[4] = v51;
  v61[4] = @"colors";
  v61[5] = @"semantics";
  v62[5] = v53;
  v62[6] = v50;
  v61[6] = @"semanticLabels";
  v61[7] = @"semanticVotes";
  v62[7] = v49;
  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:8];

  return v42;
}

- (void)setCameraPose:(__n128)a3
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
  objc_copyStruct((a1 + 208), v5, 64, 1, 0);
}

- (id).cxx_construct
{
  *(self + 21) = 0;
  *(self + 152) = 0u;
  *(self + 136) = 0u;
  *(self + 120) = 0u;
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end