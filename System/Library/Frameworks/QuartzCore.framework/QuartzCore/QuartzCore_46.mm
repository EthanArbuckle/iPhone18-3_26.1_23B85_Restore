void CA::WindowServer::Server::PendingOrderLevel::~PendingOrderLevel(CA::WindowServer::Server::PendingOrderLevel *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

void CA::WindowServer::Server::disable_automatic_wireless_display_state_control(CA::WindowServer::Server *this, CA::Render::Object *a2, _DWORD *a3, void *a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3[1] == *(*(a2 + 12) + 24))
  {
    *a3 = 1;
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v5 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a2 + 12) + 24);
      v7[0] = 67109120;
      v7[1] = v6;
      _os_log_impl(&dword_183AA6000, v5, OS_LOG_TYPE_DEFAULT, "Display %u automatic wireless display state control disabled", v7, 8u);
    }

    *(a2 + 837) = 1;
  }
}

uint64_t CA::WindowServer::Server::set_display_cloning_state(CA::WindowServer::Server *this, CA::Render::Object *a2, unsigned __int8 *a3, void *a4)
{
  if (*a3 == *(*(a2 + 12) + 24))
  {
    a3[10] = 1;
    return CA::WindowServer::Server::set_display_cloning_state(a2, a3[8], a3[9], *(a3 + 1));
  }

  return result;
}

uint64_t CA::WindowServer::Server::set_display_cloning_state(uint64_t a1, unsigned int a2, char a3, mach_port_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 24));
  v7 = *(a1 + 96);
  os_unfair_lock_lock(v7 + 189);
  v8 = *(a1 + 96);
  v9 = *(v8 + 768);
  v10 = atomic_load((v9 + 2));
  CA::WindowServer::Display::DisplayStateTransitionReply::_send((v8 + 824), "flush", v10, 3);
  if (a2 <= 2)
  {
    v12 = atomic_load((v9 + 3));
    if (v12 == a2)
    {
      v11 = 0;
      v27 = 0;
    }

    else
    {
      atomic_store(a2, (v9 + 3));
      *buf = 0;
      *v29 = vdupq_n_s64(0x80000uLL);
      (*(*a1 + 176))(a1, buf, 0.0);
      v27 = -1;
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
    v27 = 5;
  }

  if (x_log_get_display_state(void)::once != -1)
  {
    dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
  }

  v13 = x_log_get_display_state(void)::log;
  if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(*(a1 + 96) + 24);
    v15 = atomic_load((v9 + 2));
    v16 = v15 - 1;
    if (v16 > 2u)
    {
      v17 = "off";
    }

    else
    {
      v17 = off_1E6DED7A0[v16];
    }

    v18 = atomic_load((v9 + 3));
    v19 = v18 - 1;
    if (v19 > 2u)
    {
      v20 = "off";
    }

    else
    {
      v20 = off_1E6DED7A0[v19];
    }

    v21 = off_1E6DED7B8[(v27 + 1)];
    *buf = 67109890;
    *&buf[4] = v14;
    *v29 = 2080;
    *&v29[2] = v17;
    *&v29[10] = 2080;
    *&v29[12] = v20;
    v30 = 2080;
    v31 = v21;
    _os_log_impl(&dword_183AA6000, v13, OS_LOG_TYPE_DEFAULT, "Server::set_display_cloning_state display_id=%u current_cloning_state=%s target_cloning_state=%s result=%s", buf, 0x26u);
  }

  if (a4)
  {
    if (v11)
    {
      if (*(v8 + 860))
      {
        __assert_rtn("reset", "windowserver-display.cpp", 3603, "!_reply_port");
      }

      *(v8 + 856) = a2;
      *(v8 + 864) = a3;
      *(v8 + 860) = a4;
    }

    else
    {
      if (x_log_get_display_state(void)::once != -1)
      {
        dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
      }

      v22 = x_log_get_display_state(void)::log;
      if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(*(a1 + 96) + 24);
        if (a2 - 1 > 2)
        {
          v24 = "off";
        }

        else
        {
          v24 = off_1E6DED7A0[(a2 - 1)];
        }

        *buf = 67109378;
        *&buf[4] = v23;
        *v29 = 2080;
        *&v29[2] = v24;
        _os_log_impl(&dword_183AA6000, v22, OS_LOG_TYPE_DEFAULT, "signal clients display %u cloning state changed to %s", buf, 0x12u);
      }

      _CACDisplayCloningStateDidChange(a4, *(*(a1 + 96) + 24), a2, a3, v27);
      mach_port_deallocate(*MEMORY[0x1E69E9A60], a4);
    }
  }

  os_unfair_lock_unlock(v7 + 189);
  return pthread_mutex_unlock((a1 + 24));
}

void CA::WindowServer::Server::create_blank_context(CA::WindowServer::Server *this)
{
  valuePtr[2] = *MEMORY[0x1E69E9840];
  if (!*(this + 21))
  {
    LODWORD(valuePtr[0]) = *(*(this + 12) + 24);
    v2 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
    valuePtr[0] = @"displayId";
    valuePtr[1] = @"name";
    values[0] = v2;
    values[1] = @"blanking context";
    v3 = CFDictionaryCreate(0, valuePtr, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFRelease(v2);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v4 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x308uLL, 0xDEEC3011uLL);
    if (v4)
    {
      v4 = CA::Render::Context::Context(v4, v3, 0, 576, 0);
    }

    *(this + 21) = v4;
    CFRelease(v3);
    *(*(this + 21) + 584) |= 4u;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v5 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xA0uLL, 0xDEEC3011uLL);
    v6 = v5;
    if (v5)
    {
      *(v5 + 2) = 1;
      *(v5 + 3) = 30;
      ++dword_1ED4EAAB0;
      *v5 = &unk_1EF1F53C8;
      *(v5 + 9) = 16843007;
      *(v5 + 5) = *(v5 + 5) & 0x80000000 | 0x13000000F9F11;
      v7 = (v5[51] << 24) | 0x901818;
      *(v5 + 56) = 0u;
      *(v5 + 72) = 0u;
      *(v5 + 88) = 0u;
      *(v5 + 13) = 0;
      *(v5 + 120) = 0u;
      *(v5 + 136) = 0u;
      *(v5 + 19) = 0;
    }

    else
    {
      v7 = MEMORY[0x30];
    }

    *(v5 + 72) = vdupq_n_s64(0xC160000000000000);
    *(v5 + 88) = vdupq_n_s64(0x4170000000000000uLL);
    *(v5 + 1) = xmmword_183E20E40;
    *(v5 + 8) = 0;
    *(v5 + 12) = v7 | 0x20000;
    CA::Render::Context::will_commit(*(this + 21));
    CA::Render::Context::set_object(*(this + 21), 0x2AuLL, 1u, v6);
    CA::Render::Context::set_layer_id(*(this + 21), 42);
    CA::Render::Context::order_level(*(this + 21), -INFINITY);
    CA::Render::Context::did_commit(*(this + 21), 1, 0, 1, 0, 0);
  }
}

xpc_object_t ___ZN2CA12WindowServer6Server17record_histogramsEv_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  for (i = 0; i != 128; i += 8)
  {
    xpc_dictionary_set_uint64(v2, *(*(a1 + 32) + i), *(*(a1 + 40) + i));
  }

  return v2;
}

void CA::WindowServer::Server::get_display_state_shmem(CA::WindowServer::Server *this, CA::Render::Object *a2, void *a3, void *a4)
{
  v4 = *(a2 + 12);
  if (*a3 == *(v4 + 24))
  {
    a3[1] = *(v4 + 760);
  }
}

void CA::WindowServer::Server::content_stream_modified(CA::WindowServer::Server *this, CA::Render::Object *a2, int *a3, void *a4)
{
  v107 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  if (*(*(a2 + 12) + 24) != *(*a3 + 4))
  {
    return;
  }

  v5 = a3;
  v6 = *(v4 + 77);
  v7 = a3[2];
  if (v6 == 2)
  {
    v8 = CA::Render::ContentStream::destroy_stream(v7, a2, a3, a4);
    goto LABEL_149;
  }

  stream_and_lock = CA::Render::ContentStream::get_or_create_stream_and_lock(v7, a3[3], *v4);
  if (!stream_and_lock)
  {
    v8 = 0;
    goto LABEL_149;
  }

  v10 = stream_and_lock;
  v98 = v6 == 1;
  v99 = v5;
  if (v4[2] != *(stream_and_lock + 18) || *(v4 + 70) != *(stream_and_lock + 76) || v4[3] != *(stream_and_lock + 20) || v4[4] != *(stream_and_lock + 21) || *(v4 + 71) != *(stream_and_lock + 77) || *(v4 + 72) != *(stream_and_lock + 78))
  {
    LODWORD(v5) = *(stream_and_lock + 72);
    {
      goto LABEL_152;
    }

    goto LABEL_17;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((stream_and_lock[41] - stream_and_lock[40]) >> 3) - 0x5555555555555555 * ((stream_and_lock[44] - stream_and_lock[43]) >> 3) != *(v4 + 34))
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v11 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_183AA6000, v11, OS_LOG_TYPE_ERROR, "Inplace modification of queue depth is not supported yet", buf, 2u);
    }
  }

  while (1)
  {
    *(v10 + 17) = v4[1];
    *(v10 + 33) = v4[16];
    *(v10 + 136) = v10[17] & 0xFE | ((*(v4 + 78) & 2) != 0);
    *(v10 + 137) = *(v4 + 78) & 1;
    *(v10 + 11) = *(v4 + 5);
    *(v10 + 13) = *(v4 + 9);
    *(v10 + 128) = *(v4 + 73);
    *(v10 + 129) = *(v4 + 74);
    *(v10 + 130) = *(v4 + 75);
    *(v10 + 131) = *(v4 + 76);
    v10[15] = *(v4 + 7);
    CGColorSpaceRelease(v10[34]);
    v33 = *(v10 + 76);
    buf[0] = 0;
    get_colorspace_map(buf);
    if (buf[0] <= v33)
    {
      v34 = 0;
    }

    else
    {
      v34 = get_colorspace_map(unsigned char *)::space_names[v33];
    }

    if (v34)
    {
      v35 = v34;
    }

    else
    {
      v35 = *MEMORY[0x1E695F110];
    }

    v10[34] = CGColorSpaceCreateWithName(v35);
    v36 = v10[35];
    if (v36)
    {
      CA::VideoToolbox::~VideoToolbox(v10[35]);
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v36);
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v37 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x10uLL, 0xDEEC3011uLL);
    v38 = v37;
    if (!v37)
    {
      goto LABEL_145;
    }

    v39 = v10[34];
    v40 = *(v10 + 77);
    *v37 = 0;
    *(v37 + 8) = 1;
    __p[0] = 0;
    __p[1] = __p;
    v102 = 0x2020000000;
    v41 = getVTPixelTransferSessionCreateSymbolLoc(void)::ptr;
    v103 = getVTPixelTransferSessionCreateSymbolLoc(void)::ptr;
    if (!getVTPixelTransferSessionCreateSymbolLoc(void)::ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&v105 = ___ZL40getVTPixelTransferSessionCreateSymbolLocv_block_invoke;
      *(&v105 + 1) = &unk_1E6DEDE18;
      *&v106 = __p;
      v42 = VideoToolboxLibrary();
      v43 = dlsym(v42, "VTPixelTransferSessionCreate");
      *(*(v106 + 8) + 24) = v43;
      getVTPixelTransferSessionCreateSymbolLoc(void)::ptr = *(*(v106 + 8) + 24);
      v41 = *(__p[1] + 3);
    }

    _Block_object_dispose(__p, 8);
    if (v41)
    {
      v44 = v41(0, v38);
      if (v44 || (v46 = *v38) == 0)
      {
        if (x_log_get_utilities::once != -1)
        {
          dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
        }

        v45 = x_log_get_utilities::log;
        if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v44;
          _os_log_error_impl(&dword_183AA6000, v45, OS_LOG_TYPE_ERROR, "Failed to allocate VTPixelTransferSession: %d", buf, 8u);
        }

        goto LABEL_145;
      }

      __p[0] = 0;
      __p[1] = __p;
      v102 = 0x2020000000;
      v47 = getkVTPixelTransferPropertyKey_EnableHardwareAcceleratedTransferSymbolLoc(void)::ptr;
      v103 = getkVTPixelTransferPropertyKey_EnableHardwareAcceleratedTransferSymbolLoc(void)::ptr;
      if (!getkVTPixelTransferPropertyKey_EnableHardwareAcceleratedTransferSymbolLoc(void)::ptr)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&v105 = ___ZL73getkVTPixelTransferPropertyKey_EnableHardwareAcceleratedTransferSymbolLocv_block_invoke;
        *(&v105 + 1) = &unk_1E6DEDE18;
        *&v106 = __p;
        v48 = VideoToolboxLibrary();
        v49 = dlsym(v48, "kVTPixelTransferPropertyKey_EnableHardwareAcceleratedTransfer");
        *(*(v106 + 8) + 24) = v49;
        getkVTPixelTransferPropertyKey_EnableHardwareAcceleratedTransferSymbolLoc(void)::ptr = *(*(v106 + 8) + 24);
        v47 = *(__p[1] + 3);
      }

      _Block_object_dispose(__p, 8);
      if (v47)
      {
        v50 = *v47;
        v51 = *MEMORY[0x1E695E4C0];
        VTSessionSetPropertyFunc(v46, v50, *MEMORY[0x1E695E4C0]);
        v5 = *v38;
        __p[0] = 0;
        __p[1] = __p;
        v102 = 0x2020000000;
        v52 = getkVTPixelTransferPropertyKey_EnableGPUAcceleratedTransferSymbolLoc(void)::ptr;
        v103 = getkVTPixelTransferPropertyKey_EnableGPUAcceleratedTransferSymbolLoc(void)::ptr;
        if (!getkVTPixelTransferPropertyKey_EnableGPUAcceleratedTransferSymbolLoc(void)::ptr)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&v105 = ___ZL68getkVTPixelTransferPropertyKey_EnableGPUAcceleratedTransferSymbolLocv_block_invoke;
          *(&v105 + 1) = &unk_1E6DEDE18;
          *&v106 = __p;
          v53 = VideoToolboxLibrary();
          v54 = dlsym(v53, "kVTPixelTransferPropertyKey_EnableGPUAcceleratedTransfer");
          *(*(v106 + 8) + 24) = v54;
          getkVTPixelTransferPropertyKey_EnableGPUAcceleratedTransferSymbolLoc(void)::ptr = *(*(v106 + 8) + 24);
          v52 = *(__p[1] + 3);
        }

        _Block_object_dispose(__p, 8);
        if (v52)
        {
          v55 = *v52;
          v56 = *MEMORY[0x1E695E4D0];
          VTSessionSetPropertyFunc(v5, v55, *MEMORY[0x1E695E4D0]);
          v5 = *v38;
          __p[0] = 0;
          __p[1] = __p;
          v102 = 0x2020000000;
          v57 = getkVTPixelTransferPropertyKey_EnableSoftwareTransferSymbolLoc(void)::ptr;
          v103 = getkVTPixelTransferPropertyKey_EnableSoftwareTransferSymbolLoc(void)::ptr;
          if (!getkVTPixelTransferPropertyKey_EnableSoftwareTransferSymbolLoc(void)::ptr)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&v105 = ___ZL62getkVTPixelTransferPropertyKey_EnableSoftwareTransferSymbolLocv_block_invoke;
            *(&v105 + 1) = &unk_1E6DEDE18;
            *&v106 = __p;
            v58 = VideoToolboxLibrary();
            v59 = dlsym(v58, "kVTPixelTransferPropertyKey_EnableSoftwareTransfer");
            *(*(v106 + 8) + 24) = v59;
            getkVTPixelTransferPropertyKey_EnableSoftwareTransferSymbolLoc(void)::ptr = *(*(v106 + 8) + 24);
            v57 = *(__p[1] + 3);
          }

          _Block_object_dispose(__p, 8);
          if (v57)
          {
            VTSessionSetPropertyFunc(v5, *v57, v51);
            v5 = *v38;
            __p[0] = 0;
            __p[1] = __p;
            v102 = 0x2020000000;
            v60 = getkVTPixelTransferPropertyKey_RealTimeSymbolLoc(void)::ptr;
            v103 = getkVTPixelTransferPropertyKey_RealTimeSymbolLoc(void)::ptr;
            if (!getkVTPixelTransferPropertyKey_RealTimeSymbolLoc(void)::ptr)
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&v105 = ___ZL48getkVTPixelTransferPropertyKey_RealTimeSymbolLocv_block_invoke;
              *(&v105 + 1) = &unk_1E6DEDE18;
              *&v106 = __p;
              v61 = VideoToolboxLibrary();
              v62 = dlsym(v61, "kVTPixelTransferPropertyKey_RealTime");
              *(*(v106 + 8) + 24) = v62;
              getkVTPixelTransferPropertyKey_RealTimeSymbolLoc(void)::ptr = *(*(v106 + 8) + 24);
              v60 = *(__p[1] + 3);
            }

            _Block_object_dispose(__p, 8);
            if (v60)
            {
              VTSessionSetPropertyFunc(v5, *v60, v56);
              v5 = *v38;
              __p[0] = 0;
              __p[1] = __p;
              v102 = 0x2020000000;
              v63 = getkVTPixelTransferPropertyKey_EnableHighSpeedTransferSymbolLoc(void)::ptr;
              v103 = getkVTPixelTransferPropertyKey_EnableHighSpeedTransferSymbolLoc(void)::ptr;
              if (!getkVTPixelTransferPropertyKey_EnableHighSpeedTransferSymbolLoc(void)::ptr)
              {
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&v105 = ___ZL63getkVTPixelTransferPropertyKey_EnableHighSpeedTransferSymbolLocv_block_invoke;
                *(&v105 + 1) = &unk_1E6DEDE18;
                *&v106 = __p;
                v64 = VideoToolboxLibrary();
                v65 = dlsym(v64, "kVTPixelTransferPropertyKey_EnableHighSpeedTransfer");
                *(*(v106 + 8) + 24) = v65;
                getkVTPixelTransferPropertyKey_EnableHighSpeedTransferSymbolLoc(void)::ptr = *(*(v106 + 8) + 24);
                v63 = *(__p[1] + 3);
              }

              _Block_object_dispose(__p, 8);
              if (v63)
              {
                VTSessionSetPropertyFunc(v5, *v63, v56);
                v66 = *v38;
                __p[0] = 0;
                __p[1] = __p;
                v102 = 0x2020000000;
                v5 = getkVTPixelTransferPropertyKey_WriteBlackPixelsOutsideDestRectSymbolLoc(void)::ptr;
                v103 = getkVTPixelTransferPropertyKey_WriteBlackPixelsOutsideDestRectSymbolLoc(void)::ptr;
                if (!getkVTPixelTransferPropertyKey_WriteBlackPixelsOutsideDestRectSymbolLoc(void)::ptr)
                {
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 3221225472;
                  *&v105 = ___ZL71getkVTPixelTransferPropertyKey_WriteBlackPixelsOutsideDestRectSymbolLocv_block_invoke;
                  *(&v105 + 1) = &unk_1E6DEDE18;
                  *&v106 = __p;
                  v67 = VideoToolboxLibrary();
                  v68 = dlsym(v67, "kVTPixelTransferPropertyKey_WriteBlackPixelsOutsideDestRect");
                  *(*(v106 + 8) + 24) = v68;
                  getkVTPixelTransferPropertyKey_WriteBlackPixelsOutsideDestRectSymbolLoc(void)::ptr = *(*(v106 + 8) + 24);
                  v5 = *(__p[1] + 3);
                }

                _Block_object_dispose(__p, 8);
                if (v5)
                {
                  VTSessionSetPropertyFunc(v66, *v5, v51);
                  v69 = *v38;
                  __p[0] = 0;
                  __p[1] = __p;
                  v102 = 0x2020000000;
                  v70 = getkVTPixelTransferPropertyKey_DownsamplingModeSymbolLoc(void)::ptr;
                  v103 = getkVTPixelTransferPropertyKey_DownsamplingModeSymbolLoc(void)::ptr;
                  if (!getkVTPixelTransferPropertyKey_DownsamplingModeSymbolLoc(void)::ptr)
                  {
                    *buf = MEMORY[0x1E69E9820];
                    *&buf[8] = 3221225472;
                    *&v105 = ___ZL56getkVTPixelTransferPropertyKey_DownsamplingModeSymbolLocv_block_invoke;
                    *(&v105 + 1) = &unk_1E6DEDE18;
                    *&v106 = __p;
                    v71 = VideoToolboxLibrary();
                    v72 = dlsym(v71, "kVTPixelTransferPropertyKey_DownsamplingMode");
                    *(*(v106 + 8) + 24) = v72;
                    getkVTPixelTransferPropertyKey_DownsamplingModeSymbolLoc(void)::ptr = *(*(v106 + 8) + 24);
                    v70 = *(__p[1] + 3);
                  }

                  _Block_object_dispose(__p, 8);
                  if (v70)
                  {
                    v73 = *v70;
                    __p[0] = 0;
                    __p[1] = __p;
                    v102 = 0x2020000000;
                    v5 = getkVTDownsamplingMode_AverageSymbolLoc(void)::ptr;
                    v103 = getkVTDownsamplingMode_AverageSymbolLoc(void)::ptr;
                    if (!getkVTDownsamplingMode_AverageSymbolLoc(void)::ptr)
                    {
                      *buf = MEMORY[0x1E69E9820];
                      *&buf[8] = 3221225472;
                      *&v105 = ___ZL39getkVTDownsamplingMode_AverageSymbolLocv_block_invoke;
                      *(&v105 + 1) = &unk_1E6DEDE18;
                      *&v106 = __p;
                      v74 = VideoToolboxLibrary();
                      v75 = dlsym(v74, "kVTDownsamplingMode_Average");
                      *(*(v106 + 8) + 24) = v75;
                      getkVTDownsamplingMode_AverageSymbolLoc(void)::ptr = *(*(v106 + 8) + 24);
                      v5 = *(__p[1] + 3);
                    }

                    _Block_object_dispose(__p, 8);
                    if (v5)
                    {
                      VTSessionSetPropertyFunc(v69, v73, *v5);
                      v76 = CGColorSpaceCopyICCData(v39);
                      v77 = *v38;
                      __p[0] = 0;
                      __p[1] = __p;
                      v102 = 0x2020000000;
                      v78 = getkVTPixelTransferPropertyKey_DestinationICCProfileSymbolLoc(void)::ptr;
                      v103 = getkVTPixelTransferPropertyKey_DestinationICCProfileSymbolLoc(void)::ptr;
                      v5 = v99;
                      if (!getkVTPixelTransferPropertyKey_DestinationICCProfileSymbolLoc(void)::ptr)
                      {
                        *buf = MEMORY[0x1E69E9820];
                        *&buf[8] = 3221225472;
                        *&v105 = ___ZL61getkVTPixelTransferPropertyKey_DestinationICCProfileSymbolLocv_block_invoke;
                        *(&v105 + 1) = &unk_1E6DEDE18;
                        *&v106 = __p;
                        v79 = VideoToolboxLibrary();
                        v80 = dlsym(v79, "kVTPixelTransferPropertyKey_DestinationICCProfile");
                        *(*(v106 + 8) + 24) = v80;
                        getkVTPixelTransferPropertyKey_DestinationICCProfileSymbolLoc(void)::ptr = *(*(v106 + 8) + 24);
                        v78 = *(__p[1] + 3);
                      }

                      _Block_object_dispose(__p, 8);
                      if (v78)
                      {
                        VTSessionSetPropertyFunc(v77, *v78, v76);
                        CFRelease(v76);
                        v81 = *v38;
                        __p[0] = 0;
                        __p[1] = __p;
                        v102 = 0x2020000000;
                        v82 = getkVTPixelTransferPropertyKey_DestinationYCbCrMatrixSymbolLoc(void)::ptr;
                        v103 = getkVTPixelTransferPropertyKey_DestinationYCbCrMatrixSymbolLoc(void)::ptr;
                        if (!getkVTPixelTransferPropertyKey_DestinationYCbCrMatrixSymbolLoc(void)::ptr)
                        {
                          *buf = MEMORY[0x1E69E9820];
                          *&buf[8] = 3221225472;
                          *&v105 = ___ZL62getkVTPixelTransferPropertyKey_DestinationYCbCrMatrixSymbolLocv_block_invoke;
                          *(&v105 + 1) = &unk_1E6DEDE18;
                          *&v106 = __p;
                          v83 = VideoToolboxLibrary();
                          v84 = dlsym(v83, "kVTPixelTransferPropertyKey_DestinationYCbCrMatrix");
                          *(*(v106 + 8) + 24) = v84;
                          getkVTPixelTransferPropertyKey_DestinationYCbCrMatrixSymbolLoc(void)::ptr = *(*(v106 + 8) + 24);
                          v82 = *(__p[1] + 3);
                        }

                        _Block_object_dispose(__p, 8);
                        if (v82)
                        {
                          if (v40 > 8)
                          {
                            switch(v40)
                            {
                              case 9:
                                v85 = MEMORY[0x1E6965FB0];
                                break;
                              case 14:
                                v85 = MEMORY[0x1E6965FB8];
                                break;
                              case 248:
                                v85 = MEMORY[0x1E6965FA8];
                                break;
                              default:
                                goto LABEL_141;
                            }
                          }

                          else
                          {
                            switch(v40)
                            {
                              case 1:
                                v85 = MEMORY[0x1E6965FD0];
                                break;
                              case 6:
                                v85 = MEMORY[0x1E6965FC8];
                                break;
                              case 7:
                                v85 = MEMORY[0x1E6965FF0];
                                break;
                              default:
LABEL_141:
                                v85 = MEMORY[0x1E6965FE0];
                                break;
                            }
                          }

                          VTSessionSetPropertyFunc(v81, *v82, *v85);
LABEL_145:
                          v10[35] = v38;
                          if ((*(v4 + 78) & 4) != 0)
                          {
                            CA::VideoToolbox::copy_surface(v38, v10[37], *v10[40]);
                          }

                          v8 = 1;
                          goto LABEL_148;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    theString1 = dlerror();
    abort_report_np();
LABEL_152:
LABEL_17:
    v13 = *MEMORY[0x1E69E9AC8];
    v14 = CFStringCreateWithFormat(0, 0, @"CAContentStreamIntermediateSurf", theString1);
    v15 = v4[3];
    v16 = v4[4];
    *buf = v12;
    *&v105 = 1;
    *(&v105 + 1) = v13;
    *&v106 = 0;
    v17 = CA::SurfaceUtil::CAIOSurfaceCreate(v15, v16, 1647534392, 0, 0, 0, 0, buf, v14);
    CFRelease(v14);
    v18 = *MEMORY[0x1E695F110];
    v19 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
    if (v17)
    {
      ID = IOSurfaceGetID(v17);
      CA::Render::iosurface_set_colorspace(v17, v19, v21);
      cf = v17;
      v22 = IOSurfaceSetOwnershipIdentity();
      if (!v22)
      {
        goto LABEL_30;
      }

      v23 = v22;
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v24 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *&buf[4] = v5;
        *&buf[8] = 1024;
        *&buf[10] = v23;
        _os_log_error_impl(&dword_183AA6000, v24, OS_LOG_TYPE_ERROR, "Failed to set ownership on task %u err : 0x%x", buf, 0xEu);
      }

      CFRelease(cf);
    }

    else
    {
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v25 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_183AA6000, v25, OS_LOG_TYPE_ERROR, "Failed to create intermediate iosurface", buf, 2u);
      }
    }

    ID = 0;
    cf = 0;
LABEL_30:
    if (v19)
    {
      CFRelease(v19);
    }

    {
    }

    v26 = CGColorSpaceCreateWithName(v18);
    v27 = *(v4 + 70);
    buf[0] = 0;
    get_colorspace_map(buf);
    if (buf[0] > v27 && (v28 = get_colorspace_map(unsigned char *)::space_names[v27]) != 0)
    {
      v29 = CGColorSpaceCreateWithName(v28);
    }

    else
    {
      v29 = CGColorSpaceRetain(v26);
    }

    __p[0] = 0;
    __p[1] = 0;
    v102 = 0;
    if (*(v4 + 34))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Render::ContentStreamSurface>>(*(v4 + 34));
    }

    CGColorSpaceRelease(v29);
    CGColorSpaceRelease(v26);
    if (0xAAAAAAAAAAAAAAABLL * (-__p[0] >> 3) != *(v4 + 34) || cf == 0)
    {
      break;
    }

    CA::Render::release_surfaces(v10 + 40, (v10 + 46));
    CA::Render::release_surfaces(v10 + 43, (v10 + 46));
    CA::Render::release_single_iosurface((v10 + 37), (v10 + 46));
    v32 = v10[40];
    v5 = v99;
    if (v32)
    {
      v10[41] = v32;
      operator delete(v32);
    }

    *(v10 + 20) = *__p;
    v10[42] = v102;
    v10[37] = cf;
    *(v10 + 76) = ID;
    *(v10 + 77) = 0;
    v10[39] = 0;
    *(v10 + 18) = v4[2];
    *(v10 + 76) = *(v4 + 70);
    *(v10 + 77) = *(v4 + 71);
    *(v10 + 20) = v4[3];
    *(v10 + 21) = v4[4];
  }

  v5 = v99;
  if (x_log_get_render(void)::once[0] != -1)
  {
    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
  }

  v31 = x_log_get_render(void)::log;
  if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
  {
    v87 = v4[3];
    v86 = v4[4];
    v88 = v4[2];
    v89 = v88 >> 24;
    if ((v88 & 0x80000000) != 0)
    {
      v90 = __maskrune(v89, 0x40000uLL);
      LODWORD(v88) = v4[2];
    }

    else
    {
      v90 = *(MEMORY[0x1E69E9830] + 4 * v89 + 60) & 0x40000;
    }

    if (v90)
    {
      v91 = v88 >> 24;
    }

    else
    {
      v91 = 32;
    }

    if (BYTE2(v88) <= 0x7Fu)
    {
      v92 = *(MEMORY[0x1E69E9830] + 4 * BYTE2(v88) + 60) & 0x40000;
    }

    else
    {
      v92 = __maskrune(BYTE2(v88), 0x40000uLL);
      LODWORD(v88) = v4[2];
    }

    if (v92)
    {
      v93 = (v88 << 8) >> 24;
    }

    else
    {
      v93 = 32;
    }

    if (BYTE1(v88) <= 0x7Fu)
    {
      v94 = *(MEMORY[0x1E69E9830] + 4 * BYTE1(v88) + 60) & 0x40000;
    }

    else
    {
      v94 = __maskrune(BYTE1(v88), 0x40000uLL);
      LODWORD(v88) = v4[2];
    }

    if (v94)
    {
      v95 = v88 >> 8;
    }

    else
    {
      v95 = 32;
    }

    if (v88 <= 0x7Fu)
    {
      v96 = *(MEMORY[0x1E69E9830] + 4 * v88 + 60) & 0x40000;
    }

    else
    {
      v96 = __maskrune(v88, 0x40000uLL);
      LODWORD(v88) = v4[2];
    }

    LODWORD(v88) = v88;
    *buf = 67110400;
    if (!v96)
    {
      LODWORD(v88) = 32;
    }

    *&buf[4] = v87;
    *&buf[8] = 1024;
    *&buf[10] = v86;
    *&buf[14] = 1024;
    LODWORD(v105) = v91;
    WORD2(v105) = 1024;
    *(&v105 + 6) = v93;
    WORD5(v105) = 1024;
    HIDWORD(v105) = v95;
    LOWORD(v106) = 1024;
    *(&v106 + 2) = v88;
    _os_log_error_impl(&dword_183AA6000, v31, OS_LOG_TYPE_ERROR, "Failed to create surface pool %ux%u fmt %c%c%c%c", buf, 0x26u);
    v5 = v99;
  }

  CA::Render::release_surfaces(__p, (v10 + 46));
  CA::Render::release_single_iosurface((v10 + 37), (v10 + 46));
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v8 = 0;
LABEL_148:
  pthread_mutex_unlock(v10);
  *(v5 + 16) = v98;
LABEL_149:
  *(v5 + 17) = v8;
}

void sub_183D95858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CA::WindowServer::Server::content_stream_state_changed(CA::WindowServer::Server *this, CA::Render::Object *a2, _BYTE *a3, void *a4)
{
  v59 = *MEMORY[0x1E69E9840];
  if (*(*(a2 + 12) + 24) == *(*a3 + 4))
  {
    if (a3[9] == 1)
    {
      if ((*(*a2 + 432))(a2))
      {
        v6 = *(*(*a2 + 432))(a2);
        stream_and_lock = CA::Render::ContentStream::get_or_create_stream_and_lock(**a3, 0, 0);
        if (stream_and_lock)
        {
          v8 = stream_and_lock;
          CA::Render::release_surfaces(stream_and_lock + 40, (stream_and_lock + 46));
          CA::Render::release_surfaces(v8 + 43, (v8 + 46));
          CA::Render::release_single_iosurface((v8 + 37), (v8 + 46));
          if (((v8[47] - v8[46]) >> 3))
          {
            (*(*v6 + 64))(v6);
            v8[47] = v8[46];
          }

          pthread_mutex_unlock(v8);
        }
      }
    }

    v9 = a3[8];
    v10 = *a3;
    pthread_mutex_lock((a2 + 24));
    v12 = *(a2 + 63);
    v11 = *(a2 + 64);
    if (v9 == 1)
    {
      if (v12 == v11)
      {
        v13 = *(a2 + 63);
      }

      else
      {
        v13 = *(a2 + 63);
        while (*v13 != *v10)
        {
          v13 += 52;
          if (v13 == v11)
          {
            goto LABEL_36;
          }
        }
      }

      if (v13 == v11)
      {
LABEL_36:
        v26 = *(a2 + 65);
        if (v11 >= v26)
        {
          v33 = 0x4EC4EC4EC4EC4EC5 * ((v11 - v12) >> 4);
          v34 = v33 + 1;
          if ((v33 + 1) > 0x13B13B13B13B13BLL)
          {
            std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
          }

          v35 = 0x4EC4EC4EC4EC4EC5 * ((v26 - v12) >> 4);
          if (2 * v35 > v34)
          {
            v34 = 2 * v35;
          }

          if (v35 >= 0x9D89D89D89D89DLL)
          {
            v36 = 0x13B13B13B13B13BLL;
          }

          else
          {
            v36 = v34;
          }

          if (v36)
          {
            if (v36 <= 0x13B13B13B13B13BLL)
            {
              operator new();
            }

            std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
          }

          v37 = 208 * v33;
          *v37 = *v10;
          v38 = *(v10 + 16);
          v39 = *(v10 + 32);
          v40 = *(v10 + 48);
          *(v37 + 59) = *(v10 + 59);
          *(v37 + 32) = v39;
          *(v37 + 48) = v40;
          *(v37 + 16) = v38;
          *(208 * v33 + 0x50) = 208 * v33 + 112;
          *(v37 + 88) = v37 + 112;
          *(v37 + 96) = v37 + 112;
          *(v37 + 104) = 8;
          X::small_vector_base<unsigned int>::append<unsigned int const*>(208 * v33 + 80, *(v10 + 80), *(v10 + 88));
          *(v37 + 144) = v37 + 176;
          *(v37 + 152) = v37 + 176;
          *(v37 + 160) = v37 + 176;
          *(v37 + 168) = 8;
          X::small_vector_base<unsigned int>::append<unsigned int const*>(208 * v33 + 144, *(v10 + 144), *(v10 + 152));
          v32 = 208 * v33 + 208;
          v41 = *(a2 + 63);
          v42 = *(a2 + 64);
          v43 = (v37 + v41 - v42);
          if (v42 != v41)
          {
            v44 = 0;
            do
            {
              v45 = &v43[v44];
              *v45 = *&v41[v44];
              v46 = *&v41[v44 + 16];
              v47 = *&v41[v44 + 32];
              v48 = *&v41[v44 + 48];
              *(v45 + 59) = *&v41[v44 + 59];
              *(v45 + 2) = v47;
              *(v45 + 3) = v48;
              *(v45 + 1) = v46;
              X::small_vector_base<unsigned int>::small_vector_base(&v43[v44 + 80], &v41[v44 + 80], &v43[v44 + 112]);
              X::small_vector_base<unsigned int>::small_vector_base(v45 + 18, &v41[v44 + 144], v45 + 44);
              v44 += 208;
            }

            while (&v41[v44] != v42);
            do
            {
              std::__destroy_at[abi:nn200100]<CA::Render::ContentStreamConfig,0>(v41);
              v41 += 208;
            }

            while (v41 != v42);
          }

          v49 = *(a2 + 63);
          *(a2 + 63) = v43;
          *(a2 + 64) = v32;
          *(a2 + 65) = 0;
          if (v49)
          {
            operator delete(v49);
          }
        }

        else
        {
          *v11 = *v10;
          v27 = *(v10 + 16);
          v28 = *(v10 + 32);
          v29 = *(v10 + 48);
          *(v11 + 59) = *(v10 + 59);
          *(v11 + 32) = v28;
          *(v11 + 48) = v29;
          *(v11 + 16) = v27;
          *(v11 + 80) = v11 + 112;
          *(v11 + 88) = v11 + 112;
          *(v11 + 96) = v11 + 112;
          *(v11 + 104) = 8;
          X::small_vector_base<unsigned int>::append<unsigned int const*>(v11 + 80, *(v10 + 80), *(v10 + 88));
          v30 = v11 + 176;
          *(v11 + 144) = v11 + 176;
          *(v11 + 152) = v11 + 176;
          v31 = v11 + 144;
          *(v31 + 16) = v30;
          *(v31 + 24) = 8;
          X::small_vector_base<unsigned int>::append<unsigned int const*>(v31, *(v10 + 144), *(v10 + 152));
          v32 = v31 + 64;
        }

        *(a2 + 64) = v32;
        *(*(a2 + 12) + 904) |= 0x2000u;
        *v50 = 0;
        *&v50[8] = vdupq_n_s64(0x20000000000uLL);
        (*(*a2 + 176))(a2, v50, 0.0);
      }

      pthread_mutex_unlock((a2 + 24));
    }

    else
    {
      if (v12 != v11)
      {
        while (*v12 != *v10)
        {
          v12 += 208;
          if (v12 == v11)
          {
            goto LABEL_31;
          }
        }
      }

      if (v12 != v11)
      {
        v14 = (v11 - 208);
        memset(v58, 0, sizeof(v58));
        v57 = 0u;
        *v56 = 0u;
        memset(v55, 0, sizeof(v55));
        v54 = 0u;
        *v53 = 0u;
        *v50 = *v12;
        v15 = *(v12 + 16);
        v16 = *(v12 + 32);
        v17 = *(v12 + 48);
        *&v52[11] = *(v12 + 59);
        v51 = v16;
        *v52 = v17;
        *&v50[16] = v15;
        X::small_vector_base<unsigned int>::small_vector_base((v53 + 5), (v12 + 80), (v55 + 5));
        X::small_vector_base<unsigned int>::small_vector_base((v56 + 5), (v12 + 144), &v58[5]);
        *v12 = *(v11 - 208);
        v18 = *(v11 - 192);
        v19 = *(v11 - 176);
        v20 = *(v11 - 160);
        *(v12 + 59) = *(v11 - 149);
        *(v12 + 32) = v19;
        *(v12 + 48) = v20;
        *(v12 + 16) = v18;
        if (v12 != v11 - 208)
        {
          X::small_vector_base<unsigned int>::move(v12 + 80, v11 - 128, (v12 + 112));
          X::small_vector_base<unsigned int>::move(v12 + 144, v11 - 64, (v12 + 176));
        }

        *v14 = *v50;
        v21 = *&v50[16];
        v22 = v51;
        v23 = *v52;
        *(v11 - 149) = *&v52[11];
        *(v11 - 176) = v22;
        *(v11 - 160) = v23;
        *(v11 - 192) = v21;
        if (v50 != v14)
        {
          X::small_vector_base<unsigned int>::move(v11 - 128, v53 + 5, (v11 - 96));
          X::small_vector_base<unsigned int>::move(v11 - 64, v56 + 5, (v11 - 32));
        }

        if (*(v56 + 5) != *(&v57 + 5))
        {
          free(*(v56 + 5));
        }

        if (*(v53 + 5) != *(&v54 + 5))
        {
          free(*(v53 + 5));
        }

        v24 = (*(a2 + 64) - 208);
        std::__destroy_at[abi:nn200100]<CA::Render::ContentStreamConfig,0>(v24);
        *(a2 + 64) = v24;
        if (*(v10 + 74))
        {
          v25 = 4;
        }

        else
        {
          v25 = 3;
        }

        CA::WindowServer::Server::notify_content_streams(a2, v25);
      }

LABEL_31:

      pthread_mutex_unlock((a2 + 24));
    }
  }
}

int **X::small_vector_base<unsigned int>::small_vector_base(int **result, int **a2, int *a3)
{
  *result = a3;
  result[1] = a3;
  result[2] = a3;
  v3 = a2[2];
  result[3] = a2[3];
  v4 = *a2;
  if (*a2 == v3)
  {
    result[1] = (a3 + a2[1] - v4);
    v6 = a2[1];
    while (v4 != v6)
    {
      v7 = *v4++;
      *a3++ = v7;
    }
  }

  else
  {
    v5 = a2[1];
    *result = v4;
    result[1] = v5;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

void X::small_vector_base<unsigned int>::move(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a1 != a2)
  {
    v6 = *a1;
    if (v6 != *(a1 + 16))
    {
      free(v6);
    }

    *(a1 + 16) = a3;
    if (*a2 == *(a2 + 16))
    {
      *a1 = a3;
      v8 = *a2;
      *(a1 + 8) = a3 + *(a2 + 8) - *a2;
      v9 = *(a2 + 8);
      while (v8 != v9)
      {
        v10 = *v8++;
        *a3++ = v10;
      }
    }

    else
    {
      v7 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v7;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    *(a1 + 24) = *(a2 + 24);
  }
}

void CA::WindowServer::Server::flipbook_modify(CA::WindowServer::Server *this, CA::Render::Object *a2, _DWORD *a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 12);
  v5 = *(v4 + 336);
  if (*a3 == *(v4 + 24) && v5 != 0)
  {
    pthread_mutex_lock((a2 + 24));
    if (x_log_get_flipbook(void)::once != -1)
    {
      dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
    }

    v9 = x_log_get_flipbook(void)::log;
    if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v35) = 0;
      _os_log_impl(&dword_183AA6000, v9, OS_LOG_TYPE_DEFAULT, "flipbook_modify ()", &v35, 2u);
    }

    v11 = a3[1];
    v10 = a3[2];
    if (v11 > 3)
    {
      if (v11 > 5)
      {
        switch(v11)
        {
          case 6:
            if (x_log_get_flipbook(void)::once != -1)
            {
              dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
            }

            v26 = x_log_get_flipbook(void)::log;
            if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              v35 = 67109120;
              *v36 = v10 != 0;
              _os_log_impl(&dword_183AA6000, v26, OS_LOG_TYPE_DEFAULT, "set power saving requested %u", &v35, 8u);
            }

            os_unfair_lock_lock((v5 + 12));
            v27 = *(v5 + 24);
            *(v5 + 24) = v27 & 0xF7 | (8 * (v10 != 0));
            if ((v27 & 3) == 1)
            {
              (*(*v5 + 72))(v5, v10 != 0);
            }

            goto LABEL_62;
          case 7:
            if (x_log_get_flipbook(void)::once != -1)
            {
              dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
            }

            v28 = x_log_get_flipbook(void)::log;
            if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              v35 = 67109120;
              *v36 = v10 != 0;
              _os_log_impl(&dword_183AA6000, v28, OS_LOG_TYPE_DEFAULT, "set one hz flipbook requested %u", &v35, 8u);
            }

            os_unfair_lock_lock((v5 + 12));
            v29 = *(v5 + 24);
            *(v5 + 24) = v29 & 0xEF | (16 * (v10 != 0));
            if ((v29 & 3) == 1)
            {
              (*(*v5 + 80))(v5, v10 != 0);
            }

            goto LABEL_62;
          case 8:
            if (x_log_get_flipbook(void)::once != -1)
            {
              dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
            }

            v12 = x_log_get_flipbook(void)::log;
            if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              v35 = 67109120;
              *v36 = v10 != 0;
              _os_log_impl(&dword_183AA6000, v12, OS_LOG_TYPE_DEFAULT, "set cache frames on exit %u", &v35, 8u);
            }

            os_unfair_lock_lock((v5 + 12));
            *(v5 + 24) = *(v5 + 24) & 0xDF | (32 * (v10 != 0));
LABEL_62:
            v30 = (v5 + 12);
LABEL_74:
            os_unfair_lock_unlock(v30);
            goto LABEL_75;
        }

LABEL_63:
        if (x_log_get_flipbook(void)::once != -1)
        {
          dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
        }

        v31 = x_log_get_flipbook(void)::log;
        if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          v35 = 67109376;
          *v36 = v11;
          *&v36[4] = 1024;
          *&v36[6] = v10;
          _os_log_impl(&dword_183AA6000, v31, OS_LOG_TYPE_DEFAULT, "Unknown command 0x%x, 0x%x", &v35, 0xEu);
        }

        goto LABEL_75;
      }

      if (v11 == 4)
      {
        CA::WindowServer::FlipBook::free_surfaces(v5);
LABEL_75:
        pthread_mutex_unlock((a2 + 24));
        return;
      }

      os_unfair_lock_lock((v5 + 8));
      v21 = *(v5 + 112);
      v22 = *(v5 + 120);
      if (v21 != v22)
      {
        do
        {
          CA::WindowServer::FlipBook::free_surface(v5, v21);
          v21 += 16;
        }

        while (v21 != v22);
        v21 = *(v5 + 112);
      }

      *(v5 + 120) = v21;
      *(v5 + 336) = 0;
LABEL_73:
      v30 = (v5 + 8);
      goto LABEL_74;
    }

    if (v11 > 1)
    {
      if (v11 != 2)
      {
        v15 = mach_absolute_time();
        v16 = CATimeWithHostTime(v15);
        os_unfair_lock_lock((v5 + 8));
        v18 = *(v5 + 112);
        v17 = *(v5 + 120);
        if (v18 == v17)
        {
          v19 = 0;
        }

        else
        {
          v19 = 0;
          do
          {
            if ((*(v18 + 120) & 2) == 0)
            {
              IOSurfaceSetPurgeable(*v18, 1u, 0);
              v20 = *(v18 + 16);
              if (v20)
              {
                IOSurfaceSetPurgeable(v20, 1u, 0);
              }

              *(v18 + 120) |= 2u;
              ++v19;
              v17 = *(v5 + 120);
            }

            v18 += 128;
          }

          while (v18 != v17);
        }

        if (x_log_get_flipbook(void)::once != -1)
        {
          dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
        }

        v32 = x_log_get_flipbook(void)::log;
        if (!os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_73;
        }

        v33 = mach_absolute_time();
        v34 = CATimeWithHostTime(v33);
        v35 = 134218240;
        *v36 = v19;
        *&v36[8] = 2048;
        v37 = (v34 - v16) * 1000.0;
        v14 = "%zu surfaces marked purgeable in %g ms";
        v24 = v32;
        v25 = 22;
        goto LABEL_72;
      }

      v23 = v10 * 0.01;
      os_unfair_lock_lock((v5 + 8));
      *(v5 + 344) = v23;
      if (x_log_get_flipbook(void)::once != -1)
      {
        dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
      }

      v13 = x_log_get_flipbook(void)::log;
      if (!os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_73;
      }

      v35 = 134217984;
      *v36 = v23;
      v14 = "changing over allocate factor to %f";
    }

    else if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_63;
      }

      os_unfair_lock_lock((v5 + 8));
      *(v5 + 328) = v10;
      CA::WindowServer::FlipBook::collect_memory(v5, 0);
      if (x_log_get_flipbook(void)::once != -1)
      {
        dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
      }

      v13 = x_log_get_flipbook(void)::log;
      if (!os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_73;
      }

      v35 = 134217984;
      *v36 = v10;
      v14 = "changing pool memory max size to %zu";
    }

    else
    {
      os_unfair_lock_lock((v5 + 8));
      *(v5 + 72) = v10;
      CA::WindowServer::FlipBook::collect(v5);
      if (x_log_get_flipbook(void)::once != -1)
      {
        dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
      }

      v13 = x_log_get_flipbook(void)::log;
      if (!os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_73;
      }

      v35 = 134217984;
      *v36 = v10;
      v14 = "changing max size to %zu";
    }

    v24 = v13;
    v25 = 12;
LABEL_72:
    _os_log_impl(&dword_183AA6000, v24, OS_LOG_TYPE_DEFAULT, v14, &v35, v25);
    goto LABEL_73;
  }
}

void CA::WindowServer::Server::flipbook_cancel(CA::WindowServer::Server *this, CA::Render::Object *a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 12);
  v5 = *(v4 + 336);
  if (*a3 == *(v4 + 24) && v5 != 0)
  {
    pthread_mutex_lock((a2 + 24));
    if (x_log_get_flipbook(void)::once != -1)
    {
      dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
    }

    v9 = x_log_get_flipbook(void)::log;
    if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_183AA6000, v9, OS_LOG_TYPE_DEFAULT, "flipbook_cancel ()", buf, 2u);
    }

    v10 = a3[2];
    os_unfair_lock_lock((v5 + 12));
    if ((*(v5 + 24) & 3) != 0)
    {
      os_unfair_lock_unlock((v5 + 12));
      CA::WindowServer::FlipBook::cancel(v5, a3 + 1, &v12, v10, 0);
    }

    else
    {
      if (x_log_get_flipbook(void)::once != -1)
      {
        dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
      }

      v11 = x_log_get_flipbook(void)::log;
      if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_error_impl(&dword_183AA6000, v11, OS_LOG_TYPE_ERROR, "FlipBook::cancel() - state:kFlipBookStateDisabled - Unexpected, No action performed", v14, 2u);
      }

      os_unfair_lock_unlock((v5 + 12));
    }

    pthread_mutex_unlock((a2 + 24));
  }
}

void CA::WindowServer::Server::flipbook_copy_current_frame(CA::WindowServer::Server *this, CA::Render::Object *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 12);
  v5 = *(v4 + 336);
  v6 = *a3 != *(v4 + 24) || v5 == 0;
  if (v6)
  {
    return;
  }

  pthread_mutex_lock((a2 + 24));
  if (x_log_get_flipbook(void)::once != -1)
  {
    dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
  }

  v9 = x_log_get_flipbook(void)::log;
  if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_183AA6000, v9, OS_LOG_TYPE_DEFAULT, "flipbook_copy_current_frame ()", v16, 2u);
  }

  v10 = a3[2];
  if (!v10)
  {
    goto LABEL_25;
  }

  if (CADeviceHasInternalDiagnostics::once[0] != -1)
  {
    dispatch_once(CADeviceHasInternalDiagnostics::once, &__block_literal_global_175);
  }

  if (CADeviceHasInternalDiagnostics::internal != 1)
  {
    goto LABEL_25;
  }

  v11 = mach_continuous_time();
  os_unfair_lock_lock((v5 + 8));
  v12 = *(v5 + 136);
  v13 = *(v5 + 144);
  if (v13 == v12)
  {
    goto LABEL_22;
  }

  v14 = v13 - 128;
  while (*(v14 + 40) >= v11)
  {
LABEL_18:
    v15 = v14 - 128;
    v6 = v14 == v12;
    v14 -= 128;
    if (v6)
    {
      v13 = v15 + 128;
      goto LABEL_22;
    }
  }

  if (((*(*v5 + 128))(v5, v14) & 1) == 0)
  {
    v12 = *(v5 + 136);
    goto LABEL_18;
  }

  v13 = v14 + 128;
  a3[1] = *(v14 + 32);
  v12 = *(v5 + 136);
LABEL_22:
  if (v13 != v12)
  {
    CA::WindowServer::FlipBook::copy_surface(v5, *(v13 - 128), *(v13 - 8), v10);
  }

  os_unfair_lock_unlock((v5 + 8));
LABEL_25:
  pthread_mutex_unlock((a2 + 24));
}

void CA::WindowServer::Server::flipbook_query_memory_usage(CA::WindowServer::Server *this, CA::Render::Object *a2, void *a3, void *a4)
{
  v4 = *(a2 + 12);
  v5 = *(v4 + 336);
  if (*a3 == *(v4 + 24) && v5 != 0)
  {
    pthread_mutex_lock((a2 + 24));
    CA::WindowServer::FlipBook::recycle(v5);
    a3[1] = *(v5 + 80);

    pthread_mutex_unlock((a2 + 24));
  }
}

void CA::WindowServer::Server::flipbook_query_frame(CA::WindowServer::Server *this, CA::Render::Object *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 12);
  v5 = *(v4 + 336);
  if (*a3 != *(v4 + 24) || v5 == 0)
  {
    return;
  }

  pthread_mutex_lock((a2 + 24));
  v9 = a3[1];
  os_unfair_lock_lock((v5 + 8));
  v10 = *(v5 + 88);
  v11 = *(v5 + 96);
  if (v10 == v11)
  {
    v13 = *(v5 + 136);
    v14 = *(v5 + 144);
    if (v13 == v14)
    {
      a3[2] = 0;
      goto LABEL_27;
    }

    v12 = 0;
  }

  else
  {
    if (*(v10 + 40) <= v9)
    {
      v15 = v10 + 128;
      do
      {
        v16 = v15;
        if (v15 == v11)
        {
          break;
        }

        v17 = *(v15 + 40);
        v15 += 128;
      }

      while (v17 <= v9);
      v12 = *(v16 - 96);
    }

    else
    {
      v12 = 0;
    }

    v13 = *(v5 + 136);
    v14 = *(v5 + 144);
    if (v13 == v14)
    {
      a3[2] = v12;
LABEL_25:
      v21 = *(v10 + 32);
      goto LABEL_26;
    }
  }

  if (*(v13 + 40) <= v9)
  {
    v18 = v13 + 128;
    do
    {
      v19 = v18;
      if (v18 == v14)
      {
        break;
      }

      v20 = *(v18 + 40);
      v18 += 128;
    }

    while (v20 <= v9);
    v12 = *(v19 - 96);
  }

  a3[2] = v12;
  if (v10 != v11)
  {
    goto LABEL_25;
  }

  v21 = *(v13 + 32);
LABEL_26:
  a3[3] = v21;
LABEL_27:
  if (x_log_get_flipbook(void)::once != -1)
  {
    dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
  }

  v22 = x_log_get_flipbook(void)::log;
  if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v23 = a3[2];
    v24 = a3[3];
    v25 = 134218496;
    v26 = v9;
    v27 = 2048;
    v28 = v23;
    v29 = 2048;
    v30 = v24;
    _os_log_impl(&dword_183AA6000, v22, OS_LOG_TYPE_DEFAULT, "FlipBook::query() at t=%llu, on_glass_frame=%llu, oldest_frame=%llu", &v25, 0x20u);
  }

  os_unfair_lock_unlock((v5 + 8));

  pthread_mutex_unlock((a2 + 24));
}

void CA::WindowServer::Server::flipbook_render(CA::WindowServer::Server *this, CA::Render::Object *a2, void *a3, void *a4)
{
  MEMORY[0x1EEE9AC00](this);
  v248 = *MEMORY[0x1E69E9840];
  v6 = *(v4 + 96);
  v7 = *(v6 + 336);
  if (*(v5 + 4) != *(v6 + 24) || v7 == 0)
  {
    return;
  }

  v9 = v5;
  v10 = v4;
  pthread_mutex_lock((v4 + 24));
  v184 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  v13 = atomic_load((*(*(v10 + 96) + 768) + 1));
  v14 = *(*(v10 + 96) + 904);
  v186 = *v9;
  if (x_log_get_flipbook(void)::once != -1)
  {
    dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
  }

  v15 = x_log_get_flipbook(void)::log;
  if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    buf[0].msgh_bits = 67109376;
    buf[0].msgh_size = v184;
    LOWORD(buf[0].msgh_remote_port) = 2048;
    *(&buf[0].msgh_remote_port + 2) = v11;
    _os_log_impl(&dword_183AA6000, v15, OS_LOG_TYPE_DEFAULT, "FlipBook::render (context 0x%x, t %llu)", buf, 0x12u);
  }

  kdebug_trace();
  v213 = 0;
  memset(&v212[8], 0, 32);
  if (v11 >= *(v7 + 64))
  {
    if ((v14 & 0x10000) != 0)
    {
      if (x_log_get_flipbook(void)::once != -1)
      {
        dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
      }

      v27 = x_log_get_flipbook(void)::log;
      v28 = os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT);
      v187 = vneg_f32(0x3F0000003FLL);
      v18 = 0uLL;
      if (v28)
      {
        LOWORD(buf[0].msgh_bits) = 0;
        _os_log_impl(&dword_183AA6000, v27, OS_LOG_TYPE_DEFAULT, "display not ready (entering flipbook). Dropping render!", buf, 2u);
        v18 = 0uLL;
      }

      v20 = 0;
      v21 = 0;
      v22 = 0;
      MachPort = 0;
      v24 = 5;
      goto LABEL_201;
    }

    if (v13 == 1)
    {
      if (x_log_get_flipbook(void)::once != -1)
      {
        dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
      }

      v25 = x_log_get_flipbook(void)::log;
      v26 = os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT);
      v187 = vneg_f32(0x3F0000003FLL);
      v18 = 0uLL;
      if (v26)
      {
        LOWORD(buf[0].msgh_bits) = 0;
        v24 = 2;
        _os_log_impl(&dword_183AA6000, v25, OS_LOG_TYPE_DEFAULT, "not blanked!", buf, 2u);
        v18 = 0uLL;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        MachPort = 0;
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        MachPort = 0;
        v24 = 2;
      }

      goto LABEL_201;
    }

    os_unfair_lock_lock((v7 + 8));
    if (*(v7 + 120) == *(v7 + 112))
    {
      v29 = ((*(v7 + 96) - *(v7 + 88)) >> 7) + ((*(v7 + 144) - *(v7 + 136)) >> 7);
      v30 = *(v7 + 72);
      os_unfair_lock_unlock((v7 + 8));
      if (v29 >= v30)
      {
        if (x_log_get_flipbook(void)::once != -1)
        {
          dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
        }

        v50 = x_log_get_flipbook(void)::log;
        v51 = os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT);
        v187 = vneg_f32(0x3F0000003FLL);
        v18 = 0uLL;
        if (v51)
        {
          LOWORD(buf[0].msgh_bits) = 0;
          _os_log_impl(&dword_183AA6000, v50, OS_LOG_TYPE_DEFAULT, "no surface!", buf, 2u);
          v18 = 0uLL;
        }

        v20 = 0;
        v21 = 0;
        v22 = 0;
        MachPort = 0;
        v24 = 3;
        goto LABEL_201;
      }
    }

    else
    {
      os_unfair_lock_unlock((v7 + 8));
    }

    v31 = CA::Render::Context::context_by_id(v184);
    if (!v31)
    {
      if (x_log_get_flipbook(void)::once != -1)
      {
        dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
      }

      v48 = x_log_get_flipbook(void)::log;
      v49 = os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT);
      v187 = vneg_f32(0x3F0000003FLL);
      v18 = 0uLL;
      if (v49)
      {
        LOWORD(buf[0].msgh_bits) = 0;
        _os_log_impl(&dword_183AA6000, v48, OS_LOG_TYPE_DEFAULT, "no context!", buf, 2u);
        v18 = 0uLL;
      }

      v20 = 0;
      v21 = 0;
      v22 = 0;
      MachPort = 0;
      v24 = 4;
      goto LABEL_201;
    }

    v33 = v31;
    if (!*(v7 + 48))
    {
      CA::WindowServer::FlipBook::invalidate_context(v31, v32);
    }

    CARecordCurrentDisplay::CARecordCurrentDisplay(v199, *(*(v7 + 16) + 24));
    v34 = pthread_getspecific(current_display_slot);
    if (v34 && *v34)
    {
      --*v34;
    }

    *buffer = 0u;
    v201 = 0u;
    v202 = 0u;
    v203 = 0u;
    v204 = 0u;
    memset(v205, 0, sizeof(v205));
    v206 = 0u;
    v35 = *(v7 + 16);
    *&v198 = 0;
    *(&v198 + 1) = *(v35 + 176);
    v36 = mach_absolute_time();
    v37 = CATimeWithHostTime(v36);
    add = atomic_fetch_add(CA::Render::Update::_update_counter, 1u);
    v39 = add;
    if ((*(v7 + 24) & 3) == 0)
    {
      v39 = (*(**(v7 + 16) + 344))(*(v7 + 16));
    }

    bzero(v235, 0x570uLL);
    CA::Render::Update::Update(v235, buf, 0x2000uLL, v37, 0, add + 1, v39, v39, &v198, 0x10000u);
    if (!v235[0])
    {
      if (x_log_get_flipbook(void)::once != -1)
      {
        dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
      }

      v164 = x_log_get_flipbook(void)::log;
      if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_ERROR))
      {
        LOWORD(msg) = 0;
        _os_log_error_impl(&dword_183AA6000, v164, OS_LOG_TYPE_ERROR, "CoreAnimation: Invalid update!", &msg, 2u);
      }

      abort();
    }

    v240 = v240 & 0xFFFFFFFFBFF7DFFFLL | 0x40002000;
    v239 = (*(**(v7 + 16) + 1416))(*(v7 + 16));
    if (*(v7 + 348) == 1)
    {
      v240 |= 0x1000uLL;
    }

    pthread_mutex_lock((v33 + 72));
    v40 = *(v7 + 348);
    *msg_16 = 0;
    msg = 0uLL;
    if (v40 == 1)
    {
      v41 = CA::Render::Context::root_layer_handle(v33);
      if (v41)
      {
        if (*(v41 + 2))
        {
          v42 = *(*(CA::Render::Context::root_layer_handle(v33) + 2) + 136);
          if (v42)
          {
            v43 = *(v42 + 96);
            if (v43)
            {
              v44 = *(v43 + 16);
              if (v44)
              {
                v45 = 8 * v44;
                v46 = (v43 + 24);
                while (1)
                {
                  v47 = *v46;
                  if ((*(*v46 + 14) & 2) != 0 && *(v47 + 6) == 477)
                  {
                    break;
                  }

                  ++v46;
                  v45 -= 8;
                  if (!v45)
                  {
                    goto LABEL_65;
                  }
                }

                CA::OGL::get_filter_apl_params(&msg, v47, 1, 0);
              }
            }
          }
        }
      }
    }

LABEL_65:
    v233 = msg;
    v234 = *msg_16;
    if ((v12 & 4) != 0 && (v52 = CA::Render::Context::root_layer_handle(v33)) != 0 && *(v52 + 2))
    {
      if (CADeviceInternalDisplayScale::once != -1)
      {
        dispatch_once(&CADeviceInternalDisplayScale::once, &__block_literal_global_329);
      }

      v53 = *&CADeviceInternalDisplayScale::scale;
      v196 = 0u;
      v197 = 0u;
      v194 = 0u;
      v195 = 0u;
      v192 = 0u;
      v193 = 0u;
      *v190 = 0u;
      v191 = 0u;
      v54 = CA::Render::Context::root_layer_handle(v33);
      if (v54)
      {
        v54 = *(v54 + 2);
      }

      CA::Render::Layer::compute_frame_transform(v54, 0, v190, 0);
      *(&msg + 1) = 0;
      memset(msg_16, 0, 24);
      memset(&msg_16[32], 0, 32);
      *&v217[16] = 0u;
      v218 = xmmword_183E20E60;
      *&msg = v53;
      *&msg_16[24] = v53;
      *v217 = 0x3FF0000000000000uLL;
      v219 = v53;
      v220 = 1.0 / v53;
      v221 = (8 * (v53 != 1));
      v55 = (*(**(v7 + 16) + 856))();
      v232 = 0;
      if ((v12 & 2) != 0)
      {
        v58 = v55 & 3 ^ 2;
      }

      else
      {
        v58 = v55;
      }

      v223 = xmmword_183E20E00;
      v224 = 0u;
      v225 = xmmword_183E20E60;
      v226 = 0u;
      v227 = 0u;
      v228 = xmmword_183E20E00;
      v229 = 0u;
      v230 = xmmword_183E20E60;
      __asm { FMOV            V0.2D, #1.0 }

      v231 = _Q0;
      switch(v58)
      {
        case 3:
          LOBYTE(v232) = 7;
          v224 = 0uLL;
          v226 = 0u;
          v227 = 0u;
          v230 = xmmword_183E20E60;
          v223 = xmmword_183E21560;
          v228 = xmmword_183E20E00;
          v225 = xmmword_183E20E00;
          *&v229 = 0;
          *(&v229 + 1) = SHIDWORD(v198);
          break;
        case 2:
          CA::Transform::set_affine_rectilinear(&v223, -1.0, -1.0, SDWORD2(v198), SHIDWORD(v198));
          break;
        case 1:
          LOBYTE(v232) = 4;
          v224 = 0uLL;
          v226 = 0u;
          v227 = 0u;
          v230 = xmmword_183E20E60;
          v223 = xmmword_183E20E60;
          v228 = xmmword_183E20E00;
          v225 = xmmword_183E20F00;
          v229 = COERCE_UNSIGNED_INT64(SDWORD2(v198));
          break;
      }

      CA::Transform::concat(&msg, &v223, v56, v57);
      CA::Transform::set(v214, v190, 1);
      CA::Transform::concat_left(&msg, v214, v64, v65);
      v66 = CA::Render::Context::root_layer_handle(v33);
      if (v66)
      {
        v67 = *(v66 + 2);
      }

      else
      {
        v67 = 0;
      }

      CA::Render::Update::add_context(v235, v33, v67, &msg);
      if ((v12 & 8) == 0)
      {
LABEL_92:
        pthread_mutex_unlock((v33 + 72));
        CA::Render::Update::added_all_contexts(v235, v68, v69);
        if (byte_1ED4E9824 == 1)
        {
          v163 = 8;
          if (!*(v7 + 348))
          {
            v163 = 24;
          }

          v181 = v163;
          v169 = *(v7 + 348) == 0;
          v179 = 2 * (*(v7 + 348) == 0);
        }

        else
        {
          v169 = 0;
          v179 = 0;
          v181 = 8;
        }

        v70 = objc_autoreleasePoolPush();
        v183 = (*(*v7 + 88))(v7);
        v71 = *v183;
        v72 = *(v7 + 16);
        v177 = *(v72 + 176);
        v175 = *(v72 + 180);
        v190[0] = 0;
        v214[1] = 0;
        v214[0] = 0;
        CA::Shape::get_bounds(v236[0], v214);
        v73 = BYTE4(v234);
        if (*(v7 + 320) != 1.0 && (v234 & 0x100000000) == 0)
        {
          *(v7 + 320) = 1065353216;
          *v214 = v198;
        }

        v74 = *(v7 + 348);
        v188 = v73;
        if (v74 == 1)
        {
          if (v73)
          {
            v75 = (v7 + 264);
            os_unfair_lock_lock((v7 + 8));
            v79 = (v7 + 184);
            if (*(v7 + 184))
            {
              v80 = *(v7 + 248);
              v81 = *v75;
              v82 = *(v7 + 280);
            }

            else
            {
              CA::WindowServer::FlipBook::allocate_frame(&msg, v7, *(*(v7 + 16) + 176), *(*(v7 + 16) + 180), v76, v77, v78);
              v86 = *msg_16;
              *v79 = msg;
              *(v7 + 200) = v86;
              v87 = *&msg_16[32];
              *(v7 + 216) = *&msg_16[16];
              *(v7 + 232) = v87;
              v80 = *&msg_16[48];
              v81 = *v217;
              *(v7 + 248) = *&msg_16[48];
              *v75 = v81;
              v82 = *&v217[16];
              *(v7 + 280) = *&v217[16];
              *(v7 + 296) = v218;
              *(v7 + 304) = BYTE8(v218);
            }

            v171 = v82;
            *contexta = v81;
            v182 = v80;
            v88 = *(v7 + 200);
            msg = *v79;
            *msg_16 = v88;
            v89 = *(v7 + 232);
            *&msg_16[16] = *(v7 + 216);
            *&msg_16[32] = v89;
            *&msg_16[48] = v80;
            *v217 = v81;
            *&v217[16] = v82;
            *&v218 = *(v7 + 296);
            BYTE8(v218) = *(v7 + 304);
            os_unfair_lock_unlock((v7 + 8));
            v85 = v171;
            v84 = *contexta;
            v83 = v182;
          }

          else
          {
            CA::WindowServer::FlipBook::next_frame(&msg, v7, SLODWORD(v214[1]), SHIDWORD(v214[1]));
            v83 = *&msg_16[48];
            v84 = *v217;
            v85 = *&v217[16];
          }

          *buffer = msg;
          v201 = *msg_16;
          v202 = *&msg_16[16];
          v203 = *&msg_16[32];
          v204 = v83;
          v205[0] = v84;
          v205[1] = v85;
        }

        else
        {
          if (v74)
          {
            goto LABEL_108;
          }

          CA::WindowServer::FlipBook::next_frame(&msg, v7, 0, 0);
          *buffer = msg;
          v201 = *msg_16;
          v202 = *&msg_16[16];
          v203 = *&msg_16[32];
          v204 = *&msg_16[48];
          v205[0] = *v217;
          v205[1] = *&v217[16];
        }

        *&v206 = v218;
        BYTE8(v206) = BYTE8(v218);
LABEL_108:
        if (*(&v202 + 1))
        {
          __assert_rtn("render_frame", "windowserver-flipbook.cpp", 1322, "frame.t_continuous == 0");
        }

        if (v202)
        {
          __assert_rtn("render_frame", "windowserver-flipbook.cpp", 1323, "frame.seed == 0");
        }

        if (HIDWORD(v203))
        {
          __assert_rtn("render_frame", "windowserver-flipbook.cpp", 1324, "frame.swap_id == 0");
        }

        context = v70;
        if (!buffer[0])
        {
          __assert_rtn("render_frame", "windowserver-flipbook.cpp", 1326, "frame.surface");
        }

        v90 = *(v7 + 312);
        *(v7 + 312) = v90 + 1;
        v91 = *(v7 + 348);
        v172 = v90 + 1;
        if (v91 != 1)
        {
          if (v91)
          {
            v168 = 0;
            v170 = 0;
            v108 = v33;
            v106 = v177;
            goto LABEL_148;
          }

          os_unfair_lock_lock((v7 + 8));
          v92 = *(v7 + 88);
          v93 = *(v7 + 96);
          if (v92 != v93)
          {
            v94 = v214[1];
            do
            {
              CA::BoundsImpl::Union(v92 + 8, v214[0], v94);
              v92 += 16;
            }

            while (v92 != v93);
          }

          v95 = *(v7 + 112);
          v96 = *(v7 + 120);
          if (v95 != v96)
          {
            v97 = v214[1];
            do
            {
              CA::BoundsImpl::Union(v95 + 8, v214[0], v97);
              v95 += 16;
            }

            while (v95 != v96);
          }

          v98 = *(v7 + 136);
          v99 = *(v7 + 144);
          if (v98 != v99)
          {
            v100 = v214[1];
            do
            {
              CA::BoundsImpl::Union(v98 + 8, v214[0], v100);
              v98 += 16;
            }

            while (v98 != v99);
          }

          v101 = CA::WindowServer::FlipBook::previous_frame_with_seed(v7, v90);
          if (!v101 || !*(v101 + v181))
          {
            memset(msg_16, 0, 32);
            msg = 0u;
            CA::Shape::operator=(&msg, &v204);
            CA::shape_union(v236, &msg, v109);
            v170 = 0;
            v106 = v177;
LABEL_139:
            v204 = 0uLL;
            v168 = CA::Shape::area(v236[0]);
            v108 = v33;
LABEL_147:
            os_unfair_lock_unlock((v7 + 8));
LABEL_148:
            v178 = v175 * v106;
            v176 = v198;
            *(v71 + 608) = v198;
            *(v71 + 1384) |= 2u;
            *(v71 + 600) = CA::WindowServer::Display::ogl_display(*(v7 + 16));
            CA::OGL::Renderer::prepare_clip_shape(v183, v236[0]);
            (*(*v71 + 40))(v71, buffer[v179], 0, 0);
            CA::OGL::Renderer::render(v183, v235, 0, v118);
            if (v188)
            {
              v119 = (*(*v71 + 960))(v71, *(buffer + v181), &v233);
              (*(*v71 + 464))(v71);
              v120 = **v119;
              v121 = vabds_f32(*(v7 + 320), v120);
              v165 = *(&v201 + 1);
              v166 = buffer[1];
              v122 = v204;
              v180 = (*v119)[8];
              v167 = v120;
              if (v121 <= 0.01)
              {
                v125 = v205;
                v123 = *(v205 + 4);
                v124 = HIDWORD(v205[0]);
              }

              else
              {
                v123 = v176 >> 32;
                v124 = HIDWORD(v176);
                *(v7 + 320) = v120;
                v125 = &v198;
                v170 = v178;
              }

              v189 = v123;
              v128 = *v125;
              CA::WindowServer::FlipBook::next_frame(&msg, v7, SHIDWORD(v123), v124);
              *buffer = msg;
              v201 = *msg_16;
              v202 = *&msg_16[16];
              v203 = *&msg_16[32];
              *(v205 + 4) = *&v217[4];
              *(&v205[1] + 4) = *&v217[20];
              HIDWORD(v205[1]) = *&v217[28];
              *&v206 = v218;
              BYTE8(v206) = BYTE8(v218);
              *&msg = 0;
              v222 = 0;
              CA::OGL::Context::prepare_context(v71, &msg);
              v225 = 0x3C003C003C003C00uLL;
              v226 = 0uLL;
              v227 = 0x3F800000uLL;
              *&v228 = 1025;
              *&v224 = 0;
              *(&v224 + 1) = &CA::identity_transform;
              *&v223 = 0;
              *(&v223 + 1) = &CA::Shape::_infinite_shape;
              CA::OGL::Context::push_surface(v71, *(buffer + v181), 0, 0, 0);
              (*(*v71 + 1088))(v71, &v223);
              if (v169)
              {
                v129 = v165;
              }

              else
              {
                v129 = v166;
              }

              CA::OGL::emit_limit_apl_dimming(v71, v129, v119, 1.0, -v128, -v189);
              (*(*v71 + 912))(v71, v119);
              (*(*v71 + 1096))(v71, &v223);
              CA::OGL::Context::pop_surface(v71);
              *(v205 + 4) = v189;
              LODWORD(v205[0]) = v128;
              HIDWORD(v205[0]) = v124;
              v204 = v122;
              v130 = 504;
              v187 = __PAIR64__(LODWORD(v167), LODWORD(v180));
              v108 = v33;
              do
              {
                if (*&msg_16[v130 - 16])
                {
                  __assert_rtn("~ContextState", "ogl-context.h", 613, "!next && Imbalanced ContextState push/pop");
                }

                v130 -= 504;
              }

              while (v130 != -504);
              v126 = v121 > 0.01;
              v127 = v180;
            }

            else
            {
              v126 = 0;
              v187 = vneg_f32(0x3F0000003FLL);
              v127 = -1.0;
            }

            *&v202 = v172;
            if (x_log_get_flipbook(void)::once != -1)
            {
              dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
            }

            v131 = x_log_get_flipbook(void)::log;
            if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              v132 = v237;
              ID = IOSurfaceGetID(buffer[0]);
              LODWORD(msg) = 67111168;
              DWORD1(msg) = v132;
              WORD4(msg) = 1024;
              *(&msg + 10) = ID;
              HIWORD(msg) = 2048;
              *msg_16 = v170;
              *&msg_16[8] = 2048;
              *&msg_16[10] = v170 * 100.0 / v178;
              *&msg_16[18] = 2048;
              *&msg_16[20] = v168;
              *&msg_16[28] = 2048;
              *&msg_16[30] = v168 * 100.0 / v178;
              *&msg_16[38] = 1024;
              *&msg_16[40] = BYTE4(v234) & 1;
              *&msg_16[44] = 2048;
              *&msg_16[46] = v127;
              *&msg_16[54] = 1024;
              *&msg_16[56] = v126;
              _os_log_impl(&dword_183AA6000, v131, OS_LOG_TYPE_DEFAULT, "rendering update %u for flipbook to surface 0x%x, copy forward area %6lu[%3.0f%%], render area %6lu[%3.0f%%] root APL filter? %d (apl %.2g, dirty? %d)", &msg, 0x4Cu);
            }

            if (byte_1ED4E9824 == 1)
            {
              v134 = *(v7 + 348);
              v135 = v183;
              if (v134)
              {
                goto LABEL_166;
              }

              (*(*v71 + 776))(v71, buffer[1], *(&v201 + 1), 0, 0, 0, 0);
              *(v71 + 1384) |= 2u;
              (*(*v71 + 40))(v71, buffer[0], 0, 0);
              if (v190[0])
              {
                *&msg = 0x3804000038040000;
                CA::OGL::Context::paint_region(v71, v190[0], &msg, 1);
              }

              *&msg = 0x3804000000003804;
              CA::OGL::Context::paint_region(v71, v236[0], &msg, 1);
              v108 = v33;
            }

            v134 = *(v7 + 348);
            v135 = v183;
LABEL_166:
            v136 = *v71;
            if (v134 == 1)
            {
              (*(v136 + 464))(v71);
            }

            else
            {
              (*(v136 + 456))(v71, 1);
            }

            (*(*v71 + 40))(v71, 0, 0, 0);
            v137 = *(v135 + 2);
            if (v137)
            {
              CA::Shape::unref(v137);
              *(v135 + 2) = 0;
            }

            v138 = v236[8];
            v139 = *v135;
            v140 = v238;
            *(v139 + 159) = v237;
            *(v139 + 160) = v140;
            CA::Render::Update::release_objects(v235);
            v141 = *v135;
            v141[81] = v138;
            (*(*v141 + 264))();
            *(v71 + 1384) &= ~2u;
            (*(*v71 + 104))(v71, 0, 0);
            *(v71 + 600) = 0;
            if (v190[0])
            {
              CA::Shape::unref(v190[0]);
            }

            objc_autoreleasePoolPop(context);
            CA::Render::Update::~Update(v235, v142);
            *v207 = *buffer;
            v208 = v201;
            v209 = v202;
            v210 = v203;
            v211 = v204;
            *v212 = v205[0];
            *&v212[16] = v205[1];
            LOBYTE(v213) = BYTE8(v206);
            *&v212[32] = v206;
            if (!buffer[0])
            {
              __assert_rtn("render", "windowserver-flipbook.cpp", 169, "frame.surface");
            }

            *(&v209 + 1) = v11;
            if (atomic_fetch_add(v108 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v108 + 16))(v108);
            }

            v143 = *(v7 + 56);
            if (v143 != v184)
            {
              CA::WindowServer::FlipBook::invalidate_context(v143);
              *(v7 + 56) = v184;
            }

            *(v7 + 64) = v11;
            os_unfair_lock_lock((v7 + 8));
            v144 = *(v7 + 24) & 3;
            if (v144 == 2)
            {
              v151 = 160;
            }

            else if (v144 == 1)
            {
              if (*(v7 + 348) == 1 && (v145 = CA::WindowServer::FlipBook::previous_frame_with_seed(v7, v209 - 1)) != 0)
              {
                v146 = *v145;
                v147 = *(v145 + 16);
                v148 = *(v145 + 32);
                v242 = *(v145 + 48);
                *&buf[1].msgh_remote_port = v148;
                *&buf[0].msgh_voucher_port = v147;
                *&buf[0].msgh_bits = v146;
                v149 = *(v145 + 80);
                v243 = *(v145 + 64);
                v244 = v149;
                v245 = *(v145 + 96);
                v150 = *(v145 + 120);
                v246 = *(v145 + 112);
                v247 = v150;
              }

              else
              {
                v246 = 0;
                v247 = 0;
                memset(buf, 0, sizeof(buf));
                v242 = 0u;
              }

              (*(*v7 + 96))(v7, v207, buf);
              v151 = 136;
            }

            else
            {
              v151 = 88;
            }

            std::vector<CA::WindowServer::FlipBook::Frame>::push_back[abi:nn200100]((v7 + v151), v207);
            v20 = v209;
            v22 = *&v212[32];
            if (CADeviceHasInternalDiagnostics::once[0] != -1)
            {
              dispatch_once(CADeviceHasInternalDiagnostics::once, &__block_literal_global_175);
            }

            v152 = v212;
            if (CADeviceHasInternalDiagnostics::internal == 1)
            {
              MachPort = IOSurfaceCreateMachPort(v207[0]);
            }

            else
            {
              MachPort = 0;
            }

            if (*(v7 + 348) != 1)
            {
              v152 = (*(v7 + 16) + 168);
            }

            v153 = *(v7 + 136);
            if (v153 == *(v7 + 144))
            {
              v21 = 0;
            }

            else
            {
              v21 = *(v153 + 32);
            }

            v154 = *(v7 + 88);
            if (v154 != *(v7 + 96))
            {
              v155 = *(v154 + 32);
              if (v155 < v21)
              {
                v21 = v155;
              }
            }

            *v185 = *v152;
            os_unfair_lock_unlock((v7 + 8));
            *(v7 + 40) = vaddq_s64(*(v7 + 40), vdupq_n_s64(1uLL));
            CA::WindowServer::FlipBook::recycle(v7);
            v18 = *v185;
            v24 = 0;
            goto LABEL_201;
          }

          v190[0] = CA::Shape::new_shape(&v204, v102);
          CA::shape_subtract(v190, v236[0], v103, v104);
          v105 = v190[0];
          v106 = v177;
          if (v190[0])
          {
            if (v190[0] == 1)
            {
LABEL_138:
              v170 = CA::Shape::area(v105);
              goto LABEL_139;
            }
          }

          else if (*(v190[0] + 1) == 6)
          {
            goto LABEL_138;
          }

          CA::OGL::Context::copy_surface_region(v71);
          goto LABEL_138;
        }

        os_unfair_lock_lock((v7 + 8));
        v107 = CA::WindowServer::FlipBook::previous_frame_with_seed(v7, v90);
        if (v107)
        {
          v204 = *(v107 + 80);
          v108 = v33;
LABEL_144:
          memset(msg_16, 0, 32);
          msg = 0u;
          CA::Shape::operator=(&msg, v214);
          CA::shape_union(v236, &msg, v112);
          v205[0] = *v214;
          v114 = v214[1];
          v115 = HIDWORD(v214[1]);
          if ((v188 & 1) == 0)
          {
            (*(*v71 + 104))(v71, -LODWORD(v214[0]), -HIDWORD(v214[0]));
          }

          *&msg = CA::Shape::new_shape(&v204, v113);
          CA::shape_subtract(&msg, v214, v116);
          v117 = msg;
          v170 = CA::Shape::area(msg);
          v168 = v115 * v114;
          CA::Shape::unref(v117);
          v106 = v177;
          goto LABEL_147;
        }

        v108 = v33;
        if (LODWORD(v214[0]) == v198)
        {
          v110 = DWORD2(v198);
          v111 = HIDWORD(v198);
          if (*(v214 + 4) == *(&v198 + 4) && HIDWORD(v214[1]) == HIDWORD(v198))
          {
LABEL_143:
            v204 = 0uLL;
            goto LABEL_144;
          }
        }

        else
        {
          v110 = DWORD2(v198);
          v111 = HIDWORD(v198);
        }

        v214[0] = v198;
        v214[1] = __PAIR64__(v111, v110);
        if ((v188 & 1) == 0)
        {
          CA::WindowServer::FlipBook::reuse_frame(v7, buffer);
          os_unfair_lock_unlock((v7 + 8));
          CA::WindowServer::FlipBook::next_frame(&msg, v7, v110, v111);
          *buffer = msg;
          v201 = *msg_16;
          v202 = *&msg_16[16];
          v203 = *&msg_16[32];
          v205[0] = *v217;
          v205[1] = *&v217[16];
          *&v206 = v218;
          BYTE8(v206) = BYTE8(v218);
          os_unfair_lock_lock((v7 + 8));
        }

        goto LABEL_143;
      }
    }

    else
    {
      CA::Render::Update::add_context(v235, v33);
      if ((v12 & 8) == 0)
      {
        goto LABEL_92;
      }
    }

    v63 = *(*(v7 + 16) + 24);
    *&msg_16[8] = *MEMORY[0x1E69E99E0];
    *&msg_16[16] = v63;
    *&msg = 19;
    *&msg_16[4] = 40415;
    *msg_16 = 0;
    *(&msg + 1) = v186;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&msg);
    }

    if ((mach_msg(&msg, 17, 0x24u, 0, 0, 0, 0) - 268435459) <= 1)
    {
      if ((msg & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*MEMORY[0x1E69E9A60], HIDWORD(msg));
      }

      mach_msg_destroy(&msg);
    }

    goto LABEL_92;
  }

  if (x_log_get_flipbook(void)::once != -1)
  {
    dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
  }

  v16 = x_log_get_flipbook(void)::log;
  v17 = os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT);
  v187 = vneg_f32(0x3F0000003FLL);
  v18 = 0uLL;
  if (v17)
  {
    v19 = *(v7 + 64);
    buf[0].msgh_bits = 134218240;
    *&buf[0].msgh_size = v11;
    LOWORD(buf[0].msgh_local_port) = 2048;
    *(&buf[0].msgh_local_port + 2) = v19;
    _os_log_impl(&dword_183AA6000, v16, OS_LOG_TYPE_DEFAULT, "bad timestamp - %llu is earlier than last timestamp %llu", buf, 0x16u);
    v18 = 0uLL;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  MachPort = 0;
  v24 = 1;
LABEL_201:
  v156 = *(*(v7 + 16) + 24);
  *&buf[0].msgh_id = 0u;
  *&buf[0].msgh_size = 0u;
  buf[1].msgh_size = MachPort;
  buf[1].msgh_local_port = 1245184;
  *&buf[1].msgh_voucher_port = *MEMORY[0x1E69E99E0];
  *(&v242 + 4) = v11;
  LODWORD(v242) = v156;
  HIDWORD(v242) = v24;
  *&v243 = v20;
  *(&v243 + 1) = v21;
  *&v244 = v187;
  *(&v244 + 1) = v22;
  v245 = v18;
  buf[0].msgh_bits = -2147483629;
  buf[0].msgh_remote_port = v186;
  *&buf[0].msgh_id = 0x100009DE0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(buf);
  }

  if ((mach_msg(buf, 17, 0x70u, 0, 0, 0, 0) - 268435459) <= 1)
  {
    if ((buf[0].msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], buf[0].msgh_local_port);
    }

    mach_msg_destroy(buf);
  }

  if (MachPort)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], MachPort);
  }

  if (x_log_get_flipbook(void)::once != -1)
  {
    dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
  }

  v157 = x_log_get_flipbook(void)::log;
  if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v158 = v22;
    if (v22 >= 0x400)
    {
      v160 = 1.0;
      do
      {
        v160 = v160 * 0.0009765625;
        v159 = v160 * v158;
      }

      while (v160 * v158 >= 1024.0);
    }

    else
    {
      v159 = v22;
    }

    v161 = v22 > 0x3FF;
    if ((v22 & 0xFFFFFFFFFFF00000) != 0)
    {
      ++v161;
    }

    if ((v22 & 0xFFFFFFFFC0000000) != 0)
    {
      ++v161;
    }

    if (v22 >> 40)
    {
      ++v161;
    }

    if (v22 >> 50)
    {
      ++v161;
    }

    if (v22 >> 60)
    {
      ++v161;
    }

    v162 = off_1E6DF9988[v161];
    buf[0].msgh_bits = 134219266;
    *&buf[0].msgh_size = v20;
    LOWORD(buf[0].msgh_local_port) = 2048;
    *(&buf[0].msgh_local_port + 2) = v21;
    HIWORD(buf[0].msgh_id) = 1024;
    buf[1].msgh_bits = v24;
    LOWORD(buf[1].msgh_size) = 2048;
    *(&buf[1].msgh_size + 2) = *(&v187 + 1);
    HIWORD(buf[1].msgh_local_port) = 2048;
    *&buf[1].msgh_voucher_port = v159;
    LOWORD(v242) = 2080;
    *(&v242 + 2) = v162;
    _os_log_impl(&dword_183AA6000, v157, OS_LOG_TYPE_DEFAULT, "frame_id = %llu, oldest = %llu, status = %u, apl_dimming %f, memory_usage %.2lf %s", buf, 0x3Au);
  }

  kdebug_trace();

  pthread_mutex_unlock((v10 + 24));
}

uint64_t CA::WindowServer::Server::get_performance_info(CA::WindowServer::Server *this, CA::Render::Object *a2, CFMutableArrayRef *a3, void *a4)
{
  pthread_mutex_lock((a2 + 24));
  v6 = *(a2 + 40);
  if (v6)
  {
    *(a2 + 40) = 0;
    CFArrayAppendValue(*a3, v6);
    CFRelease(v6);
  }

  return pthread_mutex_unlock((a2 + 24));
}

void CA::WindowServer::Server::get_update_histograms(CA::WindowServer::Server *this, CA::Render::Object *a2, CFMutableArrayRef *a3, void *a4)
{
  v9[1] = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  for (i = 0; i != 1928; i += 8)
  {
    v9[0] = *(*(*(a2 + 12) + 25568) + i);
    v8 = CFNumberCreate(0, kCFNumberLongLongType, v9);
    CFArrayAppendValue(Mutable, v8);
    CFRelease(v8);
  }

  CFArrayAppendValue(*a3, Mutable);
  CFRelease(Mutable);
  if (a3[1])
  {
    bzero(*(*(a2 + 12) + 25568), 0x788uLL);
  }
}

void CA::WindowServer::Server::get_debug_log(CA::WindowServer::Server *this, CA::Render::Object *a2, os_unfair_lock_s *a3, void *a4)
{
  v214 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  v7 = v6;
  v8 = *&a3[4]._os_unfair_lock_opaque;
  i = a3;
  v194 = v8;
  os_unfair_lock_opaque = a3->_os_unfair_lock_opaque;
  if (os_unfair_lock_opaque > 11)
  {
    if (os_unfair_lock_opaque > 13)
    {
      if (os_unfair_lock_opaque == 14)
      {
        (*(**(a2 + 12) + 2184))(*(a2 + 12), v8);
      }

      else if (os_unfair_lock_opaque == 15)
      {
        (*(*a2 + 416))(a2, v8);
      }

      else if (os_unfair_lock_opaque == 16 && !*v8)
      {
        v190 = v6;
        *&v213[0] = v8;
        X::Stream::printf(v8, "\x1B[32m============ Flatten Cache ============\x1B[0m\n\n");
        os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
        if (CA::Render::FlattenManager::flattened_cache && *(CA::Render::FlattenManager::flattened_cache + 24))
        {
          v195 = 0;
          v196[0] = 0;
          operator new();
        }

        X::Stream::printf(v8, "No Flattened Entries \x1B[38;5;130m▼・ᴥ・▼\x1B[0m\n");
        X::Stream::printf(v8, "\x1B[32m=======================================\x1B[0m\n\n\x1B[33m============= Reuse Pool ==============\x1B[0m\n\n");
        v81 = CA::Render::FlattenManager::flattened_free_surface_pool[0];
        v80 = off_1EA84E760[0];
        if (off_1EA84E760[0] == CA::Render::FlattenManager::flattened_free_surface_pool[0])
        {
          X::Stream::printf(*&v213[0], "Nothing in reuse pool \x1B[38;5;130m▼・ᴥ・▼\x1B[0m\n");
        }

        else
        {
          v82 = 0;
          v83 = 0;
          do
          {
            v84 = *v81;
            if (*v81)
            {
              v83 += [*v84 allocatedSize];
              X::Stream::printf(*&v213[0], "   * \x1B[38;5;227msurface \x1B[0m[%d x %d] [%dMB] [prot: %d] [options: %d]\n\n", [*v84 width], objc_msgSend(*v84, "height"), objc_msgSend(*v84, "allocatedSize") / 0xF4240uLL, objc_msgSend(*v84, "protectionOptions"), *(v84 + 16));
              v80 = off_1EA84E760[0];
            }

            ++v81;
            ++v82;
          }

          while (v81 != v80);
          X::Stream::printf(*&v213[0], "Total entries: %d\nTotal Memory: %dMB\n\n", v82, v83 / 0xF4240);
        }

        X::Stream::printf(*&v213[0], "\x1B[33m=======================================\x1B[0m\n\n");
        os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
        v7 = v190;
      }

      goto LABEL_111;
    }

    if (os_unfair_lock_opaque == 12)
    {
      (*(*a2 + 80))(a2, v8);
      goto LABEL_111;
    }
  }

  else if (os_unfair_lock_opaque <= 6)
  {
    if (!os_unfair_lock_opaque)
    {
      os_unfair_lock_lock(a2 + 4);
      v43 = *(a2 + 16);
      if (v43)
      {
        v44 = 0;
        v45 = 0;
        while (2)
        {
          v46 = *(a2 + 14);
          v47 = (v46 + 16 * v45);
          while (1)
          {
            v48 = *v47;
            if ((*(*v47 + 14) & 2) == 0)
            {
              break;
            }

            ++v45;
            v47 += 2;
            if (v45 >= v43)
            {
              if ((v44 & 1) == 0)
              {
                goto LABEL_110;
              }

              goto LABEL_109;
            }
          }

          v49 = v46 + 16 * v45;
          if ((v44 & 1) == 0)
          {
            v211 = 0u;
            v212 = 0u;
            v209 = 0u;
            v210 = 0u;
            v207 = 0u;
            v208 = 0u;
            v205 = 0u;
            v206 = 0u;
            v203 = 0u;
            v204 = 0u;
            v201 = 0u;
            v202 = 0u;
            v199 = 0u;
            v200 = 0u;
            v197 = 0u;
            v198 = 0u;
            CString = CA_CFStringGetCString(*(a2 + 13), &v197, 256);
            v51 = " (secure)";
            if (!*(a2 + 825))
            {
              v51 = "";
            }

            X::Stream::printf(v8, "%s display%s:\n", CString, v51);
            v48 = *v49;
          }

          v52 = *(v48 + 4);
          v53 = *(v49 + 8);
          v54 = atomic_load(v48 + 57);
          if (!v54)
          {
            if (*(v48 + 64))
            {
              v55 = 0;
            }

            else
            {
              v55 = getpid();
            }

            v56 = 0;
            atomic_compare_exchange_strong(v48 + 57, &v56, v55);
            if (v56)
            {
              v54 = v56;
            }

            else
            {
              v54 = v55;
            }
          }

          v57 = CA::Render::Context::process_path(*v49);
          v187 = v54;
          v8 = v194;
          X::Stream::printf(v194, "  %x: level %g; pid %d [%s]", v52, v53, v187, v57 + 28);
          v58 = *v49;
          if ((*(*v49 + 584) & 4) != 0)
          {
            x_stream_write(v194, " (secure)", 9uLL);
            v58 = *v49;
          }

          if (*(v58 + 88))
          {
            x_stream_write(v194, " (visible)", 0xAuLL);
            v58 = *v49;
          }

          if ((*(v58 + 292) & 0x800) != 0)
          {
            x_stream_write(v194, " (decode-error)", 0xFuLL);
            v58 = *v49;
          }

          v59 = *(v58 + 30);
          if (v59)
          {
            X::Stream::printf(v194, " %s", (v59 + 28));
          }

          v44 = 1;
          x_stream_write(v194, "\n", 1uLL);
          v43 = *(a2 + 16);
          if (++v45 < v43)
          {
            continue;
          }

          break;
        }

LABEL_109:
        x_stream_write(v8, "\n", 1uLL);
      }

      goto LABEL_110;
    }

    if (os_unfair_lock_opaque != 1)
    {
      goto LABEL_111;
    }
  }

  else if ((os_unfair_lock_opaque - 7) >= 2)
  {
    if (os_unfair_lock_opaque == 9)
    {
      v211 = 0u;
      v212 = 0u;
      v209 = 0u;
      v210 = 0u;
      v207 = 0u;
      v208 = 0u;
      v205 = 0u;
      v206 = 0u;
      v203 = 0u;
      v204 = 0u;
      v201 = 0u;
      v202 = 0u;
      v199 = 0u;
      v200 = 0u;
      v197 = 0u;
      v198 = 0u;
      memset(v196, 0, sizeof(v196));
      if ((*(*(a2 + 12) + 640) & 0x40) != 0)
      {
        v190 = v6;
        v60 = mach_continuous_time();
        v61 = CACreateDateStringFromHostContinuousTime(v60, 0);
        v62 = CA_CFStringGetCString(v61, v196, 32);
        v63 = CA_CFStringGetCString(*(a2 + 13), &v197, 256);
        v64 = CATimeWithHostTime(v60);
        v65 = "unavailable";
        if (v62)
        {
          v65 = v62;
        }

        X::Stream::printf(v8, "== %s display @ t %f (%s) ==\n", v63, v64, v65);
        v66 = *(*(a2 + 12) + 336);
        if (v66)
        {
          os_unfair_lock_lock((v66 + 8));
          X::Stream::printf(v8, "Server-side flipbook %p\n", v66);
          X::Stream::printf(v8, "  State: %s\n", CA::WindowServer::FlipBook::transition_to_state(CA::WindowServer::FlipBookState,BOOL)::state_to_name[*(v66 + 24) & 3]);
          X::Stream::printf(v8, "  Maximum size: %u\n", *(v66 + 72));
          v67 = *(v66 + 88);
          v68 = *(v66 + 96);
          if (v67 == v68)
          {
            v69 = 0;
          }

          else
          {
            LODWORD(v69) = 0;
            v70 = *(v66 + 88);
            do
            {
              LODWORD(v69) = v69 + *(v70 + 112);
              v70 += 128;
            }

            while (v70 != v68);
            v69 = v69;
          }

          v85 = *(v66 + 136);
          v86 = *(v66 + 144);
          if (v85 == v86)
          {
            v88 = 0;
          }

          else
          {
            v87 = 0;
            do
            {
              v87 += *(v85 + 112);
              v85 += 128;
            }

            while (v85 != v86);
            v88 = v87;
          }

          v89 = *(v66 + 160);
          v90 = *(v66 + 168);
          if (v89 == v90)
          {
            v92 = 0;
          }

          else
          {
            v91 = 0;
            do
            {
              v91 += *(v89 + 112);
              v89 += 128;
            }

            while (v89 != v90);
            v92 = v91;
          }

          v93 = *(v66 + 112);
          v94 = *(v66 + 120);
          if (v93 == v94)
          {
            v96 = 0;
          }

          else
          {
            v95 = 0;
            do
            {
              v95 += *(v93 + 112);
              v93 += 128;
            }

            while (v93 != v94);
            v96 = v95;
          }

          memset(v213, 0, sizeof(v213));
          v97 = (v68 - v67) >> 7;
          v98 = v69;
          if (v69 >= 0x400)
          {
            v100 = 1.0;
            do
            {
              v100 = v100 * 0.0009765625;
              v99 = v100 * v98;
            }

            while (v100 * v98 >= 1024.0);
          }

          else
          {
            v99 = v69;
          }

          v101 = v69 > 0x3FF;
          if ((v69 & 0xFFFFFFFFFFF00000) != 0)
          {
            ++v101;
          }

          if ((v69 & 0xFFFFFFFFC0000000) != 0)
          {
            ++v101;
          }

          if (v69 >> 40)
          {
            ++v101;
          }

          if (v69 >> 50)
          {
            ++v101;
          }

          if (v69 >> 60)
          {
            v102 = v101 + 1;
          }

          else
          {
            v102 = v101;
          }

          X::Stream::printf(v8, "  Enqueued size: %u (%.2lf %s)\n", v97, v99, off_1E6DF9988[v102]);
          v103 = v92;
          if (v92 >= 0x400)
          {
            v105 = 1.0;
            do
            {
              v105 = v105 * 0.0009765625;
              v104 = v105 * v103;
            }

            while (v105 * v103 >= 1024.0);
          }

          else
          {
            v104 = v92;
          }

          v106 = v92 > 0x3FF;
          if ((v92 & 0xFFFFFFFFFFF00000) != 0)
          {
            ++v106;
          }

          if ((v92 & 0xFFFFFFFFC0000000) != 0)
          {
            ++v106;
          }

          if (v92 >> 40)
          {
            ++v106;
          }

          if (v92 >> 50)
          {
            ++v106;
          }

          if (v92 >> 60)
          {
            ++v106;
          }

          X::Stream::printf(v8, "  Suppressed size: %u (%.2lf %s)\n", (*(v66 + 168) - *(v66 + 160)) >> 7, v104, off_1E6DF9988[v106]);
          v107 = v88;
          if (v88 >= 0x400)
          {
            v109 = 1.0;
            do
            {
              v109 = v109 * 0.0009765625;
              v108 = v109 * v107;
            }

            while (v109 * v107 >= 1024.0);
          }

          else
          {
            v108 = v88;
          }

          v110 = v88 > 0x3FF;
          if ((v88 & 0xFFFFFFFFFFF00000) != 0)
          {
            ++v110;
          }

          if ((v88 & 0xFFFFFFFFC0000000) != 0)
          {
            ++v110;
          }

          if (v88 >> 40)
          {
            ++v110;
          }

          if (v88 >> 50)
          {
            ++v110;
          }

          if (v88 >> 60)
          {
            ++v110;
          }

          X::Stream::printf(v8, "  Swapped size: %u (%.2lf %s)\n", (*(v66 + 144) - *(v66 + 136)) >> 7, v108, off_1E6DF9988[v110]);
          v111 = (*(v66 + 120) - *(v66 + 112)) >> 7;
          v112 = v96;
          v192 = v61;
          if (v96 >= 0x400)
          {
            v114 = 1.0;
            do
            {
              v114 = v114 * 0.0009765625;
              v113 = v114 * v112;
            }

            while (v114 * v112 >= 1024.0);
          }

          else
          {
            v113 = v96;
          }

          v115 = v96 > 0x3FF;
          if ((v96 & 0xFFFFFFFFFFF00000) != 0)
          {
            ++v115;
          }

          if ((v96 & 0xFFFFFFFFC0000000) != 0)
          {
            ++v115;
          }

          if (v96 >> 40)
          {
            ++v115;
          }

          if (v96 >> 50)
          {
            ++v115;
          }

          if (v96 >> 60)
          {
            ++v115;
          }

          X::Stream::printf(v8, "  Free size: %u (%.2lf %s)\n", v111, v113, off_1E6DF9988[v115]);
          v116 = *(v66 + 112);
          v117 = *(v66 + 120);
          for (i = v66; v116 != v117; v116 += 128)
          {
            v118 = CACreateDateStringFromHostContinuousTime(*(v116 + 40), 0);
            v119 = CA_CFStringGetCString(v118, v213, 32);
            ID = IOSurfaceGetID(*v116);
            v121 = *(v116 + 112);
            v122 = v121;
            if (v121 >= 0x400)
            {
              v124 = 1.0;
              do
              {
                v124 = v124 * 0.0009765625;
                v123 = v124 * v122;
              }

              while (v124 * v122 >= 1024.0);
            }

            else
            {
              v123 = v121;
            }

            v125 = v121 > 0x3FF;
            if ((v121 & 0xFFFFFFFFFFF00000) != 0)
            {
              ++v125;
            }

            if ((v121 & 0xFFFFFFFFC0000000) != 0)
            {
              ++v125;
            }

            if (v121 >> 40)
            {
              ++v125;
            }

            if (v121 >> 50)
            {
              ++v125;
            }

            if (v121 >> 60)
            {
              v126 = v125 + 1;
            }

            else
            {
              v126 = v125;
            }

            v127 = off_1E6DF9988[v126];
            v128 = CATimeWithHostTime(*(v116 + 40));
            v129 = "unavailable";
            if (v119)
            {
              v129 = v119;
            }

            X::Stream::printf(v194, "    Surface 0x%x (%.2lf %s) @ %f (%s), reuse %u, dirty res (%dx%d), alloc res (%dx%d)\n", ID, v123, v127, v128, v129, *(v116 + 48), *(v116 + 88), *(v116 + 92), *(v116 + 104), *(v116 + 108));
            if (v118)
            {
              CFRelease(v118);
            }
          }

          v130 = *&i[84]._os_unfair_lock_opaque;
          v131 = v130;
          if (v130 >= 0x400)
          {
            v134 = 1.0;
            v133 = v194;
            do
            {
              v134 = v134 * 0.0009765625;
              v132 = v134 * v131;
            }

            while (v134 * v131 >= 1024.0);
          }

          else
          {
            v132 = v130;
            v133 = v194;
          }

          v135 = v130 > 0x3FF;
          if ((v130 & 0xFFFFFFFFFFF00000) != 0)
          {
            ++v135;
          }

          if ((v130 & 0xFFFFFFFFC0000000) != 0)
          {
            ++v135;
          }

          if (v130 >> 40)
          {
            ++v135;
          }

          if (v130 >> 50)
          {
            ++v135;
          }

          if (v130 >> 60)
          {
            v136 = v135 + 1;
          }

          else
          {
            v136 = v135;
          }

          v137 = off_1E6DF9988[v136];
          v138 = *&i[82]._os_unfair_lock_opaque;
          v139 = v138;
          if (v138 >= 0x400)
          {
            v141 = 1.0;
            do
            {
              v141 = v141 * 0.0009765625;
              v140 = v141 * v139;
            }

            while (v141 * v139 >= 1024.0);
          }

          else
          {
            v140 = v138;
          }

          v142 = v138 > 0x3FF;
          if ((v138 & 0xFFFFFFFFFFF00000) != 0)
          {
            ++v142;
          }

          if ((v138 & 0xFFFFFFFFC0000000) != 0)
          {
            ++v142;
          }

          if (v138 >> 40)
          {
            ++v142;
          }

          if (v138 >> 50)
          {
            ++v142;
          }

          if (v138 >> 60)
          {
            v143 = v142 + 1;
          }

          else
          {
            v143 = v142;
          }

          X::Stream::printf(v133, "  Pool Current Memory: %.2lf %s / Max Pool Memory:  %.2lf %s)\n", v132, v137, v140, off_1E6DF9988[v143]);
          X::Stream::printf(v133, "  Context ID: 0x%x\n", i[14]._os_unfair_lock_opaque);
          X::Stream::printf(v133, "  Total frames rendered this activation: %u\n", *&i[12]._os_unfair_lock_opaque);
          X::Stream::printf(v133, "  Total frames rendered: %u\n", *&i[10]._os_unfair_lock_opaque);
          X::Stream::printf(v133, "  Total frames allocated: %u\n", *&i[8]._os_unfair_lock_opaque);
          v144 = *&i[22]._os_unfair_lock_opaque;
          for (j = *&i[24]._os_unfair_lock_opaque; v144 != j; v144 += 128)
          {
            v146 = CACreateDateStringFromHostContinuousTime(*(v144 + 40), 0);
            v147 = CA_CFStringGetCString(v146, v213, 32);
            v148 = IOSurfaceGetID(*v144);
            v149 = *(v144 + 112);
            v150 = v149;
            if (v149 >= 0x400)
            {
              v152 = 1.0;
              do
              {
                v152 = v152 * 0.0009765625;
                v151 = v152 * v150;
              }

              while (v152 * v150 >= 1024.0);
            }

            else
            {
              v151 = v149;
            }

            v153 = v149 > 0x3FF;
            if ((v149 & 0xFFFFFFFFFFF00000) != 0)
            {
              ++v153;
            }

            if ((v149 & 0xFFFFFFFFC0000000) != 0)
            {
              ++v153;
            }

            if (v149 >> 40)
            {
              ++v153;
            }

            if (v149 >> 50)
            {
              ++v153;
            }

            if (v149 >> 60)
            {
              v154 = v153 + 1;
            }

            else
            {
              v154 = v153;
            }

            v155 = off_1E6DF9988[v154];
            v156 = CATimeWithHostTime(*(v144 + 40));
            v157 = "unavailable";
            if (v147)
            {
              v157 = v147;
            }

            X::Stream::printf(v194, "    Surface 0x%x (%.2lf %s) @ %f (%s), seed %u enqueued\n", v148, v151, v155, v156, v157, *(v144 + 32));
            if (v146)
            {
              CFRelease(v146);
            }
          }

          v158 = *&i[40]._os_unfair_lock_opaque;
          for (k = *&i[42]._os_unfair_lock_opaque; v158 != k; v158 += 128)
          {
            v160 = CACreateDateStringFromHostContinuousTime(*(v158 + 40), 0);
            v161 = CA_CFStringGetCString(v160, v213, 32);
            v162 = IOSurfaceGetID(*v158);
            v163 = *(v158 + 112);
            v164 = v163;
            if (v163 >= 0x400)
            {
              v166 = 1.0;
              do
              {
                v166 = v166 * 0.0009765625;
                v165 = v166 * v164;
              }

              while (v166 * v164 >= 1024.0);
            }

            else
            {
              v165 = v163;
            }

            v167 = v163 > 0x3FF;
            if ((v163 & 0xFFFFFFFFFFF00000) != 0)
            {
              ++v167;
            }

            if ((v163 & 0xFFFFFFFFC0000000) != 0)
            {
              ++v167;
            }

            if (v163 >> 40)
            {
              ++v167;
            }

            if (v163 >> 50)
            {
              ++v167;
            }

            if (v163 >> 60)
            {
              v168 = v167 + 1;
            }

            else
            {
              v168 = v167;
            }

            v169 = off_1E6DF9988[v168];
            v170 = CATimeWithHostTime(*(v158 + 40));
            v171 = "unavailable";
            if (v161)
            {
              v171 = v161;
            }

            X::Stream::printf(v194, "    Surface 0x%x (%.2lf %s) @ %f (%s), seed %u suppressed\n", v162, v165, v169, v170, v171, *(v158 + 32));
            if (v160)
            {
              CFRelease(v160);
            }
          }

          v172 = *&i[34]._os_unfair_lock_opaque;
          for (m = *&i[36]._os_unfair_lock_opaque; v172 != m; v172 += 128)
          {
            v174 = CACreateDateStringFromHostContinuousTime(*(v172 + 40), 0);
            v175 = CA_CFStringGetCString(v174, v213, 32);
            v176 = IOSurfaceGetID(*v172);
            v177 = *(v172 + 112);
            v178 = v177;
            if (v177 >= 0x400)
            {
              v180 = 1.0;
              do
              {
                v180 = v180 * 0.0009765625;
                v179 = v180 * v178;
              }

              while (v180 * v178 >= 1024.0);
            }

            else
            {
              v179 = v177;
            }

            v181 = v177 > 0x3FF;
            if ((v177 & 0xFFFFFFFFFFF00000) != 0)
            {
              ++v181;
            }

            if ((v177 & 0xFFFFFFFFC0000000) != 0)
            {
              ++v181;
            }

            if (v177 >> 40)
            {
              ++v181;
            }

            if (v177 >> 50)
            {
              ++v181;
            }

            if (v177 >> 60)
            {
              v182 = v181 + 1;
            }

            else
            {
              v182 = v181;
            }

            v183 = off_1E6DF9988[v182];
            v184 = CATimeWithHostTime(*(v172 + 40));
            v185 = "unavailable";
            if (v175)
            {
              v185 = v175;
            }

            X::Stream::printf(v194, "    Surface 0x%x (%.2lf %s) @ %f (%s), seed %u, swap %u\n", v176, v179, v183, v184, v185, *(v172 + 32), *(v172 + 60));
            if (v174)
            {
              CFRelease(v174);
            }
          }

          v8 = v194;
          x_stream_write(v194, "\n", 1uLL);
          os_unfair_lock_unlock(i + 2);
          v61 = v192;
        }

        x_stream_write(v8, "\n", 1uLL);
        v7 = v190;
        if (v61)
        {
          CFRelease(v61);
        }
      }

      goto LABEL_111;
    }

    if (os_unfair_lock_opaque != 10)
    {
      goto LABEL_111;
    }

    os_unfair_lock_lock(a2 + 4);
    v11 = *(a2 + 16);
    if (v11)
    {
      i = (8 * v11);
      if ((8 * v11) > 0x1000)
      {
        v13 = malloc_type_malloc(8 * v11, 0xA3CAA4A3uLL);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v10);
        v13 = &v188 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v13, v12);
      }

      v71 = 0;
      for (n = 0; n != v11; ++n)
      {
        v73 = *(*(a2 + 14) + v71);
        if (v73)
        {
          v74 = (v73 + 8);
          if (!atomic_fetch_add((v73 + 8), 1u))
          {
            v73 = 0;
            atomic_fetch_add(v74, 0xFFFFFFFF);
          }
        }

        *&v13[8 * n] = v73;
        v71 += 16;
      }

      os_unfair_lock_unlock(a2 + 4);
      v75 = 0;
      v76 = 0;
      do
      {
        v77 = *&v13[8 * v75];
        if ((*(v77 + 14) & 2) == 0)
        {
          if ((v76 & 1) == 0)
          {
            v211 = 0u;
            v212 = 0u;
            v209 = 0u;
            v210 = 0u;
            v207 = 0u;
            v208 = 0u;
            v205 = 0u;
            v206 = 0u;
            v203 = 0u;
            v204 = 0u;
            v201 = 0u;
            v202 = 0u;
            v199 = 0u;
            v200 = 0u;
            v197 = 0u;
            v198 = 0u;
            v78 = CA_CFStringGetCString(*(a2 + 13), &v197, 256);
            v79 = "";
            if (*(a2 + 825))
            {
              v79 = " (secure)";
            }

            X::Stream::printf(v194, "%s display%s:\n", v78, v79);
            v77 = *&v13[8 * v75];
          }

          CA::Render::Context::show_hosts(v77, v194);
          v77 = *&v13[8 * v75];
          v76 = 1;
        }

        if (atomic_fetch_add((v77 + 8), 0xFFFFFFFF) == 1)
        {
          (*(*v77 + 16))(v77);
        }

        ++v75;
      }

      while (v11 != v75);
      if (i > 0x1000)
      {
        v42 = v13;
        goto LABEL_69;
      }

      goto LABEL_111;
    }

LABEL_110:
    os_unfair_lock_unlock(a2 + 4);
    goto LABEL_111;
  }

  if (os_unfair_lock_opaque == 7)
  {
    v14 = 6;
  }

  else
  {
    v14 = 4;
  }

  if (os_unfair_lock_opaque == 13)
  {
    v14 = 5;
  }

  if (os_unfair_lock_opaque == 8)
  {
    v14 = 0;
  }

  LODWORD(v192) = v14;
  os_unfair_lock_lock(a2 + 4);
  v16 = *(a2 + 16);
  if (!v16)
  {
    goto LABEL_110;
  }

  if ((8 * v16) > 0x1000)
  {
    v17 = malloc_type_malloc(8 * v16, 0x2F61FB55uLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v15);
    v17 = &v188 - ((8 * v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, 8 * v16);
  }

  v189 = 8 * v16;
  v190 = v7;
  v18 = 0;
  for (ii = 0; ii != v16; ++ii)
  {
    v20 = *(*(a2 + 14) + v18);
    if (v20)
    {
      v21 = (v20 + 8);
      if (!atomic_fetch_add((v20 + 8), 1u))
      {
        v20 = 0;
        atomic_fetch_add(v21, 0xFFFFFFFF);
      }
    }

    *&v17[8 * ii] = v20;
    v18 += 16;
  }

  v191 = os_unfair_lock_opaque;
  os_unfair_lock_unlock(a2 + 4);
  for (jj = 0; jj != v16; ++jj)
  {
    v23 = *&v17[8 * jj];
    if ((*(v23 + 14) & 2) == 0)
    {
      v24 = *&i[2]._os_unfair_lock_opaque;
      if (!v24 || v24 == *(v23 + 16))
      {
        pthread_mutex_lock((v23 + 72));
        v25 = *&v17[8 * jj];
        v26 = *(v25 + 16);
        v27 = *(v25 + 192);
        v28 = atomic_load((v25 + 228));
        if (!v28)
        {
          if (*(v25 + 256))
          {
            v29 = 0;
          }

          else
          {
            v29 = getpid();
          }

          v30 = 0;
          atomic_compare_exchange_strong((v25 + 228), &v30, v29);
          if (v30)
          {
            v28 = v30;
          }

          else
          {
            v28 = v29;
          }
        }

        v31 = v27;
        v32 = (CA::Render::Context::process_path(*&v17[8 * jj]) + 7);
        v33 = *(*&v17[8 * jj] + 584);
        if ((v33 & 4) != 0)
        {
          v34 = "(secure) ";
        }

        else
        {
          v34 = "";
        }

        if ((v33 & 0x10) != 0)
        {
          v35 = "(start security analysis) ";
        }

        else
        {
          v35 = "";
        }

        if ((v33 & 0x20) != 0)
        {
          v36 = "(stop security analysis) ";
        }

        else
        {
          v36 = "";
        }

        v37 = mach_absolute_time();
        v38 = CATimeWithHostTime(v37);
        v186 = v28;
        v39 = v194;
        X::Stream::printf(v194, "== context %x; level %g; pid %d [%s] %s%s%sat time %f ==\n\n", v26, v31, v186, v32, v34, v35, v36, v38);
        v40 = CA::Render::Context::root_layer_handle(*&v17[8 * jj]);
        if (v40 && (v41 = *(v40 + 2)) != 0)
        {
          if (v191 == 13)
          {
            LODWORD(v197) = 0;
            LODWORD(v213[0]) = 0;
            CA::Render::Layer::count_layers(v41, &v197, v213, 0);
            X::Stream::printf(v39, "\n*** Total Layers: %d, Hidden/Culled Layers: %d ***\n\n", v197, LODWORD(v213[0]));
          }

          (*(*v41 + 40))(v41, v39, 0, v192);
        }

        else
        {
          x_stream_write(v39, "  <null>\n", 9uLL);
        }

        x_stream_write(v39, "\n\n", 2uLL);
        pthread_mutex_unlock((*&v17[8 * jj] + 72));
        v23 = *&v17[8 * jj];
      }
    }

    if (atomic_fetch_add((v23 + 8), 0xFFFFFFFF) == 1)
    {
      (*(*v23 + 16))(v23);
    }
  }

  v7 = v190;
  if (v189 > 0x1000)
  {
    v42 = v17;
LABEL_69:
    free(v42);
  }

LABEL_111:
  objc_autoreleasePoolPop(v7);
}

uint64_t CA::WindowServer::Server::set_ax_matrix(CA::WindowServer::Server *this, CA::Render::Object *a2, float *a3, void *a4)
{
  v8 = *MEMORY[0x1E69E9840];
  CA::WindowServer::Server::set_accessibility_color_matrix(a2, a3, a3[9]);
  CA::WindowServer::Server::invalidate(a2, *(*(a2 + 12) + 216));
  v6 = 0;
  v7 = vdupq_n_s64(0x10000uLL);
  return (*(*a2 + 176))(a2, &v6, 0.0);
}

uint64_t CA::WindowServer::Server::set_accessibility_color_matrix(CA::WindowServer::Server *this, float *a2, float a3)
{
  v14 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((this + 24));
  (*(**(this + 12) + 1480))(*(this + 12), a2, a3);
  v12 = 0;
  __asm { FMOV            V0.2D, #2.0 }

  v13 = _Q0;
  (*(*this + 176))(this, &v12, 0.0);
  return pthread_mutex_unlock((this + 24));
}

uint64_t CA::WindowServer::Server::purge_server(CA::WindowServer::Server *this, CA::Render::Object *a2, void *a3, void *a4)
{
  pthread_mutex_lock((a2 + 24));
  v5 = mach_absolute_time();
  v6 = CATimeWithHostTime(v5);
  CA::Render::collect(1, v6);
  (*(*a2 + 504))(a2);

  return pthread_mutex_unlock((a2 + 24));
}

uint64_t CA::WindowServer::Server::display_changed(CA::WindowServer::Server *this, CA::Render::Object *a2, const CA::Shape **a3, void *a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 12);
  if (v4 == a3)
  {
    CA::WindowServer::Server::invalidate(a2, v4[27]);
    v7 = 0;
    v8 = vdupq_n_s64(0x800000uLL);
    return (*(*a2 + 176))(a2, &v7, 0.0);
  }

  return result;
}

void CA::WindowServer::Server::set_display_latency(CA::WindowServer::Server *this, CA::Render::Object *a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a3 + 1) == *(*(a2 + 12) + 24))
  {
    v6 = *(a3 + 9);
    v7 = *(a3 + 10);
    v8 = (*(*a2 + 424))(a2);
    if (v8)
    {
      v9 = v8;
      v10 = strndup(a3 + 8, 0x40uLL);
      v11 = *MEMORY[0x1E695E8E0];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = ___ZN2CA12WindowServer6Server19set_display_latencyEPNS_6Render6ObjectEPvS5__block_invoke;
      v13[3] = &__block_descriptor_tmp_94_17463;
      v13[4] = a2;
      v13[5] = v10;
      v13[6] = v6;
      v13[7] = v7;
      CFRunLoopPerformBlock(v9, v11, v13);
      CFRunLoopWakeUp(v9);
      *a3 = 1;
    }

    else
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v12 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_183AA6000, v12, OS_LOG_TYPE_ERROR, "No display runloop! Ignoring latency update.", buf, 2u);
      }
    }
  }
}

void ___ZN2CA12WindowServer6Server19set_display_latencyEPNS_6Render6ObjectEPvS5__block_invoke(uint64_t a1)
{
  (*(**(a1 + 32) + 168))(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  v2 = *(a1 + 40);

  free(v2);
}

void CA::WindowServer::Server::set_display_user_prefs(CA::WindowServer::Server *this, CA::Render::Object *a2, _DWORD *a3, void *a4)
{
  v4 = *(a2 + 12);
  if (a3[1] == *(v4 + 24))
  {
    CA::WindowServer::Display::set_user_preferences(v4, *(a3 + 8), a3[3], *(a3 + 16), *(a3 + 17), 0);
    *a3 = 1;
  }
}

void CA::WindowServer::Server::set_display_properties(CA::WindowServer::Server *this, CA::Render::Object *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3[1];
  v6 = *(a3 + 4);
  v7 = *(a3 + 20);
  v8 = *(a3 + 40);
  v9 = *(a3 + 6);
  v10 = *(a3 + 28);
  v11 = *(a3 + 9);
  v13 = *(a3 + 11);
  v12 = *(a3 + 12);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  v17 = ___ZN2CA12WindowServer6Server22set_display_propertiesEPNS_6Render6ObjectEPvS5__block_invoke;
  v18 = &__block_descriptor_tmp_85;
  v21 = v13;
  v22 = v9;
  v19 = a2;
  v20 = v5;
  v23 = v10;
  v24 = v11;
  v25 = v6;
  v27 = v7;
  v28 = v8;
  v26 = v12;
  if (*a3 == *(*(a2 + 12) + 24) && !mach_port_mod_refs(*MEMORY[0x1E69E9A60], v12, 0, 1))
  {
    v14 = (*(*a2 + 424))(a2);
    if (v14)
    {
      v15 = v14;
      CFRunLoopPerformBlock(v14, *MEMORY[0x1E695E8E0], block);
      CFRunLoopWakeUp(v15);
    }

    else
    {
      v17(block);
    }
  }
}

uint64_t ___ZN2CA12WindowServer6Server22set_display_propertiesEPNS_6Render6ObjectEPvS5__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if ((v2 & 8) != 0)
  {
    v3 = *(a1 + 52);
    if (v3)
    {
      if (v3 != *(*(*(a1 + 32) + 96) + 32))
      {
        v7 = 1;
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_16;
      }
    }
  }

  if ((v2 & 1) == 0 || (v4 = *(a1 + 40)) == 0)
  {
    v7 = 0;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_16;
  }

  v5 = *(a1 + 32);
  if ((byte_1ED4E9823 & 1) == 0)
  {
    v6 = *(v5 + 96);
    pthread_mutex_lock(v6 + 8);
    pthread_mutex_lock((v5 + 24));
    (*(**(v5 + 96) + 744))();
    (*(*v5 + 448))(v5);
    pthread_mutex_unlock((v5 + 24));
    pthread_mutex_unlock(v6 + 8);
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
  }

  if (*(*(v5 + 96) + 656) == v4)
  {
    v7 = 0;
  }

  else
  {
    v8.i64[0] = *(*(v5 + 96) + 656);
    v8.i64[1] = v4;
    v9 = vshrn_n_s64(v8, 0x1DuLL);
    v10.i64[0] = v9.i32[0] & 0x1FFFFFF;
    v10.i64[1] = v9.i32[1] & 0x1FFFFFF;
    v11 = vbslq_s8(vdupq_n_s64(0x3FFFFFE0000000uLL), vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v10), vdupq_n_s64(0x3F59000000000000uLL))), vdupq_n_s64(0x40847AE147AE147BuLL))), 0x1DuLL), v8);
    v7 = vmovn_s64(vceqq_s64(v11, vdupq_laneq_s64(v11, 1))).u8[0] ^ 1;
  }

  if ((*(a1 + 48) & 0x10) != 0)
  {
LABEL_16:
    v12 = *(*(a1 + 32) + 96);
    v13 = (*(*v12 + 32))(v12);
    v14 = 1.0 / (*(**(*(a1 + 32) + 96) + 24))(*(*(a1 + 32) + 96));
    if ((*(v12 + 905) & 0x80) != 0)
    {
      v15 = (*(*v12 + 64))(v12);
      if (((*(v12 + 672) >> 10) & 3 | 4) == 4)
      {
        v16 = (v12 + 88);
      }

      else
      {
        v16 = (v12 + 80);
        if (!*(v12 + 80) || !*(v12 + 84))
        {
          v16 = (v12 + 72);
        }
      }

      v17 = v15 / *v16;
      v18 = (*(*v12 + 72))(v12);
      v19 = (*(*v12 + 64))(v12);
      if (((*(v12 + 672) >> 10) & 3 | 4) == 4)
      {
        v20 = v12 + 88;
      }

      else
      {
        v20 = v12 + 80;
        if (!*(v12 + 80) || !*(v12 + 84))
        {
          v20 = v12 + 72;
        }
      }

      v21 = (v18 / v19) / *(v20 + 4);
      if (v21 >= v17)
      {
        v21 = v17;
      }

      if (v21 < v14)
      {
        v14 = v21;
      }
    }

    v22 = *(a1 + 32);
    if ((*(*(v22 + 12) + 672) & 0x1C00) == 0x400 && (v23 = 1.0 / v13, v24 = *(a1 + 56), v24 >= v23) && (v25 = *(a1 + 60), !((v25 > v14) | v7 & 1)))
    {
      CA::WindowServer::Server::set_scale(v22, v24, v25);
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }
  }

LABEL_35:
  v26 = *(a1 + 48);
  if ((v26 & 0x20) != 0)
  {
    v27 = *(a1 + 64);
    if (((v27 - 5) < 0xFFFFFFFC) | v7 & 1)
    {
      v7 = 1;
      goto LABEL_47;
    }

    v7 = 0;
    *(*(*(a1 + 32) + 96) + 148) = v27;
    v26 = *(a1 + 48);
  }

  if ((v7 & 1) == 0 && (v26 & 2) != 0)
  {
    v28 = *(a1 + 68);
    if (v28)
    {
      CA::WindowServer::Server::set_overscan_adjustment(*(a1 + 32), v28);
      v26 = *(a1 + 48);
    }
  }

  if (!(v7 & 1 | ((v26 & 4) == 0)))
  {
    (*(**(*(a1 + 32) + 96) + 264))(*(*(a1 + 32) + 96), *(a1 + 76));
    v26 = *(a1 + 48);
  }

  if (!(v7 & 1 | ((v26 & 0x80) == 0)))
  {
    (*(**(a1 + 32) + 544))(*(a1 + 32), *(a1 + 77));
    v7 = 0;
  }

LABEL_47:
  *&msg.msgh_voucher_port = 0;
  *&msg.msgh_bits = 0x1C00000013;
  msg.msgh_remote_port = *(a1 + 72);
  msg.msgh_local_port = 0;
  msg.msgh_id = (v7 & 1) == 0;
  v31 = 0;
  if ((mach_msg(&msg, 1, 0x1Cu, 0, 0, 0, 0) - 268435459) <= 1)
  {
    mach_msg_destroy(&msg);
  }

  return mach_port_deallocate(*MEMORY[0x1E69E9A60], *(a1 + 72));
}

uint64_t CA::WindowServer::Server::set_scale(CA::WindowServer::Server *this, double a2, double a3)
{
  pthread_mutex_lock((this + 24));
  v6 = *(this + 12);
  CA::WindowServer::Display::sanitize_dimension_scale(v6, a2, *(v6 + 160), *(v6 + 96));
  v8 = v7;
  CA::WindowServer::Display::sanitize_dimension_scale(v6, a3, *(v6 + 164), *(v6 + 100));
  v16 = *(v6 + 128);
  if (v16 != v8 || (v16 = *(v6 + 136), v16 != v9))
  {
    *(v6 + 128) = v8;
    *(v6 + 136) = v9;
    CA::WindowServer::Display::update_geometry(v6, v9, v16, v10, v11, v12, v13, v14, v15);
  }

  CA::WindowServer::Server::invalidate(this, *(*(this + 12) + 216));

  return pthread_mutex_unlock((this + 24));
}

uint64_t CA::WindowServer::Server::set_overscan_adjustment(uint64_t a1, int a2)
{
  pthread_mutex_lock((a1 + 24));
  v12 = *(a1 + 96);
  v13 = *(v12 + 672);
  if (((v13 >> 8) & 3) != a2)
  {
    *(v12 + 672) = v13 & 0xFCFF | ((a2 & 3) << 8);
    CA::WindowServer::Display::update_geometry(v12, v4, v5, v6, v7, v8, v9, v10, v11);
    CA::WindowServer::Display::post_display_changed(v12);
  }

  return pthread_mutex_unlock((a1 + 24));
}

void CA::WindowServer::Server::get_display_auto_luminance_boost(CA::WindowServer::Server *this, CA::Render::Object *a2, float *a3, void *a4)
{
  v4 = *(a2 + 12);
  if (*(a3 + 1) == v4[6])
  {
    *a3 = 1;
    a3[2] = (*(*v4 + 1080))(v4);
  }
}

double CA::WindowServer::Server::get_display_logical_bounds(CA::WindowServer::Server *this, CA::Render::Object *a2, char *a3, void *a4)
{
  v4 = *(a2 + 12);
  if (*(a3 + 1) == *(v4 + 24))
  {
    v6 = *(v4 + 192);
    v5 = *(v4 + 196);
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      *a3 = 1;
      v8 = *(v4 + 184);
      v9.i64[0] = v8;
      v9.i64[1] = SHIDWORD(v8);
      *(a3 + 8) = vcvtq_f64_s64(v9);
      result = v6;
      *(a3 + 3) = v6;
      *(a3 + 4) = v5;
    }
  }

  return result;
}

uint64_t CA::WindowServer::Server::render_display_context_list(CA::WindowServer::Server *this, CA::Render::Object *a2, CA::WindowServer::Server **a3, void *a4)
{
  result = CA::WindowServer::display_name_matches(a2, a3[2], ((*(a3 + 104) >> 4) & 1));
  if (result)
  {
    pthread_mutex_lock((a2 + 24));
    v7 = a3[5];
    if (v7 && a3[6])
    {
      *(a3 + 7) = 0;
      CA::WindowServer::Server::render_display_context_list_to_target(a2, a3, v7);
      *(a3 + 7) = 1;
      v7 = a3[6];
    }

    CA::WindowServer::Server::render_display_context_list_to_target(a2, a3, v7);

    return pthread_mutex_unlock((a2 + 24));
  }

  return result;
}

void CA::WindowServer::Server::render_display_context_list_to_target(uint64_t a1, int *a2, CA::WindowServer::Display *a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 4);
  *(a2 + 104) |= 0x20u;
  if (v3)
  {
    *&v7 = *(a2 + 7);
    *(&v7 + 1) = *(a3 + 1);
    v55 = v7;
    bzero(v58, 0x570uLL);
    CA::Render::Update::Update(v58, 0, 0, *(a2 + 8), 0, 0, 0, 0, &v55, a2[18] | *(a1 + 184));
    if (v58[0])
    {
      if (CADeviceNeedsP3ShapeTracking::once != -1)
      {
        dispatch_once(&CADeviceNeedsP3ShapeTracking::once, &__block_literal_global_53);
      }

      v9 = 0;
      v10 = 0x800000;
      if (!CADeviceNeedsP3ShapeTracking::p3_tracking)
      {
        v10 = 0;
      }

      v11 = v64 & 0xFFFFF7FFEF7FFF9FLL | v10;
      if (*(a1 + 825) == 1)
      {
        v9 = 32;
        if (*(a2 + 4))
        {
          v9 = 0;
        }
      }

      v12 = 64;
      if (!*(a2 + 5))
      {
        v12 = 0;
      }

      v13 = v12 | v9;
      v14 = 0x80000000000;
      if (!*(a2 + 8))
      {
        v14 = 0;
      }

      v64 = v13 | v14 | v11 | ((a2[26] & 2) << 27);
      v60[9] = (*(**(a1 + 96) + 1416))();
      v15 = *(a1 + 96);
      if (v15)
      {
        if (*(a2 + 7) == 1)
        {
          v66[0] = 0u;
          v66[2].f64[0] = 0.0;
          BYTE3(v66[4].f64[0]) = 0;
          v66[6] = 0u;
          *(v66 + 12) = xmmword_183E20F10;
          HIDWORD(v66[1].f64[1]) = 1065353216;
          *(&v66[2] + 8) = xmmword_183E20F20;
          v66[3].f64[1] = 0.0;
          *(&v66[3].f64[1] + 7) = 0;
          *(v66[4].f64 + 4) = 0x100000001;
          memset(&v66[4].f64[1] + 4, 0, 33);
          *(&v66[7] + 4) = 0uLL;
          LODWORD(v66[7].f64[0]) = 1065353216;
          HIDWORD(v66[8].f64[0]) = -1;
          if (*(a2 + 8) == 1)
          {
            CA::WindowServer::Display::display_attributes(v65, v15);
            CA::WindowServer::Display::recording_display_attributes(v66, v15, v65, 1, 1);
          }

          else
          {
            CA::WindowServer::Display::reconciled_display_attributes(v66, v15);
          }

          CA::Render::Update::set_display_attributes(v62, v66);
        }

        v17 = *(v15 + 876);
        v18 = __sincosf_stret(*(v15 + 872));
        v19 = *(v15 + 880);
        v62[201] = LODWORD(v18.__cosval);
        v62[202] = LODWORD(v18.__sinval);
        v62[203] = v17;
        v63 = v19;
        v16 = v64 | 0x800000000000;
      }

      else
      {
        v16 = v64;
      }

      v20 = *(a2 + 4);
      v21 = 0x20000000;
      if (!*(a2 + 6))
      {
        v21 = 0;
      }

      v64 = v16 & 0xFFFFFFFFD7FFDFFELL | 0x8002001 | v21;
      v61 = *a2;
      v23 = *(a2 + 10) != 1 || (v22 = *(a2 + 11), (*(v22 + 144) & 0x1F) != 0) || *(v22 + 96) != 0.0 || *(v22 + 104) != 0.0;
      v57[0] = 0;
      v57[1] = 0;
      CA::Render::Fence::BatchWaitLock::BatchWaitLock(v57);
      v24 = *(a2 + 3);
      if (v24)
      {
        v25 = v24 - 1;
        do
        {
          v26 = *(v20 + 8 * v25);
          pthread_mutex_lock((v26 + 72));
          v27 = CA::Render::Context::root_layer_handle(v26);
          if (v27 && *(v27 + 2))
          {
            memset(v56, 0, sizeof(v56));
            v28 = CA::Render::Context::root_layer_handle(v26);
            if (v28)
            {
              v28 = *(v28 + 2);
            }

            CA::Render::Layer::compute_frame_transform(v28, 0, v56, 0);
            v67 = 0;
            memset(v66, 0, sizeof(v66));
            if (v23)
            {
              if (*(a2 + 10) == 1)
              {
                v29 = 0;
              }

              else
              {
                v29 = v25;
              }

              v30 = *(a2 + 11) + 152 * v29;
              v31 = *(v30 + 16);
              v32 = *(v30 + 32);
              v33 = *(v30 + 48);
              v66[0] = *v30;
              v66[1] = v31;
              v66[2] = v32;
              v66[3] = v33;
              v34 = *(v30 + 80);
              v35 = *(v30 + 96);
              v36 = *(v30 + 112);
              v66[4] = *(v30 + 64);
              v66[5] = v34;
              v66[6] = v35;
              v66[7] = v36;
              v66[8] = *(v30 + 128);
              LOBYTE(v67) = *(v30 + 144) & 7;
              LOBYTE(v67) = *(v30 + 144) & 8 | v67;
              LOBYTE(v67) = v67 | *(v30 + 144) & 0x10;
              CA::Transform::set(v65, v56, 1);
              v39.n128_f64[0] = CA::Transform::concat_left(v66, v65, v37, v38);
            }

            else
            {
              v39 = CA::Transform::set(v66, v56, 1);
            }

            if ((a2[26] & 4) != 0)
            {
              v39.n128_u32[0] = *(*(a2 + 5) + 12);
              v40 = v39.n128_u64[0];
              v39.n128_u64[0] = 0;
              v41 = CA::Transform::translate(v66, v39, v40, 0.0);
              v41.f64[0] = 1.0;
              CA::Transform::scale(v66, v41, -1.0, 1.0);
            }

            v42 = CA::Render::Context::root_layer_handle(v26);
            if (v42)
            {
              v43 = *(v42 + 2);
            }

            else
            {
              v43 = 0;
            }

            CA::Render::Update::add_context(v58, v26, v43, v66);
          }

          else
          {
            CA::Render::Update::add_context(v58, v26);
          }

          pthread_mutex_unlock((v26 + 72));
          --v25;
        }

        while (v25 != -1);
      }

      CA::Render::Fence::BatchWaitLock::invalidate(v57);
      CA::Render::Update::added_all_contexts(v58, v44, v45);
      CA::Render::Fence::BatchWaitLock::invalidate(v57);
      memset(v66, 0, 48);
      CA::Shape::operator=(v66, &v55);
      CA::shape_union(v59, v66, v46);
      v47 = v60[10];
      *(a2 + 12) = v60[11];
      (*(*a3 + 24))(a3, v47, a2[19], 0, 0);
      CA::WindowServer::wrap_buffer(*(a1 + 96), a3, v48);
      if (v49)
      {
        v50 = v49;
        if ((*(*a1 + 480))(a1, v58, v49, &v55, a2[26] & 1, a2[19]))
        {
          v51 = ~(*(v50 + 236) >> 30) & 0x20;
        }

        else
        {
          LOBYTE(v51) = 0;
        }

        *(a2 + 104) = a2[26] & 0xDF | v51;
        CA::Render::Update::render_edr_factor();
        (*(*a3 + 32))(a3);
        if (BYTE5(ca_debug_options) == 1)
        {
          CA::WindowServer::print_layer_trees(v60, *&v59[8]);
        }

        if (initialized[0] != -1)
        {
          dispatch_once_f(initialized, 0, init_debug);
        }

        if (*&dword_1ED4E9660)
        {
          v52 = (*(*v50 + 168))(v50);
          if (v52)
          {
            v53 = CAIOSurfaceWriteToFileWithSuffix(v52, "snapshot-contexts");
            free(v53);
            if (*&dword_1ED4E9660 > 0.0)
            {
              *&dword_1ED4E9660 = *&dword_1ED4E9660 + -1.0;
            }
          }
        }

        if (*(v50 + 9))
        {
          v54 = *(v50 + 10);
          if (v54)
          {
            v54(v50);
          }
        }

        *(v50 + 9) = 0;
        *(v50 + 10) = 0;
        CA::WindowServer::Surface::unref(v50);
      }

      else
      {
        *(a2 + 104) &= ~0x20u;
      }
    }

    CA::Render::Update::~Update(v58, v8);
  }
}

void CA::WindowServer::Server::render_display(CA::WindowServer::Server *this, CA::Render::Object *a2, unsigned __int8 *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (CA::WindowServer::display_name_matches(a2, *(a3 + 2), ((a3[112] >> 4) & 1)) && *(a3 + 20) <= 3u)
  {
    a3[112] |= 0x20u;
    os_unfair_lock_lock(a2 + 4);
    v7 = *(a2 + 16);
    if (v7)
    {
      v8 = 8 * v7;
      if ((8 * v7) > 0x1000)
      {
        v9 = malloc_type_malloc(8 * v7, 0xDD67DBD9uLL);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v6);
        v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v9, 8 * v7);
      }

      v10 = 0;
      for (i = 0; i != v7; ++i)
      {
        v12 = *(*(a2 + 14) + v10);
        if (v12)
        {
          v13 = (v12 + 8);
          if (!atomic_fetch_add((v12 + 8), 1u))
          {
            v12 = 0;
            atomic_fetch_add(v13, 0xFFFFFFFF);
          }
        }

        *&v9[8 * i] = v12;
        v10 += 16;
      }

      os_unfair_lock_unlock(a2 + 4);
      pthread_mutex_lock((a2 + 24));
      v26 = 0;
      *v24 = 0;
      v25 = 0;
      v14 = v7 - 1;
      v23 = 0;
      do
      {
        v15 = *&v9[8 * v14];
        pthread_mutex_lock((v15 + 72));
        CA::WindowServer::get_context_logical_bounds(v15, &v26, v24, &v23, v16);
        pthread_mutex_unlock((v15 + 72));
        if (!v14)
        {
          break;
        }

        --v14;
      }

      while ((v26 & 1) == 0);
      v17 = *(a2 + 12);
      if (v26)
      {
        CA::WindowServer::Display::set_logical_bounds(v17, v24, v23);
      }

      else
      {
        v18 = *(v17 + 904);
        if ((v18 & 8) != 0)
        {
          *(v17 + 184) = 0;
          *(v17 + 192) = 0;
          *(v17 + 904) = v18 & 0xFFFFFFB7;
          CA::WindowServer::Display::update_actual_bounds(v17);
        }
      }

      v19 = *(a3 + 3);
      if (v19 && *(a3 + 4))
      {
        a3[7] = 0;
        CA::WindowServer::Server::render_display_to_target(a2, a3, v9, v7, v19);
        a3[7] = 1;
        v19 = *(a3 + 4);
      }

      CA::WindowServer::Server::render_display_to_target(a2, a3, v9, v7, v19);
      pthread_mutex_unlock((a2 + 24));
      for (j = 0; j != v7; ++j)
      {
        v21 = *&v9[8 * j];
        if (v21 && atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v21 + 16))(v21);
        }
      }

      if (v8 > 0x1000)
      {
        free(v9);
      }
    }

    else
    {

      os_unfair_lock_unlock(a2 + 4);
    }
  }
}

void CA::WindowServer::Server::render_display_to_target(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, CA::WindowServer::Display *a5)
{
  v91 = *MEMORY[0x1E69E9840];
  *&v10 = *(a2 + 15);
  *(&v10 + 1) = *(a5 + 1);
  v58 = v10;
  bzero(v79, 0x570uLL);
  CA::Render::Update::Update(v79, 0, 0, *(a2 + 9), 0, 0, 0, 0, &v58, a2[21] | *(a1 + 184));
  if (v79[0])
  {
    v12 = a2[20];
    switch(v12)
    {
      case 3:
        operator new();
      case 2:
        operator new();
      case 1:
        operator new();
    }

    if (CADeviceNeedsP3ShapeTracking::once != -1)
    {
      dispatch_once(&CADeviceNeedsP3ShapeTracking::once, &__block_literal_global_53);
    }

    v13 = 0;
    v14 = 0x800000;
    if (!CADeviceNeedsP3ShapeTracking::p3_tracking)
    {
      v14 = 0;
    }

    v15 = v90 & 0xFFFFF7FFC77FFF9ELL | v14;
    if (*(a1 + 825) == 1)
    {
      v13 = 32;
      if (*(a2 + 4))
      {
        v13 = 0;
      }
    }

    v16 = 64;
    if (!*(a2 + 5))
    {
      v16 = 0;
    }

    v17 = v13 | v16;
    v18 = 0x20000000;
    if (!*(a2 + 6))
    {
      v18 = 0;
    }

    v19 = v17 | v18 | v15;
    v82 = *a2;
    v85 = a2[14];
    v20 = 0x80000000000;
    if (!*(a2 + 8))
    {
      v20 = 0;
    }

    v90 = v19 | v20 | ((a2[28] & 2) << 27) | 0x8000001;
    v81[9] = (*(**(a1 + 96) + 1416))();
    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v21 = *(a2 + 12);
    if (v21 && (*(v21 + 144) & 0x10) == 0)
    {
      v22 = *(a1 + 96);
      v23 = v22[44];
      v24 = v22[45];
      v25 = (*(*v22 + 856))(v22);
      v26 = *(*(a2 + 12) + 144);
      v27 = v25 - (v26 & (2 * v26) & 2 | (v26 >> 2) & 1) + 4;
      v28 = v27 & 3;
      v30 = -v27;
      _NF = v30 < 0;
      v31 = v30 & 3;
      if (_NF)
      {
        v32 = v28;
      }

      else
      {
        v32 = -v31;
      }

      if (v32 == 3)
      {
        __asm { FMOV            V1.2D, #1.0 }

        LOBYTE(v68) = v68 & 0xE0 | 4;
        v60 = 0uLL;
        v63 = 0u;
        v64 = xmmword_183E20E00;
        v66 = xmmword_183E20E60;
        v67 = _Q1;
        v59 = xmmword_183E20E60;
        v61 = xmmword_183E20F00;
        v62 = 0u;
        *&v65 = v24;
        *(&v65 + 1) = 0;
      }

      else if (v32 == 2)
      {
        CA::Transform::set_affine_rectilinear(&v59, -1.0, -1.0, v23, v24);
      }

      else
      {
        __asm { FMOV            V0.2D, #1.0 }

        if (v32 == 1)
        {
          LOBYTE(v68) = v68 & 0xE0 | 7;
          v60 = 0uLL;
          v66 = xmmword_183E20E60;
          v67 = _Q0;
          v59 = xmmword_183E21560;
          v63 = 0u;
          v64 = xmmword_183E20E00;
          v61 = xmmword_183E20E00;
          v62 = 0u;
          *&v65 = 0;
          *(&v65 + 1) = v23;
        }

        else
        {
          v59 = xmmword_183E20E00;
          v60 = 0u;
          v61 = xmmword_183E20E60;
          v62 = 0u;
          v63 = 0u;
          v64 = xmmword_183E20E00;
          v65 = 0u;
          v66 = xmmword_183E20E60;
          v67 = _Q0;
          LOBYTE(v68) = v68 & 0xE0;
        }
      }

      v84 = &v59;
    }

    v38 = *(a1 + 96);
    if (v38)
    {
      if (*(a2 + 7) == 1)
      {
        *v70 = 0u;
        *v71 = 0;
        *(&v70[1] + 4) = xmmword_183E20F10;
        HIDWORD(v70[3]) = 1065353216;
        *&v71[8] = xmmword_183E20F20;
        memset(v72, 0, sizeof(v72));
        v73 = 0x100000001;
        v74 = 0u;
        memset(v75, 0, 20);
        v77 = 0;
        v76 = 0;
        v75[5] = 1065353216;
        v78 = -1;
        if (*(a2 + 8) == 1)
        {
          CA::WindowServer::Display::display_attributes(v69, v38);
          CA::WindowServer::Display::recording_display_attributes(v70, v38, v69, 1, 1);
        }

        else
        {
          CA::WindowServer::Display::reconciled_display_attributes(v70, v38);
        }

        CA::Render::Update::set_display_attributes(v83, v70);
      }

      v39 = *(v38 + 876);
      v40 = __sincosf_stret(*(v38 + 872));
      v41 = *(v38 + 880);
      cosval = v40.__cosval;
      sinval = v40.__sinval;
      v88 = v39;
      v89 = v41;
      v90 |= 0x800000000000uLL;
    }

    v69[0] = 0;
    v69[1] = 0;
    CA::Render::Fence::BatchWaitLock::BatchWaitLock(v69);
    v42 = a3 - 8;
    do
    {
      v43 = *(v42 + 8 * a4);
      pthread_mutex_lock((v43 + 72));
      v44 = CA::Render::Context::root_layer_handle(v43);
      if (v44)
      {
        v45 = *(v44 + 2);
      }

      else
      {
        v45 = 0;
      }

      CA::Render::Update::add_context(v79, v43, v45, *(a2 + 12));
      pthread_mutex_unlock((v43 + 72));
      --a4;
    }

    while (a4);
    CA::Render::Fence::BatchWaitLock::invalidate(v69);
    CA::Render::Update::added_all_contexts(v79, v46, v47);
    *v71 = 0u;
    memset(v70, 0, sizeof(v70));
    CA::Shape::operator=(v70, &v58);
    CA::shape_union(v80, v70, v48);
    v49 = v81[10];
    *(a2 + 13) = v81[11];
    (*(*a5 + 24))(a5, v49, a2[22], 0, 0);
    CA::WindowServer::wrap_buffer(*(a1 + 96), a5, v50);
    v52 = *(a2 + 112);
    if (v51)
    {
      v53 = v51;
      if ((*(*a1 + 480))(a1, v79, v51, &v58, (v52 >> 2) & 1, a2[22]))
      {
        v54 = ~(*(v53 + 236) >> 30) & 0x20;
      }

      else
      {
        LOBYTE(v54) = 0;
      }

      *(a2 + 112) = a2[28] & 0xDF | v54;
      CA::Render::Update::render_edr_factor();
      (*(*a5 + 32))(a5);
      (*(*a5 + 40))(a5, v83[5]);
      if (BYTE5(ca_debug_options) == 1)
      {
        CA::WindowServer::print_layer_trees(v81, *&v80[8]);
      }

      if (initialized[0] != -1)
      {
        dispatch_once_f(initialized, 0, init_debug);
      }

      if (*&dword_1ED4E9660)
      {
        v55 = (*(*v53 + 168))(v53);
        if (v55)
        {
          v56 = CAIOSurfaceWriteToFileWithSuffix(v55, "snapshot-display");
          free(v56);
          if (*&dword_1ED4E9660 > 0.0)
          {
            *&dword_1ED4E9660 = *&dword_1ED4E9660 + -1.0;
          }
        }
      }

      if (*(v53 + 9))
      {
        v57 = *(v53 + 10);
        if (v57)
        {
          v57(v53);
        }
      }

      *(v53 + 9) = 0;
      *(v53 + 10) = 0;
      CA::WindowServer::Surface::unref(v53);
    }

    else
    {
      *(a2 + 112) = v52 & 0xDF;
    }

    CA::Render::Fence::BatchWaitLock::invalidate(v69);
  }

  CA::Render::Update::~Update(v79, v11);
}

uint64_t CA::WindowServer::anonymous namespace::StopBeforeSlotDelegate::render_layer(CA::WindowServer::_anonymous_namespace_::StopBeforeSlotDelegate *this, CA::Render::LayerNode *a2, const CA::Render::Layer *a3)
{
  v3 = *(this + 52);
  if ((v3 & 1) == 0)
  {
    v4 = *(a3 + 19);
    if (v4)
    {
      if (*(v4 + 92) == *(this + 12))
      {
        *(this + 52) = 1;
      }
    }
  }

  return v3 ^ 1u;
}

uint64_t CA::WindowServer::anonymous namespace::StopBeforeSlotDelegate::update_layer(CA::WindowServer::_anonymous_namespace_::StopBeforeSlotDelegate *this, CA::Render::Context *a2, CA::Render::LayerNode *a3, const CA::Render::Layer *a4)
{
  v4 = *(a4 + 19);
  if (v4 && *(v4 + 92) == *(this + 12))
  {
    *(a3 + 3) |= 0x2000000uLL;
  }

  return 1;
}

void CA::WindowServer::anonymous namespace::StopBeforeSlotDelegate::~StopBeforeSlotDelegate(CA::WindowServer::_anonymous_namespace_::StopBeforeSlotDelegate *this)
{
  *this = &unk_1EF200FB0;
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(this + 8);

  JUMPOUT(0x1865EA9A0);
}

{
  *this = &unk_1EF200FB0;
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(this + 8);
}

uint64_t *CA::WindowServer::anonymous namespace::StopAfterDelegate::did_include_context(CA::WindowServer::_anonymous_namespace_::StopAfterDelegate *this, CA::Render::Context *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(this + 1, *(a2 + 4));
  if (result)
  {
    result = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::erase(this + 1, result);
  }

  if (!*(this + 4))
  {
    *(this + 48) = 1;
  }

  return result;
}

void CA::WindowServer::anonymous namespace::StopAfterDelegate::~StopAfterDelegate(CA::WindowServer::_anonymous_namespace_::StopAfterDelegate *this)
{
  *this = &unk_1EF200FB0;
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(this + 8);

  JUMPOUT(0x1865EA9A0);
}

{
  *this = &unk_1EF200FB0;
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(this + 8);
}

os_log_t ___Z20x_log_get_brightnessv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "Brightness");
  x_log_get_brightness(void)::log = result;
  return result;
}

CA::WindowServer::Server *CA::WindowServer::Server::Server(CA::WindowServer::Server *this, CA::WindowServer::Display *a2, const __CFString *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  *this = &unk_1EF200D08;
  *(this + 4) = 0;
  *(this + 12) = a2;
  *(this + 13) = a3;
  *(this + 38) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 74) = 1;
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 22) = xmmword_183E20F30;
  *(this + 23) = xmmword_183E20F40;
  *(this + 96) = 0;
  *(this + 49) = 0x3FE0000000000000;
  *(this + 50) = 0x4010000000000000;
  *(this + 51) = 0;
  *(this + 415) = 0;
  *(this + 420) = 0x100000001;
  *(this + 460) = 0;
  *(this + 428) = 0u;
  *(this + 444) = 0u;
  *(this + 116) = 1065353216;
  *(this + 476) = 0;
  *(this + 468) = 0;
  *(this + 121) = -1;
  *(this + 244) = 0;
  *(this + 490) = 0;
  *(this + 65) = 0;
  *(this + 63) = 0;
  *(this + 64) = 0;
  pthread_mutex_init((this + 528), 0);
  *(this + 74) = this + 624;
  *(this + 75) = this + 624;
  *(this + 76) = this + 624;
  *(this + 77) = 5;
  *(this + 826) = 1;
  CFRetain(*(this + 13));
  pthread_mutex_init((this + 24), 0);
  CA::Render::add_observer(1u, 0, CA::WindowServer::Server::context_created, this, 0);
  CA::Render::add_observer(0xCu, 0, CA::WindowServer::Server::ping_server, this, 0);
  CA::Render::add_observer(0x13u, 0, CA::WindowServer::Server::render_display, this, 0);
  CA::Render::add_observer(0x14u, 0, CA::WindowServer::Server::render_display_layer, this, 0);
  CA::Render::add_observer(0x15u, 0, CA::WindowServer::Server::render_display_context_list, this, 0);
  CA::Render::add_observer(0x1Au, 0, CA::WindowServer::Server::get_displays, this, 0);
  CA::Render::add_observer(0x1Bu, 0, CA::WindowServer::Server::get_display_info, this, 0);
  CA::Render::add_observer(0x1Cu, 0, CA::WindowServer::Server::get_display_edr_state, this, 0);
  CA::Render::add_observer(0x1Du, 0, CA::WindowServer::Server::get_display_logical_bounds, this, 0);
  CA::Render::add_observer(0x1Eu, 0, CA::WindowServer::Server::get_display_auto_luminance_boost, this, 0);
  CA::Render::add_observer(0x20u, 0, CA::WindowServer::Server::set_display_properties, this, 0);
  CA::Render::add_observer(0x21u, 0, CA::WindowServer::Server::set_display_preset_properties, this, 0);
  CA::Render::add_observer(0x23u, 0, CA::WindowServer::Server::set_display_latency, this, 0);
  CA::Render::add_observer(0x22u, 0, CA::WindowServer::Server::set_display_user_prefs, this, 0);
  CA::Render::add_observer(0x2Eu, 0, CA::WindowServer::Server::display_changed, this, 0);
  CA::Render::add_observer(0x26u, 0, CA::WindowServer::Server::purge_server, this, 0);
  CA::Render::add_observer(0x27u, 0, CA::WindowServer::Server::set_ax_matrix, this, 0);
  CA::Render::add_observer(0x2Fu, 0, CA::WindowServer::Server::get_debug_log, this, 0);
  CA::Render::add_observer(0x28u, 0, CA::WindowServer::Server::get_update_histograms, this, 0);
  CA::Render::add_observer(0x2Cu, 0, CA::WindowServer::Server::get_performance_info, this, 0);
  if ((*(a2 + 160) & 0x40) != 0)
  {
    CA::Render::add_observer(0xDu, 0, CA::WindowServer::Server::flipbook_render, this, 0);
    CA::Render::add_observer(0xEu, 0, CA::WindowServer::Server::flipbook_query_frame, this, 0);
    CA::Render::add_observer(0xFu, 0, CA::WindowServer::Server::flipbook_query_memory_usage, this, 0);
    CA::Render::add_observer(0x10u, 0, CA::WindowServer::Server::flipbook_copy_current_frame, this, 0);
    CA::Render::add_observer(0x11u, 0, CA::WindowServer::Server::flipbook_cancel, this, 0);
    CA::Render::add_observer(0x12u, 0, CA::WindowServer::Server::flipbook_modify, this, 0);
  }

  CA::Render::add_observer(0x33u, 0, CA::WindowServer::Server::get_surface_replaceability, this, 0);
  CA::Render::add_observer(0x3Eu, 0, CA::WindowServer::Server::content_stream_state_changed, this, 0);
  CA::Render::add_observer(0x3Fu, 0, CA::WindowServer::Server::content_stream_modified, this, 0);
  CA::Render::add_observer(0x40u, 0, CA::WindowServer::Server::get_display_state_shmem, this, 0);
  CA::Render::add_observer(0x41u, 0, CA::WindowServer::Server::set_display_state, this, 0);
  CA::Render::add_observer(0x42u, 0, CA::WindowServer::Server::set_display_cloning_state, this, 0);
  CA::Render::add_observer(0x48u, 0, CA::WindowServer::Server::disable_automatic_wireless_display_state_control, this, 0);
  v5 = *(*(this + 12) + 672);
  if ((v5 & 0x1C00) != 0)
  {
    CA::Render::add_observer(0x3Bu, 0, CA::WindowServer::Server::get_active_display_count, this, 0);
    v5 = *(*(this + 12) + 672);
  }

  if ((v5 & 0x1C00) == 0)
  {
    CA::Render::add_observer(0x46u, 0, CA::WindowServer::Server::debug_display_state_old_interface, this, 0);
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, this, CA::WindowServer::Server::debug_changed, @"kCADebugOptionsDidChange", 0, CFNotificationSuspensionBehaviorCoalesce);
  if (CADeviceNeedsISPWorkaround::once[0] != -1)
  {
    dispatch_once(CADeviceNeedsISPWorkaround::once, &__block_literal_global_116);
  }

  if (CADeviceNeedsISPWorkaround::isp_workaround == 1)
  {
    v7 = &dword_1EA84F450;
    v8 = 32;
    do
    {
      CStringPtr = CFStringGetCStringPtr(*(v7 - 1), 0);
      *(v7 + 4) = notify_register_check(CStringPtr, v7) == 0;
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, this, CA::WindowServer::Server::isp_state_changed, *(v7 - 1), 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v7 += 4;
      v8 -= 16;
    }

    while (v8);
  }

  if (CA::WindowServer::Server::supports_throttle(this))
  {
    out_token = 0;
    v11 = *MEMORY[0x1E69E98C0];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = ___ZN2CA12WindowServer6ServerC2EPNS0_7DisplayEPK10__CFString_block_invoke;
    handler[3] = &__block_descriptor_tmp_31_17502;
    handler[4] = this;
    v12 = notify_register_dispatch(v11, &out_token, MEMORY[0x1E69E96A0], handler);
    if (v12)
    {
      v13 = v12;
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v14 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v23 = v13;
        _os_log_error_impl(&dword_183AA6000, v14, OS_LOG_TYPE_ERROR, "Failed to register for thermal pressure notification: 0x%x", buf, 8u);
      }
    }

    else
    {
      CA::WindowServer::Server::thermal_pressure_level_changed(this, out_token);
    }
  }

  if (CADeviceSupportsAndromeda::once != -1)
  {
    dispatch_once(&CADeviceSupportsAndromeda::once, &__block_literal_global_95);
  }

  if (CADeviceSupportsAndromeda::supports_andromeda == 1 && (*(*(this + 12) + 672) & 0x1C00) == 0)
  {
    out_token = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 0x40000000;
    v19[2] = ___ZN2CA12WindowServer6ServerC2EPNS0_7DisplayEPK10__CFString_block_invoke_33;
    v19[3] = &__block_descriptor_tmp_34_17504;
    v19[4] = this;
    v15 = notify_register_dispatch("com.apple.iokit.hid.displayStatus", &out_token, MEMORY[0x1E69E96A0], v19);
    if (v15)
    {
      v16 = v15;
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v17 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v23 = v16;
        _os_log_error_impl(&dword_183AA6000, v17, OS_LOG_TYPE_ERROR, "Failed to register for display state notification: 0x%x", buf, 8u);
      }
    }
  }

  if ((*(*a2 + 504))(a2))
  {
    CA::WindowServer::Server::create_blank_context(this);
  }

  return this;
}

void CA::WindowServer::Server::thermal_pressure_level_changed(CA::WindowServer::Server *this, int token)
{
  v7 = *MEMORY[0x1E69E9840];
  state64 = 0;
  if (!notify_get_state(token, &state64))
  {
    *(this + 828) = state64 > 0x1D;
    atomic_store(1u, this + 488);
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v3 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v6 = state64;
      _os_log_impl(&dword_183AA6000, v3, OS_LOG_TYPE_DEFAULT, "ThermalPressureLevel=%llu", buf, 0xCu);
    }
  }
}

uint64_t ___ZN2CA12WindowServer6ServerC2EPNS0_7DisplayEPK10__CFString_block_invoke_33(uint64_t a1, int token)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v7[0] = 0;
  result = notify_get_state(token, v7);
  if (!result && (BYTE5(xmmword_1ED4E988C) & 1) == 0)
  {
    v4 = v7[0];
    v5 = v7[0] == 0;
    pthread_mutex_lock((v2 + 24));
    v6 = *(v2 + 96);
    *(v6 + 904) = *(v6 + 904) & 0xFFF7FFFF | (v5 << 19);
    if (v4)
    {
      *(v6 + 712) = 0u;
    }

    return pthread_mutex_unlock((v2 + 24));
  }

  return result;
}

void CA::WindowServer::Server::isp_state_changed(CA::WindowServer::Server *this, __CFNotificationCenter *a2, CFTypeRef cf1, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = &dword_1EA84F450;
  state64 = 0;
  v9 = 32;
  do
  {
    if (CFEqual(cf1, *(v8 - 1)))
    {
      if (notify_get_state(*v8, &state64))
      {
        if (x_log_get_windowserver(void)::once != -1)
        {
          dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
        }

        v10 = x_log_get_windowserver(void)::log;
        if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_183AA6000, v10, OS_LOG_TYPE_ERROR, "Failed to get camera state.", buf, 2u);
        }
      }

      else
      {
        v11 = state64 == 1;
        pthread_mutex_lock((a2 + 24));
        *(a2 + 834) = v11;
        pthread_mutex_unlock((a2 + 24));
      }
    }

    v8 += 4;
    v9 -= 16;
  }

  while (v9);
  if ((*(*(a2 + 12) + 672) & 0x1C00) == 0x400)
  {
    CA::WindowServer::Server::set_allows_display_compositing(a2, state64 == 0);
  }
}

uint64_t CA::WindowServer::Server::set_allows_display_compositing(CA::WindowServer::Server *this, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((this + 24));
  if (*(this + 826) != a2)
  {
    *(this + 826) = a2;
    CA::WindowServer::Server::invalidate(this, *(*(this + 12) + 216));
    v5 = 0;
    v6 = vdupq_n_s64(0x400000uLL);
    (*(*this + 176))(this, &v5, 0.0);
  }

  return pthread_mutex_unlock((this + 24));
}

uint64_t CA::WindowServer::Server::debug_changed(CA::WindowServer::Server *this, __CFNotificationCenter *a2, void *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  v10 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a2 + 24));
  *(a2 + 832) = 1;
  CA::WindowServer::Server::invalidate(a2, *(*(a2 + 12) + 216));
  v8 = 0;
  v9 = vdupq_n_s64(0x2000000000000000uLL);
  (*(*a2 + 176))(a2, &v8, 0.0);
  return pthread_mutex_unlock((a2 + 24));
}

void CA::WindowServer::Server::debug_display_state_old_interface(CA::WindowServer::Server *this, CA::Render::Object *a2, unsigned __int8 *a3, void *a4)
{
  v4 = *a3;
  if (v4 > 7)
  {
    switch(v4)
    {
      case 8u:
        CA::WindowServer::Server::set_flipbook_enabled(a2, 0);
        break;
      case 9u:
        CA::WindowServer::Server::set_flipbook_suppressed(a2, 1);
        break;
      case 0xAu:
        CA::WindowServer::Server::set_flipbook_suppressed(a2, 0);
        break;
    }
  }

  else
  {
    switch(v4)
    {
      case 5u:
        CA::WindowServer::Server::set_blanked(a2, 1);
        break;
      case 6u:
        CA::WindowServer::Server::set_blanked(a2, 0);
        break;
      case 7u:
        CA::WindowServer::Server::set_flipbook_enabled(a2, 1);
        break;
    }
  }
}

uint64_t CA::WindowServer::Server::set_blanked(CA::WindowServer::Server *this, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  if (x_log_get_display_state(void)::once != -1)
  {
    dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
  }

  v4 = x_log_get_display_state(void)::log;
  if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(this + 12) + 24);
    v8[0] = 67109376;
    v8[1] = a2;
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "set_blanked (%i) display_id=%u", v8, 0xEu);
  }

  if (a2)
  {
    v6 = 5;
  }

  else
  {
    v6 = 6;
  }

  return CA::WindowServer::Server::set_display_state(this, v6, 0, 0);
}

uint64_t CA::WindowServer::Server::set_flipbook_enabled(CA::WindowServer::Server *this, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (x_log_get_flipbook(void)::once != -1)
  {
    dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
  }

  v4 = x_log_get_flipbook(void)::log;
  if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "set_flipbook_enabled (%d)", v7, 8u);
  }

  if (a2)
  {
    v5 = 7;
  }

  else
  {
    v5 = 8;
  }

  return CA::WindowServer::Server::set_display_state(this, v5, 0, 0);
}

uint64_t CA::WindowServer::Server::set_flipbook_suppressed(CA::WindowServer::Server *this, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (x_log_get_flipbook(void)::once != -1)
  {
    dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
  }

  v4 = x_log_get_flipbook(void)::log;
  if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "set_flipbook_suppressed (%d)", v7, 8u);
  }

  if (a2)
  {
    v5 = 9;
  }

  else
  {
    v5 = 10;
  }

  return CA::WindowServer::Server::set_display_state(this, v5, 0, 0);
}

void CA::WindowServer::Server::set_display_preset_properties(CA::WindowServer::Server *this, CA::Render::Object *a2, char *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3[4];
  v6 = *(a3 + 10);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  v11 = ___ZN2CA12WindowServer6Server29set_display_preset_propertiesEPNS_6Render6ObjectEPvS5__block_invoke;
  v12 = &__block_descriptor_tmp_93_17521;
  v17 = v5;
  v7 = *(a3 + 24);
  v13 = *(a3 + 8);
  v14 = v7;
  v15 = a2;
  v16 = v6;
  if (*a3 == *(*(a2 + 12) + 24) && !mach_port_mod_refs(*MEMORY[0x1E69E9A60], v6, 0, 1))
  {
    v8 = (*(*a2 + 424))(a2);
    if (v8)
    {
      v9 = v8;
      CFRunLoopPerformBlock(v8, *MEMORY[0x1E695E8E0], block);
      CFRunLoopWakeUp(v9);
    }

    else
    {
      v11(block);
    }
  }
}

uint64_t ___ZN2CA12WindowServer6Server29set_display_preset_propertiesEPNS_6Render6ObjectEPvS5__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 76) != 0;
  v3 = *(a1 + 64);
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  *(v3[12] + 904) |= 0x2000u;
  *&msg.msgh_bits = 0;
  *&msg.msgh_remote_port = vdupq_n_s64(0x8000000000uLL);
  (*(*v3 + 176))(v3, &msg, 0.0);
  v4 = v3[12];
  LOBYTE(msg.msgh_bits) = v2;
  *(&msg.msgh_bits + 1) = 0;
  msg.msgh_size = 0;
  *&msg.msgh_remote_port = v8;
  v10 = v7;
  v5 = (*(*v4 + 1400))();
  if (v5 && *(a1 + 76) && MEMORY[0x1EEE86518] && (*(*(*(a1 + 64) + 96) + 904) & 0x20000) == 0)
  {
    analytics_send_event_lazy();
  }

  *&msg.msgh_voucher_port = 0;
  *&msg.msgh_bits = 0x1C00000013;
  *&msg.msgh_remote_port = *(a1 + 72);
  msg.msgh_id = v5;
  LODWORD(v10) = 0;
  if ((mach_msg(&msg, 1, 0x1Cu, 0, 0, 0, 0) - 268435459) <= 1)
  {
    mach_msg_destroy(&msg);
  }

  return mach_port_deallocate(*MEMORY[0x1E69E9A60], *(a1 + 72));
}

xpc_object_t ___ZN2CA12WindowServer6Server29set_display_preset_propertiesEPNS_6Render6ObjectEPvS5__block_invoke_2(double *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  *__str = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  snprintf(__str, 6uLL, "%4.2f", a1[4]);
  xpc_dictionary_set_string(v2, "x_delta", __str);
  snprintf(__str, 6uLL, "%4.2f", a1[5]);
  xpc_dictionary_set_string(v2, "y_delta", __str);
  snprintf(__str, 6uLL, "%4.2f", a1[6]);
  xpc_dictionary_set_string(v2, "luminance_scale", __str);
  return v2;
}

uint64_t CA::WindowServer::Server::set_clone_master(CA::WindowServer::Server *this, CA::WindowServer::Server *a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = (*(*(this + 12) + 672) >> 10) & 7;
  if (v6 == 3 || v6 == 2 && *(this + 837) != 1)
  {
    goto LABEL_7;
  }

  if (CADeviceNeedsDisplayStateControlDependencyWorkaround::once != -1)
  {
    dispatch_once(&CADeviceNeedsDisplayStateControlDependencyWorkaround::once, &__block_literal_global_484);
  }

  if (CADeviceNeedsDisplayStateControlDependencyWorkaround::b == 1)
  {
LABEL_7:
    if ((a3 & 0x20) != 0)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    if (a2)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v9 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(this + 12) + 24);
      if ((v8 - 1) > 2u)
      {
        v11 = "off";
      }

      else
      {
        v11 = off_1E6DED7A0[(v8 - 1)];
      }

      v14[0] = 67109378;
      v14[1] = v10;
      v15 = 2080;
      v16 = v11;
      _os_log_impl(&dword_183AA6000, v9, OS_LOG_TYPE_DEFAULT, "Display %u automatically set to cloning state %s by set_clone_master", v14, 0x12u);
    }

    CA::WindowServer::Server::set_display_cloning_state(this, v8, 0, 0);
  }

  pthread_mutex_lock((this + 24));
  v12 = *(this + 12);
  *(v12 + 48) = a2;
  *(v12 + 56) = a3;
  (*(*v12 + 664))();
  (*(**(this + 12) + 360))();
  (*(**(this + 12) + 248))(*(this + 12));
  if (a2)
  {
    (*(*this + 432))(this);
  }

  return pthread_mutex_unlock((this + 24));
}

uint64_t CA::WindowServer::Server::clones(CA::WindowServer::Server *this, uint64_t a2)
{
  pthread_mutex_lock((a2 + 24));
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  v15 = a2;
  v4 = *(*(a2 + 96) + 40);
  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = *v4;
      v7 = *(this + 2);
      if (v5 >= v7)
      {
        v8 = *this;
        v9 = v5 - *this;
        v10 = (v9 >> 3) + 1;
        if (v10 >> 61)
        {
          std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
        }

        v11 = v7 - v8;
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

        v13 = (8 * (v9 >> 3));
        *v13 = v6;
        v5 = v13 + 1;
        memcpy(0, v8, v9);
        *this = 0;
        *(this + 2) = 0;
        if (v8)
        {
          operator delete(v8);
        }
      }

      else
      {
        *v5++ = v6;
      }

      *(this + 1) = v5;
      v4 = v4[1];
    }

    while (v4);
  }

  return pthread_mutex_unlock((v15 + 24));
}

void CA::WindowServer::Server::remove_clone(CA::WindowServer::Server *this, CA::WindowServer::Server *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((this + 24));
  if (*(*(a2 + 12) + 48) == this)
  {
    CA::WindowServer::Server::clear_replay_contexts(a2);
    v4 = *(this + 12);
    v5 = *(v4 + 40);
    x_list_remove(v5, a2);
    *(v4 + 40) = v5;
    pthread_mutex_unlock((this + 24));
    CA::WindowServer::Server::set_clone_master(a2, 0, 0);
    v9 = vdupq_n_s64(0x80000uLL);
    *buf = 0;
    v11 = v9;
    (*(*this + 176))(this, buf, 0.0);
    *buf = 0;
    v11 = v9;
    (*(*a2 + 176))(a2, buf, 0.0);
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v6 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(this + 12) + 24);
      v8 = *(*(a2 + 12) + 24);
      *buf = 67109376;
      *&buf[4] = v7;
      v11.i16[0] = 1024;
      *(v11.i32 + 2) = v8;
      _os_log_impl(&dword_183AA6000, v6, OS_LOG_TYPE_DEFAULT, "Display %u remove clone %u", buf, 0xEu);
    }
  }

  else
  {

    pthread_mutex_unlock((this + 24));
  }
}

void CA::WindowServer::Server::clear_replay_contexts(CA::WindowServer::Server *this)
{
  v2 = *(this + 17);
  v1 = *(this + 18);
  v3 = (this + 136);
  if (v1)
  {
    v5 = 0;
    for (i = 0; i < v1; ++i)
    {
      v7 = *&v2[v5];
      if (v7)
      {
        if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v7 + 16))(v7);
        }

        v2 = *(this + 17);
        v1 = *(this + 18);
        *&v2[v5] = 0;
      }

      v5 += 16;
    }
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  malloc_zone_free(malloc_zone, v2);
  *v3 = 0;
  v3[1] = 0;
}

uint64_t CA::WindowServer::Server::replay_render(CA::WindowServer::Server *this, double a2, CA::WindowServer::Display *a3, BOOL *a4)
{
  v8 = MEMORY[0x1EEE9AC00](this);
  v87[1024] = *MEMORY[0x1E69E9840];
  if ((*(*(v4 + 96) + 905) & 8) != 0)
  {
    return 0;
  }

  v9 = v7;
  v10 = v6;
  v11 = v5;
  v12 = v8;
  v13 = v4;
  os_unfair_lock_lock((v4 + 16));
  if (*(v13 + 827) == 1)
  {
    v14 = mergesort(*(v13 + 136), *(v13 + 144), 0x10uLL, CA::WindowServer::Server::compare_levels);
    *(v13 + 827) = 0;
  }

  v15 = *(v13 + 144);
  if (v15)
  {
    v16 = 8 * v15;
    if ((8 * v15) > 0x1000)
    {
      v17 = malloc_type_malloc(8 * v15, 0xA1CD8606uLL);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v14);
      v17 = (&v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v17, 8 * v15);
    }

    v20 = 0;
    for (i = 0; i != v15; ++i)
    {
      v22 = *(*(v13 + 136) + v20);
      if (v22)
      {
        v23 = v22 + 2;
        if (!atomic_fetch_add(v22 + 2, 1u))
        {
          v22 = 0;
          atomic_fetch_add(v23, 0xFFFFFFFF);
        }
      }

      v17[i] = v22;
      v20 += 16;
    }

    v19 = v16 > 0x1000;
  }

  else
  {
    v19 = 0;
    v17 = 0;
  }

  os_unfair_lock_unlock((v13 + 16));
  *v10 = v15 != 0;
  if (v15)
  {
    if (!v11[82] || !CA::WindowServer::Display::is_enabled_for_vsync_render(v11) || !CA::WindowServer::Display::is_enabled_for_replay_render_with_mode(*(v13 + 96)))
    {
LABEL_63:
      v18 = 0;
LABEL_64:
      v60 = v17;
      do
      {
        v61 = *v60;
        if (atomic_fetch_add(*v60 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v61 + 16))(v61);
        }

        ++v60;
        --v15;
      }

      while (v15);
      goto LABEL_68;
    }

    if (v9)
    {
      v24 = 5;
    }

    else
    {
      v24 = 4;
    }

    if ((*(**(v13 + 96) + 336))(*(v13 + 96), v24, 0.0, 0.0))
    {
      v18 = 1;
      goto LABEL_64;
    }

    v26 = *(v13 + 96);
    *&v25 = *(v26 + 208);
    v77[0] = *(v26 + 200);
    v77[1] = v25;
    v27 = 0uLL;
    v75 = 0u;
    if ((*(v26 + 56) & 0x40) == 0)
    {
      v74 = v25;
      v28 = CA::Render::Context::root_layer_handle(*v17);
      if (!v28 || (v29 = *(v28 + 2)) == 0)
      {
        v73 = 0;
        v42 = 0;
        v27 = 0uLL;
        goto LABEL_38;
      }

      CA::Render::Layer::frame(&v82, v29, 0);
      if (v83.f64[0] <= v83.f64[1])
      {
        v30 = v83.f64[1];
      }

      else
      {
        v30 = v83.f64[0];
      }

      v31 = 0xC0000000C0000000;
      if (v30 < 1073741820.0)
      {
        v32.f64[0] = NAN;
        v32.f64[1] = NAN;
        v33 = vnegq_f64(v32);
        __asm { FMOV            V3.2D, #0.5 }

        v39 = vaddq_f64(v82, v83);
        v31 = vsub_s32(vmovn_s64(vcvtq_s64_f64(vaddq_f64(vbslq_s8(v33, _Q3, v39), v39))), vmovn_s64(vcvtq_s64_f64(vaddq_f64(vbslq_s8(v33, _Q3, v82), v82))));
      }

      *v40.i8 = v31;
      v40.u64[1] = v31;
      v41.i64[0] = 0;
      v41.i64[1] = v74;
      if (vminv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v40, v41)))))
      {
        v63 = vzip1_s32(*&v74, v31);
        v64.i64[0] = v63.i32[0];
        v64.i64[1] = v63.i32[1];
        v65 = vcvtq_f64_s64(v64);
        v66 = vzip2_s32(*&v74, v31);
        v64.i64[0] = v66.i32[0];
        v64.i64[1] = v66.i32[1];
        v67 = vcvtq_f64_s64(v64);
        v68 = vdivq_f64(vzip1q_s64(v65, v67), vzip2q_s64(v65, v67));
        v74 = *&v68.f64[0];
        if (vmovn_s64(vceqq_f64(v68, vdupq_laneq_s64(v68, 1))).u32[0])
        {
          v70 = vzip1q_s64(0, v68);
          v68.f64[1] = 1.0 / v68.f64[0];
          v75 = v68;
          v73 = 8 * (v68.f64[0] != 1.0);
          v71 = xmmword_183E20E00;
          v72 = xmmword_183E20E60;
          v42 = 1;
        }

        else
        {
          v71 = xmmword_183E20E00;
          v72 = xmmword_183E20E60;
          v68.f64[0] = 0.0;
          v70 = v68;
          v42 = 1;
          __asm { FMOV            V0.2D, #1.0 }

          v75 = _Q0;
          v73 = 16;
        }

        goto LABEL_39;
      }

      v27 = 0uLL;
      v75 = 0u;
    }

    v73 = 0;
    v42 = 0;
LABEL_38:
    v71 = v27;
    v72 = v27;
    v70 = v27;
    v74 = v27;
LABEL_39:
    bzero(&v82, 0x570uLL);
    CA::Render::Update::Update(&v82, v87, 0x2000uLL, v12, 0, 0, 0, 0, v77, *(v13 + 184) | 0x10000);
    if (*&v82.f64[0])
    {
      v44 = (*(**(v13 + 96) + 1592))(*(v13 + 96));
      v45 = 64;
      if (!v44)
      {
        v45 = 0;
      }

      v86 = v86 & 0xFFFFFFFFFFFFFFBFLL | v45;
      v46 = (*(**(v13 + 96) + 1616))();
      v47 = 128;
      if (!v46)
      {
        v47 = 0;
      }

      v48 = 270337;
      if (v9)
      {
        v48 = 270593;
      }

      v86 = v48 | v86 & 0xFFFFFFFFFFFBDE5ELL | (v84 << 13) & 0x100000000 | v47;
      v85 = (*(**(v13 + 96) + 1416))();
      v81[1] = 0;
      v81[0] = 0;
      CA::Render::Fence::BatchWaitLock::BatchWaitLock(v81);
      v49 = v15;
      do
      {
        v50 = v17[v49 - 1];
        pthread_mutex_lock((v50 + 72));
        if (v42 && (v51 = CA::Render::Context::root_layer_handle(v50)) != 0 && *(v51 + 2))
        {
          memset(v76, 0, 128);
          v52 = CA::Render::Context::root_layer_handle(v50);
          if (v52)
          {
            v52 = *(v52 + 2);
          }

          CA::Render::Layer::compute_frame_transform(v52, 0, v76, 0);
          v79[0] = v74;
          v79[1] = 0u;
          memset(&v79[3], 0, 32);
          v79[2] = v70;
          v79[5] = v71;
          v79[6] = 0u;
          v79[7] = v72;
          v79[8] = v75;
          v80 = v73;
          CA::Transform::set(v78, v76, 1);
          CA::Transform::concat_left(v79, v78, v53, v54);
          v55 = CA::Render::Context::root_layer_handle(v50);
          if (v55)
          {
            v56 = *(v55 + 2);
          }

          else
          {
            v56 = 0;
          }

          CA::Render::Update::add_context(&v82, v50, v56, v79);
        }

        else
        {
          CA::Render::Update::add_context(&v82, v50);
        }

        --v49;
        pthread_mutex_unlock((v50 + 72));
      }

      while (v49);
      CA::Render::Fence::BatchWaitLock::invalidate(v81);
      CA::Render::Update::added_all_contexts(&v82, v57, v58);
      CA::Render::Update::invalidate(&v82, (v11 + 21));
      v59 = (*(**(v13 + 96) + 216))(*(v13 + 96));
      if (v59)
      {
        LODWORD(v79[0]) = 3;
        (*(**(v13 + 96) + 400))(*(v13 + 96), &v82);
        (*(*v13 + 472))(v13, &v82, v79);
        (*(**(v13 + 96) + 408))();
      }

      CA::Render::Fence::BatchWaitLock::invalidate(v81);
    }

    CA::Render::Update::~Update(&v82, v43);
    goto LABEL_63;
  }

  v18 = 0;
LABEL_68:
  if (v19)
  {
    free(v17);
  }

  CA::Render::collect(0, v12);
  return v18;
}

uint64_t CA::WindowServer::Server::attach_contexts(CA::WindowServer::Server *this)
{
  result = CA::Render::Context::copy_all_contexts(this);
  if (result)
  {
    v5 = result;
    if (*(result + 16))
    {
      v6 = 0;
      do
      {
        result = CA::WindowServer::Server::context_created(*(v5 + 24 + 8 * v6++), this, v3, v4);
      }

      while (v6 < *(v5 + 16));
    }

    if (atomic_fetch_add((v5 + 8), 0xFFFFFFFF) == 1)
    {
      v7 = *(*v5 + 16);

      return v7(v5);
    }
  }

  return result;
}

uint64_t CA::WindowServer::Server::set_server_thread_policy(CA::WindowServer::Server *this)
{
  v4 = *MEMORY[0x1E69E9840];
  policy_info = 0;
  v1 = MEMORY[0x1865EB350](this);
  thread_policy_set(v1, 1u, &policy_info, 1u);
  if (proc_setthread_cpupercent())
  {
    policy_info = 1;
    thread_policy_set(v1, 1u, &policy_info, 1u);
  }

  return mach_port_deallocate(*MEMORY[0x1E69E9A60], v1);
}

void CA::WindowServer::Server::inhibit_clone_render(CA::WindowServer::Server *this, CA::WindowServer::Surface *a2, CA::Render::Update *a3, CA::WindowServer::Display *a4, double a5)
{
  v5 = MEMORY[0x1EEE9AC00](this);
  v60 = v6;
  v7 = v5;
  v63 = v8;
  v61 = v9;
  v11 = v10;
  v90[1024] = *MEMORY[0x1E69E9840];
  v62 = v12;
  v13 = *(v12 + 368);
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      if ((*(v13 + 28) & 1) == 0)
      {
        v16 = v15 - v14;
        v17 = (v15 - v14) >> 2;
        v18 = v17 + 1;
        if ((v17 + 1) >> 62)
        {
          std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
        }

        if (-v14 >> 1 > v18)
        {
          v18 = -v14 >> 1;
        }

        if (-v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v19 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v18;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v19);
        }

        v20 = (v15 - v14) >> 2;
        v21 = (4 * v17);
        v22 = (4 * v17 - 4 * v20);
        *v21 = *(v13[1] + 16);
        v15 = v21 + 1;
        memcpy(v22, v14, v16);
        if (v14)
        {
          operator delete(v14);
        }

        v14 = v22;
      }

      v13 = *v13;
    }

    while (v13);
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  os_unfair_lock_lock((v11 + 16));
  v24 = v15 - v14;
  if (v15 == v14)
  {
    os_unfair_lock_unlock((v11 + 16));
  }

  else
  {
    v25 = v24 >> 2;
    v26 = 2 * v24;
    if ((2 * v24) > 0x1000)
    {
      v27 = malloc_type_malloc(2 * v24, 0xF9449582uLL);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v23);
      v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v27, v26);
    }

    v28 = v63;
    v29 = 0;
    if (v25 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = v25;
    }

    do
    {
      *&v27[8 * v29] = CA::Render::Context::context_by_id(*(v14 + 4 * v29));
      ++v29;
    }

    while (v30 != v29);
    os_unfair_lock_unlock((v11 + 16));
    v65 = *(v28 + 25);
    bzero(v76, 0x570uLL);
    CA::Render::Update::Update(v76, v90, 0x2000uLL, v7, 0, 0, 0, 0, (v62 + 200), *(v11 + 184));
    if (v76[0])
    {
      v59 = v26;
      v32 = (*(**(v11 + 96) + 1592))(*(v11 + 96));
      v33 = 64;
      if (!v32)
      {
        v33 = 0;
      }

      v89 = v89 & 0xFFFFFFFFFFFFFFBFLL | v33;
      v34 = (*(**(v11 + 96) + 1616))();
      v35 = 128;
      if (!v34)
      {
        v35 = 0;
      }

      v36 = 0x100002001;
      if (v60)
      {
        v36 = 0x100002101;
      }

      v89 = v36 | v89 & 0xFFFFFFFEFFFFDE5ELL | v35;
      v79 = (*(**(v11 + 96) + 1416))();
      v37 = (*(**(v11 + 96) + 1424))();
      v38 = 0x1000000000000;
      if (!v37)
      {
        v38 = 0;
      }

      v89 = v89 & 0xFFFEFFFFFFFFFFFFLL | v38;
      if (((*(**(v11 + 96) + 720))() & 1) != 0 || (*(**(v11 + 96) + 736))(*(v11 + 96)))
      {
        v39 = *(v11 + 96);
        *(v39 + 736) = *(v63 + 184);
        v75 = 0;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        CA::WindowServer::Display::display_attributes(v66, v63);
        v64 = *(*(v11 + 96) + 656);
        is_hdr = CA::WindowServer::Display::Mode::is_hdr(&v64);
        v41 = v39;
        v28 = v63;
        CA::WindowServer::Display::recording_display_attributes(&v67, v41, v66, is_hdr, 0);
        CA::Render::Update::set_display_attributes(v80, &v67);
        v42 = 1;
      }

      else
      {
        CA::Render::Update::set_display_attributes(v80, v62 + 384);
        v42 = 0;
      }

      v82 = *(v62 + 520);
      v43 = *(v28 + 219);
      v44 = __sincosf_stret(*(v28 + 218));
      cosval = v44.__cosval;
      sinval = v44.__sinval;
      v87 = v43;
      v88 = v28[110];
      v89 |= 0x800000000000uLL;
      v66[0] = 0;
      v66[1] = 0;
      CA::Render::Fence::BatchWaitLock::BatchWaitLock(v66);
      do
      {
        v45 = *&v27[8 * v25 - 8];
        if (v45)
        {
          pthread_mutex_lock((v45 + 72));
          CA::Render::Update::add_context(v76, v45);
          pthread_mutex_unlock((v45 + 72));
        }

        --v25;
      }

      while (v25);
      CA::Render::Fence::BatchWaitLock::invalidate(v66);
      CA::Render::Update::added_all_contexts(v76, v46, v47);
      v68 = 0u;
      v69 = 0u;
      v67 = 0u;
      CA::Shape::operator=(&v67, &v65);
      CA::shape_union(&v77, &v67, v48);
      v53 = v61;
      if (v42)
      {
        v54 = v83;
        if ((v78 & 0x180) != 0 && v83 <= v84)
        {
          v54 = v84;
        }

        v50.n128_f32[0] = v81;
        v51.n128_u32[0] = 10.0;
        v52.n128_u32[0] = 1.0;
        if (v54 >= 1.0)
        {
          v55 = v54;
        }

        else
        {
          v55 = 1.0;
        }

        if (v54 > 10.0)
        {
          v55 = 10.0;
        }

        if (v81 >= 1.0)
        {
          v56 = v81;
        }

        else
        {
          v56 = 1.0;
        }

        if (v54 >= 1.0)
        {
          v52.n128_f32[0] = v54;
        }

        if (v81 >= v54)
        {
          v49.n128_f32[0] = v52.n128_f32[0];
        }

        else
        {
          v49.n128_f32[0] = v56;
        }

        if (v81 >= 10.0)
        {
          v49.n128_f32[0] = v55;
        }

        (*(*v61 + 224))(v61, 0, v49, v50, v51, v52);
      }

      (*(*v11 + 480))(v11, v76, v53, &v65, 1, 0);
      (*(**(v11 + 96) + 1608))();
      CA::Render::Fence::BatchWaitLock::invalidate(v66);
      v26 = v59;
    }

    CA::Render::Update::~Update(v76, v31);
    for (i = 0; i != v30; ++i)
    {
      v58 = *&v27[8 * i];
      if (v58 && atomic_fetch_add(v58 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v58 + 16))(v58);
      }
    }

    if (v26 > 0x1000)
    {
      free(v27);
    }
  }

  CA::Render::collect(0, v7);
  if (v14)
  {
    operator delete(v14);
  }
}

uint64_t CA::WindowServer::Server::set_irdc_hint(CA::WindowServer::Server *this)
{
  v6 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((this + 24));
  (*(**(this + 12) + 1360))(*(this + 12));
  if (xmmword_1ED4E988C == 1)
  {
    if (x_log_get_CADebug(void)::once != -1)
    {
      dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
    }

    v3 = x_log_get_CADebug(void)::log;
    if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v4) = 0;
      _os_log_impl(&dword_183AA6000, v3, OS_LOG_TYPE_DEFAULT, "kUpdateReasonDisplayBrightness set_irdc_hint", &v4, 2u);
    }
  }

  v4 = 0;
  v5 = vdupq_n_s64(8uLL);
  (*(*this + 176))(this, &v4, 0.0);
  return pthread_mutex_unlock((this + 24));
}

void CA::WindowServer::Server::update_display_modes_locked(CA::WindowServer::Server *this)
{
  (*(**(this + 12) + 824))(*(this + 12));
  v2 = *(*(this + 12) + 48);
  if (v2)
  {

    CA::WindowServer::Server::schedule_forced_render_update(v2, 0x1000000000);
  }
}

void CA::WindowServer::Server::schedule_forced_render_update(uint64_t a1, uint64_t a2)
{
  block[6] = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 424))(a1);
  if (v4)
  {
    v5 = v4;
    v6 = *MEMORY[0x1E695E8E0];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CA12WindowServer6Server29schedule_forced_render_updateENS_6Render12UpdateReasonE_block_invoke;
    block[3] = &__block_descriptor_tmp_186;
    block[4] = a1;
    block[5] = a2;
    CFRunLoopPerformBlock(v4, v6, block);
    CFRunLoopWakeUp(v5);
  }
}

uint64_t ___ZN2CA12WindowServer6Server29schedule_forced_render_updateENS_6Render12UpdateReasonE_block_invoke(uint64_t a1)
{
  v4[3] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  *(v1[12] + 904) |= 0x2000u;
  v2 = *(a1 + 40);
  v4[0] = 0;
  v4[1] = v2;
  v4[2] = v2;
  return (*(*v1 + 176))(v1, v4, 0.0);
}

void CA::WindowServer::Server::set_frame_info_callback(uint64_t a1, const void *a2)
{
  os_unfair_lock_lock((a1 + 328));
  v4 = *(a1 + 8);
  if (v4)
  {
    _Block_release(v4);
    *(a1 + 8) = 0;
  }

  if (a2)
  {
    *(a1 + 8) = _Block_copy(a2);
  }

  os_unfair_lock_unlock((a1 + 328));
}

void CA::WindowServer::Server::set_brightness_callback(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 232);
  if (v4)
  {
    _Block_release(v4);
    *(a1 + 232) = 0;
  }

  if (aBlock)
  {
    *(a1 + 232) = _Block_copy(aBlock);
  }
}

void CA::WindowServer::Server::post_brightness_notification(CA::WindowServer::Server *this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(this + 29))
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v2 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(this + 12) + 24);
      v6 = 67109120;
      v7 = v3;
      _os_log_impl(&dword_183AA6000, v2, OS_LOG_TYPE_DEFAULT, "Display %u posting brightness notification", &v6, 8u);
    }

    (*(*(this + 29) + 16))();
  }

  else
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v4 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(this + 12) + 24);
      v6 = 67109120;
      v7 = v5;
      _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "Display %u, no brightness handler registered", &v6, 8u);
    }
  }
}

uint64_t CA::WindowServer::Server::retain_context(os_unfair_lock_s *this, int a2)
{
  os_unfair_lock_lock(this + 4);
  v4 = *&this[32]._os_unfair_lock_opaque;
  if (v4)
  {
    v5 = *&this[28]._os_unfair_lock_opaque;
    while (1)
    {
      v6 = *v5;
      if (*(*v5 + 16) == a2)
      {
        break;
      }

      v5 += 2;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    v7 = (v6 + 8);
    if (!atomic_fetch_add((v6 + 8), 1u))
    {
      v6 = 0;
      atomic_fetch_add(v7, 0xFFFFFFFF);
    }
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

  os_unfair_lock_unlock(this + 4);
  return v6;
}

uint64_t CA::CG::StrokeState::StrokeState(uint64_t a1)
{
  CGGStateGetStrokeParameters();
  if (*(a1 + 16))
  {
    CGDashRetain();
  }

  if (*(a1 + 8) == 0.0)
  {
    v2 = *a1;
  }

  else
  {
    CTM = CGGStateGetCTM();
    v2 = fmax(*(a1 + 8) / sqrt(fmax(vaddvq_f64(vmulq_f64(*CTM, *CTM)), vaddvq_f64(vmulq_f64(CTM[1], CTM[1])))), *a1);
  }

  *(a1 + 8) = v2;
  return a1;
}

double CA::CG::stroke_radius(uint64_t a1, float64x2_t a2, float64x2_t a3)
{
  v3 = 0.5;
  if (*a1 != *MEMORY[0x1E695F2F0])
  {
    v4 = *(a1 + 8) * 0.5;
    v5 = *(a1 + 24);
    if (v5 < 1.0)
    {
      v5 = 1.0;
    }

    v6 = v5 * v4;
    if (!*(a1 + 36))
    {
      v4 = v6;
    }

    if (*(a1 + 32) == 2)
    {
      v4 = v4 * 1.41421356;
    }

    *&v3 = *&vmulq_n_f64(vaddq_f64(vbslq_s8(vcgezq_f64(a3), a3, vnegq_f64(a3)), vbslq_s8(vcgezq_f64(a2), a2, vnegq_f64(a2))), v4);
  }

  return v3;
}

uint64_t CA::CG::create_stroked_path(const CGPath *a1, _OWORD *a2, uint64_t a3, char a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1 || CGPathIsEmpty(a1))
  {
    return 0;
  }

  v14 = 0;
  v15 = 0;
  DashedPath = a1;
  if (*(a3 + 16))
  {
    DashedPath = a1;
    if (CGDashGetPattern())
    {
      DashedPath = CGPathCreateDashedPath();
    }
  }

  if (*a3 != *MEMORY[0x1E695F2F0] && (a4 & 1) == 0)
  {
    v11 = a2[1];
    v13[0] = *a2;
    v13[1] = v11;
    v13[2] = a2[2];
    CA::Mat2Impl::mat2_get_scale_2d(v13, v8);
  }

  StrokedPath = CGPathCreateStrokedPath();
  if (DashedPath != a1)
  {
    CGPathRelease(DashedPath);
  }

  return StrokedPath;
}

double CA::Render::MeshTransform::distance_to(CA::Render::MeshTransform *this, const CA::Render::Object *a2)
{
  v2 = *(this + 3);
  v3 = (*(this + 4) - v2) >> 5;
  v4 = *(a2 + 3);
  if (v3 >= (*(a2 + 4) - v4) >> 5)
  {
    v3 = (*(a2 + 4) - v4) >> 5;
  }

  if (!v3)
  {
    return 0.0;
  }

  v5 = (v2 + 20);
  v6 = (v4 + 20);
  result = 0.0;
  do
  {
    v8 = *(v6 - 1) - v5[-1].f32[1];
    v9 = *v6;
    v6 += 8;
    v10 = v9;
    v11 = *v5;
    v5 += 4;
    v12 = vsub_f32(v10, v11);
    v13 = vmul_f32(v12, v12);
    v14 = sqrtf((v13.f32[0] + (v8 * v8)) + v13.f32[1]);
    if (result <= v14)
    {
      result = v14;
    }

    --v3;
  }

  while (v3);
  return result;
}

_DWORD *CA::Render::MeshTransform::mix@<X0>(atomic_uint *this@<X0>, atomic_uint *a2@<X1>, atomic_uint *a3@<X2>, atomic_uint *a4@<X3>, const CA::Render::ValueInterpolator *a5@<X4>, void *a6@<X8>)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_malloc(malloc_zone, 0xA8uLL, 0x165299FDuLL);
  if (result)
  {
    result[2] = 1;
    result[3] = 26;
    ++dword_1ED4EAAA0;
    *result = &unk_1EF1F3D70;
    if (a2)
    {
      v13 = a2 + 2;
      if (!atomic_fetch_add(a2 + 2, 1u))
      {
        a2 = 0;
        atomic_fetch_add(v13, 0xFFFFFFFF);
      }
    }

    *(result + 2) = a2;
    if (this)
    {
      v14 = this + 2;
      if (!atomic_fetch_add(this + 2, 1u))
      {
        this = 0;
        atomic_fetch_add(v14, 0xFFFFFFFF);
      }
    }

    *(result + 3) = this;
    if (a3)
    {
      v15 = a3 + 2;
      if (!atomic_fetch_add(a3 + 2, 1u))
      {
        a3 = 0;
        atomic_fetch_add(v15, 0xFFFFFFFF);
      }
    }

    *(result + 4) = a3;
    if (a4)
    {
      v16 = a4 + 2;
      if (!atomic_fetch_add(a4 + 2, 1u))
      {
        a4 = 0;
        atomic_fetch_add(v16, 0xFFFFFFFF);
      }
    }

    *(result + 5) = a4;
    v17 = *a5;
    v18 = *(a5 + 1);
    v19 = *(a5 + 3);
    *(result + 5) = *(a5 + 2);
    *(result + 6) = v19;
    *(result + 3) = v17;
    *(result + 4) = v18;
    v20 = *(a5 + 4);
    v21 = *(a5 + 5);
    v22 = *(a5 + 6);
    *(result + 20) = *(a5 + 14);
    *(result + 8) = v21;
    *(result + 9) = v22;
    *(result + 7) = v20;
  }

  *a6 = result;
  return result;
}

uint64_t CA::Render::MeshTransform::mix@<X0>(atomic_uint *this@<X0>, atomic_uint *a2@<X1>, const CA::Render::ValueInterpolator *a3@<X2>, void *a4@<X8>)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_malloc(malloc_zone, 0xA8uLL, 0x165299FDuLL);
  if (result)
  {
    result = CA::Render::Interpolator::Interpolator(result, this, a2, *a3);
  }

  *a4 = result;
  return result;
}

char *CA::Render::MeshTransform::show(uint64_t a1, X::Stream *a2, int a3, char a4)
{
  result = CA::Render::MeshTransform::validate(a1);
  if (a4)
  {
    if (result)
    {
      CA::Render::MeshTransform::update(a1, 2);
      return X::Stream::printf(a2, "(meshTransform-subdivide-level %d)", *(a1 + 104));
    }
  }

  else
  {
    if (result)
    {
      os_unfair_lock_lock((a1 + 16));
      CA::Render::MeshTransform::update_locked(a1, 2);
      os_unfair_lock_unlock((a1 + 16));
      X::Stream::printf(a2, "(meshTransform");
      v9 = 2 * a3;
      if (*(a1 + 32) != *(a1 + 24))
      {
        v10 = 0;
        v11 = 0;
        do
        {
          X::Stream::printf(a2, "\n%*s", v9 + 2, "");
          v12 = (*(a1 + 24) + v10);
          X::Stream::printf(a2, "(vertex %d (%g %g) (%g %g %g))", v11++, *v12, v12[1], v12[4], v12[5], v12[6]);
          v10 += 32;
        }

        while (v11 < (*(a1 + 32) - *(a1 + 24)) >> 5);
      }

      if (*(a1 + 56) != *(a1 + 48))
      {
        v13 = 0;
        v14 = 0;
        v15 = v9 + 2;
        do
        {
          X::Stream::printf(a2, "\n%*s", v15, "");
          v16 = (*(a1 + 72) + 4 * v13);
          X::Stream::printf(a2, "(face %d (%d %d %d %d) (%g %g %g %g))", v14++, *(*(a1 + 48) + v13), *(*(a1 + 48) + v13 + 4), *(*(a1 + 48) + v13 + 8), *(*(a1 + 48) + v13 + 12), v16[1], v16[5], v16[9], v16[13]);
          v13 += 16;
        }

        while (v14 < (*(a1 + 56) - *(a1 + 48)) >> 4);
      }

      v17 = ")";
    }

    else
    {
      v17 = "(meshTransform [invalid])";
    }

    return X::Stream::printf(a2, v17);
  }

  return result;
}

BOOL CA::Render::MeshTransform::validate(os_unfair_lock_s *this)
{
  os_unfair_lock_opaque = this[3]._os_unfair_lock_opaque;
  if ((os_unfair_lock_opaque & 0x2000) != 0)
  {
    return (os_unfair_lock_opaque >> 12) & 1;
  }

  os_unfair_lock_lock(this + 4);
  v3 = CA::Render::MeshTransform::validate_locked(this);
  os_unfair_lock_unlock(this + 4);
  return v3;
}

void CA::Render::MeshTransform::update(os_unfair_lock_s *this, int a2)
{
  os_unfair_lock_lock(this + 4);
  CA::Render::MeshTransform::update_locked(this, a2);

  os_unfair_lock_unlock(this + 4);
}

void CA::Render::MeshTransform::update_locked(CA::Render::MeshTransform *this, int a2)
{
  v90 = *MEMORY[0x1E69E9840];
  v2 = *(this + 9);
  v3 = *(this + 10);
  v4 = (v3 - v2) >> 4;
  v5 = *(this + 6);
  v6 = *(this + 7);
  if (v4 != (v6 - v5) >> 2)
  {
    return;
  }

  v8 = *(this + 3);
  v9 = a2 & ~(v8 >> 8);
  if (v9)
  {
    v10 = *(this + 3);
    v11 = *(this + 4) - v10;
    if (v11)
    {
      v12 = v11 >> 5;
      if (v12 <= 1)
      {
        v12 = 1;
      }

      v13 = 0x7F0000007FLL;
      v14 = vneg_f32(0x7F0000007FLL);
      v15 = vdupq_n_s64(0xFFF0000000000000);
      v16 = xmmword_183E21220;
      v17 = vdupq_n_s64(0x7FF0000000000000uLL);
      v18 = (v10 + 24);
      do
      {
        v19 = *(v18 - 6);
        v14 = vbsl_s8(vcgt_f32(v19, v14), v14, v19);
        v13 = vbsl_s8(vcgt_f32(v13, v19), v13, v19);
        v20 = vcvtq_f64_f32(*(v18 - 2));
        v21 = *v18;
        v18 += 8;
        v22 = vextq_s8(v20, v20, 8uLL);
        v23.f64[1] = v22.f64[1];
        *&v24.f64[1] = v16.i64[1];
        *&v23.f64[0] = v16.i64[0];
        v24.f64[0] = v21;
        v17 = vbslq_s8(vcgtq_f64(v20, v17), v17, v20);
        v25.i64[1] = *&v22.f64[1];
        *v25.i64 = v21;
        v16 = vbslq_s8(vcgtq_f64(v24, v23), v16, v25);
        v22.f64[1] = v21;
        v15 = vbslq_s8(vcgtq_f64(v15, v22), v15, v22);
        --v12;
      }

      while (v12);
      *(this + 152) = v17;
      *(this + 168) = v16;
      *(this + 184) = v15;
      *(this + 120) = vcvtq_f64_f32(v14);
      *(this + 136) = vcvtq_f64_f32(vsub_f32(v13, v14));
    }

    else
    {
      *(this + 136) = 0u;
      *(this + 120) = 0u;
      *(this + 152) = CA::Volume::null;
      *(this + 168) = unk_183E317B0;
      *(this + 184) = xmmword_183E317C0;
    }

    v8 |= 0x100u;
    *(this + 3) = v8;
  }

  if ((v9 & 8) != 0)
  {
    *(this + 29) = 2139095040;
    if (v3 != v2)
    {
      if (v4 <= 1)
      {
        v4 = 1;
      }

      v26 = (v2 + 4);
      v27 = INFINITY;
      do
      {
        v28 = *v26;
        if (*v26 < v27)
        {
          *(this + 29) = v28;
          v27 = v28;
        }

        v26 += 4;
        --v4;
      }

      while (v4);
    }
  }

  if ((v9 & 2) != 0)
  {
    v88 = 0;
    v89 = 0;
    v87 = &v88;
    *(this + 28) = 0;
    if (v6 == v5)
    {
      v66 = 0;
      goto LABEL_90;
    }

    v83 = v9;
    v29 = 0;
    while (1)
    {
      v30 = 0;
      v31 = 3;
      v84 = v29;
      v85 = v5 + 16 * v29;
      v86 = 4 * v29;
      do
      {
        v32 = *(v85 + 4 * v31);
        v31 = v30;
        v33 = *(v85 + 4 * v30);
        if (v32 >= v33)
        {
          v34 = v33;
        }

        else
        {
          v34 = v32;
        }

        if (v32 <= v33)
        {
          v35 = v33;
        }

        else
        {
          v35 = v32;
        }

        v36 = v88;
        v37 = &v88;
        v38 = v88;
        if (!v88)
        {
LABEL_74:
          operator new();
        }

        do
        {
          v39 = *(v38 + 7);
          v40 = v39 == v34;
          if (v39 >= v34)
          {
            v41 = 1;
          }

          else
          {
            v41 = -1;
          }

          if (v40)
          {
            v42 = *(v38 + 8);
            v43 = v42 == v35;
            v41 = v42 >= v35 ? 1 : -1;
            if (v43)
            {
              v41 = 0;
            }
          }

          v44 = v41 & 0x80;
          v40 = v44 == 0;
          v45 = v44 >> 4;
          if (v40)
          {
            v37 = v38;
          }

          v38 = *(v38 + v45);
        }

        while (v38);
        if (&v88 == v37)
        {
          goto LABEL_102;
        }

        v46 = *(v37 + 7);
        v47 = v34 == v46;
        if (v34 >= v46)
        {
          v48 = 1;
        }

        else
        {
          v48 = -1;
        }

        if (v47)
        {
          v49 = *(v37 + 8);
          v50 = v35 == v49;
          v48 = v35 >= v49 ? 1 : -1;
          if (v50)
          {
            v48 = 0;
          }
        }

        if (v48 < 0)
        {
LABEL_102:
          while (1)
          {
            while (1)
            {
              v57 = v36;
              v58 = *(v36 + 28);
              if (v34 == v58)
              {
                break;
              }

              if (v34 >= v58)
              {
                if (v58 >= v34)
                {
                  v62 = 1;
                }

                else
                {
                  v62 = -1;
                }

                if ((v62 & 0x80) == 0)
                {
                  goto LABEL_75;
                }

                goto LABEL_73;
              }

LABEL_67:
              v36 = *v36;
              if (!*v57)
              {
                goto LABEL_74;
              }
            }

            v59 = *(v36 + 32);
            if (v35 < v59)
            {
              goto LABEL_67;
            }

            v60 = v59 == v35;
            if (v59 >= v35)
            {
              v61 = 1;
            }

            else
            {
              v61 = -1;
            }

            if (v60)
            {
              v61 = 0;
            }

            if ((v61 & 0x80) == 0)
            {
LABEL_75:
              *(v36 + 36) = v86 + v31;
              *(*(this + 9) + ((v86 + v31) << 32 >> 28) + 8) = -1;
              ++*(this + 28);
              goto LABEL_76;
            }

LABEL_73:
            v36 = *(v36 + 8);
            if (!v36)
            {
              goto LABEL_74;
            }
          }
        }

        v51 = *(v37 + 9);
        v52 = *(this + 9);
        v53 = v52 + ((v86 + v31) << 32 >> 28);
        *(v53 + 8) = v51;
        v54 = v52 + 16 * v51;
        *(v54 + 8) = v86 + v31;
        v55 = *(v53 + 4);
        v56 = *(v54 + 4);
        if (v55 <= v56)
        {
          *(v53 + 4) = v56;
        }

        else
        {
          *(v54 + 4) = v55;
        }

        v63 = v37[1];
        v64 = v37;
        if (v63)
        {
          do
          {
            v65 = v63;
            v63 = *v63;
          }

          while (v63);
        }

        else
        {
          do
          {
            v65 = v64[2];
            v40 = *v65 == v64;
            v64 = v65;
          }

          while (!v40);
        }

        if (v87 == v37)
        {
          v87 = v65;
        }

        --v89;
        std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v36, v37);
        operator delete(v37);
LABEL_76:
        v30 = v31 + 1;
      }

      while (v31 != 3);
      v29 = v84 + 1;
      v5 = *(this + 6);
      if (v84 + 1 >= ((*(this + 7) - v5) >> 4))
      {
        v8 = *(this + 3);
        v66 = v88;
        LOBYTE(v9) = v83;
LABEL_90:
        *(this + 3) = v8 | 0x200;
        std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(v66);
        break;
      }
    }
  }

  if ((v9 & 4) != 0)
  {
    v67 = *(this + 6);
    v68 = *(this + 7);
    v69 = v68 - v67;
    if (v68 != v67)
    {
      v70 = 0;
      v71 = v69 >> 4;
      v72 = *(this + 3);
      if (v71 <= 1)
      {
        v71 = 1;
      }

      v73 = *(this + 9) + 12;
      v74 = *(this + 6);
      do
      {
        v75 = 0;
        v76 = v73;
        v77 = 3;
        do
        {
          v78 = v72 + 32 * *(v74 + 4 * v75);
          v79 = v72 + 32 * *(v67 + 16 * v70 + 4 * v77);
          v80 = *(v78 + 16) - *(v79 + 16);
          v81 = vsub_f32(*(v78 + 20), *(v79 + 20));
          v82 = vmul_f32(v81, v81);
          *v76 = sqrtf((v82.f32[0] + (v80 * v80)) + v82.f32[1]);
          v76 += 4;
          v77 = v75++;
        }

        while (v75 != 4);
        ++v70;
        v73 += 64;
        v74 += 16;
      }

      while (v70 != v71);
    }

    *(this + 3) |= 0x400u;
  }
}

BOOL CA::Render::MeshTransform::validate_locked(CA::Render::MeshTransform *this)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = *(this + 3);
  if ((v1 & 0x2000) != 0)
  {
    return (v1 >> 12) & 1;
  }

  *(this + 3) = v1 & 0xFFFFCFFF | 0x2000;
  v3 = *(this + 6);
  v4 = *(this + 7);
  v5 = v4 - v3;
  if ((*(this + 10) - *(this + 9)) >> 4 == (v4 - v3) >> 2)
  {
    if (v4 == v3)
    {
LABEL_10:
      CA::Render::MeshTransform::update_locked(this, 2);
      v9 = *(this + 7) - *(this + 6);
      if (v9)
      {
        v10 = 0;
        v11 = v9 >> 4;
        v12 = *(this + 9);
        v13 = (*(this + 10) - v12) >> 4;
        if (v11 <= 1)
        {
          v11 = 1;
        }

        v14 = v12 + 8;
LABEL_14:
        v15 = 0;
        while (*(v14 + v15) < v13)
        {
          v15 += 16;
          if (v15 == 64)
          {
            ++v10;
            v14 += 64;
            if (v10 != v11)
            {
              goto LABEL_14;
            }

            goto LABEL_18;
          }
        }

        if (x_log_get_render(void)::once[0] != -1)
        {
          dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
        }

        v17 = x_log_get_render(void)::log;
        result = os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR);
        if (result)
        {
          v20 = 0;
          v18 = "invalid mesh transform - paired edge\n";
          v19 = &v20;
          goto LABEL_32;
        }
      }

      else
      {
LABEL_18:
        *(this + 3) |= 0x1000u;
        return 1;
      }
    }

    else
    {
      v6 = 0;
      v7 = v5 >> 4;
      if ((v5 >> 4) <= 1)
      {
        v7 = 1;
      }

LABEL_6:
      v8 = 0;
      while ((*(this + 4) - *(this + 3)) >> 5 > *(v3 + v8))
      {
        v8 += 4;
        if (v8 == 16)
        {
          ++v6;
          v3 += 16;
          if (v6 != v7)
          {
            goto LABEL_6;
          }

          goto LABEL_10;
        }
      }

      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v17 = x_log_get_render(void)::log;
      result = os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v21 = 0;
        v18 = "invalid mesh transform - vertex index\n";
        v19 = &v21;
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v17 = x_log_get_render(void)::log;
    result = os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v22 = 0;
      v18 = "invalid mesh transform - too few edges\n";
      v19 = &v22;
LABEL_32:
      _os_log_error_impl(&dword_183AA6000, v17, OS_LOG_TYPE_ERROR, v18, v19, 2u);
      return 0;
    }
  }

  return result;
}

void *CA::Render::MeshTransform::encode(CA::Render::MeshTransform *this, CA::Render::Encoder *a2)
{
  os_unfair_lock_lock(this + 4);
  CA::Render::MeshTransform::update_locked(this, 3);
  os_unfair_lock_unlock(this + 4);
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
  v9 = (*(this + 4) - *(this + 3)) >> 5;
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
  v13 = (*(this + 7) - *(this + 6)) >> 4;
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
  v17 = *(this + 24);
  if (v14 + 9 > v15)
  {
    CA::Render::Encoder::grow(a2, 1);
    v16 = *(a2 + 4);
  }

  *(a2 + 4) = v16 + 1;
  *v16 = v17;
  v18 = *(this + 25);
  v19 = *(a2 + 4);
  if ((v19 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v19 = *(a2 + 4);
  }

  *v19 = v18;
  v20 = *(a2 + 4);
  v21 = *(a2 + 5);
  v22 = (v20 + 4);
  *(a2 + 4) = v20 + 4;
  v23 = *(this + 26);
  if (v20 + 8 > v21)
  {
    CA::Render::Encoder::grow(a2, 4);
    v22 = *(a2 + 4);
  }

  *v22 = v23;
  v24 = *(a2 + 4);
  v25 = *(a2 + 5);
  v26 = (v24 + 4);
  *(a2 + 4) = v24 + 4;
  v27 = *(this + 108);
  if (v24 + 5 > v25)
  {
    CA::Render::Encoder::grow(a2, 1);
    v26 = *(a2 + 4);
  }

  *(a2 + 4) = v26 + 1;
  *v26 = v27;
  v28 = *(this + 109);
  v29 = *(a2 + 4);
  if ((v29 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 1);
    v29 = *(a2 + 4);
  }

  *(a2 + 4) = v29 + 1;
  *v29 = v28;
  v30 = *(this + 28);
  v31 = *(a2 + 4);
  if ((v31 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v31 = *(a2 + 4);
  }

  *v31 = v30;
  v32 = *(a2 + 4) + 4;
  *(a2 + 4) = v32;
  v33 = *(this + 3);
  if (*(this + 4) != v33)
  {
    v34 = 0;
    v35 = 0;
    do
    {
      if ((v32 + 8) > *(a2 + 5))
      {
        CA::Render::Encoder::grow(a2, 8);
        v32 = *(a2 + 4);
      }

      *v32 = *(v33 + v34);
      v36 = *(a2 + 4);
      v37 = *(a2 + 5);
      v38 = v36 + 8;
      *(a2 + 4) = v36 + 8;
      v39 = *(this + 3);
      if (v36 + 20 > v37)
      {
        CA::Render::Encoder::grow(a2, 12);
        v38 = *(a2 + 4);
      }

      v40 = *(v39 + v34 + 16);
      *(v38 + 8) = *(v39 + v34 + 24);
      *v38 = v40;
      v32 = *(a2 + 4) + 12;
      *(a2 + 4) = v32;
      ++v35;
      v33 = *(this + 3);
      v34 += 32;
    }

    while (v35 < (*(this + 4) - v33) >> 5);
  }

  if (*(this + 7) != *(this + 6))
  {
    v41 = 0;
    v42 = 0;
    do
    {
      v43 = v41;
      v44 = 4;
      do
      {
        v45 = *(*(this + 6) + v43);
        if ((v32 + 4) > *(a2 + 5))
        {
          CA::Render::Encoder::grow(a2, 4);
          v32 = *(a2 + 4);
        }

        *v32 = v45;
        v32 = *(a2 + 4) + 4;
        *(a2 + 4) = v32;
        v43 += 4;
        --v44;
      }

      while (v44);
      ++v42;
      v41 += 16;
    }

    while (v42 < (*(this + 7) - *(this + 6)) >> 4);
  }

  v46 = *(this + 9);
  if (*(this + 10) != v46)
  {
    v47 = 0;
    v48 = 0;
    do
    {
      v49 = *(v46 + v47 + 8);
      if ((v32 + 4) > *(a2 + 5))
      {
        CA::Render::Encoder::grow(a2, 4);
        v32 = *(a2 + 4);
      }

      *v32 = v49;
      v50 = *(a2 + 4);
      v51 = *(a2 + 5);
      v52 = (v50 + 4);
      *(a2 + 4) = v50 + 4;
      v53 = *(*(this + 9) + v47 + 4);
      if (v50 + 8 > v51)
      {
        CA::Render::Encoder::grow(a2, 4);
        v52 = *(a2 + 4);
      }

      *v52 = v53;
      v32 = *(a2 + 4) + 4;
      *(a2 + 4) = v32;
      ++v48;
      v46 = *(this + 9);
      v47 += 16;
    }

    while (v48 < (*(this + 10) - v46) >> 4);
  }

  if ((v32 + 32) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 32);
    v32 = *(a2 + 4);
  }

  v54 = *(this + 136);
  *v32 = *(this + 120);
  *(v32 + 16) = v54;
  v55 = *(a2 + 4);
  v56 = *(a2 + 5);
  v57 = (v55 + 32);
  *(a2 + 4) = v55 + 32;
  if (v55 + 80 > v56)
  {
    CA::Render::Encoder::grow(a2, 48);
    v57 = *(a2 + 4);
  }

  v58 = *(this + 152);
  v59 = *(this + 184);
  v57[1] = *(this + 168);
  v57[2] = v59;
  *v57 = v58;
  *(a2 + 4) += 48;

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void CA::Render::MeshTransform::~MeshTransform(CA::Render::MeshTransform *this, const CA::Render::Object *a2)
{
  *this = &unk_1EF2010D8;
  v3 = *(this + 25);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
  }

  --dword_1ED4EAAC4;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v7 = malloc_zone;

  malloc_zone_free(v7, this);
}

{
  *this = &unk_1EF2010D8;
  v3 = *(this + 25);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
  }

  --dword_1ED4EAAC4;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

CA::Render::MeshTransform *CA::Render::MeshTransform::MeshTransform(CA::Render::MeshTransform *this, unint64_t a2, unint64_t a3, int a4)
{
  *(this + 2) = 1;
  ++dword_1ED4EAAC4;
  *this = &unk_1EF2010D8;
  *(this + 12) = 35;
  *(this + 3) = 0;
  v5 = this + 24;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (a2)
  {
    std::vector<CA::Render::MeshVertex>::__vallocate[abi:nn200100](v5, a2);
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (a3)
  {
    std::vector<CA::Render::MeshFace>::__vallocate[abi:nn200100](this + 48, a3);
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 25) = a4;
  *(this + 26) = 0;
  *(this + 54) = 0;
  *(this + 25) = 0;
  return this;
}

void std::vector<CA::Render::MeshVertex>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Render::MeshVertex>>(a2);
  }

  std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
}

void std::vector<CA::Render::MeshFace>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Render::MeshFace>>(a2);
  }

  std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
}

CA::Render::MeshTransform *CA::Render::MeshTransform::MeshTransform(CA::Render::MeshTransform *this, const CA::Render::MeshTransform *a2)
{
  *(this + 2) = 1;
  ++dword_1ED4EAAC4;
  *this = &unk_1EF2010D8;
  *(this + 3) = 0;
  v3 = this + 24;
  *(this + 12) = 35;
  *(this + 4) = 0;
  *(this + 5) = 0;
  v4 = *(a2 + 3);
  v5 = *(a2 + 4);
  if (v5 != v4)
  {
    std::vector<CA::Render::MeshVertex>::__vallocate[abi:nn200100](v3, (v5 - v4) >> 5);
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v7 = *(a2 + 6);
  v6 = *(a2 + 7);
  if (v6 != v7)
  {
    std::vector<CA::Render::MeshFace>::__vallocate[abi:nn200100](this + 48, (v6 - v7) >> 4);
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v9 = *(a2 + 9);
  v8 = *(a2 + 10);
  if (v8 != v9)
  {
    std::vector<CA::Render::MeshFace>::__vallocate[abi:nn200100](this + 72, (v8 - v9) >> 4);
  }

  *(this + 12) = *(a2 + 12);
  *(this + 26) = *(a2 + 26);
  *(this + 54) = *(a2 + 54);
  *(this + 28) = *(a2 + 28);
  *(this + 120) = *(a2 + 120);
  *(this + 136) = *(a2 + 136);
  v10 = *(a2 + 152);
  v11 = *(a2 + 168);
  *(this + 184) = *(a2 + 184);
  *(this + 168) = v11;
  *(this + 152) = v10;
  *(this + 25) = 0;
  *(this + 3) |= *(a2 + 3) & 0xFFFFFF00;
  return this;
}

CA::Render::MeshTransform *CA::Render::MeshTransform::retain_subdivided_mesh(os_unfair_lock_s *this, int a2)
{
  v3 = this;
  v167 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 4);
  if (!CA::Render::MeshTransform::validate_locked(v3))
  {
    v4 = 0;
LABEL_111:
    os_unfair_lock_unlock(v3 + 4);
    return v4;
  }

  v4 = v3;
  if (*(v3 + 26) == a2 || (v4 = *(v3 + 25)) != 0 && *(v4 + 26) == a2 || (CA::Render::MeshTransform::update_locked(v3, 8), v4 = v3, *(v3 + 29) >= a2))
  {
    v155 = (v4 + 8);
    if (!atomic_fetch_add(v4 + 2, 1u))
    {
      v4 = 0;
      atomic_fetch_add(v155, 0xFFFFFFFF);
    }

    goto LABEL_111;
  }

  os_unfair_lock_unlock(v3 + 4);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v5 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xD0uLL, 0xDEEC3011uLL);
  v4 = v5;
  if (v5)
  {
    v6 = CA::Render::MeshTransform::MeshTransform(v5, v3);
    v157 = v3;
    v7 = *(v3 + 26);
    if (CA::Render::MeshTransform::validate(v6))
    {
      os_unfair_lock_lock(v4 + 4);
      CA::Render::MeshTransform::update_locked(v4, 3);
      os_unfair_lock_unlock(v4 + 4);
      v159 = a2 - v7;
      if (*(v4 + 26) < a2 - v7)
      {
        __asm
        {
          FMOV            V12.2S, #0.75
          FMOV            V2.4S, #0.25
          FMOV            V14.2S, #0.25
        }

        v158 = _Q2;
        while (1)
        {
          v15 = *(v4 + 4);
          v160 = *(v4 + 3);
          v16 = v15 - v160;
          v18 = *(v4 + 6);
          v17 = *(v4 + 7);
          std::vector<CA::Render::MeshVertex>::resize(v4 + 3, *(v4 + 28) + ((v15 - v160) >> 5) + ((v17 - v18) >> 4));
          v19 = (v15 - v160) >> 5;
          v20 = v19;
          v161 = v18;
          v162 = v17;
          v21 = v17 - v18;
          v22 = v21 >> 4;
          if (v21)
          {
            v23 = 0;
            v24 = *(v4 + 6);
            v25 = *(v4 + 3);
            if (v22 <= 1)
            {
              v26 = 1;
            }

            else
            {
              v26 = v21 >> 4;
            }

            v20 = v16 >> 5;
            do
            {
              v27 = 0;
              v28 = v25 + 32 * v20;
              v29 = 0;
              *v28 = 0;
              *(v28 + 16) = xmmword_183E20E40;
              v30 = 0.0;
              v31 = 0;
              do
              {
                v32 = (v25 + 32 * *(v24 + v27));
                v29 = vadd_f32(v29, *v32);
                *v28 = v29;
                v31 = vadd_f32(v31, v32[2]);
                *(v28 + 16) = v31;
                v30 = v30 + v32[3].f32[0];
                *(v28 + 24) = v30;
                v27 += 4;
              }

              while (v27 != 16);
              ++v20;
              *v28 = vmul_f32(v29, _D14);
              *(v28 + 16) = vmul_f32(v31, _D14);
              *(v28 + 24) = v30 * 0.25;
              ++v23;
              v24 += 16;
            }

            while (v23 != v26);
          }

          if (v15 != v160)
          {
            if (v19 < 0x5D1745D1745D175)
            {
              operator new();
            }

            std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
          }

          v33.i64[0] = 0x3F0000003F000000;
          v33.i64[1] = 0x3F0000003F000000;
          if (v162 != v161)
          {
            v34 = 0;
            v35 = *(v4 + 6);
            v36 = *(v4 + 9);
            if (v22 <= 1)
            {
              v37 = 1;
            }

            else
            {
              v37 = v21 >> 4;
            }

            v38 = *(v4 + 9);
            v39 = *(v4 + 6);
            do
            {
              v40 = 0;
              v41 = v38;
              v42 = 3;
              v43 = v35 + 16 * v34;
              do
              {
                v44 = v40;
                v45 = *(v41 + 8);
                if ((v45 & 0x80000000) != 0)
                {
                  v46 = 1;
                }

                else
                {
                  v46 = *(v41 + 4) > 0.5;
                  if (v45 < *(v36 + 16 * v45 + 8))
                  {
                    goto LABEL_39;
                  }
                }

                v47 = 44 * *(v43 + 4 * v42);
                ++*(v47 + 32);
                v48 = 44 * *(v39 + 4 * v44);
                ++*(v48 + 32);
                if (v46)
                {
                  v49 = 44 * *(v43 + 4 * v42);
                  ++*(v49 + 36);
                  v50 = 44 * *(v39 + 4 * v44);
                  ++*(v50 + 36);
                  *v41 = v20;
                  if ((v45 & 0x80000000) == 0)
                  {
                    *(v36 + 16 * v45) = v20;
                  }

                  v51 = *(v4 + 3);
                  v52 = v51 + 32 * v20;
                  *v52 = 0;
                  *(v52 + 16) = xmmword_183E20E40;
                  v53 = v51 + 32 * *(v43 + 4 * v42);
                  v54.i64[0] = *v53;
                  v54.i64[1] = *(v53 + 16);
                  v55 = vmulq_f32(v54, v33);
                  v56 = 0.5;
                  v57 = *(v53 + 24) * 0.5;
                  *v52 = v55.i64[0];
                  *(v52 + 16) = vextq_s8(v55, v55, 8uLL).u64[0];
                  *(v52 + 24) = v57;
                  v58 = (v51 + 32 * *(v39 + 4 * v44));
                }

                else
                {
                  v59 = (v36 + 16 * v45);
                  *v59 = v20;
                  *v41 = v20;
                  v60 = (v59[2] >> 2) + v19;
                  v61 = (v45 >> 2) + v19;
                  v62 = *(v4 + 3);
                  v52 = v62 + 32 * v20;
                  *v52 = 0;
                  *(v52 + 16) = xmmword_183E20E40;
                  v63 = v62 + 32 * *(v43 + 4 * v42);
                  v64.i64[0] = *v63;
                  v65 = *(v63 + 16);
                  v56 = 0.25;
                  v66 = *(v63 + 24) * 0.25;
                  *(v52 + 24) = v66;
                  v67 = v62 + 32 * *(v39 + 4 * v44);
                  v68 = v66 + (*(v67 + 24) * 0.25);
                  *(v52 + 24) = v68;
                  v69 = v62 + 32 * v60;
                  v64.i64[1] = v65;
                  LODWORD(v65) = *(v69 + 24);
                  v70 = vmulq_f32(v64, v158);
                  *v52 = v70.i64[0];
                  *(v52 + 16) = vextq_s8(v70, v70, 8uLL).u64[0];
                  v71.i64[0] = *v67;
                  v71.i64[1] = *(v67 + 16);
                  v72 = vmlaq_f32(v70, v158, v71);
                  *v52 = v72.i64[0];
                  *(v52 + 16) = vextq_s8(v72, v72, 8uLL).u64[0];
                  v71.i64[0] = *v69;
                  v71.i64[1] = *(v69 + 16);
                  v55 = vmlaq_f32(v72, v158, v71);
                  *v52 = v55.i64[0];
                  *(v52 + 16) = vextq_s8(v55, v55, 8uLL).u64[0];
                  v57 = v68 + (*&v65 * 0.25);
                  *(v52 + 24) = v57;
                  v58 = (v62 + 32 * v61);
                }

                v73 = v58[2].f32[0];
                v74 = v58[2].f32[1];
                v75 = v58[3].f32[0];
                *v52 = vmla_n_f32(*v55.i8, *v58, v56);
                *(v52 + 16) = *&v55.i32[2] + (v73 * v56);
                *(v52 + 20) = *&v55.i32[3] + (v74 * v56);
                *(v52 + 24) = v57 + (v75 * v56);
                ++v20;
LABEL_39:
                v40 = v44 + 1;
                v41 += 16;
                v42 = v44;
              }

              while (v44 != 3);
              ++v34;
              v39 += 16;
              v38 += 64;
            }

            while (v34 != v37);
          }

          if (v15 != v160)
          {
            break;
          }

LABEL_54:
          if (v162 != v161)
          {
            v95 = 0;
            v96 = *(v4 + 6);
            if (v22 <= 1)
            {
              v97 = 1;
            }

            else
            {
              v97 = v21 >> 4;
            }

            do
            {
              v98 = 0;
              v99 = 3;
              do
              {
                v100 = *(v96 + 16 * v95 + 4 * v99);
                v99 = v98;
                v101 = (44 * v100);
                if (v101[4].i32[1] <= 1)
                {
                  v102 = *(44 * v100 + 0x28);
                  v103 = (*(v4 + 3) + v16 + 32 * v95);
                  v104 = v103[3].f32[0];
                  v105 = v103[2];
                  *v101 = vmla_n_f32(*v101, *v103, v102);
                  v101[2] = vmla_n_f32(v101[2], v105, v102);
                  v101[3].f32[0] = v101[3].f32[0] + (v104 * v102);
                }

                v98 = v99 + 1;
              }

              while (v99 != 3);
              ++v95;
            }

            while (v95 != v97);
            v106 = 0;
            v107 = *(v4 + 9);
            do
            {
              v108 = 0;
              v109 = v96 + 16 * v106;
              v110 = 3;
              do
              {
                v111 = v108;
                v112 = v107 + (v106 << 6) + 16 * v108;
                v113 = *(v112 + 8);
                if ((v113 & 0x80000000) != 0 || v113 >= *(v107 + 16 * v113 + 8))
                {
                  v114 = *(v109 + 4 * v110);
                  v115 = *(v109 + 4 * v111);
                  v116 = v114;
                  do
                  {
                    v117 = v116;
                    v116 = v115;
                    v118 = *(44 * v117 + 0x24);
                    if (v118 < 2 || v118 == 2 && (*(v112 + 4) <= 0.5 ? (v123 = *(v112 + 8) <= 0) : (v123 = 1), v123))
                    {
                      v119 = *(44 * v117 + 0x28);
                      v120 = (*(v4 + 3) + 32 * v115);
                      v121 = v120[3].f32[0];
                      v122 = v120[2];
                      *(44 * v117) = vmla_n_f32(*(44 * v117), *v120, v119);
                      *(44 * v117 + 0x10) = vmla_n_f32(*(44 * v117 + 0x10), v122, v119);
                      *(44 * v117 + 0x18) = *(44 * v117 + 0x18) + (v121 * v119);
                    }

                    v115 = v114;
                  }

                  while (v117 == v114);
                }

                v108 = v111 + 1;
                v110 = v111;
              }

              while (v111 != 3);
              ++v106;
            }

            while (v106 != v97);
          }

          if (v15 != v160)
          {
            v124 = 0;
            if (v19 <= 1)
            {
              v125 = 1;
            }

            else
            {
              v125 = v16 >> 5;
            }

            v126 = 16;
            do
            {
              v127 = *(v4 + 3) + v124;
              *v127 = *(v126 - 16);
              v128 = *v126;
              *(v127 + 24) = *(v126 + 8);
              *(v127 + 16) = v128;
              *(v127 + 28) = *(v126 + 12);
              v124 += 32;
              v126 += 44;
              --v125;
            }

            while (v125);
            operator delete(0);
          }

          v165 = 0uLL;
          v166 = 0;
          v163 = 0uLL;
          v164 = 0;
          std::vector<CA::Render::MeshFace>::resize(&v165, v21 >> 2);
          std::vector<CA::Render::MeshFace>::resize(&v163, v21);
          *(v4 + 28) = 12 * (v21 >> 4);
          if (v162 != v161)
          {
            v129 = 0;
            v130 = 0;
            v131 = *(v4 + 9);
            v132 = *(v4 + 6);
            if (v22 <= 1)
            {
              v133 = 1;
            }

            else
            {
              v133 = v21 >> 4;
            }

            v134 = (v163 + 36);
            v135 = (v165 + 8);
            v136 = *(v4 + 9);
            do
            {
              v137 = 0;
              v138 = 16 * v130;
              v139 = v135;
              v140 = 8;
              v141 = v134;
              v142 = 1;
              do
              {
                v143 = v131 + 16 * (v142 & 3 | (4 * v130));
                *(v139 - 2) = *(v132 + v137);
                *(v139 - 1) = *v143;
                *v139 = v130 + v19;
                v139[1] = *(v136 + v140 - 8);
                v144 = v129 + v137;
                *(v141 - 8) = *(v136 + 4 * v137 + 4) + -1.0;
                *(v141 - 4) = *(v143 + 4) + -1.0;
                v141[4] = 0.0;
                *v141 = 0.0;
                v145 = *(v136 + v140);
                if (v145 < 0)
                {
                  *(v141 - 7) = NAN;
                }

                else
                {
                  v146 = ((4 * v145) & 0xFFFFFFF0) + CA::Render::MeshTransform::subdivide(int)::edge_map[4 * (v145 & 3)];
                  *(v141 - 7) = v146;
                  if (v144 < v146)
                  {
                    --*(v4 + 28);
                  }
                }

                v147 = *(v143 + 8);
                if (v147 < 0)
                {
                  *(v141 - 3) = NAN;
                }

                else
                {
                  v148 = ((4 * v147) & 0xFFFFFFF0) + CA::Render::MeshTransform::subdivide(int)::edge_map[((4 * v147) & 0xC) + 1];
                  *(v141 - 3) = v148;
                  if (v144 < v148)
                  {
                    --*(v4 + 28);
                  }
                }

                *(v141 + 1) = v138 + CA::Render::MeshTransform::subdivide(int)::edge_map[v137 + 2];
                v149 = v138 + CA::Render::MeshTransform::subdivide(int)::edge_map[v137 + 3];
                v137 += 4;
                ++v142;
                *(v141 + 5) = v149;
                v141 += 16;
                v139 += 4;
                v140 += 16;
              }

              while (v137 != 16);
              ++v130;
              v136 += 64;
              v132 += 16;
              v129 += 16;
              v134 += 64;
              v135 += 16;
            }

            while (v130 != v133);
          }

          v150 = *(v4 + 6);
          *(v4 + 3) = v165;
          *(v4 + 8) = v166;
          v151 = *(v4 + 9);
          *(v4 + 72) = v163;
          *(v4 + 11) = v164;
          if (v151)
          {
            operator delete(v151);
          }

          if (v150)
          {
            operator delete(v150);
          }

          v152 = *(v4 + 26) + 1;
          *(v4 + 26) = v152;
          *(v4 + 3) &= ~0x400u;
          if (v152 >= v159)
          {
            goto LABEL_106;
          }
        }

        if (v19 <= 1)
        {
          v76 = 1;
        }

        else
        {
          v76 = v16 >> 5;
        }

        v77 = 24;
        v78 = 28;
        while (1)
        {
          v79 = *(v77 + 8);
          if (v79 > 2)
          {
            v84 = *(v77 + 12);
            v80 = *(v4 + 3);
            if (v84 < 2)
            {
              v85 = v79;
              v86 = (v80 + v78);
              v87 = *(v86 - 7);
              *(v77 - 24) = v87;
              v88 = *(v86 - 3);
              *v77 = *(v86 - 1);
              *(v77 - 8) = v88;
              v89 = *v86;
              v90 = (v85 + -2.0) / v85;
              *(v77 - 24) = v90 * *&v87;
              *(v77 - 20) = v90 * *(&v87 + 1);
              *(v77 - 8) = vmul_n_f32(*(v77 - 8), v90);
              *v77 = *v77 * v90;
              *(v77 + 4) = v89;
              v83 = 1.0 / (v85 * v85);
              goto LABEL_53;
            }

            if (v84 == 2)
            {
              v91 = (v80 + v78);
              v92 = *(v91 - 7);
              *(v77 - 24) = v92;
              v93 = *(v91 - 3);
              *v77 = *(v91 - 1);
              *(v77 - 8) = v93;
              v94 = *v91;
              *(v77 - 24) = vmul_f32(v92, _D12);
              *(v77 - 8) = vmul_f32(*(v77 - 8), _D12);
              *v77 = *v77 * 0.75;
              *(v77 + 4) = v94;
              v83 = 0.125;
              goto LABEL_53;
            }
          }

          else
          {
            *(v77 + 12) = 3;
            v80 = *(v4 + 3);
          }

          v81 = (v80 + v78);
          *(v77 - 24) = *(v81 - 7);
          v82 = *(v81 - 3);
          *v77 = *(v81 - 1);
          *(v77 - 8) = v82;
          *(v77 + 4) = *v81;
          v83 = 0.0;
LABEL_53:
          *(v77 + 16) = v83;
          v77 += 44;
          v78 += 32;
          if (!--v76)
          {
            goto LABEL_54;
          }
        }
      }
    }

LABEL_106:
    v3 = v157;
    os_unfair_lock_lock(v157 + 4);
    v153 = *(v157 + 25);
    *(v157 + 25) = v4;
    v154 = (v4 + 8);
    if (!atomic_fetch_add(v4 + 2, 1u))
    {
      v4 = 0;
      atomic_fetch_add(v154, 0xFFFFFFFF);
    }
  }

  else
  {
    os_unfair_lock_lock(v3 + 4);
    v153 = *(v3 + 25);
    *(v3 + 25) = 0;
  }

  os_unfair_lock_unlock(v3 + 4);
  if (v153 && atomic_fetch_add(v153 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v153 + 16))(v153);
  }

  return v4;
}

void std::vector<CA::Render::MeshVertex>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 32 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 5)
    {
      if (!(a2 >> 59))
      {
        v8 = v7 - v3;
        v9 = v8 >> 4;
        if (v8 >> 4 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFE0)
        {
          v10 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Render::MeshVertex>>(v10);
      }

      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    bzero(a1[1], 32 * v6);
    v11 = v4 + 32 * v6;
  }

  a1[1] = v11;
}

void std::vector<CA::Render::MeshFace>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 16 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Render::MeshFace>>(v10);
      }

      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    bzero(a1[1], 16 * v6);
    v11 = v4 + 16 * v6;
  }

  a1[1] = v11;
}

CA::Render::MeshTransform *CA::Render::MeshTransform::retain_inverse_mesh(CA::Render::MeshTransform *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xD0uLL, 0xDEEC3011uLL);
  if (result)
  {
    result = CA::Render::MeshTransform::MeshTransform(result, this);
  }

  v3 = *(result + 3);
  v4 = *(result + 4);
  while (v3 != v4)
  {
    v5 = v3[2];
    v3[2] = *v3;
    *v3 = v5;
    v3 += 4;
  }

  *(result + 3) &= 0xFFFFFAFF;
  return result;
}

float64_t CA::Render::MeshTransform::frame(CA::Render::MeshTransform *this, const CA::Rect *a2, float64x2_t a3, float64x2_t a4)
{
  v4 = *(a2 + 168);
  *this = *(a2 + 152);
  *(this + 1) = v4;
  *(this + 2) = *(a2 + 184);
  v5 = *(a2 + 24);
  if (v5)
  {
    *this = vmlaq_f64(a3, a4, *this);
    *(this + 24) = vmlaq_f64(a3, a4, *(this + 24));
    v6 = 0.5;
    if (v5 <= 3)
    {
      v12 = 0.5 * a4.f64[0];
      v13 = vmuld_lane_f64(0.5, a4, 1);
      if (v5 == 3)
      {
        v6 = v13;
      }

      if (v5 == 2)
      {
        v6 = v12;
      }
    }

    else
    {
      v7 = a4.f64[1];
      if (a4.f64[0] >= a4.f64[1])
      {
        v8 = a4.f64[1];
      }

      else
      {
        v8 = a4.f64[0];
      }

      v9 = v8 * 0.5;
      if (a4.f64[0] > a4.f64[1])
      {
        v7 = a4.f64[0];
      }

      v10 = v7 * 0.5;
      v11 = vaddvq_f64(a4) * 0.25;
      if (v5 == 6)
      {
        v6 = v11;
      }

      if (v5 == 5)
      {
        v6 = v10;
      }

      if (v5 == 4)
      {
        v6 = v9;
      }
    }

    *(this + 2) = *(this + 2) * v6;
    a3.f64[0] = *(this + 5) * v6;
    *(this + 5) = *&a3.f64[0];
  }

  return a3.f64[0];
}

float64_t CA::Render::MeshTransform::apply_volume(CA::Render::MeshTransform *this, const CA::Rect *a2, const CA::Rect *a3, float64x2_t a4, float64x2_t a5, float64x2_t a6, float64x2_t a7)
{
  v7 = vclezq_f64(a7);
  v8 = vdupq_laneq_s64(v7, 1);
  v9 = vorrq_s8(v8, v7);
  if ((v9.i64[0] & 0x8000000000000000) == 0)
  {
    v9.i32[0] = 0;
    v8.i32[0] = *(a2 + 24);
    v10 = vdupq_lane_s32(*&vceqq_s32(v8, v9), 0);
    v11 = vbslq_s8(v10, *(a2 + 136), vmulq_f64(*(a2 + 136), a5));
    v12 = vclezq_f64(v11);
    if ((vorrq_s8(vdupq_laneq_s64(v12, 1), v12).u64[0] & 0x8000000000000000) == 0)
    {
      v13 = vbslq_s8(v10, *(a2 + 120), vmlaq_f64(a4, a5, *(a2 + 120)));
      v14 = vclezq_f64(vsubq_f64(vminnmq_f64(vaddq_f64(a6, a7), vaddq_f64(v13, v11)), vmaxnmq_f64(a6, v13)));
      if ((vorrq_s8(vdupq_laneq_s64(v14, 1), v14).u64[0] & 0x8000000000000000) == 0)
      {
        return CA::Render::MeshTransform::frame(this, a2, a4, a5);
      }
    }
  }

  *this = CA::Volume::null;
  *(this + 1) = unk_183E317B0;
  result = -1.0;
  *(this + 2) = xmmword_183E317C0;
  return result;
}

float64x2_t CA::Render::MeshTransform::apply_rect(CA::Render::MeshTransform *this, const CA::Rect *a2, const CA::Rect *a3, float64x2_t result, float64x2_t a5, float64x2_t a6, float64x2_t a7)
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = vclezq_f64(a7);
  v9 = vdupq_laneq_s64(v8, 1);
  v10 = vorrq_s8(v9, v8);
  if (v10.i64[0] < 0 || (v10.i32[0] = 0, v9.i32[0] = *(a2 + 24), v11 = vdupq_lane_s32(*&vceqq_s32(v9, v10), 0), v12 = vbslq_s8(v11, *(a2 + 136), vmulq_f64(*(a2 + 136), a5)), v13 = vclezq_f64(v12), (vorrq_s8(vdupq_laneq_s64(v13, 1), v13).u64[0] & 0x8000000000000000) != 0) || (v14 = vbslq_s8(v11, *(a2 + 120), vmlaq_f64(result, a5, *(a2 + 120))), v15 = vclezq_f64(vsubq_f64(vminnmq_f64(vaddq_f64(a6, a7), vaddq_f64(v14, v12)), vmaxnmq_f64(a6, v14))), (vorrq_s8(vdupq_laneq_s64(v15, 1), v15).u64[0] & 0x8000000000000000) != 0))
  {
    result.f64[0] = 0.0;
    *this = 0u;
    *(this + 1) = 0u;
  }

  else
  {
    CA::Render::MeshTransform::frame(&v21, a2, result, a5);
    *this = 0u;
    *(this + 1) = 0u;
    result.f64[0] = v21;
    v16 = v22;
    v17 = v23 - v21;
    v18 = v24 - v22;
    if (v23 - v21 >= v24 - v22)
    {
      v19 = v24 - v22;
    }

    else
    {
      v19 = v23 - v21;
    }

    if (v19 > 0.0)
    {
      if (v17 <= v18)
      {
        v20 = v24 - v22;
      }

      else
      {
        v20 = v23 - v21;
      }

      if (v20 >= 1.79769313e308)
      {
        result = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
        *this = result;
        *(this + 1) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      }

      else
      {
        *this = v21;
        *(this + 1) = v16;
        *(this + 2) = v17;
        *(this + 3) = v18;
      }
    }
  }

  return result;
}

float64_t CA::Render::MeshTransform::unapply_rect(CA::Render::MeshTransform *this, const CA::Rect *a2, const CA::Rect *a3, float64x2_t a4, float64x2_t a5, float64x2_t a6, float64x2_t a7)
{
  v27 = *MEMORY[0x1E69E9840];
  CA::Render::MeshTransform::frame(v26, a2, a4, a5);
  v9 = vsubq_f64(*(&v26[1] + 8), v26[0]);
  if (v9.f64[0] >= v9.f64[1])
  {
    v10 = v9.f64[1];
  }

  else
  {
    v10 = v9.f64[0];
  }

  v11 = 0uLL;
  v12 = v10 <= 0.0;
  v13 = 0uLL;
  if (!v12)
  {
    if (v9.f64[0] <= v9.f64[1])
    {
      v14 = v9.f64[1];
    }

    else
    {
      v14 = v9.f64[0];
    }

    if (v14 >= 1.79769313e308)
    {
      v13 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      v11 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    }

    else
    {
      v11 = v9;
      v13 = v26[0];
    }
  }

  v15 = vclezq_f64(a7);
  if ((vorrq_s8(vdupq_laneq_s64(v15, 1), v15).u64[0] & 0x8000000000000000) != 0 || (v16 = vclezq_f64(v11), (vorrq_s8(vdupq_laneq_s64(v16, 1), v16).u64[0] & 0x8000000000000000) != 0) || (v17 = vclezq_f64(vsubq_f64(vminnmq_f64(vaddq_f64(a6, a7), vaddq_f64(v13, v11)), vmaxnmq_f64(a6, v13))), (vorrq_s8(vdupq_laneq_s64(v17, 1), v17).u64[0] & 0x8000000000000000) != 0))
  {
    v18.f64[0] = 0.0;
    *this = 0u;
    *(this + 1) = 0u;
  }

  else
  {
    v18 = *(a2 + 120);
    v19 = *(a2 + 136);
    *this = v18;
    *(this + 1) = v19;
    if (*(a2 + 24))
    {
      v20 = vmlaq_f64(a4, a5, v18);
      v18 = vmulq_f64(v19, a5);
      *this = v20;
      *(this + 1) = v18;
    }
  }

  return v18.f64[0];
}

uint64_t CA::Render::MeshTransform::vertex_transform(uint64_t result, uint64_t a2, uint64_t a3, float64x2_t a4, float64x2_t a5)
{
  if (!result)
  {
    __asm { FMOV            V0.2S, #1.0 }

    *a2 = _D0;
    *(a2 + 8) = 1065353216;
    *a3 = 0;
    *(a3 + 8) = 0;
    return result;
  }

  *a2 = vcvt_f32_f64(a5);
  *a3 = vcvt_f32_f64(a4);
  *(a3 + 8) = 0;
  if (result <= 3)
  {
    if (result == 2)
    {
      v12 = 0.5 * a5.f64[0];
      goto LABEL_19;
    }

    if (result == 3)
    {
      v12 = vmuld_lane_f64(0.5, a5, 1);
LABEL_19:
      v13 = v12;
      *(a2 + 8) = v13;
      return result;
    }

    goto LABEL_20;
  }

  switch(result)
  {
    case 4:
      v5 = a5.f64[1];
      if (a5.f64[0] < a5.f64[1])
      {
        v5 = a5.f64[0];
      }

      goto LABEL_16;
    case 5:
      v5 = a5.f64[1];
      if (a5.f64[0] > a5.f64[1])
      {
        v5 = a5.f64[0];
      }

LABEL_16:
      v6 = 0.5;
      goto LABEL_17;
    case 6:
      v5 = vaddvq_f64(a5);
      v6 = 0.25;
LABEL_17:
      v12 = v5 * v6;
      goto LABEL_19;
  }

LABEL_20:
  *(a2 + 8) = 1056964608;
  return result;
}

CA::Render::MeshTransform *CA::Render::MeshTransform::eval_interpolator(CA::Render::MeshTransform *this, float64x2_t *a2, const CA::Rect *a3)
{
  v148 = *MEMORY[0x1E69E9840];
  v6 = *(this + 2);
  v5 = *(this + 3);
  v7 = *(this + 4);
  v8 = *(this + 5);
  if (v6)
  {
    if (*(v6 + 12) != 35)
    {
      return 0;
    }

    if (!CA::Render::MeshTransform::validate(*(this + 2)) || v5 == 0)
    {
      return 0;
    }
  }

  else if (!v5)
  {
    return 0;
  }

  if (*(v5 + 12) != 35)
  {
    return 0;
  }

  v10 = 0;
  if (!CA::Render::MeshTransform::validate(v5) || !v7)
  {
    return v10;
  }

  if (*(v7 + 12) != 35 || !CA::Render::MeshTransform::validate(v7) || v8 && (*(v8 + 12) != 35 || !CA::Render::MeshTransform::validate(v8)))
  {
    return 0;
  }

  v11 = *(v5 + 32) - *(v5 + 24);
  if (v11 == *(v7 + 32) - *(v7 + 24))
  {
    v12 = *(v5 + 56) - *(v5 + 48);
    if (v12 == *(v7 + 56) - *(v7 + 48) && (!v6 || *(v6 + 32) - *(v6 + 24) == v11 && *(v6 + 56) - *(v6 + 48) == v12) && (!v8 || *(v8 + 32) - *(v8 + 24) == v11 && *(v8 + 56) - *(v8 + 48) == v12))
    {
      CA::Render::MeshTransform::update(v7, 2);
      v13 = X::Allocator0::operator new(0xD0uLL);
      if (v13)
      {
        v10 = v13;
        v14 = CA::Render::MeshTransform::MeshTransform(v13, (*(v7 + 32) - *(v7 + 24)) >> 5, (*(v7 + 56) - *(v7 + 48)) >> 4, *(v7 + 100));
        *(v14 + 54) = *(v7 + 108);
        *(v14 + 24) = 0;
        v15 = *(v7 + 48);
        v16 = *(v7 + 56);
        if (v16 != v15)
        {
          memmove(*(v10 + 6), v15, v16 - v15);
        }

        v17 = *(v7 + 72);
        v18 = *(v7 + 80);
        if (v18 != v17)
        {
          memmove(*(v10 + 9), v17, v18 - v17);
        }

        *(v10 + 28) = *(v7 + 112);
        *(v10 + 3) |= 0x200u;
        v147 = 0.0;
        v146 = 0;
        v145 = 0.0;
        v144 = 0;
        v143 = 0.0;
        v142 = 0;
        v141 = 0.0;
        v140 = 0;
        v128 = *a2;
        v130 = a2[1];
        CA::Render::MeshTransform::vertex_transform(*(v5 + 96), &v146, &v144, *a2, v130);
        v19 = *(v7 + 96);
        CA::Render::MeshTransform::vertex_transform(v19, &v142, &v140, v128, v130);
        v139 = 0.0;
        v138 = 0;
        v137 = 0.0;
        v136 = 0;
        v135 = 0.0;
        v134 = 0;
        v133 = 0.0;
        v132 = 0;
        if (v6)
        {
          CA::Render::MeshTransform::vertex_transform(*(v6 + 96), &v138, &v136, v128, v130);
          if (v8)
          {
            CA::Render::MeshTransform::vertex_transform(*(v8 + 96), &v134, &v132, v128, v130);
            if (*(this + 160) == 1)
            {
              v22 = *(v10 + 3);
              v97 = *(v10 + 4);
              if (v97 != v22)
              {
                v120 = v146.f32[1];
                v121 = v146.f32[0];
                v118 = v144.f32[0];
                v119 = v147;
                v116 = v145;
                v117 = v144.f32[1];
                v114 = v142.f32[1];
                v115 = v142.f32[0];
                v112 = v140.f32[0];
                v113 = v143;
                v110 = v141;
                v111 = v140.f32[1];
                v108 = *(&v138 + 1);
                v109 = *&v138;
                v106 = *&v136;
                v107 = v139;
                v104 = v137;
                v105 = *(&v136 + 1);
                v102 = *(&v134 + 1);
                v103 = *&v134;
                v100 = *&v132;
                v101 = v135;
                v23 = *(v5 + 24);
                if (((v97 - v22) >> 5) <= 1)
                {
                  v24 = 1;
                }

                else
                {
                  v24 = (v97 - v22) >> 5;
                }

                v25 = (v23 + 24);
                v26 = *(v6 + 24);
                v27 = (*(v7 + 24) + 24);
                v28 = (v26 + 24);
                v29 = (*(v8 + 24) + 24);
                v96 = *(v10 + 3);
                v30 = (v22 + 28);
                v98 = v133;
                v99 = *(&v132 + 1);
                do
                {
                  v31 = *(v25 - 6);
                  *&v21 = *(v25 - 5);
                  v32 = *(v25 - 2);
                  v33 = *(v25 - 1);
                  v34 = *v25;
                  v25 += 8;
                  v35 = v34;
                  v36 = *(v27 - 6);
                  v37 = *(v27 - 5);
                  v38 = *(v27 - 2);
                  v39 = *(v27 - 1);
                  v40 = *v27;
                  v27 += 8;
                  *&v20 = v118 + (v121 * v31);
                  v122 = v117 + (v120 * *&v21);
                  v125 = v118 + (v121 * v32);
                  v127 = v117 + (v120 * v33);
                  v131 = v116 + (v119 * v35);
                  *&v21 = v112 + (v115 * v36);
                  v41 = v111 + (v114 * v37);
                  v124 = v112 + (v115 * v38);
                  v126 = v111 + (v114 * v39);
                  v129 = v110 + (v113 * v40);
                  v42 = v106 + (v109 * *(v28 - 6));
                  v43 = v105 + (v108 * *(v28 - 5));
                  v44 = v106 + (v109 * *(v28 - 2));
                  v45 = v105 + (v108 * *(v28 - 1));
                  v46 = *v28;
                  v28 += 8;
                  v123 = v104 + (v107 * v46);
                  v47 = v100 + (v103 * *(v29 - 6));
                  v48 = v99 + (v102 * *(v29 - 5));
                  v49 = v100 + (v103 * *(v29 - 2));
                  v50 = v99 + (v102 * *(v29 - 1));
                  v51 = *v29;
                  v29 += 8;
                  *(v30 - 7) = CA::Render::ValueInterpolator::mix<float>(this + 3, v42, v20, v21, v47);
                  *&v52 = v122;
                  *&v53 = v41;
                  *(v30 - 6) = CA::Render::ValueInterpolator::mix<float>(this + 3, v43, v52, v53, v48);
                  *&v55 = v124;
                  *&v54 = v125;
                  *(v30 - 3) = CA::Render::ValueInterpolator::mix<float>(this + 3, v44, v54, v55, v49);
                  *&v57 = v126;
                  *&v56 = v127;
                  *(v30 - 2) = CA::Render::ValueInterpolator::mix<float>(this + 3, v45, v56, v57, v50);
                  *&v58 = v131;
                  *&v59 = v129;
                  *(v30 - 1) = CA::Render::ValueInterpolator::mix<float>(this + 3, v123, v58, v59, v98 + (v101 * v51));
                  *v30 = 1.0;
                  v30 += 8;
                  --v24;
                }

                while (v24);
                v19 = *(v7 + 96);
                v22 = v96;
              }

              v60 = v97;
LABEL_53:
              if (v19)
              {
                v83 = v60 - v22;
                if (v83)
                {
                  __asm { FMOV            V1.2S, #1.0 }

                  v88 = vdiv_f32(_D1, v142);
                  v89 = v83 >> 5;
                  v90 = v140;
                  v91 = v141;
                  if (v89 <= 1)
                  {
                    v89 = 1;
                  }

                  v92 = (v22 + 24);
                  v93 = 1.0 / v143;
                  do
                  {
                    v94 = *v92 - v91;
                    *(v92 - 3) = vmul_f32(vsub_f32(*(v92 - 6), v90), v88);
                    *(v92 - 1) = vmul_f32(vsub_f32(*(v92 - 2), v90), v88);
                    *v92 = v94 * v93;
                    v92 += 8;
                    --v89;
                  }

                  while (v89);
                }

                *(v10 + 24) = v19;
              }

              v95 = *(v10 + 3) & 0xFFFFFEFF;
              *(v10 + 3) = v95;
              if ((*(v7 + 12) & 0x2000) != 0)
              {
                *(v10 + 3) = *(v7 + 12) & 0x3000 | v95;
              }

              return v10;
            }
          }
        }

        else if (v8)
        {
          CA::Render::MeshTransform::vertex_transform(*(v8 + 96), &v134, &v132, v128, v130);
        }

        v22 = *(v10 + 3);
        v60 = *(v10 + 4);
        if (v60 != v22)
        {
          v62 = 0;
          v63 = (v60 - v22) >> 5;
          v64 = *(v5 + 24);
          v65 = *(v7 + 24);
          v66 = v147;
          v67 = v145;
          v68 = v143;
          v69 = v146;
          v70 = v144;
          v71 = v142;
          v72 = v140;
          v73 = v141;
          v74 = *(this + 6);
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v75 = vdupq_lane_s64(v74, 0);
          do
          {
            v76 = *(v65 + v62 + 24);
            v77 = v67 + (v66 * *(v64 + v62 + 24));
            v78 = (v22 + v62);
            v79 = vmla_f32(v70, *(v64 + v62), v69);
            v80 = vmla_f32(v70, *(v64 + v62 + 16), v69);
            v81 = vmlaq_f64(vcvtq_f64_f32(v80), vcvtq_f64_f32(vadd_f32(vmla_f32(vneg_f32(v80), *(v65 + v62 + 16), v71), v72)), v75);
            *v78 = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(v79), vcvtq_f64_f32(vadd_f32(vmla_f32(vneg_f32(v79), *(v65 + v62), v71), v72)), v75));
            v78[2] = vcvt_f32_f64(v81);
            v82 = v77 + *&v74 * (v73 - (v77 - (v68 * v76)));
            v78[3].f32[0] = v82;
            v78[3].i32[1] = 1065353216;
            v62 += 32;
            --v63;
          }

          while (v63);
        }

        goto LABEL_53;
      }
    }
  }

  v10 = v7;
  if (!atomic_fetch_add((v7 + 8), 1u))
  {
    v10 = 0;
    atomic_fetch_add((v7 + 8), 0xFFFFFFFF);
  }

  return v10;
}