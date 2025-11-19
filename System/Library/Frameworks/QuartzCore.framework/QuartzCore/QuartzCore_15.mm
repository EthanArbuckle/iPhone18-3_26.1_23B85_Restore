atomic_uint *release_timing(atomic_uint *result)
{
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      return (*(*result + 16))();
    }
  }

  return result;
}

void CA::Render::Timing::~Timing(CA::Render::Timing *this, const CA::Render::Object *a2)
{
  --dword_1ED4EAB20;
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
  --dword_1ED4EAB20;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

void *CA::Render::Layer::encode(const CA::Render::Object **this, CA::Render::Encoder *a2)
{
  CA::Render::Object::encode(this, a2);
  v4 = *(a2 + 4);
  if ((v4 + 88) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 88);
    v4 = *(a2 + 4);
  }

  v5 = *(this + 2);
  *v4 = *(this + 1);
  *(v4 + 16) = v5;
  v6 = *(this + 3);
  v7 = *(this + 4);
  v8 = *(this + 5);
  *(v4 + 80) = this[12];
  *(v4 + 48) = v7;
  *(v4 + 64) = v8;
  *(v4 + 32) = v6;
  *(a2 + 4) += 88;
  CA::Render::Encoder::encode_sanity_check(a2);
  CA::Render::Encoder::encode_object(a2, this[13]);
  CA::Render::Encoder::encode_object(a2, this[14]);
  v9 = this[15];
  v10 = *(a2 + 4);
  if ((v10 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 8);
    v10 = *(a2 + 4);
  }

  *v10 = v9;
  *(a2 + 4) += 8;
  CA::Render::Encoder::encode_object(a2, this[16]);
  v11 = this[17] != 0;
  v12 = *(a2 + 4);
  if ((v12 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 1);
    v12 = *(a2 + 4);
  }

  *(a2 + 4) = v12 + 1;
  *v12 = v11;
  v13 = this[17];
  if (v13)
  {
    CA::Render::Encoder::encode_object(a2, *v13);
    CA::Render::Encoder::encode_object(a2, *(v13 + 1));
    CA::Render::Encoder::encode_object(a2, *(v13 + 2));
    CA::Render::Encoder::encode_object(a2, *(v13 + 3));
    CA::Render::Encoder::encode_object(a2, *(v13 + 4));
    CA::Render::Encoder::encode_object(a2, *(v13 + 5));
    CA::Render::Encoder::encode_object(a2, *(v13 + 6));
    CA::Render::Encoder::encode_object(a2, *(v13 + 7));
    CA::Render::Encoder::encode_object(a2, *(v13 + 8));
    CA::Render::Encoder::encode_object(a2, *(v13 + 9));
    CA::Render::Encoder::encode_object(a2, *(v13 + 10));
    CA::Render::Encoder::encode_object(a2, *(v13 + 11));
    CA::Render::Encoder::encode_object(a2, *(v13 + 12));
    CA::Render::Encoder::encode_object(a2, *(v13 + 13));
    CA::Render::Encoder::encode_object(a2, *(v13 + 14));
    CA::Render::Encoder::encode_object(a2, *(v13 + 15));
    CA::Render::Encoder::encode_object(a2, *(v13 + 16));
    CA::Render::Encoder::encode_object(a2, *(v13 + 17));
    v14 = *(a2 + 4);
    if ((v14 + 1) > *(a2 + 5))
    {
      CA::Render::Encoder::grow(a2, 16);
      v14 = *(a2 + 4);
    }

    *v14 = *(v13 + 152);
    v15 = *(a2 + 4);
    v16 = *(a2 + 5);
    v17 = (v15 + 16);
    *(a2 + 4) = v15 + 16;
    if (v15 + 32 > v16)
    {
      CA::Render::Encoder::grow(a2, 16);
      v17 = *(a2 + 4);
    }

    *v17 = *(v13 + 168);
    v18 = *(a2 + 4);
    v19 = *(a2 + 5);
    v20 = (v18 + 16);
    *(a2 + 4) = v18 + 16;
    v21 = *(v13 + 23);
    if (v18 + 24 > v19)
    {
      CA::Render::Encoder::grow(a2, 8);
      v20 = *(a2 + 4);
    }

    *v20 = v21;
    v22 = *(a2 + 4);
    v23 = *(a2 + 5);
    v24 = (v22 + 8);
    *(a2 + 4) = v22 + 8;
    v25 = *(v13 + 24);
    if (v22 + 16 > v23)
    {
      CA::Render::Encoder::grow(a2, 8);
      v24 = *(a2 + 4);
    }

    *v24 = v25;
    v26 = *(a2 + 4);
    v27 = *(a2 + 5);
    v28 = v26 + 8;
    *(a2 + 4) = v26 + 8;
    if (v26 + 28 > v27)
    {
      CA::Render::Encoder::grow(a2, 20);
      v28 = *(a2 + 4);
    }

    v29 = *(v13 + 200);
    *(v28 + 16) = *(v13 + 54);
    *v28 = v29;
    v30 = *(a2 + 4);
    v31 = *(a2 + 5);
    v32 = (v30 + 20);
    *(a2 + 4) = v30 + 20;
    if (v30 + 28 > v31)
    {
      CA::Render::Encoder::grow(a2, 8);
      v32 = *(a2 + 4);
    }

    *v32 = *(v13 + 220);
    v33 = *(a2 + 4);
    v34 = *(a2 + 5);
    v35 = (v33 + 8);
    *(a2 + 4) = v33 + 8;
    v36 = *(v13 + 57);
    if (v33 + 12 > v34)
    {
      CA::Render::Encoder::grow(a2, 4);
      v35 = *(a2 + 4);
    }

    *v35 = v36;
    v37 = *(a2 + 4);
    v38 = *(a2 + 5);
    v39 = (v37 + 4);
    *(a2 + 4) = v37 + 4;
    v40 = *(v13 + 58);
    if (v37 + 8 > v38)
    {
      CA::Render::Encoder::grow(a2, 4);
      v39 = *(a2 + 4);
    }

    *v39 = v40;
    v41 = *(a2 + 4);
    v42 = *(a2 + 5);
    v43 = (v41 + 4);
    *(a2 + 4) = v41 + 4;
    v44 = *(v13 + 59);
    if (v41 + 8 > v42)
    {
      CA::Render::Encoder::grow(a2, 4);
      v43 = *(a2 + 4);
    }

    *v43 = v44;
    v45 = *(a2 + 4);
    v46 = *(a2 + 5);
    v47 = (v45 + 4);
    *(a2 + 4) = v45 + 4;
    v48 = *(v13 + 60);
    if (v45 + 8 > v46)
    {
      CA::Render::Encoder::grow(a2, 4);
      v47 = *(a2 + 4);
    }

    *v47 = v48;
    v49 = *(a2 + 4);
    v50 = *(a2 + 5);
    v51 = v49 + 4;
    *(a2 + 4) = v49 + 4;
    if (v49 + 24 > v50)
    {
      CA::Render::Encoder::grow(a2, 20);
      v51 = *(a2 + 4);
    }

    v52 = *(v13 + 244);
    *(v51 + 16) = *(v13 + 65);
    *v51 = v52;
    v53 = *(a2 + 4);
    v54 = *(a2 + 5);
    v55 = (v53 + 20);
    *(a2 + 4) = v53 + 20;
    v56 = *(v13 + 66);
    if (v53 + 24 > v54)
    {
      CA::Render::Encoder::grow(a2, 4);
      v55 = *(a2 + 4);
    }

    *v55 = v56;
    v57 = *(a2 + 4);
    v58 = *(a2 + 5);
    v59 = (v57 + 4);
    *(a2 + 4) = v57 + 4;
    v60 = *(v13 + 67);
    if (v57 + 8 > v58)
    {
      CA::Render::Encoder::grow(a2, 4);
      v59 = *(a2 + 4);
    }

    *v59 = v60;
    v61 = *(a2 + 4);
    v62 = *(a2 + 5);
    v63 = (v61 + 4);
    *(a2 + 4) = v61 + 4;
    v64 = *(v13 + 68);
    if (v61 + 8 > v62)
    {
      CA::Render::Encoder::grow(a2, 4);
      v63 = *(a2 + 4);
    }

    *v63 = v64;
    v65 = *(a2 + 4);
    v66 = *(a2 + 5);
    v67 = (v65 + 4);
    *(a2 + 4) = v65 + 4;
    v68 = *(v13 + 69);
    if (v65 + 8 > v66)
    {
      CA::Render::Encoder::grow(a2, 4);
      v67 = *(a2 + 4);
    }

    *v67 = v68;
    v69 = *(a2 + 4);
    v70 = *(a2 + 5);
    v71 = (v69 + 4);
    *(a2 + 4) = v69 + 4;
    v72 = *(v13 + 70);
    if (v69 + 8 > v70)
    {
      CA::Render::Encoder::grow(a2, 4);
      v71 = *(a2 + 4);
    }

    *v71 = v72;
    v73 = *(a2 + 4);
    v74 = *(a2 + 5);
    v75 = v73 + 4;
    *(a2 + 4) = v73 + 4;
    if (v73 + 24 > v74)
    {
      CA::Render::Encoder::grow(a2, 20);
      v75 = *(a2 + 4);
    }

    v76 = *(v13 + 284);
    *(v75 + 16) = *(v13 + 75);
    *v75 = v76;
    v77 = *(a2 + 4);
    v78 = *(a2 + 5);
    v79 = (v77 + 20);
    *(a2 + 4) = v77 + 20;
    v80 = *(v13 + 76);
    if (v77 + 24 > v78)
    {
      CA::Render::Encoder::grow(a2, 4);
      v79 = *(a2 + 4);
    }

    *v79 = v80;
    v81 = *(a2 + 4);
    v82 = *(a2 + 5);
    v83 = (v81 + 4);
    *(a2 + 4) = v81 + 4;
    v84 = *(v13 + 77);
    if (v81 + 8 > v82)
    {
      CA::Render::Encoder::grow(a2, 4);
      v83 = *(a2 + 4);
    }

    *v83 = v84;
    v85 = *(a2 + 4);
    v86 = *(a2 + 5);
    v87 = (v85 + 4);
    *(a2 + 4) = v85 + 4;
    v88 = *(v13 + 78);
    if (v85 + 8 > v86)
    {
      CA::Render::Encoder::grow(a2, 4);
      v87 = *(a2 + 4);
    }

    *v87 = v88;
    v89 = *(a2 + 4);
    v90 = *(a2 + 5);
    v91 = (v89 + 4);
    *(a2 + 4) = v89 + 4;
    v92 = *(v13 + 79);
    if (v89 + 8 > v90)
    {
      CA::Render::Encoder::grow(a2, 4);
      v91 = *(a2 + 4);
    }

    *v91 = v92;
    v93 = *(a2 + 4);
    v94 = *(a2 + 5);
    v95 = (v93 + 4);
    *(a2 + 4) = v93 + 4;
    v96 = *(v13 + 80);
    if (v93 + 8 > v94)
    {
      CA::Render::Encoder::grow(a2, 4);
      v95 = *(a2 + 4);
    }

    *v95 = v96;
    v97 = *(a2 + 4);
    v98 = *(a2 + 5);
    v99 = v97 + 4;
    *(a2 + 4) = v97 + 4;
    if (v97 + 24 > v98)
    {
      CA::Render::Encoder::grow(a2, 20);
      v99 = *(a2 + 4);
    }

    v100 = *(v13 + 324);
    *(v99 + 16) = *(v13 + 85);
    *v99 = v100;
    v101 = *(a2 + 4);
    v102 = *(a2 + 5);
    v103 = (v101 + 20);
    *(a2 + 4) = v101 + 20;
    v104 = *(v13 + 86);
    if (v101 + 24 > v102)
    {
      CA::Render::Encoder::grow(a2, 4);
      v103 = *(a2 + 4);
    }

    *v103 = v104;
    v105 = *(a2 + 4);
    v106 = *(a2 + 5);
    v107 = (v105 + 4);
    *(a2 + 4) = v105 + 4;
    v108 = *(v13 + 348) & 1;
    if (v105 + 5 > v106)
    {
      CA::Render::Encoder::grow(a2, 1);
      v107 = *(a2 + 4);
    }

    *(a2 + 4) = v107 + 1;
    *v107 = v108;
    CA::Render::Encoder::encode_sanity_check(a2);
  }

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void CA::Transaction::add_deleted_id(CA::Transaction *this, uint64_t a2, int a3, int a4)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v8 = malloc_type_zone_malloc(malloc_zone, 0x18uLL, 0x102004024DAA5DEuLL);
  v8[1] = a2;
  *(v8 + 4) = a3;
  *(v8 + 5) = a4;
  do
  {
    v9 = *(this + 3);
    *v8 = v9;
    v10 = v9;
    atomic_compare_exchange_strong(this + 3, &v10, v8);
  }

  while (v10 != v9);
}

CA::Render *CA::Context::commit_deleted(CA::Context *this, int a2, uint64_t a3, void *a4)
{
  v7 = *(a3 + 40);
  if (v7)
  {
    CA::Render::Context::delete_object(v7, this, a2);
  }

  result = *(a3 + 32);
  if (result)
  {

    return CA::Render::encode_delete_object(result, this, a2);
  }

  return result;
}

void *CA::Render::encode_delete_object(CA::Render *this, CA::Render::Encoder *a2, int a3)
{
  v6 = *(this + 4);
  if ((v6 + 1) > *(this + 5))
  {
    CA::Render::Encoder::grow(this, 1);
    v6 = *(this + 4);
  }

  *(this + 4) = v6 + 1;
  *v6 = 1;
  v7 = *(this + 4);
  if ((v7 + 1) > *(this + 5))
  {
    CA::Render::Encoder::grow(this, 8);
    v7 = *(this + 4);
  }

  *v7 = a2;
  v8 = *(this + 4);
  v9 = *(this + 5);
  v10 = (v8 + 8);
  *(this + 4) = v8 + 8;
  if (v8 + 12 > v9)
  {
    CA::Render::Encoder::grow(this, 4);
    v10 = *(this + 4);
  }

  *v10 = a3;
  *(this + 4) += 4;

  return CA::Render::Encoder::encode_sanity_check(this);
}

CFTypeID CA::Render::convert_cgcolor(CGColor *a1, CGColor *a2, uint64_t a3, float *a4, CA::Render::Pattern **a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0uLL;
  CA::Render::convert_cgcolor_to_float(a1, a2, &v10, a4, a5);
  v9 = v10;
  result = CFGetTypeID(a1);
  v8 = 1.0;
  if (result == CA::Render::color_type)
  {
    result = CGColorGetContentHeadroom();
  }

  *a3 = v9;
  *(a3 + 16) = v8;
  return result;
}

atomic_uint *CA::Render::Layer::set_sublayers(uint64_t a1, atomic_uint *a2)
{
  v2 = a2;
  v4 = *(a1 + 12);
  result = *(a1 + 112);
  if ((v4 & 0x2000) == 0)
  {
    if (result == a2)
    {
      return result;
    }

    if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*result + 16))(result);
    }

    if (!v2)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*result + 16))(result);
    }

    v4 = *(a1 + 12);
  }

  *(a1 + 112) = 0;
  *(a1 + 12) = v4 & 0xFFFFDFFF;
  if (v2)
  {
LABEL_13:
    v6 = v2 + 2;
    if (!atomic_fetch_add(v2 + 2, 1u))
    {
      v2 = 0;
      atomic_fetch_add(v6, 0xFFFFFFFF);
    }

LABEL_15:
    *(a1 + 112) = v2;
  }

  return result;
}

atomic_uint *CA::Render::Layer::set_contents(CA::Render::Layer *this, CA::Render::Object *a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = *(a2 + 12);
    do
    {
      v5 = CA::Render::contents_types[v3];
      if (v5 == v4)
      {
        break;
      }
    }

    while (v3++ != 10);
    if (v5 == v4)
    {
      v7 = a2;
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

  result = *(this + 13);
  if (result != v7)
  {
    if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*result + 16))(result);
    }

    if (v7)
    {
      v9 = (v7 + 8);
      if (!atomic_fetch_add(v7 + 2, 1u))
      {
        v7 = 0;
        atomic_fetch_add(v9, 0xFFFFFFFF);
      }
    }

    *(this + 13) = v7;
  }

  return result;
}

void *CA::Render::Layer::set_contents_scale(void *this, float a2)
{
  v3 = this;
  v4 = a2;
  if (truncf(a2) != a2 || this[17])
  {
    this = CA::Render::Layer::ensure_ext(this);
    *(this + 76) = a2;
  }

  *(v3 + 38) = v4;
  return this;
}

uint64_t CA::Render::Decoder::decode_size_t(CA::Render::Decoder *this)
{
  if ((*(this + 64) & 1) == 0)
  {
    return CA::Render::Decoder::decode_int32(this);
  }

  return CA::Render::Decoder::decode_int64(this);
}

uint64_t CA::Display::DisplayTimingsControl::server_timing_expiry(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 3);
  v2 = *&this[6]._os_unfair_lock_opaque;
  if (v2)
  {
    do
    {
      do
      {
        explicit = atomic_load_explicit((v2 + 28), memory_order_acquire);
        v4 = *(v2 + 32);
        __dmb(9u);
      }

      while ((explicit & 1) != 0);
    }

    while (explicit != *(v2 + 28));
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(this + 3);
  return v4;
}

void CA::Render::Context::ResourceTable::release_value(CA::Render::Context::ResourceTable *this, CA::Render::Object *a2)
{
  if (this)
  {
    v3 = *(this + 12);
    if (v3 == 24)
    {
      os_unfair_lock_lock(&CA::Render::ImageProvider::_provider_lock);
      *(this + 23) = 0;
      os_unfair_lock_unlock(&CA::Render::ImageProvider::_provider_lock);
    }

    else if (v3 == 22)
    {
      if (*(this + 3))
      {
        os_unfair_lock_lock(&CA::Render::Handle::_handle_lock);
        *(this + 3) = 0;
        os_unfair_lock_unlock(&CA::Render::Handle::_handle_lock);
      }

      for (i = *(this + 6); i; i = i[1])
      {
        v5 = *i;
        if (*(*i + 12) == 61)
        {
          v6 = *(v5 + 128);
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6, a2);
            }

            *(v5 + 128) = 0;
          }
        }
      }

      v7 = *(this + 5);
      if (v7)
      {
        *(v7 + 40) = 0;
        if (atomic_fetch_add((v7 + 16), 0xFFFFFFFF) == 1)
        {
          CA::Render::LayerNode::delete_node(v7, a2);
        }

        *(this + 5) = 0;
      }

      v8 = *(this + 2);
      if (v8)
      {
        v9 = *(v8 + 136);
        if (v9)
        {
          v10 = *v9;
          if (*v9)
          {
            if (*(v10 + 12) == 31 && *(v10 + 40) == this)
            {
              CA::Render::LayerHost::invalidate(v10);
            }
          }
        }
      }

      if ((*(this + 13) & 0x20) != 0)
      {
        os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
        CA::Render::FlattenManager::delete_entry(this, v11);
        os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
      }

      CA::Render::Handle::set_current_layer(this, 0);
      *(this + 7) = 0;
      *(this + 8) = 0;
    }

    if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
    {
      v12 = *(*this + 16);

      v12(this);
    }
  }
}

void CA::Render::Context::delete_object(CA::Render::Context *this, CA::Render::Object *a2, int a3)
{
  v4 = ((a2 ^ 0x8000000000000000) + ~(a2 << 32)) ^ (((a2 ^ 0x8000000000000000) + ~(a2 << 32)) >> 22);
  v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
  v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
  v7 = (*(this + 17) + 8 * (*(this + 37) & ((v6 >> 31) ^ v6)));
  while (1)
  {
    v8 = v7;
    v7 = *v7;
    if (!v7)
    {
      break;
    }

    if (v7[1] == (a2 ^ 0x8000000000000000))
    {
      v9 = *(v7 + 6);
      if (v9)
      {
        v10 = v9 == a3;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        *v8 = *v7;
        CA::Render::Context::ResourceTable::release_value(v7[2], a2);
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_zone_free(malloc_zone, v7);
        --*(this + 20);
      }

      return;
    }
  }
}

void *CA::Render::Object::encode(CA::Render::Object *this, CA::Render::Encoder *a2)
{
  v3 = *(this + 3);
  v4 = *(a2 + 4);
  if ((v4 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v4 = *(a2 + 4);
  }

  *v4 = v3 >> 8;
  *(a2 + 4) += 4;

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void *CA::Render::Array::encode(CA::Render::Array *this, CA::Render::Encoder *a2)
{
  v4 = *(this + 3) >> 8;
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
  v9 = *(this + 4);
  if (v6 + 8 > v7)
  {
    CA::Render::Encoder::grow(a2, 4);
    v8 = *(a2 + 4);
  }

  *v8 = v9;
  v10 = (*(a2 + 4) + 4);
  *(a2 + 4) = v10;
  v11 = *(this + 4);
  if (*(this + 13))
  {
    if (v11)
    {
      v13 = 0;
      do
      {
        v14 = *(this + v13 + 3);
        if ((v10 + 1) > *(a2 + 5))
        {
          CA::Render::Encoder::grow(a2, 8);
          v10 = *(a2 + 4);
        }

        *v10 = v14;
        v10 = (*(a2 + 4) + 8);
        *(a2 + 4) = v10;
        ++v13;
      }

      while (v13 < *(this + 4));
    }
  }

  else if (v11)
  {
    v12 = 0;
    do
    {
      CA::Render::Encoder::encode_object(a2, *(this + v12++ + 3));
    }

    while (v12 < *(this + 4));
  }

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void *CA::Render::PresentationModifier::encode(CA::Render::PresentationModifier *this, CA::Render::Encoder *a2)
{
  CA::Render::Object::encode(this, a2);
  CA::Render::Encoder::encode_object(a2, *(this + 2));
  v4 = *(this + 3);
  v5 = *(a2 + 4);
  if ((v5 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 8);
    v5 = *(a2 + 4);
  }

  *v5 = v4;
  *(a2 + 4) += 8;
  CA::Render::Encoder::encode_keypath(a2, this + 4);
  v6 = *(this + 10);
  v7 = *(a2 + 4);
  if ((v7 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v7 = *(a2 + 4);
  }

  *v7 = v6;
  *(a2 + 4) += 4;

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void *CA::Render::Shmem::encode(CA::Render::Shmem *this, CA::Render::Encoder *a2)
{
  v3 = this;
  v4 = *(this + 3);
  v5 = *(a2 + 4);
  if ((v5 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v5 = *(a2 + 4);
  }

  *v5 = v4 >> 8;
  v6 = *(a2 + 4);
  v7 = (v6 + 4);
  *(a2 + 4) = v6 + 4;
  if ((v4 & 0x300) != 0)
  {
    v8 = *(v3 + 2);
    if ((v6 + 12) > *(a2 + 5))
    {
      CA::Render::Encoder::grow(a2, 8);
      v7 = *(a2 + 4);
    }

    *v7 = v8;
    v9 = *(a2 + 4);
    v10 = *(a2 + 5);
    v11 = (v9 + 8);
    *(a2 + 4) = v9 + 8;
    v12 = (*MEMORY[0x1E69E9AC8] - 1) & *(v3 + 3);
    if (v9 + 16 > v10)
    {
      CA::Render::Encoder::grow(a2, 8);
      v11 = *(a2 + 4);
    }

    *v11 = v12;
    *(a2 + 4) += 8;
    v13 = CA::Render::Shmem::port(v3);
    CA::Render::Encoder::encode_port_send_right(a2, v13, 0);
    v14 = x_heap_malloc_small_(*(a2 + 1), 0x10uLL);
    v15 = (v3 + 8);
    if (!atomic_fetch_add(v3 + 2, 1u))
    {
      v3 = 0;
      atomic_fetch_add(v15, 0xFFFFFFFF);
    }

    v16 = *(a2 + 14);
    *v14 = v3;
    v14[1] = v16;
    *(a2 + 14) = v14;
  }

  else
  {
    CA::Render::Encoder::encode_data_async(a2, *(v3 + 3), *(v3 + 2), CA::Render::release_object, v3);
    if (!atomic_fetch_add(v3 + 2, 1u))
    {
      atomic_fetch_add(v3 + 2, 0xFFFFFFFF);
    }
  }

  return CA::Render::Encoder::encode_sanity_check(a2);
}

uint64_t CA::Render::Encoder::encode_port_send_right(CA::Render::Encoder *this, mach_port_name_t name, BOOL a3)
{
  v3 = a3;
  v4 = name;
  if ((*(this + 64) & 2) != 0 && !a3)
  {
    v6 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], name, 0, 1);
    v3 = v6 == 0;
    if (v6)
    {
      v4 = 0;
    }
  }

  result = x_heap_malloc_small_(*(this + 1), 0x30uLL);
  *(result + 8) = 2;
  *(result + 16) = v4;
  *(result + 20) = 19;
  *(result + 24) = v3;
  v8 = *(this + 7);
  *result = *(this + 6);
  *(this + 6) = result;
  *(this + 7) = v8 + 1;
  return result;
}

CA::Render::Encoder *CA::Render::Encoder::encode_keypath(CA::Render::Encoder *this, void *const *a2)
{
  v3 = this;
  v4 = *a2;
  if (*a2)
  {
    if (v4)
    {
      if (HIDWORD(v4))
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = *v4;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 4);
  if ((v6 + 1) > *(this + 5))
  {
    this = CA::Render::Encoder::grow(this, 2);
    v6 = *(v3 + 4);
  }

  *v6 = v5;
  *(v3 + 4) += 2;
  if (v5)
  {
    for (i = 0; v5 != i; ++i)
    {
      v8 = *a2;
      if (!*a2)
      {
        goto LABEL_16;
      }

      if (v8)
      {
        v10 = v8 >> 1;
        if (i)
        {
          v10 = 0;
        }

        v11 = HIDWORD(v8);
        if (i == 1)
        {
          v9 = v11;
        }

        else
        {
          v9 = v10;
        }

        goto LABEL_22;
      }

      if (i < *v8)
      {
        v9 = *(v8 + 4 * i + 4);
      }

      else
      {
LABEL_16:
        v9 = 0;
      }

LABEL_22:
      v12 = *(v3 + 4);
      if ((v12 + 1) > *(v3 + 5))
      {
        this = CA::Render::Encoder::grow(v3, 1);
        v12 = *(v3 + 4);
      }

      *(v3 + 4) = v12 + 1;
      *v12 = (v9 & 0x40000000) >> 30;
      if ((v9 & 0x40000000) != 0)
      {
        v13 = *(v3 + 4);
        if ((v13 + 1) > *(v3 + 5))
        {
          this = CA::Render::Encoder::grow(v3, 4);
          v13 = *(v3 + 4);
        }

        *v13 = v9 & 0xBFFFFFFF;
        *(v3 + 4) += 4;
      }

      else
      {
        this = CA::Render::Encoder::encode_atom(v3, v9);
      }
    }
  }

  return this;
}

CA::Render::Encoder *CA::Render::Encoder::encode_atom(CA::Render::Encoder *this, unsigned int a2)
{
  v3 = this;
  v12 = *MEMORY[0x1E69E9840];
  if (a2 > 0x2FF)
  {
    v5 = *(this + 4);
    if ((v5 + 1) > *(this + 5))
    {
      CA::Render::Encoder::grow(this, 1);
      v5 = *(v3 + 4);
    }

    *(v3 + 4) = v5 + 1;
    *v5 = -1;
    String = CAAtomGetString(a2);
    CStringPtr = CFStringGetCStringPtr(String, 0x8000100u);
    if (CStringPtr || (MEMORY[0x1EEE9AC00](0), CStringPtr = v11, memset(v11, 0, 256), CFStringGetCString(String, v11, 256, 0x8000100u)))
    {
      v8 = strlen(CStringPtr);
    }

    else
    {
      CStringPtr = 0;
      v8 = 0;
    }

    return CA::Render::Encoder::encode_data(v3, CStringPtr, v8);
  }

  else if (a2 > 0xFD)
  {
    v9 = *(this + 4);
    if ((v9 + 1) > *(this + 5))
    {
      this = CA::Render::Encoder::grow(this, 1);
      v9 = *(v3 + 4);
    }

    *(v3 + 4) = v9 + 1;
    *v9 = -2;
    v10 = *(v3 + 4);
    if ((v10 + 1) > *(v3 + 5))
    {
      this = CA::Render::Encoder::grow(v3, 2);
      v10 = *(v3 + 4);
    }

    *v10 = a2;
    *(v3 + 4) += 2;
  }

  else
  {
    v4 = *(this + 4);
    if ((v4 + 1) > *(this + 5))
    {
      this = CA::Render::Encoder::grow(this, 1);
      v4 = *(v3 + 4);
    }

    *(v3 + 4) = v4 + 1;
    *v4 = a2;
  }

  return this;
}

void CA::Render::Layer::~Layer(CA::Render::Layer *this, const CA::Render::Object *a2)
{
  *this = &unk_1EF1F53C8;
  v3 = *(this + 14);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  if ((*(this + 13) & 2) == 0)
  {
    v4 = *(this + 15);
    if (v4)
    {
      if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 16))(v4);
      }
    }
  }

  v5 = *(this + 19);
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 16))(v5);
  }

  v6 = *(this + 18);
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v6 + 16))(v6);
  }

  v7 = *(this + 17);
  if (v7)
  {
    CA::Render::Layer::Ext::unref(v7);
  }

  v8 = *(this + 16);
  if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v8 + 16))(v8);
  }

  v9 = *(this + 13);
  if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v9 + 16))(v9);
  }

  --dword_1ED4EAAB0;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

{
  CA::Render::Layer::~Layer(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

void CA::Render::convert_cgcolor_to_float(CGColor *cf, CGColor *a2, CGColorSpace *a3, float *a4, CA::Render::Pattern **a5)
{
  v22 = *MEMORY[0x1E69E9840];
  if (CADeviceUseCIF10::once != -1)
  {
    dispatch_once(&CADeviceUseCIF10::once, &__block_literal_global_12623);
  }

  if (CADeviceUseCIF10::enable_cif10 == 1)
  {
    v9 = CAGetColorSpace(36);
    if (CFEqual(a2, v9))
    {
      a2 = CAGetColorSpace(35);
    }
  }

  if (CA::Render::initialize_types(void)::once[0] == -1)
  {
    if (!cf)
    {
      goto LABEL_27;
    }
  }

  else
  {
    dispatch_once(CA::Render::initialize_types(void)::once, &__block_literal_global_9_6242);
    if (!cf)
    {
      goto LABEL_27;
    }
  }

  if (CFGetTypeID(cf) == CA::Render::color_type && CGColorGetAlpha(cf) > 0.0)
  {
    Pattern = CGColorGetPattern(cf);
    if (Pattern)
    {
      if (a4)
      {
        *a4 = CA::Render::Pattern::new_pattern(Pattern, a2, 0, 0, 0.0);
      }

      if (CGPatternIsColored())
      {
        Alpha = CGColorGetAlpha(cf);
        if (Alpha > 1.0)
        {
          Alpha = 1.0;
        }

        if (Alpha < 0.0)
        {
          Alpha = 0.0;
        }

        *&Alpha = Alpha;
        _Q0 = vdupq_lane_s32(*&Alpha, 0);
        goto LABEL_25;
      }

      PatternBaseColor = CGColorGetPatternBaseColor();
      if (!PatternBaseColor)
      {
        __asm { FMOV            V0.4S, #1.0 }

LABEL_25:
        *a3 = _Q0;
        return;
      }

      v20 = 0u;
      v21 = 0u;
      CA_CGColorGetRGBComponents(PatternBaseColor, a2, v20.f64);
      v13 = vcvt_f32_f64(v20);
      v14 = vcvt_f32_f64(v21);
      *a3 = vcvt_hight_f32_f64(v13, v21);
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      CA_CGColorGetRGBComponents(cf, a2, v20.f64);
      v13 = vcvt_f32_f64(v20);
      v14 = vcvt_f32_f64(v21);
      *a3 = vcvt_hight_f32_f64(v13, v21);
      if (a4)
      {
        *a4 = 0;
      }
    }

    *a3 = vmul_lane_f32(v13, v14, 1);
    *(a3 + 2) = vmul_lane_f32(v14, v14, 1).u32[0];
    return;
  }

LABEL_27:
  *a3 = 0;
  *(a3 + 1) = 0;
  if (a4)
  {
    *a4 = 0;
  }
}

void CA_CGColorGetRGBComponents(CGColor *a1, CGColorSpace *a2, CGFloat *a3)
{
  Components = CGColorGetComponents(a1);
  ColorSpace = CGColorGetColorSpace(a1);
  CGColorGetContentHeadroom();
  if (v8 != 0.0 && v8 <= 1.0)
  {
    v11 = 0;
LABEL_29:
    v15 = 0;
    goto LABEL_30;
  }

  v10 = 0;
  while (colorspaces[v10] != ColorSpace)
  {
    if (++v10 == 39)
    {
      v10 = 0;
      goto LABEL_11;
    }
  }

  v10 = v10;
LABEL_11:
  if ((0xFFFAF57B7uLL >> v10))
  {
    if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB)
    {
      Extended = CGColorSpaceCreateExtended(ColorSpace);
      v11 = Extended;
      if (Extended)
      {
        ColorSpace = Extended;
      }

      goto LABEL_18;
    }
  }

  else
  {
    ColorSpace = CAGetColorSpace(extended_colorspaces[v10]);
  }

  v11 = 0;
LABEL_18:
  v13 = 0;
  while (colorspaces[v13] != a2)
  {
    if (++v13 == 39)
    {
      v13 = 0;
      goto LABEL_23;
    }
  }

  v13 = v13;
LABEL_23:
  if (((0xFFFAF57B7uLL >> v13) & 1) == 0)
  {
    a2 = CAGetColorSpace(extended_colorspaces[v13]);
    goto LABEL_29;
  }

  if (CGColorSpaceGetModel(a2) != kCGColorSpaceModelRGB)
  {
    goto LABEL_29;
  }

  v14 = CGColorSpaceCreateExtended(a2);
  v15 = v14;
  if (v14)
  {
    a2 = v14;
  }

LABEL_30:
  if ((CARequiresColorMatching(ColorSpace, a2, 0) & 1) == 0)
  {
    Model = CGColorSpaceGetModel(ColorSpace);
    if (Model == kCGColorSpaceModelRGB)
    {
      *a3 = *Components;
      a3[1] = Components[1];
      a3[2] = Components[2];
      Alpha = Components[3];
      goto LABEL_38;
    }

    if (Model == kCGColorSpaceModelMonochrome)
    {
      v17 = *Components;
      *a3 = *Components;
      *(a3 + 1) = v17;
      a3[2] = *Components;
      Alpha = Components[1];
      goto LABEL_38;
    }
  }

  if (CARetainColorTransform(a2))
  {
    CGColorTransformConvertColorComponents();
    CGColorTransformRelease();
  }

  else
  {
    *a3 = *Components;
    a3[1] = Components[1];
    a3[2] = Components[2];
  }

  Alpha = CGColorGetAlpha(a1);
LABEL_38:
  a3[3] = Alpha;
  if (v15)
  {
    CFRelease(v15);
  }

  if (v11)
  {

    CFRelease(v11);
  }
}

void CA::Layer::commit_animations(CA::Layer *this, CA::Transaction *a2, __CFString *a3, const __CFString *a4, CALayer *a5, CA::Render::TimingList *(*a6)(CA::Layer *, void *), void *a7)
{
  v45[1] = *MEMORY[0x1E69E9840];
  isa = a3[1].isa;
  if (isa)
  {
    v11 = (*(*isa + 24))(isa);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(this + 35);
  v44 = v12;
  if (!v12)
  {
    return;
  }

  v13 = *(*(a2 + 5) + 8);
  v14 = v12;
  do
  {
    if (*(v14 + 61))
    {
LABEL_7:
      if ((*(this + 55) & 0x10) == 0 && *(v14 + 56) == 1)
      {
        *(v14 + 58) = 1;
      }

      goto LABEL_51;
    }

    if (*(v14 + 57) != 1)
    {
      *(v14 + 11) = v13;
      v16 = v14[1];
      v17 = 0.0;
      if ((v16[16] & 4) != 0)
      {
        goto LABEL_24;
      }

      v18 = [v14[1] beginTimeMode];
      v19 = v18;
      if (v18 == @"non-zero")
      {
        [v16 beginTime];
        if (v20 == 0.0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v18 == @"relative")
        {
          goto LABEL_29;
        }

        if (v18 == @"absolute")
        {
          goto LABEL_31;
        }
      }

      if ([(__CFString *)v19 isEqualToString:@"non-zero"])
      {
        [v16 beginTime];
        if (v21 == 0.0)
        {
LABEL_24:
          if (v11)
          {
LABEL_25:
            v22 = v14[1];
            v23 = CA::Context::copy_timings(*(this + 2), a3->isa, a3);
            (*(*a3[1].isa + 48))(a3[1].isa, v22, v14, v23, v17);
            v24 = CA::Render::TimingList::map_time(v23, *&a3->data + v17);
            v25 = v14[1];
            v25[4] &= 0xFFFFFFFA;
            [v25 setBeginTime:v24];
            [v14[1] setBeginTimeMode:@"absolute"];
            *(v14[1] + 16) |= 1u;
            *(v14 + 59) = byte_1ED4E9889 ^ 1;
            if (v23 && atomic_fetch_add(v23 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v23 + 16))(v23);
            }

            goto LABEL_31;
          }

          goto LABEL_30;
        }
      }

      if (![(__CFString *)v19 isEqualToString:@"relative"])
      {
LABEL_31:
        *(v14 + 57) = 1;
        goto LABEL_32;
      }

LABEL_29:
      [v16 beginTime];
      v17 = v26;
      if (v11)
      {
        goto LABEL_25;
      }

LABEL_30:
      v27 = CA::Context::commit_layer_time(this, a3, v17, a3, a4, a5);
      v28 = v14[1];
      v28[4] &= 0xFFFFFFFA;
      [v28 setBeginTime:v27];
      [v14[1] setBeginTimeMode:@"absolute"];
      *(v14[1] + 16) |= 1u;
      goto LABEL_31;
    }

    if (*(v14 + 11) == v13)
    {
      goto LABEL_7;
    }

    *(v14 + 11) = v13;
    v15 = v14[4];
    if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v15 + 16))(v15);
    }

    v14[4] = 0;
LABEL_32:
    if (*(v14 + 64) == 1)
    {
      v29 = [v14[1] _copyRenderAnimationForLayer:*(this + 2)];
      if (v29)
      {
        v30 = v29;
        v31 = v14[2];
        if (v31)
        {
          Copy = CFStringCreateCopy(0, v31);
          v33 = CFHash(Copy);
        }

        else
        {
          v33 = 0;
          Copy = 0;
        }

        *(v30 + 64) = v33;
        v34 = *(v30 + 56);
        if (v34)
        {
          CFRelease(v34);
        }

        *(v30 + 56) = Copy;
        *(v30 + 72) = *(v14 + 10);
        if (objc_opt_isKindOfClass())
        {
          v45[0] = 0;
          v37 = *(v30 + 96);
          if (!v37 || (v37 & 1) == 0 && !*v37)
          {
            CA::Render::key_path_set(v45, v14[2], v35);
            CA::Render::key_path_free(*(v30 + 96), v38);
            *(v30 + 96) = v45[0];
          }
        }

        CA::Context::commit_animation(this, v30, a3, v36);
        v39 = *(v30 + 40);
        if (v39)
        {
          v40 = (v39 + 8);
          if (!atomic_fetch_add((v39 + 8), 1u))
          {
            v39 = 0;
            atomic_fetch_add(v40, 0xFFFFFFFF);
          }
        }

        v14[4] = v39;
        if (atomic_fetch_add((v30 + 8), 0xFFFFFFFF) == 1)
        {
          (*(*v30 + 16))(v30);
        }
      }
    }

    if (!v14[4])
    {
      v14[4] = CAMediaTimingCopyRenderTiming(v14[1]);
    }

LABEL_51:
    v14 = *v14;
  }

  while (v14);
  v41 = &v44;
  do
  {
    v42 = v41;
    v41 = v12;
    while (1)
    {
      if (*(v41 + 58))
      {
        *v42 = *v41;
        if (*(v41 + 64) == 1 && (*(v41 + 61) & 1) == 0)
        {
          CA::Context::remove_animation(this, v41[2], a3, a4);
        }

        goto LABEL_60;
      }

      if ((*(v41 + 61) & 1) == 0)
      {
        break;
      }

      *v42 = *v41;
LABEL_60:
      schedule_stop_callback(v41, &animation_state);
      *v41 = qword_1ED4E4E00;
      qword_1ED4E4E00 = v41;
      v41 = *v42;
      if (!*v42)
      {
        goto LABEL_65;
      }
    }

    if (*(v41 + 62) == 1)
    {
      *(v41 + 62) = 0;
    }

    v12 = *v41;
  }

  while (*v41);
LABEL_65:
  v43 = v44;

  CA::Layer::set_animations(this, v43);
}

void sub_183B76B24(_Unwind_Exception *exception_object)
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

void *CA::Render::Layer::set_rasterization_scale(void *this, float a2)
{
  v3 = this;
  v4 = a2;
  if (truncf(a2) != a2 || this[17])
  {
    this = CA::Render::Layer::ensure_ext(this);
    *(this + 77) = a2;
  }

  *(v3 + 39) = v4;
  return this;
}

void *CA::Render::CompressedImage::encode(CA::Render::CompressedImage *this, CA::Render::Encoder *a2)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v4 = *(this + 3) >> 8;
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
  v9 = *(this + 4);
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
  v13 = *(this + 5);
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
  v17 = *(this + 42);
  if (v14 + 8 > v15)
  {
    CA::Render::Encoder::grow(a2, 4);
    v16 = *(a2 + 4);
  }

  *v16 = v17;
  v18 = (*(a2 + 4) + 4);
  *(a2 + 4) = v18;
  if (*(this + 42) >= 1)
  {
    v19 = 0;
    do
    {
      v20 = *(*(this + 18) + 8 * v19);
      if ((v18 + 1) > *(a2 + 5))
      {
        CA::Render::Encoder::grow(a2, 8);
        v18 = *(a2 + 4);
      }

      *v18 = v20;
      v21 = *(a2 + 4);
      v22 = *(a2 + 5);
      v23 = (v21 + 8);
      *(a2 + 4) = v21 + 8;
      v24 = *(*(this + 19) + 8 * v19);
      if (v21 + 16 > v22)
      {
        CA::Render::Encoder::grow(a2, 8);
        v23 = *(a2 + 4);
      }

      *v23 = v24;
      v25 = *(a2 + 4);
      v26 = *(a2 + 5);
      v27 = (v25 + 8);
      *(a2 + 4) = v25 + 8;
      v28 = *(*(this + 20) + 8 * v19);
      if (v25 + 16 > v26)
      {
        CA::Render::Encoder::grow(a2, 8);
        v27 = *(a2 + 4);
      }

      *v27 = v28;
      v18 = (*(a2 + 4) + 8);
      *(a2 + 4) = v18;
      ++v19;
    }

    while (v19 < *(this + 42));
  }

  v29 = *(this + 44);
  if (v18 + 4 > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v18 = *(a2 + 4);
  }

  *v18 = v29;
  v30 = *(a2 + 4);
  v31 = *(a2 + 5);
  v32 = (v30 + 4);
  *(a2 + 4) = v30 + 4;
  v33 = *(this + 46);
  if (v30 + 8 > v31)
  {
    CA::Render::Encoder::grow(a2, 4);
    v32 = *(a2 + 4);
  }

  *v32 = v33;
  v34 = *(a2 + 4);
  v35 = *(a2 + 5);
  v36 = (v34 + 4);
  *(a2 + 4) = v34 + 4;
  v37 = *(this + 192) & 1;
  if (v34 + 5 > v35)
  {
    CA::Render::Encoder::grow(a2, 1);
    v36 = *(a2 + 4);
  }

  *(a2 + 4) = v36 + 1;
  *v36 = v37;
  v38 = *(this + 15);
  v39 = *(a2 + 4);
  if ((v39 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 8);
    v39 = *(a2 + 4);
  }

  *v39 = v38;
  *(a2 + 4) += 8;
  v40 = *(this + 47);
  if (!v40)
  {
    v41 = *(this + 14);
    v46[0] = *(this + 15);
    mach_make_memory_entry_64(*MEMORY[0x1E69E9A60], v46, v41, 3145729, this + 47, 0);
    v40 = *(this + 47);
  }

  CA::Render::Encoder::encode_port_send_right(a2, v40, 0);
  v42 = x_heap_malloc_small_(*(a2 + 1), 0x10uLL);
  v43 = this;
  if (!atomic_fetch_add(this + 2, 1u))
  {
    v43 = 0;
    atomic_fetch_add(this + 2, 0xFFFFFFFF);
  }

  v44 = *(a2 + 14);
  *v42 = v43;
  v42[1] = v44;
  *(a2 + 14) = v42;
  CA::Render::Texture::encode(this, a2);

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void *CA::Render::Texture::encode(CA::Render::Texture *this, CA::Render::Encoder *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  CA::Render::Encoder::encode_colorspace(a2, *(this + 7));
  v4 = *(this + 8);
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
  v9 = *(this + 12);
  if (v6 + 6 > v7)
  {
    CA::Render::Encoder::grow(a2, 2);
    v8 = *(a2 + 4);
  }

  *v8 = v9;
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v12 = (v10 + 2);
  *(a2 + 4) = v10 + 2;
  v13 = *(this + 13);
  if (v10 + 4 > v11)
  {
    CA::Render::Encoder::grow(a2, 2);
    v12 = *(a2 + 4);
  }

  *v12 = v13;
  v14 = *(a2 + 4);
  v15 = *(a2 + 5);
  v16 = (v14 + 2);
  *(a2 + 4) = v14 + 2;
  v17 = *(this + 14);
  if (v14 + 4 > v15)
  {
    CA::Render::Encoder::grow(a2, 2);
    v16 = *(a2 + 4);
  }

  *v16 = v17;
  v18 = *(a2 + 4);
  v19 = *(a2 + 5);
  v20 = (v18 + 2);
  *(a2 + 4) = v18 + 2;
  v21 = *(this + 15);
  if (v18 + 4 > v19)
  {
    CA::Render::Encoder::grow(a2, 2);
    v20 = *(a2 + 4);
  }

  *v20 = v21;
  v22 = *(a2 + 4);
  v23 = (v22 + 2);
  *(a2 + 4) = v22 + 2;
  v24 = *(this + 6);
  if (!v24)
  {
    if ((v22 + 6) > *(a2 + 5))
    {
      CA::Render::Encoder::grow(a2, 4);
      v23 = *(a2 + 4);
    }

    *v23 = 0;
    goto LABEL_38;
  }

  if (v24)
  {
    if (v24 == 1)
    {
      goto LABEL_35;
    }

LABEL_24:
    if ((v22 + 6) > *(a2 + 5))
    {
      CA::Render::Encoder::grow(a2, 4);
      v23 = *(a2 + 4);
    }

    *v23 = -2;
    *(a2 + 4) += 4;
    v54 = 0;
    v55 = 0;
    CA::Shape::get_bounds(v24, &v54);
    v30 = v54;
    v31 = *(a2 + 4);
    if ((v31 + 1) > *(a2 + 5))
    {
      CA::Render::Encoder::grow(a2, 4);
      v31 = *(a2 + 4);
    }

    *v31 = v30;
    v32 = *(a2 + 4);
    v33 = *(a2 + 5);
    v34 = (v32 + 4);
    *(a2 + 4) = v32 + 4;
    v35 = HIDWORD(v54);
    if (v32 + 8 > v33)
    {
      CA::Render::Encoder::grow(a2, 4);
      v34 = *(a2 + 4);
    }

    *v34 = v35;
    v36 = *(a2 + 4);
    v37 = *(a2 + 5);
    v38 = (v36 + 4);
    *(a2 + 4) = v36 + 4;
    v39 = v55;
    if (v36 + 8 > v37)
    {
      CA::Render::Encoder::grow(a2, 4);
      v38 = *(a2 + 4);
    }

    *v38 = v39;
    v40 = *(a2 + 4);
    v41 = *(a2 + 5);
    v42 = (v40 + 4);
    *(a2 + 4) = v40 + 4;
    v43 = HIDWORD(v55);
    if (v40 + 8 > v41)
    {
      CA::Render::Encoder::grow(a2, 4);
      v42 = *(a2 + 4);
    }

    *v42 = v43;
    goto LABEL_38;
  }

  v25 = *(v24 + 4);
  if (v25 == 12)
  {
    goto LABEL_24;
  }

  if (v25 == 6)
  {
LABEL_35:
    if ((v22 + 6) > *(a2 + 5))
    {
      CA::Render::Encoder::grow(a2, 4);
      v23 = *(a2 + 4);
    }

    *v23 = -1;
LABEL_38:
    v29 = *(a2 + 4) + 4;
    goto LABEL_39;
  }

  if ((v22 + 6) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v23 = *(a2 + 4);
  }

  *v23 = v25;
  v26 = *(a2 + 5);
  v27 = (*(a2 + 4) + 4);
  *(a2 + 4) = v27;
  v28 = 4 * v25 - 12;
  if (v27 + v28 > v26)
  {
    CA::Render::Encoder::grow(a2, v28);
    v27 = *(a2 + 4);
  }

  memcpy(v27, (v24 + 12), v28);
  v29 = *(a2 + 4) + v28;
LABEL_39:
  *(a2 + 4) = v29;
  CA::Render::Encoder::encode_sanity_check(a2);
  v44 = *(this + 16);
  v45 = *(a2 + 4);
  if ((v45 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v45 = *(a2 + 4);
  }

  *v45 = v44;
  v46 = *(a2 + 4);
  v47 = *(a2 + 5);
  v48 = (v46 + 4);
  *(a2 + 4) = v46 + 4;
  v49 = *(this + 17);
  if (v46 + 8 > v47)
  {
    CA::Render::Encoder::grow(a2, 4);
    v48 = *(a2 + 4);
  }

  *v48 = v49;
  v50 = *(a2 + 4);
  v51 = v50 + 4;
  *(a2 + 4) = v50 + 4;
  if ((*(this + 14) & 0x10) != 0)
  {
    if ((v50 + 24) > *(a2 + 5))
    {
      CA::Render::Encoder::grow(a2, 20);
      v51 = *(a2 + 4);
    }

    v52 = *(this + 72);
    *(v51 + 16) = *(this + 22);
    *v51 = v52;
    *(a2 + 4) += 20;
  }

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void *CA::Render::Encoder::encode_data(CA::Render::Encoder *this, const void *__src, size_t a3)
{
  v6 = *(this + 4);
  if ((v6 + 1) > *(this + 5))
  {
    CA::Render::Encoder::grow(this, 8);
    v6 = *(this + 4);
  }

  *v6 = a3;
  result = (*(this + 4) + 8);
  *(this + 4) = result;
  if (a3)
  {
    if (result + a3 > *(this + 5))
    {
      CA::Render::Encoder::grow(this, a3);
      result = *(this + 4);
    }

    result = memcpy(result, __src, a3);
    *(this + 4) += a3;
  }

  return result;
}

void CA::Render::Encoder::encode_colorspace(CA::Render::Encoder *this, CGColorSpaceRef space)
{
  if (space)
  {
    if (*(this + 10) == space)
    {
      v6 = *(this + 4);
      if ((v6 + 1) > *(this + 5))
      {
        CA::Render::Encoder::grow(this, 1);
        v6 = *(this + 4);
      }

      *(this + 4) = v6 + 1;
      *v6 = 3;
    }

    else
    {
      v4 = 0;
      while (colorspaces[v4] != space)
      {
        if (++v4 == 39)
        {
          goto LABEL_19;
        }
      }

      if (!v4)
      {
LABEL_19:
        Name = CGColorSpaceGetName(space);
        if (Name)
        {
          v10 = Name;
          v11 = *(this + 4);
          if ((v11 + 1) > *(this + 5))
          {
            CA::Render::Encoder::grow(this, 1);
            v11 = *(this + 4);
          }

          *(this + 4) = v11 + 1;
          *v11 = 4;

          CA::Render::Encoder::encode_cfobject(this, v10);
        }

        else
        {
          v12 = CGColorSpaceCopyPropertyList(space);
          v13 = *(this + 4);
          if ((v13 + 1) > *(this + 5))
          {
            CA::Render::Encoder::grow(this, 1);
            v13 = *(this + 4);
          }

          *(this + 4) = v13 + 1;
          *v13 = 2;
          CA::Render::Encoder::encode_cfobject(this, v12);
          if (v12)
          {

            CFRelease(v12);
          }
        }

        return;
      }

      v7 = *(this + 4);
      if ((v7 + 1) > *(this + 5))
      {
        CA::Render::Encoder::grow(this, 1);
        v7 = *(this + 4);
      }

      *(this + 4) = v7 + 1;
      *v7 = 1;
      v8 = *(this + 4);
      if ((v8 + 1) > *(this + 5))
      {
        CA::Render::Encoder::grow(this, 1);
        v8 = *(this + 4);
      }

      *(this + 4) = v8 + 1;
      *v8 = v4;
    }
  }

  else
  {
    v5 = *(this + 4);
    if ((v5 + 1) > *(this + 5))
    {
      CA::Render::Encoder::grow(this, 1);
      v5 = *(this + 4);
    }

    *(this + 4) = v5 + 1;
    *v5 = 0;
  }
}

void CA::Render::Encoder::encode_cfobject(CA::Render::Encoder *this, const void *a2)
{
  v2 = MEMORY[0x1EEE9AC00](this);
  v4 = v3;
  v5 = v2;
  v50 = *MEMORY[0x1E69E9840];
  if (CA::Render::cacftype_from_cfobject(void const*)::once[0] == -1)
  {
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_12:
    LODWORD(v7) = 0;
    goto LABEL_13;
  }

  dispatch_once(CA::Render::cacftype_from_cfobject(void const*)::once, &__block_literal_global_241);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (*MEMORY[0x1E695E738] == v4)
  {
    LODWORD(v7) = 1;
  }

  else
  {
    v6 = CFGetTypeID(v4);
    v7 = 0;
    while (CA::Render::cacftype_from_cfobject(void const*)::cfTypeIds[v7] != v6)
    {
      if (++v7 == 14)
      {
        if (v6 == CA::Render::cacftype_from_cfobject(void const*)::ns_object_type_id && (objc_opt_isKindOfClass() & 1) != 0)
        {
          LODWORD(v7) = 12;
          break;
        }

        goto LABEL_12;
      }
    }
  }

LABEL_13:
  v8 = *(v5 + 4);
  if ((v8 + 1) > *(v5 + 5))
  {
    CA::Render::Encoder::grow(v5, 1);
    v8 = *(v5 + 4);
  }

  *(v5 + 4) = v8 + 1;
  *v8 = v7;
  if (v7 > 7)
  {
    if (v7 <= 10)
    {
      switch(v7)
      {
        case 8:

          CA::Render::Encoder::encode_colorspace(v5, v4);
          break;
        case 9:
          ColorSpace = CGImageGetColorSpace(v4);
          v33 = CA::Render::copy_image(v4, ColorSpace, 0, 0.0, 1.0);
          v34 = *(v33 + 12);
          v35 = *(v5 + 4);
          if ((v35 + 1) > *(v5 + 5))
          {
            CA::Render::Encoder::grow(v5, 1);
            v35 = *(v5 + 4);
          }

          *(v5 + 4) = v35 + 1;
          *v35 = v34;
          if (v34 == 57 || v34 == 23)
          {
            CA::Render::Encoder::encode_object(v5, v33);
          }

          else
          {
            if (x_log_get_render(void)::once[0] != -1)
            {
              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            }

            v43 = x_log_get_render(void)::log;
            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v48) = 67109120;
              DWORD1(v48) = v34;
              _os_log_error_impl(&dword_183AA6000, v43, OS_LOG_TYPE_ERROR, "encode kCACFTypeImage got unsupported type %d", &v48, 8u);
            }
          }

          if (atomic_fetch_add(v33 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v33 + 16))(v33);
          }

          break;
        case 0xA:
          v11 = CAGetColorSpace(35);
          v48 = 0uLL;
          v49 = 0;
          CA::Render::convert_cgcolor(v4, v11, &v48, 0, v12);
          v13.i32[0] = HIDWORD(v48);
          if (*(&v48 + 3) != 0.0 && *(&v48 + 3) != 1.0)
          {
            *&v48 = vdiv_f32(*&v48, vdup_lane_s32(v13, 0));
            *(&v48 + 2) = *(&v48 + 2) / *(&v48 + 3);
          }

          v14 = *(v5 + 4);
          if ((v14 + 20) > *(v5 + 5))
          {
            CA::Render::Encoder::grow(v5, 20);
            v14 = *(v5 + 4);
          }

          *v14 = v48;
          *(v14 + 16) = v49;
          v15 = *(v5 + 4) + 20;
          goto LABEL_69;
        default:
          return;
      }

      return;
    }

    if (v7 == 11)
    {
LABEL_44:
      v18 = [(__CFString *)v4 CA_copyRenderValue];
      CA::Render::Encoder::encode_object(v5, v18);
      if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
      {
        v19 = *(*v18 + 16);

        v19(v18);
      }

      return;
    }

    if (v7 != 12)
    {
      if (v7 != 13)
      {
        return;
      }

      goto LABEL_44;
    }

    v40 = [(__CFString *)v4 objCType];
    if (!strcmp(v40, "{CGPoint=dd}"))
    {
      v41 = 0;
    }

    else
    {
      if (strcmp(v40, "{CGSize=dd}"))
      {
        if (!strcmp(v40, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
        {
          v41 = 2;
          v42 = 32;
        }

        else if (!strcmp(v40, "{CATransform3D=dddddddddddddddd}"))
        {
          v41 = 3;
          v42 = 128;
        }

        else if (!strcmp(v40, "{CGAffineTransform=dddddd}"))
        {
          v41 = 4;
          v42 = 48;
        }

        else if (!strcmp(v40, "{CAPoint3D=ddd}"))
        {
          v41 = 5;
          v42 = 24;
        }

        else if (!strcmp(v40, "{CACornerRadii={CGSize=dd}{CGSize=dd}{CGSize=dd}{CGSize=dd}}"))
        {
          v41 = 6;
          v42 = 64;
        }

        else
        {
          if (strcmp(v40, "{CAColorMatrix=ffffffffffffffffffff}"))
          {
            return;
          }

          v41 = 7;
          v42 = 80;
        }

        goto LABEL_99;
      }

      v41 = 1;
    }

    v42 = 16;
LABEL_99:
    [(__CFString *)v4 getValue:&v48 size:v42];
    v44 = *(v5 + 4);
    if ((v44 + 1) > *(v5 + 5))
    {
      CA::Render::Encoder::grow(v5, 1);
      v44 = *(v5 + 4);
    }

    *(v5 + 4) = v44 + 1;
    *v44 = v41;
    v24 = &v48;
    v23 = v5;
    v22 = v42;
    goto LABEL_102;
  }

  if (v7 > 4)
  {
    switch(v7)
    {
      case 5:
        BytePtr = CFDataGetBytePtr(v4);
        Length = CFDataGetLength(v4);
        v27 = CFRetain(v4);

        CA::Render::Encoder::encode_data_async(v5, BytePtr, Length, CA::Render::release_cfdata, v27);
        break;
      case 6:
        Count = CFArrayGetCount(v4);
        v37 = *(v5 + 4);
        if ((v37 + 1) > *(v5 + 5))
        {
          CA::Render::Encoder::grow(v5, 8);
          v37 = *(v5 + 4);
        }

        *v37 = Count;
        *(v5 + 4) += 8;
        if (Count)
        {
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
            CA::Render::Encoder::encode_cfobject(v5, ValueAtIndex);
          }
        }

        break;
      case 7:
        v16 = CFDictionaryGetCount(v4);
        v17 = *(v5 + 4);
        if ((v17 + 1) > *(v5 + 5))
        {
          CA::Render::Encoder::grow(v5, 8);
          v17 = *(v5 + 4);
        }

        *v17 = v16;
        *(v5 + 4) += 8;

        CFDictionaryApplyFunction(v4, CA::Render::encode_dictionary_item, v5);
        break;
    }
  }

  else
  {
    if (v7 != 2)
    {
      if (v7 != 3)
      {
        if (v7 == 4)
        {
          Value = CFBooleanGetValue(v4);
          v10 = *(v5 + 4);
          if ((v10 + 1) > *(v5 + 5))
          {
            CA::Render::Encoder::grow(v5, 1);
            v10 = *(v5 + 4);
          }

          *(v5 + 4) = v10 + 1;
          *v10 = Value;
        }

        return;
      }

      Type = CFNumberGetType(v4);
      if (Type <= kCFNumberCGFloatType && ((1 << Type) & 0x13060) != 0)
      {
        *&v48 = 0;
        if (!CFNumberGetValue(v4, kCFNumberDoubleType, &v48))
        {
          *&v48 = 0;
        }

        v29 = *(v5 + 4);
        if ((v29 + 1) > *(v5 + 5))
        {
          CA::Render::Encoder::grow(v5, 1);
          v29 = *(v5 + 4);
        }

        *(v5 + 4) = v29 + 1;
        *v29 = 0;
        v30 = v48;
        v31 = *(v5 + 4);
        if ((v31 + 1) > *(v5 + 5))
        {
          CA::Render::Encoder::grow(v5, 8);
          v31 = *(v5 + 4);
        }

        *v31 = v30;
      }

      else
      {
        *&v48 = 0;
        if (!CFNumberGetValue(v4, kCFNumberLongLongType, &v48))
        {
          *&v48 = 0;
        }

        v45 = *(v5 + 4);
        if ((v45 + 1) > *(v5 + 5))
        {
          CA::Render::Encoder::grow(v5, 1);
          v45 = *(v5 + 4);
        }

        *(v5 + 4) = v45 + 1;
        *v45 = 1;
        v46 = v48;
        v47 = *(v5 + 4);
        if ((v47 + 1) > *(v5 + 5))
        {
          CA::Render::Encoder::grow(v5, 8);
          v47 = *(v5 + 4);
        }

        *v47 = v46;
      }

      v15 = *(v5 + 4) + 8;
LABEL_69:
      *(v5 + 4) = v15;
      return;
    }

    bzero(&v48, 0x1000uLL);
    CString = CA_CFStringGetCString(v4, &v48, 4096);
    v21 = *(v5 + 4);
    if ((v21 + 1) > *(v5 + 5))
    {
      CA::Render::Encoder::grow(v5, 1);
      v21 = *(v5 + 4);
    }

    *(v5 + 4) = v21 + 1;
    *v21 = CString != 0;
    if (CString)
    {
      v22 = strlen(CString) + 1;
      v23 = v5;
      v24 = CString;
LABEL_102:
      CA::Render::Encoder::encode_data(v23, v24, v22);
    }
  }
}

atomic_uint *CA::Render::String::new_string(const __CFString *this, const __CFString *a2)
{
  usedBufLen[1] = *MEMORY[0x1E69E9840];
  if (!this)
  {
    return 0;
  }

  usedBufLen[0] = 0;
  v8.length = CFStringGetLength(this);
  v8.location = 0;
  CFStringGetBytes(this, v8, 0x8000100u, 0, 0, 0, 0, usedBufLen);
  if ((usedBufLen[0] - 0x100000000) < 0xFFFFFFFF00000001)
  {
    return 0;
  }

  v6 = CA::Render::String::new_string(usedBufLen[0], 0, v3);
  v4 = v6;
  if (v6 && !CFStringGetCString(this, v6 + 28, usedBufLen[0] + 1, 0x8000100u))
  {
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 16))(v4);
    }

    return 0;
  }

  return v4;
}

void *CA::Render::String::encode(CA::Render::String *this, CA::Render::Encoder *a2)
{
  v4 = *(this + 6);
  v5 = *(a2 + 4);
  if ((v5 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v5 = *(a2 + 4);
  }

  *v5 = v4;
  v6 = *(a2 + 5);
  v7 = (*(a2 + 4) + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 6);
  if (v7 + v8 > v6)
  {
    CA::Render::Encoder::grow(a2, *(this + 6));
    v7 = *(a2 + 4);
  }

  memcpy(v7, this + 28, v8);
  *(a2 + 4) += v8;

  return CA::Render::Encoder::encode_sanity_check(a2);
}

double CALayer_getter_kCAValueRect(CA::Transaction *a1, unsigned int a2)
{
  v4 = *MEMORY[0x1E69E9840];
  memset(v3, 0, sizeof(v3));
  CA::Layer::getter(a1, a2, 0x15, v3);
  return *v3;
}

void CA::call_at_time(CA *this, void (*a2)(double, void *), double a3, void *a4)
{
  os_unfair_lock_lock(&CA::callback_lock);
  v7 = CA::callbacks;
  if (CA::callbacks)
  {
    v8 = &CA::callbacks;
    while (1)
    {
      v9 = v7;
      if (*(v7 + 8) == this && *(v7 + 16) == a2)
      {
        break;
      }

      v7 = *v7;
      v8 = v9;
      if (!*v9)
      {
        goto LABEL_6;
      }
    }

    *v8 = *v7;
  }

  else
  {
LABEL_6:
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v9 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x10A00405421CD5EuLL);
    v9[1] = this;
    v9[2] = a2;
  }

  *(v9 + 3) = a3;
  v10 = &CA::callbacks;
  do
  {
    v11 = v10;
    v10 = *v10;
  }

  while (v10 && *(v10 + 3) <= a3);
  *v9 = v10;
  *v11 = v9;
  if (v11 == &CA::callbacks)
  {
    CA::update_timer(v9);
  }

  os_unfair_lock_unlock(&CA::callback_lock);
}

_DWORD *CA::Render::String::new_string(CA::Render::String *this, const void *a2, const char *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (this <= 0x10000)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v7 = malloc_type_zone_malloc(malloc_zone, this + 32, 0x3415DE56uLL);
    v5 = v7;
    if (v7)
    {
      v7[2] = 1;
      v7[3] = 54;
      ++dword_1ED4EAB10;
      *v7 = &unk_1EF1FDF88;
      *(v7 + 2) = 0;
      v7[6] = this;
      if (a2)
      {
        memcpy(v7 + 7, a2, this);
      }

      *(this + v5 + 28) = 0;
    }
  }

  else
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v4 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      v9 = 134217984;
      v10 = this;
      _os_log_error_impl(&dword_183AA6000, v4, OS_LOG_TYPE_ERROR, "suspiciously long string: %zu", &v9, 0xCu);
    }

    return 0;
  }

  return v5;
}

uint64_t CA::Render::Layer::set_subclass(uint64_t this, CA::Render::LayerSubclass *a2)
{
  v2 = a2;
  if (a2 || *(this + 136))
  {
    v3 = CA::Render::Layer::ensure_ext(this);
    this = *v3;
    if (*v3 != v2)
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

      *v3 = v2;
    }
  }

  return this;
}

void *CA::Render::BackdropLayer::encode(CA::Render::BackdropLayer *this, CA::Render::Encoder *a2)
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
  *(a2 + 4) += 8;
  CA::Render::Encoder::encode_object(a2, *(this + 3));
  v6 = *(this + 8);
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
  v11 = *(this + 9);
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
  v15 = *(this + 10);
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
  v19 = *(this + 6);
  if (v16 + 8 > v17)
  {
    CA::Render::Encoder::grow(a2, 4);
    v18 = *(a2 + 4);
  }

  *v18 = v19;
  v20 = *(a2 + 4);
  v21 = *(a2 + 5);
  v22 = (v20 + 4);
  *(a2 + 4) = v20 + 4;
  if (v20 + 36 > v21)
  {
    CA::Render::Encoder::grow(a2, 32);
    v22 = *(a2 + 4);
  }

  v23 = *(this + 72);
  *v22 = *(this + 56);
  v22[1] = v23;
  v24 = *(a2 + 4);
  v25 = *(a2 + 5);
  v26 = (v24 + 32);
  *(a2 + 4) = v24 + 32;
  v27 = *(this + 22);
  if (v24 + 36 > v25)
  {
    CA::Render::Encoder::grow(a2, 4);
    v26 = *(a2 + 4);
  }

  *v26 = v27;
  v28 = *(a2 + 4);
  v29 = *(a2 + 5);
  v30 = (v28 + 4);
  *(a2 + 4) = v28 + 4;
  if (v28 + 36 > v29)
  {
    CA::Render::Encoder::grow(a2, 32);
    v30 = *(a2 + 4);
  }

  v31 = *(this + 7);
  *v30 = *(this + 6);
  v30[1] = v31;
  v32 = *(a2 + 4);
  v33 = *(a2 + 5);
  v34 = (v32 + 32);
  *(a2 + 4) = v32 + 32;
  v35 = *(this + 128);
  if (v32 + 33 > v33)
  {
    CA::Render::Encoder::grow(a2, 1);
    v34 = *(a2 + 4);
  }

  *(a2 + 4) = v34 + 1;
  *v34 = v35;

  return CA::Render::Encoder::encode_sanity_check(a2);
}

CA::Render::Texture *CA::Render::copy_render_value(CA::Render::Texture *cf, CGImage *a2, CGColorSpace *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    return cf;
  }

  v4 = cf;
  if (CA::Render::initialize_types(void)::once[0] != -1)
  {
    dispatch_once(CA::Render::initialize_types(void)::once, &__block_literal_global_9_6242);
  }

  v5 = CFGetTypeID(v4);
  if (v5 == CA::Render::image_type)
  {

    return CA::Render::copy_image(v4, a2, 0, 0.0, 1.0);
  }

  if (v5 == CA::Render::backing_type)
  {

    return CABackingStoreRetainFrontTexture(v4, a2);
  }

  if (v5 == CA::Render::color_type)
  {
    if (CGColorGetPattern(v4))
    {
      return 0;
    }

    v19 = 0u;
    *v20 = 0u;
    CA_CGColorGetRGBComponents(v4, a2, v19.f64);
    v15 = vmulq_n_f64(v19, v20[1]);
    v16 = v20[0] * v20[1];
    v17 = v20[1];
    CGColorGetContentHeadroom();
    v18 = v10;
    v11 = 5;
    return CA::Render::Vector::new_vector(v11, &v15, v7);
  }

  if (v5 != CA::Render::surface_type)
  {
    if (v5 == CA::Render::machport_type)
    {
      cf = X::Allocator0::operator new(0x178uLL);
      if (cf)
      {
        return CA::Render::Surface::Surface(cf, v4);
      }

      return cf;
    }

    if (v5 == CA::Render::caiosurface_type)
    {

      return CAIOSurfaceRetainFrontTexture(v4);
    }

    if (v5 == CA::Render::cvpixelbuffer_type)
    {
      cf = CVPixelBufferGetIOSurface(v4);
      if (!cf)
      {
        return cf;
      }

      v12 = cf;
      cf = X::Allocator0::operator new(0x178uLL);
      if (!cf)
      {
        return cf;
      }

      v9 = v12;
      v8 = 3;
      return CA::Render::Surface::Surface(cf, v9, -1, v8, 0x10000, 0, 0);
    }

    if (v5 == CA::Render::queue_type)
    {

      return CAImageQueueCopyRenderValue(v4);
    }

    if (v5 == CA::Render::provider_type)
    {

      return CAImageProviderCopyRenderValue(v4, v6);
    }

    if (v5 == CA::Render::path_type)
    {

      return CA::Render::Path::new_path(v4, v6);
    }

    if (v5 == CA::Render::number_type)
    {
      v15.f64[0] = 0.0;
      CFNumberGetValue(v4, kCFNumberDoubleType, &v15);
      v13 = v15.f64[0];
    }

    else
    {
      if (v5 != CA::Render::BOOL_type)
      {
        if (v5 == CA::Render::string_type)
        {

          return CA::Render::String::new_string(v4, v6);
        }

        else if (v5 == CA::Render::array_type)
        {

          return CA::Render::copy_render_array(v4, a2, v7);
        }

        else if (v5 == CA::Render::render_object_type)
        {
          cf = v4->data;
          if (cf)
          {
            v14 = (cf + 8);
            if (!atomic_fetch_add(cf + 2, 1u))
            {
              cf = 0;
              atomic_fetch_add(v14, 0xFFFFFFFF);
            }
          }
        }

        else
        {
          if (![(__CFString *)v4 conformsToProtocol:&unk_1EF246FB0])
          {
            return 0;
          }

          cf = X::Allocator0::operator new(0x80uLL);
          if (cf)
          {
            return CA::Render::MetalTexture::MetalTexture(cf, v4);
          }
        }

        return cf;
      }

      v13 = 0.0;
      if (*MEMORY[0x1E695E4C0] != v4)
      {
        v13 = 1.0;
      }
    }

    v15.f64[0] = v13;
    v11 = 1;
    return CA::Render::Vector::new_vector(v11, &v15, v7);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  cf = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x178uLL, 0xDEEC3011uLL);
  if (cf)
  {
    v8 = 99;
    v9 = v4;
    return CA::Render::Surface::Surface(cf, v9, -1, v8, 0x10000, 0, 0);
  }

  return cf;
}

uint64_t CABackingStoreRetainFrontTexture(uint64_t a1, CGColorSpace *a2)
{
  pthread_mutex_lock((a1 + 16));
  CABackingStoreGetFrontTexture(a1, a2, v4);
  v6 = v5;
  if (v5 && !atomic_fetch_add((v5 + 8), 1u))
  {
    v6 = 0;
    atomic_fetch_add((v5 + 8), 0xFFFFFFFF);
  }

  pthread_mutex_unlock((a1 + 16));
  return v6;
}

atomic_uint **CA::Render::Shmem::copy_image(CA::Render::Shmem *this, CGColorSpace *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  if (v2 < 0x24 || (*(this + 13) & 4) != 0)
  {
    return 0;
  }

  v4 = *(this + 3);
  v5 = v4[8];
  v6 = v4[5];
  v37 = v4[4];
  v38 = v6;
  if (v5 >= 0x21)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v7 = x_log_get_render(void)::log;
    if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 67109632;
    *v40 = v37;
    *&v40[4] = 1024;
    *&v40[6] = v38;
    *v41 = 1024;
    *&v41[2] = v5;
    v8 = "Bogus ShmemBitmap : [%u x %u], %u levels";
    v9 = v7;
    v10 = 20;
    goto LABEL_43;
  }

  v11 = v4[2];
  v12 = v4 + v11;
  if ((v11 & 0x80000000) != 0 || (v13 = v4 + v2, v13 < v12))
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v26 = x_log_get_render(void)::log;
    if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 134218240;
    *v40 = v12;
    *&v40[8] = 2048;
    *v41 = v4;
    v8 = "Bogus ShmemBitmap data pointer: %p, Shmem data pointer: %zu";
    v9 = v26;
LABEL_42:
    v10 = 22;
LABEL_43:
    _os_log_error_impl(&dword_183AA6000, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
    return 0;
  }

  v35 = v13;
  v36 = (v4 + v11);
  v15 = v4[3];
  MEMORY[0x1EEE9AC00](this);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFF0);
  bzero(v17, v16);
  if (v5)
  {
    v18 = 0;
    v19 = 0;
    while (1)
    {
      v20 = v37 >> v18 <= 1 ? 1 : v37 >> v18;
      v21 = v38 >> v18 <= 1 ? 1 : v38 >> v18;
      v22 = CA::Render::format_rowbytes(v15, v20);
      v23 = v22;
      *&v17[8 * v18] = v22;
      if (!is_mul_ok(v22, v21))
      {
        break;
      }

      v24 = v22 * v21;
      if (!(v22 * v21))
      {
        break;
      }

      v25 = __CFADD__(v19, v24);
      v19 += v24;
      if (v25)
      {
        break;
      }

      if (v5 == ++v18)
      {
        goto LABEL_32;
      }
    }

    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v27 = x_log_get_render(void)::log;
    if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 134218752;
    *v40 = v23;
    *&v40[8] = 1024;
    *v41 = v37;
    *&v41[4] = 1024;
    *&v41[6] = v38;
    v42 = 1024;
    v43 = v18;
    v8 = "Bogus ShmemBitmap rowbytes: %zu, width: %u, height: %u, level: %u";
    v9 = v27;
    v10 = 30;
    goto LABEL_43;
  }

  v19 = 0;
LABEL_32:
  v28 = v36;
  if (__CFADD__(v36, v19) || v36 + v19 > v35)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v31 = x_log_get_render(void)::log;
    if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 134218240;
    *v40 = v28;
    *&v40[8] = 2048;
    *v41 = v19;
    v8 = "Bogus ShmemBitmap data pointer: %p, total size: %zu";
    v9 = v31;
    goto LABEL_42;
  }

  v29 = CA::Render::Image::new_image(v15, v37, v38, v5, a2, v36, v17, CA::Render::release_shmem_bitmap, this, v33);
  v30 = v29;
  if (v29)
  {
    atomic_fetch_add(v4, 1u);
    if (!atomic_fetch_add(this + 2, 1u))
    {
      atomic_fetch_add(this + 2, 0xFFFFFFFF);
    }

    X::Ref<CA::Render::Texture>::operator=(v29 + 17, this);
    *(v30 + 9) = v4[1];
  }

  return v30;
}

float CABackingStoreGetFrontTexture(CABackingStore *a1, CGColorSpace *a2, float result)
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 246);
  if ((v3 & 0x100) == 0)
  {
    v5 = *(a1 + 53);
    if (v5)
    {
LABEL_64:
      v46 = *(a1 + 50);
      if (v46)
      {
        result = *(v46 + 60);
        *(v5 + 64) = result;
      }

      return result;
    }

    v7 = *(a1 + 50);
    v8 = *(v7 + 16);
    if (v8)
    {
      v10 = CA::Render::Shmem::copy_image(v8, *(v7 + 8));
    }

    else
    {
      v11 = *(v7 + 24);
      if (!v11)
      {
        goto LABEL_63;
      }

      if ((v3 & 0x800) != 0)
      {
        v12 = *(v11 + 72);
        if (v12)
        {
          CA::CG::Queue::flush(v12, 3, 1);
          v3 = *(a1 + 246);
        }

        *(a1 + 246) = v3 & 0xF7FF;
      }

      os_unfair_lock_lock((v11 + 12));
      if (*(v11 + 68))
      {
        v10 = 0;
      }

      else
      {
        CA::CG::IOSurfaceDrawable::ensure_shared_surface(v11);
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v13 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x178uLL, 0xDEEC3011uLL);
        v10 = v13;
        if (v13)
        {
          CA::Render::Surface::Surface(v13, *(v11 + 104), 0x10000);
        }
      }

      os_unfair_lock_unlock((v11 + 12));
    }

    *(a1 + 53) = v10;
    if (!v10)
    {
      return result;
    }

    *(v10 + 3) |= 0x100000u;
    v14 = *(a1 + 53);
    v15 = *(v14 + 16);
    v16 = *(a1 + 16);
    if (v16 != v15 || *(a1 + 17) != *(v14 + 20))
    {
      if (*(v7 + 64) == 1)
      {
        v17 = *(a1 + 17);
        v18 = *(a1 + 38) - v17;
        v19 = *(v14 + 20);
      }

      else
      {
        v19 = *(v14 + 20);
        v18 = v19 - *(a1 + 38);
        v17 = *(a1 + 17);
      }

      *(v14 + 24) = 0;
      *(v14 + 26) = v18;
      *(v14 + 28) = v15 - v16;
      *(v14 + 30) = v19 - v17 - v18;
      *(v14 + 12) |= 0x4000u;
    }

    v20 = *(v7 + 32);
    if (v20)
    {
      v61 = 0uLL;
      v62 = 0;
      CA::Render::convert_cgcolor(v20, a2, &v61, 0, v9);
      v21 = *(a1 + 53);
      result = *&v61;
      *(v21 + 72) = v61;
      *(v21 + 88) = v62;
    }

    if (!*(a1 + 58))
    {
LABEL_63:
      v5 = *(a1 + 53);
      if (!v5)
      {
        return result;
      }

      goto LABEL_64;
    }

    v22 = CA::Shape::new_shape();
    if (!CA::Shape::is_valid(v22))
    {
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v59 = x_log_get_utilities::log;
      if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
      {
        v60 = CA::Shape::dump(v22);
        LODWORD(v61) = 136315138;
        *(&v61 + 4) = v60;
        _os_log_error_impl(&dword_183AA6000, v59, OS_LOG_TYPE_ERROR, "CoreAnimation: Invalid shape: %s", &v61, 0xCu);
      }

      abort();
    }

    v24 = *(a1 + 53);
    v25 = *(v24 + 24);
    v26 = *(v24 + 26);
    v27 = v26 | v25;
    if (v22)
    {
      if (!v27 || v22 == 1)
      {
        goto LABEL_62;
      }

      if (!(v26 | v25))
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (!v27)
      {
        goto LABEL_62;
      }

      v28 = *(v22 + 4);
      if (v28 == 6)
      {
        goto LABEL_62;
      }

      if (v28 == 12)
      {
        v29 = *(v22 + 32) - *(v22 + 28);
        v30 = *(v22 + 36) - *(v22 + 20);
        if (v29 >= 0x3FFFFFFF && v30 > 0x3FFFFFFE)
        {
          goto LABEL_62;
        }

        if (v30 <= 0x3FFFFFFE)
        {
          v31 = v26;
        }

        else
        {
          v31 = 0;
        }

        if (v29 > 0x3FFFFFFE)
        {
          v25 = 0;
        }

        else
        {
          v26 = v31;
        }
      }

      if (*v22 == 1)
      {
        v32 = (v22 + 20);
        v33 = *(v22 + 20);
        if (v33 != 0x7FFFFFFF)
        {
          v34 = vdup_n_s32(v25);
          do
          {
            v32->i32[0] = v33 + v26;
            v35 = v32->i32[1];
            if ((v35 - 2) >= 2)
            {
              v36 = (v35 - 2) >> 1;
              v37 = v32 + 1;
              do
              {
                *v37 = vadd_s32(*v37, v34);
                ++v37;
                --v36;
              }

              while (v36);
              v35 = v32->i32[1];
            }

            v32 = (v32 + 4 * v35);
            v33 = v32->i32[0];
          }

          while (v32->i32[0] != 0x7FFFFFFF);
        }

        goto LABEL_62;
      }

      if (!(v26 | v25))
      {
        goto LABEL_59;
      }

      if ((v22 & 1) == 0)
      {
        v40 = *(v22 + 4);
        if (v40 == 12)
        {
          v41 = *(v22 + 32) - *(v22 + 28);
          v42 = *(v22 + 36) - *(v22 + 20);
          if (v41 >= 0x3FFFFFFF && v42 >= 0x3FFFFFFF)
          {
LABEL_59:
            v39 = CA::Shape::ref(v22, v23);
            goto LABEL_60;
          }

          if (v42 <= 0x3FFFFFFE)
          {
            v47 = v26;
          }

          else
          {
            v47 = 0;
          }

          if (v41 > 0x3FFFFFFE)
          {
            v25 = 0;
          }

          else
          {
            v26 = v47;
          }
        }

        else if ((v40 & 0x80000000) != 0)
        {
          v43 = 0;
          goto LABEL_61;
        }

        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v48 = malloc_type_zone_malloc(malloc_zone, 4 * v40, 0x100004052888210uLL);
        v43 = v48;
        if (v48)
        {
          if (v40)
          {
            v49 = v40;
            v50 = v22;
            v51 = v48;
            do
            {
              v52 = *v50++;
              *v51++ = v52;
              --v49;
            }

            while (v49);
          }

          *v48 = 1;
          v48[2] = v40;
          v53 = (v48 + 5);
          v54 = v48[5];
          if (v54 != 0x7FFFFFFF)
          {
            v55 = vdup_n_s32(v25);
            do
            {
              v53->i32[0] = v54 + v26;
              v56 = v53->i32[1];
              if ((v56 - 2) >= 2)
              {
                v57 = (v56 - 2) >> 1;
                v58 = v53 + 1;
                do
                {
                  *v58 = vadd_s32(*v58, v55);
                  ++v58;
                  --v57;
                }

                while (v57);
                v56 = v53->i32[1];
              }

              v53 = (v53 + 4 * v56);
              v54 = v53->i32[0];
            }

            while (v53->i32[0] != 0x7FFFFFFF);
          }
        }

        goto LABEL_61;
      }
    }

    v61 = 0uLL;
    CA::Shape::get_bounds(v22, &v61);
    LODWORD(v61) = v61 + v25;
    DWORD1(v61) += v26;
    v39 = CA::Shape::new_shape(&v61, v38);
LABEL_60:
    v43 = v39;
LABEL_61:
    CA::Shape::unref(v22);
    v22 = v43;
LABEL_62:
    v61 = 0uLL;
    CA::Shape::get_bounds(v22, &v61);
    v45 = CA::Shape::new_shape(&v61, v44);
    CA::Render::Texture::set_dirty_shape(*(a1 + 53), v45);
    CA::Shape::unref(v45);
    CA::Shape::unref(v22);
    CGSReleaseRegion();
    *(a1 + 58) = 0;
    goto LABEL_63;
  }

  return result;
}

void *CA::Render::Image::new_image(CA::Render::Image *this, unsigned int a2, unsigned int a3, unsigned int a4, CGColorSpace *a5, CGColorSpace *a6, unint64_t *a7, const unint64_t *a8, void (*a9)(const void *, void *), void *a10)
{
  v10 = 0;
  if (a4)
  {
    if (a3)
    {
      if (a2)
      {
        v13 = a7;
        if (a7)
        {
          v18 = this;
          v19 = a4;
          if (a6)
          {
            v10 = 0;
            v20 = *a7;
            if (!is_mul_ok(*a7, a3))
            {
              return v10;
            }

            v21 = v20 * a3;
            if (!v21)
            {
              return v10;
            }

            v22 = 1;
            LODWORD(v23) = a3;
            do
            {
              if (a4 == v22)
              {
                goto LABEL_18;
              }

              v24 = v22;
              if (v23 <= 1)
              {
                v23 = 1;
              }

              else
              {
                v23 = v23 >> 1;
              }

              v25 = a7[v22];
              if (!is_mul_ok(v25, v23))
              {
                break;
              }

              v26 = v25 * v23;
              if (!(v25 * v23))
              {
                break;
              }

              v22 = v24 + 1;
              v27 = __CFADD__(v21, v26);
              v21 += v26;
            }

            while (!v27);
            if (v24 < a4)
            {
              return 0;
            }

LABEL_18:
            if (this > 0x25)
            {
              v28 = 0;
            }

            else
            {
              v28 = dword_183E22690[this];
            }

            if (v28 * a2 > v20)
            {
              return 0;
            }
          }

          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          v10 = malloc_type_zone_malloc(malloc_zone, 8 * v19 + 176, 0x100004000313F17uLL);
          if (v10)
          {
            if (a5 && CGColorSpaceIsUncalibrated())
            {
              a5 = 0;
            }

            v29 = CA::Render::Texture::Texture(v10, a2, a3);
            *(v10 + 12) = 23;
            ++dword_1ED4EAA94;
            *v10 = &unk_1EF1F4BB8;
            v10[14] = a6;
            v10[15] = a8;
            *(v10 + 41) = 0;
            v10[16] = a9;
            v10[17] = 0;
            v10[18] = 0;
            v10[19] = 0;
            *(v10 + 168) = v18;
            *(v10 + 169) = a4;
            CA::Render::Texture::set_colorspace(v29, a5);
            if (((v18 < 0x24) & (0xC99B4EB03uLL >> v18)) != 0)
            {
              v30 = 0;
            }

            else
            {
              v30 = 16;
            }

            if (a3 <= 0x1000 && a2 <= 0x1000 && a4 == 1)
            {
              if (*v13 > 0x8000)
              {
                v31 = v30 << 8;
              }

              else
              {
                v31 = ((v30 & 0x1F) << 8) | 0x40000;
              }

              v32 = v31 | *(v10 + 3);
            }

            else
            {
              v32 = *(v10 + 3) | (v30 << 8);
            }

            *(v10 + 41) = 1;
            *(v10 + 3) = v32;
            v33 = v10 + 22;
            do
            {
              v34 = *v13++;
              *v33++ = v34;
              --v19;
            }

            while (v19);
          }
        }
      }
    }
  }

  return v10;
}

atomic_uint **X::Ref<CA::Render::Texture>::operator=(atomic_uint **a1, atomic_uint *a2)
{
  v3 = *a1;
  if (v3 != a2)
  {
    v4 = a2;
    if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
    }

    if (v4)
    {
      v5 = v4 + 2;
      if (!atomic_fetch_add(v4 + 2, 1u))
      {
        v4 = 0;
        atomic_fetch_add(v5, 0xFFFFFFFF);
      }
    }

    *a1 = v4;
  }

  return a1;
}

atomic_uint *copy_attr(atomic_uint *result, CFTypeRef *a2, int a3, uint64_t *a4)
{
  if ((a3 - 1) > 3)
  {
    return result;
  }

  v6 = result;
  v7 = *(a4 + 4);
  v8 = *a2;
  if (!a2 || v7 != 737)
  {
LABEL_10:
    if (a2)
    {
      if (v7 == 499)
      {
        if (v8)
        {
          v14 = CFGetTypeID(v8);
          TypeID = CGImageGetTypeID();
          v8 = *a2;
          if (v14 == TypeID)
          {
            v16 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
            if (v16 && (v17 = *(v16 + 40)) != 0)
            {
              v13 = *(v17 + 112);
            }

            else
            {
              v13 = CAGetColorSpace(36);
            }

            v18 = 1.0;
            v19 = v8;
            v20 = 6144;
            goto LABEL_22;
          }
        }
      }
    }

LABEL_17:
    result = [v8 CA_copyRenderValue];
    goto LABEL_23;
  }

  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = CFGetTypeID(*a2);
  if (v9 != CGImageGetTypeID())
  {
    v7 = *(a4 + 4);
    v8 = *a2;
    goto LABEL_10;
  }

  v10 = *a2;
  v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (v11 && (v12 = *(v11 + 40)) != 0)
  {
    v13 = *(v12 + 112);
  }

  else
  {
    v13 = CAGetColorSpace(36);
  }

  v18 = 1.0;
  v19 = v10;
  v20 = 1024;
LABEL_22:
  result = CA::Render::copy_image(v19, v13, v20, 0.0, v18);
LABEL_23:
  v21 = result;
  if (result)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x20uLL, 0xDEEC3011uLL);
    if (result)
    {
      result[2] = 1;
      result[3] = 29;
      ++dword_1ED4EAAAC;
      *result = &unk_1EF203140;
      result[4] = v6;
      v22 = v21;
      if (!atomic_fetch_add(v21 + 2, 1u))
      {
        v22 = 0;
        atomic_fetch_add(v21 + 2, 0xFFFFFFFF);
      }

      *(result + 3) = v22;
    }

    v24 = *a4;
    v23 = a4[1];
    ++*a4;
    *(v23 + 8 * v24) = result;
    if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
    {
      v25 = *(*v21 + 16);

      return v25(v21);
    }
  }

  return result;
}

uint64_t CA::AttrList::for_each(uint64_t result, uint64_t (*a2)(void, void *, uint64_t, uint64_t), uint64_t a3)
{
  if (result)
  {
    v5 = result;
    do
    {
      v6 = *(v5 + 8);
      v7 = HIBYTE(v6) & 0x7F;
      v8 = (v5 + 16);
      if ((HIBYTE(v6) & 0x7F) > 0xDu)
      {
        if ((v7 - 19) >= 7)
        {
          if ((v7 - 17) >= 2)
          {
            if (v7 == 14)
            {
LABEL_20:
              v7 = 14;
            }
          }

          else
          {
            v7 = 18;
          }
        }

        else
        {
          v8 = *v8;
        }
      }

      else
      {
        if ((HIBYTE(v6) & 0x7F) <= 9u)
        {
          if ((v7 - 6) >= 2)
          {
            if (v7 == 8)
            {
              goto LABEL_20;
            }

            if (v7 != 9)
            {
              goto LABEL_21;
            }
          }

LABEL_18:
          v7 = 13;
          goto LABEL_21;
        }

        if ((HIBYTE(v6) & 0x7F) <= 0xBu)
        {
          if (v7 == 10)
          {
            goto LABEL_20;
          }

          goto LABEL_18;
        }

        if (v7 == 12)
        {
          goto LABEL_20;
        }

        if (v7 == 13)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      result = a2(v6 & 0xFFFFFF, v8, v7, a3);
      v5 = *v5;
    }

    while (v5);
  }

  return result;
}

uint64_t CA::Render::Layer::set_filters(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (a2 || *(result + 136))
  {
    v3 = CA::Render::Layer::ensure_ext(result);
    result = v3[12];
    if (result != v2)
    {
      if (result && atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
      {
        result = (*(*result + 16))(result);
      }

      if (v2)
      {
        v4 = (v2 + 8);
        if (!atomic_fetch_add((v2 + 8), 1u))
        {
          v2 = 0;
          atomic_fetch_add(v4, 0xFFFFFFFF);
        }
      }

      v3[12] = v2;
    }
  }

  return result;
}

uint64_t CA::Render::Image::caches_encoding(CA::Render::Image *this)
{
  if (!*(this + 17))
  {
    v2 = CA::Render::Image::data_size(this);
    if (v2 >= *MEMORY[0x1E69E9AC8])
    {
      atomic_fetch_add(this + 41, 1u);
      v4 = CA::Render::Shmem::new_shmem(*(this + 14), v2, 64, CA::Render::release_image_data, this, v3);
      v5 = *(this + 17);
      *(this + 17) = v4;
      if (v5)
      {
        if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v5 + 16))(v5);
        }
      }
    }
  }

  return 1;
}

void *CA::Render::Image::encode(CA::Render::Image *this, CA::Render::Encoder *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3) >> 8;
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
  v9 = *(this + 168);
  if (v6 + 5 > v7)
  {
    CA::Render::Encoder::grow(a2, 1);
    v8 = *(a2 + 4);
  }

  *(a2 + 4) = v8 + 1;
  *v8 = v9;
  v10 = *(this + 169);
  v11 = *(a2 + 4);
  if ((v11 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 1);
    v11 = *(a2 + 4);
  }

  *(a2 + 4) = v11 + 1;
  *v11 = v10;
  v12 = *(this + 4);
  v13 = *(a2 + 4);
  if ((v13 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v13 = *(a2 + 4);
  }

  *v13 = v12;
  v14 = *(a2 + 4);
  v15 = *(a2 + 5);
  v16 = (v14 + 4);
  *(a2 + 4) = v14 + 4;
  v17 = *(this + 5);
  if (v14 + 8 > v15)
  {
    CA::Render::Encoder::grow(a2, 4);
    v16 = *(a2 + 4);
  }

  *v16 = v17;
  v18 = (*(a2 + 4) + 4);
  *(a2 + 4) = v18;
  v19 = *(this + 169);
  if (v19 <= 0x20)
  {
    memset(v34, 0, sizeof(v34));
    if (v19)
    {
      memcpy(v34, this + 176, 8 * v19);
      v21 = *(this + 5);
      if (!is_mul_ok(*&v34[0], v21))
      {
        goto LABEL_12;
      }

      v22 = *&v34[0] * v21;
      if (!(*&v34[0] * v21))
      {
        goto LABEL_12;
      }

      v23 = 1;
      while (v19 != v23)
      {
        v24 = v23;
        if (v21 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v21 >> 1;
        }

        v25 = *(v34 + v23);
        if (is_mul_ok(v25, v21))
        {
          v26 = v25 * v21;
          if (v25 * v21)
          {
            v23 = v24 + 1;
            v27 = __CFADD__(v22, v26);
            v22 += v26;
            if (!v27)
            {
              continue;
            }
          }
        }

        if (v24 < v19)
        {
          goto LABEL_12;
        }

        break;
      }

      v28 = 0;
      do
      {
        v29 = *(this + v28 + 22);
        if ((v18 + 1) > *(a2 + 5))
        {
          CA::Render::Encoder::grow(a2, 8);
          v18 = *(a2 + 4);
        }

        *v18 = v29;
        v18 = (*(a2 + 4) + 8);
        *(a2 + 4) = v18;
        ++v28;
      }

      while (v28 < *(this + 169));
    }

    v30 = *(a2 + 5);
    if (*(this + 17))
    {
      if (v18 + 1 > v30)
      {
        CA::Render::Encoder::grow(a2, 1);
        v18 = *(a2 + 4);
      }

      *(a2 + 4) = v18 + 1;
      *v18 = 1;
      CA::Render::Encoder::encode_object(a2, *(this + 17));
      v31 = *(this + 17);
      if ((*(v31 + 13) & 8) != 0)
      {
        atomic_fetch_add(*(v31 + 24), 1u);
      }
    }

    else
    {
      if (v18 + 1 > v30)
      {
        CA::Render::Encoder::grow(a2, 1);
        v18 = *(a2 + 4);
      }

      *(a2 + 4) = v18 + 1;
      *v18 = 0;
      atomic_fetch_add(this + 41, 1u);
      v32 = *(this + 14);
      v33 = CA::Render::Image::data_size(this);
      CA::Render::Encoder::encode_data_async(a2, v32, v33, CA::Render::release_image_data, this);
    }
  }

LABEL_12:
  CA::Render::Texture::encode(this, a2);

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void *CA::Render::Filter::encode(CA::Render::Filter *this, CA::Render::Encoder *a2)
{
  v4 = *(this + 3) >> 8;
  v5 = *(a2 + 4);
  if ((v5 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v5 = *(a2 + 4);
  }

  *v5 = v4;
  v6 = *(a2 + 4);
  v7 = (v6 + 4);
  *(a2 + 4) = v6 + 4;
  if (*(this + 14))
  {
    CA::Render::Encoder::encode_atom(a2, *(this + 6));
  }

  else
  {
    if ((v6 + 5) > *(a2 + 5))
    {
      CA::Render::Encoder::grow(a2, 1);
      v7 = *(a2 + 4);
    }

    *(a2 + 4) = v7 + 1;
    *v7 = 1;
    CA::Render::Encoder::encode_atom(a2, *(this + 6));
    CA::Render::Encoder::encode_object(a2, *(this + 4));
    CA::Render::Encoder::encode_object(a2, *(this + 5));
  }

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void *CA::Render::KeyValue::encode(CA::Render::KeyValue *this, CA::Render::Encoder *a2)
{
  CA::Render::Encoder::encode_atom(a2, *(this + 4));
  CA::Render::Encoder::encode_object(a2, *(this + 3));

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void *CA::Render::Vector::encode(CA::Render::Vector *this, CA::Render::Encoder *a2)
{
  v4 = *(this + 4);
  v5 = *(a2 + 4);
  if ((v5 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v5 = *(a2 + 4);
  }

  *v5 = v4;
  v6 = *(a2 + 5);
  v7 = (*(a2 + 4) + 4);
  *(a2 + 4) = v7;
  v8 = 8 * *(this + 4);
  if (v7 + v8 > v6)
  {
    CA::Render::Encoder::grow(a2, 8 * *(this + 4));
    v7 = *(a2 + 4);
  }

  memcpy(v7, this + 24, v8);
  *(a2 + 4) += v8;

  return CA::Render::Encoder::encode_sanity_check(a2);
}

uint64_t CA::Render::Layer::set_contents_transform(uint64_t this, CA::Render::Vector *a2)
{
  v2 = a2;
  if (a2 || *(this + 136))
  {
    v3 = CA::Render::Layer::ensure_ext(this);
    this = v3[4];
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

      v3[4] = v2;
    }
  }

  return this;
}

uint64_t CA::Render::Image::data_size(CA::Render::Image *this)
{
  v1 = *(this + 168);
  v2 = *(this + 4);
  v3 = *(this + 5);
  v4 = *(this + 169);
  if (v4 < 2)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = (v4 - 1);
    v7 = (this + 176);
    v8 = v6;
    do
    {
      v9 = *v7++;
      v5 += v9 * v3;
      if (v2 <= 1)
      {
        v2 = 1;
      }

      else
      {
        v2 >>= 1;
      }

      if (v3 <= 1)
      {
        v3 = 1;
      }

      else
      {
        v3 >>= 1;
      }

      --v8;
    }

    while (v8);
  }

  if (v1 > 0x25)
  {
    v10 = 0;
  }

  else
  {
    v10 = dword_183E22690[v1];
  }

  return v5 + v2 * v10 + *(this + v6 + 22) * (v3 - 1);
}

uint64_t CA::Render::Layer::set_compositing_filter(uint64_t this, CA::Render::Filter *a2)
{
  v2 = a2;
  if (a2 || *(this + 136))
  {
    v3 = CA::Render::Layer::ensure_ext(this);
    this = v3[11];
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

      v3[11] = v2;
    }
  }

  return this;
}

double CA::Context::commit_layer_time(CALayer **this, CA::Layer *a2, double a3, void *a4, uint64_t a5, CALayer *a6)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a3 == 0.0)
  {
    v7 = (a2 + 48);
    result = *(a2 + 6);
    if (result < 0.0)
    {
      *(a2 + 6) = *(a2 + 2);
      CA::Layer::convert_time(*a2, v7, 0, this[2], a6);
      return *(a2 + 6);
    }
  }

  else
  {
    v9[0] = *(a2 + 2) + a3;
    CA::Layer::convert_time(*a2, v9, 0, this[2], a6);
    return v9[0];
  }

  return result;
}

BOOL key_path_affects_container(unint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (a1)
  {
    v1 = a1 >> 1;
  }

  else
  {
    if (!*a1)
    {
      return 0;
    }

    v1 = *(a1 + 4);
  }

  v2 = 1;
  if (v1 > 715)
  {
    if (v1 == 764)
    {
      return v2;
    }

    if (v1 == 716)
    {
      if (a1)
      {
        v3 = HIDWORD(a1);
      }

      else
      {
        if (*a1 < 2u)
        {
          return 1;
        }

        LODWORD(v3) = *(a1 + 8);
      }

      if (v3 == 616)
      {
        if ((a1 & 1) == 0 && *a1 >= 3u)
        {
          return *(a1 + 12) != 762;
        }

        return 1;
      }

      if (v3 != 621)
      {
        if (v3 == 720)
        {
          if ((a1 & 1) != 0 || *a1 < 3u)
          {
            return 0;
          }

          return *(a1 + 12) == 762;
        }

        return 1;
      }
    }

    return 0;
  }

  if (v1 != 34 && v1 != 124)
  {
    return 0;
  }

  return v2;
}

atomic_uint *CA::Render::BasicAnimation0::set_from(CA::Render::BasicAnimation0 *this, CA::Render::Object *a2)
{
  result = *(this + 14);
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

    *(this + 14) = v4;
  }

  return result;
}

void *CA::Render::BasicAnimation0::encode(const CA::Render::Object **this, CA::Render::Encoder *a2)
{
  CA::Render::PropertyAnimation::encode(this, a2);
  CA::Render::Encoder::encode_object(a2, this[14]);
  CA::Render::Encoder::encode_object(a2, this[15]);
  CA::Render::Encoder::encode_object(a2, this[16]);
  v4 = this[17];
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
  v9 = this[18];
  if (v6 + 16 > v7)
  {
    CA::Render::Encoder::grow(a2, 8);
    v8 = *(a2 + 4);
  }

  *v8 = v9;
  *(a2 + 4) += 8;

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void *CA::Render::PropertyAnimation::encode(CA::Render::PropertyAnimation *this, CA::Render::Encoder *a2)
{
  CA::Render::Animation::encode(this, a2);
  CA::Render::Encoder::encode_keypath(a2, this + 12);
  CA::Render::Encoder::encode_object(a2, *(this + 13));

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void *CA::Render::Animation::encode(CA::Render::Animation *this, CA::Render::Encoder *a2)
{
  CA::Render::Object::encode(this, a2);
  if (*(this + 5))
  {
    (*(*a2 + 32))(a2, *(this + 2));
    v4 = *(this + 5);
  }

  else
  {
    v4 = 0;
  }

  CA::Render::Encoder::encode_object(a2, v4);
  CA::Render::Encoder::encode_object(a2, *(this + 6));
  CA::Render::Encoder::encode_cfobject(a2, *(this + 7));
  v5 = *(this + 18);
  v6 = *(a2 + 4);
  if ((v6 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v6 = *(a2 + 4);
  }

  *v6 = v5;
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  v9 = (v7 + 4);
  *(a2 + 4) = v7 + 4;
  v10 = *(this + 6);
  if (v7 + 8 > v8)
  {
    CA::Render::Encoder::grow(a2, 4);
    v9 = *(a2 + 4);
  }

  *v9 = v10;
  v11 = *(a2 + 4);
  v12 = *(a2 + 5);
  v13 = (v11 + 4);
  *(a2 + 4) = v11 + 4;
  v14 = *(this + 7);
  if (v11 + 8 > v12)
  {
    CA::Render::Encoder::grow(a2, 4);
    v13 = *(a2 + 4);
  }

  *v13 = v14;
  v15 = *(a2 + 4);
  v16 = *(a2 + 5);
  v17 = (v15 + 4);
  *(a2 + 4) = v15 + 4;
  v18 = *(this + 8);
  if (v15 + 8 > v16)
  {
    CA::Render::Encoder::grow(a2, 4);
    v17 = *(a2 + 4);
  }

  *v17 = v18;
  v19 = *(a2 + 4);
  v20 = *(a2 + 5);
  v21 = (v19 + 4);
  *(a2 + 4) = v19 + 4;
  v22 = *(this + 22);
  if (v19 + 8 > v20)
  {
    CA::Render::Encoder::grow(a2, 4);
    v21 = *(a2 + 4);
  }

  *v21 = v22;
  *(a2 + 4) += 4;

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void CA::Context::commit_animation(CA::Context *this, CA::Layer *a2, CA::Render::Animation *a3, void *a4)
{
  v7 = *(a3 + 5);
  if (v7)
  {
    if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
    {
      dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
    }

    if (this)
    {
      v8 = (this + CA::Render::_render_id_slide);
    }

    else
    {
      v8 = 0;
    }

    CA::Render::Context::add_animation(v7, v8, a2);
  }

  v9 = *(a3 + 4);
  if (v9)
  {
    if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
    {
      dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
    }

    if (this)
    {
      v10 = this + CA::Render::_render_id_slide;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v9 + 4);
    if ((v11 + 1) > *(v9 + 5))
    {
      CA::Render::Encoder::grow(v9, 1);
      v11 = *(v9 + 4);
    }

    *(v9 + 4) = v11 + 1;
    *v11 = 4;
    v12 = *(v9 + 4);
    if ((v12 + 1) > *(v9 + 5))
    {
      CA::Render::Encoder::grow(v9, 8);
      v12 = *(v9 + 4);
    }

    *v12 = v10;
    *(v9 + 4) += 8;
    CA::Render::Encoder::encode_object(v9, a2);
    CA::Render::Encoder::encode_sanity_check(v9);
  }

  *(a3 + 56) = 1;
}

void *CA::Render::Timing::encode(CA::Render::Timing *this, CA::Render::Encoder *a2)
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
  v9 = *(this + 3);
  if (v6 + 12 > v7)
  {
    CA::Render::Encoder::grow(a2, 8);
    v8 = *(a2 + 4);
  }

  *v8 = v9;
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v12 = (v10 + 8);
  *(a2 + 4) = v10 + 8;
  v13 = *(this + 4);
  if (v10 + 16 > v11)
  {
    CA::Render::Encoder::grow(a2, 8);
    v12 = *(a2 + 4);
  }

  *v12 = v13;
  *(a2 + 4) += 8;
  (*(*a2 + 40))(a2);
  v14 = *(this + 5);
  v15 = *(a2 + 4);
  if ((v15 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 8);
    v15 = *(a2 + 4);
  }

  *v15 = v14;
  v16 = *(a2 + 4);
  v17 = *(a2 + 5);
  v18 = (v16 + 8);
  *(a2 + 4) = v16 + 8;
  v19 = *(this + 6);
  if (v16 + 16 > v17)
  {
    CA::Render::Encoder::grow(a2, 8);
    v18 = *(a2 + 4);
  }

  *v18 = v19;
  v20 = *(a2 + 4);
  v21 = *(a2 + 5);
  v22 = (v20 + 8);
  *(a2 + 4) = v20 + 8;
  v23 = *(this + 7);
  if (v20 + 16 > v21)
  {
    CA::Render::Encoder::grow(a2, 8);
    v22 = *(a2 + 4);
  }

  *v22 = v23;
  *(a2 + 4) += 8;

  return CA::Render::Encoder::encode_sanity_check(a2);
}

uint64_t CA::Render::Surface::Surface(uint64_t a1, IOSurfaceRef buffer, int a3, char a4, int a5, char a6, char a7)
{
  v67 = *MEMORY[0x1E69E9840];
  Width = IOSurfaceGetWidth(buffer);
  Height = IOSurfaceGetHeight(buffer);
  CA::Render::Texture::Texture(a1, Width, Height);
  *(a1 + 12) = 57;
  ++dword_1ED4EAB1C;
  *a1 = &unk_1EF201458;
  *(a1 + 112) = 0;
  *(a1 + 120) = IOSurfaceGetID(buffer);
  *(a1 + 124) = a3;
  *(a1 + 128) = buffer;
  *(a1 + 136) = 0;
  *(a1 + 144) = IOSurfaceGetPixelFormat(buffer);
  *(a1 + 148) = CA::Render::iosurface_get_edr_factor(buffer, v16);
  *(a1 + 152) = IOSurfaceGetProtectionOptions();
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 204) = xmmword_183E20F10;
  *(a1 + 220) = 1065353216;
  *(a1 + 232) = xmmword_183E20F20;
  *(a1 + 248) = 0;
  *(a1 + 255) = 0;
  *(a1 + 260) = 0x100000001;
  *(a1 + 268) = 0u;
  *(a1 + 284) = 0u;
  *(a1 + 300) = 0;
  *(a1 + 304) = 1065353216;
  *(a1 + 316) = 0;
  *(a1 + 308) = 0;
  *(a1 + 324) = -1;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 360) = 0;
  *(a1 + 352) = 0;
  *(a1 + 361) = a6 & 0xF | (16 * (a7 & 7)) | *(a1 + 361) & 0x80;
  *(a1 + 364) = -1;
  *(a1 + 368) &= 0xFC20u;
  if (!buffer)
  {
    goto LABEL_4;
  }

  oldState[0] = 0;
  if (IOSurfaceSetPurgeable(buffer, 3u, oldState) || oldState[0] != 2)
  {
    goto LABEL_4;
  }

  v53 = IOSurfaceCopyValue(buffer, *MEMORY[0x1E696CF98]);
  v54 = v53;
  memset(v66, 0, sizeof(v66));
  *oldState = 0u;
  v65 = 0u;
  if (v53 && (v55 = CFGetTypeID(v53), v55 == CFStringGetTypeID()))
  {
    CString = CA_CFStringGetCString(v54, oldState, 64);
  }

  else
  {
    CString = 0;
  }

  if (x_log_get_render(void)::once[0] != -1)
  {
    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
  }

  v57 = x_log_get_render(void)::log;
  if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109378;
    ID = IOSurfaceGetID(buffer);
    v62 = 2080;
    v63 = CString;
    _os_log_error_impl(&dword_183AA6000, v57, OS_LOG_TYPE_ERROR, "Received purged IOSurface ID (%#08x) name: '%s'", buf, 0x12u);
    if (!v54)
    {
      goto LABEL_4;
    }

    goto LABEL_90;
  }

  if (v54)
  {
LABEL_90:
    CFRelease(v54);
  }

  if (CA::Render::is_iosurface_aligned(buffer, v17))
  {
    goto LABEL_8;
  }

LABEL_4:
  if (x_log_get_render(void)::once[0] != -1)
  {
    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
  }

  v18 = x_log_get_render(void)::log;
  if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
  {
    v36 = *(a1 + 120);
    v38 = *(a1 + 16);
    v37 = *(a1 + 20);
    {
    }

    oldState[0] = 67110144;
    oldState[1] = v36;
    LOWORD(oldState[2]) = 1024;
    *(&oldState[2] + 2) = v38;
    HIWORD(oldState[3]) = 1024;
    LODWORD(v65) = v37;
    WORD2(v65) = 2048;
    *(&v65 + 6) = qword_1ED4E4910;
    HIWORD(v65) = 2048;
    *&v66[0] = qword_1ED4E4918;
    _os_log_error_impl(&dword_183AA6000, v18, OS_LOG_TYPE_ERROR, "IOSurface 0x%x [%u x %u] doesn't have the proper data alignment! Expected %zu base address and %zu row byte alignment\n", oldState, 0x28u);
    if (a4)
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_8:
    if (a4)
    {
LABEL_9:
      CFRetain(buffer);
    }
  }

  v19 = *(a1 + 124);
  if (v19 == -1)
  {
    v28 = *(a1 + 144);
    if (!v28)
    {
      goto LABEL_35;
    }

    v19 = CA::Render::fourcc_to_format(v28);
    *(a1 + 124) = v19;
    if (v19 == -1)
    {
      goto LABEL_35;
    }
  }

  if (IOSurfaceGetPlaneCount(buffer) < 2)
  {
    if (IOSurfaceGetPlaneCount(buffer) == 1)
    {
      BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(buffer, 0);
      v26 = 0;
      if (v19 <= 0x25)
      {
        v26 = dword_183E22690[v19];
      }

      WidthOfPlane = IOSurfaceGetWidthOfPlane(buffer, 0);
    }

    else
    {
      BytesPerRowOfPlane = IOSurfaceGetBytesPerRow(buffer);
      if (v19 > 0x25)
      {
        v26 = 0;
      }

      else
      {
        v26 = dword_183E22690[v19];
      }

      WidthOfPlane = IOSurfaceGetWidth(buffer);
    }

    if (BytesPerRowOfPlane >= WidthOfPlane * v26)
    {
LABEL_15:
      v24 = *(a1 + 124);
      if (v24 != -1 && (v24 > 0x23 || ((0xC99B4EB03uLL >> v24) & 1) == 0))
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v20 = IOSurfaceGetBytesPerRowOfPlane(buffer, 0);
    v21 = IOSurfaceGetBytesPerRowOfPlane(buffer, 1uLL);
    v22 = IOSurfaceGetWidthOfPlane(buffer, 0);
    v23 = IOSurfaceGetWidthOfPlane(buffer, 1uLL);
    if (v19 == 35 && v20 >= 4 * v22 && v21 >= v23)
    {
      goto LABEL_15;
    }
  }

  PixelFormat = IOSurfaceGetPixelFormat(buffer);
  if (x_log_get_render(void)::once[0] != -1)
  {
    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
  }

  v30 = x_log_get_render(void)::log;
  if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
  {
    v39 = IOSurfaceGetID(buffer);
    v40 = HIBYTE(PixelFormat);
    v59 = v39;
    if (PixelFormat < 0)
    {
      v41 = __maskrune(v40, 0x40000uLL);
    }

    else
    {
      v41 = *(MEMORY[0x1E69E9830] + 4 * v40 + 60) & 0x40000;
    }

    v42 = PixelFormat >> 24;
    if (!v41)
    {
      v42 = 32;
    }

    v58 = v42;
    if (BYTE2(PixelFormat) <= 0x7Fu)
    {
      v43 = *(MEMORY[0x1E69E9830] + 4 * BYTE2(PixelFormat) + 60) & 0x40000;
    }

    else
    {
      v43 = __maskrune(BYTE2(PixelFormat), 0x40000uLL);
    }

    if (v43)
    {
      v44 = SBYTE2(PixelFormat);
    }

    else
    {
      v44 = 32;
    }

    if (BYTE1(PixelFormat) <= 0x7Fu)
    {
      v45 = *(MEMORY[0x1E69E9830] + 4 * BYTE1(PixelFormat) + 60) & 0x40000;
    }

    else
    {
      v45 = __maskrune(BYTE1(PixelFormat), 0x40000uLL);
    }

    if (v45)
    {
      v46 = SBYTE1(PixelFormat);
    }

    else
    {
      v46 = 32;
    }

    if (PixelFormat <= 0x7Fu)
    {
      v47 = *(MEMORY[0x1E69E9830] + 4 * PixelFormat + 60) & 0x40000;
    }

    else
    {
      v47 = __maskrune(PixelFormat, 0x40000uLL);
    }

    if (v47)
    {
      v48 = PixelFormat;
    }

    else
    {
      v48 = 32;
    }

    BytesPerRow = IOSurfaceGetBytesPerRow(buffer);
    if (v19 > 0x25)
    {
      v50 = 0;
    }

    else
    {
      v50 = dword_183E22690[v19];
    }

    v51 = IOSurfaceGetWidth(buffer) * v50;
    v52 = IOSurfaceGetWidth(buffer);
    oldState[0] = 67110912;
    oldState[1] = v59;
    LOWORD(oldState[2]) = 1024;
    *(&oldState[2] + 2) = v58;
    HIWORD(oldState[3]) = 1024;
    LODWORD(v65) = v44;
    WORD2(v65) = 1024;
    *(&v65 + 6) = v46;
    WORD5(v65) = 1024;
    HIDWORD(v65) = v48;
    LOWORD(v66[0]) = 2048;
    *(v66 + 2) = BytesPerRow;
    WORD5(v66[0]) = 2048;
    *(v66 + 12) = v51;
    WORD2(v66[1]) = 2048;
    *(&v66[1] + 6) = v52;
    _os_log_error_impl(&dword_183AA6000, v30, OS_LOG_TYPE_ERROR, "IOSurface 0x%x ('%c%c%c%c') has unexpected bytes-per-row value of %zu, expected at least %zu for the width of %zu.", oldState, 0x3Eu);
  }

  *(a1 + 124) = -1;
LABEL_35:
  if (CA::Render::fourcc_has_alpha(*(a1 + 144)))
  {
    v31 = a5 | 0x400;
    goto LABEL_38;
  }

LABEL_37:
  v31 = a5 | 0x410;
LABEL_38:
  *(a1 + 12) |= v31 << 8;
  *(a1 + 356) = 1;
  if ((v31 & 0x10000) != 0)
  {
    IOSurfaceIncrementUseCount(buffer);
  }

  CA::Render::iosurface_load_attachments(a1, (a4 & 0x7E));
  if (*(a1 + 148) != 1.0)
  {
    *(a1 + 368) |= 4u;
  }

  if (CA::Render::fourcc_is_rgb(*(a1 + 144)))
  {
    v32 = *(a1 + 361);
    v33 = v32 & 0x70;
    if ((v32 & 0x70) == 0)
    {
      v32 |= 0x20u;
    }

    if (!v33 || (v32 & 0xF) == 0)
    {
      *(a1 + 361) = v32 | ((v32 & 0xF) == 0);
    }
  }

  v34 = *(a1 + 336);
  if (v34)
  {
    CA::CASharedEvent::unref(v34);
    *(a1 + 336) = 0;
  }

  return a1;
}

uint64_t CA::Render::iosurface_load_attachments(CA::Render *this, CA::Render::Surface *a2)
{
  v2 = a2;
  v37 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = *(this + 16);
  if ((a2 & 2) == 0)
  {
    v5 = (this + 144);
    has_alpha = CA::Render::fourcc_has_alpha(*(this + 36));
    v9 = has_alpha;
    if (((v2 & 0x7C) != 0 || has_alpha) && (v37 = 0u, v35 = 0u, v36 = 0u, v33 = 0u, v34 = 0u, !IOSurfaceGetBulkAttachments()))
    {
      v10 = 1;
      if ((v2 & 4) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v10 = 0;
      if ((v2 & 4) == 0)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_20;
  }

  v37 = 0uLL;
  v35 = 0uLL;
  *(&v36 + 1) = 0;
  v33 = 0uLL;
  v34 = 0uLL;
  v10 = IOSurfaceGetBulkAttachments() == 0;
  v11 = IOSurfaceCopyValue(v4, *MEMORY[0x1E696CEE0]);
  if (v11)
  {
    v12 = v11;
    v13 = CGColorSpaceCreateWithPropertyList(v11);
    goto LABEL_9;
  }

  v15 = IOSurfaceCopyValue(v4, *MEMORY[0x1E696CF60]);
  if (v15)
  {
    v12 = v15;
    v16 = CFGetTypeID(v15);
    if (v16 != CFDataGetTypeID())
    {
      colorspace_from_bulk_attachments = 0;
      goto LABEL_10;
    }

    v13 = CGColorSpaceCreateWithICCData(v12);
LABEL_9:
    colorspace_from_bulk_attachments = v13;
LABEL_10:
    CFRelease(v12);
    goto LABEL_11;
  }

  colorspace_from_bulk_attachments = 0;
LABEL_11:
  if (colorspace_from_bulk_attachments == 0 && v10)
  {
    colorspace_from_bulk_attachments = CA::Render::load_colorspace_from_bulk_attachments(0, 0);
  }

  if (colorspace_from_bulk_attachments)
  {
    CA::Render::Texture::set_colorspace(this, colorspace_from_bulk_attachments);
    CGColorSpaceRelease(colorspace_from_bulk_attachments);
  }

  else
  {
    IOSurfaceRemoveValue(v4, *MEMORY[0x1E696CEC0]);
  }

  v5 = (this + 144);
  v9 = CA::Render::fourcc_has_alpha(*(this + 36));
  if ((v2 & 4) != 0)
  {
LABEL_20:
    if (DWORD1(v35))
    {
      v17 = v10;
    }

    else
    {
      v17 = 0;
    }

    if (v17 && HIDWORD(v35))
    {
      *v8.i32 = v35 * SHIDWORD(v35) / (SDWORD2(v35) * SDWORD1(v35));
      *(this + 8) = v8.i32[0];
    }
  }

LABEL_26:
  if ((v2 & 8) != 0)
  {
    v18 = DWORD1(v33) && v10;
    if (v18 && HIDWORD(v33) && DWORD1(v34) && HIDWORD(v34))
    {
      v19 = SDWORD2(v33) / SHIDWORD(v33);
      v21 = *(this + 4);
      v20 = *(this + 5);
      v22 = v20;
      if (v33 / SDWORD1(v33) >= v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = v33 / SDWORD1(v33);
      }

      if (v19 >= v22)
      {
        v19 = v20;
      }

      *v8.i64 = v23;
      *&v8.i64[1] = v19;
      v24 = vceqzq_f64(v8);
      v25 = vorrq_s8(vdupq_laneq_s64(v24, 1), v24).u64[0];
      v26 = 0uLL;
      if ((v25 & 0x8000000000000000) == 0)
      {
        v27 = vceqq_f64(v8, v8);
        if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v27), 1), v27).u64[0] & 0x8000000000000000) == 0)
        {
          v28.f64[0] = v34 / SDWORD1(v34) + (v21 - v23) * 0.5;
          v28.f64[1] = v22 - (SDWORD2(v34) / SHIDWORD(v34) + v19) + (v22 - v19) * -0.5;
          v29 = vcvtpq_s64_f64(vmaxnmq_f64(v28, vdupq_n_s64(0xC1BFFFFFFF000000)));
          v8 = vsubq_s64(vcvtmq_s64_f64(vminnmq_f64(vaddq_f64(v28, v8), vdupq_n_s64(0x41C0000000000000uLL))), v29);
          v26 = vuzp1q_s32(v29, v8);
        }
      }

      *(this + 12) = v26.i16[0];
      *(this + 13) = v26.i16[2];
      *(this + 14) = v21 - v26.i16[0] - v26.i16[4];
      *(this + 15) = v20 - (v26.i16[2] + v26.i16[6]);
    }
  }

  if ((v10 & ((v2 & 0x10) >> 4)) == 1)
  {
    if ((BYTE12(v36) | 2) == 0x12)
    {
      *(this + 184) |= 0x200u;
    }

    if (v37 && *v5 == 1380411457)
    {
      v30 = 513;
      v31 = -516;
    }

    else
    {
      v30 = 2;
      v31 = -4;
      if (BYTE10(v36) != 14 && BYTE10(v36) != 248)
      {
        v30 = 1;
      }
    }

    *(this + 184) = *(this + 184) & v31 | v30;
  }

  if ((v10 & ((v2 & 0x20) >> 5)) == 1)
  {
    CA::Render::iosurface_get_edr_headroom(v4, v7);
    *(this + 16) = v8.i32[0];
  }

  if ((v10 & ((v2 & 0x40) >> 6)) == 1)
  {
    v8.i16[0] = WORD5(v37);
    *(this + 17) = v8.u32[0];
  }

  if ((v9 & v10) == 1)
  {
    *(this + 3) &= ~0x800000u;
  }

  return CA::Render::Surface::reload_iosurface_needs_film_grain(this);
}

void CA::Render::iosurface_get_edr_headroom(CA::Render *this, __IOSurface *a2)
{
  if (this)
  {
    v2 = IOSurfaceCopyValue(this, *MEMORY[0x1E696CEF0]);
    if (v2)
    {
      v3 = v2;
      CA_CFFloatValue(v2);
      CFRelease(v3);
    }
  }
}

uint64_t CA::Render::Surface::reload_iosurface_needs_film_grain(CA::Render::Surface *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(this + 16);
  if (!v2)
  {
    goto LABEL_8;
  }

  if (CADeviceSupportsFilmGrain::once != -1)
  {
    dispatch_once(&CADeviceSupportsFilmGrain::once, &__block_literal_global_205);
  }

  if (CADeviceSupportsFilmGrain::has_capability == 1 && IOSurfaceHasDataProperty())
  {
    if (byte_1ED4E9870 == 1)
    {
      if (x_log_get_filmgrain(void)::once != -1)
      {
        dispatch_once(&x_log_get_filmgrain(void)::once, &__block_literal_global_18204);
      }

      v7 = x_log_get_filmgrain(void)::log;
      if (os_log_type_enabled(x_log_get_filmgrain(void)::log, OS_LOG_TYPE_INFO))
      {
        v8[0] = 67109120;
        v8[1] = IOSurfaceGetID(v2);
        _os_log_impl(&dword_183AA6000, v7, OS_LOG_TYPE_INFO, "[0x%x] FG attachment Found", v8, 8u);
      }
    }

    v3 = 64;
  }

  else
  {
LABEL_8:
    v3 = 0;
  }

  *(this + 184) = *(this + 184) & 0xFFBF | v3;
  result = (*(*this + 288))(this);
  if (result)
  {
    v5 = *(this + 184);
  }

  else
  {
    result = (*(*this + 280))(this);
    v5 = *(this + 184);
    if (!result)
    {
      v6 = 0;
      goto LABEL_14;
    }
  }

  v6 = 16;
LABEL_14:
  *(this + 184) = v5 & 0xFFEF | v6;
  return result;
}

void *CA::Render::Surface::encode(atomic_uint *this, CA::Render::Encoder *a2)
{
  v3 = this;
  v4 = *(a2 + 4);
  v5 = *(a2 + 5);
  if (!*(this + 14))
  {
    if ((v4 + 1) > v5)
    {
      CA::Render::Encoder::grow(a2, 1);
      v4 = *(a2 + 4);
    }

    *(a2 + 4) = v4 + 1;
    *v4 = 0;
    v12 = v3[3] >> 8;
    v13 = *(a2 + 4);
    if ((v13 + 1) > *(a2 + 5))
    {
      CA::Render::Encoder::grow(a2, 4);
      v13 = *(a2 + 4);
    }

    *v13 = v12;
    v14 = *(a2 + 4);
    v15 = *(a2 + 5);
    v16 = (v14 + 4);
    *(a2 + 4) = v14 + 4;
    v17 = v3[31];
    if (v14 + 8 > v15)
    {
      CA::Render::Encoder::grow(a2, 4);
      v16 = *(a2 + 4);
    }

    *v16 = v17;
    v18 = *(a2 + 4);
    v11 = (v18 + 4);
    *(a2 + 4) = v18 + 4;
    v19 = *(v3 + 17);
    if (!v19)
    {
      v43 = *(v3 + 16);
      if (v43)
      {
        MachPort = IOSurfaceCreateMachPort(v43);
        v11 = *(a2 + 4);
        if (MachPort)
        {
          v10 = MachPort;
          if ((v11 + 1) <= *(a2 + 5))
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }
      }

      if ((v11 + 1) <= *(a2 + 5))
      {
        goto LABEL_28;
      }

LABEL_27:
      CA::Render::Encoder::grow(a2, 1);
      v11 = *(a2 + 4);
LABEL_28:
      *(a2 + 4) = v11 + 1;
      *v11 = 0;
      goto LABEL_29;
    }

    v10 = *(v19 + 16);
    v20 = v18 + 5;
    v21 = *(a2 + 5);
    v22 = v20 > v21;
    if (v10)
    {
      if (v20 > v21)
      {
        CA::Render::Encoder::grow(a2, 1);
        v11 = *(a2 + 4);
      }

      *(a2 + 4) = v11 + 1;
      *v11 = 3;
      mach_port_mod_refs(*MEMORY[0x1E69E9A60], v10, 0, 1);
      goto LABEL_23;
    }

LABEL_25:
    if (!v22)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if ((v4 + 1) > v5)
  {
    CA::Render::Encoder::grow(a2, 1);
    v4 = *(a2 + 4);
  }

  *(a2 + 4) = v4 + 1;
  *v4 = 1;
  v6 = v3[3] >> 8;
  v7 = *(a2 + 4);
  if ((v7 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v7 = *(a2 + 4);
  }

  *v7 = v6;
  *(a2 + 4) += 4;
  CA::Render::Encoder::encode_object(a2, *(v3 + 14));
  if ((*(v3 + 15) & 0x20) != 0)
  {
    v8 = *(v3 + 16);
    if (v8)
    {
      v9 = IOSurfaceCreateMachPort(v8);
      if (v9)
      {
        v10 = v9;
        v11 = *(a2 + 4);
        if ((v11 + 1) <= *(a2 + 5))
        {
LABEL_11:
          *(a2 + 4) = v11 + 1;
          *v11 = 1;
LABEL_23:
          v23 = x_heap_malloc_small_(*(a2 + 1), 0x30uLL);
          *(v23 + 8) = 2;
          *(v23 + 16) = v10;
          *(v23 + 20) = 19;
          *(v23 + 24) = 1;
          v24 = *(a2 + 7);
          *v23 = *(a2 + 6);
          *(a2 + 6) = v23;
          *(a2 + 7) = v24 + 1;
          goto LABEL_29;
        }

LABEL_10:
        CA::Render::Encoder::grow(a2, 1);
        v11 = *(a2 + 4);
        goto LABEL_11;
      }
    }

    v11 = *(a2 + 4);
    v22 = (v11 + 1) > *(a2 + 5);
    goto LABEL_25;
  }

LABEL_29:
  v25 = (*(v3 + 368) >> 4) & 1;
  v26 = *(a2 + 4);
  if ((v26 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 1);
    v26 = *(a2 + 4);
  }

  *(a2 + 4) = v26 + 1;
  *v26 = v25;
  v27 = (*(v3 + 368) >> 5) & 1;
  v28 = *(a2 + 4);
  if ((v28 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 1);
    v28 = *(a2 + 4);
  }

  *(a2 + 4) = v28 + 1;
  *v28 = v27;
  v29 = *(v3 + 360);
  v30 = *(a2 + 4);
  if ((v30 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 1);
    v30 = *(a2 + 4);
  }

  *(a2 + 4) = v30 + 1;
  *v30 = v29;
  v31 = (*(*v3 + 288))(v3);
  v32 = *(a2 + 4);
  if ((v32 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 1);
    v32 = *(a2 + 4);
  }

  *(a2 + 4) = v32 + 1;
  *v32 = v31;
  v33 = (*(*v3 + 296))(v3);
  v34 = *(a2 + 4);
  if ((v34 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 1);
    v34 = *(a2 + 4);
  }

  *(a2 + 4) = v34 + 1;
  *v34 = v33;
  v35 = (*(*v3 + 304))(v3);
  v36 = *(a2 + 4);
  if ((v36 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 1);
    v36 = *(a2 + 4);
  }

  *(a2 + 4) = v36 + 1;
  *v36 = v35;
  v37 = (*(*v3 + 280))(v3);
  v38 = *(a2 + 4);
  if ((v38 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 1);
    v38 = *(a2 + 4);
  }

  *(a2 + 4) = v38 + 1;
  *v38 = v37;
  CA::Render::Texture::encode(v3, a2);
  v39 = x_heap_malloc_small_(*(a2 + 1), 0x10uLL);
  v40 = v3 + 2;
  if (!atomic_fetch_add(v3 + 2, 1u))
  {
    v3 = 0;
    atomic_fetch_add(v40, 0xFFFFFFFF);
  }

  v41 = *(a2 + 14);
  *v39 = v3;
  v39[1] = v41;
  *(a2 + 14) = v39;

  return CA::Render::Encoder::encode_sanity_check(a2);
}

uint64_t CA::Render::Surface::finalize(CA::Render::Surface *this)
{
  CA::Render::post_notification(3u, this, 0, 1);
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 14) = 0;
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
    }
  }

  v3 = *(this + 22);
  if (v3)
  {
    *(this + 22) = 0;
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
    }
  }

  v4 = *(*this + 200);

  return v4(this);
}

void CA::Render::Surface::~Surface(CA::Render::Surface *this)
{
  CA::Render::Surface::~Surface(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF201458;
  v2 = *(this + 43);
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
    _Block_release(*(this + 43));
    *(this + 43) = 0;
  }

  v3 = *(this + 16);
  if (v3)
  {
    if (*(this + 15))
    {
      IOSurfaceDecrementUseCount(v3);
      v3 = *(this + 16);
    }

    CFRelease(v3);
  }

  v4 = *(this + 17);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 42);
  if (v5)
  {
    CA::CASharedEvent::unref(v5);
  }

  v6 = *(this + 23);
  if (v6 && atomic_fetch_add(v6 + 4, 0xFFFFFFFF) == 1)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 22);
  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v7 + 16))(v7);
  }

  v8 = *(this + 21);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(this + 20);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(this + 14);
  if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v10 + 16))(v10);
  }

  --dword_1ED4EAB1C;

  CA::Render::Texture::~Texture(this);
}

atomic_uint *CA::Render::Surface::unref_image_data(atomic_uint *this)
{
  add = atomic_fetch_add(this + 89, 0xFFFFFFFF);
  if (this)
  {
    if (add == 1)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

void CA::Render::Encoder::ObjectCache::invalidate(CA::Render::Encoder::ObjectCache *this, const CA::Render::Object *a2)
{
  os_unfair_lock_lock(&CA::Render::Encoder::ObjectCache::_lock);
  v3 = CA::Render::Encoder::ObjectCache::_cache_list;
  if (CA::Render::Encoder::ObjectCache::_cache_list)
  {
    do
    {
      v4 = *v3;
      v5 = x_hash_table_remove(*(*v3 + 8), this);
      if (v5 || (v7 = *(v4 + 24)) != 0 && (v5 = x_hash_table_remove(v7, this)) != 0)
      {
        v6 = *(v4 + 16);
        if (!v6)
        {
          v6 = x_hash_table_new_(0, 0, 0, 0, 0, 0);
          *(v4 + 16) = v6;
        }

        hash_table_modify(v6, this, v5, 0);
      }

      v3 = v3[1];
    }

    while (v3);
  }

  os_unfair_lock_unlock(&CA::Render::Encoder::ObjectCache::_lock);
}

void CA::Render::SpringAnimation::~SpringAnimation(CA::Render::SpringAnimation *this, void **a2)
{
  --dword_1ED4EAB0C;
  *this = &unk_1EF202BA8;
  v3 = *(this + 16);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 15);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 14);
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 16))(v5);
  }

  CA::Render::PropertyAnimation::~PropertyAnimation(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v6 = malloc_zone;

  malloc_zone_free(v6, this);
}

{
  --dword_1ED4EAB0C;
  *this = &unk_1EF202BA8;
  v3 = *(this + 16);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 15);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 14);
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 16))(v5);
  }

  CA::Render::PropertyAnimation::~PropertyAnimation(this, a2);
}

void CA::Layer::collect_non_visible_callback(CA::Layer *this, uint64_t **a2, void *a3)
{
  v5 = *(this + 35);
  v25 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = &v25;
  do
  {
    schedule_stop_callback(v5, &animation_state);
    v7 = v5[56];
    if (v7 == 1 && (v5[62] & 1) == 0)
    {
      *v6 = *v5;
      free_non_deferred_animation(v5, 1);
      v5 = v6;
    }

    else
    {
      v5[58] |= v7;
      v6 = v5;
    }

    v5 = *v5;
  }

  while (v5);
  v8 = v25;
  *(this + 35) = v25;
  if (!v8)
  {
LABEL_9:
    v10 = *a2;
    v9 = a2[1];
    v11 = v9 - *a2;
    v12 = (v11 >> 3) + 1;
    v13 = a2[3];
    if (v13 < v12)
    {
      v14 = a2[2];
      v15 = (v13 + 1) | ((v13 + 1) >> 1) | (((v13 + 1) | ((v13 + 1) >> 1)) >> 2);
      v16 = v15 | (v15 >> 4) | ((v15 | (v15 >> 4)) >> 8);
      v17 = v16 | (v16 >> 16) | ((v16 | (v16 >> 16)) >> 32);
      if (v17 + 1 > v12)
      {
        v18 = v17 + 1;
      }

      else
      {
        v18 = (v11 >> 3) + 1;
      }

      v19 = malloc_type_malloc(8 * v18, 0x2004093837F09uLL);
      v20 = v19;
      v21 = *a2;
      v22 = a2[1];
      if (*a2 != v22)
      {
        v23 = v19;
        do
        {
          v24 = *v21++;
          *v23++ = v24;
        }

        while (v21 != v22);
      }

      if (v10 != v14)
      {
        free(*a2);
      }

      v9 = v20 + v11;
      *a2 = v20;
      a2[1] = (v20 + v11);
      a2[3] = v18;
    }

    *v9 = this;
    ++a2[1];
  }
}

void *CA::Render::LayerHost::encode(mach_port_name_t *this, CA::Render::Encoder *a2)
{
  CA::Render::Object::encode(this, a2);
  CA::Render::Encoder::encode_port_send_right(a2, this[6], 0);
  v4 = this[7];
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
  v9 = *(this + 33);
  if (v6 + 5 > v7)
  {
    CA::Render::Encoder::grow(a2, 1);
    v8 = *(a2 + 4);
  }

  *(a2 + 4) = v8 + 1;
  *v8 = v9;
  v10 = *(this + 10);
  v11 = *(a2 + 4);
  if ((v11 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 8);
    v11 = *(a2 + 4);
  }

  *v11 = v10;
  v12 = *(a2 + 4);
  v13 = *(a2 + 5);
  v14 = (v12 + 8);
  *(a2 + 4) = v12 + 8;
  v15 = (*(this + 8) - *(this + 7)) >> 3;
  if (v12 + 12 > v13)
  {
    CA::Render::Encoder::grow(a2, 4);
    v14 = *(a2 + 4);
  }

  *v14 = v15;
  v16 = *(a2 + 5);
  v17 = (*(a2 + 4) + 4);
  *(a2 + 4) = v17;
  v18 = *(this + 7);
  v19 = *(this + 8) - v18;
  if (v17 + v19 > v16)
  {
    CA::Render::Encoder::grow(a2, v19);
    v17 = *(a2 + 4);
  }

  memcpy(v17, v18, v19);
  *(a2 + 4) += v19;

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void CA::Render::LayerHost::~LayerHost(atomic_uint **this)
{
  *this = &unk_1EF1F78A0;
  CA::Render::LayerHost::invalidate(this);
  v2 = this[7];
  if (v2)
  {
    this[8] = v2;
    operator delete(v2);
  }

  v3 = this[6];
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = this[5];
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  CA::Render::HostingToken::~HostingToken((this + 2));
  --dword_1ED4EAAB4;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, v5);
  }
}

{
  CA::Render::LayerHost::~LayerHost(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

void CA::Render::LayerHost::invalidate(CA::Render::LayerHost *this)
{
  os_unfair_lock_lock(&CA::Render::LayerHost::_lock);
  v2 = *(this + 11);
  if (v2)
  {
    *(v2 + 448) = 0;
    *(this + 11) = 0;
    atomic_fetch_add(CA::Render::LayerHost::_seed, 1u);
    v3 = v2;
    if (!atomic_fetch_add((v2 + 8), 1u))
    {
      v3 = 0;
      atomic_fetch_add((v2 + 8), 0xFFFFFFFF);
    }

    CA::Render::Context::set_visible_locked(v2, 0);
    CA::Render::Context::update_backdrop_namespaces_locked(v2, 0);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 12);
  if (v4)
  {
    v5 = *(v4 + 456);
    x_list_remove(v5, this);
    *(v4 + 456) = v5;
    *(this + 12) = 0;
  }

  os_unfair_lock_unlock(&CA::Render::LayerHost::_lock);
  if (v3)
  {
    CA::Render::invalidate_context(v3, v6);
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      v7 = *(*v3 + 16);

      v7(v3);
    }
  }
}

void CA::Render::HostingToken::~HostingToken(CA::Render::HostingToken *this)
{
  *this = &unk_1EF1F57C8;
  if (*(this + 16) == 1)
  {
    v1 = *(this + 2);
    if (v1)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v1);
    }
  }
}

{
  CA::Render::HostingToken::~HostingToken(this);

  JUMPOUT(0x1865EA9A0);
}

void *CA::Render::BasicAnimation::encode(const CA::Render::Object **this, CA::Render::Encoder *a2)
{
  CA::Render::BasicAnimation0::encode(this, a2);

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void CA::Render::BasicAnimation::~BasicAnimation(CA::Render::BasicAnimation *this, void **a2)
{
  --dword_1ED4EAA4C;
  *this = &unk_1EF202BA8;
  v3 = *(this + 16);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 15);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 14);
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 16))(v5);
  }

  CA::Render::PropertyAnimation::~PropertyAnimation(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v6 = malloc_zone;

  malloc_zone_free(v6, this);
}

{
  --dword_1ED4EAA4C;
  *this = &unk_1EF202BA8;
  v3 = *(this + 16);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 15);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 14);
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 16))(v5);
  }

  CA::Render::PropertyAnimation::~PropertyAnimation(this, a2);
}

void CA::Render::Animation::~Animation(CA::Render::Animation *this, const CA::Render::Object *a2)
{
  *this = &unk_1EF202A30;
  v3 = *(this + 7);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 6);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 5);
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 16))(v5);
  }

  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

{
  CA::Render::Animation::~Animation(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

void CA::Render::PropertyAnimation::~PropertyAnimation(CA::Render **this, void **a2)
{
  *this = &unk_1EF202AE0;
  CA::Render::key_path_free(this[12], a2);
  v4 = this[13];
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  CA::Render::Animation::~Animation(this, v3);
}

{
  CA::Render::PropertyAnimation::~PropertyAnimation(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

void *CA::Render::Encoder::grow(CA::Render::Encoder *this, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  v5 = *(this + 5) - v4;
  v6 = *(this + 4) - v4;
  v7 = v5 < 0;
  v8 = v6 + a2;
  if (__CFADD__(v6, a2))
  {
    v7 = 1;
  }

  v9 = *MEMORY[0x1E69E9AC8] - 1;
  v10 = __CFADD__(v9, 2 * v5);
  v11 = v9 + 2 * v5;
  if (v10)
  {
    v7 = 1;
  }

  v12 = v11 & -*MEMORY[0x1E69E9AC8];
  if (v12 >= v8)
  {
    v13 = v11 & -*MEMORY[0x1E69E9AC8];
  }

  else
  {
    do
    {
      v13 = 2 * v12;
      v7 |= v12 >> 63;
      v12 = v13;
    }

    while (v13 < v8);
  }

  if (v7)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v18 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      v23 = 134218240;
      v24 = v5;
      v25 = 2048;
      v26 = a2;
      v19 = "CoreAnimation: Encoder size overflow, old size = %zu, extra = %zu\n";
      v20 = v18;
      v21 = 22;
LABEL_21:
      _os_log_error_impl(&dword_183AA6000, v20, OS_LOG_TYPE_ERROR, v19, &v23, v21);
    }

LABEL_22:
    abort();
  }

  v14 = mmap(0, v13, 3, 4098, 855638016, 0);
  if (v14 == -1)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v22 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      v23 = 134218496;
      v24 = v13;
      v25 = 2048;
      v26 = a2;
      v27 = 2048;
      v28 = v5;
      v19 = "CoreAnimation: Failed to allocate %zu bytes, requested = %zu, old size = %zu\n";
      v20 = v22;
      v21 = 32;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v15 = v14;
  result = memcpy(v14, *(this + 3), v6);
  v17 = *(this + 4);
  if ((v17 & 0x100) != 0)
  {
    result = munmap(*(this + 3), v5);
  }

  else
  {
    *(this + 4) = v17 & 0xFFFF00FF | 0x100;
  }

  *(this + 3) = v15;
  *(this + 4) = &v15[v6];
  *(this + 5) = &v15[v13];
  return result;
}

uint64_t CA::Render::Layer::set_corner_contents(uint64_t this, CA::Render::Object *a2)
{
  v2 = a2;
  if (a2 || *(this + 136))
  {
    v3 = CA::Render::Layer::ensure_ext(this);
    this = v3[7];
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

      v3[7] = v2;
    }
  }

  return this;
}

uint64_t CA::Render::Layer::set_contents_rect(uint64_t this, CA::Render::Vector *a2)
{
  v2 = a2;
  if (a2 || *(this + 136))
  {
    v3 = CA::Render::Layer::ensure_ext(this);
    this = v3[5];
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

      v3[5] = v2;
    }
  }

  return this;
}

void *schedule_start_callback(void *result, uint64_t a2)
{
  if (*(result + 68) == 1)
  {
    v2 = result;
    *(a2 + 8) = x_list_prepend(*(a2 + 8), result[1]);
    result = CFRetain(v2[1]);
    *(v2 + 68) = 0;
  }

  return result;
}

void CA::DynamicFrameRateSource::set_preferred_fps_range(CA::DynamicFrameRateSource *this, CAFrameRateRange a2, int a3)
{
  preferred = a2.preferred;
  maximum = a2.maximum;
  minimum = a2.minimum;
  if ((*(*(this + 1) + 241) & 2) == 0 || a2.minimum != 0.0 || a2.maximum != 0.0 || a2.preferred != 0.0)
  {
    goto LABEL_12;
  }

  if (CAPrefers60HzAPT(void)::once != -1)
  {
    dispatch_once(&CAPrefers60HzAPT(void)::once, &__block_literal_global_3);
  }

  if (CAPrefers60HzAPT(void)::enabled)
  {
    *&v8 = 80.0;
LABEL_11:
    maximum = *&v8;
    minimum = 48.0;
    preferred = 0.0;
    goto LABEL_12;
  }

  if ((*(this + 88) & 2) != 0)
  {
    *&v8 = 120.0;
    goto LABEL_11;
  }

LABEL_12:
  v9 = CA::Display::DisplayTimingsControl::server_compat_quanta_mode(*(this + 1), 0);
  v31.minimum = minimum;
  v31.maximum = maximum;
  v31.preferred = preferred;
  v10 = CA::Display::DisplayTimingsControl::fps_range_to_frame_interval_range(*(this + 1), v31, v9);
  v12 = v11;
  v13 = HIDWORD(v10);
  if ((*(*(this + 1) + 241) & 2) == 0)
  {
    goto LABEL_20;
  }

  if (CAHighFrameRateRestrictionEnabled(void)::once != -1)
  {
    dispatch_once(&CAHighFrameRateRestrictionEnabled(void)::once, &__block_literal_global_6_18959);
  }

  if (CAHighFrameRateRestrictionEnabled(void)::enabled != 1 || *(this + 18))
  {
    goto LABEL_20;
  }

  if (CADeviceDisableMinimumFrameDurationOnPhone::once != -1)
  {
    dispatch_once(&CADeviceDisableMinimumFrameDurationOnPhone::once, &__block_literal_global_165);
  }

  if ((CADeviceDisableMinimumFrameDurationOnPhone::disabled & 1) == 0)
  {
    if (v10 <= 3)
    {
      v10 = 3;
    }

    else
    {
      v10 = v10;
    }

    if (v13 <= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = v13;
    }

    if (v12 <= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = v12;
    }

    if (v12)
    {
      v14 = v22;
    }

    else
    {
      v14 = 0;
    }

    v15 = v10 | (v13 << 32);
    v12 = v14;
  }

  else
  {
LABEL_20:
    v14 = v12;
    v15 = v10;
    if (!v10)
    {
      goto LABEL_64;
    }
  }

  if (v10 <= v12 && v12 <= v13)
  {
LABEL_32:
    if (*(this + 104))
    {
LABEL_43:
      *(this + 28) = v15;
      *(this + 9) = v12;
LABEL_44:
      *&v29.var0 = v15;
      v29.var2 = v14;
      v19 = CA::DynamicFrameRateSource::frame_interval_range_adapt_to_server_interval(this, v29, 0);
      *(this + 8) = CA::Display::DisplayTimingsControl::server_frame_interval(*(this + 1), 0);
      v20 = mach_absolute_time();
      if (a3 && (v21 = CA::Display::DisplayTimingsControl::server_timing_expiry(*(this + 1)), v21 > v20))
      {
        *(this + 7) = v21;
      }

      else
      {
        if (*(this + 7) - 1 < v20)
        {
          *(this + 7) = 0;
        }

        *(this + 12) = v19;
      }

      *(this + 4) = minimum;
      *(this + 5) = maximum;
      *(this + 6) = preferred;
      return;
    }

    if (*(this + 88))
    {
      if (*(this + 7) == v10 && *(this + 8) == v13 && *(this + 9) == v12)
      {
        goto LABEL_43;
      }

      v18 = *(this + 1);
      if ((*(v18 + 241) & 2) == 0)
      {
        goto LABEL_44;
      }

      if (*(this + 88))
      {
        *&v30.var0 = v15;
        v30.var2 = v14;
        CA::Display::DisplayTimingsControl::update_frame_interval_range(v18, *(this + 28), v30);
LABEL_42:
        *(this + 88) |= 1u;
        goto LABEL_43;
      }
    }

    else
    {
      v18 = *(this + 1);
      if ((*(v18 + 241) & 2) == 0)
      {
        goto LABEL_44;
      }
    }

    *&v28.var0 = v15;
    v28.var2 = v14;
    CA::Display::DisplayTimingsControl::register_frame_interval_range(v18, v28);
    goto LABEL_42;
  }

  if (v10 <= v13 && v12 == 0)
  {
    v12 = 0;
    goto LABEL_32;
  }

LABEL_64:
  *&v23.var0 = v15;
  v23.var2 = v14;
  v24 = minimum;
  v25 = maximum;
  v26 = preferred;

  CAFrameIntervalRangeLogInvalidRange(v23, *&v24);
}

uint64_t CA::DynamicFrameRateSource::frame_interval_range_adapt_to_server_interval(CA::Display::DisplayTimingsControl **this, CAFrameIntervalRange a2, uint64_t a3)
{
  var2 = a2.var2;
  v4 = *&a2.var0;
  v6 = CA::Display::DisplayTimingsControl::server_frame_interval(this[1], a3);
  v7 = (*(this[1] + 241) >> 1) & 1;
  v8.var2 = var2;
  *&v8.var0 = v4;

  return CAFrameIntervalRangeAdaptToFrameInterval(v8, v6, v7);
}

uint64_t CA::DynamicFrameRateSource::commit_deadline(CA::DynamicFrameRateSource *this)
{
  v2 = mach_absolute_time();
  result = *(this + 5);
  if (v2 >= result)
  {
    result = CA::DynamicFrameRateSource::_commit_deadline_at_timestamp(this, v2);
    *(this + 5) = result;
  }

  return result;
}

uint64_t CA::DynamicFrameRateSource::_commit_deadline_at_timestamp(CA::DynamicFrameRateSource *this, uint64_t a2)
{
  v46[1] = *MEMORY[0x1E69E9840];
  if (*(this + 104))
  {
    return a2;
  }

  v4 = mach_absolute_time();
  v5 = CA::Display::DisplayTimingsControl::server_low_latency_eligible_pid(*(this + 1), v4);
  v6 = getpid();
  if (*(this + 7) - 1 < v4 || (v7 = *(this + 8), v7 != CA::Display::DisplayTimingsControl::server_frame_interval(*(this + 1), v4)) || (v5 == v6) == ((*(this + 88) & 2) == 0))
  {
    *(this + 88) = *(this + 88) & 0xFD | (2 * (v5 == v6));
    CA::DynamicFrameRateSource::set_preferred_fps_range(this, *(this + 16), 0);
  }

  v44[0] = 0;
  v44[1] = 0;
  v45 = 0;
  CA::Display::DisplayTimingsControl::timing_reference(v44, *(this + 1), a2);
  if (*(this + 7) - 1 < a2 || (v8 = *(this + 12), v9 = *(this + 8), v9 != CA::Display::DisplayTimingsControl::server_frame_interval(*(this + 1), a2)))
  {
    v10 = *(this + 4);
    v11 = *(this + 5);
    v12 = *(this + 6);
    v13 = CA::Display::DisplayTimingsControl::server_compat_quanta_mode(*(this + 1), a2);
    v49.minimum = v10;
    v49.maximum = v11;
    v49.preferred = v12;
    v14 = CA::Display::DisplayTimingsControl::fps_range_to_frame_interval_range(*(this + 1), v49, v13);
    v48.var2 = v15;
    *&v48.var0 = v14;
    v8 = CA::DynamicFrameRateSource::frame_interval_range_adapt_to_server_interval(this, v48, a2);
  }

  v16 = *(this + 1);
  if (v8)
  {
    v17 = v8;
  }

  else
  {
    if (*(v16 + 241))
    {
      v40 = 2;
    }

    else
    {
      v40 = 1;
    }

    if (v40 <= *(v16 + 56))
    {
      v40 = *(v16 + 56);
    }

    if (v40 <= *(v16 + 88))
    {
      v40 = *(v16 + 88);
    }

    if (v40 <= *(v16 + 60))
    {
      LOBYTE(v40) = *(v16 + 60);
    }

    v17 = v40;
  }

  if (CA::Display::DisplayTimingsControl::server_timing_expiry(*(this + 1)) - 1 >= a2)
  {
    os_unfair_lock_lock(&CA::Display::DisplayLink::_next_wakeup_info_lock);
    if (CA::Display::DisplayLink::_next_wakeup_info_count && (v26 = mach_absolute_time(), v27 = CA::Display::DisplayLink::_next_wakeup_info_count, CA::Display::DisplayLink::_next_wakeup_info_count))
    {
      v25 = -1;
      v28 = &qword_1ED4E5308;
      do
      {
        v29 = *v28;
        if (*v28 >= v25)
        {
          v29 = v25;
        }

        if (*(v28 - 1) > v26)
        {
          v25 = v29;
        }

        v28 += 5;
        --v27;
      }

      while (v27);
    }

    else
    {
      v25 = -1;
    }

    os_unfair_lock_unlock(&CA::Display::DisplayLink::_next_wakeup_info_lock);
    if (!v25)
    {
      goto LABEL_43;
    }

    goto LABEL_31;
  }

  os_unfair_lock_lock((v16 + 92));
  v18 = *(v16 + 112);
  v19 = *(v16 + 120);
  v20 = v18 == v19;
  if (v18 == v19)
  {
    v21 = &CAFrameIntervalRangeZero;
  }

  else
  {
    v21 = (v16 + 96);
  }

  v22 = &unk_183E24568;
  if (!v20)
  {
    v22 = (v16 + 104);
  }

  v23 = *v22;
  v24 = *v21;
  os_unfair_lock_unlock((v16 + 92));
  if (!v24 && !v23)
  {
    v25 = -1;
LABEL_31:
    v30 = *(this + 1);
    if (*(v30 + 241))
    {
      v31 = 2;
    }

    else
    {
      v31 = 1;
    }

    if (v31 <= *(v30 + 56))
    {
      v31 = *(v30 + 56);
    }

    LODWORD(v30) = *(v30 + 88);
    if (v31 <= v30)
    {
      v30 = v30;
    }

    else
    {
      v30 = v31;
    }

    if (v25 > v30)
    {
      v30 = v25;
    }

    if (v30 < v17)
    {
      v17 = v30;
    }

    goto LABEL_43;
  }

  v38 = CA::Display::DisplayTimingsControl::server_frame_interval(v16, a2);
  *&v47.var0 = v24;
  v47.var2 = v23;
  v39 = CAFrameIntervalRangeAdaptToFrameInterval(v47, v38, (*(v16 + 241) >> 1) & 1);
  v25 = v39;
  if (v39)
  {
    goto LABEL_31;
  }

LABEL_43:
  v32 = v45 * v17;
  v46[0] = v45 * v17;
  phase = get_phase(v44, a2, v46);
  v34 = a2 - phase + v46[0];
  if (!phase)
  {
    v34 = a2;
  }

  if (v34 == a2)
  {
    v35 = v32 + a2;
  }

  else
  {
    v35 = v34;
  }

  v36 = *(this + 7);
  if (v36 > a2)
  {
    v41 = *(this + 8);
    if (!v41)
    {
      v41 = *(this + 1);
      if (*(v41 + 241))
      {
        v42 = 2;
      }

      else
      {
        v42 = 1;
      }

      v43 = *(v41 + 60);
      if (v42 <= *(v41 + 56))
      {
        v42 = *(v41 + 56);
      }

      LODWORD(v41) = *(v41 + 88);
      if (v42 > v41)
      {
        LODWORD(v41) = v42;
      }

      if (v41 <= v43)
      {
        LOBYTE(v41) = v43;
      }

      v41 = v41;
    }

    if (v35 >= v36 || v41 > v17)
    {
      v35 = CA::DynamicFrameRateSource::_commit_deadline_at_timestamp(this, v36);
    }
  }

  kdebug_trace();
  return v35;
}

atomic_uint *CA::Render::Decoder::decode_object(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*(a1 + 18))
  {
    return 0;
  }

  v4 = CA::Render::Decoder::decode_int8(a1);
  if (!v4)
  {
    return 0;
  }

  v6 = v4;
  if (v4 < 0xFE)
  {
    if (!a2 || v4 == a2)
    {
      v11 = *(a1 + 72);
      if ((*(v11 + 292) & 0x100) == 0 || v6 <= 0x3E && ((1 << v6) & 0x6F7821C4EEB6022ALL) != 0)
      {
        switch(v6)
        {
          case 1u:
            *buf = 0;
            v12 = CA::Render::Array::decode(a1, 1, buf, 0);
            goto LABEL_101;
          case 3u:
            v30 = X::Allocator0::operator new(0x90uLL);
            if (!v30)
            {
              goto LABEL_107;
            }

            v10 = v30;
            CA::Render::BackdropLayer::BackdropLayer(v30, a1);
            goto LABEL_102;
          case 5u:
            v26 = X::Allocator0::operator new(0x98uLL);
            if (!v26)
            {
              goto LABEL_107;
            }

            v10 = v26;
            CA::Render::BasicAnimation::BasicAnimation(v26, a1);
            goto LABEL_102;
          case 6u:
            if ((*(v11 + 292) & 0x200) == 0)
            {
              goto LABEL_84;
            }

            v35 = X::Allocator0::operator new(0x18uLL);
            if (!v35)
            {
              goto LABEL_107;
            }

            v10 = v35;
            CA::Render::CarPlayRegionLayer::CarPlayRegionLayer(v35, a1);
            goto LABEL_102;
          case 8u:
            if ((*(v11 + 292) & 0x200) == 0)
            {
              goto LABEL_84;
            }

            v47 = X::Allocator0::operator new(0x10uLL);
            if (!v47)
            {
              goto LABEL_107;
            }

            v10 = v47;
            CA::Render::CloningTerminatorLayer::CloningTerminatorLayer(v47, a1);
            goto LABEL_102;
          case 9u:
            v12 = CA::Render::CompressedImage::decode(a1, v5);
            goto LABEL_101;
          case 0xCu:
            v31 = X::Allocator0::operator new(0x28uLL);
            if (!v31)
            {
              goto LABEL_107;
            }

            v10 = v31;
            CA::Render::DistanceFieldLayer::DistanceFieldLayer(v31, a1);
            goto LABEL_102;
          case 0xDu:
            v32 = X::Allocator0::operator new(0x30uLL);
            if (!v32)
            {
              goto LABEL_107;
            }

            v10 = v32;
            CA::Render::EmitterBehavior::EmitterBehavior(v32, a1);
            goto LABEL_102;
          case 0xEu:
            v39 = X::Allocator0::operator new(0xE8uLL);
            if (!v39)
            {
              goto LABEL_107;
            }

            v10 = v39;
            CA::Render::EmitterCell::EmitterCell(v39, a1);
            goto LABEL_102;
          case 0xFu:
            v38 = X::Allocator0::operator new(0xA8uLL);
            if (!v38)
            {
              goto LABEL_107;
            }

            v10 = v38;
            CA::Render::EmitterLayer::EmitterLayer(v38, a1);
            goto LABEL_102;
          case 0x11u:
            v12 = CA::Render::Filter::decode(a1, v5);
            goto LABEL_101;
          case 0x12u:
            v12 = CA::Render::Function::decode(a1, v5);
            goto LABEL_101;
          case 0x13u:
            if ((*(v11 + 292) & 0x200) == 0)
            {
              goto LABEL_84;
            }

            v24 = X::Allocator0::operator new(0x18uLL);
            if (!v24)
            {
              goto LABEL_107;
            }

            v10 = v24;
            CA::Render::GainMapLayer::GainMapLayer(v24, a1);
            goto LABEL_102;
          case 0x14u:
            v19 = X::Allocator0::operator new(0x90uLL);
            if (!v19)
            {
              goto LABEL_107;
            }

            v10 = v19;
            CA::Render::GradientLayer::GradientLayer(v19, a1);
            goto LABEL_102;
          case 0x15u:
            v33 = X::Allocator0::operator new(0x68uLL);
            if (!v33)
            {
              goto LABEL_107;
            }

            v10 = v33;
            CA::Render::GroupAnimation::GroupAnimation(v33, a1);
            goto LABEL_102;
          case 0x17u:
            v12 = CA::Render::Image::decode(a1, v5);
            goto LABEL_101;
          case 0x19u:
            v12 = CA::Render::ImageQueue::decode(a1, v5);
            goto LABEL_101;
          case 0x1Bu:
            v40 = X::Allocator0::operator new(0xB0uLL);
            if (!v40)
            {
              goto LABEL_107;
            }

            v10 = v40;
            CA::Render::KeyframeAnimation::KeyframeAnimation(v40, a1);
            goto LABEL_102;
          case 0x1Cu:
            v17 = X::Allocator0::operator new(0x20uLL);
            if (!v17)
            {
              goto LABEL_107;
            }

            v10 = v17;
            CA::Render::KeyPathValue::KeyPathValue(v17, a1);
            goto LABEL_102;
          case 0x1Du:
            v25 = X::Allocator0::operator new(0x20uLL);
            if (!v25)
            {
              goto LABEL_107;
            }

            v10 = v25;
            CA::Render::KeyValue::KeyValue(v25, a1);
            goto LABEL_102;
          case 0x1Eu:
            v42 = X::Allocator0::operator new(0xA0uLL);
            if (!v42)
            {
              goto LABEL_107;
            }

            v10 = v42;
            CA::Render::Layer::Layer(v42, a1);
            goto LABEL_102;
          case 0x1Fu:
            v18 = X::Allocator0::operator new(0x68uLL);
            if (!v18)
            {
              goto LABEL_107;
            }

            v10 = v18;
            CA::Render::LayerHost::LayerHost(v18, a1);
            goto LABEL_102;
          case 0x20u:
            v23 = X::Allocator0::operator new(0x90uLL);
            if (!v23)
            {
              goto LABEL_107;
            }

            v10 = v23;
            CA::Render::MatchMoveAnimation::MatchMoveAnimation(v23, a1);
            goto LABEL_102;
          case 0x21u:
            v20 = X::Allocator0::operator new(0x88uLL);
            if (!v20)
            {
              goto LABEL_107;
            }

            v10 = v20;
            CA::Render::MatchPropertyAnimation::MatchPropertyAnimation(v20, a1);
            goto LABEL_102;
          case 0x22u:
            v28 = X::Allocator0::operator new(0x10uLL);
            if (!v28)
            {
              goto LABEL_107;
            }

            v10 = v28;
            CA::Render::MediaLayer::MediaLayer(v28, a1);
            goto LABEL_102;
          case 0x23u:
            v12 = CA::Render::MeshTransform::decode(a1, v5);
            goto LABEL_101;
          case 0x24u:
            v12 = CA::Render::MetalTexture::decode(v11, v5);
            goto LABEL_101;
          case 0x26u:
            v12 = CA::Render::Path::decode(a1, v5);
            goto LABEL_101;
          case 0x27u:
            v22 = X::Allocator0::operator new(0x88uLL);
            if (!v22)
            {
              goto LABEL_107;
            }

            v10 = v22;
            CA::Render::Pattern::Pattern(v22, a1);
            goto LABEL_102;
          case 0x28u:
            v12 = CA::Render::PixelBuffer::decode(a1, v5);
            goto LABEL_101;
          case 0x2Au:
            v34 = X::Allocator0::operator new(0x40uLL);
            if (!v34)
            {
              goto LABEL_107;
            }

            v10 = v34;
            CA::Render::PortalLayer::PortalLayer(v34, a1);
            goto LABEL_102;
          case 0x2Cu:
            v27 = X::Allocator0::operator new(0x30uLL);
            if (!v27)
            {
              goto LABEL_107;
            }

            v10 = v27;
            CA::Render::PresentationModifier::PresentationModifier(v27, a1);
            goto LABEL_102;
          case 0x2Du:
            v45 = X::Allocator0::operator new(0x18uLL);
            if (!v45)
            {
              goto LABEL_107;
            }

            v10 = v45;
            CA::Render::Proxy::Proxy(v45, a1);
            goto LABEL_102;
          case 0x2Eu:
            v21 = X::Allocator0::operator new(0x48uLL);
            if (!v21)
            {
              goto LABEL_107;
            }

            v10 = v21;
            CA::Render::ReplicatorLayer::ReplicatorLayer(v21, a1);
            goto LABEL_102;
          case 0x2Fu:
            v41 = X::Allocator0::operator new(0x28uLL);
            if (!v41)
            {
              goto LABEL_107;
            }

            v10 = v41;
            CA::Render::SDFElementLayer::SDFElementLayer(v41, a1);
            goto LABEL_102;
          case 0x30u:
            v44 = X::Allocator0::operator new(0xA8uLL);
            if (!v44)
            {
              goto LABEL_107;
            }

            v10 = v44;
            CA::Render::SDFLayer::SDFLayer(v44, a1);
            goto LABEL_102;
          case 0x32u:
            if ((*(v11 + 292) & 0x200) != 0)
            {
              v15 = X::Allocator0::operator new(0x20uLL);
              if (v15)
              {
                v10 = v15;
                CA::Render::SecureIndicatorLayer::SecureIndicatorLayer(v15, a1);
LABEL_102:
                if ((*(a1 + 18) & 1) != 0 && v10)
                {
LABEL_104:
                  if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
                  {
                    (*(*v10 + 16))(v10);
                  }

                  return 0;
                }

                if (v10)
                {
                  return v10;
                }
              }
            }

            else
            {
LABEL_84:
              CA::Render::Decoder::set_fatal_error(a1, "Missing entitlement for system layer!");
            }

LABEL_107:
            CA::Render::Decoder::set_fatal_error(a1, "%s - ptr == NULL, type = %u");
            return 0;
          case 0x33u:
            v37 = X::Allocator0::operator new(0xA8uLL);
            if (!v37)
            {
              goto LABEL_107;
            }

            v10 = v37;
            CA::Render::ShapeLayer::ShapeLayer(v37, a1);
            goto LABEL_102;
          case 0x34u:
            v12 = CA::Render::Shmem::decode(a1, v5);
            goto LABEL_101;
          case 0x35u:
            v14 = X::Allocator0::operator new(0xF0uLL);
            if (!v14)
            {
              goto LABEL_107;
            }

            v10 = v14;
            CA::Render::SpringAnimation::SpringAnimation(v14, a1);
            goto LABEL_102;
          case 0x36u:
            v12 = CA::Render::String::decode(a1, v5);
            goto LABEL_101;
          case 0x38u:
            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            v29 = malloc_type_zone_malloc(malloc_zone, 0x28uLL, 0x165299FDuLL);
            if (!v29)
            {
              goto LABEL_107;
            }

            v10 = v29;
            CA::Render::Subtexture::Subtexture(v29, a1);
            goto LABEL_102;
          case 0x39u:
            v12 = CA::Render::Surface::decode(a1, v5);
            goto LABEL_101;
          case 0x3Au:
            v13 = X::Allocator0::operator new(0x40uLL);
            if (!v13)
            {
              goto LABEL_107;
            }

            v10 = v13;
            CA::Render::Timing::Timing(v13, a1);
            goto LABEL_102;
          case 0x3Du:
            v16 = X::Allocator0::operator new(0x90uLL);
            if (!v16)
            {
              goto LABEL_107;
            }

            v10 = v16;
            CA::Render::TransitionAnimation::TransitionAnimation(v16, a1);
            goto LABEL_102;
          case 0x3Eu:
            v12 = CA::Render::Vector::decode(a1, v5);
LABEL_101:
            v10 = v12;
            goto LABEL_102;
          case 0x3Fu:
            v36 = X::Allocator0::operator new(0x38uLL);
            if (!v36)
            {
              goto LABEL_107;
            }

            v10 = v36;
            CA::Render::WindowLayer::WindowLayer(v36, a1);
            goto LABEL_102;
          default:
            if (x_log_get_render(void)::once[0] != -1)
            {
              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            }

            v46 = x_log_get_render(void)::log;
            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v49 = v6;
              _os_log_error_impl(&dword_183AA6000, v46, OS_LOG_TYPE_ERROR, "unable to decode object of type %d\n", buf, 8u);
            }

            goto LABEL_107;
        }
      }

      CA::Render::Context::process_path(v11);
      CA::Render::Decoder::set_fatal_error(a1, "Deserialization of disallowed type: %s, process: %s");
    }

    else
    {
      CA::Render::Decoder::set_fatal_error(a1, "%s - required_type = %u, type = %u");
    }

    return 0;
  }

  *buf = 0;
  v7 = CA::Render::Decoder::decode_size_t(a1);
  v8 = CA::Render::Decoder::decode_int32(a1);
  if (v6 != 255)
  {
    v9 = CA::Render::Decoder::decode_object(a1, a2);
    if (v9)
    {
      v10 = v9;
      if ((*(a1 + 18) & 1) == 0)
      {
        CA::Render::Context::set_object(*(a1 + 72), v7, v8, v9);
        goto LABEL_17;
      }

      goto LABEL_104;
    }

LABEL_19:
    if (a2)
    {
      CA::Render::Decoder::set_fatal_error(a1, "%s - ptr = NULL, required_type = %u, type = %u, id = %llu, error = %u");
    }

    return 0;
  }

  v10 = CA::Render::Context::lookup_object(*(*(a1 + 72) + 136), *(*(a1 + 72) + 148), v7, v8, a2, buf);
  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (!atomic_fetch_add(v10 + 2, 1u))
  {
    atomic_fetch_add(v10 + 2, 0xFFFFFFFF);
  }

  return v10;
}

void CA::update_timer(CA *this)
{
  if (CA::callbacks)
  {
    v1 = *(CA::callbacks + 24);
    v2 = 0.0;
    if (v1 > 0.0)
    {
      v3 = mach_absolute_time();
      v2 = v1 - CATimeWithHostTime(v3);
    }

    v4 = CFAbsoluteTimeGetCurrent() + v2;
    v5 = CA::callback_timer;
    if (CA::callback_timer)
    {

      CFRunLoopTimerSetNextFireDate(v5, v4);
    }

    else
    {
      CA::callback_timer = CFRunLoopTimerCreate(0, v4, 3153600000.0, 0, 0, CA::timer_callback, 0);
      v6 = pthread_main_np();
      v7 = CA::callback_timer;
      if (v6)
      {
        Current = CFRunLoopGetCurrent();
        v9 = *MEMORY[0x1E695E8D0];

        CFRunLoopAddTimer(Current, v7, v9);
      }

      else
      {
        v10 = MEMORY[0x1E69E96A0];
        v11 = CA::callback_timer;

        dispatch_async_f(v10, v11, CA::add_timer);
      }
    }
  }
}

void CA::release_root(atomic_uint *this, CA::Layer *a2, CA::Layer *a3, void *a4)
{
  while (1)
  {
    v5 = *this;
    if (!*this)
    {
      break;
    }

    v6 = *this;
    atomic_compare_exchange_strong(this, &v6, v5 - 1);
    if (v6 == v5)
    {
      if (v5 == 1)
      {
        CA::Layer::destroy(this);
        CA::Layer::~Layer(this);
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v7 = malloc_zone;

        malloc_zone_free(v7, this);
      }

      return;
    }
  }
}

BOOL CA::Render::Fence::resolve_batches(CA::Render::Fence *this, double a2)
{
  v113[3] = *MEMORY[0x1E69E9840];
  v112 = 0;
  v109 = 0u;
  v110 = 0u;
  v111 = 1.0;
  memset(v107, 0, sizeof(v107));
  v108 = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__rehash<true>(&v109, *(CA::Render::Fence::cleared_b_ports + 24));
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__rehash<true>(v107, *(CA::Render::Fence::batches_by_port + 24));
  for (i = *(CA::Render::Fence::cleared_b_ports + 16); i; i = *i)
  {
    v4 = *(i + 4);
    if (!std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(&v109, v4) && !std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v107, v4))
    {
      *v104 = 0u;
      *__p = 0u;
      v106 = 1065353216;
      if (!CA::Render::Fence::is_batch_resolved(v4, v104, &v109, v107))
      {
        goto LABEL_48;
      }

      v5 = __p[0];
      if (!__p[0])
      {
        goto LABEL_48;
      }

      v6 = *(&v109 + 1);
LABEL_7:
      while (2)
      {
        v7 = *(v5 + 4);
        if (v6)
        {
          v8 = vcnt_s8(v6);
          v8.i16[0] = vaddlv_u8(v8);
          if (v8.u32[0] > 1uLL)
          {
            v9 = *(v5 + 4);
            if (v6 <= v7)
            {
              v9 = v7 % v6;
            }
          }

          else
          {
            v9 = (v6 - 1) & v7;
          }

          v10 = *(v109 + 8 * v9);
          if (v10)
          {
            for (j = *v10; j; j = *j)
            {
              v12 = j[1];
              if (v12 == v7)
              {
                if (*(j + 4) == v7)
                {
                  v5 = *v5;
                  if (!v5)
                  {
                    goto LABEL_48;
                  }

                  goto LABEL_7;
                }
              }

              else
              {
                if (v8.u32[0] > 1uLL)
                {
                  if (v12 >= v6)
                  {
                    v12 %= v6;
                  }
                }

                else
                {
                  v12 &= v6 - 1;
                }

                if (v12 != v9)
                {
                  break;
                }
              }
            }
          }
        }

        v13 = (*(&v110 + 1) + 1);
        if (!v6 || (v111 * v6) < v13)
        {
          v14 = 2 * v6;
          v15 = v6 < 3 || (v6 & (v6 - 1)) != 0;
          v16 = v15 | v14;
          v17 = vcvtps_u32_f32(v13 / v111);
          if (v16 <= v17)
          {
            v18 = v17;
          }

          else
          {
            v18 = v16;
          }

          std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__rehash<true>(&v109, v18);
        }

        v19 = *v5;
        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::remove(v113, v104, v5);
        v5[1] = v7;
        v6 = *(&v109 + 1);
        v20 = vcnt_s8(*(&v109 + 8));
        v20.i16[0] = vaddlv_u8(v20);
        if (v20.u32[0] > 1uLL)
        {
          if (*(&v109 + 1) <= v7)
          {
            v7 %= *(&v109 + 1);
          }
        }

        else
        {
          v7 = (DWORD2(v109) - 1) & v7;
        }

        v21 = v109;
        v22 = *(v109 + 8 * v7);
        if (v22)
        {
          *v5 = *v22;
          goto LABEL_44;
        }

        *v5 = v110;
        *&v110 = v5;
        *(v21 + 8 * v7) = &v110;
        if (*v5)
        {
          v23 = *(*v5 + 8);
          if (v20.u32[0] > 1uLL)
          {
            if (v23 >= v6)
            {
              v23 %= v6;
            }
          }

          else
          {
            v23 &= v6 - 1;
          }

          v22 = (v109 + 8 * v23);
LABEL_44:
          *v22 = v5;
        }

        ++*(&v110 + 1);
        v5 = v19;
        if (v19)
        {
          continue;
        }

        break;
      }

LABEL_48:
      std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v104);
    }
  }

  v24 = *(&v110 + 1);
  if (*(&v110 + 1))
  {
    v101 = *(&v110 + 1);
    *v104 = 0u;
    *__p = 0u;
    v106 = 1065353216;
    v25 = v110;
    if (v110)
    {
      v26 = &unk_1EA851000;
      do
      {
        v27 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(CA::Render::Fence::batches_by_port, *(v25 + 4));
        if (!v27)
        {
          goto LABEL_196;
        }

        v28 = v27[3];
        if (a2 <= *(v28 + 16))
        {
          a2 = *(v28 + 16);
        }

        v29 = *(*(v28 + 24) + 16);
        if (v29)
        {
          v30 = CA::Render::Fence::bcontexts_by_id;
          do
          {
            v103 = *(v29 + 4);
            v31 = v103;
            v32 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v30, v103);
            if (v32)
            {
              v33 = v32[3];
              v113[0] = &v103;
              std::__hash_table<std::__hash_value_type<unsigned int,CA::Render::Context *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::Render::Context *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::Render::Context *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::Render::Context *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v104, v31)[3] = v33;
              v30 = CA::Render::Fence::bcontexts_by_id;
            }

            v29 = *v29;
          }

          while (v29);
        }

        v25 = *v25;
      }

      while (v25);
      if (__p[1])
      {
        pthread_mutex_lock(&CA::Render::Fence::_bwait_mutex);
        CA::Render::Fence::_bwait_writer_pending = 1;
        while (CA::Render::Fence::_bwait_readers_by_tid)
        {
          pthread_cond_wait(&CA::Render::Fence::_bwait_cond_writer, &CA::Render::Fence::_bwait_mutex);
        }

        CA::Render::Fence::_bwait_writer_active = 1;
        CA::Render::Fence::_bwait_writer_pending = 0;
        pthread_mutex_unlock(&CA::Render::Fence::_bwait_mutex);
        v34 = __p[0];
        if (__p[0])
        {
          do
          {
            v102 = v34;
            v35 = v34[3];
            v36 = *v35;
            os_unfair_lock_lock(*v35 + 178);
            if (*(&v110 + 1))
            {
              os_unfair_lock_lock(v36 + 166);
              v37 = v110;
              if (v110)
              {
                v38 = 0;
                v39 = v36 + 182;
                do
                {
                  v40 = *(v37 + 4);
                  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__erase_unique<unsigned int>(&v36[168]._os_unfair_lock_opaque, v40);
                  v41 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(&v36[182]._os_unfair_lock_opaque, v40);
                  if (v41)
                  {
                    v42 = v41;
                    v43 = v26;
                    for (k = *&v36[180]._os_unfair_lock_opaque; k; k = *k)
                    {
                      v45 = k[1];
                      if (v45)
                      {
                        v46 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(k[1], v40);
                        if (v46)
                        {
                          std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::erase(v45, v46);
                          v38 = 1;
                        }

                        if (k == v42[3])
                        {
                          break;
                        }
                      }
                    }

                    v47 = *&v36[184]._os_unfair_lock_opaque;
                    v48 = v42[1];
                    v49 = vcnt_s8(v47);
                    v49.i16[0] = vaddlv_u8(v49);
                    if (v49.u32[0] > 1uLL)
                    {
                      if (v48 >= *&v47)
                      {
                        v48 %= *&v47;
                      }
                    }

                    else
                    {
                      v48 &= *&v47 - 1;
                    }

                    v50 = *(*&v39->_os_unfair_lock_opaque + 8 * v48);
                    do
                    {
                      v51 = v50;
                      v50 = *v50;
                    }

                    while (v50 != v42);
                    v26 = v43;
                    if (v51 == &v36[186])
                    {
                      goto LABEL_93;
                    }

                    v52 = *&v51[2]._os_unfair_lock_opaque;
                    if (v49.u32[0] > 1uLL)
                    {
                      if (v52 >= *&v47)
                      {
                        v52 %= *&v47;
                      }
                    }

                    else
                    {
                      v52 &= *&v47 - 1;
                    }

                    if (v52 != v48)
                    {
LABEL_93:
                      if (!*v42)
                      {
                        goto LABEL_94;
                      }

                      v53 = *(*v42 + 8);
                      if (v49.u32[0] > 1uLL)
                      {
                        if (v53 >= *&v47)
                        {
                          v53 %= *&v47;
                        }
                      }

                      else
                      {
                        v53 &= *&v47 - 1;
                      }

                      if (v53 != v48)
                      {
LABEL_94:
                        *(*&v39->_os_unfair_lock_opaque + 8 * v48) = 0;
                      }
                    }

                    v54 = *v42;
                    if (*v42)
                    {
                      v55 = *(v54 + 8);
                      if (v49.u32[0] > 1uLL)
                      {
                        if (v55 >= *&v47)
                        {
                          v55 %= *&v47;
                        }
                      }

                      else
                      {
                        v55 &= *&v47 - 1;
                      }

                      if (v55 != v48)
                      {
                        *(*&v39->_os_unfair_lock_opaque + 8 * v55) = v51;
                        v54 = *v42;
                      }
                    }

                    *&v51->_os_unfair_lock_opaque = v54;
                    *v42 = 0;
                    --*&v36[188]._os_unfair_lock_opaque;
                    operator delete(v42);
                  }

                  v37 = *v37;
                }

                while (v37);
                os_unfair_lock_unlock(v36 + 166);
                if (v38)
                {
                  CA::Render::Context::drain_deferred(v36, a2);
                }
              }

              else
              {
                os_unfair_lock_unlock(v36 + 166);
              }
            }

            os_unfair_lock_unlock(v36 + 178);
            v56 = v35[1];
            v57 = *&v56->_os_unfair_lock_opaque;
            if (*&v56->_os_unfair_lock_opaque == *&v56[2]._os_unfair_lock_opaque)
            {
              v59 = *&v56->_os_unfair_lock_opaque;
            }

            else
            {
              do
              {
                for (m = v110; m; m = *m)
                {
                  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__erase_unique<unsigned int>(v57, *(m + 4));
                }

                if (v57[3])
                {
                  v57 += 5;
                  v59 = *&v56[2]._os_unfair_lock_opaque;
                }

                else
                {
                  v60 = *&v56[2]._os_unfair_lock_opaque;
                  if (v57 + 5 == v60)
                  {
                    v59 = v57;
                  }

                  else
                  {
                    v61 = v57;
                    do
                    {
                      std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::clear(v61);
                      v62 = v61[5];
                      v61[5] = 0;
                      v63 = *v61;
                      *v61 = v62;
                      if (v63)
                      {
                        operator delete(v63);
                      }

                      v64 = v61[7];
                      v61[2] = v64;
                      v65 = v61[6];
                      v61[1] = v65;
                      v61[6] = 0;
                      v66 = v61[8];
                      v61[3] = v66;
                      *(v61 + 8) = *(v61 + 18);
                      if (v66)
                      {
                        v67 = *(v64 + 8);
                        if ((v65 & (v65 - 1)) != 0)
                        {
                          if (v67 >= v65)
                          {
                            v67 %= v65;
                          }
                        }

                        else
                        {
                          v67 &= v65 - 1;
                        }

                        *(*v61 + 8 * v67) = v61 + 2;
                        v61[7] = 0;
                        v61[8] = 0;
                      }

                      v59 = v61 + 5;
                      v68 = v61 + 10;
                      v61 += 5;
                    }

                    while (v68 != v60);
                    v60 = *&v56[2]._os_unfair_lock_opaque;
                  }

                  while (v60 != v59)
                  {
                    v60 -= 40;
                    std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v60);
                  }

                  *&v56[2]._os_unfair_lock_opaque = v59;
                }
              }

              while (v57 != v59);
            }

            v69 = v110;
            if (v110)
            {
              do
              {
                std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__erase_unique<unsigned int>(v35[2], *(v69 + 4));
                v69 = *v69;
              }

              while (v69);
              v59 = *&v56[2]._os_unfair_lock_opaque;
            }

            if (*&v56->_os_unfair_lock_opaque == v59 && !*&v35[2][6]._os_unfair_lock_opaque)
            {
              v113[0] = v56;
              std::vector<std::unordered_set<unsigned long long>>::__destroy_vector::operator()[abi:nn200100](v113);
              MEMORY[0x1865EA9A0](v56, 0x20C40960023A9);
              v70 = v35[2];
              if (v70)
              {
                v71 = std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v70);
                MEMORY[0x1865EA9A0](v71, 0x10A0C408EF24B1CLL);
              }

              v72 = *v35;
              if (*v35 && atomic_fetch_add(&v72[2], 0xFFFFFFFF) == 1)
              {
                (*(*&v72->_os_unfair_lock_opaque + 16))(v72);
              }

              if (x_malloc_get_zone::once != -1)
              {
                dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
              }

              malloc_zone_free(malloc_zone, v35);
              v73 = v26[228];
              v74 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v73, *(v102 + 4));
              if (v74)
              {
                std::__hash_table<std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::__unordered_map_hasher<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::hash<CA::Render::Object *>,std::equal_to<CA::Render::Object *>,true>,std::__unordered_map_equal<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::equal_to<CA::Render::Object *>,std::hash<CA::Render::Object *>,true>,std::allocator<std::__hash_value_type<CA::Render::Object *,x_link_struct>>>::erase(v73, v74);
              }
            }

            v34 = *v102;
          }

          while (*v102);
        }

        pthread_mutex_lock(&CA::Render::Fence::_bwait_mutex);
        CA::Render::Fence::_bwait_writer_active = 0;
        pthread_cond_broadcast(&CA::Render::Fence::_bwait_cond_reader);
        pthread_mutex_unlock(&CA::Render::Fence::_bwait_mutex);
      }

      v75 = v110;
      if (v110)
      {
        v76 = MEMORY[0x1E69E9A60];
        while (1)
        {
          v77 = *(v75 + 4);
          v78 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(CA::Render::Fence::batches_by_port, v77);
          if (!v78)
          {
            break;
          }

          v79 = v78[3];
          if (*(v79 + 44) == 1)
          {
            for (n = *(*(v79 + 24) + 16); n; n = *n)
            {
              std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(*(v79 + 32), *(n + 4));
              kdebug_trace();
            }
          }

          v81 = *(v79 + 24);
          if (v81)
          {
            v82 = std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v81);
            MEMORY[0x1865EA9A0](v82, 0x10A0C408EF24B1CLL);
          }

          v83 = *(v79 + 32);
          if (v83)
          {
            v84 = std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v83);
            MEMORY[0x1865EA9A0](v84, 0x10A0C408EF24B1CLL);
          }

          v85 = CA::Render::Fence::batches_by_port;
          v86 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(CA::Render::Fence::batches_by_port, v77);
          if (v86)
          {
            v87 = v85[1];
            v88 = v86[1];
            v89 = vcnt_s8(v87);
            v89.i16[0] = vaddlv_u8(v89);
            if (v89.u32[0] > 1uLL)
            {
              if (v88 >= *&v87)
              {
                v88 %= *&v87;
              }
            }

            else
            {
              v88 &= *&v87 - 1;
            }

            v90 = *(*v85 + 8 * v88);
            do
            {
              v91 = v90;
              v90 = *v90;
            }

            while (v90 != v86);
            if (v91 == v85 + 2)
            {
              goto LABEL_175;
            }

            v92 = v91[1];
            if (v89.u32[0] > 1uLL)
            {
              if (v92 >= *&v87)
              {
                v92 %= *&v87;
              }
            }

            else
            {
              v92 &= *&v87 - 1;
            }

            if (v92 != v88)
            {
LABEL_175:
              if (!*v86)
              {
                goto LABEL_176;
              }

              v93 = *(*v86 + 8);
              if (v89.u32[0] > 1uLL)
              {
                if (v93 >= *&v87)
                {
                  v93 %= *&v87;
                }
              }

              else
              {
                v93 &= *&v87 - 1;
              }

              if (v93 != v88)
              {
LABEL_176:
                *(*v85 + 8 * v88) = 0;
              }
            }

            v94 = *v86;
            if (*v86)
            {
              v95 = *(v94 + 8);
              if (v89.u32[0] > 1uLL)
              {
                if (v95 >= *&v87)
                {
                  v95 %= *&v87;
                }
              }

              else
              {
                v95 &= *&v87 - 1;
              }

              if (v95 != v88)
              {
                *(*v85 + 8 * v95) = v91;
                v94 = *v86;
              }
            }

            *v91 = v94;
            *v86 = 0;
            --v85[3];
            operator delete(v86);
          }

          std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__erase_unique<unsigned int>(CA::Render::Fence::cleared_b_ports, v77);
          if (*(v79 + 44) == 1)
          {
            kdebug_trace();
          }

          mach_port_destruct(*v76, v77, 0, *v79);
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          malloc_zone_free(malloc_zone, v79);
          v75 = *v75;
          if (!v75)
          {
            goto LABEL_190;
          }
        }

LABEL_196:
        abort();
      }
    }

LABEL_190:
    v96 = __p[0];
    if (__p[0])
    {
      do
      {
        v97 = *v96;
        operator delete(v96);
        v96 = v97;
      }

      while (v97);
    }

    v98 = v104[0];
    v104[0] = 0;
    if (v98)
    {
      operator delete(v98);
    }

    v24 = v101;
  }

  v99 = v24 != 0;
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v107);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v109);
  return v99;
}

uint64_t CA::Render::Fence::is_batch_resolved(unsigned int a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a2, a1);
  if (!std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(CA::Render::Fence::cleared_b_ports, a1))
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a4, a1);
    return 0;
  }

  v8 = *(CA::Render::Fence::bcontexts_by_id + 16);
  if (!v8)
  {
    return 1;
  }

  while (1)
  {
    v9 = *(v8[3] + 8);
    v10 = v9[1];
    if (v10 != *v9)
    {
      break;
    }

LABEL_16:
    v8 = *v8;
    result = 1;
    if (!v8)
    {
      return result;
    }
  }

  v11 = 0;
  while (1)
  {
    v17 = 0;
    v10 -= 40;
    v15 = 0u;
    v16 = 0u;
    std::unordered_set<unsigned int>::unordered_set(&v15, v10);
    if ((v11 & 1) == 0 && !std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(&v15, a1))
    {
      v11 = 0;
      goto LABEL_15;
    }

    v12 = v16;
    if (v16)
    {
      break;
    }

LABEL_13:
    v11 = 1;
LABEL_15:
    std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v15);
    if (v10 == *v9)
    {
      goto LABEL_16;
    }
  }

  while (1)
  {
    v13 = *(v12 + 4);
    if (!std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(a2, *(v12 + 4)) && !std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(a3, v13) && (std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(a4, v13) || !CA::Render::Fence::is_batch_resolved(v13, a2, a3, a4)))
    {
      break;
    }

    v12 = *v12;
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a4, a1);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v15);
  return 0;
}

uint64_t std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::remove(uint64_t result, void *a2, void *a3)
{
  v3 = a2[1];
  v4 = a3[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*a2 + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a3);
  if (v7 == a2 + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a3)
    {
      goto LABEL_19;
    }

    v9 = *(*a3 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*a2 + 8 * v4) = 0;
    }
  }

  v10 = *a3;
  if (*a3)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*a2 + 8 * v11) = v7;
      v10 = *a3;
    }
  }

  *v7 = v10;
  *a3 = 0;
  --a2[3];
  *result = a3;
  *(result + 8) = a2;
  *(result + 16) = 1;
  *(result + 17) = 0;
  *(result + 20) = 0;
  return result;
}

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__erase_unique<unsigned int>(void *a1, unsigned int a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(a1, a2);
  if (result)
  {

    return std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::erase(a1, result);
  }

  return result;
}

uint64_t std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::erase(void *a1, uint64_t *a2)
{
  __p[3] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::remove(__p, a1, a2);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v2;
}

CA::Render::Context *CA::Render::Context::set_frame_stall_skip_request(CA::Render::Context *this, _BOOL4 a2)
{
  result = CA::Render::Context::retain_host_context(this);
  if (result)
  {
    v5 = result;
    result = CA::Render::Context::set_frame_stall_skip_request(result, a2);
    if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      v6 = *(*v5 + 16);

      return v6(v5);
    }
  }

  else
  {
    if (a2)
    {
      v7 = 128;
    }

    else
    {
      v7 = 0;
    }

    *(this + 292) = *(this + 292) & 0xFF7F | v7;
  }

  return result;
}

uint64_t CA::Render::Context::retain_host_context(CA::Render::Context *this)
{
  os_unfair_lock_lock(&CA::Render::LayerHost::_lock);
  v2 = *(this + 56);
  if (v2)
  {
    v3 = *(v2 + 96);
    if (v3)
    {
      v4 = (v3 + 8);
      if (!atomic_fetch_add((v3 + 8), 1u))
      {
        v3 = 0;
        atomic_fetch_add(v4, 0xFFFFFFFF);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&CA::Render::LayerHost::_lock);
  return v3;
}

CA::Render::Context *CA::Render::Context::add_input_time(CA::Render::Context *this, double a2)
{
  result = CA::Render::Context::retain_host_context(this);
  if (result)
  {
    v5 = result;
    result = CA::Render::Context::add_input_time(result, a2);
    if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      v6 = *(*v5 + 16);

      return v6(v5);
    }
  }

  else
  {
    v7 = *(this + 61);
    if (v7 > a2)
    {
      v7 = a2;
    }

    *(this + 61) = v7;
  }

  return result;
}

uint64_t CA::Render::Decoder::decode_port(CA::Render::Decoder *this, int a2, BOOL *a3)
{
  if (*(this + 18))
  {
    return 0;
  }

  v3 = *(this + 6);
  if (v3 && *(v3 + 8) == 2)
  {
    v4 = *(this + 7) - 1;
    *(this + 6) = *v3;
    *(this + 7) = v4;
    if (*(v3 + 20) == a2)
    {
      *a3 = *(v3 + 24);
      return *(v3 + 16);
    }

    CA::Render::Decoder::set_fatal_error(this, "%s - expected disposition = %u, received = %u", a3);
  }

  else
  {
    CA::Render::Decoder::set_fatal_error(this, "%s - _attach_list = %p, type = %u", a3);
  }

  return 0;
}

BOOL CA::Render::is_iosurface_aligned(IOSurfaceRef buffer, __IOSurface *a2)
{
  {
  }

  v3 = qword_1ED4E4910;
  v4 = qword_1ED4E4918;
  PlaneCount = IOSurfaceGetPlaneCount(buffer);
  if (PlaneCount)
  {
    v6 = PlaneCount;
    v7 = 0;
    while (1)
    {
      BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(buffer, v7);
      BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(buffer, v7);
      if (BaseAddressOfPlane % v3 || BytesPerRowOfPlane % v4)
      {
        break;
      }

      if (v6 == ++v7)
      {
        return 1;
      }
    }

    return 0;
  }

  BaseAddress = IOSurfaceGetBaseAddress(buffer);
  BytesPerRow = IOSurfaceGetBytesPerRow(buffer);
  return !(BaseAddress % v3) && !(BytesPerRow % v4);
}

uint64_t CA::Render::fourcc_is_rgb(CA::Render *this)
{
  v1 = this;
  result = 1;
  if (v1 > 1111970368)
  {
    if (v1 <= 1380410944)
    {
      if (v1 <= 1279340599)
      {
        if (v1 == 1111970369 || v1 == 1278226488)
        {
          return result;
        }

        v3 = 1278555445;
LABEL_45:
        if (v1 != v3)
        {
          return 0;
        }

        return result;
      }

      if (v1 <= 1378955370)
      {
        if (v1 == 1279340600)
        {
          return result;
        }

        v3 = 1279342648;
        goto LABEL_45;
      }

      if (v1 == 1378955371)
      {
        return result;
      }

      v4 = 16961;
    }

    else
    {
      if (v1 > 1815491697)
      {
        if (v1 > 1999908960)
        {
          if (v1 == 1999908961)
          {
            return result;
          }

          v3 = 2084718401;
        }

        else
        {
          if (v1 == 1815491698)
          {
            return result;
          }

          v3 = 1999843442;
        }

        goto LABEL_45;
      }

      if (v1 > 1647534391)
      {
        if (v1 == 1647534392)
        {
          return result;
        }

        v3 = 1815162994;
        goto LABEL_45;
      }

      if (v1 == 1380410945)
      {
        return result;
      }

      v4 = 26689;
    }

    v3 = v4 | 0x52470000;
    goto LABEL_45;
  }

  if (v1 > 645346400)
  {
    if (v1 > 843264309)
    {
      if (v1 > 1093677111)
      {
        if (v1 == 1093677112)
        {
          return result;
        }

        v3 = 1094862674;
      }

      else
      {
        if (v1 == 843264310)
        {
          return result;
        }

        v3 = 892679473;
      }
    }

    else if (v1 > 792872768)
    {
      if (v1 == 792872769)
      {
        return result;
      }

      v3 = 843264104;
    }

    else
    {
      if (v1 == 645346401)
      {
        return result;
      }

      v3 = 759318337;
    }

    goto LABEL_45;
  }

  if (v1 > 642934848)
  {
    if (v1 > 644624753)
    {
      if (v1 == 644624754)
      {
        return result;
      }

      v3 = 645346162;
    }

    else
    {
      if (v1 == 642934849)
      {
        return result;
      }

      v3 = 643969848;
    }

    goto LABEL_45;
  }

  if (v1 != 16 && v1 != 32)
  {
    v3 = 641877825;
    goto LABEL_45;
  }

  return result;
}

void *CA::Render::SpringAnimation::encode(const CA::Render::Object **this, CA::Render::Encoder *a2)
{
  CA::Render::BasicAnimation0::encode(this, a2);
  v4 = this[19];
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
  v9 = this[20];
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
  v13 = this[21];
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
  v17 = this[22];
  if (v14 + 16 > v15)
  {
    CA::Render::Encoder::grow(a2, 8);
    v16 = *(a2 + 4);
  }

  *v16 = v17;
  *(a2 + 4) += 8;

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void x_hash_table_free(void *a1)
{
  v2 = 0;
  v3 = 1 << *a1;
  do
  {
    v4 = *(a1[2] + 8 * v2);
    if (!v4)
    {
      if (a1[9])
      {
        goto LABEL_16;
      }

LABEL_14:
      v10 = *(a1[2] + 8 * v2);
      if (v10)
      {
        do
        {
          v11 = *v10;
          free(v10);
          v10 = v11;
        }

        while (v11);
      }

      goto LABEL_16;
    }

    do
    {
      v5 = v4;
      v4 = *v4;
      v6 = v5[3];
      v7 = a1[6];
      if (v7)
      {
        v7(v5[2]);
      }

      v8 = a1[7];
      if (v8)
      {
        v8(v6);
      }

      v9 = a1[9];
      if (v9 && (a1[10] & 1) == 0)
      {
        *v5 = *(v9 + 8);
        *(v9 + 8) = v5;
      }
    }

    while (v4);
    if (!v9)
    {
      goto LABEL_14;
    }

LABEL_16:
    ++v2;
  }

  while (v2 != v3);
  if (!a1[8])
  {
    if (a1[10])
    {
      v12 = a1[9];
      if (v12)
      {
        if (!v12[4])
        {
          v13 = *v12;
          if (*v12)
          {
            do
            {
              v14 = *v13;
              if (x_malloc_get_zone::once != -1)
              {
                dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
              }

              malloc_zone_free(malloc_zone, v13);
              v13 = v14;
            }

            while (v14);
          }

          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          malloc_zone_free(malloc_zone, v12);
        }
      }
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, a1[2]);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v15 = malloc_zone;

    malloc_zone_free(v15, a1);
  }
}

void CA::DispatchGroup::enqueue(CA::DispatchGroup *this, void (*a2)(void *), void *a3)
{
  if (CA::DispatchGroup::enqueue(void (*)(void *),void *)::once[0] != -1)
  {
    dispatch_once_f(CA::DispatchGroup::enqueue(void (*)(void *),void *)::once, 0, CA::DispatchGroup::init);
  }

  v4 = CA::DispatchGroup::_queue;

  dispatch_async_f(v4, 0, async_collect_callback);
}

double CA::Render::Context::delay_of_batch(os_unfair_lock_s *this, unsigned int a2)
{
  os_unfair_lock_lock(this + 178);
  v4 = *&this[180]._os_unfair_lock_opaque;
  i = 0.0;
  if (v4)
  {
    v6 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(&this[182]._os_unfair_lock_opaque, a2);
    if (v6)
    {
      v7 = v6[3];
      for (i = *(v7 + 16); v4 != v7; v4 = *v4)
      {
        if ((v4[2] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && v4[2] > i)
        {
          i = v4[2];
        }
      }
    }
  }

  os_unfair_lock_unlock(this + 178);
  return i;
}

uint64_t CA::Render::Context::context_by_hosting_token(CA::Render::Context *this, const CA::Render::HostingToken *a2)
{
  if (!this || !*(this + 3) || *(this + 17) == 1 && (*(this + 2) + 1) < 2)
  {
    return 0;
  }

  os_unfair_lock_lock(&CA::Render::Context::_context_lock);
  if (CA::Render::Context::_port_table && (v3 = x_hash_table_lookup(CA::Render::Context::_port_table, *(this + 2), 0)) != 0)
  {
    v4 = v3;
    v5 = *(v3 + 16);
    v6 = *(this + 3);
    os_unfair_lock_unlock(&CA::Render::Context::_context_lock);
    if (v5 != v6)
    {
      return 0;
    }
  }

  else
  {
    if ((*(this + 17) & 1) != 0 || !CA::Render::Context::_context_table)
    {
      os_unfair_lock_unlock(&CA::Render::Context::_context_lock);
      return 0;
    }

    v4 = x_hash_table_lookup(CA::Render::Context::_context_table, *(this + 3), 0);
    os_unfair_lock_unlock(&CA::Render::Context::_context_lock);
    if (!v4)
    {
      return v4;
    }
  }

  if ((*(v4 + 13) & 4) != 0)
  {
    return 0;
  }

  v7 = (v4 + 8);
  if (!atomic_fetch_add((v4 + 8), 1u))
  {
    v4 = 0;
    atomic_fetch_add(v7, 0xFFFFFFFF);
  }

  return v4;
}

void CA::Display::DisplayLink::_timer_status_callback(_CADisplayTimer *,CADisplayTimerAction,unsigned long long,unsigned long long,void *)::$_2::operator()(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    if (v2 == 1)
    {
      CFRelease(*(a1 + 32));
    }

    else
    {
      v3 = 0;
      do
      {
        CFRelease(*(*(a1 + 32) + 8 * v3++));
      }

      while (v3 < *(a1 + 24));
      free(*(a1 + 32));
    }
  }

  *(a1 + 24) = 0;
}

void *CA::Display::DisplayLink::_timer_status_callback(_CADisplayTimer *,CADisplayTimerAction,unsigned long long,unsigned long long,void *)::$_3::operator()(void *result, CFTypeRef *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    v4 = 0;
    v5 = a2;
    do
    {
      v6 = v4++;
      v5 = v5[1];
    }

    while (v5);
    if (v4)
    {
      result[3] = v4;
      if (v6)
      {
        v7 = 0;
        result[4] = malloc_type_malloc(8 * v4, 0x6004044C4A2DFuLL);
        do
        {
          result = CFRetain(*v2);
          *(v3[4] + 8 * v7) = result;
          v2 = v2[1];
          ++v7;
        }

        while (v4 != v7);
      }

      else
      {
        result = CFRetain(*a2);
        v3[4] = result;
      }
    }
  }

  return result;
}

void *X::Allocator0::operator new(size_t size)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  return malloc_type_zone_calloc(v2, 1uLL, size, 0xDEEC3011uLL);
}

void CA::Render::Decoder::decode_bytes(CA::Render::Decoder *this, void *__dst, size_t __n)
{
  v6 = *(this + 4);
  v7 = __CFADD__(v6, __n);
  if (v6 + __n > *(this + 5) || v7)
  {
    bzero(__dst, __n);
    CA::Render::Decoder::set_fatal_error(this, "%s - _buffer_point = %p, len = %zu, _buffer_end = %p", "decode_bytes", *(this + 4), __n, *(this + 5));
  }

  else
  {
    memcpy(__dst, v6, __n);
    *(this + 4) += __n;
  }
}

CA::Render::Object *CA::Render::Object::Object(CA::Render::Object *this, CA::Render::Decoder *a2)
{
  *this = &unk_1EF1F6D08;
  *(this + 2) = 1;
  *(this + 3) = *(this + 12) | (CA::Render::Decoder::decode_int32(a2) << 8);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-object.cpp", 226);
  return this;
}

atomic_uint *CA::Render::Decoder::decode_object(CA::Render::Decoder *a1, uint64_t a2, uint64_t a3)
{
  v6 = CA::Render::Decoder::decode_object(a1, 0);
  v7 = v6;
  if (v6)
  {
    v8 = 0;
    v9 = *(v6 + 12);
    while (v9 != *(a3 + 4 * v8))
    {
      if (a2 == ++v8)
      {
        goto LABEL_7;
      }
    }

    if (v8 != a2)
    {
      return v7;
    }

LABEL_7:
    CA::Render::Decoder::set_fatal_error(a1, "%s - decoded object of unexpected type: %d", "decode_object", v9);
    if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v7 + 16))(v7);
    }

    return 0;
  }

  return v7;
}

CA::Render::Layer *CA::Render::Layer::Layer(CA::Render::Layer *this, CA::Render::Decoder *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 30;
  ++dword_1ED4EAAB0;
  *v4 = &unk_1EF1F53C8;
  CA::Render::Decoder::decode_bytes(a2, v4 + 16, 0x58uLL);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-layer.cpp", 6431);
  *(this + 13) = CA::Render::Decoder::decode_object(a2, 11, CA::Render::contents_types);
  __dst[0] = 30;
  *(this + 14) = CA::Render::Decoder::decode_array_object(a2, 1, __dst, 1);
  *(this + 15) = CA::Render::Decoder::decode_size_t(a2);
  *(this + 16) = CA::Render::Decoder::decode_object(a2, 54);
  if (CA::Render::Decoder::decode_int8(a2))
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v5 = malloc_type_zone_malloc(malloc_zone, 0x168uLL, 0x165299FDuLL);
    if (v5)
    {
      *v5 = CA::Render::Decoder::decode_object(a2, 18, &CA::Render::subclass_types);
      *(v5 + 1) = CA::Render::Decoder::decode_object(a2, 58);
      *(v5 + 2) = CA::Render::Decoder::decode_object(a2, 62);
      *(v5 + 3) = CA::Render::Decoder::decode_object(a2, 62);
      *(v5 + 4) = CA::Render::Decoder::decode_object(a2, 62);
      *(v5 + 5) = CA::Render::Decoder::decode_object(a2, 62);
      *(v5 + 6) = CA::Render::Decoder::decode_object(a2, 62);
      *(v5 + 7) = CA::Render::Decoder::decode_object(a2, 11, CA::Render::contents_types);
      *(v5 + 8) = CA::Render::Decoder::decode_object(a2, 62);
      *(v5 + 9) = CA::Render::Decoder::decode_object(a2, 62);
      *(v5 + 10) = CA::Render::Decoder::decode_object(a2, 39);
      *(v5 + 11) = CA::Render::Decoder::decode_object(a2, 17);
      __dst[0] = 17;
      *(v5 + 12) = CA::Render::Decoder::decode_array_object(a2, 1, __dst, 0);
      __dst[0] = 17;
      *(v5 + 13) = CA::Render::Decoder::decode_array_object(a2, 1, __dst, 0);
      *(v5 + 14) = CA::Render::Decoder::decode_object(a2, 35);
      *(v5 + 15) = CA::Render::Decoder::decode_object(a2, 38);
      *(v5 + 16) = CA::Render::Decoder::decode_object(a2, 39);
      __dst[0] = 44;
      *(v5 + 17) = CA::Render::Decoder::decode_array_object(a2, 1, __dst, 0);
      *(v5 + 18) = 0;
      *__dst = 0uLL;
      CA::Render::Decoder::decode_bytes(a2, __dst, 0x10uLL);
      *(v5 + 152) = *__dst;
      *__dst = 0uLL;
      CA::Render::Decoder::decode_bytes(a2, __dst, 0x10uLL);
      *(v5 + 168) = *__dst;
      *(v5 + 23) = CA::Render::Decoder::decode_int64(a2);
      *(v5 + 24) = CA::Render::Decoder::decode_int64(a2);
      *(v5 + 26) = 0;
      *(v5 + 54) = 0;
      *(v5 + 25) = 0;
      CA::Render::Decoder::decode_bytes(a2, v5 + 200, 0x14uLL);
      *__dst = 0;
      CA::Render::Decoder::decode_bytes(a2, __dst, 8uLL);
      *(v5 + 220) = *__dst;
      *(v5 + 57) = CA::Render::Decoder::decode_int32(a2);
      *(v5 + 58) = CA::Render::Decoder::decode_int32(a2);
      *(v5 + 59) = CA::Render::Decoder::decode_int32(a2);
      v6 = CA::Render::Decoder::decode_int32(a2);
      *(v5 + 244) = 0;
      *(v5 + 60) = v6;
      *(v5 + 252) = 0;
      *(v5 + 65) = 0;
      CA::Render::Decoder::decode_bytes(a2, v5 + 244, 0x14uLL);
      *(v5 + 66) = CA::Render::Decoder::decode_int32(a2);
      *(v5 + 67) = CA::Render::Decoder::decode_int32(a2);
      *(v5 + 68) = CA::Render::Decoder::decode_int32(a2);
      *(v5 + 69) = CA::Render::Decoder::decode_int32(a2);
      *(v5 + 70) = CA::Render::Decoder::decode_int32(a2);
      *(v5 + 284) = 0;
      *(v5 + 292) = 0;
      *(v5 + 75) = 0;
      CA::Render::Decoder::decode_bytes(a2, v5 + 284, 0x14uLL);
      *(v5 + 76) = CA::Render::Decoder::decode_int32(a2);
      *(v5 + 77) = CA::Render::Decoder::decode_int32(a2);
      *(v5 + 78) = CA::Render::Decoder::decode_int32(a2);
      *(v5 + 79) = CA::Render::Decoder::decode_int32(a2);
      *(v5 + 80) = CA::Render::Decoder::decode_int32(a2);
      *(v5 + 324) = 0;
      *(v5 + 332) = 0;
      *(v5 + 85) = 0;
      CA::Render::Decoder::decode_bytes(a2, v5 + 324, 0x14uLL);
      *(v5 + 86) = CA::Render::Decoder::decode_int32(a2);
      v7 = CA::Render::Decoder::decode_int8(a2);
      if (v7 >= 2)
      {
        CA::Render::Decoder::set_fatal_error(a2, "%s - enum %u out of range of %u", "decode_int8_enum", v7, 2);
        LOBYTE(v7) = 0;
      }

      v5[348] = v5[348] & 0xFE | v7;
      *(v5 + 88) = 0;
      CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-layer.cpp", 6576);
      *(v5 + 88) = 1;
      v8 = *(v5 + 2);
      if (v8)
      {
        v9 = *(v8 + 16);
        if (v9 <= 0xF)
        {
          CA::Render::Decoder::set_fatal_error(a2, "%s - transform size %u", "Ext", v9);
          v10 = *(v5 + 2);
          if (v10)
          {
            if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v10 + 16))(v10);
            }

            *(v5 + 2) = 0;
          }
        }
      }

      v11 = *(v5 + 3);
      if (v11)
      {
        v12 = *(v11 + 16);
        if (v12 <= 0xF)
        {
          CA::Render::Decoder::set_fatal_error(a2, "%s - sublayerTransform size %u", "Ext", v12);
          v13 = *(v5 + 3);
          if (v13)
          {
            if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v13 + 16))(v13);
            }

            *(v5 + 3) = 0;
          }
        }
      }

      v14 = *(v5 + 4);
      if (v14)
      {
        v15 = *(v14 + 16);
        if (v15 <= 5)
        {
          CA::Render::Decoder::set_fatal_error(a2, "%s - contentsTransform size %u", "Ext", v15);
          v16 = *(v5 + 4);
          if (v16)
          {
            if (atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v16 + 16))(v16);
            }

            *(v5 + 4) = 0;
          }
        }
      }

      v17 = *(v5 + 5);
      if (v17)
      {
        v18 = *(v17 + 16);
        if (v18 <= 3)
        {
          CA::Render::Decoder::set_fatal_error(a2, "%s - contentsRect size %u", "Ext", v18);
          v19 = *(v5 + 5);
          if (v19)
          {
            if (atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v19 + 16))(v19);
            }

            *(v5 + 5) = 0;
          }
        }
      }

      v20 = *(v5 + 6);
      if (v20)
      {
        v21 = *(v20 + 16);
        if (v21 <= 3)
        {
          CA::Render::Decoder::set_fatal_error(a2, "%s - contentsCenter size %u", "Ext", v21);
          v22 = *(v5 + 6);
          if (v22)
          {
            if (atomic_fetch_add(v22 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v22 + 16))(v22);
            }

            *(v5 + 6) = 0;
          }
        }
      }

      v23 = *(v5 + 8);
      if (v23)
      {
        v24 = *(v23 + 16);
        if (v24 <= 3)
        {
          CA::Render::Decoder::set_fatal_error(a2, "%s - cornerContentsCenter size %u", "Ext", v24);
          v25 = *(v5 + 8);
          if (v25)
          {
            if (atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v25 + 16))(v25);
            }

            *(v5 + 8) = 0;
          }
        }
      }

      v26 = *(v5 + 14);
      if (v26 && !CA::Render::MeshTransform::validate(v26))
      {
        v27 = *(v5 + 14);
        if (v27)
        {
          if (atomic_fetch_add(v27 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v27 + 16))(v27);
          }

          *(v5 + 14) = 0;
        }

        CA::Render::Decoder::set_fatal_error(a2, "%s - meshTransform = %p", "Ext", 0);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = v5;
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-layer.cpp", 6656);
  if ((*(this + 13) & 2) == 0)
  {
    CA::Render::Decoder::set_fatal_error(a2, "%s - expected sublayer ids", "Layer");
    *(this + 3) |= 0x200u;
  }

  return this;
}

atomic_uint *CA::Render::Decoder::decode_array_object(CA::Render::Decoder *a1, uint64_t a2, int *a3, int a4)
{
  if (*(a1 + 18))
  {
    return 0;
  }

  v8 = CA::Render::Decoder::decode_int8(a1);
  if (v8)
  {
    if (v8 == 1)
    {
      result = CA::Render::Array::decode(a1, a2, a3, a4);
      if (result)
      {
        return result;
      }

      CA::Render::Decoder::set_fatal_error(a1, "%s - ptr = NULL");
    }

    else
    {
      CA::Render::Decoder::set_fatal_error(a1, "%s - type = %u");
    }
  }

  return 0;
}