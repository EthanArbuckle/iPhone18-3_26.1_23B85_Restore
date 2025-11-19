uint64_t CA::Render::anonymous namespace::image_format_from_blockset(uint64_t a1, uint64_t a2, int a3)
{
  ComponentType = CGImageBlockSetGetComponentType();
  AlphaInfo = CGImageProviderGetAlphaInfo();
}

id CA::Render::ImageQueue::retain_image_queue(id *this)
{
  if (*(this + 480) == 1)
  {
    return objc_loadWeakRetained(this + 59);
  }

  else
  {
    return this[59];
  }
}

uint64_t CA::Render::Surface::clear_edr_factor(CA::Render::Surface *this)
{
  *(this + 184) &= ~4u;
  *(this + 37) = 1065353216;
  result = *(this + 16);
  if (result)
  {
    return IOSurfaceSetBulkAttachments2();
  }

  return result;
}

int *CAImageQueueSetMediaTimingClamped(int *result, double a2, float a3, double a4, double a5, double a6, double a7)
{
  if (*(result + 6))
  {
    v13 = result;
    os_unfair_lock_lock(result + 4);
    v14 = *(v13 + 232) & 1;
    v15 = !(*(v13 + 232) & 1);
    v16 = *(*(v13 + 48) + 24);
    v17 = (v16 + 48 * !(*(v13 + 232) & 1));
    v17[21] = a2;
    v17[22] = a3;
    v17[23] = a4;
    v17[24] = a5;
    v17[25] = a6;
    v17[26] = a7;
    __dmb(0xBu);
    v18 = (v16 + 264);
    do
    {
      v19 = v14;
      atomic_compare_exchange_strong(v18, &v19, v15);
    }

    while (v19 != v14);
    *(v13 + 232) = *(v13 + 232) & 0xFE | v15;
    os_unfair_lock_unlock((v13 + 16));

    return CAImageQueuePing_(v13, 0, 0, 0.0, 0.0);
  }

  return result;
}

int *CAImageQueueSetEDRDeadline(int *result, double a2)
{
  v2 = *(result + 6);
  if (v2)
  {
    *(*(v2 + 24) + 128) = a2;
    __dmb(0xBu);
    return CAImageQueuePing_(result, 0, 0, 0.0, 0.0);
  }

  return result;
}

void *CA::Render::WindowLayer::encode(CA::Render::WindowLayer *this, CA::Render::Encoder *a2)
{
  CA::Render::Object::encode(this, a2);
  v4 = *(this + 2);
  v5 = *(a2 + 4);
  if ((v5 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 8);
    v5 = *(a2 + 4);
  }

  *v5 = v4;
  v6 = *(a2 + 4);
  v7 = *(a2 + 5);
  v8 = (v6 + 8);
  *(a2 + 4) = v6 + 8;
  v9 = *(this + 4);
  if (v6 + 16 > v7)
  {
    CA::Render::Encoder::grow(a2, 8);
    v8 = *(a2 + 4);
  }

  *v8 = v9;
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v12 = (v10 + 8);
  *(a2 + 4) = v10 + 8;
  v13 = *(this + 48);
  if (v10 + 9 > v11)
  {
    CA::Render::Encoder::grow(a2, 1);
    v12 = *(a2 + 4);
  }

  *(a2 + 4) = v12 + 1;
  *v12 = v13;

  return CA::Render::Encoder::encode_sanity_check(a2);
}

uint64_t draw_image(uint64_t a1, uint64_t a2, uint64_t a3, CGImage *a4)
{
  Info = CGContextDelegateGetInfo();
  CGGStateGetStyle();
  Color = CGStyleGetColor();
  CompositeOperation = CGGStateGetCompositeOperation();
  CACGContextEvaluator::update_with_color(Info, Color, CompositeOperation, a3);
  if (CGImageIsMask(a4))
  {
    FillColor = CGGStateGetFillColor();
    v11 = CGGStateGetCompositeOperation();
    CACGContextEvaluator::update_with_color(Info, FillColor, v11, a3);
  }

  else
  {
    CACGContextEvaluator::update_with_image(Info, a4, a3);
  }

  *(Info + 78) |= CGGStateGetStyle() != 0;
  CGContextDelegateGetInfo();

  return CGContextDelegateDrawImage();
}

void CA::Render::WindowLayer::~WindowLayer(CA::Render::WindowLayer *this, const CA::Render::Object *a2)
{
  --dword_1ED4EAB34;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  --dword_1ED4EAB34;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

uint64_t CACGContextEvaluator::update_with_image(uint64_t a1, CGImageRef image, uint64_t a3)
{
  *(a1 + 72) = 1;
  *(a1 + 77) = 1;
  v6 = *(a1 + 88);
  if (CGImageGetBitsPerComponent(image) >= v6)
  {
    BitsPerComponent = CGImageGetBitsPerComponent(image);
  }

  else
  {
    BitsPerComponent = *(a1 + 88);
  }

  *(a1 + 88) = BitsPerComponent;
  if ((CGImageGetBitmapInfo(image) & 0x100) != 0)
  {
    *(a1 + 80) = 1;
  }

  ColorSpace = CGImageGetColorSpace(image);
  if (CGColorSpaceUsesITUR_2100TF(ColorSpace))
  {
    *(a1 + 81) = 1;
  }

  if (!a3 || (CGGStateGetEDRTargetHeadroom(), v9 == 0.0))
  {
    CGImageGetContentHeadroom();
  }

  if (v9 > *(a1 + 84))
  {
    *(a1 + 84) = v9;
  }

  return CACGContextEvaluator::update_with_color_space(a1, ColorSpace, 1);
}

CA::Render::WindowLayer *CA::Render::WindowLayer::WindowLayer(CA::Render::WindowLayer *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 63;
  ++dword_1ED4EAB34;
  *v4 = &unk_1EF1F5B38;
  *(this + 2) = CA::Render::Decoder::decode_size_t(a2);
  *(this + 4) = CA::Render::Decoder::decode_int64(a2);
  v5 = CA::Render::Decoder::decode_int8(a2);
  if (v5 >= 3)
  {
    CA::Render::Decoder::set_fatal_error(a2, "%s - enum %u out of range of %u", "decode_int8_enum", v5, 3);
    LOBYTE(v5) = 0;
  }

  *(this + 48) = v5;
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-window-layer.cpp", 110);
  return this;
}

void *CA::Display::DisplayLink::start_timer_locked(void *this)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (this[19])
  {
    v1 = this;
    CA::Display::DisplayLink::align_phase_locked(this);
    v2 = mach_absolute_time();
    v3 = v1[19];
    pthread_mutex_lock((v3 + 16));
    v4 = *(v3 + 264);
    v5 = *(v3 + 216);
    v10[0] = 0;
    v10[1] = v4;
    v10[2] = v5;
    v11[0] = 0;
    phase = get_phase(v10, v2, v11);
    v7 = v2 - phase + v11[0];
    if (!phase)
    {
      v7 = v2;
    }

    v8 = *(v3 + 248);
    if (v7 <= v8)
    {
      v8 = 0;
    }

    *(v3 + 232) = v7;
    *(v3 + 240) = v8;
    mk_timer_arm_leeway();
    *(v3 + 200) = 0;
    v9 = *(v3 + 192);
    if (v9)
    {
      v9(v3, 0, *(v3 + 232), *(v3 + 216), *(v3 + 184));
    }

    return pthread_mutex_unlock((v3 + 16));
  }

  return this;
}

BOOL CA::Render::ShapeLayer::keypath_is_object(CA::Render::ShapeLayer *this, void *const *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (v2)
  {
    if (!HIDWORD(v2))
    {
      v3 = v2 >> 1;
      return v3 == 554 || v3 == 480;
    }

    return 0;
  }

  if (*v2 != 1)
  {
    return 0;
  }

  if (*v2)
  {
    v3 = *(v2 + 4);
  }

  else
  {
    v3 = 0;
  }

  return v3 == 554 || v3 == 480;
}

char *CA::Render::ShapeLayer::copy@<X0>(CA::Render::ShapeLayer *this@<X0>, void *a2@<X8>)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xA8uLL, 0xDEEC3011uLL);
  if (result)
  {
    *(result + 2) = 1;
    *(result + 3) = 51;
    ++dword_1ED4EAB04;
    *result = &unk_1EF1F6830;
    v5 = *(this + 2);
    if (v5)
    {
      v6 = (v5 + 8);
      if (!atomic_fetch_add((v5 + 8), 1u))
      {
        v5 = 0;
        atomic_fetch_add(v6, 0xFFFFFFFF);
      }
    }

    *(result + 2) = v5;
    v7 = *(this + 24);
    *(result + 10) = *(this + 10);
    *(result + 24) = v7;
    v8 = *(this + 6);
    if (v8)
    {
      v9 = (v8 + 8);
      if (!atomic_fetch_add((v8 + 8), 1u))
      {
        v8 = 0;
        atomic_fetch_add(v9, 0xFFFFFFFF);
      }
    }

    *(result + 6) = v8;
    v10 = *(this + 56);
    *(result + 18) = *(this + 18);
    *(result + 56) = v10;
    v11 = *(this + 10);
    if (v11)
    {
      v12 = (v11 + 8);
      if (!atomic_fetch_add((v11 + 8), 1u))
      {
        v11 = 0;
        atomic_fetch_add(v12, 0xFFFFFFFF);
      }
    }

    *(result + 10) = v11;
    *(result + 88) = *(this + 88);
    *(result + 104) = *(this + 104);
    *(result + 15) = *(this + 15);
    v13 = *(this + 16);
    if (v13)
    {
      v14 = (v13 + 8);
      if (!atomic_fetch_add((v13 + 8), 1u))
      {
        v13 = 0;
        atomic_fetch_add(v14, 0xFFFFFFFF);
      }
    }

    *(result + 16) = v13;
    v15 = *(result + 34) & 0xFFFFFF00 | *(this + 136);
    *(result + 34) = v15;
    v16 = v15 & 0xFFFF00FF | (*(this + 137) << 8);
    *(result + 34) = v16;
    *(result + 34) = v16 & 0xFF00FFFF | (*(this + 138) << 16);
    v17 = this;
    if (!atomic_fetch_add(this + 2, 1u))
    {
      v17 = 0;
      atomic_fetch_add(this + 2, 0xFFFFFFFF);
    }

    *(result + 18) = v17;
    v18 = *(this + 19);
    if (v18)
    {
      v19 = (v18 + 8);
      if (!atomic_fetch_add((v18 + 8), 1u))
      {
        v18 = 0;
        atomic_fetch_add(v19, 0xFFFFFFFF);
      }
    }

    *(result + 19) = v18;
    *(result + 20) = *(this + 20);
  }

  *a2 = result;
  return result;
}

uint64_t CA::Render::ShapeLayer::get_bounds(CA::Render::ShapeLayer *this, const CA::Render::Layer *a2, CA::Rect *a3, CA::Rect *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = *(this + 2);
  v8 = 0uLL;
  if (v7)
  {
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(*(this + 24))))) & 1) != 0 || (v9 = 0uLL, *(this + 6)))
    {
      v10 = CA::Render::Path::bounding_rect(v7);
      v9 = *v10;
      v8 = v10[1];
    }
  }

  else
  {
    v9 = 0uLL;
  }

  *a3 = v9;
  *(a3 + 1) = v8;
  CA::Render::ShapeLayer::stroke_bounds(&v19, this);
  v11 = *(a3 + 1);
  v12 = v20;
  v13 = vclezq_f64(v11);
  v14 = vclezq_f64(v20);
  v15 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v14, v13), vzip2q_s64(v14, v13))));
  if (v15.i8[4])
  {
    if (v15.i8[0])
    {
      goto LABEL_12;
    }

    v16 = v19;
  }

  else
  {
    if (v15.i8[0])
    {
      goto LABEL_12;
    }

    v17 = vaddq_f64(*a3, v11);
    v16 = vminnmq_f64(*a3, v19);
    v12 = vsubq_f64(vmaxnmq_f64(v17, vaddq_f64(v19, v20)), v16);
  }

  *a3 = v16;
  *(a3 + 1) = v12;
LABEL_12:
  if (a4)
  {
    *a4 = 0u;
    *(a4 + 1) = 0u;
  }

  return 1;
}

uint64_t CA::Render::Path::bounding_rect(CA::Render::Path *this)
{
  v1 = *(this + 3);
  if ((v1 & 0x100) != 0)
  {
    return this + 128;
  }

  v2 = *(this + 5);
  v3 = 0.0;
  if (!v2)
  {
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    goto LABEL_43;
  }

  v5 = *(this + 4);
  v4 = *(this + 5);
  v6 = &v4[v2];
  v7 = INFINITY;
  v8 = -INFINITY;
  v9 = -INFINITY;
  v10 = INFINITY;
  do
  {
    v12 = *v4++;
    v11 = v12;
    if ((v12 - 1) < 2)
    {
      v19 = v5;
      v17 = 1;
      v18 = 16;
    }

    else
    {
      if (v11 == 3)
      {
        v14 = v5;
        v15 = 1;
        v16 = 2;
        v17 = 3;
        v18 = 32;
      }

      else
      {
        if (v11 != 4)
        {
          continue;
        }

        v13 = v5[1];
        if (v10 >= *v5)
        {
          v10 = *v5;
        }

        if (v9 <= *v5)
        {
          v9 = *v5;
        }

        if (v7 >= v13)
        {
          v7 = v5[1];
        }

        v14 = v5 + 2;
        if (v8 <= v13)
        {
          v8 = v5[1];
        }

        v15 = 3;
        v16 = 4;
        v17 = 5;
        v18 = 48;
      }

      if (v10 >= *v14)
      {
        v10 = *v14;
      }

      v20 = v5[v15];
      if (v9 <= *v14)
      {
        v9 = *v14;
      }

      if (v7 >= v20)
      {
        v7 = v5[v15];
      }

      if (v8 <= v20)
      {
        v8 = v5[v15];
      }

      v19 = &v5[v16];
    }

    if (v10 >= *v19)
    {
      v10 = *v19;
    }

    v21 = v5[v17];
    if (v9 <= *v19)
    {
      v9 = *v19;
    }

    if (v7 >= v21)
    {
      v7 = v5[v17];
    }

    if (v8 <= v21)
    {
      v8 = v5[v17];
    }

    v5 = (v5 + v18);
  }

  while (v4 < v6);
  v22 = v8 <= v7 || v9 <= v10;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  if (!v22)
  {
    v3 = floor(v10) + -1.0;
    v23 = floor(v7) + -1.0;
    v24 = ceil(v9) + 1.0 - v3;
    v25 = ceil(v8) + 1.0 - v23;
  }

LABEL_43:
  *(this + 16) = v3;
  *(this + 17) = v23;
  *(this + 18) = v24;
  *(this + 19) = v25;
  *(this + 3) = v1 | 0x100;
  return this + 128;
}

float CA_CFFloatValue(const __CFString *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = CFGetTypeID(a1);
  if (v2 == CFBooleanGetTypeID())
  {
    result = 0.0;
    if (*MEMORY[0x1E695E4C0] != a1)
    {
      return 1.0;
    }
  }

  else if (v2 == CFNumberGetTypeID())
  {
    valuePtr = 0.0;
    CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
    return valuePtr;
  }

  else
  {
    TypeID = CFStringGetTypeID();
    result = 0.0;
    if (v2 == TypeID)
    {
      return CFStringGetDoubleValue(a1);
    }
  }

  return result;
}

void CA::OGL::Shape::fill_path<CA::OGL::RenderPathIterator>(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v8 = v3;
  v9 = v2;
  v11 = v10;
  v53 = *MEMORY[0x1E69E9840];
  v44[0] = 0;
  v44[1] = &v46;
  v45 = xmmword_183E210D0;
  v43 = v44;
  v38 = 0;
  *&v31.f64[0] = v44;
  v31.f64[1] = 0.0;
  v32 = 0;
  v33 = 0;
  v34 = 0x3FC0000000000000;
  v35 = 0u;
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  v39 = vdupq_n_s64(0x7FF0000000000000uLL);
  v40 = vdupq_n_s64(0xFFF0000000000000);
  v12 = vadd_s32(v3[1], *v3);
  v13.i64[0] = v12.i32[0];
  v13.i64[1] = v12.i32[1];
  v14 = vcvtq_f64_s64(v13);
  v13.i64[0] = v3->i32[0];
  v13.i64[1] = HIDWORD(*v3);
  v41 = vcvtq_f64_s64(v13);
  v42 = v14;
  v15 = *(*v1 + 32);
  v16 = *(*v1 + 40);
  v17 = *(*v1 + 20);
  v18 = &v16[v17];
  if (v1[1])
  {
    if (v17)
    {
      v19 = v1;
      v20 = xmmword_183E20E60;
      while (1)
      {
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v21 = *v16;
        if ((v21 - 1) < 2)
        {
          break;
        }

        if (v21 == 3)
        {
          v22 = 2;
LABEL_10:
          v49 = *(v15 + 1);
          v50 = v20;
LABEL_11:
          v47 = *v15;
          v48 = v20;
          CA::Transform::apply_to_point4(v19[1], &v47, &v47, v22);
          v15 += 2 * v22;
          v21 = *v16;
          goto LABEL_12;
        }

        if (v21 == 4)
        {
          v51 = *(v15 + 2);
          *(&v52 + 1) = 0x3FF0000000000000;
          v22 = 3;
          goto LABEL_10;
        }

LABEL_12:
        if (v21 <= 1)
        {
          if (v21)
          {
            v23 = v47;
            v30 = *(&v48 + 1);
            CA::ScanConverter::Path::closepath(v31.f64);
            *&v24 = v30;
            *(&v24 + 1) = *&v23.f64[0];
            v35 = v23;
            v36 = v24;
            *v37 = v23.f64[1];
            *(&v37[0] + 1) = v30;
          }

          else
          {
            CA::ScanConverter::Path::closepath(v31.f64);
          }
        }

        else
        {
          switch(v21)
          {
            case 2:
              CA::ScanConverter::Path::lineto(&v31, v47.f64[0], v47.f64[1], *(&v48 + 1));
              break;
            case 3:
              CA::ScanConverter::Path::quadto(&v31, v47.f64[0], v47.f64[1], *(&v48 + 1), *&v49, *(&v49 + 1), *(&v50 + 1), v1, v2, v3, v4, v5, v6, v7);
              break;
            case 4:
              CA::ScanConverter::Path::cubeto(&v31, v47.f64[0], v47.f64[1], *(&v48 + 1), *&v49, *(&v49 + 1), *(&v50 + 1), *&v51, *(&v51 + 1), v1, v2, v3, v4, v5, v6, v7, *(&v52 + 1));
              break;
          }
        }

        ++v16;
        v20 = xmmword_183E20E60;
        if (v16 >= v18)
        {
          goto LABEL_37;
        }
      }

      v22 = 1;
      goto LABEL_11;
    }
  }

  else if (v17)
  {
    do
    {
      v25 = *v16;
      if (v25 <= 1)
      {
        if (*v16)
        {
          if (v25 == 1)
          {
            v26 = *v15;
            v27 = v15[1];
            v15 += 2;
            CA::ScanConverter::Path::closepath(v31.f64);
            v35.f64[0] = v26;
            v35.f64[1] = v27;
            *(&v36 + 1) = v26;
            *v37 = v27;
            *&v36 = 0x3FF0000000000000;
            *(&v37[0] + 1) = 0x3FF0000000000000;
          }
        }

        else
        {
          CA::ScanConverter::Path::closepath(v31.f64);
        }
      }

      else
      {
        switch(v25)
        {
          case 2u:
            v28 = *v15;
            v29 = v15[1];
            v15 += 2;
            CA::ScanConverter::Path::lineto(v31.f64, v28, v29);
            break;
          case 3u:
            CA::ScanConverter::Path::quadto(&v31, *v15, v15[1], v15[2], v15[3], v1, v2, v3, v4, v5, v6, v7);
            v15 += 4;
            break;
          case 4u:
            CA::ScanConverter::Path::cubeto(&v31, *v15, v15[1], v15[2], v15[3], v15[4], v15[5], v1, v2, v3, v4, v5, v6, v7);
            v15 += 6;
            break;
        }
      }

      ++v16;
    }

    while (v16 < v18);
  }

LABEL_37:
  CA::ScanConverter::Path::closepath(v31.f64);
  if (*&v31.f64[0])
  {
    CA::OGL::Shape::fill_sc_path(v11, &v31, v9, 0, 1u, *v8, v8[1]);
  }

  x_heap_free(v43);
}

void CA::OGL::Shape::FillRenderer::render_lines(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v257[1020] = *MEMORY[0x1E69E9840];
  v4 = *(v3 + 20);
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v9 = *v7;
  v8 = v7[1];
  v10 = v7[2] + *v7;
  v11 = v7[3] + v8;
  v12 = *(v5 + 24);
  v13 = 32 * v12;
  v243 = 32 * v12;
  if (v4 == 1)
  {
    if (v13 > 0x1000)
    {
      v15 = malloc_type_malloc(v13, 0x25DB91DBuLL);
      if (!v15)
      {
        return;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](v13);
      v15 = &v237 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v15, v14);
    }

    v17 = *(v5 + 8);
    if (v17)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v19)
        {
          v20 = (v17 + 3);
          v21 = &v15[16 * v18 + 8];
          v18 += v19;
          v22 = (v17 + 3);
          do
          {
            v23 = *v22;
            v22 += 6;
            *(v21 - 2) = ((v23 >> 31) | 0x80000000) ^ v23;
            *v21 = v20;
            v21 += 16;
            v20 = v22;
            --v19;
          }

          while (v19);
        }

        v17 = *v17;
      }

      while (v17);
    }

    v238 = v15;
    v244 = &v15[16 * v12];
    CA::radix_sort(v12);
    if (v9 <= -16777216)
    {
      v26 = -16777216;
    }

    else
    {
      v26 = v9;
    }

    v242 = v26;
    if (v10 >= 0x1000000)
    {
      v27 = 0x1000000;
    }

    else
    {
      v27 = v10;
    }

    if (v8 <= -16777216)
    {
      v28 = 4278190080;
    }

    else
    {
      v28 = v8;
    }

    v254 = 0;
    v255 = v257;
    if (v11 >= 0x1000000)
    {
      v29 = 0x1000000;
    }

    else
    {
      v29 = v11;
    }

    v256 = xmmword_183E210D0;
    v252 = 0;
    v253 = &v254;
    if (v28 < v29)
    {
      v30 = 0;
      v31 = 0;
      v249 = (v2 + 48);
      v250 = (v2 + 32);
      v248 = (v2 + 16);
      v239 = v27 + 0.5;
      *&v240 = v242 + 0.5;
      v32 = v238;
      v247 = v27;
      v241 = v29;
      do
      {
        if (v30)
        {
          v33 = v28;
          v34 = (v28 + 1);
          v35 = &v252;
          do
          {
            v36 = *(v30 + 16);
            v37 = v36[1];
            if (v37 <= v33)
            {
              *v35 = *v30;
              *v30 = v31;
              v31 = v30;
            }

            else
            {
              v38 = *v36;
              if (*v36 >= v33)
              {
                v39 = *v36;
              }

              else
              {
                v39 = v28;
              }

              if (v37 > v34)
              {
                v37 = (v28 + 1);
              }

              v40 = v36[2];
              v41 = v36[3];
              v42 = v36[4];
              v43 = v42 + ((v41 + ((v39 - v38) * v40)) * (v39 - v38));
              v44 = v42 + ((v41 + ((v37 - v38) * v40)) * (v37 - v38));
              if (v43 >= v44)
              {
                v45 = v44;
              }

              else
              {
                v45 = v43;
              }

              if (v43 > v44)
              {
                v44 = v43;
              }

              *v25.i32 = fmaxf(v44 - v45, 0.000001);
              v25 = vrecpe_f32(vdup_lane_s32(v25, 0));
              *(v30 + 28) = v45;
              *(v30 + 32) = v44;
              *(v30 + 24) = v36[5] * (v37 - v39);
              *(v30 + 36) = v25.i32[0];
              v35 = v30;
            }

            v30 = *v35;
          }

          while (*v35);
          v245 = v28 + 1;
          v46 = v252;
          v47 = v244;
          if (v252)
          {
            v48 = 0;
            v49 = &v252;
            do
            {
              while (1)
              {
                v50 = v49;
                v49 = v46;
                v46 = *v46;
                if (!v46)
                {
                  break;
                }

                if (*(v49 + 7) > *(v46 + 7))
                {
                  *v50 = v46;
                  *v49 = *v46;
                  *v46 = v49;
                  v48 = 1;
                }
              }

              v46 = v252;
              v51 = v48 & (v252 != 0);
              v49 = &v252;
              v48 = 0;
            }

            while ((v51 & 1) != 0);
          }
        }

        else
        {
          v245 = v28 + 1;
          v34 = (v28 + 1);
          v47 = v244;
        }

        if (v32 < v47)
        {
          v52 = 0;
          v53 = 0;
          v54 = v28;
          do
          {
            v55 = *(v32 + 1);
            v56 = *v55;
            if (*v55 >= v34)
            {
              break;
            }

            v57 = v55[1];
            if (v57 > v54)
            {
              if (v31)
              {
                v58 = *v31;
              }

              else
              {
                v31 = x_heap_malloc_small_(v253, 0x28uLL);
                v27 = v247;
                v58 = 0;
                v55 = *(v32 + 1);
                v56 = *v55;
                v57 = v55[1];
              }

              *(v31 + 16) = v55;
              if (v56 >= v54)
              {
                v59 = v56;
              }

              else
              {
                v59 = v28;
              }

              if (v57 > v34)
              {
                v57 = v34;
              }

              v60 = v55[2];
              v61 = v55[3];
              v62 = v55[4];
              v63 = v62 + ((v61 + ((v59 - v56) * v60)) * (v59 - v56));
              v64 = v62 + ((v61 + ((v57 - v56) * v60)) * (v57 - v56));
              if (v63 >= v64)
              {
                v65 = v64;
              }

              else
              {
                v65 = v63;
              }

              if (v63 > v64)
              {
                v64 = v63;
              }

              v24.f32[0] = fmaxf(v64 - v65, 0.000001);
              v24 = vdup_lane_s32(v24, 0);
              *(v31 + 28) = v65;
              *(v31 + 32) = v64;
              *(v31 + 24) = v55[5] * (v57 - v59);
              *(v31 + 36) = vrecpe_f32(v24).u32[0];
              *v31 = v53;
              ++v52;
              v53 = v31;
              v31 = v58;
            }

            v32 += 16;
          }

          while (v32 < v47);
          if (v52)
          {
            if (v52 != 1)
            {
              v66 = v31;
              v67 = CA::ScanConverter::RendererImpl::Edge::sort_xmin(v53, v52);
              v27 = v247;
              v53 = v67;
              v31 = v66;
            }

            v68 = &v252;
            if (v53)
            {
              while (1)
              {
                v69 = *v68;
                if (!*v68)
                {
                  break;
                }

                if (*(v53 + 28) >= v69[7])
                {
                  v68 = *v68;
                  if (!v53)
                  {
                    goto LABEL_79;
                  }
                }

                else
                {
                  v70 = *v53;
                  *v68 = v53;
                  *v53 = v69;
                  v53 = v70;
                  if (!v70)
                  {
                    goto LABEL_79;
                  }
                }
              }
            }

            else
            {
LABEL_79:
              if (*v68)
              {
                goto LABEL_82;
              }

              v53 = 0;
            }

            *v68 = v53;
          }
        }

LABEL_82:
        v30 = v252;
        v246 = v31;
        if (v252)
        {
          if (v242 >= v27)
          {
            goto LABEL_158;
          }

          v71 = 0;
          v72 = v28 + 0.5;
          v73 = 0.0;
          v74 = v242;
          v75 = v252;
LABEL_85:
          for (i = v74; v71; v71 = *(v71 + 8))
          {
            if (*(v71 + 32) > i)
            {
              break;
            }

            v73 = *(v71 + 24) + v73;
          }

          v77 = i + 1.0;
          v251 = v71;
          if (!v75)
          {
            goto LABEL_106;
          }

LABEL_89:
          while (1)
          {
            v78 = v75;
            v79 = v75[7];
            if (v77 <= v79)
            {
              break;
            }

            v75 = *v75;
            v80 = v78[8];
            if (v80 <= i)
            {
              v73 = v78[6] + v73;
              if (v75)
              {
                continue;
              }

LABEL_105:
              v71 = v251;
LABEL_106:
              v78 = 0;
              v84 = v27;
              if (!v71)
              {
LABEL_143:
                v99 = fabsf(v73);
                if (v6)
                {
                  v100 = v99;
                  v99 = v99 - truncf(v99);
                  if (v100)
                  {
                    v99 = 1.0 - v99;
                  }

                  goto LABEL_148;
                }

                v94 = 1.0;
                if (v99 < 1.0)
                {
LABEL_148:
                  if (v99 == 0.0)
                  {
                    v94 = v99;
                    if (*(v2 + 64) != 1)
                    {
                      v71 = 0;
                      goto LABEL_155;
                    }
                  }

                  else
                  {
                    v94 = v99;
                  }
                }

                v71 = 0;
                goto LABEL_152;
              }

LABEL_109:
              v85 = 1.0;
              v86 = v71;
              v87 = v73;
              while (1)
              {
                v88 = v86;
                v89 = *(v86 + 28);
                if (v89 >= i)
                {
                  v90 = *(v86 + 28);
                }

                else
                {
                  v90 = v74;
                }

                v91 = *(v86 + 32);
                if (v91 > v77)
                {
                  v91 = i + 1.0;
                }

                v87 = v87 + ((*(v86 + 24) * v85) * ((v77 - v91) + (((v90 - v91) * *(v86 + 36)) * (v89 + ((v91 + v90) * -0.5)))));
                v86 = *(v86 + 8);
                if (v6 == 1)
                {
                  if (!v86)
                  {
                    v94 = fabsf(v87);
                    goto LABEL_126;
                  }

                  v92 = *(v88 + 16);
                  v93 = *(v86 + 16);
                  if (v92[5] == v93[5] && *v92 != v93[1] && v92[1] != *v93)
                  {
                    v85 = -v85;
                  }
                }

                if (!v86)
                {
                  v94 = fabsf(v87);
                  if (!v6)
                  {
                    if (v94 >= 1.0)
                    {
                      v84 = v74 + 1;
                      v94 = 1.0;
                      goto LABEL_152;
                    }

LABEL_129:
                    v84 = v74 + 1;
                    if (v94 == 0.0 && *(v2 + 64) != 1)
                    {
LABEL_155:
                      v74 = v84;
                      v75 = v78;
                      if (v84 >= v27)
                      {
LABEL_158:
                        v29 = v241;
                        v47 = v245;
                        goto LABEL_169;
                      }

                      goto LABEL_85;
                    }

LABEL_152:
                    v101 = (v94 == 1.0) & *(v2 + 65);
                    v102 = &v250[v101];
                    v103 = *v102;
                    if ((*v102 + 2) > v249[v101])
                    {
                      CA::OGL::Shape::Lines::flush(v2, v101);
                      v31 = v246;
                      v27 = v247;
                      v103 = *v102;
                    }

                    v104 = *&v248[8 * v101] + 16 * v103;
                    v105 = *(v2 + 12);
                    _H0 = *(v2 + 14);
                    __asm { FCVT            S0, H0 }

                    _S0 = v94 * _S0;
                    __asm { FCVT            H0, S0 }

                    *(v104 + 24) = *(v2 + 8);
                    *(v104 + 28) = v105;
                    *(v104 + 30) = LOWORD(_S0);
                    *(v104 + 8) = *(v104 + 24);
                    *(v104 + 16) = v84 + 0.5;
                    *(v104 + 20) = v72;
                    *v104 = i + 0.5;
                    *(v104 + 4) = v72;
                    *v102 += 2;
                    goto LABEL_155;
                  }

LABEL_126:
                  v95 = v94 - truncf(v94);
                  if (v94)
                  {
                    v94 = 1.0 - v95;
                  }

                  else
                  {
                    v94 = v95;
                  }

                  goto LABEL_129;
                }
              }
            }

            v81 = v251;
            if (v251)
            {
              v82 = &v251;
              while (1)
              {
                v83 = *(v81 + 32);
                if (SLODWORD(v80) == SLODWORD(v83))
                {
                  if (v79 < *(v81 + 28))
                  {
                    goto LABEL_104;
                  }
                }

                else if (v80 < v83)
                {
LABEL_104:
                  *(v78 + 1) = v81;
                  *v82 = v78;
                  if (!v75)
                  {
                    goto LABEL_105;
                  }

                  goto LABEL_89;
                }

                v82 = (v81 + 8);
                v81 = *(v81 + 8);
                if (!v81)
                {
                  goto LABEL_102;
                }
              }
            }

            v82 = &v251;
LABEL_102:
            *v82 = v78;
            *(v78 + 1) = 0;
            if (!v75)
            {
              goto LABEL_105;
            }
          }

          v71 = v251;
          if (!v251)
          {
            v96 = floorf(v79);
            v97 = v96;
            if (v96 < -16777000.0)
            {
              v97 = -16777216;
            }

            v98 = 16777000.0;
            if (v79 < 16777000.0)
            {
              v98 = v75[7];
            }

            if (v79 >= 0.0)
            {
              v97 = v98;
            }

            if (v97 >= v27)
            {
              v97 = v27;
            }

            if ((LODWORD(v79) & 0x7FFFFFFFu) >= 0x7F800000)
            {
              v84 = v27;
            }

            else
            {
              v84 = v97;
            }

            goto LABEL_143;
          }

          goto LABEL_109;
        }

        if (v32 == v47)
        {
          if (v28 < v29)
          {
            do
            {
              if (*(v2 + 64) == 1)
              {
                v226 = *v250;
                if ((*v250 + 2) > *v249)
                {
                  CA::OGL::Shape::Lines::flush(v2, 0);
                  v226 = *(v2 + 32);
                }

                v227 = *(v2 + 16) + 16 * v226;
                v228 = *(v2 + 12);
                v229 = *(v2 + 14) * COERCE_SHORT_FLOAT(0);
                *(v227 + 24) = *(v2 + 8);
                *(v227 + 28) = v228;
                *(v227 + 30) = v229;
                *(v227 + 8) = *(v227 + 24);
                v230 = v28 + 0.5;
                v231 = v240;
                *(v227 + 16) = v239;
                *(v227 + 20) = v230;
                *v227 = v231;
                *(v227 + 4) = v230;
                *(v2 + 32) += 2;
              }

              LODWORD(v28) = v28 + 1;
            }

            while (v29 != v28);
          }

          break;
        }

        LODWORD(v47) = vcvtms_s32_f32(**(v32 + 1));
        if (v28 >= v47)
        {
          v47 = v28;
        }

        else
        {
          v114 = v239;
          v113 = v240;
          do
          {
            if (*(v2 + 64) == 1)
            {
              v115 = *v250;
              if ((*v250 + 2) > *v249)
              {
                CA::OGL::Shape::Lines::flush(v2, 0);
                v31 = v246;
                v27 = v247;
                v115 = *(v2 + 32);
              }

              v116 = *(v2 + 16) + 16 * v115;
              v117 = *(v2 + 12);
              v118 = *(v2 + 14) * COERCE_SHORT_FLOAT(0);
              *(v116 + 24) = *(v2 + 8);
              *(v116 + 28) = v117;
              *(v116 + 30) = v118;
              *(v116 + 8) = *(v116 + 24);
              v119 = v28 + 0.5;
              *(v116 + 16) = v114;
              *(v116 + 20) = v119;
              *v116 = v113;
              *(v116 + 4) = v119;
              *(v2 + 32) += 2;
            }

            LODWORD(v28) = v28 + 1;
          }

          while (v47 != v28);
        }

LABEL_169:
        v28 = v47;
      }

      while (v47 < v29);
    }

    if (v243 <= 0x1000)
    {
      goto LABEL_356;
    }

    v120 = v238;
    goto LABEL_355;
  }

  if (v13 > 0x1000)
  {
    v240 = malloc_type_malloc(v13, 0x25DB91DBuLL);
    if (!v240)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v13);
    v240 = &v237 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v240, v16);
  }

  v121 = *(v5 + 8);
  if (v121)
  {
    v122 = 0;
    v123 = v240 + 8;
    do
    {
      v124 = v121[1];
      if (v124)
      {
        v125 = (v121 + 3);
        v126 = &v123[16 * v122];
        v122 += v124;
        v127 = (v121 + 3);
        do
        {
          v128 = *v127;
          v127 += 6;
          *(v126 - 2) = ((v128 >> 31) | 0x80000000) ^ v128;
          *v126 = v125;
          v126 += 16;
          v125 = v127;
          --v124;
        }

        while (v124);
      }

      v121 = *v121;
    }

    while (v121);
  }

  v248 = &v240[16 * v12];
  CA::radix_sort(v12);
  if (v9 <= -16777216)
  {
    v131 = -16777216;
  }

  else
  {
    v131 = v9;
  }

  v242 = v131;
  if (v10 >= 0x1000000)
  {
    v132 = 0x1000000;
  }

  else
  {
    v132 = v10;
  }

  if (v8 <= -16777216)
  {
    v133 = -16777216;
  }

  else
  {
    v133 = v8;
  }

  v254 = 0;
  v255 = v257;
  if (v11 >= 0x1000000)
  {
    v11 = 0x1000000;
  }

  v256 = xmmword_183E210D0;
  v252 = 0;
  v253 = &v254;
  v134 = v243;
  if (v133 < v11)
  {
    v135 = 0;
    v136 = 0;
    v249 = (v2 + 48);
    v250 = (v2 + 32);
    v246 = v2 + 16;
    v239 = v242 + 0.5;
    *&v238 = v132 + 0.5;
    v137 = v240;
    v245 = v132;
    v241 = v11;
    do
    {
      if (v135)
      {
        v138 = v133;
        v247 = v133 + 1;
        v139 = (v133 + 1);
        v140 = &v252;
        do
        {
          v141 = *(v135 + 16);
          v142 = v141[1];
          if (v142 <= v138)
          {
            *v140 = *v135;
            *v135 = v136;
            v136 = v135;
          }

          else
          {
            v143 = *v141;
            if (*v141 >= v138)
            {
              v144 = *v141;
            }

            else
            {
              v144 = v133;
            }

            if (v142 > v139)
            {
              v142 = (v133 + 1);
            }

            v145 = v141[2];
            v146 = v141[3];
            v147 = v141[4];
            v148 = v147 + ((v146 + ((v144 - v143) * v145)) * (v144 - v143));
            v149 = v147 + ((v146 + ((v142 - v143) * v145)) * (v142 - v143));
            if (v148 >= v149)
            {
              v150 = v149;
            }

            else
            {
              v150 = v148;
            }

            if (v148 > v149)
            {
              v149 = v148;
            }

            *v130.i32 = fmaxf(v149 - v150, 0.000001);
            v130 = vrecpe_f32(vdup_lane_s32(v130, 0));
            *(v135 + 28) = v150;
            *(v135 + 32) = v149;
            *(v135 + 24) = v141[5] * (v142 - v144);
            *(v135 + 36) = v130.i32[0];
            v140 = v135;
          }

          v135 = *v140;
        }

        while (*v140);
        v151 = v252;
        if (v252)
        {
          v152 = 0;
          v153 = &v252;
          do
          {
            while (1)
            {
              v154 = v153;
              v153 = v151;
              v151 = *v151;
              if (!v151)
              {
                break;
              }

              if (*(v153 + 7) > *(v151 + 7))
              {
                *v154 = v151;
                *v153 = *v151;
                *v151 = v153;
                v152 = 1;
              }
            }

            v151 = v252;
            v155 = v152 & (v252 != 0);
            v153 = &v252;
            v152 = 0;
          }

          while ((v155 & 1) != 0);
        }
      }

      else
      {
        v247 = v133 + 1;
        v139 = (v133 + 1);
      }

      if (v137 < v248)
      {
        v156 = 0;
        v157 = 0;
        v158 = v133;
        do
        {
          v159 = *(v137 + 1);
          v160 = *v159;
          if (*v159 >= v139)
          {
            break;
          }

          v161 = v159[1];
          if (v161 > v158)
          {
            if (v136)
            {
              v162 = *v136;
            }

            else
            {
              v136 = x_heap_malloc_small_(v253, 0x28uLL);
              v132 = v245;
              v162 = 0;
              v159 = *(v137 + 1);
              v160 = *v159;
              v161 = v159[1];
            }

            *(v136 + 16) = v159;
            if (v160 >= v158)
            {
              v163 = v160;
            }

            else
            {
              v163 = v133;
            }

            if (v161 > v139)
            {
              v161 = v139;
            }

            v164 = v159[2];
            v165 = v159[3];
            v166 = v159[4];
            v167 = v166 + ((v165 + ((v163 - v160) * v164)) * (v163 - v160));
            v168 = v166 + ((v165 + ((v161 - v160) * v164)) * (v161 - v160));
            if (v167 >= v168)
            {
              v169 = v168;
            }

            else
            {
              v169 = v167;
            }

            if (v167 > v168)
            {
              v168 = v167;
            }

            v129.f32[0] = fmaxf(v168 - v169, 0.000001);
            v129 = vdup_lane_s32(v129, 0);
            *(v136 + 28) = v169;
            *(v136 + 32) = v168;
            *(v136 + 24) = v159[5] * (v161 - v163);
            *(v136 + 36) = vrecpe_f32(v129).u32[0];
            *v136 = v157;
            ++v156;
            v157 = v136;
            v136 = v162;
          }

          v137 += 16;
        }

        while (v137 < v248);
        if (v156)
        {
          if (v156 != 1)
          {
            v170 = v136;
            v171 = CA::ScanConverter::RendererImpl::Edge::sort_xmin(v157, v156);
            v132 = v245;
            v157 = v171;
            v136 = v170;
          }

          v172 = &v252;
          if (v157)
          {
            while (1)
            {
              v173 = *v172;
              if (!*v172)
              {
                break;
              }

              if (*(v157 + 28) >= v173[7])
              {
                v172 = *v172;
                if (!v157)
                {
                  goto LABEL_244;
                }
              }

              else
              {
                v174 = *v157;
                *v172 = v157;
                *v157 = v173;
                v157 = v174;
                if (!v174)
                {
                  goto LABEL_244;
                }
              }
            }
          }

          else
          {
LABEL_244:
            if (*v172)
            {
              goto LABEL_247;
            }

            v157 = 0;
          }

          *v172 = v157;
        }
      }

LABEL_247:
      v135 = v252;
      v244 = v136;
      if (v252)
      {
        if (v242 >= v132)
        {
          goto LABEL_341;
        }

        v175 = 0;
        v176 = v133 + 0.5;
        v177 = 0.0;
        v178 = v242;
        v179 = v252;
        while (1)
        {
          for (j = v178; v175; v175 = *(v175 + 8))
          {
            if (*(v175 + 32) > j)
            {
              break;
            }

            v177 = *(v175 + 24) + v177;
          }

          v181 = j + 1.0;
          v251 = v175;
          if (!v179)
          {
LABEL_271:
            v182 = 0;
            v188 = v132;
            if (v175)
            {
LABEL_281:
              v194 = 1.0;
              v195 = v175;
              v196 = v177;
              do
              {
                v197 = v195;
                v198 = *(v195 + 28);
                if (v198 >= j)
                {
                  v199 = *(v195 + 28);
                }

                else
                {
                  v199 = v178;
                }

                v200 = *(v195 + 32);
                if (v200 > v181)
                {
                  v200 = j + 1.0;
                }

                v196 = v196 + ((*(v195 + 24) * v194) * ((v181 - v200) + (((v199 - v200) * *(v195 + 36)) * (v198 + ((v200 + v199) * -0.5)))));
                v195 = *(v195 + 8);
                if (v6 == 1)
                {
                  if (!v195)
                  {
                    goto LABEL_295;
                  }

                  v201 = *(v197 + 16);
                  v202 = *(v195 + 16);
                  if (v201[5] == v202[5] && *v201 != v202[1] && v201[1] != *v202)
                  {
                    v194 = -v194;
                  }
                }
              }

              while (v195);
              if (v6)
              {
LABEL_295:
                v203 = fabsf(v196);
                v204 = v203;
                v205 = v203 - truncf(v203);
                if (v204)
                {
                  v205 = 1.0 - v205;
                }

                if (v205 <= 0.0)
                {
                  v192 = 0.0;
                }

                else
                {
                  v192 = 1.0;
                }

                v188 = v178 + 1;
                if (v205 > 0.0)
                {
                  v193 = 1;
                  goto LABEL_335;
                }

                goto LABEL_310;
              }

              if (v196 >= 0.0)
              {
                v206 = v196;
              }

              else
              {
                v206 = 1.0;
              }

              if (v196 <= 0.0)
              {
                v192 = v206;
              }

              else
              {
                v192 = 1.0;
              }

              v188 = v178 + 1;
              v193 = 1;
              if (v196 < 0.0 || v196 > 0.0)
              {
                goto LABEL_335;
              }

LABEL_310:
              if (*(v2 + 64) != 1)
              {
                goto LABEL_338;
              }

              v193 = 0;
              goto LABEL_335;
            }

            if (!v6)
            {
              goto LABEL_324;
            }

LABEL_273:
            v189 = fabsf(v177);
            v190 = v189;
            v191 = v189 - truncf(v189);
            if (v190)
            {
              v191 = 1.0 - v191;
            }

            if (v191 <= 0.0)
            {
              v192 = 0.0;
            }

            else
            {
              v192 = 1.0;
            }

            if (v191 > 0.0)
            {
              v193 = 1;
              goto LABEL_334;
            }

LABEL_332:
            if (*(v2 + 64) == 1)
            {
              v193 = 0;
              goto LABEL_334;
            }

            v175 = 0;
            goto LABEL_338;
          }

LABEL_254:
          while (1)
          {
            v182 = v179;
            v183 = v179[7];
            if (v181 <= v183)
            {
              break;
            }

            v179 = *v179;
            v184 = v182[8];
            if (v184 <= j)
            {
              v177 = v182[6] + v177;
              if (v179)
              {
                continue;
              }

LABEL_270:
              v175 = v251;
              goto LABEL_271;
            }

            v185 = v251;
            if (v251)
            {
              v186 = &v251;
              while (1)
              {
                v187 = *(v185 + 32);
                if (SLODWORD(v184) == SLODWORD(v187))
                {
                  if (v183 < *(v185 + 28))
                  {
                    goto LABEL_269;
                  }
                }

                else if (v184 < v187)
                {
LABEL_269:
                  *(v182 + 1) = v185;
                  *v186 = v182;
                  if (!v179)
                  {
                    goto LABEL_270;
                  }

                  goto LABEL_254;
                }

                v186 = (v185 + 8);
                v185 = *(v185 + 8);
                if (!v185)
                {
                  goto LABEL_267;
                }
              }
            }

            v186 = &v251;
LABEL_267:
            *v186 = v182;
            *(v182 + 1) = 0;
            if (!v179)
            {
              goto LABEL_270;
            }
          }

          v175 = v251;
          if (v251)
          {
            goto LABEL_281;
          }

          v207 = floorf(v183);
          v208 = v207;
          if (v207 < -16777000.0)
          {
            v208 = -16777216;
          }

          v209 = 16777000.0;
          if (v183 < 16777000.0)
          {
            v209 = v179[7];
          }

          if (v183 >= 0.0)
          {
            v208 = v209;
          }

          if (v208 >= v132)
          {
            v208 = v132;
          }

          if ((LODWORD(v183) & 0x7FFFFFFFu) >= 0x7F800000)
          {
            v188 = v132;
          }

          else
          {
            v188 = v208;
          }

          if (v6)
          {
            goto LABEL_273;
          }

LABEL_324:
          if (v177 >= 0.0)
          {
            v210 = v177;
          }

          else
          {
            v210 = 1.0;
          }

          if (v177 <= 0.0)
          {
            v192 = v210;
          }

          else
          {
            v192 = 1.0;
          }

          v193 = 1;
          if (v177 >= 0.0 && v177 <= 0.0)
          {
            goto LABEL_332;
          }

LABEL_334:
          v175 = 0;
LABEL_335:
          v211 = (v193 & *(v2 + 65));
          v212 = &v250[v211];
          v213 = *v212;
          if ((*v212 + 2) > v249[v211])
          {
            CA::OGL::Shape::Lines::flush(v2, v211);
            v136 = v244;
            v132 = v245;
            v213 = *v212;
          }

          v214 = *(v246 + 8 * v211) + 16 * v213;
          v215 = *(v2 + 12);
          _H0 = *(v2 + 14);
          __asm { FCVT            S0, H0 }

          _S0 = v192 * _S0;
          __asm { FCVT            H0, S0 }

          *(v214 + 24) = *(v2 + 8);
          *(v214 + 28) = v215;
          *(v214 + 30) = LOWORD(_S0);
          *(v214 + 8) = *(v214 + 24);
          *(v214 + 16) = v188 + 0.5;
          *(v214 + 20) = v176;
          *v214 = j + 0.5;
          *(v214 + 4) = v176;
          *v212 += 2;
LABEL_338:
          v178 = v188;
          v179 = v182;
          if (v188 >= v132)
          {
LABEL_341:
            v11 = v241;
            goto LABEL_352;
          }
        }
      }

      if (v137 == v248)
      {
        v134 = v243;
        if (v133 < v11)
        {
          do
          {
            if (*(v2 + 64) == 1)
            {
              v232 = *v250;
              if ((*v250 + 2) > *v249)
              {
                CA::OGL::Shape::Lines::flush(v2, 0);
                v232 = *(v2 + 32);
              }

              v233 = *(v2 + 16) + 16 * v232;
              v234 = *(v2 + 12);
              v235 = *(v2 + 14) * COERCE_SHORT_FLOAT(0);
              *(v233 + 24) = *(v2 + 8);
              *(v233 + 28) = v234;
              *(v233 + 30) = v235;
              *(v233 + 8) = *(v233 + 24);
              v236 = v133 + 0.5;
              *(v233 + 16) = v238;
              *(v233 + 20) = v236;
              *v233 = v239;
              *(v233 + 4) = v236;
              *(v2 + 32) += 2;
            }

            ++v133;
            v134 = v243;
          }

          while (v11 != v133);
        }

        break;
      }

      v247 = vcvtms_s32_f32(**(v137 + 1));
      if (v133 >= v247)
      {
        v247 = v133;
      }

      else
      {
        v219 = v239;
        v220 = v238;
        do
        {
          if (*(v2 + 64) == 1)
          {
            v221 = *v250;
            if ((*v250 + 2) > *v249)
            {
              CA::OGL::Shape::Lines::flush(v2, 0);
              v136 = v244;
              v132 = v245;
              v221 = *(v2 + 32);
            }

            v222 = *(v2 + 16) + 16 * v221;
            v223 = *(v2 + 12);
            v224 = *(v2 + 14) * COERCE_SHORT_FLOAT(0);
            *(v222 + 24) = *(v2 + 8);
            *(v222 + 28) = v223;
            *(v222 + 30) = v224;
            *(v222 + 8) = *(v222 + 24);
            v225 = v133 + 0.5;
            *(v222 + 16) = v220;
            *(v222 + 20) = v225;
            *v222 = v219;
            *(v222 + 4) = v225;
            *(v2 + 32) += 2;
          }

          ++v133;
        }

        while (v247 != v133);
      }

LABEL_352:
      v133 = v247;
      v134 = v243;
    }

    while (v247 < v11);
  }

  if (v134 > 0x1000)
  {
    v120 = v240;
LABEL_355:
    free(v120);
  }

LABEL_356:
  x_heap_free(v253);
}

void **CA::OGL::Shape::Lines::flush(void **result, unsigned int a2)
{
  v2 = result + 4;
  v3 = result[a2 + 4];
  if (v3)
  {
    v4 = result;
    v5 = a2;
    v6 = *result;
    v7 = v6[2];
    v8 = *(v7 + 497);
    v9 = (a2 == 1) & v8;
    if (v9 == 1)
    {
      *(v7 + 497) = v8 & 0xFE;
      v6 = *v4;
      v3 = v2[a2];
    }

    result = (*(*v6 + 360))(v6, 0, v3, v4[a2 + 2]);
    v2[v5] = 0;
    if (v9)
    {
      *((*v4)[2] + 497) |= 1u;
    }
  }

  return result;
}

_DWORD *CA::Render::Pattern::new_pattern(CA::Render::Pattern *this, CGPattern *a2, CGColorSpace *a3, CGAffineTransform *a4, double a5)
{
  if (CGPatternGetType())
  {
    return 0;
  }

  CGPatternGetBounds();
  width = v75.size.width;
  height = v75.size.height;
  if (CGRectIsEmpty(v75))
  {
    return 0;
  }

  v71 = 1.0;
  __asm { FMOV            V0.2D, #1.0 }

  v74 = _Q0;
  if (a3)
  {
    Image = CGPatternGetImage();
    v18 = 1.0;
    if (!Image)
    {
      CGPatternGetMatrix();
      v19.f64[0] = *a3;
      v20.f64[0] = *(a3 + 3);
      v20.f64[1] = *a3;
      v21 = *(a3 + 8);
      v22 = vmlaq_f64(vmulq_f64(v20, vextq_s8(0, 0, 8uLL)), 0, v21);
      v19.f64[1] = *(a3 + 3);
      v23 = vaddvq_f64(vmulq_f64(v22, v22));
      v24 = vmulq_f64(0, v19);
      v25 = vmlaq_f64(vextq_s8(v24, v24, 8uLL), v21, 0);
      v26 = vaddvq_f64(vmulq_f64(v25, v25));
      v27 = sqrt(v23);
      if (v23 == 1.0)
      {
        v18 = v23;
      }

      else
      {
        v18 = v27;
      }

      v28 = sqrt(v26);
      if (v26 == 1.0)
      {
        v29 = v26;
      }

      else
      {
        v29 = v28;
      }

        ;
      }

        ;
      }

      v34.f64[0] = v18;
      v71 = v29;
      v34.f64[1] = v29;
      v74 = v34;
    }
  }

  else
  {
    v18 = 1.0;
  }

  v72 = v18;
  os_unfair_lock_lock(&CA::Render::pattern_lock);
  v35 = CA::Render::pattern_cache;
  if (!CA::Render::pattern_cache)
  {
    CA::Render::pattern_cache = x_hash_table_new_(0, 0, 0, 0, 0, 0);
    CA::Render::pattern_cache_list = &CA::Render::pattern_cache_list;
    qword_1ED4E4B30 = &CA::Render::pattern_cache_list;
    CGPatternNotificationCenter();
    CGNotificationCenterAddCallback();
    v35 = CA::Render::pattern_cache;
  }

  v36 = x_hash_table_lookup(v35, this, 0);
  if (v36)
  {
    v37 = v36;
    v12 = *(v36 + 24);
    if (v12)
    {
      if (*(v12 + 14) == v72 && *(v12 + 15) == v71)
      {
        v70 = *(v12 + 16);
        if (!v70 || !CARequiresColorMatching(*(v70 + 56), a2, (a4 >> 3) & 1))
        {
          v57 = 0;
          goto LABEL_69;
        }
      }
    }
  }

  os_unfair_lock_unlock(&CA::Render::pattern_lock);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v38 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x88uLL, 0xDEEC3011uLL);
  v12 = v38;
  if (v38)
  {
    v38[2] = 1;
    v38[3] = 39;
    ++dword_1ED4EAAD4;
    *v38 = &unk_1EF204BD8;
    CGPatternGetMatrix();
    CGPatternGetBounds();
    *(v12 + 8) = v39;
    *(v12 + 9) = v40;
    *(v12 + 10) = v41;
    *(v12 + 11) = v42;
    CGPatternGetStep();
    __asm { FMOV            V2.2D, #1.0 }

    v73 = _Q2;
    *(v12 + 7) = _Q2;
    *(v12 + 12) = v44;
    *(v12 + 13) = v45;
    *(v12 + 16) = 0;
    if ((CGPatternIsColored() & 1) == 0)
    {
      a2 = 0;
      v12[3] |= 0x200u;
    }

    v46 = CGPatternGetImage();
    if (v46)
    {
      pattern_image = CA::Render::copy_image(v46, a2, a4, a5, 1.0);
    }

    else
    {
      if (v74.f64[0] != 1.0 || v74.f64[1] != 1.0)
      {
        v50 = vdivq_f64(v73, v74);
        v51 = vmulq_f64(*(v12 + 1), v50);
        v52 = vmulq_f64(*(v12 + 2), v50);
        *(v12 + 1) = v51;
        *(v12 + 2) = v52;
        v53 = vmulq_f64(*(v12 + 5), v74);
        *(v12 + 4) = vmulq_f64(*(v12 + 4), v74);
        *(v12 + 5) = v53;
        *(v12 + 6) = vmulq_f64(*(v12 + 6), v74);
        *(v12 + 7) = v74;
      }

      pattern_image = CA::Render::create_pattern_image(this, a2, v12 + 14, v12 + 8);
    }

    v54 = *(v12 + 16);
    *(v12 + 16) = pattern_image;
    if (v54)
    {
      if (atomic_fetch_add(v54 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v54 + 16))(v54);
      }

      pattern_image = *(v12 + 16);
    }

    if (pattern_image)
    {
      LODWORD(v48) = pattern_image[4];
      v55 = v48;
      if (*(v12 + 12) == v55)
      {
        LODWORD(v55) = pattern_image[5];
        if (*(v12 + 13) == *&v55 && *(v12 + 3) == 0.0 && *(v12 + 4) == 0.0)
        {
          v12[3] |= 0x100u;
        }
      }
    }
  }

  os_unfair_lock_lock(&CA::Render::pattern_lock);
  v56 = x_hash_table_lookup(CA::Render::pattern_cache, this, 0);
  if (v56)
  {
    v37 = v56;
    v57 = *(v56 + 24);
LABEL_68:
    *(v37 + 24) = v12;
LABEL_69:
    v59 = *(v37 + 32);
    if ((a4 & 4) != 0)
    {
      if (v59 >= 0.0 && v59 < a5)
      {
        if (v59 > 0.0)
        {
          v64 = *v37;
          v63 = *(v37 + 8);
          *(v64 + 8) = v63;
          *v63 = v64;
          *v37 = v37;
          *(v37 + 8) = v37;
        }

        *(v37 + 32) = a5;
        v65 = &CA::Render::pattern_cache_list;
        while (1)
        {
          v65 = *v65;
          if (v65 == &CA::Render::pattern_cache_list)
          {
            break;
          }

          if (*(v65 + 4) <= a5)
          {
            v66 = v65[1];
            v67 = *v37;
            v65[1] = v37;
            *v37 = v65;
            *v66 = v67;
            *(v67 + 8) = v66;
            goto LABEL_84;
          }
        }

        v68 = qword_1ED4E4B30;
        v69 = *v37;
        qword_1ED4E4B30 = v37;
        *v37 = &CA::Render::pattern_cache_list;
        *v68 = v69;
        *(v69 + 8) = v68;
      }
    }

    else if (v59 >= 0.0)
    {
      v61 = *v37;
      v60 = *(v37 + 8);
      *(v61 + 8) = v60;
      *v60 = v61;
      *v37 = v37;
      *(v37 + 8) = v37;
      *(v37 + 32) = 0xBFF0000000000000;
    }

LABEL_84:
    if (!atomic_fetch_add(v12 + 2, 1u))
    {
      atomic_fetch_add(v12 + 2, 0xFFFFFFFF);
    }

    os_unfair_lock_unlock(&CA::Render::pattern_lock);
    if (v57)
    {
      if (atomic_fetch_add(v57 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v57 + 16))(v57);
      }
    }

    return v12;
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v58 = malloc_type_zone_malloc(malloc_zone, 0x28uLL, 0x165299FDuLL);
  if (v58)
  {
    v37 = v58;
    v58[3] = 0;
    v58[4] = 0;
    v58[1] = v58;
    v58[2] = this;
    *v58 = v58;
    hash_table_modify(CA::Render::pattern_cache, this, v58, 0);
    v57 = 0;
    goto LABEL_68;
  }

  result = hash_table_modify(CA::Render::pattern_cache, this, 0, 0);
  __break(1u);
  return result;
}

atomic_uint *CA::Render::CompressedImage::unref_image_data(atomic_uint *this)
{
  add = atomic_fetch_add(this + 45, 0xFFFFFFFF);
  if (this)
  {
    if (add == 1)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

void *CA::Render::Pattern::encode(const CA::Render::Object **this, CA::Render::Encoder *a2)
{
  CA::Render::Object::encode(this, a2);
  v4 = *(a2 + 4);
  if ((v4 + 3) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 48);
    v4 = *(a2 + 4);
  }

  v5 = *(this + 1);
  v6 = *(this + 3);
  v4[1] = *(this + 2);
  v4[2] = v6;
  *v4 = v5;
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  v9 = (v7 + 48);
  *(a2 + 4) = v7 + 48;
  if (v7 + 80 > v8)
  {
    CA::Render::Encoder::grow(a2, 32);
    v9 = *(a2 + 4);
  }

  v10 = *(this + 5);
  *v9 = *(this + 4);
  v9[1] = v10;
  v11 = *(a2 + 4);
  v12 = *(a2 + 5);
  v13 = (v11 + 32);
  *(a2 + 4) = v11 + 32;
  if (v11 + 48 > v12)
  {
    CA::Render::Encoder::grow(a2, 16);
    v13 = *(a2 + 4);
  }

  *v13 = *(this + 6);
  v14 = *(a2 + 4);
  v15 = *(a2 + 5);
  v16 = (v14 + 16);
  *(a2 + 4) = v14 + 16;
  if (v14 + 32 > v15)
  {
    CA::Render::Encoder::grow(a2, 16);
    v16 = *(a2 + 4);
  }

  *v16 = *(this + 7);
  *(a2 + 4) += 16;
  CA::Render::Encoder::encode_object(a2, this[16]);

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void CA::Display::DisplayLinkItem::unschedule(CA::Display::DisplayLinkItem *this, __CFRunLoop *a2, const __CFString *a3)
{
  v6 = *(this + 33);
  if (!v6 || *(v6 + 16) == a2)
  {
    pthread_mutex_lock((this + 136));
    v7 = *(this + 34);
    if (v7)
    {
      v8 = (this + 272);
      while (1)
      {
        v9 = CFEqual(*v7, a3);
        v10 = *v8;
        if (v9)
        {
          break;
        }

        v7 = *(v10 + 8);
        v8 = (v10 + 8);
        if (!v7)
        {
          goto LABEL_7;
        }
      }

      CFRelease(*v10);
      *v8 = x_list_remove_head(*v8);
      pthread_mutex_unlock((this + 136));

      CA::Display::DisplayLinkItem::update_link(this, a2);
    }

    else
    {
LABEL_7:

      pthread_mutex_unlock((this + 136));
    }
  }
}

void CAImageQueueConsumeUnconsumed_(uint64_t a1, char a2)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v5 = *(v2 + 24);
    os_unfair_lock_lock((a1 + 16));
    if (*(a1 + 40))
    {
      v6 = 0;
      v7 = v5 + 532;
      do
      {
        if (*(v7 + 8) && ((a2 & 1) != 0 || *(v7 + 40) != *(v5 + 36)))
        {
          v8 = 0;
          atomic_compare_exchange_strong(v7, &v8, 0x22222222u);
          if (!v8)
          {
            *(v7 + 61) = 1;
          }
        }

        ++v6;
        v7 += 160;
      }

      while (v6 < *(a1 + 40));
    }

    os_unfair_lock_unlock((a1 + 16));
  }
}

void CA::Display::DisplayLinkItem::run_deferred_unregister_frame_interval_range(CA::Display::DisplayLinkItem *this)
{
  CA::Display::DisplayTimingsControl::unregister_frame_interval_range((*(this + 2) + 464), *(this + 116));
  CA::Display::DisplayTimingsControl::register_frame_interval_reasons((*(this + 2) + 464), this, 0, 0);
  *(this + 129) = 0;
}

int *CA::Render::aligned_free(CA::Render *this, size_t a2, void *a3)
{
  munmap(this, a2);
  result = CAGetStatsStruct(0);
  v5 = *(result + 1);
  v6 = *result - a2;
  *result = v6;
  if (v6 > v5)
  {
    *(result + 1) = v6;
  }

  return result;
}

void CA::OGL::export_surface(uint64_t a1, uint64_t a2, const char *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  ++CA::OGL::export_surface(CA::OGL::Context *,CA::OGL::Surface *,char const*,unsigned int,BOOL)::counter;
  v4 = *(a2 + 48);
  if (*(a2 + 144))
  {
    v5 = a3 ? a3 : "";
    v18 = *(a2 + 48);
    v6 = (*(*a1 + 984))(a1, a2, 0, 0, 0);
    v4 = v18;
    if (v6)
    {
      v7 = v6;
      bzero(v42, 0x400uLL);
      if (getuid())
      {
        confstr(65537, v42, 0x400uLL);
      }

      else
      {
        strcpy(v42, "/tmp/");
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      *__str = 0u;
      v27 = 0u;
      snprintf(__str, 0x100uLL, "%sca-image-%03d-%s-%d.png", v42, CA::OGL::export_surface(CA::OGL::Context *,CA::OGL::Surface *,char const*,unsigned int,BOOL)::counter, v5, 0);
      v8 = strlen(__str);
      v9 = CFURLCreateFromFileSystemRepresentation(0, __str, v8, 0);
      v10 = CGImageDestinationCreateWithURL(v9, @"public.png", 1uLL, 0);
      CFRelease(v9);
      if (v10)
      {
        CGImageDestinationAddImage(v10, v7, 0);
        v11 = CGImageDestinationFinalize(v10);
        CFRelease(v10);
        CGImageRelease(v7);
        if (v11)
        {
          if (x_log_get_ogl_trace(void)::once != -1)
          {
            dispatch_once(&x_log_get_ogl_trace(void)::once, &__block_literal_global_3773);
          }

          v12 = x_log_get_ogl_trace(void)::log;
          if (os_signpost_enabled(x_log_get_ogl_trace(void)::log))
          {
            v13 = *(a2 + 56);
            v14 = *(a2 + 60);
            *buf = 136447234;
            *v20 = __str;
            *&v20[8] = 1026;
            *v21 = v13;
            *&v21[4] = 1026;
            *&v21[6] = v14;
            v22 = 1026;
            v23 = 0;
            v24 = 1026;
            v25 = 0;
            _os_signpost_emit_with_name_impl(&dword_183AA6000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ExportSurface", "path=%{public, name=path}s width=%{public, name=width}d height=%{public, name=height}d buffer=%{public, name=buffer}d level=%{public, name=level}u", buf, 0x24u);
          }

LABEL_20:
          v4 = v18;
          goto LABEL_21;
        }
      }

      else
      {
        CGImageRelease(v7);
      }

      if (x_log_get_ogl(void)::once != -1)
      {
        dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
      }

      v15 = x_log_get_ogl(void)::log;
      if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a2 + 56);
        v17 = *(a2 + 60);
        *buf = 67109634;
        *v20 = v16;
        *&v20[4] = 1024;
        *&v20[6] = v17;
        *v21 = 2080;
        *&v21[2] = __str;
        _os_log_error_impl(&dword_183AA6000, v15, OS_LOG_TYPE_ERROR, "error: failed to export [%d %d] buffer to %s\n", buf, 0x18u);
      }

      goto LABEL_20;
    }
  }

LABEL_21:
  *(a2 + 48) = v4;
}

uint64_t draw_path(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Info = CGContextDelegateGetInfo();
  CGGStateGetStyle();
  Color = CGStyleGetColor();
  CompositeOperation = CGGStateGetCompositeOperation();
  CACGContextEvaluator::update_with_color(Info, Color, CompositeOperation, a3);
  if (a4 <= 4)
  {
    if (a4 == 2 || (FillColor = CGGStateGetFillColor(), v13 = CGGStateGetCompositeOperation(), CACGContextEvaluator::update_with_color(Info, FillColor, v13, a3), (a4 - 2) <= 2))
    {
      StrokeColor = CGGStateGetStrokeColor();
      v15 = CGGStateGetCompositeOperation();
      CACGContextEvaluator::update_with_color(Info, StrokeColor, v15, a3);
    }
  }

  *(Info + 78) |= CGGStateGetStyle() != 0;
  v16 = *(CGContextDelegateGetInfo() + 48);

  return MEMORY[0x1EEDB9398](v16, a2, a3, a4, a5);
}

uint64_t CA::OGL::fill_color_rect(uint64_t a1, uint64_t a2, double *a3, double a4, int8x16_t a5)
{
  v6 = bswap32(a3);
  a5.i32[0] = v6;
  a5.i32[1] = v6 >> 8;
  a5.i32[2] = HIWORD(v6);
  v7.i64[0] = 0xFF000000FFLL;
  v7.i64[1] = 0xFF000000FFLL;
  v8 = vandq_s8(a5, v7);
  v8.i32[3] = vshrq_n_u32(vdupq_n_s32(v6), 0x18uLL).i32[3];
  *(*(a1 + 16) + 8) = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(v8), vdupq_n_s32(0x3B808081u)));
  if (a3 == 0xFF)
  {
    v9 = *(a2 + 16);
    v10 = *(a1 + 16);
    v11 = *(v10 + 496);
    *(v10 + 496) = 3;
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 496);
    *(v10 + 496) = 3;
  }

  *(v10 + 497) |= 1u;
LABEL_6:
  result = CA::OGL::fill_rect(a1, a2, a3);
  *(*(a1 + 16) + 497) &= ~1u;
  *(*(a1 + 16) + 496) = v11;
  return result;
}

uint64_t CA::OGL::MetalContext::decode_segment(_BYTE **a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  v4 = a3;
  v6 = 0;
  v41 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3 + 24;
  do
  {
    v9 = &v4[72 * v6];
    v10 = *v9;
    if ((v10 & 0x80000000) != 0)
    {
      result = __maskrune(v10, 0x8000uLL);
      if (!result)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = *(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x8000;
      if (!result)
      {
        goto LABEL_10;
      }
    }

    if ((*(v9 + 1) & 1) == 0 && v9[2] >= 1)
    {
      v12 = 0;
      do
      {
        result = (*&v8[8 * v12++])(a2, v9[3]);
      }

      while (v12 < v9[2]);
    }

LABEL_10:
    ++v6;
    v8 += 72;
  }

  while (v6 != v7);
  v13 = *a1;
  v35 = v4 + 24;
  v36 = v4;
LABEL_12:
  while (1)
  {
    v14 = *v13;
    if (!*v13 || v14 == 95)
    {
      break;
    }

    v15 = 0;
    ++v13;
    v16 = v35;
    v37 = v14;
    do
    {
      v17 = &v4[72 * v15];
      if (v14 == *v17)
      {
        if (v17[1] == 1)
        {
          v18 = MEMORY[0x1E69E9830];
          while (1)
          {
LABEL_18:
            v19 = *v13;
            if ((v19 & 0x80000000) != 0)
            {
              if (__maskrune(v19, 0x8000uLL))
              {
                break;
              }
            }

            else if ((*(v18 + 4 * v19 + 60) & 0x8000) != 0)
            {
              break;
            }

            v20 = *v13;
            if (!*v13 || v20 == 95)
            {
              break;
            }

            ++v13;
            v21 = v7;
            v22 = v4;
            while (v20 != *v22)
            {
              v22 += 9;
              if (!--v21)
              {
                goto LABEL_18;
              }
            }

            v22[3](a2, 1);
          }
        }

        else if (*(v17 + 2) >= 1)
        {
          v23 = 0;
          do
          {
            v24 = *(v17 + 3);
            v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v13 length:*(v17 + 1) encoding:4 freeWhenDone:0];
            v26 = *(v17 + 2);
            if (v26)
            {
              v27 = v26();
            }

            else
            {
              v27 = 0;
            }

            v28 = [v27 valueForKey:v25];

            if (v28)
            {
              v29 = [v28 unsignedIntValue];
            }

            else
            {
              v40 = 0;
              __dst = 0;
              v38 = 0;
              v30 = *(v17 + 1);
              memcpy(&__dst, v13, v30);
              *(&__dst + v30) = 0;
              if (sscanf(&__dst, "%d", &v38) == 1)
              {
                v29 = v38;
              }

              else
              {
                v29 = v24;
              }
            }

            (*&v16[8 * v23])(a2, v29);
            v13 += *(v17 + 1);
            ++v23;
          }

          while (v23 < *(v17 + 2));
        }
      }

      ++v15;
      v16 += 72;
      v4 = v36;
      v14 = v37;
    }

    while (v15 != v7);
    v31 = MEMORY[0x1E69E9830];
    while (1)
    {
      v32 = *v13;
      if ((v32 & 0x80000000) != 0)
      {
        result = __maskrune(v32, 0x8000uLL);
        if (result)
        {
          goto LABEL_12;
        }
      }

      else
      {
        result = *(v31 + 4 * v32 + 60) & 0x8000;
        if (result)
        {
          goto LABEL_12;
        }
      }

      if (!*v13 || *v13 == 95)
      {
        break;
      }

      ++v13;
    }
  }

  if (v14 == 95)
  {
    v33 = v13 + 1;
  }

  else
  {
    v33 = v13;
  }

  *a1 = v33;
  return result;
}

uint64_t CA::OGL::MetalContext::Pipeline::Spec::decode_name(CA::OGL::MetalContext::Pipeline::Spec *this, char *a2)
{
  v2 = this;
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = a2;
  CA::OGL::MetalContext::decode_segment(v9, this, byte_1EF1FBA40, 6u);
  result = CA::OGL::MetalContext::FragmentShader::Spec::decode_name(v2, v9[0]);
  *(v2 + 19) = 0;
  v4 = v2 + 19;
  v5 = *(v2 + 14);
  v6 = (v5 >> 20) & 0x300;
  if ((v5 & 0x4000000) != 0)
  {
    *(v2 + 21) = v6 | 0x80;
  }

  else
  {
    *(v2 + 21) = CA::OGL::MetalContext::fragment_shader_type_info[2 * (CA::OGL::MetalContext::texture_function_info[8 * (v5 & 0x7F)] & 0x3F) + 1] & 0x1F | (32 * ((v5 >> 19) & 3)) | v6;
    for (i = CA::OGL::tex_image_count[v5 & 0x7F]; i; --i)
    {
      v8 = *v2;
      v2 = (v2 + 7);
      *v4 = *v4 & 0xFC | byte_183E28164[v8 & 0x3F] & 3;
      ++v4;
    }
  }

  return result;
}

void *CA::Render::GroupAnimation::encode(const CA::Render::Object **this, CA::Render::Encoder *a2)
{
  CA::Render::Animation::encode(this, a2);
  CA::Render::Encoder::encode_object(a2, this[12]);

  return CA::Render::Encoder::encode_sanity_check(a2);
}

uint64_t default_contents_image_format(id *a1)
{
  v2 = CA::Layer::retain_context(a1);
  if (v2)
  {
    v3 = v2[256];
    CA::Context::unref(v2, 0);
  }

  else
  {
    v3 = 0;
  }

  v4 = [a1[2] isOpaque];
  v5 = [a1[2] _overrideImageFormat];
  if ((*(a1 + 60) & 1) == 0)
  {
    *(a1 + 11) = *(a1 + 11) & 0xFFFFFFF8 | v3 & 7;
  }

  LODWORD(result) = image_format_for_contents_format(v3, v4);
  if (v5 == -1)
  {
    return result;
  }

  else
  {
    return v5;
  }
}

uint64_t CA::OGL::MetalContext::FragmentShader::Spec::decode_name(CA::OGL::MetalContext::FragmentShader::Spec *this, const char *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = a2;
  result = CA::OGL::MetalContext::decode_segment(v6, this, byte_1EF1FB010, 0x14u);
  if (CA::OGL::tex_image_count[*(this + 14) & 0x7F])
  {
    v4 = 0;
    v5 = this;
    do
    {
      result = CA::OGL::MetalContext::decode_segment(v6, v5, byte_1EF1FB5B0, 8u);
      ++v4;
      v5 = (v5 + 7);
    }

    while (v4 < CA::OGL::tex_image_count[*(this + 14) & 0x7F]);
  }

  return result;
}

void CA::Render::GroupAnimation::~GroupAnimation(CA::Render::GroupAnimation *this, const CA::Render::Object *a2)
{
  *this = &unk_1EF202F80;
  v3 = *(this + 12);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  --dword_1ED4EAA8C;
  CA::Render::Animation::~Animation(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v4 = malloc_zone;

  malloc_zone_free(v4, this);
}

{
  *this = &unk_1EF202F80;
  v3 = *(this + 12);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  --dword_1ED4EAA8C;

  CA::Render::Animation::~Animation(this, a2);
}

CA::Render::Proxy *CA::Render::Proxy::Proxy(CA::Render::Proxy *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 45;
  ++dword_1ED4EAAEC;
  *v4 = &unk_1EF204B60;
  *(this + 2) = CA::Render::Decoder::decode_int64(a2);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-proxy.cpp", 74);
  return this;
}

uint64_t CA::OGL::emit_color_matrix(CA::OGL *a1, float32x4_t *a2, int32x2_t *a3, int a4, float a5)
{
  v8 = a2;
  v42 = *MEMORY[0x1E69E9840];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  v10 = *(a1 + 2);
  v11 = v10[4];
  v12.i32[0] = v10[5];
  v12.i32[1] = v10[6];
  v13 = v10[7];
  v14.i64[0] = v12.u32[0];
  v14.i64[1] = v12.u32[1];
  v15.i64[0] = 0xFFFFLL;
  v15.i64[1] = 0xFFFFLL;
  v16 = vandq_s8(v14, v15);
  _Q2 = xmmword_183E21280;
  v18 = vshlq_u64(v16, xmmword_183E21280);
  if ((v18.i64[0] | v11 | v18.i64[1] | (v13 << 48)) != 0x3C003C003C003C00)
  {
    _H1 = v13;
    v20 = vuzp1_s16(v12, v12);
    _Q2.i16[0] = v11;
    v21 = a2[1];
    v37 = *a2;
    v38 = v21;
    v22 = a2[3];
    v39 = a2[2];
    v40 = v22;
    v41 = a2[4];
    __asm
    {
      FCVT            S3, H1
      FCMP            H1, #0
    }

    v29 = 0.0;
    if (!(_NF ^ _VF | _ZF))
    {
      v29 = 1.0 / _S3;
    }

    __asm { FCVT            S2, H2 }

    *_Q2.i32 = v29 * *_Q2.i32;
    v30 = vcvtq_f32_f16(v20);
    *v30.i8 = vmul_n_f32(*v30.i8, v29);
    v31 = vzip1q_s32(_Q2, v30);
    v37 = vmulq_n_f32(v37, *_Q2.i32);
    v38 = vmulq_f32(v38, vzip1q_s32(v31, vdupq_lane_s32(*v31.i8, 1)));
    v32 = vmulq_f32(v39, vzip1q_s32(v30, v30));
    *v30.i8 = vdup_lane_s32(*v30.i8, 1);
    v33 = v30;
    *&v33.i32[1] = _S3;
    v34 = vzip1q_s32(v33, v33);
    v34.i32[2] = v30.i32[0];
    v39 = v32;
    v40 = vmulq_f32(v40, v34);
    v41 = vmulq_n_f32(v41, _S3);
    v8 = &v37;
  }

  CA::OGL::bind_filter_surface(a1, a3, 0, a5);
  CA::OGL::color_matrix_function(a1, v8, 0, (a3[18].u16[2] >> 4) & 1, a4);
  v36 = *(*(a1 + 2) + 8);
  result = CA::OGL::emit_filter_quads_color(a1, a3, &v36, a5);
  if (*(a1 + 84) != a3)
  {
    result = CA::OGL::Context::unbind_surface(a1, a3, 0);
  }

  *(*(a1 + 2) + 16) = 0;
  *(*(a1 + 2) + 19) = 0;
  return result;
}

uint64_t CA::Render::Context::copy_slot(CA::Render::Context *this)
{
  v1 = this;
  os_unfair_lock_lock(&CA::Render::Context::_context_lock);
  if (CA::Render::Context::_slot_table)
  {
    v2 = x_hash_table_lookup(CA::Render::Context::_slot_table, v1, 0);
    v3 = v2;
    if (v2 && !atomic_fetch_add((v2 + 8), 1u))
    {
      v3 = 0;
      atomic_fetch_add((v2 + 8), 0xFFFFFFFF);
    }
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&CA::Render::Context::_context_lock);
  return v3;
}

uint64_t CA::OGL::render_luminance_curve_map(void *a1, unsigned int *a2, int32x2_t *a3, float a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_9;
  }

  v8 = a2[4];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = 0;
  while (1)
  {
    v10 = *&a2[2 * v9 + 6];
    if (*(v10 + 16) == 436)
    {
      break;
    }

    if (v8 == ++v9)
    {
      goto LABEL_9;
    }
  }

  if ((v9 & 0x80000000) == 0)
  {
    v11 = *(v10 + 24);
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  v12 = CA::OGL::curve_horner_coeffecients(v11, a2);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  float_key = CA::Render::KeyValueArray::get_float_key(a2, 325, 1.0);
  v22 = float_key;
  CA::OGL::bind_filter_surface(a1, a3, 0, a4);
  *(a1[2] + 16) = 56;
  v20 = a1[2];
  v20[6] = v12;
  *(v20 + 7) = v14;
  *(v20 + 8) = v16;
  *(v20 + 9) = v18;
  v23[0] = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(0x3C003C003C003C00), v22));
  result = CA::OGL::emit_filter_quads_color(a1, a3, v23, a4);
  if (a1[84] != a3)
  {
    result = CA::OGL::Context::unbind_surface(a1, a3, 0);
  }

  *(a1[2] + 16) = 0;
  *(a1[2] + 19) = 0;
  return result;
}

void CA::Render::Proxy::~Proxy(CA::Render::Proxy *this, const CA::Render::Object *a2)
{
  --dword_1ED4EAAEC;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  --dword_1ED4EAAEC;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

uint64_t getValues(NSValue *a1, double *a2, unint64_t *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  result = [(NSValue *)a1 objCType];
  if (!result)
  {
    goto LABEL_7;
  }

  v7 = result;
  if (!strcmp(result, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    v14 = 0u;
    v15 = 0u;
    result = [(NSValue *)a1 getValue:&v14 size:32];
    v11 = v15;
    *a2 = v14;
    *(a2 + 1) = v11;
    *(a2 + 1) = vaddq_f64(*(a2 + 2), *a2);
    v8 = *a3;
    v9 = *a3 >= 4;
    v10 = 4;
  }

  else if (!strcmp(v7, "{CGPoint=dd}") || !strcmp(v7, "{CGSize=dd}"))
  {
    v14 = 0uLL;
    result = [(NSValue *)a1 getValue:&v14 size:16];
    *a2 = v14;
    v8 = *a3;
    v9 = *a3 >= 2;
    v10 = 2;
  }

  else if (!strcmp(v7, "{CAPoint3D=ddd}"))
  {
    v14 = 0uLL;
    *&v15 = 0;
    result = [(NSValue *)a1 getValue:&v14 size:24];
    *a2 = v14;
    *(a2 + 2) = v15;
    v8 = *a3;
    v9 = *a3 >= 3;
    v10 = 3;
  }

  else
  {
    result = strcmp(v7, "{CACornerRadii={CGSize=dd}{CGSize=dd}{CGSize=dd}{CGSize=dd}}");
    if (result)
    {
LABEL_7:
      *a3 = 0;
      return result;
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    result = [(NSValue *)a1 getValue:&v14 size:64];
    v12 = v15;
    *a2 = v14;
    *(a2 + 1) = v12;
    v13 = v17;
    *(a2 + 2) = v16;
    *(a2 + 3) = v13;
    v8 = *a3;
    v9 = *a3 >= 8;
    v10 = 8;
  }

  if (v9)
  {
    v8 = v10;
  }

  *a3 = v8;
  return result;
}

uint64_t makeValue(float64x2_t *a1, uint64_t a2, objc_object *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [(objc_object *)a3 objCType];
  result = 0;
  if (a2 <= 3)
  {
    if (a2 == 2)
    {
      if (!v5)
      {
        return 0;
      }

      if (!strcmp(v5, "{CGPoint=dd}"))
      {
LABEL_15:
        v11 = 0uLL;
        v12.f64[0] = 0.0;
        memcpy(&v11, a1, 8 * a2);
        return [MEMORY[0x1E696B098] valueWithBytes:&v11 objCType:v5];
      }

      v7 = "{CGSize=dd}";
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      if (!v5)
      {
        return 0;
      }

      v7 = "{CAPoint3D=ddd}";
    }

    if (!strcmp(v5, v7))
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (a2 == 8)
  {
    if (v5 && !strcmp(v5, "{CACornerRadii={CGSize=dd}{CGSize=dd}{CGSize=dd}{CGSize=dd}}"))
    {
      v9 = a1[1];
      v11 = *a1;
      v12 = v9;
      v10 = a1[3];
      v13 = a1[2];
      v14 = v10;
      return [MEMORY[0x1E696B098] valueWithBytes:&v11 objCType:v5];
    }

    return 0;
  }

  if (a2 != 4)
  {
    return result;
  }

  if (!v5 || strcmp(v5, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    return 0;
  }

  v8 = a1[1];
  v11 = *a1;
  v12 = vsubq_f64(v8, v11);
  return [MEMORY[0x1E696B098] valueWithBytes:&v11 objCType:v5];
}

BOOL CA::Render::curves_equal(unint64_t this, unint64_t a2, CA::Render::Object *a3)
{
  if ((this == 0) == (a2 != 0))
  {
    return 0;
  }

  if (this | a2)
  {
    if (*(this + 12) == 62 && *(a2 + 12) == 62)
    {
      v3 = *(a2 + 16);
      if (v3 == *(this + 16))
      {
        return memcmp((this + 24), (a2 + 24), 8 * v3) == 0;
      }
    }

    return 0;
  }

  return 1;
}

float64x2_t *CA::BoundsImpl::inset(float64x2_t *result, float64_t a2, float64_t a3, double a4, double a5)
{
  v6 = result[1].f64[0];
  v5 = result[1].f64[1];
  if (v6 <= v5)
  {
    v7 = result[1].f64[1];
  }

  else
  {
    v7 = result[1].f64[0];
  }

  if (v7 < 1.79769313e308)
  {
    if (v6 >= v5)
    {
      v8 = result[1].f64[1];
    }

    else
    {
      v8 = result[1].f64[0];
    }

    if (v8 > 0.0)
    {
      v9.f64[0] = a2;
      v9.f64[1] = a3;
      *result = vaddq_f64(*result, v9);
      v10 = v6 - (a2 + a4);
      v11 = v5 - (a3 + a5);
      result[1].f64[0] = v10;
      result[1].f64[1] = v11;
      if (v10 <= 0.0 || v11 <= 0.0)
      {
        result[1].f64[0] = 0.0;
        result[1].f64[1] = 0.0;
      }
    }
  }

  return result;
}

CA::Render::ReplicatorLayer *CA::Render::ReplicatorLayer::ReplicatorLayer(atomic_uint **this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 46;
  ++dword_1ED4EAAF0;
  *v4 = &unk_1EF1F4F88;
  *(this + 4) = CA::Render::Decoder::decode_int32(a2);
  this[3] = CA::Render::Decoder::decode_object(a2, 62);
  CA::Render::Decoder::decode_bytes(a2, this + 4, 0x24uLL);
  v5 = this[3];
  if (v5)
  {
    v6 = v5[4];
    if (v6 <= 3)
    {
      CA::Render::Decoder::set_fatal_error(a2, "%s - _instance_transform size %u", "ReplicatorLayer", v6);
      v7 = this[3];
      if (v7)
      {
        if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v7 + 16))(v7);
        }

        this[3] = 0;
      }
    }
  }

  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-replicator-layer.cpp", 220);
  return this;
}

void layer_composited(_CAImageQueue *a1, void *a2, unsigned int a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  *(a2 + 25) = mach_absolute_time();
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  os_unfair_lock_lock(a2 + 46);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v13 = a2;
  v7 = *(a2 + 24);
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 presentScheduledInsertSeedValid])
        {
          v12 = [v11 presentScheduledInsertSeed];
          if (!a3 || v12 <= a3)
          {
            [v11 setUpdateSeed:a4];
            [v11 setDidComposite:1];
            [v11 didScheduledPresent];
            [v14 addObject:v11];
            IOSurfaceGetID([objc_msgSend(v11 "cachedTexture")]);
            [v11 presentScheduledInsertSeed];
            [objc_msgSend(v11 "cachedTexture")];
            IOSurfaceGetDetachModeCode();
            kdebug_trace();
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v8);
  }

  if ([v14 count])
  {
    [*(v13 + 24) removeObjectsInArray:v14];
  }

  os_unfair_lock_unlock(v13 + 46);
}

float CA::OGL::curve_horner_coeffecients(CA::OGL *this, CA::Render::Object *a2)
{
  result = 0.0;
  if (this && *(this + 12) == 62 && *(this + 4) >= 4u)
  {
    v3 = *(this + 3);
    v4 = *(this + 4);
    v5 = *(this + 5);
    v6 = *(this + 6);
    return (v6 - v3) + ((v4 - v5) * 3.0);
  }

  return result;
}

CA::Render::GroupAnimation *CA::Render::GroupAnimation::GroupAnimation(CA::Render::GroupAnimation *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::Animation::Animation(this, a2);
  *(v4 + 12) = 21;
  ++dword_1ED4EAA8C;
  *v4 = &unk_1EF202F80;
  *(this + 12) = CA::Render::Decoder::decode_array_object(a2, 6, CA::Render::animation_types, 0);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-animation.cpp", 2733);
  return this;
}

uint64_t CA::Render::GroupAnimation::validate(CA::Render::GroupAnimation *this, CA::Render::Layer *a2)
{
  v2 = *(this + 12);
  if (!v2 || !*(v2 + 16))
  {
    return 1;
  }

  v4 = 0;
  do
  {
    result = (*(**(v2 + 24 + 8 * v4) + 136))(*(v2 + 24 + 8 * v4), a2);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
  }

  while (v4 < *(v2 + 16));
  return result;
}

float32_t CA::OGL::pattern_texcoords(float64x2_t *a1, float *a2, float32x4_t *a3, float64x2_t a4, float64x2_t a5, float64x2_t a6)
{
  v6.f64[0] = a1[1].f64[0];
  v6.f64[1] = a1[2].f64[1];
  _Q3 = vmulq_f64(a1[6], v6);
  _Q0 = vsubq_f64(a4, vaddq_f64(a1[3], a6));
  _Q1 = vdivq_f64(vaddq_f64(_Q0, a5), _Q3);
  *&_Q0.f64[0] = vcvt_f32_f64(vdivq_f64(_Q0, _Q3));
  v10 = vcvt_hight_f32_f64(*&_Q0.f64[0], _Q1);
  *&_Q1.f64[0] = vcvt_f32_f64(_Q1);
  *a3 = v10;
  v10.f32[0] = *a2 + ((a2[2] - *a2) * *_Q0.f64);
  a3->i32[0] = v10.i32[0];
  _S4 = a2[3] - a2[1];
  __asm { FMLA            S3, S4, V0.S[1] }

  a3->i32[1] = LODWORD(_Q3.f64[0]);
  *_Q0.f64 = *a2 + ((a2[2] - *a2) * *_Q1.f64);
  a3->i32[2] = LODWORD(_Q0.f64[0]);
  _S5 = a2[3] - a2[1];
  __asm { FMLA            S4, S5, V1.S[1] }

  *_Q1.f64 = floorf(v10.f32[0]);
  v18 = floorf(*_Q3.f64);
  a3->f32[0] = v10.f32[0] - *_Q1.f64;
  a3->f32[1] = *_Q3.f64 - v18;
  result = *_Q0.f64 - *_Q1.f64;
  a3->f32[2] = result;
  a3->f32[3] = _S4 - v18;
  return result;
}

uint64_t present_on_finish_enabled(_CAImageQueue *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = atomic_load((*(a1 + 3) + 8));
  }

  else
  {
    v1 = 0;
  }

  if (wants_compositing_dependencies(void)::once != -1)
  {
    dispatch_once(&wants_compositing_dependencies(void)::once, &__block_literal_global_520);
  }

  v2 = 1;
  if ((wants_compositing_dependencies(void)::wants_compositing_dependencies & 1) == 0 && (v1 & 0x802000000000000) == 0)
  {
    v2 = byte_1ED4E984D;
  }

  if (byte_1ED4E984E == 1)
  {
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v4 = x_log_get_api::log;
    v5 = os_signpost_enabled(x_log_get_api::log);
    if ((v1 >= 0) | v2 & 1)
    {
      if (!v5)
      {
        return (v1 < 0) & (v2 ^ 1u);
      }

      v6 = v1 >> 63;
      v7 = v2 & 1;
      if (wants_compositing_dependencies(void)::once != -1)
      {
        dispatch_once(&wants_compositing_dependencies(void)::once, &__block_literal_global_520);
        LODWORD(v6) = v1 >> 63;
        v7 = v2 & 1;
      }

      v11[0] = 67241728;
      v11[1] = v6;
      v12 = 1026;
      v13 = v7;
      v14 = 1026;
      v15 = wants_compositing_dependencies(void)::wants_compositing_dependencies;
      v16 = 1026;
      v17 = (v1 & 0x800000000000000) != 0;
      v18 = 1026;
      v19 = (v1 >> 49) & 1;
      v20 = 1026;
      v21 = 0;
      v22 = 1026;
      v23 = byte_1ED4E984D;
      v8 = "Disabled requested=%{public,name=requested}d disabled=%{public,name=disabled}d wants_compositing_dependencies=%{public,name=wants_compositing_dependencies}d detached=%{public,name=detached}d game_mode=%{public,name=game_mode}d vsync_disabled=%{public,name=vsync_disabled}d CADebugDisablePresentOnFinish=%{public,name=CADebugDisablePresentOnFinish}d";
      v9 = v4;
      v10 = 44;
    }

    else
    {
      if (!v5)
      {
        return (v1 < 0) & (v2 ^ 1u);
      }

      LOWORD(v11[0]) = 0;
      v8 = "Enabled";
      v9 = v4;
      v10 = 2;
    }

    _os_signpost_emit_with_name_impl(&dword_183AA6000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PresentOnFinish", v8, v11, v10);
  }

  return (v1 < 0) & (v2 ^ 1u);
}

double get_line_bounds(const __CTLine *a1, double *a2, double *a3, double *a4)
{
  TypographicBounds = CTLineGetTypographicBounds(a1, a2, a3, a4);
  if (dyld_program_sdk_at_least())
  {
    CTLineGetDefaultBounds();
    if (a2)
    {
      v8 = *a2;
      if (*a2 <= 0.0)
      {
        v8 = 0.0;
      }

      *a2 = v8;
    }

    if (a3)
    {
      v9 = *a3;
      if (*a3 <= 0.0)
      {
        v9 = 0.0;
      }

      *a3 = v9;
    }

    if (a4)
    {
      v10 = *a4;
      if (*a4 <= 0.0)
      {
        v10 = 0.0;
      }

      *a4 = v10;
    }
  }

  return TypographicBounds;
}

void *CA::OGL::MetalContext::create_vertex_shader(void **this, const CA::OGL::MetalContext::VertexShader::Spec *a2, int a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v47 = CA::OGL::MetalContext::VertexShader::Spec::encode_segment(a2);
  v6 = [CA::OGL::MetalContext::vertex_shader_type_info[3 * (*(a2 + 1) & 0x1F) + 1] stringByAppendingString:@"_lph"];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
  }

  else
  {
    v7 = off_1E6DF52F8[(*(a2 + 1) >> 7) & 1];
    v8 = objc_opt_new();
    buf[0] = (*(a2 + 1) & 0x80) != 0;
    [@"fc_generic" UTF8String];
    [v8 setConstantValue:buf type:53 withName:@"fc_generic"];
    buf[0] = (*(a2 + 2) >> 5) & 3;
    [@"fc_vertex_layout" UTF8String];
    [v8 setConstantValue:buf type:49 withName:@"fc_vertex_layout"];
    v9 = *(a2 + 1);
    if ((v9 & 0x80) != 0)
    {
      buf[0] = (v9 & 0x400) != 0;
      [@"fc_base_color" UTF8String];
      [v8 setConstantValue:buf type:53 withName:@"fc_base_color"];
    }

    else
    {
      buf[0] = (v9 & 0x200) != 0;
      [@"fc_perspective" UTF8String];
      [v8 setConstantValue:buf type:53 withName:@"fc_perspective"];
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = v11;
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fc_texcoord_count%d", v10];
        buf[0] = *(a2 + v10) & 3;
        [v13 UTF8String];
        [v8 setConstantValue:buf type:49 withName:v13];
        v11 = 0;
        v10 = 1;
      }

      while ((v12 & 1) != 0);
    }
  }

  for (i = 1; ; i = 0)
  {
    v48 = 0;
    shader_function = CA::OGL::MetalContext::load_shader_function(this, this[493], v7, v47, v8, a3, &v48);
    if (shader_function)
    {
      break;
    }

    if (v8)
    {
      if ((i & 1) == 0)
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v37 = x_log_get_ogl_metal(void)::log;
        if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
        {
          v38 = [(__CFString *)v7 UTF8String];
          v39 = [v47 UTF8String];
          v40 = [objc_msgSend(v48 "localizedDescription")];
          *buf = 136315650;
          v50 = v38;
          v51 = 2080;
          v52 = v39;
          v53 = 2080;
          v54 = v40;
          _os_log_error_impl(&dword_183AA6000, v37, OS_LOG_TYPE_ERROR, "Metal failed to specialize vertex function\nfunction=%s spec=%s\n%s", buf, 0x20u);
        }

LABEL_47:
        bzero(buf, 0x7FFuLL);
        v45 = [(__CFString *)v7 UTF8String];
        v46 = [v47 UTF8String];
        snprintf(buf, 0x800uLL, "function=%s spec=%s\n%s", v45, v46, [objc_msgSend(v48 "localizedDescription")]);
        v55 = 0;
        strlen(buf);
        abort_with_payload();
        __break(1u);
        goto LABEL_48;
      }

      if (dyld_shared_cache_some_image_overridden())
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v16 = x_log_get_ogl_metal(void)::log;
        if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
        {
          v17 = [(__CFString *)v7 UTF8String];
          v18 = [v47 UTF8String];
          v19 = [objc_msgSend(v48 "localizedDescription")];
          *buf = 136315650;
          v50 = v17;
          v51 = 2080;
          v52 = v18;
          v53 = 2080;
          v54 = v19;
          v20 = v16;
          v21 = "Metal failed to specialize vertex function\nfunction=%s spec=%s\n%s";
LABEL_23:
          _os_log_error_impl(&dword_183AA6000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0x20u);
          continue;
        }
      }

      else
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v26 = x_log_get_ogl_metal(void)::log;
        if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_FAULT))
        {
          v27 = [(__CFString *)v7 UTF8String];
          v28 = [v47 UTF8String];
          v29 = [objc_msgSend(v48 "localizedDescription")];
          *buf = 136315650;
          v50 = v27;
          v51 = 2080;
          v52 = v28;
          v53 = 2080;
          v54 = v29;
          v30 = v26;
          v31 = "Metal failed to specialize vertex function\nfunction=%s spec=%s\n%s";
LABEL_33:
          _os_log_fault_impl(&dword_183AA6000, v30, OS_LOG_TYPE_FAULT, v31, buf, 0x20u);
          continue;
        }
      }
    }

    else
    {
      if ((i & 1) == 0)
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v41 = x_log_get_ogl_metal(void)::log;
        if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
        {
          v42 = [(__CFString *)v7 UTF8String];
          v43 = [v47 UTF8String];
          v44 = [objc_msgSend(v48 "localizedDescription")];
          *buf = 136315650;
          v50 = v42;
          v51 = 2080;
          v52 = v43;
          v53 = 2080;
          v54 = v44;
          _os_log_error_impl(&dword_183AA6000, v41, OS_LOG_TYPE_ERROR, "Metal failed to load vertex function\nfunction=%s spec=%s\n%s", buf, 0x20u);
        }

        goto LABEL_47;
      }

      if (dyld_shared_cache_some_image_overridden())
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v22 = x_log_get_ogl_metal(void)::log;
        if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
        {
          v23 = [(__CFString *)v7 UTF8String];
          v24 = [v47 UTF8String];
          v25 = [objc_msgSend(v48 "localizedDescription")];
          *buf = 136315650;
          v50 = v23;
          v51 = 2080;
          v52 = v24;
          v53 = 2080;
          v54 = v25;
          v20 = v22;
          v21 = "Metal failed to load vertex function\nfunction=%s spec=%s\n%s";
          goto LABEL_23;
        }
      }

      else
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v32 = x_log_get_ogl_metal(void)::log;
        if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_FAULT))
        {
          v33 = [(__CFString *)v7 UTF8String];
          v34 = [v47 UTF8String];
          v35 = [objc_msgSend(v48 "localizedDescription")];
          *buf = 136315650;
          v50 = v33;
          v51 = 2080;
          v52 = v34;
          v53 = 2080;
          v54 = v35;
          v30 = v32;
          v31 = "Metal failed to load vertex function\nfunction=%s spec=%s\n%s";
          goto LABEL_33;
        }
      }
    }
  }

  [shader_function setLabel:{objc_msgSend(@"com.apple.coreanimation.vert.", "stringByAppendingString:", v47)}];

  if (x_malloc_get_zone::once == -1)
  {
    goto LABEL_35;
  }

LABEL_48:
  dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
LABEL_35:
  result = malloc_type_zone_malloc(malloc_zone, 0x10uLL, 0x165299FDuLL);
  if (result)
  {
    *result = shader_function;
    result[1] = 0;
  }

  return result;
}

uint64_t CA::OGL::MetalContext::VertexShader::Spec::encode_segment(CA::OGL::MetalContext::VertexShader::Spec *this)
{
  *&v12[7] = *MEMORY[0x1E69E9840];
  *&v12[3] = 0;
  *v12 = 0;
  v11 = 86;
  if ((*(this + 1) & 0x1Fu) > 0x10)
  {
    snprintf(v12, 3uLL, "%02d", *(this + 1) & 0x1F);
  }

  else
  {
    v12[0] = *CA::OGL::MetalContext::VertexShaderType_codes[*(this + 1) & 0x1F];
  }

  v2 = *this & 3;
  v3 = *(this + 1) & 3;
  if (v2 | v3)
  {
    LOBYTE(v12[1]) = 85;
    HIBYTE(v12[1]) = *CA::OGL::MetalContext::int_codes[v2];
    LOBYTE(v12[2]) = *CA::OGL::MetalContext::int_codes[v3];
    v4 = &v12[2] + 1;
  }

  else
  {
    v4 = &v12[1];
  }

  v5 = *(this + 1);
  if ((v5 & 0x60) != 0)
  {
    *v4 = 76;
    v6 = v4 + 1;
    v7 = (v5 >> 5) & 3;
    if (v7 == 3)
    {
      snprintf(v6, 3uLL, "%02d", 3);
    }

    else
    {
      *v6 = *CA::OGL::MetalContext::VertexLayout_codes[v7];
    }

    v4 += 3;
  }

  *v4 = 0;
  v8 = v4 + 1;
  v9 = *(this + 1);
  if ((v9 & 0x80) != 0)
  {
    *v4 = 26456;
    v8 = v4 + 2;
    v9 = *(this + 1);
    if ((v9 & 0x100) == 0)
    {
LABEL_14:
      if ((v9 & 0x200) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }
  }

  else if ((*(this + 1) & 0x100) == 0)
  {
    goto LABEL_14;
  }

  *v4 = 88;
  *v8++ = 104;
  v9 = *(this + 1);
  if ((v9 & 0x200) == 0)
  {
LABEL_15:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_22:
  *v4 = 88;
  *v8++ = 118;
  if ((*(this + 1) & 0x400) != 0)
  {
LABEL_16:
    *v4 = 88;
    *v8++ = 98;
  }

LABEL_17:
  if (!*v4)
  {
    v8 = v4;
  }

  *v8 = 0;
  return [MEMORY[0x1E696AEC0] stringWithUTF8String:&v11];
}

void *CA::Render::anonymous namespace::create_image_by_rendering(CGImage *a1, CGColorSpace *Extended, __int16 a3, double a4)
{
  v56 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x200) == 0)
  {
    v5 = a3;
    v7 = a1;
    Width = CGImageGetWidth(a1);
    Height = CGImageGetHeight(v7);
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    *v40 = 0u;
    v38 = 0;
    v39 = 0;
    kdebug_trace();
    {
    }

    IsMask = CGImageIsMask(v7);
    v12 = IsMask;
    v13 = 0;
    v14 = 9;
    if (Extended && !IsMask)
    {
      v15 = (CGImageHasAlpha() & 1) != 0 || CGImageGetMask() || CGImageGetMaskingColors() != 0;
      BitsPerComponent = CGImageGetBitsPerComponent(v7);
      if (CGColorSpaceGetModel(Extended))
      {
        if (CGColorSpaceGetModel(Extended) == kCGColorSpaceModelCMYK)
        {
          if (v15)
          {
            Extended = CAGetColorSpace(36);
            v13 = 0;
            v14 = 1;
          }

          else
          {
            v13 = 0;
            v14 = 29;
          }
        }

        else if (BitsPerComponent < 9)
        {
          v13 = 0;
          if (v15)
          {
            v14 = 1;
          }

          else
          {
            v14 = 3;
          }
        }

        else if ((CGImageGetBitmapInfo(v7) & 0x100) != 0)
        {
          Extended = CAColorSpaceCreateExtended(Extended);
          if (v15)
          {
            v14 = 13;
          }

          else
          {
            v14 = 17;
          }

          v13 = 1;
        }

        else
        {
          v13 = 0;
          if (v15)
          {
            v14 = 21;
          }

          else
          {
            v14 = 22;
          }
        }
      }

      else
      {
        v18 = BitsPerComponent > 8 || v15;
        if (v18 == 1)
        {
          if (BitsPerComponent < 9)
          {
            Extended = CAGetColorSpace(3);
            v13 = 0;
            v14 = 18;
          }

          else
          {
            Extended = CAGetColorSpace(36);
            v13 = 0;
            v14 = 21;
          }
        }

        else
        {
          v13 = 0;
          v14 = 10;
        }
      }
    }

    v37 = v13;
    if ((v5 & 0x40) != 0)
    {
      Mask = CGImageGetMask();
      if (Mask)
      {
        v20 = Mask;
        Width = CGImageGetWidth(Mask);
        Height = CGImageGetHeight(v20);
      }
    }

    LODWORD(Width) = vcvtpd_u64_f64(Width * a4);
    v21 = vcvtpd_u64_f64(Height * a4);
    if (v22 && (v23 = v22, (v24 = CA::Render::aligned_malloc(v39, &v38, 0)) != 0))
    {
      v25 = v24;
      v26 = CAGetCachedCGBitmapContext_(v24, Width, v21, v14, v40[0], Extended);
      if (v26)
      {
        v28 = *(v26 + 2);
        if (v28)
        {
          CGContextSetCompositeOperation();
          image = CGImageCreateCopy(v7);
          if (image)
          {
            CGImageSetCachingFlags();
            v7 = image;
          }

          if (v14 == 9 && !v12)
          {
            CGContextSetRGBFillColor(v28, 1.0, 1.0, 1.0, 1.0);
            v58.origin.x = 0.0;
            v58.origin.y = 0.0;
            v58.size.width = Width;
            v58.size.height = v21;
            CGContextClipToMask(v28, v58, v7);
            v59.origin.x = 0.0;
            v59.origin.y = 0.0;
            v59.size.width = Width;
            v59.size.height = v21;
            CGContextFillRect(v28, v59);
LABEL_57:
            CGImageRelease(image);
            CAReleaseCachedCGContext(v28);
            if (v23 != 1)
            {
            }

            v31 = v38;
            MEMORY[0x1865EC180](*MEMORY[0x1E69E9A60], v25, v38, 1, 1);
            if ((v5 & 2) != 0)
            {
              v32 = 9;
            }

            else
            {
              v32 = 10;
            }

            if (v14 == 10)
            {
              v33 = v32;
            }

            else
            {
              v33 = v14;
            }

            v17 = CA::Render::Image::new_image(v33, Width, v21, v23, Extended, v25, v40, CA::Render::aligned_free, v31, image);
            if (v37)
            {
              CGColorSpaceRelease(Extended);
            }

            if (v17)
            {
              *(v17 + 3) |= 0x1000000u;
            }

            else
            {
              CA::Render::aligned_free(v25, v31, v34);
            }

            goto LABEL_70;
          }

          if (a4 == 1.0 && CGImageGetBitsPerPixel(v7) != 1)
          {
            v29 = 0;
            if ((v5 & 0x80) == 0)
            {
              goto LABEL_49;
            }
          }

          else
          {
            CGContextGetInterpolationQualityRange();
            CGContextSetInterpolationQualityRange();
            v29 = 1;
            if ((v5 & 0x80) == 0)
            {
LABEL_49:
              v57.origin.x = 0.0;
              v57.origin.y = 0.0;
              v57.size.width = Width;
              v57.size.height = v21;
              CGContextDrawImage(v28, v57, v7);
              goto LABEL_55;
            }
          }

          CGContextDrawImageWithOptions();
LABEL_55:
          if (v29)
          {
            CGContextSetInterpolationQualityRange();
          }

          goto LABEL_57;
        }
      }

      CA::Render::aligned_free(v25, v38, v27);
      v17 = 0;
    }

    else
    {
      v17 = 0;
    }

LABEL_70:
    kdebug_trace();
    return v17;
  }

  return 0;
}

unint64_t CA::Display::DisplayTimingsControl::server_presentation_latency(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 3);
  v2 = *&this[6]._os_unfair_lock_opaque;
  if (v2)
  {
    v3 = atomic_load((v2 + 8));
  }

  else if ((this[60]._os_unfair_lock_opaque & 0x200) != 0)
  {
    if (CAPrefers60HzAPT(void)::once != -1)
    {
      dispatch_once(&CAPrefers60HzAPT(void)::once, &__block_literal_global_3);
    }

    v3 = CAPrefers60HzAPT(void)::enabled;
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(this + 3);
  return v3;
}

CFDictionaryRef ___ZN2CA6Render12_GLOBAL__N_125create_image_by_renderingEP7CGImageP12CGColorSpacejdNS0_13ImageCopyTypeE_block_invoke()
{
  result = CFDictionaryCreate(0, MEMORY[0x1E696D3A8], MEMORY[0x1E695E4C0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  return result;
}

void *CAML::ObjCContext::create_builtin_types(CAML::ObjCContext *this)
{
  if (CAML::ObjCContext::_builtin_types)
  {
    __assert_rtn("create_builtin_types", "CAMLObjCContext.mm", 36, "!_builtin_types");
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  CAML::ObjCContext::_builtin_types = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xC0uLL, 0x2004093837F09uLL);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v1 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
  if (v1)
  {
    v2 = objc_opt_class();
    v1[1] = "null";
    v1[2] = 0;
    v1[3] = v2;
    *v1 = &unk_1EF1F35C8;
  }

  *CAML::ObjCContext::_builtin_types = v1;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
  if (v3)
  {
    v4 = objc_opt_class();
    v3[1] = "BOOL";
    v3[2] = 0;
    v3[3] = v4;
    *v3 = &unk_1EF1F3618;
  }

  *(CAML::ObjCContext::_builtin_types + 8) = v3;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v5 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
  if (v5)
  {
    v6 = objc_opt_class();
    v5[1] = "integer";
    v5[2] = 0;
    v5[3] = v6;
    *v5 = &unk_1EF1F3668;
  }

  *(CAML::ObjCContext::_builtin_types + 16) = v5;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v7 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
  if (v7)
  {
    v8 = objc_opt_class();
    v7[1] = "real";
    v7[2] = 0;
    v7[3] = v8;
    *v7 = &unk_1EF1F36B8;
  }

  *(CAML::ObjCContext::_builtin_types + 24) = v7;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v9 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
  if (v9)
  {
    v10 = objc_opt_class();
    v9[1] = "string";
    v9[2] = 0;
    v9[3] = v10;
    *v9 = &unk_1EF1F37F8;
  }

  *(CAML::ObjCContext::_builtin_types + 32) = v9;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v11 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
  if (v11)
  {
    v11[1] = "script";
    v11[2] = 0;
    v11[3] = 0;
    *v11 = &unk_1EF1F3578;
  }

  *(CAML::ObjCContext::_builtin_types + 40) = v11;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v12 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
  if (v12)
  {
    v13 = objc_opt_class();
    v12[1] = "NSArray";
    v12[2] = 0;
    v12[3] = v13;
    *v12 = &unk_1EF1F3708;
  }

  *(CAML::ObjCContext::_builtin_types + 48) = v12;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v14 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
  if (v14)
  {
    v15 = objc_opt_class();
    v14[1] = "NSSet";
    v14[2] = 0;
    v14[3] = v15;
    *v14 = &unk_1EF1F3758;
  }

  *(CAML::ObjCContext::_builtin_types + 56) = v14;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v16 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
  if (v16)
  {
    v17 = objc_opt_class();
    v16[1] = "NSDictionary";
    v16[2] = 0;
    v16[3] = v17;
    *v16 = &unk_1EF1F37A8;
  }

  *(CAML::ObjCContext::_builtin_types + 64) = v16;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v18 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
  if (v18)
  {
    v19 = objc_opt_class();
    v18[1] = "NSURL";
    v18[2] = 0;
    v18[3] = v19;
    *v18 = &unk_1EF1F3848;
  }

  *(CAML::ObjCContext::_builtin_types + 72) = v18;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v20 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
  if (v20)
  {
    v21 = objc_opt_class();
    v20[1] = "NSData";
    v20[2] = 0;
    v20[3] = v21;
    *v20 = &unk_1EF1F3898;
  }

  *(CAML::ObjCContext::_builtin_types + 80) = v20;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v22 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
  if (v22)
  {
    v23 = objc_opt_class();
    v22[1] = "CGPoint";
    v22[2] = 0;
    v22[3] = v23;
    *v22 = &unk_1EF1F38E8;
  }

  *(CAML::ObjCContext::_builtin_types + 88) = v22;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v24 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
  if (v24)
  {
    v25 = objc_opt_class();
    v24[1] = "CGSize";
    v24[2] = 0;
    v24[3] = v25;
    *v24 = &unk_1EF1F3938;
  }

  *(CAML::ObjCContext::_builtin_types + 96) = v24;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v26 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
  if (v26)
  {
    v27 = objc_opt_class();
    v26[1] = "CGRect";
    v26[2] = 0;
    v26[3] = v27;
    *v26 = &unk_1EF1F3988;
  }

  *(CAML::ObjCContext::_builtin_types + 104) = v26;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v28 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
  if (v28)
  {
    v29 = objc_opt_class();
    v28[1] = "CGAffineTransform";
    v28[2] = 0;
    v28[3] = v29;
    *v28 = &unk_1EF1F39D8;
  }

  *(CAML::ObjCContext::_builtin_types + 112) = v28;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v30 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
  if (v30)
  {
    v30[1] = "CGColor";
    v30[2] = 0;
    v30[3] = 0;
    *v30 = &unk_1EF1F3B68;
  }

  *(CAML::ObjCContext::_builtin_types + 120) = v30;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v31 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
  if (v31)
  {
    v31[1] = "CGFont";
    v31[2] = 0;
    v31[3] = 0;
    *v31 = &unk_1EF1F3CA8;
  }

  *(CAML::ObjCContext::_builtin_types + 128) = v31;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v32 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
  if (v32)
  {
    v32[1] = "CGImage";
    v32[2] = 0;
    v32[3] = 0;
    *v32 = &unk_1EF1F3BB8;
  }

  *(CAML::ObjCContext::_builtin_types + 136) = v32;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v33 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
  if (v33)
  {
    v33[1] = "CGPath";
    v33[2] = 0;
    v33[3] = 0;
    *v33 = &unk_1EF1F3C08;
  }

  *(CAML::ObjCContext::_builtin_types + 144) = v33;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v34 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
  if (v34)
  {
    v34[1] = "CGPDFDocument";
    v34[2] = 0;
    v34[3] = 0;
    *v34 = &unk_1EF1F3C58;
  }

  *(CAML::ObjCContext::_builtin_types + 152) = v34;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v35 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
  if (v35)
  {
    v36 = objc_opt_class();
    v35[1] = "CATransform3D";
    v35[2] = 0;
    v35[3] = v36;
    *v35 = &unk_1EF1F3A28;
  }

  *(CAML::ObjCContext::_builtin_types + 160) = v35;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v37 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
  if (v37)
  {
    v38 = objc_opt_class();
    v37[1] = "CAPoint3D";
    v37[2] = 0;
    v37[3] = v38;
    *v37 = &unk_1EF1F3A78;
  }

  *(CAML::ObjCContext::_builtin_types + 168) = v37;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v39 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
  if (v39)
  {
    v40 = objc_opt_class();
    v39[1] = "CACornerRadii";
    v39[2] = 0;
    v39[3] = v40;
    *v39 = &unk_1EF1F3AC8;
  }

  *(CAML::ObjCContext::_builtin_types + 176) = v39;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
  v42 = result;
  if (result)
  {
    result = objc_opt_class();
    v42[1] = "CAColorMatrix";
    v42[2] = 0;
    v42[3] = result;
    *v42 = &unk_1EF1F3B18;
  }

  *(CAML::ObjCContext::_builtin_types + 184) = v42;
  return result;
}

void sub_183BD8568(_Unwind_Exception *a1)
{
  if (*(v2 + 760) != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  malloc_zone_free(*(v3 + 2880), v1);
  _Unwind_Resume(a1);
}

uint64_t x_string_hash(_BYTE *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  result = 0;
  v4 = a1 + 1;
  do
  {
    result = 33 * result + v1;
    v5 = *v4++;
    v1 = v5;
  }

  while (v5);
  return result;
}

uint64_t CA::Render::Layer::set_mask(CA::Render::Layer *this, atomic_uint *a2)
{
  result = *(this + 15);
  if (result == a2)
  {
    return result;
  }

  if ((*(this + 13) & 2) != 0)
  {
    *(this + 15) = a2;
    return result;
  }

  if (result && atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
  {
    result = (*(*result + 16))(result);
  }

  if (!a2)
  {
LABEL_15:
    *(this + 15) = 0;
    return result;
  }

  if (!atomic_fetch_add(a2 + 2, 1u))
  {
    atomic_fetch_add(a2 + 2, 0xFFFFFFFF);
    goto LABEL_15;
  }

  *(this + 15) = a2;
  a2[3] |= 0x1000u;
  v5 = *(this + 15);
  v6 = *(v5 + 3);
  if ((v6 & 0x1000) != 0 || (result = CA::Render::Layer::is_containerable(v5, a2), !result))
  {
    v7 = v6 & 0xFFFFF7FF;
  }

  else
  {
    v7 = v6 | 0x800;
  }

  *(v5 + 3) = v7;
  return result;
}

void CAML::Context::set_base_url(CAML::Context *this, CFTypeRef cf)
{
  v4 = *(this + 2);
  if (v4)
  {
    CFRelease(v4);
    *(this + 2) = 0;
  }

  if (cf)
  {
    *(this + 2) = CFRetain(cf);
  }
}

uint64_t CA::Render::numeric_value_count(CA::Render *this, const void *a2)
{
  if (CA::Render::initialize_types(void)::once[0] != -1)
  {
    dispatch_once(CA::Render::initialize_types(void)::once, &__block_literal_global_9_6242);
  }

  v3 = CFGetTypeID(this);
  if (v3 == CA::Render::color_type && !CGColorGetPattern(this))
  {
    return 5;
  }

  if (v3 == CA::Render::number_type || v3 == CA::Render::BOOL_type)
  {
    return 1;
  }

  if (v3 != CA::Render::array_type)
  {
    return 0;
  }

  Count = CFArrayGetCount(this);
  if (!Count)
  {
    return 0;
  }

  v7 = Count;
  v8 = 0;
  v5 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(this, v8);
    v5 += CA::Render::numeric_value_count(ValueAtIndex, v10);
    ++v8;
  }

  while (v7 != v8);
  return v5;
}

void CA::Render::Subtexture::~Subtexture(CA::Render::Subtexture *this, const CA::Render::Object *a2)
{
  *this = &unk_1EF203398;
  v3 = *(this + 2);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  --dword_1ED4EAB18;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v4 = malloc_zone;

  malloc_zone_free(v4, this);
}

{
  *this = &unk_1EF203398;
  v3 = *(this + 2);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  --dword_1ED4EAB18;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

double get_transform@<D0>(uint64_t a1@<X8>)
{
  result = *(CGContextDelegateGetInfo() + 8);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0x3FF0000000000000;
  *(a1 + 24) = xmmword_183E20F00;
  *(a1 + 40) = result;
  return result;
}

uint64_t CA::Render::copy_numeric_value(CA::Render *this, CGColorSpace *a2, CGColorSpace *a3, double *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (CA::Render::initialize_types(void)::once[0] != -1)
  {
    dispatch_once(CA::Render::initialize_types(void)::once, &__block_literal_global_9_6242);
  }

  v7 = CFGetTypeID(this);
  if (v7 == CA::Render::color_type)
  {
    if (!CGColorGetPattern(this))
    {
      v18 = 0u;
      v19 = 0u;
      CA_CGColorGetRGBComponents(this, a2, v18.f64);
      CGColorGetContentHeadroom();
      v10 = v19;
      *a3 = vmulq_n_f64(v18, *(&v19 + 1));
      *(a3 + 2) = *&v10 * *(&v10 + 1);
      *(a3 + 3) = *(&v10 + 1);
      *(a3 + 4) = v11;
      return 5;
    }

    return 0;
  }

  if (v7 == CA::Render::number_type)
  {
    if (this)
    {
      v18.f64[0] = 0.0;
      CFNumberGetValue(this, kCFNumberDoubleType, &v18);
      v9 = v18.f64[0];
    }

    else
    {
      v9 = 0.0;
    }

LABEL_20:
    *a3 = v9;
    return 1;
  }

  if (v7 == CA::Render::BOOL_type)
  {
    v9 = 0.0;
    if (*MEMORY[0x1E695E4C0] != this)
    {
      v9 = 1.0;
    }

    goto LABEL_20;
  }

  if (v7 != CA::Render::array_type)
  {
    return 0;
  }

  Count = CFArrayGetCount(this);
  if (!Count)
  {
    return 0;
  }

  v13 = Count;
  v14 = 0;
  v8 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(this, v14);
    v8 += CA::Render::copy_numeric_value(ValueAtIndex, a2, (a3 + 8 * v8), v16);
    ++v14;
  }

  while (v13 != v14);
  return v8;
}

void CAML::Context::set_current_url(CAML::Context *this, CFTypeRef cf)
{
  v4 = *(this + 3);
  if (v4)
  {
    CFRelease(v4);
    *(this + 3) = 0;
  }

  if (cf)
  {
    *(this + 3) = CFRetain(cf);
  }
}

uint64_t begin_layer(uint64_t a1)
{
  CGContextDelegateGetInfo();
  CGContextDelegateBeginLayer();
  return a1;
}

uint64_t end_layer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CGContextDelegateGetInfo();
  CGContextDelegateEndLayer();
  Info = CGContextDelegateGetInfo();
  CGGStateGetStyle();
  Color = CGStyleGetColor();
  CompositeOperation = CGGStateGetCompositeOperation();
  CACGContextEvaluator::update_with_color(Info, Color, CompositeOperation, a3);
  *(Info + 78) |= CGGStateGetStyle() != 0;
  *(Info + 77) = 1;
  return a1;
}

_DWORD *CAML::Context::create_sax_vtable(CAML::Context *this)
{
  if (CAML::Context::_sax_vtable)
  {
    __assert_rtn("create_sax_vtable", "CAMLContext.cpp", 731, "!_sax_vtable");
  }

  result = malloc_type_calloc(1uLL, 0x100uLL, 0x1080040AADF51B8uLL);
  CAML::Context::_sax_vtable = result;
  result[54] = -554844497;
  return result;
}

uint64_t _CASCreateFencePort(int a1, _DWORD *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(&msg_16[4], 0, 44);
  msg_4 = 0;
  reply_port = mig_get_reply_port();
  msg_8 = a1;
  msg_12 = reply_port;
  msg = 5395;
  *msg_16 = 0x9D1000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v7 = msg_12;
  }

  else
  {
    v7 = reply_port;
  }

  v8 = mach_msg(&msg, 3, 0x18u, 0x40u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg_12);
  }

  else
  {
    if (!v8)
    {
      if (*&msg_16[4] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg_16[4] == 40308)
      {
        if (msg < 0)
        {
          v9 = 4294966996;
          if (*&msg_16[8] == 1 && msg_4 == 56 && !msg_8 && *&msg_16[22] << 16 == 1114112)
          {
            v9 = 0;
            *a2 = *&msg_16[12];
            *a3 = *&msg_16[32];
            return v9;
          }
        }

        else if (msg_4 == 36)
        {
          v9 = 4294966996;
          if (*&msg_16[16])
          {
            if (msg_8)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&msg_16[16];
            }
          }
        }

        else
        {
          v9 = 4294966996;
        }
      }

      else
      {
        v9 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v9;
    }

    mig_dealloc_reply_port(msg_12);
  }

  return v9;
}

_DWORD *_XCreateFencePort(_DWORD *result, uint64_t a2, unint64_t *a3)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
    goto LABEL_7;
  }

  if (result[6] || result[7] <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 28) = 0;
  *(a2 + 32) = 0x11000000000000;
  *(a2 + 48) = 0;
  result = CA::Render::Fence::create_fence_port((a2 + 28), (a2 + 48), a3);
  if ((result & 1) == 0)
  {
    v4 = 5;
    goto LABEL_7;
  }

  *(a2 + 40) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

CFTypeID CA::Layer::prevent_subtextures(CFTypeID this)
{
  if ((*(this + 55) & 0x40) == 0)
  {
    v1 = this;
    this = [*(this + 16) contents];
    if (this)
    {
      v2 = CFGetTypeID(this);
      this = CGImageGetTypeID();
      if (v2 == this)
      {
        v3 = *(v1 + 16);

        return [v3 setContentsChanged];
      }
    }
  }

  return this;
}

void *CAML::Context::push_state(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_malloc(malloc_zone, 0xE8uLL, 0x165299FDuLL);
  result[1] = a1;
  *(result + 4) = a2;
  *(result + 10) = a3;
  result[6] = a4;
  result[7] = a5;
  result[8] = 0;
  result[26] = 0;
  result[27] = 0;
  result[25] = 0;
  *(result + 224) &= ~1u;
  result[3] = *(a1 + 48);
  result[4] = 0;
  *(a1 + 48) = result;
  return result;
}

uint64_t CA::OGL::anonymous namespace::prepare_9_slice(CA::OGL::_anonymous_namespace_ *this, double a2, double a3, double a4, double a5, const float *a6, double *a7, double *a8, float *a9)
{
  *a7 = a2;
  if (a4 > a2 || a5 < a3)
  {
    if (a3 < a4)
    {
      a4 = a3;
    }

    if (a4 < a2)
    {
      a4 = a2;
    }

    if (a3 < a5)
    {
      a5 = a3;
    }

    if (a5 >= a2)
    {
      a2 = a5;
    }

    a7[1] = a4;
    a7[2] = a2;
    a7[3] = a3;
    v10 = *this;
    *a8 = *this;
    *(a8 + 1) = v10 + ((*(this + 2) - v10) * *a6);
    *(a8 + 2) = *this + ((*(this + 2) - *this) * a6[2]);
    *(a8 + 3) = *(this + 2);
    if (a4 > a2)
    {
      v11 = (a2 + a4) * 0.5;
      a7[1] = v11;
      a7[2] = v11;
    }

    return 3;
  }

  else
  {
    a7[1] = a3;
    *a8 = *this;
    *(a8 + 1) = *(this + 2);
    return 1;
  }
}

void CAML::anonymous namespace::sax_start_element(CAML::_anonymous_namespace_ *this, char *__s1, const unsigned __int8 *a3, char *a4, const unsigned __int8 *a5, int a6, const unsigned __int8 **a7, int a8, uint64_t a9, const unsigned __int8 **a10)
{
  v10 = a7;
  v12 = this;
  v73 = *MEMORY[0x1E69E9840];
  v13 = *(this + 6);
  if (a4)
  {
    this = strcmp(a4, "http://www.apple.com/CoreAnimation/1.0");
    if (this)
    {
      CAML::Context::error(v12, "Unknown namespace URI: %s", __s1);
      return;
    }
  }

  v69 = a9;
  if (v10)
  {
    v14 = (2 * v10) | 1;
    v15 = 8 * v14;
    v67 = v13;
    if (v15 > 0x1000)
    {
      v16 = malloc_type_malloc(8 * v14, 0xC2323A3uLL);
      v68 = v16;
    }

    else
    {
      MEMORY[0x1EEE9AC00](this);
      v68 = &v65[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
      bzero(v68, v15);
    }

    v66 = 2 * v10;
    v19 = v10;
    if (v10 >= 1)
    {
      v20 = v10;
      v21 = v68 + 1;
      v22 = v69 + 24;
      do
      {
        v23 = *v22;
        v24 = *(v22 + 8) - *v22;
        if (v24 + 1 > 0x1000)
        {
          v16 = malloc_type_malloc(v24 + 1, 0x89BF74EBuLL);
          v26 = v16;
          if (!v16)
          {
            v27 = "";
            goto LABEL_17;
          }

          v23 = *v22;
        }

        else
        {
          MEMORY[0x1EEE9AC00](v16);
          v26 = &v65[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
          bzero(v26, v25);
        }

        v16 = memcpy(v26, v23, v24);
        v26[v24] = 0;
        v27 = *(v22 - 24);
LABEL_17:
        *(v21 - 1) = v27;
        *v21 = v26;
        v21 += 2;
        v22 += 40;
        --v20;
      }

      while (v20);
    }

    v13 = v67;
    v17 = v68;
    v68[v66] = 0;
    v18 = v15 > 0x1000;
    v10 = v19;
    if (!__s1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
    if (!__s1)
    {
      goto LABEL_23;
    }
  }

  if (*__s1 == 115 && !strcmp(__s1, "script"))
  {
    (*(*v12 + 48))(v12, v17);
    if (!v17)
    {
      return;
    }

    goto LABEL_76;
  }

LABEL_23:
  v28 = *(v13 + 16);
  if (v28 <= 2)
  {
    if (!v28)
    {
LABEL_40:
      goto LABEL_41;
    }

    if (v28 == 1)
    {
      if (strcmp(__s1, "caml"))
      {
        CAML::Context::push_state(v12, 0, 0, 0, 0);
        if (!v17)
        {
          return;
        }

        goto LABEL_76;
      }

      v34 = v12;
      v35 = 5;
      goto LABEL_42;
    }

    if (v28 != 2)
    {
      goto LABEL_75;
    }

    if (*__s1 == 112 && !__s1[1])
    {
      v30 = CAML::memq_(v17, "key", 1);
      if (v30)
      {
        goto LABEL_35;
      }
    }

    v30 = __s1;
LABEL_35:
    v31 = CAInternAtomWithCString(v30);
    if (*(v13 + 64) && (v32 = *(v13 + 48)) != 0)
    {
      v33 = (*(*v32 + 40))(v32, *(v13 + 8));
    }

    else
    {
      v33 = 0;
    }

    v37 = v18;
    v38 = CAML::memq_(v17, "type", 1);
    if (v38)
    {
      v39 = (*(*v12 + 32))(v12, v38);
      if (v39)
      {
        v40 = v39;
        if (!v33 || ((*(*v12 + 40))(v12, v33, v39) & 1) != 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
      }
    }

    v40 = v33;
LABEL_60:
    v42 = CAML::memq_(v17, "object", 1);
    if (v42)
    {
    }

    else if (v40)
    {
      CAML::State::start(v44, v17);
    }

    else
    {
    }

    v18 = v37;
    if (!v17)
    {
      return;
    }

    goto LABEL_76;
  }

  if ((v28 - 3) < 3)
  {
    if (*__s1 == 111 && !__s1[1])
    {
      v41 = CAML::memq_(v17, "type", 1);
      if (v41)
      {
        v29 = (*(*v12 + 32))(v12, v41);
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = (*(*v12 + 32))(v12, __s1, a3);
      if (!v29)
      {
      }
    }

    v45 = *(v13 + 16);
    if (v45 == 4)
    {
    }

    if (v45 == 3)
    {
    }

    else
    {
      v47 = v46;
    }

    v48 = CAML::memq_(v17, "object", 1);
    if (v48)
    {
      if (!v17)
      {
        return;
      }

      goto LABEL_76;
    }

    if (v29)
    {
      v50 = CAML::Context::push_state(v12, 6, 0, v29, v47);
      CAML::State::start(v50, v17);
LABEL_75:
      if (!v17)
      {
        return;
      }

      goto LABEL_76;
    }

    goto LABEL_41;
  }

  if (v28 != 6)
  {
    if (v28 != 7)
    {
      goto LABEL_75;
    }

    goto LABEL_40;
  }

LABEL_41:
  v34 = v12;
  v35 = 0;
  v36 = 0;
LABEL_42:
  CAML::Context::push_state(v34, v35, 0, 0, v36);
  if (!v17)
  {
    return;
  }

LABEL_76:
  if (*(*(v12 + 6) + 16) == 2)
  {
    LODWORD(v68) = v18;
    v51 = v10;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v52 = v17;
    v53 = *v17;
    if (*v17)
    {
      v54 = (v17 + 16);
      do
      {
        if (*v53)
        {
          v55 = CAInternAtomWithCString(v53);
          v56 = *(v12 + 6);
          if (v56[8] && (v57 = v55, (v58 = v56[6]) != 0) && (v59 = (*(*v58 + 40))(v58, v56[1])) != 0)
          {
            v70 = "value";
            v71 = *(v54 - 1);
            v72 = 0;
            CAML::State::start(v60, &v70);
            CAML::Context::pop_state(v12);
            *(v54 - 2) = "";
          }

          else if (strcmp(v53, "final") && strcmp(v53, "mica_expanded"))
          {
          }
        }

        v61 = *v54;
        v54 += 2;
        v53 = v61;
      }

      while (v61);
    }

    v10 = v51;
    v17 = v52;
    v18 = v68;
  }

  if (v10 >= 1)
  {
    v62 = (v17 + 8);
    v63 = (v69 + 32);
    v64 = v10;
    do
    {
      if ((*v63 - *(v63 - 1) - 4096) <= 0xFFFFFFFFFFFFEFFELL)
      {
        free(*v62);
      }

      v62 += 2;
      v63 += 5;
      --v64;
    }

    while (v64);
  }

  if (v18)
  {
    free(v17);
  }
}

BOOL CA::Render::Fence::create_fence_port(CA::Render::Fence *this, unsigned int *a2, unint64_t *a3)
{
  if (this)
  {
    *this = 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  v5 = 0;
  if (this && CA::Render::Server::_thread)
  {
    if (byte_1ED4E987D)
    {
      return 0;
    }

    else
    {
      if (CA::Render::Fence::fence_info_once != -1)
      {
        dispatch_once_f(&CA::Render::Fence::fence_info_once, 0, CA::Render::Fence::fence_info_init);
      }

      os_unfair_lock_lock(&CA::Render::Fence::_lock);
      fence = CA::Render::Fence::_create_fence(v6);
      v5 = fence != 0;
      if (fence)
      {
        *this = fence[4];
        if (a2)
        {
          *a2 = *fence;
        }
      }

      os_unfair_lock_unlock(&CA::Render::Fence::_lock);
    }
  }

  return v5;
}

void CA::OGL::emit_n_part_rect(unint64_t a1, uint64_t a2, int a3, int a4, float64_t *a5, uint64_t a6, __int32 *a7, uint64_t a8, __int32 *a9, uint64_t a10, int a11)
{
  v16 = a1;
  v105 = *MEMORY[0x1E69E9840];
  if (a3 == 3 && a4 == 3)
  {

    CA::OGL::emit_nine_part_rect(a1, a2, a5, a6, a7, a8, a9, a10, a11);
    return;
  }

  if (!(a4 * a3))
  {
    return;
  }

  v17 = a3 + 1;
  v18 = a4 + 1;
  v19 = (a4 + 1) * (a3 + 1);
  if (v19 >= 0x401)
  {

    CA::OGL::emit_n_part_rect_large(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
    return;
  }

  v98 = (a4 + 1);
  v102 = a2;
  v100 = a4;
  v97 = a11;
  v99 = *(a1 + 136);
  v95 = *(a1 + 152);
  v101 = (v18 * (a3 + 1));
  if (v19 <= v95)
  {
    MEMORY[0x1EEE9AC00](a1);
    v94 = v16;
    v28 = &v92 - v27;
    bzero(&v92 - v27, v29);
    v30 = (v28 + 15);
    v16 = v94;
    v93 = v30 & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v31);
    v96 = (&v92 - v32);
    bzero(&v92 - v32, v33);
    v24 = v93;
    v26 = v101;
    v23 = v102;
    v25 = v99;
    v22 = v100;
  }

  else
  {
    v20 = (v18 * (a3 + 1));
    v21 = malloc_type_malloc(80 * v19 + 8 * (a4 * a3), 0x10000403C748740uLL);
    v22 = v100;
    v23 = v102;
    if (!v21)
    {
      return;
    }

    v24 = &v21[3 * v20];
    v96 = &v24[2 * v20];
    v25 = v21;
    *(v16 + 17) = v21;
    *(v16 + 19) = v20;
    v26 = v20;
  }

  v34 = v98;
  if ((v22 & 0x80000000) == 0)
  {
    v35 = 0;
    v36 = &v24->f64[1];
    v37 = &v25[1].i32[3];
    do
    {
      v38 = v37;
      v39 = v36;
      v40 = a5;
      v41 = a7;
      v42 = a9;
      v43 = (a3 + 1);
      if ((a3 & 0x80000000) == 0)
      {
        do
        {
          *(v39 - 1) = *v40;
          *v39 = *(a6 + 8 * v35);
          *(v39 + 1) = xmmword_183E20E60;
          if (a7)
          {
            *(v38 - 3) = *v41;
            *(v38 - 2) = *(a8 + 4 * v35);
          }

          if (a9)
          {
            *(v38 - 1) = *v42;
            *v38 = *(a10 + 4 * v35);
          }

          ++v42;
          ++v41;
          ++v40;
          v39 += 4;
          v38 += 12;
          --v43;
        }

        while (v43);
      }

      ++v35;
      v36 += 4 * v17;
      v37 += 12 * v17;
    }

    while (v35 != v34);
  }

  v44 = v16;
  if (a3 <= 0)
  {
    v46 = v22 - 1;
    v48 = v96;
    v49 = v96;
    v50 = v25;
  }

  else
  {
    v45 = 0;
    v46 = v22 - 1;
    v47 = (v22 - 1) * v17;
    v48 = v96;
    v49 = v96;
    v50 = v25;
    do
    {
      *v49 = v45;
      v51 = v45 + 1;
      *(v49 + 1) = v45 + 1;
      *(v49 + 2) = a3 + v45 + 2;
      *(v49 + 3) = a3 + v45 + 1;
      if (v22 < 2)
      {
        v49 += 8;
      }

      else
      {
        *(v49 + 4) = v47 + v45;
        *(v49 + 5) = v47 + v45 + 1;
        v52 = v17 * v22 + v45;
        *(v49 + 6) = v52 + 1;
        *(v49 + 7) = v52;
        v49 += 16;
      }

      v45 = v51;
    }

    while (a3 != v51);
  }

  if (v22 < 3)
  {
    v59 = v49;
    if (!v26)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v53 = 0;
    v54 = v46 - 1;
    v55 = 2 * a3;
    v56 = 3 * a3;
    do
    {
      *v49 = v17 + v53;
      *(v49 + 1) = v17 + v53 + 1;
      v57 = v55 + v53;
      *(v49 + 2) = v55 + v53 + 3;
      *(v49 + 3) = v55 + v53 + 2;
      if (a3 < 2)
      {
        v49 += 8;
      }

      else
      {
        *(v49 + 4) = v57;
        *(v49 + 5) = v57 + 1;
        *(v49 + 6) = v56 + v53 + 2;
        *(v49 + 7) = v56 + v53 + 1;
        v49 += 16;
      }

      v53 += v17;
      --v54;
    }

    while (v54);
    v58 = 1;
    v59 = v49;
    do
    {
      if (a3 <= 2)
      {
        v60 = v58 + 1;
      }

      else
      {
        v60 = v58 + 1;
        v61 = (v58 + 1) * v17 + 1;
        v62 = v58 * v17 + 2;
        v63 = a3 - 2;
        do
        {
          *v59 = v62 - 1;
          *(v59 + 3) = v61++;
          *(v59 + 1) = v62;
          *(v59 + 2) = v61;
          v59 += 8;
          ++v62;
          --v63;
        }

        while (v63);
      }

      v58 = v60;
    }

    while (v60 != v46);
    if (!v26)
    {
      goto LABEL_54;
    }
  }

  v64 = *(*(v44 + 2) + 8);
  v65 = (v26 + 1) & 0xFFE;
  v66 = vdupq_n_s64(v26 - 1);
  v67 = xmmword_183E20FF0;
  v68 = v50 + 5;
  v69 = vdupq_n_s64(2uLL);
  do
  {
    v70 = vmovn_s64(vcgeq_u64(v66, v67));
    if (v70.i8[0])
    {
      v68[-3].i64[0] = v64;
    }

    if (v70.i8[4])
    {
      v68->i64[0] = v64;
    }

    v67 = vaddq_s64(v67, v69);
    v68 += 6;
    v65 -= 2;
  }

  while (v65);
LABEL_54:
  v71 = *(v23 + 24);
  if (v71)
  {
    v72 = v24;
    v71();
    v24 = v72;
    v26 = v101;
    v23 = v102;
  }

  v73 = v26;
  CA::OGL::transform_vertices(v24, v50, v26, *(v23 + 8));
  v74 = v102;
  v75 = *(v102 + 32);
  if (v75)
  {
    v75(v102, v50, v73);
    v74 = v102;
  }

  v76 = *(v74 + 20);
  if ((v76 & 0xF) == 0 || (*(v74 + 16) & 9) == 0)
  {
    goto LABEL_65;
  }

  if ((v76 & 4) != 0)
  {
    CA::OGL::aa_adjust_vertices(v50, &v50[3 * v17], 48, v17);
    v74 = v102;
    v76 = *(v102 + 20);
    if ((v76 & 8) == 0)
    {
LABEL_62:
      if ((v76 & 1) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_76;
    }
  }

  else if ((v76 & 8) == 0)
  {
    goto LABEL_62;
  }

  CA::OGL::aa_adjust_vertices(&v50[3 * v17 * v100], &v50[3 * v46 * v17], 48, v17);
  v74 = v102;
  v76 = *(v102 + 20);
  if ((v76 & 1) == 0)
  {
LABEL_63:
    if ((v76 & 2) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_76:
  CA::OGL::aa_adjust_vertices(v50, v50 + 3, 48 * v17, v98);
  v74 = v102;
  if ((*(v102 + 20) & 2) != 0)
  {
LABEL_64:
    CA::OGL::aa_adjust_vertices(&v50[3 * a3], &v50[3 * a3 - 3], 48 * v17, v98);
    v74 = v102;
  }

LABEL_65:
  v77 = v74;
  v78 = CA::OGL::Context::need_transparent_source(v44);
  v79 = v59 - v49;
  v80 = v44;
  v81 = v44;
  v82 = v97;
  CA::OGL::emit_mesh_with_center(v81, v77, v48, (v59 - v48) >> 1, v79 >> 1, v101, v97);
  if ((v82 & 0x40000) != 0 || v78)
  {
    v83 = vcvtq_f64_f32(*&v50->u32[2]);
    v104[0] = vcvtq_f64_f32(*v50->f32);
    v104[1] = v83;
    v84 = &v50[3 * a3];
    v85 = vcvtq_f64_f32(v84[1]);
    v104[2] = vcvtq_f64_f32(*v84);
    v104[3] = v85;
    v86 = &v50[3 * v17 * v100 + 3 * a3];
    v87 = vcvtq_f64_f32(v86[1]);
    v104[4] = vcvtq_f64_f32(*v86);
    v104[5] = v87;
    v88 = &v50[3 * v17 * v100];
    v89 = vcvtq_f64_f32(v88[1]);
    v104[6] = vcvtq_f64_f32(*v88);
    v104[7] = v89;
    if ((v82 & 0x40000) != 0)
    {
      v90 = *(*(v80 + 2) + 8);
    }

    else
    {
      v90 = 0;
    }

    v103 = v90;
    CA::OGL::emit_quad_surround(v80, v104, &v103);
  }

  if (v50 != v99)
  {
    v91 = v95;
    *(v80 + 17) = v99;
    *(v80 + 19) = v91;
    free(v50);
  }
}

_DWORD *CA::Render::Fence::_create_fence(CA::Render::Fence *this)
{
  v28 = *MEMORY[0x1E69E9840];
  if (CA::Render::Fence::fence_info_once != -1)
  {
    dispatch_once_f(&CA::Render::Fence::fence_info_once, 0, CA::Render::Fence::fence_info_init);
  }

  if ((CA::Render::Fence::_name_counter + 1) > 1)
  {
    v1 = CA::Render::Fence::_name_counter + 1;
  }

  else
  {
    v1 = 1;
  }

  CA::Render::Fence::_name_counter = v1;
  v2 = v1 | (getpid() << 32);
  name = 0;
  *&options.flags = xmmword_183E31BB0;
  options.reserved[1] = 0;
  v3 = MEMORY[0x1E69E9A60];
  v4 = 0;
  if (!mach_port_construct(*MEMORY[0x1E69E9A60], &options, v2, &name))
  {
    v5 = mach_absolute_time();
    v6 = CATimeWithHostTime(v5) + 10.0;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v7 = malloc_type_zone_malloc(malloc_zone, 0x18uLL, 0x10000402C707793uLL);
    v4 = v7;
    v8 = name;
    v7[4] = name;
    *v7 = v2;
    *(v7 + 1) = v6;
    *(v7 + 20) = 0;
    v9 = *(CA::Render::Fence::fences_by_port + 8);
    if (v9)
    {
      v10 = vcnt_s8(v9);
      v10.i16[0] = vaddlv_u8(v10);
      if (v10.u32[0] > 1uLL)
      {
        v11 = v8;
        if (*&v9 <= v8)
        {
          v11 = v8 % v9.i32[0];
        }
      }

      else
      {
        v11 = (v9.i32[0] - 1) & v8;
      }

      v12 = *(*CA::Render::Fence::fences_by_port + 8 * v11);
      if (v12)
      {
        for (i = *v12; i; i = *i)
        {
          v14 = i[1];
          if (v14 == v8)
          {
            if (*(i + 4) == v8)
            {
              i[3] = v7;
              v15 = *(CA::Render::Fence::fences_by_name + 8);
              if (!*&v15)
              {
                goto LABEL_44;
              }

              v16 = vcnt_s8(v15);
              v16.i16[0] = vaddlv_u8(v16);
              if (v16.u32[0] > 1uLL)
              {
                v17 = v2;
                if (v2 >= *&v15)
                {
                  v17 = v2 % *&v15;
                }
              }

              else
              {
                v17 = (*&v15 - 1) & v2;
              }

              v18 = *(*CA::Render::Fence::fences_by_name + 8 * v17);
              if (!v18 || (v19 = *v18) == 0)
              {
LABEL_44:
                operator new();
              }

              while (1)
              {
                v20 = v19[1];
                if (v20 == v2)
                {
                  if (v19[2] == v2)
                  {
                    v19[3] = v7;
                    previous = 0;
                    v21 = *v3;
                    v22 = name;
                    v23 = CA::Render::Server::notify_port(v7);
                    mach_port_request_notification(v21, v22, 70, 0, v23, 0x15u, &previous);
                    kdebug_trace();
                    ht_fence_start();
                    CA::Render::Server::add_callback(3, CA::Render::Fence::ftimeout_callback, 0, v6);
                    return v4;
                  }
                }

                else
                {
                  if (v16.u32[0] > 1uLL)
                  {
                    if (v20 >= *&v15)
                    {
                      v20 %= *&v15;
                    }
                  }

                  else
                  {
                    v20 &= *&v15 - 1;
                  }

                  if (v20 != v17)
                  {
                    goto LABEL_44;
                  }
                }

                v19 = *v19;
                if (!v19)
                {
                  goto LABEL_44;
                }
              }
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v14 >= *&v9)
              {
                v14 %= *&v9;
              }
            }

            else
            {
              v14 &= *&v9 - 1;
            }

            if (v14 != v11)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

  return v4;
}

char *CAML::State::characters(char *this, const char *__src, int a3)
{
  if ((this[224] & 1) == 0)
  {
    v3 = this;
    if (*(this + 4) >= 6u)
    {
      v4 = a3;
      v5 = __src;
      v6 = *(this + 25);
      if (127 - v6 >= a3)
      {
        v7 = a3;
      }

      else
      {
        v7 = (127 - v6);
      }

      if (v7 >= 1)
      {
        this = memcpy(&this[v6 + 72], __src, v7);
        v8 = v3[25] + v7;
        v3[25] = v8;
        *(v3 + v8 + 72) = 0;
        v5 += v7;
        v4 -= v7;
      }

      if (v4 >= 1)
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        this = malloc_type_zone_malloc(malloc_zone, v4 + 16, 0x1020040EDED9539uLL);
        if (this)
        {
          v9 = v3[26];
          v3[26] = this;
          *this = v9;
          *(this + 1) = v4;
          v10 = this + 16;

          return memcpy(v10, v5, v4);
        }
      }
    }
  }

  return this;
}

uint64_t CAML::ObjCContext::lookup_type(CAML::ObjCContext *this, const char *a2)
{
  v4 = x_hash_table_lookup(*(this + 13), a2, 0);
  if (v4)
  {
    return v4;
  }

  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E490], a2, 0x8000100u);
  v6 = NSClassFromString(&v5->isa);
  if (!v6)
  {
    if ((*(this + 112) & 8) != 0)
    {
      v16 = objc_autoreleasePoolPush();
      v7 = [*(this + 12) CAMLParser:*(this + 10) didFailToFindClassWithName:v5];
      objc_autoreleasePoolPop(v16);
      CFRelease(v5);
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      CFRelease(v5);
    }

    return 0;
  }

  v7 = v6;
  CFRelease(v5);
LABEL_4:
  v8 = strdup(a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v9 = malloc_type_zone_malloc(malloc_zone, 0x28uLL, 0x165299FDuLL);
  v4 = v9;
  if (v9)
  {
    v9[1] = v8;
    v9[2] = 0;
    v9[3] = v7;
    *v9 = &unk_1EF1F3528;
    *(v9 + 32) = v9[4] & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    *(v4 + 32) = *(v4 + 32) & 0xFD | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 4;
    }

    else
    {
      v11 = 0;
    }

    *(v4 + 32) = *(v4 + 32) & 0xFB | v11;
    if ([(objc_class *)v7 instancesRespondToSelector:sel_CAMLParser_setValue_forKey_])
    {
      v12 = 8;
    }

    else
    {
      v12 = 0;
    }

    *(v4 + 32) = *(v4 + 32) & 0xF7 | v12;
    v13 = *(this + 13);
    v14 = v8;
    v15 = v4;
  }

  else
  {
    v13 = *(this + 13);
    v14 = v8;
    v15 = 0;
  }

  hash_table_modify(v13, v14, v15, 0);
  return v4;
}

double CA::Render::SpringAnimation::time_derivative(CA::Render::SpringAnimation *this, double a2, const double *a3)
{
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = INFINITY;
  }

  v7 = CA::Render::Animation::time_derivative(this, a2, a3);
  v8 = v6 * a2;
  CA::Render::SpringAnimation::State::eval_derivative((this + 192), v8);
  v10 = v9;
  CA::Render::SpringAnimation::State::eval_derivative((this + 192), v8 + 0.0166666667);
  if (fabs(v10) > fabs(v11))
  {
    v11 = v10;
  }

  return v7 * v6 * v11;
}

const char *CAML::memq_(const char *this, const char **__s2, const char *a3)
{
  if (this)
  {
    v3 = this;
    this = *this;
    if (this)
    {
      v4 = a3;
      v6 = *__s2;
      while (*this != v6 || strcmp(this, __s2))
      {
        v7 = *(v3 + 2);
        v3 += 16;
        this = v7;
        if (!v7)
        {
          return this;
        }
      }

      if (v4)
      {
        *v3 = "";
      }

      return *(v3 + 1);
    }
  }

  return this;
}

void CAML::State::start(CAML::State *this, const char **a2)
{
  *(this + 27) = a2;
  (*(**(this + 6) + 16))(*(this + 6), *(this + 1), this, a2);
  *(this + 27) = 0;
  v4 = CAML::memq_(a2, "value", 1);
  if (v4)
  {
    v5 = v4;
    v6 = strlen(v4);
    CAML::State::characters(this, v5, v6);
    *(this + 224) |= 1u;
  }

  v7 = CAML::memq_(a2, "id", 1);
  if (v7)
  {
    v8 = CFStringCreateWithCString(0, v7, 0x8000100u);
    *(this + 4) = v8;
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *(this + 4);
    if (!v8)
    {
      return;
    }
  }

  v9 = *(this + 8);
  if (v9)
  {
    v10 = *(this + 1);
    v11 = *(this + 6);

    CAML::Context::set_object(v10, v8, v11, v9);
  }
}

uint64_t CA::Transaction::add_fence(CA::Transaction *this, int a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(this + 132) & 2) != 0)
  {
    v8 = 0;
  }

  else
  {
    if (!**(this + 15))
    {
      CA::Transaction::ensure_implicit(this, 1);
    }

    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = ___ZN2CA11Transaction9add_fenceEjP13CAFenceHandleU13block_pointerFvP17CAFenceResolutionE_block_invoke;
    v10[3] = &unk_1E6DEDD98;
    v11 = a2;
    v10[4] = a3;
    v10[5] = a4;
    v10[6] = &v12;
    v10[7] = this;
    [(CAFenceHandle *)a3 _accessMachPort:v10];
    v8 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
  }

  return v8 & 1;
}

void sub_183BDB798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CA::Render::SpringAnimation::State::eval_derivative(CA::Render::SpringAnimation::State *this, double a2)
{
  v4 = *(this + 1);
  if (v4 >= 1.0)
  {
    if (v4 > 1.0 && *(this + 40) == 1)
    {
      v5 = *(this + 2);
      v6 = *this * v4;
      exp(-((v6 + v5) * a2));
      exp((v5 - v6) * a2);
    }

    else
    {
      exp(-(a2 * *this));
    }
  }

  else
  {
    exp(-(a2 * v4) * *this);
    __sincos_stret(*(this + 2) * a2);
  }
}

uint64_t CAML::ObjCNSObject::start(uint64_t this, CAML::Context *a2, CAML::State *a3, const char **a4)
{
  v6 = *(a2 + 10);
  v7 = *(this + 32);
  if ((v7 & 8) != 0)
  {
    *(a3 + 4) = 2;
    v7 = *(this + 32);
  }

  if (v7)
  {
    *(a2 + 11) = a3;
    this = [*(this + 24) CAMLParserStartElement:{v6, a4}];
    *(a2 + 11) = 0;
  }

  return this;
}

uint64_t CA::Render::release_object(CA::Render *this, atomic_uint *a2, void *a3)
{
  if (a2)
  {
    if (atomic_fetch_add(a2 + 2, 0xFFFFFFFF) == 1)
    {
      return (*(*a2 + 16))(a2);
    }
  }

  return result;
}

void ___ZN2CA11Transaction9add_fenceEjP13CAFenceHandleU13block_pointerFvP17CAFenceResolutionE_block_invoke(uint64_t a1, int a2, char a3)
{
  v21[5] = *MEMORY[0x1E69E9840];
  if ((a2 + 1) >= 2 && (a3 & 1) == 0)
  {
    v5 = *(a1 + 56);
    kdebug_trace();
    v6 = *(v5 + 120);
    v7 = *(v5 + 116);
    *(v5 + 116) = v7 + 1;
    if (!v7)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    v8 = (v6 + 32);
    v9 = (v6 + 32);
    while (1)
    {
      v9 = *v9;
      if (!v9)
      {
        break;
      }

      if (*(v9 + 6) == a2)
      {
        goto LABEL_14;
      }
    }

    v10 = *(a1 + 32);
    if (!v10 || (v11 = [(CAFenceHandle *)*(a1 + 32) _copyUntrackedPort], (v11 - 1) > 0xFFFFFFFD))
    {

      CA::Transaction::unlock(v5);
      return;
    }

    v12 = [[CAFenceHandle alloc] _initWithPort:v11 name:*(v10 + 16) tracing:1];
    kdebug_trace();
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v9 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
    *(v9 + 1) = v12;
    *(v9 + 2) = 0;
    *v9 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = ___ZN2CA11Transaction5FenceC2EP13CAFenceHandle_block_invoke;
    v21[3] = &__block_descriptor_40_e11_v16__0I8B12l;
    v21[4] = v9;
    [(CAFenceHandle *)v12 _accessMachPort:v21];
    *v9 = *v8;
    *v8 = v9;
LABEL_14:
    v13 = v9 + 16;
    v14 = v9 + 16;
    while (1)
    {
      v14 = *v14;
      if (!v14)
      {
        break;
      }

      if (*(v14 + 2) == *(a1 + 64))
      {
        goto LABEL_21;
      }
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v14 = malloc_type_zone_malloc(malloc_zone, 0x18uLL, 0x165299FDuLL);
    v15 = *(a1 + 64);
    *(v14 + 2) = 0;
    *(v14 + 2) = v15;
    *v14 = *v13;
    *v13 = v14;
LABEL_21:
    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = *(v14 + 2);
      v18 = _Block_copy(v16);
      *(v14 + 2) = x_list_prepend(v17, v18);
    }

    CA::Transaction::unlock(v5);
    v19 = *(v5 + 120);
    if (!*(v19 + 40))
    {
      add = atomic_fetch_add(CA::Transaction::capture_ftx_seed(void)::next_ftx_seed, 1u);
      *(v19 + 40) = add + 1;
      if (add == -1)
      {
        *(v19 + 40) = atomic_fetch_add(CA::Transaction::capture_ftx_seed(void)::next_ftx_seed, 1u) + 1;
      }
    }

    kdebug_trace();
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_183BDBCE4(_Unwind_Exception *a1)
{
  if (*(v2 + 760) != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  malloc_zone_free(*(v3 + 2880), v1);
  _Unwind_Resume(a1);
}

uint64_t ___ZN2CA11Transaction5FenceC2EP13CAFenceHandle_block_invoke(uint64_t result, int a2)
{
  if ((a2 + 1) <= 1)
  {
    __assert_rtn("Fence_block_invoke", "CATransactionInternal.mm", 1488, "MACH_PORT_VALID (port)");
  }

  *(*(result + 32) + 24) = a2;
  return result;
}

atomic_uint *CA::Render::ShapeLayer::set_dash_pattern(CA::Render::ShapeLayer *this, CA::Render::Vector *a2)
{
  result = *(this + 16);
  if (result != a2)
  {
    v4 = a2;
    if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*result + 16))(result);
    }

    if (v4)
    {
      v5 = (v4 + 8);
      if (!atomic_fetch_add(v4 + 2, 1u))
      {
        v4 = 0;
        atomic_fetch_add(v5, 0xFFFFFFFF);
      }
    }

    *(this + 16) = v4;
  }

  return result;
}

void layer_private_set_drawable_size_internal(_CAMetalLayerPrivate *a1, int a2, int a3)
{
  *(a1 + 30) = a2;
  *(a1 + 31) = a3;
  atomic_fetch_or(a1 + 1, 1u);
  CAImageQueueSetSize(*(a1 + 2), *(a1 + 30), *(a1 + 31));
  if (MEMORY[0x1EEE88978])
  {
    FPMetalLayerMarkSetSize();
  }
}

void CAImageQueueSetSize(os_unfair_lock_s *a1, uint32_t a2, uint32_t a3)
{
  if (a1[8]._os_unfair_lock_opaque != a2 || a1[9]._os_unfair_lock_opaque != a3)
  {
    os_unfair_lock_lock(a1 + 4);
    a1[8]._os_unfair_lock_opaque = a2;
    a1[9]._os_unfair_lock_opaque = a3;

    os_unfair_lock_unlock(a1 + 4);
  }
}

void CAML::State::set_value(CAML::State *this, CFTypeRef cf)
{
  v4 = *(this + 8);
  if (v4)
  {
    CFRelease(v4);
    *(this + 8) = 0;
  }

  if (cf)
  {
    *(this + 8) = CFRetain(cf);
  }
}

unint64_t CA::OGL::emit_quad_surround(uint64_t a1, const double *a2, uint64_t *a3)
{
  v5 = 0;
  v121 = *MEMORY[0x1E69E9840];
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v6 = &v116;
  v7 = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
  v8 = vdupq_n_s64(0x7FF0000000000000uLL);
  v9 = &v117;
  __asm
  {
    FMOV            V2.2D, #-1.0
    FMOV            V3.2D, #1.0
  }

  do
  {
    v123 = vld4q_f64(a2);
    a2 += 8;
    v15 = vcgtq_f64(v7, vabsq_f64(vaddq_f64(v123.val[3], _Q2)));
    v16 = vcgtzq_f64(v123.val[3]);
    v17 = vbslq_s8(vbicq_s8(vmvnq_s8(v15), v16), v8, vbslq_s8(vbicq_s8(v16, v15), vdivq_f64(_Q3, v123.val[3]), _Q3));
    v122.val[0] = vmulq_f64(v123.val[0], v17);
    v122.val[1] = vmulq_f64(v123.val[1], v17);
    *&v18 = v9[1].f64;
    *&v123.val[0].f64[0] = v9;
    vst2q_f64(v9->f64, v122);
    v9 += 2;
    v123.val[0].f64[1] = v18;
    *(&v115 + v5) = v123.val[0];
    v5 += 16;
  }

  while (v5 != 32);
  v19 = vsubq_f64(v119, v118);
  v20 = vmulq_f64(vextq_s8(v19, v19, 8uLL), vsubq_f64(v118, v117));
  v21 = v115;
  if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v20, 1), v20)).u8[0])
  {
    v22 = v116;
    v23 = *(&v115 + 1);
    *&v115 = *(&v116 + 1);
    *(&v115 + 1) = v116;
    *&v116 = v23;
    *(&v116 + 1) = v21;
    v21 = v115;
  }

  else
  {
    v22 = *(&v115 + 1);
  }

  v24 = 0;
  v25 = *(v21 + 8);
  v26 = *(v22 + 8);
  v27 = v25 < v26;
  v28 = v25 >= v26;
  v29 = 2;
  do
  {
    v30 = v24;
    v31 = *(*v6 + 8);
    if (v31 >= *(*(&v115 + v28) + 8))
    {
      if (v31 < *(*(&v115 + v27) + 8))
      {
        v27 = v29;
      }
    }

    else
    {
      v27 = v28;
      v28 = v29;
    }

    v29 = 3;
    v24 = 1;
    v6 = &v116 + 8;
  }

  while ((v30 & 1) == 0);
  v32 = **(&v115 + v28);
  v33 = **(&v115 + v27);
  v34 = vabdd_f64(v32, v33);
  if (v32 < v33 || v34 < 0.001)
  {
    v36 = v28;
  }

  else
  {
    v36 = v27;
  }

  v37 = *(&v115 + v36);
  v38 = *(&v115 + ((v36 + 1) & 3));
  v39 = *(&v115 + (v36 & 3 ^ 2u));
  v40 = *(&v115 + (v36 ? 0 : 3));
  v109 = 0;
  v110 = 0;
  result = CA::Shape::get_bounds(*(*(a1 + 656) + 8), &v109);
  v42 = *(a1 + 672);
  if (v42)
  {
    v43 = v42 + 6;
  }

  else
  {
    v43 = (a1 + 608);
  }

  v44 = vclez_s32(v110);
  if ((vpmax_u32(v44, v44).u32[0] & 0x80000000) == 0)
  {
    v45 = v43[1];
    v46 = vclez_s32(v45);
    if ((vpmax_u32(v46, v46).u32[0] & 0x80000000) == 0)
    {
      v47 = vadd_s32(*v43, v45);
      v48 = vmax_s32(v109, *v43);
      v49 = vmin_s32(vadd_s32(v109, v110), v47);
      v50 = vclez_s32(vsub_s32(v49, v48));
      if ((vpmax_u32(v50, v50).u32[0] & 0x80000000) == 0)
      {
        v51.i64[0] = v48.i32[0];
        v51.i64[1] = v48.i32[1];
        v52 = vcvtq_f64_s64(v51);
        v51.i64[0] = v49.i32[0];
        v51.i64[1] = v49.i32[1];
        v106 = vcvtq_f64_s64(v51);
        v107 = v52;
        v53 = *(a1 + 16);
        memcpy(__dst, v53, sizeof(__dst));
        __dst[0] = v53;
        *(a1 + 16) = __dst;
        LOBYTE(__dst[2]) = 0;
        v113 = 0u;
        v54 = *(*(a1 + 656) + 8);
        v111[0] = a1;
        v111[1] = v54;
        v112 = 0u;
        v111[2] = 0;
        WORD4(v112) = 256;
        CA::OGL::Context::ClippedArray::start(v111);
        v108[0] = 0;
        v108[1] = 0;
        v55.f64[0] = v107.f64[0];
        v55.f64[1] = v106.f64[1];
        v105 = v55;
        v55.f64[0] = v106.f64[0];
        v55.f64[1] = v107.f64[1];
        v104 = v55;
        while (1)
        {
          result = CA::OGL::Context::ClippedArray::next_rect(v111, v108);
          if (!result)
          {
            break;
          }

          if (*(a1 + 108))
          {
            v56 = 48;
          }

          else
          {
            v56 = 32;
          }

          if ((*(a1 + 144) + 32) > *(a1 + 152) || (v57 = *(a1 + 128)) != 0 && *(a1 + 120) + v56 > v57)
          {
            *(a1 + 1384) |= 0x20u;
            CA::OGL::Context::array_flush(a1);
            *(a1 + 144) = 0;
            *(a1 + 112) = a1 + 1386;
            *(a1 + 120) = xmmword_183E20E50;
          }

          v58 = v37->f64[1];
          if (v37->f64[0] > v107.f64[0] && v58 > v107.f64[1])
          {
            v60.f64[1] = v107.f64[1];
            v60.f64[0] = v37->f64[0];
            v61.f64[0] = v107.f64[0];
            v61.f64[1] = v37->f64[1];
            CA::OGL::Context::array_quad(a1, v107, v60, *v37, v61);
            v62 = *a3;
            v63 = *(a1 + 136) + 48 * *(a1 + 144);
            *(v63 - 160) = *a3;
            *(v63 - 112) = v62;
            *(v63 - 64) = v62;
            *(v63 - 16) = v62;
            v58 = v37->f64[1];
          }

          v64 = v38->f64[1];
          if (v58 > v107.f64[1] || v64 > v107.f64[1])
          {
            if (v58 >= v107.f64[1])
            {
              v66 = v107.f64[1];
            }

            else
            {
              v66 = v58;
            }

            if (v64 >= v66)
            {
              v67 = v66;
            }

            else
            {
              v67 = v38->f64[1];
            }

            v68.f64[0] = v37->f64[0];
            v68.f64[1] = v67;
            v69.f64[0] = v38->f64[0];
            v69.f64[1] = v67;
            CA::OGL::Context::array_quad(a1, v68, v69, *v38, *v37);
            v70 = *a3;
            v71 = *(a1 + 136) + 48 * *(a1 + 144);
            *(v71 - 160) = *a3;
            *(v71 - 112) = v70;
            *(v71 - 64) = v70;
            *(v71 - 16) = v70;
          }

          v72 = v38->f64[0];
          v73 = v106;
          if (v38->f64[0] < v106.f64[0] && v38->f64[1] > v107.f64[1])
          {
            v74.f64[1] = v107.f64[1];
            v74.f64[0] = v38->f64[0];
            v73.f64[1] = v38->f64[1];
            CA::OGL::Context::array_quad(a1, v74, v104, v73, *v38);
            v73 = v106;
            v75 = *a3;
            v76 = *(a1 + 136) + 48 * *(a1 + 144);
            *(v76 - 160) = *a3;
            *(v76 - 112) = v75;
            *(v76 - 64) = v75;
            *(v76 - 16) = v75;
            v72 = v38->f64[0];
          }

          v77 = v39->f64[0];
          if (v72 < v73.f64[0] || v77 < v73.f64[0])
          {
            if (v72 <= v73.f64[0])
            {
              v72 = v73.f64[0];
            }

            if (v77 <= v72)
            {
              v78.f64[0] = v72;
            }

            else
            {
              v78.f64[0] = v39->f64[0];
            }

            v79.f64[0] = v78.f64[0];
            v79.f64[1] = v38->f64[1];
            v78.f64[1] = v39->f64[1];
            CA::OGL::Context::array_quad(a1, *v38, v79, v78, *v39);
            v73 = v106;
            v80 = *a3;
            v81 = *(a1 + 136) + 48 * *(a1 + 144);
            *(v81 - 160) = *a3;
            *(v81 - 112) = v80;
            *(v81 - 64) = v80;
            *(v81 - 16) = v80;
            v77 = v39->f64[0];
          }

          v82 = v107.f64[0];
          v83 = v39->f64[1];
          if (v77 < v73.f64[0] && v83 < v106.f64[1])
          {
            v84.f64[0] = v73.f64[0];
            v84.f64[1] = v39->f64[1];
            v85.f64[1] = v73.f64[1];
            v85.f64[0] = v77;
            CA::OGL::Context::array_quad(a1, *v39, v84, v73, v85);
            v82 = v107.f64[0];
            v86 = *a3;
            v87 = *(a1 + 136) + 48 * *(a1 + 144);
            *(v87 - 160) = *a3;
            *(v87 - 112) = v86;
            *(v87 - 64) = v86;
            *(v87 - 16) = v86;
            v83 = v39->f64[1];
          }

          v88 = v40->f64[1];
          if (v83 < v106.f64[1] || v88 < v106.f64[1])
          {
            if (v83 <= v106.f64[1])
            {
              v89 = v106.f64[1];
            }

            else
            {
              v89 = v83;
            }

            if (v88 <= v89)
            {
              v88 = v89;
            }

            v90.f64[0] = v39->f64[0];
            v90.f64[1] = v88;
            v91.f64[0] = v40->f64[0];
            v91.f64[1] = v88;
            CA::OGL::Context::array_quad(a1, *v40, *v39, v90, v91);
            v82 = v107.f64[0];
            v92 = *a3;
            v93 = *(a1 + 136) + 48 * *(a1 + 144);
            *(v93 - 160) = *a3;
            *(v93 - 112) = v92;
            *(v93 - 64) = v92;
            *(v93 - 16) = v92;
          }

          v94 = v40->f64[0];
          if (v40->f64[0] > v82 && v40->f64[1] < v106.f64[1])
          {
            v95.f64[0] = v82;
            v95.f64[1] = v40->f64[1];
            v96.f64[1] = v106.f64[1];
            v96.f64[0] = v40->f64[0];
            CA::OGL::Context::array_quad(a1, v95, *v40, v96, v105);
            v82 = v107.f64[0];
            v97 = *a3;
            v98 = *(a1 + 136) + 48 * *(a1 + 144);
            *(v98 - 160) = *a3;
            *(v98 - 112) = v97;
            *(v98 - 64) = v97;
            *(v98 - 16) = v97;
            v94 = v40->f64[0];
          }

          v99 = v37->f64[0];
          if (v37->f64[0] > v82 || v94 > v82)
          {
            if (v99 >= v82)
            {
              v99 = v82;
            }

            if (v94 >= v99)
            {
              v100.f64[0] = v99;
            }

            else
            {
              v100.f64[0] = v94;
            }

            v101.f64[0] = v100.f64[0];
            v101.f64[1] = v37->f64[1];
            v100.f64[1] = v40->f64[1];
            CA::OGL::Context::array_quad(a1, v101, *v37, *v40, v100);
            v102 = *a3;
            v103 = *(a1 + 136) + 48 * *(a1 + 144);
            *(v103 - 160) = *a3;
            *(v103 - 112) = v102;
            *(v103 - 64) = v102;
            *(v103 - 16) = v102;
          }
        }

        *(a1 + 16) = __dst[0];
      }
    }
  }

  return result;
}

void CA::Volume::apply_transform(CA::Volume *this, float64x2_t *a2, double *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if ((LOBYTE(a2[9].f64[0]) & 0x10) == 0)
  {
    v4 = vsubq_f64(*(this + 24), *this);
    v47[0] = *this;
    v47[1] = v4;
    CA::Rect::apply_transform(v47, a2, a3);
    v5 = v47[0];
    v6 = v47[1];
    *this = v47[0];
    *(this + 24) = vaddq_f64(v6, v5);
    return;
  }

  v7 = 0;
  v8 = 1;
  memset(v47, 0, sizeof(v47));
  do
  {
    v9 = 0;
    v10 = v8;
    if (v8)
    {
      v11 = 0;
    }

    else
    {
      v11 = 24;
    }

    v12 = *(this + v11);
    v13 = 1;
    do
    {
      v14 = 0;
      v15 = v13;
      v16 = v9 | v7;
      if (v13)
      {
        v17 = 8;
      }

      else
      {
        v17 = 32;
      }

      v18 = *(this + v17);
      v19 = 1;
      do
      {
        v20 = &v47[2 * (v14 | v16)];
        v20->i64[0] = v12;
        v20->i64[1] = v18;
        v21 = v19 & 1;
        if (v19)
        {
          v22 = 16;
        }

        else
        {
          v22 = 40;
        }

        v20[1].i64[0] = *(this + v22);
        v20[1].i64[1] = 0x3FF0000000000000;
        v14 = 1;
        v19 = 0;
      }

      while (v21);
      v13 = 0;
      v9 = 2;
    }

    while ((v15 & 1) != 0);
    v8 = 0;
    v7 = 4;
  }

  while ((v10 & 1) != 0);
  v23 = 0;
  v24 = *a2;
  v25 = a2[1];
  v26 = a2[2];
  v27 = a2[3];
  v28 = a2[4];
  v29 = a2[5];
  v30 = a2[6];
  v31 = a2[7];
  do
  {
    v32 = &v47[v23];
    v33 = v47[v23];
    v34 = v47[v23 + 1];
    *v32 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v24, v33.f64[0]), v26, v33, 1), v28, v34.f64[0]), v30, v34, 1);
    v32[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v25, v33.f64[0]), v27, v33, 1), v29, v34.f64[0]), v31, v34, 1);
    v23 += 2;
  }

  while (v23 != 16);
  v35 = 0;
  v36 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v37 = xmmword_183E216B0;
  v38 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  while (1)
  {
    v39 = v47[v35];
    v40 = *v47[v35 + 1].i64;
    v41 = *&v47[v35 + 1].i64[1];
    if (v41 != 1.0)
    {
      break;
    }

LABEL_24:
    *&v43.f64[1] = v37.i64[1];
    v43.f64[0] = v40;
    v44 = vextq_s8(v39, v39, 8uLL);
    v45.f64[1] = v44.f64[1];
    *&v45.f64[0] = v37.i64[0];
    v38 = vbslq_s8(vcgtq_f64(v38, v39), v39, v38);
    v46.i64[1] = *&v44.f64[1];
    *v46.i64 = v40;
    v37 = vbslq_s8(vcgtq_f64(v45, v43), v46, v37);
    v44.f64[1] = v40;
    v36 = vbslq_s8(vcgtq_f64(v44, v36), v44, v36);
    v35 += 2;
    if (v35 == 16)
    {
      *this = v38;
      *(this + 1) = v37;
      goto LABEL_27;
    }
  }

  if (v41 > 0.0)
  {
    v42 = 1.0 / v41;
    v39 = vmulq_n_f64(v39, v42);
    v40 = v42 * v40;
    goto LABEL_24;
  }

  *this = CA::Volume::infinity;
  *(this + 1) = unk_183E317E0;
  v36 = xmmword_183E317F0;
LABEL_27:
  *(this + 2) = v36;
}

void *CAML::ObjCNSObject::property_type(CAML::ObjCNSObject *this, CAML::Context *a2, void *a3, unsigned int a4)
{
  result = [a3 CAMLTypeForKey:CAAtomGetString(a4)];
  if (result)
  {
    v6 = [result UTF8String];
    v7 = *(*a2 + 32);

    return v7(a2, v6);
  }

  return result;
}

void CA::Render::ImageQueue::did_display(CA::Render::ImageQueue *this, unsigned int a2, double a3, double a4, double a5)
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = *(*(this + 2) + 24);
  if (!v5)
  {
    return;
  }

  v10 = *(this + 63);
  if (v10)
  {
    v11 = *(v10 + 32);
    if (v11)
    {
      v12 = [v11 signaledValue] != *(v10 + 48);
      v10 = *(this + 63);
    }

    else
    {
      v12 = 0;
    }

    v43 = *(v10 + 16);
  }

  else
  {
    v12 = 0;
    v43 = 0;
  }

  v13 = *(this + 111);
  v14 = *(this + 115);
  v15 = *(v5 + 48);
  if (v14)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    goto LABEL_13;
  }

  v17 = _CACImageQueueDidPresent(*(this + 115), 0, *(v5 + 48), a2, a3, a4, a5);
  if (!v17)
  {
    goto LABEL_13;
  }

  v35 = v17;
  if (v17 != 268435460)
  {
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v40 = x_log_get_utilities::log;
    if (!os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136315650;
    *&buf[4] = "IQDidPresent";
    *&buf[12] = 1024;
    *&buf[14] = v35;
    *&buf[18] = 2080;
    *&buf[20] = mach_error_string(v35);
    v37 = "%s client message err=0x%x : %s";
    v38 = v40;
    v39 = 28;
    goto LABEL_61;
  }

  if (v14 != -1 && !mach_port_mod_refs(*MEMORY[0x1E69E9A60], v14, 0, 1))
  {
    if (CA::MachPortUtil::reply_queue(void)::once[0] != -1)
    {
      dispatch_once(CA::MachPortUtil::reply_queue(void)::once, &__block_literal_global_10344);
    }

    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZN2CA12MachPortUtil17call_with_timeoutIPFijjjjdddEJjjdddEEEijjbPKcT_DpT0__block_invoke;
    *&buf[24] = &__block_descriptor_tmp_108_15342;
    v46 = _CACImageQueueDidPresent;
    v51 = v14;
    v52 = 2;
    v53 = v15;
    v54 = a2;
    v47 = a3;
    v48 = a4;
    v49 = a5;
    v55 = 0;
    v50 = "IQDidPresent";
    dispatch_async(CA::MachPortUtil::reply_queue(void)::queue, buf);
    goto LABEL_13;
  }

  if (x_log_get_utilities::once != -1)
  {
    dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
  }

  v36 = x_log_get_utilities::log;
  if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "IQDidPresent";
    v37 = "%s failed to retain right";
    v38 = v36;
    v39 = 12;
LABEL_61:
    _os_log_error_impl(&dword_183AA6000, v38, OS_LOG_TYPE_ERROR, v37, buf, v39);
  }

LABEL_13:
  v18 = atomic_load((v5 + 8));
  if (!v13)
  {
    return;
  }

  v41 = v12;
  v42 = v14;
  v19 = 0;
  v20 = (v5 + 572);
  v21 = v18 & 0x1000000000000000;
  do
  {
    if (!*(v20 - 8))
    {
      goto LABEL_41;
    }

    v22 = *(v5 + 40);
    v23 = *(v20 - 15);
    if (!v23)
    {
      v30 = *(v20 - 25) != 0.0 && v21 == 0;
      if (!v30 && *v20 <= v22 || *(v20 - 2) - 1 < a2)
      {
        *(v20 - 15) = CAHostTimeWithTime(a3);
        goto LABEL_41;
      }
    }

    v24 = *(v20 - 9);
    v25 = *(v5 + 16);
    if (v23 >= CAHostTimeWithTime(a3) || *v20 >= v22 || *(v20 - 25) == 0.0)
    {
      v27 = atomic_load((v5 + 8));
      v26 = (v27 >> 53) & 1;
    }

    else
    {
      LODWORD(v26) = 1;
    }

    v28 = atomic_load((v5 + 8));
    if (*(v5 + 32))
    {
      LODWORD(v29) = 0;
    }

    else
    {
      v29 = (v28 >> 58) & 1;
      if (*v20 >= v22)
      {
        LODWORD(v29) = 0;
      }
    }

    if (*(v20 - 10) == 286331153 && (*(v20 - 3) - a2) < 0 && (v24 - v25 < 0) | (v26 | v29) & 1)
    {
      if ((~v28 & 0xC00000000000000) != 0)
      {
        goto LABEL_40;
      }

      v31 = IOSurfaceLookup(*(v20 - 11));
      if (!v31)
      {
        goto LABEL_40;
      }

      v32 = v31;
      if (*(v20 - 11) == v43)
      {
        CFRelease(v31);
        if (v41)
        {
          goto LABEL_41;
        }

LABEL_40:
        v33 = 286331153;
        atomic_compare_exchange_strong(v20 - 10, &v33, 0x33333333u);
        v19 |= v33 == 286331153;
        goto LABEL_41;
      }

      v34 = IOSurfaceIsInUse(v31);
      CFRelease(v32);
      if (!v34)
      {
        goto LABEL_40;
      }
    }

LABEL_41:
    v20 += 40;
    --v13;
  }

  while (v13);
  if (v19)
  {

    CAShmemImageQueueCollectable(v5, v42, a2, 1);
  }
}

uint64_t _CACImageQueueDidPresent(mach_port_t a1, mach_msg_timeout_t timeout, int a3, int a4, double a5, double a6, double a7)
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = *MEMORY[0x1E69E99E0];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 40405;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v8 = mach_msg(&msg, 17, 0x40u, 0, 0, timeout, 0);
  if ((v8 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v8;
}

void invoke_presented_callback(double *a1)
{
  v2 = *a1;
  pthread_mutex_lock(&presented_mutex);
  if (*(*&v2 + 136) == 1)
  {
    do
    {
      pthread_cond_wait(&presented_cond, &presented_mutex);
    }

    while ((*(*&v2 + 136) & 1) != 0);
  }

  if (*(*&v2 + 120))
  {
    *(*&v2 + 136) = 1;
    pthread_mutex_unlock(&presented_mutex);
    (*(*&v2 + 120))(COERCE_DOUBLE(*&v2), *(a1 + 2), *(*&v2 + 128), a1[2], a1[3], a1[4]);
    pthread_mutex_lock(&presented_mutex);
    *(*&v2 + 136) = 0;
    pthread_cond_broadcast(&presented_cond);
  }

  pthread_mutex_unlock(&presented_mutex);
  CFRelease(*&v2);

  free(a1);
}

__CFString *CAObject_CAMLTypeForKey(uint64_t a1, const __CFString *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  v2 = CAInternAtom(a2, 1);
  v3 = objc_opt_class();
  v4 = CAObject_typeForAtom(v3, v2, v13);
  if (v4 > 0x10)
  {
    v6 = @"CAPoint3D";
    v7 = @"CACornerRadii";
    if (v4 != 25)
    {
      v7 = 0;
    }

    if (v4 != 24)
    {
      v6 = v7;
    }

    v8 = @"CGAffineTransform";
    if (v4 != 23)
    {
      v8 = 0;
    }

    if (v4 == 22)
    {
      v8 = @"CATransform3D";
    }

    if (v4 <= 23)
    {
      v6 = v8;
    }

    v9 = @"CGSize";
    v10 = @"CGRect";
    if (v4 != 21)
    {
      v10 = 0;
    }

    if (v4 != 20)
    {
      v9 = v10;
    }

    v11 = @"CGPoint";
    if (v4 != 19)
    {
      v11 = 0;
    }

    if ((v4 - 17) >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = @"real";
    }

    if (v4 <= 19)
    {
      v9 = v12;
    }

    if (v4 <= 21)
    {
      return v9;
    }

    else
    {
      return v6;
    }
  }

  else if ((v4 - 9) < 8)
  {
    return @"integer";
  }

  else if ((v4 - 1) >= 5)
  {
    if ((v4 - 6) >= 3)
    {
      return 0;
    }

    else
    {
      return @"BOOL";
    }
  }

  else
  {
    return v13[0];
  }
}

void layer_presented(_CAImageQueue *a1, unsigned int a2, double a3, double a4, double a5, void *a6)
{
  v89 = *MEMORY[0x1E69E9840];
  *(a6 + 29) = mach_absolute_time();
  obj = objc_alloc_init(MEMORY[0x1E695DF70]);
  os_unfair_lock_lock(a6 + 52);
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v64 = a6;
  v10 = *(a6 + 27);
  v11 = [v10 countByEnumeratingWithState:&v85 objects:v84 count:16];
  if (v11)
  {
    v12 = *v86;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v86 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v85 + 1) + 8 * i);
        if (![v14 didComposite])
        {
          if (a2)
          {
            continue;
          }

LABEL_11:
          [obj addObject:v14];
          continue;
        }

        v15 = [v14 updateSeed];
        if (!a2 || v15 <= a2)
        {
          goto LABEL_11;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v85 objects:v84 count:16];
    }

    while (v11);
  }

  if ([obj count])
  {
    [*(a6 + 27) removeObjectsInArray:obj];
  }

  v62 = a2;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v16 = [obj countByEnumeratingWithState:&v80 objects:v79 count:16];
  if (v16)
  {
    v61 = *v81;
    v18 = a5 + 0.001;
    *&v17 = 67240960;
    v57 = v17;
    do
    {
      v19 = 0;
      v63 = v16;
      do
      {
        if (*v81 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v80 + 1) + 8 * v19);
        v21 = *(*(*(*(v64 + 2) + 48) + 24) + 88);
        v22 = [(CAMetalDrawable *)v20 updateSeed];
        if (a3 <= 0.0 || v22 != v62)
        {
          [(CAMetalDrawable *)v20 setStatus:3];
          mark_drawable_finish(v20, v64, 0, a3);
          goto LABEL_45;
        }

        [(CAMetalDrawable *)v20 setStatus:2];
        [(CAMetalDrawable *)v20 setPresentedTime:a3];
        *buf = 0;
        *v66 = 0;
        mach_get_times();
        v24 = *buf;
        v25 = *v66;
        [(CAMetalDrawable *)v20 timeAcquired];
        v27 = CAHostTimeWithTime(v26);
        v28 = CAHostTimeWithTime(a3);
        [(CAMetalDrawable *)v20 timePresentCalled];
        v30 = CAHostTimeWithTime(v29);
        [(CAMetalDrawable *)v20 targetTimestamp];
        v31 = v25 - v24;
        v32 = v27 + v31;
        v33 = v28 + v31;
        v34 = v30 + v31;
        if (v35 != 0.0)
        {
          [(CAMetalDrawable *)v20 timePresentCalled];
          v37 = v36;
          [(CAMetalDrawable *)v20 presentDeadline];
          v39 = v38;
          [(CAMetalDrawable *)v20 targetPresentationTimestamp];
          if (v37 > v39 || v18 + v40 < a3)
          {
            if (x_log_get_metal_layer_stalls(void)::once != -1)
            {
              dispatch_once(&x_log_get_metal_layer_stalls(void)::once, &__block_literal_global_4_10897);
            }

            v41 = &x_log_get_metal_layer_stalls(void)::log;
          }

          else
          {
            if (x_log_get_metal_layer(void)::once != -1)
            {
              dispatch_once(&x_log_get_metal_layer(void)::once, &__block_literal_global_10898);
            }

            v41 = &x_log_get_metal_layer(void)::log;
          }

          v46 = *v41;
          [(CAMetalDrawable *)v20 targetTimestamp];
          v47 = v33;
          v48 = v27 + v31;
          v50 = CAHostTimeWithTime(v49);
          [(CAMetalDrawable *)v20 targetSamplingTimestamp];
          v52 = CAHostTimeWithTime(v51);
          [(CAMetalDrawable *)v20 targetPresentationTimestamp];
          v59 = v47;
          v58 = CAHostTimeWithTime(v53);
          if (v21 && os_signpost_enabled(v46))
          {
            v54 = [(CAMetalDrawable *)v20 surfaceID];
            [(CAMetalDrawable *)v20 clientPreferredLatency];
            *buf = 67241984;
            *&buf[4] = v54;
            *v66 = 2050;
            *&v66[2] = v34;
            v67 = 2050;
            v68 = v50 + v31;
            v69 = 2050;
            v70 = v52 + v31;
            v71 = 2050;
            v72 = v58 + v31;
            v73 = 2050;
            v74 = v55;
            v75 = 2050;
            v76 = v48;
            v77 = 2050;
            v78 = v59;
            _os_signpost_emit_with_name_impl(&dword_183AA6000, v46, OS_SIGNPOST_EVENT, v21, "DrawableLifetime", "ID is queue ID.\n\tsurfaceID=%{public, name=surfaceID}#x\n\ttimePresentCalled=%{public, name=timePresentCalled}llu\n\ttargetTimestamp=%{public, name=targetTimestamp}llu\n\ttargetSamplingTimestamp=%{public, name=targetSamplingTimestamp}llu\n\ttargetPresentationTimestamp=%{public, name=targetPresentationTimestamp}llu\n\tpreferredLatency=%{public, name=preferredLatency}g\n\tbeginTime=%{public, signpost.description:begin_time}llu\n\tendTime=%{public, signpost.description:end_time}llu\n", buf, 0x4Eu);
          }

          v44 = v64;
          v45 = (v37 <= v39) | (2 * *(v64 + 240));
          goto LABEL_44;
        }

        if (x_log_get_metal_layer(void)::once == -1)
        {
          if (v21)
          {
            goto LABEL_34;
          }
        }

        else
        {
          dispatch_once(&x_log_get_metal_layer(void)::once, &__block_literal_global_10898);
          if (v21)
          {
LABEL_34:
            v42 = x_log_get_metal_layer(void)::log;
            if (os_signpost_enabled(x_log_get_metal_layer(void)::log))
            {
              v43 = [(CAMetalDrawable *)v20 surfaceID];
              *buf = v57;
              *&buf[4] = v43;
              *v66 = 2050;
              *&v66[2] = v30 + v31;
              v67 = 2050;
              v68 = v32;
              v69 = 2050;
              v70 = v33;
              _os_signpost_emit_with_name_impl(&dword_183AA6000, v42, OS_SIGNPOST_EVENT, v21, "DrawableLifetime", "ID is queue ID.\n\tsurfaceID=%{public, name=surfaceID}#x\n\ttimePresentCalled=%{public, name=timePresentCalled}llu\n\tbeginTime=%{public, signpost.description:begin_time}llu\n\tendTime=%{public, signpost.description:end_time}llu\n", buf, 0x26u);
            }
          }
        }

        v44 = v64;
        v45 = (2 * *(v64 + 240)) | 1;
LABEL_44:
        *(v44 + 240) = v45;
        mark_drawable_finish(v20, v44, 1, a3);
LABEL_45:
        [(CAMetalDrawable *)v20 drawableID];
        [(CAMetalDrawable *)v20 status];
        kdebug_trace();
        [(CAMetalDrawable *)v20 didPresentAtTime:a3];
        kdebug_trace();
        ++v19;
      }

      while (v63 != v19);
      v56 = [obj countByEnumeratingWithState:&v80 objects:v79 count:16];
      v16 = v56;
    }

    while (v56);
  }

  os_unfair_lock_unlock(v64 + 52);

  if (*(v64 + 4))
  {
    if (CAMetalLayerShouldDispatchLink(*(v64 + 3)))
    {
      [CADisplayLink dispatchDeferredDisplayLink:*(v64 + 4)];
    }
  }
}

char *CAObject_typeForAtom(objc_class *a1, unsigned int a2, void *a3)
{
  v5 = classDescription(a1);
  result = propertyInfoForAtom(v5, a2, 0);
  if (result)
  {
    if (a3)
    {
      *a3 = *(result + 3);
    }

    return *(result + 2);
  }

  return result;
}

void CA::Render::anonymous namespace::provider_free(CA::Render::_anonymous_namespace_ *this, CGDataProvider *a2, void *a3)
{
  CGDataProviderReleaseBytePtr();

  CGDataProviderRelease(a2);
}

void __CADeviceUseCompression_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  if (CADeviceSupportsCIF10::once != -1)
  {
    dispatch_once(&CADeviceSupportsCIF10::once, &__block_literal_global_14);
  }

  if (CADeviceSupportsCIF10::supports_cif10 == 1)
  {
    if (CADeviceIsVirtualized::once[0] != -1)
    {
      dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
    }

    if ((CADeviceIsVirtualized::is_virtualized & 1) == 0)
    {
      LOBYTE(v5) = 0;
      v0 = MGGetSInt64Answer();
      if (v0)
      {
        v1 = v0 != 28672 && v0 != 32785;
        CADeviceUseCompression::enable_compression = v1;
      }

      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CAEnableIOSurfaceCompression", *MEMORY[0x1E695E8A8], &v5);
      if (v5)
      {
        CADeviceUseCompression::enable_compression = AppBooleanValue != 0;
      }
    }
  }

  if (x_log_get_utilities::once != -1)
  {
    dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
  }

  v3 = x_log_get_utilities::log;
  if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_INFO))
  {
    if (CADeviceUseCompression::enable_compression)
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&dword_183AA6000, v3, OS_LOG_TYPE_INFO, "IOSurface Compression Enabled: %s\n", &v5, 0xCu);
  }
}

uint64_t __CADeviceSupportsCIF10_block_invoke()
{
  result = MGGetSInt64Answer();
  if (result)
  {
    CADeviceSupportsCIF10::supports_cif10 = result != 28672;
  }

  return result;
}

void CA::Render::Fence::_createTransactionInfo(CA::Render::Fence *this)
{
  v5 = *MEMORY[0x1E69E9840];
  memset(&options.mpl, 0, 20);
  name = 0;
  options.flags = 16;
  if (mach_port_construct(*MEMORY[0x1E69E9A60], &options, 0, &name))
  {
    v1 = 1;
  }

  else
  {
    v1 = name - 1 >= 0xFFFFFFFE;
  }

  if (!v1)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v2 = malloc_type_zone_malloc(malloc_zone, 0x18uLL, 0x1020040EDCEB4C7uLL);
    v2[4] = name;
    operator new();
  }

  abort();
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void CAML::Context::pop_state(CAML::Context *this)
{
  v1 = *(this + 6);
  *(this + 6) = *(v1 + 3);
  CAML::State::finish(v1);
  v2 = *(v1 + 26);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(v1 + 4);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    CFRelease(v5);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v6 = malloc_zone;

  malloc_zone_free(v6, v1);
}

uint64_t __CADeviceIsVirtualized_block_invoke()
{
  result = MGGetBoolAnswer();
  CADeviceIsVirtualized::is_virtualized = result;
  return result;
}

unint64_t CA::OGL::render_shadow_path(CA::OGL::Context **a1, uint64_t a2)
{
  v43[2] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(*a1 + 2);
  if (*(v3 + 496) >= 2u)
  {
    *(v3 + 497) |= 1u;
    v3 = *(v2 + 2);
  }

  *(v3 + 497) |= 2u;
  *(*(v2 + 2) + 368) = 1065353216;
  v4 = *(a2 + 24);
  v5 = *(v4 + 136);
  if (v5)
  {
    v6 = *(v5 + 220);
    v7 = *(v5 + 216);
    v8 = vcvt_f16_f32(*(v5 + 200));
    v9 = *(v5 + 228);
  }

  else
  {
    v8 = 0x3C00000000000000;
    v6 = 0xC040000000000000;
    v9 = 3.0;
    v7 = 0.0;
  }

  v43[1] = v6;
  v43[0] = 0;
  *&v41.f64[0] = v8;
  CA::OGL::colormatched_layer_color(v43, a1, a2, &v41, v7);
  v10 = *(v4 + 37);
  v11 = *(v4 + 48);
  v12 = ((v11 & 0x80) == 0) & (v11 >> 10);
  v13 = *(v4 + 136);
  if (!v13)
  {
    if ((v11 & 0x100) == 0)
    {
      v15 = *(v4 + 88);
      v41 = *(v4 + 72);
      v42 = v15;
      v16 = 0x3C00000000000000;
      v17 = 0xC040000000000000;
      v18 = 3.0;
      goto LABEL_17;
    }

    v22 = *(v4 + 88);
    v41 = *(v4 + 72);
    v42 = v22;
    *&v37 = 0xC040000000000000;
    v21 = 0.0;
LABEL_15:
    v40 = v43[0];
    result = CA::OGL::emit_shadow_round_rect(v2, &v41, &v37, &v40, v10, (v11 >> 7) & 1, v12, *(v4 + 44) & 3, v21, v9, *(v4 + 42) & 0xF, *(*(v2 + 82) + 24));
    goto LABEL_26;
  }

  if ((v11 & 0x100) != 0)
  {
    v19 = *(v4 + 88);
    v41 = *(v4 + 72);
    v42 = v19;
    v20 = *(v13 + 72);
    if (v20)
    {
      *&v37 = *(v13 + 220);
      v40 = v43[0];
      result = CA::OGL::emit_shadow_uneven_round_rect(v2, &v41, &v37, (v20 + 24), &v40, v10, (v11 >> 7) & 1, v12, v9, *(v4 + 44) & 3, *(*(v2 + 82) + 24));
      goto LABEL_26;
    }

    *&v37 = *(v13 + 220);
    v21 = *(v13 + 232);
    goto LABEL_15;
  }

  if (*(v13 + 120))
  {
    *&v41.f64[0] = v43[0];
    result = CA::OGL::emit_shadow_path(v2);
    goto LABEL_26;
  }

  v23 = *(v4 + 88);
  v41 = *(v4 + 72);
  v42 = v23;
  v17 = *(v13 + 220);
  v18 = *(v13 + 228);
  v16 = vcvt_f16_f32(*(v13 + 200));
LABEL_17:
  v39 = v16;
  v40 = v17;
  v24 = *(*(v2 + 82) + 24);
  v25 = (*(**(v13 + 56) + 80))(*(v13 + 56));
  v26 = *(v4 + 136);
  if (v26)
  {
    v27 = *(v26 + 64);
    if (v27)
    {
      if (*(v27 + 16) > 3u)
      {
        v36 = vsubq_f64(*(v27 + 40), *(v27 + 24));
        v37 = *(v27 + 24);
        v38 = v36;
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
      }
    }

    else
    {
      __asm { FMOV            V0.2D, #0.5 }

      v37 = _Q0;
      v38 = 0uLL;
    }

    v34 = *(v26 + 232);
    v33 = *(v26 + 304);
  }

  else
  {
    __asm { FMOV            V0.2D, #0.5 }

    v37 = _Q0;
    v38 = 0uLL;
    LOBYTE(_Q0) = *(v4 + 38);
    v33 = _Q0;
    v34 = 0.0;
  }

  result = CA::OGL::emit_shadow_corner_contents(v2, &v41, &v40, &v39, v10, (v11 >> 7) & 1, v12, v24, v18, v34, v33, v25, &v37, HIWORD(*(v4 + 48)) & 1);
LABEL_26:
  *(*(v2 + 2) + 497) &= ~2u;
  *(*(v2 + 2) + 497) &= ~1u;
  return result;
}

void CAML::State::finish(CAML::State *this)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = *(this + 26);
  if (!v2)
  {
    v9 = this + 72;
    *(this + *(this + 25) + 72) = 0;
    v5 = *(this + 25);
    goto LABEL_18;
  }

  v3 = 0;
  v4 = *(this + 25);
  v5 = v4;
  do
  {
    v6 = v3;
    v3 = v2;
    v2 = *v2;
    v7 = v3[1];
    *v3 = v6;
    v5 += v7;
  }

  while (v2);
  *(this + 26) = v3;
  if (v5)
  {
    if (v5 + 1 <= 0x1000)
    {
      MEMORY[0x1EEE9AC00](this);
      v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v9, v8);
LABEL_10:
      memcpy(v9, this + 72, v4);
      v11 = *(this + 26);
      v12 = &v9[*(this + 25)];
      if (v11)
      {
        do
        {
          v13 = *v11;
          memcpy(v12, v11 + 2, v11[1]);
          v14 = v11[1];
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          v12 += v14;
          malloc_zone_free(malloc_zone, v11);
          v11 = v13;
        }

        while (v13);
      }

      *v12 = 0;
      goto LABEL_17;
    }

    v10 = malloc_type_malloc(v5 + 1, 0x847D5F54uLL);
    if (v10)
    {
      v9 = v10;
      v4 = *(this + 25);
      goto LABEL_10;
    }

    v5 = 0;
  }

  v9 = "";
LABEL_17:
  *(this + 26) = 0;
LABEL_18:
  v15 = *(this + 4);
  if ((v15 - 2) < 3)
  {
LABEL_21:
    (*(**(this + 6) + 24))(*(this + 6), *(this + 1), this, v9, v5);
    goto LABEL_22;
  }

  if (v15 != 7)
  {
    if (v15 != 6)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  (*(**(this + 1) + 56))(*(this + 1), v9, v5);
LABEL_22:
  if (v5 - 4096 <= 0xFFFFFFFFFFFFEFFELL && v9 != this + 72)
  {
    free(v9);
  }

  v17 = *(this + 4);
  if (v17)
  {
    v18 = *(this + 8);
    if (v18)
    {
      CAML::Context::set_object(*(this + 1), v17, *(this + 6), v18);
    }
  }

  v19 = *(this + 7);
  if (v19)
  {
    v19(*(this + 1), this);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

os_log_t __x_log_get_utilities_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "Utilities");
  x_log_get_utilities::log = result;
  return result;
}

void __CADeviceSupportsUniversalCompression_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    Value = CFDictionaryGetValue(v0, @"universal-buffer-compression");
    if (Value)
    {
      LOBYTE(Value) = CA_CFBoolValue(Value);
    }

    CADeviceSupportsUniversalCompression::universal = Value;

    CFRelease(v1);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,CA::Context::DeferredCommit *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::Context::DeferredCommit *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::Context::DeferredCommit *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::Context::DeferredCommit *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void CAML::ObjCBool::end(CAML::ObjCBool *this, CAML::Context *a2, CAML::State *a3, char *a4, char *a5)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v11 = a5;
  __s1 = a4;
  CAML::trim_whitespace(&__s1, &v11, a3);
  v6 = __s1;
  if (!strcmp(__s1, "true"))
  {
    v9 = MEMORY[0x1E695E4D0];
  }

  else
  {
    if (strcmp(v6, "false"))
    {
      v7 = x_strtod(v6, v13, &v11[v6]);
      v8 = MEMORY[0x1E695E4C0];
      if (v7 != 0.0)
      {
        v8 = MEMORY[0x1E695E4D0];
      }

      CAML::State::set_value(a3, *v8);
      return;
    }

    v9 = MEMORY[0x1E695E4C0];
  }

  v10 = *v9;

  CAML::State::set_value(a3, v10);
}

atomic_uint *CA::OGL::emit_shadow_uneven_round_rect(CA::OGL::Context *this, float64x2_t *a2, float32x2_t *a3, double *a4, float16x4_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, unsigned int a10, CA::Mat4Impl *a11)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v16 = *a4;
  v17 = a4[2];
  if (*a4 == v17 && (v18 = a4[1], v19 = a4[3], v18 == v19) && (v20 = a4[4], v17 == v20) && (v21 = a4[5], v19 == v21) && v20 == a4[6] && (v21 == a4[7] ? (v22 = v16 == v18) : (v22 = 0), v22))
  {
    v24[0] = *a5;
    return CA::OGL::emit_shadow_round_rect(this, a2, a3, v24, a6, a7, a8, a10, v16, a9, 15, a11);
  }

  else
  {
    result = CA::OGL::Context::shadow_cache(this);
    if (result)
    {
      result = CA::Render::ShadowCache::lookup_rounded_rect_path(result, a2->f64, a4, a10 != 0);
      if (result)
      {
        v24[0] = *a5;
        return CA::OGL::emit_shadow_path(this);
      }
    }
  }

  return result;
}

uint64_t __CADeviceNeeds2kPlaneAlignment_block_invoke()
{
  result = MGGetSInt64Answer();
  if (result == 33090)
  {
    v1 = 1;
  }

  else
  {
    v2 = -1;
    v3 = &qword_183E2FC88;
    while (v2 != 2)
    {
      v4 = *v3++;
      ++v2;
      if (v4 == result)
      {
        goto LABEL_8;
      }
    }

    v2 = 3;
LABEL_8:
    v1 = v2 < 3;
  }

  CADeviceNeeds2kPlaneAlignment::needs_2k_alignment = v1;
  return result;
}

void *x_heap_new(unint64_t a1)
{
  v1 = 2048;
  if (a1 > 0x800)
  {
    v1 = a1;
  }

  if (a1)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0x4000;
  }

  v3 = malloc_type_malloc(v2, 0x100004077774924uLL);
  if (v3)
  {
    *v3 = x_list_prepend(0, v3);
    v3[1] = v3 + 4;
    v3[2] = v2 - 32;
    v3[3] = v2;
  }

  return v3;
}

uint64_t CAML::trim_whitespace(const char **this, char **a2, unint64_t *a3)
{
  v5 = *this;
  v6 = *a2;
  for (i = MEMORY[0x1E69E9830]; v6; --v6)
  {
    v8 = *v5;
    if (!*v5)
    {
      break;
    }

    if ((v8 & 0x80000000) != 0)
    {
      if (!__maskrune(v8, 0x4000uLL))
      {
        break;
      }
    }

    else if ((*(i + 4 * v8 + 60) & 0x4000) == 0)
    {
      break;
    }

    ++v5;
  }

  result = strlen(v5);
  if (v6 && result >= 1)
  {
    v10 = &v5[result - 1];
    do
    {
      v11 = *v10;
      if ((v11 & 0x80000000) != 0)
      {
        result = __maskrune(v11, 0x4000uLL);
        if (!result)
        {
          break;
        }
      }

      else
      {
        result = *(i + 4 * v11 + 60) & 0x4000;
        if (!result)
        {
          break;
        }
      }

      *v10 = 0;
      if (!--v6)
      {
        break;
      }
    }

    while (v10-- > v5);
  }

  *this = v5;
  *a2 = v6;
  return result;
}

uint64_t CA::OGL::Context::shadow_cache(CA::OGL::Context *this)
{
  v1 = *(this + 106);
  if (!v1)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v3 = malloc_type_zone_malloc(malloc_zone, 0x30uLL, 0x165299FDuLL);
    v1 = v3;
    if (v3)
    {
      v3[3] = 0;
      v3[4] = 0;
      *(v3 + 10) = 0;
      *v3 = x_hash_table_new_(0, 0, 0, 0, 0, 0);
      *(v1 + 8) = x_hash_table_new_(0, 0, 0, 0, 0, 0);
      *(v1 + 16) = 0;
      CA::Render::add_observer(0xAu, 0, CA::Render::ShadowCache::entry_deleted, v1, 0);
      CA::Render::add_observer(3u, 0, CA::Render::ShadowCache::entry_deleted, v1, 0);
    }

    *(this + 106) = v1;
  }

  return v1;
}

atomic_uint *CA::Render::ShadowCache::lookup_rounded_rect_path(uint64_t a1, double *a2, double *a3, int a4)
{
  v126 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 40));
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(a1 + 16);
    while (1)
    {
      v10 = *v9;
      if (**v9 == *a2 && v10[1] == a2[1] && v10[2] == a2[2] && v10[3] == a2[3] && *(v10 + 112) == a4 && v10[4] == *a3 && v10[5] == a3[1] && v10[6] == a3[2] && v10[7] == a3[3] && v10[8] == a3[4] && v10[9] == a3[5] && v10[10] == a3[6] && v10[11] == a3[7])
      {
        break;
      }

      v9 = v9[1];
      if (!v9)
      {
        goto LABEL_17;
      }
    }

    x_list_remove(v8, *v9);
    *(a1 + 16) = v8;
    *(a1 + 16) = x_list_prepend(v8, v10);
    v99 = mach_absolute_time();
    v10[12] = CATimeWithHostTime(v99);
    v92 = *(v10 + 13);
    goto LABEL_66;
  }

LABEL_17:
  os_unfair_lock_unlock((a1 + 40));
  v11 = *(a3 + 1);
  v12 = *(a3 + 2);
  v111[0] = *a3;
  v111[1] = v11;
  v13 = *(a3 + 3);
  v111[2] = v12;
  v111[3] = v13;
  Mutable = CGPathCreateMutable();
  v16 = Mutable;
  v17 = a2[2];
  if (v17 > 0.0)
  {
    v18 = a2[3];
    if (v18 > 0.0)
    {
      v19 = 0;
      v20 = *a2;
      v21 = a2[1];
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v22 = vdupq_lane_s64(*&v17, 0);
      v23 = vdupq_lane_s64(*&v18, 0);
      do
      {
        v24 = &v111[v19];
        v127 = vld2q_f64(v24);
        v25 = vbslq_s8(vcgtq_f64(v22, v127.val[0]), v127.val[0], v22);
        v128.val[0] = vbicq_s8(v25, vcltzq_f64(v25));
        v127.val[0] = vbslq_s8(vcgtq_f64(v23, v127.val[1]), v127.val[1], v23);
        v128.val[1] = vbicq_s8(v127.val[0], vcltzq_f64(v127.val[0]));
        v26 = (&v122 + v19 * 16);
        vst2q_f64(v26, v128);
        v19 += 2;
      }

      while (v19 != 4);
      v27 = *&v122;
      v28 = *&v123;
      if (*&v123 + *&v122 > v17)
      {
        v29 = v17 / (*&v123 + *&v122);
        v28 = v29 * *&v123;
        v27 = v29 * *&v122;
      }

      v30 = *&v125;
      if (*&v125 + *&v124 <= v17)
      {
        v109 = *&v124;
      }

      else
      {
        v31 = v17 / (*&v125 + *&v124);
        v109 = v31 * *&v124;
        v30 = v31 * *&v125;
      }

      v32 = *(&v123 + 1);
      v33 = *(&v124 + 1);
      if (*(&v124 + 1) + *(&v123 + 1) > v18)
      {
        v34 = v18 / (*(&v124 + 1) + *(&v123 + 1));
        v32 = v34 * *(&v123 + 1);
        v33 = v34 * *(&v124 + 1);
      }

      v35 = *(&v122 + 1);
      v36 = *(&v125 + 1);
      if (*(&v125 + 1) + *(&v122 + 1) > v18)
      {
        v37 = v18 / (*(&v125 + 1) + *(&v122 + 1));
        v36 = v37 * *(&v125 + 1);
        v35 = v37 * *(&v122 + 1);
      }

      v108 = v27;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      if (a4)
      {
        v38.f64[0] = v17;
        v38.f64[1] = v18;
        v39.f64[0] = v30;
        v39.f64[1] = v36;
        v40 = vaddq_f64(vdivq_f64(vmulq_f64(v38, vdupq_n_s64(0xBFEE43E411A05F26)), v39), vdupq_n_s64(0x400721F208D02F93uLL));
        __asm { FMOV            V1.2D, #1.0 }

        v46 = vbslq_s8(vcgtq_f64(v40, _Q1), _Q1, v40);
        _Q1 = vbicq_s8(v46, vcltzq_f64(v46));
      }

      else
      {
        __asm { FMOV            V1.2D, #1.0 }
      }

      v104 = v33;
      v105 = v28;
      v106 = v35;
      v107 = v32;
      v48 = 0;
      v100 = v18;
      v101 = v17;
      v49 = v20 + v17;
      v50 = v21 + v18;
      v51 = vdupq_lane_s64(_Q1.i64[0], 0);
      v52 = vdupq_laneq_s64(_Q1, 1);
      do
      {
        v53 = continuous_p[v48];
        v54 = vsubq_f64(circular_p[v48], v53);
        *(&v117 + v48 * 16) = vmlaq_f64(v53, v51, v54);
        *(&v112 + v48 * 16) = vmlaq_f64(v53, v52, v54);
        ++v48;
      }

      while (v48 != 5);
      v102 = v36;
      v103 = v30;
      CGPathMoveToPoint(Mutable, 0, v20 + *(&v116 + 1) * v30, v21 + *&v112 * v36);
      CGPathAddCurveToPoint(v16, 0, v20 + *&v116 * v103, v21 + *(&v112 + 1) * v102, v20 + *(&v115 + 1) * v103, v21 + *&v113 * v102, v20 + *&v115 * v103, v21 + *(&v113 + 1) * v102);
      CGPathAddCurveToPoint(v16, 0, v20 + *(&v114 + 1) * v103, v21 + *&v114 * v102, v20 + *&v119 * v103, v21 + *(&v114 + 1) * v102, v20 + *(&v118 + 1) * v103, v21 + *&v120 * v102);
      CGPathAddCurveToPoint(v16, 0, v20 + *&v118 * v103, v21 + *(&v120 + 1) * v102, v20 + *(&v117 + 1) * v103, v21 + *&v121 * v102, v20 + *&v117 * v103, v21 + *(&v121 + 1) * v102);
      if (a4)
      {
        v55.f64[0] = v101;
        v55.f64[1] = v100;
        v56 = v109;
        v57.f64[0] = v109;
        v58 = v104;
        v57.f64[1] = v104;
        v59 = vaddq_f64(vdivq_f64(vmulq_f64(v55, vdupq_n_s64(0xBFEE43E411A05F26)), v57), vdupq_n_s64(0x400721F208D02F93uLL));
        __asm { FMOV            V1.2D, #1.0 }

        v61 = vbslq_s8(vcgtq_f64(v59, _Q1), _Q1, v59);
        _Q1 = vbicq_s8(v61, vcltzq_f64(v61));
      }

      else
      {
        __asm { FMOV            V1.2D, #1.0 }

        v56 = v109;
        v58 = v104;
      }

      v63 = 0;
      v64 = vdupq_lane_s64(_Q1.i64[0], 0);
      v65 = vdupq_laneq_s64(_Q1, 1);
      do
      {
        v66 = continuous_p[v63];
        v67 = vsubq_f64(circular_p[v63], v66);
        *(&v117 + v63 * 16) = vmlaq_f64(v66, v64, v67);
        *(&v112 + v63 * 16) = vmlaq_f64(v66, v65, v67);
        ++v63;
      }

      while (v63 != 5);
      v110 = v56;
      CGPathAddLineToPoint(v16, 0, v49 - *&v117 * v56, v21 + *(&v121 + 1) * v58);
      CGPathAddCurveToPoint(v16, 0, v49 - *(&v117 + 1) * v110, v21 + *&v121 * v104, v49 - *&v118 * v110, v21 + *(&v120 + 1) * v104, v49 - *(&v118 + 1) * v110, v21 + *&v120 * v104);
      CGPathAddCurveToPoint(v16, 0, v49 - *&v119 * v110, v21 + *(&v119 + 1) * v104, v49 - *(&v119 + 1) * v110, v21 + *&v114 * v104, v49 - *&v115 * v110, v21 + *(&v113 + 1) * v104);
      CGPathAddCurveToPoint(v16, 0, v49 - *(&v115 + 1) * v110, v21 + *&v113 * v104, v49 - *&v116 * v110, v21 + *(&v112 + 1) * v104, v49 - *(&v116 + 1) * v110, v21 + *&v112 * v104);
      if (a4)
      {
        v68.f64[0] = v101;
        v68.f64[1] = v100;
        v69 = v105;
        v70.f64[0] = v105;
        v70.f64[1] = v107;
        v71 = vaddq_f64(vdivq_f64(vmulq_f64(v68, vdupq_n_s64(0xBFEE43E411A05F26)), v70), vdupq_n_s64(0x400721F208D02F93uLL));
        __asm { FMOV            V1.2D, #1.0 }

        v73 = vbslq_s8(vcgtq_f64(v71, _Q1), _Q1, v71);
        _Q1 = vbicq_s8(v73, vcltzq_f64(v73));
      }

      else
      {
        __asm { FMOV            V1.2D, #1.0 }

        v69 = v105;
      }

      v75 = 0;
      v76 = vdupq_lane_s64(_Q1.i64[0], 0);
      v77 = vdupq_laneq_s64(_Q1, 1);
      do
      {
        v78 = continuous_p[v75];
        v79 = vsubq_f64(circular_p[v75], v78);
        *(&v117 + v75 * 16) = vmlaq_f64(v78, v76, v79);
        *(&v112 + v75 * 16) = vmlaq_f64(v78, v77, v79);
        ++v75;
      }

      while (v75 != 5);
      CGPathAddLineToPoint(v16, 0, v49 - *(&v116 + 1) * v69, v50 - *&v112 * v107);
      CGPathAddCurveToPoint(v16, 0, v49 - *&v116 * v105, v50 - *(&v112 + 1) * v107, v49 - *(&v115 + 1) * v105, v50 - *&v113 * v107, v49 - *&v115 * v105, v50 - *(&v113 + 1) * v107);
      CGPathAddCurveToPoint(v16, 0, v49 - *(&v114 + 1) * v105, v50 - *&v114 * v107, v49 - *&v119 * v105, v50 - *(&v114 + 1) * v107, v49 - *(&v118 + 1) * v105, v50 - *&v120 * v107);
      CGPathAddCurveToPoint(v16, 0, v49 - *&v118 * v105, v50 - *(&v120 + 1) * v107, v49 - *(&v117 + 1) * v105, v50 - *&v121 * v107, v49 - *&v117 * v105, v50 - *(&v121 + 1) * v107);
      if (a4)
      {
        v80.f64[0] = v101;
        v80.f64[1] = v100;
        v81 = vmulq_f64(v80, vdupq_n_s64(0xBFEE43E411A05F26));
        v80.f64[0] = v108;
        v82 = v106;
        v80.f64[1] = v106;
        v83 = vaddq_f64(vdivq_f64(v81, v80), vdupq_n_s64(0x400721F208D02F93uLL));
        __asm { FMOV            V1.2D, #1.0 }

        v85 = vbslq_s8(vcgtq_f64(v83, _Q1), _Q1, v83);
        _Q1 = vbicq_s8(v85, vcltzq_f64(v85));
      }

      else
      {
        __asm { FMOV            V1.2D, #1.0 }

        v82 = v106;
      }

      v87 = 0;
      v88 = vdupq_lane_s64(_Q1.i64[0], 0);
      v89 = vdupq_laneq_s64(_Q1, 1);
      do
      {
        v90 = continuous_p[v87];
        v91 = vsubq_f64(circular_p[v87], v90);
        *(&v117 + v87 * 16) = vmlaq_f64(v90, v88, v91);
        *(&v112 + v87 * 16) = vmlaq_f64(v90, v89, v91);
        ++v87;
      }

      while (v87 != 5);
      CGPathAddLineToPoint(v16, 0, v20 + *&v117 * v108, v50 - *(&v121 + 1) * v82);
      CGPathAddCurveToPoint(v16, 0, v20 + *(&v117 + 1) * v108, v50 - *&v121 * v106, v20 + *&v118 * v108, v50 - *(&v120 + 1) * v106, v20 + *(&v118 + 1) * v108, v50 - *&v120 * v106);
      CGPathAddCurveToPoint(v16, 0, v20 + *&v119 * v108, v50 - *(&v119 + 1) * v106, v20 + *(&v119 + 1) * v108, v50 - *&v114 * v106, v20 + *&v115 * v108, v50 - *(&v113 + 1) * v106);
      CGPathAddCurveToPoint(v16, 0, v20 + *(&v115 + 1) * v108, v50 - *&v113 * v106, v20 + *&v116 * v108, v50 - *(&v112 + 1) * v106, v20 + *(&v116 + 1) * v108, v50 - *&v112 * v106);
      CGPathCloseSubpath(v16);
    }
  }

  v92 = CA::Render::Path::new_path(v16, v15);
  CGPathRelease(v16);
  if (v92)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v93 = malloc_type_zone_malloc(malloc_zone, 0x78uLL, 0x165299FDuLL);
    v94 = v93;
    if (v93)
    {
      v93[13] = 0;
    }

    *v93 = *a2;
    *(v93 + 1) = *(a2 + 1);
    *(v93 + 2) = *a3;
    *(v93 + 3) = *(a3 + 1);
    *(v93 + 4) = *(a3 + 2);
    *(v93 + 5) = *(a3 + 3);
    *(v93 + 112) = a4;
    v95 = mach_absolute_time();
    *(v94 + 96) = CATimeWithHostTime(v95);
    v96 = *(v94 + 104);
    if (v96 != v92)
    {
      if (v96 && atomic_fetch_add(v96 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v96 + 16))(v96);
      }

      v97 = v92;
      if (!atomic_fetch_add(v92 + 2, 1u))
      {
        v97 = 0;
        atomic_fetch_add(v92 + 2, 0xFFFFFFFF);
      }

      *(v94 + 104) = v97;
    }

    if (atomic_fetch_add(v92 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v92 + 16))(v92);
    }

    os_unfair_lock_lock((a1 + 40));
    *(a1 + 16) = x_list_prepend(*(a1 + 16), v94);
LABEL_66:
    os_unfair_lock_unlock((a1 + 40));
  }

  return v92;
}