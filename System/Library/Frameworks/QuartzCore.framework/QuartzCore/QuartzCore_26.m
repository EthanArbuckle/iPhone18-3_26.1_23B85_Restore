void CA::Render::Fence::remove_context(CA::Render::Fence *this, CA::Render::Context *a2)
{
  v2 = a2;
  v38 = *MEMORY[0x1E69E9840];
  if (CA::Render::Fence::fence_info_once != -1)
  {
    dispatch_once_f(&CA::Render::Fence::fence_info_once, 0, CA::Render::Fence::fence_info_init);
  }

  os_unfair_lock_lock(&CA::Render::Fence::_lock);
  v4 = *(this + 4);
  v5 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(CA::Render::Fence::fcontexts_by_id, v4);
  if (v5)
  {
    v6 = v5;
    memset(v36, 0, sizeof(v36));
    v37 = 1065353216;
    v7 = *(v5[3] + 8);
    v8 = *v7;
    v9 = *(v7 + 1);
    if (*v7 == v9)
    {
      goto LABEL_9;
    }

    do
    {
      for (i = v8[2]; i; i = *i)
      {
        v35 = i[2];
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(v36, v35);
      }

      v8 += 5;
    }

    while (v8 != v9);
    v11 = v6[3];
    v7 = v11[1];
    if (v7)
    {
LABEL_9:
      v35 = v7;
      std::vector<std::unordered_set<unsigned long long>>::__destroy_vector::operator()[abi:nn200100](&v35);
      MEMORY[0x1865EA9A0](v7, 0x20C40960023A9);
      v11 = v6[3];
    }

    v12 = *v11;
    if (*v11)
    {
      if (atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v12 + 16))(v12);
      }

      v11 = v6[3];
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v11);
    v13 = std::__hash_table<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::__unordered_map_hasher<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,CA::OGL::Context::RenderObjectSlice::Hash,std::equal_to<CA::OGL::Context::RenderObjectSlice>,true>,std::__unordered_map_equal<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::equal_to<CA::OGL::Context::RenderObjectSlice>,CA::OGL::Context::RenderObjectSlice::Hash,true>,std::allocator<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>>>::erase(CA::Render::Fence::fcontexts_by_id, v6);
    v14 = *CA::Render::Fence::transactions;
    v15 = *(CA::Render::Fence::transactions + 8);
    while (v14 != v15)
    {
      v16 = *v14;
      v17 = *(*v14 + 8);
      v13 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v17, v4);
      if (v13)
      {
        v13 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::erase(v17, v13);
        if ((v2 & 1) == 0)
        {
          CA::Render::Fence::send_rmfc_msg(*(v16 + 16), v4, v36);
        }
      }

      ++v14;
    }

    CA::Render::Fence::resolve_fences(v13);
    std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v36);
  }

  if (v2)
  {
    for (j = *(CA::Render::Fence::batches_by_port + 16); j; j = *j)
    {
      v19 = j[3];
      v20 = *(v19 + 32);
      v21 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v20, v4);
      if (v21)
      {
        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::erase(v20, v21);
        v19 = j[3];
      }

      v22 = *(v19 + 24);
      v23 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v22, v4);
      if (v23)
      {
        v24 = v23;
        if (*(v19 + 44) == 1)
        {
          kdebug_trace();
          v22 = *(j[3] + 24);
        }

        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::erase(v22, v24);
      }
    }

    v25 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(CA::Render::Fence::bcontexts_by_id, v4);
    if (v25)
    {
      v26 = v25;
      v27 = v25[3];
      v28 = v27[1];
      if (v28)
      {
        *&v36[0] = v27[1];
        std::vector<std::unordered_set<unsigned long long>>::__destroy_vector::operator()[abi:nn200100](v36);
        MEMORY[0x1865EA9A0](v28, 0x20C40960023A9);
        v27 = v26[3];
      }

      v29 = v27[2];
      if (v29)
      {
        v30 = std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v29);
        MEMORY[0x1865EA9A0](v30, 0x10A0C408EF24B1CLL);
        v27 = v26[3];
      }

      v31 = *v27;
      if (*v27)
      {
        if (atomic_fetch_add(v31 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v31 + 16))(v31);
        }

        v27 = v26[3];
      }

      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v27);
      std::__hash_table<std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::__unordered_map_hasher<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::hash<CA::Render::Object *>,std::equal_to<CA::Render::Object *>,true>,std::__unordered_map_equal<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::equal_to<CA::Render::Object *>,std::hash<CA::Render::Object *>,true>,std::allocator<std::__hash_value_type<CA::Render::Object *,x_link_struct>>>::erase(CA::Render::Fence::bcontexts_by_id, v26);
      v32 = mach_absolute_time();
      v33 = CATimeWithHostTime(v32);
      CA::Render::Fence::resolve_batches(v34, v33);
    }
  }

  os_unfair_lock_unlock(&CA::Render::Fence::_lock);
}

void CA::WindowServer::Server::context_deleted(CA::WindowServer::Server *this, os_unfair_lock_s *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((this + 72));
  v7 = *(this + 75);
  if (v7)
  {
    v8 = CA::Shape::ref(v7, v6);
  }

  else
  {
    v8 = 0;
  }

  pthread_mutex_unlock((this + 72));
  os_unfair_lock_lock(a2 + 38);
  v10 = a2 + 40;
  v9 = *&a2[40]._os_unfair_lock_opaque;
  if (v9)
  {
    do
    {
      if (v9[2] == this)
      {
        v11 = *v9;
        *&v10->_os_unfair_lock_opaque = v9[1];
        (*(v11 + 8))();
      }

      else
      {
        v10 = (v9 + 1);
      }

      v9 = *&v10->_os_unfair_lock_opaque;
    }

    while (*&v10->_os_unfair_lock_opaque);
  }

  os_unfair_lock_unlock(a2 + 38);
  os_unfair_lock_lock(a2 + 4);
  v13 = *&a2[32]._os_unfair_lock_opaque;
  if (!v13)
  {
    goto LABEL_21;
  }

  v14 = 0;
  v15 = *&a2[28]._os_unfair_lock_opaque;
  while (*v15 != this)
  {
    ++v14;
    v15 += 2;
    if (v13 == v14)
    {
      goto LABEL_21;
    }
  }

  if ((v14 & 0x80000000) != 0)
  {
LABEL_21:
    CA::WindowServer::Server::remove_observers(a2, this);
    os_unfair_lock_unlock(a2 + 4);
    if (v8)
    {
      CA::Shape::unref(v8);
    }

    *(this + 3) &= ~0x200u;
    CA::Render::Context::set_display_id(this, 0);
    if (*(this + 79))
    {
      *(this + 79) = 0;
      if (*(this + 65))
      {
        *(this + 3) |= 0x400000u;
      }
    }
  }

  else
  {
    v16 = v14 & 0x7FFFFFFF;
    v17 = v13 + ~v16;
    if (v17 >= 1)
    {
      memmove((*&a2[28]._os_unfair_lock_opaque + 16 * v16), (*&a2[28]._os_unfair_lock_opaque + 16 * v16 + 16), 16 * (v17 & 0x7FFFFFFF));
      v13 = *&a2[32]._os_unfair_lock_opaque;
    }

    *&a2[32]._os_unfair_lock_opaque = v13 - 1;
    if (v8)
    {
      v18 = &a2[44];
      if (!*&a2[44]._os_unfair_lock_opaque)
      {
        *v18 = 1;
      }

      CA::shape_union(v18, v8, v12);
      CA::WindowServer::Server::remove_observers(a2, this);
      os_unfair_lock_unlock(a2 + 4);
      CA::Shape::unref(v8);
    }

    else
    {
      CA::WindowServer::Server::remove_observers(a2, this);
      os_unfair_lock_unlock(a2 + 4);
    }

    *(this + 3) &= ~0x200u;
    CA::Render::Context::set_display_id(this, 0);
    if (*(this + 79))
    {
      *(this + 79) = 0;
      if (*(this + 65))
      {
        *(this + 3) |= 0x400000u;
      }
    }

    v19 = 0;
    v20 = vdupq_n_s64(4uLL);
    (*(*&a2->_os_unfair_lock_opaque + 176))(a2, &v19, 0.0);
  }
}

void CA::WindowServer::Server::remove_observers(CA::WindowServer::Server *this, CA::Render::Context *a2)
{
  CA::Render::remove_observer(2u, a2, CA::WindowServer::Server::context_deleted, this);
  CA::Render::remove_observer(0, a2, CA::WindowServer::Server::context_changed, this);

  CA::Render::remove_observer(8u, a2, CA::WindowServer::Server::context_ordered, this);
}

void CA::Render::remove_observer(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 <= 0x4A)
  {
    os_unfair_lock_lock(&CA::Render::notification_lock);
    if ((CA::Render::initialize_notifications(void)::initialized & 1) == 0)
    {
      v18 = CA::Render::notifications;
      v19 = 75;
      v20 = &dword_1ED4E99A0;
      do
      {
        *v18 = v18;
        v18[1] = v18;
        v18 += 2;
        *(v20 - 2) = 0uLL;
        *(v20 - 1) = 0uLL;
        *v20 = 1065353216;
        v20 += 10;
        --v19;
      }

      while (v19);
      CA::Render::initialize_notifications(void)::initialized = 1;
    }

    v8 = &CA::Render::notifications[2 * a1];
    for (i = v8[1]; i != v8; i = i[1])
    {
      if ((!a2 || i[6] == a2) && i[5] == a3 && i[7] == a4)
      {
        v11 = *i;
        v10 = i[1];
        *(v11 + 8) = v10;
        *v10 = v11;
        *i = i;
        i[1] = i;
        v12 = i[2];
        v13 = i[3];
        *(v12 + 8) = v13;
        *v13 = v12;
        i[2] = (i + 2);
        i[3] = (i + 2);
        v14 = i[6];
        if (v14)
        {
          v15 = 40 * a1;
          v16 = std::__hash_table<std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::__unordered_map_hasher<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::hash<CA::Render::Object *>,std::equal_to<CA::Render::Object *>,true>,std::__unordered_map_equal<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::equal_to<CA::Render::Object *>,std::hash<CA::Render::Object *>,true>,std::allocator<std::__hash_value_type<CA::Render::Object *,x_link_struct>>>::find<CA::Render::Object *>((&CA::Render::notifications_map_data + v15), v14);
          if (v16)
          {
            if (v16[4] == v16 + 3)
            {
              std::__hash_table<std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::__unordered_map_hasher<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::hash<CA::Render::Object *>,std::equal_to<CA::Render::Object *>,true>,std::__unordered_map_equal<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::equal_to<CA::Render::Object *>,std::hash<CA::Render::Object *>,true>,std::allocator<std::__hash_value_type<CA::Render::Object *,x_link_struct>>>::erase((&CA::Render::notifications_map_data + v15), v16);
            }
          }
        }

        os_unfair_lock_unlock(&CA::Render::notification_lock);
        dispatch_semaphore_wait(i[8], 0xFFFFFFFFFFFFFFFFLL);
        dispatch_semaphore_signal(i[8]);
        dispatch_release(i[8]);
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v17 = malloc_zone;

        malloc_zone_free(v17, i);
        return;
      }
    }

    os_unfair_lock_unlock(&CA::Render::notification_lock);
  }
}

void CA::Render::remove_every_observer(CA::Render *this, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&CA::Render::notification_lock);
  if ((CA::Render::initialize_notifications(void)::initialized & 1) == 0)
  {
    v14 = CA::Render::notifications;
    v15 = 75;
    v16 = &dword_1ED4E99A0;
    do
    {
      *v14 = v14;
      v14[1] = v14;
      v14 += 2;
      *(v16 - 2) = 0uLL;
      *(v16 - 1) = 0uLL;
      *v16 = 1065353216;
      v16 += 10;
      --v15;
    }

    while (v15);
    CA::Render::initialize_notifications(void)::initialized = 1;
  }

  v4 = 0;
  for (i = 0; i != 75; ++i)
  {
    v6 = &CA::Render::notifications[2 * i];
    v7 = v6[1];
    if (v7 != v6)
    {
      do
      {
        v8 = v7[1];
        if (v7[7] == this)
        {
          v9 = *v7;
          *(v9 + 8) = v8;
          *v8 = v9;
          *v7 = v7;
          v7[1] = v7;
          v10 = v7[2];
          v11 = v7[3];
          *(v10 + 8) = v11;
          *v11 = v10;
          v7[2] = (v7 + 2);
          v7[3] = (v7 + 2);
          v12 = v7[6];
          if (v12)
          {
            v3 = std::__hash_table<std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::__unordered_map_hasher<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::hash<CA::Render::Object *>,std::equal_to<CA::Render::Object *>,true>,std::__unordered_map_equal<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::equal_to<CA::Render::Object *>,std::hash<CA::Render::Object *>,true>,std::allocator<std::__hash_value_type<CA::Render::Object *,x_link_struct>>>::find<CA::Render::Object *>(&CA::Render::notifications_map_data + 5 * i, v12);
            if (v3)
            {
              if (v3[4] == v3 + 3)
              {
                std::__hash_table<std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::__unordered_map_hasher<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::hash<CA::Render::Object *>,std::equal_to<CA::Render::Object *>,true>,std::__unordered_map_equal<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::equal_to<CA::Render::Object *>,std::hash<CA::Render::Object *>,true>,std::allocator<std::__hash_value_type<CA::Render::Object *,x_link_struct>>>::erase(&CA::Render::notifications_map_data + 5 * i, v3);
              }
            }
          }

          v3 = MEMORY[0x1EEE9AC00](v3);
          v17[-2] = v7;
          v17[-1] = v4;
          v4 = &v17[-2];
        }

        v7 = v8;
      }

      while (v8 != v6);
    }
  }

  os_unfair_lock_unlock(&CA::Render::notification_lock);
  for (; v4; v4 = v4[1])
  {
    v13 = *v4;
    dispatch_semaphore_wait((*v4)[8], 0xFFFFFFFFFFFFFFFFLL);
    dispatch_semaphore_signal(v13[8]);
    dispatch_release(v13[8]);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v13);
  }
}

void CA::Render::Context::ResourceTable::remove_all(CA::Render::Context::ResourceTable *this, CA::Render::Object *a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = *(*this + 8 * i);
      v6 = v5;
      if (v5)
      {
        do
        {
          CA::Render::Context::ResourceTable::release_value(v6[2], a2);
          v6 = *v6;
        }

        while (v6);
        do
        {
          v7 = *v5;
          free(v5);
          v5 = v7;
        }

        while (v7);
        *(*this + 8 * i) = 0;
        v3 = *(this + 2);
      }
    }
  }

  *(this + 3) = 0;
}

void CA::Render::Context::~Context(CA::Render::Context *this, CA::Render::Object *a2)
{
  *this = &unk_1EF1F6AD0;
  CA::Render::Context::ResourceTable::remove_all((this + 136), a2);
  v3 = *(this + 76);
  if (v3)
  {
    CA::Shape::unref(v3);
  }

  v4 = *(this + 75);
  if (v4)
  {
    CA::Shape::unref(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    CFRelease(v5);
  }

  CGColorSpaceRelease(*(this + 60));
  v6 = *(this + 69);
  if (v6)
  {
    CFRelease(v6);
  }

  for (i = *(this + 41); i; i = *i)
  {
    v8 = i[2];
    if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v8 + 16))(v8);
    }
  }

  pthread_mutex_destroy((this + 72));
  v9 = *(this + 93);
  if (v9)
  {
    do
    {
      v10 = *v9;
      operator delete(v9);
      v9 = v10;
    }

    while (v10);
  }

  v11 = *(this + 91);
  *(this + 91) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(this + 672);
  v13 = *(this + 70);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(this + 65);
  if (v14)
  {
    *(this + 66) = v14;
    operator delete(v14);
  }

  v15 = *(this + 53);
  if (v15)
  {
    *(this + 54) = v15;
    operator delete(v15);
  }

  v16 = *(this + 49);
  if (v16)
  {
    *(this + 50) = v16;
    operator delete(v16);
  }

  v17 = *(this + 48);
  if (v17 && atomic_fetch_add(v17 + 4, 0xFFFFFFFF) == 1)
  {
    CA::Render::LayerNode::delete_node(v17, v12);
  }

  v18 = *(this + 45);
  if (v18)
  {
    *(this + 46) = v18;
    operator delete(v18);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(this + 312);
  v20 = *(this + 35);
  if (v20 && atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v20 + 16))(v20);
  }

  v21 = *(this + 30);
  if (v21 && atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v21 + 16))(v21);
  }

  v22 = *(this + 29);
  if (v22 && atomic_fetch_add(v22 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v22 + 16))(v22);
  }

  v23 = *(this + 21);
  if (v23)
  {
    *(this + 22) = v23;
    operator delete(v23);
  }

  CA::Render::Context::ResourceTable::remove_all((this + 136), v19);
  v24 = *(this + 17);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  malloc_zone_free(malloc_zone, v24);
  --dword_1ED4EAA60;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, v25);
  }
}

{
  CA::Render::Context::~Context(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

uint64_t CA::WindowServer::Server::notify_content_streams(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  result = mach_absolute_time();
  v8 = result;
  DWORD2(v9) = a2;
  v6 = *(a1 + 504);
  v5 = *(a1 + 512);
  while (v6 != v5)
  {
    result = CA::Render::ContentStream::get_or_create_stream_and_lock(*v6, 0, 0);
    if (result)
    {
      v7 = result;
      HIDWORD(v9) = *(result + 404);
      CA::Render::ContentStream::produce_surface(result, 0, &v8, 0);
      result = pthread_mutex_unlock(v7);
    }

    v6 += 52;
  }

  return result;
}

void CA::WindowServer::IOMFBDisplay::update_implicit_power_assertion(unsigned __int16 *a1, int a2)
{
  if (((a1[336] >> 10) & 5 | 2) == 2)
  {
    goto LABEL_2;
  }

  if (CADeviceNeedsDisplayStateControlDependencyWorkaround::once != -1)
  {
    dispatch_once(&CADeviceNeedsDisplayStateControlDependencyWorkaround::once, &__block_literal_global_484);
  }

  if (CADeviceNeedsDisplayStateControlDependencyWorkaround::b == 1)
  {
LABEL_2:
    v4 = *(*a1 + 2248);

    v4(a1, (a2 - 1) < 2, 0);
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::set_display_state_locked(CA::WindowServer::IOMFBDisplay *this)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(this + 96);
  v3 = atomic_load(v2 + 1);
  if (x_log_get_display_state(void)::once != -1)
  {
    dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
  }

  v4 = x_log_get_display_state(void)::log;
  if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 6);
    v6 = atomic_load(v2);
    v7 = v6 - 1;
    if (v7 > 0xAu)
    {
      v8 = "off";
    }

    else
    {
      v8 = off_1E6DED748[v7];
    }

    if ((v3 - 1) > 0xA)
    {
      v9 = "off";
    }

    else
    {
      v9 = off_1E6DED748[(v3 - 1)];
    }

    v17[0] = 67109634;
    v17[1] = v5;
    v18 = 2080;
    v19 = v8;
    v20 = 2080;
    v21 = v9;
    _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "IOMFBDisplay::set_display_state display_id=%u current_state=%s target_state=%s", v17, 0x1Cu);
  }

  result = 5;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (x_log_get_flipbook(void)::once != -1)
      {
        dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
      }

      v16 = x_log_get_flipbook(void)::log;
      if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17[0]) = 0;
        _os_log_impl(&dword_183AA6000, v16, OS_LOG_TYPE_DEFAULT, "powering on display and entering flipbook", v17, 2u);
      }

      (*(*this + 2248))(this, 1, 1);
      CA::WindowServer::FlipBook::transition_to_state(*(this + 42), 1u, 0);
      result = 0;
      v12 = 2;
    }

    else
    {
      if (v3 != 3)
      {
        return result;
      }

      CA::WindowServer::FlipBook::transition_to_state(*(this + 42), 2u, 0);
      CA::WindowServer::IOMFBDisplay::set_all_layers_to_null(this, 1);
      (*(*this + 2248))(this, 0, 0);
      result = 0;
      v12 = 3;
    }

    atomic_store(v12, v2);
  }

  else
  {
    if (v3)
    {
      v11 = atomic_load(v2);
      if (v11 == 1)
      {
        return 0;
      }

      *(this + 6800) = -1;
      return 255;
    }

    v13 = atomic_load(v2);
    if (v13 == 1)
    {
      return 255;
    }

    v14 = atomic_load(v2);
    if (v14 != 2)
    {
      v15 = atomic_load(v2);
      if (v15 != 3)
      {
        return 0;
      }
    }

    CA::WindowServer::FlipBook::transition_to_state(*(this + 42), 0, 0);
    CA::WindowServer::FlipBook::free_surfaces(*(this + 42));
    CA::WindowServer::IOMFBDisplay::set_all_layers_to_null(this, 1);
    (*(*this + 2248))(this, 0, 0);
    result = 0;
    atomic_store(0, v2);
  }

  return result;
}

void CA::WindowServer::FlipBook::transition_to_state(uint64_t a1, unsigned int a2, int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 12));
  v6 = *(a1 + 24);
  v7 = v6;
  if ((v6 & 4) != 0 && (v7 = v6 & 0xFFFFFFFB, *(a1 + 24) = v6 & 0xFB, a2 == 1) && (v6 & 3) == 0)
  {
    v8 = 2;
  }

  else if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = (v7 >> 4) & 2;
  }

  v9 = v7 & 3;
  if (v9 == v8)
  {
    goto LABEL_9;
  }

  if (x_log_get_flipbook(void)::once != -1)
  {
    dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
  }

  v10 = x_log_get_flipbook(void)::log;
  if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = CA::WindowServer::FlipBook::transition_to_state(CA::WindowServer::FlipBookState,BOOL)::state_to_name[*(a1 + 24) & 3];
    v12 = CA::WindowServer::FlipBook::transition_to_state(CA::WindowServer::FlipBookState,BOOL)::state_to_name[v8];
    v18 = 136315650;
    v19 = v11;
    v20 = 2080;
    v21 = v12;
    v22 = 1024;
    v23 = a3;
    _os_log_impl(&dword_183AA6000, v10, OS_LOG_TYPE_DEFAULT, "flipbook transition from %s to %s, has_live_frame %i", &v18, 0x1Cu);
  }

  if ((v8 & 0xFFFFFFFD) == 0)
  {
    (*(*a1 + 72))(a1, 0);
    (*(*a1 + 80))(a1, 0);
  }

  v13 = *(a1 + 24);
  if (v8 > (v13 & 3))
  {
    if ((v13 & 3) == 0)
    {
      v14 = 0x10000;
      if (!a3)
      {
        v14 = 0;
      }

      (*(*a1 + 16))(a1, v14 | (v8 << 8) | v9);
      v13 = *(a1 + 24);
    }

    if (v8 >= 2 && (v13 & 3) == 1)
    {
      v15 = 512;
      if (a3)
      {
        v15 = 66048;
      }

      (*(*a1 + 32))(a1, v15 | v9);
      goto LABEL_9;
    }

    goto LABEL_36;
  }

  if (v8 <= 1 && (v13 & 3) == 2)
  {
    v16 = 0x10000;
    if (!a3)
    {
      v16 = 0;
    }

    (*(*a1 + 40))(a1, v16 | (v8 << 8) | v9);
    v13 = *(a1 + 24);
  }

  if (v8 || (v13 & 3) != 1)
  {
LABEL_36:
    if (v8 == 1)
    {
      (*(*a1 + 72))(a1, (v13 >> 3) & 1);
      (*(*a1 + 80))(a1, (*(a1 + 24) >> 4) & 1);
    }

    goto LABEL_9;
  }

  v17 = 0x10000;
  if (!a3)
  {
    v17 = 0;
  }

  (*(*a1 + 24))(a1, v17 | v9);
LABEL_9:
  os_unfair_lock_unlock((a1 + 12));
}

void CA::WindowServer::IOMFBDisplay::enable_hotplug_info(CA::WindowServer::IOMFBDisplay *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = this + 28672;
  v2 = *(this + 29531);
  *(this + 29531) = 1;
  if ((v2 & 1) == 0)
  {
    if (x_log_get_display_perf(void)::once != -1)
    {
      dispatch_once(&x_log_get_display_perf(void)::once, &__block_literal_global_9);
    }

    v4 = *(this + 6);
    if (v4)
    {
      v5 = x_log_get_display_perf(void)::log;
      if (os_signpost_enabled(x_log_get_display_perf(void)::log))
      {
        v6 = v1[858];
        v7[0] = 67240448;
        v7[1] = v4;
        v8 = 1026;
        v9 = v6;
        _os_signpost_emit_with_name_impl(&dword_183AA6000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "HotPlug", "displayId=%{public, name=displayId}u state=%{public, BOOL, name=state}d", v7, 0xEu);
      }
    }
  }
}

const char *CA::WindowServer::display_state_to_string(int a1)
{
  if ((a1 - 1) > 0xA)
  {
    return "off";
  }

  else
  {
    return off_1E6DED748[(a1 - 1)];
  }
}

uint64_t _CACDisplayStateDidChange(mach_port_t a1, int a2, char a3, char a4, char a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E99E0];
  v9 = a2;
  v10 = a3;
  v11 = 0;
  v12 = 0;
  v13 = a4;
  v14 = 0;
  v15 = 0;
  v16 = a5;
  v17 = 0;
  v18 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 40412;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v5 = mach_msg(&msg, 17, 0x30u, 0, 0, 0, 0);
  if ((v5 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v5;
}

void CA::WindowServer::IOMFBServer::add_runloop_source(CA::WindowServer::IOMFBServer *this, CFRunLoopSourceRef source, int a3)
{
  if (a3)
  {
    v5 = 848;
  }

  else
  {
    v5 = 840;
  }

  if (a3)
  {
    v6 = 1088;
  }

  else
  {
    v6 = 1080;
  }

  if (a3)
  {
    v7 = 1032;
  }

  else
  {
    v7 = 984;
  }

  if (!*(this + v5))
  {
    if (a3)
    {
      v8 = CA::WindowServer::IOMFBServer::frame_info_thread_body;
    }

    else
    {
      v8 = CA::WindowServer::IOMFBServer::thread_body;
    }

    v9 = x_thread_create(v8, this, 1);
    *(this + v5) = v9;
    CA::Render::Server::set_thread_priority(v9, 0xFFFFFFFFLL);
  }

  while (1)
  {
    v10 = *(this + v6);
    if (v10)
    {
      break;
    }

    pthread_cond_wait((this + v7), (this + 856));
  }

  if (source)
  {
    v11 = *MEMORY[0x1E695E8E0];

    CFRunLoopAddSource(v10, source, v11);
  }
}

void _XDisplayStateDidChange(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 48)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    CADisplayStateDidChange(*(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 44));
    *(a2 + 32) = 0;
  }
}

void CADisplayStateDidChange(int a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (x_log_get_display_state(void)::once != -1)
  {
    dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
  }

  v8 = x_log_get_display_state(void)::log;
  if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 3)
    {
      v9 = @"unknown";
    }

    else
    {
      v9 = off_1E6DF6248[a2];
    }

    v10 = [(__CFString *)v9 cStringUsingEncoding:4];
    if (a4 > 5)
    {
      v11 = @"unknown";
    }

    else
    {
      v11 = off_1E6DF6218[a4];
    }

    v14[0] = 67109890;
    v14[1] = a1;
    v15 = 2080;
    v16 = v10;
    v17 = 1024;
    v18 = a3;
    v19 = 2080;
    v20 = [(__CFString *)v11 cStringUsingEncoding:4];
    _os_log_impl(&dword_183AA6000, v8, OS_LOG_TYPE_DEFAULT, "CADisplayStateDidChange display_id=%u, state=%s, seed=%u, result=%s", v14, 0x22u);
  }

  os_unfair_lock_lock(&_controls_lock);
  v12 = _controls;
  v13 = qword_1EA84E7A8;
  if (_controls != qword_1EA84E7A8)
  {
    do
    {
      if (*(*v12 + 10) == a1)
      {
        [*v12 displayStateDidChange:a2 seed:a3 result:a4];
      }

      ++v12;
    }

    while (v12 != v13);
  }

  os_unfair_lock_unlock(&_controls_lock);
}

void Transition::end(os_unfair_lock_s *a1, uint64_t a2, int a3, unint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a1 + 10);
  if (LOBYTE(a1[16]._os_unfair_lock_opaque) == a3)
  {
    v8 = *&a1[14]._os_unfair_lock_opaque;
    *&a1[14]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(a1 + 10);
    if (v8)
    {
      if (x_log_get_display_state(void)::once != -1)
      {
        dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
      }

      v9 = x_log_get_display_state(void)::log;
      if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *&a1[2]._os_unfair_lock_opaque;
        v11 = (*&a1[4]._os_unfair_lock_opaque)(a2);
        os_unfair_lock_opaque = a1->_os_unfair_lock_opaque;
        if (a4 > 5)
        {
          v13 = @"unknown";
        }

        else
        {
          v13 = off_1E6DF6218[a4];
        }

        v14 = 136316162;
        v15 = v10;
        v16 = 2080;
        v17 = v11;
        v18 = 1024;
        v19 = os_unfair_lock_opaque;
        v20 = 1024;
        v21 = a3;
        v22 = 2080;
        v23 = [(__CFString *)v13 cStringUsingEncoding:4];
        _os_log_impl(&dword_183AA6000, v9, OS_LOG_TYPE_DEFAULT, "CADisplayStateControl %s=%s display_id=%u seed=%u result=%s", &v14, 0x2Cu);
      }

      v8[2](v8, a2, a4);
      _Block_release(v8);
    }
  }

  else
  {

    os_unfair_lock_unlock(a1 + 10);
  }
}

const void *find_display(CFArrayRef *a1, uint64_t a2)
{
  Count = CFArrayGetCount(*a1);
  if (!Count)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*a1, v6);
    if ((*(a2 + 16))(a2, ValueAtIndex))
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

uint64_t CA::WindowServer::msr_transfer_complete(uint64_t this, void *a2, uint64_t a3, void *a4)
{
  v4 = this;
  if (a3)
  {
    v6 = a2;
    v7 = *(a3 + 16);
    if (v7)
    {
      v8 = *(a3 + 8);
      v9 = mach_continuous_time();
      (*(*v7 + 2288))(v7, v8, 0, v9);
    }

    v10 = *a3;
    if (*a3)
    {
      v11 = v10[1];
      if (!v6)
      {
        (*(*v11 + 24))(v10[1], *(*v10 + 3));
      }

      if (*v10)
      {

        free(*v10);
      }

      MEMORY[0x1865EA9A0](v10, 0x20C40A4A59CD2);
      add = atomic_fetch_add(v11 + 2, 0xFFFFFFFF);
      if (v11)
      {
        v13 = add == 1;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        (*(*v11 + 8))(v11);
      }
    }

    this = MEMORY[0x1865EA9A0](a3, 0x10A0C406B6A53AFLL);
  }

  if (v4)
  {

    return CA::IOSAManager::unref(v4);
  }

  return this;
}

uint64_t CA::IOSAManager::unref(uint64_t this)
{
  add = atomic_fetch_add((this + 24), 0xFFFFFFFF);
  if (this && add == 1)
  {
    v3 = this;
    if (*(this + 16))
    {
      CFRunLoopRemoveSource(*this, *(this + 8), *MEMORY[0x1E695E8D0]);
      CFRelease(*(v3 + 16));
      *(v3 + 16) = 0;
    }

    JUMPOUT(0x1865EA9A0);
  }

  return this;
}

uint64_t CA::Context::destroy(CA::Context *this)
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((this + 16));
  v2 = *(this + 12);
  if (v2)
  {
    CA::Layer::set_visible(*(v2 + 16), 0);
    CFRelease(*(this + 12));
    *(this + 12) = 0;
  }

  if (!*this && (*(this + 257) & 4) == 0)
  {
    os_unfair_lock_lock(&CA::Context::_lock);
    if (CA::all_contexts(void)::contexts_data_initialized)
    {
      if (*(&CA::all_contexts(void)::contexts_data + 1) != CA::all_contexts(void)::contexts_data)
      {
        v3 = 0;
        v4 = (*(&CA::all_contexts(void)::contexts_data + 1) - CA::all_contexts(void)::contexts_data) >> 3;
        if (v4 <= 1)
        {
          v4 = 1;
        }

        while (*(CA::all_contexts(void)::contexts_data + 8 * v3) != this)
        {
          if (v4 == ++v3)
          {
            goto LABEL_13;
          }
        }

        v5 = *(&CA::all_contexts(void)::contexts_data + 1) - 8;
        *(CA::all_contexts(void)::contexts_data + 8 * v3) = *(*(&CA::all_contexts(void)::contexts_data + 1) - 8);
        *(&CA::all_contexts(void)::contexts_data + 1) = v5;
      }
    }

    else
    {
      CA::all_contexts(void)::contexts_data = 0uLL;
      qword_1ED4E9310 = 0;
      CA::all_contexts(void)::contexts_data_initialized = 1;
    }

LABEL_13:
    *(this + 257) |= 4u;
    --CA::Context::_context_count;
    os_unfair_lock_unlock(&CA::Context::_lock);
  }

  if (*(this + 1))
  {
    v6 = *(this + 40);
    if (v6)
    {
      v16.msgh_size = 0;
      v16.msgh_bits = 19;
      v16.msgh_remote_port = v6;
      v16.msgh_local_port = 0;
      *&v16.msgh_voucher_port = 0x9D0B00000000;
      if (MEMORY[0x1EEE9AC50])
      {
        voucher_mach_msg_set(&v16);
      }

      v7 = mach_msg(&v16, 1, 0x18u, 0, 0, 0, 0);
      if (v7)
      {
        v8 = v7;
        if (v7 == 268435459)
        {
          *(this + 257) |= 2u;
        }

        CAVerifyServerReturn(v7);
        if (x_log_get_api::once[0] != -1)
        {
          dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
        }

        v9 = x_log_get_api::log;
        if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
        {
          v14 = *(this + 1);
          v15 = mach_error_string(v8);
          v16.msgh_bits = 67109634;
          v16.msgh_size = v14;
          LOWORD(v16.msgh_remote_port) = 1024;
          *(&v16.msgh_remote_port + 2) = v8;
          HIWORD(v16.msgh_local_port) = 2080;
          *&v16.msgh_voucher_port = v15;
          _os_log_error_impl(&dword_183AA6000, v9, OS_LOG_TYPE_ERROR, "Failed to unregister client (client=0x%x) [0x%x %s]", &v16, 0x18u);
        }
      }

      *(this + 1) = 0;
    }
  }

  v10 = *(this + 40);
  if (v10)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v10);
    *(this + 40) = 0;
  }

  *(this + 21) = 0;
  os_unfair_lock_lock(this + 44);
  v11 = *(this + 23);
  *(this + 23) = 0;
  os_unfair_lock_unlock(this + 44);
  if (v11)
  {
    CA::Render::Encoder::ObjectCache::unref(v11);
  }

  CA::MachPortUtil::ClientIPC::destroy((this + 192));
  os_unfair_lock_lock(&CA::Context::_lock);
  v12 = *(this + 13);
  *(this + 13) = 0;
  os_unfair_lock_unlock(&CA::Context::_lock);
  if (v12)
  {
    if ((*(v12 + 14) & 0x10) != 0 && (*(this + 257) & 0x100) != 0)
    {
      CA::Render::Context::zombify(v12);
    }

    else if (CA::Render::Server::_thread)
    {
      if (!atomic_fetch_add((v12 + 8), 1u))
      {
        atomic_fetch_add((v12 + 8), 0xFFFFFFFF);
      }

      CA::Render::Server::add_callback(0, CA::Render::Context::schedule_destroy(void)::$_0::__invoke, v12, 0.0);
    }

    else
    {
      CA::Render::Context::destroy(v12);
    }

    if (atomic_fetch_add((v12 + 8), 0xFFFFFFFF) == 1)
    {
      (*(*v12 + 16))(v12);
    }
  }

  *(this + 257) |= 1u;
  return pthread_mutex_unlock((this + 16));
}

uint64_t CA::WindowServer::AppleWirelessDisplay::detachable_layer_impl(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  *a7 = 2;
  if ((*(*a1 + 552))(a1, *a2))
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

BOOL CA::WindowServer::IOMFBDisplay::finish_update(CA::Render::Update *,unsigned int,unsigned long long)::$_2::operator()(uint64_t *a1)
{
  v2 = *a1;
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  if (*&dword_1ED4E9740 == 2 || *(v2 + 26392) >= *(*a1[1] + 80) || *(v2 + 29472) <= 0.0)
  {
    return 0;
  }

  if (*a1[2] == 1)
  {
    return (*(*a1[3] + 36) & 0xFFFDFFFF) == 0;
  }

  return 1;
}

uint64_t CA::IOMobileFramebuffer::get_wireless_surface_options(CA::IOMobileFramebuffer *this, double a2, CGSize a3, __IOSurface **a4)
{
  CAHostTimeWithTime(a2);
  WirelessSurfaceWithOptions = IOMobileFramebufferGetWirelessSurfaceWithOptions();
  if (!WirelessSurfaceWithOptions && !IOSurfaceGetBulkAttachments())
  {
    IOSurfaceSetBulkAttachments2();
  }

  return WirelessSurfaceWithOptions;
}

uint64_t CA::WindowServer::IOMFBDisplay::copy_surface(CA::WindowServer::IOMFBDisplay *this, CA::WindowServer::Surface *a2, CA::WindowServer::Surface *a3, uint64_t a4, uint64_t a5, CA::Rect *a6, CA::Rect *a7, CA::ScalerStatistics *a8, float a9)
{
  v9 = 0;
  if (!a2 || !a3)
  {
    return v9;
  }

  v18 = (*(*a3 + 200))(a3, a9);
  if (v18 != (*(*a2 + 200))(a2))
  {
    (*(*a3 + 200))(a3);
    (*(*a2 + 208))(a2);
  }

  if (*(a3 + 17) != *(a2 + 17))
  {
    (*(*a2 + 224))(a2, 0);
  }

  v19 = *(a2 + 236) & 0xFFFFFFEFFFFFFFFFLL | (((*(a3 + 236) >> 36) & 1) << 36);
  *(a2 + 236) = v19;
  *(a2 + 236) = v19 & 0xFFFFFFDFFFFFFFFFLL | (((*(a3 + 236) >> 37) & 1) << 37);
  CA::WindowServer::Surface::set_hdr_processor(a2, *(a3 + 11));
  *(a2 + 6) = *(a3 + 6);
  v20 = *(a3 + 7);
  v21 = *(a3 + 8);
  v22 = *(a3 + 10);
  *(a2 + 9) = *(a3 + 9);
  *(a2 + 10) = v22;
  *(a2 + 7) = v20;
  *(a2 + 8) = v21;
  v23 = *(a3 + 11);
  v24 = *(a3 + 12);
  v25 = *(a3 + 13);
  *(a2 + 28) = *(a3 + 28);
  *(a2 + 12) = v24;
  *(a2 + 13) = v25;
  *(a2 + 11) = v23;
  *(a2 + 58) = *(a3 + 58);
  if ((*(a2 + 240) & 0x20) != 0)
  {
    (*(*a2 + 112))(a2, a3);
  }

  v26 = (*(*a3 + 40))(a3);
  (*(*a2 + 48))(a2, v26);
  (*(*a2 + 104))(a2, a3);
  if ((a4 & 0x4000) != 0)
  {
    (*(*a2 + 120))(a2, a3);
  }

  *(a2 + 236) &= ~0x200000000uLL;
  if ((*(*this + 1888))(this))
  {
    v28 = (*(*a3 + 88))(a3);
    (*(*a2 + 96))(a2, v28, 0);
  }

  v29 = (a4 & 0xC00) != 0;
  v53 = a7;
  if (a4 & 0xB000 | a5)
  {
    v29 = 0;
LABEL_15:
    v30 = 1;
    goto LABEL_19;
  }

  if (byte_1ED4E987A)
  {
    goto LABEL_15;
  }

  if (byte_1ED4E987B == 1 && (a4 & 0xC00) != 0)
  {
    v30 = 0;
    v29 = 1;
  }

  else
  {
    v30 = (a4 & 0x800) == 0;
  }

LABEL_19:
  v31 = a8;
  if (CA::ScalerUtil::get_io_service(void)::once != -1)
  {
    dispatch_once(&CA::ScalerUtil::get_io_service(void)::once, &__block_literal_global_77);
  }

  if (CA::ScalerUtil::get_io_service(void)::scaler_service)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0;
  }

  if (!a6 || *a6 == 0.0 && (v33 = *(a6 + 1), v33 == 0.0) && (LODWORD(v33) = *(a2 + 14), v34 = *&v33, *(a6 + 2) == v34) && (LODWORD(v34) = *(a2 + 15), *(a6 + 3) == *&v34) || (v35 = a4, (byte_1ED4E988B & 1) == 0) && (v35 = a4, *a6 == *(a2 + 3)) && (v35 = a4, *(a6 + 1) == *(a2 + 4)) && (v35 = a4, *(a6 + 2) == *(a2 + 5)) && (v35 = a4, *(a6 + 3) == *(a2 + 6)))
  {
    v35 = a4 & 0xFFFEFFFF;
  }

  v36 = *(this + 41);
  if (v32)
  {
    v52 = v29;
    if (v36)
    {
      v37 = *(v36 + 8);
      if (v37)
      {
        CA::WindowServer::IOMFBDisplay::add_timing_info(this, *(v37 + 272), 1);
      }
    }

    v38 = (*(*a2 + 184))(a2, a3, v35, a5, a6, v53, v31, 1.0);
    v9 = v38;
    if (BYTE2(xmmword_1ED4E982C) != 1)
    {
      goto LABEL_40;
    }

    if (v38)
    {
      v51 = "Succeeded";
    }

    else
    {
      v51 = "Failed";
    }
  }

  else
  {
    v9 = 0;
    if (BYTE2(xmmword_1ED4E982C) != 1)
    {
      goto LABEL_42;
    }

    v52 = v29;
    v51 = "Skipped";
  }

  CA::WindowServer::copy_surface_log(v51, 1, a2, a3, a6, v53, v27);
LABEL_40:
  v29 = v52;
LABEL_42:
  if ((v9 & 1) == 0 && v29)
  {
    if (v36)
    {
      v39 = *(v36 + 8);
      if (v39)
      {
        CA::WindowServer::IOMFBDisplay::add_timing_info(this, *(v39 + 272), 0);
      }
    }

    v40 = *(this + 41);
    if (v40)
    {
      v41 = *v40;
      (*(**v40 + 1024))(*v40, *(a3 + 2));
      (*(*v41 + 1040))(v41, *(a2 + 2));
      v42 = v41[76];
      v43 = v41[77];
      v44 = *(a2 + 7);
      v41[76] = 0;
      v41[77] = v44;
      v45 = (*(*v41 + 1016))(v41, a2, 1);
      v46 = *(a3 + 7);
      v41[76] = 0;
      v41[77] = v46;
      v47 = (*(*v41 + 1016))(v41, a3, 0);
      v9 = 0;
      if (v45 && v47)
      {
        (*(*v41 + 776))(v41, v45, v47, WORD1(v35) & 1, v35, a6, v53);
        (*(*v41 + 1032))(v41, *(a3 + 2));
        (*(*v41 + 1048))(v41, *(a2 + 2));
        (***(this + 3345))();
        v41[76] = v42;
        v41[77] = v43;
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }

    if (BYTE2(xmmword_1ED4E982C) != 1)
    {
      goto LABEL_55;
    }

    if (v9)
    {
      v48 = "Succeeded";
    }

    else
    {
      v48 = "Failed";
    }

    goto LABEL_71;
  }

  if (BYTE2(xmmword_1ED4E982C) == 1)
  {
    v48 = "Skipped";
LABEL_71:
    CA::WindowServer::copy_surface_log(v48, 0, a2, a3, a6, v53, v27);
  }

LABEL_55:
  v49 = 0x800000000;
  if (v9)
  {
    v49 = 0;
  }

  *(a2 + 236) = *(a2 + 236) & 0xFFFFFFF7FFFFFFFFLL | v49;
  if ((a4 & 0x10000) != 0 && a6 && v9)
  {
    *(a2 + 24) = *a6;
    *(a2 + 40) = *(a6 + 1);
    return 1;
  }

  else
  {
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
  }

  return v9;
}

atomic_uint *CA::WindowServer::Surface::set_hdr_processor(uint64_t a1, atomic_uint *a2)
{
  result = *(a1 + 88);
  if (result != a2)
  {
    if (result && atomic_fetch_add(result + 4, 0xFFFFFFFF) == 1)
    {
      result = (*(*result + 8))(result);
    }

    if (a2)
    {
      atomic_fetch_add(a2 + 4, 1u);
    }

    *(a1 + 88) = a2;
  }

  return result;
}

uint64_t CA::WindowServer::Display::copy_iosa_manager(CA::WindowServer::Display *this, __CFRunLoop *a2)
{
  result = *(this + 38);
  if (!result)
  {
    if (CA::WindowServer::accelerator_runloop(void)::once[0] != -1)
    {
      dispatch_once(CA::WindowServer::accelerator_runloop(void)::once, &__block_literal_global_6932);
    }

    CA::IOSAManager::create_new_iosa_manager(CA::WindowServer::accelerator_runloop(void)::runloop, a2);
  }

  atomic_fetch_add((result + 24), 1u);
  return result;
}

BOOL CA::WindowServer::AppleDisplay::iosurface_accelerator_supports_scale_p(CA::WindowServer::AppleDisplay *this, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int a6, int a7)
{
  if (a7)
  {
    v10 = a5;
  }

  else
  {
    v10 = a4;
  }

  if (a7)
  {
    v11 = a4;
  }

  else
  {
    v11 = a5;
  }

  CA::ScalerUtil::ScalerLimits::limits(this);
  v12 = 8;
  if (a6)
  {
    v12 = 12;
  }

  v13 = &CA::ScalerUtil::ScalerLimits::limits(void)::limits[v12];
  v14 = 10;
  if (a6)
  {
    v14 = 14;
  }

  v15 = v10 / a2;
  if (v15 >= *v13 && v15 <= *&CA::ScalerUtil::ScalerLimits::limits(void)::limits[v14])
  {
    v17 = v11 / a3;
    return v17 <= *&CA::ScalerUtil::ScalerLimits::limits(void)::limits[v14 + 1] && v17 >= v13[1];
  }

  else
  {
    return 0;
  }
}

uint64_t CA::WindowServer::IOSurface::transfer_function(CA::WindowServer::IOSurface *this)
{
  result = *(this + 73);
  if (result == -1)
  {
    if (IOSurfaceGetBulkAttachments())
    {
      result = 0;
    }

    else
    {
      result = 0;
    }

    *(this + 73) = 0;
  }

  return result;
}

uint64_t CA::WindowServer::IOSurface::set_transfer_function(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = 13;
  }

  if (*(this + 292) != v2)
  {
    v3 = this;
    this = IOSurfaceSetBulkAttachments2();
    *(v3 + 292) = v2;
  }

  return this;
}

uint64_t CA::WindowServer::IOSurface::copy_hdr_static_metadata(uint64_t this, const CA::WindowServer::Surface *a2)
{
  if (a2)
  {
    if (*(this + 264))
    {
      this = (*(*a2 + 168))(a2);
      if (this)
      {
        this = (*(*a2 + 40))(a2);
        if (this == 16)
        {
          (*(*a2 + 168))(a2);
          this = IOSurfaceGetBulkAttachments();
          if (!this)
          {
            return IOSurfaceSetBulkAttachments2();
          }
        }
      }
    }
  }

  return this;
}

uint64_t CA::WindowServer::IOSurface::copy_iosurface(CA::WindowServer::IOSurface *this, CA::WindowServer::Surface *a2, unsigned int a3, int a4, CA::Rect *a5, CA::Rect *a6, atomic_uint *a7, float a8)
{
  v269 = *MEMORY[0x1E69E9840];
  v236 = a4;
  v14 = (*(*a2 + 168))(a2, a8);
  v15 = *(this + 1);
  if (v15)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    return 0;
  }

  v17 = v14;
  Width = IOSurfaceGetWidth(v14);
  Height = IOSurfaceGetHeight(v17);
  if ((a3 & 0x100) == 0 && !(*(*v15 + 152))(v15, Width, Height, *(this + 14), *(this + 15)))
  {
    return 0;
  }

  v228 = Height;
  v207 = a6;
  if (a4 && ((*(*v15 + 168))(v15) & 1) == 0)
  {
    v236 = 0;
  }

  v21 = CA::WindowServer::Display::copy_iosa_manager(v15, v19);
  if (!*(v21 + 16))
  {
LABEL_72:
    CA::IOSAManager::unref(v21);
    return 0;
  }

  v209 = v21;
  v220 = Width;
  v22 = a3 & 7;
  valuePtr = a3 & 7;
  if ((a3 & 0x200) != 0)
  {
    v22 = a3 & 7 | 8;
  }

  if ((a3 & 0x2000) != 0)
  {
    v23 = v22 | 0x10;
  }

  else
  {
    v23 = v22;
  }

  log = a3 & 0x2000;
  v24 = *(a2 + 2);
  v25 = *(this + 2);
  buffer = v17;
  v216 = a3;
  v217 = v25;
  if (byte_1ED4E987C == 1)
  {
    v119 = *(a2 + 2);
    if (x_log_get_sharedevent(void)::once != -1)
    {
      dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
    }

    v120 = x_log_get_sharedevent(void)::log;
    if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_DEBUG))
    {
      v137 = (*(*a2 + 168))(a2);
      ID = IOSurfaceGetID(v137);
      v139 = *(a2 + 2);
      LODWORD(keys[0]) = 67109376;
      HIDWORD(keys[0]) = ID;
      LOWORD(keys[1]) = 2048;
      *(&keys[1] + 2) = v139;
      _os_log_debug_impl(&dword_183AA6000, v120, OS_LOG_TYPE_DEBUG, "IOSurfaceID: 0x%x  copy_iosurface (SRC) SharedEvent: %p", keys, 0x12u);
      if (x_log_get_sharedevent(void)::once != -1)
      {
        dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
      }
    }

    v121 = x_log_get_sharedevent(void)::log;
    v122 = os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_DEBUG);
    v25 = v217;
    v24 = v119;
    if (v122)
    {
      v123 = (*(*this + 168))(this);
      v124 = IOSurfaceGetID(v123);
      v125 = *(this + 2);
      LODWORD(keys[0]) = 67109376;
      HIDWORD(keys[0]) = v124;
      LOWORD(keys[1]) = 2048;
      *(&keys[1] + 2) = v125;
      _os_log_debug_impl(&dword_183AA6000, v121, OS_LOG_TYPE_DEBUG, "IOSurfaceID: 0x%x  copy_iosurface (DST) SharedEvent: %p", keys, 0x12u);
      v25 = v217;
    }
  }

  v26 = 0;
  v27 = v23 | 0x20;
  v205 = v24;
  if (!v24)
  {
    v27 = v23;
  }

  v28 = (log >> 13) + 3;
  if (!v24)
  {
    v28 = log >> 13;
  }

  if (v25)
  {
    v27 |= 0x40u;
    v29 = v28 + 3;
  }

  else
  {
    v29 = v28;
  }

  v30 = (v27 | (v236 << 8));
  while (*(v15 + v26 + 352) != v30)
  {
    v26 += 16;
    if (v26 == 64)
    {
      v31 = 0;
      goto LABEL_29;
    }
  }

  v31 = *(v15 + v26 + 344);
LABEL_29:
  v32 = MEMORY[0x1E695E4D0];
  v33 = MEMORY[0x1E695E4C0];
  if (BYTE12(xmmword_1ED4E988C) == 1)
  {
    v34 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v34 = MEMORY[0x1E695E4D0];
  }

  if (!v31)
  {
    v35 = *v34;
    memset(&keys[1], 0, 56);
    v267 = 0u;
    v268 = 0u;
    *values = 0u;
    v266 = 0u;
    keys[0] = *MEMORY[0x1E69A85C0];
    v36 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v37 = *MEMORY[0x1E69A85D0];
    v38 = *v32;
    v39 = *v33;
    if ((v216 & 0x200) != 0)
    {
      v39 = v38;
    }

    values[0] = v36;
    values[1] = v39;
    v40 = *MEMORY[0x1E69A8490];
    keys[1] = v37;
    keys[2] = v40;
    *&v266 = CFNumberCreate(0, kCFNumberIntType, &v236);
    if (log)
    {
      v41 = *MEMORY[0x1E69A8518];
      keys[3] = *MEMORY[0x1E69A84C0];
      keys[4] = v41;
      *(&v266 + 1) = v38;
      *&v267 = v38;
      keys[5] = *MEMORY[0x1E69A84A8];
      *(&v267 + 1) = v38;
      v42 = 6;
    }

    else
    {
      v42 = 3;
    }

    keys[v42] = *MEMORY[0x1E69A84A0];
    values[v42] = v35;
    v43 = CFDictionaryCreate(0, keys, values, (v42 + 1), MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v31 = v43;
    if (v29)
    {
      Count = CFDictionaryGetCount(v43);
      MutableCopy = CFDictionaryCreateMutableCopy(0, Count + v29, v31);
      CFRelease(v31);
      v31 = MutableCopy;
    }

    v46 = *(v15 + 392);
    if (v46)
    {
      CFRelease(v46);
    }

    v47 = (v15 + 392);
    v48 = -3;
    do
    {
      *v47 = *(v47 - 1);
      --v47;
    }

    while (!__CFADD__(v48++, 1));
    *(v15 + 344) = v31;
    *(v15 + 352) = v30;
    *(v15 + 356) = 0;
    CFRelease(values[0]);
    CFRelease(v266);
  }

  theDict = v31;
  v50 = (*(*this + 168))(this);
  v51 = (v216 & 0x1000) == 0;
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  v52 = &CADisplayTimerGetTypeID::type;
  v53 = *&dword_1ED4E9650;
  if (*&dword_1ED4E9650)
  {
    v51 = 0;
  }

  v234 = v209;
  if (log && a7)
  {
    v54 = (*(*a7 + 16))(a7, buffer, v50, (v216 >> 17) & 1);
    if (v54)
    {
      v55 = v54;
      v56 = *v54;
      v57 = *MEMORY[0x1E69A8498];
      Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E69A8498]);
      if (Value)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
      }

      else
      {
        Mutable = CFArrayCreateMutable(0, 1, MEMORY[0x1E695E9C0]);
        CFDictionarySetValue(theDict, v57, Mutable);
        CFRelease(Mutable);
        ValueAtIndex = CFDataCreateMutable(*MEMORY[0x1E695E480], 40);
        CFDataSetLength(ValueAtIndex, 40);
        CFArraySetValueAtIndex(Mutable, 0, ValueAtIndex);
        CFRelease(ValueAtIndex);
      }

      MutableBytePtr = CFDataGetMutableBytePtr(ValueAtIndex);
      v62 = *(v56 + 32);
      v63 = *(v56 + 16);
      *MutableBytePtr = *v56;
      *(MutableBytePtr + 1) = v63;
      *(MutableBytePtr + 4) = v62;
      atomic_fetch_add(a7 + 2, 1u);
      v55[1] = a7;
      operator new();
    }
  }

  else if (!log)
  {
    goto LABEL_59;
  }

  CFDictionaryRemoveValue(theDict, *MEMORY[0x1E69A8498]);
LABEL_59:
  IOSurfaceGetProtectionOptions();
  if ((IOSurfaceSupportsProtectionOptions() & 1) == 0)
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v68 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      ProtectionOptions = IOSurfaceGetProtectionOptions();
      v90 = IOSurfaceGetProtectionOptions();
      LODWORD(keys[0]) = 134218240;
      *(keys + 4) = ProtectionOptions;
      WORD2(keys[1]) = 2048;
      *(&keys[1] + 6) = v90;
      _os_log_error_impl(&dword_183AA6000, v68, OS_LOG_TYPE_ERROR, "protection mismatch src: 0x%llx  dst: 0x%llx", keys, 0x16u);
    }

    v21 = v209;
    goto LABEL_72;
  }

  if (v205)
  {
    CA::WindowServer::dict_shared_event_set_value(theDict, v205, 1, 1);
  }

  if (v217)
  {
    CA::WindowServer::dict_shared_event_set_value(theDict, v217, 1, 0);
  }

  v266 = 0u;
  v267 = 0u;
  *values = 0u;
  if (a5)
  {
    v64 = *(a5 + 2);
    v65 = *(a5 + 3);
    if (!v207)
    {
      v220 = IOSurfaceGetWidth(buffer);
      v228 = IOSurfaceGetHeight(buffer);
      v210 = 0;
      v66 = 0.0;
      v67 = 0.0;
      goto LABEL_77;
    }

LABEL_76:
    v220 = v207[2];
    v228 = v207[3];
    v67 = *v207;
    v66 = v207[1];
    v210 = 1;
LABEL_77:
    PixelFormat = IOSurfaceGetPixelFormat(buffer);
    if (PixelFormat > 645410930)
    {
      if (PixelFormat == 645410931 || PixelFormat == 645411443)
      {
        goto LABEL_85;
      }

      v72 = 645411955;
    }

    else
    {
      if (PixelFormat == 645148787 || PixelFormat == 645149299)
      {
        goto LABEL_85;
      }

      v72 = 645149811;
    }

    if (PixelFormat == v72)
    {
      goto LABEL_85;
    }

    v79 = CA::Render::fourcc_compressed_of_type(PixelFormat, 0, 0);
    v74 = 0.0;
    if (v79 > 1885746227)
    {
      if ((v79 - 1886676528) <= 4 && ((1 << (v79 - 48)) & 0x15) != 0 || (v79 - 1886680624) <= 4 && ((1 << (v79 - 48)) & 0x15) != 0)
      {
        goto LABEL_85;
      }

      v80 = 13364;
    }

    else
    {
      if (v79 <= 1882469427)
      {
        if (v79 == 1882468912)
        {
          goto LABEL_85;
        }

        v88 = 1882468914;
        goto LABEL_106;
      }

      if (v79 == 1882469428 || v79 == 1885745712)
      {
        goto LABEL_85;
      }

      v80 = 12850;
    }

    v88 = v80 | 0x70660000;
LABEL_106:
    if (v79 != v88)
    {
      v73 = 0.0;
      if (a5)
      {
        goto LABEL_86;
      }

      goto LABEL_108;
    }

LABEL_85:
    v73 = (v67 % 6);
    v74 = (v66 % 6);
    v67 = v67 - v73;
    v66 = v66 - v74;
    v220 = ((v220 + v73) + 1) & 0xFFFFFFFFFFFFFFFELL;
    v228 = ((v228 + v74) + 1) & 0xFFFFFFFFFFFFFFFELL;
    if (a5)
    {
LABEL_86:
      v75 = *a5 - v73;
      v76 = *(a5 + 1) - v74;
LABEL_109:
      LODWORD(v86) = v75;
      LODWORD(v87) = v76;
      v84 = v64;
      v85 = v65;
      values[0] = vcvtd_n_u64_f64(v67, 0x10uLL);
      values[1] = vcvtd_n_u64_f64(v66, 0x10uLL);
      *&v266 = v220 << 16;
      goto LABEL_110;
    }

LABEL_108:
    v75 = -v73;
    v76 = -v74;
    goto LABEL_109;
  }

  v64 = IOSurfaceGetWidth(v50);
  v65 = IOSurfaceGetHeight(v50);
  if (v207)
  {
    goto LABEL_76;
  }

  if ((v216 & 0x8000) == 0)
  {
    v210 = 0;
    v77 = 0;
    v78 = Height;
    goto LABEL_111;
  }

  v210 = 0;
  v81 = *(this + 14);
  v82 = *(this + 15);
  v83 = v81 / v220;
  if (v83 >= v82 / Height)
  {
    v83 = v82 / Height;
  }

  v84 = vcvtmd_s64_f64(v83 * v220 + 0.5);
  values[1] = 0;
  *&v266 = v220 << 16;
  v85 = vcvtmd_s64_f64(v83 * Height + 0.5);
  v86 = (v81 - v84) >> 1;
  v87 = (v82 - v85) >> 1;
  values[0] = 0;
LABEL_110:
  v78 = v228;
  *(&v266 + 1) = v228 << 16;
  *&v267 = __PAIR64__(v87, v86);
  v77 = values;
  *(&v267 + 1) = __PAIR64__(v85, v84);
LABEL_111:
  v203 = v50;
  if (!(*(*v15 + 160))(v15, v220, v78, v64, v65, log != 0, (v216 >> 2) & 1))
  {
    v108 = v217;
    v104 = v205;
    v105 = 3758097090;
LABEL_143:
    if (v104)
    {
      if (x_log_get_sharedevent(void)::once != -1)
      {
        dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
      }

      v114 = x_log_get_sharedevent(void)::log;
      if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_ERROR))
      {
        LOWORD(keys[0]) = 0;
        _os_log_error_impl(&dword_183AA6000, v114, OS_LOG_TYPE_ERROR, "copy_iosurface error, ensure shared event signal is complete for source", keys, 2u);
      }

      CA::CASharedEvent::force_complete(v104, [v104[4] signaledValue] + 1, 0, 1);
      v108 = v217;
    }

    if (v108)
    {
      if (x_log_get_sharedevent(void)::once != -1)
      {
        dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
      }

      v115 = x_log_get_sharedevent(void)::log;
      if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_ERROR))
      {
        LOWORD(keys[0]) = 0;
        _os_log_error_impl(&dword_183AA6000, v115, OS_LOG_TYPE_ERROR, "copy_iosurface error, ensure shared event signal is complete for destination", keys, 2u);
      }

      CA::CASharedEvent::force_complete(v217, [v217[4] signaledValue] + 1, 0, 1);
    }

    v69 = 0;
    v50 = v203;
    goto LABEL_156;
  }

  if ((v216 & 0x10000) == 0 || !v77)
  {
    goto LABEL_135;
  }

  v91 = v267;
  v92 = (*(*this + 168))(this);
  v229 = IOSurfaceGetWidth(v92);
  theStringa = IOSurfaceGetHeight(v92);
  if (theStringa * v229 < 0x7A120 || (v93.i64[0] = DWORD2(v91), v93.i64[1] = HIDWORD(v91), v94 = vcvtq_f64_u64(v93), v95 = v94.f64[1], (theStringa * v229) * 0.85 < trunc((theStringa * v229) - v94.f64[0] * v94.f64[1])))
  {
    v50 = v203;
    if (((*(*this + 176))(this, a2, v216, 0) & 1) == 0)
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v104 = v205;
      v105 = 3758097090;
      v109 = x_log_get_windowserver(void)::log;
      if (!os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_142;
      }

      LODWORD(keys[0]) = 134218240;
      *(keys + 4) = v229;
      WORD2(keys[1]) = 2048;
      *(&keys[1] + 6) = theStringa;
      v107 = "Full clear failed IOSurface: %zux%zu";
      v110 = v109;
      v111 = 22;
      goto LABEL_179;
    }

    goto LABEL_135;
  }

  v96.i64[0] = v91;
  v96.i64[1] = DWORD1(v91);
  v97 = vcvtq_f64_u64(v96);
  v237 = 0u;
  v238 = 0u;
  *loga = v94;
  v221 = v97;
  if (v97.f64[0] > 0.0)
  {
    v237 = 0uLL;
    *&v238 = v97.f64[0];
    *(&v238 + 1) = theStringa;
    v98 = (*(*this + 176))(this, a2, v216, &v237);
    v97 = v221;
    v94 = *loga;
    if ((v98 & 1) == 0)
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v104 = v205;
      v105 = 3758097090;
      v106 = x_log_get_windowserver(void)::log;
      if (!os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_142;
      }

      LODWORD(keys[0]) = 134219264;
      *(keys + 4) = v237;
      WORD2(keys[1]) = 2048;
      *(&keys[1] + 6) = *(&v237 + 1);
      HIWORD(keys[2]) = 2048;
      keys[3] = v238;
      LOWORD(keys[4]) = 2048;
      *(&keys[4] + 2) = *(&v238 + 1);
      WORD1(keys[5]) = 2048;
      *(&keys[5] + 4) = v229;
      WORD2(keys[6]) = 2048;
      *(&keys[6] + 6) = theStringa;
      v107 = "Left clear failed %f,%f %fx%f  IOSurface: %zux%zu";
LABEL_177:
      v110 = v106;
      v111 = 62;
LABEL_179:
      _os_log_error_impl(&dword_183AA6000, v110, OS_LOG_TYPE_ERROR, v107, keys, v111);
LABEL_142:
      v108 = v217;
      goto LABEL_143;
    }
  }

  v99 = v97.f64[1];
  v50 = v203;
  if (v97.f64[1] > 0.0)
  {
    v237 = *&v97.f64[0];
    *&v238 = v94.f64[0];
    *(&v238 + 1) = *&v97.f64[1];
    v100 = (*(*this + 176))(this, a2, v216, &v237);
    v97 = v221;
    v94 = *loga;
    if ((v100 & 1) == 0)
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v104 = v205;
      v105 = 3758097090;
      v106 = x_log_get_windowserver(void)::log;
      if (!os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_142;
      }

      LODWORD(keys[0]) = 134219264;
      *(keys + 4) = v237;
      WORD2(keys[1]) = 2048;
      *(&keys[1] + 6) = *(&v237 + 1);
      HIWORD(keys[2]) = 2048;
      keys[3] = v238;
      LOWORD(keys[4]) = 2048;
      *(&keys[4] + 2) = *(&v238 + 1);
      WORD1(keys[5]) = 2048;
      *(&keys[5] + 4) = v229;
      WORD2(keys[6]) = 2048;
      *(&keys[6] + 6) = theStringa;
      v107 = "Top clear failed %f,%f %fx%f  IOSurface: %zux%zu";
      goto LABEL_177;
    }
  }

  v101 = vaddq_f64(v94, v97).f64[0];
  if (v101 >= v229)
  {
    v102 = theStringa;
  }

  else
  {
    v237 = *&v101;
    v102 = theStringa;
    *&v238 = v229 - v101;
    *(&v238 + 1) = theStringa;
    v103 = (*(*this + 176))(this, a2, v216, &v237);
    v97.f64[0] = v221.f64[0];
    *&v94.f64[0] = loga[0];
    if ((v103 & 1) == 0)
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v104 = v205;
      v105 = 3758097090;
      v106 = x_log_get_windowserver(void)::log;
      if (!os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_142;
      }

      LODWORD(keys[0]) = 134219264;
      *(keys + 4) = v237;
      WORD2(keys[1]) = 2048;
      *(&keys[1] + 6) = *(&v237 + 1);
      HIWORD(keys[2]) = 2048;
      keys[3] = v238;
      LOWORD(keys[4]) = 2048;
      *(&keys[4] + 2) = *(&v238 + 1);
      WORD1(keys[5]) = 2048;
      *(&keys[5] + 4) = v229;
      WORD2(keys[6]) = 2048;
      *(&keys[6] + 6) = theStringa;
      v107 = "Right clear failed %f,%f %fx%f  IOSurface: %zux%zu";
      goto LABEL_177;
    }
  }

  if (v95 + v99 < v102)
  {
    *&v237 = v97.f64[0];
    *(&v237 + 1) = v95 + v99;
    *&v238 = v94.f64[0];
    *(&v238 + 1) = v102 - (v95 + v99);
    if (((*(*this + 176))(this, a2, v216, &v237) & 1) == 0)
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v104 = v205;
      v105 = 3758097090;
      v106 = x_log_get_windowserver(void)::log;
      if (!os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_142;
      }

      LODWORD(keys[0]) = 134219264;
      *(keys + 4) = v237;
      WORD2(keys[1]) = 2048;
      *(&keys[1] + 6) = *(&v237 + 1);
      HIWORD(keys[2]) = 2048;
      keys[3] = v238;
      LOWORD(keys[4]) = 2048;
      *(&keys[4] + 2) = *(&v238 + 1);
      WORD1(keys[5]) = 2048;
      *(&keys[5] + 4) = v229;
      WORD2(keys[6]) = 2048;
      *(&keys[6] + 6) = theStringa;
      v107 = "Bottom clear failed %f,%f %fx%f  IOSurface: %zux%zud";
      goto LABEL_177;
    }
  }

LABEL_135:
  v112 = *(v15 + 328);
  if (v112 && *(v112 + 8))
  {
    operator new();
  }

  v105 = IOSurfaceAcceleratorTransformSurface();
  if (v105)
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v104 = v205;
    v113 = x_log_get_windowserver(void)::log;
    if (!os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_142;
    }

    LODWORD(keys[0]) = 67109120;
    HIDWORD(keys[0]) = v105;
    v107 = "IOSurfaceAcceleratorTransformSurface returned: 0x%x";
    v110 = v113;
    v111 = 8;
    goto LABEL_179;
  }

  v69 = 1;
  if (!v51)
  {
LABEL_156:
    (CA::WindowServer::msr_transfer_complete)(v234, v105, 0);
  }

  if (BYTE2(xmmword_1ED4E982C) == 1)
  {
    v230 = v105;
    v202 = v53;
    v126 = v50;
    theStringb = CFCopyDescription(theDict);
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    logb = x_log_get_windowserver(void)::log;
    v127 = os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT);
    if (v210)
    {
      if (!v127)
      {
        goto LABEL_296;
      }

      v128 = "failed with";
      if (v69)
      {
        v128 = "copied";
      }

      v222 = v128;
      v129 = IOSurfaceGetPixelFormat(buffer);
      v130 = HIBYTE(v129);
      if ((v129 & 0x80000000) != 0)
      {
        v131 = __maskrune(v130, 0x40000uLL);
      }

      else
      {
        v131 = *(MEMORY[0x1E69E9830] + 4 * v130 + 60) & 0x40000;
      }

      if (v131)
      {
        v140 = IOSurfaceGetPixelFormat(buffer) >> 24;
      }

      else
      {
        v140 = 32;
      }

      v218 = v140;
      v142 = (IOSurfaceGetPixelFormat(buffer) >> 16);
      if (v142 <= 0x7F)
      {
        v143 = *(MEMORY[0x1E69E9830] + 4 * v142 + 60) & 0x40000;
      }

      else
      {
        v143 = __maskrune(v142, 0x40000uLL);
      }

      if (v143)
      {
        v144 = (IOSurfaceGetPixelFormat(buffer) << 8) >> 24;
      }

      else
      {
        v144 = 32;
      }

      theDicta = v144;
      v148 = (IOSurfaceGetPixelFormat(buffer) >> 8);
      if (v148 <= 0x7F)
      {
        v149 = *(MEMORY[0x1E69E9830] + 4 * v148 + 60) & 0x40000;
      }

      else
      {
        v149 = __maskrune(v148, 0x40000uLL);
      }

      if (v149)
      {
        v150 = IOSurfaceGetPixelFormat(buffer) >> 8;
      }

      else
      {
        v150 = 32;
      }

      v211 = v150;
      v154 = IOSurfaceGetPixelFormat(buffer);
      if (v154 <= 0x7F)
      {
        v155 = *(MEMORY[0x1E69E9830] + 4 * v154 + 60) & 0x40000;
      }

      else
      {
        v155 = __maskrune(v154, 0x40000uLL);
      }

      if (v155)
      {
        v156 = IOSurfaceGetPixelFormat(buffer);
      }

      else
      {
        v156 = 32;
      }

      v206 = v156;
      v204 = IOSurfaceGetWidth(buffer);
      v201 = IOSurfaceGetHeight(buffer);
      v200 = IOSurfaceGetID(buffer);
      v160 = IOSurfaceGetPixelFormat(v50);
      v161 = HIBYTE(v160);
      if ((v160 & 0x80000000) != 0)
      {
        v162 = __maskrune(v161, 0x40000uLL);
      }

      else
      {
        v162 = *(MEMORY[0x1E69E9830] + 4 * v161 + 60) & 0x40000;
      }

      if (v162)
      {
        v168 = IOSurfaceGetPixelFormat(v50) >> 24;
      }

      else
      {
        v168 = 32;
      }

      v199 = v168;
      v170 = (IOSurfaceGetPixelFormat(v50) >> 16);
      if (v170 <= 0x7F)
      {
        v171 = *(MEMORY[0x1E69E9830] + 4 * v170 + 60) & 0x40000;
      }

      else
      {
        v171 = __maskrune(v170, 0x40000uLL);
      }

      if (v171)
      {
        v172 = (IOSurfaceGetPixelFormat(v50) << 8) >> 24;
      }

      else
      {
        v172 = 32;
      }

      v176 = (IOSurfaceGetPixelFormat(v50) >> 8);
      if (v176 <= 0x7F)
      {
        v177 = *(MEMORY[0x1E69E9830] + 4 * v176 + 60) & 0x40000;
      }

      else
      {
        v177 = __maskrune(v176, 0x40000uLL);
      }

      if (v177)
      {
        v178 = IOSurfaceGetPixelFormat(v50) >> 8;
      }

      else
      {
        v178 = 32;
      }

      v182 = IOSurfaceGetPixelFormat(v50);
      if (v182 <= 0x7F)
      {
        v183 = *(MEMORY[0x1E69E9830] + 4 * v182 + 60) & 0x40000;
      }

      else
      {
        v183 = __maskrune(v182, 0x40000uLL);
      }

      if (v183)
      {
        v184 = IOSurfaceGetPixelFormat(v50);
      }

      else
      {
        v184 = 32;
      }

      v188 = IOSurfaceGetID(v50);
      v189 = *v207;
      v190 = *(v207 + 1);
      v192 = *(v207 + 2);
      v191 = *(v207 + 3);
      CStringPtr = CFStringGetCStringPtr(theStringb, 0x8000100u);
      LODWORD(keys[0]) = 136320514;
      *(keys + 4) = v222;
      WORD2(keys[1]) = 1024;
      *(&keys[1] + 6) = v230;
      WORD1(keys[2]) = 1024;
      HIDWORD(keys[2]) = v218;
      LOWORD(keys[3]) = 1024;
      *(&keys[3] + 2) = theDicta;
      HIWORD(keys[3]) = 1024;
      LODWORD(keys[4]) = v211;
      WORD2(keys[4]) = 1024;
      *(&keys[4] + 6) = v206;
      WORD1(keys[5]) = 2048;
      *(&keys[5] + 4) = v204;
      WORD2(keys[6]) = 2048;
      *(&keys[6] + 6) = v201;
      HIWORD(keys[7]) = 1024;
      v240 = v200;
      v241 = 1024;
      v242 = v199;
      v243 = 1024;
      v244 = v172;
      v245 = 1024;
      v246 = v178;
      v247 = 1024;
      v248 = v184;
      v249 = 2048;
      v250 = v64;
      v251 = 2048;
      v252 = v65;
      v253 = 1024;
      v254 = v188;
      v255 = 2048;
      *v256 = v189;
      *&v256[8] = 2048;
      *&v256[10] = v190;
      v257 = 2048;
      v258 = v192;
      v259 = 2048;
      v260 = v191;
      v261 = 1024;
      v262 = v216;
      v263 = 2080;
      v264 = CStringPtr;
      v194 = "%s 0x%x src: %c%c%c%c [%zu x %zu] 0x%x dst: %c%c%c%c [%f x %f] 0x%x, subrect: (%f, %f, %f, %f), copy_flags: 0x%x, dict %s";
      v195 = logb;
      v196 = 174;
    }

    else
    {
      if (!v127)
      {
        goto LABEL_296;
      }

      if (v69)
      {
        v132 = "copied";
      }

      else
      {
        v132 = "failed with";
      }

      v133 = IOSurfaceGetPixelFormat(buffer);
      v134 = HIBYTE(v133);
      v135 = MEMORY[0x1E69E9830];
      if ((v133 & 0x80000000) != 0)
      {
        v136 = __maskrune(v134, 0x40000uLL);
      }

      else
      {
        v136 = *(MEMORY[0x1E69E9830] + 4 * v134 + 60) & 0x40000;
      }

      if (v136)
      {
        v141 = IOSurfaceGetPixelFormat(buffer) >> 24;
      }

      else
      {
        v141 = 32;
      }

      v223 = v141;
      v145 = (IOSurfaceGetPixelFormat(buffer) >> 16);
      if (v145 <= 0x7F)
      {
        v146 = *(v135 + 4 * v145 + 60) & 0x40000;
      }

      else
      {
        v146 = __maskrune(v145, 0x40000uLL);
      }

      if (v146)
      {
        v147 = (IOSurfaceGetPixelFormat(buffer) << 8) >> 24;
      }

      else
      {
        v147 = 32;
      }

      v219 = v147;
      v151 = (IOSurfaceGetPixelFormat(buffer) >> 8);
      if (v151 <= 0x7F)
      {
        v152 = *(v135 + 4 * v151 + 60) & 0x40000;
      }

      else
      {
        v152 = __maskrune(v151, 0x40000uLL);
      }

      if (v152)
      {
        v153 = IOSurfaceGetPixelFormat(buffer) >> 8;
      }

      else
      {
        v153 = 32;
      }

      theDictb = v153;
      v157 = IOSurfaceGetPixelFormat(buffer);
      if (v157 <= 0x7F)
      {
        v158 = *(v135 + 4 * v157 + 60) & 0x40000;
      }

      else
      {
        v158 = __maskrune(v157, 0x40000uLL);
      }

      if (v158)
      {
        v159 = IOSurfaceGetPixelFormat(buffer);
      }

      else
      {
        v159 = 32;
      }

      v212 = v159;
      v208 = IOSurfaceGetWidth(buffer);
      v163 = IOSurfaceGetHeight(buffer);
      v164 = IOSurfaceGetID(buffer);
      v165 = IOSurfaceGetPixelFormat(v126);
      v166 = HIBYTE(v165);
      if ((v165 & 0x80000000) != 0)
      {
        v167 = __maskrune(v166, 0x40000uLL);
      }

      else
      {
        v167 = *(v135 + 4 * v166 + 60) & 0x40000;
      }

      if (v167)
      {
        v169 = IOSurfaceGetPixelFormat(v126) >> 24;
      }

      else
      {
        v169 = 32;
      }

      v173 = (IOSurfaceGetPixelFormat(v126) >> 16);
      if (v173 <= 0x7F)
      {
        v174 = *(v135 + 4 * v173 + 60) & 0x40000;
      }

      else
      {
        v174 = __maskrune(v173, 0x40000uLL);
      }

      if (v174)
      {
        v175 = (IOSurfaceGetPixelFormat(v126) << 8) >> 24;
      }

      else
      {
        v175 = 32;
      }

      v179 = (IOSurfaceGetPixelFormat(v126) >> 8);
      if (v179 <= 0x7F)
      {
        v180 = *(v135 + 4 * v179 + 60) & 0x40000;
      }

      else
      {
        v180 = __maskrune(v179, 0x40000uLL);
      }

      if (v180)
      {
        v181 = IOSurfaceGetPixelFormat(v126) >> 8;
      }

      else
      {
        v181 = 32;
      }

      v185 = IOSurfaceGetPixelFormat(v126);
      if (v185 <= 0x7F)
      {
        v186 = *(v135 + 4 * v185 + 60) & 0x40000;
      }

      else
      {
        v186 = __maskrune(v185, 0x40000uLL);
      }

      if (v186)
      {
        v187 = IOSurfaceGetPixelFormat(v126);
      }

      else
      {
        v187 = 32;
      }

      v197 = IOSurfaceGetID(v126);
      v198 = CFStringGetCStringPtr(theStringb, 0x8000100u);
      LODWORD(keys[0]) = 136319490;
      *(keys + 4) = v132;
      WORD2(keys[1]) = 1024;
      *(&keys[1] + 6) = v230;
      WORD1(keys[2]) = 1024;
      HIDWORD(keys[2]) = v223;
      LOWORD(keys[3]) = 1024;
      *(&keys[3] + 2) = v219;
      HIWORD(keys[3]) = 1024;
      LODWORD(keys[4]) = theDictb;
      WORD2(keys[4]) = 1024;
      *(&keys[4] + 6) = v212;
      WORD1(keys[5]) = 2048;
      *(&keys[5] + 4) = v208;
      WORD2(keys[6]) = 2048;
      *(&keys[6] + 6) = v163;
      HIWORD(keys[7]) = 1024;
      v240 = v164;
      v241 = 1024;
      v242 = v169;
      v243 = 1024;
      v244 = v175;
      v245 = 1024;
      v246 = v181;
      v247 = 1024;
      v248 = v187;
      v249 = 2048;
      v250 = v64;
      v251 = 2048;
      v252 = v65;
      v253 = 1024;
      v254 = v197;
      v255 = 1024;
      *v256 = v216;
      *&v256[4] = 2080;
      *&v256[6] = v198;
      v194 = "%s 0x%x src: %c%c%c%c [%zu x %zu] 0x%x dst: %c%c%c%c [%f x %f] 0x%x, copy_flags: 0x%x, dict %s";
      v195 = logb;
      v196 = 134;
    }

    _os_log_impl(&dword_183AA6000, v195, OS_LOG_TYPE_DEFAULT, v194, keys, v196);
LABEL_296:
    v50 = v126;
    v52 = &CADisplayTimerGetTypeID::type;
    v53 = v202;
    if (theStringb)
    {
      CFRelease(theStringb);
    }
  }

  if (v53)
  {
    v116 = CAIOSurfaceWriteToFileWithSuffix(buffer, "msr-src");
    free(v116);
    v117 = CAIOSurfaceWriteToFileWithSuffix(v50, "msr-dst");
    if (v117)
    {
      v118 = *(v52 + 404);
      if (v118 > 0.0)
      {
        *(v52 + 404) = v118 + -1.0;
      }

      free(v117);
    }
  }

  return v69;
}

void CA::WindowServer::dict_shared_event_set_value(CA::WindowServer *this, __CFDictionary *a2, CA::CASharedEvent *a3, int a4)
{
  v4 = a3;
  v7 = MEMORY[0x1E69A8548];
  if (a4)
  {
    v8 = 4;
  }

  else
  {
    v7 = MEMORY[0x1E69A8530];
    v8 = 5;
  }

  if (a4)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (a4)
  {
    v10 = MEMORY[0x1E69A8558];
  }

  else
  {
    v10 = MEMORY[0x1E69A8540];
  }

  if (a4)
  {
    v11 = MEMORY[0x1E69A8550];
  }

  else
  {
    v11 = MEMORY[0x1E69A8538];
  }

  CA_CFDictionarySetLongLong(this, *v7, *(a2 + 4));
  v12 = v4 == 0;
  v13 = *v10;
  if (v12)
  {
    v8 = 3;
  }

  wait_value = CA::CASharedEvent::get_wait_value(a2, v8, v9);
  CA_CFDictionarySetLongLong(this, v13, wait_value);
  v15 = *v11;
  v16 = CA::CASharedEvent::inc_signal_value(a2, v8, v9);

  CA_CFDictionarySetLongLong(this, v15, v16);
}

uint64_t ___ZN2CA12MachPortUtil17call_with_timeoutIPFijjjEJjEEEijjbPKcT_DpT0__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = (*(a1 + 32))(*(a1 + 48), *(a1 + 52), *(a1 + 56));
  if (v2)
  {
    v4 = v2;
    if (v2 != 268435460 || (*(a1 + 60) & 1) == 0)
    {
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v5 = x_log_get_utilities::log;
      if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 40);
        v7 = 136315650;
        v8 = v6;
        v9 = 1024;
        v10 = v4;
        v11 = 2080;
        v12 = mach_error_string(v4);
        _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "%s client message err=0x%x : %s", &v7, 0x1Cu);
      }
    }
  }

  return mach_port_deallocate(*MEMORY[0x1E69E9A60], *(a1 + 48));
}

double std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,CA::Render::BackdropGroup::finalize_update(unsigned int,BOOL,void *)::$_0 &,CA::Render::BackdropGroup::Item *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(*(a2 + 24) + 112);
  v9 = *(*(a3 + 24) + 112);
  if (v8 >= *(*(a1 + 24) + 112))
  {
    if (v9 < v8)
    {
      *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(a2, a3).n128_u64[0];
      if (*(*(a2 + 24) + 112) < *(*(v7 + 24) + 112))
      {
        a1 = v7;
        v11 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v11 = a3;
LABEL_9:
      *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(a1, v11).n128_u64[0];
      goto LABEL_10;
    }

    *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(a1, a2).n128_u64[0];
    if (*(*(a3 + 24) + 112) < *(*(a2 + 24) + 112))
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(*(a4 + 24) + 112) < *(*(a3 + 24) + 112))
  {
    *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(a3, a4).n128_u64[0];
    if (*(*(a3 + 24) + 112) < *(*(a2 + 24) + 112))
    {
      *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(a2, a3).n128_u64[0];
      if (*(*(a2 + 24) + 112) < *(*(v7 + 24) + 112))
      {

        *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v7, a2).n128_u64[0];
      }
    }
  }

  return result;
}

CA::Render::Path *CA::Render::EmitterState::point_on_path(CA::Render::Path *result, float32x2_t *a2, uint64_t a3, float a4, float a5, float a6)
{
  v29 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v9 = result;
    v28 = 0uLL;
    v27 = 0.0;
    result = CA::Render::Path::keyframe_lengths(result);
    if (result)
    {
      v10 = result;
      v11 = 0.0;
      if (a4 >= 0.0)
      {
        v11 = a4;
      }

      if (v11 >= 1.0)
      {
        v12 = 0.9999;
      }

      else
      {
        v12 = v11;
      }

      if (!*(v9 + 14))
      {
        result = CA::Render::Path::keyframe_lengths(v9);
      }

      v13 = *(v9 + 4);
      if (v13 >= 1)
      {
        v14 = *(v9 + 15) * v12;
        v15 = *v10;
        if (v14 >= *v10)
        {
          v16 = 0;
          while (v13 - 1 != v16)
          {
            v14 = v14 - v15;
            v15 = v10[++v16];
            if (v14 < v15)
            {
              v17 = v16 < v13;
              goto LABEL_17;
            }
          }
        }

        else
        {
          LODWORD(v16) = 0;
          v17 = 1;
LABEL_17:
          v18 = v14 / v15;
          result = CA::Render::Path::interpolate(v9, v16, 1, &v28, 0, 0, &v27, 0, v18, 0.0);
          if (v17)
          {
            if (result)
            {
              __asm { FMOV            V2.2D, #-0.5 }

              v24 = v27 + -1.57079633;
              *a2 = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(*a2), vcvtq_f64_f32(__PAIR64__(LODWORD(a6), LODWORD(a5))), vaddq_f64(v28, _Q2)));
              *a3 = ((((((v24 * v24) * -0.00096967) + 0.039228) * (v24 * v24)) + -0.49535) * (v24 * v24)) + 0.99861;
              *(a3 + 4) = (((((v24 * v24) * 0.0054654) + -0.15346) * (v24 * v24)) + 0.98442) * v24;
              *(a3 + 8) = 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t CA::Render::Path::interpolate(float64x2_t **this, int a2, int a3, float64x2_t *a4, float64x2_t *a5, float64x2_t *a6, long double *a7, unint64_t a8, float a9, float a10)
{
  v123 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    result = CA::Render::Path::keyframe_lengths(this);
    if (!result)
    {
      return result;
    }
  }

  v21 = this[5];
  v22 = LOBYTE(v21->f64[0]);
  if (LOBYTE(v21->f64[0]))
  {
    _ZF = v22 == 5;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    return 0;
  }

  v24 = this[4];
  v100 = a6;
  if (v22 == 1)
  {
    if (a5)
    {
      *a5 = *v24;
    }

    v25 = v24++;
  }

  else
  {
    v25 = 0;
  }

  v26 = v21->f64 + 1;
  if (a2 < 1)
  {
    v28 = v25;
    if (!v25)
    {
      return 0;
    }

    goto LABEL_29;
  }

  v27 = 0;
  v28 = v25;
  do
  {
    v29 = *v26;
    if (v29 > 1)
    {
      switch(v29)
      {
        case 2u:
          v25 = v24++;
          break;
        case 3u:
          v25 = v24 + 1;
          v24 += 2;
          break;
        case 4u:
          v25 = v24 + 2;
          v24 += 3;
          break;
        default:
          return 0;
      }

LABEL_24:
      ++v27;
      goto LABEL_25;
    }

    if (!*v26)
    {
      goto LABEL_24;
    }

    if (v29 != 1)
    {
      return 0;
    }

    v28 = v24;
    v25 = v24++;
LABEL_25:
    ++v26;
  }

  while (v27 < a2);
  if (!v25)
  {
    return 0;
  }

LABEL_29:
  while (1)
  {
    v30 = *v26;
    if (v30 != 1)
    {
      break;
    }

    v28 = v24;
    v25 = v24++;
    ++v26;
  }

  if (*v26 > 2u)
  {
    if (v30 == 3)
    {
      v32 = *v25;
      v35 = v24[1];
      v37 = vaddq_f64(*v24, *v24);
      v38 = vdupq_n_s64(0x3FD5555555555555uLL);
      v33 = vmulq_f64(vaddq_f64(v37, *v25), v38);
      v34 = vmulq_f64(vaddq_f64(v37, v35), v38);
    }

    else
    {
      if (v30 != 4)
      {
        return 0;
      }

      v32 = *v25;
      v33 = *v24;
      v34 = v24[1];
      v35 = v24[2];
    }

    __asm { FMOV            V4.2D, #3.0 }

    if (a3)
    {
      v42 = this[14]->f64[a2] * a9;
      v122 = 0;
      memset(v121, 0, sizeof(v121));
      v120 = 0;
      memset(v119, 0, sizeof(v119));
      v118 = 0;
      memset(v117, 0, sizeof(v117));
      v116 = 0;
      memset(v115, 0, sizeof(v115));
      v114 = 0;
      memset(v113, 0, sizeof(v113));
      v112 = 0;
      memset(v111, 0, sizeof(v111));
      v110 = 0;
      memset(v109, 0, sizeof(v109));
      v108 = 0;
      memset(v107, 0, sizeof(v107));
      memset(v105, 0, sizeof(v105));
      memset(v103, 0, sizeof(v103));
      memset(v101, 0, sizeof(v101));
      a9 = 0.0;
      v106 = 0;
      v104 = 0;
      v102 = 0;
      if (v42 != 0.0)
      {
        v43 = vsubq_f64(v35, v34);
        v44 = vsubq_f64(v33, v32);
        v45 = vaddvq_f64(vmulq_f64(v44, v44));
        v46 = vaddvq_f64(vmulq_f64(v43, v43));
        v47 = v45 <= 0.0 ? 1.79769313e308 : 1.0 / sqrt(v45);
        v48 = v47 * v45;
        v49 = v46 <= 0.0 ? 1.79769313e308 : 1.0 / sqrt(v46);
        v50 = v49 * v46;
        if (COERCE__INT64(fabs(v49 * v46 + v48)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          LODWORD(v51) = 0;
          v52 = v35.f64[1];
          v53 = 0.0;
          _D17 = 2.0;
          v55.f64[0] = v35.f64[0];
          v56 = 0.0;
          v57 = 1.0;
          _Q23 = v34;
          v59 = v32;
          v60 = v33;
          while (1)
          {
            v61 = v51;
            if (v51 <= 29)
            {
              LODWORD(v51) = 29;
            }

            if (v61 <= 29)
            {
              v62 = 29;
            }

            else
            {
              v62 = v61;
            }

            while (1)
            {
              v63 = vsubq_f64(_Q23, v60);
              v64 = vaddvq_f64(vmulq_f64(v63, v63));
              v65 = v64 <= 0.0 ? 1.79769313e308 : 1.0 / sqrt(v64);
              v66 = (v52 - v59.f64[1]) * (v52 - v59.f64[1]) + (v55.f64[0] - v59.f64[0]) * (v55.f64[0] - v59.f64[0]);
              v67 = v66 <= 0.0 ? 1.79769313e308 : 1.0 / sqrt(v66);
              v68 = v65 * v64;
              v69 = v67 * v66;
              v70 = v50 + v48 + v68;
              if (v62 == v61)
              {
                break;
              }

              v71 = vabdd_f64(v48, v68) + vabdd_f64(v68, v50);
              if (v70 - v69 <= v57 && v71 < 1.0)
              {
                LODWORD(v51) = v61;
                break;
              }

              v57 = v57 * 0.5;
              *(v101 + v61) = v57;
              *(v115 + v61) = *&v55.f64[0];
              *(v103 + v61) = v52;
              *(v117 + v61) = (v55.f64[0] + _Q23.f64[0]) * 0.5;
              *(v105 + v61) = (v52 + _Q23.f64[1]) * 0.5;
              *(v119 + v61) = (v60.f64[0] + _Q23.f64[0] * 2.0 + v55.f64[0]) * 0.25;
              __asm { FMLA            D29, D17, V23.D[1] }

              *(v107 + v61) = (_D29 + v52) * 0.25;
              __asm { FMOV            V30.2D, #2.0 }

              *(v111 + v61) = v50 * 0.5;
              v75.f64[1] = v59.f64[1];
              v75.f64[0] = v55.f64[0];
              v76.f64[0] = v59.f64[0];
              v76.f64[1] = v52;
              __asm { FMOV            V24.2D, #0.125 }

              v55 = vmulq_f64(vaddq_f64(vmlaq_f64(v75, _Q4, vaddq_f64(_Q23, v60)), v76), _Q24);
              *(v121 + v61) = *&v55.f64[0];
              *(v109 + v61) = *&v55.f64[1];
              _Q24.f64[0] = v59.f64[0];
              _Q24.f64[1] = _Q23.f64[1];
              _Q23.f64[1] = v59.f64[1];
              v78 = vaddq_f64(vmlaq_f64(_Q23, _Q30, v60), _Q24);
              __asm { FMOV            V24.2D, #0.25 }

              _Q23 = vmulq_f64(v78, _Q24);
              v80 = vsubq_f64(v55, _Q23);
              v81 = vaddvq_f64(vmulq_f64(v80, v80));
              if (v81 <= 0.0)
              {
                v82 = 1.79769313e308;
              }

              else
              {
                v82 = 1.0 / sqrt(v81);
              }

              v83 = vaddq_f64(v60, v59);
              __asm { FMOV            V26.2D, #0.5 }

              v60 = vmulq_f64(v83, _Q26);
              v48 = v48 * 0.5;
              v52 = v55.f64[1];
              v50 = v82 * v81;
              *(v113 + v61++) = v50;
            }

            v85 = (v69 + v70) * 0.5;
            v86 = v85 + v53;
            if (v85 + v53 >= v42)
            {
              a9 = fmin(v57 * (v42 - v53) / v85 + v56, 1.0);
              goto LABEL_82;
            }

            if (!v51)
            {
              break;
            }

            v51 = v51 - 1;
            v55.f64[0] = *(v115 + v51);
            v52 = *(v103 + v51);
            v48 = *(v113 + v51);
            _Q23.f64[0] = *(v117 + v51);
            _Q23.f64[1] = *(v105 + v51);
            v59.f64[0] = *(v121 + v51);
            v59.f64[1] = *(v109 + v51);
            v56 = v57 + v56;
            v60.f64[0] = *(v119 + v51);
            v60.f64[1] = *(v107 + v51);
            v53 = v86;
            v50 = *(v111 + v51);
            v57 = *(v101 + v51);
          }

          a9 = 1.0;
        }
      }
    }

LABEL_82:
    v87 = 1.0 - a9;
    *a4 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v35, a9 * a9 * a9), v33, v87 * v87 * (a9 * 3.0)), v32, v87 * v87 * v87), v34, a9 * 3.0 * a9 * v87);
    if (a7 | a8)
    {
      v36 = vmlaq_n_f64(vmlaq_n_f64(vmulq_f64(vsubq_f64(v33, v32), _Q4), vaddq_f64(vsubq_f64(v34, vaddq_f64(v33, v33)), v32), a9 * 6.0), vmlaq_f64(vsubq_f64(v35, v32), _Q4, vsubq_f64(v33, v34)), a9 * a9 * 3.0);
      if (a7)
      {
        v99 = v36;
        v88 = atan2(v36.f64[1], v36.f64[0]);
        v36 = v99;
        *a7 = v88;
      }

      if (a3)
      {
        v36 = vmulq_n_f64(v36, this[14]->f64[a2] / sqrt(vaddvq_f64(vmulq_f64(v36, v36))));
      }

      if (a8)
      {
        goto LABEL_88;
      }
    }
  }

  else
  {
    if (*v26)
    {
      *a4 = vmlaq_n_f64(*v25, vsubq_f64(*v24, *v25), a9);
      if (a7)
      {
        *a7 = atan2(v24->f64[1] - v25->f64[1], v24->f64[0] - v25->f64[0]);
      }

      v31 = v24;
      if (!a8)
      {
        goto LABEL_89;
      }

LABEL_44:
      v36 = vsubq_f64(*v31, *v25);
LABEL_88:
      *a8 = vmulq_n_f64(v36, a10);
      goto LABEL_89;
    }

    *a4 = vmlaq_n_f64(*v25, vsubq_f64(*v28, *v25), a9);
    if (a7)
    {
      *a7 = atan2(v28->f64[1] - v25->f64[1], v28->f64[0] - v25->f64[0]);
    }

    v31 = v28;
    if (a8)
    {
      goto LABEL_44;
    }
  }

LABEL_89:
  if (v100)
  {
    v89 = *v26;
    if (v89 != 5)
    {
      v90 = v26 + 1;
      do
      {
        v91 = v24 + 1;
        v92 = v24 + 2;
        v93 = v24 + 3;
        if (v89 == 4)
        {
          v94 = v24 + 2;
        }

        else
        {
          v94 = v25;
        }

        if (v89 != 4)
        {
          v93 = v24;
        }

        if (v89 == 3)
        {
          v94 = v24 + 1;
        }

        else
        {
          v92 = v93;
        }

        if (v89 == 2)
        {
          v95 = v24;
        }

        else
        {
          v95 = v94;
        }

        if (v89 == 2)
        {
          v92 = v24 + 1;
        }

        if (v89 == 1)
        {
          v96 = v24;
        }

        else
        {
          v96 = v28;
        }

        if (v89 == 1)
        {
          v97 = v24;
        }

        else
        {
          v97 = v25;
        }

        if (v89 != 1)
        {
          v91 = v24;
        }

        if (!v89)
        {
          v96 = v28;
          v97 = v28;
          v91 = v24;
        }

        if (v89 > 1)
        {
          v25 = v95;
        }

        else
        {
          v28 = v96;
          v25 = v97;
        }

        if (v89 <= 1)
        {
          v24 = v91;
        }

        else
        {
          v24 = v92;
        }

        v98 = *v90++;
        v89 = v98;
      }

      while (v98 != 5);
    }

    *v100 = *v25;
  }

  return 1;
}

CA::OGL::Context *CA::OGL::stroke_uneven_round_rect(CA::OGL::Context *result, float64x2_t **a2, double *a3, uint64_t a4, double a5)
{
  v92 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = (*a2)[1].f64[0];
  if (v7 >= (*a2)[1].f64[1])
  {
    v7 = (*a2)[1].f64[1];
  }

  if (v7 > 0.0)
  {
    v10 = result;
    v11 = *a3;
    v12 = a3[2];
    if (*a3 == v12)
    {
      v13 = a3[1];
      v14 = a3[3];
      if (v13 == v14)
      {
        v15 = a3[4];
        if (v12 == v15)
        {
          v16 = a3[5];
          if (v14 == v16 && v15 == a3[6] && v16 == a3[7] && v11 == v13)
          {

            return CA::OGL::stroke_round_rect(result, a2, 0xF, a4, v11, a5);
          }
        }
      }
    }

    v17 = a2[1];
    if ((LOBYTE(v17[9].f64[0]) & 0x10) != 0)
    {
      v18.f64[0] = vaddvq_f64(vmulq_f64(*v17, *v17));
      v19 = vaddvq_f64(vmulq_f64(v17[2], v17[2]));
      v20 = v17[7].f64[1];
      if (v20 != 1.0)
      {
        v21 = 1.0 / (v20 * v20);
        v18.f64[0] = v21 * v18.f64[0];
        v19 = v21 * v19;
      }

      v22 = v18.f64[0] != 1.0;
      if (v19 != 1.0)
      {
        v22 = 1;
      }

      v23 = sqrt(v18.f64[0]);
      v24 = sqrt(v19);
      if (v22)
      {
        v19 = v24;
        v18.f64[0] = v23;
      }
    }

    else
    {
      v18.f64[0] = v17[8].f64[0];
      v19 = v18.f64[0];
    }

    v25 = a3 + 1;
    v26 = 0.0;
    v27 = 4;
    do
    {
      v28 = *(v25 - 1);
      if (v28 <= *v25)
      {
        v28 = *v25;
      }

      if (v26 <= v28)
      {
        v26 = v28;
      }

      v25 += 2;
      --v27;
    }

    while (v27);
    if (v18.f64[0] <= v19)
    {
      v29 = v19;
    }

    else
    {
      v29 = v18.f64[0];
    }

    v30 = v29 * v26;
    if (a4)
    {
      v30 = v30 * 1.528665;
    }

    if (v30 < 1.0)
    {

      return CA::OGL::stroke_rect(result, a2, a3, a5);
    }

    v31 = 0;
    v18.f64[1] = v19;
    __asm { FMOV            V1.2D, #0.5 }

    v37 = vdivq_f64(_Q1, v18);
    v38 = v6[1];
    v79 = *v6;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    __asm { FMOV            V0.2D, #1.0 }

    v40 = vdivq_f64(_Q0, vsubq_f64(v38, vdupq_lane_s64(COERCE__INT64(a5 + a5), 0)));
    v41 = vcvtq_f64_f32(vcvt_f32_f64(v37));
    v82 = a5;
    v42 = vdivq_f64(_Q0, v38);
    v43 = vnegq_f64(vdupq_lane_s64(*&a5, 0));
    v44 = vdup_n_s32(0x3FC3AB4Bu);
    do
    {
      v45 = vcvt_f32_f64(vmulq_f64(vbslq_s8(vcgtq_f64(*&a3[2 * v31], v41), *&a3[2 * v31], v41), v42));
      *(&v90 + v31) = v45;
      v46 = vmlaq_f64(v43, vcvtq_f64_f32(v45), v38);
      v47 = vcvt_f32_f64(vmulq_f64(vbslq_s8(vcgtq_f64(v41, v46), v41, v46), v40));
      *(&v88 + v31) = v47;
      if (a4)
      {
        *(&v90 + v31) = vmul_f32(v45, v44);
        *(&v88 + v31) = vmul_f32(v47, v44);
      }

      ++v31;
    }

    while (v31 != 4);
    v80 = v38;
    v81 = v40;
    *(*(result + 2) + 16) = 6;
    v86 = 0;
    v87 = 0;
    if (a4)
    {
      v48.i64[0] = __PAIR64__(HIDWORD(v90), v90);
      v49.i64[0] = __PAIR64__(DWORD1(v91), DWORD2(v90));
      v49.i64[1] = __PAIR64__(DWORD1(v90), DWORD2(v91));
      v48.i64[1] = __PAIR64__(HIDWORD(v91), v91);
      v50 = vaddq_f32(v49, v48);
      v51 = vdupq_n_s64(0x400721E8A7A4B61BuLL);
      v52 = vsubq_f64(v51, vdivq_f64(v51, vcvt_hight_f64_f32(v50)));
      v53 = vsubq_f64(v51, vdivq_f64(v51, vcvtq_f64_f32(*v50.f32)));
      v54 = vbslq_s8(vcgtq_f64(v52, _Q0), _Q0, v52);
      v55 = vbslq_s8(vcgtq_f64(v53, _Q0), _Q0, v53);
      v56.i64[0] = __PAIR64__(DWORD1(v89), DWORD2(v88));
      v56.i64[1] = __PAIR64__(DWORD1(v88), DWORD2(v89));
      v85[0] = vcvt_hight_f32_f64(vcvt_f32_f64(vbicq_s8(v55, vcltzq_f64(v55))), vbicq_s8(v54, vcltzq_f64(v54)));
      *&v55.f64[0] = __PAIR64__(HIDWORD(v88), v88);
      *&v55.f64[1] = __PAIR64__(HIDWORD(v89), v89);
      v57 = vaddq_f32(v56, v55);
      v58 = vsubq_f64(v51, vdivq_f64(v51, vcvt_hight_f64_f32(v57)));
      v59 = vsubq_f64(v51, vdivq_f64(v51, vcvtq_f64_f32(*v57.f32)));
      v60 = vbslq_s8(vcgtq_f64(v58, _Q0), _Q0, v58);
      v61 = vbslq_s8(vcgtq_f64(v59, _Q0), _Q0, v59);
      v84[0] = vcvt_hight_f32_f64(vcvt_f32_f64(vbicq_s8(v61, vcltzq_f64(v61))), vbicq_s8(v60, vcltzq_f64(v60)));
      (*(*result + 536))(result, 0, &v90, &v87, a4, v85);
      result = (*(*v10 + 536))(v10, 1, &v88, &v86, a4, v84);
    }

    else
    {
      (*(*result + 528))(result, 0, &v90, &v87);
      result = (*(*v10 + 528))(v10, 1, &v88, &v86);
    }

    if ((*(v10 + 38) & 0xFFFFFFFC) != 0)
    {
      v62 = vaddq_f64(v80, v79);
      v63.f64[0] = v79.f64[0];
      v63.f64[1] = v62.f64[1];
      v85[4] = v63;
      v85[5] = xmmword_183E20E60;
      v64 = *(v10 + 17);
      v85[0] = v79;
      v85[1] = xmmword_183E20E60;
      v85[6] = v62;
      v85[7] = xmmword_183E20E60;
      v62.f64[1] = v79.f64[1];
      v85[2] = v62;
      v85[3] = xmmword_183E20E60;
      v65 = v87;
      *(v64 + 64) = HIDWORD(v87);
      *(v64 + 68) = v65;
      *(v64 + 16) = v65;
      *(v64 + 20) = v65;
      *(v64 + 160) = HIDWORD(v65);
      *(v64 + 164) = HIDWORD(v65);
      *(v64 + 112) = v65;
      v66 = vmulq_n_f64(v81, v82);
      *&v62.f64[0] = vcvt_f32_f64(vsubq_f64(vdupq_lane_s64(COERCE__INT64(*&v86), 0), v66));
      v67 = vcvt_f32_f64(vaddq_f64(v66, vdupq_lane_s64(COERCE__INT64(*(&v86 + 1)), 0)));
      *(v64 + 24) = v62.f64[0];
      *&v66.f64[0] = __PAIR64__(HIDWORD(v62.f64[0]), v67.u32[0]);
      HIDWORD(v62.f64[0]) = v67.i32[1];
      *(v64 + 120) = v62.f64[0];
      *(v64 + 72) = v66.f64[0];
      *(v64 + 168) = v67;
      v68 = *(*(v10 + 2) + 8);
      *(v64 + 32) = v68;
      *(v64 + 80) = v68;
      *(v64 + 128) = v68;
      *(v64 + 176) = v68;
      v69 = a2[3];
      if (v69)
      {
        (v69)(a2, v85, v64, 4);
      }

      CA::OGL::transform_vertices(v85, v64, 4, a2[1]);
      v70 = a2[4];
      if (v70)
      {
        (v70)(a2, v64, 4);
      }

      v71 = *(a2 + 5);
      if ((v71 & 0xF) == 0 || (a2[2] & 9) == 0)
      {
        goto LABEL_57;
      }

      if ((v71 & 4) != 0)
      {
        CA::OGL::aa_adjust_vertices(v64, (v64 + 96), 48, 2);
        v71 = *(a2 + 5);
        if ((v71 & 8) == 0)
        {
LABEL_54:
          if ((v71 & 1) == 0)
          {
            goto LABEL_55;
          }

          goto LABEL_61;
        }
      }

      else if ((v71 & 8) == 0)
      {
        goto LABEL_54;
      }

      CA::OGL::aa_adjust_vertices((v64 + 96), v64, 48, 2);
      v71 = *(a2 + 5);
      if ((v71 & 1) == 0)
      {
LABEL_55:
        if ((v71 & 2) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_56;
      }

LABEL_61:
      CA::OGL::aa_adjust_vertices(v64, (v64 + 48), 96, 2);
      if ((*(a2 + 5) & 2) == 0)
      {
LABEL_57:
        v72 = CA::OGL::Context::need_transparent_source(v10);
        CA::OGL::emit_quad_indices(v10, a2[5], CA::OGL::stroke_uneven_round_rect(CA::OGL::Context &,CA::OGL::RectState const&,CA::Vec2<double> *,double,unsigned int)::indices, 4uLL, 4u);
        result = (*(*v10 + 560))(v10, 0, 0);
        *(*(v10 + 2) + 16) = 0;
        if (v72)
        {
          v84[0] = vcvtq_f64_f32(*v64);
          v73 = *(v64 + 56);
          v74 = vcvtq_f64_f32(*(v64 + 48));
          v84[1] = vcvtq_f64_f32(*(v64 + 8));
          v84[2] = v74;
          v75 = vcvtq_f64_f32(v73);
          v76 = *(v64 + 152);
          v77 = vcvtq_f64_f32(*(v64 + 144));
          v84[3] = v75;
          v84[4] = v77;
          v78 = vcvtq_f64_f32(*(v64 + 96));
          v84[5] = vcvtq_f64_f32(v76);
          v84[6] = v78;
          v84[7] = vcvtq_f64_f32(*(v64 + 104));
          v83 = 0;
          return CA::OGL::emit_quad_surround(v10, v84, &v83);
        }

        return result;
      }

LABEL_56:
      CA::OGL::aa_adjust_vertices((v64 + 48), v64, 96, 2);
      goto LABEL_57;
    }
  }

  return result;
}

uint64_t CA::Render::Updater::ShadowOp::copy(uint64_t a1, uint64_t *a2)
{
  v4 = x_heap_malloc_small_(a2, 0x38uLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 16) = 1;
    *(v4 + 18) = 0;
    *v4 = &unk_1EF1F8408;
  }

  v6 = x_heap_malloc_small_(a2, 0x28uLL);
  if (v6)
  {
    v7 = *(a1 + 24);
    v8 = *v7;
    v9 = v7[1];
    *(v6 + 32) = *(v7 + 4);
    *v6 = v8;
    *(v6 + 16) = v9;
  }

  *(v5 + 24) = v6;
  *(v5 + 32) = *(a1 + 32);
  *(v5 + 36) = *(a1 + 36);
  *(v5 + 44) = *(a1 + 44);
  *(v5 + 48) = *(a1 + 48);
  return v5;
}

void CA::OGL::ShadowNode::apply(uint64_t a1, uint64_t *a2)
{
  v184 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v4 = *(a1 + 16);
    v5 = **(a1 + 8);
    v6 = *(v4 + 24);
    if ((*(v4 + 33) & 8) == 0)
    {
      goto LABEL_27;
    }

    v7 = *(v6 + 48) & 0x480;
    if ((*(v6 + 48) & 0x100) == 0)
    {
      v8 = *(v6 + 136);
      if (v8 && *(v8 + 120))
      {
        v9 = *(v5 + 16);
        if (*(v9 + 496) >= 2u)
        {
          *(v9 + 497) |= 1u;
          v9 = *(v5 + 16);
        }

        *(v9 + 497) |= 2u;
        *(*(v5 + 16) + 368) = 1065353216;
        v10 = *(v6 + 136);
        if (v10)
        {
          v11 = *(v10 + 220);
          v12 = vcvt_f16_f32(*(v10 + 200));
        }

        else
        {
          v12 = 0x3C00000000000000;
          v11 = -32.0;
        }

        *&v164 = v11;
        *&v160 = v12;
        CA::OGL::emit_shadow_path(v5);
        goto LABEL_26;
      }

      if (CA::Render::Layer::supports_cc_edge_effects(v6))
      {
        v20 = *(v6 + 88);
        v164 = *(v6 + 72);
        v165 = v20;
        v21 = *(v5 + 16);
        if (*(v21 + 496) >= 2u)
        {
          *(v21 + 497) |= 1u;
          v8 = *(v6 + 136);
        }

        if (v8)
        {
          v22 = *(v8 + 220);
          v23 = *(v8 + 228);
          v24 = vcvt_f16_f32(*(v8 + 200));
        }

        else
        {
          v24 = 0x3C00000000000000;
          v22 = 0xC040000000000000;
          v23 = 3.0;
        }

        *&v174 = v22;
        *v182.i8 = v24;
        v131 = *(v6 + 37);
        v132 = *(v6 + 48);
        v133 = *(*(v5 + 656) + 24);
        v134 = (*(**(v8 + 56) + 80))(*(v8 + 56));
        v135 = *(v6 + 136);
        if (v135)
        {
          v136 = *(v135 + 64);
          if (v136)
          {
            if (*(v136 + 16) > 3u)
            {
              v155 = vsubq_f64(*(v136 + 40), *(v136 + 24));
              v160 = *(v136 + 24);
              *v161 = v155;
            }

            else
            {
              v160 = 0u;
              *v161 = 0u;
            }
          }

          else
          {
            __asm { FMOV            V0.2D, #0.5 }

            v160 = _Q0;
            *v161 = 0;
            *&v161[8] = 0;
          }

          v153 = *(v135 + 232);
          v152 = *(v135 + 304);
        }

        else
        {
          __asm { FMOV            V0.2D, #0.5 }

          v160 = _Q0;
          *v161 = 0;
          *&v161[8] = 0;
          LOBYTE(_Q0) = *(v6 + 38);
          v152 = _Q0;
          v153 = 0.0;
        }

        CA::OGL::emit_shadow_corner_contents(v5, &v164, &v174, &v182, v131, (v132 >> 7) & 1, v7 == 1024, v133, v23, v153, v152, v134, &v160, HIWORD(*(v6 + 48)) & 1);
        goto LABEL_27;
      }

      *(*(v5 + 16) + 497) &= ~1u;
      v25 = *(v6 + 136);
      if (v25)
      {
        v26 = *(v25 + 228);
        v27 = *(v25 + 220);
        _D0 = vcvt_f16_f32(*(v25 + 200));
      }

      else
      {
        _D0 = 0x3C00000000000000;
        v27 = 0xC040000000000000;
        v26 = 3.0;
      }

      v137 = *(v6 + 37);
      v138 = *(v6 + 48);
      v139 = *a2;
      v140 = *(a1 + 80);
      v167 = 0xF00000000uLL;
      v165 = 0u;
      v166 = 0u;
      v168 = 0uLL;
      if ((*(v140 + 144) & 0x10) != 0)
      {
        v142 = *v140;
        v141.f64[0] = vaddvq_f64(vmulq_f64(v142, v142));
        v143 = *(v140 + 32);
        v144 = vaddvq_f64(vmulq_f64(v143, v143));
        v145 = *(v140 + 120);
        if (v145 != 1.0)
        {
          v146 = 1.0 / (v145 * v145);
          v141.f64[0] = v146 * v141.f64[0];
          v144 = v146 * v144;
        }

        v147 = v141.f64[0] != 1.0;
        if (v144 != 1.0)
        {
          v147 = 1;
        }

        v148 = sqrt(v141.f64[0]);
        v149 = sqrt(v144);
        if (v147)
        {
          v144 = v149;
          v141.f64[0] = v148;
        }
      }

      else
      {
        v141.f64[0] = *(v140 + 128);
        v142 = *v140;
        v143 = *(v140 + 32);
        v144 = v141.f64[0];
      }

      v141.f64[1] = v144;
      *&v164 = vmul_n_f32(vcvt_f32_f64(v141), v26);
      *(&v164 + 1) = vcvt_f32_f64(vmlaq_n_f64(vmulq_n_f64(v142, *&v27), v143, *(&v27 + 1)));
      BYTE8(v168) = (v7 == 1024) << 6;
      if (byte_1ED4E9872)
      {
        _D0 = 0x3C00340000003A00;
      }

      else if (*&_D0 == 0x3C003C003C003C00)
      {
        *_D0.i32 = v137 * 0.0039216;
        __asm { FCVT            H0, S0 }

        v150 = COERCE_DOUBLE(vdup_lane_s16(_D0, 0));
LABEL_159:
        v157 = COERCE_DOUBLE(vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(*(*(v5 + 656) + 32)), vcvtq_f32_f16(*&v150))));
        if (*(*(v5 + 656) + 32) != 0x3C003C003C003C00)
        {
          v150 = v157;
        }

        *(*(v5 + 16) + 8) = v150;
        if ((v138 & 0x80) != 0)
        {
          v158 = 12;
        }

        else
        {
          v158 = 11;
        }

        *(*(v5 + 16) + 16) = v158;
        (*(*v5 + 928))(v5, v139, &v164, 0, 1.0, 1.0);
        *(*(v5 + 16) + 16) = 0;
LABEL_27:
        v29 = (*(*v5 + 232))(v5, 39);
        v33 = *(a1 + 16);
        v34 = *(v33 + 32);
        if (v29)
        {
          if ((v34 & 0x100000000) != 0)
          {
            v35 = *(v6 + 48);
            if ((v35 & 0x800) == 0)
            {
              if ((v35 & 0x2000) != 0)
              {
                v36 = 1.0;
              }

              else
              {
                v36 = 0.0;
              }

              *&v160 = 0;
              goto LABEL_44;
            }
          }

          if ((v34 & 0x40) != 0)
          {
            v37 = *(v6 + 48);
            if ((v37 & 0x1000) == 0)
            {
              if ((v37 & 0x2000) != 0)
              {
                v36 = 1.0;
              }

              else
              {
                v36 = 0.0;
              }

              v30.i32[1] = 0;
              *&v160 = 0;
              if ((v34 & 0x100000000) == 0)
              {
                v38 = 0;
                v39 = 0.0;
                goto LABEL_119;
              }

LABEL_44:
              v44 = *(v6 + 136);
              if (v44)
              {
                v39 = *(v44 + 320);
                v45 = vcvt_f16_f32(*(v44 + 324));
                v46 = *(v44 + 344);
              }

              else
              {
                WORD3(v160) = 15360;
                v46 = 0.0;
                v39 = 0.0;
                v45 = v160;
              }

              v31 = vcvtq_f32_f16(v45);
              v30 = vmulq_n_f32(v31, v46);
              *v30.i8 = vcvt_f16_f32(v30);
              v38 = v30.i64[0];
              if ((v34 & 0x40) == 0)
              {
                v115 = 0;
                goto LABEL_122;
              }

LABEL_119:
              v116 = *(v6 + 136);
              if (v116)
              {
                v117 = *(v116 + 240);
                v30 = *(v116 + 244);
                v115 = vcvt_f16_f32(v30);
LABEL_123:
                v118 = *a2;
                v119 = *(*a2 + 56);
                v120 = *(*a2 + 60);
                if (v119 <= v120)
                {
                  v121 = *(*a2 + 60);
                }

                else
                {
                  v121 = *(*a2 + 56);
                }

                v30.i32[0] = 1073741822;
                v31.i32[0] = v121;
                v122 = vdupq_lane_s32(*&vcgtq_s32(v31, v30), 0);
                v123 = *(v118 + 48);
                v124.i64[0] = v123;
                v124.i64[1] = SHIDWORD(v123);
                v125 = vbslq_s8(v122, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v124));
                v126 = v119;
                v127 = v120;
                if (v121 > 1073741822)
                {
                  v126 = 1.79769313e308;
                  v127 = 1.79769313e308;
                }

                v164 = v125;
                *&v165 = v126;
                *(&v165 + 1) = v127;
                v128 = *(v33 + 24);
                if (v128)
                {
                  v159 = v115;
                  v129 = CA::Render::Layer::process_id(*(v128 + 152));
                  v115 = v159;
                  v130 = v129;
                  v118 = *a2;
                }

                else
                {
                  v130 = 0;
                }

                *&v174 = v38;
                *v182.i8 = v115;
                CA::OGL::emit_large_brim(v5, v118, &v164, &v174, &v182, *(a1 + 80), 0, v130, v39, v36, v117, 0.05);
LABEL_132:
                *(*(v5 + 16) + 497) &= ~1u;
                return;
              }

              v115 = 0x3C00000000000000;
LABEL_122:
              v117 = 0.0;
              goto LABEL_123;
            }
          }
        }

        if ((v34 & 0x100000000) != 0)
        {
          v40 = *(v6 + 136);
          if (v40)
          {
            v41 = *(v40 + 320);
            v42 = vcvt_f16_f32(*(v40 + 324));
            v31.i32[0] = *(v40 + 344);
            v43 = *(v6 + 40);
            v32.i32[0] = *(v40 + 232);
          }

          else
          {
            v42 = 0x3C00000000000000;
            v43 = *(v6 + 40);
            v41 = 0.0;
            v31.i64[0] = 0;
            v32.i32[0] = 0;
          }

          v47 = *(v6 + 48);
          if ((v47 & 0x2000) != 0)
          {
            v48 = 1.0;
          }

          else
          {
            v48 = 0.0;
          }

          v49 = vmulq_n_f32(vcvtq_f32_f16(v42), *v31.i32);
          v50 = vcvt_f16_f32(v49);
          if ((v47 & 0x800) != 0)
          {
            *v32.i64 = *v32.i32;
            v69 = *(v6 + 88);
            v164 = *(v6 + 72);
            v165 = v69;
            *&v160 = v50;
            CA::OGL::emit_rim_rounded_rect(v5, &v164, &v160, BYTE4(v43) & 3, *(*(v5 + 656) + 24), v41, v48, v32, *v32.i64);
          }

          else
          {
            v51 = *a2;
            v52 = *(*a2 + 56);
            v53 = *(*a2 + 60);
            if (v52 <= v53)
            {
              v54 = *(*a2 + 60);
            }

            else
            {
              v54 = *(*a2 + 56);
            }

            v49.i32[0] = 1073741822;
            v31.i32[0] = v54;
            v55 = vdupq_lane_s32(*&vcgtq_s32(v31, v49), 0);
            v56 = *(v51 + 48);
            v57.i64[0] = v56;
            v57.i64[1] = SHIDWORD(v56);
            v58 = vbslq_s8(v55, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v57));
            v59 = 1.79769313e308;
            if (v54 <= 1073741822)
            {
              v60 = v52;
            }

            else
            {
              v60 = 1.79769313e308;
            }

            if (v54 <= 1073741822)
            {
              v59 = v53;
            }

            v177 = v58;
            v178 = v60;
            v179 = v59;
            v61 = *(a1 + 80);
            if (byte_1ED4E9872 == 1)
            {
              v50 = 0x3C00000000003A00;
            }

            *(*(v5 + 16) + 497) |= 1u;
            *(*(v5 + 16) + 16) = 78;
            v173 = 0;
            v164 = xmmword_183E20E00;
            v165 = 0u;
            v166 = xmmword_183E20E60;
            v167 = 0u;
            v168 = 0u;
            v169 = xmmword_183E20E00;
            v170 = 0u;
            v171 = xmmword_183E20E60;
            __asm { FMOV            V0.2D, #1.0 }

            v172 = _Q0;
            *&v160 = &v177;
            *(&v160 + 1) = &v164;
            *v161 = 63;
            *&v161[4] = 0uLL;
            v162 = 0;
            v163 = 0;
            if ((*(v61 + 144) & 0x10) != 0)
            {
              v70 = vaddvq_f64(vmulq_f64(*v61, *v61));
              v71 = vaddvq_f64(vmulq_f64(*(v61 + 32), *(v61 + 32)));
              v72 = *(v61 + 120);
              if (v72 != 1.0)
              {
                v73 = 1.0 / (v72 * v72);
                v70 = v73 * v70;
                v71 = v73 * v71;
              }

              v74 = v70 != 1.0;
              if (v71 != 1.0)
              {
                v74 = 1;
              }

              v75 = sqrt(v70);
              v76 = sqrt(v71);
              if (v74)
              {
                v68 = v76;
              }

              else
              {
                v68 = v71;
              }

              if (v74)
              {
                v67 = v75;
              }

              else
              {
                v67 = v70;
              }
            }

            else
            {
              v67 = *(v61 + 128);
              v68 = v67;
            }

            CA::OGL::Context::bind_surface(v5, v51, 0, 0, 0, 0.0);
            v77 = vcvtq_f32_f16(v50);
            if (v67 >= v68)
            {
              v78 = v68;
            }

            else
            {
              v78 = v67;
            }

            v79 = v78 * v41;
            if (v79 > 5.0)
            {
              v79 = 5.0;
            }

            if (v79 < 0.0)
            {
              v79 = 0.0;
            }

            *(v5 + 160) = v77;
            *(v5 + 240) = v79;
            *(v5 + 244) = 0;
            *(v5 + 248) = v48;
            v80 = v79;
            *&v174 = *v177.i64 - v79;
            *(&v174 + 1) = v177.i64[0];
            *&v175 = v178 + *v177.i64;
            *(&v175 + 1) = v178 + *v177.i64 + v79;
            *v182.i64 = *&v177.i64[1] - v79;
            v182.i64[1] = v177.i64[1];
            v183.f64[0] = v179 + *&v177.i64[1];
            v183.f64[1] = v179 + *&v177.i64[1] + v79;
            v181[0] = -v79;
            v181[1] = 0.0;
            v81 = v178;
            v82 = v178 + v79;
            v181[2] = v81;
            v181[3] = v82;
            v180[0] = -v79;
            v180[1] = 0.0;
            v83 = v179;
            *&v80 = v179 + v80;
            v180[2] = v83;
            v180[3] = *&v80;
            CA::OGL::emit_nine_part_rect(v5, &v160, &v174, &v182, v181, v180, 0, 0, 0);
            CA::OGL::Context::unbind_surface(v5, v51, 0);
            *(*(v5 + 16) + 16) = 0;
          }
        }

        *(*(v5 + 16) + 497) |= 1u;
        v175 = 0u;
        v176 = 0u;
        v174 = 0u;
        CA::Shape::operator=(&v174, (*a2 + 48));
        v84 = CA::Shape::intersect(&v174, *(a1 + 64));
        if ((byte_1ED4E9871 & 1) == 0)
        {
          v87 = *a2;
          v164 = 0uLL;
          CA::OGL::emit_combine(v5, 1u, v87, 0, v84, &v164);
        }

        if ((*(*(a1 + 16) + 32) & 0x40) != 0)
        {
          v88 = *a2;
          v89 = *(v88 + 56);
          v90 = *(v88 + 60);
          if (v89 <= v90)
          {
            v91 = *(v88 + 60);
          }

          else
          {
            v91 = *(v88 + 56);
          }

          v85.i32[0] = 1073741822;
          v86.i32[0] = v91;
          v92 = vdupq_lane_s32(*&vcgtq_s32(v86, v85), 0);
          v93 = *(v88 + 48);
          v94.i64[0] = v93;
          v94.i64[1] = SHIDWORD(v93);
          v95 = vbslq_s8(v92, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v94));
          v96 = v89;
          v97 = v90;
          if (v91 > 1073741822)
          {
            v96 = 1.79769313e308;
            v97 = 1.79769313e308;
          }

          v182 = v95;
          v183.f64[0] = v96;
          v183.f64[1] = v97;
          v98 = *(v6 + 136);
          if (v98)
          {
            v99 = vcvt_f16_f32(*(v98 + 244));
            v100 = *(v98 + 240);
          }

          else
          {
            v99 = 0x3C00000000000000;
            v100 = 0.0;
          }

          v101 = *(a1 + 80);
          if (byte_1ED4E9872 == 1)
          {
            v99 = 0x3C0034CD34CD3A66;
          }

          *(*(v5 + 16) + 497) |= 1u;
          *(*(v5 + 16) + 16) = 78;
          v173 = 0;
          v164 = xmmword_183E20E00;
          v165 = 0u;
          v166 = xmmword_183E20E60;
          v167 = 0u;
          v168 = 0u;
          v169 = xmmword_183E20E00;
          v170 = 0u;
          v171 = xmmword_183E20E60;
          __asm { FMOV            V0.2D, #1.0 }

          v172 = _Q0;
          *&v160 = &v182;
          *(&v160 + 1) = &v164;
          *v161 = 63;
          *&v161[4] = 0;
          v162 = 0;
          *&v161[12] = 0;
          v163 = 0;
          if ((*(v101 + 144) & 0x10) != 0)
          {
            v105 = vaddvq_f64(vmulq_f64(*v101, *v101));
            v106 = vaddvq_f64(vmulq_f64(*(v101 + 32), *(v101 + 32)));
            v107 = *(v101 + 120);
            if (v107 != 1.0)
            {
              v108 = 1.0 / (v107 * v107);
              v105 = v108 * v105;
              v106 = v108 * v106;
            }

            v109 = v105 != 1.0;
            if (v106 != 1.0)
            {
              v109 = 1;
            }

            v110 = sqrt(v105);
            v111 = sqrt(v106);
            if (v109)
            {
              v104 = v111;
            }

            else
            {
              v104 = v106;
            }

            if (v109)
            {
              v103 = v110;
            }

            else
            {
              v103 = v105;
            }
          }

          else
          {
            v103 = *(v101 + 128);
            v104 = v103;
          }

          CA::OGL::Context::bind_surface(v5, v88, 0, 0, 0, 0.0);
          v112 = vcvtq_f32_f16(v99);
          if (v103 >= v104)
          {
            v113 = v104;
          }

          else
          {
            v113 = v103;
          }

          v114 = v113 * v100;
          if (v114 > 5.0)
          {
            v114 = 5.0;
          }

          if (v114 < 0.0)
          {
            v114 = 0.0;
          }

          *(v5 + 160) = v112;
          *(v5 + 240) = v114;
          *(v5 + 244) = 1065353216;
          v177.i64[0] = 0;
          v177.u64[1] = vcvt_f32_f64(v183);
          CA::OGL::emit_one_part_rect(v5, &v160, &v177, 0, 0);
          CA::OGL::Context::unbind_surface(v5, v88, 0);
          *(*(v5 + 16) + 16) = 0;
        }

        CA::Shape::unref(v84);
        goto LABEL_132;
      }

      v150 = COERCE_DOUBLE(vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(_D0), v137 * 0.0039216)));
      goto LABEL_159;
    }

    v13 = *(v6 + 88);
    v164 = *(v6 + 72);
    v165 = v13;
    v14 = *(v5 + 16);
    if (*(v14 + 496) >= 2u)
    {
      *(v14 + 497) |= 1u;
      v14 = *(v5 + 16);
    }

    *(v14 + 497) |= 2u;
    *(*(v5 + 16) + 368) = 1065353216;
    v15 = *(v6 + 136);
    if (v15)
    {
      v16 = *(v15 + 72);
      if (v16)
      {
        *&v160 = *(v15 + 220);
        v156 = *(v15 + 228);
        *&v174 = vcvt_f16_f32(*(v15 + 200));
        CA::OGL::emit_shadow_uneven_round_rect(v5, &v164, &v160, (v16 + 24), &v174, *(v6 + 37), (*(v6 + 48) >> 7) & 1, v7 == 1024, v156, *(v6 + 44) & 3, *(*(v5 + 656) + 24));
        goto LABEL_26;
      }

      *&v160 = *(v15 + 220);
      v17 = *(v15 + 232);
      v18 = *(v15 + 228);
      v19 = vcvt_f16_f32(*(v15 + 200));
    }

    else
    {
      *&v160 = 0xC040000000000000;
      v19 = 0x3C00000000000000;
      v18 = 3.0;
      v17 = 0.0;
    }

    *&v174 = v19;
    CA::OGL::emit_shadow_round_rect(v5, &v164, &v160, &v174, *(v6 + 37), (*(v6 + 48) >> 7) & 1, v7 == 1024, *(v6 + 44) & 3, v17, v18, *(v6 + 42) & 0xF, *(a1 + 80));
LABEL_26:
    *(*(v5 + 16) + 497) &= ~2u;
    goto LABEL_27;
  }
}

char *CAIOSurfaceWriteToFileWithSuffix(__IOSurface *a1, const char *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  if (CADeviceHasInternalBuild::once != -1)
  {
    dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
  }

  if (CADeviceHasInternalBuild::internal != 1)
  {
    goto LABEL_23;
  }

  if (!a1)
  {
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v19 = x_log_get_utilities::log;
    if (!os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v20 = "Failed to dump surface - No surface to dump!";
    goto LABEL_72;
  }

  Width = IOSurfaceGetWidth(a1);
  Height = IOSurfaceGetHeight(a1);
  PixelFormat = IOSurfaceGetPixelFormat(a1);
  v8 = IOSurfaceCopyValue(a1, @"CreationProperties");
  if (v8)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v8);
    if (!MutableCopy)
    {
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v23 = x_log_get_utilities::log;
      if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_183AA6000, v23, OS_LOG_TYPE_ERROR, "Failed to dump surface - Unable to create dictionary from surface properties.", buf, 2u);
      }

      v21 = 0;
      goto LABEL_70;
    }

    IOSurfaceLock(a1, 1u, 0);
    BaseAddress = IOSurfaceGetBaseAddress(a1);
    if (BaseAddress)
    {
      AllocSize = IOSurfaceGetAllocSize(a1);
      value = CFDataCreate(0, BaseAddress, AllocSize);
      IOSurfaceUnlock(a1, 1u, 0);
      if (value)
      {
        CFDictionarySetValue(MutableCopy, @"IOSurfaceData", value);
        v48 = 0;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        *buf = 0u;
        v41 = 0u;
        if (!IOSurfaceGetBulkAttachments())
        {
          DictionaryFromBulkAttachments = createDictionaryFromBulkAttachments(buf);
          CFDictionarySetValue(MutableCopy, @"IOSurfaceBulkAttachments", DictionaryFromBulkAttachments);
        }

        v13 = *MEMORY[0x1E696CEF0];
        v14 = IOSurfaceCopyValue(a1, *MEMORY[0x1E696CEF0]);
        cf = v14;
        if (v14)
        {
          CFDictionarySetValue(MutableCopy, v13, v14);
        }

        Data = CFPropertyListCreateData(0, MutableCopy, kCFPropertyListBinaryFormat_v1_0, 0, 0);
        if (Data)
        {
          *v39 = 0;
          add = atomic_fetch_add(CAIOSurfaceWriteToFileWithSuffix::sid, 1u);
          v16 = HIBYTE(PixelFormat);
          v17 = MEMORY[0x1E69E9830];
          if (PixelFormat < 0)
          {
            v18 = __maskrune(v16, 0x40000uLL);
          }

          else
          {
            v18 = *(MEMORY[0x1E69E9830] + 4 * v16 + 60) & 0x40000;
          }

          LODWORD(v27) = PixelFormat >> 24;
          if (v18)
          {
            v27 = v27;
          }

          else
          {
            v27 = 32;
          }

          v35 = v27;
          if (BYTE2(PixelFormat) <= 0x7Fu)
          {
            v28 = *(v17 + 4 * BYTE2(PixelFormat) + 60) & 0x40000;
          }

          else
          {
            v28 = __maskrune(BYTE2(PixelFormat), 0x40000uLL);
          }

          if (v28)
          {
            v29 = SBYTE2(PixelFormat);
          }

          else
          {
            v29 = 32;
          }

          v34 = v29;
          if (BYTE1(PixelFormat) <= 0x7Fu)
          {
            v30 = *(v17 + 4 * BYTE1(PixelFormat) + 60) & 0x40000;
          }

          else
          {
            v30 = __maskrune(BYTE1(PixelFormat), 0x40000uLL);
          }

          if (PixelFormat <= 0x7Fu)
          {
            v31 = *(v17 + 4 * PixelFormat + 60) & 0x40000;
          }

          else
          {
            v31 = __maskrune(PixelFormat, 0x40000uLL);
          }

          if (v30)
          {
            v32 = SBYTE1(PixelFormat);
          }

          else
          {
            v32 = 32;
          }

          if (v31)
          {
            v33 = PixelFormat;
          }

          else
          {
            v33 = 32;
          }

          asprintf(v39, "iosurface-%03d-%zu-%zu-%c%c%c%c-%s-XXXXXX.plist", add, Width, Height, v35, v34, v32, v33, a2);
          v21 = CA_CFDataWriteTempFile(Data, *v39, 6);
          free(*v39);
          CFRelease(Data);
        }

        else
        {
          if (x_log_get_utilities::once != -1)
          {
            dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
          }

          v26 = x_log_get_utilities::log;
          if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
          {
            *v39 = 0;
            _os_log_error_impl(&dword_183AA6000, v26, OS_LOG_TYPE_ERROR, "Failed to dump surface - Unable to create plist.", v39, 2u);
          }

          v21 = 0;
        }

        if (cf)
        {
          CFRelease(cf);
        }

        CFRelease(value);
        goto LABEL_69;
      }

      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v24 = x_log_get_utilities::log;
      if (!os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
      {
LABEL_37:
        v21 = 0;
LABEL_69:
        CFRelease(MutableCopy);
LABEL_70:
        CFRelease(v8);
        goto LABEL_24;
      }

      *buf = 0;
      v25 = "Failed to dump surface - Unable to copy data from surface.";
    }

    else
    {
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v24 = x_log_get_utilities::log;
      if (!os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      *buf = 0;
      v25 = "Failed to dump surface - Surface does not have any data.";
    }

    _os_log_error_impl(&dword_183AA6000, v24, OS_LOG_TYPE_ERROR, v25, buf, 2u);
    goto LABEL_37;
  }

  if (x_log_get_utilities::once != -1)
  {
    dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
  }

  v19 = x_log_get_utilities::log;
  if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v20 = "Failed to dump surface - Could not retrieve surface properties.";
LABEL_72:
    _os_log_error_impl(&dword_183AA6000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
  }

LABEL_23:
  v21 = 0;
LABEL_24:
  objc_autoreleasePoolPop(v4);
  return v21;
}

void sub_183C1F800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, CFTypeRef cf, CFTypeRef a21)
{
  CFRelease(cf);
  CFRelease(a21);
  CFRelease(v23);
  CFRelease(v22);
  objc_autoreleasePoolPop(v21);
  _Unwind_Resume(a1);
}

void CA_CGColorSpaceGetCString(CGColorSpace *a1, char *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  v4 = CGColorSpaceCopyICCProfileDescription();
  if (v4 || (v4 = CGColorSpaceCopyName(a1)) != 0)
  {
    v5 = v4;
    CFStringGetCString(v4, a2, 128, 0x8000100u);

    CFRelease(v5);
  }
}

void _XGetSurfaceReplaceability(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(a1 + 36) || *(a1 + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  v8[0] = *(a1 + 56);
  v8[1] = v5;
  if ((CA::Render::Server::audit_token_cache_lookup(v8, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(v8, v6) & 0x20000) != 0)
  {
    v3 = -81182719;
    goto LABEL_7;
  }

  if (v4)
  {
    v7 = v4;
    CA::Render::post_notification(0x33u, 0, &v7, 0);
    *(a2 + 36) = BYTE4(v7);
  }

  *(a2 + 32) = 0;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  *(a2 + 4) = 40;
}

_BYTE *CA::WindowServer::Server::get_surface_replaceability(CA::WindowServer::Server *this, CA::Render::Object *a2, _BYTE *a3, void *a4)
{
  result = *(a2 + 12);
  if ((result[904] & 0x80) != 0)
  {
    result = (*(*result + 1664))(result, *a3);
    a3[4] = result;
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::surface_is_replaceable(CA::WindowServer::IOMFBDisplay *this, int a2)
{
  os_unfair_lock_lock(&CA::WindowServer::IOMFBDisplay::_displays_lock);
  v3 = *CA::WindowServer::IOMFBDisplay::_displays;
  v4 = *(CA::WindowServer::IOMFBDisplay::_displays + 8);
  if (*CA::WindowServer::IOMFBDisplay::_displays == v4)
  {
LABEL_19:
    v16 = 1;
    goto LABEL_20;
  }

  v17 = *(CA::WindowServer::IOMFBDisplay::_displays + 8);
  while (1)
  {
    v5 = *v3;
    if (!*(*v3 + 82) || !CA::WindowServer::Display::is_enabled_for_vsync_render(*v3))
    {
      goto LABEL_18;
    }

    pthread_mutex_lock((v5 + 25848));
    v6 = *(v5 + 6460);
    if (v6)
    {
      break;
    }

    pthread_mutex_unlock((v5 + 25848));
LABEL_18:
    if (++v3 == v4)
    {
      goto LABEL_19;
    }
  }

  v7 = 0;
  v8 = *(v5 + 6458);
  v9 = 1;
  v10 = *(v5 + 6460);
  do
  {
    if (v8 == v6)
    {
      v11 = 0;
    }

    else
    {
      v11 = v8;
    }

    v12 = v5 + 48 * v11 + 25912;
    if (*v12)
    {
      if (*(v12 + 24))
      {
        v13 = *(v12 + 16);
        if (v13)
        {
          v14 = (*(*v13 + 192))(v13);
          v9 = (v14 != a2) & (v7 | v9);
          v7 |= v14 == a2;
        }
      }
    }

    v8 = v11 + 1;
    --v10;
  }

  while (v10);
  pthread_mutex_unlock((v5 + 25848));
  v4 = v17;
  if (v9)
  {
    goto LABEL_18;
  }

  v16 = 0;
LABEL_20:
  os_unfair_lock_unlock(&CA::WindowServer::IOMFBDisplay::_displays_lock);
  return v16;
}

BOOL CA::WindowServer::Display::is_enabled_for_replay_render_with_mode(CA::WindowServer::Display *this)
{
  if (!*(this + 82))
  {
    return 0;
  }

  v1 = *(this + 96);
  if (((*(*this + 240))(this) & 1) != 0 || (v2 = atomic_load(v1 + 1), v2 != 1))
  {
    v3 = atomic_load(v1);
    if (v3 != 1)
    {
      return 0;
    }
  }

  v4 = atomic_load(v1);
  if (v4 != 1)
  {
    v5 = atomic_load(v1 + 1);
    if (v5 != 1)
    {
      return 0;
    }
  }

  v6 = atomic_load(v1 + 5);
  if (v6 != 1)
  {
    return 0;
  }

  v7 = atomic_load(v1 + 3);
  return v7 == 2;
}

void *std::__tree<std::tuple<unsigned short,unsigned short>>::__find_leaf_high(uint64_t a1, void *a2, unsigned __int16 a3, unsigned __int16 a4)
{
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    do
    {
      while (1)
      {
        v4 = v5;
        v7 = *(v5 + 13);
        v8 = v7 == a3;
        if (v7 <= a3)
        {
          v9 = 1;
        }

        else
        {
          v9 = -1;
        }

        if (v8)
        {
          v10 = *(v5 + 14);
          v11 = v10 == a4;
          if (v10 <= a4)
          {
            v9 = 1;
          }

          else
          {
            v9 = -1;
          }

          if (v11)
          {
            v9 = 0;
          }
        }

        if ((v9 & 0x80) == 0)
        {
          break;
        }

        v5 = *v5;
        v12 = v4;
        if (!*v4)
        {
          goto LABEL_18;
        }
      }

      v5 = v5[1];
    }

    while (v5);
    v12 = v4 + 1;
  }

  else
  {
    v12 = v4;
  }

LABEL_18:
  *a2 = v4;
  return v12;
}

uint64_t *std::__tree<std::tuple<unsigned short,unsigned short>>::__find_equal<std::tuple<unsigned short,unsigned short>>(uint64_t a1, void *a2, unsigned __int16 a3, unsigned __int16 a4)
{
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    while (1)
    {
      v7 = v5;
      v8 = *(v5 + 13);
      if (v8 == a3)
      {
        v9 = *(v7 + 14);
        v10 = v9 == a4;
        if (v9 <= a4)
        {
          if (v9 >= a4)
          {
            v11 = 1;
          }

          else
          {
            v11 = -1;
          }

          if (v10)
          {
            v11 = 0;
          }

          if ((v11 & 0x80) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_18;
        }

LABEL_12:
        v5 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v8 > a3)
        {
          goto LABEL_12;
        }

        if (v8 >= a3)
        {
          v12 = 1;
        }

        else
        {
          v12 = -1;
        }

        if ((v12 & 0x80) == 0)
        {
          goto LABEL_21;
        }

LABEL_18:
        result = v7 + 1;
        v5 = v7[1];
        if (!v5)
        {
          goto LABEL_21;
        }
      }
    }
  }

  v7 = result;
LABEL_21:
  *a2 = v7;
  return result;
}

uint64_t CA::WindowServer::Display::Mode::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v2 = 1;
  }

  else
  {
    v3.i64[0] = a1;
    v3.i64[1] = a2;
    v4 = vshrn_n_s64(v3, 0x1DuLL);
    v5.i64[0] = v4.i32[0] & 0x1FFFFFF;
    v5.i64[1] = v4.i32[1] & 0x1FFFFFF;
    v6 = vbslq_s8(vdupq_n_s64(0x3FFFFFE0000000uLL), vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v5), vdupq_n_s64(0x3F59000000000000uLL))), vdupq_n_s64(0x40847AE147AE147BuLL))), 0x1DuLL), v3);
    v2 = vmovn_s64(vceqq_s64(v6, vdupq_laneq_s64(v6, 1))).u8[0];
  }

  return v2 & 1;
}

void *std::__tree<std::tuple<unsigned short,unsigned short>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

void CA::CG::Queue::collect_callback(CA::CG::Queue *this, void *a2)
{
  v2 = 0;
  do
  {
    os_unfair_lock_lock(&CA::CG::AccelRenderer::_list_lock);
    v3 = CA::CG::AccelRenderer::_list;
    if (!CA::CG::AccelRenderer::_list)
    {
LABEL_13:
      os_unfair_lock_unlock(&CA::CG::AccelRenderer::_list_lock);
      break;
    }

    while (1)
    {
      if (v2 && v3 != v2)
      {
        goto LABEL_7;
      }

      if (*(v3 + 4276) != 1)
      {
        break;
      }

      v2 = 0;
LABEL_7:
      v3 = *(v3 + 4320);
      if (!v3)
      {
        goto LABEL_13;
      }
    }

    os_unfair_lock_lock((v3 + 4272));
    v2 = *(v3 + 4320);
    os_unfair_lock_unlock(&CA::CG::AccelRenderer::_list_lock);
    if (*(v3 + 8))
    {
      CA::CG::Renderer::end_rendering(v3);
      v4 = *(v3 + 8);
      v5 = mach_absolute_time();
      *(v4 + 648) = CATimeWithHostTime(v5);
      CA::CG::Renderer::update_finished_seed(v3);
      CA::CG::Renderer::collect_(v3);
    }

    os_unfair_lock_unlock((v3 + 4272));
  }

  while (v2);

  CA::CG::Renderer::flush_released_objects(v6);
}

void CA::CG::Renderer::flush_released_objects(CA::CG::Renderer *this)
{
  v5 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&CA::CG::_released_objects_lock);
  v1 = CA::CG::_released_objects;
  v2 = CA::CG::_released_objects_count;
  CA::CG::_released_objects = 0;
  CA::CG::_released_objects_count = 0;
  os_unfair_lock_unlock(&CA::CG::_released_objects_lock);
  if (v1)
  {
    if (CA::CG::release_queue(void)::once != -1)
    {
      dispatch_once(&CA::CG::release_queue(void)::once, &__block_literal_global_19);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CA2CG8Renderer22flush_released_objectsEv_block_invoke;
    block[3] = &__block_descriptor_tmp_10;
    v4 = v2;
    block[4] = v1;
    dispatch_async(CA::CG::release_queue(void)::queue, block);
  }
}

BOOL CA::OGL::ShadowNode::needs_surface(CA::OGL::ShadowNode *this, char a2)
{
  if (a2)
  {
    return 1;
  }

  v4 = *(*(this + 2) + 24);
  if (*(v4 + 49))
  {
    return *(this + 136) != 3;
  }

  v5 = *(v4 + 136);
  if (v5)
  {
    if (*(v5 + 120))
    {
      return *(this + 136) != 3;
    }
  }

  return !CA::Render::Layer::supports_cc_edge_effects(v4) || *(this + 136) != 3;
}

CA::OGL::ShadowNode *CA::OGL::ShadowNode::compute_dod(CA::OGL::ShadowNode *this, int32x2_t *a2, double *a3, int32x4_t a4, int32x4_t a5, double a6, int32x4_t a7)
{
  v48 = *MEMORY[0x1E69E9840];
  v8 = *(*(this + 2) + 24);
  if ((*(v8 + 48) & 0x80) != 0)
  {
    *a2->i8 = xmmword_183E21120;
    return this;
  }

  v9 = this;
  v10 = *(this + 3);
  v11 = v10[38];
  if (v11 < 0)
  {
    (*(*v10 + 40))(*(this + 3), v10 + 36);
    v11 = v10[38];
  }

  v12 = v10[36];
  a2->i32[0] = v12;
  v13 = v10[37];
  a2->i32[1] = v13;
  a2[1].i32[0] = v11;
  v14 = v10[39];
  a2[1].i32[1] = v14;
  v45 = __PAIR64__(v13, v12);
  v46 = __PAIR64__(v14, v11);
  if (*(v8 + 49))
  {
    v18 = *(v8 + 88);
    v23 = vceqzq_f64(v18);
    v20 = vdupq_laneq_s64(v23, 1);
    if ((vorrq_s8(v20, v23).u64[0] & 0x8000000000000000) == 0)
    {
      v24 = vceqq_f64(v18, v18);
      v20 = vdupq_laneq_s64(vmvnq_s8(v24), 1);
      if ((vornq_s8(v20, v24).u64[0] & 0x8000000000000000) == 0)
      {
        v22 = *(v8 + 72);
        goto LABEL_14;
      }

LABEL_17:
      v29 = 0;
      v28 = 0uLL;
      goto LABEL_18;
    }

LABEL_16:
    v28 = 0uLL;
    v29 = 0;
    goto LABEL_18;
  }

  v15 = *(v8 + 136);
  if (v15)
  {
    v16 = *(v15 + 120);
    if (v16)
    {
      v17 = CA::Render::Path::bounding_rect(v16);
      v18 = v17[1];
      v19 = vceqzq_f64(v18);
      v20 = vdupq_laneq_s64(v19, 1);
      if ((vorrq_s8(v20, v19).u64[0] & 0x8000000000000000) == 0)
      {
        v21 = vceqq_f64(v18, v18);
        v20 = vdupq_laneq_s64(vmvnq_s8(v21), 1);
        if ((vornq_s8(v20, v21).u64[0] & 0x8000000000000000) == 0)
        {
          v22 = *v17;
LABEL_14:
          v25 = vminnmq_f64(vaddq_f64(v22, v18), vdupq_n_s64(0x41C0000000000000uLL));
          v26 = vcvtmq_s64_f64(vmaxnmq_f64(v22, vdupq_n_s64(0xC1BFFFFFFF000000)));
          v20 = vsubq_s64(vcvtpq_s64_f64(v25), v26);
          *&v25.f64[0] = vmovn_s64(v26);
          v27.i64[0] = SLODWORD(v25.f64[0]);
          v27.i64[1] = SHIDWORD(v25.f64[0]);
          v28 = vcvtq_f64_s64(v27);
          v29 = vmovn_s64(v20);
LABEL_18:
          v31 = v29.i32[0];
          if (v29.i32[0] <= v29.i32[1])
          {
            v31 = v29.i32[1];
          }

          v20.i32[0] = v31;
          a7.i32[0] = 1073741822;
          v32 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v20, a7), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), v28);
          v33.i64[0] = v29.i32[0];
          v33.i64[1] = v29.i32[1];
          v34 = vcvtq_f64_s64(v33);
          v35 = vdup_n_s32(v31 > 1073741822);
          v33.i64[0] = v35.u32[0];
          v33.i64[1] = v35.u32[1];
          v43 = v32;
          v44 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v33, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v34);
          v30 = *(v9 + 10);
          CA::Rect::apply_transform(&v43, v30, a3);
          a4 = v44;
          v36 = vceqzq_f64(v44);
          if ((vorrq_s8(vdupq_laneq_s64(v36, 1), v36).u64[0] & 0x8000000000000000) != 0)
          {
            a5 = 0uLL;
          }

          else
          {
            v37 = vceqq_f64(v44, v44);
            v38 = vornq_s8(vdupq_laneq_s64(vmvnq_s8(v37), 1), v37).u64[0];
            a5 = 0uLL;
            if ((v38 & 0x8000000000000000) == 0)
            {
              v39 = vcvtmq_s64_f64(vmaxnmq_f64(v43, vdupq_n_s64(0xC1BFFFFFFF000000)));
              a4 = vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v43, v44), vdupq_n_s64(0x41C0000000000000uLL))), v39);
              a5 = vuzp1q_s32(v39, a4);
            }
          }

          v47 = a5;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  v47.i64[0] = __PAIR64__(v13, v12);
  v47.i64[1] = __PAIR64__(v14, v11);
  v30 = *(v9 + 10);
LABEL_25:
  CA::OGL::ShadowNode::map_bounds(*(*(v9 + 2) + 24), v30, &v47, 1, a4, a5);
  CA::BoundsImpl::Union(a2, *v47.i8, v47.u64[1]);
  CA::OGL::ShadowNode::map_bounds_rim(v9, &v45, v40, v41, v42);
  return CA::BoundsImpl::Union(a2, v45, v46);
}

void CA::OGL::ShadowNode::map_bounds(CA::OGL::ShadowNode *this, float64x2_t *a2, uint64_t a3, int a4, int32x4_t a5, int32x4_t a6)
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 8);
  v11 = *(a3 + 12);
  if (v10 <= v11)
  {
    v12 = *(a3 + 12);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  a5.i32[0] = 1073741822;
  a6.i32[0] = v12;
  v13.i64[0] = *a3;
  v13.i64[1] = HIDWORD(*a3);
  v14 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(a6, a5), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v13));
  v15 = v10;
  if (v12 > 1073741822)
  {
    v15 = 1.79769313e308;
  }

  v30 = v14;
  if (v12 <= 1073741822)
  {
    v16 = v11;
  }

  else
  {
    v16 = 1.79769313e308;
  }

  v31.f64[0] = v15;
  v31.f64[1] = v16;
  CA::Rect::unapply_transform(&v30, a2, a3);
  v20 = *(this + 17);
  if (v20)
  {
    *v18.i64 = v20[57] * -2.8;
  }

  else
  {
    v18.i64[0] = 0xC020CCCCCCCCCCCCLL;
  }

  if (v31.f64[0] <= v31.f64[1])
  {
    v21 = v31.f64[1];
  }

  else
  {
    v21 = v31.f64[0];
  }

  if (v21 < 1.79769313e308)
  {
    v22 = v31.f64[0] >= v31.f64[1] ? v31.f64[1] : v31.f64[0];
    if (v22 > 0.0)
    {
      v30 = vaddq_f64(v30, vdupq_lane_s64(v18.i64[0], 0));
      v23 = *v18.i64 * -2.0;
      v24 = v23 + v31.f64[0];
      *v18.i64 = v23 + v31.f64[1];
      v31.f64[0] = v24;
      *&v31.f64[1] = v18.i64[0];
      if (v24 <= 0.0 || *v18.i64 <= 0.0)
      {
        v31 = 0uLL;
      }
    }
  }

  v18.i32[0] = -1.0;
  if (a4)
  {
    *v18.i32 = 1.0;
  }

  if (v20)
  {
    v25 = v20[56];
    *v19.i32 = v20[55] * *v18.i32;
  }

  else
  {
    v19.i64[0] = 0;
    v26.i64[0] = 0x8000000080000000;
    v26.i64[1] = 0x8000000080000000;
    v19.i32[0] = vbslq_s8(v26, v19, v18).u32[0];
    v25 = -3.0;
  }

  *&v19.i32[1] = v25 * *v18.i32;
  v30 = vaddq_f64(v30, vcvtq_f64_f32(*v19.i8));
  CA::Rect::apply_transform(&v30, a2, v17);
  v27 = vceqzq_f64(v31);
  if ((vorrq_s8(vdupq_laneq_s64(v27, 1), v27).u64[0] & 0x8000000000000000) != 0 || (v28 = vceqq_f64(v31, v31), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v28), 1), v28).u64[0] & 0x8000000000000000) != 0))
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    v29 = vcvtmq_s64_f64(vmaxnmq_f64(v30, vdupq_n_s64(0xC1BFFFFFFF000000)));
    *a3 = vuzp1q_s32(v29, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v30, v31), vdupq_n_s64(0x41C0000000000000uLL))), v29));
  }
}

void CA::OGL::ShadowNode::map_bounds_rim(CA::OGL::ShadowNode *this, CA::Bounds *a2, const double *a3, int32x4_t a4, int32x4_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  if (v7 <= v8)
  {
    v9 = *(a2 + 3);
  }

  else
  {
    v9 = *(a2 + 2);
  }

  a4.i32[0] = 1073741822;
  a5.i32[0] = v9;
  v10.i64[0] = *a2;
  v10.i64[1] = HIDWORD(*a2);
  v11 = v7;
  v12 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(a5, a4), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v10));
  v13 = v8;
  if (v9 > 1073741822)
  {
    v11 = 1.79769313e308;
    v13 = 1.79769313e308;
  }

  v26 = v12;
  v27.f64[0] = v11;
  v27.f64[1] = v13;
  v14 = *(this + 10);
  CA::Rect::unapply_transform(&v26, v14, a3);
  v16 = *(*(*(this + 2) + 24) + 136);
  if (v16)
  {
    v17 = *(v16 + 320);
  }

  else
  {
    v17 = 0.0;
  }

  if (v27.f64[0] <= v27.f64[1])
  {
    v18 = v27.f64[1];
  }

  else
  {
    v18 = v27.f64[0];
  }

  if (v18 < 1.79769313e308)
  {
    v19 = v27.f64[0] >= v27.f64[1] ? v27.f64[1] : v27.f64[0];
    if (v19 > 0.0)
    {
      v26 = vaddq_f64(v26, vdupq_lane_s64(COERCE__INT64(-v17), 0));
      v20 = v17 + v17;
      v21 = v20 + v27.f64[0];
      v22 = v20 + v27.f64[1];
      v27.f64[0] = v21;
      v27.f64[1] = v22;
      if (v21 <= 0.0 || v22 <= 0.0)
      {
        v27 = 0uLL;
      }
    }
  }

  CA::Rect::apply_transform(&v26, v14, v15);
  v23 = vceqzq_f64(v27);
  if ((vorrq_s8(vdupq_laneq_s64(v23, 1), v23).u64[0] & 0x8000000000000000) != 0 || (v24 = vceqq_f64(v27, v27), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v24), 1), v24).u64[0] & 0x8000000000000000) != 0))
  {
    *a2 = 0;
    *(a2 + 1) = 0;
  }

  else
  {
    v25 = vcvtmq_s64_f64(vmaxnmq_f64(v26, vdupq_n_s64(0xC1BFFFFFFF000000)));
    *a2 = vuzp1q_s32(v25, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v26, v27), vdupq_n_s64(0x41C0000000000000uLL))), v25));
  }
}

uint64_t CA::OGL::ShadowNode::add_roi(float64x2_t **this, int32x2_t *a2, double a3, int32x4_t a4)
{
  v4 = a2;
  v5 = this;
  v27 = *MEMORY[0x1E69E9840];
  v6 = this[2][1].f64[1];
  if ((*(*&v6 + 49) & 1) == 0)
  {
    v7 = *(*&v6 + 136);
    if (!v7 || !*(v7 + 120))
    {
      v25 = *a2->i8;
      v26 = v25;
      CA::OGL::ShadowNode::map_bounds(*&v6, this[10], &v26, 0, v25, a4);
      v9.i32[1] = v25.i32[3];
      v8 = v25.i32[2];
      v10 = vclez_s32(v26.u64[1]);
      v11 = vpmax_u32(v10, v10).u32[0];
      v12 = vclez_s32(v25.u64[1]);
      v13 = vpmax_u32(v12, v12).u32[0];
      if ((v11 & 0x80000000) != 0)
      {
        if ((v13 & 0x80000000) == 0)
        {
          v26.i64[0] = v25.i64[0];
          goto LABEL_10;
        }
      }

      else if ((v13 & 0x80000000) == 0)
      {
        v14 = vmin_s32(*v26.i8, *v25.i8);
        v9 = vsub_s32(vmax_s32(vadd_s32(*v26.i8, v26.u64[1]), vadd_s32(*v25.i8, v25.u64[1])), v14);
        *v26.i8 = v14;
        v8 = v9.i32[0];
LABEL_10:
        v26.i32[2] = v8;
        *(&v26 | 0xC) = v9.i32[1];
      }

      a2 = &v26;
      this = v5;
    }
  }

  result = CA::OGL::ImagingNode::add_roi(this, a2);
  v18 = *(*&v6 + 136);
  if (v18 && *(v18 + 320) != 0.0)
  {
    v26 = *v4->i8;
    CA::OGL::ShadowNode::map_bounds_rim(v5, &v26, v16, v26, v17);
    v19 = v4[1];
    v20 = vclez_s32(v26.u64[1]);
    v21 = vpmax_u32(v20, v20).u32[0];
    v22 = vclez_s32(v19);
    v23 = vpmax_u32(v22, v22).u32[0];
    if ((v21 & 0x80000000) != 0)
    {
      if ((v23 & 0x80000000) == 0)
      {
        v24 = *v4;
        goto LABEL_19;
      }
    }

    else if ((v23 & 0x80000000) == 0)
    {
      v24 = vmin_s32(*v26.i8, *v4);
      v19 = vsub_s32(vmax_s32(vadd_s32(*v26.i8, v26.u64[1]), vadd_s32(*v4, v19)), v24);
LABEL_19:
      *v26.i8 = v24;
      v26.u64[1] = v19;
    }

    return CA::OGL::ImagingNode::add_roi(v5, &v26);
  }

  return result;
}

__n128 std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(__int128 *a1, __int128 *a2)
{
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[8];
  v16 = a1[9];
  *v17 = a1[10];
  *&v17[12] = *(a1 + 172);
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a2[1];
  *a1 = *a2;
  a1[1] = v8;
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  v9 = a2[8];
  v10 = a2[9];
  v11 = a2[10];
  *(a1 + 172) = *(a2 + 172);
  a1[9] = v10;
  a1[10] = v11;
  a1[8] = v9;
  *a2 = v13;
  a2[1] = v14;
  a2[2] = v2;
  a2[3] = v3;
  a2[4] = v4;
  a2[5] = v5;
  a2[6] = v6;
  a2[7] = v7;
  a2[9] = v16;
  a2[10] = *v17;
  a2[8] = v15;
  result = *&v17[12];
  *(a2 + 172) = *&v17[12];
  return result;
}

uint64_t CA::OGL::ShadowNode::propagate_roi(CA::OGL::ShadowNode *this, int32x2_t *a2, double a3, int32x4_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = *(*(this + 2) + 24);
  if ((*(v6 + 49) & 1) != 0 || (v7 = *(v6 + 136)) != 0 && *(v7 + 120))
  {
    result = (*(**(this + 3) + 56))(*(this + 3), a2);
    goto LABEL_26;
  }

  v36 = *a2->i8;
  v37 = v36;
  CA::OGL::ShadowNode::map_bounds(v6, *(this + 10), &v37, 0, v36, a4);
  v12.i32[1] = v36.i32[3];
  v11 = v36.i32[2];
  v13 = vclez_s32(v37.u64[1]);
  v14 = vpmax_u32(v13, v13).u32[0];
  v15 = vclez_s32(v36.u64[1]);
  v16 = vpmax_u32(v15, v15).u32[0];
  if ((v14 & 0x80000000) != 0)
  {
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_11;
    }

    v37.i64[0] = v36.i64[0];
  }

  else
  {
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_11;
    }

    v17 = vmin_s32(*v37.i8, *v36.i8);
    v12 = vsub_s32(vmax_s32(vadd_s32(*v37.i8, v37.u64[1]), vadd_s32(*v36.i8, v36.u64[1])), v17);
    *v37.i8 = v17;
    v11 = v12.i32[0];
  }

  v37.i32[2] = v11;
  *(&v37 | 0xC) = v12.i32[1];
LABEL_11:
  (*(**(this + 3) + 56))(*(this + 3), &v37);
  *(*(this + 3) + 228) |= 0x200uLL;
  result = (*(***(this + 1) + 232))(**(this + 1), 34);
  if (result)
  {
    v18 = *(this + 10);
    if ((*(v18 + 144) & 0x10) != 0)
    {
      v19 = vaddvq_f64(vmulq_f64(*v18, *v18));
      v20 = vaddvq_f64(vmulq_f64(*(v18 + 32), *(v18 + 32)));
      v21 = *(v18 + 120);
      if (v21 != 1.0)
      {
        v22 = 1.0 / (v21 * v21);
        v19 = v22 * v19;
        v20 = v22 * v20;
      }

      v23 = v19 != 1.0;
      if (v20 != 1.0)
      {
        v23 = 1;
      }

      v24 = sqrt(v19);
      v25 = sqrt(v20);
      if (v23)
      {
        v20 = v25;
        v19 = v24;
      }
    }

    else
    {
      v19 = *(v18 + 128);
      v20 = v19;
    }

    if (v19 >= v20)
    {
      v19 = v20;
    }

    v26 = *(*(*(this + 2) + 24) + 136);
    if (v26)
    {
      v27 = *(v26 + 228);
    }

    else
    {
      v27 = 3.0;
    }

    v28 = *(this + 3);
    result = CA::OGL::blur_downsample_alignment(0, v27 * v19 * (v27 * v19));
    *(v28 + 228) = *(v28 + 228) & 0xFFFFFFFFFFFFC3FFLL | (result << 10);
  }

LABEL_26:
  v29 = *(*(*(this + 2) + 24) + 136);
  if (v29 && *(v29 + 320) != 0.0)
  {
    v37 = *a2->i8;
    CA::OGL::ShadowNode::map_bounds_rim(this, &v37, v9, v37, v10);
    v30 = a2[1];
    v31 = vclez_s32(v37.u64[1]);
    v32 = vpmax_u32(v31, v31).u32[0];
    v33 = vclez_s32(v30);
    v34 = vpmax_u32(v33, v33).u32[0];
    if ((v32 & 0x80000000) != 0)
    {
      if ((v34 & 0x80000000) == 0)
      {
        v35 = *a2;
        goto LABEL_33;
      }
    }

    else if ((v34 & 0x80000000) == 0)
    {
      v35 = vmin_s32(*v37.i8, *a2);
      v30 = vsub_s32(vmax_s32(vadd_s32(*v37.i8, v37.u64[1]), vadd_s32(*a2, v30)), v35);
LABEL_33:
      *v37.i8 = v35;
      v37.u64[1] = v30;
    }

    result = (*(**(this + 3) + 56))(*(this + 3), &v37);
    *(*(this + 3) + 228) |= 0x200uLL;
  }

  return result;
}

double std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,CA::Render::BackdropGroup::finalize_update(unsigned int,BOOL,void *)::$_0 &,CA::Render::BackdropGroup::Item *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,CA::Render::BackdropGroup::finalize_update(unsigned int,BOOL,void *)::$_0 &,CA::Render::BackdropGroup::Item *,0>(a1, a2, a3, a4);
  if (*(*(a5 + 24) + 112) < *(*(a4 + 24) + 112))
  {
    *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(a4, a5).n128_u64[0];
    if (*(*(a4 + 24) + 112) < *(*(a3 + 24) + 112))
    {
      *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(a3, a4).n128_u64[0];
      if (*(*(a3 + 24) + 112) < *(*(a2 + 24) + 112))
      {
        *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(a2, a3).n128_u64[0];
        if (*(*(a2 + 24) + 112) < *(*(a1 + 24) + 112))
        {

          *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(a1, a2).n128_u64[0];
        }
      }
    }
  }

  return result;
}

uint64_t CA::Context::new_image_slot(CA::Context *this, CA::Render *a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = *(this + 13);
  if (v10)
  {
    pthread_mutex_lock((v10 + 72));
    v11 = CA::Render::Context::new_image_slot(*(this + 13), a2, a3, a4, a5);
    pthread_mutex_unlock((*(this + 13) + 72));
    return v11;
  }

  v13 = (this + 257);
  if ((*(this + 257) & 2) != 0)
  {
    return 0;
  }

  v14 = *(this + 40);
  *(&v25 + 1) = *MEMORY[0x1E69E99E0];
  v26 = __PAIR64__(a3, a2);
  v27 = __PAIR64__(a5, a4);
  reply_port = mig_get_reply_port();
  v23 = 5395;
  v24 = __PAIR64__(reply_port, v14);
  *&v25 = 0x9D1400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v23);
    v16 = HIDWORD(v24);
  }

  else
  {
    v16 = reply_port;
  }

  v17 = mach_msg(&v23, 3, 0x30u, 0x30u, v16, 0, 0);
  v18 = v17;
  if ((v17 - 268435458) <= 0xE && ((1 << (v17 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(HIDWORD(v24));
    goto LABEL_28;
  }

  if (v17)
  {
    mig_dealloc_reply_port(HIDWORD(v24));
    goto LABEL_28;
  }

  if (DWORD1(v25) == 71)
  {
    v18 = 4294966988;
  }

  else if (DWORD1(v25) == 40312)
  {
    if ((v23 & 0x80000000) == 0)
    {
      if (HIDWORD(v23) == 40)
      {
        if (!v24)
        {
          v18 = v26;
          if (!v26)
          {
            return HIDWORD(v26);
          }

          goto LABEL_27;
        }
      }

      else if (HIDWORD(v23) == 36)
      {
        if (v24)
        {
          v19 = 1;
        }

        else
        {
          v19 = v26 == 0;
        }

        if (v19)
        {
          v18 = 4294966996;
        }

        else
        {
          v18 = v26;
        }

        goto LABEL_27;
      }
    }

    v18 = 4294966996;
  }

  else
  {
    v18 = 4294966995;
  }

LABEL_27:
  mach_msg_destroy(&v23);
LABEL_28:
  if (v18)
  {
    if (v18 == 268435459)
    {
      *v13 |= 2u;
    }

    CAVerifyServerReturn(v18);
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v20 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
    {
      v21 = *(this + 1);
      v22 = mach_error_string(v18);
      LODWORD(v23) = 67110658;
      HIDWORD(v23) = a2;
      LOWORD(v24) = 1024;
      *(&v24 + 2) = a3;
      HIWORD(v24) = 1024;
      LODWORD(v25) = a4;
      WORD2(v25) = 1024;
      *(&v25 + 6) = a5;
      WORD5(v25) = 1024;
      HIDWORD(v25) = v21;
      LOWORD(v26) = 1024;
      *(&v26 + 2) = v18;
      HIWORD(v26) = 2080;
      v27 = v22;
      _os_log_error_impl(&dword_183AA6000, v20, OS_LOG_TYPE_ERROR, "Failed to create %dx%d image slot (alpha=%d wide=%d) (client=0x%x) [0x%x %s]", &v23, 0x30u);
    }

    return 0;
  }

  return v18;
}

uint64_t _XCreateImageSlot(uint64_t result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 || *(result + 4) != 48)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 48) || *(result + 52) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v4 = *(result + 12);
  v5 = *(result + 32);
  v6 = *(result + 36);
  v8 = *(result + 40);
  v7 = *(result + 44);
  v9 = *(result + 84);
  v14[0] = *(result + 68);
  v14[1] = v9;
  *(a2 + 36) = 0;
  result = CA::Render::Server::audit_token_cache_lookup(v14, a2);
  if ((result & 0x80) != 0 || (result = CA::Render::Server::audit_token_cache_lookup(v14, v10), (result & 0x20000) != 0))
  {
    v3 = -81182719;
    goto LABEL_7;
  }

  result = CA::Render::Context::context_by_server_port(v4);
  if (!result)
  {
    v3 = 56;
    goto LABEL_7;
  }

  v11 = result;
  pthread_mutex_lock((result + 72));
  *(a2 + 36) = CA::Render::Context::new_image_slot(v11, v5, v6, v8 != 0, v7 != 0);
  result = pthread_mutex_unlock((v11 + 72));
  v12 = *(a2 + 36);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 5;
  }

  if (atomic_fetch_add((v11 + 8), 0xFFFFFFFF) == 1)
  {
    result = (*(*v11 + 16))(v11);
  }

  *(a2 + 32) = v13;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (v12)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t CA::Render::Context::new_image_slot(CA::Render::Context *this, CA::Render *a2, unsigned int a3, char a4, char a5)
{
  v5 = 0;
  if (a2)
  {
    if (a3)
    {
      v7 = a2;
      if (!((a3 | a2) >> 13))
      {
        if (CA::Render::iosurface_size_supported(a2, a3))
        {
          v5 = CA::Render::Context::new_slot(this);
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          v11 = malloc_type_zone_malloc(malloc_zone, 0x28uLL, 0x165299FDuLL);
          if (v11)
          {
            v12 = v11;
            v11[2] = 1;
            v13 = v11 + 2;
            v11[3] = 11;
            ++dword_1ED4EAA64;
            *v11 = &unk_1EF1F6B40;
            *(v11 + 2) = 0;
            v11[6] = v7;
            v11[7] = a3;
            *(v11 + 32) = a4;
            *(v11 + 33) = a5;
            CA::Render::Context::set_slot(this, v5, v11);
            if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
            {
              (*(*v12 + 16))(v12);
            }
          }

          else
          {
            CA::Render::Context::set_slot(this, v5, 0);
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return v5;
}

uint64_t CARenderServerSnapshot_(mach_port_t a1, NSDictionary *a2)
{
  v88 = a1;
  v115 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSDictionary *)a2 objectForKey:@"mode"];
  v5 = [(NSDictionary *)a2 objectForKey:@"displayName"];
  v6 = [(NSDictionary *)a2 objectForKey:@"systemIdentifier"];
  v7 = v6 != 0;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v89 = v8;
  v9 = [(NSDictionary *)a2 objectForKey:@"destination"];
  v10 = [(NSDictionary *)a2 objectForKey:@"destinationSDR"];
  v90 = v4;
  v11 = [(NSDictionary *)a2 objectForKey:@"destinationEDR"];
  v12 = v11;
  v13 = 0;
  v14 = (v10 | v11) != 0;
  if (v10)
  {
    v15 = v11 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  if (v9)
  {
    v16 = 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v90 || !v89 || (v14 & (v16 ^ 1) & 1) != 0)
  {
    goto LABEL_116;
  }

  v17 = [(NSDictionary *)a2 objectForKey:@"captureMode"];
  v18 = v17;
  v19 = v7 << 12;
  if (v17 == @"captureModeCurrentHDR")
  {
    v19 = (v7 << 12) | 0x400;
  }

  if (v17 == @"captureModeCanonicalHDR")
  {
    v20 = (v7 << 12) | 0x2400;
  }

  else
  {
    v20 = v19;
  }

  v86 = [-[NSDictionary objectForKey:](a2 objectForKey:{@"originX", "intValue"}];
  v85 = [-[NSDictionary objectForKey:](a2 objectForKey:{@"originY", "intValue"}];
  if (a2)
  {
    v21 = [-[NSDictionary objectForKeyedSubscript:](a2 objectForKeyedSubscript:{@"reuseBackdrops", "BOOLValue"}];
    if ([-[NSDictionary objectForKeyedSubscript:](a2 objectForKeyedSubscript:{@"enforceSecureMode", "BOOLValue"}])
    {
      v21 |= 2u;
    }

    if ([-[NSDictionary objectForKeyedSubscript:](a2 objectForKeyedSubscript:{@"ignoreAccessibility", "BOOLValue"}])
    {
      v21 |= 4u;
    }

    if ([-[NSDictionary objectForKeyedSubscript:](a2 objectForKeyedSubscript:{@"ignoreSublayers", "BOOLValue"}])
    {
      v21 |= 8u;
    }

    if ([-[NSDictionary objectForKeyedSubscript:](a2 objectForKeyedSubscript:{@"ignoreLayerFixup", "BOOLValue"}])
    {
      v21 |= 0x10u;
    }

    if ([-[NSDictionary objectForKeyedSubscript:](a2 objectForKeyedSubscript:{@"ignoreDisableUpdateMasks", "BOOLValue"}])
    {
      v21 |= 0x20u;
    }

    if ([-[NSDictionary objectForKeyedSubscript:](a2 objectForKeyedSubscript:{@"trackBackdropReuseFailures", "BOOLValue"}])
    {
      v21 |= 0x40u;
    }

    if ([-[NSDictionary objectForKeyedSubscript:](a2 objectForKeyedSubscript:{@"bottomLeftOrigin", "BOOLValue"}])
    {
      v21 |= 0x80u;
    }

    if ([-[NSDictionary objectForKeyedSubscript:](a2 objectForKeyedSubscript:{@"selfGenerated", "BOOLValue"}])
    {
      v21 |= 0x100u;
    }

    if ([-[NSDictionary objectForKeyedSubscript:](a2 objectForKeyedSubscript:{@"wantsHDR", "BOOLValue"}])
    {
      v21 |= 0x400u;
    }

    v22 = v3;
    if ([-[NSDictionary objectForKeyedSubscript:](a2 objectForKeyedSubscript:{@"ignoreContextualAssistance", "BOOLValue"}])
    {
      v23 = v21 | 0x800;
    }

    else
    {
      v23 = v21;
    }
  }

  else
  {
    v22 = v3;
    v23 = 0;
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v24 = [(NSDictionary *)a2 objectForKey:@"transform"];
  v25 = v24;
  if (v24)
  {
    [v24 CATransform3DValue];
    v111 = v103;
    v112 = v104;
    v113 = v105;
    v114 = v106;
    v107 = v99;
    v108 = v100;
    v109 = v101;
    v110 = v102;
  }

  v87 = v23 | v20;
  if (v9)
  {
    v3 = v22;
    v26 = CFGetTypeID(v9);
    if (v26 == CFNumberGetTypeID())
    {
      v27 = [(NSDictionary *)a2 valueForKey:@"wantsHDR"];
      v28 = v18 == @"captureModeSDR" || v27 == 0;
      v29 = v87;
      if (v28)
      {
        v29 = v87 | 0x400;
      }

      v87 = v29;
    }

    else
    {
      v30 = CFGetTypeID(v9);
      if (v30 == IOSurfaceGetTypeID())
      {
        v31 = [-[NSDictionary objectForKey:](a2 objectForKey:{@"wantsHDR", "BOOLValue"}];
        v32 = v18 == @"captureModeCurrentHDR" || v18 == @"captureModeCanonicalHDR";
        v33 = v32;
        if ((v31 | v33))
        {
          PixelFormat = IOSurfaceGetPixelFormat(v9);
          v35 = v87;
          if (PixelFormat != 1380411457)
          {
            v35 = v87 & 0xFFFFFBFF;
          }

          v87 = v35;
        }
      }
    }
  }

  else
  {
    v3 = v22;
  }

  if (v10)
  {
    v36 = CFGetTypeID(v10);
    if (v36 != IOSurfaceGetTypeID())
    {
      goto LABEL_115;
    }
  }

  if (v12)
  {
    v37 = CFGetTypeID(v12);
    if (v37 != IOSurfaceGetTypeID() || IOSurfaceGetPixelFormat(v12) != 1380411457)
    {
      goto LABEL_115;
    }
  }

  if (v10)
  {
    v38 = v12;
  }

  else
  {
    v38 = 0;
  }

  if (v12)
  {
    v39 = v10 == 0;
  }

  else
  {
    v39 = 1;
  }

  if (v39)
  {
    v40 = v9;
  }

  else
  {
    v40 = v10;
  }

  if (v90 == @"modeDisplay")
  {
    if (v25)
    {
      v44 = &v107;
    }

    else
    {
      v44 = 0;
    }

    LODWORD(v82) = 0;
    LODWORD(v81) = v87;
    goto LABEL_114;
  }

  if (v90 == @"modeLayer")
  {
    v45 = [-[NSDictionary objectForKey:](a2 objectForKey:{@"contextId", "unsignedIntValue"}];
    v46 = [-[NSDictionary objectForKey:](a2 objectForKey:{@"layerId", "unsignedLongLongValue"}];
    [-[NSDictionary objectForKey:](a2 objectForKey:{@"timeOffset", "doubleValue"}];
    v48 = v47;
    v49 = [(NSDictionary *)a2 objectForKey:@"transform"];
    if (v49)
    {
      [v49 CATransform3DValue];
      v103 = v95;
      v104 = v96;
      v105 = v97;
      v106 = v98;
      v99 = v91;
      v100 = v92;
      v50 = v93;
      v51 = v94;
    }

    else
    {
      v103 = *&CATransform3DIdentity.m31;
      v104 = *&CATransform3DIdentity.m33;
      v105 = *&CATransform3DIdentity.m41;
      v106 = *&CATransform3DIdentity.m43;
      v99 = *&CATransform3DIdentity.m11;
      v100 = *&CATransform3DIdentity.m13;
      v50 = *&CATransform3DIdentity.m21;
      v51 = *&CATransform3DIdentity.m23;
    }

    v101 = v50;
    v102 = v51;
    v65 = CFGetTypeID(v40);
    TypeID = IOSurfaceGetTypeID();
    v67 = v65 == TypeID;
    if (v38)
    {
      v68 = CFGetTypeID(v38);
      v67 = v68 == IOSurfaceGetTypeID() && v65 == TypeID;
    }

    v70 = CFGetTypeID(v40);
    if (v70 == CFNumberGetTypeID())
    {
      v43 = CARenderServerCaptureDisplayLayerWithTransformTimeOffsetAndFlags_(v88, v89, v45, v46, [v40 intValue], v86, v85, &v99, v48, v87);
    }

    else
    {
      if (!v67)
      {
        goto LABEL_115;
      }

      v43 = CARenderServerRenderDisplayLayerWithTransformTimeOffsetAndFlags_(v88, v89, v45, v46, v40, v38, v86, v85, v48, &v99, v87);
    }

LABEL_114:
    v13 = v43;
    goto LABEL_116;
  }

  if (v90 == @"includeContextList")
  {
    v52 = [(NSDictionary *)a2 objectForKey:@"contextList"];
    v53 = v52;
    if (v52)
    {
      v54 = [(_anonymous_namespace_ *)v52 count];
      v55 = v54;
      v84 = 4 * v54;
      if ((4 * v54) > 0x1000)
      {
        v57 = malloc_type_malloc(4 * v54, 0xC23C4640uLL);
        v90 = v57;
      }

      else
      {
        MEMORY[0x1EEE9AC00](v54);
        v90 = (&v83 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
        bzero(v90, v56);
      }

      v72 = v55 << 7;
      if (v55 << 7 > 0x1000)
      {
        v63 = malloc_type_malloc(v55 << 7, 0xF2097992uLL);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v57);
        v63 = (&v83 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
        bzero(v63, v55 << 7);
      }
    }

    else
    {
      v55 = 0;
      v90 = 0;
      v63 = 0;
      v84 = 0;
      v72 = 0;
    }

    v74 = CFGetTypeID(v40);
    v75 = IOSurfaceGetTypeID();
    v76 = CFGetTypeID(v40);
    if (v76 == CFNumberGetTypeID())
    {
      v77 = [v40 intValue];
      v78 = _CARenderServerCaptureDisplayContextList(v88, v89, v55, v90, v77, v86, v85, v55, v63, v87);
    }

    else
    {
      if (v74 != v75)
      {
        v13 = 0;
LABEL_140:
        if (v84 > 0x1000)
        {
          free(v90);
        }

        if (v72 > 0x1000)
        {
          goto LABEL_143;
        }

        goto LABEL_116;
      }

      v78 = _CARenderServerRenderDisplayContextList(v88, v89, v55, v90, v40, v38, v86, v85, v55, v63, v87);
    }

    v13 = v78;
    goto LABEL_140;
  }

  if (v90 != @"stopAfterContextList" && v90 != @"excludeContextList")
  {
    if (v90 == @"stopBeforeSlot")
    {
      v41 = [-[NSDictionary objectForKey:](a2 objectForKey:{@"slotId", "unsignedLongLongValue"}];
      if (v25)
      {
        v42 = &v107;
      }

      else
      {
        v42 = 0;
      }

      LODWORD(v82) = 3;
      LODWORD(v81) = v87;
      goto LABEL_114;
    }

LABEL_115:
    v13 = 0;
    goto LABEL_116;
  }

  v58 = [(NSDictionary *)a2 objectForKey:@"contextList"];
  v59 = v58;
  if (v58)
  {
    v60 = [(_anonymous_namespace_ *)v58 count];
    v61 = v60;
    v62 = 4 * v60;
    if ((4 * v60) > 0x1000)
    {
      v63 = malloc_type_malloc(4 * v60, 0x77CD87ACuLL);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v60);
      v63 = (&v83 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v63, v62);
    }
  }

  else
  {
    v61 = 0;
    v63 = 0;
    v62 = 0;
  }

  if (v90 == @"excludeContextList")
  {
    v79 = 2;
  }

  else
  {
    v79 = 1;
  }

  if (v25)
  {
    v80 = &v107;
  }

  else
  {
    v80 = 0;
  }

  LODWORD(v82) = v79;
  LODWORD(v81) = v87;
  if (v62 > 0x1000)
  {
LABEL_143:
    free(v63);
  }

LABEL_116:
  objc_autoreleasePoolPop(v3);
  return v13;
}

BOOL CARenderServerCaptureDisplayLayerWithTransformTimeOffsetAndFlags_(mach_port_t a1, CFStringRef theString, int a3, uint64_t a4, int a5, int a6, int a7, __int128 *a8, double a9, int a10)
{
  v59 = *MEMORY[0x1E69E9840];
  if (!theString)
  {
    return 0;
  }

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
  v40 = 0u;
  v41 = 0u;
  *buffer = 0u;
  v39 = 0u;
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

  if ((a10 & 0x10) == 0)
  {
    a4 = CA::Render::Object::render_id(*(a4 + 16));
  }

  v36 = a8[1];
  v37 = *a8;
  v34 = a8[3];
  v35 = a8[2];
  v32 = a8[5];
  v33 = a8[4];
  v30 = a8[7];
  v31 = a8[6];
  v19 = CA::MachPortUtil::task_identity_port(void)::task[0];
  if (!CA::MachPortUtil::task_identity_port(void)::task[0])
  {
    task_create_identity_token(*MEMORY[0x1E69E9A60], CA::MachPortUtil::task_identity_port(void)::task);
    v19 = CA::MachPortUtil::task_identity_port(void)::task[0];
  }

  v20 = mach_absolute_time();
  v21 = CATimeWithHostTime(v20) + a9;
  memset(v58, 0, 428);
  v57 = 0u;
  memset(&msg, 0, sizeof(msg));
  v55 = 1;
  v56 = v19;
  DWORD1(v57) = 1245184;
  *(&v57 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v22 = mig_strncpy_zerofill(v58 + 8, buffer, 256);
  }

  else
  {
    v22 = mig_strncpy(v58 + 8, buffer, 256);
  }

  DWORD1(v58[0]) = v22;
  LODWORD(v58[0]) = 0;
  v24 = (v22 + 3) & 0xFFFFFFFC;
  v25 = &msg + v24;
  *(v25 + 14) = a3;
  *(v25 + 60) = a4;
  *(v25 + 17) = a5;
  *(v25 + 18) = a6;
  *(v25 + 19) = a7;
  *(v25 + 10) = v21;
  *(v25 + 88) = v37;
  *(v25 + 104) = v36;
  *(v25 + 120) = v35;
  *(v25 + 136) = v34;
  *(v25 + 152) = v33;
  *(v25 + 168) = v32;
  *(v25 + 184) = v31;
  *(v25 + 200) = v30;
  *(v25 + 54) = a10;
  reply_port = mig_get_reply_port();
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  msg.msgh_remote_port = ServerPort;
  *&msg.msgh_voucher_port = 0x9D2200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v28 = mach_msg(&msg, 3, v24 + 220, 0x2Cu, msgh_local_port, 0, 0);
  v29 = v28;
  if ((v28 - 268435458) <= 0xE && ((1 << (v28 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    goto LABEL_31;
  }

  if (v28)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    goto LABEL_31;
  }

  if (msg.msgh_id == 71)
  {
    v29 = 4294966988;
LABEL_30:
    mach_msg_destroy(&msg);
    goto LABEL_31;
  }

  if (msg.msgh_id != 40326)
  {
    v29 = 4294966995;
    goto LABEL_30;
  }

  v29 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_30;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_30;
  }

  v29 = v57;
  if (v57)
  {
    goto LABEL_30;
  }

LABEL_31:
  CAVerifyServerReturn(v29);
  if (!a1)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], ServerPort);
  }

  return v29 == 0;
}

uint64_t _XCaptureDisplayLayer(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) == 0)
  {
LABEL_2:
    result = 4294966992;
    goto LABEL_3;
  }

  v6 = *(a1 + 24);
  result = 4294966992;
  if (v6 == 1)
  {
    v7 = *(a1 + 4);
    if (v7 - 477 >= 0xFFFFFEFF)
    {
      if (*(a1 + 38) << 16 != 1114112)
      {
        result = 4294966996;
        goto LABEL_3;
      }

      v8 = *(a1 + 52);
      if (v8 <= 0x100 && v7 - 220 >= v8)
      {
        v9 = (v8 + 3) & 0xFFFFFFFC;
        if (v7 == v9 + 220)
        {
          if (v7 >= 0x138)
          {
            v10 = 312;
          }

          else
          {
            v10 = v7;
          }

          if (!memchr((a1 + 56), 0, v10 - 56))
          {
            goto LABEL_2;
          }

          v11 = ((v7 + 3) & 0x3FC) + a1;
          if (*v11 || *(v11 + 4) < 0x20u)
          {
            result = 4294966987;
          }

          else
          {
            v12 = *(a1 + v9 + 56);
            v13 = *(a1 + v9 + 60);
            v14 = *(a1 + v9 + 68);
            v15 = *(a1 + 28);
            v16 = *(a1 + v9 + 72);
            v17 = *(a1 + v9 + 76);
            v18 = *(a1 + v9 + 80);
            v19 = *(a1 + v9 + 216);
            v20 = *(v11 + 36);
            v21[0] = *(v11 + 20);
            v21[1] = v20;
            result = CASCaptureDisplayLayer((a1 + 56), v12, v13, v14, v15, v16, v17, (a1 + v9 + 88), v18, v19, v21);
          }
        }
      }
    }
  }

LABEL_3:
  v4 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = result;
  *(a2 + 24) = *v4;
  return result;
}

uint64_t CASCaptureDisplayLayer(const char *a1, CA::Render::Context *a2, uint64_t a3, _anonymous_namespace_ *a4, int a5, int a6, int a7, CA::Mat4Impl *a8, double a9, unsigned int a10, CA::Render::Server *a11)
{
  v31 = *MEMORY[0x1E69E9840];
  v20 = 4213784577;
  if ((CA::Render::Server::audit_token_cache_lookup(a11, a2) & 0x80) == 0 && (CA::Render::Server::audit_token_cache_lookup(a11, v21) & 0x20000) == 0)
  {
    if (strnlen(a1, 0x100uLL) - 256 >= 0xFFFFFF01 && (v22 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], a1, 0x8000100u, *MEMORY[0x1E695E498])) != 0)
    {
      CFRelease(v22);
      v30 = 128;
      v28 = 0u;
      v29 = 0u;
      v25 = 0;
      v27 = 0u;
      memset(v24, 0, sizeof(v24));
      HIDWORD(v28) = a5;
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }
    }

    else
    {
      return 4;
    }
  }

  return v20;
}

void *anonymous namespace::retain_slot_buffer(_anonymous_namespace_ *this)
{
  v1 = CA::Render::Context::copy_slot(this);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = *(v1 + 12);
  switch(v3)
  {
    case 57:
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v10 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
      v5 = v10;
      if (v10)
      {
        *v10 = &unk_1EF1FA598;
        v11 = v2;
        if (!atomic_fetch_add((v2 + 8), 1u))
        {
          v11 = 0;
          atomic_fetch_add((v2 + 8), 0xFFFFFFFF);
        }

        v10[2] = *(v2 + 128);
        v10[3] = v11;
        v10[1] = *(v2 + 16);
      }

      goto LABEL_26;
    case 23:
      if (*(v1 + 136))
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v7 = malloc_type_zone_malloc(malloc_zone, 0x28uLL, 0x165299FDuLL);
        v5 = v7;
        if (v7)
        {
          *v7 = &unk_1EF1FA5D8;
          v8 = v2;
          if (!atomic_fetch_add((v2 + 8), 1u))
          {
            v8 = 0;
            atomic_fetch_add((v2 + 8), 0xFFFFFFFF);
          }

          v7[4] = v8;
          v7[1] = *(v2 + 16);
          v9 = *(v2 + 136);
          v7[2] = *(v2 + 176);
          v7[3] = v9;
        }

        goto LABEL_26;
      }

      break;
    case 11:
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v4 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
      v5 = v4;
      if (v4)
      {
        *v4 = &unk_1EF1FA558;
        v6 = v2;
        if (!atomic_fetch_add((v2 + 8), 1u))
        {
          v6 = 0;
          atomic_fetch_add((v2 + 8), 0xFFFFFFFF);
        }

        v4[1] = *(v2 + 24);
        v4[2] = 0;
        v4[3] = v6;
      }

      goto LABEL_26;
  }

  v5 = 0;
LABEL_26:
  if (atomic_fetch_add((v2 + 8), 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  return v5;
}

uint64_t anonymous namespace::render_display_layer(const char *a1, CA::Render::Context *this, uint64_t a3, int a4, int a5, CA::Mat4Impl *a6, BOOL *a7, unint64_t *a8, double a9, _anonymous_namespace_ *a10, uint64_t a11, char a12)
{
  v30 = *MEMORY[0x1E69E9840];
  v20 = CA::Render::Context::context_by_id(this);
  if (!v20)
  {
    return 56;
  }

  v21 = v20;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  CA::Transform::set(v28, a6, 1);
  if (a12)
  {
    *a11 = 0;
    *(a11 + 4) = 1;
    v22 = *(a11 + 96) & 0xFFFE;
  }

  else
  {
    if ((a12 & 2) == 0)
    {
      *(a11 + 72) = 0x10000;
    }

    v22 = *(a11 + 96) | 1;
  }

  *(a11 + 96) = v22;
  v24 = CFStringCreateWithCString(0, a1, 0x8000100u);
  *(a11 + 24) = v21;
  *(a11 + 32) = a3;
  *(a11 + 16) = v24;
  *(a11 + 56) = a4;
  *(a11 + 60) = a5;
  *(a11 + 64) = a9;
  *(a11 + 80) = v28;
  *(a11 + 88) = 0;
  v25 = *(a11 + 96) & 0xFC80;
  *(a11 + 7) = (a7 & 0x400) != 0;
  *(a11 + 8) = (a7 & 0x2000) != 0;
  *(a11 + 96) = (2 * a7) & 0x1A | (a7 >> 4) & 4 | (a7 >> 2) & 0x20 | (a7 >> 4) & 0x100 | (a7 >> 5) & 0x40 | v25 | 1;
  if (*(a11 + 40))
  {
    CA::Render::post_notification(0x14u, 0, a11, 0);
    v24 = *(a11 + 16);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  v26 = *(a11 + 96);
  if (a8)
  {
    *a8 = *(a11 + 88) | ((*(a11 + 96) & 0x200) << 54);
    v26 = *(a11 + 96);
  }

  if ((v26 & 0x200) != 0)
  {
    v23 = 0;
  }

  else
  {
    v23 = 5;
  }

  if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v21 + 16))(v21);
  }

  return v23;
}

uint64_t CA::WindowServer::Server::render_display_layer(CA::WindowServer::Server *this, CA::Render::Object *a2, CA::WindowServer::Server **a3, void *a4)
{
  result = CA::WindowServer::display_name_matches(a2, a3[2], (HIBYTE(*(a3 + 48)) & 1));
  if (result)
  {
    pthread_mutex_lock((a2 + 24));
    v7 = a3[5];
    if (v7 && a3[6])
    {
      *(a3 + 7) = 0;
      CA::WindowServer::Server::render_display_layer_to_target(a2, a3, v7);
      *(a3 + 7) = 1;
      v7 = a3[6];
    }

    CA::WindowServer::Server::render_display_layer_to_target(a2, a3, v7);

    return pthread_mutex_unlock((a2 + 24));
  }

  return result;
}

BOOL CA::WindowServer::display_name_matches(CFTypeRef *this, CA::WindowServer::Server *value, const __CFString *a3)
{
  if (a3 && (v5 = *(this[12] + 2)) != 0)
  {
    v6 = CFSetContainsValue(v5, value);
  }

  else
  {
    if (CFEqual(this[13], value))
    {
      return 1;
    }

    if ((*(this[12] + 904) & 0x80) == 0)
    {
      return 0;
    }

    v6 = CFEqual(value, @"defaultDisplay");
  }

  return v6 != 0;
}

void CA::WindowServer::Server::render_display_layer_to_target(uint64_t a1, int *a2, CA::WindowServer::Display *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  *(a2 + 48) |= 0x200u;
  *&v6 = *(a2 + 7);
  *(&v6 + 1) = *(a3 + 1);
  *v47 = v6;
  bzero(v49, 0x570uLL);
  CA::Render::Update::Update(v49, 0, 0, *(a2 + 8), 0, 0, 0, 0, v47, a2[18] | *(a1 + 184));
  if (!v49[0])
  {
    goto LABEL_52;
  }

  if (CADeviceNeedsP3ShapeTracking::once != -1)
  {
    dispatch_once(&CADeviceNeedsP3ShapeTracking::once, &__block_literal_global_53);
  }

  v8 = 0;
  v9 = 0x800000;
  if (!CADeviceNeedsP3ShapeTracking::p3_tracking)
  {
    v9 = 0;
  }

  v10 = v55 & 0xFFFFF7FFEF7FFFDFLL | v9;
  if (*(a1 + 825) == 1)
  {
    v8 = 32;
    if (*(a2 + 4))
    {
      v8 = 0;
    }
  }

  v11 = 0x80000000000;
  if (!*(a2 + 8))
  {
    v11 = 0;
  }

  v55 = v11 | v8 | v10 | ((a2[24] & 0x40) << 22);
  v51[9] = (*(**(a1 + 96) + 1416))();
  v14 = *(a1 + 96);
  if (v14)
  {
    if (*(a2 + 7) == 1)
    {
      v56[0] = 0u;
      v56[2].f64[0] = 0.0;
      BYTE3(v56[4].f64[0]) = 0;
      v56[6] = 0u;
      *(v56 + 12) = xmmword_183E20F10;
      HIDWORD(v56[1].f64[1]) = 1065353216;
      *(&v56[2] + 8) = xmmword_183E20F20;
      v56[3].f64[1] = 0.0;
      *(&v56[3].f64[1] + 7) = 0;
      *(v56[4].f64 + 4) = 0x100000001;
      memset(&v56[4].f64[1] + 4, 0, 33);
      *(&v56[7] + 4) = 0uLL;
      LODWORD(v56[7].f64[0]) = 1065353216;
      HIDWORD(v56[8].f64[0]) = -1;
      if (*(a2 + 8) == 1)
      {
        CA::WindowServer::Display::display_attributes(v48, v14);
        CA::WindowServer::Display::recording_display_attributes(v56, v14, v48, 1, 1);
      }

      else
      {
        CA::WindowServer::Display::reconciled_display_attributes(v56, v14);
      }

      CA::Render::Update::set_display_attributes(v53, v56);
    }

    v16 = *(v14 + 876);
    v17 = __sincosf_stret(*(v14 + 872));
    v18 = *(v14 + 880);
    v53[201] = v17.__cosval;
    v53[202] = v17.__sinval;
    v53[203] = v16;
    v54 = v18;
    v15 = v55 | 0x800000000000;
  }

  else
  {
    v15 = v55;
  }

  v19 = 0x20000000;
  if (!*(a2 + 6))
  {
    v19 = 0;
  }

  v52 = *a2;
  v55 = v15 & 0xFFFFFFFFD7FFC7FELL | v19 & 0xFFFFFFFFFFFFE7FFLL | (((*(a2 + 48) >> 1) & 1) << 11) & 0xFFFFFFFFFFFFEFFFLL | (((*(a2 + 48) >> 3) & 1) << 12) | 0x8002001;
  v20 = *(a2 + 3);
  if (v20)
  {
    pthread_mutex_lock((v20 + 72));
    v21 = *(a2 + 10);
    v57 = 0;
    memset(v56, 0, sizeof(v56));
    if ((a2[24] & 0x20) != 0)
    {
      v22 = v21[1];
      v23 = v21[2];
      v24 = v21[3];
      v56[0] = *v21;
      v56[1] = v22;
      v56[2] = v23;
      v56[3] = v24;
      v25 = v21[5];
      v26 = v21[6];
      v27 = v21[7];
      v56[4] = v21[4];
      v56[5] = v25;
      v56[6] = v26;
      v56[7] = v27;
      v56[8] = v21[8];
      v28 = v56[8];
      LOBYTE(v57) = LOBYTE(v21[9].f64[0]) & 7;
      LOBYTE(v57) = LOBYTE(v21[9].f64[0]) & 8 | v57;
      LOBYTE(v57) = v57 | LOBYTE(v21[9].f64[0]) & 0x10;
      LODWORD(v28.f64[0]) = *(*(a2 + 5) + 12);
      v25.f64[0] = *&v28.f64[0];
      v21 = v56;
      v28.f64[0] = 0.0;
      v29 = CA::Transform::translate(v56, v28, v25.f64[0], 0.0);
      v29.f64[0] = 1.0;
      CA::Transform::scale(v56, v29, -1.0, 1.0);
    }

    v30 = CA::Render::Context::lookup_object(*(v20 + 136), *(v20 + 148), *(a2 + 4), 0, 30, 0);
    if (!v30)
    {
      goto LABEL_27;
    }

    v31 = v30;
    if ((a2[24] & 0x10) == 0)
    {
      goto LABEL_26;
    }

    v45 = *(v30 + 112);
    if ((*(v30 + 13) & 0x20) != 0)
    {
      if (v45)
      {
        v46 = v45 + 2;
        if (!atomic_fetch_add(v45 + 2, 1u))
        {
          atomic_fetch_add(v46, 0xFFFFFFFF);
        }

        CA::Render::Layer::set_single_sublayer(v30, 0);
        CA::Render::Update::add_context(v49, v20, v31, v21);
        CA::Render::Layer::set_single_sublayer(v31, v45);
        goto LABEL_62;
      }
    }

    else if (v45)
    {
      v46 = v45 + 2;
      if (!atomic_fetch_add(v45 + 2, 1u))
      {
        atomic_fetch_add(v46, 0xFFFFFFFF);
      }

      CA::Render::Layer::set_sublayers(v30, 0);
      CA::Render::Update::add_context(v49, v20, v31, v21);
      CA::Render::Layer::set_sublayers(v31, v45);
LABEL_62:
      if (atomic_fetch_add(v46, 0xFFFFFFFF) == 1)
      {
        (*(*v45 + 16))(v45);
      }

      goto LABEL_27;
    }

LABEL_26:
    CA::Render::Update::add_context(v49, v20, v30, v21);
LABEL_27:
    pthread_mutex_unlock((v20 + 72));
  }

  CA::Render::Update::added_all_contexts(v49, v12, v13);
  memset(v56, 0, 48);
  CA::Shape::operator=(v56, v47);
  CA::shape_union(v50, v56, v32);
  v33 = v51[10];
  *(a2 + 11) = v51[11];
  (*(*a3 + 24))(a3, v33, a2[19], 0, 0);
  CA::WindowServer::wrap_buffer(*(a1 + 96), a3, v34);
  v36 = *(a2 + 48);
  if (v35)
  {
    v37 = v35;
    if ((*(*a1 + 480))(a1, v49, v35, v47, v36 & 1, a2[19]))
    {
      v38 = ~(*(v37 + 236) >> 26) & 0x200;
    }

    else
    {
      v38 = 0;
    }

    v39 = *(a2 + 48);
    *(a2 + 48) = v39 & 0xFDFF | v38;
    if (v38)
    {
      if ((v39 & 6) == 6)
      {
        v40 = (*(*a1 + 432))(a1);
        if (v40)
        {
          if (*(v40 + 100))
          {
            v41 = 0;
          }

          else
          {
            v41 = 512;
          }

          *(a2 + 48) = a2[24] & 0xFDFF | v41;
        }
      }
    }

    CA::Render::Update::render_edr_factor();
    (*(*a3 + 32))(a3);
    (*(*a3 + 40))(a3, v53[5]);
    if (BYTE5(ca_debug_options) == 1)
    {
      CA::WindowServer::print_layer_trees(v51, *&v50[8]);
    }

    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    if (*&dword_1ED4E9660)
    {
      v42 = (*(*v37 + 168))(v37);
      if (v42)
      {
        v43 = CAIOSurfaceWriteToFileWithSuffix(v42, "snapshot-layer");
        free(v43);
        if (*&dword_1ED4E9660 > 0.0)
        {
          *&dword_1ED4E9660 = *&dword_1ED4E9660 + -1.0;
        }
      }
    }

    if (*(v37 + 9))
    {
      v44 = *(v37 + 10);
      if (v44)
      {
        v44(v37);
      }
    }

    *(v37 + 9) = 0;
    *(v37 + 10) = 0;
    CA::WindowServer::Surface::unref(v37);
  }

  else
  {
    *(a2 + 48) = v36 & 0xFDFF;
  }

LABEL_52:
  CA::Render::Update::~Update(v49, v7);
}

void CA::Render::LayerNode::set_frame_transform(CA::Render::LayerNode *this, const CA::Transform *a2)
{
  v4 = *(a2 + 144);
  v5 = *(this + 7);
  if ((v4 & 0x1F) != 0)
  {
    if (!v5)
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v5 = malloc_type_zone_malloc(malloc_zone, 0x80uLL, 0x1000040AE2C30F4uLL);
      *(this + 7) = v5;
    }

    v6 = *(a2 + 1);
    v7 = *(a2 + 2);
    v8 = *(a2 + 3);
    *v5 = *a2;
    v5[1] = v6;
    v5[2] = v7;
    v5[3] = v8;
    v9 = *(a2 + 5);
    v10 = *(a2 + 6);
    v11 = *(a2 + 7);
    v5[4] = *(a2 + 4);
    v5[5] = v9;
    v5[6] = v10;
    v5[7] = v11;
  }

  else
  {
    if (v5)
    {
      if (x_malloc_get_zone::once != -1)
      {
        v12 = *(this + 7);
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        v5 = v12;
      }

      malloc_zone_free(malloc_zone, v5);
      *(this + 7) = 0;
    }

    *(this + 8) = *(a2 + 12);
    *(this + 9) = *(a2 + 13);
    *(this + 10) = 0;
  }

  *(this + 3) |= 0x20000uLL;
}

void anonymous namespace::DeferredImageSlotIOSurface::realize_buffer(_anonymous_namespace_::DeferredImageSlotIOSurface *this, uint64_t a2, unsigned int a3, int a4, CGColorSpace *a5, uint64_t a6, const __CFString *a7)
{
  v11 = *(this + 3);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = (*(*v12 + 256))(v12);
    v14 = *(v11 + 16);
    if ((a2 & ~v13) != 0)
    {
      if (v14)
      {
        if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v14 + 16))(v14);
        }

        *(v11 + 16) = 0;
      }
    }

    else if (v14)
    {
      goto LABEL_43;
    }
  }

  if (*(v11 + 32))
  {
    v15 = 35;
  }

  else
  {
    v15 = 33;
  }

  if (*(v11 + 32))
  {
    v16 = 1;
  }

  else
  {
    v16 = 3;
  }

  if (*(v11 + 33))
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  if (a4)
  {
    v18 = 13;
  }

  else
  {
    v18 = v17;
  }

  if (v18 == 3)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  if (((0x61CB910CuLL >> v19) & 1) == 0)
  {
    v20 = dword_183E22814[v19];
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    iosurface_with_pixel_format = CA::Render::create_iosurface_with_pixel_format(v20, *(v11 + 24), *(v11 + 28), 2 * (*&dword_1ED4E9660 == 0), a2, @"CA Image Slot", a7);
    if (iosurface_with_pixel_format)
    {
      v22 = iosurface_with_pixel_format;
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v23 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x178uLL, 0xDEEC3011uLL);
      if (v23)
      {
        v24 = v23;
        CA::Render::Surface::Surface(v23, v22, v18, 0, 0, 0, 0);
        if (a5)
        {
          CA::Render::Texture::set_colorspace(v24, a5);
        }

        v25 = *(v11 + 16);
        if (v25 != v24)
        {
          if (v25 && atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v25 + 16))(v25);
          }

          v26 = v24;
          if (!atomic_fetch_add(v24 + 2, 1u))
          {
            v26 = 0;
            atomic_fetch_add(v24 + 2, 0xFFFFFFFF);
          }

          *(v11 + 16) = v26;
        }

        IOSurfaceSetOwnershipIdentity();
        if (atomic_fetch_add(v24 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v24 + 16))(v24);
        }
      }

      else
      {
        CFRelease(v22);
      }
    }
  }

LABEL_43:
  v27 = *(*(this + 3) + 16);
  if (v27)
  {
    v27 = *(v27 + 128);
  }

  *(this + 2) = v27;
}

void CA::WindowServer::wrap_buffer(CA::WindowServer *this, CA::WindowServer::Display *a2, CA::Render::RenderTarget *a3)
{
  if ((*(*a2 + 16))(a2))
  {
    v5 = *(a2 + 2);
    if (v5)
    {

      CA::WindowServer::IOSurface::wrap_buffer(this, v5, 1, 1);
    }
  }

  else if (*(a2 + 3))
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v6 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x128uLL, 0xDEEC3011uLL);
    if (v6)
    {
      v7 = *(a2 + 2);
      v8 = *(a2 + 3);
      v11 = a2 + 16;
      v9 = *(a2 + 2);
      v10 = *(v11 + 1);
      v12 = *(v10 + 24);
      v13 = (v10 + 8);
      if (!atomic_fetch_add((v10 + 8), 1u))
      {
        v10 = 0;
        atomic_fetch_add(v13, 0xFFFFFFFF);
      }

      CA::WindowServer::Surface::Surface(v6, this, v7, v8, 1111970369);
      *v14 = &unk_1EF1F66E0;
      v14[33] = v12;
      v14[34] = v9;
      v14[36] = v10;
    }
  }
}

CA::Shape **CA::WindowServer::AccelServer::render_surface(CA::WindowServer::Display **this, CA::Render::Update *a2, CA::WindowServer::Surface *a3, const CA::Bounds *a4, uint64_t a5, int a6)
{
  if ((*(*a3 + 168))(a3) && (v12 = (*(*this + 54))(this)) != 0)
  {
    v13 = v12;
    v14 = CA::WindowServer::Display::render_surface(this[12], v12, a3, a2, a4, a5, a6);
    CA::OGL::Renderer::collect(v13, a2, *(a2 + 10));
    return v14;
  }

  else
  {

    return CA::WindowServer::Server::render_surface(this, a2, a3, a4, a5, a6);
  }
}

uint64_t CA::WindowServer::Display::render_surface(CA::WindowServer::Display *this, CA::Shape **a2, uint64_t a3, const CA::Render::Update **a4, const CA::Bounds *a5, uint64_t a6, int a7)
{
  v27 = *MEMORY[0x1E69E9840];
  v14 = objc_autoreleasePoolPush();
  v15 = *a2;
  v16 = *(*a2 + 198);
  *(*a2 + 198) = a7;
  *(v15 + 75) = CA::WindowServer::Display::ogl_display(this);
  *(v15 + 38) = *a5;
  *(v15 + 692) |= 2u;
  CA::Render::Update::render_edr_factor();
  v18 = v17;
  if (a3)
  {
    v19 = CA::Render::fourcc_to_format(*(a3 + 64));
    if (((v19 < 0x1D) & (0x17826000u >> v19)) != 0)
    {
      v18 = 1.0;
    }
  }

  (*(*v15 + 1128))(v15, v18);
  CA::OGL::Renderer::prepare_clip_shape(a2, a4[2]);
  if (a3)
  {
    v20 = *(a3 + 64);
    if (v20 == 1647534392 || v20 == 643969848)
    {
      v21 = *(a3 + 236);
      if ((v21 & 0x40000000) == 0)
      {
        *(a3 + 236) = v21 | 0xC0000000;
      }
    }

    if ((*(*v15 + 1008))(v15, a3))
    {
      v25 = *a5;
      memset(v26, 0, sizeof(v26));
      CA::Shape::operator=(v26, &v25);
      (*(*v15 + 1040))(v15, *(a3 + 16));
      *&v25 = 0;
      (*(*v15 + 1000))(v15, v26, &v25);
      CA::OGL::Renderer::render(a2, a4, *(a3 + 16), v22);
      (*(*v15 + 456))(v15, a6);
      *(a3 + 236) &= ~0x200000000uLL;
      (*(*v15 + 1008))(v15, 0);
      a3 = 1;
    }

    else
    {
      a3 = 0;
    }
  }

  v23 = a2[2];
  if (v23)
  {
    CA::Shape::unref(v23);
    a2[2] = 0;
  }

  (*(*v15 + 1128))(v15, 1.0);
  *(v15 + 75) = 0;
  *(v15 + 692) &= ~2u;
  *(v15 + 198) = v16;
  objc_autoreleasePoolPop(v14);
  return a3;
}

uint64_t anonymous namespace::DeferredImageSlotIOSurface::set_edr_factor(uint64_t this, float a2, __IOSurface *a3)
{
  v3 = *(*(this + 24) + 16);
  if (v3)
  {
    *(v3 + 368) = *(v3 + 368) & 0xFFF7 | (8 * (a2 != 1.0)) | 4;
    if (*(v3 + 148) != a2)
    {
      *(v3 + 148) = a2;
      return CA::Render::iosurface_set_edr_factor(*(v3 + 128), a3, a2);
    }
  }

  return this;
}

void CA::Render::RenderSurface::set_content_headroom(IOSurfaceRef *this, float a2)
{
  v5 = *MEMORY[0x1E69E9840];
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  IOSurfaceSetValue(this[2], *MEMORY[0x1E696CEF0], v3);
  if (v3)
  {
    CFRelease(v3);
  }
}

void CA::OGL::MetalContext::release_display_surfaces(CA::OGL::MetalContext *this, os_unfair_lock_s **a2, void *a3)
{
  v4 = *a2;
  os_unfair_lock_lock(*a2 + 846);
  v5 = *&v4[848]._os_unfair_lock_opaque;
  if (v5)
  {
    x_list_remove(v5, a2);
    *&v4[848]._os_unfair_lock_opaque = v5;
  }

  os_unfair_lock_unlock(v4 + 846);
  if (*a2)
  {
    for (i = 1; i != 3; ++i)
    {
      CA::OGL::Context::release_surface(*a2, a2[i]);
    }
  }

  JUMPOUT(0x1865EA9A0);
}

void anonymous namespace::DeferredImageSlotIOSurface::~DeferredImageSlotIOSurface(_anonymous_namespace_::DeferredImageSlotIOSurface *this)
{
  *this = &unk_1EF1FA558;
  v2 = *(this + 3);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF1FA558;
  v1 = *(this + 3);
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 16))(v1);
    }
  }
}

CATransform3D *__cdecl CATransform3DMakeScale(CATransform3D *__return_ptr retstr, CGFloat sx, CGFloat sy, CGFloat sz)
{
  *&retstr->m11 = xmmword_183E20E00;
  *&retstr->m13 = 0u;
  *&retstr->m21 = xmmword_183E20E60;
  *&retstr->m23 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = xmmword_183E20E00;
  *&retstr->m41 = 0u;
  *&retstr->m43 = xmmword_183E20E60;
  retstr->m11 = sx;
  retstr->m22 = sy;
  retstr->m33 = sz;
  return result;
}

void ___ZN2CA7Context18commit_transactionEPNS_11TransactionEdPd_block_invoke_14(uint64_t a1, uint64_t a2)
{
  if (a2 == 8)
  {
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], *(a1 + 48), 1u, -1);
    v5 = *(*(*(a1 + 32) + 8) + 40);

    dispatch_release(v5);
  }

  else if (a2 == 2)
  {
    msg = dispatch_mach_msg_get_msg();
    mach_msg_destroy(msg);
    v4 = *(a1 + 40);
    pthread_mutex_lock((v4 + 16));
    CA::Context::destroy(*(a1 + 40));
    pthread_mutex_unlock((v4 + 16));
    CA::Context::unref(*(a1 + 40), 1);
    dispatch_mach_cancel();
  }
}

void _XDeleteClient(_DWORD *a1, uint64_t a2)
{
  v6[5] = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (a1[6] || a1[7] <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return;
  }

  v4 = CA::Render::Context::context_by_server_port(a1[3]);
  if (v4)
  {
    v5 = v4;
    if ((*(v4 + 14) & 0x10) != 0)
    {
      CA::Render::Context::zombify(v4);
    }

    else
    {
      CA::Render::Context::destroy(v4);
    }

    if (dealloc_queue(void)::once[0] != -1)
    {
      dispatch_once(dealloc_queue(void)::once, &__block_literal_global_70);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __CASDeleteClient_block_invoke;
    v6[3] = &__block_descriptor_tmp_72;
    v6[4] = v5;
    dispatch_async(dealloc_queue(void)::queue, v6);
  }

  *(a2 + 32) = 0;
}

void CA::Render::Context::zombify(CA::Render::Context *this)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(this + 56))
  {
    pthread_mutex_lock((this + 72));
    v2 = *(this + 3);
    if ((v2 & 0x200000) == 0)
    {
      *(this + 3) = v2 | 0x200000;
      if (byte_1ED4E9878 == 1)
      {
        if (x_log_get_zombie(void)::once != -1)
        {
          dispatch_once(&x_log_get_zombie(void)::once, &__block_literal_global_4431);
        }

        v5 = x_log_get_zombie(void)::log;
        if (os_log_type_enabled(x_log_get_zombie(void)::log, OS_LOG_TYPE_INFO))
        {
          v6 = *(this + 4);
          v7 = 67109120;
          v8 = v6;
          _os_log_impl(&dword_183AA6000, v5, OS_LOG_TYPE_INFO, "<ctx:%#x> zombified context", &v7, 8u);
        }
      }
    }

    pthread_mutex_unlock((this + 72));
  }

  else
  {
    if (byte_1ED4E9878 == 1)
    {
      if (x_log_get_zombie(void)::once != -1)
      {
        dispatch_once(&x_log_get_zombie(void)::once, &__block_literal_global_4431);
      }

      v3 = x_log_get_zombie(void)::log;
      if (os_log_type_enabled(x_log_get_zombie(void)::log, OS_LOG_TYPE_INFO))
      {
        v4 = *(this + 4);
        v7 = 67109120;
        v8 = v4;
        _os_log_impl(&dword_183AA6000, v3, OS_LOG_TYPE_INFO, "<ctx:%#x> cannot zombify, host is dead", &v7, 8u);
      }
    }

    CA::Render::Context::destroy(this);
  }
}

uint64_t CA::Render::Context::context_by_client_port(CA::Render::Context *this)
{
  v1 = 0;
  v11 = *MEMORY[0x1E69E9840];
  if (this && CA::Render::Context::_context_table)
  {
    v10 = 0;
    v9 = this;
    os_unfair_lock_lock(&CA::Render::Context::_context_lock);
    v3 = 0;
    v4 = CA::Render::Context::_context_table;
    v5 = 1 << *CA::Render::Context::_context_table;
    do
    {
      for (i = *(*(v4 + 16) + 8 * v3); i; i = *i)
      {
        CA::Render::find_port(i[2], i[3], &v9, v2);
      }

      ++v3;
    }

    while (v3 != v5);
    v1 = v10;
    if (v10)
    {
      v7 = (v10 + 8);
      if (!atomic_fetch_add((v10 + 8), 1u))
      {
        v1 = 0;
        atomic_fetch_add(v7, 0xFFFFFFFF);
      }
    }

    os_unfair_lock_unlock(&CA::Render::Context::_context_lock);
  }

  return v1;
}

void CA::Render::find_port(CA::Render *this, uint64_t a2, CA::Render::Context *a3, void *a4)
{
  if (*(a2 + 260) == *a3 || *(a2 + 264) == *a3)
  {
    *(a3 + 1) = a2;
  }
}

atomic_uint *__CASDeleteClient_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t will_suspend_callback(CA::Render::Object *a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = current_displays();
  result = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) _invalidate];
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

id current_displays(void)
{
  pthread_mutex_lock(&_displays_mutex);
  v0 = [_displays copy];
  pthread_mutex_unlock(&_displays_mutex);
  return v0;
}

void CA::Render::anonymous namespace::flush_images_callback(CA::Render::_anonymous_namespace_ *this, CA::Render::Object *a2, void *a3, void *a4)
{
  ptr[1] = *MEMORY[0x1E69E9840];
  if (CA::Render::image_cache)
  {
    ptr[0] = 0;
    os_unfair_lock_lock(&CA::Render::image_cache_lock);
    os_unfair_lock_unlock(&CA::Render::image_cache_lock);
    for (i = ptr[0]; ptr[0]; i = ptr[0])
    {
      ptr[0] = *(i + 1);
      v5 = *(i + 3);
      if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v5 + 16))(v5);
      }

      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, i);
    }
  }
}

uint64_t CA::Render::anonymous namespace::FlushImages::predicate(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2[3];
  if (*(v3 + 8) == 1)
  {
    if ((*(v3 + 12) & 0x80000000) == 0)
    {
LABEL_3:
      v7 = *a2;
      v6 = a2[1];
      *(v7 + 8) = v6;
      *v6 = v7;
      v8 = *a3;
      *a2 = a2;
      a2[1] = v8;
      *a3 = a2;
      return 1;
    }

    if (!CA::Render::Encoder::ObjectCache::_cache_list)
    {
      os_unfair_lock_lock(&CA::Render::Encoder::ObjectCache::_lock);
      if (!CA::Render::Encoder::ObjectCache::_cache_list)
      {
        *(v3 + 12) &= ~0x80000000;
        os_unfair_lock_unlock(&CA::Render::Encoder::ObjectCache::_lock);
        goto LABEL_3;
      }

      os_unfair_lock_unlock(&CA::Render::Encoder::ObjectCache::_lock);
    }
  }

  return 0;
}

uint64_t CABackingStoreCollectWithCompletionHandler(uint64_t a1)
{
  v2 = mach_absolute_time();
  v3 = CATimeWithHostTime(v2);
  CA::Render::post_notification(0x32u, 0, 0, 0);
  CA::Render::collect(1, v3);
  if (buffer_list)
  {
    operator new();
  }

  v4 = *(a1 + 16);

  return v4(a1);
}

void yielding_collect_callback(double a1, void *a2)
{
  v3 = mach_absolute_time();
  v4 = CATimeWithHostTime(v3);
  if (v4 >= *a2)
  {
    goto LABEL_10;
  }

  v6 = CABackingStoreCollect_(v4, 1);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 576);
  if (!v8)
  {
    v8 = CA::Transaction::create(0);
  }

  if (!**(v8 + 15))
  {
    CA::Transaction::ensure_implicit(v8, 1);
  }

  v9 = *(StatusReg + 576);
  if (v9 && **(v9 + 15))
  {
    CA::Transaction::flush(v9);
  }

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
LABEL_10:
    (*(*(a2 + 2) + 16))();
    _Block_release(*(a2 + 2));

    JUMPOUT(0x1865EA9A0);
  }

  v10 = *a2;
  v11 = *(a2 + 1);
  if (v11 + v4 < *a2)
  {
    v10 = v11 + v4;
  }

  *(a2 + 1) = v11 + v11;

  CA::call_at_time(yielding_collect_callback, a2, v10, v5);
}

void CA::Render::Context::schedule_destroy(void)::$_0::__invoke(atomic_uint *a1)
{
  CA::Render::Context::destroy(a1);
  if (atomic_fetch_add(a1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = *(*a1 + 16);

    v2(a1);
  }
}

void CA::WindowServer::copy_surface_log(CA::WindowServer *this, const char *a2, uint64_t a3, CA::WindowServer::Surface *a4, CA::WindowServer::Surface *a5, CA::Rect *a6, CA::Rect *a7)
{
  v10 = a2;
  v65 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v12 = *a5;
    v13 = *(a5 + 1);
    Width = *(a5 + 2);
    Height = *(a5 + 3);
    if (a6)
    {
LABEL_3:
      v34 = *(a6 + 1);
      v35 = *a6;
      v16 = *(a6 + 3);
      v17 = *(a6 + 2);
      v36 = v16;
      goto LABEL_6;
    }
  }

  else
  {
    v18 = (*(*a3 + 168))(a3, a2, a3, a4, 0, a6, a7);
    Width = IOSurfaceGetWidth(v18);
    v19 = (*(*a3 + 168))(a3);
    Height = IOSurfaceGetHeight(v19);
    v13 = 0;
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v20 = (*(*a4 + 168))(a4);
  v17 = IOSurfaceGetWidth(v20);
  v21 = (*(*a4 + 168))(a4);
  v35 = 0;
  v36 = IOSurfaceGetHeight(v21);
  v34 = 0;
LABEL_6:
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v22 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v23 = "GPU";
    if (v10)
    {
      v23 = "MSR";
    }

    v32 = v23;
    v33 = this;
    v24 = (*(*a3 + 168))(a3);
    v25 = IOSurfaceGetWidth(v24);
    v26 = (*(*a3 + 168))(a3);
    v27 = IOSurfaceGetHeight(v26);
    v28 = (*(*a4 + 168))(a4);
    v29 = v17;
    v30 = IOSurfaceGetWidth(v28);
    v31 = (*(*a4 + 168))(a4);
    *buf = 136318466;
    v38 = v32;
    v39 = 2080;
    v40 = v33;
    v41 = 2048;
    v42 = v25;
    v43 = 2048;
    v44 = v27;
    v45 = 2048;
    v46 = v12;
    v47 = 2048;
    v48 = v13;
    v49 = 2048;
    v50 = Width;
    v51 = 2048;
    v52 = Height;
    v53 = 2048;
    v54 = v30;
    v55 = 2048;
    v56 = IOSurfaceGetHeight(v31);
    v57 = 2048;
    v58 = v35;
    v59 = 2048;
    v60 = v34;
    v61 = 2048;
    v62 = v29;
    v63 = 2048;
    v64 = v36;
    _os_log_impl(&dword_183AA6000, v22, OS_LOG_TYPE_DEFAULT, "Copy with %s: %s  dst: %ldx%ld subcoords: %f,%f %ldx%ld  src: %ldx%ld subcoords: %f,%f %ldx%ld", buf, 0x8Eu);
  }
}

void CA::Render::memory_warning(CA::Render *this, void *a2)
{
  v2 = mach_absolute_time();
  CA::Render::last_memory_warning = CATimeWithHostTime(v2);
  CA::Render::collect(1, *&CA::Render::last_memory_warning);

  CA::Render::post_notification(0x30u, 0, 0, 0);
}

char *CA::OGL::BackdropBuffer::copy(CA::OGL::BackdropBuffer *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_type_zone_malloc(malloc_zone, 0xE8uLL, 0x165299FDuLL);
  v3 = v2;
  if (v2)
  {
    v4 = *(this + 2);
    *(v2 + 1) = *(this + 1);
    *(v2 + 2) = v4;
    *v2 = &unk_1EF202840;
    *(v2 + 3) = *(this + 3);
    v5 = *(this + 4);
    if (v5)
    {
      ++*v5;
    }

    *(v2 + 4) = v5;
    v6 = *(this + 5);
    if (v6)
    {
      ++*v6;
    }

    *(v2 + 5) = v6;
    v7 = *(this + 6);
    if (v7)
    {
      ++*v7;
    }

    *(v2 + 6) = v7;
    *(v2 + 56) = *(this + 56);
    CA::Transform::operator=((v2 + 72), this + 72);
    v8 = v3[224] & 0xFE | *(this + 224) & 1;
    v3[224] = v8;
    v9 = v8 & 0xFFFFFFFD | (2 * ((*(this + 224) >> 1) & 1));
    v3[224] = v9;
    v10 = *(this + 224) & 4 | v9 & 0xF3 | 8;
    v3[224] = v10;
    v3[224] = v10 & 0xEF | *(this + 224) & 0x10;
  }

  return v3;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,BOOL (*)(unsigned int)>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL (*)(unsigned int)>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL (*)(unsigned int)>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL (*)(unsigned int)>>>::find<unsigned int>(unsigned int a1)
{
  if (!*(&CA::Render::Server::dead_name_watch_list(void)::watch_list + 1))
  {
    return 0;
  }

  v1 = vcnt_s8(*(&CA::Render::Server::dead_name_watch_list(void)::watch_list + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = a1;
    if (*(&CA::Render::Server::dead_name_watch_list(void)::watch_list + 1) <= a1)
    {
      v2 = a1 % DWORD2(CA::Render::Server::dead_name_watch_list(void)::watch_list);
    }
  }

  else
  {
    v2 = (DWORD2(CA::Render::Server::dead_name_watch_list(void)::watch_list) - 1) & a1;
  }

  i = *(CA::Render::Server::dead_name_watch_list(void)::watch_list + 8 * v2);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v4 = i[1];
      if (v4 == a1)
      {
        if (*(i + 4) == a1)
        {
          return i;
        }
      }

      else
      {
        if (v1.u32[0] > 1uLL)
        {
          if (v4 >= *(&CA::Render::Server::dead_name_watch_list(void)::watch_list + 1))
          {
            v4 %= *(&CA::Render::Server::dead_name_watch_list(void)::watch_list + 1);
          }
        }

        else
        {
          v4 &= *(&CA::Render::Server::dead_name_watch_list(void)::watch_list + 1) - 1;
        }

        if (v4 != v2)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

void CAImageQueueUnregisterBuffer(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 200))
  {
    os_unfair_lock_lock((a1 + 16));
    v4 = x_hash_table_remove(*(a1 + 200), a2);
    os_unfair_lock_unlock((a1 + 16));

    delete_buffer(a2, v4, a1);
  }
}

void delete_drawable_private(_CAMetalDrawablePrivate *a1, _CAImageQueue *a2)
{
  if (a1)
  {
    if (a2 && a1->var5)
    {
      CAImageQueueUnregisterBuffer(a2, a1->var5);
    }

    var10 = a1->var10;
    if (var10)
    {
      CFRelease(var10);
    }

    var11 = a1->var11;
    if (var11)
    {
      v5 = *(a1->var9 + 28);
      if (v5)
      {
        [v5 removeAllocation:?];
        [*(a1->var9 + 28) commit];
        var11 = a1->var11;
      }

      a1->var11 = 0;
    }

    a1->var13 = 0;
    var15 = a1->var15;
    if (var15)
    {
      CGColorSpaceRelease(var15);
      a1->var15 = 0;
    }

    free(a1);
  }
}

void CA::Render::EmitterState::free_cells_state(CA::Render::EmitterState *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = 0;
    do
    {
      CA::Render::EmitterState::free_cell_state(a1, *(*a2 + 8 * v4++));
    }

    while (v4 < *(a2 + 8));
    v5 = *a2;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v6 = malloc_zone;

    malloc_zone_free(v6, v5);
  }
}

void CA::OGL::map_layer_corners(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = a3;
  v6 = *(a1 + 24);
  v7 = v6[9];
  v8 = v6[10];
  v9 = v6[11];
  v10 = v6[12];
  *a3 = v7;
  a3[1] = v8;
  v11 = v9 + v7;
  a3[2] = v11;
  a3[3] = v8;
  v12 = v10 + v8;
  a3[4] = v11;
  a3[5] = v12;
  a3[6] = v7;
  a3[7] = v12;
  v13 = 4;
  do
  {
    v14 = *(a1 + 16);
    v15 = *(v14 + 56);
    if (v15)
    {
      CA::Mat4Impl::mat4_apply_to_point2(v15, v3, a3);
    }

    else
    {
      v16 = v3[1];
      *v3 = *v3 + *(v14 + 64);
      v3[1] = v16 + *(v14 + 72);
    }

    CA::Transform::apply_to_point2(*(a2 + 24), v3, a3);
    v3 += 2;
    --v13;
  }

  while (v13);
}

double *CA::OGL::emit_rim_rounded_rect(uint64_t a1, float64x2_t *a2, void *a3, int a4, uint64_t a5, double a6, float a7, int8x16_t a8, double a9)
{
  v10 = a3;
  v79 = *MEMORY[0x1E69E9840];
  if (byte_1ED4E9872 == 1)
  {
    *a3 = 0x3C00380000000000;
  }

  *(*(a1 + 16) + 497) |= 1u;
  *(*(a1 + 16) + 16) = 77;
  v63 = a2;
  v64 = a5;
  v65 = 0xFF0000003FLL;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  *&a8.i64[1] = a9;
  v14 = vdup_n_s32(a4 == 0);
  v15.i64[0] = v14.u32[0];
  v15.i64[1] = v14.u32[1];
  v16 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v15, 0x3FuLL)), a8, vmulq_f64(a8, vdupq_n_s64(0x3FF875696E58A32FuLL)));
  v17 = vaddq_f64(vdivq_f64(vmulq_f64(a2[1], vdupq_n_s64(0xBFF721E8A7A4B61BLL)), v16), vdupq_n_s64(0x400721E8A7A4B61BuLL));
  __asm { FMOV            V1.2D, #1.0 }

  v23 = vbslq_s8(vcgtq_f64(v17, _Q1), _Q1, v17);
  v77[1] = vcvt_f32_f64(vbicq_s8(v23, vcltzq_f64(v23)));
  if ((*(a5 + 144) & 0x10) != 0)
  {
    v26 = vaddvq_f64(vmulq_f64(*a5, *a5));
    v27 = vaddvq_f64(vmulq_f64(*(a5 + 32), *(a5 + 32)));
    v28 = *(a5 + 120);
    if (v28 != 1.0)
    {
      v29 = 1.0 / (v28 * v28);
      v26 = v29 * v26;
      v27 = v29 * v27;
    }

    v30 = v26 != 1.0;
    if (v27 != 1.0)
    {
      v30 = 1;
    }

    v31 = sqrt(v26);
    v32 = sqrt(v27);
    if (v30)
    {
      v25 = v32;
    }

    else
    {
      v25 = v27;
    }

    if (v30)
    {
      v24 = v31;
    }

    else
    {
      v24 = v26;
    }
  }

  else
  {
    v24 = *(a5 + 128);
    v25 = v24;
  }

  v33 = v16.f64[1];
  v34 = vmuld_lane_f64(v25, v16, 1);
  if (v24 * v16.f64[0] >= v34)
  {
    v35 = v24 * v16.f64[0];
  }

  else
  {
    v35 = v34;
  }

  v77[0] = 0;
  LODWORD(a3) = vcvtpd_s64_f64(v35);
  v62 = v16.f64[0];
  (*(*a1 + 520))(a1, 0, a3, 0, 0, v77);
  if (v25 >= v24)
  {
    v37 = v24;
  }

  else
  {
    v37 = v25;
  }

  v38 = v35;
  v39 = v37 * a6 / v38;
  v40 = *(a1 + 16);
  *(v40 + 24) = v39;
  *(v40 + 28) = a7;
  *(v40 + 32) = 0;
  *(v40 + 8) = *v10;
  v41 = a2->f64[0];
  v42 = a2->f64[1];
  v43 = a2[1].f64[1];
  v44 = a2[1].f64[0] + a2->f64[0];
  v76[2] = a2->f64[0] + v62;
  v76[3] = v44 - v62;
  v45 = v43 + v42;
  v75[2] = v42 + v33;
  v75[3] = v45 - v33;
  v76[0] = v41 - a6;
  v76[1] = v41;
  v76[4] = v44;
  v76[5] = v44 + a6;
  v75[0] = v42 - a6;
  v75[1] = v42;
  v75[4] = v45;
  v75[5] = v45 + a6;
  v46 = a6 * *(v77 + 1);
  v47 = v46 / fmax(v62, 0.00100000005) + *(v77 + 1);
  v71 = *v77 + ((*(v77 + 1) - *v77) * 0.5);
  v72 = v71;
  *&v70 = -v47;
  v73 = HIDWORD(v77[0]);
  HIDWORD(v70) = v77[0];
  v74 = v47;
  *&v44 = v46 / fmax(v33, 0.00100000005) + *(v77 + 1);
  v69[2] = v71;
  v69[3] = v71;
  v69[0] = -*&v44;
  v69[4] = *(v77 + 1);
  v69[1] = *v77;
  v69[5] = *&v44;
  if (*(a1 + 152) >= 0x24u)
  {
    v49 = 0;
    v50 = 0;
    v51 = *(a1 + 136);
    v52 = &v51[1].f32[1];
    do
    {
      v53 = 0;
      v54 = v75[v50];
      v55 = v49;
      v56 = v52;
      do
      {
        v57 = (v78[0].f64 + v55);
        *v57 = v76[v53];
        v57[1] = v54;
        *(v56 - 1) = *(&v70 + v53);
        v58 = v69[v50];
        *(v57 + 1) = xmmword_183E20E60;
        *v56 = v58;
        v56 += 12;
        ++v53;
        v55 += 32;
      }

      while (v53 != 6);
      ++v50;
      v52 += 72;
      v49 += 192;
    }

    while (v50 != 6);
    v59 = *(*(a1 + 16) + 8);
    for (i = 2; i != 110; i += 3)
    {
      v51[i].i64[0] = v59;
    }

    if (v66)
    {
      v66(&v63, v78, v51, 36, xmmword_183E20E60);
    }

    CA::OGL::transform_vertices(v78, v51, 0x24, v64);
    if (v67)
    {
      v67(&v63, v51, 36);
    }

    if ((v65 & 9) == 0)
    {
      goto LABEL_41;
    }

    v61 = BYTE4(v65);
    if ((v65 & 0xF00000000) == 0)
    {
      goto LABEL_39;
    }

    if ((v65 & 0x400000000) != 0)
    {
      CA::OGL::aa_adjust_vertices(v51, v51 + 18, 48, 6);
      v61 = BYTE4(v65);
      if ((v65 & 0x800000000) == 0)
      {
LABEL_36:
        if ((v61 & 1) == 0)
        {
          goto LABEL_37;
        }

LABEL_45:
        CA::OGL::aa_adjust_vertices(v51, v51 + 3, 288, 6);
        v61 = BYTE4(v65);
        if ((v65 & 0x200000000) != 0)
        {
LABEL_38:
          CA::OGL::aa_adjust_vertices(v51 + 15, v51 + 12, 288, 6);
          v61 = BYTE4(v65);
        }

LABEL_39:
        if ((v61 & 0xF0) != 0)
        {
          CA::OGL::aa_adjust_vertices(v51 + 24, v51 + 6, 48, 2);
          CA::OGL::aa_adjust_vertices(v51 + 78, v51 + 96, 48, 2);
          CA::OGL::aa_adjust_vertices(v51 + 39, v51 + 36, 288, 2);
          CA::OGL::aa_adjust_vertices(v51 + 48, v51 + 51, 288, 2);
        }

LABEL_41:
        CA::OGL::emit_quad_indices(a1, v68, CA::OGL::emit_rim_rounded_rect(CA::OGL::Context &,CA::Rect &,double,CA::OGL::ExtendedColor,float,unsigned int,CA::Vec2<double>,unsigned int,CA::Transform const&)::indices, 0x10uLL, 0x24u);
        *(*(a1 + 16) + 17) = 19;
        CA::OGL::emit_quad_indices(a1, v68, &CA::OGL::emit_rim_rounded_rect(CA::OGL::Context &,CA::Rect &,double,CA::OGL::ExtendedColor,float,unsigned int,CA::Vec2<double>,unsigned int,CA::Transform const&)::indices[16], 0x10uLL, 0x24u);
        result = (*(*a1 + 560))(a1, 0, 0);
        *(*(a1 + 16) + 16) = 0;
        return result;
      }
    }

    else if ((v65 & 0x800000000) == 0)
    {
      goto LABEL_36;
    }

    CA::OGL::aa_adjust_vertices(v51 + 90, v51 + 72, 48, 6);
    v61 = BYTE4(v65);
    if ((v65 & 0x100000000) == 0)
    {
LABEL_37:
      if ((v61 & 2) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    goto LABEL_45;
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBServer::add_power_log_timer(void)::$_0::__invoke(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a2 + 856));
  CA::WindowServer::IOMFBDisplay::post_power_log(*(a2 + 96));

  return pthread_mutex_unlock((a2 + 856));
}

void CA::Render::Context::delete_slot(CA::Render::Context *this, unsigned int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a2;
  if (a2 && CA::Render::Context::_slot_table)
  {
    v5 = *(this + 21);
    v4 = *(this + 22);
    if (v5 != v4)
    {
      while (*v5 != a2)
      {
        v5 += 8;
        if (v5 == v4)
        {
          return;
        }
      }
    }

    if (v5 != v4)
    {
      os_unfair_lock_lock(&CA::Render::Context::_context_lock);
      v6 = x_hash_table_remove(CA::Render::Context::_slot_table, a2);
      v7 = *(this + 22);
      v8 = *(v7 - 4);
      *v5 = *(v7 - 8);
      *(v5 + 4) = v8;
      *(this + 22) -= 8;
      os_unfair_lock_unlock(&CA::Render::Context::_context_lock);
      if (v6)
      {
        if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
        }
      }

      CA::Render::post_notification(0x39u, 0, &v9, 0);
    }
  }
}

uint64_t shared_server_init(void *)::$_0::__invoke(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  result = *(*(_shared_server + 8) + 16);
  if (result)
  {
    return (*(result + 16))(result, *a3);
  }

  return result;
}

void CA::Render::DeferredImageSlot::~DeferredImageSlot(CA::Render::DeferredImageSlot *this, const CA::Render::Object *a2)
{
  *this = &unk_1EF1F6B40;
  v3 = *(this + 2);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  --dword_1ED4EAA64;
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
  *this = &unk_1EF1F6B40;
  v3 = *(this + 2);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  --dword_1ED4EAA64;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

uint64_t CA::OGL::GetPerfHud(CA::OGL *this)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = CARecordCurrentDisplayGet();
  os_unfair_lock_lock(&CA::OGL::_perf_hud_list_lock);
  v3 = CA::OGL::_perf_hud_list[0];
  v2 = off_1EA84E7E0[0];
  if (CA::OGL::_perf_hud_list[0] == off_1EA84E7E0[0])
  {
LABEL_5:
    v5 = off_1EA84E7E0[0] - CA::OGL::_perf_hud_list[0];
    v6 = ((off_1EA84E7E0[0] - CA::OGL::_perf_hud_list[0]) >> 4) + 1;
    if (qword_1EA84E7F0 < v6)
    {
      v7 = off_1EA84E7E8;
      v8 = (qword_1EA84E7F0 + 1) | ((qword_1EA84E7F0 + 1) >> 1) | (((qword_1EA84E7F0 + 1) | ((qword_1EA84E7F0 + 1) >> 1)) >> 2);
      v9 = v8 | (v8 >> 4) | ((v8 | (v8 >> 4)) >> 8);
      v10 = v9 | (v9 >> 16) | ((v9 | (v9 >> 16)) >> 32);
      if (v10 + 1 > v6)
      {
        v11 = v10 + 1;
      }

      else
      {
        v11 = ((off_1EA84E7E0[0] - CA::OGL::_perf_hud_list[0]) >> 4) + 1;
      }

      v12 = malloc_type_malloc(16 * v11, 0x1020040D5A9D86FuLL);
      v13 = v12;
      v14 = CA::OGL::_perf_hud_list[0];
      v15 = off_1EA84E7E0[0];
      if (CA::OGL::_perf_hud_list[0] != off_1EA84E7E0[0])
      {
        v16 = v12;
        do
        {
          v17 = *v14;
          v14 += 4;
          *v16 = v17;
          v16 += 4;
        }

        while (v14 != v15);
      }

      if (v3 != v7)
      {
        free(CA::OGL::_perf_hud_list[0]);
      }

      v2 = (v13 + v5);
      CA::OGL::_perf_hud_list[0] = v13;
      off_1EA84E7E0[0] = (v13 + v5);
      qword_1EA84E7F0 = v11;
    }

    *v2 = 0;
    *(v2 + 1) = 0;
    v18 = off_1EA84E7E0[0];
    *off_1EA84E7E0[0] = v1;
    off_1EA84E7E0[0] = v18 + 4;
    operator new();
  }

  v4 = CA::OGL::_perf_hud_list[0];
  while (*v4 != v1)
  {
    v4 += 4;
    if (v4 == off_1EA84E7E0[0])
    {
      goto LABEL_5;
    }
  }

  v19 = *(v4 + 1);
  os_unfair_lock_unlock(&CA::OGL::_perf_hud_list_lock);
  return v19;
}

CFDictionaryRef CA::SurfaceUtil::create_agx_plane_dict(CA::SurfaceUtil *this, unint64_t a2, unint64_t a3, uint64_t *a4, unint64_t *a5, unint64_t *a6, unint64_t *a7)
{
  keys[15] = *MEMORY[0x1E69E9840];
  v55 = a2;
  valuePtr = this;
  v54 = a3;
  if (a3 == 4)
  {
    v13 = 64;
  }

  else
  {
    if (a3 != 8)
    {
      abort();
    }

    v13 = 32;
  }

  if (v13 > this || (LODWORD(v14) = this, LODWORD(v15) = a2, a2 <= 0x3F))
  {
    v16 = (this - 1) | ((this - 1) >> 1);
    v17 = v16 | (v16 >> 2) | ((v16 | (v16 >> 2)) >> 4);
    v18 = v17 | (v17 >> 8) | ((v17 | (v17 >> 8)) >> 16);
    v14 = (v18 | HIDWORD(v18)) + 1;
    v19 = (a2 - 1) | ((a2 - 1) >> 1);
    v20 = v19 | (v19 >> 2) | ((v19 | (v19 >> 2)) >> 4);
    v21 = v20 | (v20 >> 8) | ((v20 | (v20 >> 8)) >> 16);
    v15 = (v21 | HIDWORD(v21)) + 1;
  }

  v22 = 0;
  v23 = 0;
  v51 = 0;
  v52 = 0;
  if ((0x8Bu >> (a3 - 1)))
  {
    v23 = qword_183E37938[a3 - 1];
    v22 = 16;
    v51 = 16;
    v52 = v23;
  }

  v24 = v14;
  v25 = 16384.0 / a3;
  v26 = log2f(v25) * 0.5;
  v27 = exp2f(floorf(v26));
  v53 = ((v27 * a3) + v24 * a3 - 1) / (v27 * a3) * (v27 * a3);
  v28 = exp2f(ceilf(v26));
  v29 = ((v28 + v15 - 1) / v28 * v28 * v53 + 127) & 0xFFFFFFFFFFFFFF80;
  v30 = vcvtps_u32_f32(log2f(ceilf(this / v23)));
  v31 = (v29 + *MEMORY[0x1E69E9AC8] + ((2 * (1 << v30 << vcvtps_u32_f32(log2f(ceilf(a2 / v22)))) + 127) & 0xFFFFFF80) - 1) & -*MEMORY[0x1E69E9AC8];
  v49 = v29;
  v50 = v31;
  *a4 = v31;
  *a5 = v23;
  *a6 = v22;
  v48 = 3;
  v46 = ((this + v23 - 1) & -v23) / v23;
  v47 = 2;
  v44 = 2;
  v45 = ((a2 + v22 - 1) & -v22) / v22;
  v42 = 0;
  v43 = 0;
  v32 = *MEMORY[0x1E696D090];
  keys[0] = *MEMORY[0x1E696D0C8];
  keys[1] = v32;
  v33 = *MEMORY[0x1E696CFE8];
  keys[2] = *MEMORY[0x1E696D0B0];
  keys[3] = v33;
  v34 = *MEMORY[0x1E696CFE0];
  keys[4] = *MEMORY[0x1E696D0B8];
  keys[5] = v34;
  v35 = *MEMORY[0x1E696D028];
  keys[6] = *MEMORY[0x1E696D020];
  keys[7] = v35;
  v36 = *MEMORY[0x1E696D048];
  keys[8] = *MEMORY[0x1E696CE28];
  keys[9] = v36;
  v37 = *MEMORY[0x1E696D030];
  keys[10] = *MEMORY[0x1E696D038];
  keys[11] = v37;
  v38 = *MEMORY[0x1E696D098];
  keys[12] = *MEMORY[0x1E696D0D0];
  keys[13] = v38;
  keys[14] = *MEMORY[0x1E696CFD8];
  values[0] = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  values[1] = CFNumberCreate(0, kCFNumberCFIndexType, &v55);
  values[2] = CFNumberCreate(0, kCFNumberCFIndexType, &v43);
  values[3] = CFNumberCreate(0, kCFNumberCFIndexType, &v53);
  values[4] = CFNumberCreate(0, kCFNumberCFIndexType, &v50);
  values[5] = CFNumberCreate(0, kCFNumberCFIndexType, &v54);
  values[6] = CFNumberCreate(0, kCFNumberCFIndexType, &v42);
  values[7] = CFNumberCreate(0, kCFNumberCFIndexType, &v49);
  values[8] = CFNumberCreate(0, kCFNumberCFIndexType, &v48);
  values[9] = CFNumberCreate(0, kCFNumberCFIndexType, &v47);
  values[10] = CFNumberCreate(0, kCFNumberCFIndexType, &v52);
  values[11] = CFNumberCreate(0, kCFNumberCFIndexType, &v51);
  values[12] = CFNumberCreate(0, kCFNumberCFIndexType, &v46);
  values[13] = CFNumberCreate(0, kCFNumberCFIndexType, &v45);
  values[14] = CFNumberCreate(0, kCFNumberCFIndexType, &v44);
  v39 = CFDictionaryCreate(0, keys, values, 15, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  for (i = 0; i != 15; ++i)
  {
    CFRelease(values[i]);
  }

  return v39;
}