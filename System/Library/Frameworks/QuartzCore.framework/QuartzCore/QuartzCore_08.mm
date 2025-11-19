void x_heap_free(void ***a1)
{
  if (a1)
  {
    v1 = *a1;
    if (*a1)
    {
      v2 = *a1;
      do
      {
        free(*v2);
        v2 = v2[1];
      }

      while (v2);
      do
      {
        v3 = v1[1];
        free(v1);
        v1 = v3;
      }

      while (v3);
    }
  }
}

int *CAGetStatsStruct(char a1)
{
  v2 = CARecordCurrentDisplayGet();
  if (a1)
  {
    return &CAGetStatsStruct(BOOL)::iosurface_renderer_stats;
  }

  v4 = v2;
  if (!v2)
  {
    return &CAGetStatsStruct(BOOL)::ogl_renderer_stats_unknown;
  }

  if (v2 == 1)
  {
    return &CAGetStatsStruct(BOOL)::ogl_renderer_stats_main;
  }

  os_unfair_lock_lock(&CAGetStatsStruct(BOOL)::_ogl_renderer_stats_list_lock);
  v6 = CAGetStatsStruct(BOOL)::_ogl_renderer_stats_list[0];
  v5 = off_1EA84E448[0];
  if (CAGetStatsStruct(BOOL)::_ogl_renderer_stats_list[0] == off_1EA84E448[0])
  {
LABEL_11:
    v8 = off_1EA84E448[0] - CAGetStatsStruct(BOOL)::_ogl_renderer_stats_list[0];
    v9 = 0x4EC4EC4EC4EC4EC5 * ((off_1EA84E448[0] - CAGetStatsStruct(BOOL)::_ogl_renderer_stats_list[0]) >> 3) + 1;
    if (qword_1EA84E458 < v9)
    {
      v10 = off_1EA84E450;
      v11 = (qword_1EA84E458 + 1) | ((qword_1EA84E458 + 1) >> 1) | (((qword_1EA84E458 + 1) | ((qword_1EA84E458 + 1) >> 1)) >> 2);
      v12 = v11 | (v11 >> 4) | ((v11 | (v11 >> 4)) >> 8);
      v13 = v12 | (v12 >> 16) | ((v12 | (v12 >> 16)) >> 32);
      if (v13 + 1 > v9)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = 0x4EC4EC4EC4EC4EC5 * ((off_1EA84E448[0] - CAGetStatsStruct(BOOL)::_ogl_renderer_stats_list[0]) >> 3) + 1;
      }

      v15 = malloc_type_malloc(104 * v14, 0x10000409D46D3AFuLL);
      v16 = v15;
      v17 = CAGetStatsStruct(BOOL)::_ogl_renderer_stats_list[0];
      v18 = off_1EA84E448[0];
      if (CAGetStatsStruct(BOOL)::_ogl_renderer_stats_list[0] != off_1EA84E448[0])
      {
        v19 = v15;
        do
        {
          v20 = *v17;
          v21 = *(v17 + 2);
          *(v19 + 1) = *(v17 + 1);
          *(v19 + 2) = v21;
          *v19 = v20;
          v22 = *(v17 + 3);
          v23 = *(v17 + 4);
          v24 = *(v17 + 5);
          *(v19 + 12) = *(v17 + 12);
          *(v19 + 4) = v23;
          *(v19 + 5) = v24;
          *(v19 + 3) = v22;
          v19 += 26;
          v17 += 26;
        }

        while (v17 != v18);
      }

      if (v6 != v10)
      {
        free(CAGetStatsStruct(BOOL)::_ogl_renderer_stats_list[0]);
      }

      v5 = (v16 + v8);
      CAGetStatsStruct(BOOL)::_ogl_renderer_stats_list[0] = v16;
      off_1EA84E448[0] = (v16 + v8);
      qword_1EA84E458 = v14;
    }

    *(v5 + 12) = 0;
    *(v5 + 4) = 0u;
    *(v5 + 5) = 0u;
    *(v5 + 2) = 0u;
    *(v5 + 3) = 0u;
    *v5 = 0u;
    *(v5 + 1) = 0u;
    v7 = off_1EA84E448[0];
    v25 = off_1EA84E448[0];
    *off_1EA84E448[0] = v4;
    off_1EA84E448[0] = v25 + 26;
  }

  else
  {
    v7 = CAGetStatsStruct(BOOL)::_ogl_renderer_stats_list[0];
    while (*v7 != v4)
    {
      v7 += 26;
      if (v7 == off_1EA84E448[0])
      {
        goto LABEL_11;
      }
    }
  }

  v3 = v7 + 2;
  os_unfair_lock_unlock(&CAGetStatsStruct(BOOL)::_ogl_renderer_stats_list_lock);
  return v3;
}

atomic_uint *CA::Render::Context::root_layer_handle(CA::Render::Context *this)
{
  v1 = *(this + 34);
  if (!v1)
  {
    return 0;
  }

  result = *(this + 35);
  if (!result)
  {
    v5 = CA::Render::Context::lookup_handle(this, v1, 0, 0, 0);
    result = *(this + 35);
    if (result != v5)
    {
      if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        (*(*result + 16))(result);
      }

      if (v5)
      {
        v6 = (v5 + 8);
        if (!atomic_fetch_add(v5 + 2, 1u))
        {
          v5 = 0;
          atomic_fetch_add(v6, 0xFFFFFFFF);
        }
      }

      *(this + 35) = v5;
      result = v5;
    }

    if (result)
    {
      result[3] |= 0x100u;
      CA::Render::Handle::update_container_state(result, v4);
      return *(this + 35);
    }
  }

  return result;
}

unint64_t CAFrameRateRangeToFrameIntervalRange(CAFrameRateRange a1, double a2, uint64_t a3, int a4, int a5, int a6)
{
  preferred = a1.preferred;
  maximum = a1.maximum;
  minimum = a1.minimum;
  if (a1.minimum == 0.0 && a1.maximum == 0.0 && a1.preferred == 0.0 && a3 != 1)
  {
    if (CAPrefers60HzAPT(void)::once != -1)
    {
      dispatch_once(&CAPrefers60HzAPT(void)::once, &__block_literal_global_3);
    }

    if (CAPrefers60HzAPT(void)::enabled == 1)
    {
      minimum = 60.0;
      if (a5)
      {
        maximum = 60.0;
      }

      else
      {
        maximum = 80.0;
      }

      if (a5)
      {
        preferred = 60.0;
      }

      else
      {
        preferred = 0.0;
      }
    }

    else
    {
      minimum = 120.0;
      maximum = 120.0;
      preferred = 120.0;
    }
  }

  v15 = CAFrameRateToFrameInterval(maximum, a2, a3, a4, a5, a6);
  v16 = v15;
  v18 = maximum == 0.0 && minimum == 0.0;
  if (v18 && preferred == 0.0 || (v19 = 0, preferred != 0.0))
  {
    v19 = v15;
    if (maximum != preferred)
    {
      v19 = CAFrameRateToFrameInterval(preferred, a2, a3, a4, a5, a6);
    }
  }

  v20 = v19;
  if (preferred != minimum)
  {
    v20 = CAFrameRateToFrameInterval(minimum, a2, a3, a4, a5, a6);
  }

  return v16 | (v20 << 32);
}

uint64_t CAFrameRateToFrameInterval(int a1, double a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = a3;
  if (a2 == 0.0)
  {
    a2 = 0.0166666667;
  }

  v7 = a5 | a6;
  if (a1)
  {
    if (v7)
    {
      a2 = a2 * a3;
    }

    v8 = 1.0 / (a2 * a1) + -0.00100000005;
    v9 = llroundf(v8);
    if (v9 <= 1)
    {
      v9 = 1;
    }
  }

  else if (a4)
  {
    if (dyld_program_sdk_at_least())
    {
      v9 = 1;
    }

    else
    {
      v9 = 2 * v6;
    }
  }

  else
  {
    v9 = 1;
  }

  if (v7)
  {
    v10 = v6;
  }

  else
  {
    v10 = 1;
  }

  v11 = v9 * v10;
  if (v11 <= v6)
  {
    v11 = v6;
  }

  if (!v11)
  {
    __assert_rtn("CAFrameIntervalValidInterval", "CATimingReference.cpp", 111, "frame_interval != 0");
  }

  v12 = 0;
  while (frame_interval_table[v12] <= v11)
  {
    if (++v12 == 21)
    {
      return v6;
    }
  }

  return frame_interval_table[v12 - 1];
}

void *CA::Render::Layer::ensure_ext(CA::Render::Layer *this)
{
  v2 = *(this + 17);
  if (!v2)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v5 = malloc_type_zone_malloc(malloc_zone, 0x168uLL, 0x165299FDuLL);
    if (v5)
    {
      v4 = v5;
      *(v5 + 20) = 0;
      *(v5 + 8) = 0u;
      *(v5 + 9) = 0u;
      *(v5 + 6) = 0u;
      *(v5 + 7) = 0u;
      *(v5 + 4) = 0u;
      *(v5 + 5) = 0u;
      *(v5 + 2) = 0u;
      *(v5 + 3) = 0u;
      *v5 = 0u;
      *(v5 + 1) = 0u;
      v6 = 0.0;
      if ((*(this + 12) & 0x400000) == 0)
      {
        v6 = 0.5;
      }

      *(v5 + 21) = v6;
      *(v5 + 22) = v6;
      *(v5 + 24) = 0;
      *(v5 + 25) = 0;
      *(v5 + 23) = 0;
      *(v5 + 52) = 0;
      *(v5 + 212) = xmmword_183E20F90;
      *(v5 + 57) = 1077936128;
      *(v5 + 30) = 0;
      *(v5 + 31) = 0;
      *(v5 + 29) = 0;
      *(v5 + 16) = xmmword_183E20FA0;
      *(v5 + 17) = xmmword_183E20E40;
      v7 = 1065353216;
      *(v5 + 18) = xmmword_183E20FB0;
      LOBYTE(v7) = *(this + 38);
      v8 = v7;
      *(v5 + 76) = v8;
      LOBYTE(v8) = *(this + 39);
      *(v5 + 77) = LODWORD(v8);
      *(v5 + 39) = 0x3F80000000000000;
      *(v5 + 40) = 0;
      *(v5 + 41) = 0;
      *(v5 + 42) = 1065353216;
      *(v5 + 86) = 0;
      v5[348] &= ~1u;
      goto LABEL_68;
    }

LABEL_14:
    v2 = 0;
    goto LABEL_69;
  }

  if (*(v2 + 88) == 1)
  {
    return v2;
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_type_zone_malloc(malloc_zone, 0x168uLL, 0x165299FDuLL);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = v3;
  if (*v2)
  {
    (*(**v2 + 96))(*v2);
  }

  else
  {
    *v3 = 0;
  }

  v9 = v2[1];
  if (v9)
  {
    v10 = (v9 + 8);
    if (!atomic_fetch_add((v9 + 8), 1u))
    {
      v9 = 0;
      atomic_fetch_add(v10, 0xFFFFFFFF);
    }
  }

  *(v4 + 1) = v9;
  v11 = v2[2];
  if (v11)
  {
    v12 = (v11 + 8);
    if (!atomic_fetch_add((v11 + 8), 1u))
    {
      v11 = 0;
      atomic_fetch_add(v12, 0xFFFFFFFF);
    }
  }

  *(v4 + 2) = v11;
  v13 = v2[3];
  if (v13)
  {
    v14 = (v13 + 8);
    if (!atomic_fetch_add((v13 + 8), 1u))
    {
      v13 = 0;
      atomic_fetch_add(v14, 0xFFFFFFFF);
    }
  }

  *(v4 + 3) = v13;
  v15 = v2[4];
  if (v15)
  {
    v16 = (v15 + 8);
    if (!atomic_fetch_add((v15 + 8), 1u))
    {
      v15 = 0;
      atomic_fetch_add(v16, 0xFFFFFFFF);
    }
  }

  *(v4 + 4) = v15;
  v17 = v2[5];
  if (v17)
  {
    v18 = (v17 + 8);
    if (!atomic_fetch_add((v17 + 8), 1u))
    {
      v17 = 0;
      atomic_fetch_add(v18, 0xFFFFFFFF);
    }
  }

  *(v4 + 5) = v17;
  v19 = v2[6];
  if (v19)
  {
    v20 = (v19 + 8);
    if (!atomic_fetch_add((v19 + 8), 1u))
    {
      v19 = 0;
      atomic_fetch_add(v20, 0xFFFFFFFF);
    }
  }

  *(v4 + 6) = v19;
  v21 = v2[7];
  if (v21)
  {
    v22 = (v21 + 8);
    if (!atomic_fetch_add((v21 + 8), 1u))
    {
      v21 = 0;
      atomic_fetch_add(v22, 0xFFFFFFFF);
    }
  }

  *(v4 + 7) = v21;
  v23 = v2[8];
  if (v23)
  {
    v24 = (v23 + 8);
    if (!atomic_fetch_add((v23 + 8), 1u))
    {
      v23 = 0;
      atomic_fetch_add(v24, 0xFFFFFFFF);
    }
  }

  *(v4 + 8) = v23;
  v25 = v2[9];
  if (v25)
  {
    v26 = (v25 + 8);
    if (!atomic_fetch_add((v25 + 8), 1u))
    {
      v25 = 0;
      atomic_fetch_add(v26, 0xFFFFFFFF);
    }
  }

  *(v4 + 9) = v25;
  v27 = v2[10];
  if (v27)
  {
    v28 = (v27 + 8);
    if (!atomic_fetch_add((v27 + 8), 1u))
    {
      v27 = 0;
      atomic_fetch_add(v28, 0xFFFFFFFF);
    }
  }

  *(v4 + 10) = v27;
  v29 = v2[11];
  if (v29)
  {
    v30 = (v29 + 8);
    if (!atomic_fetch_add((v29 + 8), 1u))
    {
      v29 = 0;
      atomic_fetch_add(v30, 0xFFFFFFFF);
    }
  }

  *(v4 + 11) = v29;
  v31 = v2[12];
  if (v31)
  {
    v32 = (v31 + 8);
    if (!atomic_fetch_add((v31 + 8), 1u))
    {
      v31 = 0;
      atomic_fetch_add(v32, 0xFFFFFFFF);
    }
  }

  *(v4 + 12) = v31;
  v33 = v2[13];
  if (v33)
  {
    v34 = (v33 + 8);
    if (!atomic_fetch_add((v33 + 8), 1u))
    {
      v33 = 0;
      atomic_fetch_add(v34, 0xFFFFFFFF);
    }
  }

  *(v4 + 13) = v33;
  v35 = v2[14];
  if (v35)
  {
    v36 = (v35 + 8);
    if (!atomic_fetch_add((v35 + 8), 1u))
    {
      v35 = 0;
      atomic_fetch_add(v36, 0xFFFFFFFF);
    }
  }

  *(v4 + 14) = v35;
  v37 = v2[15];
  if (v37)
  {
    v38 = (v37 + 8);
    if (!atomic_fetch_add((v37 + 8), 1u))
    {
      v37 = 0;
      atomic_fetch_add(v38, 0xFFFFFFFF);
    }
  }

  *(v4 + 15) = v37;
  v39 = v2[16];
  if (v39)
  {
    v40 = (v39 + 8);
    if (!atomic_fetch_add((v39 + 8), 1u))
    {
      v39 = 0;
      atomic_fetch_add(v40, 0xFFFFFFFF);
    }
  }

  *(v4 + 16) = v39;
  v41 = v2[17];
  if (v41)
  {
    v42 = (v41 + 8);
    if (!atomic_fetch_add((v41 + 8), 1u))
    {
      v41 = 0;
      atomic_fetch_add(v42, 0xFFFFFFFF);
    }
  }

  *(v4 + 17) = v41;
  *(v4 + 18) = 0;
  *(v4 + 152) = *(v2 + 19);
  *(v4 + 168) = *(v2 + 21);
  *(v4 + 184) = *(v2 + 23);
  v43 = *(v2 + 25);
  *(v4 + 54) = *(v2 + 54);
  *(v4 + 200) = v43;
  *(v4 + 220) = *(v2 + 220);
  *(v4 + 228) = *(v2 + 228);
  v44 = *(v2 + 244);
  *(v4 + 65) = *(v2 + 65);
  *(v4 + 244) = v44;
  *(v4 + 264) = *(v2 + 33);
  *(v4 + 70) = *(v2 + 70);
  v45 = *(v2 + 284);
  *(v4 + 75) = *(v2 + 75);
  *(v4 + 284) = v45;
  *(v4 + 19) = *(v2 + 19);
  *(v4 + 80) = *(v2 + 80);
  v46 = *(v2 + 324);
  *(v4 + 85) = *(v2 + 85);
  *(v4 + 324) = v46;
  *(v4 + 86) = *(v2 + 86);
  v4[348] = v4[348] & 0xFE | *(v2 + 348) & 1;
LABEL_68:
  *(v4 + 88) = 1;
  v2 = v4;
LABEL_69:
  v47 = *(this + 17);
  *(this + 17) = v2;
  if (v47)
  {
    CA::Render::Layer::Ext::unref(v47);
  }

  return v2;
}

uint64_t CA::Render::Server::port_set(CA::Render::Server *this)
{
  v10 = *MEMORY[0x1E69E9840];
  result = CA::Render::Server::_server_port_set[0];
  name = CA::Render::Server::_server_port_set[0];
  if (!CA::Render::Server::_server_port_set[0])
  {
    v2 = MEMORY[0x1E69E9A60];
    mach_port_allocate(*MEMORY[0x1E69E9A60], 3u, &name);
    v3 = 0;
    atomic_compare_exchange_strong(CA::Render::Server::_server_port_set, &v3, name);
    if (v3)
    {
      v4 = mach_port_mod_refs(*v2, name, 3u, -1);
      if (v4)
      {
        v5 = v4;
        if (x_log_get_render(void)::once[0] != -1)
        {
          dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
        }

        v6 = x_log_get_render(void)::log;
        if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v9 = v5;
          _os_log_error_impl(&dword_183AA6000, v6, OS_LOG_TYPE_ERROR, "CA:Render:Server:port_set (): mach_port_mod_refs () returned error 0x%x\n", buf, 8u);
        }
      }
    }

    return CA::Render::Server::_server_port_set[0];
  }

  return result;
}

uint64_t CA::Render::Server::server_thread(CA::Render::Server *this, void *a2)
{
  MEMORY[0x1EEE9AC00](this);
  v3 = v2;
  v170[103] = *MEMORY[0x1E69E9840];
  v4 = pthread_setname_np("com.apple.coreanimation.render-server");
  if (v4)
  {
    v5 = v4;
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v6 = x_log_get_utilities::log;
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      policy_info[0].msgh_bits = 136315394;
      *&policy_info[0].msgh_size = "com.apple.coreanimation.render-server";
      LOWORD(policy_info[0].msgh_local_port) = 1024;
      *(&policy_info[0].msgh_local_port + 2) = v5;
      _os_log_error_impl(&dword_183AA6000, v6, OS_LOG_TYPE_ERROR, "pthread_setname_np(%s) returned %d\n", policy_info, 0x12u);
    }
  }

  pthread_mutex_lock(&CA::Render::Server::_mutex);
  CA::Render::Server::_thread = pthread_self();
  *v3 = 1;
  pthread_cond_broadcast(&CA::Render::Server::_cond);
  pthread_mutex_unlock(&CA::Render::Server::_mutex);
  v7 = getenv("CA_BENCHMARK");
  if (v7 && atoi(v7))
  {
    policy_info[0].msgh_bits = 0;
    v8 = MEMORY[0x1865EB350]();
    thread_policy_set(v8, 1u, policy_info, 1u);
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v8);
  }

  bzero(policy_info, 0x4000uLL);
  v9 = 0.0;
  v10 = &CADisplayTimerGetTypeID::type;
  do
  {
    while (1)
    {
      v11 = objc_autoreleasePoolPush();
      context = v11;
      if (!CA::Render::Server::_callback_list)
      {
        v15 = 0.0;
        if (v9 == 0.0)
        {
          goto LABEL_34;
        }

        goto LABEL_31;
      }

      v12 = mach_absolute_time();
      v13 = CATimeWithHostTime(v12);
      while (1)
      {
        os_unfair_lock_lock(&CA::Render::Server::_callback_lock);
        v14 = CA::Render::Server::_callback_list;
        if (!CA::Render::Server::_callback_list)
        {
          break;
        }

        v15 = *(CA::Render::Server::_callback_list + 8);
        if (v13 < v15)
        {
          goto LABEL_27;
        }

        CA::Render::Server::_callback_list = *CA::Render::Server::_callback_list;
        os_unfair_lock_unlock(&CA::Render::Server::_callback_lock);
        v16.n128_u64[0] = *(v14 + 8);
        if (v16.n128_f64[0] < *(v14 + 16))
        {
          v16.n128_u64[0] = *(v14 + 16);
        }

        v17 = v13 - v16.n128_f64[0];
        if (v13 - v16.n128_f64[0] > 1.0)
        {
          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          v18 = x_log_get_render(void)::log;
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            *v169 = 134217984;
            *&v169[4] = v17;
            _os_log_impl(&dword_183AA6000, v18, OS_LOG_TYPE_DEFAULT, "Render::Server callback delayed by %.2fs", v169, 0xCu);
          }
        }

        v16.n128_u64[0] = *(v14 + 8);
        if (v13 > v16.n128_f64[0])
        {
          v16.n128_f64[0] = v13;
        }

        (*(v14 + 24))(*(v14 + 32), v16);
        if (v10[95] != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_zone_free(malloc_zone, v14);
      }

      v15 = 0.0;
LABEL_27:
      os_unfair_lock_unlock(&CA::Render::Server::_callback_lock);
      if (v9 != v15)
      {
        if (v15 > 0.0)
        {
          CA::Render::Server::timer_port(v11);
          CAHostTimeWithTime(v15);
          v11 = mk_timer_arm_leeway();
LABEL_33:
          v9 = v15;
          goto LABEL_34;
        }

LABEL_31:
        if (v9 > 0.0)
        {
          CA::Render::Server::timer_port(v11);
          v11 = mk_timer_cancel();
        }

        goto LABEL_33;
      }

LABEL_34:
      v19 = CA::Render::Server::port_set(v11);
      v20 = mach_msg(policy_info, 50333710, 0, 0x4000u, v19, 0, 0);
      if (!v20)
      {
        v161 = 0;
        if (policy_info[0].msgh_size >= 0x3FB9)
        {
          v27 = 0x4000;
        }

        else
        {
          v27 = ((policy_info[0].msgh_size + 3) & 0x1FFFFFFFCLL) + 68;
        }

        v25 = policy_info;
        goto LABEL_50;
      }

      v21 = v20;
      if (v20 == 268451844)
      {
        break;
      }

LABEL_41:
      if (v21 == 268451843)
      {
        goto LABEL_72;
      }

      if (CADeviceHasInternalBuild::once != -1)
      {
        dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
      }

      if (CADeviceHasInternalBuild::internal)
      {
        if (v21 == 268455948)
        {
          CARenderServerDumpVMRegions();
          LODWORD(v21) = 268455948;
        }

LABEL_319:
        if (x_log_get_render(void)::once[0] != -1)
        {
          dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
        }

        v142 = x_log_get_render(void)::log;
        if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
        {
          *v169 = 67109120;
          *&v169[4] = v21;
          v143 = "CoreAnimation: mach_msg returned 0x%x!\n";
          v144 = v142;
          v145 = 8;
          goto LABEL_332;
        }

        goto LABEL_333;
      }

LABEL_71:
      CA::Render::Server::error_jump_table[0] = CA::Render::Server::ca_mach_msg_error_0;
      qword_1EA852B50 = CA::Render::Server::ca_mach_msg_error_1;
      qword_1EA852B58 = CA::Render::Server::ca_mach_msg_error_2;
      qword_1EA852B60 = CA::Render::Server::ca_mach_msg_error_3;
      qword_1EA852B68 = CA::Render::Server::ca_mach_msg_error_4;
      qword_1EA852B70 = CA::Render::Server::ca_mach_msg_error_5;
      qword_1EA852B78 = CA::Render::Server::ca_mach_msg_error_6;
      qword_1EA852B80 = CA::Render::Server::ca_mach_msg_error_7;
      qword_1EA852B88 = CA::Render::Server::ca_mach_msg_error_8;
      qword_1EA852B90 = CA::Render::Server::ca_mach_msg_error_9;
      qword_1EA852B98 = CA::Render::Server::ca_mach_msg_error_a;
      qword_1EA852BA0 = CA::Render::Server::ca_mach_msg_error_b;
      qword_1EA852BA8 = CA::Render::Server::ca_mach_msg_error_c;
      qword_1EA852BB0 = CA::Render::Server::ca_mach_msg_error_d;
      qword_1EA852BB8 = CA::Render::Server::ca_mach_msg_error_e;
      qword_1EA852BC0 = CA::Render::Server::ca_mach_msg_error_f;
      (CA::Render::Server::error_jump_table[v21 & 0xF])(v21, 4);
LABEL_72:
      objc_autoreleasePoolPop(context);
    }

    msgh_local_port = policy_info[0].msgh_local_port;
    v23 = ((policy_info[0].msgh_size + 3) & 0x1FFFFFFFCLL) + 68;
    v24 = malloc_type_calloc(1uLL, v23, 0x1000040504FFAC1uLL);
    if (!v24)
    {
      mach_msg(0, 2, 0, 0, msgh_local_port, 0, 0);
      if (CADeviceHasInternalBuild::once != -1)
      {
        dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
      }

      v10 = &CADisplayTimerGetTypeID::type;
      if (CADeviceHasInternalBuild::internal == 1)
      {
        if (x_log_get_render(void)::once[0] != -1)
        {
          dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
        }

        v147 = x_log_get_render(void)::log;
        if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
        {
          *v169 = 134217984;
          *&v169[4] = v23;
          v143 = "CoreAnimation: Couldn't allocate buffer of %zu bytes for message!";
          v144 = v147;
          v145 = 12;
          goto LABEL_332;
        }

LABEL_333:
        abort();
      }

      v21 = 268451844;
      if (CADeviceHasInternalBuild::internal)
      {
        goto LABEL_319;
      }

      goto LABEL_71;
    }

    v25 = v24;
    v26 = mach_msg(v24, 50333698, 0, v23, msgh_local_port, 0, 0);
    if (v26)
    {
      v21 = v26;
      free(v25);
      if (CADeviceHasInternalBuild::once != -1)
      {
        dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
      }

      v10 = &CADisplayTimerGetTypeID::type;
      if (CADeviceHasInternalBuild::internal == 1)
      {
        if (x_log_get_render(void)::once[0] != -1)
        {
          dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
        }

        v146 = x_log_get_render(void)::log;
        if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_333;
        }

        *v169 = 67109376;
        *&v169[4] = v21;
        *&v169[8] = 2048;
        *&v169[10] = v23;
        v143 = "CoreAnimation: mach_msg returned 0x%x for retry with size:%zu\n";
        v144 = v146;
        goto LABEL_327;
      }

      goto LABEL_41;
    }

    v27 = 0;
    v161 = 1;
LABEL_50:
    state = voucher_mach_msg_adopt(v25);
    v28 = v25->msgh_local_port;
    v29 = CA::Render::Server::notify_port(state);
    if (v28 == v29)
    {
      v30 = (&v25->msgh_bits + ((v25->msgh_size + 3) & 0x1FFFFFFFCLL));
      if (!*v30 && v30[1] >= 0x34u && !v30[10])
      {
        msgh_id = v25->msgh_id;
        if (msgh_id == 70)
        {
          v157 = v27;
          if (CA::Render::Fence::fence_info_once != -1)
          {
            dispatch_once_f(&CA::Render::Fence::fence_info_once, 0, CA::Render::Fence::fence_info_init);
          }

          os_unfair_lock_lock(&CA::Render::Fence::_lock);
          v62 = *(CA::Render::Fence::fences_by_name + 16);
          if (v62)
          {
            v63 = 0;
LABEL_128:
            v64 = CA::Render::Fence::cleared_f_names;
            do
            {
              attributes = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(v64, v62[2]);
              if (!attributes)
              {
                v66 = *(v62[3] + 16);
                v170[0] = 0;
                memset(v169, 0, sizeof(v169));
                port_info_outCnt[0] = 10;
                attributes = mach_port_get_attributes(*MEMORY[0x1E69E9A60], v66, 2, v169, port_info_outCnt);
                v64 = CA::Render::Fence::cleared_f_names;
                if (attributes || *&v169[24] == 0)
                {
                  attributes = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(CA::Render::Fence::cleared_f_names, v62[2]);
                  v62 = *v62;
                  v63 = 1;
                  if (v62)
                  {
                    goto LABEL_128;
                  }

                  goto LABEL_139;
                }
              }

              v62 = *v62;
            }

            while (v62);
            if ((v63 & 1) == 0)
            {
              goto LABEL_140;
            }

LABEL_139:
            CA::Render::Fence::resolve_fences(attributes);
          }

LABEL_140:
          v68 = *(CA::Render::Fence::batches_by_port + 16);
          if (v68)
          {
            v69 = 0;
LABEL_142:
            v159 = v69;
            do
            {
              v70 = *(v68 + 4);
              if (!std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(CA::Render::Fence::cleared_b_ports, v70) && *(v68[3] + 16) == 0.0)
              {
                v170[0] = 0;
                memset(v169, 0, sizeof(v169));
                port_info_outCnt[0] = 10;
                if (mach_port_get_attributes(*MEMORY[0x1E69E9A60], v70, 2, v169, port_info_outCnt) || *&v169[24] == 0)
                {
                  v72 = v68[3];
                  v73 = *(*(v72 + 32) + 16);
                  if (v73)
                  {
                    v74 = CA::Render::Fence::bcontexts_by_id;
                    do
                    {
                      v75 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v74, *(v73 + 4));
                      if (v75)
                      {
                        v76 = CA::Render::Context::delay_of_batch(*v75[3], *(v68 + 4));
                        v72 = v68[3];
                        v74 = CA::Render::Fence::bcontexts_by_id;
                        if (v76 > *(v72 + 16) && (*(v72 + 16) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                        {
                          *(v72 + 16) = v76;
                        }
                      }

                      v73 = *v73;
                    }

                    while (v73);
                  }

                  v78 = *(v72 + 16);
                  if (v78 == 0.0 || (v79 = mach_absolute_time(), v78 <= CATimeWithHostTime(v79)))
                  {
                    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(CA::Render::Fence::cleared_b_ports, *(v68 + 4));
                    v68 = *v68;
                    v69 = 1;
                    if (v68)
                    {
                      goto LABEL_142;
                    }

                    goto LABEL_167;
                  }

                  CA::Render::Server::add_callback(3, CA::Render::Fence::btimeout_callback, 0, *(v68[3] + 16));
                }
              }

              v68 = *v68;
            }

            while (v68);
            if ((v159 & 1) == 0)
            {
              goto LABEL_168;
            }

LABEL_167:
            v80 = mach_absolute_time();
            v81 = CATimeWithHostTime(v80);
            CA::Render::Fence::resolve_batches(v82, v81);
          }

LABEL_168:
          os_unfair_lock_unlock(&CA::Render::Fence::_lock);
          v27 = v157;
        }

        else if (msgh_id == 72)
        {
          while (1)
          {
            v58 = CA::Render::Context::context_by_client_port(v25[1].msgh_remote_port);
            if (!v58)
            {
              break;
            }

            v59 = v58;
            if ((*(v58 + 14) & 0x10) != 0)
            {
              CA::Render::Context::zombify(v58);
              if (atomic_fetch_add(v59 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v59 + 16))(v59);
              }

              goto LABEL_186;
            }

            CA::Render::Context::destroy(v58);
            if (atomic_fetch_add(v59 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v59 + 16))(v59);
            }
          }

          os_unfair_lock_lock(&CA::Render::Server::_dead_name_watch_list_lock);
          CA::Render::Server::dead_name_watch_list(v83);
          v84 = std::__hash_table<std::__hash_value_type<unsigned int,BOOL (*)>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL (*)>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL (*)>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL (*)>>>::find<unsigned int>(v25[1].msgh_remote_port);
          if (v84)
          {
            v85 = v84[3];
            std::__hash_table<std::__hash_value_type<unsigned int,BOOL (*)>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,BOOL (*)>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,BOOL (*)>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,BOOL (*)>>>::erase(v84);
            os_unfair_lock_unlock(&CA::Render::Server::_dead_name_watch_list_lock);
            if (v85)
            {
              v85(v25[1].msgh_remote_port);
            }
          }

          else
          {
            os_unfair_lock_unlock(&CA::Render::Server::_dead_name_watch_list_lock);
          }

LABEL_186:
          mach_port_deallocate(*MEMORY[0x1E69E9A60], v25[1].msgh_remote_port);
        }
      }

      v31 = v25;
      goto LABEL_55;
    }

    v33 = v25->msgh_local_port;
    if (v33 == CA::Render::Server::timer_port(v29))
    {
      goto LABEL_58;
    }

    v34 = v25->msgh_id;
    if ((v34 - 40000) > 0xC7)
    {
      if ((v34 - 40200) <= 0xC7)
      {
        bzero(v169, 0x358uLL);
        msgh_remote_port = v25->msgh_remote_port;
        *v169 = v25->msgh_bits & 0x1F;
        *&v169[4] = 36;
        v46 = v25->msgh_id + 100;
        *&v169[8] = msgh_remote_port;
        *&v169[12] = 0;
        *&v169[16] = 0;
        *&v169[20] = v46;
        v47 = v25->msgh_id;
        if ((v47 - 40290) >= 0xFFFFFFA6 && (v48 = CASCARenderServices_subsystem[5 * (v47 - 40200) + 5]) != 0)
        {
          (v48)(v25, v169);
          if (!*&v169[8])
          {
            goto LABEL_56;
          }

          v49 = v169;
          if ((mach_msg(v169, 1, *&v169[4], 0, 0, 0, 0) - 268435459) >= 2)
          {
            goto LABEL_56;
          }
        }

        else
        {
          *&v169[24] = *MEMORY[0x1E69E99E0];
          LODWORD(v170[0]) = -303;
          v49 = v25;
        }

        v31 = v49;
LABEL_55:
        mach_msg_destroy(v31);
LABEL_56:
        v32 = 0;
        goto LABEL_60;
      }

LABEL_58:
      v32 = 0;
LABEL_59:
      mach_msg_destroy(v25);
      goto LABEL_60;
    }

    if (v34 - 40002 >= 4)
    {
      v50 = v25->msgh_id;
      if (v50 == 40001)
      {
        v32 = 0;
        CA::Render::Server::_kicked = 0;
      }

      else
      {
        if (v50 != 40000)
        {
          goto LABEL_58;
        }

        v51 = atomic_load(CA::Render::Server::_stopping);
        if ((v51 & 1) == 0)
        {
          goto LABEL_58;
        }

        v52 = CA::Render::Server::_server_port;
        v53 = CA::Render::Server::_server_port;
        atomic_compare_exchange_strong(&CA::Render::Server::_server_port, &v53, 0);
        if (v53 == v52)
        {
          mach_port_mod_refs(*MEMORY[0x1E69E9A60], v52, 1u, -1);
          mach_port_deallocate(*MEMORY[0x1E69E9A60], v52);
        }

        if (CA::Render::Server::_checked_in_ports)
        {
          os_unfair_lock_lock(&CA::Render::Server::_checked_in_lock);
          v54 = CA::Render::Server::_checked_in_ports;
          if (CA::Render::Server::_checked_in_ports)
          {
            do
            {
              mach_port_mod_refs(*MEMORY[0x1E69E9A60], *v54, 1u, -1);
              v54 = *(v54 + 8);
            }

            while (v54);
            v55 = CA::Render::Server::_checked_in_ports;
            if (CA::Render::Server::_checked_in_ports)
            {
              do
              {
                v56 = v55[1];
                free(v55);
                v55 = v56;
              }

              while (v56);
            }
          }

          CA::Render::Server::_checked_in_ports = 0;
          os_unfair_lock_unlock(&CA::Render::Server::_checked_in_lock);
        }

        v32 = 1;
      }

      goto LABEL_59;
    }

    v35 = CA::Render::Context::context_by_server_port(v25->msgh_local_port);
    if (!v35)
    {
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v60 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        *v169 = 0;
        _os_log_error_impl(&dword_183AA6000, v60, OS_LOG_TYPE_ERROR, "dropping CmdStreamMsg due to missing ctx", v169, 2u);
      }

      goto LABEL_58;
    }

    v158 = v35;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v36 = malloc_type_zone_malloc(malloc_zone, 0x1058uLL, 0x165299FDuLL);
    if (!v36)
    {
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v61 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        v88 = *(v158 + 4);
        *v169 = 67109120;
        *&v169[4] = v88;
        _os_log_error_impl(&dword_183AA6000, v61, OS_LOG_TYPE_ERROR, "failed to create CmdStreamMsg for %x", v169, 8u);
      }

      if (atomic_fetch_add(v158 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v158 + 16))(v158);
      }

      goto LABEL_58;
    }

    v37 = v36;
    v156 = v27;
    v36[7] = 0;
    v38 = v36 + 7;
    *v37 = &unk_1EF1FA478;
    v37[1] = v158;
    v37[4] = 0;
    v37[5] = 0;
    v37[2] = v25;
    v37[3] = 0;
    v37[8] = v37 + 11;
    *(v37 + 9) = xmmword_183E21150;
    v37[6] = v38;
    v39 = v37 + 519;
    v37[519] = 0;
    v37[521] = 0;
    v37[520] = 0;
    *(v37 + 4176) = 0;
    *(v37 + 4177) = v161;
    msgh_bits = v25[1].msgh_bits;
    if (((v25->msgh_bits & 0x80000000) != 0 || !msgh_bits) && ((v25->msgh_bits & 0x80000000) == 0 || msgh_bits))
    {
      msgh_voucher_port = 0;
      p_msgh_size = &v25[1].msgh_size;
      v43 = v25->msgh_id;
      if (v43 > 40003)
      {
        if (v43 == 40004)
        {
LABEL_180:
          if (v25->msgh_size <= 0x1B)
          {
            if (CADeviceHasInternalBuild::once != -1)
            {
              dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
            }

            if (CADeviceHasInternalBuild::internal == 1)
            {
              if (x_log_get_render(void)::once[0] != -1)
              {
                dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
              }

              v150 = x_log_get_render(void)::log;
              if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
              {
                v151 = v37[2];
                v152 = *(v151 + 4);
                *v169 = 134218752;
                *&v169[4] = &p_msgh_size[-v151];
                *&v169[12] = 2048;
                *&v169[14] = v152;
                *&v169[22] = 2048;
                *&v169[24] = v25 + 28;
                LOWORD(v170[0]) = 2048;
                *(v170 + 2) = v151;
                v143 = "CoreAnimation: Message buffer underflow, diff: %lld, msgh_size: %lld, desc: %p, _msg: %p!";
                v144 = v150;
                v145 = 42;
LABEL_332:
                _os_log_error_impl(&dword_183AA6000, v144, OS_LOG_TYPE_ERROR, v143, v169, v145);
              }

              goto LABEL_333;
            }

            goto LABEL_222;
          }

          msgh_voucher_port = 0;
          v86 = 0;
          goto LABEL_193;
        }

        v44 = 40005;
      }

      else
      {
        if (v43 == 40002)
        {
          goto LABEL_180;
        }

        v44 = 40003;
      }

      if (v43 != v44)
      {
        v86 = 0;
        goto LABEL_193;
      }

      v37[4] = p_msgh_size;
      if (msgh_bits && HIBYTE(v25[1].msgh_local_port) == 1)
      {
        v86 = *&v25[1].msgh_size;
        msgh_voucher_port = v25[1].msgh_voucher_port;
        p_msgh_size = &v25[1].msgh_id;
        --msgh_bits;
LABEL_193:
        if (v43 >> 1 != 20002)
        {
          goto LABEL_205;
        }

        if (!msgh_bits)
        {
          goto LABEL_197;
        }

        v87 = *(p_msgh_size + 2);
        if (!HIBYTE(v87))
        {
          if ((v87 & 0xFF0000) == 0x110000)
          {
            goto LABEL_202;
          }

          goto LABEL_197;
        }

        if (HIWORD(v87) != 529)
        {
LABEL_197:
          if (CADeviceHasInternalBuild::once != -1)
          {
            dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
          }

          if (CADeviceHasInternalBuild::internal == 1)
          {
            if (x_log_get_render(void)::once[0] != -1)
            {
              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            }

            v148 = x_log_get_render(void)::log;
            if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_333;
            }

            if (msgh_bits)
            {
              v153 = p_msgh_size[11];
            }

            else
            {
              v153 = 123456;
            }

            *v169 = 134218240;
            *&v169[4] = msgh_bits;
            *&v169[12] = 1024;
            *&v169[14] = v153;
            v143 = "CoreAnimation: Message is batched CommandStream, but no batch ports, desc_count: %zu, port->type:%u!";
            goto LABEL_354;
          }

          goto LABEL_222;
        }

LABEL_202:
        v37[5] = p_msgh_size;
        v89 = 16;
        if (!p_msgh_size[11])
        {
          v89 = 12;
        }

        p_msgh_size += v89;
        --msgh_bits;
LABEL_205:
        v162 = v86;
        v155 = msgh_voucher_port;
        v37[519] = x_heap_malloc(v38, 8 * msgh_bits);
        v37[520] = msgh_bits;
        if (msgh_bits)
        {
          for (i = 0; i != msgh_bits; ++i)
          {
            *(v37[519] + 8 * i) = x_heap_malloc_small_(v37[6], 0x30uLL);
            v91 = HIBYTE(*(p_msgh_size + 2));
            if (v91)
            {
              if (v91 != 1)
              {
                goto LABEL_222;
              }

              v92 = *(*v39 + 8 * i);
              *(v92 + 8) = 1;
              *(v92 + 16) = *p_msgh_size;
              *(*(*v39 + 8 * i) + 24) = *(p_msgh_size + 3);
              *(*(*v39 + 8 * i) + 32) = CA::Render::Server::release_vm;
              *(*(*v39 + 8 * i) + 40) = *(p_msgh_size + 3);
              p_msgh_size += 16;
              MEMORY[0x1865EC180](*MEMORY[0x1E69E9A60], *(*(*v39 + 8 * i) + 16), *(*(*v39 + 8 * i) + 24), 1, 1);
            }

            else
            {
              v93 = *(*v39 + 8 * i);
              *(v93 + 8) = 2;
              *(v93 + 16) = *p_msgh_size;
              *(*(*v39 + 8 * i) + 20) = p_msgh_size[10];
              *(*(*v39 + 8 * i) + 24) = 1;
              p_msgh_size += 12;
            }
          }
        }

        v37[3] = p_msgh_size;
        v94 = v37[2];
        v95 = *(v94 + 20);
        v96 = v155;
        if (v95 == 40004 || v95 == 40002)
        {
          v96 = v94 - p_msgh_size + *(v94 + 4);
          v162 = p_msgh_size;
        }

        v27 = v156;
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v97 = malloc_type_zone_malloc(malloc_zone, 0x58uLL, 0x165299FDuLL);
        if (v97)
        {
          v97 = CA::Render::Decoder::Decoder(v97, v37[6], v37[1], v162, v96);
        }

        if (v97[18])
        {
          (*(*v97 + 8))(v97);
          goto LABEL_222;
        }

        v37[521] = v97;
LABEL_223:
        v165 = v37;
        os_unfair_lock_lock(v158 + 178);
        if ((*(v158 + 13) & 4) != 0)
        {
          (*(*v37 + 8))(v37);
LABEL_316:
          os_unfair_lock_unlock(v158 + 178);
          v32 = 0;
          v161 = 0;
          goto LABEL_60;
        }

        v170[0] = 1065353216;
        memset(v169, 0, sizeof(v169));
        (*(*v37 + 24))(v37, v169);
        if (*&v169[24])
        {
          os_unfair_lock_lock(&CA::Render::Fence::_lock);
          v98 = *(v158 + 4);
          v166 = v98;
          v99 = *&v169[16];
          if (*&v169[16])
          {
            do
            {
              while (1)
              {
                mach_port_deallocate(*MEMORY[0x1E69E9A60], *(v99 + 16));
                v100 = *(v99 + 16);
                if (v100 - 1 <= 0xFFFFFFFD && !std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(CA::Render::Fence::cleared_b_ports, *(v99 + 16)))
                {
                  v101 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(CA::Render::Fence::batches_by_port, v100);
                  if (v101)
                  {
                    v102 = v101[3];
                    if (*(v102 + 16) == 0.0)
                    {
                      break;
                    }
                  }
                }

                v99 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::erase(v169, v99);
                if (!v99)
                {
                  goto LABEL_236;
                }
              }

              v103 = *(v102 + 24);
              v104 = v166;
              if (!std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v103, v166))
              {
                std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(v103, v104);
                v104 = v166;
                if (*(v102 + 44) == 1)
                {
                  kdebug_trace();
                  v104 = v166;
                }
              }

              std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(*(v102 + 32), v104);
              v99 = *v99;
            }

            while (v99);
LABEL_236:
            v98 = v166;
          }

          v105 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(CA::Render::Fence::bcontexts_by_id, v98);
          if (!v105)
          {
            if (!atomic_fetch_add(v158 + 2, 1u))
            {
              atomic_fetch_add(v158 + 2, 0xFFFFFFFF);
            }

            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            *malloc_type_zone_malloc(malloc_zone, 0x18uLL, 0x20040960023A9uLL) = v158;
            operator new();
          }

          v107 = *(v105[3] + 8);
          v108 = v107[1];
          v109 = v107[2];
          if (v108 >= v109)
          {
            v111 = 0xCCCCCCCCCCCCCCCDLL * ((v108 - *v107) >> 3) + 1;
            if (v111 > 0x666666666666666)
            {
              std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
            }

            v112 = 0xCCCCCCCCCCCCCCCDLL * ((v109 - *v107) >> 3);
            if (2 * v112 > v111)
            {
              v111 = 2 * v112;
            }

            if (v112 >= 0x333333333333333)
            {
              v113 = 0x666666666666666;
            }

            else
            {
              v113 = v111;
            }

            if (v113)
            {
              if (v113 <= 0x666666666666666)
              {
                operator new();
              }

              std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
            }

            v114 = 8 * ((v108 - *v107) >> 3);
            std::unordered_set<unsigned int>::unordered_set(v114, v169);
            v115 = *v107;
            v116 = v107[1];
            v163 = v114 + *v107 - v116;
            if (v116 != *v107)
            {
              v154 = v114;
              v117 = *v107;
              v118 = v163;
              do
              {
                v119 = std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__hash_table(v118, v117);
                v117 += 5;
                v118 = v119 + 40;
              }

              while (v117 != v116);
              v114 = v154;
              do
              {
                std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v115);
                v115 += 40;
              }

              while (v115 != v116);
            }

            v120 = *v107;
            v110 = v114 + 40;
            *v107 = v163;
            v107[1] = v110;
            v107[2] = 0;
            if (v120)
            {
              operator delete(v120);
            }
          }

          else
          {
            v110 = std::unordered_set<unsigned int>::unordered_set(v108, v169) + 40;
          }

          v107[1] = v110;
          os_unfair_lock_unlock(&CA::Render::Fence::_lock);
          v27 = v156;
        }

        v121 = (*(*v37 + 16))(v37);
        v122 = v121;
        if (v121 == 0.0)
        {
          v125 = v121;
        }

        else
        {
          v123 = mach_absolute_time();
          v124 = CATimeWithHostTime(v123);
          v125 = 0.0;
          if (v122 <= v124)
          {
LABEL_284:
            if (!*(v158 + 90) && !*&v169[24])
            {
              CA::Render::Context::apply_streams(v158, &v165, 1);
              (*(*v37 + 8))(v37);
LABEL_315:
              std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v169);
              goto LABEL_316;
            }

LABEL_287:
            (*(*v37 + 32))(v37);
            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            v129 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x10200407DCD39BEuLL);
            *v129 = 0.0;
            v129[2] = v125;
            *(v129 + 3) = v37;
            if (!*&v169[24])
            {
              v129[1] = 0.0;
              v138 = *(v158 + 90);
              if (v138)
              {
                do
                {
                  v139 = v138;
                  v138 = *v138;
                }

                while (v138);
                *v139 = v129;
              }

              else
              {
                *(v158 + 90) = v129;
              }

              goto LABEL_315;
            }

            v130 = *&v169[16];
            if (!*&v169[16])
            {
              goto LABEL_310;
            }

LABEL_291:
            v131 = *(v130 + 4);
            v132 = *(v158 + 736);
            if (!*&v132)
            {
              goto LABEL_308;
            }

            v133 = vcnt_s8(v132);
            v133.i16[0] = vaddlv_u8(v133);
            if (v133.u32[0] > 1uLL)
            {
              v134 = *(v130 + 4);
              if (*&v132 <= v131)
              {
                v134 = v131 % v132.i32[0];
              }
            }

            else
            {
              v134 = (v132.i32[0] - 1) & v131;
            }

            v135 = *(*(v158 + 91) + 8 * v134);
            if (!v135 || (v136 = *v135) == 0)
            {
LABEL_308:
              operator new();
            }

            while (1)
            {
              v137 = v136[1];
              if (v137 == v131)
              {
                if (*(v136 + 4) == v131)
                {
                  v136[3] = v129;
                  v130 = *v130;
                  if (!v130)
                  {
LABEL_310:
                    operator new();
                  }

                  goto LABEL_291;
                }
              }

              else
              {
                if (v133.u32[0] > 1uLL)
                {
                  if (v137 >= *&v132)
                  {
                    v137 %= *&v132;
                  }
                }

                else
                {
                  v137 &= *&v132 - 1;
                }

                if (v137 != v134)
                {
                  goto LABEL_308;
                }
              }

              v136 = *v136;
              if (!v136)
              {
                goto LABEL_308;
              }
            }
          }

          v126 = v124 + 0.5;
          if (v122 >= v126)
          {
            v125 = v126;
          }

          else
          {
            v125 = v122;
          }

          v127 = v158;
          if (!atomic_fetch_add(v158 + 2, 1u))
          {
            v127 = 0;
            atomic_fetch_add(v158 + 2, 0xFFFFFFFF);
          }

          if (CA::Render::Server::add_callback(0, CA::Render::Context::enqueue_command_stream(CA::Render::Context::CommandStream *)::$_0::__invoke, v127, v125))
          {
            v128 = CA::Render::Server::_thread == 0;
          }

          else
          {
            v128 = 1;
          }

          if (v128)
          {
            __assert_rtn("enqueue_command_stream", "render-context.cpp", 1331, "success && Server::is_running ()");
          }
        }

        if (v125 != 0.0)
        {
          goto LABEL_287;
        }

        goto LABEL_284;
      }

      if (CADeviceHasInternalBuild::once != -1)
      {
        dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
      }

      if (CADeviceHasInternalBuild::internal == 1)
      {
        if (x_log_get_render(void)::once[0] != -1)
        {
          dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
        }

        v148 = x_log_get_render(void)::log;
        if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_333;
        }

        if (msgh_bits)
        {
          v149 = *(v37[4] + 11);
        }

        else
        {
          v149 = 123456;
        }

        *v169 = 134218240;
        *&v169[4] = msgh_bits;
        *&v169[12] = 1024;
        *&v169[14] = v149;
        v143 = "CoreAnimation: Message is ool CommandStream, but no body, desc_count: %zu, body_ool->type:%u!";
LABEL_354:
        v144 = v148;
LABEL_327:
        v145 = 18;
        goto LABEL_332;
      }
    }

LABEL_222:
    CA::Render::Server::CmdStreamMsg::_send_reply(v37);
    v27 = v156;
    if (v37[521])
    {
      goto LABEL_223;
    }

    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v106 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      v140 = *(v158 + 4);
      *v169 = 67109120;
      *&v169[4] = v140;
      _os_log_error_impl(&dword_183AA6000, v106, OS_LOG_TYPE_ERROR, "CmdStreamMsg for %x is invalid", v169, 8u);
    }

    (*(*v37 + 8))(v37);
    v32 = 0;
    v161 = 0;
LABEL_60:
    voucher_mach_msg_revert(state);
    if (v27)
    {
      bzero(policy_info, v27);
      if ((v161 & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_62:
      free(v25);
      goto LABEL_63;
    }

    if (v161)
    {
      goto LABEL_62;
    }

LABEL_63:
    objc_autoreleasePoolPop(context);
    v10 = &CADisplayTimerGetTypeID::type;
  }

  while (!v32);
  pthread_mutex_lock(&CA::Render::Server::_mutex);
  CA::Render::Server::_thread = 0;
  pthread_cond_broadcast(&CA::Render::Server::_cond);
  return pthread_mutex_unlock(&CA::Render::Server::_mutex);
}

uint64_t CA::Render::Server::timer_port(CA::Render::Server *this)
{
  v9 = *MEMORY[0x1E69E9840];
  result = CA::Render::Server::_timer_port;
  if (!CA::Render::Server::_timer_port)
  {
    v2 = mk_timer_create();
    if (!v2)
    {
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v7 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_error_impl(&dword_183AA6000, v7, OS_LOG_TYPE_ERROR, "CoreAnimation: mk_timer_create returned error!\n", v8, 2u);
      }

      abort();
    }

    v3 = v2;
    v4 = 0;
    atomic_compare_exchange_strong(&CA::Render::Server::_timer_port, &v4, v2);
    if (v4)
    {
      mk_timer_destroy();
    }

    else
    {
      v5 = *MEMORY[0x1E69E9A60];
      v6 = CA::Render::Server::port_set(v2);
      mach_port_move_member(v5, v3, v6);
    }

    return CA::Render::Server::_timer_port;
  }

  return result;
}

uint64_t CA::Render::Server::notify_port(CA::Render::Server *this)
{
  v9 = *MEMORY[0x1E69E9840];
  result = CA::Render::Server::_notify_port;
  name = CA::Render::Server::_notify_port;
  if (!CA::Render::Server::_notify_port)
  {
    v2 = MEMORY[0x1E69E9A60];
    v3 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name);
    v4 = 0;
    atomic_compare_exchange_strong(&CA::Render::Server::_notify_port, &v4, name);
    v5 = *v2;
    v6 = name;
    if (v4)
    {
      mach_port_mod_refs(v5, name, 1u, -1);
    }

    else
    {
      v7 = CA::Render::Server::port_set(v3);
      mach_port_move_member(v5, v6, v7);
    }

    return CA::Render::Server::_notify_port;
  }

  return result;
}

uint64_t CA::Render::Context::context_by_server_port(CA::Render::Context *this)
{
  if (!this)
  {
    return 0;
  }

  v1 = this;
  os_unfair_lock_lock(&CA::Render::Context::_context_lock);
  if (!CA::Render::Context::_port_table)
  {
    os_unfair_lock_unlock(&CA::Render::Context::_context_lock);
    return 0;
  }

  v2 = x_hash_table_lookup(CA::Render::Context::_port_table, v1, 0);
  os_unfair_lock_unlock(&CA::Render::Context::_context_lock);
  if (!v2)
  {
    return v2;
  }

  if ((*(v2 + 13) & 4) != 0)
  {
    return 0;
  }

  v3 = (v2 + 8);
  if (!atomic_fetch_add((v2 + 8), 1u))
  {
    v2 = 0;
    atomic_fetch_add(v3, 0xFFFFFFFF);
  }

  return v2;
}

double CA::Render::Server::CmdStreamMsg::timestamp(CA::Render::Server::CmdStreamMsg *this)
{
  v1 = *(this + 521);
  if (v1)
  {
    return *(v1 + 80);
  }

  else
  {
    return 0.0;
  }
}

uint64_t CA::Render::Decoder::decode_int32(CA::Render::Decoder *this)
{
  v1 = *(this + 4);
  v2 = *(this + 5);
  v3 = v1 + 1;
  if (v1 + 1 <= v2)
  {
    v4 = *v1;
    *(this + 4) = v3;
  }

  else
  {
    CA::Render::Decoder::set_fatal_error(this, "%s - _buffer_point = %p, _buffer_end = %p", "decode_int32", v1, v2);
    return 0;
  }

  return v4;
}

uint64_t CA::Render::Decoder::decode_int64(CA::Render::Decoder *this)
{
  v1 = *(this + 4);
  v2 = *(this + 5);
  v3 = v1 + 1;
  if (v1 + 1 <= v2)
  {
    v4 = *v1;
    *(this + 4) = v3;
  }

  else
  {
    CA::Render::Decoder::set_fatal_error(this, "%s - _buffer_point = %p, _buffer_end = %p", "decode_int64", v1, v2);
    return 0;
  }

  return v4;
}

uint64_t CA::Render::Decoder::Decoder(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3, uint64_t a4, uint64_t a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v10 = CA::Render::Coder::Coder(a1, a2);
  *v10 = &unk_1EF1FFF18;
  *(v10 + 9) = a3;
  *(v10 + 3) = a4;
  *(v10 + 4) = a4;
  *(v10 + 5) = a4 + a5;
  *(a1 + 64) = CA::Render::Decoder::decode_int32(v10);
  v11 = CA::Render::Decoder::decode_int32(a1);
  *(a1 + 80) = CA::Render::Decoder::decode_int64(a1);
  if (!a3)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v13 = x_log_get_render(void)::log;
    if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v23 = 67109120;
    v24 = v11;
    v14 = "Decoder has no context! dcid=%x";
LABEL_22:
    v20 = v13;
    v21 = 8;
LABEL_23:
    _os_log_error_impl(&dword_183AA6000, v20, OS_LOG_TYPE_ERROR, v14, &v23, v21);
LABEL_24:
    *(a1 + 18) = 1;
    return a1;
  }

  if (a3[4]._os_unfair_lock_opaque != v11)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v15 = x_log_get_render(void)::log;
    if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    os_unfair_lock_opaque = a3[4]._os_unfair_lock_opaque;
    os_unfair_lock_lock(a3 + 13);
    v17 = a3[16]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(a3 + 13);
    v18 = *(a1 + 64);
    v19 = *(a1 + 80);
    v23 = 67110912;
    v24 = os_unfair_lock_opaque;
    v25 = 1024;
    v26 = v17;
    v27 = 2048;
    v28 = a2;
    v29 = 2048;
    v30 = a4;
    v31 = 2048;
    v32 = a5;
    v33 = 1024;
    v34 = v18;
    v35 = 1024;
    v36 = v11;
    v37 = 2048;
    v38 = v19;
    v14 = "Context ID mismatch! pcid=%x pseed=%u : heap=%p data=%p data_len=%zu flags=%u dcid=%x t=%f";
    v20 = v15;
    v21 = 66;
    goto LABEL_23;
  }

  v12 = a3[3]._os_unfair_lock_opaque;
  if ((v12 & 0x200400) != 0)
  {
    if ((v12 & 0x400) != 0)
    {
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v13 = x_log_get_render(void)::log;
      if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v23 = 67109120;
      v24 = v11;
      v14 = "Context is destroyed! cid=%x";
    }

    else
    {
      if ((v12 & 0x200000) == 0)
      {
        goto LABEL_24;
      }

      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v13 = x_log_get_render(void)::log;
      if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v23 = 67109120;
      v24 = v11;
      v14 = "Context is a zombie! cid=%x";
    }

    goto LABEL_22;
  }

  return a1;
}

uint64_t CA::Render::Coder::Coder(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1EF1FFE38;
  *(a1 + 8) = a2;
  *(a1 + 16) = (a2 == 0) | (*(a1 + 19) << 24);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 52) = 0u;
  if (!a2)
  {
    *(a1 + 8) = x_heap_new(0x1000uLL);
  }

  return a1;
}

void CA::Render::Decoder::~Decoder(CA::Render::Decoder *this)
{
  CA::Render::Coder::~Coder(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

void CA::Render::Coder::~Coder(CA::Render::Coder *this)
{
  *this = &unk_1EF1FFE38;
  v2 = *(this + 6);
  if (v2)
  {
    v3 = MEMORY[0x1E69E9A60];
    do
    {
      v4 = *(v2 + 2);
      if (v4 == 2)
      {
        if (*(v2 + 24) == 1)
        {
          mach_port_deallocate(*v3, *(v2 + 4));
        }
      }

      else if (v4 == 1)
      {
        v5 = v2[4];
        if (v5)
        {
          v5(v2[2], v2[5]);
        }
      }

      v2 = *v2;
    }

    while (v2);
  }

  v6 = *(this + 4);
  if ((v6 & 0x100) != 0)
  {
    munmap(*(this + 3), *(this + 5) - *(this + 3));
    v6 = *(this + 4);
  }

  if (v6)
  {
    x_heap_free(*(this + 1));
  }
}

{
  CA::Render::Coder::~Coder(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

void *CA::Render::Server::CmdStreamMsg::consume_batch_ports(void *result, void *a2)
{
  v2 = result[5];
  if (v2)
  {
    if (*(v2 + 11))
    {
      v4 = *(v2 + 3);
      if (!v4)
      {
        return result;
      }

      v2 = *v2;
    }

    else
    {
      v4 = 1;
    }

    v5 = MEMORY[0x1E69E9A60];
    do
    {
      v6 = *v2;
      if ((*v2 + 1) >= 2)
      {
        result = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a2, v6);
      }

      else
      {
        result = mach_port_deallocate(*v5, v6);
      }

      *v2 = 0;
      v2 = (v2 + 4);
      --v4;
    }

    while (v4);
  }

  return result;
}

void CA::Render::Context::apply_streams(CA::Render::Context *this, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((CA::Render::Context::apply_streams(CA::Render::Context::CommandStream **,unsigned long)::initialized & 1) == 0)
  {
    v6 = getenv("CA_BENCHMARK");
    if (v6 && atoi(v6))
    {
      CA::Render::Context::apply_streams(CA::Render::Context::CommandStream **,unsigned long)::benchmark_mode = 1;
    }

    CA::Render::Context::apply_streams(CA::Render::Context::CommandStream **,unsigned long)::initialized = 1;
  }

  CA::Render::Context::will_commit(this);
  v7 = 0;
  v8 = 1;
  v9 = NAN;
  do
  {
    v13 = CA::Render::Context::apply_streams(CA::Render::Context::CommandStream **,unsigned long)::benchmark_mode;
    v12 = 0;
    v11 = INFINITY;
    (*(**a2 + 40))(*a2, &v13, &v12, &v11);
    if ((v13 & 1) != 0 || CA::Render::Context::apply_streams(CA::Render::Context::CommandStream **,unsigned long)::benchmark_mode == 1)
    {
      v7 = 1;
    }

    v8 &= v12;
    if (v11 < v9)
    {
      v9 = v11;
    }

    ++a2;
    --a3;
  }

  while (a3);
  v10 = 0.0;
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v10 = v9;
  }

  CA::Render::Context::did_commit(this, v7 & 1, *&v10, 1, v8 & 1, 0);
  CA::Render::Context::run_scheduled_handle_updates(this);
  CA::Render::Context::run_scheduled_dependence_removals(this);
}

uint64_t CA::Render::Context::will_commit(CA::Render::Context *this)
{
  if ((*(this + 292) & 0x40) == 0)
  {
    CA::Render::post_notification(4u, this, 0, 0);
  }

  if (!*(this + 56))
  {
    goto LABEL_10;
  }

  os_unfair_lock_lock(&CA::Render::LayerHost::_lock);
  v2 = *(this + 56);
  if (!v2 || (v3 = *(v2 + 96)) == 0)
  {
    os_unfair_lock_unlock(&CA::Render::LayerHost::_lock);
LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  if (!atomic_fetch_add(v3 + 2, 1u))
  {
    atomic_fetch_add(v3 + 2, 0xFFFFFFFF);
  }

  os_unfair_lock_unlock(&CA::Render::LayerHost::_lock);
  CA::Render::Context::will_commit(v3);
LABEL_11:
  result = pthread_mutex_lock((this + 72));
  v5 = *(this + 58);
  if (v5 && v5 != v3)
  {
    __assert_rtn("will_commit", "render-context.cpp", 2456, "!_locked_host_ctx || _locked_host_ctx == host_ctx");
  }

  *(this + 58) = v3;
  atomic_fetch_add(this + 118, 1u);
  return result;
}

void CA::Render::Server::CmdStreamMsg::run(CA::Render::Server::CmdStreamMsg *this, BOOL *a2, BOOL *a3, double *a4)
{
  v115 = *MEMORY[0x1E69E9840];
  v4 = *(this + 521);
  if (!v4)
  {
    __assert_rtn("run", "render-server.cpp", 1620, "is_valid ()");
  }

  v5 = this;
  if (*(this + 4176) == 1)
  {
    __assert_rtn("run", "render-server.cpp", 1621, "!_did_run");
  }

  *(this + 4176) = 1;
  v8 = *(this + 520);
  v9 = 0;
  if (v8 - 1 >= 0)
  {
    v10 = *(this + 519);
    v11 = 8 * (v8 - 1);
    do
    {
      **(v10 + v11) = v9;
      v9 = *(v10 + v11);
      v11 -= 8;
    }

    while (v11 != -8);
  }

  *(v4 + 48) = v9;
  *(v4 + 56) = v8;
  os_unfair_lock_lock(&CA::Render::Server::_decode_commands_lock);
  v12 = *(v5 + 521);
  v13 = *(v12 + 72);
  kdebug_trace();
  v14 = NAN;
  v111 = a2;
  v112 = v13;
  while (2)
  {
    v15 = CA::Render::Decoder::decode_int8(v12);
    v16 = v15;
    switch(v15)
    {
      case 0:
        goto LABEL_86;
      case 1:
        v35 = CA::Render::Decoder::decode_size_t(v12);
        v36 = CA::Render::Decoder::decode_int32(v12);
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3397);
        goto LABEL_39;
      case 2:
        *a2 = 1;
        v33 = CA::Render::Decoder::decode_size_t(v12);
        v34 = CA::Render::Decoder::decode_int32(v12);
        v18 = CA::Render::Decoder::decode_object(v12, 0);
        CA::Render::Decoder::decode_int32(v12);
        if (*(v12 + 18))
        {
          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          v90 = x_log_get_render(void)::log;
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
          {
            v96 = *(v13 + 16);
            *buf = 67109120;
            v114 = v96;
            goto LABEL_144;
          }

          goto LABEL_145;
        }

        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3409);
        CA::Render::Context::set_object(v13, v33, v34, v18);
        goto LABEL_81;
      case 3:
        *a2 = 1;
        v37 = CA::Render::Decoder::decode_size_t(v12);
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3419);
        CA::Render::Context::update_layer(v13, v37);
        goto LABEL_81;
      case 4:
        *a2 = 1;
        v43 = CA::Render::Decoder::decode_size_t(v12);
        v18 = CA::Render::Decoder::decode_object(v12, 7, &CA::Render::Decoder::decode_animation(void)::types);
        if (*(v12 + 18))
        {
          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          v90 = x_log_get_render(void)::log;
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
          {
            v98 = *(v13 + 16);
            *buf = 67109120;
            v114 = v98;
            goto LABEL_144;
          }

          goto LABEL_145;
        }

        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3429);
        CA::Render::Context::add_animation(v13, v43, v18);
        if (v18)
        {
LABEL_63:
          if (atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
          {
LABEL_64:
            (*(*v18 + 16))(v18);
          }
        }

        goto LABEL_81;
      case 5:
        *a2 = 1;
        v38 = CA::Render::Decoder::decode_size_t(v12);
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3438);
        CA::Render::Context::remove_all_animations(v13, v38);
        goto LABEL_81;
      case 6:
        *a2 = 1;
        v48 = CA::Render::Decoder::decode_size_t(v12);
        CFStringGetTypeID();
        v49 = CA::Render::Decoder::decode_cfobject(v12);
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3447);
        CA::Render::Context::remove_animation(v13, v48, v49);
        if (!v49)
        {
          goto LABEL_81;
        }

        v50 = v49;
        goto LABEL_52;
      case 7:
        *a2 = 1;
        v32 = CA::Render::Decoder::decode_size_t(v12);
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3457);
        CA::Render::Context::set_layer_id(v13, v32);
        goto LABEL_81;
      case 8:
        CFDictionaryGetTypeID();
        v51 = CA::Render::Decoder::decode_cfobject(v12);
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3464);
        X::CFRef<CGColorSpace *>::operator=((v13 + 560), v51);
        ++*(v13 + 48);
        if (v51)
        {
          CFRelease(v51);
        }

        CA::Render::post_notification(7u, v13, 0, 0);
        goto LABEL_81;
      case 9:
        *a2 = 1;
        v29 = CA::Render::Decoder::decode_colorspace(v12);
        if (*(v12 + 18))
        {
          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          v93 = x_log_get_render(void)::log;
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
          {
            v94 = *(v13 + 16);
            *buf = 67109120;
            v114 = v94;
LABEL_149:
            _os_log_error_impl(&dword_183AA6000, v93, OS_LOG_TYPE_ERROR, "serialization error from context %x\n", buf, 8u);
            if (!v29)
            {
              goto LABEL_86;
            }
          }

          else
          {
LABEL_134:
            if (!v29)
            {
              goto LABEL_86;
            }
          }

          CFRelease(v29);
          goto LABEL_86;
        }

        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3476);
        CA::Render::Context::set_colorspace(v13, v29);
        CGColorSpaceRelease(v29);
        goto LABEL_81;
      case 10:
        CFStringGetTypeID();
        v29 = CA::Render::Decoder::decode_cfobject(v12);
        if ((*(v12 + 18) & 1) == 0)
        {
          CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3485);
          CA::Render::Context::set_client_annotation(v13, v29);
          v50 = v29;
LABEL_52:
          CFRelease(v50);
          goto LABEL_81;
        }

        if (x_log_get_render(void)::once[0] != -1)
        {
          dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
        }

        v93 = x_log_get_render(void)::log;
        if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_134;
        }

        v100 = *(v13 + 16);
        *buf = 67109120;
        v114 = v100;
        goto LABEL_149;
      case 11:
      case 12:
        *a2 = 1;
        v17 = CA::Render::Decoder::decode_size_t(v12);
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3495);
        CA::Render::Context::order_relative(v13, v16 == 11, v17);
        goto LABEL_81;
      case 13:
        *a2 = 1;
        LODWORD(v30) = CA::Render::Decoder::decode_int32(v12);
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3504);
        CA::Render::Context::order_level(v13, v30);
        goto LABEL_81;
      case 14:
        *a2 = 1;
        v69 = CA::Render::Decoder::decode_int32(v12);
        v18 = CA::Render::Decoder::decode_object(v12, 0);
        if (*(v12 + 18))
        {
          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          v90 = x_log_get_render(void)::log;
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
          {
            v91 = *(v13 + 16);
            *buf = 67109120;
            v114 = v91;
            goto LABEL_144;
          }

          goto LABEL_145;
        }

        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3529);
        CA::Render::Context::set_slot(v13, v69, v18);
        if (v18)
        {
          goto LABEL_63;
        }

        goto LABEL_81;
      case 15:
        v39 = CA::Render::Decoder::decode_int32(v12);
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3511);
        CA::Render::Context::delete_slot(v13, v39);
        goto LABEL_81;
      case 16:
        v67 = CA::Render::Decoder::decode_int32(v12);
        v68 = CA::Render::Decoder::decode_int32(v12);
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3519);
        CA::Render::Context::transfer_slot(v13, v67, v68);
        goto LABEL_81;
      case 17:
        v35 = CA::Render::Decoder::decode_size_t(v12);
        v36 = CA::Render::Decoder::decode_int32(v12);
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3538);
        v44 = CA::Render::Context::lookup_object(*(v13 + 136), *(v13 + 148), v35, v36, 0, 0);
        if (v44)
        {
          CA::Render::post_notification(0xBu, v44, 0, 0);
        }

LABEL_39:
        CA::Render::Context::delete_object(v13, v35, v36);
        goto LABEL_81;
      case 18:
        *a2 = 1;
        v71 = CA::Render::Decoder::decode_int32(v12);
        v72 = CA::Render::Decoder::decode_int32(v12);
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3549);
        CA::Render::Context::flush_image_queue(v13, v71, v72);
        goto LABEL_81;
      case 19:
        v108 = a4;
        v109 = v5;
        *a2 = 1;
        v107 = CA::Render::Decoder::decode_size_t(v12);
        v106 = CA::Render::Decoder::decode_int32(v12);
        v105 = CA::Render::Decoder::decode_int32(v12);
        v104 = CA::Render::Decoder::decode_int32(v12);
        v20 = CA::Render::Decoder::decode_int32(v12);
        v21 = CA::Render::Decoder::decode_int32(v12);
        v22 = CA::Render::Decoder::decode_int32(v12);
        v23 = CA::Render::Decoder::decode_int32(v12);
        v24 = CA::Render::Decoder::decode_int8(v12);
        LODWORD(v25) = CA::Render::Decoder::decode_int32(v12);
        v26 = CA::Render::Decoder::decode_int32(v12);
        v27 = CA::Render::Decoder::decode_int32(v12);
        v18 = CA::Render::Decoder::decode_object(v12, 39);
        if (*(v12 + 18))
        {
          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          a4 = v108;
          v5 = v109;
          a2 = v111;
          v13 = v112;
          v90 = x_log_get_render(void)::log;
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
          {
            v92 = *(v112 + 4);
            *buf = 67109120;
            v114 = v92;
            goto LABEL_144;
          }

          goto LABEL_145;
        }

        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3570);
        v103 = v26;
        v13 = v112;
        CA::Render::ImageProvider::create(v112, v107, v106, v105, v104, v20, v21, v22, v25, v23, v24 != 0, v102, v103, v27, v18);
        if (v18)
        {
          a4 = v108;
          v5 = v109;
          a2 = v111;
          if (atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
          {
            goto LABEL_64;
          }
        }

        else
        {
          a4 = v108;
          v5 = v109;
          a2 = v111;
        }

        goto LABEL_81;
      case 20:
        *a2 = 1;
        v45 = CA::Render::Decoder::decode_size_t(v12);
        v46 = CA::Render::Decoder::decode_int32(v12);
        v47 = CA::Render::Decoder::decode_int32(v12);
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3583);
        CA::Render::ImageProvider::set_image_size(*(v13 + 136), *(v13 + 148), v45, v46, v47);
        goto LABEL_81;
      case 21:
        *a2 = 1;
        v41 = CA::Render::Decoder::decode_size_t(v12);
        v42 = CA::Render::Decoder::decode_int32(v12);
        v18 = CA::Render::Decoder::decode_object(v12, 39);
        if (*(v12 + 18))
        {
          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          v90 = x_log_get_render(void)::log;
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
          {
            v97 = *(v13 + 16);
            *buf = 67109120;
            v114 = v97;
            goto LABEL_144;
          }

          goto LABEL_145;
        }

        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3594);
        CA::Render::ImageProvider::set_fill_color(*(v13 + 136), *(v13 + 148), v41, v42, v18);
        if (!v18)
        {
          goto LABEL_81;
        }

        goto LABEL_63;
      case 22:
        *a2 = 1;
        v52 = CA::Render::Decoder::decode_size_t(v12);
        v53 = CA::Render::Decoder::decode_int32(v12);
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3605);
        v54 = CA::Render::Context::lookup_object(*(v13 + 136), *(v13 + 148), v52, 0, 24, 0);
        if (v54)
        {
          *(v54 + 152) = v53;
        }

        goto LABEL_81;
      case 23:
        *a2 = 1;
        v74 = CA::Render::Decoder::decode_size_t(v12);
        v75 = CA::Render::Decoder::decode_int32(v12);
        v76 = CA::Render::Decoder::decode_int32(v12);
        v77 = CA::Render::Decoder::decode_int32(v12);
        v18 = CA::Render::Decoder::decode_object(v12, 6, &CA::Render::texture_types);
        v78 = CA::Render::Decoder::decode_int32(v12);
        v79 = CA::Render::Decoder::decode_int32(v12);
        if ((*(v12 + 18) & 1) == 0)
        {
          v80 = v79;
          CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3621);
          CA::Render::ImageProvider::set_subimage(*(v112 + 17), *(v112 + 37), v74, v75, v76, v77, v18, v78, v80);
          if (v18)
          {
            a2 = v111;
            if (atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v18 + 16))(v18);
            }
          }

          else
          {
            a2 = v111;
          }

          v13 = v112;
LABEL_81:
          if (*(v12 + 18))
          {
            if (x_log_get_render(void)::once[0] != -1)
            {
              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            }

            v82 = x_log_get_render(void)::log;
            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
            {
              v89 = *(v13 + 16);
              *buf = 67109120;
              v114 = v89;
              _os_log_error_impl(&dword_183AA6000, v82, OS_LOG_TYPE_ERROR, "serialization error from context %x\n", buf, 8u);
            }

            goto LABEL_86;
          }

          continue;
        }

        if (x_log_get_render(void)::once[0] != -1)
        {
          dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
        }

        a2 = v111;
        v13 = v112;
        v90 = x_log_get_render(void)::log;
        if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
        {
          v99 = *(v112 + 4);
          *buf = 67109120;
          v114 = v99;
LABEL_144:
          _os_log_error_impl(&dword_183AA6000, v90, OS_LOG_TYPE_ERROR, "serialization error from context %x\n", buf, 8u);
        }

LABEL_145:
        if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v18 + 16))(v18);
        }

LABEL_86:
        if (*(v13 + 288))
        {
          if (!atomic_load((v13 + 228)))
          {
            if (*(v13 + 256))
            {
              v84 = 0;
            }

            else
            {
              v84 = getpid();
            }

            v85 = 0;
            atomic_compare_exchange_strong((v13 + 228), &v85, v84);
          }

          kdebug_trace();
        }

        if (!atomic_load((v13 + 228)))
        {
          if (*(v13 + 256))
          {
            v87 = 0;
          }

          else
          {
            v87 = getpid();
          }

          v88 = 0;
          atomic_compare_exchange_strong((v13 + 228), &v88, v87);
        }

        if (*a2)
        {
          CA::Render::Context::add_begin_time(v13, v14, *a4);
        }

        if ((*(v12 + 64) & 4) == 0)
        {
          CA::Render::Context::increment_commit_seed(v13);
        }

        kdebug_trace();
        os_unfair_lock_unlock(&CA::Render::Server::_decode_commands_lock);

        CA::Render::Server::CmdStreamMsg::_send_reply(v5);
        return;
      case 24:
        *a2 = 1;
        v56 = CA::Render::Decoder::decode_size_t(v12);
        v57 = CA::Render::Decoder::decode_int32(v12);
        v58 = CA::Render::Decoder::decode_int32(v12);
        v59 = CA::Render::Decoder::decode_int32(v12);
        v60 = CA::Render::Decoder::decode_int32(v12);
        v61 = CA::Render::Decoder::decode_int32(v12);
        v62 = CA::Render::Decoder::decode_int32(v12);
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3637);
        v101 = v62;
        v63 = v60;
        a2 = v111;
        v13 = v112;
        CA::Render::ImageProvider::invalidate(*(v112 + 17), *(v112 + 37), v56, v57, v58, v59, v63, v61, v101);
        goto LABEL_81;
      case 26:
        v70 = COERCE_DOUBLE(CA::Render::Decoder::decode_int64(v12));
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3645);
        if (v70 > 0.0)
        {
          CA::Render::Context::add_input_time(v13, v70);
        }

        goto LABEL_81;
      case 27:
        v28 = CA::Render::Decoder::decode_int8(v12);
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3653);
        if (v28)
        {
          CA::Render::Context::set_frame_stall_skip_request(v13, 1);
        }

        goto LABEL_81;
      case 28:
        v40 = CA::Render::Decoder::decode_int64(v12);
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3662);
        if (v40)
        {
          CA::Render::Context::add_remote_input_mach_time(v13, v40);
        }

        goto LABEL_81;
      case 29:
        v73 = COERCE_DOUBLE(CA::Render::Decoder::decode_int64(v12));
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3670);
        if (v73 != 1.79769313e308)
        {
          v14 = v73;
        }

        goto LABEL_81;
      case 30:
        CA::Render::Decoder::decode_int64(v12);
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3677);
        goto LABEL_81;
      case 31:
        v55 = CA::Render::Decoder::decode_int8(v12);
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3685);
        *a3 = 1;
        if (v55)
        {
          *a2 = 1;
        }

        goto LABEL_81;
      case 32:
        v64 = CA::Render::Decoder::decode_int32(v12);
        v65 = CA::Render::Decoder::decode_int8(v12);
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3697);
        if (v65)
        {
          *a2 = 1;
          *(v13 + 288) = v64;
          if (!*(v13 + 292))
          {
            *(v13 + 292) = v64;
          }

          *(v13 + 296) = v64;
        }

        else
        {
          *(v13 + 288) = v64;
        }

        goto LABEL_81;
      case 33:
        buf[0] = 0;
        v66 = CA::Render::Decoder::decode_port(v12, 18, buf);
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3741);
        if (buf[0] == 1)
        {
          mach_port_deallocate(*MEMORY[0x1E69E9A60], v66);
        }

        goto LABEL_81;
      case 34:
        v81 = CA::Render::Decoder::decode_int64(v12);
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3754);
        *a4 = v81;
        goto LABEL_81;
      case 35:
        *a2 = 1;
        v18 = CA::Render::Decoder::decode_object(v12, 52);
        if (*(v12 + 18))
        {
          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          v90 = x_log_get_render(void)::log;
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
          {
            v95 = *(v13 + 16);
            *buf = 67109120;
            v114 = v95;
            goto LABEL_144;
          }

          goto LABEL_145;
        }

        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3767);
        CA::Render::Context::flush_presentation_modifier_shmem(v18, v19);
        if (!v18)
        {
          goto LABEL_81;
        }

        goto LABEL_63;
      case 36:
        *a2 = 1;
        v31 = COERCE_DOUBLE(CA::Render::Decoder::decode_int64(v12));
        CA::Render::Decoder::decode_sanity_check(v12, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 3776);
        CA::Render::Context::set_glitch_request(v13, v31);
        goto LABEL_81;
      default:
        CA::Render::Decoder::set_fatal_error(v12, "invalid command: 0x%x, buffer size %zu, offset %zu", v15, *(v12 + 40) - *(v12 + 24), *(v12 + 32) - *(v12 + 24));
        goto LABEL_86;
    }
  }
}

uint64_t CA::Render::Decoder::decode_int8(CA::Render::Decoder *this)
{
  v1 = *(this + 4);
  v2 = *(this + 5);
  if (v1 + 1 <= v2)
  {
    *(this + 4) = v1 + 1;
    return *v1;
  }

  else
  {
    CA::Render::Decoder::set_fatal_error(this, "%s - _buffer_point = %p, _buffer_end = %p", "decode_int8", v1, v2);
    return 0;
  }
}

uint64_t CA::Render::Context::increment_commit_seed(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 13);
  ++this[16]._os_unfair_lock_opaque;
  CA::Render::Context::check_sync_reqs(this, 0.0);
  os_unfair_lock_opaque = this[16]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(this + 13);
  return os_unfair_lock_opaque;
}

void CA::Render::Server::CmdStreamMsg::_send_reply(CA::Render::Server::CmdStreamMsg *this)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(this + 2);
  if (*(v1 + 8))
  {
    v7 = 0;
    v3 = *(v1 + 16);
    *&send_size.msgh_bits = *v1;
    *&send_size.msgh_voucher_port = v3;
    send_size.msgh_size = 28;
    send_size.msgh_local_port = 0;
    v4 = voucher_mach_msg_set(&send_size);
    v5 = mach_msg(&send_size, 1, send_size.msgh_size, 0, 0, 0, 0);
    if (v4)
    {
      voucher_mach_msg_clear(&send_size);
    }

    if ((v5 - 268435459) <= 1)
    {
      mach_msg_destroy(&send_size);
    }

    *(*(this + 2) + 8) = 0;
  }
}

void CA::Render::Context::did_commit(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 464);
  if (atomic_fetch_add((a1 + 472), 0xFFFFFFFF) == 1)
  {
    *(a1 + 464) = 0;
  }

  ++*(a1 + 40);
  pthread_mutex_unlock((a1 + 72));
  if (a2)
  {
    CA::Render::Context::mark_changed(a1, a5, a6, a3, a4);
  }

  if (a5 && (BYTE11(xmmword_1ED4E980C) & 1) != 0)
  {
    kdebug_trace();
  }

  if (*(a1 + 448) | v12)
  {
    os_unfair_lock_lock(&CA::Render::LayerHost::_lock);
    v13 = *(a1 + 448);
    if (v13)
    {
      if ((*(v13 + 13) & 4) != 0)
      {
        if (a2)
        {
          v17 = *(v13 + 48);
          if (v17)
          {
            v18 = *(v17 + 24);
            if (v18)
            {
              (*(*v18 + 32))(v18);
            }
          }
        }
      }

      else
      {
        if (*(v13 + 96) != v12)
        {
          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          v14 = x_log_get_render(void)::log;
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
          {
            *v21 = 0;
            _os_log_error_impl(&dword_183AA6000, v14, OS_LOG_TYPE_ERROR, "context hosting changed while locked!\n", v21, 2u);
          }
        }

        v15 = CA::Render::Context::root_layer_handle(a1);
        if (v15)
        {
          v16 = *(v15 + 13) & 0x2000000000000000 | 4;
        }

        else
        {
          v16 = 4;
        }

        v19 = *(*(a1 + 448) + 40);
        if (v19)
        {
          v20 = v19 + 2;
          if (atomic_fetch_add(v19 + 2, 1u))
          {
            CA::Render::Handle::set_update_flags(v19, v16);
            if (atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
            {
              (*(*v19 + 16))(v19);
            }
          }

          else
          {
            atomic_fetch_add(v20, 0xFFFFFFFF);
          }
        }
      }
    }

    os_unfair_lock_unlock(&CA::Render::LayerHost::_lock);
    if (v12)
    {
      CA::Render::Context::did_commit(v12, a2, a3, a4, a5, a6);
      if (atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v12 + 16))(v12);
      }
    }
  }

  if ((*(a1 + 584) & 0x40) == 0)
  {

    CA::Render::post_notification(5u, a1, 0, 0);
  }
}

void CA::Render::Context::run_scheduled_handle_updates(CA::Render::Context *this)
{
  v2 = *(this + 49);
  v3 = *(this + 50);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2;
      v5 = CA::Render::Handle::retain_context(*v2);
      if (v5)
      {
        v6 = v5;
        CA::Render::Context::will_commit(v5);
        CA::Render::Handle::set_update_flags(v4, 4);
        CA::Render::Context::did_commit(v6, 1, 0, 1, 0, 0);
        if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
        }
      }

      if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 16))(v4);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 49);
  }

  *(this + 50) = v2;
}

void CA::Render::Server::CmdStreamMsg::~CmdStreamMsg(CA::Render::Server::CmdStreamMsg *this)
{
  CA::Render::Server::CmdStreamMsg::~CmdStreamMsg(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  v2 = this + 4096;
  *this = &unk_1EF1FA478;
  v3 = *(this + 521);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (v2[80] == 1)
  {
    v4 = *(this + 4);
    if (v4)
    {
      mach_vm_deallocate(*MEMORY[0x1E69E9A60], *v4, *(v4 + 12));
    }

    v5 = *(this + 5);
    if (v5)
    {
      if (*(v5 + 11))
      {
        v7 = *v5;
        if (*v5 && *(v5 + 12))
        {
          v8 = 0;
          v9 = MEMORY[0x1E69E9A60];
          do
          {
            mach_port_deallocate(*v9, *(v7 + 4 * v8++));
            v10 = *(v5 + 12);
          }

          while (v8 < v10);
          mach_vm_deallocate(*v9, v7, 4 * v10);
        }
      }

      else
      {
        mach_port_deallocate(*MEMORY[0x1E69E9A60], *v5);
      }
    }
  }

  else
  {
    mach_msg_destroy(*(this + 2));
  }

  if (v2[81] == 1)
  {
    free(*(this + 2));
  }

  v6 = *(this + 1);
  if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v6 + 16))(v6);
  }

  x_heap_free(*(this + 6));
}

char *CA::Render::Array::new_array(CA::Render::Array *this, const void *a2, CA::Render::Object *const *a3, int a4)
{
  v5 = a3;
  v7 = this;
  v8 = 8 * this;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v9 = malloc_type_zone_malloc(malloc_zone, v8 + 24, 0x1B6EEB5uLL);
  v10 = v9;
  if (v9)
  {
    *(v9 + 2) = 1;
    ++dword_1ED4EAA3C;
    *v9 = &unk_1EF2031B0;
    *(v9 + 3) = (a4 << 8) | 1;
    *(v9 + 4) = v7;
    v11 = v9 + 24;
    if (a2)
    {
      memcpy(v9 + 24, a2, v8);
      if (v7 && v5)
      {
        v12 = v7;
        do
        {
          v13 = (*v11 + 8);
          if (!atomic_fetch_add(v13, 1u))
          {
            atomic_fetch_add(v13, 0xFFFFFFFF);
          }

          ++v11;
          --v12;
        }

        while (v12);
      }
    }

    else
    {
      bzero(v9 + 24, v8);
    }
  }

  return v10;
}

uint64_t CARequiresColorMatching(CGColorSpace *a1, CGColorSpace *a2, int a3)
{
  result = 0;
  if (a2 && a1 && a1 != a2)
  {
    if (CGColorSpaceIsUncalibrated() & 1) != 0 || (CAGetColorSpace(3) == a1 || CGColorSpaceEqualToColorSpaceIgnoringRange()) && (CAGetColorSpace(36) == a2 || (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0 || CGColorSpaceGetModel(a2) == kCGColorSpaceModelRGB && CGColorSpaceGetRenderingIntent() != 1 && (colorspace_has_srgb_gamma(a2)))
    {
      return 0;
    }

    if (CARequiresColorMatching::once != -1)
    {
      dispatch_once(&CARequiresColorMatching::once, &__block_literal_global_24597);
    }

    if (CARequiresColorMatching::compat_mode == 1 && (CGColorSpaceGetType() < 2 || CGColorSpaceGetType() < 2) || a3 && CGColorSpaceGetModel(a1) < kCGColorSpaceModelCMYK)
    {
      return 0;
    }

    else
    {
      return CGColorSpaceEqualToColorSpaceIgnoringRange() ^ 1;
    }
  }

  return result;
}

uint64_t CA::Render::get_compressed_agx_universal_rgb_fourcc(CA::Render *this)
{
  v1 = 641877825;
  if (this > 1111970368)
  {
    if (this > 1815162993)
    {
      switch(this)
      {
        case 0x6C313072:
          return 644624754;
        case 0x77343061:
          return 645346401;
        case 0x77333072:
          return 645346162;
      }

      return this;
    }

    if (this == 1111970369)
    {
      return v1;
    }

    v2 = 1380411457;
LABEL_16:
    if (this == v2)
    {
      return 642934849;
    }

    return this;
  }

  if (this <= 644624753)
  {
    if (this == 641877825)
    {
      return v1;
    }

    v2 = 642934849;
    goto LABEL_16;
  }

  if (this == 644624754)
  {
    return 644624754;
  }

  if (this != 645346162)
  {
    if (this != 645346401)
    {
      return this;
    }

    return 645346401;
  }

  return 645346162;
}

void *x_hash_table_remove_all(void *result)
{
  if (result[3])
  {
    v1 = result;
    v2 = 0;
    v3 = 1 << *result;
    while (1)
    {
      v4 = v1[2];
      v5 = *(v4 + 8 * v2);
      if (v5)
      {
        break;
      }

      if (!v1[9])
      {
        goto LABEL_14;
      }

LABEL_17:
      *(v4 + 8 * v2++) = 0;
      if (v2 == v3)
      {
        v1[3] = 0;
        return result;
      }
    }

    do
    {
      v6 = *v5;
      v7 = v5[3];
      v8 = v1[6];
      if (v8)
      {
        result = v8(v5[2]);
      }

      v9 = v1[7];
      if (v9)
      {
        result = v9(v7);
      }

      v10 = v1[9];
      if (v10)
      {
        *v5 = *(v10 + 8);
        *(v10 + 8) = v5;
      }

      v5 = v6;
    }

    while (v6);
    v4 = v1[2];
    if (v10)
    {
      goto LABEL_17;
    }

LABEL_14:
    result = *(v4 + 8 * v2);
    if (result)
    {
      do
      {
        v11 = *result;
        free(result);
        result = v11;
      }

      while (v11);
      v4 = v1[2];
    }

    goto LABEL_17;
  }

  return result;
}

_DWORD *CARecordCurrentDisplayGet()
{
  result = current_display_slot;
  if (current_display_slot)
  {
    result = pthread_getspecific(current_display_slot);
    if (result)
    {
      if (*result)
      {
        v1 = *result - 1;
        if (v1 >= 3)
        {
          v1 = 3;
        }

        return result[v1 + 1];
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CAGetColorSpace(int a1)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a1 > 0x26)
  {
    return 0;
  }

  result = colorspaces[a1];
  if (!result)
  {
    v3 = a1;
    if (a1 <= 28)
    {
      if (a1 <= 26)
      {
        if (!a1)
        {
          return colorspaces[v3];
        }

        if (a1 != 26)
        {
          goto LABEL_29;
        }

        *values = xmmword_183E32120;
        v31 = 0x3FEA6594AF4F0D84;
        blackPoint = 0.0;
        v28 = 0;
        v29 = 0;
        *gamma = xmmword_183E32138;
        v26 = 0x4003333333333333;
        v7 = &xmmword_183E32090;
        goto LABEL_25;
      }

      if (a1 == 27)
      {
        v11 = *MEMORY[0x1E6965F30];
        *&v20 = *MEMORY[0x1E6965D88];
        *(&v20 + 1) = v11;
        *&v21 = *MEMORY[0x1E6965F98];
        v12 = *MEMORY[0x1E6965F50];
        values[0] = *MEMORY[0x1E6965DB8];
        values[1] = v12;
        v6 = MEMORY[0x1E6965FD0];
        goto LABEL_22;
      }

      v8 = *MEMORY[0x1E6965F30];
      *&v20 = *MEMORY[0x1E6965D88];
      *(&v20 + 1) = v8;
      *&v21 = *MEMORY[0x1E6965F98];
      v9 = MEMORY[0x1E6965DB8];
    }

    else
    {
      if (a1 > 30)
      {
        switch(a1)
        {
          case 31:
            *values = xmmword_183E32120;
            v31 = 0x3FEA6594AF4F0D84;
            blackPoint = 0.0;
            v28 = 0;
            v29 = 0;
            *gamma = xmmword_183E32138;
            v26 = 0x4003333333333333;
            v7 = &xmmword_183E320D8;
            break;
          case 32:
            *values = xmmword_183E32120;
            v31 = 0x3FEA6594AF4F0D84;
            blackPoint = 0.0;
            v28 = 0;
            v29 = 0;
            *gamma = xmmword_183E32138;
            v26 = 0x4003333333333333;
            v7 = &xmmword_183E32150;
            break;
          case 38:
            v4 = *MEMORY[0x1E6965F30];
            *&v20 = *MEMORY[0x1E6965D88];
            *(&v20 + 1) = v4;
            *&v21 = *MEMORY[0x1E6965F98];
            v5 = *MEMORY[0x1E6965F88];
            values[0] = *MEMORY[0x1E6965DB0];
            values[1] = v5;
            v6 = MEMORY[0x1E6965FB0];
            goto LABEL_22;
          default:
LABEL_29:
            if (get_cg_name(a1))
            {
              cg_name = get_cg_name(a1);
              Linearized = CGColorSpaceCreateWithName(cg_name);
            }

            else
            {
              if ((0x3FF3E7FFFuLL >> a1))
              {
                __assert_rtn("CAGetColorSpace", "CACGUtil.cpp", 1435, "false");
              }

              v19 = CAGetColorSpace(unlinearized_colorspaces[a1]);
              Linearized = CGColorSpaceCreateLinearized(v19);
            }

            goto LABEL_26;
        }

LABEL_25:
        v15 = v7[3];
        v22 = v7[2];
        v23 = v15;
        v24 = *(v7 + 8);
        v16 = v7[1];
        v20 = *v7;
        v21 = v16;
        Linearized = CGColorSpaceCreateCalibratedRGB(values, &blackPoint, gamma, &v20);
LABEL_26:
        colorspaces[a1] = Linearized;
        return colorspaces[v3];
      }

      v10 = *MEMORY[0x1E6965F30];
      *&v20 = *MEMORY[0x1E6965D88];
      *(&v20 + 1) = v10;
      *&v21 = *MEMORY[0x1E6965F98];
      if (a1 == 29)
      {
        v9 = MEMORY[0x1E6965DD8];
      }

      else
      {
        v9 = MEMORY[0x1E6965DA0];
      }
    }

    v13 = *MEMORY[0x1E6965F50];
    values[0] = *v9;
    values[1] = v13;
    v6 = MEMORY[0x1E6965FC8];
LABEL_22:
    v31 = *v6;
    v14 = CFDictionaryCreate(0, &v20, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    colorspaces[v3] = CVImageBufferCreateColorSpaceFromAttachments(v14);
    if (v14)
    {
      CFRelease(v14);
    }

    return colorspaces[v3];
  }

  return result;
}

uint64_t CA::Render::Object::finalize(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void CA::Render::Context::check_sync_reqs(CA::Render::Context *this, double a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = (this + 56);
  v2 = *(this + 7);
  if (v2)
  {
    while (1)
    {
      v6 = v2[9];
      v7 = *(this + 16);
      v8 = v7 >= v6;
      if (v7 >= v6 && (v2[10] & 1) != 0)
      {
        v8 = *(this + 17) >= v6 || *(this + 88) == 0;
      }

      if (*(v2 + 2) <= a2)
      {
        if (CA::Render::sync_hang_report_level(void)::onceToken != -1)
        {
          dispatch_once(&CA::Render::sync_hang_report_level(void)::onceToken, &__block_literal_global_98_4538);
        }

        v9 = CA::Render::sync_hang_report_level(void)::level;
        if (x_log_get_render(void)::once[0] != -1)
        {
          dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
        }

        v10 = x_log_get_render(void)::log;
        if (v9 == 2)
        {
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_FAULT))
          {
            v24 = *(this + 4);
            v25 = *(this + 16);
            v26 = *(this + 17);
            if (*(v2 + 40))
            {
              v27 = 114;
            }

            else
            {
              v27 = 99;
            }

            v29 = v2[8];
            v28 = v2[9];
            *buf = 67110400;
            v37 = v24;
            v38 = 1024;
            v39 = v25;
            v40 = 1024;
            v41 = v26;
            v42 = 1024;
            v43 = v27;
            v44 = 1024;
            v45 = v28;
            v46 = 1024;
            v47 = v29;
            _os_log_fault_impl(&dword_183AA6000, v10, OS_LOG_TYPE_FAULT, "CoreAnimation: long synchronize for %x: now (%u,%u): req %c%u(%u)", buf, 0x26u);
          }
        }

        else
        {
          if (v9 == 3)
          {
            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
            {
              v30 = *(this + 4);
              v31 = *(this + 16);
              v32 = *(this + 17);
              if (*(v2 + 40))
              {
                v33 = 114;
              }

              else
              {
                v33 = 99;
              }

              v35 = v2[8];
              v34 = v2[9];
              *buf = 67110400;
              v37 = v30;
              v38 = 1024;
              v39 = v31;
              v40 = 1024;
              v41 = v32;
              v42 = 1024;
              v43 = v33;
              v44 = 1024;
              v45 = v34;
              v46 = 1024;
              v47 = v35;
              _os_log_error_impl(&dword_183AA6000, v10, OS_LOG_TYPE_ERROR, "CoreAnimation: long synchronize for %x: now (%u,%u): req %c%u(%u)", buf, 0x26u);
            }

            abort();
          }

          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
          {
            v11 = *(this + 4);
            v12 = *(this + 16);
            v13 = *(this + 17);
            if (*(v2 + 40))
            {
              v14 = 114;
            }

            else
            {
              v14 = 99;
            }

            v16 = v2[8];
            v15 = v2[9];
            *buf = 67110400;
            v37 = v11;
            v38 = 1024;
            v39 = v12;
            v40 = 1024;
            v41 = v13;
            v42 = 1024;
            v43 = v14;
            v44 = 1024;
            v45 = v15;
            v46 = 1024;
            v47 = v16;
            _os_log_error_impl(&dword_183AA6000, v10, OS_LOG_TYPE_ERROR, "long synchronize for %x: now (%u,%u): req %c%u(%u)", buf, 0x26u);
          }
        }
      }

      if (*(v2 + 3) <= a2)
      {
        break;
      }

      if (v8)
      {
        goto LABEL_26;
      }

      v3 = v2;
LABEL_29:
      v2 = *v3;
      if (!*v3)
      {
        return;
      }
    }

    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v17 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      v18 = *(this + 4);
      v19 = *(this + 16);
      v20 = *(this + 17);
      if (*(v2 + 40))
      {
        v21 = 114;
      }

      else
      {
        v21 = 99;
      }

      v23 = v2[8];
      v22 = v2[9];
      *buf = 67110400;
      v37 = v18;
      v38 = 1024;
      v39 = v19;
      v40 = 1024;
      v41 = v20;
      v42 = 1024;
      v43 = v21;
      v44 = 1024;
      v45 = v22;
      v46 = 1024;
      v47 = v23;
      _os_log_error_impl(&dword_183AA6000, v17, OS_LOG_TYPE_ERROR, "synchronize timed out for %x with (%u,%u): req %c%u(%u)", buf, 0x26u);
    }

LABEL_26:
    CA::Render::send_synchronize_reply(*(this + 4), v2[2], v2[8], *(this + 16), *(this + 17));
    *v3 = *v2;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v2);
    goto LABEL_29;
  }
}

uint64_t CA::Context::commit_transaction(CA::Context *this, CA::Transaction *a2, double a3, double *a4, uint64_t a5, const __CFArray *a6)
{
  v510 = *MEMORY[0x1E69E9840];
  v448 = 0u;
  v447 = 0u;
  v446 = 0u;
  v449 = 0;
  v445 = this;
  memset(v498, 0, sizeof(v498));
  v444 = 16;
  memset(v497, 0, sizeof(v497));
  v443 = 16;
  v9 = CA::Context::retain_all_contexts(1, v498, &v444, *(*(this + 15) + 120), a6);
  v484 = 1065353216;
  v483 = 0u;
  v482 = 0u;
  v481 = 1065353216;
  memset(v480, 0, sizeof(v480));
  v479 = 1065353216;
  memset(v478, 0, sizeof(v478));
  v477 = 1065353216;
  v475 = 0u;
  v476 = 0u;
  v474 = 1065353216;
  v472 = 0u;
  v473 = 0u;
  v471 = 1065353216;
  memset(v470, 0, sizeof(v470));
  v469 = 1065353216;
  v467 = 0u;
  v468 = 0u;
  v442 = 0;
  value = CA::Transaction::get_value(*(this + 13), 122, 0x12, (&v446 + 8));
  v11 = *(&v446 + 1);
  if (*(&v446 + 1) <= a3)
  {
    v11 = a3;
  }

  if (value)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  *(&v446 + 1) = v12;
  *&v447 = 0x7FF0000000000000;
  v417 = this;
  CA::Transaction::run_commit_handlers(this, 0);
  v13 = v444;
  v401 = a2;
  v402 = v444;
  if (!v444)
  {
    v414 = 0;
    goto LABEL_726;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = 0;
  do
  {
    v16 = v9[v15];
    *&v446 = v16;
    if ((*(v16 + 257) & 0x200) == 0)
    {
      pthread_mutex_lock((v16 + 16));
      v17 = *(v446 + 96);
      if (v17)
      {
        v18 = *(v17 + 16);
        do
        {
          v19 = *v18;
          if (!*v18)
          {
            break;
          }

          v20 = *v18;
          atomic_compare_exchange_strong(v18, &v20, v19 + 1);
        }

        while (v20 != v19);
      }

      else
      {
        v18 = 0;
      }

      pthread_mutex_unlock((v16 + 16));
      v21 = v417;
      *(v417 + 5) = v446;
      if (v18)
      {
        CA::Layer::layout_and_display_if_needed(v18, v21);
        CA::Layer::prepare_commit(v18, v21);
        while (1)
        {
          v22 = *v18;
          if (!*v18)
          {
            break;
          }

          v23 = *v18;
          atomic_compare_exchange_strong(v18, &v23, v22 - 1);
          if (v23 == v22)
          {
            if (v22 == 1)
            {
              CA::Layer::destroy(v18);
              CA::Layer::~Layer(v18);
              if (x_malloc_get_zone::once != -1)
              {
                dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
              }

              malloc_zone_free(malloc_zone, v18);
            }

            break;
          }
        }
      }

      *(v21 + 5) = 0;
      v13 = v444;
    }

    ++v15;
  }

  while (v15 < v13);
  objc_autoreleasePoolPop(v14);
  CA::Transaction::run_commit_handlers(v417, 3u);
  v420 = CA::Context::retain_all_contexts(1, v497, &v443, *(*(v417 + 15) + 120), v24);
  if (v13)
  {
    v25 = v9;
    do
    {
      CA::Context::unref(*v25++, 1);
      --v13;
    }

    while (v13);
  }

  if (v9 != v498)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v9);
  }

  v26 = v417;
  *(v417 + 132) |= 2u;
  v27 = objc_autoreleasePoolPush();
  v28 = v27;
  v29 = *(v26 + 15);
  v409 = *(v29 + 40);
  v30 = *(v29 + 48);
  v414 = v30 != 0;
  v31 = (*(v29 + 204) & 0x40) != 0 && (v443 > 1 || v30 != 0);
  v33 = *(v29 + 32);
  if (!v31 && !v33)
  {
    v34 = 0;
    v35 = 0;
    LOBYTE(v36) = 0;
    goto LABEL_356;
  }

  LODWORD(v421) = v31;
  v404 = v30;
  *&v398 = v27;
  v492 = 1065353216;
  v491 = 0u;
  v490 = 0u;
  v487 = 1065353216;
  v486 = 0u;
  v485 = 0u;
  v399 = v33;
  if (v33)
  {
    v37 = v443;
    v38 = v399;
    while (1)
    {
      v39 = v38[2];
      if (v39)
      {
        break;
      }

LABEL_100:
      v38 = *v38;
      if (!v38)
      {
        goto LABEL_101;
      }
    }

    while (1)
    {
      v40 = *(v39 + 2);
      LODWORD(handler) = 0;
      v41 = v37;
      v42 = v420;
      LODWORD(v464) = 0;
      if (!v37)
      {
        goto LABEL_54;
      }

      while (1)
      {
        v43 = *v42;
        if (*(*v42 + 8) == v40)
        {
          break;
        }

        v42 += 8;
        if (!--v41)
        {
          goto LABEL_54;
        }
      }

      LODWORD(handler) = *(v43 + 1);
      if (handler)
      {
        v44 = CA::Context::retain_render_ctx(v43);
        if (v44)
        {
          v45 = 0;
LABEL_81:
          v46 = 0;
          goto LABEL_56;
        }

        LODWORD(v464) = *(v43 + 3);
        v45 = *(v43 + 40);
        if (v464)
        {
          v56 = *(v43 + 40) == 0;
        }

        else
        {
          v56 = 1;
        }

        if (!v56)
        {
          goto LABEL_81;
        }

        v44 = 0;
      }

      else
      {
LABEL_54:
        v44 = 0;
        v45 = 0;
      }

      v46 = 1;
LABEL_56:
      v47 = v39[2];
      if (v47)
      {
        if (v46)
        {
          v48 = 0;
        }

        else
        {
          v48 = v40;
        }

        LODWORD(v461) = v48;
        v49 = std::__hash_table<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>>>::find<unsigned int>(v475, *(&v475 + 1), v48);
        if (v49)
        {
          v50 = v49[3];
          if (v50)
          {
            do
            {
              v51 = v50;
              v50 = *(v50 + 8);
            }

            while (v50);
            v52 = (v51 + 8);
          }

          else
          {
            v52 = v499;
          }

          *v52 = v47;
        }

        else
        {
          *v499 = &v461;
          std::__hash_table<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v475, v48)[3] = v47;
        }

        v39[2] = 0;
      }

      if ((v46 & 1) != 0 || (*(v38 + 6) + 1) < 2)
      {
LABEL_70:
        if (v44 && atomic_fetch_add(v44 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v44 + 16))(v44);
        }
      }

      else
      {
        *v499 = &v464;
        v53 = std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v490, v464);
        *v499 = &handler;
        *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v53 + 3, handler) + 5) = v40;
        v54 = std::__hash_table<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>>>::find<unsigned int>(v485, *(&v485 + 1), v464);
        if (v54)
        {
          v55 = v54[3];
        }

        else
        {
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          v55 = malloc_type_zone_malloc(malloc_zone, 0x28uLL, 0x102004064794061uLL);
          *v55 = 0;
          v55[1] = 0;
          *(v55 + 24) = 0;
          v55[2] = 0;
          *(v55 + 25) = v414;
          v55[4] = 0;
          *v499 = &v464;
          std::__hash_table<std::__hash_value_type<unsigned int,CA::Render::Fence::Transaction::Info *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::Render::Fence::Transaction::Info *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::Render::Fence::Transaction::Info *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::Render::Fence::Transaction::Info *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v485, v464)[3] = v55;
        }

        v57 = v55;
        while (1)
        {
          v57 = *v57;
          if (!v57)
          {
            break;
          }

          if (*(v57 + 2) == *(v38 + 6))
          {
            goto LABEL_92;
          }
        }

        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v57 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x10200403C432F0CuLL);
        *v57 = *v55;
        *(v57 + 2) = *(v38 + 6);
        *(v57 + 2) = 0;
        *(v57 + 3) = 0;
        *v55 = v57;
LABEL_92:
        v58 = v57 + 24;
        v59 = v57 + 24;
        while (1)
        {
          v59 = *v59;
          if (!v59)
          {
            break;
          }

          if (*(v59 + 3) == handler)
          {
            goto LABEL_70;
          }
        }

        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v60 = malloc_type_zone_malloc(malloc_zone, 0x18uLL, 0x102004014030ADEuLL);
        *v60 = *v58;
        v61 = handler;
        v60[2] = v45;
        v60[3] = v61;
        *(v60 + 2) = v44;
        *v58 = v60;
      }

      v39 = *v39;
      if (!v39)
      {
        goto LABEL_100;
      }
    }
  }

LABEL_101:
  if (v421)
  {
    v62 = v443;
    if (v443)
    {
      v63 = 0;
      v64 = v420;
      while (1)
      {
        v65 = *v64;
        v66 = *(*v64 + 8);
        LODWORD(handler) = *(*v64 + 4);
        LODWORD(v464) = 0;
        if (handler)
        {
          v67 = CA::Context::retain_render_ctx(v65);
          if (v67)
          {
            v68 = 0;
LABEL_111:
            if ((*(v65 + 257) & 0x80) != 0)
            {
              v63 = *(v65 + 12);
            }

            *v499 = &v464;
            v70 = std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v490, v464);
            *v499 = &handler;
            *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v70 + 3, handler) + 5) = v66;
            v71 = std::__hash_table<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>>>::find<unsigned int>(v485, *(&v485 + 1), v464);
            if (v71)
            {
              v72 = v71[3];
            }

            else
            {
              if (x_malloc_get_zone::once != -1)
              {
                dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
              }

              v72 = malloc_type_zone_malloc(malloc_zone, 0x28uLL, 0x102004064794061uLL);
              *v72 = 0;
              v72[1] = 0;
              *(v72 + 24) = 0;
              v72[2] = 0;
              *(v72 + 25) = v414;
              v72[4] = 0;
              *v499 = &v464;
              std::__hash_table<std::__hash_value_type<unsigned int,CA::Render::Fence::Transaction::Info *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::Render::Fence::Transaction::Info *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::Render::Fence::Transaction::Info *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::Render::Fence::Transaction::Info *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v485, v464)[3] = v72;
            }

            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            v73 = malloc_type_zone_malloc(malloc_zone, 0x18uLL, 0x102004014030ADEuLL);
            *v73 = v72[1];
            v74 = handler;
            v73[2] = v68;
            v73[3] = v74;
            *(v73 + 2) = v67;
            v72[1] = v73;
            goto LABEL_121;
          }

          LODWORD(v464) = *(v65 + 12);
          v68 = *(v65 + 160);
          if (v464)
          {
            v69 = v68 == 0;
          }

          else
          {
            v69 = 1;
          }

          if (!v69)
          {
            goto LABEL_111;
          }
        }

LABEL_121:
        v64 += 8;
        if (!--v62)
        {
          goto LABEL_124;
        }
      }
    }
  }

  v63 = 0;
LABEL_124:
  v466 = 1065353216;
  *(&v75 + 1) = 0;
  v464 = 0u;
  v465 = 0u;
  v76 = v486;
  if (!v486)
  {
    v36 = 0;
    v410 = 0;
    v28 = v398;
    goto LABEL_336;
  }

  LODWORD(v403) = 0;
  v410 = 0;
  v400 = &v483;
  v415 = &v468;
  *&v75 = 67109634;
  v397 = v75;
  v77 = &CADisplayTimerGetTypeID::type;
  v78 = &unk_1ED4EA000;
  LODWORD(v407) = v63;
  do
  {
    LODWORD(v461) = *(v76 + 16);
    v412 = v76;
    v79 = *(v76 + 24);
    v80 = *v79;
    v416 = v79;
    if (v80)
    {
      v81 = *(v80[3] + 8);
      if (!v81)
      {
        goto LABEL_138;
      }
    }

    else
    {
      v89 = *(v79 + 1);
      v81 = *(v89 + 8);
      v90 = (*v89 | v404) != 0;
      if (!v81 && v90)
      {
LABEL_138:
        v91 = CA::Render::Fence::applyTransaction(v79);
        if (!v91)
        {
          goto LABEL_284;
        }

        if (*(v91 + 5))
        {
          goto LABEL_754;
        }

        goto LABEL_239;
      }

      if (!v90)
      {
        goto LABEL_284;
      }
    }

    LODWORD(v421) = v81;
    v503 = 1065353216;
    handler = 0u;
    v502 = 0u;
    v82 = *v79;
    if (*v79)
    {
      v83 = 0;
      v84 = 0;
      v85 = 0;
      do
      {
        ++v84;
        for (i = v82[3]; i; i = *i)
        {
          v87 = *(i + 3);
          v79 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(&handler, v87);
          if (!v79)
          {
            v88 = *(i + 2);
            *v499 = i + 12;
            v79 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&handler, v87);
            *(v79 + 5) = v88;
            v78 = &unk_1ED4EA000;
            ++v85;
            ++v84;
          }

          ++v85;
        }

        ++v83;
        ++v85;
        v82 = *v82;
      }

      while (v82);
    }

    else
    {
      v85 = 0;
      v84 = 0;
      v83 = 0;
    }

    for (j = *(v416 + 1); j; j = *j)
    {
      v93 = *(j + 3);
      v79 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(&handler, v93);
      if (!v79)
      {
        v94 = *(j + 2);
        *v499 = j + 12;
        v79 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&handler, v93);
        *(v79 + 5) = v94;
        v78 = &unk_1ED4EA000;
        ++v85;
        ++v84;
      }

      ++v85;
    }

    if ((v84 - 1) >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v95 = 0;
      v77 = &CADisplayTimerGetTypeID::type;
    }

    else
    {
      v77 = &CADisplayTimerGetTypeID::type;
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v79 = malloc_type_zone_malloc(v78[360], 4 * v84, 0x100004052888210uLL);
      v95 = v79;
    }

    if ((v85 - 1) > 0x3FFFFFFFFFFFFFFELL)
    {
      v96 = 0;
    }

    else
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v79 = malloc_type_zone_malloc(v78[360], 4 * v85, 0x100004052888210uLL);
      v96 = v79;
    }

    v97 = v502;
    if (v502)
    {
      v98 = 0;
      do
      {
        *(v95 + v83 + v98) = *(v97 + 5);
        *(v96 + v98++) = *(v97 + 4);
        v97 = *v97;
      }

      while (v97);
    }

    else
    {
      v98 = 0;
    }

    v99 = *v416;
    if (*v416)
    {
      v100 = 0;
      do
      {
        *(v95 + v100) = *(v99 + 2);
        for (k = v99[3]; k; k = *k)
        {
          *(v96 + v98++) = *(k + 3);
        }

        v102 = v98 + 1;
        *(v96 + v98) = 0;
        ++v100;
        v99 = *v99;
        ++v98;
      }

      while (v99);
    }

    else
    {
      v102 = v98;
    }

    v103 = *(v416 + 1);
    if (v103)
    {
      v104 = v96 + v102;
      do
      {
        *v104++ = *(v103 + 3);
        v103 = *v103;
      }

      while (v103);
    }

    v411 = v95;
    CA::work_around_59853502(v79);
    v105 = MEMORY[0x1EEE9AC50];
    memset(&v499[68], 0, 52);
    *&v499[52] = 0u;
    *&v499[36] = 34799616;
    memset(&v499[4], 0, 20);
    *&v499[28] = v411;
    *&v499[24] = 2;
    *&v499[44] = v96;
    *&v499[60] = *MEMORY[0x1E69E99E0];
    *&v499[40] = v84;
    *&v499[52] = 16777472;
    *&v499[56] = 4 * v85;
    *&v499[68] = v83;
    *&v499[72] = v84;
    *&v499[76] = v85;
    v499[80] = v414;
    *&v499[81] = 0;
    v499[83] = 0;
    reply_port = mig_get_reply_port();
    *&v499[12] = reply_port;
    *v499 = -2147478253;
    *&v499[8] = v421;
    *&v499[16] = 0x9D1100000000;
    if (v105)
    {
      voucher_mach_msg_set(v499);
      v107 = *&v499[12];
    }

    else
    {
      v107 = reply_port;
    }

    v108 = mach_msg(v499, 3, 0x54u, 0x78u, v107, 0, 0);
    v109 = v108;
    v110 = v411;
    if ((v108 - 268435458) <= 0xE && ((1 << (v108 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(*&v499[12]);
      if (v109)
      {
        goto LABEL_179;
      }

      v419 = 0;
      v413 = 0;
      v113 = 0;
      LODWORD(v405) = v109;
      v114 = v109;
      v115 = v109;
      LODWORD(v406) = v109;
      v109 = v109;
      goto LABEL_197;
    }

    if (v108)
    {
      mig_dealloc_reply_port(*&v499[12]);
      goto LABEL_179;
    }

    if (*&v499[20] == 71)
    {
      v109 = 4294966988;
LABEL_319:
      mach_msg_destroy(v499);
LABEL_179:
      if (v109 == 268435459)
      {
        *(v446 + 257) |= 2u;
      }

      CAVerifyServerReturn(v109);
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v111 = x_log_get_api::log;
      if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        v151 = *(v446 + 4);
        v152 = mach_error_string(v109);
        *v499 = v397;
        *&v499[4] = v151;
        *&v499[8] = 1024;
        *&v499[10] = v109;
        *&v499[14] = 2080;
        *&v499[16] = v152;
        _os_log_error_impl(&dword_183AA6000, v111, OS_LOG_TYPE_ERROR, "apply fence tx failed (client=0x%x) [0x%x %s]", v499, 0x18u);
        v112 = 0;
        if (!v411)
        {
          goto LABEL_234;
        }
      }

      else
      {
        v112 = 0;
        if (!v110)
        {
          goto LABEL_234;
        }
      }

LABEL_231:
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(v78[360], v411);
      goto LABEL_234;
    }

    if (*&v499[20] != 40309)
    {
      v109 = 4294966995;
      goto LABEL_319;
    }

    if ((*v499 & 0x80000000) == 0)
    {
      if (*&v499[4] == 36 && *&v499[32])
      {
        if (*&v499[8])
        {
          v109 = 4294966996;
        }

        else
        {
          v109 = *&v499[32];
        }
      }

      else
      {
        v109 = 4294966996;
      }

      goto LABEL_319;
    }

    v109 = 4294966996;
    if (*&v499[24] != 4)
    {
      goto LABEL_319;
    }

    if (*&v499[4] != 112)
    {
      goto LABEL_319;
    }

    if (*&v499[8])
    {
      goto LABEL_319;
    }

    if (v499[39] != 1)
    {
      goto LABEL_319;
    }

    if (v499[55] != 1)
    {
      goto LABEL_319;
    }

    if (*&v499[70] << 16 != 0x100000)
    {
      goto LABEL_319;
    }

    if (*&v499[82] << 16 != 1114112)
    {
      goto LABEL_319;
    }

    if (*&v499[40] >> 3 != *&v499[92])
    {
      goto LABEL_319;
    }

    LODWORD(v405) = *&v499[56] >> 2;
    if (*&v499[56] >> 2 != *&v499[96])
    {
      goto LABEL_319;
    }

    LODWORD(v406) = *&v499[40] >> 3;
    v419 = *&v499[28];
    v413 = *&v499[44];
    v114 = *&v499[60];
    v115 = *&v499[72];
    v109 = *&v499[104];
    v113 = v499[100] != 0;
LABEL_197:
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v112 = malloc_type_zone_malloc(v78[360], 0x28uLL, 0x102004064794061uLL);
    *v112 = 0;
    v112[1] = 0;
    *(v112 + 4) = v114;
    *(v112 + 5) = v115;
    *(v112 + 24) = v113;
    *(v112 + 25) = v414;
    *&v421 = v405;
    v112[4] = v109;
    v116 = v406;
    if (v406)
    {
      v117 = 0;
      v118 = 0;
      v408 = (v413 + 4);
      v418 = v406;
      do
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v119 = malloc_type_zone_malloc(v78[360], 0x20uLL, 0x10200403C432F0CuLL);
        *v119 = *v112;
        v119[2] = 0;
        *(v119 + 2) = v419[v118];
        *(v119 + 3) = 0;
        if (v117 < v421 && *(v413 + v117))
        {
          v120 = v117 + 1;
          v121 = v408 + v117;
          do
          {
            v117 = v120;
            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            v122 = malloc_type_zone_malloc(v78[360], 0x18uLL, 0x102004014030ADEuLL);
            *v122 = *(v119 + 3);
            v122[2] = 0;
            v122[3] = *(v121 - 1);
            *(v122 + 2) = 0;
            *(v119 + 3) = v122;
            if (v421 == v117)
            {
              break;
            }

            v123 = *v121++;
            v120 = v117 + 1;
          }

          while (v123);
        }

        ++v117;
        *v112 = v119;
        ++v118;
      }

      while (v118 != v418);
      v116 = v406;
    }

    else
    {
      v117 = 0;
    }

    v124 = v411;
    if (v117 < v421)
    {
      if (*(v413 + v117))
      {
        v125 = ~v117 + v421;
        v126 = v413 + v117 + 1;
        v127 = v406;
        do
        {
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          v128 = malloc_type_zone_malloc(v78[360], 0x18uLL, 0x102004014030ADEuLL);
          *v128 = v112[1];
          v128[2] = 0;
          v128[3] = *(v126 - 1);
          *(v128 + 2) = 0;
          v112[1] = v128;
          if (!v125)
          {
            break;
          }

          v129 = *v126++;
          --v125;
        }

        while (v129);
        v116 = v127;
        v124 = v411;
      }

      else
      {
        v116 = v406;
      }
    }

    if (v419 && v116)
    {
      mach_vm_deallocate(*MEMORY[0x1E69E9A60], v419, (*MEMORY[0x1E69E9AC8] + 8 * v116 - 1) & -*MEMORY[0x1E69E9AC8]);
    }

    if (v413 && v405)
    {
      mach_vm_deallocate(*MEMORY[0x1E69E9A60], v413, (*MEMORY[0x1E69E9AC8] + 4 * v421 - 1) & -*MEMORY[0x1E69E9AC8]);
    }

    if (v124)
    {
      goto LABEL_231;
    }

LABEL_234:
    if (v96)
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(v78[360], v96);
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&handler);
    v91 = v112;
    if (!v112)
    {
      goto LABEL_284;
    }

LABEL_239:
    *&v421 = v91;
    if (*(v91 + 4))
    {
      operator new();
    }

    v130 = *(v421 + 20);
    if (v130 == -1)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], 0xFFFFFFFF);
LABEL_245:
      v130 = 0;
      goto LABEL_247;
    }

    if (!v130)
    {
      goto LABEL_247;
    }

    *v499 = *(v421 + 20);
    if (*(v421 + 24))
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v130);
      goto LABEL_245;
    }

    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v472, v130);
    if (!v410)
    {
      v410 = 0;
      if (v407)
      {
        if (v461 == v407)
        {
          v410 = [CABatchInfo _newInfoWithUnownedPort:v130 name:*(v421 + 32)];
        }
      }
    }

    v149 = *(v417 + 15);
    v409 = *(v149 + 40);
    if (!v409)
    {
      add = atomic_fetch_add(&CA::Transaction::capture_ftx_seed(void)::next_ftx_seed, 1u);
      v409 = add + 1;
      *(v149 + 40) = add + 1;
      if (add == -1)
      {
        v409 = atomic_fetch_add(&CA::Transaction::capture_ftx_seed(void)::next_ftx_seed, 1u) + 1;
        *(v149 + 40) = v409;
      }
    }

LABEL_247:
    LODWORD(v419) = v130;
    while (1)
    {
      v131 = *v421;
      if (!*v421)
      {
        break;
      }

      while (1)
      {
        v132 = v131[3];
        if (!v132)
        {
          break;
        }

        v131[3] = *v132;
        if (v77[95] != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_zone_free(v78[360], v132);
      }

      *v421 = *v131;
      if (v77[95] != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(v78[360], v131);
    }

    v133 = v130 - 1;
    LODWORD(v418) = v130 - 1;
    while (1)
    {
      v134 = *(v421 + 8);
      if (!v134)
      {
        break;
      }

      if (v133 <= 0xFFFFFFFD)
      {
        *v499 = &v461;
        v135 = std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v490, v461);
        v136 = v134[3];
        *v499 = v134 + 3;
        LODWORD(handler) = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v135 + 3, v136) + 5);
        *v499 = &handler;
        *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v470, handler) + 5) = v130;
        if (*(v421 + 32))
        {
          v137 = v134[3];
          *v499 = &handler;
          *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v464, handler) + 5) = v137;
          if (!*(&v467 + 1))
          {
            goto LABEL_277;
          }

          v138 = vcnt_s8(*(&v467 + 8));
          v138.i16[0] = vaddlv_u8(v138);
          if (v138.u32[0] > 1uLL)
          {
            v139 = handler;
            if (*(&v467 + 1) <= handler)
            {
              v139 = handler % DWORD2(v467);
            }
          }

          else
          {
            v139 = (DWORD2(v467) - 1) & handler;
          }

          v140 = *(v467 + 8 * v139);
          if (!v140 || (v141 = *v140) == 0)
          {
LABEL_277:
            operator new();
          }

          while (1)
          {
            v142 = v141[1];
            if (v142 == handler)
            {
              if (*(v141 + 4) == handler)
              {
                v130 = v419;
                v141[3] = *(v421 + 32);
                v133 = v418;
                break;
              }
            }

            else
            {
              if (v138.u32[0] > 1uLL)
              {
                if (v142 >= *(&v467 + 1))
                {
                  v142 %= *(&v467 + 1);
                }
              }

              else
              {
                v142 &= *(&v467 + 1) - 1;
              }

              if (v142 != v139)
              {
                goto LABEL_277;
              }
            }

            v141 = *v141;
            if (!v141)
            {
              goto LABEL_277;
            }
          }
        }
      }

      *(v421 + 8) = *v134;
      if (v77[95] != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(v78[360], v134);
    }

    if (v77[95] != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(v78[360], v421);
LABEL_284:
    v143 = v416;
    while (1)
    {
      v144 = *v143;
      if (!*v143)
      {
        break;
      }

      while (1)
      {
        v145 = v144[3];
        if (!v145)
        {
          break;
        }

        v146 = v145[2];
        if (v146 && atomic_fetch_add(v146 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v146 + 16))(v146);
        }

        v144[3] = *v145;
        if (v77[95] != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_zone_free(v78[360], v145);
      }

      *v143 = *v144;
      if (v77[95] != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(v78[360], v144);
    }

    while (1)
    {
      v148 = *(v143 + 1);
      if (!v148)
      {
        break;
      }

      v147 = v148[2];
      if (v147 && atomic_fetch_add(v147 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v147 + 16))(v147);
      }

      *(v143 + 1) = *v148;
      if (v77[95] != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(v78[360], v148);
    }

    if (v77[95] != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(v78[360], v143);
    v76 = *v412;
  }

  while (*v412);
  v153 = v465;
  v28 = v398;
  if (v465)
  {
    v36 = v403;
    do
    {
      kdebug_trace();
      v153 = *v153;
    }

    while (v153);
  }

  else
  {
    v36 = v403;
  }

LABEL_336:
  v154 = *(v417 + 15);
  v155 = *(v154 + 48);
  if (v155)
  {
    do
    {
      (*(*v155 + 16))();
      v155 = v155[1];
    }

    while (v155);
    CA::Transaction::free_batch_handlers_list(*(v154 + 48));
    *(v154 + 48) = 0;
  }

  v34 = v410;
  v156 = v399;
  if (v399)
  {
    do
    {
      [v156[1] invalidate];
      v156 = *v156;
    }

    while (v156);
  }

  if (!*(&v482 + 1) || (v157 = *v482) == 0 || (v158 = *v157) == 0)
  {
LABEL_354:
    v35 = 0;
    goto LABEL_355;
  }

  v159 = vcnt_s8(*(&v482 + 8));
  v159.i16[0] = vaddlv_u8(v159);
  while (2)
  {
    v160 = *(v158 + 1);
    if (v160)
    {
      if (v159.u32[0] > 1uLL)
      {
        if (v160 < *(&v482 + 1))
        {
          goto LABEL_354;
        }

        v161 = v160 % *(&v482 + 1);
      }

      else
      {
        v161 = v160 & (*(&v482 + 1) - 1);
      }

      if (v161)
      {
        goto LABEL_354;
      }

      goto LABEL_353;
    }

    if (*(v158 + 4))
    {
LABEL_353:
      v158 = *v158;
      if (!v158)
      {
        goto LABEL_354;
      }

      continue;
    }

    break;
  }

  LODWORD(v403) = v36;
  v374 = *(v158 + 3);
  if (!*(&v480[0] + 1) || (v375 = **&v480[0]) == 0 || (v376 = *v375) == 0)
  {
LABEL_779:
    operator new();
  }

  v377 = vcnt_s8(*(v480 + 8));
  v377.i16[0] = vaddlv_u8(v377);
  while (2)
  {
    v378 = v376[1];
    if (v378)
    {
      if (v377.u32[0] > 1uLL)
      {
        if (v378 < *(&v480[0] + 1))
        {
          goto LABEL_779;
        }

        v379 = v378 % *(&v480[0] + 1);
      }

      else
      {
        v379 = v378 & (*(&v480[0] + 1) - 1);
      }

      if (v379)
      {
        goto LABEL_779;
      }

      goto LABEL_778;
    }

    if (*(v376 + 4))
    {
LABEL_778:
      v376 = *v376;
      if (!v376)
      {
        goto LABEL_779;
      }

      continue;
    }

    break;
  }

  if (!v376[6])
  {
    v35 = 0;
    goto LABEL_812;
  }

  v463 = 1065353216;
  v461 = 0u;
  v462 = 0u;
  os_unfair_lock_lock(v374);
  if ((*(v374 + 28) & 1) == 0)
  {
    __assert_rtn("activate_and_wait", "render-fence.cpp", 446, "_has_receive_right");
  }

  kdebug_trace();
  v380 = 0.0;
  while (2)
  {
    v500 = 0u;
    memset(v499, 0, sizeof(v499));
    v381 = mach_msg(v499, 258, 0, 0x90u, *(v374 + 24), 0x1F4u, 0);
    if (!v381)
    {
      v503 = 1065353216;
      handler = 0u;
      v502 = 0u;
      v452 = 0.0;
      v451 = 0;
      if (CA::Render::Fence::extract_msg(v499, 0x90uLL, &handler, &v452, &v451, &v450, 0, 0))
      {
        if (*&v499[20] == 1919772259)
        {
          v380 = 0.0;
          v384 = 1;
          goto LABEL_799;
        }

        if (*&v499[20] == 1919706727)
        {
          for (m = v502; m; m = *m)
          {
            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__erase_unique<unsigned long long>(v376 + 3, m[2]);
          }

          if (v452 > v380)
          {
            v380 = v452;
          }

          v383 = v451;
          if (v451 - 1 < 0xFFFFFFFE && !std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(&v461, v451))
          {
            std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v461, v383);
            *&v499[44] = 0;
          }

          v384 = v376[6] == 0;
LABEL_799:
          mach_msg_destroy(v499);
          std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&handler);
          if (v384)
          {
            goto LABEL_807;
          }

          continue;
        }
      }

      v384 = 0;
      goto LABEL_799;
    }

    break;
  }

  v385 = v381;
  if (x_log_get_render(void)::once[0] != -1)
  {
    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
  }

  v386 = x_log_get_render(void)::log;
  if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
  {
    LODWORD(handler) = 67109120;
    DWORD1(handler) = v385;
    _os_log_error_impl(&dword_183AA6000, v386, OS_LOG_TYPE_ERROR, "failed to wait for fence tx reply: %x\n", &handler, 8u);
  }

LABEL_807:
  kdebug_trace();
  os_unfair_lock_unlock(v374);
  v35 = [CAFenceResolution _newResolutionWithTime:v380];
  v28 = v398;
  if (*(&v446 + 1) == 0.0)
  {
    *(&v446 + 1) = v380;
  }

  for (n = v462; n; n = *n)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], *(n + 4));
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v461);
LABEL_812:
  v34 = v410;
  if (v374)
  {
    CA::Render::Fence::Transaction::Observer::~Observer(v374);
    MEMORY[0x1865EA9A0]();
  }

  v388 = *(&v482 + 1);
  v389 = *(v158 + 1);
  v390 = vcnt_s8(*(&v482 + 8));
  v390.i16[0] = vaddlv_u8(v390);
  if (v390.u32[0] > 1uLL)
  {
    LOBYTE(v36) = v403;
    if (v389 >= *(&v482 + 1))
    {
      v389 %= *(&v482 + 1);
    }
  }

  else
  {
    v389 &= *(&v482 + 1) - 1;
    LOBYTE(v36) = v403;
  }

  v391 = *(v482 + 8 * v389);
  do
  {
    v392 = v391;
    v391 = *v391;
  }

  while (v391 != v158);
  if (v392 == &v483)
  {
    goto LABEL_831;
  }

  v393 = *(v392 + 1);
  if (v390.u32[0] > 1uLL)
  {
    if (v393 >= *(&v482 + 1))
    {
      v393 %= *(&v482 + 1);
    }
  }

  else
  {
    v393 &= *(&v482 + 1) - 1;
  }

  if (v393 != v389)
  {
LABEL_831:
    if (!*v158)
    {
      goto LABEL_832;
    }

    v394 = *(*v158 + 8);
    if (v390.u32[0] > 1uLL)
    {
      if (v394 >= *(&v482 + 1))
      {
        v394 %= *(&v482 + 1);
      }
    }

    else
    {
      v394 &= *(&v482 + 1) - 1;
    }

    if (v394 != v389)
    {
LABEL_832:
      *(v482 + 8 * v389) = 0;
    }
  }

  v395 = *v158;
  if (*v158)
  {
    v396 = *(v395 + 1);
    if (v390.u32[0] > 1uLL)
    {
      if (v396 >= v388)
      {
        v396 %= v388;
      }
    }

    else
    {
      v396 &= v388 - 1;
    }

    if (v396 != v389)
    {
      *(v482 + 8 * v396) = v392;
      v395 = *v158;
    }
  }

  *v392 = v395;
  *v158 = 0;
  --*(&v483 + 1);
  operator delete(v158);
LABEL_355:
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v464);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v485);
  std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>>>::~__hash_table(&v490);
LABEL_356:
  CA::Transaction::run_commit_handlers(v417, 1u);
  v162 = *(v417 + 15);
  if (*(v162 + 16))
  {
    v163 = *(v162 + 16);
    if (v163)
    {
      v164 = 0;
      do
      {
        v165 = v163;
        v163 = *v163;
        *v165 = v164;
        v164 = v165;
      }

      while (v163);
    }

    else
    {
      v165 = 0;
    }

    *(v417 + 2) = v165;
    *(v162 + 16) = 0;
  }

  objc_autoreleasePoolPop(v28);
  v166 = mach_absolute_time();
  v167 = CATimeWithHostTime(v166);
  v168 = *(&v446 + 1);
  if (v12 != 0.0)
  {
    if (*(&v446 + 1) <= v167)
    {
      v168 = v167;
    }

    *(&v446 + 1) = v168;
  }

  v169 = v417;
  v441 = 0.0;
  if (v168 == 0.0)
  {
    CA::Transaction::get_value(*(v417 + 13), 212, 0x12, &v441);
    v499[0] = 0;
    if (pthread_main_np())
    {
      CA::Transaction::get_value(*(v417 + 13), 491, 7, v499);
    }

    if ((v36 & 1) != 0 || (v499[0] & 1) != 0 || (v170 = *(*(v417 + 15) + 176), v170 == 0.0) || (v171 = v170 + 0.001, v171 <= v167))
    {
      v171 = v441;
      if (v167 > v441)
      {
        v171 = v167;
      }
    }

    else if (v171 <= v441)
    {
      v171 = v441;
    }

    *(&v446 + 1) = v171;
  }

  if (CA::Transaction::get_value(*(v417 + 13), 213, 0x12, &v441))
  {
    v173 = *(&v446 + 1);
    if (*(&v446 + 1) <= v441)
    {
      v173 = v441;
    }

    *(&v446 + 1) = v173;
  }

  v410 = v34;
  v174 = v443;
  v400 = v35;
  if (!v443)
  {
    LODWORD(v175) = 0;
    v414 = 0;
    LODWORD(v407) = 0;
    goto LABEL_680;
  }

  v406 = 0;
  LODWORD(v407) = 0;
  v414 = 0;
  v175 = 0;
  v176 = 0;
  v177 = *MEMORY[0x1E695E480];
  v415 = v437;
  v416 = v440;
  v411 = &v499[32];
  v412 = &v499[24];
  v408 = v434;
  v178 = v167 - a3;
  v404 = v177;
  v405 = v409;
  v399 = &v476;
  *&v172 = 67109634;
  v398 = v172;
  v403 = xmmword_183E21360;
  while (2)
  {
    v179 = *&v420[8 * v176];
    *&v446 = v179;
    LOBYTE(v449) = 0;
    *(&v447 + 1) = 0;
    *&v448 = 0;
    if ((*(v179 + 257) & 0x200) != 0)
    {
      *(v179 + 257) |= 0x10u;
      CA::Context::destroy(v179);
      CA::Context::unref(v446, 1);
      goto LABEL_673;
    }

    v180 = *(v179 + 4);
    LODWORD(v464) = *(v179 + 8);
    LODWORD(v421) = *(*(v169 + 15) + 204);
    v418 = v180;
    if ((v421 & 0x20) != 0)
    {
      v181 = &CADisplayTimerGetTypeID::type;
    }

    else
    {
      kdebug_trace();
      v181 = &CADisplayTimerGetTypeID::type;
      v179 = v446;
    }

    pthread_mutex_lock((v179 + 16));
    v186 = v446;
    *(v169 + 5) = v446;
    *(v186 + 224) = &v445;
    v187 = *(v169 + 29);
    *(v169 + 29) = v187 + 1;
    if (!v187)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
      v186 = v446;
    }

    v188 = *(v186 + 104);
    if (v188)
    {
      *&v448 = *(v186 + 104);
      CA::Render::Context::will_commit(v188);
      v186 = v446;
    }

    v189 = v169;
    if (!*(v186 + 160) || (*(v186 + 257) & 2) != 0)
    {
      v419 = 0;
      v191 = 0;
    }

    else
    {
      v190 = std::__hash_table<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>>>::find<unsigned int>(*&v478[0], *(&v478[0] + 1), v464);
      if (v190 && v190[6])
      {
        operator new();
      }

      os_unfair_lock_lock(&CA::Context::_deferred_lock);
      if (CA::Context::_deferred_by_lid && std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(CA::Context::_deferred_by_lid, v464))
      {
        if (v181[95] != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v192 = malloc_type_zone_malloc(malloc_zone, 0x30uLL, 0x102004009D5ECEBuLL);
        v192[1] = 0;
        v192[2] = 0;
        *(v192 + 44) = 0;
        v193 = v192;
        *v192 = 0;
        if (!CA::Context::_deferred_by_lid)
        {
          operator new();
        }

        *v499 = &v464;
        v194 = std::__hash_table<std::__hash_value_type<unsigned int,CA::Context::DeferredCommit *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::Context::DeferredCommit *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::Context::DeferredCommit *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::Context::DeferredCommit *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(CA::Context::_deferred_by_lid, v464)[3];
        while (v194)
        {
          v195 = v194;
          v194 = *v194;
          if (!v194)
          {
            goto LABEL_415;
          }
        }

        *v499 = &v464;
        v195 = std::__hash_table<std::__hash_value_type<unsigned int,CA::Context::DeferredCommit *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::Context::DeferredCommit *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::Context::DeferredCommit *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::Context::DeferredCommit *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(CA::Context::_deferred_by_lid, v464) + 3;
LABEL_415:
        *v195 = v193;
        os_unfair_lock_unlock(&CA::Context::_deferred_lock);
        v199 = v181[95];
        LODWORD(v413) = 0;
        if (v199 != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v200 = malloc_type_zone_malloc(malloc_zone, 0xC0uLL, 0x165299FDuLL);
        v198 = v200;
        if (v200)
        {
          CA::Render::Encoder::Encoder(v200, 0, 2, v418, *(&v446 + 1));
          *v198 = &unk_1EF1FFEC8;
          *(v198 + 120) = 0u;
          *(v198 + 136) = 0u;
          *(v198 + 152) = 0u;
          *(v198 + 168) = 0;
          *(v198 + 176) = 1065353216;
          *(v198 + 184) = 0;
        }

        *v499 = &v464;
        v407 = std::__hash_table<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v475, v464)[3];
        v201 = v475;
        v202 = std::__hash_table<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>>>::find<unsigned int>(v475, *(&v475 + 1), v464);
        if (v202)
        {
          v203 = v202[1];
          v204 = vcnt_s8(*(&v201 + 8));
          v204.i16[0] = vaddlv_u8(v204);
          if (v204.u32[0] > 1uLL)
          {
            if (v203 >= *(&v201 + 1))
            {
              v203 %= *(&v201 + 1);
            }
          }

          else
          {
            v203 &= *(&v201 + 1) - 1;
          }

          v205 = *(v201 + 8 * v203);
          do
          {
            v206 = v205;
            v205 = *v205;
          }

          while (v205 != v202);
          if (v206 == v399)
          {
            goto LABEL_437;
          }

          v207 = v206[1];
          if (v204.u32[0] > 1uLL)
          {
            if (v207 >= *(&v201 + 1))
            {
              v207 %= *(&v201 + 1);
            }
          }

          else
          {
            v207 &= *(&v201 + 1) - 1;
          }

          if (v207 != v203)
          {
LABEL_437:
            if (!*v202)
            {
              goto LABEL_438;
            }

            v208 = *(*v202 + 8);
            if (v204.u32[0] > 1uLL)
            {
              if (v208 >= *(&v201 + 1))
              {
                v208 %= *(&v201 + 1);
              }
            }

            else
            {
              v208 &= *(&v201 + 1) - 1;
            }

            if (v208 != v203)
            {
LABEL_438:
              *(v201 + 8 * v203) = 0;
            }
          }

          v209 = *v202;
          if (*v202)
          {
            v210 = *(v209 + 8);
            if (v204.u32[0] > 1uLL)
            {
              if (v210 >= *(&v201 + 1))
              {
                v210 %= *(&v201 + 1);
              }
            }

            else
            {
              v210 &= *(&v201 + 1) - 1;
            }

            if (v210 != v203)
            {
              *(v475 + 8 * v210) = v206;
              v209 = *v202;
            }
          }

          *v206 = v209;
          *v202 = 0;
          --*(&v476 + 1);
          operator delete(v202);
        }

        v211 = v446;
        v193[1] = v446;
        os_unfair_lock_lock(&CA::Context::_lock);
        ++*v211;
        v191 = v193;
        os_unfair_lock_unlock(&CA::Context::_lock);
        v419 = 0;
        v212 = v407;
        v193[3] = v198;
        v193[4] = v212;
        LODWORD(v407) = 1;
        *(v193 + 10) = v413;
      }

      else
      {
        os_unfair_lock_unlock(&CA::Context::_deferred_lock);
        v197 = v406;
        if (!v406)
        {
          MEMORY[0x1EEE9AC00](v196);
          v197 = &v397 - 2048;
          bzero(&v397 - 2048, 0x8000uLL);
        }

        *v197 = 0;
        *(v197 + 1) = v197 + 2;
        v197[1] = v403;
        v198 = x_heap_malloc_small_(v197, 0x78uLL);
        CA::Render::Encoder::Encoder(v198, v197, 0, v418, *(&v446 + 1));
        v191 = 0;
        v406 = v197;
        v419 = v197;
      }

      *(&v447 + 1) = v198;
      v213 = v446;
      os_unfair_lock_lock((v446 + 176));
      v214 = *(v446 + 184);
      if (!v214)
      {
        v413 = v191;
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v215 = malloc_type_zone_malloc(malloc_zone, 0x28uLL, 0x165299FDuLL);
        v214 = v215;
        if (v215)
        {
          *v215 = 0;
          v215[1] = x_hash_table_new_(0, 0, 0, 0, 0, 0);
          *(v214 + 16) = 0;
          *(v214 + 24) = 0;
          *(v214 + 32) = 0;
          *v214 = 1;
          os_unfair_lock_lock(&CA::Render::Encoder::ObjectCache::_lock);
          CA::Render::Encoder::ObjectCache::_cache_list = x_list_prepend(CA::Render::Encoder::ObjectCache::_cache_list, v214);
          os_unfair_lock_unlock(&CA::Render::Encoder::ObjectCache::_lock);
        }

        *(v446 + 184) = v214;
        v191 = v413;
      }

      os_unfair_lock_unlock(v213 + 44);
      CA::Render::Encoder::set_object_cache(*(&v447 + 1), v214, 1);
      v186 = v446;
      v169 = v189;
    }

    v216 = *(v186 + 257);
    if ((v216 & 0x20) != 0)
    {
      v217 = *(v186 + 104);
      if (v217)
      {
        CA::Render::Context::set_colorspace(v217, *(v186 + 112));
        v186 = v446;
      }

      v218 = *(&v447 + 1);
      if (*(&v447 + 1))
      {
        v219 = *(v186 + 112);
        v220 = *(*(&v447 + 1) + 32);
        if ((v220 + 1) > *(*(&v447 + 1) + 40))
        {
          CA::Render::Encoder::grow(*(&v447 + 1), 1);
          v220 = *(v218 + 4);
        }

        *(v218 + 4) = v220 + 1;
        *v220 = 9;
        CA::Render::Encoder::encode_colorspace(v218, v219);
        CA::Render::Encoder::encode_sanity_check(v218);
        v186 = v446;
      }

      v216 = *(v186 + 257) & 0xFFDF;
      *(v186 + 257) = v216;
      v169 = v189;
    }

    if ((v216 & 0x40) != 0)
    {
      v221 = *(v186 + 248);
      if (v221 && CFStringGetLength(*(v186 + 248)) >= 256)
      {
        v511.location = 0;
        v511.length = 255;
        v221 = CFStringCreateWithSubstring(v404, v221, v511);
        v222 = 1;
      }

      else
      {
        v222 = 0;
      }

      v223 = *(v446 + 104);
      if (v223)
      {
        CA::Render::Context::set_client_annotation(v223, v221);
      }

      v224 = *(&v447 + 1);
      if (*(&v447 + 1))
      {
        v225 = *(*(&v447 + 1) + 32);
        if ((v225 + 1) > *(*(&v447 + 1) + 40))
        {
          CA::Render::Encoder::grow(*(&v447 + 1), 1);
          v225 = *(v224 + 4);
        }

        *(v224 + 4) = v225 + 1;
        *v225 = 10;
        CA::Render::Encoder::encode_cfobject(v224, v221);
        CA::Render::Encoder::encode_sanity_check(v224);
      }

      if (v222)
      {
        CFRelease(v221);
      }

      v186 = v446;
      *(v446 + 257) &= ~0x40u;
      v169 = v189;
    }

    if (*(&v447 + 1))
    {
      *(*(&v447 + 1) + 80) = *(v186 + 112);
    }

    v226 = v464;
    v227 = *(v169 + 3);
    if (v227)
    {
      do
      {
        v228 = *(v227 + 5);
        if (v228)
        {
          v229 = v228 == v226;
        }

        else
        {
          v229 = 1;
        }

        if (v229)
        {
          CA::Context::commit_deleted(v227[1], *(v227 + 4), &v445, v182);
        }

        v227 = *v227;
      }

      while (v227);
      v226 = v464;
    }

    for (ii = *(v169 + 2); ii; ii = *ii)
    {
      v231 = *(ii + 8);
      if (v231)
      {
        v232 = v231 == v226;
      }

      else
      {
        v232 = 1;
      }

      if (v232)
      {
        CA::Context::commit_command(*(ii + 2), ii[2], ii[3], &v445, v183);
      }
    }

    v233 = *(v446 + 96);
    if (v233)
    {
      v234 = *(v233 + 16);
    }

    else
    {
      v234 = 0;
    }

    *&handler = 0;
    *(&handler + 1) = &handler;
    *&v502 = 0x2020000000;
    DWORD2(v502) = 0;
    *&v490 = 0;
    *(&v490 + 1) = &v490;
    *&v491 = 0x2020000000;
    BYTE8(v491) = 0;
    v439[0] = MEMORY[0x1E69E9820];
    v439[1] = 3221225472;
    v440[0] = ___ZN2CA7Context18commit_transactionEPNS_11TransactionEdPd_block_invoke;
    v440[1] = &unk_1E6DEDAE8;
    v440[3] = &v490;
    v440[4] = &v445;
    v440[2] = &handler;
    if (v234)
    {
      CA::Layer::commit_if_needed(v234, v189, v439);
      if (BYTE4(xmmword_1ED4E98AC) == 1 && *(*(&v490 + 1) + 24) == 1)
      {
        CA::record_layer(v189, v446, a3, *(v234 + 16), v182);
      }
    }

    v436[0] = MEMORY[0x1E69E9820];
    v436[1] = 3221225472;
    v437[0] = ___ZN2CA7Context18commit_transactionEPNS_11TransactionEdPd_block_invoke_2;
    v437[1] = &unk_1E6DEDB10;
    v438 = v464;
    v437[2] = v439;
    v437[3] = v189;
    v235 = *(v189 + 6);
    if (!v235)
    {
LABEL_513:
      if (!v234)
      {
        goto LABEL_515;
      }

      goto LABEL_514;
    }

    v236 = 0;
    *(v189 + 6) = 0;
    v237 = 1 << *v235;
    do
    {
      for (jj = *(*(v235 + 2) + 8 * v236); jj; jj = *jj)
      {
        CA::foreach_callback(jj[2], jj[3], v436);
      }

      ++v236;
    }

    while (v236 != v237);
    v239 = *(v417 + 6);
    if (v239)
    {
      v413 = v176;
      v240 = v179;
      v241 = v175;
      v242 = v191;
      v243 = 0;
      v244 = 1 << *v239;
      do
      {
        for (kk = *(*(v239 + 16) + 8 * v243); kk; kk = *kk)
        {
          CA::move_root(kk[2], kk[3], v235, v182);
        }

        ++v243;
      }

      while (v243 != v244);
      v246 = *(v417 + 6);
      v189 = v417;
      *(v417 + 6) = v235;
      v191 = v242;
      v175 = v241;
      v179 = v240;
      v176 = v413;
      if (v246)
      {
        x_hash_table_free(v246);
      }

      goto LABEL_513;
    }

    v189 = v417;
    *(v417 + 6) = v235;
    if (v234)
    {
LABEL_514:
      v184.i64[0] = *(&v446 + 1);
      *v499 = v189;
      *&v499[8] = 1065353216;
      CA::Layer::collect_animations_(v234, &v447, v499, v184, v185);
    }

LABEL_515:
    v247 = *(v189 + 15);
    v248 = *(v247 + 200);
    if (v448)
    {
      *(v448 + 288) = v248;
    }

    v249 = *(&v447 + 1);
    if (*(&v447 + 1))
    {
      v250 = *(v247 + 204);
      v251 = *(*(&v447 + 1) + 32);
      if ((v251 + 1) > *(*(&v447 + 1) + 40))
      {
        CA::Render::Encoder::grow(*(&v447 + 1), 1);
        v251 = *(v249 + 4);
      }

      *(v249 + 4) = v251 + 1;
      *v251 = 32;
      v252 = *(v249 + 4);
      if ((v252 + 1) > *(v249 + 5))
      {
        CA::Render::Encoder::grow(v249, 4);
        v252 = *(v249 + 4);
      }

      *v252 = v248;
      v253 = *(v249 + 4);
      v254 = *(v249 + 5);
      v255 = (v253 + 4);
      *(v249 + 4) = v253 + 4;
      if (v253 + 5 > v254)
      {
        CA::Render::Encoder::grow(v249, 1);
        v255 = *(v249 + 4);
      }

      *(v249 + 4) = v255 + 1;
      *v255 = (v250 & 4) != 0;
      CA::Render::Encoder::encode_sanity_check(v249);
      v256 = v189;
      v247 = *(v189 + 15);
    }

    else
    {
      v256 = v189;
    }

    v257 = *(v247 + 176);
    if (v257 != 0.0)
    {
      if (v448 && (*(v448 + 584) & 0x40) == 0)
      {
        CA::Render::Context::add_begin_time(v448, v257, INFINITY);
      }

      v258 = *(&v447 + 1);
      if (*(&v447 + 1))
      {
        v259 = *(*(&v447 + 1) + 32);
        if ((v259 + 1) > *(*(&v447 + 1) + 40))
        {
          CA::Render::Encoder::grow(*(&v447 + 1), 1);
          v259 = *(v258 + 4);
        }

        *(v258 + 4) = v259 + 1;
        *v259 = 29;
        v260 = *(v258 + 4);
        if ((v260 + 1) > *(v258 + 5))
        {
          CA::Render::Encoder::grow(v258, 8);
          v260 = *(v258 + 4);
        }

        *v260 = v257;
        *(v258 + 4) += 8;
        CA::Render::Encoder::encode_sanity_check(v258);
      }
    }

    LOBYTE(v452) = 0;
    CA::Transaction::get_value(v256[13], 233, 7, &v452);
    if (*(&v447 + 1) && *(*(&v447 + 1) + 32) - *(*(&v447 + 1) + 24) != *(*(&v447 + 1) + 96) || LOBYTE(v452) == 1)
    {
      LOBYTE(v485) = 0;
      CA::Transaction::get_value(v256[13], 491, 7, &v485);
      if (LOBYTE(v452) == 1)
      {
        LOBYTE(v485) = 1;
LABEL_542:
        v261 = pthread_main_np();
        if (v191 || !v261)
        {
          goto LABEL_554;
        }

        if ((x_cpu_has_64bit::initialized & 1) == 0)
        {
          *v499 = 4;
          sysctlbyname("hw.cpu64bit_capable", &x_cpu_has_64bit::has_64_bit, v499, 0, 0);
          x_cpu_has_64bit::initialized = 1;
        }

        if (x_cpu_has_64bit::has_64_bit)
        {
          if (v485)
          {
            v262 = *(&v447 + 1);
            v263 = LOBYTE(v452);
            v264 = *(*(&v447 + 1) + 32);
            if ((v264 + 1) > *(*(&v447 + 1) + 40))
            {
              CA::Render::Encoder::grow(*(&v447 + 1), 1);
              v264 = *(v262 + 4);
            }

            *(v262 + 4) = v264 + 1;
            *v264 = 31;
            v265 = *(v262 + 4);
            if ((v265 + 1) > *(v262 + 5))
            {
              CA::Render::Encoder::grow(v262, 1);
              v265 = *(v262 + 4);
            }

            *(v262 + 4) = v265 + 1;
            *v265 = v263;
            CA::Render::Encoder::encode_sanity_check(v262);
            v256 = v189;
            if (BYTE11(xmmword_1ED4E980C) == 1)
            {
              kdebug_trace();
            }
          }
        }

        else
        {
LABEL_554:
          LOBYTE(v485) = 0;
        }
      }

      else if (v485)
      {
        goto LABEL_542;
      }

      LOBYTE(v461) = 0;
      if (CA::Transaction::get_value(v256[13], 268, 6, &v461))
      {
        if (v448)
        {
          CA::Render::Context::set_frame_stall_skip_request(v448, v461);
        }

        if (v461 == 1)
        {
          v266 = *(&v447 + 1);
          v267 = *(*(&v447 + 1) + 32);
          if ((v267 + 1) > *(*(&v447 + 1) + 40))
          {
            CA::Render::Encoder::grow(*(&v447 + 1), 1);
            v267 = *(v266 + 4);
          }

          *(v266 + 4) = v267 + 1;
          *v267 = 27;
          v268 = *(v266 + 4);
          if ((v268 + 1) > *(v266 + 5))
          {
            CA::Render::Encoder::grow(v266, 1);
            v268 = *(v266 + 4);
          }

          *(v266 + 4) = v268 + 1;
          *v268 = 1;
          CA::Render::Encoder::encode_sanity_check(v266);
        }
      }

      *v499 = 0;
      if (CA::Transaction::_update_cycle_support_enabled == 1 && CA::Transaction::get_value(v256[13], 727, 0x12, v499))
      {
        v269 = *(&v447 + 1);
        v270 = *v499;
        v271 = *(*(&v447 + 1) + 32);
        if ((v271 + 1) > *(*(&v447 + 1) + 40))
        {
          CA::Render::Encoder::grow(*(&v447 + 1), 1);
          v271 = *(v269 + 4);
        }

        *(v269 + 4) = v271 + 1;
        *v271 = 34;
        v272 = *(v269 + 4);
        if ((v272 + 1) > *(v269 + 5))
        {
          CA::Render::Encoder::grow(v269, 8);
          v272 = *(v269 + 4);
        }

        *v272 = v270;
        *(v269 + 4) += 8;
        CA::Render::Encoder::encode_sanity_check(v269);
      }
    }

    v273 = v256[15];
    v274 = *(v273 + 192);
    if (v274 != 0.0)
    {
      if (v448)
      {
        CA::Render::Context::add_input_time(v448, *(v273 + 192));
      }

      v275 = *(&v447 + 1);
      if (*(&v447 + 1))
      {
        v276 = *(*(&v447 + 1) + 32);
        if (&v276[-*(*(&v447 + 1) + 24)] != *(*(&v447 + 1) + 96) || (byte_1ED4E982A & 1) != 0)
        {
          if ((v276 + 1) > *(*(&v447 + 1) + 40))
          {
            CA::Render::Encoder::grow(*(&v447 + 1), 1);
            v276 = *(v275 + 4);
          }

          *(v275 + 4) = v276 + 1;
          *v276 = 26;
          v277 = *(v275 + 4);
          if ((v277 + 1) > *(v275 + 5))
          {
            CA::Render::Encoder::grow(v275, 8);
            v277 = *(v275 + 4);
          }

          *v277 = v274;
          *(v275 + 4) += 8;
          CA::Render::Encoder::encode_sanity_check(v275);
        }
      }
    }

    *&v485 = 0;
    if (CA::Transaction::get_value(v256[13], 600, 0x10, &v485))
    {
      if (v448)
      {
        CA::Render::Context::add_remote_input_mach_time(v448, v485);
      }

      v278 = *(&v447 + 1);
      if (*(&v447 + 1))
      {
        v279 = *(*(&v447 + 1) + 32);
        if (&v279[-*(*(&v447 + 1) + 24)] != *(*(&v447 + 1) + 96) || (byte_1ED4E982A & 1) != 0)
        {
          v280 = v485;
          if ((v279 + 1) > *(*(&v447 + 1) + 40))
          {
            CA::Render::Encoder::grow(*(&v447 + 1), 1);
            v279 = *(v278 + 4);
          }

          *(v278 + 4) = v279 + 1;
          *v279 = 28;
          v281 = *(v278 + 4);
          if ((v281 + 1) > *(v278 + 5))
          {
            CA::Render::Encoder::grow(v278, 8);
            v281 = *(v278 + 4);
          }

          *v281 = v280;
          *(v278 + 4) += 8;
          CA::Render::Encoder::encode_sanity_check(v278);
        }
      }
    }

    CA::Transaction::unlock(v256);
    v282 = v446;
    v283 = *(&v447 + 1);
    v284 = *(v446 + 257);
    v285 = v284 & 0x18;
    if (v285 == 8 && *(&v447 + 1))
    {
      *(v446 + 257) = v284 | 0x10;
      os_unfair_lock_lock(&CA::Context::_lock);
      ++*v282;
      os_unfair_lock_unlock(&CA::Context::_lock);
      LODWORD(v461) = 0;
      v286 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &v461);
      CA_CLIENT_MACH_PORT_ALLOCATE_FAILED(v286, v461);
      if (!CA::Render::encode_sync_request(*(&v447 + 1), v461))
      {
        __assert_rtn("commit_transaction", "CAContextInternal.mm", 3725, "scheduled");
      }

      *v499 = 0;
      *&v499[8] = v499;
      *&v499[16] = 0x3052000000;
      *&v499[24] = __Block_byref_object_copy_;
      *&v499[32] = __Block_byref_object_dispose_;
      *&v499[40] = 0;
      v432 = MEMORY[0x1E69E9820];
      v433 = 3221225472;
      v434[0] = ___ZN2CA7Context18commit_transactionEPNS_11TransactionEdPd_block_invoke_14;
      v434[1] = &unk_1E6DEDB38;
      v434[2] = v499;
      v434[3] = v282;
      v435 = v461;
      *&v499[40] = dispatch_mach_create();
      dispatch_mach_connect();
      _Block_object_dispose(v499, 8);
      v283 = *(&v447 + 1);
    }

    if (v283)
    {
      v287 = *(*(v189 + 15) + 104);
      if (!(v191 | v287) && *(v283 + 32) - *(v283 + 24) == *(v283 + 96))
      {
        goto LABEL_606;
      }

      ++*(v446 + 128);
      v288 = HIDWORD(v442);
      if (v287 && !HIDWORD(v442))
      {
        v289 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &v442 + 1);
        CA_CLIENT_MACH_PORT_ALLOCATE_FAILED(v289, SHIDWORD(v442));
        v288 = HIDWORD(v442);
        v283 = *(&v447 + 1);
      }

      if (v288)
      {
        v290 = CA::Render::encode_sync_request(v283, v288);
        v414 += v290;
        v283 = *(&v447 + 1);
      }

      if (v191)
      {
LABEL_606:
        v291 = 0;
      }

      else
      {
        if (*(v283 + 104) == 1)
        {
          if ((v442 - 1) >= 0xFFFFFFFE)
          {
            v292 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &v442);
            if ((v442 - 1) >= 0xFFFFFFFE)
            {
              v293 = v292;
              if (x_log_get_api::once[0] != -1)
              {
                dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
              }

              v294 = x_log_get_api::log;
              if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
              {
                v315 = mach_error_string(v293);
                *v499 = v398;
                *&v499[4] = v418;
                *&v499[8] = 1024;
                *&v499[10] = v293;
                *&v499[14] = 2080;
                *&v499[16] = v315;
                _os_log_error_impl(&dword_183AA6000, v294, OS_LOG_TYPE_ERROR, "Failed to make reply port for sync coder (client=0x%x) [0x%x %s]", v499, 0x18u);
              }
            }
          }

          v295 = v442;
          v283 = *(&v447 + 1);
        }

        else
        {
          v295 = 0;
        }

        v296 = *(v283 + 32);
        if ((v296 + 1) > *(v283 + 40))
        {
          CA::Render::Encoder::grow(v283, 1);
          v296 = *(v283 + 32);
        }

        *(v283 + 32) = v296 + 1;
        *v296 = 30;
        v297 = *(v283 + 32);
        if ((v297 + 1) > *(v283 + 40))
        {
          CA::Render::Encoder::grow(v283, 8);
          v297 = *(v283 + 32);
        }

        *v297 = v178;
        *(v283 + 32) += 8;
        CA::Render::Encoder::encode_sanity_check(v283);
        LODWORD(v461) = 0;
        v298 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v470, v464);
        if (v298)
        {
          LODWORD(v461) = *(v298 + 5);
          v299 = (v461 - 1) < 0xFFFFFFFE;
        }

        else
        {
          v299 = 0;
        }

        v300 = CA::Render::Encoder::send_message(*(&v447 + 1), *(v446 + 160), v295, &v461, v299);
        v301 = v300;
        if (v300)
        {
          if (v300 == 268435459)
          {
            *(v446 + 257) |= 2u;
          }

          CAVerifyServerReturn(v300);
          if (x_log_get_api::once[0] != -1)
          {
            dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
          }

          v302 = x_log_get_api::log;
          if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
          {
            v418 = v179;
            v313 = *(v446 + 4);
            v314 = mach_error_string(v301);
            *v499 = v398;
            *&v499[4] = v313;
            *&v499[8] = 1024;
            *&v499[10] = v301;
            *&v499[14] = 2080;
            *&v499[16] = v314;
            _os_log_error_impl(&dword_183AA6000, v302, OS_LOG_TYPE_ERROR, "Failed to commit transaction (client=0x%x) [0x%x %s]", v499, 0x18u);
            v191 = 0;
            v179 = v418;
          }
        }

        v291 = v295 - 1 < 0xFFFFFFFE && v301 == 0;
        v283 = *(&v447 + 1);
      }

      *(v283 + 80) = 0;
    }

    else
    {
      v291 = 0;
    }

    *(v189 + 5) = 0;
    v304 = v448;
    *(v446 + 224) = 0;
    if (v304)
    {
      v305 = CA::Render::Context::increment_commit_seed(v304);
      v306 = v448;
      *(v446 + 128) = v305;
      CA::Render::Context::did_commit(v306, v449, 0, 1, 0, 0);
      CA::Render::Context::run_scheduled_handle_updates(v448);
      CA::Render::Context::run_scheduled_dependence_removals(v448);
      v283 = *(&v447 + 1);
    }

    if (v285 == 8 && !v283)
    {
      v307 = v446;
      *(v446 + 257) |= 0x10u;
      CA::Context::destroy(v307);
    }

    _Block_object_dispose(&v490, 8);
    _Block_object_dispose(&handler, 8);
    pthread_mutex_unlock((v179 + 16));
    if ((v421 & 0x20) == 0)
    {
      kdebug_trace();
    }

    v169 = v189;
    if (v191)
    {
      *(&v447 + 1) = 0;
      os_unfair_lock_lock(&CA::Context::_deferred_lock);
      *(v191 + 44) = 1;
      os_unfair_lock_unlock(&CA::Context::_deferred_lock);
      goto LABEL_670;
    }

    if (!*(&v467 + 1))
    {
      goto LABEL_666;
    }

    v308 = vcnt_s8(*(&v467 + 8));
    v308.i16[0] = vaddlv_u8(v308);
    if (v308.u32[0] > 1uLL)
    {
      v309 = v464;
      if (*(&v467 + 1) <= v464)
      {
        v309 = v464 % DWORD2(v467);
      }
    }

    else
    {
      v309 = (DWORD2(v467) - 1) & v464;
    }

    v310 = *(v467 + 8 * v309);
    if (!v310 || (v311 = *v310) == 0)
    {
LABEL_666:
      if (std::__hash_table<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,X::List<void({block_pointer})(CAFenceResolution *)> *>>>::find<unsigned int>(*&v478[0], *(&v478[0] + 1), v464))
      {
        goto LABEL_667;
      }

      goto LABEL_668;
    }

    while (2)
    {
      v312 = v311[1];
      if (v312 != v464)
      {
        if (v308.u32[0] > 1uLL)
        {
          if (v312 >= *(&v467 + 1))
          {
            v312 %= *(&v467 + 1);
          }
        }

        else
        {
          v312 &= *(&v467 + 1) - 1;
        }

        if (v312 != v309)
        {
          goto LABEL_666;
        }

        goto LABEL_665;
      }

      if (*(v311 + 4) != v464)
      {
LABEL_665:
        v311 = *v311;
        if (!v311)
        {
          goto LABEL_666;
        }

        continue;
      }

      break;
    }

    if (!v311[3])
    {
      goto LABEL_666;
    }

LABEL_667:
    kdebug_trace();
LABEL_668:
    if (*(&v447 + 1))
    {
      v175 = (v291 + v175);
      (***(&v447 + 1))(*(&v447 + 1));
    }

LABEL_670:
    if (v419)
    {
      x_heap_free(v419);
    }

    CA::Context::unref(v446, 1);
    v174 = v443;
LABEL_673:
    if (++v176 < v174)
    {
      continue;
    }

    break;
  }

LABEL_680:
  v316 = v410;
  if (v410)
  {
    os_unfair_lock_lock(&v410->_lock);
    v316->_invalidated = 1;
    os_unfair_lock_unlock(&v316->_lock);
  }

  for (mm = v473; mm; mm = *mm)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], *(mm + 4));
  }

  if (v175)
  {
    *&v172 = 67109378;
    v421 = v172;
    do
    {
      memset(v499, 0, 92);
      v318 = mach_msg(v499, 2, 0, 0x5Cu, v442, 0, 0);
      if (v318)
      {
        v319 = v318;
        if (x_log_get_api::once[0] != -1)
        {
          dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
        }

        v320 = x_log_get_api::log;
        if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
        {
          v321 = mach_error_string(v319);
          *v499 = v421;
          *&v499[4] = v319;
          *&v499[8] = 2080;
          *&v499[10] = v321;
          _os_log_error_impl(&dword_183AA6000, v320, OS_LOG_TYPE_ERROR, "Failed to receive sync coder reply [0x%x %s]", v499, 0x12u);
        }
      }

      LODWORD(v175) = v175 - 1;
    }

    while (v175);
  }

  if ((v442 - 1) <= 0xFFFFFFFD)
  {
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], v442, 1u, -1);
  }

  v322 = v483;
  if (v483)
  {
    *&v421 = &v491 + 8;
    v413 = v494;
    v418 = &v499[16];
    v419 = &v492;
    v415 = &v486;
    v416 = &v502;
    do
    {
      LODWORD(v450) = *(v322 + 4);
      v323 = v322[3];
      *v499 = &v450;
      v324 = std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v480, v450);
      if (v324[6])
      {
        std::__hash_table<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void (*)(CALayer *,CA::Render::Layer const*,CA::Render::Layer const*,std::string const&,ReverseSerializationState const&)>>>::__hash_table(&v456, v324 + 3);
        if (!v459)
        {
          __assert_rtn("activate", "render-fence.cpp", 310, "!in_pending.empty ()");
        }

        os_unfair_lock_lock(v323);
        if ((*(v323 + 28) & 1) == 0)
        {
          __assert_rtn("activate", "render-fence.cpp", 314, "_has_receive_right");
        }

        *&v464 = 0;
        *(&v464 + 1) = &v464;
        *&v465 = 0x2000000000;
        BYTE8(v465) = 0;
        *&v490 = 0;
        *(&v490 + 1) = &v490;
        *&v491 = 0x5002000000;
        *(&v491 + 1) = __Block_byref_object_copy__21682;
        v325 = v456;
        v326 = v457;
        v457 = 0;
        v456 = 0;
        v492 = __Block_byref_object_dispose__21683;
        v493[0] = v325;
        v493[1] = v326;
        v494[0] = v458;
        v496 = 0;
        v494[1] = v459;
        v495 = v460;
        if (v459)
        {
          v327 = *(v458 + 8);
          if ((v326 & (v326 - 1)) != 0)
          {
            if (v327 >= v326)
            {
              v327 %= v326;
            }
          }

          else
          {
            v327 &= v326 - 1;
          }

          *(v325 + 8 * v327) = v413;
          v458 = 0;
          v459 = 0;
        }

        v328 = *(v323 + 24);
        if (CA::Render::Fence::_observer_callback_queue(void)::onceToken != -1)
        {
          dispatch_once(&CA::Render::Fence::_observer_callback_queue(void)::onceToken, &__block_literal_global_21684);
        }

        v329 = CA::Render::Fence::_observer_callback_queue(void)::q;
        *&v461 = 0;
        *(&v461 + 1) = &v461;
        v462 = 0x2000000000uLL;
        v452 = 0.0;
        v453 = &v452;
        v454 = 0x2000000000;
        v455 = 0;
        *v499 = MEMORY[0x1E69E9820];
        *&v499[8] = 0x40000000;
        *&v499[16] = ___ZN2CA6Render5Fence11Transaction8Observer8activateENSt3__113unordered_setIyNS4_4hashIyEENS4_8equal_toIyEENS4_9allocatorIyEEEEPFvPS3_RKSC_djyEPFvSD_SF_jjEPFvSD_SF_E_block_invoke;
        *&v499[24] = &unk_1E6DF9DB0;
        *&v499[64] = v323;
        *&v499[32] = &v464;
        *&v499[40] = &v490;
        *&v499[72] = CA::fo_fences_released;
        *&v499[80] = CA::fo_completed;
        *&v499[48] = &v461;
        *&v499[56] = &v452;
        *&v499[88] = CA::fo_removed_context;
        *&v499[96] = v328;
        *(v323 + 8) = dispatch_mach_create();
        v330 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v329);
        *(v323 + 16) = v330;
        *&handler = MEMORY[0x1E69E9820];
        *(&handler + 1) = 0x40000000;
        *&v502 = ___ZN2CA6Render5Fence11Transaction8Observer8activateENSt3__113unordered_setIyNS4_4hashIyEENS4_8equal_toIyEENS4_9allocatorIyEEEEPFvPS3_RKSC_djyEPFvSD_SF_jjEPFvSD_SF_E_block_invoke_6;
        *(&v502 + 1) = &unk_1E6DF9DD8;
        v509 = v328;
        v503 = &v461;
        v504 = &v464;
        v507 = 0x3FE3333333333333;
        v508 = CA::fo_completed;
        v505 = &v490;
        v506 = v323;
        dispatch_source_set_event_handler(v330, &handler);
        v331 = dispatch_time(0, 600000000);
        dispatch_source_set_timer(*(v323 + 16), v331, 0xFFFFFFFFFFFFFFFFLL, 0);
        *(v323 + 28) = 0;
        *(*(&v461 + 1) + 24) = *(v323 + 8);
        v453[3] = *(v323 + 16);
        os_unfair_lock_unlock(v323);
        *&v485 = MEMORY[0x1E69E9820];
        *(&v485 + 1) = 0x40000000;
        *&v486 = ___ZN2CA6Render5Fence11Transaction8Observer8activateENSt3__113unordered_setIyNS4_4hashIyEENS4_8equal_toIyEENS4_9allocatorIyEEEEPFvPS3_RKSC_djyEPFvSD_SF_jjEPFvSD_SF_E_block_invoke_9;
        *(&v486 + 1) = &unk_1E6DF9E00;
        v489 = v328;
        v487 = &v461;
        v488 = &v452;
        dispatch_sync(v329, &v485);
        _Block_object_dispose(&v452, 8);
        _Block_object_dispose(&v461, 8);
        _Block_object_dispose(&v490, 8);
        std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v493);
        _Block_object_dispose(&v464, 8);
        std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v456);
      }

      else if (v323)
      {
        CA::Render::Fence::Transaction::Observer::~Observer(v323);
        MEMORY[0x1865EA9A0]();
      }

      v322 = *v322;
    }

    while (v322);
  }

  v332 = v400;
  if (v407)
  {
    memset(v499, 0, 32);
    *&v499[32] = 1065353216;
    v333 = mach_absolute_time();
    v334 = CATimeWithHostTime(v333);
    CA::Context::send_deferrals(0, 0, v499, 0, v334);
    std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v499);
  }

  for (nn = v476; nn; nn = *nn)
  {
    if (*(nn + 4))
    {
      v336 = 0;
    }

    else
    {
      v336 = v332;
    }

    v337 = nn[3];
    if (v337)
    {
      do
      {
        v338 = *v337;
        (*(*v337 + 16))(*v337, v336);
        _Block_release(v338);
        v337 = v337[1];
      }

      while (v337);
      v339 = nn[3];
      if (v339)
      {
        do
        {
          v340 = v339[1];
          free(v339);
          v339 = v340;
        }

        while (v340);
      }
    }
  }

  if (v420 != v497)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v420);
  }

LABEL_726:
  v341 = v417;
  v342 = *(v417 + 29);
  *(v417 + 29) = v342 + 1;
  if (!v342)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v343 = *(v341 + 12);
  v344 = v402;
  if (v343)
  {
    do
    {
      v345 = *v343;
      if (*v343)
      {
        [*(v345 + 16) layerDidBecomeVisible:(*(v345 + 52) >> 28) & 1];
        while (1)
        {
          v346 = *v345;
          if (!*v345)
          {
            break;
          }

          v347 = *v345;
          atomic_compare_exchange_strong(v345, &v347, v346 - 1);
          if (v347 == v346)
          {
            if (v346 == 1)
            {
              CA::Layer::destroy(v345);
              CA::Layer::~Layer(v345);
              if (x_malloc_get_zone::once != -1)
              {
                dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
              }

              malloc_zone_free(malloc_zone, v345);
            }

            break;
          }
        }
      }

      v343 = v343[1];
    }

    while (v343);
    v341 = v417;
    v348 = *(v417 + 12);
    if (v348)
    {
      do
      {
        v349 = v348[1];
        free(v348);
        v348 = v349;
      }

      while (v349);
    }

    *(v341 + 12) = 0;
  }

  CA::Transaction::unlock(v341);
  if (!v344)
  {
    CA::Transaction::run_commit_handlers(v341, 3u);
    CA::Transaction::run_commit_handlers(v417, 1u);
    v341 = v417;
    v350 = *(v417 + 15);
    if (*(v350 + 16))
    {
      v351 = *(v350 + 16);
      if (v351)
      {
        v352 = 0;
        do
        {
          v353 = v351;
          v351 = *v351;
          *v353 = v352;
          v352 = v353;
        }

        while (v351);
      }

      else
      {
        v353 = 0;
      }

      *(v341 + 2) = v353;
      *(v350 + 16) = 0;
    }
  }

  CA::Transaction::run_commit_handlers(v341, 2u);
  v356 = v417;
  v357 = *(v417 + 15);
  v358 = *(v357 + 104);
  if (!v358)
  {
    if (!HIDWORD(v442))
    {
      goto LABEL_757;
    }

LABEL_754:
    abort();
  }

  *(v357 + 104) = 0;
  v359 = *(*(v356 + 15) + 200);
  v430[0] = MEMORY[0x1E69E9820];
  v430[1] = 3221225472;
  v430[2] = ___ZN2CA7Context18commit_transactionEPNS_11TransactionEdPd_block_invoke_16;
  v430[3] = &__block_descriptor_44_e5_v8__0l;
  v431 = v359;
  v430[4] = v358;
  if (HIDWORD(v442) && v414)
  {
    *&handler = 0;
    *(&handler + 1) = &handler;
    *&v502 = 0x2020000000;
    DWORD2(v502) = v414;
    *v499 = 0;
    *&v499[8] = v499;
    *&v499[16] = 0x3052000000;
    *&v499[24] = __Block_byref_object_copy_;
    *&v499[32] = __Block_byref_object_dispose_;
    *&v499[40] = 0;
    v422 = MEMORY[0x1E69E9820];
    v423 = 3221225472;
    v424 = ___ZN2CA7Context18commit_transactionEPNS_11TransactionEdPd_block_invoke_2_19;
    v425 = &unk_1E6DEDB60;
    v426 = v430;
    p_handler = &handler;
    v428 = v499;
    v429 = HIDWORD(v442);
    v360 = dispatch_mach_create();
    *(*&v499[8] + 40) = v360;
    dispatch_set_qos_class_floor(v360, QOS_CLASS_USER_INTERACTIVE, 0);
    dispatch_mach_connect();
    _Block_object_dispose(v499, 8);
    _Block_object_dispose(&handler, 8);
  }

  else
  {
    global_queue = dispatch_get_global_queue(33, 0);
    dispatch_async(global_queue, v430);
    v354 = HIDWORD(v442);
    if (HIDWORD(v442))
    {
      mach_port_mod_refs(*MEMORY[0x1E69E9A60], HIDWORD(v442), 1u, -1);
    }
  }

LABEL_757:
  v362 = *(&v446 + 1);
  v363 = v401;
  if (*(&v446 + 1) == 0.0)
  {
    v364 = mach_absolute_time();
    v362 = CATimeWithHostTime(v364);
    *(&v446 + 1) = v362;
  }

  CA::Layer::set_next_animation_time(v356, v354, v362, *&v447, v355);
  v365 = *(&v446 + 1);
  v366 = CAGetStatsStruct(0);
  ++v366[4];
  CAMarkStatistic(v366, v365);
  if (buffer_list)
  {
    v370 = 0;
    atomic_compare_exchange_strong(&pending_async_collect, &v370, 1u);
    if (!v370)
    {
      CA::DispatchGroup::enqueue(v367, v368, v369);
    }
  }

  v371 = *(&v446 + 1);
  if (CA::CG::Queue::_queue && *&CA::CG::Queue::_next_collection <= *(&v446 + 1))
  {
    *&CA::CG::Queue::_next_collection = *(&v446 + 1) + 0.2;
    dispatch_async_f(CA::CG::Queue::_queue, 0, CA::CG::Queue::collect_callback);
    v371 = *(&v446 + 1);
  }

  *v363 = v371;
  v372 = v443;
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v467);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v470);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v472);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v475);
  std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>>>::~__hash_table(v478);
  std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>>>::~__hash_table(v480);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v482);
  return v372;
}

void sub_183B196E4(_Unwind_Exception *a1)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,unsigned int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,unsigned int>>,void *>>>>::~unique_ptr[abi:nn200100](v1 + 1536);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v1 + 752);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v1 + 1136);
  std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>>>::~__hash_table(v1 + 1200);
  objc_autoreleasePoolPop(v2);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v1 + 800);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v1 + 848);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v1 + 896);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v1 + 944);
  std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>>>::~__hash_table(v1 + 992);
  std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_set<unsigned long long>>>>::~__hash_table(v1 + 1040);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v1 + 1088);
  _Unwind_Resume(a1);
}

CA::Render::Object *CA::Render::Handle::set_update_flags(CA::Render::Object *this, uint64_t a2)
{
  if ((a2 & 0x200000000000003FLL) != 0)
  {
    v2 = a2 & 0x200000000000003FLL | *(this + 13);
    *(this + 13) = v2 | 0x100000000000;
    v3 = *(this + 3);
    if (v3)
    {
      v4 = v2 & 0x2000000000000000 | 0x100000000020;
      do
      {
        this = CA::Render::Context::lookup_handle(v3, *(this + 4), 0, 0, 0);
        if (!this)
        {
          break;
        }

        v5 = *(this + 13);
        if ((v4 & ~v5) == 0)
        {
          break;
        }

        *(this + 13) = v5 | v4;
        v3 = *(this + 3);
      }

      while (v3);
    }
  }

  return this;
}

CA::Render::Object *CA::Render::Context::lookup_handle(CA::Render::Context *this, CA::Render::Object *a2, int a3, int a4, unsigned int *a5)
{
  v8 = (this + 136);
  v9 = ((a2 ^ 0x8000000000000000) + ~(a2 << 32)) ^ (((a2 ^ 0x8000000000000000) + ~(a2 << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = *(this + 17) + 8 * (*(this + 37) & ((v11 >> 31) ^ v11));
  do
  {
    v12 = *v12;
    if (!v12)
    {
      if (a5)
      {
        *a5 = 0;
      }

LABEL_17:
      if (a4)
      {
        goto LABEL_18;
      }

      return 0;
    }
  }

  while (*(v12 + 8) != (a2 ^ 0x8000000000000000));
  if (a5)
  {
    *a5 = *(v12 + 24);
  }

  if (a3)
  {
    *(v12 + 24) = a3;
  }

  v13 = *(v12 + 16);
  if (!v13)
  {
    goto LABEL_17;
  }

  v14 = v13[12];
  if (v14 == 22)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v14 == 22 || (a4 & 1) == 0)
  {
    return v15;
  }

LABEL_18:
  if ((*(this + 13) & 4) != 0)
  {
    return 0;
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v16 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x88uLL, 0xDEEC3011uLL);
  v15 = v16;
  if (v16)
  {
    *(v16 + 2) = 1;
    *(v16 + 3) = 22;
    ++dword_1ED4EAA90;
    *v16 = &unk_1EF1FBDA0;
    *(v16 + 9) = 0;
    *(v16 + 10) = 0;
    *(v16 + 15) = 0;
    *(v16 + 16) = 0;
    *(v16 + 2) = 0;
    *(v16 + 3) = this;
    v17 = v8;
    v18 = a2;
    v19 = a3;
    v20 = v15;
  }

  else
  {
    MEMORY[0x18] = this;
    v17 = v8;
    v18 = a2;
    v19 = a3;
    v20 = 0;
  }

  CA::Render::Context::ResourceTable::insert(v17, v18, v19, v20);
  return v15;
}

uint64_t ensure_displays(void)
{
  v9 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&_displays_mutex);
  if ((displays_up_to_date & 1) == 0)
  {
    query_displays();
    displays_up_to_date = 1;
  }

  if ([_displays count] && (initialized & 1) == 0)
  {
    out_token = 0;
    v0 = notify_register_dispatch("com.apple.CoreAnimation.CAWindowServer.DisplayChanged", &out_token, MEMORY[0x1E69E96A0], &__block_literal_global_977);
    if (v0)
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v1 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v8 = v0;
        _os_log_error_impl(&dword_183AA6000, v1, OS_LOG_TYPE_ERROR, "Failed to register for CADisplay change notifications: 0x%x", buf, 8u);
      }
    }

    v5 = 0;
    if (CA::Display::display_queue(void)::once != -1)
    {
      dispatch_once(&CA::Display::display_queue(void)::once, &__block_literal_global_995);
    }

    v2 = notify_register_dispatch("com.apple.CoreAnimation.CAWindowServer.DisplayPower", &v5, CA::Display::display_queue(void)::queue, &__block_literal_global_981);
    if (v2)
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v3 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v8 = v2;
        _os_log_error_impl(&dword_183AA6000, v3, OS_LOG_TYPE_ERROR, "Failed to register for CADisplay power notifications: 0x%x", buf, 8u);
      }
    }

    CA::Render::add_observer(0x31u, 0, will_suspend_callback, 0, 0);
    initialized = 1;
  }

  return pthread_mutex_unlock(&_displays_mutex);
}

CAMediaTimingFunctionBuiltin *builtin_function(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  result = functions[a1];
  if (!result)
  {
    result = objc_alloc_init(CAMediaTimingFunctionBuiltin);
    result->_index = a1;
    functions[a1] = result;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(*a1);
    std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void *std::__hash_table<std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::__unordered_map_hasher<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::hash<CA::Render::Object *>,std::equal_to<CA::Render::Object *>,true>,std::__unordered_map_equal<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::equal_to<CA::Render::Object *>,std::hash<CA::Render::Object *>,true>,std::allocator<std::__hash_value_type<CA::Render::Object *,x_link_struct>>>::find<CA::Render::Object *>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
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

void display_timer_callback(__CFMachPort *a1, void *a2, uint64_t a3, char *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v6 = mach_absolute_time();
  pthread_mutex_lock((a4 + 16));
  kdebug_trace();
  v7 = *(a4 + 29);
  *(a4 + 28) = CAHostTimeWithTime(0.0005) + v7;
  if (v6 <= v7)
  {
    v9 = a4 + 201;
  }

  else
  {
    v8 = CATimeWithHostTime(v6 - v7);
    v9 = a4 + 201;
    if (a4[201] == 1)
    {
      v10 = v8;
      if (v8 > 1.0)
      {
        if (x_log_get_windowserver(void)::once != -1)
        {
          dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
        }

        v11 = x_log_get_windowserver(void)::log;
        if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v10;
          _os_log_impl(&dword_183AA6000, v11, OS_LOG_TYPE_DEFAULT, "Timer delayed by %.2fs", &buf, 0xCu);
        }
      }
    }
  }

  v12 = *(a4 + 27);
  v13 = v6 - *(a4 + 29) + *(a4 + 30);
  if (v13 < 0 || v13 > v12)
  {
    if (*v9 == 1 && v13 > v12)
    {
      v14 = 0;
      v6 -= v12;
    }

    else
    {
      v14 = v12 >> 2;
    }
  }

  else
  {
    v14 = *(a4 + 32) >> 2;
    v6 = *(a4 + 29);
  }

  v15 = v6 - v14;
  v16 = *(a4 + 33);
  *&buf = 0;
  *(&buf + 1) = v16;
  v29 = v12;
  v27 = 0;
  phase = get_phase(&buf, v15, &v27);
  v18 = v15 - phase + v27;
  if (!phase)
  {
    v18 = v15;
  }

  *(a4 + 29) = v18 + v12;
  mk_timer_cancel();
  a4[200] = 1;
  v19 = *(a4 + 31);
  if (*(a4 + 29) <= v19)
  {
    v19 = 0;
  }

  *(a4 + 30) = v19;
  mk_timer_arm_leeway();
  a4[200] = 0;
  v20 = *(a4 + 24);
  if (v20)
  {
    v20(a4, 1, *(a4 + 29), *(a4 + 27), *(a4 + 23));
  }

  v21 = *(a4 + 33);
  if (*(a4 + 32))
  {
    v22 = *(a4 + 32);
  }

  else
  {
    v22 = v12;
  }

  v24 = *(a4 + 18);
  v23 = *(a4 + 19);
  v25 = *(a4 + 20);
  v26 = *(a4 + 21);
  if (v25)
  {
    v23 = v25(*(a4 + 19));
  }

  pthread_mutex_unlock((a4 + 16));
  if (v24)
  {
    v24(a4, v6, v12, (v6 - v21) / v22 % 0xF0, v23);
  }

  if (v26)
  {
    v26(v23);
  }

  objc_autoreleasePoolPop(v5);
}

unint64_t CAHostTimeWithTime(double a1)
{
  if (*&time_scale == 0.0 && time_scale_once[0] != -1)
  {
    v2 = a1;
    dispatch_once_f(time_scale_once, 0, initialize_time_scale);
    a1 = v2;
  }

  return (*&recip_time_scale * a1 + 0.5);
}

uint64_t CA::Mat4Impl::mat4_invert(CA::Mat4Impl *this, float64x2_t *a2, const double *a3)
{
  is_affine = CA::Mat4Impl::mat4_is_affine(a2, a2->f64);
  v6 = *a2;
  if (!is_affine)
  {
    v19 = vextq_s8(v6, v6, 8uLL);
    v21 = a2[1];
    v20 = a2[2];
    v22 = vextq_s8(v21, v21, 8uLL);
    v24 = a2[3];
    v23 = a2[4];
    v26 = a2[5];
    v25 = a2[6];
    _Q26 = a2[7];
    v28 = vzip1q_s64(v26, v24);
    v29 = vzip2q_s64(v26, v24);
    v30 = vmlaq_laneq_f64(vnegq_f64(vmulq_n_f64(v29, _Q26.f64[0])), v28, _Q26, 1);
    v31 = vmulq_f64(vextq_s8(v26, v26, 8uLL), v24);
    v32 = vsubq_f64(v31, vdupq_laneq_s64(v31, 1));
    v33 = vmlaq_n_f64(vmlaq_n_f64(vnegq_f64(vmulq_laneq_f64(v23, v30, 1)), v20, v30.f64[0]), v25, v32.f64[0]);
    v34 = vmlaq_laneq_f64(vnegq_f64(vmulq_laneq_f64(v26, v25, 1)), _Q26, v23, 1);
    v35 = vmlaq_laneq_f64(vnegq_f64(vmulq_laneq_f64(v24, v25, 1)), _Q26, v20, 1);
    v36 = vmlaq_laneq_f64(vnegq_f64(vmulq_laneq_f64(v24, v23, 1)), v26, v20, 1);
    v37 = vmlaq_n_f64(vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v35, v23.f64[0])), v34, v20.f64[0]), v36, v25.f64[0]);
    v38 = vmlaq_f64(vmulq_f64(v37, v22), v19, v33);
    v39 = vsubq_f64(vdupq_laneq_s64(v38, 1), v38).f64[0];
    if (v39 != 0.0)
    {
      v41 = 1.0 / v39;
      _D30 = a2->f64[1];
      v43 = vmulq_f64(_Q26, v19).f64[0] - v21.f64[0] * v25.f64[1];
      __asm { FMLA            D23, D30, V26.D[1] }

      v49 = -(vmulq_f64(_Q26, v22).f64[0] - _Q26.f64[1] * v21.f64[0]);
      *this = vmuld_lane_f64(v41, v33, 1);
      v50.f64[0] = -v41;
      v51 = vmlaq_n_f64(vnegq_f64(vmulq_laneq_f64(v28, v21, 1)), v29, v21.f64[0]);
      v52 = vzip1q_s64(v20, v23);
      v53 = vmulq_f64(v51, v52);
      *&v53.f64[0] = *&vsubq_f64(vmlaq_f64(vdupq_laneq_s64(v53, 1), v6, v32), v53);
      v54 = vmulq_f64(v51, vzip2q_s64(v20, v23));
      v55 = v54.f64[1] + v32.f64[0] * v6.f64[1] - v54.f64[0];
      v56 = vzip2q_s64(v23, v20);
      v57 = vdupq_lane_s64(*&v33.f64[0], 0);
      v57.f64[0] = v55;
      v58 = vmulq_n_f64(v57, -v41);
      v57.f64[0] = v41;
      v57.f64[1] = -v41;
      v59 = vmlaq_laneq_f64(vnegq_f64(vmulq_laneq_f64(v56, v21, 1)), v29, v6, 1);
      v60 = vmulq_f64(v59, v52);
      *&v61 = *&vsubq_f64(vdupq_laneq_s64(vmlaq_f64(v60, v19, v36), 1), v60);
      v62 = vdupq_lane_s64(*&v37.f64[0], 0);
      v62.f64[0] = v61;
      v63 = vmulq_n_f64(v62, -v41);
      v50.f64[1] = v41;
      *(this + 8) = vmulq_f64(vmlsq_lane_f64(vmlaq_laneq_f64(vmulq_laneq_f64(v51, v25, 1), v30, v6, 1), v56, v49, 0), v50);
      *(this + 24) = v58;
      v64 = vzip1q_s64(v23, v20);
      v53.f64[1] = v37.f64[1];
      *(this + 40) = vmulq_f64(vmlsq_lane_f64(vmlaq_n_f64(vmulq_n_f64(v51, v25.f64[0]), v30, v6.f64[0]), v64, v49, 0), v57);
      *(this + 56) = vmulq_n_f64(v53, v41);
      *(this + 72) = vmulq_f64(vmlsq_lane_f64(vmlaq_n_f64(vmulq_n_f64(v59, v25.f64[0]), vzip2q_s64(v34, v35), v6.f64[0]), v64, _D23, 0), v50);
      *(this + 88) = v63;
      v65 = vmlaq_laneq_f64(vnegq_f64(vmulq_n_f64(v56, v21.f64[0])), v28, v6, 1);
      *(this + 104) = vmulq_f64(vmlsq_lane_f64(vmlaq_n_f64(vmulq_n_f64(v65, v25.f64[0]), vzip1q_s64(v34, v35), v6.f64[0]), v64, v43, 0), v57);
      v6.f64[0] = v41 * vmlsq_f64(vmlaq_f64(vmulq_laneq_f64(v23, v65, 1), v6, v36), v20, v65).f64[0];
      v18 = 120;
      goto LABEL_7;
    }

    return 0;
  }

  v7 = a2[2].f64[0];
  v8.f64[0] = a2[2].f64[1];
  v9 = -(vmuld_lane_f64(v7, v6, 1) - v8.f64[0] * v6.f64[0]);
  if (v9 == 0.0)
  {
    return 0;
  }

  v11 = a2[6].f64[0];
  v10 = a2[6].f64[1];
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  *this = v6;
  *(this + 1) = v12;
  *(this + 2) = v13;
  *(this + 3) = v14;
  v15 = a2[5];
  v16 = a2[7];
  *(this + 4) = a2[4];
  *(this + 5) = v15;
  *(this + 7) = v16;
  v15.f64[1] = v6.f64[1];
  v15.f64[0] = 1.0 / v9;
  v8.f64[1] = -(1.0 / v9);
  v17 = vmulq_f64(v15, v8);
  *this = v17;
  v6.f64[0] = 1.0 / v9 * v6.f64[0];
  *(this + 4) = -(1.0 / v9 * v7);
  *(this + 5) = *&v6.f64[0];
  *(this + 12) = -(v11 * v17.f64[0] - 1.0 / v9 * v7 * v10);
  v6.f64[0] = -(v10 * v6.f64[0] - 1.0 / v9 * v6.f64[1] * v11);
  v18 = 104;
LABEL_7:
  *(this + v18) = v6.f64[0];
  return 1;
}

float64x2_t CA::Mat4Impl::mat4_unapply_inverse_to_point2(float64x2_t *this, double *a2, double *a3)
{
  v3 = a2[1];
  v4 = -(this[7].f64[0] + this[1].f64[0] * *a2 + this[3].f64[0] * v3) / this[5].f64[0];
  v5 = this[7].f64[1] + this[1].f64[1] * *a2 + this[3].f64[1] * v3 + this[5].f64[1] * v4;
  if (fabs(v5 + -1.0) >= 0.000001)
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

  result = vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(this[6], *this, *a2), this[2], v3), this[4], v4), v5);
  *a2 = result;
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

float64x2_t CA::Mat4Impl::mat4_apply_to_point2(float64x2_t *this, double *a2, double *a3)
{
  v3 = a2[1];
  v4 = this[7].f64[1] + this[1].f64[1] * *a2 + this[3].f64[1] * v3;
  if (fabs(v4 + -1.0) >= 0.000001)
  {
    if (v4 <= 0.0)
    {
      v4 = INFINITY;
    }

    else
    {
      v4 = 1.0 / v4;
    }
  }

  result = vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(this[6], *this, *a2), this[2], v3), v4);
  *a2 = result;
  return result;
}

int8x16_t CA::Mat4Impl::mat4_apply_to_rect(float64x2_t *this, int8x16_t *a2, double *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *a2[1].i64;
  result.i64[0] = a2[1].i64[1];
  if (v4 <= *result.i64)
  {
    v5 = *&a2[1].i64[1];
  }

  else
  {
    v5 = *a2[1].i64;
  }

  if (v5 < 1.79769313e308)
  {
    v8 = 0;
    v9 = *&a2->i64[1];
    *&v18.f64[0] = a2->i64[0];
    v18.f64[1] = v9;
    v19.f64[0] = v4 + v18.f64[0];
    v19.f64[1] = v9;
    v20.f64[0] = v4 + v18.f64[0];
    v20.f64[1] = *result.i64 + v9;
    v21.i64[0] = *&v18.f64[0];
    *&v21.i64[1] = *result.i64 + v9;
    do
    {
      CA::Mat4Impl::mat4_apply_to_point2(this, &v18.f64[v8], a3);
      v8 += 2;
    }

    while (v8 != 8);
    v10 = vbslq_s8(vcgtq_f64(v19, v18), v18, v19);
    v11 = vbslq_s8(vcgtq_f64(v21, v20), v20, v21);
    v12 = vbslq_s8(vcgtq_f64(v11, v10), v10, v11);
    v13 = vbslq_s8(vcgtq_f64(v18, v19), v18, v19);
    v14 = vbslq_s8(vcgtq_f64(v20, v21), v20, v21);
    v15 = vcgtq_f64(v13, v14);
    v16 = vsubq_f64(vbslq_s8(v15, v13, v14), v12);
    *&v14.f64[0] = COERCE_UNSIGNED_INT64(vaddvq_f64(v16)) & 0x7FFFFFFFFFFFFFFFLL;
    v15.i64[0] = 0x7FF0000000000000;
    v17 = vdupq_lane_s64(vcgtq_s64(v15, v14).i64[0], 0);
    result = vbslq_s8(v17, v16, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL));
    *a2 = vbslq_s8(v17, v12, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL));
    a2[1] = result;
  }

  return result;
}

double CATimeWithHostTime(unint64_t a1)
{
  v1 = &CADisplayTimerGetTypeID::type;
  v2 = *&time_scale;
  if (*&time_scale == 0.0)
  {
    if (time_scale_once[0] != -1)
    {
      v4 = a1;
      dispatch_once_f(time_scale_once, 0, initialize_time_scale);
      v1 = &CADisplayTimerGetTypeID::type;
      a1 = v4;
    }

    v2 = *(v1 + 284);
  }

  return v2 * a1;
}

uint64_t x_heap_malloc_small_(uint64_t *a1, unint64_t a2)
{
  v4 = a1[2];
  if (v4 < a2)
  {
    v5 = malloc_type_malloc(a1[3], 0x100004077774924uLL);
    v6 = a1[3];
    a1[1] = v5;
    a1[2] = v6;
    *a1 = x_list_prepend(*a1, v5);
    v4 = a1[2];
  }

  result = a1[1];
  a1[1] = result + a2;
  a1[2] = v4 - a2;
  return result;
}

float64x2_t CA::Mat4Impl::mat4_concat(float64x2_t *this, double *a2, const double *a3, const double *a4)
{
  v4 = *(a2 + 2);
  v5 = *(a2 + 4);
  v6 = *(a2 + 6);
  v7 = *(a2 + 8);
  v8 = *(a2 + 10);
  v10 = *(a2 + 12);
  result = *(a2 + 14);
  v11 = *(a3 + 2);
  v12 = *(a3 + 4);
  v13 = *(a3 + 6);
  v14 = vmlaq_laneq_f64(vmulq_n_f64(*a3, v5.f64[0]), v12, v5, 1);
  v15 = vmlaq_laneq_f64(vmulq_n_f64(v11, v5.f64[0]), v13, v5, 1);
  v16 = *(a3 + 8);
  v17 = *(a3 + 10);
  v18 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*a3, *a2), v12, *a2, 1), v16, v4.f64[0]);
  v19 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v11, *a2), v13, *a2, 1), v17, v4.f64[0]);
  v20 = vmlaq_n_f64(v14, v16, v6.f64[0]);
  v21 = vmlaq_n_f64(v15, v17, v6.f64[0]);
  v22 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*a3, v7.f64[0]), v12, v7, 1), v16, v8.f64[0]);
  v23 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v11, v7.f64[0]), v13, v7, 1), v17, v8.f64[0]);
  v24 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*a3, v10.f64[0]), v12, v10, 1), v16, result.f64[0]);
  v25 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v11, v10.f64[0]), v13, v10, 1), v17, result.f64[0]);
  v26 = *(a3 + 12);
  v27 = *(a3 + 14);
  *this = vmlaq_laneq_f64(v18, v26, v4, 1);
  this[1] = vmlaq_laneq_f64(v19, v27, v4, 1);
  this[2] = vmlaq_laneq_f64(v20, v26, v6, 1);
  this[3] = vmlaq_laneq_f64(v21, v27, v6, 1);
  this[4] = vmlaq_laneq_f64(v22, v26, v8, 1);
  this[5] = vmlaq_laneq_f64(v23, v27, v8, 1);
  this[6] = vmlaq_laneq_f64(v24, v26, result, 1);
  this[7] = vmlaq_laneq_f64(v25, v27, result, 1);
  return result;
}

CA::WindowServer::Display::ModeSet *CA::WindowServer::Display::ModeSet::ModeSet(int8x8_t *this, const CA::WindowServer::Display::ModeSet *a2)
{
  v33[1] = *MEMORY[0x1E69E9840];
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  v4 = *(a2 + 1);
  if (v4 != *a2)
  {
    std::vector<CA::WindowServer::Display::Mode>::__vallocate[abi:nn200100](this, (v4 - *a2) >> 3);
  }

  this[4] = 0;
  v5 = this + 4;
  this[3] = &this[4];
  v6 = this + 3;
  this[5] = 0;
  v7 = *(a2 + 3);
  v8 = a2 + 32;
  if (v7 != a2 + 32)
  {
    do
    {
      v33[0] = 0;
      v9 = *v5;
      v10 = this + 4;
      if (*v6 == v5)
      {
        goto LABEL_21;
      }

      v11 = *v5;
      v12 = this + 4;
      if (v9)
      {
        do
        {
          v10 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        do
        {
          v10 = v12[2];
          v15 = *v10 == v12;
          v12 = v10;
        }

        while (v15);
      }

      v13 = v10[3].u16[1];
      v14 = *(v7 + 13);
      v15 = v13 == v14;
      if (v13 >= v14)
      {
        v16 = 1;
      }

      else
      {
        v16 = -1;
      }

      if (v15)
      {
        v17 = v10[3].u16[2];
        v18 = *(v7 + 14);
        v19 = v17 == v18;
        v16 = v17 >= v18 ? 1 : -1;
        if (v19)
        {
          v16 = 0;
        }
      }

      if (v16 < 0)
      {
LABEL_21:
        if (v9)
        {
          v33[0] = v10;
          v20 = &v10[1];
        }

        else
        {
          v33[0] = this + 4;
          v20 = &this[4];
        }
      }

      else
      {
        v20 = std::__tree<std::tuple<unsigned short,unsigned short>>::__find_equal<std::tuple<unsigned short,unsigned short>>(&this[3], v33, v14, *(v7 + 14));
      }

      if (!*v20)
      {
        operator new();
      }

      v21 = *(v7 + 1);
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = *(v7 + 2);
          v15 = *v22 == v7;
          v7 = v22;
        }

        while (!v15);
      }

      v7 = v22;
    }

    while (v22 != v8);
  }

  *this[6].i8 = 0u;
  *this[8].i8 = 0u;
  this[10].i32[0] = *(a2 + 20);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__rehash<true>(&this[6], *(a2 + 7));
  v32 = a2;
  for (i = *(a2 + 8); i; i = *i)
  {
    v24 = i[2];
    v25 = this[7];
    if (!*&v25)
    {
      goto LABEL_50;
    }

    v26 = vcnt_s8(v25);
    v26.i16[0] = vaddlv_u8(v26);
    if (v26.u32[0] > 1uLL)
    {
      v27 = i[2];
      if (v24 >= *&v25)
      {
        v27 = v24 % *&v25;
      }
    }

    else
    {
      v27 = (*&v25 - 1) & v24;
    }

    v28 = *(*&this[6] + 8 * v27);
    if (!v28 || (v29 = *v28) == 0)
    {
LABEL_50:
      operator new();
    }

    while (1)
    {
      v30 = v29[1];
      if (v30 == v24)
      {
        break;
      }

      if (v26.u32[0] > 1uLL)
      {
        if (v30 >= *&v25)
        {
          v30 %= *&v25;
        }
      }

      else
      {
        v30 &= *&v25 - 1;
      }

      if (v30 != v27)
      {
        goto LABEL_50;
      }

LABEL_49:
      v29 = *v29;
      if (!v29)
      {
        goto LABEL_50;
      }
    }

    if (v29[2] != v24)
    {
      goto LABEL_49;
    }
  }

  this[11].i32[0] = *(v32 + 22);
  return this;
}

void sub_183B1B638(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v2);
  std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(*(v1 + 32));
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CA::WindowServer::Display::Mode>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
}

void std::vector<CA::WindowServer::Display::Mode>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CA::WindowServer::Display::Mode>>(a2);
  }

  std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
}

void std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

id create_mode(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  v7 = [MEMORY[0x1E695DF70] array];
  if (a3)
  {
    v14 = 0;
    v15 = 0;
    CA::WindowServer::Display::ModeSet::get_per_mode_info(a3, a2, &v14);
    HIDWORD(v15) = *(a3 + 88);
    v8 = v14;
    v9 = v15;
  }

  else
  {
    os_unfair_lock_lock(v6 + 18);
    v14 = 0;
    v15 = 0;
    CA::WindowServer::Display::ModeSet::get_per_mode_info(&v6[38], a2, &v14);
    HIDWORD(v15) = v6[60];
    v8 = v14;
    v9 = v15;
    os_unfair_lock_unlock(v6 + 18);
  }

  v10 = [CADisplayMode _displayModeWithMode:a2 display:a1 rates:v7 perMode:v8 maxSourceBandwidthPerPipe:v9, HIDWORD(v9)];
  if (a2 == -1)
  {
    os_unfair_lock_lock(v6 + 18);
    os_unfair_lock_opaque = v6[68]._os_unfair_lock_opaque;
    v12 = v6[69]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v6 + 18);
    [v10 _setWidth:os_unfair_lock_opaque height:v12];
  }

  [v10 _setPreferredUIScale:v6[110]._os_unfair_lock_opaque];
  return v10;
}

uint64_t CA::WindowServer::Display::ModeSet::get_per_mode_info(uint64_t this, unint64_t a2, PerModeInfo *a3)
{
  v3 = *(this + 56);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = a2;
      if (v3 <= a2)
      {
        v5 = a2 % v3;
      }
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*(this + 48) + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (i[2] == a2)
          {
            v9 = i[3];
            *&a3->var2 = *(i + 8);
            *&a3->var0 = v9;
            return this;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v3)
            {
              v8 %= v3;
            }
          }

          else
          {
            v8 &= v3 - 1;
          }

          if (v8 != v5)
          {
            break;
          }
        }
      }
    }
  }

  *&a3->var2 = 0;
  *&a3->var0 = 0;
  return this;
}

void CA::Display::Display::available_modes(int8x8_t *this, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 18);
  CA::WindowServer::Display::ModeSet::ModeSet(this, &a2[38]);

  os_unfair_lock_unlock(a2 + 18);
}

CFTypeRef CA::Display::Display::retain_uuid(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 18);
  v2 = *&this[32]._os_unfair_lock_opaque;
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(this + 18);
  return v3;
}

uint64_t CA::WindowServer::IOMFBServer::vsync_callback(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v42 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a5 + 856));
  if (BYTE11(xmmword_1ED4E980C) == 1)
  {
    CA::WindowServer::IOMFBDisplay::emit_server_timing_info(*(a5 + 96));
  }

  v8 = CATimeWithHostTime(a3);
  (*(*a5 + 528))(a5, v8);
  *(a5 + 1352) = a3;
  if (*(a5 + 1344) > a3)
  {
    *(a5 + 1446) |= 1u;
    if (BYTE11(xmmword_1ED4E980C) == 1)
    {
      kdebug_trace();
    }

    return pthread_mutex_unlock((a5 + 856));
  }

  CA::WindowServer::IOMFBDisplay::wait_for_relbuf_info(*(a5 + 96), a3);
  kdebug_trace();
  v10 = *(a5 + 96);
  if ((*(v10 + 640) & 0x100) != 0 && byte_1ED4E9846 == 1)
  {
    os_unfair_lock_lock((v10 + 28296));
    os_unfair_lock_lock((v10 + 28244));
    v36.tv_sec = 0;
    v36.tv_nsec = 0;
    *&v37 = 0;
    X::Stream::printf(&v36, "Frame Rate Requests %ld\n", 0xAAAAAAAAAAAAAAABLL * ((*(v10 + 28256) - *(v10 + 28248)) >> 3));
    v24 = *(v10 + 28248);
    for (i = *(v10 + 28256); v24 != i; v24 += 24)
    {
      if ((*(v24 + 20) & 2) != 0)
      {
        v26 = " compat";
      }

      else
      {
        v26 = "";
      }

      if (*(v24 + 20))
      {
        v27 = " suspended";
      }

      else
      {
        v27 = "";
      }

      X::Stream::printf(&v36, "%s[%d]: %u %u %u %s%s\n", "", *v24, *(v24 + 8), *(v24 + 12), *(v24 + 16), v26, v27);
    }

    X::Stream::printf(&v36, "\nFrame Rate Reasons %ld\n", 0x6DB6DB6DB6DB6DB7 * ((*(v10 + 28312) - *(v10 + 28304)) >> 2));
    v28 = *(v10 + 28304);
    for (j = *(v10 + 28312); v28 != j; v28 += 28)
    {
      X::Stream::printf(&v36, "[%d]: ", *v28);
      for (k = 8; k != 24; k += 4)
      {
        if (!*(v28 + k))
        {
          break;
        }

        X::Stream::printf(&v36, "%u'%u ", HIWORD(*(v28 + k)), *(v28 + k));
      }

      v31 = "";
      if (*(v28 + 24))
      {
        v31 = "suspended";
      }

      X::Stream::printf(&v36, "%s\n", v31);
    }

    v32 = x_stream_finish(&v36);
    if (v32)
    {
      v33 = v32;
      if (x_log_get_frame_rate(void)::once != -1)
      {
        dispatch_once(&x_log_get_frame_rate(void)::once, &__block_literal_global_20391);
      }

      v34 = x_log_get_frame_rate(void)::log;
      if (os_log_type_enabled(x_log_get_frame_rate(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(v10 + 29573);
        *buf = 136315394;
        *&buf[4] = v33;
        *&buf[12] = 1024;
        *&buf[14] = v35;
        _os_log_impl(&dword_183AA6000, v34, OS_LOG_TYPE_DEFAULT, "CAFrameRateServer: post_frame_rate_log\n%s\nserver_source_compat_quanta_mode: %i\n", buf, 0x12u);
      }

      free(v33);
    }

    os_unfair_lock_unlock((v10 + 28244));
    os_unfair_lock_unlock((v10 + 28296));
  }

  if (fabs(*(a5 + 1184)) == INFINITY && *(a5 + 1440) && atomic_fetch_add((a5 + 1440), 0xFFFFFFFF) == 1)
  {
    CA::WindowServer::IOMFBServer::set_vsync_disabled(a5);
    (*(**(a5 + 96) + 432))(*(a5 + 96));
  }

  pthread_mutex_unlock((a5 + 856));
  v11 = a4 + a3;
  v12 = CATimeWithHostTime(a4 + a3);
  v13 = *(a5 + 96);
  if (atomic_load(CA::WindowServer::IOMFBDisplay::_latching_vsync))
  {
    atomic_fetch_add(CA::WindowServer::IOMFBDisplay::_latching_vsync, 0xFFu);
LABEL_29:
    v21 = *(v13 + 24);
    v22 = atomic_load(&CA::WindowServer::IOMFBDisplay::_fastest_display_id);
    if (v21 == v22)
    {
      if (CA::WindowServer::IOMFBDisplay::hint_agx_timing(unsigned long long,unsigned long long)::once[0] != -1)
      {
        dispatch_once(CA::WindowServer::IOMFBDisplay::hint_agx_timing(unsigned long long,unsigned long long)::once, &__block_literal_global_108);
      }

      if (CA::WindowServer::IOMFBDisplay::hint_agx_timing(unsigned long long,unsigned long long)::agx_device)
      {
        IOGPUDeviceSetDisplayParamsFunc(CA::WindowServer::IOMFBDisplay::hint_agx_timing(unsigned long long,unsigned long long)::agx_device, a4 + a3, a4);
        if (initialized[0] != -1)
        {
          dispatch_once_f(initialized, 0, init_debug);
        }

        v23 = *&dword_1ED4E9718 * 0.001;
        if (!*&dword_1ED4E9718)
        {
          v23 = 1.0;
        }

        atomic_store(CAHostTimeWithTime(v23) + v11, &CA::WindowServer::IOMFBDisplay::hint_agx_timing(unsigned long long,unsigned long long)::next_agx_hint);
      }
    }

    goto LABEL_17;
  }

  v15 = atomic_load(&CA::WindowServer::IOMFBDisplay::hint_agx_timing(unsigned long long,unsigned long long)::next_agx_hint);
  if (v15 <= v11)
  {
    goto LABEL_29;
  }

LABEL_17:
  if (mach_absolute_time() < a3)
  {
    if (os_unfair_lock_trylock_with_options())
    {
      os_unfair_lock_unlock(&CA::Render::Server::_decode_commands_lock);
    }

    v16 = CAHostTimeWithTime(0.0002);
    v17 = mach_absolute_time();
    if (v12 < *(a5 + 1184))
    {
      v18 = v16 + a3 >= v17;
      v19 = v16 + a3 - v17;
      if (v19 != 0 && v18)
      {
        pthread_mutex_lock((a5 + 1208));
        v20 = CATimeWithHostTime(v19);
        v36.tv_sec = 0;
        v36.tv_nsec = (v20 * 1000000000.0);
        pthread_cond_timedwait_relative_np((a5 + 1272), (a5 + 1208), &v36);
        pthread_mutex_unlock((a5 + 1208));
      }
    }
  }

  if (v12 >= *(a5 + 1184))
  {
    v39 = 0u;
    v38 = 0u;
    v36 = 0;
    v40 = 0xAuLL;
    v37 = v11;
    *&v38 = (CATimeWithHostTime(a4) * 1000000.0);
    HIDWORD(v36.tv_sec) = 1000000;
    memset(buf, 0, 24);
    CA::WindowServer::IOMFBDisplay::timing_reference(buf, *(a5 + 96), 1);
    *(a5 + 1184) = 0x7FF0000000000000;
    *(a5 + 1192) = 0u;
    CA::WindowServer::Server::render_for_time(a5);
  }

  else
  {
    CA::Render::collect(0, v12);
  }

  pthread_mutex_lock((a5 + 856));
  *(a5 + 1446) |= 1u;
  return pthread_mutex_unlock((a5 + 856));
}

void CA::Render::collect(CA::Render *this, double a2)
{
  v48 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v3 = 1;
  }

  else
  {
    v4 = a2 + -5.0;
    if (CA::Render::memory_once != -1)
    {
      dispatch_once_f(&CA::Render::memory_once, 0, CA::Render::init_memory_warnings_);
    }

    v3 = *&CA::Render::last_memory_warning > v4;
  }

  if (!CA::Render::subimage_head)
  {
    goto LABEL_52;
  }

  os_unfair_lock_lock(&CA::Render::ImageProvider::_provider_lock);
  if (v3)
  {
    v5 = 0x100000;
  }

  else
  {
    v5 = 0x800000;
  }

  if (v3)
  {
    v6 = 0.1;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = CA::Render::subimage_head;
  if (!CA::Render::subimage_head)
  {
    v11 = 0.0;
    v21 = 0.0;
    v20 = 0.0;
    goto LABEL_50;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        v10 = v7;
        v7 = *(v7 + 8);
        v11 = a2 - *(v10 + 80);
        v12 = *(v10 + 24);
        if (!v12)
        {
          goto LABEL_35;
        }

        v13 = *(v10 + 52);
        if (v13)
        {
          goto LABEL_35;
        }

        if (v11 >= 30.0)
        {
          break;
        }

        if (v11 >= v6 && *(v10 + 32) + v8 > v5)
        {
          break;
        }

        v8 += *(v10 + 32);
        if (!v7)
        {
          goto LABEL_48;
        }
      }

      v15 = v11 >= 600.0 || v3;
      v16 = v7;
      if (v15)
      {
        break;
      }

      v16 = v7;
      if (*(v10 + 32) + v9 > 0x10000000)
      {
        break;
      }

      if ((v13 & 0x20000) != 0)
      {
        v9 += *(v10 + 32);
LABEL_35:
        if (!v7)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v16 = v7;
        if (v12[2] != 1)
        {
          break;
        }

        if (((*(*v12 + 208))(v12, 1) & 1) == 0)
        {
          v16 = *(v10 + 8);
          break;
        }

        *(v10 + 52) |= 0x20000u;
        v9 += *(v10 + 32);
        if (!v7)
        {
          goto LABEL_48;
        }
      }
    }

    v17 = *v10;
    if (v16)
    {
      *v16 = v17;
    }

    if (v17 == 0.0)
    {
      v18 = &CA::Render::subimage_head;
    }

    else
    {
      v18 = (*&v17 + 8);
    }

    *v18 = v16;
    v19 = *(v10 + 24);
    if (atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v19 + 16))(v19);
    }

    x_hash_table_remove_ptr(*(*(v10 + 16) + 160), v10 + 40);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v10);
  }

  while (v7);
LABEL_48:
  v20 = v8 * 0.000001;
  v21 = v9 * 0.000001;
LABEL_50:
  if (BYTE8(ca_debug_options) == 1 && *&CA::Render::ImageProvider::collect(double,BOOL)::last_log_time + 1.0 <= a2)
  {
    CA::Render::ImageProvider::collect(double,BOOL)::last_log_time = *&a2;
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v39 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      if (CA::Render::subimage_head)
      {
        v40 = a2 - *(CA::Render::subimage_head + 80);
      }

      else
      {
        v40 = 0.0;
      }

      *v41 = 134218752;
      *&v41[4] = v20;
      v42 = 2048;
      v43 = v21;
      v44 = 2048;
      v45 = v40;
      v46 = 2048;
      v47 = v11;
      _os_log_impl(&dword_183AA6000, v39, OS_LOG_TYPE_DEFAULT, "CAImageProvider: %.3gMB cached (%.3gMB purgeable); idle %.3gs -> %.3gs\n", v41, 0x2Au);
    }
  }

  os_unfair_lock_unlock(&CA::Render::ImageProvider::_provider_lock);
LABEL_52:
  if (CA::Render::pattern_cache)
  {
    v22 = qword_1ED4E4B30 == &CA::Render::pattern_cache_list;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    os_unfair_lock_lock(&CA::Render::pattern_lock);
    v23 = qword_1ED4E4B30;
    if (qword_1ED4E4B30 == &CA::Render::pattern_cache_list)
    {
      os_unfair_lock_unlock(&CA::Render::pattern_lock);
    }

    else
    {
      v24 = 0;
      while (*(v23 + 32) <= a2)
      {
        v25 = v23;
        v23 = *(v23 + 8);
        x_hash_table_remove(CA::Render::pattern_cache, v25[2]);
        v27 = *v25;
        v26 = v25[1];
        *(v27 + 8) = v26;
        *v26 = v27;
        *v25 = v25;
        v25[1] = v24;
        v24 = v25;
        if (v23 == &CA::Render::pattern_cache_list)
        {
          goto LABEL_63;
        }
      }

      v25 = v24;
LABEL_63:
      os_unfair_lock_unlock(&CA::Render::pattern_lock);
      if (v25)
      {
        do
        {
          v28 = v25[1];
          v29 = v25[3];
          if (v29 && atomic_fetch_add(v29 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v29 + 16))(v29);
          }

          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          malloc_zone_free(malloc_zone, v25);
          v25 = v28;
        }

        while (v28);
      }
    }
  }

  if (CA::Render::image_cache)
  {
    v30 = qword_1ED4E90C8 == &CA::Render::image_cache_list;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    os_unfair_lock_lock(&CA::Render::image_cache_lock);
    v31 = qword_1ED4E90C8;
    if (qword_1ED4E90C8 == &CA::Render::image_cache_list)
    {
      os_unfair_lock_unlock(&CA::Render::image_cache_lock);
    }

    else
    {
      v32 = 0;
      while (*(v31 + 32) <= a2)
      {
        v33 = v31;
        v31 = *(v31 + 8);
        x_hash_table_remove(CA::Render::image_cache, v33[2]);
        v35 = *v33;
        v34 = v33[1];
        *(v35 + 8) = v34;
        *v34 = v35;
        *v33 = v33;
        v33[1] = v32;
        v32 = v33;
        if (v31 == &CA::Render::image_cache_list)
        {
          goto LABEL_81;
        }
      }

      v33 = v32;
LABEL_81:
      os_unfair_lock_unlock(&CA::Render::image_cache_lock);
      if (v33)
      {
        do
        {
          v36 = v33[1];
          v37 = v33[3];
          if (v37 && atomic_fetch_add(v37 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v37 + 16))(v37);
          }

          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          malloc_zone_free(malloc_zone, v33);
          v33 = v36;
        }

        while (v36);
      }
    }
  }

  *v41 = a2;
  if ((CA::Render::Image::_subimage_deadline & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    os_unfair_lock_lock(&CA::Render::Image::_subimage_table_lock);
    if (*&CA::Render::Image::_subimage_deadline <= a2 && CA::Render::Image::_subimage_table != 0)
    {
      CA::Render::Image::_subimage_deadline = 0x7FF0000000000000;
      x_hash_table_remove_if (CA::Render::Image::_subimage_table, CA::Render::Image::collect_subimages_, v41);
    }

    os_unfair_lock_unlock(&CA::Render::Image::_subimage_table_lock);
  }
}

uint64_t ___ZN2CA19IOMobileFramebuffer9swap_waitEjj_block_invoke(uint64_t a1)
{
  result = IOMobileFramebufferSwapWait();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

float CA::Render::iosurface_get_edr_factor(CA::Render *this, __IOSurface *a2)
{
  if (this)
  {
    IOSurfaceGetBulkAttachments();
  }

  return 1.0;
}

void CA::Render::BackdropLayer::~BackdropLayer(CA::Render::BackdropLayer *this, const CA::Render::Object *a2)
{
  *this = &unk_1EF1FA150;
  v3 = *(this + 17);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 3);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  --dword_1ED4EAA44;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v5 = malloc_zone;

  malloc_zone_free(v5, this);
}

{
  *this = &unk_1EF1FA150;
  v3 = *(this + 17);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 3);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  --dword_1ED4EAA44;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}