uint64_t resample_vertical<int,unsigned char,3,(AlphaStyle)0>(uint64_t result, double a2, double a3, double a4, double a5, int32x4_t a6, double a7, int16x4_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t *a12, uint64_t a13)
{
  v13 = *a12;
  v14 = *(result + 4);
  v15 = (result + 8);
  if (a11 >= 4)
  {
    v17 = 0;
    v18 = 4;
    v19.i64[0] = 0x200000002000;
    v19.i64[1] = 0x200000002000;
    do
    {
      if (v14 >= 2)
      {
        v20 = 0;
        v21 = 0;
        LODWORD(result) = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v32 = (a13 + 8);
        v33 = 2;
        v31 = v15;
        do
        {
          v34 = (*(v32 - 1) + 12 * v17);
          v36 = *v34;
          v35 = v34[1];
          v37 = v34[2];
          v38 = (*v32 + 12 * v17);
          a8 = vmovn_s32(v38[2]);
          v39 = *v31;
          v31 += 2;
          v40 = vdup_n_s16(v39);
          v41.i64[0] = __PAIR64__(v28, v27);
          v41.i64[1] = __PAIR64__(v30, v29);
          v42 = vmlal_s16(v41, vmovn_s32(v37), v40);
          v37.i64[0] = __PAIR64__(v24, v23);
          v37.i64[1] = __PAIR64__(v26, v25);
          v43 = vmlal_s16(v37, vmovn_s32(v35), v40);
          v35.i64[0] = __PAIR64__(v21, v20);
          *a6.i8 = vmovn_s32(*v38);
          v35.i64[1] = __PAIR64__(v22, result);
          v44 = vmlal_s16(v35, vmovn_s32(v36), v40);
          *v36.i8 = vdup_n_s16(HIWORD(v39));
          v45 = vmlal_s16(v44, *a6.i8, *v36.i8);
          v22 = v45.u32[3];
          result = v45.u32[2];
          v21 = v45.u32[1];
          v20 = v45.i32[0];
          v46 = vmlal_s16(v43, vmovn_s32(v38[1]), *v36.i8);
          v26 = v46.i32[3];
          v25 = v46.i32[2];
          v24 = v46.i32[1];
          v23 = v46.i32[0];
          v47 = vmlal_s16(v42, a8, *v36.i8);
          v30 = v47.i32[3];
          v29 = v47.i32[2];
          v28 = v47.i32[1];
          v27 = v47.i32[0];
          v33 += 2;
          v32 += 2;
        }

        while (v33 <= v14);
      }

      else
      {
        v20 = 0;
        v21 = 0;
        result = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = v15;
      }

      if (v14)
      {
        v48 = (*(a13 - 8 + 8 * v14) + 12 * v17);
        v49 = vld1_dup_s16(v31);
        v50.i64[0] = __PAIR64__(v21, v20);
        v50.i64[1] = __PAIR64__(v22, result);
        a6 = vmlal_s16(v50, vmovn_s32(*v48), v49);
        v22 = a6.u32[3];
        result = a6.u32[2];
        v21 = a6.u32[1];
        v51.i64[0] = __PAIR64__(v24, v23);
        v51.i64[1] = __PAIR64__(v26, v25);
        v52 = vmlal_s16(v51, vmovn_s32(v48[1]), v49);
        v26 = v52.i32[3];
        v25 = v52.i32[2];
        v24 = v52.i32[1];
        v53.i64[0] = __PAIR64__(v28, v27);
        v53.i64[1] = __PAIR64__(v30, v29);
        v20 = a6.i32[0];
        v54 = vmlal_s16(v53, vmovn_s32(v48[2]), v49);
        v30 = v54.i32[3];
        v23 = v52.i32[0];
        v29 = v54.i32[2];
        v28 = v54.i32[1];
        v27 = v54.i32[0];
      }

      v55.i64[0] = __PAIR64__(v24, v23);
      v55.i64[1] = __PAIR64__(v26, v25);
      v56.i64[0] = __PAIR64__(v21, v20);
      v56.i64[1] = __PAIR64__(v22, result);
      *v55.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(v56, v19), 0xEuLL)), vshrq_n_s32(vaddq_s32(v55, v19), 0xEuLL)));
      v56.i64[0] = __PAIR64__(v28, v27);
      v56.i64[1] = __PAIR64__(v30, v29);
      v57 = vshrq_n_s32(vaddq_s32(v56, v19), 0xEuLL);
      *v57.i8 = vqmovn_s32(v57);
      *v13 = v55.i64[0];
      *(v13 + 8) = vqmovun_high_s16(*&v57, v57).i32[2];
      v13 += 12;
      v18 += 4;
      v17 += 4;
    }

    while (v18 <= a11);
    LODWORD(v16) = a11 & 0x7FFFFFFC;
  }

  else
  {
    LODWORD(v16) = 0;
  }

  if (v16 < a11)
  {
    v16 = v16;
    v58.i64[0] = 0x200000002000;
    v58.i64[1] = 0x200000002000;
    do
    {
      v59 = 0uLL;
      v60 = v15;
      if (v14 >= 2)
      {
        v61 = (a13 + 8);
        result = 2;
        v60 = v15;
        do
        {
          v62 = *(v61 - 1) + 12 * v16;
          v63 = *v62;
          a6.i32[0] = *(v62 + 8);
          v64 = (*v61 + 12 * v16);
          a8.i32[0] = v64[1].i32[0];
          v65 = vuzp1_s16(v63, *a6.i8);
          *a6.i8 = vuzp1_s16(*v64, a8);
          v66 = *v60;
          v60 += 2;
          v59 = vmlal_s16(vmlal_s16(v59, v65, vdup_n_s16(v66)), *a6.i8, vdup_n_s16(HIWORD(v66)));
          result += 2;
          v61 += 2;
        }

        while (result <= v14);
      }

      if (v14)
      {
        v67 = (*(a13 - 8 + 8 * v14) + 12 * v16);
        a6.i32[0] = v67[1].i32[0];
        v68 = vuzp1_s16(*v67, *a6.i8);
        *a6.i8 = vld1_dup_s16(v60);
        v59 = vmlal_s16(v59, v68, *a6.i8);
      }

      v69 = vshlq_s32(vaddq_s32(v59, v58), xmmword_18439C570);
      *v69.i8 = vqmovn_s32(v69);
      *v69.i8 = vqmovun_s16(v69);
      *v13 = v69.i16[0];
      *(v13 + 2) = v69.i8[2];
      v13 += 3;
      ++v16;
    }

    while (v16 != a11);
  }

  return result;
}

double CGFontGetUnderlinePosition(void *a1)
{
  font_info = get_font_info(a1);
  if (font_info)
  {
    return font_info[8];
  }

  else
  {
    return 0.0;
  }
}

double CGFontGetUnderlineThickness(void *a1)
{
  font_info = get_font_info(a1);
  if (font_info)
  {
    return font_info[9];
  }

  else
  {
    return 0.0;
  }
}

void CGContextSetLineDash(CGContextRef c, CGFloat phase, const CGFloat *lengths, size_t count)
{
  if (!c)
  {
    v13 = 0;
LABEL_11:

    handle_invalid_context("CGContextSetLineDash", v13, count, v4, v5, v6, v7, v8);
    return;
  }

  if (*(c + 4) != 1129601108)
  {
    v13 = c;
    goto LABEL_11;
  }

  if (count)
  {
    v10 = 0;
    v11 = 0.0;
    do
    {
      v12 = lengths[v10];
      if (v12 < 0.0)
      {
        CGPostError("%s: invalid dash array: negative lengths are not allowed.", lengths, count, v4, v5, v6, v7, v8, "CGContextSetLineDash");
        return;
      }

      v11 = v11 + v12;
      ++v10;
    }

    while (count != v10);
    if (v11 == 0.0)
    {
      CGPostError("%s: invalid dash array: at least one element must be non-zero.", lengths, count, v4, v5, v6, v7, v8, "CGContextSetLineDash");
    }

    else
    {
      v15 = CGDashCreate(lengths, count, phase);
      CGGStateSetLineDash(*(c + 12), v15);
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFF, memory_order_relaxed) == 1)
      {

        free(v15);
      }
    }
  }

  else
  {
    v14 = *(c + 12);

    CGGStateSetLineDash(v14, 0);
  }
}

Swift::Void __swiftcall CGMutablePathRef.addPath(_:transform:)(CGPathRef _, CGAffineTransform *transform)
{
  v3 = *&transform->c;
  *&v4.a = *&transform->a;
  *&v4.c = v3;
  *&v4.tx = *&transform->tx;
  CGPathAddPath(v2, &v4, _);
}

uint64_t CGDashCompare(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  if (a1 && !a2)
  {
    return 1;
  }

  if (!a1 && a2)
  {
    return -1;
  }

  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if (v3 > v4)
  {
    return 1;
  }

  if (v3 < v4)
  {
    return -1;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5 > v6)
  {
    return 1;
  }

  if (v5 < v6)
  {
    return -1;
  }

  v7 = memcmp((a1 + 24), (a2 + 24), 8 * v5);
  if (v7 > 0)
  {
    return 1;
  }

  if (v7)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

uint64_t ripl_Containment(_DWORD *a1, _DWORD *a2, int a3)
{
  v3 = a3 & 0xFF000000;
  v4 = a1[1];
  v5 = a2[1];
  if (*a1 != *a2)
  {
    v3 = 0;
  }

  v6 = a3;
  if (v4 != v5)
  {
    v6 = 0;
  }

  if (a1[2] + *a1 == a2[2] + *a2)
  {
    v7 = a3 & 0xFF00;
  }

  else
  {
    v7 = 0;
  }

  if (a1[3] + v4 == a2[3] + v5)
  {
    v8 = a3 & 0xFF0000;
  }

  else
  {
    v8 = 0;
  }

  return v6 | v3 | v7 | v8;
}

CGColorSpaceRef CGColorGetColorSpace(CGColorSpaceRef color)
{
  if (color)
  {
    if ((color & 0x8000000000000000) != 0)
    {
      return CGTaggedColorGetColorSpace(color, v1, v2, v3, v4, v5, v6, v7);
    }

    else
    {
      return *(color + 3);
    }
  }

  return color;
}

float64x2_t CG::Cubic::split(float64x2_t *this, double a2, float64x2_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  v5 = vaddq_f64(*a3, vmulq_n_f64(vsubq_f64(v3, *a3), a2));
  v6 = a3[2];
  v7 = a3[3];
  v8 = vaddq_f64(v3, vmulq_n_f64(vsubq_f64(v6, v3), a2));
  v9 = vaddq_f64(v5, vmulq_n_f64(vsubq_f64(v8, v5), a2));
  *this = *a3;
  this[1] = v5;
  v10 = vaddq_f64(v6, vmulq_n_f64(vsubq_f64(v7, v6), a2));
  v11 = vaddq_f64(v8, vmulq_n_f64(vsubq_f64(v10, v8), a2));
  v12 = vaddq_f64(v9, vmulq_n_f64(vsubq_f64(v11, v9), a2));
  this[2] = v9;
  this[3] = v12;
  v13 = vsubq_f64(v5, v4);
  __asm { FMOV            V7.2D, #3.0 }

  v19 = vsubq_f64(v9, v5);
  this[4] = vmulq_f64(v13, _Q7);
  this[5] = vmulq_f64(vsubq_f64(v19, v13), _Q7);
  this[6] = vaddq_f64(v13, vsubq_f64(vsubq_f64(v12, v9), vaddq_f64(v19, v19)));
  this[7] = v12;
  this[8] = v11;
  this[9] = v10;
  v20 = vsubq_f64(v11, v12);
  this[10] = v7;
  this[11] = vmulq_f64(v20, _Q7);
  v21 = vsubq_f64(v10, v11);
  v22 = vmulq_f64(vsubq_f64(v21, v20), _Q7);
  result = vaddq_f64(vsubq_f64(vsubq_f64(v7, v10), vaddq_f64(v21, v21)), v20);
  this[12] = v22;
  this[13] = result;
  return result;
}

size_t CGImageGetWidth(size_t image)
{
  if (image)
  {
    return *(image + 40);
  }

  return image;
}

void clip<std::vector<std::vector<ClipperLib::IntPoint>>>(_OWORD *a1, int a2, CGPathRef path, int a4, const CGPath *a5, int a6, int a7, CGPathRandomAccess *a8, char **a9)
{
  v77 = *MEMORY[0x1E69E9840];
  BoundingBox = CGPathGetBoundingBox(path);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  if (a5)
  {
    v84 = CGPathGetBoundingBox(a5);
    v81.origin.x = x;
    v81.origin.y = y;
    v81.size.width = width;
    v81.size.height = height;
    v82 = CGRectUnion(v81, v84);
    x = v82.origin.x;
    y = v82.origin.y;
    width = v82.size.width;
    height = v82.size.height;
  }

  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v83.origin.x = x;
  v83.origin.y = y;
  v83.size.width = width;
  v83.size.height = height;
  clipper_transform_for_bounds(v83, a1);
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v56 = 0u;
  v57 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0;
  v42 = &unk_1EF23C1F0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v58 = 0;
  *v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  __p = 0;
  v47 = 0;
  v52 = 0;
  v53 = 0;
  v62 = 0;
  v54 = 0;
  v55 = &unk_1EF23C238;
  if (a7)
  {
    v54 = clipper_interpolate_intersection_metadata;
    LOBYTE(v62) = 1;
  }

  v53 = 0;
  v18 = a1[1];
  *&v41.a = *a1;
  *&v41.c = v18;
  *&v41.tx = a1[2];
  CGPathRandomAccess::add_path(a8, path, &v41, 1);
  v78.length = v19;
  v21 = v20;
  v22 = a1[1];
  *&v41.a = *a1;
  *&v41.c = v22;
  *&v41.tx = a1[2];
  v78.location = a8;
  CGPathRandomAccess::clipper_paths_for_subpath_range(&v39, v78, v21, &v41, 1);
  v23 = v39;
  if (v40 != v39)
  {
    v24 = 0;
    v25 = 0;
    v26 = &v43[-1] + *(v42 - 3);
    do
    {
      (*(*v26 + 16))(v26, v23 + v24, 0, 1);
      ++v25;
      v23 = v39;
      v24 += 24;
    }

    while (v25 < 0xAAAAAAAAAAAAAAABLL * ((v40 - v39) >> 3));
  }

  *&v41.a = &v39;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:fe200100](&v41);
  if (a5)
  {
    v27 = a1[1];
    *&v41.a = *a1;
    *&v41.c = v27;
    *&v41.tx = a1[2];
    CGPathRandomAccess::add_path(a8, a5, &v41, 1);
    v79.length = v28;
    v30 = v29;
    v31 = a1[1];
    *&v41.a = *a1;
    *&v41.c = v31;
    *&v41.tx = a1[2];
    v79.location = a8;
    CGPathRandomAccess::clipper_paths_for_subpath_range(&v39, v79, v30, &v41, 1);
    v32 = v39;
    if (v40 != v39)
    {
      v33 = 0;
      v34 = 0;
      v35 = &v43[-1] + *(v42 - 3);
      do
      {
        (*(*v35 + 16))(v35, v32 + v33, 1, 1);
        ++v34;
        v32 = v39;
        v33 += 24;
      }

      while (v34 < 0xAAAAAAAAAAAAAAABLL * ((v40 - v39) >> 3));
    }

    *&v41.a = &v39;
    std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:fe200100](&v41);
  }

  ClipperLib::Clipper::Execute(&v42, a2, a9, a4 ^ 1, a6 ^ 1);
  v42 = &unk_1EF23C1F0;
  v55 = &unk_1EF23C238;
  if (__p)
  {
    v49 = __p;
    operator delete(__p);
  }

  if (v46)
  {
    *(&v46 + 1) = v46;
    operator delete(v46);
  }

  if (*(&v44 + 1))
  {
    *&v45 = *(&v44 + 1);
    operator delete(*(&v44 + 1));
  }

  if (v43[0])
  {
    v43[1] = v43[0];
    operator delete(v43[0]);
  }

  ClipperLib::ClipperBase::~ClipperBase(&v55);
}

void sub_183F5CBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  ClipperLib::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

void CGPathRandomAccess::add_path(CGPathRandomAccess *this, CGPathRef path, CGAffineTransform *a3, int a4)
{
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x4002000000;
  v20[3] = __Block_byref_object_copy__9;
  v20[4] = __Block_byref_object_dispose__10;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN18CGPathRandomAccess8add_pathEPK6CGPath17CGAffineTransformb_block_invoke;
  block[3] = &unk_1E6E314B8;
  block[4] = v20;
  CGPathApplyWithBlock(path, block);
  v8 = *(this + 1) - *this;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3802000000;
  v18[3] = __Block_byref_object_copy__13;
  v18[5] = 0;
  v18[6] = 0;
  v18[4] = __Block_byref_object_dispose__14;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2000000000;
  v17[3] = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = ___ZN18CGPathRandomAccess8add_pathEPK6CGPath17CGAffineTransformb_block_invoke_15;
  v12[3] = &unk_1E6E314E0;
  v12[7] = this;
  v12[8] = 0x6DB6DB6DB6DB6DB7 * (v8 >> 3);
  v16 = a4;
  v12[4] = v17;
  v12[5] = v20;
  v12[6] = v18;
  v9 = *&a3->a;
  v10 = *&a3->c;
  v15 = *&a3->tx;
  v14 = v10;
  v13 = v9;
  CGPathApplyWithBlock(path, v12);
  v11 = *(this + 1);
  if (v11 - *this > v8 && a4)
  {
    if (*this == v11)
    {
      __break(1u);
      return;
    }

    CGPathRandomAccessSubpath::close_if_needed((v11 - 56));
  }

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);
  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }
}

void sub_183F5CE38(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  v3 = *(v1 - 120);
  if (v3)
  {
    *(v1 - 112) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<CFRange>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t std::__split_buffer<std::vector<ClipperLib::IntPoint>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t ClipperLib::ClipperBase::AddPath(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a3 == 1 && (a4 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    ClipperLib::clipperException::clipperException(exception, "AddPath: Open paths must be subject.");
  }

  v4 = *a2;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 4);
  LODWORD(v6) = v5 - 1;
  if (a4 && v5 >= 2)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 4);
    while (1)
    {
      v6 = (v6 - 1);
      if (v5 <= v6)
      {
        break;
      }

      v7 = &v4[6 * v6];
      v9 = *v7;
      v8 = v7[1];
      if (v9 != *v4 || v8 != v4[1])
      {
        goto LABEL_14;
      }

      if (v6 <= 1)
      {
        LODWORD(v6) = 0;
        goto LABEL_14;
      }
    }

LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_14:
    v11 = v6 & (v6 >> 31);
    while (1)
    {
      v12 = (v6 - 1);
      if (v6 < 1)
      {
        break;
      }

      if (v5 <= v6 || v5 <= v12)
      {
        goto LABEL_27;
      }

      v13 = &v4[6 * v6];
      v14 = &v4[6 * v12];
      v16 = *v13;
      v15 = v13[1];
      v18 = *v14;
      v17 = v14[1];
      v19 = v16 == v18 && v15 == v17;
      LODWORD(v6) = v12;
      if (!v19)
      {
        v11 = v12 + 1;
        break;
      }
    }

    if (v11 > a4)
    {
      operator new[]();
    }

    return 0;
  }

  return result;
}

void sub_183F5D8A4(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x183F5D8ACLL);
  }

  __clang_call_terminate(a1);
}

void std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t ClipperLib::Clipper::ExecuteInternal(ClipperLib::Clipper *this)
{
  (*(*(this + *(*this - 24)) + 32))(this + *(*this - 24));
  v2 = *(this + 11);
  v266 = (this + 88);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  *v266 = 0u;
  *(this + 104) = 0u;
  v275 = 0;
  v276[0] = 0;
  if (!ClipperLib::ClipperBase::PopScanbeam((this + *(*this - 24)), v276))
  {
    return 0;
  }

  ClipperLib::Clipper::InsertLocalMinimaIntoAEL(this, v276[0]);
  v265 = this + 40;
  v268 = this + 104;
  __asm
  {
    FMOV            V1.2D, #0.5
    FMOV            V0.2D, #-0.5
  }

  v270 = _Q0;
  v272 = _Q1;
LABEL_5:
  if (!ClipperLib::ClipperBase::PopScanbeam((this + *(*this - 24)), &v275))
  {
    v8 = *this;
    v9 = *this;
    v10 = *(*this - 24);
    v11 = this + v10;
    if (*(this + v10 + 8) == *(this + v10 + 24))
    {
      v158 = v11 + 80;
      v157 = *(v11 + 10);
      if (*(v158 + 1) != v157)
      {
        v159 = 0;
        do
        {
          v160 = *(v157 + 8 * v159);
          v161 = *(v160 + 24);
          if (v161)
          {
            if ((*(v160 + 5) & 1) == 0)
            {
              v162 = *(this + 132) ^ *(v160 + 4);
              if (v162 == ClipperLib::Area(v161) > 0.0)
              {
                v163 = v161;
                do
                {
                  v164 = *(v163 + 7);
                  *(v163 + 7) = vextq_s8(v164, v164, 8uLL);
                  v163 = v164.i64[0];
                }

                while (v164.i64[0] != v161);
                v10 = *(v9 - 24);
              }
            }
          }

          ++v159;
          v157 = *(this + v10 + 80);
        }

        while (v159 < (*(this + v10 + 88) - v157) >> 3);
      }

      v165 = *(this + 1);
      if (v165 != *(this + 2))
      {
        v166 = 0;
        do
        {
          v167 = *(v165 + 8 * v166);
          OutRec = ClipperLib::Clipper::GetOutRec(this, **v167);
          v169 = ClipperLib::Clipper::GetOutRec(this, *v167[1]);
          if (*(OutRec + 3))
          {
            v170 = v169;
            v171 = v169 + 6;
            if (*(v169 + 3))
            {
              if ((*(OutRec + 5) & 1) == 0 && (*(v169 + 5) & 1) == 0)
              {
                if (OutRec == v169)
                {
                  if (ClipperLib::Clipper::JoinPoints(this, v167, OutRec, v169))
                  {
                    *(OutRec + 3) = *v167;
                    *(OutRec + 4) = 0;
                    v183 = ClipperLib::ClipperBase::CreateOutRec((this + *(*this - 24)));
                    v184 = v167[1];
                    *(v183 + 3) = v184;
                    v185 = *v183;
                    v186 = v184;
                    do
                    {
                      *v186 = v185;
                      v186 = v186[8];
                    }

                    while (v186 != v184);
                    v187 = *(OutRec + 3);
                    v188 = v184;
                    while (1)
                    {
                      v189 = ClipperLib::PointInPolygon(v188[1], v188[2], v187);
                      if ((v189 & 0x80000000) == 0)
                      {
                        break;
                      }

                      v188 = v188[7];
                      if (v188 == v184)
                      {
                        goto LABEL_321;
                      }
                    }

                    v190 = v187;
                    if (v189)
                    {
LABEL_321:
                      v191 = (OutRec[1] & 1) == 0;
                      *(v183 + 4) = (OutRec[1] & 1) == 0;
                      *(v183 + 1) = OutRec;
                      if (*(this + 133) == 1)
                      {
                        ClipperLib::Clipper::FixupFirstLefts2(this, v183, OutRec);
                        v191 = *(v183 + 4);
                        v184 = *(v183 + 3);
                      }

                      v192 = *(this + 132) ^ v191;
                      if (v192 == ClipperLib::Area(v184) > 0.0 && v184 != 0)
                      {
                        v194 = v184;
                        do
                        {
                          v195 = *(v194 + 7);
                          *(v194 + 7) = vextq_s8(v195, v195, 8uLL);
                          v194 = v195.i64[0];
                        }

                        while (v195.i64[0] != v184);
                      }
                    }

                    else
                    {
                      while (1)
                      {
                        v196 = ClipperLib::PointInPolygon(v190[1], v190[2], v184);
                        if ((v196 & 0x80000000) == 0)
                        {
                          break;
                        }

                        v190 = v190[7];
                        if (v190 == v187)
                        {
                          goto LABEL_335;
                        }
                      }

                      if (v196)
                      {
LABEL_335:
                        v197 = *(OutRec + 4);
                        *(v183 + 4) = v197;
                        v198 = (v197 & 1) == 0;
                        *(OutRec + 4) = v198;
                        *(v183 + 1) = *(OutRec + 1);
                        *(OutRec + 1) = v183;
                        if (*(this + 133) == 1)
                        {
                          ClipperLib::Clipper::FixupFirstLefts2(this, OutRec, v183);
                          v198 = *(OutRec + 4);
                          v187 = *(OutRec + 3);
                        }

                        v199 = *(this + 132) ^ v198;
                        if (v199 == ClipperLib::Area(v187) > 0.0 && v187 != 0)
                        {
                          v201 = v187;
                          do
                          {
                            v202 = *(v201 + 7);
                            *(v201 + 7) = vextq_s8(v202, v202, 8uLL);
                            v201 = v202.i64[0];
                          }

                          while (v202.i64[0] != v187);
                        }
                      }

                      else
                      {
                        *(v183 + 4) = *(OutRec + 4);
                        *(v183 + 1) = *(OutRec + 1);
                        if (*(this + 133) == 1)
                        {
                          ClipperLib::Clipper::FixupFirstLefts1(this, OutRec, v183);
                        }
                      }
                    }
                  }
                }

                else
                {
                  v172 = OutRec;
                  do
                  {
                    v172 = *(v172 + 1);
                  }

                  while (v172 != v169 && v172 != 0);
                  LowermostRec = v169;
                  if (v172 != v169)
                  {
                    v175 = v169;
                    do
                    {
                      v175 = *(v175 + 1);
                    }

                    while (v175 != OutRec && v175 != 0);
                    LowermostRec = OutRec;
                    if (v175 != OutRec)
                    {
                      LowermostRec = ClipperLib::GetLowermostRec(OutRec, v169);
                    }
                  }

                  if (ClipperLib::Clipper::JoinPoints(this, v167, OutRec, v170))
                  {
                    *v171 = 0;
                    v171[1] = 0;
                    *v170 = *OutRec;
                    *(OutRec + 4) = *(LowermostRec + 4);
                    if (LowermostRec == v170)
                    {
                      *(OutRec + 1) = *(v170 + 8);
                    }

                    *(v170 + 8) = OutRec;
                    if (*(this + 133) == 1)
                    {
                      v177 = *this;
                      v178 = *(*this - 24);
                      v179 = *(this + v178 + 80);
                      if (*(this + v178 + 88) != v179)
                      {
                        v180 = 0;
                        do
                        {
                          v181 = *(v179 + 8 * v180);
                          for (i = *(v181 + 8); i; i = *(i + 8))
                          {
                            if (*(i + 24))
                            {
                              break;
                            }
                          }

                          if (i == v170 && *(v181 + 24))
                          {
                            *(v181 + 8) = OutRec;
                            v178 = *(v177 - 24);
                          }

                          ++v180;
                          v179 = *(this + v178 + 80);
                        }

                        while (v180 < (*(this + v178 + 88) - v179) >> 3);
                      }
                    }
                  }
                }
              }
            }
          }

          ++v166;
          v165 = *(this + 1);
        }

        while (v166 < (*(this + 2) - v165) >> 3);
        v8 = *this;
      }

      v203 = *(this + *(v8 - 24) + 80);
      if (*(this + *(v8 - 24) + 88) == v203)
      {
        goto LABEL_402;
      }

      v204 = 0;
      do
      {
        v205 = *(v203 + 8 * v204);
        v206 = *(v205 + 24);
        if (!v206)
        {
          goto LABEL_399;
        }

        if (*(v205 + 5) == 1)
        {
          v207 = v206[8];
          if (v206 == v207)
          {
            v211 = v206[8];
            v207 = *(v205 + 24);
          }

          else
          {
            do
            {
              v206 = v206[7];
              v208 = v206[8];
              if (v206[1] == v208[1] && v206[2] == v208[2])
              {
                v210 = v206[7];
                if (v206 == v207)
                {
                  v207 = v206[8];
                }

                v208[7] = v210;
                *(v210 + 64) = v208;
                v206 = v208;
              }
            }

            while (v206 != v207);
            v211 = v206[8];
          }

          if (v207 != v211)
          {
            goto LABEL_399;
          }

LABEL_397:
          v206 = 0;
          v211[7] = 0;
          goto LABEL_398;
        }

        *(v205 + 32) = 0;
        v262 = v204;
        if (*(this + *(v8 - 24) + 72))
        {
          v212 = 1;
        }

        else
        {
          v212 = *(this + 134);
        }

        v263 = v212;
        v213 = v206 + 8;
        v211 = v206[8];
        if (v211 == v206)
        {
          goto LABEL_397;
        }

        v261 = v205;
        v214 = 0;
        while (1)
        {
          v215 = v206[7];
          if (v211 == v215)
          {
LABEL_394:
            v8 = *this;
            v204 = v262;
            v205 = v261;
            goto LABEL_397;
          }

          v217 = v206[1];
          v216 = v206[2];
          v218 = v215[1];
          v219 = v215[2];
          v220 = v215 + 1;
          v221 = v217 == v218 && v216 == v219;
          v222 = v221;
          if (v221 || ((v223 = v211[1], v224 = v211[2], v217 == v223) ? (v225 = v216 == v224) : (v225 = 0), v225 || (v264 = *this, v271 = v214, v273 = v211[2], v274 = v206[2], v269 = v222, v267 = v211[1], v226 = ClipperLib::SlopesEqual(v223, v224, v217, v216, v218, v219, v265[*(*this - 24)]), v222 = v269, v216 = v274, v214 = v271, v226) && ((v263 & 1) == 0 || (IsBetweenPt1AndPt3 = ClipperLib::Pt2IsBetweenPt1AndPt3(v267, v273, v217, v274, v218, v219), v222 = v269, v216 = v274, v214 = v271, (IsBetweenPt1AndPt3 & 1) == 0))))
          {
            v228 = v206[5];
            if (v228 != -1 && (v206[3] != v228 || *(v206 + 4) != *(v206 + 6)))
            {
              if ((v222 & 1) != 0 || (v220 = v211 + 1, v217 == v211[1]) && v216 == v211[2])
              {
                v229 = *(v206 + 1);
                v230 = *(v206 + 5);
                v220[1] = *(v206 + 3);
                v220[2] = v230;
                *v220 = v229;
                v215 = v206[7];
                v211 = *v213;
              }
            }

            v214 = 0;
            v211[7] = v215;
            v215[8] = v211;
            v215 = *v213;
            goto LABEL_393;
          }

          if (v206 == v214)
          {
            break;
          }

          if (!v214)
          {
            v214 = v206;
          }

LABEL_393:
          v213 = v215 + 8;
          v211 = v215[8];
          v206 = v215;
          if (v211 == v215)
          {
            goto LABEL_394;
          }
        }

        v8 = v264;
        v204 = v262;
        v205 = v261;
LABEL_398:
        *(v205 + 24) = v206;
LABEL_399:
        ++v204;
        v203 = *(this + *(v8 - 24) + 80);
      }

      while (v204 < (*(this + *(v8 - 24) + 88) - v203) >> 3);
LABEL_402:
      if (*(this + 134))
      {
        v231 = *(this + *(v8 - 24) + 80);
        if (*(this + *(v8 - 24) + 88) != v231)
        {
          v232 = 0;
          while (2)
          {
            v233 = *(v231 + 8 * v232);
            v234 = *(v233 + 24);
            if (v234 && (*(v233 + 5) & 1) == 0)
            {
              v235 = *(v233 + 24);
              do
              {
                v236 = v235[7];
                if (v236 != v234)
                {
                  while (1)
                  {
                    if (v235[1] != v236[1] || v235[2] != v236[2])
                    {
                      goto LABEL_427;
                    }

                    if (v236[7] == v235)
                    {
                      goto LABEL_427;
                    }

                    v238 = v236[8];
                    if (v238 == v235)
                    {
                      goto LABEL_427;
                    }

                    v239 = v235[8];
                    v235[8] = v238;
                    v238[7] = v235;
                    v236[8] = v239;
                    *(v239 + 56) = v236;
                    *(v233 + 24) = v235;
                    v240 = ClipperLib::ClipperBase::CreateOutRec((this + *(*this - 24)));
                    *(v240 + 3) = v236;
                    v241 = *v240;
                    v242 = v236;
                    do
                    {
                      *v242 = v241;
                      v242 = v242[8];
                    }

                    while (v242 != v236);
                    v243 = *(v233 + 24);
                    v244 = v243;
                    v245 = v236;
                    while (1)
                    {
                      v246 = ClipperLib::PointInPolygon(v245[1], v245[2], v243);
                      if ((v246 & 0x80000000) == 0)
                      {
                        break;
                      }

                      v245 = v245[7];
                      if (v245 == v236)
                      {
                        goto LABEL_423;
                      }
                    }

                    if (!v246)
                    {
                      break;
                    }

LABEL_423:
                    *(v240 + 4) = *(v233 + 4) ^ 1;
                    *(v240 + 1) = v233;
                    v236 = v235;
                    if (*(this + 133) == 1)
                    {
                      v247 = this;
                      v248 = v240;
                      v249 = v233;
                      goto LABEL_425;
                    }

LABEL_427:
                    v236 = v236[7];
                    if (v236 == *(v233 + 24))
                    {
                      v235 = v235[7];
                      v234 = v236;
                      goto LABEL_438;
                    }
                  }

                  while (1)
                  {
                    v250 = ClipperLib::PointInPolygon(v244[1], v244[2], v236);
                    if ((v250 & 0x80000000) == 0)
                    {
                      break;
                    }

                    v244 = v244[7];
                    if (v244 == v243)
                    {
                      goto LABEL_433;
                    }
                  }

                  if (v250)
                  {
LABEL_433:
                    v251 = *(v233 + 4);
                    *(v240 + 4) = v251;
                    *(v233 + 4) = v251 ^ 1;
                    *(v240 + 1) = *(v233 + 8);
                    *(v233 + 8) = v240;
                    v236 = v235;
                    if (*(this + 133) != 1)
                    {
                      goto LABEL_427;
                    }

                    v247 = this;
                    v248 = v233;
                    v249 = v240;
LABEL_425:
                    ClipperLib::Clipper::FixupFirstLefts2(v247, v248, v249);
                  }

                  else
                  {
                    *(v240 + 4) = *(v233 + 4);
                    *(v240 + 1) = *(v233 + 8);
                    v236 = v235;
                    if (*(this + 133) != 1)
                    {
                      goto LABEL_427;
                    }

                    ClipperLib::Clipper::FixupFirstLefts1(this, v233, v240);
                  }

                  v236 = v235;
                  goto LABEL_427;
                }

                v235 = v235[7];
                v236 = v234;
LABEL_438:
                ;
              }

              while (v235 != v236);
              v8 = *this;
            }

            ++v232;
            v231 = *(this + *(v8 - 24) + 80);
            if (v232 < (*(this + *(v8 - 24) + 88) - v231) >> 3)
            {
              continue;
            }

            break;
          }
        }
      }

      v156 = 1;
      goto LABEL_442;
    }
  }

  ClipperLib::Clipper::ProcessHorizontals(this);
  *(this + 5) = *(this + 4);
  v12 = v275;
  v13 = *&v268[*(*this - 24)];
  if (!v13)
  {
    goto LABEL_139;
  }

  *(this + 14) = v13;
  do
  {
    v14 = *(v13 + 200);
    *(v13 + 216) = v14;
    if (*(v13 + 104) == v12)
    {
      v15 = *(v13 + 96);
    }

    else
    {
      v16 = *(v13 + 144) * (v12 - *(v13 + 8));
      if (v16 >= 0.0)
      {
        v17 = 0.5;
      }

      else
      {
        v17 = -0.5;
      }

      v15 = *v13 + (v16 + v17);
    }

    *(v13 + 48) = v15;
    v13 = v14.n128_u64[0];
  }

  while (v14.n128_u64[0]);
  while (1)
  {
    v18 = *(this + 14);
    v19 = *(v18 + 216);
    if (!v19)
    {
      break;
    }

    v20 = 0;
    do
    {
      if (*(v18 + 48) <= *(v19 + 48))
      {
        v18 = v19;
        goto LABEL_95;
      }

      v21 = *(v18 + 144);
      v22 = *(v19 + 144);
      if (v21 == v22)
      {
        v23 = *(v18 + 56);
        v24.i64[1] = v23;
        if (*(v18 + 104) == v23)
        {
          goto LABEL_21;
        }

        v29 = v21 * (v23 - *(v18 + 8));
        if (v29 >= 0.0)
        {
          v30 = 0.5;
        }

        else
        {
          v30 = -0.5;
        }

        v25 = *v18 + (v29 + v30);
        v23 = *(v18 + 104);
LABEL_72:
        v24.i64[0] = v25;
        goto LABEL_73;
      }

      if (v21 == 0.0)
      {
        v24.i64[0] = *v18;
        v26 = *(v19 + 8);
        if (v22 != -1.0e40)
        {
          v27 = v26 - *v19 / v22;
          v28 = *v18 / v22;
          goto LABEL_33;
        }

        goto LABEL_37;
      }

      if (v22 == 0.0)
      {
        v24.i64[0] = *v19;
        v26 = *(v18 + 8);
        if (v21 != -1.0e40)
        {
          v27 = v26 - *v18 / v21;
          v28 = *v19 / v21;
LABEL_33:
          v31 = v28 + v27;
          if (v31 >= 0.0)
          {
            v32 = 0.5;
          }

          else
          {
            v32 = -0.5;
          }

          v26 = (v31 + v32);
        }

LABEL_37:
        v24.i64[1] = v26;
        goto LABEL_38;
      }

      v39 = *v18 - *(v18 + 8) * v21;
      v40 = *v19 - *(v19 + 8) * v22;
      v41 = (v40 - v39) / (v21 - v22);
      v42 = v40 + v22 * v41;
      v43.f64[0] = v39 + v21 * v41;
      if (fabs(v21) >= fabs(v22))
      {
        v43.f64[0] = v42;
      }

      v43.f64[1] = v41;
      v24 = vcvtq_s64_f64(vaddq_f64(v43, vbslq_s8(vcltzq_f64(v43), v270, v272)));
      v26 = v24.i64[1];
LABEL_38:
      v23 = *(v18 + 104);
      v33 = *(v19 + 104);
      if (v26 < v23 || v26 < v33)
      {
        if (v23 <= v33)
        {
          v26 = *(v19 + 104);
        }

        else
        {
          v26 = *(v18 + 104);
        }

        if (fabs(v21) >= fabs(v22))
        {
          if (v33 >= v23)
          {
            v38 = *(v19 + 96);
          }

          else
          {
            v35 = *v19;
            v36 = v22 * (v26 - *(v19 + 8));
LABEL_51:
            if (v36 >= 0.0)
            {
              v37 = 0.5;
            }

            else
            {
              v37 = -0.5;
            }

            v38 = v35 + (v36 + v37);
          }
        }

        else
        {
          if (v23 < v33)
          {
            v35 = *v18;
            v36 = v21 * (v26 - *(v18 + 8));
            goto LABEL_51;
          }

          v38 = *(v18 + 96);
        }

        v24.i64[0] = v38;
        v24.i64[1] = v26;
      }

      v44 = *(v18 + 56);
      if (v26 > v44)
      {
        v24.i64[1] = *(v18 + 56);
        if (fabs(v21) <= fabs(v22))
        {
          if (v23 == v44)
          {
LABEL_21:
            v25 = *(v18 + 96);
            goto LABEL_72;
          }

          v45 = *v18;
          v46 = v21 * (v44 - *(v18 + 8));
        }

        else
        {
          if (v33 == v44)
          {
            v25 = *(v19 + 96);
            goto LABEL_72;
          }

          v45 = *v19;
          v46 = v22 * (v44 - *(v19 + 8));
        }

        if (v46 >= 0.0)
        {
          v47 = 0.5;
        }

        else
        {
          v47 = -0.5;
        }

        v25 = v45 + (v46 + v47);
        goto LABEL_72;
      }

LABEL_73:
      if (v24.i64[1] < v12)
      {
        if (v23 == v12)
        {
          v48 = *(v18 + 96);
        }

        else
        {
          v49 = v21 * (v12 - *(v18 + 8));
          if (v49 >= 0.0)
          {
            v50 = 0.5;
          }

          else
          {
            v50 = -0.5;
          }

          v48 = *v18 + (v49 + v50);
        }

        v24.i64[0] = v48;
        v24.i64[1] = v12;
      }

      v51 = *(this + 8);
      v52 = *(this + 9);
      if (v51 >= v52)
      {
        v54 = *(this + 7);
        v55 = v51 - v54;
        v56 = (v51 - v54) >> 6;
        v57 = v56 + 1;
        if ((v56 + 1) >> 58)
        {
          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }

        v58 = v52 - v54;
        if (v58 >> 5 > v57)
        {
          v57 = v58 >> 5;
        }

        if (v58 >= 0x7FFFFFFFFFFFFFC0)
        {
          v59 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v59 = v57;
        }

        if (v59)
        {
          if (!(v59 >> 58))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:fe200100]();
        }

        v60 = v56;
        v61 = v56 << 6;
        *v61 = v18;
        *(v61 + 8) = v19;
        *(v61 + 16) = v24;
        *(v61 + 32) = ClipperLib::PointInfoZero;
        *(v61 + 48) = unk_1844DF1D8;
        v53 = (v56 << 6) + 64;
        v62 = (v61 - (v60 << 6));
        memcpy(v62, v54, v55);
        *(this + 7) = v62;
        *(this + 8) = v53;
        *(this + 9) = 0;
        if (v54)
        {
          operator delete(v54);
        }
      }

      else
      {
        *v51 = v18;
        *(v51 + 8) = v19;
        *(v51 + 16) = v24;
        *(v51 + 32) = ClipperLib::PointInfoZero;
        *(v51 + 48) = unk_1844DF1D8;
        v53 = v51 + 64;
      }

      *(this + 8) = v53;
      ClipperLib::Clipper::SwapPositionsInSEL(this, v18, v19);
      v20 = 1;
LABEL_95:
      v19 = *(v18 + 216);
    }

    while (v19);
    v63 = *(v18 + 224);
    if (v63)
    {
      *(v63 + 216) = 0;
      if (v20)
      {
        continue;
      }
    }

    goto LABEL_101;
  }

  v64 = *(v18 + 224);
  if (v64)
  {
    *(v64 + 216) = 0;
  }

LABEL_101:
  *(this + 14) = 0;
  v65 = *(this + 7);
  v66 = *(this + 8);
  v67 = (v66 - v65) >> 6;
  if (!v67)
  {
    goto LABEL_139;
  }

  if (v67 == 1)
  {
    goto LABEL_135;
  }

  v68 = *&v268[*(*this - 24)];
  *(this + 14) = v68;
  if (v68)
  {
    do
    {
      v14 = *(v68 + 200);
      *(v68 + 216) = v14;
      v68 = v14.n128_u64[0];
    }

    while (v14.n128_u64[0]);
    v65 = *(this + 7);
    v66 = *(this + 8);
    v67 = (v66 - v65) >> 6;
  }

  *&v278 = ClipperLib::IntersectListSort;
  v69 = 126 - 2 * __clz(v67);
  v70 = v66 == v65 ? 0 : v69;
  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode const&,ClipperLib::IntersectNode const&),ClipperLib::IntersectNode*,false>(v65, v66, &v278, v70, 1uLL, v14);
  v65 = *(this + 7);
  v66 = *(this + 8);
  v71 = v66 - v65;
  if (v66 == v65)
  {
LABEL_135:
    if (v66 != v65)
    {
      v96 = 0;
      v97 = 0;
      do
      {
        v98 = (v65 + v96);
        ClipperLib::Clipper::IntersectEdges(this, *(v65 + v96), *(v65 + v96 + 8), (v65 + v96 + 16));
        ClipperLib::ClipperBase::SwapPositionsInAEL(this + *(*this - 24), *v98, v98[1]);
        ++v97;
        v65 = *(this + 7);
        v96 += 64;
      }

      while (v97 < (*(this + 8) - v65) >> 6);
    }

    *(this + 8) = v65;
    *(this + 14) = 0;
LABEL_139:
    for (j = *&v268[*(*this - 24)]; ; j = *v125)
    {
      v281[0] = j;
      if (!j)
      {
        std::__sort<std::__less<long long,long long> &,long long *>();
        ClipperLib::Clipper::ProcessHorizontals(this);
        *(this + 12) = *(this + 11);
        for (k = *&v268[*(*this - 24)]; ; k = *(k + 25))
        {
          v281[0] = k;
          if (!k)
          {
            break;
          }

          if (*(k + 13) == v12 && *(k + 24))
          {
            if ((*(k + 43) & 0x80000000) != 0)
            {
              v141 = 0;
            }

            else
            {
              v141 = ClipperLib::Clipper::AddOutPt(this, k, k + 6);
            }

            ClipperLib::ClipperBase::UpdateEdgeIntoAEL((this + *(*this - 24)), v281);
            k = v281[0];
            v142 = *(v281[0] + 25);
            v143 = *(v281[0] + 26);
            if (v143 && (v144 = *(v143 + 48), v144 == *v281[0]) && ((v145 = *(v143 + 56), v145 == *(v281[0] + 1)) ? (v146 = v141 == 0) : (v146 = 1), !v146 && (*(v143 + 172) & 0x80000000) == 0 && (v147 = *(v143 + 104), v145 > v147) && ClipperLib::SlopesEqual(*(v281[0] + 6), *(v281[0] + 7), *(v281[0] + 12), *(v281[0] + 13), v144, v145, *(v143 + 96), v147, v265[*(*this - 24)]) && *(k + 40) && *(v143 + 160)))
            {
              v148 = ClipperLib::Clipper::AddOutPt(this, v143, k);
              v149 = k[7];
              v278 = k[6];
              v279 = v149;
              v280 = k[8];
              ClipperLib::Clipper::AddJoin(this, v141, v148, &v278);
            }

            else if (v142)
            {
              v150 = *(v142 + 48);
              if (v150 == *k)
              {
                v151 = *(v142 + 56);
                if (v151 == *(k + 1) && v141 != 0 && (*(v142 + 172) & 0x80000000) == 0)
                {
                  v153 = *(v142 + 104);
                  if (v151 > v153 && ClipperLib::SlopesEqual(*(k + 6), *(k + 7), *(k + 12), *(k + 13), v150, v151, *(v142 + 96), v153, v265[*(*this - 24)]) && *(k + 40) && *(v142 + 160))
                  {
                    v154 = ClipperLib::Clipper::AddOutPt(this, v142, k);
                    v155 = k[7];
                    v278 = k[6];
                    v279 = v155;
                    v280 = k[8];
                    ClipperLib::Clipper::AddJoin(this, v141, v154, &v278);
                  }
                }
              }
            }
          }
        }

        ClipperLib::Clipper::InsertLocalMinimaIntoAEL(this, v12);
        goto LABEL_5;
      }

      if (*(j + 13) == v12)
      {
        v100 = *(j + 24);
        if (v100)
        {
          if (*(v100 + 144) == -1.0e40)
          {
            ClipperLib::ClipperBase::UpdateEdgeIntoAEL((this + *(*this - 24)), v281);
            j = v281[0];
            if ((*(v281[0] + 43) & 0x80000000) == 0)
            {
              ClipperLib::Clipper::AddOutPt(this, v281[0], v281[0]);
            }

            v101 = *(this + 14);
            *(j + 28) = 0;
            if (v101)
            {
              *(v101 + 224) = j;
            }

            *(this + 14) = j;
            *(j + 27) = v101;
            goto LABEL_175;
          }
        }

        else
        {
          ClipperLib::GetMaximaPairEx(j);
          if (!v105 || *(v105 + 144) != -1.0e40)
          {
            if (*(this + 134) == 1)
            {
              std::vector<long long>::push_back[abi:fe200100](v266, j + 12);
            }

            v106 = *(j + 26);
            ClipperLib::GetMaximaPairEx(j);
            if (!v107)
            {
              if ((*(j + 43) & 0x80000000) == 0)
              {
                ClipperLib::Clipper::AddOutPt(this, j, j + 6);
              }

              v126 = this + *(*this - 24);
              v128 = *(j + 25);
              v129 = *(j + 26);
              v127 = j + 25;
              if (*(j + 200) != 0)
              {
                goto LABEL_226;
              }

              if (*(v126 + 13) == j)
              {
                goto LABEL_229;
              }

              goto LABEL_191;
            }

            v108 = v107;
            v109 = j + 25;
            v110 = *(j + 25);
            v111 = v110 != 0;
            if (v110 && v110 != v107)
            {
              do
              {
                ClipperLib::Clipper::IntersectEdges(this, j, v110, j + 6);
                ClipperLib::ClipperBase::SwapPositionsInAEL(this + *(*this - 24), j, v110);
                v110 = *(j + 25);
                v111 = v110 != 0;
                if (v110)
                {
                  _ZF = v110 == v108;
                }

                else
                {
                  _ZF = 1;
                }
              }

              while (!_ZF);
            }

            v113 = *(j + 43);
            if (v113 != -1)
            {
              if ((v113 & 0x80000000) == 0)
              {
                if ((*(v108 + 172) & 0x80000000) == 0)
                {
                  ClipperLib::Clipper::AddLocalMaxPoly(this, j, v108, j + 6);
                  v114 = *this;
                  v115 = this + *(*this - 24);
                  v117 = *(j + 25);
                  v116 = *(j + 26);
                  if (*(j + 200) == 0)
                  {
                    if (*(v115 + 13) != j)
                    {
                      goto LABEL_224;
                    }
                  }

                  else if (v116)
                  {
                    v118 = (v116 + 200);
LABEL_217:
                    *v118 = v117;
                    if (v117)
                    {
                      *(v117 + 208) = v116;
                    }

LABEL_223:
                    *v109 = 0;
                    *(j + 26) = 0;
                    v114 = *this;
LABEL_224:
                    v134 = v114;
LABEL_225:
                    v126 = this + *(v134 - 24);
                    v128 = *(v108 + 200);
                    v129 = *(v108 + 208);
                    v127 = (v108 + 200);
                    if (*(v108 + 200) != 0)
                    {
LABEL_226:
                      if (v129)
                      {
                        v139 = (v129 + 200);
LABEL_230:
                        *v139 = v128;
                        if (v128)
                        {
                          *(v128 + 208) = v129;
                        }

                        *v127 = 0;
                        v127[1] = 0;
                        if (v106)
                        {
LABEL_192:
                          v125 = (v106 + 200);
                          continue;
                        }

LABEL_233:
                        v125 = &v268[*(*this - 24)];
                        continue;
                      }

LABEL_229:
                      v139 = v126 + 104;
                      goto LABEL_230;
                    }

                    if (*(v126 + 13) == v108)
                    {
                      goto LABEL_229;
                    }

LABEL_191:
                    if (v106)
                    {
                      goto LABEL_192;
                    }

                    goto LABEL_233;
                  }

                  v118 = v115 + 104;
                  goto LABEL_217;
                }

                if (*(j + 40))
                {
LABEL_453:
                  exception = __cxa_allocate_exception(0x20uLL);
                  ClipperLib::clipperException::clipperException(exception, "DoMaxima error");
                }

                ClipperLib::Clipper::AddOutPt(this, j, j + 6);
                *(j + 43) = -1;
LABEL_198:
                v130 = this + *(*this - 24);
                v132 = *(j + 25);
                v131 = *(j + 26);
                if (*(j + 200) == 0)
                {
                  if (*(v130 + 13) == j)
                  {
                    goto LABEL_202;
                  }
                }

                else
                {
                  if (v131)
                  {
                    v133 = (v131 + 200);
                    goto LABEL_203;
                  }

LABEL_202:
                  v133 = v130 + 104;
LABEL_203:
                  *v133 = v132;
                  if (v132)
                  {
                    *(v132 + 208) = v131;
                  }

                  *v109 = 0;
                  *(j + 26) = 0;
                }

                if ((*(v108 + 172) & 0x80000000) == 0)
                {
                  ClipperLib::Clipper::AddOutPt(this, v108, j + 6);
                  *(v108 + 172) = -1;
                }

                v134 = *this;
                goto LABEL_225;
              }

LABEL_194:
              if (*(j + 40))
              {
                goto LABEL_453;
              }

              goto LABEL_198;
            }

            if (*(v108 + 172) != -1)
            {
              goto LABEL_194;
            }

            v114 = *this;
            v135 = this + *(*this - 24);
            v136 = *(j + 26);
            if (v136)
            {
              v137 = 1;
            }

            else
            {
              v137 = v111;
            }

            if (v137)
            {
              if (v136)
              {
                v138 = (v136 + 200);
                goto LABEL_221;
              }
            }

            else if (*(v135 + 13) != j)
            {
              goto LABEL_224;
            }

            v138 = (v135 + 104);
LABEL_221:
            *v138 = v110;
            if (v111)
            {
              *(v110 + 208) = v136;
            }

            goto LABEL_223;
          }
        }

        *(j + 6) = *(j + 12);
        *(j + 7) = v12;
        v103 = j + 7;
      }

      else
      {
        v102 = *(j + 18) * (v12 - *(j + 1));
        v103 = j + 1;
        if (v12 != *(j + 1))
        {
          v103 = &ClipperLib::PointInfoZero;
        }

        if (v102 >= 0.0)
        {
          v104 = 0.5;
        }

        else
        {
          v104 = -0.5;
        }

        *(j + 6) = *j + (v102 + v104);
        *(j + 7) = v12;
      }

      v119 = v103[1];
      j[4] = *v103;
      j[5] = v119;
LABEL_175:
      if (*(this + 134) == 1 && (*(j + 43) & 0x80000000) == 0)
      {
        if (*(j + 40))
        {
          v120 = *(j + 26);
          if (v120)
          {
            if ((*(v120 + 172) & 0x80000000) == 0 && *(v120 + 48) == *(j + 6) && *(v120 + 160))
            {
              v121 = j[4];
              v278 = j[3];
              v279 = v121;
              v280 = j[5];
              v122 = *(this + 17);
              if (v122)
              {
                v122(v120, v120 + 96, j, j + 6, &v278);
              }

              v123 = ClipperLib::Clipper::AddOutPt(this, v120, &v278);
              v124 = ClipperLib::Clipper::AddOutPt(this, j, &v278);
              v277[0] = v278;
              v277[1] = v279;
              v277[2] = v280;
              ClipperLib::Clipper::AddJoin(this, v123, v124, v277);
              j = v281[0];
            }
          }
        }
      }

      v125 = j + 25;
    }
  }

  v72 = 0;
  v73 = 0;
  v74 = v71 >> 6;
  if ((v71 >> 6) <= 1)
  {
    v75 = 1;
  }

  else
  {
    v75 = v71 >> 6;
  }

  v76 = 72;
  v77 = 1;
  do
  {
    if (v74 <= v77)
    {
      v78 = v77;
    }

    else
    {
      v78 = v74;
    }

    v79 = *(this + 7);
    v80 = (*(this + 8) - v79) >> 6;
    if (v80 <= v73)
    {
LABEL_454:
      __break(1u);
      JUMPOUT(0x183F5F2E0);
    }

    v81 = (v79 + (v73 << 6));
    v82 = *(v81 + 1);
    if (*(*v81 + 216) != v82 && *(*v81 + 224) != v82)
    {
      v83 = (v79 + v76);
      v84 = v77;
      v85 = v73;
      while (1)
      {
        if (v84 >= v74)
        {
          v85 = v78;
          goto LABEL_128;
        }

        if (v80 == v84)
        {
          goto LABEL_454;
        }

        v87 = *(v83 - 1);
        v86 = *v83;
        if (*(v87 + 216) == *v83)
        {
          break;
        }

        ++v84;
        v83 += 8;
        ++v85;
        if (*(v87 + 224) == v86)
        {
          goto LABEL_128;
        }
      }

      v85 = v84;
LABEL_128:
      if (v85 == v74)
      {
        break;
      }

      if (v80 <= v85)
      {
        goto LABEL_454;
      }

      v88 = (v79 + (v85 << 6));
      v90 = v81[2];
      v89 = v81[3];
      v92 = *v81;
      v91 = v81[1];
      v93 = v88[3];
      v95 = *v88;
      v94 = v88[1];
      v81[2] = v88[2];
      v81[3] = v93;
      *v81 = v95;
      v81[1] = v94;
      *v88 = v92;
      v88[1] = v91;
      v88[2] = v90;
      v88[3] = v89;
      v79 = *(this + 7);
      v80 = (*(this + 8) - v79) >> 6;
    }

    if (v80 <= v73)
    {
      goto LABEL_454;
    }

    ClipperLib::Clipper::SwapPositionsInSEL(this, *(v79 + (v73 << 6)), *(v79 + (v73 << 6) + 8));
    v72 = ++v73 >= v74;
    ++v77;
    v76 += 64;
  }

  while (v73 != v75);
  if (v72)
  {
    v65 = *(this + 7);
    v66 = *(this + 8);
    goto LABEL_135;
  }

  v156 = 0;
LABEL_442:
  v252 = *this;
  *(this + 2) = *(this + 1);
  v253 = (this + *(v252 - 24));
  v254 = v253[27];
  v255 = v253[28];
  v253[31] = 0;
  v256 = (v255 - v254) >> 3;
  if (v256 >= 3)
  {
    do
    {
      operator delete(*v254);
      v257 = v253[28];
      v254 = (v253[27] + 8);
      v253[27] = v254;
      v256 = (v257 - v254) >> 3;
    }

    while (v256 > 2);
  }

  if (v256 == 1)
  {
    v258 = 32;
LABEL_448:
    v253[30] = v258;
  }

  else if (v256 == 2)
  {
    v258 = 64;
    goto LABEL_448;
  }

  *(this + 5) = *(this + 4);
  return v156;
}

void ClipperLib::ClipperBase::Reset(ClipperLib::ClipperBase *this, __n128 a2)
{
  v3 = *(this + 2);
  v4 = *(this + 3);
  *(this + 1) = v3;
  if (v3 != v4)
  {
    std::__introsort<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,false>(v3, v4, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3)), 1, a2);
    v5 = *(this + 32);
    if (v5)
    {
      *(this + 33) = v5;
      operator delete(v5);
    }

    *(this + 32) = 0;
    *(this + 33) = 0;
    *(this + 34) = 0;
    v6 = *(this + 2);
    if (v6 != *(this + 3))
    {
      do
      {
        ClipperLib::ClipperBase::InsertScanbeam(this, *v6);
        v7 = v6[1];
        if (v7)
        {
          v8 = *(v7 + 16);
          *(v7 + 48) = *v7;
          *(v7 + 64) = v8;
          *(v7 + 80) = *(v7 + 32);
          *(v7 + 156) = 1;
          *(v7 + 172) = -1;
        }

        v9 = v6[2];
        if (v9)
        {
          v10 = *(v9 + 16);
          *(v9 + 48) = *v9;
          *(v9 + 64) = v10;
          *(v9 + 80) = *(v9 + 32);
          *(v9 + 156) = 2;
          *(v9 + 172) = -1;
        }

        v6 += 3;
      }

      while (v6 != *(this + 3));
      v6 = *(this + 2);
    }

    *(this + 13) = 0;
    *(this + 1) = v6;
  }
}

uint64_t std::__sift_up[abi:fe200100]<std::_ClassicAlgPolicy,std::less<long long> &,std::__wrap_iter<long long *>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = (a3 - 2) >> 1;
    v4 = (result + 8 * v3);
    v7 = *(a2 - 8);
    v5 = (a2 - 8);
    v6 = v7;
    v8 = *v4;
    if (*v4 < v7)
    {
      do
      {
        *v5 = v8;
        v5 = v4;
        if (!v3)
        {
          break;
        }

        v3 = (v3 - 1) >> 1;
        v4 = (result + 8 * v3);
        v8 = *v4;
      }

      while (*v4 < v6);
      *v5 = v6;
    }
  }

  return result;
}

BOOL ClipperLib::ClipperBase::PopScanbeam(ClipperLib::ClipperBase *this, uint64_t *a2)
{
  v2 = *(this + 16);
  v3 = v2;
  if (v2 != *(&v2 + 1))
  {
    v6 = *v2;
    *a2 = *v2;
    v7 = (*(&v2 + 1) - v2) >> 3;
    if (v7 >= 2)
    {
      v8 = 0;
      v9 = v2;
      do
      {
        v10 = &v9[v8 + 1];
        v11 = (2 * v8) | 1;
        v12 = 2 * v8 + 2;
        if (v12 < v7)
        {
          v13 = *v10 < v10[1];
          v10 += v13;
          if (v13)
          {
            v11 = v12;
          }
        }

        *v9 = *v10;
        v9 = v10;
        v8 = v11;
      }

      while (v11 <= ((v7 - 2) >> 1));
      v14 = (*(&v2 + 1) - 8);
      if (v10 == (*(&v2 + 1) - 8))
      {
        *v10 = v6;
      }

      else
      {
        *v10 = *v14;
        *v14 = v6;
        std::__sift_up[abi:fe200100]<std::_ClassicAlgPolicy,std::less<long long> &,std::__wrap_iter<long long *>>(v2, (v10 + 1), (v10 - v2 + 8) >> 3);
        v2 = *(this + 16);
      }
    }

    v16 = *(&v2 + 1);
    v15 = v2;
    if (v2 == *(&v2 + 1))
    {
LABEL_24:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v17 = v16 - 1;
        *(this + 33) = v16 - 1;
        if (v15 == v16 - 1)
        {
          break;
        }

        v18 = *a2;
        if (*a2 != *v15)
        {
          break;
        }

        v19 = v17 - v15;
        if (v19 >= 2)
        {
          v20 = 0;
          v21 = v15;
          do
          {
            v22 = &v21[v20 + 1];
            v23 = (2 * v20) | 1;
            v24 = 2 * v20 + 2;
            if (v24 < v19)
            {
              v13 = *v22 < v22[1];
              v22 += v13;
              if (v13)
              {
                v23 = v24;
              }
            }

            *v21 = *v22;
            v21 = v22;
            v20 = v23;
          }

          while (v23 <= ((v19 - 2) >> 1));
          v25 = v16 - 2;
          if (v22 == v25)
          {
            *v22 = v18;
          }

          else
          {
            *v22 = *v25;
            *v25 = v18;
            std::__sift_up[abi:fe200100]<std::_ClassicAlgPolicy,std::less<long long> &,std::__wrap_iter<long long *>>(v15, (v22 + 1), v22 + 1 - v15);
            v15 = *(this + 32);
            v17 = *(this + 33);
          }
        }

        v16 = v17;
        if (v15 == v17)
        {
          goto LABEL_24;
        }
      }
    }
  }

  return v3 != *(&v3 + 1);
}

void ClipperLib::Clipper::InsertLocalMinimaIntoAEL(ClipperLib::Clipper *this, uint64_t a2)
{
  v2 = this + 40;
  v3 = this + *(*this - 24);
  v6 = *(v3 + 1);
  v4 = v3 + 8;
  v5 = v6;
  if (v6 != v4[2])
  {
    do
    {
      if (*v5 != a2)
      {
        return;
      }

      *v4 = v5 + 3;
      v9 = v5[1];
      v10 = v5[2];
      if (v9)
      {
        ClipperLib::Clipper::InsertEdgeIntoAEL(this, v5[1], 0);
        if (!v10)
        {
          ClipperLib::Clipper::SetWindingCount(this, v9);
          if (ClipperLib::Clipper::IsContributing(this, v9))
          {
            ClipperLib::Clipper::AddOutPt(this, v9, v9);
          }

          ClipperLib::ClipperBase::InsertScanbeam((this + *(*this - 24)), *(v9 + 104));
          goto LABEL_62;
        }

        ClipperLib::Clipper::InsertEdgeIntoAEL(this, v10, v9);
        ClipperLib::Clipper::SetWindingCount(this, v9);
        *(v10 + 164) = *(v9 + 164);
        if (ClipperLib::Clipper::IsContributing(this, v9))
        {
          v11 = ClipperLib::Clipper::AddLocalMinPoly(this, v9, v10, v9);
        }

        else
        {
          v11 = 0;
        }

        ClipperLib::ClipperBase::InsertScanbeam((this + *(*this - 24)), *(v9 + 104));
      }

      else
      {
        ClipperLib::Clipper::InsertEdgeIntoAEL(this, v5[2], 0);
        ClipperLib::Clipper::SetWindingCount(this, v10);
        v11 = 0;
        if (ClipperLib::Clipper::IsContributing(this, v10))
        {
          v11 = ClipperLib::Clipper::AddOutPt(this, v10, v10);
        }

        if (!v10)
        {
          goto LABEL_62;
        }
      }

      v12 = v10;
      if (*(v10 + 144) != -1.0e40)
      {
        goto LABEL_20;
      }

      v13 = *(this + 14);
      *(v10 + 224) = 0;
      if (v13)
      {
        *(v13 + 224) = v10;
      }

      *(this + 14) = v10;
      *(v10 + 216) = v13;
      v12 = *(v10 + 192);
      if (v12)
      {
LABEL_20:
        ClipperLib::ClipperBase::InsertScanbeam((this + *(*this - 24)), *(v12 + 104));
      }

      if (v9)
      {
        if (v11)
        {
          if (*(v10 + 144) == -1.0e40)
          {
            v15 = *(this + 4);
            v14 = *(this + 5);
            if (v14 != v15)
            {
              if (*(v10 + 160))
              {
                v16 = 0;
                v17 = 0;
                do
                {
                  v18 = *(v15 + v16);
                  v19 = *(v18 + 8);
                  v20 = *(v15 + v16 + 16);
                  v21 = *v10;
                  v22 = *(v10 + 96);
                  if (v19 >= v20)
                  {
                    v23 = *(v15 + v16 + 16);
                  }

                  else
                  {
                    v23 = *(v18 + 8);
                  }

                  if (v19 <= v20)
                  {
                    v19 = *(v15 + v16 + 16);
                  }

                  if (v21 >= v22)
                  {
                    v24 = *(v10 + 96);
                  }

                  else
                  {
                    v24 = *v10;
                  }

                  if (v21 <= v22)
                  {
                    v21 = *(v10 + 96);
                  }

                  if (v23 < v21 && v24 < v19)
                  {
                    v26 = *(v15 + v16 + 16);
                    v27 = *(v15 + v16 + 48);
                    v38 = *(v15 + v16 + 32);
                    v39 = v27;
                    v37 = v26;
                    ClipperLib::Clipper::AddJoin(this, v18, v11, &v37);
                    v15 = *(this + 4);
                    v14 = *(this + 5);
                  }

                  ++v17;
                  v16 += 64;
                }

                while (v17 < (v14 - v15) >> 6);
              }
            }
          }
        }

        if ((*(v9 + 172) & 0x80000000) == 0)
        {
          v28 = *(v9 + 208);
          if (v28)
          {
            if (*(v28 + 48) == *v9 && (*(v28 + 172) & 0x80000000) == 0 && ClipperLib::SlopesEqual(*v28, *(v28 + 8), *(v28 + 96), *(v28 + 104), *(v9 + 48), *(v9 + 56), *(v9 + 96), *(v9 + 104), v2[*(*this - 24)]) && *(v9 + 160) && *(v28 + 160))
            {
              v29 = ClipperLib::Clipper::AddOutPt(this, v28, v9);
              v30 = *(v9 + 112);
              v37 = *(v9 + 96);
              v38 = v30;
              v39 = *(v9 + 128);
              ClipperLib::Clipper::AddJoin(this, v11, v29, &v37);
            }
          }
        }

        v31 = *(v9 + 200);
        if (v31 != v10)
        {
          if ((*(v10 + 172) & 0x80000000) == 0)
          {
            v32 = *(v10 + 208);
            if ((*(v32 + 172) & 0x80000000) == 0 && ClipperLib::SlopesEqual(*(v32 + 48), *(v32 + 56), *(v32 + 96), *(v32 + 104), *(v10 + 48), *(v10 + 56), *(v10 + 96), *(v10 + 104), v2[*(*this - 24)]) && *(v10 + 160) && *(v32 + 160))
            {
              v33 = ClipperLib::Clipper::AddOutPt(this, v32, v10);
              v34 = *(v10 + 112);
              v37 = *(v10 + 96);
              v38 = v34;
              v39 = *(v10 + 128);
              ClipperLib::Clipper::AddJoin(this, v11, v33, &v37);
              v31 = *(v9 + 200);
            }
          }

          if (v31)
          {
            while (v31 != v10)
            {
              ClipperLib::Clipper::IntersectEdges(this, v10, v31, (v9 + 48));
              v31 = *(v31 + 200);
            }
          }
        }
      }

LABEL_62:
      v35 = this + *(*this - 24);
      v36 = *(v35 + 1);
      v4 = v35 + 8;
      v5 = v36;
    }

    while (v36 != v4[2]);
  }
}

uint64_t *ClipperLib::Clipper::InsertEdgeIntoAEL(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (!*(result + *(*result - 24) + 104))
  {
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
LABEL_43:
    v16 = (result + *(v3 - 24) + 104);
    goto LABEL_44;
  }

  if (!a3)
  {
    a3 = *(result + *(*result - 24) + 104);
    v18 = *(a2 + 48);
    v19 = *(a3 + 48);
    v20 = v18 < v19;
    if (v18 == v19)
    {
      v21 = *(a2 + 104);
      v22 = *(a3 + 104);
      if (v21 <= v22)
      {
        if (v21 == v22)
        {
          v25 = *(a2 + 96);
        }

        else
        {
          v26 = *(a2 + 144) * (v22 - *(a2 + 8));
          v27 = 0.5;
          if (v26 < 0.0)
          {
            v27 = -0.5;
          }

          v25 = *a2 + (v26 + v27);
        }

        if (*(a3 + 96) <= v25)
        {
          goto LABEL_3;
        }

LABEL_42:
        *(a2 + 208) = 0;
        *(a2 + 200) = *(result + *(v3 - 24) + 104);
        *(*(result + *(v3 - 24) + 104) + 208) = a2;
        goto LABEL_43;
      }

      v23 = *(a3 + 144) * (v21 - *(a3 + 8));
      v24 = 0.5;
      if (v23 < 0.0)
      {
        v24 = -0.5;
      }

      v20 = *(a2 + 96) < *a3 + (v23 + v24);
    }

    if (!v20)
    {
      goto LABEL_3;
    }

    goto LABEL_42;
  }

LABEL_3:
  v4 = *(a3 + 200);
  if (v4)
  {
    v5 = *(a2 + 48);
    v6 = a3;
    while (1)
    {
      a3 = v6;
      v6 = v4;
      v7 = *(v4 + 48);
      v8 = v5 < v7;
      if (v5 == v7)
      {
        v9 = *(a2 + 104);
        v10 = *(v6 + 104);
        if (v9 <= v10)
        {
          if (v9 == v10)
          {
            v13 = *(a2 + 96);
          }

          else
          {
            v14 = *(a2 + 144) * (v10 - *(a2 + 8));
            if (v14 >= 0.0)
            {
              v15 = 0.5;
            }

            else
            {
              v15 = -0.5;
            }

            v13 = *a2 + (v14 + v15);
          }

          if (*(v6 + 96) > v13)
          {
            goto LABEL_24;
          }

          goto LABEL_21;
        }

        v11 = *(v6 + 144) * (v9 - *(v6 + 8));
        if (v11 >= 0.0)
        {
          v12 = 0.5;
        }

        else
        {
          v12 = -0.5;
        }

        v8 = *(a2 + 96) < *v6 + (v11 + v12);
      }

      if (v8)
      {
        goto LABEL_24;
      }

LABEL_21:
      v4 = *(v6 + 200);
      if (!v4)
      {
        a3 = v6;
        break;
      }
    }
  }

  v6 = 0;
LABEL_24:
  *(a2 + 200) = v6;
  v16 = (a3 + 200);
  v17 = *(a3 + 200);
  if (v17)
  {
    *(v17 + 208) = a2;
  }

  *(a2 + 208) = a3;
LABEL_44:
  *v16 = a2;
  return result;
}

uint64_t ClipperLib::Clipper::SetWindingCount(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 208);
  v3 = *(a2 + 152);
  if (v2)
  {
    while (1)
    {
      if (*(v2 + 152) == v3)
      {
        v4 = *(v2 + 160);
        if (v4)
        {
          break;
        }
      }

      v2 = *(v2 + 208);
      if (!v2)
      {
        goto LABEL_5;
      }
    }

    v9 = *(a2 + 160);
    if (v9)
    {
      v10 = 124;
      if (!v3)
      {
        v10 = 128;
      }

      if (!*(result + v10))
      {
        goto LABEL_40;
      }

      v11 = *(v2 + 164);
      if (((v11 * v4) & 0x80000000) == 0)
      {
        if (((v9 * v4) & 0x80000000) == 0)
        {
          v12 = *(a2 + 160);
        }

        else
        {
          v12 = 0;
        }

        v9 = v11 + v12;
        goto LABEL_40;
      }

LABEL_27:
      if (v11 >= 0)
      {
        v14 = v11;
      }

      else
      {
        v14 = -v11;
      }

      if (v9 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = *(a2 + 160);
      }

      if (((v9 * v4) & 0x80000000) == 0)
      {
        v16 = *(a2 + 160);
      }

      else
      {
        v16 = 0;
      }

      v17 = v11 + v16;
      if (v14 >= 2)
      {
        v9 = v17;
      }

      else
      {
        v9 = v15;
      }

      goto LABEL_40;
    }

    if (*(result + 80) == 1)
    {
      v13 = 124;
      if (!v3)
      {
        v13 = 128;
      }

      if (!*(result + v13))
      {
        v21 = *(v2 + 208);
        if (v21)
        {
          v22 = 1;
          do
          {
            if (*(v21 + 152) == v3)
            {
              v22 ^= *(v21 + 160) != 0;
            }

            v21 = *(v21 + 208);
          }

          while (v21);
          v9 = (v22 & 1) == 0;
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_40;
      }

      v11 = *(v2 + 164);
      if (v11 * v4 < 0)
      {
        goto LABEL_27;
      }

      v9 = ((v11 >> 31) | 1) + v11;
    }

    else
    {
      v9 = 1;
    }

LABEL_40:
    v7 = *(v2 + 168);
    *(a2 + 164) = v9;
    *(a2 + 168) = v7;
    v8 = (v2 + 200);
    goto LABEL_41;
  }

LABEL_5:
  v5 = *(a2 + 160);
  if (!v5)
  {
    v6 = 124;
    if (!v3)
    {
      v6 = 128;
    }

    if (*(result + v6) == 3)
    {
      v5 = -1;
    }

    else
    {
      v5 = 1;
    }
  }

  v7 = 0;
  *(a2 + 164) = v5;
  *(a2 + 168) = 0;
  v8 = (result + *(*result - 24) + 104);
LABEL_41:
  v18 = *v8;
  v19 = v3 == 0;
  v20 = 128;
  if (v19)
  {
    v20 = 124;
  }

  if (*(result + v20))
  {
    if (v18 != a2)
    {
      do
      {
        v7 += *(v18 + 160);
        v18 = *(v18 + 200);
      }

      while (v18 != a2);
      *(a2 + 168) = v7;
    }
  }

  else
  {
    while (v18 != a2)
    {
      if (*(v18 + 160))
      {
        v7 = v7 == 0;
        *(a2 + 168) = v7;
      }

      v18 = *(v18 + 200);
    }
  }

  return result;
}

_DWORD *ClipperLib::ClipperBase::CreateOutRec(ClipperLib::ClipperBase *this)
{
  v2 = *(this + 22);
  v3 = *(this + 21);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 102 * ((v2 - v3) >> 3) - 1;
  }

  v5 = *(this + 24);
  v6 = *(this + 25) + v5;
  if (v4 == v6)
  {
    if (v5 < 0x66)
    {
      v7 = *(this + 23);
      v8 = *(this + 20);
      if (v2 - v3 < (v7 - v8))
      {
        operator new();
      }

      if (v7 == v8)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v8) >> 2;
      }

      std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v9);
    }

    *(this + 24) = v5 - 102;
    v31 = *v3;
    *(this + 21) = v3 + 8;
    std::__split_buffer<ClipperLib::OutRec *>::emplace_back<ClipperLib::OutRec *&>(this + 20, &v31);
    v3 = *(this + 21);
    v6 = *(this + 25) + *(this + 24);
  }

  v10 = *&v3[8 * (v6 / 0x66)] - 4080 * (v6 / 0x66) + 40 * v6;
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  v11 = *(this + 24);
  v12 = *(this + 25) + 1;
  *(this + 25) = v12;
  v13 = v11 + v12;
  v14 = *(this + 21);
  v15 = (v14 + 8 * (v13 / 0x66));
  v16 = *v15 - 4080 * (v13 / 0x66) + 40 * v13;
  if (*(this + 22) == v14)
  {
    v16 = 0;
  }

  if (v16 == *v15)
  {
    v16 = *(v15 - 1) + 4080;
  }

  v17 = (v16 - 40);
  *(v16 - 36) = 0;
  *(v16 - 32) = 0uLL;
  *(v16 - 16) = 0uLL;
  v19 = *(this + 11);
  v18 = *(this + 12);
  if (v19 >= v18)
  {
    v21 = *(this + 10);
    v22 = (v19 - v21) >> 3;
    if ((v22 + 1) >> 61)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v23 = v18 - v21;
    v24 = v23 >> 2;
    if (v23 >> 2 <= (v22 + 1))
    {
      v24 = v22 + 1;
    }

    if (v23 >= 0x7FFFFFFFFFFFFFF8)
    {
      v25 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v25 = v24;
    }

    if (v25)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v25);
    }

    *(8 * v22) = v17;
    v20 = 8 * v22 + 8;
    v26 = *(this + 10);
    v27 = *(this + 11) - v26;
    v28 = (8 * v22 - v27);
    memcpy(v28, v26, v27);
    v29 = *(this + 10);
    *(this + 10) = v28;
    *(this + 11) = v20;
    *(this + 12) = 0;
    if (v29)
    {
      operator delete(v29);
    }
  }

  else
  {
    *v19 = v17;
    v20 = (v19 + 1);
  }

  *(this + 11) = v20;
  *v17 = ((v20 - *(this + 10)) >> 3) - 1;
  return v17;
}

void sub_183F60448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<ClipperLib::OutPt>::emplace_back<>(void *a1)
{
  v2 = a1[2];
  v3 = a1[1];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 56 * ((v2 - v3) >> 3) - 1;
  }

  v5 = a1[4];
  v6 = a1[5] + v5;
  if (v4 == v6)
  {
    if (v5 < 0x38)
    {
      v7 = a1[3];
      v8 = v7 - *a1;
      if (v2 - v3 < v8)
      {
        operator new();
      }

      v9 = v8 >> 2;
      if (v7 == *a1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v10);
    }

    a1[4] = v5 - 56;
    v19 = *v3;
    a1[1] = v3 + 8;
    std::__split_buffer<ClipperLib::OutRec *>::emplace_back<ClipperLib::OutRec *&>(a1, &v19);
    v3 = a1[1];
    v6 = a1[5] + a1[4];
  }

  v11 = *&v3[8 * (v6 / 0x38)] - 4032 * (v6 / 0x38) + 72 * v6;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 24) = ClipperLib::PointInfoZero;
  *(v11 + 64) = 0;
  *(v11 + 40) = unk_1844DF1D8;
  v12 = a1[4];
  v13 = a1[5] + 1;
  a1[5] = v13;
  v14 = v12 + v13;
  v15 = a1[1];
  v16 = (v15 + 8 * (v14 / 0x38));
  v17 = *v16 - 4032 * (v14 / 0x38) + 72 * v14;
  if (a1[2] == v15)
  {
    v17 = 0;
  }

  if (v17 == *v16)
  {
    v17 = *(v16 - 1) + 4032;
  }

  return v17 - 72;
}

void sub_183F609B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

double ClipperLib::GetMaximaPairEx(void *a1)
{
  MaximaPair = ClipperLib::GetMaximaPair(a1);
  if (MaximaPair && *(MaximaPair + 43) != -2 && *(MaximaPair + 25) == *(MaximaPair + 26))
  {
    return MaximaPair[18];
  }

  return result;
}

void *ClipperLib::GetMaximaPair(void *a1)
{
  result = a1[22];
  v3 = a1[12];
  v4 = a1[13];
  v5 = result[12] == v3 && result[13] == v4;
  if (!v5 || result[24])
  {
    result = a1[23];
    v6 = result[12] == v3 && result[13] == v4;
    if (!v6 || result[24])
    {
      return 0;
    }
  }

  return result;
}

void *ClipperLib::Clipper::AddLocalMaxPoly(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  result = ClipperLib::Clipper::AddOutPt(a1, a2, a4);
  if (!*(a3 + 160))
  {
    result = ClipperLib::Clipper::AddOutPt(a1, a3, a4);
  }

  v9 = *(a2 + 172);
  v10 = *(a3 + 172);
  if (v9 == v10)
  {
    *(a2 + 172) = -1;
    *(a3 + 172) = -1;
  }

  else
  {
    if (v9 < v10)
    {
      v11 = a2;
      v12 = a3;
    }

    else
    {
      v11 = a3;
      v12 = a2;
    }

    return ClipperLib::Clipper::AppendPolygon(a1, v11, v12);
  }

  return result;
}

void *ClipperLib::Clipper::AppendPolygon(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 172);
  v4 = *(result + *(*result - 24) + 80);
  v5 = (*(result + *(*result - 24) + 88) - v4) >> 3;
  if (v5 <= v3 || (v7 = *(a3 + 172), v5 <= v7))
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = *(v4 + 8 * v3);
    v11 = *(v4 + 8 * v7);
    v12 = v10;
    do
    {
      v12 = *(v12 + 8);
    }

    while (v12 != v11 && v12 != 0);
    result = v11;
    if (v12 != v11)
    {
      v14 = v11;
      do
      {
        v14 = *(v14 + 8);
      }

      while (v14 != v10 && v14 != 0);
      result = v10;
      if (v14 != v10)
      {
        result = ClipperLib::GetLowermostRec(v10, v11);
      }
    }

    v16 = *(v10 + 24);
    v17 = *(v16 + 64);
    v18 = *(v11 + 24);
    v19 = *(v18 + 64);
    v20 = *(a2 + 156);
    v21 = *(a3 + 156);
    if (v20 == 1)
    {
      if (v21 == 1)
      {
        v22 = *(v11 + 24);
        do
        {
          v23 = *(v22 + 56);
          *(v22 + 56) = vextq_s8(v23, v23, 8uLL);
          v22 = v23.i64[0];
        }

        while (v23.i64[0] != v18);
        *(v18 + 56) = v16;
        *(v16 + 64) = v18;
        *(v17 + 56) = v19;
        *(v19 + 64) = v17;
        *(v10 + 24) = v19;
      }

      else
      {
        *(v19 + 56) = v16;
        *(v16 + 64) = v19;
        *(v18 + 64) = v17;
        *(v17 + 56) = v18;
        *(v10 + 24) = v18;
      }
    }

    else if (v21 == 2)
    {
      v24 = *(v11 + 24);
      do
      {
        v25 = *(v24 + 56);
        *(v24 + 56) = vextq_s8(v25, v25, 8uLL);
        v24 = v25.i64[0];
      }

      while (v25.i64[0] != v18);
      *(v17 + 56) = v19;
      *(v19 + 64) = v17;
      *(v18 + 56) = v16;
      *(v16 + 64) = v18;
    }

    else
    {
      *(v17 + 56) = v18;
      *(v18 + 64) = v17;
      *(v16 + 64) = v19;
      *(v19 + 56) = v16;
    }

    *(v10 + 32) = 0;
    if (result == v11)
    {
      v26 = *(v11 + 8);
      if (v26 != v10)
      {
        *(v10 + 8) = v26;
      }

      *(v10 + 4) = *(v11 + 4);
    }

    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 8) = v10;
    v27 = *(a2 + 172);
    v28 = *(a3 + 172);
    *(a2 + 172) = -1;
    *(a3 + 172) = -1;
    v29 = *(v9 + *(*v9 - 24) + 104);
    if (v29)
    {
      while (*(v29 + 172) != v28)
      {
        v29 = *(v29 + 200);
        if (!v29)
        {
          goto LABEL_38;
        }
      }

      *(v29 + 172) = v27;
      *(v29 + 156) = v20;
    }

LABEL_38:
    *v11 = *v10;
  }

  return result;
}

CFTypeRef CGFontNameTableCopyLocales(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  explicit = atomic_load_explicit((a1 + 40), memory_order_acquire);
  if (!explicit)
  {
    for (i = *(a1 + 24); i; i = *(i + 1))
    {
      locale = create_locale(a1, **i, *(*i + 4));
      while (1)
      {
        v6 = locale;
        if (!get_dictionary_for_locale(a1, locale))
        {
          break;
        }

        locale = CGCreateContainingLocaleForLocale(locale);
        if (v6)
        {
          CFRelease(v6);
        }
      }

      if (locale)
      {
        CFRelease(locale);
      }
    }

    os_unfair_lock_lock((a1 + 48));
    Count = CFDictionaryGetCount(*(a1 + 56));
    v8 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
    CFDictionaryGetKeysAndValues(*(a1 + 56), v8, 0);
    explicit = CFArrayCreate(0, v8, Count, MEMORY[0x1E695E9C0]);
    os_unfair_lock_unlock((a1 + 48));
    free(v8);
    if (explicit)
    {
      v9 = 0;
      atomic_compare_exchange_strong((a1 + 40), &v9, explicit);
      if (v9)
      {
        CFRelease(explicit);
        explicit = v9;
      }

      goto LABEL_3;
    }

    return 0;
  }

LABEL_3:

  return CFRetain(explicit);
}

CFTypeRef CGFontNameTableCopyNameForLocaleIdentifier(os_unfair_lock_s *a1, const __CFString *a2, unsigned int a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v5 = CFLocaleCreate(0, a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = copy_localized_value(a1, v5, a3);
  CFRelease(v6);
  return v7;
}

CGPathRef CGPathCreateCopyByNormalizing(CGPathRef path, BOOL evenOddFillRule)
{
  if (!path)
  {
    return 0;
  }

  v2 = evenOddFillRule;
  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v4 = CFGetTypeID(path);
    if (v4 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  clip<std::vector<std::vector<ClipperLib::IntPoint>>>(&v8, 1, path, v2, 0, v2, 1, v12, v11);
  v7[0] = v8;
  v7[1] = v9;
  v7[2] = v10;
  v5 = CGPathRandomAccess::new_cgpath_from_clipper(v12, v11, v7);
  *&v8 = v11;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:fe200100](&v8);
  *&v8 = v12;
  std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:fe200100](&v8);
  return v5;
}

void sub_183F60FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = (v17 - 80);
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:fe200100](&a17);
  a17 = (v17 - 56);
  std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:fe200100](&a17);
  _Unwind_Resume(a1);
}

void ___ZN18CGPathRandomAccess8add_pathEPK6CGPath17CGAffineTransformb_block_invoke(uint64_t a1, int *a2)
{
  v2 = *a2;
  if ((*a2 - 2) < 2)
  {
    v7 = *(*(a1 + 32) + 8);
    v9 = *(v7 + 40);
    v8 = *(v7 + 48);
    if (v9 != v8)
    {
      ++*(v8 - 16);
      v10 = *(*(a1 + 32) + 8);
      v12 = *(v10 + 40);
      v11 = *(v10 + 48);
      if (v12 != v11)
      {
        v13 = *(v11 - 8) + 3;
LABEL_12:
        *(v11 - 8) = v13;
        return;
      }
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v2 == 1)
  {
    v14 = *(*(a1 + 32) + 8);
    v16 = *(v14 + 40);
    v15 = *(v14 + 48);
    if (v16 != v15)
    {
      ++*(v15 - 16);
      v17 = *(*(a1 + 32) + 8);
      v18 = *(v17 + 40);
      v11 = *(v17 + 48);
      if (v18 != v11)
      {
        v13 = *(v11 - 8) + 1;
        goto LABEL_12;
      }
    }

    goto LABEL_26;
  }

  if (v2)
  {
    return;
  }

  v3 = *(*(a1 + 32) + 8);
  v5 = v3[6];
  v4 = v3[7];
  if (v5 >= v4)
  {
    v19 = v3[5];
    v20 = v5 - v19;
    v21 = (v5 - v19) >> 4;
    v22 = v21 + 1;
    if (!((v21 + 1) >> 60))
    {
      v23 = v4 - v19;
      if (v23 >> 3 > v22)
      {
        v22 = v23 >> 3;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF0)
      {
        v24 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        if (!(v24 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:fe200100]();
      }

      v25 = (v5 - v19) >> 4;
      v26 = (16 * v21);
      v27 = (16 * v21 - 16 * v25);
      *v26 = vdupq_n_s64(1uLL);
      v6 = v26 + 1;
      memcpy(v27, v19, v20);
      v3[5] = v27;
      v3[6] = v6;
      v3[7] = 0;
      if (v19)
      {
        operator delete(v19);
      }

      goto LABEL_24;
    }

LABEL_27:
    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }

  *v5 = vdupq_n_s64(1uLL);
  v6 = v5 + 1;
LABEL_24:
  v3[6] = v6;
}

void ___ZN18CGPathRandomAccess8add_pathEPK6CGPath17CGAffineTransformb_block_invoke_15(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        return;
      }

      v6 = *(*(*(a1 + 32) + 8) + 24);
      v7 = *v6;
      v8 = *(v6 + 8);
      v9 = &v8[-*v6];
      v10 = v9 >> 4;
      if ((v9 >> 4) >= 2)
      {
        if (v7 == v8)
        {
          goto LABEL_163;
        }

        if ((*(v8 - 8) & 1) == 0)
        {
          v11 = *(v6 + 24);
          v12 = *(v6 + 32);
          if ((v12 - v11) <= 0x10 || v11 == v12)
          {
            goto LABEL_163;
          }

          v163 = *(v12 - 32);
          v164 = *(v12 - 16);
          v13 = (v12 - 16);
          v14 = *(a2 + 8);
          v165 = *v14;
          v15 = *(a1 + 88);
          *&v161.a = *(a1 + 72);
          *&v161.c = v15;
          *&v161.tx = *(a1 + 104);
          if (points_are_nearly_collinear(v163, v164, v165, &v161))
          {
            *v13 = *v14;
            return;
          }
        }
      }

      v30 = *(v6 + 16);
      v31 = ((*(v6 + 32) - *(v6 + 24)) >> 4) - 1;
      if (v8 >= v30)
      {
        v50 = v10 + 1;
        if ((v10 + 1) >> 60)
        {
          goto LABEL_165;
        }

        v51 = v30 - v7;
        if (v51 >> 3 > v50)
        {
          v50 = v51 >> 3;
        }

        if (v51 >= 0x7FFFFFFFFFFFFFF0)
        {
          v52 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v52 = v50;
        }

        if (v52)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<CGPathRandomAccessElement>>(v52);
        }

        v146 = 16 * v10;
        *v146 = v31;
        *(v146 + 8) = 0;
        v32 = 16 * v10 + 16;
        memcpy(0, v7, v9);
        v147 = *v6;
        *v6 = 0;
        *(v6 + 8) = v32;
        *(v6 + 16) = 0;
        if (v147)
        {
          operator delete(v147);
        }
      }

      else
      {
        *v8 = v31;
        v8[8] = 0;
        v32 = (v8 + 16);
      }

      *(v6 + 8) = v32;
      v129 = *(*(*(a1 + 32) + 8) + 24);
      v148 = *(a2 + 8);
      v132 = v129[4];
      v149 = v129[5];
      if (v132 < v149)
      {
        v133 = *v148;
        goto LABEL_149;
      }

      v151 = v129[3];
      v152 = (v132 - v151) >> 4;
      v153 = v152 + 1;
      if ((v152 + 1) >> 60)
      {
        goto LABEL_164;
      }

      v154 = v149 - v151;
      if (v154 >> 3 > v153)
      {
        v153 = v154 >> 3;
      }

      if (v154 >= 0x7FFFFFFFFFFFFFF0)
      {
        v155 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v155 = v153;
      }

      if (v155)
      {
        std::__allocate_at_least[abi:fe200100]<std::allocator<CFRange>>(v155);
      }

      v139 = (16 * v152);
      v140 = *v148;
LABEL_159:
      *v139 = v140;
      v150 = v139 + 1;
      v156 = v129[3];
      v157 = v129[4] - v156;
      v158 = v139 - v157;
      memcpy(v139 - v157, v156, v157);
      v159 = v129[3];
      v129[3] = v158;
      v129[4] = v150;
      v129[5] = 0;
      if (v159)
      {
        operator delete(v159);
      }

      goto LABEL_161;
    }

    v26 = *(a1 + 56);
    v27 = v26[1];
    if (0x6DB6DB6DB6DB6DB7 * ((v27 - *v26) >> 3) > *(a1 + 64) && *(a1 + 120) == 1)
    {
      if (*v26 == v27)
      {
        goto LABEL_163;
      }

      CGPathRandomAccessSubpath::close_if_needed((v27 - 56));
      v27 = v26[1];
    }

    v28 = v26[2];
    if (v27 >= v28)
    {
      v45 = *v26;
      v46 = v27 - *v26;
      v47 = 0x6DB6DB6DB6DB6DB7 * (v46 >> 3) + 1;
      if (v47 > 0x492492492492492)
      {
        std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
      }

      v48 = 0x6DB6DB6DB6DB6DB7 * ((v28 - v45) >> 3);
      if (2 * v48 > v47)
      {
        v47 = 2 * v48;
      }

      if (v48 >= 0x249249249249249)
      {
        v49 = 0x492492492492492;
      }

      else
      {
        v49 = v47;
      }

      if (v49)
      {
        if (v49 <= 0x492492492492492)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:fe200100]();
      }

      v88 = 8 * (v46 >> 3);
      *(v88 + 48) = 0;
      *(v88 + 16) = 0u;
      *(v88 + 32) = 0u;
      *v88 = 0u;
      *(v88 + 48) = 1;
      v29 = v88 + 56;
      v160 = (v88 + 56);
      v89 = v88 - v46;
      if (v45 != v27)
      {
        v90 = v45;
        v91 = v89;
        do
        {
          *v91 = 0;
          *(v91 + 8) = 0;
          *(v91 + 16) = 0;
          *v91 = *v90;
          *(v91 + 16) = *(v90 + 16);
          *v90 = 0;
          *(v90 + 8) = 0;
          *(v90 + 16) = 0;
          *(v91 + 24) = 0;
          *(v91 + 32) = 0;
          *(v91 + 40) = 0;
          *(v91 + 24) = *(v90 + 24);
          *(v91 + 40) = *(v90 + 40);
          *(v90 + 24) = 0;
          *(v90 + 32) = 0;
          *(v90 + 40) = 0;
          *(v91 + 48) = *(v90 + 48);
          v90 += 56;
          v91 += 56;
        }

        while (v90 != v27);
        do
        {
          std::__destroy_at[abi:fe200100]<CGPathRandomAccessSubpath,0>(v45);
          v45 += 56;
        }

        while (v45 != v27);
      }

      v92 = *v26;
      *v26 = v89;
      *(v26 + 1) = v160;
      if (v92)
      {
        operator delete(v92);
      }
    }

    else
    {
      *(v27 + 48) = 0;
      *(v27 + 16) = 0u;
      *(v27 + 32) = 0u;
      *v27 = 0u;
      *(v27 + 48) = 1;
      v29 = v27 + 56;
    }

    v26[1] = v29;
    if (*v26 != v29)
    {
      *(*(*(a1 + 32) + 8) + 24) = v29 - 56;
      v93 = ~*(a1 + 64) + 0x6DB6DB6DB6DB6DB7 * ((v26[1] - *v26) >> 3);
      v94 = *(*(*(a1 + 40) + 8) + 40);
      if (v93 < (*(*(*(a1 + 40) + 8) + 48) - v94) >> 4)
      {
        v95 = (v94 + 16 * v93);
        v96 = *v95;
        v97 = v95[1];
        v98 = *(*(*(a1 + 32) + 8) + 24);
        if (*v95 <= (v98[2] - *v98) >> 4)
        {
          v99 = *(*(*(a1 + 32) + 8) + 24);
          if (v97 <= (*(v99 + 40) - *(v99 + 24)) >> 4)
          {
            *(*(*(a1 + 48) + 8) + 40) = **(a2 + 8);
            v100 = *(*(*(a1 + 32) + 8) + 24);
            v101 = *(*(a1 + 48) + 8);
            v103 = v100[4];
            v102 = v100[5];
            if (v103 >= v102)
            {
              v105 = v100[3];
              v106 = (v103 - v105) >> 4;
              v107 = v106 + 1;
              if ((v106 + 1) >> 60)
              {
                goto LABEL_164;
              }

              v108 = v102 - v105;
              if (v108 >> 3 > v107)
              {
                v107 = v108 >> 3;
              }

              if (v108 >= 0x7FFFFFFFFFFFFFF0)
              {
                v109 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v109 = v107;
              }

              if (v109)
              {
                std::__allocate_at_least[abi:fe200100]<std::allocator<CFRange>>(v109);
              }

              v141 = (16 * v106);
              *v141 = *(v101 + 40);
              v104 = 16 * v106 + 16;
              v142 = v100[3];
              v143 = v100[4] - v142;
              v144 = v141 - v143;
              memcpy(v141 - v143, v142, v143);
              v145 = v100[3];
              v100[3] = v144;
              v100[4] = v104;
              v100[5] = 0;
              if (v145)
              {
                operator delete(v145);
              }
            }

            else
            {
              *v103 = *(v101 + 40);
              v104 = (v103 + 1);
            }

            v100[4] = v104;
            return;
          }

          if (!(v97 >> 60))
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<CFRange>>(v97);
          }

LABEL_164:
          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }

        if (!(v96 >> 60))
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<CGPathRandomAccessElement>>(v96);
        }

        goto LABEL_165;
      }
    }

LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  if (v4 == 2)
  {
    v16 = *(*(*(a1 + 32) + 8) + 24);
    v17 = ((*(v16 + 32) - *(v16 + 24)) >> 4) - 1;
    v19 = *(v16 + 8);
    v18 = *(v16 + 16);
    if (v19 >= v18)
    {
      v33 = *v16;
      v34 = v19 - *v16;
      v35 = v34 >> 4;
      v36 = (v34 >> 4) + 1;
      if (v36 >> 60)
      {
        goto LABEL_165;
      }

      v37 = v18 - v33;
      if (v37 >> 3 > v36)
      {
        v36 = v37 >> 3;
      }

      if (v37 >= 0x7FFFFFFFFFFFFFF0)
      {
        v38 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v36;
      }

      if (v38)
      {
        std::__allocate_at_least[abi:fe200100]<std::allocator<CGPathRandomAccessElement>>(v38);
      }

      v53 = 16 * v35;
      *v53 = v17;
      *(v53 + 8) = 1;
      v20 = 16 * v35 + 16;
      v54 = (v53 - 16 * (v34 >> 4));
      memcpy(v54, v33, v34);
      v55 = *v16;
      *v16 = v54;
      *(v16 + 8) = v20;
      *(v16 + 16) = 0;
      if (v55)
      {
        operator delete(v55);
      }
    }

    else
    {
      *v19 = v17;
      *(v19 + 8) = 1;
      v20 = v19 + 16;
    }

    *(v16 + 8) = v20;
    v56 = *(*(*(a1 + 32) + 8) + 24);
    v57 = v56[3];
    v58 = v56[4];
    if (v57 != v58)
    {
      v59 = vmlaq_f64(v58[-1], vdupq_n_s64(0x3FE5555555555555uLL), vsubq_f64(**(a2 + 8), v58[-1]));
      v60 = v56[5];
      if (v58 >= v60)
      {
        v62 = v58 - v57;
        v63 = v58 - v57;
        v64 = v63 + 1;
        if ((v63 + 1) >> 60)
        {
          goto LABEL_164;
        }

        v65 = v60 - v57;
        if (v65 >> 3 > v64)
        {
          v64 = v65 >> 3;
        }

        if (v65 >= 0x7FFFFFFFFFFFFFF0)
        {
          v66 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v66 = v64;
        }

        if (v66)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<CFRange>>(v66);
        }

        v110 = v58 - v57;
        v111 = (16 * v63);
        v112 = (16 * v63 - 16 * v110);
        *v111 = v59;
        f64 = v111[1].f64;
        memcpy(v112, v57, v62);
        v113 = v56[3];
        v56[3] = v112;
        v56[4] = f64;
        v56[5] = 0;
        if (v113)
        {
          operator delete(v113);
        }
      }

      else
      {
        *v58 = v59;
        f64 = v58[1].f64;
      }

      v56[4] = f64;
      v114 = *(*(*(a1 + 32) + 8) + 24);
      v115 = vmlaq_f64(*(*(a2 + 8) + 16), vdupq_n_s64(0x3FE5555555555555uLL), vsubq_f64(**(a2 + 8), *(*(a2 + 8) + 16)));
      v117 = v114[4];
      v116 = v114[5];
      if (v117 >= v116)
      {
        v119 = v114[3];
        v120 = v117 - v119;
        v121 = (v117 - v119) >> 4;
        v122 = v121 + 1;
        if ((v121 + 1) >> 60)
        {
          goto LABEL_164;
        }

        v123 = v116 - v119;
        if (v123 >> 3 > v122)
        {
          v122 = v123 >> 3;
        }

        if (v123 >= 0x7FFFFFFFFFFFFFF0)
        {
          v124 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v124 = v122;
        }

        if (v124)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<CFRange>>(v124);
        }

        v125 = (v117 - v119) >> 4;
        v126 = (16 * v121);
        v127 = (16 * v121 - 16 * v125);
        *v126 = v115;
        v118 = v126[1].f64;
        memcpy(v127, v119, v120);
        v128 = v114[3];
        v114[3] = v127;
        v114[4] = v118;
        v114[5] = 0;
        if (v128)
        {
          operator delete(v128);
        }
      }

      else
      {
        *v117 = v115;
        v118 = v117 + 16;
      }

      v114[4] = v118;
      v129 = *(*(*(a1 + 32) + 8) + 24);
      v130 = *(a2 + 8);
      v132 = v129[4];
      v131 = v129[5];
      if (v132 < v131)
      {
        v133 = *(v130 + 16);
LABEL_149:
        *v132 = v133;
        v150 = v132 + 1;
LABEL_161:
        v129[4] = v150;
        return;
      }

      v134 = v129[3];
      v135 = (v132 - v134) >> 4;
      v136 = v135 + 1;
      if ((v135 + 1) >> 60)
      {
        goto LABEL_164;
      }

      v137 = v131 - v134;
      if (v137 >> 3 > v136)
      {
        v136 = v137 >> 3;
      }

      if (v137 >= 0x7FFFFFFFFFFFFFF0)
      {
        v138 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v138 = v136;
      }

      if (v138)
      {
        std::__allocate_at_least[abi:fe200100]<std::allocator<CFRange>>(v138);
      }

      v139 = (16 * v135);
      v140 = *(v130 + 16);
      goto LABEL_159;
    }

    goto LABEL_163;
  }

  if (v4 != 3)
  {
    if (v4 == 4)
    {
      *(*(*(*(a1 + 32) + 8) + 24) + 48) = 0;
      v5 = *(*(*(a1 + 32) + 8) + 24);

      CGPathRandomAccessSubpath::close_if_needed(v5);
    }

    return;
  }

  v21 = *(*(*(a1 + 32) + 8) + 24);
  v22 = ((*(v21 + 32) - *(v21 + 24)) >> 4) - 1;
  v24 = *(v21 + 8);
  v23 = *(v21 + 16);
  if (v24 < v23)
  {
    *v24 = v22;
    *(v24 + 8) = 1;
    v25 = v24 + 16;
    goto LABEL_77;
  }

  v39 = *v21;
  v40 = v24 - *v21;
  v41 = v40 >> 4;
  v42 = (v40 >> 4) + 1;
  if (v42 >> 60)
  {
LABEL_165:
    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }

  v43 = v23 - v39;
  if (v43 >> 3 > v42)
  {
    v42 = v43 >> 3;
  }

  if (v43 >= 0x7FFFFFFFFFFFFFF0)
  {
    v44 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v44 = v42;
  }

  if (v44)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<CGPathRandomAccessElement>>(v44);
  }

  v67 = 16 * v41;
  *v67 = v22;
  *(v67 + 8) = 1;
  v25 = 16 * v41 + 16;
  v68 = (v67 - 16 * (v40 >> 4));
  memcpy(v68, v39, v40);
  v69 = *v21;
  *v21 = v68;
  *(v21 + 8) = v25;
  *(v21 + 16) = 0;
  if (v69)
  {
    operator delete(v69);
  }

LABEL_77:
  *(v21 + 8) = v25;
  v70 = *(*(*(a1 + 32) + 8) + 24);
  v71 = *(a2 + 8);
  v73 = v70[4];
  v72 = v70[5];
  if (v72 - v73 >= 33)
  {
    v79 = *v71;
    v80 = v71[2];
    v73[1] = v71[1];
    v73[2] = v80;
    *v73 = v79;
    v70[4] = v73 + 3;
    return;
  }

  v74 = v70[3];
  v75 = (v73 - v74) >> 4;
  if ((v75 + 3) >> 60)
  {
    goto LABEL_164;
  }

  v76 = v72 - v74;
  v77 = v76 >> 3;
  if (v76 >> 3 <= (v75 + 3))
  {
    v77 = v75 + 3;
  }

  if (v76 >= 0x7FFFFFFFFFFFFFF0)
  {
    v78 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v78 = v77;
  }

  if (v78)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<CFRange>>(v78);
  }

  v81 = 0;
  v82 = 16 * v75;
  do
  {
    *(v82 + v81 * 16) = v71[v81];
    ++v81;
  }

  while (v81 != 3);
  memcpy((v82 + 48), v73, v70[4] - v73);
  v83 = v70[3];
  v84 = v82 + 48 + v70[4] - v73;
  v70[4] = v73;
  v85 = v73 - v83;
  v86 = (v82 - (v73 - v83));
  memcpy(v86, v83, v85);
  v87 = v70[3];
  v70[3] = v86;
  v70[4] = v84;
  v70[5] = 0;
  if (v87)
  {

    operator delete(v87);
  }
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<CGPathRandomAccessElement>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

BOOL points_are_nearly_collinear(CGPoint a1, CGPoint a2, CGPoint a3, CGAffineTransform *a4)
{
  b = a4->b;
  c = a4->c;
  d = a4->d;
  tx = a4->tx;
  ty = a4->ty;
  v9 = tx + a1.y * c + a4->a * a1.x;
  v10 = ty + a1.y * d + b * a1.x;
  v11 = tx + a2.y * c + a4->a * a2.x;
  return (v10 - (ty + a2.y * d + b * a2.x)) * (v11 - (tx + a3.y * c + a4->a * a3.x)) == ((ty + a2.y * d + b * a2.x) - (ty + a3.y * d + b * a3.x)) * (v9 - v11);
}

void CGPathRandomAccessSubpath::close_if_needed(CGPathRandomAccessSubpath *this)
{
  v1 = *this;
  v2 = *(this + 1);
  v3 = &v2[-*this];
  v4 = v3 >> 4;
  if ((v3 >> 4) >= 2)
  {
    if (v1 == v2)
    {
      goto LABEL_23;
    }

    v6 = *(this + 3);
    v7 = *(this + 4);
    v8 = ((v7 - v6) >> 4) - 1;
    if (*(v2 - 2) == v8)
    {
      return;
    }

    if (v6 == v7)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (*(v7 - 2) != *v6 || *(v7 - 1) != v6[1])
    {
      v10 = *(this + 2);
      if (v2 < v10)
      {
        *v2 = v8;
        v2[8] = 0;
        v11 = (v2 + 16);
LABEL_21:
        *(this + 1) = v11;
        return;
      }

      v12 = v4 + 1;
      if (!((v4 + 1) >> 60))
      {
        v13 = v10 - v1;
        if (v13 >> 3 > v12)
        {
          v12 = v13 >> 3;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF0)
        {
          v14 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<CGPathRandomAccessElement>>(v14);
        }

        v15 = 16 * v4;
        *v15 = v8;
        *(v15 + 8) = 0;
        v11 = 16 * v4 + 16;
        memcpy(0, v1, v3);
        v16 = *this;
        *this = 0;
        *(this + 1) = v11;
        *(this + 2) = 0;
        if (v16)
        {
          operator delete(v16);
        }

        goto LABEL_21;
      }

LABEL_24:
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }
  }
}

void CGPathRandomAccess::clipper_paths_for_subpath_range(CGPathRandomAccess *this, CFRange a2, uint64_t a3, float64x2_t *a4, char a5)
{
  location = a2.location;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (a3 >= 1)
  {
    length = a2.length;
    v108 = (a2.length + a3);
    while (0x6DB6DB6DB6DB6DB7 * ((location[1] - *location) >> 3) > length)
    {
      v6 = (*location + 56 * length);
      v113 = (v6[1] - *v6) >> 4;
      if (v113 >= 1)
      {
        v7 = 0;
        v8 = 0;
        v116 = a4[1];
        v117 = *a4;
        v122 = 0u;
        v115 = a4[2];
        v112 = *location + 56 * length;
        while (1)
        {
          if (!v8)
          {
            v9 = v6[3];
            if (v6[4] == v9)
            {
              goto LABEL_102;
            }

            v10 = vcvtq_s64_f64(vaddq_f64(v115, vmlaq_n_f64(vmulq_n_f64(v116, v9[1]), v117, *v9)));
            if (v122.i64[1] >= v7)
            {
              v12 = v122.i64[0];
              v13 = v122.i64[1] - v122.i64[0];
              v14 = 0xAAAAAAAAAAAAAAABLL * ((v122.i64[1] - v122.i64[0]) >> 4) + 1;
              if (v14 > 0x555555555555555)
              {
                std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
              }

              if (0x5555555555555556 * ((v7 - v122.i64[0]) >> 4) > v14)
              {
                v14 = 0x5555555555555556 * ((v7 - v122.i64[0]) >> 4);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v7 - v122.i64[0]) >> 4) >= 0x2AAAAAAAAAAAAAALL)
              {
                v15 = 0x555555555555555;
              }

              else
              {
                v15 = v14;
              }

              if (v15)
              {
                std::__allocate_at_least[abi:fe200100]<std::allocator<ClipperLib::IntPoint>>(v15);
              }

              v16 = 16 * ((v122.i64[1] - v122.i64[0]) >> 4);
              *v16 = v10;
              *(v16 + 16) = length;
              *(v16 + 24) = 0;
              v7 = 0;
              *(v16 + 32) = -1;
              *(v16 + 40) = 0xBFF0000000000000;
              v11 = v16 + 48;
              memcpy((v16 - v13), v122.i64[0], v13);
              v122.i64[0] = 16 * ((v122.i64[1] - v122.i64[0]) >> 4) - v13;
              if (v12)
              {
                operator delete(v12);
              }
            }

            else
            {
              *v122.i64[1] = v10;
              *(v122.i64[1] + 16) = length;
              v11 = v122.i64[1] + 48;
              *(v122.i64[1] + 32) = -1;
              *(v122.i64[1] + 40) = 0xBFF0000000000000;
            }

            v17.i64[0] = v122.i64[0];
            v17.i64[1] = v11;
            v122 = v17;
          }

          if (v8 >= (v6[1] - *v6) >> 4)
          {
            goto LABEL_102;
          }

          v18 = *v6 + 16 * v8;
          if (*(v18 + 8) == 1)
          {
            v19 = *v18;
            v20 = v6[3];
            if (v19 >= (v6[4] - v20) >> 4)
            {
              goto LABEL_102;
            }

            v21 = (v20 + 16 * v19);
            v22 = *v21;
            v23 = v21[1];
            v24 = vceqq_f64(v23, v23);
            v26 = v21[2];
            v25 = v21[3];
            v27 = vceqq_f64(v26, v26);
            v28 = vceqq_f64(v25, v25);
            v29 = vbslq_s8(v27, vbslq_s8(vornq_s8(vcgtq_f64(v25, v26), v28), v26, v25), v25);
            v30 = vbslq_s8(v27, vbslq_s8(vornq_s8(vcgtq_f64(v26, v25), v28), v26, v25), v25);
            v31 = vceqq_f64(v22, v22);
            v32 = vbslq_s8(v31, vbslq_s8(vornq_s8(vcgtq_f64(v23, *v21), v24), *v21, v23), v23);
            v33 = vbslq_s8(v31, vbslq_s8(vornq_s8(vcgtq_f64(*v21, v23), v24), *v21, v23), v23);
            v34 = vsubq_f64(vbslq_s8(vceqq_f64(v33, v33), vbslq_s8(vornq_s8(vcgtq_f64(v33, v30), vceqq_f64(v30, v30)), v33, v30), v30), vbslq_s8(vceqq_f64(v32, v32), vbslq_s8(vornq_s8(vcgtq_f64(v29, v32), vceqq_f64(v29, v29)), v32, v29), v29));
            if (v34.f64[0] <= v34.f64[1])
            {
              v35 = v34.f64[1];
            }

            else
            {
              v35 = v34.f64[0];
            }

            v36 = fmin(v35 * 0.002, 0.6);
            v37 = vsubq_f64(v23, v22);
            v38 = vsubq_f64(v26, v23);
            v39 = vsubq_f64(v25, v26);
            v40 = vsubq_f64(v38, v37);
            v41 = vextq_s8(v40, v40, 8uLL);
            v42 = vsubq_f64(v39, v38);
            v43 = vextq_s8(v42, v42, 8uLL);
            v44 = vzip1q_s64(v41, v43);
            v45 = vzip2q_s64(v41, v43);
            v46 = vmlaq_f64(vmulq_f64(v44, v44), v45, v45);
            if (v46.f64[0] <= v46.f64[1])
            {
              v46.f64[0] = v46.f64[1];
            }

            v47 = v46.f64[0] * 9.0;
            v48 = v36 * v36;
            v49 = v47 * 0.0625;
            if (v47 * 0.0625 <= v48)
            {
              v66 = v8;
            }

            else
            {
              v120 = vextq_s8(v22, v22, 8uLL);
              v50 = vaddq_f64(v37, v40);
              v51 = vsubq_f64(v43, v41);
              __asm
              {
                FMOV            V5.2D, #3.0
                FMOV            V6.2D, #6.0
              }

              v57 = vmulq_f64(v51, _Q6);
              v58 = vmlaq_f64(v51, _Q5, vextq_s8(v50, v50, 8uLL));
              v59 = vmulq_f64(vaddq_f64(v41, v51), _Q6);
              v60 = 1;
              do
              {
                __asm { FMOV            V0.2D, #0.125 }

                v57 = vmulq_f64(v57, _Q0);
                __asm
                {
                  FMOV            V0.2D, #0.25
                  FMOV            V1.2D, #0.5
                }

                v59 = vsubq_f64(vmulq_f64(v59, _Q0), v57);
                v58 = vsubq_f64(vmulq_f64(v58, _Q1), vmulq_f64(v59, _Q1));
                v64 = 2 * v60;
                v49 = v49 * 0.0625;
                if (v49 <= v48)
                {
                  break;
                }

                v65 = v60 > 0x8000;
                v60 *= 2;
              }

              while (!v65);
              v66 = v8;
              v67 = 1;
              v68 = v122;
              v114 = v57;
              do
              {
                v118 = v59;
                v119 = v58;
                v69 = 1.0 / v64 * v67 + v66;
                v120 = vaddq_f64(v120, v58);
                v70 = vcvtq_s64_f64(vaddq_f64(v115, vmlaq_laneq_f64(vmulq_n_f64(v116, v120.f64[0]), v117, v120, 1)));
                if (v68.i64[1] >= v7)
                {
                  v72 = v68.i64[0];
                  v73 = v68.i64[1] - v68.i64[0];
                  v74 = 0xAAAAAAAAAAAAAAABLL * ((v68.i64[1] - v68.i64[0]) >> 4);
                  v75 = v74 + 1;
                  if (v74 + 1 > 0x555555555555555)
                  {
                    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
                  }

                  if (0x5555555555555556 * ((v7 - v68.i64[0]) >> 4) > v75)
                  {
                    v75 = 0x5555555555555556 * ((v7 - v68.i64[0]) >> 4);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v7 - v68.i64[0]) >> 4) >= 0x2AAAAAAAAAAAAAALL)
                  {
                    v76 = 0x555555555555555;
                  }

                  else
                  {
                    v76 = v75;
                  }

                  if (v76)
                  {
                    std::__allocate_at_least[abi:fe200100]<std::allocator<ClipperLib::IntPoint>>(v76);
                  }

                  v77 = 16 * ((v68.i64[1] - v68.i64[0]) >> 4);
                  v7 = 0;
                  *v77 = v70;
                  *(v77 + 16) = length;
                  *(v77 + 24) = v69;
                  *(v77 + 32) = -1;
                  *(v77 + 40) = 0xBFF0000000000000;
                  v71 = v77 + 48;
                  memcpy((v77 + 48 * (v73 / -48)), v68.i64[0], v73);
                  v123 = 48 * v74 + 48 * (v73 / -48);
                  if (v72)
                  {
                    operator delete(v72);
                  }
                }

                else
                {
                  v123 = v68.i64[0];
                  *v68.i64[1] = v70;
                  *(v68.i64[1] + 16) = length;
                  *(v68.i64[1] + 24) = v69;
                  v71 = v68.i64[1] + 48;
                  *(v68.i64[1] + 32) = -1;
                  *(v68.i64[1] + 40) = 0xBFF0000000000000;
                }

                v68.i64[0] = v123;
                v68.i64[1] = v71;
                v58 = vaddq_f64(v119, v118);
                v59 = vaddq_f64(v114, v118);
                ++v67;
              }

              while (v64 != v67);
              v122 = v68;
              v25 = v21[3];
              v6 = v112;
            }

            v78 = v66 + 1.0;
            v79 = vcvtq_s64_f64(vaddq_f64(v115, vmlaq_n_f64(vmulq_laneq_f64(v116, v25, 1), v117, v25.f64[0])));
            v80 = v122.i64[1];
            if (v122.i64[1] >= v7)
            {
              v121 = v79;
              v81 = v122.i64[0];
              v82 = v122.i64[1] - v122.i64[0];
              v83 = 0xAAAAAAAAAAAAAAABLL * ((v122.i64[1] - v122.i64[0]) >> 4);
              v87 = v83 + 1;
              if (v83 + 1 > 0x555555555555555)
              {
                std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
              }

              if (0x5555555555555556 * ((v7 - v122.i64[0]) >> 4) > v87)
              {
                v87 = 0x5555555555555556 * ((v7 - v122.i64[0]) >> 4);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v7 - v122.i64[0]) >> 4) >= 0x2AAAAAAAAAAAAAALL)
              {
                v85 = 0x555555555555555;
              }

              else
              {
                v85 = v87;
              }

              if (v85)
              {
                std::__allocate_at_least[abi:fe200100]<std::allocator<ClipperLib::IntPoint>>(v85);
              }

LABEL_69:
              v88 = v85 + 48 * v83;
              *v88 = v121;
              *(v88 + 16) = length;
              *(v88 + 24) = v78;
              v7 = v85;
              *(v88 + 32) = -1;
              *(v88 + 40) = 0xBFF0000000000000;
              v86 = v88 + 48;
              v89 = v88 - v82;
              memcpy((v88 - v82), v81, v82);
              v122.i64[0] = v89;
              if (v81)
              {
                operator delete(v81);
              }

              goto LABEL_71;
            }
          }

          else
          {
            v78 = v8 + 1.0;
            v79 = vcvtq_s64_f64(vaddq_f64(v115, vmlaq_n_f64(vmulq_n_f64(v116, *(v6[3] + 16 * ((*v18 + 1) % ((v6[4] - v6[3]) >> 4)) + 8)), v117, *(v6[3] + 16 * ((*v18 + 1) % ((v6[4] - v6[3]) >> 4))))));
            v80 = v122.i64[1];
            if (v122.i64[1] >= v7)
            {
              v121 = v79;
              v81 = v122.i64[0];
              v82 = v122.i64[1] - v122.i64[0];
              v83 = 0xAAAAAAAAAAAAAAABLL * ((v122.i64[1] - v122.i64[0]) >> 4);
              v84 = v83 + 1;
              if (v83 + 1 > 0x555555555555555)
              {
                std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
              }

              if (0x5555555555555556 * ((v7 - v122.i64[0]) >> 4) > v84)
              {
                v84 = 0x5555555555555556 * ((v7 - v122.i64[0]) >> 4);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v7 - v122.i64[0]) >> 4) >= 0x2AAAAAAAAAAAAAALL)
              {
                v85 = 0x555555555555555;
              }

              else
              {
                v85 = v84;
              }

              if (v85)
              {
                std::__allocate_at_least[abi:fe200100]<std::allocator<ClipperLib::IntPoint>>(v85);
              }

              goto LABEL_69;
            }
          }

          *v80 = v79;
          *(v80 + 16) = length;
          *(v80 + 24) = v78;
          v86 = v80 + 48;
          *(v80 + 32) = -1;
          *(v80 + 40) = 0xBFF0000000000000;
LABEL_71:
          v90.i64[0] = v122.i64[0];
          v90.i64[1] = v86;
          v122 = v90;
          if (++v8 == v113)
          {
            goto LABEL_74;
          }
        }
      }

      v7 = 0;
      v122 = 0u;
LABEL_74:
      if ((a5 & 1) != 0 && 0xAAAAAAAAAAAAAAABLL * ((v122.i64[1] - v122.i64[0]) >> 4) >= 2)
      {
        if (v122.i64[0] == v122.i64[1])
        {
          break;
        }

        _ZF = *(v122.i64[1] - 40) == *(v122.i64[0] + 8) && *(v122.i64[1] - 48) == *v122.i64[0];
        v92.i64[0] = v122.i64[0];
        if (_ZF)
        {
          v93 = -1;
        }

        else
        {
          v93 = 0;
        }

        v92.i64[1] = v122.i64[1] - 48;
        v122 = vbslq_s8(vdupq_n_s64(v93), v92, v122);
      }

      v95 = *(this + 1);
      v94 = *(this + 2);
      if (v95 >= v94)
      {
        v98 = 0xAAAAAAAAAAAAAAABLL * ((v95->i64 - *this) >> 3);
        v99 = v98 + 1;
        if (v98 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }

        v100 = 0xAAAAAAAAAAAAAAABLL * ((v94 - *this) >> 3);
        if (2 * v100 > v99)
        {
          v99 = 2 * v100;
        }

        if (v100 >= 0x555555555555555)
        {
          v101 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v101 = v99;
        }

        v124[4] = this;
        if (v101)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<std::vector<ClipperLib::IntPoint>>>(v101);
        }

        v102 = 24 * v98;
        *v102 = v122;
        *(v102 + 16) = v7;
        v96 = 24 * v98 + 24;
        v97 = this;
        v103 = *(this + 1) - *this;
        v104 = (24 * v98 - v103);
        memcpy(v104, *this, v103);
        v105 = *this;
        *this = v104;
        *(this + 1) = v96;
        v106 = *(this + 2);
        *(this + 2) = 0;
        v124[2] = v105;
        v124[3] = v106;
        v124[0] = v105;
        v124[1] = v105;
        std::__split_buffer<std::vector<ClipperLib::IntPoint>>::~__split_buffer(v124);
      }

      else
      {
        *v95 = v122;
        v95[1].i64[0] = v7;
        v96 = &v95[1].i64[1];
        v97 = this;
      }

      *(v97 + 1) = v96;
      if (++length >= v108)
      {
        return;
      }
    }

LABEL_102:
    __break(1u);
  }
}

void sub_183F62860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void **a34)
{
  if (a31)
  {
    operator delete(a31);
  }

  a34 = a14;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:fe200100](&a34);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<ClipperLib::IntPoint>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::vector<ClipperLib::IntPoint>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t ClipperLib::RangeTest(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if ((*a3 & 1) == 0)
  {
    if (result <= 0x3FFFFFFF && result >= -1073741823 && (a2 - 0x40000000) >= 0xFFFFFFFF80000001)
    {
      return result;
    }

    *a3 = 1;
  }

  if (result > 0x3FFFFFFFFFFFFFFFLL || result < 0xC000000000000001 || (a2 - 0x4000000000000000) <= 0x8000000000000000)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    ClipperLib::clipperException::clipperException(exception, "Coordinate outside allowed range");
  }

  return result;
}

BOOL ClipperLib::SlopesEqual(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7)
  {
    ClipperLib::Int128Mul(v14, a2 - a4, a3 - a5);
    ClipperLib::Int128Mul(v13, a1 - a3, a4 - a6);
    return v14[1] == v13[1] && v14[0] == v13[0];
  }

  else
  {
    return (a3 - a5) * (a2 - a4) == (a4 - a6) * (a1 - a3);
  }
}

void std::vector<ClipperLib::TEdge *>::push_back[abi:fe200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fe200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
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

uint64_t ClipperLib::ClipperBase::ProcessBound(uint64_t a1, uint64_t *a2, int a3, __n128 a4)
{
  v52 = *MEMORY[0x1E69E9840];
  if (*(a2 + 43) != -2)
  {
    if (*(a2 + 18) != -1.0e40)
    {
      goto LABEL_30;
    }

    v13 = 22;
    if (a3)
    {
      v13 = 23;
    }

    v14 = a2[v13];
    v15 = *v14;
    v16 = *a2;
    if (v14[18] == -1.0e40)
    {
      if (*&v15 == *&v16 || *(v14 + 12) == *&v16)
      {
LABEL_30:
        v23 = a2;
        if (a3)
        {
          do
          {
            v24 = v23;
            v25 = v23[13];
            v23 = v23[22];
          }

          while (v25 == v23[1] && *(v23 + 43) != -2);
          if (*(v24 + 18) == -1.0e40 && *(v23 + 43) != -2)
          {
            v26 = v24;
            do
            {
              v26 = *(v26 + 23);
            }

            while (v26[18] == -1.0e40);
            if (*(v26 + 12) > v23[12])
            {
              v24 = v26;
            }
          }

          if (v24 != a2)
          {
            v27 = a2;
            do
            {
              v28 = v27;
              v27 = v27[22];
              v28[24] = v27;
              if (v28 != a2 && *(v28 + 18) == -1.0e40 && *v28 != *(v28[23] + 96))
              {
                v29 = v28[12];
                v28[12] = *v28;
                *v28 = v29;
                v31 = *(v28 + 7);
                v30 = *(v28 + 8);
                v32 = *(v28 + 2);
                *(v28 + 7) = *(v28 + 1);
                *(v28 + 8) = v32;
                *(v28 + 1) = v31;
                *(v28 + 2) = v30;
              }
            }

            while (v27 != v24);
            if (*(v27 + 18) == -1.0e40 && *v27 != *(v27[23] + 96))
            {
              v33 = v27[12];
              v27[12] = *v27;
              *v27 = v33;
              v35 = *(v27 + 7);
              v34 = *(v27 + 8);
              v36 = *(v27 + 2);
              *(v27 + 7) = *(v27 + 1);
              *(v27 + 8) = v36;
              *(v27 + 1) = v35;
              *(v27 + 2) = v34;
            }
          }

          v18 = v24 + 22;
        }

        else
        {
          do
          {
            v37 = v23;
            v38 = v23[13];
            v23 = v23[23];
          }

          while (v38 == v23[1] && *(v23 + 43) != -2);
          if (*(v37 + 18) == -1.0e40 && *(v23 + 43) != -2)
          {
            v39 = v37;
            do
            {
              v39 = *(v39 + 22);
            }

            while (v39[18] == -1.0e40);
            if (*(v39 + 12) >= v23[12])
            {
              v37 = v39;
            }
          }

          if (v37 != a2)
          {
            v40 = a2;
            do
            {
              v41 = v40;
              v40 = v40[23];
              v41[24] = v40;
              if (v41 != a2 && *(v41 + 18) == -1.0e40 && *v41 != *(v41[22] + 96))
              {
                v42 = v41[12];
                v41[12] = *v41;
                *v41 = v42;
                v44 = *(v41 + 7);
                v43 = *(v41 + 8);
                v45 = *(v41 + 2);
                *(v41 + 7) = *(v41 + 1);
                *(v41 + 8) = v45;
                *(v41 + 1) = v44;
                *(v41 + 2) = v43;
              }
            }

            while (v40 != v37);
            if (*(v40 + 18) == -1.0e40 && *v40 != *(v40[22] + 96))
            {
              v46 = v40[12];
              v40[12] = *v40;
              *v40 = v46;
              v48 = *(v40 + 7);
              v47 = *(v40 + 8);
              v49 = *(v40 + 2);
              *(v40 + 7) = *(v40 + 1);
              *(v40 + 8) = v49;
              *(v40 + 1) = v48;
              *(v40 + 2) = v47;
            }
          }

          v18 = v37 + 23;
        }

        return *v18;
      }
    }

    else if (*&v15 == *&v16)
    {
      goto LABEL_30;
    }

    v19 = a2[12];
    *(a2 + 12) = v16;
    *a2 = v19;
    v21 = *(a2 + 7);
    v20 = *(a2 + 8);
    v22 = *(a2 + 2);
    *(a2 + 7) = *(a2 + 1);
    *(a2 + 8) = v22;
    *(a2 + 1) = v21;
    *(a2 + 2) = v20;
    goto LABEL_30;
  }

  v5 = a2;
  if (a3)
  {
    do
    {
      v6 = v5;
      v7 = *(v5 + 13);
      v5 = *(v5 + 22);
    }

    while (v7 == *(v5 + 1));
    if (v6 != a2)
    {
      a4.n128_u64[0] = 0xC83D6329F1C35CA5;
      do
      {
        if (v6[18] != -1.0e40)
        {
          break;
        }

        v6 = *(v6 + 23);
      }

      while (v6 != a2);
    }
  }

  else
  {
    do
    {
      v6 = v5;
      v8 = *(v5 + 13);
      v5 = *(v5 + 23);
    }

    while (v8 == *(v5 + 1));
    if (v6 != a2)
    {
      a4.n128_u64[0] = 0xC83D6329F1C35CA5;
      do
      {
        if (v6[18] != -1.0e40)
        {
          break;
        }

        v6 = *(v6 + 22);
      }

      while (v6 != a2);
    }
  }

  if (v6 == a2)
  {
    v17 = v6 + 23;
    v18 = v6 + 22;
    if (!a3)
    {
      v18 = v17;
    }

    return *v18;
  }

  v9 = 23;
  if (a3)
  {
    v9 = 22;
  }

  v10 = a2[v9];
  v50 = *(v10 + 8);
  v51 = v10;
  *(v10 + 160) = 0;
  v11 = ClipperLib::ClipperBase::ProcessBound(a1, a4);
  std::vector<ClipperLib::LocalMinimum>::push_back[abi:fe200100](a1 + 16, &v50);
  return v11;
}

void std::vector<ClipperLib::LocalMinimum>::push_back[abi:fe200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) + 1;
    if (v9 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fe200100]();
    }

    v12 = 8 * (v8 >> 3);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    v6 = v12 + 24;
    v13 = v12 - v8;
    memcpy((v12 - v8), v7, v8);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
  }

  *(a1 + 8) = v6;
}

void std::vector<long long>::push_back[abi:fe200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fe200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
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

uint64_t ClipperLib::ClipperBase::InsertScanbeam(ClipperLib::ClipperBase *this, uint64_t a2)
{
  v6 = a2;
  std::vector<long long>::push_back[abi:fe200100](this + 256, &v6);
  v3 = *(this + 32);
  v4 = *(this + 33);

  return std::__sift_up[abi:fe200100]<std::_ClassicAlgPolicy,std::less<long long> &,std::__wrap_iter<long long *>>(v3, v4, (v4 - v3) >> 3);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,false>(uint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = a2 - 3;
  v11 = &a2[-5].n128_u64[1];
  for (i = a1; ; *(i - 16) = v143)
  {
LABEL_2:
    a1 = i;
    v13 = a2 - i;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - i) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        if (*i < v9->n128_u64[0])
        {
LABEL_116:
          v194 = *(i + 16);
          v165 = *i;
          v91 = *v9;
          *(i + 16) = a2[-1].n128_u64[1];
          *i = v91;
          result = v165;
          a2[-1].n128_u64[1] = v194;
LABEL_117:
          *v9 = result;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v67 = i + 24;
      v92 = *(i + 24);
      v21 = (i + 48);
      v20 = *(i + 48);
      if (*i >= v92)
      {
        if (v92 < v20)
        {
          v135 = *(i + 40);
          result = *v67;
          *v67 = *v21;
          *(i + 40) = *(i + 64);
          *v21 = result;
          *(i + 64) = v135;
          if (*i < *(i + 24))
          {
            v197 = *(i + 16);
            v170 = *i;
            *i = *v67;
            *(i + 16) = *(i + 40);
            result = v170;
            *v67 = v170;
            *(i + 40) = v197;
          }
        }
      }

      else
      {
        if (v92 >= v20)
        {
          goto LABEL_192;
        }

        v195 = *(i + 16);
        v166 = *i;
        *i = *v21;
        *(i + 16) = *(i + 64);
        result = v166;
        *v21 = v166;
        v93 = v195;
LABEL_194:
        v21[1].n128_u64[0] = v93;
      }

LABEL_195:
      if (v21->n128_u64[0] >= v9->n128_u64[0])
      {
        return result;
      }

      result = *v21;
      v139 = v21[1].n128_u64[0];
      v140 = a2[-1].n128_u64[1];
      *v21 = *v9;
      v21[1].n128_u64[0] = v140;
      a2[-1].n128_u64[1] = v139;
      *v9 = result;
      if (*v67 >= v21->n128_u64[0])
      {
        return result;
      }

      v141 = *(v67 + 16);
      result = *v67;
      *v67 = *v21;
      *(v67 + 16) = v21[1].n128_u64[0];
      *v21 = result;
      v21[1].n128_u64[0] = v141;
LABEL_198:
      if (*a1 < *(a1 + 24))
      {
        v199 = *(a1 + 16);
        v173 = *a1;
        *a1 = *v67;
        *(a1 + 16) = *(v67 + 16);
        result = v173;
        *v67 = v173;
        *(v67 + 16) = v199;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:fe200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,0>(i, (i + 24), (i + 48), i + 72, &a2[-2].n128_i64[1], result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v94 = (i + 24);
      v96 = i == a2 || v94 == a2;
      if (a4)
      {
        if (!v96)
        {
          v97 = 0;
          v98 = i;
          do
          {
            v99 = v94;
            v100 = v98[1].n128_i64[1];
            if (v98->n128_u64[0] < v100)
            {
              v167 = v98[2];
              v101 = v97;
              while (1)
              {
                v102 = i + v101;
                *(v102 + 24) = *(i + v101);
                *(v102 + 40) = *(i + v101 + 16);
                if (!v101)
                {
                  break;
                }

                v101 -= 24;
                if (*(v102 - 24) >= v100)
                {
                  v103 = i + v101 + 24;
                  goto LABEL_136;
                }
              }

              v103 = i;
LABEL_136:
              *v103 = v100;
              result = v167;
              *(v103 + 8) = v167;
            }

            v94 = v99 + 3;
            v97 += 24;
            v98 = v99;
          }

          while (v99 + 3 != a2);
        }

        return result;
      }

      if (v96)
      {
        return result;
      }

      v67 = 24;
      v21 = i;
      while (1)
      {
        v20 = *v94;
        if (v21->n128_u64[0] < v20)
        {
          break;
        }

LABEL_189:
        v21 = (v21 + 24);
        v67 += 24;
        v94 = (i + v67);
        if ((i + v67) == a2)
        {
          return result;
        }
      }

      v136 = 0;
      v171 = v21[2];
      while (1)
      {
        v137 = v21 + v136;
        *(v137 + 24) = *(v21 + v136);
        *(v137 + 5) = v21[1].n128_u64[v136 / 8];
        if (!(v67 + v136))
        {
          break;
        }

        v136 -= 24;
        if (*(v137 - 3) >= v20)
        {
          v138 = (v21 + v136);
          v138[1].n128_u64[1] = v20;
          result = v171;
          v138[2] = v171;
          goto LABEL_189;
        }
      }

LABEL_191:
      __break(1u);
LABEL_192:
      v198 = *(a1 + 16);
      v172 = *a1;
      *a1 = *v67;
      *(a1 + 16) = *(v67 + 16);
      result = v172;
      *v67 = v172;
      *(v67 + 16) = v198;
      if (*(a1 + 24) < v20)
      {
        v93 = *(v67 + 16);
        result = *v67;
        *v67 = *v21;
        *(v67 + 16) = v21[1].n128_u64[0];
        *v21 = result;
        goto LABEL_194;
      }

      goto LABEL_195;
    }

    if (!a3)
    {
      if (i != a2)
      {
        v104 = (v14 - 2) >> 1;
        v105 = v104;
        do
        {
          v106 = v105;
          if (v104 >= v105)
          {
            v107 = (2 * v105) | 1;
            v108 = (i + 24 * v107);
            if (2 * v106 + 2 >= v14)
            {
              v109 = *v108;
            }

            else
            {
              v109 = v108[3];
              if (v109 < *v108)
              {
                v108 += 3;
                v107 = 2 * v106 + 2;
              }

              else
              {
                v109 = *v108;
              }
            }

            v110 = (i + 24 * v106);
            v111 = *v110;
            if (*v110 >= v109)
            {
              v168 = *(v110 + 1);
              do
              {
                v112 = v110;
                v110 = v108;
                v113 = *v108;
                v112[2] = v108[2];
                *v112 = v113;
                if (v104 < v107)
                {
                  break;
                }

                v114 = (2 * v107) | 1;
                v108 = (i + 24 * v114);
                v107 = 2 * v107 + 2;
                if (v107 >= v14)
                {
                  v115 = *v108;
                  v107 = v114;
                }

                else
                {
                  v115 = v108[3];
                  if (v115 < *v108)
                  {
                    v108 += 3;
                  }

                  else
                  {
                    v115 = *v108;
                    v107 = v114;
                  }
                }
              }

              while (v111 >= v115);
              *v110 = v111;
              *(v110 + 1) = v168;
            }
          }

          v105 = v106 - 1;
        }

        while (v106);
        v116 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v117 = 0;
          v196 = *(i + 16);
          v169 = *i;
          v118 = i;
          do
          {
            v119 = v118 + 24 * v117;
            v120 = v119 + 24;
            v121 = (2 * v117) | 1;
            v117 = 2 * v117 + 2;
            if (v117 >= v116)
            {
              v117 = v121;
            }

            else
            {
              v123 = *(v119 + 48);
              v122 = v119 + 48;
              if (v123 >= *(v122 - 24))
              {
                v117 = v121;
              }

              else
              {
                v120 = v122;
              }
            }

            v124 = *v120;
            *(v118 + 16) = *(v120 + 16);
            *v118 = v124;
            v118 = v120;
          }

          while (v117 <= ((v116 - 2) >> 1));
          a2 = (a2 - 24);
          if (v120 == a2)
          {
            result = v169;
            *(v120 + 16) = v196;
            *v120 = v169;
          }

          else
          {
            v125 = *a2;
            *(v120 + 16) = a2[1].n128_u64[0];
            *v120 = v125;
            result = v169;
            a2[1].n128_u64[0] = v196;
            *a2 = v169;
            v126 = v120 - i + 24;
            if (v126 >= 25)
            {
              v127 = (-2 - 0x5555555555555555 * (v126 >> 3)) >> 1;
              v128 = i + 24 * v127;
              v129 = *v120;
              if (*v120 < *v128)
              {
                v144 = *(v120 + 8);
                do
                {
                  v130 = v120;
                  v120 = v128;
                  v131 = *v128;
                  *(v130 + 16) = *(v128 + 16);
                  *v130 = v131;
                  if (!v127)
                  {
                    break;
                  }

                  v127 = (v127 - 1) >> 1;
                  v128 = i + 24 * v127;
                }

                while (v129 < *v128);
                *v120 = v129;
                result = v144;
                *(v120 + 8) = v144;
              }
            }
          }
        }

        while (v116-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (i + 24 * (v14 >> 1));
    v17 = v9->n128_u64[0];
    if (v13 >= 0xC01)
    {
      v18 = *v16;
      if (*i >= *v16)
      {
        if (v18 < v17)
        {
          v176 = v16[2];
          v147 = *v16;
          v23 = *v9;
          v16[2] = a2[-1].n128_i64[1];
          *v16 = v23;
          a2[-1].n128_u64[1] = v176;
          *v9 = v147;
          if (*i < *v16)
          {
            v177 = *(i + 16);
            v148 = *i;
            v24 = *v16;
            *(i + 16) = v16[2];
            *i = v24;
            v16[2] = v177;
            *v16 = v148;
          }
        }
      }

      else
      {
        if (v18 < v17)
        {
          v174 = *(i + 16);
          v145 = *i;
          v19 = *v9;
          *(i + 16) = a2[-1].n128_u64[1];
          *i = v19;
          goto LABEL_26;
        }

        v180 = *(i + 16);
        v151 = *i;
        v27 = *v16;
        *(i + 16) = v16[2];
        *i = v27;
        v16[2] = v180;
        *v16 = v151;
        if (*v16 < v9->n128_u64[0])
        {
          v174 = v16[2];
          v145 = *v16;
          v28 = *v9;
          v16[2] = a2[-1].n128_i64[1];
          *v16 = v28;
LABEL_26:
          a2[-1].n128_u64[1] = v174;
          *v9 = v145;
        }
      }

      v29 = (i + 24);
      v30 = i + 24 * v15;
      v33 = *(v30 - 24);
      v31 = (v30 - 24);
      v32 = v33;
      v34 = v10->n128_u64[0];
      if (*(i + 24) >= v33)
      {
        if (v32 < v34)
        {
          v181 = v31[2];
          v152 = *v31;
          v38 = *v10;
          v31[2] = a2[-2].n128_i64[0];
          *v31 = v38;
          a2[-2].n128_u64[0] = v181;
          *v10 = v152;
          if (v29->n128_u64[0] < *v31)
          {
            v39 = *v29;
            v40 = *(i + 40);
            v41 = v31[2];
            *v29 = *v31;
            *(i + 40) = v41;
            v31[2] = v40;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v32 < v34)
        {
          v35 = *v29;
          v36 = *(i + 40);
          v37 = a2[-2].n128_u64[0];
          *v29 = *v10;
          *(i + 40) = v37;
          a2[-2].n128_u64[0] = v36;
          goto LABEL_38;
        }

        v44 = *v29;
        v45 = *(i + 40);
        v46 = v31[2];
        *v29 = *v31;
        *(i + 40) = v46;
        v31[2] = v45;
        *v31 = v44;
        if (*v31 < v10->n128_u64[0])
        {
          v183 = v31[2];
          v154 = *v31;
          v47 = *v10;
          v31[2] = a2[-2].n128_i64[0];
          *v31 = v47;
          v35 = v154;
          a2[-2].n128_u64[0] = v183;
LABEL_38:
          *v10 = v35;
        }
      }

      v48 = (i + 48);
      v49 = i + 24 * v15;
      v51 = *(v49 + 24);
      v20 = v49 + 24;
      v50 = v51;
      v52 = *v11;
      if (*(i + 48) >= v51)
      {
        if (v50 < v52)
        {
          v184 = *(v20 + 16);
          v155 = *v20;
          v56 = *v11;
          *(v20 + 16) = a2[-4].n128_u64[1];
          *v20 = v56;
          a2[-4].n128_u64[1] = v184;
          *v11 = v155;
          if (*v48 < *v20)
          {
            v57 = *v48;
            v58 = *(i + 64);
            v59 = *(v20 + 16);
            *v48 = *v20;
            *(i + 64) = v59;
            *(v20 + 16) = v58;
            *v20 = v57;
          }
        }
      }

      else
      {
        if (v50 < v52)
        {
          v53 = *v48;
          v54 = *(i + 64);
          v55 = a2[-4].n128_u64[1];
          *v48 = *v11;
          *(i + 64) = v55;
          a2[-4].n128_u64[1] = v54;
          goto LABEL_47;
        }

        v60 = *v48;
        v61 = *(i + 64);
        v62 = *(v20 + 16);
        *v48 = *v20;
        *(i + 64) = v62;
        *(v20 + 16) = v61;
        *v20 = v60;
        if (*v20 < *v11)
        {
          v185 = *(v20 + 16);
          v156 = *v20;
          v63 = *v11;
          *(v20 + 16) = a2[-4].n128_u64[1];
          *v20 = v63;
          v53 = v156;
          a2[-4].n128_u64[1] = v185;
LABEL_47:
          *v11 = v53;
        }
      }

      v64 = *v16;
      v65 = *v20;
      if (*v31 >= *v16)
      {
        if (v64 < v65)
        {
          v187 = v16[2];
          v158 = *v16;
          *v16 = *v20;
          v16[2] = *(v20 + 16);
          *(v20 + 16) = v187;
          *v20 = v158;
          v20 = *v31;
          if (*v31 < *v16)
          {
            v188 = v31[2];
            v159 = *v31;
            *v31 = *v16;
            v20 = v16[2];
            v31[2] = v20;
            v16[2] = v188;
            *v16 = v159;
          }
        }
      }

      else
      {
        if (v64 < v65)
        {
          v186 = v31[2];
          v157 = *v31;
          *v31 = *v20;
          v31[2] = *(v20 + 16);
          goto LABEL_56;
        }

        v189 = v31[2];
        v160 = *v31;
        *v31 = *v16;
        v31[2] = v16[2];
        v16[2] = v189;
        *v16 = v160;
        if (*v16 < *v20)
        {
          v186 = v16[2];
          v157 = *v16;
          *v16 = *v20;
          v16[2] = *(v20 + 16);
LABEL_56:
          *(v20 + 16) = v186;
          *v20 = v157;
        }
      }

      v190 = *(i + 16);
      v161 = *i;
      v66 = *v16;
      *(i + 16) = v16[2];
      *i = v66;
      v21 = v190;
      v16[2] = v190;
      *v16 = v161;
      goto LABEL_58;
    }

    v20 = *v16;
    v21 = *i;
    if (*v16 >= *i)
    {
      if (v21 < v17)
      {
        v178 = *(i + 16);
        v149 = *i;
        v25 = *v9;
        *(i + 16) = a2[-1].n128_u64[1];
        *i = v25;
        a2[-1].n128_u64[1] = v178;
        *v9 = v149;
        v21 = *v16;
        v20 = *i;
        if (*v16 < *i)
        {
          v179 = v16[2];
          v150 = *v16;
          v26 = *i;
          v21 = *(i + 16);
          v16[2] = v21;
          *v16 = v26;
          *(i + 16) = v179;
          *i = v150;
        }
      }
    }

    else
    {
      if (v21 < v17)
      {
        v175 = v16[2];
        v146 = *v16;
        v22 = *v9;
        v21 = a2[-1].n128_u64[1];
        v16[2] = v21;
        *v16 = v22;
LABEL_35:
        a2[-1].n128_u64[1] = v175;
        *v9 = v146;
        goto LABEL_58;
      }

      v182 = v16[2];
      v153 = *v16;
      v42 = *i;
      v16[2] = *(i + 16);
      *v16 = v42;
      *(i + 16) = v182;
      *i = v153;
      v21 = v9->n128_u64[0];
      if (*i < v9->n128_u64[0])
      {
        v175 = *(i + 16);
        v146 = *i;
        v43 = *v9;
        *(i + 16) = a2[-1].n128_u64[1];
        *i = v43;
        goto LABEL_35;
      }
    }

LABEL_58:
    --a3;
    v67 = *i;
    if ((a4 & 1) != 0 || (v21 = *(i - 24), v67 < v21))
    {
      v142 = *(i + 8);
      v20 = i + 24;
      do
      {
        if (v20 == a2)
        {
          goto LABEL_191;
        }

        v21 = v20;
        v68 = v20 - 24;
        v69 = *v20;
        v20 += 24;
      }

      while (v67 < v69);
      v20 = a2;
      if (v68 != i)
      {
        while (v20 != i)
        {
          v70 = *(v20 - 24);
          v20 -= 24;
          if (v67 < v70)
          {
            goto LABEL_70;
          }
        }

        goto LABEL_191;
      }

      v20 = a2;
      do
      {
        if (v21 >= v20)
        {
          break;
        }

        v71 = *(v20 - 24);
        v20 -= 24;
      }

      while (v67 >= v71);
LABEL_70:
      i = v21;
      if (v21 < v20)
      {
        v72 = v20;
LABEL_72:
        v191 = *(i + 16);
        v162 = *i;
        v73 = *v72;
        *(i + 16) = *(v72 + 16);
        *i = v73;
        *(v72 + 16) = v191;
        *v72 = v162;
        v74 = (i + 24);
        while (v74 != a2)
        {
          i = v74;
          v75 = v74->n128_u64[0];
          v74 = (v74 + 24);
          if (v67 >= v75)
          {
            while (v72 != a1)
            {
              v76 = *(v72 - 24);
              v72 -= 24;
              if (v67 < v76)
              {
                if (i < v72)
                {
                  goto LABEL_72;
                }

                goto LABEL_78;
              }
            }

            goto LABEL_191;
          }
        }

        goto LABEL_191;
      }

LABEL_78:
      if (i - 24 != a1)
      {
        v77 = *(i - 24);
        *(a1 + 16) = *(i - 8);
        *a1 = v77;
      }

      *(i - 24) = v67;
      *(i - 16) = v142;
      if (v21 < v20)
      {
LABEL_83:
        std::__introsort<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,false>(a1, i - 24, a3, a4 & 1);
        a4 = 0;
        goto LABEL_2;
      }

      v78 = std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(a1, (i - 24), v142);
      if (!std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(i, a2, v79))
      {
        if (v78)
        {
          goto LABEL_2;
        }

        goto LABEL_83;
      }

      a2 = (i - 24);
      if (v78)
      {
        return result;
      }

      goto LABEL_1;
    }

    v143 = *(i + 8);
    if (v9->n128_u64[0] >= v67)
    {
      v81 = i + 24;
      do
      {
        i = v81;
        if (v81 >= a2)
        {
          break;
        }

        v81 += 24;
        v20 = *i;
      }

      while (*i >= v67);
    }

    else
    {
      v21 = (i + 24);
      do
      {
        if (v21 == a2)
        {
          goto LABEL_191;
        }

        v80 = v21->n128_u64[0];
        v21 = (v21 + 24);
        v20 = v80;
      }

      while (v80 >= v67);
      i = &v21[-2].n128_u64[1];
    }

    v21 = a2;
    if (i < a2)
    {
      v21 = a2;
      while (v21 != a1)
      {
        v82 = v21[-2].n128_i64[1];
        v21 = (v21 - 24);
        v20 = v82;
        if (v82 >= v67)
        {
          goto LABEL_102;
        }
      }

      goto LABEL_191;
    }

LABEL_102:
    if (i < v21)
    {
      v192 = *(i + 16);
      v163 = *i;
      v83 = *v21;
      *(i + 16) = v21[1].n128_u64[0];
      *i = v83;
      v21[1].n128_u64[0] = v192;
      *v21 = v163;
      v20 = i + 24;
      while (v20 != a2)
      {
        i = v20;
        v84 = *v20;
        v20 += 24;
        if (v84 < v67)
        {
          while (v21 != a1)
          {
            v85 = v21[-2].n128_i64[1];
            v21 = (v21 - 24);
            v20 = v85;
            if (v85 >= v67)
            {
              goto LABEL_102;
            }
          }

          goto LABEL_191;
        }
      }

      goto LABEL_191;
    }

    if (i - 24 != a1)
    {
      v86 = *(i - 24);
      *(a1 + 16) = *(i - 8);
      *a1 = v86;
    }

    a4 = 0;
    *(i - 24) = v67;
    result = v143;
  }

  v67 = i + 24;
  v87 = *(i + 24);
  v88 = v9->n128_u64[0];
  if (*i >= v87)
  {
    if (v87 >= v88)
    {
      return result;
    }

    result = *v67;
    v133 = *(i + 40);
    v134 = a2[-1].n128_u64[1];
    *v67 = *v9;
    *(i + 40) = v134;
    a2[-1].n128_u64[1] = v133;
    *v9 = result;
    goto LABEL_198;
  }

  if (v87 < v88)
  {
    goto LABEL_116;
  }

  v193 = *(i + 16);
  v164 = *i;
  *i = *v67;
  *(i + 16) = *(i + 40);
  result = v164;
  *v67 = v164;
  *(i + 40) = v193;
  if (*(i + 24) < v9->n128_u64[0])
  {
    result = *v67;
    v89 = *(i + 40);
    v90 = a2[-1].n128_u64[1];
    *v67 = *v9;
    *(i + 40) = v90;
    a2[-1].n128_u64[1] = v89;
    goto LABEL_117;
  }

  return result;
}

uint64_t ClipperLib::Clipper::IsContributing(uint64_t a1, _DWORD *a2)
{
  v2 = a2[38];
  v3 = 124;
  if (v2)
  {
    v4 = 124;
  }

  else
  {
    v4 = 128;
  }

  if (v2)
  {
    v3 = 128;
  }

  v5 = *(a1 + v3);
  v6 = *(a1 + v4);
  switch(v6)
  {
    case 2:
LABEL_10:
      v7 = a2[41];
      goto LABEL_13;
    case 1:
      v7 = a2[41];
      if (v7 < 0)
      {
        v7 = -v7;
      }

LABEL_13:
      if (v7 == 1)
      {
        goto LABEL_14;
      }

      return 0;
    case 0:
      if (a2[40])
      {
        goto LABEL_14;
      }

      goto LABEL_10;
  }

  if (a2[41] != -1)
  {
    return 0;
  }

LABEL_14:
  v8 = *(a1 + 80);
  result = 1;
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        return result;
      }

LABEL_24:
      v10 = v5 == 2;
      if (v5 < 2)
      {
        return a2[42] == 0;
      }

      goto LABEL_34;
    }

    v10 = v5 == 2;
    if (v5 < 2)
    {
      return a2[42] != 0;
    }

LABEL_30:
    if (v10)
    {
      return a2[42] > 0;
    }

    v11 = a2[42];
    return v11 >> 31;
  }

  if (v8 == 2)
  {
    v10 = v5 == 2;
    if (!v2)
    {
      if (v5 < 2)
      {
        return a2[42] == 0;
      }

LABEL_34:
      if (v10)
      {
        return a2[42] < 1;
      }

      v11 = ~a2[42];
      return v11 >> 31;
    }

    if (v5 < 2)
    {
      return a2[42] != 0;
    }

    goto LABEL_30;
  }

  if (v8 == 3 && !a2[40])
  {
    goto LABEL_24;
  }

  return result;
}

void ClipperLib::Clipper::ProcessHorizontals(ClipperLib::Clipper *this)
{
  v1 = (this + 112);
  v2 = *(this + 14);
  if (!v2)
  {
    return;
  }

  v87 = this + 40;
  v88 = this + 112;
  do
  {
    v4 = *(v2 + 27);
    v5 = *(v2 + 28);
    if (*(v2 + 216) == 0)
    {
      *v1 = 0;
    }

    else
    {
      v6 = (v5 + 216);
      if (!v5)
      {
        v6 = v1;
      }

      *v6 = v4;
      if (v4)
      {
        *(v4 + 224) = v5;
      }
    }

    *(v2 + 27) = 0;
    *(v2 + 28) = 0;
    v98 = v2;
    v7 = *v2;
    v8 = *(v2 + 12);
    v9 = *(v2 + 40);
    v10 = *v2 < v8;
    if (*v2 >= v8)
    {
      v11 = *(v2 + 12);
    }

    else
    {
      v11 = *v2;
    }

    if (*v2 <= v8)
    {
      v12 = *(v2 + 12);
    }

    else
    {
      v12 = *v2;
    }

    v90 = v12;
    v91 = v11;
    v13 = v2;
    while (1)
    {
      v94 = v13;
      v13 = *(v13 + 24);
      if (!v13)
      {
        break;
      }

      if (*(v13 + 18) != -1.0e40)
      {
        MaximaPair = 0;
        goto LABEL_20;
      }
    }

    MaximaPair = ClipperLib::GetMaximaPair(v94);
LABEL_20:
    v15 = *(this + 11);
    v14 = *(this + 12);
    if (v14 == v15)
    {
      v16 = 0;
    }

    else
    {
      if (v7 < v8)
      {
        while (*v15 <= v7)
        {
          if (++v15 == v14)
          {
            v16 = 0;
            goto LABEL_34;
          }
        }

        v16 = 0;
        if (*v15 >= *(v94 + 12))
        {
          v15 = *(this + 12);
        }

LABEL_34:
        v10 = 1;
        goto LABEL_36;
      }

      do
      {
        v16 = v14;
        if (v14 == v15)
        {
          v15 = 0;
          v10 = 0;
          goto LABEL_36;
        }

        --v14;
        v17 = *(v16 - 1);
      }

      while (v17 > v7);
      v10 = 0;
      if (v17 <= *(v94 + 12))
      {
        v16 = *(this + 11);
      }
    }

    v15 = 0;
LABEL_36:
    v18 = 0;
    while (1)
    {
      v19 = 208;
      if (v10)
      {
        v19 = 200;
      }

      v93 = v19;
      v20 = *(v2 + v19);
      if (v20)
      {
        break;
      }

LABEL_99:
      v50 = *(v2 + 24);
      if (!v50 || *(v50 + 144) != -1.0e40)
      {
        v64 = *(v2 + 43);
        if (v64 < 0)
        {
          v1 = v88;
          if (v50)
          {
            goto LABEL_152;
          }
        }

        else
        {
          v1 = v88;
          if (!v18)
          {
            LastOutPt = ClipperLib::Clipper::GetLastOutPt(this, v2);
            for (i = *(this + 14); i; i = *(i + 216))
            {
              if ((*(i + 172) & 0x80000000) == 0)
              {
                v67 = *v2;
                v68 = *(v2 + 12);
                v69 = *i;
                v70 = *(i + 96);
                if (*v2 >= v68)
                {
                  v71 = *(v2 + 12);
                }

                else
                {
                  v71 = *v2;
                }

                if (*v2 <= v68)
                {
                  v67 = *(v2 + 12);
                }

                if (v69 >= v70)
                {
                  v72 = *(i + 96);
                }

                else
                {
                  v72 = *i;
                }

                if (v69 <= v70)
                {
                  v69 = *(i + 96);
                }

                if (v71 < v69 && v72 < v67)
                {
                  v74 = ClipperLib::Clipper::GetLastOutPt(this, i);
                  v75 = *(i + 112);
                  v95 = *(i + 96);
                  v96 = v75;
                  v97 = *(i + 128);
                  ClipperLib::Clipper::AddJoin(this, v74, LastOutPt, &v95);
                }
              }
            }

            v76 = v2[7];
            v95 = v2[6];
            v96 = v76;
            v97 = v2[8];
            ClipperLib::Clipper::AddGhostJoin(this, LastOutPt, &v95);
            v50 = *(v2 + 24);
            v64 = *(v2 + 43);
          }

          if (v50)
          {
LABEL_152:
            if (v64 < 0)
            {
              ClipperLib::ClipperBase::UpdateEdgeIntoAEL((this + *(*this - 24)), &v98);
              goto LABEL_127;
            }

            v77 = ClipperLib::Clipper::AddOutPt(this, v2, v2 + 6);
            ClipperLib::ClipperBase::UpdateEdgeIntoAEL((this + *(*this - 24)), &v98);
            v78 = v98;
            if (!*(v98 + 40))
            {
              goto LABEL_127;
            }

            v79 = *(v98 + 25);
            v80 = *(v98 + 26);
            if (v80 && *(v80 + 48) == *v98 && (v81 = *(v80 + 56), v81 == *(v98 + 1)) && *(v80 + 160) && (*(v80 + 172) & 0x80000000) == 0 && v81 > *(v80 + 104) && ClipperLib::SlopesEqual(v98, *(v98 + 26), v87[*(*this - 24)]))
            {
              v82 = this;
              v83 = v80;
            }

            else
            {
              if (!v79)
              {
                goto LABEL_127;
              }

              if (*(v79 + 48) != *v78)
              {
                goto LABEL_127;
              }

              v84 = *(v79 + 56);
              if (v84 != *(v78 + 1) || !*(v79 + 160) || (*(v79 + 172) & 0x80000000) != 0 || v84 <= *(v79 + 104) || !ClipperLib::SlopesEqual(v78, v79, v87[*(*this - 24)]))
              {
                goto LABEL_127;
              }

              v82 = this;
              v83 = v79;
            }

            v85 = ClipperLib::Clipper::AddOutPt(v82, v83, v78);
            v86 = v78[7];
            v95 = v78[6];
            v96 = v86;
            v97 = v78[8];
            ClipperLib::Clipper::AddJoin(this, v77, v85, &v95);
            goto LABEL_127;
          }
        }

        if ((v64 & 0x80000000) == 0)
        {
          ClipperLib::Clipper::AddOutPt(this, v2, v2 + 6);
        }

        v59 = this + *(*this - 24);
        v61 = *(v2 + 25);
        v62 = *(v2 + 26);
        v60 = v2 + 25;
        if (*(v2 + 200) != 0)
        {
          goto LABEL_120;
        }

        if (*(v59 + 13) == v2)
        {
          goto LABEL_123;
        }

        goto LABEL_127;
      }

      ClipperLib::ClipperBase::UpdateEdgeIntoAEL((this + *(*this - 24)), &v98);
      v2 = v98;
      if ((*(v98 + 43) & 0x80000000) == 0)
      {
        ClipperLib::Clipper::AddOutPt(this, v98, v98);
      }

      v51 = *v2;
      v52 = *(v2 + 12);
      v10 = *v2 < v52;
      if (*v2 >= v52)
      {
        v53 = *(v2 + 12);
      }

      else
      {
        v53 = *v2;
      }

      if (*v2 <= v52)
      {
        v51 = *(v2 + 12);
      }

      v90 = v51;
      v91 = v53;
    }

    v92 = v2;
    while (1)
    {
      v22 = *(this + 11);
      v21 = *(this + 12);
      if (v21 == v22)
      {
        goto LABEL_56;
      }

      if (v10)
      {
        if (v15 == v21)
        {
          goto LABEL_57;
        }

        do
        {
          if (*v15 >= *(v20 + 48))
          {
            break;
          }

          if ((*(v2 + 43) & 0x80000000) == 0 && v9)
          {
            v23 = *(v2 + 1);
            *&v95 = *v15;
            *(&v95 + 1) = v23;
            v96 = ClipperLib::PointInfoZero;
            v97 = unk_1844DF1D8;
            ClipperLib::Clipper::AddOutPt(this, v2, &v95);
            v21 = *(this + 12);
          }

          ++v15;
        }

        while (v15 != v21);
LABEL_56:
        if (v10)
        {
          goto LABEL_57;
        }

        goto LABEL_60;
      }

      if (v16 != v22)
      {
        while (1)
        {
          v24 = v16;
          v26 = *--v16;
          v25 = v26;
          if (v26 <= *(v20 + 48))
          {
            break;
          }

          if ((*(v2 + 43) & 0x80000000) == 0 && v9)
          {
            v27 = *(v2 + 1);
            *&v95 = v25;
            *(&v95 + 1) = v27;
            v96 = ClipperLib::PointInfoZero;
            v97 = unk_1844DF1D8;
            ClipperLib::Clipper::AddOutPt(this, v2, &v95);
            v22 = *(this + 11);
          }

          if (v16 == v22)
          {
            goto LABEL_56;
          }
        }

        v16 = v24;
        if (v10)
        {
LABEL_57:
          v28 = *(v20 + 48);
          if (v28 > v90)
          {
            goto LABEL_98;
          }

          goto LABEL_61;
        }
      }

LABEL_60:
      v28 = *(v20 + 48);
      if (v28 < v91)
      {
        goto LABEL_98;
      }

LABEL_61:
      v2 = v98;
      if (v28 == *(v98 + 12))
      {
        v29 = *(v98 + 24);
        if (v29)
        {
          if (*(v20 + 144) < *(v29 + 144))
          {
            goto LABEL_98;
          }
        }
      }

      if ((*(v98 + 43) & 0x80000000) == 0 && v9)
      {
        v30 = *(this + 17);
        if (v10)
        {
          if (v30)
          {
            v31 = (v20 + 96);
            v32 = v20 + 48;
            v33 = v98;
            v34 = v98 + 6;
            v35 = v20;
            goto LABEL_71;
          }
        }

        else if (v30)
        {
          v34 = (v20 + 96);
          v32 = v20 + 48;
          v33 = v20;
          v35 = v98;
          v31 = v98 + 6;
LABEL_71:
          v30(v33, v34, v35, v31, v32);
        }

        v2 = v98;
        v18 = ClipperLib::Clipper::AddOutPt(this, v98, (v20 + 48));
        for (j = *(this + 14); j; j = *(j + 216))
        {
          if ((*(j + 172) & 0x80000000) == 0)
          {
            v37 = *v2;
            v38 = *(v2 + 12);
            v39 = *j;
            v40 = *(j + 96);
            if (*v2 >= v38)
            {
              v41 = *(v2 + 12);
            }

            else
            {
              v41 = *v2;
            }

            if (*v2 <= v38)
            {
              v37 = *(v2 + 12);
            }

            if (v39 >= v40)
            {
              v42 = *(j + 96);
            }

            else
            {
              v42 = *j;
            }

            if (v39 <= v40)
            {
              v39 = *(j + 96);
            }

            if (v41 < v39 && v42 < v37)
            {
              v44 = ClipperLib::Clipper::GetLastOutPt(this, j);
              v45 = *(j + 112);
              v95 = *(j + 96);
              v96 = v45;
              v97 = *(j + 128);
              ClipperLib::Clipper::AddJoin(this, v44, v18, &v95);
            }
          }
        }

        v95 = *v2;
        v96 = v2[1];
        v97 = v2[2];
        ClipperLib::Clipper::AddGhostJoin(this, v18, &v95);
      }

      if (v92 == v94 && v20 == MaximaPair)
      {
        break;
      }

      v46 = *(v2 + 7);
      *&v95 = *(v20 + 48);
      *(&v95 + 1) = v46;
      v96 = ClipperLib::PointInfoZero;
      v97 = unk_1844DF1D8;
      if (v10)
      {
        v47 = v2;
        v48 = v20;
      }

      else
      {
        v47 = v20;
        v48 = v2;
      }

      ClipperLib::Clipper::IntersectEdges(this, v47, v48, &v95);
      v49 = *(v20 + v93);
      ClipperLib::ClipperBase::SwapPositionsInAEL(this + *(*this - 24), v2, v20);
      v20 = v49;
      if (!v49)
      {
LABEL_98:
        v2 = v98;
        goto LABEL_99;
      }
    }

    if ((*(v2 + 43) & 0x80000000) == 0)
    {
      ClipperLib::Clipper::AddLocalMaxPoly(this, v2, MaximaPair, v2 + 6);
    }

    v54 = *this;
    v55 = this + *(*this - 24);
    v56 = *(v2 + 25);
    v57 = *(v2 + 26);
    v1 = v88;
    if (*(v2 + 200) == 0)
    {
      if (*(v55 + 13) == v2)
      {
        goto LABEL_115;
      }
    }

    else
    {
      if (v57)
      {
        v58 = (v57 + 200);
        goto LABEL_116;
      }

LABEL_115:
      v58 = v55 + 104;
LABEL_116:
      *v58 = v56;
      if (v56)
      {
        *(v56 + 208) = v57;
      }

      *(v2 + 25) = 0;
      *(v2 + 26) = 0;
      v54 = *this;
    }

    v59 = this + *(v54 - 24);
    v61 = MaximaPair[25];
    v62 = MaximaPair[26];
    v60 = MaximaPair + 25;
    if (*(MaximaPair + 25) == 0)
    {
      if (*(v59 + 13) == MaximaPair)
      {
        goto LABEL_123;
      }
    }

    else
    {
LABEL_120:
      if (v62)
      {
        v63 = (v62 + 200);
        goto LABEL_124;
      }

LABEL_123:
      v63 = v59 + 104;
LABEL_124:
      *v63 = v61;
      if (v61)
      {
        *(v61 + 208) = v62;
      }

      *v60 = 0;
      v60[1] = 0;
    }

LABEL_127:
    v2 = *v1;
  }

  while (*v1);
}

uint64_t ClipperLib::GetLowermostRec(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  BottomPt = *(a1 + 32);
  if (!BottomPt)
  {
    BottomPt = ClipperLib::GetBottomPt(*(v3 + 24));
    *(v3 + 32) = BottomPt;
  }

  v5 = *(a2 + 32);
  if (!v5)
  {
    v5 = ClipperLib::GetBottomPt(*(a2 + 24));
    *(a2 + 32) = v5;
    BottomPt = *(v3 + 32);
  }

  v6 = BottomPt[2];
  v7 = v5[2];
  if (v6 <= v7)
  {
    if (v6 < v7)
    {
      return a2;
    }

    v8 = BottomPt[1];
    v9 = v5[1];
    if (v8 < v9)
    {
      return v3;
    }

    if (v8 > v9 || BottomPt[7] == BottomPt)
    {
      return a2;
    }

    else if (v5[7] != v5 && !ClipperLib::FirstIsBottomPt(BottomPt, v5))
    {
      return a2;
    }
  }

  return v3;
}

float interpolate_values_for_point(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7, float a8)
{
  v8 = vabds_f32(a7, a8);
  v9 = (a7 + 1);
  if (a8 != 0.0)
  {
    v9 = a8;
  }

  v10 = (a8 + 1);
  if (a7 == 0.0)
  {
    v9 = a8;
  }

  else
  {
    v10 = a7;
  }

  if (v8 > 1.0)
  {
    a8 = v9;
    a7 = v10;
  }

  v11 = ((a5 - a1) * (a3 - a1) + (a6 - a2) * (a4 - a2)) / ((a3 - a1) * (a3 - a1) + (a4 - a2) * (a4 - a2));
  return v11 * a8 + a7 * (1.0 - v11);
}

void ClipperLib::Clipper::AddGhostJoin(void *a1, uint64_t a2, __int128 *a3)
{
  v16 = *a3;
  v17 = a3[1];
  v18 = a3[2];
  v4 = a1[5];
  v5 = a1[6];
  if (v4 >= v5)
  {
    v7 = a1[4];
    v8 = v4 - v7;
    v9 = (v4 - v7) >> 6;
    v10 = v9 + 1;
    if ((v9 + 1) >> 58)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v11 = v5 - v7;
    if (v11 >> 5 > v10)
    {
      v10 = v11 >> 5;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFC0)
    {
      v12 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 58))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fe200100]();
    }

    v13 = v9;
    v14 = v9 << 6;
    *v14 = a2;
    *(v14 + 8) = 0;
    *(v14 + 16) = v16;
    *(v14 + 32) = v17;
    *(v14 + 48) = v18;
    v6 = (v9 << 6) + 64;
    v15 = (v14 - (v13 << 6));
    memcpy(v15, v7, v8);
    a1[4] = v15;
    a1[5] = v6;
    a1[6] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v4 = a2;
    *(v4 + 8) = 0;
    *(v4 + 16) = v16;
    *(v4 + 32) = v17;
    *(v4 + 48) = v18;
    v6 = v4 + 64;
  }

  a1[5] = v6;
}

double ClipperLib::Area(void *a1)
{
  result = 0.0;
  if (a1)
  {
    v2 = a1;
    do
    {
      result = result + (v2[1] + *(v2[8] + 8)) * (*(v2[8] + 16) - v2[2]);
      v2 = v2[7];
    }

    while (v2 != a1);
    return result * 0.5;
  }

  return result;
}

void std::vector<ClipperLib::IntPoint>::push_back[abi:fe200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<ClipperLib::IntPoint>>(v11);
    }

    v12 = 48 * v8;
    v13 = *a2;
    v14 = a2[2];
    *(v12 + 16) = a2[1];
    *(v12 + 32) = v14;
    *v12 = v13;
    v7 = 48 * v8 + 48;
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[2];
    v3[1] = a2[1];
    v3[2] = v6;
    *v3 = v5;
    v7 = (v3 + 3);
  }

  *(a1 + 8) = v7;
}

void *ClipperLib::ClipperBase::Clear(void *this)
{
  v1 = this;
  v2 = this[2];
  this[3] = v2;
  this[1] = v2;
  v3 = this[6];
  v4 = this[7];
  if (v4 != v3)
  {
    v5 = 0;
    do
    {
      this = *(v3 + 8 * v5);
      if (this)
      {
        this = MEMORY[0x1865EE5F0](this, 0x1020C80638A78CFLL);
        v3 = v1[6];
        v4 = v1[7];
      }

      ++v5;
    }

    while (v5 < (v4 - v3) >> 3);
  }

  v1[7] = v3;
  *(v1 + 40) = 0;
  *(v1 + 73) = 0;
  return this;
}

CFTypeRef CGPathRandomAccess::new_cgpath_from_clipper(void *a1, uint64_t **a2, _OWORD *a3)
{
  memset(&v17, 0, sizeof(v17));
  v6 = a3[1];
  *&v16.a = *a3;
  *&v16.c = v6;
  *&v16.tx = a3[2];
  CGAffineTransformInvert(&v17, &v16);
  cf = CGPathCreateMutable();
  v15 = cgpoint_null;
  v7 = *a2;
  v8 = a2[1];
  while (v7 != v8)
  {
    v9 = a3[1];
    *&v16.a = *a3;
    *&v16.c = v9;
    *&v16.tx = a3[2];
    v13[0] = *&v17.a;
    v13[1] = *&v17.c;
    v13[2] = *&v17.tx;
    CGPathRandomAccess::recreate_path_from_clipper(a1, v7, &v16, v13, &cf, 0);
    v7 += 3;
  }

  v10 = CGPathOutputFiltering::cg_path(&cf);
  v11 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

void sub_183F65130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void CGPathRandomAccess::recreate_path_from_clipper(void *a1, uint64_t *a2, __n128 *a3, float64x2_t *a4, CGPathOutputFiltering *a5, char a6)
{
  v11 = a1;
  v13 = *a2;
  v12 = a2[1];
  v14 = v12 - *a2;
  v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 4);
  if (v14 >= 1)
  {
    v16 = 0;
    v17 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 4);
    if (v17 <= 1)
    {
      v17 = 1;
    }

    v18 = (v13 + 24);
    do
    {
      v19 = 0;
      v20 = v18;
      v21 = 32;
      do
      {
        if (*(v20 - 1) != -1)
        {
          if ((v19 & 1) != 0 || *v20 == *v20)
          {
            goto LABEL_13;
          }

          v19 = 1;
        }

        v20 += 2;
        v21 -= 16;
      }

      while (v21);
      ++v16;
      v18 += 6;
    }

    while (v16 != v17);
  }

  v16 = 0;
LABEL_13:
  memset(v100 + 8, 0, 32);
  CGPathRandomAccess::state_at_point(v100, a1, v13, v12, v16);
  *v100 = v16;
  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  if (v16)
  {
    v22 = v16;
  }

  else
  {
    v22 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 4);
  }

  CGPathRandomAccess::state_at_point(&v97, v11, *a2, a2[1], v22 - 1);
  v92 = a6;
  if (*&v100[1] == -1)
  {
    goto LABEL_20;
  }

  if (v15 <= v16)
  {
    goto LABEL_92;
  }

  v23 = v13 + 48 * v16;
  if (*(v23 + 16) != -1 && *(v23 + 32) != -1)
  {
LABEL_20:
    if (v15 > v16)
    {
      v24 = vaddq_f64(a4[2], vmlaq_n_f64(vmulq_n_f64(a4[1], *(v13 + 48 * v16 + 8)), *a4, *(v13 + 48 * v16)));
      goto LABEL_39;
    }

LABEL_92:
    __break(1u);
    return;
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((v11[1] - *v11) >> 3)) <= *&v100[1])
  {
    goto LABEL_92;
  }

  v25 = *(&v100[1] + 1);
  v26 = (*v11 + 56 * *&v100[1]);
  v27 = *v26;
  v28 = (v26[1] - *v26) >> 4;
  if (*(&v100[1] + 1) >= v28)
  {
    v25 = *(&v100[1] + 1) - v28;
  }

  v29 = v25;
  v30 = v25 - v25;
  if (v30 == 0.0)
  {
    if (v28 <= v29)
    {
      goto LABEL_92;
    }

    v31 = *(v27 + 16 * v29);
    v33 = v26 + 3;
    v32 = v26[3];
    if (v31 >= (v33[1] - v32) >> 4)
    {
      goto LABEL_92;
    }

    v24 = *(v32 + 16 * v31);
  }

  else
  {
    if (v28 <= v29)
    {
      goto LABEL_92;
    }

    v34 = v27 + 16 * v29;
    if (*(v34 + 8))
    {
      v35 = *v34;
      v37 = v26 + 3;
      v36 = v26[3];
      if (v35 >= (v37[1] - v36) >> 4)
      {
        goto LABEL_92;
      }

      v38 = (v36 + 16 * v35);
      __asm { FMOV            V4.2D, #3.0 }

      v43 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_f64(v38[1], _Q4), v30), 1.0 - v30), 1.0 - v30), vmulq_n_f64(vmulq_n_f64(*v38, 1.0 - v30), 1.0 - v30), 1.0 - v30), vmulq_n_f64(vmulq_n_f64(vmulq_f64(v38[2], _Q4), v30), v30), 1.0 - v30);
      v44 = vmulq_n_f64(vmulq_n_f64(v38[3], v30), v30);
    }

    else
    {
      v45 = *v34;
      v47 = v26 + 3;
      v46 = v26[3];
      v48 = (v47[1] - v46) >> 4;
      if (v48 <= v45)
      {
        goto LABEL_92;
      }

      if (v45 + 1 == v48)
      {
        v49 = 0;
      }

      else
      {
        v49 = v45 + 1;
      }

      v43 = *(v46 + 16 * v45);
      v44 = vsubq_f64(*(v46 + 16 * v49), v43);
    }

    v24 = vmlaq_n_f64(v43, v44, v30);
  }

LABEL_39:
  *x = v24;
  v50 = v24.f64[1];
  CGPathOutputFiltering::commit_pending_line_point_if_needed(a5);
  CGPathMoveToPoint(*a5, 0, x[0], v50);
  if (v14 >= 1)
  {
    v51 = v15 + v16;
    v93 = v15;
    v94 = v11;
    do
    {
      ++v16;
      memset(&v96[8], 0, 32);
      CGPathRandomAccess::state_at_point(v96, v11, *a2, a2[1], v16);
      *v96 = *&v100[0];
      if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4) <= v16 % v15)
      {
        goto LABEL_92;
      }

      v53 = *a2 + 48 * (v16 % v15);
      if (v96[8] != BYTE8(v100[0]) || *&v96[16] == -1 || *&v96[16] != *&v100[1] || v16 == v51 || (v54 = *(v53 + 32), v54 != -1) && (*(v53 + 16) != v54 || *(v53 + 24) != *(v53 + 40)))
      {
        if (*v100 + 1.0 == v16 || *&v100[1] == -1)
        {
          if (v16 != v51)
          {
            v56 = *v53;
            v57 = *(v53 + 8);
            v58 = a4[2].f64[0] + a4[1].f64[0] * v57 + a4->f64[0] * v56;
            v59 = a4[2].f64[1] + a4[1].f64[1] * v57 + a4->f64[1] * v56;
            v60 = a3[1];
            *v122 = *a3;
            *&v122[16] = v60;
            *&v122[32] = a3[2];
            CGPathOutputFiltering::add_line_to_point(a5, v58, v59, v122);
          }
        }

        else
        {
          v61 = *x;
          if (v16 != v51)
          {
            v52 = vmlaq_n_f64(vmulq_n_f64(a4[1], *(v53 + 8)), *a4, *v53);
            v61 = vaddq_f64(a4[2], v52);
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((v11[1] - *v11) >> 3)) <= *&v100[1])
          {
            goto LABEL_92;
          }

          v52.n128_u64[0] = v99;
          v62 = (*v11 + 56 * *&v100[1]);
          v63 = a3[1];
          *&v101.a = *a3;
          *&v101.c = v63;
          v64 = a3[2];
          *&v101.tx = v64;
          if (BYTE8(v100[0]) == 1)
          {
            *v122 = MEMORY[0x1E69E9820];
            *&v122[8] = 0x40000000;
            v65 = a3[1];
            *&v122[40] = *a3;
            *&v122[16] = ___ZNK25CGPathRandomAccessSubpath20append_range_to_pathEddbb7CGPoint17CGAffineTransformR21CGPathOutputFiltering_block_invoke;
            *&v122[24] = &__block_descriptor_tmp_14060;
            *&v122[32] = a5;
            v123 = v65;
            v124 = a3[2];
            v66.n128_u64[1] = v124.n128_u64[1];
            v121[0] = MEMORY[0x1E69E9820];
            v121[1] = 0x40000000;
            v121[2] = ___ZNK25CGPathRandomAccessSubpath20append_range_to_pathEddbb7CGPoint17CGAffineTransformR21CGPathOutputFiltering_block_invoke_2;
            v121[3] = &__block_descriptor_tmp_2_14061;
            v121[4] = a5;
            v66.n128_u64[0] = *(&v100[1] + 1);
            CGPathRandomAccessSubpath::append_range_to_path(v62, v16 == v51, 0, v122, v121, v66, v52, v61.f64[0], v61.f64[1]);
          }

          else
          {
            v67 = a3;
            v68 = a4;
            v113 = 0;
            v114 = &v113;
            v115 = 0x4002000000;
            v116 = __Block_byref_object_copy__14062;
            v117 = __Block_byref_object_dispose__14063;
            v119 = 0;
            v120 = 0;
            v118 = 0;
            v105 = 0;
            v106 = &v105;
            v107 = 0x4002000000;
            v108 = __Block_byref_object_copy__3;
            v109 = __Block_byref_object_dispose__4;
            v111 = 0;
            v112 = 0;
            __p = 0;
            v104[0] = MEMORY[0x1E69E9820];
            v104[1] = 0x40000000;
            v104[2] = ___ZNK25CGPathRandomAccessSubpath20append_range_to_pathEddbb7CGPoint17CGAffineTransformR21CGPathOutputFiltering_block_invoke_5;
            v104[3] = &unk_1E6E31468;
            v104[4] = &v113;
            v104[5] = &v105;
            v103[0] = MEMORY[0x1E69E9820];
            v103[1] = 0x40000000;
            v103[2] = ___ZNK25CGPathRandomAccessSubpath20append_range_to_pathEddbb7CGPoint17CGAffineTransformR21CGPathOutputFiltering_block_invoke_2_7;
            v103[3] = &unk_1E6E31490;
            v103[4] = &v113;
            v103[5] = &v105;
            v64.n128_u64[0] = v99;
            v52.n128_u64[0] = *(&v100[1] + 1);
            CGPathRandomAccessSubpath::append_range_to_path(v62, v16 == v51, 1, v104, v103, v64, v52, v61.f64[0], v61.f64[1]);
            v69 = v114[6];
            v70 = v69 & 0x3F;
            if (v69 > 0x3F || (v69 & 0x3F) != 0)
            {
              v71 = (v114[5] + 8 * (v69 >> 6));
              v72 = ((v106[6] - v106[5]) >> 4) - 1;
              do
              {
                v73 = -8;
                if (v70)
                {
                  v73 = 0;
                }

                v71 = (v71 + v73);
                if (v70)
                {
                  --v70;
                }

                else
                {
                  v70 = 63;
                }

                if ((*v71 >> v70))
                {
                  v74 = v106[5];
                  v75 = (v106[6] - v74) >> 4;
                  if (v75 <= v72 - 1 || v75 <= v72 - 2 || v75 <= v72 - 3)
                  {
                    goto LABEL_92;
                  }

                  v76 = (v74 + 16 * (v72 - 1));
                  v77 = *v76;
                  v78 = v76[1];
                  v79 = (v74 + 16 * (v72 - 2));
                  v80 = *v79;
                  v81 = v79[1];
                  v82 = (v74 + 16 * (v72 - 3));
                  v83 = *v82;
                  v84 = v82[1];
                  CGPathOutputFiltering::commit_pending_line_point_if_needed(a5);
                  CGPathAddCurveToPoint(*a5, 0, v77, v78, v80, v81, v83, v84);
                  v85 = -4;
                }

                else
                {
                  v86 = v106[5];
                  if (v72 >= (v106[6] - v86) >> 4)
                  {
                    goto LABEL_92;
                  }

                  v87 = (v86 + 16 * v72);
                  v88 = *v87;
                  v89 = v87[1];
                  v102 = v101;
                  CGPathOutputFiltering::add_line_to_point(a5, v88, v89, &v102);
                  v85 = -1;
                }

                v72 += v85;
              }

              while (v71 != v114[5] || v70 != 0);
            }

            _Block_object_dispose(&v105, 8);
            if (__p)
            {
              v111 = __p;
              operator delete(__p);
            }

            _Block_object_dispose(&v113, 8);
            a4 = v68;
            a3 = v67;
            if (v118)
            {
              operator delete(v118);
            }

            v15 = v93;
            v11 = v94;
          }
        }

        *v96 = v16;
        *&v100[2] = *&v96[32];
        v100[0] = *v96;
        v100[1] = *&v96[16];
      }

      v97 = *v96;
      v98 = *&v96[16];
      v99 = *&v96[32];
    }

    while (v16 < v51);
  }

  if ((v92 & 1) == 0)
  {
    CGPathOutputFiltering::commit_pending_line_point_if_needed(a5);
    v91 = *a5;

    CGPathCloseSubpath(v91);
  }
}

void sub_183F65A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a66, 8);
  if (__p)
  {
    a72 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&STACK[0x208], 8);
  if (STACK[0x230])
  {
    operator delete(STACK[0x230]);
  }

  _Unwind_Resume(a1);
}

void ___ZNK25CGPathRandomAccessSubpath20append_range_to_pathEddbb7CGPoint17CGAffineTransformR21CGPathOutputFiltering_block_invoke(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  *&v5.a = *(a1 + 40);
  *&v5.c = v4;
  *&v5.tx = *(a1 + 72);
  CGPathOutputFiltering::add_line_to_point(v3, a2, a3, &v5);
}

void CGPathOutputFiltering::add_line_to_point(CGPathOutputFiltering *this, double a2, double a3, CGAffineTransform *a4)
{
  v8 = fabs(*(this + 2)) == INFINITY;
  if (fabs(*(this + 1)) != INFINITY || !v8)
  {
    CurrentPoint = CGPathGetCurrentPoint(*this);
    v13 = *(this + 8);
    v9 = *&a4->c;
    *&v11.a = *&a4->a;
    *&v11.c = v9;
    *&v11.tx = *&a4->tx;
    v10 = a2;
    *&v9 = a3;
    if (!points_are_nearly_collinear(CurrentPoint, v13, *(&v9 - 8), &v11))
    {
      CGPathOutputFiltering::commit_pending_line_point_if_needed(this);
    }
  }

  *(this + 1) = a2;
  *(this + 2) = a3;
}

CFTypeRef CGPathOutputFiltering::cg_path(CGPathOutputFiltering *this)
{
  CGPathOutputFiltering::commit_pending_line_point_if_needed(this);
  v2 = *this;
  if (v2)
  {
    CFRetain(v2);
  }

  return CFAutorelease(v2);
}

void *ClipperLib::Clipper::GetLastOutPt(void *result, uint64_t a2)
{
  v2 = *(a2 + 172);
  v3 = *(result + *(*result - 24) + 80);
  if (v2 >= (*(result + *(*result - 24) + 88) - v3) >> 3)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v3 + 8 * v2) + 24;
    if (*(a2 + 156) != 1)
    {
      v4 = *v4 + 64;
    }

    return *v4;
  }

  return result;
}

void *ClipperLib::Clipper::IntersectEdges(void *result, _DWORD *a2, _DWORD *a3, __int128 *a4)
{
  v7 = result;
  v8 = a2[43];
  v9 = a3[43];
  v10 = result[17];
  if (v10)
  {
    result = v10(a2, a2 + 24, a3, a3 + 24, a4);
  }

  v11 = a2[40];
  v12 = a3[40];
  if (!v11)
  {
    if (!v12)
    {
      return result;
    }

    if (a2[38] == a3[38])
    {
      if (*(v7 + 80) != 1 || v9 < 0)
      {
        return result;
      }
    }

    else
    {
      v27 = a3[41];
      if (v27 < 0)
      {
        v27 = -v27;
      }

      if (v27 != 1 || *(v7 + 80) == 1 && a3[42])
      {
        return result;
      }
    }

    result = ClipperLib::Clipper::AddOutPt(v7, a2, a4);
    if ((v8 & 0x80000000) == 0)
    {
      a2[43] = -1;
    }

    return result;
  }

  v13 = a2[38];
  v14 = a3[38];
  if (!v12)
  {
    if (v13 == v14)
    {
      if (*(v7 + 80) != 1 || v8 < 0)
      {
        return result;
      }
    }

    else
    {
      v28 = a2[41];
      if (v28 < 0)
      {
        v28 = -v28;
      }

      if (v28 != 1 || *(v7 + 80) == 1 && a2[42])
      {
        return result;
      }
    }

    result = ClipperLib::Clipper::AddOutPt(v7, a3, a4);
    if (v9 < 0)
    {
      return result;
    }

    v29 = -1;
    goto LABEL_95;
  }

  if (v13 == v14)
  {
    v15 = 124;
    if (!v13)
    {
      v15 = 128;
    }

    v16 = *(v7 + v15);
    v17 = a2[41];
    if (v16)
    {
      v18 = v17 + v12;
      if (!v18)
      {
        v18 = -v17;
      }

      a2[41] = v18;
      v19 = a3[41] - v11;
      if (v19)
      {
        a3[41] = v19;
      }

      else
      {
        a3[41] = -v11;
      }
    }

    else
    {
      a2[41] = a3[41];
      a3[41] = v17;
    }
  }

  else
  {
    if (v14)
    {
      v20 = 124;
    }

    else
    {
      v20 = 128;
    }

    v21 = a2[42];
    v22 = v21 + v12;
    if (!*(v7 + v20))
    {
      v22 = v21 == 0;
    }

    a2[42] = v22;
    if (v13)
    {
      v23 = 124;
    }

    else
    {
      v23 = 128;
    }

    v24 = *(v7 + v23);
    v25 = a3[42];
    if (v24)
    {
      v26 = v25 - v11;
    }

    else
    {
      v26 = v25 == 0;
    }

    a3[42] = v26;
  }

  if (v13)
  {
    v30 = 124;
  }

  else
  {
    v30 = 128;
  }

  if (v13)
  {
    v31 = 128;
  }

  else
  {
    v31 = 124;
  }

  v32 = *(v7 + v30);
  if (v14)
  {
    v33 = 124;
  }

  else
  {
    v33 = 128;
  }

  if (v14)
  {
    v34 = 128;
  }

  else
  {
    v34 = 124;
  }

  v35 = *(v7 + v33);
  v36 = a2[41];
  if (v36 >= 0)
  {
    v37 = v36;
  }

  else
  {
    v37 = -v36;
  }

  if (v32 == 2)
  {
    v37 = a2[41];
  }

  if (v32 == 3)
  {
    v38 = -v36;
  }

  else
  {
    v38 = v37;
  }

  v39 = a3[41];
  if (v35 == 3)
  {
    v41 = -v39;
  }

  else
  {
    if (v39 >= 0)
    {
      v40 = v39;
    }

    else
    {
      v40 = -v39;
    }

    if (v35 == 2)
    {
      v41 = a3[41];
    }

    else
    {
      v41 = v40;
    }
  }

  v42 = *(v7 + v31);
  v43 = *(v7 + v34);
  if ((v8 & 0x80000000) == 0 && (v9 & 0x80000000) == 0)
  {
    if (v38 <= 1 && v41 <= 1 && (v13 == v14 || *(v7 + 80) == 3))
    {
      ClipperLib::Clipper::AddOutPt(v7, a2, a4);
LABEL_93:
      v44 = v7;
      v45 = a3;
LABEL_94:
      result = ClipperLib::Clipper::AddOutPt(v44, v45, a4);
      v46 = a2[39];
      a2[39] = a3[39];
      a3[39] = v46;
      v29 = a2[43];
      a2[43] = a3[43];
LABEL_95:
      a3[43] = v29;
      return result;
    }

    return ClipperLib::Clipper::AddLocalMaxPoly(v7, a2, a3, a4);
  }

  if ((v8 & 0x80000000) == 0)
  {
    if (v41 > 1)
    {
      return result;
    }

    v44 = v7;
    v45 = a2;
    goto LABEL_94;
  }

  if ((v9 & 0x80000000) == 0)
  {
    if (v38 > 1)
    {
      return result;
    }

    goto LABEL_93;
  }

  if (v38 <= 1 && v41 <= 1)
  {
    v47 = a2[42];
    if (v47 >= 0)
    {
      v48 = v47;
    }

    else
    {
      v48 = -v47;
    }

    if (v42 == 2)
    {
      v48 = a2[42];
    }

    if (v42 == 3)
    {
      v49 = -v47;
    }

    else
    {
      v49 = v48;
    }

    v50 = a3[42];
    if (v43 == 3)
    {
      v50 = -v50;
    }

    else if (v43 != 2)
    {
      if (v50 >= 0)
      {
        v50 = v50;
      }

      else
      {
        v50 = -v50;
      }
    }

    if (v13 == v14)
    {
      if (v38 != 1 || v41 != 1)
      {
        v52 = a2[39];
        a2[39] = a3[39];
        a3[39] = v52;
        return result;
      }

      v51 = *(v7 + 80);
      if (v51 <= 1)
      {
        if (!v51)
        {
          if (v49 < 1 || v50 < 1)
          {
            return result;
          }

          goto LABEL_133;
        }

        if (v51 != 1)
        {
          return result;
        }

        goto LABEL_131;
      }

      if (v51 == 2)
      {
        if (v13 != 1 || v49 < 1 || v50 <= 0)
        {
          if (v13)
          {
            return result;
          }

LABEL_131:
          if (v49 > 0 || v50 > 0)
          {
            return result;
          }
        }
      }

      else if (v51 != 3)
      {
        return result;
      }
    }

LABEL_133:

    return ClipperLib::Clipper::AddLocalMinPoly(v7, a2, a3, a4);
  }

  return result;
}

uint64_t ClipperLib::ClipperBase::SwapPositionsInAEL(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 200);
  v3 = *(a2 + 208);
  if (v4 != v3)
  {
    v6 = *(a3 + 200);
    v5 = *(a3 + 208);
    if (v6 != v5)
    {
      if (v4 == a3)
      {
        if (v6)
        {
          *(v6 + 208) = a2;
          v3 = *(a2 + 208);
        }

        if (v3)
        {
          *(v3 + 200) = a3;
        }

        *(a3 + 200) = a2;
        *(a3 + 208) = v3;
        *(a2 + 200) = v6;
        *(a2 + 208) = a3;
        v3 = *(a3 + 208);
      }

      else
      {
        if (v6 == a2)
        {
          if (v4)
          {
            *(v4 + 208) = a3;
            v5 = *(a3 + 208);
          }

          if (v5)
          {
            *(v5 + 200) = a2;
          }

          *(a2 + 200) = a3;
          *(a2 + 208) = v5;
          v3 = a2;
          *(a3 + 200) = v4;
          *(a3 + 208) = a2;
        }

        else
        {
          *(a2 + 200) = v6;
          if (v6)
          {
            *(v6 + 208) = a2;
            v5 = *(a3 + 208);
          }

          *(a2 + 208) = v5;
          if (v5)
          {
            *(v5 + 200) = a2;
          }

          *(a3 + 200) = v4;
          if (v4)
          {
            *(v4 + 208) = a3;
          }

          *(a3 + 208) = v3;
          if (v3)
          {
            *(v3 + 200) = a3;
          }
        }

        if (!*(a2 + 208))
        {
          goto LABEL_26;
        }
      }

      a2 = a3;
      if (v3)
      {
        return result;
      }

LABEL_26:
      *(result + 104) = a2;
    }
  }

  return result;
}

uint64_t ClipperLib::Clipper::SwapPositionsInSEL(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 216);
  if (!v3 && !*(a2 + 224))
  {
    return result;
  }

  v4 = *(a3 + 216);
  if (!v4)
  {
    v6 = (a3 + 224);
    v7 = *(a3 + 224);
    if (!v7)
    {
      return result;
    }

    if (v3 != a3)
    {
      v5 = *(a2 + 224);
      *(a2 + 216) = 0;
      *(a2 + 224) = v7;
LABEL_11:
      *(v7 + 216) = a2;
      goto LABEL_12;
    }

LABEL_17:
    v8 = *(a2 + 224);
    if (v8)
    {
      *(v8 + 216) = a3;
    }

    *(a3 + 216) = a2;
    *(a3 + 224) = v8;
    *(a2 + 216) = v4;
    *(a2 + 224) = a3;
    goto LABEL_25;
  }

  if (v3 == a3)
  {
    *(v4 + 224) = a2;
    goto LABEL_17;
  }

  if (v4 == a2)
  {
    if (v3)
    {
      *(v3 + 224) = a3;
    }

    v9 = *(a3 + 224);
    if (v9)
    {
      *(v9 + 216) = a2;
    }

    *(a2 + 216) = a3;
    *(a2 + 224) = v9;
    *(a3 + 216) = v3;
    *(a3 + 224) = a2;
    goto LABEL_25;
  }

  v5 = *(a2 + 224);
  *(v4 + 224) = a2;
  v6 = (a3 + 224);
  v7 = *(a3 + 224);
  *(a2 + 216) = v4;
  *(a2 + 224) = v7;
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_12:
  *(a3 + 216) = v3;
  if (v3)
  {
    *(v3 + 224) = a3;
  }

  *v6 = v5;
  if (v5)
  {
    *(v5 + 216) = a3;
  }

LABEL_25:
  if (!*(a2 + 224) || (a2 = a3, !*(a3 + 224)))
  {
    *(result + 112) = a2;
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode const&,ClipperLib::IntersectNode const&),ClipperLib::IntersectNode*,false>(unint64_t a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, unint64_t a5, __n128 result)
{
LABEL_1:
  n128_u64 = a2[-4].n128_u64;
  v444 = a2 - 12;
  v445 = a2 - 8;
  for (i = a1; ; *(i - 48) = v274)
  {
LABEL_2:
    a1 = i;
    v13 = (a2 - i) >> 6;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        if ((*a3)(n128_u64, i))
        {
LABEL_117:
          v293 = *i;
          v294 = *(i + 16);
          v295 = *(i + 48);
          v453 = *(i + 32);
          v454 = v295;
          v451 = v293;
          v452 = v294;
          v296 = *n128_u64;
          v297 = *(n128_u64 + 16);
          v298 = *(n128_u64 + 48);
          *(i + 32) = *(n128_u64 + 32);
          *(i + 48) = v298;
          *i = v296;
          *(i + 16) = v297;
          result = v451;
          v286 = v452;
          v287 = v453;
          v288 = v454;
LABEL_118:
          *(n128_u64 + 32) = v287;
          *(n128_u64 + 48) = v288;
          *n128_u64 = result;
          *(n128_u64 + 16) = v286;
        }

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
      v299 = (*a3)((i + 64), i);
      v300 = (*a3)((i + 128), (i + 64));
      if (v299)
      {
        if (!v300)
        {
          goto LABEL_186;
        }

        v301 = *i;
        v302 = *(i + 16);
        v303 = *(i + 48);
        v453 = *(i + 32);
        v454 = v303;
        v451 = v301;
        v452 = v302;
        v304 = *(i + 144);
        *i = *(i + 128);
        *(i + 16) = v304;
        v305 = *(i + 176);
        *(i + 32) = *(i + 160);
        *(i + 48) = v305;
        v306 = v451;
        v307 = v452;
        v308 = v454;
        *(i + 160) = v453;
        *(i + 176) = v308;
        *(i + 128) = v306;
        *(i + 144) = v307;
      }

      else if (v300)
      {
        v383 = *(i + 96);
        v382 = *(i + 112);
        v385 = *(i + 64);
        v384 = *(i + 80);
        v386 = *(i + 144);
        *(i + 64) = *(i + 128);
        *(i + 80) = v386;
        v387 = *(i + 176);
        *(i + 96) = *(i + 160);
        *(i + 112) = v387;
        *(i + 128) = v385;
        *(i + 144) = v384;
        *(i + 160) = v383;
        *(i + 176) = v382;
        if ((*a3)((i + 64), i))
        {
          v388 = *i;
          v389 = *(i + 16);
          v390 = *(i + 48);
          v453 = *(i + 32);
          v454 = v390;
          v451 = v388;
          v452 = v389;
          v391 = *(i + 80);
          *i = *(i + 64);
          *(i + 16) = v391;
          v392 = *(i + 112);
          *(i + 32) = *(i + 96);
          *(i + 48) = v392;
          v393 = v451;
          v394 = v452;
          v395 = v454;
          *(i + 96) = v453;
          *(i + 112) = v395;
          *(i + 64) = v393;
          *(i + 80) = v394;
        }
      }

LABEL_188:
      if (!(*a3)(n128_u64, (a1 + 128)))
      {
        return result;
      }

      v425 = *(a1 + 144);
      v451 = *(a1 + 128);
      v424 = v451;
      v452 = v425;
      v427 = *(a1 + 176);
      v453 = *(a1 + 160);
      v426 = v453;
      v454 = v427;
      v429 = *(n128_u64 + 32);
      v428 = *(n128_u64 + 48);
      v430 = *(n128_u64 + 16);
      *(a1 + 128) = *n128_u64;
      *(a1 + 144) = v430;
      *(a1 + 160) = v429;
      *(a1 + 176) = v428;
      *(n128_u64 + 32) = v426;
      *(n128_u64 + 48) = v427;
      *n128_u64 = v424;
      *(n128_u64 + 16) = v425;
      if (!(*a3)((a1 + 128), (a1 + 64)))
      {
        return result;
      }

      v432 = *(a1 + 96);
      v431 = *(a1 + 112);
      v434 = *(a1 + 64);
      v433 = *(a1 + 80);
      v435 = *(a1 + 144);
      *(a1 + 64) = *(a1 + 128);
      *(a1 + 80) = v435;
      v436 = *(a1 + 176);
      *(a1 + 96) = *(a1 + 160);
      *(a1 + 112) = v436;
      *(a1 + 128) = v434;
      *(a1 + 144) = v433;
      *(a1 + 160) = v432;
      *(a1 + 176) = v431;
LABEL_191:
      if ((*a3)((a1 + 64), a1))
      {
        v437 = *a1;
        v438 = *(a1 + 16);
        v439 = *(a1 + 48);
        v453 = *(a1 + 32);
        v454 = v439;
        v451 = v437;
        v452 = v438;
        v440 = *(a1 + 80);
        *a1 = *(a1 + 64);
        *(a1 + 16) = v440;
        v441 = *(a1 + 112);
        *(a1 + 32) = *(a1 + 96);
        *(a1 + 48) = v441;
        result = v451;
        v442 = v452;
        v443 = v454;
        *(a1 + 96) = v453;
        *(a1 + 112) = v443;
        *(a1 + 64) = result;
        *(a1 + 80) = v442;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode const&,ClipperLib::IntersectNode const&),ClipperLib::IntersectNode*,0>(i, (i + 64), (i + 128), (i + 192), n128_u64, a3).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      n128_u64 = i + 64;
      v310 = i == a2 || n128_u64 == a2;
      if (a5)
      {
        if (!v310)
        {
          v311 = 0;
          v312 = i;
          do
          {
            v313 = v312;
            v312 = n128_u64;
            if ((*a3)(n128_u64, v313))
            {
              v314 = *n128_u64;
              v315 = *(n128_u64 + 16);
              v316 = *(n128_u64 + 48);
              v453 = *(n128_u64 + 32);
              v454 = v316;
              v451 = v314;
              v452 = v315;
              v317 = v311;
              while (1)
              {
                v318 = (i + v317);
                v319 = *(i + v317 + 16);
                v318[4] = *(i + v317);
                v318[5] = v319;
                v320 = *(i + v317 + 48);
                v318[6] = *(i + v317 + 32);
                v318[7] = v320;
                if (!v317)
                {
                  break;
                }

                v317 -= 64;
                if (((*a3)(&v451, (v317 + i)) & 1) == 0)
                {
                  v321 = i + v317 + 64;
                  goto LABEL_137;
                }
              }

              v321 = i;
LABEL_137:
              result = v451;
              v322 = v452;
              v323 = v454;
              *(v321 + 32) = v453;
              *(v321 + 48) = v323;
              *v321 = result;
              *(v321 + 16) = v322;
            }

            n128_u64 = v312[4].n128_u64;
            v311 += 64;
          }

          while (&v312[4] != a2);
        }

        return result;
      }

      if (v310)
      {
        return result;
      }

      v396 = 0;
      v397 = -64;
      v398 = 64;
      while (1)
      {
        v399 = v396;
        v396 = v398;
        if ((*a3)(n128_u64, (i + v399)))
        {
          break;
        }

LABEL_183:
        v398 = v396 + 64;
        n128_u64 += 64;
        v397 -= 64;
        if (n128_u64 == a2)
        {
          return result;
        }
      }

      v400 = *n128_u64;
      v401 = *(n128_u64 + 16);
      v402 = *(n128_u64 + 48);
      v453 = *(n128_u64 + 32);
      v454 = v402;
      v451 = v400;
      v452 = v401;
      v403 = v397;
      v404 = n128_u64;
      while (1)
      {
        v405 = v404[-3];
        *v404 = v404[-4];
        v404[1] = v405;
        v406 = v404[-1];
        v404[2] = v404[-2];
        v404[3] = v406;
        if (!v403)
        {
          break;
        }

        v407 = (*a3)(&v451, v404 - 8);
        v404 -= 4;
        v403 += 64;
        if ((v407 & 1) == 0)
        {
          result = v451;
          v408 = v452;
          v409 = v454;
          v404[2] = v453;
          v404[3] = v409;
          *v404 = result;
          v404[1] = v408;
          goto LABEL_183;
        }
      }

LABEL_185:
      __break(1u);
LABEL_186:
      v410 = *a1;
      v411 = *(a1 + 16);
      v412 = *(a1 + 48);
      v453 = *(a1 + 32);
      v454 = v412;
      v451 = v410;
      v452 = v411;
      v413 = *(a1 + 80);
      *a1 = *(a1 + 64);
      *(a1 + 16) = v413;
      v414 = *(a1 + 112);
      *(a1 + 32) = *(a1 + 96);
      *(a1 + 48) = v414;
      v415 = v451;
      v416 = v452;
      v417 = v454;
      *(a1 + 96) = v453;
      *(a1 + 112) = v417;
      *(a1 + 64) = v415;
      *(a1 + 80) = v416;
      if ((*a3)((a1 + 128), (a1 + 64)))
      {
        v419 = *(a1 + 96);
        v418 = *(a1 + 112);
        v421 = *(a1 + 64);
        v420 = *(a1 + 80);
        v422 = *(a1 + 144);
        *(a1 + 64) = *(a1 + 128);
        *(a1 + 80) = v422;
        v423 = *(a1 + 176);
        *(a1 + 96) = *(a1 + 160);
        *(a1 + 112) = v423;
        *(a1 + 128) = v421;
        *(a1 + 144) = v420;
        *(a1 + 160) = v419;
        *(a1 + 176) = v418;
      }

      goto LABEL_188;
    }

    if (!a4)
    {
      if (i != a2)
      {
        v324 = (v13 - 2) >> 1;
        v446 = v324;
        do
        {
          v325 = v324;
          if (v446 >= v324)
          {
            v326 = (2 * v324) | 1;
            v327 = (a1 + (v326 << 6));
            if (2 * v324 + 2 < v13 && (*a3)((a1 + (v326 << 6)), v327 + 4))
            {
              v327 += 4;
              v326 = 2 * v325 + 2;
            }

            v328 = (a1 + (v325 << 6));
            if (((*a3)(v327, v328) & 1) == 0)
            {
              v329 = *v328;
              v330 = v328[1];
              v331 = v328[3];
              v453 = v328[2];
              v454 = v331;
              v451 = v329;
              v452 = v330;
              do
              {
                v332 = v327;
                v333 = *v327;
                v334 = v327[1];
                v335 = v327[3];
                v328[2] = v327[2];
                v328[3] = v335;
                *v328 = v333;
                v328[1] = v334;
                if (v446 < v326)
                {
                  break;
                }

                v336 = (2 * v326) | 1;
                v327 = (a1 + (v336 << 6));
                v337 = 2 * v326 + 2;
                if (v337 < v13 && (*a3)((a1 + (v336 << 6)), v327 + 4))
                {
                  v327 += 4;
                  v336 = v337;
                }

                v328 = v332;
                v326 = v336;
              }

              while (!(*a3)(v327, &v451));
              v338 = v451;
              v339 = v452;
              v340 = v454;
              v332[2] = v453;
              v332[3] = v340;
              *v332 = v338;
              v332[1] = v339;
            }
          }

          v324 = v325 - 1;
        }

        while (v325);
        do
        {
          v341 = 0;
          v342 = *a1;
          v343 = *(a1 + 16);
          v344 = *(a1 + 48);
          v449 = *(a1 + 32);
          v450 = v344;
          v447 = v342;
          v448 = v343;
          v345 = a1;
          do
          {
            v346 = &v345[4 * v341];
            v347 = v346 + 4;
            v348 = (2 * v341) | 1;
            v349 = 2 * v341 + 2;
            if (v349 < v13)
            {
              v350 = v346 + 8;
              if ((*a3)(v346 + 4, v346 + 8))
              {
                v347 = v350;
                v348 = v349;
              }
            }

            v351 = *v347;
            v352 = v347[1];
            v353 = v347[3];
            v345[2] = v347[2];
            v345[3] = v353;
            *v345 = v351;
            v345[1] = v352;
            v345 = v347;
            v341 = v348;
          }

          while (v348 <= ((v13 - 2) >> 1));
          a2 -= 4;
          if (v347 == a2)
          {
            result = v447;
            v373 = v448;
            v374 = v450;
            v347[2] = v449;
            v347[3] = v374;
            *v347 = result;
            v347[1] = v373;
          }

          else
          {
            v354 = *a2;
            v355 = a2[1];
            v356 = a2[3];
            v347[2] = a2[2];
            v347[3] = v356;
            *v347 = v354;
            v347[1] = v355;
            result = v447;
            v357 = v448;
            v358 = v450;
            a2[2] = v449;
            a2[3] = v358;
            *a2 = result;
            a2[1] = v357;
            v359 = (&v347[4] - a1) >> 6;
            v360 = v359 < 2;
            v361 = v359 - 2;
            if (!v360)
            {
              v362 = v361 >> 1;
              v363 = (a1 + (v361 >> 1 << 6));
              if ((*a3)(v363, v347))
              {
                v364 = *v347;
                v365 = v347[1];
                v366 = v347[3];
                v453 = v347[2];
                v454 = v366;
                v451 = v364;
                v452 = v365;
                do
                {
                  v367 = v363;
                  v368 = *v363;
                  v369 = v363[1];
                  v370 = v363[3];
                  v347[2] = v363[2];
                  v347[3] = v370;
                  *v347 = v368;
                  v347[1] = v369;
                  if (!v362)
                  {
                    break;
                  }

                  v362 = (v362 - 1) >> 1;
                  v363 = (a1 + (v362 << 6));
                  v347 = v367;
                }

                while (((*a3)(v363, &v451) & 1) != 0);
                result = v451;
                v371 = v452;
                v372 = v454;
                v367[2] = v453;
                v367[3] = v372;
                *v367 = result;
                v367[1] = v371;
              }
            }
          }

          v360 = v13-- <= 2;
        }

        while (!v360);
      }

      return result;
    }

    v14 = (i + (v13 >> 1 << 6));
    v15 = *a3;
    if (v13 >= 0x81)
    {
      v16 = v15((a1 + (v13 >> 1 << 6)), a1);
      v17 = (*a3)(n128_u64, (a1 + (v13 >> 1 << 6)));
      v18 = a4;
      if (v16)
      {
        if (v17)
        {
          v19 = *a1;
          v20 = *(a1 + 16);
          v21 = *(a1 + 48);
          v453 = *(a1 + 32);
          v454 = v21;
          v451 = v19;
          v452 = v20;
          v22 = *n128_u64;
          v23 = *(n128_u64 + 16);
          v24 = *(n128_u64 + 48);
          *(a1 + 32) = *(n128_u64 + 32);
          *(a1 + 48) = v24;
          *a1 = v22;
          *(a1 + 16) = v23;
          goto LABEL_26;
        }

        v69 = *a1;
        v70 = *(a1 + 16);
        v71 = *(a1 + 48);
        v453 = *(a1 + 32);
        v454 = v71;
        v451 = v69;
        v452 = v70;
        v72 = *v14;
        v73 = v14[1];
        v74 = v14[3];
        *(a1 + 32) = v14[2];
        *(a1 + 48) = v74;
        *a1 = v72;
        *(a1 + 16) = v73;
        v75 = v451;
        v76 = v452;
        v77 = v454;
        v14[2] = v453;
        v14[3] = v77;
        *v14 = v75;
        v14[1] = v76;
        if ((*a3)(n128_u64, v14))
        {
          v78 = *v14;
          v79 = v14[1];
          v80 = v14[3];
          v453 = v14[2];
          v454 = v80;
          v451 = v78;
          v452 = v79;
          v81 = *n128_u64;
          v82 = *(n128_u64 + 16);
          v83 = *(n128_u64 + 48);
          v14[2] = *(n128_u64 + 32);
          v14[3] = v83;
          *v14 = v81;
          v14[1] = v82;
LABEL_26:
          v84 = v451;
          v85 = v452;
          v86 = v454;
          *(n128_u64 + 32) = v453;
          *(n128_u64 + 48) = v86;
          *n128_u64 = v84;
          *(n128_u64 + 16) = v85;
        }
      }

      else if (v17)
      {
        v33 = *v14;
        v34 = v14[1];
        v35 = v14[3];
        v453 = v14[2];
        v454 = v35;
        v451 = v33;
        v452 = v34;
        v36 = *n128_u64;
        v37 = *(n128_u64 + 16);
        v38 = *(n128_u64 + 48);
        v14[2] = *(n128_u64 + 32);
        v14[3] = v38;
        *v14 = v36;
        v14[1] = v37;
        v39 = v451;
        v40 = v452;
        v41 = v454;
        *(n128_u64 + 32) = v453;
        *(n128_u64 + 48) = v41;
        *n128_u64 = v39;
        *(n128_u64 + 16) = v40;
        if ((*a3)(v14, a1))
        {
          v42 = *a1;
          v43 = *(a1 + 16);
          v44 = *(a1 + 48);
          v453 = *(a1 + 32);
          v454 = v44;
          v451 = v42;
          v452 = v43;
          v45 = *v14;
          v46 = v14[1];
          v47 = v14[3];
          *(a1 + 32) = v14[2];
          *(a1 + 48) = v47;
          *a1 = v45;
          *(a1 + 16) = v46;
          v48 = v451;
          v49 = v452;
          v50 = v454;
          v14[2] = v453;
          v14[3] = v50;
          *v14 = v48;
          v14[1] = v49;
        }
      }

      v87 = v14 - 4;
      v88 = (*a3)(v14 - 4, (a1 + 64));
      v89 = (*a3)(v445, v14 - 4);
      if (v88)
      {
        if (v89)
        {
          v90 = *(a1 + 64);
          v91 = *(a1 + 80);
          v451 = v90;
          v452 = v91;
          v92 = *(a1 + 96);
          v93 = *(a1 + 112);
          v453 = v92;
          v454 = v93;
          v94 = a2 - 8;
          v96 = a2[-6];
          v95 = a2[-5];
          v97 = a2[-7];
          *(a1 + 64) = *v445;
          *(a1 + 80) = v97;
          *(a1 + 96) = v96;
          *(a1 + 112) = v95;
          goto LABEL_38;
        }

        v133 = *(a1 + 80);
        v451 = *(a1 + 64);
        v132 = v451;
        v452 = v133;
        v135 = *(a1 + 112);
        v453 = *(a1 + 96);
        v134 = v453;
        v454 = v135;
        v137 = v14[-2];
        v136 = v14[-1];
        v138 = v14[-3];
        *(a1 + 64) = *v87;
        *(a1 + 80) = v138;
        *(a1 + 96) = v137;
        *(a1 + 112) = v136;
        v14[-2] = v134;
        v14[-1] = v135;
        *v87 = v132;
        v14[-3] = v133;
        if ((*a3)(v445, v14 - 4))
        {
          v139 = *v87;
          v140 = v14[-3];
          v141 = v14[-1];
          v453 = v14[-2];
          v454 = v141;
          v451 = v139;
          v452 = v140;
          v94 = a2 - 8;
          v142 = *v445;
          v143 = a2[-7];
          v144 = a2[-5];
          v14[-2] = a2[-6];
          v14[-1] = v144;
          *v87 = v142;
          v14[-3] = v143;
          v90 = v451;
          v91 = v452;
          v92 = v453;
          v93 = v454;
LABEL_38:
          v94[2] = v92;
          v94[3] = v93;
          *v94 = v90;
          v94[1] = v91;
        }
      }

      else if (v89)
      {
        v98 = *v87;
        v99 = v14[-3];
        v100 = v14[-1];
        v453 = v14[-2];
        v454 = v100;
        v451 = v98;
        v452 = v99;
        v101 = *v445;
        v102 = a2[-7];
        v103 = a2[-5];
        v14[-2] = a2[-6];
        v14[-1] = v103;
        *v87 = v101;
        v14[-3] = v102;
        v104 = v451;
        v105 = v452;
        v106 = v454;
        a2[-6] = v453;
        a2[-5] = v106;
        *v445 = v104;
        a2[-7] = v105;
        if ((*a3)(v14 - 4, (a1 + 64)))
        {
          v108 = *(a1 + 80);
          v451 = *(a1 + 64);
          v107 = v451;
          v452 = v108;
          v110 = *(a1 + 112);
          v453 = *(a1 + 96);
          v109 = v453;
          v454 = v110;
          v112 = v14[-2];
          v111 = v14[-1];
          v113 = v14[-3];
          *(a1 + 64) = *v87;
          *(a1 + 80) = v113;
          *(a1 + 96) = v112;
          *(a1 + 112) = v111;
          v14[-2] = v109;
          v14[-1] = v110;
          *v87 = v107;
          v14[-3] = v108;
        }
      }

      v145 = (*a3)(v14 + 4, (a1 + 128));
      v146 = (*a3)(v444, v14 + 4);
      if (v145)
      {
        if (v146)
        {
          v147 = *(a1 + 128);
          v148 = *(a1 + 144);
          v451 = v147;
          v452 = v148;
          v149 = *(a1 + 160);
          v150 = *(a1 + 176);
          v453 = v149;
          v454 = v150;
          v151 = a2 - 12;
          v153 = a2[-10];
          v152 = a2[-9];
          v154 = a2[-11];
          *(a1 + 128) = *v444;
          *(a1 + 144) = v154;
          *(a1 + 160) = v153;
          *(a1 + 176) = v152;
          goto LABEL_47;
        }

        v172 = *(a1 + 144);
        v451 = *(a1 + 128);
        v171 = v451;
        v452 = v172;
        v174 = *(a1 + 176);
        v453 = *(a1 + 160);
        v173 = v453;
        v454 = v174;
        v176 = v14[6];
        v175 = v14[7];
        v177 = v14[5];
        *(a1 + 128) = v14[4];
        *(a1 + 144) = v177;
        *(a1 + 160) = v176;
        *(a1 + 176) = v175;
        v14[6] = v173;
        v14[7] = v174;
        v14[4] = v171;
        v14[5] = v172;
        if ((*a3)(v444, v14 + 4))
        {
          v178 = v14[4];
          v179 = v14[5];
          v180 = v14[7];
          v453 = v14[6];
          v454 = v180;
          v451 = v178;
          v452 = v179;
          v151 = a2 - 12;
          v181 = *v444;
          v182 = a2[-11];
          v183 = a2[-9];
          v14[6] = a2[-10];
          v14[7] = v183;
          v14[4] = v181;
          v14[5] = v182;
          v147 = v451;
          v148 = v452;
          v149 = v453;
          v150 = v454;
LABEL_47:
          v151[2] = v149;
          v151[3] = v150;
          *v151 = v147;
          v151[1] = v148;
        }
      }

      else if (v146)
      {
        v155 = v14[4];
        v156 = v14[5];
        v157 = v14[7];
        v453 = v14[6];
        v454 = v157;
        v451 = v155;
        v452 = v156;
        v158 = *v444;
        v159 = a2[-11];
        v160 = a2[-9];
        v14[6] = a2[-10];
        v14[7] = v160;
        v14[4] = v158;
        v14[5] = v159;
        v161 = v451;
        v162 = v452;
        v163 = v454;
        a2[-10] = v453;
        a2[-9] = v163;
        *v444 = v161;
        a2[-11] = v162;
        if ((*a3)(v14 + 4, (a1 + 128)))
        {
          v165 = *(a1 + 144);
          v451 = *(a1 + 128);
          v164 = v451;
          v452 = v165;
          v167 = *(a1 + 176);
          v453 = *(a1 + 160);
          v166 = v453;
          v454 = v167;
          v169 = v14[6];
          v168 = v14[7];
          v170 = v14[5];
          *(a1 + 128) = v14[4];
          *(a1 + 144) = v170;
          *(a1 + 160) = v169;
          *(a1 + 176) = v168;
          v14[6] = v166;
          v14[7] = v167;
          v14[4] = v164;
          v14[5] = v165;
        }
      }

      v184 = (*a3)(v14, v14 - 4);
      v185 = (*a3)(v14 + 4, v14);
      if (v184)
      {
        if (v185)
        {
          v186 = *v87;
          v187 = v14[-3];
          v188 = v14[-1];
          v453 = v14[-2];
          v454 = v188;
          v451 = v186;
          v452 = v187;
          v189 = v14[5];
          *v87 = v14[4];
          v14[-3] = v189;
          v190 = v14[7];
          v14[-2] = v14[6];
          v14[-1] = v190;
          goto LABEL_56;
        }

        v207 = *v87;
        v208 = v14[-3];
        v209 = v14[-1];
        v453 = v14[-2];
        v454 = v209;
        v451 = v207;
        v452 = v208;
        v210 = v14[1];
        *v87 = *v14;
        v14[-3] = v210;
        v211 = v14[3];
        v14[-2] = v14[2];
        v14[-1] = v211;
        v212 = v454;
        v213 = v451;
        v214 = v452;
        v14[2] = v453;
        v14[3] = v212;
        *v14 = v213;
        v14[1] = v214;
        if ((*a3)(v14 + 4, v14))
        {
          v215 = *v14;
          v216 = v14[1];
          v217 = v14[3];
          v453 = v14[2];
          v454 = v217;
          v451 = v215;
          v452 = v216;
          v218 = v14[5];
          *v14 = v14[4];
          v14[1] = v218;
          v219 = v14[7];
          v14[2] = v14[6];
          v14[3] = v219;
LABEL_56:
          v220 = v454;
          v221 = v451;
          v222 = v452;
          v14[6] = v453;
          v14[7] = v220;
          v14[4] = v221;
          v14[5] = v222;
        }
      }

      else if (v185)
      {
        v191 = *v14;
        v192 = v14[1];
        v193 = v14[3];
        v453 = v14[2];
        v454 = v193;
        v451 = v191;
        v452 = v192;
        v194 = v14[5];
        *v14 = v14[4];
        v14[1] = v194;
        v195 = v14[7];
        v14[2] = v14[6];
        v14[3] = v195;
        v196 = v454;
        v197 = v451;
        v198 = v452;
        v14[6] = v453;
        v14[7] = v196;
        v14[4] = v197;
        v14[5] = v198;
        if ((*a3)(v14, v14 - 4))
        {
          v199 = *v87;
          v200 = v14[-3];
          v201 = v14[-1];
          v453 = v14[-2];
          v454 = v201;
          v451 = v199;
          v452 = v200;
          v202 = v14[1];
          *v87 = *v14;
          v14[-3] = v202;
          v203 = v14[3];
          v14[-2] = v14[2];
          v14[-1] = v203;
          v204 = v454;
          v205 = v451;
          v206 = v452;
          v14[2] = v453;
          v14[3] = v204;
          *v14 = v205;
          v14[1] = v206;
        }
      }

      v223 = *a1;
      v224 = *(a1 + 16);
      v225 = *(a1 + 48);
      v453 = *(a1 + 32);
      v454 = v225;
      v451 = v223;
      v452 = v224;
      v226 = *v14;
      v227 = v14[1];
      v228 = v14[3];
      *(a1 + 32) = v14[2];
      *(a1 + 48) = v228;
      *a1 = v226;
      *(a1 + 16) = v227;
      v229 = v451;
      v230 = v452;
      v231 = v454;
      v14[2] = v453;
      v14[3] = v231;
      *v14 = v229;
      v14[1] = v230;
      a4 = v18;
      goto LABEL_58;
    }

    v25 = v15(a1, (a1 + (v13 >> 1 << 6)));
    v26 = (*a3)(n128_u64, a1);
    if (v25)
    {
      if (v26)
      {
        v27 = *v14;
        v28 = v14[1];
        v29 = v14[3];
        v453 = v14[2];
        v454 = v29;
        v451 = v27;
        v452 = v28;
        v30 = *n128_u64;
        v31 = *(n128_u64 + 16);
        v32 = *(n128_u64 + 48);
        v14[2] = *(n128_u64 + 32);
        v14[3] = v32;
        *v14 = v30;
        v14[1] = v31;
LABEL_35:
        v129 = v451;
        v130 = v452;
        v131 = v454;
        *(n128_u64 + 32) = v453;
        *(n128_u64 + 48) = v131;
        *n128_u64 = v129;
        *(n128_u64 + 16) = v130;
        goto LABEL_58;
      }

      v114 = *v14;
      v115 = v14[1];
      v116 = v14[3];
      v453 = v14[2];
      v454 = v116;
      v451 = v114;
      v452 = v115;
      v117 = *a1;
      v118 = *(a1 + 16);
      v119 = *(a1 + 48);
      v14[2] = *(a1 + 32);
      v14[3] = v119;
      *v14 = v117;
      v14[1] = v118;
      v120 = v451;
      v121 = v452;
      v122 = v454;
      *(a1 + 32) = v453;
      *(a1 + 48) = v122;
      *a1 = v120;
      *(a1 + 16) = v121;
      if ((*a3)(n128_u64, a1))
      {
        v123 = *a1;
        v124 = *(a1 + 16);
        v125 = *(a1 + 48);
        v453 = *(a1 + 32);
        v454 = v125;
        v451 = v123;
        v452 = v124;
        v126 = *n128_u64;
        v127 = *(n128_u64 + 16);
        v128 = *(n128_u64 + 48);
        *(a1 + 32) = *(n128_u64 + 32);
        *(a1 + 48) = v128;
        *a1 = v126;
        *(a1 + 16) = v127;
        goto LABEL_35;
      }
    }

    else if (v26)
    {
      v51 = *a1;
      v52 = *(a1 + 16);
      v53 = *(a1 + 48);
      v453 = *(a1 + 32);
      v454 = v53;
      v451 = v51;
      v452 = v52;
      v54 = *n128_u64;
      v55 = *(n128_u64 + 16);
      v56 = *(n128_u64 + 48);
      *(a1 + 32) = *(n128_u64 + 32);
      *(a1 + 48) = v56;
      *a1 = v54;
      *(a1 + 16) = v55;
      v57 = v451;
      v58 = v452;
      v59 = v454;
      *(n128_u64 + 32) = v453;
      *(n128_u64 + 48) = v59;
      *n128_u64 = v57;
      *(n128_u64 + 16) = v58;
      if ((*a3)(a1, (a1 + (v13 >> 1 << 6))))
      {
        v60 = *v14;
        v61 = v14[1];
        v62 = v14[3];
        v453 = v14[2];
        v454 = v62;
        v451 = v60;
        v452 = v61;
        v63 = *a1;
        v64 = *(a1 + 16);
        v65 = *(a1 + 48);
        v14[2] = *(a1 + 32);
        v14[3] = v65;
        *v14 = v63;
        v14[1] = v64;
        v66 = v451;
        v67 = v452;
        v68 = v454;
        *(a1 + 32) = v453;
        *(a1 + 48) = v68;
        *a1 = v66;
        *(a1 + 16) = v67;
      }
    }

LABEL_58:
    --a4;
    if (a5 & 1) != 0 || ((*a3)((a1 - 64), a1))
    {
      v232 = *a1;
      v233 = *(a1 + 16);
      v234 = *(a1 + 48);
      v449 = *(a1 + 32);
      v450 = v234;
      v447 = v232;
      v448 = v233;
      v235 = a1;
      do
      {
        v235 += 4;
        if (v235 == a2)
        {
          goto LABEL_185;
        }
      }

      while (((*a3)(v235, &v447) & 1) != 0);
      v236 = v235 - 4;
      v237 = a2;
      if (&v235[-4] != a1)
      {
        while (v237 != a1)
        {
          v237 -= 4;
          if ((*a3)(v237, &v447))
          {
            goto LABEL_70;
          }
        }

        goto LABEL_185;
      }

      v237 = a2;
      do
      {
        if (v235 >= v237)
        {
          break;
        }

        v237 -= 4;
      }

      while (((*a3)(v237, &v447) & 1) == 0);
LABEL_70:
      n128_u64 = a5;
      v238 = a4;
      if (v235 < v237)
      {
        v239 = v235;
        v240 = v237;
LABEL_72:
        v242 = v239[1];
        v451 = *v239;
        v241 = v451;
        v452 = v242;
        v244 = v239[3];
        v453 = v239[2];
        v243 = v453;
        v454 = v244;
        v246 = v240[2];
        v245 = v240[3];
        v247 = v240[1];
        *v239 = *v240;
        v239[1] = v247;
        v239[2] = v246;
        v239[3] = v245;
        v240[2] = v243;
        v240[3] = v244;
        *v240 = v241;
        v240[1] = v242;
        while (1)
        {
          v239 += 4;
          if (v239 == a2)
          {
            goto LABEL_185;
          }

          if (((*a3)(v239, &v447) & 1) == 0)
          {
            v236 = v239 - 4;
            while (v240 != a1)
            {
              v240 -= 4;
              if ((*a3)(v240, &v447))
              {
                if (v239 < v240)
                {
                  goto LABEL_72;
                }

                goto LABEL_79;
              }
            }

            goto LABEL_185;
          }
        }
      }

LABEL_79:
      if (v236 != a1)
      {
        v248 = *v236;
        v249 = v236[1];
        v250 = v236[3];
        *(a1 + 32) = v236[2];
        *(a1 + 48) = v250;
        *a1 = v248;
        *(a1 + 16) = v249;
      }

      v251 = v447;
      v252 = v448;
      v253 = v450;
      v236[2] = v449;
      v236[3] = v253;
      *v236 = v251;
      v236[1] = v252;
      a4 = v238;
      a5 = n128_u64;
      n128_u64 = a2[-4].n128_u64;
      if (v235 < v237)
      {
LABEL_84:
        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode const&,ClipperLib::IntersectNode const&),ClipperLib::IntersectNode*,false>(a1, v236, a3, a4, a5 & 1);
        a5 = 0;
        i = v236[4].n128_u64;
        goto LABEL_2;
      }

      v254 = std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode const&,ClipperLib::IntersectNode const&),ClipperLib::IntersectNode*>(a1, v236, a3);
      i = v236[4].n128_u64;
      if (!std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode const&,ClipperLib::IntersectNode const&),ClipperLib::IntersectNode*>(v236 + 4, a2, a3))
      {
        if (v254)
        {
          goto LABEL_2;
        }

        goto LABEL_84;
      }

      a2 = v236;
      if (v254)
      {
        return result;
      }

      goto LABEL_1;
    }

    v255 = *a1;
    v256 = *(a1 + 16);
    v257 = *(a1 + 48);
    v449 = *(a1 + 32);
    v450 = v257;
    v447 = v255;
    v448 = v256;
    if ((*a3)(&v447, n128_u64))
    {
      i = a1;
      while (1)
      {
        i += 64;
        if (i == a2)
        {
          goto LABEL_185;
        }

        if ((*a3)(&v447, i))
        {
          goto LABEL_93;
        }
      }
    }

    v258 = (a1 + 64);
    do
    {
      i = v258;
      if (v258 >= a2)
      {
        break;
      }

      v259 = (*a3)(&v447, v258);
      v258 = (i + 64);
    }

    while (!v259);
LABEL_93:
    v260 = a2;
    if (i < a2)
    {
      v260 = a2;
      while (v260 != a1)
      {
        v260 -= 4;
        if (((*a3)(&v447, v260) & 1) == 0)
        {
          goto LABEL_103;
        }
      }

      goto LABEL_185;
    }

LABEL_103:
    if (i < v260)
    {
      v261 = *i;
      v262 = *(i + 16);
      v263 = *(i + 48);
      v453 = *(i + 32);
      v454 = v263;
      v451 = v261;
      v452 = v262;
      v264 = *v260;
      v265 = v260[1];
      v266 = v260[3];
      *(i + 32) = v260[2];
      *(i + 48) = v266;
      *i = v264;
      *(i + 16) = v265;
      v267 = v451;
      v268 = v452;
      v269 = v454;
      v260[2] = v453;
      v260[3] = v269;
      *v260 = v267;
      v260[1] = v268;
      while (1)
      {
        i += 64;
        if (i == a2)
        {
          goto LABEL_185;
        }

        if ((*a3)(&v447, i))
        {
          while (v260 != a1)
          {
            v260 -= 4;
            if (((*a3)(&v447, v260) & 1) == 0)
            {
              goto LABEL_103;
            }
          }

          goto LABEL_185;
        }
      }
    }

    v270 = (i - 64);
    if (i - 64 != a1)
    {
      v271 = *v270;
      v272 = *(i - 48);
      v273 = *(i - 16);
      *(a1 + 32) = *(i - 32);
      *(a1 + 48) = v273;
      *a1 = v271;
      *(a1 + 16) = v272;
    }

    a5 = 0;
    result = v447;
    v274 = v448;
    v275 = v450;
    *(i - 32) = v449;
    *(i - 16) = v275;
    *v270 = result;
  }

  v276 = (*a3)((i + 64), i);
  v277 = (*a3)(n128_u64, (i + 64));
  if ((v276 & 1) == 0)
  {
    if (!v277)
    {
      return result;
    }

    v376 = *(i + 80);
    v451 = *(i + 64);
    v375 = v451;
    v452 = v376;
    v378 = *(i + 112);
    v453 = *(i + 96);
    v377 = v453;
    v454 = v378;
    v380 = *(n128_u64 + 32);
    v379 = *(n128_u64 + 48);
    v381 = *(n128_u64 + 16);
    *(i + 64) = *n128_u64;
    *(i + 80) = v381;
    *(i + 96) = v380;
    *(i + 112) = v379;
    *(n128_u64 + 32) = v377;
    *(n128_u64 + 48) = v378;
    *n128_u64 = v375;
    *(n128_u64 + 16) = v376;
    goto LABEL_191;
  }

  if (v277)
  {
    goto LABEL_117;
  }

  v278 = *i;
  v279 = *(i + 16);
  v280 = *(i + 48);
  v453 = *(i + 32);
  v454 = v280;
  v451 = v278;
  v452 = v279;
  v281 = *(i + 80);
  *i = *(i + 64);
  *(i + 16) = v281;
  v282 = *(i + 112);
  *(i + 32) = *(i + 96);
  *(i + 48) = v282;
  v283 = v451;
  v284 = v452;
  v285 = v454;
  *(i + 96) = v453;
  *(i + 112) = v285;
  *(i + 64) = v283;
  *(i + 80) = v284;
  if ((*a3)(n128_u64, (i + 64)))
  {
    result = *(i + 64);
    v286 = *(i + 80);
    v451 = result;
    v452 = v286;
    v287 = *(i + 96);
    v288 = *(i + 112);
    v453 = v287;
    v454 = v288;
    v290 = *(n128_u64 + 32);
    v289 = *(n128_u64 + 48);
    v291 = *(n128_u64 + 16);
    *(i + 64) = *n128_u64;
    *(i + 80) = v291;
    *(i + 96) = v290;
    *(i + 112) = v289;
    goto LABEL_118;
  }

  return result;
}