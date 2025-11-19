@interface ARPlaneGeometry
- (ARPlaneGeometry)initWithBoundaryVertices:(ARPlaneGeometry *)self center:(SEL)a2 extent:(const void *)a3;
- (ARPlaneGeometry)initWithCoder:(id)a3;
- (__n128)initWithVertices:(float32x4_t)a3 triangleIndices:(uint64_t)a4 boundaryVertexCount:(__n128 *)a5 center:(__n128 *)a6 extent:(unint64_t)a7;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARPlaneGeometry

- (__n128)initWithVertices:(float32x4_t)a3 triangleIndices:(uint64_t)a4 boundaryVertexCount:(__n128 *)a5 center:(__n128 *)a6 extent:(unint64_t)a7
{
  v23.receiver = a1;
  v23.super_class = ARPlaneGeometry;
  v10 = [(ARPlaneGeometry *)&v23 init];
  v11 = v10;
  if (v10)
  {
    std::vector<ARPatch>::__move_assign(v10->_anon_8, a5);
    std::vector<ARPatch>::__move_assign(&v11[3].n128_i64[1], a6);
    v11[5].n128_u64[0] = a7;
    v11[6] = a2;
    v11[7] = a3;
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(&v21, (v11[1].n128_u64[0] - v11->n128_u64[1]) >> 4);
    v12 = v11->n128_u64[1];
    if (v11[1].n128_u64[0] != v12)
    {
      v13 = 0;
      v14.i64[0] = 0xBF000000BF000000;
      v14.i64[1] = 0xBF000000BF000000;
      v15 = vaddq_f32(a2, vmulq_f32(a3, v14));
      do
      {
        v16 = vdivq_f32(vsubq_f32(*(v12 + 16 * v13), v15), a3);
        *(v21.n128_u64[0] + 8 * v13++) = vzip1_s32(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
        v12 = v11->n128_u64[1];
      }

      while (v13 < (v11[1].n128_u64[0] - v12) >> 4);
    }

    v17 = v11[2].n128_u64[0];
    if (v17)
    {
      v11[2].n128_u64[1] = v17;
      operator delete(v17);
      v11[2].n128_u64[0] = 0;
      v11[2].n128_u64[1] = 0;
      v11[3].n128_u64[0] = 0;
    }

    v11[2] = v21;
    v11[3].n128_u64[0] = v22;
  }

  return v11;
}

- (ARPlaneGeometry)initWithBoundaryVertices:(ARPlaneGeometry *)self center:(SEL)a2 extent:(const void *)a3
{
  v58 = v3;
  v59 = v4;
  v89 = *MEMORY[0x1E69E9840];
  v77 = 0uLL;
  v78 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&v77, *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 4);
  v7 = *(a3 + 1) - *a3;
  v8 = v7 >> 4;
  v75[0] = 0;
  v75[1] = 0;
  v76 = 0;
  if ((v7 >> 4) < 3)
  {
    v9 = 0;
    goto LABEL_67;
  }

  if ((v7 >> 4) != 3)
  {
    __p = 0;
    v73 = 0;
    v74 = 0;
    std::vector<__ARC3DShapeVertex>::reserve(&__p, (v7 >> 4));
    v11 = (v8 - 1);
    if (v8 - 1 < 0)
    {
      v33 = __p;
    }

    else
    {
      v57 = self;
      v12 = 0;
      v13 = 16 * (v8 - 1);
      v14 = v13 ^ 0xFFFFFFFFFFFFFFF0;
      LODWORD(v15) = v8;
      do
      {
        v16 = v15;
        v15 = v11;
        v17 = *(v77 + v13);
        if (v11 >= (v8 - 1))
        {
          v16 = 0;
        }

        v18 = vsubq_f32(v17, *(v77 + 16 * v16));
        v19 = vmulq_f32(v18, v18);
        if (sqrtf(v19.f32[2] + vaddv_f32(*v19.f32)) <= 0.00011921)
        {
          v24 = (v77 + v13);
          v25 = (v77 + v13 + 16);
          v26 = v14 + *(&v77 + 1) - v77;
          if (v25 != *(&v77 + 1))
          {
            memmove(v24, v25, v14 + *(&v77 + 1) - v77);
          }

          *(&v77 + 1) = &v24[v26];
          v12 = 1;
          LODWORD(v8) = v8 - 1;
        }

        else
        {
          v20 = vcvtq_f64_f32(vzip1_s32(*v17.f32, *&vextq_s8(v17, v17, 8uLL)));
          *buf = *MEMORY[0x1E695EFF8];
          v65 = *buf;
          v71 = *buf;
          v21 = v73;
          if (v73 >= v74)
          {
            v27 = 0xCCCCCCCCCCCCCCCDLL * ((v73 - __p) >> 4);
            v28 = v27 + 1;
            if (v27 + 1 > 0x333333333333333)
            {
              _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
            }

            if (0x999999999999999ALL * ((v74 - __p) >> 4) > v28)
            {
              v28 = 0x999999999999999ALL * ((v74 - __p) >> 4);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((v74 - __p) >> 4) >= 0x199999999999999)
            {
              v29 = 0x333333333333333;
            }

            else
            {
              v29 = v28;
            }

            if (v29)
            {
              std::allocator<__ARC3DShapeVertex>::allocate_at_least[abi:ne200100](&__p, v29);
            }

            v30 = 16 * ((v73 - __p) >> 4);
            *v30 = v20;
            *(v30 + 16) = *buf;
            *(v30 + 32) = v65;
            *(v30 + 48) = v71;
            *(v30 + 64) = 0;
            *(v30 + 72) = 0;
            *(v30 + 76) = v15;
            v23 = 80 * v27 + 80;
            v31 = (80 * v27 - (v73 - __p));
            memcpy((v30 - (v73 - __p)), __p, v73 - __p);
            v32 = __p;
            __p = v31;
            v73 = v23;
            v74 = 0;
            if (v32)
            {
              operator delete(v32);
            }
          }

          else
          {
            *v73 = v20;
            v22 = v65;
            *(v21 + 1) = *buf;
            *(v21 + 2) = v22;
            *(v21 + 3) = v71;
            *(v21 + 8) = 0;
            v21[72] = 0;
            *(v21 + 19) = v15;
            v23 = (v21 + 80);
          }

          v73 = v23;
        }

        v11 = v15 - 1;
        v13 -= 16;
        v14 += 16;
      }

      while (v15 > 0);
      if (v8 <= 2)
      {
        self = v57;
        if (__p)
        {
          v73 = __p;
          operator delete(__p);
        }

        v9 = 0;
        goto LABEL_65;
      }

      self = v57;
      if (v8 == 3)
      {
        *buf = 65538;
        *&buf[4] = 0;
        std::vector<short>::__assign_with_size[abi:ne200100]<short const*,short const*>(v75, buf, &buf[6], 3uLL);
        v10 = 3;
LABEL_58:
        if (__p)
        {
          v73 = __p;
          operator delete(__p);
        }

        goto LABEL_60;
      }

      v33 = __p;
      if (v12)
      {
        v44 = 0;
        v45 = vdupq_n_s64(v8 - 1);
        v46 = xmmword_1C25C8A10;
        v47 = xmmword_1C25C8A20;
        v48 = __p + 236;
        v49 = -1;
        v50 = vdupq_n_s64(4uLL);
        do
        {
          v51 = vmovn_s64(vcgeq_u64(v45, v47));
          if (vuzp1_s16(v51, *v45.i8).u8[0])
          {
            *(v48 - 40) = v8 + v49;
          }

          if (vuzp1_s16(v51, *&v45).i8[2])
          {
            *(v48 - 20) = v8 + (v44 ^ 0xFFFFFFFE);
          }

          if (vuzp1_s16(*&v45, vmovn_s64(vcgeq_u64(v45, *&v46))).i32[1])
          {
            *v48 = v8 + (v44 ^ 0xFFFFFFFD);
            v48[20] = v8 + (v44 ^ 0xFFFFFFFC);
          }

          v44 += 4;
          v46 = vaddq_s64(v46, v50);
          v47 = vaddq_s64(v47, v50);
          v48 += 80;
          v49 -= 4;
        }

        while (((v8 + 3) & 0x1FFFFFFFCLL) != v44);
      }
    }

    *&v65 = v33;
    DWORD2(v65) = v8;
    HIDWORD(v65) = v8;
    v34 = (0.5 * v59.f32[0]) + 0.00011921;
    v66 = (*&v58 - v34);
    v67 = (*&v58 + v34);
    v35 = vmuls_lane_f32(0.5, v59, 2) + 0.00011921;
    v68 = (*(&v58 + 2) - v35);
    v69 = (*(&v58 + 2) + v35);
    v70 = 2;
    LODWORD(v71) = 0;
    v64 = 0;
    *buf = &v65;
    *&buf[20] = 0;
    *&buf[12] = 0;
    *&buf[8] = 1;
    *v80 = 0;
    v36 = ARC3DShapeConnectedComponentTriangulate(buf, &v71, &v64);
    v37 = v71;
    if (!v71)
    {
      v38 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:*a3 length:*(a3 + 1) - *a3 freeWhenDone:0];
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARPlaneGeometry initWithBoundaryVertices:center:extent:];
      }

      v39 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v40 = _ARLogTechnique();
      v41 = v40;
      if (v39 == 1)
      {
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v42 = objc_opt_class();
          v43 = NSStringFromClass(v42);
          *buf = 138545154;
          *&buf[4] = v43;
          *&buf[12] = 2048;
          *&buf[14] = self;
          *&buf[22] = 1024;
          *&buf[24] = v64;
          *v80 = 2048;
          *&v80[2] = *&v58;
          v81 = 2048;
          v82 = *(&v58 + 2);
          v83 = 2048;
          v84 = v59.f32[0];
          v85 = 2048;
          v86 = v59.f32[2];
          v87 = 2112;
          v88 = v38;
          _os_log_impl(&dword_1C241C000, v41, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error [%d]: Plane triangulation failed (%f %f %f %f) %@", buf, 0x4Eu);
        }
      }

      else if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        *buf = 138545154;
        *&buf[4] = v53;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 1024;
        *&buf[24] = v64;
        *v80 = 2048;
        *&v80[2] = *&v58;
        v81 = 2048;
        v82 = *(&v58 + 2);
        v83 = 2048;
        v84 = v59.f32[0];
        v85 = 2048;
        v86 = v59.f32[2];
        v87 = 2112;
        v88 = v38;
        _os_log_impl(&dword_1C241C000, v41, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error [%d]: Plane triangulation failed (%f %f %f %f) %@", buf, 0x4Eu);
      }

      v37 = v71;
    }

    std::vector<short>::reserve(v75, (3 * v37));
    if (v71)
    {
      v54 = 0;
      v55 = v36 + 1;
      do
      {
        *buf = *(*(v55 - 1) + 76);
        std::vector<short>::push_back[abi:ne200100](v75, buf);
        *buf = *(v55[1] + 76);
        std::vector<short>::push_back[abi:ne200100](v75, buf);
        *buf = *(*v55 + 76);
        std::vector<short>::push_back[abi:ne200100](v75, buf);
        ++v54;
        v55 += 7;
      }

      while (v54 < v71);
    }

    free(v36);
    v10 = v8;
    goto LABEL_58;
  }

  *buf = 0x10000;
  *&buf[4] = 2;
  std::vector<short>::__assign_with_size[abi:ne200100]<short const*,short const*>(v75, buf, &buf[6], 3uLL);
  v10 = 3;
LABEL_60:
  *v62 = v77;
  v63 = v78;
  v78 = 0;
  v77 = 0uLL;
  *v60 = *v75;
  v61 = v76;
  v75[0] = 0;
  v75[1] = 0;
  v76 = 0;
  self = [(ARPlaneGeometry *)self initWithVertices:v62 triangleIndices:v60 boundaryVertexCount:v10 center:*&v58 extent:*v59.i64];
  if (v60[0])
  {
    v60[1] = v60[0];
    operator delete(v60[0]);
  }

  if (v62[0])
  {
    v62[1] = v62[0];
    operator delete(v62[0]);
  }

  v9 = self;
LABEL_65:
  if (v75[0])
  {
    v75[1] = v75[0];
    operator delete(v75[0]);
  }

LABEL_67:
  if (v77)
  {
    *(&v77 + 1) = v77;
    operator delete(v77);
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:*self->_anon_8 length:*&self->_anon_8[8] - *self->_anon_8 freeWhenDone:0];
  [v6 encodeObject:v4 forKey:@"vertexData"];

  v5 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:self->_triangleIndices.__begin_ length:self->_triangleIndices.__end_ - self->_triangleIndices.__begin_ freeWhenDone:0];
  [v6 encodeObject:v5 forKey:@"triangleData"];

  [v6 encodeInteger:self->_boundaryVertexCount forKey:@"boundaryVertexCount"];
  [v6 ar_encodeVector3:@"center" forKey:*self->_center];
  [v6 ar_encodeVector3:@"extent" forKey:*self->_extent];
}

- (ARPlaneGeometry)initWithCoder:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vertexData"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"triangleData"];
  v7 = [v4 decodeIntegerForKey:@"boundaryVertexCount"];
  [v4 ar_decodeVector3ForKey:@"center"];
  v22 = v8;
  [v4 ar_decodeVector3ForKey:@"extent"];
  if (v5 && v6 && v7)
  {
    v21 = v9;
    v10 = [v5 bytes];
    v11 = [v6 bytes];
    v12 = [v5 length];
    memset(buf, 0, sizeof(buf));
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(buf, v10, v10 + (v12 & 0xFFFFFFFFFFFFFFF0), v12 >> 4);
    v13 = [v6 length];
    v27[0] = 0;
    v27[1] = 0;
    v28 = 0;
    std::vector<short>::__init_with_size[abi:ne200100]<short const*,short const*>(v27, v11, v11 + (v13 & 0xFFFFFFFFFFFFFFFELL), v13 >> 1);
    *v25 = *buf;
    v26 = *&buf[16];
    memset(buf, 0, sizeof(buf));
    *__p = *v27;
    v24 = v28;
    v27[0] = 0;
    v27[1] = 0;
    v28 = 0;
    self = [(ARPlaneGeometry *)self initWithVertices:v25 triangleIndices:__p boundaryVertexCount:v7 center:v22 extent:v21];
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v25[0])
    {
      v25[1] = v25[0];
      operator delete(v25[0]);
    }

    if (v27[0])
    {
      v27[1] = v27[0];
      operator delete(v27[0]);
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    v14 = self;
  }

  else
  {
    if (_ARLogGeneral(void)::onceToken != -1)
    {
      [ARPlaneGeometry initWithCoder:];
    }

    v15 = _ARLogGeneral(void)::logObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544130;
      *&buf[4] = v17;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2114;
      v30 = v19;
      v31 = 2048;
      v32 = v4;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %{public}@(%p): Error decoding plane geometry", buf, 0x2Au);
    }

    v14 = 0;
  }

  return v14;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end