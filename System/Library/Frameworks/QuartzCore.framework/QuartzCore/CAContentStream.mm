@interface CAContentStream
+ (id)contentStreamWithOptions:(id)a3 queue:(id)a4 handler:(id)a5 error:(id *)a6;
- (BOOL)releaseSurface:(__IOSurface *)a3 error:(id *)a4;
- (BOOL)releaseSurfaceWithId:(unsigned int)a3 error:(id *)a4;
- (BOOL)setExcludedContexts:(id)a3 error:(id *)a4;
- (BOOL)setIncludedContexts:(id)a3 error:(id *)a4;
- (BOOL)start:(id *)a3;
- (BOOL)stop:(id *)a3;
- (BOOL)updateOptions:(id)a3 error:(id *)a4;
- (id).cxx_construct;
- (void)clearSeenSurfaces;
- (void)dealloc;
- (void)produceSurface:(unsigned int)a3 withFrameInfo:(const CA_content_stream_frame_info *)a4;
@end

@implementation CAContentStream

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 12) = 1065353216;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 22) = 1065353216;
  *(self + 12) = self + 128;
  *(self + 13) = self + 128;
  *(self + 14) = self + 128;
  *(self + 15) = 8;
  *(self + 66) = 0;
  *(self + 34) = 0;
  *(self + 35) = 0;
  *(self + 73) = 0;
  return self;
}

- (void)dealloc
{
  v20 = *MEMORY[0x1E69E9840];
  memset(v18, 0, 21);
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v3 = [(CAContentStreamOptions *)self->_options targetDisplayId];
  serverPort = self->_serverPort;
  port = self->_clientIPC._port;
  v6 = CA::MachPortUtil::task_identity_port(void)::task[0];
  if (!CA::MachPortUtil::task_identity_port(void)::task[0])
  {
    task_create_identity_token(*MEMORY[0x1E69E9A60], CA::MachPortUtil::task_identity_port(void)::task);
    v6 = CA::MachPortUtil::task_identity_port(void)::task[0];
  }

  *buf = 0;
  v14 = v3;
  v18[21] = 2;
  v19 = 0;
  v7 = _CASContentStreamModify(serverPort, port, v6, buf);
  if (v7)
  {
    v8 = v7;
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v9 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v14 = v8;
      _os_log_error_impl(&dword_183AA6000, v9, OS_LOG_TYPE_ERROR, "Failed to destroy server-side content stream %u", buf, 8u);
    }
  }

  CA::MachPortUtil::ClientIPC::destroy(&self->_clientIPC);

  os_unfair_lock_lock(&self->_callback_lock);
  _Block_release(self->_handler);
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  [(CAContentStream *)self clearSeenSurfaces];
  os_unfair_lock_unlock(&self->_callback_lock);
  os_unfair_lock_lock(&_all_streams_lock);
  v11 = _all_streams;
  if (_all_streams != qword_1EA84F7F0)
  {
    while (*v11 != self)
    {
      if (++v11 == qword_1EA84F7F0)
      {
        goto LABEL_17;
      }
    }
  }

  if (v11 != qword_1EA84F7F0)
  {
    *v11 = *(qword_1EA84F7F0 - 8);
    if (qword_1EA84F7F0 <= _all_streams)
    {
      __assert_rtn("pop_back", "x-small-vector.h", 420, "_end > _begin && pop_back on empty container");
    }

    qword_1EA84F7F0 -= 8;
  }

LABEL_17:
  os_unfair_lock_unlock(&_all_streams_lock);
  v12.receiver = self;
  v12.super_class = CAContentStream;
  [(CAContentStream *)&v12 dealloc];
}

- (void)clearSeenSurfaces
{
  begin = self->_seen_surfaces._begin;
  end = self->_seen_surfaces._end;
  if (begin != end)
  {
    v5 = MEMORY[0x1E69E9A60];
    do
    {
      port = begin->port;
      if (port)
      {
        mach_port_deallocate(*v5, port);
      }

      iosurface = begin->iosurface;
      ++begin;
      CFRelease(iosurface);
    }

    while (begin != end);
    begin = self->_seen_surfaces._begin;
  }

  self->_seen_surfaces._end = begin;
}

- (BOOL)releaseSurface:(__IOSurface *)a3 error:(id *)a4
{
  if (!a3)
  {
    return 0;
  }

  ID = IOSurfaceGetID(a3);

  return [(CAContentStream *)self releaseSurfaceWithId:ID error:a4];
}

- (BOOL)releaseSurfaceWithId:(unsigned int)a3 error:(id *)a4
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    serverPort = self->_serverPort;
    port = self->_clientIPC._port;
    *&msg[20] = 0u;
    *&msg[4] = 0u;
    *&msg[24] = 1;
    *&msg[28] = port;
    v13 = 1245184;
    v14 = *MEMORY[0x1E69E99E0];
    v15 = a3;
    reply_port = mig_get_reply_port();
    *&msg[8] = serverPort;
    *&msg[12] = reply_port;
    *msg = -2147478253;
    *&msg[16] = 0x9D3B00000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(msg);
      v8 = *&msg[12];
    }

    else
    {
      v8 = reply_port;
    }

    v9 = mach_msg(msg, 3, 0x34u, 0x2Cu, v8, 0, 0);
    v10 = v9;
    if ((v9 - 268435458) <= 0xE && ((1 << (v9 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(*&msg[12]);
    }

    else if (v9)
    {
      mig_dealloc_reply_port(*&msg[12]);
    }

    else
    {
      if (*&msg[20] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg[20] == 40351)
      {
        v10 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v10 = *&msg[32];
          if (!*&msg[32])
          {
            return 1;
          }
        }
      }

      else
      {
        v10 = 4294966995;
      }

      mach_msg_destroy(msg);
    }

    server_error(a4, v10);
  }

  return 0;
}

- (void)produceSurface:(unsigned int)a3 withFrameInfo:(const CA_content_stream_frame_info *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_callback_lock);
  if (self->_queue && self->_handler)
  {
    if (!a3)
    {
      iosurface = 0;
      id = 0;
      goto LABEL_15;
    }

    begin = self->_seen_surfaces._begin;
    end = self->_seen_surfaces._end;
    if (begin != end)
    {
      while (begin->port != a3)
      {
        if (++begin == end)
        {
          goto LABEL_9;
        }
      }
    }

    if (begin != end)
    {
LABEL_13:
      id = begin->id;
      iosurface = begin->iosurface;
LABEL_15:
      v15 = objc_opt_new();
      [v15 setSurfaceId:id];
      [v15 setSurface:iosurface];
      [v15 setStatus:a4->var2];
      [v15 setDisplayTime:a4->var0];
      [v15 setUpdateBeginTime:a4->var1];
      [v15 setDropCount:a4->var3];
      LOBYTE(v16) = a4->var10;
      [v15 setDisplayResolution:v16];
      [v15 setContentScaleX:a4->var4];
      [v15 setContentScaleY:a4->var5];
      [v15 setContentRect:{a4->var6, a4->var7, a4->var8, a4->var9}];
      v17 = _Block_copy(self->_handler);
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __48__CAContentStream_produceSurface_withFrameInfo___block_invoke;
      block[3] = &unk_1E6DFA620;
      block[5] = v15;
      block[6] = v17;
      block[4] = self;
      dispatch_async(queue, block);
      goto LABEL_16;
    }

LABEL_9:
    v9 = IOSurfaceLookupFromMachPort(a3);
    if (v9)
    {
      mach_port_mod_refs(*MEMORY[0x1E69E9A60], a3, 0, 1);
      v10 = IOSurfaceGetID(v9);
      v11 = self->_seen_surfaces._end;
      v12 = v11 - self->_seen_surfaces._begin + 1;
      if (self->_seen_surfaces._capacity < v12)
      {
        X::small_vector_base<ContentStreamClientFrame>::grow(&self->_seen_surfaces, v12);
        v11 = self->_seen_surfaces._end;
      }

      v11->iosurface = v9;
      v11->id = v10;
      v11->port = a3;
      begin = self->_seen_surfaces._end;
      self->_seen_surfaces._end = begin + 1;
      goto LABEL_13;
    }

    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v19 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v22 = a3;
      _os_log_error_impl(&dword_183AA6000, v19, OS_LOG_TYPE_ERROR, "Failed to create surface from machport %u", buf, 8u);
    }
  }

LABEL_16:
  os_unfair_lock_unlock(&self->_callback_lock);
}

void __48__CAContentStream_produceSurface_withFrameInfo___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  _Block_release(*(a1 + 48));
  v2 = *(a1 + 40);
}

- (BOOL)stop:(id *)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (!self->_started)
  {
    if (a3)
    {
      v8 = *MEMORY[0x1E696A578];
      v9[0] = @"Stream already stopped";
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1)}];
      result = 0;
      *a3 = v6;
      return result;
    }

    return 0;
  }

  started = _CASContentStreamStartStop(self->_serverPort, self->_clientIPC._port, 0, 0, 0, 0, 0);
  if (started)
  {
    server_error(a3, started);
    return 0;
  }

  self->_started = 0;
  return 1;
}

- (BOOL)start:(id *)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    stream_active_error(a3);
    return 0;
  }

  next = self->_excludedContexts.__table_.__first_node_.__next_;
  if (next)
  {
    while (!std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(&self->_includedContexts.__table_.__bucket_list_.__ptr_, next[4]))
    {
      next = *next;
      if (!next)
      {
        goto LABEL_7;
      }
    }

    if (!a3)
    {
      return 0;
    }

    v23 = *MEMORY[0x1E696A578];
    v24[0] = @"Cannot include and exclude the same context";
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v24, &v23, 1)}];
    goto LABEL_20;
  }

LABEL_7:
  size = self->_includedContexts.__table_.__size_;
  v8 = self->_excludedContexts.__table_.__size_;
  v9 = (v8 + size);
  if (!(v8 + size))
  {
    if (!a3)
    {
      return 0;
    }

    v21 = *MEMORY[0x1E696A578];
    v22 = @"Empty context list";
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v22, &v21, 1)}];
LABEL_20:
    v4 = 0;
    *a3 = v13;
    return v4;
  }

  memset(v20, 0, sizeof(v20));
  v16 = v20;
  v17 = v20;
  v18 = v20;
  v19 = 32;
  if (v9 >= 0x21)
  {
    X::small_vector_base<unsigned int>::grow(&v16, v9);
  }

  for (i = self->_includedContexts.__table_.__first_node_.__next_; i; i = *i)
  {
    v15 = i[2];
    X::small_vector_base<unsigned int>::push_back(&v16, &v15);
  }

  for (j = self->_excludedContexts.__table_.__first_node_.__next_; j; j = *j)
  {
    v15 = j[2];
    X::small_vector_base<unsigned int>::push_back(&v16, &v15);
  }

  started = _CASContentStreamStartStop(self->_serverPort, self->_clientIPC._port, 1, v16, (v17 - v16) >> 2, size, v8);
  v4 = started == 0;
  if (started)
  {
    server_error(a3, started);
  }

  else
  {
    self->_started = 1;
  }

  if (v16 != v18)
  {
    free(v16);
  }

  return v4;
}

- (BOOL)updateOptions:(id)a3 error:(id *)a4
{
  v94 = *MEMORY[0x1E69E9840];
  if (self->_started)
  {
    stream_active_error(a4);
    return 0;
  }

  if (!validate_options(a3, a4))
  {
    return 0;
  }

  v72 = [a3 targetDisplayId];
  v71 = [a3 pixelFormat];
  Name = CGColorSpaceGetName([a3 colorSpaceKey]);
  LOBYTE(v73) = 0;
  get_colorspace_map(&v73);
  if (v73)
  {
    v8 = 0;
    while (get_colorspace_map(unsigned char *)::space_names[v8] != Name)
    {
      if (v73 == ++v8)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    LOBYTE(v8) = 0;
  }

  v70 = [a3 YCbCrMatrix];
  v69 = [a3 ChromaLocation];
  [a3 frameSize];
  v64 = v9;
  [a3 frameSize];
  v62 = v10;
  [a3 minimumFrameTime];
  v66 = v11;
  v68 = [a3 queueDepth];
  if ([a3 alwaysScaleToFit])
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  v13 = [a3 preserveAspectRatioKey];
  [a3 sourceRect];
  v15 = v14;
  [a3 sourceRect];
  v17 = v16;
  [a3 sourceRect];
  v19 = v18;
  [a3 sourceRect];
  v21 = v20;
  [a3 destinationRect];
  v23 = v22;
  [a3 destinationRect];
  v25 = v24;
  [a3 destinationRect];
  v27 = v26;
  [a3 destinationRect];
  v29 = v28;
  v61 = [a3 trackedLayerIDContent];
  if (self->_warmed_up)
  {
    v30 = 0;
  }

  else
  {
    v30 = 4;
  }

  v58 = v30;
  if ([a3 backgroundColorKey])
  {
    NumberOfComponents = CGColorGetNumberOfComponents([a3 backgroundColorKey]);
    Components = CGColorGetComponents([a3 backgroundColorKey]);
    v33 = 0;
    if (NumberOfComponents >= 4 && Components)
    {
      v34 = vdupq_n_s64(0x406FE00000000000uLL);
      __asm { FMOV            V3.2D, #0.5 }

      v33 = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vmlaq_f64(_Q3, v34, *Components)), vcvtq_s64_f64(vmlaq_f64(_Q3, v34, Components[1]))));
    }
  }

  else
  {
    v33 = 0;
  }

  v60 = v33;
  if (self->_options)
  {
    dispatch_sync(self->_queue, &__block_literal_global_24815);
    v41 = 0;
    v42 = 0;
  }

  else
  {
    v43 = getpid();
    v41 = 1;
    v42 = v43;
  }

  v44 = v64;
  v45 = v62;
  v46 = v25;
  v47 = v29;
  v48 = v66;
  v49 = v12 | v13 | v58;
  serverPort = self->_serverPort;
  port = self->_clientIPC._port;
  v52 = CA::MachPortUtil::task_identity_port(void)::task[0];
  if (!CA::MachPortUtil::task_identity_port(void)::task[0])
  {
    v65 = self->_serverPort;
    v63 = self->_clientIPC._port;
    v67 = v41;
    v57 = v12 | v13 | v58;
    v59 = v42;
    v55 = v45;
    v56 = v44;
    task_create_identity_token(*MEMORY[0x1E69E9A60], CA::MachPortUtil::task_identity_port(void)::task);
    v47 = v29;
    v45 = v55;
    v44 = v56;
    v49 = v57;
    v42 = v59;
    port = v63;
    serverPort = v65;
    v41 = v67;
    v52 = CA::MachPortUtil::task_identity_port(void)::task[0];
  }

  *&v73 = __PAIR64__(v72, v42);
  *(&v73 + 1) = __PAIR64__(v44, v71);
  v74 = v45;
  v75 = v15;
  v76 = v17;
  v77 = v19;
  v78 = v21;
  v79 = v23;
  v80 = v46;
  v81 = v27;
  v82 = v47;
  v83 = 0;
  v84 = v61;
  v85 = v48;
  v86 = v68;
  v87 = v8;
  v88 = v70;
  v89 = v69;
  v90 = vuzp1_s8(v60, v60).u32[0];
  v91 = v41;
  v92 = v49;
  v93 = 0;
  v53 = _CASContentStreamModify(serverPort, port, v52, &v73);
  v40 = v53 == 0;
  if (v53)
  {
    server_error(a4, v53);
  }

  self->_options = [a3 copy];
  [(CAContentStream *)self clearSeenSurfaces];
  return v40;
}

- (BOOL)setExcludedContexts:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  started = self->_started;
  if (started)
  {
    stream_active_error(a4);
  }

  else
  {
    std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::clear(&self->_excludedContexts.__table_.__bucket_list_.__ptr_);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(a3);
          }

          std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,unsigned int,unsigned int>(&self->_excludedContexts.__table_.__bucket_list_.__ptr_, [*(*(&v13 + 1) + 8 * i) unsignedIntValue]);
        }

        v8 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
      }

      while (v8);
    }
  }

  return !started;
}

- (BOOL)setIncludedContexts:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  started = self->_started;
  if (started)
  {
    stream_active_error(a4);
  }

  else
  {
    std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::clear(&self->_includedContexts.__table_.__bucket_list_.__ptr_);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(a3);
          }

          std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,unsigned int,unsigned int>(&self->_includedContexts.__table_.__bucket_list_.__ptr_, [*(*(&v13 + 1) + 8 * i) unsignedIntValue]);
        }

        v8 = [a3 countByEnumeratingWithState:&v13 objects:v12 count:16];
      }

      while (v8);
    }
  }

  return !started;
}

+ (id)contentStreamWithOptions:(id)a3 queue:(id)a4 handler:(id)a5 error:(id *)a6
{
  v34[1] = *MEMORY[0x1E69E9840];
  if (!a4 || !a5)
  {
    if (a6)
    {
      v33 = *MEMORY[0x1E696A578];
      v34[0] = @"Invalid handler";
      v11 = 0;
      *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v34, &v33, 1)}];
      return v11;
    }

    return 0;
  }

  if (!validate_options(a3, a6))
  {
    return 0;
  }

  v11 = objc_alloc_init(a1);
  if (!v11)
  {
    return v11;
  }

  *(v11 + 64) = CARenderServerGetServerPort(0);
  v12 = CA::MachPortUtil::ClientIPC::create((v11 + 33), "CAContentStreamClientHandler");
  if (v12)
  {
    if (a6)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error creating client ports! 0x%x", v12];
      v31 = *MEMORY[0x1E696A578];
      v32 = v13;
      *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:2 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v32, &v31, 1)}];
    }

    return 0;
  }

  if (([v11 updateOptions:a3 error:a6] & 1) == 0)
  {

    return 0;
  }

  *(v11 + 288) = 0;
  v11[38] = _Block_copy(a5);
  dispatch_retain(a4);
  v11[37] = a4;
  *(v11 + 289) = 1;
  v14 = v11[35];
  if (v14)
  {
    dispatch_activate(v14);
  }

  os_unfair_lock_lock(&_all_streams_lock);
  v16 = _all_streams;
  v15 = qword_1EA84F7F0;
  v17 = qword_1EA84F7F0 - _all_streams;
  v18 = ((qword_1EA84F7F0 - _all_streams) >> 3) + 1;
  if (qword_1EA84F800 < v18)
  {
    v19 = qword_1EA84F7F8;
    v20 = (qword_1EA84F800 + 1) | ((qword_1EA84F800 + 1) >> 1) | (((qword_1EA84F800 + 1) | ((qword_1EA84F800 + 1) >> 1)) >> 2);
    v21 = v20 | (v20 >> 4) | ((v20 | (v20 >> 4)) >> 8);
    v22 = v21 | (v21 >> 16) | ((v21 | (v21 >> 16)) >> 32);
    if (v22 + 1 > v18)
    {
      v23 = v22 + 1;
    }

    else
    {
      v23 = ((qword_1EA84F7F0 - _all_streams) >> 3) + 1;
    }

    v24 = malloc_type_malloc(8 * v23, 0x80040B8603338uLL);
    v25 = v24;
    v26 = _all_streams;
    v27 = qword_1EA84F7F0;
    if (_all_streams != qword_1EA84F7F0)
    {
      v28 = v24;
      do
      {
        v29 = *v26++;
        *v28 = v29;
        v28 += 8;
      }

      while (v26 != v27);
    }

    if (v16 != v19)
    {
      free(_all_streams);
    }

    v15 = &v25[v17];
    _all_streams = v25;
    qword_1EA84F7F0 = &v25[v17];
    qword_1EA84F800 = v23;
  }

  *v15 = v11;
  qword_1EA84F7F0 += 8;
  v11 = v11;
  os_unfair_lock_unlock(&_all_streams_lock);
  return v11;
}

@end