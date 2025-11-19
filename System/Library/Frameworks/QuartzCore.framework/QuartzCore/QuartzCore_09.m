float CA::WindowServer::IOMFBDisplay::contrast_preservation(CA::WindowServer::IOMFBDisplay *this)
{
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  result = *&dword_1ED4E972C;
  if (*&dword_1ED4E972C == 0.0)
  {
    result = *(this + 6621);
    if (!*(this + 26492))
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t CA::Render::Update::pop_dependence_group(CA::Render::Update *this, CA::Render::LayerNode *a2)
{
  v3 = *(this + 109);
  v4 = *(v3 - 24);
  if (v4)
  {
    do
    {
      v5 = v4[3];
      if (atomic_fetch_add(v5 + 4, 0xFFFFFFFF) == 1)
      {
        CA::Render::LayerNode::delete_node(v5, a2);
      }

      v4 = *v4;
    }

    while (v4);
    v3 = *(this + 109);
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v3 - 40);
  *(this + 109) = result;
  return result;
}

_OWORD *CA::Render::LayerNodeAllocator::alloc_node(CA::Render::LayerNodeAllocator *this)
{
  if (CA::Render::LayerNodeAllocator::alloc_node(void)::once != -1)
  {
    dispatch_once(&CA::Render::LayerNodeAllocator::alloc_node(void)::once, &__block_literal_global_9144);
  }

  if (!CA::Render::LayerNodeAllocator::_free_offsets_count)
  {
    if (x_malloc_get_zone::once == -1)
    {
      goto LABEL_10;
    }

LABEL_13:
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    goto LABEL_10;
  }

  os_unfair_lock_lock(&CA::Render::LayerNodeAllocator::_lock);
  v1 = CA::Render::LayerNodeAllocator::_free_offsets_count;
  if (CA::Render::LayerNodeAllocator::_free_offsets_count)
  {
    --CA::Render::LayerNodeAllocator::_free_offsets_count;
    v2 = *(CA::Render::LayerNodeAllocator::_free_offsets + 2 * (v1 - 1));
    os_unfair_lock_unlock(&CA::Render::LayerNodeAllocator::_lock);
    result = (CA::Render::LayerNodeAllocator::_data + 288 * v2);
    if (!CA::Render::LayerNodeAllocator::_data)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  os_unfair_lock_unlock(&CA::Render::LayerNodeAllocator::_lock);
  if (x_malloc_get_zone::once != -1)
  {
    goto LABEL_13;
  }

LABEL_10:
  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x120uLL, 0xDEEC3011uLL);
  if (result)
  {
LABEL_11:
    result[16] = 0u;
    result[17] = 0u;
    result[14] = 0u;
    result[15] = 0u;
    result[12] = 0u;
    result[13] = 0u;
    result[10] = 0u;
    result[11] = 0u;
    result[8] = 0u;
    result[9] = 0u;
    result[6] = 0u;
    result[7] = 0u;
    result[4] = 0u;
    result[5] = 0u;
    result[2] = 0u;
    result[3] = 0u;
    result[1] = 0u;
  }

LABEL_12:
  *result = result;
  *(result + 1) = result;
  *(result + 12) = result + 6;
  *(result + 13) = result + 6;
  *(result + 4) = 1;
  *(result + 3) = 4;
  return result;
}

uint64_t ___ZN2CA12WindowServer11IOMFBServer20try_swap_begin_asyncEj_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 96);
  v2 = *(a1 + 40);
  pthread_mutex_lock((v1 + 25848));
  if (*(v1 + 26064) == v2)
  {
    v3 = v1 + 48 * *(v1 + 25832);
    if (!*(v3 + 25936))
    {
      CA::IOMobileFramebuffer::swap_begin((v1 + 25696), (v3 + 25936));
    }

    *(v1 + 26064) = 0;
  }

  return pthread_mutex_unlock((v1 + 25848));
}

uint64_t CA::WindowServer::Display::render_display(CA::WindowServer::Display *this, CA::Shape **a2, CA::Render::Update *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = *a2;
  *(v7 + 75) = CA::WindowServer::Display::ogl_display(this);
  *(v7 + 38) = *(this + 200);
  if ((*(*this + 1888))(this))
  {
    v8 = (*(*this + 1848))(this);
    if (v8)
    {
      CA::OGL::Context::set_colorspace(v7, v8);
    }
  }

  v9 = (*(*v7 + 1160))(v7);
  v10 = (*(*this + 472))(this, 1, v9, *(a3 + 40), 0, 0);
  v11 = v10;
  if (!v10)
  {
    goto LABEL_22;
  }

  v12 = *(v10 + 64);
  if (v12 != 643969848 && v12 != 1647534392)
  {
    if ((*(v10 + 236) & 0x200000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v14 = *(a3 + 38);
  if (v14 & 0x2000) != 0 || (v14 & 2) != 0 || (BYTE10(xmmword_1ED4E980C))
  {
    v15 = (v10 + 236);
    v16 = *(v10 + 236);
    if ((v16 & 0x40000000) != 0)
    {
      goto LABEL_20;
    }

    v17 = v16 | 0x80000000;
    goto LABEL_18;
  }

  v15 = (v10 + 236);
  v16 = *(v10 + 236);
  if (((v16 >> 30) & 1) == ((v16 >> 33) & 1))
  {
    goto LABEL_20;
  }

  v17 = v16 | 0x80000000;
  if ((v16 & 0x200000000) != 0)
  {
LABEL_18:
    v16 = v17 | 0x240000000;
    goto LABEL_19;
  }

  v16 = v16 & 0xFFFFFFFD3FFFFFFFLL | 0x80000000;
LABEL_19:
  *v15 = v16;
LABEL_20:
  if ((v16 & 0x200000000) != 0)
  {
LABEL_21:
    CA::Render::Update::set_shape(a3, *(this + 27));
  }

LABEL_22:
  CA::OGL::Renderer::prepare_clip_shape(a2, *(a3 + 2));
  CA::Render::Update::render_edr_factor();
  v19 = v18;
  if (v11)
  {
    v20 = CA::Render::fourcc_to_format(*(v11 + 16));
    if (((v20 < 0x1D) & (0x17826000u >> v20)) != 0)
    {
      v19 = 1.0;
    }
  }

  (*(*v7 + 1128))(v7, v19);
  if (v11 && (*(*v7 + 1008))(v7, v11))
  {
    if ((*(*this + 1552))(this))
    {
      CA::Render::Update::render_edr_factor();
      (*(*v11 + 224))(v11, 0, 1.0 / v21);
    }

    else
    {
      (*(*v11 + 224))(v11, 0, *(a3 + 101));
      v19 = 1.0 / *(a3 + 101);
    }

    (*(*v11 + 208))(v11, v19);
    if ((*(*v11 + 200))(v11) < 1.0 && (*(*this + 1560))(this))
    {
      v23 = CA::WindowServer::Display::all_clones_support_edr_fixup(this);
      v24 = 0x4000000000;
      if (!v23)
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    *(v11 + 236) = *(v11 + 236) & 0xFFFFFFBFFFFFFFFFLL | v24;
    CA::OGL::Renderer::render(a2, a3, v11[2], v22);
    *(v11 + 236) &= ~0x200000000uLL;
    (*(*v7 + 1008))(v7, 0);
  }

  v25 = a2[2];
  if (v25)
  {
    CA::Shape::unref(v25);
    a2[2] = 0;
  }

  (*(*v7 + 1128))(v7, 1.0);
  *(v7 + 75) = 0;
  v26 = *(v7 + 692);
  if ((v26 & 0x80) != 0)
  {
    (*(*this + 488))(this);
  }

  objc_autoreleasePoolPop(v6);
  return (v26 >> 7) & 1;
}

uint64_t CA::CASharedEvent::History::add(uint64_t result, uint64_t a2, int a3, atomic_uint a4, atomic_uint a5, atomic_uint a6, uint64_t a7)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a4 != 1)
  {
    v13 = result;
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    if (byte_1ED4E987C == 1)
    {
      if (x_log_get_sharedevent(void)::once != -1)
      {
        dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
      }

      v16 = x_log_get_sharedevent(void)::log;
      if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_INFO))
      {
        v17 = CA::CASharedEvent::UsageString[a4];
        v18 = CA::CASharedEvent::OperationString[a5];
        v19 = CA::CASharedEvent::AccessString[a6];
        v20 = "No Surface or Display";
        if (a2)
        {
          if (*(a2 + 8))
          {
            v20 = "";
          }
        }

        v21[0] = 67110402;
        v21[1] = a3;
        v22 = 2080;
        v23 = v17;
        v24 = 2080;
        v25 = v18;
        v26 = 2080;
        v27 = v19;
        v28 = 2048;
        v29 = a7;
        v30 = 2080;
        v31 = v20;
        _os_log_impl(&dword_183AA6000, v16, OS_LOG_TYPE_INFO, "IOSurfaceID: 0x%x  usage: %s  operation: %s  access: %s  value: %#llx %s", v21, 0x3Au);
      }
    }

    v14 = atomic_fetch_add(v13, 1u) & 0x3F;
    result = mach_continuous_time();
    v15 = &v13[8 * v14];
    *(v15 + 1) = result;
    v15[4] = a4;
    v15[5] = a5;
    v15[6] = a6;
    *(v15 + 4) = a7;
  }

  return result;
}

uint64_t CA::CASharedEvent::get_wait_value(uint64_t a1, atomic_uint a2, atomic_uint a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2 == 16 && (*(a1 + 80) - 8) <= 5)
  {
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    if (byte_1ED4E987C == 1)
    {
      v16 = a3;
      if (x_log_get_sharedevent(void)::once != -1)
      {
        dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
      }

      v13 = x_log_get_sharedevent(void)::log;
      a3 = 1;
      if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_INFO))
      {
        v14 = CA::CASharedEvent::AccessString[v16];
        v15 = *(a1 + 16);
        *buf = 67109634;
        *&buf[4] = v15;
        *v18 = 2080;
        *&v18[2] = "Render::Surface";
        *&v18[10] = 2080;
        *&v18[12] = v14;
        _os_log_impl(&dword_183AA6000, v13, OS_LOG_TYPE_INFO, "IOSurfaceID: 0x%x  usage: %s  access: %s  force read access when detached", buf, 0x1Cu);
      }
    }

    else
    {
      a3 = 1;
    }
  }

  if (*(a1 + 40) == 1)
  {
    bzero(buf, 0x3E0uLL);
    CA::SurfaceUtil::CASurfaceQuerySharedEvent(buf, *(a1 + 8));
    CA::CASharedEvent::update_from_iosurface_list(a1, *buf, *v18);
    v6 = *buf;
    v7 = *v18;
    if (*buf != *v18)
    {
      do
      {
        v8 = *v6;
        v6 += 4;
      }

      while (v6 != v7);
      v6 = *buf;
    }

    if (v6 != *&v18[8])
    {
      free(v6);
    }
  }

  v9 = 48;
  if (a3 == 1)
  {
    v9 = 72;
  }

  v10 = *(a1 + v9);
  v11 = *(a1 + 120);
  if (v11)
  {
    CA::CASharedEvent::History::add(v11, *a1, *(a1 + 16), a2, 1, a3, *(a1 + v9));
  }

  return v10;
}

void CA::OGL::MetalContext::shared_event_submit(CA::OGL::MetalContext *this, uint64_t a2, const char *a3, atomic_uint a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  v5 = a3;
  if (*(this + 441))
  {
    CA::OGL::MetalContext::stop_encoders(this);
  }

  else
  {
    CA::OGL::MetalContext::start_command_buffer(this, *(this + 455), a3);
  }

  if (!*(this + 441))
  {
    if (x_log_get_sharedevent(void)::once != -1)
    {
      dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
    }

    v11 = x_log_get_sharedevent(void)::log;
    if (!os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v17 = 0;
    v12 = "Invalid command buffer";
    v13 = &v17;
LABEL_23:
    _os_log_error_impl(&dword_183AA6000, v11, OS_LOG_TYPE_ERROR, v12, v13, 2u);
    return;
  }

  v8 = *(a2 + 32);
  if (v8)
  {
    if (v5)
    {
      wait_value = CA::CASharedEvent::get_wait_value(a2, 15, a4);
      v10 = *(this + 441);

      [v10 encodeWaitForEvent:v8 value:wait_value];
    }

    else
    {
      v14 = CA::CASharedEvent::inc_signal_value(a2, 15, a4);
      [*(this + 441) encodeSignalEvent:v8 value:v14];
      v15 = atomic_load(this + 593);

      CA::OGL::MetalContext::SharedEvent::add_encoded((this + 2912), v15, a2, v14);
    }

    return;
  }

  if (x_log_get_sharedevent(void)::once != -1)
  {
    dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
  }

  v11 = x_log_get_sharedevent(void)::log;
  if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_ERROR))
  {
    v16 = 0;
    v12 = "Invalid metal shared event";
    v13 = &v16;
    goto LABEL_23;
  }
}

uint64_t CA::OGL::MetalContext::make_buffer_current(CA::OGL::MetalContext *this, CA::WindowServer::Surface *a2)
{
  if (a2)
  {
    result = CA::OGL::MetalContext::get_surface(this, a2, 1);
    if (!result)
    {
      return result;
    }

    v5 = result;
    *(this + 455) = (*(*a2 + 232))(a2);
    CA::OGL::Context::push_surface(this, v5, *(v5 + 144) >= 0, 0, 0);
    *(this + 427) = v5;
    *(this + 428) = *(v5 + 192);
  }

  else
  {
    *(this + 455) = 0;
    CA::OGL::Context::pop_surface(this);
    v6 = *(this + 85);
    v7 = *(this + 84);
    if (v6 != v7 || (!v6 ? (v8 = 0) : (v8 = (*(v7 + 144) >> 1) & 0x1F), *(this + 167) != v8))
    {
      CA::OGL::Context::prepare_destination_(this);
    }

    *(this + 3416) = 0u;
  }

  return 1;
}

uint64_t CA::CASharedEvent::update_signal_value(uint64_t result, uint64_t a2, atomic_uint a3, atomic_uint a4)
{
  if ((a3 - 8) > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
    if (*(result + 64))
    {
      goto LABEL_6;
    }
  }

  *(result + 64) = v4;
LABEL_6:
  *(result + 80) = a3;
  if (a4 == 2)
  {
    *(result + 72) = a2;
  }

  if (*(result + 120))
  {
    return CA::CASharedEvent::History::add(*(result + 120), *result, *(result + 16), a3, 2, a4, a2);
  }

  return result;
}

uint64_t CA::CASharedEvent::inc_signal_value(uint64_t a1, atomic_uint a2, atomic_uint a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 48) + 1;
  *(a1 + 48) = v5;
  CA::CASharedEvent::update_signal_value(a1, v5, a2, a3);
  if (*(a1 + 40) == 1)
  {
    v6 = *(a1 + 48);
    *(a1 + 112) = v6;
    HIDWORD(v10) = 0;
    *(&v10 + 1) = 0;
    v7 = *(a1 + 8);
    v9[0] = *(a1 + 32);
    v9[1] = 0;
    v9[2] = v6;
    LODWORD(v10) = a3 == 2;
    CA::SurfaceUtil::CASurfaceAppendSharedEvent(v7, v9);
  }

  return v5;
}

void CAMarkStatistic(uint64_t a1, double a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 56);
  if (v4 <= 0.0)
  {
    *(a1 + 56) = a2;
  }

  else if (v4 + 1.0 < a2)
  {
    if (BYTE10(ca_debug_options) == 1)
    {
      memset(v23, 0, sizeof(v23));
      v5 = CARecordCurrentDisplayGet();
      if (v5)
      {
        X::Stream::printf(v23, "display %u: ", v5);
      }

      X::Stream::printf(v23, "%d transactions", *(a1 + 16) - *(a1 + 80));
      v6 = *(a1 + 20) - *(a1 + 84);
      if (v6)
      {
        v7 = *(a1 + 24) - *(a1 + 88);
        v8 = v6;
        v9 = "frames";
        if (v6 == 1)
        {
          v9 = "frame";
        }

        v10 = v7 / v8;
        if (v7 == v6)
        {
          v11 = "pass";
        }

        else
        {
          v11 = "passes";
        }

        X::Stream::printf(v23, "; %d %s (%.3gs duration, %.3gfps frame rate, %.3g %s, %.2gs gap)", v6, v9, a2 - *(a1 + 56), v8 / (a2 - *(a1 + 56)), v10, v11, *(a1 + 72));
      }

      v12 = *(a1 + 32) - *(a1 + 92);
      if (v12)
      {
        v13 = "es";
        if (v12 == 1)
        {
          v13 = "";
        }

        X::Stream::printf(v23, "; %d cache miss%s", v12, v13);
      }

      v14 = *(a1 + 40);
      if (v14 != 0.0)
      {
        X::Stream::printf(v23, "; %.3g MP area", v14 * 0.000001);
      }

      if (*(a1 + 28))
      {
        X::Stream::printf(v23, "; %d draw calls", *(a1 + 28));
      }

      v15 = *(a1 + 48);
      if (v15 != 0.0)
      {
        X::Stream::printf(v23, "; %.3g MB uploaded", v15 * 0.000001);
      }

      if (x_log_get_CADebug(void)::once != -1)
      {
        dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
      }

      v16 = x_log_get_CADebug(void)::log;
      if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v22 = x_stream_get(v23);
        _os_log_impl(&dword_183AA6000, v16, OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
      }

      if (*v23)
      {
        free(*v23);
      }
    }

    if (BYTE8(ca_debug_options) == 1)
    {
      if (x_log_get_CADebug(void)::once != -1)
      {
        dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
      }

      v17 = x_log_get_CADebug(void)::log;
      if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *CAGetStatsStruct(0) * 0.000001;
        v19 = *(CAGetStatsStruct(0) + 1) * 0.000001;
        *v23 = 134218240;
        *&v23[4] = v18;
        *&v23[12] = 2048;
        *&v23[14] = v19;
        _os_log_impl(&dword_183AA6000, v17, OS_LOG_TYPE_DEFAULT, "CoreAnimation buffers: currently %.3gMB; maximum %.3gMB\n", v23, 0x16u);
      }
    }

    *(a1 + 80) = *(a1 + 16);
    v20 = *(a1 + 32);
    *(a1 + 88) = *(a1 + 24);
    *(a1 + 92) = v20;
    *(a1 + 56) = a2;
    *(a1 + 72) = 0;
    *(a1 + 28) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }
}

CA::Shape **CA::WindowServer::AccelServer::render_update(CA::WindowServer::Display **this, CA::Render::Update *a2, unsigned int *a3)
{
  v6 = (*(*this + 54))(this);
  if (v6)
  {
    v8 = v6;
    if (CA::WindowServer::Display::render_display(this[12], v6, a2))
    {
      *a3 |= 3u;
    }

    if (BYTE5(xmmword_1ED4E97EC) == 1)
    {
      (*(**v8 + 472))(*v8, "com.apple.GL.event.frameboundary.end");
    }

    v9 = *(a2 + 10);

    return CA::OGL::Renderer::collect(v8, a2, v9);
  }

  else
  {

    return CA::WindowServer::Server::render_update(this, a2, v7);
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::use_assembly_surface(CA::WindowServer::IOMFBDisplay *this)
{
  v2 = this + 25560;
  if (!(*(*this + 80))(this))
  {
    goto LABEL_20;
  }

  v3 = *(this + 3339);
  if (!v3)
  {
    goto LABEL_21;
  }

  v4 = *(this + 3415);
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= v3)
    {
      v7 = v4 % v3;
    }
  }

  else
  {
    v7 = (v3 - 1) & v4;
  }

  v8 = *(*(this + 3338) + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_20:
    LOBYTE(v3) = 0;
    goto LABEL_21;
  }

  v10 = vdupq_n_s64(0x3F59000000000000uLL);
  v11 = vdupq_n_s64(0x40847AE147AE147BuLL);
  v12 = vdupq_n_s64(0x3FFFFFE0000000uLL);
  while (1)
  {
    v13 = v9[1];
    if (v4 == v13)
    {
      break;
    }

    if (v6 > 1)
    {
      if (v13 >= v3)
      {
        v13 %= v3;
      }
    }

    else
    {
      v13 &= v3 - 1;
    }

    if (v13 != v7)
    {
      goto LABEL_20;
    }

LABEL_19:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_20;
    }
  }

  if (v9[2] != v4)
  {
    v14.i64[0] = v9[2];
    v14.i64[1] = *(this + 3415);
    v15 = vshrn_n_s64(v14, 0x1DuLL);
    v16.i64[0] = v15.i32[0] & 0x1FFFFFF;
    v16.i64[1] = v15.i32[1] & 0x1FFFFFF;
    v17 = vbslq_s8(v12, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v16), v10)), v11)), 0x1DuLL), v14);
    if ((vmovn_s64(vceqq_s64(v17, vdupq_laneq_s64(v17, 1))).u32[0] & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  LOBYTE(v3) = *(v9 + 44);
LABEL_21:
  if (*(this + 904) & 0x10) != 0 && ((byte_1ED4E9887 & 1) != 0 || v2[3952] != 1) || (v2[1128] == 2) | v3 & 1 || ((*(*this + 1576))(this))
  {
    return 1;
  }

  if (*v2 == 1)
  {
    return CA::WindowServer::Display::all_clones_are_screen_recording(this) ^ 1;
  }

  return 0;
}

float CA::WindowServer::Display::edr_headroom(CA::WindowServer::Display *this)
{
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  result = *&dword_1ED4E968C;
  if (*&dword_1ED4E968C == 0.0)
  {
    v3 = *(this + 88);
    if (v3)
    {
      return COERCE_FLOAT(atomic_load(v3));
    }

    else
    {
      return 1.0;
    }
  }

  return result;
}

uint64_t CA::WindowServer::Display::Mode::hdr_type(unint64_t this)
{
  v1 = (this >> 55) & 0x1F;
  if (!this || (this & 0x10000000) != 0)
  {
    if (CADeviceIsVirtualized::once[0] != -1)
    {
      dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
    }

    if (((v1 - 22) & 0xFFFFFFFD) != 0)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    if (CADeviceIsVirtualized::is_virtualized == 1)
    {
      return v3;
    }

    else
    {
      return 2;
    }
  }

  else if ((v1 - 16) > 0xC)
  {
    return 1;
  }

  else
  {
    return dword_183E24180[(v1 - 16)];
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::needs_passthrough(CA::WindowServer::IOMFBDisplay *this)
{
  if (CA::WindowServer::Display::Mode::is_hdr((this + 656)))
  {
    v2 = *(this + 29533) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

BOOL CA::WindowServer::Display::Mode::is_hdr(CA::WindowServer::Display::Mode *this)
{
  if (*this)
  {
    v1 = (*this & 0x10000000) == 0;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    return ((*this >> 55) & 0x1F) - 16 < 0xD;
  }

  if (CADeviceIsVirtualized::once[0] != -1)
  {
    dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
  }

  if (CADeviceIsVirtualized::is_virtualized != 1)
  {
    return 0;
  }

  v3 = (*this >> 55) & 0x1FLL;
  return v3 == 22 || v3 == 24;
}

void CA::WindowServer::Server::render_for_time(uint64_t a1)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v549.i64[0] = v6;
  v671[32] = *MEMORY[0x1E69E9840];
  if ((*(*(v1 + 96) + 905) & 8) != 0)
  {
    return;
  }

  v7 = v4;
  v8 = v3;
  v9 = v5;
  v10 = v1;
  v539 = v2;
  v11 = objc_autoreleasePoolPush();
  v562 = 0;
  CARecordCurrentDisplay::CARecordCurrentDisplay(&v562, *(*(v10 + 96) + 24));
  v529 = *(v10 + 96);
  v526 = mach_absolute_time();
  v12 = mach_absolute_time();
  *&v660[8] = 0;
  *v660 = 0;
  mach_get_times();
  v13 = *&v660[8];
  v14 = CATimeWithHostTime(*v660);
  add = atomic_fetch_add(CA::Render::Update::_update_counter, 1u);
  pthread_mutex_lock((v10 + 24));
  if (*(v10 + 824) != 1)
  {
    v548 = add + 1;
    v519 = v12;
    v528 = v13;
    if (byte_1ED4E985F == 1)
    {
      if (x_log_get_server_perf(void)::once != -1)
      {
        dispatch_once(&x_log_get_server_perf(void)::once, &__block_literal_global_5_17300);
      }

      v514 = x_log_get_server_perf(void)::log;
      v521 = os_signpost_id_generate(x_log_get_server_perf(void)::log);
      if (v521 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v514))
      {
        v505 = *(*(v10 + 96) + 24);
        v506 = _MXSignpostMetricsSnapshot();
        *v660 = 67240706;
        *&v660[4] = v505;
        *&v660[8] = 1026;
        *&v660[10] = v548;
        *&v660[14] = 2114;
        *&v660[16] = v506;
        _os_signpost_emit_with_name_impl(&dword_183AA6000, v514, OS_SIGNPOST_INTERVAL_BEGIN, v521, "Rendering", "display=%{public,name=display}u update=0x%{public,name=update}x\n%{public, signpost:metrics}@", v660, 0x18u);
      }
    }

    else
    {
      v521 = 0;
      v514 = MEMORY[0x1E69E9C18];
    }

    kdebug_trace();
    v518 = *(*(v10 + 96) + 24);
    os_unfair_lock_lock((v10 + 152));
    v16 = *(v10 + 160);
    *(v10 + 160) = 0;
    os_unfair_lock_unlock((v10 + 152));
    if (v16)
    {
      v17 = 0;
      do
      {
        v18 = v17;
        v17 = v16;
        v16 = v16[1];
        v17[1] = v18;
      }

      while (v16);
      do
      {
        v19 = v17[1];
        (*(*v17 + 16))(v17, v10);
        (*(*v17 + 8))(v17);
        v17 = v19;
      }

      while (v19);
    }

    os_unfair_lock_lock((v10 + 16));
    v21 = *(v10 + 128);
    v22 = *(*(v10 + 96) + 768);
    v23 = atomic_load(v22 + 1);
    if (v23 != 1)
    {
      atomic_store(*&v14, &CA::Render::Context::_begin_time_threshold);
    }

    v552 = v21;
    v538 = v8;
    if (v21)
    {
      v24 = 8 * v21;
      if ((8 * v21) > 0x1000)
      {
        v25 = malloc_type_malloc(8 * v21, 0xBA5BC6E4uLL);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v20);
        v25 = &v513 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v25, v24);
      }

      v29 = 0;
      v26 = 0;
      v30 = 0;
      v31 = *(v10 + 112);
      v28 = 0.0;
      v32 = v552;
      do
      {
        v33 = *(v31 + v29);
        atomic_fetch_add((v33 + 8), 1u);
        *&v25[8 * v30] = v33;
        v34 = *(v33 + 656);
        if (v28 >= v34)
        {
          v35 = *(v33 + 656);
        }

        else
        {
          v35 = v28;
        }

        if (v28 == 0.0)
        {
          v35 = *(v33 + 656);
        }

        if (v34 != 0.0)
        {
          v28 = v35;
        }

        v31 = *(v10 + 112);
        v26 += (*(*(v31 + v29) + 12) >> 17) & 1;
        ++v30;
        v29 += 16;
      }

      while (v32 != v30);
      v27 = v24 > 0x1000;
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v25 = 0;
      v28 = 0.0;
    }

    v36 = *(v10 + 176);
    *(v10 + 176) = 0;
    os_unfair_lock_unlock((v10 + 16));
    v515 = (*(*v10 + 48))(v10);
    if (CADeviceNeedsISPWorkaround::once[0] != -1)
    {
      dispatch_once(CADeviceNeedsISPWorkaround::once, &__block_literal_global_116);
    }

    v530 = v25;
    v520 = v11;
    v522 = v27;
    if (CADeviceNeedsISPWorkaround::isp_workaround)
    {
      v37 = *(v10 + 96);
      v38 = v22;
      if (*(v10 + 834) == 1)
      {
        v39 = (*(v37 + 672) & 0x1C00) != 1024;
LABEL_34:
        v40 = *(v37 + 904);
        v554 = v36;
        if ((v40 & 0x10000) != 0)
        {
          if (x_log_get_flipbook(void)::once != -1)
          {
            dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
          }

          v507 = x_log_get_flipbook(void)::log;
          v39 = 0;
          if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            *v660 = 0;
            _os_log_impl(&dword_183AA6000, v507, OS_LOG_TYPE_DEFAULT, "entering flipbook, disallowing detaching", v660, 2u);
            v39 = 0;
          }
        }

        v41 = (*(**(v10 + 96) + 2264))(*(v10 + 96));
        v42 = *(v10 + 832);
        if (v42 == 1)
        {
          *(v10 + 832) = 0;
        }

        v537 = HIWORD(v40) & 1;
        v43 = *(v10 + 833);
        *(v10 + 833) = 0;
        v44 = atomic_load(v38 + 1);
        if (!atomic_load(v38))
        {
          v46 = atomic_load(v38 + 1);
          if (v46 == 1)
          {
            v47 = atomic_load(v38 + 3);
            v48 = v552 == v26 ? 0 : v44;
            if (!v47)
            {
              v44 = v48;
            }
          }
        }

        v543 = v38;
        _ZF = v552 == v26 || v530 == 0;
        v523 = v44;
        if (_ZF)
        {
          v527 = 0;
          v50 = 0;
          *&v542[4] = 0;
          v544 = 0;
          v525 = 0;
          v51 = 248;
          v52 = INFINITY;
          v53 = v554;
          goto LABEL_50;
        }

        v527 = 0;
        v550 = 0;
        v546.i32[0] = 0;
        v525 = 0;
        v544 = 0;
        *&v542[8] = 0;
        HIDWORD(v513) = v40;
        LODWORD(v536) = (v40 & 0x10000) == 0;
        LODWORD(v551) = v39 & (v41 ^ 1);
        v553.i32[0] = v551 ^ 1 | v42;
        *v542 = v7 & 1;
        v535 = (*v542 << 8);
        *&v534 = v559;
        v517 = v602;
        v61 = v530 - 8;
        LODWORD(v547) = 3;
        v524.f64[0] = INFINITY;
        v533 = xmmword_183E20F10;
        v532 = xmmword_183E20F20;
        v531 = 0x40000000;
        v516 = 0.01;
        while (1)
        {
          v62 = *(v10 + 96);
          os_unfair_lock_lock((v10 + 16));
          v63 = *(v10 + 288);
          os_unfair_lock_unlock((v10 + 16));
          v64 = (*(*v62 + 336))(v62, *v542 | 8u, v9, v63);
          if (v64)
          {
            v51 = v64;
            v53 = v554;
            if (v64 == 255)
            {
              v199 = (*(**(v10 + 96) + 2272))(*(v10 + 96));
              v52 = v524.f64[0];
              if (v199)
              {
                v200 = *(v10 + 96);
                os_unfair_lock_lock((v10 + 16));
                v201 = *(v10 + 288);
                os_unfair_lock_unlock((v10 + 16));
                v202 = (*(*v200 + 368))(v200, *v542, v9, v201);
                v550 = v550 & 0xFFFF00FFFFFFFFFFLL | (v202 << 40);
                if (!v202)
                {
                  memset(v660, 0, 24);
                  CA::WindowServer::Server::blanked_render_sil_indicators(v660, v9, v10);
                  v59 = *v660;
                  v544 |= *&v660[16];
                  v450 = v53;
                  if (v52 >= *v660)
                  {
                    v501 = v52 <= *v660 || *v660 == 0.0;
                    v502 = *&v542[4];
                    if (!v501)
                    {
                      v502 = 0;
                    }

                    *&v542[4] = *&v660[8] | v502;
                  }

                  else
                  {
                    v59 = v52;
                  }

                  v452 = v543;
                  v551 = 0;
                  v553.i64[0] = 0;
                  goto LABEL_626;
                }

                v51 = v202;
                v544 |= 0x1000000uLL;
                if (v52 >= v9)
                {
                  v553.i64[0] = 0;
                  v551 = 0;
                  v499 = v52 <= v9 || v9 == 0.0;
                  v500 = *&v542[4] | 0x1000000;
                  if (!v499)
                  {
                    v500 = 0x1000000;
                  }

                  *&v542[4] = v500;
                  v60 = 255;
                  v59 = v9;
                  goto LABEL_619;
                }

                v553.i64[0] = 0;
                v551 = 0;
                v60 = 255;
                goto LABEL_307;
              }

              v51 = 255;
              v50 = v550;
            }

            else
            {
              v50 = v550;
              v52 = v524.f64[0];
            }

LABEL_50:
            CA::WindowServer::Server::invalidate(v10, v53);
            v54 = *(v10 + 96);
            v55 = *(v54 + 82);
            v550 = v50 & 0xFFFF00FFFFFFFFFFLL | (v51 << 40);
            if (v55 && CA::WindowServer::Display::is_enabled_for_vsync_render(v54))
            {
              v544 |= 0x1000000uLL;
              v56 = v52 <= v9 || v9 == 0.0;
              v57 = *&v542[4];
              v58 = *&v542[4] | 0x1000000;
              if (!v56)
              {
                v58 = 0x1000000;
              }

              v553.i64[0] = 0;
              v551 = 0;
              if (v52 >= v9)
              {
                v59 = v9;
              }

              else
              {
                v59 = v52;
              }

              if (v52 >= v9)
              {
                v57 = v58;
              }

              *&v542[4] = v57;
              v60 = v51;
              goto LABEL_619;
            }

            v553.i64[0] = 0;
            v551 = 0;
            v60 = v51;
LABEL_307:
            v59 = v52;
            goto LABEL_619;
          }

          v65 = mach_absolute_time();
          v66 = CATimeWithHostTime(v65);
          v67 = *(v10 + 96);
          bzero(v587, 0x570uLL);
          v68 = (v67 + 200);
          LODWORD(v67) = (*(*v67 + 344))(v67);
          v69 = (*(**(v10 + 96) + 352))();
          CA::Render::Update::Update(v587, &v631, 0x2000uLL, v9, v549.i64[0], v548, v67, v69, v68, *(v10 + 184));
          if (!v587[0])
          {
            v550 = v550 & 0xFFFF00FFFFFFFFFFLL | 0xF50000000000;
            v59 = v524.f64[0];
            v160 = v554;
            goto LABEL_590;
          }

          v70 = (*(*v10 + 424))(v10);
          if (v70)
          {
            _ZF = v70 == CFRunLoopGetCurrent();
            v71 = v554;
            if (_ZF)
            {
              (*(*v529 + 376))(v529, v526, *v542, *(v10 + 296), v9, v14);
              v525 = 1;
            }
          }

          else
          {
            v71 = v554;
          }

          v72 = *(v10 + 96);
          if (v72[188] != v611)
          {
            v607 |= 4uLL;
            v72[188] = v611;
          }

          v598 = v538;
          if ((v72[160] & 0x100) != 0)
          {
            v73 = (*(*v72 + 144))(v72);
            if (!v73)
            {
              v73 = (*(**(v10 + 96) + 800))(*(v10 + 96));
            }

            v606 = vcvtad_u64_f64(1.0 / ((*(**(v10 + 96) + 776))(*(v10 + 96)) * v73));
            v72 = *(v10 + 96);
          }

          v74 = 32;
          if (!*(v10 + 825))
          {
            v74 = 0;
          }

          v75 = v74 | v629 & 0xFFFFFFFFFFFFFEDFLL | v535;
          v629 = v75;
          if (*(v10 + 826) == 1)
          {
            v76 = (*(*v72 + 1640))(v72);
            v75 = v629;
            v77 = 0x80000;
            if ((v551 & ~v76 & 1) == 0)
            {
              v77 = 0;
            }

            v72 = *(v10 + 96);
          }

          else
          {
            v77 = 0;
          }

          v629 = v75 & 0xFFFFFFFFFFF7FFFFLL | v77;
          v78 = (*(*v72 + 768))(v72);
          v617 = v14;
          v593 = v78;
          v594 = v14;
          v79 = atomic_load(v543 + 1);
          v629 = v629 & 0xFFFFFFFFFFFDFFFFLL | ((v79 == 1) << 17);
          v595 = (*(*v10 + 520))(v10);
          v80 = 512;
          if (!*(v10 + 836))
          {
            v80 = 0;
          }

          v629 = v629 & 0xFFFFFFFFFFFFFDFFLL | v80;
          v81 = (*(**(v10 + 96) + 2216))();
          v82 = 1024;
          if ((v81 & v536) == 0)
          {
            v82 = 0;
          }

          v629 = v629 & 0xFFFFFFFFFFFFFBFFLL | v82;
          v608 = (*(**(v10 + 96) + 1416))();
          (*(**(v10 + 96) + 1520))(v660);
          v601 = *v660;
          v84 = *(v10 + 96);
          if ((HIBYTE(xmmword_1ED4E97EC) & 1) == 0)
          {
            v629 = v629 & 0xFFFFFFFFFFEFFFFFLL | (((v84[160] >> 4) & 1) << 20);
          }

          if ((v84[160] & 0x100) != 0)
          {
            v85 = (*(*v84 + 128))(v84);
            if (v85)
            {
              v86 = atomic_load((*(v85 + 24) + 40));
            }

            else
            {
              v86 = 0;
            }

            v87 = (*(**(v10 + 96) + 776))(*(v10 + 96));
            v88 = (*(**(v10 + 96) + 784))();
            if (v600)
            {
              __assert_rtn("initialize_frame_rate_range_group", "render-updater.cpp", 12597, "_frame_rate_range_group == nullptr");
            }

            v600 = [[CAFrameRateRangeGroup alloc] initWithHeartbeatRate:v88 minimumFrameDuration:1 supportsVRR:0 compatQuantaMode:v86 & 1 serverCompatQuantaMode:v87];
            v89 = (*(**(v10 + 96) + 808))();
            v90 = 0x800000000;
            if (!v89)
            {
              v90 = 0;
            }

            v91 = v629 & 0xFFFFFFF7FFFFFFFFLL | v90;
            v629 = v91;
            v84 = *(v10 + 96);
            if ((v84[160] & 0x100) != 0)
            {
              v629 = v91 | 0x400000000;
            }

            v71 = v554;
          }

          v561 = 0;
          v560[1] = 0;
          v560[0] = 0;
          if (v553.i8[0])
          {
            v629 |= 0x8000uLL;
          }

          if (v71)
          {
            CA::shape_union(v588, v71, v83);
            v84 = *(v10 + 96);
          }

          v92 = (*(*v84 + 536))(v84);
          v93 = 0x200000;
          if ((v92 & (v546.i32[0] ^ 1)) == 0)
          {
            v93 = 0;
          }

          v94 = v629 & 0xFFFFFFFFFF9FFFFFLL | v93;
          v95 = 0x400000;
          if ((v92 & (v546.i32[0] ^ 1)) == 0)
          {
            v95 = 0;
          }

          v629 = v94 | v95;
          if (CADeviceNeedsP3ShapeTracking::once != -1)
          {
            dispatch_once(&CADeviceNeedsP3ShapeTracking::once, &__block_literal_global_53);
          }

          v96 = 0x800000;
          if (!CADeviceNeedsP3ShapeTracking::p3_tracking)
          {
            v96 = 0;
          }

          v629 = v629 & 0xFFFFFFFFFF7FFFFFLL | v96;
          v97 = (*(**(v10 + 96) + 544))();
          v98 = 0x2000000;
          if (v97)
          {
            v98 = 50331648;
          }

          v629 = v98 | v629 & 0xFFFFFFFFFCFFFFFFLL;
          v584[0] = 0u;
          *&v585[0] = 0;
          v585[4] = 0u;
          BYTE3(v585[2]) = 0;
          *(v584 + 12) = v533;
          *(v585 + 8) = v532;
          *(&v585[1] + 1) = 0;
          *(&v585[1] + 15) = 0;
          *(&v585[2] + 4) = 0x100000001;
          *(&v585[2] + 12) = 0u;
          *(&v585[3] + 12) = 0u;
          BYTE12(v585[4]) = 0;
          HIDWORD(v584[1]) = 1065353216;
          LODWORD(v586[0]) = 1065353216;
          *(v586 + 12) = 0;
          *(v586 + 4) = 0;
          DWORD1(v586[1]) = -1;
          (*(**(v10 + 96) + 1072))();
          CA::WindowServer::Display::reconciled_display_attributes(v584, *(v10 + 96));
          CA::Render::Update::set_display_attributes(&v610, v584);
          if (!CA::Render::DisplayAttributes::operator==(v10 + 352, v584))
          {
            v629 |= 0x20000000000uLL;
            v99 = v586[0];
            *(v10 + 448) = v585[4];
            *(v10 + 464) = v99;
            *(v10 + 480) = *&v586[1];
            v100 = v585[1];
            *(v10 + 384) = v585[0];
            *(v10 + 400) = v100;
            v101 = v585[3];
            *(v10 + 416) = v585[2];
            *(v10 + 432) = v101;
            v102 = v584[1];
            *(v10 + 352) = v584[0];
            *(v10 + 368) = v102;
          }

          v618 = v28;
          v558[0] = MEMORY[0x1E69E9820];
          v558[1] = v531;
          v559[0] = ___ZN2CA12WindowServer6Server15render_for_timeEdPK11CVTimeStampyPK17CATimingReferencej_block_invoke;
          v559[1] = &__block_descriptor_tmp_42_17304;
          v559[2] = v10;
          _Block_release(v619);
          v619 = _Block_copy(v558);
          v103 = *(v10 + 96);
          v104 = *(v103 + 872);
          v105 = *(v103 + 876);
          v106 = *(v103 + 880);
          v107 = *(v103 + 884);
          v555 = __PAIR64__(v105, LODWORD(v104));
          v556 = __PAIR64__(v107, v106);
          v108 = __sincosf_stret(v104);
          cosval = v108.__cosval;
          sinval = v108.__sinval;
          v624 = v105;
          v625 = v106;
          v626 = v107;
          *v660 = *(v103 + 888);
          if (v555 != *v660 || v556 != *&v660[8])
          {
            v629 |= 0x800000000000uLL;
            *(v103 + 888) = v104;
            *(v103 + 892) = v105;
            *(v103 + 896) = v106;
            *(v103 + 900) = v107;
          }

          v569[0] = 0;
          v569[1] = 0;
          CA::Render::Fence::BatchWaitLock::BatchWaitLock(v569);
          v110 = v552;
          if (v552)
          {
            v111 = 0;
            v112 = INFINITY;
            v113 = 1.0;
            do
            {
              v114 = *&v61[8 * v110];
              pthread_mutex_lock((v114 + 72));
              if (v43)
              {
                *(v114 + 12) |= 0x2000u;
              }

              CA::Render::Update::add_context(v587, v114);
              if ((v561 & 0x100) == 0)
              {
                CA::WindowServer::get_context_logical_bounds(v114, (&v561 + 1), v560, &v561, v115);
              }

              --v110;
              if (*(v114 + 488) < v112)
              {
                v112 = *(v114 + 488);
              }

              *(v114 + 488) = 0x7FF0000000000000;
              v116 = *(v114 + 584);
              v111 |= (v116 & 0x80) >> 7;
              *(v114 + 584) = v116 & 0xFF7F;
              pthread_mutex_unlock((v114 + 72));
            }

            while (v110);
            v117 = 8;
            if ((v111 & 1) == 0)
            {
              v117 = 0;
            }

            v540 = v117;
            v71 = v554;
          }

          else
          {
            v540 = 0;
            v112 = INFINITY;
            v113 = 1.0;
          }

          CA::Render::Fence::BatchWaitLock::invalidate(v569);
          _Block_release(v619);
          v619 = _Block_copy(0);
          if (v71)
          {
            CA::Render::Update::invalidate_backdrops(v587, v71, 0, 1);
          }

          CA::Render::Update::added_all_contexts(v587, v118, v119);
          v120 = v600;
          if (v600)
          {
            v121 = (v629 >> 36) & 7;
            if (v121 && v121 != 6)
            {
              v122 = v121 > 1;
              if (initialize_velocity_thresholds(void)::once != -1)
              {
                dispatch_once(&initialize_velocity_thresholds(void)::once, &__block_literal_global_19_18974);
              }

              v123 = 0.0;
              if ((v122 - v121) < 0xFFFFFFFFFFFFFFFCLL)
              {
                v124 = 0.0;
                v125 = 0.0;
              }

              else
              {
                v124 = 0.0;
                v125 = 0.0;
                if (has_velocity_thresholds)
                {
                  v126 = (&velocity_threshold_frame_rate_ranges + 12 * (v122 - v121) + 48);
                  LODWORD(v124) = *v126;
                  LODWORD(v123) = v126[1];
                  LODWORD(v125) = v126[2];
                }
              }

              v127 = (v629 >> 36) & 7;
              if (v127 == 1 || v127 == 2 && (v629 & 0x40000000000000) != 0)
              {
                v125 = 0.0;
              }

              [(CAFrameRateRangeGroup *)v120 addFrameRateRange:v124, v123, v125];
            }

            *v660 = xmmword_183E20FF0;
            CA::Render::post_notification(0x3Bu, 0, v660, 0);
            LODWORD(v645.f64[1]) = 0;
            v645.f64[0] = 0.0;
            *&v645.f64[0] = [(CAFrameRateRangeGroup *)v120 arbitratedIntervalRange];
            LODWORD(v645.f64[1]) = v128;
            if ((!*v660 || v660[8] == 1) && ![(CAFrameRateRangeGroup *)v120 hasCompatQuantaIntent])
            {
              (*(**(v10 + 96) + 272))(*(v10 + 96));
            }

            (*(**(v10 + 96) + 2160))(*(v10 + 96));
            (*(**(v10 + 96) + 1984))();
          }

          atomic_store(*&v594, &CA::Render::Context::_begin_time_threshold);
          v129 = (*(&v607 + 1) & 0x180) != 0;
          if (initialized[0] != -1)
          {
            dispatch_once_f(initialized, 0, init_debug);
          }

          v130 = *&dword_1ED4E9690;
          if (*&dword_1ED4E9690 > v113 && *&dword_1ED4E9690 != *&CA::WindowServer::Server::render_for_time(double,CVTimeStamp const*,unsigned long long,CATimingReference const*,unsigned int)::last_desired_headroom)
          {
            CA::WindowServer::Server::render_for_time(double,CVTimeStamp const*,unsigned long long,CATimingReference const*,unsigned int)::last_desired_headroom = dword_1ED4E9690;
            if (BYTE14(xmmword_1ED4E980C) == 1)
            {
              kdebug_trace();
            }

            if ((v628 - v627) <= 0xFF)
            {
              *v660 = 256;
              *&v660[4] = -1;
              *&v660[8] = v130;
              *&v660[12] = v130;
              X::small_vector_base<CA::Render::Update::EDRRequest>::push_back(&v627, v660);
            }
          }

          if (v130 != 0.0)
          {
            goto LABEL_172;
          }

          v131 = v620;
          if ((*(&v607 + 1) & 0x180) != 0 && v620 <= v621)
          {
            v131 = v621;
          }

          if (v131 <= v113 || (*(*(v10 + 96) + 906) & 2) != 0)
          {
            break;
          }

          v129 = 1;
LABEL_173:
          v132 = *(v10 + 96);
          *(v132 + 736) = v131;
          if (v131 > v113 || (*(v132 + 906) & 2) != 0)
          {
            if ((*(v132 + 640) & 4) != 0)
            {
              v133 = 1;
              if ((*(v132 + 906) & 2) == 0 && (byte_1ED4E9864 & 1) == 0)
              {
                v133 = CA::WindowServer::Display::all_clones_are_screen_recording(v132);
                v132 = *(v10 + 96);
              }
            }

            else
            {
              v133 = 1;
            }
          }

          else
          {
            v133 = 0;
          }

          if (BYTE11(xmmword_1ED4E988C))
          {
            v541.i32[0] = 0;
            v137 = 0;
            v134 = 0.0;
            goto LABEL_199;
          }

          if (v129)
          {
            if (v131 >= *(v132 + 728))
            {
              *(v132 + 712) = v9;
              *(v132 + 728) = v131;
            }

            else if (v131 >= *(v132 + 732))
            {
              *(v132 + 720) = v9;
              *(v132 + 732) = v131;
            }
          }

          v134 = *(v132 + 712);
          v135 = v134 + 15.0 < v9;
          if (v134 + 15.0 < v9)
          {
            v136 = *(v132 + 732);
            if (v136 <= v113)
            {
              v541.i32[0] = 0;
              v137 = 0;
              *(v132 + 728) = -1082130432;
LABEL_199:
              v545.i32[0] = 1;
              goto LABEL_200;
            }

            v134 = *(v132 + 720);
            *(v132 + 712) = v134;
            *(v132 + 728) = v136;
            *(v132 + 732) = -1082130432;
            v131 = v136;
          }

          else
          {
            v131 = *(v132 + 728);
          }

          v545.i32[0] = 0;
          v137 = 1;
          v541.i32[0] = v135;
          if (((v129 | v133) & 1) == 0 && v131 > 0.0)
          {
            if (BYTE14(xmmword_1ED4E980C) == 1)
            {
              kdebug_trace();
            }

            if ((v628 - v627) <= 0xFF)
            {
              *v660 = 128;
              *&v660[4] = -1;
              *&v660[8] = v131;
              *&v660[12] = v131;
              X::small_vector_base<CA::Render::Update::EDRRequest>::push_back(&v627, v660);
            }

            v545.i32[0] = 0;
            v132 = *(v10 + 96);
          }

LABEL_200:
          v138 = *(v132 + 904);
          if ((*(*v10 + 128))(v10) && v129 | v133 | v137)
          {
            v140 = v587;
            v141 = v10;
            v142 = 1;
            v139.n128_f32[0] = v131;
          }

          else
          {
            v139.n128_u64[0] = 0;
            v141 = v10;
            v142 = 0;
            v140 = 0;
          }

          (*(*v10 + 512))(v141, v142, (v138 >> 17) & 1, v140, v139);
          v143 = v609;
          v144 = v551;
          if (v609)
          {
            v145 = *(v10 + 96);
            if ((v145[160] & 4) == 0)
            {
              v146 = (*(*v145 + 1416))(v145);
              v143 = v609;
              if (v146)
              {
                v143 = v609 | v146;
                v609 |= v146;
              }
            }
          }

          if (*(v10 + 304) != v143)
          {
            v147 = *(v10 + 96);
            memset(v660, 0, 48);
            CA::Shape::operator=(v660, (v147 + 168));
            CA::shape_union(v588, v660, v148);
            *(v10 + 304) = v609;
          }

          if ((v629 & 0x8000000000) != 0 && (*(**(v10 + 96) + 600))(*(v10 + 96)))
          {
            v149 = *(v10 + 96);
            memset(v660, 0, 48);
            CA::Shape::operator=(v660, (v149 + 168));
            CA::shape_union(v588, v660, v150);
          }

          if (*(v10 + 831) == 1)
          {
            v151 = *(v10 + 96);
            memset(v660, 0, 48);
            CA::Shape::operator=(v660, (v151 + 168));
            CA::shape_union(v588, v660, v152);
            *(v10 + 831) = 0;
          }

          v153 = mach_absolute_time();
          v612 = CATimeWithHostTime(v153) - v66;
          v155 = *(v10 + 96);
          if (HIBYTE(v561) == 1)
          {
            if (CA::WindowServer::Display::set_logical_bounds(v155, v560, v561))
            {
              goto LABEL_220;
            }
          }

          else
          {
            v156 = *(v155 + 904);
            if ((v156 & 8) != 0)
            {
              *(v155 + 184) = 0;
              *(v155 + 192) = 0;
              *(v155 + 904) = v156 & 0xFFFFFFB7;
              if (CA::WindowServer::Display::update_actual_bounds(v155))
              {
LABEL_220:
                memset(v660, 0, 48);
                CA::Shape::operator=(v660, v68);
                CA::shape_union(v588, v660, v157);
                v553.i32[0] = 1;
                goto LABEL_223;
              }
            }
          }

          if (v605 == CA::Render::LayerHost::_seed[0])
          {
            v158 = v547;
            goto LABEL_229;
          }

LABEL_223:
          v158 = v547 - 1;
          if (v547 >= 1)
          {
            if (v554)
            {
              CA::Shape::unref(v554);
            }

            v159 = v588[0];
            if (v588[0])
            {
              v159 = CA::Shape::ref(v588[0], v154);
            }

            v554 = v159;
            v546.i32[0] |= (v607 & 2) == 0;
            v629 |= 0x10uLL;
            goto LABEL_303;
          }

LABEL_229:
          if ((v545.i32[0] | v129 & (v541.i32[0] ^ 1)))
          {
            *&v542[4] = 0;
            v544 = 0;
            v524.f64[0] = INFINITY;
            v160 = v554;
          }

          else
          {
            v524.f64[0] = v134 + 15.0;
            v160 = v554;
            *&v542[4] = 0x80000000000;
            v544 = 0x80000000000;
          }

          (*(**(v10 + 96) + 2016))(*(v10 + 96));
          v162 = v161;
          if ((*(**(v10 + 96) + 2032))() && (v163 = (*(**(v10 + 96) + 752))(*(v10 + 96)), round(100.0 / v163) * v516 == 60.0) && round(v162 / (*(**(v10 + 96) + 752))(*(v10 + 96))) >= 2.0)
          {
            *(v10 + 830) = 1;
            v164 = v607;
          }

          else
          {
            v164 = v607;
            *(v10 + 830) = (v607 & 0x800) != 0;
          }

          if ((v164 & 0x1000104) != 0 || v588[0] && CA::Shape::area(v588[0]) || (*(**(v10 + 96) + 320))(*(v10 + 96)) || (CA::WindowServer::Display::benchmark_mode(0, v192) & 1) != 0 || (v193 = *(v10 + 96), (v193[905] & 0x20) != 0))
          {
            *(*(v10 + 96) + 904) &= ~0x2000u;
            v165 = 1;
          }

          else
          {
            v194 = (*(*v193 + 496))(v193, v603);
            v165 = v194 ^ 1;
            if (v607 & 0x40000) == 0 && (v194)
            {
              v504 = 0xF60000000000;
LABEL_325:
              v203 = v524.f64[0];
              v550 = v550 & 0xFFFF00FFFFFFFFFFLL | v504;
LABEL_573:
              v418 = CA::Render::Update::build_hit_test_tree(v587, 0, v195, 1.0);
              os_unfair_lock_lock((v10 + 340));
              v419 = *(v10 + 344);
              *(v10 + 344) = v418;
              os_unfair_lock_unlock((v10 + 340));
              if (v419)
              {
                CA::Render::HitTestTree::unref(v419);
              }

              if ((*(*v10 + 432))(v10))
              {
                v420 = (*(*v10 + 432))(v10);
                v421 = v589;
                v422 = *v420;
                v423 = v604;
                *(v422 + 159) = v603;
                *(v422 + 160) = v423;
                CA::Render::Update::release_objects(v587);
                v424 = *v420;
                v424[81] = v421;
                (*(*v424 + 264))();
              }

              if (BYTE5(ca_debug_options) == 1)
              {
                CA::WindowServer::print_layer_trees(v517, v589);
              }

              v59 = v590;
              if (v203 >= v590)
              {
                v425 = v203 <= v590 || v590 == 0.0;
                v426 = *&v542[4];
                if (!v425)
                {
                  v426 = 0;
                }

                *&v542[4] = v591 | v426;
              }

              else
              {
                v59 = v203;
              }

              v544 |= v592;
              if ((v599 + 1) >= 2)
              {
                (*(*v10 + 392))(v10);
              }

              (*(**(v10 + 96) + 2008))(*(v10 + 96), v596, v597);
              CA::Render::Fence::BatchWaitLock::invalidate(v569);
LABEL_590:
              v427 = v160;
              (*(**(v10 + 96) + 2024))(*(v10 + 96), v630);
              v428 = *(v10 + 200);
              if (v428)
              {
                v429 = *v428;
                v430 = v604;
                *(v429 + 159) = v603;
                *(v429 + 160) = v430;
                CA::Render::Update::release_objects(v587);
                v431 = *v428;
                v431[81] = v9;
                (*(*v431 + 264))();
              }

              v432 = (*(*v10 + 432))(v10);
              if (v432)
              {
                v434 = v432;
                v435 = *v432;
                v553.i64[0] = *(*v432 + 1256);
                v551 = *(v435 + 1264);
                if ((CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::initialized & 1) == 0)
                {
                  CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::initialized = 1;
                  v660[0] = 0;
                  v436 = *MEMORY[0x1E695E8A8];
                  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PerfWarnings", *MEMORY[0x1E695E8A8], v660);
                  if (v660[0])
                  {
                    CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::enable_warnings = AppBooleanValue != 0;
                  }

                  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"PerfTimeThreshold", v436, v660);
                  if (v660[0])
                  {
                    *&CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::time_threshold = (AppIntegerValue * 0.001);
                  }

                  v439 = CFPreferencesGetAppIntegerValue(@"PerfInputDelayThreshold", v436, v660);
                  if (v660[0])
                  {
                    *&CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::input_delay_threshold = (v439 * 0.001);
                  }

                  v440 = CFPreferencesGetAppIntegerValue(@"PerfOffscreenThreshold", v436, v660);
                  if (v660[0])
                  {
                    CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::passes_threshold = v440;
                  }
                }

                if (CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::enable_warnings & 1) != 0 || (BYTE10(xmmword_1ED4E97EC))
                {
                  v441 = mach_absolute_time();
                  v442 = CATimeWithHostTime(v441);
                  if (v442 >= *(v10 + 312) + 5.0)
                  {
                    v443 = v612;
                    v444 = v613;
                    if (v616 == 0.0)
                    {
                      v445 = v616;
                    }

                    else
                    {
                      v445 = v589 - v616;
                    }

                    v446 = *v434;
                    v447 = *(*v434 + 1264);
                    v448 = *(v446 + 1272);
                    if (initialized[0] != -1)
                    {
                      dispatch_once_f(initialized, 0, init_debug);
                    }

                    v53 = v427;
                    if (*&dword_1ED4E967C)
                    {
                      *&CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::time_threshold = (*&dword_1ED4E967C * 0.001);
                    }

                    if (*&dword_1ED4E9680)
                    {
                      *&CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::input_delay_threshold = (*&dword_1ED4E9680 * 0.001);
                    }

                    v449 = *&dword_1ED4E9684;
                    if (*&dword_1ED4E9684)
                    {
                      CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::passes_threshold = *&dword_1ED4E9684;
                    }

                    else
                    {
                      v449 = CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::passes_threshold;
                    }

                    if (v444 + v443 <= *&CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::time_threshold && v445 <= *&CA::WindowServer::Server::check_performance(CA::OGL::Renderer *,CA::Render::Update *)::input_delay_threshold && v447 <= v449)
                    {
                      goto LABEL_618;
                    }

                    LODWORD(v554) = v447;
                    memset(v660, 0, 24);
                    CA::WindowServer::show_layer_trees(v660, v517, v589);
                    if (*v660)
                    {
                      v497 = CFStringCreateWithCString(0, *v660, 0x8000100u);
                      v498 = v448;
                      if (*v660)
                      {
                        free(*v660);
                        memset(v660, 0, 24);
                      }
                    }

                    else
                    {
                      v498 = v448;
                      v497 = 0;
                    }

                    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    CA_CFDictionarySetDouble(Mutable, @"WarningTime", v442);
                    CA_CFDictionarySetDouble(Mutable, @"UpdateTime", v589);
                    CA_CFDictionarySetDouble(Mutable, @"UpdateInputTime", v616);
                    CA_CFDictionarySetDouble(Mutable, @"UpdateInputDelay", v445);
                    CA_CFDictionarySetDouble(Mutable, @"UpdateCreationTime", v612);
                    CA_CFDictionarySetDouble(Mutable, @"UpdateRenderTime", v613);
                    CA_CFDictionarySetInt(Mutable, @"UpdatePrepareLayerCount", v614);
                    CA_CFDictionarySetInt(Mutable, @"UpdatePrepareLayer0Count", v615);
                    CA_CFDictionarySetInt(Mutable, @"RenderOffscreenPasses", v554);
                    CA_CFDictionarySetInt(Mutable, @"RenderShaderCompiles", v498);
                    if (v497)
                    {
                      CFDictionarySetValue(Mutable, @"LayerTree", v497);
                      CFRelease(v497);
                    }

                    *(v10 + 312) = v442;
                    *(v10 + 320) = Mutable;
                    notify_post("com.apple.CoreAnimation.CAWindowServer.Performance");
                  }
                }
              }

              else
              {
                v553.i64[0] = 0;
                v551 = 0;
              }

              v53 = v427;
LABEL_618:
              CA::Render::Update::~Update(v587, v433);
              v60 = 0;
              v51 = BYTE5(v550);
LABEL_619:
              if (!v537 || v51 < 4)
              {
                v450 = v53;
                v452 = v543;
                if (!v552)
                {
LABEL_633:
                  if (v522)
                  {
                    free(v530);
                  }

                  v456 = v450;
                  v457 = v544;
                  if (v537)
                  {
                    v523 = 1;
                  }

                  v458 = atomic_load(v452 + 3);
                  (*(*v10 + 184))(v10, v523, v458);
                  if (v456)
                  {
                    CA::Shape::unref(v456);
                  }

                  v459 = *&v542[4];
                  if (v552 == v26 || !*(*(v10 + 96) + 656) || (v460 = atomic_load(v452 + 1)) == 0 || (v461 = atomic_load(v452 + 5)) == 0)
                  {
                    (*(*v10 + 496))(v10);
                  }

                  if (xmmword_1ED4E97DC == 1)
                  {
                    v457 |= 0x2000000000000000uLL;
                    if (v59 >= v9)
                    {
                      if (v59 <= v9 || v9 == 0.0)
                      {
                        v459 |= 0x2000000000000000uLL;
                      }

                      else
                      {
                        v459 = 0x2000000000000000;
                      }

                      v59 = v9;
                    }
                  }

                  v462 = atomic_load(v452 + 1);
                  if (v462 == 1 && (v463 = atomic_load(v452 + 5), v463 == 1))
                  {
                    if (!atomic_load(v452 + 3))
                    {
                      v465 = (*(**(v10 + 96) + 320))(*(v10 + 96));
                      if (v59 <= v9 || v9 == 0.0)
                      {
                        v467 = v459;
                      }

                      else
                      {
                        v467 = 0;
                      }

                      v468 = v465 | v467;
                      if (v59 >= v9)
                      {
                        v469 = v9;
                      }

                      else
                      {
                        v469 = v59;
                      }

                      if (v59 < v9)
                      {
                        v468 = v459;
                      }

                      if (v465)
                      {
                        v59 = v469;
                        v459 = v468;
                        v457 |= v465;
                      }
                    }
                  }

                  else if (((*(**(v10 + 96) + 2272))(*(v10 + 96)) & 1) == 0)
                  {
                    v457 |= 0x40000uLL;
                    if (v59 <= v9 + 0.1)
                    {
                      if (v59 >= v9 + 0.1 || v9 + 0.1 == 0.0)
                      {
                        v459 |= 0x40000uLL;
                      }

                      else
                      {
                        v459 = 0x40000;
                      }

                      v59 = v9 + 0.1;
                    }

                    v550 = v550 & 0xFFFF00FFFFFFFFFFLL | 0xF70000000000;
                  }

                  v471 = *(*(v10 + 96) + 48);
                  pthread_mutex_unlock((v10 + 24));
                  *v660 = v59;
                  *&v660[8] = v459;
                  *&v660[16] = v457;
                  (*(*v10 + 176))(v10, v660, v9);
                  v472 = atomic_load(v452 + 3);
                  if (v472 && v471)
                  {
                    *v660 = 0;
                    *&v660[8] = vdupq_n_s64(0x80000uLL);
                    (*(*v471 + 176))(v471, v660, 0.0);
                  }

                  if (BYTE6(ca_debug_options) == 1)
                  {
                    memset(v660, 0, 24);
                    CA::Render::show_statistics(v660);
                    if (x_log_get_windowserver(void)::once != -1)
                    {
                      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
                    }

                    v509 = x_log_get_windowserver(void)::log;
                    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
                    {
                      v510 = x_stream_get(v660);
                      v631 = 136315138;
                      v632 = v510;
                      _os_log_impl(&dword_183AA6000, v509, OS_LOG_TYPE_DEFAULT, "render_for_time statistics:\n%s", &v631, 0xCu);
                    }

                    if (*v660)
                    {
                      free(*v660);
                    }
                  }

                  CA::Render::collect(0, v9);
                  *v660 = 0;
                  *&v660[8] = 0;
                  mach_get_times();
                  v473 = *&v660[8];
                  pthread_mutex_lock((v10 + 528));
                  v474 = *(v10 + 600);
                  v475 = *(v10 + 592);
                  v476 = &v474[-v475];
                  v477 = 0xCCCCCCCCCCCCCCCDLL * (&v474[-v475] >> 3);
                  v478 = *(v10 + 616);
                  if (v477 == v478)
                  {
                    if (v474 != (v475 + 40))
                    {
                      memmove(*(v10 + 592), (v475 + 40), &v474[-v475 - 42]);
                      v474 = *(v10 + 600);
                      v475 = *(v10 + 592);
                    }

                    if (v474 <= v475)
                    {
                      __assert_rtn("pop_back", "x-small-vector.h", 420, "_end > _begin && pop_back on empty container");
                    }

                    v474 -= 40;
                    *(v10 + 600) = v474;
                    v478 = *(v10 + 616);
                    v476 = &v474[-v475];
                    v477 = 0xCCCCCCCCCCCCCCCDLL * (&v474[-v475] >> 3);
                  }

                  v479 = v477 + 1;
                  if (v478 < v479)
                  {
                    v480 = *(v10 + 608);
                    v481 = (v478 + 1) | ((v478 + 1) >> 1) | (((v478 + 1) | ((v478 + 1) >> 1)) >> 2);
                    v482 = v481 | (v481 >> 4) | ((v481 | (v481 >> 4)) >> 8);
                    v483 = v482 | (v482 >> 16) | ((v482 | (v482 >> 16)) >> 32);
                    if (v483 + 1 > v479)
                    {
                      v484 = v483 + 1;
                    }

                    else
                    {
                      v484 = v479;
                    }

                    v485 = malloc_type_malloc(40 * v484, 0x100004053E81896uLL);
                    v486 = v485;
                    v487 = *(v10 + 592);
                    v488 = *(v10 + 600);
                    if (v487 != v488)
                    {
                      v489 = v485;
                      do
                      {
                        v490 = *v487;
                        v491 = v487[1];
                        *(v489 + 4) = *(v487 + 4);
                        *v489 = v490;
                        *(v489 + 1) = v491;
                        v489 += 40;
                        v487 = (v487 + 40);
                      }

                      while (v487 != v488);
                    }

                    if (v475 != v480)
                    {
                      free(*(v10 + 592));
                    }

                    *(v10 + 592) = v486;
                    v474 = &v476[v486];
                    *(v10 + 600) = &v476[v486];
                    *(v10 + 616) = v484;
                  }

                  v492 = v527;
                  *v474 = v528;
                  *(v474 + 1) = v473;
                  *(v474 + 2) = v492;
                  LODWORD(v492) = v518;
                  *(v474 + 6) = v548;
                  *(v474 + 7) = v492;
                  v493 = BYTE5(v550);
                  *(v474 + 4) = v550;
                  *(v10 + 600) += 40;
                  pthread_mutex_unlock((v10 + 528));
                  v494 = v521;
                  if (v521 + 1 >= 2 && os_signpost_enabled(v514))
                  {
                    v511 = CA::WindowServer::Server::RenderIntervalInfo::render_status_to_legacy_reason_code(v493);
                    v512 = _MXSignpostMetricsSnapshot();
                    *v660 = 67240450;
                    *&v660[4] = v511;
                    *&v660[8] = 2114;
                    *&v660[10] = v512;
                    _os_signpost_emit_with_name_impl(&dword_183AA6000, v514, OS_SIGNPOST_INTERVAL_END, v494, "Rendering", "reason=%{public,name=reason}d\n%{public, signpost:metrics}@", v660, 0x12u);
                  }

                  kdebug_trace();
                  v495 = mach_absolute_time();
                  v11 = v520;
                  qword_1EA850F08 += v495 - v519;
                  if (v525)
                  {
                    (*(*v529 + 384))(v529);
                  }

                  goto LABEL_694;
                }

LABEL_629:
                v453 = v530;
                v454 = v552;
                do
                {
                  v455 = *v453;
                  if (atomic_fetch_add((*v453 + 8), 0xFFFFFFFF) == 1)
                  {
                    (*(*v455 + 16))(v455);
                  }

                  v453 += 8;
                  --v454;
                }

                while (v454);
                goto LABEL_633;
              }

              if (x_log_get_flipbook(void)::once != -1)
              {
                dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
              }

              v450 = v53;
              v451 = x_log_get_flipbook(void)::log;
              if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
              {
                *v660 = 67109376;
                *&v660[4] = v60;
                *&v660[8] = 1024;
                *&v660[10] = v51;
                _os_log_impl(&dword_183AA6000, v451, OS_LOG_TYPE_DEFAULT, "non-detached render failed with can_update_status 0x%x, render_status 0x%x", v660, 0xEu);
              }

              v537 = 1;
              v452 = v543;
LABEL_626:
              if (!v552)
              {
                goto LABEL_633;
              }

              goto LABEL_629;
            }
          }

          if (!(*(**(v10 + 96) + 216))(*(v10 + 96)) || ((*(**(v10 + 96) + 328))(*(v10 + 96), v587) & 1) != 0)
          {
            if (CA::WindowServer::Display::is_enabled_for_vsync_render(*(v10 + 96)))
            {
              v544 |= 0x40000uLL;
              v203 = v524.f64[0];
              if (v524.f64[0] >= v9)
              {
                v204 = v524.f64[0] <= v9 || v9 == 0.0;
                v205 = *&v542[4] | 0x40000;
                if (!v204)
                {
                  v205 = 0x40000;
                }

                *&v542[4] = v205;
                v203 = v9;
              }

              v550 = v550 & 0xFFFF00FFFFFFFFFFLL | 0xF70000000000;
              CA::WindowServer::Server::invalidate(v10, v588[0]);
              goto LABEL_573;
            }

            v504 = 0xFF0000000000;
            goto LABEL_325;
          }

          v166 = mach_absolute_time();
          v167 = CATimeWithHostTime(v166);
          if (v165)
          {
            v168 = 0;
          }

          else
          {
            v168 = 8;
          }

          v557 = v168;
          (*(**(v10 + 96) + 400))();
          v629 = v629 & 0xFFFFFFFFFFFFFFF7 | v540;
          if ((*&v112 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v616 = v112;
            CAHostTimeWithTime(v112);
            kdebug_trace();
          }

          if (v602[1] == v517)
          {
            v550 = v550 & 0xFFFF00FFFFFFFFFFLL | 0x20000000000;
            goto LABEL_327;
          }

          os_unfair_lock_lock((v10 + 16));
          v169 = *(v10 + 288);
          *(v10 + 288) = v9;
          os_unfair_lock_unlock((v10 + 16));
          if (v169 != 0.0)
          {
            if (v600)
            {
              *v660 = 0;
              v170 = [(CAFrameRateRangeGroup *)v600 reasonsWithCount:v660];
              if (v170)
              {
                (*(**(v10 + 96) + 1992))(*(v10 + 96), v170, *v660, v9, v169);
              }
            }
          }

          if (HIBYTE(ca_debug_options))
          {
            CARecordFrame(0, 0, 0, 0, v9, 0.0, 0.0);
LABEL_327:
            v206 = (*(**(v10 + 96) + 408))(*(v10 + 96), v587, v557, 0);
            v203 = v524.f64[0];
            v207 = HIDWORD(v513);
            if ((v206 & 0x40000000000) != 0)
            {
              *v660 = 0;
              *&v660[8] = vdupq_n_s64(0x40000000000uLL);
              (*(*v10 + 176))(v10, v660, 0.0);
            }

            if ((v206 & 0xFFFFFBFFFFFFFFFFLL) != 0)
            {
              v544 |= 0x2000000uLL;
              if (v203 >= v9)
              {
                v208 = v203 <= v9 || v9 == 0.0;
                v209 = *&v542[4] | 0x2000000;
                if (!v208)
                {
                  v209 = 0x2000000;
                }

                *&v542[4] = v209;
                v203 = v9;
              }

              *(*(v10 + 96) + 904) |= 0x2000u;
              v550 = v550 & 0xFFFF00FFFFFFFFFFLL | 0xF90000000000;
              if ((v206 & 0x1000000) != 0)
              {
                *(v10 + 831) = 1;
              }
            }

            else
            {
              v537 = 0;
              if ((v207 & 0x10000) != 0)
              {
                *(*(v10 + 96) + 904) &= ~0x10000u;
              }
            }

            if (*(v10 + 504) != *(v10 + 512))
            {
              *&v533 = (*(*v10 + 432))(v10);
              if (v533)
              {
                v210 = v589;
                v538 = CAHostTimeWithTime(v589);
                v212 = *(v10 + 504);
                v211 = *(v10 + 512);
                if (v212 != v211)
                {
                  v540 = v671;
                  v535 = *v533;
                  v213 = 1.0;
                  v532 = xmmword_183E20E00;
                  v214 = 1.0;
                  v215.f64[0] = NAN;
                  v215.f64[1] = NAN;
                  v546 = vnegq_f64(v215);
                  v539 = v211;
                  v531 = &v651;
                  while (1)
                  {
                    stream_and_lock = CA::Render::ContentStream::get_or_create_stream_and_lock(*v212, 0, 0);
                    if (stream_and_lock)
                    {
                      break;
                    }

LABEL_558:
                    v212 += 52;
                    if (v212 == v211)
                    {
                      goto LABEL_561;
                    }
                  }

                  v221 = stream_and_lock;
                  if (*(stream_and_lock + 408) != 1)
                  {
                    goto LABEL_557;
                  }

                  v222 = *(v212 + 17);
                  if (v222 > 0.0 && v210 - *(stream_and_lock + 49) < v222)
                  {
                    goto LABEL_557;
                  }

                  v551 = stream_and_lock;
                  v223 = v540;
                  *(v540 + 224) = 0u;
                  *(v223 + 15) = 0u;
                  *(v223 + 12) = 0u;
                  *(v223 + 13) = 0u;
                  *(v223 + 10) = 0u;
                  *(v223 + 11) = 0u;
                  *(v223 + 8) = 0u;
                  *(v223 + 9) = 0u;
                  *(v223 + 6) = 0u;
                  *(v223 + 7) = 0u;
                  *(v223 + 4) = 0u;
                  *(v223 + 5) = 0u;
                  *(v223 + 2) = 0u;
                  *(v223 + 3) = 0u;
                  *v223 = 0u;
                  *(v223 + 1) = 0u;
                  v667 = v223;
                  v668 = v223;
                  v669 = v223;
                  v224 = *(v212 + 10);
                  v225 = *(v212 + 11);
                  v226 = v225 - v224;
                  v670 = 32;
                  if (v226 >= 0x21)
                  {
                    X::small_vector_base<X::Ref<CA::Render::Context>>::grow(&v667, v226);
                    v224 = *(v212 + 10);
                    v225 = *(v212 + 11);
                  }

                  while (v224 != v225)
                  {
                    v227 = CA::Render::Context::context_by_id(*v224);
                    if (v227)
                    {
                      v228 = v227;
                      v229 = v668;
                      v230 = v668 - v667 + 1;
                      if (v670 < v230)
                      {
                        X::small_vector_base<X::Ref<CA::Render::Context>>::grow(&v667, v230);
                        v229 = v668;
                      }

                      *v229 = v228;
                      v668 = (v229 + 1);
                    }

                    ++v224;
                  }

                  v231 = v551;
                  if (*(v551 + 400) && (xmmword_1ED4E97DC & 1) == 0)
                  {
                    v232 = v667;
                    v233 = v668;
                    while (v232 != v233)
                    {
                      v234 = *v232;
                      pthread_mutex_lock((*v232 + 72));
                      v235 = CA::Render::Context::root_layer_handle(*v232);
                      if (v235 && v235[22] >= v603)
                      {
                        pthread_mutex_unlock((v234 + 72));
                        v231 = v551;
                        goto LABEL_367;
                      }

                      pthread_mutex_unlock((v234 + 72));
                      ++v232;
                    }

                    memset(&v660[24], 0, 32);
                    *v660 = v538;
                    *&v660[8] = CAHostTimeWithTime(v617);
                    v236 = *(v551 + 404);
                    *&v660[16] = 2;
                    *&v660[20] = v236;
                    CA::Render::ContentStream::produce_surface(v551, 0, v660, 0);
                    v160 = v554;
LABEL_548:
                    v405 = v667;
                    v406 = v668;
                    if (v667 != v668)
                    {
                      do
                      {
                        v407 = *v405;
                        if (*v405 && atomic_fetch_add(v407 + 2, 0xFFFFFFFF) == 1)
                        {
                          (*(*v407 + 16))(v407);
                        }

                        ++v405;
                      }

                      while (v405 != v406);
                      v405 = v667;
                    }

                    v221 = v551;
                    if (v405 != v669)
                    {
                      free(v405);
                    }

                    v211 = v539;
LABEL_557:
                    pthread_mutex_unlock(v221);
                    goto LABEL_558;
                  }

LABEL_367:
                  v567 = 0uLL;
                  v568 = 0;
                  v237 = v231[41];
                  if (v231[40] == v237)
                  {
                    v238 = 0;
                  }

                  else
                  {
                    v567 = *(v237 - 24);
                    v568 = *(v237 - 8);
                    v231[41] = v237 - 24;
                    if (v231[46] != v231[47])
                    {
                      CA::Render::free_pending_names(v535, (v551 + 368));
                    }

                    v238 = v567;
                    if (!v567)
                    {
                      __assert_rtn("get_next_surface", "render-content-stream.cpp", 438, "surf.iosurface");
                    }

                    if (!v568)
                    {
                      v568 = (*(*v535 + 56))(v535, v567);
                    }

                    v231 = v551;
                    std::vector<CA::Render::ContentStreamSurface>::push_back[abi:nn200100](v551 + 344, &v567);
                  }

                  v565 = 0uLL;
                  v566 = 0;
                  if (!v231[37])
                  {
                    __assert_rtn("get_intermediate_surface", "render-content-stream.cpp", 451, "_intermediate_surf.iosurface");
                  }

                  if (!v231[39])
                  {
                    v231[39] = (*(*v535 + 56))(v535);
                  }

                  v239 = *(v231 + 37);
                  v565 = v239;
                  v566 = v231[39];
                  v240 = DWORD2(v567);
                  if (!DWORD2(v567) || !DWORD2(v565))
                  {
                    ++*(v551 + 404);
                    v160 = v554;
                    goto LABEL_548;
                  }

                  *&v239 = *(v212 + 2);
                  v536 = v239;
                  v241 = v667;
                  v242 = v668;
                  if ((v607 & 0x84002) != 0)
                  {
LABEL_381:
                    v583 = 0;
                    v243 = 0uLL;
                    v581 = 0u;
                    v582 = 0u;
                    v579 = 0u;
                    v580 = 0u;
                    v577 = 0u;
                    v578 = 0u;
                    v575 = 0u;
                    v576 = 0u;
                    v574 = 0u;
                    goto LABEL_382;
                  }

                  if (v667 != v668)
                  {
                    v254 = v667;
                    while (*(*v254 + 161) == *(*(v10 + 96) + 24) && (*(*v254 + 13) & 2) != 0)
                    {
                      if (++v254 == v668)
                      {
                        goto LABEL_404;
                      }
                    }

                    goto LABEL_381;
                  }

LABEL_404:
                  if (*(v212 + 19) != *(v212 + 18))
                  {
                    goto LABEL_381;
                  }

                  v255 = *(v212 + 7);
                  v583 = 0;
                  v243 = 0uLL;
                  v581 = 0u;
                  v582 = 0u;
                  v579 = 0u;
                  v580 = 0u;
                  v577 = 0u;
                  v578 = 0u;
                  v575 = 0u;
                  v576 = 0u;
                  v574 = 0u;
                  if (!v255)
                  {
                    v253 = 1;
                    v243.i64[0] = *((*(**(v10 + 96) + 464))(*(v10 + 96), 1) + 56);
                    v553 = v243;
                    v243.i64[1] = 0;
                    v549 = 0u;
                    goto LABEL_408;
                  }

LABEL_382:
                  if (v667 != v668)
                  {
                    v549 = v243;
                    v553 = v243;
                    while (1)
                    {
                      v244 = CA::Render::Context::root_layer_handle(*v241);
                      if (!v244)
                      {
                        goto LABEL_396;
                      }

                      v245 = *(v244 + 2);
                      if (!v245)
                      {
                        goto LABEL_396;
                      }

                      CA::Render::Layer::frame(v660, v245, 0);
                      v218.i64[1] = *&v660[24];
                      v243.i64[0] = *&v660[24];
                      if (*&v660[16] > *&v660[24])
                      {
                        v243.i64[0] = *&v660[16];
                      }

                      if (*v243.i64 < 1073741820.0)
                      {
                        __asm { FMOV            V3.2D, #0.5 }

                        v243 = vcvtq_s64_f64(vaddq_f64(vbslq_s8(v546, _Q3, *v660), *v660));
                        *v243.i8 = vmovn_s64(v243);
                        v249 = vaddq_f64(*v660, *&v660[16]);
                        v218 = vcvtq_s64_f64(vaddq_f64(vbslq_s8(v546, _Q3, v249), v249));
                        *v218.i8 = vsub_s32(vmovn_s64(v218), *v243.i8);
                      }

                      else
                      {
                        *v243.i8 = vdup_n_s32(0xE0000001);
                        v218.i64[0] = 0xC0000000C0000000;
                      }

                      *(&v219 + 1) = v553.i64[1];
                      *&v219 = vclez_s32(*v553.i8);
                      v250 = vpmax_u32(*&v219, *&v219).u32[0];
                      *&v219 = vclez_s32(*v218.i8);
                      v251 = vpmax_u32(*&v219, *&v219).u32[0];
                      if ((v250 & 0x80000000) != 0)
                      {
                        if ((v251 & 0x80000000) == 0)
                        {
                          goto LABEL_395;
                        }
                      }

                      else if ((v251 & 0x80000000) == 0)
                      {
                        *(&v219 + 1) = v553.i64[1];
                        v252 = vadd_s32(*v243.i8, *v218.i8);
                        *v243.i8 = vmin_s32(*v549.i8, *v243.i8);
                        *v218.i8 = vsub_s32(vmax_s32(vadd_s32(*v549.i8, *v553.i8), v252), *v243.i8);
LABEL_395:
                        v549 = v243;
                        v243.i64[0] = v218.i64[0];
                        v553 = v243;
                      }

LABEL_396:
                      if (++v241 == v242)
                      {
                        v253 = 0;
                        goto LABEL_408;
                      }
                    }
                  }

                  v253 = 0;
                  v549 = v243;
                  v553 = v243;
LABEL_408:
                  v256 = *(v212 + 72);
                  v257 = *(v212 + 73);
                  v243.i64[0] = 1.0;
                  v218.i64[0] = 1.0;
                  LODWORD(v547) = v256 | v257;
                  if ((v256 | v257))
                  {
                    v258 = v257;
                    *&v219 = 1.0;
                    if (v257)
                    {
                      v259 = vdiv_f32(vcvt_f32_s32(*&v536), vcvt_f32_s32(*v553.i8));
                      if (v259.f32[1] < v259.f32[0])
                      {
                        v259.f32[0] = v259.f32[1];
                      }

                      if (v259.f32[0] > v213)
                      {
                        v259.f32[0] = v213;
                      }

                      *&v219 = v259.f32[0];
                    }

                    if (v256)
                    {
                      v260.i64[0] = v553.i32[0];
                      v260.i64[1] = v553.i32[1];
                      v220 = vdupq_lane_s64(v219, 0);
                      v261 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_s64(v260), *&v219));
                      if (v261.f32[0] != 0.0)
                      {
                        *(&v219 + 1) = *(&v536 + 1);
                        v262.f32[0] = v536;
                        v263 = v261.f32[1] == 0.0 || v261.f32[0] == v262.f32[0];
                        if (!v263 && v261.f32[1] != SDWORD1(v536))
                        {
                          v262.f32[1] = SDWORD1(v536);
                          v220 = vmulq_n_f64(vcvtq_f64_f32(vdiv_f32(v262, v261)), *&v219);
                        }
                      }

                      *&v219 = v220.f64[1];
                      if (v257)
                      {
                        if (v220.f64[1] >= v220.f64[0])
                        {
                          *&v219 = v220.f64[0];
                        }

                        goto LABEL_428;
                      }
                    }

                    else
                    {
LABEL_428:
                      *&v220.f64[0] = v219;
                    }

                    v574 = v532;
                    v575 = 0uLL;
                    v265.f64[1] = 1.0;
                    v576 = xmmword_183E20E60;
                    v577 = 0u;
                    v578 = 0u;
                    v545 = v219;
                    if (v220.f64[0] == *&v219)
                    {
                      *&v582 = v220.f64[0];
                      *(&v582 + 1) = v214 / v220.f64[0];
                      v266 = 8 * (v220.f64[0] != v214);
                      v267 = v220.f64[0];
                    }

                    else
                    {
                      __asm { FMOV            V1.2D, #1.0 }

                      v582 = _Q1;
                      v266 = 16;
                      v267 = *&v219;
                    }

                    *(&v579 + 1) = *(&v532 + 1);
                    v580 = 0uLL;
                    v581 = xmmword_183E20E60;
                    *&v574 = v220.f64[0];
                    *(&v576 + 1) = v267;
                    *&v579 = 0x3FF0000000000000;
                    v265.f64[0] = -v549.i32[0];
                    LOBYTE(v583) = v266;
                    v541 = v220;
                    v269 = CA::Transform::translate(&v574, v265, -v549.i32[1], 0.0);
                    if (v258)
                    {
                      v269.f64[0] = trunc((v536 - *v541.i64 * v553.i32[0]) * 0.5 / *v541.i64);
                      CA::Transform::translate(&v574, v269, trunc((SDWORD1(v536) - *v545.i64 * v553.i32[1]) * 0.5 / *v545.i64), 0.0);
                    }

                    v243 = v545;
                    v218 = v541;
                  }

                  v541 = v218;
                  *&v564 = 0;
                  *(&v564 + 1) = v536;
                  v270 = v212[8];
                  v545 = v243;
                  if (v270 && v212[9] && (*v660 = vcvt_f32_u32(*(v212 + 6)), CA::Transform::apply_to_point2(&v574, v660, v217), v272 = vclez_s32(*(&v564 + 8)), v273 = vpmax_u32(v272, v272), (v273 & 0x80000000) == 0))
                  {
                    LODWORD(v273) = v212[8];
                    LODWORD(v271) = v212[9];
                    v274 = (*v541.i64 * v273);
                    v275 = (*v545.i64 * v271);
                    v276 = vclez_s32(__PAIR64__(v275, v274));
                    if ((vpmax_u32(v276, v276).u32[0] & 0x80000000) != 0 || (v277 = vcvt_s32_f32(*v660), *&v278 = vmax_s32(v277, 0), v279 = vsub_s32(vmin_s32(*(&v564 + 8), vadd_s32(__PAIR64__(v275, v274), v277)), *&v278), v280 = vclez_s32(v279), (vpmax_u32(v280, v280).u32[0] & 0x80000000) != 0))
                    {
                      *&v278 = 0;
                      *(&v564 + 1) = 0;
                    }

                    else
                    {
                      *(&v278 + 1) = v279;
                      v564 = v278;
                    }
                  }

                  else
                  {
                    *&v278 = 0;
                  }

                  v281 = v212[12];
                  if (v281)
                  {
                    v282 = v212[13];
                    if (v282)
                    {
                      v283 = vclez_s32(*(&v564 + 8));
                      if ((vpmax_u32(v283, v283).u32[0] & 0x80000000) == 0)
                      {
                        v284 = vclez_s32(__PAIR64__(v282, v281));
                        if ((vpmax_u32(v284, v284).u32[0] & 0x80000000) != 0 || (v285 = *(v212 + 10), v286 = vadd_s32(*&v278, *(&v564 + 8)), *&v278 = vmax_s32(*&v278, v285), v287 = vsub_s32(vmin_s32(v286, vadd_s32(v285, __PAIR64__(v282, v281))), *&v278), v288 = vclez_s32(v287), (vpmax_u32(v288, v288).u32[0] & 0x80000000) != 0))
                        {
                          *(&v564 + 1) = 0;
                        }

                        else
                        {
                          *(&v278 + 1) = v287;
                          v564 = v278;
                        }
                      }
                    }
                  }

                  if (v253)
                  {
                    v289 = (*(**(v10 + 96) + 464))(*(v10 + 96), 1);
                    v292 = CA::WindowServer::IOSurface::wrap_buffer(*(v10 + 96), v238, 0, 0);
                    v295 = v212[8];
                    v296 = v212[9];
                    if (v295)
                    {
                      v297 = v296 == 0;
                    }

                    else
                    {
                      v297 = 1;
                    }

                    v298 = v297;
                    LODWORD(v293.f64[0]) = v289[14];
                    LODWORD(v294) = v289[15];
                    v293.f64[0] = *&v293.f64[0];
                    v299 = v294;
                    v645 = 0uLL;
                    v646.f64[0] = v293.f64[0];
                    v646.f64[1] = v299;
                    v300 = 0.0;
                    v301 = 0.0;
                    if (!v297)
                    {
                      LODWORD(v293.f64[0]) = v212[6];
                      LODWORD(v299) = v212[7];
                      v301 = *&v293.f64[0];
                      v300 = *&v299;
                      v293.f64[0] = v295;
                      v299 = v296;
                      v645.f64[0] = v301;
                      v645.f64[1] = v300;
                      v646.f64[0] = v295;
                      v646.f64[1] = v296;
                    }

                    v302 = v212[12];
                    v303 = v212[13];
                    if (v302)
                    {
                      v304 = v303 == 0;
                    }

                    else
                    {
                      v304 = 1;
                    }

                    v305 = v304;
                    if (v304)
                    {
                      goto LABEL_517;
                    }

                    LODWORD(v526) = v305;
                    LODWORD(v534) = v298;
                    *&v536 = v210;
                    v306 = v203;
                    v307 = v302;
                    v308 = v303;
                    v293.f64[0] = *(v212 + 5);
                    v524 = v293;
                    v309 = LODWORD(v293.f64[0]);
                    v310 = HIDWORD(v293.f64[0]);
                    *v660 = v574;
                    *&v660[16] = v575;
                    *&v660[32] = v576;
                    *&v660[48] = v577;
                    v661 = v578;
                    v662 = v579;
                    v663 = v580;
                    v664 = v581;
                    v665 = v582;
                    v666 = v583 & 0x1F;
                    CA::Transform::invert(v660, v290, v291);
                    *&v633.f64[0] = vcvt_f32_u32(*&v524.f64[0]);
                    *&v311 = v309 + v307;
                    *&v312 = v310 + v308;
                    *&v570[0].f64[0] = __PAIR64__(v312, v311);
                    CA::Transform::apply_to_point2(v660, v633.f64, v313);
                    CA::Transform::apply_to_point2(v660, v570[0].f64, v314);
                    v293 = v646;
                    v315 = vclezq_f64(v646);
                    if ((vorrq_s8(vdupq_laneq_s64(v315, 1), v315).u64[0] & 0x8000000000000000) != 0)
                    {
                      v203 = v306;
                      v210 = *&v536;
                      v213 = 1.0;
                      v214 = 1.0;
                    }

                    else
                    {
                      v316 = vceqz_f32(vsub_f32(*&v633.f64[0], *&v570[0].f64[0]));
                      v317.i64[0] = v316.i32[0];
                      v317.i64[1] = v316.i32[1];
                      v203 = v306;
                      v213 = 1.0;
                      v214 = 1.0;
                      if ((vorrq_s8(vdupq_laneq_s64(v317, 1), v317).u64[0] & 0x8000000000000000) == 0)
                      {
                        v318 = vcvtq_f64_f32(*&v633.f64[0]);
                        v319 = vmaxnmq_f64(v645, v318);
                        v293 = vsubq_f64(vminnmq_f64(vaddq_f64(v645, v646), vaddq_f64(v318, vcvtq_f64_f32(vabd_f32(*&v633.f64[0], *&v570[0].f64[0])))), v319);
                        v320 = vclezq_f64(v293);
                        v210 = *&v536;
                        v298 = v534;
                        v305 = v526;
                        if ((vorrq_s8(vdupq_laneq_s64(v320, 1), v320).u64[0] & 0x8000000000000000) != 0)
                        {
                          v300 = v645.f64[1];
                          v646 = 0uLL;
                          v293 = 0uLL;
                        }

                        else
                        {
                          v645 = v319;
                          v646 = v293;
                          v300 = v319.f64[1];
                        }

LABEL_516:
                        v301 = v645.f64[0];
                        v299 = v293.f64[1];
LABEL_517:
                        *v660 = v301;
                        *&v660[8] = v300;
                        *&v660[16] = v293.f64[0];
                        *&v660[24] = v299;
                        if (v547)
                        {
                          *&v359 = v301;
                          *&v360 = v300;
                          *&v633.f64[0] = __PAIR64__(v360, v359);
                          *&v361 = v293.f64[0] + v301;
                          *&v362 = v299 + v300;
                          *&v570[0].f64[0] = __PAIR64__(v362, v361);
                          CA::Transform::apply_to_point2(&v574, v633.f64, v291);
                          CA::Transform::apply_to_point2(&v574, v570[0].f64, v363);
                          v364 = 0;
                          *v660 = vcvtq_f64_f32(*&v633.f64[0]);
                          *&v660[16] = vcvtq_f64_f32(vabd_f32(*&v633.f64[0], *&v570[0].f64[0]));
                        }

                        else
                        {
                          v364 = v298 & v305;
                        }

                        v365 = (*(**(v10 + 96) + 1848))(*(v10 + 96));
                        if (!v365)
                        {
                          v365 = CAGetColorSpace(36);
                        }

                        if ((*(*v535 + 656))(v535, v292[16]))
                        {
                          if (v365 == *(v551 + 272))
                          {
                            goto LABEL_526;
                          }

                          v366 = CGColorSpaceEqualToColorSpaceIgnoringRange();
                          if ((v364 | v366))
                          {
                            if (v366)
                            {
LABEL_526:
                              v367 = v535;
                              v368 = (*(*v535 + 1016))(v535, v289, 0);
                              v369 = (*(*v367 + 1016))(v367, v292, 1);
                              (*(*v367 + 776))(v367, v369, v368, 1, 0, v660, &v645);
                              (*(*v367 + 456))(v367, 0);
                              goto LABEL_530;
                            }

LABEL_528:
                            v370 = (*(*v289 + 168))(v289);
                            v371 = (*(*v292 + 168))(v292);
                            CA::VideoToolbox::copy_surface(*(v551 + 280), v370, v371);
LABEL_530:
                            CA::WindowServer::Surface::unref(v292);
                            v378 = 0;
                            v547 = 0u;
                            v534 = 0u;
                            v160 = v554;
LABEL_540:
                            v649 = 0;
                            *&v645.f64[0] = v538;
                            *&v645.f64[1] = CAHostTimeWithTime(v617);
                            v393 = v551;
                            *&v646.f64[0] = __PAIR64__(*(v551 + 404), v378);
                            LOBYTE(v649) = 1;
                            *&v394 = *v541.i64;
                            *&v395 = *v545.i64;
                            *&v646.f64[1] = __PAIR64__(v395, v394);
                            v396.i64[0] = v547;
                            v397.i64[0] = v547;
                            v398 = v534;
                            v397.i64[1] = v534;
                            if ((vmaxv_u16(vmovn_s32(vtstq_s32(v397, v397))) & 1) == 0)
                            {
                              *&v633.f64[0] = vcvt_f32_s32(*v549.i8);
                              CA::Transform::apply_to_point2(&v574, v633.f64, v392);
                              v399 = vcvt_s32_f32(*&v633.f64[0]);
                              *v396.i8 = v399;
                              v396.i32[2] = (*v541.i64 * v553.i32[0]);
                              v396.i32[3] = (*v545.i64 * v553.i32[1]);
                              v400 = vextq_s8(v396, v396, 8uLL).u64[0];
                              v401 = vclez_s32(v400);
                              if ((vpmax_u32(v401, v401).u32[0] & 0x80000000) == 0)
                              {
                                v402 = vclez_s32(*(&v564 + 8));
                                if ((vpmax_u32(v402, v402).u32[0] & 0x80000000) != 0 || (*v396.i8 = vmax_s32(v399, *&v564), v403 = vsub_s32(vmin_s32(vadd_s32(v400, v399), vadd_s32(*&v564, *(&v564 + 8))), *v396.i8), v404 = vclez_s32(v403), (vpmax_u32(v404, v404).u32[0] & 0x80000000) != 0))
                                {
                                  v396 = v399;
                                }

                                else
                                {
                                  v396.u64[1] = v403;
                                }
                              }

                              v398 = vextq_s8(v396, v396, 8uLL).u64[0];
                              v393 = v551;
                            }

                            v647 = vcvt_f32_s32(*v396.i8);
                            v648 = vcvt_f32_s32(v398);
                            CA::Render::ContentStream::produce_surface(v393, SHIDWORD(v567), &v645, v603);
                            goto LABEL_548;
                          }
                        }

                        else if (v364)
                        {
                          goto LABEL_528;
                        }

                        v372 = CA::WindowServer::IOSurface::wrap_buffer(*(v10 + 96), v565, 0, 0);
                        v373 = v535;
                        v374 = (*(*v535 + 1016))(v535, v289, 0);
                        v375 = (*(*v373 + 1016))(v373, v372, 1);
                        (*(*v373 + 776))(v373, v375, v374, 1, 0, v660, &v645);
                        (*(*v373 + 456))(v373, 0);
                        v376 = (*(*v372 + 168))(v372);
                        v377 = (*(*v292 + 168))(v292);
                        CA::VideoToolbox::copy_surface(*(v551 + 280), v376, v377);
                        CA::WindowServer::Surface::unref(v372);
                        goto LABEL_530;
                      }

                      v646 = 0uLL;
                      v293 = 0uLL;
                      v210 = *&v536;
                    }

                    v298 = v534;
                    v305 = v526;
                    goto LABEL_516;
                  }

                  bzero(&v645, 0x570uLL);
                  CA::Render::Update::Update(&v645, v660, 0x2000uLL, v210, 0, 0, 0, 0, &v564, 0);
                  v659 = v659 & 0xFFFFFFFEFFF7DFDELL | 0x100002001;
                  v655 = (*(**(v10 + 96) + 1416))();
                  v321 = (*(**(v10 + 96) + 1616))();
                  v322 = 128;
                  if (!v321)
                  {
                    v322 = 0;
                  }

                  v659 = v659 & 0xFFFFFFFFFFFFFF7FLL | v322;
                  if (CADeviceNeedsP3ShapeTracking::once != -1)
                  {
                    dispatch_once(&CADeviceNeedsP3ShapeTracking::once, &__block_literal_global_53);
                  }

                  v160 = v554;
                  v323 = 0x800000;
                  if (!CADeviceNeedsP3ShapeTracking::p3_tracking)
                  {
                    v323 = 0;
                  }

                  v659 = v659 & 0xFFFFFFFFFF7FFFFFLL | v323;
                  v644 = 0;
                  memset(v643, 0, sizeof(v643));
                  CA::WindowServer::Display::reconciled_display_attributes(v643, *(v10 + 96));
                  CA::Render::Update::set_display_attributes(v657, v643);
                  v657[34] = v611;
                  v324 = *(v10 + 96);
                  v325 = *(v324 + 876);
                  v327 = __sincosf_stret(*(v324 + 872));
                  v328 = *(v324 + 880);
                  v657[201] = LODWORD(v327.__cosval);
                  v657[202] = LODWORD(v327.__sinval);
                  v657[203] = v325;
                  v658 = v328;
                  v659 |= 0x800000000000uLL;
                  v573 = 0;
                  v329 = *(v212 + 18);
                  v330 = *(v212 + 19);
                  memset(v572, 0, sizeof(v572));
                  LODWORD(v573) = 1065353216;
                  v571 = &unk_1EF200FF8;
                  v331 = (v330 - v329) & 0x3FFFFFFFCLL;
                  if (v331)
                  {
                    v332 = v329;
                    do
                    {
                      v333 = *v332++;
                      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(v572, v333);
                      v331 -= 4;
                    }

                    while (v331);
                    v329 = *(v212 + 18);
                    v330 = *(v212 + 19);
                    v160 = v554;
                  }

                  v334 = v551;
                  if (v330 != v329)
                  {
                    v656 = &v571;
                  }

                  v336 = *(v212 + 10);
                  v335 = *(v212 + 11);
                  if (v336 == v335)
                  {
                    CA::Render::Update::added_all_contexts(&v645, v326, v329);
                    v547 = 0u;
                    v534 = 0u;
                  }

                  else
                  {
                    v337 = 0;
                    v338 = 0;
                    do
                    {
                      v339 = CA::Render::Context::context_by_id(*v336);
                      if (v339)
                      {
                        v342 = v339;
                        pthread_mutex_lock((v339 + 72));
                        v343 = 0;
                        v642 = 0;
                        v641 = 0u;
                        v640 = 0u;
                        v639 = 0u;
                        v638 = 0u;
                        v637 = 0u;
                        v636 = 0u;
                        v635 = 0u;
                        v634 = 0u;
                        v633 = 0u;
                        if (v547)
                        {
                          v344 = CA::Render::Context::root_layer_handle(v342);
                          if (v344 && *(v344 + 2))
                          {
                            memset(v563, 0, sizeof(v563));
                            v345 = CA::Render::Context::root_layer_handle(v342);
                            if (v345)
                            {
                              v345 = *(v345 + 2);
                            }

                            CA::Render::Layer::compute_frame_transform(v345, 0, v563, 0);
                            v633 = v574;
                            v634 = v575;
                            v635 = v576;
                            v636 = v577;
                            v637 = v578;
                            v638 = v579;
                            v639 = v580;
                            v640 = v581;
                            v641 = v582;
                            LOBYTE(v642) = v642 & 0xE0 | v583 & 0x1F;
                            CA::Transform::set(v570, v563, 1);
                            v343 = &v633;
                            CA::Transform::concat_left(&v633, v570, v346, v347);
                          }

                          else
                          {
                            v343 = &v633;
                          }
                        }

                        v348 = CA::Render::Context::root_layer_handle(v342);
                        if (v348)
                        {
                          v349 = *(v348 + 2);
                        }

                        else
                        {
                          v349 = 0;
                        }

                        CA::Render::Update::add_context(&v645, v342, v349, v343);
                        v350 = *(v212 + 7);
                        if (v350 && !v337)
                        {
                          v351 = CA::Render::Context::lookup_object(*(v342 + 136), *(v342 + 148), v350, 0, 30, 0);
                          if (v351)
                          {
                            v337 = *(v351 + 152);
                          }

                          else
                          {
                            v337 = 0;
                          }
                        }

                        pthread_mutex_unlock((v342 + 72));
                        ++v338;
                        if (atomic_fetch_add((v342 + 8), 0xFFFFFFFF) == 1)
                        {
                          (*(*v342 + 16))(v342);
                        }
                      }

                      ++v336;
                    }

                    while (v336 != v335);
                    CA::Render::Update::added_all_contexts(&v645, v340, v341);
                    v353 = 0uLL;
                    if (v337)
                    {
                      v354 = v652;
                      v355 = 0uLL;
                      v356 = v531;
                      if (v652 != v531)
                      {
                        do
                        {
                          layernode_for_handle = CA::WindowServer::find_layernode_for_handle(v354, v337, v352);
                          v354 = v354[1];
                        }

                        while (v354 != v356 && layernode_for_handle == 0);
                        if (layernode_for_handle)
                        {
                          *&v353 = layernode_for_handle[22];
                          *&v355 = layernode_for_handle[23];
                        }

                        else
                        {
                          v353 = 0uLL;
                          v355 = 0uLL;
                        }
                      }
                    }

                    else
                    {
                      v355 = 0uLL;
                    }

                    v547 = v353;
                    v534 = v355;
                    if (v338 && v566)
                    {
                      v526 = objc_autoreleasePoolPush();
                      v379 = v535;
                      *(v535 + 608) = 0;
                      *(v379 + 616) = v536;
                      *(v379 + 1384) |= 2u;
                      v380 = CGColorSpaceRetain(*(v379 + 560));
                      v381 = CAGetColorSpace(35);
                      CA::OGL::Context::set_colorspace(v379, v381);
                      v634 = 0u;
                      v635 = 0u;
                      v633 = 0u;
                      CA::Shape::operator=(&v633, &v564);
                      CA::shape_union(&v646, &v633, v382);
                      v383 = v533;
                      CA::OGL::Renderer::prepare_clip_shape(v533, *&v646.f64[0]);
                      v384 = (*(*v379 + 24))(v379, 0, &v566, 1, 0, 0);
                      v384.n128_u32[0] = v212[16];
                      *&v633.f64[0] = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v384.n128_u64[0]))), vdupq_n_s32(0x3B808081u)));
                      (*(*v379 + 1000))(v379, &CA::Shape::_infinite_shape, &v633);
                      CA::OGL::Renderer::render(v383, &v645, 0, v385);
                      (*(*v379 + 456))(v379, 1);
                      CA::OGL::Context::set_colorspace(v379, v380);
                      CGColorSpaceRelease(v380);
                      (*(*v379 + 24))(v379, 0, 0, 0, 0, 0);
                      *(v379 + 1384) &= ~2u;
                      v386 = *(v383 + 2);
                      if (v386)
                      {
                        CA::Shape::unref(v386);
                        *(v383 + 2) = 0;
                      }

                      v387 = v650;
                      v388 = *v383;
                      v389 = v654;
                      *(v388 + 159) = v653;
                      *(v388 + 160) = v389;
                      CA::Render::Update::release_objects(&v645);
                      v390 = *v383;
                      v390[81] = v387;
                      (*(*v390 + 264))();
                      objc_autoreleasePoolPop(v526);
                      CA::VideoToolbox::copy_surface(*(v551 + 280), v565, v567);
                      v378 = 0;
                      v160 = v554;
                      goto LABEL_539;
                    }

                    v240 = DWORD2(v567);
                    v160 = v554;
                    v334 = v551;
                  }

                  CA::Render::ContentStream::reuse_surface(v334, v240);
                  v568 = 0;
                  v378 = 1;
                  v567 = 0uLL;
LABEL_539:
                  v571 = &unk_1EF200FB0;
                  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v572);
                  CA::Render::Update::~Update(&v645, v391);
                  goto LABEL_540;
                }
              }
            }

LABEL_561:
            if (*v542)
            {
              if ((byte_1ED4E98A1 & 1) == 0)
              {
                v408 = mach_absolute_time() + v515;
                goto LABEL_568;
              }

LABEL_569:
              v417 = mach_absolute_time();
              v613 = CATimeWithHostTime(v417) - v167;
              CA::WindowServer::Server::set_needs_global_light(v10, HIDWORD(v607) & 1);
              if (*(v10 + 836) == 1)
              {
                CA::WindowServer::Server::report_car_play_regions(v10, v587);
              }

              if ((*(**(v10 + 96) + 1648))(*(v10 + 96)))
              {
                dispatch_semaphore_signal(*(v10 + 88));
              }

              goto LABEL_573;
            }

            v409 = (*(**(v10 + 96) + 1056))(*(v10 + 96));
            v410 = *(v10 + 96);
            if (v409)
            {
              v411 = (*(*v410 + 776))(v410);
              v412 = CAHostTimeWithTime(v411);
              v408 = CAHostTimeWithTime(v9) - (v412 >> 3);
            }

            else
            {
              if ((v410[160] & 0x100) == 0)
              {
                goto LABEL_569;
              }

              v413 = (*(*v410 + 776))(v410);
              v414 = CAHostTimeWithTime(v413);
              v415 = v414 * (*(**(v10 + 96) + 784))();
              v416 = CAHostTimeWithTime(v9);
              v408 = v515 + v416 - (v415 + (v414 >> 1));
            }

LABEL_568:
            (*(*v10 + 536))(v10, v408);
            goto LABEL_569;
          }

          v171 = (*(*v10 + 432))(v10);
          if (v171)
          {
            (*(**v171 + 208))(*v171, v528);
          }

          if ((*(*(v10 + 96) + 640) & 0x100) != 0)
          {
            if (CADeviceSupportsNextSwapAnnouncement::once[0] != -1)
            {
              dispatch_once(CADeviceSupportsNextSwapAnnouncement::once, &__block_literal_global_425);
            }

            if (CADeviceSupportsNextSwapAnnouncement::b == 1)
            {
              (*(**(v10 + 96) + 2256))(*(v10 + 96), v587, v169);
            }
          }

          if ((v557 & 8) == 0 && (*(**(v10 + 96) + 2304))(*(v10 + 96), v603))
          {
            (*(*v10 + 552))(v10, v603);
          }

          (*(*v10 + 472))(v10, v587, &v557);
          v172 = (*(*v10 + 432))(v10);
          if (v172)
          {
            v173 = *v172;
            v174 = *(*v172 + 1264);
            if (v174 >= 0xFFFF)
            {
              v175 = 0xFFFF;
            }

            else
            {
              v175 = *(*v172 + 1264);
            }

            if (v174 >= 0)
            {
              v176 = v175;
            }

            else
            {
              v176 = 0;
            }

            v177 = v550 & 0xFFFFFF0000000000 | v176;
            v178 = v173[318];
            if (v178 >= 0xFF)
            {
              v179 = 255;
            }

            else
            {
              v179 = v173[318];
            }

            v180 = v179 << 16;
            if (v178 >= 0)
            {
              v181 = v180;
            }

            else
            {
              v181 = 0;
            }

            v182 = v177 | v181;
            v183 = v173[317];
            if (v183 >= 0xFF)
            {
              v184 = 255;
            }

            else
            {
              v184 = v173[317];
            }

            v185 = v184 << 24;
            if (v183 >= 0)
            {
              v186 = v185;
            }

            else
            {
              v186 = 0;
            }

            v187 = v182 | v186;
            v188 = v173[319];
            if (v188 >= 0xFF)
            {
              v189 = 255;
            }

            else
            {
              v189 = v173[319];
            }

            if (v188 >= 0)
            {
              v190 = v189;
            }

            else
            {
              v190 = 0;
            }

            v191 = v187 | (v190 << 32);
            (*(**(v10 + 96) + 2000))(*(v10 + 96));
            v527 = v539;
          }

          else
          {
            v191 = v550;
          }

          if ((v557 & 3) == 0)
          {
            v191 = v191 & 0xFFFF00FFFFFFFFFFLL | 0x10000000000;
          }

          v550 = v191;
          if ((*(**(v10 + 96) + 576))(*(v10 + 96), v587))
          {
            goto LABEL_327;
          }

          _VF = __OFSUB__(v158--, 1);
          if (v158 < 0 != _VF)
          {
            goto LABEL_327;
          }

          if (v160)
          {
            CA::Shape::unref(v160);
          }

          v554 = CA::Shape::new_shape((*(v10 + 96) + 168), v196);
          v144 = 0;
          v629 |= 0x10uLL;
LABEL_303:
          LODWORD(v547) = v158;
          CA::Render::Fence::BatchWaitLock::invalidate(v569);
          CA::Render::Update::~Update(v587, v198);
          LODWORD(v551) = v144;
          v553.i32[0] |= v144 ^ 1;
        }

        if (v131 == v113)
        {
          v129 = 0;
        }

LABEL_172:
        v131 = v130;
        goto LABEL_173;
      }
    }

    else
    {
      v38 = v22;
      v37 = *(v10 + 96);
    }

    v39 = 1;
    goto LABEL_34;
  }

  pthread_mutex_unlock((v10 + 24));
  qword_1EA850F08 += mach_absolute_time() - v12;
LABEL_694:
  v496 = pthread_getspecific(current_display_slot);
  if (v496)
  {
    if (*v496)
    {
      --*v496;
    }
  }

  objc_autoreleasePoolPop(v11);
}

BOOL CA::WindowServer::Display::is_enabled_for_vsync_render(CA::WindowServer::Display *this)
{
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
  return v7 == 0;
}

uint64_t CA::WindowServer::IOMFBDisplay::dbv_flash_workaround_active(CA::WindowServer::IOMFBDisplay *this)
{
  if (*(this + 29584) == 1)
  {
    if (*(this + 29585) == 1)
    {
      v1 = *(this + 29586) ^ 1;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void std::vector<CAFrameIntervalRange>::insert(uint64_t a1, char *__src, unint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = 0xAAAAAAAAAAAAAAABLL * (&v6[-*a1] >> 2) + 1;
    if (v12 > 0x1555555555555555)
    {
      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v13 = __src - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 2);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0xAAAAAAAAAAAAAAALL)
    {
      v15 = 0x1555555555555555;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CAFrameIntervalRange>>(v15);
    }

    v17 = 4 * (v13 >> 2);
    v18 = v17;
    if (!(0xAAAAAAAAAAAAAAABLL * (v13 >> 2)))
    {
      if (v13 < 1)
      {
        if (v11 == __src)
        {
          v23 = 1;
        }

        else
        {
          v23 = 0x5555555555555556 * (v13 >> 2);
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<CAFrameIntervalRange>>(v23);
      }

      v17 = 4 * (v13 >> 2) - 12 * ((1 - 0x5555555555555555 * ((4 * (v13 >> 2)) >> 2) + ((1 - 0x5555555555555555 * ((4 * (v13 >> 2)) >> 2)) >> 63)) >> 1);
      v18 = v17;
    }

    v24 = *a3;
    *(v17 + 8) = *(a3 + 8);
    *v17 = v24;
    v25 = v18 + 12;
    memcpy((v18 + 12), __src, *(a1 + 8) - __src);
    v26 = *a1;
    v30 = v25 + *(a1 + 8) - __src;
    *(a1 + 8) = __src;
    v27 = (__src - v26);
    v28 = (v17 - (__src - v26));
    memcpy(v28, v26, v27);
    v29 = *a1;
    *a1 = v28;
    *(a1 + 8) = v30;
    if (v29)
    {

      operator delete(v29);
    }
  }

  else if (__src == v6)
  {
    v16 = *a3;
    *(v6 + 2) = *(a3 + 8);
    *v6 = v16;
    *(a1 + 8) = v6 + 12;
  }

  else
  {
    v8 = __src + 12;
    if (v6 < 0xC)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      v9 = v6 + 12;
      v10 = *(v6 - 12);
      *(v6 + 2) = *(v6 - 1);
      *v6 = v10;
    }

    *(a1 + 8) = v9;
    if (v6 != v8)
    {
      memmove(__src + 12, __src, v6 - v8);
      v9 = *(a1 + 8);
    }

    v19 = v9 <= a3 || __src > a3;
    v20 = 12;
    if (v19)
    {
      v20 = 0;
    }

    v21 = a3 + v20;
    v22 = *v21;
    *(__src + 2) = *(v21 + 8);
    *__src = v22;
  }
}

void sub_183B240E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
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

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
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
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBServer::edr_client(CA::WindowServer::IOMFBServer *this)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *(this + 143);
  if (!v1)
  {
    if ((*(*(this + 12) + 905) & 0x10) != 0)
    {
      operator new();
    }

    return 0;
  }

  return v1;
}

BOOL CA::WindowServer::IOMFBDisplay::is_ready(CA::WindowServer::IOMFBDisplay *this)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!atomic_load((*(this + 96) + 4)))
  {
    v3 = atomic_load((*(this + 96) + 5));
    if (v3 == 1 && !CA::IOMobileFramebuffer::swap_wait((this + 25696)))
    {
      os_unfair_lock_lock(this + 189);
      if (x_log_get_display_state(void)::once != -1)
      {
        dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
      }

      v4 = x_log_get_display_state(void)::log;
      if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "Display::complete_powering_on", v8, 2u);
      }

      atomic_store(1u, (*(this + 96) + 4));
      os_unfair_lock_unlock(this + 189);
      pthread_mutex_lock(this + 9);
      CA::WindowServer::IOMFBDisplay::update_framebuffer_locked(this, 0);
      pthread_mutex_unlock(this + 9);
    }
  }

  if (atomic_load((*(this + 96) + 4)))
  {
    return 1;
  }

  v7 = atomic_load((*(this + 96) + 5));
  return v7 != 0;
}

uint64_t CA::WindowServer::IOMFBDisplay::needs_harmony_update(CA::WindowServer::IOMFBDisplay *this)
{
  if (*(this + 29495) & 1) != 0 || (LOBYTE(v1) = 0, (*(this + 336) & 0x1C00) != 0x1000) && (*(this + 29511))
  {
    v2 = atomic_load((*(this + 96) + 4));
    if (v2 || (v1 = atomic_load((*(this + 96) + 5))) != 0)
    {
      LOBYTE(v1) = *(this + 27056) ^ 1;
    }
  }

  return v1 & 1;
}

uint64_t CA::Render::Fence::BatchWaitLock::invalidate(uint64_t this)
{
  v18[2] = *MEMORY[0x1E69E9840];
  __swp(this + 8, (this + 8));
  if (((this + 8) & 1) == 0)
  {
    v1 = this;
    pthread_mutex_lock(&CA::Render::Fence::_bwait_mutex);
    v2 = pthread_self();
    v18[0] = 0;
    if (pthread_threadid_np(v2, v18))
    {
      __assert_rtn("invalidate", "render-fence.cpp", 1951, "r == noErr");
    }

    v3 = *v1;
    if (*v1 != v18[0])
    {
      __assert_rtn("invalidate", "render-fence.cpp", 1952, "_tid == tid");
    }

    v4 = CA::Render::Fence::_bwait_readers_by_tid;
    if (!CA::Render::Fence::_bwait_readers_by_tid)
    {
      __assert_rtn("invalidate", "render-fence.cpp", 1954, "_bwait_readers_by_tid != nullptr");
    }

    v5 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(CA::Render::Fence::_bwait_readers_by_tid, *v1);
    if (!v5)
    {
      __assert_rtn("invalidate", "render-fence.cpp", 1956, "ri != _bwait_readers_by_tid->end ()");
    }

    v6 = *(v5 + 6);
    if (v6 == 1)
    {
      v7 = v4[1];
      v8 = v5[1];
      v9 = vcnt_s8(v7);
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.u32[0] > 1uLL)
      {
        if (v8 >= *&v7)
        {
          v8 %= *&v7;
        }
      }

      else
      {
        v8 &= *&v7 - 1;
      }

      v10 = *(*v4 + 8 * v8);
      do
      {
        v11 = v10;
        v10 = *v10;
      }

      while (v10 != v5);
      if (v11 == v4 + 2)
      {
        goto LABEL_26;
      }

      v12 = v11[1];
      if (v9.u32[0] > 1uLL)
      {
        if (v12 >= *&v7)
        {
          v12 %= *&v7;
        }
      }

      else
      {
        v12 &= *&v7 - 1;
      }

      if (v12 != v8)
      {
LABEL_26:
        if (!*v5)
        {
          goto LABEL_27;
        }

        v13 = *(*v5 + 8);
        if (v9.u32[0] > 1uLL)
        {
          if (v13 >= *&v7)
          {
            v13 %= *&v7;
          }
        }

        else
        {
          v13 &= *&v7 - 1;
        }

        if (v13 != v8)
        {
LABEL_27:
          *(*v4 + 8 * v8) = 0;
        }
      }

      v14 = *v5;
      if (*v5)
      {
        v15 = *(v14 + 8);
        if (v9.u32[0] > 1uLL)
        {
          if (v15 >= *&v7)
          {
            v15 %= *&v7;
          }
        }

        else
        {
          v15 &= *&v7 - 1;
        }

        if (v15 != v8)
        {
          *(*v4 + 8 * v15) = v11;
          v14 = *v5;
        }
      }

      *v11 = v14;
      *v5 = 0;
      --v4[3];
      operator delete(v5);
      v16 = CA::Render::Fence::_bwait_readers_by_tid;
      if (*(CA::Render::Fence::_bwait_readers_by_tid + 16))
      {
        return pthread_mutex_unlock(&CA::Render::Fence::_bwait_mutex);
      }

      v17 = *CA::Render::Fence::_bwait_readers_by_tid;
      *CA::Render::Fence::_bwait_readers_by_tid = 0;
      if (v17)
      {
        operator delete(v17);
      }

      MEMORY[0x1865EA9A0](v16, 0x10A0C408EF24B1CLL);
      CA::Render::Fence::_bwait_readers_by_tid = 0;
    }

    else
    {
      v18[1] = v1;
      *(std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v4, v3) + 6) = v6 - 1;
      if (CA::Render::Fence::_bwait_readers_by_tid)
      {
        return pthread_mutex_unlock(&CA::Render::Fence::_bwait_mutex);
      }
    }

    if (CA::Render::Fence::_bwait_writer_pending == 1)
    {
      pthread_cond_signal(&CA::Render::Fence::_bwait_cond_writer);
    }

    return pthread_mutex_unlock(&CA::Render::Fence::_bwait_mutex);
  }

  return this;
}

uint64_t CA::WindowServer::IOMFBDisplay::dirty_update_surface(CA::WindowServer::IOMFBDisplay *this)
{
  pthread_mutex_lock((this + 25848));
  v2 = *(this + 6 * *(this + 6458) + 3240);
  if (v2)
  {
    *(v2 + 68) = *(v2 + 68) & 0xFA | 1;
    if (CA::WindowServer::IOMFBDisplay::use_assembly_surface(this))
    {
      *(v2 + 68) |= 2u;
    }
  }

  return pthread_mutex_unlock((this + 25848));
}

uint64_t CA::OGL::Renderer::collect(CA::OGL::Renderer *this, const CA::Render::Update *a2, double a3)
{
  v5 = *this;
  if (a2)
  {
    v6 = *(a2 + 70);
    *(v5 + 636) = *(a2 + 68);
    *(v5 + 640) = v6;
    CA::Render::Update::release_objects(a2);
    v5 = *this;
  }

  else
  {
    *(v5 + 636) = -1;
  }

  *(v5 + 648) = a3;
  v7 = *(*v5 + 264);

  return v7();
}

uint64_t CA::WindowServer::IOMFBDisplay::color_flush_shape(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);
  if (v2)
  {
    v3 = v2 == 1;
  }

  else
  {
    v3 = *(v2 + 4) == 6;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return *(a2 + 72);
  }
}

void CA::OGL::update_backdrop_luma(Rect **this, CA::OGL::Renderer *a2)
{
  v88 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (((*this)[109].top & 0x2000) == 0)
  {
    v4 = this[1];
    v5.i32[1] = 0;
    v5.i64[1] = 0;
    memset(v87, 0, sizeof(v87));
    v83 = v87;
    v84 = v87;
    v85 = v87;
    v86 = 16;
    v6 = v4[68];
    if (v6)
    {
      v7 = 0;
      v70 = 0;
      v5.i32[0] = 1073741822;
      v69 = v5;
      v68 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      do
      {
        v8 = *(v6 + 1);
        v9 = *(*(v8 + 32) + 136);
        if (v9)
        {
          v10 = *v9;
          if (*v9)
          {
            if ((*(v10 + 12) & 0x4FF) == 0x403)
            {
              v11 = *(v8 + 256);
              if (v11)
              {
                os_unfair_lock_lock((v11 + 52));
                v12 = *(v11 + 56);
                v82 = v12;
                if (v12)
                {
                  os_unfair_lock_lock((v12 + 40));
                  v13 = *(v12 + 48);
                  if (v13 && *(v13 + 8) == v2)
                  {
                    if (*(v13 + 40))
                    {
                      X::small_vector_base<CA::Render::BackdropGroup *>::push_back(&v83, &v82);
                    }

                    v14 = *(v13 + 68);
                    v15 = *(v11 + 104);
                    *(v11 + 152) = v14 != v15;
                    if (v14 != v15)
                    {
                      v16 = *(v11 + 96);
                      v17 = *&v4[10];
                      if (v16 - v17 <= 0.035)
                      {
                        if (v16 != 0.0 || (*&this[1][172].top & 1) != 0)
                        {
                          if ((*(v13 + 224) & 4) != 0 && (v21 = *(v13 + 48)) != 0 && (*(v10 + 14) & 4) != 0 || (*(v13 + 40) ? (v21 = *(v13 + 40)) : (v21 = *(v13 + 32)), v21))
                          {
                            v22 = v6[12];
                            if (initialized[0] != -1)
                            {
                              v67 = v21;
                              dispatch_once_f(initialized, 0, init_debug);
                              v21 = v67;
                            }

                            if (*&dword_1ED4E9774 != 0.0)
                            {
                              v22 = *&dword_1ED4E9774;
                            }

                            v23 = *(v11 + 96);
                            v24 = round((v23 + v22) * 4.0) * 0.25;
                            v25 = ceil(v23 * 4.0 + 0.04) * 0.25;
                            if (v24 <= v23)
                            {
                              v26 = v25;
                            }

                            else
                            {
                              v26 = v24;
                            }

                            *(v11 + 96) = v26;
                            *(v11 + 104) = *(v13 + 68);
                            if (v70 <= 0x31)
                            {
                              v28 = v21[6];
                              v27 = v21[7];
                              v80 = 0;
                              v81 = v27;
                              v77 = *(v10 + 56);
                              v29 = *(v10 + 72);
                              v30 = *(v10 + 80);
                              v78 = v29;
                              v79 = v30;
                              if (v29 >= v30)
                              {
                                v29 = v30;
                              }

                              if (v29 > 0.0 && !*&v21[9])
                              {
                                v64 = v21;
                                v75 = 0u;
                                v76 = 0u;
                                CA::Render::BackdropGroup::subrect_to_master(&v75, v12, &v77, *(v6 + 1));
                                CA::Rect::apply_transform(&v75, (v13 + 72), v31);
                                if (*(v12 + 632))
                                {
                                  v63 = *(v12 + 632);
                                  CA::BoundsImpl::Union(&v75, *(v12 + 640), *(v12 + 656));
                                  CA::Render::MeshTransform::apply_rect(v74, v63, v54, v75, v76, v75, v76);
                                  v75 = v74[0];
                                  v76 = v74[1];
                                }

                                if ((*(v13 + 224) & 0x10) != 0)
                                {
                                  v38 = v76.f64[1];
                                  if (v76.f64[0] <= v76.f64[1])
                                  {
                                    v39 = v76.f64[1];
                                  }

                                  else
                                  {
                                    v39 = v76.f64[0];
                                  }

                                  if (v39 < 1.79769313e308)
                                  {
                                    v40 = v76.f64[0] >= v76.f64[1] ? v76.f64[1] : v76.f64[0];
                                    if (v40 > 0.0)
                                    {
                                      v41 = vrndpq_f64(v75);
                                      v42 = vsubq_f64(vrndmq_f64(vaddq_f64(v75, v76)), v41);
                                      v75 = v41;
                                      v76 = v42;
                                      v38 = v42.f64[1];
                                    }
                                  }
                                }

                                else
                                {
                                  *v33.i8 = CA::OGL::Context::raster_round_rect(v74, v2, v75.f64);
                                  if (v74[0].i32[2] <= v74[0].i32[3])
                                  {
                                    v34 = v74[0].i32[3];
                                  }

                                  else
                                  {
                                    v34 = v74[0].i32[2];
                                  }

                                  v33.i32[0] = v34;
                                  v35.i64[0] = v74[0].i32[0];
                                  v35.i64[1] = v74[0].i32[1];
                                  v36 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v33, v69), 0), v68, vcvtq_f64_s64(v35));
                                  v37 = v74[0].i32[2];
                                  if (v34 > 1073741822)
                                  {
                                    v37 = 1.79769313e308;
                                  }

                                  v75 = v36;
                                  if (v34 <= 1073741822)
                                  {
                                    v38 = v74[0].i32[3];
                                  }

                                  else
                                  {
                                    v38 = 1.79769313e308;
                                  }

                                  v76.f64[0] = v37;
                                  v76.f64[1] = v38;
                                }

                                v43 = *(v13 + 24);
                                if (v43 != 1.0)
                                {
                                  v44 = v43;
                                  if (v76.f64[0] < 1.79769313e308)
                                  {
                                    v75.f64[0] = v75.f64[0] * v44;
                                    v76.f64[0] = v76.f64[0] * v44;
                                  }

                                  if (v38 < 1.79769313e308)
                                  {
                                    v75.f64[1] = v75.f64[1] * v44;
                                    v76.f64[1] = v38 * v44;
                                  }
                                }

                                v74[0] = 0uLL;
                                CA::Bounds::set_exterior(v74, v32, v75, v76);
                                v80 = vsub_s32(*v74[0].i8, v28);
                                v81 = v74[0].i64[1];
                                CA::BoundsImpl::intersect(&v80, 0, v27);
                                v21 = v64;
                              }

                              v45 = *(v11 + 16);
                              v46 = v45[4];
                              v47 = atomic_load(v45 + 57);
                              if (!v47)
                              {
                                if (v45[64])
                                {
                                  v48 = 0;
                                }

                                else
                                {
                                  v61 = *(v11 + 16);
                                  v65 = v21;
                                  v48 = getpid();
                                  v45 = v61;
                                  v21 = v65;
                                }

                                v49 = 0;
                                atomic_compare_exchange_strong(v45 + 57, &v49, v48);
                                if (v49)
                                {
                                  v47 = v49;
                                }

                                else
                                {
                                  v47 = v48;
                                }
                              }

                              v62 = *(v10 + 16);
                              v66 = v47;
                              v50 = v21;
                              v60 = v21[5].u32[1] | (v21[5].u32[0] << 32);
                              kdebug_trace();
                              v51 = CA::Render::Context::context_by_id(v46);
                              if (v51)
                              {
                                v71[0] = MEMORY[0x1E69E9820];
                                v71[1] = 0x40000000;
                                v71[2] = ___ZN2CA3OGL20update_backdrop_lumaERNS0_8RendererE_block_invoke;
                                v71[3] = &__block_descriptor_tmp_20452;
                                v72 = v46;
                                v73 = v66;
                                v71[4] = v62;
                                v71[5] = v60;
                                v71[6] = v50;
                                v71[7] = v51;
                                if (v50[9])
                                {
                                  ___ZN2CA3OGL20update_backdrop_lumaERNS0_8RendererE_block_invoke(v71, NAN);
                                }

                                else
                                {
                                  v52 = v50;
                                  v53 = v51;
                                  if ((*(*v2 + 808))(v2, v52, &v80, v71))
                                  {
                                    v7 |= (*(*v2 + 144))(v2) != 0;
                                  }

                                  else if (atomic_fetch_add(v53 + 2, 0xFFFFFFFF) == 1)
                                  {
                                    (*(*v53 + 16))(v53);
                                  }
                                }
                              }

                              ++v70;
                            }
                          }
                        }

                        else
                        {
                          v18 = round(v17 * 4.0) * 0.25;
                          v19 = ceil(v17 * 4.0 + 0.04) * 0.25;
                          if (v18 <= v17)
                          {
                            v20 = v19;
                          }

                          else
                          {
                            v20 = v18;
                          }

                          *(v11 + 96) = v20;
                        }
                      }
                    }
                  }

                  os_unfair_lock_unlock((v12 + 40));
                }

                os_unfair_lock_unlock((v11 + 52));
              }
            }
          }
        }

        v6 = *v6;
      }

      while (v6);
      if (v7)
      {
        (*(*v2 + 456))(v2, 0);
      }
    }

    v55 = v83;
    v56 = v84;
    if (v83 != v84)
    {
      do
      {
        v57 = *v55;
        os_unfair_lock_lock(*v55 + 10);
        v58 = *&v57[12]._os_unfair_lock_opaque;
        if (v58)
        {
          if (*(v58 + 8) == v2)
          {
            v59 = *(v58 + 40);
            if (v59)
            {
              CA::OGL::Context::release_surface(v2, v59);
              *(v58 + 40) = 0;
            }
          }
        }

        os_unfair_lock_unlock(v57 + 10);
        ++v55;
      }

      while (v55 != v56);
      v55 = v83;
    }

    if (v55 != v85)
    {
      free(v55);
    }
  }
}

char *CAGetDebugMessage()
{
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  if (debug_message)
  {
    return &debug_message;
  }

  else
  {
    return 0;
  }
}

void CA::OGL::MetalContext::end_rendering(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  *(a1 + 3936) |= 0x80u;
  *&v2 = CA::OGL::Context::end_rendering(a1);
  *(a1 + 2928) = *(a1 + 2920);
  *(a1 + 2913) = 0;
  *(a1 + 2792) = *(a1 + 2784);
  *(a1 + 2777) = 0;
  v3 = *(a1 + 3608);
  if (!v3)
  {
    goto LABEL_10;
  }

  if (*(a1 + 1068) != 1)
  {
LABEL_9:
    [v3 endScope];
    goto LABEL_10;
  }

  if (([*(a1 + 3600) isCapturing] & 1) == 0)
  {
    v3 = *(a1 + 3608);
    goto LABEL_9;
  }

  CA::OGL::MetalContext::flush(a1, 0);
  [*(a1 + 3608) endScope];
  [*(a1 + 3600) stopCapture];
  if (x_log_get_ogl_metal(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
  }

  v4 = x_log_get_ogl_metal(void)::log;
  if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v40) = 0;
    _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "Finished capturing GPU frames\n", &v40, 2u);
  }

LABEL_10:
  if (*(a1 + 5192))
  {
    if (x_log_get_metal_perf(void)::once != -1)
    {
      dispatch_once(&x_log_get_metal_perf(void)::once, &__block_literal_global_10_8314);
    }

    v37 = *(a1 + 5192);
    if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v38 = x_log_get_metal_perf(void)::log;
      if (os_signpost_enabled(x_log_get_metal_perf(void)::log))
      {
        v39 = _MXSignpostMetricsSnapshot();
        v40 = 138543362;
        v41 = v39;
        _os_signpost_emit_with_name_impl(&dword_183AA6000, v38, OS_SIGNPOST_INTERVAL_END, v37, "Rendering", "\n%{public, signpost:metrics}@", &v40, 0xCu);
      }
    }

    *(a1 + 5192) = 0;
  }

  pthread_mutex_lock((a1 + 2496));
  if (*(a1 + 2480) >= 0x385uLL)
  {
    v5 = *(a1 + 2472);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        if (!v6 || *(v5[5] + 8) < *(v6 + 8))
        {
          v7 = v5;
          v6 = v5[5];
        }

        v5 = *v5;
      }

      while (v5);
      if (v6)
      {

        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_zone_free(malloc_zone, v6);
        v8 = *(a1 + 2464);
        v9 = v7[1];
        v10 = vcnt_s8(v8);
        v10.i16[0] = vaddlv_u8(v10);
        if (v10.u32[0] > 1uLL)
        {
          if (v9 >= *&v8)
          {
            v9 %= *&v8;
          }
        }

        else
        {
          v9 &= *&v8 - 1;
        }

        v11 = *(a1 + 2456);
        v12 = *(v11 + 8 * v9);
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12 != v7);
        if (v13 == (a1 + 2472))
        {
          goto LABEL_38;
        }

        v14 = v13[1];
        if (v10.u32[0] > 1uLL)
        {
          if (v14 >= *&v8)
          {
            v14 %= *&v8;
          }
        }

        else
        {
          v14 &= *&v8 - 1;
        }

        if (v14 != v9)
        {
LABEL_38:
          if (!*v7)
          {
            goto LABEL_39;
          }

          v15 = *(*v7 + 8);
          if (v10.u32[0] > 1uLL)
          {
            if (v15 >= *&v8)
            {
              v15 %= *&v8;
            }
          }

          else
          {
            v15 &= *&v8 - 1;
          }

          if (v15 != v9)
          {
LABEL_39:
            *(v11 + 8 * v9) = 0;
          }
        }

        v16 = *v7;
        if (*v7)
        {
          v17 = *(v16 + 8);
          if (v10.u32[0] > 1uLL)
          {
            if (v17 >= *&v8)
            {
              v17 %= *&v8;
            }
          }

          else
          {
            v17 &= *&v8 - 1;
          }

          if (v17 != v9)
          {
            *(*(a1 + 2456) + 8 * v17) = v13;
            v16 = *v7;
          }
        }

        *v13 = v16;
        *v7 = 0;
        --*(a1 + 2480);
        operator delete(v7);
      }
    }
  }

  pthread_mutex_unlock((a1 + 2496));
  pthread_mutex_lock((a1 + 2608));
  if (*(a1 + 2592) >= 0x65uLL)
  {
    v18 = *(a1 + 2584);
    if (v18)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        if (!v19 || *(v18[3] + 8) < *(v19 + 8))
        {
          v20 = v18;
          v19 = v18[3];
        }

        v18 = *v18;
      }

      while (v18);
      if (v19)
      {

        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_zone_free(malloc_zone, v19);
        v21 = *(a1 + 2576);
        v22 = v20[1];
        v23 = vcnt_s8(v21);
        v23.i16[0] = vaddlv_u8(v23);
        if (v23.u32[0] > 1uLL)
        {
          if (v22 >= *&v21)
          {
            v22 %= *&v21;
          }
        }

        else
        {
          v22 &= *&v21 - 1;
        }

        v24 = *(a1 + 2568);
        v25 = *(v24 + 8 * v22);
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25 != v20);
        if (v26 == (a1 + 2584))
        {
          goto LABEL_75;
        }

        v27 = v26[1];
        if (v23.u32[0] > 1uLL)
        {
          if (v27 >= *&v21)
          {
            v27 %= *&v21;
          }
        }

        else
        {
          v27 &= *&v21 - 1;
        }

        if (v27 != v22)
        {
LABEL_75:
          if (!*v20)
          {
            goto LABEL_76;
          }

          v28 = *(*v20 + 8);
          if (v23.u32[0] > 1uLL)
          {
            if (v28 >= *&v21)
            {
              v28 %= *&v21;
            }
          }

          else
          {
            v28 &= *&v21 - 1;
          }

          if (v28 != v22)
          {
LABEL_76:
            *(v24 + 8 * v22) = 0;
          }
        }

        v29 = *v20;
        if (*v20)
        {
          v30 = *(v29 + 8);
          if (v23.u32[0] > 1uLL)
          {
            if (v30 >= *&v21)
            {
              v30 %= *&v21;
            }
          }

          else
          {
            v30 &= *&v21 - 1;
          }

          if (v30 != v22)
          {
            *(*(a1 + 2568) + 8 * v30) = v26;
            v29 = *v20;
          }
        }

        *v26 = v29;
        *v20 = 0;
        --*(a1 + 2592);
        operator delete(v20);
      }
    }
  }

  pthread_mutex_unlock((a1 + 2608));
  if (*(a1 + 2720) >= 0x3E9u)
  {
    v31 = *(a1 + 2696);
    if (v31)
    {
      v32 = 0;
      do
      {
        v33 = v31[6];
        if (*(v33 + 25) == 1)
        {
          if (atomic_load(v33))
          {
            if (!v32 || *(v33 + 16) < *(v32 + 16))
            {
              v32 = v31[6];
            }
          }
        }

        v31 = *v31;
      }

      while (v31);
      if (v32)
      {
        if (*(v32 + 25) != 1 || (v35 = atomic_load(v32)) == 0)
        {
          __assert_rtn("purge_pipeline_state", "ogl-metal.mm", 7140, "can_purge ()");
        }

        CA::OGL::MetalContext::Pipeline::wait_for_completion(v32);
        v36 = atomic_load(v32);

        atomic_store(0, v32);
        *(v32 + 24) = 0;
        --*(a1 + 2720);
      }
    }
  }
}

float CA::OGL::Context::end_rendering(CA::OGL::Context *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = (this + 88);
  v2 = *(this + 11);
  if (v2)
  {
    memset(v12, 0, sizeof(v12));
    do
    {
      X::Stream::printf(v12, "\n  %ux%u surface %p", v2[10], v2[11], v2);
      v4 = *v3;
      if (!v4)
      {
        __assert_rtn("operator++", "x-list-template.h", 121, "*_ptr != nullptr");
      }

      v5 = *(v4 + 16);
      v3 = (v4 + 16);
      v2 = v5;
    }

    while (v5);
    if (x_log_get_ogl(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
    }

    v6 = x_log_get_ogl(void)::log;
    if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_FAULT))
    {
      v11 = x_stream_get(v12);
      *buf = 136315138;
      v14 = v11;
      _os_log_fault_impl(&dword_183AA6000, v6, OS_LOG_TYPE_FAULT, "Transient surfaces left over after rendering complete:%s", buf, 0xCu);
    }

    if (v12[0])
    {
      free(v12[0]);
    }
  }

  v7 = *(this + 85);
  v8 = *(this + 84);
  if (v7 != v8 || (!v7 ? (v9 = 0) : (v9 = (*(v8 + 144) >> 1) & 0x1F), *(this + 167) != v9))
  {
    CA::OGL::Context::prepare_destination_(this);
  }

  (*(*this + 288))(this);
  *(this + 82) = 0;
  if (*&dword_1ED4E9648 > 0.0)
  {
    *&dword_1ED4E9648 = *&dword_1ED4E9648 + -1.0;
  }

  if (*&dword_1ED4E96F0 > 0.0)
  {
    *&dword_1ED4E96F0 = *&dword_1ED4E96F0 + -1.0;
  }

  result = *&dword_1ED4E9670;
  if (*&dword_1ED4E9670 > 0.0)
  {
    result = *&dword_1ED4E9670 + -1.0;
    *&dword_1ED4E9670 = *&dword_1ED4E9670 + -1.0;
  }

  return result;
}

double CA::OGL::MetalContext::restore_state(CA::OGL::MetalContext *this)
{
  v1 = *(this + 3);
  *(v1 + 96) = xmmword_183E21110;
  *(v1 + 112) = xmmword_183E21110;
  *(v1 + 128) = xmmword_183E21110;
  *(v1 + 496) = 1;
  *(v1 + 497) &= ~1u;
  *(this + 65) &= ~1u;
  result = NAN;
  *(this + 7) = -1;
  return result;
}

void CARecordFrame(unsigned int a1, __int32 a2, unsigned int a3, char a4, double a5, float64_t a6, float64_t a7)
{
  v11 = CAGetStatsStruct(a4);
  v12.f64[0] = a6;
  v12.f64[1] = a7;
  *(v11 + 10) = vaddq_f64(*(v11 + 10), v12);
  v13.i32[0] = 1;
  v13.i32[1] = a2;
  v13.i64[1] = __PAIR64__(a3, a1);
  *(v11 + 5) = vaddq_s32(*(v11 + 5), v13);
  v14 = *(v11 + 8);
  v15 = *(v11 + 9);
  if (v14 <= 0.0)
  {
    v14 = a5;
  }

  v16 = a5 - v14;
  *(v11 + 8) = a5;
  if (v16 > v15)
  {
    *(v11 + 9) = v16;
  }

  CAMarkStatistic(v11, a5);
}

void CA::OGL::render_subclass(CA::OGL::Renderer &,CA::OGL::Layer const*)::visitor::visit_subclass(uint64_t a1, uint64_t a2)
{
  v83 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (byte_1ED4E989C == 1)
  {
    v54 = *(*v4 + 600);
    if (v54)
    {
      v55 = (*(*v54 + 16))(v54);
      if (v55)
      {
        (*(*v55 + 2192))(v55, *(a2 + 16));
      }
    }
  }

  should_render_secure_indicators_with_gpu = CA::OGL::should_render_secure_indicators_with_gpu(*v4, v4[1], *(v3 + 16));
  v6 = should_render_secure_indicators_with_gpu;
  if (should_render_secure_indicators_with_gpu)
  {
    v7 = *(a2 + 16);
    if ((v7 - 3) <= 0xFFFFFFFB)
    {
      v8 = *(a2 + 24);
      if (v8 == 0xFFFF)
      {
        if (x_log_get_secure_indicators(void)::once != -1)
        {
          dispatch_once(&x_log_get_secure_indicators(void)::once, &__block_literal_global_5775);
        }

        v22 = x_log_get_secure_indicators(void)::log;
        if (os_log_type_enabled(x_log_get_secure_indicators(void)::log, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          *&buf[4] = v7;
          *&buf[8] = 1024;
          *&buf[10] = 0xFFFF;
          v23 = "Invalid secure indicator,frame (%u, %u)";
          goto LABEL_32;
        }
      }

      else
      {
        v66 = 0;
        if (MEMORY[0x1EEE910F8])
        {
          FrameData = SILManagerIndicatorGetFrameData();
          if (FrameData)
          {
            v11 = FrameData;
            v12 = *(v3 + 24);
            v13 = *(v12 + 88);
            v64 = *(v12 + 72);
            v65 = v13;
            v63 = *(*(*v4 + 656) + 24);
            CA::Rect::apply_transform(&v64, v63, v10);
            v14 = v65.f64[0];
            v15 = HIDWORD(v66);
            if (v65.f64[0] != HIDWORD(v66) || (v16 = v65.f64[1], v17 = v66, v65.f64[1] != v66))
            {
              if (x_log_get_secure_indicators(void)::once != -1)
              {
                dispatch_once(&x_log_get_secure_indicators(void)::once, &__block_literal_global_5775);
              }

              v18 = x_log_get_secure_indicators(void)::log;
              if (os_log_type_enabled(x_log_get_secure_indicators(void)::log, OS_LOG_TYPE_ERROR))
              {
                v53 = v65.f64[1];
                *buf = 67109888;
                *&buf[4] = HIDWORD(v66);
                *&buf[8] = 1024;
                *&buf[10] = v66;
                *&buf[14] = 2048;
                *v74 = v14;
                WORD4(v74[0]) = 2048;
                *(v74 + 10) = v65.f64[1];
                _os_log_error_impl(&dword_183AA6000, v18, OS_LOG_TYPE_ERROR, "SILManager flipbook size (%u, %u) mismatched provided size (%f, %f)", buf, 0x22u);
                v16 = v53;
              }

              else
              {
                v16 = v65.f64[1];
              }

              v17 = v66;
              v15 = HIDWORD(v66);
              if (v14 <= v16)
              {
                v19 = v16;
              }

              else
              {
                v19 = v14;
              }

              if (v19 < 1.79769313e308)
              {
                v20 = v14 >= v16 ? v16 : v14;
                if (v20 > 0.0)
                {
                  v21.f64[0] = (v14 - HIDWORD(v66)) * 0.5;
                  v21.f64[1] = (v16 - v66) * 0.5;
                  v64 = vaddq_f64(v64, v21);
                  v65.f64[0] = HIDWORD(v66);
                  v65.f64[1] = v66;
                  if (HIDWORD(v66) && v66)
                  {
                    v16 = v66;
                    v14 = HIDWORD(v66);
                  }

                  else
                  {
                    v65 = 0uLL;
                    v16 = 0.0;
                    v14 = 0.0;
                  }
                }
              }
            }

            v24 = *(*(v3 + 16) + 116);
            v25 = *v4;
            v26 = (*(**v4 + 632))(*v4, 1, v15, v17, 0);
            if (v26)
            {
              v27 = v26;
              v26[1].i32[1] |= 0x800000u;
              v82 = 0uLL;
              v28 = CA::OGL::Context::bind_image(v25, 0, v26, 2048, 1u, 1, 0, 0, 0.0, &v82, 0);
              if (v28)
              {
                v29.i32[0] = v24;
                v29.i32[1] = v24 >> 8;
                v29.i32[2] = HIWORD(v24);
                v30.i64[0] = 0xFF000000FFLL;
                v30.i64[1] = 0xFF000000FFLL;
                v31 = vandq_s8(v29, v30);
                v31.i32[3] = vshrq_n_u32(vdupq_n_s32(v24), 0x18uLL).i32[3];
                v61 = vmulq_f32(vcvtq_f32_u32(v31), vdupq_n_s32(0x3B808081u));
                v62 = v28;
                (*(*v25 + 640))(v25, v28, v27, 0, 0, 0, v15, v17, v11, 1);
                v81 = 0;
                v35.f64[1] = 0.0;
                *buf = xmmword_183E20E00;
                v74[0] = 0u;
                v36.i64[1] = 0x3FF0000000000000;
                v74[1] = xmmword_183E20E60;
                v75 = 0u;
                v76 = 0u;
                v77 = xmmword_183E20E00;
                v78 = 0u;
                v79 = xmmword_183E20E60;
                __asm { FMOV            V2.2D, #1.0 }

                v80 = _Q2;
                v42 = *(v63 + 144);
                if ((v42 & 2) != 0)
                {
                  v82 = vextq_s8(v82, v82, 8uLL);
                }

                v43 = vcvt_f16_f32(v61);
                if ((v42 & 4) != 0)
                {
                  v44 = v64.f64[0] + v14 * 0.5;
                  v45 = -v44;
                  *buf = xmmword_183E20E00;
                  v46 = v64.f64[1] + v16 * 0.5;
                  v47 = -v46;
                  v74[0] = 0uLL;
                  v75 = 0u;
                  v76 = 0u;
                  v74[1] = xmmword_183E20E60;
                  v77 = xmmword_183E20E00;
                  *&v78 = v44;
                  *(&v78 + 1) = v46;
                  *(&v79 + 1) = 0x3FF0000000000000;
                  v80 = _Q2;
                  *&v79 = 0;
                  LOBYTE(v81) = 0;
                  CA::Transform::rotate90(buf, v32, v33, v34);
                  v48.f64[0] = v45;
                  v35 = CA::Transform::translate(buf, v48, v47, 0.0);
                }

                *(v25[2] + 497) |= 1u;
                *(v25[2] + 8) = v43;
                v35.f64[0] = 1.0;
                v36.i64[0] = 1.0;
                v49 = CA::OGL::transform_filter_bits(v63, v32, v35, v36, _Q2);
                v50.i64[0] = 1.0;
                v52 = CA::OGL::rect_filter_bits(v63, v49, v51, v64, v65, v50, 1.0);
                v67[0] = &v64;
                v67[1] = buf;
                v68 = v52;
                v69 = 0;
                v71 = 0;
                v70 = 0;
                v72 = 0;
                CA::OGL::fill_rect_tex(v25, v67, v82.i32);
                *(v25[2] + 8) = 0x3C003C003C003C00;
                *(v25[2] + 497) &= ~1u;
                (*(*v25 + 560))(v25, v62, 0);
              }

              if (atomic_fetch_add(v27 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v27 + 16))(v27);
              }
            }

            free(v11);
            goto LABEL_44;
          }
        }

        if (x_log_get_secure_indicators(void)::once != -1)
        {
          dispatch_once(&x_log_get_secure_indicators(void)::once, &__block_literal_global_5775);
        }

        v22 = x_log_get_secure_indicators(void)::log;
        if (os_log_type_enabled(x_log_get_secure_indicators(void)::log, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          *&buf[4] = v7;
          *&buf[8] = 1024;
          *&buf[10] = v8;
          v23 = "Failed to get secure indicator data (%u, %u)";
LABEL_32:
          _os_log_error_impl(&dword_183AA6000, v22, OS_LOG_TYPE_ERROR, v23, buf, 0xEu);
        }
      }
    }
  }

LABEL_44:
  *(v4 + 101) = v6 ^ 1;
  if (BYTE4(xmmword_1ED4E988C) == 1)
  {
    v56 = *(*v4 + 600);
    if (v56)
    {
      v57 = (*(*v56 + 16))(v56);
      if (v57)
      {
        if (((*(*v57 + 2200))(v57, *(a2 + 16), *(a2 + 24)) & 1) == 0)
        {
          v59 = *v4;
          v60 = *(*(*v4 + 656) + 24);
          *buf = *(v3 + 24) + 72;
          *&buf[8] = v60;
          memset(v74, 0, sizeof(v74));
          CA::OGL::fill_color_rect(v59, buf, 0x80408080, 0.0, v58);
        }
      }
    }
  }
}

{
  v69 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *(a2 + 24);
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(v6)))))
    {
      if ((*(v2 + 13) & 0xE) != 0)
      {
        v7 = *v4;
        v8 = *(*v4 + 82);
        v9 = vcvt_f16_f32(v6);
        if (*&v8[4] != 0x3C003C003C003C00)
        {
          _Q1 = vcvtq_f32_f16(v8[4]);
          _S2 = _Q1.i32[1];
          _KR00_8 = _Q1.i64[1];
          __asm
          {
            FCVT            H1, S1
            FCVT            H4, S2
            FCVT            H3, S3
            FCVT            H2, S5
          }

          _D1.i16[1] = _H4;
          _D1.i16[2] = _H3;
          _D1.i16[3] = _S2;
          if (*&v9 == 0x3C003C003C003C00)
          {
            v9 = _D1;
          }

          else
          {
            v9 = vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(_D1), vcvtq_f32_f16(v9)));
          }
        }

        v63[0].f64[0] = 0.0;
        *&v65.f64[0] = v9;
        CA::OGL::colormatched_layer_color(v63, v4, v5, &v65, *(a2 + 40));
        *(*(v7 + 2) + 8) = v63[0].f64[0];
        v23 = *(v7 + 2);
        if (*(v23 + 496) >= 2u)
        {
          *(v23 + 497) |= 1u;
        }

        v24 = *(v2 + 72);
        v59 = *(v2 + 56);
        v60 = v24;
        v25 = *&v8[3];
        *&v65.f64[0] = &v59;
        v65.f64[1] = v25;
        v66 = 0xFF0000003FuLL;
        v67 = 0uLL;
        CA::OGL::fill_round_rect(v7, &v65, 0xF, 0, *(v2 + 88), *(v2 + 96));
        *(*(v7 + 2) + 497) &= ~1u;
      }

      else
      {
        v19 = *(a2 + 136);
        v20 = CA::Render::Path::bounding_rect(*(a2 + 16));
        v22 = *(v20 + 16);
        v65 = *v20;
        v21 = v65;
        v66 = v22;
        v21.i32[0] = *(a2 + 24);
        CA::OGL::render_shape(v4, v5, v2, v21, *(a2 + 28), *(a2 + 32), *(a2 + 36), *(a2 + 40), v19, &v65, *(a2 + 48), 0);
      }
    }

    v26 = *(a2 + 104);
    if (v26 != 0.0 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(*(a2 + 56))))) & 1) != 0)
    {
      if (!*(a2 + 128) && *(a2 + 88) == 0.0 && *(a2 + 96) == 1.0 && (v58 = *(a2 + 56), v27 = *(v2 + 72), v65 = *(v2 + 56), v66 = v27, CA::BoundsImpl::inset(&v65, v26 * -0.5, v26 * -0.5), v26 < v66.f64[0] * 0.5) && v26 < v66.f64[1] * 0.5 && ((v28 = *(v2 + 12), (v28 & 0x400) != 0) || v66.f64[0] == v66.f64[1] && (v28 & 0x800) != 0 || (v28 & 0x200) != 0 && (*(a2 + 137) == 1 || !*(a2 + 137) && *(a2 + 112) >= 1.41421356)))
      {
        v29 = *v4;
        v30 = *(*v4 + 82);
        v31 = vcvt_f16_f32(v58);
        v32 = *(a2 + 72);
        if (*&v30[4] != 0x3C003C003C003C00)
        {
          _Q2 = vcvtq_f32_f16(v30[4]);
          _S5 = _Q2.i32[1];
          _KR08_8 = _Q2.i64[1];
          __asm { FCVT            H2, S2 }

          if (*&v31 == 0x3C003C003C003C00)
          {
            __asm
            {
              FCVT            H1, S5
              FCVT            H4, S4
            }

            _Q2.i16[1] = _H1;
            __asm { FCVT            H1, S3 }

            _Q2.i16[2] = _H4;
            _Q2.i16[3] = _H1;
            v31 = *_Q2.f32;
          }

          else
          {
            __asm
            {
              FCVT            H5, S5
              FCVT            H4, S4
              FCVT            H3, S3
            }

            _Q2.i16[1] = _H5;
            _Q2.i16[2] = _H4;
            _Q2.i16[3] = _H3;
            v31 = vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(*_Q2.f32), vcvtq_f32_f16(v31)));
          }
        }

        v64 = 0;
        *&v65.f64[0] = v31;
        CA::OGL::colormatched_layer_color(&v64, v4, v5, &v65, v32);
        *(*(v29 + 2) + 8) = v64;
        v52 = *(v29 + 2);
        if (*(v52 + 496) >= 2u)
        {
          *(v52 + 497) |= 1u;
        }

        v53 = *(v2 + 72);
        v63[0] = *(v2 + 56);
        v63[1] = v53;
        v67 = 0u;
        v68 = 0u;
        v55 = *(v2 + 88);
        v54 = *(v2 + 96);
        v56 = *(a2 + 104);
        v65.f64[0] = v55;
        v65.f64[1] = v54;
        CA::BoundsImpl::inset(v63, -(v56 * 0.5), -(v56 * 0.5));
        if (*(a2 + 137) << 8 == 256 || v55 > 0.0 || v54 > 0.0)
        {
          v65.f64[0] = v55 + v56 * 0.5;
          v65.f64[1] = v54 + v56 * 0.5;
        }

        v57 = v30[3];
        *&v59 = v63;
        *(&v59 + 1) = v57;
        v60 = 0xFF0000003FuLL;
        v61 = 0;
        v62 = 0;
        v66 = v65;
        v67 = v65;
        v68 = v65;
        CA::OGL::stroke_uneven_round_rect(v29, &v59, v65.f64, 0, v56);
        *(*(v29 + 2) + 497) &= ~1u;
      }

      else
      {
        v39 = *(*(*v4 + 82) + 24);
        if ((*(v39 + 144) & 0x10) != 0)
        {
          v41 = vaddvq_f64(vmulq_f64(*v39, *v39));
          v42 = vaddvq_f64(vmulq_f64(*(v39 + 32), *(v39 + 32)));
          v43 = *(v39 + 120);
          v40 = 1.0;
          if (v43 != 1.0)
          {
            v44 = 1.0 / (v43 * v43);
            v41 = v44 * v41;
            v42 = v44 * v42;
          }

          _ZF = v42 == 1.0 && v41 == 1.0;
          v46 = (sqrt(v42) + sqrt(v41)) * 0.5;
          if (!_ZF)
          {
            v40 = v46;
          }
        }

        else
        {
          v40 = *(v39 + 128);
        }

        CA::Render::ShapeLayer::stroke_path(&v59, v40, a2);
        v47 = v59;
        *v48.i64 = CA::Render::ShapeLayer::stroke_bounds(&v65, a2);
        v48.i32[0] = *(a2 + 56);
        CA::OGL::render_shape(v4, v5, v47, v48, *(a2 + 60), *(a2 + 64), *(a2 + 68), *(a2 + 72), 0, &v65, *(a2 + 80), *(a2 + 104) < 0.0);
        if (v47 && atomic_fetch_add(v47 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v47 + 16))(v47);
        }
      }
    }
  }
}

{
  v2 = *(a2 + 24);
  if (v2 && v2[31]._os_unfair_lock_opaque)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    os_unfair_lock_lock(v2 + 6);
    CA::OGL::render_emitter_cells(v4, v5, a2, *(a2 + 32), &v2[28]);

    os_unfair_lock_unlock(v2 + 6);
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::detached_layers_valid_p(CA::WindowServer::IOMFBDisplay *this, const CA::Render::Update *a2)
{
  v57[1] = *MEMORY[0x1E69E9840];
  if ((*(*this + 1576))(this))
  {
    return 1;
  }

  v4 = *(this + 3287);
  if (!v4 || !*(v4 + 24) || (*(v4 + 292) & 1) != 0)
  {
    return 1;
  }

  v7 = *(this + 6856);
  switch(v7)
  {
    case 3:
      v53 = 216;
      if ((*(v4 + 40) & 8) == 0)
      {
        v53 = 208;
      }

      if (!(*(*this + 2432))(this, *(v4 + v53)))
      {
        return 0;
      }

      v8 = (this + 25848);
      pthread_mutex_lock((this + 25848));
      v54 = *(this + 6 * *(this + 6458) + 3240);
      if (!v54 || (v55 = *(v54 + 32)) == 0 || (*(*this + 2432))(this, *(v55 + 56)))
      {
        v5 = 1;
        goto LABEL_50;
      }

      goto LABEL_49;
    case 2:
      v8 = (this + 25848);
      pthread_mutex_lock((this + 25848));
      v33 = *(this + 3287);
      v34 = *(this + 6 * *(this + 6458) + 3240);
      v57[0] = 0;
      v35 = *(this + 52);
      v37 = *(v33 + 208);
      v36 = *(v33 + 216);
      v38 = *(v33 + 40);
      if ((v38 & 8) != 0)
      {
        v39 = *(v33 + 216);
      }

      else
      {
        v39 = *(v33 + 208);
      }

      if ((v38 & 8) != 0)
      {
        v36 = *(v33 + 208);
      }

      v40.n128_f32[0] = CA::WindowServer::layer_bandwidth_v2(*(*(v33 + 24) + 64), (v57 + 4), v57, v30, v39, v31, v32, v36, *(v33 + 248), v35);
      if ((*(*this + 2432))(this, v37, v40))
      {
        if (!v34)
        {
          goto LABEL_40;
        }

        v46 = *(v34 + 32);
        if (!v46 || (*(v34 + 68) & 4) != 0 || (*(a2 + 304) & 8) == 0)
        {
          goto LABEL_40;
        }

        v47 = *(v46 + 56);
        v56 = v47;
        v48.i64[0] = v47;
        v48.i64[1] = HIDWORD(v47);
        v49 = vcvtq_f64_u64(v48);
        v50 = *(this + 40);
        v51 = *(this + 41);
        if (v50 <= v51)
        {
          v50 = *(this + 41);
        }

        v52 = 1.79769313e308;
        if (v50 <= 1073741822)
        {
          v52 = v51;
        }

        CA::WindowServer::layer_bandwidth_v2(*(v46 + 64), (v57 + 4), v57, v41, v49.f64[0], v42, v43, v49.f64[1], v52, v35);
        if ((*(*this + 2432))(this, v56))
        {
LABEL_40:
          v44.n128_u32[0] = HIDWORD(v57[0]);
          v45.n128_u32[0] = v57[0];
          v29 = (*(*this + 2440))(this, v44, v45);
LABEL_41:
          v5 = v29;
LABEL_50:
          pthread_mutex_unlock(v8);
          return v5;
        }
      }

LABEL_49:
      v5 = 0;
      goto LABEL_50;
    case 1:
      v8 = (this + 25848);
      pthread_mutex_lock((this + 25848));
      v9 = *(this + 3287);
      v10 = *(v9 + 208);
      v11 = *(v9 + 40);
      if ((v11 & 8) != 0)
      {
        v12 = *(v9 + 216);
      }

      else
      {
        v12 = *(v9 + 208);
      }

      if ((v11 & 8) == 0)
      {
        v10 = *(v9 + 216);
      }

      v13 = *(this + 6 * *(this + 6458) + 3240);
      v14 = *(v9 + 240) / v12;
      v15 = *(v9 + 248) / v10;
      v16 = CA::WindowServer::Surface::bits_per_pixel(*(*(v9 + 24) + 64));
      v18.n128_f32[0] = v14 * 8.0;
      v19 = v16 / ((v14 * 8.0) * v15);
      v20 = (ceilf(1.0 / v15) * v16) / v18.n128_f32[0];
      if (v13)
      {
        v21 = *(v13 + 32);
        if (v21)
        {
          if ((*(v13 + 68) & 4) == 0 && (*(a2 + 304) & 8) != 0)
          {
            v17.n128_u32[0] = v21[14];
            v18.n128_u32[0] = v21[15];
            v17.n128_f64[0] = v17.n128_u64[0];
            v18.n128_f64[0] = v18.n128_u64[0];
            v22 = *(this + 40);
            v23 = *(this + 41);
            v24 = v22;
            v25 = v23;
            if (v22 <= v23)
            {
              v22 = *(this + 41);
            }

            if (v22 > 1073741822)
            {
              v24 = 1.79769313e308;
              v25 = 1.79769313e308;
            }

            v26 = v24 / v17.n128_f64[0];
            v27 = v25 / v18.n128_f64[0];
            v28 = CA::WindowServer::Surface::bits_per_pixel(v21[16]);
            v19 = (v28 / ((v26 * 8.0) * v27)) + v19;
            v20 = ((ceilf(1.0 / v27) * v28) / (v26 * 8.0)) + v20;
          }
        }
      }

      v17.n128_f32[0] = v19;
      v18.n128_f32[0] = v20;
      v29 = (*(*this + 2440))(this, v17, v18);
      goto LABEL_41;
  }

  return 1;
}

void CA::Render::SDFElementLayer::~SDFElementLayer(CA::Render::SDFElementLayer *this, const CA::Render::Object *a2)
{
  --dword_1ED4EAAF4;
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
  --dword_1ED4EAAF4;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

void CA::OGL::MetalBufferPool::pool_flush(os_unfair_lock_s *this, unint64_t a2, int a3)
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (a3 && *&this[2]._os_unfair_lock_opaque && this[6]._os_unfair_lock_opaque)
  {
    CA::OGL::MetalBufferPool::retire_metal_buffer(this);
  }

  os_unfair_lock_lock(this + 14);
  v5 = *&this[86]._os_unfair_lock_opaque;
  if (v5)
  {
    v6 = &this[86];
    v7 = *&this[86]._os_unfair_lock_opaque;
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7);
    do
    {
      v9 = *(v5 + 4);
      v10 = v9 > a2;
      v11 = v9 <= a2;
      if (v10)
      {
        v6 = v5;
      }

      v5 = *&v5[8 * v11];
    }

    while (v5);
    v12 = v8;
    if (v8 != v6)
    {
      v13 = v8;
      do
      {
        v14 = v13[5];
        v28[0] = v14;
        if ([v14 length] == 0x40000)
        {
          v15 = *&this[70]._os_unfair_lock_opaque;
          if (v15 >= 0x10)
          {
            v16 = *&this[68]._os_unfair_lock_opaque;
            v17 = *(*(*&this[62]._os_unfair_lock_opaque + ((v16 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v16 & 0x1FF));
            v27 = v17;
            *&this[68]._os_unfair_lock_opaque = v16 + 1;
            *&this[70]._os_unfair_lock_opaque = v15 - 1;
            std::deque<objc_object  {objcproto9MTLBuffer}*>::__maybe_remove_front_spare[abi:nn200100](&this[60]);
            v18 = *&this[82]._os_unfair_lock_opaque;
            if (v18 >= 0x40)
            {
              v19 = *(*(*&this[74]._os_unfair_lock_opaque + ((*&this[80]._os_unfair_lock_opaque >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*&this[80]._os_unfair_lock_opaque & 0x1FFLL));
              ++*&this[80]._os_unfair_lock_opaque;
              *&this[82]._os_unfair_lock_opaque = v18 - 1;
              std::deque<objc_object  {objcproto9MTLBuffer}*>::__maybe_remove_front_spare[abi:nn200100](&this[72]);
            }

            std::deque<objc_object  {objcproto9MTLBuffer}*>::push_back(&this[72]._os_unfair_lock_opaque, &v27);
            [v17 setPurgeableState:3];
          }

          std::deque<objc_object  {objcproto9MTLBuffer}*>::push_back(&this[60]._os_unfair_lock_opaque, v28);
        }

        else
        {
        }

        v20 = v13[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v13[2];
            v22 = *v21 == v13;
            v13 = v21;
          }

          while (!v22);
        }

        v13 = v21;
      }

      while (v21 != v6);
      v12 = v6;
    }

    if (v8 != v12)
    {
      do
      {
        v23 = v8[1];
        v24 = v8;
        if (v23)
        {
          do
          {
            v25 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v25 = v24[2];
            v22 = *v25 == v24;
            v24 = v25;
          }

          while (!v22);
        }

        if (*&this[84]._os_unfair_lock_opaque == v8)
        {
          *&this[84]._os_unfair_lock_opaque = v25;
        }

        v26 = *&this[86]._os_unfair_lock_opaque;
        --*&this[88]._os_unfair_lock_opaque;
        std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v26, v8);
        operator delete(v8);
        v8 = v25;
      }

      while (v25 != v12);
    }
  }

  os_unfair_lock_unlock(this + 14);
}

void *CA::Render::Update::release_objects(void *this)
{
  v1 = this[44];
  if (v1)
  {
    v2 = this;
    do
    {
      v3 = v1;
      atomic_compare_exchange_strong(v2 + 44, &v3, 0);
      if (v3 == v1)
      {
        do
        {
          this = *v1;
          if (atomic_fetch_add((*v1 + 8), 0xFFFFFFFF) == 1)
          {
            this = (*(*this + 16))(this);
          }

          v1 = v1[1];
        }

        while (v1);
      }

      v1 = v2[44];
    }

    while (v1);
  }

  return this;
}

void CA::OGL::MetalContext::collect(CA::OGL::MetalContext *this, int a2)
{
  CA::OGL::MetalContext::purge_deferred_surfaces(this);
  v4 = *(this + 595);
  v5 = atomic_load(this + 594);
  CA::OGL::MetalBufferPool::pool_flush(v4, v5, 0);
  if (a2)
  {
    os_unfair_lock_lock((v4 + 56));
    v6 = *(v4 + 248);
    v7 = *(v4 + 256);
    if (v7 == v6)
    {
      v11 = (v4 + 280);
      v7 = *(v4 + 248);
    }

    else
    {
      v8 = *(v4 + 272);
      v9 = &v6[v8 >> 9];
      v10 = (*v9 + 8 * (v8 & 0x1FF));
      v11 = (v4 + 280);
      v12 = *(v6 + (((*(v4 + 280) + v8) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v4 + 280) + v8) & 0x1FF);
      if (v10 != v12)
      {
        do
        {

          if (v10 - *v9 == 4096)
          {
            v13 = v9[1];
            ++v9;
            v10 = v13;
          }
        }

        while (v10 != v12);
        v6 = *(v4 + 248);
        v7 = *(v4 + 256);
      }
    }

    *v11 = 0;
    v14 = v7 - v6;
    if (v14 >= 3)
    {
      do
      {
        operator delete(*v6);
        v15 = *(v4 + 256);
        v6 = (*(v4 + 248) + 8);
        *(v4 + 248) = v6;
        v14 = (v15 - v6) >> 3;
      }

      while (v14 > 2);
    }

    if (v14 == 1)
    {
      v16 = 256;
    }

    else
    {
      if (v14 != 2)
      {
        goto LABEL_16;
      }

      v16 = 512;
    }

    *(v4 + 272) = v16;
LABEL_16:
    v17 = *(v4 + 296);
    v18 = *(v4 + 304);
    if (v18 == v17)
    {
      v22 = (v4 + 328);
      v18 = *(v4 + 296);
    }

    else
    {
      v19 = *(v4 + 320);
      v20 = &v17[v19 >> 9];
      v21 = (*v20 + 8 * (v19 & 0x1FF));
      v22 = (v4 + 328);
      v23 = *(v17 + (((*(v4 + 328) + v19) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v4 + 328) + v19) & 0x1FF);
      if (v21 != v23)
      {
        do
        {

          if (v21 - *v20 == 4096)
          {
            v24 = v20[1];
            ++v20;
            v21 = v24;
          }
        }

        while (v21 != v23);
        v17 = *(v4 + 296);
        v18 = *(v4 + 304);
      }
    }

    *v22 = 0;
    v25 = v18 - v17;
    if (v25 >= 3)
    {
      do
      {
        operator delete(*v17);
        v26 = *(v4 + 304);
        v17 = (*(v4 + 296) + 8);
        *(v4 + 296) = v17;
        v25 = (v26 - v17) >> 3;
      }

      while (v25 > 2);
    }

    if (v25 == 1)
    {
      v27 = 256;
    }

    else
    {
      if (v25 != 2)
      {
LABEL_30:
        os_unfair_lock_unlock((v4 + 56));
        goto LABEL_31;
      }

      v27 = 512;
    }

    *(v4 + 320) = v27;
    goto LABEL_30;
  }

LABEL_31:

  CA::OGL::Context::collect(this, a2);
}

void CA::OGL::Context::collect(CA::OGL::Context *this, char a2)
{
  v90 = *MEMORY[0x1E69E9840];
  v4 = *(this + 105);
  if (v4)
  {
    v5 = *(this + 81);
    v88 = 0;
    v89 = 0.0;
    if (v5 != 0.0)
    {
      v89 = v5 + -5.0;
      if (v5 + -5.0 > *(v4 + 32))
      {
        v88 = v4;
        *(v4 + 32) = 0x7FF0000000000000;
        os_unfair_lock_lock((v4 + 40));
        x_hash_table_remove_if (*(v4 + 16), CA::Render::TileCache::collect_entry, &v88);
        os_unfair_lock_unlock((v4 + 40));
      }
    }

    if (*(v4 + 24))
    {
      os_unfair_lock_lock((v4 + 40));
      v6 = *(v4 + 24);
      *(v4 + 24) = 0;
      os_unfair_lock_unlock((v4 + 40));
      if (v6)
      {
        v7 = v6;
        do
        {
          v8 = *v7;
          CA::Render::tile_cache_entry_release_images(v4, *v7);
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          malloc_zone_free(malloc_zone, v8);
          v7 = v7[1];
        }

        while (v7);
        do
        {
          v9 = v6[1];
          free(v6);
          v6 = v9;
        }

        while (v9);
      }
    }
  }

  v10 = *(this + 106);
  if (v10)
  {
    if (*(v10 + 16))
    {
      v11 = *(this + 81);
      os_unfair_lock_lock((v10 + 40));
      v12 = *(v10 + 16);
      *(v10 + 16) = 0;
      os_unfair_lock_unlock((v10 + 40));
      if (v12)
      {
        v15 = 15;
        v16 = v12;
        do
        {
          v16 = v16[1];
          if (v15 < 2)
          {
            break;
          }

          --v15;
        }

        while (v16);
        if (v16)
        {
          v17 = v16[1];
          if (v17)
          {
            do
            {
              CA::Render::ShadowCache::free_bounds_entry(*v17, v13, v14);
              v17 = *(v17 + 8);
            }

            while (v17);
            v18 = v16[1];
            if (v18)
            {
              do
              {
                v19 = v18[1];
                free(v18);
                v18 = v19;
              }

              while (v19);
            }

            v16[1] = 0;
          }
        }

        v20 = v12;
        do
        {
          v21 = *v20;
          v20 = v20[1];
          if (*(v21 + 96) + 60.0 < v11)
          {
            x_list_remove(v12, v21);
            v22 = *(v21 + 104);
            if (v22)
            {
              if (atomic_fetch_add(v22 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v22 + 16))(v22);
              }

              *(v21 + 104) = 0;
            }

            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            malloc_zone_free(malloc_zone, v21);
          }
        }

        while (v20);
        os_unfair_lock_lock((v10 + 40));
        v23 = *(v10 + 16);
        v88 = v23;
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *(v23 + 8);
          }

          while (v23);
          v25 = (v24 + 8);
        }

        else
        {
          v25 = &v88;
        }

        *v25 = v12;
        *(v10 + 16) = v88;
      }

      else
      {
        os_unfair_lock_lock((v10 + 40));
      }

      os_unfair_lock_unlock((v10 + 40));
    }

    if (*(v10 + 32))
    {
      os_unfair_lock_lock((v10 + 40));
      v26 = *(v10 + 32);
      *(v10 + 32) = 0;
      os_unfair_lock_unlock((v10 + 40));
      if (v26)
      {
        do
        {
          v27 = *v26;
          v28 = v26[19];
          if (v28)
          {
            v26[20] = v28;
            operator delete(v28);
          }

          v29 = v26[16];
          if (v29)
          {
            v26[17] = v29;
            operator delete(v29);
          }

          v30 = v26[2];
          if (v30 && atomic_fetch_add(v30 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v30 + 16))(v30);
          }

          v31 = v26[1];
          if (v31 && atomic_fetch_add(v31 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v31 + 16))(v31);
          }

          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          malloc_zone_free(malloc_zone, v26);
          v26 = v27;
        }

        while (v27);
      }
    }

    if (*(v10 + 24))
    {
      os_unfair_lock_lock((v10 + 40));
      v32 = *(v10 + 24);
      *(v10 + 24) = 0;
      os_unfair_lock_unlock((v10 + 40));
      if (v32)
      {
        do
        {
          v34 = *v32;
          v33 = v32[1];
          if (v33 && atomic_fetch_add(v33 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v33 + 16))(v33);
          }

          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          malloc_zone_free(malloc_zone, v32);
          v32 = v34;
        }

        while (v34);
      }
    }
  }

  if (*(this + 305) && (BYTE5(xmmword_1ED4E98AC) & 1) == 0)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::clear(this + 302);
  }

  os_unfair_lock_lock(this + 178);
  v35 = *(this + 96);
  v36 = (this + 760);
  ptr = *(this + 95);
  v87 = v35;
  *(this + 760) = 0u;
  v37 = *(this + 98);
  v85 = v37;
  *(this + 98) = 0;
  if (v35)
  {
    v38 = v35;
    do
    {
      *(*v38 + 60) = 0;
      v38 = v38[1];
    }

    while (v38);
  }

  os_unfair_lock_unlock(this + 178);
  if (a2)
  {
    v39 = -1;
    if (!v37)
    {
      goto LABEL_79;
    }
  }

  else
  {
    v39 = *(this + 160);
    if (!v37)
    {
      goto LABEL_79;
    }
  }

  v40 = &v85;
  do
  {
    v41 = *v37;
    if ((*(*v37 + 148) & 1) != 0 && *(v41 + 4) > v39)
    {
      v40 = v37 + 1;
    }

    else
    {
      *v40 = x_list_remove_head(v37);
      CA::OGL::Context::release_surface(this, v41);
    }

    v37 = *v40;
  }

  while (*v40);
  v35 = v87;
LABEL_79:
  if (v35)
  {
    v42 = &v87;
    do
    {
      v43 = *v35;
      v44 = *(*v35 + 20);
      if (v44 > v39)
      {
        if (v44 == *(this + 159))
        {
          goto LABEL_88;
        }
      }

      else if (v39 != -1)
      {
        goto LABEL_86;
      }

      if (!(*(*this + 680))(this, *v35, v44 <= v39))
      {
LABEL_88:
        v42 = v35 + 1;
        goto LABEL_89;
      }

LABEL_86:
      v35 = x_list_remove_head(v35);
      *v42 = v35;
      *(v43 + 20) = 0;
      v45 = *(v43 + 8);
      if (v45)
      {
        (*(*v45 + 200))(v45);
        *(v43 + 8) = 0;
LABEL_89:
        v35 = *v42;
      }
    }

    while (v35);
  }

  v46 = ptr;
  if (ptr)
  {
    p_ptr = &ptr;
    do
    {
      v48 = *v46;
      if ((v39 == -1 || *(v48 + 20) > v39) && !(*(*this + 680))(this, *v46, v39 == -1))
      {
        p_ptr = (v46 + 1);
      }

      else
      {
        *p_ptr = x_list_remove_head(v46);
        (*(*this + 688))(this, v48);
        v49 = *(v48 + 32);
        if (v49)
        {
          CA::WindowServer::Surface::unref(v49);
        }

        v50 = *(v48 + 40);
        if (v50)
        {
          CA::WindowServer::Surface::unref(v50);
        }

        v51 = *(v48 + 8);
        if (v51)
        {
          (*(*v51 + 200))(v51);
          *(v48 + 8) = 0;
        }

        if ((*(v48 + 59) & 2) != 0)
        {
          v52 = *(this + 97);
          x_list_remove(v52, v48);
          *(this + 97) = v52;
        }

        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_zone_free(malloc_zone, v48);
      }

      v46 = *p_ptr;
    }

    while (*p_ptr);
    v46 = ptr;
  }

  v53 = v85;
  v54 = v87;
  if (v85 || v87 || v46)
  {
    os_unfair_lock_lock(this + 178);
    v55 = *(this + 98);
    v88 = v55;
    if (v55)
    {
      do
      {
        v56 = v55;
        v55 = *(v55 + 8);
      }

      while (v55);
      v57 = (v56 + 8);
    }

    else
    {
      v57 = &v88;
    }

    *v57 = v53;
    *(this + 98) = v88;
    if (v54)
    {
      do
      {
        v58 = v54[1];
        if (*(*v54 + 61))
        {
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          malloc_zone_free(malloc_zone, v54);
        }

        else
        {
          *(*v54 + 60) = 1;
          v54[1] = *(this + 96);
          *(this + 96) = v54;
        }

        v54 = v58;
      }

      while (v58);
    }

    v59 = *v36;
    v87 = 0;
    v88 = v59;
    if (v59)
    {
      do
      {
        v60 = v59;
        v59 = *(v59 + 8);
      }

      while (v59);
      v61 = (v60 + 8);
    }

    else
    {
      v61 = &v88;
    }

    *v61 = v46;
    *v36 = v88;
    os_unfair_lock_unlock(this + 178);
  }

  v62 = *(this + 97);
  if (v62)
  {
    v63 = (this + 776);
    do
    {
      v64 = *v62;
      if (*(*v62 + 20) > v39 || v39 == -1 && !(*(*this + 680))(this, *v62, 1))
      {
        v63 = v62 + 1;
      }

      else
      {
        *v63 = x_list_remove_head(v62);
        *(v64 + 52) &= ~0x200000000000000uLL;
        (*(*this + 688))(this, v64);
      }

      v62 = *v63;
    }

    while (*v63);
  }

  v65 = *(this + 100);
  if (v65)
  {
    v67 = *v65;
    v66 = v65[1];
    if (*v65 != v66)
    {
      while (1)
      {
        v68 = *(v67 + 26) - 1;
        *(v67 + 26) = v68;
        if (!v68)
        {
          break;
        }

        v67 += 32;
        if (v67 == v66)
        {
          goto LABEL_159;
        }
      }

      if (v67 != v66)
      {
        v69 = v67 + 32;
        if (v67 + 32 != v66)
        {
          do
          {
            v70 = *(v69 + 26) - 1;
            *(v69 + 26) = v70;
            if (v70)
            {
              *v67 = *v69;
              v71 = *(v69 + 8);
              *(v69 + 8) = 0;
              v72 = *(v67 + 8);
              *(v67 + 8) = v71;
              if (v72 && atomic_fetch_add(v72 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v72 + 16))(v72);
              }

              v73 = *(v69 + 16);
              *(v69 + 16) = 0;
              v74 = *(v67 + 16);
              *(v67 + 16) = v73;
              if (v74 && atomic_fetch_add(v74 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v74 + 16))(v74);
              }

              *(v67 + 24) = *(v69 + 24);
              v67 += 32;
            }

            v69 += 32;
          }

          while (v69 != v66);
          v65 = *(this + 100);
          v66 = v65[1];
        }
      }
    }

    if (v67 != v66)
    {
      while (v66 != v67)
      {
        v66 -= 32;
        std::__destroy_at[abi:nn200100]<CA::OGL::TransientRenderTexture,0>(v66);
      }

      v65[1] = v67;
    }
  }

LABEL_159:
  v75 = this + 808;
  if (*(this + 102) != (this + 808))
  {
    v76 = *(this + 101);
    if (v76 != v75)
    {
      while ((a2 & 1) != 0 || (*(this + 159) - *(v76 + 6)) > 0x1D || *(this + 103) > *(this + 104))
      {
        v78 = *v76;
        v77 = *(v76 + 1);
        *(v78 + 1) = v77;
        *v77 = v78;
        *v76 = v76;
        *(v76 + 1) = v76;
        v79 = *(v76 + 6);
        if (v79)
        {
          *(this + 103) -= *(v79 + 60) * *(v79 + 56) * (*(v79 + 146) & 0x1F);
          CA::OGL::Context::release_surface(this, v79);
        }

        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_zone_free(malloc_zone, v76);
        v76 = v78;
        if (v78 == v75)
        {
          goto LABEL_175;
        }
      }
    }

    v78 = v76;
LABEL_175:
    while (v78 != v75)
    {
      if (*(v78 + 6) && *(v78 + 6) < *(this + 159))
      {
        (*(*this + 872))(this);
      }

      v78 = *(v78 + 1);
    }
  }

  v81 = (this + 80);
  v80 = *(this + 10);
  if (v80)
  {
    do
    {
      if ((a2 & 1) != 0 || (v83 = *v80 - 1, v82 = *v80 == 1, *v80 = v83, v82))
      {
        *v81 = *(v80 + 8);
        (*(*this + 800))(this, v80);
      }

      else
      {
        if (v83 <= 2)
        {
          (*(*this + 872))(this, v80, 2);
        }

        v81 = (v80 + 8);
      }

      v80 = *v81;
    }

    while (*v81);
  }

  if (a2)
  {
    v84 = *(this + 86);
    if (v84)
    {
      if (*v84 == 1)
      {
        CA::OGL::Context::release_surface(this, v84);
        *(this + 86) = 0;
      }
    }
  }
}

void CA::Render::GradientLayer::~GradientLayer(CA::Render::GradientLayer *this)
{
  *this = &unk_1EF204CF8;
  v2 = *(this + 17);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    CFRelease(v3);
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

  CA::Render::InterpolatedFunction::~InterpolatedFunction(this + 2);
  --dword_1ED4EAA88;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, v6);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v7 = malloc_zone;

  malloc_zone_free(v7, this);
}

{
  *this = &unk_1EF204CF8;
  v2 = *(this + 17);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    CFRelease(v3);
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

  CA::Render::InterpolatedFunction::~InterpolatedFunction(this + 2);
  --dword_1ED4EAA88;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, v6);
  }
}

void CA::Render::InterpolatedFunction::~InterpolatedFunction(void **this)
{
  *this = &unk_1EF1FBE88;
  free(this[4]);
  free(this[6]);
  --dword_1ED4EAA80;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, v2);
  }
}

{
  CA::Render::InterpolatedFunction::~InterpolatedFunction(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

void CA::Render::Update::mark_composited(CA::Render::Update *this)
{
  v1 = *(this + 111);
  if (v1)
  {
    v2 = *(this + 111);
    atomic_compare_exchange_strong(this + 111, &v2, 0);
    if (v2 == v1)
    {
      v3 = *v1;
      if (*v1 != v1 + 1)
      {
        do
        {
          v4 = v3[4];
          if (*(v4 + 12) != 25)
          {
            __assert_rtn("mark_composited", "render-updater.cpp", 12032, "obj->type () == Render::kTypeImageQueue");
          }

          CA::Render::ImageQueue::did_composite(v3[4]);
          if (atomic_fetch_add((v4 + 8), 0xFFFFFFFF) == 1)
          {
            (*(*v4 + 16))(v4);
          }

          v5 = v3[1];
          if (v5)
          {
            do
            {
              v6 = v5;
              v5 = *v5;
            }

            while (v5);
          }

          else
          {
            do
            {
              v6 = v3[2];
              v7 = *v6 == v3;
              v3 = v6;
            }

            while (!v7);
          }

          v3 = v6;
        }

        while (v6 != v1 + 1);
      }

      std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(v1[1]);

      JUMPOUT(0x1865EA9A0);
    }
  }
}

void *std::deque<objc_object  {objcproto9MTLBuffer}*>::push_back(void *result, void *a2)
{
  v3 = result;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = result[2];
  v4 = result[1];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 6) - 1;
  }

  v7 = result[4];
  v8 = result[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x200)
    {
      v9 = result[3];
      v10 = v9 - *result;
      if (v5 - v4 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *result)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<objc_object  {objcproto9MTLBuffer}**>>(v12);
    }

    result[4] = v7 - 512;
    v13[0] = *v4;
    result[1] = v4 + 8;
    result = std::__split_buffer<objc_object  {objcproto9MTLBuffer}**>::emplace_back<objc_object  {objcproto9MTLBuffer}*&>(result, v13);
    v4 = v3[1];
    v8 = v3[5] + v3[4];
  }

  *(*&v4[(v8 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v8 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void sub_183B281C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void CA::WindowServer::IOMFBDisplay::update_blend_display_color_spaces(CA::WindowServer::IOMFBDisplay *this)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((*(*this + 1888))(this) && (byte_1ED4E9840 & 1) == 0)
  {
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    v2 = (this + 25832);
    if (*&dword_1ED4E96F8)
    {
      v3 = CAGetColorSpace(*&dword_1ED4E96F8);
      (*(*this + 1864))(this, v3);
      if (initialized[0] != -1)
      {
        dispatch_once_f(initialized, 0, init_debug);
      }
    }

    if (*&dword_1ED4E96FC)
    {
      v4 = CAGetColorSpace(*&dword_1ED4E96FC);
      (*(*this + 1880))(this, v4);
    }

    if ((*(this + 29561) & 1) != 0 || *(this + 29562) == 1)
    {
      v5 = CA::WindowServer::IOMFBDisplay::color_program_cache(this);
      v5[83] = 1;
      *(this + 6890) = -1;
      v6 = (this + 48 * *v2);
      if (!v6[6484])
      {
        CA::IOMobileFramebuffer::swap_begin((this + 25696), v6 + 6484);
      }

      *(this + 6516) = 0;
      v7 = CAGetColorSpace(37);
      if (*(this + 29561) == 1 && (*(this + 905) & 2) != 0)
      {
        v8 = (*(*this + 1856))(this);
        if (BYTE13(xmmword_1ED4E982C) == 1)
        {
          v17 = CGColorSpaceCopyICCProfileDescription();
          if (v17)
          {
            v18 = v17;
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            if (x_log_get_color(void)::once != -1)
            {
              dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
            }

            v19 = x_log_get_color(void)::log;
            if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_INFO))
            {
              v20 = *(this + 6);
              *buf = 67109378;
              v22 = v20;
              v23 = 2080;
              CString = CA_CFStringGetCString(v18, &v25, 128);
              _os_log_impl(&dword_183AA6000, v19, OS_LOG_TYPE_INFO, "Display %u setting IOMFB blending colorspace to '%s'", buf, 0x12u);
            }

            CFRelease(v18);
            v2 = (this + 25832);
          }
        }

        CA::ColorProgram::Cache::set_colorspace(v5, v7);
        v9 = CA::ColorProgram::Cache::lookup(v5, v8, 0, 0);
        if (v9)
        {
          CA::WindowServer::IOMFBDisplay::set_icc_matrix_and_trc(this, v9, 4u, 0xCu, 0xFFFFFFFF, 1.0);
        }

        *(v2 + 3729) = 0;
      }

      if (*(v2 + 3730) == 1)
      {
        (*(*this + 1872))(this);
        if (BYTE13(xmmword_1ED4E982C) == 1)
        {
          v12 = CGColorSpaceCopyICCProfileDescription();
          if (v12)
          {
            v13 = v12;
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            if (x_log_get_color(void)::once != -1)
            {
              dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
            }

            v14 = x_log_get_color(void)::log;
            if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_INFO))
            {
              v15 = *(this + 6);
              v16 = CA_CFStringGetCString(v13, &v25, 128);
              *buf = 67109378;
              v22 = v15;
              v23 = 2080;
              CString = v16;
              _os_log_impl(&dword_183AA6000, v14, OS_LOG_TYPE_INFO, "Display %u setting IOMFB display colorspace to '%s'", buf, 0x12u);
            }

            CFRelease(v13);
          }
        }

        v10 = (*(*this + 1872))(this);
        CA::ColorProgram::Cache::set_colorspace(v5, v10);
        v11 = CA::ColorProgram::Cache::lookup(v5, v7, 0, 0);
        if (v11)
        {
          CA::WindowServer::IOMFBDisplay::set_icc_matrix_and_trc(this, v11, 5u, 0xFu, 0xFFFFFFFF, 1.0);
        }

        *(v2 + 3730) = 0;
      }
    }
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::update_system_gamma(CA::WindowServer::IOMFBDisplay *this)
{
  v7 = *MEMORY[0x1E69E9840];
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  if (*&dword_1ED4E9700 != 0.0)
  {
    memset(v5, 0, sizeof(v5));
    *(v5 + 4) = dword_1ED4E9700 | 0x3F80000000000000;
    v6 = 0;
    (*(*this + 1912))(this, v5);
  }

  result = (*(*this + 1888))(this);
  if (result && *(this + 29563) == 1 && (byte_1ED4E9840 & 1) == 0)
  {
    v3 = (this + 48 * *(this + 6458));
    if (!v3[6484])
    {
      CA::IOMobileFramebuffer::swap_begin((this + 25696), v3 + 6484);
    }

    *(this + 6516) = 0;
    v4 = (*(*this + 1904))(this);
    result = CA::WindowServer::IOMFBDisplay::set_icc_curve_with_cg_trc(this, v4, 14, 7);
    *(this + 29563) = 0;
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::update_blackpoint_adaptation(CA::WindowServer::IOMFBDisplay *this)
{
  result = (*(*this + 1888))(this);
  if (result && *(this + 29564) == 1 && (byte_1ED4E9840 & 1) == 0)
  {
    v3 = (this + 48 * *(this + 6458));
    if (!v3[6484])
    {
      CA::IOMobileFramebuffer::swap_begin((this + 25696), v3 + 6484);
    }

    *(this + 6516) = 0;
    v4 = (*(*this + 1920))(this);
    result = CA::WindowServer::IOMFBDisplay::set_icc_curve_with_cg_trc(this, v4, 17, 7);
    *(this + 29564) = 0;
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::update_gamma_adjustment(CA::WindowServer::IOMFBDisplay *this)
{
  result = (*(*this + 1888))(this);
  if (result && *(this + 29565) == 1 && (byte_1ED4E9840 & 1) == 0)
  {
    v3 = (this + 48 * *(this + 6458));
    if (!v3[6484])
    {
      CA::IOMobileFramebuffer::swap_begin((this + 25696), v3 + 6484);
    }

    *(this + 6516) = 0;
    v4 = (*(*this + 1936))(this);
    CA::WindowServer::IOMFBDisplay::set_icc_curve_with_cg_trc(this, v4, 16, 1);
    CA::WindowServer::IOMFBDisplay::set_icc_curve_with_cg_trc(this, v4 + 36, 16, 2);
    result = CA::WindowServer::IOMFBDisplay::set_icc_curve_with_cg_trc(this, v4 + 72, 16, 4);
    *(this + 29565) = 0;
  }

  return result;
}

double CA::WindowServer::IOMFBDisplay::update_user_adjustment(CA::WindowServer::IOMFBDisplay *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = (this + 24576);
  if ((*(this + 27100) & 1) == 0)
  {
    memset(v11, 0, 60);
    v3 = *(this + 27076);
    *(v11 + 12) = *(this + 27060);
    *(&v11[1] + 12) = v3;
    HIDWORD(v11[2]) = *(this + 6773);
    CA::WindowServer::IOMFBDisplay::swap_set_icc_matrix(this, 7, *(this + 6), 0, v11);
    IOMobileFrameBufferSwapSetUserLuminanceAdjustment();
    *(v1 + 2524) = 1;
    if (BYTE13(xmmword_1ED4E982C) == 1)
    {
      if (x_log_get_color(void)::once != -1)
      {
        dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
      }

      v5 = x_log_get_color(void)::log;
      if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_INFO))
      {
        v6 = *(this + 6);
        v7 = v1[630];
        v8[0] = 67109376;
        v8[1] = v6;
        v9 = 2048;
        v10 = v7;
        _os_log_impl(&dword_183AA6000, v5, OS_LOG_TYPE_INFO, "Display %u setting IOMFB display luminance adjustment to %f", v8, 0x12u);
      }
    }
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::set_framebuffer_ax_matrix(CA::WindowServer::IOMFBDisplay *this)
{
  v43 = *MEMORY[0x1E69E9840];
  v1 = (this + 27104);
  if (*(this + 29513) & 1) != 0 || (*(this + 27172))
  {
    return 0;
  }

  memset(v42, 0, 60);
  v4 = 12;
  v5 = this + 27104;
  do
  {
    v6 = v42 + v4;
    *v6 = *v5;
    *(v6 + 2) = *(v5 + 2);
    v4 += 12;
    v5 += 16;
  }

  while (v4 != 48);
  result = IOMobileFramebufferSwapSetColorMatrix();
  if (!result)
  {
    *buf = vcvts_n_u32_f32(v1[16], 0x10uLL);
    result = IOMobileFramebufferSetParameter();
    if (BYTE9(xmmword_1ED4E97EC) == 1)
    {
      v20 = result;
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v7 = x_log_get_windowserver(void)::log;
      v8 = os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT);
      result = v20;
      if (v8)
      {
        v9 = *(this + 6);
        v10 = *v1;
        v11 = v1[1];
        v12 = v1[2];
        v13 = v1[4];
        v14 = v1[5];
        v15 = v1[6];
        v16 = v1[8];
        v17 = v1[9];
        v18 = v1[10];
        v19 = v1[16];
        *buf = 67111680;
        *&buf[4] = v9;
        v22 = 2048;
        v23 = v10;
        v24 = 2048;
        v25 = v11;
        v26 = 2048;
        v27 = v12;
        v28 = 2048;
        v29 = v13;
        v30 = 2048;
        v31 = v14;
        v32 = 2048;
        v33 = v15;
        v34 = 2048;
        v35 = v16;
        v36 = 2048;
        v37 = v17;
        v38 = 2048;
        v39 = v18;
        v40 = 2048;
        v41 = v19;
        _os_log_impl(&dword_183AA6000, v7, OS_LOG_TYPE_DEFAULT, "Display %u accessibility matrix [%g, %g, %g; %g, %g, %g; %g, %g, %g], scale %g\n", buf, 0x6Cu);
        result = v20;
      }
    }

    *(v1 + 68) = 1;
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::fb_swap_set_layer(CA::WindowServer::IOMFBDisplay *this, CA::IOMobileFramebuffer *a2, uint64_t a3, IOSurfaceRef buffer, const CA::Rect *a5, const CA::Rect *a6, uint64_t a7, unsigned int a8, unsigned int a9)
{
  if (buffer)
  {
    IOSurfaceGetID(buffer);
    kdebug_trace();
    ID = IOSurfaceGetID(buffer);
  }

  else
  {
    kdebug_trace();
    ID = 0;
  }

  if (*(a2 + a3 + 4) != ID)
  {
    *(a2 + 16) = 1;
    *(a2 + a3 + 4) = ID;
  }

  v24 = *(a2 + 3);
  v16.n128_u64[0] = *a5;
  v17.n128_u64[0] = *(a5 + 1);
  v18.n128_u64[0] = *(a5 + 2);
  v19.n128_u64[0] = *(a5 + 3);
  v20.n128_u64[0] = *a6;
  v21.n128_u64[0] = *(a6 + 1);
  v22.n128_u64[0] = *(a6 + 2);
  v23.n128_u64[0] = *(a6 + 3);

  return MEMORY[0x1EEE11BA8](v24, a3, buffer, a7, v16, v17, v18, v19, v20, v21, v22, v23);
}

void CA::WindowServer::IOMFBDisplay::swap_brightness(os_unfair_lock_s *this)
{
  v94 = *MEMORY[0x1E69E9840];
  v2 = this + 6374;
  if (LOBYTE(this[7396]._os_unfair_lock_opaque) != 1 || (v3 = atomic_load((*&this[192]._os_unfair_lock_opaque + 4)), v3 == 1) && (v4 = atomic_load((*&this[192]._os_unfair_lock_opaque + 5)), v4 == 1) && (this[7396]._os_unfair_lock_opaque & 0x100) != 0)
  {
    os_unfair_lock_lock(this + 6868);
    v5 = *&this[6870]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(this + 6868);
    if (!v5 || LOBYTE(v2[1018]._os_unfair_lock_opaque) != 1 || (byte_1ED4E983F & 1) != 0)
    {
LABEL_152:
      (*(*&this->_os_unfair_lock_opaque + 1000))(this, 0);
      return;
    }

    v6 = (*(*&this->_os_unfair_lock_opaque + 952))(this);
    if (!CA::WindowServer::Display::Mode::is_hdr(&this[164]))
    {
      v6 = CA::WindowServer::Display::edr_headroom(this) * v6;
    }

    if (HIBYTE(v2[1018]._os_unfair_lock_opaque) == 1)
    {
      HIBYTE(v2[1018]._os_unfair_lock_opaque) = 0;
      *&this[6864]._os_unfair_lock_opaque = vdupq_n_s64(0x7FF8000000000000uLL);
      v2[240]._os_unfair_lock_opaque = 2143289344;
      v2[244]._os_unfair_lock_opaque = 2143289344;
      v2[246]._os_unfair_lock_opaque = 2143289344;
      v2[248]._os_unfair_lock_opaque = 2143289344;
      v2[242]._os_unfair_lock_opaque = 2143289344;
      v2[251]._os_unfair_lock_opaque = 2143289344;
      v2[253]._os_unfair_lock_opaque = 2143289344;
      if (x_log_get_brightness(void)::once != -1)
      {
        dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
      }

      v74 = x_log_get_brightness(void)::log;
      if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        os_unfair_lock_opaque = this[6]._os_unfair_lock_opaque;
        *buf = 67109120;
        *&buf[4] = os_unfair_lock_opaque;
        _os_log_impl(&dword_183AA6000, v74, OS_LOG_TYPE_DEFAULT, "Display %u forcing swap brightness values\n", buf, 8u);
      }
    }

    v7 = *&this[6864]._os_unfair_lock_opaque;
    v8 = v6 != v7;
    if (v6 == v7)
    {
      v14 = NAN;
    }

    else
    {
      v10 = IOMobileFramebufferSwapSetBrightness();
      if (v10)
      {
        v11 = v10;
        if (x_log_get_brightness(void)::once != -1)
        {
          dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
        }

        v12 = x_log_get_brightness(void)::log;
        if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          v13 = this[6]._os_unfair_lock_opaque;
          *buf = 67109376;
          *&buf[4] = v13;
          *&buf[8] = 1024;
          *&buf[10] = v11;
          _os_log_impl(&dword_183AA6000, v12, OS_LOG_TYPE_DEFAULT, "Display %u swap brightness failed: 0x%x", buf, 0xEu);
        }
      }

      *&this[6864]._os_unfair_lock_opaque = v6;
      v9 = v6;
      v14 = v9;
    }

    v20 = (*(*&this->_os_unfair_lock_opaque + 968))(this);
    if (*&this[6866]._os_unfair_lock_opaque == v20)
    {
      v25 = 0x7FF8000000000000;
    }

    else
    {
      v21 = IOMobileFramebufferSwapSetBrightnessLimit();
      if (v21)
      {
        v22 = v21;
        if (x_log_get_brightness(void)::once != -1)
        {
          dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
        }

        v23 = x_log_get_brightness(void)::log;
        if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          v24 = this[6]._os_unfair_lock_opaque;
          *buf = 67109376;
          *&buf[4] = v24;
          *&buf[8] = 1024;
          *&buf[10] = v22;
          _os_log_impl(&dword_183AA6000, v23, OS_LOG_TYPE_DEFAULT, "Display %u swap brightness limit failed: 0x%x\n", buf, 0xEu);
        }
      }

      *&this[6866]._os_unfair_lock_opaque = v20;
      v25 = *&v20;
      v8 = 1;
    }

    if (CADeviceSupportsRTPLC::once[0] != -1)
    {
      dispatch_once(CADeviceSupportsRTPLC::once, &__block_literal_global_356);
    }

    if (CADeviceSupportsRTPLC::rtplc != 1 || (v26 = *&v2[259]._os_unfair_lock_opaque * 3.14159265, (LODWORD(v26) & 0x7FFFFFFFu) > 0x7F7FFFFF) || *&v2[240]._os_unfair_lock_opaque == v26)
    {
      v27 = NAN;
    }

    else
    {
      IOMobileFramebufferSwapSetAmbientLux();
      *&v2[240]._os_unfair_lock_opaque = v26;
      v27 = v26;
    }

    if (CADeviceSupportsTwilight::once != -1)
    {
      dispatch_once(&CADeviceSupportsTwilight::once, &__block_literal_global_359);
    }

    v28 = NAN;
    if (CADeviceSupportsTwilight::twilight == 1 && (byte_1ED4E9865 & 1) == 0)
    {
      v29 = (*(*&this->_os_unfair_lock_opaque + 1272))(this);
      if ((LODWORD(v29) & 0x7FFFFFFFu) > 0x7F7FFFFF || v29 == *&v2[244]._os_unfair_lock_opaque)
      {
        v28 = NAN;
      }

      else
      {
        v30 = IOMobileFramebufferSetTwilightStrength();
        if (v30)
        {
          v31 = v30;
          if (x_log_get_brightness(void)::once != -1)
          {
            dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
          }

          v32 = x_log_get_brightness(void)::log;
          if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v33 = this[6]._os_unfair_lock_opaque;
            *buf = 67109632;
            *&buf[4] = v33;
            *&buf[8] = 2048;
            *&buf[10] = v29;
            v80 = 1024;
            LODWORD(v81) = v31;
            _os_log_impl(&dword_183AA6000, v32, OS_LOG_TYPE_DEFAULT, "Display %u swap_set_twilight_strength %g failed: 0x%x\n", buf, 0x18u);
          }
        }

        *&v2[244]._os_unfair_lock_opaque = v29;
        v28 = v29;
      }
    }

    if ((byte_1ED4E9867 & 1) != 0 || (v34 = (*(*&this->_os_unfair_lock_opaque + 1288))(this), (LODWORD(v34) & 0x7FFFFFFFu) > 0x7F7FFFFF) || v34 == *&v2[246]._os_unfair_lock_opaque)
    {
      v39 = NAN;
    }

    else
    {
      v35 = IOMobileFramebufferSetAmmoliteStrength();
      if (v35)
      {
        v36 = v35;
        if (x_log_get_brightness(void)::once != -1)
        {
          dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
        }

        v37 = x_log_get_brightness(void)::log;
        if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          v38 = this[6]._os_unfair_lock_opaque;
          *buf = 67109632;
          *&buf[4] = v38;
          *&buf[8] = 2048;
          *&buf[10] = v34;
          v80 = 1024;
          LODWORD(v81) = v36;
          _os_log_impl(&dword_183AA6000, v37, OS_LOG_TYPE_DEFAULT, "Display %u swap_set_aml_strength %g failed: 0x%x\n", buf, 0x18u);
        }
      }

      *&v2[246]._os_unfair_lock_opaque = v34;
      v39 = v34;
    }

    if (CADeviceSupportsGCP::once != -1)
    {
      dispatch_once(&CADeviceSupportsGCP::once, &__block_literal_global_488);
    }

    v40 = NAN;
    if (CADeviceSupportsGCP::b == 1 && (byte_1ED4E98A8 & 1) == 0)
    {
      v41 = (*(*&this->_os_unfair_lock_opaque + 1304))(this);
      if ((LODWORD(v41) & 0x7FFFFFFFu) > 0x7F7FFFFF || v41 == *&v2[248]._os_unfair_lock_opaque)
      {
        v40 = NAN;
      }

      else
      {
        v42 = *&this[6424]._os_unfair_lock_opaque;
        if (init_iomfb(void)::once != -1)
        {
          dispatch_once(&init_iomfb(void)::once, &__block_literal_global_14192);
        }

        if (iomfb_swap_set_contrast_preservation_f)
        {
          v43 = iomfb_swap_set_contrast_preservation_f(v42, v41);
        }

        else
        {
          v43 = -536870212;
        }

        if (byte_1ED4E989D == 1)
        {
          if (x_log_get_brightness(void)::once != -1)
          {
            dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
          }

          v76 = x_log_get_brightness(void)::log;
          if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v77 = this[6]._os_unfair_lock_opaque;
            *buf = 67109376;
            *&buf[4] = v77;
            *&buf[8] = 2048;
            *&buf[10] = v41;
            _os_log_impl(&dword_183AA6000, v76, OS_LOG_TYPE_DEFAULT, "Display %u swap_set_contrast_preservation: %g\n", buf, 0x12u);
          }
        }

        if (v43)
        {
          if (x_log_get_brightness(void)::once != -1)
          {
            dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
          }

          v44 = x_log_get_brightness(void)::log;
          if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v45 = this[6]._os_unfair_lock_opaque;
            *buf = 67109632;
            *&buf[4] = v45;
            *&buf[8] = 2048;
            *&buf[10] = v41;
            v80 = 1024;
            LODWORD(v81) = v43;
            _os_log_impl(&dword_183AA6000, v44, OS_LOG_TYPE_DEFAULT, "Display %u swap_set_contrast_preservation %g failed: 0x%x\n", buf, 0x18u);
          }
        }

        *&v2[248]._os_unfair_lock_opaque = v41;
        v40 = v41;
      }
    }

    if (CADeviceSupportsMedina::once != -1)
    {
      dispatch_once(&CADeviceSupportsMedina::once, &__block_literal_global_368);
    }

    if (CADeviceSupportsMedina::medina != 1)
    {
      v50 = 0;
      v51 = NAN;
      goto LABEL_137;
    }

    v46 = (*(*&this->_os_unfair_lock_opaque + 1320))(this);
    is_fbi_active = CA::WindowServer::IOMFBDisplay::SecureIndicator::is_fbi_active(&this[6440]);
    if (is_fbi_active)
    {
      if (CAProcessUptime::once[0] != -1)
      {
        dispatch_once(CAProcessUptime::once, &__block_literal_global_19297);
      }

      *buf = 0;
      *&buf[8] = 0;
      gettimeofday(buf, 0);
      if (*buf - *&CAProcessUptime::start_time_s + *&buf[8] * 0.000001 < 4.0)
      {
        CA::WindowServer::IOMFBDisplay::SecureIndicator::set_state(&this[6440], 3);
        v46 = 1000.0;
      }
    }

    v48 = fabsf(v46);
    if ((LODWORD(v46) & 0x7FFFFFFFu) >= 0x7F800000 && LOBYTE(v2[68]._os_unfair_lock_opaque) == 3)
    {
      v46 = (*(*&this->_os_unfair_lock_opaque + 952))(this, v48);
      v48 = fabsf(v46);
      v49 = 1;
    }

    else
    {
      v49 = 0;
    }

    if (v48 == INFINITY)
    {
      v60 = *&this[6440]._os_unfair_lock_opaque;
      if (v60)
      {
        if (*v60 || (v61 = sil_mgr_instance(0, 0xFFFFFFFFLL), (*v60 = v61) != 0))
        {
          if (LOBYTE(v2[68]._os_unfair_lock_opaque) == 4)
          {
            v78 = 0;
            if (CA::WindowServer::SILMgr::turn_off_all_regions(*&this[6440]._os_unfair_lock_opaque, 0, 0, &v78) && !v78)
            {
              CA::WindowServer::IOMFBDisplay::SecureIndicator::set_state(&this[6440], 2);
              v71 = IOMobileFramebufferSwapSetIndicatorBrightness();
              if (x_log_get_brightness(void)::once != -1)
              {
                dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
              }

              v72 = x_log_get_brightness(void)::log;
              if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
              {
                v73 = this[6]._os_unfair_lock_opaque;
                *buf = 67109376;
                *&buf[4] = v73;
                *&buf[8] = 1024;
                *&buf[10] = v71;
                _os_log_impl(&dword_183AA6000, v72, OS_LOG_TYPE_DEFAULT, "Display %u disabling indicator brightness return: 0x%x", buf, 0xEu);
              }

              v2[251]._os_unfair_lock_opaque = 2143289344;
              v46 = 0.0;
            }

            else
            {
              v46 = NAN;
            }

            v50 = 0;
LABEL_125:
            if ((v2[252]._os_unfair_lock_opaque & 0x7FFFFFFF) > 0x7F7FFFFF || *&v2[252]._os_unfair_lock_opaque == *&v2[253]._os_unfair_lock_opaque)
            {
              goto LABEL_136;
            }

            if (MEMORY[0x1EEE8A778])
            {
              v62 = IOMobileFramebufferSwapSetIndicatorBrightnessLimit();
              if (!v62)
              {
LABEL_135:
                v2[253]._os_unfair_lock_opaque = v2[252]._os_unfair_lock_opaque;
LABEL_136:
                v51 = v46;
LABEL_137:
                v66 = (*(*&this->_os_unfair_lock_opaque + 1344))(this);
                if ((LODWORD(v66) & 0x7FFFFFFFu) > 0x7F7FFFFF || v66 == *&v2[242]._os_unfair_lock_opaque)
                {
                  v67 = NAN;
                }

                else
                {
                  v67 = v66;
                  IOMobileFrameBufferSwapSetContrastEnhancerStrength();
                  *&v2[242]._os_unfair_lock_opaque = v66;
                }

                if (v2->_os_unfair_lock_opaque)
                {
                  LOBYTE(v2->_os_unfair_lock_opaque) &= ~1u;
                  if (x_log_get_brightness(void)::once != -1)
                  {
                    dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
                  }

                  v68 = x_log_get_brightness(void)::log;
                  if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
                  {
                    v69 = this[6]._os_unfair_lock_opaque;
                    *buf = 67111168;
                    *&buf[4] = v69;
                    *&buf[8] = 2048;
                    *&buf[10] = v14;
                    v80 = 2048;
                    v81 = v25;
                    v82 = 2048;
                    v83 = v51;
                    v84 = 2048;
                    v85 = v27;
                    v86 = 2048;
                    v87 = v28;
                    v88 = 2048;
                    v89 = v39;
                    v90 = 2048;
                    v91 = v40;
                    v92 = 2048;
                    v93 = v67;
                    _os_log_impl(&dword_183AA6000, v68, OS_LOG_TYPE_DEFAULT, "Display %u swap brightness: %g, limit: %g, indicator brightness: %g, ambient lux: %g, low ambient strength: %g, high ambient strength: %g, contrast preservation: %g, contrast enhancer: %g\n", buf, 0x58u);
                  }
                }

                if ((v8 | v50) == 1)
                {
                  kdebug_trace();
                  if ((v2[1022]._os_unfair_lock_opaque & 0x10000) == 0)
                  {
                    BYTE2(v2[1022]._os_unfair_lock_opaque) = 1;
                    if (x_log_get_windowserver(void)::once != -1)
                    {
                      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
                    }

                    v70 = x_log_get_windowserver(void)::log;
                    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_183AA6000, v70, OS_LOG_TYPE_DEFAULT, "DBVFlashWorkaround: _swapped_brightness_after_power_cycle", buf, 2u);
                    }
                  }
                }

                goto LABEL_152;
              }
            }

            else
            {
              v62 = -536870212;
            }

            if (x_log_get_brightness(void)::once != -1)
            {
              dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
            }

            v63 = x_log_get_brightness(void)::log;
            if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              v64 = this[6]._os_unfair_lock_opaque;
              v65 = *&v2[252]._os_unfair_lock_opaque;
              *buf = 67109632;
              *&buf[4] = v64;
              *&buf[8] = 2048;
              *&buf[10] = v65;
              v80 = 1024;
              LODWORD(v81) = v62;
              _os_log_impl(&dword_183AA6000, v63, OS_LOG_TYPE_DEFAULT, "Display %u swap_set_indicator_brightness_limit %g failed: 0x%x\n", buf, 0x18u);
            }

            goto LABEL_135;
          }
        }
      }
    }

    else if (v46 != *&v2[251]._os_unfair_lock_opaque)
    {
      if (LOBYTE(v2[68]._os_unfair_lock_opaque) - 1 > 1 || CA::WindowServer::IOMFBDisplay::SecureIndicator::is_fbi_active(&this[6440]))
      {
        if (v49)
        {
          if (x_log_get_brightness(void)::once != -1)
          {
            dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
          }

          v52 = x_log_get_brightness(void)::log;
          if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v53 = this[6]._os_unfair_lock_opaque;
            *buf = 67109376;
            *&buf[4] = v53;
            *&buf[8] = 2048;
            *&buf[10] = v46;
            _os_log_impl(&dword_183AA6000, v52, OS_LOG_TYPE_DEFAULT, "Display %u forcing indicator brightness to current sdr value %f", buf, 0x12u);
          }
        }

        if (is_fbi_active)
        {
          if (x_log_get_brightness(void)::once != -1)
          {
            dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
          }

          v54 = x_log_get_brightness(void)::log;
          if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v55 = this[6]._os_unfair_lock_opaque;
            *buf = 67109376;
            *&buf[4] = v55;
            *&buf[8] = 2048;
            *&buf[10] = v46;
            _os_log_impl(&dword_183AA6000, v54, OS_LOG_TYPE_DEFAULT, "Display %u forcing indicator brightness to %f due to fallback indicator", buf, 0x12u);
          }
        }

        v56 = IOMobileFramebufferSwapSetIndicatorBrightness();
        if (v56)
        {
          v57 = v56;
          if (x_log_get_brightness(void)::once != -1)
          {
            dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
          }

          v58 = x_log_get_brightness(void)::log;
          if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v59 = this[6]._os_unfair_lock_opaque;
            *buf = 67109632;
            *&buf[4] = v59;
            *&buf[8] = 2048;
            *&buf[10] = v46;
            v80 = 1024;
            LODWORD(v81) = v57;
            _os_log_impl(&dword_183AA6000, v58, OS_LOG_TYPE_DEFAULT, "Display %u swap_set_indicator_brightness %g failed: 0x%x\n", buf, 0x18u);
          }
        }

        *&v2[251]._os_unfair_lock_opaque = v46;
        v50 = 1;
        goto LABEL_125;
      }

      v50 = 1;
LABEL_124:
      v46 = NAN;
      goto LABEL_125;
    }

    v50 = 0;
    goto LABEL_124;
  }

  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v15 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v16 = atomic_load((*&this[192]._os_unfair_lock_opaque + 4));
    if (v16 == 1)
    {
      v17 = atomic_load((*&this[192]._os_unfair_lock_opaque + 5));
      v18 = v17 == 1;
    }

    else
    {
      v18 = 0;
    }

    v19 = BYTE1(v2[1022]._os_unfair_lock_opaque);
    *buf = 67109376;
    *&buf[4] = v18;
    *&buf[8] = 1024;
    *&buf[10] = v19;
    _os_log_impl(&dword_183AA6000, v15, OS_LOG_TYPE_DEFAULT, "DBVFlashWorkaround: skipping brightness. Display powered on: %i seen brightness: %i", buf, 0xEu);
  }
}

void CA::WindowServer::IOMFBDisplay::swap_display_headroom_used(CA::WindowServer::IOMFBDisplay *this, const CA::Render::Update *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*(this + 336) & 0x1C00) == 0)
  {
    v4 = (*(*this + 1888))(this);
    if (a2)
    {
      if (v4)
      {
        v5 = *(a2 + 38);
        if ((v5 & 0x200000) == 0)
        {
          v6 = (this + 26440);
          v7 = 1.0;
          if ((v5 & 0x8000) != 0)
          {
            v7 = CA::WindowServer::Display::edr_headroom(this);
          }

          if (*v6 != v7)
          {
            *v6 = v7;
            if (x_log_get_brightness(void)::once != -1)
            {
              dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
            }

            v8 = v7;
            v9 = x_log_get_brightness(void)::log;
            if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              v10 = *(this + 6);
              v11[0] = 67109376;
              v11[1] = v10;
              v12 = 2048;
              v13 = v8;
              _os_log_impl(&dword_183AA6000, v9, OS_LOG_TYPE_DEFAULT, "Display %u setting display headroom hint to %g", v11, 0x12u);
            }

            if (*(this + 29568) == 1 && (*(this + 905) & 0x10) != 0)
            {
              IOMobileFramebufferSwapSetDisplayEdrHeadroom();
            }
          }
        }
      }
    }
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::swap_display_edr_factor(uint64_t this)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = this + 26432;
  v2 = *(this + 26432);
  if (*(this + 26436) != v2)
  {
    v3 = this;
    *(this + 26436) = v2;
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v4 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(v3 + 24);
      v6 = *v1;
      LODWORD(v7) = 67109376;
      HIDWORD(v7) = v5;
      v8 = 2048;
      v9 = v6;
      _os_log_debug_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEBUG, "Display %u setting display edr to %g", &v7, 0x12u);
    }

    if (*(v1 + 3136) == 1 && (*(v3 + 905) & 0x10) != 0)
    {
      return IOMobileFramebufferSwapSetDisplayEdr();
    }

    else
    {
      v7 = vcvts_n_u32_f32(*v1, 0x10uLL);
      return IOMobileFramebufferSetParameter();
    }
  }

  return this;
}

void CA::WindowServer::IOMFBDisplay::swap_hdr_metadata(CA::WindowServer::IOMFBDisplay *this, const CA::Render::Update *a2)
{
  v77 = *MEMORY[0x1E69E9840];
  v2 = this + 25784;
  if ((*(this + 29513) & 1) == 0)
  {
    v5 = *(this + 3415);
    v6 = CA::WindowServer::Display::Mode::hdr_type(v5);
    if (((*(*this + 1576))(this) & 1) == 0)
    {
      if ((v5 & 0xF00000000000000) == 0xD00000000000000)
      {
        if (!*(this + 3222))
        {
          *(this + 3222) = malloc_type_calloc(0x20CuLL, 1uLL, 0x10000405E6460E1uLL);
        }

        cf = 0;
        v7 = *(this + 3287);
        if (v7 && (v8 = *(v7 + 16)) != 0 && (*(*v8 + 168))(v8))
        {
          v9 = (*(**(*(this + 3287) + 16) + 168))(*(*(this + 3287) + 16));
          v10 = IOSurfaceCopyValue(v9, @"DolbyVisionHDMIData");
          cf = v10;
          if (!v10)
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (!(*(*this + 80))(this))
          {
            goto LABEL_31;
          }

          v18 = *(a2 + 126);
          if (!v18)
          {
            goto LABEL_31;
          }

          X::CFRef<__CFData const*>::operator=(&cf, v18);
          v10 = cf;
          if (!cf)
          {
            goto LABEL_31;
          }
        }

        v19 = CFGetTypeID(v10);
        if (v19 == CFDataGetTypeID() && CFDataGetLength(cf) >= 524)
        {
          v78.location = 0;
          v78.length = 524;
          CFDataGetBytes(cf, v78, *(this + 3222));
          *v2 = 0;
          goto LABEL_37;
        }

LABEL_31:
        if (*v2 == 5)
        {
LABEL_42:
          if (cf)
          {
            CFRelease(cf);
          }

          return;
        }

        v20 = *(this + 3222);
        if (hdrprocessing_init_once != -1)
        {
          dispatch_once_f(&hdrprocessing_init_once, 0, load_hdrprocessing_symbols);
        }

        if (hdr_handle)
        {
          [hdr_processor_class dolbyIOMFBMetadata:v20 withMinBrightness:? maxBrightness:?];
        }

        *v2 = 5;
LABEL_37:
        v21 = IOMobileFramebufferSwapSetParams();
        if (v21)
        {
          v22 = v21;
          if (x_log_get_windowserver(void)::once != -1)
          {
            dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
          }

          v23 = x_log_get_windowserver(void)::log;
          if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
          {
            v24 = *(this + 6);
            *buf = 67109376;
            v48 = v24;
            v49 = 1024;
            v50 = v22;
            _os_log_error_impl(&dword_183AA6000, v23, OS_LOG_TYPE_ERROR, "display %u set hdr metadata returned error %x\n", buf, 0xEu);
          }
        }

        goto LABEL_42;
      }

      if (v6 != 3)
      {
        *v2 = 0;
        return;
      }

      if (v2[3750] == 1 && (BYTE7(xmmword_1ED4E980C) & 1) == 0)
      {
        if (!*(this + 3224))
        {
          *(this + 3224) = malloc_type_calloc(0x49uLL, 1uLL, 0x1000040DFBF9248uLL);
        }

        v11 = *(this + 3287);
        if (v11)
        {
          v12 = *(v11 + 16);
          if (v12)
          {
            if ((*(*v12 + 168))(v12))
            {
              v13 = (*(**(*(this + 3287) + 16) + 168))(*(*(this + 3287) + 16));
              v14 = IOSurfaceCopyValue(v13, @"HDR10PlusData");
              if (v14)
              {
                v15 = v14;
                v16 = CFGetTypeID(v14);
                if (v16 == CFDataGetTypeID())
                {
                  if (BYTE8(xmmword_1ED4E980C) == 1)
                  {
                    BytePtr = CFDataGetBytePtr(v15);
                    Length = CFDataGetLength(v15);
                    if (x_log_get_windowserver(void)::once != -1)
                    {
                      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
                    }

                    v28 = x_log_get_windowserver(void)::log;
                    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109634;
                      v48 = Length;
                      v49 = 1040;
                      v50 = Length;
                      v51 = 2096;
                      *v52 = BytePtr;
                      _os_log_impl(&dword_183AA6000, v28, OS_LOG_TYPE_DEFAULT, "HDR10PlusMetadataSEI: Size:%d bytes, %.*P", buf, 0x18u);
                    }
                  }

                  if (CA::CAHDRProcessor::iomfb_hdr10plus_convert_sei_to_metadata(v15, *(this + 3224), v17))
                  {
                    if (BYTE8(xmmword_1ED4E980C) == 1)
                    {
                      if (x_log_get_windowserver(void)::once != -1)
                      {
                        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
                      }

                      v29 = x_log_get_windowserver(void)::log;
                      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
                      {
                        v30 = *(this + 3224);
                        v31 = *(v30 + 1);
                        v32 = *(v30 + 5);
                        v33 = *(v30 + 9);
                        v34 = *(v30 + 13);
                        v35 = *(v30 + 17);
                        v36 = *(v30 + 21);
                        v37 = *(v30 + 25);
                        v38 = *(v30 + 29);
                        v39 = *(v30 + 33);
                        v40 = *(v30 + 37);
                        v41 = *(v30 + 41);
                        v42 = *(v30 + 45);
                        v43 = *(v30 + 47);
                        v44 = *(v30 + 67);
                        v45 = *(v30 + 69);
                        LODWORD(v30) = *(v30 + 70);
                        *buf = 67112960;
                        v48 = v31;
                        v49 = 1024;
                        v50 = v32;
                        v51 = 1024;
                        *v52 = v33;
                        *&v52[4] = 1024;
                        *&v52[6] = v34;
                        v53 = 1024;
                        v54 = v35;
                        v55 = 1024;
                        v56 = v36;
                        v57 = 1024;
                        v58 = v37;
                        v59 = 1024;
                        v60 = v38;
                        v61 = 1024;
                        v62 = v39;
                        v63 = 1024;
                        v64 = v40;
                        v65 = 1024;
                        v66 = v41;
                        v67 = 1024;
                        v68 = v42;
                        v69 = 1024;
                        v70 = v43;
                        v71 = 1024;
                        v72 = v44;
                        v73 = 1024;
                        v74 = v45;
                        v75 = 1024;
                        v76 = v30;
                        _os_log_impl(&dword_183AA6000, v29, OS_LOG_TYPE_DEFAULT, "Converted HDR10PlusMetadataParams:TargetedSystemDisplayMaxLum[%u], AverageMaxRGB[%u], distValues[%u, %u, %u, %u, %u, %u, %u, %u, %u], KneePointX[%u], KneePointY[%u], ToneMappingFlag[%u], GraphicsOverlayFlag[%u], vsifTimingMode[%u]\n", buf, 0x62u);
                      }
                    }

                    *v2 = 0;
                    CFRelease(v15);
LABEL_49:
                    IOMobileFramebufferSwapSetParams();
                    return;
                  }
                }

                CFRelease(v15);
              }
            }
          }
        }

        if (*v2 == 3)
        {
          return;
        }

        if (BYTE8(xmmword_1ED4E980C) == 1)
        {
          if (x_log_get_windowserver(void)::once != -1)
          {
            dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
          }

          v25 = x_log_get_windowserver(void)::log;
          if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_183AA6000, v25, OS_LOG_TYPE_DEFAULT, "HDR10PlusMetadata: Swapping in NULL metadata", buf, 2u);
          }
        }

        **(this + 3224) = 0;
        *v2 = 3;
        goto LABEL_49;
      }
    }
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::finish_update(CA::WindowServer::IOMFBDisplay *this, CA::Render::Update *a2, int a3)
{
  v508 = *MEMORY[0x1E69E9840];
  v6 = this + 25557;
  v495 = a2;
  v7 = objc_autoreleasePoolPush();
  v8 = byte_1ED4E9844;
  v9 = *(a2 + 38);
  v10 = *(this + 3287);
  if (v10 && (*(v10 + 292) & 1) != 0)
  {
    CA::WindowServer::IOMFBDisplay::delete_detached_layer(this);
  }

  if (v6[3966] == 1)
  {
    goto LABEL_15;
  }

  if ((*(a2 + 1378) & 4) == 0)
  {
    if (!*(this + 82) || !CA::WindowServer::Display::is_enabled_for_vsync_render(this))
    {
      goto LABEL_10;
    }

    if ((*(a2 + 1378) & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  if (CA::WindowServer::Display::is_enabled_for_replay_render_with_mode(this))
  {
    goto LABEL_11;
  }

LABEL_10:
  if (((*(*this + 2272))(this) & 1) == 0)
  {
LABEL_15:
    if (CA::WindowServer::IOMFBDisplay::update_secure_indicators(this, a2, 0.0))
    {
      v11 = 0x40000000000;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_731;
  }

LABEL_11:
  if ((a3 & 8) != 0)
  {
    pthread_mutex_lock((this + 25848));
    v12 = this + 48 * *(v6 + 275);
    if (*(v12 + 6484))
    {
      IOMobileFramebufferSwapCancel();
      *(v12 + 6484) = 0;
    }

    v13 = *(this + 3345);
    if (v13)
    {
      (**v13)(v13);
    }

    v14 = *(this + 3208);
    if (v14)
    {
      *(v14 + 96) |= 2u;
    }

    if (CA::WindowServer::IOMFBDisplay::update_secure_indicators(this, a2, 0.0))
    {
      v11 = 0x40000000000;
    }

    else
    {
      v11 = 0;
    }

    v15 = (this + 25848);
    goto LABEL_730;
  }

  v456 = v6[3993] == 1 && (*(*this + 952))(this) == 0.0 && *(this + 3432) != 0.0;
  if (v6[3965] == 1)
  {
    v6[3966] = 1;
  }

  if ((*(*this + 1576))(this))
  {
    is_hdr = CA::WindowServer::Display::Mode::is_hdr((this + 656));
  }

  else
  {
    is_hdr = 0;
  }

  if ((*(*this + 80))(this))
  {
    *data = this + 656;
    v474 = *(std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,CA::WindowServer::IOMFBDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::IOMFBDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(this + 3338, *(this + 82)) + 44);
  }

  else
  {
    v474 = 0;
  }

  v441 = BYTE2(v9);
  v459 = a3;
  v469 = *(this + 152);
  pthread_mutex_lock((this + 25848));
  v17 = (v6 + 283);
  v463 = v6;
  v464 = (v6 + 283);
  if (*(v6 + 283))
  {
    v18 = is_hdr;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = v6 + 395;
    do
    {
      v23 = *v22;
      if (!*(v22 - 10) || !*(v22 - 4) || (v24 = CA::IOMobileFramebuffer::swap_wait((this + 25696)), v17 = v464, !v24))
      {
        ++v19;
      }

      v20 |= (v23 & 0x20) >> 5;
      ++v21;
      v22 += 48;
    }

    while (v21 < *v17);
    v25 = v19 == 1;
    v6 = v463;
    is_hdr = v18;
  }

  else
  {
    v20 = 0;
    v25 = 0;
  }

  v26 = *(this + 3287);
  v494 = v26;
  if (v26)
  {
    v27 = *(v26 + 292);
    v493 = (v27 & 1) == 0;
    v489 = this;
    v490 = &v495;
    v491 = &v493;
    v492 = &v494;
    if ((v27 & 1) == 0 && (*(this + 160) & 0x10) != 0 && (*(v26 + 45) & 0x20) != 0 && !*(v6 + 1851))
    {
      goto LABEL_257;
    }
  }

  else
  {
    v493 = 0;
    v489 = this;
    v490 = &v495;
    v491 = &v493;
    v492 = &v494;
  }

  v28 = 0.0;
  if ((v6[3987] & 1) == 0 && (v6[3988] & 1) == 0)
  {
    if ((*(this + 160) & 0x100) != 0)
    {
      if (CAPrefers60HzAPT(void)::once != -1)
      {
        dispatch_once(&CAPrefers60HzAPT(void)::once, &__block_literal_global_3);
      }

      if (CAPrefers60HzAPT(void)::enabled == 1 && (!v493 || (*(v494 + 37) & 8) == 0 || (*(*this + 144))(this) != 2) && !*(v6 + 1851))
      {
        goto LABEL_257;
      }
    }

    if ((*(v495 + 1377) & 1) == 0 || !v493)
    {
      if (BYTE1(xmmword_1ED4E988C) == 1)
      {
LABEL_257:
        v28 = (*(*this + 760))(this);
        goto LABEL_258;
      }

      if (v25 || CA::WindowServer::IOMFBDisplay::finish_update(CA::Render::Update *,unsigned int,unsigned long long)::$_2::operator()(&v489))
      {
        v28 = *(this + 3684);
LABEL_258:
        v29 = 1;
        goto LABEL_56;
      }
    }
  }

  v29 = 0;
LABEL_56:
  v30 = (*(*this + 776))(this) * 0.125;
  if ((*(this + 336) & 0x1C00) != 0 && (*(this + 82) & 0x8000000000000000) != 0 && !BYTE2(xmmword_1ED4E98AC))
  {
    v30 = 0.0;
  }

  v31 = *(v495 + 10) - v30;
  if (v29)
  {
    v31 = v31 + v28;
  }

  if (v31 >= *(v495 + 16) + 0.0001)
  {
    v32 = v31;
  }

  else
  {
    v32 = *(v495 + 16) + 0.0001;
  }

  if (v28 != *(this + 3684))
  {
    *(this + 3684) = v28;
    CAHostTimeWithTime(v28);
    kdebug_trace();
    if (*(this + 3208))
    {
      v33 = CA::WindowServer::IOMFBDisplay::work_interval_deadline(this, v32, *(v495 + 16), (*(v495 + 172) >> 8) & 1);
      v34 = *(this + 3208);
      if (v33 != *(v34 + 16))
      {
        *(v34 + 16) = v33;
        if (*(v34 + 96))
        {
          memset(&data[4], 0, 56);
          *data = 1386695757;
          os_workgroup_interval_update(*(v34 + 48), *(v34 + 16), data);
        }

        else if (*(v34 + 40))
        {
          work_interval_instance_update();
        }
      }
    }
  }

  CAHostTimeWithTime(v28);
  kdebug_trace();
  *&xmmword_1EA850F30 = xmmword_1EA850F30 + CAHostTimeWithTime(v28);
  *(this + 3685) = v28;
  os_unfair_lock_lock(this + 6576);
  CA::WindowServer::IOMFBDisplay::initialize_timings(this);
  v35 = *(this + 3290);
  if (v35)
  {
    atomic_store(CAHostTimeWithTime(v28), (v35 + 8));
  }

  os_unfair_lock_unlock(this + 6576);
  if (v494)
  {
    if (v493)
    {
      if (*v494)
      {
        v36 = CA::Render::Handle::lock_context(*v494);
        if (v36)
        {
          v38 = v36;
          v39 = *(v36 + 384);
          if (v39)
          {
            if (atomic_fetch_add(v39 + 4, 0xFFFFFFFF) == 1)
            {
              CA::Render::LayerNode::delete_node(v39, v37);
            }

            *(v38 + 384) = 0;
          }

          CA::Render::Handle::unlock_context(v38, v37);
        }
      }
    }
  }

  v40 = 0.0;
  if (v6[3992] == 1)
  {
    v40 = CACurrentMediaTimeDelta();
  }

  v41 = v40 + v32;
  v440 = v29;
  if (((*(*this + 2216))(this) & 1) != 0 || (*(*this + 2144))(this))
  {
    if (CA::WindowServer::IOMFBDisplay::update_secure_indicators(this, v495, v41))
    {
      v42 = 0x40000000000;
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  v43 = this + 48 * *(v6 + 275) + 25912;
  v458 = (this + 48 * *(v6 + 275) + 25936);
  if (!*v458)
  {
    CA::IOMobileFramebuffer::swap_begin((this + 25696), v458);
  }

  *(v6 + 507) = 0;
  v43[40] &= 0x1Fu;
  if (BYTE6(xmmword_1ED4E97EC) == 1)
  {
    qword_1EA850F28 = *v458;
  }

  *(v495 + 105) = v41;
  v44 = CAHostTimeWithTime(v41);
  *v496 = 1;
  *data = v44;
  IOMobileFramebufferSwapSetTimestamps();
  v45 = CAHostTimeWithTime(*(this + 3347) + v40);
  *v496 = 2;
  *data = v45;
  IOMobileFramebufferSwapSetTimestamps();
  v46 = *(v495 + 102);
  if (v46 != 0.0)
  {
    v47 = CAHostTimeWithTime(v46 + v40);
    *v496 = 3;
    *data = v47;
    IOMobileFramebufferSwapSetTimestamps();
  }

  if ((v6[3951] & 1) != 0 || v6[3936] != ((*(this + 160) >> 2) & 1))
  {
    IOMobileFramebufferSwapSetBackgroundColor();
  }

  v6[3936] = (*(this + 160) & 4) != 0;
  if (v6[4001] == 1)
  {
    IOMobileFramebufferSwapSetColorRemapMode();
    v6[4001] = 0;
  }

  if (v6[4003] == 1)
  {
    iomfb_swap_set_pulse_width_maximization(*(this + 3212), v6[3950]);
    v6[4003] = 0;
  }

  if (*v6 == 1)
  {
    if (CADeviceNeedsIRDCFlush::once != -1)
    {
      dispatch_once(&CADeviceNeedsIRDCFlush::once, &__block_literal_global_463);
    }

    if (CADeviceNeedsIRDCFlush::b == 1)
    {
      IOMobileFramebufferSwapSetParams();
      if (BYTE11(xmmword_1ED4E980C) == 1)
      {
        kdebug_trace();
      }
    }

    *v6 = 0;
  }

  CA::WindowServer::IOMFBDisplay::update_blend_display_color_spaces(this);
  CA::WindowServer::IOMFBDisplay::update_system_gamma(this);
  CA::WindowServer::IOMFBDisplay::update_blackpoint_adaptation(this);
  CA::WindowServer::IOMFBDisplay::update_gamma_adjustment(this);
  v48.n128_f64[0] = CA::WindowServer::IOMFBDisplay::update_user_adjustment(this);
  if (((*(*this + 1576))(this, v48) & 1) == 0 && v6[3954] == 1 && CA::WindowServer::IOMFBDisplay::set_framebuffer_ax_matrix(this))
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v51 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      *data = 0;
      _os_log_error_impl(&dword_183AA6000, v51, OS_LOG_TYPE_ERROR, "IOMFB was not able to set accessibility matrix.\n", data, 2u);
    }
  }

  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  v462 = v43;
  v455 = v7;
  if (*&dword_1ED4E9668)
  {
    pthread_mutex_lock(&CA::WindowServer::IOMFBDisplay::_ctx_lock);
    *data = MEMORY[0x1E69E9820];
    *&data[8] = 0x40000000;
    *&data[16] = ___ZN2CA12WindowServer12IOMFBDisplay7get_ctxEv_block_invoke;
    *&data[24] = &__block_descriptor_tmp_53;
    *&data[32] = this;
    if (CA::WindowServer::IOMFBDisplay::get_ctx(void)::once != -1)
    {
      dispatch_once(&CA::WindowServer::IOMFBDisplay::get_ctx(void)::once, data);
    }

    v52 = CA::WindowServer::IOMFBDisplay::_ctx;
    if (CA::WindowServer::IOMFBDisplay::_ctx)
    {
      os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
      if (CA::Render::FlattenManager::flattened_cache)
      {
        v53 = is_hdr;
        v54 = v42;
        if (initialized[0] != -1)
        {
          dispatch_once_f(initialized, 0, init_debug);
        }

        v55 = 0;
        *v496 = *&dword_1ED4E9668;
        v56 = CA::Render::FlattenManager::flattened_cache;
        *data = &unk_1EF1FD0D8;
        *&data[8] = v496;
        *&data[16] = v52;
        *&data[24] = data;
        v57 = 1 << *CA::Render::FlattenManager::flattened_cache;
        do
        {
          for (i = *(*(v56 + 16) + 8 * v55); i; i = *i)
          {
            X::HashTable<unsigned int,CA::Render::FlattenedCacheEntry *>::foreach(std::function<void ()(unsigned int,CA::Render::FlattenedCacheEntry *)>)::{lambda(void *,void *,void *)#1}::__invoke(i[2], i[3], data);
          }

          ++v55;
        }

        while (v55 != v57);
        std::__function::__value_func<void ()(unsigned int,CA::Render::FlattenedCacheEntry *)>::~__value_func[abi:nn200100](data);
        v42 = v54;
        is_hdr = v53;
        v7 = v455;
      }

      os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
      v43 = v462;
    }

    if (*&dword_1ED4E9668 > 0.0)
    {
      *&dword_1ED4E9668 = *&dword_1ED4E9668 + -1.0;
    }

    pthread_mutex_unlock(&CA::WindowServer::IOMFBDisplay::_ctx_lock);
    v6 = v463;
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }
  }

  if (*&dword_1ED4E966C && *&dword_1ED4E966C > 0.0)
  {
    *&dword_1ED4E966C = *&dword_1ED4E966C + -1.0;
  }

  v59 = v8 | ((v459 & 4) >> 2) | v20;
  if (v493)
  {
    if (is_hdr)
    {
      v60 = 0;
      v61 = v459;
    }

    else
    {
      v61 = v459;
      if (v6[3937] & 1) != 0 || ((v6[3951] | v59))
      {
        v62 = *(v494 + 40);
        v63 = (*(**(v494 + 24) + 168))(*(v494 + 24));
        v64 = *(v494 + 208);
        *data = *(v494 + 192);
        *&data[16] = v64;
        v65 = *(v494 + 240);
        *v496 = *(v494 + 224);
        v497 = v65;
        if (initialized[0] != -1)
        {
          dispatch_once_f(initialized, 0, init_debug);
        }

        if (*&dword_1ED4E9654)
        {
          v66 = CAIOSurfaceWriteToFileWithSuffix(v63, "detached-src");
          if (v66)
          {
            if (*&dword_1ED4E9654 > 0.0)
            {
              *&dword_1ED4E9654 = *&dword_1ED4E9654 + -1.0;
            }

            free(v66);
          }
        }

        LOBYTE(v487) = 0;
        v67 = v62;
        v6 = v463;
        CA::WindowServer::IOMFBDisplay::swap_set_layer(this, v463[1132], *(v494 + 24), data, v496, v67, *(v43 + 6), *(v495 + 68), &v487, v429);
        v43[40] = v43[40] & 0xBF | (v487 << 6);
        v68 = *(this + v463[1132] + 6857);
        ID = IOSurfaceGetID(v63);
        v70 = v463[1132];
        if (v68 == ID)
        {
          v60 = 0;
        }

        else
        {
          v60 = CA::WindowServer::layer_value[v70 + 3];
          v71 = IOSurfaceGetID(v63);
          LODWORD(v70) = v463[1132];
          *(this + v463[1132] + 6857) = v71;
        }

        v61 = v459;
        memset(v501, 0, sizeof(v501));
        *buf = 0u;
        v500 = 0u;
        CA::WindowServer::IOMFBDisplay::swap_set_layer(this, (2 * (v70 == 0)), 0, v501, buf, 0, *v458, *(v495 + 68), 0, v431);
      }

      else
      {
        v60 = 0;
      }
    }

    v72 = v494;
    v73 = *(v494 + 24);
    ++*(v73 + 236);
    *(v43 + 2) = v73;
    if ((*(v72 + 292) & 4) != 0)
    {
      v43[40] |= 2u;
    }
  }

  else
  {
    if (v6[3937] & 1) != 0 || ((v6[3951] | v59))
    {
      memset(data, 0, 32);
      *v496 = 0u;
      v497 = 0u;
      CA::WindowServer::IOMFBDisplay::swap_set_layer(this, 1, 0, data, v496, 0, *v458, *(v495 + 68), 0, v429);
      memset(data, 0, 32);
      *v496 = 0u;
      v497 = 0u;
      CA::WindowServer::IOMFBDisplay::swap_set_layer(this, 2, 0, data, v496, 0, *v458, *(v495 + 68), 0, v430);
    }

    v60 = 0;
    v61 = v459;
  }

  v74 = *(v43 + 1);
  *(v74 + 12) = *(v43 + 6);
  if (options_are_visual & 1) == 0 && *(v74 + 32) && (*(v74 + 68) & 4) == 0 && ((*(v495 + 304) & 8) == 0 || v493 && (*(v494 + 37)))
  {
    *(v74 + 68) |= 4u;
  }

  v75 = *(v74 + 16);
  v457 = v74;
  if (!v75)
  {
    goto LABEL_189;
  }

  if ((v75 & 1) == 0)
  {
    if (*(v75 + 1) == 6)
    {
      goto LABEL_190;
    }

    goto LABEL_188;
  }

  if (v75 != 1)
  {
LABEL_188:
    CA::Shape::unref(v75);
    v74 = v457;
LABEL_189:
    *(v74 + 16) = 1;
  }

LABEL_190:
  v76 = *(v74 + 68);
  *(v74 + 68) = v76 & 0xF7;
  if (!v494 || (*(v494 + 292) & 1) != 0 || (*(v495 + 1378) & 0x40) == 0 || (*(v495 + 304) & 4) != 0)
  {
    v77 = 0;
  }

  else
  {
    v77 = *(v495 + 4);
  }

  if (options_are_visual == 1)
  {
    v77 = 0;
    if (is_hdr)
    {
      goto LABEL_198;
    }

LABEL_484:
    if ((*(v74 + 32) || *(v74 + 40)) && (v76 & 4) == 0)
    {
      if (!v77)
      {
        goto LABEL_198;
      }

      if (v77)
      {
        if (v77 != 1)
        {
          goto LABEL_198;
        }
      }

      else if (*(v77 + 4) != 6)
      {
        goto LABEL_198;
      }
    }

    v258 = v6[1131];
    memset(data, 0, 32);
    *v496 = 0u;
    v497 = 0u;
    CA::WindowServer::IOMFBDisplay::swap_set_layer(this, v258, 0, data, v496, 0, *v458, *(v495 + 68), 0, v429);
    v448 = 0;
    if ((v61 & 1) == 0)
    {
      goto LABEL_496;
    }

LABEL_493:
    v259 = *(this + 3345);
    if (v259 && (*(*v259 + 8))(*(this + 3345)))
    {
      *(v43 + 4) = (*(*v259 + 16))(v259);
      v61 |= 2u;
    }

    goto LABEL_496;
  }

  if (!is_hdr)
  {
    goto LABEL_484;
  }

LABEL_198:
  v452 = v60;
  if ((v76 & 2) == 0 || (v43[40] & 0x10) != 0)
  {
    v448 = 0;
    goto LABEL_207;
  }

  *(v74 + 68) = v76 & 0xF5;
  v78 = CA::WindowServer::IOMFBDisplay::current_page_surface(this, 1, 0, 0, 0, *(v495 + 40), 0);
  v79 = -536870212;
  if (!v78)
  {
    v89 = 0;
    goto LABEL_450;
  }

  v80 = v78;
  if (v6[3956] != 1)
  {
    goto LABEL_249;
  }

  v81 = v77;
  v82 = (*(*v78 + 232))(v78);
  v83 = (*(*this + 1416))(this);
  if ((v83 | v82) != v83)
  {
    v89 = 0;
    goto LABEL_450;
  }

  v77 = v81;
  if ((v6[3956] & 1) == 0)
  {
LABEL_249:
    v89 = CA::WindowServer::IOMFBDisplay::current_page_surface(this, 0, 1, 0, is_hdr, *(v495 + 40), 0);
    v448 = 0;
    if (v89)
    {
      v79 = 0;
    }

    else
    {
      v79 = -536870212;
    }

    goto LABEL_252;
  }

  v84 = vadd_s32(*(this + 160), 0x100000001);
  v85.i64[0] = (v84.i32[0] & 0xFFFFFFFE);
  v85.i64[1] = (v84.i32[1] & 0xFFFFFFFE);
  v86 = vcvtq_f64_s64(v85);
  *data = 0;
  height = v86.height;
  wireless_surface_options = CA::IOMobileFramebuffer::get_wireless_surface_options(*(this + 3212), *(v495 + 10), v86, data);
  if (wireless_surface_options)
  {
    v79 = wireless_surface_options;
    v89 = 0;
    v448 = 0;
LABEL_252:
    v74 = v457;
    goto LABEL_253;
  }

  v245 = CA::WindowServer::IOSurface::wrap_buffer(this, *data, 0, 0);
  v89 = v245;
  v74 = v457;
  *(v457 + 32) = v245;
  if (!v245)
  {
    v448 = 0;
    v79 = -536870211;
    goto LABEL_253;
  }

  v246 = *(v495 + 42);
  v247 = *(this + 3529);
  if (v246 != -1 && v246 > v247)
  {
    *(this + 3529) = v246;
LABEL_479:
    if (!(*(*v245 + 168))(v245))
    {
      v79 = 0;
      v448 = 1;
      goto LABEL_252;
    }

    (*(**(v457 + 32) + 168))(*(v457 + 32));
    IOSurfaceSetIndexedTimestamp();
    v74 = v457;
    v77 = v81;
    goto LABEL_481;
  }

  if (v247)
  {
    goto LABEL_479;
  }

LABEL_481:
  v79 = 0;
  v448 = 1;
LABEL_253:
  if (v79 != 0 || is_hdr)
  {
    if (!v79)
    {
      goto LABEL_207;
    }

LABEL_450:
    v248 = v463[1131];
    v249 = v463[3956];
    if (!*(this + 3287) && v248 != 2 && (v463[3956] & 1) != 0)
    {
      if ((*(this + 14) & 0x10) != 0)
      {
        v248 = v463[1131];
      }

      else
      {
        v248 = 2;
      }

      v249 = 1;
    }

    if (v79 == -536870191 && (v249 & 1) != 0)
    {
      if (v89 && (*(*v89 + 168))(v89))
      {
        memset(data, 0, 32);
        *v496 = 0u;
        v497 = 0u;
        CA::WindowServer::IOMFBDisplay::swap_set_layer(this, v248, v89, data, v496, 0, *v458, *(v495 + 68), 0, v429);
      }

      v250 = *(v457 + 32);
      v251 = v463;
      if (v250)
      {
        CA::WindowServer::Surface::unref(v250);
        *(v457 + 32) = 0;
      }

      v252 = *(v43 + 2);
      if (v252)
      {
        CA::WindowServer::Surface::unref(v252);
        *(v43 + 2) = 0;
      }
    }

    else
    {
      memset(data, 0, 32);
      *v496 = 0u;
      v497 = 0u;
      CA::WindowServer::IOMFBDisplay::swap_set_layer(this, v248, 0, data, v496, 0, *v458, *(v495 + 68), 0, v429);
      v251 = v463;
    }

    IOMobileFramebufferSwapCancel();
    *v458 = 0;
    v254 = *(this + 3345);
    if (v254)
    {
      if (v79 == -536870184 && (v459 & 1) != 0 && (v251[3956] & 1) != 0 && (*(*v254 + 8))(*(this + 3345)))
      {
        v255 = (*(*v254 + 16))(v254);
        v256 = *(v495 + 68);
        *data = v255;
        *&data[8] = v256;
        v253 = X::small_vector_base<std::pair<unsigned long,unsigned int>>::push_back(this + 28960, data);
      }

      (**v254)(v254, v253);
    }

    v257 = (v79 != -536870184) << 24;
    v7 = v455;
    goto LABEL_729;
  }

  v128 = *(this + 3345);
  if (v128)
  {
    (**v128)(v128);
  }

  if ((*(this + 904) & 0x40) != 0)
  {
    v129 = 1536;
  }

  else
  {
    v129 = 1024;
  }

  v130 = v495;
  if (v495)
  {
    v129 = (*(v495 + 172) >> 35) & 0x20000 | v129;
  }

  v443 = v77;
  if (v463[3956] == 1)
  {
    v131 = CA::WindowServer::Display::Mode::is_hdr((this + 656));
    v132 = v131;
    if (v463[2] != 1)
    {
      v61 = v459;
      if (v131)
      {
        v132 = 1;
        goto LABEL_426;
      }

LABEL_428:
      v238 = 0uLL;
      memset(data, 0, 32);
      if (v474)
      {
        if (SDWORD2(v469) <= SHIDWORD(v469))
        {
          v239 = HIDWORD(v469);
        }

        else
        {
          v239 = DWORD2(v469);
        }

        v238.i32[0] = 1073741822;
        v49.i32[0] = v239;
        v240.i64[0] = v469;
        v240.i64[1] = SDWORD1(v469);
        v241 = SDWORD2(v469);
        v242 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v49, v238), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v240));
        if (v239 > 1073741822)
        {
          v241 = 1.79769313e308;
        }

        *data = v242;
        if (v239 <= 1073741822)
        {
          *v238.i64 = SHIDWORD(v469);
        }

        else
        {
          *v238.i64 = 1.79769313e308;
        }

        *&data[16] = v241;
        *&data[24] = v238.i64[0];
        v129 = v129 | 0x10000;
        v243 = data;
      }

      else
      {
        v243 = 0;
      }

      v77 = v443;
      v244 = CA::WindowServer::IOMFBDisplay::copy_surface(this, v89, v80, v129, 0, v243, 0, 0, *v238.i32);
      v43[40] = v43[40] & 0xFE | v244;
      v79 = -536870191;
      v74 = v457;
      if ((v244 & 1) == 0)
      {
        goto LABEL_450;
      }

      goto LABEL_207;
    }

    v130 = v495;
    v61 = v459;
  }

  else
  {
    v61 = v459;
    if (v463[2] != 1)
    {
      goto LABEL_428;
    }

    v132 = 0;
  }

  if ((*(v130 + 113) - 2) >= 4 && (v132 & 1) == 0)
  {
    goto LABEL_428;
  }

LABEL_426:
  v507 = 0;
  v505 = 0u;
  v506 = 0u;
  v503 = 0u;
  v504 = 0u;
  memset(data, 0, sizeof(data));
  CA::WindowServer::Display::display_attributes(data, this);
  v235 = v495;
  if ((*(v495 + 305) & 0x380) != 0)
  {
LABEL_427:
    v236 = (*(*v89 + 232))(v89);
    v237 = (*(*this + 624))(this, v89, v80, data, v235, v129, v236, 1);
    goto LABEL_449;
  }

  if (v132 && (*(*v80 + 136))(v80))
  {
    v235 = v495;
    goto LABEL_427;
  }

  v237 = CA::WindowServer::IOMFBDisplay::copy_surface(this, v89, v80, v129, 0, 0, 0, 0, v234);
LABEL_449:
  v43 = v462;
  v462[40] = v462[40] & 0xFE | v237;
  v79 = -536870191;
  v74 = v457;
  v77 = v443;
  if ((v237 & 1) == 0)
  {
    goto LABEL_450;
  }

LABEL_207:
  if (v61 & 1) != 0 && (*(v74 + 68))
  {
    v43[40] |= 1u;
  }

  v90 = *(v74 + 32);
  v7 = v455;
  v6 = v463;
  if (is_hdr)
  {
    v91 = *(v495 + 2);
    *&data[8] = 0;
    *data = 0;
    CA::Shape::get_bounds(v91, data);
    v92 = *&data[8];
    if (*&data[8] >= *&data[12])
    {
      v92 = *&data[12];
    }

    if (v92 <= 0)
    {
      v93 = v457;
      if ((v463[3937] & 1) == 0)
      {
        goto LABEL_310;
      }
    }

    else
    {
      v93 = v457;
    }

    if (v494)
    {
      v94 = *(v494 + 24);
    }

    else
    {
      v94 = 0;
    }

    if (((v94 != 0) & (*(v93 + 68) >> 2)) != 0)
    {
      v95 = 0;
    }

    else
    {
      v95 = *(v93 + 40);
    }

    if (v77)
    {
      if ((v77 & 1) != 0 ? v77 == 1 : *(v77 + 4) == 6)
      {
        v95 = 0;
      }
    }

    v98 = CA::WindowServer::IOMFBDisplay::current_page_surface(this, 0, 1, 0, 1, *(v495 + 40), 0);
    v90 = v98;
    v449 = v94;
    if (!v95 || !v98)
    {
      v465 = 1;
      goto LABEL_270;
    }

    v101 = *(v98 + 14);
    v100 = *(v98 + 15);
    if (__PAIR64__(v100, v101) == *(v95 + 7))
    {
      v465 = 1;
      v43 = v462;
      v6 = v463;
      goto LABEL_270;
    }

    v434 = v42;
    v442 = v77;
    if ((*(this + 226) & 0x40) != 0)
    {
      v102 = 4608;
    }

    else
    {
      v102 = 4096;
    }

    v103 = *(v95 + 16);
    v104 = (*(*v95 + 24))(v95);
    v105 = (*(*v95 + 56))(v95);
    v106 = (*(*v95 + 232))(v95);
    surface = CA::WindowServer::Display::allocate_surface(this, v101, v100, v103, v104, v105, 0, v106, @"CA Backward DM", 0);
    v109 = 0uLL;
    memset(data, 0, 32);
    if (v474)
    {
      if (SDWORD2(v469) <= SHIDWORD(v469))
      {
        v110 = HIDWORD(v469);
      }

      else
      {
        v110 = DWORD2(v469);
      }

      v109.i32[0] = 1073741822;
      v108.i32[0] = v110;
      v111.i64[0] = v469;
      v111.i64[1] = SDWORD1(v469);
      v112 = SDWORD2(v469);
      v113 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v108, v109), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v111));
      if (v110 > 1073741822)
      {
        v112 = 1.79769313e308;
      }

      *data = v113;
      if (v110 <= 1073741822)
      {
        *v109.i64 = SHIDWORD(v469);
      }

      else
      {
        *v109.i64 = 1.79769313e308;
      }

      *&data[16] = v112;
      *&data[24] = v109.i64[0];
      v114 = v102 | 0x10000;
      v115 = data;
    }

    else
    {
      v115 = 0;
      v114 = v102;
    }

    v116 = *(this + 3345);
    v42 = v434;
    if (v116)
    {
      *v109.i32 = (**v116)(v116);
    }

    v117 = CA::WindowServer::IOMFBDisplay::copy_surface(this, surface, v95, v114, 0, v115, 0, 0, *v109.i32);
    if (v117)
    {
      v95 = surface;
LABEL_269:
      v43 = v462;
      v6 = v463;
      v465 = v117 ^ 1;
      v77 = v442;
LABEL_270:
      v119 = *(this + 41);
      if (!v119)
      {
        v61 = v459;
LABEL_305:
        v147 = v465;
        if (!v95)
        {
          v147 = 1;
        }

        if ((v147 & 1) == 0)
        {
          CA::WindowServer::Surface::unref(v95);
        }

        v7 = v455;
        goto LABEL_310;
      }

      v486 = 0;
      HIWORD(v486) = COERCE_UNSIGNED_INT(1.0);
      if (v494)
      {
        v120 = *(v494 + 192);
        v121 = *(v494 + 208);
        v122 = *(v494 + 224);
        v123 = *(v494 + 240);
      }

      else
      {
        v120 = 0uLL;
        v121 = 0uLL;
        v122 = 0uLL;
        v123 = 0uLL;
      }

      *v496 = v120;
      v497 = v121;
      v501[0] = v122;
      v501[1] = v123;
      if (v95 && v90)
      {
        v125 = *(v95 + 14);
        v124 = *(v95 + 15);
        memset(buf, 0, sizeof(buf));
        *&v500 = v125;
        *(&v500 + 1) = v124;
        v127 = *(v90 + 56);
        v126 = *(v90 + 60);
        v487 = 0uLL;
        *&v488 = v127;
        *(&v488 + 1) = v126;
        if (v77)
        {
          if ((v77 & 1) == 0)
          {
            if (*(v77 + 4) == 6)
            {
              goto LABEL_299;
            }

LABEL_294:
            if (v125 == v127 && v124 == v126)
            {
              *&data[8] = 0;
              *data = 0;
              CA::Shape::get_bounds(v77, data);
              v134.i32[1] = *&data[12];
              v135.i64[0] = *data;
              v135.i64[1] = *&data[4];
              v136 = vcvtq_f64_s64(v135);
              v137 = *&data[12];
              v135.i64[0] = *&data[8];
              v135.i64[1] = *&data[12];
              v138 = v135;
              if (*&data[8] > *&data[12])
              {
                v137 = *&data[8];
              }

              v134.i32[0] = v137;
              v133.i32[0] = 1073741822;
              v444 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v134, v133), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), v136);
              v139 = vdup_n_s32(v137 > 1073741822);
              v140.i64[0] = v139.u32[0];
              v140.i64[1] = v139.u32[1];
              v437 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v140, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), vcvtq_f64_s64(v138));
              CA::BoundsImpl::intersect(buf, v444, v437);
              CA::BoundsImpl::intersect(&v487, v444, v437);
            }

            goto LABEL_299;
          }

          if (v77 != 1)
          {
            goto LABEL_294;
          }
        }
      }

      else
      {
        *buf = 0u;
        v500 = 0u;
        v487 = 0u;
        v488 = 0u;
      }

LABEL_299:
      v141 = v42;
      v142 = v77;
      memset(data, 0, sizeof(data));
      if (v6[1615])
      {
        v143 = 0;
      }

      else
      {
        v144 = *(this + 1695);
        v145 = *(this + 1696);
        v146 = *(this + 1697);
        *data = *(this + 1694);
        *&data[16] = v144;
        *&data[32] = v145;
        *&data[48] = v146;
        v143 = data;
        CA::Mat4Impl::mat4_scale(data, v99, *(v6 + 1611), *(v6 + 1611), *(v6 + 1611));
        v6[1615] = 1;
      }

      (*(**v119 + 1064))(*v119, v90, v449, v496, v501, v95, buf, &v487, &v486);
      if (v90)
      {
        *(v90 + 236) &= ~0x200000000uLL;
      }

      v61 = v459 | 3;
      v6[1131] = 0;
      v484 = 0u;
      v485 = 0u;
      v482 = 0u;
      v483 = 0u;
      CA::WindowServer::IOMFBDisplay::swap_set_layer(this, 1, 0, &v484, &v482, 0, *v458, *(v495 + 68), 0, v143);
      v484 = 0u;
      v485 = 0u;
      v482 = 0u;
      v483 = 0u;
      CA::WindowServer::IOMFBDisplay::swap_set_layer(this, 2, 0, &v484, &v482, 0, *v458, *(v495 + 68), 0, v432);
      v77 = v142;
      v42 = v141;
      goto LABEL_305;
    }

    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v118 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v496 = 0;
      _os_log_error_impl(&dword_183AA6000, v118, OS_LOG_TYPE_ERROR, "Failed to copy surface prior to backwardDM\n", v496, 2u);
      if (!surface)
      {
        goto LABEL_269;
      }
    }

    else if (!surface)
    {
      goto LABEL_269;
    }

    CA::WindowServer::Surface::unref(surface);
    goto LABEL_269;
  }

LABEL_310:
  if (v90)
  {
    memset(v496, 0, sizeof(v496));
    v148 = *(v90 + 56);
    v149.i64[0] = v148;
    v149.i64[1] = HIDWORD(v148);
    v150 = vcvtq_f64_u64(v149);
    if (SDWORD2(v469) <= SHIDWORD(v469))
    {
      v151 = HIDWORD(v469);
    }

    else
    {
      v151 = DWORD2(v469);
    }

    v49.i32[0] = 1073741822;
    v50.i32[0] = v151;
    v497 = v150;
    v152.i64[0] = v469;
    v152.i64[1] = SDWORD1(v469);
    v153 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v50, v49), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v152));
    v154 = SDWORD2(v469);
    if (v151 > 1073741822)
    {
      v154 = 1.79769313e308;
    }

    v501[0] = v153;
    if (v151 <= 1073741822)
    {
      v155 = SHIDWORD(v469);
    }

    else
    {
      v155 = 1.79769313e308;
    }

    v501[1].f64[0] = v154;
    v501[1].f64[1] = v155;
    if (v474)
    {
      v501[0] = 0uLL;
      v501[1] = v150;
    }

    if (v6[3966])
    {
      v156 = 32;
    }

    else
    {
      v156 = 0;
    }

    if ((*(v90 + 239) & 0x40) != 0)
    {
      v157 = (*(*this + 1584))(this) ^ 1;
    }

    else
    {
      v157 = 1;
    }

    (*(*v90 + 128))(v90, v157);
    v158 = v495;
    if (*(v495 + 1379))
    {
      v159 = *(v495 + 7);
      if (v159)
      {
        if (v159)
        {
          if (v159 == 1)
          {
            goto LABEL_341;
          }
        }

        else if (*(v159 + 4) == 6)
        {
          goto LABEL_341;
        }

        memset(buf, 0, sizeof(buf));
        CA::Shape::get_bounds(v159, buf);
        if (*&buf[8] <= *&buf[12])
        {
          v162 = *&buf[12];
        }

        else
        {
          v162 = *&buf[8];
        }

        v160.i32[0] = 1073741822;
        v161.i32[0] = v162;
        v163.i64[0] = *buf;
        v163.i64[1] = *&buf[4];
        v164 = *&buf[8];
        v165 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v161, v160), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v163));
        v166 = *&buf[12];
        if (v162 > 1073741822)
        {
          v164 = 1.79769313e308;
          v166 = 1.79769313e308;
        }

        *data = v165;
        *&data[16] = v164;
        *&data[24] = v166;
        v475 = is_hdr;
        v167 = v42;
        v168 = v77;
        v169 = *(this + 44);
        v170 = *(this + 45);
        CA::WindowServer::IOMFBDisplay::finish_update(CA::Render::Update *,unsigned int,unsigned long long)::$_4::operator()(data, v169, v170, v501[0].f64);
        v171 = v170;
        v77 = v168;
        v42 = v167;
        is_hdr = v475;
        CA::WindowServer::IOMFBDisplay::finish_update(CA::Render::Update *,unsigned int,unsigned long long)::$_4::operator()(data, v169, v171, v496);
        v158 = v495;
      }
    }

LABEL_341:
    LOBYTE(v487) = 0;
    CA::WindowServer::IOMFBDisplay::swap_set_layer(this, v463[1131], v90, v496, v501, v156, *(v43 + 6), *(v158 + 68), &v487, v429);
    v43[40] = v43[40] & 0x7F | (v487 << 7);
    v435 = v42;
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    v172 = v61;
    v6 = v463;
    if (*&dword_1ED4E9658)
    {
      v173 = (*(*v90 + 168))(v90);
      CA::WindowServer::IOMFBDisplay::dump_framebuffer(this, v173);
    }

    v174 = *(this + v463[1131] + 6857);
    v175 = (*(*v90 + 168))(v90);
    if (v174 != IOSurfaceGetID(v175))
    {
      v452 |= CA::WindowServer::layer_value[v463[1131]];
      v176 = (*(*v90 + 168))(v90);
      *(this + v463[1131] + 6857) = IOSurfaceGetID(v176);
    }

    v61 = v172;
    if ((*(this + 904) & 0x10) != 0)
    {
      v181 = *(this + 19);
      v180 = *(this + 20);
      v182.i64[0] = v180;
      v182.i64[1] = SHIDWORD(v180);
      v183 = vcvtq_f64_s64(v182);
      v185 = *(this + 25);
      v184 = *(this + 26);
      v182.i64[0] = v184;
      v182.i64[1] = SHIDWORD(v184);
      v178 = vdivq_f64(v183, vcvtq_f64_s64(v182));
      v182.i64[0] = v181;
      v182.i64[1] = SHIDWORD(v181);
      v186 = vcvtq_f64_s64(v182);
      v182.i64[0] = v185;
      v182.i64[1] = SHIDWORD(v185);
      v177 = vmlsq_f64(v186, vcvtq_f64_s64(v182), v178);
      v179 = v178.f64[1];
    }

    else
    {
      v177 = 0uLL;
      v178.f64[0] = 1.0;
      v179 = 1.0;
    }

    v60 = v452;
    v187 = *(v495 + 3);
    if (v187)
    {
      v470 = v178.f64[0];
      v476 = v177;
      memset(buf, 0, sizeof(buf));
      CA::Shape::get_bounds(v187, buf);
      if (*&buf[8] <= *&buf[12])
      {
        v190 = *&buf[12];
      }

      else
      {
        v190 = *&buf[8];
      }

      v188.i32[0] = 1073741822;
      v189.i32[0] = v190;
      v191.i64[0] = *buf;
      v191.i64[1] = *&buf[4];
      v192 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v189, v188), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v191));
      v193 = *&buf[12];
      if (v190 <= 1073741822)
      {
        v194 = *&buf[8];
      }

      else
      {
        v194 = 1.79769313e308;
      }

      if (v190 > 1073741822)
      {
        v193 = 1.79769313e308;
      }

      *data = v192;
      *&data[16] = v194;
      *&data[24] = v193;
      if (v463[3982])
      {
        v195 = v77;
      }

      else
      {
        if (v470 != 1.0 && v194 < 1.79769313e308)
        {
          *data = *v192.i64 * v470;
          *&data[16] = v194 * v470;
        }

        if (v179 != 1.0 && v193 < 1.79769313e308)
        {
          *&data[8] = *&v192.i64[1] * v179;
          *&data[24] = v193 * v179;
        }

        v196 = vaddq_f64(*data, v476);
        *data = v196;
        v197 = *&data[24];
        if (*&data[16] <= *&data[24])
        {
          v198 = *&data[24];
        }

        else
        {
          v198 = *&data[16];
        }

        if (v198 < 1.79769313e308)
        {
          if (*&data[16] < *&data[24])
          {
            v197 = *&data[16];
          }

          if (v197 > 0.0)
          {
            *data = vrndmq_f64(v196);
            *&data[16] = vsubq_f64(vrndpq_f64(vaddq_f64(v196, *&data[16])), *data);
          }
        }

        v195 = v77;
        CA::BoundsImpl::intersect(data, v501[0], v501[1]);
        v194 = *&data[16];
        v193 = *&data[24];
      }

      if (v194 >= v193)
      {
        v199 = v193;
      }

      else
      {
        v199 = v194;
      }

      if (v199 > 0.0)
      {
        v200 = IOMobileFramebufferSwapDirtyRegion();
        if (v200)
        {
          v201 = v200;
          if (x_log_get_windowserver(void)::once != -1)
          {
            dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
          }

          v202 = x_log_get_windowserver(void)::log;
          if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v201;
            _os_log_error_impl(&dword_183AA6000, v202, OS_LOG_TYPE_ERROR, "CADisplayIOMFB: swap_dirty_region returned error %x\n", buf, 8u);
          }
        }
      }

      v43 = v462;
      v77 = v195;
    }

    if (v77)
    {
      v203 = (v77 & 1) != 0 ? v77 == 1 : *(v77 + 4) == 6;
      v204 = v203;
      if (!v204 && !is_hdr)
      {
        memset(data, 0, sizeof(data));
        if (CA::Shape::rect_count(v77) >= 32)
        {
          v205 = 1;
        }

        else
        {
          v205 = 4;
        }

        v206 = CA::Shape::coalesce(v77, data, v205);
        if (v206)
        {
          v208 = v206;
          v207.i64[0] = 0;
          v477 = v207;
          v209 = vclezq_f64(v497);
          v210 = vorrq_s8(vdupq_laneq_s64(v209, 1), v209);
          v211 = v210.i64[0];
          v450 = *v496;
          v212 = vaddq_f64(*v496, v497);
          v445 = v212;
          v213 = &data[8];
          LODWORD(v212.f64[0]) = 1073741822;
          v471 = v212;
          v466 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
          v214 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
          v460 = v214;
          v214.i64[0] = -1;
          v438 = v214;
          do
          {
            v215 = *(v213 - 1);
            v210.i64[0] = *v213;
            v216.i64[0] = v215;
            v216.i64[1] = SHIDWORD(v215);
            v217 = vcvtq_f64_s64(v216);
            v218 = HIDWORD(*v213);
            v216.i64[0] = *v213;
            v216.i64[1] = v218;
            v219 = v216;
            if (v216.i32[0] > v218)
            {
              v218 = *v213;
            }

            v210.i32[0] = v218;
            v220 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v210, v471), 0), v466, v217);
            v221 = vdup_n_s32(v218 > 1073741822);
            v222.i64[0] = v221.u32[0];
            v222.i64[1] = v221.u32[1];
            v223 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v222, 0x3FuLL)), v460, vcvtq_f64_s64(v219));
            v224 = vclezq_f64(v223);
            v225 = vorrq_s8(vdupq_laneq_s64(v224, 1), v224);
            v226 = v225.i64[0];
            v210 = vdupq_lane_s64(vcgtq_s64(v477, v225).i64[0], 0);
            v227 = vandq_s8(v223, v210);
            if ((v226 & 0x8000000000000000) == 0 && (v211 & 0x8000000000000000) == 0)
            {
              v210 = vmaxnmq_f64(v220, v450);
              v228 = vsubq_f64(vminnmq_f64(vaddq_f64(v220, v223), v445), v210);
              v229 = vclezq_f64(v228);
              v227 = vandq_s8(v228, vdupq_lane_s64(vcgtq_s64(vorrq_s8(vdupq_laneq_s64(v229, 1), v229), v438).i64[0], 0));
            }

            if (*v227.i64 >= *&v227.i64[1])
            {
              v230 = *&v227.i64[1];
            }

            else
            {
              v230 = *v227.i64;
            }

            if (v230 > 0.0)
            {
              if (BYTE11(xmmword_1ED4E980C))
              {
                kdebug_trace();
              }

              active = IOMobileFramebufferSwapActiveRegion();
              if (active)
              {
                v232 = active;
                if (x_log_get_windowserver(void)::once != -1)
                {
                  dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
                }

                v233 = x_log_get_windowserver(void)::log;
                if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109120;
                  *&buf[4] = v232;
                  _os_log_error_impl(&dword_183AA6000, v233, OS_LOG_TYPE_ERROR, "CADisplayIOMFB: swap_active_region returned error %x\n", buf, 8u);
                }
              }
            }

            v213 += 2;
            --v208;
            v43 = v462;
          }

          while (v208);
        }

        v7 = v455;
        v6 = v463;
        v61 = v172;
        v60 = v452;
      }
    }

    v42 = v435;
    if ((v61 & 1) == 0)
    {
      goto LABEL_496;
    }

    goto LABEL_493;
  }

  v60 = v452;
  if (v61)
  {
    goto LABEL_493;
  }

LABEL_496:
  if ((v61 & 2) != 0)
  {
    v260 = *(this + 3345);
    if (v260)
    {
      (**v260)(v260);
    }
  }

  v261 = mach_absolute_time();
  v262 = CATimeWithHostTime(v261);
  v263 = v495;
  *(v495 + 17) = v262;
  *(v263 + 123) = v60;
  v264 = *(this + 3208);
  if (v264)
  {
    *v264 |= v60;
    *(v264 + 96) |= 2u;
  }

  v265 = CAHostTimeWithTime(*(v263 + 16));
  *v496 = 4;
  *data = v265;
  IOMobileFramebufferSwapSetTimestamps();
  v266 = CAHostTimeWithTime(*(v495 + 17));
  *v496 = 5;
  *data = v266;
  IOMobileFramebufferSwapSetTimestamps();
  CA::WindowServer::IOMFBDisplay::update_contrast_preservation_allowed(this);
  if (!v456)
  {
    CA::WindowServer::IOMFBDisplay::swap_brightness(this);
  }

  CA::WindowServer::IOMFBDisplay::swap_display_edr_factor(this);
  CA::WindowServer::IOMFBDisplay::swap_display_headroom_used(this, v495);
  if (CADeviceSupportsReferenceMode::once != -1)
  {
    dispatch_once(&CADeviceSupportsReferenceMode::once, &__block_literal_global_263);
  }

  if (CADeviceSupportsReferenceMode::supports_ref == 1)
  {
    v267 = mach_absolute_time();
    v268 = CATimeWithHostTime(v267);
    if (v268 - *(this + 3210) > 180.0)
    {
      v269 = v6[1075];
      *data = MEMORY[0x1E69E9820];
      *&data[8] = 0x40000000;
      *&data[16] = ___ZN2CA12WindowServer12IOMFBDisplay32send_refmode_residency_telemetryEv_block_invoke;
      *&data[24] = &__block_descriptor_tmp_88;
      data[32] = v269;
      analytics_send_event_lazy();
      *(this + 3210) = v268;
    }
  }

  CA::WindowServer::IOMFBDisplay::swap_hdr_metadata(this, v495);
  v270 = v495;
  if (CADeviceSupportsHWGainMap::once != -1)
  {
    dispatch_once(&CADeviceSupportsHWGainMap::once, &__block_literal_global_86);
  }

  if (CADeviceSupportsHWGainMap::supports_gain_map != 1)
  {
    goto LABEL_648;
  }

  v271 = *(v270 + 144);
  v439 = *(this + 3220);
  if (CADeviceSupportsMedina::once != -1)
  {
    dispatch_once(&CADeviceSupportsMedina::once, &__block_literal_global_368);
  }

  if (CADeviceSupportsMedina::medina == 1)
  {
    v272 = *(this + 3220);
    if (v272)
    {
      v273 = *(v272 + 260);
      if (!v271)
      {
        goto LABEL_522;
      }
    }

    else
    {
      v273 = 1;
      if (!v271)
      {
        goto LABEL_522;
      }
    }
  }

  else
  {
    v273 = 0;
    if (!v271)
    {
      goto LABEL_522;
    }
  }

  if ((byte_1ED4E985C & 1) != 0 || (*(*this + 80))(this))
  {
LABEL_522:
    if (!((*(v6 + 1643) == 0) | v273 & 1))
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v274 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        *data = 0;
        _os_log_impl(&dword_183AA6000, v274, OS_LOG_TYPE_DEFAULT, "NULL GainMap", data, 2u);
      }

      *(v6 + 1643) = 0;
      IOMobileFramebufferSwapSetGainMap();
    }

    goto LABEL_646;
  }

  v436 = v42;
  v461 = v61;
  v276 = *(this + 19);
  v275 = *(this + 20);
  v277.i64[0] = v275;
  v277.i64[1] = SHIDWORD(v275);
  v278 = vcvtq_f64_s64(v277);
  v280 = *(this + 25);
  v279 = *(this + 26);
  v277.i64[0] = v279;
  v277.i64[1] = SHIDWORD(v279);
  v281 = vdivq_f64(v278, vcvtq_f64_s64(v277));
  v277.i64[0] = v276;
  v277.i64[1] = SHIDWORD(v276);
  v282 = vcvtq_f64_s64(v277);
  v277.i64[0] = v280;
  v277.i64[1] = SHIDWORD(v280);
  v467 = vmlsq_f64(v282, vcvtq_f64_s64(v277), v281);
  v472 = v281;
  bzero(data, 0x500uLL);
  v284 = 0;
  v285 = 0;
  v286 = byte_1ED4E985D;
  v446 = 0u;
  __asm { FMOV            V0.2D, #0.5 }

  v453 = _Q0;
  v290 = 0uLL;
  while (1)
  {
    v291 = v271->f64[1];
    v292 = *(*&v291 + 88);
    *v496 = *(*&v291 + 72);
    v497 = v292;
    v293 = *(*&v291 + 136);
    v294 = 0.0;
    if (v293)
    {
      v294 = *(v293 + 232);
    }

    v478 = v290;
    if ((LOBYTE(v271[10].f64[0]) & 0x10) != 0)
    {
      v296 = vaddvq_f64(vmulq_f64(v271[1], v271[1]));
      v297 = vaddvq_f64(vmulq_f64(v271[3], v271[3]));
      v298 = v271[8].f64[1];
      if (v298 != 1.0)
      {
        v299 = 1.0 / (v298 * v298);
        v296 = v299 * v296;
        v297 = v299 * v297;
      }

      v300 = v297 == 1.0 && v296 == 1.0;
      v301 = (sqrt(v297) + sqrt(v296)) * 0.5;
      if (v300)
      {
        v295 = 1.0;
      }

      else
      {
        v295 = v301;
      }
    }

    else
    {
      v295 = v271[9].f64[0];
    }

    v302 = *(*&v291 + 44);
    CA::Mat4Impl::mat4_apply_to_rect(v271 + 1, v496, v283);
    if (v472.f64[0] != 1.0 && v497.f64[0] < 1.79769313e308)
    {
      *v496 = *v496 * v472.f64[0];
      v497.f64[0] = v497.f64[0] * v472.f64[0];
    }

    v303 = v497.f64[1];
    if (v472.f64[1] != 1.0 && v497.f64[1] < 1.79769313e308)
    {
      v303 = v497.f64[1] * v472.f64[1];
      *&v496[8] = *&v496[8] * v472.f64[1];
      v497.f64[1] = v497.f64[1] * v472.f64[1];
    }

    v305 = v472.f64[0] * v294 * v295;
    v306 = vaddq_f64(v467, *v496);
    if (v305 != 0.0)
    {
      v305 = v305 + 1.0;
    }

    v307 = v497.f64[0];
    if (v497.f64[0] <= v303)
    {
      v308 = v303;
    }

    else
    {
      v308 = v497.f64[0];
    }

    if (v308 < 1.79769313e308)
    {
      if (v497.f64[0] >= v303)
      {
        v309 = v303;
      }

      else
      {
        v309 = v497.f64[0];
      }

      v290 = v478;
      if (v309 > 0.0)
      {
        __asm { FMOV            V4.2D, #-1.0 }

        v306 = vaddq_f64(v306, _Q4);
        v311 = v303 + 2.0;
        v497.f64[0] = v497.f64[0] + 2.0;
        v497.f64[1] = v311;
        if (v307 + 2.0 <= 0.0 || v311 <= 0.0)
        {
          v497 = 0uLL;
        }
      }
    }

    else
    {
      v290 = v478;
    }

    v312 = v497;
    if (v286)
    {
      v332 = v497.f64[1];
      v333 = v497.f64[0] <= v497.f64[1] ? v497.f64[1] : v497.f64[0];
      if (v333 < 1.79769313e308)
      {
        if (v497.f64[0] < v497.f64[1])
        {
          v332 = v497.f64[0];
        }

        if (v332 > 0.0)
        {
          v334 = vaddq_f64(v306, v497);
          v306 = vrndaq_f64(v306);
          v312 = vsubq_f64(vrndaq_f64(v334), v306);
          *v496 = v306;
          v497 = v312;
        }
      }
    }

    v313 = vclezq_f64(v290);
    v314 = vclezq_f64(v312);
    v315 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v314, v313), vzip2q_s64(v314, v313))));
    v316 = v315.i8[0];
    if ((v315.i8[4] & 1) == 0)
    {
      if (v315.i8[0])
      {
        goto LABEL_571;
      }

      v318 = vminnmq_f64(v446, v306);
      v317 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v446, v290), vaddq_f64(v306, v312)), v318);
LABEL_570:
      v446 = v318;
      v290 = v317;
      goto LABEL_571;
    }

    v317 = v312;
    v318 = v306;
    if ((v316 & 1) == 0)
    {
      goto LABEL_570;
    }

LABEL_571:
    v319 = v302 & 3;
    v320 = LOBYTE(v271[10].f64[1]) ? 0.0 : 1.0;
    v501[0] = xmmword_183E218B0;
    LODWORD(v501[1].f64[0]) = 1065353216;
    if (v319 == 3)
    {
      v501[0].f64[0] = 15.8284855;
      *(&v501[0].f64[1] + 4) = 0.000761708822;
      v322 = xmmword_183E218D0;
      v321 = 1;
    }

    else if (v319 == 2)
    {
      v321 = 0;
      v501[0] = xmmword_183E218E0;
      LODWORD(v501[1].f64[0]) = 1061197339;
      v322 = xmmword_183E218F0;
    }

    else
    {
      v321 = 0;
      v322 = xmmword_183E218C0;
    }

    v323 = vmulq_f64(v312, v453);
    v324 = vcvt_f32_f64(vaddq_f64(v323, v306));
    v325 = v305;
    v326 = v305 * 1.52866495;
    *&v326 = v326;
    *&v323.f64[0] = vcvt_f32_f64(v323);
    v327 = vdup_n_s32(0x40390F46u);
    v328 = vsub_f32(v327, vdiv_f32(vmul_f32(*&v323.f64[0], v327), vdup_lane_s32(*&v326, 0)));
    __asm { FMOV            V16.2S, #1.0 }

    v330 = vbsl_s8(vcgt_f32(v328, _D16), _D16, v328);
    v331 = &data[v284];
    *v331 = v324;
    *(v331 + 1) = *&v323.f64[0];
    *(v331 + 4) = v325;
    *(v331 + 5) = LODWORD(v326);
    *(v331 + 6) = 1.0 / *&v326;
    *(v331 + 28) = vbic_s8(v330, vcltz_f32(v330));
    *(v331 + 9) = v320;
    *(v331 + 40) = v322;
    *(v331 + 56) = v501[0];
    *(v331 + 18) = LODWORD(v501[1].f64[0]);
    v331[76] = v321;
    if (v284 == 1200)
    {
      break;
    }

    v271 = *&v271->f64[0];
    v284 += 80;
    ++v285;
    if (!v271)
    {
      v479 = v290;
      goto LABEL_591;
    }
  }

  v479 = v290;
  v285 = 16;
LABEL_591:
  v335 = *(this + 3399);
  v7 = v455;
  if (v285 != *(v463 + 1643) || memcmp(data, *(this + 3399), 80 * v285))
  {
    memcpy(v335, data, 80 * v285);
    *(v463 + 1643) = v285;
    v336 = vceqzq_f64(v479);
    v337 = 0uLL;
    if ((vorrq_s8(vdupq_laneq_s64(v336, 1), v336).u64[0] & 0x8000000000000000) == 0)
    {
      v338 = vceqq_f64(v479, v479);
      if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v338), 1), v338).u64[0] & 0x8000000000000000) == 0)
      {
        v339 = vcvtmq_s64_f64(vmaxnmq_f64(v446, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v337 = vuzp1q_s32(v339, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v446, v479), vdupq_n_s64(0x41C0000000000000uLL))), v339));
      }
    }

    v340 = vextq_s8(v337, v337, 8uLL).u64[0];
    v341 = vclez_s32(v340);
    if ((vpmax_u32(v341, v341).u32[0] & 0x80000000) == 0)
    {
      v342 = *(this + 160);
      v343 = vclez_s32(v342);
      if ((vpmax_u32(v343, v343).u32[0] & 0x80000000) != 0 || (v344 = *(this + 152), v345 = vadd_s32(*v337.i8, v340), *v346.i8 = vmax_s32(*v337.i8, v344), v347 = vsub_s32(vmin_s32(v345, vadd_s32(v344, v342)), *v346.i8), v348 = vclez_s32(v347), (vpmax_u32(v348, v348).u32[0] & 0x80000000) != 0))
      {
        v337.i64[1] = 0;
      }

      else
      {
        v346.u64[1] = v347;
        v337 = v346;
      }
    }

    v349 = v337.i32[2];
    v350 = v337.i32[3];
    v454 = v337.i32[2];
    if (v337.i32[2] >= v337.i32[3])
    {
      v349 = v337.i32[3];
    }

    if (v349 <= 0)
    {
      if ((v273 & 1) == 0)
      {
        IOMobileFramebufferSwapSetGainMap();
      }
    }

    else
    {
      v480 = v337.i64[0];
      v351 = (*(*this + 1064))(this) - 1;
      v433 = 0.5;
      v468 = 0.5;
      if (v351 <= 7)
      {
        v433 = flt_183E31E58[v351];
        v468 = flt_183E31E78[v351];
      }

      v501[0].f64[0] = 0.0;
      v447 = v480;
      v352 = HIDWORD(v480);
      IOMFBGainEncoderCreate();
      if (v350 >= 1)
      {
        v353 = v285;
        v354 = v454 + v480;
        v451 = v350 + HIDWORD(v480);
        do
        {
          IOMFBGainEncoderStartRow();
          if (v454 < 1)
          {
            v362 = -1.0;
            v365 = -1.0;
          }

          else
          {
            v357 = 0;
            v358 = -1.0;
            v359 = -1.0;
            v360 = v447;
            do
            {
              v473 = v359;
              v481 = v358;
              v361 = v354 - v360;
              v362 = 1.0;
              v363 = data;
              v364 = v353;
              v365 = 1.0;
              while (1)
              {
                v366 = CA::GainMapGenerator::Element::gain(v363, v360 + 0.5, v352 + 0.5, v355, v356);
                v367 = HIDWORD(v366);
                v368 = *&v366;
                if (*&v366 == -1.0)
                {
                  break;
                }

                v369 = CA::GainMapGenerator::Element::gain(v363, v468 + v360, v433 + v352, v355, v356);
                v370 = HIDWORD(v369);
                if (*&v369 == -1.0)
                {
                  v367 = HIDWORD(v369);
                  break;
                }

                if (v365 > *&v369)
                {
                  v365 = *&v369;
                }

                if (v362 > v368)
                {
                  v362 = v368;
                }

                if (v361 < SHIDWORD(v369))
                {
                  LODWORD(v370) = v361;
                }

                if (v370 >= v367)
                {
                  v361 = v367;
                }

                else
                {
                  v361 = v370;
                }

                v363 += 10;
                if (!--v364)
                {
                  goto LABEL_626;
                }
              }

              v365 = v363[4].f32[1];
              v362 = v365;
              v361 = v367;
LABEL_626:
              if (v362 == v473 && v365 == v481)
              {
                v362 = v473;
                v365 = v481;
              }

              else if (v357)
              {
                *v496 = v481;
                *&v496[4] = v473;
                *&v496[8] = v481;
                IOMFBGainEncoderEmitRun();
                v357 = 0;
              }

              if (v361 <= 1)
              {
                v372 = 1;
              }

              else
              {
                v372 = v361;
              }

              v360 += v372;
              v357 += v372;
              v358 = v365;
              v359 = v362;
            }

            while (v360 < v354);
          }

          *v496 = v365;
          *&v496[4] = v362;
          *&v496[8] = v365;
          IOMFBGainEncoderEmitRun();
          ++v352;
        }

        while (v352 < v451);
      }

      v373 = IOMFBGainEncoderFinishEncoding();
      IOMobileFramebufferSwapSetGainMap();
      if (v373)
      {
        IOMFBGainMapRelease();
      }

      MEMORY[0x1865E9A10](*&v501[0].f64[0]);
      v7 = v455;
      v61 = v461;
      v42 = v436;
    }
  }

  v43 = v462;
  v6 = v463;
LABEL_646:
  if (v439)
  {
    *(v439 + 260) = 0;
  }

LABEL_648:
  IOMobileFramebufferSwapDebugInfo();
  if ((v6[4030] & 1) == 0)
  {
    v374 = *(this + 3220);
    if (v374)
    {
      if (*v374 || (v375 = sil_mgr_instance(0, 0xFFFFFFFFLL), (*v374 = v375) != 0))
      {
        if (*(this + 3349) != 0.0)
        {
          IOMobileFramebufferSwapSetSecureAnimation();
        }
      }
    }
  }

  v376 = v61;
  if (v6[3971] == 1)
  {
    pthread_mutex_lock((this + 26168));
    atomic_store(*v458, (v6 + 723));
    pthread_mutex_unlock((this + 26168));
  }

  v377 = v6[155];
  v378 = IOMobileFramebufferSwapEnd();
  if (v6[3966] == 1)
  {
    CA::IOMobileFramebuffer::swap_wait((this + 25696));
  }

  if (v456)
  {
    CA::IOMobileFramebuffer::swap_wait((this + 25696));
    *data = 0;
    CA::IOMobileFramebuffer::swap_begin((this + 25696), data);
    CA::WindowServer::IOMFBDisplay::swap_brightness(this);
    IOMobileFramebufferSwapEnd();
    CA::IOMobileFramebuffer::swap_wait((this + 25696));
  }

  if (v448)
  {
    v379 = *(v457 + 32);
    if (v379)
    {
      CA::WindowServer::Surface::unref(v379);
      *(v457 + 32) = 0;
    }
  }

  if (v378)
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v380 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      v404 = *(this + 6);
      *data = 67109376;
      *&data[4] = v404;
      *&data[8] = 1024;
      *&data[10] = v378;
      _os_log_error_impl(&dword_183AA6000, v380, OS_LOG_TYPE_ERROR, "display %u swap_end returned error %x\n", data, 0xEu);
    }

    if (BYTE11(xmmword_1ED4E980C) == 1)
    {
      kdebug_trace();
    }

    v381 = v43[40];
    if ((v381 & 0x40) != 0)
    {
      CA::CASharedEvent::force_complete(*(*(v43 + 2) + 16), [*(*(*(v43 + 2) + 16) + 32) signaledValue] + 1, 0, 1);
      v381 = v43[40] & 0xBF;
      v43[40] = v381;
    }

    if (v381 < 0)
    {
      v382 = *(*(*(v43 + 1) + 32) + 16);
      CA::CASharedEvent::force_complete(v382, [v382[4] signaledValue] + 1, 0, 1);
      v43[40] &= ~0x80u;
    }

    *v458 = 0;
    v257 = 0x1000000;
  }

  else
  {
    if ((v6[3954] & 1) == 0)
    {
      CA::WindowServer::IOMFBDisplay::fetch_default_framebuffer(this);
      CA::IOMobileFramebuffer::swap_wait((this + 25696));
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v383 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xE0uLL, 0xDEEC3011uLL);
    v384 = v383;
    if (v383)
    {
      v383[10] = 0;
      v383[9] = v383 + 10;
      v383[13] = 0;
      v383[11] = 0;
      v383[12] = v383 + 13;
      v383[14] = 0;
      v383[15] = v383 + 19;
      v383[16] = v383 + 19;
      v383[17] = v383 + 19;
      v383[18] = 4;
    }

    *&v501[0].f64[0] = v383;
    v385 = v495;
    if (v6[3971] == 1)
    {
      *(v383 + 1) = *(v495 + 68);
      v383[1] = *(v385 + 10);
      *v383 = *v458;
      v386 = *(v457 + 32);
      if (v386)
      {
        v387 = (*(*v386 + 168))(v386);
        if (v387)
        {
          *(v384 + 48) = IOSurfaceGetID(v387);
        }
      }

      *(v384 + 196) = *v464 - (v440 ^ 1);
      v388 = v495;
      v389 = *(v384 + 110) & 0xFFFD | (2 * ((*(v495 + 688) >> 3) & 1));
      *(v384 + 110) = *(v384 + 110) & 0xFFFD | (2 * ((*(v495 + 688) >> 3) & 1));
      v384[2] = *(v388 + 102);
      v384[3] = *(v388 + 15);
      *(v384 + 23) = v30;
      *(v384 + 110) = v389 & 0xFFDF | v441 & 0x20;
      LODWORD(v388) = atomic_load((*(this + 96) + 4));
      if (v388 == 1)
      {
        v390 = atomic_load((*(this + 96) + 5));
        v391 = v390 == 1;
      }

      else
      {
        v391 = 0;
      }

      v393 = *(v384 + 110) & 0xFFFE | v391;
      *(v384 + 110) = v393;
      v394 = v495;
      v395 = v495 + 304;
      *(v384 + 110) = v393 & 0xFDFF | (((*(v495 + 38) & 0x18000) != 0) << 9);
      v396 = *(v394 + 295);
      if ((*(v395 + 1) & 0x180) != 0 && v396 <= *(v394 + 296))
      {
        v396 = *(v394 + 296);
      }

      v397 = *(this + 88);
      if (v397)
      {
        *&v398 = COERCE_FLOAT(atomic_load((v397 + 4)));
        v399 = *&v398;
      }

      else
      {
        v399 = 1.0;
      }

      if (v396 >= v399)
      {
        v402 = *(this + 88);
        v401 = v42;
        if (v402)
        {
          *&v403 = COERCE_FLOAT(atomic_load((v402 + 4)));
          v400 = *&v403;
        }

        else
        {
          v400 = 1.0;
        }
      }

      else
      {
        v400 = *(v495 + 295);
        v401 = v42;
        if ((*(v495 + 305) & 0x180) != 0 && v400 <= *(v495 + 296))
        {
          v400 = *(v495 + 296);
        }
      }

      *(v384 + 54) = v400;
      v405 = v495;
      v406 = CAHostTimeWithTime(*(v495 + 103));
      *&data[8] = 0;
      *data = 0;
      mach_get_times();
      v384[4] = *&data[8] - *data + v406;
      *(v384 + 197) = *(v384 + 197) & 0xF0 | v6[99] & 0xF;
      v407 = CAHostTimeWithTime(*(v405 + 16));
      *&data[8] = 0;
      *data = 0;
      mach_get_times();
      v384[5] = *&data[8] - *data + v407;
      if ((*(v405 + 104) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v408 = CAHostTimeWithTime(*(v405 + 104));
      }

      else
      {
        v408 = -1;
      }

      v43 = v462;
      v384[7] = v408;
      v409 = (4 * (v6[3968] & 1)) | (8 * (v28 > 0.0)) | *(v384 + 110) & 0xFFF3;
      *(v384 + 110) = v409;
      v384[8] = *(v405 + 106);
      v410 = v409 & 0xFF7F | ((v377 & 1) << 7);
      *(v384 + 110) = v410;
      *(v384 + 110) = *(v405 + 688) & 0x100 | v410 & 0xFEFF;
      std::__tree<CA::Render::Object *>::swap(v405 + 120, (v384 + 9));
      v385 = v495;
      v411 = v384 + 12;
      v412 = *(v495 + 117);
      *(v495 + 117) = v384[12];
      v384[12] = v412;
      v413 = (v385 + 944);
      v415 = *(v384 + 13);
      v414 = v384 + 13;
      v416 = *(v385 + 118);
      v417 = *(v385 + 119);
      *(v385 + 59) = v415;
      *v414 = v416;
      v414[1] = v417;
      if (*(v385 + 119))
      {
        v418 = (*v413 + 16);
      }

      else
      {
        v418 = (v385 + 936);
      }

      v392 = v376;
      v42 = v401;
      *v418 = v413;
      if (v417)
      {
        v411 = (*v414 + 16);
      }

      *v411 = v414;
    }

    else
    {
      v392 = v376;
    }

    v6[3968] = 0;
    v419 = CA::WindowServer::IOMFBDisplay::finish_update_(this, v43, v385, v392);
    if (v6[3971] == 1)
    {
      v420 = mach_continuous_time();
      v421 = v501[0].f64[0];
      *(*&v501[0].f64[0] + 48) = v420;
      os_unfair_lock_lock(this + 6518);
      *v496 = v498;
      *&v496[8] = v498;
      v422 = this + 26104;
      *&v497.f64[0] = v498;
      *&v497.f64[1] = 4;
      *&data[8] = 0;
      memset(&data[24], 0, 40);
      v423 = &data[32];
      *data = &data[32];
      *&data[16] = &data[32];
      *&data[24] = *(this + 3266);
      v424 = *(this + 3263);
      if (v424 == *(this + 3265))
      {
        v426 = *(this + 3264);
        for (*&data[8] = &data[v426 - v424 + 32]; v424 != v426; ++v423)
        {
          v427 = *v424;
          v424 += 8;
          *v423 = v427;
        }
      }

      else
      {
        v425 = *(this + 3264);
        *data = *(this + 3263);
        *&data[8] = v425;
        *v422 = 0uLL;
        *(this + 26120) = 0uLL;
      }

      if (v422 != v496)
      {
        X::small_vector_base<void({block_pointer})(__CFDictionary const*)>::move(v422, v496, this + 3267);
      }

      if ((*&v421 + 120) != data)
      {
        X::small_vector_base<void({block_pointer})(__CFDictionary const*)>::move(*&v421 + 120, data, (*&v421 + 152));
      }

      if (*data != *&data[16])
      {
        free(*data);
      }

      if (*v496 != *&v497.f64[0])
      {
        free(*v496);
      }

      std::vector<std::unique_ptr<CA::WindowServer::IOMFBDisplay::FrameInfo>>::push_back[abi:nn200100](this + 26080, v501);
      os_unfair_lock_unlock(this + 6518);
      pthread_mutex_lock((this + 26168));
      atomic_store(0, (v6 + 723));
      pthread_cond_signal((this + 26232));
      pthread_mutex_unlock((this + 26168));
    }

    if (v419)
    {
      v257 = 0x80000;
    }

    else
    {
      v257 = 0;
    }

    std::unique_ptr<CA::WindowServer::IOMFBDisplay::FrameInfo>::reset[abi:nn200100](v501, 0);
  }

LABEL_729:
  v11 = v257 | v42;
  v15 = (this + 25848);
LABEL_730:
  pthread_mutex_unlock(v15);
LABEL_731:
  objc_autoreleasePoolPop(v7);
  return v11;
}