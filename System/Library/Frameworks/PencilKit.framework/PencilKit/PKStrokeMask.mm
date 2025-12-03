@interface PKStrokeMask
- (CGRect)_boundsWithTransform:(CGAffineTransform *)transform;
- (NSData)rawValue;
- (PKStrokeMask)initWithArchive:(const void *)archive;
- (PKStrokeMask)initWithBezierPath:(id)path stroke:(id)stroke;
- (PKStrokeMask)initWithMaskPaths:(const void *)paths centerlineSlices:(const void *)slices;
- (PKStrokeMask)initWithRawValue:(id)value;
- (__n128)calculateCenterlineSlices:(uint64_t)slices;
- (id).cxx_construct;
- (id)bezierPath;
- (id)maskTransformedBy:(id)by;
- (void)_transformBy:(id)by;
- (void)calculateCenterlineSlices:(id)slices;
- (void)saveToArchive:(void *)archive;
@end

@implementation PKStrokeMask

- (PKStrokeMask)initWithMaskPaths:(const void *)paths centerlineSlices:(const void *)slices
{
  v22.receiver = self;
  v22.super_class = PKStrokeMask;
  v6 = [(PKStrokeMask *)&v22 init];
  v7 = v6;
  if (v6 + 8 != paths)
  {
    std::vector<std::vector<ClipperLib::IntPoint>>::__assign_with_size[abi:ne200100]<std::vector<ClipperLib::IntPoint>*,std::vector<ClipperLib::IntPoint>*>(v6 + 1, *paths, *(paths + 1), 0xAAAAAAAAAAAAAAABLL * ((*(paths + 1) - *paths) >> 3));
  }

  v8 = v6 + 32;
  if (v6 + 32 != slices)
  {
    v9 = *slices;
    v10 = *(slices + 1);
    v11 = &v10[-*slices];
    v12 = *(v6 + 6);
    v13 = *(v6 + 4);
    if (v12 - v13 < v11)
    {
      v14 = v11 >> 4;
      if (v13)
      {
        v7->_centerlineSlices.__end_ = v13;
        operator delete(v13);
        v12 = 0;
        *v8 = 0;
        v8[1] = 0;
        v8[2] = 0;
      }

      if (!(v14 >> 60))
      {
        v15 = v12 >> 3;
        if (v12 >> 3 <= v14)
        {
          v15 = v11 >> 4;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF0)
        {
          v16 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        if (!(v16 >> 60))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>(v16);
        }
      }

      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    end = v7->_centerlineSlices.__end_;
    v18 = end - v13;
    if (end - v13 >= v11)
    {
      if (v10 != v9)
      {
        memmove(v13, v9, v11);
      }

      v20 = (v13 + v11);
    }

    else
    {
      v19 = &v9[v18];
      if (end != v13)
      {
        memmove(v7->_centerlineSlices.__begin_, v9, v18);
        end = v7->_centerlineSlices.__end_;
      }

      if (v10 != v19)
      {
        memmove(end, v19, v10 - v19);
      }

      v20 = (end + v10 - v19);
    }

    v7->_centerlineSlices.__end_ = v20;
  }

  return v7;
}

- (PKStrokeMask)initWithBezierPath:(id)path stroke:(id)stroke
{
  v10 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  strokeCopy = stroke;
  v9.receiver = self;
  v9.super_class = PKStrokeMask;
  [(PKStrokeMask *)&v9 init];
  PKClipperPathsFromCGPath([pathCopy PK_CGPath], 100.0);
}

- (void)calculateCenterlineSlices:(id)slices
{
  v4[39] = *MEMORY[0x1E69E9840];
  slicesCopy = slices;
  memset(v4, 0, 24);
  v4[7] = v4;
  std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<ClipperLib::IntPoint>>>(v4, 1uLL);
}

void __42__PKStrokeMask_calculateCenterlineSlices___block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  v4 = *(a1 + 80);
  v5 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(vaddq_f64(*(a1 + 64), vmlaq_n_f64(vmulq_n_f64(*(a1 + 48), a3), *(a1 + 32), a2)), vdupq_n_s64(0x4059000000000000uLL))));
  v6 = a4;
  v8 = *(v4 + 8);
  v7 = *(v4 + 16);
  if (v8 >= v7)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
    v12 = *v4;
    v13 = v8 - *v4;
    v14 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3) + 1;
    if (v14 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v12) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 < 0x555555555555555)
    {
      v11 = v14;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::IntPoint>>(*(a1 + 80), v11);
    }

    v16 = 8 * (v13 >> 3);
    *&v17 = v5.i32[0];
    *(&v17 + 1) = v5.i32[1];
    *v16 = v17;
    *(v16 + 16) = v6;
    *(v16 + 20) = -1082130432;
    v10 = v16 + 24;
    v18 = v16 - v13;
    memcpy((v16 - v13), v12, v13);
    v19 = *v4;
    *v4 = v18;
    *(v4 + 8) = v10;
    *(v4 + 16) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *&v9 = v5.i32[0];
    *(&v9 + 1) = v5.i32[1];
    *v8 = v9;
    *(v8 + 16) = v6;
    *(v8 + 20) = -1082130432;
    v10 = v8 + 24;
  }

  *(v4 + 8) = v10;
}

- (PKStrokeMask)initWithArchive:(const void *)archive
{
  v61.receiver = self;
  v61.super_class = PKStrokeMask;
  v3 = [(PKStrokeMask *)&v61 init];
  std::vector<std::vector<ClipperLib::IntPoint>>::reserve([(PKStrokeMask *)v3 maskPaths], (*(archive + 9) - *(archive + 8)) >> 4);
  v4 = *(archive + 9) - *(archive + 8);
  if (v4)
  {
    v60 = 0;
    v5 = v4 >> 4;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v58 = v5;
    v6 = vdup_n_s32(0x42C80000u);
    do
    {
      maskPaths = [(PKStrokeMask *)v3 maskPaths];
      v8 = maskPaths;
      v10 = *(maskPaths + 8);
      v9 = *(maskPaths + 16);
      if (v10 >= v9)
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *maskPaths) >> 3);
        v13 = v12 + 1;
        if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
        }

        v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *maskPaths) >> 3);
        if (2 * v14 > v13)
        {
          v13 = 2 * v14;
        }

        if (v14 >= 0x555555555555555)
        {
          v15 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v15 = v13;
        }

        v62[4] = maskPaths;
        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<ClipperLib::IntPoint>>>(maskPaths, v15);
        }

        v16 = 24 * v12;
        *v16 = 0;
        *(v16 + 8) = 0;
        *(v16 + 16) = 0;
        v11 = 24 * v12 + 24;
        v17 = *(maskPaths + 8) - *maskPaths;
        v18 = v16 - v17;
        memcpy((v16 - v17), *maskPaths, v17);
        v19 = *v8;
        *v8 = v18;
        v62[0] = v19;
        v62[1] = v19;
        v8[1] = v11;
        v62[2] = v19;
        v20 = v8[2];
        v8[2] = 0;
        v62[3] = v20;
        std::__split_buffer<std::vector<ClipperLib::IntPoint>>::~__split_buffer(v62);
      }

      else
      {
        *v10 = 0;
        v10[1] = 0;
        v11 = (v10 + 3);
        v10[2] = 0;
      }

      v8[1] = v11;
      v21 = *(archive + 8) + 16 * v60;
      v22 = *(v21 + 8);
      if (v22 >= 8)
      {
        v23 = v22 >> 3;
        v24 = *v21;
        do
        {
          v25 = *([(PKStrokeMask *)v3 maskPaths]+ 8);
          v26 = vcvtq_s64_f64(vcvtq_f64_f32(vmul_f32(*v24, v6)));
          v27 = *(v25 - 16);
          v28 = *(v25 - 8);
          if (v27 >= v28)
          {
            v30 = *(v25 - 24);
            v31 = v27 - v30;
            v32 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v30) >> 3);
            v33 = v32 + 1;
            if (v32 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
            }

            v34 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v30) >> 3);
            if (2 * v34 > v33)
            {
              v33 = 2 * v34;
            }

            if (v34 >= 0x555555555555555)
            {
              v33 = 0xAAAAAAAAAAAAAAALL;
            }

            if (v33)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::IntPoint>>(v25 - 24, v33);
            }

            v35 = 24 * v32;
            *v35 = v26;
            *(v35 + 16) = 0;
            v29 = 24 * v32 + 24;
            v36 = 24 * v32 - v31;
            memcpy((v35 - v31), v30, v31);
            v37 = *(v25 - 24);
            *(v25 - 24) = v36;
            *(v25 - 16) = v29;
            *(v25 - 8) = 0;
            if (v37)
            {
              operator delete(v37);
            }
          }

          else
          {
            *v27 = v26;
            v29 = &v27[1].i64[1];
            v27[1].i64[0] = 0;
          }

          *(v25 - 16) = v29;
          ++v24;
          --v23;
        }

        while (v23);
      }

      ++v60;
    }

    while (v60 != v58);
  }

  centerlineSlices = [(PKStrokeMask *)v3 centerlineSlices];
  v39 = (*(archive + 2) - *(archive + 1)) >> 2;
  if (v39 >> 1 > (centerlineSlices[2] - *centerlineSlices) >> 4)
  {
    if (!(v39 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>(v39 >> 1);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  v40 = *(archive + 2) - *(archive + 1);
  if (v40)
  {
    v41 = 0;
    v42 = 0;
    v43 = v40 >> 2;
    do
    {
      centerlineSlices2 = [(PKStrokeMask *)v3 centerlineSlices];
      v45 = centerlineSlices2;
      v46 = vcvtq_f64_f32(*(*(archive + 1) + v41));
      v48 = *(centerlineSlices2 + 8);
      v47 = *(centerlineSlices2 + 16);
      if (v48 >= v47)
      {
        v50 = *centerlineSlices2;
        v51 = v48 - *centerlineSlices2;
        v52 = (v51 >> 4) + 1;
        if (v52 >> 60)
        {
          std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
        }

        v53 = v47 - v50;
        if (v53 >> 3 > v52)
        {
          v52 = v53 >> 3;
        }

        if (v53 >= 0x7FFFFFFFFFFFFFF0)
        {
          v54 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v54 = v52;
        }

        if (v54)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>(v54);
        }

        v55 = (16 * (v51 >> 4));
        *v55 = v46;
        f64 = v55[1].f64;
        memcpy(0, v50, v51);
        v56 = *v45;
        *v45 = 0;
        *(v45 + 8) = f64;
        *(v45 + 16) = 0;
        if (v56)
        {
          operator delete(v56);
        }
      }

      else
      {
        *v48 = v46;
        f64 = v48[1].f64;
      }

      *(v45 + 8) = f64;
      v42 += 2;
      v41 += 8;
    }

    while (v42 < v43);
  }

  return v3;
}

- (void)saveToArchive:(void *)archive
{
  maskPaths = [(PKStrokeMask *)self maskPaths];
  v5 = *maskPaths;
  v51 = maskPaths[1];
  if (*maskPaths != v51)
  {
    v50 = (archive + 64);
    do
    {
      v6 = v5[1];
      if (v6 != *v5)
      {
        v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v5) >> 3);
        if (!(v7 >> 61))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<_PKPoint>>(v7);
        }

        std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
      }

      PB::Data::Data(&v52, 0);
      v8 = *(archive + 9);
      v9 = *(archive + 10);
      if (v8 >= v9)
      {
        v13 = *v50;
        v14 = (v8 - *v50) >> 4;
        v15 = v14 + 1;
        if ((v14 + 1) >> 60)
        {
          std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
        }

        v16 = v9 - v13;
        if (v16 >> 3 > v15)
        {
          v15 = v16 >> 3;
        }

        v17 = v16 >= 0x7FFFFFFFFFFFFFF0;
        v18 = 0xFFFFFFFFFFFFFFFLL;
        if (!v17)
        {
          v18 = v15;
        }

        v57 = archive + 64;
        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<PB::Data>>(v50, v18);
        }

        v19 = (16 * v14);
        v54 = 0;
        v55 = v19;
        v20 = v53;
        *v19 = v52;
        v19[1] = v20;
        v52 = 0;
        v53 = 0;
        v56 = (16 * v14 + 16);
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PB::Data>,PB::Data*>(v50, v13, v8, 0);
        v21 = *(archive + 8);
        *(archive + 8) = 0;
        v22 = *(archive + 10);
        v49 = v56;
        *(archive + 72) = v56;
        *&v56 = v21;
        *(&v56 + 1) = v22;
        v54 = v21;
        v55 = v21;
        std::__split_buffer<PB::Data>::~__split_buffer(&v54);
        v10 = v52;
        v12 = v49;
      }

      else
      {
        v10 = 0;
        v11 = v53;
        *v8 = v52;
        v8[1] = v11;
        v52 = 0;
        v53 = 0;
        v12 = v8 + 2;
      }

      *(archive + 9) = v12;
      free(v10);
      v5 += 3;
    }

    while (v5 != v51);
  }

  centerlineSlices = [(PKStrokeMask *)self centerlineSlices];
  v24 = (archive + 8);
  v25 = (centerlineSlices[1] - *centerlineSlices) >> 3;
  if (v25 > (*(archive + 3) - *(archive + 1)) >> 2)
  {
    if (!(v25 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(archive + 8, v25);
    }

LABEL_46:
    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  centerlineSlices2 = [(PKStrokeMask *)self centerlineSlices];
  v27 = *centerlineSlices2;
  v28 = centerlineSlices2[1];
  if (*centerlineSlices2 != v28)
  {
    v29 = *(archive + 2);
    do
    {
      v31 = *v27;
      v30 = v27[1];
      v32 = *(archive + 3);
      if (v29 >= v32)
      {
        v35 = *v24;
        v36 = v29 - *v24;
        v37 = v36 >> 2;
        v38 = (v36 >> 2) + 1;
        if (v38 >> 62)
        {
          goto LABEL_46;
        }

        if ((v32 - v35) >> 1 > v38)
        {
          v38 = (v32 - v35) >> 1;
        }

        if (v32 - v35 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v38 = 0x3FFFFFFFFFFFFFFFLL;
        }

        if (v38)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(archive + 8, v38);
        }

        v32 = 0;
        v39 = v31;
        *(4 * v37) = v39;
        v34 = (4 * v37 + 4);
        memcpy(0, v35, v36);
        v40 = *(archive + 1);
        *(archive + 1) = 0;
        *(archive + 2) = v34;
        *(archive + 3) = 0;
        if (v40)
        {
          operator delete(v40);
          v32 = *(archive + 3);
        }
      }

      else
      {
        v33 = v31;
        *v29 = v33;
        v34 = v29 + 1;
      }

      *(archive + 2) = v34;
      if (v34 >= v32)
      {
        v42 = *v24;
        v43 = v34 - *v24;
        v44 = v43 >> 2;
        v45 = (v43 >> 2) + 1;
        if (v45 >> 62)
        {
          goto LABEL_46;
        }

        if ((v32 - v42) >> 1 > v45)
        {
          v45 = (v32 - v42) >> 1;
        }

        if (v32 - v42 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v45 = 0x3FFFFFFFFFFFFFFFLL;
        }

        if (v45)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(archive + 8, v45);
        }

        v46 = v30;
        *(4 * v44) = v46;
        v29 = (4 * v44 + 4);
        memcpy(0, v42, v43);
        v47 = *(archive + 1);
        *(archive + 1) = 0;
        *(archive + 2) = v29;
        *(archive + 3) = 0;
        if (v47)
        {
          operator delete(v47);
        }
      }

      else
      {
        v41 = v30;
        *v34 = v41;
        v29 = v34 + 1;
      }

      *(archive + 2) = v29;
      v27 += 2;
    }

    while (v27 != v28);
  }
}

- (PKStrokeMask)initWithRawValue:(id)value
{
  valueCopy = value;
  v9 = &unk_1F4768B88;
  v23 = 0;
  v24 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  bytes = [valueCopy bytes];
  [valueCopy length];
  PB::Reader::Reader(v8, bytes);
  if (drawing::Stroke::readFrom(&v9, v8))
  {
    self = [(PKStrokeMask *)self initWithArchive:&v9];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  drawing::Stroke::~Stroke(&v9);

  return selfCopy;
}

- (NSData)rawValue
{
  v6 = &unk_1F4768B88;
  v20 = 0;
  v21 = 0;
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  [(PKStrokeMask *)self saveToArchive:&v6];
  PB::Writer::Writer(&v4);
  drawing::Stroke::writeTo(&v6, &v4);
  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:v5 length:v4 - v5];
  PB::Writer::~Writer(&v4);
  drawing::Stroke::~Stroke(&v6);

  return v2;
}

- (id)bezierPath
{
  Mutable = CGPathCreateMutable();
  begin = self->_maskPaths.__begin_;
  for (i = self->_maskPaths.__end_; begin != i; begin += 3)
  {
    v6 = *begin;
    v7 = begin[1];
    if (*begin != v7)
    {
      v8 = 1;
      do
      {
        if (v8)
        {
          CGPathMoveToPoint(Mutable, 0, **begin / 100.0, (*begin)[1] / 100.0);
        }

        else
        {
          CGPathAddLineToPoint(Mutable, 0, *v6 / 100.0, v6[1] / 100.0);
        }

        v8 = 0;
        v6 += 3;
      }

      while (v6 != v7);
    }

    CGPathCloseSubpath(Mutable);
  }

  v9 = [MEMORY[0x1E69DC728] bezierPathWithCGPath:Mutable];
  CGPathRelease(Mutable);

  return v9;
}

- (CGRect)_boundsWithTransform:(CGAffineTransform *)transform
{
  v19 = *&transform->a;
  v17 = *&transform->tx;
  v18 = *&transform->c;
  maskPaths = [(PKStrokeMask *)self maskPaths];
  v4 = *maskPaths;
  v5 = maskPaths[1];
  if (*maskPaths == v5)
  {
    return **&MEMORY[0x1E695F050];
  }

  v6 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v7 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  do
  {
    v8 = *v4;
    while (v8 != v4[1])
    {
      v9 = *v8;
      v10 = v8[1];
      v8 += 3;
      v11 = vaddq_f64(v17, vmlaq_n_f64(vmulq_n_f64(v18, v10 / 100.0), v19, v9 / 100.0));
      v12 = vextq_s8(v11, v11, 8uLL);
      v6 = vbslq_s8(vcgtq_f64(v12, v6), v6, v12);
      v7 = vbslq_s8(vcgtq_f64(v12, v7), v12, v7);
    }

    v4 += 3;
  }

  while (v4 != v5);
  v13 = v6.f64[1];
  if (v7.f64[1] < v6.f64[1] || v7.f64[0] < v6.f64[0])
  {
    return **&MEMORY[0x1E695F050];
  }

  else
  {
    v15 = v7.f64[1] - v6.f64[1];
    v16 = v7.f64[0] - v6.f64[0];
    return CGRectIntegral(*(&v6 - 8));
  }
}

- (id)maskTransformedBy:(id)by
{
  byCopy = by;
  v5 = [[PKStrokeMask alloc] initWithMaskPaths:&self->_maskPaths centerlineSlices:&self->_centerlineSlices];
  [(PKStrokeMask *)v5 _transformBy:byCopy];

  return v5;
}

- (void)_transformBy:(id)by
{
  byCopy = by;
  begin = self->_maskPaths.__begin_;
  end = self->_maskPaths.__end_;
  if (begin != end)
  {
    v10 = vdupq_n_s64(0x4059000000000000uLL);
    do
    {
      v6 = *begin;
      v7 = begin[1];
      while (v6 != v7)
      {
        v8.f64[0] = byCopy[2](*v6 / 100.0, v6[1] / 100.0);
        v8.f64[1] = v9;
        *v6 = vcvtq_s64_f64(vmulq_f64(v8, v10));
        v6 += 3;
      }

      begin += 3;
    }

    while (begin != end);
  }
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (__n128)calculateCenterlineSlices:(uint64_t)slices
{
LABEL_1:
  v9 = (a2 - 2);
  v10 = a2 - 4;
  v11 = a2 - 6;
  selfCopy = self;
  while (1)
  {
    self = selfCopy;
    v13 = (a2 - selfCopy) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v55 = *(a2 - 2);
        v54 = (a2 - 2);
        result.n128_f64[0] = v55;
        if (v55 >= *selfCopy)
        {
          return result;
        }

LABEL_107:
        v120 = *selfCopy;
        *selfCopy = *v54;
        result = v120;
LABEL_108:
        *v54 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v56 = (selfCopy + 16);
      v59 = *(selfCopy + 16);
      v60 = (selfCopy + 32);
      v61 = *(selfCopy + 32);
      if (v59 >= *selfCopy)
      {
        if (v61 < v59)
        {
          result = *v56;
          *v56 = *v60;
          *v60 = result;
          if (*(selfCopy + 16) < *selfCopy)
          {
            v123 = *selfCopy;
            *selfCopy = *v56;
            result.n128_u64[1] = v123.n128_u64[1];
            *v56 = v123;
          }
        }
      }

      else
      {
        if (v61 < v59)
        {
          v121 = *selfCopy;
          *selfCopy = *v60;
          result = v121;
          goto LABEL_176;
        }

        v125 = *selfCopy;
        *selfCopy = *v56;
        *v56 = v125;
        if (v61 < *(selfCopy + 16))
        {
          result = *v56;
          *v56 = *v60;
LABEL_176:
          *v60 = result;
        }
      }

      result.n128_u64[0] = *v9;
      if (*v9 >= v60->n128_f64[0])
      {
        return result;
      }

      result = *v60;
      *v60 = *v9;
      *v9 = result;
      result.n128_u64[0] = v60->n128_u64[0];
      if (v60->n128_f64[0] >= v56->n128_f64[0])
      {
        return result;
      }

      result = *v56;
      *v56 = *v60;
      *v60 = result;
LABEL_180:
      result.n128_u64[0] = *(selfCopy + 16);
      if (result.n128_f64[0] < *selfCopy)
      {
        v126 = *selfCopy;
        *selfCopy = *v56;
        result = v126;
        *v56 = v126;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[PKStrokeMask calculateCenterlineSlices:]::$_0 &,_PKFloatRange *,0>(selfCopy, (selfCopy + 16), (selfCopy + 32), (selfCopy + 48), a2 - 2, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v62 = (selfCopy + 16);
      v64 = selfCopy == a2 || v62 == a2;
      if (a4)
      {
        if (!v64)
        {
          v65 = 0;
          v66 = selfCopy;
          do
          {
            v67 = v62;
            result.n128_u64[0] = *(v66 + 16);
            if (result.n128_f64[0] < *v66)
            {
              v68 = *(v66 + 24);
              v69 = v65;
              while (1)
              {
                *(selfCopy + v69 + 16) = *(selfCopy + v69);
                if (!v69)
                {
                  break;
                }

                v70 = *(selfCopy + v69 - 16);
                v69 -= 16;
                if (result.n128_f64[0] >= v70)
                {
                  v71 = (selfCopy + v69 + 16);
                  goto LABEL_127;
                }
              }

              v71 = selfCopy;
LABEL_127:
              *v71 = result.n128_u64[0];
              v71[1] = v68;
            }

            v62 = v67 + 2;
            v65 += 16;
            v66 = v67;
          }

          while (v67 + 2 != a2);
        }
      }

      else if (!v64)
      {
        do
        {
          v97 = v62;
          result.n128_u64[0] = *(self + 16);
          if (result.n128_f64[0] < *self)
          {
            v98 = *(self + 24);
            v99 = v62;
            do
            {
              *v99 = *(v99 - 1);
              v100 = *(v99 - 4);
              v99 -= 2;
            }

            while (result.n128_f64[0] < v100);
            *v99 = result.n128_f64[0];
            *(v99 + 1) = v98;
          }

          v62 += 2;
          self = v97;
        }

        while ((v97 + 16) != a2);
      }

      return result;
    }

    if (!slices)
    {
      if (selfCopy != a2)
      {
        v72 = (v13 - 2) >> 1;
        v73 = v72;
        do
        {
          v74 = v73;
          if (v72 >= v73)
          {
            v75 = (2 * v73) | 1;
            v76 = (selfCopy + 16 * v75);
            if (2 * v74 + 2 < v13 && *v76 < v76[2])
            {
              v76 += 2;
              v75 = 2 * v74 + 2;
            }

            v77 = (selfCopy + 16 * v74);
            v78 = *v77;
            if (*v76 >= *v77)
            {
              do
              {
                v79 = v76;
                *v77 = *v76;
                if (v72 < v75)
                {
                  break;
                }

                v80 = 2 * v75;
                v75 = (2 * v75) | 1;
                v76 = (selfCopy + 16 * v75);
                v81 = v80 + 2;
                if (v81 < v13 && *v76 < v76[2])
                {
                  v76 += 2;
                  v75 = v81;
                }

                v77 = v79;
              }

              while (*v76 >= *&v78);
              *v79 = v78;
            }
          }

          v73 = v74 - 1;
        }

        while (v74);
        do
        {
          v82 = 0;
          v122 = *selfCopy;
          v83 = selfCopy;
          do
          {
            v84 = v83;
            v85 = &v83[2 * v82];
            v83 = v85 + 2;
            v86 = 2 * v82;
            v82 = (2 * v82) | 1;
            v87 = v86 + 2;
            if (v87 < v13)
            {
              v89 = v85[4];
              v88 = v85 + 4;
              if (*(v88 - 2) < v89)
              {
                v83 = v88;
                v82 = v87;
              }
            }

            *v84 = *v83;
          }

          while (v82 <= ((v13 - 2) >> 1));
          a2 -= 2;
          if (v83 == a2)
          {
            result = v122;
            *v83 = v122;
          }

          else
          {
            *v83 = *a2;
            result = v122;
            *a2 = v122;
            v90 = (v83 - selfCopy + 16) >> 4;
            v91 = v90 < 2;
            v92 = v90 - 2;
            if (!v91)
            {
              v93 = v92 >> 1;
              v94 = (selfCopy + 16 * v93);
              result.n128_f64[0] = *v83;
              if (*v94 < *v83)
              {
                v95 = *(v83 + 1);
                do
                {
                  v96 = v94;
                  *v83 = *v94;
                  if (!v93)
                  {
                    break;
                  }

                  v93 = (v93 - 1) >> 1;
                  v94 = (selfCopy + 16 * v93);
                  v83 = v96;
                }

                while (*v94 < result.n128_f64[0]);
                *v96 = result.n128_f64[0];
                *(v96 + 1) = v95;
              }
            }
          }

          v91 = v13-- <= 2;
        }

        while (!v91);
      }

      return result;
    }

    v14 = (selfCopy + 16 * (v13 >> 1));
    v15 = v14;
    v16 = *v9;
    if (v13 >= 0x81)
    {
      v17 = *v14;
      if (*v14 >= *selfCopy)
      {
        if (v16 < v17)
        {
          v103 = *v14;
          *v14 = *v9;
          *v9 = v103;
          if (*v14 < *selfCopy)
          {
            v104 = *selfCopy;
            *selfCopy = *v14;
            *v14 = v104;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v101 = *selfCopy;
          *selfCopy = *v9;
          goto LABEL_26;
        }

        v107 = *selfCopy;
        *selfCopy = *v14;
        *v14 = v107;
        if (*v9 < *v14)
        {
          v101 = *v14;
          *v14 = *v9;
LABEL_26:
          *v9 = v101;
        }
      }

      v19 = (selfCopy + 16);
      v20 = v14 - 2;
      v21 = *(v14 - 2);
      v22 = *v10;
      if (v21 >= *(selfCopy + 16))
      {
        if (v22 < v21)
        {
          v108 = *v20;
          *v20 = *v10;
          *v10 = v108;
          if (*v20 < *v19)
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = *v19;
          *v19 = *v10;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (*v10 < *v20)
        {
          v110 = *v20;
          *v20 = *v10;
          v23 = v110;
LABEL_38:
          *v10 = v23;
        }
      }

      v26 = (selfCopy + 32);
      v28 = v14[2];
      v27 = (v14 + 2);
      v29 = v28;
      v30 = *v11;
      if (v28 >= *(selfCopy + 32))
      {
        if (v30 < v29)
        {
          v111 = *v27;
          *v27 = *v11;
          *v11 = v111;
          if (*v27 < *v26)
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (*v11 < *v27)
        {
          v112 = *v27;
          *v27 = *v11;
          v31 = v112;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = *v15;
      v35 = *v27;
      if (*v15 >= *v20)
      {
        if (v35 < v34)
        {
          v114 = *v15;
          *v15 = *v27;
          *v27 = v114;
          if (*v15 < *v20)
          {
            v115 = *v20;
            *v20 = *v15;
            *v15 = v115;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v113 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v116 = *v20;
        *v20 = *v15;
        *v15 = v116;
        if (*v27 < *v15)
        {
          v113 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v113;
        }
      }

      v117 = *selfCopy;
      *selfCopy = *v15;
      result.n128_u64[1] = v117.n128_u64[1];
      *v15 = v117;
      goto LABEL_58;
    }

    v18 = *selfCopy;
    if (*selfCopy >= *v14)
    {
      if (v16 < v18)
      {
        v105 = *selfCopy;
        *selfCopy = *v9;
        result.n128_u64[1] = v105.n128_u64[1];
        *v9 = v105;
        if (*selfCopy < *v14)
        {
          v106 = *v14;
          *v14 = *selfCopy;
          result.n128_u64[1] = v106.n128_u64[1];
          *selfCopy = v106;
        }
      }

      goto LABEL_58;
    }

    if (v16 < v18)
    {
      v102 = *v14;
      *v14 = *v9;
LABEL_35:
      result.n128_u64[1] = v102.n128_u64[1];
      *v9 = v102;
      goto LABEL_58;
    }

    v109 = *v14;
    *v14 = *selfCopy;
    result.n128_u64[1] = v109.n128_u64[1];
    *selfCopy = v109;
    if (*v9 < *selfCopy)
    {
      v102 = *selfCopy;
      *selfCopy = *v9;
      goto LABEL_35;
    }

LABEL_58:
    --slices;
    result.n128_u64[0] = *selfCopy;
    if (a4)
    {
      v36 = *(selfCopy + 8);
LABEL_61:
      v37 = 0;
      do
      {
        v38 = *(selfCopy + v37 + 16);
        v37 += 16;
      }

      while (v38 < result.n128_f64[0]);
      v39 = selfCopy + v37;
      v40 = a2;
      if (v37 == 16)
      {
        v40 = a2;
        do
        {
          if (v39 >= v40)
          {
            break;
          }

          v42 = *(v40 - 2);
          v40 -= 2;
        }

        while (v42 >= result.n128_f64[0]);
      }

      else
      {
        do
        {
          v41 = *(v40 - 2);
          v40 -= 2;
        }

        while (v41 >= result.n128_f64[0]);
      }

      selfCopy += v37;
      if (v39 < v40)
      {
        v43 = v40;
        do
        {
          v118 = *selfCopy;
          *selfCopy = *v43;
          *v43 = v118;
          do
          {
            v44 = *(selfCopy + 16);
            selfCopy += 16;
          }

          while (v44 < result.n128_f64[0]);
          do
          {
            v45 = v43[-1].n128_f64[0];
            --v43;
          }

          while (v45 >= result.n128_f64[0]);
        }

        while (selfCopy < v43);
      }

      if (selfCopy - 16 != self)
      {
        *self = *(selfCopy - 16);
      }

      *(selfCopy - 16) = result.n128_u64[0];
      *(selfCopy - 8) = v36;
      if (v39 < v40)
      {
        goto LABEL_80;
      }

      v46 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[PKStrokeMask calculateCenterlineSlices:]::$_0 &,_PKFloatRange *>(self, (selfCopy - 16), result);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[PKStrokeMask calculateCenterlineSlices:]::$_0 &,_PKFloatRange *>(selfCopy, a2, v47))
      {
        a2 = (selfCopy - 16);
        if (!v46)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v46)
      {
LABEL_80:
        std::__introsort<std::_ClassicAlgPolicy,[PKStrokeMask calculateCenterlineSlices:]::$_0 &,_PKFloatRange *,false>(self, selfCopy - 16, slices, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v36 = *(selfCopy + 8);
      if (*(selfCopy - 16) < result.n128_f64[0])
      {
        goto LABEL_61;
      }

      if (result.n128_f64[0] >= *v9)
      {
        v49 = selfCopy + 16;
        do
        {
          selfCopy = v49;
          if (v49 >= a2)
          {
            break;
          }

          v49 += 16;
        }

        while (result.n128_f64[0] >= *selfCopy);
      }

      else
      {
        do
        {
          v48 = *(selfCopy + 16);
          selfCopy += 16;
        }

        while (result.n128_f64[0] >= v48);
      }

      v50 = a2;
      if (selfCopy < a2)
      {
        v50 = a2;
        do
        {
          v51 = v50[-1].n128_f64[0];
          --v50;
        }

        while (result.n128_f64[0] < v51);
      }

      while (selfCopy < v50)
      {
        v119 = *selfCopy;
        *selfCopy = *v50;
        *v50 = v119;
        do
        {
          v52 = *(selfCopy + 16);
          selfCopy += 16;
        }

        while (result.n128_f64[0] >= v52);
        do
        {
          v53 = v50[-1].n128_f64[0];
          --v50;
        }

        while (result.n128_f64[0] < v53);
      }

      if (selfCopy - 16 != self)
      {
        *self = *(selfCopy - 16);
      }

      a4 = 0;
      *(selfCopy - 16) = result.n128_u64[0];
      *(selfCopy - 8) = v36;
    }
  }

  v56 = (selfCopy + 16);
  result.n128_u64[0] = *(selfCopy + 16);
  v57 = *(a2 - 2);
  v54 = (a2 - 2);
  v58 = v57;
  if (result.n128_f64[0] >= *selfCopy)
  {
    if (v58 >= result.n128_f64[0])
    {
      return result;
    }

    result = *v56;
    *v56 = *v54;
    *v54 = result;
    goto LABEL_180;
  }

  if (v58 < result.n128_f64[0])
  {
    goto LABEL_107;
  }

  v124 = *selfCopy;
  *selfCopy = *v56;
  result.n128_u64[1] = v124.n128_u64[1];
  *v56 = v124;
  result.n128_u64[0] = v54->n128_u64[0];
  if (v54->n128_f64[0] < *(selfCopy + 16))
  {
    result = *v56;
    *v56 = *v54;
    goto LABEL_108;
  }

  return result;
}

@end