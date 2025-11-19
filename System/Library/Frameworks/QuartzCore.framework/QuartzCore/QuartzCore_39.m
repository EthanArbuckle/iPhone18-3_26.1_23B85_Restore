char *CA::Render::ImageProvider::show(uint64_t a1, X::Stream *this, int a3, uint64_t a4)
{
  v5 = *(a1 + 20);
  if (a4)
  {
    return X::Stream::printf(this, "<image-provider [%d %d]>", *(a1 + 16), v5);
  }

  X::Stream::printf(this, "(image-provider [%d %d] [%d %d] [%d %d]", *(a1 + 16), v5, *(a1 + 112), *(a1 + 116), *(a1 + 120), *(a1 + 124));
  if (*(a1 + 136))
  {
    v9 = (a3 + 1);
    X::Stream::printf(this, "\n%*s", 2 * v9, "");
    X::Stream::printf(this, "(fillColor ");
    (*(**(a1 + 136) + 40))(*(a1 + 136), this, v9, a4);
    X::Stream::printf(this, ")");
  }

  else if (*(a1 + 128))
  {
    X::Stream::printf(this, "\n%*s", 2 * a3 + 2, "");
    X::Stream::printf(this, "(fillColor #%08x ");
  }

  return X::Stream::printf(this, ")");
}

void CA::Render::ImageProvider::~ImageProvider(CA::Render::ImageProvider *this)
{
  CA::Render::ImageProvider::~ImageProvider(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF1FA788;
  os_unfair_lock_lock(&CA::Render::ImageProvider::_provider_lock);
  v2 = 0;
  v3 = *(this + 20);
  v4 = 1 << *v3;
  do
  {
    for (i = *(*(v3 + 16) + 8 * v2); i; i = *i)
    {
      CA::Render::free_subimage(i[2], i[3]);
    }

    ++v2;
  }

  while (v2 != v4);
  os_unfair_lock_unlock(&CA::Render::ImageProvider::_provider_lock);
  x_hash_table_free(*(this + 20));
  v6 = *(this + 22);
  if (v6 != (this + 168))
  {
    do
    {
      v7 = *(v6 + 1);
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v6);
      v6 = v7;
    }

    while (v7 != (this + 168));
  }

  --dword_1ED4EAA98;
  *this = &unk_1EF1FC198;
  v8 = *(this + 17);
  if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v8 + 16))(v8);
  }

  CA::Render::Texture::~Texture(this);
}

void CA::Render::free_subimage(int a1, uint64_t *ptr)
{
  v3 = ptr[3];
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
    }

    v5 = *ptr;
    v4 = ptr[1];
    if (v4)
    {
      *v4 = v5;
    }

    if (v5)
    {
      v6 = (v5 + 8);
    }

    else
    {
      v6 = &CA::Render::subimage_head;
    }

    *v6 = v4;
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v7 = malloc_zone;

  malloc_zone_free(v7, ptr);
}

unint64_t CA::Render::key_hash(_DWORD *a1)
{
  v1 = ((a1[1] << 10) ^ (*a1 << 20)) ^ a1[2];
  v2 = (~(v1 << 32) + v1) ^ ((~(v1 << 32) + v1) >> 22);
  v3 = 9 * ((v2 + ~(v2 << 13)) ^ ((v2 + ~(v2 << 13)) >> 8));
  v4 = (v3 ^ (v3 >> 15)) + ~((v3 ^ (v3 >> 15)) << 27);
  return v4 ^ (v4 >> 31);
}

CA::Render::Texture *CA::Render::ImageProvider::create(CA::Render::Texture *this, CA::Render::Context *a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6, int a7, int a8, float a9, int a10, char a11, BOOL a12, int a13, unsigned int a14, CA::Render::Pattern *a15)
{
  if (a6 && a7 && ((a10 | a8) & 0x80000000) == 0)
  {
    v19 = a4 >= a5 ? a5 : a4;
    v20 = 32 - __clz(v19);
    v21 = v19 <= 1 ? 1 : v20;
    v22 = v21 + a10;
    if (!__OFADD__(v21, a10))
    {
      v26 = this;
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      this = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xE8uLL, 0xDEEC3011uLL);
      if (this)
      {
        v27 = this;
        if (v22 >= a8)
        {
          v22 = a8;
        }

        v28 = CA::Render::Texture::Texture(this, a4, a5);
        *(v28 + 28) = a6;
        *(v28 + 29) = a7;
        *(v28 + 30) = v22;
        *(v28 + 31) = a10;
        *(v28 + 32) = 0;
        *(v28 + 17) = 0;
        *(v28 + 12) = 24;
        ++dword_1ED4EAA98;
        *v28 = &unk_1EF1FA788;
        *(v28 + 144) = a11;
        *(v28 + 37) = a9;
        *(v28 + 38) = 0;
        *(v28 + 39) = a13;
        v29 = x_hash_table_new_(CA::Render::key_hash, CA::Render::key_compare, 0, 0, 0, 0);
        *(v27 + 25) = 0;
        *(v27 + 26) = 0;
        *(v27 + 27) = 0;
        *(v27 + 28) = 0x100000000;
        *(v27 + 20) = v29;
        *(v27 + 21) = v27 + 168;
        *(v27 + 22) = v27 + 168;
        if (*(v27 + 144) == 1)
        {
          *(v27 + 3) |= 0x1000u;
        }

        *(v27 + 23) = v26;
        *(v27 + 24) = a2;
        CA::Render::TiledTexture::set_fill_color(v27, a14, a15);

        return CA::Render::Context::set_object(v26, a2, a3, v27);
      }
    }
  }

  return this;
}

void CA::Render::ImageProvider::invalidate(CA::Render::ImageProvider *this, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a2 & ~(a2 >> 31);
  v8 = a3 & ~(a3 >> 31);
  v9 = *(this + 4);
  v10 = *(this + 5);
  if (((a2 & (a2 >> 31)) + a4 + v7) <= v9)
  {
    v11 = (a2 & (a2 >> 31)) + a4;
  }

  else
  {
    v11 = v9 - v7;
  }

  if (((a3 & (a3 >> 31)) + a5 + v8) <= v10)
  {
    v12 = (a3 & (a3 >> 31)) + a5;
  }

  else
  {
    v12 = v10 - v8;
  }

  if (v11 >= 1 && v12 >= 1)
  {
    v14 = a7;
    v33 = 0;
    v34 = 0;
    v32[1] = a7;
    os_unfair_lock_lock(&CA::Render::ImageProvider::_provider_lock);
    v17 = *(this + 57);
    if (a6 == -1 && (v14 & 1) == 0)
    {
      *(this + 57) = ++v17;
    }

    v18 = *(this + 28);
    v19 = *(this + 29);
    v20 = v7 / v18;
    v21 = v8 / v19;
    v22 = (v7 + v11 - 1) / v18;
    v32[0] = v17;
    LODWORD(v33) = a6;
    v23 = *(this + 31);
    v24 = (v8 + v12 - 1) / v19;
    if (v23 >= 1)
    {
      do
      {
        v20 *= 2;
        v21 *= 2;
        v22 = (2 * v22) | 1;
        v24 = (2 * v24) | 1;
        --v23;
      }

      while (v23);
    }

    v25 = 0;
    v32[2] = v20;
    v32[3] = v21;
    v32[4] = v22;
    v32[5] = v24;
    v26 = *(this + 20);
    v27 = 1 << *v26;
    do
    {
      for (i = *(*(v26 + 16) + 8 * v25); i; i = *i)
      {
        CA::Render::invalidate_callback(i[2], i[3], v32);
      }

      ++v25;
    }

    while (v25 != v27);
    v29 = v34;
    if (v34)
    {
      v30 = v34;
      do
      {
        x_hash_table_remove_ptr(*(this + 20), (v30 + 5));
        v30 = *v30;
      }

      while (v30);
      os_unfair_lock_unlock(&CA::Render::ImageProvider::_provider_lock);
      do
      {
        v31 = v29[3];
        if (v31)
        {
          if (atomic_fetch_add(v31 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v31 + 16))(v31);
          }
        }

        v29 = *v29;
      }

      while (v29);
    }

    else
    {
      os_unfair_lock_unlock(&CA::Render::ImageProvider::_provider_lock);
    }
  }
}

void CA::Render::invalidate_callback(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[3];
  if (!v3 || (*(a3 + 4) & 1) == 0)
  {
    v4 = *(a2 + 10);
    v5 = *(a3 + 24);
    if (v5 == -1 || v4 == v5)
    {
      v7 = *(a2 + 11);
      if (v7 >= *(a3 + 8) >> v4 && v7 <= *(a3 + 16) >> v4)
      {
        v8 = *(a2 + 12);
        if (v8 >= *(a3 + 12) >> v4 && v8 <= *(a3 + 20) >> v4)
        {
          *(a2 + 15) = *a3;
          *(a2 + 13) |= 0x10000u;
          if (v3)
          {
            if ((*(a3 + 4) & 2) != 0)
            {
              v10 = *a2;
              v9 = a2[1];
              if (v9)
              {
                *v9 = v10;
              }

              if (v10)
              {
                v11 = (v10 + 8);
              }

              else
              {
                v11 = &CA::Render::subimage_head;
              }

              *v11 = v9;
              *a2 = *(a3 + 32);
              *(a3 + 32) = a2;
            }
          }
        }
      }
    }
  }
}

void CA::Render::ImageProvider::set_image_size(CA::Render::ImageProvider *this, CA::Render::Context *a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v7 = CA::Render::Context::lookup_object(this, a2, a3, 0, 24, 0);
  if (v7)
  {
    v8 = v7;
    v10 = v7[4];
    v9 = v7[5];
    if (a4 != v10 || a5 != v9)
    {
      if (a4 <= v10)
      {
        v14 = a5 - v9;
        if (a5 > v9)
        {
          v12 = 0;
          v13 = v7[5];
          v15 = a4;
          goto LABEL_11;
        }
      }

      else
      {
        CA::Render::ImageProvider::invalidate(v7, v7[4], 0, a4 - v10, a5, -1, 0);
        if (a5 > v9)
        {
          CA::Render::ImageProvider::invalidate(v8, 0, v9, a5 - v9, a4, -1, 0);
          v7 = v8;
          v12 = v10;
          v13 = v9;
          v14 = a4 - v10;
          v15 = a5 - v9;
LABEL_11:
          CA::Render::ImageProvider::invalidate(v7, v12, v13, v14, v15, -1, 0);
        }
      }

      v8[4] = a4;
      v8[5] = a5;
    }
  }
}

CA::Render::TiledTexture *CA::Render::ImageProvider::set_fill_color(CA::Render::ImageProvider *this, CA::Render::Context *a2, uint64_t a3, int a4, Pattern *a5)
{
  result = CA::Render::Context::lookup_object(this, a2, a3, 0, 24, 0);
  if (result)
  {

    return CA::Render::TiledTexture::set_fill_color(result, a4, a5);
  }

  return result;
}

void CA::Render::ImageProvider::set_subimage(CA::Render::ImageProvider *this, CA::Render::Context *a2, uint64_t a3, int a4, int a5, int a6, CA::Render::Texture *a7, int a8, unsigned int a9)
{
  v14 = CA::Render::Context::lookup_object(this, a2, a3, 0, 24, 0);
  if (v14)
  {
    if (a7)
    {
      if (*(a7 + 12) == 24)
      {
        return;
      }

      v15 = a4;
      v16 = a5;
      v17 = a6;
      v18 = a7;
    }

    else
    {
      v15 = a4;
      v16 = a5;
      v17 = a6;
      v18 = 0;
    }

    CA::Render::ImageProvider::set_subimage(v14, v15, v16, v17, v18, a8, a9);
  }
}

void CA::Render::ImageProvider::invalidate(CA::Render::ImageProvider *this, CA::Render::Context *a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, unsigned int a9)
{
  v14 = CA::Render::Context::lookup_object(this, a2, a3, 0, 24, 0);
  if (v14)
  {

    CA::Render::ImageProvider::invalidate(v14, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t CA::Render::ImageProvider::needed_subimage(CA::Render::ImageProvider *this, CA::Render::Context *a2, uint64_t a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7)
{
  result = CA::Render::Context::lookup_object(this, a2, a3, 0, 24, 0);
  if (result)
  {
    v12 = result;
    os_unfair_lock_lock(&CA::Render::ImageProvider::_provider_lock);
    v13 = (v12 + 168);
    v14 = *(v12 + 176);
    if (v14 == v13)
    {
      os_unfair_lock_unlock(&CA::Render::ImageProvider::_provider_lock);
      return 0;
    }

    else
    {
      v16 = *v14;
      v15 = v14[1];
      *(v16 + 8) = v15;
      *v15 = v16;
      *v14 = v14;
      v14[1] = v14;
      os_unfair_lock_unlock(&CA::Render::ImageProvider::_provider_lock);
      *a4 = *(v14 + 4);
      *a5 = *(v14 + 5);
      *a6 = *(v14 + 6);
      *a7 = *(v14 + 8);
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v14);
      return 1;
    }
  }

  return result;
}

BOOL CARenderServerGetDebugOption(mach_port_name_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  ServerPort = a1;
  if (!a1)
  {
    ServerPort = CARenderServerGetServerPort(0);
    if (!ServerPort)
    {
      return 0;
    }
  }

  memset(&msg_4[16], 0, 28);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  *&msg_4[28] = a2;
  reply_port = mig_get_reply_port();
  *&msg_4[4] = ServerPort;
  *&msg_4[8] = reply_port;
  msg = 5395;
  *&msg_4[12] = 0x9D4200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v6 = *&msg_4[8];
  }

  else
  {
    v6 = reply_port;
  }

  v7 = mach_msg(&msg, 3, 0x24u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg_4[8]);
LABEL_28:
    v10 = 0;
    goto LABEL_29;
  }

  if (v7)
  {
    mig_dealloc_reply_port(*&msg_4[8]);
    goto LABEL_28;
  }

  if (*&msg_4[16] == 71)
  {
    v8 = 4294966988;
LABEL_27:
    mach_msg_destroy(&msg);
    goto LABEL_28;
  }

  if (*&msg_4[16] != 40358)
  {
    v8 = 4294966995;
    goto LABEL_27;
  }

  if (msg < 0)
  {
    goto LABEL_26;
  }

  if (*msg_4 != 40)
  {
    if (*msg_4 == 36)
    {
      if (*&msg_4[4])
      {
        v9 = 1;
      }

      else
      {
        v9 = *&msg_4[28] == 0;
      }

      if (v9)
      {
        v8 = 4294966996;
      }

      else
      {
        v8 = *&msg_4[28];
      }

      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (*&msg_4[4])
  {
LABEL_26:
    v8 = 4294966996;
    goto LABEL_27;
  }

  v8 = *&msg_4[28];
  if (*&msg_4[28])
  {
    goto LABEL_27;
  }

  v10 = *&msg_4[32] != 0;
LABEL_29:
  CAVerifyServerReturn(v8);
  if (!a1)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], ServerPort);
  }

  return v10;
}

uint64_t CARenderServerSetDebugOption(mach_port_name_t a1, int a2, int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a1;
  if (!a1)
  {
    result = CARenderServerGetServerPort(0);
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  memset(&msg[4], 0, 32);
  v14 = 0;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a2;
  LODWORD(v14) = a3;
  reply_port = mig_get_reply_port();
  *&msg[8] = v6;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x9D4300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = reply_port;
  }

  v10 = mach_msg(msg, 3, 0x28u, 0x2Cu, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    goto LABEL_21;
  }

  if (v10)
  {
    mig_dealloc_reply_port(*&msg[12]);
    goto LABEL_21;
  }

  if (*&msg[20] == 71)
  {
    v11 = 4294966988;
LABEL_20:
    mach_msg_destroy(msg);
    goto LABEL_21;
  }

  if (*&msg[20] != 40359)
  {
    v11 = 4294966995;
    goto LABEL_20;
  }

  v11 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_20;
  }

  if (*&msg[8])
  {
    goto LABEL_20;
  }

  v11 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_20;
  }

LABEL_21:
  result = CAVerifyServerReturn(v11);
  if (!a1)
  {
    v12 = *MEMORY[0x1E69E9A60];

    return mach_port_deallocate(v12, v6);
  }

  return result;
}

uint64_t CARenderServerClearDebugOptions(mach_port_name_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1;
  if (!a1)
  {
    result = CARenderServerGetServerPort(0);
    v2 = result;
    if (!result)
    {
      return result;
    }
  }

  v10 = 0;
  *&msg[4] = 0;
  *&msg[20] = 0u;
  reply_port = mig_get_reply_port();
  *&msg[8] = v2;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x9D4400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v5 = *&msg[12];
  }

  else
  {
    v5 = reply_port;
  }

  v6 = mach_msg(msg, 3, 0x18u, 0x2Cu, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    goto LABEL_21;
  }

  if (v6)
  {
    mig_dealloc_reply_port(*&msg[12]);
    goto LABEL_21;
  }

  if (*&msg[20] == 71)
  {
    v7 = 4294966988;
LABEL_20:
    mach_msg_destroy(msg);
    goto LABEL_21;
  }

  if (*&msg[20] != 40360)
  {
    v7 = 4294966995;
    goto LABEL_20;
  }

  v7 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_20;
  }

  if (*&msg[8])
  {
    goto LABEL_20;
  }

  v7 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_20;
  }

LABEL_21:
  result = CAVerifyServerReturn(v7);
  if (!a1)
  {
    v8 = *MEMORY[0x1E69E9A60];

    return mach_port_deallocate(v8, v2);
  }

  return result;
}

uint64_t CARenderServerClearColorDebugOptions(mach_port_name_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1;
  if (!a1)
  {
    result = CARenderServerGetServerPort(0);
    v2 = result;
    if (!result)
    {
      return result;
    }
  }

  v10 = 0;
  *&msg[4] = 0;
  *&msg[20] = 0u;
  reply_port = mig_get_reply_port();
  *&msg[8] = v2;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x9D4500000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v5 = *&msg[12];
  }

  else
  {
    v5 = reply_port;
  }

  v6 = mach_msg(msg, 3, 0x18u, 0x2Cu, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    goto LABEL_21;
  }

  if (v6)
  {
    mig_dealloc_reply_port(*&msg[12]);
    goto LABEL_21;
  }

  if (*&msg[20] == 71)
  {
    v7 = 4294966988;
LABEL_20:
    mach_msg_destroy(msg);
    goto LABEL_21;
  }

  if (*&msg[20] != 40361)
  {
    v7 = 4294966995;
    goto LABEL_20;
  }

  v7 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_20;
  }

  if (*&msg[8])
  {
    goto LABEL_20;
  }

  v7 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_20;
  }

LABEL_21:
  result = CAVerifyServerReturn(v7);
  if (!a1)
  {
    v8 = *MEMORY[0x1E69E9A60];

    return mach_port_deallocate(v8, v2);
  }

  return result;
}

uint64_t CARenderServerGetDebugFlags(mach_port_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ServerPort = a1;
  if (!a1)
  {
    ServerPort = CARenderServerGetServerPort(0);
    if (!ServerPort)
    {
      return 0;
    }
  }

  *&msg[1].msgh_remote_port = 0u;
  *&msg[0].msgh_id = 0u;
  msg[0].msgh_size = 0;
  reply_port = mig_get_reply_port();
  msg[0].msgh_remote_port = ServerPort;
  msg[0].msgh_local_port = reply_port;
  msg[0].msgh_bits = 5395;
  *&msg[0].msgh_voucher_port = 0x9D4600000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    msgh_local_port = msg[0].msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v5 = mach_msg(msg, 3, 0x18u, 0x30u, msgh_local_port, 0, 0);
  msgh_remote_port = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg[0].msgh_local_port);
LABEL_28:
    v8 = 0;
    goto LABEL_29;
  }

  if (v5)
  {
    mig_dealloc_reply_port(msg[0].msgh_local_port);
    goto LABEL_28;
  }

  if (msg[0].msgh_id == 71)
  {
    msgh_remote_port = 4294966988;
LABEL_27:
    mach_msg_destroy(msg);
    goto LABEL_28;
  }

  if (msg[0].msgh_id != 40362)
  {
    msgh_remote_port = 4294966995;
    goto LABEL_27;
  }

  if ((msg[0].msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_26;
  }

  if (msg[0].msgh_size != 40)
  {
    if (msg[0].msgh_size == 36)
    {
      if (msg[0].msgh_remote_port)
      {
        v7 = 1;
      }

      else
      {
        v7 = msg[1].msgh_remote_port == 0;
      }

      if (v7)
      {
        msgh_remote_port = 4294966996;
      }

      else
      {
        msgh_remote_port = msg[1].msgh_remote_port;
      }

      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (msg[0].msgh_remote_port)
  {
LABEL_26:
    msgh_remote_port = 4294966996;
    goto LABEL_27;
  }

  msgh_remote_port = msg[1].msgh_remote_port;
  if (msg[1].msgh_remote_port)
  {
    goto LABEL_27;
  }

  v8 = msg[1].msgh_local_port;
LABEL_29:
  CAVerifyServerReturn(msgh_remote_port);
  if (!a1)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], ServerPort);
  }

  return v8;
}

uint64_t CARenderServerSetDebugFlags(mach_port_name_t a1, int a2, int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a1;
  if (!a1)
  {
    result = CARenderServerGetServerPort(0);
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  memset(&msg[4], 0, 32);
  v14 = 0;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a2;
  LODWORD(v14) = a3;
  reply_port = mig_get_reply_port();
  *&msg[8] = v6;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x9D4700000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = reply_port;
  }

  v10 = mach_msg(msg, 3, 0x28u, 0x2Cu, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    goto LABEL_21;
  }

  if (v10)
  {
    mig_dealloc_reply_port(*&msg[12]);
    goto LABEL_21;
  }

  if (*&msg[20] == 71)
  {
    v11 = 4294966988;
LABEL_20:
    mach_msg_destroy(msg);
    goto LABEL_21;
  }

  if (*&msg[20] != 40363)
  {
    v11 = 4294966995;
    goto LABEL_20;
  }

  v11 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_20;
  }

  if (*&msg[8])
  {
    goto LABEL_20;
  }

  v11 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_20;
  }

LABEL_21:
  result = CAVerifyServerReturn(v11);
  if (!a1)
  {
    v12 = *MEMORY[0x1E69E9A60];

    return mach_port_deallocate(v12, v6);
  }

  return result;
}

float CARenderServerGetDebugValueFloat(mach_port_name_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  ServerPort = a1;
  if (!a1)
  {
    ServerPort = CARenderServerGetServerPort(0);
    if (!ServerPort)
    {
      return 0.0;
    }
  }

  memset(&msg_4[16], 0, 28);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  *&msg_4[28] = a2;
  reply_port = mig_get_reply_port();
  *&msg_4[4] = ServerPort;
  *&msg_4[8] = reply_port;
  msg = 5395;
  *&msg_4[12] = 0x9D4800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v6 = *&msg_4[8];
  }

  else
  {
    v6 = reply_port;
  }

  v7 = mach_msg(&msg, 3, 0x24u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg_4[8]);
LABEL_28:
    v10 = 0.0;
    goto LABEL_29;
  }

  if (v7)
  {
    mig_dealloc_reply_port(*&msg_4[8]);
    goto LABEL_28;
  }

  if (*&msg_4[16] == 71)
  {
    v8 = 4294966988;
LABEL_27:
    mach_msg_destroy(&msg);
    goto LABEL_28;
  }

  if (*&msg_4[16] != 40364)
  {
    v8 = 4294966995;
    goto LABEL_27;
  }

  if (msg < 0)
  {
    goto LABEL_26;
  }

  if (*msg_4 != 40)
  {
    if (*msg_4 == 36)
    {
      if (*&msg_4[4])
      {
        v9 = 1;
      }

      else
      {
        v9 = *&msg_4[28] == 0;
      }

      if (v9)
      {
        v8 = 4294966996;
      }

      else
      {
        v8 = *&msg_4[28];
      }

      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (*&msg_4[4])
  {
LABEL_26:
    v8 = 4294966996;
    goto LABEL_27;
  }

  v8 = *&msg_4[28];
  if (*&msg_4[28])
  {
    goto LABEL_27;
  }

  v10 = *&msg_4[32];
LABEL_29:
  CAVerifyServerReturn(v8);
  if (!a1)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], ServerPort);
  }

  return v10;
}

uint64_t CARenderServerSetDebugValueFloat(mach_port_name_t a1, int a2, float a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a1;
  if (!a1)
  {
    result = CARenderServerGetServerPort(0);
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  memset(&msg[4], 0, 32);
  v14 = 0;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a2;
  *&v14 = a3;
  reply_port = mig_get_reply_port();
  *&msg[8] = v6;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x9D4900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = reply_port;
  }

  v10 = mach_msg(msg, 3, 0x28u, 0x2Cu, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    goto LABEL_21;
  }

  if (v10)
  {
    mig_dealloc_reply_port(*&msg[12]);
    goto LABEL_21;
  }

  if (*&msg[20] == 71)
  {
    v11 = 4294966988;
LABEL_20:
    mach_msg_destroy(msg);
    goto LABEL_21;
  }

  if (*&msg[20] != 40365)
  {
    v11 = 4294966995;
    goto LABEL_20;
  }

  v11 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_20;
  }

  if (*&msg[8])
  {
    goto LABEL_20;
  }

  v11 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_20;
  }

LABEL_21:
  result = CAVerifyServerReturn(v11);
  if (!a1)
  {
    v12 = *MEMORY[0x1E69E9A60];

    return mach_port_deallocate(v12, v6);
  }

  return result;
}

void CARenderServerDebugBrightness(int a1, double a2)
{
  if (a1)
  {

    _CASDebugBrightness(a1, a2);
  }

  else
  {
    ServerPort = CARenderServerGetServerPort(0);
    if (ServerPort)
    {
      v4 = ServerPort;
      _CASDebugBrightness(ServerPort, a2);
      v5 = *MEMORY[0x1E69E9A60];

      mach_port_deallocate(v5, v4);
    }
  }
}

void CARenderServerDebugPreset(int a1, int a2)
{
  if (a1)
  {

    _CASDebugPreset(a1, a2);
  }

  else
  {
    ServerPort = CARenderServerGetServerPort(0);
    if (ServerPort)
    {
      v4 = ServerPort;
      _CASDebugPreset(ServerPort, a2);
      v5 = *MEMORY[0x1E69E9A60];

      mach_port_deallocate(v5, v4);
    }
  }
}

void CARenderServerDebugFrameInfo(int a1)
{
  if (a1)
  {

    _CASDebugFrameInfo(a1);
  }

  else
  {
    ServerPort = CARenderServerGetServerPort(0);
    if (ServerPort)
    {
      v2 = ServerPort;
      _CASDebugFrameInfo(ServerPort);
      v3 = *MEMORY[0x1E69E9A60];

      mach_port_deallocate(v3, v2);
    }
  }
}

void CARenderServerSetMessageFile()
{
  v2 = *MEMORY[0x1E69E9840];
  if (x_log_get_render(void)::once[0] != -1)
  {
    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
  }

  v0 = x_log_get_render(void)::log;
  if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_183AA6000, v0, OS_LOG_TYPE_ERROR, "CARenderServerSetMessageFile() is deprecated. Use libtrace tools instead.", v1, 2u);
  }
}

uint64_t CARenderServerSetDebugMessage(mach_port_name_t a1, char *__source, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a1;
  if (a1 || (result = CARenderServerGetServerPort(0), (v6 = result) != 0))
  {
    v8 = 0uLL;
    memset(v15, 0, sizeof(v15));
    if (__source)
    {
      strlcpy(v15, __source, 0x100uLL);
      v8 = 0uLL;
    }

    if ((a3 & 0xF) == 0)
    {
      a3 = -1;
    }

    *(v18 + 12) = v8;
    v17[14] = v8;
    v18[0] = v8;
    v17[12] = v8;
    v17[13] = v8;
    v17[10] = v8;
    v17[11] = v8;
    v17[8] = v8;
    v17[9] = v8;
    v17[6] = v8;
    v17[7] = v8;
    v17[4] = v8;
    v17[5] = v8;
    v17[2] = v8;
    v17[3] = v8;
    v17[0] = v8;
    v17[1] = v8;
    *msg = v8;
    *&msg[16] = v8;
    *&msg[24] = *MEMORY[0x1E69E99E0];
    if (MEMORY[0x1EEE9AC40])
    {
      v9 = mig_strncpy_zerofill(v17 + 8, v15, 256);
    }

    else
    {
      v9 = mig_strncpy(v17 + 8, v15, 256);
    }

    DWORD1(v17[0]) = v9;
    LODWORD(v17[0]) = 0;
    v10 = (v9 + 3) & 0xFFFFFFFC;
    *(v17 + v10 + 8) = a3;
    reply_port = mig_get_reply_port();
    *msg = 5395;
    *&msg[8] = __PAIR64__(reply_port, v6);
    *&msg[16] = 0x9D4D00000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(msg);
      v12 = *&msg[12];
    }

    else
    {
      v12 = reply_port;
    }

    v13 = mach_msg(msg, 3, v10 + 44, 0x2Cu, v12, 0, 0);
    v14 = v13;
    if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(*&msg[12]);
    }

    else if (v13)
    {
      mig_dealloc_reply_port(*&msg[12]);
    }

    else
    {
      if (*&msg[20] == 71)
      {
        v14 = 4294966988;
      }

      else if (*&msg[20] == 40369)
      {
        v14 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36)
        {
          v14 = LODWORD(v17[0]);
          if (!LODWORD(v17[0]))
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        v14 = 4294966995;
      }

      mach_msg_destroy(msg);
    }

LABEL_27:
    result = CAVerifyServerReturn(v14);
    if (!a1)
    {
      return mach_port_deallocate(*MEMORY[0x1E69E9A60], v6);
    }
  }

  return result;
}

uint64_t CARenderServerSetAXMatrix(mach_port_t a1, __int128 *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a1;
  if (a1 || (result = CARenderServerGetServerPort(0), (v4 = result) != 0))
  {
    v6 = a2[1];
    v13 = *a2;
    v14 = v6;
    v15 = *(a2 + 4);
    v12 = *MEMORY[0x1E69E99E0];
    reply_port = mig_get_reply_port();
    *&v11.msgh_bits = 5395;
    v11.msgh_remote_port = v4;
    v11.msgh_local_port = reply_port;
    *&v11.msgh_voucher_port = 0x9D4E00000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&v11);
      msgh_local_port = v11.msgh_local_port;
    }

    else
    {
      msgh_local_port = reply_port;
    }

    v9 = mach_msg(&v11, 3, 0x48u, 0x2Cu, msgh_local_port, 0, 0);
    v10 = v9;
    if ((v9 - 268435458) <= 0xE && ((1 << (v9 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(v11.msgh_local_port);
    }

    else if (v9)
    {
      mig_dealloc_reply_port(v11.msgh_local_port);
    }

    else
    {
      if (v11.msgh_id == 71)
      {
        v10 = 4294966988;
      }

      else if (v11.msgh_id == 40370)
      {
        v10 = 4294966996;
        if ((v11.msgh_bits & 0x80000000) == 0 && *&v11.msgh_size == 36)
        {
          v10 = v13;
          if (!v13)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        v10 = 4294966995;
      }

      mach_msg_destroy(&v11);
    }

LABEL_20:
    result = CAVerifyServerReturn(v10);
    if (!a1)
    {
      return mach_port_deallocate(*MEMORY[0x1E69E9A60], v4);
    }
  }

  return result;
}

void CARenderServerSetScreenTelemetryParameters()
{
  v2 = *MEMORY[0x1E69E9840];
  if (x_log_get_render(void)::once[0] != -1)
  {
    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
  }

  v0 = x_log_get_render(void)::log;
  if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_183AA6000, v0, OS_LOG_TYPE_ERROR, "CARenderServerSetScreenTelemetryParameters is deprecated!", v1, 2u);
  }
}

_BYTE *CARenderServerGetInfo(mach_port_name_t a1, int a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  ServerPort = a1;
  if (!a1)
  {
    ServerPort = CARenderServerGetServerPort(0);
    if (!ServerPort)
    {
      return 0;
    }
  }

  memset(&msg_4[16], 0, 44);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  *&msg_4[28] = a2;
  *&msg_4[32] = a3;
  reply_port = mig_get_reply_port();
  *&msg_4[4] = ServerPort;
  *&msg_4[8] = reply_port;
  msg = 5395;
  *&msg_4[12] = 0x9D4F00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v8 = *&msg_4[8];
  }

  else
  {
    v8 = reply_port;
  }

  v9 = mach_msg(&msg, 3, 0x2Cu, 0x40u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) <= 0xE && ((1 << (v9 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg_4[8]);
  }

  else if (v9)
  {
    mig_dealloc_reply_port(*&msg_4[8]);
  }

  else
  {
    if (*&msg_4[16] == 71)
    {
      v10 = 4294966988;
    }

    else if (*&msg_4[16] == 40371)
    {
      if (msg < 0)
      {
        v10 = 4294966996;
        if (*&msg_4[20] == 1 && *msg_4 == 56 && !*&msg_4[4] && msg_4[35] == 1)
        {
          v12 = *&msg_4[36];
          if (*&msg_4[36] == *&msg_4[48])
          {
            v13 = *&msg_4[24];
            CAVerifyServerReturn(0);
            v14 = malloc_type_malloc(v12 + 1, 0x100004077774924uLL);
            v11 = v14;
            if (v14)
            {
              memcpy(v14, v13, v12);
              v11[v12] = 0;
            }

            mach_vm_deallocate(*MEMORY[0x1E69E9A60], v13, v12);
            goto LABEL_33;
          }
        }
      }

      else if (*msg_4 == 36)
      {
        v10 = 4294966996;
        if (*&msg_4[28])
        {
          if (*&msg_4[4])
          {
            v10 = 4294966996;
          }

          else
          {
            v10 = *&msg_4[28];
          }
        }
      }

      else
      {
        v10 = 4294966996;
      }
    }

    else
    {
      v10 = 4294966995;
    }

    mach_msg_destroy(&msg);
  }

  CAVerifyServerReturn(v10);
  v11 = 0;
LABEL_33:
  if (!a1)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], ServerPort);
  }

  return v11;
}

CFPropertyListRef CARenderServerCopyUpdateHistograms(mach_port_name_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  ServerPort = a1;
  if (!a1)
  {
    ServerPort = CARenderServerGetServerPort(0);
    if (!ServerPort)
    {
      return 0;
    }
  }

  memset(&msg_4[16], 0, 44);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  *&msg_4[28] = a2;
  reply_port = mig_get_reply_port();
  *&msg_4[4] = ServerPort;
  *&msg_4[8] = reply_port;
  msg = 5395;
  *&msg_4[12] = 0x9D3D00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v6 = *&msg_4[8];
  }

  else
  {
    v6 = reply_port;
  }

  v7 = mach_msg(&msg, 3, 0x24u, 0x40u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg_4[8]);
  }

  else if (v7)
  {
    mig_dealloc_reply_port(*&msg_4[8]);
  }

  else
  {
    if (*&msg_4[16] == 71)
    {
      v8 = 4294966988;
    }

    else if (*&msg_4[16] == 40353)
    {
      if (msg < 0)
      {
        v8 = 4294966996;
        if (*&msg_4[20] == 1 && *msg_4 == 56 && !*&msg_4[4] && msg_4[35] == 1)
        {
          v9 = *&msg_4[36];
          if (*&msg_4[36] == *&msg_4[48])
          {
            v8 = 0;
            v10 = *&msg_4[24];
            goto LABEL_30;
          }
        }
      }

      else if (*msg_4 == 36)
      {
        v8 = 4294966996;
        if (*&msg_4[28])
        {
          if (*&msg_4[4])
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = *&msg_4[28];
          }
        }
      }

      else
      {
        v8 = 4294966996;
      }
    }

    else
    {
      v8 = 4294966995;
    }

    mach_msg_destroy(&msg);
  }

  v10 = 0;
  v9 = 0;
LABEL_30:
  CAVerifyServerReturn(v8);
  if (!a1)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], ServerPort);
    if (!v8)
    {
      goto LABEL_34;
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_34:
  v11 = *MEMORY[0x1E695E490];
  v12 = CFDataCreate(*MEMORY[0x1E695E490], v10, v9);
  mach_vm_deallocate(*MEMORY[0x1E69E9A60], v10, v9);
  if (!v12)
  {
    return 0;
  }

  v13 = CFPropertyListCreateWithData(v11, v12, 0, 0, 0);
  CFRelease(v12);
  return v13;
}

CFIndex CARenderServerGetStatistics(mach_port_name_t a1, uint64_t *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  v3 = CARenderServerCopyDictionaries(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Count = CFArrayGetCount(v3);
  v6 = malloc_type_malloc(8 * Count, 0x10040436913F5uLL);
  *a2 = v6;
  if (v6)
  {
    v23 = a2;
    if (Count)
    {
      v7 = 0;
      v8 = 0;
      v9 = @"kCADisplayDeviceName";
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v8);
        Value = CFDictionaryGetValue(ValueAtIndex, @"kCADisplayName");
        v12 = CFDictionaryGetValue(ValueAtIndex, v9);
        if (Value && v12)
        {
          memset(v26, 0, sizeof(v26));
          Int = CA_CFDictionaryGetInt(ValueAtIndex, @"kCADisplayFrameCount");
          v25 = CA_CFDictionaryGetInt(ValueAtIndex, @"kCADisplaySkippedFrameCount");
          v24 = CA_CFDictionaryGetInt(ValueAtIndex, @"kCADisplayClonedFrameCount");
          v14 = v9;
          v15 = CA_CFDictionaryGetInt(ValueAtIndex, @"kCADisplaySkippedClonedFrameCount");
          v16 = Int - CA_CFDictionaryGetInt(ValueAtIndex, @"kCADisplayDirtyFrameCount");
          v17 = Count;
          v18 = *v23;
          CString = CA_CFStringGetCString(Value, v26, 256);
          v22 = v15;
          v9 = v14;
          v20 = (v18 + v7);
          Count = v17;
          asprintf(v20, "%s display:\n\tTotal Frames:\t\t%d\n\tSkipped Frames:\t\t%d\n\tTotal Cloned Frames:\t%d\n\tSkipped Cloned Frames:\t%d\n\tNon-Dirty Frames:\t%d\n\n", CString, Int, v25, v24, v22, v16);
        }

        ++v8;
        v7 += 8;
      }

      while (Count != v8);
    }
  }

  else
  {
    Count = 0;
  }

  CFRelease(v4);
  return Count;
}

uint64_t CARenderServerGetClientPort(mach_port_name_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  ServerPort = a1;
  if (!a1)
  {
    ServerPort = CARenderServerGetServerPort(0);
    if (!ServerPort)
    {
      return 0;
    }
  }

  memset(&msg_4[16], 0, 28);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  *&msg_4[28] = a2;
  reply_port = mig_get_reply_port();
  *&msg_4[4] = ServerPort;
  *&msg_4[8] = reply_port;
  msg = 5395;
  *&msg_4[12] = 0x9D0E00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v6 = *&msg_4[8];
  }

  else
  {
    v6 = reply_port;
  }

  v7 = mach_msg(&msg, 3, 0x24u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg_4[8]);
  }

  else if (v7)
  {
    mig_dealloc_reply_port(*&msg_4[8]);
  }

  else
  {
    if (*&msg_4[16] == 71)
    {
      v8 = 4294966988;
    }

    else if (*&msg_4[16] == 40306)
    {
      if (msg < 0)
      {
        v8 = 4294966996;
        if (*&msg_4[20] == 1 && *msg_4 == 40 && !*&msg_4[4] && *&msg_4[34] << 16 == 1114112)
        {
          v8 = 0;
          v9 = *&msg_4[24];
          goto LABEL_30;
        }
      }

      else if (*msg_4 == 36)
      {
        v8 = 4294966996;
        if (*&msg_4[28])
        {
          if (*&msg_4[4])
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = *&msg_4[28];
          }
        }
      }

      else
      {
        v8 = 4294966996;
      }
    }

    else
    {
      v8 = 4294966995;
    }

    mach_msg_destroy(&msg);
  }

  v9 = 0;
LABEL_30:
  CAVerifyServerReturn(v8);
  if (!a1)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], ServerPort);
  }

  return v9;
}

uint64_t CARenderServerGetClientProcessId(mach_port_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  ServerPort = a1;
  if (!a1)
  {
    ServerPort = CARenderServerGetServerPort(0);
    if (!ServerPort)
    {
      return 0;
    }
  }

  v15 = 0u;
  msg.msgh_size = 0;
  v13 = 1;
  v14 = a2;
  DWORD1(v15) = 1245184;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = ServerPort;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x9D0F00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v7 = mach_msg(&msg, 3, 0x28u, 0x30u, msgh_local_port, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
LABEL_28:
    v10 = 0;
    goto LABEL_29;
  }

  if (v7)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    goto LABEL_28;
  }

  if (msg.msgh_id == 71)
  {
    v8 = 4294966988;
LABEL_27:
    mach_msg_destroy(&msg);
    goto LABEL_28;
  }

  if (msg.msgh_id != 40307)
  {
    v8 = 4294966995;
    goto LABEL_27;
  }

  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_26;
  }

  if (msg.msgh_size != 40)
  {
    if (msg.msgh_size == 36)
    {
      if (msg.msgh_remote_port)
      {
        v9 = 1;
      }

      else
      {
        v9 = v15 == 0;
      }

      if (v9)
      {
        v8 = 4294966996;
      }

      else
      {
        v8 = v15;
      }

      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (msg.msgh_remote_port)
  {
LABEL_26:
    v8 = 4294966996;
    goto LABEL_27;
  }

  v8 = v15;
  if (v15)
  {
    goto LABEL_27;
  }

  v10 = DWORD1(v15);
LABEL_29:
  CAVerifyServerReturn(v8);
  if (!a1)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], ServerPort);
  }

  return v10;
}

uint64_t CARenderServerRenderDisplay_(mach_port_t a1, const __CFString *a2, void *cf, void *a4, int a5, int a6, int a7, __int128 *a8, int a9, uint64_t a10, uint64_t a11, int a12)
{
  v74 = *MEMORY[0x1E69E9840];
  v19 = CFGetTypeID(cf);
  TypeID = IOSurfaceGetTypeID();
  v21 = TypeID;
  if (a4)
  {
    v22 = CFGetTypeID(a4);
    v23 = IOSurfaceGetTypeID();
    result = 0;
    if (v22 != v23 || v19 != v21)
    {
      return result;
    }
  }

  else if (v19 != TypeID)
  {
    return 0;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  *buffer = 0u;
  v50 = 0u;
  if (!a2)
  {
    return 0;
  }

  if (!CFStringGetCString(a2, buffer, 256, 0x8000100u))
  {
    return 0;
  }

  ServerPort = a1;
  if (!a1)
  {
    ServerPort = CARenderServerGetServerPort(0);
    if (!ServerPort)
    {
      return 0;
    }
  }

  if (a8)
  {
    v46 = a8[1];
    v47 = *a8;
    v44 = a8[3];
    v45 = a8[2];
    v42 = a8[5];
    v43 = a8[4];
    v26 = a8[7];
    v41 = a8[6];
  }

  else
  {
    v26 = 0uLL;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
  }

  v40 = v26;
  MachPort = IOSurfaceCreateMachPort(cf);
  if (a4)
  {
    LODWORD(a4) = IOSurfaceCreateMachPort(a4);
  }

  v28 = mach_absolute_time();
  v29 = CATimeWithHostTime(v28);
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  v70 = 0u;
  v71 = 0u;
  memset(&msg, 0, sizeof(msg));
  v66 = 3;
  v67 = a11;
  HIDWORD(v68) = 4 * a10;
  LODWORD(v68) = 16777472;
  v69 = MachPort;
  DWORD1(v70) = 1245184;
  DWORD2(v70) = a4;
  LODWORD(v71) = 1245184;
  *(&v71 + 4) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v30 = mig_strncpy_zerofill(v72 + 4, buffer, 256);
  }

  else
  {
    v30 = mig_strncpy(v72 + 4, buffer, 256);
  }

  LODWORD(v72[0]) = v30;
  HIDWORD(v71) = 0;
  v31 = (v30 + 3) & 0xFFFFFFFC;
  v32 = &msg + v31;
  *(v32 + 21) = a10;
  *(v32 + 22) = a5;
  *(v32 + 23) = a6;
  *(v32 + 24) = a7;
  *(v32 + 100) = v29;
  *(v32 + 108) = v47;
  *(v32 + 124) = v46;
  *(v32 + 140) = v45;
  *(v32 + 156) = v44;
  *(v32 + 172) = v43;
  *(v32 + 188) = v42;
  *(v32 + 204) = v41;
  *(v32 + 220) = v40;
  *(v32 + 59) = a12;
  *(v32 + 60) = a9;
  reply_port = mig_get_reply_port();
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  msg.msgh_remote_port = ServerPort;
  *&msg.msgh_voucher_port = 0x9D1C00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v35 = mach_msg(&msg, 3, v31 + 244, 0x34u, msgh_local_port, 0, 0);
  v36 = v35;
  if ((v35 - 268435458) > 0xE || ((1 << (v35 - 2)) & 0x4003) == 0)
  {
    if (v35)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      goto LABEL_43;
    }

    if (msg.msgh_id == 71)
    {
      v36 = 4294966988;
    }

    else if (msg.msgh_id == 40320)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 44)
        {
          if (!msg.msgh_remote_port)
          {
            v36 = HIDWORD(v67);
            if (!HIDWORD(v67))
            {
              v38 = v68;
              goto LABEL_44;
            }

            goto LABEL_42;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v37 = 1;
          }

          else
          {
            v37 = HIDWORD(v67) == 0;
          }

          if (v37)
          {
            v36 = 4294966996;
          }

          else
          {
            v36 = HIDWORD(v67);
          }

          goto LABEL_42;
        }
      }

      v36 = 4294966996;
    }

    else
    {
      v36 = 4294966995;
    }

LABEL_42:
    mach_msg_destroy(&msg);
    goto LABEL_43;
  }

  mig_put_reply_port(msg.msgh_local_port);
LABEL_43:
  v38 = 0;
LABEL_44:
  v39 = MEMORY[0x1E69E9A60];
  mach_port_deallocate(*MEMORY[0x1E69E9A60], MachPort);
  mach_port_deallocate(*v39, a4);
  CAVerifyServerReturn(v36);
  if (!a1)
  {
    mach_port_deallocate(*v39, ServerPort);
  }

  if (v36)
  {
    return 0;
  }

  else
  {
    return v38;
  }
}

uint64_t CARenderServerRenderDisplayLayerWithTransformTimeOffsetAndFlags_(mach_port_t a1, const __CFString *a2, int a3, uint64_t a4, void *cf, void *a6, int a7, int a8, double a9, __int128 *a10, int a11)
{
  v72 = *MEMORY[0x1E69E9840];
  v19 = CFGetTypeID(cf);
  TypeID = IOSurfaceGetTypeID();
  v21 = TypeID;
  if (a6)
  {
    v22 = CFGetTypeID(a6);
    v23 = IOSurfaceGetTypeID();
    result = 0;
    if (v22 != v23 || v19 != v21)
    {
      return result;
    }
  }

  else if (v19 != TypeID)
  {
    return 0;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  *buffer = 0u;
  v50 = 0u;
  if (!a2)
  {
    return 0;
  }

  if (!CFStringGetCString(a2, buffer, 256, 0x8000100u))
  {
    return 0;
  }

  ServerPort = a1;
  if (!a1)
  {
    ServerPort = CARenderServerGetServerPort(0);
    if (!ServerPort)
    {
      return 0;
    }
  }

  if ((a11 & 0x10) == 0)
  {
    a4 = CA::Render::Object::render_id(*(a4 + 16));
  }

  v46 = a10[1];
  v47 = *a10;
  v44 = a10[3];
  v45 = a10[2];
  v42 = a10[5];
  v43 = a10[4];
  v40 = a10[7];
  v41 = a10[6];
  MachPort = IOSurfaceCreateMachPort(cf);
  if (a6)
  {
    LODWORD(a6) = IOSurfaceCreateMachPort(a6);
  }

  v27 = mach_absolute_time();
  v28 = CATimeWithHostTime(v27);
  v71 = 0;
  v29 = v28 + a9;
  memset(v70, 0, sizeof(v70));
  v68 = 0u;
  v69 = 0u;
  memset(&msg, 0, sizeof(msg));
  v66 = 2;
  v67 = MachPort;
  DWORD1(v68) = 1245184;
  DWORD2(v68) = a6;
  LODWORD(v69) = 1245184;
  *(&v69 + 4) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v30 = mig_strncpy_zerofill(v70 + 4, buffer, 256);
  }

  else
  {
    v30 = mig_strncpy(v70 + 4, buffer, 256);
  }

  LODWORD(v70[0]) = v30;
  HIDWORD(v69) = 0;
  v31 = (v30 + 3) & 0xFFFFFFFC;
  v32 = &msg + v31;
  *(v32 + 17) = a3;
  *(v32 + 9) = a4;
  *(v32 + 20) = a7;
  *(v32 + 21) = a8;
  *(v32 + 11) = v29;
  *(v32 + 6) = v47;
  *(v32 + 7) = v46;
  *(v32 + 8) = v45;
  *(v32 + 9) = v44;
  *(v32 + 10) = v43;
  *(v32 + 11) = v42;
  *(v32 + 12) = v41;
  *(v32 + 13) = v40;
  *(v32 + 56) = a11;
  reply_port = mig_get_reply_port();
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  msg.msgh_remote_port = ServerPort;
  *&msg.msgh_voucher_port = 0x9D1E00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v35 = mach_msg(&msg, 3, v31 + 228, 0x34u, msgh_local_port, 0, 0);
  v36 = v35;
  if ((v35 - 268435458) > 0xE || ((1 << (v35 - 2)) & 0x4003) == 0)
  {
    if (v35)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      goto LABEL_42;
    }

    if (msg.msgh_id == 71)
    {
      v36 = 4294966988;
    }

    else if (msg.msgh_id == 40322)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 44)
        {
          if (!msg.msgh_remote_port)
          {
            v36 = v68;
            if (!v68)
            {
              v38 = *(&v68 + 4);
              goto LABEL_43;
            }

            goto LABEL_41;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v37 = 1;
          }

          else
          {
            v37 = v68 == 0;
          }

          if (v37)
          {
            v36 = 4294966996;
          }

          else
          {
            v36 = v68;
          }

          goto LABEL_41;
        }
      }

      v36 = 4294966996;
    }

    else
    {
      v36 = 4294966995;
    }

LABEL_41:
    mach_msg_destroy(&msg);
    goto LABEL_42;
  }

  mig_put_reply_port(msg.msgh_local_port);
LABEL_42:
  v38 = 0;
LABEL_43:
  v39 = MEMORY[0x1E69E9A60];
  mach_port_deallocate(*MEMORY[0x1E69E9A60], MachPort);
  mach_port_deallocate(*v39, a6);
  CAVerifyServerReturn(v36);
  if (!a1)
  {
    mach_port_deallocate(*v39, ServerPort);
  }

  if (v36)
  {
    return 0;
  }

  else
  {
    return v38;
  }
}

BOOL CARenderServerCaptureDisplayWithTransform_(mach_port_t a1, CFStringRef theString, int a3, int a4, int a5, int a6, __int128 *a7, __int16 a8, uint64_t a9, uint64_t a10, int a11)
{
  v64 = *MEMORY[0x1E69E9840];
  if (!theString)
  {
    return 0;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  *buffer = 0u;
  v41 = 0u;
  if (!CFStringGetCString(theString, buffer, 256, 0x8000100u))
  {
    return 0;
  }

  ServerPort = a1;
  if (!a1)
  {
    ServerPort = CARenderServerGetServerPort(0);
    if (!ServerPort)
    {
      return 0;
    }
  }

  v39 = ServerPort;
  if (a7)
  {
    v37 = a7[1];
    v38 = *a7;
    v35 = a7[3];
    v36 = a7[2];
    v33 = a7[5];
    v34 = a7[4];
    v19 = a7[7];
    v32 = a7[6];
  }

  else
  {
    v19 = 0uLL;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
  }

  v31 = v19;
  v21 = CA::MachPortUtil::task_identity_port(void)::task[0];
  if (!CA::MachPortUtil::task_identity_port(void)::task[0])
  {
    task_create_identity_token(*MEMORY[0x1E69E9A60], CA::MachPortUtil::task_identity_port(void)::task);
    v21 = CA::MachPortUtil::task_identity_port(void)::task[0];
  }

  v22 = mach_absolute_time();
  v23 = CATimeWithHostTime(v22);
  memset(v63, 0, 428);
  v62 = 0u;
  memset(&msg, 0, sizeof(msg));
  v57 = 2;
  v58 = a10;
  v60 = 4 * a9;
  v59 = 16777472;
  v61 = v21;
  DWORD1(v62) = 1245184;
  *(&v62 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v24 = mig_strncpy_zerofill(v63 + 8, buffer, 256);
  }

  else
  {
    v24 = mig_strncpy(v63 + 8, buffer, 256);
  }

  DWORD1(v63[0]) = v24;
  LODWORD(v63[0]) = 0;
  v25 = (v24 + 3) & 0xFFFFFFFC;
  v26 = &msg + v25;
  *(v26 + 18) = a9;
  *(v26 + 19) = a3;
  *(v26 + 20) = a4;
  *(v26 + 21) = a5;
  *(v26 + 22) = a6;
  *(v26 + 92) = v23;
  *(v26 + 100) = v38;
  *(v26 + 116) = v37;
  *(v26 + 132) = v36;
  *(v26 + 148) = v35;
  *(v26 + 164) = v34;
  *(v26 + 180) = v33;
  *(v26 + 196) = v32;
  *(v26 + 212) = v31;
  *(v26 + 57) = a11;
  *(v26 + 58) = a8 & 0x1000 | 0x400;
  reply_port = mig_get_reply_port();
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  msg.msgh_remote_port = v39;
  *&msg.msgh_voucher_port = 0x9D2300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v29 = mach_msg(&msg, 3, v25 + 236, 0x2Cu, msgh_local_port, 0, 0);
  v30 = v29;
  if ((v29 - 268435458) <= 0xE && ((1 << (v29 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    goto LABEL_32;
  }

  if (v29)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    goto LABEL_32;
  }

  if (msg.msgh_id == 71)
  {
    v30 = 4294966988;
LABEL_31:
    mach_msg_destroy(&msg);
    goto LABEL_32;
  }

  if (msg.msgh_id != 40327)
  {
    v30 = 4294966995;
    goto LABEL_31;
  }

  v30 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_31;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_31;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_31;
  }

  v30 = HIDWORD(v58);
  if (HIDWORD(v58))
  {
    goto LABEL_31;
  }

LABEL_32:
  CAVerifyServerReturn(v30);
  if (!a1)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v39);
  }

  return v30 == 0;
}

BOOL _CARenderServerCaptureDisplayContextList(mach_port_t a1, CFStringRef theString, int a3, uint64_t a4, int a5, int a6, int a7, unint64_t a8, uint64_t a9, int a10)
{
  v59 = *MEMORY[0x1E69E9840];
  if (!theString)
  {
    return 0;
  }

  memset(v46, 0, sizeof(v46));
  CString = CFStringGetCString(theString, v46, 256, 0x8000100u);
  if (!CString)
  {
    return 0;
  }

  v18 = a1;
  if (!a1)
  {
    CString = CARenderServerGetServerPort(0);
    v18 = CString;
    if (!CString)
    {
      return 0;
    }
  }

  if (a8 >> 57)
  {
    return 0;
  }

  v43 = a8 << 7;
  if (a8 << 7 > 0x1000)
  {
    v45 = malloc_type_malloc(a8 << 7, 0xD71B7435uLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](CString);
    v45 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v45, v20);
  }

  v44 = v18;
  if (a8)
  {
    v21 = (a9 + 64);
    v22 = v45 + 64;
    v23 = a8;
    do
    {
      v24 = *(v21 - 3);
      v25 = *(v21 - 2);
      v26 = *(v21 - 1);
      v27 = *v21;
      v28 = v21[1];
      v29 = v21[2];
      v30 = v21[3];
      *(v22 - 4) = *(v21 - 4);
      *(v22 - 3) = v24;
      *(v22 - 2) = v25;
      *(v22 - 1) = v26;
      *v22 = v27;
      v22[1] = v28;
      v21 += 8;
      v22[2] = v29;
      v22[3] = v30;
      v22 += 8;
      --v23;
    }

    while (v23);
  }

  v31 = CA::MachPortUtil::task_identity_port(void)::task[0];
  if (!CA::MachPortUtil::task_identity_port(void)::task[0])
  {
    task_create_identity_token(*MEMORY[0x1E69E9A60], CA::MachPortUtil::task_identity_port(void)::task);
    v31 = CA::MachPortUtil::task_identity_port(void)::task[0];
  }

  v32 = mach_absolute_time();
  v33 = CATimeWithHostTime(v32);
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  v53 = 0;
  v56 = 0u;
  memset(&v47, 0, sizeof(v47));
  v48 = 3;
  v49 = a4;
  v51 = 4 * a3;
  v50 = 16777472;
  v52 = v31;
  v54 = 1245184;
  v55 = v45;
  DWORD1(v56) = a8 << 7;
  LODWORD(v56) = 16777472;
  *(&v56 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v34 = mig_strncpy_zerofill(&v57[2], v46, 256);
  }

  else
  {
    v34 = mig_strncpy(&v57[2], v46, 256);
  }

  v57[1] = v34;
  v57[0] = 0;
  v35 = (v34 + 3) & 0xFFFFFFFC;
  v36 = &v47 + v35;
  *(v36 + 22) = a3;
  *(v36 + 23) = a5;
  *(v36 + 24) = a6;
  *(v36 + 25) = a7;
  *(v36 + 13) = v33;
  *(v36 + 28) = a8;
  *(v36 + 29) = a10;
  reply_port = mig_get_reply_port();
  v47.msgh_local_port = reply_port;
  v47.msgh_bits = -2147478253;
  v38 = v44;
  v47.msgh_remote_port = v44;
  *&v47.msgh_voucher_port = 0x9D2400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v47);
    msgh_local_port = v47.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v40 = mach_msg(&v47, 3, v35 + 120, 0x2Cu, msgh_local_port, 0, 0);
  v41 = v40;
  if ((v40 - 268435458) <= 0xE && ((1 << (v40 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v47.msgh_local_port);
  }

  else if (v40)
  {
    mig_dealloc_reply_port(v47.msgh_local_port);
  }

  else
  {
    if (v47.msgh_id == 71)
    {
      v41 = 4294966988;
    }

    else if (v47.msgh_id == 40328)
    {
      v41 = 4294966996;
      if ((v47.msgh_bits & 0x80000000) == 0 && v47.msgh_size == 36 && !v47.msgh_remote_port)
      {
        v41 = HIDWORD(v49);
        if (!HIDWORD(v49))
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      v41 = 4294966995;
    }

    mach_msg_destroy(&v47);
  }

LABEL_36:
  CAVerifyServerReturn(v41);
  if (v43 > 0x1000)
  {
    free(v45);
  }

  if (!a1)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v38);
  }

  return v41 == 0;
}

uint64_t _CARenderServerRenderDisplayContextList(mach_port_t a1, const __CFString *a2, int a3, uint64_t a4, void *cf, void *a6, int a7, int a8, unint64_t a9, uint64_t a10, int a11)
{
  v51 = a8;
  v52 = a1;
  v65 = *MEMORY[0x1E69E9840];
  v17 = CFGetTypeID(cf);
  TypeID = IOSurfaceGetTypeID();
  v19 = TypeID;
  if (a6)
  {
    v20 = CFGetTypeID(a6);
    v21 = IOSurfaceGetTypeID();
    result = 0;
    if (v20 != v21 || v17 != v19)
    {
      return result;
    }
  }

  else if (v17 != TypeID)
  {
    return 0;
  }

  memset(v53, 0, sizeof(v53));
  if (!a2)
  {
    return 0;
  }

  CString = CFStringGetCString(a2, v53, 256, 0x8000100u);
  if (!CString)
  {
    return 0;
  }

  v24 = v52;
  if (!v52)
  {
    CString = CARenderServerGetServerPort(0);
    v24 = CString;
    if (!CString)
    {
      return 0;
    }
  }

  if (a9 >> 57)
  {
    return 0;
  }

  v25 = a9 << 7;
  if (a9 << 7 > 0x1000)
  {
    v50 = malloc_type_malloc(a9 << 7, 0x45479778uLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](CString);
    v50 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v50, a9 << 7);
  }

  if (a9)
  {
    v26 = (a10 + 64);
    v27 = v50 + 64;
    v28 = a9;
    do
    {
      v29 = *(v26 - 3);
      v30 = *(v26 - 2);
      v31 = *(v26 - 1);
      v32 = *v26;
      v33 = v26[1];
      v34 = v26[2];
      v35 = v26[3];
      *(v27 - 4) = *(v26 - 4);
      *(v27 - 3) = v29;
      *(v27 - 2) = v30;
      *(v27 - 1) = v31;
      *v27 = v32;
      v27[1] = v33;
      v26 += 8;
      v27[2] = v34;
      v27[3] = v35;
      v27 += 8;
      --v28;
    }

    while (v28);
  }

  MachPort = IOSurfaceCreateMachPort(cf);
  if (a6)
  {
    LODWORD(a6) = IOSurfaceCreateMachPort(a6);
  }

  v36 = mach_absolute_time();
  v37 = CATimeWithHostTime(v36);
  memset(v64, 0, 288);
  v63 = 0u;
  v59 = 0u;
  memset(&v54, 0, sizeof(v54));
  v55 = 4;
  v56 = a4;
  HIDWORD(v57) = 4 * a3;
  LODWORD(v57) = 16777472;
  LODWORD(v63) = a9 << 7;
  v58 = MachPort;
  DWORD1(v59) = 1245184;
  DWORD2(v59) = a6;
  v61 = v50;
  v60 = 1245184;
  v62 = 16777472;
  *(&v63 + 4) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v38 = mig_strncpy_zerofill(&v64[1], v53, 256);
  }

  else
  {
    v38 = mig_strncpy(&v64[1], v53, 256);
  }

  v64[0] = v38;
  HIDWORD(v63) = 0;
  v39 = (v38 + 3) & 0xFFFFFFFC;
  v40 = &v54 + v39;
  *(v40 + 25) = a3;
  *(v40 + 26) = a7;
  *(v40 + 27) = v51;
  *(v40 + 14) = v37;
  *(v40 + 30) = a9;
  *(v40 + 31) = a11;
  reply_port = mig_get_reply_port();
  v54.msgh_local_port = reply_port;
  v54.msgh_bits = -2147478253;
  v54.msgh_remote_port = v24;
  *&v54.msgh_voucher_port = 0x9D2000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v54);
    msgh_local_port = v54.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v43 = mach_msg(&v54, 3, v39 + 128, 0x34u, msgh_local_port, 0, 0);
  v44 = v43;
  if ((v43 - 268435458) > 0xE || ((1 << (v43 - 2)) & 0x4003) == 0)
  {
    if (v43)
    {
      mig_dealloc_reply_port(v54.msgh_local_port);
      goto LABEL_48;
    }

    if (v54.msgh_id == 71)
    {
      v44 = 4294966988;
    }

    else if (v54.msgh_id == 40324)
    {
      if ((v54.msgh_bits & 0x80000000) == 0)
      {
        if (v54.msgh_size == 44)
        {
          if (!v54.msgh_remote_port)
          {
            v44 = HIDWORD(v56);
            if (!HIDWORD(v56))
            {
              v46 = v57;
              goto LABEL_49;
            }

            goto LABEL_47;
          }
        }

        else if (v54.msgh_size == 36)
        {
          if (v54.msgh_remote_port)
          {
            v45 = 1;
          }

          else
          {
            v45 = HIDWORD(v56) == 0;
          }

          if (v45)
          {
            v44 = 4294966996;
          }

          else
          {
            v44 = HIDWORD(v56);
          }

          goto LABEL_47;
        }
      }

      v44 = 4294966996;
    }

    else
    {
      v44 = 4294966995;
    }

LABEL_47:
    mach_msg_destroy(&v54);
    goto LABEL_48;
  }

  mig_put_reply_port(v54.msgh_local_port);
LABEL_48:
  v46 = 0;
LABEL_49:
  v47 = MEMORY[0x1E69E9A60];
  mach_port_deallocate(*MEMORY[0x1E69E9A60], MachPort);
  mach_port_deallocate(*v47, a6);
  CAVerifyServerReturn(v44);
  if (v25 > 0x1000)
  {
    free(v50);
  }

  if (!v52)
  {
    mach_port_deallocate(*v47, v24);
  }

  if (v44)
  {
    return 0;
  }

  else
  {
    return v46;
  }
}

void CARenderServerFlushIRDC(mach_port_t ServerPort)
{
  v3 = *MEMORY[0x1E69E9840];
  if (CADeviceNeedsIRDCFlush::once != -1)
  {
    dispatch_once(&CADeviceNeedsIRDCFlush::once, &__block_literal_global_463);
  }

  if (CADeviceNeedsIRDCFlush::b == 1 && (ServerPort || (ServerPort = CARenderServerGetServerPort(0)) != 0))
  {
    v2.msgh_size = 0;
    v2.msgh_bits = 19;
    v2.msgh_remote_port = ServerPort;
    v2.msgh_local_port = 0;
    *&v2.msgh_voucher_port = 0x9D2600000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&v2);
    }

    mach_msg(&v2, 1, 0x18u, 0, 0, 0, 0);
  }
}

uint64_t CARenderServerPostPowerLog(mach_port_name_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1;
  if (!a1)
  {
    result = CARenderServerGetServerPort(0);
    v2 = result;
    if (!result)
    {
      return result;
    }
  }

  v10 = 0;
  *&msg[4] = 0;
  *&msg[20] = 0u;
  reply_port = mig_get_reply_port();
  *&msg[8] = v2;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x9D3E00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v5 = *&msg[12];
  }

  else
  {
    v5 = reply_port;
  }

  v6 = mach_msg(msg, 3, 0x18u, 0x2Cu, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    goto LABEL_21;
  }

  if (v6)
  {
    mig_dealloc_reply_port(*&msg[12]);
    goto LABEL_21;
  }

  if (*&msg[20] == 71)
  {
    v7 = 4294966988;
LABEL_20:
    mach_msg_destroy(msg);
    goto LABEL_21;
  }

  if (*&msg[20] != 40354)
  {
    v7 = 4294966995;
    goto LABEL_20;
  }

  v7 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_20;
  }

  if (*&msg[8])
  {
    goto LABEL_20;
  }

  v7 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_20;
  }

LABEL_21:
  result = CAVerifyServerReturn(v7);
  if (!a1)
  {
    v8 = *MEMORY[0x1E69E9A60];

    return mach_port_deallocate(v8, v2);
  }

  return result;
}

uint64_t CARenderServerPurgeServer(mach_port_name_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1;
  if (!a1)
  {
    result = CARenderServerGetServerPort(0);
    v2 = result;
    if (!result)
    {
      return result;
    }
  }

  v10 = 0;
  *&msg[4] = 0;
  *&msg[20] = 0u;
  reply_port = mig_get_reply_port();
  *&msg[8] = v2;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x9D3C00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v5 = *&msg[12];
  }

  else
  {
    v5 = reply_port;
  }

  v6 = mach_msg(msg, 3, 0x18u, 0x2Cu, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    goto LABEL_21;
  }

  if (v6)
  {
    mig_dealloc_reply_port(*&msg[12]);
    goto LABEL_21;
  }

  if (*&msg[20] == 71)
  {
    v7 = 4294966988;
LABEL_20:
    mach_msg_destroy(msg);
    goto LABEL_21;
  }

  if (*&msg[20] != 40352)
  {
    v7 = 4294966995;
    goto LABEL_20;
  }

  v7 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_20;
  }

  if (*&msg[8])
  {
    goto LABEL_20;
  }

  v7 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_20;
  }

LABEL_21:
  result = CAVerifyServerReturn(v7);
  if (!a1)
  {
    v8 = *MEMORY[0x1E69E9A60];

    return mach_port_deallocate(v8, v2);
  }

  return result;
}

CFPropertyListRef CARenderServerGetPerformanceInfo(mach_port_name_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  ServerPort = a1;
  if (!a1)
  {
    ServerPort = CARenderServerGetServerPort(0);
    if (!ServerPort)
    {
      return 0;
    }
  }

  memset(&msg_16[4], 0, 44);
  msg_4 = 0;
  reply_port = mig_get_reply_port();
  msg_8 = ServerPort;
  msg_12 = reply_port;
  msg = 5395;
  *msg_16 = 0x9D3F00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v4 = msg_12;
  }

  else
  {
    v4 = reply_port;
  }

  v5 = mach_msg(&msg, 3, 0x18u, 0x40u, v4, 0, 0);
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg_12);
  }

  else if (v5)
  {
    mig_dealloc_reply_port(msg_12);
  }

  else
  {
    if (*&msg_16[4] == 71)
    {
      v6 = 4294966988;
    }

    else if (*&msg_16[4] == 40355)
    {
      if (msg < 0)
      {
        v6 = 4294966996;
        if (*&msg_16[8] == 1 && msg_4 == 56 && !msg_8 && msg_16[23] == 1)
        {
          v7 = *&msg_16[24];
          if (*&msg_16[24] == *&msg_16[36])
          {
            v6 = 0;
            v8 = *&msg_16[12];
            goto LABEL_30;
          }
        }
      }

      else if (msg_4 == 36)
      {
        v6 = 4294966996;
        if (*&msg_16[16])
        {
          if (msg_8)
          {
            v6 = 4294966996;
          }

          else
          {
            v6 = *&msg_16[16];
          }
        }
      }

      else
      {
        v6 = 4294966996;
      }
    }

    else
    {
      v6 = 4294966995;
    }

    mach_msg_destroy(&msg);
  }

  v8 = 0;
  v7 = 0;
LABEL_30:
  CAVerifyServerReturn(v6);
  if (!a1)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], ServerPort);
    if (!v6)
    {
      goto LABEL_34;
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_34:
  v9 = *MEMORY[0x1E695E490];
  v10 = CFDataCreate(*MEMORY[0x1E695E490], v8, v7);
  mach_vm_deallocate(*MEMORY[0x1E69E9A60], v8, v7);
  if (!v10)
  {
    return 0;
  }

  v11 = CFPropertyListCreateWithData(v9, v10, 0, 0, 0);
  CFRelease(v10);
  return v11;
}

uint64_t CARenderServerGetDisplayLogicalBounds(int a1, int a2, void *a3)
{
  v5 = a1;
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    result = CARenderServerGetServerPort(0);
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  memset(&msg_4[16], 0, 44);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  *&msg_4[28] = a2;
  reply_port = mig_get_reply_port();
  *&msg_4[4] = v5;
  *&msg_4[8] = reply_port;
  msg = 5395;
  *&msg_4[12] = 0x9D2A00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v8 = *&msg_4[8];
  }

  else
  {
    v8 = reply_port;
  }

  v9 = mach_msg(&msg, 3, 0x24u, 0x40u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) <= 0xE && ((1 << (v9 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg_4[8]);
  }

  else if (v9)
  {
    mig_dealloc_reply_port(*&msg_4[8]);
  }

  else
  {
    if (*&msg_4[16] == 71)
    {
      v10 = 4294966988;
    }

    else if (*&msg_4[16] == 40334)
    {
      if (msg < 0)
      {
        v10 = 4294966996;
        if (*&msg_4[20] == 1 && *msg_4 == 56 && !*&msg_4[4] && msg_4[35] == 1)
        {
          v11 = *&msg_4[36];
          if (*&msg_4[36] == *&msg_4[48])
          {
            v10 = 0;
            v12 = *&msg_4[24];
            goto LABEL_30;
          }
        }
      }

      else if (*msg_4 == 36)
      {
        v10 = 4294966996;
        if (*&msg_4[28])
        {
          if (*&msg_4[4])
          {
            v10 = 4294966996;
          }

          else
          {
            v10 = *&msg_4[28];
          }
        }
      }

      else
      {
        v10 = 4294966996;
      }
    }

    else
    {
      v10 = 4294966995;
    }

    mach_msg_destroy(&msg);
  }

  v12 = 0;
  v11 = 0;
LABEL_30:
  CAVerifyServerReturn(v10);
  result = v10 == 0;
  if (a3)
  {
    if (!v10)
    {
      memcpy(a3, v12, v11);
      mach_vm_deallocate(*MEMORY[0x1E69E9A60], v12, v11);
      return 1;
    }
  }

  return result;
}

uint64_t CARenderServerGetVsyncOffSupportsRGBCompression(mach_port_t a1)
{
  v1 = a1;
  v7 = *MEMORY[0x1E69E9840];
  if (a1 || (result = CARenderServerGetServerPort(0), (v1 = result) != 0))
  {
    *&msg[1].msgh_remote_port = 0u;
    *&msg[0].msgh_id = 0u;
    msg[0].msgh_size = 0;
    reply_port = mig_get_reply_port();
    msg[0].msgh_remote_port = v1;
    msg[0].msgh_local_port = reply_port;
    msg[0].msgh_bits = 5395;
    *&msg[0].msgh_voucher_port = 0x9D2C00000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(msg);
      msgh_local_port = msg[0].msgh_local_port;
    }

    else
    {
      msgh_local_port = reply_port;
    }

    v5 = mach_msg(msg, 3, 0x18u, 0x30u, msgh_local_port, 0, 0);
    if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(msg[0].msgh_local_port);
    }

    else if (v5)
    {
      mig_dealloc_reply_port(msg[0].msgh_local_port);
    }

    else
    {
      if (msg[0].msgh_id == 40336 && (msg[0].msgh_bits & 0x80000000) == 0 && msg[0].msgh_size == 40 && !msg[0].msgh_remote_port && !msg[1].msgh_remote_port)
      {
        return LOBYTE(msg[1].msgh_local_port) != 0;
      }

      mach_msg_destroy(msg);
    }

    return 0;
  }

  return result;
}

void CARenderServerSetRootQueue(uint64_t a1)
{
  v1[5] = *MEMORY[0x1E69E9840];
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __CASetRootQueue_block_invoke;
  v1[3] = &unk_1E6DFA588;
  v1[4] = a1;
  if (CA::_root_queue_once != -1)
  {
    dispatch_once(&CA::_root_queue_once, v1);
  }
}

CFDataRef CARenderClientGetArchivedLayerTree(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v19 = *MEMORY[0x1E69E9840];
  if (v1)
  {
    v2 = v1;
    v3 = byte_1ED4E9853;
    name = 0;
    v4 = MEMORY[0x1E69E9A60];
    v5 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name);
    if (v5)
    {
      v6 = v5;
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v7 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        v12 = mach_error_string(v6);
        *msg = 136315394;
        *&msg[4] = v12;
        *&msg[12] = 1024;
        *&msg[14] = v6;
        _os_log_error_impl(&dword_183AA6000, v7, OS_LOG_TYPE_ERROR, "Failed to allocate reply port: %s [0x%x]", msg, 0x12u);
      }

      return 0;
    }

    *&msg[20] = 0u;
    *&msg[4] = 0u;
    *&msg[28] = name;
    v16 = 1376256;
    length = *MEMORY[0x1E69E99E0];
    v18 = v3;
    *msg = -2147483629;
    *&msg[8] = v2;
    *&msg[20] = 0x100009DDALL;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(msg);
    }

    v9 = mach_msg(msg, 17, 0x34u, 0, 0, 0, 0);
    if ((v9 - 268435459) > 1)
    {
      if (!v9)
      {
        bzero(msg, 0x1000uLL);
        if (!mach_msg(msg, 2, 0, 0x1000u, name, 0, 0) && *&msg[20] == 1195461716 && (*msg & 0x80000000) != 0 && *&msg[24] == 1 && HIBYTE(v16) == 1)
        {
          v13.version = 0;
          memset(&v13.retain, 0, 40);
          v13.info = length;
          v13.deallocate = deallocate_vm_region;
          v13.preferredSize = 0;
          v10 = CFAllocatorCreate(0, &v13);
          v8 = CFDataCreateWithBytesNoCopy(0, *&msg[28], length, v10);
          CFRelease(v10);
LABEL_22:
          mach_port_mod_refs(*v4, name, 1u, -1);
          return v8;
        }
      }
    }

    else
    {
      if ((*msg & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*v4, *&msg[12]);
      }

      mach_msg_destroy(msg);
    }

    v8 = 0;
    goto LABEL_22;
  }

  return 0;
}

CFDataRef CARenderServerGetLocalArchivedLayerTree(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v21 = *MEMORY[0x1E69E9840];
  if (!v1)
  {
    return 0;
  }

  v3 = v2;
  v4 = v1;
  v5 = byte_1ED4E9853;
  name = 0;
  v6 = MEMORY[0x1E69E9A60];
  v7 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name);
  if (v7)
  {
    v8 = v7;
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v9 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      v13 = mach_error_string(v8);
      *msg = 136315394;
      *&msg[4] = v13;
      *&msg[12] = 1024;
      *&msg[14] = v8;
      _os_log_error_impl(&dword_183AA6000, v9, OS_LOG_TYPE_ERROR, "Failed to allocate reply port: %s [0x%x]", msg, 0x12u);
    }

    return 0;
  }

  *&msg[20] = 0u;
  *&msg[28] = name;
  v17 = 1376256;
  *&msg[4] = 0u;
  length = *MEMORY[0x1E69E99E0];
  v19 = v3;
  v20 = v5;
  *msg = -2147483629;
  *&msg[8] = v4;
  *&msg[20] = 0x100009D61;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  if (!mach_msg(msg, 1, 0x38u, 0, 0, 0, 0) && (bzero(msg, 0x1000uLL), !mach_msg(msg, 2, 0, 0x1000u, name, 0, 0)) && *&msg[20] == 1195461716 && (*msg & 0x80000000) != 0 && *&msg[24] == 1 && HIBYTE(v17) == 1)
  {
    v14.version = 0;
    memset(&v14.retain, 0, 40);
    v14.info = length;
    v14.deallocate = deallocate_vm_region;
    v14.preferredSize = 0;
    v11 = CFAllocatorCreate(0, &v14);
    v10 = CFDataCreateWithBytesNoCopy(0, *&msg[28], length, v11);
    CFRelease(v11);
  }

  else
  {
    v10 = 0;
  }

  mach_port_mod_refs(*v6, name, 1u, -1);
  return v10;
}

uint64_t CARenderServerDebugDisplayStateOldInterface(int a1, char a2)
{
  v10 = *MEMORY[0x1E69E9840];
  *&msg[20] = 0u;
  v9 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  msg[32] = a2;
  *&msg[33] = 0;
  msg[35] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x9D5E00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v4 = *&msg[12];
  }

  else
  {
    v4 = reply_port;
  }

  v5 = mach_msg(msg, 3, 0x24u, 0x2Cu, v4, 0, 0);
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    return v6;
  }

  if (v5)
  {
    mig_dealloc_reply_port(*&msg[12]);
    return v6;
  }

  if (*&msg[20] == 71)
  {
    v6 = 4294966988;
LABEL_18:
    mach_msg_destroy(msg);
    return v6;
  }

  if (*&msg[20] != 40386)
  {
    v6 = 4294966995;
    goto LABEL_18;
  }

  v6 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_18;
  }

  if (*&msg[8])
  {
    goto LABEL_18;
  }

  v6 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_18;
  }

  return v6;
}

unint64_t CAMetalTextureGetBytesPerRow(void *a1)
{
  v2 = [a1 pixelFormat];
  v3 = 4;
  if ((v2 - 70) > 0x2D)
  {
    goto LABEL_5;
  }

  if (((1 << (v2 - 70)) & 0xC03) != 0)
  {
    goto LABEL_6;
  }

  if (v2 == 115)
  {
    v3 = 8;
  }

  else
  {
LABEL_5:
    if ((v2 - 554) >= 2)
    {
      return 0;
    }
  }

LABEL_6:
  v4 = [a1 device];
  v5 = [a1 pixelFormat];
  v6 = [a1 width];
  v7 = [v4 minimumLinearTextureAlignmentForPixelFormat:v5];
  v8 = v7 - 1 + v6 * v3;
  if ((v7 & (v7 - 1)) != 0)
  {
    return v8 / v7 * v7;
  }

  else
  {
    return v8 & -v7;
  }
}

unint64_t CAMetalTextureGetBytes(void *a1, void *a2, unint64_t *a3)
{
  v13[6] = *MEMORY[0x1E69E9840];
  v6 = [a1 width];
  v7 = [a1 height];
  BytesPerRow = CAMetalTextureGetBytesPerRow(a1);
  if (!BytesPerRow)
  {
    return 0;
  }

  v9 = BytesPerRow;
  v10 = BytesPerRow * v7;
  v11 = CA::Render::aligned_malloc((BytesPerRow * v7), a3, 0);
  memset(v13, 0, 24);
  v13[3] = v6;
  v13[4] = v7;
  v13[5] = 1;
  [a1 getBytes:v11 bytesPerRow:v9 fromRegion:v13 mipmapLevel:0];
  *a2 = v11;
  return v10;
}

uint64_t CAMetalTextureGetPixelFormat(void *a1)
{
  v1 = [a1 pixelFormat];
  if (v1 <= 114)
  {
    if ((v1 - 70) < 2)
    {
      v3 = 16961;
      return v3 | 0x52470000u;
    }

    if ((v1 - 80) < 2)
    {
      return 1111970369;
    }
  }

  else
  {
    if ((v1 - 550) < 2)
    {
      return 1647534392;
    }

    if ((v1 - 554) < 2)
    {
      return 1999843442;
    }

    if (v1 == 115)
    {
      v3 = 26689;
      return v3 | 0x52470000u;
    }
  }

  return 0;
}

size_t CAGetBytesFromCompressedIOSurface(__IOSurface *a1, uint64_t a2, unsigned int a3)
{
  v32[7] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    PixelFormat = IOSurfaceGetPixelFormat(a1);
    if (CA::Render::fourcc_compressed_of_type(PixelFormat, 0, 0) != PixelFormat)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = MTLCreateSystemDefaultDevice();
      if (!v9)
      {
        goto LABEL_34;
      }

      v10 = v9;
      v11 = IOSurfaceGetPixelFormat(a1);
      v12 = CA::Render::fourcc_compressed_of_type(v11, 0, 0);
      if (v12 <= 1647534391)
      {
        if (v12 != 1111970369)
        {
          if (v12 == 1380411457)
          {
            v13 = 115;
            goto LABEL_17;
          }

LABEL_12:
          if (x_log_get_utilities::once != -1)
          {
            dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
          }

          v14 = x_log_get_utilities::log;
          if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v32[0]) = 0;
            _os_log_error_impl(&dword_183AA6000, v14, OS_LOG_TYPE_ERROR, "Unsupported IOSurface format for CPU readback", v32, 2u);
          }

          goto LABEL_34;
        }

        v13 = 80;
LABEL_17:
        v15 = MEMORY[0x1E69741C0];
        Width = IOSurfaceGetWidth(a1);
        v17 = [v15 texture2DDescriptorWithPixelFormat:v13 width:Width height:IOSurfaceGetHeight(a1) mipmapped:0];
        [v17 setUsage:1];
        v18 = [v10 newTextureWithDescriptor:v17 iosurface:a1 plane:0];
        if (v18)
        {
LABEL_18:
          v19 = IOSurfaceGetWidth(a1);
          Height = IOSurfaceGetHeight(a1);
          memset(v32, 0, 24);
          v32[3] = v19;
          v32[4] = Height;
          v32[5] = 1;
          [v18 getBytes:a2 bytesPerRow:a3 fromRegion:v32 mipmapLevel:0];

          v7 = Height * a3;
LABEL_35:
          objc_autoreleasePoolPop(v8);
          return v7;
        }

LABEL_34:
        v7 = 0;
        goto LABEL_35;
      }

      if (v12 != 1647534392)
      {
        if (v12 != 1999843442)
        {
          goto LABEL_12;
        }

        v13 = 554;
        goto LABEL_17;
      }

      v21 = objc_autoreleasePoolPush();
      v22 = IOSurfaceGetWidth(a1);
      v23 = IOSurfaceGetHeight(a1);
      v24 = IOSurfaceGetPixelFormat(a1);
      v25 = CA::Render::fourcc_compressed_of_type(v24, 0, 0);
      v18 = 0;
      if (v25 <= 1380411456)
      {
        if (v25 == 1111970369)
        {
          v26 = 80;
        }

        else
        {
          if (v25 != 1380401729)
          {
            goto LABEL_33;
          }

          v26 = 70;
        }
      }

      else
      {
        switch(v25)
        {
          case 1380411457:
            v26 = 115;
            break;
          case 1647534392:
            v26 = 550;
            break;
          case 1999843442:
            v26 = 554;
            break;
          default:
            goto LABEL_33;
        }
      }

      v27 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v26 width:v22 height:v23 mipmapped:0];
      [v27 setUsage:1];
      v28 = [v10 newTextureWithDescriptor:v27 iosurface:a1 plane:0];
      if (v28)
      {
        v29 = v28;
        v30 = v28;
        v18 = CACreateFloat16TextureFromTexture(v29);
      }

      else
      {
        v18 = 0;
      }

LABEL_33:
      objc_autoreleasePoolPop(v21);
      if (v18)
      {
        goto LABEL_18;
      }

      goto LABEL_34;
    }
  }

  return 0;
}

uint64_t CACreateFloat16TextureFromTexture(uint64_t a1)
{
  if (CACreateFloat16TextureFromTexture(objc_object  {objcproto10MTLTexture}*)::once != -1)
  {
    dispatch_once(&CACreateFloat16TextureFromTexture(objc_object  {objcproto10MTLTexture}*)::once, &__block_literal_global_8179);
  }

  os_unfair_lock_lock(&CACreateFloat16TextureFromTexture(objc_object  {objcproto10MTLTexture}*)::conversion_lock);
  v2 = (*(*CACreateFloat16TextureFromTexture(objc_object  {objcproto10MTLTexture}*)::conversion_metal_ctx + 784))(CACreateFloat16TextureFromTexture(objc_object  {objcproto10MTLTexture}*)::conversion_metal_ctx, a1);
  os_unfair_lock_unlock(&CACreateFloat16TextureFromTexture(objc_object  {objcproto10MTLTexture}*)::conversion_lock);
  return v2;
}

void ___ZL33CACreateFloat16TextureFromTexturePU21objcproto10MTLTexture11objc_object_block_invoke()
{
  v0 = CAMetalContextCreate();
  CACreateFloat16TextureFromTexture(objc_object  {objcproto10MTLTexture}*)::conversion_metal_ctx = CA::OGL::new_metal_context(v0, 0, 0, 0, 2, @"com.apple.coreanimation.CompressionReadbackConverter");
}

__n128 CA::WindowServer::FlipBook::debug_surface_bounds@<Q0>(CA::WindowServer::FlipBook *this@<X0>, __n128 *a2@<X8>)
{
  result = *(*(this + 2) + 168);
  *a2 = result;
  return result;
}

void CA::WindowServer::FlipBook::_resume(uint64_t *a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if ((a1[3] & 3) != 2)
  {
    __assert_rtn("_resume", "windowserver-flipbook.cpp", 990, "_state == kFlipBookStateSuspended");
  }

  if ((a2 & 0xFF00) == 0)
  {
    os_unfair_lock_lock(a1 + 2);
    v11 = a1[20];
    v12 = a1[21];
    if (v11 != v12)
    {
      do
      {
        CA::WindowServer::FlipBook::reuse_frame(a1, v11);
        v11 += 128;
      }

      while (v11 != v12);
      v11 = a1[20];
    }

    a1[21] = v11;
    *(a1 + 24) = a1[3] & 0xFC | 1;

    os_unfair_lock_unlock(a1 + 2);
    return;
  }

  v4 = mach_continuous_time();
  os_unfair_lock_lock(a1 + 2);
  v6 = a1[20];
  v5 = a1[21];
  if (v6 == v5)
  {
    goto LABEL_29;
  }

  if (*(v6 + 40) >= v4)
  {
    v10 = 0;
  }

  else
  {
    v7 = v6 + 128;
    do
    {
      v8 = v7;
      if (v7 == v5)
      {
        break;
      }

      v9 = *(v7 + 40);
      v7 += 128;
    }

    while (v9 < v4);
    v10 = *(v8 - 96);
  }

  v13 = v6 - 128;
  do
  {
    v14 = *(v6 + 32);
    if (v14 < v10)
    {
      (*(*a1 + 56))(a1, v6);
      CA::WindowServer::FlipBook::reuse_frame(a1, v6);
      goto LABEL_27;
    }

    if (v14 != v10)
    {
      if (v6 != a1[20])
      {
        v16 = *v13;
        v17 = *(v13 + 16);
        v18 = *(v13 + 48);
        v23 = *(v13 + 32);
        v24 = v18;
        v21 = v16;
        v22 = v17;
        v19 = *(v13 + 80);
        v25 = *(v13 + 64);
        v26 = v19;
        v27 = *(v13 + 96);
        v20 = *(v13 + 120);
        v28 = *(v13 + 112);
        v29 = v20;
LABEL_25:
        (*(*a1 + 96))(a1, v6, &v21);
        std::vector<CA::WindowServer::FlipBook::Frame>::push_back[abi:nn200100](a1 + 17, v6);
        goto LABEL_27;
      }

LABEL_24:
      v28 = 0;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v29 &= 0xFCu;
      goto LABEL_25;
    }

    v15 = *a1;
    if ((a2 & 0x10000) == 0)
    {
      (*(v15 + 64))(a1);
      *(v6 + 40) = v4;
      v28 = 0;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v29 &= 0xFCu;
      (*(*a1 + 96))(a1, v6, &v21);
      v28 = 0;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v29 &= 0xFCu;
      (*(*a1 + 96))(a1, v6, &v21);
      v28 = 0;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v29 &= 0xFCu;
      (*(*a1 + 96))(a1, v6, &v21);
      v28 = 0;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v29 &= 0xFCu;
      (*(*a1 + 96))(a1, v6, &v21);
      v28 = 0;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v29 &= 0xFCu;
      (*(*a1 + 96))(a1, v6, &v21);
      v28 = 0;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v29 &= 0xFCu;
      (*(*a1 + 96))(a1, v6, &v21);
      goto LABEL_24;
    }

    (*(v15 + 56))(a1, v6);
    CA::WindowServer::FlipBook::reuse_frame(a1, v6);
    (*(*a1 + 64))(a1);
LABEL_27:
    v6 += 128;
    v13 += 128;
  }

  while (v6 != a1[21]);
  v6 = a1[20];
LABEL_29:
  a1[21] = v6;
  CA::WindowServer::FlipBook::swap_enqueued_locked(a1);
  *(a1 + 24) = a1[3] & 0xFC | 1;
  os_unfair_lock_unlock(a1 + 2);
}

void CA::WindowServer::FlipBook::reuse_frame(CA::WindowServer::FlipBook *this, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (*(this + 41))
  {
    CA::WindowServer::FlipBook::collect_memory(this, *(a2 + 112));
    v4 = *(a2 + 92) * *(a2 + 88);
    v5 = *(a2 + 48) + 1;
    *(a2 + 40) = 0;
    *(a2 + 48) = v5;
    *(a2 + 56) = v4;
    *(a2 + 60) = 0;
    *(a2 + 32) = 0;
    *(this + 42) += *(a2 + 112);
    *(this + 324) = 0;
    std::vector<CA::WindowServer::FlipBook::Frame>::push_back[abi:nn200100](this + 14, a2);
    if (x_log_get_flipbook(void)::once != -1)
    {
      dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
    }

    v6 = x_log_get_flipbook(void)::log;
    if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      ID = IOSurfaceGetID(*a2);
      v8 = *(this + 10);
      v9 = v8;
      if (v8 >= 0x400)
      {
        v11 = 1.0;
        do
        {
          v11 = v11 * 0.0009765625;
          v10 = v11 * v9;
        }

        while (v11 * v9 >= 1024.0);
      }

      else
      {
        v10 = v8;
      }

      v12 = *(a2 + 48);
      v14 = *(a2 + 88);
      v13 = *(a2 + 92);
      v15 = v8 > 0x3FF;
      if ((v8 & 0xFFFFFFFFFFF00000) != 0)
      {
        ++v15;
      }

      if ((v8 & 0xFFFFFFFFC0000000) != 0)
      {
        ++v15;
      }

      if (v8 >> 40)
      {
        ++v15;
      }

      if (v8 >> 50)
      {
        ++v15;
      }

      if (v8 >> 60)
      {
        v16 = v15 + 1;
      }

      else
      {
        v16 = v15;
      }

      v17 = off_1E6DF9988[v16];
      v18 = *(this + 41);
      v19 = v18;
      if (v18 >= 0x400)
      {
        v21 = 1.0;
        do
        {
          v21 = v21 * 0.0009765625;
          v20 = v21 * v19;
        }

        while (v21 * v19 >= 1024.0);
      }

      else
      {
        v20 = v18;
      }

      v22 = v18 > 0x3FF;
      if ((v18 & 0xFFFFFFFFFFF00000) != 0)
      {
        ++v22;
      }

      if ((v18 & 0xFFFFFFFFC0000000) != 0)
      {
        ++v22;
      }

      if (v18 >> 40)
      {
        ++v22;
      }

      if (v18 >> 50)
      {
        ++v22;
      }

      if (v18 >> 60)
      {
        v23 = v22 + 1;
      }

      else
      {
        v23 = v22;
      }

      v24 = off_1E6DF9988[v23];
      v26 = *(this + 14);
      v25 = *(this + 15);
      v27[0] = 67111170;
      v27[1] = ID;
      v28 = 2048;
      v29 = v12;
      v30 = 1024;
      v31 = v14;
      v32 = 1024;
      v33 = v13;
      v34 = 2048;
      v35 = v10;
      v36 = 2080;
      v37 = v17;
      v38 = 2048;
      v39 = v20;
      v40 = 2080;
      v41 = v24;
      v42 = 2048;
      v43 = (v25 - v26) >> 7;
      _os_log_impl(&dword_183AA6000, v6, OS_LOG_TYPE_DEFAULT, "reuse surface 0x%x [%llu], %dx%d for the flipbook, memory pool usage = %.2lf %s, memory max pool = %.2lf %s, Free size: %zu", v27, 0x50u);
    }
  }

  else
  {
    if (*a2 == *(this + 23))
    {
      __assert_rtn("reuse_frame", "windowserver-flipbook.cpp", 1701, "frame.surface != _apl_scratch_buffer.surface");
    }

    CA::WindowServer::FlipBook::free_surface(this, a2);
  }
}

void CA::WindowServer::FlipBook::swap_enqueued_locked(CA::WindowServer::FlipBook *this)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(this + 11);
  if (v2 != *(this + 12))
  {
    do
    {
      if (x_log_get_flipbook(void)::once != -1)
      {
        dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
      }

      v3 = x_log_get_flipbook(void)::log;
      if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        ID = IOSurfaceGetID(*v2);
        *buf = 67109120;
        *&buf[4] = ID;
        _os_log_impl(&dword_183AA6000, v3, OS_LOG_TYPE_DEFAULT, "previously enqueued surface: 0x%x", buf, 8u);
      }

      if (*(this + 87) == 1 && (v5 = CA::WindowServer::FlipBook::previous_frame_with_seed(this, *(v2 + 32) - 1)) != 0)
      {
        v6 = *v5;
        v7 = *(v5 + 16);
        v8 = *(v5 + 48);
        v13 = *(v5 + 32);
        v14 = v8;
        *buf = v6;
        v12 = v7;
        v9 = *(v5 + 80);
        v15 = *(v5 + 64);
        v16 = v9;
        v17 = *(v5 + 96);
        v10 = *(v5 + 120);
        v18 = *(v5 + 112);
        v19 = v10;
      }

      else
      {
        v18 = 0;
        *buf = 0u;
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        v19 &= 0xFCu;
      }

      (*(*this + 96))(this, v2, buf);
      std::vector<CA::WindowServer::FlipBook::Frame>::push_back[abi:nn200100](this + 17, v2);
      v2 += 128;
    }

    while (v2 != *(this + 12));
    v2 = *(this + 11);
  }

  *(this + 12) = v2;
}

void std::vector<CA::WindowServer::FlipBook::Frame>::push_back[abi:nn200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v10 = (v3 - *a1) >> 7;
    v11 = v10 + 1;
    if ((v10 + 1) >> 57)
    {
      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v12 = v4 - *a1;
    if (v12 >> 6 > v11)
    {
      v11 = v12 >> 6;
    }

    if (v12 >= 0x7FFFFFFFFFFFFF80)
    {
      v13 = 0x1FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CA::WindowServer::FlipBook::Frame>>(v13);
    }

    v14 = v10 << 7;
    v15 = *a2;
    v16 = a2[1];
    v17 = a2[3];
    *(v14 + 32) = a2[2];
    *(v14 + 48) = v17;
    *v14 = v15;
    *(v14 + 16) = v16;
    *(v14 + 64) = a2[4];
    *(v14 + 80) = a2[5];
    *(v14 + 96) = a2[6];
    v18 = *(a2 + 14);
    *(v14 + 120) = *(a2 + 120);
    *(v14 + 112) = v18;
    v9 = (v10 << 7) + 128;
    v19 = *a1;
    v20 = a1[1];
    v21 = (v10 << 7) + *a1 - v20;
    if (*a1 != v20)
    {
      v22 = (v10 << 7) + *a1 - v20;
      do
      {
        v23 = *v19;
        v24 = v19[1];
        v25 = v19[3];
        *(v22 + 32) = v19[2];
        *(v22 + 48) = v25;
        *v22 = v23;
        *(v22 + 16) = v24;
        *(v22 + 64) = v19[4];
        *(v22 + 80) = v19[5];
        *(v22 + 96) = v19[6];
        v26 = *(v19 + 14);
        *(v22 + 120) = *(v19 + 120);
        *(v22 + 112) = v26;
        v19 += 8;
        v22 += 128;
      }

      while (v19 != v20);
      v19 = *a1;
    }

    *a1 = v21;
    a1[1] = v9;
    a1[2] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    *(v3 + 32) = a2[2];
    *(v3 + 48) = v7;
    *v3 = v5;
    *(v3 + 16) = v6;
    *(v3 + 64) = a2[4];
    *(v3 + 80) = a2[5];
    *(v3 + 96) = a2[6];
    v8 = *(a2 + 14);
    *(v3 + 120) = *(a2 + 120);
    *(v3 + 112) = v8;
    v9 = v3 + 128;
  }

  a1[1] = v9;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CA::WindowServer::FlipBook::Frame>>(unint64_t a1)
{
  if (!(a1 >> 57))
  {
    operator new();
  }

  std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
}

uint64_t CA::WindowServer::FlipBook::previous_frame_with_seed(CA::WindowServer::FlipBook *this, uint64_t a2)
{
  v2 = *(this + 18);
  if (*(this + 17) != v2 && *(v2 - 96) == a2)
  {
    return v2 - 128;
  }

  v2 = *(this + 12);
  if (*(this + 11) != v2 && *(v2 - 96) == a2)
  {
    return v2 - 128;
  }

  v4 = *(this + 21);
  if (*(this + 20) == v4)
  {
    return 0;
  }

  if (*(v4 - 96) == a2)
  {
    return v4 - 128;
  }

  return 0;
}

void CA::WindowServer::FlipBook::free_surface(void *a1, void *a2)
{
  v4 = *(*(*a1 + 88))(a1);
  a1[10] -= a2[14];
  (*(*v4 + 48))(v4, *a2);
  CFRelease(*a2);
  v5 = a2[1];
  if (v5)
  {
    CA::OGL::Context::release_surface_async(v4, v5);
  }

  if (a2[2])
  {
    (*(*v4 + 48))(v4);
    CFRelease(a2[2]);
    v6 = a2[3];
    if (v6)
    {

      CA::OGL::Context::release_surface_async(v4, v6);
    }
  }
}

void CA::WindowServer::FlipBook::collect_memory(CA::WindowServer::FlipBook *this, uint64_t a2)
{
  v2 = *(this + 42);
  if ((v2 + a2) > *(this + 41))
  {
    v5 = *(this + 15);
    do
    {
      if (*(this + 14) == v5)
      {
        break;
      }

      if (*(v5 - 128) == *(this + 23))
      {
        __assert_rtn("collect_memory", "windowserver-flipbook.cpp", 1771, "frame.surface != _apl_scratch_buffer.surface");
      }

      *(this + 42) = v2 - *(v5 - 16);
      CA::WindowServer::FlipBook::free_surface(this, (v5 - 128));
      v5 = *(this + 15) - 128;
      *(this + 15) = v5;
      v2 = *(this + 42);
    }

    while ((v2 + a2) > *(this + 41));
  }
}

CA::Render::Context *CA::WindowServer::FlipBook::_suspend(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 24) & 3) != 1)
  {
    __assert_rtn("_suspend", "windowserver-flipbook.cpp", 965, "_state == kFlipBookStateActive");
  }

  v5[0] = 0;
  v4 = 0;
  CA::WindowServer::FlipBook::cancel(a1, v5, &v4, 0, 1);
  if (v5[0])
  {
    (*(*a1 + 48))(a1, v4);
  }

  os_unfair_lock_lock((a1 + 8));
  v2 = (*(a1 + 144) - *(a1 + 136)) >> 7;
  os_unfair_lock_unlock((a1 + 8));
  (*(*a1 + 120))(a1, v2);
  *(a1 + 24) = *(a1 + 24) & 0xFC | 2;
  result = CA::WindowServer::FlipBook::invalidate_context(*(a1 + 56));
  *(a1 + 56) = 0;
  return result;
}

void CA::WindowServer::FlipBook::cancel(CA::WindowServer::FlipBook *this, unint64_t *a2, unsigned __int8 *a3, unsigned int *a4, int a5)
{
  v83[3] = *MEMORY[0x1E69E9840];
  *a2 = 0;
  *a3 = 0;
  if ((*(this + 24) & 3) == 2)
  {
    os_unfair_lock_lock(this + 2);
    v6 = *(this + 20);
    v7 = *(this + 21);
    v8 = v7 - v6;
    if (v7 != v6)
    {
      do
      {
        CA::WindowServer::FlipBook::reuse_frame(this, v6);
        v6 += 128;
      }

      while (v6 != v7);
      v6 = *(this + 20);
    }

    *(this + 21) = v6;
    if (x_log_get_flipbook(void)::once != -1)
    {
      dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
    }

    v9 = x_log_get_flipbook(void)::log;
    if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(this + 10);
      v11 = v10;
      if (v10 >= 0x400)
      {
        v25 = 1.0;
        do
        {
          v25 = v25 * 0.0009765625;
          v12 = v25 * v11;
        }

        while (v25 * v11 >= 1024.0);
      }

      else
      {
        v12 = v10;
      }

      v26 = v10 > 0x3FF;
      if ((v10 & 0xFFFFFFFFFFF00000) != 0)
      {
        ++v26;
      }

      if ((v10 & 0xFFFFFFFFC0000000) != 0)
      {
        ++v26;
      }

      if (v10 >> 40)
      {
        ++v26;
      }

      if (v10 >> 50)
      {
        ++v26;
      }

      if (v10 >> 60)
      {
        v27 = v26 + 1;
      }

      else
      {
        v27 = v26;
      }

      v28 = off_1E6DF9988[v27];
      *buf = 134218498;
      *&buf[4] = v8 >> 7;
      *&buf[12] = 2048;
      *&buf[14] = v12;
      v69 = 2080;
      v70 = v28;
      _os_log_impl(&dword_183AA6000, v9, OS_LOG_TYPE_DEFAULT, "FlipBook::cancel(), cancelled %zu suppressed frames, memory usage = %.2lf %s", buf, 0x20u);
    }

LABEL_121:
    os_unfair_lock_unlock(this + 2);
    return;
  }

  (*(*this + 72))(this, 0);
  v17 = (*(*this + 136))(this);
  os_unfair_lock_lock(this + 2);
  v18 = (*(this + 18) - *(this + 17)) >> 7;
  if (v17)
  {
    v65 = *(this + 11);
    v66 = *(this + 12);
    v67 = 0;
    *(this + 8) = 0;
    v81[1] = this;
    v81[2] = 0;
    v81[0] = &unk_1EF1FA9D0;
    v82 = v81;
    if ((*(*this + 112))(this, &v67, v18))
    {
      *buf = &unk_1EF1FAA18;
      *&buf[8] = &v67;
      v70 = buf;
      if (v82 == v81)
      {
        memset(v83, 0, 24);
        std::__function::__func<CA::WindowServer::FlipBook::cancel(unsigned long long &,unsigned char &,unsigned int *,BOOL)::$_1,std::allocator<CA::WindowServer::FlipBook::cancel(unsigned long long &,unsigned char &,unsigned int *,BOOL)::$_1>,BOOL ()(std::reverse_iterator<std::__wrap_iter<CA::WindowServer::FlipBook::Frame *>>)>::__clone(buf, v83);
        (*(*v70 + 32))(v70);
        v70 = 0;
        (*(*v82 + 24))(v82, buf);
        (*(*v82 + 32))(v82);
        v82 = 0;
        v70 = buf;
        (*(v83[0] + 24))(v83, v81);
        (*(v83[0] + 32))(v83);
      }

      else
      {
        std::__function::__func<CA::WindowServer::FlipBook::cancel(unsigned long long &,unsigned char &,unsigned int *,BOOL)::$_1,std::allocator<CA::WindowServer::FlipBook::cancel(unsigned long long &,unsigned char &,unsigned int *,BOOL)::$_1>,BOOL ()(std::reverse_iterator<std::__wrap_iter<CA::WindowServer::FlipBook::Frame *>>)>::__clone(buf, v81);
        (*(*v70 + 32))(v70);
        v70 = v82;
      }

      v82 = v81;
      std::__function::__value_func<BOOL ()(std::reverse_iterator<std::__wrap_iter<CA::WindowServer::FlipBook::Frame *>>)>::~__value_func[abi:nn200100](buf);
    }

    v40 = *(this + 17);
    v41 = *(this + 18);
    if (v41 == v40)
    {
      v43 = *(this + 18);
LABEL_73:
      if ((a5 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v42 = *(this + 18);
      v43 = v42;
      while (1)
      {
        *buf = v41;
        *&buf[8] = v42;
        if (!v82)
        {
          std::__throw_bad_function_call[abi:nn200100]();
        }

        if ((*(*v82 + 48))(v82, buf))
        {
          break;
        }

        v43 -= 128;
        v40 = *(this + 17);
        v42 -= 128;
        if (v43 == v40)
        {
          goto LABEL_73;
        }
      }

      *a2 = *(v43 - 96);
      *a3 = *(v43 - 8) & 1;
      v67 = *(v43 - 68);
      if (a4)
      {
        if (CADeviceHasInternalBuild::once != -1)
        {
          dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
        }

        if (CADeviceHasInternalBuild::internal == 1 && (byte_1ED4E98BF & 1) == 0)
        {
          CA::WindowServer::FlipBook::copy_surface(this, *(v43 - 128), *(v43 - 8), a4);
        }
      }

      *(this + 8) = *(v43 - 88);
      v40 = *(this + 17);
      if ((a5 & 1) == 0)
      {
LABEL_86:
        v46 = 0;
        v47 = *(this + 18);
LABEL_95:
        while (v40 != v47)
        {
          if (*(v40 + 32) <= *a2)
          {
            v40 += 128;
          }

          else
          {
            CA::WindowServer::FlipBook::reuse_frame(this, v40);
            v48 = *(this + 18);
            if (v40 + 128 == v48)
            {
              v47 = v40;
            }

            else
            {
              v49 = v40;
              do
              {
                v47 = (v49 + 128);
                v50 = *(v49 + 144);
                *v49 = *(v49 + 128);
                *(v49 + 16) = v50;
                v51 = *(v49 + 176);
                *(v49 + 32) = *(v49 + 160);
                *(v49 + 48) = v51;
                v52 = *(v49 + 208);
                *(v49 + 64) = *(v49 + 192);
                *(v49 + 80) = v52;
                *(v49 + 120) = *(v49 + 248);
                *(v49 + 112) = *(v49 + 240);
                v53 = v49 + 256;
                *(v49 + 96) = *(v49 + 224);
                v49 += 128;
              }

              while (v53 != v48);
            }

            *(this + 18) = v47;
            ++v46;
          }
        }

        v55 = *(this + 11);
        v54 = *(this + 12);
        if (a5)
        {
          if (v55 != v54)
          {
            do
            {
              std::vector<CA::WindowServer::FlipBook::Frame>::push_back[abi:nn200100](this + 20, v55);
              v55 += 8;
            }

            while (v55 != *(this + 12));
          }
        }

        else if (v55 != v54)
        {
          do
          {
            CA::WindowServer::FlipBook::reuse_frame(this, v55);
            v55 += 8;
          }

          while (v55 != *(this + 12));
        }

        *(this + 12) = *(this + 11);
        if (x_log_get_flipbook(void)::once != -1)
        {
          dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
        }

        v56 = x_log_get_flipbook(void)::log;
        if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          v57 = *a2;
          v58 = *(this + 8);
          v59 = *(this + 10);
          v60 = v59;
          if (v59 >= 0x400)
          {
            v62 = 1.0;
            do
            {
              v62 = v62 * 0.0009765625;
              v61 = v62 * v60;
            }

            while (v62 * v60 >= 1024.0);
          }

          else
          {
            v61 = v59;
          }

          v63 = v59 > 0x3FF;
          if ((v59 & 0xFFFFFFFFFFF00000) != 0)
          {
            ++v63;
          }

          if ((v59 & 0xFFFFFFFFC0000000) != 0)
          {
            ++v63;
          }

          if (v59 >> 40)
          {
            ++v63;
          }

          if (v59 >> 50)
          {
            ++v63;
          }

          if (v59 >> 60)
          {
            ++v63;
          }

          v64 = off_1E6DF9988[v63];
          *buf = 134219778;
          *&buf[4] = v46;
          *&buf[12] = 2048;
          *&buf[14] = v18;
          v69 = 2048;
          v70 = (v66 - v65) >> 7;
          v71 = 1024;
          v72 = v67;
          v73 = 2048;
          v74 = v57;
          v75 = 2048;
          v76 = v58;
          v77 = 2048;
          v78 = v61;
          v79 = 2080;
          v80 = v64;
          _os_log_impl(&dword_183AA6000, v56, OS_LOG_TYPE_DEFAULT, "FlipBook::cancel(), cancelled %zu/%zu swapped frames and %zu enqueued frames, last frame = swap %u (seed %llu, timestamp %llu), memory usage = %.2lf %s", buf, 0x4Eu);
        }

        CA::WindowServer::FlipBook::collect(this);
        std::__function::__value_func<BOOL ()(std::reverse_iterator<std::__wrap_iter<CA::WindowServer::FlipBook::Frame *>>)>::~__value_func[abi:nn200100](v81);
        goto LABEL_121;
      }
    }

    if (v43 == v40)
    {
      v44 = v40;
    }

    else
    {
      v44 = (v43 - 128);
    }

    v45 = *(this + 18);
    v46 = (v45 - v44) >> 7;
    std::vector<CA::WindowServer::FlipBook::Frame>::__insert_with_size[abi:nn200100]<std::__wrap_iter<CA::WindowServer::FlipBook::Frame*>,std::__wrap_iter<CA::WindowServer::FlipBook::Frame*>>(this + 20, *(this + 21), v44, v45, v46);
    v40 = *(this + 17);
    v47 = *(this + 18);
    if (v44 != v47)
    {
      *(this + 18) = v44;
      v47 = v44;
    }

    goto LABEL_95;
  }

  os_unfair_lock_unlock(this + 2);
  (*(*this + 120))(this, v18);
  *a2 = 0;
  *a3 = 0;
  v19 = mach_continuous_time();
  *(this + 8) = 0;
  os_unfair_lock_lock(this + 2);
  v21 = *(this + 17);
  v20 = *(this + 18);
  if (v21 != v20)
  {
    v22 = *(this + 17);
    if (*(v21 + 40) < v19)
    {
      v23 = (v21 + 120);
      while (1)
      {
        v24 = v23;
        *a2 = *(v23 - 11);
        *a3 = *v23 & 1;
        v22 = (v23 + 8);
        v20 = *(this + 18);
        if (v22 == v20)
        {
          break;
        }

        v23 = v24 + 128;
        if (*(v24 + 6) >= v19)
        {
          v22 = (v24 + 8);
          break;
        }
      }

      v21 = *(this + 17);
    }

    if (!a5)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

  v22 = *(this + 17);
  if (a5)
  {
LABEL_38:
    v29 = 0xFFFFFFFFFFFFFF8;
    if (v22 == v21)
    {
      v29 = 0;
    }

    v30 = &v22[v29];
    std::vector<CA::WindowServer::FlipBook::Frame>::__insert_with_size[abi:nn200100]<std::__wrap_iter<CA::WindowServer::FlipBook::Frame*>,std::__wrap_iter<CA::WindowServer::FlipBook::Frame*>>(this + 20, *(this + 21), &v22[v29], v20, (v20 - &v22[v29]) >> 7);
    v21 = *(this + 17);
    v20 = *(this + 18);
    if (v30 != v20)
    {
      *(this + 18) = v30;
      v20 = v30;
    }
  }

LABEL_42:
  if (v21 == v20)
  {
    v37 = v20;
  }

  else
  {
    do
    {
      if (*(v21 + 32) == *a2)
      {
        v21 += 128;
      }

      else
      {
        CA::WindowServer::FlipBook::reuse_frame(this, v21);
        v31 = *(this + 18);
        if (v21 + 128 == v31)
        {
          v20 = v21;
        }

        else
        {
          v32 = v21;
          do
          {
            v20 = (v32 + 128);
            v33 = *(v32 + 144);
            *v32 = *(v32 + 128);
            *(v32 + 16) = v33;
            v34 = *(v32 + 176);
            *(v32 + 32) = *(v32 + 160);
            *(v32 + 48) = v34;
            v35 = *(v32 + 208);
            *(v32 + 64) = *(v32 + 192);
            *(v32 + 80) = v35;
            *(v32 + 120) = *(v32 + 248);
            *(v32 + 112) = *(v32 + 240);
            v36 = v32 + 256;
            *(v32 + 96) = *(v32 + 224);
            v32 += 128;
          }

          while (v36 != v31);
        }

        *(this + 18) = v20;
      }
    }

    while (v21 != v20);
    v37 = *(this + 17);
  }

  if ((v20 - v37) >= 0x81)
  {
    __assert_rtn("cancel_all", "windowserver-flipbook.cpp", 341, "_swapped.size () <= 1");
  }

  v39 = *(this + 11);
  v38 = *(this + 12);
  if (a5)
  {
    if (v39 != v38)
    {
      do
      {
        std::vector<CA::WindowServer::FlipBook::Frame>::push_back[abi:nn200100](this + 20, v39);
        v39 += 8;
      }

      while (v39 != *(this + 12));
    }
  }

  else if (v39 != v38)
  {
    do
    {
      CA::WindowServer::FlipBook::reuse_frame(this, v39);
      v39 += 8;
    }

    while (v39 != *(this + 12));
  }

  *(this + 12) = *(this + 11);
  CA::WindowServer::FlipBook::collect(this);

  os_unfair_lock_unlock(this + 2);
}

CA::Render::Context *CA::WindowServer::FlipBook::invalidate_context(CA::Render::Context *this)
{
  if (this)
  {
    this = CA::Render::Context::context_by_id(this);
    if (this)
    {
      v2 = this;
      this = CA::WindowServer::FlipBook::invalidate_context(this, v1);
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        v3 = *(*v2 + 16);

        return v3(v2);
      }
    }
  }

  return this;
}

uint64_t CA::WindowServer::FlipBook::invalidate_context(CA::WindowServer::FlipBook *this, CA::Render::Context *a2)
{
  pthread_mutex_lock((this + 72));
  v3 = CA::Render::Context::root_layer_handle(this);
  if (v3)
  {
    *(v3 + 13) |= 7uLL;
    v3[3] |= 0x400u;
  }

  return pthread_mutex_unlock((this + 72));
}

uint64_t std::__function::__value_func<BOOL ()(std::reverse_iterator<std::__wrap_iter<CA::WindowServer::FlipBook::Frame *>>)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void CA::WindowServer::FlipBook::copy_surface(uint64_t a1, IOSurfaceRef buffer, char a3, mach_port_t *a4)
{
  if (*(a1 + 348) == 1)
  {
    buffer = (*(*a1 + 160))(a1, a3 & 1);
  }

  if (buffer)
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 176);
    v9 = *(v7 + 180);
    if (CADeviceUseCIF10::once != -1)
    {
      dispatch_once(&CADeviceUseCIF10::once, &__block_literal_global_12623);
    }

    if (CADeviceUseCIF10::enable_cif10)
    {
      v10 = 1999843442;
    }

    else
    {
      v10 = 1111970369;
    }

    v11 = CA::WindowServer::IOSurface::wrap_buffer(*(a1 + 16), buffer, 0, 0);
    iosurface_with_pixel_format = CA::Render::create_iosurface_with_pixel_format(v10, v8, v9, 0, 0, 0, v12);
    v14 = CA::WindowServer::IOSurface::wrap_buffer(*(a1 + 16), iosurface_with_pixel_format, 0, 0);
    (*(*v14 + 184))(v14, v11, 4096, 0, 0, 0, 0, 1.0);
    *a4 = IOSurfaceCreateMachPort(iosurface_with_pixel_format);
    CA::WindowServer::Surface::unref(v11);
    CA::WindowServer::Surface::unref(v14);

    CFRelease(iosurface_with_pixel_format);
  }
}

__n128 std::vector<CA::WindowServer::FlipBook::Frame>::__insert_with_size[abi:nn200100]<std::__wrap_iter<CA::WindowServer::FlipBook::Frame*>,std::__wrap_iter<CA::WindowServer::FlipBook::Frame*>>(__n128 **a1, __n128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = a3;
    v6 = a2;
    v8 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v8) >> 7)
    {
      v15 = (v8 - a2) >> 7;
      if (v15 >= a5)
      {
        v31 = &a2[8 * a5];
        n128_u64 = v8[-8 * a5].n128_u64;
        if (n128_u64 >= v8)
        {
          v34 = a1[1];
        }

        else
        {
          v33 = &v8[-8 * a5];
          v34 = a1[1];
          do
          {
            v35 = *v33;
            v36 = v33[1];
            v37 = v33[3];
            v34[2] = v33[2];
            v34[3] = v37;
            *v34 = v35;
            v34[1] = v36;
            v34[4] = v33[4];
            v34[5] = v33[5];
            v34[6] = v33[6];
            v38 = *(v33 + 14);
            v34[7].n128_u8[8] = *(v33 + 120);
            v34[7].n128_u64[0] = v38;
            v33 += 8;
            v34 += 8;
          }

          while (v33 < v8);
        }

        a1[1] = v34;
        if (v8 != v31)
        {
          v73 = 0;
          v74 = v31 - v8;
          do
          {
            v75 = &v8[v73 / 0x10];
            v76 = *(n128_u64 + v73 - 128);
            v77 = *(n128_u64 + v73 - 112);
            v78 = *(n128_u64 + v73 - 80);
            v75[-6] = *(n128_u64 + v73 - 96);
            v75[-5] = v78;
            v75[-8] = v76;
            v75[-7] = v77;
            v75[-4] = *(n128_u64 + v73 - 64);
            v75[-3] = *(n128_u64 + v73 - 48);
            v75[-2] = *(n128_u64 + v73 - 32);
            v79 = *(n128_u64 + v73 - 16);
            v75[-1].n128_u8[8] = *(n128_u64 + v73 - 8);
            v75[-1].n128_u64[0] = v79;
            v73 -= 128;
          }

          while (v74 != v73);
        }

        do
        {
          v80 = *v5;
          v81 = v5[1];
          v82 = v5[3];
          v6[2] = v5[2];
          v6[3] = v82;
          *v6 = v80;
          v6[1] = v81;
          v6[4] = v5[4];
          v6[5] = v5[5];
          result = v5[6];
          v6[6] = result;
          v83 = *(v5 + 14);
          v6[7].n128_u8[8] = *(v5 + 120);
          v6[7].n128_u64[0] = v83;
          v5 += 8;
          v6 += 8;
        }

        while (v5 != &a3[8 * a5]);
      }

      else
      {
        v16 = (a3 + v8 - a2);
        v17 = a1[1];
        if (v16 != a4)
        {
          v18 = (a3 + v8 - a2);
          v17 = a1[1];
          do
          {
            v19 = *v18;
            v20 = v18[1];
            v21 = v18[3];
            v17[2] = v18[2];
            v17[3] = v21;
            *v17 = v19;
            v17[1] = v20;
            v17[4] = v18[4];
            v17[5] = v18[5];
            result = v18[6];
            v17[6] = result;
            v23 = *(v18 + 14);
            v17[7].n128_u8[8] = *(v18 + 120);
            v17[7].n128_u64[0] = v23;
            v18 += 8;
            v17 += 8;
          }

          while (v18 != a4);
        }

        a1[1] = v17;
        if (v15 >= 1)
        {
          v24 = &a2[8 * a5];
          v25 = &v17[-8 * a5];
          v26 = v17;
          while (v25 < v8)
          {
            v27 = *v25;
            v28 = v25[1];
            v29 = v25[3];
            v26[2] = v25[2];
            v26[3] = v29;
            *v26 = v27;
            v26[1] = v28;
            v26[4] = v25[4];
            v26[5] = v25[5];
            result = v25[6];
            v26[6] = result;
            v30 = *(v25 + 14);
            v26[7].n128_u8[8] = *(v25 + 120);
            v26[7].n128_u64[0] = v30;
            v25 += 8;
            v26 += 8;
          }

          a1[1] = v26;
          if (v17 != v24)
          {
            v62 = 0;
            v63 = -8 * a5;
            do
            {
              v64 = &v17[v62];
              v65 = v17[v63 - 8];
              v66 = v17[v63 - 7];
              v67 = v17[v63 - 5];
              v64[-6] = v17[v63 - 6];
              v64[-5] = v67;
              v64[-8] = v65;
              v64[-7] = v66;
              v64[-4] = v17[v63 - 4];
              v64[-3] = v17[v63 - 3];
              result = v17[v63 - 2];
              v64[-2] = result;
              v68 = v17[v63 - 1].n128_i64[0];
              v64[-1].n128_u8[8] = v17[v63 - 1].n128_u8[8];
              v64[-1].n128_u64[0] = v68;
              v63 -= 8;
              v24 += 128;
              v62 -= 8;
            }

            while (v17 != v24);
          }

          if (v8 != a2)
          {
            do
            {
              v69 = *v5;
              v70 = v5[1];
              v71 = v5[3];
              v6[2] = v5[2];
              v6[3] = v71;
              *v6 = v69;
              v6[1] = v70;
              v6[4] = v5[4];
              v6[5] = v5[5];
              result = v5[6];
              v6[6] = result;
              v72 = *(v5 + 14);
              v6[7].n128_u8[8] = *(v5 + 120);
              v6[7].n128_u64[0] = v72;
              v5 += 8;
              v6 += 8;
            }

            while (v5 != v16);
          }
        }
      }
    }

    else
    {
      v10 = *a1;
      v11 = a5 + ((v8 - *a1) >> 7);
      if (v11 >> 57)
      {
        std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
      }

      v12 = v9 - v10;
      if (v12 >> 6 > v11)
      {
        v11 = v12 >> 6;
      }

      if (v12 >= 0x7FFFFFFFFFFFFF80)
      {
        v13 = 0x1FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      v14 = (a2 - v10) >> 7;
      if (v13)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<CA::WindowServer::FlipBook::Frame>>(v13);
      }

      v39 = v14 << 7;
      v40 = (v14 << 7) + (a5 << 7);
      v41 = v14 << 7;
      do
      {
        v42 = *v5;
        v43 = v5[1];
        v44 = v5[3];
        *(v41 + 32) = v5[2];
        *(v41 + 48) = v44;
        *v41 = v42;
        *(v41 + 16) = v43;
        *(v41 + 64) = v5[4];
        *(v41 + 80) = v5[5];
        result = v5[6];
        *(v41 + 96) = result;
        v45 = *(v5 + 14);
        *(v41 + 120) = *(v5 + 120);
        *(v41 + 112) = v45;
        v41 += 128;
        v5 += 8;
      }

      while (v41 != v40);
      v46 = a1[1];
      v47 = a2;
      if (a2 != v46)
      {
        v48 = a2;
        v49 = v39 + (a5 << 7);
        do
        {
          v50 = *v48;
          v51 = v48[1];
          v52 = v48[3];
          *(v49 + 32) = v48[2];
          *(v49 + 48) = v52;
          *v49 = v50;
          *(v49 + 16) = v51;
          *(v49 + 64) = v48[4];
          *(v49 + 80) = v48[5];
          result = v48[6];
          *(v49 + 96) = result;
          v53 = v48[7].n128_i64[0];
          *(v49 + 120) = v48[7].n128_u8[8];
          *(v49 + 112) = v53;
          v48 += 8;
          v49 += 128;
        }

        while (v48 != v46);
        v47 = a1[1];
      }

      v54 = v40 + v47 - a2;
      a1[1] = a2;
      v55 = *a1;
      v56 = v39 + *a1 - a2;
      if (*a1 != a2)
      {
        v57 = v56;
        do
        {
          v58 = *v55;
          v59 = v55[1];
          v60 = v55[3];
          *(v57 + 32) = v55[2];
          *(v57 + 48) = v60;
          *v57 = v58;
          *(v57 + 16) = v59;
          *(v57 + 64) = v55[4];
          *(v57 + 80) = v55[5];
          result = v55[6];
          *(v57 + 96) = result;
          v61 = v55[7].n128_i64[0];
          *(v57 + 120) = v55[7].n128_u8[8];
          *(v57 + 112) = v61;
          v55 += 8;
          v57 += 128;
        }

        while (v55 != a2);
        v55 = *a1;
      }

      *a1 = v56;
      a1[1] = v54;
      a1[2] = 0;
      if (v55)
      {

        operator delete(v55);
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<CA::WindowServer::FlipBook::cancel(unsigned long long &,unsigned char &,unsigned int *,BOOL)::$_1,std::allocator<CA::WindowServer::FlipBook::cancel(unsigned long long &,unsigned char &,unsigned int *,BOOL)::$_1>,BOOL ()(std::reverse_iterator<std::__wrap_iter<CA::WindowServer::FlipBook::Frame *>>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF1FAA18;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CA::WindowServer::FlipBook::cancel(unsigned long long &,unsigned char &,unsigned int *,BOOL)::$_0,std::allocator<CA::WindowServer::FlipBook::cancel(unsigned long long &,unsigned char &,unsigned int *,BOOL)::$_0>,BOOL ()(std::reverse_iterator<std::__wrap_iter<CA::WindowServer::FlipBook::Frame *>>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF1FA9D0;
  a2[1] = v2;
  return result;
}

void CA::WindowServer::FlipBook::_exit(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 8));
  v2 = (*(a1 + 144) - *(a1 + 136)) >> 7;
  os_unfair_lock_unlock((a1 + 8));
  (*(*a1 + 120))(a1, v2);
  *(a1 + 24) &= 0xFCu;
  CA::WindowServer::FlipBook::invalidate_context(*(a1 + 56));
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  os_unfair_lock_lock((a1 + 8));
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  if (v3 != v4)
  {
    do
    {
      CA::WindowServer::FlipBook::reuse_frame(a1, v3);
      v3 += 128;
    }

    while (v3 != v4);
    v3 = *(a1 + 88);
  }

  *(a1 + 96) = v3;
  CA::WindowServer::FlipBook::collect(a1);

  os_unfair_lock_unlock((a1 + 8));
}

void CA::WindowServer::FlipBook::_enter(uint64_t a1, __int16 a2)
{
  if ((*(a1 + 24) & 3) != 0)
  {
    __assert_rtn("_enter", "windowserver-flipbook.cpp", 921, "_state == kFlipBookStateDisabled");
  }

  *(a1 + 24) |= 1u;
  if ((a2 & 0xFF00) != 0x200)
  {
    os_unfair_lock_lock((a1 + 8));
    CA::WindowServer::FlipBook::swap_enqueued_locked(a1);

    os_unfair_lock_unlock((a1 + 8));
  }
}

void CA::WindowServer::FlipBook::free_surfaces(CA::WindowServer::FlipBook *this)
{
  v38 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 2);
  v2 = mach_absolute_time();
  v3 = CATimeWithHostTime(v2);
  v4 = *(this + 12);
  v5 = *(this + 11);
  v7 = *(this + 14);
  v6 = *(this + 15);
  v8 = *(this + 17);
  v29 = *(this + 18);
  v10 = *(this + 20);
  v9 = *(this + 21);
  v11 = v4 - v5;
  if (v4 == v5)
  {
    v13 = *(this + 15);
    v12 = *(this + 14);
  }

  else
  {
    do
    {
      CA::WindowServer::FlipBook::free_surface(this, v5);
      v5 += 128;
    }

    while (v5 != v4);
    v5 = *(this + 11);
    v12 = *(this + 14);
    v13 = *(this + 15);
  }

  *(this + 12) = v5;
  if (v12 != v13)
  {
    do
    {
      CA::WindowServer::FlipBook::free_surface(this, v12);
      v12 += 16;
    }

    while (v12 != v13);
    v12 = *(this + 14);
  }

  *(this + 15) = v12;
  *(this + 42) = 0;
  v14 = *(this + 17);
  v15 = *(this + 18);
  if (v14 != v15)
  {
    do
    {
      CA::WindowServer::FlipBook::free_surface(this, v14);
      v14 += 16;
    }

    while (v14 != v15);
    v14 = *(this + 17);
  }

  *(this + 18) = v14;
  v16 = *(this + 20);
  v17 = *(this + 21);
  if (v16 != v17)
  {
    do
    {
      CA::WindowServer::FlipBook::free_surface(this, v16);
      v16 += 16;
    }

    while (v16 != v17);
    v16 = *(this + 20);
  }

  v18 = *(this + 23);
  *(this + 21) = v16;
  if (v18)
  {
    CA::WindowServer::FlipBook::free_surface(this, this + 23);
    *(this + 37) = 0;
    *(this + 304) = 0;
    *(this + 184) = 0u;
    *(this + 200) = 0u;
    *(this + 216) = 0u;
    *(this + 232) = 0u;
  }

  if (x_log_get_flipbook(void)::once != -1)
  {
    dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
  }

  v19 = x_log_get_flipbook(void)::log;
  if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v20 = mach_absolute_time();
    v21 = (CATimeWithHostTime(v20) - v3) * 1000.0;
    v22 = *(this + 10);
    v23 = v22;
    if (v22 >= 0x400)
    {
      v25 = 1.0;
      do
      {
        v25 = v25 * 0.0009765625;
        v24 = v25 * v23;
      }

      while (v25 * v23 >= 1024.0);
    }

    else
    {
      v24 = v22;
    }

    v26 = v22 > 0x3FF;
    if ((v22 & 0xFFFFFFFFFFF00000) != 0)
    {
      ++v26;
    }

    if ((v22 & 0xFFFFFFFFC0000000) != 0)
    {
      ++v26;
    }

    if (v22 >> 40)
    {
      ++v26;
    }

    if (v22 >> 50)
    {
      ++v26;
    }

    if (v22 >> 60)
    {
      v27 = v26 + 1;
    }

    else
    {
      v27 = v26;
    }

    v28 = off_1E6DF9988[v27];
    *buf = 134218754;
    v31 = ((v6 - v7) >> 7) + (v11 >> 7) + ((v29 - v8) >> 7) + ((v9 - v10) >> 7);
    v32 = 2048;
    v33 = v21;
    v34 = 2048;
    v35 = v24;
    v36 = 2080;
    v37 = v28;
    _os_log_impl(&dword_183AA6000, v19, OS_LOG_TYPE_DEFAULT, "%zu surfaces freed in %g ms, memory usage = %.2lf %s", buf, 0x2Au);
  }

  os_unfair_lock_unlock(this + 2);
}

void CA::WindowServer::FlipBook::recycle(os_unfair_lock_s *this)
{
  v10 = *MEMORY[0x1E69E9840];
  if (CADeviceSupportsDCP::once[0] != -1)
  {
    dispatch_once(CADeviceSupportsDCP::once, &__block_literal_global_341);
  }

  if (CADeviceSupportsDCP::has_dcp == 1)
  {
    v2 = mach_continuous_time();
    os_unfair_lock_lock(this + 2);
    v3 = *&this[34]._os_unfair_lock_opaque;
    v4 = *&this[36]._os_unfair_lock_opaque;
    if (v4 == v3)
    {
LABEL_11:

      os_unfair_lock_unlock(this + 2);
      return;
    }

    v5 = v4 - 128;
    while (1)
    {
      if (*(v5 + 40) < v2)
      {
        if ((*(*&this->_os_unfair_lock_opaque + 128))(this, v5))
        {
          v7 = *(v5 + 60);
          if (x_log_get_flipbook(void)::once != -1)
          {
            dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
          }

          v8 = x_log_get_flipbook(void)::log;
          if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v9[0] = 67109120;
            v9[1] = v7;
            _os_log_impl(&dword_183AA6000, v8, OS_LOG_TYPE_DEFAULT, "manually recycling swaps prior to %u", v9, 8u);
          }

          os_unfair_lock_unlock(this + 2);
          if (v7)
          {
            CA::WindowServer::FlipBook::swap_completed(this, v7);
          }

          return;
        }

        v3 = *&this[34]._os_unfair_lock_opaque;
      }

      v6 = v5 == v3;
      v5 -= 128;
      if (v6)
      {
        goto LABEL_11;
      }
    }
  }
}

void CA::WindowServer::FlipBook::next_frame(CA::WindowServer::FlipBook *this, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v42 = *MEMORY[0x1E69E9840];
  *(this + 7) = 0u;
  v8 = this + 112;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  os_unfair_lock_lock((a2 + 8));
  v13 = *(a2 + 112);
  v14 = *(a2 + 120);
  if (v14 == v13)
  {
    v15 = *(a2 + 120);
    v13 = v15;
  }

  else
  {
    if ((*(a2 + 324) & 1) == 0)
    {
      std::__introsort<std::_ClassicAlgPolicy,CA::WindowServer::FlipBook::next_frame(unsigned long,unsigned long)::$_0 &,CA::WindowServer::FlipBook::Frame *,false>(v13, *(a2 + 120), 126 - 2 * __clz((v14 - v13) >> 7), 1, v12);
      *(a2 + 324) = 1;
      v13 = *(a2 + 112);
    }

    v15 = *(a2 + 120);
    if (v13 != v15)
    {
      v16 = v13;
      do
      {
        v17 = *(v16 + 108);
        if (*(v16 + 104) >= a3)
        {
          if (v17 >= a4)
          {
            v14 = v16;
          }
        }

        else if (v17 < a4)
        {
          break;
        }

        v16 += 128;
      }

      while (v16 != v15);
    }

    if (v14 != v15)
    {
      v18 = *v14;
      v19 = v14[1];
      v20 = v14[3];
      *(this + 2) = v14[2];
      *(this + 3) = v20;
      *this = v18;
      *(this + 1) = v19;
      *(this + 4) = v14[4];
      *(this + 5) = v14[5];
      *(this + 6) = v14[6];
      v21 = *(v14 + 14);
      v8[8] = *(v14 + 120);
      *v8 = v21;
      *(this + 18) = a3;
      *(this + 19) = a4;
      *(a2 + 336) -= *(this + 14);
      v22 = v14;
      if (v14 + 8 != v15)
      {
        do
        {
          v23 = v22 + 8;
          v24 = v22[9];
          *v22 = v22[8];
          v22[1] = v24;
          v25 = v22[11];
          v22[2] = v22[10];
          v22[3] = v25;
          v26 = v22[13];
          v22[4] = v22[12];
          v22[5] = v26;
          *(v22 + 120) = *(v22 + 248);
          *(v22 + 14) = *(v22 + 30);
          v27 = v22 + 16;
          v22[6] = v22[14];
          v22 += 8;
        }

        while (v27 != v15);
        v22 = v23;
      }

      *(a2 + 120) = v22;
      v28 = *(this + 120);
      if ((v28 & 2) != 0)
      {
        IOSurfaceSetPurgeable(*this, 0, 0);
        v29 = *(this + 2);
        if (v29)
        {
          IOSurfaceSetPurgeable(v29, 0, 0);
        }

        *(this + 120) = v28 & 0xFD;
      }

      goto LABEL_36;
    }

    v14 = v13;
  }

  v30 = ((*(a2 + 144) - *(a2 + 136)) >> 7) + ((v15 - v13) >> 7) + ((*(a2 + 96) - *(a2 + 88)) >> 7);
  if (v15 != v14 && v30 == *(a2 + 72))
  {
    *(a2 + 336) -= *(v15 - 16);
    CA::WindowServer::FlipBook::free_surface(a2, (v15 - 128));
    *(a2 + 120) -= 128;
    --v30;
  }

  if (v30 < *(a2 + 72))
  {
    if (*(a2 + 348) == 1)
    {
      v31 = *(a2 + 344);
      if (v31 > 1.0)
      {
        v32 = *(a2 + 16);
        v34 = *(v32 + 176);
        v33 = *(v32 + 180);
        if ((v31 * a3) >= v34)
        {
          a3 = v34;
        }

        else
        {
          a3 = (v31 * a3);
        }

        v35 = v31 * a4;
        if (v35 >= v33)
        {
          a4 = v33;
        }

        else
        {
          a4 = v35;
        }
      }
    }

    CA::WindowServer::FlipBook::allocate_frame(v39, a2, a3, a4, v9, v10, v11);
    v36 = v39[1];
    *this = v39[0];
    *(this + 1) = v36;
    v37 = v39[3];
    *(this + 2) = v39[2];
    *(this + 3) = v37;
    v38 = v39[5];
    *(this + 4) = v39[4];
    *(this + 5) = v38;
    *(this + 6) = v39[6];
    *v8 = v40;
    v8[8] = v41;
  }

LABEL_36:

  os_unfair_lock_unlock((a2 + 8));
}

uint64_t CA::WindowServer::FlipBook::allocate_frame(CA::WindowServer::FlipBook *this, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, const __CFString *a7)
{
  v36 = *MEMORY[0x1E69E9840];
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 1) = 0u;
  if (*(a2 + 348))
  {
    if (a3 <= 0x40)
    {
      v9 = 64;
    }

    else
    {
      v9 = a3;
    }

    if (a4 <= 0x40)
    {
      v10 = 64;
    }

    else
    {
      v10 = a4;
    }
  }

  else
  {
    v11 = *(a2 + 16);
    v9 = *(v11 + 176);
    v10 = *(v11 + 180);
  }

  if (CADeviceUseCIF10::once != -1)
  {
    dispatch_once(&CADeviceUseCIF10::once, &__block_literal_global_12623);
  }

  if (CADeviceUseCIF10::enable_cif10)
  {
    v12 = 1999843442;
  }

  else
  {
    v12 = 1111970369;
  }

  v13 = 2 * (*(a2 + 348) != 1);
  iosurface_with_pixel_format = CA::Render::create_iosurface_with_pixel_format(v12, v9, v10, v13, 0, @"CA Server Flipbook Frame", a7);
  *this = iosurface_with_pixel_format;
  v15 = **(*(*a2 + 88))(a2);
  *(this + 1) = (*(v15 + 728))();
  *(this + 8) = 0;
  *(this + 18) = v9;
  *(this + 19) = v10;
  *(this + 12) = 0;
  *(this + 26) = v9;
  *(this + 27) = v10;
  AllocSize = IOSurfaceGetAllocSize(iosurface_with_pixel_format);
  *(this + 14) = AllocSize;
  *(a2 + 80) += AllocSize;
  if (x_log_get_flipbook(void)::once != -1)
  {
    dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
  }

  v17 = x_log_get_flipbook(void)::log;
  if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    ID = IOSurfaceGetID(iosurface_with_pixel_format);
    v19 = *(a2 + 80);
    v20 = v19;
    if (v19 >= 0x400)
    {
      v22 = 1.0;
      do
      {
        v22 = v22 * 0.0009765625;
        v21 = v22 * v20;
      }

      while (v22 * v20 >= 1024.0);
    }

    else
    {
      v21 = v19;
    }

    v23 = v19 > 0x3FF;
    if ((v19 & 0xFFFFFFFFFFF00000) != 0)
    {
      ++v23;
    }

    if ((v19 & 0xFFFFFFFFC0000000) != 0)
    {
      ++v23;
    }

    if (v19 >> 40)
    {
      ++v23;
    }

    if (v19 >> 50)
    {
      ++v23;
    }

    if (v19 >> 60)
    {
      ++v23;
    }

    v24 = off_1E6DF9988[v23];
    LODWORD(v29) = 67110146;
    HIDWORD(v29) = ID;
    LOWORD(v30) = 1024;
    *(&v30 + 2) = v9;
    HIWORD(v30) = 1024;
    v31 = v10;
    v32 = 2048;
    v33 = v21;
    v34 = 2080;
    v35 = v24;
    _os_log_impl(&dword_183AA6000, v17, OS_LOG_TYPE_DEFAULT, "allocated surface 0x%x, %dx%d for the flipbook, memory usage = %.2lf %s", &v29, 0x28u);
  }

  result = (*(*a2 + 144))(a2);
  if (result)
  {
    (*(*a2 + 152))(&v29, a2);
    if (*(a2 + 348) == 1)
    {
      v27 = v13 | 4;
    }

    else
    {
      v27 = v13;
    }

    *(this + 2) = CA::Render::create_iosurface_with_pixel_format(v12, v30, HIDWORD(v30), v27, 0, @"CA Server Flipbook Frame DEBUG", v26);
    v28 = **(*(*a2 + 88))(a2);
    result = (*(v28 + 728))();
    *(this + 3) = result;
  }

  ++*(a2 + 32);
  return result;
}

double std::__introsort<std::_ClassicAlgPolicy,CA::WindowServer::FlipBook::next_frame(unsigned long,unsigned long)::$_0 &,CA::WindowServer::FlipBook::Frame *,false>(uint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  n128_u64 = a2[-8].n128_u64;
  v9 = a2 - 1;
  v10 = a2 - 16;
  v11 = a2 - 24;
  v418 = a2 - 9;
  v419 = &a2[-21].n128_u32[2];
  v416 = a2 - 19;
  v417 = a2 - 20;
  v414 = a2 - 17;
  v415 = a2 - 18;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 7;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return a5.n128_f64[0];
      }

      if (v13 == 2)
      {
        if (a2[-5].n128_u32[2] <= *(v12 + 56))
        {
          return a5.n128_f64[0];
        }

        v614 = *(v12 + 32);
        v651 = *(v12 + 48);
        v540 = *v12;
        v577 = *(v12 + 16);
        v456 = *(v12 + 112);
        v490 = *(v12 + 120);
        a5 = *(v12 + 64);
        v288 = *(v12 + 80);
        v289 = *(v12 + 96);
        v291 = a2[-6];
        v290 = a2[-5];
        v292 = a2[-7];
        *v12 = a2[-8];
        *(v12 + 16) = v292;
        *(v12 + 32) = v291;
        *(v12 + 48) = v290;
        *(v12 + 64) = a2[-4];
        *(v12 + 80) = a2[-3];
        *(v12 + 96) = a2[-2];
        v293 = a2[-1].n128_u64[0];
        *(v12 + 120) = a2[-1].n128_u8[8];
        *(v12 + 112) = v293;
        a2[-6] = v614;
        a2[-5] = v651;
        a2[-8] = v540;
        a2[-7] = v577;
        goto LABEL_110;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      a5.n128_u64[0] = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::FlipBook::next_frame(unsigned long,unsigned long)::$_0 &,CA::WindowServer::FlipBook::Frame *,0>(v12, (v12 + 128), (v12 + 256), &a2[-8], a5).n128_u64[0];
      return a5.n128_f64[0];
    }

    if (v13 == 5)
    {
      a5.n128_u64[0] = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::FlipBook::next_frame(unsigned long,unsigned long)::$_0 &,CA::WindowServer::FlipBook::Frame *,0>(v12, (v12 + 128), (v12 + 256), (v12 + 384), a5).n128_u64[0];
      if (a2[-5].n128_u32[2] <= *(v12 + 440))
      {
        return a5.n128_f64[0];
      }

      v612 = *(v12 + 416);
      v649 = *(v12 + 432);
      v538 = *(v12 + 384);
      v575 = *(v12 + 400);
      v454 = *(v12 + 496);
      v488 = *(v12 + 504);
      a5 = *(v12 + 448);
      v276 = *(v12 + 464);
      v277 = *(v12 + 480);
      v279 = a2[-6];
      v278 = a2[-5];
      v280 = a2[-7];
      *(v12 + 384) = a2[-8];
      *(v12 + 400) = v280;
      *(v12 + 416) = v279;
      *(v12 + 432) = v278;
      *(v12 + 448) = a2[-4];
      *(v12 + 464) = a2[-3];
      *(v12 + 480) = a2[-2];
      v281 = a2[-1].n128_u64[0];
      *(v12 + 504) = a2[-1].n128_u8[8];
      *(v12 + 496) = v281;
      a2[-6] = v612;
      a2[-5] = v649;
      a2[-8] = v538;
      a2[-7] = v575;
      a2[-4] = a5;
      a2[-3] = v276;
      a2[-2] = v277;
      a2[-1].n128_u8[8] = v488;
      a2[-1].n128_u64[0] = v454;
      if (*(v12 + 440) <= *(v12 + 312))
      {
        return a5.n128_f64[0];
      }

      v539 = *(v12 + 256);
      v576 = *(v12 + 272);
      v613 = *(v12 + 288);
      v650 = *(v12 + 304);
      v455 = *(v12 + 368);
      v489 = *(v12 + 376);
      a5 = *(v12 + 320);
      v282 = *(v12 + 336);
      v283 = *(v12 + 352);
      v284 = *(v12 + 384);
      v285 = *(v12 + 400);
      v286 = *(v12 + 432);
      *(v12 + 288) = *(v12 + 416);
      *(v12 + 304) = v286;
      *(v12 + 256) = v284;
      *(v12 + 272) = v285;
      v287 = *(v12 + 464);
      *(v12 + 320) = *(v12 + 448);
      *(v12 + 336) = v287;
      *(v12 + 352) = *(v12 + 480);
      *(v12 + 376) = *(v12 + 504);
      *(v12 + 368) = *(v12 + 496);
      *(v12 + 416) = v613;
      *(v12 + 432) = v650;
      *(v12 + 384) = v539;
      *(v12 + 400) = v576;
      *(v12 + 448) = a5;
      *(v12 + 464) = v282;
      *(v12 + 480) = v283;
      *(v12 + 504) = v489;
      *(v12 + 496) = v455;
      if (*(v12 + 312) <= *(v12 + 184))
      {
        return a5.n128_f64[0];
      }

      a5.n128_u64[0] = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::WindowServer::FlipBook::Frame *&,CA::WindowServer::FlipBook::Frame *&>((v12 + 128), (v12 + 256)).n128_u64[0];
LABEL_167:
      if (*(v12 + 184) <= *(v12 + 56))
      {
        return a5.n128_f64[0];
      }

      v392 = (v12 + 128);
      v393 = v12;
LABEL_179:

      a5.n128_u64[0] = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::WindowServer::FlipBook::Frame *&,CA::WindowServer::FlipBook::Frame *&>(v393, v392).n128_u64[0];
      return a5.n128_f64[0];
    }

LABEL_9:
    if (v13 <= 23)
    {
      v300 = (v12 + 128);
      v302 = v12 == a2 || v300 == a2;
      if (a4)
      {
        if (!v302)
        {
          v303 = 0;
          v304 = v12;
          do
          {
            v305 = v300;
            v306 = *(v304 + 184);
            if (v306 > *(v304 + 56))
            {
              v653 = v305[3].n128_i64[0];
              v579 = v305[1];
              v616 = v305[2];
              v542 = *v305;
              a5 = *(v304 + 188);
              v307 = *(v304 + 204);
              v308 = *(v304 + 220);
              v309 = *(v304 + 236);
              v457 = *(v304 + 240);
              v310 = v303;
              v491 = *(v304 + 248);
              while (1)
              {
                v311 = v310;
                v312 = v12 + v310;
                v313 = *(v312 + 16);
                *(v312 + 128) = *v312;
                *(v312 + 144) = v313;
                v314 = *(v312 + 48);
                *(v312 + 160) = *(v312 + 32);
                *(v312 + 176) = v314;
                v315 = *(v312 + 80);
                *(v312 + 192) = *(v312 + 64);
                *(v312 + 208) = v315;
                *(v312 + 224) = *(v312 + 96);
                *(v312 + 248) = *(v312 + 120);
                *(v312 + 240) = *(v312 + 112);
                if (!v311)
                {
                  break;
                }

                v316 = *(v312 - 72);
                v310 = v311 - 128;
                if (v306 <= v316)
                {
                  v317 = v12 + v311 + 112;
                  v318 = v12 + v310 + 128;
                  goto LABEL_129;
                }
              }

              v317 = v312 + 112;
              v318 = v12;
LABEL_129:
              *(v318 + 48) = v653;
              *(v318 + 16) = v579;
              *(v318 + 32) = v616;
              *v318 = v542;
              *(v318 + 56) = v306;
              *(v318 + 60) = a5;
              *(v318 + 76) = v307;
              *(v318 + 92) = v308;
              *(v318 + 108) = v309;
              *(v317 + 8) = v491;
              *v317 = v457;
            }

            v300 = v305 + 8;
            v303 += 128;
            v304 = v305;
          }

          while (&v305[8] != a2);
        }
      }

      else if (!v302)
      {
        v394 = v12 + 240;
        do
        {
          v395 = v300;
          v396 = *(a1 + 184);
          if (v396 > *(a1 + 56))
          {
            v657 = *(v395 + 48);
            v583 = *(v395 + 16);
            v620 = *(v395 + 32);
            v546 = *v395;
            a5 = *(a1 + 188);
            v397 = *(a1 + 204);
            v398 = *(a1 + 220);
            v399 = *(a1 + 236);
            v461 = *(a1 + 240);
            v400 = v394;
            v494 = *(a1 + 248);
            do
            {
              v401 = v400;
              v402 = *(v400 - 224);
              *(v400 - 112) = *(v400 - 240);
              *(v400 - 96) = v402;
              v403 = *(v400 - 192);
              *(v400 - 80) = *(v400 - 208);
              *(v400 - 64) = v403;
              v404 = *(v400 - 160);
              *(v400 - 48) = *(v400 - 176);
              *(v400 - 32) = v404;
              *(v400 - 16) = *(v400 - 144);
              *(v400 + 8) = *(v400 - 120);
              v405 = *(v400 - 128);
              v400 -= 128;
              *v401 = v405;
            }

            while (v396 > *(v401 - 78));
            v406 = v401 - 30;
            v406[6] = v657;
            *(v406 + 1) = v583;
            *(v406 + 2) = v620;
            *v406 = v546;
            *(v400 - 56) = v396;
            *(v400 - 52) = a5;
            *(v400 - 36) = v397;
            *(v400 - 20) = v398;
            *(v400 - 4) = v399;
            *v400 = v461;
            *(v400 + 8) = v494;
          }

          v300 = (v395 + 128);
          v394 += 128;
          a1 = v395;
        }

        while ((v395 + 128) != a2);
      }

      return a5.n128_f64[0];
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v319 = (v13 - 2) >> 1;
        v320 = v319;
        do
        {
          v321 = v320;
          if (v319 >= v320)
          {
            v322 = (2 * v320) | 1;
            v323 = v12 + (v322 << 7);
            if (2 * v320 + 2 < v13)
            {
              v324 = *(v323 + 56);
              v325 = *(v323 + 184);
              v323 += (v324 > v325) << 7;
              if (v324 > v325)
              {
                v322 = 2 * v320 + 2;
              }
            }

            v326 = v12 + (v320 << 7);
            v327 = *(v326 + 56);
            if (*(v323 + 56) <= v327)
            {
              v654 = *(v326 + 48);
              v580 = *(v326 + 16);
              v617 = *(v326 + 32);
              v543 = *v326;
              v328 = *(v326 + 60);
              v329 = *(v326 + 76);
              v330 = *(v326 + 92);
              v331 = *(v326 + 108);
              v492 = *(v326 + 120);
              v458 = *(v326 + 112);
              do
              {
                v332 = v323;
                v333 = *v323;
                v334 = *(v323 + 16);
                v335 = *(v323 + 48);
                *(v326 + 32) = *(v323 + 32);
                *(v326 + 48) = v335;
                *v326 = v333;
                *(v326 + 16) = v334;
                *(v326 + 64) = *(v323 + 64);
                *(v326 + 80) = *(v323 + 80);
                *(v326 + 96) = *(v323 + 96);
                v337 = v323 + 112;
                v336 = *(v323 + 112);
                *(v326 + 120) = *(v337 + 8);
                *(v326 + 112) = v336;
                if (v319 < v322)
                {
                  break;
                }

                v338 = (2 * v322) | 1;
                v323 = v12 + (v338 << 7);
                v339 = 2 * v322 + 2;
                if (v339 < v13)
                {
                  v340 = *(v323 + 56);
                  v341 = *(v323 + 184);
                  v323 += (v340 > v341) << 7;
                  if (v340 > v341)
                  {
                    v338 = v339;
                  }
                }

                v326 = v332;
                v322 = v338;
              }

              while (*(v323 + 56) <= v327);
              *(v332 + 48) = v654;
              *(v332 + 16) = v580;
              *(v332 + 32) = v617;
              *v332 = v543;
              *(v332 + 56) = v327;
              *(v332 + 60) = v328;
              *(v332 + 76) = v329;
              *(v332 + 92) = v330;
              *(v332 + 108) = v331;
              *v337 = v458;
              *(v337 + 8) = v492;
            }
          }

          v320 = v321 - 1;
        }

        while (v321);
        do
        {
          v342 = 0;
          v343 = a2;
          v618 = *(v12 + 32);
          v655 = *(v12 + 48);
          v544 = *v12;
          v581 = *(v12 + 16);
          v344 = *(v12 + 64);
          v345 = *(v12 + 68);
          v346 = *(v12 + 72);
          v347 = *(v12 + 76);
          v348 = *(v12 + 80);
          v349 = *(v12 + 84);
          v351 = *(v12 + 88);
          v350 = *(v12 + 92);
          v352 = *(v12 + 96);
          v353 = *(v12 + 100);
          v426 = *(v12 + 120);
          v423 = *(v12 + 112);
          v354 = v12;
          v356 = *(v12 + 104);
          v355 = *(v12 + 108);
          do
          {
            v357 = v354 + (v342 << 7);
            v358 = v357 + 128;
            v359 = (2 * v342) | 1;
            v342 = 2 * v342 + 2;
            if (v342 >= v13)
            {
              v342 = v359;
            }

            else
            {
              v360 = *(v357 + 184);
              v361 = *(v357 + 312);
              v362 = v357 + 256;
              if (v360 <= v361)
              {
                v342 = v359;
              }

              else
              {
                v358 = v362;
              }
            }

            v363 = *v358;
            v364 = *(v358 + 16);
            v365 = *(v358 + 48);
            *(v354 + 32) = *(v358 + 32);
            *(v354 + 48) = v365;
            *v354 = v363;
            *(v354 + 16) = v364;
            *(v354 + 64) = *(v358 + 64);
            *(v354 + 80) = *(v358 + 80);
            *(v354 + 96) = *(v358 + 96);
            v366 = (v358 + 112);
            v367 = *(v358 + 112);
            *(v354 + 120) = *(v358 + 120);
            *(v354 + 112) = v367;
            v354 = v358;
          }

          while (v342 <= ((v13 - 2) >> 1));
          a2 = v343 - 8;
          if (v358 == &v343[-8])
          {
            a5.n128_u64[0] = v544;
            *(v358 + 32) = v618;
            *(v358 + 48) = v655;
            *v358 = v544;
            *(v358 + 16) = v581;
            *(v358 + 64) = v344;
            *(v358 + 68) = v345;
            *(v358 + 72) = v346;
            *(v358 + 76) = v347;
            *(v358 + 80) = v348;
            *(v358 + 84) = v349;
            *(v358 + 88) = v351;
            *(v358 + 92) = v350;
            *(v358 + 96) = v352;
            *(v358 + 100) = v353;
            *(v358 + 104) = v356;
            *(v358 + 108) = v355;
            *(v358 + 120) = v426;
            *v366 = v423;
          }

          else
          {
            a5 = *a2;
            v368 = v343[-7];
            v369 = v343[-5];
            *(v358 + 32) = v343[-6];
            *(v358 + 48) = v369;
            *v358 = a5;
            *(v358 + 16) = v368;
            *(v358 + 64) = v343[-4];
            *(v358 + 80) = v343[-3];
            *(v358 + 96) = v343[-2];
            v370 = v343[-1].n128_u64[0];
            *(v358 + 120) = v343[-1].n128_u8[8];
            *v366 = v370;
            a5.n128_u64[0] = v544;
            v343[-6] = v618;
            v343[-5] = v655;
            *a2 = v544;
            v343[-7] = v581;
            v343[-4].n128_u32[0] = v344;
            v343[-4].n128_u32[1] = v345;
            v343[-4].n128_u32[2] = v346;
            v343[-4].n128_u32[3] = v347;
            v343[-3].n128_u32[0] = v348;
            v343[-3].n128_u32[1] = v349;
            v343[-3].n128_u32[2] = v351;
            v343[-3].n128_u32[3] = v350;
            v343[-2].n128_u32[0] = v352;
            v343[-2].n128_u32[1] = v353;
            v343[-2].n128_u32[2] = v356;
            v343[-2].n128_u32[3] = v355;
            v343[-1].n128_u8[8] = v426;
            v343[-1].n128_u64[0] = v423;
            v371 = (v358 - v12 + 128) >> 7;
            v372 = v371 < 2;
            v373 = v371 - 2;
            if (!v372)
            {
              v374 = v373 >> 1;
              v375 = v12 + (v373 >> 1 << 7);
              v376 = *(v358 + 56);
              if (*(v375 + 56) > v376)
              {
                v504 = *(v358 + 48);
                v498 = *(v358 + 16);
                v501 = *(v358 + 32);
                v459 = *v358;
                a5 = *(v358 + 60);
                v377 = *(v358 + 76);
                v378 = *(v358 + 92);
                v379 = *(v358 + 108);
                v507 = *v366;
                v510 = *(v358 + 120);
                do
                {
                  v380 = v375;
                  v381 = *v375;
                  v382 = *(v375 + 16);
                  v383 = *(v375 + 48);
                  *(v358 + 32) = *(v375 + 32);
                  *(v358 + 48) = v383;
                  *v358 = v381;
                  *(v358 + 16) = v382;
                  *(v358 + 64) = *(v375 + 64);
                  *(v358 + 80) = *(v375 + 80);
                  *(v358 + 96) = *(v375 + 96);
                  v385 = v375 + 112;
                  v384 = *(v375 + 112);
                  *(v358 + 120) = *(v385 + 8);
                  *(v358 + 112) = v384;
                  if (!v374)
                  {
                    break;
                  }

                  v374 = (v374 - 1) >> 1;
                  v375 = v12 + (v374 << 7);
                  v358 = v380;
                }

                while (*(v375 + 56) > v376);
                *(v380 + 48) = v504;
                *(v380 + 16) = v498;
                *(v380 + 32) = v501;
                *v380 = v459;
                *(v380 + 56) = v376;
                *(v380 + 60) = a5;
                *(v380 + 76) = v377;
                *(v380 + 92) = v378;
                *(v380 + 108) = v379;
                *v385 = v507;
                *(v385 + 8) = v510;
              }
            }
          }

          v372 = v13-- <= 2;
        }

        while (!v372);
      }

      return a5.n128_f64[0];
    }

    v14 = v12 + (v13 >> 1 << 7);
    v15 = a2[-5].n128_u32[2];
    if (v13 < 0x81)
    {
      v24 = *(v12 + 56);
      if (v24 <= *(v14 + 56))
      {
        if (v15 > v24)
        {
          v589 = *(v12 + 32);
          v626 = *(v12 + 48);
          v515 = *v12;
          v552 = *(v12 + 16);
          v48 = (v12 + 112);
          v431 = *(v12 + 112);
          v467 = *(v12 + 120);
          v49 = *(v12 + 64);
          v50 = *(v12 + 80);
          v51 = *(v12 + 96);
          v53 = a2[-6];
          v52 = a2[-5];
          v54 = a2[-7];
          *v12 = *n128_u64;
          *(v12 + 16) = v54;
          *(v12 + 32) = v53;
          *(v12 + 48) = v52;
          *(v12 + 64) = a2[-4];
          *(v12 + 80) = a2[-3];
          *(v12 + 96) = a2[-2];
          v55 = v9->n128_u64[0];
          *(v12 + 120) = a2[-1].n128_u8[8];
          *(v12 + 112) = v55;
          a2[-6] = v589;
          a2[-5] = v626;
          *n128_u64 = v515;
          a2[-7] = v552;
          a2[-4] = v49;
          a2[-3] = v50;
          a2[-2] = v51;
          a2[-1].n128_u8[8] = v467;
          v9->n128_u64[0] = v431;
          if (*(v12 + 56) > *(v14 + 56))
          {
            v590 = *(v14 + 32);
            v627 = *(v14 + 48);
            v516 = *v14;
            v553 = *(v14 + 16);
            v468 = *(v14 + 120);
            v432 = *(v14 + 112);
            v56 = *(v14 + 64);
            v57 = *(v14 + 80);
            v58 = *(v14 + 96);
            v59 = *(v12 + 48);
            v61 = *v12;
            v60 = *(v12 + 16);
            *(v14 + 32) = *(v12 + 32);
            *(v14 + 48) = v59;
            *v14 = v61;
            *(v14 + 16) = v60;
            v62 = *(v12 + 80);
            *(v14 + 64) = *(v12 + 64);
            *(v14 + 80) = v62;
            *(v14 + 96) = *(v12 + 96);
            v63 = *v48;
            *(v14 + 120) = *(v12 + 120);
            *(v14 + 112) = v63;
            *(v12 + 32) = v590;
            *(v12 + 48) = v627;
            *v12 = v516;
            *(v12 + 16) = v553;
            *(v12 + 64) = v56;
            *(v12 + 80) = v57;
            *(v12 + 96) = v58;
            *(v12 + 120) = v468;
            *v48 = v432;
          }
        }
      }

      else if (v15 <= v24)
      {
        v596 = *(v14 + 32);
        v633 = *(v14 + 48);
        v522 = *v14;
        v559 = *(v14 + 16);
        v474 = *(v14 + 120);
        v438 = *(v14 + 112);
        v106 = *(v14 + 64);
        v107 = *(v14 + 80);
        v108 = *(v14 + 96);
        v109 = *(v12 + 48);
        v111 = *v12;
        v110 = *(v12 + 16);
        *(v14 + 32) = *(v12 + 32);
        *(v14 + 48) = v109;
        *v14 = v111;
        *(v14 + 16) = v110;
        v112 = *(v12 + 80);
        *(v14 + 64) = *(v12 + 64);
        *(v14 + 80) = v112;
        *(v14 + 96) = *(v12 + 96);
        v113 = (v12 + 112);
        v114 = *(v12 + 112);
        *(v14 + 120) = *(v12 + 120);
        *(v14 + 112) = v114;
        *(v12 + 32) = v596;
        *(v12 + 48) = v633;
        *v12 = v522;
        *(v12 + 16) = v559;
        *(v12 + 64) = v106;
        *(v12 + 80) = v107;
        *(v12 + 96) = v108;
        *(v12 + 120) = v474;
        *(v12 + 112) = v438;
        if (a2[-5].n128_u32[2] > *(v12 + 56))
        {
          v597 = *(v12 + 32);
          v634 = *(v12 + 48);
          v523 = *v12;
          v560 = *(v12 + 16);
          v439 = *v113;
          v475 = *(v12 + 120);
          v116 = a2[-6];
          v115 = a2[-5];
          v117 = a2[-7];
          *v12 = *n128_u64;
          *(v12 + 16) = v117;
          *(v12 + 32) = v116;
          *(v12 + 48) = v115;
          *(v12 + 64) = a2[-4];
          *(v12 + 80) = a2[-3];
          *(v12 + 96) = a2[-2];
          v118 = v9->n128_u64[0];
          *(v12 + 120) = a2[-1].n128_u8[8];
          *v113 = v118;
          a2[-6] = v597;
          a2[-5] = v634;
          *n128_u64 = v523;
          a2[-7] = v560;
          a2[-4] = v106;
          a2[-3] = v107;
          a2[-2] = v108;
          a2[-1].n128_u8[8] = v475;
          v9->n128_u64[0] = v439;
        }
      }

      else
      {
        v586 = *(v14 + 32);
        v623 = *(v14 + 48);
        v512 = *v14;
        v549 = *(v14 + 16);
        v464 = *(v14 + 120);
        v428 = *(v14 + 112);
        v25 = *(v14 + 64);
        v26 = *(v14 + 80);
        v27 = *(v14 + 96);
        v28 = a2[-5];
        v30 = *n128_u64;
        v29 = a2[-7];
        *(v14 + 32) = a2[-6];
        *(v14 + 48) = v28;
        *v14 = v30;
        *(v14 + 16) = v29;
        *(v14 + 64) = a2[-4];
        *(v14 + 80) = a2[-3];
        *(v14 + 96) = a2[-2];
        v31 = v9->n128_u64[0];
        *(v14 + 120) = a2[-1].n128_u8[8];
        *(v14 + 112) = v31;
        a2[-6] = v586;
        a2[-5] = v623;
        *n128_u64 = v512;
        a2[-7] = v549;
        a2[-4] = v25;
        a2[-3] = v26;
        a2[-2] = v27;
        v9->n128_u64[0] = v428;
        a2[-1].n128_u8[8] = v464;
      }

      goto LABEL_54;
    }

    v16 = *(v14 + 56);
    if (v16 <= *(v12 + 56))
    {
      if (v15 > v16)
      {
        v587 = *(v14 + 32);
        v624 = *(v14 + 48);
        v513 = *v14;
        v550 = *(v14 + 16);
        v32 = (v14 + 112);
        v465 = *(v14 + 120);
        v429 = *(v14 + 112);
        v33 = *(v14 + 64);
        v34 = *(v14 + 80);
        v35 = *(v14 + 96);
        v36 = a2[-5];
        v38 = *n128_u64;
        v37 = a2[-7];
        *(v14 + 32) = a2[-6];
        *(v14 + 48) = v36;
        *v14 = v38;
        *(v14 + 16) = v37;
        *(v14 + 64) = a2[-4];
        *(v14 + 80) = a2[-3];
        *(v14 + 96) = a2[-2];
        v39 = v9->n128_u64[0];
        *(v14 + 120) = a2[-1].n128_u8[8];
        *(v14 + 112) = v39;
        a2[-6] = v587;
        a2[-5] = v624;
        *n128_u64 = v513;
        a2[-7] = v550;
        a2[-4] = v33;
        a2[-3] = v34;
        a2[-2] = v35;
        v9->n128_u64[0] = v429;
        a2[-1].n128_u8[8] = v465;
        if (*(v14 + 56) > *(v12 + 56))
        {
          v588 = *(v12 + 32);
          v625 = *(v12 + 48);
          v514 = *v12;
          v551 = *(v12 + 16);
          v430 = *(v12 + 112);
          v466 = *(v12 + 120);
          v40 = *(v12 + 64);
          v41 = *(v12 + 80);
          v42 = *(v12 + 96);
          v44 = *(v14 + 32);
          v43 = *(v14 + 48);
          v45 = *(v14 + 16);
          *v12 = *v14;
          *(v12 + 16) = v45;
          *(v12 + 32) = v44;
          *(v12 + 48) = v43;
          v46 = *(v14 + 80);
          *(v12 + 64) = *(v14 + 64);
          *(v12 + 80) = v46;
          *(v12 + 96) = *(v14 + 96);
          v47 = *v32;
          *(v12 + 120) = *(v14 + 120);
          *(v12 + 112) = v47;
          *(v14 + 32) = v588;
          *(v14 + 48) = v625;
          *v14 = v514;
          *(v14 + 16) = v551;
          *(v14 + 64) = v40;
          *(v14 + 80) = v41;
          *(v14 + 96) = v42;
          *(v14 + 120) = v466;
          *v32 = v430;
        }
      }
    }

    else if (v15 <= v16)
    {
      v591 = *(v12 + 32);
      v628 = *(v12 + 48);
      v517 = *v12;
      v554 = *(v12 + 16);
      v433 = *(v12 + 112);
      v469 = *(v12 + 120);
      v64 = *(v12 + 64);
      v65 = *(v12 + 80);
      v66 = *(v12 + 96);
      v68 = *(v14 + 32);
      v67 = *(v14 + 48);
      v69 = *(v14 + 16);
      *v12 = *v14;
      *(v12 + 16) = v69;
      *(v12 + 32) = v68;
      *(v12 + 48) = v67;
      v70 = *(v14 + 80);
      *(v12 + 64) = *(v14 + 64);
      *(v12 + 80) = v70;
      *(v12 + 96) = *(v14 + 96);
      v71 = (v14 + 112);
      v72 = *(v14 + 112);
      *(v12 + 120) = *(v14 + 120);
      *(v12 + 112) = v72;
      *(v14 + 32) = v591;
      *(v14 + 48) = v628;
      *v14 = v517;
      *(v14 + 16) = v554;
      *(v14 + 64) = v64;
      *(v14 + 80) = v65;
      *(v14 + 96) = v66;
      *(v14 + 120) = v469;
      *(v14 + 112) = v433;
      if (a2[-5].n128_u32[2] > *(v14 + 56))
      {
        v592 = *(v14 + 32);
        v629 = *(v14 + 48);
        v518 = *v14;
        v555 = *(v14 + 16);
        v470 = *(v14 + 120);
        v434 = *v71;
        v73 = *(v14 + 64);
        v74 = *(v14 + 80);
        v75 = *(v14 + 96);
        v76 = a2[-5];
        v78 = *n128_u64;
        v77 = a2[-7];
        *(v14 + 32) = a2[-6];
        *(v14 + 48) = v76;
        *v14 = v78;
        *(v14 + 16) = v77;
        *(v14 + 64) = a2[-4];
        *(v14 + 80) = a2[-3];
        *(v14 + 96) = a2[-2];
        v79 = v9->n128_u64[0];
        *(v14 + 120) = a2[-1].n128_u8[8];
        *v71 = v79;
        a2[-6] = v592;
        a2[-5] = v629;
        *n128_u64 = v518;
        a2[-7] = v555;
        a2[-4] = v73;
        a2[-3] = v74;
        a2[-2] = v75;
        v9->n128_u64[0] = v434;
        a2[-1].n128_u8[8] = v470;
      }
    }

    else
    {
      v585 = *(v12 + 32);
      v622 = *(v12 + 48);
      v511 = *v12;
      v548 = *(v12 + 16);
      v427 = *(v12 + 112);
      v463 = *(v12 + 120);
      v17 = *(v12 + 64);
      v18 = *(v12 + 80);
      v19 = *(v12 + 96);
      v21 = a2[-6];
      v20 = a2[-5];
      v22 = a2[-7];
      *v12 = *n128_u64;
      *(v12 + 16) = v22;
      *(v12 + 32) = v21;
      *(v12 + 48) = v20;
      *(v12 + 64) = a2[-4];
      *(v12 + 80) = a2[-3];
      *(v12 + 96) = a2[-2];
      v23 = v9->n128_u64[0];
      *(v12 + 120) = a2[-1].n128_u8[8];
      *(v12 + 112) = v23;
      a2[-6] = v585;
      a2[-5] = v622;
      *n128_u64 = v511;
      a2[-7] = v548;
      a2[-4] = v17;
      a2[-3] = v18;
      a2[-2] = v19;
      a2[-1].n128_u8[8] = v463;
      v9->n128_u64[0] = v427;
    }

    v80 = (v14 - 128);
    v81 = *(v14 - 72);
    v82 = a2[-13].n128_u32[2];
    if (v81 <= *(v12 + 184))
    {
      if (v82 > v81)
      {
        v594 = *(v14 - 96);
        v631 = *(v14 - 80);
        v520 = *v80;
        v557 = *(v14 - 112);
        v90 = (v14 - 16);
        v472 = *(v14 - 8);
        v436 = *(v14 - 16);
        v91 = *(v14 - 64);
        v92 = *(v14 - 48);
        v93 = *(v14 - 32);
        v94 = a2[-13];
        v96 = *v10;
        v95 = a2[-15];
        *(v14 - 96) = a2[-14];
        *(v14 - 80) = v94;
        *v80 = v96;
        *(v14 - 112) = v95;
        *(v14 - 64) = a2[-12];
        *(v14 - 48) = a2[-11];
        *(v14 - 32) = a2[-10];
        v97 = v418->n128_u64[0];
        *(v14 - 8) = a2[-9].n128_u8[8];
        *(v14 - 16) = v97;
        a2[-14] = v594;
        a2[-13] = v631;
        *v10 = v520;
        a2[-15] = v557;
        a2[-12] = v91;
        a2[-11] = v92;
        a2[-10] = v93;
        v418->n128_u64[0] = v436;
        a2[-9].n128_u8[8] = v472;
        if (*(v14 - 72) > *(v12 + 184))
        {
          v595 = *(v12 + 160);
          v632 = *(v12 + 176);
          v521 = *(v12 + 128);
          v558 = *(v12 + 144);
          v437 = *(v12 + 240);
          v473 = *(v12 + 248);
          v98 = *(v12 + 192);
          v99 = *(v12 + 208);
          v100 = *(v12 + 224);
          v101 = *(v14 - 80);
          v102 = *v80;
          v103 = *(v14 - 112);
          *(v12 + 160) = *(v14 - 96);
          *(v12 + 176) = v101;
          *(v12 + 128) = v102;
          *(v12 + 144) = v103;
          v104 = *(v14 - 48);
          *(v12 + 192) = *(v14 - 64);
          *(v12 + 208) = v104;
          *(v12 + 224) = *(v14 - 32);
          v105 = *v90;
          *(v12 + 248) = *(v14 - 8);
          *(v12 + 240) = v105;
          *(v14 - 96) = v595;
          *(v14 - 80) = v632;
          *v80 = v521;
          *(v14 - 112) = v558;
          *(v14 - 64) = v98;
          *(v14 - 48) = v99;
          *(v14 - 32) = v100;
          *(v14 - 8) = v473;
          *v90 = v437;
        }
      }
    }

    else if (v82 <= v81)
    {
      v598 = *(v12 + 160);
      v635 = *(v12 + 176);
      v524 = *(v12 + 128);
      v561 = *(v12 + 144);
      v440 = *(v12 + 240);
      v476 = *(v12 + 248);
      v119 = *(v12 + 192);
      v120 = *(v12 + 208);
      v121 = *(v12 + 224);
      v122 = *(v14 - 80);
      v123 = *v80;
      v124 = *(v14 - 112);
      *(v12 + 160) = *(v14 - 96);
      *(v12 + 176) = v122;
      *(v12 + 128) = v123;
      *(v12 + 144) = v124;
      v125 = *(v14 - 48);
      *(v12 + 192) = *(v14 - 64);
      *(v12 + 208) = v125;
      *(v12 + 224) = *(v14 - 32);
      v126 = (v14 - 16);
      v127 = *(v14 - 16);
      *(v12 + 248) = *(v14 - 8);
      *(v12 + 240) = v127;
      *(v14 - 96) = v598;
      *(v14 - 80) = v635;
      *v80 = v524;
      *(v14 - 112) = v561;
      *(v14 - 64) = v119;
      *(v14 - 48) = v120;
      *(v14 - 32) = v121;
      *(v14 - 8) = v476;
      *(v14 - 16) = v440;
      if (a2[-13].n128_u32[2] > *(v14 - 72))
      {
        v599 = *(v14 - 96);
        v636 = *(v14 - 80);
        v525 = *v80;
        v562 = *(v14 - 112);
        v477 = *(v14 - 8);
        v441 = *v126;
        v128 = *(v14 - 64);
        v129 = *(v14 - 48);
        v130 = *(v14 - 32);
        v131 = a2[-13];
        v133 = *v10;
        v132 = a2[-15];
        *(v14 - 96) = a2[-14];
        *(v14 - 80) = v131;
        *v80 = v133;
        *(v14 - 112) = v132;
        *(v14 - 64) = a2[-12];
        *(v14 - 48) = a2[-11];
        *(v14 - 32) = a2[-10];
        v134 = v418->n128_u64[0];
        *(v14 - 8) = a2[-9].n128_u8[8];
        *v126 = v134;
        a2[-14] = v599;
        a2[-13] = v636;
        *v10 = v525;
        a2[-15] = v562;
        a2[-12] = v128;
        a2[-11] = v129;
        a2[-10] = v130;
        v418->n128_u64[0] = v441;
        a2[-9].n128_u8[8] = v477;
      }
    }

    else
    {
      v593 = *(v12 + 160);
      v630 = *(v12 + 176);
      v519 = *(v12 + 128);
      v556 = *(v12 + 144);
      v435 = *(v12 + 240);
      v471 = *(v12 + 248);
      v83 = *(v12 + 192);
      v84 = *(v12 + 208);
      v85 = *(v12 + 224);
      v87 = a2[-14];
      v86 = a2[-13];
      v88 = a2[-15];
      *(v12 + 128) = *v10;
      *(v12 + 144) = v88;
      *(v12 + 160) = v87;
      *(v12 + 176) = v86;
      *(v12 + 192) = a2[-12];
      *(v12 + 208) = a2[-11];
      *(v12 + 224) = a2[-10];
      v89 = v418->n128_u64[0];
      *(v12 + 248) = a2[-9].n128_u8[8];
      *(v12 + 240) = v89;
      a2[-14] = v593;
      a2[-13] = v630;
      *v10 = v519;
      a2[-15] = v556;
      a2[-12] = v83;
      a2[-11] = v84;
      a2[-10] = v85;
      a2[-9].n128_u8[8] = v471;
      v418->n128_u64[0] = v435;
    }

    v135 = (v14 + 128);
    v136 = *(v14 + 184);
    v137 = *v419;
    if (v136 <= *(v12 + 312))
    {
      if (v137 > v136)
      {
        v601 = *(v14 + 160);
        v638 = *(v14 + 176);
        v527 = *v135;
        v564 = *(v14 + 144);
        v145 = (v14 + 240);
        v479 = *(v14 + 248);
        v443 = *(v14 + 240);
        v146 = *(v14 + 192);
        v147 = *(v14 + 208);
        v148 = *(v14 + 224);
        v149 = a2[-21];
        v151 = *v11;
        v150 = a2[-23];
        *(v14 + 160) = a2[-22];
        *(v14 + 176) = v149;
        *v135 = v151;
        *(v14 + 144) = v150;
        *(v14 + 192) = *v417;
        *(v14 + 208) = *v416;
        *(v14 + 224) = *v415;
        v152 = v414->n128_u64[0];
        *(v14 + 248) = a2[-17].n128_u8[8];
        *(v14 + 240) = v152;
        a2[-22] = v601;
        a2[-21] = v638;
        *v11 = v527;
        a2[-23] = v564;
        *v417 = v146;
        *v416 = v147;
        *v415 = v148;
        v414->n128_u64[0] = v443;
        a2[-17].n128_u8[8] = v479;
        if (*(v14 + 184) > *(v12 + 312))
        {
          v602 = *(v12 + 288);
          v639 = *(v12 + 304);
          v528 = *(v12 + 256);
          v565 = *(v12 + 272);
          v444 = *(v12 + 368);
          v480 = *(v12 + 376);
          v153 = *(v12 + 320);
          v154 = *(v12 + 336);
          v155 = *(v12 + 352);
          v156 = *(v14 + 176);
          v157 = *v135;
          v158 = *(v14 + 144);
          *(v12 + 288) = *(v14 + 160);
          *(v12 + 304) = v156;
          *(v12 + 256) = v157;
          *(v12 + 272) = v158;
          v159 = *(v14 + 208);
          *(v12 + 320) = *(v14 + 192);
          *(v12 + 336) = v159;
          *(v12 + 352) = *(v14 + 224);
          v160 = *v145;
          *(v12 + 376) = *(v14 + 248);
          *(v12 + 368) = v160;
          *(v14 + 160) = v602;
          *(v14 + 176) = v639;
          *v135 = v528;
          *(v14 + 144) = v565;
          *(v14 + 192) = v153;
          *(v14 + 208) = v154;
          *(v14 + 224) = v155;
          *(v14 + 248) = v480;
          *v145 = v444;
        }
      }
    }

    else if (v137 <= v136)
    {
      v603 = *(v12 + 288);
      v640 = *(v12 + 304);
      v529 = *(v12 + 256);
      v566 = *(v12 + 272);
      v445 = *(v12 + 368);
      v481 = *(v12 + 376);
      v161 = *(v12 + 320);
      v162 = *(v12 + 336);
      v163 = *(v12 + 352);
      v164 = *(v14 + 176);
      v165 = *v135;
      v166 = *(v14 + 144);
      *(v12 + 288) = *(v14 + 160);
      *(v12 + 304) = v164;
      *(v12 + 256) = v165;
      *(v12 + 272) = v166;
      v167 = *(v14 + 208);
      *(v12 + 320) = *(v14 + 192);
      *(v12 + 336) = v167;
      *(v12 + 352) = *(v14 + 224);
      v168 = (v14 + 240);
      v169 = *(v14 + 240);
      *(v12 + 376) = *(v14 + 248);
      *(v12 + 368) = v169;
      *(v14 + 160) = v603;
      *(v14 + 176) = v640;
      *v135 = v529;
      *(v14 + 144) = v566;
      *(v14 + 192) = v161;
      *(v14 + 208) = v162;
      *(v14 + 224) = v163;
      *(v14 + 248) = v481;
      *(v14 + 240) = v445;
      if (*v419 > *(v14 + 184))
      {
        v604 = *(v14 + 160);
        v641 = *(v14 + 176);
        v530 = *v135;
        v567 = *(v14 + 144);
        v482 = *(v14 + 248);
        v446 = *v168;
        v170 = *(v14 + 192);
        v171 = *(v14 + 208);
        v172 = *(v14 + 224);
        v173 = a2[-21];
        v175 = *v11;
        v174 = a2[-23];
        *(v14 + 160) = a2[-22];
        *(v14 + 176) = v173;
        *v135 = v175;
        *(v14 + 144) = v174;
        *(v14 + 192) = *v417;
        *(v14 + 208) = *v416;
        *(v14 + 224) = *v415;
        v176 = v414->n128_u64[0];
        *(v14 + 248) = a2[-17].n128_u8[8];
        *v168 = v176;
        a2[-22] = v604;
        a2[-21] = v641;
        *v11 = v530;
        a2[-23] = v567;
        *v417 = v170;
        *v416 = v171;
        *v415 = v172;
        v414->n128_u64[0] = v446;
        a2[-17].n128_u8[8] = v482;
      }
    }

    else
    {
      v600 = *(v12 + 288);
      v637 = *(v12 + 304);
      v526 = *(v12 + 256);
      v563 = *(v12 + 272);
      v442 = *(v12 + 368);
      v478 = *(v12 + 376);
      v138 = *(v12 + 320);
      v139 = *(v12 + 336);
      v140 = *(v12 + 352);
      v142 = a2[-22];
      v141 = a2[-21];
      v143 = a2[-23];
      *(v12 + 256) = *v11;
      *(v12 + 272) = v143;
      *(v12 + 288) = v142;
      *(v12 + 304) = v141;
      *(v12 + 320) = *v417;
      *(v12 + 336) = *v416;
      *(v12 + 352) = *v415;
      v144 = v414->n128_u64[0];
      *(v12 + 376) = a2[-17].n128_u8[8];
      *(v12 + 368) = v144;
      a2[-22] = v600;
      a2[-21] = v637;
      *v11 = v526;
      a2[-23] = v563;
      *v417 = v138;
      *v416 = v139;
      *v415 = v140;
      a2[-17].n128_u8[8] = v478;
      v414->n128_u64[0] = v442;
    }

    v177 = *(v14 + 56);
    v178 = *(v14 + 184);
    if (v177 <= *(v14 - 72))
    {
      if (v178 > v177)
      {
        v606 = *(v14 + 32);
        v643 = *(v14 + 48);
        v532 = *v14;
        v569 = *(v14 + 16);
        v186 = (v14 + 112);
        v484 = *(v14 + 120);
        v448 = *(v14 + 112);
        v187 = *(v14 + 64);
        v188 = *(v14 + 80);
        v189 = *(v14 + 96);
        v190 = *(v14 + 176);
        *(v14 + 32) = *(v14 + 160);
        *(v14 + 48) = v190;
        v191 = *(v14 + 144);
        *v14 = *v135;
        *(v14 + 16) = v191;
        v192 = *(v14 + 208);
        *(v14 + 64) = *(v14 + 192);
        *(v14 + 80) = v192;
        *(v14 + 96) = *(v14 + 224);
        v193 = *(v14 + 240);
        *(v14 + 120) = *(v14 + 248);
        *(v14 + 112) = v193;
        *(v14 + 160) = v606;
        *(v14 + 176) = v643;
        *v135 = v532;
        *(v14 + 144) = v569;
        *(v14 + 192) = v187;
        *(v14 + 208) = v188;
        *(v14 + 224) = v189;
        *(v14 + 240) = v448;
        *(v14 + 248) = v484;
        if (*(v14 + 56) > *(v14 - 72))
        {
          v607 = *(v14 - 96);
          v644 = *(v14 - 80);
          v533 = *v80;
          v570 = *(v14 - 112);
          v485 = *(v14 - 8);
          v449 = *(v14 - 16);
          v194 = *(v14 - 64);
          v195 = *(v14 - 48);
          v196 = *(v14 - 32);
          v197 = *(v14 + 48);
          *(v14 - 96) = *(v14 + 32);
          *(v14 - 80) = v197;
          v198 = *(v14 + 16);
          *v80 = *v14;
          *(v14 - 112) = v198;
          v199 = *(v14 + 80);
          *(v14 - 64) = *(v14 + 64);
          *(v14 - 48) = v199;
          *(v14 - 32) = *(v14 + 96);
          v200 = *v186;
          *(v14 - 8) = *(v14 + 120);
          *(v14 - 16) = v200;
          *(v14 + 32) = v607;
          *(v14 + 48) = v644;
          *v14 = v533;
          *(v14 + 16) = v570;
          *(v14 + 64) = v194;
          *(v14 + 80) = v195;
          *(v14 + 96) = v196;
          *v186 = v449;
          *(v14 + 120) = v485;
        }
      }

      goto LABEL_53;
    }

    if (v178 > v177)
    {
      v605 = *(v14 - 96);
      v642 = *(v14 - 80);
      v531 = *v80;
      v568 = *(v14 - 112);
      v483 = *(v14 - 8);
      v447 = *(v14 - 16);
      v179 = *(v14 - 64);
      v180 = *(v14 - 48);
      v181 = *(v14 - 32);
      v182 = *(v14 + 176);
      *(v14 - 96) = *(v14 + 160);
      *(v14 - 80) = v182;
      v183 = *(v14 + 144);
      *v80 = *v135;
      *(v14 - 112) = v183;
      v184 = *(v14 + 208);
      *(v14 - 64) = *(v14 + 192);
      *(v14 - 48) = v184;
      *(v14 - 32) = *(v14 + 224);
      v185 = *(v14 + 240);
      *(v14 - 8) = *(v14 + 248);
      *(v14 - 16) = v185;
LABEL_52:
      *(v14 + 160) = v605;
      *(v14 + 176) = v642;
      *v135 = v531;
      *(v14 + 144) = v568;
      *(v14 + 192) = v179;
      *(v14 + 208) = v180;
      *(v14 + 224) = v181;
      *(v14 + 240) = v447;
      *(v14 + 248) = v483;
      goto LABEL_53;
    }

    v608 = *(v14 - 96);
    v645 = *(v14 - 80);
    v534 = *v80;
    v571 = *(v14 - 112);
    v486 = *(v14 - 8);
    v450 = *(v14 - 16);
    v201 = *(v14 - 64);
    v202 = *(v14 - 48);
    v203 = *(v14 - 32);
    v204 = *(v14 + 48);
    *(v14 - 96) = *(v14 + 32);
    *(v14 - 80) = v204;
    v205 = *(v14 + 16);
    *v80 = *v14;
    *(v14 - 112) = v205;
    v206 = *(v14 + 80);
    *(v14 - 64) = *(v14 + 64);
    *(v14 - 48) = v206;
    *(v14 - 32) = *(v14 + 96);
    v207 = (v14 + 112);
    v208 = *(v14 + 112);
    *(v14 - 8) = *(v14 + 120);
    *(v14 - 16) = v208;
    *(v14 + 32) = v608;
    *(v14 + 48) = v645;
    *v14 = v534;
    *(v14 + 16) = v571;
    *(v14 + 64) = v201;
    *(v14 + 80) = v202;
    *(v14 + 96) = v203;
    *(v14 + 112) = v450;
    *(v14 + 120) = v486;
    if (*(v14 + 184) > *(v14 + 56))
    {
      v605 = *(v14 + 32);
      v642 = *(v14 + 48);
      v531 = *v14;
      v568 = *(v14 + 16);
      v483 = *(v14 + 120);
      v447 = *v207;
      v179 = *(v14 + 64);
      v180 = *(v14 + 80);
      v181 = *(v14 + 96);
      v209 = *(v14 + 176);
      *(v14 + 32) = *(v14 + 160);
      *(v14 + 48) = v209;
      v210 = *(v14 + 144);
      *v14 = *v135;
      *(v14 + 16) = v210;
      v211 = *(v14 + 208);
      *(v14 + 64) = *(v14 + 192);
      *(v14 + 80) = v211;
      *(v14 + 96) = *(v14 + 224);
      v212 = *(v14 + 240);
      *(v14 + 120) = *(v14 + 248);
      *v207 = v212;
      goto LABEL_52;
    }

LABEL_53:
    v609 = *(v12 + 32);
    v646 = *(v12 + 48);
    v535 = *v12;
    v572 = *(v12 + 16);
    v451 = *(v12 + 112);
    v487 = *(v12 + 120);
    v214 = *(v14 + 32);
    v213 = *(v14 + 48);
    v215 = *(v14 + 16);
    *v12 = *v14;
    *(v12 + 16) = v215;
    *(v12 + 32) = v214;
    *(v12 + 48) = v213;
    v216 = *(v14 + 112);
    *(v12 + 120) = *(v14 + 120);
    *(v12 + 112) = v216;
    v217 = *(v14 + 64);
    v218 = *(v14 + 80);
    v219 = *(v14 + 96);
    *(v14 + 32) = v609;
    *(v14 + 48) = v646;
    *v14 = v535;
    *(v14 + 16) = v572;
    v220 = *(v12 + 64);
    v221 = *(v12 + 80);
    *(v12 + 64) = v217;
    *(v12 + 80) = v218;
    *(v14 + 64) = v220;
    *(v14 + 80) = v221;
    v222 = *(v12 + 96);
    *(v12 + 96) = v219;
    *(v14 + 96) = v222;
    *(v14 + 120) = v487;
    *(v14 + 112) = v451;
LABEL_54:
    --a3;
    if (a4)
    {
      v223 = *(v12 + 56);
LABEL_57:
      v502 = *(v12 + 48);
      v496 = *(v12 + 16);
      v499 = *(v12 + 32);
      v452 = *v12;
      v224 = *(v12 + 60);
      v225 = *(v12 + 76);
      v226 = *(v12 + 92);
      v421 = *(v12 + 112);
      v424 = *(v12 + 120);
      v227 = v12;
      v228 = *(v12 + 108);
      do
      {
        v229 = v227;
        v227 += 128;
      }

      while (*(v229 + 184) > v223);
      v230 = a2;
      if (v229 == v12)
      {
        v233 = a2;
        while (v227 < v233)
        {
          v231 = v233 - 8;
          v234 = v233[-5].n128_u32[2];
          v233 -= 8;
          if (v234 > v223)
          {
            goto LABEL_67;
          }
        }

        v231 = v233;
      }

      else
      {
        do
        {
          v231 = v230 - 8;
          v232 = v230[-5].n128_u32[2];
          v230 -= 8;
        }

        while (v232 <= v223);
      }

LABEL_67:
      if (v227 >= v231)
      {
        v12 = v227;
      }

      else
      {
        v235 = v231;
        v12 = v227;
        do
        {
          v610 = *(v12 + 32);
          v647 = *(v12 + 48);
          v536 = *v12;
          v573 = *(v12 + 16);
          v505 = *(v12 + 112);
          v508 = *(v12 + 120);
          v236 = *(v12 + 64);
          v237 = *(v12 + 80);
          v238 = *(v12 + 96);
          v240 = *(v235 + 32);
          v239 = *(v235 + 48);
          v241 = *(v235 + 16);
          *v12 = *v235;
          *(v12 + 16) = v241;
          *(v12 + 32) = v240;
          *(v12 + 48) = v239;
          *(v12 + 64) = *(v235 + 64);
          *(v12 + 80) = *(v235 + 80);
          *(v12 + 96) = *(v235 + 96);
          v242 = *(v235 + 112);
          *(v12 + 120) = *(v235 + 120);
          *(v12 + 112) = v242;
          *(v235 + 32) = v610;
          *(v235 + 48) = v647;
          *v235 = v536;
          *(v235 + 16) = v573;
          *(v235 + 64) = v236;
          *(v235 + 80) = v237;
          *(v235 + 96) = v238;
          *(v235 + 112) = v505;
          *(v235 + 120) = v508;
          do
          {
            v243 = *(v12 + 184);
            v12 += 128;
          }

          while (v243 > v223);
          do
          {
            v244 = *(v235 - 72);
            v235 -= 128;
          }

          while (v244 <= v223);
        }

        while (v12 < v235);
      }

      v245 = (v12 - 128);
      if (v12 - 128 != a1)
      {
        v246 = *v245;
        v247 = *(v12 - 112);
        v248 = *(v12 - 80);
        *(a1 + 32) = *(v12 - 96);
        *(a1 + 48) = v248;
        *a1 = v246;
        *(a1 + 16) = v247;
        *(a1 + 64) = *(v12 - 64);
        *(a1 + 80) = *(v12 - 48);
        *(a1 + 96) = *(v12 - 32);
        v249 = *(v12 - 16);
        *(a1 + 120) = *(v12 - 8);
        *(a1 + 112) = v249;
      }

      *(v12 - 80) = v502;
      *(v12 - 112) = v496;
      *(v12 - 96) = v499;
      *v245 = v452;
      *(v12 - 72) = v223;
      *(v12 - 68) = v224;
      *(v12 - 52) = v225;
      *(v12 - 36) = v226;
      *(v12 - 20) = v228;
      *(v12 - 16) = v421;
      *(v12 - 8) = v424;
      if (v227 < v231)
      {
        goto LABEL_80;
      }

      v250 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::FlipBook::next_frame(unsigned long,unsigned long)::$_0 &,CA::WindowServer::FlipBook::Frame *>(a1, v12 - 128, v224);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::FlipBook::next_frame(unsigned long,unsigned long)::$_0 &,CA::WindowServer::FlipBook::Frame *>(v12, a2, v251))
      {
        a2 = (v12 - 128);
        if (!v250)
        {
          goto LABEL_1;
        }

        return a5.n128_f64[0];
      }

      if (!v250)
      {
LABEL_80:
        std::__introsort<std::_ClassicAlgPolicy,CA::WindowServer::FlipBook::next_frame(unsigned long,unsigned long)::$_0 &,CA::WindowServer::FlipBook::Frame *,false>(a1, v12 - 128, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v223 = *(v12 + 56);
      if (*(v12 - 72) > v223)
      {
        goto LABEL_57;
      }

      v503 = *(v12 + 48);
      v497 = *(v12 + 16);
      v500 = *(v12 + 32);
      v453 = *v12;
      a5 = *(v12 + 60);
      v252 = *(v12 + 76);
      v253 = *(v12 + 92);
      v254 = *(v12 + 108);
      v422 = *(v12 + 112);
      v425 = *(v12 + 120);
      if (v223 <= a2[-5].n128_u32[2])
      {
        v257 = v12 + 128;
        do
        {
          v12 = v257;
          if (v257 >= a2)
          {
            break;
          }

          v258 = *(v257 + 56);
          v257 += 128;
        }

        while (v223 <= v258);
      }

      else
      {
        v255 = v12;
        do
        {
          v12 = v255 + 128;
          v256 = *(v255 + 184);
          v255 += 128;
        }

        while (v223 <= v256);
      }

      v259 = a2;
      if (v12 < a2)
      {
        v260 = a2;
        do
        {
          v259 = v260 - 8;
          v261 = v260[-5].n128_u32[2];
          v260 -= 8;
        }

        while (v223 > v261);
      }

      while (v12 < v259)
      {
        v611 = *(v12 + 32);
        v648 = *(v12 + 48);
        v537 = *v12;
        v574 = *(v12 + 16);
        v506 = *(v12 + 112);
        v509 = *(v12 + 120);
        v262 = *(v12 + 64);
        v263 = *(v12 + 80);
        v264 = *(v12 + 96);
        v266 = v259[2];
        v265 = v259[3];
        v267 = v259[1];
        *v12 = *v259;
        *(v12 + 16) = v267;
        *(v12 + 32) = v266;
        *(v12 + 48) = v265;
        *(v12 + 64) = v259[4];
        *(v12 + 80) = v259[5];
        *(v12 + 96) = v259[6];
        v268 = v259[7].n128_u64[0];
        *(v12 + 120) = v259[7].n128_u8[8];
        *(v12 + 112) = v268;
        v259[2] = v611;
        v259[3] = v648;
        *v259 = v537;
        v259[1] = v574;
        v259[4] = v262;
        v259[5] = v263;
        v259[6] = v264;
        v259[7].n128_u64[0] = v506;
        v259[7].n128_u8[8] = v509;
        do
        {
          v269 = *(v12 + 184);
          v12 += 128;
        }

        while (v223 <= v269);
        do
        {
          v270 = v259[-5].n128_u32[2];
          v259 -= 8;
        }

        while (v223 > v270);
      }

      v271 = (v12 - 128);
      if (v12 - 128 != a1)
      {
        v272 = *v271;
        v273 = *(v12 - 112);
        v274 = *(v12 - 80);
        *(a1 + 32) = *(v12 - 96);
        *(a1 + 48) = v274;
        *a1 = v272;
        *(a1 + 16) = v273;
        *(a1 + 64) = *(v12 - 64);
        *(a1 + 80) = *(v12 - 48);
        *(a1 + 96) = *(v12 - 32);
        v275 = *(v12 - 16);
        *(a1 + 120) = *(v12 - 8);
        *(a1 + 112) = v275;
      }

      a4 = 0;
      *(v12 - 80) = v503;
      *(v12 - 112) = v497;
      *(v12 - 96) = v500;
      *v271 = v453;
      *(v12 - 72) = v223;
      *(v12 - 68) = a5;
      *(v12 - 52) = v252;
      *(v12 - 36) = v253;
      *(v12 - 20) = v254;
      *(v12 - 16) = v422;
      *(v12 - 8) = v425;
    }
  }

  v294 = *(v12 + 184);
  v295 = a2[-5].n128_u32[2];
  if (v294 <= *(v12 + 56))
  {
    if (v295 <= v294)
    {
      return a5.n128_f64[0];
    }

    v619 = *(v12 + 160);
    v656 = *(v12 + 176);
    v545 = *(v12 + 128);
    v582 = *(v12 + 144);
    v460 = *(v12 + 240);
    v493 = *(v12 + 248);
    a5 = *(v12 + 192);
    v386 = *(v12 + 208);
    v387 = *(v12 + 224);
    v389 = a2[-6];
    v388 = a2[-5];
    v390 = a2[-7];
    *(v12 + 128) = *n128_u64;
    *(v12 + 144) = v390;
    *(v12 + 160) = v389;
    *(v12 + 176) = v388;
    *(v12 + 192) = a2[-4];
    *(v12 + 208) = a2[-3];
    *(v12 + 224) = a2[-2];
    v391 = a2[-1].n128_u64[0];
    *(v12 + 248) = a2[-1].n128_u8[8];
    *(v12 + 240) = v391;
    a2[-6] = v619;
    a2[-5] = v656;
    *n128_u64 = v545;
    a2[-7] = v582;
    a2[-4] = a5;
    a2[-3] = v386;
    a2[-2] = v387;
    a2[-1].n128_u8[8] = v493;
    a2[-1].n128_u64[0] = v460;
    goto LABEL_167;
  }

  if (v295 > v294)
  {
    v615 = *(v12 + 32);
    v652 = *(v12 + 48);
    v541 = *v12;
    v578 = *(v12 + 16);
    v456 = *(v12 + 112);
    v490 = *(v12 + 120);
    a5 = *(v12 + 64);
    v288 = *(v12 + 80);
    v289 = *(v12 + 96);
    v297 = a2[-6];
    v296 = a2[-5];
    v298 = a2[-7];
    *v12 = *n128_u64;
    *(v12 + 16) = v298;
    *(v12 + 32) = v297;
    *(v12 + 48) = v296;
    *(v12 + 64) = a2[-4];
    *(v12 + 80) = a2[-3];
    *(v12 + 96) = a2[-2];
    v299 = a2[-1].n128_u64[0];
    *(v12 + 120) = a2[-1].n128_u8[8];
    *(v12 + 112) = v299;
    a2[-6] = v615;
    a2[-5] = v652;
    *n128_u64 = v541;
    a2[-7] = v578;
LABEL_110:
    a2[-4] = a5;
    a2[-3] = v288;
    a2[-2] = v289;
    a2[-1].n128_u8[8] = v490;
    a2[-1].n128_u64[0] = v456;
    return a5.n128_f64[0];
  }

  v621 = *(v12 + 32);
  v658 = *(v12 + 48);
  v547 = *v12;
  v584 = *(v12 + 16);
  v462 = *(v12 + 112);
  v495 = *(v12 + 120);
  a5 = *(v12 + 64);
  v407 = *(v12 + 80);
  v408 = *(v12 + 96);
  v409 = *(v12 + 144);
  *v12 = *(v12 + 128);
  *(v12 + 16) = v409;
  v410 = *(v12 + 176);
  *(v12 + 32) = *(v12 + 160);
  *(v12 + 48) = v410;
  v411 = *(v12 + 208);
  *(v12 + 64) = *(v12 + 192);
  *(v12 + 80) = v411;
  *(v12 + 96) = *(v12 + 224);
  v412 = *(v12 + 240);
  *(v12 + 120) = *(v12 + 248);
  *(v12 + 112) = v412;
  *(v12 + 160) = v621;
  *(v12 + 176) = v658;
  *(v12 + 128) = v547;
  *(v12 + 144) = v584;
  *(v12 + 192) = a5;
  *(v12 + 208) = v407;
  *(v12 + 224) = v408;
  *(v12 + 248) = v495;
  *(v12 + 240) = v462;
  if (a2[-5].n128_u32[2] > *(v12 + 184))
  {
    v393 = (v12 + 128);
    v392 = &a2[-8];
    goto LABEL_179;
  }

  return a5.n128_f64[0];
}

__n128 std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::WindowServer::FlipBook::Frame *&,CA::WindowServer::FlipBook::Frame *&>(__int128 *a1, __int128 *a2)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v9 = *(a1 + 14);
  v10 = *(a1 + 120);
  result = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2[3];
  v7 = *a2;
  v6 = a2[1];
  a1[2] = a2[2];
  a1[3] = v5;
  *a1 = v7;
  a1[1] = v6;
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  v8 = *(a2 + 14);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 14) = v8;
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = result;
  a2[5] = v3;
  a2[6] = v4;
  *(a2 + 14) = v9;
  *(a2 + 120) = v10;
  return result;
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::FlipBook::next_frame(unsigned long,unsigned long)::$_0 &,CA::WindowServer::FlipBook::Frame *,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __n128 result)
{
  v5 = *(a2 + 14);
  v6 = *(a3 + 14);
  if (v5 <= *(a1 + 14))
  {
    if (v6 > v5)
    {
      v70 = *a2;
      v77 = a2[1];
      v84 = a2[2];
      v91 = a2[3];
      v13 = (a2 + 7);
      v56 = *(a2 + 14);
      v63 = *(a2 + 120);
      result = a2[4];
      v14 = a2[5];
      v15 = a2[6];
      v16 = a3[3];
      v18 = *a3;
      v17 = a3[1];
      a2[2] = a3[2];
      a2[3] = v16;
      *a2 = v18;
      a2[1] = v17;
      a2[4] = a3[4];
      a2[5] = a3[5];
      a2[6] = a3[6];
      v19 = *(a3 + 14);
      *(a2 + 120) = *(a3 + 120);
      *(a2 + 14) = v19;
      *a3 = v70;
      a3[1] = v77;
      a3[2] = v84;
      a3[3] = v91;
      a3[4] = result;
      a3[5] = v14;
      a3[6] = v15;
      *(a3 + 14) = v56;
      *(a3 + 120) = v63;
      if (*(a2 + 14) > *(a1 + 14))
      {
        v71 = *a1;
        v78 = a1[1];
        v85 = a1[2];
        v92 = a1[3];
        v57 = *(a1 + 14);
        v64 = *(a1 + 120);
        result = a1[4];
        v20 = a1[5];
        v21 = a1[6];
        v22 = a2[3];
        v24 = *a2;
        v23 = a2[1];
        a1[2] = a2[2];
        a1[3] = v22;
        *a1 = v24;
        a1[1] = v23;
        a1[4] = a2[4];
        a1[5] = a2[5];
        a1[6] = a2[6];
        v25 = *v13;
        *(a1 + 120) = *(a2 + 120);
        *(a1 + 14) = v25;
        *a2 = v71;
        a2[1] = v78;
        a2[2] = v85;
        a2[3] = v92;
        a2[4] = result;
        a2[5] = v20;
        a2[6] = v21;
        *v13 = v57;
        *(a2 + 120) = v64;
      }
    }
  }

  else
  {
    if (v6 > v5)
    {
      v69 = *a1;
      v76 = a1[1];
      v83 = a1[2];
      v90 = a1[3];
      v55 = *(a1 + 14);
      v62 = *(a1 + 120);
      result = a1[4];
      v7 = a1[5];
      v8 = a1[6];
      v9 = a3[3];
      v11 = *a3;
      v10 = a3[1];
      a1[2] = a3[2];
      a1[3] = v9;
      *a1 = v11;
      a1[1] = v10;
      a1[4] = a3[4];
      a1[5] = a3[5];
      a1[6] = a3[6];
      v12 = *(a3 + 14);
      *(a1 + 120) = *(a3 + 120);
      *(a1 + 14) = v12;
LABEL_9:
      *a3 = v69;
      a3[1] = v76;
      a3[2] = v83;
      a3[3] = v90;
      a3[4] = result;
      a3[5] = v7;
      a3[6] = v8;
      *(a3 + 14) = v55;
      *(a3 + 120) = v62;
      goto LABEL_10;
    }

    v72 = *a1;
    v79 = a1[1];
    v86 = a1[2];
    v93 = a1[3];
    v58 = *(a1 + 14);
    v65 = *(a1 + 120);
    result = a1[4];
    v7 = a1[5];
    v8 = a1[6];
    v26 = a2[3];
    v28 = *a2;
    v27 = a2[1];
    a1[2] = a2[2];
    a1[3] = v26;
    *a1 = v28;
    a1[1] = v27;
    a1[4] = a2[4];
    a1[5] = a2[5];
    a1[6] = a2[6];
    v29 = (a2 + 7);
    v30 = *(a2 + 14);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 14) = v30;
    *a2 = v72;
    a2[1] = v79;
    a2[2] = v86;
    a2[3] = v93;
    a2[4] = result;
    a2[5] = v7;
    a2[6] = v8;
    *(a2 + 14) = v58;
    *(a2 + 120) = v65;
    if (*(a3 + 14) > *(a2 + 14))
    {
      v69 = *a2;
      v76 = a2[1];
      v83 = a2[2];
      v90 = a2[3];
      v55 = *v29;
      v62 = *(a2 + 120);
      v31 = a3[3];
      v33 = *a3;
      v32 = a3[1];
      a2[2] = a3[2];
      a2[3] = v31;
      *a2 = v33;
      a2[1] = v32;
      a2[4] = a3[4];
      a2[5] = a3[5];
      a2[6] = a3[6];
      v34 = *(a3 + 14);
      *(a2 + 120) = *(a3 + 120);
      *v29 = v34;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 14) > *(a3 + 14))
  {
    v73 = *a3;
    v80 = a3[1];
    v87 = a3[2];
    v94 = a3[3];
    v35 = (a3 + 7);
    v59 = *(a3 + 14);
    v66 = *(a3 + 120);
    result = a3[4];
    v36 = a3[5];
    v37 = a3[6];
    v38 = a4[3];
    v40 = *a4;
    v39 = a4[1];
    a3[2] = a4[2];
    a3[3] = v38;
    *a3 = v40;
    a3[1] = v39;
    a3[4] = a4[4];
    a3[5] = a4[5];
    a3[6] = a4[6];
    v41 = *(a4 + 14);
    *(a3 + 120) = *(a4 + 120);
    *(a3 + 14) = v41;
    *a4 = v73;
    a4[1] = v80;
    a4[2] = v87;
    a4[3] = v94;
    a4[4] = result;
    a4[5] = v36;
    a4[6] = v37;
    *(a4 + 14) = v59;
    *(a4 + 120) = v66;
    if (*(a3 + 14) > *(a2 + 14))
    {
      v74 = *a2;
      v81 = a2[1];
      v88 = a2[2];
      v95 = a2[3];
      v42 = (a2 + 7);
      v60 = *(a2 + 14);
      v67 = *(a2 + 120);
      result = a2[4];
      v43 = a2[5];
      v44 = a2[6];
      v45 = a3[3];
      v47 = *a3;
      v46 = a3[1];
      a2[2] = a3[2];
      a2[3] = v45;
      *a2 = v47;
      a2[1] = v46;
      a2[4] = a3[4];
      a2[5] = a3[5];
      a2[6] = a3[6];
      v48 = *v35;
      *(a2 + 120) = *(a3 + 120);
      *(a2 + 14) = v48;
      *a3 = v74;
      a3[1] = v81;
      a3[2] = v88;
      a3[3] = v95;
      a3[4] = result;
      a3[5] = v43;
      a3[6] = v44;
      *v35 = v60;
      *(a3 + 120) = v67;
      if (*(a2 + 14) > *(a1 + 14))
      {
        v75 = *a1;
        v82 = a1[1];
        v89 = a1[2];
        v96 = a1[3];
        v61 = *(a1 + 14);
        v68 = *(a1 + 120);
        result = a1[4];
        v49 = a1[5];
        v50 = a1[6];
        v51 = a2[3];
        v53 = *a2;
        v52 = a2[1];
        a1[2] = a2[2];
        a1[3] = v51;
        *a1 = v53;
        a1[1] = v52;
        a1[4] = a2[4];
        a1[5] = a2[5];
        a1[6] = a2[6];
        v54 = *v42;
        *(a1 + 120) = *(a2 + 120);
        *(a1 + 14) = v54;
        *a2 = v75;
        a2[1] = v82;
        a2[2] = v89;
        a2[3] = v96;
        a2[4] = result;
        a2[5] = v49;
        a2[6] = v50;
        *v42 = v61;
        *(a2 + 120) = v68;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::FlipBook::next_frame(unsigned long,unsigned long)::$_0 &,CA::WindowServer::FlipBook::Frame *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = (a2 - a1) >> 7;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v27 = (a2 - 128);
        v28 = *(a1 + 184);
        v29 = *(a2 - 72);
        if (v28 > *(a1 + 56))
        {
          if (v29 > v28)
          {
            v114 = *a1;
            v124 = *(a1 + 16);
            v134 = *(a1 + 32);
            v144 = *(a1 + 48);
            v93 = *(a1 + 112);
            v102 = *(a1 + 120);
            v6 = *(a1 + 64);
            v7 = *(a1 + 80);
            v8 = *(a1 + 96);
            v30 = *(a2 - 80);
            v32 = *v27;
            v31 = *(a2 - 112);
            *(a1 + 32) = *(a2 - 96);
            *(a1 + 48) = v30;
            *a1 = v32;
            *(a1 + 16) = v31;
            *(a1 + 64) = *(a2 - 64);
            *(a1 + 80) = *(a2 - 48);
            *(a1 + 96) = *(a2 - 32);
            v33 = *(a2 - 16);
            *(a1 + 120) = *(a2 - 8);
            *(a1 + 112) = v33;
            *v27 = v114;
            *(a2 - 112) = v124;
            *(a2 - 96) = v134;
            *(a2 - 80) = v144;
            goto LABEL_16;
          }

          v118 = *a1;
          v128 = *(a1 + 16);
          v138 = *(a1 + 32);
          v148 = *(a1 + 48);
          v99 = *(a1 + 112);
          v108 = *(a1 + 120);
          v61 = *(a1 + 64);
          v62 = *(a1 + 80);
          v63 = *(a1 + 96);
          v64 = *(a1 + 128);
          v65 = *(a1 + 144);
          v66 = *(a1 + 176);
          *(a1 + 32) = *(a1 + 160);
          *(a1 + 48) = v66;
          *a1 = v64;
          *(a1 + 16) = v65;
          v67 = *(a1 + 208);
          *(a1 + 64) = *(a1 + 192);
          *(a1 + 80) = v67;
          *(a1 + 96) = *(a1 + 224);
          *(a1 + 120) = *(a1 + 248);
          *(a1 + 112) = *(a1 + 240);
          *(a1 + 160) = v138;
          *(a1 + 176) = v148;
          *(a1 + 128) = v118;
          *(a1 + 144) = v128;
          *(a1 + 192) = v61;
          *(a1 + 208) = v62;
          *(a1 + 224) = v63;
          *(a1 + 248) = v108;
          *(a1 + 240) = v99;
          if (*(a2 - 72) <= *(a1 + 184))
          {
            return 1;
          }

          v52 = (a1 + 128);
LABEL_30:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::WindowServer::FlipBook::Frame *&,CA::WindowServer::FlipBook::Frame *&>(v52, v27);
          return 1;
        }

        if (v29 <= v28)
        {
          return 1;
        }

        v116 = *(a1 + 128);
        v126 = *(a1 + 144);
        v136 = *(a1 + 160);
        v146 = *(a1 + 176);
        v97 = *(a1 + 240);
        v106 = *(a1 + 248);
        v45 = *(a1 + 192);
        v46 = *(a1 + 208);
        v47 = *(a1 + 224);
        v48 = *(a2 - 80);
        v50 = *v27;
        v49 = *(a2 - 112);
        *(a1 + 160) = *(a2 - 96);
        *(a1 + 176) = v48;
        *(a1 + 128) = v50;
        *(a1 + 144) = v49;
        *(a1 + 192) = *(a2 - 64);
        *(a1 + 208) = *(a2 - 48);
        *(a1 + 224) = *(a2 - 32);
        v51 = *(a2 - 16);
        *(a1 + 248) = *(a2 - 8);
        *(a1 + 240) = v51;
        *v27 = v116;
        *(a2 - 112) = v126;
        *(a2 - 96) = v136;
        *(a2 - 80) = v146;
        *(a2 - 64) = v45;
        *(a2 - 48) = v46;
        *(a2 - 32) = v47;
        *(a2 - 16) = v97;
        *(a2 - 8) = v106;
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::FlipBook::next_frame(unsigned long,unsigned long)::$_0 &,CA::WindowServer::FlipBook::Frame *,0>(a1, (a1 + 128), (a1 + 256), (a2 - 128), a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::FlipBook::next_frame(unsigned long,unsigned long)::$_0 &,CA::WindowServer::FlipBook::Frame *,0>(a1, (a1 + 128), (a1 + 256), (a1 + 384), a3);
        if (*(a2 - 72) <= *(v4 + 440))
        {
          return 1;
        }

        v112 = *(v4 + 384);
        v122 = *(v4 + 400);
        v132 = *(v4 + 416);
        v142 = *(v4 + 432);
        v94 = *(v4 + 496);
        v103 = *(v4 + 504);
        v13 = *(v4 + 448);
        v14 = *(v4 + 464);
        v15 = *(v4 + 480);
        v16 = *(a2 - 80);
        v18 = *(a2 - 128);
        v17 = *(a2 - 112);
        *(v4 + 416) = *(a2 - 96);
        *(v4 + 432) = v16;
        *(v4 + 384) = v18;
        *(v4 + 400) = v17;
        *(v4 + 448) = *(a2 - 64);
        *(v4 + 464) = *(a2 - 48);
        *(v4 + 480) = *(a2 - 32);
        v19 = *(a2 - 16);
        *(v4 + 504) = *(a2 - 8);
        *(v4 + 496) = v19;
        *(a2 - 128) = v112;
        *(a2 - 112) = v122;
        *(a2 - 96) = v132;
        *(a2 - 80) = v142;
        *(a2 - 64) = v13;
        *(a2 - 48) = v14;
        *(a2 - 32) = v15;
        *(a2 - 16) = v94;
        *(a2 - 8) = v103;
        if (*(v4 + 440) <= *(v4 + 312))
        {
          return 1;
        }

        v113 = *(v4 + 256);
        v123 = *(v4 + 272);
        v133 = *(v4 + 288);
        v143 = *(v4 + 304);
        v95 = *(v4 + 368);
        v104 = *(v4 + 376);
        v20 = *(v4 + 320);
        v21 = *(v4 + 336);
        v22 = *(v4 + 352);
        v23 = *(v4 + 384);
        v24 = *(v4 + 400);
        v25 = *(v4 + 432);
        *(v4 + 288) = *(v4 + 416);
        *(v4 + 304) = v25;
        *(v4 + 256) = v23;
        *(v4 + 272) = v24;
        v26 = *(v4 + 464);
        *(v4 + 320) = *(v4 + 448);
        *(v4 + 336) = v26;
        *(v4 + 352) = *(v4 + 480);
        *(v4 + 376) = *(v4 + 504);
        *(v4 + 368) = *(v4 + 496);
        *(v4 + 416) = v133;
        *(v4 + 432) = v143;
        *(v4 + 384) = v113;
        *(v4 + 400) = v123;
        *(v4 + 448) = v20;
        *(v4 + 464) = v21;
        *(v4 + 480) = v22;
        *(v4 + 504) = v104;
        *(v4 + 496) = v95;
        if (*(v4 + 312) <= *(v4 + 184))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::WindowServer::FlipBook::Frame *&,CA::WindowServer::FlipBook::Frame *&>((v4 + 128), (v4 + 256));
        break;
      default:
        goto LABEL_17;
    }

    if (*(v4 + 184) <= *(v4 + 56))
    {
      return 1;
    }

    v27 = (v4 + 128);
    v52 = v4;
    goto LABEL_30;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    if (*(a2 - 72) > *(a1 + 56))
    {
      v111 = *a1;
      v121 = *(a1 + 16);
      v131 = *(a1 + 32);
      v141 = *(a1 + 48);
      v93 = *(a1 + 112);
      v102 = *(a1 + 120);
      v6 = *(a1 + 64);
      v7 = *(a1 + 80);
      v8 = *(a1 + 96);
      v9 = *(a2 - 80);
      v11 = *(a2 - 128);
      v10 = *(a2 - 112);
      *(a1 + 32) = *(a2 - 96);
      *(a1 + 48) = v9;
      *a1 = v11;
      *(a1 + 16) = v10;
      *(a1 + 64) = *(a2 - 64);
      *(a1 + 80) = *(a2 - 48);
      *(a1 + 96) = *(a2 - 32);
      v12 = *(a2 - 16);
      *(a1 + 120) = *(a2 - 8);
      *(a1 + 112) = v12;
      *(a2 - 128) = v111;
      *(a2 - 112) = v121;
      *(a2 - 96) = v131;
      *(a2 - 80) = v141;
LABEL_16:
      *(a2 - 64) = v6;
      *(a2 - 48) = v7;
      *(a2 - 32) = v8;
      *(a2 - 16) = v93;
      *(a2 - 8) = v102;
    }

    return 1;
  }

LABEL_17:
  v34 = (a1 + 256);
  v35 = *(a1 + 184);
  v36 = *(a1 + 56);
  v37 = *(a1 + 312);
  if (v35 <= v36)
  {
    if (v37 > v35)
    {
      v117 = *(a1 + 128);
      v127 = *(a1 + 144);
      v137 = *(a1 + 160);
      v147 = *(a1 + 176);
      v98 = *(a1 + 240);
      v107 = *(a1 + 248);
      v53 = *(a1 + 192);
      v54 = *(a1 + 208);
      v55 = *(a1 + 224);
      v56 = *v34;
      v57 = *(a1 + 272);
      v58 = *(a1 + 304);
      *(a1 + 160) = *(a1 + 288);
      *(a1 + 176) = v58;
      *(a1 + 128) = v56;
      *(a1 + 144) = v57;
      v59 = *(a1 + 336);
      *(a1 + 192) = *(a1 + 320);
      *(a1 + 208) = v59;
      *(a1 + 224) = *(a1 + 352);
      *(a1 + 248) = *(a1 + 376);
      *(a1 + 240) = *(a1 + 368);
      *(a1 + 288) = v137;
      *(a1 + 304) = v147;
      *v34 = v117;
      *(a1 + 272) = v127;
      *(a1 + 320) = v53;
      *(a1 + 336) = v54;
      *(a1 + 352) = v55;
      *(a1 + 376) = v107;
      *(a1 + 368) = v98;
      if (*(a1 + 184) > v36)
      {
        v60 = (a1 + 128);
LABEL_33:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::WindowServer::FlipBook::Frame *&,CA::WindowServer::FlipBook::Frame *&>(a1, v60);
      }
    }
  }

  else
  {
    if (v37 > v35)
    {
      v115 = *a1;
      v125 = *(a1 + 16);
      v135 = *(a1 + 32);
      v145 = *(a1 + 48);
      v96 = *(a1 + 112);
      v105 = *(a1 + 120);
      v38 = *(a1 + 64);
      v39 = *(a1 + 80);
      v40 = *(a1 + 96);
      v41 = *v34;
      v42 = *(a1 + 272);
      v43 = *(a1 + 304);
      *(a1 + 32) = *(a1 + 288);
      *(a1 + 48) = v43;
      *a1 = v41;
      *(a1 + 16) = v42;
      v44 = *(a1 + 336);
      *(a1 + 64) = *(a1 + 320);
      *(a1 + 80) = v44;
      *(a1 + 96) = *(a1 + 352);
      *(a1 + 120) = *(a1 + 376);
      *(a1 + 112) = *(a1 + 368);
      *(a1 + 288) = v135;
      *(a1 + 304) = v145;
      *v34 = v115;
      *(a1 + 272) = v125;
      *(a1 + 320) = v38;
      *(a1 + 336) = v39;
      *(a1 + 352) = v40;
      *(a1 + 376) = v105;
      *(a1 + 368) = v96;
      goto LABEL_34;
    }

    v119 = *a1;
    v129 = *(a1 + 16);
    v139 = *(a1 + 32);
    v149 = *(a1 + 48);
    v100 = *(a1 + 112);
    v109 = *(a1 + 120);
    v68 = *(a1 + 64);
    v69 = *(a1 + 80);
    v70 = *(a1 + 96);
    v71 = *(a1 + 128);
    v72 = *(a1 + 144);
    v73 = *(a1 + 176);
    *(a1 + 32) = *(a1 + 160);
    *(a1 + 48) = v73;
    *a1 = v71;
    *(a1 + 16) = v72;
    v74 = *(a1 + 208);
    *(a1 + 64) = *(a1 + 192);
    *(a1 + 80) = v74;
    *(a1 + 96) = *(a1 + 224);
    *(a1 + 120) = *(a1 + 248);
    *(a1 + 112) = *(a1 + 240);
    *(a1 + 160) = v139;
    *(a1 + 176) = v149;
    *(a1 + 128) = v119;
    *(a1 + 144) = v129;
    *(a1 + 192) = v68;
    *(a1 + 208) = v69;
    *(a1 + 224) = v70;
    *(a1 + 248) = v109;
    *(a1 + 240) = v100;
    if (v37 > *(a1 + 184))
    {
      a1 += 128;
      v60 = (v4 + 256);
      goto LABEL_33;
    }
  }

LABEL_34:
  v75 = v4 + 384;
  if (v4 + 384 == a2)
  {
    return 1;
  }

  v76 = 0;
  v77 = 0;
  while (1)
  {
    v78 = *(v75 + 56);
    if (v78 > *(v34 + 14))
    {
      v120 = *v75;
      v130 = *(v75 + 16);
      v140 = *(v75 + 32);
      v150 = *(v75 + 48);
      v79 = *(v75 + 60);
      v80 = *(v75 + 76);
      v81 = *(v75 + 92);
      v101 = *(v75 + 112);
      v110 = *(v75 + 120);
      v82 = v76;
      v83 = *(v75 + 108);
      while (1)
      {
        v84 = v82;
        v85 = v4 + v82;
        v86 = *(v85 + 272);
        *(v85 + 384) = *(v85 + 256);
        *(v85 + 400) = v86;
        v87 = *(v85 + 304);
        *(v85 + 416) = *(v85 + 288);
        *(v85 + 432) = v87;
        v88 = *(v85 + 336);
        *(v85 + 448) = *(v85 + 320);
        *(v85 + 464) = v88;
        *(v85 + 480) = *(v85 + 352);
        *(v85 + 504) = *(v85 + 376);
        *(v85 + 496) = *(v85 + 368);
        if (v84 == -256)
        {
          break;
        }

        v89 = *(v85 + 184);
        v82 = v84 - 128;
        if (v78 <= v89)
        {
          v90 = v4 + v82 + 384;
          v91 = v4 + v84 + 368;
          goto LABEL_42;
        }
      }

      v91 = v85 + 368;
      v90 = v4;
LABEL_42:
      *v90 = v120;
      *(v90 + 16) = v130;
      *(v90 + 32) = v140;
      *(v90 + 48) = v150;
      *(v90 + 56) = v78;
      *(v90 + 60) = v79;
      *(v90 + 76) = v80;
      *(v90 + 92) = v81;
      *(v90 + 108) = v83;
      *v91 = v101;
      ++v77;
      *(v91 + 8) = v110;
      if (v77 == 8)
      {
        return v75 + 128 == a2;
      }
    }

    v34 = v75;
    v76 += 128;
    v75 += 128;
    if (v75 == a2)
    {
      return 1;
    }
  }
}

uint64_t CA::OGL::MetalContext::image_size(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 64);
  if (a3)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (!v4)
  {
    *a3 = [v3 allocatedSize];
  }

  return v5;
}

char *CA::OGL::MetalContext::debug_log_image(int a1, X::Stream *this, const void *a3, void *a4)
{
  v6 = a4[8];
  if (v6)
  {
    if (*a4)
    {
      v7 = (*(**a4 + 104))(*a4);
      if (v7 > 0x23)
      {
        v8 = 0;
      }

      else
      {
        v8 = dword_183E22814[v7];
      }

      v10 = HIBYTE(v8);
    }

    else
    {
      v10 = 0;
      v8 = 0;
    }

    v11 = MEMORY[0x1E69E9830];
    if ((*(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x40000) != 0)
    {
      v12 = (v8 >> 24);
    }

    else
    {
      v12 = 32;
    }

    if (BYTE2(v8) <= 0x7Fu)
    {
      v13 = *(MEMORY[0x1E69E9830] + 4 * BYTE2(v8) + 60) & 0x40000;
    }

    else
    {
      v13 = __maskrune(BYTE2(v8), 0x40000uLL);
    }

    if (v13)
    {
      v14 = SBYTE2(v8);
    }

    else
    {
      v14 = 32;
    }

    if (BYTE1(v8) <= 0x7Fu)
    {
      v15 = *(v11 + 4 * BYTE1(v8) + 60) & 0x40000;
    }

    else
    {
      v15 = __maskrune(BYTE1(v8), 0x40000uLL);
    }

    if (v15)
    {
      v16 = SBYTE1(v8);
    }

    else
    {
      v16 = 32;
    }

    if (v8 <= 0x7Fu)
    {
      v17 = *(v11 + 4 * v8 + 60) & 0x40000;
    }

    else
    {
      v17 = __maskrune(v8, 0x40000uLL);
    }

    if (v17)
    {
      v18 = v8;
    }

    else
    {
      v18 = 32;
    }

    return X::Stream::printf(this, "MetalImage %p: texture (%c%c%c%c) (%lux%lu) (%lu bytes)\n", a3, v12, v14, v16, v18, [v6 width], objc_msgSend(v6, "height"), objc_msgSend(v6, "allocatedSize"));
  }

  else
  {

    return CA::OGL::Context::debug_log_image(a1, this, a3, a4);
  }
}

void *X::small_vector_base<unsigned int>::erase(void *result, char *__dst)
{
  v2 = result;
  v3 = result[1];
  if (v3 != __dst + 4)
  {
    result = memmove(__dst, __dst + 4, v3 - (__dst + 4));
    v3 = v2[1];
  }

  if (v3 <= *v2)
  {
    __assert_rtn("pop_back", "x-small-vector.h", 420, "_end > _begin && pop_back on empty container");
  }

  v2[1] = v3 - 4;
  return result;
}

uint64_t CA::OGL::MetalContext::start_post_processing(CA::OGL::MetalContext *this, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a2;
  pthread_mutex_lock((this + 4768));
  v4 = *(this + 633);
  v5 = *(this + 632);
  if (*(this + 635) == (v4 - v5) >> 2)
  {
    X::small_vector_base<unsigned int>::erase(this + 632, v5);
    v5 = *(this + 632);
    v4 = *(this + 633);
  }

  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_6;
    }

    if (*v5 == a2)
    {
      break;
    }

    v5 += 4;
  }

  if (v5 == v4)
  {
LABEL_6:
    X::small_vector_base<unsigned int>::push_back(this + 5056, &v7);
  }

  return pthread_mutex_unlock((this + 4768));
}

uint64_t CA::OGL::MetalContext::surface_pixel_size(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 93) & 8) != 0 || (*(a2 + 144) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a2 + 192);
  v4 = v3 - 70;
  if (v3 - 70 <= 0x37)
  {
    if (((1 << v4) & 0x1100C03) != 0)
    {
      return 4;
    }

    if (((1 << v4) & 0x210000000000) != 0)
    {
      return 8;
    }

    if (v3 == 125)
    {
      return 16;
    }
  }

  if (v3 <= 0x2B)
  {
    if (((1 << v3) & 0xA00C0000000) != 0)
    {
      return 2;
    }

    if (((1 << v3) & 0xC02) != 0)
    {
      return 1;
    }
  }

  v5 = v3 - 550;
  if (v5 > 5)
  {
    return 4;
  }

  if (((1 << v5) & 3) == 0)
  {
    if (((1 << v5) & 0xC) != 0)
    {
      return 8;
    }

    return 4;
  }

  return 5;
}

os_log_t ___Z20x_log_get_metal_perfv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "Metal.Performance");
  x_log_get_metal_perf(void)::log = result;
  return result;
}

os_log_t ___Z19x_log_get_ogl_metalv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "Metal");
  x_log_get_ogl_metal(void)::log = result;
  return result;
}

void ___ZN2CA3OGL12MetalContext5flushEb_block_invoke_78(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (os_signpost_enabled(v4))
  {
    v5 = *(a1 + 48);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(a1 + 64);
    v8 = *(a1 + 68);
    v9 = *(a1 + 56);
    [a2 kernelStartTime];
    v11 = CAHostTimeWithTime(v10) + v9;
    v12 = *(a1 + 56);
    [a2 kernelEndTime];
    v14[0] = 67241472;
    v14[1] = v6;
    v15 = 1026;
    v16 = v7;
    v17 = 1026;
    v18 = v8;
    v19 = 2050;
    v20 = v5;
    v21 = 2050;
    v22 = v11;
    v23 = 2050;
    v24 = CAHostTimeWithTime(v13) + v12;
    _os_signpost_emit_with_name_impl(&dword_183AA6000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Scheduling", "context=%{public,name=context}u update=0x%{public,name=update}x cmdbuf=%{public,name=cmdbuf}u thread=%{public,name=thread}llx begin=%{public,signpost.description:begin_time}llu end=%{public,signpost.description:end_time}llu", v14, 0x32u);
  }
}

double ___ZN2CA3OGL12MetalContext5flushEb_block_invoke_79(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  [a2 GPUEndTime];
  v5 = v4;
  [a2 GPUStartTime];
  result = v5 - v6;
  *(v3 + 5168) = result;
  return result;
}

void CA::OGL::MetalContext::copy_submitted_callbacks(uint64_t a1, void *a2)
{
  v8[5] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 3616);
  v4 = *(a1 + 3624);
  if (v3 != v4)
  {
    v6 = MEMORY[0x1E69E9820];
    do
    {
      v7 = *v3++;
      v8[0] = v6;
      v8[1] = 3221225472;
      v8[2] = ___ZN2CA3OGL12MetalContext24copy_submitted_callbacksEPU27objcproto16MTLCommandBuffer11objc_object_block_invoke;
      v8[3] = &unk_1E6DF53B8;
      v8[4] = v7;
      [a2 addScheduledHandler:v8];
      _Block_release(v7);
    }

    while (v3 != v4);
    v3 = *(a1 + 3616);
  }

  *(a1 + 3624) = v3;
}

BOOL CA::OGL::MetalContext::idle_collect_heap(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  v5 = atomic_load((a1 + 4744));
  v6 = atomic_load((a1 + 4752));
  if (v5 > v6)
  {
    if (byte_1ED4E98C3 == 1)
    {
      if (x_log_get_ogl_metal(void)::once != -1)
      {
        dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
      }

      v7 = x_log_get_ogl_metal(void)::log;
      result = os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        v9 = *(a1 + 8);
        v16 = 67109378;
        v17 = v9;
        v18 = 2080;
        v19 = a3;
        v10 = "Context %d retrying %s heap volatility after commands finish";
LABEL_18:
        _os_log_debug_impl(&dword_183AA6000, v7, OS_LOG_TYPE_DEBUG, v10, &v16, 0x12u);
        return 0;
      }

      return result;
    }

    return 0;
  }

  if (![*(a1 + 3888) usedSize])
  {
    v12 = [a2 setPurgeableState:3];
    if (byte_1ED4E98C3 == 1 && v12 != 3)
    {
      if (x_log_get_ogl_metal(void)::once != -1)
      {
        dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
      }

      v14 = x_log_get_ogl_metal(void)::log;
      if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(a1 + 8);
        v16 = 67109378;
        v17 = v15;
        v18 = 2080;
        v19 = a3;
        _os_log_debug_impl(&dword_183AA6000, v14, OS_LOG_TYPE_DEBUG, "Context %d marked %s heap as volatile", &v16, 0x12u);
      }
    }

    return 1;
  }

  if (byte_1ED4E98C3 != 1)
  {
    return 0;
  }

  if (x_log_get_ogl_metal(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
  }

  v7 = x_log_get_ogl_metal(void)::log;
  result = os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v13 = *(a1 + 8);
    v16 = 67109378;
    v17 = v13;
    v18 = 2080;
    v19 = a3;
    v10 = "Context %d outstanding allocations preventing %s heap volatility";
    goto LABEL_18;
  }

  return result;
}