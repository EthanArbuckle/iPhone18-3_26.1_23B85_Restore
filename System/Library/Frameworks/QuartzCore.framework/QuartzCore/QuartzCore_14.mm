BOOL CA::FrameRateArbitrator::RangeSorter<CAFrameIntervalRequest>(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 != v3)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5 < v6)
  {
    return 1;
  }

  return v5 == v6 && a1[4] < a2[4];
}

CA::Display::DisplayLink *CA::Display::DisplayLinkItem::set_paused(CA::Display::DisplayLinkItem *this, int a2)
{
  if (BYTE11(xmmword_1ED4E980C) == 1)
  {
    kdebug_trace();
  }

  pthread_mutex_lock((this + 136));
  v4 = *(this + 324);
  if ((v4 & 1) == a2)
  {

    return pthread_mutex_unlock((this + 136));
  }

  else
  {
    *(this + 324) = v4 & 0xFE | a2;
    if (a2)
    {
      CA::Display::DisplayLinkItem::unregister_frame_interval_range(this);
    }

    else
    {
      CA::Display::DisplayLinkItem::set_preferred_fps_range_locked(this, *(this + 76), 1);
    }

    if ((*(this + 324) & 0x10) != 0)
    {
      [*(this + 32) willChangeValueForKey:@"active"];
      if (*(this + 324))
      {
        v6 = 0;
      }

      else
      {
        v6 = 8;
      }

      *(this + 324) = v6 | *(this + 324) & 0xF7;
      [*(this + 32) didChangeValueForKey:@"active"];
    }

    pthread_mutex_unlock((this + 136));
    result = *(this + 33);
    if (result)
    {

      return CA::Display::DisplayLink::item_properties_changed(result);
    }
  }

  return result;
}

uint64_t CA::Display::DisplayLink::item_properties_changed(CA::Display::DisplayLink *this)
{
  pthread_mutex_lock((this + 56));
  CA::Display::DisplayLink::compute_firing_rate_multiplier_locked(this);
  CA::Display::DisplayLink::update_paused_locked(this);

  return pthread_mutex_unlock((this + 56));
}

void _XRegisterFrameIntervalRange(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 56)
  {
    v3 = -304;
  }

  else if (*(a1 + 56) || *(a1 + 60) < 0x20u)
  {
    v3 = -309;
  }

  else
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 36);
    v7 = *(a1 + 40);
    v8 = *(a1 + 44);
    v9 = *(a1 + 48);
    v10 = *(a1 + 52);
    if (initialized[0] != -1)
    {
      v14 = *(a1 + 36);
      v16 = *(a1 + 44);
      v18 = *(a1 + 40);
      v20 = *(a1 + 52);
      v22 = *(a1 + 48);
      dispatch_once_f(initialized, 0, init_debug);
      v10 = v20;
      v9 = v22;
      v8 = v16;
      v7 = v18;
      v5 = v14;
    }

    if (byte_1ED4E9846 == 1)
    {
      v21 = v10;
      v23 = v9;
      v17 = v8;
      v19 = v7;
      v13 = v6;
      v15 = v5;
      memset(buffer, 0, sizeof(buffer));
      proc_name(v5, buffer, 0x20u);
      if (x_log_get_frame_rate(void)::once != -1)
      {
        dispatch_once(&x_log_get_frame_rate(void)::once, &__block_literal_global_20391);
      }

      v11 = x_log_get_frame_rate(void)::log;
      if (os_log_type_enabled(x_log_get_frame_rate(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v12 = " compat";
        *buf = 67110402;
        *&buf[4] = v19;
        LOWORD(v25) = 1024;
        if (!v21)
        {
          v12 = "";
        }

        *(&v25 + 2) = v17;
        HIWORD(v25) = 1024;
        v26 = v23;
        *v27 = 2080;
        *&v27[2] = v12;
        v28 = 1024;
        v29 = v15;
        v30 = 2080;
        v31 = buffer;
        _os_log_impl(&dword_183AA6000, v11, OS_LOG_TYPE_DEFAULT, "CAFrameRateServer: receiving registration %u %u %u%s from %d[%s]", buf, 0x2Eu);
      }

      v6 = v13;
      v5 = v15;
      v8 = v17;
      v7 = v19;
      v10 = v21;
      v9 = v23;
    }

    *buf = 0;
    *v27 = v9;
    *&buf[4] = v6;
    v25 = __PAIR64__(v7, v5);
    v26 = v8;
    *&v27[4] = v10 != 0;
    CA::Render::post_notification(0x36u, 0, buf, 0);
    if (buf[0])
    {
      v3 = 0;
    }

    else
    {
      v3 = 5;
    }
  }

  v4 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = v3;
  *(a2 + 24) = *v4;
}

void CA::WindowServer::IOMFBServer::register_frame_interval_range(CA::WindowServer::IOMFBServer *this, CA::Render::Object *a2, unsigned int *a3, void *a4)
{
  v4 = *(a2 + 12);
  if ((*(v4 + 640) & 0x100) != 0)
  {
    v6 = a3[1];
    if ((!v6 || *(v4 + 24) == v6) && (*(v4 + 672) & 0x1C00) == 0)
    {
      CA::WindowServer::IOMFBDisplay::register_frame_interval_range(v4, a3[2], a3[3], a3[4], a3[5], *(a3 + 24));
      *a3 = 1;
    }
  }
}

void *CA::WindowServer::IOMFBDisplay::flush_timings_locked(void *this, unint64_t a2, unint64_t *a3)
{
  if (*a3)
  {
    v3 = *a3 >= a2;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = atomic_load((this[3290] + 72));
    v5 = atomic_load((this[3290] + 41));
    v6 = atomic_load((this[3290] + 48));
    v7 = atomic_load((this[3290] + 56));
    *a3 = 0;
    v8 = this[3290];
    add = atomic_fetch_add((v8 + 28), 1u);
    atomic_store(*a3, (v8 + 32));
    atomic_store(v5 & 1, (v8 + 40));
    atomic_store(v6, (v8 + 44));
    atomic_store(v7, (v8 + 52));
    atomic_store(v4, (v8 + 64));
    atomic_store(add + 2, (v8 + 28));
    v10 = atomic_load((this[3290] + 72));
    this[3294] = v10;
    v11 = atomic_load((this[3290] + 80));
    this[3295] = v11;
  }

  return this;
}

void init_debug(void *a1)
{
  if (CADeviceHasInternalBuild::once != -1)
  {
    dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
  }

  if (CADeviceHasInternalBuild::internal == 1)
  {
    v1 = CFPreferencesCopyMultiple(0, @"com.apple.coreanimation", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  }

  else
  {
    v1 = 0;
  }

  for (i = 0; i != 256; ++i)
  {
    Float = CADefaultsGetFloat(v1, 0.0, debug_option_env_vars[i]);
    *(&ca_debug_options + i) = Float != 0.0;
  }

  if (CADeviceHasInternalBuild::once != -1)
  {
    dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
  }

  LOBYTE(Float) = CADeviceHasInternalBuild::internal;
  v4 = 0;
  BYTE11(xmmword_1ED4E980C) = CADefaultsGetFloat(v1, LODWORD(Float), "CA_EMIT_DEBUG_SIGNPOSTS") != 0.0;
  byte_1ED4E981C = 0;
  do
  {
    *&debug_values[v4] = CADefaultsGetFloat(v1, 0.0, debug_value_env_vars[v4]);
    ++v4;
  }

  while (v4 != 93);
  MGGetFloat32Answer();
  if (v5)
  {
    MGGetFloat32Answer();
    dword_1ED4E96A4 = truncf(CADefaultsGetFloat(v1, ((48 * v6) | (v6 << 21)), "CA_PERF_HUD_ORIGIN"));
  }

  dword_1ED4E96AC = 1133903872;
  xmmword_1ED4E96DC = xmmword_183E21580;
  if (*&dword_1ED4E96F0 != 0.0)
  {
    byte_1ED4E9829 = 1;
  }

  v7 = 0;
  dword_1ED4E96F4 = 0;
  options_are_visual = 0;
  while (*(&ca_debug_options + dword_183E316B0[v7]) != 1)
  {
    if (++v7 == 43)
    {
      goto LABEL_21;
    }
  }

  options_are_visual = 1;
LABEL_21:
  if (CADeviceSupportsHDRExternalDisplayBrightnessControl::once[0] != -1)
  {
    dispatch_once(CADeviceSupportsHDRExternalDisplayBrightnessControl::once, &__block_literal_global_444);
  }

  BYTE6(xmmword_1ED4E988C) |= CADeviceSupportsHDRExternalDisplayBrightnessControl::enabled;
  qword_1ED4E977C = 0x400000003F9AE148;
  dword_1ED4E9784 = 1065353216;
  dword_1ED4E9794 = 1077097267;
  if (v1)
  {

    CFRelease(v1);
  }
}

uint64_t __CADeviceHasInternalBuild_block_invoke()
{
  result = os_variant_has_internal_ui();
  CADeviceHasInternalBuild::internal = result;
  return result;
}

uint64_t __CADeviceIsPhone_block_invoke()
{
  result = MGGetSInt32Answer();
  CADeviceIsPhone::phone = result == 1;
  return result;
}

void CA::Render::init_memory_warnings_(CA::Render *this, void *a2)
{
  CA::Render::last_memory_warning = 0;
  global_queue = dispatch_get_global_queue(25, 0);
  CA::Render::memory_source = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 2uLL, global_queue);
  dispatch_source_set_event_handler_f(CA::Render::memory_source, CA::Render::memory_warning);
  v3 = CA::Render::memory_source;

  dispatch_resume(v3);
}

void malloc_zone_init(void)
{
  zone = malloc_create_zone(0, 0);
  malloc_zone = zone;

  malloc_set_zone_name(zone, "QuartzCore");
}

void CA::Display::Display::Display(CA::Display::Display *this, CFTypeRef cf, const __CFString *a3, int a4)
{
  *this = &unk_1EF1F3E28;
  *(this + 18) = 0;
  *(this + 11) = CFRetain(cf);
  v7 = CFRetain(a3);
  *(this + 248) = 0u;
  *(this + 184) = 0u;
  *(this + 12) = v7;
  *(this + 26) = a4;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 22) = this + 184;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 58) = 1065353216;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  __asm { FMOV            V1.2S, #1.0 }

  *(this + 37) = _D1;
  *(this + 344) = 0u;
  *(this + 90) = 0;
  *(this + 184) = 0;
  *(this + 376) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 333) = 0;
  *(this + 49) = 0x3FF0000000000000;
  *(this + 25) = 0u;
  *(this + 104) = 1;
  *(this + 56) = 0;
  *(this + 114) = 0;
  *(this + 436) = 0;
  *(this + 420) = 0u;
  *(this + 58) = &unk_1EF1F3E08;
  *(this + 118) = a4;
  *(this + 80) = 0;
  *(this + 39) = 0u;
  *(this + 476) = 0u;
  *(this + 492) = 0u;
  *(this + 508) = 0u;
  *(this + 524) = 0u;
  *(this + 540) = 0u;
  *(this + 556) = 0u;
  *(this + 604) = 0u;
  *(this + 37) = 0u;
  *(this + 36) = 0u;
  *(this + 648) &= ~1u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 86) = 0;
  *(this + 87) = CAHostTimeWithTime(0.0166666667);
  *(this + 704) = 10;
  *(this + 705) &= 0xE2u;
  operator new();
}

void sub_183B683F8(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    v1[79] = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    v1[73] = v6;
    operator delete(v6);
  }

  v7 = v1[60];
  if (v7)
  {
    if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v7 + 16))(v7);
    }
  }

  CA::WindowServer::Display::ModeSet::~ModeSet((v1 + 19));
  _Unwind_Resume(a1);
}

const char *__CADeviceSupportsAPT_block_invoke()
{
  CADeviceSupportsAPT::supports_apt = MGGetBoolAnswer();
  result = getenv("CA_DISABLE_APT");
  if (result)
  {
    result = atoi(result);
    if (result)
    {
      CADeviceSupportsAPT::supports_apt = 0;
    }
  }

  return result;
}

void query_displays(void)
{
  v53 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v49 = 0;
  v0 = mach_continuous_time();
  v1 = CAHostTimeWithTime(5.0) + v0;
  v2 = MEMORY[0x1E69E9A60];
  while (1)
  {
    ServerPort = CARenderServerGetServerPort(0);
    if (!ServerPort)
    {
      if (CA::Render::Server::is_denied(void)::once[0] != -1)
      {
        dispatch_once(CA::Render::Server::is_denied(void)::once, &__block_literal_global_7887);
      }

      if ((CA::Render::Server::is_denied(void)::denied & 1) != 0 || mach_continuous_time() >= v1)
      {
        return;
      }

      goto LABEL_10;
    }

    v4 = ServerPort;
    v5 = _CASGetDisplays(ServerPort, &v50, &v49);
    v6 = v5;
    CAVerifyServerReturn(v5);
    mach_port_deallocate(*v2, v4);
    if (v6 != -308)
    {
      break;
    }

    if (mach_continuous_time() >= v1)
    {
      v6 = -308;
      goto LABEL_61;
    }

LABEL_10:
    usleep(0x7A120u);
  }

  if (v6)
  {
LABEL_61:
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v44 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v52 = v6;
      _os_log_error_impl(&dword_183AA6000, v44, OS_LOG_TYPE_ERROR, "CoreAnimation: Unable to query displays from server (%d)", buf, 8u);
    }

    abort();
  }

  v7 = *MEMORY[0x1E695E490];
  v8 = v50;
  v9 = v49;
  v10 = CFDataCreate(*MEMORY[0x1E695E490], v50, v49);
  mach_vm_deallocate(*v2, v8, v9);
  if (v10)
  {
    v11 = CFPropertyListCreateWithData(v7, v10, 0, 0, 0);
    CFRelease(v10);
    if (v11)
    {
      Count = CFArrayGetCount(v11);
      v13 = Count;
      v45 = 8 * Count;
      if ((8 * Count) > 0x1000)
      {
        v15 = malloc_type_malloc(8 * Count, 0xE329DF83uLL);
      }

      else
      {
        MEMORY[0x1EEE9AC00](Count);
        v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v15, v14);
      }

      v46 = v11;
      v54.location = 0;
      v54.length = v13;
      CFArrayGetValues(v11, v54, v15);
      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v48 = v15;
      v17 = 0;
      if (v13)
      {
        v18 = 0;
        v19 = @"kCADisplayName";
        v47 = v13;
        do
        {
          v20 = *&v15[8 * v18];
          Value = CFDictionaryGetValue(v20, v19);
          v22 = CFDictionaryGetValue(v20, @"kCADisplayDeviceName");
          if (Value)
          {
            v23 = v22 == 0;
          }

          else
          {
            v23 = 1;
          }

          if (!v23)
          {
            v24 = v22;
            v25 = v19;
            Int = CA_CFDictionaryGetInt(v20, @"kCADisplayId");
            v27 = [_displays count];
            if (v27)
            {
              v28 = v27;
              v29 = 0;
              while (1)
              {
                v30 = [_displays objectAtIndexedSubscript:{v29, v45}];
                if ([v30 displayId] == Int)
                {
                  break;
                }

                if (v28 == ++v29)
                {
                  goto LABEL_27;
                }
              }

              [v16 addObject:v30];
              v19 = v25;
              v13 = v47;
              v15 = v48;
            }

            else
            {
LABEL_27:
              if (x_malloc_get_zone::once != -1)
              {
                dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
              }

              v31 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x308uLL, 0xDEEC3011uLL);
              v19 = v25;
              if (v31)
              {
                CA::Display::Display::Display(v31, Value, v24, Int);
              }

              v17 = 1;
              v13 = v47;
              v15 = v48;
            }
          }

          ++v18;
        }

        while (v18 != v13);
      }

      if (_tvoutDisplay)
      {
        v32 = _mainDisplay == 0;
      }

      else
      {
        v32 = 0;
      }

      if (v32)
      {
        _mainDisplay = _tvoutDisplay;
      }

      if (CADeviceHasInternalBuild::once != -1)
      {
        dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
      }

      if (CADeviceHasInternalBuild::internal == 1 && !_mainDisplay && [v16 count] && objc_msgSend(objc_msgSend(objc_msgSend(v16, "objectAtIndexedSubscript:", 0), "name"), "isEqualToString:", @"CAVirtualMainDisplay"))
      {
        _mainDisplay = [v16 objectAtIndexedSubscript:0];
      }

      v33 = [_displays count];
      if (v33)
      {
        v34 = v33;
        for (i = 0; i != v34; ++i)
        {
          v36 = [_displays objectAtIndexedSubscript:i];
          v37 = [v16 count];
          if (v37)
          {
            v38 = v37;
            v39 = 0;
            while (1)
            {
              v40 = [v16 objectAtIndexedSubscript:v39];
              v41 = [v36 displayId];
              if (v41 == [v40 displayId])
              {
                break;
              }

              if (v38 == ++v39)
              {
                goto LABEL_53;
              }
            }
          }

          else
          {
LABEL_53:
            [v36 _finalize];
            v17 = 1;
          }
        }
      }

      if (v45 > 0x1000)
      {
        free(v48);
      }

      CFRelease(v46);
      if (v17)
      {
        v42 = _displays;
        _displays = v16;
        v43 = v42;
      }

      else
      {
      }
    }
  }
}

const char *__CADeviceIsSystemSessionClient_block_invoke()
{
  result = getenv("CA_SYSTEM_SESSION_CLIENT");
  if (result)
  {
    result = atoi(result);
    if (result)
    {
      result = getuid();
      v1 = result == 0;
    }

    else
    {
      v1 = 0;
    }

    CADeviceIsSystemSessionClient::enabled = v1;
  }

  return result;
}

uint64_t x_thread_init_mutex(pthread_mutex_t *a1, char a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4.__sig = 0;
    *v4.__opaque = 0;
    pthread_mutexattr_init(&v4);
    pthread_mutexattr_settype(&v4, 2);
    pthread_mutex_init(a1, &v4);
    return pthread_mutexattr_destroy(&v4);
  }

  else
  {

    return pthread_mutex_init(a1, 0);
  }
}

uint64_t CA::Display::Display::update(CA::Display::Display *this)
{
  v249 = *MEMORY[0x1E69E9840];
  if ((*(this + 384) & 0x2000) != 0)
  {
    [MEMORY[0x1E695DF30] raise:@"CADisplay" format:@"%p: cannot update immutable CADisplay"];
  }

  pthread_mutex_lock((this + 8));
  v2 = *(this + 26);
  ServerPort = CARenderServerGetServerPort(0);
  v4 = *(this + 14);
  if (v4)
  {
    v240 = 0u;
    v241 = 0u;
    v235 = 0u;
    v236 = 0;
    v238 = 0u;
    v239 = 0u;
    v237 = &v238;
    LODWORD(v241) = 1065353216;
    v248 = 0u;
    v247 = 0u;
    v246 = 0u;
    memset(v245, 0, sizeof(v245));
    v245[0].msgh_bits = 3;
    v5 = &v239;
    if ((*(v4 + 16))(v4, v245))
    {
      v225 = *&v245[0].msgh_size;
      v6 = *&v245[0].msgh_voucher_port;
      v228 = *&v245[1].msgh_remote_port;
      if (*(&v247 + 1))
      {
        Count = CFArrayGetCount(*(&v247 + 1));
      }

      else
      {
        Count = *&v245[2].msgh_bits;
      }

      v15 = 8 * Count;
      if (v15 > 0x1000)
      {
        v16 = malloc_type_malloc(8 * Count, 0x67D13580uLL);
      }

      else
      {
        MEMORY[0x1EEE9AC00](Count);
        v16 = &v156 - ((v15 + 15) & 0xFFFFFFFF0);
        bzero(v16, v15);
      }

      v229 = v6;
      if (*&v245[2].msgh_bits)
      {
        v19 = 0;
        do
        {
          *&v16[8 * v19] = *(*&v245[1].msgh_voucher_port + 8 * v19);
          ++v19;
        }

        while (v19 < *&v245[2].msgh_bits);
        v20 = *&v245[2].msgh_remote_port;
        v21 = *&v245[2].msgh_voucher_port;
        if (*&v245[3].msgh_bits)
        {
          (*&v245[3].msgh_bits)(*&v245[1].msgh_voucher_port);
        }
      }

      else if (*(&v247 + 1))
      {
        v24 = CFArrayGetCount(*(&v247 + 1));
        if (v24 >= 1)
        {
          for (i = 0; i != v24; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(&v247 + 1), i);
            *&v16[8 * i] = CA::WindowServer::Display::ModePrefs::unpack(ValueAtIndex, v27, v28);
          }
        }

        v20 = CA::WindowServer::Display::ModePrefs::unpack(v248, v22, v23);
        v21 = CA::WindowServer::Display::ModePrefs::unpack(*(&v248 + 1), v29, v30);
        CFRelease(*(&v247 + 1));
        CFRelease(*(&v248 + 1));
        CFRelease(v248);
      }

      else
      {
        v21 = 0;
        v20 = 0;
      }

      CA::WindowServer::Display::ModeSet::set_mig_representation(&v235, v16, *&v245[2].msgh_bits, 0, 0, 0, v17, v18, v156);
      if (v15 > 0x1000)
      {
        free(v16);
      }

      v214 = 0;
      v215 = 0;
      v34 = 0;
      v224 = 0;
      v233 = 0;
      v217 = 0;
      v213 = 0;
      msgh_id = 0;
      v158 = 0;
      v202 = 0;
      v203 = 0;
      v227 = 0;
      v208 = 0;
      v199 = 0;
      v157 = 0;
      v211 = 0;
      v35 = 0;
      *&v36 = 0;
      DWORD2(v36) = v6 & 0x3FFF;
      HIDWORD(v36) = (v6 >> 14) & 0x3FFF;
      v38 = *&v245[3].msgh_voucher_port;
      v37 = *&v245[3].msgh_remote_port;
      *&v33 = *(&v246 + 1);
      v39 = *&v246;
      v226 = v33;
      v195 = v247;
      v189 = 0u;
      v231 = 0u;
      v40 = 0.0;
      v230 = 0u;
      v188 = xmmword_183E20E00;
      v41 = -1;
      v216 = 1;
      v232 = 0u;
      v222 = v36;
      v223 = v36;
      v42 = 0;
      v200 = 0u;
      v201 = 0u;
      v220 = 0u;
      v221 = 0u;
      v43 = *(&v6 + 1);
LABEL_46:
      *(this + 384) &= ~0x1000u;
      if (v41 < 4)
      {
        v44 = v41 + 1;
      }

      else
      {
        v44 = 0;
      }

      v194 = v44;
      v197 = *(this + 120);
      os_unfair_lock_lock(this + 18);
      v45 = *(this + 16);
      v46 = v228;
      v198 = ServerPort;
      if (v45 == v229)
      {
        v47 = 1;
      }

      else
      {
        LODWORD(v206) = 0;
        if (!v229 || !v45)
        {
LABEL_55:
          v48 = *(this + 17);
          if (v48 == v43)
          {
            v49 = 1;
          }

          else
          {
            v205 = 0;
            if (!v43 || !v48)
            {
LABEL_61:
              v50 = *(this + 18);
              if (v50 == v46)
              {
                v51 = 1;
              }

              else
              {
                v204 = 0;
                if (!v46 || !v50)
                {
LABEL_67:
                  v52 = *(this + 19);
                  v53 = *(this + 20);
                  v54 = v235;
                  v162 = &v239;
                  if (v53 - v52 == *(&v235 + 1) - v235)
                  {
                    if (v52 == v53)
                    {
LABEL_73:
                      if (*(this + 24) == *(&v238 + 1))
                      {
                        v62 = *(this + 22);
                        if (v62 == (this + 184))
                        {
LABEL_95:
                          v65 = 1;
                        }

                        else
                        {
                          v63 = v237;
                          while (1)
                          {
                            v64 = *(v62 + 13) == *(v63 + 13) && *(v62 + 14) == *(v63 + 14);
                            v65 = v64;
                            if (!v64)
                            {
                              break;
                            }

                            v66 = v62[1];
                            v67 = v62;
                            if (v66)
                            {
                              do
                              {
                                v62 = v66;
                                v66 = *v66;
                              }

                              while (v66);
                            }

                            else
                            {
                              do
                              {
                                v62 = v67[2];
                                v64 = *v62 == v67;
                                v67 = v62;
                              }

                              while (!v64);
                            }

                            v68 = *(v63 + 1);
                            if (v68)
                            {
                              do
                              {
                                v69 = v68;
                                v68 = *v68;
                              }

                              while (v68);
                            }

                            else
                            {
                              do
                              {
                                v69 = *(v63 + 2);
                                v64 = *v69 == v63;
                                v63 = v69;
                              }

                              while (!v64);
                            }

                            v63 = v69;
                            if (v62 == (this + 184))
                            {
                              goto LABEL_95;
                            }
                          }
                        }

                        goto LABEL_97;
                      }
                    }

                    else
                    {
                      v55 = vdupq_n_s64(0x3F59000000000000uLL);
                      v56 = vdupq_n_s64(0x40847AE147AE147BuLL);
                      v57 = vdupq_n_s64(0x3FFFFFE0000000uLL);
                      while (1)
                      {
                        if (*v52 != *v54)
                        {
                          v58.i64[0] = *v52;
                          v58.i64[1] = *v54;
                          v59 = vshrn_n_s64(v58, 0x1DuLL);
                          v60.i64[0] = v59.i32[0] & 0x1FFFFFF;
                          v60.i64[1] = v59.i32[1] & 0x1FFFFFF;
                          v61 = vbslq_s8(v57, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v60), v55)), v56)), 0x1DuLL), v58);
                          if ((vmovn_s64(vceqq_s64(v61, vdupq_laneq_s64(v61, 1))).u8[0] & 1) == 0)
                          {
                            break;
                          }
                        }

                        ++v52;
                        ++v54;
                        if (v52 == v53)
                        {
                          goto LABEL_73;
                        }
                      }
                    }
                  }

                  v65 = 0;
LABEL_97:
                  v70 = *(this + 31);
                  v186 = v20;
                  if (v70 == v20)
                  {
                    v71 = 1;
                  }

                  else
                  {
                    v72.i64[0] = v70;
                    v72.i64[1] = v20;
                    v73 = vshrn_n_s64(v72, 0x1DuLL);
                    v74.i64[0] = v73.i32[0] & 0x1FFFFFF;
                    v74.i64[1] = v73.i32[1] & 0x1FFFFFF;
                    v75 = vbslq_s8(vdupq_n_s64(0x3FFFFFE0000000uLL), vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v74), vdupq_n_s64(0x3F59000000000000uLL))), vdupq_n_s64(0x40847AE147AE147BuLL))), 0x1DuLL), v72);
                    v71 = vmovn_s64(vceqq_s64(v75, vdupq_laneq_s64(v75, 1))).u32[0];
                  }

                  v191 = v71;
                  v76 = (this + 264);
                  if (*(this + 32) == v21)
                  {
                    v77 = 1;
                  }

                  else
                  {
                    v78.i64[0] = *(this + 32);
                    v78.i64[1] = v21;
                    v79 = vshrn_n_s64(v78, 0x1DuLL);
                    v80.i64[0] = v79.i32[0] & 0x1FFFFFF;
                    v80.i64[1] = v79.i32[1] & 0x1FFFFFF;
                    v81 = vbslq_s8(vdupq_n_s64(0x3FFFFFE0000000uLL), vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v80), vdupq_n_s64(0x3F59000000000000uLL))), vdupq_n_s64(0x40847AE147AE147BuLL))), 0x1DuLL), v78);
                    v77 = vmovn_s64(vceqq_s64(v81, vdupq_laneq_s64(v81, 1))).u32[0];
                  }

                  v190 = v77;
                  LODWORD(v219) = *v76 == v223 && *(this + 268) == *(&v223 + 4) && *(this + 69) == HIDWORD(v223);
                  v184 = *(this + 70) == v222 && *(this + 284) == *(&v222 + 4) && *(this + 73) == HIDWORD(v222);
                  v82 = *(this + 74) != *&v231 || *(this + 75) != *(&v231 + 1);
                  LODWORD(v218) = v82;
                  v83 = *(this + 76) != *&v230 || *(this + 77) != *(&v230 + 1);
                  v180 = v83;
                  v84 = *(this + 78) != v224 || *(this + 79) != v34;
                  v179 = v84;
                  v85 = *(this + 80);
                  v187 = this + 152;
                  v163 = v221 == v85 && __PAIR128__(__PAIR64__(HIDWORD(v202), DWORD1(v220)), __PAIR64__(v220, DWORD1(v221))) == *(this + 324) && *(this + 340) == v202 && v201 == __PAIR64__(*(this + 86), *(this + 87)) && v200 == *(this + 44) && v199 == *(this + 90);
                  v185 = v34;
                  v192 = v43;
                  v193 = v21;
                  LODWORD(v234) = v35 & 1;
                  v86 = *(this + 368);
                  v159 = *(this + 369);
                  v160 = v86;
                  os_unfair_lock_unlock(this + 18);
                  v87 = *(this + 384);
                  v88 = *(this + 178);
                  v89 = 1;
                  LODWORD(v207) = 1;
                  if (v88 == *&v232)
                  {
                    LODWORD(v207) = *(this + 179) != *(&v232 + 1);
                  }

                  v90 = v35 & 4;
                  v91 = v35 & 0x80;
                  v92 = v35 & 2;
                  v93 = v35 & 8;
                  v94 = *(this + 104);
                  v95 = this + 464;
                  v96 = 64;
                  v97 = 32;
                  if ((*(this + 705) & 8) != 0)
                  {
                    v97 = 64;
                  }

                  else
                  {
                    v96 = 48;
                  }

                  if (*(this + 705))
                  {
                    v98 = 2;
                  }

                  else
                  {
                    v98 = 1;
                  }

                  if (v98 <= *(this + 130))
                  {
                    v98 = *(this + 130);
                  }

                  if (v98 <= *(this + 138))
                  {
                    v98 = *(this + 138);
                  }

                  LODWORD(v210) = v98;
                  if (((v87 >> 6) & 1) == v227 && *(this + 109) == v208 && ((v87 >> 7) & 1) == HIDWORD(v203))
                  {
                    v89 = ((v87 >> 8) & 1) != v203;
                  }

                  v161 = v89;
                  v99 = *(this + 51);
                  v177 = (v87 >> 1) & 1;
                  v181 = *(this + 182);
                  v182 = v94;
                  v176 = v90 >> 2;
                  v175 = (v87 >> 2) & 1;
                  v169 = *(this + 105);
                  v168 = *(this + 106);
                  v174 = v91 >> 7;
                  v178 = *(this + 114);
                  v173 = (v87 >> 3) & 1;
                  *(&v100 + 1) = *(&v226 + 1);
                  LODWORD(v209) = v226;
                  v166 = *(this + 107);
                  v172 = v92 >> 1;
                  v165 = *(this + 108);
                  v171 = (v87 >> 4) & 1;
                  v183 = v87 & 1;
                  v170 = v93 >> 3;
                  v101 = *&v95[v97];
                  v102 = v219 ^ 1;
                  if (v234 != v183)
                  {
                    v102 = 1;
                  }

                  v103 = *&v95[v96];
                  v167 = (v87 >> 9) & 1;
                  v164 = v102 | v218 | (v94 != HIDWORD(v233));
                  v212 = (v87 >> 10) & 1;
                  if ((v87 & 0x800) != 0)
                  {
                    *&v100 = vceq_s32(v197, v225);
                    if ((v100 & 1) == 0)
                    {
                      v104 = *(this + 10);
                      v156 = v100;
                      [v104 willChangeValueForKey:@"seed"];
                      *&v100 = v156;
                    }

                    if ((BYTE4(v100) & 1) == 0)
                    {
                      [*(this + 10) willChangeValueForKey:{@"connectionSeed", *&v100}];
                    }

                    if ((v206 & 1) == 0)
                    {
                      [*(this + 10) willChangeValueForKey:{@"uniqueId", *&v100}];
                    }

                    if (!v205)
                    {
                      [*(this + 10) willChangeValueForKey:{@"containerId", *&v100}];
                    }

                    if (!v204)
                    {
                      [*(this + 10) willChangeValueForKey:{@"productName", *&v100}];
                    }

                    if ((v65 & 1) == 0)
                    {
                      [*(this + 10) willChangeValueForKey:{@"availableModes", *&v100}];
                      [*(this + 10) willChangeValueForKey:@"supportedHDRModes"];
                      [*(this + 10) willChangeValueForKey:@"preferredHDRModes"];
                    }

                    if ((v191 & 1) == 0)
                    {
                      [*(this + 10) willChangeValueForKey:{@"currentMode", *&v100}];
                    }

                    if ((v190 & 1) == 0)
                    {
                      [*(this + 10) willChangeValueForKey:{@"preferredMode", *&v100}];
                    }

                    if (v99 != v40)
                    {
                      [*(this + 10) willChangeValueForKey:{@"latency", *&v100}];
                    }

                    if ((v219 & 1) == 0)
                    {
                      [*(this + 10) willChangeValueForKey:@"bounds"];
                    }

                    if (!v184)
                    {
                      [*(this + 10) willChangeValueForKey:@"frame"];
                    }

                    if (v234 != v183)
                    {
                      [*(this + 10) willChangeValueForKey:@"overscanned"];
                    }

                    if (v218)
                    {
                      [*(this + 10) willChangeValueForKey:@"overscanAmounts"];
                      [*(this + 10) willChangeValueForKey:@"overscanAmount"];
                    }

                    if (v182 != HIDWORD(v233))
                    {
                      [*(this + 10) willChangeValueForKey:@"overscanAdjustment"];
                    }

                    if (v207)
                    {
                      [*(this + 10) willChangeValueForKey:@"logicalScale"];
                    }

                    if (v181 != v217)
                    {
                      [*(this + 10) willChangeValueForKey:@"pointScale"];
                    }

                    if (v180)
                    {
                      [*(this + 10) willChangeValueForKey:@"physicalSize"];
                    }

                    if (v179)
                    {
                      [*(this + 10) willChangeValueForKey:@"nativeSize"];
                    }

                    if (v178 != v216)
                    {
                      [*(this + 10) willChangeValueForKey:@"transportType"];
                    }

                    if (v176 != v177)
                    {
                      [*(this + 10) willChangeValueForKey:@"cloned"];
                    }

                    if (v174 != v175)
                    {
                      [*(this + 10) willChangeValueForKey:@"cloning"];
                    }

                    if (v172 != v173)
                    {
                      [*(this + 10) willChangeValueForKey:@"cloningSupported"];
                    }

                    if (v170 != v171)
                    {
                      [*(this + 10) willChangeValueForKey:@"supportsExtendedColors"];
                    }

                    if (v169 != HIDWORD(v215))
                    {
                      [*(this + 10) willChangeValueForKey:@"tag"];
                    }

                    if (v168 != v215)
                    {
                      [*(this + 10) willChangeValueForKey:@"processId"];
                    }

                    if (v101 != v37)
                    {
                      [*(this + 10) willChangeValueForKey:@"refreshRate"];
                    }

                    if (v103 != v39)
                    {
                      [*(this + 10) willChangeValueForKey:@"heartbeatRate"];
                    }

                    if (v210 != v209)
                    {
                      [*(this + 10) willChangeValueForKey:@"minimumFrameDuration"];
                    }

                    if (HIDWORD(v214) != v167)
                    {
                      [*(this + 10) willChangeValueForKey:@"dmrrEnabled"];
                    }

                    if (v233 != v212)
                    {
                      [*(this + 10) willChangeValueForKey:@"forceFixedRateLinksEnabled"];
                    }

                    if (v166 != v214)
                    {
                      [*(this + 10) willChangeValueForKey:@"nativeOrientation"];
                    }

                    if (v165 != v213)
                    {
                      [*(this + 10) willChangeValueForKey:@"currentOrientation"];
                    }

                    if (v164)
                    {
                      [*(this + 10) willChangeValueForKey:@"safeBounds"];
                    }

                    if (!v163)
                    {
                      [*(this + 10) willChangeValueForKey:@"externalDisplayAttributes"];
                    }

                    if (v161)
                    {
                      [*(this + 10) willChangeValueForKey:@"preferences"];
                      [*(this + 10) willChangeValueForKey:@"allowedHDRModes"];
                    }

                    if (v160 != HIDWORD(v211))
                    {
                      [*(this + 10) willChangeValueForKey:@"currentPreset"];
                      [*(this + 10) willChangeValueForKey:@"isReference"];
                    }

                    if (v159 != v211)
                    {
                      [*(this + 10) willChangeValueForKey:@"isReferenceLimited"];
                    }
                  }

                  *(this + 15) = v225;
                  *(this + 51) = v40;
                  v105 = *(this + 384) & 0xFFE0 | v234;
                  *(this + 104) = HIDWORD(v233);
                  v106 = (v91 >> 5) | (v90 >> 1) | (4 * v92) | (2 * v93) | v105;
                  *(this + 384) = v106;
                  v107 = v195;
                  v108 = *(this + 705) & 0xFE | v195 & 1;
                  *(this + 705) = v108;
                  if (v107)
                  {
                    v110 = HIDWORD(v195);
                    v109 = msgh_id;
                    if (CAFrameRateArbitrationEnabled(void)::once[0] != -1)
                    {
                      dispatch_once(CAFrameRateArbitrationEnabled(void)::once, &__block_literal_global_18946);
                    }

                    v112 = v192;
                    v111 = v193;
                    if (CAFrameRateArbitrationEnabled(void)::enabled)
                    {
                      v113 = 2;
                    }

                    else
                    {
                      v113 = 0;
                    }

                    v108 = *(this + 705);
                    v106 = *(this + 384);
                  }

                  else
                  {
                    v113 = 0;
                    v112 = v192;
                    v111 = v193;
                    v110 = HIDWORD(v195);
                    v109 = msgh_id;
                  }

                  *(this + 705) = v108 & 0xFD | v113;
                  *(this + 105) = HIDWORD(v215);
                  *(this + 106) = v215;
                  *(this + 62) = v37;
                  *(this + 63) = v38;
                  *(this + 64) = v39;
                  *(this + 65) = v226;
                  v114 = v106 & 0xFFFFF81F | (v35 >> 1) & 0x20 | ((HIDWORD(v214) != 0) << 9) | ((v233 != 0) << 10);
                  *(this + 107) = v214;
                  *(this + 108) = v213;
                  LOWORD(v114) = v114 | ((v227 != 0) << 6);
                  *(this + 109) = v208;
                  *(this + 384) = v114 | ((HIDWORD(v203) != 0) << 7) | ((v203 != 0) << 8);
                  *(this + 110) = v110;
                  *(this + 56) = v194;
                  *(this + 114) = v216;
                  *(this + 89) = v232;
                  *(this + 90) = v42;
                  *(this + 182) = v217;
                  if (v109)
                  {
                    v115 = CA::Render::Shmem::new_shmem(v109, v158, 0, 3);
                    if (v115)
                    {
                      v116 = v115;
                      *(this + 705) = *(this + 705) & 0xFB | v157;
                      CA::Display::DisplayTimingsControl::set_timings_shmem(this + 116, v115);
                      if (atomic_fetch_add(v116 + 2, 0xFFFFFFFF) == 1)
                      {
                        (*(*v116 + 16))(v116);
                      }
                    }

                    else
                    {
                      mach_port_deallocate(*MEMORY[0x1E69E9A60], v109);
                    }
                  }

                  os_unfair_lock_lock(this + 18);
                  v117 = *(this + 16);
                  if (v117)
                  {
                    CFRelease(v117);
                  }

                  *(this + 16) = v229;
                  v118 = *(this + 17);
                  if (v118)
                  {
                    CFRelease(v118);
                  }

                  *(this + 17) = v112;
                  v119 = *(this + 18);
                  if (v119)
                  {
                    CFRelease(v119);
                  }

                  *(this + 18) = v228;
                  CA::WindowServer::Display::ModeSet::operator=(v187, &v235);
                  *&v120 = v221;
                  *(&v120 + 1) = v220;
                  *&v121 = vrev64_s32(*&v201);
                  *(&v121 + 1) = v200;
                  v122 = v185;
                  *(this + 31) = v186;
                  *(this + 32) = v111;
                  v123 = v222;
                  *v76 = v223;
                  *(this + 280) = v123;
                  *&v123 = v230;
                  *(this + 37) = v231;
                  *(this + 38) = v123;
                  *(this + 39) = v224 | (v122 << 32);
                  *(this + 20) = v120;
                  *(this + 84) = HIDWORD(v202);
                  *(this + 340) = v202;
                  *(this + 344) = v121;
                  *(this + 90) = v199;
                  *(this + 368) = HIDWORD(v211) != 0;
                  *(this + 369) = v211 != 0;
                  v124 = v188;
                  *(this + 376) = v189;
                  *(this + 392) = v124;
                  os_unfair_lock_unlock(this + 18);
                  if (v233 != v212 && (*(this + 384) & 0x400) != 0)
                  {
                    *&v245[0].msgh_bits = MEMORY[0x1E69E9820];
                    *&v245[0].msgh_remote_port = 3221225472;
                    *&v245[0].msgh_voucher_port = ___ZN2CA7Display11DisplayLink22display_force_power_onEPNS0_7DisplayE_block_invoke;
                    *&v245[1].msgh_bits = &__block_descriptor_40_e9_v16__0_v8l;
                    *&v245[1].msgh_remote_port = this;
                    CA::Display::DisplayLink::foreach_display_link(v245);
                  }

                  if (v101 != v37 || v103 != v39 || v210 != v209)
                  {
                    *&v245[0].msgh_bits = MEMORY[0x1E69E9820];
                    *&v245[0].msgh_remote_port = 3221225472;
                    *&v245[0].msgh_voucher_port = ___ZN2CA7Display11DisplayLink28display_refresh_rate_changedEPNS0_7DisplayE_block_invoke;
                    *&v245[1].msgh_bits = &__block_descriptor_40_e9_v16__0_v8l;
                    *&v245[1].msgh_remote_port = this;
                    CA::Display::DisplayLink::foreach_display_link(v245);
                    CAFrameRateRangeGroupShouldUpdate(*(this + 26));
                    CADynamicFrameRateSourceRecomputeFrameInterval(*(this + 26));
                  }

                  if ((*(this + 384) & 0x800) != 0)
                  {
                    *&v125 = vceq_s32(v197, v225);
                    if ((v125 & 1) == 0)
                    {
                      v126 = *(this + 10);
                      v232 = v125;
                      [v126 didChangeValueForKey:@"seed"];
                      *&v125 = v232;
                    }

                    if ((BYTE4(v125) & 1) == 0)
                    {
                      [*(this + 10) didChangeValueForKey:{@"connectionSeed", *&v125}];
                    }

                    if ((v206 & 1) == 0)
                    {
                      [*(this + 10) didChangeValueForKey:{@"uniqueId", *&v125}];
                    }

                    if (!v205)
                    {
                      [*(this + 10) didChangeValueForKey:{@"containerId", *&v125}];
                    }

                    if (!v204)
                    {
                      [*(this + 10) didChangeValueForKey:{@"productName", *&v125}];
                    }

                    if ((v65 & 1) == 0)
                    {
                      [*(this + 10) didChangeValueForKey:{@"availableModes", *&v125}];
                      [*(this + 10) didChangeValueForKey:@"supportedHDRModes"];
                      [*(this + 10) didChangeValueForKey:@"preferredHDRModes"];
                    }

                    if ((v191 & 1) == 0)
                    {
                      [*(this + 10) didChangeValueForKey:{@"currentMode", *&v125}];
                    }

                    if ((v190 & 1) == 0)
                    {
                      [*(this + 10) didChangeValueForKey:{@"preferredMode", *&v125}];
                    }

                    if (v99 != v40)
                    {
                      [*(this + 10) didChangeValueForKey:{@"latency", *&v125}];
                    }

                    if ((v219 & 1) == 0)
                    {
                      [*(this + 10) didChangeValueForKey:@"bounds"];
                    }

                    if (!v184)
                    {
                      [*(this + 10) didChangeValueForKey:@"frame"];
                    }

                    if (v234 != v183)
                    {
                      [*(this + 10) didChangeValueForKey:@"overscanned"];
                    }

                    if (v218)
                    {
                      [*(this + 10) didChangeValueForKey:@"overscanAmounts"];
                      [*(this + 10) didChangeValueForKey:@"overscanAmount"];
                    }

                    if (v182 != HIDWORD(v233))
                    {
                      [*(this + 10) didChangeValueForKey:@"overscanAdjustment"];
                    }

                    if (v207)
                    {
                      [*(this + 10) didChangeValueForKey:@"logicalScale"];
                    }

                    if (v181 != v217)
                    {
                      [*(this + 10) didChangeValueForKey:@"pointScale"];
                    }

                    if (v180)
                    {
                      [*(this + 10) didChangeValueForKey:@"physicalSize"];
                    }

                    if (v179)
                    {
                      [*(this + 10) didChangeValueForKey:@"nativeSize"];
                    }

                    if (v178 != v216)
                    {
                      [*(this + 10) didChangeValueForKey:@"transportType"];
                    }

                    if (v176 != v177)
                    {
                      [*(this + 10) didChangeValueForKey:@"cloned"];
                    }

                    if (v174 != v175)
                    {
                      [*(this + 10) didChangeValueForKey:@"cloning"];
                    }

                    if (v172 != v173)
                    {
                      [*(this + 10) didChangeValueForKey:@"cloningSupported"];
                    }

                    if (v170 != v171)
                    {
                      [*(this + 10) didChangeValueForKey:@"supportsExtendedColors"];
                    }

                    if (v169 != HIDWORD(v215))
                    {
                      [*(this + 10) didChangeValueForKey:@"tag"];
                    }

                    if (v168 != v215)
                    {
                      [*(this + 10) didChangeValueForKey:@"processId"];
                    }

                    if (v101 != v37)
                    {
                      [*(this + 10) didChangeValueForKey:@"refreshRate"];
                    }

                    if (v103 != v39)
                    {
                      [*(this + 10) didChangeValueForKey:@"heartbeatRate"];
                    }

                    if (v210 != v209)
                    {
                      [*(this + 10) didChangeValueForKey:@"minimumFrameDuration"];
                    }

                    if (HIDWORD(v214) != v167)
                    {
                      [*(this + 10) didChangeValueForKey:@"dmrrEnabled"];
                    }

                    if (v233 != v212)
                    {
                      [*(this + 10) didChangeValueForKey:@"forceFixedRateLinksEnabled"];
                    }

                    if (v166 != v214)
                    {
                      [*(this + 10) didChangeValueForKey:@"nativeOrientation"];
                    }

                    if (v165 != v213)
                    {
                      [*(this + 10) didChangeValueForKey:@"currentOrientation"];
                    }

                    if (v164)
                    {
                      [*(this + 10) didChangeValueForKey:@"safeBounds"];
                    }

                    if (!v163)
                    {
                      [*(this + 10) didChangeValueForKey:@"externalDisplayAttributes"];
                    }

                    if (v161)
                    {
                      [*(this + 10) didChangeValueForKey:@"preferences"];
                      [*(this + 10) didChangeValueForKey:@"allowedHDRModes"];
                    }

                    if (v160 != HIDWORD(v211))
                    {
                      [*(this + 10) didChangeValueForKey:@"currentPreset"];
                      [*(this + 10) didChangeValueForKey:@"isReference"];
                    }

                    if (v159 != v211)
                    {
                      [*(this + 10) didChangeValueForKey:@"isReferenceLimited"];
                    }
                  }

                  *(this + 384) |= 0x800u;
                  ServerPort = v198;
                  v5 = v162;
                  goto LABEL_340;
                }

                v51 = CFEqual(v50, v46) != 0;
              }

              v204 = v51;
              goto LABEL_67;
            }

            v49 = CFEqual(v48, v43) != 0;
          }

          v205 = v49;
          goto LABEL_61;
        }

        v47 = CFEqual(v45, v229) != 0;
      }

      LODWORD(v206) = v47;
      goto LABEL_55;
    }

    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v10 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      v242[0] = 0;
      v11 = "CALocalDisplayUpdateBlock returned NO\n";
      v12 = v242;
      v13 = v10;
      v14 = 2;
LABEL_346:
      _os_log_error_impl(&dword_183AA6000, v13, OS_LOG_TYPE_ERROR, v11, v12, v14);
      goto LABEL_340;
    }

    goto LABEL_340;
  }

  if (!ServerPort)
  {
    return pthread_mutex_unlock((this + 8));
  }

  if (!v2)
  {
LABEL_343:
    mach_port_deallocate(*MEMORY[0x1E69E9A60], ServerPort);
    return pthread_mutex_unlock((this + 8));
  }

  v240 = 0u;
  v241 = 0u;
  v235 = 0u;
  v236 = 0;
  v238 = 0u;
  v239 = 0u;
  v5 = &v239;
  v237 = &v238;
  LODWORD(v241) = 1065353216;
  memset(v244, 0, sizeof(v244));
  memset(v243, 0, sizeof(v243));
  memset(v242, 0, sizeof(v242));
  bzero(&v245[0].msgh_size, 0x35CuLL);
  *&v245[1].msgh_bits = *MEMORY[0x1E69E99E0];
  v245[1].msgh_remote_port = v2;
  reply_port = mig_get_reply_port();
  v245[0].msgh_bits = 5395;
  *&v245[0].msgh_remote_port = __PAIR64__(reply_port, ServerPort);
  *&v245[0].msgh_voucher_port = 0x9D2800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(v245);
    msgh_local_port = v245[0].msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v31 = mach_msg(v245, 3, 0x24u, 0x360u, msgh_local_port, 0, 0);
  msgh_remote_port = v31;
  if ((v31 - 268435458) <= 0xE && ((1 << (v31 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v245[0].msgh_local_port);
    goto LABEL_337;
  }

  if (v31)
  {
    mig_dealloc_reply_port(v245[0].msgh_local_port);
    goto LABEL_337;
  }

  if (v245[0].msgh_id == 71)
  {
    msgh_remote_port = 4294966988;
  }

  else if (v245[0].msgh_id == 40332)
  {
    if ((v245[0].msgh_bits & 0x80000000) == 0)
    {
      if (v245[0].msgh_size == 36)
      {
        msgh_remote_port = 4294966996;
        if (v245[1].msgh_remote_port)
        {
          if (v245[0].msgh_remote_port)
          {
            msgh_remote_port = 4294966996;
          }

          else
          {
            msgh_remote_port = v245[1].msgh_remote_port;
          }
        }
      }

      else
      {
        msgh_remote_port = 4294966996;
      }

      goto LABEL_336;
    }

    msgh_remote_port = 4294966996;
    if (v245[1].msgh_bits == 5 && v245[0].msgh_size - 472 <= 0x180 && !v245[0].msgh_remote_port && HIBYTE(v245[1].msgh_local_port) == 1 && HIBYTE(v245[2].msgh_size) == 1 && HIBYTE(v245[2].msgh_id) == 1 && HIBYTE(v245[3].msgh_local_port) == 1 && WORD3(v246) << 16 == 1114112)
    {
      v198 = ServerPort;
      if (HIDWORD(v247) <= 0x40 && v245[0].msgh_size - 472 >= HIDWORD(v247))
      {
        v129 = (HIDWORD(v247) + 3) & 0xFFFFFFFC;
        ServerPort = v198;
        if (v245[0].msgh_size < v129 + 472)
        {
          goto LABEL_336;
        }

        v130 = v245 + v129;
        v131 = *(v130 + 33);
        if (v131 <= 0x40)
        {
          v132 = v245[0].msgh_size - v129;
          if (v245[0].msgh_size - v129 - 472 >= v131)
          {
            v133 = (v131 + 3) & 0xFFFFFFFC;
            ServerPort = v198;
            v5 = &v239;
            if (v132 < v133 + 472)
            {
              goto LABEL_336;
            }

            v134 = v130 - 64;
            v135 = &v130[v133 - 64];
            v136 = *(v135 + 204);
            if (v136 <= 0x100)
            {
              v137 = v132 - v133;
              if (v137 - 472 >= v136)
              {
                v138 = (v136 + 3) & 0xFFFFFFFC;
                ServerPort = v198;
                v5 = &v239;
                if (v137 != v138 + 472)
                {
                  goto LABEL_336;
                }

                v139 = v135 - 64;
                v140 = v135 - 64 + v138;
                if (v245[1].msgh_voucher_port == *(v140 + 272))
                {
                  v141 = v140 - 256;
                  if (__PAIR64__(v245[3].msgh_bits, v245[2].msgh_remote_port) == *(v140 + 276) && v245[3].msgh_voucher_port == *(v140 + 412))
                  {
                    v225 = v247;
                    mig_strncpy(v244, &v248, 64);
                    mig_strncpy(v243, v134 + 200, 64);
                    mig_strncpy(v242, (v139 + 272), 256);
                    v142 = *&v245[1].msgh_size;
                    v234 = *(v141 + 528);
                    v143 = *(v141 + 532);
                    v209 = *&v245[1].msgh_id;
                    v210 = v143;
                    v207 = *&v245[2].msgh_local_port;
                    v144 = *(v141 + 536);
                    v219 = *(v141 + 540);
                    v186 = *(v141 + 548);
                    v193 = *(v141 + 556);
                    v216 = *(v141 + 564);
                    v40 = *(v141 + 568);
                    v146 = *(v141 + 576);
                    v222 = *(v141 + 592);
                    *(&v145 + 1) = *(&v222 + 1);
                    v223 = v146;
                    v35 = *(v141 + 608);
                    HIDWORD(v215) = *(v141 + 612);
                    LODWORD(v215) = *(v141 + 616);
                    *&v145 = *(v141 + 620);
                    v231 = v145;
                    HIDWORD(v233) = *(v141 + 628);
                    *&v145 = *(v141 + 632);
                    v232 = v145;
                    v42 = *(v141 + 640);
                    v217 = *(v141 + 648);
                    *&v145 = *(v141 + 652);
                    v230 = v145;
                    v224 = *(v141 + 660);
                    v185 = *(v141 + 664);
                    v147 = *&v245[3].msgh_size;
                    v206 = *(v141 + 668);
                    v218 = *(v141 + 672);
                    v212 = *(v141 + 676);
                    v37 = *(v141 + 680);
                    v38 = *(v141 + 688);
                    v39 = *(v141 + 696);
                    *&v145 = *(v141 + 704);
                    v226 = v145;
                    HIDWORD(v214) = *(v141 + 712);
                    LODWORD(v214) = *(v141 + 720);
                    v213 = *(v141 + 724);
                    v158 = *(v141 + 728);
                    *&v145 = *(v141 + 736);
                    v221 = v145;
                    *&v145 = *(v141 + 744);
                    v220 = v145;
                    HIDWORD(v202) = *(v141 + 756);
                    v148 = *(v141 + 760);
                    v227 = *(v141 + 764);
                    v208 = *(v141 + 768);
                    *&v145 = *(v141 + 788);
                    v201 = v145;
                    *&v145 = *(v141 + 796);
                    v200 = v145;
                    v64 = *(v141 + 808) == 0;
                    v149 = *(v141 + 820);
                    v188 = *(v141 + 836);
                    v189 = v149;
                    v150 = !v64;
                    HIDWORD(v203) = *(v141 + 772);
                    LODWORD(v203) = *(v141 + 776);
                    v151 = *(v141 + 780);
                    v152 = *(v141 + 784);
                    v199 = *(v141 + 804);
                    HIDWORD(v211) = *(v141 + 812);
                    LODWORD(v211) = *(v141 + 816);
                    LODWORD(v233) = *(v141 + 852);
                    LODWORD(v202) = v148 != 0;
                    HIDWORD(v195) = v151;
                    msgh_id = v245[3].msgh_id;
                    CAVerifyServerReturn(0);
                    if (v244[0])
                    {
                      v229 = CFStringCreateWithCString(0, v244, 0x8000100u);
                    }

                    else
                    {
                      v229 = 0;
                    }

                    if (v243[0])
                    {
                      v192 = CFStringCreateWithCString(0, v243, 0x8000100u);
                    }

                    else
                    {
                      v192 = 0;
                    }

                    if (LOBYTE(v242[0]))
                    {
                      v228 = CFStringCreateWithCString(0, v242, 0x8000100u);
                    }

                    else
                    {
                      v228 = 0;
                    }

                    CA::WindowServer::Display::ModeSet::set_mig_representation(&v235, v142, v219, v147, v218, v212, v153, v154, v156);
                    v155 = MEMORY[0x1E69E9A60];
                    mach_vm_deallocate(*MEMORY[0x1E69E9A60], v142, v234);
                    mach_vm_deallocate(*v155, v209, v210);
                    mach_vm_deallocate(*v155, v207, v144);
                    mach_vm_deallocate(*v155, v147, v206);
                    v41 = v152 - 1;
                    v157 = 4 * v150;
                    LODWORD(v195) = (v35 >> 4) & 1;
                    ServerPort = v198;
                    v34 = v185;
                    v20 = v186;
                    v43 = v192;
                    v21 = v193;
                    goto LABEL_46;
                  }
                }

                msgh_remote_port = 4294966996;
              }
            }
          }
        }
      }

      ServerPort = v198;
      v5 = &v239;
    }
  }

  else
  {
    msgh_remote_port = 4294966995;
  }

LABEL_336:
  mach_msg_destroy(v245);
LABEL_337:
  CAVerifyServerReturn(msgh_remote_port);
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v127 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
  {
    v245[0].msgh_bits = 67109120;
    v245[0].msgh_size = msgh_remote_port;
    v11 = "GetDisplayInfo returned 0x%x\n";
    v12 = v245;
    v13 = v127;
    v14 = 8;
    goto LABEL_346;
  }

LABEL_340:
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v5);
  std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(v238);
  if (v235)
  {
    *(&v235 + 1) = v235;
    operator delete(v235);
  }

  if (ServerPort)
  {
    goto LABEL_343;
  }

  return pthread_mutex_unlock((this + 8));
}

void sub_183B6AAFC(_Unwind_Exception *a1)
{
  CA::WindowServer::Display::ModeSet::~ModeSet((v1 + 624));
  mach_port_deallocate(*MEMORY[0x1E69E9A60], *(v1 + 264));
  pthread_mutex_unlock((v2 + 8));
  _Unwind_Resume(a1);
}

void _XGetDisplayInfo(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v168 = *MEMORY[0x1E69E9840];
  if ((*v1 & 0x80000000) != 0 || v1[1] != 36)
  {
    v4 = -304;
    goto LABEL_7;
  }

  v95 = 0u;
  v96 = 0u;
  src = 0u;
  v94 = 0u;
  *v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  if (v1[9] || v1[10] <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(v2 + 32) = v4;
LABEL_8:
    *(v3 + 24) = *MEMORY[0x1E69E99E0];
    return;
  }

  *(v2 + 36) = 16777473;
  *(v2 + 52) = 16777473;
  *(v2 + 68) = 16777473;
  *(v2 + 84) = 16777473;
  *(v2 + 96) = 0x13000000000000;
  v5 = v1[8];
  bzero(v97, 0x23A8uLL);
  __src = v146;
  v143 = v146;
  v144 = v146;
  v145 = 16;
  v98 = v5;
  CA::Render::post_notification(0x1Bu, 0, v97, 0);
  v6 = v97[0];
  if (v97[0] == 1)
  {
    v7 = v101;
    *(v3 + 128) = v100;
    *(v3 + 144) = v7;
    v8 = v103;
    *(v3 + 160) = v102;
    *(v3 + 176) = v8;
    src = v104;
    v94 = v105;
    v95 = v106;
    v96 = v107;
    v79 = v110;
    v80 = v111;
    *v77 = v108;
    v78 = v109;
    v83 = v114;
    v84 = v115;
    v81 = v112;
    v82 = v113;
    v87 = v118;
    v88 = v119;
    v85 = v116;
    v86 = v117;
    v91 = v122;
    v92 = v123;
    v89 = v120;
    v90 = v121;
    *(v3 + 112) = v99;
    address = 0;
    v9 = v125;
    v10 = MEMORY[0x1E69E9AC8];
    v11 = MEMORY[0x1E69E9A60];
    if (v125)
    {
      v12 = MEMORY[0x1E69E9AC8];
      v13 = (*MEMORY[0x1E69E9AC8] + 8 * v125 - 1) & -*MEMORY[0x1E69E9AC8];
      v14 = MEMORY[0x1E69E9A60];
      vm_allocate(*MEMORY[0x1E69E9A60], &address, v13, 1);
      if (address)
      {
        memcpy(address, &v124, 8 * v9);
        v15 = address;
      }

      else
      {
        v15 = 0;
      }

      v11 = v14;
      v10 = v12;
    }

    else
    {
      v15 = 0;
      LODWORD(v13) = 0;
    }

    *(v3 + 28) = v15;
    v30 = v15 == 0;
    if (v15)
    {
      v18 = v13;
    }

    else
    {
      v18 = 0;
    }

    v31 = v125;
    if (v30)
    {
      v31 = 0;
    }

    v52 = v31;
    *(v3 + 44) = 0;
    *(v3 + 60) = 0;
    address = 0;
    v32 = v143 - __src;
    if (v143 != __src && (v17 = (v32 + *v10 - 1) & -*v10, vm_allocate(*v11, &address, v17, 1), address) && (memcpy(address, __src, v32), address))
    {
      HIDWORD(v75) = -1431655765 * ((v143 - __src) >> 2);
      *(v3 + 76) = address;
    }

    else
    {
      HIDWORD(v75) = 0;
      LODWORD(v17) = 0;
      *(v3 + 76) = 0;
    }

    LODWORD(v75) = v146[48];
    v24 = v128;
    v61 = v130;
    v62 = v129;
    v59 = v126;
    v60 = v131;
    v74 = __PAIR64__(v127, v132);
    v23 = v133;
    v25 = v134;
    v70 = v136;
    v73 = __PAIR64__(v135, v137);
    v26 = v138;
    v27 = v139;
    v72 = __PAIR64__(v140, v141);
    v28 = v148;
    v63 = v149;
    v71 = v150;
    v64 = v151;
    v65 = v147;
    if (object_handle)
    {
      v33 = CA::Render::Shmem::port(object_handle);
      v34 = object_handle;
      *(v3 + 92) = v33;
      if (v34)
      {
        v69 = *(v34 + 2);
      }

      else
      {
        v69 = 0;
      }
    }

    else
    {
      v69 = 0;
      *(v3 + 92) = 0;
    }

    v29 = 0;
    v53 = v153;
    v54 = v154;
    v19 = v157;
    v66 = v158;
    LOBYTE(v67) = v155;
    HIDWORD(v67) = v160;
    LODWORD(v68) = v156;
    v55 = v161;
    v56 = v159;
    v20 = v162;
    v21 = v163;
    v57 = v166;
    v58 = v165;
    v22 = v164;
    BYTE4(v68) = v167;
    v16 = v52;
  }

  else
  {
    v16 = 0;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    LODWORD(v17) = 0;
    v75 = 0;
    v71 = 0;
    v68 = 0;
    v69 = 0;
    v18 = 0;
    v67 = 0;
    v19 = 0;
    v66 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v70 = 0u;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v57 = 0u;
    v58 = 0u;
    v64 = 0;
    v65 = 0u;
    v55 = 0;
    v56 = 0u;
    v53 = 0u;
    v54 = 0;
    v29 = 56;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0;
    v63 = 0;
  }

  if (__src != v144)
  {
    free(__src);
  }

  if ((v6 & 1) == 0)
  {
    *(v3 + 32) = v29;
    goto LABEL_8;
  }

  *(v3 + 40) = v18;
  *(v3 + 56) = 0;
  *(v3 + 72) = 0;
  *(v3 + 88) = v17;
  v35 = *MEMORY[0x1E69E99E0];
  *(v3 + 104) = *MEMORY[0x1E69E99E0];
  v36 = strlen((v3 + 128));
  if ((v36 + 1) >> 32)
  {
    *(v3 + 32) = -304;
    *(v3 + 24) = v35;
  }

  else
  {
    v37 = v18;
    *(v3 + 120) = 0;
    *(v3 + 124) = v36 + 1;
    v38 = (v36 + 4) & 0xFFFFFFFC;
    v39 = v38 + 472;
    v40 = v3 + v38;
    v41 = v40 - 64;
    if (MEMORY[0x1EEE9AC40])
    {
      v42 = mig_strncpy_zerofill((v40 + 136), &src, 64);
    }

    else
    {
      v42 = mig_strncpy((v40 + 136), &src, 64);
    }

    v43 = MEMORY[0x1EEE9AC40];
    *(v41 + 192) = 0;
    *(v41 + 196) = v42;
    v44 = (v42 + 3) & 0xFFFFFFFC;
    v45 = v39 + v44;
    v46 = v41 + v44;
    v47 = v46 - 64;
    v48 = (v46 + 208);
    if (v43)
    {
      v49 = mig_strncpy_zerofill(v48, v77, 256);
    }

    else
    {
      v49 = mig_strncpy(v48, v77, 256);
    }

    *(v47 + 268) = v49;
    *(v47 + 264) = 0;
    v50 = (v49 + 3) & 0xFFFFFFFC;
    v51 = v47 + v50;
    *(v51 + 272) = v37;
    *(v47 + v50 + 276) = 0;
    *(v51 + 284) = v16;
    *(v51 + 288) = 0;
    *(v47 + v50 + 292) = v59;
    *(v51 + 308) = HIDWORD(v74);
    *(v51 + 312) = v24;
    *(v51 + 320) = v62;
    *(v51 + 336) = v61;
    *(v51 + 352) = v60;
    *(v51 + 360) = v74;
    *(v51 + 364) = v23;
    *(v51 + 368) = v25;
    *(v51 + 372) = HIDWORD(v73);
    *(v47 + v50 + 376) = v70;
    *(v51 + 392) = v73;
    *(v51 + 396) = v26;
    *(v51 + 400) = v27;
    *(v51 + 404) = HIDWORD(v72);
    *(v51 + 408) = v72;
    *(v51 + 412) = v17;
    *(v51 + 416) = HIDWORD(v75);
    *(v51 + 420) = v75;
    *(v47 + v50 + 424) = v65;
    *(v51 + 440) = v28;
    *(v51 + 448) = v63;
    *(v51 + 456) = v71;
    *(v51 + 460) = 0;
    *(v47 + v50 + 457) = 0;
    *(v51 + 464) = v64;
    *(v51 + 472) = v69;
    *(v51 + 480) = v53;
    *(v51 + 496) = 0;
    *(v47 + v50 + 500) = v54;
    *(v51 + 508) = v67;
    *(v47 + v50 + 509) = 0;
    *(v51 + 511) = 0;
    *(v51 + 512) = v68;
    *(v51 + 516) = v19;
    *(v51 + 519) = 0;
    *(v47 + v50 + 517) = 0;
    *(v51 + 520) = v66;
    *(v47 + v50 + 521) = 0;
    *(v51 + 523) = 0;
    *(v47 + v50 + 524) = v56;
    *(v51 + 540) = HIDWORD(v67);
    *(v51 + 544) = v55;
    *(v51 + 552) = v20;
    *(v51 + 555) = 0;
    *(v47 + v50 + 553) = 0;
    *(v51 + 556) = v21;
    *(v47 + v50 + 557) = 0;
    *(v51 + 559) = 0;
    *(v51 + 560) = v22;
    *(v47 + v50 + 561) = 0;
    *(v51 + 563) = 0;
    *(v47 + v50 + 564) = v58;
    *(v47 + v50 + 580) = v57;
    *(v51 + 596) = BYTE4(v68);
    *(v51 + 599) = 0;
    *(v47 + v50 + 597) = 0;
    *v3 |= 0x80000000;
    *(v3 + 4) = v45 + v50;
    *(v3 + 24) = 5;
  }
}

void CA::WindowServer::Server::get_display_info(CA::WindowServer::Server *this, CA::Render::Object *a2, char *a3, void *a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 12);
  if (*(a3 + 1) == LODWORD(v4[1].f64[1]))
  {
    v6 = a2;
    pthread_mutex_lock(&v4[36]);
    *a3 = 1;
    v7 = *(v6 + 12);
    *(a3 + 1) = *(v7 + 28);
    if (((*(*v7 + 816))() & 1) == 0)
    {
      a3[16] = 0;
    }

    if (((*(**(v6 + 12) + 816))(*(v6 + 12), 1, a3 + 80, 64, 0) & 1) == 0)
    {
      a3[80] = 0;
    }

    if (((*(**(v6 + 12) + 816))(*(v6 + 12), 2, a3 + 144, 256, 0) & 1) == 0)
    {
      a3[144] = 0;
    }

    v62 = 0u;
    *__p = 0u;
    v58 = 0;
    v60 = 0u;
    memset(v61, 0, sizeof(v61));
    v59 = &v60;
    LODWORD(v62) = 1065353216;
    os_unfair_lock_lock(&v4[25].f64[1]);
    CA::WindowServer::Display::ModeSet::operator=(__p, &v4[26]);
    v8 = v4[41].f64[0];
    v9 = v4[41].f64[1];
    os_unfair_lock_unlock(&v4[25].f64[1]);
    v11 = __p[0];
    v10 = __p[1];
    v12 = 1024;
    if (((__p[1] - __p[0]) >> 3) < 0x400)
    {
      v12 = (__p[1] - __p[0]) >> 3;
    }

    *(a3 + 1074) = v12;
    v13 = *(a3 + 1091);
    *(a3 + 1092) = v13;
    v14 = DWORD2(v62);
    *(a3 + 2238) = DWORD2(v62);
    if (v10 == v11)
    {
      v12 = 0;
    }

    else
    {
      v53 = v9;
      v54 = v8;
      v55 = v6;
      v15 = 0;
      v16 = 0;
      do
      {
        if (v15 >= (__p[1] - __p[0]) >> 3)
        {
          std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
        }

        v17 = *(__p[0] + v15);
        *&a3[8 * v15 + 400] = v17;
        if (*(a3 + 2238))
        {
          *&buf[0].var2 = 0;
          *&buf[0].var0 = 0;
          CA::WindowServer::Display::ModeSet::get_per_mode_info(__p, v17, buf);
          v18 = *(a3 + 1092);
          v19 = *(a3 + 1091);
          v20 = v18 - v19;
          v21 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v19) >> 2) + 1;
          v22 = *(a3 + 1094);
          if (v22 < v21)
          {
            v23 = *(a3 + 1093);
            v24 = (v22 + 1) | ((v22 + 1) >> 1) | (((v22 + 1) | ((v22 + 1) >> 1)) >> 2);
            v25 = v24 | (v24 >> 4) | ((v24 | (v24 >> 4)) >> 8);
            v26 = v25 | (v25 >> 16) | ((v25 | (v25 >> 16)) >> 32);
            if (v26 + 1 > v21)
            {
              v27 = v26 + 1;
            }

            else
            {
              v27 = v21;
            }

            v28 = malloc_type_malloc(12 * v27, 0x1000040CBA68D63uLL);
            v29 = v28;
            v30 = *(a3 + 1091);
            v31 = *(a3 + 1092);
            if (v30 != v31)
            {
              v32 = v28;
              do
              {
                v33 = *v30;
                v32[2] = *(v30 + 2);
                *v32 = v33;
                v32 += 3;
                v30 = (v30 + 12);
              }

              while (v30 != v31);
            }

            if (v19 != v23)
            {
              free(*(a3 + 1091));
            }

            *(a3 + 1091) = v29;
            v18 = &v20[v29];
            *(a3 + 1092) = &v20[v29];
            *(a3 + 1094) = v27;
          }

          *v18 = buf[0];
          v13 = *(a3 + 1092) + 12;
          *(a3 + 1092) = v13;
          v12 = *(a3 + 1074);
        }

        v15 = ++v16;
      }

      while (v12 > v16);
      v14 = *(a3 + 2238);
      v8 = v54;
      v6 = v55;
      v9 = v53;
    }

    *(a3 + 1075) = v8;
    *(a3 + 1076) = v9;
    if (v14 && 0xAAAAAAAAAAAAAAABLL * ((v13 - *(a3 + 1091)) >> 2) != v12)
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v34 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
      {
        v51 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1092) - *(a3 + 1091)) >> 2);
        v52 = *(a3 + 1074);
        buf[0].var0 = 134218240;
        *&buf[0].var1 = v51;
        LOWORD(buf[1].var0) = 2048;
        *(&buf[1].var0 + 2) = v52;
        _os_log_error_impl(&dword_183AA6000, v34, OS_LOG_TYPE_ERROR, "Per Mode Size: %zu != Available Modes Count: %zu", buf, 0x16u);
      }

      *(a3 + 2238) = 0;
      *(a3 + 1092) = *(a3 + 1091);
    }

    *(a3 + 2154) = (*(**(v6 + 12) + 1408))(*(v6 + 12));
    *(a3 + 1078) = (*(*v6 + 160))(v6);
    v35 = *(v6 + 12);
    *(a3 + 8632) = *(v35 + 168);
    *(a3 + 8648) = *(v35 + 152);
    *(a3 + 2166) = *(v35 + 640);
    *(a3 + 2167) = *(v35 + 644);
    *(a3 + 2168) = *(v35 + 648);
    *(a3 + 8676) = *(v35 + 60);
    v36 = *(v6 + 12);
    *(a3 + 2171) = v36[673] & 3;
    v37 = (*(*v36 + 16))(v36);
    *(a3 + 2177) = v37;
    v39 = v38;
    *(a3 + 2178) = v39;
    if (((LOWORD(v4[42].f64[0]) >> 10) & 3 | 4) == 4)
    {
      f64 = &v4[5].f64[1];
    }

    else
    {
      f64 = v4[5].f64;
      if (!LODWORD(v4[5].f64[0]) || !HIDWORD(v4[5].f64[0]))
      {
        f64 = &v4[4].f64[1];
      }
    }

    *(a3 + 8716) = *f64;
    *(a3 + 1120) = (*(*&v4->f64[0] + 760))(v4);
    *(a3 + 1121) = (*(*&v4->f64[0] + 752))(v4);
    *(a3 + 1122) = (*(*&v4->f64[0] + 776))(v4);
    *(a3 + 2246) = (*(*&v4->f64[0] + 784))(v4);
    *(a3 + 2247) = (*(*&v4->f64[0] + 800))(v4);
    a3[8992] = (*(*&v4->f64[0] + 256))(v4);
    *(a3 + 2249) = (*(*&v4->f64[0] + 856))(v4);
    *(a3 + 2250) = LOBYTE(v4[42].f64[0]);
    *(a3 + 1126) = (*(*&v4->f64[0] + 128))(v4);
    *(a3 + 1086) = vcvt_f32_f64(v4[8]);
    v41 = 1.0 / (*(*&v4->f64[0] + 32))(v4);
    *(a3 + 2174) = v41;
    v42 = 1.0 / (*(*&v4->f64[0] + 24))(v4);
    *(a3 + 2175) = v42;
    if ((BYTE1(v4[56].f64[1]) & 0x80) != 0)
    {
      v43 = (*(*&v4->f64[0] + 64))(v4);
      if (((LOWORD(v4[42].f64[0]) >> 10) & 3 | 4) == 4)
      {
        v44 = &v4[5].f64[1];
      }

      else
      {
        v44 = &v4[5];
        if (!LODWORD(v4[5].f64[0]) || !HIDWORD(v4[5].f64[0]))
        {
          v44 = &v4[4].f64[1];
        }
      }

      v45 = v43 / *v44;
      v46 = (*(*&v4->f64[0] + 72))(v4);
      v47 = (*(*&v4->f64[0] + 64))(v4);
      if (((LOWORD(v4[42].f64[0]) >> 10) & 3 | 4) == 4)
      {
        v48 = (v4 + 88);
      }

      else
      {
        v48 = v4 + 5;
        if (!LODWORD(v4[5].f64[0]) || !HIDWORD(v4[5].f64[0]))
        {
          v48 = (v4 + 72);
        }
      }

      v49 = (v46 / v47) / SHIDWORD(v48->f64[0]);
      if (v49 >= v45)
      {
        v49 = v45;
      }

      if (v49 >= *(a3 + 2175))
      {
        v49 = *(a3 + 2175);
      }

      *(a3 + 2175) = v49;
    }

    *(a3 + 2176) = HIDWORD(v4[9].f64[0]);
    memset(buf, 0, 44);
    (*(*&v4->f64[0] + 1384))(buf, v4);
    *(a3 + 9016) = *&buf[0].var0;
    *(a3 + 2258) = buf[1].var1;
    *(a3 + 2259) = buf[1].var2;
    a3[9040] = LOBYTE(v4[56].f64[1]) & 1;
    *(a3 + 2261) = LOWORD(v4[42].f64[0]) >> 13;
    a3[9048] = (LOBYTE(v4[56].f64[1]) & 2) != 0;
    a3[9049] = (LOBYTE(v4[56].f64[1]) & 4) != 0;
    *(a3 + 2263) = (*(*&v4->f64[0] + 832))(v4);
    *(a3 + 2264) = (LOWORD(v4[42].f64[0]) >> 10) & 7;
    *&v50 = vrev64q_s32(*&buf[2].var0).u64[0];
    *(&v50 + 1) = *&buf[2].var2;
    *(a3 + 9060) = v50;
    *(a3 + 2269) = buf[3].var1;
    a3[9080] = (*(*&v4->f64[0] + 136))(v4);
    memset(v56, 0, 40);
    (*(*&v4->f64[0] + 1392))(v56, v4);
    *(a3 + 9081) = v56[0];
    *(a3 + 568) = *(v56 + 8);
    *(a3 + 569) = *(&v56[1] + 8);
    a3[9120] = (*(*&v4->f64[0] + 272))(v4);
    std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v61);
    std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(v60);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    pthread_mutex_unlock(&v4[36]);
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::copy_string(uint64_t a1, int a2, char *a3, size_t a4)
{
  os_unfair_lock_lock((a1 + 27268));
  if (a2 == 2)
  {
    v8 = *(a1 + 27304);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else if (a2 == 1)
  {
    v8 = *(a1 + 27288);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (a2)
    {
      goto LABEL_10;
    }

    v8 = *(a1 + 27272);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (strlen(v8) + 1 <= a4)
  {
    strcpy(a3, v8);
    v9 = 1;
    goto LABEL_12;
  }

LABEL_10:
  v9 = 0;
LABEL_12:
  os_unfair_lock_unlock((a1 + 27268));
  return v9;
}

uint64_t CA::WindowServer::Display::ModeSet::operator=(uint64_t a1, char **a2)
{
  v41[1] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    goto LABEL_54;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = v5 - *a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (v7 - *a1 < v6)
  {
    v9 = v6 >> 3;
    if (v8)
    {
      *(a1 + 8) = v8;
      operator delete(v8);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(v9 >> 61))
    {
      v10 = v7 >> 2;
      if (v7 >> 2 <= v9)
      {
        v10 = v6 >> 3;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<CA::WindowServer::Display::Mode>::__vallocate[abi:nn200100](a1, v11);
    }

    std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
  }

  v12 = *(a1 + 8);
  v13 = v12 - v8;
  if (v12 - v8 >= v6)
  {
    if (v5 != v4)
    {
      memmove(v8, v4, v6);
    }

    v15 = &v8[v6];
  }

  else
  {
    v14 = &v4[v13];
    if (v12 != v8)
    {
      memmove(*a1, *a2, v13);
      v12 = *(a1 + 8);
    }

    if (v5 != v14)
    {
      memmove(v12, v14, v5 - v14);
    }

    v15 = &v12[v5 - v14];
  }

  *(a1 + 8) = v15;
  v16 = a2[3];
  v17 = (a2 + 4);
  if (*(a1 + 40))
  {
    v18 = *(a1 + 32);
    v19 = *(a1 + 24);
    *(a1 + 24) = a1 + 32;
    *(v18 + 16) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    if (v19[1])
    {
      v20 = v19[1];
    }

    else
    {
      v20 = v19;
    }

    if (!v20)
    {
      v30 = 0;
LABEL_42:
      std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(v30);
      goto LABEL_43;
    }

    v21 = std::__tree<std::tuple<unsigned short,unsigned short>>::_DetachedTreeCache::__detach_next(v20);
    if (v16 != v17)
    {
      v22 = v16;
      do
      {
        v23 = v20;
        v20 = v21;
        v24 = *(v22 + 13);
        *(v23 + 13) = v24;
        v25 = *(v22 + 14);
        *(v23 + 14) = v25;
        v41[0] = 0;
        leaf_high = std::__tree<std::tuple<unsigned short,unsigned short>>::__find_leaf_high(a1 + 24, v41, v24, v25);
        std::__tree<std::tuple<unsigned short,unsigned short>>::__insert_node_at((a1 + 24), v41[0], leaf_high, v23);
        if (v21)
        {
          v21 = std::__tree<std::tuple<unsigned short,unsigned short>>::_DetachedTreeCache::__detach_next(v21);
        }

        v27 = *(v22 + 1);
        if (v27)
        {
          do
          {
            v16 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v16 = *(v22 + 2);
            v28 = *v16 == v22;
            v22 = v16;
          }

          while (!v28);
        }

        if (!v20)
        {
          break;
        }

        v22 = v16;
      }

      while (v16 != v17);
    }

    std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(v20);
    if (v21)
    {
      for (i = v21[2]; i; i = i[2])
      {
        v21 = i;
      }

      v30 = v21;
      goto LABEL_42;
    }
  }

LABEL_43:
  if (v16 != v17)
  {
    operator new();
  }

  *(a1 + 80) = *(a2 + 20);
  v31 = a2[8];
  v32 = *(a1 + 56);
  if (!v32)
  {
    goto LABEL_51;
  }

  for (j = 0; j != v32; ++j)
  {
    *(*(a1 + 48) + 8 * j) = 0;
  }

  v34 = *(a1 + 64);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (v34)
  {
    while (v31)
    {
      v35 = *(v31 + 2);
      v34[2] = v35;
      v36 = *(v31 + 3);
      *(v34 + 8) = *(v31 + 8);
      v34[3] = v36;
      v37 = *v34;
      v34[1] = v35;
      inserted = std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__node_insert_multi_prepare(a1 + 48, v35, v34 + 2);
      std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__node_insert_multi_perform((a1 + 48), v34, inserted);
      v31 = *v31;
      v34 = v37;
      if (!v37)
      {
        goto LABEL_51;
      }
    }

    do
    {
      v39 = *v34;
      operator delete(v34);
      v34 = v39;
    }

    while (v39);
  }

  else
  {
LABEL_51:
    if (v31)
    {
      operator new();
    }
  }

LABEL_54:
  *(a1 + 88) = *(a2 + 22);
  return a1;
}

void CA::WindowServer::IOMFBDisplay::hardware_refresh_rate(CA::WindowServer::IOMFBDisplay *this)
{
  if (*(this + 652) == 1 && *(this + 82) == -1)
  {
    (*(*this + 792))(this, 0.0);
    (*(*this + 776))(this);
  }
}

uint64_t CA::WindowServer::AppleInternalDisplay::preferred_frame_duration(CA::WindowServer::AppleInternalDisplay *this)
{
  if ((*(this + 160) & 0x100) != 0)
  {
    return 4;
  }

  else
  {
    return (*(*this + 784))();
  }
}

uint64_t CA::WindowServer::AppleDisplay::max_src_rect_width_by_pipes(CA::WindowServer::AppleDisplay *this, int a2)
{
  if (!a2)
  {
    a2 = *(this + 27265);
  }

  LODWORD(v2) = a2 - 1;
  if (a2)
  {
    v2 = v2;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 3706);
  if (v2 >= (*(this + 3707) - v3) >> 3)
  {
    __assert_rtn("at", "x-small-vector.h", 84, "pos < size () && Out of bounds access");
  }

  return *(v3 + 8 * v2);
}

uint64_t CA::WindowServer::AppleDisplay::max_src_rect_height_by_pipes(CA::WindowServer::AppleDisplay *this, int a2)
{
  if (!a2)
  {
    a2 = *(this + 27266);
  }

  LODWORD(v2) = a2 - 1;
  if (a2)
  {
    v2 = v2;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 3714);
  if (v2 >= (*(this + 3715) - v3) >> 3)
  {
    __assert_rtn("at", "x-small-vector.h", 84, "pos < size () && Out of bounds access");
  }

  return *(v3 + 8 * v2);
}

__n128 CA::WindowServer::IOMFBDisplay::edid_attributes@<Q0>(CA::WindowServer::IOMFBDisplay *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 26588);
  *(a2 + 16) = *(this + 6651);
  *(a2 + 20) = *(this + 26608);
  result = *(this + 26612);
  *(a2 + 24) = result;
  *(a2 + 40) = *(this + 6657);
  return result;
}

__n128 CA::WindowServer::IOMFBDisplay::preset_properties@<Q0>(CA::WindowServer::IOMFBDisplay *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = *(this + 3333);
  result = *(this + 26632);
  v3 = *(this + 26648);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void CA::WindowServer::Display::ModeSet::add_mode(CA::WindowServer::Display::ModeSet *this, const CA::WindowServer::Display::Mode *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = *(this + 1);
  v4 = *(this + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *this) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *this;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CA::WindowServer::Display::Mode>>(v10);
    }

    *(8 * v7) = *a2;
    v6 = 8 * v7 + 8;
    v11 = *(this + 1) - *this;
    v12 = (8 * v7 - v11);
    memcpy(v12, *this, v11);
    v13 = *this;
    *this = v12;
    *(this + 1) = v6;
    *(this + 2) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(this + 1) = v6;
  v14 = *a2;
  if ((*a2 & 0x40000000000000) == 0)
  {
    v15[0] = 0;
    if (!*std::__tree<std::tuple<unsigned short,unsigned short>>::__find_equal<std::tuple<unsigned short,unsigned short>>(this + 24, v15, v14 & 0x3FFF, (v14 >> 14) & 0x3FFF))
    {
      operator new();
    }
  }
}

void CA::WindowServer::Display::ModeSet::set_mig_representation(CA::WindowServer::Display::ModeSet *this, CA::WindowServer::Display::Mode *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, int a6, PerModeInfo *a7, unint64_t a8, unsigned int a9)
{
  v26[2] = *MEMORY[0x1E69E9840];
  *(this + 1) = *this;
  if (*(this + 9))
  {
    v14 = *(this + 8);
    if (v14)
    {
      do
      {
        v15 = *v14;
        operator delete(v14);
        v14 = v15;
      }

      while (v15);
    }

    *(this + 8) = 0;
    v16 = *(this + 7);
    if (v16)
    {
      for (i = 0; i != v16; ++i)
      {
        *(*(this + 6) + 8 * i) = 0;
      }
    }

    *(this + 9) = 0;
  }

  if (a3)
  {
    v18 = 0;
    v19 = 1;
    do
    {
      v20 = *(a2 + v18);
      v25 = v20;
      CA::WindowServer::Display::ModeSet::add_mode(this, &v25);
      if (a5 == a3)
      {
        v21 = &a4[3 * v18];
        v26[0] = v20;
        v26[1] = v26;
        v22 = std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 6, v20);
        v23 = *v21;
        *(v22 + 8) = v21[2];
        v22[3] = v23;
      }

      v18 = v19++;
    }

    while (v18 < a3);
  }

  *(this + 22) = a6;
}

void ___Z29CAFrameRateArbitrationEnabledv_block_invoke()
{
  if (enable_frame_rate_features(void)::once != -1)
  {
    dispatch_once(&enable_frame_rate_features(void)::once, &__block_literal_global_9_18950);
  }

  v0 = enable_frame_rate_features(void)::enabled;
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  if (*&dword_1ED4E9708 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = v0;
  }

  if (*&dword_1ED4E9708 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  CAFrameRateArbitrationEnabled(void)::enabled = v2;
}

void ___ZL26enable_frame_rate_featuresv_block_invoke()
{
  if (CADeviceSupportsOddQuantaFrameRates::once[0] != -1)
  {
    dispatch_once(CADeviceSupportsOddQuantaFrameRates::once, &__block_literal_global_314);
  }

  if (CADeviceSupportsOddQuantaFrameRates::enabled == 1)
  {
    v0 = os_variant_has_factory_content() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  enable_frame_rate_features(void)::enabled = v0;
}

void __CADeviceSupportsOddQuantaFrameRates_block_invoke()
{
  if (CADeviceSupportsAPT::once != -1)
  {
    dispatch_once(&CADeviceSupportsAPT::once, &__block_literal_global_46);
  }

  if (CADeviceSupportsAPT::supports_apt == 1)
  {
    if (CADeviceIsPhone::once != -1)
    {
      dispatch_once(&CADeviceIsPhone::once, &__block_literal_global_227);
    }

    if (CADeviceIsPhone::phone)
    {
      v0 = 1;
    }

    else
    {
      if (CADeviceHasLCDPanel::once != -1)
      {
        dispatch_once(&CADeviceHasLCDPanel::once, &__block_literal_global_110);
      }

      v0 = CADeviceHasLCDPanel::has_lcd ^ 1;
    }
  }

  else
  {
    v0 = 0;
  }

  CADeviceSupportsOddQuantaFrameRates::enabled = v0 & 1;
}

void CA::Display::DisplayTimingsControl::register_frame_interval_range(os_unfair_lock_s *this, CAFrameIntervalRange a2)
{
  if ((this[60]._os_unfair_lock_opaque & 0x200) != 0)
  {
    var2 = a2.var2;
    v3 = *&a2.var0;
    os_unfair_lock_lock(this + 23);
    v6.var2 = var2;
    *&v6.var0 = v3;
    CA::Display::DisplayTimingsControl::_register_frame_interval_range(this, v6);
    CA::Display::DisplayTimingsControl::update_frame_interval_request(this);

    os_unfair_lock_unlock(this + 23);
  }
}

void std::vector<CA::Display::DisplayLinkItem *>::insert(uint64_t a1, char *__src, char *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Display::DisplayLinkItem *>>(v14);
    }

    v16 = (8 * v15);
    v17 = 8 * v15;
    if (!v15)
    {
      if (v12 < 1)
      {
        if (v10 == __src)
        {
          v20 = 1;
        }

        else
        {
          v20 = v12 >> 2;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Display::DisplayLinkItem *>>(v20);
      }

      v16 = (v16 - (((v12 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
      v17 = v16;
    }

    *v16 = *a3;
    v21 = v17 + 8;
    memcpy((v17 + 8), __src, *(a1 + 8) - __src);
    v22 = *a1;
    v26 = (v21 + *(a1 + 8) - __src);
    *(a1 + 8) = __src;
    v23 = (__src - v22);
    v24 = v16 - (__src - v22);
    memcpy(v24, v22, v23);
    v25 = *a1;
    *a1 = v24;
    *(a1 + 8) = v26;
    if (v25)
    {

      operator delete(v25);
    }
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    *(a1 + 8) = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    *(a1 + 8) = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = *(a1 + 8);
    }

    v18 = v9 <= a3 || __src > a3;
    v19 = 8;
    if (v18)
    {
      v19 = 0;
    }

    *__src = *&a3[v19];
  }
}

void sub_183B6D178(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CA::Display::DisplayLink::set_display_active(CA::Display::DisplayLink *this, int a2)
{
  pthread_mutex_lock((this + 56));
  CA::Display::DisplayLink::set_display_active_locked(this, a2);

  return pthread_mutex_unlock((this + 56));
}

void CA::Display::DisplayLink::set_display_active_locked(CA::Display::DisplayLink *this, int a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (*(this + 172) != a2)
  {
    *(this + 172) = a2;
    v5 = *(this + 15);
    v4 = *(this + 16);
    v6 = v4 - v5;
    if (v4 == v5)
    {
      pthread_mutex_unlock((this + 56));

      pthread_mutex_lock((this + 56));
    }

    else
    {
      if (v6 > 0x1000)
      {
        v7 = malloc_type_malloc(v4 - v5, 0x97CE254CuLL);
      }

      else
      {
        MEMORY[0x1EEE9AC00](this);
        v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v7, v6);
      }

      v8 = 0;
      if ((v6 >> 3) <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v6 >> 3;
      }

      do
      {
        v10 = *(*(this + 15) + 8 * v8);
        *&v7[8 * v8] = v10;
        CFRetain(*(v10 + 256));
        ++v8;
      }

      while (v9 != v8);
      pthread_mutex_unlock((this + 56));
      v11 = 0;
      do
      {
        v12 = *&v7[8 * v11];
        pthread_mutex_lock((v12 + 136));
        CA::Display::DisplayLinkItem::set_display_active(v12, a2);
        pthread_mutex_unlock((v12 + 136));
        CFRelease(*(v12 + 256));
        ++v11;
      }

      while (v9 != v11);
      pthread_mutex_lock((this + 56));
      if (v6 > 0x1000)
      {
        free(v7);
      }
    }
  }
}

void sub_183B6D3A8(_Unwind_Exception *a1)
{
  pthread_mutex_unlock((v2 + 136));
  pthread_mutex_lock((v1 + 56));
  _Unwind_Resume(a1);
}

uint64_t CADisplayTimerCreate(uint64_t a1, _OWORD *a2, _OWORD *a3, double a4, double a5)
{
  if (CADisplayTimerGetTypeID::once != -1)
  {
    dispatch_once(&CADisplayTimerGetTypeID::once, &__block_literal_global_7600);
  }

  Instance = _CFRuntimeCreateInstance();
  v11 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 850045863;
    *(Instance + 24) = 0u;
    *(Instance + 40) = 0u;
    *(Instance + 56) = 0u;
    *(Instance + 72) = 0;
    *(Instance + 80) = 1;
    v12 = MEMORY[0x1E695D7C8];
    *(Instance + 88) = Instance;
    *(Instance + 96) = v12;
    *(Instance + 104) = MEMORY[0x1E695D7C0];
    *(Instance + 112) = 0;
    v13 = mk_timer_create();
    *(v11 + 120) = v13;
    if (v13)
    {
      v14 = CFMachPortCreateWithPort(0, v13, display_timer_callback, (v11 + 80), 0);
      *(v11 + 128) = v14;
      if (v14)
      {
        RunLoopSource = CFMachPortCreateRunLoopSource(0, v14, -1);
        *(v11 + 136) = RunLoopSource;
        if (RunLoopSource)
        {
          *(v11 + 200) = 1;
          *(v11 + 264) = 0;
          *(v11 + 232) = CAHostTimeWithTime(a4);
          v16 = CAHostTimeWithTime(a5);
          *(v11 + 152) = 0u;
          *(v11 + 256) = v16;
          *(v11 + 208) = v16;
          *(v11 + 216) = v16;
          *(v11 + 144) = a1;
          *(v11 + 168) = 0u;
          if (a2)
          {
            v17 = a2[1];
            *(v11 + 152) = *a2;
            *(v11 + 168) = v17;
          }

          *(v11 + 184) = 0;
          *(v11 + 192) = 0;
          if (a3)
          {
            *(v11 + 184) = *a3;
          }

          return v11;
        }
      }

      CADisplayTimerInvalidate(v11);
      CFRelease(v11);
    }

    return 0;
  }

  return v11;
}

uint64_t CADisplayTimerAddToRunLoop(uint64_t result, __CFRunLoop *a2, const __CFString *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    v5 = result;
    pthread_mutex_lock((result + 16));
    CFRunLoopAddSource(a2, *(v5 + 136), a3);
    v6 = mach_absolute_time();
    v7 = *(v5 + 264);
    v8 = *(v5 + 216);
    v13[0] = 0;
    v13[1] = v7;
    v13[2] = v8;
    v14[0] = 0;
    phase = get_phase(v13, v6, v14);
    v10 = v6 - phase + v14[0];
    if (!phase)
    {
      v10 = v6;
    }

    *(v5 + 232) = v10;
    mk_timer_cancel();
    *(v5 + 200) = 1;
    v11 = *(v5 + 248);
    if (*(v5 + 232) <= v11)
    {
      v11 = 0;
    }

    *(v5 + 240) = v11;
    mk_timer_arm_leeway();
    *(v5 + 200) = 0;
    v12 = *(v5 + 192);
    if (v12)
    {
      v12(v5, 1, *(v5 + 232), *(v5 + 216), *(v5 + 184));
    }

    return pthread_mutex_unlock((v5 + 16));
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Display::DisplayLinkItem *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
}

uint64_t CA::Display::DisplayLinkItem::set_display_active(uint64_t this, int a2)
{
  v2 = *(this + 324);
  if (((((v2 & 0x10) == 0) ^ a2) & 1) == 0)
  {
    v4 = this;
    v5 = a2 ? 16 : 0;
    *(this + 324) = v2 & 0xEF | v5;
    if ((v2 & 1) == 0)
    {
      [*(this + 256) willChangeValueForKey:@"active"];
      if (a2)
      {
        v6 = 8;
      }

      else
      {
        v6 = 0;
      }

      *(v4 + 324) = *(v4 + 324) & 0xF7 | v6;
      v7 = *(v4 + 256);

      return [v7 didChangeValueForKey:@"active"];
    }
  }

  return this;
}

void CA::Display::DisplayTimingsControl::_register_frame_interval_range(CA::Display::DisplayTimingsControl *this, CAFrameIntervalRange a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = a2;
  if (!a2.var0)
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v7 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_183AA6000, v7, OS_LOG_TYPE_ERROR, "CAFrameIntervalRange.minimum = 0 should not be registered.", buf, 2u);
    }

    return;
  }

  v4 = *(this + 14);
  v3 = *(this + 15);
  v2 = this + 112;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 2);
  if (v5 >= 0x20)
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v6 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_183AA6000, v6, OS_LOG_TYPE_DEFAULT, "CADisplayTimingsControl too many requests.", buf, 2u);
    }

    return;
  }

  if (v3 == v4)
  {
    goto LABEL_22;
  }

  do
  {
    v8 = v5 >> 1;
    v9 = &v4[12 * (v5 >> 1)];
    if (*v9 > a2.var0)
    {
      goto LABEL_20;
    }

    if (*v9 != a2.var0)
    {
      goto LABEL_19;
    }

    v10 = v9[1];
    if (v10 > a2.var1)
    {
      goto LABEL_20;
    }

    if (v10 == a2.var1)
    {
      v11 = v9[2];
      v12 = v5 + ~v8;
      v13 = (v9 + 3);
      if (v11 <= a2.var2)
      {
        v4 = v13;
        v8 = v12;
      }
    }

    else
    {
LABEL_19:
      v4 = (v9 + 3);
      v8 = v5 + ~v8;
    }

LABEL_20:
    v5 = v8;
  }

  while (v8);
  v3 = v4;
LABEL_22:
  std::vector<CAFrameIntervalRange>::insert(v2, v3, &v14);
}

void CA::Display::DisplayTimingsControl::update_frame_interval_range(os_unfair_lock_s *this, CAFrameIntervalRange a2, CAFrameIntervalRange a3)
{
  if ((this[60]._os_unfair_lock_opaque & 0x200) != 0)
  {
    var2 = a3.var2;
    v4 = *&a3.var0;
    v5 = a2.var2;
    v6 = *&a2.var0;
    os_unfair_lock_lock(this + 23);
    v9.var2 = v5;
    *&v9.var0 = v6;
    CA::Display::DisplayTimingsControl::_unregister_frame_interval_range(this, v9);
    v10.var2 = var2;
    *&v10.var0 = v4;
    CA::Display::DisplayTimingsControl::_register_frame_interval_range(this, v10);
    CA::Display::DisplayTimingsControl::update_frame_interval_request(this);

    os_unfair_lock_unlock(this + 23);
  }
}

void CA::WindowServer::IOMFBDisplay::register_frame_interval_range(os_unfair_lock_s *this, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
{
  v77 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 7061);
  if (byte_1ED4E9846 == 1)
  {
    memset(v70, 0, sizeof(v70));
    X::Stream::printf(v70, "  Existing clients: %ld\n", 0xAAAAAAAAAAAAAAABLL * ((*&this[7064]._os_unfair_lock_opaque - *&this[7062]._os_unfair_lock_opaque) >> 3));
    v62 = *&this[7062]._os_unfair_lock_opaque;
    for (i = *&this[7064]._os_unfair_lock_opaque; v62 != i; v62 += 24)
    {
      v64 = " compat";
      if ((*(v62 + 20) & 2) == 0)
      {
        v64 = "";
      }

      v65 = " suspended";
      if ((*(v62 + 20) & 1) == 0)
      {
        v65 = "";
      }

      X::Stream::printf(v70, "    %s[%d]: %u %u %u%s%s\n", "", *v62, *(v62 + 8), *(v62 + 12), *(v62 + 16), v64, v65);
    }

    v66 = x_stream_finish(v70);
    if (v66)
    {
      v67 = v66;
      if (x_log_get_frame_rate(void)::once != -1)
      {
        dispatch_once(&x_log_get_frame_rate(void)::once, &__block_literal_global_20391);
      }

      v68 = x_log_get_frame_rate(void)::log;
      if (os_log_type_enabled(x_log_get_frame_rate(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110402;
        *&buf[4] = a3;
        *&buf[8] = 1024;
        *&buf[10] = a4;
        *&buf[14] = 1024;
        *v72 = a5;
        *&v72[4] = 1024;
        *&v72[6] = a6;
        v73 = 1024;
        v74 = a2;
        v75 = 2080;
        v76 = v67;
        _os_log_impl(&dword_183AA6000, v68, OS_LOG_TYPE_DEFAULT, "CAFrameRateServer: register_frame_interval_range %u %u %u (%d) from %d\n%s", buf, 0x2Au);
      }

      free(v67);
    }
  }

  v13 = *&this[7064]._os_unfair_lock_opaque;
  v14 = *&this[7062]._os_unfair_lock_opaque;
  v15 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 3);
  if (v13 == v14)
  {
LABEL_9:
    if (v15 >= 0x40)
    {
      if (x_log_get_frame_rate(void)::once != -1)
      {
        dispatch_once(&x_log_get_frame_rate(void)::once, &__block_literal_global_20391);
      }

      v19 = x_log_get_frame_rate(void)::log;
      if (os_log_type_enabled(x_log_get_frame_rate(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_183AA6000, v19, OS_LOG_TYPE_DEFAULT, "CAFrameRateServer: too many requests!", buf, 2u);
      }

      goto LABEL_88;
    }

    if (!a3)
    {
      if (x_log_get_frame_rate(void)::once != -1)
      {
        dispatch_once(&x_log_get_frame_rate(void)::once, &__block_literal_global_20391);
      }

      v46 = x_log_get_frame_rate(void)::log;
      if (os_log_type_enabled(x_log_get_frame_rate(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_183AA6000, v46, OS_LOG_TYPE_ERROR, "CAFrameRateServer: invalid interval", buf, 2u);
      }

      goto LABEL_88;
    }

    *buf = a2;
    *&buf[4] = 0;
    *&buf[8] = a3;
    *&buf[12] = a4;
    *v72 = a5;
    if (a6)
    {
      v20 = 2;
    }

    else
    {
      v20 = 0;
    }

    v72[4] = v20;
    if (a2)
    {
      [(CAProcessMonitor *)CA::WindowServer::IOMFBDisplay::process_monitor(this) addMonitoringProcess:a2];
      v14 = *&this[7062]._os_unfair_lock_opaque;
      v13 = *&this[7064]._os_unfair_lock_opaque;
    }

    v21 = v13;
    v22 = v13 - v14;
    if (v13 == v14)
    {
LABEL_31:
      v31 = *&this[7066]._os_unfair_lock_opaque;
      if (v21 >= v31)
      {
        v49 = 0xAAAAAAAAAAAAAAABLL * (v22 >> 3) + 1;
        if (v49 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
        }

        v50 = v13 - v14;
        v51 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v14) >> 3);
        if (2 * v51 > v49)
        {
          v49 = 2 * v51;
        }

        if (v51 >= 0x555555555555555)
        {
          v52 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v52 = v49;
        }

        if (v52)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<CAFrameIntervalRequest>>(v52);
        }

        v54 = 8 * (v50 >> 3);
        v55 = v54;
        if (!(0xAAAAAAAAAAAAAAABLL * (v50 >> 3)))
        {
          if (v50 < 1)
          {
            if (v13 == v14)
            {
              v56 = 1;
            }

            else
            {
              v56 = 0x5555555555555556 * (v50 >> 3);
            }

            std::__allocate_at_least[abi:nn200100]<std::allocator<CAFrameIntervalRequest>>(v56);
          }

          v54 -= 24 * ((1 - 0x5555555555555555 * (v50 >> 3)) >> 1);
          v55 = v54;
        }

        v57 = *buf;
        *(v54 + 16) = *v72;
        *v54 = v57;
        v58 = v55 + 24;
        memcpy((v55 + 24), v13, *&this[7064]._os_unfair_lock_opaque - v13);
        v69 = (v58 + *&this[7064]._os_unfair_lock_opaque - v13);
        *&this[7064]._os_unfair_lock_opaque = v13;
        v59 = *&this[7062]._os_unfair_lock_opaque;
        v60 = (v54 - (v13 - v59));
        memcpy(v60, v59, v13 - v59);
        v61 = *&this[7062]._os_unfair_lock_opaque;
        *&this[7062]._os_unfair_lock_opaque = v60;
        *&this[7064]._os_unfair_lock_opaque = v69;
        if (v61)
        {
          operator delete(v61);
        }

        goto LABEL_87;
      }

      if (v13 != v21)
      {
        v32 = v13 + 24;
        v33 = v21;
        if (v21 >= 0x18)
        {
          v33 = v21 + 24;
          v34 = *(v21 - 24);
          *(v21 + 16) = *(v21 - 8);
          *v21 = v34;
        }

        *&this[7064]._os_unfair_lock_opaque = v33;
        if (v21 != v32)
        {
          memmove(v13 + 24, v13, v21 - v32);
          v33 = *&this[7064]._os_unfair_lock_opaque;
        }

        v35 = v33 <= buf || v13 > buf;
        v36 = 24;
        if (v35)
        {
          v36 = 0;
        }

        v37 = *&buf[v36];
        *(v13 + 2) = *&buf[v36 + 16];
        *v13 = v37;
        goto LABEL_87;
      }

      v53 = *buf;
      *(v21 + 16) = *v72;
      *v21 = v53;
      v48 = (v21 + 24);
      goto LABEL_77;
    }

    v23 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 3);
    v13 = v14;
    while (1)
    {
      v24 = v23 >> 1;
      v25 = &v13[24 * (v23 >> 1)];
      v26 = *(v25 + 2);
      if (v26 <= a3)
      {
        if (v26 != a3)
        {
          goto LABEL_29;
        }

        v27 = *(v25 + 3);
        if (v27 <= a4)
        {
          break;
        }
      }

LABEL_30:
      v23 = v24;
      if (!v24)
      {
        goto LABEL_31;
      }
    }

    if (v27 == a4)
    {
      v28 = *(v25 + 4);
      v29 = v23 + ~v24;
      v30 = v25 + 24;
      if (v28 <= a5)
      {
        v13 = v30;
        v24 = v29;
      }

      goto LABEL_30;
    }

LABEL_29:
    v13 = v25 + 24;
    v24 = v23 + ~v24;
    goto LABEL_30;
  }

  v16 = 0;
  if (v15 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 3);
  }

  v18 = *&this[7062]._os_unfair_lock_opaque;
  while (*v18 != a2)
  {
    ++v16;
    v18 += 24;
    if (v17 == v16)
    {
      goto LABEL_9;
    }
  }

  if (!a3)
  {
    v47 = &v14[24 * v16];
    if (v13 != v47 + 24)
    {
      memmove(&v14[24 * v16], v47 + 24, v13 - (v47 + 24));
    }

    v48 = v13 - 24;
LABEL_77:
    *&this[7064]._os_unfair_lock_opaque = v48;
LABEL_87:
    CA::WindowServer::IOMFBDisplay::recompute_server_frame_interval_locked(this);
    goto LABEL_88;
  }

  v38 = *(v18 + 20);
  v40 = *(v18 + 8) == a3 && *(v18 + 12) == a4 && *(v18 + 16) == a5;
  if (!v40 || ((((v38 & 2) == 0) ^ a6) & 1) == 0)
  {
    if (a6)
    {
      v41 = 2;
    }

    else
    {
      v41 = 0;
    }

    *(v18 + 20) = v38 & 0xFD | v41;
    v42 = *&this[7062]._os_unfair_lock_opaque;
    v43 = *&this[7064]._os_unfair_lock_opaque;
    v44 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v43 - v42) >> 3));
    *(v18 + 8) = a3;
    *(v18 + 12) = a4;
    *(v18 + 16) = a5;
    *buf = CA::FrameRateArbitrator::RangeSorter<CAFrameIntervalRequest>;
    if (v43 == v42)
    {
      v45 = 0;
    }

    else
    {
      v45 = v44;
    }

    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(CAFrameIntervalRequest const&,CAFrameIntervalRequest const&),CAFrameIntervalRequest*,false>(v42, v43, buf, v45, 1, v12);
    goto LABEL_87;
  }

LABEL_88:
  os_unfair_lock_unlock(this + 7061);
}

void CA::WindowServer::IOMFBDisplay::recompute_server_frame_interval_locked(CA::WindowServer::IOMFBDisplay *this)
{
  v135 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3531);
  v3 = *(this + 3532);
  if (v2 == v3)
  {
LABEL_4:
    v5 = 0;
    goto LABEL_5;
  }

  v4 = v3 - v2;
  if (v4 == 24)
  {
    if ((*(v2 + 20) & 1) == 0)
    {
      LODWORD(v24) = *(v2 + 8);
      LODWORD(v17) = *(v2 + 12);
      v5 = *(v2 + 16);
      goto LABEL_143;
    }

    goto LABEL_4;
  }

  v8 = v4 >> 3;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v9 = &CADeviceNeedsDisplayStateControlDependencyWorkaround::b;
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
    v9 = &CADeviceNeedsDisplayStateControlDependencyWorkaround::b;
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * v8;
  v11 = &CADisplayTimerGetTypeID::type;
  if (byte_1ED4E9846 == 1)
  {
    v124 = 0;
    v125 = 0;
    v126 = 0;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (v10 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10;
  }

  v17 = 0xFFFFFFFFLL;
  v18 = "  candidate: %u %u %u\n";
  v19 = "    update result: %u %u\n";
  v20 = v16;
  LODWORD(v21) = -1;
  v22 = initialized;
  while (1)
  {
    v23 = *(this + 3531) + v12;
    if ((*(v23 + 20) & 1) == 0)
    {
      break;
    }

    v24 = v15;
LABEL_60:
    v12 += 24;
    v15 = v24;
    if (!--v20)
    {
      goto LABEL_112;
    }
  }

  LODWORD(v24) = *(v23 + 8);
  v25 = *(v23 + 12);
  v13 = v24 == 4 && v25 == 5;
  if (v24 > 3)
  {
    if (v24 == 4)
    {
      if (v25 < 6)
      {
        LODWORD(v24) = 4;
      }

      else
      {
        LODWORD(v24) = 3;
      }
    }
  }

  else if (v25 > 3)
  {
    LODWORD(v24) = 2;
  }

  if (v25 >= 3)
  {
    v27 = 3;
  }

  else
  {
    v27 = *(v23 + 12);
  }

  if (*(v23 + 16) == 2)
  {
    v28 = v27;
  }

  else
  {
    v28 = *(v23 + 12);
  }

  if (*(v9 + 42) != -1)
  {
    v113 = v17;
    v116 = v13;
    v120 = v10;
    dispatch_once_f(initialized, 0, init_debug);
    v22 = initialized;
    v19 = "    update result: %u %u\n";
    v18 = "  candidate: %u %u %u\n";
    v17 = v113;
    v13 = v116;
    v11 = &CADisplayTimerGetTypeID::type;
    v9 = &CADeviceNeedsDisplayStateControlDependencyWorkaround::b;
    v10 = v120;
  }

  if (*(v11 + 2118) == 1)
  {
    v111 = *(v23 + 12);
    v112 = *(v23 + 16);
    v110 = *(v23 + 8);
    v29 = v18;
    v114 = v17;
    v117 = v13;
    v121 = v10;
    X::Stream::printf(&v124, v18, v110, v111, v112);
    v22 = initialized;
    v19 = "    update result: %u %u\n";
    v18 = v29;
    v17 = v114;
    v13 = v117;
    v11 = &CADisplayTimerGetTypeID::type;
    v9 = &CADeviceNeedsDisplayStateControlDependencyWorkaround::b;
    v10 = v121;
  }

  if (v14 <= v24)
  {
    v24 = v24;
  }

  else
  {
    v24 = v14;
  }

  if (v21 >= v28)
  {
    v21 = v28;
  }

  else
  {
    v21 = v21;
  }

  if (v24 <= v21)
  {
    if (*(v9 + 42) != -1)
    {
      v30 = v22;
      v122 = v10;
      v31 = v9;
      v32 = v11;
      v33 = v13;
      dispatch_once_f(v22, 0, init_debug);
      v22 = v30;
      v19 = "    update result: %u %u\n";
      v18 = "  candidate: %u %u %u\n";
      v13 = v33;
      v11 = v32;
      v9 = v31;
      v10 = v122;
    }

    if (*(v11 + 2118) == 1)
    {
      v34 = v19;
      v123 = v10;
      v35 = v9;
      v36 = v11;
      v37 = v13;
      X::Stream::printf(&v124, v19, v24, v21);
      v22 = initialized;
      v19 = v34;
      v18 = "  candidate: %u %u %u\n";
      v13 = v37;
      v11 = v36;
      v9 = v35;
      v10 = v123;
    }

    v17 = v21;
    v14 = v24;
    goto LABEL_60;
  }

  LODWORD(v24) = v15;
LABEL_112:
  if (!v24 && v17 == -1)
  {
    LODWORD(v24) = 0;
    LODWORD(v17) = 0;
    v5 = 0;
  }

  else
  {
    v81 = 0;
    v5 = 0;
    v82 = "  explicit preference for %u\n";
    do
    {
      v83 = *(this + 3531) + v81;
      if ((*(v83 + 20) & 1) == 0)
      {
        v84 = *(v83 + 16);
        v85 = v84 < v24 || v84 > v17;
        if (!v85 && v5 - 1 >= v84)
        {
          if (*(v9 + 42) != -1)
          {
            v87 = v17;
            v88 = v10;
            v89 = v9;
            v90 = v11;
            v118 = v13;
            dispatch_once_f(initialized, 0, init_debug);
            v82 = "  explicit preference for %u\n";
            v13 = v118;
            v11 = v90;
            v9 = v89;
            v10 = v88;
            v17 = v87;
          }

          if (*(v11 + 2118) == 1)
          {
            v91 = v82;
            v115 = v17;
            v119 = v13;
            v92 = v10;
            v93 = v9;
            v94 = v11;
            X::Stream::printf(&v124, v82, v84);
            v82 = v91;
            v17 = v115;
            v13 = v119;
            v11 = v94;
            v9 = v93;
            v10 = v92;
          }

          v5 = v84;
        }
      }

      v81 += 24;
      --v16;
    }

    while (v16);
    if (v13)
    {
      v95 = v24 == 3 && v5 == 0;
      v96 = v95;
      if (v5 == 3 || v96)
      {
        LODWORD(v24) = 2;
        LODWORD(v17) = 2;
        v5 = 2;
      }
    }

    if (*(v9 + 42) != -1)
    {
      v102 = v17;
      v103 = v10;
      v104 = v11;
      dispatch_once_f(initialized, 0, init_debug);
      v11 = v104;
      v10 = v103;
      LODWORD(v17) = v102;
    }

    if (*(v11 + 2118) == 1)
    {
      v105 = v10;
      v106 = v17;
      v107 = x_stream_finish(&v124);
      if (v107)
      {
        v108 = v107;
        if (x_log_get_frame_rate(void)::once != -1)
        {
          dispatch_once(&x_log_get_frame_rate(void)::once, &__block_literal_global_20391);
        }

        v109 = x_log_get_frame_rate(void)::log;
        if (os_log_type_enabled(x_log_get_frame_rate(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          *&buf[4] = "CAFrameRateServer: ";
          *&buf[12] = 2048;
          *&buf[14] = v105;
          *&buf[22] = 1024;
          *&buf[24] = v24;
          v129 = 1024;
          v130 = v106;
          v131 = 1024;
          v132 = v5;
          v133 = 2080;
          v134 = v108;
          _os_log_impl(&dword_183AA6000, v109, OS_LOG_TYPE_DEFAULT, "%sarbitration among %ld clients yields min:%u max:%u preferred:%u\n%s", buf, 0x32u);
        }

        free(v108);
      }

      LODWORD(v17) = v106;
    }
  }

LABEL_143:
  if (v24 && !v5)
  {
    if ((*(this + 160) & 0x10) != 0)
    {
      v97 = v17;
      v98 = (*(*this + 784))(this);
      v99 = (*(*this + 800))(this);
      v100 = v97;
      v5 = v24;
      if (v98 != v99)
      {
        v5 = v100;
        if ((*(*this + 800))(this) <= v100)
        {
          v5 = (*(*this + 800))(this);
        }
      }
    }

    else
    {
      v5 = v24;
    }
  }

LABEL_5:
  os_unfair_lock_lock(this + 6576);
  CA::WindowServer::IOMFBDisplay::initialize_timings(this);
  if (*(this + 3290))
  {
    if (v5)
    {
      if (v5 <= (*(*this + 784))(this))
      {
        v5 = (*(*this + 784))(this);
      }

      if (v5 == 10)
      {
        v6 = 5;
      }

      else
      {
        v6 = 4;
      }

      if (v5 >= 6)
      {
        v7 = v6;
      }

      else
      {
        v7 = v5;
      }
    }

    else
    {
      v7 = 0;
    }

    if ((*(*this + 784))(this) == 1)
    {
      v38 = 0;
    }

    else
    {
      v39 = *(this + 3531);
      v40 = *(this + 3532);
      if (v39 != v40)
      {
        while ((*(v39 + 20) & 2) == 0 || (*(v39 + 20) & 1) != 0)
        {
          v39 += 24;
          if (v39 == v40)
          {
            goto LABEL_72;
          }
        }
      }

      if (v39 == v40)
      {
LABEL_72:
        v38 = *(this + 29573);
      }

      else
      {
        v38 = 1;
      }
    }

    v41 = *(this + 7168);
    v42 = v38 & 1;
    v43 = mach_absolute_time();
    v44 = atomic_load((*(this + 3290) + 32));
    v127 = v44;
    CA::WindowServer::IOMFBDisplay::flush_timings_locked(this, v43, &v127);
    v45 = *(this + 3290);
    if (v127)
    {
      v46 = atomic_load((v45 + 56));
      if (v46 != v7)
      {
        goto LABEL_80;
      }

      v47 = (*(this + 3290) + 41);
LABEL_78:
      v49 = atomic_load(v47);
      if (v42 != (v49 & 1))
      {
        goto LABEL_80;
      }

      v50 = atomic_load((*(this + 3290) + 44));
      if (v50 != v41)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v48 = atomic_load((v45 + 52));
      if (v48 == v7)
      {
        v47 = (*(this + 3290) + 40);
        goto LABEL_78;
      }

LABEL_80:
      v51 = *(this + 3290);
      if (v127)
      {
        v52 = (v51 + 72);
      }

      else
      {
        v53 = atomic_load((v51 + 52));
        if (!v53)
        {
          v53 = (*(*this + 800))(this);
        }

        v54 = v53;
        if (v53 == 2 && v7 == 4)
        {
          v54 = 4;
        }

        v56 = atomic_load((*(this + 3290) + 16));
        v57 = v54 * v56;
        v58 = atomic_load((*(this + 3290) + 64));
        v59 = atomic_load((*(this + 3290) + 80));
        v60 = atomic_load((*(this + 3290) + 16));
        *buf = v58;
        *&buf[8] = v59;
        *&buf[16] = v60;
        v61 = atomic_load((*(this + 3290) + 16));
        v62 = v43 + (v61 >> 1);
        v124 = v57;
        phase = get_phase(buf, v62, &v124);
        v64 = v62 - phase + v124;
        if (!phase)
        {
          v64 = v62;
        }

        v127 = v64;
        v65 = atomic_load((*(this + 3290) + 16));
        v127 -= v65 >> 2;
        v52 = (*(this + 3290) + 64);
      }

      v66 = atomic_load(v52);
      v67 = atomic_load((*(this + 3290) + 52));
      v68 = atomic_load((*(this + 3290) + 56));
      v69 = atomic_load((*(this + 3290) + 40));
      v70 = atomic_load((*(this + 3290) + 41));
      v71 = atomic_load((*(this + 3290) + 44));
      v72 = atomic_load((*(this + 3290) + 48));
      if (v67 == v7 && ((v42 ^ v69) & 1) == 0 && v71 == v41)
      {
        v127 = 0;
      }

      else if (v68 != v7 || ((v42 ^ v70) & 1) != 0 || v72 != v41)
      {
        v73 = v7;
        if (!v7)
        {
          v73 = (*(*this + 800))(this);
        }

        v74 = v127;
        v75 = atomic_load((*(this + 3290) + 80));
        v76 = (v74 - v75);
        LODWORD(v74) = atomic_load((*(this + 3290) + 16));
        v77 = (v66 + vcvtad_u64_f64(v76 / v74)) % v73;
        if (v77)
        {
          v78 = v73 - v77;
        }

        else
        {
          v78 = 0;
        }

        v66 += v78;
      }

      if (byte_1ED4E9846 == 1)
      {
        if (x_log_get_frame_rate(void)::once != -1)
        {
          dispatch_once(&x_log_get_frame_rate(void)::once, &__block_literal_global_20391);
        }

        v101 = x_log_get_frame_rate(void)::log;
        if (os_log_type_enabled(x_log_get_frame_rate(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          *&buf[4] = v7;
          *&buf[8] = 2048;
          *&buf[10] = v127;
          *&buf[18] = 2048;
          *&buf[20] = v43;
          _os_log_impl(&dword_183AA6000, v101, OS_LOG_TYPE_DEFAULT, "CAFrameRateServer: enqueing server frame interval %u for %llu. Now is %llu", buf, 0x1Cu);
        }
      }

      v79 = *(this + 3290);
      add = atomic_fetch_add((v79 + 28), 1u);
      atomic_store(v127, (v79 + 32));
      atomic_store(v42, (v79 + 41));
      atomic_store(v41, (v79 + 48));
      atomic_store(v7, (v79 + 56));
      atomic_store(v66, (v79 + 72));
      atomic_store(add + 2, (v79 + 28));
      *(this + 29583) = v7 & 1;
      atomic_load((*(this + 3290) + 40));
      atomic_load((*(this + 3290) + 41));
      atomic_load((*(this + 3290) + 32));
      atomic_load((*(this + 3290) + 52));
      atomic_load((*(this + 3290) + 56));
      kdebug_trace();
      atomic_load((*(this + 3290) + 64));
      atomic_load((*(this + 3290) + 80));
      atomic_load((*(this + 3290) + 72));
      kdebug_trace();
    }
  }

  os_unfair_lock_unlock(this + 6576);
}

__IOSurface *CAIOSurfaceCreateDefault(int a1, unsigned int a2, CA::Render *a3)
{
  v13 = *MEMORY[0x1E69E9840];
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

    if (CADeviceSupportsUniversalCompression::universal)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    a3 = CA::Render::fourcc_compressed_of_type(a3, v6, 0);
  }

  v7 = *MEMORY[0x1E69E9AC8];
  v9 = xmmword_183E20D70;
  v10 = 1;
  v11 = v7;
  v12 = 0;
  return CA::SurfaceUtil::CAIOSurfaceCreate(a1, a2, a3, 0, 0, 0, 0, &v9, 0);
}

__IOSurface *CA::SurfaceUtil::CAIOSurfaceCreate(int a1, unsigned int a2, uint64_t a3, int a4, int a5, unsigned __int8 a6, uint64_t a7, void *a8, CFStringRef theString1)
{
  LODWORD(v16) = a1;
  v648 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v634 = 0;
  v635 = 0;
  v632 = 0;
  v633 = 0;
  values = 0;
  plane_dict = 0;
  v647 = 0;
  v631 = 0;
  if (CADeviceSupportsUniversalCompression::once != -1)
  {
    dispatch_once(&CADeviceSupportsUniversalCompression::once, &__block_literal_global_31);
  }

  v20 = BYTE3(a3);
  v628 = a6;
  v627 = a7;
  v626 = a5;
  if (BYTE3(a3) == 45)
  {
    v21 = 1;
    v22 = 1;
  }

  else if (v20 == 124)
  {
    v22 = 3;
    v21 = 2;
  }

  else if (v20 == 47)
  {
    v21 = 2;
    v22 = 2;
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v624 = CADeviceSupportsUniversalCompression::universal;
  v630 = v16;
  if (a3 > 762865203)
  {
    if (a3 <= 1534354993)
    {
      if (a3 <= 796161585)
      {
        if (a3 > 792229423)
        {
          if (a3 <= 796157487)
          {
            if (a3 <= 792229427)
            {
              if (a3 != 792229424)
              {
                v23 = 792229426;
                goto LABEL_109;
              }

              goto LABEL_279;
            }

            if (a3 != 792229428)
            {
              v52 = 792872769;
              goto LABEL_234;
            }

            goto LABEL_282;
          }

          if (a3 > 796157491)
          {
            if (a3 != 796157492)
            {
              v78 = 796161584;
LABEL_262:
              if (a3 != v78)
              {
                goto LABEL_361;
              }

              goto LABEL_263;
            }

            goto LABEL_265;
          }

          if (a3 != 796157488)
          {
            v26 = 796157490;
LABEL_100:
            if (a3 != v26)
            {
              goto LABEL_361;
            }

            goto LABEL_158;
          }

          goto LABEL_263;
        }

        if (a3 <= 762869299)
        {
          if (a3 != 762865204)
          {
            if (a3 != 762869296)
            {
              v46 = 30258;
LABEL_297:
              v77 = v46 | 0x2D780000;
LABEL_298:
              if (a3 != v77)
              {
                goto LABEL_361;
              }

              goto LABEL_299;
            }

            goto LABEL_301;
          }
        }

        else
        {
          if (a3 > 792225329)
          {
            if (a3 != 792225330)
            {
              v51 = 792225332;
LABEL_184:
              if (a3 != v51)
              {
                goto LABEL_361;
              }

              goto LABEL_282;
            }

LABEL_186:
            v63 = (v16 + 1) >> 1;
            if (v22 > 1)
            {
              if (v22 == 3)
              {
                v64 = 4;
              }

              else
              {
                v64 = 5;
              }

              v116 = 3;
              v54 = 8;
            }

            else
            {
              if (v22)
              {
                v54 = 12;
                v64 = 6;
              }

              else
              {
                v54 = 16;
                v64 = 8;
              }

              v116 = v22;
            }

            values = CA::SurfaceUtil::create_universal_plane_dict(v22, 1, v630, a2, v64, &v635);
            v42 = v116;
            v43 = v63;
            v44 = a2;
            goto LABEL_353;
          }

          if (a3 != 762869300)
          {
            v29 = 792225328;
            goto LABEL_278;
          }
        }

LABEL_316:
        if ((v22 - 1) > 2)
        {
          v97 = 10;
        }

        else
        {
          v97 = qword_183E21C90[v22 - 1];
        }

        v98 = v21 - 1;
        if ((v21 - 1) > 2)
        {
          v100 = 20;
          goto LABEL_323;
        }

        v99 = qword_183E21CA8;
        goto LABEL_321;
      }

      if (a3 > 796423731)
      {
        if (a3 <= 1530426927)
        {
          if (a3 <= 1530422833)
          {
            if (a3 == 796423732)
            {
              goto LABEL_316;
            }

            if (a3 != 1530422832)
            {
              goto LABEL_361;
            }

            goto LABEL_329;
          }

          if (a3 != 1530422834)
          {
            if (a3 != 1530422836)
            {
              goto LABEL_361;
            }

            goto LABEL_338;
          }

LABEL_334:
          v633 = 0;
          v634 = 0;
          values = CA::SurfaceUtil::create_htpc_plane_dict(v16, a2, 1, 0, &v634, v17);
          v90 = (v16 + 1) >> 1;
          v89 = v634;
          v91 = a2;
          goto LABEL_339;
        }

        if (a3 <= 1530426931)
        {
          if (a3 == 1530426928)
          {
LABEL_329:
            v633 = 0;
            v634 = 0;
            values = CA::SurfaceUtil::create_htpc_plane_dict(v16, a2, 1, 0, &v634, v17);
            v90 = (v16 + 1) >> 1;
            v91 = (a2 + 1) >> 1;
            v89 = v634;
LABEL_339:
            v108 = 2;
            goto LABEL_340;
          }

          if (a3 != 1530426930)
          {
            goto LABEL_361;
          }

          goto LABEL_334;
        }

        if (a3 == 1530426932)
        {
LABEL_338:
          v633 = 0;
          v634 = 0;
          values = CA::SurfaceUtil::create_htpc_plane_dict(v16, a2, 1, 0, &v634, v17);
          v89 = v634;
          v90 = v16;
          v91 = a2;
          goto LABEL_339;
        }

        v48 = 26160;
        goto LABEL_291;
      }

      if (a3 > 796419633)
      {
        if (a3 <= 796423727)
        {
          if (a3 != 796419634)
          {
            v31 = 796419636;
            goto LABEL_315;
          }

          goto LABEL_299;
        }

        if (a3 != 796423728)
        {
          v77 = 796423730;
          goto LABEL_298;
        }

LABEL_301:
        v94 = (v16 + 1) >> 1;
        v95 = (a2 + 1) >> 1;
        if ((v22 - 1) > 2)
        {
          v106 = 10;
        }

        else
        {
          v106 = qword_183E21C90[v22 - 1];
        }

        if ((v21 - 1) > 2)
        {
          v101 = 20;
        }

        else
        {
          v101 = qword_183E21CA8[v21 - 1];
        }

LABEL_358:
        values = CA::SurfaceUtil::create_universal_plane_dict(v22, 1, v630, a2, v106, &v635);
        v42 = v21;
LABEL_359:
        v43 = v94;
        v44 = v95;
        v45 = v101;
        goto LABEL_360;
      }

      if (a3 == 796161586)
      {
        goto LABEL_158;
      }

      if (a3 == 796161588)
      {
LABEL_265:
        if ((v22 - 1) > 2)
        {
          v97 = 12;
        }

        else
        {
          v97 = qword_183E21CD0[v22 - 1];
        }

        v98 = v21 - 1;
        if ((v21 - 1) > 2)
        {
          v100 = 24;
LABEL_323:
          values = CA::SurfaceUtil::create_universal_plane_dict(v22, 1, v16, a2, v97, &v635);
          v42 = v21;
          v43 = v16;
          v44 = a2;
LABEL_347:
          v45 = v100;
          goto LABEL_360;
        }

        v99 = &unk_183E21CE8;
LABEL_321:
        v100 = v99[v98];
        goto LABEL_323;
      }

      v32 = 796419632;
LABEL_156:
      if (a3 != v32)
      {
        goto LABEL_361;
      }

      goto LABEL_301;
    }

    if (a3 > 2084075057)
    {
      if (a3 <= 2088007217)
      {
        if (a3 <= 2088003119)
        {
          if (a3 != 2084075058)
          {
            if (a3 != 2084075060)
            {
              v52 = 2084718401;
LABEL_234:
              if (a3 != v52)
              {
                goto LABEL_361;
              }

              v85 = v16;
              v86 = a2;
              v87 = v22;
              goto LABEL_258;
            }

LABEL_282:
            if (v22 > 1)
            {
              if (v22 == 3)
              {
                v107 = 4;
              }

              else
              {
                v107 = 5;
              }

              v115 = 3;
              v100 = 8;
            }

            else
            {
              if (v22)
              {
                v100 = 12;
                v107 = 6;
              }

              else
              {
                v100 = 16;
                v107 = 8;
              }

              v115 = v22;
            }

            values = CA::SurfaceUtil::create_universal_plane_dict(v22, 1, v16, a2, v107, &v635);
            v42 = v115;
            v43 = v16;
            v44 = a2;
            goto LABEL_347;
          }

          goto LABEL_186;
        }

        if (a3 > 2088003123)
        {
          if (a3 != 2088003124)
          {
            v78 = 2088007216;
            goto LABEL_262;
          }

          goto LABEL_265;
        }

        if (a3 != 2088003120)
        {
          v26 = 2088003122;
          goto LABEL_100;
        }

LABEL_263:
        v94 = (v16 + 1) >> 1;
        v95 = (a2 + 1) >> 1;
        if ((v22 - 1) > 2)
        {
          v96 = 12;
        }

        else
        {
          v96 = dword_183E21CC0[v22 - 1];
        }

        v101 = 2 * v96;
        values = CA::SurfaceUtil::create_universal_plane_dict(v22, 1, v630, a2, v96, &v635);
        v42 = v22;
        goto LABEL_359;
      }

      if (a3 <= 2088265267)
      {
        if (a3 <= 2088265263)
        {
          if (a3 != 2088007218)
          {
            v27 = 2088007220;
            goto LABEL_118;
          }

LABEL_158:
          v49 = (v16 + 1) >> 1;
          if ((v22 - 1) > 2)
          {
            v50 = 12;
          }

          else
          {
            v50 = dword_183E21CC0[v22 - 1];
          }

          v54 = 2 * v50;
          v55 = v16;
          v56 = a2;
          values = CA::SurfaceUtil::create_universal_plane_dict(v22, 1, v55, a2, v50, &v635);
          v42 = v22;
LABEL_308:
          v43 = v49;
          v44 = v56;
LABEL_353:
          v45 = v54;
          goto LABEL_360;
        }

        if (a3 != 2088265264)
        {
          v77 = 2088265266;
          goto LABEL_298;
        }

        goto LABEL_301;
      }

      if (a3 > 2088269361)
      {
        if (a3 != 2088269362)
        {
          v31 = 2088269364;
LABEL_315:
          if (a3 != v31)
          {
            goto LABEL_361;
          }

          goto LABEL_316;
        }

LABEL_299:
        v49 = (v16 + 1) >> 1;
        if ((v22 - 1) > 2)
        {
          v109 = 10;
        }

        else
        {
          v109 = qword_183E21C90[v22 - 1];
        }

        if ((v21 - 1) > 2)
        {
          v54 = 20;
        }

        else
        {
          v54 = qword_183E21CA8[v21 - 1];
        }

        v110 = v16;
        v56 = a2;
        values = CA::SurfaceUtil::create_universal_plane_dict(v22, 1, v110, a2, v109, &v635);
        v42 = v21;
        goto LABEL_308;
      }

      if (a3 == 2088265268)
      {
        goto LABEL_316;
      }

      v32 = 2088269360;
      goto LABEL_156;
    }

    if (a3 <= 1534617139)
    {
      if (a3 <= 1534359089)
      {
        if (a3 != 1534354994)
        {
          if (a3 != 1534354996)
          {
            v48 = 30256;
LABEL_291:
            v25 = v48 | 0x5B740000;
LABEL_292:
            if (a3 != v25)
            {
              goto LABEL_361;
            }

            goto LABEL_293;
          }

          goto LABEL_242;
        }
      }

      else if (a3 > 1534617135)
      {
        if (a3 == 1534617136)
        {
LABEL_293:
          v633 = 0;
          v634 = 0;
          values = CA::SurfaceUtil::create_htpc_plane_dict(v16, a2, 2, 0, &v634, v17);
          v90 = (v16 + 1) >> 1;
          v91 = (a2 + 1) >> 1;
          v89 = v634;
          goto LABEL_294;
        }

        if (a3 != 1534617138)
        {
          goto LABEL_361;
        }
      }

      else if (a3 != 1534359090)
      {
        v30 = 1534359092;
        goto LABEL_241;
      }
    }

    else
    {
      if (a3 > 2084070959)
      {
        if (a3 <= 2084070963)
        {
          if (a3 != 2084070960)
          {
            v23 = 2084070962;
LABEL_109:
            if (a3 != v23)
            {
              goto LABEL_361;
            }

            goto LABEL_186;
          }

LABEL_279:
          v94 = (v16 + 1) >> 1;
          v95 = (a2 + 1) >> 1;
          if (v22 > 1)
          {
            if (v22 == 3)
            {
              v106 = 4;
            }

            else
            {
              v106 = 5;
            }

            v21 = 3;
            v101 = 8;
          }

          else
          {
            if (v22)
            {
              v101 = 12;
              v106 = 6;
            }

            else
            {
              v101 = 16;
              v106 = 8;
            }

            v21 = v22;
          }

          goto LABEL_358;
        }

        if (a3 == 2084070964)
        {
          goto LABEL_282;
        }

        v29 = 2084075056;
LABEL_278:
        if (a3 != v29)
        {
          goto LABEL_361;
        }

        goto LABEL_279;
      }

      if (a3 <= 1534621233)
      {
        if (a3 != 1534617140)
        {
          v25 = 1534621232;
          goto LABEL_292;
        }

        goto LABEL_242;
      }

      if (a3 != 1534621234)
      {
        v30 = 1534621236;
LABEL_241:
        if (a3 != v30)
        {
          goto LABEL_361;
        }

LABEL_242:
        v633 = 0;
        v634 = 0;
        values = CA::SurfaceUtil::create_htpc_plane_dict(v16, a2, 2, 0, &v634, v17);
        v89 = v634;
        v90 = v16;
        v91 = a2;
LABEL_294:
        v108 = 4;
LABEL_340:
        plane_dict = CA::SurfaceUtil::create_htpc_plane_dict(v90, v91, v108, v89, &v633, v88);
        v635 = v633 + v634;
        goto LABEL_361;
      }
    }

    v633 = 0;
    v634 = 0;
    values = CA::SurfaceUtil::create_htpc_plane_dict(v16, a2, 2, 0, &v634, v17);
    v90 = (v16 + 1) >> 1;
    v89 = v634;
    v91 = a2;
    goto LABEL_294;
  }

  if (a3 > 645280823)
  {
    if (a3 <= 758670895)
    {
      if (a3 <= 645411895)
      {
        if (a3 <= 645410871)
        {
          if (a3 != 645280824)
          {
            if (a3 != 645346162)
            {
              v47 = 645346401;
LABEL_253:
              if (a3 != v47)
              {
                goto LABEL_361;
              }

              v85 = v16;
              if (CADeviceSupportsUniversalCompression::universal)
              {
                v87 = v22;
                v86 = a2;
                v92 = 64;
LABEL_259:
                universal_plane_dict = CA::SurfaceUtil::create_universal_plane_dict(v87, 0, v85, v86, v92, &v635);
LABEL_867:
                values = universal_plane_dict;
                goto LABEL_361;
              }

              v112 = v16;
              v113 = a2;
              v114 = 8;
LABEL_866:
              universal_plane_dict = CA::SurfaceUtil::create_agx_plane_dict(v112, v113, v114, &v635, &v632, &v631, v18);
              goto LABEL_867;
            }

            goto LABEL_256;
          }

LABEL_220:
          v70 = v16;
          v71 = a2;
          if (CA::Render::fourcc_is_444(a3))
          {
            v16 = v16;
          }

          else
          {
            v16 = (v16 + 1) >> 1;
          }

          if (CA::Render::fourcc_is_420(a3))
          {
            v79 = (a2 + 1) >> 1;
          }

          else
          {
            v79 = a2;
          }

          values = CA::SurfaceUtil::create_universal_plane_dict(v22, 1, v70, a2, 8, &v635);
          v73 = v22;
          v74 = v16;
          v75 = v79;
          v76 = 16;
LABEL_227:
          plane_dict = CA::SurfaceUtil::create_universal_plane_dict(v73, 0, v74, v75, v76, &v635);
          v66 = v22;
          v67 = v70;
          v68 = v71;
          v69 = 8;
          goto LABEL_228;
        }

        if (a3 > 645411383)
        {
          if (a3 != 645411384)
          {
            v24 = 12915;
            goto LABEL_193;
          }
        }

        else if (a3 != 645410872)
        {
          v24 = 12403;
          goto LABEL_193;
        }

LABEL_202:
        v70 = v16;
        v71 = a2;
        if (CA::Render::fourcc_is_444(a3))
        {
          v16 = v16;
        }

        else
        {
          v16 = (v16 + 1) >> 1;
        }

        if (CA::Render::fourcc_is_420(a3))
        {
          v72 = (a2 + 1) >> 1;
        }

        else
        {
          v72 = a2;
        }

        values = CA::SurfaceUtil::create_universal_plane_dict(v22, 1, v70, a2, 10, &v635);
        v73 = v22;
        v74 = v16;
        v75 = v72;
        v76 = 20;
        goto LABEL_227;
      }

      if (a3 <= 645424691)
      {
        if (a3 <= 645424687)
        {
          if (a3 != 645411896)
          {
            v24 = 13427;
LABEL_193:
            if (a3 != (v24 | 0x26780000))
            {
              goto LABEL_361;
            }

            v33 = v16;
            v34 = a2;
            if (CA::Render::fourcc_is_444(a3))
            {
              v16 = v16;
            }

            else
            {
              v16 = (v16 + 1) >> 1;
            }

            if (CA::Render::fourcc_is_420(a3))
            {
              v65 = (a2 + 1) >> 1;
            }

            else
            {
              v65 = a2;
            }

            values = CA::SurfaceUtil::create_universal_plane_dict(v22, 1, v33, a2, 10, &v635);
            v36 = v22;
            v37 = v16;
            v38 = v65;
            v39 = 20;
            goto LABEL_201;
          }

          goto LABEL_202;
        }

        if (a3 != 645424688)
        {
          if (a3 != 645424690)
          {
            goto LABEL_361;
          }

          goto LABEL_335;
        }

LABEL_333:
        v102 = (v16 + 1) >> 1;
        v103 = (a2 + 1) >> 1;
        v105 = v16;
        v111 = a2;
        v104 = v22;
LABEL_337:
        values = CA::SurfaceUtil::create_universal_plane_dict(v104, 1, v105, v111, 10, &v635);
        v42 = v22;
        v43 = v102;
        v44 = v103;
        v45 = 20;
        goto LABEL_360;
      }

      if (a3 > 645428785)
      {
        if (a3 == 645428786)
        {
LABEL_335:
          v102 = (v16 + 1) >> 1;
          v105 = v16;
          v103 = a2;
          v104 = v22;
          goto LABEL_336;
        }

        if (a3 != 645428788)
        {
          goto LABEL_361;
        }
      }

      else if (a3 != 645424692)
      {
        if (a3 != 645428784)
        {
          goto LABEL_361;
        }

        goto LABEL_333;
      }

      v102 = v16;
      v103 = a2;
      v104 = v22;
      v105 = v16;
LABEL_336:
      v111 = v103;
      goto LABEL_337;
    }

    if (a3 > 762603055)
    {
      if (a3 <= 762607153)
      {
        if (a3 <= 762603059)
        {
          if (a3 != 762603056)
          {
            v26 = 762603058;
            goto LABEL_100;
          }

          goto LABEL_263;
        }

        if (a3 != 762603060)
        {
          v78 = 762607152;
          goto LABEL_262;
        }

        goto LABEL_265;
      }

      if (a3 <= 762865199)
      {
        if (a3 != 762607154)
        {
          v27 = 762607156;
LABEL_118:
          if (a3 != v27)
          {
            goto LABEL_361;
          }

          goto LABEL_265;
        }

        goto LABEL_158;
      }

      if (a3 != 762865200)
      {
        v46 = 26162;
        goto LABEL_297;
      }

      goto LABEL_301;
    }

    if (a3 > 758674991)
    {
      if (a3 <= 758674995)
      {
        if (a3 != 758674992)
        {
          v23 = 758674994;
          goto LABEL_109;
        }

        goto LABEL_279;
      }

      if (a3 != 758674996)
      {
        v52 = 759318337;
        goto LABEL_234;
      }

      goto LABEL_282;
    }

    if (a3 == 758670896)
    {
      goto LABEL_279;
    }

    if (a3 != 758670898)
    {
      v51 = 758670900;
      goto LABEL_184;
    }

    goto LABEL_186;
  }

  if (a3 > 645101103)
  {
    if (a3 <= 645162545)
    {
      if (a3 <= 645148786)
      {
        if ((a3 - 645101104) > 4 || ((1 << (a3 - 48)) & 0x15) == 0)
        {
          goto LABEL_361;
        }

        goto LABEL_137;
      }

      if (a3 <= 645149810)
      {
        if (a3 != 645148787 && a3 != 645149299)
        {
          goto LABEL_361;
        }

        goto LABEL_175;
      }

      if (a3 == 645149811)
      {
LABEL_175:
        v33 = v16;
        v34 = a2;
        if (CA::Render::fourcc_is_444(a3))
        {
          v16 = v16;
        }

        else
        {
          v16 = (v16 + 1) >> 1;
        }

        if (CA::Render::fourcc_is_420(a3))
        {
          v62 = (a2 + 1) >> 1;
        }

        else
        {
          v62 = a2;
        }

        values = CA::SurfaceUtil::create_universal_plane_dict(v22, 1, v33, a2, 12, &v635);
        v36 = v22;
        v37 = v16;
        v38 = v62;
        v39 = 24;
        goto LABEL_201;
      }

      v53 = 26160;
      goto LABEL_173;
    }

    if (a3 <= 645166641)
    {
      if (a3 != 645162546)
      {
        if (a3 != 645162548)
        {
          v53 = 30256;
LABEL_173:
          if (a3 != (v53 | 0x26740000))
          {
            goto LABEL_361;
          }

          v57 = (v16 + 1) >> 1;
          v58 = (a2 + 1) >> 1;
          v59 = v16;
          v60 = a2;
          v61 = v22;
LABEL_327:
          values = CA::SurfaceUtil::create_universal_plane_dict(v61, 1, v59, v60, 12, &v635);
          v42 = v22;
          v43 = v57;
          v44 = v58;
          v45 = 24;
LABEL_360:
          plane_dict = CA::SurfaceUtil::create_universal_plane_dict(v42, 0, v43, v44, v45, &v635);
          goto LABEL_361;
        }

        goto LABEL_325;
      }

LABEL_324:
      v57 = (v16 + 1) >> 1;
      v59 = v16;
      v58 = a2;
      v61 = v22;
LABEL_326:
      v60 = v58;
      goto LABEL_327;
    }

    if (a3 <= 645279799)
    {
      if (a3 != 645166642)
      {
        if (a3 != 645166644)
        {
          goto LABEL_361;
        }

LABEL_325:
        v57 = v16;
        v58 = a2;
        v61 = v22;
        v59 = v16;
        goto LABEL_326;
      }

      goto LABEL_324;
    }

    if (a3 != 645279800 && a3 != 645280312)
    {
      goto LABEL_361;
    }

    goto LABEL_220;
  }

  if (a3 > 643969847)
  {
    if (a3 <= 645083762)
    {
      if (a3 == 643969848)
      {
        values = CA::SurfaceUtil::create_universal_plane_dict(v22, 0, v16, a2, 32, &v635);
        v42 = v22;
        v43 = v16;
        v44 = a2;
        v45 = 8;
        goto LABEL_360;
      }

      if (a3 == 644624754)
      {
LABEL_256:
        v85 = v16;
        if (!CADeviceSupportsUniversalCompression::universal)
        {
          v112 = v16;
          v113 = a2;
          v114 = 4;
          goto LABEL_866;
        }

        v87 = v22;
        v86 = a2;
LABEL_258:
        v92 = 32;
        goto LABEL_259;
      }

      v28 = 12403;
      goto LABEL_127;
    }

    if ((a3 - 645097008) > 4 || ((1 << (a3 - 48)) & 0x15) == 0)
    {
      if (a3 == 645083763)
      {
LABEL_128:
        v33 = v16;
        v34 = a2;
        if (CA::Render::fourcc_is_444(a3))
        {
          v16 = v16;
        }

        else
        {
          v16 = (v16 + 1) >> 1;
        }

        if (CA::Render::fourcc_is_420(a3))
        {
          v35 = (a2 + 1) >> 1;
        }

        else
        {
          v35 = a2;
        }

        values = CA::SurfaceUtil::create_universal_plane_dict(v22, 1, v33, a2, 16, &v635);
        v36 = v22;
        v37 = v16;
        v38 = v35;
        v39 = 32;
LABEL_201:
        plane_dict = CA::SurfaceUtil::create_universal_plane_dict(v36, 0, v37, v38, v39, &v635);
        v66 = v22;
        v67 = v33;
        v68 = v34;
        v69 = 16;
LABEL_228:
        v647 = CA::SurfaceUtil::create_universal_plane_dict(v66, 0, v67, v68, v69, &v635);
        goto LABEL_361;
      }

      v28 = 13427;
LABEL_127:
      if (a3 != (v28 | 0x26730000))
      {
        goto LABEL_361;
      }

      goto LABEL_128;
    }

LABEL_137:
    v40 = v16;
    if (CA::Render::fourcc_is_444(a3))
    {
      v16 = v16;
    }

    else
    {
      v16 = (v16 + 1) >> 1;
    }

    if (CA::Render::fourcc_is_420(a3))
    {
      v41 = (a2 + 1) >> 1;
    }

    else
    {
      v41 = a2;
    }

    values = CA::SurfaceUtil::create_universal_plane_dict(v22, 1, v40, a2, 16, &v635);
    v42 = v22;
    v43 = v16;
    v44 = v41;
    v45 = 32;
    goto LABEL_360;
  }

  if (a3 > 641234481)
  {
    if (a3 <= 641877824)
    {
      if (a3 == 641234482)
      {
LABEL_328:
        v80 = (v16 + 1) >> 1;
        v82 = v16;
        v81 = a2;
        v84 = v22;
LABEL_331:
        v83 = v81;
        goto LABEL_332;
      }

      if (a3 != 641234484)
      {
        goto LABEL_361;
      }

      goto LABEL_330;
    }

    if (a3 != 641877825)
    {
      v47 = 642934849;
      goto LABEL_253;
    }

    goto LABEL_256;
  }

  if (a3 <= 641230387)
  {
    if (a3 != 641230384)
    {
      if (a3 != 641230386)
      {
        goto LABEL_361;
      }

      goto LABEL_328;
    }

LABEL_231:
    v80 = (v16 + 1) >> 1;
    v81 = (a2 + 1) >> 1;
    v82 = v16;
    v83 = a2;
    v84 = v22;
LABEL_332:
    values = CA::SurfaceUtil::create_universal_plane_dict(v84, 1, v82, v83, 8, &v635);
    v42 = v22;
    v43 = v80;
    v44 = v81;
    v45 = 16;
    goto LABEL_360;
  }

  if (a3 == 641230388)
  {
LABEL_330:
    v80 = v16;
    v81 = a2;
    v84 = v22;
    v82 = v16;
    goto LABEL_331;
  }

  if (a3 == 641234480)
  {
    goto LABEL_231;
  }

LABEL_361:
  v629 = a2;
  v117 = 0;
  LODWORD(v118) = 0;
  do
  {
    v119 = v118;
    v120 = *(&values + v117);
    if (v120)
    {
      v118 = (v118 + 1);
    }

    else
    {
      v118 = v118;
    }

    v117 += 8;
  }

  while (v117 != 24);
  if (v118)
  {
    v121 = CFArrayCreate(0, &values, v118, MEMORY[0x1E695E9C0]);
    CFDictionarySetValue(Mutable, *MEMORY[0x1E696D0A8], v121);
    CFRelease(v121);
    if (v120)
    {
      v122 = v119 + 1;
    }

    else
    {
      v122 = v119;
    }

    v123 = v122 + 1;
    v124 = v118 - 1;
    do
    {
      CFRelease(*(&values + v124));
      --v123;
      --v124;
    }

    while (v123 > 1);
  }

  v625 = a4;
  if (theString1 && CFStringCompare(theString1, @"CA Assembly Buffer", 0) == kCFCompareEqualTo)
  {
    v126 = v630;
    v127 = v630;
    v128 = a2;
  }

  else
  {
    v125 = a8[4];
    v126 = v630;
    v127 = v630;
    v128 = a2;
    if (v125 && v635 > v125)
    {
      goto LABEL_382;
    }
  }

  if (v632 > v127 || v631 > v128)
  {
LABEL_382:
    a3 = CA::Render::fourcc_compressed_of_type(a3, 0, 0);
    CFRelease(Mutable);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    goto LABEL_383;
  }

  if (v635)
  {
    v129 = v628;
    v130 = v628 >> 2;
LABEL_932:
    v339 = v627;
    v341 = v625;
    v340 = v626;
    goto LABEL_933;
  }

LABEL_383:
  if (a3 > 1932550514)
  {
    if (a3 <= 1983144247)
    {
      if (a3 > 1949458802)
      {
        if (a3 > 1953903151)
        {
          if (a3 <= 1982882103)
          {
            if (a3 != 1953903152)
            {
              if (a3 != 1953903154)
              {
                v131 = 1953903668;
                goto LABEL_588;
              }

LABEL_566:
              v251 = a8[1];
              v252 = v251 - 1 + (2 * v126);
              if ((v251 & (v251 - 1)) != 0)
              {
                v231 = v252 / v251 * v251;
              }

              else
              {
                v231 = v252 & -v251;
              }

              v253 = a8[2];
              v254 = vcnt_s8(v253);
              v254.i16[0] = vaddlv_u8(v254);
              v255 = v254.u32[0];
              v239 = v128 - 1;
              v256 = *&v253 + v128 - 1;
              if (v254.u32[0] > 1uLL)
              {
                v257 = v256 / *&v253 * *&v253;
              }

              else
              {
                v257 = v256 & -*&v253;
              }

              v258 = a8[3];
              v259 = vcnt_s8(v258);
              v259.i16[0] = vaddlv_u8(v259);
              v260 = *&v258 - 1 + v257 * v231;
              if (v259.u32[0] > 1uLL)
              {
                v261 = v260 / *&v258 * *&v258;
              }

              else
              {
                v261 = v260 & -*&v258;
              }

              v634 = v261;
              if (v255 > 1)
              {
                v262 = v256 / *&v253 * *&v253;
              }

              else
              {
                v262 = v256 & -*&v253;
              }

              v263 = *&v258 - 1 + v262 * v231;
              if (v259.u32[0] > 1uLL)
              {
                v264 = v263 / *&v258 * *&v258;
              }

              else
              {
                v264 = v263 & -*&v258;
              }

              v633 = v264;
              values = CA::SurfaceUtil::create_plane_dict(v127, v128, v231, 0, v261, 1, 2);
              plane_dict = CA::SurfaceUtil::create_plane_dict(((v630 + 1) >> 1), v128, v231, v634, v633, 1, 4);
              if (CA::Render::fourcc_has_alpha(a3))
              {
                v250 = 2016567608;
                goto LABEL_606;
              }

LABEL_609:
              v129 = v628;
              v130 = v628 >> 2;
              v284 = CFArrayCreate(0, &values, 2, MEMORY[0x1E695E9C0]);
              CFDictionarySetValue(Mutable, *MEMORY[0x1E696D0A8], v284);
              CFRelease(v284);
              CFRelease(plane_dict);
              CFRelease(values);
              v635 = v633 + v634;
              a2 = v629;
LABEL_889:
              v126 = v630;
              goto LABEL_932;
            }

LABEL_546:
            v233 = (a2 + 1) >> 1;
            v234 = a8[1];
            v235 = v234 - 1 + (2 * v126);
            if ((v234 & (v234 - 1)) != 0)
            {
              v231 = v235 / v234 * v234;
            }

            else
            {
              v231 = v235 & -v234;
            }

            v236 = a8[2];
            v237 = vcnt_s8(v236);
            v237.i16[0] = vaddlv_u8(v237);
            v238 = v237.u32[0];
            v239 = v128 - 1;
            v240 = *&v236 + v128 - 1;
            if (v237.u32[0] > 1uLL)
            {
              v241 = v240 / *&v236 * *&v236;
            }

            else
            {
              v241 = v240 & -*&v236;
            }

            v242 = a8[3];
            v243 = vcnt_s8(v242);
            v243.i16[0] = vaddlv_u8(v243);
            v244 = *&v242 - 1 + v241 * v231;
            if (v243.u32[0] > 1uLL)
            {
              v245 = v244 / *&v242 * *&v242;
            }

            else
            {
              v245 = v244 & -*&v242;
            }

            v634 = v245;
            v246 = v233 + *&v236 - 1;
            if (v238 > 1)
            {
              v247 = v246 / *&v236 * *&v236;
            }

            else
            {
              v247 = v246 & -*&v236;
            }

            v248 = *&v242 - 1 + v247 * v231;
            if (v243.u32[0] > 1uLL)
            {
              v249 = v248 / *&v242 * *&v242;
            }

            else
            {
              v249 = v248 & -*&v242;
            }

            v633 = v249;
            values = CA::SurfaceUtil::create_plane_dict(v127, v128, v231, 0, v245, 1, 2);
            plane_dict = CA::SurfaceUtil::create_plane_dict(((v630 + 1) >> 1), v233, v231, v634, v633, 1, 4);
            if (CA::Render::fourcc_has_alpha(a3))
            {
              v250 = 2016436536;
              goto LABEL_606;
            }

            goto LABEL_609;
          }

          if (a3 == 1982882104)
          {
LABEL_535:
            is_444 = CA::Render::fourcc_is_444(a3);
            v225 = is_444;
            if (is_444)
            {
              v226 = v127;
            }

            else
            {
              v226 = ((v126 + 1) >> 1);
            }

            if (CA::Render::fourcc_is_420(a3))
            {
              v227 = (a2 + 1) >> 1;
            }

            else
            {
              v227 = v128;
            }

            v228 = a8[1];
            v229 = v228 - 1 + v127;
            v230 = v126;
            if ((v228 & (v228 - 1)) != 0)
            {
              v231 = v229 / v228 * v228;
              v232 = ((2 * v230) + v228 - 1) / v228 * v228;
            }

            else
            {
              v231 = v229 & -v228;
              v232 = ((2 * v230) + v228 - 1) & -v228;
            }

            if (v225)
            {
              v359 = v232;
            }

            else
            {
              v359 = v231;
            }

            v361 = a8[2];
            v360 = a8[3];
            v362 = vcnt_s8(v361);
            v362.i16[0] = vaddlv_u8(v362);
            v363 = v362.u32[0];
            v239 = v128 - 1;
            v364 = *&v361 + v128 - 1;
            v365 = v364 / *&v361 * *&v361;
            v366 = v364 & -*&v361;
            if (v362.u32[0] <= 1uLL)
            {
              v367 = v366;
            }

            else
            {
              v367 = v365;
            }

            v368 = vcnt_s8(v360);
            v368.i16[0] = vaddlv_u8(v368);
            v369 = *&v360 - 1 + v367 * v231;
            v370 = v369 / *&v360 * *&v360;
            v371 = v369 & -*&v360;
            if (v368.u32[0] <= 1uLL)
            {
              v372 = v371;
            }

            else
            {
              v372 = v370;
            }

            v634 = v372;
            v373 = v227 + *&v361 - 1;
            if (v363 > 1)
            {
              v374 = v373 / *&v361 * *&v361;
            }

            else
            {
              v374 = v373 & -*&v361;
            }

            v375 = *&v360 - 1 + v374 * v359;
            if (v368.u32[0] > 1uLL)
            {
              v376 = v375 / *&v360 * *&v360;
            }

            else
            {
              v376 = v375 & -*&v360;
            }

            v633 = v376;
            values = CA::SurfaceUtil::create_plane_dict(v127, v128, v231, 0, v372, 1, 1);
            plane_dict = CA::SurfaceUtil::create_plane_dict(v226, v227, v359, v634, v633, 1, 2);
LABEL_711:
            v377 = a8[2];
            v378 = v377 + v239;
            if ((v377 & (v377 - 1)) != 0)
            {
              v379 = v378 / v377 * v377;
            }

            else
            {
              v379 = v378 & -v377;
            }

            a2 = v629;
            v380 = a8[3];
            v381 = v380 - 1 + v379 * v231;
            if ((v380 & (v380 - 1)) != 0)
            {
              v382 = v381 / v380 * v380;
            }

            else
            {
              v382 = v381 & -v380;
            }

            v129 = v628;
            v130 = v628 >> 2;
            v647 = CA::SurfaceUtil::create_plane_dict(v127, v128, v231, v633 + v634, v382, 1, 1);
            v383 = CFArrayCreate(0, &values, 3, MEMORY[0x1E695E9C0]);
            CFDictionarySetValue(Mutable, *MEMORY[0x1E696D0A8], v383);
            CFRelease(v383);
            CFRelease(values);
            CFRelease(plane_dict);
            CFRelease(v647);
            v384 = v634 + v633 + v382;
            goto LABEL_888;
          }

          if (a3 != 1983000886)
          {
            if (a3 != 1983013176)
            {
              goto LABEL_688;
            }

            goto LABEL_535;
          }

          v465 = a8[1];
          v466 = v465 - 1 + (4 * v126);
          v467 = v466 / v465 * v465;
          v468 = v466 & -v465;
          if ((v465 & (v465 - 1)) != 0)
          {
            v469 = v467;
          }

          else
          {
            v469 = v468;
          }

          CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CE50], 4);
          CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CE58], v469);
          v470 = a8[2];
          v471 = v470 - 1 + v128;
          if ((v470 & (v470 - 1)) != 0)
          {
            v472 = v471 / v470 * v470;
          }

          else
          {
            v472 = v471 & -v470;
          }

          v129 = v628;
          v339 = v627;
          v341 = v625;
          v340 = v626;
          v579 = a8[3];
          v580 = v579 - 1 + v472 * v469;
          if ((v579 & (v579 - 1)) != 0)
          {
            v581 = v580 / v579 * v579;
          }

          else
          {
            v581 = v580 & -v579;
          }

          v635 = v581;
          LODWORD(a3) = 1983000886;
LABEL_895:
          v130 = 1;
          goto LABEL_933;
        }

        if (a3 <= 1952854575)
        {
          if (a3 == 1949458803)
          {
            goto LABEL_566;
          }

          v131 = 1949589875;
        }

        else
        {
          if (a3 == 1952854576)
          {
            goto LABEL_546;
          }

          if (a3 == 1952854578)
          {
            goto LABEL_566;
          }

          v131 = 1952855092;
        }

LABEL_588:
        if (a3 == v131)
        {
LABEL_589:
          v265 = a8[1];
          v266 = v265 - 1 + (2 * v126);
          v267 = v265 - 1 + (4 * v126);
          if ((v265 & (v265 - 1)) != 0)
          {
            v231 = v266 / v265 * v265;
            v269 = v267 / v265 * v265;
          }

          else
          {
            v268 = -v265;
            v231 = v266 & v268;
            v269 = v267 & v268;
          }

          v270 = a8[2];
          v271 = vcnt_s8(v270);
          v271.i16[0] = vaddlv_u8(v271);
          v272 = v271.u32[0];
          v239 = v128 - 1;
          v273 = *&v270 + v128 - 1;
          if (v271.u32[0] > 1uLL)
          {
            v274 = v273 / *&v270 * *&v270;
          }

          else
          {
            v274 = v273 & -*&v270;
          }

          v275 = a8[3];
          v276 = vcnt_s8(v275);
          v276.i16[0] = vaddlv_u8(v276);
          v277 = *&v275 - 1 + v274 * v231;
          if (v276.u32[0] > 1uLL)
          {
            v278 = v277 / *&v275 * *&v275;
          }

          else
          {
            v278 = v277 & -*&v275;
          }

          v634 = v278;
          if (v272 > 1)
          {
            v279 = v273 / *&v270 * *&v270;
          }

          else
          {
            v279 = v273 & -*&v270;
          }

          v280 = *&v275 - 1 + v279 * v269;
          if (v276.u32[0] > 1uLL)
          {
            v281 = v280 / *&v275 * *&v275;
          }

          else
          {
            v281 = v280 & -*&v275;
          }

          v633 = v281;
          values = CA::SurfaceUtil::create_plane_dict(v127, v128, v231, 0, v278, 1, 2);
          plane_dict = CA::SurfaceUtil::create_plane_dict(v127, v128, v269, v634, v633, 1, 4);
          if (CA::Render::fourcc_has_alpha(a3))
          {
            v250 = 2016698680;
LABEL_606:
            if (a3 == v250)
            {
              v282 = a8[1];
              v283 = v282 - 1 + v127;
              if ((v282 & (v282 - 1)) != 0)
              {
                v231 = v283 / v282 * v282;
              }

              else
              {
                v231 = v283 & -v282;
              }
            }

            goto LABEL_711;
          }

          goto LABEL_609;
        }

LABEL_688:
        CFRelease(Mutable);
        return 0;
      }

      if (a3 <= 1936077875)
      {
        if (a3 <= 1932812658)
        {
          if (a3 == 1932550515)
          {
            goto LABEL_546;
          }

          v150 = 1932681587;
        }

        else
        {
          if (a3 == 1932812659)
          {
            goto LABEL_589;
          }

          if (a3 == 1936077360)
          {
            goto LABEL_546;
          }

          v150 = 1936077362;
        }

        goto LABEL_565;
      }

      if (a3 <= 1937125937)
      {
        if (a3 == 1936077876)
        {
          goto LABEL_589;
        }

        v151 = 1937125936;
      }

      else
      {
        if (a3 == 1937125938)
        {
          goto LABEL_566;
        }

        if (a3 == 1937126452)
        {
          goto LABEL_589;
        }

        v151 = 1949327731;
      }

LABEL_545:
      if (a3 != v151)
      {
        goto LABEL_688;
      }

      goto LABEL_546;
    }

    if (a3 > 2016687215)
    {
      if (a3 > 2019963955)
      {
        if (a3 <= 2033463855)
        {
          if (a3 == 2019963956)
          {
            goto LABEL_589;
          }

          if (a3 != 2019964016)
          {
            if (a3 == 2033463606)
            {
              v133 = a8[1];
              v134 = v133 - 1 + 8 * v127;
              v135 = v134 / v133 * v133;
              v136 = v134 & -v133;
              if ((v133 & (v133 - 1)) != 0)
              {
                v137 = v135;
              }

              else
              {
                v137 = v136;
              }

              CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CE50], 8);
              CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CE58], v137);
              v138 = a8[2];
              v139 = a8[3];
              v140 = v138 - 1 + v128;
              v141 = v140 / v138 * v138;
              v142 = v140 & -v138;
              if ((v138 & (v138 - 1)) != 0)
              {
                v143 = v141;
              }

              else
              {
                v143 = v142;
              }

              v144 = v139 - 1 + v143 * v137;
              v145 = v144 / v139 * v139;
              v146 = v144 & -v139;
              if ((v139 & (v139 - 1)) != 0)
              {
                v146 = v145;
              }

              v129 = v628;
              v130 = v628 >> 2;
              v635 = v146;
              LODWORD(a3) = 2033463606;
              goto LABEL_932;
            }

            goto LABEL_688;
          }

LABEL_661:
          v332 = a8[1];
          v333 = v332 - 1 + (4 * v126);
          v334 = v333 / v332 * v332;
          v335 = v333 & -v332;
          if ((v332 & (v332 - 1)) != 0)
          {
            v186 = v334;
          }

          else
          {
            v186 = v335;
          }

          v187 = *MEMORY[0x1E696CE50];
          v188 = Mutable;
          v189 = 4;
LABEL_665:
          CA_CFDictionarySetInt(v188, v187, v189);
          CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CE58], v186);
          v336 = a8[2];
          v337 = v336 - 1 + v128;
          if ((v336 & (v336 - 1)) != 0)
          {
            v338 = v337 / v336 * v336;
          }

          else
          {
            v338 = v337 & -v336;
          }

          v129 = v628;
          v339 = v627;
          v341 = v625;
          v340 = v626;
          v342 = a8[3];
          v343 = v342 - 1 + v338 * v186;
          if ((v342 & (v342 - 1)) != 0)
          {
            v344 = v343 / v342 * v342;
          }

          else
          {
            v344 = v343 & -v342;
          }

          v130 = v628 >> 2;
          goto LABEL_672;
        }

        if (a3 != 2033463856)
        {
          if (a3 != 2037741158 && a3 != 2037741171)
          {
            goto LABEL_688;
          }

          goto LABEL_515;
        }

LABEL_680:
        v349 = ((v126 + 1) >> 1);
        v350 = a8[1];
        v351 = v350 - 1 + v127;
        v352 = v349 + v350 - 1;
        if ((v350 & (v350 - 1)) != 0)
        {
          v354 = v351 / v350 * v350;
          v355 = v352 / v350 * v350;
        }

        else
        {
          v353 = -v350;
          v354 = v351 & v353;
          v355 = v352 & v353;
        }

        v529 = a8[2];
        v530 = vcnt_s8(v529);
        v530.i16[0] = vaddlv_u8(v530);
        v531 = v530.u32[0];
        v532 = v128 + *&v529 - 1;
        if (v530.u32[0] > 1uLL)
        {
          v533 = v532 / *&v529 * *&v529;
        }

        else
        {
          v533 = v532 & -*&v529;
        }

        v534 = a8[3];
        v535 = vcnt_s8(v534);
        v535.i16[0] = vaddlv_u8(v535);
        v536 = *&v534 - 1 + v533 * v354;
        if (v535.u32[0] > 1uLL)
        {
          v537 = v536 / *&v534 * *&v534;
        }

        else
        {
          v537 = v536 & -*&v534;
        }

        v634 = v537;
        v538 = ((a2 + 1) >> 1) + *&v529 - 1;
        if (v531 > 1)
        {
          v539 = v538 / *&v529 * *&v529;
        }

        else
        {
          v539 = v538 & -*&v529;
        }

        v540 = *&v534 - 1 + v539 * v355;
        if (v535.u32[0] > 1uLL)
        {
          v541 = v540 / *&v534 * *&v534;
        }

        else
        {
          v541 = v540 & -*&v534;
        }

        v129 = v628;
        v130 = v628 >> 2;
        v633 = v541;
        values = CA::SurfaceUtil::create_plane_dict(v127, v128, v354, 0, v537, 1, 1);
        plane_dict = CA::SurfaceUtil::create_plane_dict(v349, (a2 + 1) >> 1, v355, v634, v633, 1, 1);
        v647 = CA::SurfaceUtil::create_plane_dict(v349, (a2 + 1) >> 1, v355, v633 + v634, v633, 1, 1);
        v542 = CFArrayCreate(0, &values, 3, MEMORY[0x1E695E9C0]);
        CFDictionarySetValue(Mutable, *MEMORY[0x1E696D0A8], v542);
        CFRelease(v542);
        CFRelease(v647);
        CFRelease(plane_dict);
        CFRelease(values);
        v384 = v634 + 2 * v633;
        goto LABEL_888;
      }

      if (a3 > 2016698738)
      {
        if (a3 == 2016698739)
        {
          goto LABEL_589;
        }

        if (a3 == 2019963440)
        {
          goto LABEL_546;
        }

        v150 = 2019963442;
LABEL_565:
        if (a3 != v150)
        {
          goto LABEL_688;
        }

        goto LABEL_566;
      }

      if (a3 == 2016687216)
      {
        goto LABEL_661;
      }

      v190 = 24888;
LABEL_587:
      v131 = v190 | 0x78340000;
      goto LABEL_588;
    }

    if (a3 > 2016567607)
    {
      if (a3 <= 2016686639)
      {
        if (a3 == 2016567608)
        {
          goto LABEL_566;
        }

        v150 = 2016567667;
        goto LABEL_565;
      }

      if (a3 == 2016686640)
      {
        goto LABEL_546;
      }

      if (a3 == 2016686642)
      {
        goto LABEL_566;
      }

      v190 = 13364;
      goto LABEL_587;
    }

    if (a3 > 1999908960)
    {
      if (a3 == 1999908961)
      {
        v451 = a8[1];
        v452 = v451 - 1 + 8 * v127;
        v453 = v452 / v451 * v451;
        v454 = v452 & -v451;
        if ((v451 & (v451 - 1)) != 0)
        {
          v455 = v453;
        }

        else
        {
          v455 = v454;
        }

        CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CE50], 8);
        CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CE58], v455);
        v456 = a8[2];
        v457 = a8[3];
        v458 = v456 - 1 + v128;
        v459 = v458 / v456 * v456;
        v460 = v458 & -v456;
        if ((v456 & (v456 - 1)) != 0)
        {
          v461 = v459;
        }

        else
        {
          v461 = v460;
        }

        v462 = v457 - 1 + v461 * v455;
        v463 = v462 / v457 * v457;
        v464 = v462 & -v457;
        if ((v457 & (v457 - 1)) != 0)
        {
          v464 = v463;
        }

        v129 = v628;
        v130 = v628 >> 2;
        v635 = v464;
        LODWORD(a3) = 1999908961;
        goto LABEL_932;
      }

      if (a3 == 2016436536)
      {
        goto LABEL_546;
      }

      v151 = 2016436595;
      goto LABEL_545;
    }

    if (a3 == 1983144248)
    {
      goto LABEL_535;
    }

    v223 = 1999843442;
    goto LABEL_615;
  }

  if (a3 > 1378955370)
  {
    if (a3 <= 1882469427)
    {
      if (a3 <= 1714696751)
      {
        if (a3 > 1380410944)
        {
          if (a3 != 1380410945)
          {
            if (a3 == 1380411457)
            {
              v437 = a8[1];
              v438 = v437 - 1 + 8 * v127;
              v439 = v438 / v437 * v437;
              v440 = v438 & -v437;
              if ((v437 & (v437 - 1)) != 0)
              {
                v441 = v439;
              }

              else
              {
                v441 = v440;
              }

              CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CE50], 8);
              CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CE58], v441);
              v442 = a8[2];
              v443 = a8[3];
              v444 = v442 - 1 + v128;
              v445 = v444 / v442 * v442;
              v446 = v444 & -v442;
              if ((v442 & (v442 - 1)) != 0)
              {
                v447 = v445;
              }

              else
              {
                v447 = v446;
              }

              v448 = v443 - 1 + v447 * v441;
              v449 = v448 / v443 * v443;
              v450 = v448 & -v443;
              if ((v443 & (v443 - 1)) != 0)
              {
                v450 = v449;
              }

              v129 = v628;
              v130 = v628 >> 2;
              v635 = v450;
              LODWORD(a3) = 1380411457;
              goto LABEL_932;
            }

            if (a3 == 1647534392)
            {
              v152 = a8[1];
              v153 = a8[2];
              v154 = v152 - 1 + (4 * v126);
              v155 = v154 / v152 * v152;
              v156 = v154 & -v152;
              if ((v152 & (v152 - 1)) != 0)
              {
                v157 = v155;
              }

              else
              {
                v157 = v156;
              }

              v158 = v153 + v128 - 1;
              v159 = v158 / v153 * v153;
              v160 = v158 & -v153;
              if ((v153 & (v153 - 1)) != 0)
              {
                v160 = v159;
              }

              v161 = a8[3];
              v162 = v161 - 1 + v160 * v157;
              v163 = v162 / v161 * v161;
              v164 = v162 & -v161;
              if ((v161 & (v161 - 1)) != 0)
              {
                v165 = v163;
              }

              else
              {
                v165 = v164;
              }

              values = CA::SurfaceUtil::create_plane_dict(v127, v128, v157, 0, v165, 1, 4);
              v166 = a8[1];
              v167 = a8[2];
              v168 = v166 - 1 + v127;
              v169 = v168 & -v166;
              v170 = v168 / v166 * v166;
              if ((v166 & (v166 - 1)) != 0)
              {
                v171 = v170;
              }

              else
              {
                v171 = v169;
              }

              v172 = v167 + v128 - 1;
              v173 = v172 / v167 * v167;
              v174 = v172 & -v167;
              if ((v167 & (v167 - 1)) != 0)
              {
                v174 = v173;
              }

              v175 = a8[3];
              v176 = v175 - 1 + v174 * v171;
              v177 = v176 / v175 * v175;
              v178 = v176 & -v175;
              if ((v175 & (v175 - 1)) != 0)
              {
                v179 = v177;
              }

              else
              {
                v179 = v178;
              }

              v129 = v628;
              v130 = v628 >> 2;
              plane_dict = CA::SurfaceUtil::create_plane_dict(v127, v128, v171, v165, v179, 1, 1);
              v180 = CFArrayCreate(0, &values, 2, MEMORY[0x1E695E9C0]);
              CFDictionarySetValue(Mutable, *MEMORY[0x1E696D0A8], v180);
              v181 = v180;
              v126 = v630;
              CFRelease(v181);
              CFRelease(plane_dict);
              CFRelease(values);
              v635 = v179 + v165;
              LODWORD(a3) = 1647534392;
              goto LABEL_932;
            }

            goto LABEL_688;
          }

          v486 = a8[1];
          v487 = v486 - 1 + (16 * v126);
          v488 = v487 / v486 * v486;
          v489 = v487 & -v486;
          if ((v486 & (v486 - 1)) != 0)
          {
            v490 = v488;
          }

          else
          {
            v490 = v489;
          }

          CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CE50], 16);
          CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CE58], v490);
          v491 = a8[2];
          v492 = v491 - 1 + v128;
          if ((v491 & (v491 - 1)) != 0)
          {
            v493 = v492 / v491 * v491;
          }

          else
          {
            v493 = v492 & -v491;
          }

          v129 = v628;
          v339 = v627;
          v341 = v625;
          v340 = v626;
          v582 = a8[3];
          v583 = v582 - 1 + v493 * v490;
          if ((v582 & (v582 - 1)) != 0)
          {
            v344 = v583 / v582 * v582;
          }

          else
          {
            v344 = v583 & -v582;
          }

          v130 = v628 >> 2;
          LODWORD(a3) = 1380410945;
LABEL_672:
          v635 = v344;
          goto LABEL_933;
        }

        if (a3 == 1378955371)
        {
          goto LABEL_632;
        }

        v223 = 1380401729;
        goto LABEL_615;
      }

      if (a3 <= 1815491697)
      {
        if (a3 == 1714696752)
        {
          goto LABEL_680;
        }

        v223 = 1815162994;
LABEL_615:
        if (a3 != v223)
        {
          goto LABEL_688;
        }

        goto LABEL_632;
      }

      if (a3 == 1815491698)
      {
        v494 = a8[1];
        v495 = v494 - 1 + 8 * v127;
        v496 = v495 / v494 * v494;
        v497 = v495 & -v494;
        if ((v494 & (v494 - 1)) != 0)
        {
          v498 = v496;
        }

        else
        {
          v498 = v497;
        }

        CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CE50], 8);
        CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CE58], v498);
        v499 = a8[2];
        v500 = a8[3];
        v501 = v499 - 1 + v128;
        v502 = v501 / v499 * v499;
        v503 = v501 & -v499;
        if ((v499 & (v499 - 1)) != 0)
        {
          v504 = v502;
        }

        else
        {
          v504 = v503;
        }

        v505 = v500 - 1 + v504 * v498;
        v506 = v505 / v500 * v500;
        v507 = v505 & -v500;
        if ((v500 & (v500 - 1)) != 0)
        {
          v507 = v506;
        }

        v129 = v628;
        v130 = v628 >> 2;
        v635 = v507;
        LODWORD(a3) = 1815491698;
        goto LABEL_932;
      }

      if (a3 != 1882468912)
      {
        if (a3 != 1882468914)
        {
          goto LABEL_688;
        }

        goto LABEL_659;
      }
    }

    else
    {
      if (a3 > 1886676529)
      {
        if (a3 > 1886680625)
        {
          if (a3 != 1886680626)
          {
            if (a3 != 1886680628)
            {
              if (a3 == 1919365992)
              {
                v212 = a8[1];
                v213 = v212 - 1 + (2 * v126);
                v214 = v213 / v212 * v212;
                v215 = v213 & -v212;
                if ((v212 & (v212 - 1)) != 0)
                {
                  v216 = v214;
                }

                else
                {
                  v216 = v215;
                }

                v129 = v628;
                v130 = v628 >> 2;
                v217 = v216 * v128;
                values = CA::SurfaceUtil::create_plane_dict(v127, v128, v216, 0, v216 * v128, 1, 2);
                plane_dict = CA::SurfaceUtil::create_plane_dict(v127, v128, v216, v216 * v128, v216 * v128, 1, 2);
                v647 = CA::SurfaceUtil::create_plane_dict(v127, v128, v216, 2 * v216 * v128, v216 * v128, 1, 2);
                v218 = CFArrayCreate(0, &values, 3, MEMORY[0x1E695E9C0]);
                CFDictionarySetValue(Mutable, *MEMORY[0x1E696D0A8], v218);
                CFRelease(v218);
                CFRelease(values);
                CFRelease(plane_dict);
                CFRelease(v647);
                v635 = 3 * v217;
                LODWORD(a3) = 1919365992;
                goto LABEL_932;
              }

              goto LABEL_688;
            }

LABEL_673:
            if (v624)
            {
              if (x_log_get_utilities::once != -1)
              {
                dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
              }

              v191 = x_log_get_utilities::log;
              if (!os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_688;
              }

              *buf = 0;
              v192 = "12-bit packed linear YUV formats unsupported on this platform.";
              goto LABEL_687;
            }

            v508 = CA::SurfaceUtil::rowbytes_for_packed_format(v127, a3);
            v509 = a8[1];
            v510 = v509 - 1 + v508;
            if ((v509 & (v509 - 1)) != 0)
            {
              v511 = v510 / v509 * v509;
            }

            else
            {
              v511 = v510 & -v509;
            }

            v584 = a8[2];
            v585 = vcnt_s8(v584);
            v585.i16[0] = vaddlv_u8(v585);
            v586 = v585.u32[0];
            v587 = v128 + *&v584 - 1;
            v588 = v587 / *&v584;
            if (v585.u32[0] > 1uLL)
            {
              v589 = v588 * *&v584;
            }

            else
            {
              v589 = v587 & -*&v584;
            }

            v590 = a8[3];
            v591 = vcnt_s8(v590);
            v591.i16[0] = vaddlv_u8(v591);
            v592 = *&v590 - 1 + v589 * v511;
            if (v591.u32[0] > 1uLL)
            {
              v593 = v592 / *&v590 * *&v590;
            }

            else
            {
              v593 = v592 & -*&v590;
            }

            v634 = v593;
            v561 = 2 * v511;
            if (v586 > 1)
            {
              v594 = v588 * *&v584;
            }

            else
            {
              v594 = v587 & -*&v584;
            }

            v595 = *&v590 - 1 + v594 * v561;
            if (v591.u32[0] > 1uLL)
            {
              v596 = v595 / *&v590 * *&v590;
            }

            else
            {
              v596 = v595 & -*&v590;
            }

            v129 = v628;
            v130 = v628 >> 2;
            v633 = v596;
            values = CA::SurfaceUtil::create_plane_dict(v127, v128, v511, 0, v593, 5, 8);
            v422 = v633;
            v421 = v634;
            v423 = v127;
            goto LABEL_929;
          }
        }

        else if (a3 != 1886676530)
        {
          if (a3 != 1886676532)
          {
            v132 = 30256;
LABEL_487:
            if (a3 != (v132 | 0x70740000))
            {
              goto LABEL_688;
            }

            if (v624)
            {
              if (x_log_get_utilities::once != -1)
              {
                dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
              }

              v191 = x_log_get_utilities::log;
              if (!os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_688;
              }

              *buf = 0;
              v192 = "12-bit packed linear YUV formats unsupported on this platform.";
              goto LABEL_687;
            }

            v385 = CA::SurfaceUtil::rowbytes_for_packed_format(v127, a3);
            v386 = a8[1];
            v387 = v386 - 1 + v385;
            if ((v386 & (v386 - 1)) != 0)
            {
              v388 = v387 / v386 * v386;
            }

            else
            {
              v388 = v387 & -v386;
            }

            v565 = a8[2];
            v566 = vcnt_s8(v565);
            v566.i16[0] = vaddlv_u8(v566);
            v567 = v566.u32[0];
            v568 = v128 + *&v565 - 1;
            if (v566.u32[0] > 1uLL)
            {
              v569 = v568 / *&v565 * *&v565;
            }

            else
            {
              v569 = v568 & -*&v565;
            }

            v570 = a8[3];
            v571 = vcnt_s8(v570);
            v571.i16[0] = vaddlv_u8(v571);
            v572 = *&v570 - 1 + v569 * v388;
            if (v571.u32[0] > 1uLL)
            {
              v573 = v572 / *&v570 * *&v570;
            }

            else
            {
              v573 = v572 & -*&v570;
            }

            v634 = v573;
            v574 = ((a2 + 1) >> 1) + *&v565 - 1;
            if (v567 > 1)
            {
              v575 = v574 / *&v565 * *&v565;
            }

            else
            {
              v575 = v574 & -*&v565;
            }

            v576 = *&v570 - 1 + v575 * v388;
            if (v571.u32[0] > 1uLL)
            {
              v577 = v576 / *&v570 * *&v570;
            }

            else
            {
              v577 = v576 & -*&v570;
            }

            v129 = v628;
            v130 = v628 >> 2;
            v633 = v577;
            values = CA::SurfaceUtil::create_plane_dict(v127, v128, v388, 0, v573, 5, 8);
            v415 = v633;
            v414 = v634;
            v416 = ((v630 + 1) >> 1);
            v417 = (a2 + 1) >> 1;
            v418 = v388;
            v419 = 5;
            v420 = 16;
LABEL_887:
            plane_dict = CA::SurfaceUtil::create_plane_dict(v416, v417, v418, v414, v415, v419, v420);
            v578 = CFArrayCreate(0, &values, 2, MEMORY[0x1E695E9C0]);
            CFDictionarySetValue(Mutable, *MEMORY[0x1E696D0A8], v578);
            CFRelease(v578);
            CFRelease(plane_dict);
            CFRelease(values);
            v384 = v633 + v634;
LABEL_888:
            v635 = v384;
            goto LABEL_889;
          }

          goto LABEL_673;
        }

        if (!v624)
        {
          v558 = CA::SurfaceUtil::rowbytes_for_packed_format(v127, a3);
          v559 = a8[1];
          v560 = v559 - 1 + v558;
          if ((v559 & (v559 - 1)) != 0)
          {
            v561 = v560 / v559 * v559;
          }

          else
          {
            v561 = v560 & -v559;
          }

          v597 = a8[2];
          v598 = vcnt_s8(v597);
          v598.i16[0] = vaddlv_u8(v598);
          v599 = v598.u32[0];
          v600 = v128 + *&v597 - 1;
          if (v598.u32[0] > 1uLL)
          {
            v601 = v600 / *&v597 * *&v597;
          }

          else
          {
            v601 = v600 & -*&v597;
          }

          v602 = a8[3];
          v603 = vcnt_s8(v602);
          v603.i16[0] = vaddlv_u8(v603);
          v604 = *&v602 - 1 + v601 * v561;
          if (v603.u32[0] > 1uLL)
          {
            v605 = v604 / *&v602 * *&v602;
          }

          else
          {
            v605 = v604 & -*&v602;
          }

          v634 = v605;
          if (v599 > 1)
          {
            v606 = v600 / *&v597 * *&v597;
          }

          else
          {
            v606 = v600 & -*&v597;
          }

          v607 = *&v602 - 1 + v606 * v561;
          if (v603.u32[0] > 1uLL)
          {
            v608 = v607 / *&v602 * *&v602;
          }

          else
          {
            v608 = v607 & -*&v602;
          }

          v129 = v628;
          v130 = v628 >> 2;
          v633 = v608;
          values = CA::SurfaceUtil::create_plane_dict(v127, v128, v561, 0, v605, 5, 8);
          v422 = v633;
          v421 = v634;
          v423 = ((v126 + 1) >> 1);
LABEL_929:
          v525 = v128;
          v526 = v561;
          v527 = 5;
          v528 = 16;
          goto LABEL_930;
        }

        if (x_log_get_utilities::once != -1)
        {
          dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
        }

        v191 = x_log_get_utilities::log;
        if (!os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_688;
        }

        *buf = 0;
        v192 = "12-bit packed linear YUV formats unsupported on this platform.";
LABEL_687:
        _os_log_impl(&dword_183AA6000, v191, OS_LOG_TYPE_DEFAULT, v192, buf, 2u);
        goto LABEL_688;
      }

      if (a3 > 1885745713)
      {
        if (a3 != 1885745714)
        {
          if (a3 != 1885746228)
          {
            v132 = 26160;
            goto LABEL_487;
          }

          goto LABEL_678;
        }

LABEL_659:
        v328 = CA::SurfaceUtil::rowbytes_for_packed_format(v127, a3);
        v329 = a8[1];
        v330 = v329 - 1 + v328;
        if ((v329 & (v329 - 1)) != 0)
        {
          v331 = v330 / v329 * v329;
        }

        else
        {
          v331 = v330 & -v329;
        }

        v424 = a8[2];
        v425 = vcnt_s8(v424);
        v425.i16[0] = vaddlv_u8(v425);
        v426 = v425.u32[0];
        v427 = v128 + *&v424 - 1;
        v428 = v427 / *&v424;
        if (v425.u32[0] > 1uLL)
        {
          v429 = v428 * *&v424;
        }

        else
        {
          v429 = v427 & -*&v424;
        }

        v430 = a8[3];
        v431 = vcnt_s8(v430);
        v431.i16[0] = vaddlv_u8(v431);
        v432 = *&v430 - 1 + v429 * v331;
        if (v431.u32[0] > 1uLL)
        {
          v433 = v432 / *&v430 * *&v430;
        }

        else
        {
          v433 = v432 & -*&v430;
        }

        v634 = v433;
        if (v426 > 1)
        {
          v434 = v428 * *&v424;
        }

        else
        {
          v434 = v427 & -*&v424;
        }

        v435 = *&v430 - 1 + v434 * v331;
        if (v431.u32[0] > 1uLL)
        {
          v436 = v435 / *&v430 * *&v430;
        }

        else
        {
          v436 = v435 & -*&v430;
        }

        v129 = v628;
        v130 = v628 >> 2;
        v633 = v436;
        values = CA::SurfaceUtil::create_plane_dict(v127, v128, v331, 0, v433, 3, 4);
        v422 = v633;
        v421 = v634;
        v423 = ((v126 + 1) >> 1);
        goto LABEL_830;
      }

      if (a3 == 1882469428)
      {
LABEL_678:
        v345 = CA::SurfaceUtil::rowbytes_for_packed_format(v127, a3);
        v346 = a8[1];
        v347 = v346 - 1 + v345;
        if ((v346 & (v346 - 1)) != 0)
        {
          v348 = v347 / v346 * v346;
        }

        else
        {
          v348 = v347 & -v346;
        }

        v512 = a8[2];
        v513 = vcnt_s8(v512);
        v513.i16[0] = vaddlv_u8(v513);
        v514 = v513.u32[0];
        v515 = v128 + *&v512 - 1;
        v516 = v515 / *&v512;
        if (v513.u32[0] > 1uLL)
        {
          v517 = v516 * *&v512;
        }

        else
        {
          v517 = v515 & -*&v512;
        }

        v518 = a8[3];
        v519 = vcnt_s8(v518);
        v519.i16[0] = vaddlv_u8(v519);
        v520 = *&v518 - 1 + v517 * v348;
        if (v519.u32[0] > 1uLL)
        {
          v521 = v520 / *&v518 * *&v518;
        }

        else
        {
          v521 = v520 & -*&v518;
        }

        v634 = v521;
        v331 = 2 * v348;
        if (v514 > 1)
        {
          v522 = v516 * *&v512;
        }

        else
        {
          v522 = v515 & -*&v512;
        }

        v523 = *&v518 - 1 + v522 * v331;
        if (v519.u32[0] > 1uLL)
        {
          v524 = v523 / *&v518 * *&v518;
        }

        else
        {
          v524 = v523 & -*&v518;
        }

        v129 = v628;
        v130 = v628 >> 2;
        v633 = v524;
        values = CA::SurfaceUtil::create_plane_dict(v127, v128, v348, 0, v521, 3, 4);
        v422 = v633;
        v421 = v634;
        v423 = v127;
LABEL_830:
        v525 = v128;
        v526 = v331;
        v527 = 3;
        v528 = 8;
LABEL_930:
        plane_dict = CA::SurfaceUtil::create_plane_dict(v423, v525, v526, v421, v422, v527, v528);
        v609 = CFArrayCreate(0, &values, 2, MEMORY[0x1E695E9C0]);
        CFDictionarySetValue(Mutable, *MEMORY[0x1E696D0A8], v609);
        CFRelease(v609);
        CFRelease(plane_dict);
        CFRelease(values);
        v327 = v633 + v634;
LABEL_931:
        v635 = v327;
        goto LABEL_932;
      }

      if (a3 != 1885745712)
      {
        goto LABEL_688;
      }
    }

    v285 = CA::SurfaceUtil::rowbytes_for_packed_format(v127, a3);
    v286 = a8[1];
    v287 = v286 - 1 + v285;
    if ((v286 & (v286 - 1)) != 0)
    {
      v288 = v287 / v286 * v286;
    }

    else
    {
      v288 = v287 & -v286;
    }

    v473 = a8[2];
    v474 = vcnt_s8(v473);
    v474.i16[0] = vaddlv_u8(v474);
    v475 = v474.u32[0];
    v476 = v128 + *&v473 - 1;
    if (v474.u32[0] > 1uLL)
    {
      v477 = v476 / *&v473 * *&v473;
    }

    else
    {
      v477 = v476 & -*&v473;
    }

    v478 = a8[3];
    v479 = vcnt_s8(v478);
    v479.i16[0] = vaddlv_u8(v479);
    v480 = *&v478 - 1 + v477 * v288;
    if (v479.u32[0] > 1uLL)
    {
      v481 = v480 / *&v478 * *&v478;
    }

    else
    {
      v481 = v480 & -*&v478;
    }

    v634 = v481;
    v482 = ((a2 + 1) >> 1) + *&v473 - 1;
    if (v475 > 1)
    {
      v483 = v482 / *&v473 * *&v473;
    }

    else
    {
      v483 = v482 & -*&v473;
    }

    v484 = *&v478 - 1 + v483 * v288;
    if (v479.u32[0] > 1uLL)
    {
      v485 = v484 / *&v478 * *&v478;
    }

    else
    {
      v485 = v484 & -*&v478;
    }

    v129 = v628;
    v130 = v628 >> 2;
    v633 = v485;
    values = CA::SurfaceUtil::create_plane_dict(v127, v128, v288, 0, v481, 3, 4);
    v415 = v633;
    v414 = v634;
    v416 = ((v630 + 1) >> 1);
    v417 = (a2 + 1) >> 1;
    v418 = v288;
    v419 = 3;
    v420 = 8;
    goto LABEL_887;
  }

  if (a3 <= 1027423536)
  {
    if (a3 <= 875704933)
    {
      if (a3 <= 846624120)
      {
        if (a3 != 32)
        {
          if (a3 == 843264104)
          {
            v289 = a8[1];
            v290 = v289 - 1 + 4 * v127;
            v291 = v290 / v289 * v289;
            v292 = v290 & -v289;
            if ((v289 & (v289 - 1)) != 0)
            {
              v293 = v291;
            }

            else
            {
              v293 = v292;
            }

            CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CE50], 4);
            CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CE58], v293);
            v294 = a8[2];
            v295 = a8[3];
            v296 = v294 - 1 + v128;
            v297 = v296 / v294 * v294;
            v298 = v296 & -v294;
            if ((v294 & (v294 - 1)) != 0)
            {
              v299 = v297;
            }

            else
            {
              v299 = v298;
            }

            v300 = v295 - 1 + v299 * v293;
            v301 = v300 / v295 * v295;
            v302 = v300 & -v295;
            if ((v295 & (v295 - 1)) != 0)
            {
              v302 = v301;
            }

            v129 = v628;
            v130 = v628 >> 2;
            v635 = v302;
            LODWORD(a3) = 843264104;
            goto LABEL_932;
          }

          goto LABEL_688;
        }

        goto LABEL_632;
      }

      if (a3 == 846624121)
      {
LABEL_515:
        v204 = a8[1];
        v205 = v204 - 1 + (2 * v126);
        v206 = v205 / v204 * v204;
        v207 = v205 & -v204;
        if ((v204 & (v204 - 1)) != 0)
        {
          v208 = v206;
        }

        else
        {
          v208 = v207;
        }

        CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CE50], 4);
        CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CF10], 2);
        CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CE58], v208);
        v209 = a8[2];
        v210 = v209 - 1 + v128;
        if ((v209 & (v209 - 1)) != 0)
        {
          v211 = v210 / v209 * v209;
        }

        else
        {
          v211 = v210 & -v209;
        }

        v129 = v628;
        v339 = v627;
        v341 = v625;
        v340 = v626;
        v356 = a8[3];
        v357 = v356 - 1 + v211 * v208;
        if ((v356 & (v356 - 1)) != 0)
        {
          v358 = v357 / v356 * v356;
        }

        else
        {
          v358 = v357 & -v356;
        }

        v635 = v358;
        goto LABEL_895;
      }

      if (a3 != 875704422 && a3 != 875704438)
      {
        goto LABEL_688;
      }

      v147 = a8[1];
      v148 = v147 - 1 + v127;
      if ((v147 & (v147 - 1)) != 0)
      {
        v149 = v148 / v147 * v147;
      }

      else
      {
        v149 = v148 & -v147;
      }

      v389 = a8[2];
      v390 = vcnt_s8(v389);
      v390.i16[0] = vaddlv_u8(v390);
      v391 = v390.u32[0];
      v392 = v128 + *&v389 - 1;
      if (v390.u32[0] > 1uLL)
      {
        v393 = v392 / *&v389 * *&v389;
      }

      else
      {
        v393 = v392 & -*&v389;
      }

      v399 = a8[3];
      v400 = vcnt_s8(v399);
      v400.i16[0] = vaddlv_u8(v400);
      v401 = *&v399 - 1 + v393 * v149;
      if (v400.u32[0] > 1uLL)
      {
        v402 = v401 / *&v399 * *&v399;
      }

      else
      {
        v402 = v401 & -*&v399;
      }

      v634 = v402;
      v407 = ((a2 + 1) >> 1) + *&v389 - 1;
      if (v391 > 1)
      {
        v408 = v407 / *&v389 * *&v389;
      }

      else
      {
        v408 = v407 & -*&v389;
      }

      v410 = *&v399 - 1 + v408 * v149;
      if (v400.u32[0] > 1uLL)
      {
        v411 = v410 / *&v399 * *&v399;
      }

      else
      {
        v411 = v410 & -*&v399;
      }

      v129 = v628;
      v130 = v628 >> 2;
      v633 = v411;
      values = CA::SurfaceUtil::create_plane_dict(v127, v128, v149, 0, v402, 1, 1);
      v415 = v633;
      v414 = v634;
      v416 = ((v630 + 1) >> 1);
      v417 = (a2 + 1) >> 1;
      v418 = v149;
      v419 = 1;
      v420 = 2;
      goto LABEL_887;
    }

    if (a3 <= 875836467)
    {
      if (a3 != 875704934 && a3 != 875704950)
      {
        goto LABEL_688;
      }

      v312 = a8[1];
      v313 = v312 - 1 + v127;
      if ((v312 & (v312 - 1)) != 0)
      {
        v314 = v313 / v312 * v312;
      }

      else
      {
        v314 = v313 & -v312;
      }

      v546 = a8[2];
      v547 = vcnt_s8(v546);
      v547.i16[0] = vaddlv_u8(v547);
      v548 = v547.u32[0];
      v549 = v128 + *&v546 - 1;
      if (v547.u32[0] > 1uLL)
      {
        v550 = v549 / *&v546 * *&v546;
      }

      else
      {
        v550 = v549 & -*&v546;
      }

      v551 = a8[3];
      v552 = vcnt_s8(v551);
      v552.i16[0] = vaddlv_u8(v552);
      v553 = *&v551 - 1 + v550 * v314;
      if (v552.u32[0] > 1uLL)
      {
        v554 = v553 / *&v551 * *&v551;
      }

      else
      {
        v554 = v553 & -*&v551;
      }

      v634 = v554;
      if (v548 > 1)
      {
        v555 = v549 / *&v546 * *&v546;
      }

      else
      {
        v555 = v549 & -*&v546;
      }

      v556 = *&v551 - 1 + v555 * v314;
      if (v552.u32[0] > 1uLL)
      {
        v557 = v556 / *&v551 * *&v551;
      }

      else
      {
        v557 = v556 & -*&v551;
      }

      v129 = v628;
      v130 = v628 >> 2;
      v633 = v557;
      values = CA::SurfaceUtil::create_plane_dict(v127, v128, v314, 0, v554, 1, 1);
      v422 = v633;
      v421 = v634;
      v423 = ((v126 + 1) >> 1);
LABEL_862:
      v525 = v128;
      v526 = v314;
      v527 = 1;
      v528 = 2;
      goto LABEL_930;
    }

    if (a3 != 875836468)
    {
      if (a3 != 875836518 && a3 != 875836534)
      {
        goto LABEL_688;
      }

      v193 = a8[1];
      v194 = v193 - 1 + v127;
      if ((v193 & (v193 - 1)) != 0)
      {
        v195 = v194 / v193 * v193;
      }

      else
      {
        v195 = v194 & -v193;
      }

      v394 = a8[2];
      v395 = vcnt_s8(v394);
      v395.i16[0] = vaddlv_u8(v395);
      v396 = v395.u32[0];
      v397 = v128 + *&v394 - 1;
      if (v395.u32[0] > 1uLL)
      {
        v398 = v397 / *&v394 * *&v394;
      }

      else
      {
        v398 = v397 & -*&v394;
      }

      v403 = a8[3];
      v404 = vcnt_s8(v403);
      v404.i16[0] = vaddlv_u8(v404);
      v405 = *&v403 - 1 + v398 * v195;
      if (v404.u32[0] > 1uLL)
      {
        v406 = v405 / *&v403 * *&v403;
      }

      else
      {
        v406 = v405 & -*&v403;
      }

      v634 = v406;
      v314 = 2 * v195;
      if (v396 > 1)
      {
        v409 = v397 / *&v394 * *&v394;
      }

      else
      {
        v409 = v397 & -*&v394;
      }

      v412 = *&v403 - 1 + v409 * v314;
      if (v404.u32[0] > 1uLL)
      {
        v413 = v412 / *&v403 * *&v403;
      }

      else
      {
        v413 = v412 & -*&v403;
      }

      v129 = v628;
      v130 = v628 >> 2;
      v633 = v413;
      values = CA::SurfaceUtil::create_plane_dict(v127, v128, v195, 0, v406, 1, 1);
      v422 = v633;
      v421 = v634;
      v423 = v127;
      goto LABEL_862;
    }

LABEL_527:
    v219 = a8[1];
    v220 = v219 - 1 + (2 * v126);
    v221 = v220 / v219 * v219;
    v222 = v220 & -v219;
    if ((v219 & (v219 - 1)) != 0)
    {
      v186 = v221;
    }

    else
    {
      v186 = v222;
    }

    v187 = *MEMORY[0x1E696CE50];
    v188 = Mutable;
    v189 = 2;
    goto LABEL_665;
  }

  if (a3 <= 1278226535)
  {
    if (a3 > 1093677111)
    {
      if (a3 != 1093677112)
      {
        if (a3 == 1111970369)
        {
LABEL_632:
          v303 = a8[1];
          v304 = v303 - 1 + 4 * v127;
          v305 = v304 / v303 * v303;
          v306 = v304 & -v303;
          if ((v303 & (v303 - 1)) != 0)
          {
            v307 = v305;
          }

          else
          {
            v307 = v306;
          }

LABEL_635:
          v308 = (v307 + 255) & 0xFFFFFFFFFFFFFF00;
          v309 = *MEMORY[0x1E696CE50];
          v310 = Mutable;
          v311 = 4;
LABEL_653:
          CA_CFDictionarySetInt(v310, v309, v311);
          CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CE58], v308);
          v319 = a8[2];
          v320 = a8[3];
          v321 = v319 - 1 + v128;
          v322 = v321 / v319 * v319;
          v323 = v321 & -v319;
          if ((v319 & (v319 - 1)) != 0)
          {
            v324 = v322;
          }

          else
          {
            v324 = v323;
          }

          v325 = v320 - 1 + v324 * v308;
          v326 = v325 / v320 * v320;
          v327 = v325 & -v320;
          if ((v320 & (v320 - 1)) != 0)
          {
            v327 = v326;
          }

          v129 = v628;
          v130 = v628 >> 2;
          goto LABEL_931;
        }

        if (a3 != 1278226488)
        {
          goto LABEL_688;
        }
      }

      v182 = a8[1];
      v183 = v182 - 1 + v127;
      v184 = v183 / v182 * v182;
      v185 = v183 & -v182;
      if ((v182 & (v182 - 1)) != 0)
      {
        v186 = v184;
      }

      else
      {
        v186 = v185;
      }

      v187 = *MEMORY[0x1E696CE50];
      v188 = Mutable;
      v189 = 1;
      goto LABEL_665;
    }

    if (a3 != 1027423537 && a3 != 1027423539)
    {
      goto LABEL_688;
    }

    if (!v624)
    {
      v543 = a8[1];
      v544 = v543 - 1 + (4 * v126);
      v545 = v544 / v543 * v543;
      v307 = v544 & -v543;
      if ((v543 & (v543 - 1)) != 0)
      {
        v307 = v545;
      }

      goto LABEL_635;
    }

    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v191 = x_log_get_utilities::log;
    if (!os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_688;
    }

    *buf = 0;
    v192 = "YUV passthrough formats unsupported on this platform.";
    goto LABEL_687;
  }

  if (a3 <= 1278555444)
  {
    if (a3 != 1278226536 && a3 != 1278226742)
    {
      goto LABEL_688;
    }

    v315 = a8[1];
    v316 = v315 - 1 + 2 * v127;
    v317 = v316 / v315 * v315;
    v318 = v316 & -v315;
    if ((v315 & (v315 - 1)) != 0)
    {
      v308 = v317;
    }

    else
    {
      v308 = v318;
    }

    v309 = *MEMORY[0x1E696CE50];
    v310 = Mutable;
    v311 = 2;
    goto LABEL_653;
  }

  if (a3 == 1278555445 || a3 == 1278555701)
  {
    goto LABEL_527;
  }

  if (a3 != 1279340600)
  {
    goto LABEL_688;
  }

  v196 = a8[1];
  v197 = v196 - 1 + (2 * v126);
  v198 = v197 / v196 * v196;
  v199 = v197 & -v196;
  if ((v196 & (v196 - 1)) != 0)
  {
    v200 = v198;
  }

  else
  {
    v200 = v199;
  }

  CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CE50], 2);
  CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CE58], v200);
  v201 = a8[2];
  v202 = v201 - 1 + v128;
  if ((v201 & (v201 - 1)) != 0)
  {
    v203 = v202 / v201 * v201;
  }

  else
  {
    v203 = v202 & -v201;
  }

  v129 = v628;
  v339 = v627;
  v341 = v625;
  v340 = v626;
  v562 = a8[3];
  v563 = v562 - 1 + v203 * v200;
  if ((v562 & (v562 - 1)) != 0)
  {
    v564 = v563 / v562 * v562;
  }

  else
  {
    v564 = v563 & -v562;
  }

  v130 = v628 >> 2;
  v635 = v564;
  LODWORD(a3) = 1279340600;
LABEL_933:
  CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696D130], v126);
  CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CF58], a2);
  CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CFC0], a3);
  CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CE60], v341);
  CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CE30], v635);
  CA_CFDictionarySetInt(Mutable, *MEMORY[0x1E696CF70], v340);
  if (v339)
  {
    CA_CFDictionarySetLongLong(Mutable, *MEMORY[0x1E696D0F0], v339);
  }

  v610 = *MEMORY[0x1E695E4D0];
  if ((v129 & 0x10) != 0)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E696D0E0], *MEMORY[0x1E695E4D0]);
  }

  if (v130)
  {
    v611 = v610;
  }

  else
  {
    v611 = *MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x1E696CFB8], v611);
  if ((v129 & 2) != 0)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E696CF90], @"PurpleGfxMem");
  }

  if ((v129 & 0x40) != 0)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E696D110], v610);
  }

  v612 = IOSurfaceCreate(Mutable);
  CFRelease(Mutable);
  if (!v612)
  {
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v613 = x_log_get_utilities::log;
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      v615 = BYTE3(a3);
      if ((a3 & 0x80000000) != 0)
      {
        v616 = __maskrune(v615, 0x40000uLL);
      }

      else
      {
        v616 = *(MEMORY[0x1E69E9830] + 4 * v615 + 60) & 0x40000;
      }

      if (v616)
      {
        v617 = a3 >> 24;
      }

      else
      {
        v617 = 32;
      }

      if (BYTE2(a3) <= 0x7Fu)
      {
        v618 = *(MEMORY[0x1E69E9830] + 4 * BYTE2(a3) + 60) & 0x40000;
      }

      else
      {
        v618 = __maskrune(BYTE2(a3), 0x40000uLL);
      }

      if (v618)
      {
        v619 = SBYTE2(a3);
      }

      else
      {
        v619 = 32;
      }

      if (BYTE1(a3) <= 0x7Fu)
      {
        v620 = *(MEMORY[0x1E69E9830] + 4 * BYTE1(a3) + 60) & 0x40000;
      }

      else
      {
        v620 = __maskrune(BYTE1(a3), 0x40000uLL);
      }

      if (v620)
      {
        v621 = SBYTE1(a3);
      }

      else
      {
        v621 = 32;
      }

      if (a3 <= 0x7Fu)
      {
        v622 = *(MEMORY[0x1E69E9830] + 4 * a3 + 60) & 0x40000;
      }

      else
      {
        v622 = __maskrune(a3, 0x40000uLL);
      }

      v623 = a3;
      *buf = 67110400;
      if (!v622)
      {
        v623 = 32;
      }

      *&buf[4] = v126;
      *&buf[8] = 1024;
      *&buf[10] = v629;
      *&buf[14] = 1024;
      LODWORD(v637) = v617;
      WORD2(v637) = 1024;
      *(&v637 + 6) = v619;
      WORD5(v637) = 1024;
      HIDWORD(v637) = v621;
      LOWORD(v638) = 1024;
      *(&v638 + 2) = v623;
      _os_log_error_impl(&dword_183AA6000, v613, OS_LOG_TYPE_ERROR, "CAIOSurfaceCreate: failed to allocate IOSurface (size: %u x %u, format: %c%c%c%c)\n", buf, 0x26u);
    }

    return 0;
  }

  if (theString1)
  {
    IOSurfaceSetValue(v612, *MEMORY[0x1E696CF98], theString1);
  }

  v644 = 0;
  v642 = 0u;
  v643 = 0u;
  v640 = 0u;
  v641 = 0u;
  v638 = 0u;
  v639 = 0u;
  *buf = 0u;
  v637 = 0u;
  *(&v639 + 11) = 3329;
  IOSurfaceSetBulkAttachments2();
  return v612;
}

CFDictionaryRef CA::SurfaceUtil::create_universal_plane_dict(unsigned int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  keys[20] = *MEMORY[0x1E69E9840];
  v45 = a4;
  v46 = a3;
  v7 = *a6;
  valuePtr = 5;
  v44 = v7;
  if (a1)
  {
    v8 = 4;
  }

  else
  {
    v8 = 3;
  }

  v41 = a1;
  v42 = v8;
  v9 = -16;
  if (a2)
  {
    v9 = -32;
  }

  v10 = 16;
  v11 = 32;
  if (a2)
  {
    v10 = 32;
  }

  v12 = 8;
  if (!a2)
  {
    v11 = 8;
  }

  v39 = v11;
  v40 = v10;
  v13 = 4;
  if (a2)
  {
    v13 = 5;
    v12 = 10;
    v14 = 5;
  }

  else
  {
    v14 = 3;
  }

  v37 = ((v10 - 1 + a4) & v9) >> v13;
  v38 = ((v10 - 1 + a3) & v9) >> v13;
  v36 = ((a5 << v12) >> 3) & 0x1FFFFFE0;
  v35 = v38 * v36;
  v15 = (v37 * v38 * v36 + 127) & 0xFFFFFFFFFFFFFF80;
  v16 = vcvtps_s32_f32(log2f(v38));
  v17 = (((1 << v16 << vcvtps_s32_f32(log2f(v37))) << v14) + 127) & 0xFFFFFFFFFFFFFF80;
  if (CADeviceNeeds2kPlaneAlignment::once[0] != -1)
  {
    dispatch_once(CADeviceNeeds2kPlaneAlignment::once, &__block_literal_global_107);
  }

  v18 = -128;
  if (CADeviceNeeds2kPlaneAlignment::needs_2k_alignment)
  {
    v18 = -2048;
  }

  v19 = 128;
  if (CADeviceNeeds2kPlaneAlignment::needs_2k_alignment)
  {
    v19 = 2048;
  }

  v34 = (v15 + v19 + v17 - 1) & v18;
  *a6 += v34;
  v33 = v7 + v15;
  v20 = *MEMORY[0x1E696D048];
  keys[0] = *MEMORY[0x1E696CE28];
  keys[1] = v20;
  v21 = *MEMORY[0x1E696D0B8];
  keys[2] = *MEMORY[0x1E696D0B0];
  keys[3] = v21;
  v22 = *MEMORY[0x1E696CFE0];
  keys[4] = *MEMORY[0x1E696CFD8];
  keys[5] = v22;
  v23 = *MEMORY[0x1E696CFE8];
  keys[6] = *MEMORY[0x1E696D000];
  keys[7] = v23;
  v24 = *MEMORY[0x1E696D020];
  keys[8] = *MEMORY[0x1E696CFF8];
  keys[9] = v24;
  v25 = *MEMORY[0x1E696D030];
  keys[10] = *MEMORY[0x1E696D028];
  keys[11] = v25;
  v26 = *MEMORY[0x1E696D060];
  keys[12] = *MEMORY[0x1E696D038];
  keys[13] = v26;
  v27 = *MEMORY[0x1E696D0C8];
  keys[14] = *MEMORY[0x1E696D058];
  keys[15] = v27;
  v28 = *MEMORY[0x1E696D0D0];
  keys[16] = *MEMORY[0x1E696D090];
  keys[17] = v28;
  v29 = *MEMORY[0x1E696D040];
  keys[18] = *MEMORY[0x1E696D098];
  keys[19] = v29;
  values[0] = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  values[1] = CFNumberCreate(0, kCFNumberCFIndexType, &v42);
  values[2] = CFNumberCreate(0, kCFNumberCFIndexType, &v44);
  values[3] = CFNumberCreate(0, kCFNumberCFIndexType, &v34);
  values[4] = CFNumberCreate(0, kCFNumberCFIndexType, &v39);
  values[5] = CFNumberCreate(0, kCFNumberCFIndexType, &v36);
  values[6] = CFNumberCreate(0, kCFNumberCFIndexType, &v36);
  values[7] = CFNumberCreate(0, kCFNumberCFIndexType, &v35);
  values[8] = CFNumberCreate(0, kCFNumberCFIndexType, &v35);
  values[9] = CFNumberCreate(0, kCFNumberCFIndexType, &v44);
  values[10] = CFNumberCreate(0, kCFNumberCFIndexType, &v33);
  values[11] = CFNumberCreate(0, kCFNumberCFIndexType, &v40);
  values[12] = CFNumberCreate(0, kCFNumberCFIndexType, &v40);
  values[13] = CFNumberCreate(0, kCFNumberCFIndexType, &v40);
  values[14] = CFNumberCreate(0, kCFNumberCFIndexType, &v40);
  values[15] = CFNumberCreate(0, kCFNumberCFIndexType, &v46);
  values[16] = CFNumberCreate(0, kCFNumberCFIndexType, &v45);
  values[17] = CFNumberCreate(0, kCFNumberCFIndexType, &v38);
  values[18] = CFNumberCreate(0, kCFNumberCFIndexType, &v37);
  values[19] = CFNumberCreate(0, kCFNumberCFIndexType, &v41);
  v30 = CFDictionaryCreate(0, keys, values, 20, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  for (i = 0; i != 20; ++i)
  {
    CFRelease(values[i]);
  }

  return v30;
}

const char *CA_CFStringGetCString(const __CFString *a1, char *a2, CFIndex a3)
{
  result = CFStringGetCStringPtr(a1, 0x8000100u);
  if (!result)
  {
    if (CFStringGetCString(a1, a2, a3, 0x8000100u))
    {
      return a2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CA::Render::Filter::evaluate_identity(CA::Render::Filter *this)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(this + 6);
  if (!v2)
  {
    v32 = 0uLL;
    v5 = *(this + 6);
    if (v5 <= 309)
    {
      if (v5 <= 116)
      {
        if (v5 != 102)
        {
          if (v5 == 109)
          {
            v8 = *(this + 5);
            v7 = 0.0;
            v15 = 326;
            return CA::Render::KeyValueArray::get_float_key(v8, v15, v7) == 0.0;
          }

          if (v5 != 114)
          {
            return 0;
          }

          goto LABEL_34;
        }

        return CA::Render::KeyValueArray::get_color_key(*(this + 5), 360, 0) == 0;
      }

      if (v5 != 117)
      {
        if (v5 == 120)
        {
          return CA::Render::KeyValueArray::get_color_key(*(this + 5), 360, 0) == 0;
        }

        if (v5 == 177)
        {
          v9 = *(this + 5);
          if (!v9)
          {
            return 1;
          }

          v10 = *(v9 + 16);
          if (!v10)
          {
            return 1;
          }

          v11 = 0;
          v12 = v9 + 24;
          while (1)
          {
            v13 = *(v12 + 8 * v11);
            if (*(v13 + 16) == 402)
            {
              break;
            }

            if (v10 == ++v11)
            {
              goto LABEL_54;
            }
          }

          if ((v11 & 0x80000000) == 0)
          {
            v24 = *(v13 + 24);
            result = v24 == 0;
            if (v24)
            {
              return result;
            }
          }

LABEL_54:
          v25 = 0;
          while (1)
          {
            v26 = *(v12 + 8 * v25);
            if (*(v26 + 16) == 383)
            {
              break;
            }

            if (v10 == ++v25)
            {
              goto LABEL_62;
            }
          }

          if ((v25 & 0x80000000) == 0)
          {
            v27 = *(v26 + 24);
            result = v27 == 0;
            if (v27)
            {
              return result;
            }
          }

LABEL_62:
          v28 = 0;
          while (1)
          {
            v29 = *(v12 + 8 * v28);
            if (*(v29 + 16) == 345)
            {
              break;
            }

            if (v10 == ++v28)
            {
              goto LABEL_68;
            }
          }

          if ((v28 & 0x80000000) == 0)
          {
            v30 = *(v29 + 24);
            result = v30 == 0;
            if (v30)
            {
              return result;
            }
          }

LABEL_68:
          v31 = 0;
          result = 1;
          while (1)
          {
            v23 = *(v12 + 8 * v31);
            if (*(v23 + 16) == 324)
            {
              break;
            }

            if (v10 == ++v31)
            {
              return result;
            }
          }

          if ((v31 & 0x80000000) != 0)
          {
            return 1;
          }

          return *(v23 + 24) == 0;
        }

        return 0;
      }

      v16 = *(this + 5);
      v17 = 1.0;
      v18 = 1.0;
      return CA::Render::KeyValueArray::get_float_key(v16, 325, v18) == v17;
    }

    if (v5 > 525)
    {
      if (v5 == 679)
      {
        v16 = *(this + 5);
        v17 = 0.5;
        v18 = 0.5;
        return CA::Render::KeyValueArray::get_float_key(v16, 325, v18) == v17;
      }

      if (v5 == 540)
      {
LABEL_34:
        v8 = *(this + 5);
        v7 = 0.0;
        goto LABEL_35;
      }

      if (v5 != 526)
      {
        return 0;
      }

      if (CA::Render::KeyValueArray::get_float_color_key(*(this + 5), 360, &v32))
      {
        result = 0;
        if (v32.f32[0] != 1.0 || v32.f32[1] != 1.0 || v32.f32[2] != 1.0)
        {
          return result;
        }

        return v32.f32[3] == 1.0;
      }
    }

    else if (v5 != 310)
    {
      if (v5 == 495)
      {
        v19 = *(this + 5);
        if (!v19)
        {
          return 1;
        }

        v20 = *(v19 + 16);
        if (!v20)
        {
          return 1;
        }

        v21 = 0;
        v22 = v19 + 24;
        result = 1;
        while (1)
        {
          v23 = *(v22 + 8 * v21);
          if (*(v23 + 16) == 436)
          {
            break;
          }

          if (v20 == ++v21)
          {
            return result;
          }
        }

        if ((v21 & 0x80000000) != 0)
        {
          return 1;
        }

        return *(v23 + 24) == 0;
      }

      if (v5 != 516)
      {
        return 0;
      }

      v6 = *(this + 5);
      if (CA::Render::KeyValueArray::get_float_key(v6, 416, 1.0) != 0.0)
      {
        v7 = 1.0;
        v8 = v6;
LABEL_35:
        v15 = 325;
        return CA::Render::KeyValueArray::get_float_key(v8, v15, v7) == 0.0;
      }
    }

    return 1;
  }

  v3 = **v2;

  return v3();
}

uint64_t CA::Render::Shmem::port(mach_port_t *object_handle)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = object_handle + 8;
  result = object_handle[8];
  if (!result)
  {
    v4 = (object_handle[3] & 0x100) != 0 ? 5242883 : 5242881;
    v5 = *(object_handle + 3);
    size = *(object_handle + 2);
    memory_entry_64 = mach_make_memory_entry_64(*MEMORY[0x1E69E9A60], &size, v5, v4, v3, 0);
    result = object_handle[8];
    if (!result)
    {
      if (CADeviceHasInternalBuild::once != -1)
      {
        dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
      }

      v7 = CADeviceHasInternalBuild::internal;
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v8 = x_log_get_render(void)::log;
      v9 = os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR);
      v10 = v9;
      if (v7)
      {
        if (v9)
        {
          v11 = *v3;
          *buf = 134219008;
          v14 = size;
          v15 = 2048;
          v16 = v5;
          v17 = 1024;
          v18 = v4;
          v19 = 1024;
          v20 = v11;
          v21 = 1024;
          v22 = memory_entry_64;
          _os_log_error_impl(&dword_183AA6000, v8, OS_LOG_TYPE_ERROR, "CoreAnimation: mach_make_memory_entry_64 (size %llu, addr 0x%llx, prot 0x%x, port %u) = 0x%x", buf, 0x28u);
        }

        abort();
      }

      result = *v3;
      if (v10)
      {
        *buf = 134219008;
        v14 = size;
        v15 = 2048;
        v16 = v5;
        v17 = 1024;
        v18 = v4;
        v19 = 1024;
        v20 = result;
        v21 = 1024;
        v22 = memory_entry_64;
        _os_log_error_impl(&dword_183AA6000, v8, OS_LOG_TYPE_ERROR, "mach_make_memory_entry_64 (size %llu, addr 0x%llx, prot 0x%x, port %u) = 0x%x", buf, 0x28u);
        return *v3;
      }
    }
  }

  return result;
}

_DWORD *CA::Render::Shmem::new_shmem(mem_entry_name_port_t object, mach_vm_size_t size, int a3, int a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  if ((a4 & 2) != 0)
  {
    cur_protection = 1;
  }

  else
  {
    cur_protection = v8;
  }

  v10 = (a4 & 2) == 0 && !(a4 & 1);
  address = 0;
  v11 = mach_vm_map(*MEMORY[0x1E69E9A60], &address, size, *MEMORY[0x1E69E9AB8], 856686593, object, 0, v10, cur_protection, cur_protection, 2u);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = address == 0;
  }

  if (v12)
  {
    v13 = v11;
    if (CADeviceHasInternalBuild::once != -1)
    {
      dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
    }

    v14 = CADeviceHasInternalBuild::internal;
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v15 = x_log_get_render(void)::log;
    v16 = os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      if (v16)
      {
        *buf = 134218752;
        v21 = size;
        v22 = 1024;
        v23 = object;
        v24 = 1024;
        v25 = cur_protection;
        v26 = 1024;
        v27 = v13;
        _os_log_error_impl(&dword_183AA6000, v15, OS_LOG_TYPE_ERROR, "CoreAnimation: Failed to map %ld bytes with port = %u, protection = %u, err = 0x%x\n", buf, 0x1Eu);
      }

      abort();
    }

    if (v16)
    {
      *buf = 134218752;
      v21 = size;
      v22 = 1024;
      v23 = object;
      v24 = 1024;
      v25 = cur_protection;
      v26 = 1024;
      v27 = v13;
      _os_log_error_impl(&dword_183AA6000, v15, OS_LOG_TYPE_ERROR, "Failed to map %ld bytes with port = %u, protection = %u, err = 0x%x\n", buf, 0x1Eu);
    }

    return 0;
  }

  else
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x38uLL, 0xDEEC3011uLL);
    if (result)
    {
      v18 = address;
      result[2] = 1;
      result[3] = (a4 << 8) & 0x4B00 | 0x1034;
      ++dword_1ED4EAB08;
      *result = &unk_1EF1F5090;
      *(result + 2) = size;
      *(result + 3) = v18;
      result[8] = 0;
      *(result + 5) = CA::Render::release_deallocate;
      *(result + 6) = result;
      result[9] = 0;
    }

    if (a3)
    {
      result[8] = object;
    }
  }

  return result;
}

uint64_t CA::WindowServer::AppleInternalDisplay::hardware_minimum_frame_duration(CA::WindowServer::AppleInternalDisplay *this)
{
  v1 = 1;
  if ((*(this + 160) & 0x10) != 0)
  {
    if (*(this + 82) >= 0)
    {
      v1 = 1;
    }

    else
    {
      v1 = 2;
    }
  }

  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  if (v1 <= *&dword_1ED4E9704)
  {
    return *&dword_1ED4E9704;
  }

  return v1;
}

void *CA::Render::encode_set_object(CA::Render *this, CA::Render::Encoder *a2, int a3, CA::Render::Object *a4, CA::Render::Object *a5)
{
  v5 = a5;
  v10 = *(this + 4);
  if ((v10 + 1) > *(this + 5))
  {
    CA::Render::Encoder::grow(this, 1);
    v10 = *(this + 4);
  }

  *(this + 4) = v10 + 1;
  *v10 = 2;
  v11 = *(this + 4);
  if ((v11 + 1) > *(this + 5))
  {
    CA::Render::Encoder::grow(this, 8);
    v11 = *(this + 4);
  }

  *v11 = a2;
  v12 = *(this + 4);
  v13 = *(this + 5);
  v14 = (v12 + 8);
  *(this + 4) = v12 + 8;
  if (v12 + 12 > v13)
  {
    CA::Render::Encoder::grow(this, 4);
    v14 = *(this + 4);
  }

  *v14 = a3;
  *(this + 4) += 4;
  CA::Render::Encoder::encode_object_uncached(this, a4);
  v15 = *(this + 4);
  if ((v15 + 1) > *(this + 5))
  {
    CA::Render::Encoder::grow(this, 4);
    v15 = *(this + 4);
  }

  *v15 = v5;
  *(this + 4) += 4;

  return CA::Render::Encoder::encode_sanity_check(this);
}

uint64_t std::unordered_set<unsigned int>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1, *(i + 4));
  }

  return a1;
}

void *CA::Render::Encoder::encode_object_uncached(void *this, const CA::Render::Object *a2)
{
  v3 = this;
  if (a2)
  {
    v4 = *(a2 + 12);
  }

  else
  {
    v4 = 0;
  }

  v5 = this[4];
  if ((v5 + 1) > this[5])
  {
    this = CA::Render::Encoder::grow(this, 1);
    v5 = v3[4];
  }

  v3[4] = v5 + 1;
  *v5 = v4;
  if (v4)
  {
    v6 = *(*a2 + 32);

    return v6(a2, v3);
  }

  return this;
}

void CA::Render::Encoder::encode_object(CA::Render::Encoder *this, const CA::Render::Object *a2)
{
  if (a2 && *(this + 9) && (*(*a2 + 24))(a2))
  {
    v4 = *(this + 9);
    os_unfair_lock_lock(&CA::Render::Encoder::ObjectCache::_lock);
    v5 = x_hash_table_lookup(*(v4 + 8), a2, 0);
    if (v5)
    {
      os_unfair_lock_unlock(&CA::Render::Encoder::ObjectCache::_lock);
      v6 = *(this + 4);
      if ((v6 + 1) > *(this + 5))
      {
        CA::Render::Encoder::grow(this, 1);
        v6 = *(this + 4);
      }

      *(this + 4) = v6 + 1;
      *v6 = -1;
      if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
      {
        dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
      }

      v7 = a2 + CA::Render::_render_id_slide;
      v8 = *(this + 4);
      if ((v8 + 1) > *(this + 5))
      {
        CA::Render::Encoder::grow(this, 8);
        v8 = *(this + 4);
      }

      *v8 = v7;
      v9 = *(this + 4);
      v10 = *(this + 5);
      v11 = (v9 + 8);
      *(this + 4) = v9 + 8;
      if (v9 + 12 > v10)
      {
        CA::Render::Encoder::grow(this, 4);
        v11 = *(this + 4);
      }

      *v11 = v5;
      *(this + 4) += 4;
      return;
    }

    do
    {
      add = atomic_fetch_add(CA::Render::next_sequence(void)::sequence, 1u);
      v13 = add + 1;
    }

    while (add == -1);
    hash_table_modify(*(v4 + 8), a2, add + 1, 0);
    *(a2 + 3) |= 0x80000000;
    os_unfair_lock_unlock(&CA::Render::Encoder::ObjectCache::_lock);
    v14 = *(this + 4);
    if ((v14 + 1) > *(this + 5))
    {
      CA::Render::Encoder::grow(this, 1);
      v14 = *(this + 4);
    }

    *(this + 4) = v14 + 1;
    *v14 = -2;
    if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
    {
      dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
    }

    v15 = a2 + CA::Render::_render_id_slide;
    v16 = *(this + 4);
    if ((v16 + 1) > *(this + 5))
    {
      CA::Render::Encoder::grow(this, 8);
      v16 = *(this + 4);
    }

    *v16 = v15;
    v17 = *(this + 4);
    v18 = *(this + 5);
    v19 = (v17 + 8);
    *(this + 4) = v17 + 8;
    if (v17 + 12 > v18)
    {
      CA::Render::Encoder::grow(this, 4);
      v19 = *(this + 4);
    }

    *v19 = v13;
    *(this + 4) += 4;
  }

  CA::Render::Encoder::encode_object_uncached(this, a2);
}