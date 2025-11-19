unint64_t CI::sw_cmcubeopaque(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  v11 = *(a1 + 40);
  v12 = *(v11 + 8);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v11 + 16) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(a2 + (*(v11 + 32) << 6));
  v17 = *(v11 + 64);
  v18 = *(v11 + 56);
  v19 = (a3 + 16 * v18);
  v20 = (a2 + (v18 << 6));
  if (v17 == 5)
  {
    v20 = v19;
  }

  v21 = *v15;
  v21.i32[3] = 0;
  v22 = vmaxnmq_f32(v21, xmmword_19CF2D010);
  v22.i32[3] = 0;
  v23 = vmulq_n_f32(vminnmq_f32(v22, xmmword_19CF2D020), COERCE_FLOAT(*v20));
  v24 = *&v23.f64[1];
  v25 = fmaxf(floorf(*&v23.f64[1]), 0.0);
  *&v23.f64[0] = vadd_f32(*&v23.f64[0], 0x3F0000003F000000);
  *a8.i64 = COERCE_FLOAT(*v20) + 1.0;
  *&v26 = *a8.i64 * v25;
  a9.i32[0] = 0;
  a10.i32[0] = 0;
  a10.i32[1] = v26;
  v27 = vadd_f32(*&v23.f64[0], *a10.i8);
  v28 = *a8.i64 * fminf(v25 + 1.0, COERCE_FLOAT(*v20));
  *&v28 = v28;
  a9.i32[1] = LODWORD(v28);
  v29 = vadd_f32(*&v23.f64[0], *a9.i8);
  v40 = vextq_s8(*v20, *v20, 8uLL).u64[0];
  *v30.i64 = CI::BitmapSampler::read(v16, COERCE_DOUBLE(vmul_f32(v40, v27)), v23, *&v27, v28, a8, a9, a10, a11);
  v41 = v30;
  *v38.i64 = CI::BitmapSampler::read(v16, COERCE_DOUBLE(vmul_f32(v40, v29)), v31, v32, v33, v34, v35, v36, v37);
  return vmlaq_n_f32(vmulq_n_f32(v41, 1.0 - (v24 - v25)), v38, v24 - v25).u64[0];
}

double CI::sw_cm1x3lut(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t a4, double a5, double a6, double a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  v11 = *(a1 + 40);
  v12 = *(v11 + 8);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v11 + 16) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(a2 + (*(v11 + 32) << 6));
  v17 = *(v11 + 64);
  v18 = *(v11 + 56);
  v19 = (a3 + 16 * v18);
  v20 = (a2 + (v18 << 6));
  if (v17 == 5)
  {
    v20 = v19;
  }

  v21 = *v15;
  *a4.f32 = *v20;
  v21.i32[3] = 0;
  v22 = vmaxnmq_f32(v21, 0);
  v22.i32[3] = 0;
  v23 = vmulq_f32(a4, vminnmq_f32(v22, xmmword_19CF23BD0));
  *a4.f32 = vdup_lane_s32(*v20, 1);
  v24 = vaddq_f32(a4, v23);
  return CI::BitmapSampler::read(v16, COERCE_DOUBLE(LODWORD(v24.f64[0]) | 0x3F00000000000000), v24, 0.00781250185, a7, a8, a9, a10, a11);
}

void *CI::InstanceCounted<(CI::Type)4>::~InstanceCounted(void *result)
{
  *result = &unk_1F1035670;
  atomic_fetch_add(&dword_1ED7C47BC[2], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)4>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1035670;
  atomic_fetch_add(&dword_1ED7C47BC[2], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

uint64_t CI::CropImage::alpha_behavior(CI::CropImage *this)
{
  v2 = (*(**(this + 15) + 128))(*(this + 15));
  v8.origin.x = (*(**(this + 15) + 88))(*(this + 15));
  if (!CGRectContainsRect(v8, *(this + 136)) || (v3 = *(this + 17), v4 = *(this + 18), v5 = *(this + 19), v6 = *(this + 20), v9.origin.x = v3, v9.origin.y = v4, v9.size.width = v5, v9.size.height = v6, v11 = CGRectIntegral(v9), v10.origin.x = v3, v10.origin.y = v4, v10.size.width = v5, v10.size.height = v6, !CGRectEqualToRect(v10, v11)))
  {
    if (v2 == 1)
    {
      return 0;
    }

    else
    {
      return v2;
    }
  }

  return v2;
}

CI::CropNode *CI::CropImage::render_graph_core(uint64_t a1, uint64_t a2, CI::CropNode *a3, uint64_t a4, int a5)
{
  (*(*a1 + 88))(a1);
  v15 = *(a4 + 8);
  v14 = (a4 + 8);
  v13 = v15;
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = *(a1 + 96);
  v21 = v14;
  do
  {
    v22 = *(v13 + 4);
    v23 = v22 >= v20;
    v24 = v22 < v20;
    if (v23)
    {
      v21 = v13;
    }

    v13 = *&v13[v24];
  }

  while (v13);
  if (v21 == v14 || v20 < *(v21 + 4) || (v25 = v21[5], v26 = v21[6], v27 = v21[7], v28 = v21[8], v34.origin.x = v25, v34.origin.y = v26, v34.size.width = v27, v34.size.height = v28, IsEmpty = CGRectIsEmpty(v34), v35.origin.x = v16, v35.origin.y = v17, v35.size.width = v18, v35.size.height = v19, v36.origin.x = v25, v36.origin.y = v26, v36.size.width = v27, v36.size.height = v28, v30 = CGRectContainsRect(v35, v36), IsEmpty))
  {
LABEL_10:
    operator new();
  }

  v32 = v30;
  if (a3)
  {
    a3 = CI::Object::ref(a3);
  }

  if (v32 && !CI_GRAPH_FORCE_CROP())
  {
    return a3;
  }

  v33 = CI::CropNode::append_to_tree(a3, (a5 < 2), *(a1 + 136));
  if (a3)
  {
    CI::Object::unref(a3);
  }

  return v33;
}

void CI::CropImage::~CropImage(CI::CropImage *this)
{
  *(this + 16) = &unk_1F10315A0;
  atomic_fetch_add(&dword_1ED7C47BC[4], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);
}

{
  *(this + 16) = &unk_1F10315A0;
  atomic_fetch_add(&dword_1ED7C47BC[4], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);

  JUMPOUT(0x19EAF5590);
}

double CI::CropImage::extent(CI::CropImage *this)
{
  (*(**(this + 15) + 88))(*(this + 15));
  v6 = *(this + 17);
  v7 = *(this + 18);
  v8 = *(this + 19);
  v9 = *(this + 20);

  *&result = CGRectIntersection(*&v2, *&v6);
  return result;
}

size_t CI::CropImage::print_for_graph_core(CI::CropImage *this, __sFILE *__stream)
{
  fwrite("crop ", 5uLL, 1uLL, __stream);
  v5 = *(this + 17);
  v6 = *(this + 18);
  v7 = *(this + 19);
  v8 = *(this + 20);

  return CI::fprintf(__stream, v4, *&v5);
}

void non-virtual thunk toCI::CropImage::~CropImage(CI::CropImage *this)
{
  *this = &unk_1F10315A0;
  atomic_fetch_add(&dword_1ED7C47BC[4], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));
}

{
  *this = &unk_1F10315A0;
  atomic_fetch_add(&dword_1ED7C47BC[4], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));

  JUMPOUT(0x19EAF5590);
}

void CI::FillImage::FillImage(CI::FillImage *this, CGColor *a2)
{
  CI::Image::Image(this);
  v2[15] = &unk_1F10359E8;
  atomic_fetch_add(&dword_1ED7C47BC[7], 1u);
  *v2 = &unk_1F1035848;
  v2[15] = &unk_1F10359C0;
  operator new();
}

char *CI::XXHashHelper::add(CI::XXHashHelper *this, CGColorRef color)
{
  if (color)
  {
    ColorSpace = CGColorGetColorSpace(color);
    CI::XXHashHelper::add(this, ColorSpace);
    NumberOfComponents = CGColorGetNumberOfComponents(color);
    result = CGColorGetComponents(color);
    if (result && 8 * NumberOfComponents)
    {

      return XXH64_update(this, result, 8 * NumberOfComponents);
    }
  }

  else
  {

    return CI::XXHashHelper::addstr(this, "nilCGColorRef");
  }

  return result;
}

CI::FillImage *CI::FillImage::FillImage(CI::FillImage *this, float a2, float a3, float a4, float a5)
{
  CI::Image::Image(this);
  v10[15] = &unk_1F10359E8;
  atomic_fetch_add(&dword_1ED7C47BC[7], 1u);
  *v10 = &unk_1F1035848;
  v10[15] = &unk_1F10359C0;
  if (a2 != 0.0 || a3 != 0.0 || a4 != 0.0 || a5 != 0.0)
  {
    operator new();
  }

  *(this + 16) = 0;
  XXH64_reset(v14, 0);
  __src = (*(*this + 16))(this);
  XXH64_update(v14, &__src, 4uLL);
  v11 = *(this + 16);
  if (v11)
  {
    XXH64_update(v14, (v11 + 24), 0x10uLL);
    CI::XXHashHelper::add(v14, *(v11 + 40));
  }

  v12 = XXH64_digest(v14);
  *(this + 12) = v12;
  *(this + 13) = v12;
  *(this + 56) = 1;
  return this;
}

void CI::FillImage::~FillImage(CI::FillImage *this)
{
  *this = &unk_1F1035848;
  *(this + 15) = &unk_1F10359C0;
  v2 = *(this + 16);
  if (v2)
  {
    CI::Object::unref(v2);
  }

  *(this + 15) = &unk_1F10359E8;
  *(this + 16) = 0;
  atomic_fetch_add(&dword_1ED7C47BC[7], 0xFFFFFFFF);

  CI::Image::~Image(this);
}

{
  CI::FillImage::~FillImage(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::FillImage::~FillImage(CI::FillImage *this)
{
  CI::FillImage::~FillImage((this - 120));
}

{
  CI::FillImage::~FillImage((this - 120));

  JUMPOUT(0x19EAF5590);
}

size_t CI::FillImage::print_for_graph_core(CI::FillImage *this, __sFILE *__stream)
{
  fwrite("fill ", 5uLL, 1uLL, __stream);
  v4 = *(this + 16);
  if (v4)
  {
    v5 = *(*v4 + 32);

    return v5();
  }

  else
  {

    return fwrite("clear", 5uLL, 1uLL, __stream);
  }
}

uint64_t CI::FillImage::add_args_to_hash(uint64_t result, CI::XXHashHelper *this)
{
  v2 = *(result + 128);
  if (v2)
  {
    v4 = result;
    CI::XXHashHelper::add(this, *(v2 + 40));
    v5 = (*(v4 + 128) + 24);

    return XXH64_update(this, v5, 0x10uLL);
  }

  return result;
}

void *CI::InstanceCounted<(CI::Type)9>::~InstanceCounted(void *result)
{
  *result = &unk_1F10359E8;
  atomic_fetch_add(&dword_1ED7C47BC[7], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)9>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F10359E8;
  atomic_fetch_add(&dword_1ED7C47BC[7], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

CI::PremultiplyNode *CI::GammaImage::render_graph_core(double *a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a1 + 184))(a1);
  if (a3)
  {
    v6 = CI::Object::ref(a3);
    v7 = CI::PremultiplyNode::append_to_tree(v6, 0xFFFFFFFFLL, v5);
    if (v6)
    {
      CI::Object::unref(v6);
    }
  }

  else
  {
    v7 = CI::PremultiplyNode::append_to_tree(0, 0xFFFFFFFFLL, v5);
  }

  v8 = CI::GammaNode::append_to_tree(v7, v5, a1[17]);
  if (v7)
  {
    CI::Object::unref(v7);
  }

  v9 = CI::PremultiplyNode::append_to_tree(v8, 1, v5);
  if (v8)
  {
    CI::Object::unref(v8);
  }

  return v9;
}

float CI::GammaImage::headroom(CI::GammaImage *this)
{
  v2 = (*(*this + 48))(this, 0);
  v3 = (*(*v2 + 232))(v2);
  result = 0.0;
  if (v3 >= 1.0)
  {
    return pow(v3, *(this + 17));
  }

  return result;
}

void CI::GammaImage::~GammaImage(CI::GammaImage *this)
{
  *this = &unk_1F1035A10;
  *(this + 16) = &unk_1F1031840;
  *(this + 17) = 0;
  atomic_fetch_add(&dword_1ED7C47BC[8], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);
}

{
  *this = &unk_1F1035A10;
  *(this + 16) = &unk_1F1031840;
  *(this + 17) = 0;
  atomic_fetch_add(&dword_1ED7C47BC[8], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::GammaImage::~GammaImage(CI::GammaImage *this)
{
  *(this - 16) = &unk_1F1035A10;
  *this = &unk_1F1031840;
  *(this + 1) = 0;
  atomic_fetch_add(&dword_1ED7C47BC[8], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));
}

{
  CI::GammaImage::~GammaImage((this - 128));
}

uint64_t CI::ColorKernelImage::ColorKernelImage(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, int a5, int a6, double a7, double a8, double a9, double a10, float a11, float a12)
{
  *&v36 = a7;
  *(&v36 + 1) = a8;
  *&v37 = a9;
  *(&v37 + 1) = a10;
  CI::Image::Image(a1);
  v20[15] = &unk_1F1035D68;
  atomic_fetch_add(&dword_1ED7C47BC[9], 1u);
  *v20 = &unk_1F1035BC0;
  v20[15] = &unk_1F1035D40;
  v20[16] = a2;
  v20[24] = 0;
  if (a2 && *(a2 + 12) == 1)
  {
    CI::Object::ref(a2);
  }

  *(a1 + 136) = a3;
  v21 = v37;
  *(a1 + 144) = v36;
  *(a1 + 160) = v21;
  *(a1 + 176) = _Block_copy(a4);
  *(a1 + 184) = a5;
  if (a6 && (CI::format_has_alpha(a6) & 1) == 0)
  {
    *(a1 + 184) = 1;
  }

  *(a1 + 188) = a6;
  *(a1 + 192) = a11;
  *(a1 + 196) = a12;
  *(a1 + 88) = 0;
  v22 = (*(*a1 + 40))(a1);
  if (v22 >= 1)
  {
    v23 = 0;
    v24 = *(a1 + 88);
    do
    {
      if (v24 <= *((*(*a1 + 48))(a1, v23) + 88) + 1)
      {
        v24 = *((*(*a1 + 48))(a1, v23) + 88) + 1;
      }

      else
      {
        v24 = *(a1 + 88);
      }

      *(a1 + 88) = v24;
      v23 = (v23 + 1);
    }

    while (v22 != v23);
  }

  XXH64_reset(v35, 0);
  LODWORD(__src) = (*(*a1 + 16))(a1);
  XXH64_update(v35, &__src, 4uLL);
  (*(*a2 + 64))(a2, v35);
  v25 = *(a1 + 136);
  if (*v25 >= 1)
  {
    v26 = 0;
    v27 = -80;
    do
    {
      if (v26 > 9)
      {
        v28 = (*(v25 + 2) + v27);
      }

      else
      {
        v28 = &v25[2 * v26 + 6];
      }

      CI::Kernel::add_argument_to_digest(v35, *v28, 0);
      ++v26;
      v25 = *(a1 + 136);
      v27 += 8;
    }

    while (v26 < *v25);
  }

  XXH64_update(v35, &v36, 0x20uLL);
  __src = *&a5;
  XXH64_update(v35, &__src, 4uLL);
  __src = *&a6;
  XXH64_update(v35, &__src, 4uLL);
  __src = a11;
  XXH64_update(v35, &__src, 4uLL);
  __src = a12;
  XXH64_update(v35, &__src, 4uLL);
  *(a1 + 96) = XXH64_digest(v35);
  XXH64_reset(v35, 0);
  LODWORD(__src) = (*(*a1 + 16))(a1);
  XXH64_update(v35, &__src, 4uLL);
  (*(*a2 + 64))(a2, v35);
  v29 = *(a1 + 136);
  if (*v29 >= 1)
  {
    v30 = 0;
    v31 = -80;
    do
    {
      if (v30 > 9)
      {
        v32 = (*(v29 + 2) + v31);
      }

      else
      {
        v32 = &v29[2 * v30 + 6];
      }

      CI::Kernel::add_argument_to_digest(v35, *v32, 1);
      ++v30;
      v29 = *(a1 + 136);
      v31 += 8;
    }

    while (v30 < *v29);
  }

  XXH64_update(v35, &v36, 0x20uLL);
  __src = *&a5;
  XXH64_update(v35, &__src, 4uLL);
  __src = *&a6;
  XXH64_update(v35, &__src, 4uLL);
  __src = a11;
  XXH64_update(v35, &__src, 4uLL);
  __src = a12;
  XXH64_update(v35, &__src, 4uLL);
  *(a1 + 104) = XXH64_digest(v35);
  *(a1 + 112) = *(a2 + 48) != 0;
  if (v22 >= 1)
  {
    v33 = 0;
    do
    {
      *(a1 + 112) &= *((*(*a1 + 48))(a1, v33) + 112);
      v33 = (v33 + 1);
    }

    while (v22 != v33);
  }

  *(a1 + 113) = 0;
  return a1;
}

void CI::ColorKernelImage::~ColorKernelImage(CI::ColorKernelImage *this)
{
  *this = &unk_1F1035BC0;
  *(this + 15) = &unk_1F1035D40;
  v2 = *(this + 16);
  if (v2 && *(v2 + 12) == 1)
  {
    CI::Object::unref(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    CI::SerialObjectPtrArray::~SerialObjectPtrArray(v3);
    MEMORY[0x19EAF5590]();
  }

  _Block_release(*(this + 22));
  *(this + 22) = 0;
  *(this + 15) = &unk_1F1035D68;
  atomic_fetch_add(&dword_1ED7C47BC[9], 0xFFFFFFFF);

  CI::Image::~Image(this);
}

{
  CI::ColorKernelImage::~ColorKernelImage(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::ColorKernelImage::~ColorKernelImage(CI::ColorKernelImage *this)
{
  CI::ColorKernelImage::~ColorKernelImage((this - 120));
}

{
  CI::ColorKernelImage::~ColorKernelImage((this - 120));

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::ColorKernelImage::properties(CI::ColorKernelImage *this)
{
  v1 = **(this + 17);
  if (v1 < 1)
  {
    return 0;
  }

  v3 = 0;
  for (i = -80; ; i += 8)
  {
    v5 = *(this + 17);
    v6 = (v3 > 9 ? *(v5 + 16) + i : v5 + 8 * v3 + 24);
    v7 = *v6;
    v8 = (*(**v6 + 16))(*v6);
    if (CI::is_any_TypeImage(v8))
    {
      break;
    }

    if (v1 == ++v3)
    {
      return 0;
    }
  }

  v10 = *(*v7 + 200);

  return v10(v7);
}

uint64_t CI::ColorKernelImage::avdepthdata(CI::ColorKernelImage *this)
{
  v1 = **(this + 17);
  if (v1 < 1)
  {
    return 0;
  }

  v3 = 0;
  for (i = -80; ; i += 8)
  {
    v5 = *(this + 17);
    v6 = (v3 > 9 ? *(v5 + 16) + i : v5 + 8 * v3 + 24);
    v7 = *v6;
    v8 = (*(**v6 + 16))(*v6);
    if (CI::is_any_TypeImage(v8))
    {
      break;
    }

    if (v1 == ++v3)
    {
      return 0;
    }
  }

  v10 = *(*v7 + 208);

  return v10(v7);
}

uint64_t CI::ColorKernelImage::avmatte(CI::ColorKernelImage *this)
{
  v1 = **(this + 17);
  if (v1 < 1)
  {
    return 0;
  }

  v3 = 0;
  for (i = -80; ; i += 8)
  {
    v5 = *(this + 17);
    v6 = (v3 > 9 ? *(v5 + 16) + i : v5 + 8 * v3 + 24);
    v7 = *v6;
    v8 = (*(**v6 + 16))(*v6);
    if (CI::is_any_TypeImage(v8))
    {
      break;
    }

    if (v1 == ++v3)
    {
      return 0;
    }
  }

  v10 = *(*v7 + 216);

  return v10(v7);
}

uint64_t CI::ColorKernelImage::ssmatte(CI::ColorKernelImage *this)
{
  v1 = **(this + 17);
  if (v1 < 1)
  {
    return 0;
  }

  v3 = 0;
  for (i = -80; ; i += 8)
  {
    v5 = *(this + 17);
    v6 = (v3 > 9 ? *(v5 + 16) + i : v5 + 8 * v3 + 24);
    v7 = *v6;
    v8 = (*(**v6 + 16))(*v6);
    if (CI::is_any_TypeImage(v8))
    {
      break;
    }

    if (v1 == ++v3)
    {
      return 0;
    }
  }

  v10 = *(*v7 + 224);

  return v10(v7);
}

uint64_t CI::ColorKernelImage::add_args_to_hash(uint64_t a1, CI::Kernel *a2)
{
  (*(**(a1 + 128) + 64))(*(a1 + 128));
  __src = **(a1 + 136);
  v4 = __src;
  XXH64_update(a2, &__src, 4uLL);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = -80;
    do
    {
      v7 = *(a1 + 136);
      if (v5 > 9)
      {
        v8 = (*(v7 + 16) + v6);
      }

      else
      {
        v8 = (v7 + 8 * v5 + 24);
      }

      v9 = *v8;
      v10 = (*(**v8 + 16))(*v8);
      if (!CI::is_any_TypeImage(v10))
      {
        CI::Kernel::add_argument_to_digest(a2, v9, 0);
      }

      ++v5;
      v6 += 8;
    }

    while (v4 != v5);
  }

  v13 = (*(**(a1 + 128) + 56))(*(a1 + 128));
  return XXH64_update(a2, &v13, 8uLL);
}

void CI::ColorKernelImage::render_graph_core(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 128);
  if (!(*(*v3 + 72))(v3) || v3[4] || (*(*a2 + 16))(a2) == 85)
  {
    operator new();
  }

  v4 = ci_logger_render();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(*(a1 + 128) + 24);
    v6 = (*(*a2 + 312))(a2);
    *buf = 136446466;
    v9 = v5;
    v10 = 2082;
    v11 = v6;
    _os_log_error_impl(&dword_19CC36000, v4, OS_LOG_TYPE_ERROR, "Cannot render image (with Metal kernel '%{public}s') using an %{public}s context.", buf, 0x16u);
  }

  operator new();
}

BOOL CI::Image::roi_of_child_intersects_extent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = CI::Image::lookup_union_roi(a1, a2);
  v6 = (*(*a1 + 80))(a1, a3, v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = (*(*a1 + 48))(a1, a3);
  v20.origin.x = (*(*v13 + 88))(v13);
  v20.origin.y = v14;
  v20.size.width = v15;
  v20.size.height = v16;
  v18.origin.x = v6;
  v18.origin.y = v8;
  v18.size.width = v10;
  v18.size.height = v12;
  v19 = CGRectIntersection(v18, v20);
  return !CGRectIsEmpty(v19);
}

uint64_t CI::ColorKernelImage::print_for_graph_core(CI::ColorKernelImage *this, __sFILE *a2)
{
  fprintf(a2, "colorkernel %s", *(*(this + 16) + 24));
  v4 = **(this + 17);
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = *(this + 17);
      if (i > 9)
      {
        v7 = (*(v6 + 16) + 8 * i - 80);
      }

      else
      {
        v7 = (v6 + 8 * i + 24);
      }

      v8 = *v7;
      if (i)
      {
        v9 = 44;
      }

      else
      {
        v9 = 40;
      }

      fputc(v9, a2);
      v10 = *(this + 16);
      if (*(v10 + 12) == 1)
      {
        name = CI::KernelArguments::get_name((v10 + 136), i);
      }

      else if (i >= *(v10 + 20))
      {
        name = 0;
      }

      else
      {
        name = *(*(v10 + 72) + 8 * i);
      }

      fputs(name, a2);
      v12 = (*(*v8 + 16))(v8);
      if (!CI::is_any_TypeImage(v12))
      {
        fputc(61, a2);
        (*(*v8 + 32))(v8, a2, 0);
      }
    }
  }

  if (v4)
  {
    fputc(41, a2);
  }

  result = *(this + 47);
  if (result)
  {
    v14 = CI::name_for_format(result);
    return fprintf(a2, " outputFormat=%s", v14);
  }

  return result;
}

uint64_t CI::ColorKernelImage::child_count(CI::ColorKernelImage *this)
{
  v1 = **(this + 17);
  if (v1 < 1)
  {
    return 0;
  }

  v3 = 0;
  LODWORD(v4) = 0;
  v5 = -80;
  do
  {
    v6 = *(this + 17);
    if (v3 > 9)
    {
      v7 = *(v6 + 16) + v5;
    }

    else
    {
      v7 = v6 + 8 * v3 + 24;
    }

    v8 = (*(**v7 + 16))();
    v4 = (v4 + CI::is_any_TypeImage(v8));
    ++v3;
    v5 += 8;
  }

  while (v1 != v3);
  return v4;
}

uint64_t CI::ColorKernelImage::alpha_behavior(CI::ColorKernelImage *this)
{
  if (*(this + 184))
  {
    return 1;
  }

  if (*(*(this + 16) + 155))
  {
    return 0xFFFFFFFFLL;
  }

  result = (*(*this + 48))(this, 0);
  if (result)
  {
    v3 = result;
    v4 = *(this + 16);
    if (*(v4 + 152) == 1)
    {
      result = (*(*result + 128))(result);
      if (result == -1)
      {
        return result;
      }

      v4 = *(this + 16);
    }

    if (*(v4 + 154) != 1)
    {
      return 0;
    }

    result = (*(*v3 + 128))(v3);
    if (result != 1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CI::ColorKernelImage::child(CI::ColorKernelImage *this, int a2)
{
  v2 = **(this + 17);
  if (v2 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = -80;
    do
    {
      v8 = *(this + 17);
      if (v5 > 9)
      {
        v9 = (*(v8 + 16) + v7);
      }

      else
      {
        v9 = (v8 + 8 * v5 + 24);
      }

      v10 = *v9;
      v11 = (*(**v9 + 16))(*v9);
      if (CI::is_any_TypeImage(v11))
      {
        if (v6 == a2)
        {
          return v10;
        }

        ++v6;
      }

      ++v5;
      v7 += 8;
    }

    while (v2 != v5);
  }

  return 0;
}

uint64_t CI::ColorKernelImage::child_argument_index(CI::ColorKernelImage *this, uint64_t a2)
{
  v2 = **(this + 17);
  if (v2 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = -80;
    do
    {
      v8 = *(this + 17);
      if (v5 > 9)
      {
        v9 = *(v8 + 16) + v7;
      }

      else
      {
        v9 = v8 + 8 * v5 + 24;
      }

      v10 = (*(**v9 + 16))();
      if (CI::is_any_TypeImage(v10))
      {
        if (v6 == a2)
        {
          return a2;
        }

        ++v6;
      }

      ++v5;
      v7 += 8;
    }

    while (v2 != v5);
  }

  return 0xFFFFFFFFLL;
}

BOOL CI::ColorKernelImage::child_uses_roi_callback(CI::ColorKernelImage *this, int a2)
{
  v2 = **(this + 17);
  if (v2 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  for (i = -80; ; i += 8)
  {
    v8 = *(this + 17);
    if (v5 > 9)
    {
      v9 = *(v8 + 16) + i;
    }

    else
    {
      v9 = v8 + 8 * v5 + 24;
    }

    v10 = (*(**v9 + 16))();
    if (!CI::is_any_TypeImage(v10))
    {
      goto LABEL_9;
    }

    if (v6 == a2)
    {
      break;
    }

    ++v6;
LABEL_9:
    if (v2 == ++v5)
    {
      return 0;
    }
  }

  v12 = *(this + 16);
  if (*(v12 + 12) == 1)
  {
    type = CI::KernelArguments::get_type((v12 + 136), v5);
  }

  else if (*(v12 + 20) <= v5)
  {
    type = 0;
  }

  else
  {
    type = *(*(v12 + 64) + 4 * v5);
  }

  return type != 4;
}

double CI::ColorKernelImage::roi_of_child(CI::ColorKernelImage *this, CGRect a2, uint64_t a3)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  if ((a3 & 0x80000000) == 0 && **(this + 17) > a3)
  {
    if (!CI::ColorKernelImage::child_uses_roi_callback(this, a3))
    {
      v11 = (*(*this + 48))(this, a3);
      v12 = (*(*v11 + 16))(v11);
      if (!CI::is_raster_TypeImage(v12))
      {
        return *MEMORY[0x1E695F040];
      }

      return (*(*v11 + 96))(v11);
    }

    v9 = *(this + 22);
    if (v9)
    {
      (*(v9 + 16))(v9, a3, x, y, width, height);
      return v10;
    }
  }

  return x;
}

uint64_t CI::ColorKernelImage::color_for_graphviz(CI::ColorKernelImage *this)
{
  if (*(*(this + 16) + 158))
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

uint64_t CI::ColorKernelImage::print_for_graphviz(uint64_t a1, FILE *a2, void *a3, int a4)
{
  if (a4)
  {
    v7 = 32;
  }

  else
  {
    v7 = 10;
  }

  fprintf(a2, "colorkernel %s", *(*(a1 + 128) + 24));
  v8 = **(a1 + 136);
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = *(a1 + 136);
      if (i > 9)
      {
        v11 = (*(v10 + 16) + 8 * i - 80);
      }

      else
      {
        v11 = (v10 + 8 * i + 24);
      }

      v12 = *v11;
      if ((*(**v11 + 16))(*v11) >= 1 && (*(*v12 + 16))(v12) <= 31 && (*(*a1 + 40))(a1) == 1)
      {
        continue;
      }

      v13 = *(a1 + 128);
      if (*(v13 + 12) == 1)
      {
        name = CI::KernelArguments::get_name((v13 + 136), i);
      }

      else if (i >= *(v13 + 20))
      {
        name = 0;
      }

      else
      {
        name = *(*(v13 + 72) + 8 * i);
      }

      fprintf(a2, "%c%s", v7, name);
      if ((*(*v12 + 16))(v12) < 1 || (*(*v12 + 16))(v12) > 31)
      {
        fputc(61, a2);
        (*(*v12 + 32))(v12, a2, 0);
      }

      else
      {
        if (CI_GRAPHVIZ_INTERNAL())
        {
          v15 = v12[29];
LABEL_24:
          fprintf(a2, "=(%d)", v15);
          continue;
        }

        v22 = v12;
        v16 = std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::find<void const*>(a3, &v22);
        if (v16)
        {
          v15 = *(v16 + 6);
          goto LABEL_24;
        }
      }
    }
  }

  v17 = (*(**(a1 + 128) + 40))(*(a1 + 128));
  if (v17)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 0x40000000;
    v20[2] = ___ZNK2CI16ColorKernelImage18print_for_graphvizEP7__sFILERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS3_4hashIS7_EENS3_8equal_toIS7_EENS3_9allocatorINS3_4pairIKS7_jEEEEEEb_block_invoke;
    v20[3] = &__block_descriptor_tmp_11;
    v20[4] = a2;
    v21 = v7;
    __CFDictionary::for_each(v17, v20);
  }

  result = *(a1 + 188);
  if (result)
  {
    v19 = CI::name_for_format(result);
    return fprintf(a2, "%coutputFormat=%s", v7, v19);
  }

  return result;
}

void __CFDictionary::for_each(const __CFDictionary *a1, void *a2)
{
  if (a1 && CFDictionaryGetCount(a1))
  {

    CFDictionaryApplyFunction(a1, __CFDictionary::_dictionaryApplierFunction, a2);
  }
}

void ___ZNK2CI16ColorKernelImage18print_for_graphvizEP7__sFILERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS3_4hashIS7_EENS3_8equal_toIS7_EENS3_9allocatorINS3_4pairIKS7_jEEEEEEb_block_invoke(uint64_t a1, __CFObject *a2, __CFObject *a3)
{
  fputc(*(a1 + 40), *(a1 + 32));
  __CFObject::fprint(a2, *(a1 + 32), v6);
  fputc(61, *(a1 + 32));
  v8 = *(a1 + 32);

  __CFObject::fprint(a3, v8, v7);
}

void __CFObject::fprint(__CFObject *this, FILE *a2, __sFILE *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v5 = CFGetTypeID(this);
    if (v5 == CFBooleanGetTypeID())
    {

      __CFBoolean::fprint(this, a2, v6);
    }

    else
    {
      v7 = CFGetTypeID(this);
      if (v7 == CFNumberGetTypeID())
      {

        __CFNumber::fprint(this, a2, v8);
      }

      else
      {
        v9 = CFGetTypeID(this);
        if (v9 == CFStringGetTypeID())
        {
          v10 = CFRetain(this);
        }

        else
        {
          v10 = CFCopyDescription(this);
        }

        v11 = v10;
        if (v10)
        {
          bzero(buffer, 0x400uLL);
          CStringPtr = CFStringGetCStringPtr(v11, 0x8000100u);
          if (!CStringPtr)
          {
            if (CFStringGetCString(v11, buffer, 1024, 0x8000100u))
            {
              CStringPtr = buffer;
            }

            else
            {
              CStringPtr = 0;
            }
          }

          fputs(CStringPtr, a2);
          CFRelease(v11);
        }
      }
    }
  }
}

void CI::ColorKernelImage::extent_unclamped(CI::ColorKernelImage *this)
{
  v2 = (*(*this + 40))(this);
  v3 = v2;
  if (v2 < 2)
  {
    if (!v2)
    {
      return;
    }
  }

  else
  {
    CGRectIsInfinite(*(this + 144));
  }

  if (CGRectIsInfinite(*(this + 144)) && *(*(this + 16) + 158) == 1)
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    if (v3 >= 1)
    {
      v8 = 0;
      do
      {
        v9 = (*(*this + 48))(this, v8);
        v16.origin.x = (*(*v9 + 88))(v9);
        IsInfinite = CGRectIsInfinite(v16);
        v11 = *v9;
        if (IsInfinite)
        {
          (*(v11 + 96))(v9);
        }

        else
        {
          v17.origin.x = (*(v11 + 88))(v9);
          *&v12 = CGRectInset(v17, -1.0, -1.0);
        }

        v23.origin.x = v12;
        v23.origin.y = v13;
        v23.size.width = v14;
        v23.size.height = v15;
        v18.origin.x = x;
        v18.origin.y = y;
        v18.size.width = width;
        v18.size.height = height;
        v19 = CGRectUnion(v18, v23);
        x = v19.origin.x;
        y = v19.origin.y;
        width = v19.size.width;
        height = v19.size.height;
        v8 = (v8 + 1);
      }

      while (v3 != v8);
    }

    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    if (!CGRectIsNull(v20))
    {
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      if (!CGRectIsEmpty(v21))
      {
        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        if (!CGRectIsInfinite(v22))
        {
          v24.origin.x = x;
          v24.origin.y = y;
          v24.size.width = width;
          v24.size.height = height;
          CGRectIntersection(*(this + 144), v24);
        }
      }
    }
  }
}

uint64_t CI::ColorKernelImage::headroom(uint64_t this)
{
  if (*(this + 192) < 1.0 && *(*(this + 128) + 157) == 1)
  {
    v2 = *(*(*(*this + 48))(this, 0, 0.0) + 232);

    return v2();
  }

  return this;
}

uint64_t CI::ColorKernelImage::lightlevel(uint64_t this)
{
  if (*(this + 196) <= 0.0 && *(*(this + 128) + 157) == 1)
  {
    v2 = *(*(*(*this + 48))(this, 0, 0.0) + 240);

    return v2();
  }

  return this;
}

uint64_t CI::ColorKernelImage::colorspace(CI::ColorKernelImage *this)
{
  if (*(*(this + 16) + 157) != 1)
  {
    return 0;
  }

  v2 = *(*(*(*this + 48))(this, 0) + 248);

  return v2();
}

uint64_t CI::ImageToNodeMap::findAndRef(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 != v2 && *(v5 + 32) <= a2 && (v9 = *(v5 + 40)) != 0)
  {
    return CI::Object::ref(v9);
  }

  else
  {
    return 0;
  }
}

uint64_t __CFBoolean::fprint(uint64_t this, FILE *__stream, __sFILE *a3)
{
  if (this)
  {
    v4 = this;
    if (*MEMORY[0x1E695E4D0] == this)
    {
      this = fwrite("true", 4uLL, 1uLL, __stream);
    }

    if (*MEMORY[0x1E695E4C0] == v4)
    {

      return fwrite("false", 5uLL, 1uLL, __stream);
    }
  }

  return this;
}

const __CFNumber *__CFNumber::fprint(const __CFNumber *this, FILE *a2, __sFILE *a3)
{
  if (this)
  {
    v4 = this;
    v5 = CFGetTypeID(this);
    this = CFNumberGetTypeID();
    if (v5 == this)
    {
      valuePtr = 0;
      if (CFNumberIsFloatType(v4))
      {
        CFNumberGetValue(v4, kCFNumberDoubleType, &valuePtr);
        return fprintf(a2, "%g");
      }

      else
      {
        CFNumberGetValue(v4, kCFNumberLongLongType, &valuePtr);
        return fprintf(a2, "%lld");
      }
    }
  }

  return this;
}

void *CI::InstanceCounted<(CI::Type)11>::~InstanceCounted(void *result)
{
  *result = &unk_1F1035D68;
  atomic_fetch_add(&dword_1ED7C47BC[9], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)11>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1035D68;
  atomic_fetch_add(&dword_1ED7C47BC[9], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

uint64_t CI::GeneralKernelImage::GeneralKernelImage(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, const void *a5, int a6, int a7, double a8, double a9, double a10, double a11, float a12, float a13)
{
  *&v41 = a8;
  *(&v41 + 1) = a9;
  *&v42 = a10;
  *(&v42 + 1) = a11;
  CI::Image::Image(a1);
  v22[15] = &unk_1F1035F30;
  atomic_fetch_add(&dword_1ED7C47BC[11], 1u);
  *v22 = &unk_1F1035D90;
  v22[15] = &unk_1F1035F08;
  std::vector<CGRect>::vector[abi:nn200100](v22 + 18, a4);
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  if (a2)
  {
    v23 = a2;
    if (*(a2 + 12) == 1)
    {
      v23 = CI::Object::ref(a2);
    }
  }

  else
  {
    v23 = 0;
  }

  *(a1 + 128) = v23;
  *(a1 + 136) = a3;
  v24 = v42;
  *(a1 + 168) = v41;
  *(a1 + 184) = v24;
  *(a1 + 200) = _Block_copy(a5);
  if (a6)
  {
    *(a1 + 208) = a7;
    v25 = (a1 + 208);
    *(a1 + 212) = a6;
    *(a1 + 216) = a12;
    *(a1 + 220) = a13;
    v26 = a6;
  }

  else
  {
    *(a1 + 208) = a7;
    v25 = (a1 + 208);
    v26 = *(*(a1 + 128) + 112);
    *(a1 + 212) = v26;
    *(a1 + 216) = a12;
    *(a1 + 220) = a13;
    if (!v26)
    {
      goto LABEL_10;
    }
  }

  if ((CI::format_has_alpha(v26) & 1) == 0)
  {
    *v25 = 1;
  }

LABEL_10:
  *(a1 + 88) = 0;
  v27 = (*(*a1 + 40))(a1);
  if (v27 >= 1)
  {
    v28 = 0;
    v29 = *(a1 + 88);
    do
    {
      if (v29 <= *((*(*a1 + 48))(a1, v28) + 88) + 1)
      {
        v29 = *((*(*a1 + 48))(a1, v28) + 88) + 1;
      }

      else
      {
        v29 = *(a1 + 88);
      }

      *(a1 + 88) = v29;
      v28 = (v28 + 1);
    }

    while (v27 != v28);
  }

  XXH64_reset(v40, 0);
  LODWORD(__src) = (*(*a1 + 16))(a1);
  XXH64_update(v40, &__src, 4uLL);
  (*(*a2 + 64))(a2, v40);
  v30 = *(a1 + 136);
  if (*v30 >= 1)
  {
    v31 = 0;
    v32 = -80;
    do
    {
      if (v31 > 9)
      {
        v33 = (*(v30 + 2) + v32);
      }

      else
      {
        v33 = &v30[2 * v31 + 6];
      }

      CI::Kernel::add_argument_to_digest(v40, *v33, 0);
      ++v31;
      v30 = *(a1 + 136);
      v32 += 8;
    }

    while (v31 < *v30);
  }

  XXH64_update(v40, &v41, 0x20uLL);
  __src = *&a6;
  XXH64_update(v40, &__src, 4uLL);
  __src = a12;
  XXH64_update(v40, &__src, 4uLL);
  __src = a13;
  XXH64_update(v40, &__src, 4uLL);
  __src = *&a7;
  XXH64_update(v40, &__src, 4uLL);
  *(a1 + 96) = XXH64_digest(v40);
  XXH64_reset(v40, 0);
  LODWORD(__src) = (*(*a1 + 16))(a1);
  XXH64_update(v40, &__src, 4uLL);
  (*(*a2 + 64))(a2, v40);
  v34 = *(a1 + 136);
  if (*v34 >= 1)
  {
    v35 = 0;
    v36 = -80;
    do
    {
      if (v35 > 9)
      {
        v37 = (*(v34 + 2) + v36);
      }

      else
      {
        v37 = &v34[2 * v35 + 6];
      }

      CI::Kernel::add_argument_to_digest(v40, *v37, 1);
      ++v35;
      v34 = *(a1 + 136);
      v36 += 8;
    }

    while (v35 < *v34);
  }

  XXH64_update(v40, &v41, 0x20uLL);
  __src = *&a6;
  XXH64_update(v40, &__src, 4uLL);
  __src = a12;
  XXH64_update(v40, &__src, 4uLL);
  __src = a13;
  XXH64_update(v40, &__src, 4uLL);
  __src = *&a7;
  XXH64_update(v40, &__src, 4uLL);
  *(a1 + 104) = XXH64_digest(v40);
  *(a1 + 112) = *(a2 + 48) != 0;
  if (v27 >= 1)
  {
    v38 = 0;
    do
    {
      *(a1 + 112) &= *((*(*a1 + 48))(a1, v38) + 112);
      v38 = (v38 + 1);
    }

    while (v27 != v38);
  }

  *(a1 + 113) = 0;
  return a1;
}

void CI::GeneralKernelImage::~GeneralKernelImage(CI::GeneralKernelImage *this)
{
  *this = &unk_1F1035D90;
  *(this + 15) = &unk_1F1035F08;
  v2 = *(this + 16);
  if (v2 && *(v2 + 12) == 1)
  {
    CI::Object::unref(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    CI::SerialObjectPtrArray::~SerialObjectPtrArray(v3);
    MEMORY[0x19EAF5590]();
  }

  _Block_release(*(this + 25));
  v4 = *(this + 18);
  if (v4)
  {
    *(this + 19) = v4;
    operator delete(v4);
  }

  *(this + 15) = &unk_1F1035F30;
  atomic_fetch_add(&dword_1ED7C47BC[11], 0xFFFFFFFF);

  CI::Image::~Image(this);
}

{
  CI::GeneralKernelImage::~GeneralKernelImage(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::GeneralKernelImage::~GeneralKernelImage(CI::GeneralKernelImage *this)
{
  CI::GeneralKernelImage::~GeneralKernelImage((this - 120));
}

{
  CI::GeneralKernelImage::~GeneralKernelImage((this - 120));

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::GeneralKernelImage::add_args_to_hash(uint64_t a1, CI::Kernel *a2)
{
  (*(**(a1 + 128) + 64))(*(a1 + 128));
  __src = **(a1 + 136);
  v4 = __src;
  XXH64_update(a2, &__src, 4uLL);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = -80;
    do
    {
      v7 = *(a1 + 136);
      if (v5 > 9)
      {
        v8 = (*(v7 + 16) + v6);
      }

      else
      {
        v8 = (v7 + 8 * v5 + 24);
      }

      v9 = *v8;
      v10 = (*(**v8 + 16))(*v8);
      if (!CI::is_any_TypeImage(v10))
      {
        CI::Kernel::add_argument_to_digest(a2, v9, 0);
      }

      ++v5;
      v6 += 8;
    }

    while (v4 != v5);
  }

  v13 = (*(**(a1 + 128) + 56))(*(a1 + 128));
  return XXH64_update(a2, &v13, 8uLL);
}

double CI::GeneralKernelImage::roi_of_child(CI::GeneralKernelImage *this, CGRect a2, uint64_t a3)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  if ((a3 & 0x80000000) == 0 && **(this + 17) > a3)
  {
    if (!CI::ColorKernelImage::child_uses_roi_callback(this, a3))
    {
      v11 = (*(*this + 48))(this, a3);
      v12 = (*(*v11 + 16))(v11);
      if (!CI::is_raster_TypeImage(v12))
      {
        return *MEMORY[0x1E695F040];
      }

      return (*(*v11 + 96))(v11);
    }

    v9 = *(this + 25);
    if (v9)
    {
      (*(v9 + 16))(v9, a3, x, y, width, height);
      return v10;
    }
  }

  return x;
}

void *CI::GeneralKernelImage::restore_resources(CI::GeneralKernelImage *this, CI::Node *a2)
{
  result = (*(*a2 + 16))(a2);
  if (result == 59)
  {
    v5 = *(this + 25);

    return CI::GeneralKernelNode::set_roi_callback(a2, v5);
  }

  return result;
}

void *CI::GeneralKernelNode::set_roi_callback(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 120);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 120) = result;
  return result;
}

uint64_t CI::GeneralKernelImage::print_for_graph_core(CI::GeneralKernelImage *this, __sFILE *a2)
{
  fprintf(a2, "kernel %s", *(*(this + 16) + 24));
  v4 = **(this + 17);
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = *(this + 17);
      if (i > 9)
      {
        v7 = (*(v6 + 16) + 8 * i - 80);
      }

      else
      {
        v7 = (v6 + 8 * i + 24);
      }

      v8 = *v7;
      if (i)
      {
        v9 = 44;
      }

      else
      {
        v9 = 40;
      }

      fputc(v9, a2);
      v10 = *(this + 16);
      if (*(v10 + 12) == 1)
      {
        name = CI::KernelArguments::get_name((v10 + 136), i);
      }

      else if (i >= *(v10 + 20))
      {
        name = 0;
      }

      else
      {
        name = *(*(v10 + 72) + 8 * i);
      }

      fputs(name, a2);
      v12 = (*(*v8 + 16))(v8);
      if (!CI::is_any_TypeImage(v12))
      {
        fputc(61, a2);
        (*(*v8 + 32))(v8, a2, 0);
      }
    }
  }

  if (v4)
  {
    fputc(41, a2);
  }

  result = *(this + 53);
  if (result)
  {
    v14 = CI::name_for_format(result);
    return fprintf(a2, " outputFormat=%s", v14);
  }

  return result;
}

void CI::GeneralKernelImage::render_graph_core(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 128);
  if (!(*(*v3 + 72))(v3) || v3[4] || (*(*a2 + 16))(a2) == 85)
  {
    operator new();
  }

  v4 = ci_logger_render();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(*(a1 + 128) + 24);
    v6 = (*(*a2 + 312))(a2);
    *buf = 136446466;
    v9 = v5;
    v10 = 2082;
    v11 = v6;
    _os_log_error_impl(&dword_19CC36000, v4, OS_LOG_TYPE_ERROR, "Cannot render image (with Metal kernel '%{public}s') using an %{public}s context.", buf, 0x16u);
  }

  operator new();
}

uint64_t CI::GeneralKernelImage::properties(CI::GeneralKernelImage *this)
{
  v1 = **(this + 17);
  if (v1 < 1)
  {
    return 0;
  }

  v3 = 0;
  for (i = 24; ; i += 8)
  {
    v5 = *(this + 16);
    if (*(v5 + 12) == 1)
    {
      type = CI::KernelArguments::get_type((v5 + 136), v3);
      goto LABEL_7;
    }

    if (v3 < *(v5 + 20))
    {
      break;
    }

LABEL_8:
    if (v1 == ++v3)
    {
      return 0;
    }
  }

  type = *(*(v5 + 64) + 4 * v3);
LABEL_7:
  if ((type - 3) < 0xFFFFFFFE)
  {
    goto LABEL_8;
  }

  v8 = *(this + 17);
  if (v3 > 9)
  {
    v9 = *(v8 + 16) + i - 104;
  }

  else
  {
    v9 = v8 + i;
  }

  v10 = *(**v9 + 200);

  return v10();
}

uint64_t CI::GeneralKernelImage::avdepthdata(CI::GeneralKernelImage *this)
{
  v1 = **(this + 17);
  if (v1 < 1)
  {
    return 0;
  }

  v3 = 0;
  for (i = 24; ; i += 8)
  {
    v5 = *(this + 16);
    if (*(v5 + 12) == 1)
    {
      type = CI::KernelArguments::get_type((v5 + 136), v3);
      goto LABEL_7;
    }

    if (v3 < *(v5 + 20))
    {
      break;
    }

LABEL_8:
    if (v1 == ++v3)
    {
      return 0;
    }
  }

  type = *(*(v5 + 64) + 4 * v3);
LABEL_7:
  if ((type - 3) < 0xFFFFFFFE)
  {
    goto LABEL_8;
  }

  v8 = *(this + 17);
  if (v3 > 9)
  {
    v9 = *(v8 + 16) + i - 104;
  }

  else
  {
    v9 = v8 + i;
  }

  v10 = *(**v9 + 208);

  return v10();
}

uint64_t CI::GeneralKernelImage::avmatte(CI::GeneralKernelImage *this)
{
  v1 = **(this + 17);
  if (v1 < 1)
  {
    return 0;
  }

  v3 = 0;
  for (i = 24; ; i += 8)
  {
    v5 = *(this + 16);
    if (*(v5 + 12) == 1)
    {
      type = CI::KernelArguments::get_type((v5 + 136), v3);
      goto LABEL_7;
    }

    if (v3 < *(v5 + 20))
    {
      break;
    }

LABEL_8:
    if (v1 == ++v3)
    {
      return 0;
    }
  }

  type = *(*(v5 + 64) + 4 * v3);
LABEL_7:
  if ((type - 3) < 0xFFFFFFFE)
  {
    goto LABEL_8;
  }

  v8 = *(this + 17);
  if (v3 > 9)
  {
    v9 = *(v8 + 16) + i - 104;
  }

  else
  {
    v9 = v8 + i;
  }

  v10 = *(**v9 + 216);

  return v10();
}

uint64_t CI::GeneralKernelImage::headroom(uint64_t this)
{
  if (*(this + 216) == 0.0 && *(*(this + 128) + 157) == 1)
  {
    v2 = *(*(*(*this + 48))(this, 0, 0.0) + 232);

    return v2();
  }

  return this;
}

uint64_t CI::GeneralKernelImage::lightlevel(uint64_t this)
{
  if (*(this + 220) == 0.0 && *(*(this + 128) + 157) == 1)
  {
    v2 = *(*(*(*this + 48))(this, 0, 0.0) + 240);

    return v2();
  }

  return this;
}

uint64_t CI::GeneralKernelImage::colorspace(CI::GeneralKernelImage *this)
{
  if (*(*(this + 16) + 157) != 1)
  {
    return 0;
  }

  v2 = *(*(*(*this + 48))(this, 0) + 248);

  return v2();
}

uint64_t CI::GeneralKernelImage::ssmatte(CI::GeneralKernelImage *this)
{
  v1 = **(this + 17);
  if (v1 < 1)
  {
    return 0;
  }

  v3 = 0;
  for (i = 24; ; i += 8)
  {
    v5 = *(this + 16);
    if (*(v5 + 12) == 1)
    {
      type = CI::KernelArguments::get_type((v5 + 136), v3);
      goto LABEL_7;
    }

    if (v3 < *(v5 + 20))
    {
      break;
    }

LABEL_8:
    if (v1 == ++v3)
    {
      return 0;
    }
  }

  type = *(*(v5 + 64) + 4 * v3);
LABEL_7:
  if ((type - 3) < 0xFFFFFFFE)
  {
    goto LABEL_8;
  }

  v8 = *(this + 17);
  if (v3 > 9)
  {
    v9 = *(v8 + 16) + i - 104;
  }

  else
  {
    v9 = v8 + i;
  }

  v10 = *(**v9 + 224);

  return v10();
}

uint64_t CI::GeneralKernelImage::alpha_behavior(CI::GeneralKernelImage *this)
{
  if (*(this + 208))
  {
    return 1;
  }

  if (*(*(this + 16) + 155))
  {
    return 0xFFFFFFFFLL;
  }

  result = (*(*this + 48))(this, 0);
  if (result)
  {
    v3 = result;
    v4 = *(this + 16);
    if (*(v4 + 152) == 1)
    {
      result = (*(*result + 128))(result);
      if (result == -1)
      {
        return result;
      }

      v4 = *(this + 16);
    }

    if (*(v4 + 154) != 1)
    {
      return 0;
    }

    result = (*(*v3 + 128))(v3);
    if (result != 1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CI::GeneralKernelImage::child_count(CI::GeneralKernelImage *this)
{
  v1 = **(this + 17);
  if (v1 < 1)
  {
    return 0;
  }

  v3 = 0;
  LODWORD(v4) = 0;
  v5 = -80;
  do
  {
    v6 = *(this + 17);
    if (v3 > 9)
    {
      v7 = *(v6 + 16) + v5;
    }

    else
    {
      v7 = v6 + 8 * v3 + 24;
    }

    v8 = (*(**v7 + 16))();
    v4 = (v4 + CI::is_any_TypeImage(v8));
    ++v3;
    v5 += 8;
  }

  while (v1 != v3);
  return v4;
}

uint64_t CI::GeneralKernelImage::child(CI::GeneralKernelImage *this, int a2)
{
  v2 = **(this + 17);
  if (v2 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = -80;
    do
    {
      v8 = *(this + 17);
      if (v5 > 9)
      {
        v9 = (*(v8 + 16) + v7);
      }

      else
      {
        v9 = (v8 + 8 * v5 + 24);
      }

      v10 = *v9;
      v11 = (*(**v9 + 16))(*v9);
      if (CI::is_any_TypeImage(v11))
      {
        if (v6 == a2)
        {
          return v10;
        }

        ++v6;
      }

      ++v5;
      v7 += 8;
    }

    while (v2 != v5);
  }

  return 0;
}

uint64_t CI::GeneralKernelImage::print_for_graphviz(uint64_t a1, FILE *a2, void *a3, int a4)
{
  if (a4)
  {
    v7 = 32;
  }

  else
  {
    v7 = 10;
  }

  fprintf(a2, "kernel %s", *(*(a1 + 128) + 24));
  v8 = **(a1 + 136);
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = *(a1 + 136);
      if (i > 9)
      {
        v11 = (*(v10 + 16) + 8 * i - 80);
      }

      else
      {
        v11 = (v10 + 8 * i + 24);
      }

      v12 = *v11;
      if ((*(**v11 + 16))(*v11) >= 1 && (*(*v12 + 16))(v12) <= 31 && (*(*a1 + 40))(a1) == 1)
      {
        continue;
      }

      v13 = *(a1 + 128);
      if (*(v13 + 12) == 1)
      {
        name = CI::KernelArguments::get_name((v13 + 136), i);
      }

      else if (i >= *(v13 + 20))
      {
        name = 0;
      }

      else
      {
        name = *(*(v13 + 72) + 8 * i);
      }

      fprintf(a2, "%c%s", v7, name);
      if ((*(*v12 + 16))(v12) < 1 || (*(*v12 + 16))(v12) > 31)
      {
        fputc(61, a2);
        (*(*v12 + 32))(v12, a2, 0);
      }

      else
      {
        if (CI_GRAPHVIZ_INTERNAL())
        {
          v15 = v12[29];
LABEL_24:
          fprintf(a2, "=(%d)", v15);
          continue;
        }

        v26 = v12;
        v16 = std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::find<void const*>(a3, &v26);
        if (v16)
        {
          v15 = *(v16 + 6);
          goto LABEL_24;
        }
      }
    }
  }

  v17 = (*(**(a1 + 128) + 40))(*(a1 + 128));
  if (v17)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 0x40000000;
    v24[2] = ___ZNK2CI18GeneralKernelImage18print_for_graphvizEP7__sFILERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS3_4hashIS7_EENS3_8equal_toIS7_EENS3_9allocatorINS3_4pairIKS7_jEEEEEEb_block_invoke;
    v24[3] = &__block_descriptor_tmp_12;
    v24[4] = a2;
    v25 = v7;
    __CFDictionary::for_each(v17, v24);
  }

  result = *(a1 + 212);
  if (result)
  {
    v19 = CI::name_for_format(result);
    result = fprintf(a2, "%coutputFormat=%s", v7, v19);
  }

  v20 = *(a1 + 224);
  if (v20)
  {
    if (*(a1 + 228))
    {
      v21 = *(a1 + 232);
      if (v21)
      {
        result = fprintf(a2, "%cthreadsPerGroup=(%d,%d,%d)", v7, v20, *(a1 + 228), v21);
      }
    }
  }

  v22 = *(a1 + 236);
  if (v22 && *(a1 + 240))
  {
    v23 = *(a1 + 244);
    if (v23)
    {
      return fprintf(a2, "%cthreadgroupsPerGrid=(%d,%d,%d)", v7, v22, *(a1 + 240), v23);
    }
  }

  return result;
}

void ___ZNK2CI18GeneralKernelImage18print_for_graphvizEP7__sFILERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS3_4hashIS7_EENS3_8equal_toIS7_EENS3_9allocatorINS3_4pairIKS7_jEEEEEEb_block_invoke(uint64_t a1, __CFObject *a2, __CFObject *a3)
{
  fputc(*(a1 + 40), *(a1 + 32));
  __CFObject::fprint(a2, *(a1 + 32), v6);
  fputc(61, *(a1 + 32));
  v8 = *(a1 + 32);

  __CFObject::fprint(a3, v8, v7);
}

void *CI::InstanceCounted<(CI::Type)13>::~InstanceCounted(void *result)
{
  *result = &unk_1F1035F30;
  atomic_fetch_add(&dword_1ED7C47BC[11], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)13>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1035F30;
  atomic_fetch_add(&dword_1ED7C47BC[11], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

uint64_t CI::WarpKernelImage::WarpKernelImage(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4, const void *a5, double a6, double a7, double a8, double a9)
{
  v18 = CI::ImageWithChild::ImageWithChild(a1, a2);
  *(v18 + 16) = &unk_1F1036108;
  atomic_fetch_add(&dword_1ED7C47BC[10], 1u);
  *v18 = &unk_1F1035F58;
  *(v18 + 16) = &unk_1F10360E0;
  *(v18 + 17) = a3;
  if (a3 && *(a3 + 12) == 1)
  {
    CI::Object::ref(a3);
  }

  *(a1 + 144) = a4;
  *(a1 + 152) = a6;
  *(a1 + 160) = a7;
  *(a1 + 168) = a8;
  *(a1 + 176) = a9;
  *(a1 + 184) = _Block_copy(a5);
  *(a1 + 96) = CI::WarpKernelImage::makeDigest(a2[12], a3, a4, a6, a7, a8, a9);
  *(a1 + 104) = CI::WarpKernelImage::makeDigest(a2[13], a3, a4, a6, a7, a8, a9);
  if (!*(a3 + 48))
  {
    *(a1 + 112) = 0;
  }

  *(a1 + 113) = 0;
  return a1;
}

unint64_t CI::WarpKernelImage::makeDigest(uint64_t a1, uint64_t a2, int *a3, double a4, double a5, double a6, double a7)
{
  *v15 = a4;
  *&v15[1] = a5;
  *&v15[2] = a6;
  *&v15[3] = a7;
  XXH64_reset(v14, 0);
  LODWORD(__src) = 12;
  XXH64_update(v14, &__src, 4uLL);
  __src = a1;
  XXH64_update(v14, &__src, 8uLL);
  (*(*a2 + 64))(a2, v14);
  if (*a3 >= 1)
  {
    v10 = 0;
    v11 = -80;
    do
    {
      if (v10 > 9)
      {
        v12 = (*(a3 + 2) + v11);
      }

      else
      {
        v12 = &a3[2 * v10 + 6];
      }

      CI::Kernel::add_argument_to_digest(v14, *v12, 0);
      ++v10;
      v11 += 8;
    }

    while (v10 < *a3);
  }

  XXH64_update(v14, v15, 0x20uLL);
  return XXH64_digest(v14);
}

void CI::WarpKernelImage::~WarpKernelImage(CI::WarpKernelImage *this)
{
  *this = &unk_1F1035F58;
  *(this + 16) = &unk_1F10360E0;
  v2 = *(this + 17);
  if (v2 && *(v2 + 12) == 1)
  {
    CI::Object::unref(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    CI::SerialObjectPtrArray::~SerialObjectPtrArray(v3);
    MEMORY[0x19EAF5590]();
  }

  _Block_release(*(this + 23));
  *(this + 23) = 0;
  *(this + 16) = &unk_1F1036108;
  atomic_fetch_add(&dword_1ED7C47BC[10], 0xFFFFFFFF);

  CI::ImageWithChild::~ImageWithChild(this);
}

{
  CI::WarpKernelImage::~WarpKernelImage(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::WarpKernelImage::~WarpKernelImage(CI::WarpKernelImage *this)
{
  CI::WarpKernelImage::~WarpKernelImage((this - 128));
}

{
  CI::WarpKernelImage::~WarpKernelImage((this - 128));

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::WarpKernelImage::add_args_to_hash(uint64_t a1, CI::Kernel *a2)
{
  (*(**(a1 + 136) + 64))(*(a1 + 136));
  __src = **(a1 + 144);
  v4 = __src;
  XXH64_update(a2, &__src, 4uLL);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = -80;
    do
    {
      v7 = *(a1 + 144);
      if (v5 > 9)
      {
        v8 = (*(v7 + 16) + v6);
      }

      else
      {
        v8 = (v7 + 8 * v5 + 24);
      }

      CI::Kernel::add_argument_to_digest(a2, *v8, 0);
      ++v5;
      v6 += 8;
    }

    while (v4 != v5);
  }

  v11 = (*(**(a1 + 136) + 56))(*(a1 + 136));
  return XXH64_update(a2, &v11, 8uLL);
}

uint64_t CI::WarpKernelImage::alpha_behavior(CI::WarpKernelImage *this)
{
  v2 = (*(**(this + 15) + 128))(*(this + 15));
  v3 = (*(*this + 48))(this, 0);
  v7.origin.x = (*(*v3 + 88))(v3);
  IsInfinite = CGRectIsInfinite(v7);
  if (v2 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  if (IsInfinite)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

void CI::WarpKernelImage::render_graph_core(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 136);
  if (!(*(*v3 + 72))(v3) || v3[4] || (*(*a2 + 16))(a2) == 85)
  {
    operator new();
  }

  v4 = ci_logger_render();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(*(a1 + 136) + 24);
    v6 = (*(*a2 + 312))(a2);
    *buf = 136446466;
    v9 = v5;
    v10 = 2082;
    v11 = v6;
    _os_log_error_impl(&dword_19CC36000, v4, OS_LOG_TYPE_ERROR, "Cannot render image (with Metal kernel '%{public}s') using an %{public}s context.", buf, 0x16u);
  }

  operator new();
}

void *CI::WarpKernelImage::restore_resources(CI::WarpKernelImage *this, CI::Node *a2)
{
  result = (*(*a2 + 16))(a2);
  if (result == 58)
  {
    v5 = *(this + 23);

    return CI::WarpKernelNode::set_roi_callback(a2, v5);
  }

  return result;
}

void *CI::WarpKernelNode::set_roi_callback(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 96);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 96) = result;
  return result;
}

uint64_t CI::WarpKernelImage::print_for_graph_core(CI::WarpKernelImage *this, __sFILE *a2)
{
  fprintf(a2, "warpkernel %s", *(*(this + 17) + 24));
  v4 = **(this + 18);
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = *(this + 18);
      if (i > 9)
      {
        v7 = (*(v6 + 16) + 8 * i - 80);
      }

      else
      {
        v7 = (v6 + 8 * i + 24);
      }

      v8 = *v7;
      if (i)
      {
        v9 = 44;
      }

      else
      {
        v9 = 40;
      }

      fputc(v9, a2);
      v10 = *(this + 17);
      if (*(v10 + 12) == 1)
      {
        name = CI::KernelArguments::get_name((v10 + 136), i);
      }

      else if (i >= *(v10 + 20))
      {
        name = 0;
      }

      else
      {
        name = *(*(v10 + 72) + 8 * i);
      }

      fputs(name, a2);
      v12 = (*(*v8 + 16))(v8);
      if (!CI::is_any_TypeImage(v12))
      {
        fputc(61, a2);
        (*(*v8 + 32))(v8, a2, 0);
      }
    }
  }

  if (v4)
  {
    fputc(41, a2);
  }

  result = (*(*this + 144))(this);
  if (result)
  {
    v14 = (*(*this + 144))(this);
    v15 = CI::name_for_format(v14);
    return fprintf(a2, " outputFormat=%s", v15);
  }

  return result;
}

uint64_t CI::WarpKernelImage::roi_of_child(uint64_t this, CGRect a2, unsigned int a3)
{
  if (a3 <= 1)
  {
    this = *(this + 184);
    if (this)
    {
      return (*(this + 16))(this, 0, a2.origin, *&a2.origin.y, a2.size, *&a2.size.height);
    }
  }

  return this;
}

uint64_t CI::WarpKernelImage::print_for_graphviz(uint64_t a1, FILE *a2, void *a3, int a4)
{
  if (a4)
  {
    v7 = 32;
  }

  else
  {
    v7 = 10;
  }

  fprintf(a2, "warpkernel %s", *(*(a1 + 136) + 24));
  v8 = **(a1 + 144);
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = *(a1 + 144);
      if (i > 9)
      {
        v11 = (*(v10 + 16) + 8 * i - 80);
      }

      else
      {
        v11 = (v10 + 8 * i + 24);
      }

      v12 = *v11;
      v13 = *(a1 + 136);
      if (*(v13 + 12) == 1)
      {
        name = CI::KernelArguments::get_name((v13 + 136), i);
      }

      else if (i >= *(v13 + 20))
      {
        name = 0;
      }

      else
      {
        name = *(*(v13 + 72) + 8 * i);
      }

      fprintf(a2, "%c%s", v7, name);
      v15 = (*(*v12 + 16))(v12);
      if (CI::is_any_TypeImage(v15))
      {
        if (CI_GRAPHVIZ_INTERNAL())
        {
          v16 = v12[29];
LABEL_20:
          fprintf(a2, "=(%d)", v16);
          continue;
        }

        v24 = v12;
        v17 = std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::find<void const*>(a3, &v24);
        if (v17)
        {
          v16 = *(v17 + 6);
          goto LABEL_20;
        }
      }

      else
      {
        fputc(61, a2);
        (*(*v12 + 32))(v12, a2, 0);
      }
    }
  }

  v18 = (*(**(a1 + 136) + 40))(*(a1 + 136));
  if (v18)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 0x40000000;
    v22[2] = ___ZNK2CI15WarpKernelImage18print_for_graphvizEP7__sFILERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS3_4hashIS7_EENS3_8equal_toIS7_EENS3_9allocatorINS3_4pairIKS7_jEEEEEEb_block_invoke;
    v22[3] = &__block_descriptor_tmp_13;
    v22[4] = a2;
    v23 = v7;
    __CFDictionary::for_each(v18, v22);
  }

  result = (*(*a1 + 144))(a1);
  if (result)
  {
    v20 = (*(*a1 + 144))(a1);
    v21 = CI::name_for_format(v20);
    return fprintf(a2, "%coutputFormat=%s", v7, v21);
  }

  return result;
}

void ___ZNK2CI15WarpKernelImage18print_for_graphvizEP7__sFILERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS3_4hashIS7_EENS3_8equal_toIS7_EENS3_9allocatorINS3_4pairIKS7_jEEEEEEb_block_invoke(uint64_t a1, __CFObject *a2, __CFObject *a3)
{
  fputc(*(a1 + 40), *(a1 + 32));
  __CFObject::fprint(a2, *(a1 + 32), v6);
  fputc(61, *(a1 + 32));
  v8 = *(a1 + 32);

  __CFObject::fprint(a3, v8, v7);
}

uint64_t CI::WarpKernelImage::output_format(CI::WarpKernelImage *this)
{
  v5.origin.x = (*(**(this + 15) + 88))(*(this + 15));
  result = CGRectIsInfinite(v5);
  if (result)
  {
    v3 = *(**(this + 15) + 144);

    return v3();
  }

  return result;
}

void *CI::InstanceCounted<(CI::Type)12>::~InstanceCounted(void *result)
{
  *result = &unk_1F1036108;
  atomic_fetch_add(&dword_1ED7C47BC[10], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)12>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1036108;
  atomic_fetch_add(&dword_1ED7C47BC[10], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

double CI::NoopImage::roi_of_child(CI::NoopImage *this, CGRect a2)
{
  x = a2.origin.x;
  if (*(this + 137) == 1)
  {
    _block_invoke(&v16, a2.origin.x, a2.origin.y, a2.size.width, a2.size.height);
    __p = 0;
    __dst = 0;
    v20 = 0;
    if (v17 != v16)
    {
      std::vector<CGRect>::__vallocate[abi:nn200100](&__p, (v17 - v16) >> 5);
    }

    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }

    CI::CGRectArray::unionRect(&__p);
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v22.origin.x = (*(*this + 88))(this);
    v22.origin.y = v12;
    v22.size.width = v13;
    v22.size.height = v14;
    v21.origin.x = v5;
    v21.origin.y = v7;
    v21.size.width = v9;
    v21.size.height = v11;
    *&x = CGRectIntersection(v21, v22);
    if (__p)
    {
      __dst = __p;
      operator delete(__p);
    }
  }

  return x;
}

void _block_invoke(void *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  *&v24 = a2;
  *(&v24 + 1) = a3;
  v25 = a4;
  v26 = a5;
  v10 = CI_CACHE_TILE_SIZE();
  v11 = CI_CACHE_TILE_SIZE();
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  if (CGRectIsEmpty(v27))
  {
    std::vector<CGRect>::push_back[abi:nn200100](a1, &v24);
  }

  else
  {
    v12 = (floor(a2 / v10) * v10);
    v28.origin.x = a2;
    v28.origin.y = a3;
    v28.size.width = a4;
    v28.size.height = a5;
    v13 = (ceil(CGRectGetMaxX(v28) / v10) * v10);
    v29.origin.x = a2;
    v29.origin.y = a3;
    v29.size.width = a4;
    v29.size.height = a5;
    MaxY = CGRectGetMaxY(v29);
    v15 = (v10 + v13 + ~v12) / v10;
    if (v15 >= 1)
    {
      v16 = 0;
      v17 = (floor(a3 / v11) * v11);
      v18 = (v11 + (ceil(MaxY / v11) * v11) + ~v17) / v11;
      do
      {
        if (v18 >= 1)
        {
          v19 = v17;
          v20 = v18;
          do
          {
            *&v21 = (v12 + v16 * v10);
            *(&v21 + 1) = v19;
            v22 = v10;
            v23 = v11;
            std::vector<CGRect>::push_back[abi:nn200100](a1, &v21);
            v19 += v11;
            --v20;
          }

          while (v20);
        }

        ++v16;
      }

      while (v16 != v15);
    }
  }
}

uint64_t CI::NoopImage::render_graph_core(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 88))(a1);
  if (a3)
  {
    v4 = CI::Object::ref(a3);
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(*a3 + 16))(a3);
  if ((CI::is_image_type(v5) & 1) == 0)
  {
    CI::NoopNode::append_to_tree_and_unref();
  }

  return v4;
}

void ___ZNK2CI9NoopImage17render_graph_coreEPNS_7ContextEPNS_4NodeERKNSt3__13mapINS_11ImageDigestE6CGRectNS5_4lessIS7_EENS5_9allocatorINS5_4pairIKS7_S8_EEEEEEi_block_invoke(double *a1, void ***a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, uint64_t a8, CGRect **a9, uint64_t a10, __IOSurface *a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16)
{
  if (CGRectIsNull(*&a3))
  {
    height = 0;
    width = 0;
    y = 0x7FFFFFFF;
    x = 0x7FFFFFFF;
    if (a15)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v67.origin.x = a3;
    v67.origin.y = a4;
    v67.size.width = a5;
    v67.size.height = a6;
    if (CGRectIsInfinite(v67))
    {
      y = -2147483647;
      height = 0xFFFFFFFFLL;
      width = 0xFFFFFFFFLL;
      x = -2147483647;
      if (a15)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v68.origin.x = a3;
      v68.origin.y = a4;
      v68.size.width = a5;
      v68.size.height = a6;
      v69 = CGRectInset(v68, 0.000001, 0.000001);
      v70 = CGRectIntegral(v69);
      x = v70.origin.x;
      y = v70.origin.y;
      width = v70.size.width;
      height = v70.size.height;
      if (a15)
      {
        goto LABEL_44;
      }
    }
  }

  v28 = a1[4];
  v29 = a1[5];
  v30 = a1[6];
  v31 = a1[7];
  v71.origin.x = v28;
  v71.origin.y = v29;
  v71.size.width = v30;
  v71.size.height = v31;
  if (CGRectIsNull(v71))
  {
    v32 = 0;
    v33 = 0;
    v34 = 0x7FFFFFFF;
    v35 = 0x7FFFFFFF;
  }

  else
  {
    v72.origin.x = v28;
    v72.origin.y = v29;
    v72.size.width = v30;
    v72.size.height = v31;
    if (CGRectIsInfinite(v72))
    {
      v34 = -2147483647;
      v32 = 0xFFFFFFFFLL;
      v35 = -2147483647;
      v33 = 0xFFFFFFFFLL;
    }

    else
    {
      v73.origin.x = v28;
      v73.origin.y = v29;
      v73.size.width = v30;
      v73.size.height = v31;
      v74 = CGRectInset(v73, 0.000001, 0.000001);
      v75 = CGRectIntegral(v74);
      v34 = v75.origin.x;
      v35 = v75.origin.y;
      v32 = v75.size.width;
      v33 = v75.size.height;
    }
  }

  if (v34 != -2147483647 || v35 != -2147483647 || v32 != 0xFFFFFFFF || v33 != 0xFFFFFFFF)
  {
    if (x == 0x7FFFFFFF)
    {
      if (y == 0x7FFFFFFF && !width && !height)
      {
        goto LABEL_44;
      }
    }

    else if (x == -2147483647 && y == -2147483647 && width == 0xFFFFFFFF && height == 0xFFFFFFFF)
    {
LABEL_43:
      ClearSurface(a11);
      goto LABEL_44;
    }

    v39 = v34 == 0x7FFFFFFF && v35 == 0x7FFFFFFF && v32 == 0 && v33 == 0;
    if (v34 > x || v39 || v34 + v32 < x + width || v35 > y || v35 + v33 < y + height)
    {
      goto LABEL_43;
    }
  }

LABEL_44:
  v76.origin.x = a3;
  v76.origin.y = a4;
  v76.size.width = a5;
  v76.size.height = a6;
  MidY = CGRectGetMidY(v76);
  v41 = MidY + MidY;
  v77 = **a9;
  v66.b = 0.0;
  v66.c = 0.0;
  v66.a = 1.0;
  *&v66.d = xmmword_19CF25100;
  v66.ty = v41;
  v78 = CGRectApplyAffineTransform(v77, &v66);
  v42 = v78.origin.x;
  v43 = v78.origin.y;
  v44 = v78.size.width;
  v45 = v78.size.height;
  if (CGRectIsNull(v78))
  {
    v47 = 0;
    v48 = 0;
    v49 = 0x7FFFFFFF;
    v50 = 0x7FFFFFFF;
  }

  else
  {
    v79.origin.x = v42;
    v79.origin.y = v43;
    v79.size.width = v44;
    v79.size.height = v45;
    if (CGRectIsInfinite(v79))
    {
      v49 = -2147483647;
      v47 = 0xFFFFFFFFLL;
      v50 = -2147483647;
      v48 = 0xFFFFFFFFLL;
    }

    else
    {
      v80.origin.x = v42;
      v80.origin.y = v43;
      v80.size.width = v44;
      v80.size.height = v45;
      v81 = CGRectInset(v80, 0.000001, 0.000001);
      v82 = CGRectIntegral(v81);
      v49 = v82.origin.x;
      v50 = v82.origin.y;
      v47 = v82.size.width;
      v48 = v82.size.height;
    }
  }

  if ((v49 != 0x7FFFFFFF || v50 != 0x7FFFFFFF || v47 || v48) && (x != 0x7FFFFFFF || y != 0x7FFFFFFF || width || height))
  {
    if (v49 == -2147483647 && v50 == -2147483647 && v47 == 0xFFFFFFFF && v48 == 0xFFFFFFFF)
    {
      v51 = x;
      v52 = y;
      if (!width)
      {
        return;
      }

      goto LABEL_68;
    }

    if (x == -2147483647 && y == -2147483647 && width == 0xFFFFFFFF && height == 0xFFFFFFFF)
    {
      v51 = v49;
      v52 = v50;
      width = v47;
      height = v48;
      if (!v47)
      {
        return;
      }

      goto LABEL_68;
    }

    if (v49 <= x)
    {
      v51 = x;
    }

    else
    {
      v51 = v49;
    }

    v58 = v49 + v47;
    if (v58 >= x + width)
    {
      v58 = x + width;
    }

    v59 = __OFSUB__(v58, v51);
    v60 = v58 - v51;
    if (v60 < 0 == v59)
    {
      v52 = v50 <= y ? y : v50;
      v61 = v50 + v48;
      if (v61 >= y + height)
      {
        v61 = y + height;
      }

      v59 = __OFSUB__(v61, v52);
      v62 = v61 - v52;
      if (v62 < 0 == v59)
      {
        width = v60;
        height = v62;
        if (v60)
        {
LABEL_68:
          if (height)
          {
            v53 = v51 - v49;
            v54 = v52 - v50;
            v55 = v51 - x;
            v56 = v52 - y;
            LODWORD(v65) = CI::format_from_IOSurface(a11, v46);
            WORD2(v65) = 0;
            v57 = **a2;
            RetainSurfaceFromCache(v57);
            *&v66.a = __PAIR64__(v56, v55);
            *&v66.b = width;
            *&v66.c = height;
            *&v63 = __PAIR64__(v54, v53);
            *(&v63 + 1) = width;
            v64 = height;
            CI::Context::assembleBlit(a16, a11, &v66, v57, &v63, &v65);
          }
        }
      }
    }
  }
}

void ___ZNK2CI9NoopImage17render_graph_coreEPNS_7ContextEPNS_4NodeERKNSt3__13mapINS_11ImageDigestE6CGRectNS5_4lessIS7_EENS5_9allocatorINS5_4pairIKS7_S8_EEEEEEi_block_invoke_2(CGRect *a1@<X0>, const void **a2@<X8>, double a3@<D0>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v21 = CGRectIntersection(*&a3, a1[1]);
  _block_invoke(&v19, v21.origin.x, v21.origin.y, v21.size.width, v21.size.height);
  v8 = v19;
  v9 = v20;
  if (v19 != v20)
  {
    do
    {
      v22 = CGRectIntersection(*v8, a1[1]);
      v10 = a2[1];
      v11 = a2[2];
      if (v10 >= v11)
      {
        v13 = *a2;
        v14 = v10 - *a2;
        v15 = v14 >> 5;
        v16 = (v14 >> 5) + 1;
        if (v16 >> 59)
        {
          std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
        }

        v17 = v11 - v13;
        if (v17 >> 4 > v16)
        {
          v16 = v17 >> 4;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFE0)
        {
          v16 = 0x7FFFFFFFFFFFFFFLL;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<CGRect>>(a2, v16);
        }

        *(32 * v15) = v22;
        v12 = 32 * v15 + 32;
        memcpy(0, v13, v14);
        v18 = *a2;
        *a2 = 0;
        a2[1] = v12;
        a2[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v10 = v22;
        v12 = &v10[1];
      }

      a2[1] = v12;
      ++v8;
    }

    while (v8 != v9);
    v8 = v19;
  }

  if (v8)
  {
    v20 = v8;
    operator delete(v8);
  }
}

void CI::NoopImage::~NoopImage(CI::NoopImage *this)
{
  *(this + 16) = &unk_1F1031DC8;
  atomic_fetch_add(&dword_1ED7C47BC[13], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);
}

{
  *(this + 16) = &unk_1F1031DC8;
  atomic_fetch_add(&dword_1ED7C47BC[13], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::NoopImage::output_format(CI::NoopImage *this)
{
  v1 = *(*(*(*this + 48))(this, 0) + 144);

  return v1();
}

size_t CI::NoopImage::print_for_graph_core(CI::NoopImage *this, __sFILE *__stream)
{
  if (*(this + 137) == 1)
  {
    v3 = "intemediate-tiled";
    v4 = 17;
  }

  else
  {
    v5 = *(this + 136);
    if (v5 == 1)
    {
      v3 = "intermediate-cached";
      v4 = 19;
    }

    else if (v5 == 255)
    {
      v3 = "intermediate-uncached";
      v4 = 21;
    }

    else
    {
      v3 = "intermediate";
      v4 = 12;
    }
  }

  return fwrite(v3, v4, 1uLL, __stream);
}

void non-virtual thunk toCI::NoopImage::~NoopImage(CI::NoopImage *this)
{
  *this = &unk_1F1031DC8;
  atomic_fetch_add(&dword_1ED7C47BC[13], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));
}

{
  *this = &unk_1F1031DC8;
  atomic_fetch_add(&dword_1ED7C47BC[13], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));

  JUMPOUT(0x19EAF5590);
}

void CI::TileCacheNode::~TileCacheNode(CI::TileCacheNode *this)
{
  CI::ProcessorNode::~ProcessorNode(this);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::NodeWithChildren::child_count(CI::NodeWithChildren *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

uint64_t CI::NodeWithChildren::child(CI::NodeWithChildren *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  if ((*(*this + 40))(this) <= a2)
  {
    return 0;
  }

  v4 = *(this + 5);
  if (a2 > 9)
  {
    v5 = *(v4 + 16) + 8 * a2 - 80;
  }

  else
  {
    v5 = v4 + 8 * a2 + 24;
  }

  return *v5;
}

uint64_t CI::ProcessorNode::print_for_graph_short(CI::ProcessorNode *this, __sFILE *__stream)
{
  fwrite("processor ", 0xAuLL, 1uLL, __stream);
  v5 = *(this + 34);

  return CI::fprintf(__stream, v5, v4);
}

void CI::NodeWithChildren::set_child(CI::NodeWithChildren *this, CI::Node *a2, int a3)
{
  if ((a3 & 0x80000000) == 0 && (*(*this + 40))(this) > a3)
  {
    v6 = *(this + 5);

    CI::SerialObjectPtrArray::replace(v6, a2, a3);
  }
}

void non-virtual thunk toCI::TileCacheNode::~TileCacheNode(CI::TileCacheNode *this)
{
  CI::ProcessorNode::~ProcessorNode((this - 48));
}

{
  CI::ProcessorNode::~ProcessorNode((this - 48));

  JUMPOUT(0x19EAF5590);
}

void CI::SerialObjectPtrArray::replace(CI::SerialObjectPtrArray *this, CI::Object *a2, int a3)
{
  if (a2)
  {
    CI::Object::ref(a2);
  }

  if (a3 > 9)
  {
    v10 = *(this + 2);
    v11 = *(v10 + 8 * a3 - 80);
    if (v11)
    {
      CI::Object::unref(v11);
      v10 = *(this + 2);
    }

    v8 = (v10 + 8 * a3 - 80);
  }

  else
  {
    v6 = this + 8 * a3;
    v9 = *(v6 + 3);
    v8 = v6 + 24;
    v7 = v9;
    if (v9)
    {
      CI::Object::unref(v7);
    }
  }

  *v8 = a2;
}

CI::PremultiplyNode *CI::PremultiplyImage::render_graph_core(uint64_t a1, uint64_t a2, CI::PremultiplyNode *a3)
{
  v5 = (*(*a1 + 184))(a1);
  if (a3)
  {
    a3 = CI::Object::ref(a3);
  }

  if ((*(**(a1 + 120) + 128))(*(a1 + 120)) == -1)
  {
    return a3;
  }

  v6 = CI::PremultiplyNode::append_to_tree(a3, *(a1 + 136), v5);
  if (a3)
  {
    CI::Object::unref(a3);
  }

  return v6;
}

void CI::PremultiplyImage::~PremultiplyImage(CI::PremultiplyImage *this)
{
  *(this + 16) = &unk_1F10315F0;
  atomic_fetch_add(&dword_1ED7C47BC[14], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);
}

{
  *(this + 16) = &unk_1F10315F0;
  atomic_fetch_add(&dword_1ED7C47BC[14], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::PremultiplyImage::print_for_graph_core(CI::PremultiplyImage *this, __sFILE *a2)
{
  if (*(this + 34) == -1)
  {
    v2 = "un";
  }

  else
  {
    v2 = "";
  }

  return fprintf(a2, "%spremultiply", v2);
}

void non-virtual thunk toCI::PremultiplyImage::~PremultiplyImage(CI::PremultiplyImage *this)
{
  *this = &unk_1F10315F0;
  atomic_fetch_add(&dword_1ED7C47BC[14], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));
}

{
  *this = &unk_1F10315F0;
  atomic_fetch_add(&dword_1ED7C47BC[14], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::ProcessorImage::ProcessorImage(uint64_t a1, CI::SerialObjectPtrArray *a2, const __CFString *a3, uint64_t a4, char a5, void *a6, void *a7, int a8, double a9, double a10, double a11, double a12, unsigned __int8 a13, unsigned __int8 a14, char a15, unsigned __int8 a16, char a17, char a18, unsigned __int8 a19, const void *a20, const void *a21)
{
  *&v44 = a9;
  *(&v44 + 1) = a10;
  *&v45 = a11;
  *(&v45 + 1) = a12;
  v26 = CI::ImageWithChildren::ImageWithChildren(a1, a2);
  *(v26 + 16) = &unk_1F1036D00;
  atomic_fetch_add(&dword_1ED7C47BC[16], 1u);
  *v26 = &unk_1F1036680;
  *(v26 + 16) = &unk_1F1036800;
  *(v26 + 34) = 1;
  *(v26 + 40) = 0;
  *(v26 + 327) = 0;
  *(v26 + 331) = a18;
  *(v26 + 43) = 0;
  *(v26 + 44) = 0;
  *(v26 + 360) = a17;
  *(v26 + 11) = 0u;
  *(v26 + 12) = 0u;
  *(v26 + 13) = 0u;
  *(v26 + 14) = 0u;
  *(v26 + 15) = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 17) = 0u;
  *(v26 + 36) = 0;
  v27 = v45;
  *(v26 + 9) = v44;
  *(v26 + 10) = v27;
  *(a1 + 296) = CFRetain(a3);
  *(a1 + 304) = a4;
  *(a1 + 328) = a5;
  if (a2 && (v28 = *a2) != 0)
  {
    v29 = malloc_type_calloc(4uLL, v28, 0x100004052888210uLL);
    *(a1 + 312) = v29;
    memcpy(v29, a6, 4 * v28);
    v30 = 1;
    v31 = malloc_type_calloc(1uLL, v28, 0x100004077774924uLL);
    *(a1 + 320) = v31;
    memcpy(v31, a7, v28);
    v32 = _Block_copy(a20);
  }

  else
  {
    v32 = 0;
    v30 = 0;
    v28 = 0;
    *(a1 + 312) = 0;
  }

  *(a1 + 336) = v32;
  *(a1 + 272) = a8;
  *(a1 + 288) = a13;
  *(a1 + 330) = a15;
  *(a1 + 329) = a16;
  *(a1 + 292) = a14;
  *(a1 + 332) = v30 & a19;
  *(a1 + 344) = _Block_copy(a21);
  XXH64_reset(v43, 0);
  *v46 = (*(*a1 + 16))(a1);
  XXH64_update(v43, v46, 4uLL);
  if (v28 >= 1)
  {
    v33 = 0;
    do
    {
      *v46 = *((*(*a1 + 48))(a1, v33) + 96);
      XXH64_update(v43, v46, 8uLL);
      v33 = (v33 + 1);
    }

    while (v28 != v33);
  }

  XXH64_update(v43, &v44, 0x20uLL);
  CI::XXHashHelper::add(v43, a3);
  *v46 = a4;
  XXH64_update(v43, v46, 8uLL);
  if (a6)
  {
    v34 = v28 == 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = !v34;
  if (!v34)
  {
    XXH64_update(v43, a6, 4 * v28);
  }

  if (a7)
  {
    v36 = v28 == 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = !v36;
  if (!v36)
  {
    XXH64_update(v43, a7, v28);
  }

  *v46 = a8;
  XXH64_update(v43, v46, 4uLL);
  *v46 = a13;
  XXH64_update(v43, v46, 4uLL);
  *v46 = a14;
  XXH64_update(v43, v46, 4uLL);
  *v46 = a16;
  XXH64_update(v43, v46, 4uLL);
  *v46 = *(a1 + 360);
  XXH64_update(v43, v46, 4uLL);
  *v46 = *(a1 + 331);
  XXH64_update(v43, v46, 4uLL);
  *v46 = a19;
  XXH64_update(v43, v46, 4uLL);
  *(a1 + 96) = XXH64_digest(v43);
  XXH64_reset(v43, 0);
  *v46 = (*(*a1 + 16))(a1);
  XXH64_update(v43, v46, 4uLL);
  if (v28 >= 1)
  {
    v38 = 0;
    do
    {
      *v46 = *((*(*a1 + 48))(a1, v38) + 104);
      XXH64_update(v43, v46, 8uLL);
      v38 = (v38 + 1);
    }

    while (v28 != v38);
  }

  XXH64_update(v43, &v44, 0x20uLL);
  CI::XXHashHelper::add(v43, a3);
  *v46 = a4;
  XXH64_update(v43, v46, 8uLL);
  if (v35)
  {
    XXH64_update(v43, a6, 4 * v28);
  }

  if (v37)
  {
    XXH64_update(v43, a7, v28);
  }

  *v46 = a8;
  XXH64_update(v43, v46, 4uLL);
  *v46 = a13;
  XXH64_update(v43, v46, 4uLL);
  *v46 = a14;
  XXH64_update(v43, v46, 4uLL);
  *v46 = a16;
  XXH64_update(v43, v46, 4uLL);
  *v46 = *(a1 + 360);
  XXH64_update(v43, v46, 4uLL);
  *v46 = *(a1 + 331);
  XXH64_update(v43, v46, 4uLL);
  *v46 = a19;
  XXH64_update(v43, v46, 4uLL);
  *(a1 + 104) = XXH64_digest(v43);
  *(a1 + 112) = 0;
  return a1;
}

{
  return CI::ProcessorImage::ProcessorImage(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t CI::ProcessorImage::ProcessorImage(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4, char a5, int a6, char a7, int a8, double a9, double a10, double a11, double a12, unsigned __int8 a13, unsigned __int8 a14, char a15, unsigned __int8 a16, char a17, char a18, unsigned __int8 a19, const void *a20, const void *a21)
{
  v23 = a6;
  v22 = a7;
  if (a2)
  {
    operator new();
  }

  return CI::ProcessorImage::ProcessorImage(a1, 0, a3, a4, a5, &v23, &v22, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

CI::ImageWithChildren *CI::ImageWithChildren::ImageWithChildren(CI::ImageWithChildren *this, CI::SerialObjectPtrArray *a2)
{
  v4.n128_f64[0] = CI::Image::Image(this);
  *v5 = &unk_1F10369D0;
  *(v5 + 120) = a2;
  *(v5 + 88) = 0;
  if (a2)
  {
    v6 = *a2;
    if (*a2 >= 1)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        if (v7 <= *((*(*this + 48))(this, v8, v4) + 88) + 1)
        {
          v7 = *((*(*this + 48))(this, v8) + 88) + 1;
        }

        else
        {
          v7 = *(this + 22);
        }

        *(this + 22) = v7;
        v8 = (v8 + 1);
      }

      while (v6 != v8);
    }
  }

  return this;
}

uint64_t CI::ProcessorImage::ProcessorImage(uint64_t a1, const __CFString *a2, uint64_t a3, char a4, int a5, unsigned __int8 a6, char a7, char a8, double a9, double a10, double a11, double a12, char a13, const void *a14)
{
  if (a5 == -1)
  {
    v14 = 0;
  }

  else
  {
    v14 = a5;
  }

  return CI::ProcessorImage::ProcessorImage(a1, 0, a2, a3, a4, 0, 0, v14, a9, a10, a11, a12, a5 == -1, a6, a7, 0, a8, a13, 0, 0, a14);
}

uint64_t CI::ProcessorImage::ProcessorImage(uint64_t a1, CI::SerialObjectPtrArray *a2, int a3, char *a4, const __CFString *a5, uint64_t a6, char a7, void *a8, void *a9, uint64_t a10, char *a11, _BYTE *a12, char a13, unsigned __int8 a14, char a15, char a16, unsigned __int8 a17, const void *a18, const void *a19)
{
  v25 = CI::ImageWithChildren::ImageWithChildren(a1, a2);
  *(v25 + 16) = &unk_1F1036D00;
  atomic_fetch_add(&dword_1ED7C47BC[16], 1u);
  *v25 = &unk_1F1036680;
  *(v25 + 16) = &unk_1F1036800;
  *(v25 + 34) = a3;
  *(v25 + 9) = 0u;
  *(v25 + 10) = 0u;
  *(v25 + 11) = 0u;
  *(v25 + 12) = 0u;
  *(v25 + 13) = 0u;
  *(v25 + 14) = 0u;
  *(v25 + 15) = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 17) = 0u;
  *(v25 + 36) = 0;
  *(v25 + 40) = 0;
  *(v25 + 327) = 0;
  *(v25 + 331) = a16;
  *(v25 + 43) = 0;
  *(v25 + 44) = 0;
  *(v25 + 360) = a15;
  theString = a5;
  *(a1 + 296) = CFRetain(a5);
  *(a1 + 304) = a6;
  v53 = a6;
  *(a1 + 328) = a7;
  if (a2 && (v26 = *a2) != 0)
  {
    v27 = malloc_type_calloc(4uLL, v26, 0x100004052888210uLL);
    *(a1 + 312) = v27;
    memcpy(v27, a8, 4 * v26);
    v28 = 1;
    v29 = malloc_type_calloc(1uLL, v26, 0x100004077774924uLL);
    *(a1 + 320) = v29;
    memcpy(v29, a9, v26);
    v30 = _Block_copy(a18);
  }

  else
  {
    v30 = 0;
    v28 = 0;
    v26 = 0;
    *(a1 + 312) = 0;
  }

  *(a1 + 336) = v30;
  v31 = *(a1 + 136);
  if (v31 >= 1)
  {
    v32 = 0;
    v33 = (a1 + 288);
    v34 = 4 * v31;
    v35 = a11;
    do
    {
      v36 = &a4[8 * v32];
      v37 = a1 + 8 * v32;
      v38 = *(v36 + 1);
      *(v37 + 144) = *v36;
      *(v37 + 160) = v38;
      *(a1 + v32 + 272) = *(a10 + v32);
      v39 = *v35++;
      *v33++ = v39;
      v32 += 4;
    }

    while (v34 != v32);
  }

  *(a1 + 330) = a13;
  *(a1 + 329) = a14;
  *(a1 + 292) = *a12;
  *(a1 + 332) = v28 & a17;
  *(a1 + 352) = _Block_copy(a19);
  XXH64_reset(v55, 0);
  *v56 = (*(*a1 + 16))(a1);
  XXH64_update(v55, v56, 4uLL);
  if (v26 >= 1)
  {
    v40 = 0;
    do
    {
      *v56 = *((*(*a1 + 48))(a1, v40) + 96);
      XXH64_update(v55, v56, 8uLL);
      v40 = (v40 + 1);
    }

    while (v26 != v40);
  }

  *v56 = *(a1 + 136);
  XXH64_update(v55, v56, 4uLL);
  CI::XXHashHelper::add(v55, theString);
  *v56 = a6;
  XXH64_update(v55, v56, 8uLL);
  if (a8)
  {
    v41 = v26 == 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = !v41;
  v51 = v42;
  if (!v41)
  {
    XXH64_update(v55, a8, 4 * v26);
  }

  if (a9)
  {
    v43 = v26 == 0;
  }

  else
  {
    v43 = 1;
  }

  v44 = !v43;
  if (!v43)
  {
    XXH64_update(v55, a9, v26);
  }

  if (*(a1 + 136) >= 1)
  {
    v45 = 0;
    v46 = a4;
    do
    {
      XXH64_update(v55, v46, 0x20uLL);
      *v56 = *(a10 + 4 * v45);
      XXH64_update(v55, v56, 4uLL);
      *v56 = a11[v45];
      XXH64_update(v55, v56, 4uLL);
      *v56 = a12[v45];
      XXH64_update(v55, v56, 4uLL);
      ++v45;
      v46 += 32;
    }

    while (v45 < *(a1 + 136));
  }

  *v56 = a14;
  XXH64_update(v55, v56, 4uLL);
  *v56 = *(a1 + 360);
  XXH64_update(v55, v56, 4uLL);
  *v56 = *(a1 + 331);
  XXH64_update(v55, v56, 4uLL);
  *v56 = a17;
  XXH64_update(v55, v56, 4uLL);
  *(a1 + 96) = XXH64_digest(v55);
  XXH64_reset(v55, 0);
  *v56 = (*(*a1 + 16))(a1);
  XXH64_update(v55, v56, 4uLL);
  if (v26 >= 1)
  {
    v47 = 0;
    do
    {
      *v56 = *((*(*a1 + 48))(a1, v47) + 104);
      XXH64_update(v55, v56, 8uLL);
      v47 = (v47 + 1);
    }

    while (v26 != v47);
  }

  *v56 = *(a1 + 136);
  XXH64_update(v55, v56, 4uLL);
  CI::XXHashHelper::add(v55, theString);
  *v56 = v53;
  XXH64_update(v55, v56, 8uLL);
  if (v51)
  {
    XXH64_update(v55, a8, 4 * v26);
  }

  if (v44)
  {
    XXH64_update(v55, a9, v26);
  }

  if (*(a1 + 136) >= 1)
  {
    v48 = 0;
    do
    {
      XXH64_update(v55, a4, 0x20uLL);
      *v56 = *(a10 + 4 * v48);
      XXH64_update(v55, v56, 4uLL);
      *v56 = a11[v48];
      XXH64_update(v55, v56, 4uLL);
      *v56 = a12[v48];
      XXH64_update(v55, v56, 4uLL);
      ++v48;
      a4 += 32;
    }

    while (v48 < *(a1 + 136));
  }

  *v56 = a14;
  XXH64_update(v55, v56, 4uLL);
  *v56 = *(a1 + 360);
  XXH64_update(v55, v56, 4uLL);
  *v56 = *(a1 + 331);
  XXH64_update(v55, v56, 4uLL);
  *v56 = a17;
  XXH64_update(v55, v56, 4uLL);
  *(a1 + 104) = XXH64_digest(v55);
  *(a1 + 112) = 0;
  return a1;
}

{
  return CI::ProcessorImage::ProcessorImage(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

void CI::ProcessorImage::~ProcessorImage(CI::ProcessorImage *this)
{
  *this = &unk_1F1036680;
  *(this + 16) = &unk_1F1036800;
  v2 = *(this + 37);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 37) = 0;
  v3 = *(this + 39);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 40);
  if (v4)
  {
    free(v4);
  }

  _Block_release(*(this + 42));
  *(this + 42) = 0;
  v5 = *(this + 43);
  if (v5)
  {
    _Block_release(v5);
  }

  *(this + 43) = 0;
  v6 = *(this + 44);
  if (v6)
  {
    _Block_release(v6);
  }

  *(this + 44) = 0;
  *(this + 16) = &unk_1F1036D00;
  atomic_fetch_add(&dword_1ED7C47BC[16], 0xFFFFFFFF);

  CI::ImageWithChildren::~ImageWithChildren(this);
}

{
  CI::ProcessorImage::~ProcessorImage(this);

  JUMPOUT(0x19EAF5590);
}

void CI::ImageWithChildren::~ImageWithChildren(CI::ImageWithChildren *this)
{
  *this = &unk_1F10369D0;
  v2 = *(this + 15);
  if (v2)
  {
    CI::SerialObjectPtrArray::~SerialObjectPtrArray(v2);
    MEMORY[0x19EAF5590]();
  }

  *(this + 15) = 0;

  CI::Image::~Image(this);
}

void non-virtual thunk toCI::ProcessorImage::~ProcessorImage(CI::ProcessorImage *this)
{
  CI::ProcessorImage::~ProcessorImage((this - 128));
}

{
  CI::ProcessorImage::~ProcessorImage((this - 128));

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::ProcessorImage::alpha_behavior(CI::ProcessorImage *this)
{
  if (*(this + 292))
  {
    return 1;
  }

  result = (*(*this + 48))(this, 0);
  if (result)
  {
    if (*(this + 329) != 1)
    {
      return 0;
    }

    result = (*(*result + 128))(result);
    if (result != -1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CI::ProcessorImage::add_args_to_hash(uint64_t a1, CI::XXHashHelper *a2)
{
  if (*(a1 + 304))
  {
    v8 = *(a1 + 304);
    p_src = &v8;
    v5 = a2;
    v6 = 8;
  }

  else
  {
    __src = *(a1 + 116);
    p_src = &__src;
    v5 = a2;
    v6 = 4;
  }

  XXH64_update(v5, p_src, v6);
  return CI::XXHashHelper::add(a2, *(a1 + 296));
}

void CI::ProcessorImage::region_of_child(CI::ProcessorImage *this, CGRect a2, uint64_t a3)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  if (!CGRectIsEmpty(a2))
  {
    v13.origin.x = (*(*this + 80))(this, a3, x, y, width, height);
    v9 = v13.origin.x;
    v10 = v13.origin.y;
    v11 = v13.size.width;
    v12 = v13.size.height;
    if (!CGRectIsEmpty(v13))
    {
      v14.origin.x = v9;
      v14.origin.y = v10;
      v14.size.width = v11;
      v14.size.height = v12;
      if (!CGRectIsInfinite(v14))
      {
        v15.origin.x = v9;
        v15.origin.y = v10;
        v15.size.width = v11;
        v15.size.height = v12;
        v16 = CGRectInset(v15, 0.001, 0.001);
        CGRectIntegral(v16);
      }
    }
  }
}

void CI::ProcessorNode::unionROI(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  if ((a1[1] - *a1) >= 0x21)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      *&v2 = CGRectUnion(*&v2, *&v1[v7 + 4]);
      ++v8;
      v1 = *a1;
      v7 += 4;
    }

    while (v8 < (a1[1] - *a1) >> 5);
  }
}

void CI::ProcessorImage::render_graph_core(uint64_t a1)
{
  if ((*(*a1 + 40))(a1))
  {
    operator new();
  }

  CI::ProcessorNode::append_to_tree();
}

uint64_t CI::ProcessorOutputImage::render_graph_core(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*a1 + 48))(a1, 0);
  v5 = CI::ImageToNodeMap::findAndRef(a3, *(v4 + 96));
  if ((*(*v5 + 16))(v5) >= 47 && (*(*v5 + 16))(v5) <= 49)
  {
    CI::ProcessorOutputNode::append_to_tree_and_unref();
  }

  return 0;
}

void *CI::ProcessorImage::restore_resources(void **this, CI::Node *a2)
{
  result = (*(*a2 + 16))(a2);
  if (result == 47)
  {
    CI::ProcessorNode::set_callback(a2, this[43]);
    CI::ProcessorNode::set_callbackm(a2, this[44]);
    v5 = this[42];

    return CI::ProcessorNode::set_roi_callback(a2, v5);
  }

  return result;
}

void *CI::ProcessorNode::set_callback(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 256);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 256) = result;
  return result;
}

void *CI::ProcessorNode::set_callbackm(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 264);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 264) = result;
  return result;
}

void *CI::ProcessorNode::set_roi_callback(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 248);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 248) = result;
  return result;
}

uint64_t CI::ProcessorImage::print_for_graph_core(CFStringRef *this, __sFILE *__stream)
{
  fwrite("processor ", 0xAuLL, 1uLL, __stream);
  CI::fprintf(__stream, this[37], v4);
  if (this[38])
  {
    fprintf(__stream, ":%016llX", this[38]);
  }

  if (*(this + 34))
  {
    result = fwrite(" outputFormat", 0xDuLL, 1uLL, __stream);
    if (*(this + 34) >= 1)
    {
      v6 = 0;
      do
      {
        v7 = CI::name_for_format(*(this + v6 + 68));
        if (v6)
        {
          v8 = 44;
        }

        else
        {
          v8 = 61;
        }

        result = fprintf(__stream, "%c%s", v8, v7);
        ++v6;
      }

      while (v6 < *(this + 34));
    }
  }

  else
  {
    result = *(this + 68);
    if (result)
    {
      v9 = CI::name_for_format(result);
      result = fprintf(__stream, " outputFormat=%s", v9);
    }
  }

  if ((this[45] & 1) == 0)
  {
    result = fwrite(" noPartialOutput", 0x10uLL, 1uLL, __stream);
  }

  if (*(this + 329) == 1)
  {
    result = fwrite(" canReduceChannels", 0x12uLL, 1uLL, __stream);
  }

  if (*(this + 328) == 1)
  {

    return fwrite(" supportsCompressed", 0x13uLL, 1uLL, __stream);
  }

  return result;
}

uint64_t CI::ProcessorOutputImage::print_for_graph_core(CI::ProcessorOutputImage *this, __sFILE *a2)
{
  fprintf(a2, "processorOutput %d", *(this + 32));
  result = *(this + 43);
  if (result)
  {
    v5 = CI::name_for_format(result);
    return fprintf(a2, " outputFormat=%s", v5);
  }

  return result;
}

uint64_t CI::ProcessorImage::print_for_graphviz(CFStringRef *a1, FILE *__stream, uint64_t a3, char a4)
{
  fwrite("processor ", 0xAuLL, 1uLL, __stream);
  CI::fprintf(__stream, a1[37], v7);
  if ((a4 & 1) == 0 && CI_GRAPHVIZ_INTERNAL() && ((*a1)[1].info)(a1) >= 1)
  {
    v8 = 0;
    do
    {
      if (v8)
      {
        v9 = " ";
      }

      else
      {
        v9 = "\n  ";
      }

      v10 = ((*a1)[1].data)(a1, v8);
      fprintf(__stream, "%s(%d)", v9, *(v10 + 116));
      v8 = (v8 + 1);
    }

    while (v8 < ((*a1)[1].info)(a1));
  }

  if (a1[38])
  {
    fprintf(__stream, "\n  argsDigest=%016llX", a1[38]);
  }

  result = *(a1 + 68);
  if (result)
  {
    v12 = CI::name_for_format(result);
    result = fprintf(__stream, "\n  outputFormat=%s", v12);
  }

  if (a1[39])
  {
    result = ((*a1)[1].info)(a1);
    if (result == 1)
    {
      result = LODWORD(a1[39]->isa);
      if (result)
      {
        v13 = CI::name_for_format(result);
        result = fprintf(__stream, "\n  inputFormat=%s", v13);
      }
    }
  }

  if ((a1[45] & 1) == 0)
  {
    result = fwrite("\n  noPartialOutput", 0x12uLL, 1uLL, __stream);
  }

  if (*(a1 + 329) == 1)
  {
    result = fwrite("\n  canReduceChannels", 0x14uLL, 1uLL, __stream);
  }

  if (*(a1 + 328) == 1)
  {

    return fwrite("\n  supportsCompressed", 0x15uLL, 1uLL, __stream);
  }

  return result;
}

uint64_t CI::ProcessorOutputImage::print_for_graphviz(uint64_t a1, FILE *a2, uint64_t a3, int a4)
{
  fprintf(a2, "processorOutput %d", *(a1 + 128));
  result = *(a1 + 172);
  if (result)
  {
    if (a4)
    {
      v8 = "";
    }

    else
    {
      v8 = "\n ";
    }

    v9 = CI::name_for_format(result);
    return fprintf(a2, "%s outputFormat=%s", v8, v9);
  }

  return result;
}

void CI::ProcessorOutputImage::~ProcessorOutputImage(CI::ProcessorOutputImage *this)
{
  CI::ImageWithChild::~ImageWithChild(this);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::ProcessorOutputImage::add_args_to_hash(uint64_t a1, uint64_t a2)
{
  XXH64_update(a2, (a1 + 136), 0x20uLL);
  __src = *(a1 + 168);
  XXH64_update(a2, &__src, 4uLL);
  v6 = *(a1 + 172);
  return XXH64_update(a2, &v6, 4uLL);
}

uint64_t CI::ProcessorOutputImage::alpha_behavior(CI::ProcessorOutputImage *this)
{
  if (*(this + 168))
  {
    return 1;
  }

  else
  {
    return (*(**(this + 15) + 128))();
  }
}

uint64_t CI::ImageWithChildren::child_count(CI::ImageWithChildren *this)
{
  v1 = *(this + 15);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

uint64_t CI::ImageWithChildren::child(CI::ImageWithChildren *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  if ((*(*this + 40))(this) <= a2)
  {
    return 0;
  }

  v4 = *(this + 15);
  if (a2 > 9)
  {
    v5 = *(v4 + 16) + 8 * a2 - 80;
  }

  else
  {
    v5 = v4 + 8 * a2 + 24;
  }

  return *v5;
}

uint64_t CI::ImageWithChildren::properties(CI::ImageWithChildren *this)
{
  result = (*(*this + 48))(this, 0);
  if (result)
  {
    v2 = *(*result + 200);

    return v2();
  }

  return result;
}

uint64_t CI::ImageWithChildren::avdepthdata(CI::ImageWithChildren *this)
{
  result = (*(*this + 48))(this, 0);
  if (result)
  {
    v2 = *(*result + 208);

    return v2();
  }

  return result;
}

uint64_t CI::ImageWithChildren::avmatte(CI::ImageWithChildren *this)
{
  result = (*(*this + 48))(this, 0);
  if (result)
  {
    v2 = *(*result + 216);

    return v2();
  }

  return result;
}

uint64_t CI::ImageWithChildren::ssmatte(CI::ImageWithChildren *this)
{
  result = (*(*this + 48))(this, 0);
  if (result)
  {
    v2 = *(*result + 224);

    return v2();
  }

  return result;
}

uint64_t CI::ProcessorImage::outputImage(CI::ProcessorImage *this, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  if (*(this + 34) > a2)
  {
    operator new();
  }

  return 0;
}

uint64_t CI::NodeWithChild::child(CI::NodeWithChild *this, int a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return *(this + 5);
  }
}

uint64_t CI::Node::print_for_graph_core(uint64_t a1, FILE *a2)
{
  v3 = (*(*a1 + 104))(a1);

  return fputs(v3, a2);
}

void CI::NodeWithChild::set_child(CI::NodeWithChild *this, CI::Node *a2, int a3)
{
  if (!a3)
  {
    v4 = *(this + 5);
    v5 = a2 ? CI::Object::ref(a2) : 0;
    *(this + 5) = v5;
    if (v4)
    {

      CI::Object::unref(v4);
    }
  }
}

uint64_t CI::ProcessorOutputImage::ProcessorOutputImage(uint64_t a1, uint64_t *a2, int a3, int a4, int a5, double a6, double a7, double a8, double a9)
{
  v18 = CI::ImageWithChild::ImageWithChild(a1, a2);
  *v18 = &unk_1F1036848;
  *(v18 + 32) = a3;
  *(v18 + 17) = a6;
  *(v18 + 18) = a7;
  *(v18 + 19) = a8;
  *(v18 + 20) = a9;
  *(v18 + 168) = a4;
  *(v18 + 43) = a5;
  *(v18 + 11) = 0u;
  *(v18 + 12) = 0u;
  *(v18 + 13) = 0u;
  *(a1 + 96) = CI::ProcessorOutputImage::makeDigest(a2[12], a3, a4, a5, a6, a7, a8, a9);
  *(a1 + 104) = CI::ProcessorOutputImage::makeDigest(a2[13], a3, a4, a5, a6, a7, a8, a9);
  v19 = (*(*a2 + 88))(a2);
  v21 = v20 / a8;
  v23 = v22 / a9;
  *(a1 + 176) = v21;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = v23;
  *(a1 + 208) = v19 - a6 * v21;
  *(a1 + 216) = v24 - a7 * v23;
  return a1;
}

unint64_t CI::ProcessorOutputImage::makeDigest(uint64_t a1, int a2, int a3, int a4, double a5, double a6, double a7, double a8)
{
  *v14 = a5;
  *&v14[1] = a6;
  *&v14[2] = a7;
  *&v14[3] = a8;
  XXH64_reset(v13, 0);
  LODWORD(__src) = 19;
  XXH64_update(v13, &__src, 4uLL);
  __src = a1;
  XXH64_update(v13, &__src, 8uLL);
  LODWORD(__src) = a2;
  XXH64_update(v13, &__src, 4uLL);
  XXH64_update(v13, v14, 0x20uLL);
  LODWORD(__src) = a3;
  XXH64_update(v13, &__src, 4uLL);
  LODWORD(__src) = a4;
  XXH64_update(v13, &__src, 4uLL);
  return XXH64_digest(v13);
}

void *CI::InstanceCounted<(CI::Type)18>::~InstanceCounted(void *result)
{
  *result = &unk_1F1036D00;
  atomic_fetch_add(&dword_1ED7C47BC[16], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)18>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1036D00;
  atomic_fetch_add(&dword_1ED7C47BC[16], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

uint64_t CI::ProviderImage::ProviderImage(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5, uint64_t a6, uint64_t a7, char ***a8, float a9, float a10, int a11, int a12, const void *a13, int a14, int a15, char a16, char a17, char a18)
{
  CI::Image::Image(a1);
  v28[15] = &unk_1F1036EE0;
  atomic_fetch_add(&dword_1ED7C47BC[18], 1u);
  *v28 = &unk_1F1036D28;
  v28[15] = &unk_1F1036EB8;
  v28[16] = a2;
  *(a1 + 144) = _Block_copy(a5);
  v29 = _Block_copy(a4);
  *(a1 + 184) = 0;
  *(a1 + 152) = v29;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 244) = 0;
  *(a1 + 248) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  v30 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  *(a1 + 160) = dispatch_queue_create("ProviderImageSurfaceCacheQueue", v30);
  *(a1 + 168) = a6;
  *(a1 + 176) = a7;
  if ((a1 + 184) != a8)
  {
    std::vector<std::vector<IRect>>::__assign_with_size[abi:nn200100]<std::vector<IRect>*,std::vector<IRect>*>((a1 + 184), *a8, a8[1], 0xAAAAAAAAAAAAAAABLL * (a8[1] - *a8));
  }

  *(a1 + 240) = a11;
  if (a3)
  {
    v31 = CFRetain(a3);
  }

  else
  {
    v31 = 0;
  }

  *(a1 + 136) = v31;
  *(a1 + 252) = a12;
  *(a1 + 256) = a14;
  if (a13)
  {
    v32 = CFRetain(a13);
  }

  else
  {
    v32 = 0;
  }

  *(a1 + 208) = v32;
  *(a1 + 260) = a15;
  *(a1 + 264) = a16;
  *(a1 + 265) = a17;
  *(a1 + 266) = a18;
  if ((CI::format_is_extended(a11) & 1) == 0 && !CI::format_is_float(a11))
  {
    a9 = 1.0;
  }

  *(a1 + 244) = a9;
  *(a1 + 248) = a10;
  XXH64_reset(v36, 0);
  LODWORD(__src) = (*(*a1 + 16))(a1);
  XXH64_update(v36, &__src, 4uLL);
  if (*(a1 + 128))
  {
    __src = *(a1 + 128);
    XXH64_update(v36, &__src, 8uLL);
    CI::XXHashHelper::add(v36, *(a1 + 136));
    __src = *(a1 + 168);
    XXH64_update(v36, &__src, 8uLL);
    __src = *(a1 + 176);
    XXH64_update(v36, &__src, 8uLL);
    memset(v35, 0, sizeof(v35));
    std::vector<std::vector<IRect>>::__init_with_size[abi:nn200100]<std::vector<IRect>*,std::vector<IRect>*>(v35, *(a1 + 184), *(a1 + 192), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 192) - *(a1 + 184)) >> 3));
    CI::add_tile_sizes_to_digest(v35, v36);
    __src = v35;
    std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](&__src);
    LODWORD(__src) = *(a1 + 240);
    XXH64_update(v36, &__src, 4uLL);
    LODWORD(__src) = *(a1 + 252);
    XXH64_update(v36, &__src, 4uLL);
    LODWORD(__src) = *(a1 + 256);
    XXH64_update(v36, &__src, 4uLL);
    LODWORD(__src) = *(a1 + 260);
    XXH64_update(v36, &__src, 4uLL);
    LODWORD(__src) = *(a1 + 264);
    XXH64_update(v36, &__src, 4uLL);
    LODWORD(__src) = *(a1 + 244);
    XXH64_update(v36, &__src, 4uLL);
    LODWORD(__src) = *(a1 + 248);
  }

  else
  {
    LODWORD(__src) = *(a1 + 116);
  }

  XXH64_update(v36, &__src, 4uLL);
  *(a1 + 96) = XXH64_digest(v36);
  XXH64_reset(v36, 0);
  LODWORD(__src) = (*(*a1 + 16))(a1);
  XXH64_update(v36, &__src, 4uLL);
  CI::XXHashHelper::add(v36, *(a1 + 136));
  __src = *(a1 + 168);
  XXH64_update(v36, &__src, 8uLL);
  __src = *(a1 + 176);
  XXH64_update(v36, &__src, 8uLL);
  memset(v34, 0, sizeof(v34));
  std::vector<std::vector<IRect>>::__init_with_size[abi:nn200100]<std::vector<IRect>*,std::vector<IRect>*>(v34, *(a1 + 184), *(a1 + 192), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 192) - *(a1 + 184)) >> 3));
  CI::add_tile_sizes_to_digest(v34, v36);
  __src = v34;
  std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](&__src);
  LODWORD(__src) = *(a1 + 240);
  XXH64_update(v36, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 252);
  XXH64_update(v36, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 256);
  XXH64_update(v36, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 260);
  XXH64_update(v36, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 264);
  XXH64_update(v36, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 244);
  XXH64_update(v36, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 248);
  XXH64_update(v36, &__src, 4uLL);
  *(a1 + 104) = XXH64_digest(v36);
  *(a1 + 112) = 1;
  return a1;
}

{
  return CI::ProviderImage::ProviderImage(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t **CI::add_tile_sizes_to_digest(uint64_t **result, uint64_t a2)
{
  v4 = *result;
  v5 = result[1];
  if (*result != v5)
  {
    __src[9] = v2;
    __src[10] = v3;
    v7 = result;
    v8 = 0xAAAAAAAAAAAAAAABLL * (v5 - v4);
    v10 = *v4;
    v9 = v4[1];
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *v4) >> 3);
    __src[0] = v8;
    XXH64_update(a2, __src, 8uLL);
    __src[0] = v11;
    XXH64_update(a2, __src, 8uLL);
    v12 = 0;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    do
    {
      __src[0] = *((*v7)[v12] + 8);
      result = XXH64_update(a2, __src, 8uLL);
      v12 += 3;
      --v8;
    }

    while (v8);
    if (v9 != v10)
    {
      if (v11 <= 1)
      {
        v11 = 1;
      }

      v13 = 16;
      do
      {
        __src[0] = *(**v7 + v13);
        result = XXH64_update(a2, __src, 8uLL);
        v13 += 24;
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

void CI::ProviderImage::~ProviderImage(CI::ProviderImage *this)
{
  *this = &unk_1F1036D28;
  *(this + 15) = &unk_1F1036EB8;
  v2 = *(this + 18);
  if (v2)
  {
    _Block_release(v2);
  }

  *(this + 18) = 0;
  v3 = *(this + 19);
  if (v3)
  {
    _Block_release(v3);
  }

  *(this + 19) = 0;
  v4 = *(this + 17);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 17) = 0;
  v5 = *(this + 20);
  if (v5)
  {
    dispatch_release(v5);
  }

  *(this + 20) = 0;
  v6 = *(this + 26);
  if (v6)
  {
    CFRelease(v6);
  }

  *(this + 26) = 0;
  PurgeCacheEntriesForImage(*(this + 29));
  v7 = (this + 184);
  std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](&v7);
  *(this + 15) = &unk_1F1036EE0;
  atomic_fetch_add(&dword_1ED7C47BC[18], 0xFFFFFFFF);
  CI::Image::~Image(this);
}

{
  CI::ProviderImage::~ProviderImage(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::ProviderImage::~ProviderImage(CI::ProviderImage *this)
{
  CI::ProviderImage::~ProviderImage((this - 120));
}

{
  CI::ProviderImage::~ProviderImage((this - 120));

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::ProviderImage::add_args_to_hash(uint64_t a1, CI::XXHashHelper *this)
{
  CI::XXHashHelper::add(this, *(a1 + 136));
  memset(v5, 0, sizeof(v5));
  std::vector<std::vector<IRect>>::__init_with_size[abi:nn200100]<std::vector<IRect>*,std::vector<IRect>*>(v5, *(a1 + 184), *(a1 + 192), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 192) - *(a1 + 184)) >> 3));
  CI::add_tile_sizes_to_digest(v5, this);
  __src = v5;
  std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](&__src);
  LODWORD(__src) = *(a1 + 240);
  XXH64_update(this, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 252);
  XXH64_update(this, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 256);
  XXH64_update(this, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 260);
  XXH64_update(this, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 244);
  XXH64_update(this, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 264);
  return XXH64_update(this, &__src, 4uLL);
}

void CI::ProviderImage::print_for_graph_core(CI::ProviderImage *this, __sFILE *__stream)
{
  fwrite("provider", 8uLL, 1uLL, __stream);
  if (*(this + 16))
  {
    fprintf(__stream, " content:%016llX");
  }

  else
  {
    fprintf(__stream, " %d");
  }

  if (*(this + 17))
  {
    fputc(58, __stream);
    CI::fprintf(__stream, *(this + 17), v4);
  }

  v5 = CI::name_for_format(*(this + 60));
  fprintf(__stream, " %s", v5);
  if (*(this + 63))
  {
    fprintf(__stream, "-%d", *(this + 63));
  }

  v6 = *(this + 23);
  v7 = *(this + 24);
  if (v6 != v7)
  {
    memset(v67, 0, sizeof(v67));
    std::vector<std::vector<IRect>>::__init_with_size[abi:nn200100]<std::vector<IRect>*,std::vector<IRect>*>(v67, v6, v7, 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3));
    HasVaryingTileSizes = CI::Tileable::findHasVaryingTileSizes(v67);
    v68 = v67;
    std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](&v68);
    if (HasVaryingTileSizes)
    {
      v64 = 0;
      v65 = 0;
      v66 = 0;
      std::vector<std::vector<IRect>>::__init_with_size[abi:nn200100]<std::vector<IRect>*,std::vector<IRect>*>(&v64, *(this + 23), *(this + 24), 0xAAAAAAAAAAAAAAABLL * ((*(this + 24) - *(this + 23)) >> 3));
      v9 = v64;
      v10 = 0;
      if (v65 != v64)
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * (v65 - v64);
        if (v11 <= 1)
        {
          v11 = 1;
        }

        do
        {
          v12 = *v9;
          v9 += 3;
          v13 = *(v12 + 8);
          if (v13 > v10)
          {
            v10 = v13;
          }

          --v11;
        }

        while (v11);
      }

      memset(v63, 0, sizeof(v63));
      std::vector<std::vector<IRect>>::__init_with_size[abi:nn200100]<std::vector<IRect>*,std::vector<IRect>*>(v63, *(this + 23), *(this + 24), 0xAAAAAAAAAAAAAAABLL * ((*(this + 24) - *(this + 23)) >> 3));
      v14 = 0;
      v15 = *(v63[0] + 8) - *v63[0];
      if (v15)
      {
        v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 3);
        if (v16 <= 1)
        {
          v16 = 1;
        }

        v17 = (*v63[0] + 16);
        do
        {
          v19 = *v17;
          v17 += 3;
          v18 = v19;
          if (v19 > v14)
          {
            v14 = v18;
          }

          --v16;
        }

        while (v16);
      }

      fprintf(__stream, " tiles of varying sizes with max %zu,%zu", v10, v14);
      v68 = v63;
      std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](&v68);
      v20 = &v64;
    }

    else
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
      std::vector<std::vector<IRect>>::__init_with_size[abi:nn200100]<std::vector<IRect>*,std::vector<IRect>*>(&v60, *(this + 23), *(this + 24), 0xAAAAAAAAAAAAAAABLL * ((*(this + 24) - *(this + 23)) >> 3));
      v21 = v60;
      v22 = 0;
      if (v61 != v60)
      {
        v23 = 0xAAAAAAAAAAAAAAABLL * (v61 - v60);
        if (v23 <= 1)
        {
          v23 = 1;
        }

        do
        {
          v24 = *v21;
          v21 += 3;
          v25 = *(v24 + 8);
          if (v25 > v22)
          {
            v22 = v25;
          }

          --v23;
        }

        while (v23);
      }

      memset(v59, 0, sizeof(v59));
      std::vector<std::vector<IRect>>::__init_with_size[abi:nn200100]<std::vector<IRect>*,std::vector<IRect>*>(v59, *(this + 23), *(this + 24), 0xAAAAAAAAAAAAAAABLL * ((*(this + 24) - *(this + 23)) >> 3));
      v26 = *(v59[0] + 8);
      v27 = 0;
      if (v26 != *v59[0])
      {
        v28 = 0xAAAAAAAAAAAAAAABLL * ((v26 - *v59[0]) >> 3);
        if (v28 <= 1)
        {
          v28 = 1;
        }

        v29 = (*v59[0] + 16);
        do
        {
          v31 = *v29;
          v29 += 3;
          v30 = v31;
          if (v31 > v27)
          {
            v27 = v30;
          }

          --v28;
        }

        while (v28);
      }

      v68 = v59;
      std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](&v68);
      v68 = &v60;
      std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](&v68);
      if (v22 == v27)
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        std::vector<std::vector<IRect>>::__init_with_size[abi:nn200100]<std::vector<IRect>*,std::vector<IRect>*>(&v52, *(this + 23), *(this + 24), 0xAAAAAAAAAAAAAAABLL * ((*(this + 24) - *(this + 23)) >> 3));
        v32 = v52;
        if (v53 == v52)
        {
          v33 = 0;
        }

        else
        {
          v33 = 0;
          v34 = 0xAAAAAAAAAAAAAAABLL * (v53 - v52);
          if (v34 <= 1)
          {
            v34 = 1;
          }

          do
          {
            v35 = *v32;
            v32 += 3;
            v36 = *(v35 + 8);
            if (v36 > v33)
            {
              v33 = v36;
            }

            --v34;
          }

          while (v34);
        }

        fprintf(__stream, " tile %zu", v33);
        v68 = &v52;
        goto LABEL_62;
      }

      v56 = 0;
      v57 = 0;
      v58 = 0;
      std::vector<std::vector<IRect>>::__init_with_size[abi:nn200100]<std::vector<IRect>*,std::vector<IRect>*>(&v56, *(this + 23), *(this + 24), 0xAAAAAAAAAAAAAAABLL * ((*(this + 24) - *(this + 23)) >> 3));
      v37 = v56;
      v38 = 0;
      if (v57 != v56)
      {
        v39 = 0xAAAAAAAAAAAAAAABLL * (v57 - v56);
        if (v39 <= 1)
        {
          v39 = 1;
        }

        do
        {
          v40 = *v37;
          v37 += 3;
          v41 = *(v40 + 8);
          if (v41 > v38)
          {
            v38 = v41;
          }

          --v39;
        }

        while (v39);
      }

      memset(v55, 0, sizeof(v55));
      std::vector<std::vector<IRect>>::__init_with_size[abi:nn200100]<std::vector<IRect>*,std::vector<IRect>*>(v55, *(this + 23), *(this + 24), 0xAAAAAAAAAAAAAAABLL * ((*(this + 24) - *(this + 23)) >> 3));
      v42 = 0;
      v43 = *(v55[0] + 8) - *v55[0];
      if (v43)
      {
        v44 = 0xAAAAAAAAAAAAAAABLL * (v43 >> 3);
        if (v44 <= 1)
        {
          v44 = 1;
        }

        v45 = (*v55[0] + 16);
        do
        {
          v47 = *v45;
          v45 += 3;
          v46 = v47;
          if (v47 > v42)
          {
            v42 = v46;
          }

          --v44;
        }

        while (v44);
      }

      fprintf(__stream, " tile %zu,%zu", v38, v42);
      v68 = v55;
      std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](&v68);
      v20 = &v56;
    }

    v68 = v20;
LABEL_62:
    std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](&v68);
  }

  v48 = *(this + 64);
  if (v48 <= 1)
  {
    if (!v48)
    {
      goto LABEL_75;
    }

    if (v48 == 1)
    {
      v49 = "alpha_one";
      goto LABEL_74;
    }

LABEL_73:
    v49 = "alpha_unknown";
    goto LABEL_74;
  }

  if (v48 == 6)
  {
    v49 = "alpha_unpremul-clear-edges";
    goto LABEL_74;
  }

  if (v48 == 4)
  {
    v49 = "alpha_premul-clear-edges";
    goto LABEL_74;
  }

  if (v48 != 2)
  {
    goto LABEL_73;
  }

  v49 = "alpha_unpremul";
LABEL_74:
  fprintf(__stream, " %s", v49);
LABEL_75:
  v50 = *(this + 65);
  if (v50)
  {
    if (v50 == 1)
    {
      v51 = "edge_clamp";
    }

    else
    {
      v51 = "edge_unknown";
    }

    fprintf(__stream, " %s", v51);
  }

  if (*(this + 264) == 1)
  {
    fwrite(" nearestsampling", 0x10uLL, 1uLL, __stream);
  }

  if (*(this + 265) == 1)
  {
    fwrite(" cache", 6uLL, 1uLL, __stream);
  }
}

uint64_t CI::Tileable::findHasVaryingTileSizes(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v1) >> 3);
    if (v3 >= 2)
    {
      v4 = v3 - 1;
      v5 = &v1[3 * v4];
      v6 = *a1;
      do
      {
        if (v4 == 1)
        {
          if (*(*(v5 - 3) + 8) != *(*v5 + 8))
          {
            return 1;
          }
        }

        else if (*(*v6 + 8) < *(v6[3] + 8))
        {
          return 1;
        }

        v6 += 3;
        --v4;
      }

      while (v4);
      v7 = *v1;
      v8 = 0xAAAAAAAAAAAAAAABLL * ((v1[1] - *v1) >> 3);
      if (v8 >= 2)
      {
        v9 = v7 - 8;
        v10 = v8 - 1;
        v11 = 3 * v10;
        v12 = v7 + 24 * v10;
        v13 = (v7 + 40);
        do
        {
          if (v10 == 1)
          {
            if (*(v9 + 8 * v11) != *(v12 + 16))
            {
              return 1;
            }
          }

          else if (*(v13 - 3) < *v13)
          {
            return 1;
          }

          v13 += 3;
          --v10;
        }

        while (v10);
      }
    }
  }

  return 0;
}

uint64_t CI::ProviderImage::matrix_bias(CI::ProviderImage *this, double *a2, float64x2_t *a3, double *a4, float64x2_t *a5)
{
  result = CI::format_is_ycc_or_ycca(*(this + 60));
  if (result)
  {
    is_ycc_full_range = CI::format_is_ycc_full_range(*(this + 60));
    if (CI::format_is_float(*(this + 60)))
    {
      v12 = 0;
    }

    else if (CI::format_is_deep(*(this + 60)))
    {
      v12 = 10;
    }

    else
    {
      v12 = 8;
    }

    default_ycc_color_matrix = *(this + 63);
    if (!default_ycc_color_matrix)
    {
      default_ycc_color_matrix = CI::format_get_default_ycc_color_matrix(*(this + 60));
    }

    return get_ycc_to_rgb_matrix(default_ycc_color_matrix, is_ycc_full_range, v12, a2, a3, a4, a5);
  }

  return result;
}

void CI::ProviderImage::render_graph_core(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = CI::ProviderNode::FormatConversion(*(a1 + 240));
  if (CI::Context::format_is_supported_for_input(a2, v7))
  {
    v8 = CI::Context::swizzler_for_input(a2, v7);
    v10 = v9;
    if (CI::PixelFormatType_from_format(v8))
    {
      if (*(a1 + 260) != 1 && (*(a1 + 256) | 2) != 6)
      {
        if ((*(*a2 + 16))(a2) == 82 || (v13 = CI::Image::lookup_union_roi(a1, a4), v15 = v14, v17 = v16, v19 = v18, v20.origin.x = (*(*a1 + 88))(a1), v21.origin.x = v13, v21.origin.y = v15, v21.size.width = v17, v21.size.height = v19, !CGRectContainsRect(v20, v21)))
        {
          if ((*(*a2 + 568))(a2, 0))
          {
            CI::format_has_alpha(*(a1 + 240));
          }
        }
      }

      if (v10)
      {
        CI::input_format_for_conversion(v10);
      }

      if (*(a1 + 264) != 1)
      {
        (*(*a2 + 576))(a2, 1, v8);
      }

      (*(*a2 + 16))(a2);
      operator new();
    }

    v12 = ci_logger_render();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      operator new();
    }
  }

  else
  {
    v11 = ci_logger_render();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }
  }

  CI::ProviderImage::render_graph_core(v7);
  goto LABEL_9;
}

uint64_t ___ZNK2CI13ProviderImage17render_graph_coreEPNS_7ContextERNS_14ImageToNodeMapERKNSt3__13mapINS_11ImageDigestE6CGRectNS5_4lessIS7_EENS5_9allocatorINS5_4pairIKS7_S8_EEEEEEi_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(*(a1 + 32) + 152);
  v12 = CI::MetalContext::queue(*(a1 + 40));
  v13 = *(v11 + 16);

  return v13(v11, a2, v12, a3, a4, a5, a6);
}

void CI::ProviderImage::restore_resources(CI::ProviderImage *this, CI::Node *a2)
{
  if ((*(*a2 + 16))(a2) == 52)
  {
    v4 = *(this + 29);
    v5 = *(this + 16);
    v6 = *(this + 18);
    v7 = *(this + 20);

    CI::ProviderNode::set_provider(a2, v4, v5, v6, v7);
  }
}

void *CI::ProviderImage::node_for_graphviz(uint64_t a1, void *a2)
{
  v3 = CI::Image::node_for_graphviz(a1, a2);
  if (CI_PRINT_TREE_dump_inputs())
  {
    v4 = CI::PixelFormatType_from_format(*(a1 + 240));
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 184) == *(a1 + 192))
      {
        Surface = CreateSurface(*(a1 + 168), *(a1 + 176), 0, v4, 0);
        if (Surface)
        {
          v7 = Surface;
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 0x40000000;
          v13[2] = ___ZNK2CI13ProviderImage17node_for_graphvizERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS1_4hashIS5_EENS1_8equal_toIS5_EENS1_9allocatorINS1_4pairIKS5_jEEEEEE_block_invoke;
          v13[3] = &__block_descriptor_tmp_14_2;
          v13[4] = a1;
          v8 = v13;
          goto LABEL_9;
        }
      }

      else if ((CI::format_is_ycc_biplanar(*(a1 + 240)) & 1) == 0)
      {
        v6 = CreateSurface(*(a1 + 168), *(a1 + 176), 0, v5, 0);
        if (v6)
        {
          v7 = v6;
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 0x40000000;
          v12[2] = ___ZNK2CI13ProviderImage17node_for_graphvizERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS1_4hashIS5_EENS1_8equal_toIS5_EENS1_9allocatorINS1_4pairIKS5_jEEEEEE_block_invoke_2;
          v12[3] = &__block_descriptor_tmp_15_4;
          v12[4] = a1;
          v8 = v12;
LABEL_9:
          SurfaceApplyPlaneBlock(v7, v8);
          CGImage = SurfaceCreateCGImage(v7, 0, 1);
          CIGVNodeAddImage(v3, CGImage);
          CGImageRelease(CGImage);
          CFRelease(v7);
        }
      }
    }
  }

  return v3;
}

uint64_t ___ZNK2CI13ProviderImage17node_for_graphvizERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS1_4hashIS5_EENS1_8equal_toIS5_EENS1_9allocatorINS1_4pairIKS5_jEEEEEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3 == 1 && !CI::format_is_ycc_422(*(v3 + 240)))
  {
    CI::format_is_ycc_444(*(v3 + 240));
  }

  v4 = *(*(v3 + 144) + 16);

  return v4();
}

uint64_t ___ZNK2CI13ProviderImage17node_for_graphvizERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS1_4hashIS5_EENS1_8equal_toIS5_EENS1_9allocatorINS1_4pairIKS5_jEEEEEE_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = *(result + 32);
  v7 = *(v6 + 184);
  v8 = *(v6 + 192) - v7;
  if (v8)
  {
    v9 = *(*(v6 + 184) + 8) - *v7;
    if (v9)
    {
      v13 = 0;
      v14 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v15 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      if (v14 <= 1)
      {
        v14 = 1;
      }

      v26 = v14;
      v27 = v15;
      v28 = a5;
      v29 = a2;
      do
      {
        v16 = 0;
        v17 = v26;
        do
        {
          v18 = (*(*(v6 + 184) + v16) + 24 * v13);
          v19 = *v18;
          v20 = v18[1];
          v22 = *(v18 + 1);
          v21 = *(v18 + 2);
          if (v21 + v20 > a5)
          {
            v21 = a5 - v20;
          }

          v31 = v21;
          if (v22 + v19 <= a4)
          {
            v23 = v22;
          }

          else
          {
            v23 = a4 - v19;
          }

          v30 = v23;
          v24 = a2 + v20 * a6;
          v25 = CI::format_bytes_for_width_of_plane(*(v6 + 240), v19, a3);
          result = (*(*(v6 + 144) + 16))(*(v6 + 144), v24 + v25, a3, a6, v19, v20, v30, v31);
          a5 = v28;
          a2 = v29;
          v16 += 24;
          --v17;
        }

        while (v17);
        ++v13;
      }

      while (v13 != v27);
    }
  }

  return result;
}

void CI::ProviderImage::print_for_graphviz(uint64_t a1, FILE *__stream, uint64_t a3, int a4)
{
  if (a4)
  {
    v6 = 32;
  }

  else
  {
    v6 = 10;
  }

  fwrite("provider", 8uLL, 1uLL, __stream);
  if (*(a1 + 128))
  {
    fprintf(__stream, " content:%016llX");
  }

  else
  {
    fprintf(__stream, " %d");
  }

  if (*(a1 + 136))
  {
    fputc(58, __stream);
    CI::fprintf(__stream, *(a1 + 136), v7);
  }

  v8 = CI::name_for_format(*(a1 + 240));
  fprintf(__stream, " %s", v8);
  if (*(a1 + 252))
  {
    fprintf(__stream, " %d", *(a1 + 252));
  }

  fprintf(__stream, " %ldx%ld", *(a1 + 168), *(a1 + 176));
  v9 = *(a1 + 184);
  v10 = *(a1 + 192);
  if (v9 != v10)
  {
    memset(v31, 0, sizeof(v31));
    std::vector<std::vector<IRect>>::__init_with_size[abi:nn200100]<std::vector<IRect>*,std::vector<IRect>*>(v31, v9, v10, 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3));
    if (CI::Tileable::findHasVaryingTileSizes(v31))
    {
      v11 = "varying size with max ";
    }

    else
    {
      v11 = "";
    }

    v29 = 0;
    v30 = 0;
    v28 = 0;
    std::vector<std::vector<IRect>>::__init_with_size[abi:nn200100]<std::vector<IRect>*,std::vector<IRect>*>(&v28, *(a1 + 184), *(a1 + 192), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 192) - *(a1 + 184)) >> 3));
    v12 = v28;
    v13 = 0;
    if (v29 != v28)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * (v29 - v28);
      if (v14 <= 1)
      {
        v14 = 1;
      }

      do
      {
        v15 = *v12;
        v12 += 3;
        v16 = *(v15 + 8);
        if (v16 > v13)
        {
          v13 = v16;
        }

        --v14;
      }

      while (v14);
    }

    memset(v27, 0, sizeof(v27));
    std::vector<std::vector<IRect>>::__init_with_size[abi:nn200100]<std::vector<IRect>*,std::vector<IRect>*>(v27, *(a1 + 184), *(a1 + 192), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 192) - *(a1 + 184)) >> 3));
    v17 = 0;
    v18 = *(v27[0] + 8) - *v27[0];
    if (v18)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * (v18 >> 3);
      if (v19 <= 1)
      {
        v19 = 1;
      }

      v20 = (*v27[0] + 16);
      do
      {
        v22 = *v20;
        v20 += 3;
        v21 = v22;
        if (v22 > v17)
        {
          v17 = v21;
        }

        --v19;
      }

      while (v19);
    }

    fprintf(__stream, "%ctile=%s%zux%zu", v6, v11, v13, v17);
    v32 = v27;
    std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](&v32);
    v32 = &v28;
    std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](&v32);
    v32 = v31;
    std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](&v32);
  }

  if (*(a1 + 256) || *(a1 + 260) || (*(a1 + 264) & 1) != 0 || *(a1 + 265) == 1)
  {
    fputc(v6, __stream);
    v23 = *(a1 + 256);
    if (v23 <= 1)
    {
      if (!v23)
      {
        goto LABEL_45;
      }

      if (v23 == 1)
      {
        v24 = "alpha_one";
        goto LABEL_44;
      }
    }

    else
    {
      switch(v23)
      {
        case 6:
          v24 = "alpha_unpremul-clear-edges";
          goto LABEL_44;
        case 4:
          v24 = "alpha_premul-clear-edges";
          goto LABEL_44;
        case 2:
          v24 = "alpha_unpremul";
LABEL_44:
          fprintf(__stream, "%s ", v24);
          goto LABEL_45;
      }
    }

    v24 = "alpha_unknown";
    goto LABEL_44;
  }

LABEL_45:
  v25 = *(a1 + 260);
  if (v25)
  {
    if (v25 == 1)
    {
      v26 = "edge_clamp";
    }

    else
    {
      v26 = "edge_unknown";
    }

    fprintf(__stream, "%s ", v26);
  }

  if (*(a1 + 264) == 1)
  {
    fwrite("nearestsampling ", 0x10uLL, 1uLL, __stream);
  }

  if (*(a1 + 265) == 1)
  {
    fwrite("cache ", 6uLL, 1uLL, __stream);
  }
}

_DWORD *CI::ProviderImage::extent(_DWORD *this)
{
  if (!this[65])
  {
    return (*(*this + 96))(this);
  }

  return this;
}

uint64_t CI::ProviderImage::max_dimension(CI::ProviderImage *this)
{
  if (*(this + 21) <= *(this + 22))
  {
    return *(this + 22);
  }

  else
  {
    return *(this + 21);
  }
}

void CI::ProviderImage::set_avdepthdata(CI::ProviderImage *this, CFTypeRef cf)
{
  CFRetain(cf);
  v4 = *(this + 27);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 27) = cf;
}

void CI::ProviderImage::set_avmatte(CI::ProviderImage *this, CFTypeRef cf)
{
  CFRetain(cf);
  v4 = *(this + 28);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 28) = cf;
}

void CI::ProviderImage::set_ssmatte(CI::ProviderImage *this, CFTypeRef cf)
{
  CFRetain(cf);
  v4 = *(this + 29);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 29) = cf;
}

void std::vector<std::vector<IRect>>::__assign_with_size[abi:nn200100]<std::vector<IRect>*,std::vector<IRect>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::vector<IRect>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v8 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::vector<IRect>>::__vallocate[abi:nn200100](a1, v9);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  v10 = a1[1] - v7;
  if (0xAAAAAAAAAAAAAAABLL * (v10 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:nn200100]<std::vector<IRect> *,std::vector<IRect> *,std::vector<IRect> *>(&v22, a2, a3, v7);
    v16 = v15;
    v17 = a1[1];
    if (v17 != v15)
    {
      v18 = a1[1];
      do
      {
        v20 = *(v18 - 24);
        v18 -= 24;
        v19 = v20;
        if (v20)
        {
          *(v17 - 16) = v19;
          operator delete(v19);
        }

        v17 = v18;
      }

      while (v18 != v16);
    }

    a1[1] = v16;
  }

  else
  {
    v11 = (a2 + v10);
    std::__copy_impl::operator()[abi:nn200100]<std::vector<IRect> *,std::vector<IRect> *,std::vector<IRect> *>(&v21, a2, (a2 + v10), v7);
    v12 = a1[1];
    if (v11 != a3)
    {
      v13 = a1[1];
      do
      {
        v14 = std::vector<IRect>::vector[abi:nn200100](v13, v11);
        v11 += 3;
        v13 = v14 + 3;
        v12 += 24;
      }

      while (v11 != a3);
    }

    a1[1] = v12;
  }
}

char **std::__copy_impl::operator()[abi:nn200100]<std::vector<IRect> *,std::vector<IRect> *,std::vector<IRect> *>(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<IRect>::__assign_with_size[abi:nn200100]<IRect*,IRect*>(a4, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 3));
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *std::vector<IRect>::__assign_with_size[abi:nn200100]<IRect*,IRect*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<IRect>::__vallocate[abi:nn200100](v6, v11);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void *CI::InstanceCounted<(CI::Type)20>::~InstanceCounted(void *result)
{
  *result = &unk_1F1036EE0;
  atomic_fetch_add(&dword_1ED7C47BC[18], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)20>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1036EE0;
  atomic_fetch_add(&dword_1ED7C47BC[18], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

uint64_t CI::SampleModeImage::render_graph_core(uint64_t a1, int a2, CI::Object *this)
{
  if (this)
  {
    v4 = CI::Object::ref(this);
    v6 = *(a1 + 136);
    v5 = (a1 + 136);
    v7 = CI::SampleModeNode::append_to_tree(v4, v6);
    if (v4)
    {
      CI::Object::unref(v4);
    }
  }

  else
  {
    v5 = (a1 + 136);
    v7 = CI::SampleModeNode::append_to_tree(0, *(a1 + 136));
  }

  result = v7;
  if (*v5 == 1)
  {

    CI::NoopNode::append_to_tree_and_unref();
  }

  return result;
}

CGFloat CI::SampleModeImage::roi_of_child(CI::SampleModeImage *this, CGRect a2)
{
  v2 = *(this + 34);
  if (v2 == 1)
  {
    v3 = -0.499;
    goto LABEL_5;
  }

  if (!v2)
  {
    v3 = 0.001;
LABEL_5:
    v5 = CGRectInset(a2, v3, v3);
    *&a2.origin.x = CGRectIntegral(v5);
  }

  return a2.origin.x;
}

__n64 CI::SampleModeImage::extent(CI::SampleModeImage *this)
{
  (*(**(this + 15) + 88))(*(this + 15));
  v6 = *(this + 34);
  if (!v6)
  {
    v7 = CGRectInset(*result.n64_u64, 0.001, 0.001);
    *result.n64_u64 = CGRectIntegral(v7);
    v6 = *(this + 34);
  }

  if (v6 == 1)
  {
    v8 = CGRectInset(*result.n64_u64, 0.001, 0.001);
    return CGRectIntegral(v8);
  }

  return result;
}

__n64 CI::SampleModeImage::extent_unclamped(CI::SampleModeImage *this)
{
  (*(**(this + 15) + 96))(*(this + 15));
  v6 = *(this + 34);
  if (!v6)
  {
    v7 = CGRectInset(*result.n64_u64, 0.001, 0.001);
    *result.n64_u64 = CGRectIntegral(v7);
    v6 = *(this + 34);
  }

  if (v6 == 1)
  {
    v8 = CGRectInset(*result.n64_u64, -0.499, -0.499);
    return CGRectIntegral(v8);
  }

  return result;
}

void CI::SampleModeImage::~SampleModeImage(CI::SampleModeImage *this)
{
  *(this + 16) = &unk_1F10321A0;
  atomic_fetch_add(&dword_1ED7C47BC[21], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);
}

{
  *(this + 16) = &unk_1F10321A0;
  atomic_fetch_add(&dword_1ED7C47BC[21], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::SampleModeImage::print_for_graph_core(CI::SampleModeImage *this, __sFILE *a2)
{
  v2 = *(this + 34) + 1;
  if (v2 > 2)
  {
    v3 = "unknown";
  }

  else
  {
    v3 = off_1E75C5BF8[v2];
  }

  return fprintf(a2, "samplemode %s", v3);
}

void non-virtual thunk toCI::SampleModeImage::~SampleModeImage(CI::SampleModeImage *this)
{
  *this = &unk_1F10321A0;
  atomic_fetch_add(&dword_1ED7C47BC[21], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));
}

{
  *this = &unk_1F10321A0;
  atomic_fetch_add(&dword_1ED7C47BC[21], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));

  JUMPOUT(0x19EAF5590);
}

size_t CI::SRGBImage::print_for_graph_core(CI::SRGBImage *this, __sFILE *__stream)
{
  v3 = *(this + 34);
  if (v3 == 1)
  {
    v4 = "linear_to_srgb";
LABEL_7:
    v5 = 14;
    return fwrite(v4, v5, 1uLL, __stream);
  }

  if (v3)
  {
    if (v3 != -1)
    {
      v4 = "srgb_invalid";
      v5 = 12;
      return fwrite(v4, v5, 1uLL, __stream);
    }

    v4 = "srgb_to_linear";
    goto LABEL_7;
  }

  v4 = "srgb_noop";
  v5 = 9;
  return fwrite(v4, v5, 1uLL, __stream);
}

float CI::SRGBImage::headroom(CI::SRGBImage *this)
{
  v2 = (*(*this + 48))(this, 0);
  *v3.i32 = (*(*v2 + 232))(v2);
  v5.i64[0] = 0;
  if (*v3.i32 < 1.0)
  {
    return *v5.i32;
  }

  v7 = *(this + 34);
  switch(v7)
  {
    case 1:
      v10 = fabsf(*v3.i32);
      if (v10 < 0.0031308)
      {
        v9 = 12.92;
        goto LABEL_11;
      }

      v5.i32[0] = 1.0;
      v11.i64[0] = 0x8000000080000000;
      v11.i64[1] = 0x8000000080000000;
      v5.i32[0] = vbslq_s8(v11, v5, v3).u32[0];
      if (*v3.i32 == 0.0)
      {
        *v5.i32 = 0.0;
      }

      v12 = *v5.i32;
      v13 = (powf(v10, 0.41667) * 1.055) + -0.055;
LABEL_18:
      *v5.i32 = v12 * v13;
      return *v5.i32;
    case 0:
      v5.i32[0] = v3.i32[0];
      return *v5.i32;
    case -1:
      v8 = fabsf(*v3.i32);
      if (v8 < 0.04045)
      {
        v9 = 0.077399;
LABEL_11:
        *v5.i32 = *v3.i32 * v9;
        return *v5.i32;
      }

      v4.i32[0] = 1.0;
      v14.i64[0] = 0x8000000080000000;
      v14.i64[1] = 0x8000000080000000;
      v4.i32[0] = vbslq_s8(v14, v4, v3).u32[0];
      if (*v3.i32 == 0.0)
      {
        *v4.i32 = 0.0;
      }

      v12 = *v4.i32;
      v13 = powf((v8 * 0.94787) + 0.052133, 2.4);
      goto LABEL_18;
  }

  return *v5.i32;
}

CI::PremultiplyNode *CI::SRGBImage::render_graph_core(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a1 + 184))(a1);
  if (a3)
  {
    v6 = CI::Object::ref(a3);
    v7 = CI::PremultiplyNode::append_to_tree(v6, 0xFFFFFFFFLL, v5);
    if (v6)
    {
      CI::Object::unref(v6);
    }
  }

  else
  {
    v7 = CI::PremultiplyNode::append_to_tree(0, 0xFFFFFFFFLL, v5);
  }

  v8 = CI::SRGBNode::append_to_tree(v7, a1[34], v5);
  if (v7)
  {
    CI::Object::unref(v7);
  }

  v9 = CI::PremultiplyNode::append_to_tree(v8, 1, v5);
  if (v8)
  {
    CI::Object::unref(v8);
  }

  return v9;
}

void CI::SRGBImage::~SRGBImage(CI::SRGBImage *this)
{
  *this = &unk_1F10370B8;
  *(this + 34) = 0;
  *(this + 16) = &unk_1F1032A30;
  atomic_fetch_add(&dword_1ED7C47BC[12], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);
}

{
  *this = &unk_1F10370B8;
  *(this + 34) = 0;
  *(this + 16) = &unk_1F1032A30;
  atomic_fetch_add(&dword_1ED7C47BC[12], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::SRGBImage::~SRGBImage(CI::SRGBImage *this)
{
  *(this - 16) = &unk_1F10370B8;
  *(this + 2) = 0;
  *this = &unk_1F1032A30;
  atomic_fetch_add(&dword_1ED7C47BC[12], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));
}

{
  CI::SRGBImage::~SRGBImage((this - 128));
}

uint64_t CI::SurfaceImage::SurfaceImage(uint64_t a1, void *a2, uint64_t a3, int a4, int default_ycc_color_matrix, const void *a6, int a7, int a8, float a9, float a10, char a11, char a12)
{
  valuePtr = a9;
  CI::Image::Image(a1);
  *(v21 + 120) = &unk_1F1037420;
  atomic_fetch_add(&dword_1ED7C47BC[20], 1u);
  *v21 = &unk_1F1037268;
  *(v21 + 128) = a2;
  *(v21 + 136) = a3;
  *(v21 + 188) = 0;
  *(v21 + 192) = 0;
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;
  *(v21 + 160) = 0;
  *(v21 + 120) = &unk_1F10373F8;
  CFRetain(a2);
  *(a1 + 144) = 0;
  *(a1 + 184) = a4;
  *(a1 + 200) = a7;
  if (a6)
  {
    v22 = CFRetain(a6);
  }

  else
  {
    v22 = 0;
  }

  *(a1 + 152) = v22;
  *(a1 + 204) = a8;
  *(a1 + 208) = a11;
  *(a1 + 209) = a12;
  *(a1 + 196) = 0;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 132;
  if (IOSurfaceGetBulkAttachments())
  {
    v23 = 0;
  }

  else
  {
    v23 = v33 == 132;
  }

  v24 = v23;
  v25 = valuePtr;
  if (valuePtr == 0.0)
  {
    v26 = IOSurfaceCopyValue(*(a1 + 128), *MEMORY[0x1E696CEF0]);
    if (v26)
    {
      v27 = v26;
      CFNumberGetValue(v26, kCFNumberFloatType, &valuePtr);
      CFRelease(v27);
      v25 = valuePtr;
    }

    else
    {
      if (WORD4(v39))
      {
        v28 = v24;
      }

      else
      {
        v28 = 0;
      }

      if (v28 == 1)
      {
        v25 = WORD4(v39) / 203.0;
        valuePtr = v25;
      }

      else if ((CI::format_is_extended(a4) & 1) == 0 && (CI::format_is_float(a4) & 1) == 0)
      {
        valuePtr = 1.0;
        v25 = 1.0;
      }
    }
  }

  *(a1 + 188) = v25;
  if (a10 == 0.0)
  {
    v29 = WORD5(v39) ? v24 : 0;
    if (v29 == 1)
    {
      a10 = WORD5(v39) / 203.0;
    }
  }

  *(a1 + 192) = a10;
  if (CI::format_is_ycc_or_ycca(*(a1 + 184)))
  {
    if (default_ycc_color_matrix)
    {
LABEL_29:
      *(a1 + 196) = default_ycc_color_matrix;
      goto LABEL_38;
    }

    if (BYTE10(v37))
    {
      v30 = v24;
    }

    else
    {
      v30 = 0;
    }

    if (v30 == 1 && BYTE10(v37) < 0xAu && ((0x161u >> (BYTE10(v37) - 1)) & 1) != 0)
    {
      default_ycc_color_matrix = dword_19CF2D1C8[(BYTE10(v37) - 1)];
      goto LABEL_29;
    }

    if (!*(a1 + 196))
    {
      default_ycc_color_matrix = CI::format_get_default_ycc_color_matrix(a4);
      goto LABEL_29;
    }
  }

LABEL_38:
  XXH64_reset(v32, 0);
  *__src = (*(*a1 + 16))(a1);
  XXH64_update(v32, __src, 4uLL);
  if (*(a1 + 136))
  {
    *__src = *(a1 + 136);
    XXH64_update(v32, __src, 8uLL);
    *__src = IOSurfaceGetWidth(a2);
    XXH64_update(v32, __src, 8uLL);
    *__src = IOSurfaceGetHeight(a2);
    XXH64_update(v32, __src, 8uLL);
    *__src = IOSurfaceGetPixelFormat(a2);
    XXH64_update(v32, __src, 4uLL);
    *__src = *(a1 + 184);
    XXH64_update(v32, __src, 4uLL);
    *__src = *(a1 + 196);
    XXH64_update(v32, __src, 4uLL);
    *__src = *(a1 + 200);
    XXH64_update(v32, __src, 4uLL);
    *__src = *(a1 + 204);
    XXH64_update(v32, __src, 4uLL);
    *__src = *(a1 + 208);
    XXH64_update(v32, __src, 4uLL);
    *__src = *(a1 + 188);
    XXH64_update(v32, __src, 4uLL);
    *__src = *(a1 + 192);
  }

  else
  {
    *__src = *(a1 + 116);
  }

  XXH64_update(v32, __src, 4uLL);
  *(a1 + 96) = XXH64_digest(v32);
  XXH64_reset(v32, 0);
  *__src = (*(*a1 + 16))(a1);
  XXH64_update(v32, __src, 4uLL);
  *__src = IOSurfaceGetWidth(a2);
  XXH64_update(v32, __src, 8uLL);
  *__src = IOSurfaceGetHeight(a2);
  XXH64_update(v32, __src, 8uLL);
  *__src = IOSurfaceGetPixelFormat(a2);
  XXH64_update(v32, __src, 4uLL);
  *__src = *(a1 + 184);
  XXH64_update(v32, __src, 4uLL);
  *__src = *(a1 + 196);
  XXH64_update(v32, __src, 4uLL);
  *__src = *(a1 + 200);
  XXH64_update(v32, __src, 4uLL);
  *__src = *(a1 + 204);
  XXH64_update(v32, __src, 4uLL);
  *__src = *(a1 + 208);
  XXH64_update(v32, __src, 4uLL);
  *__src = *(a1 + 188);
  XXH64_update(v32, __src, 4uLL);
  *__src = *(a1 + 192);
  XXH64_update(v32, __src, 4uLL);
  *(a1 + 104) = XXH64_digest(v32);
  *(a1 + 112) = 257;
  return a1;
}

{
  return CI::SurfaceImage::SurfaceImage(a1, a2, a3, a4, default_ycc_color_matrix, a6, a7, a8, a9, a10, a11, a12);
}

void CI::SurfaceImage::~SurfaceImage(CI::SurfaceImage *this)
{
  *this = &unk_1F1037268;
  *(this + 15) = &unk_1F10373F8;
  v2 = *(this + 16);
  if (v2)
  {
    CFRelease(v2);
    *(this + 16) = 0;
    v3 = *(this + 19);
    if (v3)
    {
      CFRelease(v3);
    }

    *(this + 19) = 0;
    v4 = *(this + 18);
    if (v4)
    {
      CFRelease(v4);
      *(this + 18) = 0;
    }
  }

  v5 = *(this + 20);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 20) = 0;
  v6 = *(this + 21);
  if (v6)
  {
    CFRelease(v6);
  }

  *(this + 21) = 0;
  v7 = *(this + 22);
  if (v7)
  {
    CFRelease(v7);
  }

  *(this + 22) = 0;
  *(this + 15) = &unk_1F1037420;
  atomic_fetch_add(&dword_1ED7C47BC[20], 0xFFFFFFFF);

  CI::Image::~Image(this);
}

{
  CI::SurfaceImage::~SurfaceImage(this);

  JUMPOUT(0x19EAF5590);
}

void CI::SurfaceImage::set_owner(CI::SurfaceImage *this, CFTypeRef cf)
{
  v3 = *(this + 18);
  if (v3 != cf)
  {
    if (cf)
    {
      CFRetain(cf);
      v3 = *(this + 18);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    *(this + 18) = cf;
  }
}

void non-virtual thunk toCI::SurfaceImage::~SurfaceImage(CI::SurfaceImage *this)
{
  CI::SurfaceImage::~SurfaceImage((this - 120));
}

{
  CI::SurfaceImage::~SurfaceImage((this - 120));

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::SurfaceImage::print_for_graph_core(CI::SurfaceImage *this, __sFILE *__stream)
{
  fwrite("IOSurface", 9uLL, 1uLL, __stream);
  if (*(this + 17))
  {
    fprintf(__stream, " content:%016llX");
  }

  else if (*(this + 16))
  {
    fprintf(__stream, " %p", *(this + 16));
    ID = IOSurfaceGetID(*(this + 16));
    fprintf(__stream, "(%d)", ID);
    IOSurfaceGetSeed(*(this + 16));
    fprintf(__stream, " seed:%d");
  }

  v5 = CI::name_for_format(*(this + 46));
  fprintf(__stream, " %s", v5);
  result = *(this + 16);
  if (result)
  {
    result = IOSurfaceGetPixelFormat(result);
    v7 = result >> 24;
    if ((result & 0xFD000000) == 0x2D000000)
    {
      if (v7 <= 46)
      {
        if (v7 != 38)
        {
          if (v7 == 45)
          {
            v8 = "lossy75";
LABEL_20:
            result = fprintf(__stream, "-%s", v8);
            goto LABEL_21;
          }

LABEL_18:
          v8 = "";
          goto LABEL_20;
        }

LABEL_14:
        v8 = "compressed";
        goto LABEL_20;
      }

      if (v7 == 47)
      {
        v8 = "lossy62";
        goto LABEL_20;
      }

      if (v7 != 124)
      {
        goto LABEL_18;
      }

LABEL_17:
      v8 = "lossy50";
      goto LABEL_20;
    }

    if (v7 == 38)
    {
      goto LABEL_14;
    }

    if (v7 == 124)
    {
      goto LABEL_17;
    }
  }

LABEL_21:
  if (*(this + 49))
  {
    result = fprintf(__stream, " %d", *(this + 49));
  }

  v9 = *(this + 50);
  if (v9 <= 1)
  {
    if (!v9)
    {
      goto LABEL_35;
    }

    if (v9 == 1)
    {
      v10 = "alpha_one";
      goto LABEL_34;
    }

LABEL_33:
    v10 = "alpha_unknown";
    goto LABEL_34;
  }

  if (v9 == 6)
  {
    v10 = "alpha_unpremul-clear-edges";
    goto LABEL_34;
  }

  if (v9 == 4)
  {
    v10 = "alpha_premul-clear-edges";
    goto LABEL_34;
  }

  if (v9 != 2)
  {
    goto LABEL_33;
  }

  v10 = "alpha_unpremul";
LABEL_34:
  result = fprintf(__stream, " %s", v10);
LABEL_35:
  v11 = *(this + 51);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = "edge_clamp";
    }

    else
    {
      v12 = "edge_unknown";
    }

    result = fprintf(__stream, " %s", v12);
  }

  if (*(this + 208) == 1)
  {
    result = fwrite(" nearestsampling", 0x10uLL, 1uLL, __stream);
  }

  if (*(this + 209) == 1)
  {

    return fwrite(" cache", 6uLL, 1uLL, __stream);
  }

  return result;
}

uint64_t CI::SurfaceImage::matrix_bias(CI::SurfaceImage *this, double *a2, float64x2_t *a3, double *a4, float64x2_t *a5)
{
  if (!*(this + 49))
  {
    return 0;
  }

  PixelFormat = IOSurfaceGetPixelFormat(*(this + 16));
  v11 = equivalent_uncompressed_format(PixelFormat);
  v12 = 0;
  if (v11 <= 1937126451)
  {
    if (v11 <= 1882468911)
    {
      if (v11 > 875704949)
      {
        v13 = v11 == 875704950;
        v14 = 875836534;
      }

      else
      {
        v13 = v11 == 846624121;
        v14 = 875704438;
      }
    }

    else if (v11 <= 1882469427)
    {
      v13 = v11 == 1882468912;
      v14 = 1882468914;
    }

    else
    {
      v13 = v11 == 1882469428 || v11 == 1937125936;
      v14 = 1937125938;
    }
  }

  else if (v11 > 2016686639)
  {
    if (v11 <= 2016687155)
    {
      v13 = v11 == 2016686640;
      v14 = 2016686642;
    }

    else
    {
      v13 = v11 == 2016687156 || v11 == 2033463352;
      v14 = 2037741171;
    }
  }

  else if (v11 <= 1953903153)
  {
    v13 = v11 == 1937126452;
    v14 = 1953903152;
  }

  else
  {
    v13 = v11 == 1953903154 || v11 == 1953903668;
    v14 = 1983000886;
  }

  if (!v13 && v11 != v14)
  {
    v12 = 1;
  }

  v17 = 8;
  if (v11 <= 1936077875)
  {
    if (v11 > 1751527985)
    {
      if (v11 > 1885745711)
      {
        if (v11 > 1885746227)
        {
          if (v11 != 1885746228)
          {
            if (v11 != 1936077360)
            {
              v24 = 1936077362;
              goto LABEL_72;
            }

LABEL_76:
            v17 = 16;
            goto LABEL_100;
          }

LABEL_99:
          v17 = 10;
          goto LABEL_100;
        }

        if (v11 == 1885745712)
        {
          goto LABEL_99;
        }

        v19 = 1885745714;
LABEL_98:
        if (v11 != v19)
        {
          goto LABEL_103;
        }

        goto LABEL_99;
      }

      if (v11 > 1882468911)
      {
        if (v11 == 1882468912 || v11 == 1882468914)
        {
          goto LABEL_99;
        }

        v19 = 1882469428;
        goto LABEL_98;
      }

      if (v11 == 1751527986)
      {
LABEL_95:
        v17 = 0;
        goto LABEL_100;
      }

      v21 = 13364;
LABEL_94:
      if (v11 != (v21 | 0x68660000))
      {
        goto LABEL_103;
      }

      goto LABEL_95;
    }

    if (v11 <= 875704933)
    {
      if (v11 <= 875704421)
      {
        if (v11 == 846624102)
        {
          goto LABEL_100;
        }

        v23 = 846624121;
LABEL_90:
        if (v11 == v23)
        {
          goto LABEL_100;
        }

        goto LABEL_103;
      }

      if (v11 == 875704422)
      {
        goto LABEL_100;
      }

      v25 = 12406;
    }

    else
    {
      if (v11 > 875836517)
      {
        if (v11 == 875836518 || v11 == 875836534)
        {
          goto LABEL_100;
        }

        v21 = 12848;
        goto LABEL_94;
      }

      if (v11 == 875704934)
      {
        goto LABEL_100;
      }

      v25 = 12918;
    }

    v23 = v25 | 0x34320000;
    goto LABEL_90;
  }

  if (v11 <= 1983000885)
  {
    if (v11 > 1952854577)
    {
      if (v11 > 1953903151)
      {
        if (v11 == 1953903152 || v11 == 1953903154)
        {
          goto LABEL_81;
        }

        v22 = 1953903668;
LABEL_80:
        if (v11 == v22)
        {
          goto LABEL_81;
        }

LABEL_103:
        v17 = -1;
        goto LABEL_100;
      }

      if (v11 == 1952854578)
      {
LABEL_81:
        v17 = 12;
        goto LABEL_100;
      }

      v18 = 13364;
LABEL_79:
      v22 = v18 | 0x74660000;
      goto LABEL_80;
    }

    if (v11 > 1937125937)
    {
      if (v11 != 1937125938 && v11 != 1937126452)
      {
        v18 = 12848;
        goto LABEL_79;
      }

      goto LABEL_76;
    }

    if (v11 != 1936077876)
    {
      v24 = 1937125936;
LABEL_72:
      if (v11 != v24)
      {
        goto LABEL_103;
      }

      goto LABEL_76;
    }

    goto LABEL_76;
  }

  if (v11 <= 2019963441)
  {
    if (v11 <= 2016686641)
    {
      if (v11 == 1983000886)
      {
        goto LABEL_76;
      }

      v19 = 2016686640;
      goto LABEL_98;
    }

    if (v11 == 2016686642 || v11 == 2016687156)
    {
      goto LABEL_99;
    }

    v20 = 12848;
    goto LABEL_84;
  }

  if (v11 <= 2033463351)
  {
    if (v11 == 2019963442)
    {
      goto LABEL_99;
    }

    v20 = 13364;
LABEL_84:
    v19 = v20 | 0x78660000;
    goto LABEL_98;
  }

  if (v11 != 2033463352 && v11 != 2037741158)
  {
    v23 = 2037741171;
    goto LABEL_90;
  }

LABEL_100:
  v26 = *(this + 49);

  return get_ycc_to_rgb_matrix(v26, v12, v17, a2, a3, a4, a5);
}

uint64_t CI::SurfaceImage::add_args_to_hash(uint64_t a1, uint64_t a2)
{
  __src = *(a1 + 184);
  XXH64_update(a2, &__src, 4uLL);
  __src = *(a1 + 196);
  XXH64_update(a2, &__src, 4uLL);
  __src = *(a1 + 200);
  XXH64_update(a2, &__src, 4uLL);
  __src = *(a1 + 204);
  XXH64_update(a2, &__src, 4uLL);
  __src = *(a1 + 208);
  XXH64_update(a2, &__src, 4uLL);
  __src = *(a1 + 188);
  XXH64_update(a2, &__src, 4uLL);
  __src = IOSurfaceGetPixelFormat(*(a1 + 128));
  return XXH64_update(a2, &__src, 4uLL);
}

void CI::SurfaceImage::render_graph_core(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (a1 + 184);
  v9 = CI::Context::swizzler_for_input(a2, *(a1 + 184));
  if (v9)
  {
    v10 = v8;
    if (*(a1 + 204) != 1 && (*(a1 + 200) | 2) != 6)
    {
      if ((*(*a2 + 16))(a2) == 82 || (v12 = CI::Image::lookup_union_roi(a1, a4), v14 = v13, v16 = v15, v18 = v17, v19.origin.x = (*(*a1 + 88))(a1), v20.origin.x = v12, v20.origin.y = v14, v20.size.width = v16, v20.size.height = v18, !CGRectContainsRect(v19, v20)))
      {
        if ((*(*a2 + 568))(a2, 0))
        {
          CI::format_has_alpha(*v7);
        }
      }
    }

    if (v10)
    {
      CI::input_format_for_conversion(v10);
    }

    if ((*(a1 + 208) & 1) == 0)
    {
      (*(*a2 + 576))(a2, 1, v9);
    }

    operator new();
  }

  v11 = ci_logger_render();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    CI::SurfaceImage::render_graph_core(v7, v11);
  }

  operator new();
}

void *CI::SurfaceImage::node_for_graphviz(uint64_t a1, void *a2)
{
  v3 = CI::Image::node_for_graphviz(a1, a2);
  if (CI_PRINT_TREE_dump_inputs())
  {
    CGImage = SurfaceCreateCGImage(*(a1 + 128), 0, 1);
    CIGVNodeAddImage(v3, CGImage);
    CGImageRelease(CGImage);
  }

  return v3;
}

void CI::SurfaceImage::restore_resources(CI::SurfaceImage *this, const void **a2)
{
  if ((*(*a2 + 2))(a2) == 54)
  {
    v4 = *(this + 16);
    if (a2[7] != v4)
    {
      v5 = *(this + 29);
      v6 = *(this + 17);

      CI::SurfaceNode::set_surface(a2, v5, v6, v4);
    }
  }
}

_DWORD *CI::SurfaceImage::extent(_DWORD *this)
{
  if (!this[51])
  {
    return (*(*this + 96))(this);
  }

  return this;
}

double CI::SurfaceImage::extent_unclamped(IOSurfaceRef *this)
{
  IOSurfaceGetWidth(this[16]);
  IOSurfaceGetHeight(this[16]);
  return 0.0;
}

size_t CI::SurfaceImage::max_dimension(IOSurfaceRef *this)
{
  Width = IOSurfaceGetWidth(this[16]);
  Height = IOSurfaceGetHeight(this[16]);
  v4 = this[16];
  if (Width <= Height)
  {
    return IOSurfaceGetHeight(v4);
  }

  else
  {
    return IOSurfaceGetWidth(v4);
  }
}

void CI::SurfaceImage::set_avdepthdata(CI::SurfaceImage *this, CFTypeRef cf)
{
  CFRetain(cf);
  v4 = *(this + 20);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 20) = cf;
}

void CI::SurfaceImage::set_avmatte(CI::SurfaceImage *this, CFTypeRef cf)
{
  CFRetain(cf);
  v4 = *(this + 21);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 21) = cf;
}

void CI::SurfaceImage::set_ssmatte(CI::SurfaceImage *this, CFTypeRef cf)
{
  CFRetain(cf);
  v4 = *(this + 22);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 22) = cf;
}

void *CI::InstanceCounted<(CI::Type)22>::~InstanceCounted(void *result)
{
  *result = &unk_1F1037420;
  atomic_fetch_add(&dword_1ED7C47BC[20], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)22>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1037420;
  atomic_fetch_add(&dword_1ED7C47BC[20], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

uint64_t CI::SwitchImage::SwitchImage(uint64_t a1, uint64_t a2, const void *a3)
{
  CI::Image::Image(a1);
  *(v6 + 120) = &unk_1F10375F0;
  atomic_fetch_add(&dword_1ED7C47BC[26], 1u);
  *v6 = &unk_1F1037448;
  *(v6 + 120) = &unk_1F10375C8;
  *(v6 + 128) = a2;
  v7 = *MEMORY[0x1E695F050];
  v8 = *(MEMORY[0x1E695F050] + 16);
  *(v6 + 144) = *MEMORY[0x1E695F050];
  *(v6 + 160) = v8;
  *(v6 + 176) = v7;
  *(v6 + 192) = v8;
  *(v6 + 88) = 0;
  XXH64_reset(v32, 0);
  XXH64_reset(v31, 0);
  LODWORD(__src) = (*(*a1 + 16))(a1);
  XXH64_update(v32, &__src, 4uLL);
  LODWORD(__src) = (*(*a1 + 16))(a1);
  XXH64_update(v31, &__src, 4uLL);
  v9 = *(a1 + 128);
  if (*v9 >= 1)
  {
    v10 = 0;
    v11 = -80;
    do
    {
      if (v10 > 9)
      {
        v12 = *(v9 + 2) + v11;
      }

      else
      {
        v12 = &v9[2 * v10 + 6];
      }

      v13 = *v12;
      __src = *(*v12 + 96);
      XXH64_update(v32, &__src, 8uLL);
      __src = *(v13 + 104);
      XXH64_update(v31, &__src, 8uLL);
      v14 = *(a1 + 144);
      v15 = *(a1 + 152);
      v16 = *(a1 + 160);
      v17 = *(a1 + 168);
      v36.origin.x = (*(*v13 + 88))(v13);
      v36.origin.y = v18;
      v36.size.width = v19;
      v36.size.height = v20;
      v34.origin.x = v14;
      v34.origin.y = v15;
      v34.size.width = v16;
      v34.size.height = v17;
      *(a1 + 144) = CGRectUnion(v34, v36);
      v21 = *(a1 + 176);
      v22 = *(a1 + 184);
      v23 = *(a1 + 192);
      v24 = *(a1 + 200);
      v37.origin.x = (*(*v13 + 96))(v13);
      v37.origin.y = v25;
      v37.size.width = v26;
      v37.size.height = v27;
      v35.origin.x = v21;
      v35.origin.y = v22;
      v35.size.width = v23;
      v35.size.height = v24;
      *(a1 + 176) = CGRectUnion(v35, v37);
      v28 = *(a1 + 88);
      v29 = *(v13 + 88);
      if (v28 <= v29 + 1)
      {
        v28 = v29 + 1;
      }

      *(a1 + 88) = v28;
      ++v10;
      v9 = *(a1 + 128);
      v11 += 8;
    }

    while (v10 < *v9);
  }

  *(a1 + 96) = XXH64_digest(v32);
  *(a1 + 104) = XXH64_digest(v31);
  *(a1 + 136) = _Block_copy(a3);
  *(a1 + 112) = *(*(*(a1 + 128) + 24) + 112);
  return a1;
}

void CI::SwitchImage::~SwitchImage(CI::SwitchImage *this)
{
  *this = &unk_1F1037448;
  *(this + 15) = &unk_1F10375C8;
  v2 = *(this + 16);
  if (v2)
  {
    CI::SerialObjectPtrArray::~SerialObjectPtrArray(v2);
    MEMORY[0x19EAF5590]();
  }

  _Block_release(*(this + 17));
  *(this + 17) = 0;
  *(this + 15) = &unk_1F10375F0;
  atomic_fetch_add(&dword_1ED7C47BC[26], 0xFFFFFFFF);

  CI::Image::~Image(this);
}

{
  CI::SwitchImage::~SwitchImage(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::SwitchImage::~SwitchImage(CI::SwitchImage *this)
{
  CI::SwitchImage::~SwitchImage((this - 120));
}

{
  CI::SwitchImage::~SwitchImage((this - 120));

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::SwitchImage::render_graph_core(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[17];
  v6 = (*(*a2 + 328))(a2);
  v7 = (*(v5 + 16))(v5, v6);
  if ((v7 & 0x80000000) != 0 || (v8 = v7, v7 >= (*(*a1 + 40))(a1)))
  {
    operator new();
  }

  v9 = *((*(*a1 + 48))(a1, v8) + 96);

  return CI::ImageToNodeMap::findAndRef(a3, v9);
}

uint64_t CI::SwitchImage::child(CI::SwitchImage *this, int a2)
{
  v2 = *(this + 16);
  if (a2 > 9)
  {
    v3 = *(v2 + 16) + 8 * a2 - 80;
  }

  else
  {
    v3 = v2 + 8 * a2 + 24;
  }

  return *v3;
}

uint64_t CI::SwitchImage::alpha_behavior(CI::SwitchImage *this)
{
  v1 = *(*(*(*this + 48))(this, 0) + 128);

  return v1();
}

uint64_t CI::SwitchImage::properties(CI::SwitchImage *this)
{
  v1 = *(*(*(*this + 48))(this, 0) + 200);

  return v1();
}

uint64_t CI::SwitchImage::avdepthdata(CI::SwitchImage *this)
{
  v1 = *(*(*(*this + 48))(this, 0) + 208);

  return v1();
}

uint64_t CI::SwitchImage::avmatte(CI::SwitchImage *this)
{
  v1 = *(*(*(*this + 48))(this, 0) + 216);

  return v1();
}

uint64_t CI::SwitchImage::ssmatte(CI::SwitchImage *this)
{
  v1 = *(*(*(*this + 48))(this, 0) + 224);

  return v1();
}

uint64_t CI::SwitchImage::headroom(CI::SwitchImage *this)
{
  v1 = *(*(*(*this + 48))(this, 0) + 232);

  return v1();
}

uint64_t CI::SwitchImage::lightlevel(CI::SwitchImage *this)
{
  v1 = *(*(*(*this + 48))(this, 0) + 240);

  return v1();
}

uint64_t CI::SwitchImage::colorspace(CI::SwitchImage *this)
{
  v1 = *(*(*(*this + 48))(this, 0) + 248);

  return v1();
}

void *CI::InstanceCounted<(CI::Type)28>::~InstanceCounted(void *result)
{
  *result = &unk_1F10375F0;
  atomic_fetch_add(&dword_1ED7C47BC[26], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)28>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F10375F0;
  atomic_fetch_add(&dword_1ED7C47BC[26], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

uint64_t CI::SwizzleImage::alpha_behavior(CI::SwizzleImage *this)
{
  v1 = *(this + 34);
  if (v1 <= 0x3F)
  {
    if (((1 << v1) & 0xC0030010000002FFLL) != 0)
    {
      return (*(**(this + 15) + 128))();
    }

    if (((1 << v1) & 0x8660100100) != 0)
    {
      return 0;
    }
  }

  v2 = 1;
  v4 = v1 - 65;
  if (v4 > 0x19)
  {
    return v2;
  }

  if (((1 << v4) & 0x3000003) == 0)
  {
    if (v4 != 21)
    {
      return v2;
    }

    return 0;
  }

  return (*(**(this + 15) + 128))();
}

CI::Object *CI::SwizzleImage::render_graph_core(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a1 + 184))(a1);
  if (a3)
  {
    v6 = CI::Object::ref(a3);
    v7 = CI::SwizzleNode::append_to_tree(v6, a1[34], v5);
    if (v6)
    {
      CI::Object::unref(v6);
    }

    return v7;
  }

  else
  {
    v9 = a1[34];

    return CI::SwizzleNode::append_to_tree(0, v9, v5);
  }
}

void CI::SwizzleImage::~SwizzleImage(CI::SwizzleImage *this)
{
  *this = &unk_1F1037618;
  *(this + 34) = 0;
  *(this + 16) = &unk_1F1031818;
  atomic_fetch_add(&dword_1ED7C47BC[27], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);
}

{
  *this = &unk_1F1037618;
  *(this + 34) = 0;
  *(this + 16) = &unk_1F1031818;
  atomic_fetch_add(&dword_1ED7C47BC[27], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::SwizzleImage::shape_for_graphviz(CI::SwizzleImage *this)
{
  if ((*(*this + 376))(this))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t CI::SwizzleImage::color_for_graphviz(CI::SwizzleImage *this)
{
  if ((*(*this + 376))(this))
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t CI::SwizzleImage::print_for_graph_core(CI::SwizzleImage *this, __sFILE *a2)
{
  v2 = *(this + 34);
  if (v2 > 0x5A)
  {
    v3 = "unknown-swizzle";
  }

  else
  {
    v3 = off_1E75C5C10[v2];
  }

  return fputs(v3, a2);
}

void non-virtual thunk toCI::SwizzleImage::~SwizzleImage(CI::SwizzleImage *this)
{
  *(this - 16) = &unk_1F1037618;
  *(this + 2) = 0;
  *this = &unk_1F1031818;
  atomic_fetch_add(&dword_1ED7C47BC[27], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));
}

{
  CI::SwizzleImage::~SwizzleImage((this - 128));
}

uint64_t CI::TextureImage::TextureImage(uint64_t a1, _OWORD *a2, uint64_t a3, int a4, int a5, const void *a6, int a7, int a8)
{
  CI::Image::Image(a1);
  *(v16 + 120) = &unk_1F1037D58;
  atomic_fetch_add(&dword_1ED7C47BC[29], 1u);
  *v16 = &unk_1F10377D0;
  *(v16 + 120) = &unk_1F1037968;
  *(v16 + 128) = *a2;
  *(v16 + 144) = a3;
  if (a6)
  {
    v17 = CFRetain(a6);
  }

  else
  {
    v17 = 0;
  }

  *(a1 + 152) = v17;
  *(a1 + 160) = a4;
  *(a1 + 164) = a5;
  *(a1 + 168) = a7;
  *(a1 + 172) = a8;
  XXH64_reset(v19, 0);
  LODWORD(__src) = (*(*a1 + 16))(a1);
  XXH64_update(v19, &__src, 4uLL);
  if (*(a1 + 144))
  {
    __src = *(a1 + 144);
    XXH64_update(v19, &__src, 8uLL);
    LODWORD(__src) = *(a1 + 160);
    XXH64_update(v19, &__src, 4uLL);
    LODWORD(__src) = *(a1 + 164);
    XXH64_update(v19, &__src, 4uLL);
    LODWORD(__src) = *(a1 + 168);
    XXH64_update(v19, &__src, 4uLL);
    LODWORD(__src) = *(a1 + 172);
  }

  else
  {
    LODWORD(__src) = *(a1 + 116);
  }

  XXH64_update(v19, &__src, 4uLL);
  *(a1 + 96) = XXH64_digest(v19);
  XXH64_reset(v19, 0);
  LODWORD(__src) = (*(*a1 + 16))(a1);
  XXH64_update(v19, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 160);
  XXH64_update(v19, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 164);
  XXH64_update(v19, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 168);
  XXH64_update(v19, &__src, 4uLL);
  LODWORD(__src) = *(a1 + 172);
  XXH64_update(v19, &__src, 4uLL);
  *(a1 + 104) = XXH64_digest(v19);
  *(a1 + 112) = 0;
  return a1;
}

void sub_19CE889A8(_Unwind_Exception *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 17) = 0;
  *(v1 + 15) = v2;
  atomic_fetch_add((v3 + 124), 0xFFFFFFFF);
  CI::Image::~Image(v1);
  _Unwind_Resume(a1);
}

void CI::TextureImage::~TextureImage(CI::TextureImage *this)
{
  *this = &unk_1F10377D0;
  *(this + 15) = &unk_1F1037968;
  v2 = *(this + 19);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 19) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = &unk_1F1037D58;
  atomic_fetch_add(&dword_1ED7C47BC[29], 0xFFFFFFFF);

  CI::Image::~Image(this);
}

void sub_19CE88A8C(_Unwind_Exception *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 17) = 0;
  *(v1 + 15) = &unk_1F1037D58;
  atomic_fetch_add(&dword_1ED7C47BC[29], 0xFFFFFFFF);
  CI::Image::~Image(v1);
  _Unwind_Resume(a1);
}

uint64_t CI::TextureImage::print_for_graph_core(CI::TextureImage *this, __sFILE *a2)
{
  if ((*(*this + 376))(this))
  {
    fprintf(a2, "GLTexture %d", *(this + 32));
  }

  result = (*(*this + 384))(this);
  if (result)
  {
    fprintf(a2, "MTLTexture %p", *(this + 16));
    pixelFormatForMetalTexture(*(this + 16));
    v5 = stringForMetalTextureFormat();
    result = fprintf(a2, " %s", v5);
  }

  if (*(this + 18))
  {
    result = fprintf(a2, " content:%016llX", *(this + 18));
  }

  v6 = *(this + 42);
  if (v6 <= 1)
  {
    if (!v6)
    {
      goto LABEL_19;
    }

    if (v6 == 1)
    {
      v7 = "alpha_one";
      goto LABEL_18;
    }

LABEL_17:
    v7 = "alpha_unknown";
    goto LABEL_18;
  }

  if (v6 == 6)
  {
    v7 = "alpha_unpremul-clear-edges";
    goto LABEL_18;
  }

  if (v6 == 4)
  {
    v7 = "alpha_premul-clear-edges";
    goto LABEL_18;
  }

  if (v6 != 2)
  {
    goto LABEL_17;
  }

  v7 = "alpha_unpremul";
LABEL_18:
  result = fprintf(a2, " %s", v7);
LABEL_19:
  v8 = *(this + 43);
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = "edge_clamp";
    }

    else
    {
      v9 = "edge_unknown";
    }

    return fprintf(a2, " %s", v9);
  }

  return result;
}

uint64_t CI::TextureImage::add_args_to_hash(_DWORD *a1, uint64_t a2)
{
  if ((*(*a1 + 376))(a1))
  {
    __src = a1[33];
    XXH64_update(a2, &__src, 4uLL);
  }

  v6 = a1[42];
  XXH64_update(a2, &v6, 4uLL);
  v7 = a1[43];
  return XXH64_update(a2, &v7, 4uLL);
}

void CI::TextureImage::render_graph_core(_DWORD *a1, id *a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1[43] != 1 && (a1[42] | 2) != 6)
  {
    if ((*(*a2 + 2))(a2) == 82 || (v14 = CI::Image::lookup_union_roi(a1, a4), v16 = v15, v18 = v17, v20 = v19, v28.origin.x = (*(*a1 + 88))(a1), v29.origin.x = v14, v29.origin.y = v16, v29.size.width = v18, v29.size.height = v20, !CGRectContainsRect(v28, v29)))
    {
      (*(*a2 + 71))(a2, 0);
    }
  }

  if ((*(*a2 + 2))(a2) == 84 || (*(*a2 + 2))(a2) == 82)
  {
    if ((*(*a1 + 376))(a1))
    {
      operator new();
    }
  }

  else if ((*(*a2 + 2))(a2) == 85 && (*(*a1 + 384))(a1))
  {
    v6 = (*(*a1 + 384))(a1);
    Device = CIMetalTextureGetDevice(v6);
    if (Device == CI::MetalContext::device(a2))
    {
      operator new();
    }

    v8 = ci_logger_render();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      CI::TextureImage::render_graph_core(v8);
    }
  }

  if ((*(*a1 + 384))(a1))
  {
    v9 = (*(*a1 + 384))(a1);
    IOSurface = CIMetalTextureGetIOSurface(v9);
    if (IOSurface)
    {
      CI::format_from_IOSurface(IOSurface, v11);
      operator new();
    }
  }

  v12 = ci_logger_render();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    if ((*(*a1 + 376))(a1))
    {
      v21 = "GL";
    }

    else
    {
      v21 = "Metal";
    }

    v22 = (*(*a2 + 39))(a2);
    buf = 136446466;
    buf_4 = v21;
    buf_12 = 2082;
    buf_14 = v22;
    _os_log_error_impl(&dword_19CC36000, v12, OS_LOG_TYPE_ERROR, "Cannot render image (with an input %{public}s texture) using a %{public}s context.\n", &buf, 0x16u);
  }

  operator new();
}

uint64_t CI::TextureImage::restore_resources(CI::TextureImage *this, CI::Node *a2)
{
  result = (*(*a2 + 16))(a2);
  if (result == 56)
  {
    v5 = *(this + 8);
    return (*(*a2 + 456))(a2, &v5, *(this + 18));
  }

  return result;
}

uint64_t CI::MetalTextureImage::format(CI::MetalTextureImage *this)
{
  v1 = (*(*this + 384))(this);
  Format = CIMetalTextureGetFormat(v1);

  return CIFormatFromCIMetalTextureFormat(Format, 0);
}

void *CI::MetalTextureImage::node_for_graphviz(unsigned int *a1, void *a2)
{
  v3 = CI::Image::node_for_graphviz(a1, a2);
  if (CI_PRINT_TREE_dump_inputs() && (*(*a1 + 384))(a1))
  {
    v4 = (*(*a1 + 384))(a1);
    IOSurface = CIMetalTextureGetIOSurface(v4);
    if (IOSurface)
    {
      CGImage = SurfaceCreateCGImage(IOSurface, 0, 1);
      CIGVNodeAddImage(v3, CGImage);
      CGImageRelease(CGImage);
    }

    else
    {
      v7 = (*(*a1 + 360))(a1);
      v8 = CI::format_bits_per_pixel(v7);
      v9 = CI::format_bits_per_component(v7);
      v10 = (*(*a1 + 368))(a1) != 2 && (*(*a1 + 368))(a1) != 6;
      v11 = CI::format_CGBitmapInfo(v7, v10);
      v12 = (*(*a1 + 384))(a1);
      v13 = [v12 width];
      v14 = [v12 height];
      v15 = CI::format_bytes_per_row(v7, v13);
      v16 = [MEMORY[0x1E695DF88] dataWithLength:v15 * v14];
      memset(v21, 0, 24);
      v21[3] = v13;
      v21[4] = v14;
      v21[5] = 1;
      [v12 getBytes:objc_msgSend(v16 bytesPerRow:"mutableBytes") fromRegion:v15 mipmapLevel:{v21, 0}];
      v17 = CGDataProviderCreateWithCFData(v16);
      v18 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
      v19 = CGImageCreate(v13, v14, v9, v8, v15, v18, v11, v17, 0, 0, kCGRenderingIntentDefault);
      if (v19)
      {
        CIGVNodeAddImage(v3, v19);
      }

      CGDataProviderRelease(v17);
      CGImageRelease(v19);
      CGColorSpaceRelease(v18);
    }
  }

  return v3;
}

void CI::MetalTextureImage::~MetalTextureImage(CI::MetalTextureImage *this)
{
  CI::MetalTextureImage::~MetalTextureImage(this);

  JUMPOUT(0x19EAF5590);
}

{
  *this = &unk_1F1037990;
  *(this + 15) = &unk_1F1037B28;
  v2 = *(this + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  CI::TextureImage::~TextureImage(this);
}

void non-virtual thunk toCI::MetalTextureImage::~MetalTextureImage(CI::MetalTextureImage *this)
{
  CI::MetalTextureImage::~MetalTextureImage((this - 120));
}

{
  CI::MetalTextureImage::~MetalTextureImage((this - 120));

  JUMPOUT(0x19EAF5590);
}

void CI::GLTextureNode::~GLTextureNode(CI::GLTextureNode *this)
{
  CI::TextureNode::~TextureNode(this);

  JUMPOUT(0x19EAF5590);
}

_DWORD *CI::TextureNode::extent(_DWORD *this)
{
  if (!this[21])
  {
    return (*(*this + 176))(this);
  }

  return this;
}

__n128 CI::TextureNode::set_texture(__n128 *a1, __n128 *a2, unint64_t a3)
{
  result = *a2;
  a1[3] = *a2;
  a1[4].n128_u64[0] = a3;
  return result;
}

void non-virtual thunk toCI::GLTextureNode::~GLTextureNode(CI::GLTextureNode *this)
{
  CI::TextureNode::~TextureNode((this - 40));
}

{
  CI::TextureNode::~TextureNode((this - 40));

  JUMPOUT(0x19EAF5590);
}

void *CI::InstanceCounted<(CI::Type)31>::~InstanceCounted(void *result)
{
  *result = &unk_1F1037D58;
  atomic_fetch_add(&dword_1ED7C47BC[29], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)31>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1037D58;
  atomic_fetch_add(&dword_1ED7C47BC[29], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void CI::Image::~Image(CI::Image *this)
{
  v2 = &unk_1F1037D80;
  *this = &unk_1F1037D80;
  v3 = *(this + 6);
  if (v3)
  {
    CFRelease(v3);
    *(this + 6) = 0;
    v2 = *this;
  }

  v2[38](this, 0);
  (*(*this + 320))(this, 0);
  (*(*this + 344))(this, 0);
  (*(*this + 352))(this, 0);
}

void CI::Image::set_url(CI::Image *this, CFTypeRef cf)
{
  v3 = *(this + 6);
  if (v3 != cf)
  {
    if (cf)
    {
      CFRetain(cf);
      v3 = *(this + 6);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    *(this + 6) = cf;
  }
}

void CI::Image::set_user_info(CI::Image *this, CFTypeRef cf)
{
  v3 = *(this + 7);
  if (v3 != cf)
  {
    if (cf)
    {
      CFRetain(cf);
      v3 = *(this + 7);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    *(this + 7) = cf;
  }
}

void CI::Image::set_base_obj(CI::Image *this, CFTypeRef cf)
{
  v3 = *(this + 8);
  if (v3 != cf)
  {
    if (cf)
    {
      CFRetain(cf);
      v3 = *(this + 8);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    *(this + 8) = cf;
  }
}

void CI::Image::set_base_cgimage_obj(CGImageRef *this, CGImageRef image)
{
  if (this[9] != image)
  {
    CGImageRetain(image);
    CGImageRelease(this[9]);
    this[9] = image;
  }
}

void CI::Image::set_base_surface_obj(CI::Image *this, CFTypeRef cf)
{
  v3 = *(this + 10);
  if (v3 != cf)
  {
    if (cf)
    {
      CFRetain(cf);
      v3 = *(this + 10);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    *(this + 10) = cf;
  }
}

size_t CI::Image::print_for_graph(void *a1, FILE *a2)
{
  if (CI_GRAPHVIZ_INTERNAL() || CI_PRINT_TREE_dump_inputs())
  {
    fprintf(a2, "{%d} ", *(a1 + 29));
  }

  (*(*a1 + 160))(a1, a2);
  if (!CGRectIsNull(*(a1 + 2)))
  {
    fwrite(" roi=", 5uLL, 1uLL, a2);
    CI::fprintf(a2, v4, *(a1 + 2));
  }

  if ((*(*a1 + 232))(a1) > 1.0)
  {
    v5 = (*(*a1 + 232))(a1);
    fprintf(a2, " headroom=%.3f", v5);
  }

  if ((*(*a1 + 240))(a1) > 0.0)
  {
    v6 = (*(*a1 + 240))(a1);
    fprintf(a2, " lightlevel=%.3f", v6);
  }

  if ((*(*a1 + 128))(a1) == -1)
  {
    v7 = " unassociated_alpha";
    v8 = 19;
  }

  else
  {
    if ((*(*a1 + 128))(a1) != 1)
    {
      goto LABEL_15;
    }

    v7 = " opaque";
    v8 = 7;
  }

  fwrite(v7, v8, 1uLL, a2);
LABEL_15:
  fwrite(" extent=", 8uLL, 1uLL, a2);
  v22.origin.x = (*(*a1 + 88))(a1);
  CI::fprintf(a2, v9, v22);
  v10 = (*(*a1 + 88))(a1);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v25.origin.x = (*(*a1 + 96))(a1);
  v25.origin.y = v17;
  v25.size.width = v18;
  v25.size.height = v19;
  v23.origin.x = v10;
  v23.origin.y = v12;
  v23.size.width = v14;
  v23.size.height = v16;
  result = CGRectEqualToRect(v23, v25);
  if ((result & 1) == 0)
  {
    v24.origin.x = (*(*a1 + 96))(a1);
    result = CI::fprintf(a2, v21, v24);
  }

  if (a1[13])
  {
    return fprintf(a2, " recipe=%08X", a1[13]);
  }

  return result;
}

void CI::Image::region_of_child(CI::Image *this, CGRect a2, uint64_t a3)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  if (!CGRectIsEmpty(a2))
  {
    v38.origin.x = (*(*this + 80))(this, a3, x, y, width, height);
    v38.origin.y = v9;
    v38.size.width = v10;
    v38.size.height = v11;
    v12 = (*(*this + 48))(this, a3);
    v13 = (*(*v12 + 88))(v12);
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = (*(*v12 + 96))(v12);
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = (*(*v12 + 16))(v12);
    v28 = (*(*v12 + 16))(v12);
    if (v27 == 18 && (v39.origin.x = v13, v39.origin.y = v15, v39.size.width = v17, v39.size.height = v19, !CGRectIsInfinite(v39)))
    {
      if ((v12[360] & 1) == 0)
      {
LABEL_9:
        v38.size.width = v17;
        v38.size.height = v19;
        v38.origin.x = v13;
        v38.origin.y = v15;
      }
    }

    else if (v28 == 19)
    {
      v40.origin.x = v13;
      v40.origin.y = v15;
      v40.size.width = v17;
      v40.size.height = v19;
      if (!CGRectIsInfinite(v40) && (*((*(*v12 + 48))(v12, 0) + 360) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v41.origin.x = v13;
    v41.origin.y = v15;
    v41.size.width = v17;
    v41.size.height = v19;
    if (CGRectIsInfinite(v41) && (v42.origin.x = v20, v42.origin.y = v22, v42.size.width = v24, v42.size.height = v26, !(IsInfinite = CGRectIsInfinite(v42))))
    {
      v48.origin.x = v20;
      v48.origin.y = v22;
      v48.size.width = v24;
      v48.size.height = v26;
      CI::ClampNode::adjust_roi_for_clamp_rect(IsInfinite, v38, v48);
    }

    else
    {
      v43.origin.x = v13;
      v43.origin.y = v15;
      v43.size.width = v17;
      v43.size.height = v19;
      v47 = CGRectInset(v43, -1.0, -1.0);
      v44 = CGRectIntersection(v38, v47);
      v30 = v44.origin.x;
      v31 = v44.origin.y;
      v32 = v44.size.width;
      v33 = v44.size.height;
      if (CGRectIsEmpty(v44))
      {
        return;
      }

      v45.origin.x = v30;
      v45.origin.y = v31;
      v45.size.width = v32;
      v45.size.height = v33;
      if (CGRectIsInfinite(v45))
      {
        return;
      }

      v46.origin.x = v30;
      v46.origin.y = v31;
      v46.size.width = v32;
      v46.size.height = v33;
      *&v34 = CGRectInset(v46, 0.001, 0.001);
    }

    CGRectIntegral(*&v34);
  }
}

void *CI::Image::node_for_graphviz(unsigned int *a1, void *a2)
{
  v4 = (*(*a1 + 88))(a1);
  v8 = CIGVNodeCreateForNode(a1, v4, v5, v6, v7);
  v9 = (*(*a1 + 56))(a1);
  CIGVNodeSetShape(v8, v9);
  v10 = (*(*a1 + 64))(a1);
  CIGVNodeSetColor(v8, v10);
  if (CI_GRAPHVIZ_INTERNAL())
  {
    v11 = a1[29];
LABEL_5:
    v13 = CFStringCreateWithFormat(0, 0, @"%u", v11);
    CIGVNodeSetTitle(v8, v13);
    CFRelease(v13);
    goto LABEL_6;
  }

  v17 = a1;
  v12 = std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::find<void const*>(a2, &v17);
  if (v12)
  {
    v11 = *(v12 + 6);
    goto LABEL_5;
  }

LABEL_6:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = ___ZNK2CI5Image17node_for_graphvizERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS1_4hashIS5_EENS1_8equal_toIS5_EENS1_9allocatorINS1_4pairIKS5_jEEEEEE_block_invoke;
  v16[3] = &__block_descriptor_tmp_16;
  v16[4] = a1;
  v16[5] = a2;
  v14 = stream_to_string(v16);
  CIGVNodeSetLabel(v8, v14);
  CFRelease(v14);
  return v8;
}

size_t ___ZNK2CI5Image17node_for_graphvizERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS1_4hashIS5_EENS1_8equal_toIS5_EENS1_9allocatorINS1_4pairIKS5_jEEEEEE_block_invoke(uint64_t a1, FILE *a2)
{
  v3 = *(a1 + 32);
  (*(*v3 + 168))(v3, a2, *(a1 + 40), 0);
  if (!CGRectIsNull(*(v3 + 2)))
  {
    fprintf(a2, "%croi=", 10);
    CI::fprintf(a2, v4, *(v3 + 2));
  }

  if ((*(*v3 + 232))(v3) > 1.0)
  {
    v5 = (*(*v3 + 232))(v3);
    fprintf(a2, "%cheadroom=%.3f", 10, v5);
  }

  if ((*(*v3 + 240))(v3) > 0.0)
  {
    v6 = (*(*v3 + 240))(v3);
    fprintf(a2, "%clightlevel=%.3f", 10, v6);
  }

  if ((*(*v3 + 128))(v3) == -1)
  {
    fprintf(a2, "%cunassociated_alpha");
  }

  else if ((*(*v3 + 128))(v3) == 1)
  {
    fprintf(a2, "%copaque");
  }

  fprintf(a2, "%cextent=", 10);
  v22.origin.x = (*(*v3 + 88))(v3);
  CI::fprintf(a2, v7, v22);
  v8 = (*(*v3 + 88))(v3);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v25.origin.x = (*(*v3 + 96))(v3);
  v25.origin.y = v15;
  v25.size.width = v16;
  v25.size.height = v17;
  v23.origin.x = v8;
  v23.origin.y = v10;
  v23.size.width = v12;
  v23.size.height = v14;
  result = CGRectEqualToRect(v23, v25);
  if ((result & 1) == 0)
  {
    v24.origin.x = (*(*v3 + 96))(v3);
    result = CI::fprintf(a2, v19, v24);
  }

  v20 = v3[12];
  if (v20)
  {
    result = fprintf(a2, "%cdigest=%016llX", 10, v20);
  }

  v21 = v3[13];
  if (v21)
  {
    return fprintf(a2, "%crecipe=%016llX", 10, v21);
  }

  return result;
}

uint64_t CI::Image::render_graph_early_out(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = a1[12];
  v10 = a3 + 8;
  do
  {
    v11 = *(v8 + 32);
    v12 = v11 >= v9;
    v13 = v11 < v9;
    if (v12)
    {
      v10 = v8;
    }

    v8 = *(v8 + 8 * v13);
  }

  while (v8);
  if (v10 != a3 + 8 && *(v10 + 32) <= v9)
  {
    return 1;
  }

LABEL_9:
  v14 = CI::Image::lookup_union_roi(a1, a4);
  v20 = *(a5 + 8);
  v19 = a5 + 8;
  v18 = v20;
  if (!v20)
  {
    goto LABEL_17;
  }

  v21 = a1[12];
  v22 = v19;
  do
  {
    v23 = *(v18 + 32);
    v12 = v23 >= v21;
    v24 = v23 < v21;
    if (v12)
    {
      v22 = v18;
    }

    v18 = *(v18 + 8 * v24);
  }

  while (v18);
  if (v22 != v19 && v21 >= *(v22 + 32))
  {
    v25 = *(v22 + 40) != 0;
  }

  else
  {
LABEL_17:
    v25 = 0;
  }

  if (CGRectIsEmpty(*&v14) || !v25)
  {
    goto LABEL_24;
  }

  result = (*(*a1 + 272))(a1);
  if (result)
  {
    if ((*(*a1 + 40))(a1) != 1 || CI::Image::roi_of_child_intersects_extent(a1, a4, 0))
    {
      return 0;
    }

LABEL_24:
    operator new();
  }

  return result;
}

uint64_t CI::ImageToNodeMap::add(void *a1, uint64_t a2, uint64_t a3, CI::Object *this)
{
  CI::ImageToNodeMap::add_ImageDigest_to_node(a1, *(a3 + 96), this);
  v8 = *(a3 + 116);
  v9 = (*(*a3 + 16))(a3);
  result = CI::is_raster_TypeImage(v9);
  if ((result & 1) != 0 || (result = (*(*a3 + 16))(a3), result == 13) || (result = (*(*a3 + 16))(a3), result == 12) || (result = (*(*a3 + 16))(a3), result == 18))
  {
    v13 = *(a2 + 8);
    v12 = a2 + 8;
    v11 = v13;
    if (v13)
    {
      v14 = v12;
      do
      {
        v15 = *(v11 + 32);
        v16 = v15 >= v8;
        v17 = v15 < v8;
        if (v16)
        {
          v14 = v11;
        }

        v11 = *(v11 + 8 * v17);
      }

      while (v11);
      if (v14 != v12 && v8 >= *(v14 + 32))
      {
        v18 = *(v14 + 40);

        return CI::ImageToNodeMap::add_ImageDigestForRG_to_node(a1, v18, this);
      }
    }
  }

  return result;
}

void CI::Image::add_render_graph_to_map(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 + 8);
  v9 = a6 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = a1[12];
  v13 = v9;
  do
  {
    v14 = *(v10 + 32);
    v15 = v14 >= v12;
    v16 = v14 < v12;
    if (v15)
    {
      v13 = v10;
    }

    v10 = *(v10 + 8 * v16);
  }

  while (v10);
  if (v13 != v9 && v12 >= *(v13 + 32))
  {
    v17 = *(v13 + 40);
  }

  else
  {
LABEL_9:
    v17 = 0;
  }

  v18 = (*(*a1 + 176))(a1, a2, a4, a5, v17, v9);
  if (CI_DISABLE_MERGING())
  {
    CI::NoopNode::append_to_tree_and_unref();
  }

  if (v17 < 2)
  {
    CI::ImageToNodeMap::add(a4, a3, a1, v18);
    if (!v18)
    {
      return;
    }
  }

  else
  {
    (*(*v18 + 192))(v18);
    CI::ImageToNodeMap::add(a4, a3, a1, v18);
  }

  CI::Object::unref(v18);
}

uint64_t ___ZN2CI5Image18BuildMapToUnionRoiEPS0_6CGRect_block_invoke(double *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = *(a1 + 8);
    v10 = *(v7 + 8);
    v9 = v7 + 8;
    v8 = v10;
    v11 = MEMORY[0x1E695F050];
    if (v10)
    {
      v12 = a3[12];
      v13 = v9;
      do
      {
        v14 = *(v8 + 32);
        v19 = v14 >= v12;
        v15 = v14 < v12;
        if (v19)
        {
          v13 = v8;
        }

        v8 = *(v8 + 8 * v15);
      }

      while (v8);
      v16 = (MEMORY[0x1E695F050] + 24);
      v17 = (MEMORY[0x1E695F050] + 16);
      v18 = (MEMORY[0x1E695F050] + 8);
      if (v13 != v9)
      {
        v19 = v12 >= *(v13 + 32);
        v20 = (v13 + 40);
        v21 = (v13 + 48);
        v22 = (v13 + 56);
        v23 = (v13 + 64);
        if (v19)
        {
          v11 = v20;
        }

        if (v19)
        {
          v18 = v21;
        }

        if (v19)
        {
          v17 = v22;
        }

        if (v19)
        {
          v16 = v23;
        }
      }
    }

    else
    {
      v16 = (MEMORY[0x1E695F050] + 24);
      v17 = (MEMORY[0x1E695F050] + 16);
      v18 = (MEMORY[0x1E695F050] + 8);
    }

    v24 = (*(*a3 + 264))(a3, a5, *v11, *v18, *v17, *v16);
    v25 = v28;
    v26 = v29;
    v27 = v30;
  }

  else
  {
    v24 = a1[4];
    v25 = a1[5];
    v26 = a1[6];
    v27 = a1[7];
  }

  v31 = *(a1 + 8);
  v32 = *(a2 + 96);
  v33 = *(v31 + 8);
  if (!v33)
  {
    goto LABEL_32;
  }

  v34 = (v31 + 8);
  do
  {
    v35 = *(v33 + 4);
    v19 = v35 >= v32;
    v36 = v35 < v32;
    if (v19)
    {
      v34 = v33;
    }

    v33 = *&v33[v36];
  }

  while (v33);
  if (v34 != (v31 + 8) && v32 >= *(v34 + 4))
  {
    v39 = v34[5];
    v40 = v34[6];
    v41 = v34[7];
    v42 = v34[8];
    v44.origin.x = v39;
    v44.origin.y = v40;
    v44.size.width = v41;
    v44.size.height = v42;
    v47.origin.x = v24;
    v47.origin.y = v25;
    v47.size.width = v26;
    v47.size.height = v27;
    if (CGRectContainsRect(v44, v47))
    {
      return 1;
    }

    else
    {
      v45.origin.x = v24;
      v45.origin.y = v25;
      v45.size.width = v26;
      v45.size.height = v27;
      v48.origin.x = v39;
      v48.origin.y = v40;
      v48.size.width = v41;
      v48.size.height = v42;
      v46 = CGRectUnion(v45, v48);
      result = 0;
      *(v34 + 5) = v46;
    }
  }

  else
  {
LABEL_32:
    v43[0] = v32;
    v43[2] = v43;
    v37 = std::__tree<std::__value_type<CI::ImageDigest,CGRect>,std::__map_value_compare<CI::ImageDigest,std::__value_type<CI::ImageDigest,CGRect>,std::less<CI::ImageDigest>,true>,std::allocator<std::__value_type<CI::ImageDigest,CGRect>>>::__emplace_unique_key_args<CI::ImageDigest,std::piecewise_construct_t const&,std::tuple<CI::ImageDigest&&>,std::tuple<>>(v31, v43);
    result = 0;
    v37[5] = v24;
    v37[6] = v25;
    v37[7] = v26;
    v37[8] = v27;
  }

  return result;
}

void CI::Image::BuildMapToUseCount(CI::Image *this, CI::Image *a2, CI::Context *a3)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2000000000;
  operator new();
}

uint64_t ___ZN2CI5Image18BuildMapToUseCountEPS0_PNS_7ContextE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a2 + 96);
  v18[0] = v6;
  if (!a3 || (*(*a3 + 16))(a3) != 28 || (v9 = (*(**(a1 + 40) + 328))(*(a1 + 40)), (*(*a3 + 360))(a3, v9) == a5))
  {
    v10 = *(*(*(a1 + 32) + 8) + 24);
    v11 = *(v10 + 8);
    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = v10 + 8;
    do
    {
      v13 = *(v11 + 32);
      v14 = v13 >= v6;
      v15 = v13 < v6;
      if (v14)
      {
        v12 = v11;
      }

      v11 = *(v11 + 8 * v15);
    }

    while (v11);
    if (v12 == v10 + 8 || v6 < *(v12 + 32))
    {
LABEL_12:
      v18[2] = v18;
      v16 = std::__tree<std::__value_type<unsigned long long,int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v10, v18);
      result = 0;
      *(v16 + 10) = 1;
      return result;
    }

    ++*(v12 + 40);
  }

  return 1;
}

CI::ImageWithChild *CI::ImageWithChild::ImageWithChild(CI::ImageWithChild *this, CI::Image *a2)
{
  *(this + 2) = 1;
  *this = &unk_1F1037D80;
  v3 = *(MEMORY[0x1E695F050] + 16);
  *(this + 1) = *MEMORY[0x1E695F050];
  *(this + 2) = v3;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 76) = 0u;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 56) = 0;
  *(this + 29) = atomic_fetch_add(&CI::gImageCounter, 1u) + 1;
  *this = &unk_1F1037EF8;
  if (!a2)
  {
    operator new();
  }

  v5 = CI::Object::ref(a2);
  v6 = *(a2 + 22) + 1;
  v7 = *(a2 + 112);
  v8 = *(a2 + 113);
  *(this + 15) = v5;
  *(this + 22) = v6;
  *(this + 112) = v7;
  *(this + 113) = v8 & 1;
  return this;
}

uint64_t CI::ImageWithChild::render_graph_core(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v3 = a3 + 8;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = *(a1[15] + 96);
  v7 = v3;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= v6;
    v10 = v8 < v6;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 != v3 && *(v7 + 32) <= v6)
  {
    v11 = *(v7 + 40);
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  return (*(*a1 + 368))(a1, a2, v11);
}

void *CI::ImageToNodeMap::add_ImageDigest_to_node(void *result, unint64_t a2, CI::Object *this)
{
  v3 = result;
  v10[0] = a2;
  v4 = result[1];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = result + 1;
  do
  {
    v6 = v4[4];
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = v4[v8];
  }

  while (v4);
  if (v5 == result + 1 || v5[4] > a2)
  {
LABEL_9:
    if (this)
    {
      v9 = CI::Object::ref(this);
    }

    else
    {
      v9 = 0;
    }

    v10[2] = v10;
    result = std::__tree<std::__value_type<CI::ImageDigest,CI::Node *>,std::__map_value_compare<CI::ImageDigest,std::__value_type<CI::ImageDigest,CI::Node *>,std::less<CI::ImageDigest>,true>,std::allocator<std::__value_type<CI::ImageDigest,CI::Node *>>>::__emplace_unique_key_args<CI::ImageDigest,std::piecewise_construct_t const&,std::tuple<CI::ImageDigest const&>,std::tuple<>>(v3, v10);
    result[5] = v9;
  }

  return result;
}

void *CI::ImageToNodeMap::add_ImageDigestForRG_to_node(void *result, unint64_t a2, CI::Object *this)
{
  v3 = result;
  v10[0] = a2;
  v4 = result[4];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = result + 4;
  do
  {
    v6 = v4[4];
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = v4[v8];
  }

  while (v4);
  if (v5 == result + 4 || v5[4] > a2)
  {
LABEL_9:
    if (this)
    {
      v9 = CI::Object::ref(this);
    }

    else
    {
      v9 = 0;
    }

    v10[2] = v10;
    result = std::__tree<std::__value_type<CI::ImageDigest,CI::Node *>,std::__map_value_compare<CI::ImageDigest,std::__value_type<CI::ImageDigest,CI::Node *>,std::less<CI::ImageDigest>,true>,std::allocator<std::__value_type<CI::ImageDigest,CI::Node *>>>::__emplace_unique_key_args<CI::ImageDigest,std::piecewise_construct_t const&,std::tuple<CI::ImageDigest const&>,std::tuple<>>((v3 + 3), v10);
    result[5] = v9;
  }

  return result;
}

void *std::__tree<std::__value_type<CI::ImageDigest,CI::Node *>,std::__map_value_compare<CI::ImageDigest,std::__value_type<CI::ImageDigest,CI::Node *>,std::less<CI::ImageDigest>,true>,std::allocator<std::__value_type<CI::ImageDigest,CI::Node *>>>::__emplace_unique_key_args<CI::ImageDigest,std::piecewise_construct_t const&,std::tuple<CI::ImageDigest const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::__tree<std::__value_type<CI::ImageDigest,CGRect>,std::__map_value_compare<CI::ImageDigest,std::__value_type<CI::ImageDigest,CGRect>,std::less<CI::ImageDigest>,true>,std::allocator<std::__value_type<CI::ImageDigest,CGRect>>>::__emplace_unique_key_args<CI::ImageDigest,std::piecewise_construct_t const&,std::tuple<CI::ImageDigest&&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *CI::KernelArguments::KernelArguments(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t CI::KernelArguments::count(CI::KernelArguments *this)
{
  if (*this)
  {
    return **this;
  }

  else
  {
    return 0;
  }
}

void CI::KernelArguments::print_names(CI::KernelArguments *this, __sFILE *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = ___ZNK2CI17SerialStringArray5printEP7__sFILE_block_invoke;
    v3[3] = &__block_descriptor_tmp_51;
    v3[4] = v2;
    stream_to_file(a2, v3);
  }
}

void CI::KernelArguments::print_types(CI::KernelArguments *this, __sFILE *a2)
{
  v2 = *this;
  if (*this)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = ___ZNK2CI14SerialValArrayIiE5printEP7__sFILEU13block_pointerFPKciE_block_invoke;
    v3[3] = &unk_1E75C6140;
    v3[4] = &__block_literal_global_88;
    v3[5] = v2;
    stream_to_file(a2, v3);
  }
}

char *___ZNK2CI15KernelArguments11print_typesEP7__sFILE_block_invoke(uint64_t a1, int a2)
{
  if (a2 > 47)
  {
    return 0;
  }

  else
  {
    return CI::KernelArguments::name_for_type(CI::KernelArgumentType)::names[a2];
  }
}

uint64_t CI::KernelArguments::get_type(CI::KernelArguments *this, unsigned int a2)
{
  result = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v4 = *this;
    if (v4)
    {
      if (*v4 <= a2)
      {
        return 0;
      }

      else
      {
        if (a2 > 9)
        {
          v5 = (*(v4 + 16) + 4 * a2 - 40);
        }

        else
        {
          v5 = (v4 + 4 * a2 + 24);
        }

        return *v5;
      }
    }
  }

  return result;
}

uint64_t CI::KernelArguments::get_name(CI::KernelArguments *this, unsigned int a2)
{
  result = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v4 = *(this + 1);
    if (v4)
    {
      if (*v4 <= a2)
      {
        return 0;
      }

      else
      {
        return *(*(v4 + 32) + 8 * a2);
      }
    }
  }

  return result;
}

uint64_t *CI::KernelArguments::set_type(uint64_t *result, int a2, int a3)
{
  v3 = *result;
  if (*result)
  {
    if (a2 > 9)
    {
      v4 = (*(v3 + 16) + 4 * a2 - 40);
    }

    else
    {
      v4 = (v3 + 4 * a2 + 24);
    }

    *v4 = a3;
  }

  return result;
}

uint64_t ___ZNK2CI17SerialStringArray5printEP7__sFILE_block_invoke(uint64_t result, FILE *a2)
{
  v2 = *(result + 32);
  if (*v2 >= 1)
  {
    v4 = 0;
    do
    {
      result = fprintf(a2, "[%i] = %s\n", v4, *(*(v2 + 4) + 8 * v4));
      ++v4;
    }

    while (v4 < *v2);
  }

  return result;
}

uint64_t ___ZNK2CI14SerialValArrayIiE5printEP7__sFILEU13block_pointerFPKciE_block_invoke(uint64_t result, FILE *a2)
{
  v2 = *(result + 40);
  if (*v2 >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = -40;
    do
    {
      v7 = (*(*(v4 + 32) + 16))();
      result = fprintf(a2, "[%d] = %s\n", v5++, v7);
      v6 += 4;
    }

    while (v5 < *v2);
  }

  return result;
}

uint64_t CI::ColorKernel::ColorKernel(uint64_t a1, const char *a2, char *a3, char *a4, char a5, void **a6, uint64_t a7, __int16 a8, int a9, int a10, uint64_t *a11, char a12, char a13)
{
  v15 = CI::Kernel::Kernel(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, *a11, a11[1]);
  *v15 = off_1F1030080;
  *(v15 + 164) = 0;
  *(v15 + 168) = 0;
  *(v15 + 172) = a12;
  if (a13)
  {
    CI::SerialValArray<int>::append(a6, 30);
  }

  return a1;
}

{
  return CI::ColorKernel::ColorKernel(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t CI::GeneralKernel::GeneralKernel(uint64_t a1, const char *a2, char *a3, char *a4, char a5, void **a6, uint64_t a7, __int16 a8, int a9, int a10, uint64_t *a11, char a12)
{
  *CI::Kernel::Kernel(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, *a11, a11[1]) = off_1F1030148;
  if (a12)
  {
    CI::SerialValArray<int>::append(a6, 30);
  }

  return a1;
}

{
  return CI::GeneralKernel::GeneralKernel(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

void sub_19CE8D100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZL23newMTLLibraryWithSourcePU19objcproto9MTLDevice11objc_objectP8NSStringPP7NSError_block_invoke()
{
  size = 0;
  v0 = getsectdatafromFramework("CoreImage", "__TEXT", "__runtimeheader", &size);
  if (v0)
  {
    v1 = v0;
    v2 = objc_alloc(MEMORY[0x1E696AEC0]);
    newMTLLibraryWithSource(objc_object  {objcproto9MTLDevice}*,NSString *,NSError **)::_runtime_header = [v2 initWithBytesNoCopy:v1 length:size encoding:1 freeWhenDone:0];
    if (newMTLLibraryWithSource(objc_object  {objcproto9MTLDevice}*,NSString *,NSError **)::_runtime_header)
    {
      return;
    }

    goto LABEL_7;
  }

  v3 = ci_logger_compile();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19CC36000, v3, OS_LOG_TYPE_INFO, "Could not initialize header file", buf, 2u);
  }

  if (!newMTLLibraryWithSource(objc_object  {objcproto9MTLDevice}*,NSString *,NSError **)::_runtime_header)
  {
LABEL_7:
    v4 = ci_logger_compile();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_19CC36000, v4, OS_LOG_TYPE_INFO, "Could not create the runtime headers string", v5, 2u);
    }
  }
}

void *___ZL26isHarvestingForThisProcessv_block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithCString:*(a1 + 32) encoding:1];
  result = [MEMORY[0x1E696AE30] processInfo];
  if (result)
  {
    result = [v1 containsString:{objc_msgSend(result, "processName")}];
  }

  isHarvestingForThisProcess(void)::isListed = result;
  return result;
}

void ___ZL37addSpecializedFunctionToBinaryArchiveP21MTLFunctionDescriptorPU21objcproto10MTLLibrary11objc_object_block_invoke(uint64_t a1)
{
  v4 = 0;
  v2 = objc_opt_new();
  [v2 setSpecializedName:{objc_msgSend(*(a1 + 32), "specializedName")}];
  [v2 setName:{objc_msgSend(*(a1 + 32), "name")}];
  [v2 setConstantValues:{objc_msgSend(*(a1 + 32), "constantValues")}];
  if (([*(a1 + 40) addFunctionWithDescriptor:v2 library:*(a1 + 48) error:&v4] & 1) == 0)
  {
    v3 = ci_logger_compile();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ___ZL37addSpecializedFunctionToBinaryArchiveP21MTLFunctionDescriptorPU21objcproto10MTLLibrary11objc_object_block_invoke_cold_1(&v4);
    }
  }
}

uint64_t CI::MainProgram::MainProgram(uint64_t a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = 1;
  *(a1 + 56) = 0;
  v8 = (a1 + 56);
  *a1 = &unk_1F1038100;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  CI::KernelArguments::KernelArguments((a1 + 72), a4, a5);
  *(a1 + 88) = vdupq_n_s64(1uLL);
  if (a2)
  {
    *v8 = strdup(a2);
  }

  if (a3)
  {
    *(a1 + 64) = strdup(a3);
  }

  return a1;
}

void CI::MainProgram::~MainProgram(CI::MainProgram *this)
{
  *this = &unk_1F1038100;
  v2 = *(this + 7);
  if (v2)
  {
    free(v2);
  }

  *(this + 7) = 0;
  v3 = *(this + 8);
  if (v3)
  {
    free(v3);
  }

  *(this + 8) = 0;
  CI::KernelArguments::~KernelArguments((this + 72));
}

uint64_t CI::MainProgram::vector_arguments_size(CI::MainProgram *this, const CI::Context *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = CI::KernelArguments::count((this + 72));
  if (v4 < 1)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = (*(*this + 40))(this, v7);
    if (!CI::KernelArguments::is_texture(v8))
    {
      v6 = v6 + (*(*a2 + 528))(a2, v8);
    }

    v7 = (v7 + 1);
  }

  while (v5 != v7);
  return v6;
}

void CI::LegacyDAGDescriptor::ArgumentInfo::add(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 > 5)
  {
    if (a2 > 8)
    {
      if (a2 == 9)
      {
        v4 = 6;
        goto LABEL_20;
      }

      if (a2 != 10)
      {
        goto LABEL_22;
      }

      v4 = 7;
    }

    else
    {
      if ((a2 - 7) >= 2)
      {
        if (a2 == 6)
        {
          v4 = 4;
          goto LABEL_20;
        }

        goto LABEL_22;
      }

      v4 = 5;
    }

    goto LABEL_20;
  }

  if (a2 > 2)
  {
    if ((a2 - 4) >= 2)
    {
      if (a2 == 3)
      {
        v4 = 2;
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    v4 = 3;
LABEL_20:
    *&v5 = v4;
    goto LABEL_21;
  }

  if (a2 >= 2)
  {
    if (a2 == 2)
    {
      v4 = 1;
      goto LABEL_20;
    }

LABEL_22:
    abort();
  }

  *&v5 = 0;
LABEL_21:
  *(&v5 + 1) = a3;
  v6 = a4;
  std::vector<LineCostProxy>::push_back[abi:nn200100](a1 + 16, &v5);
}

void CI::StitchableFunctionDAGDescriptor::print(id *this, __sFILE *a2)
{
  v4 = 0;
  v31 = *MEMORY[0x1E69E9840];
  v28[0] = 0;
  v28[1] = 0;
  v27 = v28;
  while (v4 < [this[13] count])
  {
    v26 = [this[13] objectAtIndexedSubscript:v4];
    v29 = &v26;
    *(std::__tree<std::__value_type<MTLFunctionStitchingFunctionNode *,int>,std::__map_value_compare<MTLFunctionStitchingFunctionNode *,std::__value_type<MTLFunctionStitchingFunctionNode *,int>,std::less<MTLFunctionStitchingFunctionNode *>,true>,std::allocator<std::__value_type<MTLFunctionStitchingFunctionNode *,int>>>::__emplace_unique_key_args<MTLFunctionStitchingFunctionNode *,std::piecewise_construct_t const&,std::tuple<MTLFunctionStitchingFunctionNode * const&>,std::tuple<>>(&v27, &v26) + 10) = v4++;
  }

  fwrite("// Stitched DAG Functions\n", 0x1AuLL, 1uLL, a2);
  for (i = 0; i < [this[13] count]; ++i)
  {
    fprintf(a2, "#%zu = ", i);
    v6 = [this[13] objectAtIndexedSubscript:i];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = "EarlyReturnNode(#0)\n";
      v8 = 20;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        continue;
      }

      v9 = 0;
      v10 = 1;
      while (v9 < [objc_msgSend(v6 "arguments")])
      {
        [objc_msgSend(v6 "arguments")];
        v10 &= CI::StitchableFunctionDAGDescriptor::get_argument_type() == 7;
        ++v9;
      }

      fputs([objc_msgSend(v6 "name")], a2);
      if ([objc_msgSend(v6 "arguments")])
      {
        v11 = 0;
        if (v10)
        {
          while (v11 < [objc_msgSend(v6 "arguments")])
          {
            if (v11)
            {
              v12 = 44;
            }

            else
            {
              v12 = 40;
            }

            v26 = [objc_msgSend(v6 "arguments")];
            v29 = &v26;
            v13 = std::__tree<std::__value_type<MTLFunctionStitchingFunctionNode *,int>,std::__map_value_compare<MTLFunctionStitchingFunctionNode *,std::__value_type<MTLFunctionStitchingFunctionNode *,int>,std::less<MTLFunctionStitchingFunctionNode *>,true>,std::allocator<std::__value_type<MTLFunctionStitchingFunctionNode *,int>>>::__emplace_unique_key_args<MTLFunctionStitchingFunctionNode *,std::piecewise_construct_t const&,std::tuple<MTLFunctionStitchingFunctionNode * const&>,std::tuple<>>(&v27, &v26);
            fprintf(a2, "%c #%zu", v12, *(v13 + 10));
            ++v11;
          }

LABEL_34:
          v7 = ")\n";
          v8 = 2;
          goto LABEL_36;
        }

        while (2)
        {
          if (v11 >= [objc_msgSend(v6 "arguments")])
          {
            goto LABEL_34;
          }

          if (v11)
          {
            v14 = 44;
          }

          else
          {
            v14 = 40;
          }

          fprintf(a2, "%c ", v14);
          [objc_msgSend(v6 "arguments")];
          argument_type = CI::StitchableFunctionDAGDescriptor::get_argument_type();
          if (argument_type > 3)
          {
            if (argument_type == 4)
            {
              v17 = [objc_msgSend(v6 "arguments")];
              [v17 bindIndex];
              [v17 byteOffset];
              fprintf(a2, "Buffer%zu+%zu");
              goto LABEL_33;
            }

            if (argument_type == 7)
            {
              v26 = [objc_msgSend(v6 "arguments")];
              v29 = &v26;
              std::__tree<std::__value_type<MTLFunctionStitchingFunctionNode *,int>,std::__map_value_compare<MTLFunctionStitchingFunctionNode *,std::__value_type<MTLFunctionStitchingFunctionNode *,int>,std::less<MTLFunctionStitchingFunctionNode *>,true>,std::allocator<std::__value_type<MTLFunctionStitchingFunctionNode *,int>>>::__emplace_unique_key_args<MTLFunctionStitchingFunctionNode *,std::piecewise_construct_t const&,std::tuple<MTLFunctionStitchingFunctionNode * const&>,std::tuple<>>(&v27, &v26);
              fprintf(a2, "#%zu");
              goto LABEL_33;
            }
          }

          else
          {
            if (!argument_type)
            {
              [objc_msgSend(objc_msgSend(v6 "arguments")];
              fprintf(a2, "Texture%zu");
              goto LABEL_33;
            }

            if (argument_type == 3)
            {
              [objc_msgSend(objc_msgSend(v6 "arguments")];
              fprintf(a2, "Sampler%zu");
LABEL_33:
              ++v11;
              continue;
            }
          }

          break;
        }

        fputs(v16, a2);
        goto LABEL_33;
      }

      v7 = "()\n";
      v8 = 3;
    }

LABEL_36:
    fwrite(v7, v8, 1uLL, a2);
  }

  if (this[2])
  {
    v18 = [this[2] performSelector:NSSelectorFromString(&cfstr_Newnamedconsta.isa)];
    if ([v18 count])
    {
      fputc(10, a2);
      fwrite("// Function Constants\n", 0x16uLL, 1uLL, a2);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v19 = [v18 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v19)
      {
        v20 = *v23;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v23 != v20)
            {
              objc_enumerationMutation(v18);
            }

            fprintf(a2, "%s\n", [objc_msgSend(*(*(&v22 + 1) + 8 * j) "description")]);
          }

          v19 = [v18 countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v19);
      }
    }
  }

  fputc(10, a2);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(&v27, v28[0]);
}