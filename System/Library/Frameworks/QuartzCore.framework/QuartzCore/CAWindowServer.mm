@interface CAWindowServer
+ (id)contextWithOptions:(id)options;
+ (id)serverWithOptions:(id)options;
- (BOOL)isSecure;
- (BOOL)isSlotValid:(unsigned int)valid;
- (id)_init;
- (id)displayWithDisplayId:(unsigned int)id;
- (id)displayWithName:(id)name;
- (id)displayWithUniqueId:(id)id;
- (id)insecureProcessIds;
- (id)secureModeViolations;
- (unsigned)clientPortOfContextId:(unsigned int)id;
- (unsigned)contextIdHostingContextId:(unsigned int)id;
- (unsigned)taskNamePortOfContextId:(unsigned int)id;
- (void)_detectDisplays;
- (void)addDisplay:(id)display;
- (void)dealloc;
- (void)removeAllDisplays;
- (void)removeDisplay:(id)display;
- (void)setRendererFlags:(unsigned int)flags;
- (void)setSecure:(BOOL)secure;
@end

@implementation CAWindowServer

- (unsigned)contextIdHostingContextId:(unsigned int)id
{
  if (!self->_impl)
  {
    return 0;
  }

  v3 = CA::Render::Context::context_by_id(*&id);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CA::Render::Context::retain_host_context(v3);
  if (v5)
  {
    v6 = v5[4];
    if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v5 + 16))(v5);
    }
  }

  else
  {
    v6 = 0;
  }

  if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  return v6;
}

- (unsigned)taskNamePortOfContextId:(unsigned int)id
{
  v10 = *MEMORY[0x1E69E9840];
  if (!self->_impl)
  {
    return 0;
  }

  v3 = CA::Render::Context::context_by_id(*&id);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v3 + 256);
  tn = v5;
  if (!v5)
  {
    v6 = *MEMORY[0x1E69E9A60];
    v7 = getpid();
    task_name_for_pid(v6, v7, &tn);
    v5 = tn;
  }

  if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  return v5;
}

- (unsigned)clientPortOfContextId:(unsigned int)id
{
  if (!self->_impl)
  {
    return 0;
  }

  v3 = CA::Render::Context::context_by_id(*&id);
  if (!v3)
  {
    return 0;
  }

  v4 = v3[66];
  if (!v4)
  {
    v4 = v3[65];
  }

  if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  return v4;
}

- (BOOL)isSlotValid:(unsigned int)valid
{
  os_unfair_lock_lock(&CA::Render::Context::_context_lock);
  if (CA::Render::Context::_slot_table)
  {
    v4 = x_hash_table_lookup(CA::Render::Context::_slot_table, valid, 0) != 0;
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&CA::Render::Context::_context_lock);
  return v4;
}

- (id)insecureProcessIds
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  os_unfair_lock_lock(&CA::Render::Context::_context_lock);
  v4 = 0;
  v5 = CA::Render::Context::_context_table;
  v6 = 1 << *CA::Render::Context::_context_table;
  do
  {
    for (i = *(*(v5 + 16) + 8 * v4); i; i = *i)
    {
      CA::Render::collect_insecure_process_ids(i[2], i[3], &v12, v3);
    }

    ++v4;
  }

  while (v4 != v6);
  os_unfair_lock_unlock(&CA::Render::Context::_context_lock);
  v8 = v12;
  v9 = v13;
  if (v12 != v13)
  {
    do
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInt:{*v8, v12}];
      if (([v2 containsObject:v10] & 1) == 0)
      {
        [v2 addObject:v10];
      }

      ++v8;
    }

    while (v8 != v9);
    v8 = v12;
  }

  if (v8)
  {
    v13 = v8;
    operator delete(v8);
  }

  return v2;
}

- (id)secureModeViolations
{
  v60 = *MEMORY[0x1E69E9840];
  v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
  os_unfair_lock_lock(&CA::Render::Context::secure_mode_violations(void)::violations_lock);
  v51 = 0;
  v52 = 0;
  v53 = 0;
  os_unfair_lock_lock(&CA::Render::Context::_context_lock);
  v2 = 0;
  v3 = CA::Render::Context::_context_table;
  v58[0] = &unk_1EF1F6BD0;
  v58[1] = &v51;
  v59 = v58;
  v4 = 1 << *CA::Render::Context::_context_table;
  do
  {
    for (i = *(*(v3 + 16) + 8 * v2); i; i = *i)
    {
      X::HashTable<unsigned int,CA::Render::Context *>::foreach(std::function<void ()(unsigned int,CA::Render::Context *)>)::{lambda(void *,void *,void *)#1}::__invoke(i[2], i[3], v58);
    }

    ++v2;
  }

  while (v2 != v4);
  if (v59 == v58)
  {
    (*(*v59 + 32))(v59);
  }

  else if (v59)
  {
    (*(*v59 + 40))(v59);
  }

  os_unfair_lock_unlock(&CA::Render::Context::_context_lock);
  __p = 0;
  v49 = 0;
  v50 = 0;
  v6 = v51;
  v7 = v52;
  if (v51 != v52)
  {
    v46 = v52;
    do
    {
      v8 = *v6;
      pthread_mutex_lock((*v6 + 72));
      v9 = atomic_load((v8 + 228));
      if (!v9)
      {
        if (*(v8 + 256))
        {
          v10 = 0;
        }

        else
        {
          v10 = getpid();
        }

        v11 = 0;
        atomic_compare_exchange_strong((v8 + 228), &v11, v10);
        if (v11)
        {
          v9 = v11;
        }

        else
        {
          v9 = v10;
        }
      }

      v12 = *(v8 + 16);
      v13 = *(v8 + 300);
      v14 = *(v8 + 304);
      v15 = *(v8 + 312);
      v16 = *(v8 + 320);
      *(v8 + 312) = 0;
      *(v8 + 320) = 0;
      *&v54 = v15;
      *(&v54 + 1) = v16;
      v17 = *(v8 + 328);
      v18 = *(v8 + 336);
      *(v8 + 328) = 0;
      *(v8 + 336) = 0;
      *&v55 = v17;
      *(&v55 + 1) = v18;
      *&v56 = 0;
      v19 = *(v8 + 344);
      *(v8 + 344) = 1065353216;
      LODWORD(v56) = v19;
      if (v18)
      {
        v20 = *(v17 + 8);
        if ((v16 & (v16 - 1)) != 0)
        {
          if (v20 >= v16)
          {
            v20 %= v16;
          }
        }

        else
        {
          v20 &= v16 - 1;
        }

        *(v15 + 8 * v20) = &v55;
      }

      v21 = v49;
      if (v49 >= v50)
      {
        v23 = 0x6DB6DB6DB6DB6DB7 * ((v49 - __p) >> 3);
        v24 = v23 + 1;
        if ((v23 + 1) > 0x492492492492492)
        {
          std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
        }

        if (0xDB6DB6DB6DB6DB6ELL * ((v50 - __p) >> 3) > v24)
        {
          v24 = 0xDB6DB6DB6DB6DB6ELL * ((v50 - __p) >> 3);
        }

        if ((0x6DB6DB6DB6DB6DB7 * ((v50 - __p) >> 3)) >= 0x249249249249249)
        {
          v25 = 0x492492492492492;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
          if (v25 <= 0x492492492492492)
          {
            operator new();
          }

          std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
        }

        v26 = (8 * ((v49 - __p) >> 3));
        *v26 = v9;
        v26[1] = v12;
        v26[2] = v13;
        v26[3] = v14;
        std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__hash_table(56 * v23 + 16, &v54);
        v28 = __p;
        v27 = v49;
        v29 = (56 * v23 - (v49 - __p));
        if (v49 != __p)
        {
          v30 = (__p + 16);
          v31 = 56 * v23 - 8 * ((v49 - __p) >> 3) + 16;
          v32 = (v26 - (v49 - __p));
          do
          {
            *(v31 - 16) = *(v30 - 4);
            v32[1] = *(v30 - 3);
            v32[2] = *(v30 - 2);
            v32[3] = *(v30 - 1);
            v33 = std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__hash_table(v31, v30);
            v32 += 14;
            v34 = v30 + 5;
            v30 += 7;
            v31 = v33 + 56;
          }

          while (v34 != v27);
          do
          {
            std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table((v28 + 2));
            v28 += 7;
          }

          while (v28 != v27);
        }

        v35 = __p;
        v22 = v26 + 14;
        __p = v29;
        v49 = v26 + 14;
        v50 = 0;
        if (v35)
        {
          operator delete(v35);
        }

        v7 = v46;
      }

      else
      {
        *v49 = v9;
        v21[1] = v12;
        v21[2] = v13;
        v21[3] = v14;
        std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__hash_table((v21 + 4), &v54);
        v22 = v21 + 14;
      }

      v49 = v22;
      std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v54);
      pthread_mutex_unlock((v8 + 72));
      *(v8 + 12) &= ~0x40000u;
      if (atomic_fetch_add((v8 + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v8 + 16))(v8);
      }

      v6 += 8;
    }

    while (v6 != v7);
    v6 = v51;
  }

  if (v6)
  {
    v52 = v6;
    operator delete(v6);
  }

  os_unfair_lock_unlock(&CA::Render::Context::secure_mode_violations(void)::violations_lock);
  v36 = __p;
  if (__p != v49)
  {
    do
    {
      v57 = 0;
      v54 = *v36;
      v55 = 0u;
      v56 = 0u;
      LODWORD(v57) = v36[12];
      std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__rehash<true>(&v55, *(v36 + 3));
      for (j = *(v36 + 4); j; j = *j)
      {
        std::__hash_table<CA::Render::String *,std::hash<CA::Render::String *>,std::equal_to<CA::Render::String *>,std::allocator<CA::Render::String *>>::__emplace_unique_key_args<CA::Render::String *,CA::Render::String * const&>(&v55, j[2]);
      }

      v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v39 = DWORD1(v54);
      v41 = DWORD2(v54);
      v40 = HIDWORD(v54);
      [v38 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v54), @"processId"}];
      [v38 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v39), @"contextId"}];
      if (v41 && v40)
      {
        [v38 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v41), @"hostProcessId"}];
        [v38 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v40), @"hostContextId"}];
      }

      if (*(&v56 + 1))
      {
        array = [MEMORY[0x1E695DF70] array];
        for (k = v56; k; k = *k)
        {
          [array addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", k[2] + 28)}];
          v44 = k[2];
          if (atomic_fetch_add(v44 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v44 + 16))(v44);
          }
        }

        [v38 setObject:array forKeyedSubscript:@"layerNames"];
      }

      [v47 addObject:v38];

      std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v55);
      v36 += 14;
    }

    while (v36 != v49);
  }

  *&v54 = &__p;
  std::vector<std::tuple<int,unsigned int,int,unsigned int,std::unordered_set<CA::Render::String *>>>::__destroy_vector::operator()[abi:nn200100](&v54);
  return v47;
}

- (BOOL)isSecure
{
  v6 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v3 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_183AA6000, v3, OS_LOG_TYPE_ERROR, "[CAWindowServer isSecure] is deprecated! Please call isSecure on the specific CAWindowServerDisplay!", v5, 2u);
  }

  return CFArrayGetCount(self->_impl->var0) && (*(*(*(CFArrayGetValueAtIndex(self->_impl->var0, 0) + 1) + 64) + 825) & 1) != 0;
}

- (void)setSecure:(BOOL)secure
{
  secureCopy = secure;
  v8 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v5 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "[CAWindowServer setSecure:] is deprecated! Please call setSecure: on the specific CAWindowServerDisplay!", v7, 2u);
  }

  if (CFArrayGetCount(self->_impl->var0))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(self->_impl->var0, 0);
    CA::WindowServer::Server::set_secure(*(ValueAtIndex[1] + 64), secureCopy);
  }
}

- (void)setRendererFlags:(unsigned int)flags
{
  v3 = flags | 3;
  impl = self->_impl;
  if (impl->var1 != (flags | 3))
  {
    impl->var1 = v3;
    Count = CFArrayGetCount(impl->var0);
    if (Count)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        *(*(*(CFArrayGetValueAtIndex(self->_impl->var0, i) + 1) + 64) + 184) = v3;
      }
    }
  }
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    if (impl->var0)
    {
      CFRelease(impl->var0);
    }

    _Block_release(impl->var2);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, impl);
  }

  v4.receiver = self;
  v4.super_class = CAWindowServer;
  [(CAWindowServer *)&v4 dealloc];
}

- (void)_detectDisplays
{
  selfCopy = self;
  for (i = 0; i != 3; ++i)
  {
    self = ([CAWindowServer _detectDisplays]::count_funcs[i])(self, a2);
    if (self)
    {
      selfCopy2 = self;
      v5 = 0;
      v6 = [CAWindowServer _detectDisplays]::open_funcs[i];
      do
      {
        self = (v6)(v5);
        if (self)
        {
          selfCopy3 = self;
          Count = CFArrayGetCount(selfCopy->_impl->var0);
          v9 = (*(selfCopy3->super.isa + 207))(selfCopy3);
          if (v9)
          {
            v10 = v9;
            if (!Count)
            {
              *(*(v9 + 12) + 904) |= 0x80u;
            }

            CA::WindowServer::Server::attach_contexts(v9);
            v11 = [[CAWindowServerDisplay alloc] _initWithCADisplayServer:v10];
            if (v11)
            {
              v12 = v11;
              [(CAWindowServer *)selfCopy addDisplay:v11];
            }

            else
            {
              (**v10)(v10);
              self = (*(*v10 + 112))(v10);
            }
          }

          else
          {
            self = (*(selfCopy3->super.isa + 1))(selfCopy3);
          }
        }

        v5 = (v5 + 1);
      }

      while (selfCopy2 != v5);
    }
  }
}

- (id)displayWithUniqueId:(id)id
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (!id)
  {
    return 0;
  }

  result = [id UTF8String];
  if (result)
  {
    impl = self->_impl;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38__CAWindowServer_displayWithUniqueId___block_invoke;
    v6[3] = &__block_descriptor_40_e31_B16__0__CAWindowServerDisplay_8l;
    v6[4] = result;
    return find_display(&impl->var0, v6);
  }

  return result;
}

BOOL __38__CAWindowServer_displayWithUniqueId___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v12, 0, sizeof(v12));
  v9 = *(*(*(a2 + 8) + 64) + 96);
  v10 = (*(*v9 + 816))(v9, 0, v12, 64, 1, a6, a7, a8);
  result = 0;
  if (v10)
  {
    return strcmp(*(a1 + 32), v12) == 0;
  }

  return result;
}

- (id)displayWithDisplayId:(unsigned int)id
{
  v7 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__CAWindowServer_displayWithDisplayId___block_invoke;
  v5[3] = &__block_descriptor_36_e31_B16__0__CAWindowServerDisplay_8l;
  idCopy = id;
  return find_display(&impl->var0, v5);
}

- (id)displayWithName:(id)name
{
  v5[5] = *MEMORY[0x1E69E9840];
  if (!name)
  {
    return 0;
  }

  impl = self->_impl;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__CAWindowServer_displayWithName___block_invoke;
  v5[3] = &unk_1E6DF7C80;
  v5[4] = name;
  return find_display(&impl->var0, v5);
}

- (void)removeAllDisplays
{
  Count = CFArrayGetCount(self->_impl->var0);
  if (Count)
  {
    v5.length = Count;
    v5.location = 0;
    CFArrayApplyFunction(self->_impl->var0, v5, invalidate_display, 0);
    [(CAWindowServer *)self willChangeValueForKey:@"displays"];
    CFArrayRemoveAllValues(self->_impl->var0);

    [(CAWindowServer *)self didChangeValueForKey:@"displays"];
  }
}

- (void)removeDisplay:(id)display
{
  if (display)
  {
    v8.length = CFArrayGetCount(self->_impl->var0);
    v8.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(self->_impl->var0, v8, display);
    if (FirstIndexOfValue != -1)
    {
      v6 = FirstIndexOfValue;
      [display invalidate];
      [(CAWindowServer *)self willChangeValueForKey:@"displays"];
      CFArrayRemoveValueAtIndex(self->_impl->var0, v6);

      [(CAWindowServer *)self didChangeValueForKey:@"displays"];
    }
  }
}

- (void)addDisplay:(id)display
{
  if (display)
  {
    v6.length = CFArrayGetCount(self->_impl->var0);
    v6.location = 0;
    if (CFArrayGetFirstIndexOfValue(self->_impl->var0, v6, display) == -1)
    {
      *(*(*(display + 1) + 64) + 184) = self->_impl->var1;
      [(CAWindowServer *)self willChangeValueForKey:@"displays"];
      CFArrayAppendValue(self->_impl->var0, display);

      [(CAWindowServer *)self didChangeValueForKey:@"displays"];
    }
  }
}

- (id)_init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = CAWindowServer;
  v2 = [(CAWindowServer *)&v4 init];
  if (v2)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v2->_impl = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x18uLL, 0x10A00408A00E5F2uLL);
    v2->_impl->var0 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v2->_impl->var1 = 3;
  }

  return v2;
}

+ (id)serverWithOptions:(id)options
{
  result = _shared_server;
  if (!_shared_server)
  {
    if (+[CAWindowServer serverWithOptions:]::once != -1)
    {
      dispatch_once_f(&+[CAWindowServer serverWithOptions:]::once, options, shared_server_init);
    }

    return _shared_server;
  }

  return result;
}

+ (id)contextWithOptions:(id)options
{
  if (!_shared_server)
  {
    result = [CAContext remoteContextWithOptions:options];
    if (result)
    {
      return result;
    }

    if (!_shared_server)
    {
      +[CAWindowServer server];
    }
  }

  return [CAContext localContextWithOptions:options];
}

@end