double CA::Render::ImageQueue::ImageQueue(CA::Render::ImageQueue *this, atomic_uint *a2, int a3)
{
  *(this + 2) = 1;
  *(this + 3) = 25;
  ++dword_1ED4EAA9C;
  *this = &unk_1EF1F4DB0;
  if (a2)
  {
    v3 = a2;
    if (!atomic_fetch_add(a2 + 2, 1u))
    {
      v3 = 0;
      atomic_fetch_add(a2 + 2, 0xFFFFFFFF);
    }
  }

  else
  {
    v3 = 0;
  }

  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0x7FF0000000000000;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  result = 5.27765669e13;
  *(this + 100) = xmmword_183E20F10;
  *(this + 116) = 1065353216;
  *(this + 8) = xmmword_183E20F20;
  *(this + 18) = 0;
  *(this + 151) = 0;
  *(this + 156) = 0x100000001;
  *(this + 196) = 0;
  *(this + 180) = 0u;
  *(this + 164) = 0u;
  *(this + 50) = 1065353216;
  *(this + 212) = 0;
  *(this + 204) = 0;
  *(this + 55) = -1;
  *(this + 228) = xmmword_183E20E10;
  *(this + 244) = xmmword_183E20F10;
  *(this + 260) = 1065353216;
  *(this + 17) = xmmword_183E20F20;
  *(this + 36) = 0;
  *(this + 295) = 0;
  *(this + 300) = 0x100000001;
  *(this + 308) = 0u;
  *(this + 324) = 0u;
  *(this + 340) = 0;
  *(this + 86) = 1065353216;
  *(this + 348) = 0;
  *(this + 356) = 0;
  *(this + 364) = 0x3F800000FFFFFFFFLL;
  *(this + 47) = 0;
  *(this + 48) = 0;
  *(this + 49) = 0x7FF0000000000000;
  *(this + 100) = 0;
  *(this + 404) = 0;
  *(this + 102) = 0;
  *(this + 412) = 0x3F8000003F800000;
  *(this + 428) = 0;
  *(this + 420) = 0;
  *(this + 433) = 0;
  *(this + 111) = a3;
  *(this + 59) = 0;
  *(this + 480) = 0;
  *(this + 452) = 0;
  *(this + 460) = 0;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  v5 = *(a2 + 3);
  *(v5 + 88) = atomic_fetch_add(CA::Render::ImageQueue::ImageQueue(CA::Render::Shmem *,unsigned long)::_next_image_queue_id, 1u) + 1;
  return result;
}

uint64_t CA::Render::ImageQueue::set_client_port(uint64_t this, mach_port_name_t name)
{
  v3 = *(this + 460);
  if (v3 != name)
  {
    v4 = this;
    v5 = MEMORY[0x1E69E9A60];
    if (v3)
    {
      this = mach_port_deallocate(*MEMORY[0x1E69E9A60], v3);
    }

    *(v4 + 460) = 0;
    if (name - 1 <= 0xFFFFFFFD)
    {
      this = mach_port_mod_refs(*v5, name, 0, 1);
      if (!this)
      {
        *(v4 + 460) = name;
      }
    }
  }

  return this;
}

void *CA::Render::ShapeLayer::encode(CA::Render::ShapeLayer *this, CA::Render::Encoder *a2)
{
  CA::Render::Object::encode(this, a2);
  CA::Render::Encoder::encode_object(a2, *(this + 2));
  v4 = *(a2 + 4);
  if ((v4 + 20) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 20);
    v4 = *(a2 + 4);
  }

  v5 = *(this + 24);
  *(v4 + 16) = *(this + 10);
  *v4 = v5;
  *(a2 + 4) += 20;
  CA::Render::Encoder::encode_object(a2, *(this + 6));
  v6 = *(a2 + 4);
  if ((v6 + 20) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 20);
    v6 = *(a2 + 4);
  }

  v7 = *(this + 56);
  *(v6 + 16) = *(this + 18);
  *v6 = v7;
  *(a2 + 4) += 20;
  CA::Render::Encoder::encode_object(a2, *(this + 10));
  v8 = *(this + 11);
  v9 = *(a2 + 4);
  if ((v9 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 8);
    v9 = *(a2 + 4);
  }

  *v9 = v8;
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v12 = (v10 + 8);
  *(a2 + 4) = v10 + 8;
  v13 = *(this + 12);
  if (v10 + 16 > v11)
  {
    CA::Render::Encoder::grow(a2, 8);
    v12 = *(a2 + 4);
  }

  *v12 = v13;
  v14 = *(a2 + 4);
  v15 = *(a2 + 5);
  v16 = (v14 + 8);
  *(a2 + 4) = v14 + 8;
  v17 = *(this + 13);
  if (v14 + 16 > v15)
  {
    CA::Render::Encoder::grow(a2, 8);
    v16 = *(a2 + 4);
  }

  *v16 = v17;
  v18 = *(a2 + 4);
  v19 = *(a2 + 5);
  v20 = (v18 + 8);
  *(a2 + 4) = v18 + 8;
  v21 = *(this + 14);
  if (v18 + 16 > v19)
  {
    CA::Render::Encoder::grow(a2, 8);
    v20 = *(a2 + 4);
  }

  *v20 = v21;
  v22 = *(a2 + 4);
  v23 = *(a2 + 5);
  v24 = (v22 + 8);
  *(a2 + 4) = v22 + 8;
  v25 = *(this + 15);
  if (v22 + 16 > v23)
  {
    CA::Render::Encoder::grow(a2, 8);
    v24 = *(a2 + 4);
  }

  *v24 = v25;
  *(a2 + 4) += 8;
  CA::Render::Encoder::encode_object(a2, *(this + 16));
  v26 = *(this + 34);
  v27 = *(a2 + 4);
  if ((v27 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 1);
    v27 = *(a2 + 4);
  }

  *(a2 + 4) = v27 + 1;
  *v27 = v26;
  v28 = *(this + 34);
  v29 = *(a2 + 4);
  if ((v29 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 1);
    v29 = *(a2 + 4);
  }

  *(a2 + 4) = v29 + 1;
  *v29 = BYTE1(v28);
  v30 = *(this + 34);
  v31 = *(a2 + 4);
  if ((v31 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 1);
    v31 = *(a2 + 4);
  }

  *(a2 + 4) = v31 + 1;
  *v31 = BYTE2(v30);

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void CA::Render::Context::remove_image_queue(CA::Render::Context *this, CA::Render::Object *a2)
{
  if (*(this + 12) == 25)
  {
    os_unfair_lock_lock(&CA::Render::Context::_image_queues_lock);
    v4 = *(this + 64);
    if (v4)
    {
      *(this + 64) = 0;
      v6 = *(v4 + 360);
      v5 = *(v4 + 368);
      if (v6 != v5)
      {
        while (*v6 != this)
        {
          if (++v6 == v5)
          {
            v6 = *(v4 + 368);
            break;
          }
        }
      }

      if (v5 != v6)
      {
        v7 = v5 - (v6 + 1);
        if (v5 != v6 + 1)
        {
          memmove(v6, v6 + 1, v5 - (v6 + 1));
        }

        *(v4 + 368) = v6 + v7;
      }
    }

    os_unfair_lock_unlock(&CA::Render::Context::_image_queues_lock);
  }
}

void *CA::Render::Path::encode(CA::Render::Path *this, CA::Render::Encoder *a2)
{
  v4 = (*(this + 3) >> 8) & 0xFFFFFE;
  v5 = *(a2 + 4);
  if ((v5 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v5 = *(a2 + 4);
  }

  *v5 = v4;
  v6 = *(a2 + 4);
  v7 = *(a2 + 5);
  v8 = (v6 + 4);
  *(a2 + 4) = v6 + 4;
  if (v6 + 36 > v7)
  {
    CA::Render::Encoder::grow(a2, 32);
    v8 = *(a2 + 4);
  }

  v9 = *(this + 72);
  *v8 = *(this + 56);
  v8[1] = v9;
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v12 = (v10 + 32);
  *(a2 + 4) = v10 + 32;
  if (v10 + 48 > v11)
  {
    CA::Render::Encoder::grow(a2, 16);
    v12 = *(a2 + 4);
  }

  *v12 = *(this + 88);
  v13 = *(a2 + 4);
  v14 = *(a2 + 5);
  v15 = (v13 + 16);
  *(a2 + 4) = v13 + 16;
  v16 = *(this + 6) | 1;
  if (v13 + 24 > v14)
  {
    CA::Render::Encoder::grow(a2, 8);
    v15 = *(a2 + 4);
  }

  *v15 = v16;
  v17 = *(a2 + 4);
  v18 = *(a2 + 5);
  v19 = (v17 + 8);
  *(a2 + 4) = v17 + 8;
  v20 = *(this + 5);
  if (v17 + 12 > v18)
  {
    CA::Render::Encoder::grow(a2, 4);
    v19 = *(a2 + 4);
  }

  *v19 = v20;
  v21 = *(a2 + 4);
  v22 = *(a2 + 5);
  v23 = (v21 + 4);
  *(a2 + 4) = v21 + 4;
  v24 = *(this + 6);
  if (v21 + 8 > v22)
  {
    CA::Render::Encoder::grow(a2, 4);
    v23 = *(a2 + 4);
  }

  *v23 = v24;
  v25 = *(a2 + 4);
  v26 = *(a2 + 5);
  v27 = (v25 + 4);
  *(a2 + 4) = v25 + 4;
  v28 = *(this + 4);
  if (v25 + 8 > v26)
  {
    CA::Render::Encoder::grow(a2, 4);
    v27 = *(a2 + 4);
  }

  *v27 = v28;
  v29 = *(a2 + 5);
  v30 = (*(a2 + 4) + 4);
  *(a2 + 4) = v30;
  v31 = *(this + 5);
  v32 = *(this + 5);
  if (v30 + v32 > v29)
  {
    CA::Render::Encoder::grow(a2, *(this + 5));
    v30 = *(a2 + 4);
  }

  memcpy(v30, v31, v32);
  v33 = *(a2 + 5);
  v34 = (*(a2 + 4) + v32);
  *(a2 + 4) = v34;
  v35 = *(this + 4);
  v36 = 2 * *(this + 6);
  v37 = 8 * v36;
  if (v34 + v37 > v33)
  {
    CA::Render::Encoder::grow(a2, v37);
    v34 = *(a2 + 4);
  }

  memcpy(v34, v35, v37);
  *(a2 + 4) += v37;

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void CA::Render::ShapeLayer::~ShapeLayer(CA::Render::ShapeLayer *this, const CA::Render::Object *a2)
{
  *this = &unk_1EF1F6830;
  v3 = *(this + 19);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 18);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 16);
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 16))(v5);
  }

  v6 = *(this + 10);
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v6 + 16))(v6);
  }

  v7 = *(this + 6);
  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v7 + 16))(v7);
  }

  v8 = *(this + 2);
  if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v8 + 16))(v8);
  }

  --dword_1ED4EAB04;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

{
  CA::Render::ShapeLayer::~ShapeLayer(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

void *CA::Render::ImageQueue::encode(CA::Render::ImageQueue *this, CA::Render::Encoder *a2)
{
  CA::Render::Encoder::encode_object(a2, *(this + 2));
  v4 = *(this + 111);
  v5 = *(a2 + 4);
  if ((v5 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v5 = *(a2 + 4);
  }

  *v5 = v4;
  *(a2 + 4) += 4;
  CA::Render::Encoder::encode_port_send_right(a2, *(this + 115), 0);
  v6 = *(this + 116);
  v7 = *(a2 + 4);
  if ((v7 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v7 = *(a2 + 4);
  }

  *v7 = v6;
  v8 = *(a2 + 4);
  v9 = *(a2 + 5);
  v10 = (v8 + 4);
  *(a2 + 4) = v8 + 4;
  v11 = *(this + 112);
  if (v8 + 8 > v9)
  {
    CA::Render::Encoder::grow(a2, 4);
    v10 = *(a2 + 4);
  }

  *v10 = v11;
  *(a2 + 4) += 4;

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void CA::Render::Path::finalize(CA::Render::Path *this)
{
  CA::Render::post_notification(0xAu, this, 0, 1);
  if (*(this + 6))
  {
    v2 = CA::Render::Path::_path_table == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    os_unfair_lock_lock(&CA::Render::Path::_path_lock);
    x_hash_table_remove(CA::Render::Path::_path_table, *(this + 6));
    os_unfair_lock_unlock(&CA::Render::Path::_path_lock);
  }

  (**this)(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

CA::Render::ImageQueue *CA::Render::ImageQueue::decode(CA::Render::Context **this, CA::Render::Decoder *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = CA::Render::Decoder::decode_object(this, 52);
  v4 = CA::Render::Decoder::decode_int32(this);
  v13 = 0;
  v5 = CA::Render::Decoder::decode_port(this, 17, &v13);
  v6 = CA::Render::Decoder::decode_int32(this);
  v7 = CA::Render::Decoder::decode_int32(this);
  v8 = 0;
  if (v3 && !((v4 - 1) >> 16))
  {
    if (*(v3 + 2) < 160 * v4 + 472)
    {
LABEL_4:
      v8 = 0;
      goto LABEL_11;
    }

    v9 = v7;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v10 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x230uLL, 0xDEEC3011uLL);
    if (!v10)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
      }

      goto LABEL_4;
    }

    v8 = v10;
    v11 = CA::Render::ImageQueue::ImageQueue(v10, v3, v4);
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3, v11);
    }

    CA::Render::ImageQueue::set_client_port(v8, v5);
    *(v8 + 116) = v6;
    *(v8 + 112) = v9;
    CA::Render::Context::add_image_queue(this[9], v8);
  }

LABEL_11:
  if (v13)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v5);
  }

  CA::Render::Decoder::decode_sanity_check(this, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-image-queue.cpp", 2127);
  return v8;
}

void CA::Render::Path::~Path(CA::Render::Path *this, const CA::Render::Object *a2)
{
  *this = &unk_1EF1FBE10;
  v3 = *(this + 14);
  if (v3)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    CGPathRelease(v4);
  }

  --dword_1ED4EAAD0;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

{
  CA::Render::Path::~Path(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

void CA::Render::Context::add_image_queue(CA::Render::Context *this, CA::Render::Object *a2)
{
  if (*(a2 + 12) == 25)
  {
    CA::Render::ImageQueue::set_visible(a2, *(this + 88) != 0);
    os_unfair_lock_lock(&CA::Render::Context::_image_queues_lock);
    *(a2 + 64) = this;
    v5 = *(this + 46);
    v4 = *(this + 47);
    if (v5 >= v4)
    {
      v7 = *(this + 45);
      v8 = v5 - v7;
      v9 = (v5 - v7) >> 3;
      v10 = v9 + 1;
      if ((v9 + 1) >> 61)
      {
        std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
      }

      v11 = v4 - v7;
      if (v11 >> 2 > v10)
      {
        v10 = v11 >> 2;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        if (!(v12 >> 61))
        {
          operator new();
        }

        std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
      }

      v13 = (v5 - v7) >> 3;
      v14 = (8 * v9);
      v15 = (8 * v9 - 8 * v13);
      *v14 = a2;
      v6 = v14 + 1;
      memcpy(v15, v7, v8);
      *(this + 45) = v15;
      *(this + 46) = v6;
      *(this + 47) = 0;
      if (v7)
      {
        operator delete(v7);
      }
    }

    else
    {
      *v5 = a2;
      v6 = v5 + 8;
    }

    *(this + 46) = v6;

    os_unfair_lock_unlock(&CA::Render::Context::_image_queues_lock);
  }
}

void CA::Render::Context::set_slot(CA::Render::Context *this, unsigned int a2, atomic_uint *a3)
{
  if (a2 && CA::Render::Context::_slot_table)
  {
    v5 = *(this + 21);
    v6 = *(this + 22);
    if (v5 != v6)
    {
      while (*v5 != a2)
      {
        v5 += 8;
        if (v5 == v6)
        {
          return;
        }
      }
    }

    if (v5 != v6 && (*(v5 + 4) & 1) == 0)
    {
      os_unfair_lock_lock(&CA::Render::Context::_context_lock);
      v7 = a2;
      v8 = x_hash_table_lookup(CA::Render::Context::_slot_table, a2, 0);
      v9 = CA::Render::Context::_slot_table;
      if (a3)
      {
        v10 = a3 + 2;
        if (!atomic_fetch_add(a3 + 2, 1u))
        {
          a3 = 0;
          atomic_fetch_add(v10, 0xFFFFFFFF);
        }
      }

      hash_table_modify(v9, v7, a3, 0);
      os_unfair_lock_unlock(&CA::Render::Context::_context_lock);
      if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
      {
        v11 = *(*v8 + 16);

        v11(v8);
      }
    }
  }
}

_DWORD *CA::Render::SecureIndicatorLayer::copy@<X0>(CA::Render::SecureIndicatorLayer *this@<X0>, void *a2@<X8>)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x20uLL, 0xDEEC3011uLL);
  if (result)
  {
    result[2] = 1;
    result[3] = 50;
    ++dword_1ED4EAB00;
    *result = &unk_1EF202900;
    result[4] = *(this + 4);
    result[5] = *(this + 5);
    *(result + 12) = *(this + 12);
  }

  *a2 = result;
  return result;
}

uint64_t CA::Render::Layer::set_corner_radii(uint64_t this, CA::Render::Vector *a2)
{
  v2 = a2;
  if (a2 || *(this + 136))
  {
    v3 = CA::Render::Layer::ensure_ext(this);
    this = v3[9];
    if (this != v2)
    {
      if (this && atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
      {
        this = (*(*this + 16))(this);
      }

      if (v2)
      {
        v4 = (v2 + 8);
        if (!atomic_fetch_add(v2 + 2, 1u))
        {
          v2 = 0;
          atomic_fetch_add(v4, 0xFFFFFFFF);
        }
      }

      v3[9] = v2;
    }
  }

  return this;
}

char *CA::Render::copy_render_array(CA::Render *this, const __CFArray *a2, CGColorSpace *a3)
{
  v25 = a2;
  v28 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(this);
  if (!Count)
  {

    return CA::Render::Vector::new_vector(0, 0, v5);
  }

  v6 = Count;
  if (CA::Render::initialize_types(void)::once[0] != -1)
  {
    dispatch_once(CA::Render::initialize_types(void)::once, &__block_literal_global_9_6242);
  }

  ValueAtIndex = CFArrayGetValueAtIndex(this, 0);
  v8 = CFGetTypeID(ValueAtIndex);
  v9 = v8;
  v10 = CA::Render::number_type;
  if (v8 == CA::Render::number_type)
  {
    v25 = 0;
    v11 = 1;
  }

  else
  {
    if (v8 != CA::Render::color_type)
    {

      return CA::Render::copy_render_object(this, 0);
    }

    v11 = 5;
  }

  v24 = 8 * v6 * v11;
  if (v24 > 0x1000)
  {
    v14 = malloc_type_malloc(8 * v6 * v11, 0xC8ED5BE2uLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v14, v13);
  }

  v16 = 0;
  v17 = 0;
  v23 = v14;
  while (1)
  {
    if (v17)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(this, v17);
    }

    if (v9 == v10)
    {
      if (ValueAtIndex)
      {
        *&valuePtr = 0;
        CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr);
        v18 = valuePtr;
      }

      else
      {
        v18 = 0;
      }

      *v14 = v18;
      goto LABEL_24;
    }

    if (CGColorGetPattern(ValueAtIndex))
    {
      break;
    }

    valuePtr = 0u;
    v27 = 0u;
    CA_CGColorGetRGBComponents(ValueAtIndex, v25, &valuePtr);
    CGColorGetContentHeadroom();
    *v14 = valuePtr;
    *(v14 + 1) = v27;
    *(v14 + 4) = v19;
LABEL_24:
    ++v17;
    v16 = (v16 + v11);
    v14 += v11;
    if (v6 == v17)
    {
      v20 = v23;
      v21 = CA::Render::Vector::new_vector(v16, v23, v15);
      if (v24 > 0x1000)
      {
        free(v20);
      }

      return v21;
    }
  }

  if (v24 > 0x1000)
  {
    free(v23);
  }

  return 0;
}

char *CA::Render::PortalLayer::copy@<X0>(CA::Render::PortalLayer *this@<X0>, void *a2@<X8>)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x40uLL, 0xDEEC3011uLL);
  if (result)
  {
    *(result + 2) = 1;
    *(result + 3) = 42;
    ++dword_1ED4EAAE0;
    *result = &unk_1EF203EE8;
    *(result + 24) = *(this + 24);
    *(result + 10) = *(this + 10);
    result[44] = *(this + 44);
    v5 = *(this + 6);
    if (v5)
    {
      v6 = (v5 + 8);
      if (!atomic_fetch_add((v5 + 8), 1u))
      {
        v5 = 0;
        atomic_fetch_add(v6, 0xFFFFFFFF);
      }
    }

    *(result + 6) = v5;
    v7 = *(this + 7);
    if (v7)
    {
      v8 = (v7 + 8);
      if (!atomic_fetch_add((v7 + 8), 1u))
      {
        v7 = 0;
        atomic_fetch_add(v8, 0xFFFFFFFF);
      }
    }

    *(result + 7) = v7;
    *(result + 3) |= *(this + 3) & 0xFFFFFF00;
  }

  *a2 = result;
  return result;
}

void layer_private_present(_CAMetalLayerPrivate *a1, CAMetalDrawable *a2, double a3, double a4, unsigned int a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = [(CAMetalDrawable *)a2 priv];
  if (!v9 || (v10 = v9, (*(v9 + 129) & 0x100) != 0))
  {
    if (warn_multiple_present(void)::once != -1)
    {

      dispatch_once(&warn_multiple_present(void)::once, &__block_literal_global_514);
    }
  }

  else
  {
    if (MEMORY[0x1EEE88948])
    {
      [(CAMetalDrawable *)a2 layer];
      [(CAMetalDrawable *)a2 drawableID];
      FPDrawableLifetimeMarkClientDidPresent();
    }

    [(CAMetalDrawable *)a2 targetSamplingTimestamp];
    if (v11 == 0.0)
    {
      v12 = a3;
    }

    else
    {
      v12 = v11;
      a5 &= ~2u;
      v13 = *(*(a1 + 2) + 48);
      if (v13)
      {
        v14 = *(v13 + 24);
        *(v14 + 312) = 0;
        *(v14 + 320) = v11;
        __dmb(0xBu);
      }
    }

    *(v10 + 129) |= 0x100u;
    var13 = v10->var13;
    if (var13)
    {
      var14 = v10->var14;
      v17 = v10->var13;
    }

    else
    {
      v17 = [(CAMetalDrawable *)a2 sharedEvent];
      if (v17)
      {
        var14 = [(CAMetalDrawable *)a2 drawableID];
      }

      else
      {
        var14 = 0;
      }
    }

    if (((*(a1 + 296) & 0x20) == 0 || *(a1 + 4)) && (v18 = *(*(a1 + 2) + 48)) != 0 && (v19 = atomic_load((*(v18 + 24) + 8)), v17) && (v19 & 0x8000000000000000) != 0)
    {
      if (!var13 && (v20 = IOSurfaceSignalEvent()) != 0)
      {
        v22 = v20;
        if (x_log_get_api::once[0] != -1)
        {
          dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
        }

        v23 = x_log_get_api::log;
        if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v27 = v22;
          _os_log_error_impl(&dword_183AA6000, v23, OS_LOG_TYPE_ERROR, "IOSurfaceSignalEvent err=0x%x", buf, 8u);
        }

        layer_private_present_impl(a1, a2, v12, a5);
      }

      else
      {
        v21 = *(a1 + 20);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = ___ZL21layer_private_presentP20_CAMetalLayerPrivateP15CAMetalDrawableddj_block_invoke;
        v24[3] = &unk_1E6DF5F00;
        v24[4] = a2;
        v24[5] = a1;
        *&v24[6] = v12;
        v25 = a5;
        [(IOSurfaceSharedEvent *)v17 notifyListener:v21 atValue:var14 block:v24];
      }
    }

    else
    {

      layer_private_present_impl(a1, a2, v12, a5);
    }
  }
}

uint64_t class_substitutions(void)
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  return [v0 initWithObjectsAndKeys:{v1, @"LKState", v2, @"LKStateAddAnimation", v3, @"LKStateAddElement", v4, @"LKStateElement", v5, @"LKStateRemoveAnimation", v6, @"LKStateRemoveElement", v7, @"LKStateSetValue", v8, @"LKStateSetProperty", v9, @"LKStateTransition", objc_opt_class(), @"LKStateTransitionElement", 0}];
}

void *CA::Render::SDFElementLayer::encode(CA::Render::SDFElementLayer *this, CA::Render::Encoder *a2)
{
  CA::Render::Object::encode(this, a2);
  v4 = *(this + 16);
  v5 = *(a2 + 4);
  if ((v5 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 1);
    v5 = *(a2 + 4);
  }

  *(a2 + 4) = v5 + 1;
  *v5 = v4;
  v6 = *(this + 17);
  v7 = *(a2 + 4);
  if ((v7 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 1);
    v7 = *(a2 + 4);
  }

  *(a2 + 4) = v7 + 1;
  *v7 = v6;
  v8 = *(this + 5);
  v9 = *(a2 + 4);
  if ((v9 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v9 = *(a2 + 4);
  }

  *v9 = v8;
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v12 = (v10 + 4);
  *(a2 + 4) = v10 + 4;
  v13 = *(this + 6);
  if (v10 + 8 > v11)
  {
    CA::Render::Encoder::grow(a2, 4);
    v12 = *(a2 + 4);
  }

  *v12 = v13;
  v14 = *(a2 + 4);
  v15 = *(a2 + 5);
  v16 = (v14 + 4);
  *(a2 + 4) = v14 + 4;
  v17 = *(this + 7);
  if (v14 + 8 > v15)
  {
    CA::Render::Encoder::grow(a2, 4);
    v16 = *(a2 + 4);
  }

  *v16 = v17;
  v18 = *(a2 + 4);
  v19 = *(a2 + 5);
  v20 = (v18 + 4);
  *(a2 + 4) = v18 + 4;
  v21 = *(this + 32);
  if (v18 + 5 > v19)
  {
    CA::Render::Encoder::grow(a2, 1);
    v20 = *(a2 + 4);
  }

  *(a2 + 4) = v20 + 1;
  *v20 = v21;

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void layer_private_present_impl(_CAMetalLayerPrivate *a1, CAMetalDrawable *a2, double a3, unsigned int a4)
{
  v91 = *MEMORY[0x1E69E9840];
  v8 = [(CAMetalDrawable *)a2 priv];
  os_unfair_lock_lock(a1 + 2);
  if (*(a1 + 9))
  {
    if (a3 <= 0.0005)
    {
      v12 = *(a1 + 74);
      v11 = 0.0;
      v9 = 2;
      if ((v12 & 0x20) != 0)
      {
        v14 = *(a1 + 4);
        v30 = v14 == 0;
        v15 = v14 != 0;
        if (v30)
        {
          v9 = 4;
        }

        else
        {
          v9 = 2;
        }

        v10 = v15 & a4;
      }

      else
      {
        v10 = a4;
      }
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v11 = a3 + -0.0005;
      v12 = *(a1 + 74);
    }

    v16 = (v12 >> 2) & 1 | v9;
    if (((v12 >> 2) & 1) == 0 && !CA::Render::fourcc_has_alpha(v8->var3))
    {
      v16 = v9 + 1;
    }

    v77 = v10;
    if ((v10 & 1) != 0 || [(CAMetalDrawable *)a2 needsLowLatency])
    {
      v16 |= 0x20u;
    }

    v81 = *(a1 + 74);
    v17 = *(v8 + 129);
    PixelFormat = IOSurfaceGetPixelFormat(v8->var10);
    v19 = PixelFormat;
    v20 = CA::Render::fourcc_compressed_of_type(PixelFormat, 0, 0);
    v84 = v8;
    var18 = v8->var18;
    switch(var18)
    {
      case 3:
        v22 = 7u;
        break;
      case 2:
        if (CADeviceSupportsUniversalCompression::once != -1)
        {
          dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
        }

        v22 = 3;
        if (((v20 != v19) & CADeviceSupportsUniversalCompression::universal) != 0)
        {
          v22 = 0;
        }

        break;
      case 1:
        v22 = 4u;
        break;
      default:
        v22 = 0;
        break;
    }

    v23 = image_queue_rotation_from_logical_rotation(CAMetalLayerRotation,BOOL)::invert_table[v22];
    if (CADeviceSupportsUniversalCompression::once != -1)
    {
      dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
    }

    if (((v20 != v19) & ((var18 & 0xFFFFFFFD) == 1) & CADeviceSupportsUniversalCompression::universal) != 0)
    {
      v24 = v23 | 8;
    }

    else
    {
      v24 = v23;
    }

    os_unfair_lock_lock(a1 + 46);
    v25 = a2;
    if (([*(a1 + 24) containsObject:a2] & 1) == 0)
    {
      [*(a1 + 24) addObject:a2];
    }

    v26 = a4 & 2;
    v27 = (a4 << 19) & 0x800000 | ((a4 & 2) >> 1 << 31) | (((a4 >> 3) & 1) << 26) & 0xEFFFFFFF | (((a4 >> 5) & 1) << 22) & 0xEFFFFFFF | ~(v81 << 11) & 0x2000000 | v16 & 0xEFFFFFFF | ((((v17 & 0x80) >> 7) & 1) << 28);
    os_unfair_lock_unlock(a1 + 46);
    v28 = v84;
    if (!*(a1 + 4))
    {
      v29 = [+[CADisplay mainDisplay](CADisplay "mainDisplay")];
      v30 = v11 <= 0.00933333333 || v26 == 0;
      v31 = v30 ? v29 : 0;
      if (v31 == 1)
      {
        v27 |= ~(*(a1 + 74) << 18) & 0x8000000;
      }
    }

    [(CAMetalDrawable *)a2 dirtyRect];
    v80 = v32;
    v82 = v33;
    v78 = v35;
    v79 = v34;
    if (CGRectEqualToRect(*(&v32 - 1), *MEMORY[0x1E695F040]))
    {
      v37 = xmmword_183E21120;
    }

    else
    {
      *v38.i64 = v79;
      v38.i64[1] = v80;
      v36.f64[0] = 0.0;
      v39.i64[0] = *&v78.f64[0];
      v39.i64[1] = v82;
      v40 = vdupq_lane_s64(vcgtq_f64(v36, v78).i64[0], 0);
      v41.i64[1] = v82;
      *v41.i64 = -v78.f64[0];
      v42 = vbslq_s8(v40, v41, v39);
      v41.i64[1] = v80;
      *v41.i64 = v78.f64[0] + v79;
      v43 = vbslq_s8(v40, v41, v38);
      if (*&v82 < 0.0)
      {
        v43.f64[1] = *&v82 + *&v80;
        v42.f64[1] = -*&v82;
      }

      v44 = vceqzq_f64(v42);
      v37 = 0uLL;
      if ((vorrq_s8(vdupq_laneq_s64(v44, 1), v44).u64[0] & 0x8000000000000000) == 0)
      {
        v45 = vceqq_f64(v42, v42);
        if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v45), 1), v45).u64[0] & 0x8000000000000000) == 0)
        {
          v46 = vminnmq_f64(vaddq_f64(v43, v42), vdupq_n_s64(0x41C0000000000000uLL));
          v47 = vcvtmq_s64_f64(vmaxnmq_f64(v43, vdupq_n_s64(0xC1BFFFFFFF000000)));
          v37 = vuzp1q_s32(v47, vsubq_s64(vcvtpq_s64_f64(v46), v47));
        }
      }
    }

    v83 = v37;
    v48 = *(a1 + 2);
    v49 = *(v84 + 24);
    v50 = *(a1 + 5);
    v51 = *(v84 + 48);
    [(CAMetalDrawable *)a2 preferredLatency];
    *buf = v83;
    if (!CAImageQueueInsertImage_(v48, 3, v49, v27, v24, buf, release_sample, v84, v11, v50, v51, v52, v53))
    {
      *(v84 + 129) &= ~0x40u;
      os_unfair_lock_lock(a1 + 46);
      [(CAMetalDrawable *)a2 didScheduledPresent];
      [(CAMetalDrawable *)a2 setPresentScheduledInsertSeedValid:1];
      os_unfair_lock_unlock(a1 + 46);
      v65 = pthread_setspecific(collect_slot, a1);
      release_sample(v65, v66, v84);
      pthread_setspecific(collect_slot, 0);
      os_unfair_lock_unlock(a1 + 2);
      goto LABEL_97;
    }

    v54 = *(*(*(*(a1 + 2) + 48) + 24) + 36);
    [(CAMetalDrawable *)a2 setInsertSeed:v54];
    [(CAMetalDrawable *)a2 setStatus:1];
    v55 = mach_absolute_time();
    v56 = *(a1 + 29);
    if (v55 <= CAHostTimeWithTime(1.0) + v56)
    {
      os_unfair_lock_lock(a1 + 52);
      [*(a1 + 27) addObject:a2];
      os_unfair_lock_unlock(a1 + 52);
    }

    else
    {
      v57 = mach_absolute_time();
      v58 = CATimeWithHostTime(v57);
      os_unfair_lock_lock(a1 + 52);
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v59 = *(a1 + 27);
      v60 = [v59 countByEnumeratingWithState:&v87 objects:v86 count:16];
      if (v60)
      {
        v61 = *v88;
        do
        {
          for (i = 0; i != v60; ++i)
          {
            if (*v88 != v61)
            {
              objc_enumerationMutation(v59);
            }

            v63 = *(*(&v87 + 1) + 8 * i);
            [(CAMetalDrawable *)v63 setStatus:3];
            [(CAMetalDrawable *)v63 didPresentAtTime:0.0];
            mark_drawable_finish(v63, a1, 0, v58);
          }

          v60 = [v59 countByEnumeratingWithState:&v87 objects:v86 count:16];
        }

        while (v60);
      }

      v64 = [*(a1 + 27) copy];
      [*(a1 + 27) removeAllObjects];
      os_unfair_lock_unlock(a1 + 52);
      mark_drawable_finish(v25, a1, 0, v58);
      v28 = v84;
    }

    if ((*(a1 + 296) & 8) != 0 && (v67 = *(*(a1 + 2) + 48)) != 0)
    {
      v68 = *(*(v67 + 24) + 32);
      v69 = *(v28 + 129);
      if (v68)
      {
        v70 = v54 >= 3;
      }

      else
      {
        v70 = 0;
      }

      if (v70 && (v69 & 0x40) == 0 && *(v28 + 80) == *(a1 + 9))
      {
        os_unfair_lock_lock(a1 + 46);
        [(CAMetalDrawable *)v25 setPresentScheduledInsertSeed:v54];
        v71 = v77;
        [(CAMetalDrawable *)v25 setPresentScheduledInsertSeedValid:1];
LABEL_79:
        os_unfair_lock_unlock(a1 + 46);
        if ((v27 & 2) != 0)
        {
          v72 = 0;
          atomic_fetch_and(a1 + 1, 0xFFFFFFFD);
        }

        else if ((v27 & 4) != 0)
        {
          atomic_fetch_or(a1 + 1, 2u);
          v72 = 1;
        }

        else
        {
          v72 = 0;
        }

        v73 = *(a1 + 74);
        os_unfair_lock_unlock(a1 + 2);
        if ((v73 & 0x10) == 0)
        {
          if (!v72)
          {
            goto LABEL_97;
          }

LABEL_88:
          v74 = +[CATransaction lock];
          if (v71)
          {
            v74 = [CATransaction setLowLatency:1];
          }

          if (*(a1 + 5) != 0.0)
          {
            v74 = [CATransaction setInputTime:?];
          }

          v75 = *(a1 + 3);
          if (v75)
          {
            v76 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
            if (!v76)
            {
              v76 = CA::Transaction::create(v74);
            }

            CA::Layer::set_commit_needed(*(v75 + 16), v76, 0);
          }

          +[CATransaction unlock];
          goto LABEL_97;
        }

        layer_collectable_signal(*(a1 + 2), a1);
        if (v72)
        {
          goto LABEL_88;
        }

LABEL_97:
        *(a1 + 5) = 0;
        [(CAMetalDrawable *)v25 releasePrivateReferences:a1];
        return;
      }
    }

    else
    {
      v69 = *(v28 + 129);
    }

    *(v28 + 129) = v69 & 0xFFBF;
    os_unfair_lock_lock(a1 + 46);
    [(CAMetalDrawable *)v25 didScheduledPresent];
    v71 = v77;
    [(CAMetalDrawable *)v25 setPresentScheduledInsertSeedValid:1];
    goto LABEL_79;
  }

  if (x_log_get_api::once[0] != -1)
  {
    dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
  }

  v13 = x_log_get_api::log;
  if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_183AA6000, v13, OS_LOG_TYPE_ERROR, "Cannot present CAMetalDrawable because device is nil.", buf, 2u);
  }

  os_unfair_lock_unlock(a1 + 2);
}

void sub_183BC3728(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 46);
  os_unfair_lock_unlock(v1 + 2);
  _Unwind_Resume(a1);
}

void *CAObject_initWithCoder(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [a1 init];
  v3 = v2;
  if (v2)
  {
    [v2 CA_initialize_for_decoding];
    v4 = [a2 decodeObjectOfClasses:objc_msgSend(MEMORY[0x1E696AB10] forKey:{"CA_supportedClasses"), @"__CACodingContents"}];
    if (v4)
    {
      v5 = v4;
      v19 = [v4 count];
      if (v19)
      {
        v7 = 0;
        *&v6 = 138412546;
        v18 = v6;
        do
        {
          v8 = [v5 objectAtIndex:v7];
          v9 = [a2 CA_decodeObjectForKey:v8];
          if ([(__CFString *)v8 isEqualToString:@"sublayers"])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = 0u;
              v29 = 0u;
              v26 = 0u;
              v27 = 0u;
              v10 = [v9 countByEnumeratingWithState:&v26 objects:v25 count:16];
              if (v10)
              {
                v11 = *v27;
                do
                {
                  for (i = 0; i != v10; ++i)
                  {
                    if (*v27 != v11)
                    {
                      objc_enumerationMutation(v9);
                    }

                    v13 = *(*(&v26 + 1) + 8 * i);
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      [MEMORY[0x1E695DF30] raise:@"CALayerInvalid" format:{@"sublayers array %@ contains non-layer %@", v9, v13, v18}];
                    }
                  }

                  v10 = [v9 countByEnumeratingWithState:&v26 objects:v25 count:16];
                }

                while (v10);
              }
            }
          }

          if ([v3 CA_validateValue:v9 forKey:v8])
          {
            CAObject_setValueForKey(v3, 0, v9, v8);
          }

          else
          {
            if (x_log_get_api::once[0] != -1)
            {
              dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
            }

            v14 = x_log_get_api::log;
            if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
            {
              v15 = [objc_msgSend(v9 "debugDescription")];
              v16 = [-[__CFString debugDescription](v8 "debugDescription")];
              *buf = 136315394;
              v22 = v15;
              v23 = 2080;
              v24 = v16;
              _os_log_error_impl(&dword_183AA6000, v14, OS_LOG_TYPE_ERROR, "Rejecting value:\n %s\nFor key: %s", buf, 0x16u);
            }
          }

          ++v7;
        }

        while (v7 != v19);
      }
    }
  }

  return v3;
}

BOOL CAImageQueueInsertImage_(uint64_t a1, int a2, uint64_t a3, unsigned int a4, char a5, _OWORD *a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 48))
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 16));
  v25 = *(*(a1 + 48) + 24);
  v26 = *(a1 + 40);
  if ((a4 & 0x84000000) == 0x80000000)
  {
    v27 = 0;
    if (v26)
    {
      v28 = (v25 + 540);
      v29 = *(a1 + 40);
      do
      {
        v30 = *v28;
        v28 += 40;
        if (!v30)
        {
          ++v27;
        }

        --v29;
      }

      while (v29);
    }

    if (v27 == v26)
    {
      a4 &= 0x7BFFFFFFu;
      a9 = 0.0;
    }
  }

  if (!v26)
  {
LABEL_16:
    v34 = 0;
    LODWORD(v35) = 0;
    goto LABEL_17;
  }

  v59 = a6;
  v31 = 0;
  v32 = 0;
  v33 = v25 + 472;
  v34 = 1;
  while (*(v33 + 68))
  {
LABEL_15:
    v34 = ++v31 < v26;
    v33 += 160;
    if (v26 == v31)
    {
      goto LABEL_16;
    }
  }

  if (v32 < *(v25 + 95))
  {
    ++v32;
    goto LABEL_15;
  }

  *(*(a1 + 184) + 8 * v31) = a7;
  *(*(a1 + 192) + 8 * v31) = a8;
  do
  {
    v43 = *(v25 + 36);
    v44 = v43;
    atomic_compare_exchange_strong((v25 + 36), &v44, v43 + 1);
  }

  while (v44 != v43);
  *(v33 + 100) = v43 + 1;
  *(v33 + 56) = 0;
  *(v33 + 60) = 0;
  *(v33 + 64) = *(a1 + 24);
  *(v33 + 72) = a4;
  *(v33 + 120) = a5;
  *(v33 + 8) = a3;
  *v33 = a9;
  *(v33 + 84) = 0;
  *(v33 + 121) = 0;
  *(v33 + 48) = 0;
  *(v33 + 16) = 0u;
  *(v33 + 32) = 0u;
  *(v33 + 123) = (a4 & 0x10000000) != 0;
  *(v33 + 128) = a11;
  *(v33 + 136) = a12;
  *(v33 + 144) = a13;
  *(v33 + 92) = 0;
  *(v33 + 152) = 0;
  if (a2 == 2 || a2 == 4)
  {
    v35 = IOSurfaceLookup(a3);
    if (v35)
    {
LABEL_55:
      v55 = atomic_load((v25 + 8));
      if ((v55 & 0x400000000000000) == 0)
      {
        IOSurfaceIncrementUseCount(v35);
      }

      *(*(a1 + 64) + 8 * v31) = v35;
      LODWORD(v35) = IOSurfaceGetID(v35);
      *(v33 + 56) = v35;
    }
  }

  else if (a2 == 3 && (v45 = x_hash_table_lookup(*(a1 + 200), a3, 0)) != 0 && (v46 = *(v45 + 24), *(v46 + 12) == 57))
  {
    v35 = *(v46 + 128);
    if (v35)
    {
      CFRetain(*(v46 + 128));
      goto LABEL_55;
    }
  }

  else
  {
    LODWORD(v35) = 0;
  }

  if ((a4 & 6) != 0)
  {
    ++*(v33 + 64);
  }

  v56 = *(a1 + 32);
  v57 = *(a1 + 36);
  *(v33 + 76) = v56;
  *(v33 + 80) = v57;
  if ((a5 & 4) != 0)
  {
    *(v33 + 76) = v57;
    *(v33 + 80) = v56;
  }

  __dmb(0xBu);
  *(v33 + 68) = a2;
  *(v33 + 104) = *v59;
  if ((a4 & 0x80000000) != 0)
  {
    CAImageQueueSetFlagsInternal(a1, 0x1000000000000000, 0x1000000000000000);
  }

  if ((a4 & 2) != 0)
  {
    v58 = *(a1 + 24) + 1;
    *(a1 + 24) = v58;
    *(v25 + 16) = v58;
  }

LABEL_17:
  os_unfair_lock_unlock((a1 + 16));
  v36 = mach_absolute_time();
  v37 = CATimeWithHostTime(v36);
  v38 = (*(a1 + 20) | a4 & 0x80) != 0;
  if ((a4 & 0x20) != 0)
  {
    v39 = atomic_load((v25 + 8));
    if ((v39 & 0x20000) != 0 && v37 <= *(v25 + 328))
    {
      v38 = 1;
    }
  }

  if (BYTE11(xmmword_1ED4E980C) == 1)
  {
    kdebug_trace();
  }

  if (!(!v34 | ((a4 & 4) >> 2) & 1))
  {
    v40 = atomic_load((v25 + 8));
    if ((v40 & 0x200000000000001) != 1 && !v38)
    {
      if ((a4 & 0x20) != 0)
      {
        v42 = 1;
      }

      else
      {
        v41 = atomic_load((v25 + 8));
        v42 = (v41 >> 52) & 1 & (a4 >> 22);
      }

      v47 = atomic_load((v25 + 8));
      v48 = 0.0;
      if ((v47 & 0x20000000000000) != 0)
      {
        v48 = a9;
      }

      CAImageQueuePing_(a1, v42, (a4 >> 23) & 1, v48, a10);
    }
  }

  if ((a4 & 0x20) != 0 && *(a1 + 20) == 1)
  {
    if (*(a1 + 80))
    {
      v49 = xpc_dictionary_create(0, 0, 0);
      if (v49)
      {
        v50 = v49;
        xpc_dictionary_set_uint64(v49, "command", 5uLL);
        (*(a1 + 80))(a1, v50, *(a1 + 88));
        xpc_release(v50);
      }
    }
  }

  if (BYTE11(xmmword_1ED4E980C) == 1)
  {
    kdebug_trace();
  }

  if (x_log_get_image_queue(void)::once != -1)
  {
    dispatch_once(&x_log_get_image_queue(void)::once, &__block_literal_global_15202);
  }

  v51 = *(v25 + 88);
  if (v51)
  {
    v52 = x_log_get_image_queue(void)::log;
    if (os_signpost_enabled(x_log_get_image_queue(void)::log))
    {
      v53 = *(v25 + 16);
      *buf = 67240960;
      v62 = v35;
      v63 = 2050;
      v64 = a9;
      v65 = 1026;
      v66 = v53;
      v67 = 1026;
      v68 = a4;
      _os_signpost_emit_with_name_impl(&dword_183AA6000, v52, OS_SIGNPOST_EVENT, v51, "ImageQueueInsert", "ID is queue ID. surfaceID=%{public, name=surfaceID}#x time=%{public, name=time}f sampleGeneration=%{public, name=sampleGeneration}u flags=%{public, name=flags}#x", buf, 0x1Eu);
    }
  }

  return v34;
}

void *CA::Render::SDFLayer::encode(CA::Render::SDFLayer *this, CA::Render::Encoder *a2)
{
  CA::Render::Object::encode(this, a2);
  CA::Render::Encoder::encode_data(a2, this + 24, 0x70uLL);
  v4 = *(this + 136);
  v5 = *(a2 + 4);
  if ((v5 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 1);
    v5 = *(a2 + 4);
  }

  *(a2 + 4) = v5 + 1;
  *v5 = v4;
  v6 = *(this + 35);
  v7 = *(a2 + 4);
  if ((v7 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v7 = *(a2 + 4);
  }

  *v7 = v6;
  v8 = *(a2 + 4);
  v9 = *(a2 + 5);
  v10 = (v8 + 4);
  *(a2 + 4) = v8 + 4;
  v11 = *(this + 36);
  if (v8 + 8 > v9)
  {
    CA::Render::Encoder::grow(a2, 4);
    v10 = *(a2 + 4);
  }

  *v10 = v11;
  v12 = *(a2 + 4);
  v13 = *(a2 + 5);
  v14 = (v12 + 4);
  *(a2 + 4) = v12 + 4;
  v15 = *(this + 37);
  if (v12 + 8 > v13)
  {
    CA::Render::Encoder::grow(a2, 4);
    v14 = *(a2 + 4);
  }

  *v14 = v15;
  v16 = *(a2 + 4);
  v17 = *(a2 + 5);
  v18 = (v16 + 4);
  *(a2 + 4) = v16 + 4;
  v19 = *(this + 152);
  if (v16 + 5 > v17)
  {
    CA::Render::Encoder::grow(a2, 1);
    v18 = *(a2 + 4);
  }

  *(a2 + 4) = v18 + 1;
  *v18 = v19;
  v20 = *(this + 2);
  v21 = *(a2 + 4);
  if ((v21 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 8);
    v21 = *(a2 + 4);
  }

  *v21 = v20;
  *(a2 + 4) += 8;
  if (*(this + 136) == 3)
  {
    (*(**(this + 3) + 32))(*(this + 3), a2);
  }

  return CA::Render::Encoder::encode_sanity_check(a2);
}

CGColorSpace *CA::Render::Context::set_colorspace(CA::Render::Context *this, CGColorSpace *a2)
{
  result = *(this + 60);
  if (result != a2)
  {
    CGColorSpaceRelease(result);
    result = CGColorSpaceRetain(a2);
    *(this + 60) = result;
  }

  return result;
}

CA::OGL::Context *CA::OGL::render_subclass(CA::OGL::Renderer &,CA::OGL::Layer const*)::visitor::visit_subclass(CA::OGL::Context *result, uint64_t a2, double *a3, float64x2_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if ((byte_1ED4E985B & 1) == 0 && *(a2 + 16) == 3)
  {
    v4 = *(result + 2);
    v5 = **(result + 1);
    v6 = *(v5 + 82);
    v7 = *(v6 + 24);
    if ((*(v7 + 144) & 0x10) != 0)
    {
      v8 = vaddvq_f64(vmulq_f64(*v7, *v7));
      a4 = vmulq_f64(*(v7 + 32), *(v7 + 32));
      v9 = vaddvq_f64(a4);
      v10 = *(v7 + 120);
      a4.f64[0] = 1.0;
      if (v10 != 1.0)
      {
        v11 = 1.0 / (v10 * v10);
        v8 = v11 * v8;
        v9 = v11 * v9;
      }

      v12 = v9 == 1.0 && v8 == 1.0;
      v13 = (sqrt(v9) + sqrt(v8)) * 0.5;
      if (!v12)
      {
        a4.f64[0] = v13;
      }
    }

    else
    {
      a4.f64[0] = *(v7 + 128);
    }

    v14 = *(v5 + 75);
    a4.f64[0] = 1.0 / a4.f64[0];
    v39 = a4;
    if (v14)
    {
      v15 = (*(*v14 + 16))(v14);
      if (v15)
      {
        v16 = v39;
        if ((*(v15 + 640) & 4) != 0)
        {
          v16.f64[0] = 0.0;
        }

        v39 = v16;
      }
    }

    v17 = *(v4 + 24);
    v18 = *(v17 + 136);
    v19 = 0.0;
    if (v18)
    {
      v19 = *(v18 + 232);
    }

    v20 = *(v17 + 72);
    v21 = *(v17 + 88);
    v48 = v20;
    v49 = v21;
    if (v21.f64[0] <= v21.f64[1])
    {
      v22 = v21.f64[1];
    }

    else
    {
      v22 = v21.f64[0];
    }

    if (v22 < 1.79769313e308)
    {
      v23 = v21.f64[0] >= v21.f64[1] ? v21.f64[1] : v21.f64[0];
      if (v23 > 0.0)
      {
        v20 = vaddq_f64(v20, vdupq_lane_s64(*&v39.f64[0], 0));
        v48 = v20;
        v49.f64[0] = v39.f64[0] * -2.0 + v21.f64[0];
        v49.f64[1] = v39.f64[0] * -2.0 + v21.f64[1];
        if (v49.f64[0] <= 0.0 || v39.f64[0] * -2.0 + v21.f64[1] <= 0.0)
        {
          v49 = 0uLL;
          v21 = 0uLL;
        }

        else
        {
          v21 = v49;
        }
      }
    }

    v37 = v21;
    v38 = v20;
    v46 = v20;
    v47 = v21;
    CA::Rect::apply_transform(&v46, *(v6 + 24), a3);
    v24 = vceqzq_f64(v47);
    if ((vorrq_s8(vdupq_laneq_s64(v24, 1), v24).u64[0] & 0x8000000000000000) != 0 || (v25 = vceqq_f64(v47, v47), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v25), 1), v25).u64[0] & 0x8000000000000000) != 0))
    {
      v40 = 0uLL;
    }

    else
    {
      v26 = vcvtmq_s64_f64(vmaxnmq_f64(v46, vdupq_n_s64(0xC1BFFFFFFF000000)));
      v40 = vuzp1q_s32(v26, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v46, v47), vdupq_n_s64(0x41C0000000000000uLL))), v26));
    }

    result = CA::Shape::intersects(*(v6 + 8), &v40);
    if (result)
    {
      v30.i64[1] = *&v39.f64[1];
      v31 = fmax(v19 - v39.f64[0], 0.0);
      *(*(v5 + 2) + 8) = 0x3C00000000000000;
      *(*(v5 + 2) + 497) |= 1u;
      v32 = *(v6 + 24);
      v28.i64[0] = 1.0;
      v30.i64[0] = 1.0;
      v33 = CA::OGL::transform_filter_bits(v32, v27, v28, v30, v29);
      v34.i64[0] = 1.0;
      v36 = CA::OGL::rect_filter_bits(v32, v33, v35, v38, v37, v34, 1.0);
      v40.i64[0] = &v48;
      v40.i64[1] = v32;
      v41 = v36;
      v42 = 15;
      v44 = 0;
      v45 = 0;
      v43 = 0;
      result = CA::OGL::fill_round_rect(v5, &v40, 0xF, *(*(v4 + 24) + 44) & 3, v31, v31);
      *(*(v5 + 2) + 497) &= ~1u;
    }
  }

  return result;
}

uint64_t CA::Render::Context::set_layer_id(uint64_t this, uint64_t a2)
{
  if (*(this + 272) != a2)
  {
    v3 = this;
    v4 = CA::Render::Context::root_layer_handle(this);
    if (v4)
    {
      v7 = *(v4 + 2);
      if (v7)
      {
        v8 = *(v7 + 152);
        if (v8)
        {
          CA::Render::Context::invalidate(v3, v8 + 15, v6);
          *&v8[13] |= 8uLL;
        }
      }
    }

    if (a2)
    {
      v9 = CA::Render::Context::lookup_object(*(v3 + 136), *(v3 + 148), a2, 0, 30, 0);
      if (v9)
      {
        v10 = *(v9 + 152);
        if (v10)
        {
          *(v10 + 104) |= 2uLL;
        }
      }
    }

    this = *(v3 + 280);
    if (this)
    {
      *(this + 12) &= ~0x100u;
      CA::Render::Handle::update_container_state(this, v5);
      this = *(v3 + 280);
      if (this)
      {
        if (atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
        {
          this = (*(*this + 16))(this);
        }

        *(v3 + 280) = 0;
      }
    }

    *(v3 + 272) = a2;
  }

  return this;
}

void CA::OGL::BlurState::downsample_blur_2(float32x2_t *this, float a2, float a3, const float *a4, const float *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = *this;
  if (this[15].i8[0])
  {
    v10 = 16;
  }

  else
  {
    v10 = 32;
  }

  if (CA::OGL::PingPongState::attach_dest(this, 1, v10))
  {
    v11 = this[4].i16[0];
    v12 = v11;
    v13 = &this[1];
    v14 = this + 11;
    v15 = &this[(v11 & 1) + 11];
    if (v12 < 0)
    {
      v15 = this + 1;
    }

    v16 = *v15;
    v17 = *(*v15 + 48);
    v18 = *(*v15 + 52);
    v40[0] = v17;
    v40[1] = v18;
    CA::OGL::Context::bind_surface(*this, v16, 0, 1u, 1, 0.0);
    v19 = 0;
    v20 = *(*(v9 + 16) + 96);
    v38 = 0uLL;
    v39 = 0;
    v21 = -2;
    do
    {
      *(&v38 + v19 * 4) = vmul_f32(*&a4[v19], v20);
      v21 += 2;
      v19 += 2;
    }

    while (v21 < 4);
    v22 = a4[4];
    if (v22 <= a4[5])
    {
      v22 = a4[5];
    }

    CA::OGL::BlurState::process_edges(this, v22 + v22, a2, a3, v40);
    *(*(v9 + 16) + 16) = 31;
    v23 = v9 + 1386;
    if ((*(*v9 + 1072))(v9))
    {
      *(v9 + 160) = v38;
      *(v9 + 176) = v39;
      *(v9 + 144) = 0;
      *(v9 + 112) = v23;
      *(v9 + 120) = xmmword_183E20E50;
      v37 = 0;
      CA::OGL::PingPongState::render_pass(this, v17, v18, 0, &v37, a2, a3, 0.0, 0.0);
      CA::OGL::Context::array_flush(v9);
    }

    else
    {
      *(*(v9 + 16) + 16) = 3;
      *(v9 + 144) = 0;
      *(v9 + 112) = v23;
      *(v9 + 120) = 0;
      *(v9 + 128) = 512;
      v37 = 0x340E340E340E340ELL;
      CA::OGL::PingPongState::render_pass(this, v17, v18, 1, &v37, a2, a3, 0.0, 0.0);
      CA::OGL::Context::array_flush(v9);
      *(*(v9 + 16) + 497) |= 1u;
      *(*(v9 + 16) + 496) = 12;
      *(v9 + 144) = 0;
      *(v9 + 112) = v23;
      *(v9 + 120) = xmmword_183E20E50;
      v24 = a4 + 1;
      v25 = 4u;
      do
      {
        v26 = 12;
        if (!*(v9 + 108))
        {
          v26 = 8;
        }

        if ((*(v9 + 144) + 8) > *(v9 + 152) || (v27 = *(v9 + 128)) != 0 && *(v9 + 120) + v26 > v27)
        {
          *(v9 + 1384) |= 0x20u;
          CA::OGL::Context::array_flush(v9);
          *(v9 + 144) = 0;
          *(v9 + 112) = v23;
          *(v9 + 120) = xmmword_183E20E50;
        }

        __asm { FCVT            H0, S0 }

        v33 = 0x1000100010001 * _S0;
        v37 = v33;
        CA::OGL::PingPongState::render_pass(this, v17, v18, 1, &v37, a2, a3, -*(v24 - 1), -*v24);
        v37 = v33;
        CA::OGL::PingPongState::render_pass(this, v17, v18, 1, &v37, a2, a3, *(v24 - 1), *v24);
        v25 += 4;
        v24 += 2;
      }

      while (v25 != 16);
      CA::OGL::Context::array_flush(v9);
      *(*(v9 + 16) + 497) &= ~1u;
      v14 = this + 11;
      v13 = &this[1];
    }

    v34 = this[4].i16[0];
    v35 = v34;
    v36 = &v14[v34 & 1];
    if (v35 < 0)
    {
      v36 = v13;
    }

    CA::OGL::Context::unbind_surface(*this, *v36, 0);
    *(*(v9 + 16) + 16) = 0;
    CA::OGL::Context::pop_surface(*this);
    ++this[4].i16[0];
  }
}

dispatch_queue_t CA::DispatchGroup::init(CA::DispatchGroup *this)
{
  pthread_mutex_init(&CA::DispatchGroup::_mutex, 0);
  pthread_cond_init(&CA::DispatchGroup::_cond, 0);
  v1 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  result = dispatch_queue_create("CA DispatchGroup", v1);
  CA::DispatchGroup::_queue = result;
  return result;
}

IMP cons_CALayer_kCAValueCopiedPointer(int a1, int a2)
{
  block[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v3 = &__block_descriptor_36_e10_r_v16__0_8l;
    v4 = ___ZL34cons_CALayer_kCAValueCopiedPointerjb_block_invoke;
  }

  else
  {
    v2 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v3 = &__block_descriptor_36_e13_v24__0_8r_v16l;
    v4 = ___ZL34cons_CALayer_kCAValueCopiedPointerjb_block_invoke_2;
  }

  v2[2] = v4;
  v2[3] = v3;
  *(v2 + 8) = a1;
  return imp_implementationWithBlock(v2);
}

uint64_t CARenderServerGetDirtyFrameCountByIndex(mach_port_name_t a1, unsigned int a2)
{
  v2 = CARenderServerCopyDictionaryByIndex(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Value = CFDictionaryGetValue(v2, @"kCADisplayDirtyFrameCount");
  if (Value)
  {
    v5 = CA_CFIntValue(Value);
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v3);
  return v5;
}

id ___ZL34cons_CALayer_kCAValueCopiedPointerjb_block_invoke(uint64_t a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4[0] = 0;
  CA::Layer::getter(*(a2 + 16), v2, 3, v4);
  return v4[0];
}

void layer_private_release(_CAMetalLayerPrivate *a1, void *a2)
{
  if (atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    CA::Render::remove_every_observer(a1, a2);
    os_unfair_lock_lock(a1 + 2);
    if (*(a1 + 2))
    {
      pthread_setspecific(collect_slot, a1);
      CAImageQueueInvalidate(*(a1 + 2));
      pthread_setspecific(collect_slot, 0);
    }

    v3 = *(a1 + 7);
    if (v3)
    {
      do
      {
        delete_drawable_private(*v3, *(a1 + 2));
        --*(a1 + 32);
        v3 = *(v3 + 8);
      }

      while (v3);
      v4 = *(a1 + 7);
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
    }

    *(a1 + 9) = 0;
    *(a1 + 10) = 0;
    v6 = *(a1 + 18);
    if (v6)
    {
      dispatch_release(v6);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      CGColorSpaceRelease(v7);
    }

    *(a1 + 32) = 0;

    *(a1 + 33) = 0;
    v8 = *(a1 + 2);
    if (v8)
    {
      CFRelease(v8);
    }

    dispatch_release(*(a1 + 21));
    dispatch_release(*(a1 + 22));
    os_unfair_lock_unlock(a1 + 2);
    os_unfair_lock_lock(a1 + 52);

    *(a1 + 27) = 0;
    os_unfair_lock_unlock(a1 + 52);
    os_unfair_lock_lock(a1 + 46);

    *(a1 + 24) = 0;
    os_unfair_lock_unlock(a1 + 46);

    free(a1);
  }
}

uint64_t CA::GainMapGenerator::Element::gain(float32x2_t *this, float32_t a2, float a3, double a4, double a5)
{
  v5 = __PAIR64__(LODWORD(a3), LODWORD(a2));
  v6 = *this;
  v7 = this[1];
  v8 = vabd_f32(v5, *this);
  v9 = vsub_f32(v8, v7);
  if (v9.f32[1] >= 0.0)
  {
    goto LABEL_9;
  }

  if (v9.f32[0] >= 0.0)
  {
    LODWORD(v13) = v9.f32[0];
    if (v6.f32[0] <= a2)
    {
      v13 = 0x7FFFFFFFLL;
    }

    else
    {
      v13 = v13;
    }

    goto LABEL_13;
  }

  LODWORD(a5) = this[2].i32[0];
  v10 = vadd_f32(vdup_lane_s32(*&a5, 0), v9);
  v11 = vmaxnm_f32(v10, 0);
  if (v10.f32[0] < v10.f32[1])
  {
    v10.f32[0] = v10.f32[1];
  }

  if (v10.f32[0] > 0.0)
  {
    v10.f32[0] = 0.0;
  }

  v12 = (sqrtf(vaddv_f32(vmul_f32(v11, v11))) - *&a5) + v10.f32[0];
  if (v12 <= 0.0)
  {
    LODWORD(a5) = this[2].i32[1];
    v16 = vmla_n_f32(vdup_lane_s32(*&a5, 0), v9, this[5].f32[0]);
    if (v16.f32[0] <= 0.0)
    {
      v26 = v9.f32[1] + 1.0;
      if ((v9.f32[1] + 1.0) < 0.0)
      {
        v26 = 0.0;
      }

      if (v9.f32[1] < -6.1147)
      {
        v26 = -1.0;
      }

      v13 = (vadd_f32(v6, v7).f32[0] - (*&a5 + a2));
      goto LABEL_37;
    }

    v17 = vmaxnm_f32(v16, 0);
    v18 = sqrtf(vaddv_f32(vmul_f32(v17, v17)));
    if (v18 <= (*&a5 + -6.1147))
    {
      v27 = v8.f32[0] + v8.f32[0];
      v28 = v18 - *&a5;
    }

    else
    {
      if (this[9].i8[4] == 1)
      {
        v19 = fminf(v17.f32[0], v17.f32[1]);
        v20 = fmaxf(v17.f32[0], v17.f32[1]);
        v21 = v19 / v20;
        v22 = v20 == 0.0;
        v23 = 0.0;
        if (!v22)
        {
          v23 = v21;
        }
      }

      else
      {
        v23 = 1.0 - fminf(this[3].f32[0] * fabsf(vsub_f32(vdup_lane_s32(v17, 1), v17).f32[0]), 1.0);
      }

      v29 = (v18 - ((((this[8].f32[0] + ((this[7].f32[1] + ((this[7].f32[0] + ((this[6].f32[1] + ((this[6].f32[0] + (this[5].f32[1] * v23)) * v23)) * v23)) * v23)) * v23)) * (this[8].f32[1] * v23)) + 1.0) * *&a5)) * this[9].f32[0];
      v30 = 8;
      if (vcgt_f32(vdup_lane_s32(v11, 1), v11).u8[0])
      {
        v30 = 7;
      }

      v31 = v29 + ((v12 - v29) * this->f32[v30]);
      if (v31 >= -6.1147)
      {
        if (v31 <= 0.0)
        {
          if ((v31 + 1.0) >= 0.0)
          {
            v26 = v31 + 1.0;
          }

          else
          {
            v26 = 0.0;
          }

          v13 = 1;
        }

        else
        {
          LODWORD(v13) = v31;
          if (v6.f32[0] <= a2)
          {
            v13 = 0x7FFFFFFFLL;
          }

          else
          {
            v13 = v13;
          }

          v26 = 1.0;
        }

        goto LABEL_37;
      }

      v27 = v8.f32[0] + v8.f32[0];
      v28 = v31 - *&a5;
    }

    if (v6.f32[0] <= a2)
    {
      v32 = v28;
    }

    else
    {
      v32 = v27;
    }

    v13 = v32;
    v26 = -1.0;
LABEL_37:
    v14 = LODWORD(v26);
    return v14 | (v13 << 32);
  }

  if (v6.f32[0] >= a2)
  {
    v24.i32[1] = v11.i32[1];
    v24.i32[0] = this[2].i32[0];
    v25 = vmul_f32(v24, v24);
    v13 = (v11.f32[0] - sqrtf(vsub_f32(v25, vdup_lane_s32(v25, 1)).f32[0]));
    goto LABEL_13;
  }

LABEL_9:
  v13 = 0x7FFFFFFFLL;
LABEL_13:
  v14 = 1065353216;
  return v14 | (v13 << 32);
}

uint64_t CADisplayTimerInvalidate(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  v2 = *(a1 + 136);
  if (v2)
  {
    CFRunLoopSourceInvalidate(v2);
    CFRelease(*(a1 + 136));
  }

  *(a1 + 136) = 0;
  v3 = *(a1 + 128);
  if (v3)
  {
    CFMachPortInvalidate(v3);
    CFRelease(*(a1 + 128));
  }

  *(a1 + 128) = 0;
  if (*(a1 + 120))
  {
    mk_timer_cancel();
    *(a1 + 200) = 1;
    v4 = *(a1 + 192);
    if (v4)
    {
      v4(a1, 2, *(a1 + 232), *(a1 + 216), *(a1 + 184));
    }

    mk_timer_destroy();
  }

  *(a1 + 120) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;

  return pthread_mutex_unlock((a1 + 16));
}

void CA::Display::DisplayLink::~DisplayLink(CA::Display::DisplayLink *this)
{
  *this = &unk_1EF1F3E98;
  v2 = *(this + 19);
  if (v2)
  {
    CADisplayTimerInvalidate(v2);
    CFRelease(*(this + 19));
  }

  v3 = CA::Display::DisplayLink::_list;
  if (CA::Display::DisplayLink::_list)
  {
    if (CA::Display::DisplayLink::_list == this)
    {
      v5 = &CA::Display::DisplayLink::_list;
LABEL_9:
      *v5 = *(this + 6);
    }

    else
    {
      while (1)
      {
        v4 = v3;
        v3 = *(v3 + 6);
        if (!v3)
        {
          break;
        }

        if (v3 == this)
        {
          v5 = (v4 + 48);
          goto LABEL_9;
        }
      }
    }
  }

  _Block_release(*(this + 29));
  _Block_release(*(this + 30));
  _Block_release(*(this + 31));
  _Block_release(*(this + 32));
  CFRelease(*(this + 2));
  v6 = *(this + 4);
  if (v6)
  {
    CFRelease(v6);
  }

  pthread_mutex_destroy((this + 56));
  v7 = *(this + 15);
  if (v7)
  {
    *(this + 16) = v7;
    operator delete(v7);
  }
}

{
  CA::Display::DisplayLink::~DisplayLink(this);

  JUMPOUT(0x1865EA9A0);
}

void sub_183BC5D2C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 120);
  if (v3)
  {
    *(v1 + 128) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CA::Render::SecureIndicatorLayer::~SecureIndicatorLayer(CA::Render::SecureIndicatorLayer *this, const CA::Render::Object *a2)
{
  --dword_1ED4EAB00;
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
  --dword_1ED4EAB00;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

void *CA::Render::MatchPropertyAnimation::encode(void **this, CA::Render::Encoder *a2)
{
  CA::Render::MatchAnimation::encode(this, a2);

  return CA::Render::Encoder::encode_sanity_check(a2);
}

uint64_t CA::OGL::GaussianBlurFilter::opaque_shape(CA::OGL::GaussianBlurFilter *this, CA::Render::KeyValueArray **a2, const CA::Render::Layer *a3, float64x2_t *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  float_key = CA::Render::KeyValueArray::get_float_key(a2[5], 400, 0.0);
  v10 = a4[1].f64[0];
  v11 = a4[1].f64[1];
  v9 = a4 + 1;
  if (v10 <= v11)
  {
    v12 = a4[1].f64[1];
  }

  else
  {
    v12 = a4[1].f64[0];
  }

  if (v12 < 1.79769313e308)
  {
    v13 = v10 >= v11 ? a4[1].f64[1] : a4[1].f64[0];
    if (v13 > 0.0)
    {
      *a4 = vaddq_f64(*a4, vdupq_lane_s64(COERCE__INT64(float_key * 2.79999995), 0));
      v14 = float_key * -5.5999999;
      v15 = v14 + v10;
      v16 = v14 + v11;
      a4[1].f64[0] = v15;
      a4[1].f64[1] = v16;
      if (v15 <= 0.0 || v16 <= 0.0)
      {
        v9->f64[0] = 0.0;
        a4[1].f64[1] = 0.0;
      }
    }
  }

  v23 = 0u;
  v24 = 0u;
  result = CA::OGL::GaussianBlurFilter::get_bounds(v7, a2, a3, &v23);
  if (result)
  {
    v18 = vclezq_f64(*v9);
    if ((vorrq_s8(vdupq_laneq_s64(v18, 1), v18).u64[0] & 0x8000000000000000) == 0)
    {
      v19 = vclezq_f64(v24);
      if ((vorrq_s8(vdupq_laneq_s64(v19, 1), v19).u64[0] & 0x8000000000000000) != 0 || (v20 = vmaxnmq_f64(*a4, v23), v21 = vsubq_f64(vminnmq_f64(vaddq_f64(*a4, *v9), vaddq_f64(v23, v24)), v20), v22 = vclezq_f64(v21), (vorrq_s8(vdupq_laneq_s64(v22, 1), v22).u64[0] & 0x8000000000000000) != 0))
      {
        v9->f64[0] = 0.0;
        a4[1].f64[1] = 0.0;
      }

      else
      {
        *a4 = v20;
        a4[1] = v21;
      }
    }
  }

  return result;
}

void *CA::Render::SecureIndicatorLayer::encode(CA::Render::SecureIndicatorLayer *this, CA::Render::Encoder *a2)
{
  CA::Render::Object::encode(this, a2);
  v4 = *(this + 4);
  v5 = *(a2 + 4);
  if ((v5 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v5 = *(a2 + 4);
  }

  *v5 = v4;
  v6 = *(a2 + 4);
  v7 = *(a2 + 5);
  v8 = (v6 + 4);
  *(a2 + 4) = v6 + 4;
  v9 = *(this + 5);
  if (v6 + 8 > v7)
  {
    CA::Render::Encoder::grow(a2, 4);
    v8 = *(a2 + 4);
  }

  *v8 = v9;
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v12 = (v10 + 4);
  *(a2 + 4) = v10 + 4;
  v13 = *(this + 12);
  if (v10 + 6 > v11)
  {
    CA::Render::Encoder::grow(a2, 2);
    v12 = *(a2 + 4);
  }

  *v12 = v13;
  *(a2 + 4) += 2;

  return CA::Render::Encoder::encode_sanity_check(a2);
}

uint64_t CA::OGL::MetalContext::emit_new_render_pipeline(CA::OGL::MetalContext *this, NSString *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  add = atomic_fetch_add(CA::OGL::MetalContext::_next_pipeline_id, 1u);
  if (x_log_get_metal_pipelines(void)::once != -1)
  {
    dispatch_once(&x_log_get_metal_pipelines(void)::once, &__block_literal_global_4_8625);
  }

  v4 = x_log_get_metal_pipelines(void)::log;
  result = os_signpost_enabled(x_log_get_metal_pipelines(void)::log);
  if (result)
  {
    v7 = (*(this + 692) & 1 | 2u);
    *__str = 0;
    result = CA::OGL::MetalContext::format_new_pipeline_flags_string(v7, __str, v6);
    if (add)
    {
      result = os_signpost_enabled(v4);
      if (result)
      {
        return _os_signpost_emit_unreliably_with_name_impl();
      }
    }
  }

  return result;
}

CA::Render::SecureIndicatorLayer *CA::Render::SecureIndicatorLayer::SecureIndicatorLayer(CA::Render::SecureIndicatorLayer *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 50;
  ++dword_1ED4EAB00;
  *v4 = &unk_1EF202900;
  *(this + 4) = CA::Render::Decoder::decode_int32(a2);
  *(this + 5) = CA::Render::Decoder::decode_int32(a2);
  *(this + 12) = CA::Render::Decoder::decode_int16(a2);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-secure-indicator-layer.cpp", 94);
  return this;
}

void CA::OGL::BackdropBuffer::~BackdropBuffer(CA::OGL::BackdropBuffer *this)
{
  *this = &unk_1EF202840;
  v2 = *(this + 4);
  if (v2)
  {
    CA::OGL::Context::release_surface_async(*(this + 1), v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    CA::OGL::Context::release_surface_async(*(this + 1), v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    CA::OGL::Context::release_surface_async(*(this + 1), v4);
  }
}

{
  CA::OGL::BackdropBuffer::~BackdropBuffer(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

void CA::OGL::Context::release_surface_async(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 712));
  *(a1 + 784) = x_list_prepend(*(a1 + 784), a2);

  os_unfair_lock_unlock((a1 + 712));
}

uint64_t ___ZL23CALayerDecodeAnimationsP7CALayerP7NSCoder_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  result = [v0 initWithObjects:{v1, objc_opt_class(), 0}];
  CALayerDecodeAnimations(CALayer *,NSCoder *)::keys_classes = result;
  return result;
}

uint64_t CAObject_validateArrayOfClass(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
LABEL_4:
    v5 = 0;
    while (1)
    {
      if (*v9 != v4)
      {
        objc_enumerationMutation(a1);
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 0;
      }

      if (v3 == ++v5)
      {
        v3 = [a1 countByEnumeratingWithState:&v8 objects:v7 count:16];
        result = 1;
        if (v3)
        {
          goto LABEL_4;
        }

        return result;
      }
    }
  }

  return 1;
}

float *CA::Render::Gradient::create_color_map(CA::Render::Gradient *this, CGColorSpace *a2, int a3)
{
  v68[1] = *MEMORY[0x1E69E9840];
  if (*(this + 2) < 2uLL)
  {
    return 0;
  }

  v64 = a3;
  v4 = a3 ? 13 : 1;
  v5 = a3 ? 256 : 512;
  v68[0] = 0;
  v67 = CA::Render::format_rowbytes(v4, v5);
  v6 = CA::Render::aligned_malloc(v67, v68, 0);
  if (!v6)
  {
    return 0;
  }

  v9 = 1.0 / v5;
  v10 = this;
  v11 = *(this + 2);
  v12 = v9 * 0.5;
  v13 = *(this + 5);
  v14 = v5;
  if (v13)
  {
    v15 = *v13;
    v16 = v64;
    if ((*(this + 13) & 0x20) != 0)
    {
      v9 = (v13[v11 - 1] - v15) / v5;
      v12 = v15 + v9 * 0.5;
    }
  }

  else
  {
    v15 = 0.0;
    v16 = v64;
  }

  if ((LODWORD(v9) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    return 0;
  }

  v62 = v4;
  v19 = 0;
  LODWORD(v4) = 0;
  v20 = *(this + 6);
  v21 = *(this + 4);
  v61 = v6;
  v22 = v6;
  v23 = v21;
  v24 = 1.0;
  v25 = v20;
  v26 = v20;
  v27 = v15;
  v28 = 1.0 / (v15 - v15);
  v65 = v14;
  do
  {
    if (v12 >= v15)
    {
      do
      {
        v23 = v21;
        v4 = (v4 + 1);
        v29 = 2.0;
        if (v11 <= v4)
        {
          v15 = 2.0;
          v30 = v25;
        }

        else
        {
          if (v13)
          {
            v29 = v13[v4];
          }

          else
          {
            v29 = v15 + (1.0 / (v11 - 1));
          }

          v21 += 20;
          v30 = (v25 + 32 * (v20 != 0));
          if (!v20)
          {
            v25 = v26;
          }

          v28 = 1.0 / (v29 - v15);
        }

        v26 = v25;
        v27 = v15;
        v25 = v30;
        v15 = v29;
      }

      while (v12 >= v29);
    }

    if (v15 > v27)
    {
      v66 = v19;
      *v7.i32 = v28 * (v12 - v27);
      if (v20)
      {
        *v7.i64 = CA::Render::TimingFunction::evaluate(v26, v14, *v7.i32, 0.00001);
        v10 = this;
        v16 = v64;
        *v7.i32 = *v7.i64;
      }

      v35 = *v23;
      if ((*(v10 + 3) & 0x1000) != 0)
      {
        v36 = *(v23 + 12);
        v38 = *(v21 + 12);
        v31 = (v36 * v35) + (-((v36 * v35) - (v38 * *v21)) * *v7.i32);
        v39 = vmul_n_f32(*(v23 + 4), v36);
        v32 = vmla_n_f32(v39, vmla_n_f32(vneg_f32(v39), *(v21 + 4), v38), *v7.i32);
        v37 = v38 - v36;
      }

      else
      {
        v31 = v35 + ((*v21 - v35) * *v7.i32);
        v32 = vmla_n_f32(*(v23 + 4), vsub_f32(*(v21 + 4), *(v23 + 4)), *v7.i32);
        v36 = *(v23 + 12);
        v37 = *(v21 + 12) - v36;
      }

      v14 = v65;
      v19 = v66;
      v34 = *(v10 + 3) & 0x1000;
      v33.f32[0] = v36 + (v37 * *v7.i32);
      v7.i32[0] = *(v23 + 16);
      if (*v7.i32 <= *(v21 + 16))
      {
        v7.i32[0] = *(v21 + 16);
      }
    }

    else
    {
      v31 = *v23;
      v32 = *(v23 + 4);
      v33.i32[0] = *(v23 + 12);
      v7.i32[0] = *(v23 + 16);
      v34 = *(v10 + 3) & 0x1000;
    }

    _ZF = v15 <= v27 || v34 == 0;
    v41 = _ZF;
    v42 = vmul_n_f32(v32, v33.f32[0]);
    if (_ZF)
    {
      v31 = v33.f32[0] * v31;
    }

    *v8.i8 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v41), 0x1FuLL)), v42, v32);
    if (v16)
    {
      v8 = vextq_s8(v7, v8, 0xCuLL);
      *v8.i32 = v31;
      v8.i32[3] = v33.i32[0];
      *v22 = vcvt_f16_f32(v8);
      v43 = 8;
    }

    else
    {
      if (v31 > 1.0)
      {
        v31 = 1.0;
      }

      if (v31 < 0.0)
      {
        v31 = 0.0;
      }

      __asm { FMOV            V4.2S, #1.0 }

      _D2 = vbsl_s8(vcgt_f32(*v8.i8, _D4), _D4, *v8.i8);
      _D4 = vcltz_f32(_D2);
      v49 = _D4.i8[0];
      v33.f32[1] = v31;
      _D4.i32[0] = 1132396544;
      v51 = vshl_u32(vcvt_u32_f32(vmla_f32(0x3F0000003F000000, vdup_n_s32(0x437F0000u), v33)), 0x1000000018);
      if (v49)
      {
        v52 = 0;
      }

      else
      {
        v52 = ((_D2.f32[0] * 255.0) + 0.5) << 8;
      }

      __asm { FMLA            S3, S4, V2.S[1] }

      if (_D4.i8[4])
      {
        v54 = 0;
      }

      else
      {
        v54 = _S3;
      }

      v22->i32[0] = v51.i32[0] | v54 | v52 | v51.i32[1];
      v43 = 4;
    }

    v22 = (v22 + v43);
    if (*v7.i32 > v24)
    {
      v24 = *v7.i32;
    }

    ++v19;
    v12 = v12 + v9;
  }

  while (v19 != v14);
  if (v24 <= 1.0)
  {
    v58 = 0;
    v56 = v62;
    v57 = v61;
    goto LABEL_75;
  }

  v55 = 0;
  v56 = v62;
  v57 = v61;
  while (colorspaces[v55] != a2)
  {
    if (++v55 == 39)
    {
      v55 = 0;
      goto LABEL_67;
    }
  }

  v55 = v55;
LABEL_67:
  v59 = v14;
  if ((0xFFFAF57B7uLL >> v55))
  {
    if (CGColorSpaceGetModel(a2) == kCGColorSpaceModelRGB)
    {
      Extended = CGColorSpaceCreateExtended(a2);
      v58 = Extended;
      if (Extended)
      {
        a2 = Extended;
      }

      goto LABEL_74;
    }
  }

  else
  {
    a2 = CAGetColorSpace(extended_colorspaces[v55]);
  }

  v58 = 0;
LABEL_74:
  LODWORD(v14) = v59;
LABEL_75:
  v17 = CA::Render::Image::new_image(v56, v14, 1u, 1u, a2, v57, &v67, CA::Render::release_image_data, v68[0], v61);
  v17[16] = v24;
  if (v58)
  {
    CFRelease(v58);
  }

  return v17;
}

BOOL CA::WindowServer::IOMFBDisplay::change_update_seed(CA::WindowServer::IOMFBDisplay *this, int a2)
{
  pthread_mutex_lock((this + 25848));
  v4 = this + 48 * *(this + 6459) + 25912;
  v5 = *v4;
  if (*v4)
  {
    if (BYTE11(xmmword_1ED4E980C) == 1)
    {
      kdebug_trace();
    }

    *v4 = a2;
    v4[40] |= 4u;
  }

  pthread_mutex_unlock((this + 25848));
  return v5 != 0;
}

uint64_t mapAnimationTime(CAAnimation *a1, double *a2, int *a3)
{
  v6 = CAMediaTimingCopyRenderTiming(a1);
  v7 = v6;
  if (v6)
  {
    if (!CA::Render::Timing::map_parent_to_active(v6, a2, 0))
    {
      v10 = 0;
LABEL_17:
      if (atomic_fetch_add((v7 + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v7 + 16))(v7);
      }

      return v10;
    }

    if (a3)
    {
      v8 = *(v7 + 32);
      if (*(v7 + 13))
      {
        v8 = v8 + v8;
      }

      if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v9 = vcvtmd_s64_f64(*a2 / v8);
      }

      else
      {
        v9 = 0;
      }

      *a3 = v9;
    }

    CA::Render::Timing::map_active_to_local(v7, a2, 0);
    *a2 = *a2 / *(v7 + 32);
  }

  else if (a3)
  {
    *a3 = 0;
  }

  v11 = [(CAAnimation *)a1 timingFunction];
  if (v11)
  {
    v12 = *a2;
    *&v12 = *a2;
    [(CAMediaTimingFunction *)v11 _solveForInput:v12];
    *a2 = v13;
  }

  v10 = 1;
  if (v7)
  {
    goto LABEL_17;
  }

  return v10;
}

void sub_183BC70B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 16))(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

void CA::OGL::Context::variable_blur_surface(uint64_t a1, _DWORD *a2, uint64_t a3, uint32x2_t *a4, float64x2_t *a5, uint64_t a6, float a7, float a8, float a9, uint64_t a10, uint64_t *a11)
{
  v89 = *MEMORY[0x1E69E9840];
  if (BYTE6(xmmword_1ED4E97EC) == 1)
  {
    PerfHud = CA::OGL::GetPerfHud(a1);
    if (PerfHud)
    {
      ++*(PerfHud + 520);
    }
  }

  v21 = a2[10];
  if (!v21)
  {
    return;
  }

  v22 = a2[11];
  if (!v22)
  {
    return;
  }

  v23 = *a6;
  if (*a6 == 0.0)
  {
    return;
  }

  v24 = *(a1 + 64);
  *(a1 + 64) = 0;
  memset(v82, 0, 40);
  v80 = 0u;
  v81 = 0u;
  CA::OGL::compute_variable_blur_parameters(&v80, v21, v22, (a2 + 12), 0.0, v23);
  v25 = ((*(a6 + 72) & 0x20) == 0) & BYTE1(xmmword_1ED4E98AC);
  v27 = DWORD1(v81);
  v26 = DWORD2(v81);
  LODWORD(v85) = DWORD1(v81);
  *(&v85 + 4) = *(&v81 + 1);
  v78 = HIDWORD(v81);
  HIDWORD(v85) = v82[0];
  v75 = v82[0];
  *buf = *(v82 + 8);
  v84[0] = *(&v82[1] + 8);
  HIBYTE(v66) = a11 != 0;
  LOBYTE(v66) = v25;
  v28 = (*(*a1 + 944))(a1, a2, &v85, buf, DWORD2(v80), HIDWORD(v80), 0, 0, 0.0, v66);
  if (!v28)
  {
    if (!v24)
    {
      return;
    }

    goto LABEL_54;
  }

  v29 = v28;
  v72 = v24;
  *(*(a1 + 16) + 16) = 41;
  CA::OGL::Context::bind_surface(a1, v28, 0, 1u, 1, 0.0);
  v88 = 0uLL;
  v77 = a3;
  v73 = a11;
  if (!a4)
  {
    if (a3)
    {
      CA::OGL::Context::bind_surface(a1, a3, 1u, 1u, 1, 0.0);
    }

    goto LABEL_19;
  }

  v31 = CA::OGL::Context::bind_image(a1, 1u, a4, 256, 1u, 1, 2, 0, 0.0, &v88, 0);
  if (!v31)
  {
LABEL_19:
    v67 = 0;
    goto LABEL_20;
  }

  v32 = v31;
  v33 = *(v31 + 55) & 0x3F;
  v67 = v31;
  if (v33 > 0x19 || ((1 << v33) & 0x2000101) == 0)
  {
    if (x_log_get_ogl(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
    }

    v34 = x_log_get_ogl(void)::log;
    if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR))
    {
      if ((~*(v32 + 13) & 0x30000000) != 0)
      {
        v35 = CA::OGL::image_function_name(CA::OGL::ImageFunction)::names[(*(v32 + 52) >> 24) & 0x3FLL];
      }

      else
      {
        v35 = "UNKNOWN";
      }

      *buf = 136315138;
      *&buf[4] = v35;
      _os_log_error_impl(&dword_183AA6000, v34, OS_LOG_TYPE_ERROR, "Unsupported image function %s", buf, 0xCu);
    }
  }

LABEL_20:
  v36 = 0;
  if ((*(a6 + 72) & 0x10) != 0)
  {
    v37 = 1.0;
  }

  else
  {
    v37 = 0.0;
  }

  if (*(a6 + 48) == 2)
  {
    v38 = 1.0;
  }

  else
  {
    v38 = 0.0;
  }

  v39 = v29[5].i32[1];
  *(a1 + 160) = DWORD1(v80);
  *(a1 + 164) = v37;
  *(a1 + 168) = v38;
  *(a1 + 172) = 0.0 / v39;
  v40 = 0.08;
  if ((*(a6 + 72) & 0x20) == 0)
  {
    v40 = 1.0;
  }

  v41 = -0.02;
  if ((*(a6 + 72) & 0x20) == 0)
  {
    v41 = 2.0;
  }

  *v42.f32 = vcvt_f32_s32(v29[5]);
  v43.i32[0] = 0.25;
  v43.i32[1] = 0.25;
  v43.i64[1] = __PAIR64__(LODWORD(v41), 1.0);
  v42.f32[2] = v40;
  v42.f32[3] = v40;
  *(a1 + 240) = vdivq_f32(v43, v42);
  v44 = a7 / a8;
  v45 = (a7 / a8) * v27;
  v46 = v44 * v26;
  v70 = (v78 + v27);
  v47 = v44 * v70;
  *&v85 = v45;
  *(&v85 + 1) = v46;
  *(&v85 + 2) = v44 * v70;
  *(&v85 + 3) = v46;
  v69 = (v75 + v26);
  v48 = v44 * v69;
  *&v86 = v44 * v70;
  *(&v86 + 1) = v44 * v69;
  *&v87 = v45;
  *(&v87 + 1) = v44 * v69;
  do
  {
    CA::Mat4Impl::mat4_apply_to_point2(a5, (&v85 + v36), v30);
    v36 += 8;
  }

  while (v36 != 32);
  v71 = v29;
  if (v77)
  {
    v49 = *(v77 + 48);
    v50 = *(v77 + 52);
  }

  else
  {
    v49 = 0.0;
    v50 = 0.0;
  }

  v68 = v50;
  v51 = *(*(a1 + 656) + 8);
  v52 = a9 / a8;
  *buf = a1;
  *&buf[8] = v51;
  memset(v84, 0, 40);
  LOWORD(v84[1]) = 256;
  CA::OGL::Context::ClippedArray::start(buf);
  v79[0] = 0;
  v79[1] = 0;
  v53 = v78;
  v54 = v75;
  v74 = -(v68 - (v52 * v26));
  v76 = -(v49 - (v52 * v27));
  v55 = -(v49 - (v52 * v70));
  v56 = -(v68 - (v52 * v69));
  v57 = v85;
  v59 = v86;
  v58 = v87;
  while (CA::OGL::Context::ClippedArray::next_rect(buf, v79))
  {
    if (*(a1 + 108))
    {
      v60 = 6;
    }

    else
    {
      v60 = 4;
    }

    if ((*(a1 + 144) + 4) > *(a1 + 152) || (v61 = *(a1 + 128)) != 0 && *(a1 + 120) + v60 > v61)
    {
      *(a1 + 1384) |= 0x20u;
      CA::OGL::Context::array_flush(a1);
      *(a1 + 144) = 0;
      *(a1 + 112) = a1 + 1386;
      *(a1 + 120) = xmmword_183E20E50;
    }

    CA::OGL::Context::array_rect(a1, v45, v46, v47, v48);
    v62 = *(a1 + 136) + 48 * *(a1 + 144);
    *(v62 - 176) = 0;
    *(v62 - 128) = v53;
    *(v62 - 124) = 0;
    *(v62 - 80) = v53;
    *(v62 - 76) = v54;
    *(v62 - 32) = 0;
    *(v62 - 28) = v54;
    if (a4)
    {
      *(v62 - 168) = v57;
      *(v62 - 120) = *(&v57 + 1);
      *(v62 - 72) = v59;
      *(v62 - 24) = v58;
    }

    else if (v77)
    {
      *(v62 - 168) = v76;
      *(v62 - 164) = v74;
      *(v62 - 120) = v55;
      *(v62 - 116) = v74;
      *(v62 - 72) = v55;
      *(v62 - 68) = v56;
      *(v62 - 24) = v76;
      *(v62 - 20) = v56;
    }
  }

  if (a4)
  {
    (*(*a1 + 560))(a1, v67, 1);
    v63 = v73;
    v64 = v71;
  }

  else
  {
    v63 = v73;
    v64 = v71;
    if (v77)
    {
      CA::OGL::Context::unbind_surface(a1, v77, 1);
    }
  }

  CA::OGL::Context::unbind_surface(a1, v64, 0);
  if (v63)
  {
    *v63 = v64;
    if (!v72)
    {
      return;
    }

    goto LABEL_54;
  }

  CA::OGL::Context::release_surface(a1, v64);
  if (v72)
  {
LABEL_54:
    *(a1 + 64) = 1;
  }
}

float32x2_t CA::Mat4Impl::mat4_apply_to_point2(float64x2_t *this, double *a2, float *a3)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = this[7].f64[1] + this[1].f64[1] * v3 + this[3].f64[1] * v4;
  if (fabsf(v5 + -1.0) >= 0.000001)
  {
    if (v5 <= 0.0)
    {
      v5 = INFINITY;
    }

    else
    {
      v5 = 1.0 / v5;
    }
  }

  result = vcvt_f32_f64(vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(this[6], *this, v3), this[2], v4), v5));
  *a2 = *&result;
  return result;
}

uint64_t CA::OGL::VariableBlurFilter::filter_flags(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 40);
  if (CA::OGL::BlurFilter::needs_dither(v3, a3))
  {
    LODWORD(v4) = 14;
  }

  else
  {
    LODWORD(v4) = 6;
  }

  int_key = CA::Render::KeyValueArray::get_int_key(v3, 392, 0);
  if (int_key)
  {
    v4 = v4;
  }

  else
  {
    v4 = (v4 + 1);
  }

  if (int_key)
  {
    if (CA::Render::KeyValueArray::get_int_key(v3, 379, 0))
    {
      return v4;
    }

    else
    {
      return v4 | 0x10;
    }
  }

  return v4;
}

uint64_t CAImageQueueRegisterIOSurfaceBuffer(_anonymous_namespace_ *a1, __IOSurface *a2, char a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a1 + 6);
  if (!v4)
  {
    return 0;
  }

  v7 = atomic_load((*(v4 + 24) + 8));
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v8 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x178uLL, 0xDEEC3011uLL);
  v10 = v8;
  if (!v8)
  {
    goto LABEL_13;
  }

  if ((v7 & 0x2000) != 0)
  {
    v11 = 125;
  }

  else
  {
    v11 = 127;
  }

  CA::Render::Surface::Surface(v8, a2, -1, v11, 0, 0, 0);
  if ((a3 & 1) == 0)
  {
    if ((a3 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_18:
    *(v10 + 184) &= 0xFDEFu;
    if ((a3 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  *(v10 + 184) |= 0x210u;
  if ((a3 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  if ((a3 & 4) != 0)
  {
LABEL_12:
    *(v10 + 184) |= 0x20u;
  }

LABEL_13:
}

void ___ZL34cons_CALayer_kCAValueCopiedPointerjb_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  *&v4[0] = a3;
  CA::Layer::setter(*(a2 + 16), v3, 3, v4);
}

BOOL CA::OGL::MetalContext::finish_image(CA::OGL::MetalContext *this, uint64_t a2, int a3)
{
  if (!*(a2 + 122))
  {
    return 1;
  }

  if (a3)
  {
    v5 = *(a2 + 112);
    v6 = atomic_load(this + 594);
    if (v5 <= v6)
    {
      return 1;
    }

    if ((*(this + 3317) & 0x10) != 0)
    {
      CA::OGL::MetalContext::flush(this, 1);
      if (*(a2 + 122))
      {
        v8 = 0;
        do
        {
          [*(a2 + 64 + 8 * v8++) waitUntilComplete];
        }

        while (v8 < *(a2 + 122));
      }
    }

    else
    {
      CA::OGL::MetalContext::finish(this);
    }
  }

  v9 = *(a2 + 112);
  v10 = atomic_load(this + 594);
  return v9 <= v10;
}

uint64_t anonymous namespace::register_buffer(_anonymous_namespace_ *this, _CAImageQueue *a2, CA::Render::Texture *a3)
{
  MEMORY[0x1EEE9AC00](this);
  v4 = v3;
  v6 = v5;
  v25 = *MEMORY[0x1E69E9840];
  v7 = malloc_type_malloc(0x28uLL, 0x100004077774924uLL);
  v8 = v7;
  v9 = (v7 + 1);
  v7[2] = 1;
  ++CA::Render::Object::_instance_counts[0];
  v7[1] = &unk_1EF200768;
  do
  {
    add = atomic_fetch_add(CA::Render::next_sequence(void)::sequence, 1u);
    v11 = __CFADD__(add, 1);
    v12 = add + 1;
  }

  while (v11);
  *(v7 + 6) = v12;
  v7[4] = v4;
  if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
  {
    dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
  }

  v13 = CA::Render::_render_id_slide;
  os_unfair_lock_lock((v6 + 16));
  v14 = *(v6 + 200);
  if (!v14)
  {
    v14 = x_hash_table_new_(0, 0, 0, 0, 0, 0);
    *(v6 + 200) = v14;
  }

  hash_table_modify(v14, v13 + v9, v9, 0);
  os_unfair_lock_unlock((v6 + 16));
  v15 = *(v6 + 20);
  if (v15 == 1)
  {
    if (*(v4 + 12) == 57)
    {
      if (*(v6 + 80))
      {
        v16 = *(v4 + 128);
        v17 = xpc_dictionary_create(0, 0, 0);
        if (v17)
        {
          v18 = v17;
          xpc_dictionary_set_uint64(v17, "command", 2uLL);
          MachPort = IOSurfaceCreateMachPort(v16);
          xpc_dictionary_set_mach_send();
          mach_port_deallocate(*MEMORY[0x1E69E9A60], MachPort);
          xpc_dictionary_set_uint64(v18, "iosurfaceRenderId", v13 + v9);
          (*(v6 + 80))(v6, v18, *(v6 + 88));
          xpc_release(v18);
        }
      }
    }

    v15 = *(v6 + 20);
  }

  if (!v15)
  {
    if (*(v6 + 212))
    {
      v21 = CA::Context::retain_context_with_id(*(v6 + 208));
      if (v21)
      {
        v22 = v21;
        bzero(v23, 0x1090uLL);
        CAImageQueueCommit::CAImageQueueCommit(v23, v6, (v22 + 58));
        if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
        {
          dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
        }

        CA::Render::encode_set_object(v24, (CA::Render::_render_id_slide + v9), *(v8 + 6), v8[4], 0);
        v24[104] = 1;
        CAImageQueueCommit::~CAImageQueueCommit(v23);
      }
    }
  }

  return v13 + v9;
}

CA::Render::GradientLayer *CA::Render::GradientLayer::GradientLayer(CA::Render::GradientLayer *this, CA::Render::Decoder *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 20;
  ++dword_1ED4EAA88;
  *v4 = &unk_1EF204CF8;
  CA::Render::Gradient::Gradient((v4 + 16), a2);
  *v12 = 0uLL;
  CA::Render::Decoder::decode_cgfloat(a2, v12, 2);
  *(this + 72) = *v12;
  *v12 = 0uLL;
  CA::Render::Decoder::decode_cgfloat(a2, v12, 2);
  *(this + 88) = *v12;
  *(this + 26) = CA::Render::Decoder::decode_atom(a2);
  v5 = CA::Render::Decoder::decode_int32(a2);
  *(this + 7) = 0u;
  v6 = (this + 112);
  *(this + 27) = v5;
  *(this + 8) = 0u;
  if ((*(this + 13) & 8) != 0)
  {
    v7 = CA::Render::Decoder::decode_object(a2, 6, &CA::Render::texture_types);
    v8 = *v6;
    *v6 = v7;
    if (v8)
    {
      if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v8 + 16))(v8);
      }
    }
  }

  v9 = CA::Render::Decoder::decode_colorspace(a2);
  v10 = *(this + 16);
  if (v10)
  {
    CFRelease(v10);
  }

  *(this + 16) = v9;
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-gradient-layer.cpp", 314);
  return this;
}

BOOL CAImageQueueInsertImageWithRotation(uint64_t a1, int a2, uint64_t a3, unsigned int a4, char a5, uint64_t a6, uint64_t a7, double a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = xmmword_183E21120;
  return CAImageQueueInsertImage_(a1, a2, a3, a4, a5, &v9, a6, a7, a8, 0.0, 0.0, 0.0, 0.0);
}

CA::Render::InterpolatedFunction *CA::Render::InterpolatedFunction::InterpolatedFunction(CA::Render::InterpolatedFunction *this, CA::Render::Decoder *a2)
{
  *(this + 2) = 1;
  *(this + 3) = 18;
  ++dword_1ED4EAA80;
  *this = &unk_1EF1FBE88;
  *(this + 2) = CA::Render::Decoder::decode_size_t(a2);
  v4 = CA::Render::Decoder::decode_int32(a2);
  *(this + 4) = 0;
  v5 = (this + 32);
  v6 = *(this + 2);
  *(this + 6) = v4;
  *(this + 7) = v6 + -1.0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 3) |= CA::Render::Decoder::decode_int32(a2) << 8;
  if (*(this + 2))
  {
    CA::Render::InterpolatedFunction::allocate_storage(this);
    if (*v5)
    {
      CA::Render::Decoder::decode_bytes(a2, *v5, 4 * *(this + 2) * *(this + 6));
      if ((*(this + 13) & 2) != 0)
      {
        v7 = *(this + 5);
        if (v7)
        {
          CA::Render::Decoder::decode_bytes(a2, v7, 4 * *(this + 2));
        }

        else
        {
          CA::Render::Decoder::set_fatal_error(a2, "%s - _locations = NULL", "InterpolatedFunction");
        }
      }

      if ((*(this + 13) & 4) != 0)
      {
        v8 = *(this + 6);
        if (v8)
        {
          CA::Render::Decoder::decode_bytes(a2, v8, 32 * *(this + 2) - 32);
        }

        else
        {
          CA::Render::Decoder::set_fatal_error(a2, "%s - _interpolations = NULL", "InterpolatedFunction");
        }
      }

      CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-function.mm", 670);
    }

    else
    {
      CA::Render::Decoder::set_fatal_error(a2, "%s - _values = NULL", "InterpolatedFunction");
    }
  }

  return this;
}

void sub_183BC81BC(_Unwind_Exception *exception_object, const CA::Render::Object *a2)
{
  --*(v3 + 2688);
  *v2 = &unk_1EF1F6D08;
  if ((*(v2 + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t draw_path_direct(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Info = CGContextDelegateGetInfo();
  CGGStateGetStyle();
  Color = CGStyleGetColor();
  CompositeOperation = CGGStateGetCompositeOperation();
  CACGContextEvaluator::update_with_color(Info, Color, CompositeOperation, a3);
  if (a4 <= 4)
  {
    if (a4 == 2 || (FillColor = CGGStateGetFillColor(), v15 = CGGStateGetCompositeOperation(), CACGContextEvaluator::update_with_color(Info, FillColor, v15, a3), (a4 - 2) <= 2))
    {
      StrokeColor = CGGStateGetStrokeColor();
      v17 = CGGStateGetCompositeOperation();
      CACGContextEvaluator::update_with_color(Info, StrokeColor, v17, a3);
    }
  }

  *(Info + 78) |= CGGStateGetStyle() != 0;
  v18 = *(CGContextDelegateGetInfo() + 48);

  return MEMORY[0x1EEDB93A0](v18, a2, a3, a4, a5, a6);
}

CA::Render::Gradient *CA::Render::Gradient::Gradient(CA::Render::Gradient *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::InterpolatedFunction::InterpolatedFunction(this, a2);
  *v4 = &unk_1EF1FBF20;
  v5 = *(v4 + 6);
  if (v5 != 5)
  {
    CA::Render::Decoder::set_fatal_error(a2, "%s - width = %u", "Gradient", v5);
  }

  return this;
}

BOOL CA::OGL::detach_contents(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v148 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = *(a3 + 128);
  }

  else
  {
    v7 = 0;
  }

  v8 = *a1;
  v9 = *(*a1 + 600);
  v10 = *(*(a2 + 16) + 24);
  if ((v10 & 0x4000000) != 0)
  {
    v11 = 0;
    if (!v9)
    {
LABEL_11:
      v12 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v11 = *(*(a2 + 24) + 152);
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  if ((*(v8 + 1384) & 2) != 0)
  {
    goto LABEL_11;
  }

  if ((*(*(a2 + 24) + 40) & 0x3000000000) == 0x2000000000)
  {
    v12 = 27;
    goto LABEL_12;
  }

  v15 = *(v8 + 656);
  if ((*(a3 + 13) & 0x10) == 0 && (*(a5 + 309) & 2) == 0)
  {
    v12 = 2;
    goto LABEL_12;
  }

  v16 = *(v8 + 16);
  if (*(v16 + 8) != 0x3C003C003C003C00)
  {
    v12 = 3;
    goto LABEL_12;
  }

  if (*(v8 + 1292))
  {
    v12 = 4;
    goto LABEL_12;
  }

  if (*(v16 + 376))
  {
    v12 = 5;
    goto LABEL_12;
  }

  if ((*(v15 + 80) & 0x100) == 0)
  {
    v12 = 6;
    goto LABEL_12;
  }

  if (*(v15 + 16))
  {
    v12 = 8;
    goto LABEL_12;
  }

  if (!v11)
  {
    v12 = 9;
    goto LABEL_12;
  }

  if ((v10 & 0x40) == 0)
  {
    v12 = 10;
    goto LABEL_12;
  }

  if (*(a5 + 337))
  {
    v12 = 11;
    goto LABEL_12;
  }

  v19 = *(a5 + 308);
  if ((v19 & 0x400) != 0)
  {
    v12 = 12;
    goto LABEL_12;
  }

  v136 = *a1;
  if ((v19 & 9) != 0 && (*(a2 + 40) & 0xF00) != 0)
  {
    v12 = 13;
    goto LABEL_12;
  }

  if ((*(a2 + 32) & 0x100006) != 0)
  {
    goto LABEL_58;
  }

  v26 = a1[1];
  if ((*(v26 + 1378) & 8) == 0)
  {
    v12 = 15;
    goto LABEL_12;
  }

  if ((v10 & 0x8000000000) != 0)
  {
LABEL_58:
    v12 = 14;
    goto LABEL_12;
  }

  if ((*(v26 + 307) & 0x20) != 0)
  {
    v12 = 26;
    goto LABEL_12;
  }

  if (BYTE6(xmmword_1ED4E97DC))
  {
    v12 = 16;
    goto LABEL_12;
  }

  v132 = v11[13];
  v133 = (*(*v9 + 24))(v9, v136, a4, a3);
  if (!v133)
  {
    v12 = 17;
    goto LABEL_12;
  }

  if ((*(a5 + 248) & 0x1F) != 0)
  {
    if ((*(a5 + 248) & 0x10) != 0)
    {
      v12 = 18;
      if (*(a5 + 128) != 0.0 || *(a5 + 160) != 0.0)
      {
        goto LABEL_12;
      }
    }

    v28 = *(a5 + 104);
    v29 = *(a5 + 136);
    v30 = *(a5 + 112);
    if (vabdd_f64(v30, *v29.i64) >= 0.001 || fabs(v30) >= 0.001)
    {
      v12 = 19;
      if (fabs(vsubq_f64(v28, vdupq_laneq_s64(v29, 1)).f64[0]) >= 0.001 || fabs(v28.f64[0]) >= 0.001)
      {
        goto LABEL_12;
      }

      if (v30 <= 0.0 || *v29.i64 <= 0.0)
      {
        if (v30 >= 0.0 || *v29.i64 >= 0.0)
        {
          if (*v29.i64 > 0.0 && v30 < 0.0)
          {
            v31 = 7;
          }

          else
          {
            v31 = 4;
          }
        }

        else
        {
          v31 = 5;
        }
      }

      else
      {
        v31 = 6;
      }

      v28.f64[0] = *(a5 + 112);
    }

    else
    {
      v29.i64[0] = *(a5 + 144);
      if (v28.f64[0] >= 0.0 || *&v29.i64[1] <= 0.0)
      {
        if (v28.f64[0] <= 0.0 || *&v29.i64[1] >= 0.0)
        {
          if (*&v29.i64[1] < 0.0 && v28.f64[0] < 0.0)
          {
            v31 = 3;
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          v31 = 1;
        }
      }

      else
      {
        v31 = 2;
      }
    }

    if (v28.f64[0] < 0.0)
    {
      v28.f64[0] = -v28.f64[0];
    }

    if (*v29.i64 < 0.0)
    {
      *v29.i64 = -*v29.i64;
    }

    v32 = (*v29.i64 + v28.f64[0]) * 0.5;
  }

  else
  {
    v31 = 0;
    v32 = 1.0;
  }

  v35 = *(a3 + 12);
  v36 = v31 ^ (v35 >> 11) & 1 ^ (*(a5 + 308) >> 11) & 1 ^ 1;
  if (!a6 && v32 < 1.0 || !a7 && v32 > 1.0)
  {
    v36 |= 8u;
  }

  if (v36 & 4) != 0 && (*(*(a2 + 16) + 24))
  {
    v36 ^= 3u;
  }

  v38 = *(a5 + 24);
  v39 = *(a5 + 32);
  v41 = *(a5 + 256);
  v40 = *(a5 + 264);
  v42 = v40 * *(a5 + 16);
  v144.f64[0] = v40 * *(a5 + 8);
  v144.f64[1] = v42;
  v145.f64[0] = v40 * v38 / v41;
  v145.f64[1] = v40 * v39;
  v43 = v36 | (v35 >> 20) & 0x20;
  if ((v35 & 0x8000000) != 0 && (*(a1[1] + 307) & 0x40) == 0)
  {
    v43 |= 0x4000u;
  }

  v44 = (v43 | (v35 >> 15) & 0x800);
  *&v142[0].top = 0u;
  v143 = 0u;
  *v45.i8 = CA::OGL::Context::raster_round_rect(buf, *a1, (a5 + 40));
  if (*&buf[8] <= *&buf[12])
  {
    v47 = *&buf[12];
  }

  else
  {
    v47 = *&buf[8];
  }

  v45.i32[0] = 1073741822;
  v46.i32[0] = v47;
  v48.i64[0] = *buf;
  v48.i64[1] = *&buf[4];
  v49 = *&buf[8];
  v130 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
  v50 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v46, v45), 0), v130, vcvtq_f64_s64(v48));
  v51 = 1.79769313e308;
  if (v47 <= 1073741822)
  {
    v51 = *&buf[12];
  }

  else
  {
    v49 = 1.79769313e308;
  }

  *&v142[0].top = v50;
  v143.f64[0] = v49;
  v143.f64[1] = v51;
  (*(*v9 + 32))(v9, v142);
  if ((*(v136 + 872) & 1) == 0)
  {
    *&v142[1] = *(v136 + 620) - (*&v142[1] + v143.f64[1]);
    v44 = (v44 ^ 1);
  }

  v59 = v11[15];
  v53.i64[0] = v11[16];
  v60.i64[0] = v59;
  v60.i64[1] = SHIDWORD(v59);
  v61 = v60;
  v62 = v53.i32[1];
  v60.i64[0] = v53.i32[0];
  v60.i64[1] = v53.i32[1];
  v63 = v60;
  if (v53.i32[0] > v53.i32[1])
  {
    v62 = v11[16];
  }

  v53.i32[0] = v62;
  v54.i32[0] = 1073741822;
  v64 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v53, v54), 0), v130, vcvtq_f64_s64(v61));
  v65 = vcvtq_f64_s64(v63);
  v66 = vdup_n_s32(v62 > 1073741822);
  v67.i64[0] = v66.u32[0];
  v67.i64[1] = v66.u32[1];
  v68 = vcltzq_s64(vshlq_n_s64(v67, 0x3FuLL));
  v69 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  CA::OGL::clip_detached_rects(&v144, v142, v44, v52, v64, vbslq_s8(v68, v69, v65), *v68.i64, *v69.i64, v55, v56, v57, v58);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vcgtzq_f64(v145), vcgtzq_f64(v143))))))
  {
    v12 = 25;
    goto LABEL_12;
  }

  v71 = *(a1[1] + 16);
  *buf = 0;
  *&buf[8] = 0;
  CA::Bounds::set_exterior(buf, v70, *&v142[0].top, v143);
  v72 = CA::Shape::contains(v71, buf);
  v75 = v44 | 0x400;
  if (v72)
  {
    v75 = v44;
  }

  v131 = v75;
  v76 = *(a2 + 24);
  v77 = *(v76 + 104);
  if (v77)
  {
    if (*(v77 + 12) == 25)
    {
      v78 = *(v76 + 152);
      if (v78)
      {
        if (*(v78 + 24))
        {
          v79 = (*(*(v77 + 16) + 24) + 8);
          v80 = atomic_load(v79);
          v81 = atomic_load(v79);
          v82 = (v80 >> 35) & 0x8000 | (v81 >> 45) & 0x20000 | v131;
          if (*(v77 + 552) == *(v136 + 636))
          {
            v83 = v82 | 0x2000;
          }

          else
          {
            v83 = v82;
          }

          v131 = v83;
        }
      }
    }
  }

  v84 = *(v136 + 600);
  if (v84 && (v85 = (*(*v84 + 16))(v84)) != 0)
  {
    v86 = v85;
    v87 = *(v85 + 640);
    v129 = (v87 >> 2) & 1;
    v88 = (*(v85 + 672) & 0x1800) == 0;
    if ((v87 & 4) != 0)
    {
      v89 = CA::WindowServer::Display::clones_support_detaching(*(v85 + 40));
    }

    else
    {
      v89 = 0;
    }

    if (((*(*v86 + 1552))(v86) & 1) == 0)
    {
      *&v73 = CA::WindowServer::Display::edr_headroom(v86);
      v74 = 1.0;
      if (*&v73 != 1.0 && (*(a3 + 368) & 4) == 0)
      {
        v12 = 21;
        goto LABEL_12;
      }
    }
  }

  else
  {
    v89 = 0;
    v88 = 0;
    v129 = 0;
  }

  if ((v89 & 1) != 0 || v88)
  {
    if (CA::Render::LayerNode::clear_above_and_black_below(*(a2 + 16), v129, v73, v74))
    {
      if ((~*(a1[1] + 304) & 0xC0) != 0)
      {
        v90 = 256;
      }

      else
      {
        v90 = 4352;
      }

      v131 |= v90;
    }

    else if (v89)
    {
      v12 = 22;
      goto LABEL_12;
    }
  }

  v141 = 0;
  if ((*(*v9 + 40))(v9, v11, 0, a3, v133, &v144, v142, v131, &v141))
  {
    v11[13] = v11[13] & 0xFFFFFFFFFFFE7FFFLL | 0x8000;
    *(a4 + 20) = *(v136 + 636);
    CA::Render::updater_mark_detached_layer(*(a2 + 16), ((v132 & 0x8000) == 0));
    if ((*(*v9 + 48))(v9, v11, 0))
    {
      *(*(v136 + 16) + 497) &= ~1u;
      *(*(v136 + 16) + 16) = 0;
      if (BYTE2(xmmword_1ED4E97DC) == 1)
      {
        v91 = 0x3804380400000000;
      }

      else
      {
        v91 = 0;
      }

      *(*(v136 + 16) + 8) = v91;
      v139 = 0u;
      v140 = 0u;
      *v92.i8 = CA::OGL::Context::raster_round_rect(buf, *a1, (a5 + 40));
      if (*&buf[8] <= *&buf[12])
      {
        v94 = *&buf[12];
      }

      else
      {
        v94 = *&buf[8];
      }

      v92.i32[0] = 1073741822;
      v93.i32[0] = v94;
      v95.i64[0] = *buf;
      v95.i64[1] = *&buf[4];
      v96 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v93, v92), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v95));
      v97 = *&buf[8];
      v139 = v96;
      v98 = 1.79769313e308;
      if (v94 <= 1073741822)
      {
        v98 = *&buf[12];
      }

      else
      {
        v97 = 1.79769313e308;
      }

      *&v140 = v97;
      *(&v140 + 1) = v98;
      *buf = &v139;
      *&buf[8] = &CA::identity_transform;
      *&buf[16] = 0u;
      v147 = 0u;
      CA::OGL::emit_one_part_rect(v136, buf, 0, 0, 0);
      if (BYTE2(xmmword_1ED4E97DC) == 1)
      {
        v117 = v141;
        if (v141)
        {
          v118 = *(v136 + 16);
          if ((v141 & 0x2000) != 0)
          {
            v122 = 0x3804000038040000;
          }

          else
          {
            __asm { FMOV            V1.4S, #0.75 }

            v122 = vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(v118[1]), _Q1));
          }

          v123 = 0;
          v118[1] = v122;
          v124 = 0.0;
          do
          {
            v125 = *v139.i64;
            if ((v117 & 0x2000) != 0)
            {
              v127 = *&v140;
              v126 = *&v139.i64[1] + vcvtd_n_f64_u32(v123, 5uLL) * *(&v140 + 1);
              v128 = *(&v140 + 1) * 0.015625;
            }

            else
            {
              v126 = *&v139.i64[1];
              v125 = *v139.i64 + v124 * 0.03125 * *&v140;
              v127 = *&v140 * 0.015625;
              v128 = *(&v140 + 1);
            }

            v138[0] = *&v125;
            v138[1] = *&v126;
            v138[2] = *&v127;
            v138[3] = *&v128;
            v137[0].i64[0] = v138;
            v137[0].i64[1] = &CA::identity_transform;
            memset(&v137[1], 0, 32);
            CA::OGL::emit_one_part_rect(v136, v137, 0, 0, 0);
            v124 = v124 + 1.0;
            ++v123;
          }

          while (v123 != 32);
        }
      }

      if ((v132 & 0x8000) == 0)
      {
        *buf = 0;
        *&buf[8] = 0;
        v137[0] = 0uLL;
        CA::Bounds::set_exterior(buf, v99, *(a5 + 40), *(a5 + 56));
        v102 = v11[15];
        v103.i64[0] = v11[16];
        v104.i64[0] = v102;
        v104.i64[1] = SHIDWORD(v102);
        v105 = vcvtq_f64_s64(v104);
        v106 = v103.i32[1];
        v104.i64[0] = v103.i32[0];
        v104.i64[1] = v103.i32[1];
        v107 = v104;
        if (v103.i32[0] > v103.i32[1])
        {
          v106 = v11[16];
        }

        v103.i32[0] = v106;
        v101.i32[0] = 1073741822;
        v108 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v103, v101), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), v105);
        v109 = vcvtq_f64_s64(v107);
        v110 = vdup_n_s32(v106 > 1073741822);
        v111.i64[0] = v110.u32[0];
        v111.i64[1] = v110.u32[1];
        CA::Bounds::set_exterior(v137, v100, v108, vbslq_s8(vcltzq_s64(vshlq_n_s64(v111, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v109));
        if (*buf != v137[0].i32[0] || *&buf[4] != *(v137[0].i64 + 4) || *&buf[12] != v137[0].i32[3])
        {
          v138[0] = CA::Shape::new_shape(buf, v112);
          CA::shape_subtract(v138, v137, v113);
          *(*(v136 + 16) + 497) |= 1u;
          v114 = *(v136 + 16);
          *(v114 + 496) = 12;
          *(v114 + 8) = 0x3C00000000000000;
          v115 = v138[0];
          v139 = 0uLL;
          CA::OGL::emit_combine(v136, 0, 0, 0, v138[0], &v139);
          v116 = *(v136 + 16);
          *(v116 + 496) = *(v15 + 80);
          *(v116 + 497) &= ~1u;
          CA::Shape::unref(v115);
        }
      }

      v12 = 0;
    }

    else
    {
      v12 = 0;
      *(v136 + 1384) |= 0x200u;
    }
  }

  else
  {
    v12 = 23;
  }

LABEL_12:
  if (v7)
  {
    IOSurfaceSetDetachModeCode();
    if (HIBYTE(xmmword_1ED4E97DC) != 1)
    {
      goto LABEL_16;
    }

    ID = IOSurfaceGetID(v7);
  }

  else
  {
    if ((HIBYTE(xmmword_1ED4E97DC) & 1) == 0)
    {
      goto LABEL_16;
    }

    ID = 0;
  }

  if (x_log_get_CADebug(void)::once != -1)
  {
    dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
  }

  v24 = x_log_get_CADebug(void)::log;
  if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_INFO))
  {
    v25 = CA::detach_string_coreanimation(CA::CADetachReasonCode)::names[v12];
    *buf = 67109378;
    *&buf[4] = ID;
    *&buf[8] = 2080;
    *&buf[10] = v25;
    _os_log_impl(&dword_183AA6000, v24, OS_LOG_TYPE_INFO, "[CA] Surface ID:0x%x detach result: %s", buf, 0x12u);
  }

LABEL_16:
  if (v12 < 2)
  {
    return v12 == 0;
  }

  if (v9 && v11)
  {
    (*(*v9 + 56))(v9, v11, 0);
  }

  else if (!v11)
  {
    goto LABEL_22;
  }

  v11[13] &= ~0x8000uLL;
LABEL_22:
  if (byte_1ED4E9820 == 1)
  {
    if (x_log_get_ogl(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
    }

    v17 = x_log_get_ogl(void)::log;
    if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_FAULT))
    {
      v18 = CA::detach_string_coreanimation(CA::CADetachReasonCode)::names[v12];
      *buf = 136315138;
      *&buf[4] = v18;
      _os_log_fault_impl(&dword_183AA6000, v17, OS_LOG_TYPE_FAULT, "Failed to detach surface code: %s", buf, 0xCu);
    }
  }

  return v12 == 0;
}

void CA::Render::Decoder::decode_cgfloat(CA::Render::Decoder *this, double *__dst, uint64_t a3)
{
  v3 = a3;
  v4 = __dst;
  if (*(this + 64))
  {
    v6 = 8 * a3;

    CA::Render::Decoder::decode_bytes(this, __dst, v6);
  }

  else if (a3)
  {
    do
    {
      *v4++ = COERCE_FLOAT(CA::Render::Decoder::decode_int32(this));
      --v3;
    }

    while (v3);
  }
}

BOOL CA::WindowServer::IOMFBDisplay::detach_layer(CA::WindowServer::IOMFBDisplay *this, CA::Render::Handle *a2, int a3, atomic_uint *a4, CA::WindowServer::Surface *a5, int32x4_t *a6, Rect *a7, const CA::Rect *a8, double a9, double a10, double a11, float64x2_t a12, double a13, float64x2_t a14, float64x2_t a15, int32x4_t a16, unsigned int *a17)
{
  v21 = a2;
  v262 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (CADeviceIsVirtualized::once[0] != -1)
    {
      dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
    }

    LODWORD(v25) = 0;
    if (CADeviceIsVirtualized::is_virtualized)
    {
      v26 = 11;
    }

    else
    {
      v26 = 1;
    }

    goto LABEL_124;
  }

  v23 = a8;
  v24 = *(a2 + 13);
  v254 = a8;
  if (CADeviceIsVirtualized::once[0] != -1)
  {
    dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
  }

  v25 = (v24 >> 15) & 1;
  if (CADeviceIsVirtualized::is_virtualized)
  {
    v26 = 11;
    goto LABEL_124;
  }

  if (!*(this + 3345))
  {
    v26 = 1;
    goto LABEL_124;
  }

  if (a5 && (*(a5 + 240) & 0x10) != 0)
  {
    v26 = 16;
    goto LABEL_124;
  }

  v27 = *(this + 3287);
  buf = 0u;
  v256 = 0u;
  if (v27 && (BYTE4(v27[36].isa) & 1) == 0)
  {
    if (v27->isa != v21)
    {
      v26 = 2;
      goto LABEL_124;
    }

    if ((v23 & 0x40) != 0)
    {
      v23 = (HIDWORD(v27[4].isa) & 0xD800008F | v23);
      v254 = v23;
      v29 = *&v27[34].isa;
      buf = *&v27[32].isa;
      v256 = v29;
    }

    isa = v27[5].isa;
  }

  else
  {
    if ((v23 & 0x400) != 0)
    {
      v26 = 8;
      goto LABEL_124;
    }

    isa = 0;
  }

  v30 = &a7[2];
  v31 = &a7[3];
  v32 = a7 + 1;
  v252 = 0u;
  v253 = 0u;
  if (a7)
  {
    v33 = &a7[2];
    v34 = &a7[3];
    v35 = &a7[1];
    v36 = &a7[2];
    v37 = &a7[3];
    v38 = a7;
    if ((*(this + 904) & 0x10) != 0)
    {
      v39 = *&a7->top;
      v40 = *&a7[2].top;
      v252 = *&a7->top;
      v253 = v40;
      v42 = *(this + 19);
      v41 = *(this + 20);
      v43.i64[0] = v41;
      v43.i64[1] = SHIDWORD(v41);
      v44 = vcvtq_f64_s64(v43);
      v46 = *(this + 25);
      v45 = *(this + 26);
      v43.i64[0] = v45;
      v43.i64[1] = SHIDWORD(v45);
      a12 = vdivq_f64(v44, vcvtq_f64_s64(v43));
      v43.i64[0] = v42;
      v43.i64[1] = SHIDWORD(v42);
      v47 = vcvtq_f64_s64(v43);
      v43.i64[0] = v46;
      v43.i64[1] = SHIDWORD(v46);
      a15 = vcvtq_f64_s64(v43);
      a14.f64[0] = v40.f64[1];
      a16.i64[0] = 1.0;
      if (a12.f64[0] != 1.0 && v40.f64[0] < 1.79769313e308)
      {
        *&v252.f64[0] = *&vmulq_f64(v39, a12);
        *&v253.f64[0] = *&vmulq_f64(v40, a12);
      }

      v33 = &v253;
      v34 = &v253.f64[1];
      v35 = &v252.f64[1];
      v48 = vmlsq_f64(v47, a15, a12);
      if (a12.f64[1] != 1.0 && v40.f64[1] < 1.79769313e308)
      {
        v252.f64[1] = vmulq_f64(v39, a12).f64[1];
        v253.f64[1] = v40.f64[1] * a12.f64[1];
      }

      v252 = vaddq_f64(v48, v252);
      v38 = &v252;
      v36 = &v253;
      v37 = &v253.f64[1];
    }
  }

  else
  {
    v38 = 0;
    v37 = 24;
    v36 = 16;
    v35 = 8;
    v33 = 16;
    v34 = 24;
  }

  v50 = &a6[1];
  v51 = &a6[1].i64[1];
  v52 = v23;
  if ((v23 & 0x48) == 8)
  {
    v52 = v23;
    if (v50->f64[0] == *v33)
    {
      v52 = v23;
      if (*v51 == *v34)
      {
        v52 = (v23 & 0xFFFFFFB7);
        v254 = v23 & 0xFFFFFFB7;
      }
    }
  }

  v53 = this + 25832;
  v250 = 0u;
  v251 = 0u;
  *&v248[0].top = 0u;
  v249 = 0u;
  log = v27;
  if (a6 && v38)
  {
    v55 = a6[1];
    v250 = *a6;
    v251 = v55;
    v248[0] = *v38;
    v248[1] = *v35;
    v249.f64[0] = *v36;
    v249.f64[1] = *v37;
    v54 = *(this + 19);
    v55.i64[0] = *(this + 20);
    v56 = v55.i32[1];
    v57.i64[0] = v54;
    v57.i64[1] = SHIDWORD(v54);
    v58 = v57;
    v57.i64[0] = v55.i32[0];
    v57.i64[1] = v55.i32[1];
    v59 = v57;
    if (v55.i32[0] > v55.i32[1])
    {
      v56 = *(this + 20);
    }

    v55.i32[0] = v56;
    LODWORD(a12.f64[0]) = 1073741822;
    v60 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v55, a12), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v58));
    v61 = vcvtq_f64_s64(v59);
    v62 = vdup_n_s32(v56 > 1073741822);
    v63.i64[0] = v62.u32[0];
    v63.i64[1] = v62.u32[1];
    v64 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v63, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v61);
    v65 = v249.f64[0];
    v67 = vorrq_s8(vcltzq_f64(v249), vclezq_f64(v64));
    v66 = vdupq_laneq_s64(v67, 1);
    v67.i64[0] = vorrq_s8(v66, v67).u64[0];
    if (v67.i64[0] < 0 || (v66 = vcgeq_f64(*&v248[0].top, v60), a14 = vaddq_f64(v60, v64), v68 = vandq_s8(vcgeq_f64(a14, vaddq_f64(*&v248[0].top, v249)), v66), v67 = vdupq_laneq_s64(v68, 1), *&v65 = vandq_s8(v67, v68).u64[0], (*&v65 & 0x8000000000000000) == 0))
    {
      v228 = isa;
      v235 = &a7[3];
      v223 = &a7[2];
      v239 = this;
      v69 = v23;
      v23 = a7;
      v70 = a6;
      v71 = a4;
      v72 = v25;
      v73 = v52;
      v74 = v53;
      v75 = v21;
      v76 = v32;
      CA::OGL::clip_detached_rects(&v250, v248, v52, v32, v60, v64, v65, *v67.i64, *v66.i64, a14.f64[0], a15.f64[0], a16);
      v32 = v76;
      v21 = v75;
      v30 = v223;
      v31 = v235;
      LODWORD(v52) = v73;
      LODWORD(v25) = v72;
      a4 = v71;
      a6 = v70;
      a7 = v23;
      LODWORD(v23) = v69;
      this = v239;
      isa = v228;
      v53 = v74;
    }

    v50 = &v251;
    v51 = &v251.f64[1];
    v77 = vrndaq_f64(v250);
    if (vaddvq_f64(vaddq_f64(vabdq_f64(v250, v77), vabdq_f64(v251, vrndaq_f64(v251)))) < 0.004)
    {
      v78 = v251.f64[1];
      v79 = v251.f64[1] >= v251.f64[0] ? v251.f64[1] : v251.f64[0];
      if (v79 < 1.79769313e308)
      {
        if (v251.f64[1] > v251.f64[0])
        {
          v78 = v251.f64[0];
        }

        if (v78 > 0.0)
        {
          v80 = vsubq_f64(vrndaq_f64(vaddq_f64(v250, v251)), v77);
          v250 = v77;
          v251 = v80;
        }
      }
    }

    v81 = vrndaq_f64(*&v248[0].top);
    v27 = log;
    if (vaddvq_f64(vaddq_f64(vabdq_f64(*&v248[0].top, v81), vabdq_f64(v249, vrndaq_f64(v249)))) < 0.004)
    {
      v82 = v249.f64[1];
      v83 = v249.f64[1] >= v249.f64[0] ? v249.f64[1] : v249.f64[0];
      if (v83 < 1.79769313e308)
      {
        if (v249.f64[1] > v249.f64[0])
        {
          v82 = v249.f64[0];
        }

        if (v82 > 0.0)
        {
          v84 = vsubq_f64(vrndaq_f64(vaddq_f64(*&v248[0].top, v249)), v81);
          *&v248[0].top = v81;
          v249 = v84;
        }
      }
    }

    v85 = &v250;
    v38 = v248;
  }

  else
  {
    v85 = a6;
  }

  v86 = &v85->f64[1];
  if (v27 && (BYTE4(v27[36].isa) & 1) == 0)
  {
    v87 = v52 ^ HIDWORD(v27[4].isa);
    v88 = v27[1].isa;
    if ((v87 & 0x10F) != 0 || v88 != a4)
    {
      if (v88 != a4)
      {
        goto LABEL_109;
      }

      v89 = v27[2].isa;
    }

    else
    {
      v89 = v27[2].isa;
      if (v89 == a5)
      {
        if ((v52 & 0x40) != 0 || (v89 = a5, *&v27[20].isa == *v38) && (v89 = a5, *&v27[21].isa == *&v38[1]) && (v89 = a5, *&v27[22].isa == *&v38[2]) && (v89 = a5, *&v27[23].isa == *&v38[3]) && (v89 = a5, *&v27[16].isa == v85->f64[0]) && (v89 = a5, *&v27[17].isa == *v86) && (v89 = a5, *&v27[18].isa == v50->f64[0]) && (v89 = a5, *&v27[19].isa == *v51) && (v89 = a5, *&v27[12].isa == *a7) && (v89 = a5, *&v27[13].isa == *v32) && (v89 = a5, *&v27[14].isa == *v30) && (v89 = a5, *&v27[15].isa == *v31))
        {
          if (a17)
          {
            v26 = 0;
            *a17 = HIDWORD(v27[5].isa);
            goto LABEL_124;
          }

LABEL_310:
          v26 = 0;
          goto LABEL_124;
        }
      }
    }

    if (v89 == a5 && v87 <= 7 && (!v38 || *&v27[20].isa == *v38 && *&v27[21].isa == *&v38[1] && *&v27[22].isa == *&v38[2] && *&v27[23].isa == *&v38[3]) && (!v85 || *&v27[16].isa == v85->f64[0] && *&v27[17].isa == *v86 && *&v27[18].isa == v50->f64[0] && *&v27[19].isa == *v51))
    {
      v90 = 1.0;
      if (!a7 || *&v27[12].isa == *a7 && *&v27[13].isa == *v32 && *&v27[14].isa == *v30 && *&v27[15].isa == *v31)
      {
        v220 = 0;
        v117 = 1.0;
        if ((v52 & 0x40) == 0)
        {
          goto LABEL_274;
        }

        goto LABEL_281;
      }
    }
  }

LABEL_109:
  v53[3662] = 1;
  if (!a5)
  {
    v26 = 3;
    goto LABEL_124;
  }

  v219 = &v85->f64[1];
  v221 = v53;
  v224 = v51;
  v229 = v50;
  v240 = v85;
  (*(*this + 1888))(this, v30);
  if (a4 && *(a4 + 7) && (*(a5 + 236) & 0x2000000000) == 0)
  {
    (*(*a5 + 96))(a5);
  }

  v247 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v246 = _Q0;
  if (v27 && (v254 & 0x40) != 0)
  {
    v246 = *&v27[6].isa;
  }

  v236 = v38;
  v94 = (*(*this + 2488))(this, &v254, &v246, a5, v240, v38, &v247);
  v95 = (*(*a5 + 168))(a5);
  if (v95)
  {
    v96 = v95;
    IOSurfaceSetDetachModeCode();
    if (HIBYTE(xmmword_1ED4E97DC) != 1)
    {
      goto LABEL_122;
    }

    ID = IOSurfaceGetID(v96);
  }

  else
  {
    if ((HIBYTE(xmmword_1ED4E97DC) & 1) == 0)
    {
      goto LABEL_122;
    }

    ID = 0;
  }

  if (x_log_get_CADebug(void)::once != -1)
  {
    dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
  }

  v210 = x_log_get_CADebug(void)::log;
  if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_INFO))
  {
    if (v94 > 0x27)
    {
      v211 = "UNKNOWN";
    }

    else
    {
      v211 = CA::detach_string_display(CA::DisplayDetachReasonCode)::names[v94];
    }

    *v259 = 67109378;
    *&v259[4] = ID;
    LOWORD(v260) = 2080;
    *(&v260 + 2) = v211;
    _os_log_impl(&dword_183AA6000, v210, OS_LOG_TYPE_INFO, "[Display] Surface ID:0x%x detach result: %s", v259, 0x12u);
  }

LABEL_122:
  if (v94)
  {
    v26 = 7;
    goto LABEL_124;
  }

  v103 = v254;
  v104 = v254 & 0xBF800080;
  if ((v254 & 0xBF800080) == 0x80000000)
  {
    v105 = *(a5 + 16);
    v106 = CA::Render::fourcc_compressed_of_type(v105, 0, 0) == v105;
    v104 = 0x80000000;
  }

  else
  {
    v106 = 0;
  }

  v108 = v224;
  v107 = v229;
  v218 = v103 & 7;
  if (!v104 || v106)
  {
    if ((*(*this + 2472))(this))
    {
      v109 = *(v21 + 2);
      if (v109)
      {
        v110 = *(v109 + 104);
        if (v110)
        {
          if (*(v110 + 12) == 25)
          {
            *(v110 + 440) = 0;
          }
        }
      }

      if ((CA::WindowServer::IOMFBDisplay::exceeds_disp_bandwidth_limits_p(this, a5, v254, v240, v236) & 1) == 0)
      {
        ++*(a5 + 118);
        v90 = 1.0;
        v112 = v103 & 7;
        if ((v103 & 7) != 0)
        {
          if (BYTE2(xmmword_1ED4E982C) == 1)
          {
            CA::WindowServer::rotate_surface_log(a5, (v103 & 7), v111);
            v112 = v103 & 7;
          }

          v216 = 0;
          v220 = 0;
          v230 = 2 * v112;
        }

        else
        {
          v216 = 0;
          v220 = 0;
          v230 = 0;
        }

        v148 = a5;
        v117 = 1.0;
LABEL_263:
        v150 = log;
        if (!log)
        {
          v150 = x_new0<CA::WindowServer::IOMFBDisplay::DetachedLayer>();
        }

        v151 = v150;
        if (!v150->isa)
        {
          v152 = v21;
          if (!atomic_fetch_add(v21 + 2, 1u))
          {
            v152 = 0;
            atomic_fetch_add(v21 + 2, 0xFFFFFFFF);
          }

          v150->isa = v152;
        }

        v153 = v150[2].isa;
        if (v153)
        {
          CA::WindowServer::Surface::unref(v153);
        }

        ++*(a5 + 118);
        v151[2].isa = a5;
        v154 = v151[3].isa;
        if (v154)
        {
          CA::WindowServer::Surface::unref(v154);
        }

        v151[3].isa = v148;
        v27 = v151;
        HIDWORD(v151[5].isa) = v216;
        *&v151[6].isa = v246;
        LODWORD(v52) = v254;
        BYTE4(v151[36].isa) = (v254 >> 3) & 4 | BYTE4(v151[36].isa) & 0xF8;
        v53 = v221;
        v221[857] = v247;
        v38 = v236;
        v85 = v240;
        isa = v230;
        if ((v52 & 0x40) == 0)
        {
LABEL_274:
          v233 = isa;
          v222 = v53;
          *&v27[16].isa = *v85;
          v27[18].isa = *&v85[1].f64[0];
          v27[19].isa = *&v85[1].f64[1];
          *&v27[20].isa = *&v38->top;
          *&v27[22].isa = *&v38[2].top;
          v155 = *v85;
          v157 = v85[1].f64[0];
          v156 = v85[1].f64[1];
          *&v158 = v157;
          *(&v158 + 1) = v156;
          *&v27[24].isa = *v85;
          *&v27[26].isa = v158;
          *&v27[28].isa = *&v38->top;
          v160 = *&v38[2].top;
          v159 = &v27[24];
          *&v27[30].isa = v160;
          *&v27[8].isa = *a6;
          *&v27[10].isa = a6[1];
          *&v27[12].isa = *&a7->top;
          *&v27[14].isa = *&a7[2].top;
          DWORD1(v160) = HIDWORD(buf.f64[0]);
          v161 = v256;
          *&v27[32].isa = buf;
          *&v27[34].isa = v161;
          LODWORD(v27[4].isa) = v23;
          if (v27[3].isa == a5)
          {
LABEL_296:
            CA::Rect::round_center(&v27[24]);
            CA::Rect::round_center(&v27[28]);
            v163 = a17;
            if (v220)
            {
              *v159 = 0.0;
              v27[25].isa = 0;
              v171 = *(v27[3].isa + 7);
              v172.i64[0] = v171;
              v172.i64[1] = HIDWORD(v171);
              *&v27[26].isa = vcvtq_f64_u64(v172);
            }

            v53 = v222;
            v222[3662] = 1;
            LODWORD(v52) = v254;
            isa = v233;
LABEL_299:
            HIDWORD(v27[4].isa) = v52 & 0xFFFFFFBF;
            LODWORD(v27[5].isa) = isa;
            v173 = v27[1].isa;
            if (v173 != a4)
            {
              if (v173 && atomic_fetch_add(v173 + 2, 0xFFFFFFFF) == 1)
              {
                v174 = v53;
                (*(*v173 + 16))(v173);
                v53 = v174;
              }

              if (a4)
              {
                v175 = a4;
                if (!atomic_fetch_add(a4 + 2, 1u))
                {
                  v175 = 0;
                  atomic_fetch_add(a4 + 2, 0xFFFFFFFF);
                }
              }

              else
              {
                v175 = 0;
              }

              v27[1].isa = v175;
            }

            *(this + 3287) = v27;
            v53[856] = 1;
            if (v163)
            {
              v26 = 0;
              *v163 = HIDWORD(v27[5].isa);
              goto LABEL_124;
            }

            goto LABEL_310;
          }

          LODWORD(v160) = *(a5 + 14);
          LODWORD(v161) = *(a5 + 15);
          *&v160 = v160;
          *&v161 = v161;
          if ((v52 & 0x8000000) != 0)
          {
            v90 = *&v27[6].isa;
            v117 = *&v27[7].isa;
            v164 = v90 * v155.f64[0];
          }

          else
          {
            if (v90 == 1.0 && v117 == 1.0)
            {
              v162 = v155.f64[1];
LABEL_289:
              if ((v52 & 4) != 0)
              {
                v169 = v162 + v156;
                v162 = v155.f64[0];
                v170 = *&v161 - v169;
                *&v27[24].isa = *&v161 - v169;
                v27[25].isa = *&v155.f64[0];
                *&v27[26].isa = v156;
                *&v27[27].isa = v157;
                v167 = v157;
                v155.f64[0] = v170;
                v168 = *&v161;
              }

              else
              {
                v167 = v156;
                v156 = v157;
                v168 = *&v160;
                *&v160 = v161;
              }

              if ((v52 & 2) != 0)
              {
                *v159 = v168 - (v155.f64[0] + v156);
              }

              if (v52)
              {
                *&v27[25].isa = *&v160 - (v162 + v167);
              }

              goto LABEL_296;
            }

            v164 = v155.f64[0] * v90;
          }

          *&v161 = v117 * *&v161;
          *&v160 = v90 * *&v160;
          v162 = vmuld_lane_f64(v117, v155, 1);
          *&v27[24].isa = v164;
          *&v27[25].isa = v162;
          v157 = v157 * v90;
          v156 = v156 * v117;
          *&v27[26].isa = v157;
          *&v27[27].isa = v156;
          v155.f64[0] = v164;
          goto LABEL_289;
        }

LABEL_281:
        v163 = a17;
        goto LABEL_299;
      }

LABEL_226:
      v26 = 15;
      goto LABEL_124;
    }

    v103 = v254;
    v108 = v224;
    v107 = v229;
  }

  v113 = *(a5 + 14);
  v114 = *(a5 + 15);
  if ((v103 & 0x80) != 0)
  {
    if ((v103 & 0x40000000) != 0)
    {
      v120 = &log[16];
      if ((v103 & 0x40) == 0)
      {
        v120 = v240;
      }

      v121.f64[0] = *v120;
      v122 = log + 17;
      if ((v103 & 0x40) == 0)
      {
        v122 = v219;
      }

      *&v121.f64[1] = v122->isa;
      __asm { FMOV            V1.2D, #0.5 }

      buf = vrndmq_f64(vaddq_f64(v121, _Q1));
      v125 = &log[18];
      if (_ZF)
      {
        v125 = v107;
      }

      v126 = round(*v125);
      v127 = &log[19];
      if (_ZF)
      {
        v127 = v108;
      }

      v128 = round(*v127);
      *&v256 = v126;
      *(&v256 + 1) = v128;
    }

    v129 = &log[22];
    if ((v103 & 0x40) == 0)
    {
      v129 = v236 + 2;
    }

    v130 = *v129;
    v131 = &log[23];
    if ((v103 & 0x40) == 0)
    {
      v131 = v236 + 3;
    }

    v132 = *v131;
    v133 = &log[18];
    if ((v103 & 0x40) == 0)
    {
      v133 = v107;
    }

    v134 = &log[19];
    if ((v103 & 0x40) == 0)
    {
      v134 = v108;
    }

    if ((v103 & 4) != 0)
    {
      v135 = v132;
    }

    else
    {
      v135 = v130;
    }

    v115 = v135 / *v133;
    if ((v103 & 4) == 0)
    {
      v130 = v132;
    }

    v116 = v130 / *v134;
    v90 = v115;
    v117 = v116;
  }

  else
  {
    if ((v103 & 0x8000000) == 0)
    {
      goto LABEL_166;
    }

    v116 = *(&v246 + 1);
    v115 = *&v246;
    v90 = 1.0;
    if (*&v246 == 1.0)
    {
      v117 = 1.0;
      if (*(&v246 + 1) == 1.0)
      {
LABEL_166:
        v118 = *(v21 + 2);
        v117 = 1.0;
        if (v118)
        {
          v119 = *(v118 + 104);
          if (v119)
          {
            if (*(v119 + 12) == 25)
            {
              *(v119 + 440) = 0;
            }
          }
        }

        v90 = 1.0;
        goto LABEL_201;
      }
    }

    else
    {
      v117 = 1.0;
    }
  }

  v136 = *(v21 + 2);
  if (v136)
  {
    v137 = *(v136 + 104);
    if (v137)
    {
      if (*(v137 + 12) == 25)
      {
        *(v137 + 440) = 1;
      }
    }
  }

  if ((*(a5 + 240) & 0x20) != 0)
  {
    v26 = 17;
    goto LABEL_124;
  }

  v113 = vcvtad_u64_f64(v115 * v113);
  v114 = vcvtad_u64_f64(v116 * v114);
LABEL_201:
  if ((v103 & 4) != 0)
  {
    v138 = v113;
  }

  else
  {
    v138 = v114;
  }

  if ((v103 & 4) != 0)
  {
    v139 = v114;
  }

  else
  {
    v139 = v113;
  }

  if ((~v103 & 0x40000080) != 0)
  {
    goto LABEL_214;
  }

  v140 = &log[22];
  if ((v103 & 0x40) == 0)
  {
    v140 = v236 + 2;
  }

  v141 = *v140;
  v142 = &log[23];
  if ((v103 & 0x40) == 0)
  {
    v142 = v236 + 3;
  }

  v143 = *v142;
  if (v139 <= v141 && v138 <= v143)
  {
LABEL_214:
    v220 = 0;
  }

  else
  {
    if (v138 >= v143)
    {
      v138 = v143;
    }

    if (v139 >= v141)
    {
      v139 = v141;
    }

    v220 = 1;
  }

  v213 = *(a5 + 16);
  if (v247 == 2)
  {
    v139 = (v139 + 1) & 0xFFFFFFFE;
    v138 = (v138 + 1) & 0xFFFFFFFE;
    if (v236)
    {
      v225 = v139;
      v231 = v138;
      if (!(*(*this + 2496))(this))
      {
        goto LABEL_260;
      }

      v103 = v254;
      v138 = v231;
      v139 = v225;
    }
  }

  v226 = v139;
  v232 = v138;
  *v259 = 0;
  *&v260 = 0;
  *(&v260 + 1) = v139;
  v261 = v138;
  if (CA::WindowServer::IOMFBDisplay::exceeds_disp_bandwidth_limits_p(this, a5, v103, v259, v236))
  {
    goto LABEL_226;
  }

  if ((v254 & 8) != 0)
  {
    v144 = 768;
  }

  else
  {
    v144 = 256;
  }

  v145 = v144 | v218;
  v146 = v247 == 2 && (v254 & 0x12000000) == 0x10000000;
  v147 = v145 | 0x2000;
  if (!v146)
  {
    v147 = v145;
  }

  v216 = v147 & 0xFFFDFFFF | ((HIWORD(v254) & 1) << 17);
  if (log)
  {
    v148 = log[3].isa;
    if (v148)
    {
      if (log[2].isa == a5 && HIDWORD(log[5].isa) == v216 && *(v148 + 14) == v226 && *(v148 + 15) == v232 && *&log[6].isa == *&v246 && *&log[7].isa == *(&v246 + 1) && *&log[32].isa == buf.f64[0] && *&log[33].isa == buf.f64[1] && *&log[34].isa == *&v256 && *&log[35].isa == *(&v256 + 1) && (BYTE4(log[36].isa) & 2) == 0)
      {
        ++*(v148 + 118);
LABEL_432:
        v230 = 0;
        goto LABEL_263;
      }
    }
  }

  if (!(*(*this + 152))(this, *(a5 + 14), *(a5 + 15), v226, v232))
  {
LABEL_260:
    v26 = 4;
    goto LABEL_124;
  }

  if (v247 != 2)
  {
    goto LABEL_356;
  }

  if (v236)
  {
    if (v226 == v236[2] && v232 == v236[3])
    {
      v149 = *(v221 + 397);
      if (v149 == 1)
      {
        if (v213 == 875704438)
        {
          v166 = 875704950;
        }

        else
        {
          if (v213 != 875704422)
          {
            goto LABEL_356;
          }

          v166 = 875704934;
        }

        goto LABEL_355;
      }

      if (v149 == 2)
      {
        if (v213 > 875704933)
        {
          if (v213 == 875704950)
          {
LABEL_353:
            v166 = 875836534;
            goto LABEL_355;
          }

          if (v213 != 875704934)
          {
            goto LABEL_356;
          }
        }

        else if (v213 != 875704422)
        {
          if (v213 != 875704438)
          {
            goto LABEL_356;
          }

          goto LABEL_353;
        }

        v166 = 875836518;
LABEL_355:
        v213 = v166;
        goto LABEL_356;
      }

      if (v221[3686] == 1)
      {
        if (CADeviceUseCompression::once[0] != -1)
        {
          dispatch_once(CADeviceUseCompression::once, &__block_literal_global_17_12639);
        }

        if ((CADeviceUseCompression::enable_compression & 1) == 0)
        {
          if (v213 > 2016686639)
          {
            if (v213 > 2019963439)
            {
              if (v213 == 2019963440 || v213 == 2019963956)
              {
                goto LABEL_453;
              }

              v187 = 2019963442;
            }

            else
            {
              if (v213 == 2016686640 || v213 == 2016686642)
              {
                goto LABEL_453;
              }

              v187 = 2016687156;
            }
          }

          else
          {
            if (v213 <= 1953903151)
            {
              if (v213 != 1952854576 && v213 != 1952854578)
              {
                v187 = 1952855092;
                goto LABEL_452;
              }

LABEL_453:
              v213 = CA::Render::fourcc_packed_from_unpacked(v213);
              goto LABEL_356;
            }

            if (v213 == 1953903152 || v213 == 1953903154)
            {
              goto LABEL_453;
            }

            v187 = 1953903668;
          }

LABEL_452:
          if (v213 != v187)
          {
            goto LABEL_356;
          }

          goto LABEL_453;
        }
      }
    }
  }

  else if (log)
  {
    v165 = log[3].isa;
    if (v165)
    {
      if (*(log[2].isa + 16) == v213)
      {
        v166 = *(v165 + 16);
        goto LABEL_355;
      }
    }
  }

LABEL_356:
  v188 = (*(*a5 + 56))(a5);
  if ((v254 & 0x800000) != 0)
  {
    if ((*(this + 160) & 8) != 0)
    {
      v191 = 1999843442;
    }

    else
    {
      v191 = 1111970369;
    }

    v189 = 2;
    v190 = v221;
  }

  else
  {
    v189 = v188;
    v190 = v221;
    v191 = v213;
    if ((v254 & 0x1000000) != 0)
    {
      if (v247 == 2)
      {
        if ((*(this + 160) & 8) != 0)
        {
          v191 = 1885745712;
        }

        else
        {
          v191 = 875704422;
        }
      }

      else
      {
        v191 = 1111970369;
      }

      v189 = 4;
    }
  }

  if (v190[3686] != 1)
  {
    goto LABEL_372;
  }

  if (CADeviceUseCompression::once[0] != -1)
  {
    v215 = v191;
    v212 = v189;
    dispatch_once(CADeviceUseCompression::once, &__block_literal_global_17_12639);
    v189 = v212;
    v191 = v215;
  }

  if (CADeviceUseCompression::enable_compression == 1)
  {
LABEL_372:
    if (v191 > 1885746227)
    {
      if (((v191 - 1886676528) > 4 || ((1 << (v191 - 48)) & 0x15) == 0) && ((v191 - 1886680624) > 4 || ((1 << (v191 - 48)) & 0x15) == 0))
      {
        v192 = 13364;
        goto LABEL_381;
      }
    }

    else if (v191 <= 1882469427)
    {
      if (v191 != 1882468912)
      {
        v193 = 1882468914;
LABEL_386:
        if (v191 != v193)
        {
          goto LABEL_388;
        }
      }
    }

    else if (v191 != 1882469428 && v191 != 1885745712)
    {
      v192 = 12850;
LABEL_381:
      v193 = v192 | 0x70660000;
      goto LABEL_386;
    }

    v194 = v189;
    LODWORD(v191) = CA::Render::fourcc_unpacked_from_packed(v191);
    v189 = v194;
  }

LABEL_388:
  if ((v254 & 0x4000000) != 0)
  {
    v247 = 0;
    v189 = 2;
    LODWORD(v191) = 1999843442;
  }

  if (((v191 == 1999843442) & (v254 >> 25)) != 0)
  {
    v195 = 2019964016;
  }

  else
  {
    v195 = v191;
  }

  if (((v191 == 1999843442) & (v254 >> 25)) != 0)
  {
    v196 = 4;
  }

  else
  {
    v196 = v189;
  }

  v214 = v196;
  if ((v254 & 0x20000000) != 0)
  {
    v195 = CA::Render::fourcc_422_from_420(v195);
  }

  if (CA::Render::fourcc_is_420(v195) && (*(*this + 2352))(this, v226))
  {
    v195 = CA::Render::fourcc_422_from_420(v195);
  }

  if ((v254 & 0x80000000) != 0)
  {
    v197 = CA::Render::fourcc_compressed_of_type(v195, 0, 0);
  }

  else
  {
    v197 = (*(*this + 2480))(this, v195, v226, 2);
  }

  v198 = v197;
  if ((v197 == 1380411457 || v197 == 642934849) && CA::WindowServer::Display::edr_headroom(this) > 1.0 && (CA::ScalerUtil::ScalerLimits::limits(v199), HIBYTE(dword_1EA84FDCC) != 1))
  {
    v26 = 12;
  }

  else if (a4 && (*(a4 + 15) & 0x10) != 0)
  {
    v26 = 13;
  }

  else
  {
    v200 = (*(*a5 + 24))(a5);
    v201 = (*(*a5 + 232))(a5);
    surface = CA::WindowServer::Display::allocate_surface(this, v226, v232, v198, v200, v214, 0, v201, @"CA MSR Intermediate", 0);
    if (surface)
    {
      v148 = surface;
      v216 |= (*(a5 + 236) >> 23) & 0x4000;
      pthread_mutex_lock((this + 25848));
      v204 = v221;
      v205 = (this + 48 * *v221);
      if (!v205[6484])
      {
        CA::IOMobileFramebuffer::swap_begin((this + 25696), v205 + 6484);
        v204 = v221;
      }

      *(v204 + 58) = 0;
      if ((v254 & 0x10000000) != 0 && (v206 = *(v21 + 2)) != 0 && (v207 = *(v206 + 104)) != 0 && *(v207 + 12) == 25)
      {
        CA::Render::ImageQueue::retain_scaler_stats(&v245, v207);
        v208 = v245;
        if (v245)
        {
          *(v245 + 12) = *(a5 + 248);
        }
      }

      else
      {
        v208 = 0;
      }

      if (v220)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = 0;
      }

      v234 = v208;
      v227 = CA::WindowServer::IOMFBDisplay::copy_surface(this, v148, a5, v216, 0, 0, p_buf, v208, v203);
      if (v227)
      {
        v26 = 12;
      }

      else
      {
        CA::WindowServer::Surface::unref(v148);
        v26 = 6;
      }

      if (v234 && atomic_fetch_add(v234 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v234 + 8))(v234);
      }

      pthread_mutex_unlock((this + 25848));
      if (v227)
      {
        goto LABEL_432;
      }
    }

    else
    {
      v26 = 5;
    }
  }

LABEL_124:
  if (a5)
  {
    v97 = (*(*a5 + 168))(a5);
    if (v97)
    {
      v98 = v97;
      IOSurfaceSetDetachModeCode();
      if ((HIBYTE(xmmword_1ED4E97DC) & 1) == 0)
      {
        goto LABEL_131;
      }

      v99 = IOSurfaceGetID(v98);
    }

    else
    {
      if ((HIBYTE(xmmword_1ED4E97DC) & 1) == 0)
      {
        goto LABEL_131;
      }

      v99 = 0;
    }

    v100 = *(a5 + 16);
  }

  else
  {
    if ((HIBYTE(xmmword_1ED4E97DC) & 1) == 0)
    {
      goto LABEL_131;
    }

    v99 = 0;
    v100 = 0;
  }

  if (x_log_get_CADebug(void)::once != -1)
  {
    dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
  }

  loga = x_log_get_CADebug(void)::log;
  if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_INFO))
  {
    v176 = HIBYTE(v100);
    v177 = MEMORY[0x1E69E9830];
    v241 = v99;
    if (v100 < 0)
    {
      v178 = __maskrune(v176, 0x40000uLL);
      v177 = MEMORY[0x1E69E9830];
    }

    else
    {
      v178 = *(MEMORY[0x1E69E9830] + 4 * v176 + 60) & 0x40000;
    }

    v179 = v100 >> 24;
    if (!v178)
    {
      v179 = 32;
    }

    v238 = v179;
    if (BYTE2(v100) <= 0x7Fu)
    {
      v180 = *(v177 + 4 * BYTE2(v100) + 60) & 0x40000;
    }

    else
    {
      v180 = __maskrune(BYTE2(v100), 0x40000uLL);
      v177 = MEMORY[0x1E69E9830];
    }

    v181 = SBYTE2(v100);
    if (!v180)
    {
      v181 = 32;
    }

    v237 = v181;
    if (BYTE1(v100) <= 0x7Fu)
    {
      v182 = *(v177 + 4 * BYTE1(v100) + 60) & 0x40000;
    }

    else
    {
      v182 = __maskrune(BYTE1(v100), 0x40000uLL);
      v177 = MEMORY[0x1E69E9830];
    }

    if (v182)
    {
      v183 = SBYTE1(v100);
    }

    else
    {
      v183 = 32;
    }

    if (v100 <= 0x7Fu)
    {
      v184 = *(v177 + 4 * v100 + 60) & 0x40000;
    }

    else
    {
      v184 = __maskrune(v100, 0x40000uLL);
    }

    v185 = CA::detach_string_server(CA::ServerDetachReasonCode)::names[v26];
    v186 = v100;
    LODWORD(buf.f64[0]) = 67110402;
    HIDWORD(buf.f64[0]) = v241;
    if (!v184)
    {
      v186 = 32;
    }

    LOWORD(buf.f64[1]) = 1024;
    *(&buf.f64[1] + 2) = v238;
    HIWORD(buf.f64[1]) = 1024;
    LODWORD(v256) = v237;
    WORD2(v256) = 1024;
    *(&v256 + 6) = v183;
    WORD5(v256) = 1024;
    HIDWORD(v256) = v186;
    v257 = 2080;
    v258 = v185;
    _os_log_impl(&dword_183AA6000, loga, OS_LOG_TYPE_INFO, "[Server] Surface ID:0x%x format:%c%c%c%c detach result: %s", &buf, 0x2Au);
  }

LABEL_131:
  if (v26 >= 3)
  {
    CA::WindowServer::IOMFBDisplay::delete_detached_layer(this);
  }

  if (v21 && !a5 && !a4 && !a6 && !a7)
  {
    if (a3)
    {
      v101 = 0;
    }

    else
    {
      v101 = v25;
    }

    if (*(v21 + 5) && v101 && (*(*this + 536))(this))
    {
      *(v21 + 13) |= 8uLL;
    }
  }

  return v26 == 0;
}

void CA::WindowServer::IOMFBDisplay::delete_detached_layer(CA::WindowServer::IOMFBDisplay *this)
{
  v1 = *(this + 3287);
  if (v1)
  {
    CA::WindowServer::IOMFBDisplay::release_detached_handle(*(this + 3287));
    v3 = v1[1];
    if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      CA::WindowServer::Surface::unref(v4);
    }

    v5 = v1[3];
    if (v5)
    {
      CA::WindowServer::Surface::unref(v5);
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v1);
    *(this + 3287) = 0;
    *(this + 29494) = 1;
    *(this + 26688) = *(this + 26690);
  }
}

uint64_t CA::OGL::VariableBlurFilter::get_edge_info(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float32x2_t *a6)
{
  v7 = *(*(a4 + 656) + 24);
  if ((*(v7 + 144) & 0x10) != 0)
  {
    v8 = vaddvq_f64(vmulq_f64(*v7, *v7));
    v9 = vaddvq_f64(vmulq_f64(*(v7 + 32), *(v7 + 32)));
    v10 = *(v7 + 120);
    if (v10 != 1.0)
    {
      v11 = 1.0 / (v10 * v10);
      v8 = v11 * v8;
      v9 = v11 * v9;
    }

    v12 = v8 != 1.0;
    if (v9 != 1.0)
    {
      v12 = 1;
    }

    v13 = sqrt(v8);
    v14 = sqrt(v9);
    if (v12)
    {
      v9 = v14;
      v8 = v13;
    }

    v18 = v9;
    v19 = v8;
  }

  else
  {
    v19 = *(v7 + 128);
    v18 = v19;
  }

  v15 = CA::Render::KeyValueArray::get_float_key(*(a2 + 40), 400, 0.0) * 5.5999999;
  v16.f64[0] = v19;
  v16.f64[1] = v18;
  *a6 = vmul_n_f32(vcvt_f32_f64(v16), v15);
  return 0;
}

uint64_t draw_rects(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Info = CGContextDelegateGetInfo();
  CGGStateGetStyle();
  Color = CGStyleGetColor();
  CompositeOperation = CGGStateGetCompositeOperation();
  CACGContextEvaluator::update_with_color(Info, Color, CompositeOperation, a3);
  if (a4 <= 4)
  {
    if (a4 == 2 || (FillColor = CGGStateGetFillColor(), v15 = CGGStateGetCompositeOperation(), CACGContextEvaluator::update_with_color(Info, FillColor, v15, a3), (a4 - 2) <= 2))
    {
      StrokeColor = CGGStateGetStrokeColor();
      v17 = CGGStateGetCompositeOperation();
      CACGContextEvaluator::update_with_color(Info, StrokeColor, v17, a3);
    }
  }

  *(Info + 78) |= CGGStateGetStyle() != 0;
  v18 = *(CGContextDelegateGetInfo() + 48);

  return MEMORY[0x1EEDB93B0](v18, a2, a3, a4, a5, a6);
}

_DWORD *CA::OGL::QuadNode::retain_surface(CA::OGL::QuadNode *this, float *a2, unsigned int a3)
{
  v3 = *(this + 10);
  if ((*(v3 + 144) & 0x1F) == 0 && *(v3 + 96) == 0.0 && *(v3 + 104) == 0.0 && (*(this + 239) & 2) != 0)
  {
    return (*(**(this + 3) + 80))(*(this + 3), a2);
  }

  else
  {
    return CA::OGL::ImagingNode::retain_surface(this, a2, a3);
  }
}

CA::Render::ShapeLayer *CA::Render::ShapeLayer::ShapeLayer(CA::Render::ShapeLayer *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 51;
  ++dword_1ED4EAB04;
  *v4 = &unk_1EF1F6830;
  *(this + 2) = CA::Render::Decoder::decode_object(a2, 38);
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 3) = 0;
  CA::Render::Decoder::decode_bytes(a2, this + 24, 0x14uLL);
  v5 = CA::Render::Decoder::decode_object(a2, 39);
  *(this + 7) = 0;
  *(this + 6) = v5;
  *(this + 8) = 0;
  *(this + 18) = 0;
  CA::Render::Decoder::decode_bytes(a2, this + 56, 0x14uLL);
  *(this + 10) = CA::Render::Decoder::decode_object(a2, 39);
  *(this + 11) = CA::Render::Decoder::decode_cgfloat(a2);
  *(this + 12) = CA::Render::Decoder::decode_cgfloat(a2);
  *(this + 13) = CA::Render::Decoder::decode_cgfloat(a2);
  *(this + 14) = CA::Render::Decoder::decode_cgfloat(a2);
  *(this + 15) = CA::Render::Decoder::decode_cgfloat(a2);
  *(this + 16) = CA::Render::Decoder::decode_object(a2, 62);
  v6 = CA::Render::Decoder::decode_int8(a2);
  if (v6 >= 2)
  {
    CA::Render::Decoder::set_fatal_error(a2, "%s - enum %u out of range of %u", "decode_int8_enum", v6, 2);
    LOBYTE(v6) = 0;
  }

  *(this + 136) = v6;
  v7 = CA::Render::Decoder::decode_int8(a2);
  if (v7 >= 3)
  {
    CA::Render::Decoder::set_fatal_error(a2, "%s - enum %u out of range of %u", "decode_int8_enum", v7, 3);
    LOBYTE(v7) = 0;
  }

  *(this + 137) = v7;
  v8 = CA::Render::Decoder::decode_int8(a2);
  if (v8 >= 3)
  {
    CA::Render::Decoder::set_fatal_error(a2, "%s - enum %u out of range of %u", "decode_int8_enum", v8, 3);
    LOBYTE(v8) = 0;
  }

  *(this + 138) = v8;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0x3FF0000000000000;
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-shape-layer.cpp", 481);
  return this;
}

uint64_t CA::Render::Path::decode(CA::Render::Path *this, CA::Render::Decoder *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v28 = 0uLL;
  v3 = CA::Render::Decoder::decode_int32(this);
  __dst = 0u;
  v27 = 0u;
  CA::Render::Decoder::decode_bytes(this, &__dst, 0x20uLL);
  CA::Render::Decoder::decode_bytes(this, &v28, 0x10uLL);
  v4 = CA::Render::Decoder::decode_size_t(this);
  v5 = CA::Render::Decoder::decode_int32(this);
  v6 = CA::Render::Decoder::decode_int32(this);
  v7 = CA::Render::Decoder::decode_int32(this);
  v8 = 0;
  if (!HIBYTE(v5) && !HIBYTE(v6))
  {
    v9 = v7;
    if (!BYTE3(v7))
    {
      v10 = v5;
      if (v5 > 0x1000)
      {
        v12 = malloc_type_malloc(v5, 0x100004077774924uLL);
        v11 = v12;
      }

      else
      {
        MEMORY[0x1EEE9AC00](v7);
        v11 = &v21 - ((v5 + 15) & 0x1FFFFFFF0);
        bzero(v11, v5);
      }

      if (v6 > 0x100)
      {
        v14 = malloc_type_malloc(16 * v6, 0x1000040451B5BE8uLL);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v12);
        v14 = (&v21 - v13);
        bzero(&v21 - v13, v15);
      }

      v8 = 0;
      if (v11 && v14)
      {
        v22 = v3;
        v23 = v9;
        v24 = v4;
        CA::Render::Decoder::decode_bytes(this, v11, v5);
        CA::Render::Decoder::decode_cgfloat(this, v14, 2 * v6);
        v25 = v11;
        v16 = 0;
        if (v5)
        {
          do
          {
            v17 = *v11;
            if (v17 >= 5)
            {
              CA::Render::Decoder::set_fatal_error(this, "%s - unexpected path type %u", "decode", v17);
              v17 = 0u;
              *v11 = 0;
            }

            v16 += CA::Render::path_counts[v17];
            ++v11;
            --v10;
          }

          while (v10);
        }

        if (v16 == v6)
        {
          v11 = v25;
          v18 = CA::Render::Path::new_path(v24, v5, v25, v6, v14, v23);
          v8 = v18;
          if (v18)
          {
            *(v18 + 12) |= v22 << 8;
            v19 = v27;
            *(v18 + 56) = __dst;
            *(v18 + 72) = v19;
            *(v18 + 88) = v28;
          }
        }

        else
        {
          CA::Render::Decoder::set_fatal_error(this, "%s - expected %u points, but decoded %u points", "decode", v16, v6);
          v8 = 0;
          v11 = v25;
        }
      }

      if (v11 && v5 > 0x1000)
      {
        free(v11);
      }

      if (v14 && v6 >= 0x101)
      {
        free(v14);
      }

      CA::Render::Decoder::decode_sanity_check(this, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-path.cpp", 1513);
    }
  }

  return v8;
}

void anonymous namespace::make_buffer_volatile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    if ((*(v2 + 13) & 4) == 0 && CA::Render::Shmem::set_volatile(*(a2 + 16), 1u, *(a1 + 488)))
    {
      if ((*(v2 + 12) & 0x80000000) != 0)
      {
        os_unfair_lock_lock(&CA::Render::Encoder::ObjectCache::_lock);
        v3 = CA::Render::Encoder::ObjectCache::_cache_list;
        if (CA::Render::Encoder::ObjectCache::_cache_list)
        {
          do
          {
            v4 = *v3;
            v5 = x_hash_table_remove(*(*v3 + 8), v2);
            v6 = v5;
            if (v5)
            {
              v7 = *(v4 + 24);
              if (!v7)
              {
                v7 = x_hash_table_new_(0, 0, 0, 0, 0, 0);
                *(v4 + 24) = v7;
              }

              hash_table_modify(v7, v2, v6, 0);
              v8 = *(v4 + 32);
              if (!v8)
              {
                v8 = x_hash_table_new_(0, 0, 0, 0, 0, 0);
                *(v4 + 32) = v8;
              }

              hash_table_modify(v8, v2, v6, 0);
            }

            v3 = v3[1];
          }

          while (v3);
        }

        os_unfair_lock_unlock(&CA::Render::Encoder::ObjectCache::_lock);
        marked_volatile = 1;
      }

      CA::Render::post_notification(0xBu, v2, 0, 0);
    }
  }

  else
  {
    v9 = *(a2 + 24);
    if (v9 && (*(v9 + 68) & 1) == 0)
    {

      CA::CG::AccelDrawable::set_volatile(v9, 1);
    }
  }
}

uint64_t CASUpdateClient(int a1, CA::Render::Context *this, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v10 = CA::Render::Context::context_by_id(this);
  if (v10)
  {
    v11 = v10;
    CA::Render::Context::will_commit(v10);
    if (a4 != 0.0)
    {
      CA::Render::Context::add_input_time(v11, a4);
    }

    CA::Render::Context::did_commit(v11, 1, *&a3, 0, a5, a6);
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v11 + 16))(v11);
    }
  }

  return 0;
}

uint64_t _XUpdateClient(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 60)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 60) && *(result + 64) > 0x1Fu)
    {
      result = CASUpdateClient(*(result + 12), *(result + 32), *(result + 36), *(result + 52), *(result + 44), *(result + 48));
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t CA::Render::Path::new_path(uint64_t a1, unsigned int a2, unsigned __int8 *a3, unsigned int a4, double *a5, int a6)
{
  if (!a1 || !CA::Render::Path::_path_table)
  {
    goto LABEL_24;
  }

  os_unfair_lock_lock(&CA::Render::Path::_path_lock);
  v12 = x_hash_table_lookup(CA::Render::Path::_path_table, a1, 0);
  if (!v12)
  {
LABEL_23:
    os_unfair_lock_unlock(&CA::Render::Path::_path_lock);
    goto LABEL_24;
  }

  v13 = v12;
  if (!atomic_fetch_add((v12 + 8), 1u))
  {
    atomic_fetch_add((v12 + 8), 0xFFFFFFFF);
    goto LABEL_23;
  }

  if (*(v12 + 20) == a2 && *(v12 + 24) == a4 && *(v12 + 16) == a6)
  {
    v14 = 0;
    if (a2)
    {
      while (*(*(v12 + 40) + v14) == a3[v14])
      {
        if (a2 == ++v14)
        {
          goto LABEL_13;
        }
      }
    }

    if (v14 == a2)
    {
LABEL_13:
      v15 = 0;
      if (a4)
      {
        v16 = (*(v12 + 32) + 8);
        v17 = a5 + 1;
        while (*(v16 - 1) == *(v17 - 1) && *v16 == *v17)
        {
          ++v15;
          v16 += 2;
          v17 += 2;
          if (a4 == v15)
          {
            goto LABEL_35;
          }
        }
      }

      if (v15 == a4)
      {
        goto LABEL_35;
      }
    }
  }

  os_unfair_lock_unlock(&CA::Render::Path::_path_lock);
  if (atomic_fetch_add((v13 + 8), 0xFFFFFFFF) == 1)
  {
    (*(*v13 + 16))(v13);
  }

LABEL_24:
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v18 = malloc_type_zone_malloc(malloc_zone, a2 + 16 * a4 + 161, 0x10F10403F876FEAuLL);
  v13 = v18;
  if (v18)
  {
    v18[2] = 1;
    v18[3] = 38;
    ++dword_1ED4EAAD0;
    *v18 = &unk_1EF1FBE10;
    v18[4] = a6;
    v18[5] = a2;
    v18[6] = a4;
    v19 = &v18[4 * a4 + 40];
    *(v13 + 32) = v13 + 160;
    *(v13 + 40) = v19;
    *(v13 + 48) = a1;
    *(v13 + 104) = 0;
    *(v13 + 112) = 0;
    if (a3)
    {
      memcpy(v19, a3, a2);
      *(*(v13 + 40) + a2) = 5;
    }

    if (a5)
    {
      memcpy(*(v13 + 32), a5, 16 * a4);
    }

    if (a1)
    {
      os_unfair_lock_lock(&CA::Render::Path::_path_lock);
      v20 = CA::Render::Path::_path_table;
      if (!CA::Render::Path::_path_table)
      {
        v20 = x_hash_table_new_(0, 0, 0, 0, 0, 0);
        CA::Render::Path::_path_table = v20;
      }

      hash_table_modify(v20, *(v13 + 48), v13, 0);
LABEL_35:
      os_unfair_lock_unlock(&CA::Render::Path::_path_lock);
    }
  }

  return v13;
}

BOOL CA::Render::iosurface_size_supported(CA::Render *this, unsigned int a2)
{
  v3 = this;
  if (this <= 0x800 && a2 < 0x801)
  {
    return 1;
  }

  if (CA::Render::iosurface_max_once[0] != -1)
  {
    dispatch_once_f(CA::Render::iosurface_max_once, 0, CA::Render::iosurface_max_init);
  }

  return CA::Render::iosurface_max_width >= v3 && CA::Render::iosurface_max_height >= a2;
}

double CA::Render::Decoder::decode_cgfloat(CA::Render::Decoder *this)
{
  if (*(this + 64))
  {
    return COERCE_DOUBLE(CA::Render::Decoder::decode_int64(this));
  }

  else
  {
    return COERCE_FLOAT(CA::Render::Decoder::decode_int32(this));
  }
}

CA::Render::Texture *CA::Render::anonymous namespace::create_image_from_iosurface(CA::Render::_anonymous_namespace_ *this, CGImage *a2, IOSurfaceRef buffer, unsigned int a4, __IOSurface *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x800) != 0)
  {
    return 0;
  }

  v6 = a2;
  Width = IOSurfaceGetWidth(buffer);
  Height = IOSurfaceGetHeight(buffer);
  if (!CA::Render::iosurface_size_supported(Width, Height))
  {
    return 0;
  }

  if (!CA::Render::is_iosurface_aligned(buffer, v10))
  {
    if (BYTE9(ca_debug_options) == 1)
    {
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v23 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        v24 = 134218240;
        v25 = this;
        v26 = 1024;
        ID = IOSurfaceGetID(buffer);
        _os_log_error_impl(&dword_183AA6000, v23, OS_LOG_TYPE_ERROR, "copied CGImageRef %p - bad alignment for IOSurface 0x%x\n", &v24, 0x12u);
      }
    }

    return 0;
  }

  if (CGImageGetDecode(this))
  {
    return 0;
  }

  if (CGImageGetMask())
  {
    return 0;
  }

  if (CGImageGetMatte())
  {
    return 0;
  }

  if (CGImageGetMaskingColors())
  {
    return 0;
  }

  ColorSpace = CGImageGetColorSpace(this);
  v12 = ColorSpace;
  if (ColorSpace)
  {
    if (CGColorSpaceGetModel(ColorSpace) > kCGColorSpaceModelRGB)
    {
      return 0;
    }
  }

  PixelFormat = IOSurfaceGetPixelFormat(buffer);
  HasAlpha = CGImageHasAlpha();
  if (PixelFormat > 1279342647)
  {
    if (PixelFormat <= 1647534391)
    {
      if (PixelFormat > 1380410944)
      {
        if (PixelFormat != 1380410945)
        {
          if (PixelFormat == 1380411457)
          {
            if (HasAlpha)
            {
              v17 = 13;
            }

            else
            {
              v17 = 17;
            }

            goto LABEL_55;
          }

          goto LABEL_72;
        }

        v17 = 14;
        goto LABEL_55;
      }

      if (PixelFormat == 1279342648)
      {
LABEL_50:
        v18 = HasAlpha == 0;
        v19 = 18;
        goto LABEL_52;
      }

      if (PixelFormat == 1380401729)
      {
        v18 = HasAlpha == 0;
        v19 = 11;
        goto LABEL_52;
      }
    }

    else if (PixelFormat <= 1999843441)
    {
      if (PixelFormat == 1647534392)
      {
        v17 = 35;
        goto LABEL_55;
      }

      if (PixelFormat == 1815491698)
      {
        v18 = HasAlpha == 0;
        v19 = 21;
        goto LABEL_52;
      }
    }

    else
    {
      switch(PixelFormat)
      {
        case 1999843442:
          v17 = 33;
          goto LABEL_55;
        case 1999908961:
          v17 = 34;
          goto LABEL_55;
        case 2037741171:
          v17 = 7;
          goto LABEL_55;
      }
    }

LABEL_72:
    v17 = -1;
    goto LABEL_55;
  }

  if (PixelFormat <= 1093677111)
  {
    if (PixelFormat <= 843264309)
    {
      if (PixelFormat == 32)
      {
        if (HasAlpha)
        {
          v17 = 0;
        }

        else
        {
          v17 = 2;
        }

        goto LABEL_55;
      }

      if (PixelFormat != 843264104)
      {
        goto LABEL_72;
      }

      v17 = 28;
      goto LABEL_55;
    }

    if (PixelFormat == 843264310)
    {
      v17 = 27;
      goto LABEL_55;
    }

    if (PixelFormat == 846624121)
    {
      v17 = 6;
      goto LABEL_55;
    }

    goto LABEL_72;
  }

  if (PixelFormat <= 1278226487)
  {
    if (PixelFormat != 1093677112)
    {
      if (PixelFormat == 1111970369)
      {
        if (HasAlpha)
        {
          v17 = 1;
        }

        else
        {
          v17 = 3;
        }

        goto LABEL_55;
      }

      goto LABEL_72;
    }

    goto LABEL_51;
  }

  if (PixelFormat == 1278226488)
  {
LABEL_51:
    v18 = (v6 & 2) == 0;
    v19 = 9;
LABEL_52:
    if (v18)
    {
      v17 = v19 + 1;
    }

    else
    {
      v17 = v19;
    }

    goto LABEL_55;
  }

  if (PixelFormat != 1278555445)
  {
    if (PixelFormat != 1279340600)
    {
      goto LABEL_72;
    }

    goto LABEL_50;
  }

  v17 = 5;
LABEL_55:
  IsPQBased = CGColorSpaceIsPQBased(v12);
  v21 = X::Allocator0::operator new(0x178uLL);
  v15 = v21;
  if (v21)
  {
    if (IsPQBased)
    {
      v22 = 3;
    }

    else
    {
      v22 = 1;
    }

    CA::Render::Surface::Surface(v21, buffer, v17, v22, 0x10000, 0, 0);
  }

  if (!*(v15 + 7) || (CGColorSpaceContainsFlexGTCInfo() & 1) == 0)
  {
    CA::Render::Texture::set_colorspace(v15, v12);
  }

  return v15;
}

CA::Render::SDFElementLayer *CA::Render::SDFElementLayer::SDFElementLayer(CA::Render::SDFElementLayer *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 47;
  ++dword_1ED4EAAF4;
  *v4 = &unk_1EF1FEAC8;
  *(v4 + 6) = 1065353216;
  v5 = CA::Render::Decoder::decode_int8(a2);
  if (v5 >= 2)
  {
    CA::Render::Decoder::set_fatal_error(a2, "%s - enum %u out of range of %u", "decode_int8_enum", v5, 2);
    LOBYTE(v5) = 0;
  }

  *(this + 16) = v5;
  v6 = CA::Render::Decoder::decode_int8(a2);
  if (v6 >= 2)
  {
    CA::Render::Decoder::set_fatal_error(a2, "%s - enum %u out of range of %u", "decode_int8_enum", v6, 2);
    LOBYTE(v6) = 0;
  }

  *(this + 17) = v6;
  *(this + 5) = CA::Render::Decoder::decode_int32(a2);
  *(this + 6) = CA::Render::Decoder::decode_int32(a2);
  *(this + 7) = CA::Render::Decoder::decode_int32(a2);
  *(this + 32) = CA::Render::Decoder::decode_int8(a2) != 0;
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-sdf-layer.cpp", 1641);
  return this;
}

void CAImageQueueCommit::~CAImageQueueCommit(CAImageQueueCommit *this)
{
  v2 = (*(**(this + 1) + 32))(*(this + 1));
  CA::Render::Encoder::send_message((this + 4120), v2, 0, 0, 0);
  (***(this + 1))();
  CA::Render::Encoder::~Encoder((this + 4120));
  x_heap_free(*(this + 2));
}

BOOL CA::ScalerUtil::has_capability(CA::ScalerUtil *this, const __CFString *a2)
{
  if (CA::ScalerUtil::get_io_service(void)::once != -1)
  {
    dispatch_once(&CA::ScalerUtil::get_io_service(void)::once, &__block_literal_global_77);
  }

  if (!CA::ScalerUtil::get_io_service(void)::scaler_service)
  {
    return 0;
  }

  v3 = IORegistryEntrySearchCFProperty(CA::ScalerUtil::get_io_service(void)::scaler_service, "IOService", @"IOSurfaceAcceleratorCapabilitiesDict", 0, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  v7 = v5 == CFDictionaryGetTypeID() && (Value = CFDictionaryGetValue(v4, this)) != 0 && CA_CFBoolValue(Value);
  CFRelease(v4);
  return v7;
}

CA::Render::SDFLayer *CA::Render::SDFLayer::SDFLayer(CA::Render::SDFLayer *this, CA::Render::Decoder *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 48;
  ++dword_1ED4EAAF8;
  *v4 = &unk_1EF1FE9C0;
  *(v4 + 20) = 0;
  v9[0] = 0;
  v5 = CA::Render::Decoder::decode_data(a2, v4 + 24, 0x70uLL, v9, 0x70uLL);
  if (!v5 || v9[0] != 112)
  {
    CA::Render::Decoder::set_fatal_error(a2, "%s - %p, size = %zu, expected = %zu", "SDFLayer", v5, v9[0], 0x70uLL);
  }

  v6 = CA::Render::Decoder::decode_int8(a2);
  if (v6 >= 9)
  {
    CA::Render::Decoder::set_fatal_error(a2, "%s - enum %u out of range of %u", "decode_int8_enum", v6, 9);
    LOBYTE(v6) = 0;
  }

  *(this + 136) = v6;
  *(this + 35) = CA::Render::Decoder::decode_int32(a2);
  *(this + 36) = CA::Render::Decoder::decode_int32(a2);
  *(this + 37) = CA::Render::Decoder::decode_int32(a2);
  *(this + 152) = CA::Render::Decoder::decode_int8(a2) != 0;
  *(this + 2) = CA::Render::Decoder::decode_size_t(a2);
  if (*(this + 136) == 3)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v7 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x38uLL, 0xDEEC3011uLL);
    if (v7)
    {
      v7 = CA::Render::Gradient::Gradient(v7, a2);
    }

    *(this + 3) = v7;
    *(this + 4) = 0;
  }

  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-sdf-layer.cpp", 1359);
  return this;
}

BOOL __CADeviceSupportsFilmGrain_block_invoke(uint64_t a1, const __CFString *a2)
{
  result = CA::ScalerUtil::has_capability(@"IOSurfaceAcceleratorCapabilitiesFilmGrain", a2);
  CADeviceSupportsFilmGrain::has_capability = result;
  return result;
}

CA::Render::MatchPropertyAnimation *CA::Render::MatchPropertyAnimation::MatchPropertyAnimation(CA::Render::MatchPropertyAnimation *this, CA::Render::Decoder *a2)
{
  matched = CA::Render::MatchAnimation::MatchAnimation(this, a2);
  *(matched + 12) = 33;
  ++dword_1ED4EAABC;
  *matched = &unk_1EF200BF0;
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-match-animation.cpp", 469);
  return this;
}

void CA::WindowServer::Surface::unref(CA::WindowServer::Surface *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(this + 59) - 1;
  --*(this + 118);
  if (v1)
  {
    return;
  }

  v3 = *(this + 10);
  if (v3)
  {
    v3(this, *(this + 9));
    *(this + 10) = 0;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    goto LABEL_27;
  }

  v5 = *(this + 236);
  if ((v5 & 0x6000000) == 0)
  {
    v9 = *(this + 61);
    if (v9 == 1)
    {
      os_unfair_lock_lock((v4 + 224));
      v11 = *(v4 + 232);
      v10 = *(v4 + 240);
      if (v11 != v10)
      {
        while (*v11 != this)
        {
          if (++v11 == v10)
          {
            v11 = *(v4 + 240);
            break;
          }
        }
      }

      if (v10 == v11)
      {
        if (x_log_get_windowserver(void)::once != -1)
        {
          dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
        }

        v15 = x_log_get_windowserver(void)::log;
        if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_183AA6000, v15, OS_LOG_TYPE_ERROR, "Failed to find Surface in _inuse_surfaces", buf, 2u);
        }
      }

      else
      {
        v12 = v10 - (v11 + 1);
        if (v10 != v11 + 1)
        {
          memmove(v11, v11 + 1, v10 - (v11 + 1));
        }

        *(v4 + 240) = v11 + v12;
      }

      os_unfair_lock_unlock((v4 + 224));
    }

    else if (v9 == 2)
    {
      CA::WindowServer::Display::remove_shared_surface(*(this + 1), this);
    }

LABEL_27:
    v13 = *(*this + 8);

    v13(this);
    return;
  }

  *buf = this;
  *(this + 236) = v5 & 0xFFFFFFFFFF000000 | 0x50001;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  os_unfair_lock_lock((v4 + 224));
  v7 = *(v4 + 232);
  v6 = *(v4 + 240);
  if (v7 != v6)
  {
    while (*v7 != this)
    {
      if (++v7 == v6)
      {
        v7 = *(v4 + 240);
        break;
      }
    }
  }

  if (v6 == v7)
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v14 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      v16[0] = 0;
      _os_log_error_impl(&dword_183AA6000, v14, OS_LOG_TYPE_ERROR, "Failed to find Surface in _inuse_surfaces", v16, 2u);
    }
  }

  else
  {
    v8 = v6 - (v7 + 1);
    if (v6 != v7 + 1)
    {
      memmove(v7, v7 + 1, v6 - (v7 + 1));
    }

    *(v4 + 240) = v7 + v8;
  }

  std::vector<CA::WindowServer::Surface *>::push_back[abi:nn200100](v4 + 256, buf);
  os_unfair_lock_unlock((v4 + 224));
}

uint64_t ___ZN2CA10ScalerUtil14get_io_serviceEv_block_invoke()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching("AppleM2ScalerCSCDriver");
  result = IOServiceGetMatchingService(v0, v1);
  CA::ScalerUtil::get_io_service(void)::scaler_service = result;
  if (!result)
  {
    v3 = IOServiceMatching("AppleM2ScalerParavirtDriver");
    result = IOServiceGetMatchingService(v0, v3);
    CA::ScalerUtil::get_io_service(void)::scaler_service = result;
  }

  return result;
}

BOOL CA::Render::MatchAnimation::validate(CA::Render::MatchAnimation *this, CA::Render::Layer *a2)
{
  if (!*(this + 13))
  {
    return 0;
  }

  if (!*(this + 28))
  {
    return 0;
  }

  v2 = *(this + 15);
  if (!v2)
  {
    return 0;
  }

  if (v2)
  {
    return 1;
  }

  return *v2 != 0;
}

void CA::WindowServer::Display::remove_shared_surface(os_unfair_lock_s *this, CA::WindowServer::Surface *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 56);
  v4 = *&this[70]._os_unfair_lock_opaque;
  v5 = *&this[72]._os_unfair_lock_opaque;
  if (v4 != v5)
  {
    while (*v4 != a2)
    {
      if (++v4 == v5)
      {
        goto LABEL_4;
      }
    }
  }

  if (v4 == v5)
  {
LABEL_4:
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v6 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_183AA6000, v6, OS_LOG_TYPE_ERROR, "Failed to find Surface in _shared_surfaces", v7, 2u);
    }
  }

  else
  {
    *v4 = *(v5 - 1);
    *&this[72]._os_unfair_lock_opaque -= 8;
  }

  os_unfair_lock_unlock(this + 56);
}

BOOL CA::Render::Layer::supports_cc_edge_effects(CA::Render::Layer *this)
{
  v1 = *(this + 17);
  if (v1)
  {
    v2 = *(v1 + 228) * 2.8;
  }

  else
  {
    v2 = 8.4;
  }

  if (((*(this + 49) & 2) != 0 || BYTE7(xmmword_1ED4E97DC) == 1) && v1 && (v3 = *(v1 + 56)) != 0 && *(v3 + 12) == 23 && *(v1 + 304) == 1.0 && (v4 = *(v1 + 232), v4 != 0.0) && (v4 + (v2 * 2.0)) < 128.0 && (v5 = (v4 + v2), *(this + 11) * 0.5 > v5))
  {
    return *(this + 12) * 0.5 > v5;
  }

  else
  {
    return 0;
  }
}

void CAMetalLayerPrivateNextDrawableLocked(CAMetalLayer *a1, CAMetalDrawable **a2, unint64_t *a3)
{
  v82 = *MEMORY[0x1E69E9840];
  priv = a1->_priv;
  v5 = mach_absolute_time();
  v75 = CATimeWithHostTime(v5);
  v7 = *(*(priv + 2) + 48);
  if (v7)
  {
    v8 = atomic_load((*(v7 + 24) + 8));
  }

  else
  {
    v8 = 0;
  }

  v9 = *(priv + 74) & 0xFFFF7FFF | ((((v8 >> 36) >> 15) & 1) << 15);
  *(priv + 74) = v9;
  if ((*(priv + 1) & 1) == 0)
  {
    [(CALayer *)a1 size];
    v11 = v10;
    v13 = v12;
    [(CALayer *)a1 contentsScale];
    layer_private_set_drawable_size_internal(priv, (v11 * v14), (v13 * v14));
    v9 = *(priv + 74);
  }

  v79 = 0;
  if ((v9 & 0x40) != 0 && (v8 & 0x800000000000000) != 0)
  {
    if (CADeviceUseCompression::once[0] != -1)
    {
      dispatch_once(CADeviceUseCompression::once, &__block_literal_global_17_12639);
    }

    if (CADeviceUseCompression::enable_compression == 1)
    {
      if (CADeviceSupportsUniversalCompression::once != -1)
      {
        dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
      }

      if (CADeviceSupportsUniversalCompression::universal != 1)
      {
        goto LABEL_21;
      }
    }

    v15 = *(*(*(*(priv + 2) + 48) + 24) + 92) & 3;
    if (v15 == 3 || v15 == 0)
    {
      if ((*(*(*(*(priv + 2) + 48) + 24) + 92) & 4) != 0)
      {
        if ((*(*(*(*(priv + 2) + 48) + 24) + 92) & 3) != 0)
        {
          v17 = 3;
        }

        else
        {
          v17 = 1;
        }
      }

      else
      {
        v17 = 2 * (v15 != 0);
      }

      v79 = v17;
    }

    else
    {
LABEL_21:
      v79 = 0;
    }
  }

  v77 = v8;
  v19 = (priv[296] & 8) != 0 && (v18 = *(*(priv + 2) + 48)) != 0 && *(*(v18 + 24) + 32) != 0;
  if (*(priv + 9))
  {
    v76 = 0;
    v20 = 0;
    v21 = (priv + 132);
    *&v6 = 138412290;
    v74 = v6;
    v22 = 0.0;
    do
    {
      if (*(priv + 4))
      {
        goto LABEL_38;
      }

      if (byte_1ED4E9849)
      {
        v23 = 2;
        if (v19)
        {
LABEL_35:
          *(priv + 74) &= ~0x10u;
          v24 = a1->_priv;
          v24[34] = v23;
          v25 = *(*(v24 + 2) + 48);
          if (v25)
          {
            *(*(v25 + 24) + 95) = 6 - v23;
          }

          v19 = 1;
LABEL_38:
          if (v20)
          {
            goto LABEL_112;
          }

          goto LABEL_39;
        }
      }

      else
      {
        v23 = *v21;
        if (v19)
        {
          goto LABEL_35;
        }
      }

      v50 = v23 + 1;
      v51 = a1->_priv;
      v51[34] = v50;
      v52 = *(*(v51 + 2) + 48);
      if (v52)
      {
        *(*(v52 + 24) + 95) = 6 - v50;
      }

      *(priv + 74) |= 0x10u;
      v53 = mach_absolute_time();
      v54 = CATimeWithHostTime(v53);
      v55 = *(priv + 31) - v54 + 0.00833333333;
      v56 = v55 > 0.00833333333 || v55 < 0.0;
      v57 = 0.0;
      if (v55 >= 0.0 || v55 > 0.00833333333)
      {
        v57 = 0.00833333333;
      }

      if (v56)
      {
        v58 = v57;
      }

      else
      {
        v58 = *(priv + 31) - v54 + 0.00833333333;
      }

      v59 = mach_absolute_time();
      v60 = CATimeWithHostTime(v59);
      for (i = v60 - v60; ; i = v63 - v60)
      {
        if (i >= v58)
        {
          v19 = 0;
          goto LABEL_104;
        }

        usleep(0x3E8u);
        v62 = mach_absolute_time();
        v63 = CATimeWithHostTime(v62);
        if ((priv[296] & 8) != 0)
        {
          v64 = *(*(priv + 2) + 48);
          if (v64)
          {
            if (*(*(v64 + 24) + 32))
            {
              break;
            }
          }
        }
      }

      v19 = 1;
LABEL_104:
      *(priv + 31) = v58 + v54;
      CAImageQueueConsumeUnconsumed_(*(priv + 2), 0);
      if (v20)
      {
LABEL_112:
        os_unfair_lock_unlock(priv + 2);
        layer_private_cleanup_callbacks(priv);
        os_unfair_lock_lock(priv + 2);
        pthread_setspecific(collect_slot, priv);
        v67 = CAImageQueueCollect_(*(priv + 2), 0, 0);
        pthread_setspecific(collect_slot, 0);
        if (a3)
        {
          *a3 = v67;
        }

        if (a2)
        {
          unused_drawable = get_unused_drawable(priv, v79, (v77 & 0x800000000000000) != 0, 0);
          v69 = unused_drawable;
          if (unused_drawable)
          {
            *(unused_drawable + 129) |= 0x40u;
            atomic_fetch_add(unused_drawable, 1u);
            *(unused_drawable + 7) = priv;
            v70 = mach_absolute_time();
            *(v69 + 6) = CATimeWithHostTime(v70);
            IOSurfaceGetID(*(v69 + 8));
            kdebug_trace();
            v71 = [[CAMetalDrawable alloc] initWithDrawablePrivate:v69 layer:a1 waitStart:v75, v74];
LABEL_118:
            *a2 = v71;
            return;
          }

          if (x_log_get_api::once[0] != -1)
          {
            dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
          }

          v65 = x_log_get_api::log;
          if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            v66 = "[CAMetalLayer nextDrawable] returning nil because allocation failed.";
            goto LABEL_111;
          }
        }

        return;
      }

LABEL_39:
      v26 = *(priv + 25);
      v27 = CAHostTimeWithTime(0.2) + v26;
      if (mach_absolute_time() > v27)
      {
        goto LABEL_112;
      }

      v28 = *(priv + 74);
      *(priv + 74) = v28 & 0xFFFFFDFF | (((v28 >> 10) & 1) << 9);
      CAImageQueueSetFlagsInternal(*(priv + 2), 0x4000000000000000, (v28 & 0x400) << 52);
      v29 = *(priv + 74);
      if ((v29 & 0x200) != 0)
      {
        v31 = priv + 136;
        if ((v29 & 0x10) != 0)
        {
          goto LABEL_47;
        }

        v31 = priv + 136;
        if (*(priv + 4))
        {
          goto LABEL_47;
        }

LABEL_46:
        v31 = priv + 132;
        goto LABEL_47;
      }

      if ((v29 & 0x20) == 0 || *(priv + 4))
      {
        v30 = 0;
        goto LABEL_48;
      }

      v31 = priv + 136;
      if ((v29 & 0x10) == 0)
      {
        goto LABEL_46;
      }

LABEL_47:
      v30 = *v31 > 2u;
LABEL_48:
      pthread_setspecific(collect_slot, priv);
      v32 = CAImageQueueCollect_(*(priv + 2), 0, v30);
      pthread_setspecific(collect_slot, 0);
      if (a3)
      {
        *a3 = v32;
      }

      if (!a2)
      {
        return;
      }

      if (v32)
      {
        v33 = *(priv + 4) || (priv[296] & 0x10) != 0 ? *(priv + 34) : *v21;
        if (v33 >= 6)
        {
          goto LABEL_60;
        }

        v34 = 6 - v33;
        v35 = v32;
        if (v34 < v32)
        {
          v35 = v34;
        }

        if (v32 != v35)
        {
LABEL_60:
          v36 = get_unused_drawable(priv, v79, (v77 & 0x800000000000000) != 0, 1);
          v37 = v36;
          if (v36)
          {
            atomic_fetch_add(v36, 1u);
            *(v36 + 7) = priv;
            v72 = mach_absolute_time();
            *(v37 + 6) = CATimeWithHostTime(v72);
            IOSurfaceGetID(*(v37 + 8));
            kdebug_trace();
            v71 = [[CAMetalDrawable alloc] initWithDrawablePrivate:v37 layer:a1 waitStart:v75, v74];
            goto LABEL_118;
          }
        }
      }

      os_unfair_lock_unlock(priv + 2);
      v38 = mach_absolute_time();
      v39 = CATimeWithHostTime(v38);
      v40 = v39;
      if (v22 == 0.0)
      {
        v22 = v39;
      }

      else if (v76 & 1 | (v39 <= v22 + 0.05) || (dyld_program_sdk_at_least() & 1) != 0)
      {
        v46 = *(priv + 74);
        if ((v46 & 0x100) != 0)
        {
          v47 = 0.064;
          if ((v46 & 0x8000) == 0)
          {
            v47 = *(priv + 6);
          }

          if (v40 > v47 + v22)
          {
            if (x_log_get_api::once[0] != -1)
            {
              dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
            }

            v73 = x_log_get_api::log;
            if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_error_impl(&dword_183AA6000, v73, OS_LOG_TYPE_ERROR, "[CAMetalLayer nextDrawable] returning nil due to 1 second timeout. Set allowsNextDrawableTimeout to keep retrying.", &buf, 2u);
            }

            os_unfair_lock_lock(priv + 2);
            return;
          }
        }
      }

      else
      {
        v49 = objc_autoreleasePoolPush();
        +[CATransaction flush];
        objc_autoreleasePoolPop(v49);
        v76 = 1;
      }

      kdebug_trace();
      v41 = 2;
      atomic_compare_exchange_strong(priv + 38, &v41, 0);
      if (v41 == 2)
      {
LABEL_64:
        v20 = 0;
      }

      else
      {
        while (1)
        {
          v42 = 0;
          atomic_compare_exchange_strong(priv + 38, &v42, 1u);
          if (!v42)
          {
            v43 = priv[297] < 0 ? 64000000 : (*(priv + 6) * 1000000000.0);
            v44 = dispatch_time(0, v43);
            if (dispatch_semaphore_wait(*(priv + 18), v44))
            {
              break;
            }
          }

          v45 = 2;
          atomic_compare_exchange_strong(priv + 38, &v45, 0);
          if (v45 == 2)
          {
            goto LABEL_64;
          }
        }

        v20 = 1;
        v48 = 1;
        atomic_compare_exchange_strong(priv + 38, &v48, 0);
        if (v48 != 1)
        {
          dispatch_semaphore_wait(*(priv + 18), 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      kdebug_trace();
      os_unfair_lock_lock(priv + 2);
    }

    while (*(priv + 9));
  }

  if (x_log_get_api::once[0] != -1)
  {
    dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
  }

  v65 = x_log_get_api::log;
  if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    v66 = "[CAMetalLayer nextDrawable] returning nil because device is nil.";
LABEL_111:
    _os_log_error_impl(&dword_183AA6000, v65, OS_LOG_TYPE_ERROR, v66, &buf, 2u);
  }
}

void CA::WindowServer::IOSurface::~IOSurface(CA::WindowServer::IOSurface *this)
{
  CA::WindowServer::IOSurface::~IOSurface(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF1FCF78;
  v2 = *(this + 33);
  if (v2 && *(this + 314) == 1)
  {
    CFRelease(v2);
  }

  v3 = *(this + 38);
  if (v3)
  {
    CFRelease(v3);
  }

  CA::WindowServer::Surface::~Surface(this);
}

int8x16_t CA::Render::MatchPropertyAnimation::create_dependence(int8x16_t *this, CA::Render::Handle *a2)
{
  v4 = CA::Render::MatchPropertyAnimation::create_dependence(CA::Render::Handle *)::$_0::operator()(&this[7].u64[1]);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v5 = malloc_type_zone_malloc(malloc_zone, 0x170uLL, 0x165299FDuLL);
  if (v5)
  {
    v7 = *(*(a2 + 3) + 16);
    v5->i32[2] = this[7].i32[0];
    v5->i32[3] = v7;
    result = vextq_s8(this[6], this[6], 8uLL);
    v5[1] = result;
    v5[2].i64[0] = 0;
    v5[2].i64[1] = 0;
    v5[3].i64[0] = this;
    v5[3].i32[2] = 0;
    v5[4].i64[0] = 0;
    v5[12].i8[8] = 0;
    v5[13].i32[0] = 0;
    v5[13].i64[1] = 0;
    v5[22].i8[0] = 0;
    v5->i64[0] = &unk_1EF1FEC90;
    v5[22].i8[8] = v4;
  }

  return result;
}

char *get_unused_drawable(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v72 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 56);
  if (!v7)
  {
LABEL_32:
    if (!a4)
    {
      goto LABEL_108;
    }

    if (*(a1 + 32))
    {
      v18 = 136;
    }

    else
    {
      v18 = 136;
      if ((*(a1 + 296) & 0x10) == 0)
      {
        v18 = 132;
      }
    }

    if (*(a1 + v18) > *(a1 + 128))
    {
LABEL_108:
      layer_private_check_pixel_format(*(a1 + 72), *(a1 + 64));
      v20 = *(a1 + 120);
      v19 = *(a1 + 124);
      v61 = *(a1 + 72);
      v62 = *(a1 + 96);
      v21 = *(a1 + 296);
      v22 = *(a1 + 64);
      space = *(a1 + 256);
      v60 = *(a1 + 264);
      v59 = [*(a1 + 24) toneMapMode];
      v24 = *(a1 + 280);
      v25 = *(a1 + 288);
      v26 = *(a1 + 296);
      v56 = *(a1 + 16);
      v57 = *(a1 + 224);
      v27 = (a2 & 0xFFFFFFFD) == 1 ? v19 : v20;
      v28 = (a2 & 0xFFFFFFFD) == 1 ? v20 : v19;
      v29 = (v21 & 0x40) != 0 ? 6 : 0;
      iosurface_with_pixel_format = CA::Render::create_iosurface_with_pixel_format(v22, v27, v28, v29 | (v21 >> 6) & 2 | (MEMORY[0xFFFFFC020] >> 9) & 4, v24, @"CAMetalLayer Display Drawable", v23);
      if (iosurface_with_pixel_format)
      {
        v31 = iosurface_with_pixel_format;
        v55 = v26 & 0x20000;
        v9 = malloc_type_calloc(1uLL, 0x88uLL, 0x10A0040704F4AC5uLL);
        *(v9 + 1) = v20;
        *(v9 + 2) = v19;
        v54 = v22;
        *(v9 + 3) = v22;
        *(v9 + 2) = v62;
        *(v9 + 4) = v24;
        *(v9 + 5) = v25;
        *(v9 + 8) = v31;
        *(v9 + 11) = 0;
        *(v9 + 12) = 0;
        *(v9 + 10) = v61;
        v9[128] = a2;
        *(v9 + 129) = (v21 >> 6) | (v55 >> 8) | *(v9 + 129) & 0xF840 | 0x20;
        drawable_set_colorspace(v9, space);
        drawable_set_edr_metadata(v9, v60);
        *(v9 + 15) = v59;
        drawable_texture = allocate_drawable_texture(v61, v31, v20, v19, v62, 0, a2, (v21 >> 6) & 1, @"CAMetalLayer Display Drawable", v25, v57);
        *(v9 + 9) = drawable_texture;
        if (drawable_texture)
        {
          if (!v55)
          {
            v71 = 0;
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            *buf = 0u;
            v64 = 0u;
            BYTE4(v69) = 1;
            IOSurfaceSetBulkAttachments2();
          }

          register_drawable(v9, v56);
          ++*(a1 + 128);
          return v9;
        }

        LOWORD(v33) = v22;
        v34 = v19;
        if (x_log_get_api::once[0] != -1)
        {
          dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
        }

        v35 = x_log_get_api::log;
        if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
        {
          v41 = v22 >> 24;
          if ((v22 & 0x80000000) != 0)
          {
            v42 = __maskrune(v41, 0x40000uLL);
          }

          else
          {
            v42 = *(MEMORY[0x1E69E9830] + 4 * v41 + 60) & 0x40000;
          }

          if (v42)
          {
            v43 = v22 >> 24;
          }

          else
          {
            v43 = 32;
          }

          if (BYTE2(v22) <= 0x7Fu)
          {
            v44 = *(MEMORY[0x1E69E9830] + 4 * BYTE2(v22) + 60) & 0x40000;
          }

          else
          {
            v44 = __maskrune(BYTE2(v22), 0x40000uLL);
          }

          if (v44)
          {
            v45 = SBYTE2(v22);
          }

          else
          {
            v45 = 32;
          }

          v46 = v22 >> 8;
          if (HIBYTE(v54) <= 0x7Fu)
          {
            v47 = *(MEMORY[0x1E69E9830] + 4 * BYTE1(v33) + 60) & 0x40000;
          }

          else
          {
            v47 = __maskrune(BYTE1(v33), 0x40000uLL);
          }

          if (v47)
          {
            LODWORD(v46) = v46;
          }

          else
          {
            LODWORD(v46) = 32;
          }

          if (v54 <= 0x7Fu)
          {
            v48 = *(MEMORY[0x1E69E9830] + 4 * v54 + 60) & 0x40000;
          }

          else
          {
            v48 = __maskrune(v54, 0x40000uLL);
          }

          if (v48)
          {
            v33 = v33;
          }

          else
          {
            v33 = 32;
          }

          *buf = 67110656;
          *&buf[4] = v20;
          *&buf[8] = 1024;
          *&buf[10] = v34;
          *&buf[14] = 1024;
          LODWORD(v64) = v43;
          WORD2(v64) = 1024;
          *(&v64 + 6) = v45;
          WORD5(v64) = 1024;
          HIDWORD(v64) = v46;
          LOWORD(v65) = 1024;
          *(&v65 + 2) = v33;
          WORD3(v65) = 1024;
          DWORD2(v65) = IOSurfaceGetID(v31);
          _os_log_error_impl(&dword_183AA6000, v35, OS_LOG_TYPE_ERROR, "Failed to allocate MTLTexture for %ux%u %c%c%c%c IOSurface(%#x)", buf, 0x2Cu);
        }

        v36 = *(v9 + 8);
        if (v36)
        {
          CFRelease(v36);
        }

        v37 = *(v9 + 9);
        if (v37)
        {
          v38 = *(*(v9 + 7) + 224);
          if (v38)
          {
            [v38 removeAllocation:?];
            [*(*(v9 + 7) + 224) commit];
            v37 = *(v9 + 9);
          }

          *(v9 + 9) = 0;
        }

        *(v9 + 11) = 0;
        v39 = *(v9 + 13);
        if (v39)
        {
          CGColorSpaceRelease(v39);
          *(v9 + 13) = 0;
        }

        free(v9);
      }
    }

    return 0;
  }

  while (1)
  {
    v9 = *v7;
    *(a1 + 56) = x_list_remove_head(v7);
    if ((a3 & 1) != 0 || (*(v9 + 129) & 0x18) != 8)
    {
      goto LABEL_8;
    }

    if (*(v9 + 11))
    {
      update_shared_event_value_wait(v9);
      v10 = [*(v9 + 11) signaledValue] < *(v9 + 12);
      goto LABEL_9;
    }

    v11 = *(v9 + 8);
    if (v11)
    {
      v10 = IOSurfaceIsInUse(v11) != 0;
    }

    else
    {
LABEL_8:
      v10 = 0;
    }

LABEL_9:
    if (*(v9 + 1) == *(a1 + 120) && *(v9 + 2) == *(a1 + 124) && *(v9 + 3) == *(a1 + 64) && *(v9 + 2) == *(a1 + 96))
    {
      v12 = *(v9 + 129);
      v13 = *(a1 + 296);
      v14 = ((v13 >> 6) & 1) == (v12 & 1) && ((v13 >> 7) & 1) == ((v12 >> 1) & 1);
      if (v14 && *(v9 + 10) == *(a1 + 72) && v9[128] == a2 && *(v9 + 4) == *(a1 + 280) && *(v9 + 5) == *(a1 + 288) && ((v13 >> 17) & 1) == ((v12 >> 9) & 1))
      {
        v15 = (v12 & 0x20) != 0 ? 0 : a3;
        if (((v15 | v10) & 1) == 0)
        {
          break;
        }
      }
    }

    delete_drawable_private(v9, *(a1 + 16));
    --*(a1 + 128);
    v7 = *(a1 + 56);
    if (!v7)
    {
      goto LABEL_32;
    }
  }

  v16 = *(a1 + 256);
  v17 = *(v9 + 13);
  if (v16 && v17)
  {
    if (!CFEqual(v17, v16))
    {
      v16 = *(a1 + 256);
      goto LABEL_92;
    }

LABEL_93:
    v49 = 0;
  }

  else
  {
    if (v17 == v16)
    {
      goto LABEL_93;
    }

LABEL_92:
    drawable_set_colorspace(v9, v16);
    v49 = 1;
  }

  v50 = *(a1 + 264);
  v51 = *(v9 + 14);
  if (v50 && v51)
  {
    if (![(CAEDRMetadata *)v51 isEqual:*(a1 + 264)])
    {
      v50 = *(a1 + 264);
      goto LABEL_99;
    }
  }

  else if (v51 != v50)
  {
LABEL_99:
    drawable_set_edr_metadata(v9, v50);
    v49 = 1;
  }

  v52 = *(v9 + 15);
  if (v52 != [*(a1 + 24) toneMapMode])
  {
    *(v9 + 15) = [*(a1 + 24) toneMapMode];
    v49 = 1;
  }

  if ((*(v9 + 129) & 0x400) != 0)
  {
    v53 = *(v9 + 8);
    *buf = 0;
    IOSurfaceSetPurgeable(v53, 0, buf);
    *(v9 + 129) &= ~0x400u;
  }

  if (v49)
  {
    register_drawable(v9, *(a1 + 16));
  }

  return v9;
}

void CA::WindowServer::Surface::~Surface(CA::WindowServer::Surface *this)
{
  *this = &unk_1EF1F8D08;
  v2 = *(this + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *v3 = 0;
  }

  v4 = *(this + 11);
  if (v4)
  {
    if (atomic_fetch_add(v4 + 4, 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 8))(v4);
    }

    v3 = *(this + 2);
  }

  if (v3)
  {
    CA::CASharedEvent::unref(v3);
  }
}

CFTypeRef CA::Render::anonymous namespace::retain_provider_options(CA::Render::_anonymous_namespace_ *this)
{
  v1 = this;
  {
  }

  if (!v1)
  {
  }

  v3 = *v2;

  return CFRetain(v3);
}

__IOSurface *CA::Render::create_iosurface_with_pixel_format(CA::Render *this, int a2, unsigned int a3, unsigned int a4, uint64_t a5, CFStringRef theString1, const __CFString *a7)
{
  result = 0;
  v25 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    v14 = (2 * a4) & 0x10 | (8 * (a4 & 1));
    if ((a4 & 0x10) != 0)
    {
      v15 = 2;
    }

    else
    {
      v15 = (a4 >> 5) & 1;
    }

    v16 = *MEMORY[0x1E69E9AC8];
    if ((a4 & 0x1C6) != 0)
    {
      v17 = 1792;
    }

    else
    {
      v17 = 1024;
    }

    if (CADeviceUseCompression::once[0] == -1)
    {
      if ((a4 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      dispatch_once(CADeviceUseCompression::once, &__block_literal_global_17_12639);
      if ((a4 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    if (CADeviceUseCompression::enable_compression)
    {
      if (CADeviceSupportsUniversalCompression::once != -1)
      {
        dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
      }

      if (CADeviceSupportsUniversalCompression::universal)
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      v19 = this;
      v20 = 0;
      goto LABEL_29;
    }

LABEL_19:
    if (CADeviceSupportsLossyUniversalCompression::once != -1)
    {
      dispatch_once(&CADeviceSupportsLossyUniversalCompression::once, &__block_literal_global_40);
    }

    if ((a4 & 0x1C0) == 0 || (CADeviceSupportsLossyUniversalCompression::lossy & 1) == 0)
    {
      goto LABEL_30;
    }

    if ((a4 & 0x40) != 0)
    {
      v20 = 1;
    }

    else if ((a4 & 0x80) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = ((a4 << 23) >> 31) & 3;
    }

    v19 = this;
    v18 = 4;
LABEL_29:
    this = CA::Render::fourcc_compressed_of_type(v19, v18, v20);
LABEL_30:
    v21 = xmmword_183E20D70;
    v22 = 1;
    v23 = v16;
    v24 = 0;
    return CA::SurfaceUtil::CAIOSurfaceCreate(a2, a3, this, v17, v15, v14, a5, &v21, theString1);
  }

  return result;
}

CFDictionaryRef CA::Render::anonymous namespace::create_provider_options(CA::Render::_anonymous_namespace_ *this)
{
  v20 = *MEMORY[0x1E69E9840];
  v19 = 0;
  *keys = 0u;
  v18 = 0u;
  v16 = 0;
  *values = 0u;
  v15 = 0u;
  if (this)
  {
    v1 = 0;
  }

  else
  {
    keys[0] = *MEMORY[0x1E695F288];
    values[0] = *MEMORY[0x1E695F280];
    v1 = 1;
  }

  v2 = MEMORY[0x1E695E4D0];
  *(keys | (8 * v1)) = *MEMORY[0x1E695F298];
  v3 = *v2;
  v4 = v1 + 1;
  *(values & 0xFFFFFFFFFFFFFFF7 | (8 * (v1 & 1))) = *v2;
  keys[v4] = *MEMORY[0x1E695F290];
  v5 = v1 | 2;
  values[v4] = v3;
  {
  }

  v6 = qword_1ED4E4910;
  if (qword_1ED4E4910)
  {
    v7 = 4 << v1;
    keys[v5] = *MEMORY[0x1E695F268];
    valuePtr = v6;
    v8 = v1 + 3;
    values[v5] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    {
    }
  }

  else
  {
    v7 = 0;
    v8 = v1 | 2;
  }

  v9 = qword_1ED4E4918;
  if (qword_1ED4E4918)
  {
    v7 |= 1 << v8;
    keys[v8] = *MEMORY[0x1E695F270];
    valuePtr = v9;
    values[v8++] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  }

  v10 = CFDictionaryCreate(0, keys, values, v8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v11 = 0;
  do
  {
    if ((v7 >> v11))
    {
      CFRelease(values[v11]);
    }

    ++v11;
  }

  while (v8 != v11);
  return v10;
}

uint64_t CA::Render::anonymous namespace::image_format_from_component_type(int a1, int a2, int a3)
{
  v3 = a2 - 1;
  if ((a2 - 1) >= 4)
  {
    v4 = 17;
  }

  else
  {
    v4 = 13;
  }

  if (v3 >= 4)
  {
    v5 = 25;
  }

  else
  {
    v5 = 28;
  }

  if (a3)
  {
    v4 = v5;
  }

  if (a2 == 6)
  {
    v6 = a3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = -1;
  }

  else
  {
    v7 = 31;
  }

  if (a1 != 6)
  {
    v7 = -1;
  }

  if (a1 != 5)
  {
    v4 = v7;
  }

  if (v3 < 4)
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  if (a2 == 5)
  {
    v9 = 19;
  }

  else
  {
    v9 = 10;
  }

  if (v3 >= 4)
  {
    v10 = v9;
  }

  else
  {
    v10 = 18;
  }

  if (a3)
  {
    v8 = v10;
  }

  v11 = v3 >= 4;
  if (v3 < 4)
  {
    v12 = 21;
  }

  else
  {
    v12 = 22;
  }

  if (v11)
  {
    v13 = -1;
  }

  else
  {
    v13 = 27;
  }

  if (a3)
  {
    v12 = v13;
  }

  if (a1 != 2)
  {
    v12 = -1;
  }

  if (a1 == 1)
  {
    v12 = v8;
  }

  if (a1 <= 4)
  {
    return v12;
  }

  else
  {
    return v4;
  }
}

void drawable_set_colorspace(_CAMetalDrawablePrivate *a1, CGColorSpaceRef space)
{
  if (a1)
  {
    if (!space && a1->var10)
    {
      IOSurfaceSetBulkAttachments2();
    }

    if (a1->var15 != space)
    {
      CGColorSpaceRetain(space);
      CGColorSpaceRelease(a1->var15);
      a1->var15 = space;
      var10 = a1->var10;
      if (var10)
      {

        CA::Render::iosurface_set_colorspace(var10, space, v4);
      }
    }
  }
}

void *allocate_drawable_texture(void *a1, __IOSurface *a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  v16 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a5 width:a3 height:a4 mipmapped:0];
  PixelFormat = IOSurfaceGetPixelFormat(a2);
  v18 = PixelFormat;
  v19 = CA::Render::fourcc_compressed_of_type(PixelFormat, 0, 0);
  if (CADeviceSupportsUniversalCompression::once != -1)
  {
    dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
  }

  if (v19 == v18 || (CADeviceSupportsUniversalCompression::universal & 1) == 0)
  {
    if (a7 >= 4)
    {
      abort();
    }

    v20 = a7;
  }

  else if ((((a7 & 0xFFFFFFFD) == 1) & CADeviceSupportsUniversalCompression::universal) != 0)
  {
    v20 = 4;
  }

  else
  {
    v20 = 0;
  }

  [v16 setRotation:v20];
  [v16 setIsDrawable:1];
  if (a8)
  {
    [v16 setFramebufferOnly:1];
    v21 = 4;
  }

  else
  {
    v21 = a10;
  }

  [v16 setUsage:v21];
  if (a6)
  {
    [v16 setForceResourceIndex:1];
    [v16 setResourceIndex:a6];
  }

  v22 = [a1 newTextureWithDescriptor:v16 iosurface:a2 plane:0];
  v23 = v22;
  if (v22)
  {
    [v22 setLabel:a9];
    if (a11)
    {
      [a11 addAllocation:v23];
      [a11 commit];
    }
  }

  return v23;
}

void *CA::Render::anonymous namespace::create_image_by_copying(CA::Render::_anonymous_namespace_ *a1, unsigned int a2, CGColorSpace *a3, uint64_t a4, uint64_t a5, unint64_t a6, CA::Render *a7, __int16 a8)
{
  v46 = *MEMORY[0x1E69E9840];
  if ((a8 & 0x200) == 0)
  {
    v8 = a8;
    v14 = a1;
    kdebug_trace();
    memset(v45, 0, sizeof(v45));
    v43 = 0;
    v44 = 0;
    if (!v16 || (v17 = v16, (v41 = CA::Render::aligned_malloc(v44, &v43, 0)) == 0))
    {
      v21 = 0;
LABEL_33:
      kdebug_trace();
      return v21;
    }

    if (a7 > 0x25)
    {
      v18 = 0;
      if (a5)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v18 = dword_183E22690[a7];
      if (a5)
      {
LABEL_6:
        v19 = v41;
        CGBlt_copyBytes();
LABEL_28:
        if (v17 != 1)
        {
        }

        v32 = v43;
        MEMORY[0x1865EC180](*MEMORY[0x1E69E9A60], v19, v43, 1, 1);
        v33 = CA::Render::Image::new_image(a7, a1, a2, v17, a3, v19, v45, CA::Render::aligned_free, v32, v36);
        v21 = v33;
        if (v33)
        {
          *(v33 + 3) |= 0x1000000u;
        }

        else
        {
          CA::Render::aligned_free(v19, v32, v34);
        }

        goto LABEL_33;
      }
    }

    CGAccessSessionCreate();
    v22 = v18 * v14;
    v23 = a6 - v22;
    v24 = *&v45[0] - v22;
    if (a6 - v22 <= *&v45[0] - v22)
    {
      v22 = a6;
    }

    v39 = v22;
    v40 = *&v45[0] - v18 * v14;
    if (v23 <= v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = (a6 - v18 * v14);
    }

    v36 = v25;
    v38 = a6 - v18 * v14;
    if (v23 <= v24)
    {
      v26 = a6 - v18 * v14;
    }

    else
    {
      v26 = 0;
    }

    if (a2)
    {
      v27 = v41;
      v37 = v40 - v26;
      v28 = a2;
      while (1)
      {
        v29 = v39;
        if (v39)
        {
          break;
        }

LABEL_23:
        v31 = v28 - 1;
        if (v38 > v40 && v28 != 1)
        {
          CGAccessSessionSkipForward();
        }

        v27 = (v27 + v37);
        --v28;
        if (!v31)
        {
          goto LABEL_27;
        }
      }

      while (1)
      {
        Bytes = CGAccessSessionGetBytes();
        if (Bytes - 1 >= v29)
        {
          break;
        }

        v27 = (v27 + Bytes);
        v29 -= Bytes;
        if (!v29)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_27:
    CGAccessSessionRelease();
    v19 = v41;
    goto LABEL_28;
  }

  return 0;
}

uint64_t CA::Render::anonymous namespace::compute_image_levels(CA::Render::_anonymous_namespace_ *this, unsigned int a2, CA::Render *a3, char a4, unint64_t *a5, unint64_t *a6, unint64_t *a7)
{
  v10 = this;
  v11 = a2;
  if ((a4 & 1) != 0 && (a3 > 0x13 || ((1 << a3) & 0xC00C0) == 0))
  {
    v13 = 0;
    for (i = 1; ; ++i)
    {
      v15 = CA::Render::format_rowbytes(a3, v10);
      *a5 = v15;
      if (!v15)
      {
        break;
      }

      v13 += v15 * v11;
      if (v10 < 9 || v11 < 9)
      {
        goto LABEL_6;
      }

      v10 >>= 1;
      v11 >>= 1;
      ++a5;
    }

    return 0;
  }

  v12 = CA::Render::format_rowbytes(a3, this);
  *a5 = v12;
  if (!v12)
  {
    return 0;
  }

  v13 = v12 * v11;
  i = 1;
LABEL_6:
  *a6 = v13;
  return i;
}

void drawable_set_edr_metadata(_CAMetalDrawablePrivate *a1, CAEDRMetadata *a2)
{
  if (a1)
  {
    if (a1->var16 != a2)
    {
      v4 = a2;

      a1->var16 = a2;
      if (a1->var10)
      {

        [CAEDRMetadata setMetadata:a2 onSurface:?];
      }
    }
  }
}

void set_attr(CA::Transaction *a1, const void *a2, void *a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = a2;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v5)
  {
    v5 = CA::Transaction::create(a1);
  }

  v6 = CAInternAtom(a1, 1);
  v7 = *(v5 + 29);
  *(v5 + 29) = v7 + 1;
  if (!v7)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v8 = a3[4];
  if (!v8)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v8 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x10uLL, 0x1020040EDED9539uLL);
  }

  a3[4] = CA::AttrList::set(v8, v6, 2, v9);

  CA::Transaction::unlock(v5);
}

CGColorSpaceRef CA::Render::load_colorspace_from_bulk_attachments(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 8u)
  {
    switch(a1)
    {
      case 9u:
        if (a2 > 0xFu)
        {
          if (a2 == 16)
          {
            v3 = 18;
            goto LABEL_41;
          }

          if (a2 == 18)
          {
            v3 = 17;
            goto LABEL_41;
          }
        }

        else
        {
          if (a2 == 8)
          {
            v3 = 13;
            goto LABEL_41;
          }

          if (a2 == 13)
          {
            v3 = 19;
            goto LABEL_41;
          }
        }

        v3 = 11;
        goto LABEL_41;
      case 0xBu:
        if (a2 == 17)
        {
          v3 = 10;
          goto LABEL_41;
        }

        break;
      case 0xCu:
        if (a2 == 18)
        {
          v4 = 8;
        }

        else
        {
          v4 = 6;
        }

        if (a2 == 16)
        {
          v5 = 9;
        }

        else
        {
          v5 = v4;
        }

        if (a2 == 8)
        {
          v3 = 20;
        }

        else
        {
          v3 = v5;
        }

        goto LABEL_41;
    }

    return 0;
  }

  if (a1 == 1)
  {
    if (a2 > 0xCu)
    {
      if (a2 == 16)
      {
        v3 = 25;
        goto LABEL_41;
      }

      if (a2 == 13)
      {
        v3 = 36;
        goto LABEL_41;
      }
    }

    else
    {
      if (a2 == 1)
      {
        v3 = 24;
        goto LABEL_41;
      }

      if (a2 == 8)
      {
        v3 = 33;
        goto LABEL_41;
      }
    }

    return 0;
  }

  if (a1 == 5)
  {
    v3 = 30;
    goto LABEL_41;
  }

  if (a1 != 6)
  {
    return 0;
  }

  v3 = 29;
LABEL_41:
  v7 = CAGetColorSpace(v3);

  return CGColorSpaceRetain(v7);
}

_DWORD *release_image(void *a1, uint64_t a2, _DWORD *a3, char a4)
{
  v8 = *(a1[6] + 24);
  v9 = v8 + 160 * a2 + 472;
  v10 = *(a1[8] + 8 * a2);
  if (v10)
  {
    v11 = atomic_load((v8 + 8));
    if ((v11 & 0x400000000000000) == 0)
    {
      IOSurfaceDecrementUseCount(*(a1[8] + 8 * a2));
    }

    v12 = IOSurfaceGetDetachModeCode() & 0xFFFFFFFFFFFFLL;
    CFRelease(v10);
    *(a1[8] + 8 * a2) = 0;
    v13 = *(v9 + 56);
    *(v9 + 56) = 0;
  }

  else
  {
    v13 = 0;
    v12 = 0xFFFFFFFFFFFFLL;
  }

  if (!*(a1[23] + 8 * a2))
  {
    v16 = a3;
    if (a4)
    {
      return v16;
    }

    goto LABEL_15;
  }

  v14 = *(v9 + 68);
  v15 = *(v9 + 8);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v16 = malloc_type_zone_malloc(malloc_zone, 0x78uLL, 0x10A00406C7996D9uLL);
  v17 = *(v9 + 100);
  v16[2] = v14;
  v16[3] = v17;
  v18 = *(v9 + 92);
  *(v16 + 3) = v15;
  v16[4] = v13;
  v16[5] = v18;
  *(v16 + 4) = *v9;
  v20 = a1[23];
  v19 = a1[24];
  *(v16 + 5) = *(v20 + 8 * a2);
  *(v16 + 6) = *(v19 + 8 * a2);
  v21 = *(v9 + 84);
  v16[14] = v21;
  *(v16 + 8) = *(v9 + 16);
  v22 = *(v9 + 24);
  *(v16 + 10) = v22;
  v23 = *(v9 + 32);
  *(v16 + 11) = v23;
  v24 = *(v9 + 40);
  *(v16 + 12) = v12;
  *(v16 + 13) = v24;
  if (!v24 && v21)
  {
    *(v16 + 13) = CAHostTimeWithTime(v23) + v22;
  }

  v25 = v23 * v21;
  if (*(v9 + 48) != 0.0)
  {
    v25 = *(v9 + 48);
  }

  *(v16 + 14) = v25;
  *(v16 + 73) = *(v9 + 121) != 0;
  *(v16 + 74) = *(v9 + 123) != 0;
  *(v16 + 72) = *(v9 + 60) == 858993459;
  *v16 = a3;
  *(v20 + 8 * a2) = 0;
  *(a1[24] + 8 * a2) = 0;
  if ((a4 & 1) == 0)
  {
LABEL_15:
    __dmb(0xBu);
    *(v9 + 68) = 0;
  }

  return v16;
}

uint64_t CAImageQueueCommit::CAImageQueueCommit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = a1 + 56;
  *(a1 + 40) = xmmword_183E21150;
  *(a1 + 16) = a1 + 24;
  CA::Render::Encoder::Encoder(a1 + 4120, a1 + 24, 4, *(a2 + 216), 0.0);
  v4 = (*(**(a1 + 8) + 48))(*(a1 + 8));
  if (v4)
  {
    v5 = v4;
    v6 = (*(**(a1 + 8) + 56))(*(a1 + 8));
    CA::Render::Encoder::set_object_cache((a1 + 4120), v5, v6 ^ 1);
    CA::Render::Encoder::ObjectCache::unref(v5);
  }

  return a1;
}

void release_images(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = release_key;
  if (!release_key)
  {
    *v17 = 0;
    pthread_key_create(v17, 0);
    v4 = *v17;
    release_key = *v17;
  }

  v16 = pthread_getspecific(v4);
  v5 = a2;
  do
  {
    if (release_images(_CAImageQueue *,CAImageQueueReleased *)::initialized == 1)
    {
      if ((release_images(_CAImageQueue *,CAImageQueueReleased *)::log_frames & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v6 = getenv("CA_LOG_IMAGE_QUEUE_FRAMES");
      if (!v6)
      {
        release_images(_CAImageQueue *,CAImageQueueReleased *)::log_frames = 0;
        release_images(_CAImageQueue *,CAImageQueueReleased *)::initialized = 1;
        goto LABEL_14;
      }

      v7 = atoi(v6);
      release_images(_CAImageQueue *,CAImageQueueReleased *)::log_frames = v7 != 0;
      release_images(_CAImageQueue *,CAImageQueueReleased *)::initialized = 1;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v8 = x_log_get_utilities::log;
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v5[3];
      v9 = v5[4];
      v11 = *(v5 + 14);
      v12 = v5[8];
      v13 = v5[10];
      v14 = v5[12];
      *v17 = 134219520;
      *&v17[4] = a1;
      v18 = 2048;
      v19 = v9;
      v20 = 2048;
      v21 = v10;
      v22 = 1024;
      v23 = v11;
      v24 = 2048;
      v25 = v12;
      v26 = 2048;
      v27 = v13;
      v28 = 2048;
      v29 = v14;
      _os_log_impl(&dword_183AA6000, v8, OS_LOG_TYPE_DEFAULT, "CAImageQueue %p: frame %f (%llx) used %d: %f (%llx) detach: 0x%llx\n", v17, 0x44u);
    }

LABEL_14:
    pthread_setspecific(release_key, v5);
    (v5[5])(*(v5 + 2), v5[3], v5[6]);
    CAImageQueueDidComposite(*(a1 + 28), *(v5 + 3), *(v5 + 5));
    v5 = *v5;
  }

  while (v5);
  pthread_setspecific(release_key, v16);
  if (a2)
  {
    do
    {
      v15 = *a2;
      free(a2);
      a2 = v15;
    }

    while (v15);
  }
}

void CAImageQueueDidComposite(int a1, unsigned int a2, unsigned int a3)
{
  pthread_mutex_lock(&composited_mutex);
  v6 = composited_list;
  if (composited_list)
  {
    while (1)
    {
      v7 = *v6;
      if (*(*v6 + 7) == a1)
      {
        break;
      }

      v6 = v6[1];
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    CFRetain(*v6);
    pthread_mutex_unlock(&composited_mutex);
    v8 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
    *v8 = v7;
    v8[2] = a2;
    v8[3] = a3;
    pthread_mutex_lock(&composited_mutex);
    if (v7[160] == 1)
    {
      do
      {
        pthread_cond_wait(&composited_cond, &composited_mutex);
      }

      while ((v7[160] & 1) != 0);
    }

    if (*(v7 + 18))
    {
      v7[160] = 1;
      pthread_mutex_unlock(&composited_mutex);
      (*(v7 + 18))(v7, *(v7 + 19), v8[2], v8[3]);
      pthread_mutex_lock(&composited_mutex);
      v7[160] = 0;
      pthread_cond_broadcast(&composited_cond);
    }

    pthread_mutex_unlock(&composited_mutex);
    CFRelease(v7);

    free(v8);
  }

  else
  {
LABEL_4:

    pthread_mutex_unlock(&composited_mutex);
  }
}

void *x_hash_table_values(uint64_t a1)
{
  result = 0;
  v3 = 0;
  v4 = 1 << *a1;
  do
  {
    for (i = *(*(a1 + 16) + 8 * v3); i; i = *i)
    {
      result = x_list_prepend(result, i[3]);
    }

    ++v3;
  }

  while (v3 != v4);
  return result;
}

atomic_uint *CA::Context::Generic::retain_encoder_cache(CA::Context::Generic *this)
{
  v1 = *(this + 1);
  os_unfair_lock_lock((v1 + 176));
  if ((*(v1 + 257) & 8) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v1 + 184);
    if (v2)
    {
      atomic_fetch_add(v2, 1u);
    }
  }

  os_unfair_lock_unlock((v1 + 176));
  return v2;
}

BOOL CA::Context::Generic::is_deferring(CA::Context::Generic *this)
{
  v1 = *(this + 1);
  os_unfair_lock_lock(&CA::Context::_deferred_lock);
  v2 = CA::Context::_deferred_by_lid && std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(CA::Context::_deferred_by_lid, *(v1 + 8));
  os_unfair_lock_unlock(&CA::Context::_deferred_lock);
  return v2;
}

void *CA::Render::ReplicatorLayer::encode(const CA::Render::Object **this, CA::Render::Encoder *a2)
{
  CA::Render::Object::encode(this, a2);
  v4 = *(this + 4);
  v5 = *(a2 + 4);
  if ((v5 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v5 = *(a2 + 4);
  }

  *v5 = v4;
  *(a2 + 4) += 4;
  CA::Render::Encoder::encode_object(a2, this[3]);
  v6 = *(a2 + 4);
  if ((v6 + 36) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 36);
    v6 = *(a2 + 4);
  }

  v7 = *(this + 2);
  v8 = *(this + 3);
  *(v6 + 32) = *(this + 16);
  *v6 = v7;
  *(v6 + 16) = v8;
  *(a2 + 4) += 36;

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void CA::Render::ReplicatorLayer::~ReplicatorLayer(CA::Render::ReplicatorLayer *this, const CA::Render::Object *a2)
{
  *this = &unk_1EF1F4F88;
  v3 = *(this + 3);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  --dword_1ED4EAAF0;
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
  *this = &unk_1EF1F4F88;
  v3 = *(this + 3);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  --dword_1ED4EAAF0;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

double *std::__introsort<std::_ClassicAlgPolicy,CAShmemImageQueueCopyImageInfo::$_0 &,_CAShmemImageQueueImage **,false>(double *result, double **a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v75 = *v9;
        if (**v8 < **v9)
        {
          *v9 = *v8;
          *v8 = v75;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v82 = v9 + 1;
      v83 = v9[1];
      v84 = v9 + 2;
      v85 = v9[2];
      v86 = *v83;
      v87 = *v9;
      v88 = **v9;
      v89 = *v85;
      if (*v83 >= v88)
      {
        if (v89 >= v86)
        {
          goto LABEL_170;
        }

        *v82 = v85;
        *v84 = v83;
        v90 = v9;
        v91 = v9 + 1;
        result = v83;
        if (v89 < v88)
        {
          goto LABEL_163;
        }
      }

      else
      {
        v90 = v9;
        v91 = v9 + 2;
        result = *v9;
        if (v89 >= v86)
        {
          *v9 = v83;
          v9[1] = v87;
          v90 = v9 + 1;
          v91 = v9 + 2;
          result = v87;
          if (v89 >= v88)
          {
LABEL_170:
            v83 = v85;
            goto LABEL_171;
          }
        }

LABEL_163:
        *v90 = v85;
        *v91 = v87;
        v83 = result;
      }

LABEL_171:
      if (**v8 < *v83)
      {
        *v84 = *v8;
        *v8 = v83;
        v136 = *v84;
        v137 = *v136;
        v138 = *v82;
        if (*v136 < *v138)
        {
          v9[1] = v136;
          v9[2] = v138;
          v139 = *v9;
          if (v137 < **v9)
          {
            *v9 = v136;
            v9[1] = v139;
          }
        }
      }

      return result;
    }

    if (v10 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,CAShmemImageQueueCopyImageInfo::$_0 &,_CAShmemImageQueueImage **,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1);
    }

LABEL_10:
    if (v10 <= 23)
    {
      v92 = v9 + 1;
      v94 = v9 == a2 || v92 == a2;
      if (a4)
      {
        if (!v94)
        {
          v95 = 8;
          v96 = v9;
          do
          {
            v98 = *v96;
            v97 = v96[1];
            v96 = v92;
            v99 = *v97;
            if (*v97 < *v98)
            {
              v100 = v95;
              while (1)
              {
                *(v9 + v100) = v98;
                v101 = v100 - 8;
                if (v100 == 8)
                {
                  break;
                }

                v98 = *(v9 + v100 - 16);
                v100 -= 8;
                if (v99 >= *v98)
                {
                  v102 = (v9 + v101);
                  goto LABEL_126;
                }
              }

              v102 = v9;
LABEL_126:
              *v102 = v97;
            }

            v92 = v96 + 1;
            v95 += 8;
          }

          while (v96 + 1 != a2);
        }
      }

      else if (!v94)
      {
        do
        {
          v134 = *v7;
          v133 = v7[1];
          v7 = v92;
          v135 = *v133;
          if (*v133 < *v134)
          {
            do
            {
              *v92 = v134;
              v134 = *(v92 - 2);
              --v92;
            }

            while (v135 < *v134);
            *v92 = v133;
          }

          v92 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v103 = (v10 - 2) >> 1;
        v104 = v103;
        do
        {
          v105 = v104;
          if (v103 >= v104)
          {
            v106 = (2 * v104) | 1;
            v107 = &v9[v106];
            if (2 * v105 + 2 < v10 && **v107 < *v107[1])
            {
              ++v107;
              v106 = 2 * v105 + 2;
            }

            v108 = &v9[v105];
            v109 = *v107;
            v110 = *v108;
            v111 = **v108;
            if (**v107 >= v111)
            {
              do
              {
                *v108 = v109;
                v108 = v107;
                if (v103 < v106)
                {
                  break;
                }

                v112 = 2 * v106;
                v106 = (2 * v106) | 1;
                v107 = &v9[v106];
                v113 = v112 + 2;
                if (v113 < v10)
                {
                  result = *v107;
                  if (**v107 < *v107[1])
                  {
                    ++v107;
                    v106 = v113;
                  }
                }

                v109 = *v107;
              }

              while (**v107 >= v111);
              *v108 = v110;
            }
          }

          v104 = v105 - 1;
        }

        while (v105);
        do
        {
          v114 = 0;
          v115 = *v9;
          v116 = v9;
          do
          {
            v117 = v116;
            v118 = &v116[v114];
            v116 = v118 + 1;
            v119 = 2 * v114;
            v114 = (2 * v114) | 1;
            v120 = v119 + 2;
            if (v120 < v10)
            {
              v122 = v118[2];
              v121 = v118 + 2;
              if (**(v121 - 1) < *v122)
              {
                v116 = v121;
                v114 = v120;
              }
            }

            *v117 = *v116;
          }

          while (v114 <= ((v10 - 2) >> 1));
          if (v116 == --a2)
          {
            *v116 = v115;
          }

          else
          {
            *v116 = *a2;
            *a2 = v115;
            v123 = (v116 - v9 + 8) >> 3;
            v124 = v123 < 2;
            v125 = v123 - 2;
            if (!v124)
            {
              v126 = v125 >> 1;
              v127 = &v9[v126];
              v128 = *v127;
              v129 = *v116;
              v130 = **v116;
              if (**v127 < v130)
              {
                do
                {
                  *v116 = v128;
                  v116 = v127;
                  if (!v126)
                  {
                    break;
                  }

                  v126 = (v126 - 1) >> 1;
                  v127 = &v9[v126];
                  v128 = *v127;
                }

                while (**v127 < v130);
                *v116 = v129;
              }
            }
          }

          v124 = v10-- <= 2;
        }

        while (!v124);
      }

      return result;
    }

    v11 = &v9[v10 >> 1];
    v12 = v11;
    v13 = *v8;
    v14 = **v8;
    if (v10 >= 0x81)
    {
      v15 = *v11;
      v16 = **v11;
      v17 = *v9;
      v18 = **v9;
      if (v16 >= v18)
      {
        if (v14 < v16)
        {
          *v11 = v13;
          *v8 = v15;
          v23 = *v9;
          if (**v11 < **v9)
          {
            *v9 = *v11;
            *v11 = v23;
          }
        }
      }

      else
      {
        if (v14 < v16)
        {
          *v9 = v13;
          goto LABEL_27;
        }

        *v9 = v15;
        *v11 = v17;
        if (**v8 < v18)
        {
          *v11 = *v8;
LABEL_27:
          *v8 = v17;
        }
      }

      v25 = v11 - 1;
      v26 = *(v11 - 1);
      v27 = *v26;
      v28 = v9[1];
      v29 = *v28;
      v30 = *(a2 - 2);
      v31 = *v30;
      if (*v26 >= *v28)
      {
        if (v31 < v27)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v9[1];
          if (**v25 < *v32)
          {
            v9[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v27)
        {
          v9[1] = v30;
          goto LABEL_39;
        }

        v9[1] = v26;
        *v25 = v28;
        v33 = *(a2 - 2);
        if (*v33 < v29)
        {
          *v25 = v33;
LABEL_39:
          *(a2 - 2) = v28;
        }
      }

      v36 = v11[1];
      v34 = v11 + 1;
      v35 = v36;
      v37 = *v36;
      v38 = v9[2];
      v39 = *v38;
      v40 = *(a2 - 3);
      v41 = *v40;
      if (*v36 >= *v38)
      {
        if (v41 < v37)
        {
          *v34 = v40;
          *(a2 - 3) = v35;
          v42 = v9[2];
          if (**v34 < *v42)
          {
            v9[2] = *v34;
            *v34 = v42;
          }
        }
      }

      else
      {
        if (v41 < v37)
        {
          v9[2] = v40;
          goto LABEL_48;
        }

        v9[2] = v35;
        *v34 = v38;
        v43 = *(a2 - 3);
        if (*v43 < v39)
        {
          *v34 = v43;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v44 = *v12;
      v45 = **v12;
      v46 = *v25;
      v47 = **v25;
      v48 = *v34;
      v49 = **v34;
      if (v45 >= v47)
      {
        if (v49 >= v45)
        {
          goto LABEL_56;
        }

        *v12 = v48;
        *v34 = v44;
        v34 = v12;
        v44 = v46;
        if (v49 >= v47)
        {
          v44 = v48;
          goto LABEL_56;
        }
      }

      else if (v49 >= v45)
      {
        *v25 = v44;
        *v12 = v46;
        v25 = v12;
        v44 = v48;
        if (v49 >= v47)
        {
          v44 = v46;
LABEL_56:
          v50 = *v9;
          *v9 = v44;
          *v12 = v50;
          goto LABEL_57;
        }
      }

      *v25 = v48;
      *v34 = v46;
      goto LABEL_56;
    }

    v19 = *v9;
    v20 = **v9;
    v21 = *v12;
    v22 = **v12;
    if (v20 >= v22)
    {
      if (v14 < v20)
      {
        *v9 = v13;
        *v8 = v19;
        v24 = *v12;
        if (**v9 < **v12)
        {
          *v12 = *v9;
          *v9 = v24;
        }
      }

      goto LABEL_57;
    }

    if (v14 >= v20)
    {
      *v12 = v19;
      *v9 = v21;
      if (**v8 >= v22)
      {
        goto LABEL_57;
      }

      *v9 = *v8;
    }

    else
    {
      *v12 = v13;
    }

    *v8 = v21;
LABEL_57:
    --a3;
    v51 = *v9;
    v52 = **v9;
    v53 = v9;
    if ((a4 & 1) != 0 || (v53 = v9, **(v9 - 1) < v52))
    {
      do
      {
        v54 = v53;
        v56 = v53[1];
        ++v53;
        v55 = v56;
      }

      while (*v56 < v52);
      v57 = a2;
      if (v54 == v9)
      {
        v57 = a2;
        do
        {
          if (v53 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*v59 >= v52);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*v58 >= v52);
      }

      if (v53 < v57)
      {
        v60 = *v57;
        v61 = v53;
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v54 = v61;
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*v63 < v52);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*v64 >= v52);
        }

        while (v61 < v62);
      }

      if (v54 != v9)
      {
        *v9 = *v54;
      }

      *v54 = v51;
      if (v53 < v57)
      {
        goto LABEL_77;
      }

      v65 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CAShmemImageQueueCopyImageInfo::$_0 &,_CAShmemImageQueueImage **>(v9, v54);
      v9 = v54 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CAShmemImageQueueCopyImageInfo::$_0 &,_CAShmemImageQueueImage **>(v54 + 1, a2);
      if (result)
      {
        a2 = v54;
        if (!v65)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v65)
      {
LABEL_77:
        result = std::__introsort<std::_ClassicAlgPolicy,CAShmemImageQueueCopyImageInfo::$_0 &,_CAShmemImageQueueImage **,false>(v7, v54, a3, a4 & 1);
        a4 = 0;
        v9 = v54 + 1;
      }
    }

    else
    {
      if (v52 >= **v8)
      {
        v67 = v9 + 1;
        do
        {
          v9 = v67;
          if (v67 >= a2)
          {
            break;
          }

          ++v67;
        }

        while (v52 >= **v9);
      }

      else
      {
        do
        {
          v66 = v9[1];
          ++v9;
        }

        while (v52 >= *v66);
      }

      v68 = a2;
      if (v9 < a2)
      {
        v68 = a2;
        do
        {
          v69 = *--v68;
        }

        while (v52 < *v69);
      }

      if (v9 < v68)
      {
        v70 = *v9;
        v71 = *v68;
        do
        {
          *v9 = v71;
          *v68 = v70;
          do
          {
            v72 = v9[1];
            ++v9;
            v70 = v72;
          }

          while (v52 >= *v72);
          do
          {
            v73 = *--v68;
            v71 = v73;
          }

          while (v52 < *v73);
        }

        while (v9 < v68);
      }

      v74 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v74;
      }

      a4 = 0;
      *v74 = v51;
    }
  }

  v76 = *v9;
  v77 = v9[1];
  v78 = *v77;
  v79 = **v9;
  v80 = *v8;
  v81 = **v8;
  if (*v77 >= v79)
  {
    if (v81 < v78)
    {
      v9[1] = v80;
      *v8 = v77;
      v132 = *v9;
      v131 = v9[1];
      if (*v131 < **v9)
      {
        *v9 = v131;
        v9[1] = v132;
      }
    }
  }

  else
  {
    if (v81 >= v78)
    {
      *v9 = v77;
      v9[1] = v76;
      if (**v8 >= v79)
      {
        return result;
      }

      v9[1] = *v8;
    }

    else
    {
      *v9 = v80;
    }

    *v8 = v76;
  }

  return result;
}