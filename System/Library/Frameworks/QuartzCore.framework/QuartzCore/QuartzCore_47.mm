float CA::Render::ValueInterpolator::mix<float>(float64x2_t *a1, float a2, double a3, double a4, float a5)
{
  v5 = (*&a4 - *&a3);
  v6 = a1[5].f64[0] * (*&a3 - a2) + a1[5].f64[1] * v5;
  v7 = a1[6].f64[0] * v5 + a1[6].f64[1] * (a5 - *&a4);
  *(&a3 + 1) = v6;
  *(&a4 + 1) = v7;
  return vaddvq_f64(vmlaq_f64(vmulq_f64(a1[2], vcvtq_f64_f32(*&a4)), vcvtq_f64_f32(*&a3), a1[1]));
}

CA::Render::MeshTransform *CA::Render::MeshTransform::decode(CA::Render::MeshTransform *this, CA::Render::Decoder *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = CA::Render::Decoder::decode_int32(this);
  v4 = CA::Render::Decoder::decode_size_t(this);
  v5 = CA::Render::Decoder::decode_size_t(this);
  v6 = CA::Render::Decoder::decode_int8(this);
  v7 = v6;
  if (v6 >= 7)
  {
    CA::Render::Decoder::set_fatal_error(this, "%s - enum %u out of range of %u", "decode_int8_enum", v6, 7);
    v7 = 0;
  }

  v8 = CA::Render::Decoder::decode_int32(this);
  v9 = CA::Render::Decoder::decode_int32(this);
  v10 = CA::Render::Decoder::decode_int8(this);
  v11 = CA::Render::Decoder::decode_int8(this);
  v12 = CA::Render::Decoder::decode_int32(this);
  if (v4 > 0x100000)
  {
    CA::Render::Decoder::set_fatal_error(this, "%s - suspiciously large vertex count: %zu");
    return 0;
  }

  if (v5 > 0x100000)
  {
    CA::Render::Decoder::set_fatal_error(this, "%s - suspiciously large face count: %zu");
    return 0;
  }

  v14 = v12;
  v34 = v3;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v15 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xD0uLL, 0xDEEC3011uLL);
  v13 = v15;
  if (v15)
  {
    CA::Render::MeshTransform::MeshTransform(v15, v4, v5, v8);
  }

  *(v13 + 3) |= (v34 << 8) & 0xFFFFCFFF | 0x300;
  std::vector<CA::Render::MeshVertex>::resize(v13 + 3, v4);
  std::vector<CA::Render::MeshFace>::resize(v13 + 6, v5);
  std::vector<CA::Render::MeshFace>::resize(v13 + 9, 4 * v5);
  *(v13 + 24) = v7;
  *(v13 + 25) = v8;
  *(v13 + 26) = v9;
  *(v13 + 108) = v10 != 0;
  *(v13 + 109) = v11 != 0;
  *(v13 + 28) = v14;
  if (*(v13 + 4) != *(v13 + 3))
  {
    v16 = 0;
    v17 = 0;
    do
    {
      *&__dst = 0;
      CA::Render::Decoder::decode_bytes(this, &__dst, 8uLL);
      *(*(v13 + 3) + v16) = __dst;
      DWORD2(__dst) = 0;
      *&__dst = 0;
      CA::Render::Decoder::decode_bytes(this, &__dst, 0xCuLL);
      v18 = DWORD2(__dst);
      v19 = *(v13 + 3);
      v20 = v19 + v16;
      *(v20 + 16) = __dst;
      *(v20 + 24) = v18;
      *(v20 + 28) = 1065353216;
      ++v17;
      v16 += 32;
    }

    while (v17 < (*(v13 + 4) - v19) >> 5);
  }

  if (*(v13 + 7) != *(v13 + 6))
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = v21;
      v24 = 4;
      do
      {
        v25 = CA::Render::Decoder::decode_int32(this);
        v26 = *(v13 + 6);
        *(v26 + v23) = v25;
        v23 += 4;
        --v24;
      }

      while (v24);
      ++v22;
      v21 += 16;
    }

    while (v22 < (*(v13 + 7) - v26) >> 4);
  }

  if (*(v13 + 10) != *(v13 + 9))
  {
    v27 = 0;
    v28 = 0;
    do
    {
      *(*(v13 + 9) + v27 + 8) = CA::Render::Decoder::decode_int32(this);
      v29 = CA::Render::Decoder::decode_int32(this);
      v30 = *(v13 + 9);
      *(v30 + v27 + 4) = v29;
      ++v28;
      v27 += 16;
    }

    while (v28 < (*(v13 + 10) - v30) >> 4);
  }

  __dst = 0u;
  v36 = 0u;
  CA::Render::Decoder::decode_bytes(this, &__dst, 0x20uLL);
  v31 = v36;
  *(v13 + 120) = __dst;
  *(v13 + 136) = v31;
  v36 = 0u;
  v37 = 0u;
  __dst = 0u;
  CA::Render::Decoder::decode_bytes(this, &__dst, 0x30uLL);
  v32 = v36;
  *(v13 + 152) = __dst;
  *(v13 + 168) = v32;
  *(v13 + 184) = v37;
  CA::Render::Decoder::decode_sanity_check(this, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-mesh-transform.cpp", 1226);
  return v13;
}

uint64_t CA::CG::PathInverseDetector::detect_rect(CA::CG::PathInverseDetector *this, CGRect *a2)
{
  if (*(this + 1) == 4)
  {
    v2 = 0;
    while (dword_183E311E8[v2] == *(this + v2 + 16))
    {
      if (++v2 == 5)
      {
        v3 = *(this + 5);
        if (v3 == *(this + 11))
        {
          v4 = *(this + 16);
          if (*(this + 10) == v4)
          {
            v5 = *(this + 17);
            if (v5 == *(this + 23))
            {
              v6 = *(this + 4);
              if (*(this + 22) == v6)
              {
                a2->origin.x = v6;
                a2->origin.y = v5;
                a2->size.width = v4 - v6;
                a2->size.height = v3 - v5;
                return 1;
              }
            }
          }
        }

        return 0;
      }
    }
  }

  return 0;
}

uint64_t ___ZN2CA2CG19PathInverseDetector6detectEPK6CGPathNS_4RectE_block_invoke(uint64_t result, int *a2, _BYTE *a3)
{
  v4 = *(result + 32);
  v5 = *v4;
  if (*v4 != 2)
  {
    if (v5 == 1)
    {
      v8 = *(v4 + 1);
      if (v8 < 0xA)
      {
        *(v4 + v8 + 16) = *a2;
        v10 = *a2;
        if (v10 != 4)
        {
          v11 = 0;
          LODWORD(v12) = cgpath_counts[v10];
          v13 = v4 + 8;
          if (v12 <= 1)
          {
            LOBYTE(v12) = 1;
          }

          v12 = v12;
          do
          {
            *&v13[12 * *(v4 + 1)] = *(*(a2 + 1) + v11);
            v13 += 4;
            v11 += 16;
            --v12;
          }

          while (v12);
          v7 = *(v4 + 1);
          goto LABEL_22;
        }

        v9 = 2;
LABEL_11:
        *v4 = v9;
LABEL_23:
        v5 = *v4;
LABEL_24:
        if (v5 != 3)
        {
          return result;
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (v5)
      {
        goto LABEL_24;
      }

      *(v4 + *(v4 + 1) + 16) = *a2;
      v6 = *a2;
      if (*a2 == 4)
      {
        if (*(v4 + 1) == 4)
        {
          result = CA::CG::PathInverseDetector::detect_rect(v4, v4 + 16);
          if (result)
          {
            *v4 = 1;
            *(v4 + 1) = 0;
            goto LABEL_23;
          }
        }
      }

      else if (v6 == 1)
      {
        v7 = *(v4 + 1);
        if (v7 <= 3)
        {
LABEL_21:
          *&v4[12 * v7 + 8] = **(a2 + 1);
LABEL_22:
          *(v4 + 1) = v7 + 1;
          goto LABEL_23;
        }
      }

      else if (!v6)
      {
        v7 = *(v4 + 1);
        if (!v7)
        {
          goto LABEL_21;
        }
      }
    }

    v9 = 3;
    goto LABEL_11;
  }

  *v4 = 3;
LABEL_25:
  *a3 = 1;
  return result;
}

uint64_t ___ZN2CA2CG19PathInverseDetector6detectEPK6CGPathNS_4RectE_block_invoke_2(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v3 = *(result + 32);
  v4 = *(v3 + 8);
  if (v4 > 9 || (v5 = *(v3 + v4 + 16), *a2 != v5))
  {
LABEL_13:
    *v3 = 3;
    goto LABEL_14;
  }

  if (v5 != 4)
  {
    LODWORD(v5) = cgpath_counts[v5];
    if (v5 <= 1)
    {
      LOBYTE(v5) = 1;
    }

    v5 = v5;
    v6 = (*(a2 + 8) + 8);
    v7 = (v3 + 48 * v4 + 40);
    while (vabdd_f64(*(v6 - 1), *(v7 - 1)) <= 0.000001 && (vabdd_f64(*v6, *v7) <= 0.000001 || vabdd_f64(*v7 + *v6, *(v3 + 544) + *(v3 + 544)) <= 0.000001))
    {
      v6 += 2;
      v7 += 2;
      if (!--v5)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_13;
  }

LABEL_11:
  *(v3 + 8) = v4 + 1;
  if (*v3 == 3)
  {
LABEL_14:
    *a3 = 1;
  }

  return result;
}

uint64_t CA::CG::Style::Style(uint64_t a1)
{
  *a1 = &unk_1EF201148;
  *(a1 + 8) = 0;
  *(a1 + 12) = CGStyleGetIdentifier();
  *(a1 + 16) = CGStyleRetain();
  *(a1 + 72) = CGStyleGetDrawOrdering();
  *(a1 + 24) = 0x7FF8000000000000;
  *(a1 + 8) = 1;
  return a1;
}

uint64_t CA::WindowServer::IOMFBServer::enable_fixed_rate_display_links(CA::WindowServer::IOMFBServer *this, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((this + 856));
  if ((*(**(this + 12) + 272))(*(this + 12)) != a2)
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v4 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(this + 12) + 24);
      v7[0] = 67109376;
      v7[1] = v5;
      v8 = 1024;
      v9 = a2;
      _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "Display %u setting fixed rate links = %d", v7, 0xEu);
    }

    CA::WindowServer::IOMFBServer::set_throttle_reason(this, 3, a2);
    CA::WindowServer::IOMFBServer::update_throttle(this);
    (*(**(this + 12) + 280))();
  }

  return pthread_mutex_unlock((this + 856));
}

void CA::WindowServer::IOMFBServer::set_throttle_reason(unsigned __int8 *a1, int a2, int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (CA::WindowServer::Server::supports_throttle(a1))
  {
    v6 = 1 << a2;
    v7 = a1[1384];
    v8 = (1 << a2) & v7;
    if (a3)
    {
      if (v8)
      {
        return;
      }

      v9 = v7 | v6;
    }

    else
    {
      if (!v8)
      {
        return;
      }

      v9 = v7 & ~v6;
    }

    a1[1384] = v9;
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v10 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = CA::WindowServer::IOMFBServer::throttle_reason_string[a2];
      v12 = a1[1384];
      v13 = (a1[1446] >> 4) & 1;
      v15 = 136315906;
      v16 = v11;
      v17 = 1024;
      v18 = a3;
      v19 = 1024;
      v20 = v12;
      v21 = 1024;
      v22 = v13;
      _os_log_impl(&dword_183AA6000, v10, OS_LOG_TYPE_DEFAULT, "Setting throttle reason %s=%i (throttle_reasons=%u, disable_throttle=%i)", &v15, 0x1Eu);
    }

    v14 = mach_absolute_time();
    *&a1[8 * a2 + 1392] = CATimeWithHostTime(v14);
  }
}

uint64_t CA::WindowServer::IOMFBServer::update_throttle(uint64_t this)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(this + 1446) & 0x10;
  v2 = (*(this + 1446) & 0x10) == 0 && *(this + 1384) != 0;
  if (v2 != (*(*(this + 96) + 27408) != 0))
  {
    v3 = this;
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v4 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v3 + 1384);
      v8[0] = 67109632;
      v8[1] = v2;
      v9 = 1024;
      v10 = v5;
      v11 = 1024;
      v12 = v1 >> 4;
      _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "Updating frame rate throttle=%i (throttle_reasons=%u, disable_throttle=%i)", v8, 0x14u);
    }

    v6 = *(v3 + 96);
    v7 = *(v3 + 1384);
    v6[6852]._os_unfair_lock_opaque = v2;
    v6[6853]._os_unfair_lock_opaque = v7;
    if (*(v3 + 1112))
    {
      CA::WindowServer::IOMFBServer::refresh_timer_interval(v3);
      v6 = *(v3 + 96);
    }

    return CA::WindowServer::IOMFBDisplay::minimum_frame_duration_changed(v6);
  }

  return this;
}

void CA::WindowServer::IOMFBServer::unregister_libedr_callbacks(CA::WindowServer::IOMFBServer *this)
{
  if (CA::WindowServer::IOMFBServer::edr_client(this))
  {
    if ((*(this + 1446) & 4) != 0)
    {
      v2 = CA::WindowServer::IOMFBServer::edr_client(this);
      CA::EDRClient::unregister_callback(v2);
      *(this + 1446) = *(this + 1446) & 0xF3 | 8;
    }
  }
}

void ___ZN2CA12WindowServer11IOMFBServer25register_libedr_callbacksEv_block_invoke(uint64_t a1, char a2, float a3, float a4, float a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = *(v5 + 1080);
  if (v6)
  {
    v7 = *MEMORY[0x1E695E8E0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = ___ZN2CA12WindowServer11IOMFBServer25register_libedr_callbacksEv_block_invoke_2;
    v8[3] = &__block_descriptor_tmp_79;
    v8[4] = v5;
    v12 = a2;
    v9 = a3;
    v10 = a4;
    v11 = a5;
    CFRunLoopPerformBlock(v6, v7, v8);
    CFRunLoopWakeUp(*(v5 + 1080));
  }
}

_DWORD *___ZN2CA12WindowServer11IOMFBServer25register_libedr_callbacksEv_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = (*(*v1 + 144))(v1, *(a1 + 52), *(a1 + 40), *(a1 + 44), *(a1 + 48));
  if ((*(v1 + 1446) & 8) != 0)
  {
    v3 = CA::WindowServer::IOMFBServer::edr_client(v1);
    pthread_mutex_lock(v3);
    CA::EDRClient::reload_potential_headroom_locked(v3);
    pthread_mutex_unlock(v3);
    v4 = CA::WindowServer::IOMFBServer::edr_client(v1);
    pthread_mutex_lock(v4);
    v5 = *(v4 + 152);
    pthread_mutex_unlock(v4);
    v6 = *(v1 + 96);
    result = CA::WindowServer::Display::initialize_edr_state(v6);
    v7 = *(v6 + 704);
    if (v7)
    {
      atomic_store(v5, (v7 + 4));
    }

    *(v1 + 1446) &= ~8u;
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBServer::immediate_render(CA::WindowServer::IOMFBServer *this, char a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = mach_absolute_time();
  os_unfair_lock_lock(this + 4);
  v5 = *(this + 36);
  os_unfair_lock_unlock(this + 4);
  v6 = CAHostTimeWithTime(v5);
  pthread_mutex_lock((this + 856));
  v7 = *(this + 12);
  *(v7 + 26392) = CATimeWithHostTime(v4) + 0.5;
  if (BYTE11(xmmword_1ED4E980C) == 1)
  {
    kdebug_trace();
    v7 = *(this + 12);
  }

  if (v6 == *(this + 167) && ((*(v7 + 640) & 0x100) == 0 || (v8 = (*(*v7 + 144))(v7), v7 = *(this + 12), v8 == 2)))
  {
    v9 = 1;
  }

  else if ((*(v7 + 640) & 0x100) != 0)
  {
    v10 = (*(*v7 + 776))(v7);
    v11 = CAHostTimeWithTime(v10);
    v12 = (*(**(this + 12) + 784))();
    v13 = (*(**(this + 12) + 144))(*(this + 12));
    if (!v13)
    {
      v13 = (*(**(this + 12) + 800))(*(this + 12));
    }

    LODWORD(v14) = v13 - v12;
    if (v13 >= v12)
    {
      v14 = v14;
    }

    else
    {
      v14 = 0;
    }

    v9 = v4 >= v6 + v11 * v14;
    v7 = *(this + 12);
  }

  else
  {
    v9 = v4 >= v6;
  }

  v15 = (*(*v7 + 776))(v7);
  v16 = CAHostTimeWithTime(v15);
  v17 = v16 * (*(**(this + 12) + 784))();
  if (v4 <= v17 + *(this + 169))
  {
    v18 = v17 + *(this + 169);
  }

  else
  {
    v18 = v4;
  }

  if (v9)
  {
    v19 = *(this + 830) ^ 1;
  }

  else
  {
    v19 = 0;
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 0x40000000;
  v24[2] = ___ZN2CA12WindowServer11IOMFBServer16immediate_renderEb_block_invoke;
  v24[3] = &__block_descriptor_tmp_93_17982;
  v24[4] = this;
  v24[5] = v18;
  v25 = a2;
  if (v19)
  {
    v20 = CATimeWithHostTime(v18);
    *(this + 167) = v18;
    *(this + 360) = 3 * (*(**(this + 12) + 784))(*(this + 12));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CA12WindowServer11IOMFBServer16immediate_renderEb_block_invoke_2;
    block[3] = &unk_1E6DF8B28;
    block[5] = this;
    block[6] = v18;
    *&block[7] = v20;
    block[4] = v24;
    block[8] = v6;
    block[9] = v17;
    block[10] = v4;
    v21 = *(this + 135);
    if (v21)
    {
      CFRunLoopPerformBlock(v21, *MEMORY[0x1E695E8E0], block);
      CFRunLoopWakeUp(*(this + 135));
    }
  }

  else
  {
    ___ZN2CA12WindowServer11IOMFBServer16immediate_renderEb_block_invoke(v24);
    if (BYTE11(xmmword_1ED4E980C) == 1)
    {
      kdebug_trace();
    }
  }

  return pthread_mutex_unlock((this + 856));
}

unint64_t ___ZN2CA12WindowServer11IOMFBServer16immediate_renderEb_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 830))
  {
    return 0;
  }

  v3 = (*(**(v1 + 96) + 776))(*(v1 + 96));
  v4 = CATimeWithHostTime(*(a1 + 40)) + v3 * 0.125;
  v5 = *(v1 + 1376);
  v6 = *(a1 + 48) == 1 && *(v1 + 1328) + v5 < v4;
  v7 = (~*(v1 + 1444) & 0xF) == 0 && *(v1 + 1328) + v5 * 0.5 < v4;
  v8 = v6 || v7;
  CAHostTimeWithTime(v5);
  kdebug_trace();
  if (!v8)
  {
    return 0;
  }

  v9 = CAHostTimeWithTime(v4);
  (*(*v1 + 536))(v1, v9);
  *(v1 + 1328) = v4;
  return v4;
}

void ___ZN2CA12WindowServer11IOMFBServer16immediate_renderEb_block_invoke_2(void *a1)
{
  v2 = a1[5];
  os_unfair_lock_lock((v2 + 16));
  v3 = *(v2 + 288);
  os_unfair_lock_unlock((v2 + 16));
  v4 = CAHostTimeWithTime(v3);
  mach_absolute_time();
  if (v4 == a1[8] && (*(v2 + 1446) & 1) != 0)
  {
    *(v2 + 1446) &= ~1u;
    CATimeWithHostTime(a1[9]);
    *(v2 + 1184) = 0x7FF0000000000000;
    *(v2 + 1192) = 0u;
    if (BYTE11(xmmword_1ED4E980C) == 1)
    {
      kdebug_trace();
    }

    CA::WindowServer::Server::render_for_time(v2);
  }

  else
  {
    (*(a1[4] + 16))();
    if (BYTE11(xmmword_1ED4E980C) == 1)
    {

      kdebug_trace();
    }
  }
}

uint64_t CA::WindowServer::IOMFBServer::did_set_mode(CA::WindowServer::IOMFBServer *this)
{
  pthread_mutex_lock((this + 856));
  if ((*(this + 1446) & 2) == 0)
  {
    CA::WindowServer::IOMFBServer::remove_vsync_source(this);
    CA::WindowServer::IOMFBDisplay::reset_timings(*(this + 12));
    CA::WindowServer::IOMFBServer::add_vsync_source(this, v2);
  }

  return pthread_mutex_unlock((this + 856));
}

uint64_t CA::WindowServer::IOMFBServer::brightness_callback(uint64_t a1, int a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a3 + 856));
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v6 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a3 + 96) + 24);
    v9 = 134218496;
    v10 = a1;
    v11 = 1024;
    v12 = v7;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&dword_183AA6000, v6, OS_LOG_TYPE_DEFAULT, "Framebuffer %p, DisplayID: %u, brightness callback enabled: %d", &v9, 0x18u);
  }

  (*(*a3 + 352))(a3, 0);
  CA::WindowServer::Server::post_brightness_notification(a3);
  return pthread_mutex_unlock((a3 + 856));
}

uint64_t CA::WindowServer::IOMFBServer::thread_body(CA::WindowServer::IOMFBServer *this, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  memset(v18, 0, sizeof(v18));
  CString = CA_CFStringGetCString(*(*(this + 12) + 8), v18, 256);
  if (CString)
  {
    v16 = 0u;
    v17 = 0u;
    memset(__str, 0, sizeof(__str));
    snprintf(__str, 0x40uLL, "com.apple.coreanimation.display.%s", CString);
    v4 = pthread_setname_np(__str);
    if (v4)
    {
      v5 = v4;
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v6 = x_log_get_utilities::log;
      v4 = os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        v19 = 136315394;
        v20 = __str;
        v21 = 1024;
        v22 = v5;
        v7 = &v19;
        v8 = v6;
LABEL_13:
        _os_log_error_impl(&dword_183AA6000, v8, OS_LOG_TYPE_ERROR, "pthread_setname_np(%s) returned %d\n", v7, 0x12u);
      }
    }
  }

  else
  {
    v4 = pthread_setname_np("com.apple.coreanimation.display");
    if (v4)
    {
      v9 = v4;
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v10 = x_log_get_utilities::log;
      v4 = os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        *__str = 136315394;
        *&__str[4] = "com.apple.coreanimation.display";
        *&__str[12] = 1024;
        *&__str[14] = v9;
        v7 = __str;
        v8 = v10;
        goto LABEL_13;
      }
    }
  }

  CA::WindowServer::Server::set_server_thread_policy(v4);
  pthread_mutex_lock((this + 856));
  *(this + 135) = CFRunLoopGetCurrent();
  (*(**(this + 12) + 392))();
  Current = CFAbsoluteTimeGetCurrent();
  v12 = CFRunLoopTimerCreate(0, Current + 3153600000.0, 3153600000.0, 0, 0, CA::WindowServer::null_timer, 0);
  v13 = *MEMORY[0x1E695E8E0];
  CFRunLoopAddTimer(*(this + 135), v12, *MEMORY[0x1E695E8E0]);
  pthread_cond_signal((this + 984));
  pthread_mutex_unlock((this + 856));
  CFRunLoopRun();
  pthread_mutex_lock((this + 856));
  CFRunLoopRemoveTimer(*(this + 135), v12, v13);
  CFRelease(v12);
  *(this + 135) = 0;
  *(this + 105) = 0;
  pthread_cond_signal((this + 984));
  return pthread_mutex_unlock((this + 856));
}

uint64_t CA::WindowServer::IOMFBServer::frame_info_thread_body(CA::WindowServer::IOMFBServer *this, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  memset(v18, 0, sizeof(v18));
  CString = CA_CFStringGetCString(*(*(this + 12) + 8), v18, 256);
  if (CString)
  {
    v16 = 0u;
    v17 = 0u;
    memset(__str, 0, sizeof(__str));
    snprintf(__str, 0x40uLL, "com.apple.coreanimation.frameinfo.%s", CString);
    v4 = pthread_setname_np(__str);
    if (v4)
    {
      v5 = v4;
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v6 = x_log_get_utilities::log;
      v4 = os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        v19 = 136315394;
        v20 = __str;
        v21 = 1024;
        v22 = v5;
        v7 = &v19;
        v8 = v6;
LABEL_13:
        _os_log_error_impl(&dword_183AA6000, v8, OS_LOG_TYPE_ERROR, "pthread_setname_np(%s) returned %d\n", v7, 0x12u);
      }
    }
  }

  else
  {
    v4 = pthread_setname_np("com.apple.coreanimation.frameinfo");
    if (v4)
    {
      v9 = v4;
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v10 = x_log_get_utilities::log;
      v4 = os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        *__str = 136315394;
        *&__str[4] = "com.apple.coreanimation.frameinfo";
        *&__str[12] = 1024;
        *&__str[14] = v9;
        v7 = __str;
        v8 = v10;
        goto LABEL_13;
      }
    }
  }

  CA::WindowServer::Server::set_server_thread_policy(v4);
  pthread_mutex_lock((this + 856));
  *(this + 136) = CFRunLoopGetCurrent();
  Current = CFAbsoluteTimeGetCurrent();
  v12 = CFRunLoopTimerCreate(0, Current + 3153600000.0, 3153600000.0, 0, 0, CA::WindowServer::null_timer, 0);
  v13 = *MEMORY[0x1E695E8E0];
  CFRunLoopAddTimer(*(this + 136), v12, *MEMORY[0x1E695E8E0]);
  pthread_cond_signal((this + 1032));
  pthread_mutex_unlock((this + 856));
  CFRunLoopRun();
  pthread_mutex_lock((this + 856));
  CFRunLoopRemoveTimer(*(this + 136), v12, v13);
  CFRelease(v12);
  *(this + 136) = 0;
  *(this + 106) = 0;
  pthread_cond_signal((this + 1032));
  return pthread_mutex_unlock((this + 856));
}

uint64_t CA::WindowServer::IOMFBServer::set_cursor_enabled(CA::WindowServer::IOMFBServer *this, int a2)
{
  result = (*(**(this + 12) + 1768))(*(this + 12));
  if (a2)
  {

    return CA::WindowServer::IOMFBServer::async_set_vsync_enabled(this);
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBServer::async_set_vsync_enabled(CA::WindowServer::IOMFBServer *this)
{
  v5[5] = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((this + 920));
  v2 = *(this + 135);
  if (v2 && (*(this + 1445) & 1) == 0)
  {
    v3 = *MEMORY[0x1E695E8E0];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = ___ZN2CA12WindowServer11IOMFBServer23async_set_vsync_enabledEv_block_invoke;
    v5[3] = &__block_descriptor_tmp_100;
    v5[4] = this;
    CFRunLoopPerformBlock(v2, v3, v5);
    CFRunLoopWakeUp(*(this + 135));
  }

  return pthread_mutex_unlock((this + 920));
}

uint64_t ___ZN2CA12WindowServer11IOMFBServer23async_set_vsync_enabledEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  pthread_mutex_lock((v1 + 856));
  v2 = *(v1 + 96);
  if (*(v2 + 82) && CA::WindowServer::Display::is_enabled_for_vsync_render(v2))
  {
    CA::WindowServer::IOMFBServer::set_vsync_enabled(v1);
  }

  return pthread_mutex_unlock((v1 + 856));
}

uint64_t CA::WindowServer::IOMFBServer::set_cursor_hidden(CA::WindowServer::IOMFBServer *this, char a2)
{
  result = (*(**(this + 12) + 1752))(*(this + 12));
  if ((a2 & 1) == 0)
  {

    return CA::WindowServer::IOMFBServer::async_set_vsync_enabled(this);
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBServer::set_cursor_dictionary(CA::WindowServer::IOMFBServer *this, const __CFDictionary *a2)
{
  (*(**(this + 12) + 1744))(*(this + 12), a2);

  return CA::WindowServer::IOMFBServer::async_set_vsync_enabled(this);
}

uint64_t CA::WindowServer::IOMFBServer::set_cursor_position(CA::WindowServer::IOMFBServer *a1)
{
  (*(**(a1 + 12) + 1728))(*(a1 + 12));

  return CA::WindowServer::IOMFBServer::async_set_vsync_enabled(a1);
}

void CA::WindowServer::IOMFBServer::set_latency(void *a1, const char *a2, uint64_t a3, double a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 160))(a1) != a4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = a1[12];
    if (v8[82] == a3 || (v9.i64[0] = a3, v9.i64[1] = v8[82], v10 = vshrn_n_s64(v9, 0x1DuLL), v11.i64[0] = v10.i32[0] & 0x1FFFFFF, v11.i64[1] = v10.i32[1] & 0x1FFFFFF, v12 = vbslq_s8(vdupq_n_s64(0x3FFFFFE0000000uLL), vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v11), vdupq_n_s64(0x3F59000000000000uLL))), vdupq_n_s64(0x40847AE147AE147BuLL))), 0x1DuLL), v9), (vmovn_s64(vceqq_s64(v12, vdupq_laneq_s64(v12, 1))).u32[0] & 1) != 0))
    {
      if ((*(*v8 + 816))(v8, 0, &v16, 64, 0))
      {
        if (!strncmp(&v16, a2, 0x40uLL))
        {
          v13 = a1[12];
          if (*(v13 + 27352) != a4)
          {
            *(v13 + 27352) = a4;
            if (a2)
            {
              v14 = objc_autoreleasePoolPush();
              v15 = [CADisplayPersistedData sharedInstance:v16];
              -[CADisplayPersistedData setLatency:forUUID:andMode:](v15, "setLatency:forUUID:andMode:", [MEMORY[0x1E696AEC0] stringWithUTF8String:a2], a3, a4);
              objc_autoreleasePoolPop(v14);
            }

            CA::WindowServer::Display::post_display_changed(v13);
          }
        }
      }
    }
  }
}

uint64_t CA::WindowServer::IOMFBServer::set_allows_edr(CA::WindowServer::IOMFBServer *this, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  result = CA::WindowServer::IOMFBServer::edr_client(this);
  if (result)
  {
    v6 = *(this + 12);
    if ((*(v6 + 29495) & 1) == 0 && (*(v6 + 672) & 0x1C00) != 0x1000)
    {
      if (*(v6 + 29568))
      {
        v7 = *(this + 31);
        if (a2)
        {
          if (v7)
          {
            v5.n128_u32[0] = *(this + 288);
            (*(v7 + 16))(v5);
          }
        }

        else if (v7)
        {
          v5.n128_u32[0] = 1.0;
          (*(v7 + 16))(v5);
        }
      }

      else
      {
        v8 = CA::WindowServer::IOMFBServer::edr_client(this);
        if (CADeviceHasBacklight::once != -1)
        {
          dispatch_once(&CADeviceHasBacklight::once, &__block_literal_global_132);
        }

        if (CADeviceHasBacklight::has_backlight == 1)
        {
          pthread_mutex_lock(v8 + 1);
          if (v8[2].__opaque[10] != (a2 ^ 1))
          {
            v8[2].__opaque[10] = a2 ^ 1;
            v9 = CA::EDRClient::client(v8);
            if (v9)
            {
              sig = v8[2].__sig;
              v12 = MEMORY[0x1E69E9820];
              v13.i64[0] = 0x40000000;
              v13.i64[1] = ___ZN2CA9EDRClient26set_accessibility_overrideEb_block_invoke;
              v14 = &__block_descriptor_tmp_7_18922;
              v15 = v9;
              v16 = a2 ^ 1;
              dispatch_async(sig, &v12);
            }
          }

          pthread_mutex_unlock(v8 + 1);
        }
      }

      (*(**(this + 12) + 912))(*(this + 12), a2);
      CA::WindowServer::Server::invalidate(this, *(*(this + 12) + 216));
      if (xmmword_1ED4E988C == 1)
      {
        if (x_log_get_CADebug(void)::once != -1)
        {
          dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
        }

        v11 = x_log_get_CADebug(void)::log;
        if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_183AA6000, v11, OS_LOG_TYPE_DEFAULT, "kUpdateReasonDisplayBrightness set_allows_edr", &v12, 2u);
        }
      }

      v12 = 0;
      v13 = vdupq_n_s64(8uLL);
      return (*(*this + 176))(this, &v12, 0.0);
    }
  }

  return result;
}

__CFRunLoop *CA::WindowServer::IOMFBServer::set_calibration_phase(CA::WindowServer::IOMFBServer *this, int a2, int a3, int a4)
{
  v15 = *MEMORY[0x1E69E9840];
  result = (*(*this + 424))(this);
  if (result)
  {
    v9 = result;
    pthread_mutex_lock((this + 856));
    v10 = *MEMORY[0x1E695E8E0];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZN2CA12WindowServer11IOMFBServer21set_calibration_phaseEjjj_block_invoke;
    v11[3] = &__block_descriptor_tmp_11_18023;
    v11[4] = this;
    v12 = a2;
    v13 = a3;
    v14 = a4;
    CFRunLoopPerformBlock(v9, v10, v11);
    CFRunLoopWakeUp(v9);
    return pthread_mutex_unlock((this + 856));
  }

  return result;
}

void CA::WindowServer::IOMFBServer::~IOMFBServer(CA::WindowServer::IOMFBServer *this)
{
  CA::WindowServer::IOMFBServer::~IOMFBServer(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF2011D0;
  pthread_mutex_destroy((this + 856));
  pthread_mutex_destroy((this + 920));
  pthread_cond_destroy((this + 984));
  pthread_cond_destroy((this + 1032));
  pthread_mutex_destroy((this + 1208));
  pthread_cond_destroy((this + 1272));
  v2 = *(this + 141);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 142);
  if (v3)
  {
    CFRelease(v3);
  }

  CA::WindowServer::IOMFBServer::unregister_libedr_callbacks(this);
  v4 = *(this + 143);
  if (v4)
  {
    pthread_mutex_lock(*(this + 143));
    if (*(v4 + 136))
    {
      EDRReleaseClient();
    }

    dispatch_release(*(v4 + 128));
    pthread_mutex_unlock(v4);
    MEMORY[0x1865EA9A0](v4, 0x1020C40FE7D54AALL);
    *(this + 143) = 0;
  }

  CA::WindowServer::Server::~Server(this);
}

uint64_t CA::WindowServer::IOMFBServer::set_creates_cached_surfaces(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 1024;
  }

  else
  {
    v2 = 0;
  }

  *(*(this + 96) + 904) = *(*(this + 96) + 904) & 0xFFFFFBFF | v2;
  return this;
}

uint64_t CA::WindowServer::IOMFBServer::displayed_surface(CA::WindowServer::IOMFBServer *this)
{
  result = (*(**(this + 12) + 464))(*(this + 12), 1);
  if (result)
  {
    v2 = *(*result + 168);

    return v2();
  }

  return result;
}

os_unfair_lock_s *CA::WindowServer::IOMFBServer::previous_vbl(os_unfair_lock_s **this)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = mach_absolute_time();
  v3 = CA::WindowServer::IOMFBDisplay::timing_granularity(this[12], 0);
  v4 = (*(*&this[12]->_os_unfair_lock_opaque + 784))() * v3;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  CA::WindowServer::IOMFBDisplay::timing_reference(&v10, this[12], 0);
  result = this[169];
  if ((result + v4 <= v2 || !this[12][6852]._os_unfair_lock_opaque) && v11)
  {
    v6 = v11 - v2;
    if (v2 > v11)
    {
      v6 = v2 - v11;
    }

    v7 = v6 % v4;
    if (v7)
    {
      v8 = v2 - v7;
      v9 = v2 - v4 + v7;
      if (v2 <= v11)
      {
        return v9;
      }

      else
      {
        return v8;
      }
    }

    else
    {
      return v2;
    }
  }

  return result;
}

double CA::WindowServer::IOMFBServer::next_wakeup_time(os_unfair_lock_s **this)
{
  v2 = CA::WindowServer::IOMFBDisplay::timing_granularity(this[12], 0);
  v3 = (*(*&this[12]->_os_unfair_lock_opaque + 784))(this[12]);
  v4 = (*&(*this)[14]._os_unfair_lock_opaque)(this);
  if (!v4)
  {
    return *(this + 179);
  }

  v5 = v4 + (v3 * v2);

  return CATimeWithHostTime(v5);
}

uint64_t CA::WindowServer::IOMFBServer::activate_replay(CA::WindowServer::IOMFBServer *this)
{
  pthread_mutex_lock((this + 856));
  CA::WindowServer::IOMFBServer::set_vsync_disabled(this);
  pthread_mutex_unlock((this + 856));
  v2 = *(**(this + 12) + 432);

  return v2();
}

BOOL CA::WindowServer::IOMFBServer::finish_skylight_update(CA::WindowServer::IOMFBServer *this, CA::Render::Update *a2)
{
  v3 = (*(**(this + 12) + 408))(*(this + 12), a2) != 0;
  pthread_mutex_unlock((this + 856));
  pthread_mutex_unlock((this + 24));
  return v3;
}

uint64_t CA::WindowServer::IOMFBServer::begin_skylight_update(CA::WindowServer::IOMFBServer *this, CA::Render::Update *a2)
{
  pthread_mutex_lock((this + 24));
  pthread_mutex_lock((this + 856));
  v3 = *(this + 12);
  if (*(v3 + 82) && CA::WindowServer::Display::is_enabled_for_vsync_render(v3))
  {
    CA::WindowServer::IOMFBServer::set_vsync_enabled(this);
  }

  v4 = *(**(this + 12) + 400);

  return v4();
}

uint64_t CA::WindowServer::IOMFBServer::shutdown(CA::WindowServer::IOMFBServer *this)
{
  v10[1] = *MEMORY[0x1E69E9840];
  CA::WindowServer::Server::shutdown(this);
  v2 = *(this + 12);
  if ((*(v2 + 29495) & 1) == 0 && (*(v2 + 672) & 0x1C00) != 0x1000)
  {
    CA::Render::remove_observer(0x19u, 0, CA::WindowServer::IOMFBServer::flush_irdc, this);
  }

  CA::Render::remove_observer(0x29u, 0, CA::WindowServer::IOMFBServer::post_power_log, this);
  CA::Render::remove_observer(0x2Au, 0, CA::WindowServer::IOMFBServer::post_max_rate_power_log, this);
  CA::Render::remove_observer(0x2Du, 0, CA::WindowServer::IOMFBServer::post_render_statistics_power_log, this);
  CA::Render::remove_observer(0x34u, 0, CA::WindowServer::IOMFBServer::post_brightness_hotplug, this);
  CA::Render::remove_observer(0x35u, 0, CA::WindowServer::IOMFBServer::post_power_notification, this);
  if ((*(*(this + 12) + 640) & 0x40) != 0)
  {
    CA::Render::remove_observer(0x3Cu, 0, CA::WindowServer::IOMFBServer::post_flipbook_state_notification, this);
  }

  CA::Render::remove_observer(0x3Du, 0, CA::WindowServer::IOMFBServer::check_display_blanked, this);
  if ((*(*(this + 12) + 640) & 0x10) != 0)
  {
    CA::Render::remove_observer(0x36u, 0, CA::WindowServer::IOMFBServer::register_frame_interval_range, this);
    CA::Render::remove_observer(0x37u, 0, CA::WindowServer::IOMFBServer::register_frame_interval_reasons, this);
    CA::Render::remove_observer(0x38u, 0, CA::WindowServer::IOMFBServer::request_frame_phase_shift, this);
    CA::Render::remove_observer(0x2Bu, 0, CA::WindowServer::IOMFBServer::post_frame_rate_power_log, this);
    CA::Render::remove_observer(0x47u, 0, CA::WindowServer::IOMFBServer::get_display_debug_properties, this);
  }

  pthread_mutex_lock((this + 856));
  CA::WindowServer::IOMFBServer::remove_vsync_source(this);
  v3 = *(this + 138);
  v4 = MEMORY[0x1E695E8E0];
  if (v3)
  {
    if (*(*(this + 12) + 25696))
    {
      IOMobileFramebufferDisableHotPlugDetectNotifications();
      v3 = *(this + 138);
    }

    CFRunLoopRemoveSource(*(this + 135), v3, *v4);
    *(this + 138) = 0;
  }

  if (*(this + 145))
  {
    v5 = *(this + 12);
    *(v5 + 29528) = 0;
    CA::WindowServer::IOMFBDisplay::collect_frame_info(v10, v5, 0);
    std::unique_ptr<CA::WindowServer::IOMFBDisplay::FrameInfo>::reset[abi:nn200100](v10, 0);
    if (*(*(this + 12) + 25696))
    {
      IOMobileFramebufferFrameInfo();
    }

    CFRunLoopRemoveSource(*(this + 136), *(this + 145), *v4);
    *(this + 145) = 0;
  }

  v6 = *(this + 147);
  if (v6)
  {
    v7 = *(this + 12);
    *(v7 + 29529) = 0;
    v8 = *(v7 + 25696);
    if (v8)
    {
      iomfb_relbuf_info(v8, 0, 0, 0);
      v6 = *(this + 147);
    }

    CFRunLoopRemoveSource(*(this + 136), v6, *v4);
    *(this + 147) = 0;
  }

  CA::WindowServer::IOMFBServer::remove_power_log_timer(this);
  CA::WindowServer::IOMFBServer::unregister_libedr_callbacks(this);
  if (*(*(this + 12) + 29568) == 1)
  {
    IOMobileFramebufferSetBrightnessControlCallback();
  }

  if (*(this + 141))
  {
    IOHIDEventSystemClientUnregisterDeviceMatchingBlock();
    IOHIDEventSystemClientUnscheduleWithRunLoop();
  }

  CA::WindowServer::IOMFBDisplay::post_power_log(*(this + 12));
  if (*(this + 106))
  {
    CFRunLoopStop(*(this + 136));
    while (*(this + 136))
    {
      pthread_cond_wait((this + 1032), (this + 856));
    }
  }

  if (*(this + 105))
  {
    CFRunLoopStop(*(this + 135));
    while (*(this + 135))
    {
      pthread_cond_wait((this + 984), (this + 856));
    }
  }

  return pthread_mutex_unlock((this + 856));
}

void CA::WindowServer::IOMFBServer::get_display_debug_properties(CA::WindowServer::IOMFBServer *this, CA::Render::Object *a2, CFMutableDictionaryRef *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a3 == *(*(a2 + 12) + 24) && *(a2 + 1384))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    for (i = 0; i != 5; ++i)
    {
      if ((*(a2 + 1384) >> i))
      {
        *__str = 0u;
        v14 = 0u;
        *cStr = 0u;
        v12 = 0u;
        snprintf(__str, 0x20uLL, "%s", CA::WindowServer::IOMFBServer::throttle_reason_string[i]);
        v8 = mach_absolute_time();
        v9 = CATimeWithHostTime(v8);
        snprintf(cStr, 0x20uLL, "YES, since %.0f seconds ago", v9 - *(a2 + i + 174));
        v10 = CFStringCreateWithCString(0, __str, 0x8000100u);
        CA_CFDictionarySetCString(Mutable, v10, cStr);
        CFRelease(v10);
      }
    }

    CFDictionarySetValue(a3[1], @"throttleReasons", Mutable);
    CFRelease(Mutable);
  }
}

void CA::WindowServer::IOMFBServer::request_frame_phase_shift(CA::WindowServer::IOMFBServer *this, CA::Render::Object *a2, _DWORD *a3, void *a4)
{
  v4 = *(a2 + 12);
  if ((*(v4 + 640) & 0x100) != 0)
  {
    v6 = a3[1];
    if (!v6 || *(v4 + 24) == v6)
    {
      v7 = a3[2];
      v8 = *(a3 + 2);
      os_unfair_lock_lock((v4 + 28244));
      os_unfair_lock_lock((v4 + 26304));
      for (i = *(v4 + 28248); i != *(v4 + 28256); i += 24)
      {
        if ((*(i + 20) & 1) == 0 && *i != v7)
        {
          goto LABEL_17;
        }
      }

      v10 = atomic_load((*(v4 + 26320) + 16));
      v11 = llround(v8 / v10);
      if (v11 >= 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = -v11;
      }

      if (v11)
      {
        v13 = v12 >= 2;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
LABEL_17:
        kdebug_trace();
        v14 = 0;
        goto LABEL_29;
      }

      v15 = atomic_load((*(v4 + 26320) + 52));
      if (!v15)
      {
        v15 = (*(*v4 + 800))(v4);
      }

      v16 = v15;
      if (v11 < 0)
      {
        v16 = 0;
      }

      v17 = v16 - v11;
      v18 = atomic_load((*(v4 + 26320) + 64));
      v19 = v17 + v18;
      v20 = atomic_load((*(v4 + 26320) + 32));
      v21 = atomic_load((*(v4 + 26320) + 72));
      if (atomic_load((*(v4 + 26320) + 32)))
      {
        v23 = atomic_load((*(v4 + 26320) + 56));
        if (!v23)
        {
          v23 = (*(*v4 + 800))(v4);
        }

        v24 = v23;
        if (v11 < 0)
        {
          v24 = 0;
        }

        v21 = v21 - v11 + v24;
        v20 += v11 * v10;
      }

      *(v4 + 26352) += v17;
      v25 = *(v4 + 26320);
      v14 = 1;
      add = atomic_fetch_add((v25 + 28), 1u);
      atomic_store(v20, (v25 + 32));
      atomic_store(v19, (v25 + 64));
      atomic_store(v21, (v25 + 72));
      atomic_store(add + 2, (v25 + 28));
      __dmb(0xBu);
      kdebug_trace();
      atomic_load((*(v4 + 26320) + 40));
      atomic_load((*(v4 + 26320) + 41));
      atomic_load((*(v4 + 26320) + 32));
      atomic_load((*(v4 + 26320) + 52));
      atomic_load((*(v4 + 26320) + 56));
      kdebug_trace();
      atomic_load((*(v4 + 26320) + 64));
      atomic_load((*(v4 + 26320) + 80));
      atomic_load((*(v4 + 26320) + 72));
      kdebug_trace();
LABEL_29:
      os_unfair_lock_unlock((v4 + 26304));
      os_unfair_lock_unlock((v4 + 28244));
      *a3 = v14;
    }
  }
}

void CA::WindowServer::IOMFBServer::post_flipbook_state_notification(CA::WindowServer::IOMFBServer *this, CA::Render::Object *a2, unsigned __int8 *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3[4];
  v6 = a3[6];
  if (*(a2 + 34))
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v7 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_INFO))
    {
      v8 = *(*(a2 + 12) + 24);
      v10[0] = 67109632;
      v10[1] = v8;
      v11 = 1024;
      v12 = v6;
      v13 = 1024;
      v14 = v5;
      _os_log_impl(&dword_183AA6000, v7, OS_LOG_TYPE_INFO, "Display %u posting flipbook state %d notification (pre? %u) ", v10, 0x14u);
    }

    (*(*(a2 + 34) + 16))();
  }

  if ((v5 & 1) == 0)
  {
    v9 = *(a2 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, v6);
    }
  }
}

void CA::WindowServer::IOMFBServer::post_brightness_hotplug(CA::WindowServer::IOMFBServer *this, CA::Render::Object *a2, void *a3, void *a4)
{
  (*(*a2 + 336))(a2);

  CA::WindowServer::Server::post_brightness_notification(a2);
}

uint64_t CA::WindowServer::IOMFBServer::post_power_log(CA::WindowServer::IOMFBServer *this, CA::Render::Object *a2, void *a3, void *a4)
{
  pthread_mutex_lock((a2 + 856));
  CA::WindowServer::IOMFBDisplay::post_power_log(*(a2 + 12));

  return pthread_mutex_unlock((a2 + 856));
}

os_log_t ___Z22x_log_get_iomfb_serverv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "IOMFBServer");
  x_log_get_iomfb_server(void)::log = result;
  return result;
}

os_log_t ___Z29x_log_get_iomfb_server_stallsv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "IOMFBServer.Stalls");
  x_log_get_iomfb_server_stalls(void)::log = result;
  return result;
}

void CA::WindowServer::IOMFBServer::hotplug_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v5 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a3 + 96) + 24);
    LODWORD(v28[0]) = 67109376;
    DWORD1(v28[0]) = v6;
    WORD4(v28[0]) = 1024;
    *(v28 + 10) = a2;
    _os_log_impl(&dword_183AA6000, v5, OS_LOG_TYPE_DEFAULT, "Display %u hot plug %d\n", v28, 0xEu);
  }

  pthread_mutex_lock((a3 + 24));
  pthread_mutex_lock((a3 + 856));
  v7 = *(a3 + 96);
  v8 = a2 != 0;
  if (v7[29530] != v8)
  {
    v7[29530] = v8;
    if ((*(*v7 + 2408))(v7))
    {
      *(v7 + 3366) = 0;
      v7[27056] = 0;
      (*(*v7 + 2416))(v7);
    }
  }

  CA::WindowServer::Server::update_display_modes_locked(a3);
  CA::WindowServer::IOMFBDisplay::enable_hotplug_info(*(a3 + 96));
  if (*(*(a3 + 96) + 27296))
  {
    CA::WindowServer::IOMFBServer::update_orientation_from_hid(a3);
  }

  if (a2)
  {
    v9 = *(a3 + 96);
    if ((*(v9 + 672) & 0x1C00) == 0)
    {
LABEL_32:
      *(v9 + 904) |= 0x2000u;
      *&v28[0] = 0;
      *(v28 + 8) = vdupq_n_s64(0x20000000uLL);
      (*(*a3 + 176))(a3, v28, 0.0);
      CA::WindowServer::IOMFBDisplay::post_hotplug_log(*(a3 + 96));
      *(*(a3 + 96) + 28232) = 0;
      goto LABEL_33;
    }

    *(v9 + 29555) = 0;
    memset(v28, 0, sizeof(v28));
    if ((*(*v9 + 816))(v9, 1, v28, 64, 0) && (v10 = CFStringCreateWithCString(0, v28, 0x8000100u)) != 0)
    {
      v11 = v10;
      v12 = CFPreferencesCopyAppValue(@"CABrightnessPreferences", *MEMORY[0x1E695E8A8]);
      if (v12)
      {
        v13 = v12;
        v14 = CFGetTypeID(v12);
        if (v14 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(v13, v11);
          if (Value)
          {
            v16 = Value;
            if (CA_CFBoolValue(Value))
            {
              (*(*v9 + 960))(v9, 0.01);
              v17 = mach_absolute_time();
              *(v9 + 26784) = CATimeWithHostTime(v17) + 2.0;
            }

            CFRelease(v13);
            v18 = !CA_CFBoolValue(v16);
            CFRelease(v11);
LABEL_31:
            *(v9 + 29555) = v18;
            *(v9 + 27456) = 0;
            v9 = *(a3 + 96);
            goto LABEL_32;
          }
        }

        CFRelease(v13);
      }

      CFRelease(v11);
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    (*(*v9 + 984))(v9);
    (*(*v9 + 960))(v9);
    os_unfair_lock_lock((v9 + 27472));
    v21 = *(v9 + 27480);
    os_unfair_lock_unlock((v9 + 27472));
    if (!v21)
    {
      *(v9 + 904) &= ~0x1000u;
    }

    goto LABEL_31;
  }

  CA::WindowServer::IOMFBServer::unregister_libedr_callbacks(a3);
  (*(**(a3 + 96) + 48))(*(a3 + 96));
  if (*(a3 + 837) == 1)
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v19 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(*(a3 + 96) + 24);
      LODWORD(v28[0]) = 67109120;
      DWORD1(v28[0]) = v20;
      _os_log_impl(&dword_183AA6000, v19, OS_LOG_TYPE_DEFAULT, "Display %u automatic wireless display state control reset", v28, 8u);
    }
  }

  *(a3 + 837) = 0;
  CA::WindowServer::Server::set_needs_global_light(a3, 0);
LABEL_33:
  v22 = *(a3 + 224);
  if (v22)
  {
    (*(v22 + 16))(v22, a2 != 0);
  }

  if (a2)
  {
    v23 = 8;
  }

  else
  {
    v23 = 7;
  }

  CA::WindowServer::Server::notify_content_streams(a3, v23);
  pthread_mutex_unlock((a3 + 856));
  pthread_mutex_unlock((a3 + 24));
  v24 = (*(*(a3 + 96) + 672) >> 10) & 7;
  if (v24 == 3 || v24 == 2 && *(a3 + 837) != 1)
  {
    goto LABEL_44;
  }

  if (CADeviceNeedsDisplayStateControlDependencyWorkaround::once != -1)
  {
    dispatch_once(&CADeviceNeedsDisplayStateControlDependencyWorkaround::once, &__block_literal_global_484);
  }

  if (CADeviceNeedsDisplayStateControlDependencyWorkaround::b == 1)
  {
LABEL_44:
    if (x_log_get_display_state(void)::once != -1)
    {
      dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
    }

    v25 = x_log_get_display_state(void)::log;
    if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v26 = "off";
      v27 = *(*(a3 + 96) + 24);
      if (a2)
      {
        v26 = "on";
      }

      LODWORD(v28[0]) = 67109378;
      DWORD1(v28[0]) = v27;
      WORD4(v28[0]) = 2080;
      *(v28 + 10) = v26;
      _os_log_impl(&dword_183AA6000, v25, OS_LOG_TYPE_DEFAULT, "Display %u automatically set to display state %s by hotplug", v28, 0x12u);
    }

    CA::WindowServer::Server::set_display_state(a3, a2 != 0, 0, 0);
  }
}

void CA::WindowServer::IOMFBServer::update_orientation_from_hid(__IOHIDServiceClient **this)
{
  if (this[142])
  {
    v2 = IOHIDServiceClientCopyEvent();
    if (v2)
    {
      v3 = v2;
      CA::WindowServer::IOMFBServer::update_orientation_with_hid_event(this, this[142]);

      CFRelease(v3);
    }
  }
}

void CA::WindowServer::IOMFBServer::update_orientation_with_hid_event(void *a1, __IOHIDServiceClient *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1[12] + 27296);
  if (v2)
  {
    if (IOHIDEventGetIntegerValue() == 2)
    {
      v5 = IOHIDServiceClientCopyProperty(a2, @"kUSBContainerID");
      if (v5)
      {
        v6 = v5;
        v7 = CFUUIDCreateFromString(0, v5);
        if (v7)
        {
          v8 = v7;
          if (CFEqual(v7, v2))
          {
            IOHIDEventGetFloatValue();
            if (v9 <= 60.0 || v9 >= 120.0)
            {
              if (v9 <= 150.0 || v9 >= 210.0)
              {
                v10 = v9 < 300.0 && v9 > 240.0;
              }

              else
              {
                v10 = 2;
              }
            }

            else
            {
              v10 = 3;
            }

            if (v10 != *(a1[12] + 672))
            {
              if (x_log_get_windowserver(void)::once != -1)
              {
                dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
              }

              v11 = x_log_get_windowserver(void)::log;
              if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_INFO))
              {
                v12 = *(a1[12] + 24);
                LODWORD(v16) = 67109376;
                HIDWORD(v16) = v12;
                v17.i16[0] = 1024;
                *(v17.i32 + 2) = v10;
                _os_log_impl(&dword_183AA6000, v11, OS_LOG_TYPE_INFO, "display id %u changed orientation %d", &v16, 0xEu);
              }

              v13 = a1[12];
              v14 = *(v13 + 672);
              if (v10 != v14)
              {
                *(v13 + 672) = v14 & 0xFF00 | v10;
                CA::WindowServer::Display::post_display_changed(v13);
                v13 = a1[12];
              }

              *(v13 + 904) |= 0x2000u;
              v16 = 0;
              v17 = vdupq_n_s64(0x800000uLL);
              (*(*a1 + 176))(a1, &v16, 0.0);
              v15 = *(a1[12] + 48);
              if (v15)
              {
                CA::WindowServer::Server::schedule_forced_render_update(v15, 0x800000);
              }
            }
          }

          CFRelease(v8);
        }

        CFRelease(v6);
      }
    }
  }
}

void CA::WindowServer::IOMFBServer::enable_frame_info_tag_list(CA::WindowServer::IOMFBServer *this, const char **a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v9 = 0;
  v17 = *MEMORY[0x1E69E9840];
  do
  {
    if (a5)
    {
      v10 = a2[v9];
      v11 = a5;
      v12 = a4;
      while (strcmp(v10, *v12))
      {
        ++v12;
        if (!--v11)
        {
          goto LABEL_12;
        }
      }

      if (IOMobileFramebufferChangeFrameInfo())
      {
        if (x_log_get_windowserver(void)::once != -1)
        {
          dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
        }

        v13 = x_log_get_windowserver(void)::log;
        if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
        {
          v14 = a2[v9];
          *buf = 136315138;
          v16 = v14;
          _os_log_error_impl(&dword_183AA6000, v13, OS_LOG_TYPE_ERROR, "failed to enable frame info tag '%s'", buf, 0xCu);
        }
      }
    }

LABEL_12:
    ++v9;
  }

  while (v9 != a3);
}

void ___ZN2CA12WindowServer11IOMFBServerC2EPNS0_12IOMFBDisplayEPK10__CFString_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  *(v2 + 1128) = IOHIDEventSystemClientCreate();
  IOHIDEventSystemClientSetMatchingMultiple();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v10 = ___ZN2CA12WindowServer11IOMFBServerC2EPNS0_12IOMFBDisplayEPK10__CFString_block_invoke_3;
  v11 = &__block_descriptor_tmp_90_18163;
  v12 = v2;
  IOHIDEventSystemClientRegisterDeviceMatchingBlock();
  v3 = IOHIDEventSystemClientCopyServices(*(v2 + 1128));
  if (v3)
  {
    v4 = v3;
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v6 = 0;
      v7 = Count & 0x7FFFFFFF;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v6);
        if (ValueAtIndex)
        {
          v10(v9, 0, v2, ValueAtIndex);
        }

        ++v6;
      }

      while (v7 != v6);
    }

    CFRelease(v4);
  }

  IOHIDEventSystemClientRegisterEventBlock();
  IOHIDEventSystemClientScheduleWithRunLoop();
  CFRelease(*(a1 + 40));
}

uint64_t ___ZN2CA12WindowServer11IOMFBServerC2EPNS0_12IOMFBDisplayEPK10__CFString_block_invoke_3(uint64_t a1, int a2, uint64_t a3, IOHIDServiceClientRef service)
{
  v6 = *(a1 + 32);
  result = IOHIDServiceClientConformsTo(service, 0x20u, 0x8Au);
  if (result)
  {
    v8 = *(v6 + 1136);
    if (v8)
    {
      CFRelease(v8);
    }

    *(v6 + 1136) = CFRetain(service);
    pthread_mutex_lock((a3 + 24));
    CA::WindowServer::IOMFBServer::update_orientation_from_hid(a3);

    return pthread_mutex_unlock((a3 + 24));
  }

  return result;
}

uint64_t ___ZN2CA12WindowServer11IOMFBServerC2EPNS0_12IOMFBDisplayEPK10__CFString_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, __IOHIDServiceClient *a4)
{
  result = IOHIDEventGetType();
  if (result == 10)
  {
    pthread_mutex_lock((a3 + 24));
    CA::WindowServer::IOMFBServer::update_orientation_with_hid_event(a3, a4);

    return pthread_mutex_unlock((a3 + 24));
  }

  return result;
}

float CA::Render::Surface::red_component_at(IOSurfaceRef *this, int a2, int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = 1.0;
  if (this[16])
  {
    v7 = (*(*this + 13))(this);
    if (v7 == 35 || ((v7 < 0x16) & (0x206803u >> v7)) != 0)
    {
      v9 = v7;
      if (!IOSurfaceLock(this[16], 1u, 0))
      {
        *v24 = 1065353216;
        BaseAddress = IOSurfaceGetBaseAddress(this[16]);
        if (BaseAddress)
        {
          v11 = BaseAddress;
          v12 = *(this + 4);
          v13 = *(this + 5);
          v14 = v12 - 1;
          if (v12 <= 0)
          {
            v14 = 0;
          }

          if (v12 > a2)
          {
            v15 = a2 & ~(a2 >> 31);
          }

          else
          {
            v15 = v14;
          }

          v16 = v13 - 1;
          if (v13 <= 0)
          {
            v16 = 0;
          }

          if (v13 > a3)
          {
            v17 = a3 & ~(a3 >> 31);
          }

          else
          {
            v17 = v16;
          }

          BytesPerRow = IOSurfaceGetBytesPerRow(this[16]);
          v21 = CA::Render::format_red_component_at_value(v9, &v11[BytesPerRow * v17 + (dword_183E22690[v9] * v15)], v24, v19, v20);
          if (v9 != 35 || v21)
          {
            v3 = *v24;
          }

          else
          {
            BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(this[16], 0);
            v3 = (((*&BaseAddressOfPlane[IOSurfaceGetBytesPerRowOfPlane(this[16], 0) * v17 + (5 * v15)] >> 20) & 0x3FF) - 384) * 0.0019608;
          }
        }

        IOSurfaceUnlock(this[16], 1u, 0);
      }
    }
  }

  return v3;
}

float CA::Render::Surface::opacity_at(IOSurfaceRef *this, int a2, int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = 1.0;
  if ((*(this + 13) & 0x10) == 0 && ((*(*this + 15))(this) & 1) == 0 && this[16])
  {
    v7 = (*(*this + 13))(this);
    v8 = v7 != 35 && ((v7 < 0x23) & (0x419A4EB03uLL >> v7)) == 0;
    if (!v8 && !IOSurfaceLock(this[16], 1u, 0))
    {
      *v24 = 1065353216;
      BaseAddress = IOSurfaceGetBaseAddress(this[16]);
      if (BaseAddress)
      {
        v10 = BaseAddress;
        v11 = *(this + 4);
        v12 = *(this + 5);
        v13 = v11 - 1;
        if (v11 <= 0)
        {
          v13 = 0;
        }

        if (v11 > a2)
        {
          v14 = a2 & ~(a2 >> 31);
        }

        else
        {
          v14 = v13;
        }

        v15 = v12 - 1;
        if (v12 <= 0)
        {
          v15 = 0;
        }

        if (v12 > a3)
        {
          v16 = a3 & ~(a3 >> 31);
        }

        else
        {
          v16 = v15;
        }

        BytesPerRow = IOSurfaceGetBytesPerRow(this[16]);
        v20 = CA::Render::format_opacity_at_value(v7, &v10[BytesPerRow * v16 + dword_183E22690[v7] * v14], v24, v18, v19);
        if (v7 != 35 || v20)
        {
          v3 = *v24;
        }

        else
        {
          BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(this[16], 1uLL);
          LOBYTE(v22) = BaseAddressOfPlane[IOSurfaceGetBytesPerRowOfPlane(this[16], 1uLL) * v16 + v14];
          v3 = v22 * 0.0039216;
        }
      }

      IOSurfaceUnlock(this[16], 1u, 0);
    }
  }

  return v3;
}

uint64_t CA::Render::Surface::set_data_volatile(CA::Render::Surface *this, __IOSurface *a2)
{
  v2 = *(this + 16);
  if (v2)
  {
    return CA::Render::set_iosurface_volatile(v2, a2);
  }

  else
  {
    return a2 ^ 1;
  }
}

uint64_t CA::Render::set_iosurface_volatile(CA::Render *this, __IOSurface *a2)
{
  v2 = a2;
  v5 = *MEMORY[0x1E69E9840];
  oldState = 0;
  if (IOSurfaceSetPurgeable(this, a2, &oldState))
  {
    return v2 ^ 1;
  }

  if (oldState == 2)
  {
    return v2;
  }

  return 1;
}

__IOSurface *CA::Render::Surface::data_size(CA::Render::Surface *this)
{
  result = *(this + 16);
  if (result)
  {
    return IOSurfaceGetAllocSize(result);
  }

  return result;
}

CGColorSpace *CA::Render::Surface::set_default_colorspace(CA::Render::Surface *this)
{
  v2 = (*(*this + 104))(this);
  v3 = CA::Render::format_default_colorspace(v2);

  return CA::Render::Texture::set_colorspace(this, v3);
}

char *CA::Render::Surface::show(uint64_t *a1, X::Stream *this, uint64_t a3, char a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v19 = (*(*a1 + 184))(a1);
    (*(*a1 + 104))(a1);
    if (v19 >= 0x400)
    {
      v20 = 1.0;
      do
      {
        v20 = v20 * 0.0009765625;
      }

      while (v20 * v19 >= 1024.0);
    }

    return X::Stream::printf(this, "<surface [%d %d] [%s] [%.2lf %s]>");
  }

  else if (a1[17])
  {
    return X::Stream::printf(this, "(surface machport %u)");
  }

  else
  {
    X::Stream::printf(this, "(surface 0x%x [%d %d] ", *(a1 + 30), *(a1 + 4), *(a1 + 5));
    v7 = *a1;
    if (a1[16])
    {
      if ((*(v7 + 168))(a1) != 1.0)
      {
        v8 = (*(*a1 + 168))(a1);
        X::Stream::printf(this, "edr %g ", v8);
      }

      if ((*(*a1 + 256))(a1))
      {
        v9 = (*(*a1 + 256))(a1);
        X::Stream::printf(this, "protected 0x%llx ", v9);
      }

      (*(*a1 + 104))(a1);
      v10 = *(a1 + 36);
      if (v10 < 0)
      {
        __maskrune(HIBYTE(*(a1 + 36)), 0x40000uLL);
        v10 = *(a1 + 36);
      }

      if (BYTE2(v10) > 0x7Fu)
      {
        __maskrune(BYTE2(v10), 0x40000uLL);
        v10 = *(a1 + 36);
      }

      if (BYTE1(v10) > 0x7Fu)
      {
        __maskrune(BYTE1(v10), 0x40000uLL);
        v10 = *(a1 + 36);
      }

      if (v10 > 0x7Fu)
      {
        __maskrune(v10, 0x40000uLL);
      }

      X::Stream::printf(this, "%s %c%c%c%c");
    }

    else
    {
      (*(v7 + 104))(a1);
      X::Stream::printf(this, "%s");
    }

    v11 = (*(*a1 + 184))(a1);
    v12 = v11;
    if (v11 >= 0x400)
    {
      v14 = 1.0;
      do
      {
        v14 = v14 * 0.0009765625;
        v13 = v14 * v12;
      }

      while (v14 * v12 >= 1024.0);
    }

    else
    {
      v13 = v11;
    }

    v15 = v11 > 0x3FF;
    if ((v11 & 0xFFFFFFFFFFF00000) != 0)
    {
      ++v15;
    }

    if ((v11 & 0xFFFFFFFFC0000000) != 0)
    {
      ++v15;
    }

    if (v11 >> 40)
    {
      ++v15;
    }

    if (v11 >> 50)
    {
      ++v15;
    }

    if (v11 >> 60)
    {
      ++v15;
    }

    X::Stream::printf(this, " (%.2lf %s)", v13, off_1E6DF9988[v15]);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    *buffer = 0u;
    v22 = 0u;
    if (a1[7])
    {
      if ((*(a1 + 14) & 8) != 0)
      {
        X::Stream::printf(this, " colormatching-disabled");
      }

      v16 = CGColorSpaceCopyICCProfileDescription();
      if (v16)
      {
        v17 = v16;
        CFStringGetCString(v16, buffer, 255, 0x8000100u);
        if (buffer[0])
        {
          X::Stream::printf(this, " (colorspace %s)", buffer);
        }

        CFRelease(v17);
      }
    }

    if ((*(a1 + 14) & 0x40) != 0)
    {
      X::Stream::printf(this, " placeholder");
    }

    v18 = *(a1 + 16);
    if (v18 > 1.0)
    {
      X::Stream::printf(this, " headroom %.3g", v18);
    }

    return X::Stream::printf(this, ")");
  }
}

os_log_t ___Z19x_log_get_filmgrainv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "FilmGrain");
  x_log_get_filmgrain(void)::log = result;
  return result;
}

CA::Render::Texture *CA::Render::Surface::Surface(CA::Render::Texture *a1, const void *a2)
{
  v4 = CA::Render::Texture::Texture(a1, 0, 0);
  v5 = *(v4 + 3) & 0xFFFFFF01;
  ++dword_1ED4EAB1C;
  *v4 = &unk_1EF201458;
  *(v4 + 14) = 0;
  *(v4 + 15) = 0xFFFFFFFF00000000;
  *(v4 + 16) = 0;
  *(v4 + 17) = a2;
  *(v4 + 36) = 0;
  *(v4 + 37) = 1065353216;
  *(v4 + 152) = 0u;
  *(v4 + 168) = 0u;
  *(v4 + 184) = 0u;
  *(v4 + 50) = 0;
  *(v4 + 204) = xmmword_183E20F10;
  *(v4 + 220) = 1065353216;
  *(v4 + 232) = xmmword_183E20F20;
  *(v4 + 31) = 0;
  *(v4 + 255) = 0;
  *(v4 + 260) = 0x100000001;
  *(v4 + 300) = 0;
  *(v4 + 268) = 0u;
  *(v4 + 284) = 0u;
  *(v4 + 76) = 1065353216;
  *(v4 + 316) = 0;
  *(v4 + 308) = 0;
  *(v4 + 81) = -1;
  *(v4 + 42) = 0;
  *(v4 + 43) = 0;
  *(v4 + 360) = 0;
  *(v4 + 44) = 0;
  *(v4 + 361) &= 0x80u;
  *(v4 + 91) = -1;
  *(v4 + 184) &= 0xFC20u;
  *(v4 + 3) = v5 | 0x1040039;
  *(v4 + 89) = 1;
  CFRetain(a2);
  return a1;
}

CA::Render::Surface *CA::Render::Surface::Surface(CA::Render::Surface *this, CA::Render::Surface *a2, int a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = CA::Render::Texture::Texture(this, *(a2 + 4), *(a2 + 5));
  *(v6 + 12) = 57;
  ++dword_1ED4EAB1C;
  *v6 = &unk_1EF201458;
  v7 = a2;
  if (!atomic_fetch_add(a2 + 2, 1u))
  {
    v7 = 0;
    atomic_fetch_add(a2 + 2, 0xFFFFFFFF);
  }

  *(this + 14) = v7;
  *(this + 15) = *(a2 + 15);
  v8 = *(a2 + 16);
  if (v8)
  {
    v8 = CFRetain(v8);
  }

  *(this + 16) = v8;
  *(this + 17) = 0;
  *(this + 36) = IOSurfaceGetPixelFormat(v8);
  *(this + 37) = *(a2 + 37);
  *(this + 19) = *(a2 + 19);
  *(this + 188) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 204) = xmmword_183E20F10;
  *(this + 220) = 1065353216;
  *(this + 232) = xmmword_183E20F20;
  *(this + 255) = 0;
  *(this + 31) = 0;
  *(this + 260) = 0x100000001;
  *(this + 300) = 0;
  *(this + 268) = 0u;
  *(this + 284) = 0u;
  *(this + 76) = 1065353216;
  *(this + 308) = 0;
  *(this + 316) = 0;
  *(this + 81) = -1;
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 42) = 0;
  *(this + 360) = *(a2 + 360);
  v9 = *(this + 361) & 0xF0 | *(a2 + 361) & 0xF;
  *(this + 361) = v9;
  *(this + 361) = v9 & 0x8F | *(a2 + 361) & 0x70;
  *(this + 91) = -1;
  v10 = *(this + 184) & 0xFFFC | *(a2 + 184) & 3;
  *(this + 184) = *(this + 184) & 0xFFFC | *(a2 + 184) & 3;
  v11 = v10 & 0xFFFFFFFB | (4 * ((*(a2 + 184) >> 2) & 1));
  *(this + 184) = v11;
  v12 = v11 & 0xFFFFFFF7 | (8 * ((*(a2 + 184) >> 3) & 1));
  *(this + 184) = v12;
  v13 = v12 & 0xFFFFFFEF | (16 * ((*(a2 + 184) >> 4) & 1));
  *(this + 184) = v13;
  v14 = v13 & 0xFFFFFFBF | (((*(a2 + 184) >> 6) & 1) << 6);
  *(this + 184) = v14;
  v15 = v14 & 0xFFFFFF7F | (((*(a2 + 184) >> 7) & 1) << 7);
  *(this + 184) = v15;
  v16 = v15 & 0xFFFFFEFF | ((HIBYTE(*(a2 + 184)) & 1) << 8);
  *(this + 184) = v16;
  *(this + 184) = v16 & 0xFDFF | *(a2 + 184) & 0x200;
  v17 = *(a2 + 16);
  if (v17)
  {
    v28[0] = 0;
    if (!IOSurfaceSetPurgeable(v17, 3u, v28) && v28[0] == 2)
    {
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v18 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        ID = IOSurfaceGetID(*(a2 + 16));
        v28[0] = 67109120;
        v28[1] = ID;
        _os_log_error_impl(&dword_183AA6000, v18, OS_LOG_TYPE_ERROR, "Received purged IOSurface ID (0x%08x)", v28, 8u);
      }
    }
  }

  v19 = a3 | (*(a2 + 3) >> 8);
  *(this + 3) |= v19 << 8;
  *(this + 89) = 1;
  CA::Render::Texture::set_colorspace(this, *(a2 + 7));
  v20 = *(a2 + 12);
  v21 = *(a2 + 13);
  v22 = *(a2 + 4) - (v20 + *(a2 + 14));
  v23 = *(a2 + 5) - (v21 + *(a2 + 15));
  *(this + 12) = v20;
  v24 = *(this + 4);
  v25 = *(this + 5);
  *(this + 13) = v21;
  *(this + 14) = v24 - v20 - v22;
  *(this + 15) = v25 - v21 - v23;
  *(this + 8) = *(a2 + 8);
  *(this + 8) = *(a2 + 8);
  if ((v19 & 0x10000) != 0)
  {
    IOSurfaceIncrementUseCount(*(this + 16));
  }

  return this;
}

void CA::Render::Surface::ensure_scheduled_block(CA::Render::Surface *this)
{
  v2 = *(this + 43);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
    _Block_release(*(this + 43));
    *(this + 43) = 0;
  }
}

CA::Render *CA::Render::Surface::reload_iosurface_color_attributes(CA::Render::Surface *this, __IOSurface *a2)
{
  result = *(this + 16);
  if (result)
  {
    v4 = a2;
    *(this + 37) = CA::Render::iosurface_get_edr_factor(result, a2);
    CA::Render::iosurface_get_edr_headroom(*(this + 16), v5);
    *(this + 16) = v6;
    *(this + 19) = IOSurfaceGetProtectionOptions();
    result = CA::Render::iosurface_load_attachments(this, (v4 & 0x7E));
    if (*(this + 37) != 1.0)
    {
      *(this + 184) |= 4u;
    }
  }

  return result;
}

CFStringRef CA::Render::iosurface_set_bulk_from_colorspace(CA::Render *this, CGColorSpaceRef space, CGColorSpace *a3, unsigned __int8 *a4)
{
  v6 = *MEMORY[0x1E69E9840];
  *v5 = 0;
  result = CA::Render::iosurface_color_tags_for_colorspace(space, &v5[1], v5, a4);
  if (result)
  {
    return IOSurfaceSetBulkAttachments2();
  }

  return result;
}

__IOSurface *CA::Render::create_iosurface(CA::Render *this, CA::Render *a2, unsigned int a3, const __CFString *a4, unsigned int a5, const __CFString *a6)
{
  if (!a2)
  {
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v8 = a2;
  v9 = this;
  v10 = CA::Render::iosurface_size_supported(a2, a3);
  if ((a3 | v8) >> 13 || !v10)
  {
    return 0;
  }

  if (v9 == 17)
  {
    v12 = 13;
  }

  else
  {
    v12 = v9;
  }

  if (v9 == 3)
  {
    v12 = 1;
  }

  if (v12 > 0x23 || ((0x61CB910CuLL >> v12) & 1) != 0)
  {
    return 0;
  }

  v13 = dword_183E22814[v12];

  return CA::Render::create_iosurface_with_pixel_format(v13, v8, a3, 0, 0, a4, v11);
}

char *CA::Render::Timing::show(char *result, X::Stream *this, int a3, char a4)
{
  if (a4)
  {
    return result;
  }

  v5 = result;
  v6 = 2 * a3;
  if (*(result + 5) == 0.0)
  {
    v7 = *(result + 4);
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      v9 = (result + 12);
      v8 = *(result + 3);
      if ((v8 & 0x100) == 0)
      {
        if ((v8 & 0x600) == 0)
        {
          v10 = *(result + 4);
          if (v10 == 1.0)
          {
            v11 = *(result + 6);
            if (v11 == 0.0)
            {
              v12 = *(result + 3);
              if (v12 == 0.0)
              {
                return result;
              }

              goto LABEL_32;
            }

            goto LABEL_29;
          }

          goto LABEL_26;
        }

        goto LABEL_18;
      }

      goto LABEL_15;
    }

    goto LABEL_12;
  }

  result = X::Stream::printf(this, "(beginTime %f)", *(result + 5));
  if ((*(v5 + 4) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    X::Stream::printf(this, "\n%*s", v6, "");
    v7 = *(v5 + 4);
LABEL_12:
    result = X::Stream::printf(this, "(duration %f)", v7);
  }

  v9 = (v5 + 12);
  v13 = *(v5 + 3);
  if ((v13 & 0x100) == 0)
  {
    goto LABEL_16;
  }

  X::Stream::printf(this, "\n%*s", v6, "");
LABEL_15:
  result = X::Stream::printf(this, "(autoreverses true)");
  v13 = *v9;
LABEL_16:
  if ((v13 & 0x600) != 0)
  {
    X::Stream::printf(this, "\n%*s", v6, "");
    v8 = *v9;
LABEL_18:
    v14 = "both";
    if ((v8 & 0x400) == 0)
    {
      v14 = "forwards";
    }

    if ((v8 & 0x200) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = "backwards";
    }

    result = X::Stream::printf(this, "(fillMode %s)", v15);
  }

  if (*(v5 + 4) == 1.0)
  {
    goto LABEL_27;
  }

  X::Stream::printf(this, "\n%*s", v6, "");
  v10 = *(v5 + 4);
LABEL_26:
  result = X::Stream::printf(this, "(speed %f)", v10);
LABEL_27:
  if (*(v5 + 6) != 0.0)
  {
    X::Stream::printf(this, "\n%*s", v6, "");
    v11 = *(v5 + 6);
LABEL_29:
    result = X::Stream::printf(this, "(timeOffset %f)", v11);
  }

  if (*(v5 + 3) == 0.0)
  {
    return result;
  }

  X::Stream::printf(this, "\n%*s", v6, "");
  v8 = *(v5 + 3);
  v12 = *(v5 + 3);
LABEL_32:
  if ((v8 & 0x800) != 0)
  {
    v16 = "repeatDuration";
  }

  else
  {
    v16 = "repeatCount";
  }

  return X::Stream::printf(this, "(%s %f)", v16, v12);
}

os_log_t ___Z17x_log_get_CADebugv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "CADebug");
  x_log_get_CADebug(void)::log = result;
  return result;
}

uint64_t CADebugColorOptionAtIndex(unint64_t a1)
{
  if (a1 > 0x26)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return color_options[a1];
  }
}

uint64_t CADebugPrintOptionAtIndex(unint64_t a1)
{
  if (a1 > 0x27)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return print_options[a1];
  }
}

uint64_t CADebugFeatureOptionAtIndex(unint64_t a1)
{
  if (a1 > 0xA7)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return feature_options[a1];
  }
}

uint64_t CADebugClientOptionAtIndex(unint64_t a1)
{
  if (a1 > 8)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return client_options[a1];
  }
}

BOOL CADebugOptionIsColor(int a1)
{
  for (i = 0; i != 39; ++i)
  {
    if (color_options[i] == a1)
    {
      break;
    }
  }

  return i != 39;
}

BOOL CADebugOptionIsPrint(int a1)
{
  for (i = 0; i != 40; ++i)
  {
    if (print_options[i] == a1)
    {
      break;
    }
  }

  return i != 40;
}

BOOL CADebugOptionIsFeature(int a1)
{
  for (i = 0; i != 168; ++i)
  {
    if (feature_options[i] == a1)
    {
      break;
    }
  }

  return i != 168;
}

BOOL CADebugOptionIsClient(int a1)
{
  for (i = 0; i != 9; ++i)
  {
    if (client_options[i] == a1)
    {
      break;
    }
  }

  return i != 9;
}

char *CAGetDebugOptionEnvVariableName(unsigned int a1)
{
  if (a1 <= 0xFF)
  {
    return debug_option_env_vars[a1];
  }

  else
  {
    return 0;
  }
}

char *CAGetDebugValueEnvVariableName(unsigned int a1)
{
  if (a1 <= 0x5C)
  {
    return debug_value_env_vars[a1];
  }

  else
  {
    return 0;
  }
}

uint64_t CAGetDebugOption(unsigned int a1)
{
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  if (a1 <= 0xFF)
  {
    v2 = *(&ca_debug_options + a1);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void CASetDebugOption(unsigned int a1, char a2)
{
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  if (a1 <= 0xFF)
  {
    v4 = 0;
    *(&ca_debug_options + a1) = a2;
    options_are_visual = 0;
    while (*(&ca_debug_options + dword_183E316B0[v4]) != 1)
    {
      if (++v4 == 43)
      {
        goto LABEL_9;
      }
    }

    options_are_visual = 1;
LABEL_9:
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"kCADebugOptionsDidChange", 0, 0, 1u);
    if (a1 == 195)
    {
      if (initialized[0] != -1)
      {
        dispatch_once_f(initialized, 0, init_debug);
      }

      v6 = (*&dword_1ED4E9748 + 1);

      CASetDebugValueFloat(0x44u, v6);
    }
  }
}

void CASetDebugValueFloat(unsigned int a1, float a2)
{
  if (a1 <= 0x5C)
  {
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    *&debug_values[a1] = a2;
    LocalCenter = CFNotificationCenterGetLocalCenter();

    CFNotificationCenterPostNotification(LocalCenter, @"kCADebugOptionsDidChange", 0, 0, 1u);
  }
}

void CAClearDebugOptions()
{
  v0 = 0;
  xmmword_1ED4E98AC = 0u;
  *&byte_1ED4E98BC = 0u;
  xmmword_1ED4E988C = 0u;
  *&byte_1ED4E989C = 0u;
  unk_1ED4E986C = 0u;
  *&byte_1ED4E987C = 0u;
  unk_1ED4E984C = 0u;
  *&byte_1ED4E985C = 0u;
  xmmword_1ED4E982C = 0u;
  *&byte_1ED4E983C = 0u;
  xmmword_1ED4E980C = 0u;
  *&byte_1ED4E981C = 0u;
  xmmword_1ED4E97EC = 0u;
  *&byte_1ED4E97FC = 0u;
  ca_debug_options = 0u;
  xmmword_1ED4E97DC = 0u;
  options_are_visual = 0;
  while (*(&ca_debug_options + dword_183E316B0[v0]) != 1)
  {
    if (++v0 == 43)
    {
      return;
    }
  }

  options_are_visual = 1;
}

void CAClearColorDebugOptions()
{
  for (i = 0; i != 39; ++i)
  {
    *(&ca_debug_options + color_options[i]) = 0;
  }

  v1 = 0;
  options_are_visual = 0;
  while (*(&ca_debug_options + dword_183E316B0[v1]) != 1)
  {
    if (++v1 == 43)
    {
      return;
    }
  }

  options_are_visual = 1;
}

uint64_t CAGetDebugFlags(uint8x8_t a1)
{
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  a1.i32[0] = *(&ca_debug_options + 1);
  v1 = vand_s8(*&vsubw_u8(0, a1), 0x10000800040002);
  v2 = (v1.i8[0] | v1.i8[4] | ((v1.i32[0] | v1.i32[1]) >> 16) | -BYTE5(ca_debug_options) & 0x20 | -BYTE6(ca_debug_options) & 0x40 | -BYTE7(ca_debug_options) & 0x80 | ca_debug_options);
  v10.val[0] = *(&ca_debug_options + 8);
  v10.val[1] = xmmword_1ED4E97DC;
  v10.val[0].i32[2] = xmmword_1ED4E97DC;
  v3.i64[0] = 0x101010101010101;
  v3.i64[1] = 0x101010101010101;
  v4 = veorq_s8(vqtbl2q_s8(v10, xmmword_183E21590), v3);
  v5 = vmovl_high_u8(v4);
  v6 = vmovl_u8(*v4.i8);
  v10.val[0] = vdupq_laneq_s32(xmmword_1ED4E97DC, 3);
  v7 = v10.val[0].u8[1];
  v10.val[0].i16[0] = v10.val[0].u8[0];
  v10.val[0].i16[1] = v7;
  v10.val[0].i8[4] = BYTE1(xmmword_1ED4E97EC);
  v10.val[0].i8[6] = BYTE5(xmmword_1ED4E97EC);
  v8.i64[0] = 0xFF000000FFLL;
  v8.i64[1] = 0xFF000000FFLL;
  v10.val[0] = vorrq_s8(vorrq_s8(vorrq_s8(vandq_s8(vaddw_u16(xmmword_183E215C0, *v6.i8), xmmword_183E215F0), vandq_s8(vaddw_u16(xmmword_183E215D0, *v5.i8), xmmword_183E215E0)), vorrq_s8(vandq_s8(vaddw_high_u16(xmmword_183E215A0, v6), xmmword_183E21610), vandq_s8(vaddw_high_u16(xmmword_183E215B0, v5), xmmword_183E21600))), vandq_s8(vaddq_s32(vandq_s8(vmovl_u16(veor_s8(*v10.val[0].i8, 0x1000100010001)), v8), xmmword_183E21620), xmmword_183E21630));
  *v10.val[0].i8 = vorr_s8(*v10.val[0].i8, *&vextq_s8(v10.val[0], v10.val[0], 8uLL));
  return v10.val[0].i32[0] | ((BYTE6(xmmword_1ED4E97EC) ^ 1) - 1) & 0x10000000 | v10.val[0].i32[1] | ((BYTE7(xmmword_1ED4E97EC) ^ 1) - 1) & 0x20000000 | ((BYTE9(xmmword_1ED4E97EC) ^ 1) - 1) & 0x40000000 | v2;
}

void CASetDebugFlags(unsigned int a1, int a2)
{
  if (!a1)
  {
    return;
  }

  if (initialized[0] == -1)
  {
    if (a1)
    {
LABEL_8:
      v4 = a2 & a1 & 1;
      goto LABEL_9;
    }
  }

  else
  {
    dispatch_once_f(initialized, 0, init_debug);
    if (a1)
    {
      goto LABEL_8;
    }
  }

  if ((ca_debug_options & 1) == 0)
  {
    goto LABEL_8;
  }

  v4 = 1;
LABEL_9:
  LOBYTE(ca_debug_options) = v4;
  if ((a1 & 2) != 0 || (BYTE1(ca_debug_options) & 1) == 0)
  {
    v5 = ((a2 & a1) >> 1) & 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  BYTE1(ca_debug_options) = v5;
  if ((a1 & 4) != 0 || (BYTE2(ca_debug_options) & 1) == 0)
  {
    v6 = ((a2 & a1) >> 2) & 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  BYTE2(ca_debug_options) = v6;
  if ((a1 & 8) != 0 || (BYTE3(ca_debug_options) & 1) == 0)
  {
    v7 = ((a2 & a1) >> 3) & 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  BYTE3(ca_debug_options) = v7;
  if ((a1 & 0x10) != 0 || (BYTE4(ca_debug_options) & 1) == 0)
  {
    v8 = ((a2 & a1) >> 4) & 1;
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  BYTE4(ca_debug_options) = v8;
  if ((a1 & 0x20) != 0 || (BYTE5(ca_debug_options) & 1) == 0)
  {
    v9 = ((a2 & a1) >> 5) & 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  BYTE5(ca_debug_options) = v9;
  if ((a1 & 0x40) != 0 || (BYTE6(ca_debug_options) & 1) == 0)
  {
    v10 = ((a2 & a1) >> 6) & 1;
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  BYTE6(ca_debug_options) = v10;
  if ((a1 & 0x80) != 0 || (BYTE7(ca_debug_options) & 1) == 0)
  {
    v11 = ((a2 & a1) >> 7) & 1;
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  BYTE7(ca_debug_options) = v11;
  if ((a1 & 0x100) != 0 || (BYTE8(ca_debug_options) & 1) == 0)
  {
    v12 = ((a2 & a1) >> 8) & 1;
  }

  else
  {
    LOBYTE(v12) = 1;
  }

  BYTE8(ca_debug_options) = v12;
  if ((a1 & 0x200) != 0 || (BYTE9(ca_debug_options) & 1) == 0)
  {
    v13 = ((a2 & a1) >> 9) & 1;
  }

  else
  {
    LOBYTE(v13) = 1;
  }

  BYTE9(ca_debug_options) = v13;
  if ((a1 & 0x400) != 0 || (BYTE10(ca_debug_options) & 1) == 0)
  {
    v14 = ((a2 & a1) >> 10) & 1;
  }

  else
  {
    LOBYTE(v14) = 1;
  }

  BYTE10(ca_debug_options) = v14;
  if ((a1 & 0x800) != 0 || (BYTE11(ca_debug_options) & 1) == 0)
  {
    v15 = ((a2 & a1) >> 11) & 1;
  }

  else
  {
    LOBYTE(v15) = 1;
  }

  BYTE11(ca_debug_options) = v15;
  if ((a1 & 0x1000) != 0 || (BYTE12(ca_debug_options) & 1) == 0)
  {
    v16 = ((a2 & a1) >> 12) & 1;
  }

  else
  {
    LOBYTE(v16) = 1;
  }

  BYTE12(ca_debug_options) = v16;
  if ((a1 & 0x2000) != 0 || (BYTE13(ca_debug_options) & 1) == 0)
  {
    v17 = ((a2 & a1) >> 13) & 1;
  }

  else
  {
    LOBYTE(v17) = 1;
  }

  BYTE13(ca_debug_options) = v17;
  if ((a1 & 0x4000) != 0 || (BYTE14(ca_debug_options) & 1) == 0)
  {
    v18 = ((a2 & a1) >> 14) & 1;
  }

  else
  {
    LOBYTE(v18) = 1;
  }

  BYTE14(ca_debug_options) = v18;
  if ((a1 & 0x8000) != 0 || (HIBYTE(ca_debug_options) & 1) == 0)
  {
    v19 = ((a2 & a1) >> 15) & 1;
  }

  else
  {
    LOBYTE(v19) = 1;
  }

  HIBYTE(ca_debug_options) = v19;
  if ((a1 & 0x10000) != 0 || (xmmword_1ED4E97DC & 1) == 0)
  {
    v20 = ((a2 & a1) >> 16) & 1;
  }

  else
  {
    LOBYTE(v20) = 1;
  }

  LOBYTE(xmmword_1ED4E97DC) = v20;
  if ((a1 & 0x20000) != 0 || (BYTE1(xmmword_1ED4E97DC) & 1) == 0)
  {
    v21 = ((a2 & a1) >> 17) & 1;
  }

  else
  {
    LOBYTE(v21) = 1;
  }

  BYTE1(xmmword_1ED4E97DC) = v21;
  if ((a1 & 0x40000) != 0 || (BYTE2(xmmword_1ED4E97DC) & 1) == 0)
  {
    v22 = ((a2 & a1) >> 18) & 1;
  }

  else
  {
    LOBYTE(v22) = 1;
  }

  BYTE2(xmmword_1ED4E97DC) = v22;
  if ((a1 & 0x80000) != 0 || (BYTE3(xmmword_1ED4E97DC) & 1) == 0)
  {
    v23 = ((a2 & a1) >> 19) & 1;
  }

  else
  {
    LOBYTE(v23) = 1;
  }

  BYTE3(xmmword_1ED4E97DC) = v23;
  if ((a1 & 0x100000) != 0 || (BYTE6(xmmword_1ED4E97DC) & 1) == 0)
  {
    v24 = ((a2 & a1) >> 20) & 1;
  }

  else
  {
    LOBYTE(v24) = 1;
  }

  BYTE6(xmmword_1ED4E97DC) = v24;
  if ((a1 & 0x200000) != 0 || (BYTE8(xmmword_1ED4E97DC) & 1) == 0)
  {
    v25 = ((a2 & a1) >> 21) & 1;
  }

  else
  {
    LOBYTE(v25) = 1;
  }

  BYTE8(xmmword_1ED4E97DC) = v25;
  if ((a1 & 0x400000) != 0 || (BYTE9(xmmword_1ED4E97DC) & 1) == 0)
  {
    v26 = ((a2 & a1) >> 22) & 1;
  }

  else
  {
    LOBYTE(v26) = 1;
  }

  BYTE9(xmmword_1ED4E97DC) = v26;
  if ((a1 & 0x800000) != 0 || (BYTE11(xmmword_1ED4E97DC) & 1) == 0)
  {
    v27 = ((a2 & a1) >> 23) & 1;
  }

  else
  {
    LOBYTE(v27) = 1;
  }

  BYTE11(xmmword_1ED4E97DC) = v27;
  if ((a1 & 0x2000000) != 0 || (BYTE12(xmmword_1ED4E97DC) & 1) == 0)
  {
    v28 = ((a2 & a1) >> 25) & 1;
  }

  else
  {
    LOBYTE(v28) = 1;
  }

  BYTE12(xmmword_1ED4E97DC) = v28;
  if ((a1 & 0x4000000) != 0 || (BYTE13(xmmword_1ED4E97DC) & 1) == 0)
  {
    v29 = ((a2 & a1) >> 26) & 1;
  }

  else
  {
    LOBYTE(v29) = 1;
  }

  BYTE13(xmmword_1ED4E97DC) = v29;
  if ((a1 & 0x8000000) != 0 || (BYTE1(xmmword_1ED4E97EC) & 1) == 0)
  {
    v30 = ((a2 & a1) >> 27) & 1;
  }

  else
  {
    LOBYTE(v30) = 1;
  }

  BYTE1(xmmword_1ED4E97EC) = v30;
  if ((a1 & 0x1000000) != 0 || (BYTE5(xmmword_1ED4E97EC) & 1) == 0)
  {
    v31 = ((a2 & a1) >> 24) & 1;
  }

  else
  {
    LOBYTE(v31) = 1;
  }

  BYTE5(xmmword_1ED4E97EC) = v31;
  if ((a1 & 0x10000000) != 0 || (BYTE6(xmmword_1ED4E97EC) & 1) == 0)
  {
    v32 = ((a2 & a1) >> 28) & 1;
  }

  else
  {
    LOBYTE(v32) = 1;
  }

  BYTE6(xmmword_1ED4E97EC) = v32;
  if ((a1 & 0x20000000) != 0 || (BYTE7(xmmword_1ED4E97EC) & 1) == 0)
  {
    v33 = ((a2 & a1) >> 29) & 1;
  }

  else
  {
    LOBYTE(v33) = 1;
  }

  BYTE7(xmmword_1ED4E97EC) = v33;
  if ((a1 & 0x40000000) != 0 || (BYTE9(xmmword_1ED4E97EC) & 1) == 0)
  {
    v34 = ((a2 & a1) >> 30) & 1;
  }

  else
  {
    LOBYTE(v34) = 1;
  }

  v35 = 0;
  BYTE9(xmmword_1ED4E97EC) = v34;
  options_are_visual = 0;
  while (*(&ca_debug_options + dword_183E316B0[v35]) != 1)
  {
    if (++v35 == 43)
    {
      goto LABEL_134;
    }
  }

  options_are_visual = 1;
LABEL_134:
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, @"kCADebugOptionsDidChange", 0, 0, 1u);
}

float CADecrementDebugValue(unsigned int a1, float result)
{
  if (a1 <= 0x5C)
  {
    result = *&debug_values[a1];
    if (result > 0.0)
    {
      result = result + -1.0;
      *&debug_values[a1] = result;
    }
  }

  return result;
}

void CASetMessageFunction()
{
  v2 = *MEMORY[0x1E69E9840];
  if (x_log_get_CADebug(void)::once != -1)
  {
    dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
  }

  v0 = x_log_get_CADebug(void)::log;
  if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_183AA6000, v0, OS_LOG_TYPE_ERROR, "CASetMessageFunction() is deprecated. Use libtrace tools instead.", v1, 2u);
  }
}

void CASetMessageFile()
{
  v2 = *MEMORY[0x1E69E9840];
  if (x_log_get_CADebug(void)::once != -1)
  {
    dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
  }

  v0 = x_log_get_CADebug(void)::log;
  if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_183AA6000, v0, OS_LOG_TYPE_ERROR, "CASetMessageFile() is deprecated. Use libtrace tools instead.", v1, 2u);
  }
}

void CASetDebugMessage(char *__source, int a2)
{
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  strlcpy(&debug_message, __source, 0x100uLL);
  debug_message_color = a2;
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, @"kCADebugOptionsDidChange", 0, 0, 1u);
}

uint64_t CAGetDebugMessageColor()
{
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  return debug_message_color;
}

uint64_t ___ZL26CARecordCurrentDisplayPushj_block_invoke()
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  result = pthread_key_create(v1, _ZZZL26CARecordCurrentDisplayPushjEUb_EN3__08__invokeEPv);
  current_display_slot = v1[0];
  return result;
}

uint64_t _ZZZL26CARecordCurrentDisplayPushjEUb_EN3__08__invokeEPv(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x1865EA9A0);
  }

  return result;
}

uint64_t CA::EDRClient::reload_potential_headroom_locked(CA::EDRClient *this)
{
  result = EDRGetDefaultMinScalingFactor();
  if (v3 > 0.0)
  {
    v4 = 1.0;
    v5 = 1.0 / v3;
    v6 = v5 > 16.0 || v5 < 1.0;
    if (v5 >= 1.0 || v5 > 16.0)
    {
      v4 = 16.0;
    }

    if (v6)
    {
      v5 = v4;
    }

    *(this + 38) = v5;
  }

  return result;
}

uint64_t CA::EDRClient::client(pthread_mutex_t *this)
{
  if (CADeviceHasBacklight::once != -1)
  {
    dispatch_once(&CADeviceHasBacklight::once, &__block_literal_global_132);
  }

  if (CADeviceHasBacklight::has_backlight != 1)
  {
    return 0;
  }

  pthread_mutex_lock(this);
  v2 = *this[2].__opaque;
  if (!v2 && (this[2].__opaque[8] & 1) == 0)
  {
    this[2].__opaque[8] = 1;
    pthread_mutex_unlock(this);
    EDRCreateClientForDisplayWithTimeoutAndCallback();
    pthread_mutex_lock(this);
  }

  pthread_mutex_unlock(this);
  return v2;
}

uint64_t ___ZN2CA9EDRClient6clientEv_block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  pthread_mutex_lock(v3);
  *(v3 + 136) = a2;
  *(v3 + 144) = 0;
  CA::EDRClient::reload_potential_headroom_locked(v3);

  return pthread_mutex_unlock(v3);
}

uint64_t ___ZN2CA9EDRClient15set_edr_enabledEb_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 36);
  if (x_log_get_utilities::once != -1)
  {
    dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
  }

  v3 = x_log_get_utilities::log;
  v4 = os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v9 = 67109120;
      v10 = v5;
      v6 = "EDR client %u Enabled\n";
LABEL_9:
      _os_log_debug_impl(&dword_183AA6000, v3, OS_LOG_TYPE_DEBUG, v6, &v9, 8u);
    }
  }

  else if (v4)
  {
    v8 = *(a1 + 32);
    v9 = 67109120;
    v10 = v8;
    v6 = "EDR client %u Disabled\n";
    goto LABEL_9;
  }

  return EDREnable();
}

uint64_t CA::EDRClient::set_edr_max_headroom(pthread_mutex_t *this, float a2)
{
  v10 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(this + 1);
  if (*&this[2].__opaque[12] != a2)
  {
    *&this[2].__opaque[12] = a2;
    this[2].__opaque[9] = a2 > 1.0;
    v4 = CA::EDRClient::client(this);
    if (v4)
    {
      sig = this[2].__sig;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 0x40000000;
      v7[2] = ___ZN2CA9EDRClient20set_edr_max_headroomEf_block_invoke;
      v7[3] = &__block_descriptor_tmp_4_18919;
      v8 = v4;
      v9 = a2;
      dispatch_async(sig, v7);
    }
  }

  return pthread_mutex_unlock(this + 1);
}

uint64_t ___ZN2CA9EDRClient26set_accessibility_overrideEb_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (x_log_get_utilities::once != -1)
  {
    dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
  }

  v2 = x_log_get_utilities::log;
  if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v5 = "OFF";
    if (*(a1 + 36))
    {
      v5 = "ON";
    }

    v6[0] = 67109378;
    v6[1] = v4;
    v7 = 2080;
    v8 = v5;
    _os_log_debug_impl(&dword_183AA6000, v2, OS_LOG_TYPE_DEBUG, "EDR client %u accessibility override %s\n", v6, 0x12u);
  }

  return EDRRequestAccessibilityLimit();
}

void CA::EDRClient::unregister_callback(pthread_mutex_t *this)
{
  if (CADeviceHasBacklight::once != -1)
  {
    dispatch_once(&CADeviceHasBacklight::once, &__block_literal_global_132);
  }

  if (CADeviceHasBacklight::has_backlight == 1 && CA::EDRClient::client(this))
  {
    pthread_mutex_lock(this + 1);
    if (this[2].__opaque[11] == 1)
    {
      this[2].__opaque[11] = 0;
      CA::EDRClient::client(this);
      EDRUnregisterCallbackBlock();
    }

    pthread_mutex_unlock(this + 1);
  }
}

uint64_t ___ZN2CA9EDRClient17register_callbackEU13block_pointerFvbfffE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  CA::EDRClient::client(v2);
  EDRGetDisplayHeadroom();
  v4 = v3;
  CA::EDRClient::client(v2);
  EDRGetAmbientIlluminance();
  v6 = v5;
  CA::EDRClient::client(v2);
  EDRGetDisplayMaxLuminance();
  v8 = v7;
  CA::EDRClient::client(v2);
  EDRGetDisplayBacklightBrightness();
  v10 = v9;
  pthread_mutex_lock(v2 + 1);
  if (v2[2].__opaque[11] == 1)
  {
    v11.n128_u32[0] = 16.0;
    if (v4 <= 16.0)
    {
      v11.n128_f32[0] = v4;
    }

    if (v11.n128_f32[0] < 1.0)
    {
      v11.n128_f32[0] = 1.0;
    }

    v12 = v6 * 0.318309886;
    (*(*(a1 + 32) + 16))(v11, (v11.n128_f32[0] * (v8 * v10)) / v4, v12);
  }

  return pthread_mutex_unlock(v2 + 1);
}

float CAFrameRateRangeForVelocity(float a1, char a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((LODWORD(a1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    return 0.0;
  }

  v13 = 0;
  memset(v12, 0, sizeof(v12));
  if (vfd_table(void)::once[0] != -1)
  {
    dispatch_once(vfd_table(void)::once, &__block_literal_global_13_18970);
  }

  v8 = v12;
  v9 = v12;
  v10 = v12;
  v11 = 5;
  X::small_vector_base<VFDEntry>::append<VFDEntry const*>(&v8, vfd_table(void)::vfd_table[0], off_1EA84E3C0[0]);
  if (v8 == v9)
  {
LABEL_10:
    v6 = 0.0;
  }

  else
  {
    v4 = fabsf(a1);
    v5 = v8;
    while ((a2 & 1) == 0 && (v5[4] & 1) != 0 || v4 < *v5)
    {
      v5 += 5;
      if (v5 == v9)
      {
        goto LABEL_10;
      }
    }

    v6 = v5[1];
  }

  if (v8 != v10)
  {
    free(v8);
  }

  return v6;
}

void X::small_vector_base<VFDEntry>::append<VFDEntry const*>(void *a1, __int128 *a2, __int128 *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = a1[1];
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 2);
  if (0xCCCCCCCCCCCCCCCDLL * ((a3 - a2) >> 2) > a1[3] - v8)
  {
    X::small_vector_base<VFDEntry>::grow(a1, v8 - 0x3333333333333333 * ((a3 - a2) >> 2));
    v7 = a1[1];
  }

  if (v4 != a3)
  {
    do
    {
      v9 = *v4;
      *(v7 + 16) = *(v4 + 4);
      *v7 = v9;
      v7 += 20;
      v4 = (v4 + 20);
    }

    while (v4 != a3);
    v7 = a1[1];
  }

  a1[1] = v7 + v6;
}

void X::small_vector_base<VFDEntry>::grow(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = (*(a1 + 24) + 1) | ((*(a1 + 24) + 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = v7 | (v7 >> 8) | ((v7 | (v7 >> 8)) >> 16);
  v9 = v8 | HIDWORD(v8);
  if (v9 + 1 > a2)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = a2;
  }

  v11 = malloc_type_malloc(20 * v10, 0x1000040C46099A0uLL);
  v12 = v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  if (*a1 != v14)
  {
    v15 = v11;
    do
    {
      v16 = *v13;
      *(v15 + 4) = v13[4];
      *v15 = v16;
      v15 += 20;
      v13 += 5;
    }

    while (v13 != v14);
  }

  if (v3 != v5)
  {
    free(*a1);
  }

  *a1 = v12;
  *(a1 + 8) = &v12[v4 - v3];
  *(a1 + 24) = v10;
}

void ___ZL9vfd_tablev_block_invoke()
{
  v108 = *MEMORY[0x1E69E9840];
  v107 = 0;
  memset(v106, 0, sizeof(v106));
  v102 = v106;
  v103 = v106;
  v104 = v106;
  v105 = 5;
  if (CADeviceHasInternalBuild::once != -1)
  {
    dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
  }

  if (CADeviceHasInternalBuild::internal != 1)
  {
    goto LABEL_52;
  }

  v0 = getenv("CA_VFD_TABLE");
  if (!v0)
  {
    goto LABEL_52;
  }

  v1 = v0;
  memset(&__dst, 0, sizeof(__dst));
  v2 = strlen(v0);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
  }

  v3 = v2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v2;
  if (v2)
  {
    memmove(&__dst, v1, v2);
  }

  __dst.__r_.__value_.__s.__data_[v3] = 0;
  v4 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  size = __dst.__r_.__value_.__l.__size_;
  v6 = __dst.__r_.__value_.__r.__words[0];
  p_dst = &__dst;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = __dst.__r_.__value_.__l.__size_;
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if (!v8)
  {
    goto LABEL_47;
  }

  v9 = 0;
  do
  {
    v10 = p_dst->__r_.__value_.__s.__data_[0];
    p_dst = (p_dst + 1);
    if (v10 == 58)
    {
      ++v9;
    }

    --v8;
  }

  while (v8);
  if (!v9)
  {
LABEL_47:
    v26 = 0;
    v27 = 1;
    if ((*(&__dst.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  v11 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
LABEL_21:
  if ((v4 & 0x80u) == 0)
  {
    v12 = &__dst;
  }

  else
  {
    v12 = v6;
  }

  v13 = v11;
  if (v4 < 0)
  {
    while (1)
    {
      v14 = size;
      if (v13 > size)
      {
        break;
      }

LABEL_28:
      if (v13 == v14 || v12->__r_.__value_.__s.__data_[v13] == 32)
      {
        if (v13 > v11)
        {
          std::string::basic_string(&v93, &__dst, v11, v13 - v11, &v94);
          v15 = v90;
          if (v90 >= v91)
          {
            v17 = 0xAAAAAAAAAAAAAAABLL * ((v90 - v89) >> 3);
            v18 = v17 + 1;
            if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
LABEL_145:
              std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
            }

            if (0x5555555555555556 * ((v91 - v89) >> 3) > v18)
            {
              v18 = 0x5555555555555556 * ((v91 - v89) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v91 - v89) >> 3) >= 0x555555555555555)
            {
              v19 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v19 = v18;
            }

            v94.__end_cap_.__value_ = &v89;
            if (v19)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v19);
            }

            v20 = 8 * ((v90 - v89) >> 3);
            v21 = *&v93.__r_.__value_.__l.__data_;
            *(v20 + 16) = *(&v93.__r_.__value_.__l + 2);
            *v20 = v21;
            memset(&v93, 0, sizeof(v93));
            v22 = 24 * v17 + 24;
            v23 = (24 * v17 - (v90 - v89));
            memcpy((v20 - (v90 - v89)), v89, v90 - v89);
            v24 = v89;
            v25 = v91;
            v89 = v23;
            v90 = v22;
            v91 = 0;
            v94.__end_ = v24;
            v94.__end_cap_.__value_ = v25;
            v94.__first_ = v24;
            v94.__begin_ = v24;
            std::__split_buffer<std::string>::~__split_buffer(&v94);
            v90 = v22;
            if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v93.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v16 = *&v93.__r_.__value_.__l.__data_;
            v90->__r_.__value_.__r.__words[2] = v93.__r_.__value_.__r.__words[2];
            *&v15->__r_.__value_.__l.__data_ = v16;
            v90 = v15 + 1;
          }

          v4 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          size = __dst.__r_.__value_.__l.__size_;
          v6 = __dst.__r_.__value_.__r.__words[0];
        }

        v11 = v13 + 1;
        goto LABEL_21;
      }

      ++v13;
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_25:
    v14 = v4;
    if (v13 <= v4)
    {
      goto LABEL_28;
    }
  }

  v29 = v89;
  v30 = 0xAAAAAAAAAAAAAAABLL * ((v90 - v89) >> 3);
  v82 = v30 != v9;
  v81 = v30;
  if (v90 == v89 || v30 != v9)
  {
    goto LABEL_143;
  }

  v32 = 0;
  while (1)
  {
    v33 = 0;
    v34 = &v29[v32];
    v86 = 0;
    v87 = 0;
    v88 = 0;
LABEL_70:
    v35 = HIBYTE(v34->__r_.__value_.__r.__words[2]);
    v36 = v33;
    if ((v35 & 0x80) == 0)
    {
LABEL_71:
      v37 = HIBYTE(v34->__r_.__value_.__r.__words[2]);
      if (v36 > v35)
      {
        goto LABEL_95;
      }

      goto LABEL_74;
    }

    while (1)
    {
      v37 = v34->__r_.__value_.__l.__size_;
      if (v36 > v37)
      {
        break;
      }

LABEL_74:
      if (v36 == v37 || ((v35 & 0x80u) == 0 ? (v38 = v34) : (v38 = v34->__r_.__value_.__r.__words[0]), v38->__r_.__value_.__s.__data_[v36] == 58))
      {
        if (v36 > v33)
        {
          std::string::basic_string(&v93, v34, v33, v36 - v33, &v94);
          v39 = v87;
          if (v87 >= v88)
          {
            v41 = 0xAAAAAAAAAAAAAAABLL * ((v87 - v86) >> 3);
            v42 = v41 + 1;
            if (v41 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              goto LABEL_145;
            }

            if (0x5555555555555556 * ((v88 - v86) >> 3) > v42)
            {
              v42 = 0x5555555555555556 * ((v88 - v86) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v88 - v86) >> 3) >= 0x555555555555555)
            {
              v43 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v43 = v42;
            }

            v94.__end_cap_.__value_ = &v86;
            if (v43)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v43);
            }

            v44 = 8 * ((v87 - v86) >> 3);
            v45 = *&v93.__r_.__value_.__l.__data_;
            *(v44 + 16) = *(&v93.__r_.__value_.__l + 2);
            *v44 = v45;
            memset(&v93, 0, sizeof(v93));
            v46 = 24 * v41 + 24;
            v47 = (24 * v41 - (v87 - v86));
            memcpy((v44 - (v87 - v86)), v86, v87 - v86);
            v48 = v86;
            v49 = v88;
            v86 = v47;
            v87 = v46;
            v88 = 0;
            v94.__end_ = v48;
            v94.__end_cap_.__value_ = v49;
            v94.__first_ = v48;
            v94.__begin_ = v48;
            std::__split_buffer<std::string>::~__split_buffer(&v94);
            v87 = v46;
            if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v93.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v40 = *&v93.__r_.__value_.__l.__data_;
            *(v87 + 2) = *(&v93.__r_.__value_.__l + 2);
            *v39 = v40;
            v87 = v39 + 24;
          }
        }

        v33 = v36 + 1;
        goto LABEL_70;
      }

      ++v36;
      if ((v35 & 0x80) == 0)
      {
        goto LABEL_71;
      }
    }

LABEL_95:
    v50 = v86;
    if (v87 - v86 != 48)
    {
      goto LABEL_142;
    }

    v51 = 0;
    v52 = &v86[1];
    v83 = 0;
    v84 = 0;
    v85 = 0;
LABEL_97:
    v53 = HIBYTE(v50[1].__r_.__value_.__r.__words[2]);
    v54 = v51;
    if ((v53 & 0x80) == 0)
    {
LABEL_98:
      v55 = HIBYTE(v50[1].__r_.__value_.__r.__words[2]);
      if (v54 > v53)
      {
        goto LABEL_122;
      }

      goto LABEL_101;
    }

    while (1)
    {
      v55 = v50[1].__r_.__value_.__l.__size_;
      if (v54 > v55)
      {
        break;
      }

LABEL_101:
      if (v54 == v55 || ((v53 & 0x80u) == 0 ? (v56 = &v50[1]) : (v56 = v52->__words[0]), v56[v54] == 44))
      {
        if (v54 > v51)
        {
          std::string::basic_string(&v93, v50 + 1, v51, v54 - v51, &v94);
          v57 = v84;
          if (v84 >= v85)
          {
            v59 = 0xAAAAAAAAAAAAAAABLL * ((v84 - v83) >> 3);
            v60 = v59 + 1;
            if (v59 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              goto LABEL_145;
            }

            if (0x5555555555555556 * ((v85 - v83) >> 3) > v60)
            {
              v60 = 0x5555555555555556 * ((v85 - v83) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v85 - v83) >> 3) >= 0x555555555555555)
            {
              v61 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v61 = v60;
            }

            v94.__end_cap_.__value_ = &v83;
            if (v61)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v61);
            }

            v62 = 8 * ((v84 - v83) >> 3);
            v63 = *&v93.__r_.__value_.__l.__data_;
            *(v62 + 16) = *(&v93.__r_.__value_.__l + 2);
            *v62 = v63;
            memset(&v93, 0, sizeof(v93));
            v64 = 24 * v59 + 24;
            v65 = (24 * v59 - (v84 - v83));
            memcpy((v62 - (v84 - v83)), v83, v84 - v83);
            v66 = v83;
            v67 = v85;
            v83 = v65;
            v84 = v64;
            v85 = 0;
            v94.__end_ = v66;
            v94.__end_cap_.__value_ = v67;
            v94.__first_ = v66;
            v94.__begin_ = v66;
            std::__split_buffer<std::string>::~__split_buffer(&v94);
            v84 = v64;
            if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v93.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v58 = *&v93.__r_.__value_.__l.__data_;
            *(v84 + 2) = *(&v93.__r_.__value_.__l + 2);
            *v57 = v58;
            v84 = v57 + 24;
          }
        }

        v51 = v54 + 1;
        goto LABEL_97;
      }

      ++v54;
      if ((v53 & 0x80) == 0)
      {
        goto LABEL_98;
      }
    }

LABEL_122:
    if (v84 - v83 != 72)
    {
      break;
    }

    if ((v86->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v68 = v86;
    }

    else
    {
      v68 = v86->__r_.__value_.__r.__words[0];
    }

    v69 = strtof(v68, 0);
    if ((v83->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v70 = v83;
    }

    else
    {
      v70 = v83->__r_.__value_.__r.__words[0];
    }

    v71 = strtof(v70, 0);
    if ((v83[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      data = &v83[1];
    }

    else
    {
      data = v83[1].__r_.__value_.__l.__data_;
    }

    v73 = strtof(data, 0);
    if ((v83[2].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v74 = &v83[2];
    }

    else
    {
      v74 = v83[2].__r_.__value_.__l.__data_;
    }

    v75 = strtof(v74, 0);
    v76 = v86;
    v77 = SHIBYTE(v86->__r_.__value_.__r.__words[2]);
    if ((v77 & 0x8000000000000000) != 0)
    {
      v76 = v86->__r_.__value_.__r.__words[0];
      v77 = v86->__r_.__value_.__l.__size_;
    }

    v78 = v76->__r_.__value_.__s.__data_[v77 - 1] == 42;
    v79 = v103;
    v80 = 1 - 0x3333333333333333 * ((v103 - v102) >> 2);
    if (v105 < v80)
    {
      X::small_vector_base<VFDEntry>::grow(&v102, v80);
      v79 = v103;
    }

    *v79 = v69;
    *(v79 + 1) = v71;
    *(v79 + 2) = v73;
    *(v79 + 3) = v75;
    v79[16] = v78;
    v103 = v79 + 20;
    v94.__first_ = &v83;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v94);
    v94.__first_ = &v86;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v94);
    ++v32;
    v29 = v89;
    if (v32 >= 0xAAAAAAAAAAAAAAABLL * ((v90 - v89) >> 3))
    {
      goto LABEL_143;
    }
  }

  v94.__first_ = &v83;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v94);
LABEL_142:
  v94.__first_ = &v86;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v94);
LABEL_143:
  v26 = v81 == v9;
  v94.__first_ = &v89;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v94);
  v27 = v82;
  if ((*(&__dst.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_48:
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_49:
  if (((v26 | v27) & 1) == 0 && v102 != v104)
  {
    free(v102);
  }

LABEL_52:
  X::small_vector_base<VFDEntry>::move(&v102);
  if (v102 != v104)
  {
    free(v102);
  }

  if (vfd_table(void)::vfd_table[0] == off_1EA84E3C0[0])
  {
    if (CADeviceIsPhone::once != -1)
    {
      dispatch_once(&CADeviceIsPhone::once, &__block_literal_global_227);
    }

    if (CADeviceIsPhone::phone == 1)
    {
      *&v94.__first_ = xmmword_183E21690;
      LOBYTE(v94.__end_) = 1;
      v28 = xmmword_183E216A0;
    }

    else
    {
      *&v94.__first_ = xmmword_183E21640;
      LOBYTE(v94.__end_) = 1;
      v28 = xmmword_183E21650;
    }

    *(&v94.__end_ + 4) = v28;
    BYTE4(v94.__end_cap_.__value_) = 0;
    v95 = xmmword_183E21660;
    v96 = 0;
    v97 = xmmword_183E21670;
    v98 = 0;
    v99 = xmmword_183E21680;
    v100 = 0;
    v102 = v106;
    v103 = v106;
    v104 = v106;
    v105 = 5;
    X::small_vector_base<VFDEntry>::append<VFDEntry const*>(&v102, &v94, &v101);
    X::small_vector_base<VFDEntry>::move(&v102);
    if (v102 != v104)
    {
      free(v102);
    }
  }
}

void X::small_vector_base<VFDEntry>::move(uint64_t a1)
{
  if (a1 != vfd_table(void)::vfd_table)
  {
    if (vfd_table(void)::vfd_table[0] != off_1EA84E3C8)
    {
      free(vfd_table(void)::vfd_table[0]);
    }

    off_1EA84E3C8 = &xmmword_1EA84E3D8;
    if (*a1 == *(a1 + 16))
    {
      vfd_table(void)::vfd_table[0] = &xmmword_1EA84E3D8;
      v3 = *a1;
      off_1EA84E3C0[0] = (&xmmword_1EA84E3D8 + *(a1 + 8) - *a1);
      v4 = *(a1 + 8);
      if (v3 != v4)
      {
        v5 = &xmmword_1EA84E3D8;
        do
        {
          v6 = *v3;
          *(v5 + 4) = *(v3 + 4);
          *v5 = v6;
          v5 = (v5 + 20);
          v3 = (v3 + 20);
        }

        while (v3 != v4);
      }
    }

    else
    {
      v2 = *(a1 + 8);
      vfd_table(void)::vfd_table[0] = *a1;
      off_1EA84E3C0[0] = v2;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }

    qword_1EA84E3D0 = *(a1 + 24);
  }
}

void ___ZL30initialize_velocity_thresholdsv_block_invoke()
{
  v12 = *MEMORY[0x1E69E9840];
  if (vfd_table(void)::once[0] != -1)
  {
    dispatch_once(vfd_table(void)::once, &__block_literal_global_13_18970);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v6 = v10;
  v7 = v10;
  v8 = v10;
  v9 = 5;
  X::small_vector_base<VFDEntry>::append<VFDEntry const*>(&v6, vfd_table(void)::vfd_table[0], off_1EA84E3C0[0]);
  v0 = 0;
  v1 = v6;
  v2 = v7;
  v3 = v6;
  do
  {
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_9;
      }

      if ((v3[16] & 1) == 0 && *(v3 + 3) == flt_183E21970[v0])
      {
        break;
      }

      v3 += 20;
    }

    *(&velocity_thresholds + v0) = *v3;
    v4 = &velocity_threshold_frame_rate_ranges + 12 * v0;
    v5 = *(v3 + 4);
    *(v4 + 2) = *(v3 + 3);
    *v4 = v5;
LABEL_9:
    ++v0;
  }

  while (v0 != 4);
  has_velocity_thresholds = v3 != v2;
  if (v1 != v8)
  {
    free(v1);
  }
}

_DWORD *CA::Render::GainMapLayer::copy@<X0>(CA::Render::GainMapLayer *this@<X0>, void *a2@<X8>)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x18uLL, 0xDEEC3011uLL);
  if (result)
  {
    result[2] = 1;
    result[3] = 19;
    ++dword_1ED4EAA84;
    *result = &unk_1EF2017B8;
    *(result + 16) = *(this + 16);
  }

  *a2 = result;
  return result;
}

char *CA::Render::GainMapLayer::show(uint64_t a1, X::Stream *this, int a3, char a4)
{
  if (a4)
  {
    result = X::Stream::printf(this, "gain-map-layer");
    v8 = *(a1 + 16);
    if (v8 <= 3)
    {
      return X::Stream::printf(this, " %s", CA::Render::GainMapLayer::show(x_stream_struct *,unsigned int,unsigned int)const::mode_names[v8]);
    }
  }

  else
  {
    X::Stream::printf(this, "(gain-map-layer");
    if (*(a1 + 16) <= 3u)
    {
      X::Stream::printf(this, "\n%*s", 2 * a3 + 2, "");
      X::Stream::printf(this, "(mode %s)", CA::Render::GainMapLayer::show(x_stream_struct *,unsigned int,unsigned int)const::mode_names[*(a1 + 16)]);
    }

    return X::Stream::printf(this, ")");
  }

  return result;
}

_DWORD *CA::CG::ShadowStyle::copy(CA::CG::ShadowStyle *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_type_zone_malloc(malloc_zone, 0x60uLL, 0x165299FDuLL);
  v3 = v2;
  if (v2)
  {
    *v2 = &unk_1EF201148;
    v4 = *(this + 3);
    v2[2] = 0;
    v2[3] = v4;
    *(v2 + 2) = CGStyleRetain();
    v5 = *(this + 56);
    v6 = *(this + 24);
    *(v3 + 10) = *(this + 40);
    *(v3 + 6) = v6;
    *(v3 + 14) = v5;
    v3[18] = *(this + 18);
    v3[2] = 1;
    *v3 = &unk_1EF2025C0;
    v3[19] = *(this + 19);
    *(v3 + 10) = *(this + 10);
    *(v3 + 44) = *(this + 44);
  }

  return v3;
}

float32x2_t *CA::CG::ShadowStyle::expand_layer_roi(float32x2_t *this, float64x2_t *a2, double a3, double a4, double a5, double a6, float64x2_t a7)
{
  v7 = *a2;
  v8 = a2[1];
  a7.f64[0] = a2[1].f64[1];
  if (v8.f64[0] <= a7.f64[0])
  {
    v9 = a2[1].f64[1];
  }

  else
  {
    v9 = a2[1].f64[0];
  }

  v10 = v9 < 1.79769313e308;
  v11 = a2[1];
  v12 = *a2;
  if (v10)
  {
    if (v8.f64[0] >= a7.f64[0])
    {
      v13 = a2[1].f64[1];
    }

    else
    {
      v13 = a2[1].f64[0];
    }

    v14 = v13 <= 0.0;
    v11 = a2[1];
    v12 = *a2;
    if (!v14)
    {
      v11.f64[0] = this[9].f32[1] * -2.8 + -1.0;
      v12 = vaddq_f64(v7, vdupq_lane_s64(*&v11.f64[0], 0));
      v11.f64[0] = v11.f64[0] * -2.0;
      *v15.i64 = v11.f64[0] + v8.f64[0];
      v11.f64[0] = v11.f64[0] + a7.f64[0];
      a7.f64[0] = fmin(*v15.i64, v11.f64[0]);
      v15.i64[1] = *&v11.f64[0];
      v11.f64[0] = 0.0;
      v11 = vandq_s8(v15, vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v11, a7)).i64[0], 0));
    }
  }

  v16 = vsubq_f64(v12, vcvtq_f64_f32(this[10]));
  v17 = vclezq_f64(v8);
  v18 = vclezq_f64(v11);
  v19 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v18, v17), vzip2q_s64(v18, v17))));
  if (v19.i8[4])
  {
    if (v19.i8[0])
    {
      return this;
    }

LABEL_16:
    *a2 = v16;
    a2[1] = v11;
    return this;
  }

  if ((v19.i8[0] & 1) == 0)
  {
    v20 = vaddq_f64(v16, v11);
    v16 = vminnmq_f64(v7, v16);
    v11 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v7, v8), v20), v16);
    goto LABEL_16;
  }

  return this;
}

void CA::CG::ShadowStyle::matrix_changed(CA::CG::ShadowStyle *this)
{
  Data = CGStyleGetData();
  v4 = *(this + 3);
  v3 = *(this + 4);
  v6 = *(this + 5);
  v5 = *(this + 6);
  v7 = v5 * v4 + v6 * v3;
  if (v7 < 0.0)
  {
    v7 = -v7;
  }

  v8 = sqrtf(v7);
  if (v7 != 1.0)
  {
    v7 = v8;
  }

  v9 = Data[5] * 0.5 * v7;
  v10 = 0.0;
  v11 = fmaxf(v9, 0.0);
  *(this + 19) = v11;
  v12 = Data[2] * 0.0174532925;
  v13 = Data[1] * 0.0174532925;
  if (v13 <= 1.5691)
  {
    if (v13 >= 0.0017453)
    {
      v14 = Data[4];
      v10 = v14 / tanf(v13);
    }

    else
    {
      v10 = INFINITY;
    }
  }

  v15 = __sincosf_stret(v12);
  v16 = -(v10 * v15.__cosval);
  v17 = -(v10 * v15.__sinval);
  v18 = v6 * v17 + v4 * v16;
  v19 = v5 * v17 + v3 * v16;
  *(this + 20) = v18;
  *(this + 21) = v19;
  if (*(this + 88) == 1)
  {
    *(this + 20) = truncf(v18);
    *(this + 21) = truncf(v19);
    if (v11 < 0.25 && v18 == 0 && v19 == 0)
    {
      *(this + 89) = 1;
    }

    *(this + 19) = ceilf(v11 + v11) * 0.5;
  }
}

void CA::CG::ShadowStyle::~ShadowStyle(CA::CG::Renderer **this, const void *a2)
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

uint64_t CA::CG::AccelRenderer::start_command_buffer(uint64_t this)
{
  if (!*(this + 4280))
  {
    return (*(**(this + 8) + 184))(*(this + 8), 0, "whippet");
  }

  return this;
}

uint64_t CA::CG::AccelRenderer::synchronize_attributes(CA::CG::AccelRenderer *this, float a2)
{
  result = *(this + 539);
  if (result)
  {
    return (*(*result + 72))(a2);
  }

  return result;
}

void CA::CG::AccelRenderer::~AccelRenderer(CA::CG::AccelRenderer *this)
{
  CA::CG::AccelRenderer::~AccelRenderer(this);

  JUMPOUT(0x1865EA9A0);
}

{
  *this = &unk_1EF2018C0;
  v2 = *(this + 1);
  if (v2)
  {
    if (*(this + 325))
    {
      (*(**(this + 324) + 912))(*(this + 324));
      *(this + 325) = 0;
    }

    CA::CG::Renderer::end_rendering(this);
    v3 = *(this + 1);
    if (v3)
    {
      v4 = mach_absolute_time();
      *(v3 + 648) = CATimeWithHostTime(v4);
    }

    CA::CG::Renderer::update_finished_seed(this);
    v5 = (this + 1440);
    v6 = 6;
    do
    {
      CA::OGL::Mosaic::purge(v5);
      v5 = (v5 + 192);
      --v6;
    }

    while (v6);
    v7 = this + 2720;
    v8 = 24;
    do
    {
      v9 = *v7;
      if (*v7 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v9 + 16))(v9);
      }

      *v7 = 0;
      *(v7 + 3) = 0;
      v7 += 64;
      --v8;
    }

    while (v8);
    v10 = *(this + 1);
    if (v10)
    {
      (*(*v10 + 272))(v10, 1);
    }

    *(this + 1) = 0;
  }

  (*(*v2 + 8))(v2);
  v11 = *(this + 536);
  if (v11)
  {
    *v11 = 0;
    *(this + 536) = 0;
  }

  CA::CG::Renderer::~Renderer(this);
}

void CA::CG::AccelRenderer::AccelRenderer(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1EF1F4098;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if ((a1 + 32) != CA::Mat2Impl::mat2_identity_double)
  {
    *(a1 + 32) = xmmword_183E20E00;
    *(a1 + 48) = xmmword_183E20E60;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  *(a1 + 80) = 0x3FF0000000000000;
  if ((a1 + 88) != CA::Mat2Impl::mat2_identity_double)
  {
    *(a1 + 88) = xmmword_183E20E00;
    *(a1 + 104) = xmmword_183E20E60;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
  }

  v2 = 0;
  *(a1 + 136) = 0xFFFFFFFE00000000;
  *(a1 + 152) = 1;
  do
  {
    v3 = a1 + v2;
    *(v3 + 160) = 0;
    *(v3 + 168) = 0;
    v2 += 16;
  }

  while (v2 != 128);
  *(a1 + 288) = 0;
  *(a1 + 808) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 1312) = 128;
  operator new[]();
}

void ___ZN2CA2CG13AccelRenderer20add_suspend_observerEv_block_invoke()
{
  CA::Render::add_observer(0x31u, 0, CA::CG::AccelRenderer::will_suspend, 0, 0);
  CA::Render::add_observer(0x32u, 0, CA::CG::AccelRenderer::will_suspend, 0, 0);

  CA::Render::add_observer(0x30u, 0, CA::CG::AccelRenderer::will_suspend, 0, 0);
}

void CA::CG::AccelRenderer::will_suspend(CA::CG::AccelRenderer *this, CA::Render::Object *a2, void *a3, void *a4)
{
  if (CA::CG::Queue::queue(void)::once != -1)
  {
    dispatch_once_f(&CA::CG::Queue::queue(void)::once, 0, CA::CG::Queue::create_queue);
  }

  v5 = CA::CG::Queue::_queue;

  dispatch_sync_f(v5, 0, CA::CG::AccelRenderer::will_suspend_callback);
}

void CA::CG::AccelRenderer::will_suspend_callback(CA::CG::AccelRenderer *this, void *a2)
{
  while (1)
  {
    os_unfair_lock_lock(&CA::CG::AccelRenderer::_list_lock);
    v2 = CA::CG::AccelRenderer::_list;
    if (!CA::CG::AccelRenderer::_list)
    {
      break;
    }

    v3 = &CA::CG::AccelRenderer::_list;
    while (atomic_load((v2 + 4228)))
    {
      v5 = *v3;
      v3 = (*v3 + 4320);
      v2 = *(v5 + 4320);
      if (!v2)
      {
        goto LABEL_9;
      }
    }

    *v3 = *(v2 + 4320);
    os_unfair_lock_lock((v2 + 4272));
    if (*(v2 + 4312))
    {
      CA::CG::AccelRenderer::detach_surface(v2, 1);
    }

    (*(*v2 + 8))(v2);
    os_unfair_lock_unlock(&CA::CG::AccelRenderer::_list_lock);
  }

LABEL_9:

  os_unfair_lock_unlock(&CA::CG::AccelRenderer::_list_lock);
}

void CA::CG::AccelRenderer::detach_surface(CFTypeRef *this, int a2)
{
  if (this[539])
  {
    CA::CG::Renderer::end_rendering(this);
    if (!*(this + 1070))
    {
      (*(*this[1] + 40))(this[1], 0, 0, 0);
      if (a2)
      {
        v4 = this[1];
        v5 = (*(*this[539] + 24))(this[539]);
        (*(*v4 + 48))(v4, v5);
      }
    }

    v6 = this[538];
    if (v6)
    {
      IOSurfaceUnlock(v6, 0, 0);
      CFRelease(this[538]);
      this[538] = 0;
    }

    this[539] = 0;
  }
}

uint64_t CA::CG::AccelRenderer::acquire(CA::CG::AccelRenderer *this, CA::CG::AccelDrawable *a2, CA::CG::AccelRenderer **a3, int a4, char a5, __CFString *a6, const __CFString *a7)
{
  v72 = *MEMORY[0x1E69E9840];
  v10 = objc_autoreleasePoolPush();
  if ((CAMetalContextIsWhippetEnabled::initialized & 1) == 0)
  {
    CAMetalContextIsWhippetEnabled::whippet_enabled = 1;
    keyExistsAndHasValidFormat = 0;
    v11 = *MEMORY[0x1E695E8A8];
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CAEnableMetalWhippet", *MEMORY[0x1E695E8A8], &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      CAMetalContextIsWhippetEnabled::whippet_enabled = AppBooleanValue != 0;
    }

    v13 = objc_autoreleasePoolPush();
    v14 = v13;
    if (CAMetalContextAllowDynamicBackend(void)::initialized == 1)
    {
      v15 = CAMetalContextAllowDynamicBackend(void)::allow_dynamic_backend;
      objc_autoreleasePoolPop(v13);
      if (v15)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v19 = CFPreferencesGetAppBooleanValue(@"CADynamicBackendSwitching", v11, 0) != 0;
    CAMetalContextAllowDynamicBackend(void)::allow_dynamic_backend = v19;
    CAMetalContextAllowDynamicBackend(void)::initialized = 1;
    objc_autoreleasePoolPop(v14);
    if (!v19)
    {
LABEL_6:
      CAMetalContextIsWhippetEnabled::initialized = 1;
    }
  }

LABEL_7:
  v16 = CAMetalContextIsWhippetEnabled::whippet_enabled;
  objc_autoreleasePoolPop(v10);
  v17 = *a2;
  if (*a2)
  {
    if (os_unfair_lock_trylock((v17 + 4272)))
    {
      if (*(v17 + 4288) == a2 && *(v17 + 4312) == this && (!a3 || *(v17 + 144) == a3) && (((*(v17 + 4280) == 0) ^ v16) & 1) == 0)
      {
        *(v17 + 4276) = 1;
        goto LABEL_114;
      }

      os_unfair_lock_unlock((v17 + 4272));
    }

    *a2 = 0;
  }

  v18 = &CA::CG::AccelRenderer::_list_lock;
  os_unfair_lock_lock(&CA::CG::AccelRenderer::_list_lock);
  v17 = CA::CG::AccelRenderer::_list;
  if (!CA::CG::AccelRenderer::_list)
  {
    goto LABEL_30;
  }

  while ((*(v17 + 4276) & 1) != 0)
  {
LABEL_20:
    v17 = *(v17 + 4320);
    if (!v17)
    {
      v18 = &CA::CG::AccelRenderer::_list_lock;
      goto LABEL_30;
    }
  }

  v18 = (v17 + 4272);
  os_unfair_lock_lock((v17 + 4272));
  if (*(v17 + 4312) != this)
  {
    os_unfair_lock_unlock((v17 + 4272));
    goto LABEL_20;
  }

  v20 = *(v17 + 4288);
  if (v20)
  {
    *v20 = 0;
    *(v17 + 4288) = 0;
  }

  if ((!a3 || *(v17 + 144) == a3) && (((*(v17 + 4280) == 0) ^ v16) & 1) == 0)
  {
    *(v17 + 4288) = a2;
    *a2 = v17;
    *(v17 + 4276) = 1;
    *(*(v17 + 8) + 792) = a4;
    os_unfair_lock_unlock(&CA::CG::AccelRenderer::_list_lock);
    return v17;
  }

  os_unfair_lock_unlock(&CA::CG::AccelRenderer::_list_lock);
  CA::CG::AccelRenderer::detach_surface(v17, 0);
LABEL_30:
  os_unfair_lock_unlock(v18);
  if (a5)
  {
    return 0;
  }

  v21 = (*(this + 16) | 1u);
  os_unfair_lock_lock(&CA::CG::AccelRenderer::_list_lock);
  v17 = CA::CG::AccelRenderer::_list;
  if (!CA::CG::AccelRenderer::_list)
  {
LABEL_43:
    os_unfair_lock_unlock(&CA::CG::AccelRenderer::_list_lock);
    if (v16)
    {
      v23 = CAMetalContextCreate();
      if (v23)
      {
        v24 = v23;
        v25 = CA::OGL::new_metal_context(v23, 0, 13, v21, 0, a6);
        if (v25)
        {
          v26 = *(this + 15);
          if (v26)
          {
            *(v25 + 880) = v26;
          }

          operator new();
        }

        if (x_log_get_cg(void)::once != -1)
        {
          dispatch_once(&x_log_get_cg(void)::once, &__block_literal_global_453);
        }

        v27 = x_log_get_cg(void)::log;
        if (os_log_type_enabled(x_log_get_cg(void)::log, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_183AA6000, v27, OS_LOG_TYPE_ERROR, "failed to create Metal context!\n", buf, 2u);
        }
      }
    }

    if (((*(*this + 40))(this) & 1) == 0)
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v28 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x5210uLL, 0xDEEC3011uLL);
      v29 = v28;
      if (v28)
      {
        bzero(v28, 0x5210uLL);
        CA::OGL::Context::Context(v29);
        *v29 = &unk_1EF201918;
      }

      operator new();
    }

    return 0;
  }

  while ((*(v17 + 4276) & 1) != 0)
  {
LABEL_42:
    v17 = *(v17 + 4320);
    if (!v17)
    {
      goto LABEL_43;
    }
  }

  os_unfair_lock_lock((v17 + 4272));
  if (a3 && *(v17 + 144) != a3)
  {
    goto LABEL_41;
  }

  v22 = *(v17 + 4280);
  if (v16 && !v22)
  {
    if (*(*(v17 + 8) + 872) == v21)
    {
      goto LABEL_62;
    }

    goto LABEL_41;
  }

  if (v22 != 1 || ((*(*this + 40))(this) & 1) != 0)
  {
LABEL_41:
    os_unfair_lock_unlock((v17 + 4272));
    goto LABEL_42;
  }

LABEL_62:
  v30 = *(v17 + 4288);
  if (v30)
  {
    *v30 = 0;
  }

  *(v17 + 4288) = a2;
  *a2 = v17;
  os_unfair_lock_unlock(&CA::CG::AccelRenderer::_list_lock);
  if (*(v17 + 4312) == this)
  {
    goto LABEL_113;
  }

  v31 = *(v17 + 8);
  if ((*(v31 + 1384) & 0x80) != 0)
  {
    v32 = mach_absolute_time();
    v33 = CATimeWithHostTime(v32);
    CARecordFrame(*(v31 + 1256), *(v31 + 1264), *(v31 + 1268), 1, v33, 0.0, *(v31 + 1280));
    v34 = *(v17 + 8);
    *(v34 + 1256) = 0;
    x_hash_table_remove_all(*(v34 + 696));
    *(v34 + 704) = 0;
    *(v34 + 1264) = *(v34 + 672) == *(v34 + 680);
    *(v34 + 1268) = 0u;
    *(v34 + 1284) = 0;
    *(v34 + 1384) &= 0xFC7Fu;
    *(v34 + 1296) = 0u;
    *(v34 + 1312) = 0u;
    *(v34 + 1328) = 0u;
    *(v34 + 1344) = 0u;
    *(v34 + 1360) = 0;
  }

  v35 = *(v17 + 4280);
  if (v35 == 1)
  {
    v37 = (*(*this + 24))(this);
    if (*(v17 + 4304) == v37)
    {
      goto LABEL_95;
    }

    v38 = v37;
    CA::CG::AccelRenderer::unlock_surface(v17);
    if (v38)
    {
      *(v17 + 4304) = v38;
      CFRetain(v38);
      IOSurfaceLock(v38, 0, 0);
      BaseAddress = IOSurfaceGetBaseAddress(v38);
      BytesPerRow = IOSurfaceGetBytesPerRow(v38);
      v41 = BytesPerRow;
      v42 = *(this + 4);
      if (v42 <= 8)
      {
        if (v42 != 1)
        {
          if (v42 != 3)
          {
            if (v42 == 5)
            {
              v43 = 0;
              v44 = 0;
              v45 = 15;
              goto LABEL_91;
            }

            goto LABEL_84;
          }

          v43 = 0;
          v44 = 0;
          v45 = 32;
LABEL_91:
          if (BaseAddress)
          {
            v46 = *(this + 9);
            v47 = *(this + 10);
            v48 = *(this + 13);
            v49 = *(this + 14);
          }

          else
          {
            v46 = 0;
            v47 = 0;
            v48 = 0;
            v49 = 0;
          }

          goto LABEL_94;
        }

        v45 = 32;
LABEL_87:
        v43 = BytesPerRow;
        v44 = BaseAddress;
        goto LABEL_91;
      }

      switch(v42)
      {
        case 9:
          v46 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v45 = 0;
          v43 = BytesPerRow;
          v44 = BaseAddress;
          v41 = 0;
          BaseAddress = 0;
          goto LABEL_94;
        case 10:
          v43 = 0;
          v44 = 0;
          v45 = 8;
          goto LABEL_91;
        case 18:
          v45 = 16;
          goto LABEL_87;
      }
    }

LABEL_84:
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v43 = 0;
    v41 = 0;
    v44 = 0;
    BaseAddress = 0;
    v45 = 0;
LABEL_94:
    (*(**(v17 + 8) + 1144))(*(v17 + 8), BaseAddress, v41, v45, v44, v43, v46, v47, __PAIR64__(v49, v48));
    goto LABEL_95;
  }

  if (v35)
  {
    goto LABEL_95;
  }

  CA::CG::Renderer::end_rendering(v17);
  v36 = (*(**(v17 + 8) + 232))(*(v17 + 8), 32) != 0;
  if (!(*(*this + 48))(this, *(v17 + 8), v36))
  {
    os_unfair_lock_unlock((v17 + 4272));
    return 0;
  }

  (*(**(v17 + 8) + 104))(*(v17 + 8), 0, (*(this + 12) - *(this + 14)));
  if (!*(v17 + 4296))
  {
    *(v17 + 4296) = (*(**(v17 + 8) + 232))(*(v17 + 8), 7);
  }

LABEL_95:
  v66 = *(this + 36);
  v69 = *(this + 52);
  CA::CG::Renderer::end_rendering(v17);
  *&v50 = v66;
  *(&v50 + 1) = v69;
  *(v17 + 16) = v50;
  v51 = *(v17 + 8);
  if (v51)
  {
    *(v51 + 608) = v50;
    v52 = *(this + 3);
    if (*(v51 + 560) != v52)
    {
      CA::OGL::Context::set_colorspace(v51, *(this + 3));
      v53 = CGColorSpaceUsesExtendedRange(v52);
      *(CA::OGL::Context::color_program_cache(*(v17 + 8)) + 85) = !v53;
      CA::OGL::Mosaic::purge((v17 + 1632));
      CA::OGL::Mosaic::purge((v17 + 1824));
      CA::OGL::Mosaic::purge((v17 + 2016));
      CA::OGL::Mosaic::purge((v17 + 2208));
      CA::OGL::Mosaic::purge((v17 + 2400));
    }
  }

  if (*(v17 + 80) != 1.0)
  {
    __asm { FMOV            V0.2D, #1.0 }

    *(v17 + 80) = _Q0;
    *(v17 + 96) = 0;
    *(v17 + 104) = 0;
    *(v17 + 120) = 0;
    *(v17 + 128) = 0;
    *(v17 + 112) = 0x3FF0000000000000;
  }

  if (*(this + 69))
  {
    v59 = 4;
  }

  else
  {
    v59 = 0;
  }

  *(v17 + 4224) = *(v17 + 4224) & 0xF9 | v59;
  *(v17 + 4312) = this;
  if (((*(this + 4) < 0x24uLL) & (0xC99B4EB03uLL >> *(this + 4))) != 0)
  {
    v60 = 4;
  }

  else
  {
    v60 = 0;
  }

  *(*(v17 + 8) + 1384) = *(*(v17 + 8) + 1384) & 0xFFFB | v60;
  v61 = *(this + 4);
  v62 = *(v17 + 8);
  v63 = *(v62 + 1384) & 0x8FFF;
  switch(v61)
  {
    case 18:
      v63 |= 0x2000u;
      break;
    case 10:
      v63 |= 0x3000u;
      break;
    case 9:
      v63 |= 0x1000u;
      break;
  }

  *(v62 + 1384) = v63;
LABEL_113:
  *(v17 + 4276) = 1;
LABEL_114:
  *(*(v17 + 8) + 792) = a4;
  return v17;
}

void CA::CG::AccelRenderer::unlock_surface(CA::CG::AccelRenderer *this)
{
  v2 = *(this + 538);
  if (v2)
  {
    v3 = this + 4304;
    IOSurfaceUnlock(v2, 0, 0);
    CFRelease(*v3);
    *v3 = 0;
    *(v3 + 1) = 0;
  }
}

void *CA::CG::MosaicDelegate_::synchronize(void *this, unsigned int a2)
{
  v2 = this[1];
  if (*(v2 + 156) < a2)
  {
    this = *(v2 + 8);
    if (this)
    {
      this = (*(*this + 464))(this);
      v3 = *(v2 + 152);
      *(v2 + 152) = v3 + 1;
      *(v2 + 156) = v3;
      v4 = *(v2 + 8);
      *(v4 + 636) = v3 + 1;
      *(v4 + 640) = v3;
    }
  }

  return this;
}

void CA::CG::MosaicBitmapDelegate::read(CA::CG::MosaicBitmapDelegate *this, CA::Render *a2, const CA::Bounds *a3, unsigned __int8 *a4, uint64_t a5)
{
  if (a2 > 0x12)
  {
    return;
  }

  v5 = a2;
  if (((1 << a2) & 0x42800) == 0)
  {
    return;
  }

  v10 = *(this + 6);
  if (v10)
  {
    goto LABEL_4;
  }

  v18 = CA::Render::format_rowbytes(a2, *(this + 6));
  v19 = *(this + 7);
  if (!is_mul_ok(v18, v19))
  {
    return;
  }

  v20 = v18;
  v21 = v18 * v19;
  if (!(v18 * v19))
  {
    return;
  }

  if (v21 <= *(this + 5))
  {
    v10 = *(this + 4);
    bzero(v10, v21);
  }

  else
  {
    v10 = malloc_type_calloc(v21, 1uLL, 0x100004077774924uLL);
    if (!v10)
    {
      return;
    }
  }

  v22 = CAGetCachedCGBitmapContext_(v10, *(this + 6), *(this + 7), v5, v20, *(*(this + 2) + 560));
  if (v22)
  {
    v23 = *(v22 + 2);
    if (v23)
    {
      (*(*this + 56))(this, v23);
      CAReleaseCachedCGContext(v23);
      *(this + 6) = v10;
      *(this + 7) = v20;
LABEL_4:
      switch(v5)
      {
        case 0xBu:
          v11 = *(a3 + 3);
          if (v11 >= 1)
          {
            v12 = *(this + 7);
            v13 = &v10[4 * *a3 + v12 * *(a3 + 1)];
            do
            {
              v14 = *(a3 + 2);
              if (v14 >= 1)
              {
                v15 = 0;
                v16 = v14 + 1;
                do
                {
                  *&a4[v15] = *&v13[v15];
                  --v16;
                  v15 += 4;
                }

                while (v16 > 1);
              }

              v13 += v12;
              a4 += a5;
              v17 = v11-- <= 1;
            }

            while (!v17);
          }

          break;
        case 0x12u:
          v24 = *(a3 + 3);
          if (v24 >= 1)
          {
            v25 = *(this + 7);
            v26 = &v10[2 * *a3 + v25 * *(a3 + 1)];
            v27 = *(a3 + 2);
            do
            {
              if (v27 >= 1)
              {
                v28 = 0;
                v29 = v27 + 1;
                do
                {
                  *&a4[v28] = *&v26[v28];
                  --v29;
                  v28 += 2;
                }

                while (v29 > 1);
              }

              v26 += v25;
              a4 += a5;
              v17 = v24-- <= 1;
            }

            while (!v17);
          }

          break;
        case 0xDu:
          v30 = *(a3 + 3);
          if (v30 >= 1)
          {
            v31 = *(this + 7);
            v32 = &v10[8 * *a3 + v31 * *(a3 + 1)];
            v33 = *(a3 + 2);
            do
            {
              if (v33 >= 1)
              {
                v34 = 0;
                v35 = v33 + 1;
                do
                {
                  *&a4[v34] = *&v32[v34];
                  --v35;
                  v34 += 8;
                }

                while (v35 > 1);
              }

              v32 += v31;
              a4 += a5;
              v17 = v30-- <= 1;
            }

            while (!v17);
          }

          break;
      }

      return;
    }
  }

  if (v10 != *(this + 4))
  {

    free(v10);
  }
}

void CA::CG::DrawOp::draw_color(CA::CG::DrawOp *this, CA::CG::Renderer *a2)
{
  v187 = *MEMORY[0x1E69E9840];
  v3 = *(this + 10);
  if (!v3)
  {
    v16 = *(a2 + 1);
    v17 = *(*(v16 + 656) + 8);
    v163 = 0uLL;
    CA::OGL::emit_combine(v16, 0, 0, 0, v17, &v163);
    return;
  }

  v4 = *v3;
  IsColored = CGPatternIsColored();
  v6 = IsColored;
  v7 = *(a2 + 1);
  v8 = *(v3 + 72);
  if (IsColored)
  {
    v9 = *&v8 == 0x3C003C003C003C00;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = *(v7 + 16);
    v11 = vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(v10[1]), vcvtq_f32_f16(v8)));
    if (*&v10[1] != 0x3C003C003C003C00)
    {
      v8 = v11;
    }

    v10[1] = v8;
  }

  v12 = *(v3 + 8);
  v13 = *(v3 + 24);
  *v161 = v12;
  *&v161[16] = v13;
  v14 = *(v3 + 40);
  v162 = v14;
  v15 = *(a2 + 10);
  if (v15 == 1.0)
  {
    v156 = v12;
  }

  else
  {
    v13 = vmulq_n_f64(v13, v15);
    v156 = vmulq_n_f64(v12, v15);
    *v161 = v156;
    *&v161[16] = v13;
    v14 = vmulq_n_f64(v14, v15);
    v162 = v14;
  }

  v153 = v13.f64[1];
  v154 = v13;
  v155 = v14;
  v18 = v14.f64[1];
  Type = CGPatternGetType();
  if (!Type)
  {
    CGPatternGetBounds();
    v21 = v20;
    v23 = v22;
    v24 = (*(*v7 + 232))(v7, 4);
    CGPatternGetStep();
    v26 = v25;
    v28 = v27;
    CGPatternGetMatrix();
    v29 = vmlaq_n_f64(vmulq_n_f64(v156, v163.f64[0]), v154, v163.f64[1]);
    v30 = vmlaq_n_f64(vmulq_n_f64(v156, v164.f64[0]), v154, v164.f64[1]);
    v31 = vmlaq_n_f64(vmlaq_n_f64(v155, v156, v165.f64[0]), v154, v165.f64[1]);
    v182 = 0;
    v180 = 0u;
    v181 = 0u;
    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    v173 = 0u;
    CA::Transform::set_affine(&v173, v29.f64[0], v29.f64[1], v30.f64[0], v30.f64[1], v31.f64[0], v31.f64[1]);
    v35 = v24 < v21 || v24 < v23 || v21 > v26 || v23 > v28;
    if (v35 || (v182 & 0x10) != 0 && !CA::Mat4Impl::mat4_is_rectilinear(&v173, v32))
    {
      goto LABEL_27;
    }

    v55 = *(v7 + 648);
    if (CGPatternGetImage())
    {
      CachingFlags = CGImageGetCachingFlags();
      v57 = 0.1;
      if (CachingFlags != 1)
      {
        v57 = 1.0;
      }

      v58 = v57 + v55;
    }

    else
    {
      v58 = v55 + 1.0;
    }

    v160[0] = v156;
    v160[1] = v154;
    v160[2] = v155;
    v67 = CA::Render::Pattern::new_pattern(v4, *(v7 + 560), v160, 0xC, v58);
    if (!v67)
    {
      return;
    }

    v68 = v67;
    v69 = *(v67 + 16);
    v70 = CA::OGL::Context::color_program_cache(v7);
    v71 = CA::ColorProgram::Cache::push_whippet_cache(v70, *(v69 + 56), *(v69 + 64), *(v3 + 80), 0, 0);
    v152 = *(v3 + 56);
    v159 = v152;
    v74 = *(*(a2 + 1) + 672);
    if (v74)
    {
      v75 = v74 + 12;
      v76 = v74 + 13;
      v77 = v74 + 14;
      v78 = v74 + 15;
    }

    else
    {
      v75 = (a2 + 16);
      v76 = (a2 + 20);
      v77 = (a2 + 24);
      v78 = (a2 + 28);
    }

    v95.f64[0] = v153;
    v96 = *v78;
    v97 = *v77;
    v98 = *v75;
    if (v97 <= v96)
    {
      v99 = v96;
    }

    else
    {
      v99 = v97;
    }

    v72.i32[0] = 1073741822;
    v73.i32[0] = v99;
    v100.i64[0] = v98;
    v100.i64[1] = *v76;
    v101 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v73, v72), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v100));
    if (v99 <= 1073741822)
    {
      v102 = v97;
    }

    else
    {
      v102 = 1.79769313e308;
    }

    if (v99 <= 1073741822)
    {
      v103 = v96;
    }

    else
    {
      v103 = 1.79769313e308;
    }

    v104 = *&v161[8];
    v105.f64[1] = *&v161[16];
    v105.f64[0] = v153;
    v185 = v101;
    v106 = vdupq_lane_s64(*&v161[8], 0);
    *&v106.f64[0] = v156.n128_u64[0];
    v186.f64[0] = v102;
    v186.f64[1] = v103;
    v107 = vmulq_f64(v105, v106);
    v108 = vsubq_f64(v107, vdupq_laneq_s64(v107, 1)).f64[0];
    if (v108 == 0.0)
    {
      v114 = 0uLL;
      v115 = 0uLL;
      v111 = 0uLL;
    }

    else
    {
      v109 = 1.0 / v108;
      v110 = vmulq_n_f64(*&v161[8], v109);
      *&v95.f64[1] = v156.n128_u64[0];
      v115 = vmulq_n_f64(v95, v109);
      v111.f64[0] = v115.f64[0];
      v111.f64[1] = -v110.f64[0];
      v112 = -v110.f64[1];
      v113 = vmulq_f64(v155, v110);
      v114 = vmlsq_f64(vextq_s8(v113, v113, 8uLL), v115, v155);
      v115.f64[0] = v112;
    }

    if (v102 <= v103)
    {
      v116 = v103;
    }

    else
    {
      v116 = v102;
    }

    if (v116 < 1.79769313e308)
    {
      v117 = vmlaq_laneq_f64(vmulq_n_f64(v111, v101.f64[0]), v115, v101, 1);
      v118 = vmulq_n_f64(v111, v102);
      v119 = vaddq_f64(v117, v118);
      v120 = vminnmq_f64(v117, v119);
      v121 = vmaxnmq_f64(v117, v119);
      v122 = vmlaq_n_f64(v117, v115, v103);
      v123 = vaddq_f64(v122, v118);
      v124 = vminnmq_f64(v120, vminnmq_f64(v122, v123));
      v185 = vaddq_f64(v124, v114);
      v186 = vsubq_f64(vmaxnmq_f64(v121, vmaxnmq_f64(v122, v123)), v124);
    }

    v125 = *(v7 + 16);
    v127 = 1;
    if (*(v125 + 14) == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
    {
      v126 = *(v68 + 128);
      if (v126)
      {
        if ((*(v126 + 13) & 0x10) != 0 && *(v68 + 96) <= *(v68 + 80) && *(v68 + 104) <= *(v68 + 88))
        {
          v127 = 0;
        }
      }
    }

    if ((*(v125 + 497) & 1) != 0 && ((v128 = *(v125 + 496), v128 < 2) || v128 == 3 && !v127))
    {
      *(v125 + 497) &= ~1u;
      v129 = 1;
    }

    else
    {
      v129 = 0;
    }

    v130 = v104;
    Tiling = CGPatternGetTiling();
    v132 = v156.n128_f64[0];
    if (!Tiling)
    {
      goto LABEL_137;
    }

    if ((*(v68 + 12) & 0x100) == 0)
    {
      goto LABEL_113;
    }

    v134 = *(v68 + 16);
    if (v134 < 0.0)
    {
      v134 = -v134;
    }

    v135 = -v156.n128_f64[0];
    if (v156.n128_f64[0] >= 0.0)
    {
      v135 = v156.n128_f64[0];
    }

    v9 = v134 == v135;
    v136 = *&v130;
    if (!v9)
    {
      goto LABEL_130;
    }

    v137 = *(v68 + 24);
    if (v137 < 0.0)
    {
      v137 = -v137;
    }

    v138 = -*&v130;
    if (*&v130 >= 0.0)
    {
      v138 = *&v130;
    }

    if (v137 != v138)
    {
      goto LABEL_130;
    }

    v139 = *(v68 + 32);
    if (v139 < 0.0)
    {
      v139 = -v139;
    }

    v140 = -*(&v130 + 1);
    if (*(&v130 + 1) >= 0.0)
    {
      v140 = *(&v130 + 1);
    }

    if (v139 != v140)
    {
LABEL_130:
      v133 = 1;
LABEL_147:
      CA::Transform::set_affine(&v163, v132, v136, *(&v130 + 1), v153, v155.f64[0], v18);
      CA::OGL::fill_pattern_rect(v7, v68, &v185, &v159, &v163, CA::RectTraits<double>::infinity, 1u, 1, 0.0, 0, v133);
LABEL_148:
      if (v129)
      {
        *(*(v7 + 16) + 497) |= 1u;
      }

      if (v71)
      {
        v150 = CA::OGL::Context::color_program_cache(v7);
        CA::ColorProgram::Cache::pop_whippet_cache(v150);
      }

      if (atomic_fetch_add((v68 + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v68 + 16))(v68);
      }

      return;
    }

    v141 = *(v68 + 40);
    if (v141 < 0.0)
    {
      v141 = -v141;
    }

    v142 = -v153;
    if (v153 >= 0.0)
    {
      v142 = v153;
    }

    if (v141 == v142)
    {
LABEL_137:
      if ((*(v68 + 12) & 0x300) == 0x100)
      {
        if ((*(*v7 + 648))(v7, *(v68 + 128), 1, v156))
        {
          v146 = (*(v7 + 872) << 10) & 0x800 ^ (CA::CG::mat2_filter_bits(v161, v143, v144, v145) | 0x1000);
          if (*(*(v7 + 16) + 497))
          {
            v147 = v146 | 0x100;
          }

          else
          {
            v147 = v146;
          }

          v184 = 0uLL;
          v183 = 0uLL;
          v148 = CA::OGL::Context::bind_image(v7, 0, *(v68 + 128), v147, 1u, 1, 1, 0, 0.0, &v184, 0);
          if (v148)
          {
            v149 = v148;
            CA::OGL::pattern_texcoords(v68, v184.f32, &v183, v185, v186, v152);
            v171 = 0u;
            memset(v172, 0, 56);
            v169 = 0u;
            v170 = 0u;
            v167 = 0u;
            v168 = 0u;
            v165 = 0u;
            v166 = 0u;
            v163 = 0u;
            v164 = 0u;
            CA::Transform::set_affine(&v163, v156.n128_f64[0], *&v130, *(&v130 + 1), v153, v155.f64[0], v18);
            *(&v172[0] + 1) = &v185;
            *&v172[1] = &v163;
            memset(&v172[1] + 12, 0, 28);
            DWORD2(v172[1]) = v147;
            CA::OGL::fill_rect_tex(v7, v172 + 8, v183.f32);
            (*(*v7 + 560))(v7, v149, 0);
          }

          goto LABEL_148;
        }

        v133 = 0;
        v132 = v156.n128_f64[0];
      }

      else
      {
        v133 = 0;
      }
    }

    else
    {
LABEL_113:
      v133 = 1;
    }

    v136 = *&v130;
    goto LABEL_147;
  }

  if (Type == 1)
  {
    CGPatternGetMatrix();
    v163 = vmlaq_n_f64(vmulq_n_f64(v156, *v173.i64), v154, *&v173.i64[1]);
    v164 = vmlaq_n_f64(vmulq_n_f64(v156, *&v174), v154, *(&v174 + 1));
    v165 = vmlaq_n_f64(vmlaq_n_f64(v155, v156, *&v175), v154, *(&v175 + 1));
    CGPatternGetShading();
    CA::CG::fill_shading(a2);
    return;
  }

LABEL_27:
  v160[0] = 0uLL;
  CA::Shape::get_bounds(*(*(v7 + 656) + 8), v160);
  v36 = *(v7 + 672);
  if (v36)
  {
    v37 = v36 + 6;
  }

  else
  {
    v37 = (v7 + 608);
  }

  v38 = *(v160 + 8);
  v39 = vclez_s32(*(v160 + 8));
  if ((vpmax_u32(v39, v39).u32[0] & 0x80000000) == 0)
  {
    v40 = v37[1];
    v41 = vclez_s32(v40);
    if ((vpmax_u32(v41, v41).u32[0] & 0x80000000) != 0 || (v42 = vadd_s32(*v37, v40), *&v43 = vmax_s32(*&v160[0], *v37), v38 = vsub_s32(vmin_s32(vadd_s32(*&v160[0], *(v160 + 8)), v42), *&v43), v44 = vclez_s32(v38), (vpmax_u32(v44, v44).u32[0] & 0x80000000) != 0))
    {
      v38 = 0;
      *(&v160[0] + 1) = 0;
    }

    else
    {
      *(&v43 + 1) = v38;
      v160[0] = v43;
    }
  }

  v45 = v38.i32[0];
  v46 = v38.u32[1];
  if (v38.i32[0] >= v38.i32[1])
  {
    v47 = v38.i32[1];
  }

  else
  {
    v47 = v38.i32[0];
  }

  if (v47 >= 1)
  {
    v48 = CA::Render::format_rowbytes(1, v38.u32[0]);
    v49 = v48;
    *&v159.f64[0] = v48;
    v50 = is_mul_ok(v48, v46) ? (v48 * v46) : 0;
    v184.i64[0] = 0;
    v51 = CA::Render::aligned_malloc(v50, &v184, 0);
    if (v51)
    {
      v52 = v51;
      v53 = *(a2 + 1);
      if (v53)
      {
        v54 = *(v53 + 560);
      }

      else
      {
        v54 = 0;
      }

      if (CGColorSpaceGetModel(v54))
      {
        v59 = *(v7 + 560);
      }

      else
      {
        v59 = CAGetColorSpace(36);
      }

      v60 = CAGetCachedCGBitmapContext_(v52, v45, v46, 1u, v49, v59);
      if (v60 && (v62 = v60[2]) != 0)
      {
        CGContextTranslateCTM(v60[2], -LODWORD(v160[0]), -DWORD1(v160[0]));
        v163 = v156;
        v164 = v154;
        v63.i64[0] = SLODWORD(v160[0]);
        v63.i64[1] = SDWORD1(v160[0]);
        v157 = vcvtq_f64_s64(v63);
        v165 = vsubq_f64(v155, v157);
        CGContextSetBaseCTM();
        CGContextSetCompositeOperation();
        CGContextSetPatternPhase(v62, *(v3 + 56));
        if (v6)
        {
          v64 = 0;
        }

        else
        {
          v64 = CAGetColorSpace(36);
        }

        Pattern = CGColorSpaceCreatePattern(v64);
        v80 = CGColorCreateWithPattern(Pattern, v4, CA::CG::fill_pattern(CA::CG::Renderer &,CA::CG::DeviceColor::Pattern *)::components);
        CGColorSpaceRelease(Pattern);
        CGContextSetFillColorWithColor(v62, v80);
        CGColorRelease(v80);
        if (v45 <= v46)
        {
          v83 = v46;
        }

        else
        {
          v83 = v45;
        }

        v81.i32[0] = 1073741822;
        v82.i32[0] = v83;
        v84 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v82, v81), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), v157);
        if (v83 <= 1073741822)
        {
          v85 = v45;
        }

        else
        {
          v85 = 1.79769313e308;
        }

        if (v83 <= 1073741822)
        {
          v86 = v46;
        }

        else
        {
          v86 = 1.79769313e308;
        }

        v87 = v84.i64[1];
        v158 = v84;
        v88 = v85;
        v89 = v86;
        CGContextFillRect(v62, *v84.i8);
        CAReleaseCachedCGContext(v62);
        v90 = v184.i64[0];
        v91 = CA::Render::Image::new_image(1, v45, v46, 1u, *(v7 + 560), v52, &v159, CA::Render::aligned_free, v184.i64[0], v151);
        if (v91)
        {
          v92 = v91;
          v185 = 0uLL;
          v93 = CA::OGL::Context::bind_image(v7, 0, v91, 256, 0, 0, 0, 0, 0.0, &v185, 0);
          if (v93)
          {
            v94 = v93;
            v173 = v158;
            *&v174 = v85;
            *(&v174 + 1) = v86;
            *&v163.f64[0] = &v173;
            *&v163.f64[1] = &CA::identity_transform;
            v164 = 0u;
            v165 = 0u;
            CA::OGL::fill_rect_tex(v7, &v163, &v185);
            (*(*v7 + 560))(v7, v94, 0);
          }

          if (atomic_fetch_add(v92 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v92 + 16))(v92);
          }

          return;
        }

        v66 = v52;
        v65 = v90;
      }

      else
      {
        v65 = v184.i64[0];
        v66 = v52;
      }

      CA::Render::aligned_free(v66, v65, v61);
    }
  }
}

void CA::CG::DrawOp::draw_shape(CA::CG::DrawOp *this, CA::CG::Renderer *a2)
{
  v4[2] = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 1);
  v3 = *(*(v2 + 656) + 8);
  v4[0] = 0;
  v4[1] = 0;
  CA::OGL::emit_combine(v2, 0, 0, 0, v3, v4);
}

uint64_t CA::CG::DrawOp::color_type(CA::CG::DrawOp *this, CA::CG::Renderer *a2)
{
  v2 = *(this + 10);
  v3 = 9;
  if (v2)
  {
    if (*(this + 14))
    {
      v3 = 10;
    }

    else
    {
      v3 = 9;
    }
  }

  if (*(this + 47) == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) && v2 == 0)
  {
    return v3 | 4;
  }

  else
  {
    return v3;
  }
}

void *CA::CG::DrawOp::styled_op(float16x4_t *a1, const double *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, float32x4_t a8)
{
  if ((a1[12].i8[5] & 0x20) != 0 || *&a1[10])
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v13 = malloc_type_zone_malloc(malloc_zone, 0xA0uLL, 0x165299FDuLL);
    if (v13)
    {
      Color = CGStyleGetColor();
      CA::CG::DrawOp::DrawOp(v13, a2, a1, a4, a5, Color, 2048);
      *v13 = &unk_1EF1FE7C0;
      v13[14] = a1;
      atomic_fetch_add((a3 + 8), 1u);
      v13[15] = a3;
    }
  }

  else
  {
    v13 = 0;
    _H1 = a1[11].i16[2];
    _H2 = a1[11].i16[3];
    __asm { FCVT            S3, H2 }

    v22 = 1.0 / _S3;
    __asm { FCMP            H2, #0 }

    if (_NF ^ _VF | _ZF)
    {
      v22 = 0.0;
    }

    *_Q0.f32 = vmul_n_f32(*&vcvtq_f32_f16(a1[11]), v22);
    __asm { FCVT            S1, H1 }

    _S7 = *(a3 + 120);
    __asm { FMLA            S6, S7, V0.S[1] }

    _Q0.i64[1] = __PAIR64__(LODWORD(_S3), v22 * _S1);
    v28 = vmulq_f32(*(a3 + 76), _Q0);
    v28.f32[0] = vaddv_f32(*&vpaddq_f32(v28, v28));
    v29 = vmulq_f32(*(a3 + 96), _Q0);
    v30 = vaddv_f32(*&vpaddq_f32(v29, v29));
    v31 = (_S6 + (*(a3 + 124) * _Q0.f32[2])) + (*(a3 + 128) * _S3);
    v32 = vmulq_f32(*(a3 + 136), _Q0);
    _S0 = *(a3 + 152) + vaddv_f32(*&vpaddq_f32(v32, v32));
    if (_S0 > 1.0)
    {
      _S0 = 1.0;
    }

    if (_S0 < 0.0)
    {
      _S0 = 0.0;
    }

    _S1 = _S0 * v31;
    v28.f32[1] = v30;
    v35.i32[1] = *(a3 + 112);
    v35.i32[0] = *(a3 + 92);
    *a8.f32 = vmul_n_f32(vadd_f32(*v28.f32, v35), _S0);
    __asm { FCVT            H1, S1 }

    a1[11].i32[0] = vcvt_f16_f32(a8).u32[0];
    __asm { FCVT            H0, S0 }

    a1[11].i16[2] = LOWORD(_S1);
    a1[11].i16[3] = _H0;
  }

  return v13;
}

void *CA::CG::DrawOp::styled_op(uint64_t a1, const double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v10 = malloc_type_zone_malloc(malloc_zone, 0xA0uLL, 0x165299FDuLL);
  if (v10)
  {
    Color = CGStyleGetColor();
    CA::CG::DrawOp::DrawOp(v10, a2, a1, a4, a5, Color, 2048);
    *v10 = &unk_1EF1FED10;
    v10[14] = a1;
    atomic_fetch_add((a3 + 8), 1u);
    v10[15] = a3;
  }

  return v10;
}

{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v10 = malloc_type_zone_malloc(malloc_zone, 0xA0uLL, 0x165299FDuLL);
  if (v10)
  {
    Color = CGStyleGetColor();
    CA::CG::DrawOp::DrawOp(v10, a2, a1, a4, a5, Color, 2112);
    *v10 = &unk_1EF203CE0;
    v10[18] = a1;
    atomic_fetch_add((a3 + 8), 1u);
    v10[19] = a3;
  }

  return v10;
}

float16x4_t *CA::CG::DrawOp::styled_op(uint64_t a1, const double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_malloc(malloc_zone, 0xA0uLL, 0x165299FDuLL);
  if (result)
  {
    return CA::CG::DrawFocusRing::DrawFocusRing(result, a2, a1, a4, a5, a3);
  }

  return result;
}

uint64_t CA::CG::DrawOp::invalidate(CA::CG::DrawOp *this, CA::CG::Renderer *a2)
{
  result = *(this + 13);
  if (result)
  {
    return (*(*result + 16))(result, a2);
  }

  return result;
}

double CA::CG::MosaicDelegate::draw_array(CA::CG::MosaicDelegate *this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(this + 18))
  {
    v4 = 0u;
    v7 = 0u;
    v2 = *(*(this + 82) + 8);
    v5[0] = this;
    v5[1] = v2;
    v6 = 0u;
    v5[2] = 0;
    WORD4(v6) = 0;
    CA::OGL::Context::ClippedArray::start(v5);
    while (CA::OGL::Context::ClippedArray::next_rect(v5, &v4))
    {
      CA::OGL::Context::array_flush(this);
    }

    *(this + 18) = 0;
    *(this + 14) = this + 1386;
    result = 0.0;
    *(this + 120) = xmmword_183E20E50;
  }

  return result;
}

void CA::CG::MosaicBitmapDelegate::~MosaicBitmapDelegate(CA::CG::MosaicBitmapDelegate *this)
{
  *this = &unk_1EF201DF0;
  v2 = *(this + 6);
  if (v2 && v2 != *(this + 4))
  {
    free(v2);
  }

  *this = &unk_1EF203C98;
  CA::CG::MosaicDelegate::draw_array(*(this + 2));
}

void CA::CG::DrawOp::render(CA::CG::DrawOp *this, float64x2_t *a2)
{
  v133 = *MEMORY[0x1E69E9840];
  (*(*this + 24))(this, &v122);
  v7 = a2[5].f64[0];
  if (v7 != 1.0)
  {
    if (v123.f64[0] < 1.79769313e308)
    {
      v122.f64[0] = v122.f64[0] * v7;
      v123.f64[0] = v123.f64[0] * v7;
    }

    if (v123.f64[1] < 1.79769313e308)
    {
      v122.f64[1] = v122.f64[1] * v7;
      v123.f64[1] = v123.f64[1] * v7;
    }
  }

  v8 = vceqzq_f64(v123);
  if ((vorrq_s8(vdupq_laneq_s64(v8, 1), v8).u64[0] & 0x8000000000000000) != 0 || (v9 = vceqq_f64(v123, v123), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v9), 1), v9).u64[0] & 0x8000000000000000) != 0))
  {
    v11.n128_u64[0] = 0;
    v12 = 0;
  }

  else
  {
    v10 = vcvtmq_s64_f64(vmaxnmq_f64(v122, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v11 = vuzp1q_s32(v10, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v122, v123), vdupq_n_s64(0x41C0000000000000uLL))), v10));
    v12 = *&v11.n128_i8[8];
  }

  v13 = *&a2->f64[1];
  v14 = *(v13 + 672);
  if (v14)
  {
    v15 = v14 + 6;
  }

  else
  {
    v15 = (v13 + 608);
  }

  v16 = vclez_s32(v12);
  if ((vpmax_u32(v16, v16).u32[0] & 0x80000000) == 0)
  {
    v17 = v15[1];
    v18 = vclez_s32(v17);
    if ((vpmax_u32(v18, v18).u32[0] & 0x80000000) == 0)
    {
      v19 = *v15;
      v20 = vadd_s32(v11.n128_u64[0], v12);
      v11.n128_u64[0] = vmax_s32(v11.n128_u64[0], *v15);
      v21 = vsub_s32(vmin_s32(v20, vadd_s32(*v15, v17)), v11.n128_u64[0]);
      v22 = vclez_s32(v21);
      if ((vpmax_u32(v22, v22).u32[0] & 0x80000000) == 0)
      {
        *&v11.n128_i8[8] = v21;
        v121 = v11;
        v23 = *(this + 9);
        if (v23)
        {
          v24 = *(v23 + 4);
        }

        else
        {
          v24 = 1;
        }

        if (*(this + 8))
        {
          ++v24;
        }

        if (v24 < 0x21)
        {
          v26 = v132;
        }

        else
        {
          v112 = v11;
          v25 = malloc_type_malloc(8 * v24, 0x2004093837F09uLL);
          v11 = v112;
          v26 = v25;
        }

        v120 = 0;
        *v118 = 0u;
        v119 = 0u;
        v117 = 0u;
        CA::CG::ClipOp::ClipOp(&v117, a2, this, v26, v11, 0.0, *&v21, *&v19, v4, v5, v6);
        v27 = DWORD2(v117);
        if (SDWORD2(v117) >= SHIDWORD(v117))
        {
          v27 = HIDWORD(v117);
        }

        if (v27 <= 0)
        {
          if (v26 == v132)
          {
LABEL_145:
            if (v118[1])
            {
              (*(*v118[1] + 8))(v118[1]);
            }

            if (v119)
            {
              (*(*v119 + 8))(v119);
            }

            if (v118[0])
            {
              CA::Shape::unref(v118[0]);
            }

            return;
          }

          v38 = v26;
LABEL_144:
          free(v38);
          goto LABEL_145;
        }

        if ((this + 8) != &a2[2])
        {
          a2[2] = *(this + 8);
          a2[3] = *(this + 24);
          a2[4] = *(this + 40);
        }

        v28 = a2[5].f64[0];
        if (v28 != 1.0)
        {
          v29 = vmulq_n_f64(a2[3], v28);
          a2[2] = vmulq_n_f64(a2[2], v28);
          a2[3] = v29;
          a2[4] = vmulq_n_f64(a2[4], v28);
        }

        v30 = (*(*this + 128))(this, a2);
        v31 = (*(*this + 136))(this, a2);
        v32 = v31;
        v33 = 3;
        v34 = 3;
        switch(*(this + 14))
        {
          case 0:
            v107 = *(this + 25);
            if ((v107 & 0x200) != 0)
            {
              v33 = 3;
            }

            else
            {
              v33 = 12;
            }

            v34 = (v107 << 22 >> 31) & 9;
            break;
          case 1:
            v108 = (v31 & 4) == 0;
            if (*(this + 47) < COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
              v108 = 1;
            }

            if (v108)
            {
              v33 = 8;
            }

            else
            {
              v33 = 11;
            }

            if (v108)
            {
              v34 = 1;
            }

            else
            {
              v34 = 3;
            }

            break;
          case 3:
            v33 = 0;
            v34 = 4;
            break;
          case 4:
            v33 = 0;
            v34 = 5;
            break;
          case 5:
            v34 = 6;
            break;
          case 6:
            v34 = 7;
            break;
          case 7:
            v33 = 0;
            v34 = 8;
            break;
          case 8:
            v34 = 9;
            break;
          case 9:
            v33 = 0;
            v34 = 10;
            break;
          case 0xA:
            v34 = 11;
            break;
          case 0xB:
            v34 = 26;
            break;
          case 0xC:
            v34 = 12;
            break;
          case 0xD:
            v34 = 28;
            break;
          case 0xE:
            v34 = 16;
            break;
          case 0xF:
            v34 = 29;
            break;
          case 0x10:
            v34 = 30;
            break;
          case 0x11:
            v34 = 31;
            break;
          case 0x12:
            v34 = 32;
            break;
          case 0x13:
            v34 = 33;
            break;
          case 0x14:
            v34 = 34;
            break;
          case 0x15:
            v34 = 35;
            break;
          case 0x16:
            v34 = 36;
            break;
          case 0x17:
            v34 = 20;
            break;
          case 0x18:
            v34 = 53;
            break;
          case 0x19:
            v34 = 54;
            break;
          case 0x1A:
            v34 = 55;
            break;
          case 0x1B:
            v34 = 56;
            break;
          default:
            break;
        }

        v35 = v118[0];
        if (!v118[0])
        {
          v35 = v131;
          CA::Shape::operator=(v131, &v117);
        }

        v36 = *(this + 25);
        if ((v36 & 0x100) != 0)
        {
          v37 = (*(*this + 152))(this, a2);
          v36 = *(this + 25);
        }

        else
        {
          v37 = 0;
        }

        v111 = v26;
        v113 = v34;
        if ((v36 & 0x800) == 0 && ((*(*this + 48))(this, a2, v34) & 1) == 0)
        {
          if (!v120)
          {
LABEL_79:
            v109 = 10255;
            v39 = 1;
LABEL_42:
            if ((v30 & 1) == 0 || (v32 & 2) == 0) && ((v33 & 1) != 0 || !v120 && ((*(*this + 112))(this, a2, v35)))
            {
              if (v120 && v113 == 3 && !v30 && ((v32 & 4) != 0 || (*(*this + 144))(this)) && (*(v13 + 1384) & 4) == 0)
              {
                v40 = *(v13 + 672);
                if (v40)
                {
                  if ((*(v40 + 92) & 8) != 0)
                  {
                    *(*(v13 + 16) + 497) |= 1u;
                    v96 = CA::OGL::copy_gstate(&v124, *(v13 + 656));
                    *v125 = v35;
                    *&v125[8] = v37;
                    v97 = (*(*this + 112))(this, a2, v35, v96);
                    if ((v97 & 1) == 0)
                    {
                      v130 = v130 & 0xFB00 | 0x18;
                      v124 = CA::OGL::Context::set_gstate(v13, &v124);
                      *(*(v13 + 16) + 8) = 0;
                      v114 = 0uLL;
                      CA::OGL::emit_combine(v13, 0, 0, 0, v35, &v114);
                      *(*(v13 + 16) + 8) = 0x3C003C003C003C00;
                      (*(*this + 160))(this, a2);
                      CA::OGL::Context::set_gstate(v13, **(v13 + 656));
                    }

                    v130 = v130 & 0xFB00 | 0x419;
                    v124 = CA::OGL::Context::set_gstate(v13, &v124);
                    CA::CG::ClipOp::draw(&v117, a2);
                    CA::OGL::Context::set_gstate(v13, **(v13 + 656));
                    if ((v32 & 4) != 0)
                    {
                      v98 = 21;
                    }

                    else
                    {
                      v98 = 59;
                    }

                    LOBYTE(v130) = v98;
                    *(*(v13 + 16) + 8) = *(this + 11);
                    v124 = CA::OGL::Context::set_gstate(v13, &v124);
                    (*(*this + 168))(this, a2);
                    CA::OGL::Context::set_gstate(v13, **(v13 + 656));
                    if ((v97 & 1) == 0)
                    {
                      v130 = v130 & 0xFB00 | 0x18;
                      v124 = CA::OGL::Context::set_gstate(v13, &v124);
                      *(*(v13 + 16) + 8) = 0x3C003C003C003C00;
                      v114 = 0uLL;
                      CA::OGL::emit_combine(v13, 0, 0, 0, v35, &v114);
                      CA::OGL::Context::set_gstate(v13, **(v13 + 656));
                    }

                    *(*(v13 + 16) + 497) &= ~1u;
                    goto LABEL_139;
                  }
                }
              }

              if (v32 & 2) == 0 && !v120 && ((v30 & 1) == 0 || (v32 & 4) != 0 && (v33))
              {
                if (v113 >= 0x1A)
                {
                  CA::CG::Renderer::prepare_destination(a2);
                }

                v41 = *(v13 + 656);
                *v125 = *(v41 + 8);
                v42 = *(v41 + 32);
                *&v125[16] = *(v41 + 24);
                *v126 = v42;
                *&v126[8] = *(v41 + 40);
                v127 = *(v41 + 56);
                v43 = *(v41 + 80);
                v128 = *(v41 + 64);
                v129 = *(v41 + 72);
                if ((v33 & 2) == 0)
                {
                  goto LABEL_168;
                }

                if (v35)
                {
                  if (v35 != 1)
                  {
                    goto LABEL_168;
                  }
                }

                else if (*(v35 + 4) == 12)
                {
                  goto LABEL_168;
                }

                if (CA::Shape::contains(v35, &v121))
                {
LABEL_169:
                  *&v125[8] = v37;
                  v130 = v43 & 0x500 | v113;
                  v124 = CA::OGL::Context::set_gstate(v13, &v124);
                  *(*(v13 + 16) + 8) = *(this + 11);
                  *(*(v13 + 16) + 497) |= 1u;
                  (*(*this + 176))(this, a2);
                  *(*(v13 + 16) + 497) &= ~1u;
                  CA::OGL::Context::set_gstate(v13, **(v13 + 656));
                  goto LABEL_139;
                }

LABEL_168:
                *v125 = v35;
                goto LABEL_169;
              }

              v57 = (*(*v13 + 696))(v13, 1, &v117, v109, @"draw-op-render-simplified-composite-surface");
              if (v57)
              {
                v58 = v57;
                *(*(v13 + 16) + 497) &= ~1u;
                v59 = *(v13 + 656);
                v60 = *(v59 + 32);
                *&v125[16] = *(v59 + 24);
                *v126 = v60;
                *&v126[8] = *(v59 + 40);
                v127 = *(v59 + 56);
                v130 = *(v59 + 80) | (HIBYTE(v130) << 8);
                v128 = *(v59 + 64);
                v130 = *(v59 + 80) & 0x100 | v130 & 0xFEFF;
                v130 = v130 & 0xFBFF | *(v59 + 80) & 0x400;
                v129 = *(v59 + 72);
                v110 = v35;
                *v125 = v35;
                *&v125[8] = v37;
                v130 = v130 & 0xFF00 | 0xF;
                v61 = *(v13 + 1384);
                v62 = v61 & 0x7000;
                if ((v61 & 0x7000) == 0x3000)
                {
                  v63 = v61 & 0xAFFF;
                  v61 &= 0xAAAAAAAA;
                  *(v13 + 1384) = v63;
                }

                v64 = v61 >> 12;
                if ((v64 & 4) != 0)
                {
                  v65 = 0;
                }

                else
                {
                  v65 = (0x22231800u >> (8 * (v64 & 7)) << 8) & 0xFF00;
                }

                *(v57 + 144) = v65 | *(v57 + 144) & 0xFFFFC0FF;
                v124 = CA::OGL::Context::set_gstate(v13, &v124);
                CA::OGL::Context::push_surface(v13, v58, 1u, 256, 0);
                v130 &= ~0x400u;
                if ((v30 & 2) != 0)
                {
                  if (v30)
                  {
                    v66 = 18;
                  }

                  else
                  {
                    v66 = 12;
                  }

                  v67 = *(v13 + 16);
                  *(v67 + 496) = v66;
                  *(v67 + 497) |= 1u;
                }

                v68 = v32 & 3 | v30 & 1;
                v69 = v68 == 0;
                if (v68)
                {
                  *(*(v13 + 16) + 8) = 0x3C003C003C003C00;
                  (*(*this + 160))(this, a2);
                }

                else
                {
                  *(*(v13 + 16) + 8) = *(this + 11);
                  (*(*this + 176))(this, a2);
                }

                *(*(v13 + 16) + 497) |= 1u;
                v93 = v130;
                if ((v30 & 2) != 0)
                {
                  *(*(v13 + 16) + 496) = v130;
                }

                v130 = v93 | 0x400;
                if ((v32 & 1) == 0 && v68)
                {
                  *(*(v13 + 16) + 8) = *(this + 11);
                  (*(*this + 168))(this, a2);
                  *(*(v13 + 16) + 497) |= 1u;
                  v69 = 1;
                }

                if (v120)
                {
                  CA::CG::ClipOp::draw(&v117, a2);
                }

                *(*(v13 + 16) + 497) &= ~1u;
                CA::OGL::Context::pop_surface(v13);
                CA::OGL::Context::set_gstate(v13, **(v13 + 656));
                *(v13 + 1384) = *(v13 + 1384) & 0x8FFF | v62;
                if (v113 >= 0x1A)
                {
                  CA::CG::Renderer::prepare_destination(a2);
                }

                v94 = *(v13 + 16);
                *(v94 + 496) = v113;
                *(v94 + 497) |= 1u;
                *(*(v13 + 16) + 8) = 0x3C003C003C003C00;
                if (v69)
                {
                  v95 = 1;
                }

                else
                {
                  *(*(v13 + 16) + 8) = *(this + 11);
                  v95 = 11;
                }

                v114 = 0uLL;
                CA::OGL::emit_combine(v13, v95, v58, 0, v110, &v114);
                *(*(v13 + 16) + 497) &= ~1u;
                *(*(v13 + 16) + 496) = *(*(v13 + 656) + 80);
                v90 = v13;
                v91 = v58;
                goto LABEL_138;
              }

              goto LABEL_139;
            }

            v44 = (v33 & 4 | v32 & 1) == 0;
            if (v33 & 4 | v32 & 1)
            {
              v45 = 10248;
            }

            else
            {
              v45 = 8200;
            }

            if (v39)
            {
              v46 = v45;
            }

            else
            {
              v46 = 8200;
            }

            v47 = (*(*v13 + 696))(v13, 1, &v117, v46, @"draw-op-render-complex-shape");
            v50 = v47;
            v51 = *(v13 + 1384);
            v52 = (v51 >> 12) & 7;
            if (!v47)
            {
LABEL_107:
              if (v44)
              {
                v75 = (*(*v13 + 696))(v13, 1, &v117, v109, @"draw-op-render-color-surface");
                v76 = v75;
                if (v75)
                {
                  v77 = *(v13 + 1384);
                  v78 = v35;
                  if (v52 == 3)
                  {
                    v77 = v77 & 0xFFFF8FFF | 0x2000;
                    *(v13 + 1384) = v77;
                  }

                  v79 = v77 >> 12;
                  v80 = v113;
                  if ((v79 & 4) != 0)
                  {
                    v81 = 0;
                  }

                  else
                  {
                    v81 = (0x22231800u >> (8 * (v79 & 7)) << 8) & 0xFF00;
                  }

                  *(v75 + 144) = v81 | *(v75 + 144) & 0xFFFFC0FF;
                  v82 = *(v13 + 656);
                  *v125 = *(v82 + 8);
                  v83 = *(v82 + 24);
                  v84 = *(v82 + 32);
                  *&v126[8] = *(v82 + 40);
                  v85 = *(v82 + 56);
                  *&v125[16] = v83;
                  *v126 = v84;
                  v127 = v85;
                  v130 = *(v82 + 80) | (HIBYTE(v130) << 8);
                  v128 = *(v82 + 64);
                  v130 = *(v82 + 80) & 0x100 | v130 & 0xFEFF;
                  v130 = v130 & 0xFBFF | *(v82 + 80) & 0x400;
                  v129 = *(v82 + 72);
                  *v125 = v78;
                  v124 = CA::OGL::Context::set_gstate(v13, &v124);
                  CA::OGL::Context::push_surface(v13, v76, 0, 2, 0);
                  *(*(v13 + 16) + 8) = *(this + 11);
                  (*(*this + 168))(this, a2);
                  CA::OGL::Context::pop_surface(v13);
                  CA::OGL::Context::set_gstate(v13, **(v13 + 656));
LABEL_117:
                  *(v13 + 1384) = *(v13 + 1384) & 0x8FFF | v51 & 0x7000;
                  if (v50)
                  {
                    v86 = v76 == 0;
                  }

                  else
                  {
                    v86 = 1;
                  }

                  if (v86)
                  {
                    if (v50)
                    {
                      if (v80)
                      {
                        if ((LOBYTE(a2[264].f64[0]) & 2) == 0)
                        {
                          v87 = a2->f64[1];
                          if (v87 != 0.0)
                          {
                            LOBYTE(a2[264].f64[0]) |= 2u;
                            (*(**&v87 + 824))(COERCE_FLOAT64_T(*&v87));
                          }
                        }

                        *(*(v13 + 16) + 8) = *(this + 11);
                        *(*(v13 + 16) + 496) = v80;
                        v124 = 0;
                        *v125 = 0;
                        CA::OGL::emit_combine(v13, 0x10u, v50, 0, v78, &v124);
                      }

                      else
                      {
                        v89 = *(v13 + 16);
                        *(v89 + 496) = 9;
                        *(v89 + 497) |= 1u;
                        v124 = 0;
                        *v125 = 0;
                        CA::OGL::emit_combine(v13, 1u, v50, 0, v78, &v124);
                        *(*(v13 + 16) + 497) &= ~1u;
                      }

                      *(*(v13 + 16) + 496) = *(*(v13 + 656) + 80);
                    }

                    if (!v76)
                    {
LABEL_136:
                      if (v50)
                      {
                        v90 = v13;
                        v91 = v50;
LABEL_138:
                        CA::OGL::Context::release_surface(v90, v91);
                      }

LABEL_139:
                      if (byte_1ED4E986D == 1)
                      {
                        *(*(v13 + 16) + 497) |= 1u;
                        *(*(v13 + 16) + 496) = 3;
                        if (SDWORD2(v117) <= SHIDWORD(v117))
                        {
                          v99 = HIDWORD(v117);
                        }

                        else
                        {
                          v99 = DWORD2(v117);
                        }

                        v48.i32[0] = 1073741822;
                        v49.i32[0] = v99;
                        v100.i64[0] = v117;
                        v100.i64[1] = SDWORD1(v117);
                        v101 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v49, v48), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v100));
                        v102 = SDWORD2(v117);
                        v103 = SHIDWORD(v117);
                        if (v99 > 1073741822)
                        {
                          v102 = 1.79769313e308;
                          v103 = 1.79769313e308;
                        }

                        v114 = v101;
                        v115 = v102;
                        v116 = v103;
                        v124 = &v114;
                        *v125 = &CA::identity_transform;
                        *&v125[8] = 0u;
                        *v126 = 0u;
                        v104 = (*(*this + 120))(this);
                        CA::OGL::fill_color_rect(v13, &v124, v104, v105, v106);
                        *(*(v13 + 16) + 497) &= ~1u;
                      }

                      if (v37)
                      {
                        do
                        {
                          v92 = *v37;
                          free(v37);
                          v37 = v92;
                        }

                        while (v92);
                      }

                      if (v111 == v132)
                      {
                        goto LABEL_145;
                      }

                      v38 = v111;
                      goto LABEL_144;
                    }
                  }

                  else
                  {
                    if ((LOBYTE(a2[264].f64[0]) & 2) == 0)
                    {
                      v88 = a2->f64[1];
                      if (v88 != 0.0)
                      {
                        LOBYTE(a2[264].f64[0]) |= 2u;
                        (*(**&v88 + 824))(COERCE_FLOAT64_T(*&v88));
                      }
                    }

                    *(*(v13 + 16) + 496) = v80;
                    v124 = 0;
                    *v125 = 0;
                    CA::OGL::emit_combine(v13, 0x11u, v50, v76, v78, &v124);
                    *(*(v13 + 16) + 496) = *(*(v13 + 656) + 80);
                  }

                  CA::OGL::Context::release_surface(v13, v76);
                  goto LABEL_136;
                }
              }

              else
              {
                v76 = 0;
              }

              v78 = v35;
              v80 = v113;
              goto LABEL_117;
            }

            if (v52 == 3)
            {
              *(v13 + 1384) = v51 & 0x8FFF | 0x2000;
              v53 = *(v47 + 144);
              LOBYTE(v54) = 2;
            }

            else
            {
              v53 = *(v47 + 144);
              if (((v51 >> 12) & 7) > 3)
              {
                v56 = 0;
                goto LABEL_97;
              }

              v54 = (v51 >> 12) & 7;
            }

            v56 = (0x22231800u >> (8 * (v54 & 0x1F)) << 8) & 0xFF00;
LABEL_97:
            *(v47 + 144) = v56 | v53 & 0xFFFFC0FF;
            v70 = *(v13 + 656);
            v71 = *(v70 + 32);
            *&v125[16] = *(v70 + 24);
            *v126 = v71;
            *&v126[8] = *(v70 + 40);
            v127 = *(v70 + 56);
            v130 = *(v70 + 80) | (HIBYTE(v130) << 8);
            v128 = *(v70 + 64);
            v130 = *(v70 + 80) & 0x100 | v130 & 0xFEFF;
            v130 = v130 & 0xFBFF | *(v70 + 80) & 0x400;
            v129 = *(v70 + 72);
            *v125 = v35;
            *&v125[8] = v37;
            v130 = v130 & 0xFF00 | 0xF;
            v124 = CA::OGL::Context::set_gstate(v13, &v124);
            CA::OGL::Context::push_surface(v13, v50, 1u, 256, 0);
            v130 &= ~0x400u;
            if ((v30 & 2) != 0)
            {
              if (v30)
              {
                v72 = 18;
              }

              else
              {
                v72 = 12;
              }

              v73 = *(v13 + 16);
              *(v73 + 496) = v72;
              *(v73 + 497) |= 1u;
            }

            *(*(v13 + 16) + 8) = 0x3C003C003C003C00;
            (*(*this + 160))(this, a2);
            v74 = v130;
            if ((v30 & 2) != 0)
            {
              *(*(v13 + 16) + 497) &= ~1u;
              *(*(v13 + 16) + 496) = v74;
            }

            v130 = v74 | 0x400;
            if (v120)
            {
              *(*(v13 + 16) + 497) |= 1u;
              CA::CG::ClipOp::draw(&v117, a2);
              *(*(v13 + 16) + 497) &= ~1u;
            }

            CA::OGL::Context::pop_surface(v13);
            CA::OGL::Context::set_gstate(v13, **(v13 + 656));
            goto LABEL_107;
          }

          v55 = 0;
          while ((*(**(*(&v119 + 1) + 8 * v55) + 16))(*(*(&v119 + 1) + 8 * v55)) != 6)
          {
            if (++v55 >= v120)
            {
              goto LABEL_79;
            }
          }
        }

        v39 = 0;
        v109 = 8207;
        goto LABEL_42;
      }
    }
  }
}

float16x4_t *CA::CG::DrawOp::render_alpha(CA::CG::DrawOp *this, CA::CG::Renderer *a2, int a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 1);
  v7 = (*(*this + 128))(this);
  v8 = (*(*this + 136))(this, a2);
  v9 = v8;
  if (a3)
  {
    v10 = *(this + 44);
    v11 = *(this + 45);
    v12 = *(this + 46);
    v13 = *(this + 47);
  }

  else
  {
    v10 = 15360;
    v11 = 15360;
    v12 = 15360;
    v13 = 15360;
  }

  *(*(v6 + 16) + 497) &= ~1u;
  if (v8 & 2 | v7 & 1)
  {
    v17 = *(v6 + 656);
    v28 = *(v17 + 8);
    v18 = *(v17 + 32);
    v29 = *(v17 + 24);
    v30 = v18;
    v31 = *(v17 + 40);
    v32 = *(v17 + 56);
    v19 = *(v17 + 80);
    v33 = *(v17 + 64);
    v34 = *(v17 + 72);
    v35 = v19 & 0x100 | 0xF;
    v27 = CA::OGL::Context::set_gstate(v6, &v27);
    if ((v7 & 2) != 0)
    {
      if (v7)
      {
        v20 = 18;
      }

      else
      {
        v20 = 12;
      }

      v21 = *(v6 + 16);
      *(v21 + 496) = v20;
      *(v21 + 497) |= 1u;
    }

    v22 = *(v6 + 16);
    v23 = v7 & 1 | v9 & 3;
    v24 = v23 == 0;
    if (v23)
    {
      *(v22 + 8) = 0x3C003C003C003C00;
      (*(*this + 160))(this, a2);
    }

    else
    {
      *(v22 + 8) = v10;
      *(v22 + 10) = v11;
      *(v22 + 12) = v12;
      *(v22 + 14) = v13;
      (*(*this + 176))(this, a2);
    }

    *(*(v6 + 16) + 497) |= 1u;
    v25 = v35;
    if ((v7 & 2) != 0)
    {
      *(*(v6 + 16) + 496) = v35;
    }

    v35 = v25 | 0x400;
    if (!v24)
    {
      v26 = *(v6 + 16);
      v26[4] = v10;
      v26[5] = v11;
      v26[6] = v12;
      v26[7] = v13;
      (*(*this + 168))(this, a2);
      *(*(v6 + 16) + 497) |= 1u;
    }

    return CA::OGL::Context::set_gstate(v6, **(v6 + 656));
  }

  else
  {
    v14 = *(v6 + 16);
    v14[4] = v10;
    v14[5] = v11;
    v14[6] = v12;
    v14[7] = v13;
    if ((v7 & 2) != 0)
    {
      v15 = *(v6 + 16);
      *(v15 + 496) = 12;
      *(v15 + 497) |= 1u;
    }

    result = (*(*this + 176))(this, a2);
    *(*(v6 + 16) + 497) |= 1u;
  }

  return result;
}

void CA::CG::DrawOp::shape_line_width(uint64_t a1, const double *a2, double a3)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695F2F0] != a3 && a3 > 0.0 && (*(a1 + 100) & 4) != 0)
  {
    v3 = *(a1 + 24);
    v4[0] = *(a1 + 8);
    v4[1] = v3;
    v4[2] = *(a1 + 40);
    CA::Mat2Impl::mat2_get_scale_2d(v4, a2);
  }
}

uint64_t CA::CG::mat2_filter_bits(uint64_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4)
{
  if ((fabs(*(a1 + 8)) >= 0.000001 || fabs(*(a1 + 16)) >= 0.000001) && (fabs(*a1) >= 0.000001 || fabs(*(a1 + 24)) >= 0.000001))
  {
    v8 = 9;
  }

  else
  {
    a2.i64[0] = *(a1 + 32);
    a3.i64[0] = *(a1 + 40);
    a4.i64[0] = 0.5;
    v4.f64[0] = NAN;
    v4.f64[1] = NAN;
    v5 = vnegq_f64(v4);
    v6 = vabdd_f64(trunc(*vbslq_s8(v5, a4, a2).i64 + *a2.i64), *a2.i64);
    v7 = v6 < 0.001;
    v8 = v6 >= 0.001;
    *a2.i64 = vabdd_f64(trunc(*vbslq_s8(v5, a4, a3).i64 + *a3.i64), *a3.i64);
    if (v7)
    {
      v9 = 8;
    }

    else
    {
      v9 = 9;
    }

    if (*a2.i64 >= 0.001)
    {
      v8 = v9;
    }
  }

  v10 = vaddvq_f64(vmulq_f64(*a1, *a1));
  v11 = *(a1 + 16) * *(a1 + 16) + *(a1 + 24) * *(a1 + 24);
  if (v10 >= 0.999)
  {
    if (v10 > 1.001)
    {
      result = v8 | 4;
    }

    else
    {
      result = v8;
    }
  }

  else
  {
    result = v8 | 2;
  }

  if (v11 < 0.999)
  {
    return result | 0x10;
  }

  if (v11 > 1.001)
  {
    return result | 0x20;
  }

  return result;
}

uint64_t CA::CG::rect_filter_bits(float64_t *a1, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 9) == 0)
  {
    return a3;
  }

  v4.f64[0] = *a1;
  v3.f64[0] = a1[1];
  v3.f64[1] = a1[3] + v3.f64[0];
  v4.f64[1] = a1[2] + *a1;
  __asm { FMOV            V0.2D, #0.5 }

  if (!a3)
  {
    v10 = v3;
    goto LABEL_6;
  }

  v10 = vmlaq_n_f64(vmlaq_n_f64(vdupq_lane_s64(*(a2 + 40), 0), v4, *(a2 + 8)), v3, *(a2 + 24));
  if ((a3 & 1) == 0)
  {
    v4 = vmlaq_n_f64(vmlaq_n_f64(vdupq_lane_s64(*(a2 + 32), 0), v4, *a2), v3, *(a2 + 16));
LABEL_6:
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v12 = vabdq_f64(vrndq_f64(vaddq_f64(vbslq_s8(vnegq_f64(v11), _Q0, v4), v4)), v4);
    if (v12.f64[0] <= v12.f64[1])
    {
      v12.f64[0] = v12.f64[1];
    }

    if (v12.f64[0] < 0.001)
    {
      a3 = a3;
    }

    else
    {
      a3 = (a3 + 1);
    }
  }

  if ((a3 & 8) == 0)
  {
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v14 = vabdq_f64(vrndq_f64(vaddq_f64(vbslq_s8(vnegq_f64(v13), _Q0, v10), v10)), v10);
    if (v14.f64[0] <= v14.f64[1])
    {
      v14.f64[0] = v14.f64[1];
    }

    if (v14.f64[0] >= 0.001)
    {
      return a3 | 8;
    }

    else
    {
      return a3;
    }
  }

  return a3;
}

uint64_t should_emit_tailspins(void)
{
  v4 = *MEMORY[0x1E69E9840];
  if (dyld_shared_cache_some_image_overridden() && arc4random_uniform(0x64u) < 0x4B)
  {
    v0 = 0;
  }

  else
  {
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CATailspinEnable", @"com.apple.coreanimation", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat || (AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PDSECATailspin.CATailspinEnable", @"com.apple.da", &keyExistsAndHasValidFormat), keyExistsAndHasValidFormat))
    {
      v0 = AppBooleanValue != 0;
    }

    else
    {
      if (CADeviceHasInternalBuild::once != -1)
      {
        dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
      }

      v0 = CADeviceHasInternalBuild::internal;
    }
  }

  return v0 & 1;
}

void *std::__split_buffer<std::pair<unsigned long long,unsigned long long> *,std::allocator<std::pair<unsigned long long,unsigned long long> *>>::emplace_back<std::pair<unsigned long long,unsigned long long> *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Display::DisplayLinkItem *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

char **std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::pair<unsigned long long,unsigned long long> *,std::__deque_iterator<std::pair<unsigned long long,unsigned long long>,std::pair<unsigned long long,unsigned long long> *,std::pair<unsigned long long,unsigned long long>&,std::pair<unsigned long long,unsigned long long> **,long,256l>,0>(char **result, char *a2, char *a3, char *a4, char *a5)
{
  if (a2 == a3)
  {
    v9 = a2;
    goto LABEL_15;
  }

  v5 = *a4;
  while (1)
  {
    v6 = (v5 + 512);
    v7 = (v5 + 512) - a5;
    v8 = (a3 - a2) >> 4 >= v7 >> 4 ? v7 >> 4 : (a3 - a2) >> 4;
    if (v8)
    {
      break;
    }

LABEL_11:
    v10 = *(a4 + 1);
    a4 += 8;
    v5 = v10;
    a5 = v10;
  }

  v9 = &a2[16 * v8];
  do
  {
    *a5 = *a2;
    *(a5 + 1) = *(a2 + 1);
    a2 += 16;
    a5 += 16;
  }

  while (a2 != v9);
  if (v9 != a3)
  {
    a2 = v9;
    goto LABEL_11;
  }

  if (v6 == a5)
  {
    v11 = *(a4 + 1);
    a4 += 8;
    a5 = v11;
  }

LABEL_15:
  *result = v9;
  result[1] = a4;
  result[2] = a5;
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::pair<unsigned long long,unsigned long long> *,std::__deque_iterator<std::pair<unsigned long long,unsigned long long>,std::pair<unsigned long long,unsigned long long> *,std::pair<unsigned long long,unsigned long long>&,std::pair<unsigned long long,unsigned long long> **,long,256l>,0>(void *result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a2 == a3)
  {
    a3 = a2;
  }

  else
  {
    v5 = *a4;
    v6 = a3;
    while (1)
    {
      if ((v6 - a2) >> 4 >= (a5 - v5) >> 4)
      {
        v7 = (a5 - v5) >> 4;
      }

      else
      {
        v7 = (v6 - a2) >> 4;
      }

      if (v7)
      {
        v8 = (v6 - 8);
        v9 = -16 * v7;
        do
        {
          *(a5 - 16) = *(v8 - 1);
          a5 -= 16;
          v10 = *v8;
          v8 -= 2;
          *(a5 + 8) = v10;
          v9 += 16;
        }

        while (v9);
      }

      v6 -= 16 * v7;
      if (v6 == a2)
      {
        break;
      }

      v11 = *--a4;
      v5 = v11;
      a5 = v11 + 4096;
    }

    if (v5 + 4096 == a5)
    {
      v12 = a4[1];
      ++a4;
      a5 = v12;
    }
  }

  *result = a3;
  result[1] = a4;
  result[2] = a5;
  return result;
}

void CATailspinEmit(uint64_t a1, uint64_t a2, char a3, uint64_t a4, const char *a5)
{
  v40[4] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v9 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithUTF8String:{a4), "lastPathComponent"}];
  }

  else
  {
    v9 = 0;
  }

  v10 = mach_absolute_time();
  v11 = CATimeWithHostTime(v10);
  if (emit_tailspin(NSString *,unsigned int,unsigned int,int,unsigned int,char const*)::onceToken != -1)
  {
    dispatch_once(&emit_tailspin(NSString *,unsigned int,unsigned int,int,unsigned int,char const*)::onceToken, &__block_literal_global_19150);
  }

  if (emit_tailspin(NSString *,unsigned int,unsigned int,int,unsigned int,char const*)::show_HUD)
  {
    ServerPort = CARenderServerGetServerPort(0);
  }

  else
  {
    ServerPort = 0;
  }

  v13 = [MEMORY[0x1E696AD60] string];
  v14 = v13;
  if (a3)
  {
    [v13 appendFormat:@"Force Triggered: "];
  }

  if ((a3 & 2) != 0)
  {
    [v14 appendFormat:@"Long Render Interval with update seed 0x%x", a2];
    v15 = @"LongRenderInterval";
    if ((a3 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v15 = @"Unknown";
  if ((a3 & 4) != 0)
  {
LABEL_15:
    [v14 appendFormat:@"Long Commit from %s [%d]", objc_msgSend(v9, "UTF8String"), 0xFFFFFFFFLL];
    v15 = @"LongCommit";
  }

LABEL_16:
  if ((a3 & 8) != 0)
  {
    [v14 appendFormat:@"Long frame latency at swap 0x%x", a1];
    v15 = @"LongFrameLatency";
    if ((a3 & 0x10) == 0)
    {
LABEL_18:
      if ((a3 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    }
  }

  else if ((a3 & 0x10) == 0)
  {
    goto LABEL_18;
  }

  [v14 appendFormat:@"Glitch at swap 0x%x, update_seed 0x%x with long pole process name %@", a1, a2, v9];
  v15 = @"Glitch";
  if ((a3 & 0x20) == 0)
  {
LABEL_19:
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_29:
  [v14 appendFormat:@"First frame glitch at swap 0x%x, update_seed 0x%x with long pole process name %@", a1, a2, v9];
  v15 = @"FirstFrameGlitch";
  if ((a3 & 0x40) != 0)
  {
LABEL_20:
    [v14 appendFormat:@"Skip requested glitch at swap 0x%x, update_seed 0x%x with long pole process name %@", a1, a2, v9];
    v15 = @"SkipRequestedGlitch";
  }

LABEL_21:
  v39[0] = @"type";
  v39[1] = @"longPoleProcessName";
  v40[0] = v15;
  v40[1] = v9;
  v39[2] = @"swapID";
  v40[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  v39[3] = @"updateSeed";
  v40[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:4];
  if (!a5)
  {
    v26 = dispatch_time(0, 100000000);
    if (ca_tailspin_request_queue(void)::once != -1)
    {
      dispatch_once(&ca_tailspin_request_queue(void)::once, &__block_literal_global_89);
    }

    v24 = ca_tailspin_request_queue(void)::ws_hitches_tailspin_request_queue;
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3221225472;
    v33 = ___ZL13emit_tailspinP8NSStringjjijPKc_block_invoke_84;
    v34 = &unk_1E6DF9900;
    v35 = v14;
    v36 = v16;
    v25 = v26;
LABEL_34:
    dispatch_after(v25, v24, &block);
    if (!ServerPort)
    {
      return;
    }

    goto LABEL_44;
  }

  v17 = -[NSString stringByAppendingPathComponent:](NSTemporaryDirectory(), "stringByAppendingPathComponent:", [MEMORY[0x1E696AEC0] stringWithFormat:@"layer-dump-%f.txt", *&v11]);
  v18 = fopen([(NSString *)v17 UTF8String], "wb");
  if (v18)
  {
    v19 = v18;
    v20 = strlen(a5);
    fwrite(a5, 1uLL, v20, v19);
    fclose(v19);
    v31 = 0;
    v21 = [objc_alloc(MEMORY[0x1E699A068]) initWithPath:v17 transferOwnership:1 errorOut:&v31];
    if (v21)
    {
      v22 = v21;
      v23 = dispatch_time(0, 100000000);
      if (ca_tailspin_request_queue(void)::once != -1)
      {
        dispatch_once(&ca_tailspin_request_queue(void)::once, &__block_literal_global_89);
      }

      v24 = ca_tailspin_request_queue(void)::ws_hitches_tailspin_request_queue;
      *&block = MEMORY[0x1E69E9820];
      *(&block + 1) = 3221225472;
      v33 = ___ZL13emit_tailspinP8NSStringjjijPKc_block_invoke_2;
      v34 = &unk_1E6DF98D8;
      v35 = v22;
      v36 = v14;
      v37 = v16;
      v38 = a5;
      v25 = v23;
      goto LABEL_34;
    }

    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v27 = x_log_get_utilities::log;
    if (!os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
LABEL_43:
      if (!ServerPort)
      {
        return;
      }

      goto LABEL_44;
    }

    v30 = [objc_msgSend(v31 "localizedDescription")];
    LODWORD(block) = 136315138;
    *(&block + 4) = v30;
    v28 = "Diagnostics (tailspin) failed to create client log with error: %s";
  }

  else
  {
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v27 = x_log_get_utilities::log;
    if (!os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    LODWORD(block) = 136315138;
    *(&block + 4) = [(NSString *)v17 UTF8String];
    v28 = "Diagnostics (tailspin) failed to create layer tree file at %s";
  }

  _os_log_error_impl(&dword_183AA6000, v27, OS_LOG_TYPE_ERROR, v28, &block, 0xCu);
  if (!ServerPort)
  {
    return;
  }

LABEL_44:
  if (CADeviceHasInternalBuild::once != -1)
  {
    dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
  }

  if (CADeviceHasInternalBuild::internal == 1)
  {
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Frametracer - %@", v15];
    if ((CA::Render::Server::add_callback(1, emit_tailspin(NSString *,unsigned int,unsigned int,int,unsigned int,char const*)::$_0::__invoke, v29, 0.0) & 1) == 0)
    {
    }
  }

  if (ServerPort != -1)
  {
    CA::Render::Server::add_callback(0, emit_tailspin(NSString *,unsigned int,unsigned int,int,unsigned int,char const*)::$_1::__invoke, 0, 0.0);
    mach_port_deallocate(*MEMORY[0x1E69E9A60], ServerPort);
  }
}

void ___ZL13emit_tailspinP8NSStringjjijPKc_block_invoke_2(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *(a1 + 32);
  [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v2 = DRTailspinRequestWithLogs();

  ca_tailspin_log_request_result(v2, *(a1 + 56) != 0, 0);
}

void emit_tailspin(NSString *,unsigned int,unsigned int,int,unsigned int,char const*)::$_0::__invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  CASetDebugMessage([a1 UTF8String], 16711935);

  objc_autoreleasePoolPop(v2);
}

void ca_tailspin_log_request_result(char a1, int a2, NSError *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    a1 = 1;
  }

  if (x_log_get_utilities::once != -1)
  {
    dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
  }

  v6 = x_log_get_utilities::log;
  if (a1)
  {
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_INFO))
    {
      v7 = ".";
      if (a2)
      {
        v7 = " with layer-tree log";
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_impl(&dword_183AA6000, v6, OS_LOG_TYPE_INFO, "Diagnostics (tailspin) request successful%s", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315138;
    v9 = [(NSString *)[(NSError *)a3 localizedDescription] UTF8String];
    _os_log_error_impl(&dword_183AA6000, v6, OS_LOG_TYPE_ERROR, "Diagnostics (tailspin) request failed with the error: %s.", &v8, 0xCu);
  }
}

dispatch_queue_t ___ZL25ca_tailspin_request_queuev_block_invoke()
{
  result = dispatch_queue_create("com.apple.coreanimation.TailspinRequest", 0);
  ca_tailspin_request_queue(void)::ws_hitches_tailspin_request_queue = result;
  return result;
}

uint64_t ___ZL13emit_tailspinP8NSStringjjijPKc_block_invoke()
{
  result = CFPreferencesGetAppBooleanValue(@"FrameTracerHUD", @"com.apple.coreanimation", 0);
  emit_tailspin(NSString *,unsigned int,unsigned int,int,unsigned int,char const*)::show_HUD = result;
  return result;
}

float CA::Render::DistanceFieldLayer::set_property(CA::Render::DistanceFieldLayer *this, uint64_t a2, const unsigned int *a3, BOOL a4, unint64_t a5, const double *a6, double a7)
{
  if (a2 == 1)
  {
    v7 = *a3;
    if (a5 >= 4 && v7 == 265)
    {
      v8 = (*a6 * 255.0 + 0.5) & ~((*a6 * 255.0 + 0.5) >> 31);
      v9 = (a6[3] * 255.0 + 0.5) & ~((a6[3] * 255.0 + 0.5) >> 31);
      if (v8 >= 255)
      {
        v8 = 255;
      }

      __asm { FMOV            V2.2D, #0.5 }

      a7 = COERCE_DOUBLE(vshl_u32(vmin_s32(vmax_s32(vmovn_s64(vcvtq_s64_f64(vmlaq_f64(_Q2, vdupq_n_s64(0x406FE00000000000uLL), *(a6 + 1)))), 0), 0xFF000000FFLL), 0x800000010));
      if (_NF == _VF)
      {
        v9 = 255;
      }

      *(this + 5) = LODWORD(a7) | (v8 << 24) | v9 | HIDWORD(a7);
    }

    else if (a5 && v7 == 452)
    {
      a7 = *a6;
      v15 = *(this + 3);
      if (*a6 <= 0.5)
      {
        v16 = v15 & 0xFFFFFEFF;
      }

      else
      {
        v16 = v15 | 0x100;
      }

      *(this + 3) = v16;
    }

    else if (a5)
    {
      switch(v7)
      {
        case 483:
          v17 = 0;
          break;
        case 648:
          v17 = 2;
          break;
        case 534:
          v17 = 1;
          break;
        default:
          return *&a7;
      }

      *&a7 = *a6;
      *(this + v17 + 6) = LODWORD(a7);
    }
  }

  return *&a7;
}

uint64_t CA::Render::DistanceFieldLayer::get_property(CA::Render::DistanceFieldLayer *this, uint64_t a2, const unsigned int *a3, unint64_t a4, float64x2_t *a5, double **a6)
{
  if (a2 != 1)
  {
    return 0;
  }

  result = 0;
  v8 = *a3;
  if (*a3 > 482)
  {
    if (v8 != 483)
    {
      if (v8 == 534)
      {
        result = 1;
      }

      else
      {
        if (v8 != 648)
        {
          return result;
        }

        result = 2;
      }
    }

    v9 = *(this + result + 6);
    goto LABEL_15;
  }

  if (v8 == 265)
  {
    v10 = *(this + 5);
    v13 = v10 * 0.0039216;
    v11 = HIBYTE(v10) * 0.0039216;
    v12 = vmul_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v10), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL)), vdup_n_s32(0x3B808081u));
    *a5 = vcvtq_f64_f32(*&v11);
    a5[1] = vcvtq_f64_f32(*(&v13 - 1));
    return 4;
  }

  if (v8 == 452)
  {
    v9 = 0.0;
    if ((*(this + 3) & 0x100) != 0)
    {
      v9 = 1.0;
    }

LABEL_15:
    a5->f64[0] = v9;
    return 1;
  }

  return result;
}

_DWORD *CA::Render::DistanceFieldLayer::copy@<X0>(CA::Render::DistanceFieldLayer *this@<X0>, void *a2@<X8>)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x28uLL, 0xDEEC3011uLL);
  if (result)
  {
    result[2] = 1;
    result[3] = 12;
    ++dword_1ED4EAA68;
    *result = &unk_1EF201E80;
    *(result + 2) = *(this + 2);
    result[3] = *(this + 3) & 0xFFFFFF00 | 0xC;
    v5 = *(this + 3);
    result[8] = *(this + 8);
    *(result + 3) = v5;
  }

  *a2 = result;
  return result;
}

char *CA::Render::DistanceFieldLayer::show(uint64_t a1, X::Stream *this, int a3, char a4)
{
  if (a4)
  {
    v10 = "distance-field-layer";
  }

  else
  {
    X::Stream::printf(this, "(distance-field-layer");
    v7 = *(a1 + 16) - 1;
    v8 = 2 * a3;
    if (v7 <= 3)
    {
      v9 = off_1E6DF9928[v7];
      X::Stream::printf(this, "\n%*s", v8 + 2, "");
      X::Stream::printf(this, "(renderMode %s)", v9);
    }

    if (*(a1 + 13))
    {
      X::Stream::printf(this, "\n%*s", v8 + 2, "");
      X::Stream::printf(this, "(invertsShape true)");
    }

    if (*(a1 + 20))
    {
      X::Stream::printf(this, "\n%*s", v8 + 2, "");
      X::Stream::printf(this, "(foregroundColor #%08x)", *(a1 + 20));
    }

    if (*(a1 + 28) != 0.0)
    {
      X::Stream::printf(this, "\n%*s", v8 + 2, "");
      X::Stream::printf(this, "(offset %g)", *(a1 + 28));
    }

    if (*(a1 + 32) != 0.0)
    {
      X::Stream::printf(this, "\n%*s", v8 + 2, "");
      X::Stream::printf(this, "(sharpness %g)", *(a1 + 32));
    }

    if (*(a1 + 24) != 0.0)
    {
      X::Stream::printf(this, "\n%*s", v8 + 2, "");
      X::Stream::printf(this, "(lineWidth %g)", *(a1 + 24));
    }

    v10 = ")";
  }

  return X::Stream::printf(this, v10);
}

void *CA::Render::DistanceFieldLayer::encode(CA::Render::DistanceFieldLayer *this, CA::Render::Encoder *a2)
{
  CA::Render::Object::encode(this, a2);
  v4 = *(this + 4);
  v5 = *(a2 + 4);
  if ((v5 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 1);
    v5 = *(a2 + 4);
  }

  *(a2 + 4) = v5 + 1;
  *v5 = v4;
  v6 = *(this + 5);
  v7 = *(a2 + 4);
  if ((v7 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v7 = *(a2 + 4);
  }

  *v7 = v6;
  v8 = *(a2 + 4);
  v9 = *(a2 + 5);
  v10 = v8 + 4;
  *(a2 + 4) = v8 + 4;
  if (v8 + 16 > v9)
  {
    CA::Render::Encoder::grow(a2, 12);
    v10 = *(a2 + 4);
  }

  v11 = *(this + 3);
  *(v10 + 8) = *(this + 8);
  *v10 = v11;
  *(a2 + 4) += 12;

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void CA::Render::DistanceFieldLayer::~DistanceFieldLayer(CA::Render::DistanceFieldLayer *this, const CA::Render::Object *a2)
{
  --dword_1ED4EAA68;
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
  --dword_1ED4EAA68;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

CA::Render::DistanceFieldLayer *CA::Render::DistanceFieldLayer::DistanceFieldLayer(CA::Render::DistanceFieldLayer *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 12;
  ++dword_1ED4EAA68;
  *v4 = &unk_1EF201E80;
  v5 = CA::Render::Decoder::decode_int8(a2);
  if (v5 >= 5)
  {
    CA::Render::Decoder::set_fatal_error(a2, "%s - enum %u out of range of %u", "decode_int8_enum", v5, 5);
    v5 = 0;
  }

  *(this + 4) = v5;
  *(this + 5) = CA::Render::Decoder::decode_int32(a2);
  CA::Render::Decoder::decode_bytes(a2, this + 24, 0xCuLL);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-distance-field-layer.cpp", 190);
  return this;
}

CFStringRef CACreateDateStringFromHostContinuousTime(unint64_t a1, const __CFString *a2)
{
  v3 = CATimeWithHostTime(a1);
  v4 = mach_continuous_time();
  v5 = v3 - CATimeWithHostTime(v4);
  Current = CFAbsoluteTimeGetCurrent();
  v7 = CFDateCreate(0, v5 + Current);
  if (CACreateDateStringFromCFDate(__CFDate const*,__CFString const*)::once[0] != -1)
  {
    dispatch_once(CACreateDateStringFromCFDate(__CFDate const*,__CFString const*)::once, &__block_literal_global_3_19287);
  }

  v8 = pthread_getspecific(CACreateDateStringFromCFDate(__CFDate const*,__CFString const*)::thread_slot);
  if (!v8)
  {
    v9 = CFLocaleCreate(0, @"en_US_POSIX");
    v8 = CFDateFormatterCreate(0, v9, kCFDateFormatterShortStyle, kCFDateFormatterShortStyle);
    CFRelease(v9);
    pthread_setspecific(CACreateDateStringFromCFDate(__CFDate const*,__CFString const*)::thread_slot, v8);
  }

  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = @"HH:mm:ss.SSS";
  }

  CFDateFormatterSetFormat(v8, v10);
  StringWithDate = CFDateFormatterCreateStringWithDate(0, v8, v7);
  CFRelease(v7);
  return StringWithDate;
}

uint64_t ___ZL28CACreateDateStringFromCFDatePK8__CFDatePK10__CFString_block_invoke()
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  result = pthread_key_create(v1, _ZZZL28CACreateDateStringFromCFDatePK8__CFDatePK10__CFStringEUb_EN3__08__invokeEPv);
  CACreateDateStringFromCFDate(__CFDate const*,__CFString const*)::thread_slot = v1[0];
  return result;
}

void _ZZZL28CACreateDateStringFromCFDatePK8__CFDatePK10__CFStringEUb_EN3__08__invokeEPv(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t __CAProcessUptime_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  *v5 = 0xE00000001;
  v6 = 1;
  v7 = getpid();
  bzero(&v3, 0x288uLL);
  v2 = 648;
  result = sysctl(v5, 4u, &v3, &v2, 0, 0);
  if (result)
  {
    v1 = INFINITY;
  }

  else
  {
    v1 = v3 + v4 * 0.000001;
  }

  CAProcessUptime::start_time_s = *&v1;
  return result;
}

void CA::CG::StrokeArc::draw_shape(CA::CG::StrokeArc *this, CA::CG::Renderer *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = this + 112;
  CA::CG::DrawOp::shape_line_width(this, a2, *(this + 14));
  v6 = v5;
  if (v5 >= 0.001)
  {
    v7 = v5 * 0.5;
    if (v5 * 0.5 > *(this + 21) || (v8 = *(a2 + 1), !(*(*v8 + 232))(v8, 9)) || ((v10 = *(v8 + 2), v11 = v10[62].u8[0], v11 != 12) ? (v12 = (v11 - 1) >= 0x19) : (v12 = 1), v12))
    {
      Mutable = CGPathCreateMutable();
      CGPathAddArc(Mutable, 0, *(this + 19), *(this + 20), *(this + 21), *(this + 22), *(this + 23) + *(this + 22), *(this + 23) < 0.0);
      CA::CG::stroke_path(a2, Mutable, 0, this + 8, v4);

      CGPathRelease(Mutable);
    }

    else
    {
      v14 = 88;
      if ((*(this + 25) & 4) == 0)
      {
        v14 = 32;
      }

      v15 = (a2 + v14);
      v16 = *v15;
      v17 = v15[1];
      v60 = v16;
      v61 = v17;
      v62 = v15[2];
      v18 = vaddvq_f64(vmulq_f64(v16, v16));
      v19 = vmulq_f64(v17, v17);
      v20 = vaddq_f64(vdupq_laneq_s64(v19, 1), v19).f64[0];
      v21 = v18 != 1.0;
      if (v20 != 1.0)
      {
        v21 = 1;
      }

      v22 = sqrt(v18);
      v23 = sqrt(v20);
      if (v21)
      {
        v20 = v23;
        v18 = v22;
      }

      if (v18 >= v20)
      {
        v24 = v20;
      }

      else
      {
        v24 = v18;
      }

      v25 = *(this + 23);
      if (v25 < 0.0)
      {
        v60 = vnegq_f64(v16);
        v61 = vnegq_f64(v17);
      }

      v26 = *(this + 22);
      if (v26 != 0.0)
      {
        CA::Mat2Impl::mat2_rotate(&v60, v9, v26);
      }

      v27 = fabs(v25);
      if (v27 <= 6.28318531)
      {
        v28 = v27;
      }

      else
      {
        v28 = 6.28318531;
      }

      v29 = -v28;
      if (v25 >= 0.0)
      {
        v29 = v28;
      }

      v30 = -0.5;
      v31 = vcvtpd_s64_f64(v28 * 1.90985932 + 0.6);
      if (v29 > 0.0)
      {
        v30 = 0.5;
      }

      if (v31 >= 12)
      {
        v32 = 12;
      }

      else
      {
        v32 = v31;
      }

      v33 = *(this + 21);
      v34 = v33 + v7;
      if ((v31 & 0x80000000) == 0)
      {
        v35 = v10[1];
        v36 = (v34 + 0.5 / v24) * 1.15470054;
        v37 = v33 - (v7 + 0.5 / v24);
        v38 = 0.5 / v24 * 1.15470054 / v34 + 1.15470054;
        v39 = v38;
        v40 = dbl_183E21700[v29 > 0.0];
        v41 = v37 * v39 / v36;
        v42 = v41;
        v43 = (v32 + 1);
        v44 = v60;
        v45 = v61;
        v46 = v62;
        v47 = (*(v8 + 17) + 48);
        v48 = 0.965925826;
        do
        {
          v47[-6] = vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(v46, v44, v48 * v37), v45, v40 * v37));
          v47[-5] = 0x3F80000000000000;
          v49 = v48 * v42;
          v50 = v40 * v42;
          v47[-4].f32[0] = v49;
          v47[-4].f32[1] = v50;
          v47[-2] = v35;
          *v47 = vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(v46, v44, v48 * v36), v45, v40 * v36));
          v47[1] = 0x3F80000000000000;
          v51 = v48 * v39;
          v52 = v40 * v39;
          v47[2].f32[0] = v51;
          v47[2].f32[1] = v52;
          v47[4] = v35;
          v53 = v40 * v30;
          v40 = v40 * 0.866025404 + v48 * v30;
          v48 = -(v53 - v48 * 0.866025404);
          v47 += 12;
          --v43;
        }

        while (v43);
        v10 = *(v8 + 2);
      }

      v54 = __sincos_stret(v29);
      cosval = v54.__cosval;
      v57 = -cosval;
      v59 = 0.0;
      if (v28 >= 3.14159265)
      {
        v59 = 1.0;
      }

      v10[2].i8[0] = 103;
      sinval = v54.__sinval;
      v8[40] = sinval;
      v8[41] = v57;
      v58 = 1.0 - v6 / v34;
      v8[42] = v58;
      v8[43] = v59;
      (*(*v8 + 344))(v8, 2, (2 * v32 + 2), 0, *(v8 + 17), 0, (2 * v32 + 2), 0);
      *(*(v8 + 2) + 16) = 0;
    }
  }
}

float64x2_t CA::CG::StrokeArc::compute_dod(CA::CG::StrokeArc *this, float64x2_t *a2)
{
  v4 = *(this + 21);
  *a2 = vsubq_f64(*(this + 152), vdupq_lane_s64(v4, 0));
  a2[1].f64[0] = *&v4 + *&v4;
  a2[1].f64[1] = *&v4 + *&v4;
  if ((*(this + 100) & 4) == 0)
  {
    CA::Rect::apply_transform(a2, (this + 8));
  }

  result.f64[0] = a2[1].f64[1];
  if (a2[1].f64[0] > result.f64[0])
  {
    result.f64[0] = a2[1].f64[0];
  }

  if (result.f64[0] < 1.79769313e308)
  {
    v17 = a2[1];
    v6.f64[0] = CA::CG::stroke_radius(this + 112, *(this + 8), *(this + 24));
    v7.i64[0] = 0;
    v6.f64[1] = v8;
    v9 = vsubq_f64(*a2, v6);
    __asm { FMOV            V3.2D, #2.0 }

    v15 = vmlaq_f64(v17, _Q3, v6);
    v16 = vclezq_f64(v15);
    result = vandq_s8(v15, vdupq_lane_s64(vmvnq_s8(vcgtq_s64(v7, vorrq_s8(vdupq_laneq_s64(v16, 1), v16))).i64[0], 0));
    *a2 = v9;
    a2[1] = result;
  }

  return result;
}

void CA::CG::StrokeArc::~StrokeArc(CA::CG::StrokeArc *this)
{
  *this = &unk_1EF201FC8;
  if (*(this + 16))
  {
    CGDashRelease();
  }

  CA::CG::DrawOp::~DrawOp(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF201FC8;
  if (*(this + 16))
  {
    CGDashRelease();
  }

  CA::CG::DrawOp::~DrawOp(this);
}

double CA_CFDoubleValue(const void *a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = CFGetTypeID(a1);
  if (v2 == CFBooleanGetTypeID())
  {
    result = 0.0;
    if (*MEMORY[0x1E695E4C0] != a1)
    {
      return 1.0;
    }
  }

  else
  {
    TypeID = CFNumberGetTypeID();
    result = 0.0;
    if (v2 == TypeID)
    {
      v5[0] = 0;
      CFNumberGetValue(a1, kCFNumberDoubleType, v5);
      return *v5;
    }
  }

  return result;
}

BOOL CA_CFDictionaryGetBoolIfExists(const __CFDictionary *a1, const void *a2, BOOL *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  v5 = Value;
  if (Value)
  {
    *a3 = CA_CFBoolValue(Value);
  }

  return v5 != 0;
}

BOOL CA_CFDictionaryGetBoolWithDefaultValue(const __CFDictionary *a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(a1, @"prefersHighRefreshRate");
  if (!Value)
  {
    return a2;
  }

  return CA_CFBoolValue(Value);
}

double CA_CFDictionaryGetFloat(const __CFDictionary *a1, const void *a2)
{
  if (!a1)
  {
    return 0.0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0.0;
  }

  *&result = CA_CFFloatValue(Value);
  return result;
}

double CA_CFDictionaryGetDouble(const __CFDictionary *a1, const void *a2)
{
  if (!a1)
  {
    return 0.0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0.0;
  }

  return CA_CFDoubleValue(Value);
}

const void *CA_CFDictionaryGetArray(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFArrayGetTypeID())
  {
    return 0;
  }

  return v3;
}

const void *CA_CFDictionaryGetString(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFStringGetTypeID())
  {
    return 0;
  }

  return v3;
}

const void *CA_CFDictionaryGetDictionary(const __CFDictionary *a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return v3;
}

void CA_CFDictionarySetDouble(__CFDictionary *a1, const void *a2, double a3)
{
  v6[1] = *MEMORY[0x1E69E9840];
  *v6 = a3;
  v5 = CFNumberCreate(0, kCFNumberDoubleType, v6);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void CA_CFDictionarySetCString(__CFDictionary *a1, const void *a2, char *cStr)
{
  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  CFDictionarySetValue(a1, a2, v5);

  CFRelease(v5);
}

const void *CA_CFArrayGetDictionary(const __CFArray *a1, CFIndex a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  if (!ValueAtIndex)
  {
    return 0;
  }

  v3 = ValueAtIndex;
  v4 = CFGetTypeID(ValueAtIndex);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return v3;
}

void CA_CFArrayAppendDouble(__CFArray *a1, double a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  *v4 = a2;
  v3 = CFNumberCreate(0, kCFNumberDoubleType, v4);
  CFArrayAppendValue(a1, v3);
  CFRelease(v3);
}

char *CA_CFDataWriteTempFile(const __CFData *a1, const char *a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  result = 0;
  if (BytePtr && Length)
  {
    bzero(v15, 0x400uLL);
    if (getuid())
    {
      result = confstr(65537, v15, 0x400uLL);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      strcpy(v15, "/tmp/");
    }

    v12 = 0;
    asprintf(&v12, "%s%s", v15, a2);
    v9 = mkstemps(v12, a3);
    if (v9 < 0)
    {
      free(v12);
      return 0;
    }

    else
    {
      v10 = v9;
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v11 = x_log_get_utilities::log;
      if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v14 = v12;
        _os_log_impl(&dword_183AA6000, v11, OS_LOG_TYPE_DEFAULT, "Writing to '%s'", buf, 0xCu);
      }

      fchmod(v10, 0x1A4u);
      write(v10, BytePtr, Length);
      close(v10);
      return v12;
    }
  }

  return result;
}

pthread_t x_thread_create(uint64_t a1, uint64_t a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  memset(&v17, 0, sizeof(v17));
  v12 = 0;
  v6 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v6 = a1;
  v6[1] = a2;
  pthread_attr_init(&v17);
  pthread_attr_setscope(&v17, 1);
  pthread_attr_setdetachstate(&v17, 2);
  v11 = 0;
  pthread_attr_getstacksize(&v17, &v11);
  if (a3 && !(v11 >> 20))
  {
    pthread_attr_setstacksize(&v17, 0x100000uLL);
  }

  v7 = pthread_create(&v12, &v17, thread_fun, v6);
  pthread_attr_destroy(&v17);
  if (v7)
  {
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v9 = x_log_get_utilities::log;
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      v10 = strerror(v7);
      *buf = 67109378;
      v14 = v7;
      v15 = 2080;
      v16 = v10;
      _os_log_error_impl(&dword_183AA6000, v9, OS_LOG_TYPE_ERROR, "CoreAnimation: Failed to create thread (%d) - %s", buf, 0x12u);
    }

    abort();
  }

  return v12;
}

uint64_t thread_fun(void (**a1)(uint64_t))
{
  v2 = *a1;
  v1 = a1[1];
  free(a1);
  v2(v1);
  return 0;
}

Class ___Z22CACarPlayMarshalCreatev_block_invoke()
{
  dlopen("/System/Library/PrivateFrameworks/CarKit.framework/CarKit", 1);
  result = NSClassFromString(&cfstr_Carlayerproper.isa);
  CACarPlayMarshalCreate(void)::cls = result;
  return result;
}

__IOSurface *CA::CG::IOSurfaceDrawable::is_purged_(CA::CG::IOSurfaceDrawable *this)
{
  v4 = *MEMORY[0x1E69E9840];
  result = *(this + 12);
  if (result)
  {
    oldState = 0;
    return (!IOSurfaceSetPurgeable(result, 3u, &oldState) && oldState == 2);
  }

  return result;
}

void *CA::CG::IOSurfaceDrawable::create_queue(CA::CG::IOSurfaceDrawable *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_malloc(malloc_zone, 0xD0uLL, 0x165299FDuLL);
  if (result)
  {
    result = CA::CG::AccelQueue::AccelQueue(result, this);
    *result = &unk_1EF203220;
  }

  return result;
}

void CA::CG::IOSurfaceDrawable::synchronize_attributes(CA::CG::IOSurfaceDrawable *this, float a2)
{
  v6 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 3);
  if (*(this + 12))
  {
    valuePtr = a2;
    v4 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    IOSurfaceSetValue(*(this + 12), *MEMORY[0x1E696CEF0], v4);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  os_unfair_lock_unlock(this + 3);
}

void CA::CG::IOSurfaceDrawable::mark_texture(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 3);
  v2 = *&this[26]._os_unfair_lock_opaque;
  if (v2)
  {
    atomic_fetch_add((v2 + 36), 1u);
  }

  os_unfair_lock_unlock(this + 3);
}

void CA::CG::IOSurfaceDrawable::retain_shared_texture(os_unfair_lock_s *this@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock(this + 3);
  if (this[17]._os_unfair_lock_opaque)
  {
    v4 = 0;
  }

  else
  {
    CA::CG::IOSurfaceDrawable::ensure_shared_surface(this);
    v4 = *&this[26]._os_unfair_lock_opaque;
    if (v4)
    {
      v5 = (v4 + 8);
      if (!atomic_fetch_add((v4 + 8), 1u))
      {
        v4 = 0;
        atomic_fetch_add(v5, 0xFFFFFFFF);
      }
    }
  }

  *a2 = v4;

  os_unfair_lock_unlock(this + 3);
}

uint64_t CA::CG::IOSurfaceDrawable::ensure_shared_surface(uint64_t this)
{
  if (!*(this + 104))
  {
    v1 = this;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v2 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x178uLL, 0xDEEC3011uLL);
    v3 = v2;
    if (v2)
    {
      v2 = CA::Render::Surface::Surface(v2, *(v1 + 96), *(v1 + 16), 1, 0, 0, 0);
    }

    CA::Render::Texture::set_colorspace(v2, *(v1 + 24));
    this = *(v1 + 104);
    *(v1 + 104) = v3;
    if (this && atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
    {
      v4 = *(*this + 16);

      return v4();
    }
  }

  return this;
}

BOOL CA::CG::IOSurfaceDrawable::needs_gpu(CA::CG::IOSurfaceDrawable *this)
{
  v5 = *MEMORY[0x1E69E9840];
  IsTiled = IOSurfaceIsTiled();
  if (IsTiled && (CA::CG::IOSurfaceDrawable::needs_gpu(void)const::_before & 1) == 0)
  {
    if (x_log_get_cg(void)::once != -1)
    {
      dispatch_once(&x_log_get_cg(void)::once, &__block_literal_global_453);
    }

    v2 = x_log_get_cg(void)::log;
    if (os_log_type_enabled(x_log_get_cg(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "sw renderer doesn't support tiling\n", v4, 2u);
    }

    CA::CG::IOSurfaceDrawable::needs_gpu(void)const::_before = 1;
  }

  return IsTiled != 0;
}

void CA::CG::IOSurfaceDrawable::~IOSurfaceDrawable(CA::CG::IOSurfaceDrawable *this)
{
  *this = &unk_1EF2020B0;
  v2 = *(this + 13);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  *this = &unk_1EF2030C8;
  if ((*(this + 70) & 1) == 0)
  {
    __assert_rtn("~AccelDrawable", "cg-accel-drawable.cpp", 62, "_destroyed");
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF2020B0;
  v2 = *(this + 13);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  *this = &unk_1EF2030C8;
  if ((*(this + 70) & 1) == 0)
  {
    __assert_rtn("~AccelDrawable", "cg-accel-drawable.cpp", 62, "_destroyed");
  }
}

void CA::CG::IOSurfaceDrawable::destroy(CGColorSpaceRef *this)
{
  CA::CG::AccelDrawable::destroy(this);
  v2 = this[12];

  CFRelease(v2);
}

CA::CG::IOSurfaceDrawable *CA::CG::IOSurfaceDrawable::IOSurfaceDrawable(CA::CG::IOSurfaceDrawable *this, IOSurfaceRef buffer, int a3, int a4, CGColorSpace *a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9)
{
  Width = IOSurfaceGetWidth(buffer);
  Height = IOSurfaceGetHeight(buffer);
  v19 = Height;
  *&v20 = __PAIR64__(a7, a6);
  *(&v20 + 1) = __PAIR64__(Height, Width);
  v22 = v20;
  *this = &unk_1EF2030C8;
  *(this + 1) = 0;
  *(this + 4) = a3;
  *(this + 3) = CGColorSpaceRetain(a5);
  *(this + 8) = a4;
  *(this + 36) = v22;
  *(this + 52) = vbsl_s8(vceqz_s32(__PAIR64__(a9, a8)), __PAIR64__(v19, Width), __PAIR64__(a9, a8));
  *(this + 60) = 0;
  *(this + 67) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = 0;
  *(this + 2) = 1;
  *this = &unk_1EF2020B0;
  *(this + 12) = CFRetain(buffer);
  *(this + 13) = 0;
  return this;
}

CGImageRef CA::CG::IOSurfaceDrawable::copy_cgimage(CA::CG::IOSurfaceDrawable *this)
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 3);
  if ((*(this + 68) & 1) == 0)
  {
    if (!*(this + 10))
    {
      v3 = *(this + 4);
      os_unfair_lock_unlock(this + 3);
      v4 = *(this + 9);
      if (v4)
      {
        CA::CG::Queue::flush(v4, 3, 0);
      }

      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v5 = malloc_type_zone_malloc(malloc_zone, 0x40uLL, 0x165299FDuLL);
      if (v5)
      {
        v6 = *(this + 9);
        if (v6 || (v6 = (*(*this + 80))(this), (*(this + 9) = v6) != 0))
        {
          v7 = *(v6 + 48);
        }

        else
        {
          v7 = 0;
        }

        CA::CG::AccelDataProvider::AccelDataProvider(v5, this, v7);
        *&v5->_os_unfair_lock_opaque = &unk_1EF1F87C8;
      }

      BytesPerRow = IOSurfaceGetBytesPerRow(*(this + 12));
      CompressionTypeOfPlane = IOSurfaceGetCompressionTypeOfPlane();
      if (CompressionTypeOfPlane)
      {
        if (v3 > 0x25)
        {
          v10 = 0;
        }

        else
        {
          v10 = dword_183E22690[v3];
        }

        BytesPerRow = MEMORY[0x1865EA040](*MEMORY[0x1E696CE58], v10 * *(this + 13));
      }

      if (v3 > 0x25)
      {
        v11 = 0;
      }

      else
      {
        v11 = dword_183E22690[v3];
      }

      v12 = (*(this + 14) - 1) * BytesPerRow + v11 * *(this + 13);
      if (!CompressionTypeOfPlane && IOSurfaceGetAllocSize(*(this + 12)) < v12)
      {
        __assert_rtn("copy_cgimage", "cg-iosurface-drawable.cpp", 180, "IOSurfaceGetAllocSize (_surface) >= data_size");
      }

      Direct = CGDataProviderCreateDirect(v5, v12, &CA::CG::AccelDataProvider::callbacks(void)::vtable);
      v14 = *(this + 13);
      v15 = *(this + 14);
      if (v3 == 9)
      {
        *decode = xmmword_183E20E00;
        v16 = CGImageMaskCreate(v14, v15, 8uLL, 8uLL, BytesPerRow, Direct, decode, 1);
      }

      else
      {
        if (v3 > 0x23)
        {
          v17 = 0;
          v18 = 0;
        }

        else
        {
          v17 = dword_183E22728[v3];
          v18 = dword_183E22600[v3];
        }

        v16 = CGImageCreate(v14, v15, v17, v18, BytesPerRow, *(this + 3), *(this + 8), Direct, 0, 1, kCGRenderingIntentDefault);
      }

      v19 = v16;
      CGDataProviderRelease(Direct);
      if (v19)
      {
        CA::CG::AccelDataProvider::set_image(v5, v19);
        os_unfair_lock_lock(this + 3);
        if (!*(this + 10))
        {
          *(this + 10) = v19;
          goto LABEL_34;
        }

        os_unfair_lock_unlock(this + 3);
        CGImageRelease(v19);
      }

      os_unfair_lock_lock(this + 3);
    }

LABEL_34:
    v2 = CGImageRetain(*(this + 10));
    goto LABEL_35;
  }

  v2 = 0;
LABEL_35:
  os_unfair_lock_unlock(this + 3);
  return v2;
}

CGImageRef CA::CG::IOSurfaceDrawable::copy_cgimage_iosurface(CA::CG::IOSurfaceDrawable *this)
{
  if (*(this + 4) == 9)
  {

    return CA::CG::IOSurfaceDrawable::copy_cgimage(this);
  }

  else
  {
    v3 = *(this + 9);
    if (v3)
    {
      CA::CG::Queue::flush(v3, 3, 1);
    }

    os_unfair_lock_lock(this + 3);
    if (*(this + 68))
    {
      v4 = 0;
    }

    else
    {
      v4 = CACreateIOSurfaceBackedCGImage(*(this + 12), *(this + 8), *(this + 3));
      CGImageSetProperty();
    }

    os_unfair_lock_unlock(this + 3);
    return v4;
  }
}

__CFBundle *init_gpu_access(void)
{
  gpu_access_override = 0;
  result = CFBundleGetMainBundle();
  if (result)
  {
    result = CFBundleGetValueForInfoDictionaryKey(result, @"CAProcessCanAccessGPU");
    if (result)
    {
      gpu_access_override = 1;
      result = CA_CFBoolValue(result);
      gpu_access_allowed = result;
    }
  }

  return result;
}

void CA::OGL::anonymous namespace::RotateTransition::RotateTransition(CA::OGL::_anonymous_namespace_::RotateTransition *this)
{
  CA::OGL::rotate_transition_init(void)::rotate = &unk_1EF202128;
  {
    CAInternAtomWithCString("90ccw");
  }
}

void CA::OGL::anonymous namespace::RotateTransition::render(uint64_t a1, uint64_t a2, CA::OGL::Context *a3, float64x2_t *a4, float64x2_t *a5, uint64_t a6, uint64_t a7)
{
  v46 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *(*(a3 + 2) + 497) |= 1u;
  __asm { FMOV            V4.2D, #1.0 }

  if (a6)
  {
    _D0.i32[0] = v35;
    __asm { FCVT            H0, S0 }

    *(*(a3 + 2) + 8) = vdup_lane_s16(_D0, 0);
    v45 = 16;
    v36 = v19;
    v37 = v20;
    v38 = v21;
    v39 = v22;
    v40 = v23;
    v41 = v24;
    v42 = v25;
    v43 = v26;
    v44 = _Q4;
    v18 = _Q4;
    CA::OGL::fill_surface_rect(a3, a6, a5, &v36, *a4, a4[1]);
    _Q4 = v18;
  }

  if (a7)
  {
    _D0.i32[0] = HIDWORD(v35);
    __asm { FCVT            H0, S0 }

    *(*(a3 + 2) + 8) = vdup_lane_s16(_D0, 0);
    v45 = 16;
    v36 = v27;
    v37 = v28;
    v38 = v29;
    v39 = v30;
    v40 = v31;
    v41 = v32;
    v42 = v33;
    v43 = v34;
    v44 = _Q4;
    CA::OGL::fill_surface_rect(a3, a7, a5, &v36, *a4, a4[1]);
  }

  *(*(a3 + 2) + 497) &= ~1u;
}

void CA::OGL::anonymous namespace::RotateTransition::set_state(uint64_t a1, uint64_t a2, double *a3, float64x2_t *a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 20);
  {
    v7 = 3.14159265;
  }

  {
    v7 = -3.14159265;
  }

  else
  {
  }

  v8 = *(a2 + 48);
  v9 = *a3 + a3[2] * 0.5;
  v10 = a3[1] + a3[3] * 0.5;
  v11 = *a4;
  v12 = a4[1];
  v13 = a4[2];
  v14 = a4[3];
  *a1 = *a4;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  *(a1 + 48) = v14;
  v15 = a4[4];
  v16 = a4[5];
  v17 = a4[6];
  v18 = a4[7];
  *(a1 + 64) = v15;
  *(a1 + 80) = v16;
  v43 = v9;
  v47 = vdupq_lane_s64(*&v10, 0);
  v48 = vdupq_lane_s64(*&v9, 0);
  v46 = v10;
  *(a1 + 96) = vmlaq_f64(vmlaq_n_f64(vmlaq_n_f64(v17, v11, v9), v13, v10), 0, v15);
  *(a1 + 112) = vmlaq_f64(vmlaq_n_f64(vmlaq_n_f64(v18, v12, v9), v14, v10), 0, v16);
  v51 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = xmmword_183E20E00;
  v57 = 0u;
  v58 = xmmword_183E20E60;
  v22 = __sincos_stret(v7 * v8);
  *v21.i64 = v22.__cosval;
  *v20.i64 = v22.__sinval;
  if (fabs(v22.__sinval) >= 0.0000001)
  {
    if (fabs(v22.__cosval) < 0.0000001)
    {
      v21.i64[0] = 1.0;
      v24.f64[0] = NAN;
      v24.f64[1] = NAN;
      v20.i64[0] = vbslq_s8(vnegq_f64(v24), v21, v20).u64[0];
      v21.i64[0] = 0;
    }
  }

  else
  {
    v20.i64[0] = 1.0;
    v23.f64[0] = NAN;
    v23.f64[1] = NAN;
    v21.i64[0] = vbslq_s8(vnegq_f64(v23), v20, v21).u64[0];
    v20.i64[0] = 0;
  }

  v49 = *v21.i64;
  v50 = v20.i64[0];
  v52 = -*v20.i64;
  v53 = v21.i64[0];
  CA::Mat4Impl::mat4_concat(a1, &v49, a1, v19);
  v45 = vdupq_lane_s64(COERCE__INT64(-v43), 0);
  v25 = vmlsq_lane_f64(*(a1 + 96), *a1, v43, 0);
  v26 = vmlsq_lane_f64(*(a1 + 112), *(a1 + 16), v43, 0);
  v44 = vdupq_lane_s64(COERCE__INT64(-v46), 0);
  v27 = vmlaq_f64(vmlsq_lane_f64(v26, *(a1 + 48), v46, 0), 0, *(a1 + 80));
  *(a1 + 96) = vmlaq_f64(vmlsq_lane_f64(v25, *(a1 + 32), v46, 0), 0, *(a1 + 64));
  *(a1 + 112) = v27;
  v28 = *a4;
  v29 = a4[1];
  v30 = a4[2];
  v31 = a4[3];
  *(a1 + 128) = *a4;
  *(a1 + 144) = v29;
  *(a1 + 160) = v30;
  *(a1 + 176) = v31;
  v32 = a4[4];
  v33 = a4[5];
  v34 = a4[6];
  v35 = a4[7];
  *(a1 + 192) = v32;
  *(a1 + 208) = v33;
  *(a1 + 224) = vmlaq_f64(vmlaq_f64(vmlaq_f64(v34, v48, v28), v47, v30), 0, v32);
  *(a1 + 240) = vmlaq_f64(vmlaq_f64(vmlaq_f64(v35, v48, v29), v47, v31), 0, v33);
  v51 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = xmmword_183E20E00;
  v57 = 0u;
  v58 = xmmword_183E20E60;
  v39 = __sincos_stret(v7 * v8 - v7);
  *v38.i64 = v39.__cosval;
  *v37.i64 = v39.__sinval;
  if (fabs(v39.__sinval) >= 0.0000001)
  {
    if (fabs(v39.__cosval) < 0.0000001)
    {
      v38.i64[0] = 1.0;
      v41.f64[0] = NAN;
      v41.f64[1] = NAN;
      v37.i64[0] = vbslq_s8(vnegq_f64(v41), v38, v37).u64[0];
      v38.i64[0] = 0;
    }
  }

  else
  {
    v37.i64[0] = 1.0;
    v40.f64[0] = NAN;
    v40.f64[1] = NAN;
    v38.i64[0] = vbslq_s8(vnegq_f64(v40), v37, v38).u64[0];
    v37.i64[0] = 0;
  }

  v49 = *v38.i64;
  v50 = v37.i64[0];
  v52 = -*v37.i64;
  v53 = v38.i64[0];
  CA::Mat4Impl::mat4_concat((a1 + 128), &v49, (a1 + 128), v36);
  v42 = vmlaq_f64(vmlaq_f64(vmlaq_f64(*(a1 + 240), v45, *(a1 + 144)), v44, *(a1 + 176)), 0, *(a1 + 208));
  *(a1 + 224) = vmlaq_f64(vmlaq_f64(vmlaq_f64(*(a1 + 224), v45, *(a1 + 128)), v44, *(a1 + 160)), 0, *(a1 + 192));
  *(a1 + 240) = v42;
  *(a1 + 256) = 1.0 - v8;
  *(a1 + 260) = v8;
}

double CA::OGL::anonymous namespace::RotateTransition::ROI(CA::OGL::_anonymous_namespace_::RotateTransition *this, const Transition *a2, const CA::Rect *a3, const CA::Transform *a4, const CA::Rect *a5, CA::Rect *a6, CA::Rect *a7)
{
  result = *a3;
  v8 = *(a3 + 1);
  *a6 = *a3;
  *(a6 + 1) = v8;
  v9 = *(a3 + 2);
  v10 = *(a3 + 3);
  *(a6 + 2) = v9;
  *(a6 + 3) = v10;
  *a7 = result;
  *(a7 + 1) = v8;
  *(a7 + 2) = v9;
  *(a7 + 3) = v10;
  return result;
}

void CA::OGL::anonymous namespace::RotateTransition::DOD(const Transition *a1@<X1>, const CA::Rect *a2@<X2>, float64x2_t *a3@<X3>, const CA::Rect *a4@<X4>, float64x2_t *a5@<X5>, uint64_t a6@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v10 = *(a4 + 1);
  *a6 = *a4;
  *(a6 + 16) = v10;
  v11 = a5[1];
  v21 = *a5;
  v22 = v11;
  CA::Mat4Impl::mat4_apply_to_rect(v23, a6, v12);
  CA::Mat4Impl::mat4_apply_to_rect(v24, &v21, v13);
  v14 = *(a6 + 16);
  v15 = v22;
  v16 = vclezq_f64(v14);
  v17 = vclezq_f64(v22);
  v18 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v17, v16), vzip2q_s64(v17, v16))));
  if (v18.i8[4])
  {
    if (v18.i8[0])
    {
      return;
    }

    v19 = v21;
  }

  else
  {
    if (v18.i8[0])
    {
      return;
    }

    v20 = vaddq_f64(*a6, v14);
    v19 = vminnmq_f64(*a6, v21);
    v15 = vsubq_f64(vmaxnmq_f64(v20, vaddq_f64(v21, v22)), v19);
  }

  *a6 = v19;
  *(a6 + 16) = v15;
}