uint64_t CGBitmapFreeData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 & 0x1F) != 0)
  {
    _CGHandleAssert("CGBitmapFreeData", 202, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/API/CGBitmapContext.c", "(uintptr_t)q % bitmap_alignment == 0", "data(%p) is unaligned", a6, a7, a8, a1);
  }

  v9 = *(a1 - 16);
  v10 = (a1 - *(a1 - 8));

  return munmap(v10, v9);
}

void CGContextSetAlpha(CGContextRef c, CGFloat alpha)
{
  if (c && *(c + 4) == 1129601108)
  {
    v9 = 1.0;
    if (alpha <= 1.0)
    {
      v9 = alpha;
    }

    if (alpha >= 0.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = *(c + 12);
    if (*(*(v11 + 120) + 8) != v10)
    {
      maybeCopyRenderingState(*(c + 12));
      *(*(v11 + 120) + 8) = v10;
    }
  }

  else
  {

    handle_invalid_context("CGContextSetAlpha", c, v2, v3, v4, v5, v6, v7);
  }
}

void maybe_copy_device_state(uint64_t a1)
{
  if ((*(a1 + 20) & 0x10) != 0)
  {
    v2 = *(a1 + 144);
    v3 = malloc_type_malloc(0x30uLL, 0x1020040AD984FB8uLL);
    *v3 = 0;
    *(v3 + 1) = 1;
    *(v3 + 8) = *(v2 + 8);
    *(v3 + 12) = *(v2 + 24);
    *(v3 + 7) = *(v2 + 28);
    v4 = *(v2 + 32);
    if (v4)
    {
      CFRetain(*(v2 + 32));
    }

    *(v3 + 4) = v4;
    v5 = *(v2 + 40);
    if (v5)
    {
      CFRetain(*(v2 + 40));
    }

    *(v3 + 5) = v5;
    *(a1 + 144) = v3;
    device_state_release(v2);
    *(a1 + 20) &= ~0x10u;
  }
}

void CGLogWithArguments(int a1, uint64_t a2, va_list a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (CGLogWithArguments_predicate != -1)
  {
    dispatch_once(&CGLogWithArguments_predicate, &__block_literal_global_14583);
  }

  v6 = *MEMORY[0x1E695E480];
  v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s", a2);
  if (v7)
  {
    v8 = v7;
    v9 = CFStringCreateWithFormatAndArguments(v6, 0, v7, a3);
    CFRelease(v8);
    if (v9)
    {
      CStringPtr = CFStringGetCStringPtr(v9, 0x8000100u);
      if (CStringPtr)
      {
        v11 = CStringPtr;
        v12 = 0;
      }

      else
      {
        Length = CFStringGetLength(v9);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        v12 = malloc_type_calloc(MaximumSizeForEncoding, 1uLL, 0xE5889497uLL);
        if (v12 && CFStringGetCString(v9, v12, MaximumSizeForEncoding, 0x8000100u))
        {
          v11 = v12;
        }

        else
        {
          v11 = "";
        }
      }

      if (a1 > 2)
      {
        if (a1 != 3)
        {
          puts(v11);
          goto LABEL_22;
        }

        v16 = CGLogWithArguments_log;
        if (os_log_type_enabled(CGLogWithArguments_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446210;
          v19 = v11;
          _os_log_fault_impl(&dword_183EA0000, v16, OS_LOG_TYPE_FAULT, "%{public}s", buf, 0xCu);
        }
      }

      else
      {
        if (a1 == 1)
        {
          v15 = CGLogWithArguments_log;
          if (os_log_type_enabled(CGLogWithArguments_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v19 = v11;
            _os_log_impl(&dword_183EA0000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          }

          goto LABEL_22;
        }

        v17 = CGLogWithArguments_log;
        if (os_log_type_enabled(CGLogWithArguments_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v19 = v11;
          _os_log_error_impl(&dword_183EA0000, v17, OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
        }
      }

      callErrorCallback();
LABEL_22:
      free(v12);
      CFRelease(v9);
    }
  }
}

uint64_t callErrorCallback()
{
  pthread_mutex_lock(&error_callback_lock);
  v1 = error_callback;
  pthread_mutex_unlock(&error_callback_lock);
  result = v1;
  if (v1)
  {

    return v1();
  }

  return result;
}

CFTypeID CGImageGetTypeID(void)
{
  if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
  {
    dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
  }

  return CGImageGetTypeID_image_type_id;
}

void CG::Path::append_ellipse(CG::Path *this, const CGRect *a2, int a3, int a4, const CGAffineTransform *a5)
{
  if (*this)
  {
    CG::Path::reserve_space(this, 14, 6);
    width = a2->size.width;
    height = a2->size.height;
    v13 = width * 0.5;
    v37.x = width * 0.5;
    v37.y = 0.0;
    v38.f64[0] = 0.0;
    v14 = -0.5;
    if (!a4)
    {
      v14 = 0.5;
    }

    v15 = v14 * height;
    v38.f64[1] = v14 * height;
    x = a2->origin.x;
    y = a2->origin.y;
    if (width < 0.0 || height < 0.0)
    {
      v40.origin.x = a2->origin.x;
      v40.origin.y = a2->origin.y;
      v40.size.width = width;
      v40.size.height = height;
      v34 = v15;
      v41 = CGRectStandardize(v40);
      v39.f64[0] = v41.origin.x + v41.size.width * 0.5;
      v41.origin.x = x;
      v41.origin.y = y;
      v41.size.width = width;
      v41.size.height = height;
      v42 = CGRectStandardize(v41);
      v18 = v39.f64[0];
      v15 = v34;
      v13 = width * 0.5;
      y = v42.origin.y;
      height = v42.size.height;
    }

    else
    {
      v18 = x + v13;
      v39.f64[0] = x + v13;
    }

    v39.f64[1] = y + height * 0.5;
    if (a5)
    {
      v25 = *&a5->a;
      v26 = *&a5->c;
      v27 = *&a5->tx;
      v28 = vmlaq_n_f64(vmulq_f64(v26, 0), *&a5->a, v13);
      v29 = vmlaq_f64(vmulq_n_f64(v26, v15), 0, *&a5->a);
      v37 = v28;
      v38 = v29;
      v39 = vaddq_f64(v27, vmlaq_n_f64(vmulq_n_f64(v26, y + height * 0.5), v25, v18));
    }

    CG::Path::move_to_point(this, &v37, v10, xmmword_18439C630);
    v35 = xmmword_18439C780;
    v36 = xmmword_18439CC80;
    CG::Path::add_curve_to_point(this, &v36, &v35, &v37, v30, xmmword_18439CC90);
    v35 = xmmword_18439CA10;
    v36 = xmmword_18439CCA0;
    CG::Path::add_curve_to_point(this, &v36, &v35, &v37, v31, xmmword_18439CCB0);
    v35 = xmmword_18439CA00;
    v36 = xmmword_18439CCC0;
    CG::Path::add_curve_to_point(this, &v36, &v35, &v37, v32, xmmword_18439CCD0);
    v35 = xmmword_18439C630;
    v36 = xmmword_18439CCE0;
    CG::Path::add_curve_to_point(this, &v36, &v35, &v37, v33, xmmword_18439CCF0);
    if (a3)
    {
      CG::Path::close_subpath(this);
    }
  }

  else
  {
    origin = a2->origin;
    v21 = a2->size.width;
    v20 = a2->size.height;
    *this = 4;
    if (a5)
    {
      v22 = *&a5->c;
      v23 = vmlaq_n_f64(vmulq_f64(v22, 0), *&a5->a, v21);
      v24 = vmlaq_f64(vmulq_n_f64(v22, v20), 0, *&a5->a);
      origin = vaddq_f64(*&a5->tx, vmlaq_n_f64(vmulq_laneq_f64(v22, origin, 1), *&a5->a, origin.x));
    }

    else
    {
      v24.f64[0] = 0.0;
      v23 = *&v21;
      v24.f64[1] = v20;
    }

    *(this + 8) = v23;
    *(this + 24) = v24;
    *(this + 40) = origin;
    *(this + 56) = a4;
    *(this + 57) = a3;
  }
}

CGFloat CGRectGetMaxY(CGRect rect)
{
  if (rect.size.width < 0.0 || rect.size.height < 0.0)
  {
    rect = CGRectStandardize(rect);
  }

  return rect.origin.y + rect.size.height;
}

CGFloat CGRectGetHeight(CGRect rect)
{
  if (rect.size.width < 0.0 || rect.size.height < 0.0)
  {
    rect = CGRectStandardize(rect);
  }

  return rect.size.height;
}

CGFloat CGRectGetMinY(CGRect rect)
{
  if (rect.size.width < 0.0 || rect.size.height < 0.0)
  {
    rect = CGRectStandardize(rect);
  }

  return rect.origin.y;
}

CGFloat CGRectGetMinX(CGRect rect)
{
  if (rect.size.width < 0.0 || rect.size.height < 0.0)
  {
    *&rect.origin.x = CGRectStandardize(rect);
  }

  return rect.origin.x;
}

CGFloat CGRectGetMaxX(CGRect rect)
{
  if (rect.size.width < 0.0 || rect.size.height < 0.0)
  {
    rect = CGRectStandardize(rect);
  }

  return rect.origin.x + rect.size.width;
}

unint64_t CGPathGetNumberOfPoints(char *cf, int32x2_t a2)
{
  if (!cf)
  {
    return 0;
  }

  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v3 = CFGetTypeID(cf);
    if (v3 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  return CG::Path::point_count((cf + 16), a2);
}

unint64_t CG::Path::point_count(CG::Path *this, int32x2_t a2)
{
  v2 = 0;
  v3 = *this;
  if (*this <= 5)
  {
    v4 = 13;
    v5 = 2;
    if (v3 != 5)
    {
      v5 = 0;
    }

    if (v3 != 4)
    {
      v4 = v5;
    }

    v6 = 4;
    if (v3 != 1)
    {
      v6 = 0;
    }

    if ((v3 - 2) >= 2)
    {
      v7 = v6;
    }

    else
    {
      v7 = 17;
    }

    if (v3 <= 3)
    {
      return v7;
    }

    else
    {
      return v4;
    }
  }

  if (v3 <= 7)
  {
    if (v3 == 6)
    {
      return (ceil(fmax(*(this + 7) + -0.00000001, 0.0) / 1.57079633) * 3.0 + 1.0);
    }

    if (v3 == 7)
    {
      CG::Path::Path(v19, this);
      if (LODWORD(v19[0]) != 9)
      {
        CG::Path::convert_to_huge_(v19);
      }

      v2 = CG::Path::point_count(v19);
      CG::Path::~Path(v19);
    }

    return v2;
  }

  if (v3 != 8)
  {
    if (v3 == 9)
    {
      return *(this + 1) - *(this + 10);
    }

    return v2;
  }

  v2 = *(this + 4);
  v9 = *(this + 5);
  if (!*(this + 5))
  {
    return v2;
  }

  v10 = (this + 12);
  v11 = (v9 + 1) & 0x1FFFE;
  v12 = *(this + 4);
  v13 = 0x100000000;
  v14 = vld1_dup_f32(v10);
  do
  {
    v15 = v12;
    v16 = v13;
    v12 = vaddw_s32(v12, vceq_s32(vand_s8(vshl_u32(v14, vneg_s32(vmul_s32(v13, 0x300000003))), 0x700000007), 0x400000004));
    v13 = vadd_s32(v13, 0x200000002);
    v11 -= 2;
  }

  while (v11);
  a2.i32[0] = v9 - 1;
  v17 = vcgt_u32(v16, vdup_lane_s32(a2, 0));
  v18.i64[0] = v17.i32[0];
  v18.i64[1] = v17.i32[1];
  return vaddvq_s64(vbslq_s8(v18, v15, v12));
}

unint64_t CGPathGetNumberOfElements(char *cf)
{
  if (!cf)
  {
    return 0;
  }

  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v2 = CFGetTypeID(cf);
    if (v2 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  return CG::Path::element_count((cf + 16));
}

unint64_t CG::Path::element_count(CG::Path *this)
{
  v1 = 0;
  v2 = *this;
  if (*this > 5)
  {
    if (v2 > 7)
    {
      if (v2 == 8)
      {
        return *(this + 5);
      }

      else if (v2 == 9)
      {
        return *(this + 2);
      }
    }

    else if (v2 == 6)
    {
      return (ceil(fmax(*(this + 7) + -0.00000001, 0.0) / 1.57079633) + 1.0);
    }

    else if (v2 == 7)
    {
      CG::Path::Path(v7, this);
      if (LODWORD(v7[0]) != 9)
      {
        CG::Path::convert_to_huge_(v7);
      }

      v1 = CG::Path::element_count(v7);
      CG::Path::~Path(v7);
    }
  }

  else if (v2 > 3)
  {
    if (v2 == 4)
    {
      if (*(this + 57))
      {
        return 6;
      }

      else
      {
        return 5;
      }
    }

    else if (v2 == 5)
    {
      return 2;
    }
  }

  else
  {
    v3 = v2 - 2;
    v4 = v2 == 1;
    v5 = 5;
    if (!v4)
    {
      v5 = 0;
    }

    if (v3 >= 2)
    {
      return v5;
    }

    else
    {
      return 10;
    }
  }

  return v1;
}

BOOL CG::CompareEntryStateDrawing::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(v3 + 16);
    v5 = a2[14];
    if (v4)
    {
      v6 = *(v4 + 4);
      if (!v5)
      {
        goto LABEL_8;
      }

LABEL_6:
      v7 = *(v5 + 4);
      goto LABEL_9;
    }

    v6 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    v6 = 0;
    v5 = a2[14];
    if (v5)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  v7 = 0;
LABEL_9:
  if (v6 < v7)
  {
    return 1;
  }

  if (v4)
  {
    LODWORD(v4) = *(v4 + 4);
  }

  if (v5)
  {
    LODWORD(v5) = *(v5 + 4);
  }

  if (v4 > v5)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(v9 + 16);
    v11 = a2[15];
    v12 = *(v11 + 40);
    if (v10)
    {
      v13 = *(v10 + 16);
      if (!v12)
      {
        goto LABEL_24;
      }

LABEL_22:
      v14 = *(v12 + 16);
      goto LABEL_25;
    }

    v13 = 0;
    if (v12)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v10 = 0;
    v13 = 0;
    v11 = a2[15];
    v12 = *(v11 + 40);
    if (v12)
    {
      goto LABEL_22;
    }
  }

LABEL_24:
  v14 = 0;
LABEL_25:
  if (v13 < v14)
  {
    return 1;
  }

  if (v10)
  {
    LODWORD(v10) = *(v10 + 16);
  }

  if (v12)
  {
    LODWORD(v12) = *(v12 + 16);
  }

  if (v10 > v12)
  {
    return 0;
  }

  v15 = *(a1 + 24);
  if (v15)
  {
    v16 = *(v15 + 16);
    v17 = *(v11 + 16);
    if (v16)
    {
      v18 = *(v16 + 16);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v17 = *(v11 + 16);
  }

  if (v17)
  {
    v19 = *(v17 + 16);
  }

  else
  {
    v19 = 0;
  }

  if (v18 < v19)
  {
    return 1;
  }

  if (v16)
  {
    LODWORD(v16) = *(v16 + 16);
  }

  if (v17)
  {
    LODWORD(v17) = *(v17 + 16);
  }

  if (v16 > v17)
  {
    return 0;
  }

  v20 = *(a1 + 32);
  if (v20)
  {
    v21 = *(v20 + 16);
    v22 = a2[18];
    v23 = *(v22 + 32);
    if (v21)
    {
      v24 = *(v21 + 16);
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v21 = 0;
    v24 = 0;
    v22 = a2[18];
    v23 = *(v22 + 32);
  }

  if (v23)
  {
    v25 = *(v23 + 16);
  }

  else
  {
    v25 = 0;
  }

  if (v24 < v25)
  {
    return 1;
  }

  if (v21)
  {
    LODWORD(v21) = *(v21 + 16);
  }

  if (v23)
  {
    LODWORD(v23) = *(v23 + 16);
  }

  if (v21 > v23)
  {
    return 0;
  }

  v26 = *(a1 + 40);
  if (v26)
  {
    v27 = *(v26 + 16);
    v28 = *(v22 + 40);
    if (v27)
    {
      v29 = *(v27 + 16);
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v27 = 0;
    v29 = 0;
    v28 = *(v22 + 40);
  }

  if (v28)
  {
    v30 = *(v28 + 16);
  }

  else
  {
    v30 = 0;
  }

  if (v29 < v30)
  {
    return 1;
  }

  if (v27)
  {
    LODWORD(v27) = *(v27 + 16);
  }

  if (v28)
  {
    LODWORD(v28) = *(v28 + 16);
  }

  if (v27 > v28)
  {
    return 0;
  }

  v31 = *(a1 + 48);
  v32 = *(v22 + 8);
  if (v31 < v32)
  {
    return 1;
  }

  if (v31 > v32)
  {
    return 0;
  }

  v33 = *(a1 + 56);
  v34 = *(v11 + 8);
  if (v33 < v34)
  {
    return 1;
  }

  if (v33 > v34)
  {
    return 0;
  }

  v35 = *(a1 + 96);
  v36 = v35 << 26 >> 26;
  v37 = *(v11 + 4);
  if (v36 < v37 >> 8)
  {
    return 1;
  }

  if (v36 > v37 >> 8)
  {
    return 0;
  }

  if ((v37 & 0x1000000) != 0)
  {
    v38 = *(a3 + 81);
    v39 = *(a1 + 96) & 0x40;
    if (v38 > v39 >> 6)
    {
      return 1;
    }
  }

  else
  {
    v38 = 0;
    v39 = *(a1 + 96) & 0x40;
  }

  if (v39 && !v38)
  {
    return 0;
  }

  v40 = v37 & 0x2000000;
  if ((v35 & 0x80) == 0 && v40)
  {
    return 1;
  }

  if ((v35 & 0x80) != 0 && !v40)
  {
    return 0;
  }

  if (v35 << 18 >> 26 < v37 << 12 >> 28 || (v35 & 0x4000) == 0 && (*(v22 + 24) & 1) != 0)
  {
    return 1;
  }

  if ((v35 & 0x4000) != 0 && !*(v22 + 24))
  {
    return 0;
  }

  if (v35 & 0x8000) == 0 && (*(v22 + 25))
  {
    return 1;
  }

  if ((v35 & 0x8000) != 0 && !*(v22 + 25))
  {
    return 0;
  }

  return *(a1 + 100) < *(v22 + 28);
}

uint64_t CGColorCompare(unint64_t a1, unint64_t a2)
{
  v73[1] = *MEMORY[0x1E69E9840];
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

  ContentHeadroom = CGColorGetContentHeadroom(a1);
  if (ContentHeadroom > CGColorGetContentHeadroom(a2))
  {
    return 1;
  }

  v6 = CGColorGetContentHeadroom(a1);
  if (v6 < CGColorGetContentHeadroom(a2))
  {
    return -1;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    NumberOfComponents = CGTaggedColorGetNumberOfComponents(a1, v7, v8, v9, v10, v11, v12, v13);
    ColorSpace = CGTaggedColorGetColorSpace(a1, v15, v16, v17, v18, v19, v20, v21);
    (MEMORY[0x1EEE9AC00])();
    v24 = v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v24, v23);
    v39.n128_f64[0] = CGTaggedColorGetComponents(a1, v24, v25, v26, v27, v28, v29, v30);
    v40 = 0;
  }

  else
  {
    NumberOfComponents = *(a1 + 56);
    ColorSpace = *(a1 + 24);
    v40 = *(a1 + 32);
    (MEMORY[0x1EEE9AC00])();
    v24 = v73 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = memcpy(v24, (a1 + 72), v41);
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    v42 = CGTaggedColorGetNumberOfComponents(a2, v32, v33, v34, v35, v36, v37, v38);
    v50 = CGTaggedColorGetColorSpace(a2, v43, v44, v45, v46, v47, v48, v49);
    MEMORY[0x1EEE9AC00](v50, v51);
    v53 = v73 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v53, v52);
    CGTaggedColorGetComponents(a2, v24, v54, v55, v56, v57, v58, v59);
    v60 = 0;
  }

  else
  {
    v42 = *(a2 + 56);
    v50 = *(a2 + 24);
    v60 = *(a2 + 32);
    MEMORY[0x1EEE9AC00](v31, v39);
    v53 = v73 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
    memcpy(v53, (a2 + 72), v61);
  }

  if (NumberOfComponents > v42)
  {
    return 1;
  }

  if (NumberOfComponents < v42)
  {
    return -1;
  }

  v62 = memcmp(v24, v53, 8 * NumberOfComponents);
  if (v62 > 0)
  {
    return 1;
  }

  if (v62 < 0)
  {
    return -1;
  }

  if (v40 && !v60)
  {
    return 1;
  }

  if (!v40 && v60)
  {
    return -1;
  }

  if (v40 && v60)
  {
    v63 = *(v40 + 16);
    v64 = *(v60 + 16);
    if (v63 <= v64)
    {
      if (v63 >= v64)
      {
        goto LABEL_31;
      }

      return -1;
    }

    return 1;
  }

LABEL_31:
  v65 = *(ColorSpace + 3);
  if (v65)
  {
    v66 = (v65 + 64);
  }

  else
  {
    v66 = 0;
  }

  v67 = *(v50 + 3);
  if (v67)
  {
    v68 = (v67 + 64);
  }

  else
  {
    v68 = 0;
  }

  v69 = bswap64(*v66);
  v70 = bswap64(*v68);
  if (v69 == v70 && (v69 = bswap64(v66[1]), v70 = bswap64(v68[1]), v69 == v70))
  {
    v71 = 0;
  }

  else if (v69 < v70)
  {
    v71 = -1;
  }

  else
  {
    v71 = 1;
  }

  if (v71 >= 1)
  {
    return 1;
  }

  else
  {
    return v71 >> 31;
  }
}

uint64_t CG::DisplayListRecorder::getPathColorResourcesAndUpdateFlags(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, _DWORD *a6)
{
  v10 = result;
  if (a3 < 2)
  {
    FillColor = CGGStateGetFillColor(a2);
    result = (*(*v10 + 8))(v10, FillColor);
    *a4 = result;
    *a5 = 0;
    if (*a4)
    {
      v15 = *(*a4 + 8) & 0x3400 | 0x100;
    }

    else
    {
      v15 = 256;
    }
  }

  else
  {
    if (a3 - 3 >= 2)
    {
      if (a3 != 2)
      {
        *a5 = 0;
        *a4 = 0;
        return result;
      }

      *a4 = 0;
    }

    else
    {
      v11 = CGGStateGetFillColor(a2);
      v12 = (*(*v10 + 8))(v10, v11);
      *a4 = v12;
      if (v12)
      {
        v13 = *(v12 + 8) & 0x3400 | 0x100;
      }

      else
      {
        v13 = 256;
      }

      *a6 |= v13;
    }

    StrokeColor = CGGStateGetStrokeColor(a2);
    result = (*(*v10 + 8))(v10, StrokeColor);
    *a5 = result;
    if (result)
    {
      v15 = *(result + 8) & 0x3400 | 0x200;
    }

    else
    {
      v15 = 512;
    }
  }

  *a6 |= v15;
  return result;
}

BOOL CG::CompareEntryStateDrawing::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v2 = *(v2 + 16);
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    v3 = *(v3 + 16);
  }

  if (v2)
  {
    v4 = *(v2 + 4);
    if (v3)
    {
LABEL_7:
      v5 = *(v3 + 4);
      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    if (v3)
    {
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_10:
  if (v4 < v5)
  {
    return 1;
  }

  if (v2)
  {
    LODWORD(v2) = *(v2 + 4);
  }

  if (v3)
  {
    LODWORD(v3) = *(v3 + 4);
  }

  if (v2 > v3)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v7 = *(v7 + 16);
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    v8 = *(v8 + 16);
  }

  if (v7)
  {
    v9 = *(v7 + 16);
    if (v8)
    {
LABEL_24:
      v10 = *(v8 + 16);
      goto LABEL_27;
    }
  }

  else
  {
    v9 = 0;
    if (v8)
    {
      goto LABEL_24;
    }
  }

  v10 = 0;
LABEL_27:
  if (v9 < v10)
  {
    return 1;
  }

  if (v7)
  {
    LODWORD(v7) = *(v7 + 16);
  }

  if (v8)
  {
    LODWORD(v8) = *(v8 + 16);
  }

  if (v7 > v8)
  {
    return 0;
  }

  v11 = *(a1 + 24);
  if (v11)
  {
    v11 = *(v11 + 16);
  }

  v12 = *(a2 + 24);
  if (v12)
  {
    v12 = *(v12 + 16);
  }

  if (v11)
  {
    v13 = *(v11 + 16);
    if (v12)
    {
LABEL_39:
      v14 = *(v12 + 16);
      goto LABEL_42;
    }
  }

  else
  {
    v13 = 0;
    if (v12)
    {
      goto LABEL_39;
    }
  }

  v14 = 0;
LABEL_42:
  if (v13 < v14)
  {
    return 1;
  }

  if (v11)
  {
    LODWORD(v11) = *(v11 + 16);
  }

  if (v12)
  {
    LODWORD(v12) = *(v12 + 16);
  }

  if (v11 > v12)
  {
    return 0;
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    v15 = *(v15 + 16);
  }

  v16 = *(a2 + 32);
  if (v16)
  {
    v16 = *(v16 + 16);
  }

  if (v15)
  {
    v17 = *(v15 + 16);
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v18 = *(v16 + 16);
  }

  else
  {
    v18 = 0;
  }

  if (v17 < v18)
  {
    return 1;
  }

  if (v15)
  {
    LODWORD(v15) = *(v15 + 16);
  }

  if (v16)
  {
    LODWORD(v16) = *(v16 + 16);
  }

  if (v15 > v16)
  {
    return 0;
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    v19 = *(v19 + 16);
  }

  v20 = *(a2 + 40);
  if (v20)
  {
    v20 = *(v20 + 16);
  }

  if (v19)
  {
    v21 = *(v19 + 16);
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v22 = *(v20 + 16);
  }

  else
  {
    v22 = 0;
  }

  if (v21 < v22)
  {
    return 1;
  }

  if (v19)
  {
    LODWORD(v19) = *(v19 + 16);
  }

  if (v20)
  {
    LODWORD(v20) = *(v20 + 16);
  }

  if (v19 > v20)
  {
    return 0;
  }

  v23 = *(a1 + 48);
  v24 = *(a2 + 48);
  if (v23 < v24)
  {
    return 1;
  }

  if (v23 > v24)
  {
    return 0;
  }

  v25 = *(a1 + 56);
  v26 = *(a2 + 56);
  if (v25 < v26)
  {
    return 1;
  }

  if (v25 > v26)
  {
    return 0;
  }

  v27 = *(a1 + 96);
  v28 = v27 << 26 >> 26;
  v29 = *(a2 + 96);
  if (v28 < v29 << 26 >> 26)
  {
    return 1;
  }

  if (v28 > v29 << 26 >> 26)
  {
    return 0;
  }

  if ((v27 & 0x40) == 0 && (v29 & 0x40) != 0)
  {
    return 1;
  }

  if ((v27 & 0x40) != 0 && (v29 & 0x40) == 0)
  {
    return 0;
  }

  if ((v27 & 0x80) == 0 && (v29 & 0x80) != 0)
  {
    return 1;
  }

  if ((v27 & 0x80) != 0 && (v29 & 0x80) == 0)
  {
    return 0;
  }

  v30 = v27 << 18 >> 26;
  if (v30 < v29 << 18 >> 26)
  {
    return 1;
  }

  if (v30 > v29 << 18 >> 26)
  {
    return 0;
  }

  if ((v27 & 0x4000) == 0 && (v29 & 0x4000) != 0)
  {
    return 1;
  }

  if ((v27 & 0x4000) != 0 && (v29 & 0x4000) == 0)
  {
    return 0;
  }

  v31 = *(a2 + 96) & 0x8000;
  if ((v27 & 0x8000) == 0 && v31)
  {
    return 1;
  }

  if ((v27 & 0x8000) != 0 && !v31)
  {
    return 0;
  }

  return *(a1 + 100) < *(a2 + 100);
}

const void *get_defaults()
{
  if (!_CFExecutableLinkedOnOrAfter())
  {
    should_enable_lcd_styles = 0;
  }

  v1 = 0;
  if (get_BOOLean_property("CGRIPShouldEnableLCDStyles", copy_local_domain_value, &v1))
  {
    should_enable_lcd_styles = v1;
  }

  result = get_BOOLean_property("CGRIPShouldUseGlyphBitmaps", copy_local_domain_value, &v1);
  if (result)
  {
    should_use_glyph_bitmaps = v1;
  }

  return result;
}

const void *defaults_setup(void *a1)
{
  get_BOOLean_property("CGFontUseLocalCache", copy_local_domain_value, &cache_glyph_bitmaps);

  return get_BOOLean_property("CGFontPrintBitmapStats", copy_local_domain_value, &print_statistics);
}

void load_set_data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = &links;
  v10 = 6;
  while (strcmp("__CGBitmapContextDelegateData", *v9))
  {
    v9 += 2;
    if (!--v10)
    {
      goto LABEL_7;
    }
  }

  if (v9[1])
  {
    set_data = v9[1];
    return;
  }

LABEL_7:

  CGPostError("Failed to load bitmap context.", v11, v12, v13, v14, v15, v16, v17, a9);
}

uint64_t CGImageNotificationCenter()
{
  if (get_notification_center_onceToken != -1)
  {
    dispatch_once(&get_notification_center_onceToken, &__block_literal_global_389);
  }

  return get_notification_center_image_notification_center;
}

uint64_t shape_accum_add(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *a1;
  if (v5 < 3)
  {
    return 0xFFFFFFFFLL;
  }

  if (a4 - a2 < 1 || a5 - a3 < 1)
  {
    return 0;
  }

  v7 = *(a1 + 2);
  v37 = *(a1 + 3);
  v9 = a1[1];
  v8 = a1[2];
  v35 = (a5 - a3) * (a4 - a2);
  v10 = -1;
  v11 = v8;
  do
  {
    if (v11 != v9)
    {
      v12 = v5;
      v13 = v9 + (((v11 - 1) * v11) >> 1);
      if (v11 < v9)
      {
        v13 = v11 + (((v9 - 1) * v9) >> 1);
      }

      v14 = a2;
      v15 = a3;
      v16 = a4;
      v17 = a5;
      result = shape_accum_cost(a2, a3, a4, a5, v35, &v7[4 * v11], (v37 + 4 * v13));
      if (!result)
      {
        a1[2] = v11;
        return result;
      }

      if (result < 0)
      {
        v10 = v11;
      }

      a5 = v17;
      a3 = v15;
      a4 = v16;
      a2 = v14;
      v5 = v12;
    }

    if (v11 + 1 == v5)
    {
      v11 = 0;
    }

    else
    {
      ++v11;
    }
  }

  while (v11 != v8);
  if (v10 < 1)
  {
    v19 = v9 == 0;
    v20 = 0x40000000;
    v21 = 1;
    v22 = v9;
    do
    {
      v23 = 0;
      do
      {
        if (*(*(a1 + 3) + 4 * (((v21 - 1) * v21) >> 1) + 4 * v23) < v20)
        {
          v20 = *(*(a1 + 3) + 4 * (((v21 - 1) * v21) >> 1) + 4 * v23);
          v22 = v21;
          v19 = v23;
        }

        ++v23;
      }

      while (v21 != v23);
      ++v21;
    }

    while (v21 != v5);
    if (v19 == v9)
    {
      v19 = v22;
    }

    else if (v22 != v9)
    {
      v24 = &v7[4 * v9];
      *v24 = a2;
      v24[1] = a4;
      v24[2] = a3;
      v24[3] = a5;
      v25 = &v7[4 * v22];
      LODWORD(a2) = *v25;
      LODWORD(a4) = v25[1];
      LODWORD(a3) = v25[2];
      LODWORD(a5) = v25[3];
      v9 = v22;
      *v25 = 0;
      *(v25 + 1) = 0;
    }

    v26 = &v7[4 * v19];
    v27 = *v26;
    a1[1] = v9;
    v38 = v26[1];
    v34 = v27;
    if (v27 > a2)
    {
      *v26 = a2;
      v34 = a2;
    }

    v36 = v26[2];
    if (v38 < a4)
    {
      v26[1] = a4;
      v38 = a4;
    }

    v28 = v26[3];
    if (v36 > a3)
    {
      v26[2] = a3;
      v36 = a3;
    }

    a1[2] = v19;
    if (v28 < a5)
    {
      v26[3] = a5;
      v28 = a5;
    }

    v29 = 0;
    v30 = *(a1 + 3);
    v31 = -1;
    do
    {
      if (v19 != v29)
      {
        v32 = v19 + ((v31 * v29) >> 1);
        if (v29 < v19)
        {
          v32 = (((v19 - 1) * v19) >> 1) + v29;
        }

        shape_accum_cost(v34, v36, v38, v28, (v28 - v36) * (v38 - v34), v7, (v30 + 4 * v32));
      }

      ++v29;
      ++v31;
      v7 += 4;
      result = 1;
    }

    while (v5 != v29);
  }

  else
  {
    v18 = &v7[4 * v9];
    *v18 = a2;
    v18[1] = a4;
    v18[2] = a3;
    v18[3] = a5;
    a1[1] = v10;
    a1[2] = v9;
    return 1;
  }

  return result;
}

uint64_t shape_accum_cost(int a1, int a2, int a3, int a4, int a5, int *a6, int *a7)
{
  v7 = *a6;
  v8 = a6[1];
  if (v8 <= *a6)
  {
    *a7 = 0;
    return 0xFFFFFFFFLL;
  }

  else
  {
    v9 = a6[2];
    v10 = a6[3];
    if (v7 >= a1)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a6;
    }

    if (v8 <= a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = a6[1];
    }

    v13 = v12 - v11;
    if (v9 >= a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = a6[2];
    }

    if (v10 <= a4)
    {
      v15 = a4;
    }

    else
    {
      v15 = a6[3];
    }

    v16 = (v15 - v14) * v13 - (a5 + (v10 - v9) * (v8 - *a6));
    if (v16)
    {
      if (v10 >= a4)
      {
        v10 = a4;
      }

      if (v9 <= a2)
      {
        v9 = a2;
      }

      if (v8 >= a3)
      {
        v8 = a3;
      }

      if (v7 <= a1)
      {
        v7 = a1;
      }

      v18 = v8 - v7;
      v19 = v10 - v9;
      v20 = (v10 - v9) * v18;
      if (v19 <= 0 || v18 <= 0)
      {
        v22 = 0;
      }

      else
      {
        v22 = v20;
      }

      v23 = v22 + v16;
      *a7 = v23;
      if (v23)
      {
        v24 = 0;
      }

      else
      {
        v24 = v20 == a5;
      }

      return !v24;
    }

    else
    {
      *a7 = 0;
      return 1;
    }
  }
}

uint64_t argb32_mark_constcolormask(uint64_t a1, double a2, double a3, double a4, int16x8_t a5)
{
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = *v5;
  }

  else
  {
    v6 = 4278190080;
  }

  return CGSColorMaskCopyARGB8888(v6, (*(a1 + 40) + *(a1 + 28) * *(a1 + 16) + 4 * *(a1 + 12)), *(a1 + 28), (*(a1 + 136) + *(a1 + 124) * *(a1 + 108) + *(a1 + 104)), *(a1 + 124), *(a1 + 4), *(a1 + 8), a2, a3, a4, a5);
}

uint64_t CGSColorMaskCopyARGB8888(uint64_t result, char *a2, int a3, unsigned __int8 *a4, int a5, int a6, int a7, double a8, double a9, double a10, int16x8_t a11)
{
  v11 = a3 - 4 * a6;
  v12 = a5 - a6;
  *v13.i8 = vdup_n_s32(result);
  v14 = vuzp1_s8(*v13.i8, *v13.i8);
  v15 = vuzp2_s8(*v13.i8, *v13.i8);
  if (result == -16777216)
  {
    if (a7 >= 1)
    {
      do
      {
        v16 = a6;
        if (a6 >= 4)
        {
          do
          {
            v18 = *a4;
            a4 += 4;
            v17 = v18;
            if (v18)
            {
              if (v17 == -1)
              {
                vst2_s8(a2, *v14.i8);
              }

              else
              {
                v13.i32[0] = v17;
                v48 = vld2_s8(a2);
                v19 = vzip1_s8(*v13.i8, *v13.i8);
                v20 = vmvn_s8(v19);
                v21 = vmull_u8(v48.val[0], v20);
                v48 = vmull_u8(v48.val[1], v20);
                *v21.i8 = vsubhn_s16(vshrq_n_u16(v21, 8uLL), vmvnq_s8(v21));
                v13 = vsubq_s16(v48, vmvnq_s8(vshlq_n_s32(vmovl_u16(v19), 0x18uLL)));
                v22 = vaddhn_s16(v13, vshrq_n_u16(v48, 8uLL));
                vst2_s8(a2, v21);
              }
            }

            a2 += 16;
            v16 -= 4;
          }

          while ((v16 + 4) > 7);
        }

        if (v16 >= 1)
        {
          v23 = v16 + 1;
          do
          {
            v25 = *a4++;
            v24 = v25;
            if (v25)
            {
              if (v24 == 255)
              {
                v26 = -16777216;
              }

              else
              {
                v27 = ((*a2 >> 8) & 0xFF00FF) * (v24 ^ 0xFF);
                result = (v27 >> 8) & 0xFF00FF;
                v26 = (((v24 << 24) | 0x10001) + v27 + result) & 0xFF00FF00 | (((*a2 & 0xFF00FF) * (v24 ^ 0xFF) + 65537 + ((((*a2 & 0xFF00FF) * (v24 ^ 0xFFu)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF;
              }

              *a2 = v26;
            }

            a2 += 4;
            --v23;
          }

          while (v23 > 1);
        }

        a2 += v11;
        a4 += v12;
        v28 = a7-- <= 1;
      }

      while (!v28);
    }
  }

  else if (a7 >= 1)
  {
    v29 = result & 0xFF00FF;
    v30 = (result >> 8) & 0xFF00FF;
    v31.i64[0] = 0x2000200020002;
    v31.i64[1] = 0x2000200020002;
    do
    {
      v32 = a6;
      if (a6 >= 4)
      {
        do
        {
          v34 = *a4;
          a4 += 4;
          v33 = v34;
          if (v34)
          {
            if (v33 == -1)
            {
              vst2_s8(a2, *v14.i8);
            }

            else
            {
              a11.i32[0] = v33;
              v49 = vld2_s8(a2);
              v35 = vzip1_s8(*a11.i8, *a11.i8);
              v36 = vmvn_s8(v35);
              v37 = vmull_u8(v14, v35);
              v38 = vmull_u8(v15, v35);
              v50.val[0] = vaddhn_s16(vmlal_u8(vaddq_s16(vsraq_n_u16(v37, v37, 8uLL), v31), v49.val[0], v36), vshrq_n_u16(vmull_u8(v49.val[0], v36), 8uLL));
              a11 = vmlal_u8(vaddq_s16(vsraq_n_u16(v38, v38, 8uLL), v31), v49.val[1], v36);
              v50.val[1] = vaddhn_s16(a11, vshrq_n_u16(vmull_u8(v49.val[1], v36), 8uLL));
              vst2_s8(a2, v50);
            }
          }

          a2 += 16;
          v32 -= 4;
        }

        while ((v32 + 4) > 7);
      }

      if (v32 >= 1)
      {
        v39 = v32 + 1;
        do
        {
          v41 = *a4++;
          v40 = v41;
          if (v41)
          {
            v42 = result;
            if (v40 != 255)
            {
              v43 = v29 * v40;
              v44 = v30 * v40;
              v45 = ((v29 * v40) >> 8) & 0xFF00FF;
              v46 = ((v30 * v40) >> 8) & 0xFF00FF;
              v47 = v40 ^ 0xFF;
              v42 = ((v43 + 131074 + (*a2 & 0xFF00FF) * v47 + v45 + ((((*a2 & 0xFF00FFu) * v47) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF | (v44 + 131074 + v46 + ((*a2 >> 8) & 0xFF00FF) * v47 + (((((*a2 >> 8) & 0xFF00FFu) * v47) >> 8) & 0xFF00FF)) & 0xFF00FF00;
            }

            *a2 = v42;
          }

          a2 += 4;
          --v39;
        }

        while (v39 > 1);
      }

      a2 += v11;
      a4 += v12;
      v28 = a7-- <= 1;
    }

    while (!v28);
  }

  return result;
}

unint64_t CGColorEqualToColorComponents(unint64_t result, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v11 = result;
    v12 = (result & 0x8000000000000000) != 0 ? CGTaggedColorGetColorSpace(result, a2, a3, a4, a5, a6, a7, a8) : *(result + 24);
    result = CGColorSpaceEqualToColorSpace(v12, a2);
    if (result)
    {
      if (v11 < 1)
      {
        v13 = 0;
      }

      else
      {
        v13 = *(v11 + 32);
      }

      if (v13 == a3)
      {
        Components = CGColorGetComponents(v11);
        if (v11 < 0)
        {
          NumberOfComponents = CGTaggedColorGetNumberOfComponents(v11, v14, v15, v16, v17, v18, v19, v20);
        }

        else
        {
          NumberOfComponents = *(v11 + 56);
        }

        ERROR_CGColor_ComponentsArrayIsNotReadable(a4);
        ERROR_CGColor_ComponentsArrayNotLongEnough(a4, NumberOfComponents - 1);
        return memcmp(Components, a4, 8 * NumberOfComponents) == 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CGContextDelegateGetCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    result = get_callback_address(result, a2, "CGContextDelegateGetCallback", a4, a5, a6, a7, a8);
    if (result)
    {
      return *result;
    }
  }

  return result;
}

void CGContextSetStrokeColor(CGContextRef c, const CGFloat *components)
{
  if (c && *(c + 4) == 1129601108)
  {
    if (components)
    {

      set_stroke_color_with_components(c, 0, components, v2, v3, v4, v5, v6, v8);
    }

    else
    {
      CGPostError("%s: components may not be NULL.", c, components, v2, v3, v4, v5, v6, "CGContextSetStrokeColor");
    }
  }

  else
  {

    handle_invalid_context("CGContextSetStrokeColor", c, components, v2, v3, v4, v5, v6);
  }
}

uint64_t CGGStateGetStrokeColor(uint64_t a1)
{
  result = *(*(a1 + 128) + 40);
  if (!result)
  {
    v3 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericGrayGamma2_2");
    *(*(a1 + 128) + 40) = CGColorSpaceCopyDefaultColor(v3);
    CGColorSpaceRelease(v3);
    return *(*(a1 + 128) + 40);
  }

  return result;
}

uint64_t CGColorCreateWithContentHeadroom(CGColorSpace *a1, float a2, double a3, double a4, double a5, double a6)
{
  v22[4] = *MEMORY[0x1E69E9840];
  if (CGColorSpaceGetModel(a1) == kCGColorSpaceModelRGB)
  {
    adjusted_headroom(a1, a2);
    if (a2 == 0.0 || v19 == a2)
    {
      *v22 = a3;
      *&v22[1] = a4;
      *&v22[2] = a5;
      *&v22[3] = a6;
      return create_color(a1, v22, a2);
    }
  }

  else
  {
    CGPostError("%s requires RGB color space", v12, v13, v14, v15, v16, v17, v18, "CGColorCreateWithContentHeadroom");
  }

  return 0;
}

void CGContextSetShouldAntialias(CGContextRef c, BOOL shouldAntialias)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      CGGStateSetShouldAntialias(*(c + 12), shouldAntialias);
      return;
    }

    v8 = c;
  }

  else
  {
    v8 = 0;
  }

  handle_invalid_context("CGContextSetShouldAntialias", v8, v2, v3, v4, v5, v6, v7);
}

void CGContextSetFillColor(CGContextRef c, const CGFloat *components)
{
  if (c && *(c + 4) == 1129601108)
  {
    if (components)
    {

      set_fill_color_with_components(c, 0, components, v2, v3, v4, v5, v6, v8);
    }

    else
    {
      CGPostError("%s: components may not be NULL.", c, components, v2, v3, v4, v5, v6, "CGContextSetFillColor");
    }
  }

  else
  {

    handle_invalid_context("CGContextSetFillColor", c, components, v2, v3, v4, v5, v6);
  }
}

uint64_t path_element_bounding_box(int a1, const CGPoint *a2, double *a3, double *a4, double *a5, double *a6, float64x2_t *a7, unint64_t *a8)
{
  result = 0;
  v80[3] = *MEMORY[0x1E69E9840];
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v30 = (*a8)++;
      a7[1] = a2[v30];
      v31 = (*a8)++;
      a7[2] = a2[v31];
      v18 = (*a8)++;
      a7[3] = a2[v18];
      v32 = *a7;
      v33 = a7[1];
      __asm { FMOV            V3.2D, #3.0 }

      v38 = vmulq_f64(vsubq_f64(v33, *a7), _Q3);
      v39 = vmlaq_f64(vnegq_f64(v38), _Q3, vsubq_f64(a7[2], v33));
      v40 = vsubq_f64(vsubq_f64(vsubq_f64(a7[3], v39), v38), *a7);
      v41 = vmulq_f64(v39, v39).f64[0];
      v42 = 3.0 * v40.f64[0];
      v43 = 3.0 * v40.f64[0] * v38.f64[0];
      v44 = v41 - v43;
      v45 = vabdd_f64(v41, v43) > (v41 + fabs(v43)) * 0.0001;
      v46 = 0.0;
      if (v45)
      {
        v46 = v44;
      }

      if (v46 >= 0.0)
      {
        v47 = sqrt(v46);
        v48 = -1.0;
        if (v39.f64[0] < 0.0)
        {
          v48 = 1.0;
        }

        v49 = -(v39.f64[0] - v48 * v47);
        v50 = v42 * 0.0001;
        v51 = v42 * 0.9999;
        if (v40.f64[0] > 0.0 && (v50 < v49 ? (v52 = v49 < v51) : (v52 = 0), v52) || (v16 = 0, v53 = &v79, v40.f64[0] < 0.0) && (v51 < v49 ? (v54 = v49 < v50) : (v54 = 0), v54))
        {
          v53 = v80;
          v79 = vmlaq_n_f64(v32, vmlaq_n_f64(v38, vmlaq_n_f64(v39, v40, v49 / v42), v49 / v42), v49 / v42);
          v16 = 1;
        }

        v55 = v49 * 0.0001;
        v56 = v49 * 0.9999;
        v58 = v49 > 0.0 && v55 < v38.f64[0] && v38.f64[0] < v56;
        if (v58 || (v49 < 0.0 ? (v59 = v56 < v38.f64[0]) : (v59 = 0), v59 ? (v60 = v38.f64[0] < v55) : (v60 = 0), v60))
        {
          *v53 = vmlaq_n_f64(v32, vmlaq_n_f64(v38, vmlaq_n_f64(v39, v40, v38.f64[0] / v49), v38.f64[0] / v49), v38.f64[0] / v49);
          ++v16;
        }
      }

      else
      {
        v16 = 0;
      }

      result = get_y_inflections_3(a7, 0, v78);
LABEL_59:
      v29 = a2[v18];
      goto LABEL_60;
    }

    v16 = 0;
    if (a1 != 4)
    {
      goto LABEL_61;
    }
  }

  else if (a1 >= 2)
  {
    v16 = 0;
    if (a1 != 2)
    {
      goto LABEL_61;
    }

    v17 = (*a8)++;
    a7[1] = a2[v17];
    v18 = (*a8)++;
    a7[2] = a2[v18];
    v19 = vsubq_f64(a7[1], *a7);
    v20 = vaddq_f64(v19, v19);
    v21 = vsubq_f64(vsubq_f64(a7[2], v20), *a7);
    v22 = -2.0 * v21.f64[0] * 0.0001;
    v23 = -2.0 * v21.f64[0] * 0.9999;
    v25 = v21.f64[0] > 0.0 && v23 < v20.f64[0] && v20.f64[0] < v22;
    if (v25 || (v21.f64[0] < 0.0 ? (v26 = v22 < v20.f64[0]) : (v26 = 0), v26 ? (v27 = v20.f64[0] < v23) : (v27 = 0), v27))
    {
      v79 = vmlaq_n_f64(*a7, vmlaq_n_f64(v20, v21, -v20.f64[0] / (v21.f64[0] + v21.f64[0])), -v20.f64[0] / (v21.f64[0] + v21.f64[0]));
      v16 = 1;
    }

    else
    {
      v16 = 0;
    }

    result = get_y_inflections_2(a7, 0, v78);
    goto LABEL_59;
  }

  result = 0;
  v16 = 0;
  v28 = (*a8)++;
  v29 = a2[v28];
LABEL_60:
  *a7 = v29;
LABEL_61:
  v61 = a7->f64[0];
  v62 = a7->f64[1];
  v63 = *a3;
  if (a7->f64[0] < *a3)
  {
    v63 = a7->f64[0];
  }

  *a3 = v63;
  v64 = *a4;
  if (v62 < *a4)
  {
    v64 = v62;
  }

  *a4 = v64;
  if (*a5 >= v61)
  {
    v61 = *a5;
  }

  *a5 = v61;
  v65 = *a6;
  if (*a6 < v62)
  {
    v65 = v62;
  }

  *a6 = v65;
  if (v16)
  {
    v66 = &v79.f64[1];
    do
    {
      v67 = *(v66 - 1);
      v68 = *v66;
      v69 = *a3;
      if (v67 < *a3)
      {
        v69 = *(v66 - 1);
      }

      *a3 = v69;
      v70 = *a4;
      if (v68 < *a4)
      {
        v70 = v68;
      }

      *a4 = v70;
      if (*a5 >= v67)
      {
        v67 = *a5;
      }

      *a5 = v67;
      v71 = *a6;
      if (*a6 < v68)
      {
        v71 = v68;
      }

      *a6 = v71;
      v66 += 2;
      --v16;
    }

    while (v16);
  }

  if (result)
  {
    v72 = &v78[0].f64[1];
    do
    {
      v73 = *(v72 - 1);
      v74 = *v72;
      v75 = *a3;
      if (v73 < *a3)
      {
        v75 = *(v72 - 1);
      }

      *a3 = v75;
      v76 = *a4;
      if (v74 < *a4)
      {
        v76 = v74;
      }

      *a4 = v76;
      if (*a5 >= v73)
      {
        v73 = *a5;
      }

      *a5 = v73;
      v77 = *a6;
      if (*a6 < v74)
      {
        v77 = v74;
      }

      *a6 = v77;
      v72 += 2;
      --result;
    }

    while (result);
  }

  return result;
}

double CG::Path::path_bounding_box(CG::Path *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = *this;
  if (*this > 3)
  {
    if (v9 > 5)
    {
      if (v9 != 6)
      {
        if (v9 != 7)
        {
          goto LABEL_12;
        }

        return CG::Path::bounding_box(this, a2, a3, a4, a5, a6, a7, a8);
      }

      if (*(this + 7) < 6.28318531)
      {
        goto LABEL_24;
      }
    }

    else if (v9 != 4)
    {
      if (v9 != 5)
      {
        goto LABEL_12;
      }

      return CG::Path::bounding_box(this, a2, a3, a4, a5, a6, a7, a8);
    }

LABEL_19:
    if ((*(this + 2) != 0.0 || *(this + 3) != 0.0) && (*(this + 1) != 0.0 || *(this + 4) != 0.0))
    {
      goto LABEL_24;
    }

    return CG::Path::bounding_box(this, a2, a3, a4, a5, a6, a7, a8);
  }

  if (v9 < 2)
  {
    return CG::Path::bounding_box(this, a2, a3, a4, a5, a6, a7, a8);
  }

  if (v9 == 2 || v9 == 3)
  {
    goto LABEL_19;
  }

LABEL_12:
  if ((v9 & 0xFFFFFFFE) == 8)
  {
    v20 = INFINITY;
    v21 = INFINITY;
    v18 = -INFINITY;
    v19 = -INFINITY;
    v17 = 0;
    if (v9 == 9)
    {
      if (*(this + 2))
      {
        v10 = 0;
        v11 = -1;
        do
        {
          path_element_bounding_box(*(*(this + 4) + *(this + 3) + v11), *(this + 4), &v21, &v20, &v19, &v18, &v22, &v17);
          ++v10;
          --v11;
        }

        while (v10 < *(this + 2));
      }
    }

    else if (*(this + 5))
    {
      v15 = 0;
      v16 = *(this + 3);
      do
      {
        path_element_bounding_box(v16 & 7, this + 1, &v21, &v20, &v19, &v18, &v22, &v17);
        v16 >>= 3;
        ++v15;
      }

      while (v15 < *(this + 5));
    }

    return v21;
  }

LABEL_24:
  CG::Path::Path(&v22, this);
  if (LODWORD(v22.x) != 9)
  {
    CG::Path::convert_to_huge_(&v22);
  }

  CG::Path::path_bounding_box(&v22);
  v12 = v13;
  CG::Path::~Path(&v22);
  return v12;
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  v8 = 0.0;
  if (path && ((CGPathDisableTypeValidation & 1) != 0 || (v10 = CFGetTypeID(path), v10 == CGPathGetTypeID())))
  {
    v11 = CG::Path::path_bounding_box((path + 16), v1, v2, v3, v4, v5, v6, v7);
    v8 = v14;
  }

  else
  {
    v12 = INFINITY;
    v11 = INFINITY;
    v13 = 0.0;
  }

  v15 = v8;
  result.size.height = v13;
  result.size.width = v15;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

uint64_t get_y_inflections_3(float64x2_t *a1, double *a2, float64x2_t *a3)
{
  v3 = *a1;
  v4 = a1[1];
  __asm { FMOV            V3.2D, #3.0 }

  v9 = vmulq_f64(vsubq_f64(v4, *a1), _Q3);
  v10 = vmlaq_f64(vnegq_f64(v9), _Q3, vsubq_f64(a1[2], v4));
  v11 = vsubq_f64(vsubq_f64(vsubq_f64(a1[3], v10), v9), *a1);
  v12 = vmuld_lane_f64(v10.f64[1], v10, 1);
  v13 = vmuld_lane_f64(3.0, v11, 1);
  v14 = vmuld_lane_f64(v13, v9, 1);
  v15 = v12 - v14;
  if (vabdd_f64(v12, v14) <= (v12 + fabs(v14)) * 0.0001)
  {
    v15 = 0.0;
  }

  if (v15 < 0.0)
  {
    return 0;
  }

  v17 = sqrt(v15);
  v18 = -1.0;
  if (v10.f64[1] < 0.0)
  {
    v18 = 1.0;
  }

  v19 = -(v10.f64[1] - v18 * v17);
  v20 = v13 * 0.0001;
  v21 = v13 * 0.9999;
  if (v11.f64[1] > 0.0 && (v20 < v19 ? (_NF = v19 < v21) : (_NF = 0), _NF) || (result = 0, v11.f64[1] < 0.0) && (v21 < v19 ? (v23 = v19 < v20) : (v23 = 0), v23))
  {
    v24 = v19 / v13;
    if (a2)
    {
      *a2 = v24;
    }

    if (a3)
    {
      *a3 = vmlaq_n_f64(v3, vmlaq_n_f64(v9, vmlaq_n_f64(v10, v11, v24), v24), v24);
    }

    result = 1;
  }

  v25 = v19 * 0.0001;
  v26 = v19 * 0.9999;
  v28 = v19 > 0.0 && v25 < v9.f64[1] && v9.f64[1] < v26;
  if (v28 || (v19 < 0.0 ? (v29 = v26 < v9.f64[1]) : (v29 = 0), v29 ? (v30 = v9.f64[1] < v25) : (v30 = 0), v30))
  {
    v31 = v9.f64[1] / v19;
    if (a2)
    {
      a2[result] = v31;
    }

    if (a3)
    {
      a3[result] = vmlaq_n_f64(v3, vmlaq_n_f64(v9, vmlaq_n_f64(v10, v11, v31), v31), v31);
    }

    ++result;
  }

  return result;
}

uint64_t CGContextDelegateDrawPathDirect(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef cf, uint64_t a6)
{
  if (result)
  {
    if (cf && ((v11 = result, (CGPathDisableTypeValidation & 1) != 0) || (v12 = CFGetTypeID(cf), v12 == CGPathGetTypeID())))
    {
      v13 = *(v11 + 232);
      if (v13)
      {

        return v13(v11, a2, a3, a4, cf, a6);
      }

      else
      {
        return 1006;
      }
    }

    else
    {
      return 1001;
    }
  }

  return result;
}

void CGContextDrawPathDirect(uint64_t a1, CGPathDrawingMode a2, const CGPath *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v14 = 0;
LABEL_14:

    handle_invalid_context("CGContextDrawPathDirect", v14, a3, a4, a5, a6, a7, a8);
    return;
  }

  if (*(a1 + 16) != 1129601108)
  {
    v14 = a1;
    goto LABEL_14;
  }

  v12 = *(a1 + 168);
  if (v12)
  {
    CFRelease(v12);
  }

  *(a1 + 168) = 0;
  if (path_coordinates_are_safe(a3))
  {
    v13 = *(*(*(a1 + 96) + 128) + 8);
    if (v13 > 0.0 || v13 == -1.0905473e16)
    {
      if (a2 == -1)
      {
        return;
      }

      goto LABEL_23;
    }

    if (a2 > kCGPathStroke)
    {
      if (a2 == kCGPathFillStroke)
      {
        a2 = kCGPathFill;
      }

      else if (a2 == kCGPathEOFillStroke)
      {
        a2 = kCGPathEOFill;
      }

      goto LABEL_23;
    }

    if (a2 != -1 && a2 != kCGPathStroke)
    {
LABEL_23:
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = __CGContextDrawPathDirect_block_invoke;
      v15[3] = &__block_descriptor_tmp_3_14816;
      v16 = a2;
      v15[4] = a1;
      v15[5] = a4;
      if (draw_path(a2, a3, v15) == 1006)
      {
        CGContextAddPath(a1, a3);
        CGContextDrawPath(a1, a2);
      }
    }
  }
}

BOOL path_equal(CGPathRef path1, const CGPath *a2)
{
  if (path1 == a2)
  {
    return 1;
  }

  result = 0;
  if (path1)
  {
    if (a2)
    {
      return CGPathEqualToPath(path1, a2);
    }
  }

  return result;
}

BOOL CGPathEqualToPath(CGPathRef path1, CGPathRef path2)
{
  if (path1 == path2)
  {
    goto LABEL_62;
  }

  if (!path1)
  {
    goto LABEL_61;
  }

  if (CGPathDisableTypeValidation)
  {
    if (!path2)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v4 = CFGetTypeID(path1);
    TypeID = CGPathGetTypeID();
    v6 = 0;
    if (!path2 || v4 != TypeID)
    {
      return v6 & 1;
    }

    if ((CGPathDisableTypeValidation & 1) == 0)
    {
      v7 = CFGetTypeID(path2);
      if (v7 != CGPathGetTypeID())
      {
        goto LABEL_61;
      }
    }
  }

  v8 = *(path1 + 4);
  if (v8 != *(path2 + 4))
  {
LABEL_61:
    v6 = 0;
    return v6 & 1;
  }

  v6 = 1;
  if (v8 <= 4)
  {
    if (v8 > 2)
    {
      if (v8 != 3)
      {
        if (*(path1 + 72) != *(path2 + 72) || *(path1 + 73) != *(path2 + 73))
        {
          goto LABEL_61;
        }

LABEL_33:
        if (*(path1 + 3) == *(path2 + 3))
        {
          v6 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(path1 + 2), *(path2 + 2)), vceqq_f64(*(path1 + 3), *(path2 + 3))))) & (*(path1 + 8) == *(path2 + 8));
          return v6 & 1;
        }

        goto LABEL_61;
      }

      v6 = 0;
      if (*(path1 + 9) != *(path2 + 9))
      {
        return v6 & 1;
      }

      if (*(path1 + 10) != *(path2 + 10))
      {
        return v6 & 1;
      }

      v6 = 0;
      if (*(path1 + 11) != *(path2 + 11))
      {
        return v6 & 1;
      }

      if (*(path1 + 12) != *(path2 + 12))
      {
        return v6 & 1;
      }

      v6 = 0;
      if (*(path1 + 13) != *(path2 + 13))
      {
        return v6 & 1;
      }

      if (*(path1 + 14) != *(path2 + 14))
      {
        return v6 & 1;
      }

      v6 = 0;
      if (*(path1 + 15) != *(path2 + 15))
      {
        return v6 & 1;
      }

      v14 = *(path1 + 16);
      v15 = *(path2 + 16);
    }

    else
    {
      if (v8 == 1)
      {
        goto LABEL_33;
      }

      if (v8 != 2)
      {
        return v6 & 1;
      }

      v6 = 0;
      if (*(path1 + 9) != *(path2 + 9))
      {
        return v6 & 1;
      }

      v14 = *(path1 + 10);
      v15 = *(path2 + 10);
    }

    if (v14 != v15)
    {
      return v6 & 1;
    }

    goto LABEL_33;
  }

  if (v8 <= 6)
  {
    if (v8 == 5)
    {
      v6 = 0;
      if (*(path1 + 3) == *(path2 + 3) && *(path1 + 4) == *(path2 + 4))
      {
        v6 = *(path1 + 5) == *(path2 + 5);
        if (*(path1 + 6) != *(path2 + 6))
        {
          v6 = 0;
        }
      }

      return v6 & 1;
    }

    if (*(path1 + 9) != *(path2 + 9))
    {
      goto LABEL_61;
    }

    goto LABEL_33;
  }

  if (v8 != 7)
  {
    if (v8 != 8)
    {
      if (v8 == 9)
      {
        v9 = *(path1 + 4);
        if (v9 != *(path2 + 4))
        {
          goto LABEL_61;
        }

        v10 = *(path1 + 3);
        if (v10 != *(path2 + 3))
        {
          goto LABEL_61;
        }

        v11 = *(path1 + 6);
        v12 = &v11[*(path1 + 5) - v9];
        v13 = *(path2 + 6);
        if (memcmp(v12, &v13[*(path2 + 5) - v9], v9))
        {
          goto LABEL_61;
        }

        v6 = memcmp(v11, v13, 16 * v10) == 0;
      }

      return v6 & 1;
    }

    v19 = *(path1 + 12);
    if (__PAIR64__(*(path1 + 13), v19) != __PAIR64__(*(path2 + 13), *(path2 + 12)) || *(path1 + 7) != *(path2 + 7))
    {
      goto LABEL_61;
    }

    if (*(path1 + 12))
    {
      v20 = (path1 + 32);
      v21 = (path2 + 32);
      v22 = v19 - 1;
      do
      {
        v23 = *v20++;
        v24 = v23;
        v25 = *v21++;
        v26 = vmovn_s64(vceqq_f64(v24, v25));
        v6 = v26.i8[0] & v26.i8[4];
        v28 = v22-- != 0;
      }

      while ((v26.i8[0] & v26.i8[4] & 1) != 0 && v28);
      return v6 & 1;
    }

LABEL_62:
    v6 = 1;
    return v6 & 1;
  }

  v16 = *(path1 + 3);
  v17 = *(path2 + 3);

  return CGRegionEqualToRegion(v16, v17);
}

void CGPathApplyWithBlock2(CFTypeRef cf, uint64_t a2)
{
  if (cf)
  {
    if ((CGPathDisableTypeValidation & 1) != 0 || (v4 = CFGetTypeID(cf), v4 == CGPathGetTypeID()))
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 0x40000000;
      v5[2] = __CGPathApplyWithBlock2_block_invoke;
      v5[3] = &unk_1E6E32B18;
      v5[4] = a2;
      CG::Path::apply(cf + 16, v5);
    }
  }
}

uint64_t __CGPathApplyWithBlock2_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v4 = a2;
  v5 = a3;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), &v4);
}

const void *__log_buffer_check_in_crash_reporter_block_invoke()
{
  result = get_BOOLean_property("LOG_DATA_PROVIDER_BUFFER_CHECK", copy_local_domain_value, &log_buffer_check_in_crash_reporter_status);
  log_buffer_check_in_crash_reporter_status = result;
  return result;
}

uint64_t mask_create(unint64_t Length, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, CGDataProviderRef provider, double *a7, uint64_t a8, int a9)
{
  v10 = Length;
  if (!Length || !a2)
  {
    CGPostError("%s: invalid image mask size: %lu x %lu.", a2, a3, a4, a5, provider, a7, a8, "mask_create");
    return 0;
  }

  if (a3 > 8 || ((1 << a3) & 0x116) == 0)
  {
    CGPostError("%s: invalid image mask bits/component: %lu.", a2, a3, a4, a5, provider, a7, a8, "mask_create");
    return 0;
  }

  if (a3 > a4)
  {
    CGPostError("%s: invalid image mask bits/pixel: %lu.", a2, a3, a4, a5, provider, a7, a8, "mask_create");
    return 0;
  }

  if (0xFFFFFFFFFFFFFFF8 / a4 < a2)
  {
    goto LABEL_11;
  }

  if (0xFFFFFFFFFFFFFFF8 / a4 < Length)
  {
    CGPostError("%s: invalid image mask width.", a2, a3, a4, a5, provider, a7, a8, "mask_create");
    return 0;
  }

  if (0x7FFFFFF8 / a4 < a2)
  {
LABEL_11:
    CGPostError("%s: unsupported image mask height: %lu.", a2, a3, a4, a5, provider, a7, a8, "mask_create");
    return 0;
  }

  if (0x7FFFFFF8 / a4 < Length)
  {
    CGPostError("%s: unsupported image mask width: %lu.", a2, a3, a4, a5, provider, a7, a8, "mask_create");
    return 0;
  }

  v15 = a5;
  if (a5 >> 31)
  {
    CGPostError("%s: unsupported image mask bytes/row: %lu.", a2, a3, a4, a5, provider, a7, a8, "mask_create");
    return 0;
  }

  if (a5 < (a4 * Length + 7) >> 3)
  {
    CGPostError("%s: invalid image mask bits/pixel or bytes/row.", a2, a3, a4, a5, provider, a7, a8, "mask_create");
    return 0;
  }

  v16 = a8;
  v18 = provider;
  if (a3 != a4 && (a4 & 7) != 0)
  {
    CGPostError("%s: invalid image mask bits/pixel.", a2, a3, a4, a5, provider, a7, a8, "mask_create");
    return 0;
  }

  if (!provider)
  {
    CGPostError("%s: invalid image mask provider: NULL.", a2, a3, a4, a5, 0, a7, a8, "mask_create");
    return 0;
  }

  if (a3 == a4)
  {
    v19 = 0;
  }

  else
  {
    v23 = CGDataProviderCopyData(provider);
    if (!v23)
    {
      return 0;
    }

    v24 = v23;
    BytePtr = CFDataGetBytePtr(v23);
    if (!BytePtr)
    {
      CFRelease(v24);
      return 0;
    }

    v26 = compress_data(BytePtr, v10, a2, a3, a4, v15, a9);
    CFRelease(v24);
    if (!v26)
    {
      return 0;
    }

    v19 = CGDataProviderCreateWithCFData(v26);
    CFRelease(v26);
    v15 = CFDataGetLength(v26) / a2;
    Length = CFDataGetLength(v26);
    if (Length != v15 * a2)
    {
      CFDataGetLength(v26);
      _CGHandleAssert("mask_create", 1042, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImage.c", "unsigned_cast(CFDataGetLength(new_data)) == bytes_per_row * height", "bytes per row (%lu) doesn't evenly divide in the data size (%lu)", v27, v28, v29, v15);
    }

    v18 = v19;
    if (!v19)
    {
      return 0;
    }
  }

  image_base = create_image_base(Length, a2, a3, a4, a5, provider, a7, a8);
  v13 = image_base;
  if (!image_base)
  {
    v22 = v18;
    goto LABEL_42;
  }

  *(image_base + 40) = v10;
  *(image_base + 48) = a2;
  *(image_base + 56) = a3;
  *(image_base + 64) = a3;
  *(image_base + 72) = v15;
  *(image_base + 32) = 0;
  *(image_base + 144) = 0;
  CGDataProviderRetain(v18);
  *(v13 + 152) = v18;
  if (v16)
  {
    v21 = 50331649;
  }

  else
  {
    v21 = 33554433;
  }

  *(v13 + 36) = v21 | *(v13 + 36) & 0xF0FF0000;
  *(v13 + 200) = 0;
  *(v13 + 208) = 0;
  *(v13 + 232) = 0u;
  *(v13 + 248) = 0u;
  cgimage_set_decode_array(v13, a7, 1uLL);
  if (v19)
  {
    v22 = v19;
LABEL_42:
    CFRelease(v22);
  }

  return v13;
}

uint64_t CGFontStrikeGetSize(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 104));
  v2 = *(a1 + 88);
  os_unfair_lock_unlock((a1 + 104));
  return v2;
}

BOOL CGPathIsRect(CGPathRef path, CGRect *rect)
{
  if (!path)
  {
    return 0;
  }

  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v4 = CFGetTypeID(path);
    if (v4 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  return CG::Path::is_rect((path + 16), rect, 0);
}

uint64_t CG::Path::is_rect(CG::Path *this, CGRect *a2, CGAffineTransform *a3)
{
  if (*this == 8)
  {
    v6 = *(this + 3);
    if (v6 == 135752 || v6 == 16968)
    {
      v8 = *(this + 4);
      v9 = vdupq_n_s64(0x7FF0000000000000uLL);
      v10 = vdupq_n_s64(0xFFF0000000000000);
      if (!*(this + 4))
      {
LABEL_40:
        if (a2)
        {
          a2->origin = v9;
          a2->size = vsubq_f64(v10, v9);
        }

        if (a3)
        {
          *a3 = CGAffineTransformIdentity;
        }

        return 1;
      }

      v11 = (this + 16);
      v12 = *(this + 4);
      do
      {
        v13 = *v11++;
        v9 = vbslq_s8(vcgtq_f64(v9, v13), v13, v9);
        v10 = vbslq_s8(vcgtq_f64(v13, v10), v13, v10);
        --v12;
      }

      while (v12);
      v14 = (this + 24);
      v15 = *(this + 4);
      while (1)
      {
        v16 = *(v14 - 1);
        if (v16 != v9.x && v16 != v10.f64[0])
        {
          break;
        }

        if (*v14 != v9.y && *v14 != v10.f64[1])
        {
          break;
        }

        v14 += 2;
        if (!--v15)
        {
          if (v8 != 1)
          {
            v19 = 0;
            v20 = 0;
            v21 = *(this + 2);
            v22 = *(this + 3);
            v23 = v8 - 1;
            v24 = (this + 40);
            v25 = 4;
            while (1)
            {
              v26 = *(v24 - 1);
              v27 = *v24;
              if (v25)
              {
                result = 0;
                if ((v26 != v21) == (*v24 != v22) || v19 && v26 != v21 || v20 && *v24 != v22)
                {
                  return result;
                }

                v20 = v27 != v22;
                v19 = v26 != v21;
              }

              else if (v26 != v21 || v27 != v22)
              {
                return 0;
              }

              --v25;
              v24 += 2;
              v22 = v27;
              v21 = v26;
              if (!--v23)
              {
                goto LABEL_40;
              }
            }
          }

          goto LABEL_40;
        }
      }
    }

    return 0;
  }

  if (*this != 1)
  {
    return 0;
  }

  if (!a3)
  {
    v30 = *(this + 1);
    v31 = *(this + 2);
    v32 = *(this + 3);
    if (v31 == 0.0 && v32 == 0.0)
    {
      v33 = *(this + 4);
    }

    else
    {
      if (v30 != 0.0)
      {
        return 0;
      }

      v33 = *(this + 4);
      if (v33 != 0.0)
      {
        return 0;
      }
    }

    if (v30 * v33 - v31 * v32 >= 0.0)
    {
      if (a2)
      {
        v34 = *(this + 24);
        *&v38.a = *(this + 8);
        *&v38.c = v34;
        *&v38.tx = *(this + 40);
        a2->origin.x = transform_unit_rect(&v38);
        a2->origin.y = v35;
        a2->size.width = v36;
        a2->size.height = v37;
      }

      return 1;
    }

    return 0;
  }

  if (a2)
  {
    *a2 = unit_rect;
  }

  v4 = *(this + 8);
  v5 = *(this + 40);
  *&a3->c = *(this + 24);
  *&a3->tx = v5;
  *&a3->a = v4;
  return 1;
}

char *CGPathIsRoundedRect(char *cf, CGRect *a2, float64_t *a3, float64_t *a4)
{
  if (cf)
  {
    v7 = cf;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v8 = CFGetTypeID(cf), v8 == CGPathGetTypeID()))
    {
      cf = CG::Path::is_rounded_rect((v7 + 16), a2, &v9, 0);
      if (cf)
      {
        if (a3)
        {
          *a3 = v9.f64[0];
        }

        if (a4)
        {
          *a4 = v9.f64[1];
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return cf;
}

uint64_t CG::Path::is_rounded_rect(CG::Path *this, CGRect *a2, float64x2_t *a3, CGAffineTransform *a4)
{
  if (*this != 2)
  {
    return 0;
  }

  v17 = v4;
  v18 = v5;
  if (a4)
  {
    if (a2)
    {
      *a2 = unit_rect;
    }

    if (a3)
    {
      *a3 = *(this + 56);
    }

    v9 = *(this + 8);
    v10 = *(this + 40);
    *&a4->c = *(this + 24);
    *&a4->tx = v10;
    *&a4->a = v9;
  }

  else
  {
    if ((*(this + 2) != 0.0 || *(this + 3) != 0.0) && (*(this + 1) != 0.0 || *(this + 4) != 0.0))
    {
      return 0;
    }

    if (a2)
    {
      v12 = *(this + 24);
      *&v16.a = *(this + 8);
      *&v16.c = v12;
      *&v16.tx = *(this + 40);
      a2->origin.x = transform_unit_rect(&v16);
      a2->origin.y = v13;
      a2->size.width = v14;
      a2->size.height = v15;
    }

    if (a3)
    {
      *a3 = vabsq_f64(vmlaq_n_f64(vmulq_n_f64(*(this + 24), *(this + 8)), *(this + 8), *(this + 7)));
    }
  }

  return 1;
}

uint64_t CG::Path::is_ellipse(CG::Path *this, CGRect *a2, BOOL *a3, BOOL *a4, CGAffineTransform *a5)
{
  if (*this != 4)
  {
    return 0;
  }

  v19 = v5;
  v20 = v6;
  if (a4)
  {
    if (a2)
    {
      *a2 = unit_rect;
    }

    if (a3)
    {
      *a3 = *(this + 56);
    }

    v10 = *(this + 8);
    v11 = *(this + 40);
    *(a4 + 1) = *(this + 24);
    *(a4 + 2) = v11;
    *a4 = v10;
  }

  else
  {
    if ((*(this + 2) != 0.0 || *(this + 3) != 0.0) && (*(this + 1) != 0.0 || *(this + 4) != 0.0))
    {
      return 0;
    }

    v13 = *(this + 24);
    *&v18.a = *(this + 8);
    *&v18.c = v13;
    *&v18.tx = *(this + 40);
    v14 = transform_unit_rect(&v18);
    if (a2)
    {
      a2->origin.x = v14;
      a2->origin.y = v15;
      a2->size.width = v16;
      a2->size.height = v17;
    }

    if (a3)
    {
      *a3 = *(this + 56);
    }
  }

  return 1;
}

uint64_t CGPathIsEllipse(char *cf, CGRect *a2, uint64_t a3, uint64_t a4, CGAffineTransform *a5)
{
  if (!cf)
  {
    return 0;
  }

  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v7 = CFGetTypeID(cf);
    if (v7 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  return CG::Path::is_ellipse((cf + 16), a2, 0, 0, a5);
}

__CFArray *create_colorsync_profile_sequence(CGColorSpace *a1, CGColorSpaceRef space, unsigned int a3, int a4)
{
  v8 = CGColorSpaceUsesExtendedRange(space);
  ProfileSetForColorSpace = CGCMSUtilsCreateProfileSetForColorSpace(space, @"ColorSyncTransformDeviceToPCS", a3, a4, v8, 0);
  v10 = CGColorSpaceUsesExtendedRange(a1);
  v11 = CGCMSUtilsCreateProfileSetForColorSpace(a1, @"ColorSyncTransformPCSToDevice", a3, a4, v10, 1);
  if (v11 && ProfileSetForColorSpace)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v15.length = CFArrayGetCount(ProfileSetForColorSpace);
      v15.location = 0;
      CFArrayAppendArray(Mutable, ProfileSetForColorSpace, v15);
      v16.length = CFArrayGetCount(v11);
      v16.location = 0;
      CFArrayAppendArray(Mutable, v11, v16);
    }
  }

  else
  {
    Mutable = 0;
    v13 = 0;
    if (!ProfileSetForColorSpace)
    {
      goto LABEL_7;
    }
  }

  CFRelease(ProfileSetForColorSpace);
  v13 = Mutable;
LABEL_7:
  if (v11)
  {
    CFRelease(v11);
  }

  return v13;
}

uint64_t CGCMSConverterCreate(void *a1, CGColorSpace *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5, int *a6)
{
  Type = CGColorSpaceGetType(a2);
  Instance = 0;
  if (Type > 5)
  {
    if (Type > 8)
    {
      if ((Type - 10) >= 2)
      {
        if (Type != 9)
        {
          return Instance;
        }

        BaseColorSpace = CGColorSpaceGetBaseColorSpace(a2);
        Instance = CGCMSConverterCreate(a1, BaseColorSpace, a3, a4, a5, a6);
        if (!Instance)
        {
          return Instance;
        }

        goto LABEL_164;
      }
    }

    else if (Type != 6)
    {
      if (Type != 7)
      {
        AlternateColorSpace = CGColorSpaceGetAlternateColorSpace(a2);
        v24 = CGCMSConverterCreate(a1, AlternateColorSpace, a3, a4, a5, a6);
        Instance = v24;
        if (!v24)
        {
          return Instance;
        }

        if (a2)
        {
          v25 = *(*(a2 + 3) + 48);
          v24[13] = v24[7];
          v24[6] = v25;
          v24[7] = convert_deviceN;
          v24[8] = deviceN_converter_info;
          CFRetain(a2);
        }

        else
        {
          v24[13] = v24[7];
          v24[6] = 0;
          v24[7] = convert_deviceN;
          v24[8] = deviceN_converter_info;
        }

        *(Instance + 96) = a2;
        goto LABEL_164;
      }

      v62 = CGColorSpaceGetBaseColorSpace(a2);
      Instance = CGCMSConverterCreate(a1, v62, a3, a4, a5, a6);
      if (!Instance)
      {
        return Instance;
      }

      lookup_table = create_lookup_table(a2, v62, Instance, 0, v63, v64, v65, v66);
      *(Instance + 216) = lookup_table;
      if (lookup_table)
      {
        if (a2)
        {
          v68 = *(a2 + 3);
          *(Instance + 48) = *(v68 + 48);
          *(Instance + 56) = convert_indexed;
          *(Instance + 64) = indexed_converter_info;
          if (*(v68 + 28) == 5)
          {
            v69 = *(*(v68 + 96) + 8) + 1;
          }

          else
          {
            v69 = 0;
          }

          *(Instance + 208) = v69;
          CFRetain(a2);
        }

        else
        {
          *(Instance + 48) = 0;
          *(Instance + 56) = convert_indexed;
          *(Instance + 64) = indexed_converter_info;
          *(Instance + 208) = 0;
        }

        *(Instance + 200) = a2;
        goto LABEL_164;
      }

      v53 = Instance;
      goto LABEL_38;
    }
  }

  else
  {
    if (Type < 3)
    {
      v41 = CGColorSpaceGetType(a2);
      v42 = CGColorSpaceGetType(a1);
      if (v41 >= 3)
      {
        _CGHandleAssert("create_device", 350, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "srcType == kCGColorSpaceDeviceGray || srcType == kCGColorSpaceDeviceRGB || srcType == kCGColorSpaceDeviceCMYK", "incompatible colorspace type %d", v46, v47, v48, v41);
      }

      v49 = v42;
      if (v42 <= 2)
      {
        v50 = kCGCMSConverterID;
        if (!kCGCMSConverterID)
        {
          pthread_once(&CGCMSConverterGetTypeID_once, converter_initialize);
          v50 = kCGCMSConverterID;
        }

        Instance = CGTypeCreateInstance(v50, 216, v43, v44, v45, v46, v47, v48);
        *(Instance + 84) = 0;
        *(Instance + 32) = CFRetain(a2);
        if (a1)
        {
          *(Instance + 24) = CFRetain(a1);
          if (a2)
          {
            v51 = *(*(a2 + 3) + 48);
          }

          else
          {
            v51 = 0;
          }

          *(Instance + 48) = v51;
          v86 = *(a1[3] + 48);
        }

        else
        {
          *(Instance + 24) = 0;
          if (a2)
          {
            v74 = *(*(a2 + 3) + 48);
          }

          else
          {
            v74 = 0;
          }

          v86 = 0;
          *(Instance + 48) = v74;
        }

        *(Instance + 40) = v86;
        if (v49 == v41)
        {
          v87 = 3;
        }

        else
        {
          v87 = 1;
        }

        *(Instance + 16) = v87;
        *(Instance + 56) = convert_device;
        goto LABEL_102;
      }

      return 0;
    }

    if ((Type - 3) >= 3)
    {
      return Instance;
    }

    if (CGColorSpaceGetType(a1) <= 2 && CGColorSpaceGetType(a1) <= 2)
    {
      v20 = kCGCMSConverterID;
      if (!kCGCMSConverterID)
      {
        pthread_once(&CGCMSConverterGetTypeID_once, converter_initialize);
        v20 = kCGCMSConverterID;
      }

      Instance = CGTypeCreateInstance(v20, 216, v14, v15, v16, v17, v18, v19);
      *(Instance + 56) = convert_Lab_to_device;
      if (a1)
      {
        v21 = CFRetain(a1);
        v22 = *(a1[3] + 48);
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      *(Instance + 24) = v21;
      *(Instance + 40) = v22;
      *(Instance + 48) = 3;
      v87 = 1;
      *(Instance + 16) = 1;
LABEL_102:
      *(Instance + 64) = null_buffer_converter_info;
      if (a6)
      {
        *a6 = v87;
      }

      goto LABEL_164;
    }
  }

  colorsync_profile_sequence = create_colorsync_profile_sequence(a1, a2, a3, a4);
  if (!colorsync_profile_sequence)
  {
    return 0;
  }

  v27 = colorsync_profile_sequence;
  Retained = CGColorSyncTransformCacheGetRetained(colorsync_profile_sequence, a5);
  if (!Retained)
  {
    CGPostError("%s: CGColorSyncTransformCacheGetRetained failed!", v28, v29, v30, v31, v32, v33, v34, "create_icc");
    v53 = v27;
LABEL_38:
    CFRelease(v53);
    return 0;
  }

  v108 = CGColorConversionInfoOptionsDisplayReferredToneMappingRequested(a5);
  v107 = CGColorConversionInfoOptionsSceneReferredToneMappingRequested(a5);
  if (!a5)
  {
    v104 = 0;
LABEL_58:
    v61 = 0;
    goto LABEL_59;
  }

  v35 = CFGetTypeID(a5);
  v104 = v35 == CFDictionaryGetTypeID() && ((Value = a5, CFDictionaryContainsKey(a5, @"kCGColorConversionInfoOptions") != 1) || (Value = CFDictionaryGetValue(a5, @"kCGColorConversionInfoOptions")) != 0) && (v37 = CFGetTypeID(Value), v37 == CFDictionaryGetTypeID()) && (v38 = CFDictionaryGetValue(Value, @"kCGImageExtendedRangeToneMappingInfo")) != 0 && (v39 = v38, v40 = CFGetTypeID(v38), v40 == CFDictionaryGetTypeID()) && CFDictionaryContainsKey(v39, @"kCGApplyEXRToneMappingGamma") != 0;
  v54 = CFGetTypeID(a5);
  if (v54 != CFDictionaryGetTypeID())
  {
    goto LABEL_58;
  }

  v55 = a5;
  if (CFDictionaryContainsKey(a5, @"kCGColorConversionInfoOptions") == 1)
  {
    v55 = CFDictionaryGetValue(a5, @"kCGColorConversionInfoOptions");
    if (!v55)
    {
      goto LABEL_58;
    }
  }

  v56 = CFGetTypeID(v55);
  if (v56 != CFDictionaryGetTypeID())
  {
    goto LABEL_58;
  }

  v57 = CFDictionaryGetValue(v55, @"kCGApplyReferenceWhiteToneMapping");
  if (!v57)
  {
    goto LABEL_58;
  }

  v58 = v57;
  v59 = CFGetTypeID(v57);
  v61 = v59 == CFDictionaryGetTypeID() || v58 == *MEMORY[0x1E695E4D0];
LABEL_59:
  v70 = CGColorConversionInfoOptionsFlexTRCRequested(a5);
  v71 = CGColorConversionInfoOptionsFlexLumaRequested(a5);
  if (CGColorSpaceUsesITUR_2100TF(a2) || ((CGColorSpaceUsesITUR_2100TF(a1) | v108 | v107 | v61 | v70 | v71) & 1) != 0)
  {
    if (use_colorsync_for_hdr_from_defaults_predicate != -1)
    {
      dispatch_once(&use_colorsync_for_hdr_from_defaults_predicate, &__block_literal_global_28_2163);
    }

    v105 = use_colorsync_for_hdr_from_defaults_status;
    if (a5 && CFDictionaryContainsKey(a5, @"kCGConvertColorDataUseColorSyncForHDR") == 1)
    {
      v110 = 0;
      Boolean = CGCFDictionaryGetBoolean(a5, @"kCGConvertColorDataUseColorSyncForHDR", &v110);
      v73 = v105;
      if (Boolean)
      {
        v73 = v110;
      }

      v105 = v73;
    }
  }

  else
  {
    v105 = 0;
  }

  v75 = CGColorSpaceUsesExtendedRange(a2);
  if (v108 & 1 | !v75)
  {
    v82 = v75;
  }

  else
  {
    v82 = v107 | v104;
  }

  if (((v82 | v61 | v70 | v71) & 1) == 0)
  {
    goto LABEL_126;
  }

  if (!a5 || CFDictionaryContainsKey(a5, @"kCGConvertColorDataUseColorSyncForToneMapping") != 1)
  {
    if (v108)
    {
      if (use_colorsync_for_display_referred_tone_mapping_from_defaults_predicate != -1)
      {
        dispatch_once(&use_colorsync_for_display_referred_tone_mapping_from_defaults_predicate, &__block_literal_global_32_2164);
      }

      v85 = &use_colorsync_for_display_referred_tone_mapping_from_defaults_status;
      goto LABEL_124;
    }

    if (v107)
    {
      if (use_colorsync_for_scene_referred_tone_mapping_from_defaults_predicate != -1)
      {
        dispatch_once(&use_colorsync_for_scene_referred_tone_mapping_from_defaults_predicate, &__block_literal_global_36_2165);
      }

      v85 = &use_colorsync_for_scene_referred_tone_mapping_from_defaults_status;
      goto LABEL_124;
    }

    if (v104)
    {
      if (use_colorsync_for_exr_gamma_tone_mapping_from_defaults_predicate != -1)
      {
        dispatch_once(&use_colorsync_for_exr_gamma_tone_mapping_from_defaults_predicate, &__block_literal_global_39);
      }

      v85 = &use_colorsync_for_exr_gamma_tone_mapping_from_defaults_status;
      goto LABEL_124;
    }

    if (v61)
    {
      if (use_colorsync_for_reference_white_tone_mapping_from_defaults_predicate != -1)
      {
        dispatch_once(&use_colorsync_for_reference_white_tone_mapping_from_defaults_predicate, &__block_literal_global_43_2166);
      }

      v85 = &use_colorsync_for_reference_white_tone_mapping_from_defaults_status;
      goto LABEL_124;
    }

    if (v71)
    {
      if (use_colorsync_for_flexLuma_from_defaults_predicate != -1)
      {
        dispatch_once(&use_colorsync_for_flexLuma_from_defaults_predicate, &__block_literal_global_47);
      }

      v85 = &use_colorsync_for_flexLuma_from_defaults_status;
      goto LABEL_124;
    }

    if (v70)
    {
      if (use_colorsync_for_flexTRC_from_defaults_predicate != -1)
      {
        dispatch_once(&use_colorsync_for_flexTRC_from_defaults_predicate, &__block_literal_global_51);
      }

      v85 = &use_colorsync_for_flexTRC_from_defaults_status;
LABEL_124:
      v109 = *v85;
      if (a5)
      {
        goto LABEL_127;
      }

      goto LABEL_125;
    }

LABEL_126:
    v109 = 0;
    if (a5)
    {
      goto LABEL_127;
    }

LABEL_125:
    v88 = 0;
LABEL_136:
    v91 = 0;
    goto LABEL_137;
  }

  v111 = 0;
  v83 = CGCFDictionaryGetBoolean(a5, @"kCGConvertColorDataUseColorSyncForToneMapping", &v111);
  if (v111)
  {
    v84 = v83;
  }

  else
  {
    v84 = 0;
  }

  v109 = v84;
LABEL_127:
  if (CFDictionaryContainsKey(a5, @"kCGApplyLuminanceScaling") == 1)
  {
    v112 = 0;
    v89 = CGCFDictionaryGetBoolean(a5, @"kCGApplyLuminanceScaling", &v112);
    if (v112)
    {
      v88 = v89;
    }

    else
    {
      v88 = 0;
    }
  }

  else
  {
    v88 = 0;
  }

  if (CFDictionaryContainsKey(a5, @"kCGConvertColorDataUseColorSync") != 1)
  {
    goto LABEL_136;
  }

  v113 = 0;
  v90 = CGCFDictionaryGetBoolean(a5, @"kCGConvertColorDataUseColorSync", &v113);
  if (v113)
  {
    v91 = v90;
  }

  else
  {
    v91 = 0;
  }

LABEL_137:
  v92 = kCGCMSConverterID;
  if (!kCGCMSConverterID)
  {
    pthread_once(&CGCMSConverterGetTypeID_once, converter_initialize);
    v92 = kCGCMSConverterID;
  }

  v93 = CGTypeCreateInstance(v92, 216, v76, v77, v78, v79, v80, v81);
  Instance = v93;
  *(v93 + 84) = a3;
  if (a2)
  {
    *(v93 + 32) = CFRetain(a2);
    v94 = Retained;
    if (a1)
    {
      *(Instance + 24) = CFRetain(a1);
      v95 = *(*(a2 + 3) + 48);
LABEL_144:
      *(Instance + 48) = v95;
      v97 = *(a1[3] + 48);
      goto LABEL_148;
    }

    *(Instance + 24) = 0;
    v98 = *(*(a2 + 3) + 48);
  }

  else
  {
    *(v93 + 32) = 0;
    v94 = Retained;
    if (a1)
    {
      v96 = CFRetain(a1);
      v95 = 0;
      *(Instance + 24) = v96;
      goto LABEL_144;
    }

    v98 = 0;
    *(v93 + 24) = 0;
  }

  v97 = 0;
  *(Instance + 48) = v98;
LABEL_148:
  *(Instance + 40) = v97;
  if (transform_get_conv_type_cglibrarypredicate != -1)
  {
    dispatch_once(&transform_get_conv_type_cglibrarypredicate, &__block_literal_global_54_2167);
  }

  conv_type_f = transform_get_conv_type_f(v94, @"com.apple.cmm.TransformType", 0);
  if (conv_type_f)
  {
    v100 = conv_type_f;
    if (CFEqual(conv_type_f, @"NULLTransform"))
    {
      v101 = 3;
    }

    else if (CFEqual(v100, @"DeviceTransform"))
    {
      v101 = 1;
    }

    else
    {
      v101 = 2 * (CFStringHasPrefix(v100, @"RegularTransform.") != 0);
    }

    CFRelease(v100);
  }

  else
  {
    v101 = 0;
  }

  *(Instance + 16) = v101;
  if ((v91 | v105))
  {
    *(Instance + 224) = 1;
  }

  else
  {
    *(Instance + 224) = (v109 | v88) & 1;
    if (((v109 | v88) & 1) == 0)
    {
      CGColorSyncTransformCacheRelease(v94);
      if (!a6)
      {
        goto LABEL_163;
      }

      goto LABEL_162;
    }
  }

  *(Instance + 88) = v94;
  if (a6)
  {
LABEL_162:
    *a6 = *(Instance + 16);
  }

LABEL_163:
  CFRelease(v27);
  *(Instance + 56) = convert_icc;
  *(Instance + 64) = icc_converter_info;
LABEL_164:
  *(Instance + 80) = a4;
  if (a5)
  {
    v102 = CFRetain(a5);
  }

  else
  {
    v102 = 0;
  }

  *(Instance + 72) = v102;
  return Instance;
}

uint64_t CGColorTransformCacheGetConversionType(uint64_t a1, CGColorSpace *a2, uint64_t a3)
{
  v22 = -1;
  if (!*(a1 + 40))
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = v8[3];
      if (v9)
      {
        v8 = (v9 + 64);
      }

      else
      {
        v8 = 0;
      }
    }

    if (a2)
    {
      v10 = *(a2 + 3);
      v11 = v10 ? (v10 + 64) : 0;
    }

    else
    {
      v11 = 0;
    }

    if (v8 == v11)
    {
      return 3;
    }

    if (v8 && v11)
    {
      v18 = *v8;
      v17 = v8[1];
      v20 = *v11;
      v19 = v11[1];
      if (v18 == v20 && v17 == v19)
      {
        return 3;
      }
    }
  }

  pthread_mutex_lock((a1 + 56));
  if (a2)
  {
    v6 = *(a2 + 3);
    if (v6)
    {
      v7 = (v6 + 64);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  cache_entry = find_cache_entry(*(a1 + 120), v7);
  if (cache_entry)
  {
    v22 = *(cache_entry + 4);
  }

  else
  {
    v14 = CGCMSConverterCreate(*(a1 + 16), a2, a3, *(a1 + 48), *(a1 + 40), &v22);
    if (v14)
    {
      v15 = v14;
      updated = update_cache(a1, v14, v22, a2, a3);
      CFRelease(v15);
      pthread_mutex_unlock((a1 + 56));
      if (updated)
      {
        cache_entry_release(updated);
      }

      return v22;
    }
  }

  pthread_mutex_unlock((a1 + 56));
  return v22;
}

void *find_cache_entry(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  while (1)
  {
    v2 = *a1;
    if (*a1 == a2)
    {
      break;
    }

    if (a2 && v2 && *v2 == *a2 && v2[1] == a2[1])
    {
      break;
    }

    a1 = *(a1 + 8);
    if (!a1)
    {
      return 0;
    }
  }

  return v2;
}

float CGColorSpaceGetHeadroomInfo(void *a1, int *a2)
{
  valuePtr = 0.0;
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = CFGetTypeID(a1);
  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  if (v4 != CGColorSpaceGetTypeID_type_id || CGColorSpaceGetType(a1) - 7 < 3)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  if (!CGColorSpaceContainsFlexGTCInfo(a1) || (v7 = CGColorSpaceCopyFlexGTCInfo(a1)) == 0)
  {
LABEL_18:
    if (CGColorSpaceUsesExtendedRange(a1))
    {
      valuePtr = 0.0;
    }

    else
    {
      if (!CGColorSpaceIsPQBased(a1) && !CGColorSpaceIsHLGBased(a1))
      {
        valuePtr = 1.0;
        goto LABEL_25;
      }

      valuePtr = 4.9261;
    }

    v5 = 2;
    goto LABEL_7;
  }

  v8 = v7;
  v9 = CFGetTypeID(v7);
  if (v9 != CFDictionaryGetTypeID() || (Value = CFDictionaryGetValue(v8, @"com.apple.ColorSync.MonoGainMapParams")) == 0 || (v11 = Value, v12 = CFGetTypeID(Value), v12 != CFDictionaryGetTypeID()) || (v13 = CFDictionaryGetValue(v11, @"com.apple.ColorSync.GainMapBaselineHeadroom")) == 0)
  {
    CFRelease(v8);
    goto LABEL_18;
  }

  CFNumberGetValue(v13, kCFNumberFloatType, &valuePtr);
  valuePtr = exp2f(valuePtr);
  CFRelease(v8);
LABEL_25:
  v5 = 1;
LABEL_7:
  if (a2)
  {
    *a2 = v5;
  }

  return valuePtr;
}

CFArrayRef CGCMSUtilsCreateProfileSetForColorSpace(CGColorSpace *a1, __CFString *a2, unsigned int a3, int a4, int a5, int a6)
{
  Type = CGColorSpaceGetType(a1);
  ProfileSet = 0;
  if (Type <= 5)
  {
    if ((Type - 3) < 3)
    {
      v14 = CGColorSpaceCopyICCData(a1);
      if (CGCMSUtilsCreateProfileSetForColorSpace_cglibrarypredicate[0] != -1)
      {
        dispatch_once(CGCMSUtilsCreateProfileSetForColorSpace_cglibrarypredicate, &__block_literal_global_458);
      }

      ProfileSetForColorSpace_f = CGCMSUtilsCreateProfileSetForColorSpace_f(v14, 0);
      ProfileSet = CGCMSUtilsCreateProfileSet(a1, ProfileSetForColorSpace_f, a2, a3, a4, a5);
      if (v14)
      {
        CFRelease(v14);
      }

      if (ProfileSetForColorSpace_f)
      {
        CFRelease(ProfileSetForColorSpace_f);
      }
    }

    return ProfileSet;
  }

  switch(Type)
  {
    case 6:
      FlexGTCProfile = CGColorSpaceGetDescriptor(a1)[1];
      break;
    case 10:
      if (a3 > 4)
      {
        v17 = @"ColorSyncRenderingIntentPerceptual";
      }

      else
      {
        v17 = *(&off_1E6E066C0 + a3);
      }

      if (a4)
      {
        v19 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v19 = MEMORY[0x1E695E4C0];
      }

      v20 = &CGColorSpaceGetDescriptor(a1)[a6];
      v21 = v20[1];
      if (!v21)
      {
        return 0;
      }

      Count = CFArrayGetCount(v20[1]);
      ProfileSet = CFArrayCreateMutable(0, Count, MEMORY[0x1E695E9C0]);
      if (Count >= 1)
      {
        v23 = 0;
        v24 = *v19;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v21, v23);
          v26 = CFGetTypeID(ValueAtIndex);
          if (v26 != CFDictionaryGetTypeID())
          {
            _CGHandleAssert("copy_set_with_parameters", 1456, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSUtils.c", "CFGetTypeID(oldDict) == CFDictionaryGetTypeID()", "expected dictionary", v27, v28, v29, v34);
          }

          if (!v23 && CFEqual(a2, @"ColorSyncTransformDeviceToPCS") || Count == 1 && CFEqual(a2, @"ColorSyncTransformPCSToDevice"))
          {
            v30 = ValueAtIndex;
            v31 = a1;
            v32 = a2;
          }

          else
          {
            v30 = ValueAtIndex;
            v31 = a1;
            v32 = @"ColorSyncTransformPCSToPCS";
          }

          v33 = copy_profile_dictionary_with_parameters(v30, v31, v32, v17, v24);
          if (v33)
          {
            CFArrayAppendValue(ProfileSet, v33);
            CFRelease(v33);
          }

          ++v23;
          --Count;
        }

        while (Count);
      }

      return ProfileSet;
    case 11:
      if (a6 == 1)
      {
        FlexGTCProfile = *CGColorSpaceGetDescriptor(a1);
      }

      else
      {
        FlexGTCProfile = CGColorSpaceFlexGTCProxyGetFlexGTCProfile(a1);
      }

      break;
    default:
      return ProfileSet;
  }

  return CGCMSUtilsCreateProfileSet(a1, FlexGTCProfile, a2, a3, a4, a5);
}

CFArrayRef CGCMSUtilsCreateProfileSet(void *a1, void *a2, void *a3, unsigned int a4, int a5, int a6)
{
  keys[6] = *MEMORY[0x1E69E9840];
  if (a4 > 4)
  {
    v6 = @"ColorSyncRenderingIntentPerceptual";
  }

  else
  {
    v6 = *(&off_1E6E066C0 + a4);
  }

  v7 = 0;
  v8 = *MEMORY[0x1E695E4D0];
  v9 = *MEMORY[0x1E695E4C0];
  if (a5)
  {
    v10 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v10 = *MEMORY[0x1E695E4C0];
  }

  if (a2 && a3 && v10)
  {
    keys[0] = @"ColorSyncProfile";
    keys[1] = @"ColorSyncRenderingIntent";
    keys[2] = @"ColorSyncTransformTag";
    keys[3] = @"ColorSyncBlackPointCompensation";
    keys[4] = @"com.apple.cmm.ExtendedRange";
    keys[5] = @"kCGColorSpace";
    if (!a6)
    {
      v8 = v9;
    }

    values[0] = a2;
    values[1] = v6;
    values[2] = a3;
    values[3] = v10;
    if (a1)
    {
      v11 = 6;
    }

    else
    {
      v11 = 5;
    }

    values[4] = v8;
    values[5] = a1;
    v12 = CFDictionaryCreate(0, keys, values, v11, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v12)
    {
      v13 = v12;
      keys[0] = v12;
      v7 = CFArrayCreate(0, keys, 1, MEMORY[0x1E695E9C0]);
      CFRelease(v13);
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

const __CFArray *CGColorSyncTransformCacheGetRetained(const __CFArray *theArray, const __CFDictionary *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  value_out = 0;
  if (!theArray)
  {
    return theArray;
  }

  v3 = theArray;
  if (CGOSAppleInternalBuild_predicate != -1)
  {
    dispatch_once(&CGOSAppleInternalBuild_predicate, &__block_literal_global_18682);
  }

  if (CGOSAppleInternalBuild_is_internal != 1)
  {
    goto LABEL_13;
  }

  if (CGColorSyncTransformCacheGetRetained_predicate != -1)
  {
    dispatch_once(&CGColorSyncTransformCacheGetRetained_predicate, &__block_literal_global_12534);
  }

  v4 = CGColorSyncTransformCacheGetRetained_bundle_options;
  if (CGColorSyncTransformCacheGetRetained_bundle_options)
  {
    if (a2)
    {
      Count = CFDictionaryGetCount(CGColorSyncTransformCacheGetRetained_bundle_options);
      v6 = CFDictionaryGetCount(a2);
      v7 = v6 + Count;
      v8 = 8 * (v6 + Count);
      MEMORY[0x1EEE9AC00](v6, v9);
      v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
      if (v8 >= 0x200)
      {
        v11 = 512;
      }

      else
      {
        v11 = v8;
      }

      bzero(&v24 - v10, v11);
      MEMORY[0x1EEE9AC00](v12, v13);
      bzero(&v24 - v10, v11);
      CFDictionaryGetKeysAndValues(CGColorSyncTransformCacheGetRetained_bundle_options, (&v24 - v10), (&v24 - v10));
      CFDictionaryGetKeysAndValues(a2, (&v24 + 8 * Count - v10), (&v24 + 8 * Count - v10));
      v4 = CFDictionaryCreate(0, (&v24 - v10), (&v24 - v10), v7, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v14 = v4;
    }

    else
    {
      v14 = 0;
    }

    a2 = v4;
  }

  else
  {
LABEL_13:
    v14 = 0;
  }

  *md = 0u;
  v27 = 0u;
  v15 = CFArrayGetCount(v3);
  v16 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  CC_MD5_Init(v16);
  if (v15 >= 1)
  {
    for (i = 0; i != v15; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
      CFDictionaryApplyFunction(ValueAtIndex, md5_creator_12557, v16);
    }
  }

  if (v16)
  {
    CC_MD5_Final(md, v16);
  }

  free(v16);
  if (a2)
  {
    v19 = CFGetTypeID(a2);
    if (v19 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(a2, @"kCGColorSyncTransformCacheUUID");
      if (Value)
      {
        v27 = *CFDataGetBytePtr(Value);
      }

      else
      {
        *&v27 = CGCFDictionaryGetMD5Digest(a2, 0);
        *(&v27 + 1) = v21;
      }
    }
  }

  if (get_cache_predicate_12536 != -1)
  {
    dispatch_once(&get_cache_predicate_12536, &__block_literal_global_29_12537);
  }

  pthread_mutex_lock(get_cache_transform_cache);
  if (get_cache_predicate_12536 != -1)
  {
    dispatch_once(&get_cache_predicate_12536, &__block_literal_global_29_12537);
  }

  if (cache_get_and_retain(*(get_cache_transform_cache + 64), md, &value_out))
  {
    if (a2)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CGColorTransformOptionsToColorSyncTransformOptions(Mutable, a2);
      if (CFDictionaryGetCount(Mutable))
      {
LABEL_35:
        if (CGColorSyncTransformCacheGetRetained_cglibrarypredicate != -1)
        {
          dispatch_once(&CGColorSyncTransformCacheGetRetained_cglibrarypredicate, &__block_literal_global_9_12538);
        }

        Retained_f = CGColorSyncTransformCacheGetRetained_f(v3, Mutable);
        value_out = Retained_f;
        if (Mutable)
        {
          CFRelease(Mutable);
          Retained_f = value_out;
        }

        if (Retained_f)
        {
          if (get_cache_predicate_12536 != -1)
          {
            dispatch_once(&get_cache_predicate_12536, &__block_literal_global_29_12537);
          }

          cache_set_and_retain(*(get_cache_transform_cache + 64), md, value_out, 0);
        }

        goto LABEL_43;
      }

      CFRelease(Mutable);
    }

    Mutable = 0;
    goto LABEL_35;
  }

LABEL_43:
  if (get_cache_predicate_12536 != -1)
  {
    dispatch_once(&get_cache_predicate_12536, &__block_literal_global_29_12537);
  }

  pthread_mutex_unlock(get_cache_transform_cache);
  if (v14)
  {
    CFRelease(v14);
  }

  return value_out;
}

CC_MD5_CTX *md5_update(CC_MD5_CTX *c, char *data, unint64_t a3)
{
  v3 = a3;
  v5 = c;
  if (HIDWORD(a3))
  {
    do
    {
      CC_MD5_Update(v5, data, 0xFFFFFFFF);
      data += 0xFFFFFFFFLL;
      v3 -= 0xFFFFFFFFLL;
    }

    while (HIDWORD(v3));
  }

  else if (!a3)
  {
    return c;
  }

  return CC_MD5_Update(v5, data, v3);
}

uint64_t colorsync_transform_data_key_hash(_OWORD *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  return MEMORY[0x1865EEA10](v3, 32);
}

const void *CGColorConversionInfoOptionsDisplayReferredToneMappingRequested(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    if (CFDictionaryContainsKey(v1, @"kCGColorConversionInfoOptions") != 1 || (result = CFDictionaryGetValue(v1, @"kCGColorConversionInfoOptions"), (v1 = result) != 0))
    {
      v3 = CFGetTypeID(v1);
      if (v3 == CFDictionaryGetTypeID())
      {
        result = CFDictionaryGetValue(v1, @"kCGImageExtendedRangeToneMappingInfo");
        if (!result)
        {
          return result;
        }

        v4 = result;
        v5 = CFGetTypeID(result);
        if (v5 == CFDictionaryGetTypeID())
        {
          return (CFDictionaryContainsKey(v4, @"kCGApplyDisplayReferredExtendedRangeToneMapping") != 0);
        }
      }

      return 0;
    }
  }

  return result;
}

const void *CGColorConversionInfoOptionsSceneReferredToneMappingRequested(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    if (CFDictionaryContainsKey(v1, @"kCGColorConversionInfoOptions") != 1 || (result = CFDictionaryGetValue(v1, @"kCGColorConversionInfoOptions"), (v1 = result) != 0))
    {
      v3 = CFGetTypeID(v1);
      if (v3 == CFDictionaryGetTypeID())
      {
        result = CFDictionaryGetValue(v1, @"kCGImageExtendedRangeToneMappingInfo");
        if (!result)
        {
          return result;
        }

        v4 = result;
        v5 = CFGetTypeID(result);
        if (v5 == CFDictionaryGetTypeID())
        {
          return (CFDictionaryContainsKey(v4, @"kCGApplySceneReferredExtendedRangeToneMapping") != 0);
        }
      }

      return 0;
    }
  }

  return result;
}

const __CFDictionary *CGColorConversionInfoOptionsFlexTRCRequested(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    if (CFDictionaryContainsKey(v1, @"kCGColorConversionInfoOptions") == 1)
    {
      result = CFDictionaryGetValue(v1, @"kCGColorConversionInfoOptions");
      v1 = result;
      if (!result)
      {
        return result;
      }
    }

    v3 = CFGetTypeID(v1);
    if (v3 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    result = CFDictionaryGetValue(v1, @"kCGApplyFlexTRC");
    if (result)
    {
      v4 = result;
      v5 = CFGetTypeID(result);
      return (v5 == CFDictionaryGetTypeID() || v4 == *MEMORY[0x1E695E4D0]);
    }
  }

  return result;
}

const __CFDictionary *CGColorConversionInfoOptionsFlexLumaRequested(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    if (CFDictionaryContainsKey(v1, @"kCGColorConversionInfoOptions") == 1)
    {
      result = CFDictionaryGetValue(v1, @"kCGColorConversionInfoOptions");
      v1 = result;
      if (!result)
      {
        return result;
      }
    }

    v3 = CFGetTypeID(v1);
    if (v3 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    result = CFDictionaryGetValue(v1, @"kCGApplyFlexLumaScaling");
    if (result)
    {
      v4 = result;
      v5 = CFGetTypeID(result);
      return (v5 == CFDictionaryGetTypeID() || v4 == *MEMORY[0x1E695E4D0]);
    }
  }

  return result;
}

void CGColorSyncTransformCacheRelease(void *a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (CGColorSyncTransformCacheRelease_cglibrarypredicate != -1)
    {
      dispatch_once(&CGColorSyncTransformCacheRelease_cglibrarypredicate, &__block_literal_global_13_12573);
    }

    if (v2 == CGColorSyncTransformCacheRelease_f())
    {
      if (get_cache_predicate_12536 != -1)
      {
        dispatch_once(&get_cache_predicate_12536, &__block_literal_global_29_12537);
      }

      if (cache_release_value(*(get_cache_transform_cache + 64), a1))
      {
        CGPostError("%s: cache_release_value failed", v3, v4, v5, v6, v7, v8, v9, "CGColorSyncTransformCacheRelease");
      }
    }
  }
}

BOOL colorsync_transform_data_key_is_equal(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  return v6 == v5 && *(&v6 + 1) == *(&v5 + 1);
}

uint64_t create_from_argument_list(const void *a1, int a2, CGColorSpaceRef a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  v11 = a4 == 1;
  v12 = CGColorSpaceUsesITUR_2100TF(a3);
  v13 = CGColorSpaceContainsFlexGTCInfo(a3);
  v14 = CGColorConversionInfoOptionsDisplayReferredToneMappingRequested(a1);
  v15 = CGColorConversionInfoOptionsSceneReferredToneMappingRequested(a1);
  if (CGColorConversionInfoOptionsFlexTRCRequested(a1))
  {
    if (!v13)
    {
LABEL_3:
      v16 = CGColorSpaceCopyDebugDescription(a3);
      CGLog(2, "Use of FlexGTC requested but color space %@ doesn't contain FlexGTC info", v17, v18, v19, v20, v21, v22, v16);
      if (!v16)
      {
        return 0;
      }

      v23 = v16;
LABEL_33:
      CFRelease(v23);
      return 0;
    }
  }

  else if (!(v13 | ((CGColorConversionInfoOptionsFlexLumaRequested(a1) & 1) == 0)))
  {
    goto LABEL_3;
  }

  v24 = CGColorSpaceUsesExtendedRange(a3);
  if (a4 > 2)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(&off_1E6E343F0 + a4);
  }

  ProfileSetForColorSpace = CGCMSUtilsCreateProfileSetForColorSpace(a3, v25, a5, a2, v24, v11);
  if (!ProfileSetForColorSpace)
  {
    return 0;
  }

  v27 = ProfileSetForColorSpace;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    v23 = v27;
    goto LABEL_33;
  }

  v29 = Mutable;
  v30 = v12 | v14 | v15;
  v51.length = CFArrayGetCount(v27);
  v51.location = 0;
  CFArrayAppendArray(v29, v27, v51);
  CFRelease(v27);
  v32 = a6;
  v49 = (a6 + 8);
  v33 = *v32;
  if (*v32)
  {
    while (1)
    {
      v34 = v49;
      v35 = *v49;
      v36 = v49[2];
      v49 += 6;
      v37 = *(v34 + 2);
      v38 = CGColorSpaceUsesExtendedRange(v33);
      v39 = v35 > 2 ? 0 : *(&off_1E6E343F0 + v35);
      v40 = CGCMSUtilsCreateProfileSetForColorSpace(v33, v39, v36, a2, v38, v37 == 0);
      if (!v40)
      {
        break;
      }

      v41 = v40;
      v52.length = CFArrayGetCount(v40);
      v52.location = 0;
      CFArrayAppendArray(v29, v41, v52);
      CFRelease(v41);
      v30 |= CGColorSpaceUsesITUR_2100TF(v33);
      v33 = v37;
      if (!v37)
      {
        goto LABEL_17;
      }
    }

    v23 = v29;
    goto LABEL_33;
  }

LABEL_17:
  if (v30)
  {
    if (create_3DLUT_for_PQEETF_predicate != -1)
    {
      dispatch_once(&create_3DLUT_for_PQEETF_predicate, &__block_literal_global_98);
    }

    if (create_3DLUT_for_PQEETF_status)
    {
      goto LABEL_24;
    }

    if (create_3DLUT_for_HLG_SceneReferredMapping_predicate != -1)
    {
      dispatch_once(&create_3DLUT_for_HLG_SceneReferredMapping_predicate, &__block_literal_global_102_1199);
    }

    if (create_3DLUT_for_HLG_SceneReferredMapping_status == 1)
    {
LABEL_24:
      new_transform_options = create_new_transform_options(a1, v31);
      goto LABEL_31;
    }
  }

  else if ((linked_on_golden_gate_or_later() & 1) == 0)
  {
    v43 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (v43)
    {
      v44 = v43;
      v50.length = CFArrayGetCount(v29);
      v50.location = 0;
      CFArrayApplyFunction(v29, v50, modify, v44);
      CFRelease(v29);
      v29 = v44;
    }
  }

  if (!a1)
  {
    v45 = 0;
    goto LABEL_36;
  }

  new_transform_options = CFRetain(a1);
LABEL_31:
  v45 = new_transform_options;
LABEL_36:
  Retained = CGColorSyncTransformCacheGetRetained(v29, v45);
  CFRelease(v29);
  if (v45)
  {
    CFRelease(v45);
  }

  return create_conversion_info(Retained, a1);
}

uint64_t linked_on_golden_gate_or_later()
{
  if (linked_on_golden_gate_or_later_predicate != -1)
  {
    dispatch_once(&linked_on_golden_gate_or_later_predicate, &__block_literal_global_92);
  }

  if (linked_on_golden_gate_or_later_linked_on_golden_gate_or_later & 1) != 0 || (linked_on_golden_gate_or_later_linked_on_azul_or_later & 1) != 0 || (linked_on_golden_gate_or_later_linked_on_archer_or_later)
  {
    v0 = 1;
  }

  else
  {
    v0 = linked_on_golden_gate_or_later_linked_on_borealis_or_later;
  }

  return v0 & 1;
}

uint64_t vImage_FormatFromConversionFormat(uint64_t a1, _DWORD *__src, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 32) = 0;
  v8 = (__src + 10);
  if (!__src[10])
  {
    _CGHandleAssert("vImage_FormatFromConversionFormat", 439, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGvImageConverter.c", "type != kCGImageComponentUnknown", "unknown type %d", a6, a7, a8, 0);
  }

  *a1 = *(__src + 6);
  memcpy(__dst, __src + 10, sizeof(__dst));
  *(a1 + 4) = CGBitmapPixelInfoGetBitsPerPixel(__dst, v12, v13, v14, v15, v16, v17, v18);
  *(a1 + 8) = a3;
  memcpy(__dst, v8, sizeof(__dst));
  result = CGBitmapPixelInfoGetCGImageBitmapInfo(__dst);
  *(a1 + 32) = __src[8];
  *(a1 + 16) = result;
  *(a1 + 24) = *(__src + 10);
  return result;
}

uint64_t CGBitmapPixelInfoGetBitsPerPixel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  HIDWORD(v10) = *(a1 + 32);
  LODWORD(v10) = HIDWORD(v10);
  v9 = v10 >> 16;
  if ((v9 - 1) < 2)
  {
    return 16;
  }

  if ((v9 - 3) < 2)
  {
    return 32;
  }

  if (v9)
  {
    _CGHandleAssert("CGBitmapPixelInfoGetBitsPerPixel", 142, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGBitmapPixelInfo.c", "", "Unimplemented", a6, a7, a8, v8);
  }

  v12 = *(a1 + 24) - 1;
  if (v12 > 8)
  {
    v13 = 0;
  }

  else
  {
    v13 = qword_1844E0DE8[v12];
  }

  return (v13 + *(a1 + 16)) * *(a1 + 8);
}

uint64_t CGBitmapPixelInfoGetCGImageBitmapInfo(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == 8)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(a1 + 24);
  }

  if (v2 == 9)
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(a1 + 28) | v4 | *(a1 + 32);
  if ((*a1 & 0xFFFFFFFE) == 4)
  {
    result = v5 | 0x100;
  }

  else
  {
    result = v5;
  }

  if (*(a1 + 8) == 8)
  {
    v7 = *(a1 + 16);
    v8 = v2 - 1;
    if (v8 > 8)
    {
      v9 = 0;
    }

    else
    {
      v9 = qword_1844E0DE8[v8];
    }

    if (v9 + v7 == 4)
    {
      return result;
    }

    else
    {
      return result & 0xFFFF8FFF;
    }
  }

  return result;
}

const void *CGColorTransformCacheCreateConverter(uint64_t a1, CGColorSpace *a2, uint64_t a3)
{
  pthread_mutex_lock((a1 + 56));
  if (a2)
  {
    v6 = *(a2 + 3);
    if (v6)
    {
      v7 = (v6 + 64);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = 0;
  v8 = *(a1 + 120);
  cache_entry = find_cache_entry(v8, v7);
  if (cache_entry && cache_entry[a3 + 3])
  {
    v18 = v8;
    if (v8)
    {
      if (*v8 == cache_entry)
      {
        v12 = &v18;
LABEL_18:
        *v12 = v8[1];
        v8[1] = v18;
      }

      else
      {
        v10 = v8;
        while (1)
        {
          v11 = v10;
          v10 = v10[1];
          if (!v10)
          {
            break;
          }

          if (*v10 == cache_entry)
          {
            v12 = v11 + 1;
            v8 = v10;
            goto LABEL_18;
          }
        }
      }
    }

    *(a1 + 120) = v8;
    v15 = cache_entry[a3 + 3];
    if (v15)
    {
      v13 = CFRetain(v15);
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_22;
  }

  v17 = -1;
  v13 = CGCMSConverterCreate(*(a1 + 16), a2, a3, *(a1 + 48), *(a1 + 40), &v17);
  if (!v13)
  {
LABEL_22:
    pthread_mutex_unlock((a1 + 56));
    return v13;
  }

  updated = update_cache(a1, v13, v17, a2, a3);
  pthread_mutex_unlock((a1 + 56));
  if (updated)
  {
    cache_entry_release(updated);
  }

  return v13;
}

void *CGCMSConverterConvertColorComponents(void *cf, double *a2, double *a3)
{
  v3 = cf;
  v84 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    return v3;
  }

  v6 = CFGetTypeID(cf);
  v8 = kCGCMSConverterID;
  if (!kCGCMSConverterID)
  {
    pthread_once(&CGCMSConverterGetTypeID_once, converter_initialize);
    v8 = kCGCMSConverterID;
  }

  if (v6 != v8)
  {
    return 0;
  }

  v10 = v3[5];
  v9 = v3[6];
  v11 = MEMORY[0x1EEE9AC00](4 * v9, v7);
  if (v12 <= 0x3FFFFFFFFFFFFFFELL)
  {
    v17 = (&v33 - v13);
  }

  else
  {
    v17 = 0;
  }

  v35 = (&v33 - v13);
  v36 = v14;
  v18 = v11;
  if (v12 - 0x3FFFFFFFFFFFFFFFLL >= v15)
  {
    v11 = malloc_type_malloc(v11, 0x3D0D839FuLL);
    v17 = v11;
  }

  MEMORY[0x1EEE9AC00](v11, v16);
  v34 = (&v33 - v20);
  if (v19 <= 0x3FFFFFFFFFFFFFFELL)
  {
    v23 = (&v33 - v20);
  }

  else
  {
    v23 = 0;
  }

  if (v19 + v22 >= v21)
  {
    v23 = malloc_type_malloc(4 * v10, 0x1CBB669CuLL);
  }

  if (v9)
  {
    v24 = v17;
    v25 = v9;
    do
    {
      v26 = *a2++;
      v27 = v26;
      *v24++ = v27;
      --v25;
    }

    while (v25);
  }

  v83 = 0;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v66 = 0u;
  v63 = 0u;
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v61 = vdupq_n_s64(1uLL);
  v60 = v17;
  v62 = v18;
  DWORD1(v66) = 0x2000;
  v64 = 32;
  v65 = v9;
  v28 = *(v3 + 21);
  DWORD2(v63) = 4;
  LODWORD(v63) = v28;
  v37 = v23;
  v38 = v61;
  v39 = 4 * v10;
  DWORD1(v42) = 0x2000;
  *&v41 = 32;
  *(&v41 + 1) = v10;
  DWORD2(v40) = 4;
  LODWORD(v40) = v28;
  v3 = CGCMSConverterConvert(v3, &v60, &v37);
  if (v3)
  {
    v29 = v35;
    if (v10)
    {
      v30 = v23;
      do
      {
        v31 = *v30++;
        *a3++ = v31;
        --v10;
      }

      while (v10);
    }

    if (v17 == v29)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (v17 != v35)
  {
LABEL_25:
    free(v17);
  }

LABEL_26:
  if (v23 != v34)
  {
    free(v23);
  }

  return v3;
}

void *CGCMSConverterConvert(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    v7 = kCGCMSConverterID;
    if (!kCGCMSConverterID)
    {
      pthread_once(&CGCMSConverterGetTypeID_once, converter_initialize);
      v7 = kCGCMSConverterID;
    }

    if (v6 == v7)
    {
      v8 = v5[7];
      v10 = 0;
      memset(v9, 0, sizeof(v9));
      return v8(v5, a2, a3, v9);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t convert_icc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = *MEMORY[0x1E69E9840];
  if (*(a1 + 224) != 1)
  {
    v16 = *(a4 + 48);
    *v43 = *(a4 + 32);
    *&v43[16] = v16;
    *&v43[32] = *(a4 + 64);
    v44 = *(a4 + 80);
    v17 = *(a4 + 16);
    v41 = *a4;
    v42 = v17;
    return convert_using_vImageConverter(a1, a2, a3, &v41, a5, a6, a7, a8);
  }

  v11 = *(a4 + 48);
  *v43 = *(a4 + 32);
  *&v43[16] = v11;
  *&v43[32] = *(a4 + 64);
  v12 = *(a4 + 16);
  v41 = *a4;
  v42 = v12;
  if (!a2 || !a3 || *(a2 + 8) != *(a3 + 8) || *(a2 + 16) != *(a3 + 16) || !*(a1 + 88))
  {
    goto LABEL_39;
  }

  v14 = *(a4 + 72);
  v13 = *(a4 + 80);
  if ((converter_does_tone_mapping(a1) & 1) == 0 && (*(a1 + 16) == 3 || CFEqual(*(a1 + 32), *(a1 + 24))) && conversion_formats_are_equal(a2, a3))
  {
    copy(a2, a3, a3, a4);
    return 1;
  }

  v18 = *(a2 + 64);
  if (v18 == 9)
  {
    v18 = 3;
  }

  else if (v18 == 8)
  {
    v18 = 1;
  }

  v19 = *(a2 + 40);
  v20 = *(a3 + 64);
  if (v20 == 9)
  {
    v20 = 3;
  }

  else if (v20 == 8)
  {
    v20 = 1;
  }

  if (v19 > 5 || ((1 << v19) & 0x36) == 0)
  {
LABEL_39:
    CGPostError("%s : Unable to complete color conversion", a2, a3, a4, a5, a6, a7, a8, "convert_using_colorsync_transform");
    return 0;
  }

  v21 = *(a2 + 56);
  if (*(a3 + 56) > v21)
  {
    v21 = *(a3 + 56);
  }

  v22 = 4 * (*(a2 + 8) + *(a2 + 8) * v21) * *(a2 + 16);
  v24 = v19 != 4 || *(a2 + 68) != 0x2000 || (v18 - 3) >= 0xFFFFFFFE;
  v25 = !v24;
  if (v24)
  {
    if (v14)
    {
      v26 = 0;
    }

    else
    {
      v26 = malloc_type_calloc(1uLL, v22, 0x1D5E15DuLL);
      v14 = v26;
    }
  }

  else
  {
    v26 = 0;
    v14 = *a2;
    if (*(a3 + 40) == 4 && *(a3 + 68) == 0x2000 && (v20 - 3) <= 0xFFFFFFFD)
    {
      v36 = 0;
      v27 = 0;
      v13 = *a3;
      v28 = 1;
      goto LABEL_47;
    }
  }

  v36 = v26;
  if (v13)
  {
    v28 = 0;
    v27 = 0;
  }

  else
  {
    v13 = malloc_type_calloc(1uLL, v22, 0x31F8D82CuLL);
    v28 = 0;
    v27 = v13;
  }

LABEL_47:
  if (!v14)
  {
    _CGHandleAssert("convert_using_colorsync_transform", 3622, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "colorsync_transform_info.buffer_in != NULL", "%s has no source buffer", a6, a7, a8, "convert_using_colorsync_transform");
  }

  if (!v13)
  {
    _CGHandleAssert("convert_using_colorsync_transform", 3623, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSConverter.c", "colorsync_transform_info.buffer_out != NULL", "%s has no destination buffer", a6, a7, a8, "convert_using_colorsync_transform");
  }

  if ((v25 & 1) == 0)
  {
    v37 = *&v43[8];
    v38 = *&v43[24];
    v39 = v14;
    v40 = v13;
    v18 = convert_src_data_to_float(&v37, a2);
  }

  if (v18 != -1)
  {
    if (convert_using_colorsync_transform_cglibrarypredicate != -1)
    {
      dispatch_once(&convert_using_colorsync_transform_cglibrarypredicate, &__block_literal_global_74_2211);
    }

    if (convert_using_colorsync_transform_f(*(a1 + 88), *(a2 + 8), *(a2 + 16), v13, 7))
    {
      if (v28)
      {
        v15 = 1;
      }

      else
      {
        v37 = *&v43[8];
        v38 = *&v43[24];
        v39 = v14;
        v40 = v13;
        v15 = convert_float_to_dst_data(&v37, v18 != 0, a3);
      }

      goto LABEL_59;
    }

    CGLog(3, "ColorSyncTransformConvert failed", v30, v31, v32, v33, v34, v35, 7);
  }

  v15 = 0;
LABEL_59:
  if (v36)
  {
    free(v36);
  }

  if (v27)
  {
    free(v27);
  }

  return v15;
}

const __CFDictionary *converter_does_tone_mapping(uint64_t a1)
{
  result = *(a1 + 72);
  if (result)
  {
    if (CFDictionaryContainsKey(result, @"kCGColorConversionInfoOptions"))
    {
      return 1;
    }

    else
    {
      return (CFDictionaryContainsKey(*(a1 + 72), @"kCGImageExtendedRangeToneMappingInfo") != 0);
    }
  }

  return result;
}

uint64_t update_cache(uint64_t a1, const void *a2, int a3, void *a4, int a5)
{
  if (a4)
  {
    v10 = a4[3];
    if (v10)
    {
      v11 = (v10 + 64);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  cache_entry = find_cache_entry(*(a1 + 120), v11);
  if (!cache_entry)
  {
    v17 = *(a1 + 49);
    v18 = malloc_type_malloc(0x40uLL, 0x10C0040AF2BCAA4uLL);
    v19 = v18;
    v20 = 0;
    v21 = a4[3];
    if (v21)
    {
      v22 = (v21 + 64);
    }

    else
    {
      v22 = 0;
    }

    *v18 = *v22;
    v18[4] = a3;
    if (a5 != 1 && (v17 & 1) != 0)
    {
      v20 = CGColorSpaceIgnoresIntent(a4);
    }

    for (i = 6; i != 16; i += 2)
    {
      v24 = v20 ^ 1;
      if (i == 8)
      {
        v24 = 1;
      }

      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = CFRetain(a2);
      }

      *&v19[i] = v25;
    }

    if ((v20 & 1) == 0)
    {
      *&v19[2 * a5 + 6] = CFRetain(a2);
    }

    v26 = *(a1 + 120);
    v27 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
    if (v27)
    {
      *v27 = v19;
      v27[1] = v26;
      v26 = v27;
      *(a1 + 120) = v27;
    }

    else
    {
      *(a1 + 120) = v26;
      if (!v26)
      {
        return 0;
      }
    }

    v28 = 0;
    v29 = v26;
    do
    {
      ++v28;
      v29 = v29[1];
    }

    while (v29);
    if (v28 == 16)
    {
      v30 = v26;
      do
      {
        v31 = v30;
        v30 = v30[1];
      }

      while (v30);
      v16 = *v31;
      x_list_remove(v26, *v31);
      return v16;
    }

    return 0;
  }

  if (cache_entry[a5 + 3])
  {
    _CGHandleAssert("update_cache", 150, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorTransformCache.c", "entry == NULL || entry->converters[intent] == NULL", "entry %p converters %p", v13, v14, v15, cache_entry);
  }

  v16 = 0;
  cache_entry[a5 + 3] = CFRetain(a2);
  return v16;
}

uint64_t convert_using_vImageConverter(uint64_t a1, const std::__fs::filesystem::path *a2, const std::__fs::filesystem::path *a3, vImageConverterRef **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2 || !a3 || a2->__pn_.__r_.__value_.__l.__size_ != a3->__pn_.__r_.__value_.__l.__size_ || a2->__pn_.__r_.__value_.__r.__words[2] != a3->__pn_.__r_.__value_.__r.__words[2])
  {
    CGPostError("%s : Unable to complete color conversion", a2, a3, a4, a5, a6, a7, a8, "convert_using_vImageConverter");
    return 0;
  }

  if ((converter_does_tone_mapping(a1) & 1) == 0 && (*(a1 + 16) == 3 || CFEqual(*(a1 + 32), *(a1 + 24))) && conversion_formats_are_equal(a2, a3))
  {
    copy(a2, a3, v12, v13);
    return 1;
  }

  v15 = *a4;
  if (*a4)
  {
    v16 = 0;
LABEL_16:
    v17 = a4[1];
    memcpy(__dst, a2, sizeof(__dst));
    memcpy(v24, a3, sizeof(v24));
    v23 = vImageConverterConvert(*v15, __dst, v24, v17);
    if (v16)
    {
      CGvImageConverterCacheRelease(v16);
    }

    if (v23)
    {
      return 1;
    }

    post_conversion_error(a2, a3, "vImageConvert_AnyToAny", v18, v19, v20, v21, v22);
    return 0;
  }

  result = CGCMSConverterCreateCachedCGvImageConverter(a1, a2, a3);
  v16 = result;
  v15 = result;
  if (result)
  {
    goto LABEL_16;
  }

  return result;
}

void *CGCMSConverterCreateCachedCGvImageConverter(void *a1, const void *a2, const void *a3)
{
  v126 = *MEMORY[0x1E69E9840];
  memcpy(__dst, a2, sizeof(__dst));
  v105 = a3;
  memcpy(__src, a3, sizeof(__src));
  value_out = 0;
  if (CGvImageConverterCacheGetRetained_cglibrarypredicate != -1)
  {
    dispatch_once(&CGvImageConverterCacheGetRetained_cglibrarypredicate, &__block_literal_global_18331);
  }

  Retained_f = CGvImageConverterCacheGetRetained_f(0);
  v108 = v6;
  v109 = Retained_f;
  if (a1)
  {
    v8 = a1[3];
    v7 = a1[4];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v119 = 0;
  v117 = 0u;
  v118 = 0u;
  memcpy(key, __dst, 0x158uLL);
  vImage_FormatFromConversionFormat(&v117, key, v7, v9, v10, v11, v12, v13);
  v116 = 0;
  v114 = 0u;
  v115 = 0u;
  memcpy(key, __src, 0x158uLL);
  vImage_FormatFromConversionFormat(&v114, key, v8, v14, v15, v16, v17, v18);
  v106 = a1;
  if (a1 && (v19 = a1[9]) != 0)
  {
    *&v107 = CGCFDictionaryGetMD5Digest(v19, 0);
    *(&v107 + 1) = v20;
  }

  else
  {
    v107 = 0uLL;
  }

  v111 = CGColorSpaceUsesExtendedRange(v7);
  v110 = CGColorSpaceUsesExtendedRange(v8);
  v21 = v117;
  v22 = *(&v118 + 1);
  v23 = v118;
  v24 = v119;
  v25 = v114;
  v26 = *(&v115 + 1);
  v27 = v115;
  v28 = &key[8];
  v29 = v116;
  bzero(&key[8], 0x208uLL);
  *&key[0] = v109;
  *(&key[0] + 1) = v108;
  key[1] = v107;
  key[2] = v21;
  *&key[3] = v23;
  *(&key[3] + 1) = v22;
  *&key[4] = v24;
  *(&key[4] + 8) = v25;
  *(&key[5] + 1) = v27;
  *&key[6] = v26;
  *(&key[6] + 1) = v29;
  if (*(&v21 + 1))
  {
    v30 = *(*(*(&v21 + 1) + 24) + 48);
  }

  else
  {
    v30 = 0;
  }

  *&key[7] = v30;
  if (*(&v25 + 1))
  {
    v31 = *(*(*(&v25 + 1) + 24) + 48);
  }

  else
  {
    v31 = 0;
  }

  *(&key[7] + 1) = v31;
  if (v22)
  {
    for (; v30; --v30)
    {
      v32 = *v22++;
      *v28++ = v32;
    }

    *(&key[3] + 1) = 0;
  }

  if (v26)
  {
    if (v31)
    {
      v33 = v125;
      do
      {
        v34 = *v26++;
        *v33++ = v34;
        --v31;
      }

      while (v31);
    }

    *&key[6] = 0;
  }

  v125[256] = v111;
  v125[257] = v110;
  cache_lock_18332();
  if (get_cache_predicate_18333 != -1)
  {
    dispatch_once(&get_cache_predicate_18333, &__block_literal_global_7_18334);
  }

  if (!cache_get_and_retain(*(get_cache_converter_cache + 64), key, &value_out))
  {
    cache_unlock_18335();
    if (!value_out)
    {
      _CGHandleAssert("CGvImageConverterCacheGetRetained", 315, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGvImageConverterCache.c", "converter != NULL", "converter missing", v39, v40, v41, v103);
    }

    CGConditionalVarWait(value_out + 8, v35, v36, v37, v38, v39, v40, v41);
    v42 = value_out;
    if (value_out && *value_out)
    {
      return v42;
    }

    release_and_remove_18339(key, value_out);
    value_out = 0;
    cache_lock_18332();
  }

  v42 = value_out;
  if (value_out)
  {
    return v42;
  }

  v43 = malloc_type_calloc(1uLL, 0x338uLL, 0x10B004081A944E8uLL);
  if (v43)
  {
    v44 = v43;
    memcpy(v43 + 472, __src, 0x158uLL);
    memcpy(v44 + 128, __dst, 0x158uLL);
    v44[816] = v111;
    v44[817] = v110;
    CGConditionalVarInit((v44 + 8), v45, v46, v47, v48, v49, v50, v51);
    value_out = v44;
    if (get_cache_predicate_18333 != -1)
    {
      dispatch_once(&get_cache_predicate_18333, &__block_literal_global_7_18334);
    }

    cache_set_and_retain(*(get_cache_converter_cache + 64), key, value_out, 0);
  }

  else
  {
    value_out = 0;
  }

  cache_unlock_18335();
  v59 = value_out;
  if (!value_out)
  {
    goto LABEL_92;
  }

  if (!v106)
  {
    goto LABEL_88;
  }

  v60 = v106[3];
  v61 = v106[4];
  memset(&srcFormat, 0, sizeof(srcFormat));
  memcpy(v122, value_out + 128, sizeof(v122));
  vImage_FormatFromConversionFormat(&srcFormat, v122, v61, v62, v63, v64, v65, v66);
  memset(&destFormat, 0, sizeof(destFormat));
  memcpy(v122, v59 + 59, sizeof(v122));
  vImage_FormatFromConversionFormat(&destFormat, v122, v60, v67, v68, v69, v70, v71);
  v79 = *(v106 + 4);
  if (v79 != 1)
  {
    if (v79 == 2)
    {
      v81 = CGColorConversionInfoCreateFromListInternal(v106[9], *(v106 + 80), v61, v74, *(v106 + 21), v76, v77, v78, v60);
      v82 = vImageConverter_CreateWithCGColorConversionInfo(v81, &srcFormat, &destFormat, 0, 0x100u, 0);
      *v59 = v82;
      if (!v81)
      {
        goto LABEL_50;
      }

      CFRelease(v81);
    }

    else
    {
      if (v79 == 3)
      {
        v80 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, 0x100u, 0);
        goto LABEL_87;
      }

      CGPostError("Unknown CGCMS converter type", v72, v73, v74, v75, v76, v77, v78, v103);
    }

    v82 = *v59;
LABEL_50:
    if (!v82)
    {
LABEL_88:
      CGPostError("%s failed to create vImageConverter", v52, v53, v54, v55, v56, v57, v58, "CGvImageConverterInitializeShared");
      if (value_out)
      {
        CGConditionalVarPost(value_out + 8, v94, v95, v96, v97, v98, v99, v100);
        v101 = value_out;
      }

      else
      {
        v101 = 0;
      }

      release_and_remove_18339(key, v101);
      goto LABEL_92;
    }

    goto LABEL_51;
  }

  v83 = CGColorSpaceUsesExtendedRange(v61) && CGColorSpaceUsesExtendedRange(v60);
  ProcessColorModel = CGColorSpaceGetProcessColorModel(v61);
  if (ProcessColorModel == 2)
  {
    v92 = CGColorSpaceGetProcessColorModel(v60);
    if (v92 == 1)
    {
      v83 = CGColorSpaceUsesExtendedRange(v60);
      if (cmyk_to_rgb_info_predicate != -1)
      {
        dispatch_once(&cmyk_to_rgb_info_predicate, &__block_literal_global_25_10921);
      }

      v89 = &cmyk_to_rgb_info_cmyk_to_rgb_extended;
      v90 = &cmyk_to_rgb_info_cmyk_to_rgb_standard;
LABEL_79:
      if (!v83)
      {
        v89 = v90;
      }

      v93 = *v89;
      goto LABEL_85;
    }

    if (v92)
    {
      goto LABEL_95;
    }

    if (cmyk_to_gray_info_predicate != -1)
    {
      dispatch_once(&cmyk_to_gray_info_predicate, &__block_literal_global_22_10920);
    }

    v93 = cmyk_to_gray_info_cmyk_to_gray;
  }

  else if (ProcessColorModel == 1)
  {
    v91 = CGColorSpaceGetProcessColorModel(v60);
    if (v91 != 2)
    {
      if (v91)
      {
        goto LABEL_95;
      }

      if (rgb_to_gray_info_predicate != -1)
      {
        dispatch_once(&rgb_to_gray_info_predicate, &__block_literal_global_16_10919);
      }

      v89 = &rgb_to_gray_info_rgb_to_gray_extended;
      v90 = &rgb_to_gray_info_rgb_to_gray_standard;
      goto LABEL_79;
    }

    if (rgb_to_cmyk_info_predicate != -1)
    {
      dispatch_once(&rgb_to_cmyk_info_predicate, &__block_literal_global_19);
    }

    v93 = rgb_to_cmyk_info_rgb_to_cmyk;
  }

  else
  {
    if (ProcessColorModel)
    {
      goto LABEL_95;
    }

    v88 = CGColorSpaceGetProcessColorModel(v60);
    if (v88 != 2)
    {
      if (v88 != 1)
      {
        goto LABEL_95;
      }

      if (gray_to_rgb_info_predicate != -1)
      {
        dispatch_once(&gray_to_rgb_info_predicate, &__block_literal_global_10918);
      }

      v89 = &gray_to_rgb_info_gray_to_rgb_extended;
      v90 = &gray_to_rgb_info_gray_to_rgb_standard;
      goto LABEL_79;
    }

    if (gray_to_cmyk_info_predicate != -1)
    {
      dispatch_once(&gray_to_cmyk_info_predicate, &__block_literal_global_13);
    }

    v93 = gray_to_cmyk_info_gray_to_cmyk;
  }

LABEL_85:
  if (!v93)
  {
LABEL_95:
    _CGHandleAssert("conversion_info_for_device_conversion", 230, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGvImageConverter.c", "info != NULL", "conversion info missing", v85, v86, v87, v103);
  }

  v80 = vImageConverter_CreateWithCGColorConversionInfo(v93, &srcFormat, &destFormat, 0, 0x100u, 0);
LABEL_87:
  *v59 = v80;
  if (!v80)
  {
    goto LABEL_88;
  }

LABEL_51:
  if (!value_out || (CGConditionalVarPost(value_out + 8, v52, v53, v54, v55, v56, v57, v58), (v42 = value_out) == 0))
  {
LABEL_92:
    post_conversion_error(a2, v105, "vImageConverter_Create", v54, v55, v56, v57, v58);
    return 0;
  }

  return v42;
}

uint64_t CGvImage_converter_data_key_hash(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v2;
  v3 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v17 = v3;
  v18 = *(a1 + 64);
  bzero(&v24, 0x208uLL);
  v19 = *(a1 + 72);
  v20 = *(a1 + 88);
  v21 = *(a1 + 104);
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(v4 + 24) + 48);
  }

  else
  {
    v5 = 0;
  }

  v22 = v5;
  v6 = *(a1 + 80);
  if (v6)
  {
    v6 = *(*(v6 + 24) + 48);
  }

  v23 = v6;
  *(&v17 + 1) = 0;
  *(&v20 + 1) = 0;
  v26[124] = *(a1 + 640);
  if (v5)
  {
    v7 = *(a1 + 128);
    v8 = &v25;
    v9 = (a1 + 136);
    do
    {
      *(v8 - 1) = v7;
      v10 = *v9++;
      v7 = v10;
      *v8++ = v10;
      --v5;
    }

    while (v5);
  }

  if (v6)
  {
    v11 = *(a1 + 384);
    v12 = v26;
    v13 = (a1 + 392);
    do
    {
      *(v12 - 1) = v11;
      v14 = *v13++;
      v11 = v14;
      *v12++ = v14;
      --v6;
    }

    while (v6);
  }

  return MEMORY[0x1865EEA10](v16, 648);
}

uint64_t CGConditionalVarInit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGConditionalVarInit", 21, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Utilities/CGConditionalVar.c", "cvar != NULL", "Conditional variable is NULL", a6, a7, a8, v10);
  }

  *(a1 + 112) = 0;
  result = pthread_mutex_init(a1, 0);
  if (!result)
  {

    return pthread_cond_init((a1 + 64), 0);
  }

  return result;
}

void *CGvImage_converter_data_key_retain(void *a1, void *a2)
{
  result = malloc_type_malloc(0x288uLL, 0x10E0040AB895360uLL);
  if (result)
  {
    v5 = result;
    memcpy(result, a1, 0x288uLL);
    *a2 = v5;
    v6 = a1[5];
    if (v6)
    {
      CFRetain(v6);
    }

    result = a1[10];
    if (result)
    {

      return CFRetain(result);
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t __CGOSAppleInternalBuild_block_invoke()
{
  result = os_variant_allows_internal_security_policies();
  if (result)
  {
    result = os_variant_has_internal_content();
  }

  CGOSAppleInternalBuild_is_internal = result;
  return result;
}

void __CGColorSyncTransformCacheGetRetained_block_invoke()
{
  v22 = *MEMORY[0x1E69E9840];
  v0 = getenv("CGCOLORCONVERSIONINFO_PLIST_PATH");
  if (!v0 || (v1 = CFStringCreateWithCString(0, v0, 0x8000100u), (v2 = CFURLCreateWithFileSystemPath(0, v1, kCFURLPOSIXPathStyle, 0)) == 0))
  {
    MainBundleIfLooksLikeBundle = _CFBundleGetMainBundleIfLooksLikeBundle();
    if (MainBundleIfLooksLikeBundle && (v4 = CFBundleCopyBundleURL(MainBundleIfLooksLikeBundle)) != 0 && (v5 = CFURLCreateWithString(0, @"Contents/Resources/CGColorConversionInfoOptions.plist", v4)) != 0)
    {
      v6 = v5;
      v2 = CFURLCopyAbsoluteURL(v5);
      CFRelease(v6);
    }

    else
    {
      v2 = 0;
    }
  }

  bzero(buffer, 0x401uLL);
  if (!CFURLGetFileSystemRepresentation(v2, 0, buffer, 1025) || (v7 = open(buffer, 0, 0), v7 == -1) || (v8 = v7, memset(&v20, 0, sizeof(v20)), v9 = fstat(v7, &v20), close(v8), v9 == -1))
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_19;
  }

  if (v2)
  {
    v10 = CFReadStreamCreateWithFile(0, v2);
    if (v10)
    {
      v2 = v10;
      CFReadStreamOpen(v10);
      *&v20.st_dev = 0;
      v11 = CFPropertyListCreateWithStream(0, v2, 0, 0, 0, &v20);
      if (*&v20.st_dev)
      {
        v12 = CFCopyDescription(*&v20.st_dev);
        CGLog(2, "Reading %s failed: %@", v13, v14, v15, v16, v17, v18, buffer);
        if (v12)
        {
          CFRelease(v12);
        }

        CFRelease(*&v20.st_dev);
        if (!v11)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (!v11)
        {
LABEL_25:
          CFReadStreamClose(v2);
LABEL_19:
          CFRelease(v2);
          return;
        }

        v19 = CFGetTypeID(v11);
        if (v19 == CFDictionaryGetTypeID())
        {
          CGColorSyncTransformCacheGetRetained_bundle_options = CFRetain(v11);
        }
      }

      CFRelease(v11);
      goto LABEL_25;
    }
  }
}

uint64_t (*__md5_creator_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileGetTypeID");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_12544;
  }

  md5_creator_f = v1;
  return result;
}

uint64_t (*__md5_creator_block_invoke_2())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileGetMD5");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_12544;
  }

  md5_creator_f_20 = v1;
  return result;
}

_OWORD *colorsync_transform_data_key_retain(_OWORD *a1, void *a2)
{
  result = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
  if (result)
  {
    v5 = a1[1];
    *result = *a1;
    result[1] = v5;
  }

  *a2 = result;
  return result;
}

void converter_initialize()
{
  if (kCGCMSConverterID_block_invoke_once != -1)
  {
    dispatch_once(&kCGCMSConverterID_block_invoke_once, &__block_literal_global_9_2152);
  }
}

uint64_t __converter_initialize_block_invoke_2()
{
  result = __CGTypeRegisterInternal(kCGCMSConverterClass);
  kCGCMSConverterID = result;
  return result;
}

uint64_t (*__transform_get_conv_type_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncTransformCopyProperty");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_2218;
  }

  transform_get_conv_type_f = v1;
  return result;
}

uint64_t __linked_on_golden_gate_or_later_block_invoke()
{
  linked_on_golden_gate_or_later_linked_on_golden_gate_or_later = dyld_program_sdk_at_least();
  linked_on_golden_gate_or_later_linked_on_azul_or_later = dyld_program_sdk_at_least();
  linked_on_golden_gate_or_later_linked_on_archer_or_later = dyld_program_sdk_at_least();
  result = dyld_program_sdk_at_least();
  linked_on_golden_gate_or_later_linked_on_borealis_or_later = result;
  return result;
}

BOOL CGvImage_converter_data_key_is_equal(__int128 *a1, __int128 *a2)
{
  v36 = *a2;
  v37 = *a1;
  v34 = a2[1];
  v35 = a1[1];
  v2 = *(a1 + 14);
  if (v2 != *(a2 + 14))
  {
    return 0;
  }

  v5 = *(a1 + 15);
  if (v5 != *(a2 + 15))
  {
    return 0;
  }

  if (v37 != v36 || *(&v37 + 1) != *(&v36 + 1))
  {
    return 0;
  }

  if (v35 != v34 || *(&v35 + 1) != *(&v34 + 1))
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 9) == *(a2 + 9) && *(a1 + 16) == *(a2 + 16) && *(a1 + 12) == *(a2 + 12))
  {
    v9 = *(a1 + 18);
    v10 = *(a1 + 19);
    v11 = *(a1 + 26);
    v13 = *(a2 + 18);
    v12 = *(a2 + 19);
    v30 = *(a2 + 10);
    v31 = *(a1 + 10);
    v32 = *(a2 + 22);
    v33 = *(a1 + 22);
    v14 = *(a2 + 26);
    v28 = *(a1 + 641);
    v29 = *(a1 + 640);
    v26 = *(a2 + 641);
    v27 = *(a2 + 640);
    result = CGColorSpaceEqualToColorSpace(*(a1 + 5), *(a2 + 5));
    if (result)
    {
      result = 0;
      if (v9 == v13 && v10 == v12 && v11 == v14 && v33 == v32)
      {
        result = CGColorSpaceEqualToColorSpace(v31, v30);
        if (result)
        {
          if (v2)
          {
            v15 = 16;
            do
            {
              v16 = *(a1 + v15);
              v17 = *(a2 + v15);
              v18 = v15 - 15;
              ++v15;
            }

            while (v16 == v17 && v18 < v2);
            if (v16 != v17)
            {
              return 0;
            }
          }

          if (v5)
          {
            v20 = 48;
            do
            {
              v21 = *(a1 + v20);
              v22 = *(a2 + v20);
              v23 = v20 - 47;
              v24 = v21 == v22;
              ++v20;
            }

            while (v21 == v22 && v23 < v5);
          }

          else
          {
            v24 = 1;
          }

          if (v29 != v27)
          {
            v24 = 0;
          }

          return v28 == v26 && v24;
        }
      }
    }
  }

  return result;
}

char *CGImageGetDataProviderInternal(char *result, int a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v4 == CGImageGetTypeID_image_type_id)
    {
      if (*(v3 + 26))
      {
        pthread_mutex_lock((v3 + 80));
        if (!*(v3 + 19))
        {
          v5 = CGDataProviderCreateWithImageProvider(*(v3 + 26));
          v6 = v5;
          if (a2)
          {
            v7 = CGDataProviderCopyData(v5);
            if (v7)
            {
              v8 = v7;
              CGDataProviderRelease(v6);
              *(v3 + 19) = CGDataProviderCreateWithCFData(v8);
              CFRelease(v8);
            }
          }

          else
          {
            *(v3 + 19) = v5;
          }
        }

        pthread_mutex_unlock((v3 + 80));
      }

      return *(v3 + 19);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL vImageConverterConvert(vImageConverterRef converter, uint64_t a2, uint64_t a3, void *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (!(v5 * v4))
  {
    return 0;
  }

  v9 = *(a2 + 24);
  v51.data = *a2;
  v51.height = v4;
  v51.width = v5;
  if (!v9)
  {
    memcpy(v52, (a2 + 40), sizeof(v52));
    v9 = (CGBitmapPixelInfoGetBitsPerPixel(v52, v10, v11, v12, v13, v14, v15, v16) >> 3) * v5;
  }

  v51.rowBytes = v9;
  v17 = *(a3 + 24);
  v50.data = *a3;
  v18 = *(a3 + 8);
  *&v50.height = vextq_s8(v18, v18, 8uLL);
  if (!v17)
  {
    v49 = v18;
    memcpy(v52, (a3 + 40), sizeof(v52));
    v17 = (CGBitmapPixelInfoGetBitsPerPixel(v52, v19, v20, v21, v22, v23, v24, v25) >> 3) * v49.i64[0];
  }

  v50.rowBytes = v17;
  if (a4)
  {
    return vImageConverter_convert_internal(converter, &v51, &v50, a4);
  }

  v27 = vImageConvert_AnyToAny(converter, &v51, &v50, 0, 0x80u);
  if (v27 < 0)
  {
    CGPostError("vImageConvert_AnyToAny failed to return valid buffer size", v28, v29, v30, v31, v32, v33, v34, v49.i8[0]);
    return 0;
  }

  if (!v27)
  {
    vImageConverter_convert_internal(converter, &v51, &v50, 0);
    return 0;
  }

  v36 = MEMORY[0x1EEE9AC00](v27, v35);
  v38 = &v49.i8[-v37];
  if (v36 <= 0x400)
  {
    return vImageConverter_convert_internal(converter, &v51, &v50, &v49 - v37);
  }

  v39 = malloc_type_malloc(v36, 0xE19CCC6BuLL);
  if (!v39)
  {
    CGPostError("vImageConverter could not allocate buffer %s", v40, v41, v42, v43, v44, v45, v46, "vImageConverterConvert");
    return 0;
  }

  v47 = v39;
  v26 = vImageConverter_convert_internal(converter, &v51, &v50, v39);
  if (v47 != v38)
  {
    free(v47);
  }

  return v26;
}

BOOL vImageConverter_convert_internal(vImageConverter *a1, const vImage_Buffer *a2, const vImage_Buffer *a3, void *a4)
{
  v11 = vImageConvert_AnyToAny(a1, a2, a3, a4, 0x10u);
  if (v11)
  {
    CGPostError("vImageConvert_AnyToAny failed in %s", v4, v5, v6, v7, v8, v9, v10, "vImageConverter_convert_internal");
  }

  return v11 == 0;
}

void CGvImageConverterCacheRelease(char *value)
{
  if (get_cache_predicate_18333 != -1)
  {
    dispatch_once(&get_cache_predicate_18333, &__block_literal_global_7_18334);
  }

  if (cache_release_value(*(get_cache_converter_cache + 64), value))
  {

    CGvImageConverterDeallocate(value);
  }
}

void *x_list_remove(void *result, uint64_t a2)
{
  v4 = result;
  if (result)
  {
    v3 = &v4;
    do
    {
      if (*result == a2)
      {
        *v3 = result[1];
        free(result);
      }

      else
      {
        v3 = result + 1;
      }

      result = *v3;
    }

    while (*v3);
    return v4;
  }

  return result;
}

void color_transform_finalize(uint64_t a1)
{
  CGColorSpaceRelease(*(a1 + 40));
  CGColorSpaceRelease(*(a1 + 48));
  CGColorSpaceRelease(*(a1 + 56));
  CGColorSpaceRelease(*(a1 + 64));
  CGColorSpaceRelease(*(a1 + 72));
  CGColorSpaceRelease(*(a1 + 80));
  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 24);
  if ((*(v6 + 40) & 1) == 0)
  {
    _CGHandleAssert("CGColorTransformBaseCacheRelease", 174, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorTransformBase.c", "base->is_valid", "invalid", v2, v3, v4, v24);
  }

  pthread_mutex_lock(&cacheMutex);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v7 + 16);
  }

  else
  {
    v8 = 0;
  }

  v9 = base_cache;
  if (!base_cache)
  {
    goto LABEL_20;
  }

  v10 = *(v6 + 24);
  while (1)
  {
    v11 = *v9;
    v12 = *(*v9 + 24);
    if ((!(v10 | v12) || v10 && v12 && CFEqual(v10, v12)) && matches_space(*(v11 + 16), v8))
    {
      break;
    }

    v9 = v9[1];
    if (!v9)
    {
      goto LABEL_20;
    }
  }

  if (v11 != v6)
  {
    _CGHandleAssert("baseCacheRelease__", 154, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorTransformBase.c", "b == base", "b: %p  base: %p", v13, v14, v15, v11);
  }

  v16 = *(v11 + 32);
  if (!v16)
  {
    _CGHandleAssert("baseCacheRelease__", 155, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorTransformBase.c", "b->use_count > 0", "count %zu", v13, v14, v15, 0);
  }

  if ((*(v11 + 40) & 1) == 0)
  {
    _CGHandleAssert("baseCacheRelease__", 156, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorTransformBase.c", "b->is_valid", "dictionary not valid", v13, v14, v15, v24);
  }

  v17 = v16 - 1;
  *(v11 + 32) = v17;
  if (!v17)
  {
    base_cache = x_list_remove(base_cache, v11);
    pthread_mutex_unlock(&cacheMutex);
    v23 = *(v11 + 24);
    if (v23)
    {
      CFRelease(v23);
    }

    CFRelease(v11);
  }

  else
  {
LABEL_20:
    pthread_mutex_unlock(&cacheMutex);
  }

  v18 = *(a1 + 88);
  v19 = *(v18 + 80);
  if (v19)
  {
    do
    {
      free(*v19);
      v19 = *(v19 + 8);
    }

    while (v19);
    v18 = *(a1 + 88);
    v20 = *(v18 + 80);
    if (v20)
    {
      do
      {
        v21 = v20[1];
        free(v20);
        v20 = v21;
      }

      while (v21);
      v18 = *(a1 + 88);
    }
  }

  pthread_mutex_destroy(v18);
  v22 = *(a1 + 88);

  free(v22);
}

void color_transform_base_finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 40) = 0;
}

uint64_t cache_finalize(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    do
    {
      cache_entry_release(*v2);
      v2 = *(v2 + 8);
    }

    while (v2);
    v3 = *(a1 + 120);
    if (v3)
    {
      do
      {
        v4 = v3[1];
        free(v3);
        v3 = v4;
      }

      while (v4);
    }
  }

  CGColorSpaceRelease(*(a1 + 16));
  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  return pthread_mutex_destroy((a1 + 56));
}

size_t CGColorSpaceGetNumberOfComponents(size_t space)
{
  if (space)
  {
    return *(*(space + 24) + 48);
  }

  return space;
}

CGColorSpaceRef CGColorSpaceRetain(CGColorSpaceRef space)
{
  if (space)
  {
    CFRetain(space);
  }

  return space;
}

CGColorSpaceModel CGColorSpaceGetModel(CGColorSpaceRef space)
{
  if (!space)
  {
    return -1;
  }

  v2 = CFGetTypeID(space);
  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  if (v2 == CGColorSpaceGetTypeID_type_id)
  {
    return *(*(space + 3) + 28);
  }

  else
  {
    return -1;
  }
}

const void *___Z18CGPreferencesCheckI37CGImageMarkAllowTemplateMethodIntegerENT_10ResultTypeEv_block_invoke()
{
  result = get_BOOLean_property("CGImageMarkAllowTemplateMethodInteger", copy_preference_value, &CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::result);
  if ((result & 1) == 0)
  {
    CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::result = 1;
  }

  return result;
}

uint64_t CGColorFunctionGetProperties(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (CGColorTRCGetTypeID_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorTRCGetTypeID_cglibrarypredicate, &__block_literal_global_770);
  }

  if (v2 == CGColorTRCGetTypeID_f())
  {
    if (trc_get_properties_cglibrarypredicate != -1)
    {
      dispatch_once(&trc_get_properties_cglibrarypredicate, &__block_literal_global_54_786);
    }

    v3 = &trc_get_properties_f;
  }

  else
  {
    if (CGColorMatrixGetTypeID_cglibrarypredicate != -1)
    {
      dispatch_once(&CGColorMatrixGetTypeID_cglibrarypredicate, &__block_literal_global_16);
    }

    if (v2 == CGColorMatrixGetTypeID_f())
    {
      if (matrix_get_properties_cglibrarypredicate != -1)
      {
        dispatch_once(&matrix_get_properties_cglibrarypredicate, &__block_literal_global_58);
      }

      v3 = &matrix_get_properties_f;
    }

    else
    {
      if (CGColorNxMTransformGetTypeID_cglibrarypredicate != -1)
      {
        dispatch_once(&CGColorNxMTransformGetTypeID_cglibrarypredicate, &__block_literal_global_24);
      }

      if (v2 != CGColorNxMTransformGetTypeID_f())
      {
        return 0;
      }

      if (nxm_get_properties_cglibrarypredicate != -1)
      {
        dispatch_once(&nxm_get_properties_cglibrarypredicate, &__block_literal_global_62);
      }

      v3 = &nxm_get_properties_f;
    }
  }

  v4 = *v3;

  return v4(a1);
}

uint64_t ripl_BltOpMask(uint64_t result, _DWORD *a2, uint64_t a3)
{
  *(result + 120) = 0;
  *(result + 128) = 0;
  if (a3)
  {
    *(result + 112) = *(a3 + 20);
    *(result + 104) = *a2 - *(a3 + 12);
    *(result + 108) = *(a3 + 24) + *(a3 + 16) - (a2[1] + a2[3]);
    if (*(a3 + 72))
    {
      *(result + 2) = 5;
      *(result + 124) = *(a3 + 64);
      v3 = *(a3 + 72);
LABEL_12:
      *(result + 136) = v3;
      return result;
    }

    if (*(a3 + 56))
    {
      if ((*(a3 + 28) & 0x80) != 0)
      {
        v4 = 6;
      }

      else
      {
        v4 = 1;
      }

      *(result + 2) = v4;
      *(result + 124) = *(a3 + 48);
      v3 = *(a3 + 56);
      goto LABEL_12;
    }

    *(result + 2) = 5;
    *(result + 124) = 0;
    *(result + 136) = 0;
  }

  else if ((*result & 0xFF0000) != 0)
  {
    *result &= 0xFF00FFFF;
    *(result + 124) = 0;
    *(result + 136) = 0;
    *(result + 104) = 0;
    *(result + 112) = 0;
  }

  return result;
}

uint64_t CGBlt_initialize(uint64_t a1)
{
  if (!a1 || !*(a1 + 40))
  {
    return 0xFFFFFFFFLL;
  }

  v1 = *(a1 + 4);
  v2 = *(a1 + 12);
  v3 = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = v5 + v4;
  if (__OFADD__(v5, v4))
  {
    return 0;
  }

  v7 = v2 & ~(v2 >> 31);
  if (*(a1 + 20) < v3)
  {
    v3 = *(a1 + 20);
  }

  v8 = v3 - v7;
  if (__OFSUB__(v3, v7))
  {
    return 0;
  }

  v9 = v4 & ~(v4 >> 31);
  if (*(a1 + 24) < v6)
  {
    v6 = *(a1 + 24);
  }

  v10 = v6 - v9;
  if (__OFSUB__(v6, v9))
  {
    return 0;
  }

  v12 = v7 - v2;
  v13 = v9 - v4;
  v14 = *a1;
  v15 = BYTE2(*a1);
  if (v15 == 1 || v15 >= 5)
  {
    v16 = *(a1 + 104);
    v27 = v16 + v12;
    v28 = __OFADD__(v8, v16 + v12);
    v29 = v8 + v16 + v12;
    if (v28)
    {
      return 0;
    }

    v17 = *(a1 + 108);
    v30 = v17 + v13;
    v31 = v10 + v17 + v13;
    if (__OFADD__(v10, v17 + v13))
    {
      return 0;
    }

    v32 = v27 & ~(v27 >> 31);
    if (*(a1 + 112) < v29)
    {
      v29 = *(a1 + 112);
    }

    v28 = __OFSUB__(v29, v32);
    v8 = v29 - v32;
    if (v28)
    {
      return 0;
    }

    v33 = v30 & ~(v30 >> 31);
    if (*(a1 + 116) < v31)
    {
      v31 = *(a1 + 116);
    }

    v10 = v31 - v33;
    if (__OFSUB__(v31, v33))
    {
      return 0;
    }

    v12 = v32 - v16;
    v13 = v33 - v17;
    v18 = v15 == 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v14 &= 0xFF00FFFF;
    *a1 = v14;
    v18 = 1;
  }

  v19 = BYTE1(v14);
  if (BYTE1(v14) != 4)
  {
    if (*(a1 + 88))
    {
      v22 = *(a1 + 64);
      if (v22 >= 1)
      {
        v23 = *(a1 + 68);
        if (v23 > 0)
        {
          if ((v14 & 0xFE00) == 0x200)
          {
            v20 = *(a1 + 56);
            v21 = *(a1 + 60);
            goto LABEL_18;
          }

          if (BYTE1(v14) == 1)
          {
            v20 = *(a1 + 56);
            v34 = v20 + v12;
            v28 = __OFADD__(v8, v20 + v12);
            v35 = v8 + v20 + v12;
            if (!v28)
            {
              v21 = *(a1 + 60);
              v36 = v21 + v13;
              v37 = v10 + v36;
              if (!__OFADD__(v10, v36))
              {
                v38 = v34 & ~(v34 >> 31);
                if (v22 < v35)
                {
                  v35 = *(a1 + 64);
                }

                v28 = __OFSUB__(v35, v38);
                v8 = v35 - v38;
                if (!v28)
                {
                  v39 = v36 & ~(v36 >> 31);
                  if (v23 < v37)
                  {
                    v37 = *(a1 + 68);
                  }

                  v10 = v37 - v39;
                  if (!__OFSUB__(v37, v39))
                  {
                    v12 = v38 - v20;
                    v13 = v39 - v21;
                    v19 = 1;
                    goto LABEL_18;
                  }
                }
              }
            }

            return 0;
          }

          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v14 = v14 & 0xFFFF00FF | 0x400;
  *a1 = v14;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  *(a1 + 56) = xmmword_18439CDC0;
  v22 = 1;
  v23 = 1;
LABEL_18:
  v11 = 0;
  *(a1 + 4) = v8;
  *(a1 + 8) = v10;
  if (v8 >= 1 && v10 >= 1)
  {
    *(a1 + 12) = v12 + v2;
    *(a1 + 16) = v13 + v4;
    if (v19)
    {
      v24 = v20 + v12;
      v25 = v21 + v13;
      if (v19 == 3)
      {
        v24 = (v22 & ((v24 % v22) >> 31)) + v24 % v22;
        v25 = (v23 & ((v25 % v23) >> 31)) + v25 % v23;
      }

      else if (v19 == 2)
      {
        v24 = (v22 & ((v24 % v22) >> 31)) + v24 % v22;
        v25 = (v23 & ((v25 % v23) >> 31)) + v25 % v23;
        if (v24 + v8 <= v22 && v25 + v10 <= v23)
        {
          *a1 = v14 & 0xFFFF00FF | 0x100;
        }
      }

      *(a1 + 56) = v24;
      *(a1 + 60) = v25;
    }

    if (!v18)
    {
      *(a1 + 104) = v12 + v16;
      *(a1 + 108) = v13 + v17;
    }

    return 1;
  }

  return v11;
}

void ripc_ReleaseClipState(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      while (1)
      {
        v3 = v2[4];
        if (v3 == v2 + 3)
        {
          break;
        }

        v5 = *v3;
        v4 = v3[1];
        *(v5 + 8) = v4;
        *v4 = v5;
        *v3 = v3;
        v3[1] = v3;
        v6 = v3[11];
        if ((v6 + 1) >= 2)
        {
          (*(*v6 + 24))(v6);
        }

        free(v3);
      }

      (*(v2[6] + 24))(v2 + 6);
      free(v2);
      *a1 = 0;
    }
  }
}

BOOL CGConditionalVarPost(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGConditionalVarPost", 61, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Utilities/CGConditionalVar.c", "cvar != NULL", "Conditional variable is NULL", a6, a7, a8, v10);
  }

  if (pthread_mutex_lock(a1))
  {
    return 0;
  }

  *(a1 + 112) = 1;
  return !pthread_cond_broadcast((a1 + 64)) && pthread_mutex_unlock(a1) == 0;
}

CGImageRef CGBitmapContextCreateImage(CGContextRef context)
{
  if (!context)
  {
    v11 = 0;
LABEL_10:
    handle_invalid_context("CGBitmapContextCreateImage", v11, v1, v2, v3, v4, v5, v6);
    return 0;
  }

  if (*(context + 4) != 1129601108)
  {
    v11 = context;
    goto LABEL_10;
  }

  v8 = *(context + 5);
  if (!v8)
  {
    return 0;
  }

  v9 = *(v8 + 240);
  if (!v9)
  {
    v13 = *(context + 6);
    if (v13 == 12)
    {
      v26 = *(v8 + 248);
      if (v26)
      {
        v27 = v26();
        if (v27)
        {
          v28 = v27;
          v29 = CGDataProviderCreateWithCopyOfData(v27[8], (v27[2] - 1) * v27[11] + ((v27[9] * v27[1] + 7) >> 3));
          v30 = v29;
          if (v29)
          {
            *(v29 + 260) = 1;
          }

          v31 = *(v28 + 32);
          v32 = *(v28 + 8);
          v33 = *(v28 + 16);
          v35 = *(v28 + 72);
          v34 = *(v28 + 80);
          v36 = *(v28 + 88);
          if (!v31)
          {
            return mask_create(v32, v33, v34, v35, v36, v30, CGBitmapContextCreateImage_decode_1, 1, 4);
          }

          v37 = CGImageCreate(v32, v33, v34, v35, v36, v31, *(v28 + 40), v30, 0, 1, kCGRenderingIntentDefault);
          v38 = v37;
          if (!*(v28 + 120))
          {
            return v37;
          }

          alpha_image = create_alpha_image(v28);
          v12 = CGImageCreateWithMaskAndMatte(v38, alpha_image, CGBitmapContextCreateImage_matte_2);
          if (alpha_image)
          {
            CFRelease(alpha_image);
          }

          if (v38)
          {
            CFRelease(v38);
          }

          return v12;
        }
      }
    }

    else if (v13 == 4)
    {
      v14 = *(context + 4);
      v15 = CGDataProviderCreateWithCopyOfData(*(v14 + 64), *(v14 + 88) * *(v14 + 16));
      if (v15)
      {
        v16 = v15;
        v17 = 1;
        *(v15 + 260) = 1;
        v18 = *(v14 + 32);
        v19 = *(v14 + 8);
        v20 = *(v14 + 16);
        v22 = *(v14 + 72);
        v21 = *(v14 + 80);
        v23 = *(v14 + 88);
        if (v18)
        {
          v24 = CGImageCreate(v19, v20, v21, v22, v23, v18, *(v14 + 40), v16, 0, 1, kCGRenderingIntentDefault);
          v25 = *(*(*(context + 12) + 120) + 48);
          if (v25 == 0.0)
          {
            if (CGColorSpaceUsesExtendedRange(*(v14 + 32)))
            {
              v17 = 0;
            }

            else
            {
              CGColorSpaceSanitizeHeadroom(*(v14 + 32), v25);
              v25 = v40;
              v17 = 2;
            }
          }

          if (!CGImageSetHeadroom(v24, v17, v25))
          {
            CGPostError("%s: CGImageSetHeadroom failed to set headroom = %f", v41, v42, v43, v44, v45, v46, v47, "CGBitmapContextCreateImage");
          }

          if (*(v14 + 120))
          {
            v48 = create_alpha_image(v14);
            v12 = CGImageCreateWithMaskAndMatte(v24, v48, CGBitmapContextCreateImage_matte);
            if (v48)
            {
              CFRelease(v48);
            }

            if (v24)
            {
              CFRelease(v24);
            }
          }

          else
          {
            v12 = v24;
          }
        }

        else
        {
          v12 = mask_create(v19, v20, v21, v22, v23, v16, CGBitmapContextCreateImage_decode, 1, 4);
        }

        CGDataProviderRelease(v16);
        return v12;
      }
    }

    return 0;
  }

  return v9();
}

const __CFData *CGDataProviderCreateWithCopyOfData(unint64_t a1, unint64_t a2)
{
  result = create_protected_copy(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CGDataProviderCreateWithCFData(result);
    CFRelease(v3);
    return v4;
  }

  return result;
}

CFDataRef create_protected_copy(unint64_t bytes, unint64_t length)
{
  v2 = 0;
  if (!bytes || !length)
  {
    return v2;
  }

  v5 = MEMORY[0x1E69E9AC8];
  v6 = *MEMORY[0x1E69E9AC8];
  if (*MEMORY[0x1E69E9AC8] <= length)
  {
    v8 = -v6 & bytes;
    v9 = (((length + bytes + v6 - 1) & -v6) - v8);
    v10 = mmap(0, v9, 3, 4098, 905969664, 0);
    if (v10 == -1)
    {
      return 0;
    }

    v2 = &v10[bytes - v8];
    v11 = length > 4 * *v5;
    v12 = MEMORY[0x1E69E9A60];
    if (!v11 || vm_copy(*MEMORY[0x1E69E9A60], bytes, length, v2))
    {
      memcpy(v2, bytes, length);
    }

    MEMORY[0x1865F0120](*v12, v2, length, 1, 1);
    if (v2)
    {
      if (v2 == bytes)
      {
        goto LABEL_4;
      }

      v14.version = 0;
      memset(&v14.retain, 0, 40);
      v14.info = v9;
      v14.deallocate = vm_allocator_deallocate;
      v14.preferredSize = 0;
      v13 = CFAllocatorCreate(0, &v14);
      v2 = CFDataCreateWithBytesNoCopy(0, v2, length, v13);
      CFRelease(v13);
    }

    return v2;
  }

LABEL_4:

  return CFDataCreate(0, bytes, length);
}

void ripc_Finalize(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 288);
  }

  else
  {
    v1 = 0;
  }

  RIPLockCacheState();
  if (RIPGetCacheState_predicate != -1)
  {
    dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
  }

  v2 = RIPGetCacheState_cache_state;
  v3 = *(RIPGetCacheState_cache_state + 8);
  v4 = v3[1];
  if (v4 != v3)
  {
    v5 = *(v1 + 208);
    v6 = *(v5 + 16);
    do
    {
      if (!v6)
      {
        break;
      }

      v7 = v4[1];
      if (v4[3] == v5)
      {
        v8 = *v4;
        if (*v4 != v5)
        {
          *(v8 + 8) = v7;
          *v7 = v8;
          v9 = *(v5 + 8);
          *v4 = v5;
          v4[1] = v9;
          *(v5 + 8) = v4;
          *v9 = v4;
        }

        *(v5 + 16) = --v6;
        v11 = *(v4 - 2);
        v10 = *(v4 - 1);
        *(v11 + 8) = v10;
        *v10 = v11;
        *(v4 - 2) = (v4 - 2);
        *(v4 - 1) = (v4 - 2);
        --*(v4[2] + 40);
        --*(v2 + 16);
      }

      v4 = v7;
    }

    while (v7 != v3);
  }

  RIPUnlockCacheState();
  v12 = *(v1 + 208);
  v13 = v12[1];
  while (v13 != v12)
  {
    v14 = v13 - 2;
    v13 = v13[1];
    RIPCacheEntryRelease(v14);
  }

  *v12 = v12;
  v12[1] = v12;
  while (1)
  {
    v15 = *(v1 + 88);
    if (!v15)
    {
      break;
    }

    *(v1 + 88) = *v15;
    v16 = v15[4];
    if (v16)
    {
      (*(*v16 + 24))(v16);
    }

    v17 = v15[1];
    if (v17)
    {
      CFRelease(v17);
    }

    ripc_ReleaseClipState(v15 + 5);
    free(v15);
  }

  v18 = *(v1 + 56);
  if (v18)
  {
    ripr_release(v18);
  }

  v19 = *(v1 + 64);
  if (v19)
  {
    ripr_release(v19);
  }

  v20 = *(v1 + 48);
  if (v20)
  {
    (*(*v20 + 24))(v20);
  }

  v21 = *(v1 + 16);
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(v1 + 200);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(v1 + 80);
  if (v23 && *v23)
  {
    (*(*v23 + 24))();
  }

  free(*(v1 + 176));
  free(*(v1 + 184));
  free(*(v1 + 192));
  ripc_ReleaseClipState((v1 + 72));
  v24 = *(v1 + 8);
  if (v24)
  {
    CGBitmapContextInfoRelease(v24);
  }

  free(*(v1 + 208));
  pthread_mutex_lock(&contexts_mutex);
  contexts = x_list_remove(contexts, v1);
  pthread_mutex_unlock(&contexts_mutex);

  free(v1);
}

void RIPLockCacheState()
{
  if (RIPGetCacheState_predicate != -1)
  {
    dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
  }

  v1 = RIPGetCacheState_cache_state;

  os_unfair_lock_lock(v1);
}

void RIPUnlockCacheState()
{
  if (RIPGetCacheState_predicate != -1)
  {
    dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
  }

  v1 = RIPGetCacheState_cache_state;

  os_unfair_lock_unlock(v1);
}

void bitmap_context_finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      CGBitmapContextInfoRelease(*(a1 + 32));
    }

    else
    {
      handle_invalid_context("bitmap_context_finalize", a1, a3, a4, a5, a6, a7, a8);
    }
  }
}

void CGColorSpaceSanitizeHeadroom(CGColorSpaceRef space, float a2)
{
  if (a2 == 0.0)
  {
    CGColorSpaceGetHeadroomInfo(space, 0);
  }

  else if (!CGColorSpaceUsesExtendedRange(space))
  {
    CGColorSpaceUsesITUR_2100TF(space);
  }
}

uint64_t CGColorConversionInfoIterateFunctionsWithCallbacks(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8)
{
  if (!a1)
  {
    return 0;
  }

  v15 = CFGetTypeID(a1);
  if (CGColorConversionInfoGetTypeID_predicate != -1)
  {
    dispatch_once(&CGColorConversionInfoGetTypeID_predicate, &__block_literal_global_1190);
  }

  if (v15 != kCGColorConverterRuntimeID)
  {
    return 0;
  }

  v16 = a6;
  ColorSyncTransform = CGColorConversionInfoGetColorSyncTransform(a1);
  v17 = CFGetTypeID(a1);
  if (CGColorConversionInfoGetTypeID_predicate != -1)
  {
    dispatch_once(&CGColorConversionInfoGetTypeID_predicate, &__block_literal_global_1190);
  }

  if (v17 == kCGColorConverterRuntimeID)
  {
    v18 = a1[3];
  }

  else
  {
    v18 = 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a2 >= 3)
  {
    _CGHandleAssert("colorsync_iterator_type", 224, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfoIterator.c", "", "Unimplemented", v21, v22, v23, ColorSyncTransform);
  }

  v24 = Mutable;
  if (!Mutable)
  {
    if (a7 < 7)
    {
      goto LABEL_16;
    }

LABEL_23:
    _CGHandleAssert("color_sync_nxm_format", 258, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorConversionInfoIterator.c", "", "Unimplemented", v21, v22, v23, ColorSyncTransform);
  }

  CFDictionarySetValue(Mutable, @"com.apple.cmm.TransformIterationType", off_1E6E05960[a2]);
  if (a7 >= 7)
  {
    goto LABEL_23;
  }

  CFDictionarySetValue(v24, @"com.apple.cmm.NxMLUTFormat", off_1E6E05978[a7]);
LABEL_16:
  CGCFDictionarySetInteger(v24, @"com.apple.cmm.GridPointCount", a8);
  CGColorTransformOptionsToColorSyncTransformOptions(v24, v18);
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x6800000000;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  memset(v36, 0, sizeof(v36));
  if (CGColorConversionInfoIterateFunctionsWithCallbacks_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorConversionInfoIterateFunctionsWithCallbacks_cglibrarypredicate, &__block_literal_global_43);
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 0x40000000;
  v31[2] = __CGColorConversionInfoIterateFunctionsWithCallbacks_block_invoke_2;
  v31[3] = &unk_1E6E056E8;
  v31[4] = a3;
  v31[5] = v32;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 0x40000000;
  v30[2] = __CGColorConversionInfoIterateFunctionsWithCallbacks_block_invoke_3;
  v30[3] = &unk_1E6E05710;
  v30[4] = a4;
  v30[5] = v32;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 0x40000000;
  v29[2] = __CGColorConversionInfoIterateFunctionsWithCallbacks_block_invoke_4;
  v29[3] = &unk_1E6E05738;
  v29[4] = a5;
  v29[5] = v32;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 0x40000000;
  v28[2] = __CGColorConversionInfoIterateFunctionsWithCallbacks_block_invoke_5;
  v28[3] = &unk_1E6E05760;
  v28[4] = v16;
  v28[5] = v32;
  v19 = CGColorConversionInfoIterateFunctionsWithCallbacks_f(ColorSyncTransform, v24, v31, v30, v29, v28);
  if (v24)
  {
    CFRelease(v24);
  }

  _Block_object_dispose(v32, 8);
  return v19;
}

void *CGColorConversionInfoGetColorSyncTransform(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (CGColorConversionInfoGetTypeID_predicate != -1)
    {
      dispatch_once(&CGColorConversionInfoGetTypeID_predicate, &__block_literal_global_1190);
    }

    if (v2 == kCGColorConverterRuntimeID)
    {
      return v1[2];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void CGCFDictionarySetInteger(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  if (a1 && a2)
  {
    v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (v5)
    {
      v6 = v5;
      CFDictionarySetValue(a1, a2, v5);
      CFRelease(v6);
    }
  }
}

void CGColorTransformOptionsToColorSyncTransformOptions(__CFDictionary *a1, const __CFDictionary *a2)
{
  if (a2)
  {
    cg_options_to_colorsync_options(a1, a2);
    Value = CFDictionaryGetValue(a2, @"kCGColorConversionInfoOptions");

    cg_options_to_colorsync_options(a1, Value);
  }
}

uint64_t __CGColorConversionInfoIterateFunctionsWithCallbacks_block_invoke_2(uint64_t a1, _OWORD *a2)
{
  v3 = *(*(a1 + 40) + 8);
  v5 = a2[2];
  v4 = a2[3];
  v6 = *(a2 + 60);
  *(v3 + 40) = a2[1];
  *(v3 + 84) = v6;
  *(v3 + 72) = v4;
  *(v3 + 56) = v5;
  *(v3 + 24) = *a2;
  v7 = *(a1 + 32);
  if (!v7)
  {
    return 1;
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v7 + 16);
  v10 = *(v8 + 56);
  v12[1] = *(v8 + 40);
  v12[2] = v10;
  v13[0] = *(v8 + 72);
  *(v13 + 12) = *(v8 + 84);
  v12[0] = *(v8 + 24);
  return v9(v7, v12);
}

double CGColorMatrixGetMatrix@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (CGColorMatrixGetMatrix_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorMatrixGetMatrix_cglibrarypredicate, &__block_literal_global_20);
  }

  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  CGColorMatrixGetMatrix_f(&v6, a1);
  v4 = v7;
  *a2 = v6;
  a2[1] = v4;
  result = *&v8;
  a2[2] = v8;
  return result;
}

uint64_t create_conversion_info(const void *a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = CFGetTypeID(a1);
  if (create_conversion_info_cglibrarypredicate != -1)
  {
    dispatch_once(&create_conversion_info_cglibrarypredicate, &__block_literal_global_112);
  }

  if (v4 != create_conversion_info_f())
  {
    return 0;
  }

  if (transform_is_null_cglibrarypredicate != -1)
  {
    dispatch_once(&transform_is_null_cglibrarypredicate, &__block_literal_global_116);
  }

  is_null_f = transform_is_null_f(a1, @"com.apple.cmm.TransformType", 0);
  if (is_null_f)
  {
    v6 = is_null_f;
    v7 = CFEqual(is_null_f, @"NULLTransform");
    CFRelease(v6);
    if (v7)
    {
      return 0;
    }
  }

  if (CGColorConversionInfoGetTypeID_predicate != -1)
  {
    dispatch_once(&CGColorConversionInfoGetTypeID_predicate, &__block_literal_global_1190);
  }

  Instance = _CFRuntimeCreateInstance();
  v8 = Instance;
  if (Instance)
  {
    *(Instance + 16) = a1;
    *(Instance + 24) = 0;
    if (a2)
    {
      v11 = CFRetain(a2);
    }

    else
    {
      v11 = 0;
    }

    *(v8 + 24) = v11;
  }

  return v8;
}

uint64_t __CGColorConversionInfoIterateFunctionsWithCallbacks_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    return 1;
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v4 + 16);
  v7 = *(v5 + 56);
  v9[1] = *(v5 + 40);
  v9[2] = v7;
  v10[0] = *(v5 + 72);
  *(v10 + 12) = *(v5 + 84);
  v9[0] = *(v5 + 24);
  return v6(v4, v9, a2, a3);
}

double CGColorTRCGetFunction@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (CGColorTRCGetFunction_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorTRCGetFunction_cglibrarypredicate, &__block_literal_global_4);
  }

  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  CGColorTRCGetFunction_f(&v6, a1);
  result = *&v6;
  v5 = v7;
  *a2 = v6;
  *(a2 + 16) = v5;
  *(a2 + 32) = v8;
  return result;
}

uint64_t CGColorTRCGetGammaID(uint64_t a1)
{
  if (CGColorTRCGetGammaID_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorTRCGetGammaID_cglibrarypredicate, &__block_literal_global_8);
  }

  v2 = CGColorTRCGetGammaID_f;

  return v2(a1);
}

uint64_t __CGColorConversionInfoIterateFunctionsWithCallbacks_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (!v5)
  {
    return 1;
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v5 + 16);
  v8 = *(v6 + 56);
  v10[1] = *(v6 + 40);
  v10[2] = v8;
  v11[0] = *(v6 + 72);
  *(v11 + 12) = *(v6 + 84);
  v10[0] = *(v6 + 24);
  return v7(v5, v10, a2, a3, a4);
}

void cg_color_conversion_info_finalize(uint64_t a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (CGColorConversionInfoGetTypeID_predicate != -1)
    {
      dispatch_once(&CGColorConversionInfoGetTypeID_predicate, &__block_literal_global_1190);
    }

    if (v2 == kCGColorConverterRuntimeID)
    {
      CGColorSyncTransformCacheRelease(*(a1 + 16));
      v3 = *(a1 + 24);
      if (v3)
      {

        CFRelease(v3);
      }
    }
  }
}

uint64_t (*__matrix_get_properties_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncMatrixGetProperties");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_776;
  }

  matrix_get_properties_f = v1;
  return result;
}

uint64_t (*__matrix_get_input_range_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncMatrixGetInputRange");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_776;
  }

  matrix_get_input_range_f = v1;
  return result;
}

uint64_t (*__matrix_get_input_range_block_invoke_2())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncMatrixGetInputRange");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_776;
  }

  matrix_get_input_range_f_77 = v1;
  return result;
}

uint64_t (*__matrix_get_output_range_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncMatrixGetOutputRange");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_776;
  }

  matrix_get_output_range_f = v1;
  return result;
}

uint64_t (*__create_conversion_info_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncTransformGetTypeID");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1207;
  }

  create_conversion_info_f = v1;
  return result;
}

uint64_t (*__transform_is_null_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncTransformCopyProperty");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1207;
  }

  transform_is_null_f = v1;
  return result;
}

uint64_t __CGColorConversionInfoGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  kCGColorConverterRuntimeID = result;
  return result;
}

uint64_t (*__matrix_get_output_range_block_invoke_2())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncMatrixGetOutputRange");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_776;
  }

  matrix_get_output_range_f_104 = v1;
  return result;
}

uint64_t (*__trc_get_properties_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncTRCGetProperties");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_776;
  }

  trc_get_properties_f = v1;
  return result;
}

uint64_t (*__trc_get_output_range_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncTRCGetOutputRange");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_776;
  }

  trc_get_output_range_f = v1;
  return result;
}

uint64_t (*__trc_get_output_range_block_invoke_2())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncTRCGetOutputRange");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_776;
  }

  trc_get_output_range_f_95 = v1;
  return result;
}

double aa_moveto(uint64_t a1, float a2, float a3)
{
  aa_close(a1);
  v4 = *(a1 + 176);
  ++*(a1 + 180);
  v5 = *(a1 + 168);
  v6 = vdup_n_s32(v5 != 0.0);
  v7 = vcvtq_f64_f32(__PAIR64__(LODWORD(a3), LODWORD(a2)));
  v8.i64[0] = v6.u32[0];
  v8.i64[1] = v6.u32[1];
  v9 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v8, 0x3FuLL)), vmulq_n_f64(v7, v5), v7);
  if ((v4 & 0x30000) != 0)
  {
    v10 = *(a1 + 64);
    v11 = *(a1 + 72);
    v12 = *(a1 + 80);
    v13 = *(a1 + 88);
    v14 = vdupq_n_s64(0x430C6BF526340000uLL);
    v15 = vbslq_s8(vcgtq_f64(v14, vabsq_f64(v9)), v9, vbslq_s8(vcgtzq_f64(v9), v14, vdupq_n_s64(0xC30C6BF526340000)));
    if (*v15.i64 <= v12)
    {
      v9.f64[0] = *v15.i64;
    }

    else
    {
      v9.f64[0] = *(a1 + 80);
    }

    v16 = (*v15.i64 > v12) | (4 * (*v15.i64 < v10));
    v17 = (8 * (*&v15.i64[1] < v11)) | (2 * (*&v15.i64[1] > v13));
    if (*v15.i64 < v10)
    {
      v9.f64[0] = *(a1 + 64);
    }

    if (v17)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = 16;
    }

    if (*&v15.i64[1] > v13)
    {
      v20 = *(a1 + 88);
    }

    else
    {
      v20 = *&v15.i64[1];
    }

    v21 = v16 | v17 | v19;
    *(a1 + 32) = v15;
    *(a1 + 48) = v15;
    if (*&v15.i64[1] < v11)
    {
      v20 = v11;
    }
  }

  else
  {
    v21 = 0;
    *(a1 + 32) = v9;
    *(a1 + 48) = v9;
    v20 = v9.f64[1];
  }

  v22 = *(a1 + 160);
  v23 = *(a1 + 128);
  v24 = *(a1 + 136);
  *(a1 + 176) = v4 & 0xFFFF0000 | (v21 << 8) | v21;
  v25 = (v22 + v23 * v9.f64[0]);
  result = v22 + v24 * v20;
  *(a1 + 24) = v25;
  *(a1 + 28) = result;
  *(a1 + 16) = v25;
  *(a1 + 20) = result;
  return result;
}

char *aa_new_edge(uint64_t a1)
{
  result = *(a1 + 192);
  v3 = *(result + 2);
  v4 = *(result + 3) + 1;
  if (v4 > v3)
  {
    v5 = 2 * v3;
    result = malloc_type_malloc((192 * v3) | 0x18, 0x10200405AF6BDC9uLL);
    if (!result)
    {
      return result;
    }

    *result = *(a1 + 192);
    *(a1 + 192) = result;
    *(result + 2) = v5;
    v4 = 1;
  }

  v6 = &result[96 * v4 - 96];
  *(result + 3) = v4;
  ++*(a1 + 184);
  *(v6 + 3) = 0;
  *(v6 + 4) = 0;
  return v6 + 24;
}

double aa_free_edges(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 192);
    v3 = *v2;
    if (*v2)
    {
      do
      {
        v4 = v3;
        free(v2);
        v3 = *v4;
        v2 = v4;
      }

      while (*v4);
    }

    else
    {
      v4 = v2;
    }

    *(a1 + 192) = v4;
    *(a1 + 188) = 0;
    *(v4 + 3) = 0;
    v5 = *(a1 + 176) & 0xFFF3FFFF;
    *(a1 + 180) = 0;
    *(a1 + 184) = 0;
    *(a1 + 176) = v5;
    result = 1.99609494;
    *a1 = xmmword_18439CD90;
  }

  return result;
}

uint64_t aa_close(uint64_t result)
{
  v11[4] = *MEMORY[0x1E69E9840];
  if (*(result + 180))
  {
    v1 = result;
    v2 = *(result + 32);
    v3 = *(result + 40);
    v4 = *(result + 48);
    v5 = *(result + 56);
    v6 = *(result + 28);
    v7 = *(result + 20);
    v8 = v4 == v2 && v5 == v3;
    if (!v8 && (*(result + 32) = v4, *(result + 40) = v5, v9 = *(result + 176), (v9 & 0x30000) != 0) && (*(result + 176) = *(result + 176) & 0xFFFF00FF | (*(result + 176) << 8), BYTE1(v9) | v9))
    {
      result = aa_clip_edge(v11, BYTE1(v9), v9, *(result + 64), *(result + 72), *(result + 80), *(result + 88), *(result + 128), *(result + 136), *(result + 160), v2, v3, v4, v5);
      if (result)
      {
        v7 = HIDWORD(v11[(result - 1)]);
      }
    }

    else
    {
      result = 0;
    }

    if (v6 != v7)
    {
      v10 = &v11[result];
      *v10 = *(v1 + 24);
      v10[1] = v6;
      result = (result + 1);
    }

    if (result)
    {
      return aa_add_edges(v1, v11, result);
    }
  }

  return result;
}

char *aa_add_edges(char *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v5 = *(result + 4);
  v4 = *(result + 5);
  if (!a3)
  {
    goto LABEL_37;
  }

  v6 = a3;
  v7 = 0;
  v8 = (a2 + 4);
  do
  {
    v9 = v5;
    v5 = *(v8 - 1);
    v10 = *v8;
    v11 = *v8 - v4;
    if (*v8 == v4)
    {
      v7 += ((4064 - (v4 & 0xFFF)) | ((v4 & 0xFFF) - 31)) >= 0;
      goto LABEL_32;
    }

    v12 = v5 - v9;
    v13 = *v3;
    if (v5 - v9 < 1)
    {
      if (v13 > v5)
      {
        *v3 = v5;
      }

      v14 = v9;
      if (*(v3 + 8) < v9)
      {
LABEL_9:
        *(v3 + 8) = v14;
      }
    }

    else
    {
      if (v13 > v9)
      {
        *v3 = v9;
      }

      v14 = v5;
      if (*(v3 + 8) < v5)
      {
        goto LABEL_9;
      }
    }

    if (v5 == v9)
    {
      goto LABEL_19;
    }

    v15 = (v12 << 12) / v11;
    if (!v15)
    {
      v9 = (v5 + v9) >> 1;
LABEL_19:
      LODWORD(v15) = 0;
      LODWORD(v16) = 0;
      v18 = 0;
      ++*(v3 + 188);
      v19 = v7 + (((4064 - (v9 & 0xFFF)) | ((v9 & 0xFFF) - 31)) >= 0);
LABEL_20:
      v17 = v9;
      goto LABEL_21;
    }

    v16 = (v11 << 12) / v12;
    v19 = v7;
    if (!v16)
    {
      v18 = 0;
      v9 = (v5 + v9) >> 1;
      goto LABEL_20;
    }

    v18 = 1;
    v17 = v5;
LABEL_21:
    result = aa_new_edge(v3);
    if (!result)
    {
      return result;
    }

    *(result + 8) = v16;
    *(result + 9) = v15;
    result[47] = v18;
    if (v10 - v4 < 1)
    {
      *(result + 22) = -1;
      *(result + 4) = v17;
      *(result + 5) = v9;
      *(result + 6) = v10;
      *(result + 7) = v4;
      v7 = v19;
      if (*(v3 + 4) > v10)
      {
        *(v3 + 4) = v10;
      }

      if (*(v3 + 12) < v4)
      {
        *(v3 + 12) = v4;
      }
    }

    else
    {
      *(result + 22) = 1;
      *(result + 4) = v9;
      *(result + 5) = v17;
      *(result + 6) = v4;
      *(result + 7) = v10;
      v7 = v19;
      if (*(v3 + 4) > v4)
      {
        *(v3 + 4) = v4;
      }

      if (*(v3 + 12) < v10)
      {
        *(v3 + 12) = v10;
      }
    }

    v4 = v10;
LABEL_32:
    v8 += 2;
    --v6;
  }

  while (v6);
  if (v7)
  {
    *(v3 + 176) |= 0xC0000u;
  }

LABEL_37:
  *(v3 + 16) = v5;
  *(v3 + 20) = v4;
  return result;
}

uint64_t aa_lineto(uint64_t result, float32x2_t a2, float32_t a3)
{
  v3 = result;
  v29[4] = *MEMORY[0x1E69E9840];
  v4 = *(result + 168);
  a2.f32[1] = a3;
  v5 = vcvtq_f64_f32(a2);
  v6 = vmulq_n_f64(v5, v4);
  v7 = vdup_n_s32(v4 != 0.0);
  v8.i64[0] = v7.u32[0];
  v8.i64[1] = v7.u32[1];
  v9 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v8, 0x3FuLL)), v6, v5);
  v10 = *(result + 176);
  if ((v10 & 0x30000) == 0)
  {
    v24 = (result + 160);
    v25 = vld1q_dup_f64(v24);
    v29[0] = vmovn_s64(vcvtq_s64_f64(vmlaq_f64(v25, v9, *(result + 128))));
    v18 = v9.f64[1];
    v28 = v9.f64[0];
LABEL_14:
    v23 = 1;
    goto LABEL_15;
  }

  v11 = *(result + 64);
  v12 = *(result + 72);
  v13 = *(result + 80);
  v14 = *(result + 88);
  v15 = vdupq_n_s64(0x430C6BF526340000uLL);
  v16 = vbslq_s8(vcgtq_f64(v15, vabsq_f64(v9)), v9, vbslq_s8(vcgtzq_f64(v9), v15, vdupq_n_s64(0xC30C6BF526340000)));
  v17 = (v16.f64[0] > v13) | (4 * (v16.f64[0] < v11));
  v18 = v16.f64[1];
  v19 = (8 * (v16.f64[1] < v12)) | (2 * (v16.f64[1] > v14));
  if (v19)
  {
    v20 = v17 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = 16;
  }

  v22 = v17 | v19 | v21;
  if (!(v22 | *(result + 176) & 0xFF00))
  {
    v26 = (result + 160);
    v27 = vld1q_dup_f64(v26);
    v28 = v16.f64[0];
    v29[0] = vmovn_s64(vcvtq_s64_f64(vmlaq_f64(v27, v16, *(result + 128))));
    goto LABEL_14;
  }

  if (v22 != BYTE1(v10))
  {
    v28 = v16.f64[0];
    result = aa_clip_edge(v29, BYTE1(v10), v22, v11, v12, v13, v14, *(result + 128), *(result + 136), *(result + 160), *(result + 32), *(result + 40), v16.f64[0], v16.f64[1]);
    *(v3 + 177) = v22;
    if (!result)
    {
LABEL_16:
      v16.f64[0] = v28;
      goto LABEL_17;
    }

    v23 = result;
LABEL_15:
    result = aa_add_edges(v3, v29, v23);
    goto LABEL_16;
  }

LABEL_17:
  *(v3 + 32) = v16.f64[0];
  *(v3 + 40) = v18;
  return result;
}

uint64_t aa_cubeto(uint64_t result, float32x2_t a2, float32_t a3, float32x2_t a4, float64x2_t a5, float32x2_t a6, float32_t a7)
{
  v8 = result;
  v89[4] = *MEMORY[0x1E69E9840];
  v10 = *(result + 112);
  v75 = *(result + 128);
  v9.f64[1] = *(result + 136);
  v73 = *(result + 160);
  v9.f64[0] = *(result + 168);
  v11 = *(result + 176);
  v12 = *(result + 32);
  a2.f32[1] = a3;
  a4.i32[1] = LODWORD(a5.f64[0]);
  v13 = vcvtq_f64_f32(a2);
  v14 = vcvtq_f64_f32(a4);
  a6.f32[1] = a7;
  v15 = vcvtq_f64_f32(a6);
  v16 = BYTE1(v11);
  a5.f64[0] = 0.0;
  v17 = vdupq_lane_s64(vmvnq_s8(vceqq_f64(v9, a5)).i64[0], 0);
  v18 = vbslq_s8(v17, vmulq_n_f64(v14, v9.f64[0]), v14);
  v19 = vbslq_s8(v17, vmulq_n_f64(v13, v9.f64[0]), v13);
  v20 = vbslq_s8(v17, vmulq_n_f64(v15, v9.f64[0]), v15);
  if ((v11 & 0x30000) != 0)
  {
    *&v7 = *(result + 80);
    v17.i64[0] = *(result + 88);
    v21 = vabsq_f64(v18);
    v22 = vcgtzq_f64(v18);
    v23 = vdupq_n_s64(0x430C6BF526340000uLL);
    v24 = vdupq_n_s64(0xC30C6BF526340000);
    v20 = vbslq_s8(vcgtq_f64(v23, vabsq_f64(v20)), v20, vbslq_s8(vcgtzq_f64(v20), v23, v24));
    v25 = *(result + 64);
    if (vmovn_s64(vcgtq_f64(v25, v20)).u8[0])
    {
      v26 = 4;
    }

    else
    {
      v26 = 0;
    }

    v18 = vbslq_s8(vcgtq_f64(v23, v21), v18, vbslq_s8(v22, v23, v24));
    v27 = vabsq_f64(v19);
    v28 = vcgtzq_f64(v19);
    if (v20.f64[0] > *&v7)
    {
      ++v26;
    }

    v29 = *(result + 72);
    v30.f64[1] = v20.f64[1];
    v30.f64[0] = *(result + 88);
    v31 = vand_s8(vmovn_s64(vcgtq_f64(vzip2q_s64(v20, v25), v30)), 0x800000002);
    v32 = vorr_s8(v31, vdup_lane_s32(v31, 1)).u32[0];
    if (v32)
    {
      _ZF = v26 == 0;
    }

    else
    {
      _ZF = 1;
    }

    if (_ZF)
    {
      v34 = 0;
    }

    else
    {
      v34 = 16;
    }

    v19 = vbslq_s8(vcgtq_f64(v23, v27), v19, vbslq_s8(v28, v23, v24));
    if (BYTE1(v11) != (v26 | v32 | v34))
    {
      goto LABEL_31;
    }

    v35 = vmovn_s64(vcgtq_f64(v25, v19));
    if (v35.i8[0])
    {
      v36 = 4;
    }

    else
    {
      v36 = 0;
    }

    if (v35.i8[4])
    {
      v37 = 8;
    }

    else
    {
      v37 = 0;
    }

    if (v19.f64[0] > *&v7)
    {
      ++v36;
    }

    v38 = v36 | v37 | (2 * (v19.f64[1] > *v17.i64));
    if (vmovn_s64(vcgtq_f64(v25, v18)).u8[0])
    {
      v39 = 4;
    }

    else
    {
      v39 = 0;
    }

    if (v18.f64[0] > *&v7)
    {
      ++v39;
    }

    v40 = (v11 >> 8) & 0xF;
    if (v40 == (v39 | (8 * (v18.f64[1] < v25.f64[1])) | (2 * (v18.f64[1] > *v17.i64))) && v40 == v38)
    {
      if (BYTE1(v11))
      {
        goto LABEL_65;
      }

      v42 = 1;
    }

    else
    {
LABEL_31:
      v42 = 0;
    }
  }

  else
  {
    v29 = *&v20.f64[1];
    v42 = 1;
    v17.i64[0] = *&v20.f64[1];
    v25.f64[0] = v20.f64[0];
    *&v7 = v20.f64[0];
  }

  v43 = 0;
  v74 = vdupq_lane_s64(v73, 0);
  v44 = vdupq_lane_s64(*&v25.f64[0], 0);
  v45 = vdupq_lane_s64(v7, 0);
  v46 = &v88;
  v47 = vdupq_lane_s64(v17.i64[0], 0);
  v48 = vdupq_lane_s64(v29, 0);
  __asm
  {
    FMOV            V29.2D, #0.5
    FMOV            V30.2D, #0.125
  }

  v85 = v7;
  v86 = v10;
  v83 = v25.f64[0];
  v84 = v17;
  v81 = v44;
  v82 = v29;
  v79 = v47;
  v80 = v45;
  v77 = _Q29;
  v78 = v48;
  v76 = _Q30;
  while (1)
  {
    while (1)
    {
      v54 = vaddq_f64(v19, v19);
      v55 = vaddq_f64(v18, v18);
      v56 = vaddq_f64(v12, v18);
      v57 = vaddq_f64(v19, v20);
      if (v43 <= 22)
      {
        v59 = vsubq_f64(v56, v54);
        v60 = vmovn_s64(vcgtq_f64(vmulq_f64(v59, v59), v10));
        if (v60.i8[0])
        {
          v58 = 0;
        }

        else
        {
          v61 = v60.i8[4];
          v62 = vsubq_f64(v57, v55);
          v63 = vmovn_s64(vmvnq_s8(vcgtq_f64(vmulq_f64(v62, v62), v10)));
          if (v61)
          {
            v58 = 0;
          }

          else
          {
            v58 = v63.i8[0] & v63.i8[4];
          }
        }

        if (v42)
        {
LABEL_54:
          if (v58)
          {
LABEL_58:
            v89[0] = vmovn_s64(vcvtq_s64_f64(vmlaq_f64(v74, v20, v75)));
            LODWORD(result) = 1;
LABEL_59:
            v87 = v20;
            result = aa_add_edges(v8, v89, result);
            _Q30 = v76;
            _Q29 = v77;
            v48 = v78;
            v47 = v79;
            v45 = v80;
            v44 = v81;
            v29 = v82;
            v25.f64[0] = v83;
            v17.i64[0] = v84.i64[0];
            *&v7 = v85;
            v10 = v86;
            v20 = v87;
            goto LABEL_60;
          }

          goto LABEL_57;
        }
      }

      else
      {
        if (v42)
        {
          goto LABEL_58;
        }

        v58 = 1;
      }

      v64 = (v20.f64[0] > *&v7) | (4 * (v20.f64[0] < v25.f64[0]));
      v65 = (2 * (v20.f64[1] > *v17.i64)) | (8 * (v20.f64[1] < *&v29));
      if (v65)
      {
        v66 = v64 == 0;
      }

      else
      {
        v66 = 1;
      }

      if (v66)
      {
        v67 = 0;
      }

      else
      {
        v67 = 16;
      }

      v68 = v64 | v65 | v67;
      if (!(v68 | v16))
      {
        goto LABEL_54;
      }

      if (v68 != v16)
      {
        break;
      }

      if (v58)
      {
        goto LABEL_60;
      }

      v69 = vzip1q_s64(v18, v19);
      v70 = vzip2q_s64(v18, v19);
      *&v69.f64[0] = vorr_s8(vsub_s32(vand_s8(vmovn_s64(vcgtq_f64(v44, v69)), 0x400000004), vmovn_s64(vcgtq_f64(v69, v45))), vorr_s8(vand_s8(vmovn_s64(vcgtq_f64(v70, v47)), 0x200000002), vand_s8(vmovn_s64(vcgtq_f64(v48, v70)), 0x800000008)));
      if ((v16 & 0xF) == vand_s8(*&v69.f64[0], vdup_lane_s32(*&v69.f64[0], 1)).u32[0])
      {
        goto LABEL_60;
      }

LABEL_57:
      v46[2] = vmulq_f64(vaddq_f64(v18, v20), _Q29);
      v46[3] = v20;
      v20 = vmulq_f64(vaddq_f64(v55, vaddq_f64(v54, vaddq_f64(v56, v57))), _Q30);
      v71 = vaddq_f64(v55, v57);
      __asm { FMOV            V4.2D, #0.25 }

      v18 = vmulq_f64(vaddq_f64(v54, v56), _Q4);
      *v46 = v20;
      v46[1] = vmulq_f64(v71, _Q4);
      v46 += 4;
      v19 = vmulq_f64(vaddq_f64(v12, v19), _Q29);
      ++v43;
    }

    if ((v58 & 1) == 0)
    {
      goto LABEL_57;
    }

    v87 = v20;
    result = aa_clip_edge(v89, v16, v68, v25.f64[0], *&v29, *&v7, *v17.i64, v75.f64[0], v75.f64[1], *&v73, v12.f64[0], v12.f64[1], v20.f64[0], v20.f64[1]);
    _Q30 = v76;
    _Q29 = v77;
    v48 = v78;
    v47 = v79;
    v45 = v80;
    v44 = v81;
    v29 = v82;
    v25.f64[0] = v83;
    v17.i64[0] = v84.i64[0];
    *&v7 = v85;
    v10 = v86;
    v20 = v87;
    v16 = v68;
    if (result)
    {
      goto LABEL_59;
    }

LABEL_60:
    if (!v43)
    {
      break;
    }

    v12 = v46[-4];
    v19 = v46[-3];
    v46 -= 4;
    --v43;
    v18 = v46[2];
    v20 = v46[3];
  }

  v11 = *(v8 + 176);
LABEL_65:
  *(v8 + 32) = v20;
  *(v8 + 176) = v11 & 0xFFFF00FF | (v16 << 8);
  return result;
}

CFPropertyListRef copy_preference_value(const char *cStr)
{
  if (!cStr)
  {
    return 0;
  }

  v1 = CFStringCreateWithCString(0, cStr, 0x600u);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = *MEMORY[0x1E695E8A8];
  v4 = *MEMORY[0x1E695E898];
  v5 = CFPreferencesCopyValue(v1, *MEMORY[0x1E695E8A8], *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E898]);
  if (!v5)
  {
    v6 = *MEMORY[0x1E695E8B8];
    v5 = CFPreferencesCopyValue(v2, v3, *MEMORY[0x1E695E8B8], v4);
    if (!v5)
    {
      v7 = *MEMORY[0x1E695E890];
      v5 = CFPreferencesCopyValue(v2, *MEMORY[0x1E695E890], v6, *MEMORY[0x1E695E8B0]);
      if (!v5)
      {
        v5 = CFPreferencesCopyValue(v2, v7, v6, v4);
      }
    }
  }

  v8 = v5;
  CFRelease(v2);
  return v8;
}

float CGColorFunctionGetInputRange(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (CGColorTRCGetTypeID_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorTRCGetTypeID_cglibrarypredicate, &__block_literal_global_770);
  }

  if (v2 == CGColorTRCGetTypeID_f())
  {
    if (trc_get_input_range_cglibrarypredicate != -1)
    {
      dispatch_once(&trc_get_input_range_cglibrarypredicate, &__block_literal_global_66);
    }

    input_range_f = trc_get_input_range_f(a1);
    if (trc_get_input_range_cglibrarypredicate_69 != -1)
    {
      dispatch_once(&trc_get_input_range_cglibrarypredicate_69, &__block_literal_global_72);
    }

    v4 = &trc_get_input_range_f_68;
LABEL_25:
    (*v4)(a1);
    return input_range_f;
  }

  if (CGColorMatrixGetTypeID_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorMatrixGetTypeID_cglibrarypredicate, &__block_literal_global_16);
  }

  if (v2 == CGColorMatrixGetTypeID_f())
  {
    if (matrix_get_input_range_cglibrarypredicate != -1)
    {
      dispatch_once(&matrix_get_input_range_cglibrarypredicate, &__block_literal_global_75);
    }

    input_range_f = matrix_get_input_range_f(a1);
    if (matrix_get_input_range_cglibrarypredicate_78 != -1)
    {
      dispatch_once(&matrix_get_input_range_cglibrarypredicate_78, &__block_literal_global_81);
    }

    v4 = &matrix_get_input_range_f_77;
    goto LABEL_25;
  }

  if (CGColorNxMTransformGetTypeID_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorNxMTransformGetTypeID_cglibrarypredicate, &__block_literal_global_24);
  }

  input_range_f = 0.0;
  if (v2 == CGColorNxMTransformGetTypeID_f())
  {
    if (nxm_get_input_range_cglibrarypredicate != -1)
    {
      dispatch_once(&nxm_get_input_range_cglibrarypredicate, &__block_literal_global_84);
    }

    input_range_f = nxm_get_input_range_f(a1);
    if (nxm_get_input_range_cglibrarypredicate_87 != -1)
    {
      dispatch_once(&nxm_get_input_range_cglibrarypredicate_87, &__block_literal_global_90);
    }

    v4 = &nxm_get_input_range_f_86;
    goto LABEL_25;
  }

  return input_range_f;
}

void ripc_Render(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  v9 = a5;
  v14 = a4[5];
  if (!v14 || (v14[12] & 0x10) != 0)
  {
    v15 = 3;
  }

  else
  {
    v14 = 0;
    v15 = 1;
  }

  if ((a5 & 6) != 0)
  {
    v16 = RIPRenderCoverage(*(a1 + 56), 1, &a4[v15], (a5 >> 2) & 1, a5, a6, a7, a8, a9);
    if (!v16)
    {
LABEL_13:
      ripr_Finish(*(a1 + 56));
      goto LABEL_14;
    }

    v18 = v16;
    Color = 0;
    v41 = 0;
    v20 = *(*(a3 + 120) + 4);
    if (BYTE1(v20))
    {
      Color = ripc_GetColor(a1, a2, a3, 2, v16 + 3, &v41, (a1 + 152), v17);
      if (!Color)
      {
        return;
      }
    }

    *(a1 + 104) = v20 >> 8;
    *(a1 + 108) = *(a2 + 82);
    *(a1 + 112) = (*(*(a3 + 120) + 4) << 12) >> 28;
    if (v14)
    {
      (*(*v14 + 56))(v14, *(a1 + 48), *a4, 0, v18, Color, &v41);
      if (!Color)
      {
LABEL_12:
        (*(*v18 + 24))(v18);
        goto LABEL_13;
      }
    }

    else
    {
      RIPLayerBltShape(*(a1 + 48), *a4, 0, v18, Color, &v41, a1 + 104, a1 + 104);
      if (!Color)
      {
        goto LABEL_12;
      }
    }

    RIPObjectRelease(Color, v21, v22, v23, v24, v25, v26, v27);
    goto LABEL_12;
  }

LABEL_14:
  if (v9)
  {
    v28 = RIPRenderCoverage(*(a1 + 64), 1, &a4[v15], 0, a5, a6, a7, a8, a9);
    if (v28)
    {
      v30 = v28;
      v41 = 0;
      v31 = ripc_GetColor(a1, a2, a3, 1, v28 + 3, &v41, (a1 + 152), v29);
      if (v31)
      {
        v33 = v31;
        *(a1 + 104) = (*(*(a3 + 120) + 4) << 16) >> 24;
        *(a1 + 108) = *(a2 + 82);
        *(a1 + 112) = (*(*(a3 + 120) + 4) << 12) >> 28;
        if (v14)
        {
          (*(*v14 + 56))(v14, *(a1 + 48), *a4, 0, v30, v31, &v41, a1 + 104);
        }

        else
        {
          RIPLayerBltShape(*(a1 + 48), *a4, 0, v30, v31, &v41, a1 + 104, v32);
        }

        RIPObjectRelease(v33, v34, v35, v36, v37, v38, v39, v40);
      }

      (*(*v30 + 24))(v30);
    }

    ripr_Finish(*(a1 + 64));
  }
}

char *RIPRenderCoverage(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  if (!a1)
  {
    return 0;
  }

  if (!*a1)
  {
    return 0;
  }

  v10 = *(a1 + 16);
  if (!v10)
  {
    return 0;
  }

  v11 = a2;
  if (v10 != a1 + 168)
  {
    if (a3)
    {
      v12 = a3[2];
      if (v12 < 1)
      {
        return 0;
      }

      v13 = a3[3];
      if (v13 < 1)
      {
        return 0;
      }

      v15 = *a3;
      v14 = a3[1];
      v16 = *a3 + v12;
      v17 = v14 + v13;
    }

    else
    {
      v15 = 0;
      v14 = 0;
      v16 = 0x3FFFFF;
      v17 = 0x3FFFFF;
    }

    v96 = 0;
    v97 = 0;
    if (*(v10 + 112) != 1)
    {
      v42 = *(v10 + 24);
      if (!v42)
      {
        return 0;
      }

      v43 = *v42;
      v44 = *(v42 + 4);
      v46 = *(v42 + 8);
      v45 = *(v42 + 12);
      if (v46 - *v42 < 31 || v45 - v44 < 31)
      {
        return 0;
      }

      v48 = v46 + 15;
      v39 = v43 >> 4;
      v38 = v48 >> 4;
      v49 = v45 + 15;
      v40 = v44 >> 4;
      v41 = (v45 + 15) >> 4;
      v50 = *(v42 + 184);
      if (v50 == 2 && *(v42 + 188) == 2)
      {
        if ((*(v42 + 178) & 0xC) != 0)
        {
          v51 = 3;
        }

        else
        {
          if ((~v43 & 0xFF0) == 0)
          {
            ++v39;
          }

          if ((~v48 & 0xFF0) == 0)
          {
            ++v38;
          }

          if (v39 >= v38)
          {
            return 0;
          }

          if ((~v44 & 0xFF0) == 0)
          {
            ++v40;
          }

          if ((~v49 & 0xFF0) == 0)
          {
            ++v41;
          }

          if (v40 >= v41)
          {
            return 0;
          }

          if ((v40 | v39 | v38) | v41)
          {
            v51 = 3;
          }

          else
          {
            v51 = 2;
          }
        }
      }

      else if ((*(v42 + 178) & 0xC) != 0 || v50 != *(v42 + 188))
      {
        v51 = 1;
      }

      else
      {
        v51 = 4;
      }

      v27 = 0;
      v96 = __PAIR64__(v40, v39);
      v55 = 24 * v50 + 16;
      v97 = __PAIR64__(v41, v38);
LABEL_70:
      v64 = (v38 + 255) >> 8;
      if (v39 >> 8 <= v15)
      {
        v65 = v15;
      }

      else
      {
        v65 = v39 >> 8;
      }

      if (v64 >= v16)
      {
        v66 = v16;
      }

      else
      {
        v66 = (v38 + 255) >> 8;
      }

      if (v66 <= v65)
      {
        return 0;
      }

      if (v39 >> 8 >= v15)
      {
        v67 = a4;
      }

      else
      {
        v67 = a4 | 4;
      }

      v68 = v40 >> 8 < v14;
      if (v40 >> 8 <= v14)
      {
        v69 = v14;
      }

      else
      {
        v69 = v40 >> 8;
      }

      v70 = (v41 + 255) >> 8;
      v71 = !v68 && v64 <= v16;
      v72 = v67 | 4;
      if (v71 && v70 <= v17)
      {
        v72 = v67;
      }

      v74 = v70 >= v17 ? v17 : (v41 + 255) >> 8;
      v75 = v74 - v69;
      if (v74 <= v69)
      {
        return 0;
      }

      v95 = 0;
      if (v51 == 2)
      {
LABEL_97:
        v60 = 0;
        v57 = 0;
        v59 = 0;
LABEL_98:
        v58 = 0;
LABEL_99:
        v96 = __PAIR64__(v69, v65);
        LODWORD(v97) = v66 - v65;
        HIDWORD(v97) = v74 - v69;
        if (v11)
        {
          v27 = v10 + 120;
          RIPLayerReplace(v10 + 120, &v96, v57, v58, v59, v60, v60, a8, a9);
          v76 = *(v10 + 148);
          if (*(v10 + 8))
          {
            v77 = v76 | 2;
          }

          else
          {
            v77 = v76 & 0xFFFFFFFD;
          }

          *(v10 + 148) = v77;
          return v27;
        }

        v56 = *(a1 + 76);
        return RIPLayerCreateWithData(&v96, 0, 0, v57, v58, v59, v60, v56);
      }

      if (*(v10 + 113))
      {
        v78 = v72;
      }

      else
      {
        v78 = v72 | 0x20;
      }

      if (v51 != 4)
      {
        if (v51 == 3)
        {
          if ((v78 & 0x20) == 0)
          {
            v79 = v65 << 8;
            if (v39 > v65 << 8)
            {
              v79 = v39;
            }

            if (v38 >= v66 << 8)
            {
              v80 = v66 << 8;
            }

            else
            {
              v80 = v38;
            }

            if (v79 >= v66 << 8)
            {
              return 0;
            }

            v81 = v69 << 8;
            if (v40 > v69 << 8)
            {
              v81 = v40;
            }

            if (v81 >= v74 << 8)
            {
              return 0;
            }

            v60 = 0;
            v57 = 0;
            v58 = 0;
            v82 = v74 << 8;
            if (v41 < v74 << 8)
            {
              v82 = v41;
            }

            v65 = v79 >> 8;
            v69 = v81 >> 8;
            v66 = (v80 + 255) >> 8;
            v74 = (v82 + 255) >> 8;
            v59 = ((((v80 + 255) & 0xFFFF00) - v80) << 8) | (v79 << 24) | ((((v82 + 255) & 0xFF00) - v82) << 16) | v81;
            goto LABEL_99;
          }

          goto LABEL_97;
        }

        if ((v78 & 0x20) == 0)
        {
          v83 = (v66 - v65 + 3) & 0xFFFFFFFC;
          if (v75 <= 0x7FFFFF7F / v83)
          {
            v93 = (v66 - v65 + 3) & 0xFFFFFFFC;
            size = v75 * v83 + 4;
            v84 = size > 0x10000 || v11 == 0;
            if (!v84 && (v92 = (v75 * v83 + 259) & 0xFFFFFF00, v85 = malloc_type_malloc(v92, 0xF56E5FA3uLL), *(v10 + 16) = v85, *(v10 + 8) = v92, v85) || (v85 = malloc_type_malloc(size, 0x3EA8D148uLL)) != 0)
            {
              if (v27)
              {
                v87 = v85;
                bzero(v85, size);
                aa_line_render(v27, v87, v93, v65, v69, v66, v74);
                v58 = v87;
                v57 = v93;
                v60 = 0;
                v59 = 0;
                goto LABEL_99;
              }

              v91 = v85;
              if (aa_render(v42, v78, v85, v93, v65, v69, v66, v74, v86))
              {
                v60 = 0;
                v59 = 0;
                v57 = v93;
                v58 = v91;
                goto LABEL_99;
              }

              if (!*(v10 + 8))
              {
                v89 = v91;
LABEL_164:
                free(v89);
                return 0;
              }
            }
          }

          return 0;
        }
      }

      if (v27)
      {
        v88 = aa_line_render_shape(v27, &v95, v55, v65, v69, v66, v74);
        v60 = v95;
        if (!v88)
        {
          goto LABEL_153;
        }

        if (v95 == &the_empty_shape)
        {
          return 0;
        }

        if (*(v95 + *(v95 + 1)) == 0x7FFFFFFF)
        {
LABEL_153:
          v27 = 0;
          if (!v95)
          {
            return v27;
          }

LABEL_162:
          if (v60 == &the_empty_shape)
          {
            return v27;
          }

          v89 = v60;
          goto LABEL_164;
        }
      }

      else
      {
        v88 = aa_render_shape(v42, v78, &v95, v55, v65, v69, v66, v74, a9);
        v60 = v95;
        if (!v88)
        {
          goto LABEL_161;
        }

        if (v95 == &the_empty_shape)
        {
          return 0;
        }

        if (*(v95 + *(v95 + 1)) == 0x7FFFFFFF)
        {
LABEL_161:
          v27 = 0;
          if (!v95)
          {
            return v27;
          }

          goto LABEL_162;
        }
      }

      v59 = v88;
      v57 = 0;
      goto LABEL_98;
    }

    v27 = *(v10 + 32);
    if (!v27)
    {
      return v27;
    }

    v29 = *(v27 + 52);
    v28 = *(v27 + 56);
    v31 = *(v27 + 60);
    v30 = *(v27 + 64);
    if (v29 > v31 || v28 > v30)
    {
      return 0;
    }

    v33 = fabsf(*(v27 + 236)) * 0.5;
    v34 = *(v27 + 168);
    if (v34 == 1)
    {
      if (v28 == v30)
      {
        if (*(v27 + 244))
        {
          v29 = v29 - v33;
          v31 = v31 + v33;
        }

        else if (v29 == v31)
        {
          return 0;
        }

        v35.f32[0] = floorf(v29 * 256.0);
        v35.i32[1] = ceilf(v31 * 256.0);
        v36 = vcvt_s32_f32(v35);
        v37 = vsub_s32(v36, vceq_s32(vand_s8(v36, 0xFF000000FFLL), 0xFF000000FFLL));
        v38 = v37.i32[1];
        v39 = v37.i32[0];
        if (v37.i32[0] >= v37.i32[1])
        {
          return 0;
        }

        v40 = vcvtms_s32_f32((v28 - v33) * 256.0);
        a9.n128_f32[0] = (v30 + v33) * 256.0;
        v41 = vcvtps_s32_f32(a9.n128_f32[0]);
        goto LABEL_63;
      }

      if (v29 == v31)
      {
        if (*(v27 + 244))
        {
          v28 = v28 - v33;
          v30 = v30 + v33;
        }

        v61.f32[0] = floorf(v28 * 256.0);
        v61.i32[1] = ceilf(v30 * 256.0);
        v62 = vcvt_s32_f32(v61);
        v63 = vsub_s32(v62, vceq_s32(vand_s8(v62, 0xFF000000FFLL), 0xFF000000FFLL));
        v41 = v63.i32[1];
        v40 = v63.i32[0];
        if (v63.i32[0] >= v63.i32[1])
        {
          return 0;
        }

        v39 = vcvtms_s32_f32((v29 - v33) * 256.0);
        a9.n128_f32[0] = (v31 + v33) * 256.0;
        v38 = vcvtps_s32_f32(a9.n128_f32[0]);
LABEL_63:
        if ((v40 | v39 | v38) | v41)
        {
          v42 = 0;
          LODWORD(v96) = v39;
          LODWORD(v97) = v38;
          if (*(v10 + 113))
          {
            v51 = 3;
          }

          else
          {
            v51 = 4;
          }

          v55 = 40;
          goto LABEL_70;
        }

        v51 = 2;
        goto LABEL_69;
      }
    }

    v39 = vcvtms_s32_f32((v29 - v33) * 256.0);
    v38 = vcvtps_s32_f32((v31 + v33) * 256.0);
    v40 = vcvtms_s32_f32((v28 - v33) * 256.0);
    a9.n128_f32[0] = (v30 + v33) * 256.0;
    v41 = vcvtps_s32_f32(a9.n128_f32[0]);
    v51 = 1;
LABEL_69:
    v42 = 0;
    LODWORD(v97) = v38;
    v55 = 24 * v34 + 16;
    v96 = __PAIR64__(v40, v39);
    goto LABEL_70;
  }

  if (a3)
  {
    v18 = a3[2];
    if (v18 < 1)
    {
      return 0;
    }

    v19 = a3[3];
    if (v19 < 1)
    {
      return 0;
    }

    v20 = a3[1];
    v21 = *a3 + v18;
    v22 = *a3 << 8;
    v23 = v20 << 8;
    v24 = v20 + v19;
    v25 = v21 << 8;
    v26 = v24 << 8;
  }

  else
  {
    v23 = 0;
    v22 = 0;
    v26 = 1073741568;
    v25 = 1073741568;
  }

  if (v22 <= *v10)
  {
    v22 = *v10;
  }

  if (v25 >= *(v10 + 8))
  {
    v25 = *(v10 + 8);
  }

  if (v22 >= v25)
  {
    return 0;
  }

  if (v23 <= *(v10 + 4))
  {
    v23 = *(v10 + 4);
  }

  if (v26 >= *(v10 + 12))
  {
    v26 = *(v10 + 12);
  }

  if (v23 >= v26)
  {
    return 0;
  }

  v52 = ((((v25 + 255) & 0xFFFF00) - v25) << 8) | (v22 << 24) | v23 | ((((v26 + 255) & 0xFF00u) - v26) << 16);
  LODWORD(v96) = v22 >> 8;
  HIDWORD(v96) = v23 >> 8;
  LODWORD(v97) = ((v25 + 255) >> 8) - (v22 >> 8);
  HIDWORD(v97) = ((v26 + 255) >> 8) - (v23 >> 8);
  v27 = a1 + 24;
  if (!*(a1 + 24))
  {
    RIPLayerInitialize(a1 + 24, a2, a3, a4, a5, a6, a7, a8);
  }

  if (!v11)
  {
    v56 = *(a1 + 76);
    v57 = 0;
    v58 = 0;
    v59 = v52;
    v60 = 0;
    return RIPLayerCreateWithData(&v96, 0, 0, v57, v58, v59, v60, v56);
  }

  RIPLayerReplace(a1 + 24, &v96, 0, 0, v52, 0, a7, a8, a9);
  v53 = *(a1 + 52);
  if (*(v10 + 8))
  {
    v54 = v53 | 2;
  }

  else
  {
    v54 = v53 & 0xFFFFFFFD;
  }

  *(a1 + 52) = v54;
  return v27;
}