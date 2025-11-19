uint64_t CA::Render::NamedFunction::input_count(CA::Render::NamedFunction *this)
{
  v1 = *(this + 4);
  if (v1 > 0xC)
  {
    return 0;
  }

  else
  {
    return dword_183E264E8[v1];
  }
}

void *CA::Render::NamedFunction::encode(CA::Render::NamedFunction *this, CA::Render::Encoder *a2)
{
  v4 = (*(*this + 96))(this);
  v5 = *(a2 + 4);
  if ((v5 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 1);
    v5 = *(a2 + 4);
  }

  *(a2 + 4) = v5 + 1;
  *v5 = v4;
  CA::Render::Encoder::encode_sanity_check(a2);
  v6 = *(this + 4);
  v7 = *(a2 + 4);
  if ((v7 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 1);
    v7 = *(a2 + 4);
  }

  *(a2 + 4) = v7 + 1;
  *v7 = v6;

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void CA::Render::NamedFunction::~NamedFunction(CA::Render::NamedFunction *this, const CA::Render::Object *a2)
{
  --dword_1ED4EAA80;
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
  --dword_1ED4EAA80;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

atomic_ullong CA::Render::Function::decode(CA::Render::Function *this, CA::Render::Decoder *a2)
{
  v3 = CA::Render::Decoder::decode_int8(this);
  CA::Render::Decoder::decode_sanity_check(this, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-function.mm", 39);
  switch(v3)
  {
    case 3:
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v7 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x38uLL, 0xDEEC3011uLL);
      v5 = v7;
      if (v7)
      {
        CA::Render::Gradient::Gradient(v7, this);
      }

      break;
    case 2:
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v6 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x38uLL, 0xDEEC3011uLL);
      v5 = v6;
      if (v6)
      {
        CA::Render::InterpolatedFunction::InterpolatedFunction(v6, this);
      }

      break;
    case 1:
      v4 = CA::Render::Decoder::decode_int8(this);
      v5 = CA::Render::NamedFunction::new_function(v4);
      CA::Render::Decoder::decode_sanity_check(this, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-function.mm", 214);
      break;
    default:
      return 0;
  }

  return v5;
}

void sub_183D1AA0C(_Unwind_Exception *a1)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  malloc_zone_free(malloc_zone, v1);
  _Unwind_Resume(a1);
}

atomic_ullong CA::Render::NamedFunction::new_function(unsigned int a1)
{
  if (a1 > 0xC)
  {
    return 0;
  }

  result = CA::Render::NamedFunction::new_function(CA::Render::FunctionName)::table[a1];
  if (result)
  {
    goto LABEL_12;
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x18uLL, 0xDEEC3011uLL);
  v4 = 0;
  if (v3)
  {
    v3[2] = 1;
    v3[3] = 18;
    ++dword_1ED4EAA80;
    *v3 = &unk_1EF1FBFB8;
    v3[4] = a1;
    atomic_compare_exchange_strong(&CA::Render::NamedFunction::new_function(CA::Render::FunctionName)::table[a1], &v4, v3);
    if (v4 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
    }
  }

  else
  {
    atomic_compare_exchange_strong(&CA::Render::NamedFunction::new_function(CA::Render::FunctionName)::table[a1], &v4, 0);
  }

  result = CA::Render::NamedFunction::new_function(CA::Render::FunctionName)::table[a1];
  if (result)
  {
LABEL_12:
    v5 = (result + 8);
    if (!atomic_fetch_add((result + 8), 1u))
    {
      result = 0;
      atomic_fetch_add(v5, 0xFFFFFFFF);
    }
  }

  return result;
}

uint64_t CA::Render::InterpolatedFunction::set_location(uint64_t this, unint64_t a2, float a3)
{
  v3 = *(this + 40);
  if (v3 && *(this + 16) > a2)
  {
    v4 = (v3 + 4 * a2);
    *v4 = a3;
    if (a2)
    {
      if (*(v4 - 1) > a3)
      {
        *(this + 12) &= ~0x100u;
      }
    }

    *(this + 12) |= 0x200u;
  }

  return this;
}

uint64_t CA::Render::Gradient::set_colors(uint64_t this, const double *a2)
{
  v2 = *(this + 32);
  if (v2)
  {
    v3 = *(this + 16);
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = 0;
    v5 = 1;
    do
    {
      v6 = 0;
      v7 = (v2 + 20 * v4++);
      v8 = v7;
      do
      {
        v9 = a2[v6];
        *v8++ = v9;
        ++v6;
      }

      while (v6 != 5);
      v5 &= v7[3] >= 1.0;
      a2 += 5;
    }

    while (v4 != v3);
    if ((v5 & 1) == 0)
    {
      v10 = *(this + 12) & 0xFFFFF7FF;
    }

    else
    {
LABEL_8:
      v10 = *(this + 12) | 0x800;
    }

    *(this + 12) = v10;
  }

  return this;
}

uint64_t CA::Render::Gradient::set_color(uint64_t this, unint64_t a2, const double *a3)
{
  v3 = *(this + 32);
  if (v3 && *(this + 16) > a2)
  {
    v4 = 0;
    v5 = (v3 + 20 * a2);
    v6 = v5;
    do
    {
      v7 = a3[v4];
      *v6++ = v7;
      ++v4;
    }

    while (v4 != 5);
    if (v5[3] < 1.0)
    {
      *(this + 12) &= ~0x800u;
    }
  }

  return this;
}

__n128 CA::Render::Gradient::set_values(CA::Render::Gradient *this, uint64_t a2, const unsigned int *a3, unint64_t a4, const double *a5, CGColorSpace *a6, CGColorSpace *a7, CGColorSpace *a8, __n128 result)
{
  v45 = *MEMORY[0x1E69E9840];
  v15 = *a3;
  if (*a3 == 490 || v15 == 121)
  {
    if (a2 == 2)
    {
      v20 = a3[1];
      if ((v20 & 0x40000000) == 0)
      {
        goto LABEL_31;
      }

      v21 = v20 & 0xFFFFFFFFBFFFFFFFLL;
      if (*(this + 2) <= (v20 & 0xFFFFFFFFBFFFFFFFLL))
      {
        goto LABEL_31;
      }

      if (a4 < 5 || v15 != 121)
      {
        if (v15 == 490 && a4 && *(this + 5))
        {
          v22 = *a5;
          CA::Render::InterpolatedFunction::set_location(this, v21, v22);
        }

        goto LABEL_31;
      }

      if ((CARequiresColorMatching(a6, a7, 0) & 1) == 0)
      {
        CA::Render::Gradient::set_color(this, v21, a5);
        goto LABEL_31;
      }

      if (CARetainColorTransform(a7))
      {
        memset(v40, 0, 40);
        CA::Render::convert_color(a5, v40);
        CA::Render::Gradient::set_color(this, v21, v40);
LABEL_21:
        CGColorTransformRelease();
      }
    }

    else if (a2 == 1)
    {
      if (v15 == 490)
      {
        if (*(this + 5) && *(this + 2) <= a4)
        {
          CA::Render::InterpolatedFunction::set_locations(this, a5);
        }

        goto LABEL_31;
      }

      if (v15 == 121 && 5 * *(this + 2) <= a4)
      {
        if ((CARequiresColorMatching(a6, a7, 0) & 1) == 0)
        {
          CA::Render::Gradient::set_colors(this, a5);
          goto LABEL_31;
        }

        if (CARetainColorTransform(a7))
        {
          if (*(this + 2))
          {
            v16 = 0;
            v17 = (a5 + 3);
            do
            {
              v41 = 0u;
              v42 = 0u;
              v18 = *(v17 - 1);
              v43 = *(v17 - 3);
              v44 = v18;
              CGColorTransformConvertColorComponents();
              v40[0] = v41;
              *&v40[1] = v42;
              v19 = *v17;
              v17 += 5;
              *(&v40[1] + 8) = v19;
              CA::Render::Gradient::set_color(this, v16++, v40);
            }

            while (v16 < *(this + 2));
          }

          goto LABEL_21;
        }
      }
    }

LABEL_31:
    v15 = *a3;
  }

  if (v15 == 446)
  {
    if (a2 == 2)
    {
      if (a4 >= 4)
      {
        v33 = a3[1];
        if ((v33 & 0x40000000) != 0)
        {
          v34 = *(this + 2);
          _CF = v34 != 0;
          v35 = v34 - 1;
          if (_CF)
          {
            v36 = v33 & 0xFFFFFFFFBFFFFFFFLL;
            if (v35 > (v33 & 0xFFFFFFFFBFFFFFFFLL))
            {
              *(this + 3) |= 0x400u;
              CA::Render::InterpolatedFunction::allocate_storage(this);
              v37 = *(this + 6);
              if (v37)
              {
                v38 = (v37 + 32 * v36);
                result = *a5;
                v39 = *(a5 + 1);
                *v38 = *a5;
                v38[1] = v39;
              }
            }
          }
        }
      }
    }

    else if (a2 == 1)
    {
      *(this + 3) |= 0x400u;
      v23 = *(this + 2);
      CA::Render::InterpolatedFunction::allocate_storage(this);
      v24 = *(this + 6);
      if (v24)
      {
        if (v23 - 1 >= a4 >> 2)
        {
          v25 = a4 >> 2;
        }

        else
        {
          v25 = v23 - 1;
        }

        memcpy(v24, a5, 32 * v25);
        v26 = *(this + 2);
        if (v25 < v26 - 1)
        {
          v27 = ~v25 + v26;
          v28 = (*(this + 6) + 32 * v25 + 16);
          __asm { FMOV            V0.2D, #1.0 }

          do
          {
            v28[-1].n128_u64[0] = 0;
            v28[-1].n128_u64[1] = 0;
            *v28 = result;
            v28 += 2;
            --v27;
          }

          while (v27);
        }
      }
    }
  }

  return result;
}

double CA::Render::convert_color(uint64_t a1, uint64_t a2)
{
  CGColorTransformConvertColorComponents();
  *a2 = 0u;
  *(a2 + 16) = 0;
  *(a2 + 24) = *(a1 + 24);
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

uint64_t CA::Render::Image::TiledImage::copy_subtexture(CA::Render::Image::TiledImage *this, unsigned int a2, unsigned int a3, int a4, int a5, int a6, unsigned int a7, unsigned int a8, double a9, float *a10, unsigned int *a11)
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = __PAIR64__(a3, a2);
  v23 = a4;
  os_unfair_lock_lock(this + 42);
  v15 = x_hash_table_lookup(*(this + 20), &v22, 0);
  if (!v15)
  {
    v16 = *(this + 28);
    v17 = *(this + 29);
    v21[0] = v16 * a3;
    v21[1] = v17 * a4;
    v21[2] = v16;
    v21[3] = v17;
    v15 = CA::Render::Image::copy_subimage(*(this + 19), a2, v21, *(this + 22), (*(this + 184) & 1) == 0);
    if (!v15)
    {
      os_unfair_lock_unlock(this + 42);
      goto LABEL_9;
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v18 = malloc_type_zone_malloc(malloc_zone, 0xCuLL, 0x10000403E1C8BA9uLL);
    v19 = v22;
    v18[2] = v23;
    *v18 = v19;
    hash_table_modify(*(this + 20), v18, v15, 0);
  }

  if (!atomic_fetch_add((v15 + 8), 1u))
  {
    atomic_fetch_add((v15 + 8), 0xFFFFFFFF);
  }

  os_unfair_lock_unlock(this + 42);
  *(v15 + 36) = *(*(this + 19) + 36);
LABEL_9:
  *a10 = 1.0;
  *a11 = 0;
  return v15;
}

uint64_t CA::Render::Image::TiledImage::finalize(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 42);
  v2 = *&this[38]._os_unfair_lock_opaque;
  if (v2)
  {
    CA::Render::remove_observer(3u, v2, CA::Render::Image::TiledImage::will_deallocate, this);
    *&this[38]._os_unfair_lock_opaque = 0;
  }

  os_unfair_lock_unlock(this + 42);
  v3 = *(*&this->_os_unfair_lock_opaque + 8);

  return v3(this);
}

void CA::Render::Image::TiledImage::will_deallocate(CA::Render::Image::TiledImage *this, os_unfair_lock_s *a2, void *a3, void *a4)
{
  os_unfair_lock_lock(a2 + 42);
  v5 = 0;
  *&a2[38]._os_unfair_lock_opaque = 0;
  v6 = *&a2[40]._os_unfair_lock_opaque;
  v7 = 1 << *v6;
  do
  {
    for (i = *(*(v6 + 16) + 8 * v5); i; i = *i)
    {
      CA::Render::Image::TiledImage::free_tile(i[2], i[3]);
    }

    ++v5;
  }

  while (v5 != v7);
  x_hash_table_remove_all(*&a2[40]._os_unfair_lock_opaque);

  os_unfair_lock_unlock(a2 + 42);
}

void CA::Render::Image::TiledImage::free_tile(void *ptr, atomic_uint *a2)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  malloc_zone_free(malloc_zone, ptr);
  if (atomic_fetch_add(a2 + 2, 0xFFFFFFFF) == 1)
  {
    v4 = *(*a2 + 16);

    v4(a2);
  }
}

void CA::Render::Image::TiledImage::~TiledImage(CA::Render::Image::TiledImage *this)
{
  CA::Render::Image::TiledImage::~TiledImage(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  v2 = 0;
  *this = &unk_1EF1FC050;
  v3 = *(this + 20);
  v4 = 1 << *v3;
  do
  {
    for (i = *(*(v3 + 16) + 8 * v2); i; i = *i)
    {
      CA::Render::Image::TiledImage::free_tile(i[2], i[3]);
    }

    ++v2;
  }

  while (v2 != v4);
  x_hash_table_free(*(this + 20));
  --CA::Render::Object::_instance_counts[0];
  *this = &unk_1EF1FC198;
  v6 = *(this + 17);
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v6 + 16))(v6);
  }

  CA::Render::Texture::~Texture(this);
}

unint64_t CA::Render::Image::TiledImage::Key::hash(_DWORD *a1)
{
  v1 = ((a1[1] << 10) ^ (*a1 << 20)) ^ a1[2];
  v2 = (~(v1 << 32) + v1) ^ ((~(v1 << 32) + v1) >> 22);
  v3 = 9 * ((v2 + ~(v2 << 13)) ^ ((v2 + ~(v2 << 13)) >> 8));
  v4 = (v3 ^ (v3 >> 15)) + ~((v3 ^ (v3 >> 15)) << 27);
  return v4 ^ (v4 >> 31);
}

uint64_t CA::Render::Image::copy_tiled_texture(CA::Render::Image *this, uint64_t a2, int a3)
{
  if (CA::Render::tiled_image_mutex_once[0] != -1)
  {
    dispatch_once_f(CA::Render::tiled_image_mutex_once, 0, CA::Render::Image::tiled_image_mutex_init);
  }

  pthread_mutex_lock(&CA::Render::Image::_tiled_image_lock);
  v6 = *(this + 18);
  if (v6)
  {
    while (*(v6 + 176) != a2 || *(v6 + 184) != a3)
    {
      v6 = *(v6 + 144);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_33;
  }

LABEL_7:
  v7 = *(this + 4);
  if (v7 >= 0x40)
  {
    v8 = 64;
  }

  else
  {
    v8 = 32;
  }

  if (v7 >= 0x40)
  {
    v9 = 1024;
  }

  else
  {
    v9 = 2048;
  }

  if (v7 <= 0x7F)
  {
    v10 = v9;
  }

  else
  {
    v8 = 128;
    v10 = 512;
  }

  if (v7 <= 0xFF)
  {
    v11 = v8;
  }

  else
  {
    v11 = 256;
  }

  if (v7 <= 0xFF)
  {
    v12 = v10;
  }

  else
  {
    v12 = 256;
  }

  while (v12 > *(this + 5))
  {
    v13 = v12 >> 1;
    v11 *= 2;
    v14 = v12 > 0x41;
    v12 >>= 1;
    if (!v14)
    {
      goto LABEL_26;
    }
  }

  v13 = v12;
LABEL_26:
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v15 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xC0uLL, 0xDEEC3011uLL);
  v6 = v15;
  if (v15)
  {
    v16 = *(this + 169);
    v17 = CA::Render::Texture::Texture(v15, *(this + 4), *(this + 5));
    *(v6 + 112) = v11;
    *(v6 + 116) = v13;
    *(v6 + 124) = 0;
    *(v6 + 128) = 0;
    *(v6 + 120) = v16;
    *(v6 + 136) = 0;
    *(v6 + 12) &= 0xFFFFFF00;
    ++CA::Render::Object::_instance_counts[0];
    *v6 = &unk_1EF1FC050;
    *(v6 + 152) = this;
    *(v6 + 168) = 0;
    *(v6 + 176) = a2;
    *(v6 + 184) = a3;
    CA::Render::Texture::set_colorspace(v17, *(this + 7));
    *(v6 + 160) = x_hash_table_new_(CA::Render::Image::TiledImage::Key::hash, CA::Render::Image::TiledImage::Key::compare, 0, 0, 0, 0);
    CA::Render::add_observer(3u, *(v6 + 152), CA::Render::Image::TiledImage::will_deallocate, v6, 0);
    v18 = *(this + 168);
    if (v18 > 0x23 || ((0xC99B4EB03uLL >> v18) & 1) == 0)
    {
      *(v6 + 12) |= 0x1000u;
    }

    *(v6 + 144) = *(this + 18);
    *(this + 18) = v6;
LABEL_33:
    v19 = (v6 + 8);
    if (!atomic_fetch_add((v6 + 8), 1u))
    {
      v6 = 0;
      atomic_fetch_add(v19, 0xFFFFFFFF);
    }
  }

  pthread_mutex_unlock(&CA::Render::Image::_tiled_image_lock);
  return v6;
}

uint64_t CA::Render::Image::get_tiled_texture_size(CA::Render::Image *this, unsigned int *a2, unsigned int *a3)
{
  v3 = *(this + 4);
  if (v3 >= 0x40)
  {
    v4 = 64;
  }

  else
  {
    v4 = 32;
  }

  if (v3 >= 0x40)
  {
    v5 = 1024;
  }

  else
  {
    v5 = 2048;
  }

  if (v3 <= 0x7F)
  {
    v6 = v4;
  }

  else
  {
    v6 = 128;
  }

  if (v3 <= 0x7F)
  {
    v7 = v5;
  }

  else
  {
    v7 = 512;
  }

  if (v3 <= 0xFF)
  {
    v8 = v6;
  }

  else
  {
    v8 = 256;
  }

  if (v3 <= 0xFF)
  {
    v9 = v7;
  }

  else
  {
    v9 = 256;
  }

  while (v9 > *(this + 5))
  {
    v10 = v9 >> 1;
    v8 *= 2;
    v11 = v9 > 0x41;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  v10 = v9;
LABEL_23:
  *a2 = v8;
  *a3 = v10;
  return 1;
}

uint64_t CAImageProviderMaxLOD(unsigned int a1, unsigned int a2)
{
  if (a1 >= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = a1;
  }

  v3 = 32 - __clz(v2);
  if (v2 <= 1)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t CAImageProviderCreate(unsigned int a1, unsigned int a2, int a3, int a4, int a5, int a6, int a7, double a8)
{
  if (a1 >= a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = a1;
  }

  v16 = 32 - __clz(v15);
  if (v15 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  if (a5 - a6 <= v17)
  {
    v18 = a5;
  }

  else
  {
    v18 = v17 + a6;
  }

  if (CAImageProviderGetTypeID::once[0] != -1)
  {
    dispatch_once(CAImageProviderGetTypeID::once, &__block_literal_global_5_9450);
  }

  Instance = _CFRuntimeCreateInstance();
  v20 = Instance;
  if (Instance)
  {
    *(Instance + 240) = 0u;
    *(Instance + 256) = 0u;
    *(Instance + 208) = 0u;
    *(Instance + 224) = 0u;
    *(Instance + 176) = 0u;
    *(Instance + 192) = 0u;
    *(Instance + 144) = 0u;
    *(Instance + 160) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 128) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    do
    {
      add = atomic_fetch_add(CA::Render::next_sequence(void)::sequence, 1u);
      v22 = __CFADD__(add, 1);
      v23 = add + 1;
    }

    while (v22);
    *(Instance + 20) = v23;
    pthread_mutex_init((Instance + 88), 0);
    pthread_cond_init((v20 + 152), 0);
    *(v20 + 200) = v20 + 200;
    *(v20 + 208) = v20 + 200;
    *(v20 + 216) = a7;
    *(v20 + 220) = a1;
    *(v20 + 224) = a2;
    *(v20 + 228) = a3;
    *(v20 + 232) = a4;
    *(v20 + 236) = v18;
    *(v20 + 240) = a6;
    v24 = a8;
    *(v20 + 244) = v24;
    *(v20 + 56) = ++CAImageProviderCreate::id;
    if (CAImageProviderCreate::once != -1)
    {
      dispatch_once(&CAImageProviderCreate::once, &__block_literal_global_9451);
    }
  }

  return v20;
}

dispatch_queue_t __CAImageProviderCreate_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INITIATED, 0);
  result = dispatch_queue_create("com.apple.coreanimation.imageprovider.concurrent", v0);
  provider_queue = result;
  return result;
}

uint64_t imageProviderFinalize(char *a1)
{
  if (*(a1 + 8))
  {
    CAImageProviderSetCallback(a1, 0, 0);
  }

  v2 = *(a1 + 5);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = CA::Transaction::ensure_compat(v2);
  CA::Transaction::add_deleted_id(*(v3 + 15), *(a1 + 7), *(a1 + 5), 0);
  CGColorRelease(*(a1 + 32));
  v4 = *(a1 + 4);
  if (v4)
  {
    do
    {
      v5 = v4[1];
      free(v4);
      v4 = v5;
    }

    while (v5);
  }

  pthread_mutex_destroy((a1 + 88));

  return pthread_cond_destroy((a1 + 152));
}

void CAImageProviderSetCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&provider_lock);
  v6 = *(a1 + 64);
  if (v6 == a2 && *(a1 + 72) == a3)
  {
    goto LABEL_15;
  }

  if (a2)
  {
    if (!v6)
    {
      provider_list = x_list_prepend(provider_list, a1);
      CFRetain(a1);
      v7 = *(a1 + 48);
      *(a1 + 64) = a2;
      *(a1 + 72) = a3;
      os_unfair_lock_unlock(&provider_lock);
      if (v7)
      {
        v8 = *(a1 + 48);

        _CAImageProviderSignal(a1, v8);
      }

      return;
    }

    goto LABEL_14;
  }

  if (!v6)
  {
LABEL_14:
    *(a1 + 64) = a2;
    *(a1 + 72) = a3;
LABEL_15:

    os_unfair_lock_unlock(&provider_lock);
    return;
  }

  v9 = provider_list;
  x_list_remove(provider_list, a1);
  provider_list = v9;
  *(a1 + 64) = 0;
  *(a1 + 72) = a3;
  os_unfair_lock_unlock(&provider_lock);
  pthread_mutex_lock((a1 + 88));
  while (*(a1 + 80))
  {
    v10 = xmmword_183E214A0;
    pthread_cond_timedwait_relative_np((a1 + 152), (a1 + 88), &v10);
  }

  pthread_mutex_unlock((a1 + 88));
  CFRelease(a1);
}

void _CAImageProviderSignal(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&provider_lock);
  *(a1 + 48) = a2;
  if (*(a1 + 64))
  {
    v5 = *(a1 + 216);
    if ((v5 & 2) != 0)
    {
      if (!provider_main_thread_count)
      {
        CA::call_at_time(CAImageProviderMainThread, &provider_main_thread_count, 0.0, v4);
        ++provider_main_thread_count;
      }
    }

    else
    {
      if ((v5 & 4) != 0)
      {
        v6 = x_cpu_count::n_cpus;
        if (!x_cpu_count::n_cpus)
        {
          *v8 = 0x300000006;
          v7 = 4;
          sysctl(v8, 2u, &x_cpu_count::n_cpus, &v7, 0, 0);
          v6 = x_cpu_count::n_cpus;
          if (x_cpu_count::n_cpus <= 0)
          {
            v6 = 1;
            x_cpu_count::n_cpus = 1;
          }
        }
      }

      else
      {
        v6 = 1;
      }

      for (; provider_bg_thread_count < v6; ++provider_bg_thread_count)
      {
        dispatch_async_f(provider_queue, &provider_bg_thread_count, CAImageProviderBackgroundThread);
      }
    }
  }

  os_unfair_lock_unlock(&provider_lock);
}

void CAImageProviderThread(unsigned int *a1, int a2)
{
  v39 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&provider_lock);
  *v34 = 0;
  *v35 = 0;
  v3 = provider_list;
  if (provider_list)
  {
    v4 = 0;
    v5 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    while (1)
    {
      do
      {
        v7 = *v3;
        if (*(*v3 + 48) > v5 && *(v7 + 64) && ((*(v7 + 216) & 2) == 0) == a2)
        {
          v5 = *(*v3 + 48);
          v4 = *v3;
        }

        v3 = v3[1];
      }

      while (v3);
      if (!v4)
      {
        goto LABEL_63;
      }

      CFRetain(v4);
      v9 = *(v4 + 64);
      v8 = *(v4 + 72);
      atomic_fetch_add((v4 + 80), 1u);
      os_unfair_lock_unlock(&provider_lock);
      CA::Transaction::begin_transaction(v10);
      v11 = CA::Context::retain_context_with_id(*(v4 + 24));
      if (!v11)
      {
        goto LABEL_42;
      }

      v12 = v11;
      v13 = CA::Context::retain_render_ctx(v11);
      if (!v13)
      {
        break;
      }

      v14 = v13;
      pthread_mutex_lock((v13 + 72));
      v15 = CA::Render::ImageProvider::needed_subimage(*(v14 + 136), *(v14 + 148), *(v4 + 56), &v35[1], v35, &v34[1], v34);
      pthread_mutex_unlock((v14 + 72));
      if (atomic_fetch_add((v14 + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v14 + 16))(v14);
      }

      CA::Context::unref(v12, 0);
      if (v15)
      {
LABEL_44:
        *&msg[16] = v35[1];
        *&msg[20] = v35[0];
        *&msg[24] = v34[1];
        *&msg[28] = v34[0];
        *msg = msg;
        *&msg[8] = msg;
        os_unfair_lock_lock((v4 + 16));
        v24 = (v4 + 200);
        v25 = *(v4 + 208);
        if (v25 == v4 + 200)
        {
LABEL_49:
          v26 = *v24;
          *v24 = msg;
          *msg = v26;
          *&msg[8] = v4 + 200;
          *(v26 + 8) = msg;
          os_unfair_lock_unlock((v4 + 16));
          if (a2)
          {
            v27 = *(StatusReg + 576);
            if (!v27)
            {
              v27 = CA::Transaction::create(0);
            }

            *(v27 + 132) |= 4u;
          }

          v9(v4, v35[1], v35[0], v34[1], v34[0], v8);
          os_unfair_lock_lock((v4 + 16));
          v29 = *msg;
          v28 = *&msg[8];
          *(*msg + 8) = *&msg[8];
          *v28 = v29;
          *msg = msg;
          *&msg[8] = msg;
        }

        else
        {
          while (*&msg[16] != *(v25 + 16) || *&msg[20] != *(v25 + 20) || *&msg[24] != *(v25 + 24))
          {
            v25 = *(v25 + 8);
            if (v25 == v24)
            {
              goto LABEL_49;
            }
          }
        }

        goto LABEL_54;
      }

LABEL_42:
      os_unfair_lock_lock((v4 + 16));
      if (*(v4 + 48) == v5)
      {
        *(v4 + 48) = 0;
      }

LABEL_54:
      os_unfair_lock_unlock((v4 + 16));
      if (atomic_fetch_add((v4 + 80), 0xFFFFFFFF) == 1)
      {
        pthread_cond_broadcast((v4 + 152));
      }

      CFRelease(v4);
      v31 = objc_autoreleasePoolPush();
      v32 = *(StatusReg + 576);
      if (v32 && **(v32 + 15))
      {
        CA::Transaction::pop(v32, v30);
      }

      objc_autoreleasePoolPop(v31);
      os_unfair_lock_lock(&provider_lock);
      v4 = 0;
      v5 = 0;
      *v34 = 0;
      *v35 = 0;
      v3 = provider_list;
      if (!provider_list)
      {
        goto LABEL_63;
      }
    }

    v16 = v12[40];
    if (!v16)
    {
      CA::Context::unref(v12, 0);
      goto LABEL_42;
    }

    v17 = MEMORY[0x1EEE9AC50];
    v18 = *(v4 + 56);
    v38 = 0;
    *&v37[4] = 0u;
    memset(&msg[4], 0, 28);
    *&msg[24] = *MEMORY[0x1E69E99E0];
    *v37 = v18;
    reply_port = mig_get_reply_port();
    *&msg[8] = v16;
    *&msg[12] = reply_port;
    *msg = 5395;
    *&msg[16] = 0x9D5000000000;
    if (v17)
    {
      voucher_mach_msg_set(msg);
      v20 = *&msg[12];
    }

    else
    {
      v20 = reply_port;
    }

    v21 = mach_msg(msg, 3, 0x28u, 0x3Cu, v20, 0, 0);
    v22 = v21;
    if ((v21 - 268435458) <= 0xE && ((1 << (v21 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(*&msg[12]);
      goto LABEL_41;
    }

    if (v21)
    {
      mig_dealloc_reply_port(*&msg[12]);
      goto LABEL_41;
    }

    if (*&msg[20] == 71)
    {
      v22 = 4294966988;
    }

    else if (*&msg[20] == 40372)
    {
      if ((*msg & 0x80000000) != 0)
      {
        goto LABEL_39;
      }

      if (*&msg[4] != 52)
      {
        if (*&msg[4] == 36)
        {
          if (*&msg[8])
          {
            v23 = 1;
          }

          else
          {
            v23 = *v37 == 0;
          }

          if (v23)
          {
            v22 = 4294966996;
          }

          else
          {
            v22 = *v37;
          }

          goto LABEL_40;
        }

        goto LABEL_39;
      }

      if (*&msg[8])
      {
LABEL_39:
        v22 = 4294966996;
        goto LABEL_40;
      }

      v22 = *v37;
      if (!*v37)
      {
        v35[0] = *&v37[8];
        v35[1] = *&v37[4];
        v34[0] = *&v37[16];
        v34[1] = *&v37[12];
LABEL_41:
        CAVerifyServerReturn(v22);
        CA::Context::unref(v12, 0);
        if (!v22)
        {
          goto LABEL_44;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v22 = 4294966995;
    }

LABEL_40:
    mach_msg_destroy(msg);
    goto LABEL_41;
  }

LABEL_63:
  --*a1;
  os_unfair_lock_unlock(&provider_lock);
}

uint64_t CAImageProviderGetTypeID()
{
  if (CAImageProviderGetTypeID::once[0] != -1)
  {
    dispatch_once(CAImageProviderGetTypeID::once, &__block_literal_global_5_9450);
  }

  return CAImageProviderGetTypeID::type;
}

void CAImageProviderSetImageSize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 220) != a2 || *(a1 + 224) != a3)
  {
    *(a1 + 220) = a2;
    *(a1 + 224) = a3;
    if (*(a1 + 24))
    {
      cfarray = create_cfarray(2, a2, a2, 2, a3, 0);
      CA::Transaction::add_command(0x10, *(a1 + 24), *(a1 + 56), cfarray, v5);

      CFRelease(cfarray);
    }
  }
}

CFArrayRef create_cfarray(int a1, uint64_t a2, ...)
{
  v2 = 0;
  v3 = 0;
  v30 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *values = 0u;
  v15 = 0u;
  valuePtr = 0;
  v13 = &a2;
  v4 = *MEMORY[0x1E695E738];
  while (1)
  {
    if (a1 == 1)
    {
      v6 = v13++;
      v7 = *v6;
      if (!v7)
      {
        v7 = v4;
      }

      values[v3] = v7;
      goto LABEL_10;
    }

    if (a1 != 2)
    {
      break;
    }

    v5 = v13++;
    valuePtr = *v5;
    v2 |= 1 << v3;
    values[v3] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
LABEL_10:
    ++v3;
LABEL_11:
    v8 = v13++;
    a1 = *v8;
  }

  if (a1)
  {
    goto LABEL_11;
  }

  v9 = CFArrayCreate(0, values, v3, MEMORY[0x1E695E9C0]);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 >> i))
      {
        CFRelease(values[i]);
      }
    }
  }

  return v9;
}

uint64_t CAImageProviderGetLODWidth(_DWORD *a1, unsigned int a2)
{
  if (a1[59] <= a2)
  {
    return 0;
  }

  v2 = a1[55];
  v3 = a2 - a1[60];
  if (v3 < 0)
  {
    return v2 << (*(a1 + 240) - a2);
  }

  else
  {
    return v2 >> v3;
  }
}

uint64_t CAImageProviderGetLODHeight(_DWORD *a1, unsigned int a2)
{
  if (a1[59] <= a2)
  {
    return 0;
  }

  v2 = a1[56];
  v3 = a2 - a1[60];
  if (v3 < 0)
  {
    return v2 << (*(a1 + 240) - a2);
  }

  else
  {
    return v2 >> v3;
  }
}

float64x2_t CAImageProviderGetLODScale(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 236) <= a2)
  {
    return *MEMORY[0x1E695F060];
  }

  else
  {
    v2 = *(a1 + 220);
    v3 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32((a2 - *(a1 + 240)) < 0), 0x1FuLL)), vshl_u32(v2, vdup_n_s32(*(a1 + 240) - a2)), vshl_u32(v2, vneg_s32(vdup_n_s32(a2 - *(a1 + 240)))));
    v4.i64[0] = v3.u32[0];
    v4.i64[1] = v3.u32[1];
    v5 = vcvtq_f64_u64(v4);
    v4.i64[0] = v2.u32[0];
    v4.i64[1] = v2.u32[1];
    return vdivq_f64(v5, vcvtq_f64_u64(v4));
  }
}

void CAImageProviderSetSubImageWithSeed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  cfarray = create_cfarray(2, a2, a2, 2, a3, 2, a4, 1, a5, 2, a6, 2, a7, 0);
  v10 = cfarray;
  v11 = *(a1 + 24);
  if (v11)
  {
    CA::Transaction::add_command(0x13, v11, *(a1 + 56), cfarray, v9);
  }

  else
  {
    v12 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v12)
    {
      v12 = CA::Transaction::create(cfarray);
    }

    v13 = *(v12 + 29);
    *(v12 + 29) = v13 + 1;
    if (!v13)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    Mutable = *(a1 + 40);
    if (!Mutable)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      *(a1 + 40) = Mutable;
    }

    CFArrayAppendValue(Mutable, v10);
    CA::Transaction::unlock(v12);
  }

  CFRelease(v10);

  CAImageProviderChanged(a1);
}

void CAImageProviderChanged(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    os_unfair_lock_lock((a1 + 16));
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = v4;
        MEMORY[0x1EEE9AC00](v2);
        v4 = &v9[-2];
        v9[-2] = 0;
        v9[-1] = 0;
        v2 = CFRetain(*v3);
        v9[-2] = v2;
        v9[-1] = v5;
        v3 = *(v3 + 8);
      }

      while (v3);
      os_unfair_lock_unlock((a1 + 16));
      do
      {
        v6 = *(a1 + 24);
        v7 = CA::Render::Object::render_id(*(*v4 + 16));
        CA::Transaction::add_command(2, v6, v7, 0, v8);
        CFRelease(*v4);
        v4 = v4[1];
      }

      while (v4);
    }

    else
    {

      os_unfair_lock_unlock((a1 + 16));
    }
  }
}

void CAImageProviderInvalidateLOD(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v14)
  {
    v14 = CA::Transaction::create(a1);
  }

  v15 = *(v14 + 29);
  *(v14 + 29) = v15 + 1;
  if (!v15)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v16 = *(a1 + 40);
  *(a1 + 40) = 0;
  CA::Transaction::unlock(v14);
  if (v16)
  {
    CFRelease(v16);
  }

  if (*(a1 + 24))
  {
    cfarray = create_cfarray(2, v17, a2, 2, a3, 2, a4, 2, a5, 2, a6, 2, a7, 0);
    CA::Transaction::add_command(0x14, *(a1 + 24), *(a1 + 56), cfarray, v19);

    CFRelease(cfarray);
  }
}

void CAImageProviderDraw(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  if (*(a1 + 64))
  {
    v7 = (a2 & (a2 >> 31)) + a4;
    v8 = a2 & ~(a2 >> 31);
    v9 = (a3 & (a3 >> 31)) + a5;
    v10 = a3 & ~(a3 >> 31);
    v11 = *(a1 + 220);
    v12 = *(a1 + 224);
    if ((v7 + v8) > v11)
    {
      v7 = v11 - v8;
    }

    if ((v9 + v10) > v12)
    {
      v9 = v12 - v10;
    }

    if (v7 >= 1 && v9 >= 1)
    {
      v15 = *(a1 + 228);
      v16 = *(a1 + 232);
      v17 = v8 / v15;
      v18 = v10 / v16;
      v19 = (v8 + v7 - 1) / v15;
      v20 = v10 + v9 - 1;
      v21 = *(a1 + 240);
      for (i = v20 / v16; v21; --v21)
      {
        v17 = (2 * v17);
        v18 = (2 * v18);
        v19 = (2 * v19) | 1;
        i = (2 * i) | 1;
      }

      os_unfair_lock_lock(&provider_lock);
      v23 = *(a1 + 64);
      v24 = (a1 + 80);
      atomic_fetch_add((a1 + 80), 1u);
      if (v23)
      {
        os_unfair_lock_unlock(&provider_lock);
        v25 = *(a1 + 236);
        if (v25)
        {
          v26 = 0;
          v31 = a6;
          do
          {
            v27 = v26 == a6 || a6 == -1;
            if (v27 && v18 <= i)
            {
              v29 = v18;
              do
              {
                v30 = v17;
                if (v17 <= v19)
                {
                  do
                  {
                    v23(a1, v26, v30, v29, 0, *(a1 + 72));
                    v30 = (v30 + 1);
                  }

                  while (v19 + 1 != v30);
                }

                v27 = v29 == i;
                v29 = (v29 + 1);
              }

              while (!v27);
              v25 = *(a1 + 236);
              a6 = v31;
            }

            v17 = (v17 >> 1);
            v18 = (v18 >> 1);
            v19 >>= 1;
            i >>= 1;
            v26 = (v26 + 1);
          }

          while (v26 < v25);
        }

        os_unfair_lock_lock(&provider_lock);
        v24 = (a1 + 80);
      }

      if (atomic_fetch_add(v24, 0xFFFFFFFF) == 1)
      {
        pthread_cond_broadcast((a1 + 152));
      }

      os_unfair_lock_unlock(&provider_lock);
    }
  }
}

_DWORD *CAImageProviderCopyRenderValue(uint64_t a1, uint64_t a2)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg + 576);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 40);
  if (!v5 || !*(v5 + 224))
  {
    return 0;
  }

  if (*(a1 + 24) != *(v5 + 8))
  {
    LODWORD(v2) = vcvtd_n_s64_f64(*(a1 + 244), 0x10uLL);
    cfarray = create_cfarray(2, a2, *(a1 + 20), 2, *(a1 + 220), 2, *(a1 + 224), 2, *(a1 + 228), 2, *(a1 + 232), 2, *(a1 + 236), 2, *(a1 + 240), 2, *(a1 + 216) & 1, 2, v2, 2, *(a1 + 248), 1, *(a1 + 256), 0);
    CA::Context::commit_command(0xF, *(a1 + 56), cfarray, *(v5 + 224), v8);
    CFRelease(cfarray);
    v10 = *(StatusReg + 576);
    if (!v10)
    {
      v10 = CA::Transaction::create(v9);
    }

    v11 = *(v10 + 29);
    *(v10 + 29) = v11 + 1;
    if (!v11)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    v12 = *(a1 + 40);
    *(a1 + 40) = 0;
    CA::Transaction::unlock(v10);
    if (v12)
    {
      Count = CFArrayGetCount(v12);
      if (Count)
      {
        v15 = Count;
        for (i = 0; i != v15; ++i)
        {
          v17 = *(a1 + 56);
          ValueAtIndex = CFArrayGetValueAtIndex(v12, i);
          CA::Context::commit_command(0x13, v17, ValueAtIndex, *(v5 + 224), v19);
        }
      }

      CFRelease(v12);
    }

    if (*(a1 + 264))
    {
      v20 = create_cfarray(2, v13, *(a1 + 264), 0);
      CA::Context::commit_command(0x12, *(a1 + 56), v20, *(v5 + 224), v21);
      CFRelease(v20);
    }

    *(a1 + 24) = *(v5 + 8);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x18uLL, 0xDEEC3011uLL);
  if (result)
  {
    v23 = *(a1 + 56);
    result[2] = 1;
    ++dword_1ED4EAAEC;
    *result = &unk_1EF204B60;
    *(result + 2) = v23;
    result[3] = 301;
  }

  return result;
}

void CAImageProviderRemoveLayer(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 16));
  v4 = *(a1 + 32);
  x_list_remove(v4, a2);
  *(a1 + 32) = v4;

  os_unfair_lock_unlock((a1 + 16));
}

void CAImageProviderSignal(uint64_t a1, int a2)
{
  os_unfair_lock_lock(&provider_lock);
  v4 = provider_list;
  if (provider_list)
  {
    while (1)
    {
      v5 = *v4;
      if (*(*v4 + 7) == a1)
      {
        break;
      }

      v4 = v4[1];
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    CFRetain(*v4);
    os_unfair_lock_unlock(&provider_lock);
    _CAImageProviderSignal(v5, a2);

    CFRelease(v5);
  }

  else
  {
LABEL_4:

    os_unfair_lock_unlock(&provider_lock);
  }
}

void CAImageProviderSetFillColor(uint64_t a1, CGColor *a2)
{
  v3 = *(a1 + 256);
  if (v3 != a2)
  {
    CGColorRelease(v3);
    *(a1 + 256) = CGColorRetain(a2);
    if (*(a1 + 24))
    {
      cfarray = create_cfarray(1, v5, a2, 0);
      CA::Transaction::add_command(0x11, *(a1 + 24), *(a1 + 56), cfarray, v7);

      CFRelease(cfarray);
    }
  }
}

os_log_t ___Z16x_log_get_statesv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "States");
  x_log_get_states(void)::log = result;
  return result;
}

_DWORD *CA::CG::ColorMatrixStyle::copy(CA::CG::ColorMatrixStyle *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_type_zone_malloc(malloc_zone, 0xA0uLL, 0x165299FDuLL);
  v3 = v2;
  if (v2)
  {
    *v2 = &unk_1EF201148;
    v4 = *(this + 3);
    v2[2] = 0;
    v2[3] = v4;
    *(v2 + 2) = CGStyleRetain();
    v5 = *(this + 56);
    v6 = *(this + 40);
    *(v3 + 6) = *(this + 24);
    *(v3 + 10) = v6;
    *(v3 + 14) = v5;
    v3[18] = *(this + 18);
    v3[2] = 1;
    *v3 = &unk_1EF1FC3A0;
    *(v3 + 19) = *(this + 76);
    v7 = *(this + 108);
    v8 = *(this + 124);
    v9 = *(this + 140);
    *(v3 + 23) = *(this + 92);
    *(v3 + 35) = v9;
    *(v3 + 31) = v8;
    *(v3 + 27) = v7;
  }

  return v3;
}

void CA::CG::ColorMatrixStyle::~ColorMatrixStyle(CA::CG::Renderer **this, const void *a2)
{
  *this = &unk_1EF201148;
  CA::CG::Renderer::release_object(this[2], a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF201148;
  CA::CG::Renderer::release_object(this[2], a2);
}

BOOL CA::OGL::GLContext::function_supported(CA::OGL::GLContext *this)
{
  v1 = *(this + 2);
  v2 = *(v1 + 16);
  result = 1;
  if (v2 <= 0x39)
  {
    if (((1 << v2) & 0x3E0000007AFBFFFLL) != 0)
    {
      return result;
    }

    if (((1 << v2) & 0x7C07FD8000000) != 0)
    {
      return *(v1 + 17) == 0;
    }
  }

  if (v2 != 120)
  {
    return 0;
  }

  return result;
}

uint64_t CA::OGL::GLContext::clear_region(uint64_t a1, uint64_t a2, void *a3)
{
  v25[3] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 2696);
  v7 = *(a1 + 680);
  v8 = *(a1 + 672);
  if (v7 != v8 || (!v7 ? (v9 = 0) : (v9 = (*(v8 + 144) >> 1) & 0x1F), *(a1 + 668) != v9))
  {
    CA::OGL::Context::prepare_destination_(a1);
  }

  if ((*(a1 + 1384) & 0x200) != 0)
  {
    CA::OGL::Context::flatten_detached_layers_(a1);
  }

  if (*a3)
  {
    _H3 = HIWORD(*a3);
    _H2 = WORD2(*a3);
    _H1 = WORD1(*a3);
    _H0 = *a3;
    __asm
    {
      FCVT            S0, H0
      FCVT            S1, H1
      FCVT            S2, H2
      FCVT            S3, H3
    }

    (v6[13])(*v6, _S0, _S1, _S2, _S3);
  }

  (v6[73])(*v6, 3089);
  v23 = 0;
  v24 = 0;
  v25[1] = 0;
  v25[2] = 0;
  v25[0] = a2;
  while (CA::ShapeIterator::iterate(v25, &v23))
  {
    (*(*a1 + 1232))(a1, &v23);
    (v6[252])(*v6, v23, HIDWORD(v23), v24, HIDWORD(v24));
    (v6[11])(*v6, 0x4000);
  }

  result = (v6[64])(*v6, 3089);
  if (*a3)
  {
    return (v6[13])(*v6, 0.0, 0.0, 0.0, 0.0);
  }

  return result;
}

uint64_t CA::OGL::GLContext::needs_destination_group(CA::OGL::GLContext *this)
{
  if ((*(*this + 232))(this, 18))
  {
    return 0;
  }

  else
  {
    return (*(*this + 1248))(this, this + 2512) ^ 1;
  }
}

uint64_t *CA::OGL::GLContext::bind_table_image(os_unfair_lock_s *this, uint64_t a2, atomic_uint *a3)
{
  result = CA::OGL::Context::lookup_image(this, a3, 1);
  if (result)
  {
    if (!result[1])
    {
      result[1] = a3;
      atomic_fetch_add(a3 + 41, 1u);
    }

    v7 = *(result + 52);
    if (v7)
    {
      if (!*(result + 72))
      {
        return result;
      }

      if (*(result + 4) == a3[9])
      {
        v8 = *(result + 16);
        v9 = *&this[4]._os_unfair_lock_opaque;
        *(v9 + 2 * a2 + 144) = v7;
        *(v9 + 8 * a2 + 176) = v8;
        return result;
      }
    }

    else
    {
      *(result + 52) = v7 | 0x100000000000DE1;
    }

    v10 = *(*&this->_os_unfair_lock_opaque + 1296);

    return v10(this, result, a3, a2, 0);
  }

  return result;
}

uint64_t *CA::OGL::GLContext::bind_color_cube(os_unfair_lock_s *this, uint64_t a2, atomic_uint *a3)
{
  result = CA::OGL::Context::lookup_image(this, a3, 1);
  if (result && *(a3 + 12) == 23)
  {
    v7 = result;
    if (!result[1])
    {
      result[1] = a3;
      atomic_fetch_add(a3 + 41, 1u);
    }

    v8 = *(result + 52);
    if (v8)
    {
      if (!*(result + 72))
      {
        return result;
      }

      if (*(result + 4) == a3[9])
      {
        v9 = *(result + 16);
        v10 = *&this[4]._os_unfair_lock_opaque;
        *(v10 + 2 * a2 + 144) = v8;
        *(v10 + 8 * a2 + 176) = v9;
        return result;
      }

      v12 = *(*&this->_os_unfair_lock_opaque + 1296);
    }

    else
    {
      if (a3[5] == 1)
      {
        v11 = 3553;
      }

      else
      {
        v13 = (*(*&this->_os_unfair_lock_opaque + 232))(this, 16);
        v8 = *(v7 + 52);
        v11 = 32879;
        if (!v13)
        {
          v11 = 3553;
        }
      }

      *(v7 + 52) = v8 & 0xFFFFFFFFFFFF0000 | v11 | 0x100000000000000;
      v12 = *(*&this->_os_unfair_lock_opaque + 1296);
    }

    return v12(this, v7, a3, a2, 0);
  }

  return result;
}

int32x2_t CA::OGL::GLContext::draw_points(int32x2_t *this, uint64_t a2, unint64_t a3, const float *a4, float32x4_t a5, double a6, __n128 a7)
{
  v11 = this[85];
  v12 = this[84];
  if (*&v11 != *&v12 || (!*&v11 ? (v13 = 0) : (v13 = (*(*&v12 + 144) >> 1) & 0x1F), this[83].i32[1] != v13))
  {
    CA::OGL::Context::prepare_destination_(this);
  }

  if ((this[173].i16[0] & 0x200) != 0)
  {
    CA::OGL::Context::flatten_detached_layers_(this);
  }

  this[338].i8[4] |= 2u;
  CA::OGL::GLContext::update_state(this, a5, a6, a7, a2, a3, a4);
  this[338].i8[4] &= ~2u;
  if (this[335] != a4 || this[336].i32[0] != 3)
  {
    v14 = this[337];
    (v14[512])(*v14, 0, 2, 5126, 0, 16, a4);
    (v14[513])(*v14, 0);
    (v14[512])(*v14, 4, 1, 5126, 0, 16, a4 + 2);
    (v14[513])(*v14, 4);
    (v14[512])(*v14, 1, 4, 5121, 1, 16, a4 + 3);
    (v14[513])(*v14, 1);
    (v14[514])(*v14, 2);
    (v14[514])(*v14, 3);
    this[335] = a4;
    this[336].i32[0] = 3;
  }

  (*(*&this[337] + 528))(**&this[337], 0, a2, a3);
  CA::OGL::GLContext::unload_state(this);
  CA::OGL::Context::marked_destination(this);
  v15.i32[0] = 1;
  v15.i32[1] = a3;
  result = vadd_s32(this[157], v15);
  this[157] = result;
  return result;
}

void CA::OGL::GLContext::update_state(CA::OGL::GLContext *this, float32x4_t _Q0, double a3, __n128 a4, uint64_t a5, unint64_t a6, const float *a7)
{
  v7 = this;
  v182[1] = *MEMORY[0x1E69E9840];
  v8 = *(this + 337);
  v10 = *(this + 2);
  v9 = *(this + 3);
  v11 = *(this + 308);
  v159 = v10;
  v156 = v9;
  if (v11)
  {
    if (*v11 == v10[1].n128_u32[0] && *(v11 + 4) == v10[1].n128_u32[1])
    {
      v12 = *(v11 + 34);
      if (*(v11 + 34))
      {
        v13 = v10 + 9;
        v14 = (v11 + 8);
        while (1)
        {
          v16 = v13->n128_u16[0];
          v13 = (v13 + 2);
          v15 = v16;
          v17 = *v14++;
          if (v15 != v17)
          {
            break;
          }

          if (!--v12)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v18 = *(v11 + 35);
        if (*(v11 + 35))
        {
          v19 = &v10[2].n128_u64[1];
          v20 = (v11 + 280);
          while (1)
          {
            v21 = *v19;
            if (*v19)
            {
              LODWORD(v21) = *(v21 + 36);
            }

            if (*v20 != v21)
            {
              break;
            }

            v20 += 8;
            ++v19;
            if (!--v18)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:
          v22 = *(v11 + 36);
          v23 = v10[31].n128_u8[1];
          v24 = v10[31].n128_u8[0];
          if (((v23 & 1) == 0 || v24 <= 0x19) && v10[31].n128_u8[0] && (*v11 & 0xFE) != 0x10)
          {
            v24 = 62;
          }

          if (v22 >> 8 == v24 && (v22 & 1) == ((v23 >> 1) & 1) && *(v11 + 94) == ((*(this + 2708) >> 1) & 1))
          {
            goto LABEL_78;
          }
        }
      }
    }

    if (v10[1].n128_u32[0] == 120)
    {
      goto LABEL_23;
    }
  }

  else if (v10[1].n128_u8[0] == 120)
  {
LABEL_208:
    v157 = v7 + 307;
    v132 = v7[307].u32[0];
    goto LABEL_209;
  }

  v25 = v10[1].n128_u64[0];
  v26 = CA::OGL::tex_image_count[v25];
  if (CA::OGL::tex_image_count[v25])
  {
    v27 = 0;
    v28 = &v10[1].n128_u8[1];
    v29 = &v10[2].n128_u64[1];
    v30 = CA::OGL::tex_image_count[v25];
    do
    {
      v31 = *v28++;
      v27 += CA::OGL::image_plane_count[v31];
      v32 = *v29;
      if (*v29)
      {
        v33 = *(v32 + 80);
        _ZF = v33 == 0;
        v34 = v33 != 0;
        v35 = *(v32 + 56);
        if (_ZF)
        {
          v36 = 1;
        }

        else
        {
          v36 = 2;
        }

        if (v35)
        {
          v37 = v36;
        }

        else
        {
          v37 = v34;
        }

        v27 += v37;
      }

      ++v29;
      --v30;
    }

    while (v30);
  }

  else
  {
    v27 = 0;
  }

  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v172 = 0u;
  v181 = 0;
  v171 = 0u;
  v170 = 0u;
  v169 = 0u;
  v168 = 0u;
  v167 = 0u;
  v166 = 0u;
  v165 = 0u;
  v164 = 0u;
  v163 = 0u;
  v162 = 0u;
  v161 = 0u;
  memset(&v160[8], 0, 80);
  *v160 = v25;
  DWORD2(v171) = -1;
  v38 = v10[31].n128_u8[1];
  v39 = v10[31].n128_u8[0];
  if (((v38 & 1) == 0 || v39 <= 0x19) && v10[31].n128_u8[0] && (v25 & 0xFE) != 0x10)
  {
    LOWORD(v39) = 62;
  }

  *&v160[36] = (v38 >> 1) & 1 | (v39 << 8);
  LODWORD(v172) = -1;
  v160[38] = (*(this + 692) >> 12) & 7;
  BYTE6(v161) = (*(this + 2708) & 2) != 0;
  v160[39] = v10[20].n128_u8[0];
  if (v27 < 1 || (memcpy(&v160[8], &v10[9], (2 * v27)), v27 <= 0xC))
  {
    bzero(&v160[2 * v27 + 8], 2 * (12 - v27) + 2);
  }

  v40 = v160[36];
  if (HIBYTE(*&v160[36]) != 62 || (CA::OGL::tex_fragment_shader_flags[v160[0]] & 0x10) != 0)
  {
    goto LABEL_50;
  }

  v182[0] = v25;
  if (!v26)
  {
    goto LABEL_52;
  }

  if ((v25 & 0xFF00) == 0x2A00)
  {
LABEL_50:
    if ((*(*v7 + 232))(v7, 18))
    {
      HIDWORD(v171) = 1;
      goto LABEL_52;
    }

    v89 = *v7;
    if (v7[84])
    {
      v90 = (*(*&v89 + 1264))(v7);
      if (!v90)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v90 = (*(*&v89 + 1272))(v7);
      if (!v90)
      {
        goto LABEL_52;
      }
    }

    *&v160[2 * v27 + 8] = v90;
    *(&v171 + 1) = v27++ | 0x100000000;
    if ((v160[36] & 1) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v95 = 0;
  while (v26 - 1 != v95)
  {
    v96 = *(v182 + v95++ + 2);
    if (v96 == 42)
    {
      if (v95 < v26)
      {
        goto LABEL_50;
      }

      break;
    }
  }

LABEL_52:
  if (v40)
  {
LABEL_53:
    *&v160[2 * v27 + 8] = 3553;
    LODWORD(v172) = v27++;
  }

LABEL_54:
  v41 = 0;
  v42 = CA::OGL::tex_image_count[v160[0]];
  v173 = 0u;
  v174 = 0u;
  v43 = v10;
  v44 = &v10[2].n128_i8[8];
  v175 = 0u;
  v176 = 0u;
  v45 = &v43[3].n128_i8[8];
  v46 = &v43[3].n128_i8[10];
  v47 = 1;
  do
  {
    v48 = v47;
    v49 = &v173 + 2 * v41;
    if (v41 < v42 && (v50 = *&v44[8 * v41]) != 0)
    {
      *v49 = *(v50 + 36);
      *(v49 + 7) = *(v50 + 40);
      v51 = *(v50 + 80);
      if (v51)
      {
        LODWORD(v51) = *(v50 + 100);
      }

      *(v49 + 4) = v51;
      v52 = *(v50 + 64);
      if (v52)
      {
        *(v49 + 2) = *(v52 + 20);
        *(v49 + 3) = *(v52 + 16);
      }

      *(v49 + 18) = v45[v41];
      *(v49 + 19) = v46[v41];
      v53 = *(v50 + 80);
      _ZF = v53 == 0;
      v54 = v53 != 0;
      if (_ZF)
      {
        v55 = 1;
      }

      else
      {
        v55 = 2;
      }

      if (*(v50 + 56))
      {
        v54 = v55;
      }

      *(v49 + 8) = v54;
      *(v49 + 5) = CGColorSpaceGetNumberOfComponents(*(v50 + 16));
      *(v49 + 6) = CGColorSpaceGetNumberOfComponents(*(v50 + 24));
    }

    else
    {
      *v49 = 0;
      *(v49 + 7) = 0;
    }

    v47 = 0;
    v41 = 1;
  }

  while ((v48 & 1) != 0);
  v7 = this;
  v56 = *(this + 313);
  if (!v56)
  {
    v56 = x_hash_table_new_(CA::OGL::gl_shader_hash, CA::OGL::gl_shader_compare, 0, 0, 0, 0);
    *(this + 313) = v56;
  }

  v11 = x_hash_table_lookup(v56, v160, 0);
  v9 = v156;
  v10 = v159;
  if (!v11)
  {
    shader = CA::OGL::GLContext::create_shader(this, v160, v27);
    if (!shader)
    {
      if (!*(this + 308))
      {
        goto LABEL_208;
      }

LABEL_23:
      v11 = 0;
      v59 = 0;
      goto LABEL_76;
    }

    v11 = shader;
    hash_table_modify(*(this + 313), v11, v11, 0);
  }

  v58 = *(this + 308);
  if (v58 == v11)
  {
    goto LABEL_77;
  }

  v59 = *(v11 + 56);
LABEL_76:
  (v8[601])(*v8, v59);
  v7[308] = v11;
  v58 = v11;
LABEL_77:
  if (!v11)
  {
    goto LABEL_193;
  }

LABEL_78:
  if (*(v11 + 92) == 1)
  {
    v60 = (v10 + 24);
    if (*(v11 + 60) != v10[1].n128_f32[2] || *(v11 + 64) != v10[1].n128_f32[3] || *(v11 + 68) != v10[2].n128_f32[0] || *(v11 + 72) != v10[2].n128_f32[1])
    {
      (v8[614])(*v8, *(v11 + 144), 1, &v10[1].n128_i64[1]);
      _Q0 = *v60;
      *(v11 + 60) = *v60;
    }
  }

  if (*(v11 + 93) == 1 && (*(v11 + 76) != v10[24].n128_f32[0] || *(v11 + 80) != v10[24].n128_f32[1] || *(v11 + 84) != v10[24].n128_f32[2] || *(v11 + 88) != v10[24].n128_f32[3]))
  {
    (v8[614])(*v8, *(v11 + 148), 1, &v10[24]);
    _Q0 = v10[24];
    *(v11 + 76) = _Q0;
  }

  if (*(v11 + 408) != v7[83].i32[0])
  {
    if (*(v11 + 236) != -1)
    {
      _Q0.i64[1] = 0;
      memset(v160, 0, 64);
      v61 = v7[332];
      v62 = v7[171];
      if (v62)
      {
        _Q0 = CA::Mat4Impl::mat4_concat(v160, v62, *&v7[332], a7);
        v61 = v160;
      }

      if (*(v11 + 172) == *v61)
      {
        v91 = 0;
        while (v91 != 15)
        {
          v92 = v91 + 1;
          v93 = *(v11 + 176 + 4 * v91);
          v94 = v61[++v91];
          if (v93 != v94)
          {
            if ((v92 - 1) <= 0xE)
            {
              goto LABEL_95;
            }

            break;
          }
        }
      }

      else
      {
LABEL_95:
        v63 = *(v61 + 1);
        v64 = *(v61 + 2);
        v65 = *(v61 + 3);
        *(v11 + 172) = *v61;
        *(v11 + 188) = v63;
        *(v11 + 204) = v64;
        *(v11 + 220) = v65;
        (v8[621])(*v8, *(v11 + 236), 1, 0);
      }
    }

    if ((*(v11 + 276) & 0x80000000) == 0)
    {
      v66 = vmul_f32(vcvt_f32_s32(v7[334]), 0x3F0000003F000000);
      v67 = vadd_f32(v66, vcvt_f32_s32(v7[333]));
      *v160 = v66;
      *&v160[8] = v67;
      (v8[614])(*v8);
    }

    *(v11 + 408) = v7[83].i32[0];
  }

  v68 = *(v11 + 35);
  if (*(v11 + 35))
  {
    v69 = 0;
    v70 = &v10[2].n128_i8[8];
    v71 = (v11 + 304);
    do
    {
      if (*(v71 - 5))
      {
        v72 = *&v70[8 * v69];
        v73 = *(v72 + 8);
        if (*(v71 - 1) != v73)
        {
          a6 = *(v72 + 40);
          if (a6)
          {
            (v8[614])(*v8, *v71, a6, *(v72 + 48));
            v73 = *(v72 + 8);
            v68 = *(v11 + 35);
          }

          *(v71 - 1) = v73;
        }
      }

      ++v69;
      v71 += 8;
    }

    while (v69 < v68);
    v10 = v159;
    if (v68)
    {
      v74 = 0;
      v75 = 396;
      v76 = 344;
      do
      {
        v77 = *(&v159[-20] + v76 - 7);
        v78 = v77 > 0x2C;
        v79 = (1 << v77) & 0x180004000000;
        _ZF = v78 || v79 == 0;
        if (!_ZF)
        {
          if ((*(v11 + v75 - 16) & 0x80000000) == 0)
          {
            v81 = &v159[-17] + v76 - 12;
            if (*(v11 + v76) != *v81)
            {
              (v8[620])(*v8);
              (v8[613])(*v8, *(v11 + v75 - 8), 1, &CA::OGL::ycbcr_matrices[48 * *v81 + 36]);
              *(v11 + v76) = *v81;
            }
          }

          if ((*(v11 + v75) & 0x80000000) == 0)
          {
            v82 = v11 + v74 * 16;
            if (*(v11 + v74 * 16 + 348) != v159[v74 + 4].n128_f32[0] || *(v82 + 352) != v159[v74 + 4].n128_f32[1] || *(v11 + v74 * 16 + 356) != v159[v74 + 4].n128_f32[2] || *(v11 + v74 * 16 + 360) != v159[v74 + 4].n128_f32[3])
            {
              *(v82 + 348) = v159[v74 + 4];
              (v8[614])(*v8, *(v11 + v75), 1);
            }
          }
        }

        v75 += 4;
        v83 = v76 - 343;
        ++v76;
        ++v74;
      }

      while (v83 < *(v11 + 35));
    }
  }

  if ((*(v11 + 404) & 0x80000000) != 0)
  {
    goto LABEL_157;
  }

  v84 = *(*&v7[2] + 376);
  if (!v84)
  {
    goto LABEL_157;
  }

  *&v160[8] = 0;
  v85 = 1.0;
  if (*(v84 + 4))
  {
    v85 = -1.0;
  }

  *v160 = __PAIR64__(*(v84 + 16), LODWORD(v85));
  v86 = *v84;
  if (*v84 > 2)
  {
    if (v86 == 3)
    {
      v87 = 0.0;
      v88 = -1.0;
    }

    else
    {
      if (v86 != 4)
      {
        goto LABEL_156;
      }

      v87 = 1.0;
      v88 = 0.0;
    }

LABEL_154:
    v97 = *(v84 + 12);
    v98 = *(v84 + 8) + (v97 * v88);
    *&v160[8] = v98;
    v99 = *(v84 + 8) + (v97 * v87);
    *&v160[12] = v99;
    if (v99 <= v98)
    {
      *&v160[8] = __PAIR64__(LODWORD(v98), LODWORD(v99));
    }

    goto LABEL_156;
  }

  if (v86 == 1)
  {
    *&v160[8] = *(v84 + 8);
  }

  else if (v86 == 2)
  {
    v87 = 0.5;
    v88 = -0.5;
    goto LABEL_154;
  }

LABEL_156:
  (v8[614])(*v8);
LABEL_157:
  v100 = 0;
  v101 = 1;
  do
  {
    v102 = v101;
    v103 = (v11 + 40 + 8 * v100);
    *_Q0.f32 = *v103;
    v104 = vcvtq_f32_f16(*v103);
    v105 = &v10[v100 + 18];
    _Q0.i32[0] = *v105;
    if (v104.n128_f32[0] != *v105 || (a4.n128_u32[0] = v104.n128_u32[1], v104.n128_f32[1] != *(v105 + 1)) || (a4.n128_u32[0] = v104.n128_u32[2], v104.n128_f32[2] != *(v105 + 2)) || (v104.n128_u32[0] = v104.n128_u32[3], a4.n128_u32[0] = v105[3], v104.n128_f32[3] != a4.n128_f32[0]))
    {
      if ((*(v11 + 240 + 4 * v100) & 0x80000000) == 0)
      {
        _S1 = v105[1];
        _S2 = v105[2];
        _S3 = v105[3];
        __asm
        {
          FCVT            H0, S0
          FCVT            H1, S1
          FCVT            H2, S2
          FCVT            H3, S3
        }

        v103->i16[0] = _H0;
        v103->i16[1] = _S1;
        v103->i16[2] = _S2;
        v103->i16[3] = _S3;
        __asm
        {
          FCVT            S0, H0
          FCVT            S1, H1
          FCVT            S2, H2
          FCVT            S3, H3
        }

        (v8[606])(*v8, _S0, _S1, _S2, _S3);
      }
    }

    v101 = 0;
    v100 = 1;
  }

  while ((v102 & 1) != 0);
  v7 = this;
  v10 = v159;
  if ((*(v11 + 256) & 0x80000000) == 0)
  {
    v117 = *(this + 84);
    if (v117)
    {
      if (*(v11 + 260))
      {
        v118 = 0;
        do
        {
          (*(*this + 840))(this, v117, v118, (v118 + *(v11 + 256)), 0, 0, 0.0, v104, a4);
          v118 = (v118 + 1);
        }

        while (v118 < *(v11 + 260));
      }

      _Q0.i64[0] = 0x3F0000003F000000;
      if ((v117[18].i8[3] & 0x10) == 0)
      {
        v104.n128_u64[0] = 0x3F0000003F000000;
        *_Q0.f32 = vmul_f32(vcvt_f32_s32(v117[5]), 0x3F0000003F000000);
      }

      _Q0.i64[1] = _Q0.i64[0];
      *(*(this + 2) + 128) = _Q0;
    }

    else
    {
      (*(*this + 1280))(this, _Q0, v104, a4);
    }

    if ((*(v11 + 272) & 0x80000000) == 0)
    {
      if (*(v11 + 128) != v159[8].n128_f32[0] || *(v11 + 132) != v159[8].n128_f32[1] || *(v11 + 136) != v159[8].n128_f32[2] || (_Q0.i32[0] = *(v11 + 140), v104.n128_u32[0] = v159[8].n128_u32[3], _Q0.f32[0] != v104.n128_f32[0]))
      {
        *(v11 + 128) = v159[8];
        (v8[614])(*v8);
      }
    }
  }

  if ((*(v11 + 264) & 0x80000000) == 0)
  {
    (*(*this + 1240))(this, _Q0, v104, a4);
  }

  if ((*(v11 + 268) & 0x80000000) == 0)
  {
    v119 = *(this + 676) * (*(*(this + 2) + 368) + *(*(this + 2) + 368));
    (v8[603])(*v8, v119);
  }

  v120 = 0;
  v121 = v11 + 248;
  v122 = v11 + 96;
  v123 = 1;
  do
  {
    v124 = v123;
    if ((*(v121 + 4 * v120) & 0x80000000) == 0)
    {
      v125 = v122 + 16 * v120;
      v126 = &v159[v120 + 6];
      if (*v125 != *v126 || *(v125 + 4) != *(v126 + 4) || *(v125 + 8) != *(v126 + 8) || *(v125 + 12) != *(v126 + 12))
      {
        *v125 = *v126;
        (v8[614])(*v8);
      }
    }

    v123 = 0;
    v120 = 1;
  }

  while ((v124 & 1) != 0);
  v58 = *(this + 308);
  v9 = v156;
LABEL_193:
  if (!v58)
  {
    goto LABEL_208;
  }

  v127 = *(v58 + 168);
  if (!*(v58 + 168))
  {
    v157 = v7 + 307;
    v132 = v7[307].u32[0];
LABEL_214:
    v133 = *(v58 + 34);
    if (!*(v58 + 34))
    {
      goto LABEL_227;
    }

    goto LABEL_215;
  }

  v128 = 0;
  v129 = v7 + 20;
  do
  {
    if (*(v58 + 4 * v128 + 144) == -1)
    {
      goto LABEL_205;
    }

    v130 = *(v58 + v128 + 160);
    a6 = *(v58 + v128 + 164);
    if (v130 > 2)
    {
      v131 = (v8 + 613);
      if (v130 != 3)
      {
        if (v130 != 4)
        {
          goto LABEL_205;
        }

        v131 = (v8 + 614);
      }

LABEL_204:
      (*v131)(*v8);
      v127 = *(v58 + 168);
      goto LABEL_205;
    }

    v131 = (v8 + 611);
    if (v130 == 1)
    {
      goto LABEL_204;
    }

    v131 = (v8 + 612);
    if (v130 == 2)
    {
      goto LABEL_204;
    }

LABEL_205:
    ++v128;
    v129 += 10;
  }

  while (v128 < v127);
  v7 = this;
  v10 = v159;
  v58 = *(this + 308);
  v157 = (this + 2456);
  v132 = *(this + 614);
  if (v58)
  {
    goto LABEL_214;
  }

LABEL_209:
  v133 = v7[13].u32[0];
  if (v133 >= 0xD)
  {
    v133 = 13;
  }

  if (v133)
  {
LABEL_215:
    v134 = 0;
    v135 = v9 + 176;
    v136 = v10 + 11;
    v137 = v133;
    do
    {
      v138 = v9 + 2 * v134;
      v139 = *(v138 + 144);
      v140 = v10 + 2 * v134;
      v141 = *(v140 + 72);
      v142 = *(v135 + 8 * v134);
      if (v139 != v141)
      {
        if (v142)
        {
          if (v134 != v132)
          {
            (v8[343])(*v8, (v134 + 33984), a6);
            v139 = *(v138 + 144);
            v132 = v134;
          }

          (v8[6])(*v8, v139, 0);
          *(v135 + 8 * v134) = 0;
          LOWORD(v141) = *(v140 + 72);
        }

        v142 = 0;
        *(v138 + 144) = v141;
      }

      a6 = v136->n128_u64[v134];
      if (a6 != v142)
      {
        if (v134 != v132)
        {
          (v8[343])(*v8, (v134 + 33984));
          a6 = v136->n128_u64[v134];
          v132 = v134;
        }

        (v8[6])(*v8, *(v140 + 72), a6);
        *(v135 + 8 * v134) = v136->n128_u64[v134];
      }

      ++v134;
      v10 = v159;
    }

    while (v137 != v134);
  }

LABEL_227:
  v143 = v9;
  v157->i32[0] = v132;
  v144 = v10[31].n128_u8[0];
  v145 = (v144 < 0x1A) & v10[31].n128_u8[1];
  if (v145)
  {
    v146 = v10[31].n128_u8[1];
    v147 = *(v143 + 496);
    v148 = this;
    if (v144 != v147)
    {
      CA::OGL::GLContext::load_blend_func(this, v144, v147);
      *(v143 + 496) = v10[31].n128_u8[0];
    }

    if ((*(v143 + 497) ^ v146))
    {
      v149 = (v143 + 497);
      v150 = 73;
      goto LABEL_234;
    }
  }

  else
  {
    v148 = this;
    if (*(v143 + 497))
    {
      v149 = (v143 + 497);
      v150 = 64;
LABEL_234:
      (v8[v150])(*v8, 3042);
      *v149 = *v149 & 0xFE | v145;
    }
  }

  v151 = *(v148 + 64);
  if (v151 == 1)
  {
    v152 = *(v148 + 9);
    if (*(v148 + 8) != *(v148 + 12) || v152 != *(v148 + 13) || *(v148 + 10) != *(v148 + 14) || *(v148 + 11) != *(v148 + 15))
    {
      *v160 = *(v148 + 8);
      *&v160[4] = v152;
      *&v160[8] = *(v148 + 5);
      (*(*v148 + 1232))(v148, v160);
      (v8[252])(*v8, *v160, *&v160[4], *&v160[8], *&v160[12]);
      *(v148 + 3) = *(v148 + 2);
      v151 = *(v148 + 64);
    }
  }

  if (v151 != (*(v148 + 65) & 1))
  {
    _ZF = (v151 & 1) == 0;
    v153 = 64;
    if (!_ZF)
    {
      v153 = 73;
    }

    (v8[v153])(*v8, 3089);
    *(v148 + 65) = *(v148 + 65) & 0xFE | *(v148 + 64);
  }

  v154 = *(v148 + 308);
  if (v154 && (*(v154 + 256) & 0x80000000) == 0 && *(v154 + 260))
  {
    v155 = 0;
    do
    {
      (*(*v148 + 1288))(v148, v155 + *(v154 + 256));
      ++v155;
      v154 = *(v148 + 308);
    }

    while (v155 < *(v154 + 260));
  }
}

uint64_t CA::OGL::GLContext::unload_state(uint64_t this)
{
  v1 = *(this + 2464);
  if (v1)
  {
    v2 = v1[66];
    if ((v2 & 0x80000000) == 0)
    {
      v3 = *(this + 16);
      *(v3 + 2 * v2 + 144) = 0;
      *(v3 + 8 * v2 + 176) = 0;
    }

    v4 = v1[64];
    if ((v4 & 0x80000000) == 0)
    {
      v5 = v1[65];
      if (v5)
      {
        v6 = *(this + 16);
        v7 = v6 + 144;
        v8 = v6 + 176;
        do
        {
          *(v7 + 2 * v4) = 0;
          *(v8 + 8 * v4++) = 0;
          --v5;
        }

        while (v5);
      }
    }
  }

  return this;
}

uint64_t CA::OGL::GLContext::load_blend_func(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 <= 0x14)
  {
    v3 = a2;
  }

  else
  {
    v3 = 3;
  }

  if (a3 <= 0x14)
  {
    v4 = a3;
  }

  else
  {
    v4 = 3;
  }

  if (v3 != v4)
  {
    v5 = *(result + 2696);
    v6 = &CA::OGL::GLContext::load_blend_func(CA::OGL::BlendFunction,CA::OGL::BlendFunction)::functions[3 * v3];
    if (*v6 != CA::OGL::GLContext::load_blend_func(CA::OGL::BlendFunction,CA::OGL::BlendFunction)::functions[3 * v4])
    {
      (v5[339])(*v5);
    }

    v7 = *v5;
    v8 = v6[1];
    v9 = v6[2];
    if (v3 > 0x12)
    {
      v11 = v5[337];

      return v11(v7, v8, v9, 1, 771);
    }

    else
    {
      v10 = v5[8];

      return v10(v7, v8, v9);
    }
  }

  return result;
}

char *CA::OGL::GLContext::create_shader(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v4 = a1;
  v257[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 2696);
  if (*(a1 + 2464))
  {
    *(a1 + 2464) = 0;
    (v5[601])(*v5, 0);
  }

  v6 = *a2;
  v7 = CA::OGL::tex_image_count[v6];
  if (a2[94])
  {
    v8 = 7;
  }

  else
  {
    v8 = CA::OGL::tex_vertex_shader_indices[v6];
  }

  v225 = BYTE13(xmmword_1ED4E97DC);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  v224 = v4;
  v231 = a2;
  v226 = *a2;
  if (v9)
  {
LABEL_11:
    if (a2[94])
    {
LABEL_12:
      v10 = 0;
    }

    else
    {
      v10 = 1;
      v230 = *(v4 + 4 * CA::OGL::tex_vertex_shader_indices[v6] + 2472);
      if (v230)
      {
        goto LABEL_102;
      }
    }
  }

  else
  {
    v11 = 0;
    while (1)
    {
      v10 = 0;
      v12 = a2[v11 + 1];
      if (v12 == 26 || v12 == 44)
      {
        break;
      }

      if ((a2[39] >> v11))
      {
        goto LABEL_12;
      }

      if (v7 == ++v11)
      {
        goto LABEL_11;
      }
    }
  }

  v230 = (v5[595])(*v5, 35633);
  v248 = (*(*v4 + 1224))(v4);
  v227 = v10;
  v221 = v8;
  if (!v8)
  {
    if (v10)
    {
      v15 = 0;
    }

    else
    {
      v15 = a2;
    }

    memset(buf, 0, sizeof(buf));
    *&v252[0] = 0;
    if (v15)
    {
      v16 = *v15;
      v17 = CA::OGL::tex_image_count[v16];
      v238 = (CA::OGL::tex_fragment_shader_flags[v16] & 1) == 0;
    }

    else
    {
      v17 = 0;
      v238 = 0;
    }

    x_stream_write(buf, "uniform highp mat4 vertex_matrix;\n", 0x22uLL);
    x_stream_write(buf, "uniform highp vec4 texmat0, texmat1, texmat2;\n", 0x2EuLL);
    v217 = v7;
    if (v15)
    {
      if ((*(v15 + 64) & 0x80000000) == 0)
      {
        x_stream_write(buf, "uniform highp vec4 texmatD;\n", 0x1CuLL);
      }

      if ((*(v15 + 66) & 0x80000000) != 0)
      {
LABEL_34:
        if (v15 && v17)
        {
          for (i = 0; i != v17; ++i)
          {
            v19 = v15[i + 1];
            if (v19 == 44 || v19 == 26)
            {
              X::Stream::printf(buf, "uniform highp vec4 chroma_matrix%d;\n", i);
            }
          }
        }

        x_stream_write(buf, "attribute highp vec4 vertex_position;\n", 0x26uLL);
        x_stream_write(buf, "attribute lowp vec4 vertex_color;\n", 0x22uLL);
        x_stream_write(buf, "attribute highp vec2 vertex_texcoord0, vertex_texcoord1;\n", 0x39uLL);
        x_stream_write(buf, "attribute mediump vec3 vertex_normal;\n", 0x26uLL);
        if (!v238)
        {
          x_stream_write(buf, "varying lowp vec4 color;\n", 0x19uLL);
        }

        v242 = v15;
        if (v15)
        {
          if (v17)
          {
            v21 = 0;
            v22 = v15 + 1;
            do
            {
              if ((v15[39] >> v21))
              {
                v23 = 4 * byte_183E28164[v22[v21]];
              }

              else
              {
                v23 = byte_183E28164[v22[v21]];
              }

              if (v23)
              {
                for (j = 0; j != v23; ++j)
                {
                  X::Stream::printf(buf, "varying highp vec2 texcoord%d_%d;\n", v21, j);
                }
              }

              ++v21;
            }

            while (v21 != v17);
          }

          v7 = v217;
          if ((*(v15 + 64) & 0x80000000) == 0)
          {
            x_stream_write(buf, "varying highp vec3 texcoordD;\n", 0x1EuLL);
          }

          a2 = v231;
          if ((*(v15 + 66) & 0x80000000) != 0)
          {
LABEL_62:
            x_stream_write(buf, "\nvoid main() {\n", 0xFuLL);
            x_stream_write(buf, "  gl_Position = vertex_matrix * vertex_position;\n", 0x31uLL);
            if (!v238)
            {
              x_stream_write(buf, "  color = vertex_color;\n", 0x18uLL);
            }

            if (v15)
            {
              if (v17)
              {
                v25 = 0;
                v232 = v17;
                while (1)
                {
                  v26 = v242[v25 + 1];
                  if (((0x42000800000uLL >> v26) & 1) == 0)
                  {
                    break;
                  }

LABEL_85:
                  if (++v25 == v232)
                  {
                    goto LABEL_86;
                  }
                }

                v27 = 0;
                if (byte_183E28164[v26] <= 1u)
                {
                  v28 = 1;
                }

                else
                {
                  v28 = byte_183E28164[v26];
                }

                while (v26 == 44 || v26 == 26)
                {
                  if (!v27)
                  {
                    goto LABEL_79;
                  }

                  X::Stream::printf(buf, "  texcoord%d_%d = texcoord%d_0 * chroma_matrix%d.xy + chroma_matrix%d.zw;\n");
LABEL_82:
                  if (++v27 == v28)
                  {
                    goto LABEL_85;
                  }
                }

                if (((1 << v25) & v242[39]) != 0)
                {
                  v29 = 0;
                  v30 = &unk_183E2661C;
                  do
                  {
                    X::Stream::printf(buf, "  texcoord%d_%d = (vertex_texcoord%d + vec2(%g, %g)) * texmat%d.xy + texmat%d.zw;\n", v25, v29++, v25, *(v30 - 1), *v30, v25, v25);
                    v30 += 2;
                  }

                  while (v29 != 4);
                  goto LABEL_82;
                }

                if (v27)
                {
                  X::Stream::printf(buf, "  texcoord%d_%d = texcoord%d_0;\n");
                  goto LABEL_82;
                }

LABEL_79:
                X::Stream::printf(buf, "  texcoord%d_0 = vertex_texcoord%d * texmat%d.xy + texmat%d.zw;\n");
                goto LABEL_82;
              }

LABEL_86:
              v4 = v224;
              if ((*(v242 + 64) & 0x80000000) == 0)
              {
                x_stream_write(buf, "  texcoordD = vec3(gl_Position.xy * texmatD.xy + texmatD.zw * gl_Position.w, gl_Position.w);\n", 0x5DuLL);
              }

              v7 = v217;
              a2 = v231;
              if ((*(v242 + 66) & 0x80000000) != 0)
              {
LABEL_92:
                x_stream_write(buf, "}\n", 2uLL);
                v14 = x_stream_finish(buf);
                v13 = v14;
                goto LABEL_93;
              }
            }

            else
            {
              X::Stream::printf(buf, "  texcoord%d_0 = vertex_texcoord%d * texmat%d.xy + texmat%d.zw;\n", 0, 0, 0, 0);
              X::Stream::printf(buf, "  texcoord%d_0 = vertex_texcoord%d * texmat%d.xy + texmat%d.zw;\n", 1, 1, 1, 1);
              x_stream_write(buf, "  texcoordD = vec3(gl_Position.xy * texmatD.xy + texmatD.zw * gl_Position.w, gl_Position.w);\n", 0x5DuLL);
              v4 = v224;
            }

            x_stream_write(buf, "  texcoordN = vec3(gl_Position.xy * texmatW.xy + texmatW.zw * gl_Position.w, gl_Position.w * float(NOISE_SIZE));\n", 0x71uLL);
            goto LABEL_92;
          }
        }

        else
        {
          X::Stream::printf(buf, "varying highp vec2 texcoord%d_0;\n", 0);
          X::Stream::printf(buf, "varying highp vec2 texcoord%d_0;\n", 1);
          x_stream_write(buf, "varying highp vec3 texcoordD;\n", 0x1EuLL);
          v7 = v217;
        }

        x_stream_write(buf, "varying highp vec3 texcoordN;\n", 0x1EuLL);
        goto LABEL_62;
      }
    }

    else
    {
      x_stream_write(buf, "uniform highp vec4 texmatD;\n", 0x1CuLL);
    }

    x_stream_write(buf, "uniform highp vec4 texmatW;\n", 0x1CuLL);
    goto LABEL_34;
  }

  v13 = 0;
  v14 = CA::OGL::vertex_shaders[v8];
LABEL_93:
  v249 = v14;
  if (v225)
  {
    if (x_log_get_CADebug(void)::once != -1)
    {
      dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
    }

    v31 = x_log_get_CADebug(void)::log;
    if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_INFO))
    {
      v32 = *a2;
      v33 = *(a2 + 1);
      *buf = 67109890;
      *&buf[4] = v32;
      *&buf[8] = 1024;
      *&buf[10] = v33;
      *&buf[14] = 2080;
      *&v252[0] = v248;
      WORD4(v252[0]) = 2080;
      *(v252 + 10) = v14;
      _os_log_impl(&dword_183AA6000, v31, OS_LOG_TYPE_INFO, "%08x %08x vertex shader:\n---\n%s%s---\n", buf, 0x22u);
    }
  }

  (v5[596])(*v5, v230, 2, &v248, 0);
  (v5[597])(*v5, v230);
  if (v13)
  {
    free(v13);
  }

  v6 = v226;
  LOBYTE(v10) = v227;
  if (v227)
  {
    *(v4 + 4 * v221 + 2472) = v230;
  }

LABEL_102:
  if (v6 > 0x32 || ((1 << v6) & 0x7A07FD8000000) == 0)
  {
    v86 = *a2;
    if (v86 > 0x78 || !CA::OGL::tex_fragment_shaders[v86])
    {
      return 0;
    }

    v229 = v10;
    v218 = v7;
    v87 = CA::OGL::tex_image_count[*a2];
    v256 = 0;
    v257[0] = 0;
    v254[1] = 0;
    v255 = 0;
    v254[0] = 0;
    if (v87)
    {
      v88 = a2;
      v89 = 0;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = v88[39];
      v95 = (v88 + 296);
      do
      {
        v96 = v231[v89 + 1];
        v97 = CA::OGL::image_fragment_shader_flags[v96];
        if (v97)
        {
          v98 = "mediump";
        }

        else
        {
          v98 = "lowp";
        }

        v254[v89] = v98;
        v99 = CA::OGL::image_plane_count[v96];
        *(v257 + v89) = v99;
        v100 = v231[v89 + 3];
        v101 = byte_183E28164[v96];
        if ((v94 >> v89))
        {
          v101 *= 4;
        }

        *(&v257[-1] + v89) = v101;
        *(&v255 + v89) = v99;
        if (*(v95 - 4))
        {
          v99 += *v95;
          *(&v255 + v89) = v99;
        }

        v90 |= 1 << v96;
        v91 |= 1 << v100;
        v92 |= v97;
        v93 += v99;
        ++v89;
        v95 += 16;
      }

      while (v87 != v89);
    }

    else
    {
      v93 = 0;
      v92 = 0;
      v91 = 0;
      v90 = 0;
    }

    if ((*(v231 + 64) & 0x80000000) == 0)
    {
      v93 += *(v231 + 65);
    }

    v4 = v224;
    v109 = v93 + (*(v231 + 66) >= 0);
    if (v109 > 13)
    {
      v35 = 0;
      v34 = 0;
      a2 = v231;
LABEL_332:
      LOBYTE(v10) = v229;
      goto LABEL_503;
    }

    v253 = 0;
    *buf = 0u;
    memset(v252, 0, sizeof(v252));
    v216 = v109;
    if (v109 >= 1)
    {
      v110 = (v231 + 8);
      v111 = buf;
      v112 = v216;
      do
      {
        v114 = *v110++;
        v113 = v114;
        if (v114 == 32879)
        {
          v115 = "3D";
        }

        else
        {
          v115 = "2DRect";
        }

        if (v113 == 3553)
        {
          v116 = "2D";
        }

        else
        {
          v116 = v115;
        }

        *v111 = v116;
        v111 += 8;
        --v112;
      }

      while (v112);
    }

    v248 = 0;
    v249 = 0;
    v250 = 0;
    if ((v92 & 2) != 0)
    {
      x_stream_write(&v248, "#extension GL_OES_standard_derivatives : require\n\n", 0x32uLL);
    }

    if (*(v231 + 65) && (*(v231 + 64) & 0x80000000) != 0)
    {
      x_stream_write(&v248, "#extension GL_EXT_shader_framebuffer_fetch : require\n\n", 0x36uLL);
    }

    v117 = CA::OGL::tex_fragment_shader_flags[*v231];
    v118 = CA::OGL::blend_modes[v231[37]];
    x_stream_write(&v248, "uniform highp vec4 texmat0, texmat1, texmat2;\n", 0x2EuLL);
    v209 = v117;
    if ((v117 & 4) != 0)
    {
      X::Stream::printf(&v248, "uniform lowp vec4 function_arg;\n");
    }

    v119 = v231[3];
    v212 = v231 + 3;
    if (v119 == 5 || v119 == 3)
    {
      X::Stream::printf(&v248, "uniform lowp vec4 coord_arg;\n");
    }

    if ((*(v231 + 66) & 0x80000000) == 0)
    {
      x_stream_write(&v248, "uniform mediump float noise_scale;\n", 0x23uLL);
    }

    v243 = v118;
    v220 = v5;
    v233 = v87;
    if (v87)
    {
      v120 = 0;
      v121 = 0;
      do
      {
        v122 = *(&v255 + v120);
        if (v122 >= 1)
        {
          v123 = v254[v120];
          v124 = v121;
          do
          {
            X::Stream::printf(&v248, "uniform %s sampler%s texture%d;\n", v123, *&buf[8 * v124], v124);
            ++v124;
            --v122;
          }

          while (v122);
          v121 = v124;
          v87 = v233;
        }

        ++v120;
      }

      while (v120 != v87);
    }

    else
    {
      v121 = 0;
    }

    if (v121 < v216)
    {
      v125 = &buf[8 * v121];
      v126 = v121;
      do
      {
        v127 = *v125++;
        X::Stream::printf(&v248, "uniform lowp sampler%s texture%d;\n", v127, v126++);
      }

      while (v216 != v126);
    }

    if ((v243 & 4) != 0)
    {
      x_stream_write(&v248, "uniform lowp vec4 blend_color0;\n", 0x20uLL);
      x_stream_write(&v248, "uniform lowp vec4 blend_color1;\n", 0x20uLL);
    }

    if (v87)
    {
      v128 = 0;
      v129 = (v231 + 294);
      do
      {
        v131 = *v129;
        v129 += 16;
        v130 = v131;
        if (v131)
        {
          X::Stream::printf(&v248, "uniform mediump vec4 colorP%d[%d];\n", v128, v130);
        }

        ++v128;
      }

      while (v87 != v128);
      if ((v90 & 0x180004000000) != 0)
      {
        for (k = 0; k != v87; ++k)
        {
          v133 = v231[k + 1];
          v134 = v133 > 0x2C;
          v135 = (1 << v133) & 0x180004000000;
          if (!v134 && v135 != 0)
          {
            X::Stream::printf(&v248, "uniform mediump mat3 ycbcr_matrix%d;\n", k);
            X::Stream::printf(&v248, "uniform mediump vec3 ycbcr_bias%d;\n", k);
          }
        }
      }
    }

    if ((v92 & 4) != 0)
    {
      X::Stream::printf(&v248, "uniform mediump vec4 render_state;\n");
    }

    a2 = v231;
    v137 = *v231;
    if (v137 <= 0x17)
    {
      v138 = "uniform lowp vec3 color_matrix[3];\n";
      if (*v231 > 0x14u)
      {
        v5 = v220;
        if (v137 != 21)
        {
          if (v137 != 23)
          {
            goto LABEL_271;
          }

          goto LABEL_270;
        }

LABEL_265:
        X::Stream::printf(&v248, "uniform lowp vec4 color_matrix[5];\n");
        goto LABEL_271;
      }

      v5 = v220;
      if (v137 == 18)
      {
        goto LABEL_270;
      }

      if (v137 != 19)
      {
        goto LABEL_271;
      }
    }

    else
    {
      if (*v231 > 0x34u)
      {
        v5 = v220;
        if (v137 == 53)
        {
          X::Stream::printf(&v248, "uniform lowp vec4 color_dodge;\n");
          X::Stream::printf(&v248, "uniform lowp vec4 color_lighten;\n");
        }

        else
        {
          if (v137 != 54)
          {
            if (v137 == 57)
            {
              X::Stream::printf(&v248, "uniform lowp vec4 curves[4];\n");
            }

LABEL_271:
            if (v209)
            {
              X::Stream::printf(&v248, "varying lowp vec4 color;\n");
            }

            if (v87)
            {
              v139 = 0;
              do
              {
                v140 = *(&v257[-1] + v139);
                if (v140 >= 1)
                {
                  for (m = 0; m != v140; ++m)
                  {
                    X::Stream::printf(&v248, "varying highp vec2 texcoord%d_%d;\n", v139, m);
                  }
                }

                ++v139;
                v87 = v233;
              }

              while (v139 != v233);
            }

            if ((*(v231 + 64) & 0x80000000) == 0)
            {
              x_stream_write(&v248, "varying highp vec3 texcoordD;\n", 0x1EuLL);
            }

            if ((*(v231 + 66) & 0x80000000) == 0)
            {
              x_stream_write(&v248, "varying highp vec3 texcoordN;\n", 0x1EuLL);
            }

            if (v91)
            {
              v142 = &CA::OGL::coord_fragment_functions;
              v143 = -3;
              do
              {
                if ((v91 & 1) != 0 && v143 >= 0xFFFFFFFE)
                {
                  v144 = strlen(*v142);
                  x_stream_write(&v248, *v142, v144);
                }

                ++v142;
                ++v143;
                v134 = v91 > 1;
                v91 >>= 1;
              }

              while (v134);
            }

            v35 = v216;
            if (v90)
            {
              v145 = &CA::OGL::image_fragment_functions;
              v146 = v90;
              do
              {
                if ((v146 & 1) != 0 && *v145)
                {
                  v147 = strlen(*v145);
                  x_stream_write(&v248, *v145, v147);
                }

                ++v145;
                v134 = v146 > 1;
                v146 >>= 1;
              }

              while (v134);
            }

            if (v243 & 0x10 | v209 & 0x20)
            {
              x_stream_write(&v248, "\nlowp vec4 mixLin(lowp vec4 D, lowp vec4 S, lowp vec4 M) {\n  D.rgb = D.rgb / max(D.a, .005);\n  D.rgb = D.rgb*D.rgb;\n  S.rgb = S.rgb / max(S.a, .005);\n  S.rgb = S.rgb*S.rgb;\n  lowp vec4 R = mix(D, S, M);\n  R.rgb = sqrt(max(R.rgb, 0.))*R.a;\n  return R;\n}\n", 0xFDuLL);
              if ((v243 & 0x40) == 0)
              {
LABEL_297:
                if ((v243 & 0x20) == 0)
                {
                  goto LABEL_299;
                }

                goto LABEL_298;
              }
            }

            else if ((v243 & 0x40) == 0)
            {
              goto LABEL_297;
            }

            x_stream_write(&v248, "\nlowp vec4 vibrantLightenSover(lowp vec4 S, lowp vec4 D) {\n  lowp float y = 1. - dot(D.rgb, vec3(.2125, .7154, .0721));\n  S = S * (y * y) * (y * y);\n  return D*(1. - S.a) + S;\n}\n\nlowp vec4 vibrantColorDodge(lowp vec4 S, lowp vec4 D) {\n  lowp vec4 R = D*(1. - S.a) + S*(1. - D.a);\n  R.rgb += mix(S.aaa, D.rgb*S.a*S.a/max(S.a - S.rgb, .005),\n               step(.005, S.a - S.rgb));\n  R.a += D.a*S.a;\n  R.rgb = clamp(R.rgb, 0.0, R.a);\n  return R;\n}\n\nlowp vec4 vibrantDark(lowp vec4 s0, lowp vec4 d0) {\n  return vibrantLightenSover(s0 * blend_color1,\n                             vibrantColorDodge(s0 * blend_color0, d0));\n}\n\nlowp vec4 vibrantDarkReversed(lowp vec4 s0, lowp vec4 d0) {\n  return vibrantColorDodge(s0 * blend_color0,\n                           vibrantLightenSover(s0 * blend_color1, d0));\n}\n", 0x323uLL);
            x_stream_write(&v248, "\nlowp vec4 vibrantDarkenSover(lowp vec4 S, lowp vec4 D) {\n  lowp float y = dot(D.rgb, vec3(.2125, .7154, .0721));\n  S = S * (y * y) * (y * y);\n  return D*(1. - S.a) + S;\n}\n\nlowp vec4 vibrantColorBurn(lowp vec4 S, lowp vec4 D) {\n  lowp vec4 R = D*(1. - S.a) + S*(1. - D.a);\n  lowp float dasa = D.a*S.a;\n  R.rgb += step(.005, S.rgb)\n           * (dasa - S.a*S.a*(D.a - D.rgb)/max(S.rgb, .005));\n  R.a += dasa;\n  R.rgb = clamp(R.rgb, 0.0, R.a);\n  return R;\n}\n\nlowp vec4 vibrantLight(lowp vec4 s0, lowp vec4 d0) {\n  return vibrantDarkenSover(s0 * blend_color1,\n                            vibrantColorBurn(s0 * blend_color0, d0));\n}\n\nlowp vec4 vibrantLightReversed(lowp vec4 s0, lowp vec4 d0) {\n  return vibrantColorBurn(s0 * blend_color0,\n                          vibrantDarkenSover(s0 * blend_color1, d0));\n}\n", 0x328uLL);
            if ((v243 & 0x20) == 0)
            {
LABEL_299:
              v148 = *v231;
              if (v148 <= 0x34)
              {
                if (v148 != 21)
                {
                  if (v148 != 25)
                  {
                    if (v148 != 26)
                    {
                      goto LABEL_321;
                    }

                    v149 = "\nlowp vec4 perlinBias(lowp vec4 s, lowp float a) {\n  s.rgb = s.rgb / (a * (s.a - s.rgb) + s.a);\n  return s;\n}\n";
                    v150 = 110;
                    goto LABEL_320;
                  }

                  v149 = "\nlowp vec4 colorMatrix4x4BiasDivideAlpha(lowp vec4 s) {\n  s = vec4(s.rgb / s.a, 1.0);\n  s = s.r * color_matrix[0] + s.g * color_matrix[1]\n    + s.b * color_matrix[2] + color_matrix[3]\n    + color_matrix[4];\n  s.rgb = s.rgb * s.a;\n  return s;\n}\n";
                  goto LABEL_319;
                }

                v149 = "\nlowp vec4 colorMatrix4x4Bias(lowp vec4 s) {\n  s.rgb = s.rgb / max(s.a, .005);\n  s = s.r * color_matrix[0] + s.g * color_matrix[1]\n    + s.b * color_matrix[2] + s.a * color_matrix[3]\n    + color_matrix[4];\n  s.rgb = s.rgb * s.a;\n  return s;\n}\n";
                v150 = 243;
              }

              else
              {
                if (*v231 <= 0x37u)
                {
                  if (v148 == 53)
                  {
                    v149 = "\nlowp vec4 vibrantLightenSover(lowp vec4 S, lowp vec4 D) {\n  lowp float y = 1. - dot(D.rgb, vec3(.2125, .7154, .0721));\n  S = S * (y * y) * (y * y);\n  return D*(1. - S.a) + S;\n}\n\nlowp vec4 vibrantColorDodge(lowp vec4 S, lowp vec4 D) {\n  lowp vec4 R = D*(1. - S.a) + S*(1. - D.a);\n  R.rgb += mix(S.aaa, D.rgb*S.a*S.a/max(S.a - S.rgb, .005),\n               step(.005, S.a - S.rgb));\n  R.a += D.a*S.a;\n  R.rgb = clamp(R.rgb, 0.0, R.a);\n  return R;\n}\n\nlowp vec4 vibrantDark(lowp vec4 s0, lowp vec4 d0) {\n  if (reversed != 0.0)\n    return vibrantColorDodge(s0 * color_dodge,\n                               vibrantLightenSover(s0 * color_lighten, d0));\n  else\n    return vibrantLightenSover(s0 * color_lighten,\n                               vibrantColorDodge(s0 * color_dodge, d0));\n}\n";
                  }

                  else
                  {
                    if (v148 != 54)
                    {
                      goto LABEL_321;
                    }

                    v149 = "\nlowp vec4 vibrantDarkenSover(lowp vec4 S, lowp vec4 D) {\n  lowp float y = dot(D.rgb, vec3(.2125, .7154, .0721));\n  S = S * (y * y) * (y * y);\n  return D*(1. - S.a) + S;\n}\n\nlowp vec4 vibrantColorBurn(lowp vec4 S, lowp vec4 D) {\n  lowp vec4 R = D*(1. - S.a) + S*(1. - D.a);\n  lowp float dasa = D.a*S.a;\n  R.rgb += step(.005, S.rgb)\n           * (dasa - S.a*S.a*(D.a - D.rgb)/max(S.rgb, .005));\n  R.a += dasa;\n  R.rgb = clamp(R.rgb, 0.0, R.a);\n  return R;\n}\n\nlowp vec4 vibrantLight(lowp vec4 s0, lowp vec4 d0) {\n  if (reversed != 0.0)\n    return vibrantColorBurn(s0 * color_burn,\n                              vibrantDarkenSover(s0 * color_darken, d0));\n  else\n    return vibrantDarkenSover(s0 * color_darken,\n                              vibrantColorBurn(s0 * color_burn, d0));\n}\n";
                  }

                  v150 = 780;
                  goto LABEL_320;
                }

                if (v148 != 56)
                {
                  if (v148 != 57)
                  {
                    goto LABEL_321;
                  }

                  v149 = "\nlowp vec4 colorCurves(lowp vec4 s) {\n  lowp float inv_a = 1.0 / max(s.a, 0.005);\n  s.rgb *= inv_a;\n  lowp vec4 r = (((curves[0] * s) + curves[1]) * s + curves[2]) * s + curves[3];  r.a = clamp(r.a, 0., 1.);\n  return vec4 (r.rgb * r.a, r.a);\n}\n";
LABEL_319:
                  v150 = 244;
                  goto LABEL_320;
                }

                v149 = "\nlowp vec4 luminanceCurve(lowp vec4 s0, lowp vec4 p, lowp float a) {\n  lowp float x = dot(s0.rgb, vec3(.2125, .7154, .0721));\n  x = clamp((((p.x * x) + p.y) * x + p.z) * x + p.w, 0.0, 1.0);\n  return vec4(mix (s0.rgb, vec3 (x, x, x), a), s0.a);\n}\n";
                v150 = 246;
              }

LABEL_320:
              x_stream_write(&v248, v149, v150);
LABEL_321:
              v151 = v231[37];
              if (v151 == 51)
              {
                v152 = "\nlowp vec4 lightenSover(lowp vec4 S, lowp vec4 D) {\n  lowp float y = 1. - dot(D.rgb, vec3(.2125, .7154, .0721));\n  S = S * (y * y) * (y * y);\n  return D*(1. - S.a) + S;\n}\n";
                v153 = 171;
              }

              else
              {
                if (v151 != 50)
                {
LABEL_326:
                  X::Stream::printf(&v248, "\nvoid main(void) {\n");
                  if ((CA::OGL::GLContext::assemble_fragment_shader(CA::OGL::GLShader const*,int *)::initialized & 1) == 0)
                  {
                    v154 = getenv("CA_EMPTY_SHADERS");
                    if (v154)
                    {
                      CA::OGL::GLContext::assemble_fragment_shader(CA::OGL::GLShader const*,int *)::empty_shaders = atoi(v154) != 0;
                    }

                    CA::OGL::GLContext::assemble_fragment_shader(CA::OGL::GLShader const*,int *)::initialized = 1;
                  }

                  if (CA::OGL::GLContext::assemble_fragment_shader(CA::OGL::GLShader const*,int *)::empty_shaders == 1)
                  {
                    x_stream_write(&v248, "  gl_FragData[0] = vec4(0.0);\n", 0x1EuLL);
                    x_stream_write(&v248, "  return;\n}\n", 0xCuLL);
                    v34 = x_stream_finish(&v248);
                    v4 = v224;
                    v7 = v218;
                    goto LABEL_332;
                  }

                  if (v87 && (v231[94] & 1) != 0)
                  {
                    x_stream_write(&v248, "highp vec2 texcoord0_0 = vec2(gl_PointCoord.s, 1.0 - gl_PointCoord.t);\n", 0x47uLL);
                  }

                  if (v231[37] << 8 != 15872 || (v209 & 0x10) != 0 || (v90 & 0x40000000000) != 0)
                  {
                    v155 = *(v231 + 65);
                    if ((*(v231 + 64) & 0x80000000) != 0)
                    {
                      if (v155)
                      {
                        v157 = 0;
                        do
                        {
                          X::Stream::printf(&v248, "  lowp vec4 d%d = gl_LastFragData[%d];\n", v157, v157);
                          ++v157;
                        }

                        while (v157 < *(v231 + 65));
                      }
                    }

                    else if (v155)
                    {
                      v156 = 0;
                      do
                      {
                        X::Stream::printf(&v248, "  lowp vec4 d%d = texture%sProj(texture%d, texcoordD);\n", v156, *&buf[8 * v156 + 8 * *(v231 + 64)], v156 + *(v231 + 64));
                        ++v156;
                      }

                      while (v156 < *(v231 + 65));
                    }
                  }

                  v247[0] = 0;
                  v247[1] = 0;
                  v246 = 0;
                  if (!v87)
                  {
LABEL_489:
                    if ((v209 & 0xC0) != 0)
                    {
                      if ((v209 & 0x80) != 0)
                      {
                        x_stream_write(&v248, "  lowp vec4 s1 = color;\n", 0x18uLL);
                      }

                      x_stream_write(&v248, "  lowp vec4 s2;\n", 0x10uLL);
                      x_stream_write(&v248, "  {\n", 4uLL);
                      x_stream_write(&v248, "    lowp vec4 S = s1, D = d0;\n", 0x1EuLL);
                      CA::OGL::GLContext::inline_blend_function(&v248, a2[37]);
                      x_stream_write(&v248, "    s2 = R; s1 = d0;\n", 0x15uLL);
                      x_stream_write(&v248, "  }\n", 4uLL);
                    }

                    X::Stream::printf(&v248, "  gl_FragData[0] = %s;\n", CA::OGL::tex_fragment_shaders[*a2]);
                    if (a2[37] << 8 != 15872 && (v209 & 0x1C0) == 0)
                    {
                      v203 = *(a2 + 65);
                      if (v203)
                      {
                        for (n = 0; n != v203; ++n)
                        {
                          x_stream_write(&v248, "  {\n", 4uLL);
                          X::Stream::printf(&v248, "    lowp vec4 S = gl_FragData[%d];\n", n);
                          X::Stream::printf(&v248, "    lowp vec4 D = d%d;\n", n);
                          CA::OGL::GLContext::inline_blend_function(&v248, a2[37]);
                          X::Stream::printf(&v248, "    gl_FragData[%d] = R;\n", n);
                          x_stream_write(&v248, "  }\n", 4uLL);
                        }
                      }
                    }

                    if ((*(a2 + 66) & 0x80000000) == 0)
                    {
                      x_stream_write(&v248, "  {\n", 4uLL);
                      X::Stream::printf(&v248, "    mediump vec3 n = texture%sProj(texture%d, texcoordN).xyz;\n", *&buf[8 * *(a2 + 66)], *(a2 + 66));
                      x_stream_write(&v248, "    n = (n - .5) * noise_scale;\n", 0x20uLL);
                      x_stream_write(&v248, "    lowp vec3 c = gl_FragData[0].rgb + n*gl_FragData[0].a;\n", 0x3BuLL);
                      x_stream_write(&v248, "    gl_FragData[0].rgb = clamp(c, 0., gl_FragData[0].a);\n", 0x39uLL);
                      x_stream_write(&v248, "  }\n", 4uLL);
                    }

                    v4 = v224;
                    v7 = v218;
                    LOBYTE(v10) = v229;
                    if (a2[38])
                    {
                      X::Stream::printf(&v248, "gl_FragData[0] = %s;\n", *(&CA::OGL::destination_shaders + a2[38]));
                    }

                    x_stream_write(&v248, "}\n", 2uLL);
                    v34 = x_stream_finish(&v248);
LABEL_503:
                    v40 = 1;
                    if (!v34)
                    {
                      return 0;
                    }

                    goto LABEL_117;
                  }

                  v158 = 0;
                  v215 = 0;
                  v214 = 0;
                  v159 = v231 + 1;
                  do
                  {
                    v160 = v212[v158];
                    if (v160 > 2)
                    {
                      switch(v160)
                      {
                        case 3u:
                          v247[v158] = "tc";
                          v165 = *(&v257[-1] + v158);
                          if (v165 >= 1)
                          {
                            for (ii = 0; ii != v165; ++ii)
                            {
                              X::Stream::printf(&v248, "  mediump vec2 tc%d_%d = fract(texcoord%d_%d) * coord_arg.xy + coord_arg.zw;\n", v158, ii, v158, ii);
                            }
                          }

                          break;
                        case 4u:
                          if (!v158)
                          {
                            __assert_rtn("assemble_fragment_shader", "ogl-gl.cpp", 2205, "i > 0");
                          }

                          if (v159[v158 - 1] && v159[v158 - 1] != 42)
                          {
                            __assert_rtn("assemble_fragment_shader", "ogl-gl.cpp", 2207, "key->function.f.image_func[i - 1] == OGL_IMAGE_IDENTITY || key->function.f.image_func[i - 1] == OGL_IMAGE_DEST");
                          }

                          v247[v158] = "tlum";
                          v169 = *(&v257[-1] + v158);
                          if (v169 >= 1)
                          {
                            for (jj = 0; jj != v169; ++jj)
                            {
                              v171 = 115;
                              if (v159[v158 - 1])
                              {
                                v171 = 100;
                              }

                              X::Stream::printf(&v248, "  mediump vec2 tlum%d_%d = vec2(dot(%c%d.rgb, vec3(.2125, .7154, .0721)) * texcoord%d_%d.y + texcoord%d_%d.x, 0.5);\n", v158, jj, v171, v158 - 1, v158, jj, v158, jj);
                            }
                          }

                          break;
                        case 5u:
                          v247[v158] = "tc";
                          v163 = *(&v257[-1] + v158);
                          if (v163 >= 1)
                          {
                            for (kk = 0; kk != v163; ++kk)
                            {
                              X::Stream::printf(&v248, "  mediump vec2 tc%d_%d = clamp(texcoord%d_%d, coord_arg.xy, coord_arg.zw);\n", v158, kk, v158, kk);
                            }
                          }

                          break;
                      }
                    }

                    else if (v212[v158])
                    {
                      if (v160 == 1)
                      {
                        v247[v158] = "tc";
                        v167 = *(&v257[-1] + v158);
                        if (v167 >= 1)
                        {
                          for (mm = 0; mm != v167; ++mm)
                          {
                            X::Stream::printf(&v248, "  mediump vec2 tc%d_%d = radialCoord(texcoord%d_%d);\n", v158, mm, v158, mm);
                          }
                        }
                      }

                      else if (v160 == 2)
                      {
                        v247[v158] = "tc";
                        v161 = *(&v257[-1] + v158);
                        if (v161 >= 1)
                        {
                          for (nn = 0; nn != v161; ++nn)
                          {
                            X::Stream::printf(&v248, "  mediump vec2 tc%d_%d = conicCoord(texcoord%d_%d);\n", v158, nn, v158, nn);
                          }
                        }
                      }
                    }

                    else
                    {
                      v247[v158] = "texcoord";
                    }

                    v172 = *(v257 + v158);
                    v35 = v216;
                    if (v172 + v215 > v216)
                    {
                      break;
                    }

                    v213 = v159[v158];
                    if (v159[v158])
                    {
                      v173 = v214;
                    }

                    else
                    {
                      v173 = v158;
                    }

                    v244 = v173;
                    if (v172 >= 1)
                    {
                      v174 = 0;
                      v240 = 1 << v158;
                      v235 = v158;
                      v237 = v254[v158];
                      if (v213)
                      {
                        v175 = 116;
                      }

                      else
                      {
                        v175 = 115;
                      }

                      v176 = &buf[8 * v215];
                      v222 = v158;
                      v177 = v158;
                      do
                      {
                        v178 = v244 + v174;
                        if ((v240 & a2[39]) != 0)
                        {
                          X::Stream::printf(&v248, "  %s vec4 %c%d;\n", v237, v175, v244 + v174);
                          x_stream_write(&v248, "  {\n", 4uLL);
                          x_stream_write(&v248, "    highp vec4 f;\n", 0x12uLL);
                          v179 = v247[v158];
                          if (*&v231[2 * v215 + 8 + 2 * v174] == 3553)
                          {
                            X::Stream::printf(&v248, "    f.xy = fract(%s%d_0 / texmat%d.xy);\n");
                          }

                          else
                          {
                            X::Stream::printf(&v248, "    f.xy = fract(%s%d_0);\n");
                          }

                          x_stream_write(&v248, "    f.zw = vec2(1.) - f.xy;\n", 0x1CuLL);
                          x_stream_write(&v248, "    f = f.xzxz * f.yyww;\n", 0x19uLL);
                          v180 = *&v176[8 * v174];
                          X::Stream::printf(&v248, "    %c%d = texture%s (texture%d, %s%d_%d) * f.w;\n", v175, v178, v180, v215 + v174, v179, v177, 0);
                          X::Stream::printf(&v248, "    %c%d = texture%s (texture%d, %s%d_%d) * f.z + %c%d;\n", v175, v178, v180, v215 + v174, v179, v177, 1, v175, v178);
                          X::Stream::printf(&v248, "    %c%d = texture%s (texture%d, %s%d_%d) * f.y + %c%d;\n", v175, v178, v180, v215 + v174, v179, v177, 2, v175, v178);
                          X::Stream::printf(&v248, "    %c%d = texture%s (texture%d, %s%d_%d) * f.x + %c%d;\n", v175, v178, v180, v215 + v174, v179, v177, 3, v175, v178);
                          x_stream_write(&v248, "  }\n", 4uLL);
                          v5 = v220;
                          a2 = v231;
                          v158 = v235;
                        }

                        else
                        {
                          X::Stream::printf(&v248, "  %s vec4 %c%d = texture%s(texture%d, %s%d_%d);\n", v237, v175, v244 + v174, *&v176[8 * v174], v215 + v174, v247[v158], v222, v174);
                        }

                        ++v174;
                      }

                      while (v172 != v174);
                    }

                    *(&v247[-1] + v158) = v214;
                    v181 = v213 ? v172 : 0;
                    v214 += v181;
                    v215 += *(&v255 + v158++);
                    v87 = v233;
                    v35 = v216;
                    v159 = v231 + 1;
                  }

                  while (v158 != v233);
                  v182 = 0;
                  v210 = a2 + 280;
                  while (1)
                  {
                    switch(v159[v182])
                    {
                      case 1u:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = vec4(t%d.rgb, 1.);\n");
                        break;
                      case 2u:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = t%d.yxwz;\n");
                        break;
                      case 3u:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = vec4(t%d.yxw, 1.);\n");
                        break;
                      case 4u:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = t%d.zyxw;\n");
                        break;
                      case 5u:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = vec4(t%d.zyx, 1.);\n");
                        break;
                      case 6u:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = t%d.wzyx;\n");
                        break;
                      case 7u:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = vec4(t%d.wzy, 1.);\n");
                        break;
                      case 8u:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = vec4(0., 0., 0., t%d.a);\n");
                        break;
                      case 9u:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = squareImage(%s%d_0);\n");
                        break;
                      case 0xAu:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = circleImage(%s%d_0);\n");
                        break;
                      case 0xBu:
                      case 0xCu:
                      case 0xDu:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = supercircleImage(%s%d_0);\n");
                        break;
                      case 0x17u:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = vec4(0.);\n");
                        break;
                      case 0x18u:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = vec4(t%d.r);\n");
                        break;
                      case 0x19u:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = vec4(t%d.a);\n");
                        break;
                      case 0x1Au:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = vec4(clamp(ycbcr_matrix%d * vec3(t%d.r + ycbcr_bias%d.x, t%d.rg + ycbcr_bias%d.yz), 0., 1.), 1.);\n");
                        break;
                      case 0x1Bu:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = t%d*vec4(2.0) + vec4(-0.75);\n  s%d = vec4(s%d.zyx, 1.0);\n");
                        break;
                      case 0x1Cu:
                      case 0x1Du:
                      case 0x1Eu:
                      case 0x1Fu:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = renderImage(t%d.r);\n");
                        break;
                      case 0x20u:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = vec4(1.) - t%d;\n");
                        break;
                      case 0x22u:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = vec4(t%d.rrr, 1.h);\n");
                        break;
                      case 0x23u:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = t%d.rrrg;\n");
                        break;
                      case 0x25u:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = vec4(1.0);\n");
                        break;
                      case 0x26u:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = t%d.gggg;\n");
                        break;
                      case 0x27u:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = t%d.bbbb;\n");
                        break;
                      case 0x2Au:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = d0;\n");
                        break;
                      case 0x2Bu:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = vec4(clamp(ycbcr_matrix%d * vec3(t%d.yzw + ycbcr_bias%d.xyz), 0., 1.)*t%d.x , t%d.x);\n");
                        break;
                      case 0x2Cu:
                        X::Stream::printf(&v248, "  lowp vec4 s%d = vec4(clamp(ycbcr_matrix%d * vec3(t%d.g + ycbcr_bias%d.x, t%d.rb + ycbcr_bias%d.yz), 0., 1.), 1.);\n");
                        break;
                      default:
                        break;
                    }

                    v183 = &v210[32 * v182];
                    v184 = *v183;
                    if (!*v183)
                    {
                      goto LABEL_488;
                    }

                    x_stream_write(&v248, "  {\n", 4uLL);
                    v245 = &v210[32 * v182];
                    if (*(v183 + 4) == 5)
                    {
                      break;
                    }

                    X::Stream::printf(&v248, "    lowp vec3 c = s%d.rgb, t;\n", v182);
                    v185 = "    c = c / max(s%d.a, .005);\n";
                    if ((v184 & 0x80000000) == 0)
                    {
                      goto LABEL_434;
                    }

LABEL_435:
                    v219 = v182;
                    v211 = v184;
                    v186 = v184 & 0x7FFFFFFF;
                    if ((v184 & 0x7FFFFFFF) != 0)
                    {
                      v187 = 0;
                      v241 = *(v183 + 5);
                      v188 = v182;
                      do
                      {
                        v189 = v186 & 0x1F;
                        if ((v186 & 0x1F) > 7 || v189 == 1)
                        {
                          v241 = *(v245 + 6);
                        }

                        if ((v186 & 0x1F) > 5)
                        {
                          if ((v186 & 0x1F) > 7)
                          {
                            switch(v189)
                            {
                              case 8:
                                X::Stream::printf(&v248, "    mediump vec2 c_st = vec2(c.r * colorP%d[%d].x + colorP%d[%d].y, 0.5);\n", v219, v187, v219, v187);
                                X::Stream::printf(&v248, "    c = texture2D(texture%d, c_st).rgb;\n");
                                break;
                              case 9:
                                v201 = v245[19];
                                if ((*(*v224 + 232))(v224, 16))
                                {
                                  X::Stream::printf(&v248, "    c = c * colorP%d[%d].x + colorP%d[%d].y;\n", v219, v187, v219, v187);
                                  X::Stream::printf(&v248, "    c = texture3D(texture%d, c).rgb;\n");
                                }

                                else
                                {
                                  v202 = v219;
                                  X::Stream::printf(&v248, "    c.b = c.b * colorP%d[%d].z;\n", v219, v187);
                                  X::Stream::printf(&v248, "    lowp float b_mix = fract(c.b);\n");
                                  X::Stream::printf(&v248, "    c.b = floor(c.b) * colorP%d[%d].w;\n", v219, v187);
                                  X::Stream::printf(&v248, "    mediump vec2 c_st = vec2(c.r, c.g);\n");
                                  X::Stream::printf(&v248, "    c_st.r = c_st.r * colorP%d[%d].x + colorP%d[%d].y;\n", v202, v187, v202, v187);
                                  X::Stream::printf(&v248, "    c_st.g = c_st.g * colorP%d[%d].x * colorP%d[%d].w + colorP%d[%d].y * colorP%d[%d].w + c.b;\n", v202, v187, v202, v187, v202, v187, v202, v187);
                                  X::Stream::printf(&v248, "    lowp vec3 c0 = texture2D(texture%d, c_st).rgb;\n", v201);
                                  X::Stream::printf(&v248, "    lowp vec3 c1 = texture2D(texture%d, c_st + vec2(0., colorP%d[%d].w)).rgb;\n", v201, v219, v187);
                                  X::Stream::printf(&v248, "    c = mix(c0, c1, b_mix);\n", v208);
                                }

                                break;
                              case 0xA:
                                v192 = v245[19];
                                X::Stream::printf(&v248, "    mediump vec3 c_stp = c.rgb;\n");
                                v193 = v219;
                                X::Stream::printf(&v248, "    c.a = c.a * colorP%d[%d].z;\n", v219, v187);
                                X::Stream::printf(&v248, "    lowp float a_mix = fract(c.a);\n");
                                X::Stream::printf(&v248, "    c.a = floor(c.a) * colorP%d[%d].w;\n", v219, v187);
                                X::Stream::printf(&v248, "    c_stp.r = c_stp.r * colorP%d[%d].x + colorP%d[%d].y;\n", v193, v187, v193, v187);
                                X::Stream::printf(&v248, "    c_stp.g = c_stp.g * colorP%d[%d].x + colorP%d[%d].y;\n", v193, v187, v193, v187);
                                X::Stream::printf(&v248, "    c_stp.b = c_stp.b * colorP%d[%d].x * colorP%d[%d].w + colorP%d[%d].y * colorP%d[%d].w + c.a;\n", v193, v187, v193, v187, v193, v187, v193, v187);
                                X::Stream::printf(&v248, "    lowp vec3 c0 = texture3D(texture%d, c_stp).rgb;\n", v192);
                                X::Stream::printf(&v248, "    lowp vec3 c1 = texture3D(texture%d, c_stp + vec3(0., 0., colorP%d[%d].w)).rgb;\n", v192, v219, v187);
                                X::Stream::printf(&v248, "    c = vec4(mix(c0, c1, a_mix), 1.);\n", v206);
                                break;
                            }

                            goto LABEL_483;
                          }

                          if (v189 != 6)
                          {
                            v194 = v241 - 1;
                            if (v241 >= 1)
                            {
                              if (v194 >= 3)
                              {
                                v194 = 3;
                              }

                              v195 = v194 + 1;
                              v196 = "xyzw";
                              do
                              {
                                v197 = *v196++;
                                X::Stream::printf(&v248, "    c.%c = texture2D(texture%d, vec2(c.%c*colorP%d[%d].%c, colorP%d[%d].%c)).r;\n", v197, v245[18], v197, v188, v187, v197, v188, v187 + 1, v197);
                                --v195;
                              }

                              while (v195);
                            }

                            goto LABEL_483;
                          }

                          X::Stream::printf(&v248, "    t = abs(c);\n");
                          v198 = v219;
                          X::Stream::printf(&v248, "    t.r = t.r < colorP%d[%d].r ? colorP%d[%d].r * t.r + colorP%d[%d].r : pow (colorP%d[%d].r * t.r + colorP%d[%d].r, colorP%d[%d].r) + colorP%d[%d].r;\n", v219, v187 + 4, v219, v187 + 3, v219, v187 + 6, v219, v187 + 1, v219, v187 + 2, v219, v187, v219, v187 + 5);
                          X::Stream::printf(&v248, "    t.g = t.g < colorP%d[%d].g ? colorP%d[%d].g * t.g + colorP%d[%d].g : pow (colorP%d[%d].g * t.g + colorP%d[%d].g, colorP%d[%d].g) + colorP%d[%d].g;\n", v198, v187 + 4, v198, v187 + 3, v198, v187 + 6, v198, v187 + 1, v198, v187 + 2, v198, v187, v198, v187 + 5);
                          X::Stream::printf(&v248, "    t.b = t.b < colorP%d[%d].b ? colorP%d[%d].b * t.b + colorP%d[%d].b : pow (colorP%d[%d].b * t.b + colorP%d[%d].b, colorP%d[%d].b) + colorP%d[%d].b;\n", v198, v187 + 4, v198, v187 + 3, v198, v187 + 6, v198, v187 + 1, v198, v187 + 2, v198, v187, v198, v187 + 5);
                          if (v241 == 4)
                          {
                            X::Stream::printf(&v248, "    t.a = t.a < colorP%d[%d].a ? colorP%d[%d].a * t.a + colorP%d[%d].a : pow (colorP%d[%d].a * t.a + colorP%d[%d].a, colorP%d[%d].a) + colorP%d[%d].a;\n", v219, v187 + 4, v219, v187 + 3, v219, v187 + 6, v219, v187 + 1, v219, v187 + 2, v219, v187, v219, v187 + 5);
                            X::Stream::printf(&v248, "    c.a = c.a < 0.0 ? t.a * -1.0 : t.a;");
                          }

                          X::Stream::printf(&v248, "    c.r = c.r < 0.0 ? t.r * -1.0: t.r; c.g = c.g < 0.0 ? t.g * -1.0 : t.g; c.b = c.b < 0.0 ? t.b * -1.0 : t.b;\n");
                          v5 = v220;
                        }

                        else
                        {
                          if ((v186 & 0x1F) <= 2)
                          {
                            if (v189 == 1)
                            {
                              X::Stream::printf(&v248, "    c = c.r * colorP%d[%d].rgb + c.g * colorP%d[%d].rgb + c.b * colorP%d[%d].rgb + colorP%d[%d].rgb;\n", v219);
                            }

                            else if (v189 == 2)
                            {
                              X::Stream::printf(&v248, "    t = abs(c);\n");
                              if (v241 > 3)
                              {
                                X::Stream::printf(&v248, "    t = pow(t, colorP%d[%d].rgba);\n", v219, v187);
                                X::Stream::printf(&v248, "    c.a = c.a < 0.0 ? t.a * -1.0 : t.a;");
                              }

                              else
                              {
                                X::Stream::printf(&v248, "    t = pow(t, colorP%d[%d].rgb);\n");
                              }

                              X::Stream::printf(&v248, "    c.r = c.r < 0.0 ? t.r * -1.0 : t.r; c.g = c.g < 0.0 ? t.g * -1.0 : t.g; c.b = c.b < 0.0 ? t.b * -1.0 : t.b;\n", v207);
                            }

                            goto LABEL_483;
                          }

                          if (v189 == 3)
                          {
                            X::Stream::printf(&v248, "    t = abs(c);\n");
                            v199 = v219;
                            X::Stream::printf(&v248, "    t.r = t.r < -colorP%d[%d].r / colorP%d[%d].r ? 0.0 : pow (colorP%d[%d].r * t.r + colorP%d[%d].r, colorP%d[%d].r)\n", v219, v187 + 2, v219, v187 + 1, v219, v187 + 1, v219, v187 + 2, v219, v187);
                            X::Stream::printf(&v248, "    t.g = t.g < -colorP%d[%d].g / colorP%d[%d].g ? 0.0 : pow (colorP%d[%d].g * t.g + colorP%d[%d].g, colorP%d[%d].g)\n", v199, v187 + 2, v199, v187 + 1, v199, v187 + 1, v199, v187 + 2, v199, v187);
                            X::Stream::printf(&v248, "    t.b = t.b < -colorP%d[%d].b / colorP%d[%d].b ? 0.0 : pow (colorP%d[%d].b * t.b + colorP%d[%d].b, colorP%d[%d].b)\n", v199, v187 + 2, v199, v187 + 1, v199, v187 + 1, v199, v187 + 2, v199, v187);
                            if (v241 == 4)
                            {
                              X::Stream::printf(&v248, "    t.a = t.a < -colorP%d[%d].a / colorP%d[%d].a ? 0.0 : pow (colorP%d[%d].a * t.a + colorP%d[%d].a, colorP%d[%d].a)\n", v219, v187 + 2, v219, v187 + 1, v219, v187 + 1, v219, v187 + 2, v219, v187);
                              X::Stream::printf(&v248, "    c.a = c.a < 0.0 ? t.a * -1.0 : t.a;");
                            }

                            X::Stream::printf(&v248, "    c.r = c.r < 0.0 ? t.r * -1.0: t.r; c.g = c.g < 0.0 ? t.g * -1.0 : t.g; c.b = c.b < 0.0 ? t.b * -1.0 : t.b;\n");
                            goto LABEL_483;
                          }

                          if (v189 == 4)
                          {
                            X::Stream::printf(&v248, "    t = abs(c);\n");
                            v200 = v219;
                            X::Stream::printf(&v248, "    t.r = t.r < -colorP%d[%d].r / colorP%d[%d].r ? colorP%d[%d].r : pow (colorP%d[%d].r * t.r + colorP%d[%d].r, colorP%d[%d].r) + colorP%d[%d].r\n", v219, v187 + 2, v219, v187 + 1, v219, v187 + 3, v219, v187 + 1, v219, v187 + 2, v219, v187, v219, v187 + 3);
                            X::Stream::printf(&v248, "    t.g = t.g < -colorP%d[%d].g / colorP%d[%d].g ? colorP%d[%d].g : pow (colorP%d[%d].g * t.g + colorP%d[%d].g, colorP%d[%d].g) + colorP%d[%d].g\n", v200, v187 + 2, v200, v187 + 1, v200, v187 + 3, v200, v187 + 1, v200, v187 + 2, v200, v187, v200, v187 + 3);
                            X::Stream::printf(&v248, "    t.b = t.b < -colorP%d[%d].b / colorP%d[%d].b ? colorP%d[%d].b : pow (colorP%d[%d].b * t.b + colorP%d[%d].b, colorP%d[%d].b) + colorP%d[%d].b\n", v200, v187 + 2, v200, v187 + 1, v200, v187 + 3, v200, v187 + 1, v200, v187 + 2, v200, v187, v200, v187 + 3);
                            if (v241 == 4)
                            {
                              X::Stream::printf(&v248, "    t.a = t.a < -colorP%d[%d].a / colorP%d[%d].a ? colorP%d[%d].a : pow (colorP%d[%d].a * t.a + colorP%d[%d].a, colorP%d[%d].a) + colorP%d[%d].a\n", v219, v187 + 2, v219, v187 + 1, v219, v187 + 3, v219, v187 + 1, v219, v187 + 2, v219, v187, v219, v187 + 3);
                              X::Stream::printf(&v248, "    c.a = c.a < 0.0 ? t.a * -1.0 : t.a;");
                            }

                            X::Stream::printf(&v248, "    c.r = c.r < 0.0 ? t.r * -1.0: t.r; c.g = c.g < 0.0 ? t.g * -1.0 : t.g; c.b = c.b < 0.0 ? t.b * -1.0 : t.b;\n");
                            a2 = v231;
                            goto LABEL_483;
                          }

                          X::Stream::printf(&v248, "    t = abs(c);\n");
                          v191 = v219;
                          X::Stream::printf(&v248, "    t.r = t.r < colorP%d[%d].r ? colorP%d[%d].r * t.r : pow(colorP%d[%d].r * t.r + colorP%d[%d].r,colorP%d[%d].r);\n", v219, v187 + 4, v219, v187 + 3, v219, v187 + 1, v219, v187 + 2, v219, v187);
                          X::Stream::printf(&v248, "    t.g = t.g < colorP%d[%d].g ? colorP%d[%d].g * t.g : pow(colorP%d[%d].g * t.g + colorP%d[%d].g,colorP%d[%d].g);\n", v191, v187 + 4, v191, v187 + 3, v191, v187 + 1, v191, v187 + 2, v191, v187);
                          X::Stream::printf(&v248, "    t.b = t.b < colorP%d[%d].b ? colorP%d[%d].b * t.b : pow(colorP%d[%d].b * t.b + colorP%d[%d].b,colorP%d[%d].b);\n", v191, v187 + 4, v191, v187 + 3, v191, v187 + 1, v191, v187 + 2, v191, v187);
                          if (v241 == 4)
                          {
                            X::Stream::printf(&v248, "    t.a = t.a < colorP%d[%d].a ? colorP%d[%d].a * t.a : pow(colorP%d[%d].a * t.a + colorP%d[%d].a,colorP%d[%d].a);\n", v219, v187 + 4, v219, v187 + 3, v219, v187 + 1, v219, v187 + 2, v219, v187);
                            X::Stream::printf(&v248, "    c.a = c.a < 0.0 ? t.a * -1.0 : t.a;");
                          }

                          X::Stream::printf(&v248, "    c.r = c.r < 0.0 ? t.r * -1.0: t.r; c.g = c.g < 0.0 ? t.g * -1.0 : t.g; c.b = c.b < 0.0 ? t.b * -1.0 : t.b;\n");
                        }

                        a2 = v231;
                        v188 = v219;
LABEL_483:
                        v187 += CA::ColorProgram::kOpcodeParamCount[v189];
                        v134 = v186 > 0x1F;
                        v186 >>= 5;
                      }

                      while (v134);
                    }

                    v159 = v231 + 1;
                    v182 = v219;
                    if (v211 < 0)
                    {
                      X::Stream::printf(&v248, "    s%d = vec4(c.rgb, 1.);\n");
                    }

                    else
                    {
                      X::Stream::printf(&v248, "    s%d.rgb = c * s%d.a;\n");
                    }

                    v35 = v216;
                    v87 = v233;
                    x_stream_write(&v248, "  }\n", 4uLL);
LABEL_488:
                    if (++v182 == v87)
                    {
                      goto LABEL_489;
                    }
                  }

                  v185 = "    lowp vec4 c = s%d, t;\n";
                  if ((v184 & 0x80000000) == 0)
                  {
                    __assert_rtn("inline_color_shader", "ogl-gl.cpp", 1603, "opaque && 4DLUT must be opaque!");
                  }

LABEL_434:
                  X::Stream::printf(&v248, v185, v182);
                  goto LABEL_435;
                }

                v152 = "\nlowp vec4 darkenSover(lowp vec4 S, lowp vec4 D) {\n  lowp float y = dot(D.rgb, vec3(.2125, .7154, .0721));\n  S = S * (y * y) * (y * y);\n  return D*(1. - S.a) + S;\n}\n";
                v153 = 165;
              }

              x_stream_write(&v248, v152, v153);
              goto LABEL_326;
            }

LABEL_298:
            x_stream_write(&v248, "\nlowp vec3 colorSort(lowp vec3 c) {\n  lowp vec3 cs = (c.r > c.g) ? c : c.grb;\n  cs = (cs.g > cs.b) ? cs : cs.rbg;\n  cs = (cs.r > cs.g) ? cs : cs.grb;\n  return cs;\n}\n\nlowp float lum(lowp vec3 c) {\n  return dot(c, vec3(0.3, 0.59, 0.11));\n}\n\nlowp vec3 clipColor(lowp vec3 c) {\n  lowp float l = lum(c);\n  lowp vec3 cs = colorSort(c);\n  c = cs.b < 0.0 ? l + (c - l) * (l / (l - cs.b)) : c;\n  c = cs.r > 1.0 ? l + (c - l) * ((1.0 - l) / (cs.r - l)) : c;\n  return c;\n}\n\nlowp vec3 setLum(lowp vec3 c, lowp float l) {\n  lowp float d = l - lum(c);\n  return clipColor(c + d);\n}\n\nlowp float sat(lowp vec3 c) {\n  lowp vec3 cs = colorSort(c);\n  return cs.r - cs.b;\n}\n\nlowp vec3 setSat(lowp vec3 c, lowp float s) {\n  lowp vec3 cs = colorSort(c);\n  lowp vec3 fmax = cs.r == c.r ? vec3(1.,0.,0.) :    cs.r == c.g ? vec3(0.,1.,0.) : vec3(0.,0.,1.);\n  c = c - fmax * c;\n  lowp vec3 fmid = cs.g == c.r ? vec3(1.,0.,0.) :    cs.g == c.g ? vec3(0.,1.,0.) : vec3(0.,0.,1.);\n  c = cs.r > cs.b ? fmax * s + fmid * ((cs.g - cs.b) * s / (cs.r - cs.b)) :    vec3(0.0);\n  return c;\n}\n", 0x41FuLL);
            goto LABEL_299;
          }

          X::Stream::printf(&v248, "uniform lowp vec4 color_burn;\n");
          X::Stream::printf(&v248, "uniform lowp vec4 color_darken;\n");
        }

        v138 = "uniform lowp float reversed;\n";
LABEL_270:
        X::Stream::printf(&v248, v138);
        goto LABEL_271;
      }

      v5 = v220;
      if (v137 != 24)
      {
        if (v137 != 25)
        {
          goto LABEL_271;
        }

        goto LABEL_265;
      }
    }

    X::Stream::printf(&v248, "uniform lowp vec3 color_matrix[4];\n");
    goto LABEL_271;
  }

  v34 = CA::OGL::tex_fragment_shaders[v6];
  if ((v6 - 48) >= 3)
  {
    v35 = 1;
  }

  else
  {
    v35 = 2;
  }

  if (*(a2 + 4) == 3553)
  {
    v36 = strdup(CA::OGL::tex_fragment_shaders[v6]);
    if (v36)
    {
      v34 = v36;
      while (1)
      {
        v37 = strstr(v36, "2DRect");
        if (!v37)
        {
          break;
        }

        v38 = v37;
        v39 = v37[6];
        v36 = v37 + 6;
        if ((v39 | 8) == 0x28)
        {
          v38[2] = 32;
        }

        *(v38 + 3) = 8224;
        v38[5] = 32;
      }

      v40 = 1;
      v4 = v224;
      goto LABEL_117;
    }

    return 0;
  }

  v40 = 0;
  if (!v34)
  {
    return 0;
  }

LABEL_117:
  v236 = v40;
  v228 = v10;
  v41 = (v5[595])(*v5, 35632);
  v248 = 0;
  v249 = 0;
  v248 = (*(*v4 + 1224))(v4);
  v249 = v34;
  if (v225)
  {
    if (x_log_get_CADebug(void)::once != -1)
    {
      dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
    }

    v42 = x_log_get_CADebug(void)::log;
    if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_INFO))
    {
      v43 = *a2;
      v44 = *(a2 + 1);
      *buf = 67109890;
      *&buf[4] = v43;
      *&buf[8] = 1024;
      *&buf[10] = v44;
      *&buf[14] = 2080;
      *&v252[0] = v248;
      WORD4(v252[0]) = 2080;
      *(v252 + 10) = v249;
      _os_log_impl(&dword_183AA6000, v42, OS_LOG_TYPE_INFO, "%08x %08x fragment shader:\n---\n%s%s---\n", buf, 0x22u);
    }
  }

  v239 = v34;
  v45 = v41;
  (v5[596])(*v5, v41, 2, &v248, 0);
  (v5[597])(*v5, v41);
  v46 = (v5[598])(*v5);
  v47 = v46;
  (v5[599])(*v5, v46, v230);
  (v5[599])(*v5, v46, v45);
  for (i1 = 0; i1 != 5; ++i1)
  {
    (v5[631])(*v5, v46, i1, CA::OGL::vertex_attribute_names[i1]);
  }

  (v5[600])(*v5, v46);
  if ((v228 & 1) == 0)
  {
    (v5[592])(*v5, v230);
  }

  (v5[592])(*v5, v45);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v49 = malloc_type_zone_malloc(malloc_zone, 0x1A0uLL, 0x1000040429CF359uLL);
  v50 = v49;
  *v49 = *v231;
  *(v49 + 1) = *(v231 + 1);
  v51 = *(v231 + 18);
  v49[37] = HIBYTE(v51);
  *(v49 + 18) = v51 & 0xFF00 | *(v231 + 18) & 1;
  *(v49 + 66) = *(v231 + 66);
  if (a3 < 1)
  {
    goto LABEL_132;
  }

  v52 = (v231 + 8);
  v53 = v49 + 8;
  v54 = a3;
  do
  {
    v55 = *v52++;
    *v53++ = v55;
    --v54;
  }

  while (v54);
  if (a3 <= 12)
  {
LABEL_132:
    bzero(&v49[2 * a3 + 8], 2 * (12 - a3) + 2);
  }

  v50[34] = a3;
  v50[35] = v7;
  v56 = *(v231 + 280);
  v57 = *(v231 + 296);
  v58 = *(v231 + 328);
  *(v50 + 312) = *(v231 + 312);
  *(v50 + 328) = v58;
  *(v50 + 280) = v56;
  *(v50 + 296) = v57;
  *(v50 + 14) = v46;
  *(v50 + 60) = 0u;
  *(v50 + 76) = 0u;
  v50[94] = v231[94];
  *(v50 + 102) = 0;
  *(v50 + 7) = 0u;
  *(v50 + 8) = 0u;
  *(v50 + 6) = 0u;
  *(v50 + 220) = 0u;
  *(v50 + 204) = 0u;
  *(v50 + 188) = 0u;
  *(v50 + 172) = 0u;
  (v5[601])(*v5, v46);
  if (v35 >= 1)
  {
    v59 = 0;
    do
    {
      *buf = 0u;
      v252[0] = 0u;
      snprintf(buf, 0x20uLL, "texture%d", v59);
      v60 = (v5[626])(*v5, v46, buf);
      (v5[607])(*v5, v60, v59);
      v59 = (v59 + 1);
    }

    while (v35 != v59);
  }

  *(v50 + 32) = *(v231 + 32);
  v50[38] = v231[38];
  *(v50 + 59) = (v5[626])(*v5, v46, "vertex_matrix");
  *(v50 + 60) = (v5[626])(*v5, v46, "blend_color0");
  *(v50 + 61) = (v5[626])(*v5, v46, "blend_color1");
  if (!v7)
  {
    goto LABEL_510;
  }

  v61 = v50 + 248;
  v62 = v7;
  v63 = CA::OGL::GLContext::create_shader(CA::OGL::ContextState const*,CA::OGL::GLShader const*,int)::names;
  v64 = v62;
  do
  {
    v65 = *v63++;
    *v61++ = (v5[626])(*v5, v46, v65);
    --v62;
  }

  while (v62);
  v7 = v64;
  if (v64 == 1)
  {
LABEL_510:
    do
    {
      v66 = v7;
      *&v50[4 * v7 + 248] = -1;
      v7 = 1;
    }

    while (!v66);
  }

  if ((*(v50 + 64) & 0x80000000) != 0)
  {
    v67 = -1;
  }

  else
  {
    v67 = (v5[626])(*v5, v46, "texmatD");
  }

  *(v50 + 68) = v67;
  if ((*(v50 + 66) & 0x80000000) != 0)
  {
    v68 = -1;
    *(v50 + 67) = -1;
  }

  else
  {
    *(v50 + 67) = (v5[626])(*v5, v46, "noise_scale");
    v68 = (v5[626])(*v5, v46, "texmatW");
  }

  v69 = 0;
  *(v50 + 69) = v68;
  v70 = xmmword_183E214B0;
  *(v50 + 6) = xmmword_183E214B0;
  *(v50 + 7) = xmmword_183E214B0;
  *(v50 + 8) = xmmword_183E214B0;
  v71 = 1;
  do
  {
    v72 = v71;
    v73 = &v50[32 * v69 + 280];
    *(v73 + 20) = 0;
    if (*(v73 + 14))
    {
      v74 = (v5[626])(*v5, v46, CA::OGL::GLContext::create_shader(CA::OGL::ContextState const*,CA::OGL::GLShader const*,int)::names[v69]);
      v70 = xmmword_183E214B0;
    }

    else
    {
      v74 = -1;
    }

    v71 = 0;
    *(v73 + 24) = v74;
    v69 = 1;
  }

  while ((v72 & 1) != 0);
  v75 = 0;
  v76 = v50 + 344;
  v77 = v50 + 348;
  v78 = v50 + 380;
  v79 = v50 + 388;
  v234 = v50;
  v80 = v50 + 396;
  v81 = 1;
  do
  {
    v82 = v81;
    v76[v75] = 0;
    *&v77[16 * v75] = v70;
    *&v78[4 * v75] = (v5[626])(*v5, v47, CA::OGL::GLContext::create_shader(CA::OGL::ContextState const*,CA::OGL::GLShader const*,int)::ycbcr_names[v75]);
    *&v79[4 * v75] = (v5[626])(*v5, v47, CA::OGL::GLContext::create_shader(CA::OGL::ContextState const*,CA::OGL::GLShader const*,int)::ycbcr_bias_names[v75]);
    v83 = (v5[626])(*v5, v47, CA::OGL::GLContext::create_shader(CA::OGL::ContextState const*,CA::OGL::GLShader const*,int)::chroma_names[v75]);
    v70 = xmmword_183E214B0;
    v81 = 0;
    *&v80[4 * v75] = v83;
    v75 = 1;
  }

  while ((v82 & 1) != 0);
  v84 = v234;
  *(v234 + 101) = (v5[626])(*v5, v47, "render_state", xmmword_183E214B0);
  *(v234 + 46) = 0;
  v234[168] = 0;
  switch(v226)
  {
    case 18:
    case 23:
      *(v234 + 36) = (v5[626])(*v5, v47, "color_matrix");
      v234[168] = 1;
      v102 = 3;
      goto LABEL_176;
    case 19:
    case 24:
      *(v234 + 36) = (v5[626])(*v5, v47, "color_matrix");
      v234[168] = 1;
      v234[160] = 3;
      v102 = 4;
      goto LABEL_190;
    case 21:
    case 25:
      *(v234 + 36) = (v5[626])(*v5, v47, "color_matrix");
      v234[168] = 1;
      v234[160] = 4;
      v102 = 5;
      goto LABEL_190;
    case 27:
      *(v234 + 36) = (v5[626])(*v5, v47, "offset");
      *(v234 + 37) = (v5[626])(*v5, v47, "weight");
      v234[168] = 2;
      *(v234 + 80) = 1026;
      v106 = 260;
      goto LABEL_187;
    case 28:
      *(v234 + 36) = (v5[626])(*v5, v47, "offset");
      *(v234 + 37) = (v5[626])(*v5, v47, "weight");
      v234[168] = 2;
      v103 = 770;
      goto LABEL_184;
    case 30:
      *(v234 + 36) = (v5[626])(*v5, v47, "axis");
      v102 = 1;
      v234[168] = 1;
      v107 = 2;
      goto LABEL_189;
    case 31:
    case 32:
      *(v234 + 36) = (v5[626])(*v5, v47, "offset");
      *(v234 + 37) = (v5[626])(*v5, v47, "weight");
      v234[168] = 2;
      v103 = 1026;
LABEL_184:
      *(v234 + 80) = v103;
      v106 = 259;
      goto LABEL_187;
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
      *(v234 + 36) = (v5[626])(*v5, v47, "offset");
      *(v234 + 37) = (v5[626])(*v5, v47, "weight");
      *(v234 + 38) = (v5[626])(*v5, v47, "divide");
      v234[168] = 3;
      v234[160] = 2;
      v234[164] = 7;
      *(v234 + 161) = 260;
      v85 = 258;
      goto LABEL_180;
    case 47:
      *(v234 + 36) = (v5[626])(*v5, v47, "minmax");
      *(v234 + 37) = (v5[626])(*v5, v47, "bgcolor");
      v234[168] = 2;
      *(v234 + 80) = 1026;
      v106 = 257;
LABEL_187:
      *(v234 + 82) = v106;
      break;
    case 48:
      *(v234 + 36) = (v5[626])(*v5, v47, "minmax");
      *(v234 + 37) = (v5[626])(*v5, v47, "bgcolor");
      *(v234 + 38) = (v5[626])(*v5, v47, "map");
      v234[168] = 3;
      v234[160] = 2;
      v234[164] = 1;
      v104 = 1028;
      goto LABEL_179;
    case 49:
      *(v234 + 36) = (v5[626])(*v5, v47, "minmax_dir");
      *(v234 + 37) = (v5[626])(*v5, v47, "bgcolor");
      *(v234 + 38) = (v5[626])(*v5, v47, "map");
      *(v234 + 39) = (v5[626])(*v5, v47, "args");
      v234[168] = 4;
      *(v234 + 20) = 0x101010104040404;
      break;
    case 50:
      *(v234 + 36) = (v5[626])(*v5, v47, "map");
      v102 = 1;
      v234[168] = 1;
      v107 = 4;
LABEL_189:
      v234[160] = v107;
      goto LABEL_190;
    case 53:
      *(v234 + 36) = (v5[626])(*v5, v47, "color_dodge");
      v105 = (v5[626])(*v5, v47, "color_lighten");
      goto LABEL_178;
    case 54:
      *(v234 + 36) = (v5[626])(*v5, v47, "color_burn");
      v105 = (v5[626])(*v5, v47, "color_darken");
LABEL_178:
      *(v234 + 37) = v105;
      *(v234 + 38) = (v5[626])(*v5, v47, "reversed");
      v234[168] = 3;
      v234[160] = 4;
      v234[164] = 1;
      v104 = 260;
LABEL_179:
      *(v234 + 161) = v104;
      v85 = 257;
LABEL_180:
      *(v234 + 165) = v85;
      break;
    case 57:
      *(v234 + 36) = (v5[626])(*v5, v47, "curves");
      v234[168] = 1;
      v102 = 4;
LABEL_176:
      v234[160] = v102;
LABEL_190:
      v234[164] = v102;
      break;
    default:
      *(v234 + 36) = (v5[626])(*v5, v47, "function_arg");
      v108 = (v5[626])(*v5, v47, "coord_arg");
      *(v234 + 37) = v108;
      v234[92] = *(v234 + 36) >= 0;
      v234[93] = v108 >= 0;
      break;
  }

  if (v236)
  {
    free(v239);
  }

  (v5[601])(*v5, 0);
  *(v224 + 2464) = 0;
  ++*(v224 + 1272);
  return v84;
}

char *CA::OGL::GLContext::inline_blend_function(X::Stream *this, unsigned int a2)
{
  v3 = a2;
  if ((0x7E1FFC001FFFFFFFuLL >> a2))
  {
    if ((0x76130C0008C00000uLL >> a2))
    {
      v3 = 3;
    }

    result = X::Stream::printf(this, "%Wlowp vec4 R = %s;\n", 4, CA::OGL::blend_shaders[v3]);
  }

  else
  {
    X::Stream::printf(this, "%Wlowp vec4 R = D*(1. - S.a) + S*(1. - D.a);\n", 4);
    X::Stream::printf(this, "%Wlowp float DaSa = D.a*S.a;\n", 4);
    if ((v3 - 57) >= 0xFFFFFFFFFFFFFFFCLL)
    {
      X::Stream::printf(this, "%WS = S/max(S.a, 0.005);\n", 4);
      X::Stream::printf(this, "%WD = D/max(D.a, 0.005);\n", 4);
      X::Stream::printf(this, "%WR.rgb += %s * DaSa;\n", 4, CA::OGL::blend_shaders[v3]);
    }

    else
    {
      X::Stream::printf(this, "%WR.rgb += %s;\n", 4, CA::OGL::blend_shaders[v3]);
    }

    result = X::Stream::printf(this, "%WR.a += DaSa;\n", 4, v5);
  }

  if (((0x7FFFFE9CFFFFFFFFuLL >> v3) & 1) == 0)
  {
    return X::Stream::printf(this, "%WR.rgb = min(R.rgb, R.a);\n", 4);
  }

  return result;
}

BOOL CA::OGL::gl_shader_compare(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4) && ((*(a2 + 36) ^ *(a1 + 36)) & 0xFF01) == 0 && *(a1 + 94) == *(a2 + 94) && *(a1 + 38) == *(a2 + 38))
  {
    v2 = 0;
    while (*(a1 + 8 + v2) == *(a2 + 8 + v2))
    {
      v2 += 2;
      if (v2 == 26)
      {
        v3 = 0;
        v4 = 0;
        v5 = a1 + 280;
        do
        {
          v6 = (v5 + 32 * v4);
          v7 = (a2 + 280 + 32 * v4);
          v9 = *v6;
          v8 = v6[1];
          v11 = *v7;
          v10 = v7[1];
          result = v9 != v11 || v8 != v10;
          if (v3)
          {
            break;
          }

          v3 = 1;
          v4 = 1;
        }

        while (!result);
        return result;
      }
    }
  }

  return 1;
}

uint64_t CA::OGL::gl_shader_hash(unsigned int *a1)
{
  v1 = 0;
  v2 = *(a1 + 18);
  v3 = 33 * *a1 + a1[1] + (v2 >> 8);
  v4 = (v2 & 1) == 0;
  v5 = 33;
  if (v4)
  {
    v5 = 0;
  }

  v6 = (*(a1 + 94) | (32 * *(a1 + 94))) + *(a1 + 38) + 33 * (v3 + v5);
  do
  {
    v6 = 33 * v6 + *(a1 + v1 + 8);
    v1 += 2;
  }

  while (v1 != 26);
  return 33 * (33 * v6 + a1[70]) + a1[78];
}

int32x2_t CA::OGL::GLContext::draw_lines(int32x2_t *this, uint64_t a2, unint64_t a3, const float *a4, float32x4_t a5, double a6, __n128 a7)
{
  v11 = this[85];
  v12 = this[84];
  if (*&v11 != *&v12 || (!*&v11 ? (v13 = 0) : (v13 = (*(*&v12 + 144) >> 1) & 0x1F), this[83].i32[1] != v13))
  {
    CA::OGL::Context::prepare_destination_(this);
  }

  if ((this[173].i16[0] & 0x200) != 0)
  {
    CA::OGL::Context::flatten_detached_layers_(this);
  }

  CA::OGL::GLContext::update_state(this, a5, a6, a7, a2, a3, a4);
  if (this[335] != a4 || this[336].i32[0] != 2)
  {
    v14 = this[337];
    (v14[512])(*v14, 0, 2, 5126, 0, 16, a4);
    (v14[513])(*v14, 0);
    (v14[512])(*v14, 1, 4, 5131, 1, 16, a4 + 2);
    (v14[513])(*v14, 1);
    (v14[514])(*v14, 2);
    (v14[514])(*v14, 3);
    (v14[514])(*v14, 4);
    this[335] = a4;
    this[336].i32[0] = 2;
  }

  (*(*&this[337] + 528))(**&this[337], 1, a2, a3);
  CA::OGL::GLContext::unload_state(this);
  CA::OGL::Context::marked_destination(this);
  v15.i32[0] = 1;
  v15.i32[1] = a3;
  result = vadd_s32(this[157], v15);
  this[157] = result;
  return result;
}

double CA::OGL::GLContext::draw_elements(int32x2_t *this, uint64_t a2, unint64_t a3, const float *a4, uint64_t a5, float32x4_t a6, double a7, __n128 a8, uint64_t a9, uint64_t a10, void *a11)
{
  v33[4] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v16 = this;
    v17 = this[337];
    v18 = CA::OGL::GLContext::draw_elements(CA::OGL::PrimitiveMode,unsigned int,unsigned short const*,CA::OGL::Vertex const*,unsigned int,unsigned int,CA::OGL::ClipPlane const*)::primitive_modes[a2];
    v19 = this[85];
    v20 = this[84];
    if (*&v19 != *&v20 || (!*&v19 ? (v21 = 0) : (v21 = (*(*&v20 + 144) >> 1) & 0x1F), this[83].i32[1] != v21))
    {
      this = CA::OGL::Context::prepare_destination_(this);
    }

    if ((v16[173].i16[0] & 0x200) != 0)
    {
      this = CA::OGL::Context::flatten_detached_layers_(v16);
    }

    if (a11)
    {
      v22 = v16[171];
      if (v22)
      {
        v16[171] = 0;
        ++v16[83].i32[0];
      }

      MEMORY[0x1EEE9AC00](this);
      bzero(v32, 0x300FuLL);
      CA::OGL::GLContext::update_state(v16, v26, v27, v28, v23, v24, v25);
      CA::OGL::GLContext::init_client_state(v16, v32);
      v33[0] = &unk_1EF1FC928;
      v33[1] = v16;
      v33[3] = v33;
      CA::OGL::clip_primitives(a2, a3, a4, a5, 0, a11, v22, v32, 0x100u, v33, 1u);
      std::__function::__value_func<BOOL ()(CA::OGL::Vertex *,unsigned int)>::~__value_func[abi:nn200100](v33);
      if (v22)
      {
        v16[171] = v22;
        ++v16[83].i32[0];
      }
    }

    else
    {
      CA::OGL::GLContext::update_state(v16, a6, a7, a8, a2, a3, a4);
      CA::OGL::GLContext::init_client_state(v16, a5);
      v29 = **&v17;
      if (a4)
      {
        (*(*&v17 + 544))(v29, v18, a3, 5123, a4);
      }

      else
      {
        (*(*&v17 + 528))(v29, v18, 0, a3);
      }
    }

    CA::OGL::GLContext::unload_state(v16);
    CA::OGL::Context::marked_destination(v16);
    v30.i32[0] = 1;
    v30.i32[1] = a3;
    *a6.f32 = vadd_s32(v16[157], v30);
    v16[157] = *a6.f32;
  }

  return *a6.i64;
}

uint64_t CA::OGL::GLContext::init_client_state(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 2680) != a2 || *(result + 2688) != 1)
  {
    v4 = *(result + 2696);
    (v4[512])(*v4, 0, 4, 5126, 0, 48, a2);
    (v4[513])(*v4, 0);
    (v4[512])(*v4, 1, 4, 5131, 1, 48, a2 + 32);
    (v4[513])(*v4, 1);
    (v4[512])(*v4, 2, 2, 5126, 0, 48, a2 + 16);
    (v4[513])(*v4, 2);
    (v4[512])(*v4, 3, 2, 5126, 0, 48, a2 + 24);
    (v4[513])(*v4, 3);
    result = (v4[514])(*v4, 4);
    *(v3 + 2680) = a2;
    *(v3 + 2688) = 1;
  }

  return result;
}

uint64_t std::__function::__func<CA::OGL::GLContext::draw_elements(CA::OGL::PrimitiveMode,unsigned int,unsigned short const*,CA::OGL::Vertex const*,unsigned int,unsigned int,CA::OGL::ClipPlane const*)::$_0,std::allocator<CA::OGL::GLContext::draw_elements(CA::OGL::PrimitiveMode,unsigned int,unsigned short const*,CA::OGL::Vertex const*,unsigned int,unsigned int,CA::OGL::ClipPlane const*)::$_0>,BOOL ()(CA::OGL::Vertex*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF1FC928;
  a2[1] = v2;
  return result;
}

uint64_t CA::OGL::GLContext::restore_state(CA::OGL::GLContext *this, __n128 a2)
{
  v3 = *(this + 337);
  if (*(this + 672))
  {
    (v3[514])(*v3, 0);
    (v3[512])(*v3, 0, 4, 5126, 0, 0, 0);
    (v3[514])(*v3, 1);
    (v3[512])(*v3, 1, 4, 5121, 0, 0, 0);
    (v3[514])(*v3, 2);
    (v3[512])(*v3, 2, 2, 5126, 0, 0, 0);
    (v3[514])(*v3, 3);
    (v3[512])(*v3, 3, 2, 5126, 0, 0, 0);
    *(this + 672) = 0;
  }

  if (*(this + 308))
  {
    *(this + 308) = 0;
    (*(*(this + 337) + 4808))(**(this + 337), 0);
  }

  v4 = *(this + 3);
  v5 = *(this + 26);
  v6 = *(this + 614);
  if (v5)
  {
    v7 = 0;
    if (v5 >= 0xD)
    {
      v8 = 13;
    }

    else
    {
      v8 = v5;
    }

    v9 = v4 + 144;
    do
    {
      v10 = *(v9 + 2 * v7);
      if (*(v9 + 2 * v7))
      {
        v11 = v9 + 8 * v7;
        if (*(v11 + 32))
        {
          if (v7 != v6)
          {
            (v3[343])(*v3, (v7 + 33984));
            v10 = *(v9 + 2 * v7);
            v6 = v7;
          }

          (v3[6])(*v3, v10, 0);
          *(v11 + 32) = 0;
        }

        *(v9 + 2 * v7) = 0;
      }

      ++v7;
    }

    while (v8 != v7);
  }

  v12 = 0;
  v13 = 1;
  v14 = xmmword_183E21110;
  v15 = CA::OGL::MetalContext::get_pipeline_queue(void)::once;
  do
  {
    v16 = v13;
    {
      v18 = v13;
      v25 = v12;
      v24 = v14;
      v14 = v24;
      v12 = v25;
      v16 = v18;
      v15 = CA::OGL::MetalContext::get_pipeline_queue(void)::once;
      if (v19)
      {
        CA::OGL::GLContext::restore_state(void)::identity = v24;
        v14 = v24;
        v12 = v25;
        v16 = v18;
        v15 = CA::OGL::MetalContext::get_pipeline_queue(void)::once;
      }
    }

    v17 = (v4 + 96 + 16 * v12);
    a2.n128_u32[0] = *v17;
    if (*v17 != *&CA::OGL::GLContext::restore_state(void)::identity || (a2.n128_u32[0] = v17[1], a2.n128_f32[0] != *(&CA::OGL::GLContext::restore_state(void)::identity + 1)) || (a2.n128_u32[0] = v17[2], a2.n128_f32[0] != *(&CA::OGL::GLContext::restore_state(void)::identity + 2)) || (a2.n128_u32[0] = v17[3], a2.n128_f32[0] != *(v15 + 831)))
    {
      *v17 = v14;
    }

    v13 = 0;
    v12 = 1;
  }

  while ((v16 & 1) != 0);
  if (v6)
  {
    (v3[343])(*v3, 33984, a2);
    *(this + 614) = 0;
  }

  v20 = *(v4 + 496);
  if (v20 != 1)
  {
    CA::OGL::GLContext::load_blend_func(this, 1u, v20);
    *(v4 + 496) = 1;
  }

  if (*(v4 + 497))
  {
    (v3[64])(*v3, 3042);
    *(v4 + 497) &= ~1u;
  }

  if (*(this + 65))
  {
    (v3[64])(*v3, 3089);
    *(this + 65) &= ~1u;
  }

  memset_pattern16(this + 48, &unk_183E21920, 0x10uLL);
  (v3[252])(*v3, 0, 0, 0, 0);
  v21 = v3[73];
  v22 = *v3;

  return v21(v22, 3024);
}

uint64_t CA::OGL::GLContext::init_state(CA::OGL::GLContext *this)
{
  v2 = *(this + 337);
  if (!*(this + 84))
  {
    (v2[105])(*v2, 2978, this + 2512);
    *(this + 2664) = *(this + 157);
    *(this + 2708) &= ~1u;
    if (*(this + 332) != (this + 2528))
    {
      *(this + 332) = this + 2528;
      ++*(this + 166);
    }
  }

  *(*(this + 3) + 16) = 0;
  *(*(this + 3) + 17) = 0;
  *(*(this + 3) + 18) = 0;
  *(*(this + 3) + 19) = 0;
  *(*(this + 3) + 20) = 0;
  v3 = *(this + 3);
  *(v3 + 496) = 1;
  *(v3 + 96) = xmmword_183E21110;
  *(v3 + 112) = xmmword_183E21110;
  *(v3 + 128) = xmmword_183E21110;
  *(this + 65) &= ~1u;
  *(this + 7) = -1;
  (v2[64])(*v2, 3024);
  (v2[13])(*v2, 0.0, 0.0, 0.0, 0.0);
  *(this + 614) = 0;
  result = (v2[343])(*v2, 33984);
  *(this + 672) = 0;
  return result;
}

uint64_t CA::OGL::GLContext::purge(CA::OGL::GLContext *this, int a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = *(this + 337);
    if (*(this + 308))
    {
      *(this + 308) = 0;
      (v4[601])(*v4, 0);
    }

    v5 = *(this + 313);
    if (v5)
    {
      v6 = 0;
      v7 = 1 << *v5;
      do
      {
        for (i = *(*(v5 + 16) + 8 * v6); i; i = *i)
        {
          CA::OGL::gl_delete_shader(i[2], i[3], this);
        }

        ++v6;
      }

      while (v6 != v7);
      x_hash_table_free(*(this + 313));
      *(this + 313) = 0;
    }

    v9 = 0;
    v10 = this + 2472;
    do
    {
      if (*&v10[v9])
      {
        (v4[592])(*v4);
        *&v10[v9] = 0;
      }

      v9 += 4;
    }

    while (v9 != 32);
  }

  return CA::OGL::Context::purge(this, v2);
}

void CA::OGL::gl_delete_shader(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  (*(*(a3 + 2696) + 4736))(**(a3 + 2696), a2[14]);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v4 = malloc_zone;

  malloc_zone_free(v4, a2);
}

void CA::OGL::GLContext::collect(CA::OGL::GLContext *this, char a2)
{
  CA::OGL::Context::collect(this, a2);
  if ((a2 & 1) != 0 || (*(this + 692) & 0x400) == 0)
  {
    v4 = *(*this + 1256);

    v4(this);
  }
}

const char *CA::OGL::GLContext::get_error_string(CA::OGL::GLContext *this, int a2)
{
  if (a2 > 1282)
  {
    if (a2 > 1284)
    {
      if (a2 == 1285)
      {
        return "GL_OUT_OF_MEMORY";
      }

      if (a2 == 1286)
      {
        return "GL_INVALID_FRAMEBUFFER_OPERATION;";
      }

      goto LABEL_18;
    }

    if (a2 == 1283)
    {
      return "GL_STACK_OVERFLOW";
    }

    else
    {
      return "GL_STACK_UNDERFLOW";
    }
  }

  else
  {
    if (a2 <= 1280)
    {
      if (!a2)
      {
        return "GL_NO_ERROR";
      }

      if (a2 == 1280)
      {
        return "GL_INVALID_ENUM";
      }

LABEL_18:
      v2 = CA::OGL::Context::get_error_string(int)const::buf;
      snprintf(CA::OGL::Context::get_error_string(int)const::buf, 0xCuLL, "0x%x", a2);
      return v2;
    }

    if (a2 == 1281)
    {
      return "GL_INVALID_VALUE";
    }

    else
    {
      return "GL_INVALID_OPERATION";
    }
  }
}

uint64_t CA::OGL::GLContext::get(uint64_t a1, int a2)
{
  if (a2 <= 9)
  {
    if (!a2)
    {
      return (*(*(a1 + 2696) + 824))(**(a1 + 2696));
    }

    if (a2 == 8)
    {
      return 0;
    }
  }

  else
  {
    if ((a2 - 10) < 2 || a2 == 12)
    {
      return 1;
    }

    if (a2 == 15)
    {
      return 27;
    }
  }

  return a2 == 28 || a2 == 16;
}

os_log_t ___Z20x_log_get_ogl_openglv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "OpenGL");
  x_log_get_ogl_opengl(void)::log = result;
  return result;
}

uint64_t CA::OGL::GLContext::check_extension(CA::OGL::GLContext *this, char *a2, const char *a3, const char *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (CA::OGL::GLContext::check_extension(char const*,char const*,char const*)::initialized == 1)
  {
    v7 = CA::OGL::GLContext::check_extension(char const*,char const*,char const*)::disabled_extensions;
  }

  else
  {
    v7 = getenv("CA_DISABLED_EXTENSIONS");
    CA::OGL::GLContext::check_extension(char const*,char const*,char const*)::disabled_extensions = v7;
    CA::OGL::GLContext::check_extension(char const*,char const*,char const*)::initialized = 1;
  }

  if (CA::OGL::search_extension_list(v7, a3, a3))
  {
    if (x_log_get_ogl_opengl(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_opengl(void)::once, &__block_literal_global_10137);
    }

    v9 = x_log_get_ogl_opengl(void)::log;
    v10 = os_log_type_enabled(x_log_get_ogl_opengl(void)::log, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v10)
    {
      v13 = 136315138;
      v14 = a3;
      _os_log_impl(&dword_183AA6000, v9, OS_LOG_TYPE_DEFAULT, "disabling OpenGL extension %s\n", &v13, 0xCu);
      return 0;
    }
  }

  else if (CA::OGL::search_extension_list(this, a3, v8))
  {
    return 1;
  }

  else
  {

    return CA::OGL::search_extension_list(a2, a3, v12);
  }

  return result;
}

char *CA::OGL::search_extension_list(char *this, const char *a2, const char *a3)
{
  if (this)
  {
    v4 = this;
    this = strstr(this, a2);
    if (this)
    {
      if (this <= v4 || *(this - 1) == 32)
      {
        return ((this[strlen(a2)] & 0xDF) == 0);
      }

      else
      {
        return 0;
      }
    }
  }

  return this;
}

uint64_t CA::OGL::GLContext::projection_matrix(uint64_t this, float a2, float a3, float a4, float a5, int a6)
{
  if (a6)
  {
    v6 = a5;
  }

  else
  {
    v6 = a2;
  }

  if (a6)
  {
    v7 = a4;
  }

  else
  {
    v7 = a3;
  }

  if (a6)
  {
    a4 = a2;
  }

  else
  {
    a3 = a5;
  }

  v8 = 1.0 / (v7 - v6);
  v9 = 1.0 / (a3 - a4);
  v10 = 2592;
  if (!*(this + 672))
  {
    v10 = 2528;
  }

  v11 = this + v10;
  v12 = v8 + v8;
  if (a6)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v8 + v8;
  }

  if (!a6)
  {
    v12 = 0.0;
  }

  v14 = -((v7 + v6) * v8);
  v15 = v9 + v9;
  if (a6)
  {
    v16 = v9 + v9;
  }

  else
  {
    v16 = 0.0;
  }

  *v11 = v13;
  *(v11 + 4) = v16;
  if (a6)
  {
    v15 = 0.0;
  }

  *(v11 + 16) = v12;
  *(v11 + 20) = v15;
  *(v11 + 48) = v14;
  *(v11 + 52) = -((a3 + a4) * v9);
  *(v11 + 8) = 0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 24) = 0;
  *(v11 + 56) = 0x3F80000000000000;
  v17 = *(this + 2656);
  if (v17 && v11 != v17 && *v17 == v13)
  {
    v18 = 1;
    while (v18 != 16)
    {
      v19 = v18;
      v20 = v17[v18];
      v21 = *(v11 + 4 * v18++);
      if (v20 != v21)
      {
        if ((v19 - 1) <= 0xE)
        {
          goto LABEL_25;
        }

        break;
      }
    }
  }

  else
  {
LABEL_25:
    ++*(this + 664);
  }

  *(this + 2656) = v11;
  return this;
}

uint64_t CA::OGL::GLContext::update_texture(uint64_t this, unsigned int a2)
{
  v3 = *(this + 2696);
  v4 = *(this + 16);
  v5 = *(this + 24);
  if (*(this + 2456) != a2)
  {
    v6 = this;
    this = (v3[343])(*v3, a2 + 33984);
    *(v6 + 2456) = a2;
  }

  v7 = v4 + 144;
  v8 = *(v4 + 144 + 2 * a2);
  v9 = v5 + 176;
  v10 = *(v5 + 176 + 8 * a2);
  if (*(v5 + 144 + 2 * a2) != v8)
  {
    if (v10)
    {
      this = (v3[6])(*v3);
      *(v9 + 8 * a2) = 0;
      LOWORD(v8) = *(v7 + 2 * a2);
    }

    v10 = 0;
    *(v5 + 144 + 2 * a2) = v8;
  }

  v11 = v4 + 176;
  if (*(v11 + 8 * a2) != v10)
  {
    this = (v3[6])(*v3, *(v7 + 2 * a2));
    *(v9 + 8 * a2) = *(v11 + 8 * a2);
  }

  return this;
}

uint64_t CA::ASEScalerStatistics::update_with_stats(uint64_t this, void *a2)
{
  if (a2)
  {
    v3 = this;
    pthread_mutex_lock((this + 16));
    memcpy((v3 + 104), a2, 0x17CuLL);

    return pthread_mutex_unlock((v3 + 16));
  }

  return this;
}

uint64_t CA::ASEScalerStatistics::create_iosa_params(CA::ASEScalerStatistics *this, __IOSurface *a2, __IOSurface *a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = malloc_type_calloc(1uLL, 0x200uLL, 0x1080040D934B4C6uLL);
  if (((*(this + 12) - 1) & 0xFC) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = (*(this + 12) - 1) + 1;
  }

  LODWORD(v26) = 0;
  DWORD1(v26) = v9;
  DWORD2(v26) = IOSurfaceGetWidth(a2);
  HIDWORD(v26) = IOSurfaceGetHeight(a2);
  v10 = *(this + 10);
  if (v10 && (v26 == *(this + 11) ? (v11 = *(&v26 + 1) == *(this + 12)) : (v11 = 0), v11) || (v10, v12 = [objc_alloc(MEMORY[0x1E6986500]) initWithConfig:&v26], *(this + 10) = v12, *(this + 88) = v26, v12))
  {
    [*(this + 10) setDestinationWidth:IOSurfaceGetWidth(a3)];
    [*(this + 10) setDestinationHeight:IOSurfaceGetHeight(a3)];
    pthread_mutex_lock((this + 16));
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      [*(this + 10) setInputType:a4];
      v13 = [*(this + 10) processFrameWithInput:a2 Measurement:this + 104 outputData:v8 + 5];
    }

    else
    {
      v13 = [*(this + 10) processFrameWithInput:this + 104 outputData:{v8 + 5, v26}];
    }

    v14 = v13;
    v15 = v8[5];
    v16 = [v8[5] bytes];
    v17 = [v8[5] length];
    pthread_mutex_unlock((this + 16));
    if (v14 == -18000)
    {
      *v8 = 4;
      v8[1] = v16;
      *(v8 + 4) = v17;
      if (CADeviceSupportsVariableRateDirectionalScaling::once[0] != -1)
      {
        dispatch_once(CADeviceSupportsVariableRateDirectionalScaling::once, &__block_literal_global_497);
      }

      if (CADeviceSupportsVariableRateDirectionalScaling::has_capability)
      {
        v18 = 3;
      }

      else
      {
        v18 = 1;
      }

      if (CADeviceSupportsVariableRateDirectionalScaling::has_capability)
      {
        v19 = 464;
      }

      else
      {
        v19 = 380;
      }

      *(v8 + 5) = v18;
      v8[3] = v8 + 6;
      *(v8 + 8) = v19;
      operator new();
    }

    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v20 = x_log_get_utilities::log;
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v28 = v14;
      v21 = "ASEProcessing error: %ld";
      v22 = v20;
      v23 = 12;
LABEL_33:
      _os_log_error_impl(&dword_183AA6000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
    }
  }

  else
  {
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v24 = x_log_get_utilities::log;
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "Could not create ASEProcessor";
      v22 = v24;
      v23 = 2;
      goto LABEL_33;
    }
  }

  free(v8);
  return 0;
}

void CA::ASEScalerStatistics::~ASEScalerStatistics(id *this)
{
  *this = &unk_1EF1FC970;

  JUMPOUT(0x1865EA9A0);
}

{
  *this = &unk_1EF1FC970;
}

uint64_t ___ZN2CA16ScalerStatistics14should_enhanceEmmmm_block_invoke()
{
  objc_opt_class();
  result = objc_opt_respondsToSelector();
  CA::ScalerStatistics::should_enhance(unsigned long,unsigned long,unsigned long,unsigned long)::exists = result & 1;
  return result;
}

CA::CG::ContextDelegate *CA::CG::ContextDelegate::ContextDelegate(CA::CG::ContextDelegate *this)
{
  *this = &unk_1EF1FC9A0;
  *(this + 1) = CGContextDelegateCreate();
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *(this + 3) = v2;
  *(this + 4) = v2;
  *(this + 5) = v2;
  *(this + 6) = v2;
  *(this + 7) = v2;
  *(this + 8) = v2;
  *(this + 9) = v2;
  *(this + 10) = v2;
  *(this + 11) = v2;
  *(this + 12) = v2;
  *(this + 13) = v2;
  *(this + 14) = v2;
  *(this + 15) = v2;
  *(this + 16) = v2;
  *(this + 17) = v2;
  *(this + 18) = v2;
  *(this + 38) = 0;
  *(this + 78) = -1;
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 40) = 0;
  CGContextDelegateSetCallbacks();
  return this;
}

uint64_t CA::CG::ContextDelegate::draw_conic_gradient_(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7)
{
  Info = CGContextDelegateGetInfo();
  v14 = (*(*Info + 16))(Info);
  if (v14)
  {
    v15 = v14;
    v16 = CA::CG::Queue::alloc(v14, 152);
    if (v16)
    {
      v17 = v16;
      v18 = CA::CG::DrawGradient::DrawGradient(v16, Info, a5, a6, a7, 0);
      *v18 = &unk_1EF203750;
      *(v18 + 128) = a1;
      *(v18 + 136) = a2;
      *(v18 + 144) = a3;
      CA::CG::ContextDelegate::submit(Info, v15, v17, a5, a6);
    }
  }

  return 0;
}

void CA::CG::ContextDelegate::submit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    return;
  }

  *(a2 + 24) = CGContextDelegateGetOwnerIdentity();
  updated = CA::CG::ContextDelegate::update_style(a1);
  if (updated)
  {
    CA::CG::ContextDelegate::resolve_style(a1, a3, a4, a5, updated);
  }

  v11 = (a2 + 32);
  v12 = *(a2 + 32);
  if (CA::CG::Queue::_disable_async)
  {
    *v11 = 0;
    *(a2 + 40) = 0;
    ++*(a2 + 48);
    dispatch_semaphore_wait(CA::CG::Queue::_queue_sema, 0xFFFFFFFFFFFFFFFFLL);
    if (BYTE11(xmmword_1ED4E980C) == 1)
    {
      kdebug_trace();
    }

    if (CA::CG::Queue::_disable_async)
    {
      if (CA::CG::Queue::queue(void)::once == -1)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    v13 = *(a2 + 8);
    if (!v13)
    {
      v13 = dispatch_group_create();
      *(a2 + 8) = v13;
    }

    if (CA::CG::Queue::queue(void)::once == -1)
    {
      goto LABEL_27;
    }

LABEL_31:
    dispatch_once_f(&CA::CG::Queue::queue(void)::once, 0, CA::CG::Queue::create_queue);
    goto LABEL_27;
  }

  if (v12[4])
  {
    *(a2 + 40) = a3;
    return;
  }

  *v11 = 0;
  *(a2 + 40) = 0;
  ++*(a2 + 48);
  dispatch_semaphore_wait(CA::CG::Queue::_queue_sema, 0xFFFFFFFFFFFFFFFFLL);
  if (BYTE11(xmmword_1ED4E980C) == 1)
  {
    kdebug_trace();
  }

  if (CA::CG::Queue::_disable_async)
  {
    if (CA::CG::Queue::queue(void)::once == -1)
    {
LABEL_21:
      v14 = CA::CG::Queue::_queue;

      dispatch_sync_f(v14, v12, CA::CG::Queue::render_callback);
      return;
    }

LABEL_30:
    dispatch_once_f(&CA::CG::Queue::queue(void)::once, 0, CA::CG::Queue::create_queue);
    goto LABEL_21;
  }

  v13 = *(a2 + 8);
  if (!v13)
  {
    v13 = dispatch_group_create();
    *(a2 + 8) = v13;
  }

  if (CA::CG::Queue::queue(void)::once != -1)
  {
    goto LABEL_31;
  }

LABEL_27:
  v15 = CA::CG::Queue::_queue;

  dispatch_group_async_f(v13, v15, v12, CA::CG::Queue::render_callback);
}

double *CA::CG::ContextDelegate::update_style(uint64_t a1)
{
  result = CGGStateGetStyle();
  if (result)
  {
    v3 = *(a1 + 328);
    if (v3)
    {
      v4 = *(v3 + 12);
      if (v4 == CGStyleGetIdentifier())
      {
        goto LABEL_32;
      }
    }

    Type = CGStyleGetType();
    v6 = 0;
    if (Type > 2)
    {
      if (Type == 3)
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v16 = malloc_type_zone_malloc(malloc_zone, 0x58uLL, 0x165299FDuLL);
        v6 = v16;
        if (v16)
        {
          CA::CG::Style::Style(v16);
          *v6 = &unk_1EF204CB8;
          v6[10] = *(CGStyleGetData() + 8) * 0.5;
        }
      }

      else if (Type == 4)
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v10 = malloc_type_zone_malloc(malloc_zone, 0xA0uLL, 0x165299FDuLL);
        v6 = v10;
        if (v10)
        {
          CA::CG::Style::Style(v10);
          *v6 = &unk_1EF1FC3A0;
          v11 = (CGStyleGetData() + 8);
          for (i = 76; i != 156; i += 16)
          {
            v14 = *v11;
            v13 = v11[1];
            v11 += 2;
            *(v6 + i) = vcvt_hight_f32_f64(vcvt_f32_f64(v14), v13);
          }
        }
      }
    }

    else if (Type == 1)
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v15 = malloc_type_zone_malloc(malloc_zone, 0x60uLL, 0x165299FDuLL);
      v6 = v15;
      if (v15)
      {
        CA::CG::Style::Style(v15);
        *v6 = &unk_1EF2025C0;
        *(v6 + 44) = 0;
      }
    }

    else if (Type == 2)
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v7 = malloc_type_zone_malloc(malloc_zone, 0x58uLL, 0x165299FDuLL);
      v6 = v7;
      if (v7)
      {
        CA::CG::Style::Style(v7);
        *v6 = &unk_1EF200A18;
        Data = CGStyleGetData();
        v9 = *(Data + 32);
        *(v6 + 20) = v9;
        *(v6 + 21) = *(Data + 72);
      }
    }

    v17 = *(a1 + 328);
    *(a1 + 328) = v6;
    if (v17)
    {
      if (atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v17 + 8))(v17);
      }

      v6 = *(a1 + 328);
    }

    if (v6)
    {
LABEL_32:
      BaseCTM = CGRenderingStateGetBaseCTM();
      v19 = *BaseCTM;
      v20 = BaseCTM[1];
      v21 = BaseCTM[2];
      v22 = BaseCTM[3];
      v23 = BaseCTM[4];
      v24 = BaseCTM[5];
      result = *(a1 + 328);
      if (result[3] != v19 || result[4] != v20 || result[5] != v21 || result[6] != v22 || result[7] != v23 || result[8] != v24)
      {
        if (*(result + 2) != 1)
        {
          result = (*(*result + 40))(result);
          v25 = *(a1 + 328);
          *(a1 + 328) = result;
          if (v25)
          {
            if (atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v25 + 8))(v25);
            }

            result = *(a1 + 328);
          }
        }

        result[3] = v19;
        result[4] = v20;
        result[5] = v21;
        result[6] = v22;
        result[7] = v23;
        result[8] = v24;
        (*(*result + 16))(result);
        return *(a1 + 328);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CA::CG::ContextDelegate::resolve_style(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1EF1FCB10;
  v9[1] = a2;
  v9[2] = a1;
  v9[3] = a3;
  v9[4] = a4;
  v10 = 0;
  result = (*(*a5 + 32))(a5, v9);
  if (v10)
  {
    *(a2 + 104) = v10;
    v8 = a5[18];
    if (v8 <= 2)
    {
      *(a2 + 100) |= 24 - 8 * v8;
    }
  }

  return result;
}

uint64_t CA::CG::ContextDelegate::resolve_style(CA::CG::Queue *,CA::CG::DrawOp *,CGRenderingState *,CGGState *,CA::CG::Style const*)::visitor::visit(uint64_t a1, uint64_t a2)
{
  result = (*(**(a1 + 8) + 80))(*(a1 + 8), *(a1 + 16), a2, *(a1 + 24), *(a1 + 32));
  *(a1 + 40) = result;
  return result;
}

{
  result = (*(**(a1 + 8) + 72))(*(a1 + 8), *(a1 + 16), a2, *(a1 + 24), *(a1 + 32));
  *(a1 + 40) = result;
  return result;
}

{
  result = (*(**(a1 + 8) + 64))(*(a1 + 8), *(a1 + 16), a2, *(a1 + 24), *(a1 + 32));
  *(a1 + 40) = result;
  return result;
}

{
  result = (*(**(a1 + 8) + 56))(*(a1 + 8), *(a1 + 16), a2, *(a1 + 24), *(a1 + 32));
  *(a1 + 40) = result;
  return result;
}

uint64_t CA::CG::ContextDelegate::draw_path_direct_(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const CGPath *a5, uint64_t a6)
{
  v45 = *MEMORY[0x1E69E9840];
  Info = CGContextDelegateGetInfo();
  v12 = (*(*Info + 16))(Info);
  if (v12)
  {
    v13 = v12;
    if (a4 == 2)
    {
      goto LABEL_22;
    }

    if (!a6 || ((v14 = *a6, v15 = *(a6 + 8), v16 = *(a6 + 16), v17 = *(a6 + 24), CTM = CGGStateGetCTM(), v20 = CTM[1], v19 = CTM[2], *&v44.a = *CTM, *&v44.c = v20, *&v44.tx = v19, *&v19 = v14, *&v20 = v15, v21 = v16, v22 = v17, v46 = CGRectApplyAffineTransform(*(&v20 - 8), &v44), x = v46.origin.x, y = v46.origin.y, width = v46.size.width, height = v46.size.height, v27 = *(Info + 24), v28 = *(Info + 28), v27 <= v28) ? (v29 = *(Info + 28)) : (v29 = *(Info + 24)), (LODWORD(v46.origin.x) = 1073741822, LODWORD(v46.origin.y) = v29, v30 = vdupq_lane_s32(*&vcgtq_s32(*&v46.origin.y, v46.origin), 0), v31 = *(Info + 16), v32.i64[0] = v31, v32.i64[1] = SHIDWORD(v31), v33 = vbslq_s8(v30, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v32)), v29 <= 1073741822) ? (v34 = v27) : (v34 = 1.79769313e308), v29 <= 1073741822 ? (v35 = v28) : (v35 = 1.79769313e308), v36 = v33.i64[1], CGRectIntersectsRect(*v33.i8, *&x)))
    {
      FillColor = CGGStateGetFillColor();
      v39 = a4 == 1 || a4 == 4;
      v40 = CA::CG::ContextDelegate::fill_path(Info, v13, a2, a3, FillColor, a5, v39, 0, a6, 1, 1);
      CA::CG::ContextDelegate::submit(Info, v13, v40, a2, a3);
    }

    if (a4 >= 2)
    {
LABEL_22:
      StrokeColor = CGGStateGetStrokeColor();
      v42 = CA::CG::ContextDelegate::stroke_path(Info, v13, a2, a3, StrokeColor, a5, 0);
      CA::CG::ContextDelegate::submit(Info, v13, v42, a2, a3);
    }
  }

  return 0;
}

CA::CG::DrawOp *CA::CG::ContextDelegate::fill_path(const double *a1, CA::CG::DrawOp **a2, uint64_t a3, uint64_t a4, CGColor *a5, const CGPath *a6, int a7, int a8, double *a9, char a10, char a11)
{
  v122 = *MEMORY[0x1E69E9840];
  if (!CGPathIsPrimitive())
  {
    goto LABEL_36;
  }

  memset(&rect, 0, sizeof(rect));
  v102 = 0uLL;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  if (a8 && !CGGStateGetStyle())
  {
    CGGStateGetCTM();
    if (CGPathIsRectWithTransform())
    {
      CGGStateSetCTM();
      v27 = CA::CG::ContextDelegate::fill_rects(a1, a2, a3, a4, a5, &rect, 1uLL, 0, a11);
    }

    else
    {
      if (CGPathIsEllipseWithTransform())
      {
        CGGStateSetCTM();
        v33 = CA::CG::Queue::alloc(a2, 144);
        if (!v33)
        {
          goto LABEL_36;
        }

        v19 = v33;
        v34 = CA::CG::DrawOp::DrawOp(v33, a1, a3, a4, a5, 0);
        *v34 = &unk_1EF1FCB40;
        size = rect.size;
        *(v34 + 112) = rect.origin;
        *(v34 + 128) = size;
        *v34 = &unk_1EF1FD168;
        goto LABEL_31;
      }

      if (CGPathIsRoundedRectWithTransform())
      {
        CGGStateSetCTM();
        v102 = vabsq_f64(v102);
        CA::CG::ContextDelegate::fill_rounded_rect(a1, a2, a3, a4, a5, &rect, &v102);
      }

      else
      {
        if (!CGPathIsUnevenCornersRoundedRectWithTransform())
        {
          goto LABEL_36;
        }

        CGGStateSetCTM();
        CA::CG::ContextDelegate::fill_uneven_rounded_rect(a1, a2, a3, a4, a5, &rect, &v104);
      }
    }

    v19 = v27;
    if (!v27)
    {
      goto LABEL_36;
    }

LABEL_31:
    CGGStateSetCTM();
    return v19;
  }

  if (CGPathIsRect(a6, &rect))
  {
    return CA::CG::ContextDelegate::fill_rects(a1, a2, a3, a4, a5, &rect, 1uLL, a8, a11);
  }

  if (CGPathIsEllipse())
  {
    v20 = CA::CG::Queue::alloc(a2, 144);
    v19 = v20;
    if (!v20)
    {
      return v19;
    }

    if (a8)
    {
      v21 = 4;
    }

    else
    {
      v21 = 0;
    }

    CA::CG::DrawOp::DrawOp(v20, a1, a3, a4, a5, v21);
    *v19 = &unk_1EF1FCB40;
    v22 = rect.size;
    *(v19 + 112) = rect.origin;
    *(v19 + 128) = v22;
    v23 = &unk_1EF1FD168;
LABEL_108:
    *v19 = v23;
    return v19;
  }

  if (CGPathIsRoundedRect())
  {
    v102 = vabsq_f64(v102);
    v24 = CA::CG::Queue::alloc(a2, 160);
    v19 = v24;
    if (!v24)
    {
      return v19;
    }

    if (a8)
    {
      v25 = 4;
    }

    else
    {
      v25 = 0;
    }

    CA::CG::DrawOp::DrawOp(v24, a1, a3, a4, a5, v25);
    *v19 = &unk_1EF1FCC08;
    v26 = rect.size;
    *(v19 + 112) = rect.origin;
    *(v19 + 128) = v26;
    *(v19 + 144) = v102;
    v23 = &unk_1EF200200;
    goto LABEL_108;
  }

  if (CGPathIsUnevenCornersRoundedRectWithTransform())
  {
    v28 = CA::CG::Queue::alloc(a2, 208);
    v19 = v28;
    if (v28)
    {
      if (a8)
      {
        v29 = 4;
      }

      else
      {
        v29 = 0;
      }

      CA::CG::DrawOp::DrawOp(v28, a1, a3, a4, a5, v29);
      *v19 = &unk_1EF1FF760;
      v30 = rect.size;
      *(v19 + 112) = rect.origin;
      *(v19 + 128) = v30;
      v31 = v105;
      *(v19 + 144) = v104;
      *(v19 + 160) = v31;
      v32 = v107;
      *(v19 + 176) = v106;
      *(v19 + 192) = v32;
    }

    return v19;
  }

LABEL_36:
  updated = CA::CG::ContextDelegate::update_style(a1);
  if (!updated)
  {
LABEL_100:
    v91 = CA::CG::Queue::alloc(a2, 152);
    v19 = v91;
    if (!v91)
    {
      return v19;
    }

    if (a8)
    {
      v92 = 4;
    }

    else
    {
      v92 = 0;
    }

    if (a7)
    {
      v93 = 0x1000000;
    }

    else
    {
      v93 = 0;
    }

    CA::CG::DrawPath::DrawPath(v91, a1, a3, a4, a5, a6, v92 | v93, a9, a10);
    v23 = &unk_1EF1FCD00;
    goto LABEL_108;
  }

  v102.f64[1] = 0.0;
  *v103 = 0;
  *&v102.f64[0] = &unk_1EF1FCCD0;
  (*(*updated + 32))(updated, &v102);
  v37 = CA::CG::ContextDelegate::clip_stack(a1);
  if (v37)
  {
    v40 = *(v37 + 40);
    v38.i64[0] = *(v37 + 48);
    v41.i64[0] = v40;
    v41.i64[1] = SHIDWORD(v40);
    v42 = v41;
    v43 = v38.i32[1];
    v41.i64[0] = v38.i32[0];
    v41.i64[1] = v38.i32[1];
    v44 = v41;
    if (v38.i32[0] > v38.i32[1])
    {
      v43 = *(v37 + 48);
    }

    v38.i32[0] = v43;
    v39.i32[0] = 1073741822;
    v96 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v38, v39), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v42));
    v45 = vdup_n_s32(v43 > 1073741822);
    v46.i64[0] = v45.u32[0];
    v46.i64[1] = v45.u32[1];
    v47 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v46, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), vcvtq_f64_s64(v44));
  }

  else
  {
    v47 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v96 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
  }

  v48 = a6;
  cornerWidth = v47;
  if ((a8 & 1) == 0)
  {
    CTM = CGGStateGetCTM();
    v48 = MEMORY[0x1865E8EC0](a6, CTM);
  }

  if (!*&v102.f64[1] || !a7)
  {
    goto LABEL_98;
  }

  BoundingBox = CGPathGetBoundingBox(v48);
  v50.i64[0] = *&BoundingBox.origin.x;
  v50.i64[1] = *&BoundingBox.origin.y;
  v51.f64[0] = 0.0;
  v52.i64[0] = *&BoundingBox.size.width;
  v52.i64[1] = *&BoundingBox.size.height;
  v53 = vdupq_lane_s64(vcgtq_f64(v51, BoundingBox.size).i64[0], 0);
  v54.i64[1] = *&BoundingBox.origin.y;
  *v54.i64 = BoundingBox.size.width + BoundingBox.origin.x;
  v55 = vbslq_s8(v53, v54, v50);
  v50.i64[1] = *&BoundingBox.size.height;
  *v50.i64 = -BoundingBox.size.width;
  v56 = vbslq_s8(v53, v50, v52);
  if (BoundingBox.size.height < 0.0)
  {
    v55.f64[1] = BoundingBox.size.height + BoundingBox.origin.y;
    v56.f64[1] = -BoundingBox.size.height;
  }

  v57 = vclezq_f64(cornerWidth);
  if ((vorrq_s8(vdupq_laneq_s64(v57, 1), v57).u64[0] & 0x8000000000000000) == 0)
  {
    v58 = vclezq_f64(v56);
    if ((vorrq_s8(vdupq_laneq_s64(v58, 1), v58).u64[0] & 0x8000000000000000) == 0)
    {
      v59 = vclezq_f64(vsubq_f64(vminnmq_f64(vaddq_f64(v96, cornerWidth), vaddq_f64(v55, v56)), vmaxnmq_f64(v96, v55)));
      if ((vorrq_s8(vdupq_laneq_s64(v59, 1), v59).u64[0] & 0x8000000000000000) == 0)
      {
LABEL_98:
        if ((a8 & 1) == 0)
        {
          CGPathRelease(v48);
        }

        goto LABEL_100;
      }
    }
  }

  v60 = vcvtq_f64_f32(**&v102.f64[1]);
  v61.f64[1] = v96.f64[1];
  v62 = vsubq_f64(v96, v60);
  if (cornerWidth.f64[0] <= cornerWidth.f64[1])
  {
    v63 = cornerWidth.f64[1];
  }

  else
  {
    v63 = cornerWidth.f64[0];
  }

  if (v63 < 1.79769313e308 && (cornerWidth.f64[0] >= cornerWidth.f64[1] ? (v64 = cornerWidth.f64[1]) : (v64 = cornerWidth.f64[0]), v64 > 0.0))
  {
    v97 = vaddq_f64(v62, vdupq_lane_s64(COERCE__INT64(v103[0] * -2.7), 0));
    v61.f64[0] = v103[0] * 5.4;
    *v65.i64 = v61.f64[0] + cornerWidth.f64[0];
    v60.f64[0] = v61.f64[0] + cornerWidth.f64[1];
    v61.f64[0] = fmin(v61.f64[0] + cornerWidth.f64[0], v61.f64[0] + cornerWidth.f64[1]);
    v65.i64[1] = *&v60.f64[0];
    v60.f64[0] = 0.0;
    cornerWidth = vandq_s8(v65, vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v60, v61)).i64[0], 0));
  }

  else
  {
    v97 = v62;
  }

  bzero(&v104, 0x230uLL);
  CGPathApplyWithBlock2();
  if (v104 != 2)
  {
    goto LABEL_96;
  }

  v66.f64[0] = 0.0;
  v67 = vdupq_lane_s64(vcgtq_f64(v66, rect1.size).i64[0], 0);
  v68.i64[1] = *&rect1.size.height;
  *v68.i64 = -rect1.size.width;
  v69 = vbslq_s8(v67, v68, rect1.size);
  v70 = vdupq_lane_s64(vcgtq_f64(v66, vdupq_laneq_s64(rect1.size, 1)).i64[0], 0);
  v71.i64[0] = v69.i64[0];
  v71.i64[1] = *&vnegq_f64(*(&rect1 + 16)).f64[1];
  v72 = vbslq_s8(v70, v71, v69);
  v73 = vorrq_s8(vcltzq_f64(cornerWidth), vclezq_f64(v72));
  if ((vorrq_s8(vdupq_laneq_s64(v73, 1), v73).u64[0] & 0x8000000000000000) != 0)
  {
    goto LABEL_96;
  }

  v74 = vaddq_f64(rect1.size, rect1.origin);
  v75.i64[0] = vbslq_s8(v67, v74, rect1.origin).u64[0];
  v76.i64[0] = v75.i64[0];
  v76.i64[1] = *&rect1.origin.y;
  v75.i64[1] = v74.i64[1];
  v77 = vbslq_s8(v70, v75, v76);
  v78 = vandq_s8(vcgeq_f64(vaddq_f64(v77, v72), vaddq_f64(v97, cornerWidth)), vcgeq_f64(v97, v77));
  if ((vandq_s8(vdupq_laneq_s64(v78, 1), v78).u64[0] & 0x8000000000000000) == 0)
  {
    goto LABEL_96;
  }

  v98 = rect1;
  v79 = *(MEMORY[0x1E695F058] + 16);
  rect.origin = *MEMORY[0x1E695F058];
  rect.size = v79;
  if (CA::CG::PathInverseDetector::detect_rect(&v104, &rect) && (x = rect.origin.x, y = rect.origin.y, width = rect.size.width, height = rect.size.height, CGRectContainsRect(v98, rect)))
  {
    v124.origin.x = x;
    v124.origin.y = y;
    v124.size.width = width;
    v124.size.height = height;
    v84 = CGPathCreateWithRect(v124, 0);
LABEL_67:
    path = v84;
  }

  else
  {
    v85 = *(&v104 + 1);
    if (*(&v104 + 1) == 5)
    {
      v86 = 0;
      while (dword_183E311FC[v86] == *(&v105 + v86))
      {
        if (++v86 == 6)
        {
          if (v111.f64[1] != v116 || v109 != v113)
          {
            break;
          }

          x = v111.f64[0];
          y = v110;
          width = v115 - v111.f64[0];
          height = v114 - v110;
          rect.origin.x = v111.f64[0];
          rect.origin.y = v110;
          rect.size.width = v115 - v111.f64[0];
          rect.size.height = v114 - v110;
          v128.origin.x = v111.f64[0];
          v128.origin.y = v110;
          v128.size.width = v115 - v111.f64[0];
          v128.size.height = v114 - v110;
          if (CGRectContainsRect(rect1, v128))
          {
            v125.origin.x = x;
            v125.origin.y = y;
            v125.size.width = width;
            v125.size.height = height;
            v84 = CGPathCreateWithEllipseInRect(v125, 0);
            goto LABEL_67;
          }

          v85 = *(&v104 + 1);
          goto LABEL_77;
        }
      }
    }

    else
    {
LABEL_77:
      if (v85 == 9)
      {
        v87 = 0;
        while (dword_183E31214[v87] == *(&v105 + v87))
        {
          if (++v87 == 10)
          {
            v88 = vabdq_f64(v108, v111);
            if (v108.f64[0] >= v117)
            {
              x = v117;
            }

            else
            {
              x = v108.f64[0];
            }

            if (v118 >= v112)
            {
              y = v112;
            }

            else
            {
              y = v118;
            }

            width = vabdd_f64(v108.f64[0], v117);
            height = vabdd_f64(v118, v112);
            rect.origin.x = x;
            rect.origin.y = y;
            rect.size.width = width;
            rect.size.height = height;
            if (v88.f64[0] + v88.f64[0] > width)
            {
              break;
            }

            v95 = v88.f64[1];
            if (v95 + v95 <= height)
            {
              cornerWidtha = v88.f64[0];
              v129.origin.x = x;
              v129.origin.y = y;
              v129.size.width = width;
              v129.size.height = height;
              if (CGRectContainsRect(rect1, v129))
              {
                v127.origin.x = x;
                v127.origin.y = y;
                v127.size.width = width;
                v127.size.height = height;
                v84 = CGPathCreateWithRoundedRect(v127, cornerWidtha, v95, 0);
                goto LABEL_67;
              }
            }

            goto LABEL_89;
          }
        }
      }
    }

    x = rect.origin.x;
    y = rect.origin.y;
    width = rect.size.width;
    height = rect.size.height;
LABEL_89:
    LODWORD(v104) = 3;
  }

  v126.origin.x = x;
  v126.origin.y = y;
  v126.size.width = width;
  v126.size.height = height;
  MidY = CGRectGetMidY(v126);
  *(&v104 + 1) = 0;
  if (v104 == 3 || (CGPathApplyWithBlock2(), v104 != 2))
  {
LABEL_96:
    v90 = path;
LABEL_97:
    CGPathRelease(v90);
    goto LABEL_98;
  }

  v89 = path;
  if (!path)
  {
    v90 = 0;
    goto LABEL_97;
  }

  if ((a8 & 1) == 0)
  {
    CGPathRelease(v48);
  }

  v19 = CA::CG::ContextDelegate::fill_path(a1, a2, a3, a4, a5, v89, 1, 1, 0, 257);
  *(v19 + 100) |= 0x400u;
  CGPathRelease(path);
  return v19;
}

unint64_t *CA::CG::ContextDelegate::stroke_path(const double *a1, CA::CG::Queue *a2, uint64_t a3, uint64_t a4, CGColor *a5, const CGPath *a6, int a7)
{
  v77 = *MEMORY[0x1E69E9840];
  memset(&rect, 0, sizeof(rect));
  memset(v76, 0, sizeof(v76));
  v74 = 0uLL;
  v73 = 0uLL;
  v71 = 0;
  v72 = 0.0;
  v70 = 0.0;
  if (!CGPathIsLine())
  {
    if (!CGPathIsPrimitive() || CGGStateGetLineDash())
    {
      goto LABEL_6;
    }

    LineJoin = CGGStateGetLineJoin();
    if (CGGStateGetStyle())
    {
      if (!LineJoin && CGPathIsRect(a6, &rect))
      {
        return CA::CG::ContextDelegate::stroke_rects(a1, a2, a3, a4, a5, &rect, 1uLL, a7);
      }

      if (CGPathIsEllipse())
      {
        v22 = CA::CG::Queue::alloc(a2, 184);
        v15 = v22;
        if (!v22)
        {
          return v15;
        }

        if (a7)
        {
          v23 = 4;
        }

        else
        {
          v23 = 0;
        }

        CA::CG::DrawOp::DrawOp(v22, a1, a3, a4, a5, v23);
        *v15 = &unk_1EF1FCB40;
        size = rect.size;
        *(v15 + 7) = rect.origin;
        *(v15 + 8) = size;
        *v15 = &unk_1EF1FD230;
        v19 = (v15 + 18);
        goto LABEL_11;
      }

      if (CGPathIsRoundedRect())
      {
        v74 = vabsq_f64(v74);
        return CA::CG::ContextDelegate::stroke_rounded_rect(a1, a2, a3, a4, a5, &rect, &v74, a7);
      }

LABEL_6:
      v16 = CA::CG::Queue::alloc(a2, 192);
      v15 = v16;
      if (!v16)
      {
        return v15;
      }

      if (a7)
      {
        v17 = 4;
      }

      else
      {
        v17 = 0;
      }

      v18 = CA::CG::DrawPath::DrawPath(v16, a1, a3, a4, a5, a6, v17, 0, 1);
      *v18 = &unk_1EF1FCE90;
      v19 = (v18 + 19);
LABEL_11:
      CA::CG::StrokeState::StrokeState(v19);
      return v15;
    }

    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    if (LineJoin || (CGPathIsRectWithTransform() & 1) == 0)
    {
      if (CGPathIsEllipseWithTransform())
      {
        v25 = 0;
        v27 = 0;
        v60 = 0;
        v26 = 1;
      }

      else if (CGPathIsRoundedRectWithTransform())
      {
        v25 = 0;
        v27 = 0;
        v26 = 0;
        v60 = 0x100000000;
      }

      else if (CGPathIsArc())
      {
        if (v70 == 0.0)
        {
          return 0;
        }

        LineCap = CGGStateGetLineCap();
        v27 = 0;
        v26 = 0;
        v60 = LineCap == 0;
        v25 = LineCap != 0;
      }

      else
      {
        v27 = 0;
        v26 = 0;
        v60 = 0;
        v25 = 1;
      }
    }

    else
    {
      v25 = 0;
      v26 = 0;
      v60 = 0;
      v27 = 1;
    }

    CTM = CGGStateGetCTM();
    v31 = *(CTM + 16);
    v30 = *(CTM + 32);
    v64 = *CTM;
    v65 = v31;
    v66 = v30;
    if ((a7 & 1) == 0)
    {
      *&t1.a = v67;
      *&t1.c = v68;
      *&t1.tx = v69;
      *&t2.a = v64;
      *&t2.c = v65;
      *&t2.tx = v66;
      CGAffineTransformConcat(&v63, &t1, &t2);
      v67 = *&v63.a;
      v68 = *&v63.c;
      v69 = *&v63.tx;
    }

    if (v25)
    {
      goto LABEL_6;
    }

    v32 = vmulq_f64(vextq_s8(v68, v68, 8uLL), v67);
    if (vsubq_f64(v32, vdupq_laneq_s64(v32, 1)).f64[0] == 0.0)
    {
      goto LABEL_6;
    }

    v33 = vaddvq_f64(vmulq_f64(v64, v64));
    v34 = vmulq_f64(v65, v65);
    v35 = vaddq_f64(vdupq_laneq_s64(v34, 1), v34).f64[0];
    v36 = v33 != 1.0;
    if (v35 != 1.0)
    {
      v36 = 1;
    }

    v37 = sqrt(v33);
    v38 = sqrt(v35);
    if (v36)
    {
      v35 = v38;
      v33 = v37;
    }

    v39 = vaddvq_f64(vmulq_f64(v67, v67));
    v40 = vmulq_f64(v68, v68);
    v41 = vaddq_f64(vdupq_laneq_s64(v40, 1), v40).f64[0];
    v42 = v39 != 1.0;
    if (v41 != 1.0)
    {
      v42 = 1;
    }

    v43 = sqrt(v39);
    v44 = sqrt(v41);
    if (v42)
    {
      v41 = v44;
      v39 = v43;
    }

    v45 = v39 / v33;
    v46 = v41 / v35;
    v47 = v45 / v46;
    if (v45 / v46 < 0.0)
    {
      v47 = -(v45 / v46);
    }

    v48 = v47 + -1.0;
    v49 = 1.0 - v47;
    if (v48 >= 0.0)
    {
      v49 = v48;
    }

    if (v49 >= 0.001)
    {
      goto LABEL_6;
    }

    v67 = vdivq_f64(v67, vdupq_lane_s64(*&v45, 0));
    v68 = vdivq_f64(v68, vdupq_lane_s64(*&v46, 0));
    v58 = v46;
    v59 = v45;
    CGGStateSetCTM();
    x = rect.origin.x;
    y = rect.origin.y;
    width = rect.size.width;
    height = rect.size.height;
    CGAffineTransformMakeScale(&v63, v59, v58);
    v78.origin.x = x;
    v78.origin.y = y;
    v78.size.width = width;
    v78.size.height = height;
    v79 = CGRectApplyAffineTransform(v78, &v63);
    rect = v79;
    if (v27)
    {
      v54 = CA::CG::ContextDelegate::stroke_rects(a1, a2, a3, a4, a5, &rect, 1uLL, 0);
      goto LABEL_58;
    }

    if (v26)
    {
      v54 = CA::CG::ContextDelegate::stroke_ellipse(a1, a2, a3, a4, a5, &rect);
      goto LABEL_58;
    }

    if (HIDWORD(v60))
    {
      v55.f64[0] = v59;
      v55.f64[1] = v58;
      v74 = vabsq_f64(vmulq_f64(v74, v55));
      v56 = v74.f64[0] + v74.f64[0];
      if (v56 <= CGRectGetWidth(v79))
      {
        v57 = v74.f64[1] + v74.f64[1];
        if (v57 <= CGRectGetHeight(rect))
        {
          v54 = CA::CG::ContextDelegate::stroke_rounded_rect(a1, a2, a3, a4, a5, &rect, &v74, 0);
          goto LABEL_58;
        }
      }
    }

    else if (v60)
    {
      v63.a = v72 * v59;
      v54 = CA::CG::ContextDelegate::stroke_arc(a1, a2, a3, a4, a5, &v73, &v63, &v71, &v70);
LABEL_58:
      v15 = v54;
      CGGStateSetCTM();
      if (v15)
      {
        return v15;
      }

      goto LABEL_6;
    }

    CGGStateSetCTM();
    goto LABEL_6;
  }

  return CA::CG::ContextDelegate::draw_lines(a1, a2, a3, a4, a5, v76, 2uLL, a7);
}

CA::CG::DrawOp *CA::CG::ContextDelegate::draw_lines(const double *a1, CA::CG::DrawOp **this, uint64_t a3, uint64_t a4, CGColor *a5, __int128 *a6, unint64_t a7, int a8)
{
  v16 = 16 * a7;
  v17 = CA::CG::Queue::alloc(this, 16 * a7 + 160);
  v18 = v17;
  v19 = v17 + 20;
  v20 = a6;
  v21 = a7;
  do
  {
    v22 = *v20++;
    *v19++ = v22;
    --v21;
  }

  while (v21);
  if (a8)
  {
    v23 = 4;
  }

  else
  {
    v23 = 0;
  }

  CA::CG::DrawOp::DrawOp(v17, a1, a3, a4, a5, v23);
  *v18 = &unk_1EF2052F8;
  CA::CG::StrokeState::StrokeState((v18 + 14));
  v18[19] = a7;
  v24 = this[5];
  if (v24 && !*(v24 + 13) && !CGGStateGetStyle() && (*(*v24 + 104))(v24, v18) && CA::CG::Queue::cancel_and_grow(this, v18, v24, v16))
  {
    v25 = *(v24 + 19);
    v26 = 16 * v25 + 160;
    v27 = a7;
    do
    {
      v28 = *a6++;
      *(v24 + v26) = v28;
      v26 += 16;
      --v27;
    }

    while (v27);
    *(v24 + 19) = v25 + a7;
    return v24;
  }

  return v18;
}

unint64_t *CA::CG::ContextDelegate::stroke_rects(const double *a1, CA::CG::Queue *this, uint64_t a3, uint64_t a4, CGColor *a5, __int128 *a6, unint64_t a7, int a8)
{
  v15 = CA::CG::Queue::alloc(this, 32 * a7 + 160);
  v16 = v15;
  v17 = v15 + 20;
  v18 = a7;
  do
  {
    v19 = *a6;
    v20 = a6[1];
    a6 += 2;
    *v17 = v19;
    v17[1] = v20;
    v17 += 2;
    --v18;
  }

  while (v18);
  if (a8)
  {
    v21 = 4;
  }

  else
  {
    v21 = 0;
  }

  CA::CG::DrawOp::DrawOp(v15, a1, a3, a4, a5, v21 | ((a7 == 1) << 24));
  v16[14] = a7;
  *v16 = &unk_1EF202428;
  CA::CG::StrokeState::StrokeState((v16 + 15));
  return v16;
}

unint64_t *CA::CG::ContextDelegate::stroke_ellipse(const double *a1, CA::CG::Queue *this, uint64_t a3, uint64_t a4, CGColor *a5, _OWORD *a6)
{
  v11 = CA::CG::Queue::alloc(this, 184);
  v12 = v11;
  if (v11)
  {
    CA::CG::DrawOp::DrawOp(v11, a1, a3, a4, a5, 0);
    *v12 = &unk_1EF1FCB40;
    v13 = a6[1];
    *(v12 + 7) = *a6;
    *(v12 + 8) = v13;
    *v12 = &unk_1EF1FD230;
    CA::CG::StrokeState::StrokeState((v12 + 18));
  }

  return v12;
}

unint64_t *CA::CG::ContextDelegate::stroke_rounded_rect(const double *a1, CA::CG::Queue *this, uint64_t a3, uint64_t a4, CGColor *a5, _OWORD *a6, _OWORD *a7, int a8)
{
  v15 = CA::CG::Queue::alloc(this, 200);
  v16 = v15;
  if (v15)
  {
    if (a8)
    {
      v17 = 4;
    }

    else
    {
      v17 = 0;
    }

    CA::CG::DrawOp::DrawOp(v15, a1, a3, a4, a5, v17);
    *v16 = &unk_1EF1FCC08;
    v18 = a6[1];
    *(v16 + 7) = *a6;
    *(v16 + 8) = v18;
    *(v16 + 9) = *a7;
    *v16 = &unk_1EF2002C8;
    CA::CG::StrokeState::StrokeState((v16 + 20));
  }

  return v16;
}

unint64_t *CA::CG::ContextDelegate::stroke_arc(const double *a1, CA::CG::Queue *this, uint64_t a3, uint64_t a4, CGColor *a5, __int128 *a6, void *a7, void *a8, unint64_t *a9)
{
  v16 = CA::CG::Queue::alloc(this, 192);
  v17 = v16;
  if (v16)
  {
    *&v18 = *a7;
    v19 = *a9;
    *(&v18 + 1) = *a8;
    v21 = v18;
    v22 = *a6;
    CA::CG::DrawOp::DrawOp(v16, a1, a3, a4, a5, 0);
    *v17 = &unk_1EF201FC8;
    CA::CG::StrokeState::StrokeState((v17 + 14));
    *(v17 + 21) = v21;
    *(v17 + 19) = v22;
    v17[23] = v19;
  }

  return v17;
}

uint64_t CA::CG::DrawOp::DrawOp(uint64_t a1, const double *a2, uint64_t a3, uint64_t a4, CGColor *a5, int a6)
{
  v25[1] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1EF2053F0;
  CTM = CGGStateGetCTM();
  v14 = CTM[1];
  v13 = CTM[2];
  *(a1 + 8) = *CTM;
  *(a1 + 24) = v14;
  *(a1 + 40) = v13;
  *(a1 + 56) = CGGStateGetCompositeOperation();
  if (CGGStateGetSoftMask())
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v15 = malloc_type_zone_malloc(malloc_zone, 0x18uLL, 0x165299FDuLL);
    if (v15)
    {
      *v15 = CGSoftMaskRetain();
      v15[1] = CGRenderingStateCreateCopy();
      v15[2] = CGGStateCreateCopy();
    }
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 64) = v15;
  *(a1 + 72) = 0;
  v25[0] = 0x3C003C003C003C00;
  CA::CG::DeviceColor::DeviceColor((a1 + 80), a5, a3, a4, a2, v25);
  ShouldAntialias = CGGStateGetShouldAntialias();
  if (ShouldAntialias)
  {
    ShouldAntialias = CGRenderingStateGetAllowsAntialiasing();
  }

  *(a1 + 100) = a6 | (2 * (a5 != 0)) | ShouldAntialias;
  *(a1 + 104) = 0;
  v17 = CA::CG::ContextDelegate::clip_stack(a2);
  if (v17)
  {
    v18 = v17;
    if (*(v17 + 4))
    {
      goto LABEL_17;
    }

    v19 = *(v17 + 48);
    if (v19 <= *(v17 + 52))
    {
      v19 = *(v17 + 52);
    }

    if (v19 < 0x3FFFFFFF)
    {
      goto LABEL_17;
    }

    v20 = *(v17 + 24);
    if (v20 <= *(v17 + 32))
    {
      v20 = *(v17 + 32);
    }

    if (v20 < 1.79769313e308)
    {
LABEL_17:
      v21 = *(a1 + 72);
      if (v21 != v18)
      {
        if (v21 && atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
        {
          CA::CG::ClipStack::destroy_clip_stack(v21);
        }

        atomic_fetch_add(v18, 1u);
        *(a1 + 72) = v18;
      }
    }
  }

  if ((*(a1 + 100) & 0x40) == 0)
  {
    CGGStateGetAlpha();
    v23 = v22;
    if (v23 != 1.0)
    {
      *(a1 + 88) = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*(a1 + 88)), v23));
    }
  }

  if (*(a1 + 80))
  {
    *(a1 + 100) |= 0x800u;
  }

  return a1;
}

uint64_t CA::CG::DrawPath::DrawPath(uint64_t a1, const double *a2, uint64_t a3, uint64_t a4, CGColor *a5, const void *a6, int a7, double *a8, char a9)
{
  *CA::CG::DrawOp::DrawOp(a1, a2, a3, a4, a5, a7) = &unk_1EF1FCDC8;
  if (a9)
  {
    v12 = CFRetain(a6);
  }

  else
  {
    v12 = MEMORY[0x1865E8EB0](a6);
  }

  *(a1 + 112) = v12;
  if (a8)
  {
    v13 = *a8;
    v14 = a8[1];
    v15 = a8[2];
    v16 = a8[3];
  }

  else
  {
    *&v13 = CGPathGetBoundingBox(a6);
  }

  *(a1 + 120) = v13;
  *(a1 + 128) = v14;
  *(a1 + 136) = v15;
  *(a1 + 144) = v16;
  if (v15 < 0.0)
  {
    *(a1 + 120) = v15 + v13;
    *(a1 + 136) = -v15;
  }

  if (v16 < 0.0)
  {
    *(a1 + 128) = v16 + v14;
    *(a1 + 144) = -v16;
  }

  return a1;
}

uint64_t CA::CG::ContextDelegate::clip_stack(uint64_t a1)
{
  v169 = *MEMORY[0x1E69E9840];
  CGGStateGetClipStack();
  Identifier = CGClipStackGetIdentifier();
  if (*(a1 + 312) == Identifier)
  {
    return *(a1 + 320);
  }

  v3 = Identifier;
  Count = CGClipStackGetCount();
  CGClipStackGetRect();
  *v8.i64 = v7;
  *&v8.i64[1] = v5;
  v9.f64[0] = 0.0;
  v11.i64[0] = *&v10.f64[0];
  v11.i64[1] = v6;
  v12 = vdupq_lane_s64(vcgtq_f64(v9, v10).i64[0], 0);
  v13.i64[1] = v6;
  *v13.i64 = -v10.f64[0];
  v14 = vbslq_s8(v12, v13, v11);
  v10.f64[1] = v5;
  v10.f64[0] = v10.f64[0] + v7;
  v15 = vbslq_s8(v12, v10, v8);
  if (*&v6 < 0.0)
  {
    *&v15.i64[1] = *&v6 + v5;
    *&v14.i64[1] = -*&v6;
  }

  if (Count)
  {
    goto LABEL_9;
  }

  v16 = *&v14.i64[1];
  if (*v14.i64 > *&v14.i64[1])
  {
    v16 = *v14.i64;
  }

  if (v16 < 1.79769313e308)
  {
LABEL_9:
    v146 = v15;
    v148 = v14;
    v18 = malloc_type_malloc(104 * Count + 56, 0x81C6F351uLL);
    v17 = v18;
    *v18 = 1;
    *(v18 + 8) = v146;
    *(v18 + 24) = v148;
    *(v18 + 1) = 0;
    if (!Count)
    {
      v139 = vceqzq_f64(v148);
      if ((vorrq_s8(vdupq_laneq_s64(v139, 1), v139).u64[0] & 0x8000000000000000) != 0 || (v140 = vceqq_f64(v148, v148), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v140), 1), v140).u64[0] & 0x8000000000000000) != 0))
      {
        *(v18 + 5) = 0;
        *(v18 + 6) = 0;
      }

      else
      {
        v141 = vcvtmq_s64_f64(vmaxnmq_f64(v146, vdupq_n_s64(0xC1BFFFFFFF000000)));
        *(v18 + 40) = vuzp1q_s32(v141, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v146, v148), vdupq_n_s64(0x41C0000000000000uLL))), v141));
      }

      goto LABEL_66;
    }

    CGClipStackGetBounds();
    *v22.i64 = v21;
    v22.i64[1] = v19;
    v23.f64[0] = 0.0;
    v25.i64[0] = *&v24.f64[0];
    v25.i64[1] = v20;
    v26 = vdupq_lane_s64(vcgtq_f64(v23, v24).i64[0], 0);
    v27.i64[1] = v19;
    *v27.i64 = v24.f64[0] + v21;
    v28 = vbslq_s8(v26, v27, v22);
    v22.i64[1] = v20;
    *v22.i64 = -v24.f64[0];
    v29 = vbslq_s8(v26, v22, v25);
    if (*&v20 < 0.0)
    {
      v28.f64[1] = *&v20 + *&v19;
      v29.f64[1] = -*&v20;
    }

    v30 = vceqzq_f64(v29);
    v145 = a1;
    v144 = v3;
    if ((vorrq_s8(vdupq_laneq_s64(v30, 1), v30).u64[0] & 0x8000000000000000) != 0 || (v31 = vceqq_f64(v29, v29), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v31), 1), v31).u64[0] & 0x8000000000000000) != 0))
    {
      *(v17 + 5) = 0;
      *(v17 + 6) = 0;
    }

    else
    {
      v32 = vcvtmq_s64_f64(vmaxnmq_f64(v28, vdupq_n_s64(0xC1BFFFFFFF000000)));
      *(v17 + 40) = vuzp1q_s32(v32, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v28, v29), vdupq_n_s64(0x41C0000000000000uLL))), v32));
    }

    v33 = 0;
    v34 = v17 + 56;
    while (1)
    {
      CGClipStackGetClipAtIndex();
      ShouldAntialias = CGClipGetShouldAntialias();
      Type = CGClipGetType();
      if (Type <= 2)
      {
        break;
      }

      if (Type == 3)
      {
        CGClipGetMask();
        Image = CGClipMaskGetImage();
        v166 = 0u;
        v167 = 0u;
        v165 = 0u;
        CGClipMaskGetMatrix();
        CGClipMaskGetRect();
        *&v63.i64[1] = v61;
        v64.f64[0] = 0.0;
        v66.i64[0] = *&v65.f64[0];
        v66.i64[1] = v62;
        v67 = vdupq_lane_s64(vcgtq_f64(v64, v65).i64[0], 0);
        v68.i64[1] = v62;
        *v68.i64 = -v65.f64[0];
        v69 = vbslq_s8(v67, v68, v66);
        v65.f64[1] = v61;
        v65.f64[0] = v65.f64[0] + *v63.i64;
        v70 = vbslq_s8(v67, v65, v63);
        if (*&v62 < 0.0)
        {
          *&v70.i64[1] = *&v62 + v61;
          *&v69.i64[1] = -*&v62;
        }

        v147 = v70;
        v149 = v69;
        v71 = *(v17 + 1);
        *(v17 + 1) = v71 + 1;
        v72 = &v34[104 * v71];
        *v72 = &unk_1EF1FE0F8;
        *(v72 + 1) = CGImageRetain(Image);
        v73 = v166;
        v74 = v167;
        *(v72 + 1) = v165;
        *(v72 + 2) = v73;
        *(v72 + 3) = v74;
        *(v72 + 4) = v147;
        *(v72 + 5) = v149;
        v72[96] = ShouldAntialias;
        goto LABEL_59;
      }

      if (Type == 4)
      {
        CGClipGetTextClipping();
        Path = CGTextClippingCreatePath();
        if (Path)
        {
          v42 = Path;
          v43 = *(v17 + 1);
          *(v17 + 1) = v43 + 1;
          v44 = &v34[104 * v43];
          *v44 = &unk_1EF1FE0C0;
          *(v44 + 1) = CFRetain(Path);
          v44[16] = 0;
          v44[17] = ShouldAntialias;
          v45 = v42;
LABEL_58:
          CGPathRelease(v45);
        }
      }

LABEL_59:
      if (++v33 == Count)
      {
        a1 = v145;
        v3 = v144;
        goto LABEL_66;
      }
    }

    if (!Type)
    {
      Mode = CGClipGetMode();
      if (Mode > 1)
      {
        if (Mode == 2)
        {
          CGClipGetStroke();
          CGClipStrokeGetLineWidth();
          v76 = v75;
          CGClipGetRect();
          v79.i64[1] = v77;
          v80.f64[0] = 0.0;
          v82.i64[0] = *&v81.f64[0];
          v82.i64[1] = v78;
          v83 = vdupq_lane_s64(vcgtq_f64(v80, v81).i64[0], 0);
          v84.i64[1] = v77;
          *v84.i64 = v81.f64[0] + *v79.i64;
          v85 = vbslq_s8(v83, v84, v79);
          v86.i64[1] = v78;
          *v86.i64 = -v81.f64[0];
          v87 = vbslq_s8(v83, v86, v82);
          if (*&v78 < 0.0)
          {
            *&v85.i64[1] = *&v78 + *&v77;
            *&v87.i64[1] = -*&v78;
          }

          v88 = *(v17 + 1);
          *(v17 + 1) = v88 + 1;
          v89 = &v34[104 * v88];
          *v89 = &unk_1EF1FE168;
          *(v89 + 8) = v85;
          *(v89 + 24) = v87;
          *(v89 + 5) = v76;
          v89[48] = ShouldAntialias;
        }
      }

      else
      {
        CGClipGetRect();
        v49.i64[1] = v47;
        v50.f64[0] = 0.0;
        v52.i64[0] = *&v51.f64[0];
        v52.i64[1] = v48;
        v53 = vdupq_lane_s64(vcgtq_f64(v50, v51).i64[0], 0);
        v54.i64[1] = v47;
        *v54.i64 = v51.f64[0] + *v49.i64;
        v55 = vbslq_s8(v53, v54, v49);
        v56.i64[1] = v48;
        *v56.i64 = -v51.f64[0];
        v57 = vbslq_s8(v53, v56, v52);
        if (*&v48 < 0.0)
        {
          *&v55.i64[1] = *&v48 + *&v47;
          *&v57.i64[1] = -*&v48;
        }

        v58 = *(v17 + 1);
        *(v17 + 1) = v58 + 1;
        v59 = &v34[104 * v58];
        *v59 = &unk_1EF1FE130;
        *(v59 + 8) = v55;
        *(v59 + 24) = v57;
        v59[40] = ShouldAntialias;
      }

      goto LABEL_59;
    }

    if (Type != 2)
    {
      goto LABEL_59;
    }

    v37 = CGClipGetMode();
    StrokedPath = CGClipGetPath();
    if (v37 == 2)
    {
      CGClipGetStroke();
      StrokedPath = CGClipStrokeCreateStrokedPath();
    }

    if (StrokedPath)
    {
      if (CGPathIsRegion())
      {
        v39 = *(v17 + 1);
        *(v17 + 1) = v39 + 1;
        v40 = &v34[104 * v39];
        *v40 = &unk_1EF1FE0C0;
        *(v40 + 1) = CFRetain(StrokedPath);
        v40[16] = v37 == 1;
        v40[17] = ShouldAntialias;
        goto LABEL_56;
      }

      memset(&rect, 0, sizeof(rect));
      if (CGPathIsRect(StrokedPath, &rect))
      {
        goto LABEL_41;
      }

      if ((CGPathGetNumberOfElements() - 7) > 0xFFFFFFFFFFFFFFFDLL)
      {
        v167 = 0u;
        v168 = 0u;
        v165 = 0u;
        v166 = 0u;
        v164[0] = 0;
        v164[1] = v164;
        v164[2] = 0x2000000000;
        v164[3] = &v165;
        v162[0] = 0;
        v162[1] = v162;
        v162[2] = 0x2000000000;
        v163 = 0;
        v158 = 0;
        v159 = &v158;
        v160 = 0x2000000000;
        v161 = 1;
        v151 = MEMORY[0x1E69E9820];
        v152 = 0x40000000;
        v153 = __CA_CGPathIsRectShape_block_invoke;
        v154 = &unk_1E6DFA5B8;
        v155 = v162;
        v156 = &v158;
        v157 = v164;
        CGPathApplyWithBlock2();
        if (*(v159 + 24) == 1)
        {
          v100 = v165;
          v101 = 16;
          v102 = v165;
          do
          {
            v103 = *(&v165 + v101);
            v102 = vbslq_s8(vcgtq_f64(v102, v103), v103, v102);
            v100 = vbslq_s8(vcgtq_f64(v103, v100), v103, v100);
            v101 += 16;
          }

          while (v101 != 64);
          rect.origin = v102;
          rect.size = vsubq_f64(v100, v102);
          _Block_object_dispose(&v158, 8);
          _Block_object_dispose(v162, 8);
          _Block_object_dispose(v164, 8);
LABEL_41:
          v91 = *(v17 + 1);
          *(v17 + 1) = v91 + 1;
          v90.f64[0] = 0.0;
          v92 = vdupq_lane_s64(vcgtq_f64(v90, rect.size).i64[0], 0);
          v93 = &v34[104 * v91];
          v94.i64[1] = *&rect.size.height;
          *v94.i64 = -rect.size.width;
          v95 = vaddq_f64(rect.size, rect.origin);
          v96.i64[0] = vbslq_s8(v92, v95, rect.origin).u64[0];
          v97.i64[0] = v96.i64[0];
          v97.i64[1] = *&rect.origin.y;
          v98 = vbslq_s8(v92, v94, rect.size);
          v99 = vdupq_lane_s64(vcgtq_f64(v90, vdupq_laneq_s64(rect.size, 1)).i64[0], 0);
          v94.i64[0] = v98.i64[0];
          v94.i64[1] = *&vnegq_f64(*(&rect + 16)).f64[1];
          v96.i64[1] = v95.i64[1];
          *v93 = &unk_1EF1FE130;
          *(v93 + 8) = vbslq_s8(v99, v96, v97);
          *(v93 + 24) = vbslq_s8(v99, v94, v98);
          v93[40] = ShouldAntialias;
          goto LABEL_56;
        }

        _Block_object_dispose(&v158, 8);
        _Block_object_dispose(v162, 8);
        _Block_object_dispose(v164, 8);
      }

      if (!ShouldAntialias)
      {
        goto LABEL_55;
      }

      if (CGPathIsEllipse())
      {
        v105 = *(v17 + 1);
        *(v17 + 1) = v105 + 1;
        v106 = &v34[104 * v105];
        v104.f64[0] = 0.0;
        v107 = vdupq_lane_s64(vcgtq_f64(v104, rect.size).i64[0], 0);
        v108.i64[1] = *&rect.size.height;
        *v108.i64 = -rect.size.width;
        v109 = vbslq_s8(v107, v108, rect.size);
        v110 = vaddq_f64(rect.size, rect.origin);
        v107.i64[0] = vbslq_s8(v107, v110, rect.origin).u64[0];
        v111.i64[0] = v107.i64[0];
        v111.i64[1] = *&rect.origin.y;
        v112 = vdupq_lane_s64(vcgtq_f64(v104, vdupq_laneq_s64(rect.size, 1)).i64[0], 0);
        v113.i64[0] = v109.i64[0];
        v113.i64[1] = *&vnegq_f64(*(&rect + 16)).f64[1];
        v107.i64[1] = v110.i64[1];
        *v106 = &unk_1EF1FE1A0;
        *(v106 + 8) = vbslq_s8(v112, v107, v111);
        *(v106 + 24) = vbslq_s8(v112, v113, v109);
        goto LABEL_56;
      }

      if (CGPathIsRoundedRect())
      {
        size = rect.size;
        v118 = -rect.size.width;
        v119 = vnegq_f64(rect.size);
        if (rect.size.width == 0.0 + 0.0 && (v114.f64[0] = rect.size.height, rect.size.height == 0.0 + 0.0))
        {
          v120 = *(v17 + 1);
          *(v17 + 1) = v120 + 1;
          v121 = &v34[104 * v120];
          v115.f64[0] = 0.0;
          v122 = vdupq_lane_s64(vcgtq_f64(v115, size).i64[0], 0);
          v123.i64[1] = *&size.height;
          *v123.i64 = v118;
          v124 = vbslq_s8(v122, v123, size);
          v125 = vaddq_f64(size, rect.origin);
          v122.i64[0] = vbslq_s8(v122, v125, rect.origin).u64[0];
          v123.i64[0] = v122.i64[0];
          v123.i64[1] = *&rect.origin.y;
          v126 = vdupq_lane_s64(vcgtq_f64(v115, v114).i64[0], 0);
          v127.i64[0] = v124.i64[0];
          v127.i64[1] = *&v119.f64[1];
          v122.i64[1] = v125.i64[1];
          *v121 = &unk_1EF1FE1A0;
          *(v121 + 8) = vbslq_s8(v126, v122, v123);
          *(v121 + 24) = vbslq_s8(v126, v127, v124);
        }

        else
        {
          v130 = *(v17 + 1);
          *(v17 + 1) = v130 + 1;
          v116.f64[0] = 0.0;
          v131 = vdupq_lane_s64(vcgtq_f64(v116, size).i64[0], 0);
          v132.i64[1] = *&size.height;
          *v132.i64 = v118;
          v133 = vaddq_f64(size, rect.origin);
          v134.i64[0] = vbslq_s8(v131, v133, rect.origin).u64[0];
          v135.i64[0] = v134.i64[0];
          v135.i64[1] = *&rect.origin.y;
          v136 = vbslq_s8(v131, v132, size);
          v137 = vdupq_lane_s64(vcgtq_f64(v116, vdupq_laneq_s64(size, 1)).i64[0], 0);
          v138 = &v34[104 * v130];
          v131.i64[0] = v136.i64[0];
          v131.i64[1] = *&v119.f64[1];
          v134.i64[1] = v133.i64[1];
          *v138 = &unk_1EF1FE1D8;
          *(v138 + 8) = vbslq_s8(v137, v134, v135);
          *(v138 + 24) = vbslq_s8(v137, v131, v136);
          *(v138 + 5) = fabs(0.0);
          *(v138 + 6) = fabs(0.0);
        }
      }

      else
      {
LABEL_55:
        v128 = *(v17 + 1);
        *(v17 + 1) = v128 + 1;
        v129 = &v34[104 * v128];
        *v129 = &unk_1EF1FE0C0;
        *(v129 + 1) = CFRetain(StrokedPath);
        v129[16] = v37 == 1;
        v129[17] = ShouldAntialias;
      }
    }

LABEL_56:
    if (v37 == 2)
    {
      v45 = StrokedPath;
      goto LABEL_58;
    }

    goto LABEL_59;
  }

  v17 = 0;
LABEL_66:
  v142 = *(a1 + 320);
  *(a1 + 320) = v17;
  if (v142 && atomic_fetch_add(v142, 0xFFFFFFFF) == 1)
  {
    CA::CG::ClipStack::destroy_clip_stack(v142);
  }

  *(a1 + 312) = v3;
  return *(a1 + 320);
}

CA::CG::DrawOp *CA::CG::ContextDelegate::fill_rects(const double *a1, CA::CG::DrawOp **this, uint64_t a3, uint64_t a4, CGColor *a5, __int128 *a6, unint64_t a7, int a8, char a9)
{
  v96 = *MEMORY[0x1E69E9840];
  v16 = 32 * a7;
  v17 = CA::CG::Queue::alloc(this, 32 * a7 + 120);
  v18 = v17;
  v19 = v17 + 15;
  v20 = a6;
  v21 = a7;
  do
  {
    v22 = *v20;
    v23 = v20[1];
    v20 += 2;
    *v19 = v22;
    v19[1] = v23;
    v19 += 2;
    --v21;
  }

  while (v21);
  if (a8)
  {
    v24 = 4;
  }

  else
  {
    v24 = 0;
  }

  CA::CG::DrawOp::DrawOp(v17, a1, a3, a4, a5, v24 | ((a7 == 1) << 24));
  v18[14] = a7;
  *v18 = &unk_1EF202360;
  v25 = this[5];
  if (v25 && !*(v25 + 13) && !CGGStateGetStyle() && (*(*v25 + 96))(v25, v18) && CA::CG::Queue::cancel_and_grow(this, v18, v25, v16))
  {
    v26 = *(v25 + 14);
    v27 = 32 * v26 + 120;
    v28 = a7;
    do
    {
      v29 = (v25 + v27);
      v30 = *a6;
      v31 = a6[1];
      a6 += 2;
      *v29 = v30;
      v29[1] = v31;
      v27 += 32;
      --v28;
    }

    while (v28);
    *(v25 + 14) = v26 + a7;
  }

  else
  {
    if (a7 != 1)
    {
      return v18;
    }

    if (!a9)
    {
      return v18;
    }

    v32 = v18[9];
    if (!v32 || *(v32 + 4) != 1 || (*(*(v32 + 56) + 16))(v32 + 56) != 5)
    {
      return v18;
    }

    BoundingBox = CGPathGetBoundingBox(*(v32 + 64));
    v33.i64[0] = *&BoundingBox.origin.x;
    v33.i64[1] = *&BoundingBox.origin.y;
    v34.f64[0] = 0.0;
    v35.i64[0] = *&BoundingBox.size.width;
    v35.i64[1] = *&BoundingBox.size.height;
    v36 = vdupq_lane_s64(vcgtq_f64(v34, BoundingBox.size).i64[0], 0);
    v37.i64[1] = *&BoundingBox.origin.y;
    *v37.i64 = BoundingBox.size.width + BoundingBox.origin.x;
    v38 = vbslq_s8(v36, v37, v33);
    v39.f64[1] = BoundingBox.size.height;
    v39.f64[0] = -BoundingBox.size.width;
    v40 = vbslq_s8(v36, v39, v35);
    if (BoundingBox.size.height < 0.0)
    {
      v38.f64[1] = BoundingBox.size.height + BoundingBox.origin.y;
      v40.f64[1] = -BoundingBox.size.height;
    }

    if ((*(v18 + 100) & 4) == 0)
    {
      v41 = v40.f64[1];
      if (v40.f64[0] > v40.f64[1])
      {
        v41 = v40.f64[0];
      }

      if (v41 < 1.79769313e308)
      {
        *&v42.f64[0] = v18[4];
        v39 = *(v18 + 1);
        *&v43.f64[1] = v18[3];
        v43.f64[0] = v42.f64[0];
        v44 = vmulq_f64(v43, *(v18 + 1));
        v45 = vsubq_f64(v44, vdupq_laneq_s64(v44, 1)).f64[0];
        if (v45 != 0.0)
        {
          v46 = 1.0 / v45;
          *&v42.f64[1] = v18[1];
          v47 = vmulq_n_f64(v42, 1.0 / v45);
          v48 = *(v18 + 5);
          v49 = vmulq_f64(v48, v39);
          v50 = vmulq_n_f64(vmlsq_f64(vextq_s8(v49, v49, 8uLL), v42, v48), v46);
          v51 = vmulq_n_f64(vnegq_f64(v39), v46);
          v52 = vmovn_s64(vceqzq_f64(v51));
          if (vand_s8(v52, vdup_lane_s32(v52, 1)).u8[0])
          {
            v39 = vmlaq_f64(v50, v47, v38);
            v53 = vmlaq_f64(v50, v47, vaddq_f64(v38, v40));
            v54 = vcgtq_f64(v39, v53);
            v38 = vbslq_s8(v54, v53, v39);
            v40 = vsubq_f64(vbslq_s8(v54, v39, v53), v38);
          }

          else
          {
            v55 = 0;
            v56 = vaddq_f64(v38, v40);
            v57.f64[0] = v56.f64[0];
            v57.f64[1] = v38.f64[1];
            v92 = v38;
            v93 = v57;
            v38.f64[1] = v56.f64[1];
            v58 = vdupq_lane_s64(*&v47.f64[0], 0);
            v59 = vdupq_laneq_s64(v51, 1);
            v60 = vdupq_lane_s64(*&v50.f64[0], 0);
            v61 = vdupq_lane_s64(*&v51.f64[0], 0);
            v94 = v56;
            v95 = v38;
            v62 = vdupq_laneq_s64(v47, 1);
            v63 = vdupq_laneq_s64(v50, 1);
            do
            {
              v64 = &v92.f64[v55];
              v97 = vld2q_f64(v64);
              v98.val[0] = vmlaq_f64(vmlaq_f64(v60, v58, v97.val[0]), v59, v97.val[1]);
              v98.val[1] = vmlaq_f64(vmlaq_f64(v63, v61, v97.val[0]), v62, v97.val[1]);
              vst2q_f64(v64, v98);
              v55 += 4;
            }

            while (v55 != 8);
            v65 = vbslq_s8(vcgtq_f64(v93, v92), v92, v93);
            v66 = vbslq_s8(vcgtq_f64(v95, v94), v94, v95);
            v39 = vbslq_s8(vcgtq_f64(v66, v65), v65, v66);
            v67 = vbslq_s8(vcgtq_f64(v92, v93), v92, v93);
            v68 = vbslq_s8(vcgtq_f64(v94, v95), v94, v95);
            v69 = vcgtq_f64(v67, v68);
            v70 = vsubq_f64(vbslq_s8(v69, v67, v68), v39);
            *&v68.f64[0] = COERCE_UNSIGNED_INT64(vaddvq_f64(v70)) & 0x7FFFFFFFFFFFFFFFLL;
            v69.i64[0] = 0x7FF0000000000000;
            v71 = vdupq_lane_s64(vcgtq_s64(v69, v68).i64[0], 0);
            v40 = vbslq_s8(v71, v70, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL));
            v38 = vbslq_s8(v71, v39, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL));
          }
        }
      }
    }

    v72 = *(v18 + 17);
    v39.f64[0] = 0.0;
    v73 = vdupq_lane_s64(vcgtq_f64(v39, v72).i64[0], 0);
    v74.i64[1] = v18[18];
    *v74.i64 = -v72.f64[0];
    v75 = vbslq_s8(v73, v74, v72);
    v76 = vdupq_lane_s64(vcgtq_f64(v39, vdupq_laneq_s64(v72, 1)).i64[0], 0);
    v77.i64[0] = v75.i64[0];
    v77.i64[1] = *&vnegq_f64(v72).f64[1];
    v78 = vbslq_s8(v76, v77, v75);
    v79 = vorrq_s8(vcltzq_f64(v40), vclezq_f64(v78));
    if ((vorrq_s8(vdupq_laneq_s64(v79, 1), v79).u64[0] & 0x8000000000000000) == 0 && (v80 = *(v18 + 15), v81 = vaddq_f64(v72, v80), v82.i64[0] = vbslq_s8(v73, v81, v80).u64[0], v83.i64[0] = v82.i64[0], v83.i64[1] = v18[16], v82.i64[1] = v81.i64[1], v84 = vbslq_s8(v76, v82, v83), v85 = vandq_s8(vcgeq_f64(vaddq_f64(v84, v78), vaddq_f64(v38, v40)), vcgeq_f64(v38, v84)), (vandq_s8(vdupq_laneq_s64(v85, 1), v85).u64[0] & 0x8000000000000000) != 0) && (!CGGStateGetStyle() || CGStyleGetType() != 2))
    {
      CA::CG::Queue::cancel(this, v18);
      v87 = CA::CG::ContextDelegate::fill_path(a1, this, a3, a4, a5, *(v32 + 64), *(v32 + 72), 1, 0, 0);
      v25 = v87;
      v88 = *(v87 + 100);
      v89 = v88 & 0xFFFFFFDE | 0x20;
      v90 = v88 | 0x21;
      if (!*(v32 + 73))
      {
        v90 = v89;
      }

      *(v87 + 100) = v90;
    }

    else
    {
      return v18;
    }
  }

  return v25;
}

__n128 CA::CG::ContextDelegate::fill_rounded_rect(const double *a1, CA::CG::Queue *this, uint64_t a3, uint64_t a4, CGColor *a5, _OWORD *a6, __n128 *a7)
{
  v13 = CA::CG::Queue::alloc(this, 160);
  if (v13)
  {
    v15 = CA::CG::DrawOp::DrawOp(v13, a1, a3, a4, a5, 0);
    *v15 = &unk_1EF1FCC08;
    v16 = a6[1];
    *(v15 + 112) = *a6;
    *(v15 + 128) = v16;
    result = *a7;
    *(v15 + 144) = *a7;
    *v15 = &unk_1EF200200;
  }

  return result;
}

__n128 CA::CG::ContextDelegate::fill_uneven_rounded_rect(const double *a1, CA::CG::Queue *this, uint64_t a3, uint64_t a4, CGColor *a5, _OWORD *a6, uint64_t a7)
{
  v13 = CA::CG::Queue::alloc(this, 208);
  if (v13)
  {
    v15 = CA::CG::DrawOp::DrawOp(v13, a1, a3, a4, a5, 0);
    *v15 = &unk_1EF1FF760;
    v16 = a6[1];
    *(v15 + 112) = *a6;
    *(v15 + 128) = v16;
    *(v15 + 144) = *a7;
    *(v15 + 160) = *(a7 + 16);
    *(v15 + 176) = *(a7 + 32);
    result = *(a7 + 48);
    *(v15 + 192) = result;
  }

  return result;
}

float CA::CG::ContextDelegate::fill_path(CA::CG::Queue *,CGRenderingState *,CGGState *,CGColor *,CGPath const*,BOOL,BOOL,CGRect const*,BOOL,BOOL)::ShadowParamDetector::visit(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2 + 80;
  result = *(a2 + 76);
  *(a1 + 16) = result;
  return result;
}

uint64_t CA::CG::ContextDelegate::draw_layer_()
{
  v0 = *(CGContextDelegateGetInfo() + 344);
  if (!v0)
  {
    return 1004;
  }

  v1 = *(v0 + 9);
  if (v1)
  {
    CA::CG::Queue::flush(v1, 3, 1);
  }

  v2 = CA::CG::IOSurfaceDrawable::copy_cgimage(v0);
  if (!v2)
  {
    return 1004;
  }

  v3 = v2;
  v4 = CGContextDelegateDrawImage();
  CGImageRelease(v3);
  return v4;
}

uint64_t CA::CG::ContextDelegate::get_layer_(double a1, double a2, float64x2_t a3, double a4)
{
  Info = CGContextDelegateGetInfo();
  v7 = (*(*Info + 3))(Info);
  if (v7)
  {
    *v9.i64 = a1;
    *&v9.i64[1] = a2;
    v8.f64[0] = 0.0;
    v10.i64[0] = *&a3.f64[0];
    *&v10.i64[1] = a4;
    v11 = vdupq_lane_s64(vcgtq_f64(v8, a3).i64[0], 0);
    *&v12.i64[1] = a4;
    *v12.i64 = -a3.f64[0];
    v13 = vbslq_s8(v11, v12, v10);
    *&v12.i64[1] = a2;
    *v12.i64 = a3.f64[0] + a1;
    v14 = vbslq_s8(v11, v12, v9);
    if (a4 < 0.0)
    {
      v14.f64[1] = a4 + a2;
      v13.f64[1] = -a4;
    }

    v15 = vceqzq_f64(v13);
    v16 = 0uLL;
    if ((vorrq_s8(vdupq_laneq_s64(v15, 1), v15).u64[0] & 0x8000000000000000) == 0)
    {
      v17 = vceqq_f64(v13, v13);
      if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v17), 1), v17).u64[0] & 0x8000000000000000) == 0)
      {
        v18 = vminnmq_f64(vaddq_f64(v14, v13), vdupq_n_s64(0x41C0000000000000uLL));
        v19 = vcvtmq_s64_f64(vmaxnmq_f64(v14, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v16 = vuzp1q_s32(v19, vsubq_s64(vcvtpq_s64_f64(v18), v19));
      }
    }

    v30 = v16.i64[0];
    iosurface = CA::Render::create_iosurface(1, v16.u32[2], v16.u32[3], @"CA Whippet GetLayer", v5, v6);
    if (iosurface)
    {
      v21 = iosurface;
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v22 = malloc_type_zone_malloc(malloc_zone, 0x70uLL, 0x165299FDuLL);
      v23 = v22;
      if (v22)
      {
        CA::CG::IOSurfaceDrawable::IOSurfaceDrawable(v22, v21, 1, 8194, Info[4], v30, HIDWORD(v30), 0, 0);
        CFRelease(v21);
        v24 = *(v23 + 9);
        if (!v24)
        {
          v24 = (*(*v23 + 80))(v23);
          *(v23 + 9) = v24;
          if (!v24)
          {
LABEL_17:
            operator new();
          }
        }
      }

      else
      {
        CFRelease(v21);
        v24 = MEMORY[0x48];
      }

      *(v24 + 192) = v7;
      goto LABEL_17;
    }

    return 0;
  }

  return v7;
}

CGColorSpace *CA::CG::ContextDelegate::set_colorspace(CA::CG::ContextDelegate *this, CGColorSpace *a2)
{
  result = *(this + 4);
  if (result != a2)
  {
    CGColorSpaceRelease(result);
    v5 = CGColorSpaceRetain(a2);
    v6 = *(this + 5);
    *(this + 4) = v5;
    if (v6)
    {
      CFRelease(v6);
      *(this + 5) = 0;
    }

    if (CGColorSpaceUsesExtendedRange(a2))
    {
      X::CFRef<CGColorSpace *>::operator=(this + 5, a2);
    }

    *&v7 = -1;
    *(&v7 + 1) = -1;
    *(this + 17) = v7;
    *(this + 18) = v7;
    *(this + 15) = v7;
    *(this + 16) = v7;
    *(this + 13) = v7;
    *(this + 14) = v7;
    *(this + 11) = v7;
    *(this + 12) = v7;
    *(this + 9) = v7;
    *(this + 10) = v7;
    *(this + 7) = v7;
    *(this + 8) = v7;
    *(this + 5) = v7;
    *(this + 6) = v7;
    *(this + 3) = v7;
    *(this + 4) = v7;
    result = *(this + 38);
    if (result)
    {

      return CA::ColorProgram::Cache::set_colorspace(result, a2);
    }
  }

  return result;
}

uint64_t CA::CG::AccelContextDelegate<CA::CG::IOSurfaceDrawable>::gpu_registry_id(uint64_t a1)
{
  v1 = *(*(a1 + 344) + 72);
  if (v1)
  {
    return *(v1 + 192);
  }

  else
  {
    return 0;
  }
}

uint64_t CA::CG::AccelContextDelegate<CA::CG::IOSurfaceDrawable>::queue(uint64_t a1)
{
  v1 = *(a1 + 344);
  if (!v1)
  {
    return 0;
  }

  result = v1[9];
  if (!result)
  {
    result = (*(*v1 + 80))(v1);
    v1[9] = result;
  }

  return result;
}

void CA::CG::IOSurfaceContextDelegate::~IOSurfaceContextDelegate(CA::CG::IOSurfaceContextDelegate *this)
{
  *this = &unk_1EF205298;
  v2 = *(this + 43);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (**v2)(v2);
    (*(*v2 + 16))(v2);
  }

  CA::CG::ContextDelegate::~ContextDelegate(this);

  JUMPOUT(0x1865EA9A0);
}

{
  *this = &unk_1EF205298;
  v2 = *(this + 43);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (**v2)(v2);
    (*(*v2 + 16))(v2);
  }

  CA::CG::ContextDelegate::~ContextDelegate(this);
}

void CA::CG::ContextDelegate::~ContextDelegate(CGColorSpaceRef *this)
{
  *this = &unk_1EF1FC9A0;
  CGColorSpaceRelease(this[4]);
  v2 = this[42];
  if (v2)
  {
    do
    {
      v3 = v2[1];
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = this[38];
  if (v4)
  {
    CA::ColorProgram::Cache::~Cache(this[38]);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v4);
  }

  v5 = this[41];
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = this[40];
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    CA::CG::ClipStack::destroy_clip_stack(v6);
  }

  v7 = this[5];
  if (v7)
  {
    CFRelease(v7);
  }
}

void CA::CG::AccelContextDelegate<CA::CG::IOSurfaceDrawable>::~AccelContextDelegate(CA::CG::ContextDelegate *this)
{
  *this = &unk_1EF205298;
  v2 = *(this + 43);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (**v2)(v2);
    (*(*v2 + 16))(v2);
  }

  CA::CG::ContextDelegate::~ContextDelegate(this);

  JUMPOUT(0x1865EA9A0);
}

{
  *this = &unk_1EF205298;
  v2 = *(this + 43);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (**v2)(v2);
    (*(*v2 + 16))(v2);
  }

  CA::CG::ContextDelegate::~ContextDelegate(this);
}

uint64_t CA::CG::ContextDelegate::end_transparency_layer_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Info = CGContextDelegateGetInfo();
  v7 = *(Info + 42);
  if (v7)
  {
    v8 = *v7;
    v9 = *(*v7 + 232);
    v10 = *(Info + 40);
    if (v10 != v9)
    {
      if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
      {
        CA::CG::ClipStack::destroy_clip_stack(v10);
      }

      if (v9)
      {
        atomic_fetch_add(v9, 1u);
      }

      *(Info + 40) = v9;
      v7 = *(Info + 42);
    }

    *(Info + 78) = *(v8 + 240);
    v11 = x_list_remove_head(v7);
    *(Info + 42) = v11;
    if (v11)
    {
      v12 = *v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = (*(*Info + 16))(Info);
    if (v13)
    {
      v14 = v13;
      v15 = *(v13 + 16);
      if (v15 != v12)
      {
        if (v15)
        {
          CA::CG::TransparencyLayer::unref(v15);
        }

        if (v12)
        {
          atomic_fetch_add(v12, 1u);
        }

        *(v14 + 16) = v12;
      }
    }

    v16 = (*(*Info + 16))(Info);
    if (v16)
    {
      v17 = v16;
      updated = CA::CG::ContextDelegate::update_style(Info);
      if (*(v8 + 244) > 1u || (v19 = *(v17 + 5)) == 0 || (v20 = updated) != 0 && *(v19 + 104) || CGGStateGetCompositeOperation() != 2 || (v21 = *(v17 + 5), *(v21 + 56) != 2) || (*(v21 + 101) & 0x10) != 0 || (v22 = *(v21 - 8), v22 != v8) || *(v21 + 72) || (v27 = *(v21 + 104)) != 0 && *(v27 + 72) || ((CA::CG::TransparencyLayer::unref(v22), (v28 = *(v17 + 2)) == 0) ? (*(v21 - 8) = 0) : ((atomic_fetch_add(v28, 1u), *(v21 - 8) = v28, v29 = *(v17 + 2), v30 = *(v29 + 244), v30 < 2) ? (v31 = v30 + 1) : (v31 = 2), *(v29 + 244) = v31), (v32 = *(v17 + 5)) == 0))
      {
        v23 = CA::CG::Queue::alloc(v17, 120);
        if (v23)
        {
          v24 = v23;
          v25 = CA::CG::DrawOp::DrawOp(v23, Info, a2, a3, 0, 0x2000);
          *v25 = &unk_1EF202600;
          atomic_fetch_add(v8, 1u);
          v25[14] = v8;
          CA::CG::ContextDelegate::submit(Info, v17, v24, a2, a3);
        }
      }

      else
      {
        v33 = CA::CG::ContextDelegate::clip_stack(Info);
        CA::CG::DrawOp::set_clip_stack(v32, v33);
        v34 = v32[13];
        if (v34)
        {
          CA::CG::DrawOp::set_clip_stack(v34, v33);
        }

        CGGStateGetAlpha();
        v36 = v35;
        if (v36 != 1.0)
        {
          v32[11] = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v32[11]), v36));
        }

        if (v20)
        {
          CA::CG::ContextDelegate::resolve_style(Info, v32, a2, a3, v20);
        }
      }
    }

    CA::CG::TransparencyLayer::unref(v8);
  }

  return a1;
}

void CA::CG::DrawOp::set_clip_stack(CA::CG::DrawOp *this, atomic_uint *a2)
{
  v3 = *(this + 9);
  if (v3 != a2)
  {
    if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      CA::CG::ClipStack::destroy_clip_stack(v3);
    }

    if (a2)
    {
      atomic_fetch_add(a2, 1u);
    }

    *(this + 9) = a2;
  }
}

uint64_t CA::CG::ContextDelegate::begin_transparency_layer_(uint64_t a1, float64_t a2, float64_t a3, int32x4_t a4, float64_t a5)
{
  v89 = *MEMORY[0x1E69E9840];
  Info = CGContextDelegateGetInfo();
  v8 = a2;
  v7 = a3;
  v10 = a4;
  v9 = a5;
  v11 = Info;
  v87.f64[0] = a2;
  v87.f64[1] = a3;
  *&v88.f64[0] = a4.i64[0];
  v88.f64[1] = a5;
  if (*a4.i64 < 0.0)
  {
    v8 = *a4.i64 + a2;
    *v10.i64 = -*a4.i64;
    v87.f64[0] = *a4.i64 + a2;
    v88.f64[0] = -*a4.i64;
  }

  if (a5 < 0.0)
  {
    v7 = a5 + a3;
    v9 = -a5;
    v87.f64[1] = a5 + a3;
    v88.f64[1] = -a5;
  }

  if (*v10.i64 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *v10.i64;
  }

  if (v12 < 1.79769313e308)
  {
    v82 = *v10.i64;
    v85 = v9;
    v78 = v8;
    v80 = v7;
    CTM = CGGStateGetCTM();
    v14 = *(CTM + 16);
    v15 = vmlaq_n_f64(vmulq_n_f64(*CTM, v78), v14, v80);
    v16 = vmulq_n_f64(*CTM, v82);
    v17 = vaddq_f64(v15, v16);
    v18 = vminnmq_f64(v15, v17);
    v10 = vmaxnmq_f64(v15, v17);
    v19 = vmlaq_n_f64(v15, v14, v85);
    v20 = vaddq_f64(v19, v16);
    v21 = vminnmq_f64(v18, vminnmq_f64(v19, v20));
    v87 = vaddq_f64(v21, *(CTM + 32));
    v88 = vsubq_f64(vmaxnmq_f64(v10, vmaxnmq_f64(v19, v20)), v21);
  }

  v22 = *(v11 + 336);
  if (v22)
  {
    v23 = *v22;
    v24 = v88;
    if (v23)
    {
      v25 = vclezq_f64(v88);
      if ((vorrq_s8(vdupq_laneq_s64(v25, 1), v25).u64[0] & 0x8000000000000000) == 0)
      {
        v26 = *(v23 + 24);
        v27 = vclezq_f64(v26);
        if ((vorrq_s8(vdupq_laneq_s64(v27, 1), v27).u64[0] & 0x8000000000000000) == 0)
        {
          v28 = *(v23 + 8);
          v29 = vaddq_f64(v87, v88);
          v30 = vaddq_f64(v28, v26);
          v31 = vmaxnmq_f64(v87, v28);
          goto LABEL_21;
        }

        goto LABEL_23;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v24 = v88;
  }

  v32 = *(v11 + 24);
  v33 = v32;
  if (v32 <= SHIDWORD(v32))
  {
    v33 = HIDWORD(v32);
  }

  v34 = vclezq_f64(v24);
  if ((vorrq_s8(vdupq_laneq_s64(v34, 1), v34).u64[0] & 0x8000000000000000) == 0)
  {
    v35.i64[0] = v32;
    v35.i64[1] = SHIDWORD(v32);
    v36 = vcvtq_f64_s64(v35);
    v37 = vdup_n_s32(v33 > 1073741822);
    v35.i64[0] = v37.u32[0];
    v35.i64[1] = v37.u32[1];
    v38 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v35, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v36);
    v39 = vclezq_f64(v38);
    v40 = vdupq_laneq_s64(v39, 1);
    if ((vorrq_s8(v40, v39).u64[0] & 0x8000000000000000) == 0)
    {
      v41 = *(v11 + 16);
      v42.i64[0] = v41;
      v42.i64[1] = SHIDWORD(v41);
      v40.i32[0] = v33;
      v10.i32[0] = 1073741822;
      v43 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v40, v10), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v42));
      v29 = vaddq_f64(v87, v24);
      v30 = vaddq_f64(v43, v38);
      v31 = vmaxnmq_f64(v87, v43);
LABEL_21:
      v44 = vsubq_f64(vminnmq_f64(v29, v30), v31);
      v45 = vclezq_f64(v44);
      if ((vorrq_s8(vdupq_laneq_s64(v45, 1), v45).u64[0] & 0x8000000000000000) == 0)
      {
        v86 = v44;
        v87 = v31;
        v88 = v44;
        goto LABEL_25;
      }
    }

LABEL_23:
    v88 = 0uLL;
    v86 = 0u;
    goto LABEL_25;
  }

LABEL_24:
  v86 = v24;
LABEL_25:
  v46 = CA::CG::ContextDelegate::clip_stack(v11);
  if (v46)
  {
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    if (v47 <= v48)
    {
      v49 = *(v46 + 52);
    }

    else
    {
      v49 = *(v46 + 48);
    }

    v50.f64[0] = v47;
    v51 = v48;
    if (v49 > 1073741822)
    {
      v50.f64[0] = 1.79769313e308;
      v51 = 1.79769313e308;
    }

    if (fmax(v50.f64[0], v51) < 1.79769313e308)
    {
      v52 = vclezq_f64(v86);
      if ((vorrq_s8(vdupq_laneq_s64(v52, 1), v52).u64[0] & 0x8000000000000000) == 0)
      {
        v50.f64[1] = v51;
        v53 = vclezq_f64(v50);
        v54 = vdupq_laneq_s64(v53, 1);
        v55 = vorrq_s8(v54, v53);
        if (v55.i64[0] < 0 || (v55.i32[0] = 1073741822, v54.i32[0] = v49, v56 = vdupq_lane_s32(*&vcgtq_s32(v54, v55), 0), v57 = *(v46 + 40), v58.i64[0] = v57, v58.i64[1] = SHIDWORD(v57), v59 = vbslq_s8(v56, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v58)), v60 = vaddq_f64(v59, v50), v61 = vmaxnmq_f64(v87, v59), v62 = vsubq_f64(vminnmq_f64(vaddq_f64(v87, v86), v60), v61), v63 = vclezq_f64(v62), (vorrq_s8(vdupq_laneq_s64(v63, 1), v63).u64[0] & 0x8000000000000000) != 0))
        {
          v88 = 0uLL;
          v86 = 0u;
        }

        else
        {
          v86 = v62;
          v87 = v61;
          v88 = v62;
        }
      }
    }
  }

  v83 = v87;
  updated = CA::CG::ContextDelegate::update_style(v11);
  if (updated)
  {
    (*(*updated + 24))(updated, &v87);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v65 = malloc_type_zone_malloc(malloc_zone, 0xF8uLL, 0x165299FDuLL);
  v66 = v65;
  if (v65)
  {
    v67 = *(v11 + 320);
    v68 = *(v11 + 312);
    *v65 = 0;
    v69 = v88;
    *(v65 + 8) = v87;
    *(v65 + 24) = v69;
    *(v65 + 40) = v83;
    *(v65 + 56) = v86;
    *(v65 + 9) = 0;
    *(v65 + 10) = 0;
    if (v67)
    {
      atomic_fetch_add(v67, 1u);
    }

    *(v65 + 29) = v67;
    *(v65 + 60) = v68;
    *(v65 + 122) = 256;
    v65[246] = 0;
    *v65 = 1;
    *(v65 + 21) = 0x3C003C003C003C00;
    *(v65 + 23) = 0;
    *(v65 + 24) = 0;
    *(v65 + 22) = 0;
    v70 = *(v65 + 108);
    *(v65 + 26) = 0;
    *(v65 + 17) = 0;
    *(v65 + 18) = 0;
    *(v65 + 50) = 1065353216;
    *(v65 + 19) = 0;
    *(v65 + 20) = &CA::identity_transform;
    *(v65 + 18) = v65 + 88;
    *(v65 + 108) = v70 & 0xF800 | 0x503;
    v71 = *(v11 + 336);
    v72 = v66;
  }

  else
  {
    v71 = *(v11 + 336);
    v72 = 0;
  }

  *(v11 + 336) = x_list_prepend(v71, v72);
  v73 = (*(*v11 + 16))(v11);
  if (v73)
  {
    v74 = v73;
    v75 = *(v73 + 16);
    if (v75 != v66)
    {
      if (v75)
      {
        CA::CG::TransparencyLayer::unref(v75);
      }

      if (v66)
      {
        atomic_fetch_add(v66, 1u);
      }

      *(v74 + 16) = v66;
    }
  }

  return a1;
}

uint64_t CA::CG::ContextDelegate::operation_(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v25[2] = *MEMORY[0x1E69E9840];
  Info = CGContextDelegateGetInfo();
  if (CFEqual(a4, @"kCGContextFlush"))
  {
    v8 = (*(*Info + 16))(Info);
    if (v8)
    {
      v9 = 3;
LABEL_7:
      CA::CG::Queue::flush(v8, v9, 1);
    }
  }

  else
  {
    if (!CFEqual(a4, @"kCGContextSynchronize"))
    {
      if (CFEqual(a4, @"kCGContextSynchronizeAttributes"))
      {
        v11 = (*(*Info + 16))(Info);
        if (!v11)
        {
          return 0;
        }

        v12 = v11;
        CGGStateGetEDRTargetHeadroom();
        v25[0] = v12;
        v25[1] = v13;
        if (CA::CG::Queue::queue(void)::once != -1)
        {
          dispatch_once_f(&CA::CG::Queue::queue(void)::once, 0, CA::CG::Queue::create_queue);
        }

        v14 = CA::CG::Queue::_queue;
        v15 = CA::CG::Queue::synchronize_attributes_callback;
        v16 = v25;
      }

      else
      {
        if (!CFEqual(a4, @"kCGContextWait"))
        {
          if (CFEqual(a4, @"kCGContextClear"))
          {
            v19 = (*(*Info + 16))(Info);
            if (!v19)
            {
              return 0;
            }

            v20 = v19;
            Copy = CGGStateCreateCopy();
            if (!Copy)
            {
              return 0;
            }
          }

          else
          {
            if (!CFEqual(a4, @"kCGContextErase"))
            {
              return 0;
            }

            v22 = (*(*Info + 16))(Info);
            if (!v22)
            {
              return 0;
            }

            v20 = v22;
            Copy = CGGStateCreateCopy();
            if (!Copy)
            {
              return 0;
            }
          }

          v23 = Copy;
          CGGStateSetCompositeOperation();
          v24 = CA::CG::ContextDelegate::fill_rects(Info, v20, a2, v23, 0, MEMORY[0x1E695F040], 1uLL, 1, 1);
          CA::CG::ContextDelegate::submit(Info, v20, v24, a2, a3);
          CGGStateRelease();
          return 0;
        }

        v17 = (*(*Info + 16))(Info);
        if (!v17)
        {
          return 0;
        }

        v18 = v17;
        CA::CG::Queue::flush_queue(v17);
        if (CA::CG::Queue::queue(void)::once != -1)
        {
          dispatch_once_f(&CA::CG::Queue::queue(void)::once, 0, CA::CG::Queue::create_queue);
        }

        v14 = CA::CG::Queue::_queue;
        v15 = CA::CG::Queue::finish_callback;
        v16 = v18;
      }

      dispatch_sync_f(v14, v16, v15);
      return 0;
    }

    v8 = (*(*Info + 16))(Info);
    if (v8)
    {
      v9 = 2;
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t CA::CG::ContextDelegate::draw_image_from_rect_(double a1, double a2, double a3, double a4, double a5, double a6, float64x2_t a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, CGImage *AlternateImage)
{
  v56 = *MEMORY[0x1E69E9840];
  *&v53 = a1;
  *(&v53 + 1) = a2;
  v54 = a3;
  v55 = a4;
  Info = CGContextDelegateGetInfo();
  v16 = (*(*Info + 16))(Info);
  if (v16)
  {
    v17 = v16;
    if (CGImageIsMask(AlternateImage))
    {
      FillColor = CGGStateGetFillColor();
    }

    else
    {
      FillColor = 0;
    }

    Width = CGImageGetWidth(AlternateImage);
    Height = CGImageGetHeight(AlternateImage);
    *v21.i64 = a5;
    *&v21.i64[1] = a6;
    v22.f64[0] = 0.0;
    v23.i64[0] = *&a7.f64[0];
    *&v23.i64[1] = a8;
    v24 = vdupq_lane_s64(vcgtq_f64(v22, a7).i64[0], 0);
    *&v25.i64[1] = a8;
    *v25.i64 = -a7.f64[0];
    v26 = vbslq_s8(v24, v25, v23);
    *&v25.i64[1] = a6;
    *v25.i64 = a7.f64[0] + a5;
    v27 = vbslq_s8(v24, v25, v21);
    if (a8 < 0.0)
    {
      v27.f64[1] = a8 + a6;
      v26.f64[1] = -a8;
    }

    v28 = vceqzq_f64(v26);
    v29 = vorrq_s8(vdupq_laneq_s64(v28, 1), v28).u64[0];
    v30 = 0uLL;
    if ((v29 & 0x8000000000000000) == 0)
    {
      v31 = vceqq_f64(v26, v26);
      if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v31), 1), v31).u64[0] & 0x8000000000000000) == 0)
      {
        v32 = vcvtmq_s64_f64(vmaxnmq_f64(v27, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v30 = vuzp1q_s32(v32, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v27, v26), vdupq_n_s64(0x41C0000000000000uLL))), v32));
      }
    }

    v33 = vextq_s8(v30, v30, 8uLL).u64[0];
    v34 = vclez_s32(v33);
    if ((vpmax_u32(v34, v34).u32[0] & 0x80000000) == 0)
    {
      v35 = vclez_s32(__PAIR64__(Height, Width));
      if ((vpmax_u32(v35, v35).u32[0] & 0x80000000) == 0)
      {
        v36 = vadd_s32(*v30.i8, v33);
        v37 = vmax_s32(*v30.i8, 0);
        v38 = vsub_s32(vmin_s32(v36, __PAIR64__(Height, Width)), v37);
        v39 = vclez_s32(v38);
        if ((vpmax_u32(v39, v39).u32[0] & 0x80000000) == 0)
        {
          if (v38.i32[0] == Width && v38.i32[1] == Height)
          {
            if (CGImageGetEPSRep())
            {
              AlternateImage = CGImageEPSRepGetAlternateImage();
            }

            v44 = CA::CG::Queue::alloc(v17, 168);
            v42 = v44;
            if (v44)
            {
              CA::CG::DrawImage::DrawImage(v44, Info, a10, a11, FillColor, &v53, AlternateImage);
            }
          }

          else
          {
            v49 = v38;
            v51 = v37;
            v41 = CA::CG::Queue::alloc(v17, 184);
            v42 = v41;
            if (v41)
            {
              *&v43 = v51;
              *(&v43 + 1) = v49;
              v52 = v43;
              CA::CG::DrawImage::DrawImage(v41, Info, a10, a11, FillColor, &v53, AlternateImage);
              *v42 = &unk_1EF204FC8;
              *(v42 + 168) = v52;
            }
          }

          CA::CG::ContextDelegate::submit(Info, v17, v42, a10, a11);
        }
      }
    }
  }

  return 0;
}

uint64_t CA::CG::DrawImage::DrawImage(uint64_t a1, const double *a2, uint64_t a3, uint64_t a4, CGColor *a5, _OWORD *a6, CGImage *a7)
{
  v10 = CA::CG::DrawOp::DrawOp(a1, a2, a3, a4, a5, 0);
  *v10 = &unk_1EF204EF8;
  v10[14] = 0;
  v11 = (v10 + 14);
  InterpolationQuality = CGGStateGetInterpolationQuality();
  if (InterpolationQuality)
  {
    v13 = InterpolationQuality;
  }

  else
  {
    v13 = 4;
  }

  MinInterpolationQuality = CGRenderingStateGetMinInterpolationQuality();
  if (v13 <= MinInterpolationQuality)
  {
    v15 = MinInterpolationQuality;
  }

  else
  {
    v15 = v13;
  }

  if (MinInterpolationQuality)
  {
    v13 = v15;
  }

  MaxInterpolationQuality = CGRenderingStateGetMaxInterpolationQuality();
  if (v13 >= MaxInterpolationQuality)
  {
    v17 = MaxInterpolationQuality;
  }

  else
  {
    v17 = v13;
  }

  if (!MaxInterpolationQuality)
  {
    v17 = v13;
  }

  *(a1 + 121) = v17;
  CGGStateGetEDRTargetHeadroom();
  *(a1 + 124) = v18;
  *(a1 + 120) = CGGStateGetContentToneMappingInfo();
  X::CFRef<CGColorSpace *>::operator=(v11, v19);
  *(a1 + 128) = CGImageRetain(a7);
  v20 = a6[1];
  *(a1 + 136) = *a6;
  *(a1 + 152) = v20;
  v21 = *(a1 + 100);
  if ((v21 & 2) == 0)
  {
    *(a1 + 100) = v21 | 0x2000;
  }

  return a1;
}

uint64_t CA::CG::ContextDelegate::draw_images_(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, CGImageRef *a5, _OWORD *a6, uint64_t a7)
{
  if (a7)
  {
    v7 = a7;
    Info = CGContextDelegateGetInfo();
    v12 = (*(*Info + 16))(Info);
    if (v12)
    {
      v13 = v12;
      v14 = a6;
      v34 = v12;
      v35 = Info;
      do
      {
        if (CGImageIsMask(*a5))
        {
          FillColor = CGGStateGetFillColor();
        }

        else
        {
          FillColor = 0;
        }

        v16 = *a5;
        v17 = CA::CG::Queue::alloc(v13, 200);
        if (v17)
        {
          v18 = v17;
          if (a6)
          {
            v19 = v14;
          }

          else
          {
            v19 = a4;
          }

          v20 = CA::CG::DrawOp::DrawOp(v17, Info, a2, a3, FillColor, 0);
          *v20 = &unk_1EF205098;
          v20[14] = 0;
          v21 = (v20 + 14);
          InterpolationQuality = CGGStateGetInterpolationQuality();
          if (InterpolationQuality)
          {
            v23 = InterpolationQuality;
          }

          else
          {
            v23 = 4;
          }

          MinInterpolationQuality = CGRenderingStateGetMinInterpolationQuality();
          if (v23 <= MinInterpolationQuality)
          {
            v25 = MinInterpolationQuality;
          }

          else
          {
            v25 = v23;
          }

          if (MinInterpolationQuality)
          {
            v23 = v25;
          }

          MaxInterpolationQuality = CGRenderingStateGetMaxInterpolationQuality();
          if (v23 >= MaxInterpolationQuality)
          {
            v27 = MaxInterpolationQuality;
          }

          else
          {
            v27 = v23;
          }

          if (!MaxInterpolationQuality)
          {
            v27 = v23;
          }

          *(v18 + 121) = v27;
          CGGStateGetEDRTargetHeadroom();
          *(v18 + 124) = v28;
          *(v18 + 120) = CGGStateGetContentToneMappingInfo();
          X::CFRef<CGColorSpace *>::operator=(v21, v29);
          *(v18 + 128) = CGImageRetain(v16);
          v30 = a4[1];
          *(v18 + 136) = *a4;
          *(v18 + 152) = v30;
          v31 = v19[1];
          *(v18 + 168) = *v19;
          *(v18 + 184) = v31;
          v32 = *(v18 + 100);
          if ((v32 & 2) == 0)
          {
            *(v18 + 100) = v32 | 0x2000;
          }

          v13 = v34;
          Info = v35;
          CA::CG::ContextDelegate::submit(v35, v34, v18, a2, a3);
        }

        v14 += 2;
        a4 += 2;
        ++a5;
        --v7;
      }

      while (v7);
    }
  }

  return 0;
}

uint64_t CA::CG::ContextDelegate::draw_radial_gradient_(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, char a11)
{
  Info = CGContextDelegateGetInfo();
  v22 = (*(*Info + 16))(Info);
  if (v22)
  {
    v23 = v22;
    v24 = CA::CG::Queue::alloc(v22, 176);
    if (v24)
    {
      v25 = v24;
      v26 = CA::CG::DrawGradient::DrawGradient(v24, Info, a8, a9, a10, a11);
      *v26 = &unk_1EF203688;
      *(v26 + 128) = a1;
      *(v26 + 136) = a2;
      *(v26 + 144) = a4;
      *(v26 + 152) = a5;
      *(v26 + 160) = a3;
      *(v26 + 168) = a6;
      CA::CG::ContextDelegate::submit(Info, v23, v25, a8, a9);
    }
  }

  return 0;
}

uint64_t CA::CG::ContextDelegate::draw_linear_gradient_(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8, char a9)
{
  Info = CGContextDelegateGetInfo();
  v18 = (*(*Info + 16))(Info);
  if (v18)
  {
    v19 = v18;
    v20 = CA::CG::Queue::alloc(v18, 160);
    if (v20)
    {
      v21 = v20;
      v22 = CA::CG::DrawGradient::DrawGradient(v20, Info, a6, a7, a8, a9);
      *v22 = &unk_1EF2035C0;
      *(v22 + 128) = a1;
      *(v22 + 136) = a2;
      *(v22 + 144) = a3;
      *(v22 + 152) = a4;
      if (CGGradientGetLocationCount() <= 0x2000)
      {
        ColorSpace = CGGradientGetColorSpace();
        if (CGColorSpaceGetModel(ColorSpace) <= kCGColorSpaceModelRGB)
        {
          *(v21 + 100) |= 0x4000000u;
        }
      }

      v24 = *(v21 + 56);
      v25 = v24 > 9;
      v26 = (1 << v24) & 0x29B;
      if (!v25 && v26 != 0)
      {
        v28 = *(v21 + 100);
        if ((v28 & 0x4000000) == 0 && (v28 & 0x3000000) != 0x3000000)
        {
          *(v21 + 100) = v28 | 0x100;
        }
      }

      CA::CG::ContextDelegate::submit(Info, v19, v21, a6, a7);
    }
  }

  return 0;
}

uint64_t CA::CG::ContextDelegate::draw_shading_(uint64_t a1, uint64_t a2, uint64_t a3, CGShading *a4)
{
  if (CGShadingGetType())
  {
    Info = CGContextDelegateGetInfo();
    v8 = (*(*Info + 16))(Info);
    if (v8)
    {
      v9 = v8;
      v10 = CA::CG::Queue::alloc(v8, 120);
      if (v10)
      {
        v11 = v10;
        *CA::CG::DrawOp::DrawOp(v10, Info, a2, a3, 0, 10240) = &unk_1EF203430;
        *(v11 + 112) = CGShadingRetain(a4);
        Type = CGShadingGetType();
        if ((Type - 1) <= 1)
        {
          v13 = *(v11 + 56);
          v14 = v13 > 9;
          v15 = (1 << v13) & 0x29B;
          if (!v14 && v15 != 0 && Type == 1)
          {
            Descriptor = CGShadingGetDescriptor();
            if (*(Descriptor + 16) != 1 || (*(Descriptor + 40) & 1) == 0)
            {
              *(v11 + 100) |= 0x100u;
            }
          }
        }

        CA::CG::ContextDelegate::submit(Info, v9, v11, a2, a3);
      }
    }
  }

  else
  {
    CGShadingDrawInContextDelegate();
  }

  return 0;
}

uint64_t CA::CG::ContextDelegate::draw_glyphs_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 *a5, __int128 *a6, unint64_t a7)
{
  TextDrawingMode = CGGStateGetTextDrawingMode();
  if (TextDrawingMode == 3)
  {
    return 0;
  }

  v14 = TextDrawingMode;
  Info = CGContextDelegateGetInfo();
  v16 = (*(*Info + 16))(Info);
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  if ((v14 & 0xFFFFFFFD) == 0)
  {
    FillColor = CGGStateGetFillColor();
    v18 = CA::CG::Queue::alloc(v17, 18 * a7 + 192);
    v19 = v18;
    if (a7)
    {
      v20 = v18 + 24;
      v21 = &v18[2 * a7 + 24];
      v22 = a5;
      v23 = a6;
      v24 = a7;
      do
      {
        v25 = *v22++;
        *v21 = v25;
        v21 = (v21 + 2);
        v26 = *v23++;
        *v20++ = v26;
        --v24;
      }

      while (v24);
      v27 = a7;
    }

    else
    {
      if (!v18)
      {
        goto LABEL_11;
      }

      v27 = 0;
    }

    CA::CG::DrawGlyphs::DrawGlyphs(v18, Info, a2, a3, FillColor, a4, v27);
    *v19 = &unk_1EF2039C0;
LABEL_11:
    v28 = *(v17 + 5);
    if (v28)
    {
      if (!*(v28 + 104))
      {
        v66 = *(v17 + 5);
        if (!CGGStateGetStyle() && (*(*v66 + 88))(v66, v19) && CA::CG::Queue::cancel_and_grow(v17, v19, v66, 18 * a7))
        {
          v30 = *a4;
          v29 = *(a4 + 8);
          v32 = *(a4 + 16);
          v31 = *(a4 + 24);
          v33 = *(a4 + 32);
          v34 = *(a4 + 40);
          v19 = v66;
          v35 = *(v66 + 21);
          v36 = *(v66 + 22);
          v37 = *(v66 + 23);
          if (v37 - 1 >= 0)
          {
            v38 = (v66 + 18 * v37 + 190);
            v39 = *(v66 + 23);
            do
            {
              v38[8 * a7] = *v38;
              --v38;
              --v39;
            }

            while (v39);
          }

          v40 = v37 + a7;
          if (a7)
          {
            v41 = v34 - v36;
            v42 = v35 - v33;
            v43 = 1.0 / -(v32 * v29 - v31 * v30);
            v44 = (v41 * v30 + v42 * v29) * v43;
            v46.f64[0] = (v41 * v32 + v42 * v31) * v43;
            v45 = (v66 + 16 * v37 + 192);
            v46.f64[1] = v44;
            v47 = (v66 + 18 * v37 + 16 * a7 + 192);
            v48 = a5;
            v49 = a6;
            v50 = a7;
            do
            {
              v51 = *v48++;
              *v47++ = v51;
              v52 = *v49++;
              *&v53 = *&vsubq_f64(v52, v46);
              *(&v53 + 1) = *&vaddq_f64(v52, v46).f64[1];
              *v45++ = v53;
              --v50;
            }

            while (v50);
          }

          *(v66 + 23) = v40;
        }
      }
    }

    CA::CG::ContextDelegate::submit(Info, v17, v19, a2, a3);
  }

  if ((v14 - 1) <= 1)
  {
    StrokeColor = CGGStateGetStrokeColor();
    if (CGColorGetAlpha(StrokeColor) != 0.0 || (CompositeOperation = CGGStateGetCompositeOperation(), CompositeOperation <= 9) && ((0x164u >> CompositeOperation) & 1) == 0)
    {
      v56 = CA::CG::Queue::alloc(v17, 18 * a7 + 232);
      v57 = v56;
      if (a7)
      {
        v58 = v56 + 29;
        v59 = &v56[2 * a7 + 29];
        v60 = a7;
        do
        {
          v61 = *a5++;
          *v59 = v61;
          v59 = (v59 + 2);
          v62 = *a6++;
          *v58++ = v62;
          --v60;
        }

        while (v60);
        goto LABEL_34;
      }

      if (v56)
      {
        a7 = 0;
LABEL_34:
        v63 = CA::CG::DrawGlyphs::DrawGlyphs(v56, Info, a2, a3, StrokeColor, a4, a7);
        *v63 = &unk_1EF203A88;
        CA::CG::StrokeState::StrokeState((v63 + 24));
        CA::CG::ContextDelegate::submit(Info, v17, v57, a2, a3);
      }
    }
  }

  return 0;
}