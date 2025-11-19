uint64_t transferNormalMap(__AMTMesh *a1, CGImage *a2, int a3, __CFError **a4)
{
  v98 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v23 = 0;
    *a4 = AMTErrorCreateWithMessages(-13, "Input normal map is null", 0);
    goto LABEL_27;
  }

  v91 = 0;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v78 = 0u;
  if (AMTMeshCopyToTriangleMesh(a1, &v78, 1, 0) && (amt::TriangleMesh::unify(&v78) & 1) != 0)
  {
    if (v87 != *(&v87 + 1))
    {
      v75 = 0;
      v76 = 0;
      v77 = 0;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&v75, v87, *(&v87 + 1), (*(&v87 + 1) - v87) >> 4);
      memset(&v74, 0, sizeof(v74));
      std::vector<unsigned int>::reserve(&v74, ((v86 - *(&v85 + 1)) >> 2));
      v63 = a3;
      v64 = a4;
      v7 = *(&v85 + 1);
      v8 = v86;
      if (*(&v85 + 1) == v86)
      {
        end = v74.__end_;
      }

      else
      {
        end = v74.__end_;
        do
        {
          for (i = 0; i != 12; i += 4)
          {
            v11 = *(v7 + i);
            if (end >= v74.__end_cap_.__value_)
            {
              begin = v74.__begin_;
              v13 = end - v74.__begin_;
              v14 = end - v74.__begin_;
              v15 = v14 + 1;
              if ((v14 + 1) >> 62)
              {
                std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
              }

              v16 = v74.__end_cap_.__value_ - v74.__begin_;
              if ((v74.__end_cap_.__value_ - v74.__begin_) >> 1 > v15)
              {
                v15 = v16 >> 1;
              }

              if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v17 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v17 = v15;
              }

              if (v17)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v74, v17);
              }

              v18 = v14;
              v19 = (4 * v14);
              v20 = &v19[-v18];
              *v19 = v11;
              end = v19 + 1;
              memcpy(v20, begin, v13);
              v21 = v74.__begin_;
              v74.__begin_ = v20;
              v74.__end_ = end;
              v74.__end_cap_.__value_ = 0;
              if (v21)
              {
                operator delete(v21);
              }
            }

            else
            {
              *end++ = v11;
            }

            v74.__end_ = end;
          }

          v7 += 12;
        }

        while (v7 != v8);
      }

      v71 = 0;
      v72 = 0;
      v73 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v26 = end - v74.__begin_;
      if (v26 == 3 * (v26 / 3))
      {
        v28 = *(&v79 + 1);
        v27 = v80;
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v71, 0);
        v94 = 0u;
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEmRKS1_(&v71, (v27 - v28) >> 4, &v94);
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v68, 0);
        v94 = 0u;
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEmRKS1_(&v68, (v27 - v28) >> 4, &v94);
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v65, 0);
        v94 = 0u;
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEmRKS1_(&v65, (v27 - v28) >> 4, &v94);
        memset(__p, 0, sizeof(__p));
        std::vector<BOOL>::resize(__p, (v27 - v28) >> 4, 0);
        if (v26 >= 3)
        {
          v30 = 0;
          v31 = 0;
          do
          {
            v32 = 0;
            v33 = *(&v79 + 1);
            v34 = v84;
            v35 = v75;
            v36 = __p[0];
            v37 = &v74.__begin_[v30];
            do
            {
              v38 = v37[v32];
              v97[v32] = v38;
              *(&v94 + v32) = *(v33 + 16 * v38);
              v93[v32] = *(v34 + 8 * v38);
              *v93[2 * v32 + 3].f32 = v35[v38];
              *&v36[(v38 >> 3) & 0x1FFFFFF8] |= 1 << v38;
              ++v32;
            }

            while (v32 != 3);
            v39 = vsubq_f32(v95, v94);
            v40 = vsubq_f32(*v96, v94);
            v41 = vsub_f32(v93[1], v93[0]);
            v42 = vsub_f32(v93[2], v93[0]);
            *v29.i32 = (-*&v41.i32[1] * v42.f32[0]) + (*v41.i32 * v42.f32[1]);
            v43 = 0uLL;
            v44 = 0uLL;
            if ((*v29.i32 * *v29.i32) > 0.0)
            {
              v45 = vdupq_lane_s32(v29, 0);
              v43 = vdivq_f32(vmlaq_lane_f32(vmulq_f32(v40, vnegq_f32(vdupq_lane_s32(v41, 1))), v39, v42, 1), v45);
              v44 = vdivq_f32(vmlaq_n_f32(vmulq_f32(v39, vnegq_f32(vdupq_lane_s32(v42, 0))), v40, *v41.i32), v45);
            }

            v46 = 0;
            v47 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL), vnegq_f32(v39)), v40, vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL));
            v48 = vmulq_f32(v47, v47);
            v48.f32[0] = sqrtf(v48.f32[1] + (v48.f32[2] + v48.f32[0])) * 0.5;
            v49 = vdupq_lane_s32(*v48.f32, 0);
            do
            {
              v50 = v97[v46];
              *(v71 + v50) = vmlaq_f32(*(v71 + v50), v43, v49);
              *(v68 + v50) = vmlaq_f32(*(v68 + v50), v44, v49);
              *(v65 + v50) = vmlaq_f32(*(v65 + v50), *v93[2 * v46++ + 3].f32, v49);
            }

            while (v46 != 3);
            ++v31;
            v30 += 3;
          }

          while (v31 != v26 / 3);
        }

        if (v27 != v28)
        {
          v51 = 0;
          if (((v27 - v28) >> 4) <= 1)
          {
            v52 = 1;
          }

          else
          {
            v52 = (v27 - v28) >> 4;
          }

          do
          {
            if ((*(__p[0] + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v51))
            {
              v53 = *(v71 + v51);
              v54 = vmulq_f32(v53, v53);
              *&v55 = v54.f32[2] + vaddv_f32(*v54.f32);
              *v54.f32 = vrsqrte_f32(v55);
              *v54.f32 = vmul_f32(*v54.f32, vrsqrts_f32(v55, vmul_f32(*v54.f32, *v54.f32)));
              *(v71 + v51) = vmulq_n_f32(v53, vmul_f32(*v54.f32, vrsqrts_f32(v55, vmul_f32(*v54.f32, *v54.f32))).f32[0]);
              v56 = *(v68 + v51);
              v57 = vmulq_f32(v56, v56);
              *&v58 = v57.f32[2] + vaddv_f32(*v57.f32);
              *v57.f32 = vrsqrte_f32(v58);
              *v57.f32 = vmul_f32(*v57.f32, vrsqrts_f32(v58, vmul_f32(*v57.f32, *v57.f32)));
              *(v68 + v51) = vmulq_n_f32(v56, vmul_f32(*v57.f32, vrsqrts_f32(v58, vmul_f32(*v57.f32, *v57.f32))).f32[0]);
              v59 = *(v65 + v51);
              v60 = vmulq_f32(v59, v59);
              *&v61 = v60.f32[2] + vaddv_f32(*v60.f32);
              *v60.f32 = vrsqrte_f32(v61);
              *v60.f32 = vmul_f32(*v60.f32, vrsqrts_f32(v61, vmul_f32(*v60.f32, *v60.f32)));
              *(v65 + v51) = vmulq_n_f32(v59, vmul_f32(*v60.f32, vrsqrts_f32(v61, vmul_f32(*v60.f32, *v60.f32))).f32[0]);
            }

            ++v51;
          }

          while (v52 != v51);
        }

        if (__p[0])
        {
          operator delete(__p[0]);
        }

        TBNProcessor::TBNProcessor(&v94);
        v23 = TBNProcessor::transferNormalMap(v62, a2, &v74, &v84, &v68, &v71, &v65, v63, v64);
      }

      else
      {
        v23 = 0;
        if (v64)
        {
          *v64 = AMTErrorCreateWithMessages(-13, "Failed to compute tangents & bitangents", 0);
        }
      }

      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v68)
      {
        v69 = v68;
        operator delete(v68);
      }

      if (v71)
      {
        v72 = v71;
        operator delete(v71);
      }

      if (v74.__begin_)
      {
        v74.__end_ = v74.__begin_;
        operator delete(v74.__begin_);
      }

      if (v75)
      {
        v76 = v75;
        operator delete(v75);
      }

      goto LABEL_25;
    }

    v22 = AMTErrorCreateWithMessages(-13, "Normal map transfer failed due to no input normals", 0);
  }

  else
  {
    v22 = AMTErrorCreateWithMessages(-13, "Input mesh can't be unified for normal map transfer", 0);
  }

  v23 = 0;
  *a4 = v22;
LABEL_25:
  amt::TriangleMesh::~TriangleMesh(&v78);
LABEL_27:
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

void sub_23E7555E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57)
{
  TBNProcessor::~TBNProcessor((v57 - 176));
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  amt::TriangleMesh::~TriangleMesh(&a29);
  _Unwind_Resume(a1);
}

uint64_t AMTMeshCopyToTriangleMesh(__AMTMesh *a1, amt::TriangleMesh *a2, int a3, __CFError **a4)
{
  if (!a1 || (v8 = CFGetTypeID(a1), v8 != AMTMeshGetTypeID()))
  {
    AMTMeshCopyToTriangleMesh();
  }

  v27 = 768;
  v29 = 0;
  v30 = 0;
  __p = 0;
  std::vector<AMTMeshSourceSemantic>::__init_with_size[abi:ne200100]<AMTMeshSourceSemantic const*,AMTMeshSourceSemantic const*>(&__p, &v27, &__p, 2);
  if (a3)
  {
    LOBYTE(v27) = 1;
    std::vector<AMTMeshSourceSemantic>::push_back[abi:ne200100](&__p, &v27);
  }

  v9 = __p;
  v10 = v29;
  if (__p != v29)
  {
    do
    {
      v11 = *v9;
      Source = __AMTMesh::findSource(a1, v11, 0);
      v13 = Source;
      if (Source)
      {
        if (AMTMeshSourceGetVectorCount(Source) < 0 || ((ComponentsPerVector = AMTMeshSourceGetComponentsPerVector(v13), v11 == 3) ? (v15 = 2) : (v15 = 3), ComponentsPerVector != v15 || AMTMeshSourceGetDataType(v13) != 9 && AMTMeshSourceGetDataType(v13) != 10))
        {
LABEL_39:
          if (a4)
          {
LABEL_42:
            v25 = 0;
            *a4 = AMTErrorCreateWithErrorCode(-1);
            goto LABEL_44;
          }

LABEL_43:
          v25 = 0;
          goto LABEL_44;
        }

        v16 = *v9;
        if (v16 == 3)
        {
          AMTMeshSourceCopyToVector(v13, a2 + 12);
        }

        else
        {
          v17 = a2 + 144;
          if (v16 == 1 || (v17 = a2 + 24, !*v9))
          {
            AMTMeshSourceCopyToVector(v13, v17);
          }
        }
      }

      else if (!*v9)
      {
        goto LABEL_39;
      }

      ++v9;
    }

    while (v9 != v10);
  }

  v18 = *(a1 + 3);
  if (!v18 || (v19 = CFGetTypeID(v18), v19 != CFArrayGetTypeID()))
  {
    if (a4)
    {
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  Count = CFArrayGetCount(v18);
  if (Count >= 1)
  {
    v21 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v18, v21);
      v23 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v24 = CFGetTypeID(ValueAtIndex);
        if (v24 == AMTMeshElementGetTypeID() && AMTMeshElementGetFaceCount(v23) && !AMTMeshElementGetFaceType(v23) && !AMTMeshElementAppendToTriangleMesh(v23, a2, a3, a4))
        {
          goto LABEL_43;
        }
      }
    }

    while (Count != ++v21);
  }

  if (((*(a2 + 13) - *(a2 + 12)) >> 3) >= 1 && !(-1431655765 * ((*(a2 + 16) - *(a2 + 15)) >> 2)))
  {
    std::vector<amt::Vec<int,3>>::__assign_with_size[abi:ne200100]<amt::Vec<int,3>*,amt::Vec<int,3>*>(a2 + 15, *(a2 + 9), *(a2 + 10), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 10) - *(a2 + 9)) >> 2));
  }

  if (((*(a2 + 19) - *(a2 + 18)) >> 4) >= 1 && !(-1431655765 * ((*(a2 + 22) - *(a2 + 21)) >> 2)))
  {
    std::vector<amt::Vec<int,3>>::__assign_with_size[abi:ne200100]<amt::Vec<int,3>*,amt::Vec<int,3>*>(a2 + 21, *(a2 + 9), *(a2 + 10), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 10) - *(a2 + 9)) >> 2));
  }

  v25 = 1;
LABEL_44:
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  return v25;
}

void sub_23E75599C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amt::TriangleMesh::unify(amt::TriangleMesh *this)
{
  v3 = *(this + 3);
  v2 = *(this + 4);
  v5 = *(this + 18);
  v4 = *(this + 19);
  v7 = *(this + 12);
  v6 = *(this + 13);
  amt::TriangleMesh::computeTexCoordToAttributeMapping(this, this + 9, &v30);
  begin = v30.__begin_;
  if (v30.__begin_ == v30.__end_)
  {
    v12 = 0;
    if (!v30.__begin_)
    {
      return v12;
    }

    goto LABEL_28;
  }

  v9 = (v4 - v5) >> 4;
  if (v9 < 1)
  {
    v10 = 0;
    end = 0;
  }

  else
  {
    amt::TriangleMesh::computeTexCoordToAttributeMapping(this, this + 21, &v29);
    v10 = v29.__begin_;
    end = v29.__end_;
    if (v29.__begin_ == v29.__end_)
    {
      v12 = 0;
      goto LABEL_25;
    }
  }

  v13 = v6 - v7;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(&v29, (v13 >> 3));
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(__p, end - v10);
  if ((v13 >> 3) < 1)
  {
    if (v10 != end)
    {
LABEL_19:
      v22 = *(this + 9);
      *(this + 9) = *__p;
      *__p = v22;
      v23 = *(this + 20);
      *(this + 20) = v28;
      v28 = v23;
      std::vector<amt::Vec<int,3>>::__assign_with_size[abi:ne200100]<amt::Vec<int,3>*,amt::Vec<int,3>*>(this + 21, *(this + 15), *(this + 16), 0xAAAAAAAAAAAAAAABLL * ((*(this + 16) - *(this + 15)) >> 2));
    }

LABEL_20:
    v24 = *(this + 24);
    *(this + 24) = *&v29.__begin_;
    *&v29.__begin_ = v24;
    v25 = *(this + 5);
    *(this + 5) = v29.__end_cap_.__value_;
    v29.__end_cap_.__value_ = v25;
    std::vector<amt::Vec<int,3>>::__assign_with_size[abi:ne200100]<amt::Vec<int,3>*,amt::Vec<int,3>*>(this + 9, *(this + 15), *(this + 16), 0xAAAAAAAAAAAAAAABLL * ((*(this + 16) - *(this + 15)) >> 2));
    v12 = 1;
  }

  else
  {
    v14 = 0;
    v15 = (v2 - v3) >> 4;
    v16 = (v13 >> 3) & 0x7FFFFFFF;
    while (1)
    {
      v17 = v30.__begin_[v14];
      if (v17 >= v15)
      {
        break;
      }

      v18 = amt::TriangleMesh::position(this, v17);
      *&v29.__begin_[4 * v14++] = *v18;
      if (v16 == v14)
      {
        if (v10 == end)
        {
          goto LABEL_20;
        }

        v19 = 0;
        while (1)
        {
          v20 = v10[v19];
          if (v20 >= v9)
          {
            goto LABEL_17;
          }

          v21 = amt::TriangleMesh::normal(this, v20);
          *(__p[0] + v19++) = *v21;
          if (v16 == v19)
          {
            goto LABEL_19;
          }
        }
      }
    }

LABEL_17:
    v12 = 0;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v29.__begin_)
  {
    v29.__end_ = v29.__begin_;
    operator delete(v29.__begin_);
  }

LABEL_25:
  if (v10)
  {
    operator delete(v10);
  }

  begin = v30.__begin_;
  if (v30.__begin_)
  {
LABEL_28:
    v30.__end_ = begin;
    operator delete(begin);
  }

  return v12;
}

void sub_23E755BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, __n);
    }

    std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t TBNProcessor::transferNormalMap(uint64_t a1, CGImage *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, CFErrorRef *a9)
{
  v139[1] = *MEMORY[0x277D85DE8];
  v13 = [*(a1 + 8) functionNames];
  v14 = [v13 count];

  if (v14)
  {
    Width = CGImageGetWidth(a2);
    Height = CGImageGetHeight(a2);
    v17 = *a1;
    v18 = [objc_alloc(MEMORY[0x277CD71F0]) initWithDevice:v17];
    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v19 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CD71B0]];
    [v19 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CD71A0]];
    [v19 setObject:&unk_28510FFF8 forKeyedSubscript:*MEMORY[0x277CD71C0]];
    [v19 setObject:&unk_285110010 forKeyedSubscript:*MEMORY[0x277CD71B8]];
    v125 = 0;
    v20 = [v18 newTextureWithCGImage:a2 options:v19 error:&v125];
    v21 = v125;
    if (v20)
    {
      [v20 setLabel:@"SourceNormalMap"];
    }

    v120 = v20;

    v22 = [v20 pixelFormat];
    if (!v22)
    {
      v31 = 0;
      if (a9)
      {
        *a9 = AMTErrorCreateWithMessages(-13, "Unsupported normal map image format", 0);
      }

      goto LABEL_47;
    }

    v23 = *a1;
    v24 = [v120 pixelFormat];
    v25 = v23;
    v26 = objc_alloc_init(MEMORY[0x277CD7058]);
    [v26 setWidth:Width];
    [v26 setHeight:Height];
    [v26 setPixelFormat:v24];
    [v26 setUsage:5];
    v115 = [v25 newTextureWithDescriptor:v26];
    [v115 setLabel:@"DestinationNormalMap"];
    if (!a9 || v115)
    {
LABEL_34:

      v35 = *(a4 + 8) - *a4;
      v36 = v35 >> 3;
      if (v35 >> 3 == (*(a6 + 8) - *a6) >> 4 && v36 == (*(a5 + 8) - *a5) >> 4 && v36 == (*(a7 + 8) - *a7) >> 4)
      {
        v38 = *a3;
        v37 = *(a3 + 8);
        v113 = [*a1 newBufferWithLength:*(a4 + 8) - *a4 options:0];
        v39 = v113;
        memcpy([v113 contents], *a4, v35);
        v40 = *(a6 + 8) - *a6;
        v112 = [*a1 newBufferWithLength:v40 options:0];
        v41 = v112;
        memcpy([v112 contents], *a6, v40);
        v42 = *(a5 + 8) - *a5;
        v111 = [*a1 newBufferWithLength:v42 options:0];
        v43 = v111;
        memcpy([v111 contents], *a5, v42);
        v44 = *(a7 + 8) - *a7;
        v110 = [*a1 newBufferWithLength:v44 options:0];
        v45 = v110;
        memcpy([v110 contents], *a7, v44);
        v46 = *(a3 + 8) - *a3;
        v119 = [*a1 newBufferWithLength:v46 options:0];
        v47 = v119;
        memcpy([v119 contents], *a3, v46);
        v48 = objc_alloc_init(MEMORY[0x277CD7090]);
        v49 = [v48 attributes];
        v50 = [v49 objectAtIndexedSubscript:0];
        [v50 setFormat:29];

        v51 = [v48 attributes];
        v52 = [v51 objectAtIndexedSubscript:0];
        [v52 setBufferIndex:0];

        v53 = [v48 attributes];
        v54 = [v53 objectAtIndexedSubscript:0];
        [v54 setOffset:0];

        v55 = [v48 attributes];
        v56 = [v55 objectAtIndexedSubscript:1];
        [v56 setFormat:30];

        v57 = [v48 attributes];
        v58 = [v57 objectAtIndexedSubscript:1];
        [v58 setBufferIndex:1];

        v59 = [v48 attributes];
        v60 = [v59 objectAtIndexedSubscript:1];
        [v60 setOffset:0];

        v61 = [v48 attributes];
        v62 = [v61 objectAtIndexedSubscript:2];
        [v62 setFormat:30];

        v63 = [v48 attributes];
        v64 = [v63 objectAtIndexedSubscript:2];
        [v64 setBufferIndex:2];

        v65 = [v48 attributes];
        v66 = [v65 objectAtIndexedSubscript:2];
        [v66 setOffset:0];

        v67 = [v48 attributes];
        v68 = [v67 objectAtIndexedSubscript:3];
        [v68 setFormat:30];

        v69 = [v48 attributes];
        v70 = [v69 objectAtIndexedSubscript:3];
        [v70 setBufferIndex:3];

        v71 = [v48 attributes];
        v72 = [v71 objectAtIndexedSubscript:3];
        [v72 setOffset:0];

        v73 = [v48 layouts];
        v74 = [v73 objectAtIndexedSubscript:0];
        [v74 setStride:8];

        v75 = [v48 layouts];
        v76 = [v75 objectAtIndexedSubscript:1];
        [v76 setStride:16];

        v77 = [v48 layouts];
        v78 = [v77 objectAtIndexedSubscript:2];
        [v78 setStride:16];

        v79 = [v48 layouts];
        v80 = [v79 objectAtIndexedSubscript:3];
        [v80 setStride:16];

        v81 = objc_alloc_init(MEMORY[0x277CD6F78]);
        [v81 setVertexDescriptor:v48];
        v82 = [*(a1 + 8) newFunctionWithName:*(a1 + 24)];
        [v81 setVertexFunction:v82];

        v83 = [*(a1 + 8) newFunctionWithName:*(a1 + 32)];
        [v81 setFragmentFunction:v83];

        v84 = [v81 colorAttachments];
        v85 = [v84 objectAtIndexedSubscript:0];
        [v85 setPixelFormat:v22];

        v86 = *a1;
        v124 = 0;
        v87 = [v86 newRenderPipelineStateWithDescriptor:v81 error:&v124];
        v117 = v124;
        if (v87)
        {
          v109 = v87;
          v122 = [*(a1 + 16) commandBuffer];
          [v122 setLabel:@"TBNCommandBuffer"];
          v88 = objc_alloc_init(MEMORY[0x277CD6F50]);
          v89 = [v88 colorAttachments];
          v90 = [v89 objectAtIndexedSubscript:0];
          [v90 setTexture:v115];

          v91 = [v88 colorAttachments];
          v92 = [v91 objectAtIndexedSubscript:0];
          [v92 setClearColor:{0.0, 0.0, 0.0, 0.0}];

          v93 = [v88 colorAttachments];
          v94 = [v93 objectAtIndexedSubscript:0];
          [v94 setLoadAction:2];

          v95 = [v88 colorAttachments];
          v96 = [v95 objectAtIndexedSubscript:0];
          [v96 setStoreAction:1];

          v97 = [v122 renderCommandEncoderWithDescriptor:v88];
          [v97 setLabel:@"TBNRenderTransferMapsEncoder"];
          [v97 setRenderPipelineState:v109];
          v123 = a8;
          [v97 setVertexBuffer:v113 offset:0 atIndex:0];
          [v97 setVertexBuffer:v112 offset:0 atIndex:1];
          [v97 setVertexBuffer:v111 offset:0 atIndex:2];
          [v97 setVertexBuffer:v110 offset:0 atIndex:3];
          [v97 setFragmentTexture:v120 atIndex:0];
          [v97 setFragmentBytes:&v123 length:4 atIndex:0];
          [v97 setTriangleFillMode:0];
          [v97 drawIndexedPrimitives:3 indexCount:(v37 - v38) >> 2 indexType:1 indexBuffer:v119 indexBufferOffset:0];
          [v97 endEncoding];
          [v122 commit];
          [v122 waitUntilCompleted];
          v98 = v115;
          DeviceRGB = CGColorSpaceCreateDeviceRGB();
          v100 = [objc_alloc(MEMORY[0x277CBF740]) initWithOptions:0];
          v101 = objc_alloc(MEMORY[0x277CBF758]);
          v139[0] = *MEMORY[0x277CBFA40];
          __dst[0] = DeviceRGB;
          v102 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:__dst forKeys:v139 count:1];
          v103 = [v101 initWithMTLTexture:v98 options:v102];

          CGColorSpaceRelease(DeviceRGB);
          [v103 extent];
          v126 = 0;
          v127.__locale_ = 0;
          v125 = 0x3FF0000000000000;
          v128 = xmmword_23E7869D0;
          v129 = v104;
          v105 = [v103 imageByApplyingTransform:&v125];

          [v105 extent];
          v31 = [v100 createCGImage:v105 fromRect:?];

          v87 = v109;
        }

        else
        {
          v31 = 0;
          if (a9)
          {
            *a9 = AMTErrorCreateWithMessages(-13, "Failed to created pipeline state", 0);
          }
        }
      }

      else
      {
        if (a9)
        {
          v106 = v115;
          v31 = 0;
          *a9 = AMTErrorCreateWithMessages(-13, "Vertex, tangent or normal count mismatch", 0);
LABEL_46:

LABEL_47:
          goto LABEL_48;
        }

        v31 = 0;
      }

      v106 = v115;
      goto LABEL_46;
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](&v125);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v125, "Failed to create texture", 24);
    v28 = [@"DestinationNormalMap" cStringUsingEncoding:4];
    v29 = strlen(v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
    if ((v135 & 0x10) != 0)
    {
      v32 = v134;
      if (v134 < v131)
      {
        v134 = v131;
        v32 = v131;
      }

      v33 = __src;
    }

    else
    {
      if ((v135 & 8) == 0)
      {
        v30 = 0;
        v138 = 0;
LABEL_26:
        *(__dst + v30) = 0;
        if (v138 >= 0)
        {
          v34 = __dst;
        }

        else
        {
          v34 = __dst[0];
        }

        *a9 = AMTErrorCreateWithMessages(-13, v34, 0);
        if (v138 < 0)
        {
          operator delete(__dst[0]);
        }

        v125 = *MEMORY[0x277D82828];
        *(&v125 + *(v125 - 24)) = *(MEMORY[0x277D82828] + 24);
        v126 = MEMORY[0x277D82878] + 16;
        if (v133 < 0)
        {
          operator delete(__p);
        }

        v126 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(&v127);
        std::ostream::~ostream();
        MEMORY[0x23EF11E10](&v136);
        goto LABEL_34;
      }

      v33 = v128;
      v32 = v129;
    }

    v30 = v32 - v33;
    if (v32 - v33 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v30 >= 0x17)
    {
      operator new();
    }

    v138 = v32 - v33;
    if (v30)
    {
      memmove(__dst, v33, v30);
    }

    goto LABEL_26;
  }

  v31 = 0;
  if (a9)
  {
    *a9 = AMTErrorCreateWithMessages(-13, "ShaderLibrary loaded with 0 functions", 0);
  }

LABEL_48:
  v107 = *MEMORY[0x277D85DE8];
  return v31;
}

void std::vector<AMTMeshSourceSemantic>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t AMTMeshSourceCopyToVector(void *a1, void *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != AMTMeshSourceGetTypeID()))
  {
    AMTMeshSourceCopyToVector();
  }

  if (AMTMeshSourceGetComponentsPerVector(a1) != 3)
  {
    AMTMeshSourceCopyToVector();
  }

  VectorCount = AMTMeshSourceGetVectorCount(a1);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a2, VectorCount);
  result = AMTMeshSourceGetDataType(a1);
  if (result == 10)
  {
    if (VectorCount >= 1)
    {
      v7 = 0;
      v8 = VectorCount & 0x7FFFFFFF;
      do
      {
        result = __AMTMeshSource::vectorAtIndex<double>(a1, v7);
        v9 = 0;
        v10 = *a2 + 16 * v7;
        v11 = *v10;
        do
        {
          v12 = *(result + 8 * v9);
          v19 = v11;
          *(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3))) = v12;
          v11 = v19;
          *(v10 + 8) = DWORD2(v19);
          *v10 = v11;
          ++v9;
        }

        while (v9 != 3);
        ++v7;
      }

      while (v7 != v8);
    }
  }

  else if (VectorCount >= 1)
  {
    v13 = 0;
    v14 = VectorCount & 0x7FFFFFFF;
    do
    {
      result = __AMTMeshSource::vectorAtIndex<double>(a1, v13);
      v15 = 0;
      v16 = *a2 + 16 * v13;
      v17 = *v16;
      do
      {
        v18 = *(result + 4 * v15);
        v20 = v17;
        *(&v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (v15 & 3))) = v18;
        v17 = v20;
        *(v16 + 8) = DWORD2(v20);
        *v16 = v17;
        ++v15;
      }

      while (v15 != 3);
      ++v13;
    }

    while (v13 != v14);
  }

  return result;
}

__n64 AMTMeshSourceCopyToVector(void *a1, uint64_t *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != AMTMeshSourceGetTypeID()))
  {
    AMTMeshSourceCopyToVector();
  }

  if (AMTMeshSourceGetComponentsPerVector(a1) != 2)
  {
    AMTMeshSourceCopyToVector();
  }

  VectorCount = AMTMeshSourceGetVectorCount(a1);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(a2, VectorCount);
  if (AMTMeshSourceGetDataType(a1) == 10)
  {
    if (VectorCount >= 1)
    {
      v7 = 0;
      v8 = 0;
      v9 = VectorCount & 0x7FFFFFFF;
      do
      {
        v10 = __AMTMeshSource::vectorAtIndex<double>(a1, v8);
        v11 = *a2;
        result.n64_f32[0] = *v10;
        *(v11 + v7) = result.n64_u32[0];
        v12 = v10[1];
        result.n64_f32[1] = v12;
        *(v11 + v7) = result;
        ++v8;
        v7 += 8;
      }

      while (v9 != v8);
    }
  }

  else if (VectorCount >= 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = VectorCount & 0x7FFFFFFF;
    do
    {
      v16 = __AMTMeshSource::vectorAtIndex<double>(a1, v14);
      v17 = *a2;
      result.n64_u32[0] = *v16;
      *(v17 + v13) = *v16;
      result.n64_u32[1] = v16[1];
      *(v17 + v13) = result;
      ++v14;
      v13 += 8;
    }

    while (v15 != v14);
  }

  return result;
}

uint64_t AMTMeshElementAppendToTriangleMesh(__AMTMeshElement *a1, amt::TriangleMesh *a2, int a3, __CFError **a4)
{
  if (!a1 || (v8 = CFGetTypeID(a1), v8 != AMTMeshElementGetTypeID()))
  {
    AMTMeshElementAppendToTriangleMesh();
  }

  v22 = 768;
  v24 = 0;
  v25 = 0;
  __p = 0;
  std::vector<AMTMeshSourceSemantic>::__init_with_size[abi:ne200100]<AMTMeshSourceSemantic const*,AMTMeshSourceSemantic const*>(&__p, &v22, &__p, 2);
  if (a3)
  {
    LOBYTE(v22) = 1;
    std::vector<AMTMeshSourceSemantic>::push_back[abi:ne200100](&__p, &v22);
  }

  FaceCount = AMTMeshElementGetFaceCount(a1);
  v10 = __p;
  v11 = v24;
  if (__p == v24)
  {
LABEL_17:
    v20 = 1;
    goto LABEL_20;
  }

  v12 = a2 + 120;
  v13 = a2 + 168;
  v14 = a2 + 72;
  v15 = 3 * FaceCount;
  while (1)
  {
    SourceIndices = __AMTMeshElement::findSourceIndices(a1, *v10, 0);
    v17 = SourceIndices;
    if (SourceIndices)
    {
      break;
    }

    if (!*v10)
    {
      goto LABEL_18;
    }

LABEL_16:
    if (++v10 == v11)
    {
      goto LABEL_17;
    }
  }

  if (AMTMeshSourceIndicesGetIndexCount(SourceIndices) == v15 && (!AMTMeshSourceIndicesGetIndexType(v17) || AMTMeshSourceIndicesGetIndexType(v17) == 1))
  {
    v18 = *v10;
    v19 = v12;
    if (v18 == 3 || (v19 = v13, v18 == 1) || (v19 = v14, !*v10))
    {
      AMTMeshSourceIndicesAppendToVector<int>(v17, v19);
    }

    goto LABEL_16;
  }

LABEL_18:
  v20 = 0;
  if (a4)
  {
    *a4 = AMTErrorCreateWithErrorCode(-1);
  }

LABEL_20:
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  return v20;
}

void sub_23E757414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<AMTMeshSourceSemantic>::__init_with_size[abi:ne200100]<AMTMeshSourceSemantic const*,AMTMeshSourceSemantic const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<AMTMeshSourceSemantic>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23E757494(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AMTMeshSourceSemantic>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278C5AC80, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEm(a1, a2 - v2);
  }
}

uint64_t __AMTMeshSource::vectorAtIndex<double>(void *a1, uint64_t a2)
{
  v2 = a1[3];
  if (!v2)
  {
    __AMTMeshSource::vectorAtIndex<double>();
  }

  if (a2 < 0 || a1[5] <= a2)
  {
    __AMTMeshSource::vectorAtIndex<double>();
  }

  return v2 + a1[7] + a1[8] * a2;
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEm(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE8__appendEm(a1, a2 - v2);
  }
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE8__appendEm(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t AMTMeshSourceIndicesAppendToVector<int>(void *a1, void *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != AMTMeshSourceIndicesGetTypeID())
  {
    AMTMeshSourceIndicesAppendToVector<int>();
  }

  IndexCount = AMTMeshSourceIndicesGetIndexCount(a1);
  v6 = (IndexCount / 3);
  if (IndexCount != 3 * v6)
  {
    AMTMeshSourceIndicesAppendToVector<int>();
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2);
  std::vector<amt::Vec<int,3>>::resize(a2, (v6 - 1431655765 * ((a2[1] - *a2) >> 2)));
  result = AMTMeshSourceIndicesGetIndexType(a1);
  if (result == 1)
  {
    if (IndexCount >= 3)
    {
      v9 = 12 * v7;
      v10 = 2;
      do
      {
        v11 = __AMTMeshSourceIndices::indexAtIndex<int>(a1, v10 - 2);
        v12 = __AMTMeshSourceIndices::indexAtIndex<int>(a1, v10 - 1);
        result = __AMTMeshSourceIndices::indexAtIndex<int>(a1, v10);
        v13 = (*a2 + v9);
        *v13 = v11;
        v13[1] = v12;
        v13[2] = result;
        v10 += 3;
        v9 += 12;
        --v6;
      }

      while (v6);
    }
  }

  else if (IndexCount >= 3)
  {
    v14 = 12 * v7;
    v15 = 2;
    do
    {
      v16 = __AMTMeshSourceIndices::indexAtIndex<short>(a1, v15 - 2);
      v17 = __AMTMeshSourceIndices::indexAtIndex<short>(a1, v15 - 1);
      result = __AMTMeshSourceIndices::indexAtIndex<short>(a1, v15);
      v18 = (*a2 + v14);
      *v18 = v16;
      v18[1] = v17;
      v18[2] = result;
      v15 += 3;
      v14 += 12;
      --v6;
    }

    while (v6);
  }

  return result;
}

void std::vector<amt::Vec<int,3>>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<amt::Vec<int,3>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

uint64_t __AMTMeshSourceIndices::indexAtIndex<int>(void *a1, uint64_t a2)
{
  v2 = a1[3];
  if (!v2)
  {
    __AMTMeshSourceIndices::indexAtIndex<int>();
  }

  if (a2 < 0 || a1[5] <= a2)
  {
    __AMTMeshSourceIndices::indexAtIndex<int>();
  }

  return *(v2 + a1[6] + a1[7] * a2);
}

uint64_t __AMTMeshSourceIndices::indexAtIndex<short>(void *a1, uint64_t a2)
{
  v2 = a1[3];
  if (!v2)
  {
    __AMTMeshSourceIndices::indexAtIndex<int>();
  }

  if (a2 < 0 || a1[5] <= a2)
  {
    __AMTMeshSourceIndices::indexAtIndex<int>();
  }

  return *(v2 + a1[6] + a1[7] * a2);
}

void std::vector<amt::Vec<int,3>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<amt::Vec<int,3>>>(a1, v9);
    }

    v11 = 12 * v6;
    v12 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v11, v12);
    v13 = *a1;
    v14 = *(a1 + 8);
    v15 = v11 + *a1 - v14;
    if (v14 != *a1)
    {
      v16 = v11 + *a1 - v14;
      do
      {
        v17 = *v13;
        *(v16 + 8) = v13[2];
        *v16 = v17;
        v16 += 12;
        v13 += 3;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    *(a1 + 8) = v11 + v12;
    *(a1 + 16) = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<amt::Vec<int,3>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

char *std::vector<amt::Vec<int,3>>::__assign_with_size[abi:ne200100]<amt::Vec<int,3>*,amt::Vec<int,3>*>(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 2) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x1555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0x1555555555555555;
      }

      else
      {
        v11 = v10;
      }

      std::vector<amt::Vec<int,3>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 2) >= a4)
  {
    while (v5 != a3)
    {
      v19 = *v5;
      *(result + 2) = *(v5 + 2);
      *result = v19;
      result += 12;
      v5 = (v5 + 12);
    }

    a1[1] = result;
  }

  else
  {
    v14 = (a2 + v13);
    if (v12 != result)
    {
      do
      {
        v15 = *v5;
        *(result + 2) = *(v5 + 2);
        *result = v15;
        result += 12;
        v5 = (v5 + 12);
        v13 -= 12;
      }

      while (v13);
      v12 = a1[1];
    }

    v16 = v12;
    if (v14 != a3)
    {
      v16 = v12;
      v17 = v12;
      do
      {
        v18 = *v14;
        *(v17 + 2) = *(v14 + 2);
        *v17 = v18;
        v17 += 12;
        v14 = (v14 + 12);
        v16 += 12;
      }

      while (v14 != a3);
    }

    a1[1] = v16;
  }

  return result;
}

void std::vector<amt::Vec<int,3>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<amt::Vec<int,3>>>(a1, a2);
  }

  std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
}

void *amt::TriangleMesh::computeTexCoordToAttributeMapping@<X0>(void *result@<X0>, void *a2@<X1>, std::vector<unsigned int> *a3@<X8>)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((result[16] - result[15]) >> 2);
  a3->__end_ = 0;
  a3->__end_cap_.__value_ = 0;
  a3->__begin_ = 0;
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2) == v4)
  {
    v6 = result;
    std::vector<int>::resize(a3, ((result[13] - result[12]) >> 3));
    result = a3->__begin_;
    v7 = a3->__end_ - a3->__begin_;
    if (v7 >= 1)
    {
      result = memset(result, 255, v7);
    }

    if (v4 >= 1)
    {
      v8 = 0;
      v9 = 0;
      v10 = v4 & 0x7FFFFFFF;
      do
      {
        result = amt::TriangleMesh::texCoordTriangle(v6, v9, v14);
        v11 = 0;
        begin = a3->__begin_;
        v13 = *a2 + v8;
        do
        {
          begin[*&v14[v11]] = *(v13 + v11);
          v11 += 4;
        }

        while (v11 != 12);
        ++v9;
        v8 += 12;
      }

      while (v9 != v10);
    }
  }

  return result;
}

void sub_23E75806C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amt::TriangleMesh::position(amt::TriangleMesh *this, int a2)
{
  if (a2 < 0 || (v2 = *(this + 3), ((*(this + 4) - v2) >> 4) <= a2))
  {
    amt::TriangleMesh::position();
  }

  return v2 + 16 * a2;
}

{
  if (a2 < 0 || (v2 = *(this + 3), ((*(this + 4) - v2) >> 4) <= a2))
  {
    amt::TriangleMesh::position();
  }

  return v2 + 16 * a2;
}

uint64_t amt::TriangleMesh::normal(amt::TriangleMesh *this, int a2)
{
  if (a2 < 0 || (v2 = *(this + 18), ((*(this + 19) - v2) >> 4) <= a2))
  {
    amt::TriangleMesh::normal();
  }

  return v2 + 16 * a2;
}

{
  if (a2 < 0 || (v2 = *(this + 18), ((*(this + 19) - v2) >> 4) <= a2))
  {
    amt::TriangleMesh::normal();
  }

  return v2 + 16 * a2;
}

void std::vector<int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v2);
  }
}

uint64_t amt::TriangleMesh::texCoordTriangle@<X0>(uint64_t this@<X0>, signed int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 < 0 || (v3 = *(this + 120), (-1431655765 * ((*(this + 128) - v3) >> 2)) <= a2))
  {
    amt::TriangleMesh::texCoordTriangle();
  }

  v4 = v3 + 12 * a2;
  *a3 = *v4;
  *(a3 + 8) = *(v4 + 8);
  return this;
}

void std::vector<int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a2);
  }

  return result;
}

void sub_23E758340(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, a2);
  }

  std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
}

uint64_t _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_23E7583F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEmRKS1_(void *a1, unint64_t a2, _OWORD *a3)
{
  v3 = (a1[1] - *a1) >> 4;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEmRKS1_(a1, a2 - v3, a3);
  }
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
    return;
  }

  v7 = *(a1 + 16);
  v8 = v7 << 6;
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    v20 = 0;
    v21 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
    }

    v10 = v7 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(&v20, v11);
    v12 = *a1;
    v13 = *(a1 + 8);
    *&v21 = v13 + v5;
    v22 = v20;
    v23 = 0;
    std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>(v12, 0, &v12[v13 >> 6], v13 & 0x3F, &v22, &v18);
    v14 = v18;
    LODWORD(v15) = v19;
    v16 = *a1;
    *a1 = v20;
    v20 = v16;
    v17 = *(a1 + 8);
    *(a1 + 8) = v21;
    v21 = v17;
    if (v16)
    {
      operator delete(v16);
    }

    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v20 = v14;
    LODWORD(v21) = v15;
    std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&v20, v5);
    return;
  }

  v14 = *a1 + 8 * (v4 >> 6);
  v15 = *(a1 + 8) & 0x3FLL;
  *(a1 + 8) = a2;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = v14;
  LODWORD(v21) = v15;
  std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v20, v5);
}

void sub_23E758594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEmRKS1_(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v5) >> 4)
  {
    if (a2)
    {
      v12 = 16 * a2;
      v13 = &v5[a2];
      do
      {
        *v5++ = *a3;
        v12 -= 16;
      }

      while (v12);
      v5 = v13;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 4);
    if (v8 >> 60)
    {
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 4;
    v10 = v6 - *a1;
    if (v10 >> 3 > v8)
    {
      v8 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v11);
    }

    v14 = 16 * v9;
    v15 = 16 * v9 + 16 * a2;
    v16 = 16 * a2;
    v17 = v14;
    do
    {
      *v17++ = *a3;
      v16 -= 16;
    }

    while (v16);
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    if (v20)
    {

      operator delete(v20);
    }
  }
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_23E758774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v2);
  }

  std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, &v13);
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

unint64_t *std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>@<X0>(unint64_t *__src@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4 - a2 + 8 * (a3 - __src);
  if (v8 <= 0)
  {
    v16 = *a5;
  }

  else
  {
    v9 = __src;
    __src = *a5;
    if (a2)
    {
      if (v8 >= (64 - a2))
      {
        v10 = 64 - a2;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = *v9++;
      *__src = *__src & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2)) | v11 & (0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2);
      v12 = v10 + *(a5 + 8);
      __src = (__src + ((v12 >> 3) & 0x3FFFFFF8));
      *a5 = __src;
      *(a5 + 8) = v12 & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    if ((v8 + 63) >= 0x7F)
    {
      memmove(__src, v9, 8 * v14);
      __src = *a5;
    }

    v15 = v8 - (v14 << 6);
    v16 = &__src[v14];
    *a5 = v16;
    if (v15 >= 1)
    {
      *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8)) | v9[v14] & (0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8));
      *(a5 + 8) = v15;
    }
  }

  *a6 = v16;
  *(a6 + 8) = *(a5 + 8);
  return __src;
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void TBNProcessor::TBNProcessor(TBNProcessor *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = @"transferMapVertexShader";
  *(this + 4) = @"transferMapFragmentShader";
  v2 = MTLCreateSystemDefaultDevice();
  v3 = *this;
  *this = v2;

  v4 = [AMTMetalWrapper createDefaultLibraryWithDevice:*this];
  v5 = *(this + 1);
  *(this + 1) = v4;

  v6 = [*this newCommandQueue];
  v7 = *(this + 2);
  *(this + 2) = v6;
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_23E758E68(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x23EF11E10](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x23EF11D90](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_23E758F24(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x23EF11BC0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x23EF11BD0](v13);
  return a1;
}

void sub_23E7591AC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x23EF11BD0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x23E75918CLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_23E7593E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void amt::TriangleMesh::~TriangleMesh(void **this)
{
  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  v2 = this[21];
  if (v2)
  {
    this[22] = v2;
    operator delete(v2);
  }

  v3 = this[18];
  if (v3)
  {
    this[19] = v3;
    operator delete(v3);
  }

  v4 = this[15];
  if (v4)
  {
    this[16] = v4;
    operator delete(v4);
  }

  v5 = this[12];
  if (v5)
  {
    this[13] = v5;
    operator delete(v5);
  }

  v6 = this[9];
  if (v6)
  {
    this[10] = v6;
    operator delete(v6);
  }

  v7 = this[6];
  if (v7)
  {
    this[7] = v7;
    operator delete(v7);
  }

  v8 = this[3];
  if (v8)
  {
    this[4] = v8;
    operator delete(v8);
  }

  v9 = *this;
  if (*this)
  {
    this[1] = v9;
    operator delete(v9);
  }
}

__CFDictionary *amt::AMTAdaptiveMeshInfoCreateWithMeshSubdivisionInfo(const __CFAllocator *a1, uint64_t a2)
{
  v5 = *(a2 + 72);
  v4 = *(a2 + 80);
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, @"info.version", @"1.0.0");
  valuePtr = *(a2 + 192);
  v23 = CFNumberCreate(a1, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"info.subdivision_scheme", v23);
  v6 = v4 - v5;
  theArray = CFArrayCreateMutable(*MEMORY[0x277CBECE8], (v6 >> 3), MEMORY[0x277CBF128]);
  CFDictionaryAddValue(Mutable, @"info.level_of_detail", theArray);
  if ((v6 >> 3) >= 1)
  {
    v7 = 0;
    v8 = (v6 >> 3) & 0x7FFFFFFF;
    v9 = MEMORY[0x277CBF138];
    v10 = MEMORY[0x277CBF150];
    do
    {
      v11 = *(a2 + 72);
      v12 = *(a2 + 168);
      theDict = CFDictionaryCreateMutable(a1, 0, v9, v10);
      CFArrayAppendValue(theArray, theDict);
      v20 = CFNumberCreate(a1, kCFNumberSInt32Type, (v11 + v7 + 4));
      CFDictionaryAddValue(theDict, @"info.face_count", v20);
      value = CFDictionaryCreateMutable(a1, 0, v9, v10);
      v18 = CFNumberCreate(a1, kCFNumberSInt32Type, (v11 + v7));
      CFDictionaryAddValue(theDict, @"info.position", value);
      CFDictionaryAddValue(value, @"info.vector_count", v18);
      v17 = CFDictionaryCreateMutable(a1, 0, v9, v10);
      v16 = CFNumberCreate(a1, kCFNumberSInt32Type, (v12 + v7));
      v15 = CFNumberCreate(a1, kCFNumberSInt32Type, (v12 + v7 + 4));
      CFDictionaryAddValue(theDict, @"info.tex_coord", v17);
      CFDictionaryAddValue(v17, @"info.vector_count", v16);
      amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v15);
      amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v16);
      amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&v17);
      amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v18);
      amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&value);
      amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v20);
      amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&theDict);
      v7 += 8;
      --v8;
    }

    while (v8);
  }

  v13 = Mutable;
  Mutable = 0;
  amt::AMTWrapper<__CFArray *>::~AMTWrapper(&theArray);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v23);
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&Mutable);
  return v13;
}

void sub_23E7598D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, const void *);
  amt::AMTWrapper<__CFArray *>::~AMTWrapper(va);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(va1);
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper((v11 - 88));
  _Unwind_Resume(a1);
}

uint64_t amt::AMTAdaptiveMeshCreateWithMesh(void *a1, uint64_t a2)
{
  v134 = *MEMORY[0x277D85DE8];
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != AMTMeshGetTypeID()))
  {
    amt::AMTAdaptiveMeshCreateWithMesh();
  }

  v6 = *(a2 + 32);
  if (!v6 || (v6(*(a2 + 80)) & 1) != 0)
  {
    v92 = 0.0001;
    v93 = 65793;
    v94 = xmmword_23E786A40;
    v95 = xmmword_23E786A50;
    __asm { FMOV            V1.2D, #1.0 }

    *v96 = vdupq_n_s64(0x416312D000000000uLL);
    *&v96[16] = _Q1;
    v97 = 2;
    v98 = 257;
    v99 = 0;
    v100 = 0x418000003E2AAB8ALL;
    v101 = xmmword_23E786A60;
    v102 = 16777217;
    v103 = 0;
    v104 = xmmword_23E786A70;
    v105 = 0x100000001;
    v106 = xmmword_23E786A80;
    v107 = xmmword_23E786A90;
    v108 = 0x3FB999999999999ALL;
    v109 = 1;
    v110 = 16843009;
    v111 = 0;
    v112 = 0;
    v113 = 1;
    v114 = 0;
    v129 = 0u;
    memset(v128, 0, sizeof(v128));
    v130 = 1.0;
    v91 = 0;
    memset(v90, 0, sizeof(v90));
    v89 = 0;
    v88 = 0u;
    v87 = 0u;
    v86 = 0u;
    v85 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    *v80 = 0u;
    memset(v79, 0, sizeof(v79));
    v78 = 0;
    v76 = 0u;
    memset(v77, 0, sizeof(v77));
    *v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v72 = 0;
    memset(v71, 0, sizeof(v71));
    v70 = 0;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    memset(v62, 0, sizeof(v62));
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v58 = 0;
    *v56 = 0u;
    v57 = 0u;
    memset(v55, 0, sizeof(v55));
    *v53 = 0u;
    v54 = 0u;
    memset(v52, 0, sizeof(v52));
    v12 = amt::AMTPipelineOptions::info(*a2, v5);
    v13 = v12;
    if (!v12)
    {
      goto LABEL_90;
    }

    v14 = CFGetTypeID(v12);
    if (v14 != CFDictionaryGetTypeID())
    {
      goto LABEL_90;
    }

    if (amt::AMTPipelineOptions::parse(*(a2 + 8), v13, &v92))
    {
      HIBYTE(v93) |= v114;
      v99 |= v114;
      v103 |= v114;
      v111 |= v114;
      if (!amt::convert(a1, v90, a2))
      {
        goto LABEL_90;
      }

      amt::Operation::Operation(__p, @"Normalize mesh", a2);
      amt::Operation::istat(__p, @"info.mesh", v90);
      if (HIBYTE(v93) == 1)
      {
        v15 = std::string::basic_string[abi:ne200100]<0>(&v126, "normalize_mesh_input.obj");
        amt::saveMeshObj(v15, v90);
        if (SHIBYTE(v127) < 0)
        {
          operator delete(v126);
        }
      }

      if (amt::Operation::start(__p))
      {
        if (v93 == 1)
        {
          amt::NormalizationInfo::init(v128, v90);
          v16 = *(&v90[1] + 1);
          v17 = *&v90[2];
          if (*(&v90[1] + 1) != *&v90[2])
          {
            if (v130 == 0.0)
            {
              v18 = 1.0;
            }

            else
            {
              v18 = 1.0 / v130;
            }

            do
            {
              *v16 = vmulq_n_f32(vsubq_f32(*v16, v129), v18);
              ++v16;
            }

            while (v16 != v17);
          }
        }
      }

      if (HIBYTE(v93) == 1)
      {
        v19 = std::string::basic_string[abi:ne200100]<0>(&v126, "normalize_mesh_output.obj");
        amt::saveMeshObj(v19, v90);
        if (SHIBYTE(v127) < 0)
        {
          operator delete(v126);
        }
      }

      amt::Operation::ostat(__p, @"info.mesh", v90);
      v20 = amt::Operation::end(__p);
      amt::Operation::~Operation(__p);
      if (!v20)
      {
        goto LABEL_90;
      }

      amt::Operation::Operation(__p, @"Merge Close Points", a2);
      amt::Operation::istat(__p, @"info.mesh", v90);
      if (HIBYTE(v93) == 1)
      {
        v21 = std::string::basic_string[abi:ne200100]<0>(&v126, "unify_vertices_input.obj");
        amt::saveMeshObj(v21, v90);
        if (SHIBYTE(v127) < 0)
        {
          operator delete(v126);
        }
      }

      v22 = amt::Operation::start(__p);
      if (v92 > 0.0)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      if (v23 == 1)
      {
        v126 = 0uLL;
        v127 = 0;
        v131 = 0uLL;
        v24 = v92;
        v132 = 0;
        amt::unifyVertices(&v90[1] + 1, &v90[4] + 1, &v126, &v131, v24);
        v26 = v127;
        v27 = *(&v90[5] + 1);
        v127 = *(&v90[2] + 1);
        v28 = *(&v90[1] + 8);
        *(&v90[1] + 8) = v126;
        v126 = v28;
        v29 = *(&v90[4] + 8);
        *(&v90[4] + 8) = v131;
        v131 = v29;
        *(&v90[2] + 1) = v26;
        *(&v90[5] + 1) = v132;
        v132 = v27;
        v30 = v29;
        if (BYTE1(v93) == 1)
        {
          amt::removeDegeneratedTriangles(v90, v25);
          v30 = v131;
        }

        if (v30)
        {
          *(&v131 + 1) = v30;
          operator delete(v30);
        }

        if (v126)
        {
          *(&v126 + 1) = v126;
          operator delete(v126);
        }
      }

      if (HIBYTE(v93) == 1)
      {
        v31 = std::string::basic_string[abi:ne200100]<0>(&v126, "unify_vertices_output.obj");
        amt::saveMeshObj(v31, v90);
        if (SHIBYTE(v127) < 0)
        {
          operator delete(v126);
        }
      }

      amt::Operation::ostat(__p, @"info.mesh", v90);
      v32 = amt::Operation::end(__p);
      amt::Operation::~Operation(__p);
      if (!v32)
      {
        goto LABEL_90;
      }

      v33 = amt::Operation::Operation(&v126, @"Simplify Mesh", a2);
      amt::Operation::istat(v33, @"info.mesh", v90);
      if (v99 == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "simplify_mesh_input.obj");
        amt::saveMeshObj(__p, v90);
        if (SBYTE7(v116) < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (amt::Operation::start(&v126) && *&v94 < 1.0 && *&v94 > 0.0)
      {
        v122 = 0x3FB999999999999ALL;
        v119 = 1;
        v118 = vcvtpd_s64_f64(*&v94 * (-1431655765 * ((*&v90[5] - *(&v90[4] + 1)) >> 2)));
        __p[0] = *v96;
        __p[1] = *(&v94 + 1);
        v116 = *&v96[8];
        v117 = *&v96[24];
        v120 = v97;
        v121 = v95;
        v123 = v98;
        amt::TriangleMeshDecimator::TriangleMeshDecimator(&v124);
        *&v131 = &unk_28510E120;
        *(&v131 + 1) = &v126;
        v133 = &v131;
        amt::TriangleMeshDecimator::setCallBack(&v124, &v131);
        std::__function::__value_func<BOOL ()(float)>::~__value_func[abi:ne200100](&v131);
        if (amt::TriangleMeshDecimator::decimate(&v124, v90, __p))
        {
          v35 = *(a2 + 16);
          v34 = (a2 + 16);
          if (v35)
          {
            v36 = AMTErrorCreateWithErrorCode(-3);
LABEL_71:
            **v34 = v36;
            goto LABEL_72;
          }

          goto LABEL_72;
        }

        v42 = amt::TriangleMeshDecimator::decimatedPointCount(&v124);
        *v125 = 0u;
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEmRKS1_(&v79[24], v42, v125);
        v43 = amt::TriangleMeshDecimator::decimatedTriangleCount(&v124);
        v125[0] = -1;
        LODWORD(v125[1]) = -1;
        std::vector<amt::Vec<int,3>>::resize(&v80[1], v43, v125);
        if (amt::TriangleMeshDecimator::decimatedMesh(&v124, v79))
        {
          v44 = *(a2 + 16);
          v34 = (a2 + 16);
          if (v44)
          {
            v36 = AMTErrorCreateWithErrorCode(-3);
            goto LABEL_71;
          }

LABEL_72:
          amt::TriangleMeshDecimator::~TriangleMeshDecimator(&v124);
          amt::Operation::~Operation(&v126);
          goto LABEL_90;
        }

        std::vector<amt::Vec<int,3>>::__assign_with_size[abi:ne200100]<amt::Vec<int,3>*,amt::Vec<int,3>*>(v77 + 1, *(&v90[4] + 1), *&v90[5], 0xAAAAAAAAAAAAAAABLL * ((*&v90[5] - *(&v90[4] + 1)) >> 2));
        *v125 = 0u;
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEmRKS1_(&v74[1], ((*&v90[2] - *(&v90[1] + 1)) >> 4), v125);
        amt::TriangleMeshDecimator::trackedPoints(&v124, v74[1], 0, (*&v90[2] - *(&v90[1] + 1)) >> 4);
        amt::TriangleMeshDecimator::~TriangleMeshDecimator(&v124);
      }

      else
      {
        amt::TriangleMesh::operator=(v79, v90);
        amt::TriangleMesh::operator=(&v73, v90);
      }

      if (v99 == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "simplify_mesh_output_decimated.obj");
        amt::saveMeshObj(__p, v79);
        if (SBYTE7(v116) < 0)
        {
          operator delete(__p[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "simplify_mesh_output_mapped.obj");
        amt::saveMeshObj(__p, &v73);
        if (SBYTE7(v116) < 0)
        {
          operator delete(__p[0]);
        }
      }

      amt::Operation::ostat(&v126, @"info.mesh", v79);
      v39 = amt::Operation::end(&v126);
      amt::Operation::~Operation(&v126);
      if (!v39)
      {
        goto LABEL_90;
      }

      v41 = amt::Operation::Operation(v40, @"Deduplicate Triangles", a2);
      amt::Operation::istat(v41, @"info.mesh", v79);
      if (HIBYTE(v93) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "deduplicate_triangles_input.obj");
        amt::saveMeshObj(__p, v79);
        if (SBYTE7(v116) < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (amt::Operation::start(&v126) && BYTE2(v93) == 1)
      {
        v131 = 0uLL;
        v132 = 0;
        amt::TriangleMesh::computeTriangleNormals(v79, &v131, 1);
      }

      if (HIBYTE(v93) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "deduplicate_triangles_output.obj");
        amt::saveMeshObj(__p, v79);
        if (SBYTE7(v116) < 0)
        {
          operator delete(__p[0]);
        }
      }

      amt::Operation::ostat(&v126, @"info.mesh", v79);
      v45 = amt::Operation::end(&v126);
      amt::Operation::~Operation(&v126);
      if (!v45 || !amt::removeSmallConnectedComponents(v79, a2, &v92) || !amt::parameterizeMeshGESS(v79, a2, &v92) || !amt::computeNormals(v79, a2) || !amt::fitDisplacedSubdivisionSurface(v90, v79, &v73, v71, v62, v52, a2, &v92) || !amt::denormalize(v71, v128, a2, &v92) || !amt::denormalize(v62, v128, a2, &v92) || (amt::computeDisplacements(v71, v62, v128, &v59, a2, &v92) & 1) == 0)
      {
        goto LABEL_90;
      }

      amt::TriangleMesh::computeNormals(v62, 1);
      v46 = *a2;
      TypeID = AMTAdaptiveMeshGetTypeID();
      Instance = _AMTTypeCreateInstance(v46, TypeID, 0x160uLL);
      v37 = Instance;
      if (!Instance)
      {
        goto LABEL_91;
      }

      std::swap[abi:ne200100]<amt::MeshSubdivisionInfo>(Instance + 88, v52);
      amt::HashAdjacency::init(v37 + 16, (v37 + 184), 64);
      *(v37 + 312) = amt::AMTAdaptiveMeshInfoCreateWithMeshSubdivisionInfo(*a2, v37 + 88);
      *(v37 + 320) = AMTMeshCreateWithTriangleMesh(*a2, v71);
      *(v37 + 328) = AMTMeshCreateWithTriangleMesh(*a2, v62);
      *(v37 + 336) = AMTMeshSourceCreateWithAttributes(*a2, &v59, 4, 0);
      std::vector<unsigned int>::reserve((v37 + 288), ((*(&v63 + 1) - v63) >> 3));
      *(v37 + 344) = AMTIndexUnifiedMeshCreateWithMesh(*a2, *(v37 + 320), (v37 + 288));
      *(v37 + 352) = AMTIndexUnifiedMeshCreateWithMesh(*a2, *(v37 + 328), (v37 + 288));
      *(v37 + 360) = AMTMeshSourceCreateWithMeshSource(*a2, *(v37 + 336), (v37 + 288));
      v49 = *(a2 + 40);
      if (!v49 || (v49(*(a2 + 24), *(a2 + 80)) & 1) != 0)
      {
        goto LABEL_91;
      }

      if (!*(a2 + 16))
      {
        goto LABEL_90;
      }

      v38 = AMTErrorCreateWithErrorCode(-2);
    }

    else
    {
      if (!*(a2 + 16))
      {
LABEL_90:
        v37 = 0;
        goto LABEL_91;
      }

      v38 = AMTErrorCreateWithErrorCode(-1);
    }

    v37 = 0;
    **(a2 + 16) = v38;
LABEL_91:
    if (v56[1])
    {
      *&v57 = v56[1];
      operator delete(v56[1]);
    }

    amt::Adjacency<int>::~Adjacency(v55);
    if (v53[1])
    {
      *&v54 = v53[1];
      operator delete(v53[1]);
    }

    amt::Adjacency<int>::~Adjacency(v52);
    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }

    amt::TriangleMesh::~TriangleMesh(v62);
    amt::TriangleMesh::~TriangleMesh(v71);
    amt::TriangleMesh::~TriangleMesh(&v73);
    amt::TriangleMesh::~TriangleMesh(v79);
    amt::TriangleMesh::~TriangleMesh(v90);
    goto LABEL_98;
  }

  v37 = 0;
  if (*(a2 + 16))
  {
    **(a2 + 16) = AMTErrorCreateWithErrorCode(-2);
  }

LABEL_98:
  v50 = *MEMORY[0x277D85DE8];
  return v37;
}

void sub_23E75A72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  amt::MeshSubdivisionInfo::~MeshSubdivisionInfo(&a9);
  if (__p)
  {
    a35 = __p;
    operator delete(__p);
  }

  amt::TriangleMesh::~TriangleMesh(&a37);
  amt::TriangleMesh::~TriangleMesh(&a65);
  amt::TriangleMesh::~TriangleMesh(&STACK[0x2A0]);
  amt::TriangleMesh::~TriangleMesh(&STACK[0x380]);
  amt::TriangleMesh::~TriangleMesh(&STACK[0x460]);
  _Unwind_Resume(a1);
}

uint64_t amt::convert(void *a1, const amt::TriangleMesh *a2, uint64_t a3)
{
  amt::Operation::Operation(v8, @"Convert Mesh", a3);
  if (theDict)
  {
    CFDictionaryAddValue(theDict, @"info.mesh", a1);
  }

  if (amt::Operation::start(v8) && (AMTMeshCopyToTriangleMesh(a1, a2, 0, *(a3 + 16)) & 1) == 0)
  {
    v6 = 0;
    if (*(a3 + 16))
    {
      **(a3 + 16) = AMTErrorCreateWithErrorCode(-3);
    }
  }

  else
  {
    amt::Operation::ostat(v8, @"info.mesh", a2);
    v6 = amt::Operation::end(v8);
  }

  amt::Operation::~Operation(v8);
  return v6;
}

void sub_23E75A9A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amt::Operation::~Operation(va);
  _Unwind_Resume(a1);
}

uint64_t amt::removeSmallConnectedComponents(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  amt::Operation::Operation(v13, @"Remove Small Connected Components", a2);
  amt::Operation::istat(v13, @"info.mesh", a1);
  if (*(a3 + 90) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "remove_small_ccs_input.obj");
    amt::saveMeshObj(&__p, a1);
    if (SHIBYTE(__p.__end_cap_.__value_) < 0)
    {
      operator delete(__p.__begin_);
    }
  }

  if (amt::Operation::start(v13) && *(a3 + 84) >= 1)
  {
    memset(&__p, 0, sizeof(__p));
    memset(v11, 0, sizeof(v11));
    v5 = amt::extractConnectedComponents(a1 + 9, (a1[4] - a1[3]) >> 4, a1, &__p, v11);
    a1[1] = *a1;
    a1[4] = a1[3];
    a1[7] = a1[6];
    a1[10] = a1[9];
    a1[13] = a1[12];
    a1[16] = a1[15];
    a1[19] = a1[18];
    a1[22] = a1[21];
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = 16 * v5;
      do
      {
        v8 = *(v11[0] + v6);
        if (*(a3 + 84) < (-1431655765 * ((*(v8 + 10) - *(v8 + 9)) >> 2)))
        {
          amt::TriangleMesh::append(a1, v8);
        }

        v6 += 16;
      }

      while (v7 != v6);
    }

    v14 = v11;
    std::vector<std::shared_ptr<amt::TriangleMesh>>::__destroy_vector::operator()[abi:ne200100](&v14);
    if (__p.__begin_)
    {
      __p.__end_ = __p.__begin_;
      operator delete(__p.__begin_);
    }
  }

  if (*(a3 + 90) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "remove_small_ccs_outtput.obj");
    amt::saveMeshObj(&__p, a1);
    if (SHIBYTE(__p.__end_cap_.__value_) < 0)
    {
      operator delete(__p.__begin_);
    }
  }

  amt::Operation::ostat(v13, @"info.mesh", a1);
  v9 = amt::Operation::end(v13);
  amt::Operation::~Operation(v13);
  return v9;
}

void sub_23E75ABB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  *(v18 - 56) = &a9;
  std::vector<std::shared_ptr<amt::TriangleMesh>>::__destroy_vector::operator()[abi:ne200100]((v18 - 56));
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  amt::Operation::~Operation(&a18);
  _Unwind_Resume(a1);
}

uint64_t amt::parameterizeMeshGESS(const amt::TriangleMesh *a1, uint64_t a2, uint64_t a3)
{
  amt::Operation::Operation(v10, @"Parameterize Mesh (GESS)", a2);
  amt::Operation::istat(v10, @"info.mesh", a1);
  if (*(a3 + 124) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "parameterize_mesh_input.obj");
    amt::saveMeshObj(__p, a1);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (amt::Operation::start(v10) && *(a3 + 123) == 1 && (amt::parameterize(a1, a3 + 96) & 1) == 0)
  {
    v6 = 0;
    if (*(a2 + 16))
    {
      **(a2 + 16) = AMTErrorCreateWithErrorCode(-3);
    }
  }

  else
  {
    if (*(a3 + 124) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "parameterize_mesh_output.obj");
      amt::saveMeshObj(__p, a1);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    amt::Operation::ostat(v10, @"info.mesh", a1);
    v6 = amt::Operation::end(v10);
  }

  amt::Operation::~Operation(v10);
  return v6;
}

void sub_23E75AD68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  amt::Operation::~Operation(&a15);
  _Unwind_Resume(a1);
}

uint64_t amt::computeNormals(const amt::TriangleMesh *a1, uint64_t a2)
{
  amt::Operation::Operation(v5, @"Compute Normals", a2);
  amt::Operation::istat(v5, @"info.mesh", a1);
  if (amt::Operation::start(v5) && ((*(a1 + 19) - *(a1 + 18)) & 0xFFFFFFFF0) == 0)
  {
    amt::TriangleMesh::computeNormals(a1, 1);
  }

  amt::Operation::ostat(v5, @"info.mesh", a1);
  v3 = amt::Operation::end(v5);
  amt::Operation::~Operation(v5);
  return v3;
}

void sub_23E75AE4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amt::Operation::~Operation(va);
  _Unwind_Resume(a1);
}

uint64_t amt::fitDisplacedSubdivisionSurface(uint64_t a1, const amt::TriangleMesh *a2, amt::TriangleMesh *a3, std::string *a4, uint64_t a5, std::vector<unsigned int> *a6, const __CFAllocator **a7, uint64_t a8)
{
  v51 = *MEMORY[0x277D85DE8];
  amt::Operation::Operation(v32, @"Fit Displaced Subdivision Surface", a7);
  amt::Operation::istat(v32, @"info.mesh", a2);
  v31 = *(a8 + 192);
  v29 = *(a8 + 160);
  v30 = *(a8 + 176);
  *v27 = *(a8 + 128);
  v28 = *(a8 + 144);
  if (BYTE6(v31) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "fit_subdiv_input_source.obj");
    amt::saveMeshObj(&__p, a2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "fit_subdiv_input_mapped.obj");
    amt::saveMeshObj(&__p, a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (amt::Operation::start(v32) && BYTE5(v31) == 1 && HIDWORD(v27[0]))
  {
    amt::subdivideMesh(a2, a6, HIDWORD(v27[0]), &__p);
    amt::TriangleMesh::operator=(a5, &__p);
    amt::TriangleMesh::~TriangleMesh(&__p.__r_.__value_.__l.__data_);
    memset(v40, 0, sizeof(v40));
    memset(v39, 0, sizeof(v39));
    if (BYTE4(v31) == 1)
    {
      if (v40 != (a5 + 24))
      {
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(v40, *(a5 + 24), *(a5 + 32), (*(a5 + 32) - *(a5 + 24)) >> 4);
      }

      amt::TriangleMesh::computeTriangleNormals(a5, v39, 1);
    }

    v16 = (*(a3 + 4) - *(a3 + 3)) >> 4;
    v18 = *(a1 + 24);
    v17 = *(a1 + 32);
    if (v16 == ((v17 - v18) >> 4))
    {
      v19 = (log2(4194304.0 / (v16 + 1.0)) * 0.5);
      v38 = 0;
      memset(&v37[11], 0, 32);
      if (v19 >= SLODWORD(v27[0]))
      {
        v20 = v27[0];
      }

      else
      {
        v20 = v19;
      }

      memset(v37, 0, 176);
      if (v37 != a1)
      {
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(&v37[1] + 1, v18, v17, (v17 - v18) >> 4);
        std::vector<amt::Vec<int,3>>::__assign_with_size[abi:ne200100]<amt::Vec<int,3>*,amt::Vec<int,3>*>(&v37[4] + 1, *(a1 + 72), *(a1 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - *(a1 + 72)) >> 2));
      }

      amt::TriangleMesh::subdivideMidPoint(v37, v20);
      amt::TriangleMesh::computeNormals(v37, 1);
      amt::TriangleMesh::TriangleMesh(&v34, a3);
      amt::TriangleMesh::subdivideMidPoint(&v34, v20);
      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      *v41 = 0u;
      v42 = 0u;
      amt::computeVertexToTriangle(&v36, (v35[1] - v35[0]) >> 4, v41);
      v47 = v35;
      *&v49 = 10;
      *(&v49 + 1) = 0x100000000;
      nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::KDTreeSingleIndexAdaptor(&__p, 3, &v47, &v49);
      v21 = *(a5 + 24);
      v22 = *(a5 + 32);
      LODWORD(v46) = v28;
      v50 = 0;
      operator new();
    }

    __assert_rtn("deform", "AMTPipeline.cpp", 641, "mapped.positionCount() == target.positionCount()");
  }

  amt::TriangleMesh::operator=(a4, a2);
  amt::TriangleMesh::operator=(a5, a2);
  if (BYTE6(v31) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "fit_subdiv_output_base.obj");
    amt::saveMeshObj(&__p, a4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "fit_subdiv_output_dsubdiv.obj");
    amt::saveMeshObj(&__p, a5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v23 = amt::AMTAdaptiveMeshInfoCreateWithMeshSubdivisionInfo(*a7, a6);
  __p.__r_.__value_.__r.__words[0] = v23;
  if (theDict)
  {
    CFDictionaryAddValue(theDict, @"info.level_of_detail", v23);
  }

  v24 = amt::Operation::end(v32);
  amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(&__p.__r_.__value_.__l.__data_);
  amt::Operation::~Operation(v32);
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

void sub_23E75BE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46)
{
  v48 = STACK[0x400];
  if (STACK[0x400])
  {
    STACK[0x408] = v48;
    operator delete(v48);
  }

  v49 = STACK[0x418];
  if (STACK[0x418])
  {
    STACK[0x420] = v49;
    operator delete(v49);
  }

  v50 = STACK[0x430];
  if (STACK[0x430])
  {
    STACK[0x438] = v50;
    operator delete(v50);
  }

  amt::Adjacency<int>::~Adjacency(v46 - 224);
  amt::TriangleMesh::~TriangleMesh(&a46);
  amt::TriangleMesh::~TriangleMesh(&STACK[0x200]);
  v51 = STACK[0x2D8];
  if (STACK[0x2D8])
  {
    STACK[0x2E0] = v51;
    operator delete(v51);
  }

  v52 = STACK[0x2F0];
  if (STACK[0x2F0])
  {
    STACK[0x2F8] = v52;
    operator delete(v52);
  }

  amt::Operation::~Operation(&a39);
  _Unwind_Resume(a1);
}

uint64_t amt::denormalize(const amt::TriangleMesh *a1, float32x4_t *a2, uint64_t a3, uint64_t a4)
{
  amt::Operation::Operation(v15, @"Denormalize mesh", a3);
  amt::Operation::istat(v15, @"info.mesh", a1);
  if (*(a4 + 11) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "denormalize_mesh_input.obj");
    amt::saveMeshObj(__p, a1);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (amt::Operation::start(v15))
  {
    if (*(a4 + 8) == 1)
    {
      v8 = *(a1 + 3);
      v9 = *(a1 + 4);
      if (v8 != v9)
      {
        v7.i32[0] = a2[3].i32[0];
        v10 = vdupq_lane_s32(v7, 0);
        do
        {
          *v8 = vmlaq_f32(a2[2], v10, *v8);
          ++v8;
        }

        while (v8 != v9);
      }
    }
  }

  if (*(a4 + 11) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "denormalize_mesh_output.obj");
    amt::saveMeshObj(__p, a1);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  amt::Operation::ostat(v15, @"info.mesh", a1);
  v11 = amt::Operation::end(v15);
  amt::Operation::~Operation(v15);
  return v11;
}

void sub_23E75C208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  amt::Operation::~Operation(&a15);
  _Unwind_Resume(a1);
}

uint64_t amt::computeDisplacements(amt *a1, const amt::TriangleMesh *a2, float32x4_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  amt::Operation::Operation(v60, @"Compute Displacements", a5);
  amt::Operation::istat(v60, @"info.mesh", a2);
  v11 = *(a6 + 200);
  v12 = *(a6 + 204);
  if (amt::Operation::start(v60) && (v12 & 1) != 0)
  {
    v13 = *(a6 + 132);
    v67 = 0;
    *__p = 0u;
    v66 = 0u;
    memset(v64, 0, sizeof(v64));
    *v62 = 0u;
    v63 = 0u;
    memset(v61, 0, sizeof(v61));
    amt::subdivideMesh(a1, v61, v13, &v55);
    if (__p[1])
    {
      *&v66 = __p[1];
      operator delete(__p[1]);
    }

    amt::Adjacency<int>::~Adjacency(v64);
    if (v62[1])
    {
      *&v63 = v62[1];
      operator delete(v62[1]);
    }

    amt::Adjacency<int>::~Adjacency(v61);
    v14 = *(a2 + 4) - *(a2 + 3);
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a4, (v14 >> 4));
    *v61 = 0uLL;
    if ((v14 >> 4) >= 1)
    {
      v15 = 0;
      v16 = (v14 >> 4) & 0x7FFFFFFF;
      v49 = 0u;
      do
      {
        v17 = amt::TriangleMesh::position(a2, v15);
        if (v15 >= ((v57 - v56) >> 4))
        {
          __assert_rtn("position", "AMTTriangleMesh.hpp", 83, "positionIndex >= 0 && positionIndex < positionCount()");
        }

        v18 = vsubq_f32(*v17, *(v56 + 16 * v15));
        v19 = (*a4 + 16 * v15);
        if (v11)
        {
          if (v15 >= ((v59 - v58) >> 4))
          {
            __assert_rtn("normal", "AMTTriangleMesh.hpp", 113, "normalIndex >= 0 && normalIndex < normalCount()");
          }

          v20 = 0;
          v21 = *(v58 + 16 * v15);
          v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
          v23 = vmlaq_f32(vmulq_f32(v21, xmmword_23E786AA0), xmmword_23E786AB0, v22);
          v24 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
          v26.i64[1] = 3212836864;
          v25 = vmulq_f32(v21, xmmword_23E786AC0);
          v26.i64[0] = 0;
          do
          {
            v54 = v24;
            v27 = *(&v54 & 0xFFFFFFFFFFFFFFF3 | (4 * (v20 & 3)));
            v26.f32[0] = v26.f32[0] + (v27 * v27);
            ++v20;
          }

          while (v20 != 3);
          v28 = 0;
          v29 = vmlaq_f32(v25, xmmword_23E786AD0, v22);
          v31 = vuzp1q_s32(v29, v29);
          v30 = vextq_s8(v31, v29, 0xCuLL);
          v31.i64[0] = 0;
          do
          {
            v53 = v30;
            v32 = *(&v53 & 0xFFFFFFFFFFFFFFF3 | (4 * (v28 & 3)));
            v31.f32[0] = v31.f32[0] + (v32 * v32);
            ++v28;
          }

          while (v28 != 3);
          v33 = 0;
          v34 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v26, v31)), 0), v30, v24);
          v35 = 0.0;
          do
          {
            v52 = v34;
            v36 = *(&v52 & 0xFFFFFFFFFFFFFFF3 | (4 * (v33 & 3)));
            v35 = v35 + (v36 * v36);
            ++v33;
          }

          while (v33 != 3);
          if (v35 != 0.0)
          {
            v34 = vmulq_n_f32(v34, 1.0 / sqrtf(v35));
          }

          v37 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), vnegq_f32(v21)), v34, v22);
          v38 = vmulq_f32(v18, v21);
          v39 = vmulq_f32(v18, v34);
          v40 = vmulq_f32(v18, vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL));
          *v19 = vadd_f32(vzip1_s32(*&vextq_s8(v38, v38, 8uLL), *&vextq_s8(v39, v39, 8uLL)), vadd_f32(vzip1_s32(*v38.i8, *v39.i8), vzip2_s32(*v38.i8, *v39.i8)));
          v19[1].f32[0] = v40.f32[2] + vaddv_f32(*v40.f32);
          v18 = *v19->f32;
        }

        else
        {
          *v19->f32 = v18;
        }

        v49 = vmlaq_f32(v49, v18, v18);
        *v61 = v49;
        ++v15;
      }

      while (v15 != v16);
    }

    v41 = 0;
    v42 = vsubq_f32(a3[1], *a3);
    v43 = 0.0;
    do
    {
      v51 = v42;
      v44 = *(&v51 & 0xFFFFFFFFFFFFFFF3 | (4 * (v41 & 3)));
      v43 = v43 + (v44 * v44);
      ++v41;
    }

    while (v41 != 3);
    v45 = 0;
    v46 = v43 / ((*(a2 + 4) - *(a2 + 3)) >> 4);
    do
    {
      v50 = *v61;
      *(&v50 & 0xFFFFFFFFFFFFFFF3 | (4 * (v45 & 3))) = sqrtf(v46 * *(&v50 & 0xFFFFFFFFFFFFFFF3 | (4 * (v45 & 3))));
      *&v61[8] = DWORD2(v50);
      *v61 = v50;
      ++v45;
    }

    while (v45 != 3);
    amt::Operation::ostat(v60, @"info.average_displacement_magnitude", v61);
    amt::TriangleMesh::~TriangleMesh(&v55.__r_.__value_.__l.__data_);
  }

  _ZN3amt9Operation5ostatIDv3_fEEvPK10__CFStringRKNSt3__16vectorIT_NS6_9allocatorIS8_EEEE(v60, @"info.displacement", a4);
  v47 = amt::Operation::end(v60);
  amt::Operation::~Operation(v60);
  return v47;
}

void sub_23E75C670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  amt::TriangleMesh::~TriangleMesh(&a29);
  amt::Operation::~Operation(&a56);
  _Unwind_Resume(a1);
}

_OWORD *amt::TriangleMesh::computeNormals(amt::TriangleMesh *this, char a2)
{
  v4 = ((*(this + 4) - *(this + 3)) >> 4);
  v24 = 0u;
  result = _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6assignEmRKS1_(this + 18, v4, &v24);
  v6 = *(this + 9);
  v7 = *(this + 10);
  while (v6 != v7)
  {
    v8 = *v6;
    v9 = v6[1];
    v10 = v6[2];
    v11 = *(this + 3);
    v12 = *(v11 + 16 * v8);
    v13 = vsubq_f32(*(v11 + 16 * v10), v12);
    v14 = vsubq_f32(*(v11 + 16 * v9), v12);
    v15 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL), vnegq_f32(v14)), v13, vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL));
    v16 = vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL);
    *(*(this + 18) + 16 * v8) = vaddq_f32(*(*(this + 18) + 16 * v8), v16);
    *(*(this + 18) + 16 * v9) = vaddq_f32(v16, *(*(this + 18) + 16 * v9));
    *(*(this + 18) + 16 * v10) = vaddq_f32(v16, *(*(this + 18) + 16 * v10));
    v6 += 3;
  }

  if (a2)
  {
    v17 = *(this + 18);
    for (i = *(this + 19); v17 != i; ++v17)
    {
      v19 = 0;
      v20 = *v17;
      v21 = 0.0;
      do
      {
        v23 = v20;
        v22 = *(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v19 & 3)));
        v21 = v21 + (v22 * v22);
        ++v19;
      }

      while (v19 != 3);
      if (v21 != 0.0)
      {
        *v17 = vmulq_n_f32(v20, 1.0 / sqrtf(v21));
      }
    }
  }

  return result;
}

uint64_t std::swap[abi:ne200100]<amt::MeshSubdivisionInfo>(uint64_t a1, uint64_t a2)
{
  amt::MeshSubdivisionInfo::MeshSubdivisionInfo(v7, a1);
  amt::Adjacency<AMTPair>::operator=(a1, a2);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1 + 72, (a2 + 72));
  amt::Adjacency<AMTPair>::operator=((a1 + 96), (a2 + 96));
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(a1 + 168, (a2 + 168));
  *(a1 + 192) = *(a2 + 192);
  amt::Adjacency<AMTPair>::operator=(a2, v7);
  v4 = *(a2 + 72);
  if (v4)
  {
    *(a2 + 80) = v4;
    operator delete(v4);
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
  }

  *(a2 + 72) = *__p;
  *(a2 + 88) = v9;
  __p[1] = 0;
  v9 = 0;
  __p[0] = 0;
  amt::Adjacency<AMTPair>::operator=((a2 + 96), v10);
  v5 = *(a2 + 168);
  if (v5)
  {
    *(a2 + 176) = v5;
    operator delete(v5);
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
  }

  *(a2 + 168) = v11;
  *(a2 + 184) = v12;
  v12 = 0;
  v11 = 0uLL;
  *(a2 + 192) = v13;
  amt::Adjacency<int>::~Adjacency(v10);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return amt::Adjacency<int>::~Adjacency(v7);
}

void sub_23E75C908(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amt::MeshSubdivisionInfo::~MeshSubdivisionInfo(va);
  _Unwind_Resume(a1);
}

uint64_t AMTMeshSourceCreateWithAttributes(const __CFAllocator *a1, void *a2, char a3, uint64_t a4)
{
  v8 = a2[1] - *a2;
  v9 = MEMORY[0x23EF11640](a1, v8, 0x100004077774924, 0);
  if (v8 >> 4 >= 1)
  {
    v10 = 0;
    v11 = v8 >> 4;
    do
    {
      v12 = *(*a2 + v10);
      *&v9[v10 + 8] = DWORD2(v12);
      *&v9[v10] = v12;
      v10 += 16;
      --v11;
    }

    while (v11);
  }

  v15 = CFDataCreateWithBytesNoCopy(a1, v9, v8, a1);
  v13 = AMTMeshSourceCreateWithData(a1, v15, a3, a4, 9, v8 >> 4, 3, 0, 16);
  amt::AMTWrapper<__CFData const*>::~AMTWrapper(&v15);
  return v13;
}

void sub_23E75CA0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amt::AMTWrapper<__CFData const*>::~AMTWrapper(va);
  _Unwind_Resume(a1);
}

uint64_t AMTMeshSourceCreateWithMeshSource(const __CFAllocator *a1, unsigned __int8 *a2, void *a3)
{
  VectorCount = AMTMeshSourceGetVectorCount(a2);
  v7 = (a3[1] - *a3) >> 2;
  ComponentsPerVector = AMTMeshSourceGetComponentsPerVector(a2);
  Semantic = AMTMeshSourceGetSemantic(a2);
  Instance = AMTMeshSourceGetInstance(a2);
  DataStride = AMTMeshSourceGetDataStride(a2);
  DataType = AMTMeshSourceGetDataType(a2);
  v23 = Semantic;
  v22 = DataType;
  if ((DataType + 1) > 0xBu)
  {
    v12 = 1;
  }

  else
  {
    v12 = qword_23E787788[(DataType + 1)];
  }

  bytesDeallocator = a1;
  v13 = MEMORY[0x23EF11640](a1, DataStride * v7, 0x100004077774924, 0);
  v14 = v13;
  if (v7 < 1)
  {
LABEL_9:
    v26 = CFDataCreateWithBytesNoCopy(bytesDeallocator, v14, DataStride * v7, bytesDeallocator);
    v20 = AMTMeshSourceCreateWithData(bytesDeallocator, v26, v23, Instance, v22, v7, ComponentsPerVector, 0, DataStride);
    amt::AMTWrapper<__CFData const*>::~AMTWrapper(&v26);
  }

  else
  {
    v15 = 0;
    v16 = v12 * ComponentsPerVector;
    v17 = v13;
    while (1)
    {
      v18 = *(*a3 + 4 * v15);
      if ((v18 & 0x80000000) != 0 || VectorCount <= v18)
      {
        break;
      }

      v19 = __AMTMeshSource::vectorAtIndex<double>(a2, v18);
      memcpy(v17, v19, v16);
      ++v15;
      v17 += DataStride;
      if (v7 == v15)
      {
        goto LABEL_9;
      }
    }

    CFAllocatorDeallocate(bytesDeallocator, v14);
    return 0;
  }

  return v20;
}

void sub_23E75CBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  amt::AMTWrapper<__CFData const*>::~AMTWrapper(va);
  _Unwind_Resume(a1);
}

void amt::MeshSubdivisionInfo::~MeshSubdivisionInfo(amt::MeshSubdivisionInfo *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  amt::Adjacency<int>::~Adjacency(this + 96);
  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  amt::Adjacency<int>::~Adjacency(this);
}

float32x4_t *amt::updateSamples(float32x4_t *result, uint64_t a2, uint64_t *a3, int *a4, float a5, float a6, float a7)
{
  v7 = *(a2 + 24);
  v8 = v7 + -1.0;
  if (v8 < 0.0)
  {
    amt::updateSamples();
  }

  v9 = *(a2 + 28);
  v10 = v9 + -1.0;
  v11 = *a4 + a5 * ((v7 * a7) + -1.0);
  v12 = floor(v11);
  if (v8 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v7 + -1.0;
  }

  if (v12 >= 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = ceil(v11);
  if (v8 >= v15)
  {
    v8 = v15;
  }

  if (v15 < 0.0)
  {
    v8 = 0.0;
  }

  if (v10 < 0.0)
  {
    amt::updateSamples();
  }

  v16 = a4[1] + a6 * ((v9 * a7) + -1.0);
  v17 = floor(v16);
  if (v10 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v9 + -1.0;
  }

  if (v17 >= 0.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0.0;
  }

  v20 = v19;
  v21 = ceil(v16);
  if (v10 >= v21)
  {
    v10 = v21;
  }

  if (v21 >= 0.0)
  {
    v22 = v10;
  }

  else
  {
    v22 = 0.0;
  }

  v23 = *(a3 + 7);
  if (v23 <= v20)
  {
    amt::updateSamples();
  }

  v24 = v22;
  v25 = v11 - v14;
  v26 = v16 - v20;
  v27 = (1.0 - v25) * (1.0 - v26);
  v28 = v25 * (1.0 - v26);
  v29 = *a3;
  v30 = *(a3 + 6);
  v31 = *a3 + 4 * v30 * v20;
  *(v31 + 4 * v14) = *(v31 + 4 * v14) + v27;
  *(v31 + 4 * v8) = *(v31 + 4 * v8) + v28;
  if (v23 <= v22)
  {
    amt::updateSamples();
  }

  v32 = (1.0 - v25) * v26;
  v33 = v25 * v26;
  v34 = v14;
  v35 = v8;
  v36 = v29 + 4 * v30 * v24;
  *(v36 + 4 * v34) = *(v36 + 4 * v34) + v32;
  *(v36 + 4 * v35) = *(v36 + 4 * v35) + v33;
  if (v9 <= v20)
  {
    amt::updateSamples();
  }

  v37 = *a2 + 16 * v7 * v20;
  *(v37 + 16 * v34) = vmlaq_n_f32(*(v37 + 16 * v34), *result, v27);
  if (*(a2 + 28) <= v20)
  {
    amt::updateSamples();
  }

  v38 = *a2 + 16 * *(a2 + 24) * v20;
  *(v38 + 16 * v35) = vmlaq_n_f32(*(v38 + 16 * v35), *result, v28);
  if (*(a2 + 28) <= v24)
  {
    amt::updateSamples();
  }

  v39 = *a2 + 16 * *(a2 + 24) * v24;
  *(v39 + 16 * v34) = vmlaq_n_f32(*(v39 + 16 * v34), *result, v32);
  if (*(a2 + 28) <= v24)
  {
    amt::updateSamples();
  }

  v40 = *a2 + 16 * *(a2 + 24) * v24;
  *(v40 + 16 * v35) = vmlaq_n_f32(*(v40 + 16 * v35), *result, v33);
  return result;
}

__CFDictionary *amt::formatStats(float *a1, CFAllocatorRef *a2)
{
  Mutable = CFDictionaryCreateMutable(*a2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (*a1 == 0.0)
  {
    v4 = 3.40282347e38;
  }

  else
  {
    v4 = (log10f(a1[10] / *a1) * 10.0);
  }

  valuePtr = v4;
  v26 = CFNumberCreate(*a2, kCFNumberDoubleType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"info.metrics.d1_psnr", v26);
  v5 = a1[2];
  if (v5 == 0.0)
  {
    v6 = 3.40282347e38;
  }

  else
  {
    v6 = (log10f(a1[10] / v5) * 10.0);
  }

  v25 = v6;
  v24 = CFNumberCreate(*a2, kCFNumberDoubleType, &v25);
  CFDictionaryAddValue(Mutable, @"info.metrics.d2_psnr", v24);
  v7 = a1[4];
  if (v7 == 0.0)
  {
    v8 = 3.40282347e38;
  }

  else
  {
    v9 = log10(1.0 / v7) * 10.0;
    v8 = v9;
  }

  v23 = v8;
  v22 = CFNumberCreate(*a2, kCFNumberDoubleType, &v23);
  CFDictionaryAddValue(Mutable, @"info.metrics.y_psnr", v22);
  v10 = a1[6];
  if (v10 == 0.0)
  {
    v11 = 3.40282347e38;
  }

  else
  {
    v12 = log10(1.0 / v10) * 10.0;
    v11 = v12;
  }

  v21 = v11;
  v20 = CFNumberCreate(*a2, kCFNumberDoubleType, &v21);
  CFDictionaryAddValue(Mutable, @"info.metrics.u_psnr", v20);
  v13 = a1[8];
  if (v13 == 0.0)
  {
    v14 = 3.40282347e38;
  }

  else
  {
    v15 = log10(1.0 / v13) * 10.0;
    v14 = v15;
  }

  v19 = v14;
  v18 = CFNumberCreate(*a2, kCFNumberDoubleType, &v19);
  CFDictionaryAddValue(Mutable, @"info.metrics.v_psnr", v18);
  v16 = Mutable;
  Mutable = 0;
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v18);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v20);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v22);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v24);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v26);
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&Mutable);
  return v16;
}

void sub_23E75D110(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  v9 = va_arg(va2, void);
  va_copy(va3, va2);
  v10 = va_arg(va3, const void *);
  v12 = va_arg(va3, void);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(va);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(va1);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(va2);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(va3);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper((v2 - 56));
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper((v2 - 40));
  _Unwind_Resume(a1);
}

CFMutableDictionaryRef amt::AMTComputeQuality(void *a1, void *a2, const __CFArray *a3, const __CFArray *a4, uint64_t a5, uint64_t a6)
{
  if (!a1 || (v11 = CFGetTypeID(a1), v11 != AMTMeshGetTypeID()))
  {
    amt::AMTComputeQuality();
  }

  if (!a2 || (v12 = CFGetTypeID(a2), v12 != AMTMeshGetTypeID()))
  {
    amt::AMTComputeQuality();
  }

  v13 = *(a6 + 32);
  if (v13 && (v13(*(a6 + 80)) & 1) == 0)
  {
    v28 = 0;
    if (*(a6 + 16))
    {
      **(a6 + 16) = AMTErrorCreateWithErrorCode(-2);
    }
  }

  else
  {
    *v64 = 0;
    v63 = 0;
    memset(v62, 0, sizeof(v62));
    v61 = 0;
    memset(v60, 0, sizeof(v60));
    v59 = 0;
    memset(v58, 0, sizeof(v58));
    v57 = 0;
    memset(v56, 0, sizeof(v56));
    v52 = 0x40000000800;
    v53 = 2;
    v54 = 1;
    if ((amt::parseAttributeMapTransferParameters(&v52, a6) & 1) != 0 && (HIDWORD(v52) = 1024, amt::computeHighestAttributeMapResolution(a3, &v64[1], v64, a6)) && amt::convert(a2, v62, a6) && amt::convert(a1, v60, a6) && amt::computeBoundingBox(v62, v55, a6) && (v15 = v64[0], v14 = v64[1], amt::sampleMesh(v62, v55, v64[1], v64[0], v58, 1, a6, &v52)) && amt::sampleMesh(v60, v55, v14, v15, v56, 1, a6, &v52) && amt::assignPointCloudColors(v58, a3, a6) && amt::assignPointCloudColors(v56, a4, a6))
    {
      Count = CFArrayGetCount(a3);
      if (Count < 1)
      {
        v19 = -1;
        v18 = -1;
      }

      else
      {
        v17 = 0;
        v18 = -1;
        v19 = -1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a3, v17);
          v21 = ValueAtIndex;
          if (ValueAtIndex)
          {
            v22 = CFGetTypeID(ValueAtIndex);
            if (v22 == CFDictionaryGetTypeID())
            {
              Value = CFDictionaryGetValue(v21, @"info.attribute_map");
              amt::AMTImageWrapper::AMTImageWrapper(v51, Value);
              v24 = amt::AMTImageWrapper::colorSpace(v51);
              Name = CGColorSpaceGetName(v24);
              CStringPtr = CFStringGetCStringPtr(Name, 0);
              std::string::basic_string[abi:ne200100]<0>(&__p, CStringPtr);
              v27 = std::string::find[abi:ne200100](&__p, "RGB", 0);
              if (v27 != -1)
              {
                v19 = amt::AMTImageWrapper::bitsPerComponent(v51);
                v18 = v17;
              }

              if (SBYTE7(v49) < 0)
              {
                operator delete(__p);
              }

              amt::AMTImageWrapper::~AMTImageWrapper(v51);
              if (v27 != -1)
              {
                break;
              }
            }
          }

          ++v17;
        }

        while (Count != v17);
      }

      *v30.i64 = amt::TriangleMesh::boundingBox(v62);
      v31 = 0;
      v33 = vsubq_f32(v32, v30);
      v34 = 0.0;
      do
      {
        v38 = v33;
        v35 = *(&v38 & 0xFFFFFFFFFFFFFFF3 | (4 * (v31 & 3)));
        v34 = v34 + (v35 * v35);
        ++v31;
      }

      while (v31 != 3);
      v36 = sqrtf(v34);
      amt::computePointCloudDistance(v58, v56, 1, v36, v18, v19, v51);
      amt::computePointCloudDistance(v56, v58, 0, v36, v18, v19, &__p);
      amt::max(v51, &__p, v47);
      theDict = CFDictionaryCreateMutable(*a6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      theArray = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 3, MEMORY[0x277CBF128]);
      CFDictionaryAddValue(theDict, @"info.metrics", theArray);
      v41 = v51[0];
      v42 = v51[1];
      v43 = v51[2];
      v44 = amt::formatStats(&v41, a6);
      CFArrayAppendValue(theArray, v44);
      v41 = __p;
      v42 = v49;
      v43 = v50;
      v40 = amt::formatStats(&v41, a6);
      CFArrayAppendValue(theArray, v40);
      v41 = v47[0];
      v42 = v47[1];
      v43 = v47[2];
      v39 = amt::formatStats(&v41, a6);
      CFArrayAppendValue(theArray, v39);
      v37 = *(a6 + 40);
      if (v37 && (v37(*(a6 + 24), *(a6 + 80)) & 1) == 0)
      {
        v28 = 0;
        if (*(a6 + 16))
        {
          **(a6 + 16) = AMTErrorCreateWithErrorCode(-2);
        }
      }

      else
      {
        v28 = theDict;
        theDict = 0;
      }

      amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(&v39);
      amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(&v40);
      amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(&v44);
      amt::AMTWrapper<__CFArray *>::~AMTWrapper(&theArray);
      amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&theDict);
    }

    else
    {
      v28 = 0;
    }

    amt::TriangleMesh::~TriangleMesh(v56);
    amt::TriangleMesh::~TriangleMesh(v58);
    amt::TriangleMesh::~TriangleMesh(v60);
    amt::TriangleMesh::~TriangleMesh(v62);
  }

  return v28;
}

void sub_23E75D700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, const void *a19, const void *a20, const void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49)
{
  amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(&a12);
  amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(&a19);
  amt::AMTWrapper<__CFArray *>::~AMTWrapper(&a20);
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&a21);
  amt::TriangleMesh::~TriangleMesh(&a49);
  amt::TriangleMesh::~TriangleMesh(&STACK[0x220]);
  amt::TriangleMesh::~TriangleMesh(&STACK[0x300]);
  amt::TriangleMesh::~TriangleMesh(&STACK[0x3E0]);
  _Unwind_Resume(a1);
}

uint64_t amt::parseAttributeMapTransferParameters(_DWORD *a1, uint64_t a2)
{
  result = amt::AMTPipelineOptions::info(*a2, a2);
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    if (amt::AMTPipelineOptions::parse(*(a2 + 8), v5, a1))
    {
      return 1;
    }

    if (*(a2 + 16))
    {
      v7 = AMTErrorCreateWithErrorCode(-1);
      result = 0;
      **(a2 + 16) = v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t amt::computeHighestAttributeMapResolution(const void *a1, int *a2, int *a3, uint64_t a4)
{
  amt::Operation::Operation(v24, @"Compute Highest Attribute Map Resolution", a4);
  if (theDict)
  {
    CFDictionaryAddValue(theDict, @"info.attribute_map_array", a1);
  }

  if (!amt::Operation::start(v24))
  {
    goto LABEL_18;
  }

  if (!a1 || (v8 = CFGetTypeID(a1), v8 != CFArrayGetTypeID()))
  {
    __assert_rtn("computeHighestAttributeMapResolution", "AMTPipeline.cpp", 1174, "sourceAttributeMaps && CFGetTypeID(sourceAttributeMaps) == CFArrayGetTypeID()");
  }

  Count = CFArrayGetCount(a1);
  *a2 = 0;
  *a3 = 0;
  if (Count < 1)
  {
    goto LABEL_18;
  }

  v10 = 0;
  for (i = 0; i != Count; v10 = i >= Count)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
    v13 = ValueAtIndex;
    if (!ValueAtIndex)
    {
      break;
    }

    v14 = CFGetTypeID(ValueAtIndex);
    if (v14 != CFDictionaryGetTypeID())
    {
      break;
    }

    Value = CFDictionaryGetValue(v13, @"info.attribute_map");
    v16 = Value;
    if (!Value)
    {
      break;
    }

    v17 = CFGetTypeID(Value);
    if (v17 != CGImageGetTypeID())
    {
      break;
    }

    Width = CGImageGetWidth(v16);
    v19 = *a2;
    if (*a2 <= Width)
    {
      v19 = Width;
    }

    *a2 = v19;
    Height = CGImageGetHeight(v16);
    v21 = *a3;
    if (*a3 <= Height)
    {
      v21 = Height;
    }

    *a3 = v21;
    ++i;
  }

  if (!v10)
  {
    v22 = 0;
    if (*(a4 + 16))
    {
      **(a4 + 16) = AMTErrorCreateWithErrorCode(-1);
    }
  }

  else
  {
LABEL_18:
    amt::Operation::ostat(v24, @"info.attribute_map_width", *a2);
    amt::Operation::ostat(v24, @"info.attribute_map_height", *a3);
    v22 = amt::Operation::end(v24);
  }

  amt::Operation::~Operation(v24);
  return v22;
}

void sub_23E75DA78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amt::Operation::~Operation(va);
  _Unwind_Resume(a1);
}

uint64_t amt::computeBoundingBox(const amt::TriangleMesh *a1, float32x4_t *a2, uint64_t a3)
{
  amt::Operation::Operation(v27, @"Compute Bounding Box", a3);
  amt::Operation::istat(v27, @"info.mesh", a1);
  if (amt::Operation::start(v27))
  {
    v5 = *(a1 + 3);
    v6 = *(a1 + 4);
    v7.i64[0] = 0x80000000800000;
    v7.i64[1] = 0x80000000800000;
    v8 = vnegq_f32(v7);
    while (v5 != v6)
    {
      v9 = 0;
      v10 = *v5;
      do
      {
        v11 = v8.i32[3];
        v12 = v7;
        v13 = (&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
        v14 = (&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
        v26 = v8;
        v15 = *v14;
        v24 = v10;
        v16 = *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
        if (v16 < v15)
        {
          v15 = *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3)));
        }

        *v14 = v15;
        v8 = v26;
        v8.i32[3] = v11;
        v25 = v12;
        if (*v13 >= v16)
        {
          v16 = *v13;
        }

        *v13 = v16;
        v7 = v25;
        v7.i32[3] = v12.i32[3];
        ++v9;
      }

      while (v9 != 3);
      ++v5;
    }

    a2->i32[2] = v8.i32[2];
    a2->i64[0] = v8.i64[0];
    a2[1].i32[2] = v7.i32[2];
    a2[1].i64[0] = v7.i64[0];
    v18 = *a2;
    v17 = vsubq_f32(a2[1], *a2);
    v18.i32[0] = v17.i32[1];
    if (v17.f32[1] < v17.f32[2])
    {
      v18.f32[0] = v17.f32[2];
    }

    if (v17.f32[0] >= v18.f32[0])
    {
      v18.f32[0] = v17.f32[0];
    }

    v18.f32[0] = v18.f32[0] * 0.5;
    v19.i64[0] = 0x3F0000003F000000;
    v19.i64[1] = 0x3F0000003F000000;
    v20 = vmulq_f32(v17, v19);
    v21 = vdupq_lane_s32(*v18.f32, 0);
    *a2 = vsubq_f32(v20, v21);
    a2[1] = vaddq_f32(v20, v21);
  }

  amt::Operation::ostat(v27, @"info.bounding_box", a2);
  v22 = amt::Operation::end(v27);
  amt::Operation::~Operation(v27);
  return v22;
}

void sub_23E75DC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  amt::Operation::~Operation(va);
  _Unwind_Resume(a1);
}

uint64_t amt::sampleMesh(const amt::TriangleMesh *a1, float32x4_t *a2, int a3, int a4, amt::TriangleMesh *a5, char a6, uint64_t a7, uint64_t a8)
{
  v152 = *MEMORY[0x277D85DE8];
  amt::Operation::Operation(v142, @"Sample Mesh", a7);
  amt::Operation::istat(v142, @"info.mesh", a1);
  if (*(a8 + 15) == 1)
  {
    v14 = std::string::basic_string[abi:ne200100]<0>(&v149, "sample_mesh_input.obj");
    amt::saveMeshObj(v14, a1);
    if (v150.i8[7] < 0)
    {
      operator delete(v149.i64[0]);
    }
  }

  if (amt::Operation::start(v142))
  {
    v15 = *(a8 + 4);
    if (a3 <= a4)
    {
      v16 = a4;
    }

    else
    {
      v16 = a3;
    }

    if (v15 <= 2)
    {
      v15 = v16;
    }

    v17 = vsubq_f32(a2[1], *a2);
    v18 = v17.f32[1];
    if (v17.f32[1] < v17.f32[2])
    {
      v18 = v17.f32[2];
    }

    if (v17.f32[0] < v18)
    {
      v17.f32[0] = v18;
    }

    v107 = -1431655765 * ((*(a1 + 10) - *(a1 + 9)) >> 2);
    if (v107 >= 1)
    {
      v19 = 0;
      v17.f32[0] = (1.0 / (v15 - 1)) * v17.f32[0];
      v126 = v17.f32[0];
      v106 = vdupq_lane_s32(*v17.f32, 0);
      v117 = a5;
      v105 = a8;
      do
      {
        amt::TriangleMesh::triangle(a1, v19, v147);
        for (i = 0; i != 3; ++i)
        {
          *(&v149 + i) = *amt::TriangleMesh::position(a1, v147[i]);
        }

        v21 = v149;
        v22 = vsubq_f32(v150, v149);
        v23 = vsubq_f32(v151, v149);
        v24 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
        v25 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
        v120 = v23;
        v26 = vmlaq_f32(vmulq_f32(v25, vnegq_f32(v22)), v23, v24);
        v27 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
        v28 = vmulq_f32(v26, v26);
        v28.f32[0] = sqrtf(v28.f32[1] + (v28.f32[2] + v28.f32[0]));
        if (v28.f32[0] != 0.0)
        {
          v27 = vdivq_f32(v27, vdupq_lane_s32(*v28.f32, 0));
        }

        a5 = v117;
        v29 = 0;
        v146 = v27;
        v30.i64[0] = 0x80000000800000;
        v30.i64[1] = 0x80000000800000;
        v31 = vnegq_f32(v30);
        do
        {
          v32 = 0;
          v33 = *(&v149 + v29);
          do
          {
            v34 = v31.i32[3];
            v35 = v30;
            v36 = (&v141 & 0xFFFFFFFFFFFFFFF3 | (4 * (v32 & 3)));
            v141 = v31;
            v37 = *v36;
            v139 = v33;
            v38 = *(&v139 & 0xFFFFFFFFFFFFFFF3 | (4 * (v32 & 3)));
            if (v38 < v37)
            {
              v37 = *(&v139 & 0xFFFFFFFFFFFFFFF3 | (4 * (v32 & 3)));
            }

            *v36 = v37;
            v39 = v141;
            v31 = v141;
            v31.i32[3] = v34;
            v40 = (&v140 & 0xFFFFFFFFFFFFFFF3 | (4 * (v32 & 3)));
            v140 = v35;
            v41 = *v40;
            if (*v40 < v38)
            {
              v41 = v38;
            }

            *v40 = v41;
            v42 = v140;
            v30 = v140;
            v30.i32[3] = v35.i32[3];
            ++v32;
          }

          while (v32 != 3);
          ++v29;
        }

        while (v29 != 3);
        v119 = v19;
        v43 = 0;
        v44 = *a2;
        v45 = v108;
        v46 = v109;
        do
        {
          v47 = v45;
          v48 = v46.i32[3];
          v136 = v39;
          v49 = *(&v136 & 0xFFFFFFFFFFFFFFF3 | (4 * (v43 & 3)));
          v135 = v44;
          v50 = *(&v135 & 0xFFFFFFFFFFFFFFF3 | (4 * (v43 & 3)));
          v138 = v46;
          *(&v138 & 0xFFFFFFFFFFFFFFF3 | (4 * (v43 & 3))) = floorf((v49 - v50) / v126);
          v51 = v138;
          v46 = v138;
          v46.i32[3] = v48;
          v134 = v42;
          v52 = ceilf((*(&v134 & 0xFFFFFFFFFFFFFFF3 | (4 * (v43 & 3))) - v50) / v126);
          v137 = v47;
          *(&v137 & 0xFFFFFFFFFFFFFFF3 | (4 * (v43 & 3))) = v52;
          v45 = v137;
          v45.i32[3] = v47.i32[3];
          ++v43;
        }

        while (v43 != 3);
        v108 = v45;
        v109 = v46;
        v53 = vsubq_f32(v137, v51);
        v54 = fabsf(v27.f32[0]);
        v55 = vabs_f32(*&vextq_s8(v27, v27, 4uLL));
        v56 = v54 >= v55.f32[0];
        v57 = v54 >= v55.f32[1];
        if (v55.f32[0] >= v55.f32[1])
        {
          v58 = 1;
        }

        else
        {
          v58 = 2;
        }

        if (v55.f32[0] < v55.f32[1])
        {
          v59 = 1;
        }

        else
        {
          v59 = 2;
        }

        v61 = v56 && v57;
        _ZF = !v56 || !v57;
        if (v56 && v57)
        {
          v62 = 0;
        }

        else
        {
          v62 = v58;
        }

        if (_ZF)
        {
          v63 = v59;
        }

        else
        {
          v63 = 2;
        }

        v133 = 0u;
        *(&v133 & 0xFFFFFFFFFFFFFFF3 | (4 * (v62 & 3))) = 1065353216;
        v64 = v133;
        v132 = v53;
        v111 = *(&v132 & 0xFFFFFFFFFFFFFFF3 | (4 * (v61 & 3)));
        if ((v111 & 0x80000000) == 0)
        {
          v121 = 0;
          v131 = v53;
          v65 = *(&v131 & 0xFFFFFFFFFFFFFFF3 | (4 * (v63 & 3)));
          v130 = v51;
          v110 = *(&v130 & 0xFFFFFFFFFFFFFFF3 | (4 * (v61 & 3)));
          v66 = v65;
          v67 = vmlaq_f32(v44, v106, v51);
          v68 = *(&v130 | (4 * v63));
          v69 = vmlaq_f32(vmulq_f32(v25, vnegq_f32(v133)), v120, vextq_s8(vuzp1q_s32(v133, v133), v133, 0xCuLL));
          v70 = vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL);
          v71 = vmulq_f32(v22, v70);
          v71.f32[0] = v71.f32[2] + vaddv_f32(*v71.f32);
          v72 = fabsf(v71.f32[0]);
          v73 = 1.0 / v71.f32[0];
          v115 = v22;
          v116 = v21;
          v113 = v133;
          v114 = v24;
          v112 = v70;
          do
          {
            if (v66 < 0)
            {
              v77 = v67;
            }

            else
            {
              v74 = 0;
              do
              {
                v127 = *a2;
                v75 = *(&v127 & 0xFFFFFFFFFFFFFFF3 | (4 * (v61 & 3))) + ((v110 + v121) * v126);
                v128 = v67;
                *(&v128 & 0xFFFFFFFFFFFFFFF3 | (4 * (v61 & 3))) = v75;
                v76 = *(&v127 | (4 * v63)) + ((v68 + v74) * v126);
                v129 = v128;
                *(&v129 & 0xFFFFFFFFFFFFFFF3 | (4 * (v63 & 3))) = v76;
                v77 = v129;
                if (v72 >= 0.000000001)
                {
                  v78 = vsubq_f32(v129, v21);
                  v79 = vmulq_f32(v70, v78);
                  v80 = v73 * (v79.f32[2] + vaddv_f32(*v79.f32));
                  if (v80 >= 0.0 && v80 <= 1.0)
                  {
                    v82 = vmlaq_f32(vmulq_f32(v24, vnegq_f32(v78)), v22, vextq_s8(vuzp1q_s32(v78, v78), v78, 0xCuLL));
                    v83 = vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL);
                    v84 = vmulq_f32(v64, v83);
                    v85 = v73 * (v84.f32[2] + vaddv_f32(*v84.f32));
                    if (v85 >= 0.0 && v80 + v85 <= 1.0)
                    {
                      v122 = v129;
                      v123 = v67.i32[3];
                      v87 = vmulq_f32(v120, v83);
                      v87.f32[0] = v73 * (v87.f32[2] + vaddv_f32(*v87.f32));
                      v145 = vmlaq_n_f32(v129, v64, v87.f32[0]);
                      amt::TriangleMesh::texCoordTriangle(a1, v119, v144);
                      v88 = 0;
                      v89 = v80;
                      v124 = v89;
                      v90 = v85;
                      v125 = v90;
                      do
                      {
                        v91 = amt::TriangleMesh::texCoord(a1, v144[v88]);
                        __asm { FMOV            V2.2S, #1.0 }

                        v96 = vbsl_s8(vorn_s8(vmvn_s8(vcgez_f32(*v91)), vcge_f32(_D2, *v91)), vsub_f32(*v91, vrndm_f32(*v91)), *v91);
                        v148[v88] = v96;
                        if (*v96.i32 < 0.0 || *v96.i32 > 1.0)
                        {
                          v103 = 998;
                          v104 = "texCoords[h][0] >= 0.0 && texCoords[h][0] <= 1.0";
                          goto LABEL_83;
                        }

                        if (*&v96.i32[1] < 0.0 || *&v96.i32[1] > 1.0)
                        {
                          v103 = 999;
                          v104 = "texCoords[h][1] >= 0.0 && texCoords[h][1] <= 1.0";
LABEL_83:
                          __assert_rtn("sampleMeshUniformGrid", "AMTPipeline.cpp", v103, v104);
                        }

                        ++v88;
                      }

                      while (v88 != 3);
                      v143 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v148[1], v124), v148[0], (1.0 - v124) - v125), v148[2], v125);
                      a5 = v117;
                      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(v117 + 24, &v145);
                      amt::TriangleMesh::addTexCoord(v117, &v143);
                      if (a6)
                      {
                        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(v117 + 144, &v146);
                      }

                      v22 = v115;
                      v21 = v116;
                      v64 = v113;
                      v24 = v114;
                      v77 = v122;
                      v67.i32[3] = v123;
                      v70 = v112;
                    }
                  }
                }

                v77.i32[3] = v67.i32[3];
                v67 = v77;
                _ZF = v74++ == v66;
              }

              while (!_ZF);
            }

            v67 = v77;
            _ZF = v121++ == v111;
          }

          while (!_ZF);
        }

        v19 = v119 + 1;
        a8 = v105;
      }

      while (v119 + 1 != v107);
    }
  }

  if (*(a8 + 15) == 1)
  {
    v99 = std::string::basic_string[abi:ne200100]<0>(&v149, "sample_mesh_output.obj");
    amt::saveMeshObj(v99, a5);
    if (v150.i8[7] < 0)
    {
      operator delete(v149.i64[0]);
    }
  }

  amt::Operation::ostat(v142, @"info.mesh", a5);
  v100 = amt::Operation::end(v142);
  amt::Operation::~Operation(v142);
  v101 = *MEMORY[0x277D85DE8];
  return v100;
}

void sub_23E75E3A0(_Unwind_Exception *a1)
{
  if (*(v1 - 185) < 0)
  {
    operator delete(*(v1 - 208));
  }

  amt::Operation::~Operation(&STACK[0x220]);
  _Unwind_Resume(a1);
}

uint64_t amt::assignPointCloudColors(const amt::TriangleMesh *a1, const __CFArray *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v10[7].__d_.__rep_ = a2;
  amt::Operation::Operation(v10, @"Retrieve Point Cloud Colors", a3);
  amt::Operation::istat(v10, @"info.mesh", a1);
  if (amt::Operation::start(v10))
  {
    Count = CFArrayGetCount(a2);
    v9 = (*(a1 + 4) - *(a1 + 3)) >> 4;
    v11 = 0u;
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEmRKS1_(a1 + 6, Count * v9, &v11);
    v12 = 0;
    operator new();
  }

  amt::Operation::ostat(v10, @"info.mesh", a1);
  v6 = amt::Operation::end(v10);
  amt::Operation::~Operation(v10);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_23E75E54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(long long)>::~__value_func[abi:ne200100](v3 - 72);
  amt::Operation::~Operation(va);
  _Unwind_Resume(a1);
}

CGColorSpaceRef amt::AMTImageWrapper::colorSpace(amt::AMTImageWrapper *this)
{
  v2 = *(this + 3);
  if (!v2 || (v3 = CFGetTypeID(v2), v3 != CGImageGetTypeID()))
  {
    amt::AMTImageWrapper::colorSpace();
  }

  v4 = *(this + 3);

  return CGImageGetColorSpace(v4);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

unint64_t std::string::find[abi:ne200100](uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *a1;
    v6 = a1[1];
  }

  v7 = strlen(__s);
  v8 = v6 - a3;
  if (v6 < a3)
  {
    return -1;
  }

  v9 = v7;
  if (v7)
  {
    v10 = (v5 + v6);
    if (v8 >= v7)
    {
      v13 = (v5 + a3);
      v14 = *__s;
      do
      {
        v15 = v8 - v9;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v13, v14, v15 + 1);
        if (!v16)
        {
          break;
        }

        v11 = v16;
        if (!memcmp(v16, __s, v9))
        {
          goto LABEL_8;
        }

        v13 = v11 + 1;
        v8 = v10 - (v11 + 1);
      }

      while (v8 >= v9);
    }

    v11 = v10;
LABEL_8:
    if (v11 == v10)
    {
      return -1;
    }

    else
    {
      return &v11[-v5];
    }
  }

  return a3;
}

size_t amt::AMTImageWrapper::bitsPerComponent(amt::AMTImageWrapper *this)
{
  v2 = *(this + 3);
  if (!v2 || (v3 = CFGetTypeID(v2), v3 != CGImageGetTypeID()))
  {
    amt::AMTImageWrapper::bitsPerComponent();
  }

  return CGImageGetBitsPerComponent(*(this + 3));
}

double amt::TriangleMesh::boundingBox(amt::TriangleMesh *this)
{
  v1 = *(this + 3);
  v2 = *(this + 4);
  if (v1 == v2)
  {
    v13.i64[0] = 0x80000000800000;
    v13.i64[1] = 0x80000000800000;
    v4.i64[0] = vnegq_f32(v13).u64[0];
  }

  else
  {
    v3.i64[0] = 0x80000000800000;
    v3.i64[1] = 0x80000000800000;
    v4 = vnegq_f32(v3);
    do
    {
      v5 = 0;
      v6 = *v1;
      do
      {
        v7 = v4.i32[3];
        v8 = v3;
        v9 = (&v16 & 0xFFFFFFFFFFFFFFF3 | (4 * (v5 & 3)));
        v10 = (&v17 & 0xFFFFFFFFFFFFFFF3 | (4 * (v5 & 3)));
        v17 = v4;
        v11 = *v10;
        v15 = v6;
        v12 = *(&v15 & 0xFFFFFFFFFFFFFFF3 | (4 * (v5 & 3)));
        if (v12 < v11)
        {
          v11 = *(&v15 & 0xFFFFFFFFFFFFFFF3 | (4 * (v5 & 3)));
        }

        *v10 = v11;
        v4 = v17;
        v4.i32[3] = v7;
        v16 = v8;
        if (*v9 >= v12)
        {
          v12 = *v9;
        }

        *v9 = v12;
        v3 = v16;
        v3.i32[3] = v8.i32[3];
        ++v5;
      }

      while (v5 != 3);
      ++v1;
    }

    while (v1 != v2);
  }

  return *v4.i64;
}

void amt::computePointCloudDistance(amt *this@<X0>, amt::TriangleMesh *a2@<X1>, amt::TriangleMesh *a3@<X2>, float a4@<S0>, int a5@<W3>, int a6@<W4>, uint64_t a7@<X8>)
{
  v9 = a3;
  v86 = a2 + 24;
  *&v74 = 10;
  *(&v74 + 1) = 0x100000000;
  nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::KDTreeSingleIndexAdaptor(v82, 3, &v86, &v74);
  *v81 = 0;
  v80 = 0.0;
  __p = 0;
  v77 = 0;
  v78 = 0;
  v74 = 0uLL;
  v75 = xmmword_23E786AE0;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  v14 = (*(this + 4) - *(this + 3)) >> 4;
  *(a7 + 32) = 0;
  *(a7 + 40) = 1077936128;
  v15 = ldexp(1.0, a6);
  if (v14 < 1)
  {
    LODWORD(v14) = 0;
    v25 = 0.0;
    v55 = 0.0;
    v54 = 0.0;
  }

  else
  {
    v16 = 0;
    v17 = v15 + -1.0;
    *&v17 = v17;
    v65 = *&v17;
    v18 = vdupq_lane_s32(*&v17, 0);
    v66 = v18;
    v18.i64[0] = 0;
    v69 = v18;
    v19 = *(a7 + 24);
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    v18.i64[0] = 0;
    v68 = v18;
    do
    {
      v26 = amt::TriangleMesh::position(this, v16);
      v27 = amt::TriangleMesh::normal(this, v16);
      *&v74 = v81;
      *(&v74 + 1) = &v80;
      *(&v75 + 1) = 0;
      if (v75)
      {
        *&v79[4 * v75] = 2139095039;
      }

      v72 = 0;
      v73 = 1;
      nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::findNeighbors<nanoflann::KNNResultSet<float,unsigned long,unsigned long>>(v82, &v74, v26, &v72);
      v28 = amt::TriangleMesh::position(a2, v81[0]);
      v29 = amt::TriangleMesh::normal(a2, v81[0]);
      v30 = 0;
      v31 = vsubq_f32(*v26, *v28);
      v32 = 0.0;
      do
      {
        v70 = v31;
        v33 = *(&v70 & 0xFFFFFFFFFFFFFFF3 | (4 * (v30 & 3)));
        v32 = v32 + (v33 * v33);
        ++v30;
      }

      while (v30 != 3);
      v25 = v32 + v25;
      if (v24 < v32)
      {
        v24 = v32;
      }

      if (v9)
      {
        v34 = v27;
      }

      else
      {
        v34 = v29;
      }

      v36 = vmulq_f32(v31, *v34);
      v35 = vaddv_f32(*v36.f32);
      v36.f32[0] = (v36.f32[2] + v35) * (v36.f32[2] + v35);
      v23 = v36.f32[0] + v23;
      if (v22 < v36.f32[0])
      {
        v22 = (v36.f32[2] + v35) * (v36.f32[2] + v35);
      }

      if (a5 != -1 && ((*(this + 7) - *(this + 6)) & 0xFFFFFFFF0) != 0)
      {
        v71 = nextafterf(v80, v80 + 1.0);
        v72 = 0;
        v73 = 1;
        v37 = nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::radiusSearch(v82, v26, &v71, &__p, &v72);
        v67 = *amt::TriangleMesh::color(this, v16);
        v38 = __p;
        v39 = v77;
        if (__p == v77)
        {
          v40 = vaddq_f32(*amt::TriangleMesh::color(a2, v81[0]), 0);
        }

        else
        {
          v40 = 0uLL;
          do
          {
            v40 = vaddq_f32(v40, *amt::TriangleMesh::color(a2, *v38));
            v38 += 2;
          }

          while (v38 != v39);
        }

        v42.i32[3] = 1071644672;
        if (v37)
        {
          *v41.i32 = v65 * v37;
          v43 = vdivq_f32(v40, vdupq_lane_s32(v41, 0));
          v44 = v43.f32[0];
          v45 = v43.f32[1];
          v46 = v43.f32[2];
          v47 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(xmmword_23E786AF0, v43.f32[1]), xmmword_23E786B00, v43.f32[0]), xmmword_23E786B10, v43.f32[2]);
          *v47.f32 = vcvt_f32_f64(v47);
          *&v44 = v45 * -0.4542 + v44 * 0.5 + v46 * -0.0458;
          v47.i32[2] = LODWORD(v44);
        }

        else
        {
          v47 = 0uLL;
        }

        v49.i64[1] = v68.i64[1];
        v48.i64[1] = v69.i64[1];
        v50 = vdivq_f32(v67, v66);
        *v42.f32 = vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(xmmword_23E786AF0, v50.f32[1]), xmmword_23E786B00, v50.f32[0]), xmmword_23E786B10, v50.f32[2]));
        v51 = v50.f32[1] * -0.4542 + v50.f32[0] * 0.5 + v50.f32[2] * -0.0458;
        v42.f32[2] = v51;
        v52 = vsubq_f32(v42, v47);
        v53 = vmulq_f32(v52, v52);
        if (v21 < v53.f32[0])
        {
          v21 = v53.f32[0];
        }

        *v48.i8 = vadd_f32(*v53.f32, *v69.i8);
        v20 = v53.f32[2] + v20;
        v53.i32[0] = v53.i32[2];
        *v49.i8 = vbsl_s8(vcgt_f32(*v53.f32, *v68.i8), *v53.f32, *v68.i8);
        *(a7 + 28) = v49.i32[1];
        *(a7 + 32) = v20;
        *(a7 + 36) = v49.i32[0];
        v68 = v49;
        v69 = v48;
        v19 = v48.i32[1];
      }

      ++v16;
    }

    while (v16 != v14);
    *(a7 + 4) = v24;
    *(a7 + 8) = v23;
    *(a7 + 12) = v22;
    *(a7 + 16) = v69.i32[0];
    v54 = v23;
    v55 = *v69.i32;
    *(a7 + 20) = v21;
    *(a7 + 24) = v19;
  }

  *a7 = v25;
  *(a7 + 44) = v14;
  v56 = a4 * 3.0 * a4;
  *(a7 + 40) = v56;
  if (v14)
  {
    v57 = 1.0 / v14;
    v58 = v57 * v25;
    *a7 = v58;
    v59 = v57 * v54;
    *(a7 + 8) = v59;
    v60 = v57 * v55;
    *(a7 + 16) = v60;
    v61 = v57 * *(a7 + 24);
    *(a7 + 24) = v61;
    v62 = v57 * *(a7 + 32);
    *(a7 + 32) = v62;
  }

  if (__p)
  {
    v77 = __p;
    operator delete(__p);
  }

  v63 = v83;
  if (v83)
  {
    do
    {
      v64 = *v63;
      free(v63);
      v83 = v64;
      v63 = v64;
    }

    while (v64);
  }

  v82[12] = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  if (v82[0])
  {
    v82[1] = v82[0];
    operator delete(v82[0]);
  }
}

void sub_23E75ED5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  v37[5] = v39;
  v37[6] = v43;
  v37[2] = v42;
  v37[3] = v41;
  v37[4] = a21;
  *v37 = v38;
  v37[1] = v40;
  if (__p)
  {
    operator delete(__p);
  }

  nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::~KDTreeSingleIndexAdaptor(&a37);
  _Unwind_Resume(a1);
}

uint64_t amt::max@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = vbslq_s8(vcgtq_f32(*(a2 + 16), *(result + 16)), *(a2 + 16), *(result + 16));
  *a3 = vbslq_s8(vcgtq_f32(*a2, *result), *a2, *result);
  *(a3 + 16) = v3;
  *(a3 + 32) = vbsl_s8(vcgt_f32(*(a2 + 32), *(result + 32)), *(a2 + 32), *(result + 32));
  v4 = *(result + 40);
  if (v4 < *(a2 + 40))
  {
    v4 = *(a2 + 40);
  }

  *(a3 + 40) = v4;
  v5 = *(result + 44);
  if (v5 <= *(a2 + 44))
  {
    v5 = *(a2 + 44);
  }

  *(a3 + 44) = v5;
  return result;
}

CFMutableArrayRef amt::AMTCreateAttributeMaps(void *a1, void *a2, const __CFArray *a3, uint64_t a4, uint64_t a5)
{
  v116[5] = *MEMORY[0x277D85DE8];
  if (!a1 || (v8 = CFGetTypeID(a1), v8 != AMTMeshGetTypeID()))
  {
    amt::AMTCreateAttributeMaps();
  }

  if (!a2 || (v9 = CFGetTypeID(a2), v9 != AMTMeshGetTypeID()))
  {
    amt::AMTCreateAttributeMaps();
  }

  v10 = *(a5 + 32);
  if (!v10 || (v10(*(a5 + 80)) & 1) != 0)
  {
    Count = CFArrayGetCount(a3);
    Mutable = CFArrayCreateMutable(*a5, Count, MEMORY[0x277CBF128]);
    if (Count < 1)
    {
      v66 = *(a5 + 40);
      if (v66 && (v66(*(a5 + 24), *(a5 + 80)) & 1) == 0)
      {
        if (!*(a5 + 16))
        {
LABEL_116:
          v65 = 0;
          goto LABEL_117;
        }

        v65 = 0;
        **(a5 + 16) = AMTErrorCreateWithErrorCode(-2);
      }

      else
      {
        v65 = Mutable;
        Mutable = 0;
      }

LABEL_117:
      amt::AMTWrapper<__CFArray *>::~AMTWrapper(&Mutable);
      goto LABEL_118;
    }

    v110 = 0;
    v109 = 0;
    memset(v108, 0, sizeof(v108));
    v107 = 0;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v98 = 0u;
    memset(v97, 0, sizeof(v97));
    memset(v96, 0, sizeof(v96));
    v94 = 0;
    v93 = 0;
    v95 = 0;
    memset(v92, 0, sizeof(v92));
    amt::Matrix<unsigned char>::Matrix(v91, 1, 1);
    v87 = 0x40000000800;
    v88 = 2;
    v89 = 1;
    if (!amt::parseAttributeMapTransferParameters(&v87, a5) || !amt::computeHighestAttributeMapResolution(a3, &v110 + 1, &v110, a5) || !amt::convert(a2, v108, a5) || !amt::convert(a1, v97, a5) || !amt::computeBoundingBox(v108, v90, a5) || !amt::sampleMeshWithPartitions(v108, v97, v90, SHIDWORD(v110), v110, v96, &v93, v92, a5, &v87))
    {
      goto LABEL_106;
    }

    v69 = "texCoord";
    v70 = "texCoordIndex >= 0 && texCoordIndex < texCoordCount()";
    _ZN3amt6MatrixIDv4_fEC2Eii(&v85, 1, 1);
    amt::Matrix<unsigned char>::Matrix(&v83, 1, 1);
    amt::Matrix<unsigned char>::Matrix(&__p, 1, 1);
    ValueAtIndex = CFArrayGetValueAtIndex(a3, 0);
    v13 = ValueAtIndex;
    if (!ValueAtIndex || (v14 = CFGetTypeID(ValueAtIndex), v14 != CFDictionaryGetTypeID()))
    {
      __assert_rtn("AMTCreateAttributeMaps", "AMTPipeline.cpp", 2174, "srcAttributeMap && CFGetTypeID(srcAttributeMap) == CFDictionaryGetTypeID()");
    }

    CFDictionaryGetValue(v13, @"info.attribute_map_channel");
    Value = CFDictionaryGetValue(v13, @"info.attribute_map");
    amt::AMTImageWrapper::AMTImageWrapper(v78, Value);
    amt::AMTImageWrapper::AMTImageWrapper(v75, v78[3]);
    if (v89 != 1)
    {
      goto LABEL_28;
    }

    v16 = *(a5 + 16);
    v17 = CFGetTypeID(v13);
    if (v17 == CFDictionaryGetTypeID())
    {
      v18 = CFDictionaryGetValue(v13, @"info.attribute_map_channel");
      if (v18)
      {
        LODWORD(valuePtr[0].__d_.__rep_) = -1;
        if (CFNumberGetValue(v18, kCFNumberSInt32Type, valuePtr))
        {
          v19 = LOBYTE(valuePtr[0].__d_.__rep_) == 11;
          goto LABEL_29;
        }

        if (v16)
        {
          v20 = AMTErrorCreateWithMessages(-13, "Invalid map channel entry in attribute map dictionary", 0);
          goto LABEL_27;
        }

LABEL_28:
        v19 = 0;
LABEL_29:
        v21 = *(a5 + 16);
        if (!v21 || !*v21)
        {
          if (!v19 || (v89 & 0x100) != 0)
          {
LABEL_37:
            v24 = v76;
            if (v76 <= v77)
            {
              v24 = v77;
            }

            if (v87 >= 1)
            {
              v25 = v87;
            }

            else
            {
              v25 = v24;
            }

            v74 = v25;
            amt::Operation::Operation(valuePtr, @"Rasterize Mesh", a5);
            amt::Operation::istat(valuePtr, @"info.mesh", v97);
            if (HIBYTE(v89) == 1)
            {
              v26 = std::string::basic_string[abi:ne200100]<0>(v112, "rasterize_mesh_input.obj");
              amt::saveMeshObj(v26, v97);
              if (v113 < 0)
              {
                operator delete(*v112);
              }
            }

            if (amt::Operation::start(valuePtr))
            {
              v27 = v25 - 1;
              cf = (v25 - 1);
              v28 = v99;
              v29 = *(&v98 + 1);
              amt::Matrix<unsigned char>::assign(&__p, v25, v25, 0);
              v30 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v29) >> 2);
              if (v30 >= 1)
              {
                v31 = 0;
                v32 = v30 & 0x7FFFFFFF;
                v33 = 4;
                do
                {
                  if (v31 >= (-1431655765 * ((v102 - *(&v101 + 1)) >> 2)))
                  {
                    v38 = 284;
                    v69 = "texCoordTriangle";
                    v70 = "texCoordTriangleIndex >= 0 && texCoordTriangleIndex < texCoordTriangleCount()";
LABEL_120:
                    __assert_rtn(v69, "AMTTriangleMesh.hpp", v38, v70);
                  }

                  v34 = (*(&v101 + 1) + v33);
                  v35 = *(*(&v101 + 1) + v33 - 4);
                  if ((v35 & 0x80000000) != 0 || (v36 = (*(&v100 + 1) - v100) >> 3, v35 >= v36))
                  {
                    v38 = 98;
                    goto LABEL_120;
                  }

                  v37 = *v34;
                  v38 = 98;
                  if ((v37 & 0x80000000) != 0)
                  {
                    goto LABEL_120;
                  }

                  if (v37 >= v36)
                  {
                    goto LABEL_120;
                  }

                  v39 = v34[1];
                  if ((v39 & 0x80000000) != 0 || v39 >= v36)
                  {
                    goto LABEL_120;
                  }

                  v40 = vmul_n_f32(*(v100 + 8 * v35), cf);
                  v41 = vmul_n_f32(*(v100 + 8 * v37), cf);
                  v42 = *(v100 + 8 * v39);
                  v43 = llroundf(*v40.i32);
                  v44 = llroundf(*v41.i32);
                  v45 = vcvt_s32_f32(vrnda_f32(vzip2_s32(v40, v41)));
                  v46 = v45.i32[1];
                  v47 = v45.i32[0];
                  v48.i32[0] = v43;
                  v48.i32[1] = v27 - v45.i32[0];
                  v49 = vmul_n_f32(v42, cf);
                  v112[0] = v48;
                  v50.i32[0] = v44;
                  v50.i32[1] = v27 - v45.i32[1];
                  v51 = v27 - llroundf(v49.f32[1]);
                  v52 = __PAIR64__(v51, llroundf(v49.f32[0]));
                  v115 = v52;
                  v116[0] = v50;
                  if (v47 >= v46)
                  {
                    v53 = v50;
                    v50 = v48;
                  }

                  else
                  {
                    v112[0] = v50;
                    v116[0] = v48;
                    v53 = v48;
                  }

                  if (v51 >= v50.i32[1])
                  {
                    v54 = v50;
                    v50 = v52;
                  }

                  else
                  {
                    v112[0] = v52;
                    v115 = v50;
                    v51 = v50.i32[1];
                    v54 = v52;
                  }

                  if (v51 >= v53.i32[1])
                  {
                    v51 = v53.i32[1];
                    v55 = v50;
                    v50 = v53;
                  }

                  else
                  {
                    v115 = v53;
                    v116[0] = v50;
                    v55 = v53;
                  }

                  if (v51 == v54.i32[1])
                  {
                    v56 = &v115;
                    v57 = v112;
                  }

                  else
                  {
                    if (v51 != v55.i32[1])
                    {
                      v114 = __PAIR64__(v50.u32[1], llroundf(v54.i32[0] + ((v51 - v54.i32[1]) * (vsub_s32(v55, v54).i32[0] / (v55.i32[1] - v54.i32[1])))));
                      if (v50.i32[0] <= v114)
                      {
                        v61 = &v114;
                        v62 = v116;
                        amt::rasterizeFlatSideTriangle(v112, v116, &v114, &__p);
                      }

                      else
                      {
                        v61 = v116;
                        v62 = &v114;
                        amt::rasterizeFlatSideTriangle(v112, &v114, v116, &__p);
                      }

                      amt::rasterizeFlatSideTriangle(&v115, v62, v61, &__p);
                      goto LABEL_79;
                    }

                    v56 = v112;
                    v57 = &v115;
                    v54 = v55;
                  }

                  v58 = vcgt_s32(v50, v54).u8[0];
                  if (v58)
                  {
                    v59 = v57;
                  }

                  else
                  {
                    v59 = v116;
                  }

                  if (v58)
                  {
                    v60 = v116;
                  }

                  else
                  {
                    v60 = v57;
                  }

                  amt::rasterizeFlatSideTriangle(v56, v59, v60, &__p);
LABEL_79:
                  ++v31;
                  v33 += 12;
                }

                while (v32 != v31);
              }
            }

            amt::Operation::ostat(valuePtr, @"info.attribute_map_width", v81);
            amt::Operation::ostat(valuePtr, @"info.attribute_map_height", v82);
            v63 = amt::Operation::end(valuePtr);
            amt::Operation::~Operation(valuePtr);
            if (v63)
            {
              _ZN3amt6MatrixIDv4_fE6assignEiiS1_(&v85, v74, v74, 0);
              amt::Matrix<unsigned char>::assign(&v83, v74, v74, 0);
              v116[0].i32[0] = 1048576000;
              LODWORD(v115) = 1082130432;
              LODWORD(v114) = v74 / 4;
              v116[4] = 0;
              operator new();
            }

            amt::AMTImageWrapper::~AMTImageWrapper(v75);
            amt::AMTImageWrapper::~AMTImageWrapper(v78);
            if (__p)
            {
              v80 = __p;
              operator delete(__p);
            }

            if (v83)
            {
              v84 = v83;
              operator delete(v83);
            }

            if (v85)
            {
              v86 = v85;
              operator delete(v85);
            }

            goto LABEL_106;
          }

          v22 = AMTTransferNormalMapFromLocalToWorld(*a5, a2, v75[3], v21);
          valuePtr[0].__d_.__rep_ = v22;
          if (v22)
          {
            amt::AMTImageWrapper::init(v75, v22);
            DilatedNormalMap = amt::createDilatedNormalMap(a5, v75, &v87, 0, 0, *(a5 + 16));
            v112[0] = DilatedNormalMap;
            if (DilatedNormalMap)
            {
              amt::AMTImageWrapper::init(v75, DilatedNormalMap);
            }

            else
            {
              v64 = *(a5 + 16);
              if (v64 && !*v64)
              {
                **(a5 + 16) = AMTErrorCreateWithErrorCode(-10);
              }
            }

            amt::AMTWrapper<CGImage *>::~AMTWrapper(v112);
            amt::AMTWrapper<CGImage *>::~AMTWrapper(valuePtr);
            if (DilatedNormalMap)
            {
              goto LABEL_37;
            }
          }

          else
          {
            amt::AMTWrapper<CGImage *>::~AMTWrapper(valuePtr);
          }
        }

        amt::AMTImageWrapper::~AMTImageWrapper(v75);
        amt::AMTImageWrapper::~AMTImageWrapper(v78);
        if (__p)
        {
          v80 = __p;
          operator delete(__p);
        }

        if (v83)
        {
          v84 = v83;
          operator delete(v83);
        }

        if (v85)
        {
          v86 = v85;
          operator delete(v85);
        }

LABEL_106:
        if (v91[0])
        {
          v91[1] = v91[0];
          operator delete(v91[0]);
        }

        v78[0] = v92;
        std::vector<amt::TriangleMesh>::__destroy_vector::operator()[abi:ne200100](v78);
        if (v93)
        {
          v94 = v93;
          operator delete(v93);
        }

        v78[0] = v96;
        std::vector<amt::TriangleMesh>::__destroy_vector::operator()[abi:ne200100](v78);
        amt::TriangleMesh::~TriangleMesh(v97);
        amt::TriangleMesh::~TriangleMesh(v108);
        goto LABEL_116;
      }

      if (!v16)
      {
        goto LABEL_28;
      }

      v20 = AMTErrorCreateWithMessages(-13, "Attribute map dictionary has no map channel info", 0);
    }

    else
    {
      if (!v16)
      {
        goto LABEL_28;
      }

      v20 = AMTErrorCreateWithMessages(-13, "Invalid attribute map dictionary", 0);
    }

LABEL_27:
    v19 = 0;
    *v16 = v20;
    goto LABEL_29;
  }

  v65 = 0;
  if (*(a5 + 16))
  {
    **(a5 + 16) = AMTErrorCreateWithErrorCode(-2);
  }

LABEL_118:
  v67 = *MEMORY[0x277D85DE8];
  return v65;
}

void sub_23E75FB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  amt::AMTImageWrapper::~AMTImageWrapper(&a27);
  amt::AMTImageWrapper::~AMTImageWrapper(&a37);
  amt::AMTImageWrapper::~AMTImageWrapper(&a46);
  if (__p)
  {
    a56 = __p;
    operator delete(__p);
  }

  if (a59)
  {
    a60 = a59;
    operator delete(a59);
  }

  if (a63)
  {
    a64 = a63;
    operator delete(a63);
  }

  v66 = STACK[0x208];
  if (STACK[0x208])
  {
    STACK[0x210] = v66;
    operator delete(v66);
  }

  a46 = &STACK[0x228];
  std::vector<amt::TriangleMesh>::__destroy_vector::operator()[abi:ne200100](&a46);
  v67 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v67;
    operator delete(v67);
  }

  a46 = &STACK[0x258];
  std::vector<amt::TriangleMesh>::__destroy_vector::operator()[abi:ne200100](&a46);
  amt::TriangleMesh::~TriangleMesh(&STACK[0x270]);
  amt::TriangleMesh::~TriangleMesh(&STACK[0x350]);
  amt::AMTWrapper<__CFArray *>::~AMTWrapper((v64 - 184));
  _Unwind_Resume(a1);
}

uint64_t amt::sampleMeshWithPartitions(const amt::TriangleMesh *a1, amt::TriangleMesh *a2, float32x4_t *a3, int a4, int a5, void *a6, uint64_t *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v17 = amt::Operation::Operation(v130, @"Sample Source and Target Mesh", a9);
  amt::Operation::istat(v17, @"info.mesh", a1);
  v18 = a10;
  if (*(a10 + 15) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "sample_source_mesh_input.obj");
    amt::saveMeshObj(__p, a1);
    if (SBYTE7(v89) < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "sample_target_mesh_input.obj");
    amt::saveMeshObj(__p, a2);
    if (SBYTE7(v89) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (amt::Operation::start(v130))
  {
    v95 = 0;
    v93 = 0u;
    memset(v94, 0, sizeof(v94));
    *v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    memset(v90, 0, sizeof(v90));
    *__p = 0u;
    v129 = 0;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    *v116 = 0u;
    if (!amt::sampleMesh(a1, a3, a4, a5, __p, 0, a9, a10) || (amt::sampleMesh(a2, a3, a4, a5, v116, 0, a9, a10) & 1) == 0)
    {
      amt::TriangleMesh::~TriangleMesh(v116);
      amt::TriangleMesh::~TriangleMesh(__p);
      v80 = 0;
      goto LABEL_89;
    }

    v115 = &v89 + 8;
    v106[0] = 10;
    v106[1] = 0x100000000;
    nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::KDTreeSingleIndexAdaptor(v111, 3, &v115, v106);
    v110 = &v117 + 8;
    *&v98 = 10;
    *(&v98 + 1) = 0x100000000;
    nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::KDTreeSingleIndexAdaptor(v106, 3, &v110, &v98);
    v105 = 0;
    v104 = 0.0;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v98 = 0uLL;
    v99 = xmmword_23E786AE0;
    std::vector<std::set<unsigned long>>::vector[abi:ne200100](v97, 0x10uLL);
    std::vector<amt::TriangleMesh>::resize(a6, 0x10uLL);
    std::vector<amt::TriangleMesh>::resize(a8, 0x10uLL);
    std::vector<unsigned long>::resize(a7, 0x10uLL);
    if (((*&v90[0] - *(&v89 + 1)) >> 4) >= 1)
    {
      v19 = 0;
      v82 = ((*&v90[0] - *(&v89 + 1)) >> 4) & 0x7FFFFFFFLL;
      do
      {
        v20 = *(&v89 + 1);
        if (v19 >= ((*&v90[0] - *(&v89 + 1)) >> 4))
        {
          __assert_rtn("position", "AMTTriangleMesh.hpp", 83, "positionIndex >= 0 && positionIndex < positionCount()");
        }

        v21 = v92;
        if (v19 >= ((*(&v92 + 1) - v92) >> 3))
        {
          __assert_rtn("texCoord", "AMTTriangleMesh.hpp", 103, "texCoordIndex >= 0 && texCoordIndex < texCoordCount()");
        }

        *&v98 = &v105;
        *(&v98 + 1) = &v104;
        *(&v99 + 1) = 0;
        if (v99)
        {
          *&v103[4 * v99] = 2139095039;
        }

        v22 = (v20 + 16 * v19);
        LODWORD(v131[0]) = 0;
        BYTE4(v131[0]) = 1;
        nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::findNeighbors<nanoflann::KNNResultSet<float,unsigned long,unsigned long>>(v106, &v98, v22, v131);
        v96 = nextafterf(v104, v104 + 1.0);
        LODWORD(v131[0]) = 0;
        BYTE4(v131[0]) = 1;
        nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::radiusSearch(v106, v22, &v96, &v100, v131);
        v23 = (v21 + 8 * v19);
        v24 = v100;
        v25 = v101;
        if (v100 == v101)
        {
          if ((v105 & 0x80000000) != 0 || ((*(&v122 + 1) - v122) >> 3) <= v105)
          {
            __assert_rtn("texCoord", "AMTTriangleMesh.hpp", 103, "texCoordIndex >= 0 && texCoordIndex < texCoordCount()");
          }

          v32 = *(v122 + 8 * (v105 & 0x7FFFFFFF));
          v33 = vcvtms_s32_f32(4.0 * v32.f32[0]);
          if (v33 >= 3)
          {
            v33 = 3;
          }

          v34 = v33 & ~(v33 >> 31);
          v35 = vcvtms_s32_f32(vmuls_lane_f32(4.0, v32, 1));
          if (v35 >= 3)
          {
            v35 = 3;
          }

          v36 = v34 | (4 * (v35 & ~(v35 >> 31)));
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(*a6 + 216 * v36 + 24, v22);
          amt::TriangleMesh::addTexCoord((*a6 + 216 * v36), v23);
          v131[0] = v19;
          std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long>(v97[0] + 24 * v36, v131);
        }

        else
        {
          do
          {
            v26 = *v24;
            if ((v26 & 0x80000000) != 0 || v26 >= ((*(&v122 + 1) - v122) >> 3))
            {
              __assert_rtn("texCoord", "AMTTriangleMesh.hpp", 103, "texCoordIndex >= 0 && texCoordIndex < texCoordCount()");
            }

            v27 = *(v122 + 8 * v26);
            v28 = vcvtms_s32_f32(4.0 * v27.f32[0]);
            if (v28 >= 3)
            {
              v28 = 3;
            }

            v29 = v28 & ~(v28 >> 31);
            v30 = vcvtms_s32_f32(vmuls_lane_f32(4.0, v27, 1));
            if (v30 >= 3)
            {
              v30 = 3;
            }

            v31 = v29 | (4 * (v30 & ~(v30 >> 31)));
            _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(*a6 + 216 * v31 + 24, v22);
            amt::TriangleMesh::addTexCoord((*a6 + 216 * v31), v23);
            v131[0] = v19;
            std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long>(v97[0] + 24 * v31, v131);
            v24 += 2;
          }

          while (v24 != v25);
        }

        v19 = (v19 + 1);
      }

      while (v19 != v82);
    }

    v37 = 0;
    v38 = *a7;
    v39 = (*a6 + 32);
    do
    {
      *(v38 + v37) = ((*v39 - *(v39 - 1)) >> 4);
      v39 += 27;
      v37 += 8;
    }

    while (v37 != 128);
    if (((v118 - *(&v117 + 1)) >> 4) >= 1)
    {
      v40 = 0;
      v41 = ((v118 - *(&v117 + 1)) >> 4) & 0x7FFFFFFFLL;
      do
      {
        v42 = *(&v117 + 1);
        if (v40 >= ((v118 - *(&v117 + 1)) >> 4))
        {
          __assert_rtn("position", "AMTTriangleMesh.hpp", 83, "positionIndex >= 0 && positionIndex < positionCount()");
        }

        v43 = v122;
        if (v40 >= ((*(&v122 + 1) - v122) >> 3))
        {
          __assert_rtn("texCoord", "AMTTriangleMesh.hpp", 103, "texCoordIndex >= 0 && texCoordIndex < texCoordCount()");
        }

        *&v98 = &v105;
        *(&v98 + 1) = &v104;
        *(&v99 + 1) = 0;
        if (v99)
        {
          *&v103[4 * v99] = 2139095039;
        }

        v44 = (v42 + 16 * v40);
        LODWORD(v131[0]) = 0;
        BYTE4(v131[0]) = 1;
        nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::findNeighbors<nanoflann::KNNResultSet<float,unsigned long,unsigned long>>(v111, &v98, v44, v131);
        v45 = (v43 + 8 * v40);
        v46 = vcvtms_s32_f32(4.0 * COERCE_FLOAT(*v45));
        if (v46 >= 3)
        {
          v46 = 3;
        }

        v47 = v46 & ~(v46 >> 31);
        v48 = vcvtms_s32_f32(vmuls_lane_f32(4.0, *v45, 1));
        if (v48 >= 3)
        {
          v48 = 3;
        }

        v49 = v47 | (4 * (v48 & ~(v48 >> 31)));
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(*a8 + 216 * v49 + 24, v44);
        amt::TriangleMesh::addTexCoord((*a8 + 216 * v49), v45);
        v50 = v97[0] + 24 * v49;
        v51 = *(v50 + 8);
        if (!v51)
        {
          goto LABEL_53;
        }

        v52 = v50 + 8;
        do
        {
          v53 = *(v51 + 32);
          v54 = v53 >= v105;
          v55 = v53 < v105;
          if (v54)
          {
            v52 = v51;
          }

          v51 = *(v51 + 8 * v55);
        }

        while (v51);
        if (v52 == v50 + 8 || v105 < *(v52 + 32))
        {
LABEL_53:
          if ((v105 & 0x80000000) != 0 || ((*&v90[0] - *(&v89 + 1)) >> 4) <= v105)
          {
            __assert_rtn("position", "AMTTriangleMesh.hpp", 83, "positionIndex >= 0 && positionIndex < positionCount()");
          }

          v56 = v92;
          if (((*(&v92 + 1) - v92) >> 3) <= v105)
          {
            __assert_rtn("texCoord", "AMTTriangleMesh.hpp", 103, "texCoordIndex >= 0 && texCoordIndex < texCoordCount()");
          }

          v57 = v105 & 0x7FFFFFFF;
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(*a6 + 216 * v49 + 24, (*(&v89 + 1) + 16 * v57));
          amt::TriangleMesh::addTexCoord((*a6 + 216 * v49), (v56 + 8 * v57));
          std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long>(v50, &v105);
        }

        ++v40;
      }

      while (v40 != v41);
    }

    v131[0] = v97;
    std::vector<std::set<unsigned long>>::__destroy_vector::operator()[abi:ne200100](v131);
    if (v100)
    {
      v101 = v100;
      operator delete(v100);
    }

    v58 = v107;
    if (v107)
    {
      do
      {
        v59 = *v58;
        free(v58);
        v107 = v59;
        v58 = v59;
      }

      while (v59);
    }

    v106[12] = 0;
    v107 = 0;
    v109 = 0;
    v108 = 0;
    if (v106[0])
    {
      v106[1] = v106[0];
      operator delete(v106[0]);
    }

    v60 = v112;
    if (v112)
    {
      do
      {
        v61 = *v60;
        free(v60);
        v112 = v61;
        v60 = v61;
      }

      while (v61);
    }

    v111[12] = 0;
    v112 = 0;
    v114 = 0;
    v113 = 0;
    if (v111[0])
    {
      v111[1] = v111[0];
      operator delete(v111[0]);
    }

    amt::TriangleMesh::~TriangleMesh(v116);
    amt::TriangleMesh::~TriangleMesh(__p);
    v18 = a10;
  }

  if (*(v18 + 15) == 1)
  {
    v62 = a6[1] - *a6;
    if (v62)
    {
      v63 = 0;
      v64 = 0;
      v65 = 0x84BDA12F684BDA13 * (v62 >> 3);
      v66 = *(MEMORY[0x277D82818] + 64);
      v67 = *(MEMORY[0x277D82818] + 72);
      v83 = v66;
      v85 = *MEMORY[0x277D82818];
      if (v65 <= 1)
      {
        v68 = 1;
      }

      else
      {
        v68 = v65;
      }

      do
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
        v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v89, "sample_source_mesh_output", 25);
        v70 = MEMORY[0x23EF11C20](v69, v64);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, ".obj", 4);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](__p, v116);
        amt::saveMeshObj(v116, (*a6 + v63));
        if (SBYTE7(v117) < 0)
        {
          operator delete(v116[0]);
        }

        __p[0] = v85;
        *(__p + *(v85 - 3)) = v83;
        *&v89 = v67;
        *(&v89 + 1) = MEMORY[0x277D82878] + 16;
        if (SHIBYTE(v92) < 0)
        {
          operator delete(v91[1]);
        }

        *(&v89 + 1) = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v90);
        std::iostream::~basic_iostream();
        MEMORY[0x23EF11E10](v94);
        ++v64;
        v63 += 216;
      }

      while (v68 != v64);
    }

    v71 = a8[1] - *a8;
    if (v71)
    {
      v72 = 0;
      v73 = 0;
      v74 = 0x84BDA12F684BDA13 * (v71 >> 3);
      v75 = *(MEMORY[0x277D82818] + 64);
      v76 = *(MEMORY[0x277D82818] + 72);
      v84 = v75;
      v86 = *MEMORY[0x277D82818];
      if (v74 <= 1)
      {
        v77 = 1;
      }

      else
      {
        v77 = v74;
      }

      do
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
        v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v89, "sample_target_mesh_output", 25);
        v79 = MEMORY[0x23EF11C20](v78, v73);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, ".obj", 4);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](__p, v116);
        amt::saveMeshObj(v116, (*a8 + v72));
        if (SBYTE7(v117) < 0)
        {
          operator delete(v116[0]);
        }

        __p[0] = v86;
        *(__p + *(v86 - 3)) = v84;
        *&v89 = v76;
        *(&v89 + 1) = MEMORY[0x277D82878] + 16;
        if (SHIBYTE(v92) < 0)
        {
          operator delete(v91[1]);
        }

        *(&v89 + 1) = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v90);
        std::iostream::~basic_iostream();
        MEMORY[0x23EF11E10](v94);
        ++v73;
        v72 += 216;
      }

      while (v77 != v73);
    }
  }

  amt::Operation::ostat<amt::TriangleMesh>(v130, @"info.mesh", a6);
  amt::Operation::ostat<amt::TriangleMesh>(v130, @"info.mesh", a8);
  v80 = amt::Operation::end(v130);
LABEL_89:
  amt::Operation::~Operation(v130);
  return v80;
}

void sub_23E7609AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  if (__p)
  {
    a59 = __p;
    operator delete(__p);
  }

  nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::~KDTreeSingleIndexAdaptor(&a63);
  nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::~KDTreeSingleIndexAdaptor(&STACK[0x260]);
  amt::TriangleMesh::~TriangleMesh(&STACK[0x310]);
  amt::TriangleMesh::~TriangleMesh(&a15);
  amt::Operation::~Operation((v63 - 168));
  _Unwind_Resume(a1);
}

uint64_t amt::AMTImageWrapper::init(CGImageRef *this, void *cf)
{
  if (!cf)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CGImageGetTypeID())
  {
    return 0;
  }

  amt::AMTImageWrapper::release(this);
  this[3] = cf;
  CFRetain(cf);
  DataProvider = CGImageGetDataProvider(cf);
  this[4] = CGDataProviderCopyData(DataProvider);
  *(this + 12) = CGImageGetWidth(this[3]);
  *(this + 13) = CGImageGetHeight(this[3]);
  v6 = amt::AMTImageWrapper::colorSpace(this);
  Model = CGColorSpaceGetModel(v6);
  *(this + 68) = Model == kCGColorSpaceModelIndexed;
  BaseColorSpace = amt::AMTImageWrapper::colorSpace(this);
  if (Model == kCGColorSpaceModelIndexed)
  {
    BaseColorSpace = CGColorSpaceGetBaseColorSpace(BaseColorSpace);
  }

  *(this + 14) = CGColorSpaceGetNumberOfComponents(BaseColorSpace);
  if (amt::AMTImageWrapper::alphaInfo(this))
  {
    ++*(this + 14);
  }

  this[5] = CFDataGetBytePtr(this[4]);
  v9 = amt::AMTImageWrapper::bitsPerPixel(this);
  v10 = v9 + 7;
  if (v9 + 7 < 0)
  {
    v10 = v9 + 14;
  }

  *(this + 15) = v10 >> 3;
  v11 = amt::AMTImageWrapper::colorSpace(this);
  ColorTableCount = CGColorSpaceGetColorTableCount(v11);
  v13 = *(this + 14) * (amt::AMTImageWrapper::bytesPerComponent(this) * ColorTableCount);
  v14 = this[1] - *this;
  if (v13 <= v14)
  {
    if (v13 < v14)
    {
      this[1] = (*this + v13);
    }
  }

  else
  {
    std::vector<signed char>::__append(this, v13 - v14);
  }

  *(this + 16) = CGImageGetBytesPerRow(this[3]);
  v16 = amt::AMTImageWrapper::colorSpace(this);
  CGColorSpaceGetColorTable(v16, *this);
  return 1;
}

CGImageRef amt::createDilatedNormalMap(const __CFAllocator **a1, unsigned int *a2, uint64_t a3, char a4, amt::AMTImageWrapper *a5, CFErrorRef *a6)
{
  v9 = a2[12];
  v8 = a2[13];
  _ZN3amt6MatrixIDv4_fEC2Eii(v41, v8, v9);
  amt::Matrix<unsigned char>::Matrix(__p, v8, v9);
  v10 = v8 - 1;
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      v12 = v8 + ~i;
      if (v43 <= v12)
      {
        __assert_rtn("row", "AMTMatrix.hpp", 517, "rowIndex < _rowCount");
      }

      if (v40 <= v12)
      {
        __assert_rtn("row", "AMTMatrix.hpp", 517, "rowIndex < _rowCount");
      }

      if (v9 >= 1)
      {
        v13 = 0;
        v14 = __p[0] + v39 * v10;
        v15 = v41[0] + 16 * v42 * v10;
        do
        {
          v16 = amt::AMTImageWrapper::color(a2, v13, i);
          *&v15[16 * v13] = v16;
          v17 = v16.n128_f32[2] != 0.0;
          if (v16.n128_f32[1] != 0.0)
          {
            v17 = 1;
          }

          if (v16.n128_f32[0] != 0.0)
          {
            v17 = 1;
          }

          v14[v13++] = v17;
        }

        while (v9 != v13);
      }

      --v10;
    }
  }

  amt::padAttributeMap(0, v41, __p, a3, a4);
  if (!a5)
  {
    a5 = a2;
  }

  v18 = amt::AMTImageWrapper::bitsPerComponent(a2);
  v19 = amt::AMTImageWrapper::bitsPerComponent(a5);
  v20 = v19;
  if (v19 != v18)
  {
    v21 = 1 << (v19 - v18);
    if (v19 <= v18)
    {
      v21 = 1u >> (v18 - v19);
    }

    v22 = v43;
    if (v43 >= 1)
    {
      v23 = 0;
      v24 = v21;
      v25 = v42;
      do
      {
        if (v25 >= 1)
        {
          v26 = 0;
          v27 = v41[0] + 16 * v25 * v23;
          do
          {
            *&v27[16 * v26] = vmulq_n_f32(*&v27[16 * v26], v24);
            ++v26;
            v25 = v42;
          }

          while (v26 < v42);
          v22 = v43;
        }

        ++v23;
      }

      while (v23 < v22);
    }
  }

  v28 = amt::AMTImageWrapper::bitsPerPixel(a5);
  v29 = amt::AMTImageWrapper::colorSpace(a5);
  v30 = amt::AMTImageWrapper::bitmapInfo(a5);
  v31 = amt::AMTImageWrapper::renderingIntent(a5);
  v32 = amt::CGImageCreateWithSamples(*a1, v41, v20, v28, v29, v30, 0, v31, a6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v41[0])
  {
    v41[1] = v41[0];
    operator delete(v41[0]);
  }

  return v32;
}

void sub_23E760EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *_ZN3amt6MatrixIDv4_fE6assignEiiS1_(uint64_t a1, int a2, int a3, __n128 a4)
{
  v5 = a4;
  if (a2 < 1 || a3 <= 0)
  {
    _ZN3amt6MatrixIDv4_fE6assignEiiS1__cold_1();
  }

  *(a1 + 24) = a3;
  *(a1 + 28) = a2;
  return _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE6assignEmRKS1_(a1, (a3 * a2), &v5);
}

void *amt::Matrix<unsigned char>::assign(uint64_t a1, int a2, int a3, unsigned __int8 a4)
{
  v5 = a4;
  if (a2 < 1 || a3 <= 0)
  {
    _ZN3amt6MatrixIDv4_fE6assignEiiS1__cold_1();
  }

  *(a1 + 24) = a3;
  *(a1 + 28) = a2;
  return std::vector<unsigned char>::assign(a1, (a3 * a2), &v5);
}

void amt::parallel_for (uint64_t a1, uint64_t a2)
{
  v19 = a1;
  if (a1 >= 1)
  {
    v2 = a1;
    v18 = a2;
    if (std::thread::hardware_concurrency() >= a1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2 / std::thread::hardware_concurrency();
    }

    v4 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v20 = 0;
    do
    {
      v13 = v4 + v3;
      if (v2 >= (v4 + v3))
      {
        v5 = &v13;
      }

      else
      {
        v5 = &v19;
      }

      std::async[abi:ne200100]<amt::parallel_for (long long,std::function<void ()(long long)>)::{lambda(long long,long long)#1} &,long long &,long long const&>(3, &v18, &v20, v5, &v14);
      v6 = v16;
      if (v16 >= v17)
      {
        v8 = (v16 - v15) >> 3;
        if ((v8 + 1) >> 61)
        {
          std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
        }

        v9 = (v17 - v15) >> 2;
        if (v9 <= v8 + 1)
        {
          v9 = v8 + 1;
        }

        if (v17 - v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        v25 = &v15;
        if (v10)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::future<void>>>(&v15, v10);
        }

        v21 = 0;
        v22 = (8 * v8);
        v24 = 0;
        v22->__state_ = v14.__state_;
        v14.__state_ = 0;
        v23 = 8 * v8 + 8;
        std::vector<std::future<void>>::__swap_out_circular_buffer(&v15, &v21);
        v7 = v16;
        std::__split_buffer<std::future<void>>::~__split_buffer(&v21);
      }

      else
      {
        v16->__state_ = v14.__state_;
        v7 = v6 + 1;
        v14.__state_ = 0;
      }

      v16 = v7;
      std::future<void>::~future(&v14);
      v2 = v19;
      v4 = v20 + v3;
      v20 = v4;
    }

    while (v4 < v19);
    v11 = v15;
    v12 = v16;
    while (v11 != v12)
    {
      std::__assoc_sub_state::wait(*v11++);
    }

    v21 = &v15;
    std::vector<std::future<void>>::__destroy_vector::operator()[abi:ne200100](&v21);
  }
}

void sub_23E761184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::future<void> a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, char a18)
{
  std::future<void>::~future(&a11);
  a17 = &a12;
  std::vector<std::future<void>>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

size_t amt::AMTImageWrapper::bitsPerPixel(amt::AMTImageWrapper *this)
{
  v2 = *(this + 3);
  if (!v2 || (v3 = CFGetTypeID(v2), v3 != CGImageGetTypeID()))
  {
    amt::AMTImageWrapper::bitsPerPixel();
  }

  return CGImageGetBitsPerPixel(*(this + 3));
}

uint64_t amt::AMTImageWrapper::bitmapInfo(amt::AMTImageWrapper *this)
{
  v2 = *(this + 3);
  if (!v2 || (v3 = CFGetTypeID(v2), v3 != CGImageGetTypeID()))
  {
    amt::AMTImageWrapper::bitmapInfo();
  }

  v4 = *(this + 3);

  return CGImageGetBitmapInfo(v4);
}

BOOL amt::AMTImageWrapper::shouldInterpolate(amt::AMTImageWrapper *this)
{
  v2 = *(this + 3);
  if (!v2 || (v3 = CFGetTypeID(v2), v3 != CGImageGetTypeID()))
  {
    amt::AMTImageWrapper::shouldInterpolate();
  }

  v4 = *(this + 3);

  return CGImageGetShouldInterpolate(v4);
}

uint64_t amt::AMTImageWrapper::renderingIntent(amt::AMTImageWrapper *this)
{
  v2 = *(this + 3);
  if (!v2 || (v3 = CFGetTypeID(v2), v3 != CGImageGetTypeID()))
  {
    amt::AMTImageWrapper::renderingIntent();
  }

  v4 = *(this + 3);

  return CGImageGetRenderingIntent(v4);
}

void amt::AMTImageWrapper::release(amt::AMTImageWrapper *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
    *(this + 3) = 0;
  }

  v3 = *(this + 4);
  if (v3)
  {
    CFRelease(v3);
    *(this + 4) = 0;
  }

  *(this + 1) = *this;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  *(this + 61) = 0;
}

CGImageRef amt::CGImageCreateWithSamples(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, CGColorSpace *cf, CGBitmapInfo a6, BOOL a7, CGColorRenderingIntent a8, CFErrorRef *a9)
{
  if (cf)
  {
    v11 = cf;
    v16 = CFGetTypeID(cf);
    if (v16 == CGColorSpaceGetTypeID())
    {
      v17 = a6 & 0x1F;
      v40 = *(a2 + 28);
      v41 = *(a2 + 24);
      bitsPerComponent = a3;
      if (a3 >= -7)
      {
        v18 = a3 + 7;
      }

      else
      {
        v18 = a3 + 14;
      }

      Model = CGColorSpaceGetModel(v11);
      if (Model == kCGColorSpaceModelIndexed)
      {
        BaseColorSpace = CGColorSpaceGetBaseColorSpace(v11);
      }

      else
      {
        BaseColorSpace = v11;
      }

      NumberOfComponents = CGColorSpaceGetNumberOfComponents(BaseColorSpace);
      v21 = NumberOfComponents;
      v22 = v18 >> 3;
      v38 = a6;
      shouldInterpolate = a7;
      if ((v17 - 1) < 4 || v17 == 7)
      {
        v21 = NumberOfComponents + 1;
      }

      v23 = a4 + 7;
      if (a4 < -7)
      {
        v23 = a4 + 14;
      }

      v24 = v23 >> 3;
      v25 = Model == kCGColorSpaceModelIndexed ? v22 * v21 : v24;
      bytesPerRow = v25 * v41;
      v26 = MEMORY[0x23EF11640](a1, v25 * v41 * v40, 0x100004077774924, 0);
      if (v26)
      {
        if ((v38 & 0x100) == 0)
        {
          v27 = v26;
          if (v22 == 2)
          {
            amt::AMTCopySamples<unsigned short>(a2, bytesPerRow, v25, v21, v26);
LABEL_26:
            v30 = CFDataCreateWithBytesNoCopy(a1, v27, v25 * v41 * v40, a1);
            data = v30;
            if (v30 && (v31 = CFGetTypeID(v30), v31 == CFDataGetTypeID()))
            {
              v32 = CGDataProviderCreateWithCFData(data);
              provider = v32;
              if (v32 && (v33 = CFGetTypeID(v32), v33 == CGDataProviderGetTypeID()))
              {
                if (Model == kCGColorSpaceModelIndexed)
                {
                  v34 = v21 * bitsPerComponent;
                }

                else
                {
                  v34 = a4;
                }

                if (Model == kCGColorSpaceModelIndexed)
                {
                  v11 = CGColorSpaceGetBaseColorSpace(v11);
                }

                v28 = CGImageCreate(v41, v40, bitsPerComponent, v34, bytesPerRow, v11, v38, provider, 0, shouldInterpolate, a8);
              }

              else
              {
                v28 = 0;
              }

              amt::AMTWrapper<CGDataProvider *>::~AMTWrapper(&provider);
            }

            else
            {
              v28 = 0;
            }

            amt::AMTWrapper<__CFData const*>::~AMTWrapper(&data);
            return v28;
          }

          if (v22 == 1)
          {
            amt::AMTCopySamples<unsigned char>(a2, bytesPerRow, v25, v21, v26);
            goto LABEL_26;
          }
        }
      }
    }
  }

  v28 = 0;
  if (a9)
  {
    *a9 = AMTErrorCreateWithErrorCode(-14);
  }

  return v28;
}

void sub_23E761600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  amt::AMTWrapper<__CFData const*>::~AMTWrapper(va);
  _Unwind_Resume(a1);
}

const void *amt::AMTAdaptiveMeshCreateWithBaseMesh(void *a1, void *a2, const void *a3, uint64_t a4)
{
  if (!a1 || (v8 = CFGetTypeID(a1), v8 != AMTMeshGetTypeID()))
  {
    amt::AMTAdaptiveMeshCreateWithBaseMesh();
  }

  if (!a2 || (v9 = CFGetTypeID(a2), v9 != AMTMeshSourceGetTypeID()))
  {
    amt::AMTAdaptiveMeshCreateWithBaseMesh();
  }

  if (!a3 || (v10 = CFGetTypeID(a3), v10 != CFDictionaryGetTypeID()))
  {
    amt::AMTAdaptiveMeshCreateWithBaseMesh();
  }

  v24[1] = 0;
  v25 = 0;
  v11 = CFGetTypeID(a3);
  if (v11 != CFDictionaryGetTypeID())
  {
    amt::AMTAdaptiveMeshCreateWithBaseMesh();
  }

  Value = CFDictionaryGetValue(a3, @"info.level_of_detail");
  if (Value)
  {
    v13 = Value;
    v14 = CFGetTypeID(Value);
    if (v14 == CFArrayGetTypeID() && CFArrayGetCount(v13) > 0)
    {
      Count = CFArrayGetCount(v13);
      v24[0] = Count - 1;
      v16 = *(a4 + 8);
      if (!v16)
      {
        return amt::createAdaptiveMesh(a1, a2, a4, v24);
      }

      v17 = CFDictionaryGetValue(v16, @"option.subdivision_iteration_count");
      if (!v17)
      {
        return amt::createAdaptiveMesh(a1, a2, a4, v24);
      }

      v18 = v17;
      v19 = CFGetTypeID(v17);
      if (v19 == CFNumberGetTypeID() && CFNumberGetType(v18) == kCFNumberSInt32Type)
      {
        valuePtr = 0;
        CFNumberGetValue(v18, kCFNumberSInt32Type, &valuePtr);
        if (Count <= 0)
        {
          amt::updateSamples();
        }

        if (Count - 1 >= valuePtr)
        {
          v20 = valuePtr;
        }

        else
        {
          v20 = Count - 1;
        }

        if (valuePtr >= 0)
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }

        v24[0] = v21;
        return amt::createAdaptiveMesh(a1, a2, a4, v24);
      }
    }
  }

  if (!*(a4 + 16))
  {
    return 0;
  }

  v23 = AMTErrorCreateWithErrorCode(-1);
  result = 0;
  **(a4 + 16) = v23;
  return result;
}

const void *amt::createAdaptiveMesh(__AMTMesh *a1, void *a2, uint64_t a3, unsigned int *a4)
{
  v114 = 0;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v101 = 0u;
  if ((AMTMeshCopyToTriangleMesh(a1, &v101, 0, *(a3 + 16)) & 1) == 0)
  {
    v8 = 0;
    goto LABEL_78;
  }

  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v87 = 0u;
  v86 = 0;
  *__p = 0u;
  v85 = 0u;
  memset(v83, 0, sizeof(v83));
  *__src = 0u;
  v82 = 0u;
  memset(v80, 0, sizeof(v80));
  v7 = *a4;
  if (!v7)
  {
    amt::TriangleMesh::operator=(&v87, &v101);
    amt::Adjacency<AMTPair>::clear(v80);
    *&v82 = __src[1];
    amt::Adjacency<AMTPair>::clear(v83);
    *&v85 = __p[1];
    v9 = (v103 - *(&v102 + 1)) >> 4;
    v10 = -1431655765 * ((v106 - *(&v105 + 1)) >> 2);
    v11 = v82;
    if (v82 >= *(&v82 + 1))
    {
      v13 = __src[1];
      v14 = v82 - __src[1];
      v15 = (v82 - __src[1]) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        goto LABEL_82;
      }

      v17 = *(&v82 + 1) - __src[1];
      if ((*(&v82 + 1) - __src[1]) >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      v18 = v17 >= 0x7FFFFFFFFFFFFFF8;
      v19 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v18)
      {
        v19 = v16;
      }

      if (v19)
      {
        _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&__src[1], v19);
      }

      v20 = (8 * v15);
      *v20 = v9;
      v20[1] = v10;
      v12 = 8 * v15 + 8;
      memcpy(0, v13, v14);
      v21 = __src[1];
      __src[1] = 0;
      v82 = v12;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v82 = v9;
      *(v11 + 4) = v10;
      v12 = v11 + 8;
    }

    *&v82 = v12;
    v22 = (*(&v107 + 1) - v107) >> 3;
    v23 = -1431655765 * ((v109 - *(&v108 + 1)) >> 2);
    v24 = v85;
    if (v85 < *(&v85 + 1))
    {
      *v85 = v22;
      *(v24 + 4) = v23;
      v25 = v24 + 8;
      goto LABEL_28;
    }

    v26 = __p[1];
    v27 = v85 - __p[1];
    v28 = (v85 - __p[1]) >> 3;
    v29 = v28 + 1;
    if (!((v28 + 1) >> 61))
    {
      v30 = *(&v85 + 1) - __p[1];
      if ((*(&v85 + 1) - __p[1]) >> 2 > v29)
      {
        v29 = v30 >> 2;
      }

      v18 = v30 >= 0x7FFFFFFFFFFFFFF8;
      v31 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v18)
      {
        v31 = v29;
      }

      if (v31)
      {
        _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&__p[1], v31);
      }

      v32 = (v85 - __p[1]) >> 3;
      v33 = (8 * v28);
      *v33 = v22;
      v33[1] = v23;
      v25 = 8 * v28 + 8;
      v34 = (8 * v28 - 8 * v32);
      memcpy(v34, v26, v27);
      v35 = __p[1];
      __p[1] = v34;
      v85 = v25;
      if (v35)
      {
        operator delete(v35);
      }

LABEL_28:
      *&v85 = v25;
      if (!a2)
      {
        goto LABEL_60;
      }

      goto LABEL_29;
    }

LABEL_82:
    std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
  }

  amt::subdivideMesh(&v101, v80, v7, v79);
  amt::TriangleMesh::operator=(&v87, v79);
  amt::TriangleMesh::~TriangleMesh(&v79[0].__r_.__value_.__l.__data_);
  if (!a2)
  {
    goto LABEL_60;
  }

LABEL_29:
  v36 = CFGetTypeID(a2);
  if (v36 != AMTMeshSourceGetTypeID() || AMTMeshSourceGetVectorCount(a2) < 1 || AMTMeshSourceGetComponentsPerVector(a2) != 3)
  {
    goto LABEL_35;
  }

  DataType = AMTMeshSourceGetDataType(a2);
  if (DataType != 9)
  {
    if (DataType == 10)
    {
      v38 = 1;
      goto LABEL_39;
    }

LABEL_35:
    v8 = 0;
    if (*(a3 + 16))
    {
      **(a3 + 16) = AMTErrorCreateWithErrorCode(-1);
    }

    goto LABEL_73;
  }

  v38 = 0;
LABEL_39:
  v39 = v89;
  v40 = *(&v88 + 1);
  VectorCount = AMTMeshSourceGetVectorCount(a2);
  v42 = (v39 - v40) >> 4;
  if (VectorCount >= v42)
  {
    v43 = v42;
  }

  else
  {
    v43 = VectorCount;
  }

  if (v43 >= 1)
  {
    v44 = 0;
    v45 = "normalIndex >= 0 && normalIndex < normalCount()";
    v46 = "normal";
    do
    {
      v47 = __AMTMeshSource::vectorAtIndex<double>(a2, v44);
      if (v38)
      {
        *v48.f32 = vcvt_f32_f64(*v47);
        v49 = *(v47 + 16);
      }

      else
      {
        v48.i64[0] = *v47;
        v49 = *(v47 + 8);
      }

      v50 = v48;
      v50.f32[2] = v49;
      if (a4[1] == 1)
      {
        if (((*(&v96 + 1) - v96) >> 4) <= v44)
        {
          v75 = 113;
LABEL_81:
          __assert_rtn(v46, "AMTTriangleMesh.hpp", v75, v45);
        }

        v51 = 0;
        v52 = *(v96 + 16 * v44);
        v53 = vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL);
        v54 = vmlaq_f32(vmulq_f32(v52, xmmword_23E786AA0), xmmword_23E786AB0, v53);
        v56 = vuzp1q_s32(v54, v54);
        v55 = vextq_s8(v56, v54, 0xCuLL);
        v56.i64[0] = 0;
        do
        {
          v78 = v55;
          v57 = *(&v78 & 0xFFFFFFFFFFFFFFF3 | (4 * (v51 & 3)));
          v56.f32[0] = v56.f32[0] + (v57 * v57);
          ++v51;
        }

        while (v51 != 3);
        v58 = 0;
        v59 = vmlaq_f32(vmulq_f32(v52, xmmword_23E786AC0), xmmword_23E786AD0, v53);
        v61 = vuzp1q_s32(v59, v59);
        v60 = vextq_s8(v61, v59, 0xCuLL);
        v61.i64[0] = 0;
        do
        {
          v77 = v60;
          v62 = *(&v77 & 0xFFFFFFFFFFFFFFF3 | (4 * (v58 & 3)));
          v61.f32[0] = v61.f32[0] + (v62 * v62);
          ++v58;
        }

        while (v58 != 3);
        v63 = 0;
        v64 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v56, v61)), 0), v60, v55);
        v65 = 0.0;
        do
        {
          v76 = v64;
          v66 = *(&v76 & 0xFFFFFFFFFFFFFFF3 | (4 * (v63 & 3)));
          v65 = v65 + (v66 * v66);
          ++v63;
        }

        while (v63 != 3);
        if (v65 != 0.0)
        {
          v64 = vmulq_n_f32(v64, 1.0 / sqrtf(v65));
        }

        v67 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL), vnegq_f32(v52)), v64, v53);
        v50 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v64, *v48.f32, 1), v52, v48.f32[0]), vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL), v50, 2);
      }

      if (((v89 - *(&v88 + 1)) >> 4) <= v44)
      {
        v75 = 83;
        v46 = "position";
        v45 = "positionIndex >= 0 && positionIndex < positionCount()";
        goto LABEL_81;
      }

      *(*(&v88 + 1) + 16 * v44) = vaddq_f32(v50, *(*(&v88 + 1) + 16 * v44));
      ++v44;
    }

    while (v44 != v43);
  }

LABEL_60:
  amt::TriangleMesh::computeNormals(&v87, 1);
  v68 = *a3;
  TypeID = AMTAdaptiveMeshGetTypeID();
  Instance = _AMTTypeCreateInstance(v68, TypeID, 0x160uLL);
  v79[0].__r_.__value_.__r.__words[0] = Instance;
  if (!Instance)
  {
    goto LABEL_71;
  }

  std::swap[abi:ne200100]<amt::MeshSubdivisionInfo>(Instance + 88, v80);
  amt::HashAdjacency::init(v79[0].__r_.__value_.__r.__words[0] + 16, (v79[0].__r_.__value_.__r.__words[0] + 184), 64);
  v8 = amt::AMTAdaptiveMeshInfoCreateWithMeshSubdivisionInfo(*a3, v79[0].__r_.__value_.__r.__words[0] + 88);
  if (!v8)
  {
    goto LABEL_72;
  }

  amt::AMTWrapper<__CFDictionary const*>::set((v79[0].__r_.__value_.__r.__words[0] + 312), v8);
  CFRelease(v8);
  v8 = AMTMeshCreateWithTriangleMesh(*a3, &v101);
  if (!v8)
  {
    goto LABEL_72;
  }

  amt::AMTWrapper<__CFDictionary const*>::set((v79[0].__r_.__value_.__r.__words[0] + 320), v8);
  CFRelease(v8);
  v8 = AMTMeshCreateWithTriangleMesh(*a3, &v87);
  if (!v8)
  {
    goto LABEL_72;
  }

  amt::AMTWrapper<__CFDictionary const*>::set((v79[0].__r_.__value_.__r.__words[0] + 328), v8);
  CFRelease(v8);
  if (!a2)
  {
LABEL_67:
    std::vector<unsigned int>::reserve((v79[0].__r_.__value_.__r.__words[0] + 288), ((*(&v93 + 1) - v93) >> 3));
    v71 = v79[0].__r_.__value_.__r.__words[0];
    *(v71 + 344) = AMTIndexUnifiedMeshCreateWithMesh(*a3, *(v79[0].__r_.__value_.__r.__words[0] + 320), (v79[0].__r_.__value_.__r.__words[0] + 288));
    v72 = v79[0].__r_.__value_.__r.__words[0];
    *(v72 + 352) = AMTIndexUnifiedMeshCreateWithMesh(*a3, *(v79[0].__r_.__value_.__r.__words[0] + 328), (v79[0].__r_.__value_.__r.__words[0] + 288));
    v8 = v79[0].__r_.__value_.__r.__words[0];
    if (!a2)
    {
LABEL_70:
      v79[0].__r_.__value_.__r.__words[0] = 0;
      goto LABEL_72;
    }

    v73 = AMTMeshSourceCreateWithMeshSource(*a3, *(v79[0].__r_.__value_.__r.__words[0] + 336), (v79[0].__r_.__value_.__r.__words[0] + 288));
    if (v73)
    {
      v8 = v79[0].__r_.__value_.__r.__words[0];
      *(v79[0].__r_.__value_.__r.__words[0] + 360) = v73;
      goto LABEL_70;
    }

LABEL_71:
    v8 = 0;
    goto LABEL_72;
  }

  v8 = CFRetain(a2);
  if (v8)
  {
    amt::AMTWrapper<__CFDictionary const*>::set((v79[0].__r_.__value_.__r.__words[0] + 336), v8);
    CFRelease(v8);
    goto LABEL_67;
  }

LABEL_72:
  amt::AMTWrapper<__AMTAdaptiveMesh *>::~AMTWrapper(&v79[0].__r_.__value_.__l.__data_);
LABEL_73:
  if (__p[1])
  {
    *&v85 = __p[1];
    operator delete(__p[1]);
  }

  amt::Adjacency<int>::~Adjacency(v83);
  if (__src[1])
  {
    *&v82 = __src[1];
    operator delete(__src[1]);
  }

  amt::Adjacency<int>::~Adjacency(v80);
  amt::TriangleMesh::~TriangleMesh(&v87);
LABEL_78:
  amt::TriangleMesh::~TriangleMesh(&v101);
  return v8;
}

void sub_23E761F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, const void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  amt::AMTWrapper<__AMTAdaptiveMesh *>::~AMTWrapper(&a24);
  amt::MeshSubdivisionInfo::~MeshSubdivisionInfo(&a51);
  amt::TriangleMesh::~TriangleMesh(&STACK[0x220]);
  amt::TriangleMesh::~TriangleMesh(&STACK[0x300]);
  _Unwind_Resume(a1);
}

const void *amt::AMTAdaptiveMeshCreateWithBaseMesh(void *a1, unsigned int a2, uint64_t a3)
{
  if (!a1 || (v6 = CFGetTypeID(a1), v6 != AMTMeshGetTypeID()))
  {
    amt::AMTAdaptiveMeshCreateWithBaseMesh();
  }

  v9 = 0;
  v8[0] = a2;
  v8[1] = 0;
  return amt::createAdaptiveMesh(a1, 0, a3, v8);
}

uint64_t amt::AMTAdaptiveMeshTessellate(uint64_t a1, uint64_t a2)
{
  v55[0] = xmmword_23E786B20;
  v55[1] = xmmword_23E786AD0;
  v55[2] = xmmword_23E786AB0;
  v55[3] = xmmword_23E786B30;
  v56 = 0;
  v58 = 0;
  v2 = *(a1 + 312);
  if (!v2 || (v5 = CFGetTypeID(*(a1 + 312)), v5 != CFDictionaryGetTypeID()))
  {
    amt::AMTAdaptiveMeshTessellate();
  }

  Value = CFDictionaryGetValue(v2, @"info.level_of_detail");
  if (!Value)
  {
    goto LABEL_29;
  }

  v7 = Value;
  v8 = CFGetTypeID(Value);
  if (v8 != CFArrayGetTypeID() || CFArrayGetCount(v7) <= 0)
  {
    goto LABEL_29;
  }

  v57 = CFArrayGetCount(v7) - 1;
  v9 = *(a2 + 8);
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = CFDictionaryGetValue(v9, @"option.subdivision_iteration_count");
  if (v10)
  {
    v11 = v10;
    v12 = CFGetTypeID(v10);
    if (v12 != CFNumberGetTypeID() || CFNumberGetType(v11) != kCFNumberSInt32Type)
    {
      goto LABEL_29;
    }

    LODWORD(valuePtr) = 0;
    CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr);
    v13 = v57;
    if (v57 < 0)
    {
      amt::updateSamples();
    }

    if (v57 >= valuePtr)
    {
      v13 = valuePtr;
    }

    if (valuePtr < 0)
    {
      v13 = 0;
    }

    v57 = v13;
  }

  v14 = CFDictionaryGetValue(*(a2 + 8), @"option.tessellation_max_edge_length");
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = v14;
  v16 = CFGetTypeID(v14);
  if (v16 == CFNumberGetTypeID() && CFNumberGetType(v15) == kCFNumberFloat32Type)
  {
    LODWORD(valuePtr) = 0;
    CFNumberGetValue(v15, kCFNumberFloat32Type, &valuePtr);
    v56 = valuePtr;
LABEL_20:
    valuePtr = &unk_28510E570;
    v44 = 0u;
    v45 = 0u;
    v46 = -1;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0;
    if (amt::AMTAdaptiveMeshTessellatorBasic::init(&valuePtr, a1))
    {
      amt::AMTAdaptiveMeshTessellatorBasic::tessellate(&valuePtr, v55);
      Sources = AMTMeshGetSources(*(a1 + 352));
      Count = CFArrayGetCount(Sources);
      if (Sources)
      {
        v19 = Count;
        v20 = CFGetTypeID(Sources);
        if (v20 == CFArrayGetTypeID())
        {
          theArray = CFArrayCreateMutable(*a2, v19, MEMORY[0x277CBF128]);
          if (v19 < 1)
          {
LABEL_28:
            Mutable = CFArrayCreateMutable(*a2, 0, MEMORY[0x277CBF128]);
            cf = Mutable;
            v40 = AMTMeshSourceIndicesCreateWithTriangles<int>(*a2, &v48 + 8, 0, 0);
            CFArrayAppendValue(Mutable, v40);
            v39 = AMTMeshElementCreateWithSourceIndicesArray(*a2, cf, 0, 0xAAAAAAAAAAAAAAABLL * ((v49 - *(&v48 + 1)) >> 2), 0);
            v38 = CFArrayCreateMutable(*a2, 0, MEMORY[0x277CBF128]);
            CFArrayAppendValue(v38, v39);
            v34 = AMTMeshCreateWithSources(*a2, theArray, v38);
            amt::AMTWrapper<__CFArray *>::~AMTWrapper(&v38);
            amt::AMTWrapper<__AMTMeshElement *>::~AMTWrapper(&v39);
            amt::AMTWrapper<__AMTMeshSourceIndices *>::~AMTWrapper(&v40);
            amt::AMTWrapper<__CFArray *>::~AMTWrapper(&cf);
          }

          else
          {
            v21 = 0;
            v36 = Sources;
            v37 = v19;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(Sources, v21);
              v23 = ValueAtIndex;
              if (!ValueAtIndex)
              {
                break;
              }

              v24 = CFGetTypeID(ValueAtIndex);
              if (v24 != AMTMeshSourceGetTypeID())
              {
                break;
              }

              Data = AMTMeshSourceGetData(v23);
              Semantic = AMTMeshSourceGetSemantic(v23);
              Instance = AMTMeshSourceGetInstance(v23);
              DataType = AMTMeshSourceGetDataType(v23);
              v29 = v46;
              ComponentsPerVector = AMTMeshSourceGetComponentsPerVector(v23);
              DataOffset = AMTMeshSourceGetDataOffset(v23);
              DataStride = AMTMeshSourceGetDataStride(v23);
              cf = AMTMeshSourceCreateWithData(*a2, Data, Semantic, Instance, DataType, v29 + 1, ComponentsPerVector, DataOffset, DataStride);
              CFArrayAppendValue(theArray, cf);
              Sources = v36;
              amt::AMTWrapper<__AMTMeshSource *>::~AMTWrapper(&cf);
              if (v37 == ++v21)
              {
                goto LABEL_28;
              }
            }

            v34 = 0;
          }

          amt::AMTWrapper<__CFArray *>::~AMTWrapper(&theArray);
          goto LABEL_39;
        }
      }

      if (*(a2 + 16))
      {
        goto LABEL_35;
      }
    }

    else if (*(a2 + 16))
    {
LABEL_35:
      v34 = 0;
      **(a2 + 16) = AMTErrorCreateWithErrorCode(-1);
LABEL_39:
      amt::AMTAdaptiveMeshTessellatorBasic::~AMTAdaptiveMeshTessellatorBasic(&valuePtr);
      return v34;
    }

    v34 = 0;
    goto LABEL_39;
  }

LABEL_29:
  v34 = 0;
  if (*(a2 + 16))
  {
    **(a2 + 16) = AMTErrorCreateWithErrorCode(-1);
  }

  return v34;
}

void sub_23E762510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va4, a6);
  va_start(va3, a6);
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v9 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v11 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v13 = va_arg(va4, const void *);
  amt::AMTWrapper<__AMTMeshElement *>::~AMTWrapper(va);
  amt::AMTWrapper<__AMTMeshSourceIndices *>::~AMTWrapper(va1);
  amt::AMTWrapper<__CFArray *>::~AMTWrapper(va2);
  amt::AMTWrapper<__CFArray *>::~AMTWrapper(va3);
  amt::AMTAdaptiveMeshTessellatorBasic::~AMTAdaptiveMeshTessellatorBasic(va4);
  _Unwind_Resume(a1);
}

uint64_t AMTMeshSourceIndicesCreateWithTriangles<int>(const __CFAllocator *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = *a2;
  v9 = *(a2 + 8) - v7;
  v10 = v9 >> 2;
  v13 = CFDataCreate(a1, v7, v9);
  v11 = AMTMeshSourceIndicesCreateWithData(a1, v13, a3, a4, 1, v10, 0, 4);
  amt::AMTWrapper<__CFData const*>::~AMTWrapper(&v13);
  return v11;
}

void sub_23E762638(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amt::AMTWrapper<__CFData const*>::~AMTWrapper(va);
  _Unwind_Resume(a1);
}

uint64_t amt::AMTPipelineOptions::info(amt::AMTPipelineOptions *this, const __CFAllocator *a2)
{
  {
    amt::AMTPipelineOptions::info(__CFAllocator const*)::instance = amt::AMTPipelineOptions::createOptionsInfo(this, v4);
    __cxa_atexit(amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper, &amt::AMTPipelineOptions::info(__CFAllocator const*)::instance, &dword_23E754000);
  }

  return amt::AMTPipelineOptions::info(__CFAllocator const*)::instance;
}

uint64_t amt::Operation::start(std::chrono::steady_clock::time_point *this)
{
  this[5].__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v2 = *(this->__d_.__rep_ + 48);
  if (!v2 || (v2(this[1].__d_.__rep_, *(this->__d_.__rep_ + 80)) & 1) != 0)
  {
    return 1;
  }

  if (!*(this->__d_.__rep_ + 16))
  {
    return 0;
  }

  v4 = AMTErrorCreateWithErrorCode(-2);
  result = 0;
  **(this->__d_.__rep_ + 16) = v4;
  return result;
}

const void **amt::Operation::ostat(const void **this, const __CFString *a2, const amt::TriangleMesh *a3)
{
  if (this[4])
  {
    v4 = this;
    v5 = amt::CFDictionaryCreateWithTriangleMesh(**this, a3, a3);
    CFDictionaryAddValue(v4[4], a2, v5);
    return amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(&v5);
  }

  return this;
}

void sub_23E7627D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(va);
  _Unwind_Resume(a1);
}

uint64_t amt::Operation::end(amt::Operation *this)
{
  v2.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  *(this + 6) = v2;
  amt::Operation::stat(this, @"info.processing_time_ms", (v2.__d_.__rep_ - *(this + 5)) / 1000000.0);
  Value = CFDictionaryGetValue(*(*this + 24), *(this + 1));
  v4 = *(*this + 56);
  if (!v4 || (v4(*(this + 1), Value, *(*this + 80)) & 1) != 0)
  {
    return 1;
  }

  if (!*(*this + 16))
  {
    return 0;
  }

  v6 = AMTErrorCreateWithErrorCode(-2);
  result = 0;
  **(*this + 16) = v6;
  return result;
}

uint64_t amt::Operation::Operation(uint64_t a1, __CFString *cf, uint64_t a3)
{
  *a1 = a3;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (!cf || (v4 = cf, v5 = CFGetTypeID(cf), v5 != CFStringGetTypeID()))
  {
    v4 = @"Unkown";
  }

  *(a1 + 8) = v4;
  CFRetain(v4);
  v6 = *(*a1 + 24);
  if (v6)
  {
    v7 = CFGetTypeID(v6);
    if (v7 == CFDictionaryGetTypeID())
    {
      v8 = MEMORY[0x277CBF138];
      v9 = MEMORY[0x277CBF150];
      *(a1 + 16) = CFDictionaryCreateMutable(**a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(a1 + 24) = CFDictionaryCreateMutable(**a1, 0, v8, v9);
      *(a1 + 32) = CFDictionaryCreateMutable(**a1, 0, v8, v9);
      CFDictionaryAddValue(*(*a1 + 24), *(a1 + 8), *(a1 + 16));
      v10 = *(a1 + 16);
      if (v10)
      {
        CFDictionaryAddValue(v10, @"info.input", *(a1 + 24));
        v11 = *(a1 + 16);
        if (v11)
        {
          CFDictionaryAddValue(v11, @"info.output", *(a1 + 32));
        }
      }
    }
  }

  return a1;
}

__CFDictionary *amt::CFDictionaryCreateWithTriangleMesh(amt *this, const __CFAllocator *a2, const amt::TriangleMesh *a3)
{
  Mutable = CFDictionaryCreateMutable(this, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v41 = -1431655765 * ((*(a2 + 10) - *(a2 + 9)) >> 2);
  v40 = CFNumberCreate(this, kCFNumberSInt32Type, &v41 + 4);
  v39 = CFNumberCreate(this, kCFNumberSInt32Type, &v41);
  CFDictionaryAddValue(Mutable, @"info.face_type", v40);
  CFDictionaryAddValue(Mutable, @"info.face_count", v39);
  v38 = CFDictionaryCreateMutable(this, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, @"info.position", v38);
  v5 = (*(a2 + 4) - *(a2 + 3)) >> 4;
  v36 = 3;
  v37 = v5;
  v35 = (*(a2 + 10) - *(a2 + 9)) >> 2;
  v34 = CFNumberCreate(this, kCFNumberSInt32Type, &v37);
  v33 = CFNumberCreate(this, kCFNumberSInt32Type, &v36);
  v32 = CFNumberCreate(this, kCFNumberSInt32Type, &v35);
  CFDictionaryAddValue(v38, @"info.vector_count", v34);
  CFDictionaryAddValue(v38, @"info.components_per_vector", v33);
  CFDictionaryAddValue(v38, @"info.index_count", v32);
  theDict = CFDictionaryCreateMutable(this, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, @"info.tex_coord", theDict);
  v6 = (*(a2 + 13) - *(a2 + 12)) >> 3;
  v29 = 2;
  v30 = v6;
  v28 = (*(a2 + 16) - *(a2 + 15)) >> 2;
  value = CFNumberCreate(this, kCFNumberSInt32Type, &v30);
  v26 = CFNumberCreate(this, kCFNumberSInt32Type, &v29);
  v25 = CFNumberCreate(this, kCFNumberSInt32Type, &v28);
  CFDictionaryAddValue(theDict, @"info.vector_count", value);
  CFDictionaryAddValue(theDict, @"info.components_per_vector", v26);
  CFDictionaryAddValue(theDict, @"info.index_count", v25);
  v24 = CFDictionaryCreateMutable(this, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, @"info.normal", v24);
  v7 = (*(a2 + 19) - *(a2 + 18)) >> 4;
  v22 = 3;
  v23 = v7;
  v21 = (*(a2 + 22) - *(a2 + 21)) >> 2;
  v20 = CFNumberCreate(this, kCFNumberSInt32Type, &v23);
  v19 = CFNumberCreate(this, kCFNumberSInt32Type, &v22);
  v18 = CFNumberCreate(this, kCFNumberSInt32Type, &v21);
  CFDictionaryAddValue(v24, @"info.vector_count", v20);
  CFDictionaryAddValue(v24, @"info.components_per_vector", v19);
  CFDictionaryAddValue(v24, @"info.index_count", v18);
  if (((*(a2 + 7) - *(a2 + 6)) & 0xFFFFFFFF0) != 0)
  {
    v17 = CFDictionaryCreateMutable(this, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionaryAddValue(Mutable, @"info.color", v17);
    v8 = (*(a2 + 7) - *(a2 + 6)) >> 4;
    v15 = 3;
    v16 = v8;
    v14 = (*(a2 + 16) - *(a2 + 15)) >> 2;
    v13 = CFNumberCreate(this, kCFNumberSInt32Type, &v16);
    v12 = CFNumberCreate(this, kCFNumberSInt32Type, &v15);
    v11 = CFNumberCreate(this, kCFNumberSInt32Type, &v14);
    CFDictionaryAddValue(v17, @"info.vector_count", v13);
    CFDictionaryAddValue(v17, @"info.components_per_vector", v12);
    CFDictionaryAddValue(v17, @"info.index_count", v11);
    amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v11);
    amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v12);
    amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v13);
    amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&v17);
  }

  v9 = Mutable;
  Mutable = 0;
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v18);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v19);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v20);
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&v24);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v25);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v26);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&value);
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&theDict);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v32);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v33);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v34);
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&v38);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v39);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v40);
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&Mutable);
  return v9;
}

void sub_23E762EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, const void *a11, uint64_t a12, uint64_t a13, const void *a14, const void *a15, const void *a16, const void *a17, uint64_t a18, uint64_t a19, const void *a20, const void *a21, const void *a22, const void *a23, uint64_t a24, uint64_t a25, const void *a26)
{
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&a10);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&a11);
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&a14);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&a15);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&a16);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&a17);
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&a20);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&a21);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&a22);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&a23);
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&a26);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper((v26 - 128));
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper((v26 - 120));
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper((v26 - 112));
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper((v26 - 88));
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper((v26 - 80));
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper((v26 - 72));
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper((v26 - 56));
  _Unwind_Resume(a1);
}

const void **amt::Operation::stat(const void **this, const __CFString *a2, double a3)
{
  valuePtr = a3;
  if (this[2])
  {
    v4 = this;
    v5 = CFNumberCreate(**this, kCFNumberFloat64Type, &valuePtr);
    CFDictionaryAddValue(v4[2], a2, v5);
    return amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v5);
  }

  return this;
}

void amt::Operation::~Operation(amt::Operation *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    CFRelease(v5);
  }
}

const void **amt::Operation::istat(const void **this, const __CFString *a2, const amt::TriangleMesh *a3)
{
  if (this[3])
  {
    v4 = this;
    v5 = amt::CFDictionaryCreateWithTriangleMesh(**this, a3, a3);
    CFDictionaryAddValue(v4[3], a2, v5);
    return amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(&v5);
  }

  return this;
}

void sub_23E763128(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(va);
  _Unwind_Resume(a1);
}

uint64_t amt::saveMeshObj(uint64_t a1, amt::TriangleMesh *a2)
{
  v178[19] = *MEMORY[0x277D85DE8];
  std::ofstream::basic_ofstream(&v176, a1);
  if (!v177[15])
  {
    v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Error: can't save ", 18);
    v88 = *(a1 + 23);
    if (v88 >= 0)
    {
      v89 = a1;
    }

    else
    {
      v89 = *a1;
    }

    if (v88 >= 0)
    {
      v90 = *(a1 + 23);
    }

    else
    {
      v90 = *(a1 + 8);
    }

    v91 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, v89, v90);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "!\n", 2);
    v92 = 0xFFFFFFFFLL;
    goto LABEL_70;
  }

  v4 = v176;
  *(v177 + *(v176 - 24)) = *(v177 + *(v176 - 24)) & 0xFFFFFEFB | 4;
  *(&v177[1] + *(v4 - 24)) = 17;
  v5 = -1431655765 * ((*(a2 + 22) - *(a2 + 21)) >> 2);
  v162 = v5;
  v163 = -1431655765 * ((*(a2 + 10) - *(a2 + 9)) >> 2);
  if (v5)
  {
    v6 = v5 == -1431655765 * ((*(a2 + 10) - *(a2 + 9)) >> 2);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v157 = "nTriCount == 0 || nTriCount == triCount";
    v158 = 672;
    goto LABEL_113;
  }

  v8 = *(a2 + 3);
  v7 = *(a2 + 4);
  v10 = *(a2 + 12);
  v9 = *(a2 + 13);
  v11 = -1431655765 * ((*(a2 + 16) - *(a2 + 15)) >> 2);
  v168 = a2;
  v14 = (a2 + 144);
  v13 = *(a2 + 18);
  v12 = v14[1];
  if (v11 && v11 != v163)
  {
    v157 = "tcTriCount == 0 || tcTriCount == triCount";
    v158 = 673;
LABEL_113:
    __assert_rtn("saveMeshObj", "AMTTriangleMesh.hpp", v158, v157);
  }

  v160 = v11;
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v176, "####", 4);
  LOBYTE(v174) = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, &v174, 1);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v176, "# Coord:     ", 13);
  v17 = (v7 - v8) >> 4;
  v18 = MEMORY[0x23EF11C10](v16, v17);
  LOBYTE(v174) = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, &v174, 1);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v176, "# Normals:   ", 13);
  *v164 = (v12 - v13) >> 4;
  v20 = MEMORY[0x23EF11C10](v19);
  LOBYTE(v174) = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, &v174, 1);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v176, "# TexCoord:  ", 13);
  v22 = (v9 - v10) >> 3;
  v23 = MEMORY[0x23EF11C10](v21, v22);
  LOBYTE(v174) = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, &v174, 1);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v176, "# Triangles: ", 13);
  v25 = MEMORY[0x23EF11C10](v24, v163);
  LOBYTE(v174) = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, &v174, 1);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v176, "####", 4);
  LOBYTE(v174) = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, &v174, 1);
  v27 = *(v168 + 215);
  if ((v27 & 0x80u) != 0)
  {
    v27 = *(v168 + 25);
  }

  if (v27)
  {
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v176, "mtllib ", 7);
    v29 = *(v168 + 215);
    if (v29 >= 0)
    {
      v30 = v168 + 192;
    }

    else
    {
      v30 = *(v168 + 24);
    }

    if (v29 >= 0)
    {
      v31 = *(v168 + 215);
    }

    else
    {
      v31 = *(v168 + 25);
    }

    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
    LOBYTE(v174) = 10;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, &v174, 1);
  }

  if (v17 >= 1)
  {
    v33 = 0;
    v34 = (*(v168 + 7) - *(v168 + 6)) >> 4;
    v35 = (*(v168 + 1) - *v168) >> 4;
    do
    {
      v36 = amt::TriangleMesh::position(v168, v33);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v176, "v ", 2);
      v37 = *v36;
      v38 = std::ostream::operator<<();
      LOBYTE(v174) = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, &v174, 1);
      v39 = v36[1];
      v40 = std::ostream::operator<<();
      LOBYTE(v174) = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, &v174, 1);
      v41 = v36[2];
      std::ostream::operator<<();
      if (v34 == v17)
      {
        v166 = *amt::TriangleMesh::color(v168, v33);
        LOBYTE(v174) = 32;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v176, &v174, 1);
        v42 = std::ostream::operator<<();
        LOBYTE(v174) = 32;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, &v174, 1);
        v43 = std::ostream::operator<<();
        LOBYTE(v174) = 32;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, &v174, 1);
        std::ostream::operator<<();
      }

      if (v35 == v17)
      {
        v44 = amt::TriangleMesh::displacement(v168, v33);
        LOBYTE(v174) = 32;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v176, &v174, 1);
        v45 = *v44;
        v46 = std::ostream::operator<<();
        LOBYTE(v174) = 32;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, &v174, 1);
        v47 = v44[1];
        v48 = std::ostream::operator<<();
        LOBYTE(v174) = 32;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, &v174, 1);
        v49 = v44[2];
        std::ostream::operator<<();
      }

      LOBYTE(v174) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v176, &v174, 1);
      ++v33;
    }

    while (v17 != v33);
  }

  if (v22 >= 1)
  {
    v50 = 0;
    do
    {
      v51 = amt::TriangleMesh::texCoord(v168, v50);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v176, "vt ", 3);
      v52 = *v51;
      v53 = std::ostream::operator<<();
      LOBYTE(v174) = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, &v174, 1);
      v54 = *(v51 + 4);
      v55 = std::ostream::operator<<();
      LOBYTE(v174) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, &v174, 1);
      ++v50;
    }

    while (v22 != v50);
  }

  if (v164[0] >= 1)
  {
    v56 = 0;
    do
    {
      v57 = amt::TriangleMesh::normal(v168, v56);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v176, "vn ", 3);
      v58 = *v57;
      v59 = std::ostream::operator<<();
      LOBYTE(v174) = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, &v174, 1);
      v60 = v57[1];
      v61 = std::ostream::operator<<();
      LOBYTE(v174) = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, &v174, 1);
      v62 = v57[2];
      v63 = std::ostream::operator<<();
      LOBYTE(v174) = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, &v174, 1);
      ++v56;
    }

    while (v164[0] != v56);
LABEL_32:
    if (v163 >= 1)
    {
      v64 = 0;
      while (1)
      {
        amt::TriangleMesh::triangle(v168, v64, &v172);
        for (i = 0; i != 12; i += 4)
        {
          *(&v174 + i) = *(&v172 + i) + 1;
        }

        v67 = v174;
        v66 = HIDWORD(v174);
        v68 = v175;
        if (v162)
        {
          amt::TriangleMesh::normalTriangle(v168, v64, &v170);
          for (j = 0; j != 12; j += 4)
          {
            *(&v172 + j) = *(&v170 + j) + 1;
          }
        }

        else
        {
          v172 = v174;
          v173 = v175;
        }

        v70 = 733;
        if (v67 == v66 || v67 == v68)
        {
          break;
        }

        v71 = "i0 != j0 && i0 != k0 && j0 != k0";
        if (v66 == v68)
        {
          goto LABEL_108;
        }

        v72 = v172;
        v73 = HIDWORD(v172);
        v70 = 734;
        if (v172 == HIDWORD(v172) || (v74 = v173, v172 == v173))
        {
          v71 = "i1 != j1 && i1 != k1 && j1 != k1";
LABEL_108:
          __assert_rtn("saveMeshObj", "AMTTriangleMesh.hpp", v70, v71);
        }

        v71 = "i1 != j1 && i1 != k1 && j1 != k1";
        if (HIDWORD(v172) == v173)
        {
          goto LABEL_108;
        }

        v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v176, "f ", 2);
        v76 = MEMORY[0x23EF11C10](v75, v67);
        v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, "//", 2);
        v78 = MEMORY[0x23EF11C10](v77, v72);
        LOBYTE(v170) = 32;
        v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, &v170, 1);
        v80 = MEMORY[0x23EF11C10](v79, v66);
        v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "//", 2);
        v82 = MEMORY[0x23EF11C10](v81, v73);
        LOBYTE(v170) = 32;
        v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, &v170, 1);
        v84 = MEMORY[0x23EF11C10](v83, v68);
        v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "//", 2);
        v86 = MEMORY[0x23EF11C10](v85, v74);
        LOBYTE(v170) = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, &v170, 1);
        if (++v64 == v163)
        {
          goto LABEL_69;
        }
      }

      v71 = "i0 != j0 && i0 != k0 && j0 != k0";
      goto LABEL_108;
    }

    goto LABEL_69;
  }

  if (!(v22 | v164[0]))
  {
    if (v163 >= 1)
    {
      for (k = 0; k != v163; ++k)
      {
        amt::TriangleMesh::triangle(v168, k, &v172);
        for (m = 0; m != 12; m += 4)
        {
          *(&v174 + m) = *(&v172 + m) + 1;
        }

        v96 = v174;
        v95 = HIDWORD(v174);
        v97 = v175;
        if (v174 == HIDWORD(v174) || v174 == v175 || HIDWORD(v174) == v175)
        {
          __assert_rtn("saveMeshObj", "AMTTriangleMesh.hpp", 717, "i != j && i != k && j != k");
        }

        v100 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v176, "f ", 2);
        v101 = MEMORY[0x23EF11C10](v100, v96);
        LOBYTE(v172) = 32;
        v102 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, &v172, 1);
        v103 = MEMORY[0x23EF11C10](v102, v95);
        LOBYTE(v172) = 32;
        v104 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, &v172, 1);
        v105 = MEMORY[0x23EF11C10](v104, v97);
        LOBYTE(v172) = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v105, &v172, 1);
      }
    }

    goto LABEL_69;
  }

  if (v164[0])
  {
    goto LABEL_32;
  }

  if (v22)
  {
    if (v163 >= 1)
    {
      for (n = 0; n != v163; ++n)
      {
        amt::TriangleMesh::triangle(v168, n, &v172);
        for (ii = 0; ii != 12; ii += 4)
        {
          *(&v174 + ii) = *(&v172 + ii) + 1;
        }

        v111 = v174;
        v110 = HIDWORD(v174);
        v112 = v175;
        if (v160)
        {
          amt::TriangleMesh::texCoordTriangle(v168, n, &v170);
          for (jj = 0; jj != 12; jj += 4)
          {
            *(&v172 + jj) = *(&v170 + jj) + 1;
          }
        }

        else
        {
          v172 = v174;
          v173 = v175;
        }

        if (v111 == v110 || v111 == v112 || v110 == v112)
        {
          __assert_rtn("saveMeshObj", "AMTTriangleMesh.hpp", 751, "i0 != j0 && i0 != k0 && j0 != k0");
        }

        v114 = v172;
        v115 = HIDWORD(v172);
        v116 = v173;
        v117 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v176, "f ", 2);
        v118 = MEMORY[0x23EF11C10](v117, v111);
        LOBYTE(v170) = 47;
        v119 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, &v170, 1);
        v120 = MEMORY[0x23EF11C10](v119, v114);
        LOBYTE(v170) = 32;
        v121 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v120, &v170, 1);
        v122 = MEMORY[0x23EF11C10](v121, v110);
        LOBYTE(v170) = 47;
        v123 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, &v170, 1);
        v124 = MEMORY[0x23EF11C10](v123, v115);
        LOBYTE(v170) = 32;
        v125 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v124, &v170, 1);
        v126 = MEMORY[0x23EF11C10](v125, v112);
        LOBYTE(v170) = 47;
        v127 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v126, &v170, 1);
        v128 = MEMORY[0x23EF11C10](v127, v116);
        LOBYTE(v170) = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v128, &v170, 1);
        v92 = 0;
      }

      goto LABEL_70;
    }

LABEL_69:
    v92 = 0;
    goto LABEL_70;
  }

  if (v163 < 1)
  {
    goto LABEL_69;
  }

  v129 = 0;
  do
  {
    amt::TriangleMesh::triangle(v168, v129, &v172);
    for (kk = 0; kk != 12; kk += 4)
    {
      *(&v174 + kk) = *(&v172 + kk) + 1;
    }

    v132 = v174;
    v131 = HIDWORD(v174);
    v167 = v175;
    v165 = v129;
    if (v160)
    {
      amt::TriangleMesh::texCoordTriangle(v168, v129, &v170);
      for (mm = 0; mm != 12; mm += 4)
      {
        *(&v172 + mm) = *(&v170 + mm) + 1;
      }
    }

    else
    {
      v172 = v174;
      v173 = v175;
    }

    v135 = v172;
    v134 = HIDWORD(v172);
    v161 = v173;
    if (v162)
    {
      amt::TriangleMesh::normalTriangle(v168, v165, v169);
      for (nn = 0; nn != 12; nn += 4)
      {
        *(&v170 + nn) = *&v169[nn] + 1;
      }
    }

    else
    {
      v170 = v174;
      v171 = v175;
    }

    if (v132 == v131 || v132 == v167 || v131 == v167)
    {
      __assert_rtn("saveMeshObj", "AMTTriangleMesh.hpp", 774, "i0 != j0 && i0 != k0 && j0 != k0");
    }

    v137 = v170;
    v138 = HIDWORD(v170);
    v159 = v171;
    v139 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v176, "f ", 2);
    v140 = MEMORY[0x23EF11C10](v139, v132);
    v169[0] = 47;
    v141 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v140, v169, 1);
    v142 = MEMORY[0x23EF11C10](v141, v135);
    v169[0] = 47;
    v143 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v142, v169, 1);
    v144 = MEMORY[0x23EF11C10](v143, v137);
    v169[0] = 32;
    v145 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v144, v169, 1);
    v146 = MEMORY[0x23EF11C10](v145, v131);
    v169[0] = 47;
    v147 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v146, v169, 1);
    v148 = MEMORY[0x23EF11C10](v147, v134);
    v169[0] = 47;
    v149 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v148, v169, 1);
    v150 = MEMORY[0x23EF11C10](v149, v138);
    v169[0] = 32;
    v151 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v150, v169, 1);
    v152 = MEMORY[0x23EF11C10](v151, v167);
    v169[0] = 47;
    v153 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v152, v169, 1);
    v154 = MEMORY[0x23EF11C10](v153, v161);
    v169[0] = 47;
    v155 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v154, v169, 1);
    v156 = MEMORY[0x23EF11C10](v155, v159);
    v169[0] = 10;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v156, v169, 1);
    v92 = 0;
    v129 = v165 + 1;
  }

  while (v165 + 1 != v163);
LABEL_70:
  v176 = *MEMORY[0x277D82810];
  *(&v177[-1] + *(v176 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x23EF11B90](v177);
  std::ostream::~ostream();
  MEMORY[0x23EF11E10](v178);
  v106 = *MEMORY[0x277D85DE8];
  return v92;
}

void sub_23E763F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  a26 = *MEMORY[0x277D82810];
  *(&a26 + *(a26 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x23EF11B90](&a27);
  std::ostream::~ostream();
  MEMORY[0x23EF11E10](&STACK[0x228]);
  _Unwind_Resume(a1);
}

float32_t amt::NormalizationInfo::init(float32x4_t *this, const amt::TriangleMesh *a2)
{
  v2 = *(a2 + 3);
  v3 = *(a2 + 4);
  v4.i64[0] = 0x80000000800000;
  v4.i64[1] = 0x80000000800000;
  v5 = vnegq_f32(v4);
  while (v2 != v3)
  {
    v6 = 0;
    v7 = *v2;
    do
    {
      v8 = v5.i32[3];
      v9 = v4;
      v10 = (&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3)));
      v11 = (&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3)));
      v25 = v5;
      v12 = *v11;
      v23 = v7;
      v13 = *(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3)));
      if (v13 < v12)
      {
        v12 = *(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3)));
      }

      *v11 = v12;
      v5 = v25;
      v5.i32[3] = v8;
      v24 = v9;
      if (*v10 >= v13)
      {
        v13 = *v10;
      }

      *v10 = v13;
      v4 = v24;
      v4.i32[3] = v9.i32[3];
      ++v6;
    }

    while (v6 != 3);
    ++v2;
  }

  v14 = 0;
  this->i32[2] = v5.i32[2];
  this[1].i32[2] = v4.i32[2];
  this->i64[0] = v5.i64[0];
  this[1].i64[0] = v4.i64[0];
  v16 = *this;
  v15 = this[1];
  v17.i64[0] = 0x3F0000003F000000;
  v17.i64[1] = 0x3F0000003F000000;
  this[2] = vmulq_f32(vaddq_f32(v15, *this), v17);
  v18 = vsubq_f32(v15, v16);
  v19 = 0.0;
  do
  {
    v22 = v18;
    v20 = *(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3)));
    v19 = v19 + (v20 * v20);
    ++v14;
  }

  while (v14 != 3);
  result = sqrtf(v19) * 0.5;
  this[3].f32[0] = result;
  return result;
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1, uint64_t *a2)
{
  a1[58] = 0;
  v4 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v5 = *(MEMORY[0x277D82810] + 16);
  v6 = *(MEMORY[0x277D82810] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 1);
  v8 = MEMORY[0x277D82860] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[52] = v4;
  MEMORY[0x23EF11B80](a1 + 1);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_23E7642DC(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x23EF11E10](v1);
  _Unwind_Resume(a1);
}

uint64_t amt::TriangleMesh::color(amt::TriangleMesh *this, int a2)
{
  if (a2 < 0 || (v2 = *(this + 6), ((*(this + 7) - v2) >> 4) <= a2))
  {
    amt::TriangleMesh::color();
  }

  return v2 + 16 * a2;
}

{
  if (a2 < 0 || (v2 = *(this + 6), ((*(this + 7) - v2) >> 4) <= a2))
  {
    amt::TriangleMesh::color();
  }

  return v2 + 16 * a2;
}

uint64_t amt::TriangleMesh::displacement(amt::TriangleMesh *this, int a2)
{
  if (a2 < 0 || ((*(this + 1) - *this) >> 4) <= a2)
  {
    amt::TriangleMesh::displacement();
  }

  return *this + 16 * a2;
}

uint64_t amt::TriangleMesh::texCoord(amt::TriangleMesh *this, int a2)
{
  if (a2 < 0 || (v2 = *(this + 12), ((*(this + 13) - v2) >> 3) <= a2))
  {
    amt::TriangleMesh::texCoord();
  }

  return v2 + 8 * a2;
}

{
  if (a2 < 0 || (v2 = *(this + 12), ((*(this + 13) - v2) >> 3) <= a2))
  {
    amt::TriangleMesh::texCoord();
  }

  return v2 + 8 * a2;
}

uint64_t amt::TriangleMesh::triangle@<X0>(uint64_t this@<X0>, signed int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 < 0 || (v3 = *(this + 72), (-1431655765 * ((*(this + 80) - v3) >> 2)) <= a2))
  {
    amt::TriangleMesh::triangle();
  }

  v4 = v3 + 12 * a2;
  *a3 = *v4;
  *(a3 + 8) = *(v4 + 8);
  return this;
}

uint64_t amt::TriangleMesh::normalTriangle@<X0>(uint64_t this@<X0>, signed int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 < 0 || (v3 = *(this + 168), (-1431655765 * ((*(this + 176) - v3) >> 2)) <= a2))
  {
    amt::TriangleMesh::normalTriangle();
  }

  v4 = v3 + 12 * a2;
  *a3 = *v4;
  *(a3 + 8) = *(v4 + 8);
  return this;
}

uint64_t amt::unifyVertices(uint64_t *a1, uint64_t *a2, void *a3, uint64_t *a4, float a5)
{
  memset(&v34, 0, sizeof(v34));
  v11 = *a1;
  v10 = a1[1];
  v13 = *a2;
  v12 = a2[1];
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a3, 0);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(a3, (a1[1] - *a1) >> 4);
  std::vector<amt::Vec<int,3>>::resize(a4, 0);
  std::vector<amt::Vec<int,3>>::reserve(a4, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2));
  v14 = v10 - v11;
  memset(v32, 0, sizeof(v32));
  v33 = 1065353216;
  std::vector<int>::resize(&v34, (v14 >> 4));
  v29 = v13;
  v30 = v12;
  if ((v14 >> 4) < 1)
  {
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 1.0 / fmaxf(a5, 0.000001);
    do
    {
      v18 = 0;
      v19 = (*a1 + 16 * v15);
      do
      {
        v31[v18] = llroundf(v17 * v19[v18 & 3]);
        ++v18;
      }

      while (v18 != 3);
      v20 = std::__hash_table<std::__hash_value_type<amt::Vec<long long,3>,int>,std::__unordered_map_hasher<amt::Vec<long long,3>,std::__hash_value_type<amt::Vec<long long,3>,int>,amt::HashVec<long long,3>,std::equal_to<amt::Vec<long long,3>>,true>,std::__unordered_map_equal<amt::Vec<long long,3>,std::__hash_value_type<amt::Vec<long long,3>,int>,std::equal_to<amt::Vec<long long,3>>,amt::HashVec<long long,3>,true>,std::allocator<std::__hash_value_type<amt::Vec<long long,3>,int>>>::find<amt::Vec<long long,3>>(v32, v31);
      if (v20)
      {
        v34.__begin_[v15] = *(v20 + 10);
      }

      else
      {
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(a3, v19);
        v35 = v31;
        *(std::__hash_table<std::__hash_value_type<amt::Vec<long long,3>,int>,std::__unordered_map_hasher<amt::Vec<long long,3>,std::__hash_value_type<amt::Vec<long long,3>,int>,amt::HashVec<long long,3>,std::equal_to<amt::Vec<long long,3>>,true>,std::__unordered_map_equal<amt::Vec<long long,3>,std::__hash_value_type<amt::Vec<long long,3>,int>,std::equal_to<amt::Vec<long long,3>>,amt::HashVec<long long,3>,true>,std::allocator<std::__hash_value_type<amt::Vec<long long,3>,int>>>::__emplace_unique_key_args<amt::Vec<long long,3>,std::piecewise_construct_t const&,std::tuple<amt::Vec<long long,3> const&>,std::tuple<>>(v32, v31) + 10) = v16;
        v34.__begin_[v15] = v16;
        v16 = (v16 + 1);
      }

      ++v15;
    }

    while (v15 != ((v14 >> 4) & 0x7FFFFFFF));
  }

  if (v16 > (v14 >> 4))
  {
    __assert_rtn("unifyVertices", "AMTTriangleMesh.hpp", 815, "pointCounter <= pointCount0");
  }

  v21 = -1431655765 * ((v30 - v29) >> 2);
  std::vector<amt::Vec<int,3>>::resize(a4, v21);
  if (v21 >= 1)
  {
    v22 = 0;
    v23 = *a2;
    v24 = *a4;
    begin = v34.__begin_;
    do
    {
      for (i = 0; i != 12; i += 4)
      {
        v27 = begin[*(v23 + i)];
        *(v24 + i) = v27;
        if (v27 < 0 || v27 >= v16)
        {
          __assert_rtn("unifyVertices", "AMTTriangleMesh.hpp", 822, "tri1[k] >= 0 && tri1[k] < pointCounter");
        }
      }

      ++v22;
      v23 += 12;
      v24 += 12;
    }

    while (v22 != (v21 & 0x7FFFFFFF));
  }

  std::__hash_table<std::__hash_value_type<amt::Vec<long long,3>,int>,std::__unordered_map_hasher<amt::Vec<long long,3>,std::__hash_value_type<amt::Vec<long long,3>,int>,amt::HashVec<long long,3>,std::equal_to<amt::Vec<long long,3>>,true>,std::__unordered_map_equal<amt::Vec<long long,3>,std::__hash_value_type<amt::Vec<long long,3>,int>,std::equal_to<amt::Vec<long long,3>>,amt::HashVec<long long,3>,true>,std::allocator<std::__hash_value_type<amt::Vec<long long,3>,int>>>::~__hash_table(v32);
  if (v34.__begin_)
  {
    v34.__end_ = v34.__begin_;
    operator delete(v34.__begin_);
  }

  return v16;
}

void sub_23E764744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  std::__hash_table<std::__hash_value_type<amt::Vec<long long,3>,int>,std::__unordered_map_hasher<amt::Vec<long long,3>,std::__hash_value_type<amt::Vec<long long,3>,int>,amt::HashVec<long long,3>,std::equal_to<amt::Vec<long long,3>>,true>,std::__unordered_map_equal<amt::Vec<long long,3>,std::__hash_value_type<amt::Vec<long long,3>,int>,std::equal_to<amt::Vec<long long,3>>,amt::HashVec<long long,3>,true>,std::allocator<std::__hash_value_type<amt::Vec<long long,3>,int>>>::~__hash_table(&a15);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void amt::removeDegeneratedTriangles(amt *this, amt::TriangleMesh *a2)
{
  v2 = -1431655765 * ((*(this + 10) - *(this + 9)) >> 2);
  if (v2 >= 1)
  {
    v5 = *(this + 15);
    v4 = *(this + 16);
    v7 = *(this + 21);
    v6 = *(this + 22);
    v39[0] = 0;
    v39[1] = 0;
    v40 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v38 = 0;
    v35 = 0;
    v36 = 0uLL;
    std::vector<amt::Vec<int,3>>::reserve(v39, v2 & 0x7FFFFFFF);
    v8 = -1431655765 * ((v4 - v5) >> 2);
    if (v8 == v2)
    {
      std::vector<amt::Vec<int,3>>::reserve(__p, v2 & 0x7FFFFFFF);
    }

    v9 = -1431655765 * ((v6 - v7) >> 2);
    if (v9 == v2)
    {
      std::vector<amt::Vec<int,3>>::reserve(&v35, v2 & 0x7FFFFFFF);
    }

    for (i = 0; i != v2; ++i)
    {
      amt::TriangleMesh::triangle(this, i, &v33);
      if (v33 != HIDWORD(v33) && v33 != v34 && HIDWORD(v33) != v34)
      {
        v12 = v39[1];
        if (v39[1] >= v40)
        {
          v15 = 0xAAAAAAAAAAAAAAABLL * ((v39[1] - v39[0]) >> 2);
          v16 = v15 + 1;
          if (v15 + 1 > 0x1555555555555555)
          {
            std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v40 - v39[0]) >> 2) > v16)
          {
            v16 = 0x5555555555555556 * ((v40 - v39[0]) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v40 - v39[0]) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v17 = 0x1555555555555555;
          }

          else
          {
            v17 = v16;
          }

          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<amt::Vec<int,3>>>(v39, v17);
          }

          v18 = 4 * ((v39[1] - v39[0]) >> 2);
          v19 = v33;
          *(v18 + 8) = v34;
          *v18 = v19;
          v20 = v39[0];
          v21 = v39[1];
          v22 = (12 * v15 + v39[0] - v39[1]);
          if (v39[0] != v39[1])
          {
            v23 = v18 + v39[0] - v39[1];
            do
            {
              v24 = *v20;
              *(v23 + 8) = v20[2];
              *v23 = v24;
              v23 += 12;
              v20 += 3;
            }

            while (v20 != v21);
            v20 = v39[0];
          }

          v14 = (v18 + 12);
          v39[0] = v22;
          v39[1] = (v18 + 12);
          v40 = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          v13 = v33;
          *(v39[1] + 2) = v34;
          *v12 = v13;
          v14 = v12 + 12;
        }

        v39[1] = v14;
        if (v8 == v2)
        {
          amt::TriangleMesh::texCoordTriangle(this, i, &v32);
          std::vector<amt::Vec<int,3>>::push_back[abi:ne200100](__p, &v32);
        }

        if (v9 == v2)
        {
          amt::TriangleMesh::normalTriangle(this, i, &v32);
          std::vector<amt::Vec<int,3>>::push_back[abi:ne200100](&v35, &v32);
        }
      }
    }

    v25 = *(this + 72);
    *(this + 72) = *v39;
    *v39 = v25;
    v26 = *(this + 11);
    *(this + 11) = v40;
    v40 = v26;
    if (v8 == v2)
    {
      v27 = *(this + 120);
      *(this + 120) = *__p;
      *__p = v27;
      v28 = *(this + 17);
      *(this + 17) = v38;
      v38 = v28;
    }

    v29 = v35;
    if (v9 == v2)
    {
      v30 = *(this + 21);
      *(this + 21) = v35;
      v31 = *(this + 23);
      *(this + 11) = v36;
      v35 = v30;
      *(&v36 + 1) = v31;
      v29 = v30;
    }

    if (v29)
    {
      *&v36 = v29;
      operator delete(v29);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v39[0])
    {
      v39[1] = v39[0];
      operator delete(v39[0]);
    }
  }
}

void sub_23E764A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(result, a2);
    }

    std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<amt::Vec<int,3>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0x1555555555555556)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<amt::Vec<int,3>>>(result, a2);
    }

    std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *std::__hash_table<std::__hash_value_type<amt::Vec<long long,3>,int>,std::__unordered_map_hasher<amt::Vec<long long,3>,std::__hash_value_type<amt::Vec<long long,3>,int>,amt::HashVec<long long,3>,std::equal_to<amt::Vec<long long,3>>,true>,std::__unordered_map_equal<amt::Vec<long long,3>,std::__hash_value_type<amt::Vec<long long,3>,int>,std::equal_to<amt::Vec<long long,3>>,amt::HashVec<long long,3>,true>,std::allocator<std::__hash_value_type<amt::Vec<long long,3>,int>>>::find<amt::Vec<long long,3>>(void *a1, unint64_t *a2)
{
  v2 = 0;
  v3 = *a2;
  do
  {
    v3 ^= (v3 << 6) + (v3 >> 2) + 2654435769u + a2[++v2];
  }

  while (v2 != 2);
  v4 = a1[1];
  if (!*&v4)
  {
    return 0;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v3;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  result = *v7;
  if (*v7)
  {
    do
    {
      v9 = result[1];
      if (v9 == v3)
      {
        if (result[2] == *a2 && result[3] == a2[1] && result[4] == a2[2])
        {
          return result;
        }
      }

      else
      {
        if (v5.u32[0] > 1uLL)
        {
          if (v9 >= *&v4)
          {
            v9 %= *&v4;
          }
        }

        else
        {
          v9 &= *&v4 - 1;
        }

        if (v9 != v6)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<amt::Vec<long long,3>,int>,std::__unordered_map_hasher<amt::Vec<long long,3>,std::__hash_value_type<amt::Vec<long long,3>,int>,amt::HashVec<long long,3>,std::equal_to<amt::Vec<long long,3>>,true>,std::__unordered_map_equal<amt::Vec<long long,3>,std::__hash_value_type<amt::Vec<long long,3>,int>,std::equal_to<amt::Vec<long long,3>>,amt::HashVec<long long,3>,true>,std::allocator<std::__hash_value_type<amt::Vec<long long,3>,int>>>::__emplace_unique_key_args<amt::Vec<long long,3>,std::piecewise_construct_t const&,std::tuple<amt::Vec<long long,3> const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = 0;
  v3 = *a2;
  do
  {
    v3 ^= (v3 << 6) + (v3 >> 2) + 2654435769u + a2[++v2];
  }

  while (v2 != 2);
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v3;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1] || v8[4] != a2[2])
  {
    goto LABEL_21;
  }

  return v8;
}

void std::__hash_table<std::__hash_value_type<amt::Vec<long long,3>,int>,std::__unordered_map_hasher<amt::Vec<long long,3>,std::__hash_value_type<amt::Vec<long long,3>,int>,amt::HashVec<long long,3>,std::equal_to<amt::Vec<long long,3>>,true>,std::__unordered_map_equal<amt::Vec<long long,3>,std::__hash_value_type<amt::Vec<long long,3>,int>,std::equal_to<amt::Vec<long long,3>>,amt::HashVec<long long,3>,true>,std::allocator<std::__hash_value_type<amt::Vec<long long,3>,int>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<amt::Vec<long long,3>,int>,std::__unordered_map_hasher<amt::Vec<long long,3>,std::__hash_value_type<amt::Vec<long long,3>,int>,amt::HashVec<long long,3>,std::equal_to<amt::Vec<long long,3>>,true>,std::__unordered_map_equal<amt::Vec<long long,3>,std::__hash_value_type<amt::Vec<long long,3>,int>,std::equal_to<amt::Vec<long long,3>>,amt::HashVec<long long,3>,true>,std::allocator<std::__hash_value_type<amt::Vec<long long,3>,int>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<amt::Vec<long long,3>,int>,std::__unordered_map_hasher<amt::Vec<long long,3>,std::__hash_value_type<amt::Vec<long long,3>,int>,amt::HashVec<long long,3>,std::equal_to<amt::Vec<long long,3>>,true>,std::__unordered_map_equal<amt::Vec<long long,3>,std::__hash_value_type<amt::Vec<long long,3>,int>,std::equal_to<amt::Vec<long long,3>>,amt::HashVec<long long,3>,true>,std::allocator<std::__hash_value_type<amt::Vec<long long,3>,int>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t std::__hash_table<std::__hash_value_type<amt::Vec<long long,3>,int>,std::__unordered_map_hasher<amt::Vec<long long,3>,std::__hash_value_type<amt::Vec<long long,3>,int>,amt::HashVec<long long,3>,std::equal_to<amt::Vec<long long,3>>,true>,std::__unordered_map_equal<amt::Vec<long long,3>,std::__hash_value_type<amt::Vec<long long,3>,int>,std::equal_to<amt::Vec<long long,3>>,amt::HashVec<long long,3>,true>,std::allocator<std::__hash_value_type<amt::Vec<long long,3>,int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::vector<amt::Vec<int,3>>::push_back[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<amt::Vec<int,3>>>(a1, v11);
    }

    v12 = 12 * v8;
    v13 = *a2;
    *(v12 + 8) = *(a2 + 2);
    *v12 = v13;
    v7 = 12 * v8 + 12;
    v14 = *a1;
    v15 = a1[1];
    v16 = 12 * v8 + *a1 - v15;
    if (*a1 != v15)
    {
      v17 = 12 * v8 + *a1 - v15;
      do
      {
        v18 = *v14;
        *(v17 + 8) = v14[2];
        *v17 = v18;
        v17 += 12;
        v14 += 3;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 12;
  }

  a1[1] = v7;
}