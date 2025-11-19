@interface VNContoursObservation
- (BOOL)isEqual:(id)a3;
- (CGPath)normalizedPathInTopLeftOrigin:(BOOL)a3 orientation:(unsigned int)a4;
- (CGPathRef)normalizedPath;
- (NSArray)topLevelContours;
- (VNContour)contourAtIndex:(NSInteger)contourIndex error:(NSError *)error;
- (VNContour)contourAtIndexPath:(NSIndexPath *)indexPath error:(NSError *)error;
- (VNContoursObservation)initWithCoder:(id)a3;
- (VNContoursObservation)initWithOriginatingRequestSpecifier:(id)a3 compressedPoints:(id)a4 imageSize:(CGSize)a5;
- (id).cxx_construct;
- (id)debugQuickLookObject;
- (id)vn_cloneObject;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNContoursObservation

- (id).cxx_construct
{
  *(self + 17) = 0;
  *(self + 18) = 0;
  *(self + 20) = 0;
  *(self + 21) = 0;
  *(self + 19) = 0;
  *(self + 23) = 0;
  *(self + 24) = 0;
  *(self + 22) = 0;
  return self;
}

- (id)debugQuickLookObject
{
  v10 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VNContoursObservation;
  v3 = [(VNObservation *)&v8 debugQuickLookObject];
  if (v3)
  {
    v4 = [(VNContoursObservation *)self normalizedPath];
    v9[0] = xmmword_1A6052400;
    v9[1] = unk_1A6052410;
    v5 = VNDebugColorFromValues(v9);
    VNDebugImageRenderNormalizedCGPathOnImage(v4, v3, v5);
  }

  else
  {
    VNDebugPathFromNormalizedCGPath([(VNContoursObservation *)self normalizedPath], self->_imageSize.width, self->_imageSize.height);
  }
  v6 = ;

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = VNContoursObservation;
  [(VNObservation *)&v5 encodeWithCoder:v4];
  [v4 vn_encodeCodingVersion:0 forKey:@"VNCntsObs"];
  [v4 encodeObject:self->_compressedPoints forKey:@"Points"];
  [v4 vn_encodeSize:@"Size" forKey:{self->_imageSize.width, self->_imageSize.height}];
}

- (VNContoursObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = VNContoursObservation;
  v5 = [(VNObservation *)&v12 initWithCoder:v4];
  if (!v5 || [v4 vn_decodeCodingVersionForKey:@"VNCntsObs"] || (objc_msgSend(v4, "decodeObjectOfClass:forKey:", objc_opt_class(), @"Points"), v8 = objc_claimAutoreleasedReturnValue(), compressedPoints = v5->_compressedPoints, v5->_compressedPoints = v8, compressedPoints, !v5->_compressedPoints))
  {
LABEL_3:
    v6 = 0;
    goto LABEL_4;
  }

  [v4 vn_decodeSizeForKey:@"Size"];
  v6 = 0;
  v5->_imageSize.width = v11;
  v5->_imageSize.height = v10;
  if (v11 > 0.0 && v10 > 0.0)
  {
    if ([(VNContoursObservation *)v5 _initializePolygonContainers])
    {
      v6 = v5;
      goto LABEL_4;
    }

    goto LABEL_3;
  }

LABEL_4:

  return v6;
}

- (id)vn_cloneObject
{
  v10.receiver = self;
  v10.super_class = VNContoursObservation;
  v3 = [(VNObservation *)&v10 vn_cloneObject];
  if (v3)
  {
    v4 = [(NSData *)self->_compressedPoints copy];
    v5 = *(v3 + 96);
    *(v3 + 96) = v4;

    *(v3 + 104) = self->_imageSize;
    ptr = self->_polygonList.__ptr_;
    cntrl = self->_polygonList.__cntrl_;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    v8 = *(v3 + 144);
    *(v3 + 136) = ptr;
    *(v3 + 144) = cntrl;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (v3 != self)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((v3 + 152), self->_topLevelContoursIndices.__begin_, self->_topLevelContoursIndices.__end_, self->_topLevelContoursIndices.__end_ - self->_topLevelContoursIndices.__begin_);
      std::vector<std::vector<unsigned int>>::__assign_with_size[abi:ne200100]<std::vector<unsigned int>*,std::vector<unsigned int>*>((v3 + 176), self->_contourChildrenIndices.__begin_, self->_contourChildrenIndices.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_contourChildrenIndices.__end_ - self->_contourChildrenIndices.__begin_) >> 3));
    }
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (self->_imageSize.width == v4->_imageSize.width ? (v5 = self->_imageSize.height == v4->_imageSize.height) : (v5 = 0), v5))
    {
      v6 = [(NSData *)self->_compressedPoints isEqual:v4->_compressedPoints];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (CGPathRef)normalizedPath
{
  os_unfair_lock_lock(&self->_pathLock);
  if (!self->_normalizedPath)
  {
    [(VNContoursObservation *)self polygonList];
    apple::vision::libraries::autotrace::ContourToPath::ContourToPath(v5, v3);
  }

  os_unfair_lock_unlock(&self->_pathLock);
  return self->_normalizedPath;
}

- (VNContour)contourAtIndexPath:(NSIndexPath *)indexPath error:(NSError *)error
{
  v6 = indexPath;
  v7 = [(NSIndexPath *)v6 length];
  if (v7)
  {
    v8 = 0;
    p_topLevelContoursIndices = &self->_topLevelContoursIndices;
    while (1)
    {
      v10 = [(NSIndexPath *)v6 indexAtPosition:v8];
      if (v10 >= p_topLevelContoursIndices->__end_ - p_topLevelContoursIndices->__begin_)
      {
        break;
      }

      v11 = p_topLevelContoursIndices->__begin_[v10];
      p_topLevelContoursIndices = (self->_contourChildrenIndices.__begin_ + 24 * v11);
      if (v7 == ++v8)
      {
        v12 = [VNContour alloc];
        v13 = self->_imageSize.width / self->_imageSize.height;
        v14 = [(VNContour *)&v12->super.isa initWithObservation:v11 topLevelIndex:v6 indexPath:v13 aspectRatio:?];
        goto LABEL_12;
      }
    }

    if (error)
    {
      v15 = [VNError errorForInvalidArgument:v6 named:@"indexPath"];
      goto LABEL_10;
    }
  }

  else if (error)
  {
    v15 = [VNError errorForInvalidArgumentWithLocalizedDescription:@"argument indexPath cannot be empty"];
LABEL_10:
    v14 = 0;
    *error = v15;
    goto LABEL_12;
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (VNContour)contourAtIndex:(NSInteger)contourIndex error:(NSError *)error
{
  if ((contourIndex & 0x8000000000000000) == 0)
  {
    ptr = self->_polygonList.__ptr_;
    if (ptr->var0 > contourIndex)
    {
      v6 = *(ptr->var2 + 10 * contourIndex + 8);
      if (v6 == -1)
      {
        p_topLevelContoursIndices = &self->_topLevelContoursIndices;
      }

      else
      {
        p_topLevelContoursIndices = (self->_contourChildrenIndices.__begin_ + 24 * v6);
      }

      begin = p_topLevelContoursIndices->__begin_;
      end = p_topLevelContoursIndices->__end_;
      for (i = begin; i != end; ++i)
      {
        if (*i == contourIndex)
        {
          break;
        }
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(1uLL);
    }
  }

  if (error)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    *error = [VNError errorForInvalidArgument:v11 named:@"contourIndex"];
  }

  return 0;
}

- (NSArray)topLevelContours
{
  p_topLevelContoursIndices = &self->_topLevelContoursIndices;
  begin = self->_topLevelContoursIndices.__begin_;
  end = self->_topLevelContoursIndices.__end_;
  v6 = end - begin;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
  if (end != begin)
  {
    v8 = 0;
    if (v6 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v6;
    }

    do
    {
      v10 = [VNContour alloc];
      v11 = p_topLevelContoursIndices->__begin_[v8];
      v12 = [objc_alloc(MEMORY[0x1E696AC88]) initWithIndex:v8];
      v13 = self->_imageSize.width / self->_imageSize.height;
      v14 = [(VNContour *)&v10->super.isa initWithObservation:v11 topLevelIndex:v12 indexPath:v13 aspectRatio:?];
      [v7 addObject:v14];

      ++v8;
    }

    while (v9 != v8);
  }

  return v7;
}

uint64_t __53__VNContoursObservation__initializePolygonContainers__block_invoke(uint64_t a1, int *a2)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  std::vector<std::vector<unsigned int>>::vector[abi:ne200100](&v21, *a2);
  LODWORD(v10) = *a2;
  if (*a2 >= 1)
  {
    v11 = 0;
    v12 = 32;
    while (1)
    {
      v13 = *(a2 + 1);
      LODWORD(v26) = v11;
      v14 = *(v13 + v12);
      if (v14 == -1)
      {
        v15 = &v23;
      }

      else
      {
        if (v14 >= v10)
        {
          VNValidatedLog(4, @"parsePolygonList: index (%d) is outside of count (%d)", v4, v5, v6, v7, v8, v9, v11);
          v19 = 0;
          v17 = v23;
          goto LABEL_14;
        }

        v15 = &v21[3 * v14];
      }

      std::vector<int>::push_back[abi:ne200100](v15, &v26);
      ++v11;
      v10 = *a2;
      v12 += 40;
      if (v11 >= v10)
      {
        v17 = v23;
        v16 = v24;
        goto LABEL_10;
      }
    }
  }

  v16 = 0;
  v17 = 0;
LABEL_10:
  std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((*(a1 + 32) + 152), v17, v16, (v16 - v17) >> 2);
  v18 = (*(a1 + 32) + 176);
  if (v18 != &v21)
  {
    std::vector<std::vector<unsigned int>>::__assign_with_size[abi:ne200100]<std::vector<unsigned int>*,std::vector<unsigned int>*>(v18, v21, v22, 0xAAAAAAAAAAAAAAABLL * (v22 - v21));
  }

  v19 = 1;
LABEL_14:
  v26 = &v21;
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&v26);
  if (v17)
  {
    v24 = v17;
    operator delete(v17);
  }

  return v19;
}

BOOL __53__VNContoursObservation__initializePolygonContainers__block_invoke_3(uint64_t a1)
{
  v176 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 96) length];
  v3 = [*(*(a1 + 32) + 96) bytes];
  v4 = ((v3[1] + 7) >> 3) + 8;
  if (v2 == v4)
  {
    v5 = v3;
    v174 = 0;
    *__dst = 0u;
    v173 = 0u;
    v6 = *v3;
    if (v6)
    {
      std::vector<unsigned char>::__append(__dst, v6);
      v7 = *v5;
      if (v7)
      {
        memmove(__dst[0], v5 + 2, v7);
      }
    }

    v166 = v4;
    v167 = v2;
    DWORD2(v173) = v5[1];
    v168 = *(*(a1 + 32) + 136);
    if (!apple::vision::libraries::autotrace::EPolygonList::init(v168))
    {
      goto LABEL_176;
    }

    v174 = 0;
    HIDWORD(v173) = 0;
    v9 = DWORD2(v173);
    if (SDWORD2(v173) >= 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v165 = @"%s: could not allocate new polygon (nPoints %d)";
      v169 = v8;
      v170 = vdupq_n_s64(0x3F70000000000000uLL);
      do
      {
        if (v10 == v9)
        {
          goto LABEL_176;
        }

        v13 = v174.i8[0];
        v14 = HIDWORD(v173);
        v15 = *(__dst[0] + SHIDWORD(v173));
        v16 = vadd_s32(v174, 0x100000001);
        v174 = v16;
        v17 = v16.i8[0];
        if (v16.i32[0] == 8)
        {
          v17 = 0;
          v14 = ++HIDWORD(v173);
          v174.i32[0] = 0;
        }

        v18 = v16.i32[1];
        if ((v15 >> v13))
        {
          if (v12)
          {
            if (v16.i32[1] == v9)
            {
              goto LABEL_176;
            }

            v19 = *(__dst[0] + v14);
            v174 = vadd_s32(v174, 0x100000001);
            if (v174.i32[0] == 8)
            {
              HIDWORD(v173) = v14 + 1;
              v174.i32[0] = 0;
            }

            if ((v19 >> v17))
            {
              --v11;
            }

            else
            {
              v175[v11++] = -858993459 * ((v12 - *(v168 + 1)) >> 3);
            }
          }
        }

        else
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          while (v18 != v9)
          {
            v23 = *(__dst[0] + v14);
            v24 = vadd_s32(v174, 0x100000001);
            v174 = v24;
            v25 = v24.i8[0];
            if (v24.i32[0] == 8)
            {
              v25 = 0;
              HIDWORD(v173) = ++v14;
              v174.i32[0] = 0;
            }

            v26 = (v23 >> v17) & 1;
            v18 = v24.i32[1];
            v21 = v26 | (2 * v21);
            v20 = v22 > 0x1E;
            v17 = v25;
            if (++v22 == 32)
            {
              goto LABEL_26;
            }
          }

          if (!v20)
          {
            goto LABEL_176;
          }

          v21 = 0;
          v25 = v17;
          v18 = v9;
LABEL_26:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          while (v18 != v9)
          {
            v30 = *(__dst[0] + v14);
            v31 = vadd_s32(v174, 0x100000001);
            v174 = v31;
            v32 = v31.i8[0];
            if (v31.i32[0] == 8)
            {
              v32 = 0;
              HIDWORD(v173) = ++v14;
              v174.i32[0] = 0;
            }

            v33 = (v30 >> v25) & 1;
            v18 = v31.i32[1];
            v28 = v33 | (2 * v28);
            v27 = v29 > 0x1E;
            v25 = v32;
            if (++v29 == 32)
            {
              v34 = v169;
              LODWORD(v34) = v28;
              v169 = v34;
              v25 = v32;
              goto LABEL_33;
            }
          }

          v18 = v9;
          if (!v27)
          {
            goto LABEL_176;
          }

LABEL_33:
          v35 = 0;
          v36 = 0;
          v37 = 0;
          while (v18 != v9)
          {
            v38 = *(__dst[0] + v14);
            v39 = vadd_s32(v174, 0x100000001);
            v174 = v39;
            v40 = v39.i8[0];
            if (v39.i32[0] == 8)
            {
              v40 = 0;
              HIDWORD(v173) = ++v14;
              v174.i32[0] = 0;
            }

            v41 = (v38 >> v25) & 1;
            v18 = v39.i32[1];
            v36 = v41 | (2 * v36);
            v35 = v37 > 0x1E;
            v25 = v40;
            if (++v37 == 32)
            {
              v42 = v169;
              DWORD1(v42) = v36;
              v169 = v42;
              goto LABEL_40;
            }
          }

          v18 = v9;
          if (!v35)
          {
            goto LABEL_176;
          }

LABEL_40:
          v43 = 0;
          v44 = 0;
          while (v18 != v9)
          {
            v45 = vadd_s32(v174, 0x100000001);
            v174 = v45;
            if (v45.i32[0] == 8)
            {
              HIDWORD(v173) = ++v14;
              v174.i32[0] = 0;
            }

            v18 = v45.i32[1];
            v43 = v44++ > 2;
            if (v44 == 4)
            {
              goto LABEL_47;
            }
          }

          if (!v43)
          {
            goto LABEL_176;
          }

LABEL_47:
          v46 = apple::vision::libraries::autotrace::EPolygonList::newPolygon(v168, v21, 0);
          v12 = v46;
          if (!v46)
          {
            goto LABEL_178;
          }

          v53.i64[0] = v169;
          v53.i64[1] = DWORD1(v169);
          *apple::vision::libraries::autotrace::EPolygon::addPointAtEnd(v46) = vcvt_f32_f64(vmulq_f64(vcvtq_f64_u64(v53), v170));
          v54 = malloc_type_malloc(4 * v21 - 4, 0x100004052888210uLL);
          if (!v54)
          {
            v165 = @"%s: could not allocate deltas array for polygon (nPoints %d)";
LABEL_178:
            VNValidatedLog(4, v165, v47, v48, v49, v50, v51, v52, "polygonListWithBitString");
            goto LABEL_176;
          }

          v55 = v21 - 1;
          if (v21 > 1)
          {
            v56 = __dst[0];
            v57 = DWORD2(v173);
            v58 = HIDWORD(v173);
            v59 = 1;
            v60 = v174.i32[1];
            while (1)
            {
              if (v60 == v57)
              {
                goto LABEL_175;
              }

              v61 = v56[v58];
              v62 = v174.i8[0];
              v63 = vadd_s32(v174, 0x100000001);
              v174 = v63;
              v64 = v63.i8[0];
              if (v63.i32[0] == 8)
              {
                v64 = 0;
                HIDWORD(v173) = ++v58;
                v174.i32[0] = 0;
              }

              v65 = v59 - 1;
              v60 = v63.i32[1];
              v66 = __dst[0];
              v67 = 0;
              if (((v61 >> v62) & 1) == 0)
              {
                v74 = 0;
                v75 = 0;
                while (v60 != v57)
                {
                  v76 = *(__dst[0] + v58);
                  v77 = vadd_s32(v174, 0x100000001);
                  v174 = v77;
                  v78 = v77.i8[0];
                  if (v77.i32[0] == 8)
                  {
                    v78 = 0;
                    HIDWORD(v173) = ++v58;
                    v174.i32[0] = 0;
                  }

                  v79 = (v76 >> v64) & 1;
                  v60 = v77.i32[1];
                  v74 = v79 | (2 * v74);
                  v67 = v75 > 8;
                  v64 = v78;
                  if (++v75 == 10)
                  {
                    goto LABEL_88;
                  }
                }

                if (v67)
                {
                  v74 = 0;
                  v78 = v64;
                  v60 = v57;
LABEL_88:
                  v95 = 0;
                  v96 = 0;
                  v97 = 0;
                  while (v60 != v57)
                  {
                    v98 = *(__dst[0] + v58);
                    v99 = vadd_s32(v174, 0x100000001);
                    v174 = v99;
                    v100 = v99.i8[0];
                    if (v99.i32[0] == 8)
                    {
                      v100 = 0;
                      HIDWORD(v173) = ++v58;
                      v174.i32[0] = 0;
                    }

                    v101 = (v98 >> v78) & 1;
                    v60 = v99.i32[1];
                    v96 = v101 | (2 * v96);
                    v95 = v97 > 8;
                    v78 = v100;
                    if (++v97 == 10)
                    {
                      goto LABEL_95;
                    }
                  }

                  v60 = v57;
                  v96 = v74;
                  if (v95)
                  {
LABEL_95:
                    v102 = &v54[4 * v65];
                    *v102 = v74 - 512;
                    *(v102 + 1) = v96 - 512;
                    goto LABEL_160;
                  }
                }

                goto LABEL_175;
              }

              LODWORD(v68) = 0;
              v69 = 0;
              while (v60 != v57)
              {
                v70 = *(__dst[0] + v58);
                v71 = vadd_s32(v174, 0x100000001);
                v174 = v71;
                v72 = v71.i8[0];
                if (v71.i32[0] == 8)
                {
                  v72 = 0;
                  HIDWORD(v173) = ++v58;
                  v174.i32[0] = 0;
                }

                v73 = (v70 >> v64) & 1;
                v60 = v71.i32[1];
                v68 = v73 | (2 * v68);
                v67 = v69 != 0;
                v64 = v72;
                if (++v69 == 2)
                {
                  goto LABEL_69;
                }
              }

              if (!v67)
              {
                goto LABEL_175;
              }

              v68 = 0;
              v60 = v57;
              v72 = v64;
LABEL_69:
              v80 = 0;
              LODWORD(v81) = 0;
              v82 = 0;
              v83 = (v68 & 1) != 0 ? 256 : -256;
              while (v60 != v57)
              {
                v84 = *(__dst[0] + v58);
                v85 = vadd_s32(v174, 0x100000001);
                v174 = v85;
                v86 = v85.i8[0];
                if (v85.i32[0] == 8)
                {
                  v86 = 0;
                  HIDWORD(v173) = ++v58;
                  v174.i32[0] = 0;
                }

                v87 = (v84 >> v72) & 1;
                v60 = v85.i32[1];
                v81 = v87 | (2 * v81);
                v80 = v82 > 2;
                v72 = v86;
                if (++v82 == 4)
                {
                  goto LABEL_78;
                }
              }

              v60 = v57;
              v86 = v72;
              v81 = v68;
              if (!v80)
              {
                goto LABEL_175;
              }

LABEL_78:
              if (v81 >= 0xF)
              {
                v89 = 0;
                LODWORD(v88) = 0;
                v90 = 0;
                while (v60 != v57)
                {
                  v91 = *(__dst[0] + v58);
                  v92 = vadd_s32(v174, 0x100000001);
                  v174 = v92;
                  v93 = v92.i8[0];
                  if (v92.i32[0] == 8)
                  {
                    v93 = 0;
                    HIDWORD(v173) = ++v58;
                    v174.i32[0] = 0;
                  }

                  v94 = (v91 >> v86) & 1;
                  v60 = v92.i32[1];
                  v88 = v94 | (2 * v88);
                  v89 = v90 > 0x1E;
                  v86 = v93;
                  if (++v90 == 32)
                  {
                    goto LABEL_97;
                  }
                }

                v60 = v57;
                v88 = v81;
                if (!v89)
                {
                  goto LABEL_175;
                }

LABEL_97:
                v81 = v88;
                if (v88 < 1)
                {
                  v59 = v65;
                  goto LABEL_160;
                }
              }

              else
              {
                LODWORD(v88) = v81 + 1;
              }

              v103 = 0;
              v104 = DWORD2(v173);
              do
              {
                if (v60 == v57)
                {
                  goto LABEL_175;
                }

                v105 = v66[v58];
                v106 = v174.i8[0];
                v107 = vadd_s32(v174, 0x100000001);
                v174 = v107;
                v108 = v107.u32[0];
                if (v107.i32[0] == 8)
                {
                  v108 = 0;
                  HIDWORD(v173) = ++v58;
                  v174.i32[0] = 0;
                }

                v60 = v107.i32[1];
                if (((v105 >> v106) & 1) == 0)
                {
                  v52 = 0;
                  LODWORD(v120) = 0;
                  v113 = 0;
                  while (v60 != v104)
                  {
                    v121 = *(__dst[0] + v58);
                    v122 = vadd_s32(v174, 0x100000001);
                    v174 = v122;
                    v115 = v122.u32[0];
                    if (v122.i32[0] == 8)
                    {
                      v115 = 0;
                      HIDWORD(v173) = ++v58;
                      v174.i32[0] = 0;
                    }

                    v123 = (v121 >> v108) & 1;
                    v60 = v122.i32[1];
                    v120 = v123 | (2 * v120);
                    v124 = v113 + 1;
                    v52 = v113 > 3;
                    v108 = v115;
                    v113 = (v113 + 1);
                    if (v124 == 5)
                    {
                      goto LABEL_145;
                    }
                  }

                  v115 = v108;
                  v60 = v104;
                  v120 = v81;
                  if (v52)
                  {
LABEL_145:
                    if (v120 < 0x1F)
                    {
                      v109 = (v120 - 15);
                      goto LABEL_155;
                    }

                    v113 = 0;
                    LODWORD(v143) = 0;
                    v108 = 0;
                    while (v60 != v104)
                    {
                      v144 = *(__dst[0] + v58);
                      v145 = vadd_s32(v174, 0x100000001);
                      v174 = v145;
                      v52 = v145.u32[0];
                      if (v145.i32[0] == 8)
                      {
                        v52 = 0;
                        HIDWORD(v173) = ++v58;
                        v174.i32[0] = 0;
                      }

                      v146 = (v144 >> v115) & 1;
                      v60 = v145.i32[1];
                      v143 = v146 | (2 * v143);
                      v147 = v108 + 1;
                      v113 = v108 > 8;
                      v115 = v52;
                      v108 = (v108 + 1);
                      if (v147 == 10)
                      {
                        goto LABEL_154;
                      }
                    }

                    v60 = v104;
                    v143 = v120;
                    if (v113)
                    {
LABEL_154:
                      v109 = (v143 - 512);
                      v120 = v143;
LABEL_155:
                      if (v65 < v21)
                      {
                        v59 = v65 + 1;
                        v148 = &v54[4 * v65];
                        if (v68 > 1)
                        {
                          *v148 = v109;
                          *(v148 + 1) = v83;
                        }

                        else
                        {
                          *v148 = v83;
                          *(v148 + 1) = v109;
                        }

                        goto LABEL_159;
                      }

LABEL_174:
                      VNValidatedLog(4, @"%s: max index exceeded in run", v108, v120, v109, v115, v113, v52, "decodeRun");
                    }
                  }

LABEL_175:
                  free(v54);
LABEL_176:
                  exception = __cxa_allocate_exception(0x10uLL);
                  MEMORY[0x1AC556740](exception, "polygonListWithBitString failed");
                  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                if (v107.i32[1] == v104)
                {
                  goto LABEL_175;
                }

                v109 = v66[v58];
                v110 = vadd_s32(v174, 0x100000001);
                v174 = v110;
                v111 = v110.i8[0];
                if (v110.i32[0] == 8)
                {
                  v111 = 0;
                  HIDWORD(v173) = ++v58;
                  v174.i32[0] = 0;
                }

                v112 = 0;
                LODWORD(v113) = 0;
                v114 = 0;
                v60 = v110.i32[1];
                v115 = __dst[0];
                while (v60 != v104)
                {
                  v116 = *(__dst[0] + v58);
                  v117 = vadd_s32(v174, 0x100000001);
                  v174 = v117;
                  v118 = v117.i8[0];
                  if (v117.i32[0] == 8)
                  {
                    v118 = 0;
                    HIDWORD(v173) = ++v58;
                    v174.i32[0] = 0;
                  }

                  v119 = (v116 >> v111) & 1;
                  v60 = v117.i32[1];
                  v113 = v119 | (2 * v113);
                  v112 = v114 > 8;
                  v111 = v118;
                  v52 = ++v114;
                  if (v114 == 10)
                  {
                    goto LABEL_119;
                  }
                }

                v118 = v111;
                v60 = v104;
                v113 = v81;
                if (!v112)
                {
                  goto LABEL_175;
                }

LABEL_119:
                v125 = 0;
                LODWORD(v126) = 0;
                v127 = 0;
                v128 = v113 - 512;
                do
                {
                  if (v60 == v104)
                  {
                    v133 = v113 - 512;
                    v60 = v104;
                    if (v125)
                    {
                      goto LABEL_126;
                    }

                    goto LABEL_175;
                  }

                  v129 = *(__dst[0] + v58);
                  v130 = vadd_s32(v174, 0x100000001);
                  v174 = v130;
                  v131 = v130.i8[0];
                  if (v130.i32[0] == 8)
                  {
                    v131 = 0;
                    HIDWORD(v173) = ++v58;
                    v174.i32[0] = 0;
                  }

                  v132 = (v129 >> v118) & 1;
                  v60 = v130.i32[1];
                  v126 = v132 | (2 * v126);
                  v125 = v127 > 8;
                  v118 = v131;
                  v52 = ++v127;
                }

                while (v127 != 10);
                v133 = v126 - 512;
                v118 = v131;
                v113 = v126;
LABEL_126:
                v134 = 0;
                LODWORD(v120) = 0;
                v135 = 0;
                while (v60 != v104)
                {
                  v136 = *(__dst[0] + v58);
                  v137 = vadd_s32(v174, 0x100000001);
                  v174 = v137;
                  v52 = v137.u32[0];
                  if (v137.i32[0] == 8)
                  {
                    v52 = 0;
                    HIDWORD(v173) = ++v58;
                    v174.i32[0] = 0;
                  }

                  v138 = (v136 >> v118) & 1;
                  v60 = v137.i32[1];
                  v120 = v138 | (2 * v120);
                  v134 = v135 > 8;
                  v118 = v52;
                  if (++v135 == 10)
                  {
                    goto LABEL_133;
                  }
                }

                v60 = v104;
                v120 = v113;
                if (!v134)
                {
                  goto LABEL_175;
                }

LABEL_133:
                if (v65 >= v21)
                {
                  goto LABEL_174;
                }

                v139 = (v83 << ((v109 >> v108) & 1)) - v128;
                v140 = &v54[4 * v65];
                if (v68 >= 2)
                {
                  v141 = v133;
                }

                else
                {
                  v141 = v128;
                }

                if (v68 >= 2)
                {
                  v52 = (v120 - 512);
                }

                else
                {
                  LOWORD(v128) = v133;
                  v52 = v139;
                }

                *v140 = v141;
                *(v140 + 1) = v128;
                if (v68 >= 2)
                {
                  v142 = v139;
                }

                else
                {
                  v142 = v120 - 512;
                }

                *(v140 + 2) = v52;
                *(v140 + 3) = v142;
                v59 = v65 + 2;
                ++v103;
LABEL_159:
                ++v103;
                v81 = v120;
                v65 = v59;
              }

              while (v103 < v88);
LABEL_160:
              if (++v59 >= v21)
              {
                v149 = v54;
                v150 = v169;
                v151 = v169;
                do
                {
                  v150.i16[0] = *v149;
                  v150.i16[2] = v149[1];
                  v171 = v150;
                  v152 = apple::vision::libraries::autotrace::EPolygon::addPointAtEnd(v12);
                  v151 = vsra_n_s32(v151, vshl_n_s32(v171, 0x10uLL), 0x10uLL);
                  v153.i64[0] = v151.i32[0];
                  v153.i64[1] = v151.i32[1];
                  v150 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v153), v170));
                  *v152 = v150;
                  v149 += 2;
                  --v55;
                }

                while (v55);
                break;
              }
            }
          }

          free(v54);
          *(v12 + 20) = 1;
          if (v11 >= 1)
          {
            v160 = v175[v11 - 1];
            v161 = *(v168 + 1);
            v162 = v161 + 40 * v160;
            *(v12 + 6) = *(v162 + 28);
            *(v162 + 28) = -858993459 * ((v12 - v161) >> 3);
            *(v12 + 8) = v160;
            if (v160 < 0 || v160 >= *v168)
            {
              VNValidatedLog(4, @"%s: parent index out of whack", v154, v155, v156, v157, v158, v159, "polygonListWithBitString");
            }
          }
        }

        v10 = v174.i32[1];
        v9 = DWORD2(v173);
      }

      while (v174.i32[1] < SDWORD2(v173));
    }

    if (__dst[0])
    {
      __dst[1] = __dst[0];
      operator delete(__dst[0]);
    }

    v4 = v166;
    v2 = v167;
  }

  return v2 == v4;
}

- (void)dealloc
{
  CGPathRelease(self->_normalizedPath);
  v3.receiver = self;
  v3.super_class = VNContoursObservation;
  [(VNContoursObservation *)&v3 dealloc];
}

- (VNContoursObservation)initWithOriginatingRequestSpecifier:(id)a3 compressedPoints:(id)a4 imageSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a3;
  v10 = a4;
  v11 = 0;
  if (width > 0.0 && height > 0.0)
  {
    v14.receiver = self;
    v14.super_class = VNContoursObservation;
    v12 = [(VNObservation *)&v14 initWithOriginatingRequestSpecifier:v9];
    self = v12;
    if (v12 && (objc_storeStrong(&v12->_compressedPoints, a4), self->_imageSize.width = width, self->_imageSize.height = height, self->_pathLock._os_unfair_lock_opaque = 0, [(VNContoursObservation *)self _initializePolygonContainers]))
    {
      self = self;
      v11 = self;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (CGPath)normalizedPathInTopLeftOrigin:(BOOL)a3 orientation:(unsigned int)a4
{
  memset(v7, 0, sizeof(v7));
  v4 = [(VNContoursObservation *)self normalizedPath:VNAffineTransformForVisionToTopLeftOriginOrientation(a3];
  v5 = MEMORY[0x1AC555C10](v4, v7);
  CFAutorelease(v5);
  return v5;
}

@end