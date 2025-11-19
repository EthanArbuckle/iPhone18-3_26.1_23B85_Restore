size_t _XRegisterClient(size_t result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) == 0 || *(result + 24) != 5 || *(result + 4) != 108)
  {
    v3 = -304;
    goto LABEL_14;
  }

  if (*(result + 38) << 16 != 1114112 || *(result + 50) << 16 != 1114112 || *(result + 62) << 16 != 1114112 || *(result + 74) << 16 != 1114112 || *(result + 87) != 1 || *(result + 88) != *(result + 104))
  {
    v3 = -300;
    goto LABEL_14;
  }

  v14 = 0;
  if (*(result + 108) || *(result + 112) <= 0x1Fu)
  {
    v3 = -309;
LABEL_14:
    *(a2 + 32) = v3;
LABEL_15:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 32) = 0x13000000000000;
  *(a2 + 44) = 0x11000000000000;
  v4 = *(result + 28);
  v5 = *(result + 40);
  v6 = *(result + 52);
  v7 = *(result + 64);
  v8 = *(result + 100);
  v9 = *(result + 76);
  v10 = *(result + 88);
  v11 = *(result + 144);
  v15[0] = *(result + 128);
  v15[1] = v11;
  result = CASRegisterClient(v4, v5, v6, v7, v8, v9, v10, (a2 + 28), (a2 + 40), (a2 + 60), (a2 + 64), (a2 + 76), &v14, v15);
  if (result)
  {
    *(a2 + 32) = result;
    goto LABEL_15;
  }

  v12 = *MEMORY[0x1E69E99E0];
  *(a2 + 52) = *MEMORY[0x1E69E99E0];
  result = strlen((a2 + 76));
  if ((result + 1) >> 32)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = v12;
  }

  else
  {
    *(a2 + 68) = 0;
    *(a2 + 72) = result + 1;
    v13 = (result + 4) & 0xFFFFFFFC;
    *(a2 + v13 + 76) = v14;
    *a2 |= 0x80000000;
    *(a2 + 4) = v13 + 80;
    *(a2 + 24) = 2;
  }

  return result;
}

CA::Render::Context *CA::Render::Context::Context(CA::Render::Context *this, const __CFDictionary *a2, char a3, int a4, unsigned int a5)
{
  *(this + 2) = 1;
  *(this + 3) = 10;
  ++dword_1ED4EAA60;
  *this = &unk_1EF1F6AD0;
  *(this + 13) = 0;
  *(this + 18) = 0xF00000010;
  *(this + 38) = 4;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  *(this + 17) = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x80uLL, 0x2004093837F09uLL);
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *&v10 = -1;
  *(&v10 + 1) = -1;
  *(this + 196) = v10;
  *(this + 212) = v10;
  *(this + 35) = 0;
  *(this + 228) = 0u;
  *(this + 61) = 0;
  *(this + 77) = 1065353216;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 86) = 1065353216;
  *(this + 88) = 0;
  *(this + 53) = 0;
  *(this + 27) = 0u;
  *(this + 118) = 0;
  *(this + 128) = 0;
  *(this + 520) = 0u;
  *(this + 67) = 0;
  *(this + 70) = 0;
  *(this + 166) = 0;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 404) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 360) = 0u;
  *(this + 176) = 1065353216;
  *(this + 178) = 0;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 94) = 0;
  *(this + 190) = 1065353216;
  v11 = mach_absolute_time();
  *(this + 62) = CATimeWithHostTime(v11);
  *(this + 61) = 0x7FF0000000000000;
  *(this + 63) = -1;
  while (1)
  {
    do
    {
      v12 = arc4random();
      *(this + 4) = v12;
    }

    while (!v12);
    v13 = CA::Render::Context::context_by_id(v12);
    if (!v13)
    {
      break;
    }

    if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v13 + 16))(v13);
    }
  }

  x_thread_init_mutex((this + 72), 1);
  if (a2)
  {
    *(this + 4) = CFRetain(a2);
    Value = CFDictionaryGetValue(a2, @"disableGroupOpacity");
    if (Value && CA_CFBoolValue(Value))
    {
      *(this + 3) |= 0x80uLL;
    }

    v15 = CFDictionaryGetValue(a2, @"disableEdgeAA");
    if (v15 && CA_CFBoolValue(v15))
    {
      *(this + 3) |= 0x100uLL;
    }

    v16 = CFDictionaryGetValue(a2, @"name");
    if (v16)
    {
      v17 = v16;
      v18 = CFGetTypeID(v16);
      if (v18 == CFStringGetTypeID())
      {
        v20 = CA::Render::String::new_string(v17, v19);
        v21 = *(this + 30);
        *(this + 30) = v20;
        if (v21)
        {
          if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v21 + 16))(v21);
          }
        }
      }
    }

    v22 = CFDictionaryGetValue(a2, @"backdropNamespace");
    if (v22 && CA_CFBoolValue(v22))
    {
      *(this + 292) |= 1u;
    }

    v23 = CFDictionaryGetValue(a2, @"ignoresHitTest");
    if (v23 && CA_CFBoolValue(v23))
    {
      *(this + 3) |= 0x200uLL;
    }

    v24 = CFDictionaryGetValue(a2, @"displayable");
    if (v24)
    {
      v25 = CA_CFBoolValue(v24);
      if ((a3 & 1) != 0 && v25)
      {
        *(this + 3) |= 0x4000u;
        os_unfair_lock_lock(&CA::Render::LayerHost::_lock);
        os_unfair_lock_lock(&CA::Render::Context::_context_lock);
        CA::Render::Context::set_visible_locked(this, 1);
        os_unfair_lock_unlock(&CA::Render::Context::_context_lock);
        os_unfair_lock_unlock(&CA::Render::LayerHost::_lock);
      }
    }

    v26 = CFDictionaryGetValue(a2, @"secure");
    if (v26)
    {
      v27 = CA_CFBoolValue(v26);
      if ((a3 & 2) != 0 && v27)
      {
        *(this + 292) |= 4u;
      }
    }

    v28 = CFDictionaryGetValue(a2, @"allowsOcclusionDetectionOverride");
    if (v28)
    {
      v29 = CA_CFBoolValue(v28);
      if ((a3 & 4) != 0 && v29)
      {
        *(this + 292) |= 8u;
      }
    }

    v30 = CFDictionaryGetValue(a2, @"startSecureSuperlayersValidation");
    if (v30 && CA_CFBoolValue(v30))
    {
      *(this + 292) |= 0x10u;
    }

    v31 = CFDictionaryGetValue(a2, @"stopSecureSuperlayersValidation");
    if (v31)
    {
      v32 = CA_CFBoolValue(v31);
      if ((a3 & 2) != 0 && v32)
      {
        *(this + 292) |= 0x20u;
      }
    }

    v33 = CFDictionaryGetValue(a2, @"cannotObscure");
    if (v33 && CA_CFBoolValue(v33))
    {
      *(this + 3) |= 0x4000000u;
    }

    v34 = CFDictionaryGetValue(a2, @"canRenderAboveBlankingContext");
    if (v34 && CA_CFBoolValue(v34))
    {
      *(this + 3) |= 0x8000000u;
    }
  }

  atomic_store(a5, this + 57);
  *(this + 3) |= a4 << 8;
  *(this + 76) = 1;
  *(this + 75) = 0;
  *(this + 292) &= ~2u;
  os_unfair_lock_lock(&CA::Render::Context::_context_lock);
  v35 = CA::Render::Context::_context_table;
  if (!CA::Render::Context::_context_table)
  {
    CA::Render::Context::_context_table = x_hash_table_new_(0, 0, 0, 0, 0, 0);
    CA::Render::add_observer(0x2Fu, 0, CA::Render::Context::get_debug_log, CA::Render::Context::_context_table, 0);
    v35 = CA::Render::Context::_context_table;
  }

  v36 = *(this + 4);
  v37 = this;
  if (!atomic_fetch_add(this + 2, 1u))
  {
    v37 = 0;
    atomic_fetch_add(this + 2, 0xFFFFFFFF);
  }

  hash_table_modify(v35, v36, v37, 0);
  os_unfair_lock_unlock(&CA::Render::Context::_context_lock);
  CA::Render::post_notification(1u, this, 0, 0);
  return this;
}

unint64_t CA::WindowServer::Server::context_created(unint64_t this, CA::Render::Object *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(this + 12) & 0x4200) != 0x4000)
  {
    return this;
  }

  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    Value = CFDictionaryGetValue(*(this + 32), @"displayId");
    if (Value)
    {
      this = CA_CFIntValue(Value);
      if (this)
      {
        if (*(*(a2 + 12) + 24) != this)
        {
          return this;
        }

        goto LABEL_11;
      }
    }

    this = CFDictionaryGetValue(v6, @"displayName");
    if (this)
    {
      this = CFEqual(this, *(a2 + 13));
      if (!this)
      {
        return this;
      }

      goto LABEL_11;
    }
  }

  if ((*(*(a2 + 12) + 904) & 0x80) == 0)
  {
    return this;
  }

LABEL_11:
  v8 = *(v5 + 32);
  if (v8)
  {
    v9 = CFDictionaryGetValue(*(v5 + 32), @"definesDisplayBounds");
    if (v9 && CA_CFBoolValue(v9))
    {
      *(v5 + 12) |= 0x8000u;
    }

    v10 = CFDictionaryGetValue(v8, @"displayFilter");
    if (v10)
    {
      if (CFEqual(v10, @"nearest"))
      {
        *(v5 + 12) |= 0x10000u;
      }
    }
  }

  *(v5 + 12) |= 0x200u;
  CA::Render::Context::set_display_id(v5, *(*(a2 + 12) + 24));
  CA::Render::add_observer(2u, v5, CA::WindowServer::Server::context_deleted, a2, 1);
  CA::Render::add_observer(0, v5, CA::WindowServer::Server::context_changed, a2, 0);
  CA::Render::add_observer(8u, v5, CA::WindowServer::Server::context_ordered, a2, 0);
  CA::WindowServer::Server::invalidate_context(a2, v5);
  os_unfair_lock_lock(a2 + 4);
  v11 = *(a2 + 16);
  v12 = *(v5 + 192);
  v13 = 0;
  if (v11)
  {
    v14 = (*(a2 + 14) + 8);
    while (*v14 <= v12)
    {
      ++v13;
      v14 += 4;
      if (v11 == v13)
      {
        v13 = *(a2 + 16);
        break;
      }
    }
  }

  CA::WindowServer::Server::context_insert(a2, v13, v5, v12);
  os_unfair_lock_unlock(a2 + 4);
  v15 = 0;
  v16 = vdupq_n_s64(4uLL);
  return (*(*a2 + 176))(a2, &v15, 0.0);
}

uint64_t CA::Render::Context::server_port(CA::Render::Context *this)
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&CA::Render::Context::_context_lock);
  v2 = *(this + 62);
  if (v2)
  {
    goto LABEL_9;
  }

  if ((*(this + 13) & 4) != 0)
  {
    v2 = 0;
    goto LABEL_9;
  }

  *&options.flags = xmmword_183E24110;
  options.reserved[1] = 0;
  options.flags = 65552;
  v3 = MEMORY[0x1E69E9A60];
  v4 = mach_port_construct(*MEMORY[0x1E69E9A60], &options, 0, this + 62);
  if (v4)
  {
    v11 = v4;
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v12 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      v15 = 67109378;
      v16 = v11;
      v17 = 2080;
      v18 = mach_error_string(v11);
      v13 = "CoreAnimation: Failed to construct server port: 0x%x - %s";
LABEL_18:
      _os_log_error_impl(&dword_183AA6000, v12, OS_LOG_TYPE_ERROR, v13, &v15, 0x12u);
    }

LABEL_19:
    abort();
  }

  v5 = *v3;
  v6 = *(this + 62);
  v7 = CA::Render::Server::port_set(v4);
  v8 = mach_port_move_member(v5, v6, v7);
  if (v8)
  {
    v14 = v8;
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v12 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      v15 = 67109378;
      v16 = v14;
      v17 = 2080;
      v18 = mach_error_string(v14);
      v13 = "CoreAnimation: Failed to move server port: 0x%x - %s";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v9 = CA::Render::Context::_port_table;
  if (!CA::Render::Context::_port_table)
  {
    v9 = x_hash_table_new_(0, 0, 0, 0, 0, 0);
    CA::Render::Context::_port_table = v9;
  }

  hash_table_modify(v9, *(this + 62), this, 0);
  v2 = *(this + 62);
LABEL_9:
  os_unfair_lock_unlock(&CA::Render::Context::_context_lock);
  return v2;
}

uint64_t CA::Render::Context::make_hosting_port(CA::Render::Context *this)
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&CA::Render::Context::_context_lock);
  v2 = *(this + 63);
  if (v2 == -1)
  {
    goto LABEL_9;
  }

  if (v2)
  {
    if (!mach_port_insert_right(*MEMORY[0x1E69E9A60], v2, *(this + 63), 0x14u))
    {
      v5 = *(this + 63);
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((*(this + 13) & 4) != 0)
  {
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  options.8 = 0u;
  *&options.flags = 179;
  v3 = mach_port_construct(*MEMORY[0x1E69E9A60], &options, this + 252, this + 63);
  if (v3)
  {
    v7 = v3;
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v8 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67109378;
      v9[1] = v7;
      v10 = 2080;
      v11 = mach_error_string(v7);
      _os_log_error_impl(&dword_183AA6000, v8, OS_LOG_TYPE_ERROR, "CoreAnimation: Failed to construct hosting port: 0x%x - %s", v9, 0x12u);
    }

    abort();
  }

  v4 = CA::Render::Context::_port_table;
  if (!CA::Render::Context::_port_table)
  {
    v4 = x_hash_table_new_(0, 0, 0, 0, 0, 0);
    CA::Render::Context::_port_table = v4;
  }

  hash_table_modify(v4, *(this + 63), this, 0);
  v5 = *(this + 63);
LABEL_10:
  os_unfair_lock_unlock(&CA::Render::Context::_context_lock);
  return v5;
}

uint64_t CARenderServerGetNeededAlignment(mach_port_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ServerPort = a1;
  if (!a1)
  {
    ServerPort = CARenderServerGetServerPort(0);
    if (!ServerPort)
    {
      return 0;
    }
  }

  *&msg[1].msgh_remote_port = 0u;
  *&msg[0].msgh_id = 0u;
  msg[0].msgh_size = 0;
  reply_port = mig_get_reply_port();
  msg[0].msgh_remote_port = ServerPort;
  msg[0].msgh_local_port = reply_port;
  msg[0].msgh_bits = 5395;
  *&msg[0].msgh_voucher_port = 0x9D4000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    msgh_local_port = msg[0].msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v5 = mach_msg(msg, 3, 0x18u, 0x30u, msgh_local_port, 0, 0);
  msgh_remote_port = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg[0].msgh_local_port);
LABEL_28:
    v8 = 16;
    goto LABEL_29;
  }

  if (v5)
  {
    mig_dealloc_reply_port(msg[0].msgh_local_port);
    goto LABEL_28;
  }

  if (msg[0].msgh_id == 71)
  {
    msgh_remote_port = 4294966988;
LABEL_27:
    mach_msg_destroy(msg);
    goto LABEL_28;
  }

  if (msg[0].msgh_id != 40356)
  {
    msgh_remote_port = 4294966995;
    goto LABEL_27;
  }

  if ((msg[0].msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_26;
  }

  if (msg[0].msgh_size != 40)
  {
    if (msg[0].msgh_size == 36)
    {
      if (msg[0].msgh_remote_port)
      {
        v7 = 1;
      }

      else
      {
        v7 = msg[1].msgh_remote_port == 0;
      }

      if (v7)
      {
        msgh_remote_port = 4294966996;
      }

      else
      {
        msgh_remote_port = msg[1].msgh_remote_port;
      }

      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (msg[0].msgh_remote_port)
  {
LABEL_26:
    msgh_remote_port = 4294966996;
    goto LABEL_27;
  }

  msgh_remote_port = msg[1].msgh_remote_port;
  if (msg[1].msgh_remote_port)
  {
    goto LABEL_27;
  }

  v8 = msg[1].msgh_local_port;
LABEL_29:
  CAVerifyServerReturn(msgh_remote_port);
  if (!a1)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], ServerPort);
  }

  return v8;
}

void _XGetNeededAlignment(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    v2 = -304;
    goto LABEL_7;
  }

  if (a1[6] || a1[7] <= 0x1Fu)
  {
    v2 = -309;
LABEL_7:
    *(a2 + 32) = v2;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return;
  }

  {
    v4 = a2;
    a2 = v4;
  }

  v3 = qword_1ED4E4910;
  *(a2 + 32) = 0;
  *(a2 + 36) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  *(a2 + 4) = 40;
}

uint64_t CADeviceSetMinimumAlignment(unint64_t a1)
{
  {
  }

  v2 = 0;
  v3 = vdupq_n_s64(a1);
  do
  {
    ++v2;
  }

  while (v2 != 2);
}

uint64_t anonymous namespace::init_alignment(_anonymous_namespace_ *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E696CD60];
  v2 = IOServiceMatching("AGXAccelerator");
  MatchingService = IOServiceGetMatchingService(v1, v2);
  if (MatchingService)
  {
    v4 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"BaseAddressAlignmentRequirement", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v6 = CFProperty;
      valuePtr = 0;
      CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr);
      CFRelease(v6);
    }

    IOObjectRelease(v4);
  }

  {
    __assert_rtn("init_alignment", "CADeviceInfo.cpp", 117, "alignment_values[kCAAlignmentPropertyImageBytes] >= alignment_values[kCAAlignmentPropertyNeededImageBytes]");
  }

  {
    __assert_rtn("init_alignment", "CADeviceInfo.cpp", 119, "alignment_values[kCAAlignmentPropertyRowBytes] >= alignment_values[kCAAlignmentPropertyNeededRowBytes]");
  }
}

uint64_t CARenderServerGetMaxRenderableIOSurfaceSize(mach_port_name_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  v8 = a1;
  if (!a1)
  {
    result = CARenderServerGetServerPort(0);
    v8 = result;
    if (!result)
    {
      return result;
    }
  }

  v22 = 0;
  v21 = 0u;
  *&reply_port_12[4] = 0u;
  reply_port = 0;
  v10 = mig_get_reply_port();
  reply_port_4 = v8;
  reply_port_8 = v10;
  v16 = 5395;
  *reply_port_12 = 0x9D5300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v16);
    v11 = reply_port_8;
  }

  else
  {
    v11 = v10;
  }

  v12 = mach_msg(&v16, 3, 0x18u, 0x38u, v11, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_reply_port(reply_port_8);
      goto LABEL_27;
    }

    if (*&reply_port_12[4] == 71)
    {
      v13 = 4294966988;
    }

    else if (*&reply_port_12[4] == 40375)
    {
      if ((v16 & 0x80000000) == 0)
      {
        if (reply_port == 48)
        {
          if (!reply_port_4)
          {
            v13 = *&reply_port_12[16];
            if (!*&reply_port_12[16])
            {
              v15 = DWORD1(v21);
              *a2 = v21;
              *a3 = v15;
              *a4 = DWORD2(v21);
              goto LABEL_27;
            }

            goto LABEL_26;
          }
        }

        else if (reply_port == 36)
        {
          if (reply_port_4)
          {
            v14 = 1;
          }

          else
          {
            v14 = *&reply_port_12[16] == 0;
          }

          if (v14)
          {
            v13 = 4294966996;
          }

          else
          {
            v13 = *&reply_port_12[16];
          }

          goto LABEL_26;
        }
      }

      v13 = 4294966996;
    }

    else
    {
      v13 = 4294966995;
    }

LABEL_26:
    mach_msg_destroy(&v16);
    goto LABEL_27;
  }

  mig_put_reply_port(reply_port_8);
LABEL_27:
  CAVerifyServerReturn(v13);
  if (!a1)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v8);
  }

  return 1;
}

void _XGetMaxRenderableIOSurfaceSize(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    v2 = -304;
    goto LABEL_7;
  }

  if (a1[6] || a1[7] <= 0x1Fu)
  {
    v2 = -309;
LABEL_7:
    *(a2 + 32) = v2;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return;
  }

  {
    v3 = a2;
    a2 = v3;
  }

  *(a2 + 32) = 0;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  *(a2 + 4) = 48;
}

void CADeviceSetMaxRenderableIOSurfaceSize(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  {
  }

  {
    v6 = a1;
  }

  {
    v7 = a2;
  }

  {
    v8 = a3;
  }
}

uint64_t init_max_renderable_iosurface(uint64_t *a1)
{
  if (a1)
  {
    v1 = a1[1];
    result = a1[2];
  }

  else
  {
    result = MEMORY[0x1865EA1D0](*MEMORY[0x1E696CE58]);
  }

  return result;
}

void CA::Context::did_connect(CA::Context *this)
{
  os_unfair_lock_lock(&CA::Context::_lock);
  if (CA::all_contexts(void)::contexts_data_initialized)
  {
    v3 = *(&CA::all_contexts(void)::contexts_data + 1);
    v2 = qword_1ED4E9310;
    if (*(&CA::all_contexts(void)::contexts_data + 1) < qword_1ED4E9310)
    {
      **(&CA::all_contexts(void)::contexts_data + 1) = this;
      v4 = (v3 + 8);
      goto LABEL_16;
    }

    v5 = CA::all_contexts(void)::contexts_data;
  }

  else
  {
    v5 = 0;
    v3 = 0;
    v2 = 0;
    CA::all_contexts(void)::contexts_data = 0uLL;
    qword_1ED4E9310 = 0;
    CA::all_contexts(void)::contexts_data_initialized = 1;
  }

  v6 = v3 - v5;
  v7 = (v3 - v5) >> 3;
  v8 = v7 + 1;
  if ((v7 + 1) >> 61)
  {
    std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
  }

  v9 = v2 - v5;
  if (v9 >> 2 > v8)
  {
    v8 = v9 >> 2;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    v10 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (!(v10 >> 61))
    {
      operator new();
    }

    std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
  }

  v11 = (v3 - v5) >> 3;
  v12 = (8 * v7);
  v13 = (8 * v7 - 8 * v11);
  *v12 = this;
  v4 = v12 + 1;
  memcpy(v13, v5, v6);
  *&CA::all_contexts(void)::contexts_data = v13;
  *(&CA::all_contexts(void)::contexts_data + 1) = v4;
  qword_1ED4E9310 = 0;
  if (v5)
  {
    operator delete(v5);
  }

LABEL_16:
  *(&CA::all_contexts(void)::contexts_data + 1) = v4;
  os_unfair_lock_unlock(&CA::Context::_lock);
  v14 = *(this + 26);
  if (v14)
  {

    dispatch_activate(v14);
  }
}

CA::OGL::Context *CA::OGL::fill_corner_rect_tex(CA::OGL::Context *result, double **a2, uint32x2_t *a3, double *a4, int a5, int a6, uint64_t a7, int a8, double a9, double a10, double *a11)
{
  v58 = *MEMORY[0x1E69E9840];
  v13 = (*a2)[2];
  if (v13 >= (*a2)[3])
  {
    v13 = (*a2)[3];
  }

  if (v13 > 0.0)
  {
    v14 = a8;
    v19 = result;
    v20 = a2[1];
    if ((v20[18] & 0x10) != 0)
    {
      v21 = vaddvq_f64(vmulq_f64(*v20, *v20));
      v22 = vaddvq_f64(vmulq_f64(*(v20 + 4), *(v20 + 4)));
      v23 = v20[15];
      if (v23 != 1.0)
      {
        v24 = 1.0 / (v23 * v23);
        v21 = v24 * v21;
        v22 = v24 * v22;
      }

      v25 = v21 != 1.0;
      if (v22 != 1.0)
      {
        v25 = 1;
      }

      v26 = sqrt(v21);
      v27 = sqrt(v22);
      if (v25)
      {
        v22 = v27;
        v21 = v26;
      }
    }

    else
    {
      v21 = v20[16];
      v22 = v21;
    }

    if (v21 * a9 < 1.0 || a8 == 0 || a3 == 0 || v22 * a10 < 1.0)
    {

      return CA::OGL::fill_rect_tex(result, a2, a7);
    }

    else
    {
      v57 = 0uLL;
      if ((*(result + 218) & 2) != 0)
      {
        v31 = 2358;
      }

      else
      {
        v31 = 310;
      }

      if (a5)
      {
        v32 = v31 ^ 0x800;
      }

      else
      {
        v32 = v31;
      }

      *(*(result + 2) + 16) = 5;
      v33 = CA::OGL::Context::bind_image(result, 1u, a3, v32, 1u, 1, 0, 0, 0.0, &v57, 0);
      if (v33)
      {
        v35 = v33;
        v49 = 0;
        v50 = 0;
        v48[0] = 0;
        v48[1] = 0;
        v36 = *a2;
        v37 = (*a2)[1];
        v56[0] = **a2;
        v56[1] = v56[0] + a9;
        v38 = v36[2];
        v39 = v36[3];
        v56[2] = v38 + v56[0] - a9;
        v56[3] = v38 + v56[0];
        v55[0] = v37;
        v55[1] = v37 + a10;
        v55[2] = v39 + v37 - a10;
        v55[3] = v39 + v37;
        v40 = a9 / v38;
        v41 = a10 / v39;
        LODWORD(v39) = *(a7 + 4);
        v42 = *(a7 + 8);
        v43 = *(a7 + 12);
        v44 = *a7 + ((v42 - *a7) * v40);
        LODWORD(v52) = *a7;
        *(&v52 + 1) = v44;
        *&v41 = v41;
        v53 = v42 + ((*&v52 - v42) * v40);
        v54 = v42;
        v51[0] = *&v39;
        v51[1] = *&v39 + ((v43 - *&v39) * *&v41);
        v51[2] = v43 + ((*&v39 - v43) * *&v41);
        v51[3] = v43;
        if (a6)
        {
          v46 = 0x4000000;
        }

        else
        {
          v46 = 0x8000000;
        }

        {
          CA::OGL::emit_nine_part_rect(v19, a2, v56, v55, &v52, v51, &v49, v48, (v46 & 0xFC3FFFFF | ((v14 & 0xF) << 22)) ^ 0x3C10000);
        }

        result = (*(*v19 + 560))(v19, v35, 1);
        *(*(v19 + 2) + 16) = 0;
      }

      else
      {
        return CA::OGL::fill_rect_tex(v19, a2, a7);
      }
    }
  }

  return result;
}

uint64_t CA::Context::set_layer(CA::Context *this, char *a2)
{
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v4)
  {
    v4 = CA::Transaction::create(this);
  }

  pthread_mutex_lock((this + 16));
  v6 = *(this + 12);
  if (v6 != a2)
  {
    if (v6)
    {
      v7 = *(v6 + 2);
      if (v7)
      {
        CA::Layer::set_visible(v7, 0);
      }
    }

    *(this + 12) = a2;
    if (a2)
    {
      CFRetain(a2);
      v8 = *(this + 12);
      a2 = *(v8 + 16);
      if (a2)
      {
        v9 = CA::Layer::retain_parent(*(v8 + 16), v4);
        if (v9)
        {
          v10 = v9;
          CA::Layer::remove_from_superlayer(a2);
          while (1)
          {
            v11 = *v10;
            if (!*v10)
            {
              break;
            }

            v12 = *v10;
            atomic_compare_exchange_strong(v10, &v12, v11 - 1);
            if (v12 == v11)
            {
              if (v11 == 1)
              {
                CA::Layer::destroy(v10);
                CA::Layer::~Layer(v10);
                if (x_malloc_get_zone::once != -1)
                {
                  dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
                }

                malloc_zone_free(malloc_zone, v10);
              }

              break;
            }
          }
        }

        else if ((a2[55] & 0x10) != 0)
        {
          v13 = CA::Layer::retain_context(a2);
          v14 = v13;
          if (v13)
          {
            CA::Context::set_layer(v13, 0);
            CA::Context::unref(v14, 0);
          }
        }

        CA::Layer::set_visible(a2, *(this + 2));
        if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
        {
          dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
        }

        a2 += CA::Render::_render_id_slide;
      }
    }

    if (v6)
    {
      CA::Transaction::release_object(v4, v6);
    }

    CA::Transaction::add_command(6, *(this + 2), a2, 0, v5);
  }

  return pthread_mutex_unlock((this + 16));
}

float CA::OGL::anonymous namespace::map_corner_texture_coordinates(CA::OGL::_anonymous_namespace_ *this, double *a2, const Rect *a3, float *a4, float *a5)
{
  v5 = 0;
  v6 = a2[1];
  v7 = a2[3];
  v8 = *a2;
  v9 = a2[2] + *a2;
  *&a3->bottom = v8;
  *&a3[1].top = v9;
  *&a3->top = 0;
  *&a3[1].bottom = 1065353216;
  *a4 = 0.0;
  v10 = v7 + v6;
  *&v6 = v6;
  *&v10 = v10;
  a4[1] = *&v6;
  a4[2] = *&v10;
  a4[3] = 1.0;
  do
  {
    *(&a3->top + v5 * 4) = *this + ((*(this + 2) - *this) * *(&a3->top + v5 * 4));
    result = *(this + 1) + ((*(this + 3) - *(this + 1)) * a4[v5]);
    a4[v5++] = result;
  }

  while (v5 != 4);
  return result;
}

double CA::Mat4Impl::mat4_pow(CA::Mat4Impl *this, double *a2, const double *a3, const double *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = a2;
    if ((a2 & 0x80000000) != 0)
    {
      CA::Mat4Impl::mat4_invert(this, this, a3);
      v5 = -v5;
    }

    if (v5 != 1)
    {
      v14 = xmmword_183E20E00;
      v15 = 0u;
      v16 = xmmword_183E20E60;
      v17 = 0u;
      v18 = 0u;
      v19 = xmmword_183E20E00;
      v20 = 0u;
      v21 = xmmword_183E20E60;
      do
      {
        if (v5)
        {
          CA::Mat4Impl::mat4_concat(&v14, this, v14.f64, a4);
        }

        CA::Mat4Impl::mat4_concat(this, this, this, a4);
        v7 = v5 >= 2;
        v5 >>= 1;
      }

      while (v7);
      v8 = v15;
      v9 = v16;
      v10 = v17;
      *this = v14;
      *(this + 1) = v8;
      *(this + 2) = v9;
      *(this + 3) = v10;
      result = *&v18;
      v11 = v19;
      v12 = v20;
      v13 = v21;
      *(this + 4) = v18;
      *(this + 5) = v11;
      *(this + 6) = v12;
      *(this + 7) = v13;
    }
  }

  else
  {
    result = 1.0;
    *this = xmmword_183E20E00;
    *(this + 1) = 0u;
    *(this + 2) = xmmword_183E20E60;
    *(this + 3) = 0u;
    *(this + 4) = 0u;
    *(this + 5) = xmmword_183E20E00;
    *(this + 6) = 0u;
    *(this + 7) = xmmword_183E20E60;
  }

  return result;
}

void CA::Layer::set_visible(CA::Layer *this, int a2)
{
  v4 = CA::Transaction::ensure_compat(this);
  v5 = *(v4 + 29);
  *(v4 + 29) = v5 + 1;
  if (!v5)
  {
    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }

  v6 = *(this + 1);
  CA::Transaction::unlock(v4);
  if (v6)
  {
    [MEMORY[0x1E695DF30] raise:@"CALayerInvalid" format:{@"layer %@ has a superlayer; so cannot be added to a context", *(this + 2)}];
  }

  v7 = *(this + 13);
  if (!a2)
  {
    if ((v7 & 0x10000000) == 0)
    {
      return;
    }

    v11 = *(v4 + 29);
    *(v4 + 29) = v11 + 1;
    if (!v11)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    goto LABEL_16;
  }

  v8 = *(this + 67);
  if ((v7 & 0x10000000) == 0)
  {
    v9 = *(v4 + 29);
    *(v4 + 29) = v9 + 1;
    if (!v9)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    if (v8 != a2)
    {
      v10 = *(v4 + 29);
      *(v4 + 29) = v10 + 1;
      if (!v10)
      {
        os_unfair_lock_lock(&CA::Transaction::transaction_lock);
      }

      *(this + 1) = 0;
      *(this + 67) = a2;
      CA::Transaction::unlock(v4);
      CA::Transaction::remove_root(v4, this);
      CA::Layer::mark_context_changed(this, v4);
    }

LABEL_16:
    CA::Layer::mark_visible(this, v4, a2 != 0);

    CA::Transaction::unlock(v4);
    return;
  }

  if (v8 != a2)
  {
    v12 = MEMORY[0x1E695DF30];

    [v12 raise:@"CALayerInvalid" format:@"cannot add layer to one context while visible in another"];
  }
}

void _XSetContextDisplayMask(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    v3 = a1[8];
    v4 = CA::Context::retain_context_with_client_port(a1[3]);
    if (v4)
    {
      v5 = v4;
      pthread_mutex_lock((v4 + 4));
      if (v5[36] != v3)
      {
        v5[36] = v3;
        v6 = *(v5 + 13);
        if (v6)
        {
          CA::Render::Context::set_display_mask(v6, v3);
        }
      }

      pthread_mutex_unlock((v5 + 4));
      CA::Context::unref(v5, 0);
    }

    *(a2 + 32) = 0;
  }
}

int *CA::Context::retain_context_with_client_port(CA::Context *this)
{
  v1 = this;
  os_unfair_lock_lock(&CA::Context::_lock);
  if (CA::all_contexts(void)::contexts_data_initialized)
  {
    for (i = CA::all_contexts(void)::contexts_data; ; ++i)
    {
      if (i == *(&CA::all_contexts(void)::contexts_data + 1))
      {
        v3 = 0;
        goto LABEL_9;
      }

      v3 = *i;
      v4 = **i;
      if (v4)
      {
        if (v3[48] == v1)
        {
          break;
        }
      }
    }

    *v3 = v4 + 1;
  }

  else
  {
    v3 = 0;
    CA::all_contexts(void)::contexts_data = 0uLL;
    qword_1ED4E9310 = 0;
    CA::all_contexts(void)::contexts_data_initialized = 1;
  }

LABEL_9:
  os_unfair_lock_unlock(&CA::Context::_lock);
  return v3;
}

void _XSetContextDisplayId(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    v3 = a1[8];
    v4 = CA::Context::retain_context_with_client_port(a1[3]);
    if (v4)
    {
      v5 = v4;
      pthread_mutex_lock((v4 + 4));
      if (v5[37] != v3)
      {
        v5[37] = v3;
        v6 = *(v5 + 13);
        if (v6)
        {
          CA::Render::Context::set_display_id(v6, v3);
        }
      }

      pthread_mutex_unlock((v5 + 4));
      CA::Context::unref(v5, 0);
    }

    *(a2 + 32) = 0;
  }
}

uint64_t __CADisplayTimerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CADisplayTimerGetTypeID::type = result;
  return result;
}

void CA::timer_callback(CA *this, __CFRunLoopTimer *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = mach_absolute_time();
  v5 = CATimeWithHostTime(v4);
  v12 = this;
  v13 = CA::active_timers;
  CA::active_timers = &v12;
  os_unfair_lock_lock(&CA::callback_lock);
  v7 = CA::callbacks;
  v11 = CA::callbacks;
  CA::callbacks = 0;
  if (v7)
  {
    if (v7[3] <= v5)
    {
      v9 = v7;
      while (1)
      {
        v8 = v9;
        v9 = *v9;
        if (!v9)
        {
          break;
        }

        if (*(v9 + 24) > v5)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      v8 = &v11;
      v9 = v7;
LABEL_8:
      *v8 = 0;
      CA::callbacks = v9;
      CA::update_timer(v6);
      v7 = v11;
    }

    os_unfair_lock_unlock(&CA::callback_lock);
    if (v7)
    {
      do
      {
        (*(v7 + 1))(*(v7 + 2), v5);
        v10 = *v7;
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_zone_free(malloc_zone, v7);
        v7 = v10;
      }

      while (v10);
    }
  }

  else
  {
    os_unfair_lock_unlock(&CA::callback_lock);
  }

  CA::active_timers = v13;
}

CA::Transaction *CA::Layer::animation_heart_beat(CA::Layer *this, double a2, void *a3)
{
  result = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!result)
  {
    result = CA::Transaction::create(0);
  }

  if (!**(result + 15))
  {

    return CA::Transaction::ensure_implicit(result, 1);
  }

  return result;
}

uint64_t CAObject_automaticallyNotifiesObserversForKey(objc_class *a1, const __CFString *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = classDescription(a1);
  v3 = propertyInfoForKey(v6[0], a2, v6);
  if (v3)
  {
    if ((v3[7] & 0x40) != 0)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(v6[0] + 136);
    }
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

void CA::OGL::MaskCorners::finish(CA::OGL::MaskCorners *this, CA::OGL::ImagingNode *a2)
{
  v107[1] = *MEMORY[0x1E69E9840];
  if (!*(this + 24) && (*(this + 244) & 4) == 0)
  {
    return;
  }

  v3 = **(a2 + 1);
  v104 = 0;
  v103 = 0uLL;
  *(*(v3 + 16) + 16) = 15;
  if ((*(*v3 + 1072))(v3) && (*(this + 244) & 4) == 0 && ((*(*v3 + 824))(v3) & 1) == 0)
  {
    *(*(v3 + 16) + 496) = 62;
    v42 = *(this + 25);
    if (v42)
    {
      v89 = CA::OGL::Context::bind_image(v3, 0, v42, *(this + 60), 1u, 1, 0, 0, 0.0, &v103, 0);
    }

    else
    {
      v43 = *(this + 1);
      if (*this <= v43)
      {
        v44 = v43;
      }

      else
      {
        v44 = *this;
      }

      if ((*(this + 244) & 3) != 0)
      {
        (*(*v3 + 512))(v3, 0, v44, 0, 0, &v104, *(this + 244) & 3, this + 168);
      }

      else
      {
        (*(*v3 + 504))(v3, 0, v44, 0, 0, &v104);
      }

      v89 = 0;
    }

    CA::OGL::Context::bind_surface(v3, *(this + 24), 1u, 0, 0, 0.0);
    v45 = *(*(v3 + 656) + 8);
    *&v100 = v3;
    *(&v100 + 1) = v45;
    memset(v101, 0, 40);
    LOWORD(v101[1]) = 256;
    CA::OGL::Context::ClippedArray::start(&v100);
    v96[0] = 0uLL;
    if ((*(this + 244) & 8) != 0)
    {
      v46 = *&v104;
      v47 = v46 + ((*(&v104 + 1) - v46) * 0.5);
      *(*(v3 + 16) + 19) = 5;
      v48 = *(v3 + 16);
      v48[96] = v46;
      v48[97] = v46;
      v48[98] = v47;
      v48[99] = v47;
    }

    while (CA::OGL::Context::ClippedArray::next_rect(&v100, v96))
    {
      for (i = 0; i != 4; ++i)
      {
        if ((*(this + i + 184) & 1) == 0)
        {
          if (*(v3 + 108))
          {
            v50 = 6;
          }

          else
          {
            v50 = 4;
          }

          v51 = *(v3 + 144);
          if ((v51 + 4) > *(v3 + 152) || (v52 = *(v3 + 128)) != 0 && *(v3 + 120) + v50 > v52)
          {
            *(v3 + 1384) |= 0x20u;
            CA::OGL::Context::array_flush(v3);
            v51 = 0;
            *(v3 + 112) = v3 + 1386;
            *(v3 + 120) = xmmword_183E20E50;
          }

          v53 = *(this + 8 * i + 40);
          v54 = vadd_f32(*(this + 8), v53);
          v55 = vadd_f32(*(this + 16), v53);
          v56 = vadd_f32(*(this + 24), v53);
          v57 = vadd_f32(*(this + 32), v53);
          v58 = *(v3 + 136);
          v59 = (v58 + 48 * v51);
          v60 = v51 + 4;
          *(v3 + 144) = v51 + 4;
          *v59 = v54;
          v59[1] = 0x3F80000000000000;
          v59[6] = v55;
          v59[7] = 0x3F80000000000000;
          v59[12] = v56;
          v59[13] = 0x3F80000000000000;
          v59[18] = v57;
          v59[19] = 0x3F80000000000000;
          if (*(v3 + 112))
          {
            CA::OGL::Context::array_indices(v3, v51);
            v58 = *(v3 + 136);
            v60 = *(v3 + 144);
          }

          v61 = v58 + 48 * v60;
          *(v61 - 160) = 0x3C003C003C003C00;
          *(v61 - 112) = 0x3C003C003C003C00;
          *(v61 - 64) = 0x3C003C003C003C00;
          *(v61 - 16) = 0x3C003C003C003C00;
          v97 = 0uLL;
          if (*(this + 25))
          {
            CA::OGL::MaskCorners::corner_contents_texcoord(this, i, v103.f32, v97.i32);
          }

          else
          {
            CA::OGL::MaskCorners::corner_circle_texcoord(this, i, &v104, v97.i32);
          }

          v62 = v97;
          v63 = *(v3 + 136) + 48 * *(v3 + 144);
          *(v63 - 176) = v97.i64[0];
          *(v63 - 128) = v62.i32[2];
          *(v63 - 124) = v62.i32[1];
          *(v63 - 80) = v62.i64[1];
          *(v63 - 32) = v62.i32[0];
          *(v63 - 28) = v62.i32[3];
          v105 = 0;
          v107[0] = 0;
          v94 = 0;
          v95 = 0;
          CA::OGL::MaskCorners::corner_quad(this, i, &v105, v107, &v95, &v94);
          *(v63 - 168) = v105;
          *(v63 - 120) = v107[0];
          v64 = v94;
          *(v63 - 72) = v95;
          *(v63 - 24) = v64;
          if (!*(this + 25))
          {
            v65 = *(v3 + 136) + 48 * *(v3 + 144) - 192;
            v66 = CA::OGL::MaskCorners::finish(CA::OGL::ImagingNode *)::quad_inner_vertex_index[i];
            v67 = (v65 + 48 * ((v66 + 1) & 3));
            v68 = *v67;
            v69 = v67[2];
            v70 = (v65 + 48 * v66);
            v70[1] = v67[1];
            v70[2] = v69;
            *v70 = v68;
          }
        }
      }
    }

    CA::OGL::Context::unbind_surface(v3, *(this + 24), 1);
    (*(*v3 + 560))(v3, v89, 0);
    goto LABEL_81;
  }

  v4 = 0;
  *(*(v3 + 16) + 497) |= 1u;
  v88 = *(this + 244);
  v5 = 1;
  while (1)
  {
    v107[0] = 0;
    v96[0] = 0uLL;
    v6 = *(v3 + 16);
    if (v5)
    {
      *(v6 + 16) = 1;
      *(*(v3 + 16) + 496) = 8;
      v7 = *(this + 25);
      if (v7)
      {
        v8 = CA::OGL::Context::bind_image(v3, 0, v7, *(this + 60), 1u, 1, 0, 0, 0.0, v96, 0);
LABEL_12:
        v10 = v8;
        goto LABEL_26;
      }

      v11 = *(this + 1);
      v12 = *this <= v11 ? v11 : *this;
      if ((*(this + 244) & 3) != 0)
      {
        (*(*v3 + 512))(v3, 0, v12, 0, 0, v107);
      }

      else
      {
        (*(*v3 + 504))(v3, 0, v12, 0, 0, v107);
      }
    }

    else
    {
      *(v6 + 16) = 6;
      *(*(v3 + 16) + 496) = 12;
      CA::OGL::Context::bind_surface(v3, *(this + 24), 0, 0, 0, 0.0);
      v9 = *(this + 25);
      if (v9)
      {
        v8 = CA::OGL::Context::bind_image(v3, 1u, v9, *(this + 60), 1u, 1, 0, 0, 0.0, v96, 0);
        goto LABEL_12;
      }

      v13 = *(this + 1);
      v14 = *this <= v13 ? v13 : *this;
      if ((*(this + 244) & 3) != 0)
      {
        (*(*v3 + 512))(v3, 1, v14, 0, 0, v107);
      }

      else
      {
        (*(*v3 + 504))(v3, 1, v14, 0, 0, v107);
      }
    }

    v10 = 0;
LABEL_26:
    v15 = *(*(v3 + 656) + 8);
    *&v100 = v3;
    *(&v100 + 1) = v15;
    memset(v101, 0, 40);
    BYTE1(v101[1]) = 1;
    CA::OGL::Context::ClippedArray::start(&v100);
    v97 = 0uLL;
    if ((*(this + 244) & 8) != 0)
    {
      v16 = v107[0].f32[0] + ((v107[0].f32[1] - v107[0].f32[0]) * 0.5);
      *(*(v3 + 16) + v4 + 19) = 5;
      v17 = v107[0].i32[0];
      v18 = *(v3 + 16);
      *(v18 + 384) = v107[0].i32[0];
      *(v18 + 388) = v17;
      *(v18 + 392) = v16;
      *(v18 + 396) = v16;
    }

LABEL_45:
    if (CA::OGL::Context::ClippedArray::next_rect(&v100, &v97))
    {
      v19 = 0;
      while (1)
      {
        if ((*(this + v19 + 184) & 1) == 0)
        {
          if (*(v3 + 108))
          {
            v20 = 6;
          }

          else
          {
            v20 = 4;
          }

          v21 = *(v3 + 144);
          if ((v21 + 4) > *(v3 + 152) || (v22 = *(v3 + 128)) != 0 && *(v3 + 120) + v20 > v22)
          {
            *(v3 + 1384) |= 0x20u;
            CA::OGL::Context::array_flush(v3);
            v21 = 0;
            *(v3 + 112) = v3 + 1386;
            *(v3 + 120) = xmmword_183E20E50;
          }

          v23 = *(this + 8 * v19 + 40);
          v24 = vadd_f32(*(this + 8), v23);
          v25 = vadd_f32(*(this + 16), v23);
          v26 = vadd_f32(*(this + 24), v23);
          v27 = vadd_f32(*(this + 32), v23);
          v28 = *(v3 + 136);
          v29 = (v28 + 48 * v21);
          v30 = v21 + 4;
          *(v3 + 144) = v21 + 4;
          *v29 = v24;
          v29[1] = 0x3F80000000000000;
          v29[6] = v25;
          v29[7] = 0x3F80000000000000;
          v29[12] = v26;
          v29[13] = 0x3F80000000000000;
          v29[18] = v27;
          v29[19] = 0x3F80000000000000;
          if (*(v3 + 112))
          {
            CA::OGL::Context::array_indices(v3, v21);
            v28 = *(v3 + 136);
            v30 = *(v3 + 144);
          }

          v31 = v28 + 48 * v30;
          *(v31 - 160) = 0x3C003C003C003C00;
          *(v31 - 112) = 0x3C003C003C003C00;
          *(v31 - 64) = 0x3C003C003C003C00;
          *(v31 - 16) = 0x3C003C003C003C00;
          v105 = 0;
          v106 = 0;
          if (*(this + 25))
          {
            CA::OGL::MaskCorners::corner_contents_texcoord(this, v19, v96[0].f32, &v105);
            if ((v5 & 1) == 0)
            {
              goto LABEL_43;
            }
          }

          else
          {
            CA::OGL::MaskCorners::corner_circle_texcoord(this, v19, v107, &v105);
            if ((v5 & 1) == 0)
            {
LABEL_43:
              v94 = 0;
              v95 = 0;
              v92 = 0;
              v93 = 0;
              CA::OGL::MaskCorners::corner_quad(this, v19, &v95, &v94, &v93, &v92);
              v35 = *(v3 + 136) + 48 * *(v3 + 144);
              v36 = v94;
              *(v35 - 176) = v95;
              *(v35 - 128) = v36;
              v37 = v92;
              *(v35 - 80) = v93;
              *(v35 - 32) = v37;
              v38 = v105;
              v39 = v106;
              v40 = *(v3 + 136) + 48 * *(v3 + 144);
              *(v40 - 168) = v105;
              *(v40 - 120) = v39;
              *(v40 - 116) = v38.i32[1];
              *(v40 - 72) = v39;
              *(v40 - 24) = v38.i32[0];
              *(v40 - 20) = HIDWORD(v39);
              goto LABEL_44;
            }
          }

          v32 = v105;
          v33 = v106;
          v34 = *(v3 + 136) + 48 * *(v3 + 144);
          *(v34 - 176) = v105;
          *(v34 - 128) = v33;
          *(v34 - 124) = v32.i32[1];
          *(v34 - 80) = v33;
          *(v34 - 32) = v32.i32[0];
          *(v34 - 28) = HIDWORD(v33);
        }

LABEL_44:
        if (++v19 == 4)
        {
          goto LABEL_45;
        }
      }
    }

    v41 = *(*v3 + 560);
    if ((v5 & 1) == 0)
    {
      break;
    }

    v41(v3, v10, 0);
    v5 = 0;
    v4 = 1;
    if ((v88 & 4) != 0)
    {
      goto LABEL_81;
    }
  }

  v41(v3, v10, 1);
  CA::OGL::Context::unbind_surface(v3, *(this + 24), 0);
LABEL_81:
  *(*(v3 + 16) + 497) &= ~1u;
  v71 = *(v3 + 16);
  *(v71 + 496) = *(*(v3 + 656) + 80);
  *(v71 + 16) = 0;
  if (BYTE1(xmmword_1ED4E97DC) == 1)
  {
    v102 = 0;
    memset(v101, 0, sizeof(v101));
    v100 = 0u;
    CA::OGL::copy_gstate(&v100, *(v3 + 656));
    *(&v101[0] + 1) = &CA::identity_transform;
    v73 = 0;
    *&v100 = CA::OGL::Context::set_gstate(v3, &v100);
    v74 = (this + 116);
    v75.i32[0] = 1073741822;
    v91 = v75;
    v76 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    v90 = v76;
    do
    {
      if ((*(this + v73 + 184) & 1) == 0)
      {
        v77 = *(this + 24);
        v78 = 2155872384;
        if (v77)
        {
          v79 = *(v77 + 92);
          if ((v79 & 0x4000) != 0)
          {
            v80 = -2147450752;
          }

          else
          {
            v80 = -2139094912;
          }

          if ((v79 & 0x800) != 0)
          {
            v78 = 8388736;
          }

          else
          {
            v78 = v80;
          }
        }

        v81 = *(v74 - 1);
        if (v81 <= *v74)
        {
          v82 = *v74;
        }

        else
        {
          v82 = *(v74 - 1);
        }

        v76.i32[0] = v82;
        v83 = *(v74 - 3);
        v84.i64[0] = v83;
        v84.i64[1] = SHIDWORD(v83);
        v87 = vcvtq_f64_s64(v84);
        v85 = v81;
        v86 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v76, v91), 0), v90, v87);
        v87.i64[0] = 0x7FEFFFFFFFFFFFFFLL;
        if (v82 <= 1073741822)
        {
          *v87.i64 = *v74;
        }

        else
        {
          v85 = 1.79769313e308;
        }

        v97 = v86;
        v98 = v85;
        v99 = v87.i64[0];
        v96[0].i64[0] = &v97;
        v96[0].i64[1] = *(&v101[0] + 1);
        memset(&v96[1], 0, 32);
        CA::OGL::fill_color_rect(v3, v96, v78, 0.0, v87);
      }

      ++v73;
      v74 += 4;
    }

    while (v73 != 4);
    CA::OGL::Context::set_gstate(v3, **(v3 + 656));
  }

  v72 = *(this + 24);
  if (v72)
  {
    CA::OGL::Context::release_surface(v3, v72);
  }
}

float32x2_t CA::OGL::MaskCorners::corner_quad(float32x2_t *a1, int a2, float32x2_t *a3, float32x2_t *a4, float32x2_t *a5, float32x2_t *a6)
{
  v6 = a1->i32[1];
  if (a1[4].f32[1] > a1[1].f32[1])
  {
    v7 = a1->i32[1];
  }

  else
  {
    v7 = -v6;
  }

  if (a2)
  {
    v8 = a1->i32[0] + 3;
  }

  else
  {
    v8 = 1;
  }

  v9 = a1[2 * a2 + 13];
  v10 = a1[a2 + 5];
  *a3 = a1[1];
  *a4 = a1[2];
  *a5 = a1[3];
  *a6 = a1[4];
  if (a1[30].i8[5] == 1)
  {
    a3->f32[1] = v7 - a3->f32[1];
    a4->f32[1] = v7 - a4->f32[1];
    a5->f32[1] = v7 - a5->f32[1];
    a6->f32[1] = v7 - a6->f32[1];
  }

  v11 = v6 + 3;
  if (a2 <= 1)
  {
    v11 = 1;
  }

  v12 = vadd_f32(v10, vcvt_f32_s32(vsub_s32(__PAIR64__(v11, v8), v9)));
  *a3 = vadd_f32(*a3, v12);
  *a4 = vadd_f32(*a4, v12);
  *a5 = vadd_f32(*a5, v12);
  result = vadd_f32(*a6, v12);
  *a6 = result;
  return result;
}

void CALayerMapGeometry(CA::Transaction *a1, CALayer *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = a5;
  v5[1] = a3;
  v5[2] = a4;
  CA::Layer::map_geometry(a1, a2, map_fun, map_unfun, v5);
}

uint64_t CA::OGL::MaskCorners::corner_circle_texcoord(uint64_t this, int a2, const float *a3, float *a4)
{
  v4 = *a3;
  v5 = *a3 + ((a3[1] - *a3) * 0.5);
  *a4 = *a3;
  *(a4 + 1) = v4;
  v6 = *a3 + (*(this + 176) * (v5 - *a3));
  a4[2] = v6;
  v7 = *a3 + (*(this + 180) * (v5 - *a3));
  a4[3] = v7;
  if ((*(this + 244) & 8) != 0)
  {
    v8 = this + 8 * a2;
    v6 = *a3 + (((v5 - *a3) * *(v8 + 72)) * *(this + 176));
    a4[2] = v6;
    v7 = *a3 + (((v5 - *a3) * *(v8 + 76)) * *(this + 180));
    a4[3] = v7;
  }

  if (a2)
  {
    *a4 = v6;
    *(a4 + 2) = v4;
  }

  if (a2 >= 2)
  {
    a4[1] = v7;
    *(a4 + 3) = v4;
  }

  return this;
}

uint64_t map_unfun(uint64_t a1, _OWORD *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[3];
  v9[0] = *a2;
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v5 = a2[5];
  v6 = a2[6];
  v7 = a2[7];
  v9[4] = a2[4];
  v9[5] = v5;
  v9[6] = v6;
  v9[7] = v7;
  return (*(a1 + 16))(*a1, v9);
}

uint64_t CA::Render::Timing::map_time(CA::Render::Timing *this, double *a2, unsigned int *a3)
{
  v6 = CA::Render::Timing::map_parent_to_active(this, a2, 0);
  if (v6)
  {
    CA::Render::Timing::map_active_to_local(this, a2, a3);
  }

  else if (a3)
  {
    *a3 = 0;
  }

  return v6;
}

void CA::ColorProgram::Program::~Program(CA::ColorProgram::Program *this)
{
  CGColorSpaceRelease(*(this + 2));
  CGColorSpaceRelease(*(this + 3));
  v2 = *(this + 10);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 8);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  free(*(this + 9));
  v4 = *(this + 11);
  if (v4)
  {
    CFRelease(v4);
  }
}

atomic_uint *___ZN2CA3OGL20update_backdrop_lumaERNS0_8RendererE_block_invoke(uint64_t a1, float a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = roundf(a2 * 64.0) * 0.015625;
  kdebug_trace();
  if (v3 >= 0.0)
  {
    v4 = *(*(a1 + 56) + 260);
    v5 = *(a1 + 32);
    v9 = *MEMORY[0x1E69E99E0];
    v10 = v5;
    v11 = v3;
    *&msg.msgh_bits = 19;
    msg.msgh_voucher_port = 0;
    msg.msgh_id = 40409;
    msg.msgh_remote_port = v4;
    msg.msgh_local_port = 0;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&msg);
    }

    if ((mach_msg(&msg, 17, 0x2Cu, 0, 0, 0, 0) - 268435459) <= 1)
    {
      if ((msg.msgh_bits & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
      }

      mach_msg_destroy(&msg);
    }
  }

  result = *(a1 + 56);
  if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    v7 = *(*result + 16);

    return v7();
  }

  return result;
}

uint64_t CAImageQueueCreate_(int a1, unsigned int a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = 16;
  }

  if (v2 - 65537 < 0xFFFFFFFFFFFF0000)
  {
    return 0;
  }

  if (CAImageQueueGetTypeID::once[0] != -1)
  {
    dispatch_once(CAImageQueueGetTypeID::once, &__block_literal_global_44_15357);
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    bzero((Instance + 16), 16 * v2 + 224);
    *(v3 + 16) = 0;
    *(v3 + 20) = a1;
    do
    {
      add = atomic_fetch_add(CA::Render::next_sequence(void)::sequence, 1u);
      v7 = __CFADD__(add, 1);
      v8 = add + 1;
    }

    while (v7);
    *(v3 + 28) = v8;
    *(v3 + 40) = v2;
    *(v3 + 184) = v3 + 240;
    *(v3 + 192) = v3 + 240 + 8 * v2;
    *(v3 + 48) = CA::Render::Shmem::new_shmem((160 * v2 + 472));
    *(v3 + 64) = malloc_type_calloc(8uLL, v2, 0x2004093837F09uLL);
    v9 = *(v3 + 48);
    if (v9)
    {
      v10 = *(v9 + 24);
      *(v10 + 300) = -1;
      *(v10 + 224) = 0x3FF0000000000000;
      *(v10 + 176) = 0x3FF0000000000000;
      *(v10 + 240) = xmmword_183E21220;
      *(v10 + 192) = xmmword_183E21220;
      *(v10 + 256) = 0x7FF0000000000000;
      *(v10 + 208) = 0x7FF0000000000000;
      *(v10 + 464) = a1;
      return v3;
    }

    CFRelease(v3);
    return 0;
  }

  return v3;
}

uint64_t __CAImageQueueGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CAImageQueueGetTypeID::type = result;
  return result;
}

__CFBundle *___ZL30wants_compositing_dependenciesv_block_invoke()
{
  result = CFBundleGetMainBundle();
  if (result)
  {
    result = CFBundleGetInfoDictionary(result);
    if (result)
    {
      result = CFDictionaryGetValue(result, @"CAMetalLayerWantsCompositingDependencies");
      if (result)
      {
        result = CA_CFBoolValue(result);
        wants_compositing_dependencies(void)::wants_compositing_dependencies = result;
      }
    }
  }

  return result;
}

int *CAImageQueueSetFlagsInternal(int *result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 6);
  if (v3)
  {
    v4 = (*(v3 + 24) + 8);
    do
    {
      v5 = atomic_load(v4);
      v6 = (v5 | a3 & a2) & (a3 | ~a2);
      v7 = v5;
      atomic_compare_exchange_strong(v4, &v7, v6);
    }

    while (v7 != v5);
    if (v5 & 1) == 0 && (v6)
    {
      return CAImageQueuePing_(result, 0, 0, 0.0, 0.0);
    }
  }

  return result;
}

uint64_t CAImageQueueSetCollectableCallback(uint64_t result, NSObject *a2, uint64_t a3, uint64_t a4)
{
  if (!*(result + 48))
  {
    return result;
  }

  v7 = result;
  pthread_mutex_lock(&collectable_mutex);
  if (*(v7 + 72) != a2 || *(v7 + 96) != a3 || *(v7 + 104) != a4)
  {
    if (*(v7 + 112) == 1)
    {
      do
      {
        pthread_cond_wait(&collectable_cond, &collectable_mutex);
      }

      while ((*(v7 + 112) & 1) != 0);
    }

    v8 = *(v7 + 96);
    if (a3 || !v8)
    {
      if (!a3 || v8)
      {
        goto LABEL_15;
      }

      v9 = x_list_prepend(collectable_list, v7);
    }

    else
    {
      v9 = collectable_list;
      x_list_remove(collectable_list, v7);
    }

    collectable_list = v9;
LABEL_15:
    v10 = *(v7 + 72);
    if (v10)
    {
      dispatch_release(v10);
    }

    *(v7 + 72) = a2;
    *(v7 + 96) = a3;
    *(v7 + 104) = a4;
    if (a2)
    {
      dispatch_retain(a2);
    }

    if (a3)
    {
      v11 = *(v7 + 28);
    }

    else
    {
      v11 = 0;
    }

    *(*(*(v7 + 48) + 24) + 28) = v11;
  }

  return pthread_mutex_unlock(&collectable_mutex);
}

uint64_t __CABackingStoreGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CABackingStoreGetTypeID::type = result;
  return result;
}

void CA::Render::PresentationModifier::~PresentationModifier(CA::Render **this, void **a2)
{
  *this = &unk_1EF203050;
  CA::Render::key_path_free(this[4], a2);
  v4 = this[2];
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  --dword_1ED4EAAE8;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, v3);
  }
}

{
  CA::Render::PresentationModifier::~PresentationModifier(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

void layer_private_set_device(uint64_t a1, void *a2)
{
  os_unfair_lock_lock((a1 + 8));
  if (*(a1 + 72) != a2)
  {
    v4 = a2;

    *(a1 + 72) = a2;
    layer_private_flush_async(a1);

    *(a1 + 224) = 0;
    v5 = *(a1 + 72);
    if (v5)
    {
      if ([v5 supportsFamily:1006])
      {
        v6 = objc_opt_new();
        [v6 setLabel:@"CAMetalLayer.residencySet"];
        [v6 setInitialCapacity:6];
        *(a1 + 224) = [*(a1 + 72) newResidencySetWithDescriptor:v6 error:0];
      }
    }
  }

  os_unfair_lock_unlock((a1 + 8));
}

void layer_private_flush_async(_CAMetalLayerPrivate *a1)
{
  pthread_setspecific(collect_slot, a1);
  CAImageQueueCollect_(*(a1 + 2), 1, 0);
  pthread_setspecific(collect_slot, 0);
  v2 = *(a1 + 7);
  if (v2)
  {
    *(a1 + 7) = 0;
    v3 = v2;
    do
    {
      delete_drawable_private(*v3, *(a1 + 2));
      --*(a1 + 32);
      v3 = v3[1];
    }

    while (v3);
    do
    {
      v4 = v2[1];
      free(v2);
      v2 = v4;
    }

    while (v4);
  }

  os_unfair_lock_unlock(a1 + 2);
  layer_private_cleanup_callbacks(a1);

  os_unfair_lock_lock(a1 + 2);
}

uint64_t CAImageQueueCollect_(uint64_t a1, int a2, int a3)
{
  v78 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = *(a1 + 40) < 3u;
  }

  else
  {
    v5 = 1;
  }

  if (!*(a1 + 48))
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 16));
  v6 = *(*(a1 + 48) + 24);
  v7 = *(a1 + 40);
  v8 = 0.0;
  if (a2)
  {
    if (!*(a1 + 40))
    {
      goto LABEL_54;
    }

    v9 = (v6 + 544);
    v10 = *(a1 + 40);
    do
    {
      if (*(v9 - 1) && (*v9 & 0x80000000) == 0 && *(v9 - 2) == *(v6 + 16))
      {
        v11 = *(v9 - 9);
        if (v11 > v8 && v11 <= *(v6 + 136))
        {
          v8 = *(v9 - 9);
        }
      }

      v9 += 20;
      --v10;
    }

    while (v10);
  }

  if (*(a1 + 40))
  {
    v75 = v5;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = (v6 + 544);
    while (!*(v17 - 1))
    {
      ++v14;
LABEL_51:
      ++v13;
      v17 += 40;
      if (v13 >= v7)
      {
        v29 = v15 ^ 1;
        v5 = v75;
        goto LABEL_55;
      }
    }

    v18 = *(v17 - 3);
    if (v18 > 572662305)
    {
      if (v18 != 572662306 && v18 != 858993459)
      {
        goto LABEL_50;
      }

      v27 = 0;
    }

    else
    {
      if (v18)
      {
        v19 = v18 == 286331153;
      }

      else
      {
        v19 = 1;
      }

      if (!v19 || a2 == 0)
      {
        goto LABEL_50;
      }

      v21 = 0;
      v22 = *(v17 - 2);
      v23 = *(v6 + 16);
      v24 = *(v17 - 9);
      if (v24 != 0.0 && v8 != 0.0)
      {
        v21 = v24 < v8 && *v17 >= 0 && v22 == v23;
      }

      v27 = 1;
      if (((v22 - v23) & 0x80000000) == 0 && !v21)
      {
        goto LABEL_50;
      }
    }

    v16 = release_image(a1, v13, v16, v27);
    ++v14;
    v7 = *(a1 + 40);
LABEL_50:
    v15 |= (*v17 & 4u) >> 2;
    goto LABEL_51;
  }

LABEL_54:
  v16 = 0;
  v14 = 0;
  v29 = 1;
LABEL_55:
  os_unfair_lock_unlock((a1 + 16));
  v31 = *(v6 + 95);
  v32 = v14 > v31 || v5;
  if (v32)
  {
    v33 = v14;
    goto LABEL_108;
  }

  os_unfair_lock_lock((a1 + 16));
  v34 = *(a1 + 40);
  if (!v34)
  {
    goto LABEL_106;
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = v6 + 472;
  v40 = v6 + 532;
  do
  {
    if (*(v40 + 8) && *v40 == 286331153)
    {
      *(v40 + 63) = 0;
      if (v37)
      {
        v41 = *(v40 + 40) >= v38;
      }

      else
      {
        v41 = 0;
      }

      if (!v41)
      {
        v38 = *(v40 + 40);
        v36 = v35;
      }

      ++v37;
    }

    ++v35;
    v40 += 160;
  }

  while (v34 != v35);
  v43 = *(v6 + 95) + 1;
  v41 = v34 >= v43;
  v44 = v34 - v43;
  if (!v41)
  {
    v44 = 0;
  }

  v45 = v44 > v37 || v38 == 0;
  if (v45 || !*(a1 + 212))
  {
    goto LABEL_106;
  }

  v46 = v6;
  v47 = v36;
  ID = IOSurfaceGetID(*(*(a1 + 64) + 8 * v36));
  v49 = *(a1 + 212);
  memset(&msg[0].msgh_id, 0, 28);
  *&msg[0].msgh_size = 0u;
  *&msg[1].msgh_bits = *MEMORY[0x1E69E99E0];
  msg[1].msgh_remote_port = ID;
  reply_port = mig_get_reply_port();
  msg[0].msgh_remote_port = v49;
  msg[0].msgh_local_port = reply_port;
  msg[0].msgh_bits = 5395;
  *&msg[0].msgh_voucher_port = 0x9D5200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    msgh_local_port = msg[0].msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v52 = mach_msg(msg, 3, 0x24u, 0x30u, msgh_local_port, 0, 0);
  msgh_remote_port = v52;
  v6 = v46;
  if ((v52 - 268435458) > 0xE || ((1 << (v52 - 2)) & 0x4003) == 0)
  {
    if (v52)
    {
      mig_dealloc_reply_port(msg[0].msgh_local_port);
      goto LABEL_105;
    }

    if (msg[0].msgh_id == 71)
    {
      msgh_remote_port = 4294966988;
    }

    else if (msg[0].msgh_id == 40374)
    {
      if ((msg[0].msgh_bits & 0x80000000) == 0)
      {
        if (msg[0].msgh_size == 40)
        {
          if (!msg[0].msgh_remote_port)
          {
            msgh_remote_port = msg[1].msgh_remote_port;
            if (!msg[1].msgh_remote_port)
            {
              v67 = msg[1].msgh_local_port;
              CAVerifyServerReturn(0);
              if (v67)
              {
                *(v39 + 160 * v47 + 123) = 1;
                v16 = release_image(a1, v47, v16, 0);
                v33 = v14 + 1;
              }

              else
              {
                v33 = v14;
              }

              v6 = v46;
              goto LABEL_107;
            }

            goto LABEL_104;
          }
        }

        else if (msg[0].msgh_size == 36)
        {
          if (msg[0].msgh_remote_port)
          {
            v54 = 1;
          }

          else
          {
            v54 = msg[1].msgh_remote_port == 0;
          }

          if (v54)
          {
            msgh_remote_port = 4294966996;
          }

          else
          {
            msgh_remote_port = msg[1].msgh_remote_port;
          }

          goto LABEL_104;
        }
      }

      msgh_remote_port = 4294966996;
    }

    else
    {
      msgh_remote_port = 4294966995;
    }

LABEL_104:
    mach_msg_destroy(msg);
    goto LABEL_105;
  }

  mig_put_reply_port(msg[0].msgh_local_port);
LABEL_105:
  CAVerifyServerReturn(msgh_remote_port);
LABEL_106:
  v33 = v14;
LABEL_107:
  os_unfair_lock_unlock((a1 + 16));
LABEL_108:
  if (!((v14 > v31) | v29 & 1))
  {
    v73 = v33;
    v74 = v16;
    os_unfair_lock_lock((a1 + 16));
    LODWORD(v55) = *(a1 + 40);
    if (v55 != 1)
    {
      v56 = 0;
      v57 = v6 + 472;
      v76 = v6;
      v58 = (v6 + 732);
      v59 = 1;
      do
      {
        v60 = v57 + 160 * v56;
        if (*(v60 + 68))
        {
          v61 = *(v60 + 64);
          if (!*(v60 + 60) && v61 > *(v76 + 16) && v56 + 1 < v55)
          {
            v63 = v58;
            v64 = v59;
            do
            {
              if (*(v63 - 8) && !*(v63 - 10) && v61 == *(v63 - 9) && *v60 == 0.0 && *(v63 - 25) == 0.0)
              {
                v65 = 0;
                v66 = *(v60 + 100) >= *v63 ? v64 : v56;
                atomic_compare_exchange_strong((v57 + 160 * v66 + 60), &v65, 0x22222222u);
                if (!v65)
                {
                  v74 = release_image(a1, v66, v74, 0);
                  ++v73;
                }
              }

              ++v64;
              v55 = *(a1 + 40);
              v63 += 40;
            }

            while (v64 < v55);
          }
        }

        ++v56;
        ++v59;
        v58 += 40;
      }

      while (v56 < (v55 - 1));
    }

    os_unfair_lock_unlock((a1 + 16));
    v16 = v74;
    v33 = v73;
  }

  if (BYTE11(xmmword_1ED4E980C) == 1)
  {
    memset(msg, 0, 24);
    if (v16)
    {
      v68 = 0;
      v69 = v16;
      do
      {
        v70 = v69[4];
        if (!v70)
        {
          v70 = v69[6];
        }

        *(&msg[0].msgh_bits + v68) = v70;
        v69 = *v69;
        v71 = v68 + 1;
        if (v69)
        {
          v72 = v68 >= 5;
        }

        else
        {
          v72 = 1;
        }

        ++v68;
      }

      while (!v72);
      for (; v69; v69 = *v69)
      {
        ++v71;
      }
    }

    kdebug_trace();
    if (!v16)
    {
      return v33;
    }

    goto LABEL_133;
  }

  if (v16)
  {
LABEL_133:
    release_images(a1, v16);
  }

  return v33;
}

CA::Render::MatchAnimation *CA::Render::MatchAnimation::MatchAnimation(CA::Render::MatchAnimation *this, CA::Render::Decoder *a2)
{
  *CA::Render::Animation::Animation(this, a2) = &unk_1EF1FEBD8;
  *(this + 12) = CA::Render::Decoder::decode_size_t(a2);
  *(this + 13) = CA::Render::Decoder::decode_size_t(a2);
  *(this + 28) = CA::Render::Decoder::decode_int32(a2);
  *(this + 15) = CA::Render::Decoder::decode_keypath(a2);
  *(this + 16) = 0;
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-match-animation.cpp", 157);
  return this;
}

CA::Render::MatchMoveAnimation *CA::Render::MatchMoveAnimation::MatchMoveAnimation(CA::Render::MatchMoveAnimation *this, CA::Render::Decoder *a2)
{
  matched = CA::Render::MatchAnimation::MatchAnimation(this, a2);
  *(matched + 12) = 32;
  ++dword_1ED4EAAB8;
  *matched = &unk_1EF200B38;
  *(this + 17) = CA::Render::Decoder::decode_object(a2, 62);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-match-animation.cpp", 722);
  return this;
}

uint64_t CA::Render::MatchMoveAnimation::validate(CA::Render::MatchMoveAnimation *this, CA::Render::Layer *a2)
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
  if (!v2 || (v2 & 1) == 0 && !*v2)
  {
    return 0;
  }

  v3 = *(this + 17);
  if (!v3 || !*(v3 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v4 = v2 >> 1;
  }

  else
  {
    if (!*v2)
    {
LABEL_14:
      *(this + 3) |= 0x4000u;
      return 1;
    }

    v4 = v2[1];
  }

  if (v4 != 569)
  {
    goto LABEL_14;
  }

  return 1;
}

_DWORD *CA::Render::MatchAnimation::was_added(_DWORD *this, CA::Render::Handle *a2)
{
  v2 = this;
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = this[3];
  if ((v3 & 0x1000) != 0)
  {
    *(a2 + 13) |= 8uLL;
    v3 = this[3];
  }

  if ((v3 & 0x2000) != 0)
  {
    *(a2 + 13) |= 0x10uLL;
  }

  if (!*(this + 16))
  {
    if (this[28])
    {
      if (*(this + 13))
      {
        v4 = (*(*this + 160))(this, a2);
        *(v2 + 16) = v4;
        CA::Render::Handle::add_dependence(v4, 0);
        v5[0] = 0;
        CA::Render::Handle::Dependence::retain_source_handle(v5, *(v2 + 16));
        this = v5[0];
        if (v5[0])
        {
          *(v5[0] + 104) |= 8uLL;
          if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
          {
            return (*(*this + 16))(this);
          }
        }
      }
    }
  }

  return this;
}

int8x16_t CA::Render::MatchMoveAnimation::create_dependence(int8x16_t *this, Handle *a2)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v4 = malloc_type_zone_malloc(malloc_zone, 0x168uLL, 0x165299FDuLL);
  if (v4)
  {
    v6 = *(a2[3] + 4);
    v4->i32[2] = this[7].i32[0];
    v4->i32[3] = v6;
    result = vextq_s8(this[6], this[6], 8uLL);
    v4[1] = result;
    v4[2].i64[0] = 0;
    v4[2].i64[1] = 0;
    v4[3].i64[0] = this;
    v4[3].i32[2] = 0;
    v4[4].i64[0] = 0;
    v4[12].i8[8] = 0;
    v4[13].i32[0] = 0;
    v4[13].i64[1] = 0;
    v4[22].i8[0] = 0;
    v4->i64[0] = &unk_1EF1FECC0;
  }

  return result;
}

uint64_t CA::Render::Handle::add_dependence(CA::Render::Handle *this, CA::Render::Handle::Dependence *a2)
{
  v2 = a2;
  v4 = CA::Render::Context::context_by_id(*(this + 2));
  result = *(this + 3);
  if (*(this + 2) == result)
  {
    if (!v4)
    {
      return result;
    }

    v6 = v4;
    if (!atomic_fetch_add((v4 + 8), 1u))
    {
      v6 = 0;
      atomic_fetch_add((v4 + 8), 0xFFFFFFFF);
    }
  }

  else
  {
    result = CA::Render::Context::context_by_id(result);
    v6 = result;
    if (!v4)
    {
      if (!result)
      {
        return result;
      }

      v11 = 1;
      goto LABEL_17;
    }
  }

  pthread_mutex_lock((v4 + 72));
  v7 = CA::Render::Context::lookup_handle(v4, *(this + 2), 0, 1, 0);
  if (v7)
  {
    v9 = *(v7 + 7);
    if (v2 && v9)
    {
      v10 = *(v7 + 7);
      while (v10 != this)
      {
        v10 = *(v10 + 4);
        if (!v10)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      *(this + 4) = v9;
      *(v7 + 7) = this;
      CA::Render::Handle::update_container_state(v7, v8);
    }
  }

  result = pthread_mutex_unlock((v4 + 72));
  if (!v6)
  {
    goto LABEL_27;
  }

  v11 = 0;
LABEL_17:
  pthread_mutex_lock((v6 + 72));
  v12 = CA::Render::Context::lookup_handle(v6, *(this + 3), 0, 1, 0);
  if (v12)
  {
    v14 = *(v12 + 8);
    if (v2 && v14)
    {
      v15 = *(v12 + 8);
      while (v15 != this)
      {
        v15 = *(v15 + 5);
        if (!v15)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_23:
      *(this + 5) = v14;
      *(v12 + 8) = this;
      CA::Render::Handle::update_container_state(v12, v13);
    }
  }

  result = pthread_mutex_unlock((v6 + 72));
  if (atomic_fetch_add((v6 + 8), 0xFFFFFFFF) == 1)
  {
    result = (*(*v6 + 16))(v6);
  }

  if ((v11 & 1) == 0)
  {
LABEL_27:
    if (atomic_fetch_add((v4 + 8), 0xFFFFFFFF) == 1)
    {
      v16 = *(*v4 + 16);

      return v16(v4);
    }
  }

  return result;
}

uint64_t CA::Render::Handle::Dependence::retain_source_handle(CA::Render::Handle::Dependence *this, uint64_t a2)
{
  result = CA::Render::Context::context_by_id(*(a2 + 8));
  *this = 0;
  if (result)
  {
    v5 = result;
    pthread_mutex_lock((result + 72));
    v6 = CA::Render::Context::lookup_handle(v5, *(a2 + 16), 0, 0, 0);
    if (v6)
    {
      v7 = (v6 + 8);
      if (!atomic_fetch_add(v6 + 2, 1u))
      {
        v6 = 0;
        atomic_fetch_add(v7, 0xFFFFFFFF);
      }

      *this = v6;
    }

    result = pthread_mutex_unlock((v5 + 72));
    if (atomic_fetch_add((v5 + 8), 0xFFFFFFFF) == 1)
    {
      v8 = *(*v5 + 16);

      return v8(v5);
    }
  }

  return result;
}

void CA::WindowServer::Server::invalidate(CA::WindowServer::Server *this, const CA::Shape *a2)
{
  if (a2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        return;
      }
    }

    else if (*(a2 + 1) == 6)
    {
      return;
    }

    os_unfair_lock_lock(this + 4);
    if (*(this + 22))
    {
      CA::shape_union(this + 22, a2, v5);
    }

    else
    {
      *(this + 22) = CA::Shape::ref(a2, v4);
    }

    os_unfair_lock_unlock(this + 4);
  }
}

uint64_t layer_private_check_pixel_format(_CAMetalLayerPrivate *a1, CA::Render *this)
{
  result = CA::Render::fourcc_to_format(this);
  if (a1)
  {
    if ((result - 33) <= 2)
    {
      result = [(_CAMetalLayerPrivate *)a1 supportsExtendedXR10Formats];
      if ((result & 1) == 0)
      {
        v4 = MEMORY[0x1E695DF30];

        return [v4 raise:@"CAMetalLayerInvalid" format:@"unsupported extended range format"];
      }
    }
  }

  return result;
}

os_log_t __x_log_get_api_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "API");
  x_log_get_api::log = result;
  return result;
}

void CA::OGL::Context::image_deleted(CA::OGL::Context *this, CA::Render::Object *a2, void *a3, void *a4)
{
  os_unfair_lock_lock(a2 + 178);
  v6 = std::__hash_table<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::__unordered_map_hasher<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,CA::OGL::Context::RenderObjectSlice::Hash,std::equal_to<CA::OGL::Context::RenderObjectSlice>,true>,std::__unordered_map_equal<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::equal_to<CA::OGL::Context::RenderObjectSlice>,CA::OGL::Context::RenderObjectSlice::Hash,true>,std::allocator<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>>>::find<CA::OGL::Context::RenderObjectSlice>(a2 + 90, this, 0);
  if (v6)
  {
    v7 = v6[4];
    std::__hash_table<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::__unordered_map_hasher<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,CA::OGL::Context::RenderObjectSlice::Hash,std::equal_to<CA::OGL::Context::RenderObjectSlice>,true>,std::__unordered_map_equal<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::equal_to<CA::OGL::Context::RenderObjectSlice>,CA::OGL::Context::RenderObjectSlice::Hash,true>,std::allocator<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>>>::erase(a2 + 90, v6);
    CA::OGL::Context::prepend_deleted_image(a2, v7);
  }

  v8 = (*(*this + 88))(this);
  if (v8 != this)
  {
    v9 = std::__hash_table<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::__unordered_map_hasher<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,CA::OGL::Context::RenderObjectSlice::Hash,std::equal_to<CA::OGL::Context::RenderObjectSlice>,true>,std::__unordered_map_equal<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::equal_to<CA::OGL::Context::RenderObjectSlice>,CA::OGL::Context::RenderObjectSlice::Hash,true>,std::allocator<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>>>::find<CA::OGL::Context::RenderObjectSlice>(a2 + 90, v8, 0);
    if (v9)
    {
      v10 = v9[4];
      if (!*(v10 + 61) && !*(v10 + 60))
      {
        *(a2 + 96) = x_list_prepend(*(a2 + 96), v10);
        *(v10 + 60) = 1;
      }

      if (*v10)
      {
        (*(**v10 + 152))(*v10, a2, 0);
        *v10 = 0;
      }
    }
  }

  os_unfair_lock_unlock(a2 + 178);
}

uint64_t CA::Render::Texture::unset_pointer(uint64_t this, void *a2)
{
  if (*(this + 104) == a2)
  {
    *(this + 104) = 0;
  }

  return this;
}

uint64_t CA::GenericRectTree<CA::Rect>::insert_node(uint64_t result, uint64_t *a2, double a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (a6.n128_f64[0] <= a4.n128_f64[0] || a5.n128_f64[0] <= a3)
  {
    return result;
  }

  v7 = result;
  if (*(result + 16))
  {
    return result;
  }

  if (*(result + 17))
  {
    goto LABEL_33;
  }

  v8 = a6.n128_f64[0];
  v9 = a5.n128_f64[0];
  v10 = a4.n128_f64[0];
  v11 = a3;
  v13 = *a2;
  if (!*a2)
  {
    v19 = *(result + 20);
    *(result + 20) = v19 + 1;
    if (v19 <= 0x3F)
    {
      v20 = *result;
      result = **result;
      if (result)
      {
        *v20 = *(result + 32);
        *(result + 32) = 0;
      }

      else
      {
        v22 = v20[1];
        v23 = v22[2];
        v24 = v23 >= 0x40;
        v25 = v23 - 64;
        if (v24)
        {
          result = v22[1];
          v22[1] = result + 64;
          v22[2] = v25;
        }

        else
        {
          result = x_heap_malloc_small_(v22, 0x40uLL);
        }

        *(result + 32) = 0u;
        *(result + 48) = 0u;
      }

      *result = v11;
      *(result + 8) = v10;
      *(result + 16) = v9;
      *(result + 24) = v8;
      *a2 = result;
      return result;
    }

LABEL_33:
    *(v7 + 16) = 1;
    v21 = *(v7 + 8);
    if (v21)
    {
      result = CA::GenericRectTree<CA::Rect>::Pool::delete_node(*v7, v21);
      *(v7 + 8) = 0;
    }

    return result;
  }

  v14 = v13[1];
  if (v14 > a4.n128_f64[0])
  {
    if (v14 <= a6.n128_f64[0])
    {
      a6.n128_f64[0] = v13[1];
    }

    result = CA::GenericRectTree<CA::Rect>::insert_node(result, v13 + 6, v11, a4, a5, a6);
    v10 = v13[1];
  }

  v15 = v13[3];
  if (v15 < v8)
  {
    if (v10 <= v15)
    {
      v16 = v13[3];
    }

    else
    {
      v16 = v10;
    }

    a4.n128_f64[0] = v16;
    a5.n128_f64[0] = v9;
    a6.n128_f64[0] = v8;
    result = CA::GenericRectTree<CA::Rect>::insert_node(v7, v13 + 7, v11, a4, a5, a6);
    v8 = v16;
  }

  if (*v13 > v11)
  {
    if (*v13 <= v9)
    {
      a5.n128_f64[0] = *v13;
    }

    else
    {
      a5.n128_f64[0] = v9;
    }

    a4.n128_f64[0] = v10;
    a6.n128_f64[0] = v8;
    result = CA::GenericRectTree<CA::Rect>::insert_node(v7, v13 + 4, v11, a4, a5, a6);
    v11 = *v13;
  }

  v17 = v13[2];
  if (v17 < v9)
  {
    if (v11 <= v17)
    {
      v18 = v13[2];
    }

    else
    {
      v18 = v11;
    }

    a4.n128_f64[0] = v10;
    a5.n128_f64[0] = v9;
    a6.n128_f64[0] = v8;
    result = CA::GenericRectTree<CA::Rect>::insert_node(v7, v13 + 5, v18, a4, a5, a6);
    v9 = v18;
  }

  if (v9 > v11 && v8 > v10)
  {
    goto LABEL_33;
  }

  return result;
}

uint64_t CA::GenericRectTree<CA::Rect>::Pool::delete_node(uint64_t result, void *a2)
{
  v3 = result;
  if (a2[4])
  {
    result = CA::GenericRectTree<CA::Rect>::Pool::delete_node(result);
    a2[4] = 0;
  }

  if (a2[5])
  {
    result = CA::GenericRectTree<CA::Rect>::Pool::delete_node(v3);
    a2[5] = 0;
  }

  if (a2[6])
  {
    result = CA::GenericRectTree<CA::Rect>::Pool::delete_node(v3);
    a2[6] = 0;
  }

  if (a2[7])
  {
    result = CA::GenericRectTree<CA::Rect>::Pool::delete_node(v3);
    a2[7] = 0;
  }

  a2[4] = *v3;
  *v3 = a2;
  return result;
}

CATransform3D *__cdecl CATransform3DMakeRotation(CATransform3D *__return_ptr retstr, CGFloat angle, CGFloat x, CGFloat y, CGFloat z)
{
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  CA::Mat4Impl::mat4_set_rotation(retstr, v5, angle, x, y, z);
  return result;
}

uint64_t CA::Render::Shmem::set_volatile(CA::Render::Shmem *this, unsigned int a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 3);
  if (((v4 >> 8) & 4) == v3)
  {
    return 1;
  }

  if ((v4 & 0x1000) == 0)
  {
    return a2 ^ 1;
  }

  v13 = a3 & 0xFFFFFFFC | a2;
  if (MEMORY[0x1865EC190](*MEMORY[0x1E69E9A60], *(this + 3) & -*MEMORY[0x1E69E9AC8], 0, &v13))
  {
    return a2 ^ 1;
  }

  v8 = *(this + 3);
  *(this + 3) = v8 ^ 0x400;
  if ((v8 & 0x2000) != 0)
  {
    if (a2)
    {
      v9 = -*(this + 2);
    }

    else
    {
      v9 = *(this + 2);
    }

    v10 = CAGetStatsStruct(0);
    v11 = *(v10 + 1);
    v12 = *v10 + v9;
    *v10 = v12;
    if (v12 > v11)
    {
      *(v10 + 1) = v12;
    }
  }

  if (v13 == 2)
  {
    return a2;
  }

  else
  {
    return 1;
  }
}

uint64_t anonymous namespace::buffer_is_unused(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return **(v1 + 24) == 0;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return 1;
  }

  v4 = (*(*v3 + 24))(v3);
  return IOSurfaceIsInUse(v4) == 0;
}

void *CA::Render::anonymous namespace::create_image_from_image_data(CGImageRef image, CGImage *a2, CGColorSpace *a3, __int16 a4, double a5)
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = BYTE9(ca_debug_options);
  if (a4 & 0x20) != 0 || a3 > 0x23 || ((0x1FFFFFF2FuLL >> a3))
  {
    if (a3 == 14 || a3 == -1)
    {
      if (!BYTE9(ca_debug_options))
      {
      }

      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v15 = x_log_get_render(void)::log;
      if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
      {
      }

      *buf = 134217984;
      v39 = image;
      v12 = "copied CGImageRef %p - format not supported by hardware\n";
      v13 = v15;
      v14 = 12;
      goto LABEL_16;
    }

    DataProvider = CGImageGetDataProvider(image);
    v20 = CGDataProviderRetainBytePtr();
    Width = CGImageGetWidth(image);
    Height = CGImageGetHeight(image);
    BytesPerRow = CGImageGetBytesPerRow(image);
    v37 = BytesPerRow;
    ColorSpace = CGImageGetColorSpace(image);
    v25 = ColorSpace;
    if (!v20)
    {
      if (v10)
      {
        if (x_log_get_render(void)::once[0] != -1)
        {
          dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
        }

        v29 = x_log_get_render(void)::log;
        if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v39 = image;
          _os_log_impl(&dword_183AA6000, v29, OS_LOG_TYPE_DEFAULT, "copied CGImageRef %p - no data pointer\n", buf, 0xCu);
        }
      }
    }

    v36 = ColorSpace;
    SizeOfData = CGDataProviderGetSizeOfData();
    if (SizeOfData == -1)
    {
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v27 = x_log_get_render(void)::log;
      if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      *buf = 0;
      v28 = "data provider size invalid";
    }

    else
    {
      if (SizeOfData >= (CGImageGetBitsPerPixel(image) >> 3) * Width + BytesPerRow * (Height - 1))
      {
        {
        }

        if (qword_1ED4E4910 && ((qword_1ED4E4910 & (qword_1ED4E4910 - 1)) != 0 ? (v30 = v20 % qword_1ED4E4910) : (v30 = (qword_1ED4E4910 - 1) & v20), v30))
        {
          if (v10)
          {
            if (x_log_get_render(void)::once[0] != -1)
            {
              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            }

            v31 = x_log_get_render(void)::log;
            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v39 = image;
              _os_log_impl(&dword_183AA6000, v31, OS_LOG_TYPE_DEFAULT, "copied CGImageRef %p - bad image alignment\n", buf, 0xCu);
            }
          }
        }

        else if (qword_1ED4E4918 && ((qword_1ED4E4918 & (qword_1ED4E4918 - 1)) != 0 ? (v32 = BytesPerRow % qword_1ED4E4918) : (v32 = BytesPerRow & (qword_1ED4E4918 - 1)), v32))
        {
          if (v10)
          {
            if (x_log_get_render(void)::once[0] != -1)
            {
              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            }

            v33 = x_log_get_render(void)::log;
            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v39 = image;
              _os_log_impl(&dword_183AA6000, v33, OS_LOG_TYPE_DEFAULT, "copied CGImageRef %p - bad row alignment\n", buf, 0xCu);
            }
          }
        }

        else
        {
          if ((a4 & 1) == 0)
          {
            if (image_by_copying)
            {
              CGDataProviderRetain(DataProvider);
              return image_by_copying;
            }

LABEL_70:
            CGDataProviderReleaseBytePtr();
            return image_by_copying;
          }

          if (v10)
          {
            if (x_log_get_render(void)::once[0] != -1)
            {
              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            }

            v34 = x_log_get_render(void)::log;
            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v39 = image;
              _os_log_impl(&dword_183AA6000, v34, OS_LOG_TYPE_DEFAULT, "copied CGImageRef %p - mipmap generation\n", buf, 0xCu);
            }
          }
        }

        goto LABEL_70;
      }

      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v27 = x_log_get_render(void)::log;
      if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
LABEL_36:
        image_by_copying = 0;
        goto LABEL_70;
      }

      *buf = 0;
      v28 = "data provider size is too small";
    }

    _os_log_error_impl(&dword_183AA6000, v27, OS_LOG_TYPE_ERROR, v28, buf, 2u);
    goto LABEL_36;
  }

  if (!BYTE9(ca_debug_options))
  {
  }

  if (x_log_get_render(void)::once[0] != -1)
  {
    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
  }

  v11 = x_log_get_render(void)::log;
  if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
  {
  }

  *buf = 134218240;
  v39 = image;
  v40 = 1024;
  v41 = a3;
  v12 = "copied CGImageRef %p - non-native format (%d)\n";
  v13 = v11;
  v14 = 18;
LABEL_16:
  _os_log_impl(&dword_183AA6000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
}

uint64_t CA::WindowServer::IOMFBServer::refresh_timer_interval(CA::WindowServer::IOMFBServer *this)
{
  v2 = (*(**(this + 12) + 776))(*(this + 12));
  v3 = CAHostTimeWithTime(v2);
  result = (*(**(this + 12) + 784))();
  v5 = *(this + 12);
  if ((v5[160] & 0x100) != 0)
  {
    result = (*(*v5 + 144))(*(this + 12));
    if (!result)
    {
      result = (*(**(this + 12) + 800))(*(this + 12));
    }

    *(this + 343) = result;
  }

  if (*(this + 139))
  {
    v6 = result;
    v7 = *(this + 139);

    return CADisplayTimerSetInterval(v7, v3, v6);
  }

  return result;
}

void CA::Render::Fence::btimeout_callback(CA::Render::Fence *this, double a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (CA::Render::Fence::fence_info_once != -1)
  {
    dispatch_once_f(&CA::Render::Fence::fence_info_once, 0, CA::Render::Fence::fence_info_init);
  }

  os_unfair_lock_lock(&CA::Render::Fence::_lock);
  v4 = *(CA::Render::Fence::batches_by_port + 16);
  if (!v4)
  {
LABEL_41:
    v6 = INFINITY;
    goto LABEL_42;
  }

  v5 = 0;
  v6 = INFINITY;
  do
  {
    v7 = (v4 + 2);
    v8 = *(v4 + 4);
    v9 = CA::Render::Fence::cleared_b_ports;
    v10 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(CA::Render::Fence::cleared_b_ports, v8);
    if (v10)
    {
      goto LABEL_29;
    }

    v11 = v4[3];
    v12 = *(v11 + 16);
    if (v12 == 0.0)
    {
      v12 = *(v11 + 8);
      if (v12 <= a2)
      {
        kdebug_trace();
        *(v4[3] + 44) = 1;
        if (x_log_get_render(void)::once[0] != -1)
        {
          dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
        }

        v15 = x_log_get_render(void)::log;
        v10 = os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR);
        if (v10)
        {
          v21 = *v7;
          *buf = 67109120;
          v27 = v21;
          _os_log_error_impl(&dword_183AA6000, v15, OS_LOG_TYPE_ERROR, "timed out batch %x\n", buf, 8u);
        }

        v16 = v4[3];
        v17 = *(*(v16 + 32) + 16);
        if (v17)
        {
          v18 = CA::Render::Fence::bcontexts_by_id;
          do
          {
            v10 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v18, *(v17 + 4));
            if (v10)
            {
              v19 = CA::Render::Context::delay_of_batch(*v10[3], *(v4 + 4));
              v16 = v4[3];
              v18 = CA::Render::Fence::bcontexts_by_id;
              if (v19 > *(v16 + 16))
              {
                *(v16 + 16) = a2;
              }
            }

            v17 = *v17;
          }

          while (v17);
        }

        v12 = *(v16 + 16);
        if (v12 == 0.0 || v12 <= a2)
        {
          v13 = CA::Render::Fence::cleared_b_ports;
          v14 = *v7;
          goto LABEL_26;
        }
      }
    }

    else if (v12 <= a2)
    {
      v13 = v9;
      v14 = v8;
LABEL_26:
      v10 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(v13, v14);
      v5 = 1;
      goto LABEL_29;
    }

    if (v12 <= v6)
    {
      v6 = v12;
    }

LABEL_29:
    v4 = *v4;
  }

  while (v4);
  if ((v5 & 1) == 0 || !CA::Render::Fence::resolve_batches(v10, a2))
  {
    goto LABEL_42;
  }

  v22 = *(CA::Render::Fence::batches_by_port + 16);
  if (!v22)
  {
    goto LABEL_41;
  }

  v23 = CA::Render::Fence::cleared_b_ports;
  v6 = INFINITY;
  do
  {
    if (!std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v23, *(v22 + 4)))
    {
      v24 = v22[3];
      v25 = *(v24 + 16);
      if (v25 == 0.0)
      {
        v25 = *(v24 + 8);
      }

      if (v25 <= v6)
      {
        v6 = v25;
      }
    }

    v22 = *v22;
  }

  while (v22);
LABEL_42:
  os_unfair_lock_unlock(&CA::Render::Fence::_lock);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    CA::Render::Server::add_callback(3, CA::Render::Fence::btimeout_callback, 0, v6);
  }
}

uint64_t CA::OGL::FilterNode::grow_roi(CA::OGL::FilterNode *this, int32x2_t *a2)
{
  result = CA::OGL::filter_flags(*(this + 31), *(this + 2));
  if ((result & 0x20) != 0)
  {
    if ((*(this + 38) & 0x80000000) != 0)
    {
      (*(*this + 40))(this, this + 144);
    }

    v5 = *(this + 144);
    v6 = *(this + 152);

    return CA::BoundsImpl::Union(a2, v5, v6);
  }

  return result;
}

uint64_t calcModeFromString(const __CFString *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = CAInternAtom(a1, 0);
  if (v2 <= 199)
  {
    if (v2 == 169)
    {
      return 3;
    }

    if (v2 == 170)
    {
      return 4;
    }
  }

  else
  {
    switch(v2)
    {
      case 200:
        return 0;
      case 551:
        return 2;
      case 484:
        return 1;
    }
  }

  if (x_log_get_api::once[0] != -1)
  {
    dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
  }

  v4 = x_log_get_api::log;
  result = os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v5 = 138412290;
    v6 = a1;
    _os_log_error_impl(&dword_183AA6000, v4, OS_LOG_TYPE_ERROR, "unknown animation calculation mode: %@", &v5, 0xCu);
    return 0;
  }

  return result;
}

int32x2_t *CA::OGL::FilterNode::retain_surface(CA::OGL::FilterNode *this, float *a2, uint64_t a3)
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  if (*(this + 240))
  {
    v6 = *(this + 2);
    if ((*(v6 + 40) & 8) == 0 && (*(v6 + 32) & 8) == 0)
    {
      v7 = *(this + 1);
      v8 = *v7;
      v12 = 1065353216;
      v9 = (*(**(this + 3) + 80))(*(this + 3), &v12, a3);
      v11 = v9;
      if (v8[43].i64[0] != v9)
      {
        CA::OGL::Context::push_surface(v8, v9, v9[18].i32[0] >= 0, 64, 0);
        CA::OGL::emit_filter(v7, *(this + 31), *(this + 2), &v11, &v12, 0, 0, 0, *a2, 0, 0, 0);
        CA::OGL::Context::pop_surface(v8);
        *a2 = v12;
        return v11;
      }

      CA::OGL::Context::release_surface(v8, v9);
    }
  }

  return CA::OGL::ImagingNode::retain_surface(this, a2, v3);
}

_DWORD *copyFloatVector(NSArray *a1, BOOL *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = [(NSArray *)a1 count];
  if (v4)
  {
    v5 = v4;
    v6 = 8 * v4;
    if (8 * v4 > 0x1000)
    {
      v7 = malloc_type_malloc(8 * v4, 0xE4435F94uLL);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v4);
      v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v7, v6);
    }

    [-[NSArray objectAtIndex:](a1 objectAtIndex:{0), "doubleValue"}];
    *v7 = v10;
    if (v5 == 1)
    {
      v11 = 1;
    }

    else
    {
      v12 = v7 + 1;
      v13 = 1;
      v11 = 1;
      do
      {
        [-[NSArray objectAtIndex:](a1 objectAtIndex:{v13), "doubleValue"}];
        *v12 = v14;
        v11 &= v14 >= *(v12 - 1);
        ++v13;
        ++v12;
      }

      while (v5 != v13);
    }

    if (a2)
    {
      *a2 = v11;
    }

    v8 = CA::Render::Vector::new_vector(v5, v7, v9);
    if (v6 > 0x1000)
    {
      free(v7);
    }
  }

  else
  {
    v8 = 0;
    if (a2)
    {
      *a2 = 1;
    }
  }

  return v8;
}

void *CA::Render::KeyframeAnimation::encode(const CA::Render::Object **this, CA::Render::Encoder *a2)
{
  CA::Render::PropertyAnimation::encode(this, a2);
  CA::Render::Encoder::encode_object(a2, this[14]);
  CA::Render::Encoder::encode_object(a2, this[15]);
  CA::Render::Encoder::encode_object(a2, this[16]);
  CA::Render::Encoder::encode_object(a2, this[17]);
  v4 = *(this + 144);
  v5 = *(a2 + 4);
  if ((v5 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 1);
    v5 = *(a2 + 4);
  }

  *(a2 + 4) = v5 + 1;
  *v5 = v4;
  CA::Render::Encoder::encode_object(a2, this[19]);
  CA::Render::Encoder::encode_object(a2, this[20]);
  CA::Render::Encoder::encode_object(a2, this[21]);

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void CA::Render::KeyframeAnimation::~KeyframeAnimation(CA::Render::KeyframeAnimation *this, void **a2)
{
  *this = &unk_1EF202D38;
  v3 = *(this + 21);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 20);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 19);
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 16))(v5);
  }

  v6 = *(this + 17);
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v6 + 16))(v6);
  }

  v7 = *(this + 16);
  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v7 + 16))(v7);
  }

  v8 = *(this + 15);
  if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v8 + 16))(v8);
  }

  v9 = *(this + 14);
  if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v9 + 16))(v9);
  }

  --dword_1ED4EAAA4;

  CA::Render::PropertyAnimation::~PropertyAnimation(this, a2);
}

{
  CA::Render::KeyframeAnimation::~KeyframeAnimation(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

uint64_t std::__hash_table<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::__unordered_map_hasher<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,CA::OGL::Context::RenderObjectSlice::Hash,std::equal_to<CA::OGL::Context::RenderObjectSlice>,true>,std::__unordered_map_equal<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::equal_to<CA::OGL::Context::RenderObjectSlice>,CA::OGL::Context::RenderObjectSlice::Hash,true>,std::allocator<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>>>::erase(void *a1, uint64_t *__p)
{
  v2 = a1[1];
  v4 = *__p;
  v3 = __p[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != __p);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    v9 = *__p;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
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

  v9 = *__p;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *__p;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *__p;
  }

LABEL_27:
  *v7 = v9;
  *__p = 0;
  --a1[3];
  operator delete(__p);
  return v4;
}

uint64_t *CA::OGL::Context::prepend_deleted_image(uint64_t *result, uint64_t a2)
{
  if (!*(a2 + 61))
  {
    v3 = result;
    result[95] = x_list_prepend(result[95], a2);
    result = *a2;
    if (*a2)
    {
      result = (*(*result + 152))(result, v3, 0);
      *a2 = 0;
    }

    if (*(a2 + 60))
    {
      result = v3[96];
      x_list_remove(result, a2);
      v3[96] = result;
      *(a2 + 60) = 0;
    }

    *(a2 + 61) = 1;
  }

  return result;
}

uint64_t CABackingStoreSynchronize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  *(a1 + 480) = pthread_self();
  pthread_mutex_unlock((a1 + 16));
  v8 = (*(*a2 + 64))(a2, a3, a4, 1);
  pthread_mutex_lock((a1 + 16));
  *(a1 + 480) = 0;
  return v8;
}

CA::Render::KeyframeAnimation *CA::Render::KeyframeAnimation::KeyframeAnimation(CA::Render::KeyframeAnimation *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::PropertyAnimation::PropertyAnimation(this, a2);
  *(v4 + 12) = 27;
  ++dword_1ED4EAAA4;
  *v4 = &unk_1EF202D38;
  *(this + 14) = CA::Render::Decoder::decode_object(a2, 1);
  *(this + 15) = CA::Render::Decoder::decode_object(a2, 62);
  *(this + 16) = CA::Render::Decoder::decode_object(a2, 62);
  *(this + 17) = CA::Render::Decoder::decode_object(a2, 38);
  v5 = CA::Render::Decoder::decode_int8(a2);
  if (v5 >= 5)
  {
    CA::Render::Decoder::set_fatal_error(a2, "%s - enum %u out of range of %u", "decode_int8_enum", v5, 5);
    LOBYTE(v5) = 0;
  }

  *(this + 144) = v5;
  *(this + 19) = CA::Render::Decoder::decode_object(a2, 62);
  *(this + 20) = CA::Render::Decoder::decode_object(a2, 62);
  *(this + 21) = CA::Render::Decoder::decode_object(a2, 62);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-animation.cpp", 2672);
  return this;
}

BOOL CA::Render::PropertyAnimation::validate(CA::Render::PropertyAnimation *this, CA::Render::Layer *a2)
{
  v2 = *(this + 12);
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

void CA::WindowServer::IOMFBServer::check_display_blanked(CA::WindowServer::IOMFBServer *this, CA::Render::Object *a2, _BYTE *a3, void *a4)
{
  v4 = *(a2 + 12);
  if ((*(v4 + 29495) & 1) == 0 && (*(v4 + 672) & 0x1C00) != 0x1000 && *a3 == *(v4 + 24))
  {
    v5 = atomic_load((*(v4 + 768) + 1));
    a3[4] = v5 != 1;
  }
}

uint64_t CA::Render::ShmemBitmap::fill_pixels(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a3 || (result = CGSRegionIsEmpty(), (result & 1) == 0))
  {
    v5 = v4[4].i32[0];
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = v4[1].u32[1];
        v8 = 0;
        if (i)
        {
          v9 = v4[2];
          v10 = i;
          do
          {
            v13 = v9;
            v8 += CA::Render::format_rowbytes(v7, v9.u32[0]) * v9.u32[1];
            v11 = vcgt_u32(v13, 0x100000001);
            v9 = vsub_s32(vand_s8(vshr_n_u32(v13, 1uLL), v11), vmvn_s8(v11));
            --v10;
          }

          while (v10);
          v7 = v4[1].u32[1];
        }

        if (v4[2].i32[0] >> i <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v4[2].i32[0] >> i;
        }

        CA::Render::format_rowbytes(v7, v12);
        if (a3)
        {
          CGSRegionEnumerator();
          while (CGSNextRect())
          {
            CGBlt_fillBytes();
          }

          result = CGSReleaseRegionEnumerator();
        }

        else
        {
          result = CGBlt_fillBytes();
        }
      }
    }
  }

  return result;
}

uint64_t CA::Render::iosurface_set_edr_factor(uint64_t this, __IOSurface *a2, float a3)
{
  if (this)
  {
    return IOSurfaceSetBulkAttachments2();
  }

  return this;
}

float64x2_t CA::Mat2Impl::mat2_mix_with_deriv(float64x2_t *a1, uint64_t a2, uint64_t a3, float64x2_t *a4, float64x2_t *a5, double a6, double a7)
{
  v41 = *MEMORY[0x1E69E9840];
  CA::Mat2Impl::mat2_get_unmatrix(a2, &v36);
  CA::Mat2Impl::mat2_get_unmatrix(a3, v32);
  v12 = v36;
  if ((v36.f64[0] >= 0.0 || v32[0].f64[1] >= 0.0) && (v36.f64[1] >= 0.0 || v32[0].f64[0] >= 0.0))
  {
    v13 = v38.f64[0];
  }

  else
  {
    v12 = vnegq_f64(v36);
    v13 = dbl_183E21140[v38.f64[0] < 0.0] + v38.f64[0];
    v38.f64[0] = v13;
  }

  if (v13 == 0.0)
  {
    v38.f64[0] = 6.28318531;
    v13 = 6.28318531;
  }

  v14 = v33.f64[0];
  if (v33.f64[0] == 0.0)
  {
    v33.f64[0] = 6.28318531;
    v14 = 6.28318531;
  }

  if (vabdd_f64(v13, v14) > 3.14159265)
  {
    v15 = v13 <= v14;
    if (v13 <= v14)
    {
      v13 = v14;
    }

    v16 = v32;
    if (!v15)
    {
      v16 = &v36;
    }

    v16[2].f64[0] = v13 + -6.28318531;
  }

  v17 = vsubq_f64(v32[0], v12);
  v18 = v37;
  v19 = vsubq_f64(v32[1], v37);
  v20 = vsubq_f64(v33, v38);
  result = vmlaq_n_f64(v38, v20, a6);
  v22 = vsubq_f64(v34, v39);
  *v31 = result.f64[1];
  *&v31[8] = vmlaq_n_f64(v39, v22, a6);
  v23 = v35 - v40;
  *&v31[24] = v40 + (v35 - v40) * a6;
  if (a4)
  {
    *a4 = vmulq_n_f64(v17, a7);
    a4[1] = vmulq_n_f64(v19, a7);
    a4[2] = vmulq_n_f64(v20, a7);
    a4[3] = vmulq_n_f64(v22, a7);
    a4[4].f64[0] = v23 * a7;
  }

  v24 = vmlaq_n_f64(v12, v17, a6);
  v25 = vmlaq_n_f64(v18, v19, a6);
  if (a5)
  {
    *a5 = v24;
  }

  *a1 = *v31;
  a1[1] = *&v31[16];
  a1[2] = v25;
  if (result.f64[0] != 0.0)
  {
    v30 = v24;
    CA::Mat2Impl::mat2_rotate(a1, v11, result.f64[0]);
    v24 = v30;
  }

  result.f64[0] = v24.f64[1];
  if (v24.f64[0] != 1.0 || v24.f64[1] != 1.0)
  {
    result = vmulq_n_f64(*a1, v24.f64[0]);
    v27 = vmulq_laneq_f64(a1[1], v24, 1);
    *a1 = result;
    a1[1] = v27;
  }

  return result;
}

void CA::Transaction::Continuation::unref(dispatch_block_t *this)
{
  if (atomic_fetch_add(this, 0xFFFFFFFF) == 1)
  {
    dispatch_async(MEMORY[0x1E69E96A0], this[2]);
    _Block_release(this[2]);
    v3 = this[1];
    if (v3)
    {
      CA::Transaction::Continuation::unref(v3);
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v4 = malloc_zone;

    malloc_zone_free(v4, this);
  }
}

void CAObject_setValueForKeyPath(void *a1, void *a2, void *a3)
{
  v6 = [a3 rangeOfString:@"."];
  if (v7)
  {
    v8 = v6;
    v9 = [a3 substringToIndex:v6];
    v10 = [a3 substringFromIndex:v8 + 1];

    CAObject_setValueForKeyPath_(a1, a2, v9, v10, 0);
  }

  else
  {

    [a1 setValue:a2 forKey:a3];
  }
}

void *CA::OGL::MetalContext::create_fragment_shader(void **this, const CA::OGL::MetalContext::FragmentShader::Spec *a2, int a3)
{
  v3 = a2;
  v125 = *MEMORY[0x1E69E9840];
  v119 = CA::OGL::MetalContext::FragmentShader::Spec::name(a2);
  v4 = CA::OGL::MetalContext::texture_function_info;
  v118 = [CA::OGL::MetalContext::fragment_shader_type_info[2 * (CA::OGL::MetalContext::texture_function_info[8 * (*(v3 + 14) & 0x7F)] & 0x3F)] stringByAppendingString:@"_lph"];
  if (!v118)
  {
    v118 = off_1E6DF5140[(*(v3 + 18) >> 4) & 1];
    if (!v118)
    {
      __assert_rtn("create_fragment_shader", "ogl-metal.mm", 7760, "function_name != nil");
    }

    v5 = objc_opt_new();
    v123 = 0;
    v122 = 0u;
    memset(buf, 0, sizeof(buf));
    CA::OGL::MetalContext::FragmentShader::Spec::get_config(buf, v3, 0.0, v29, v30, v31, v32, v33, v34);
    LOBYTE(v120) = (*(v3 + 14) & 0x4000000) != 0;
    [@"fc_generic" UTF8String];
    [v5 setConstantValue:&v120 type:53 withName:@"fc_generic"];
    LOBYTE(v120) = (*(v3 + 14) >> 19) & 3;
    [@"fc_vertex_layout" UTF8String];
    [v5 setConstantValue:&v120 type:49 withName:@"fc_vertex_layout"];
    LOBYTE(v120) = (*(v3 + 14) & 0x40000000) != 0;
    [@"fc_framebuffer_fetch" UTF8String];
    [v5 setConstantValue:&v120 type:53 withName:@"fc_framebuffer_fetch"];
    LOBYTE(v120) = (*(v3 + 14) >> 21) & 3;
    [@"fc_attachment_count" UTF8String];
    [v5 setConstantValue:&v120 type:49 withName:@"fc_attachment_count"];
    v35 = *(v3 + 14);
    if ((v35 & 0x4000000) != 0)
    {
      LOBYTE(v37) = 1;
    }

    else
    {
      v36 = v35 & 0x7F;
      if ((*&CA::OGL::MetalContext::texture_function_info[8 * v36 + 6] & 0x20) != 0)
      {
        LOBYTE(v37) = 0;
      }

      else
      {
        v37 = CA::OGL::tex_image_count[v36];
        if (v37)
        {
          v38 = v37 - 1;
          v39 = v3;
          do
          {
            v40 = v38;
            v41 = *v39;
            v39 = (v39 + 7);
            LOBYTE(v37) = ((0x42000FFFE00uLL >> v41) & 1) == 0;
            if (((0x42000FFFE00uLL >> v41) & 1) == 0)
            {
              break;
            }

            --v38;
          }

          while (v40);
        }
      }
    }

    LOBYTE(v120) = v37;
    [@"fc_has_lod_bias" UTF8String];
    [v5 setConstantValue:&v120 type:53 withName:@"fc_has_lod_bias"];
    LOBYTE(v120) = (*(v3 + 14) & 0xC000000) != 0;
    [@"fc_has_noise_scale" UTF8String];
    [v5 setConstantValue:&v120 type:53 withName:@"fc_has_noise_scale"];
    v42 = *(v3 + 14);
    if ((v42 & 0x4000000) != 0)
    {
      LOBYTE(v49) = 1;
    }

    else
    {
      v43 = CA::OGL::tex_image_count[v42 & 0x7F];
      if (v43)
      {
        v44 = v43 - 1;
        v45 = v3;
        do
        {
          v46 = *v45;
          v45 = (v45 + 7);
          v47 = v44;
          v48 = CA::OGL::MetalContext::image_function_info[2 * (v46 & 0x3F)];
          v49 = (v48 >> 1) & 1;
          if ((v48 & 2) != 0)
          {
            break;
          }

          v44 = v47 - 1;
        }

        while (v47);
      }

      else
      {
        LOBYTE(v49) = 0;
      }
    }

    LOBYTE(v120) = v49;
    [@"fc_has_ycbcr_matrix" UTF8String];
    [v5 setConstantValue:&v120 type:53 withName:@"fc_has_ycbcr_matrix"];
    v50 = *(v3 + 14);
    if ((v50 & 0x4000000) == 0 && (*(v3 + 18) & 4) == 0)
    {
      v51 = v50 & 0x7F;
      if ((*&CA::OGL::MetalContext::texture_function_info[8 * v51 + 6] & 0x80) == 0)
      {
        v52 = CA::OGL::tex_image_count[v51];
        if (!CA::OGL::tex_image_count[v51])
        {
LABEL_139:
          v61 = 0;
LABEL_72:
          LOBYTE(v120) = v61;
          [@"fc_has_gamma_luts" UTF8String];
          [v5 setConstantValue:&v120 type:53 withName:@"fc_has_gamma_luts"];
          v62 = *(v3 + 14);
          if ((v62 & 0x4000000) != 0)
          {
            LOBYTE(v69) = 1;
          }

          else
          {
            v63 = CA::OGL::tex_image_count[v62 & 0x7F];
            if (v63)
            {
              v64 = v63 - 1;
              v65 = v3;
              do
              {
                v66 = v64;
                v67 = *v65;
                v65 = (v65 + 7);
                v68 = CA::OGL::MetalContext::texture_filter_info[(v67 >> 9) & 0xF];
                v69 = (v68 >> 1) & 1;
                if ((v68 & 2) != 0)
                {
                  break;
                }

                v64 = v66 - 1;
              }

              while (v66);
            }

            else
            {
              LOBYTE(v69) = 0;
            }
          }

          LOBYTE(v120) = v69;
          [@"fc_has_asg_77_weights" UTF8String];
          [v5 setConstantValue:&v120 type:53 withName:@"fc_has_asg_77_weights"];
          LOBYTE(v120) = (*(v3 + 14) & 0xC000000) != 0;
          [@"fc_has_noise_tex" UTF8String];
          [v5 setConstantValue:&v120 type:53 withName:@"fc_has_noise_tex"];
          v70 = *(v3 + 14);
          if ((v70 & 0x4000000) == 0)
          {
            v71 = CA::OGL::tex_image_count[v70 & 0x7F];
            if (!v71)
            {
LABEL_88:
              LOBYTE(v120) = v71;
              [@"fc_has_color_params" UTF8String];
              [v5 setConstantValue:&v120 type:53 withName:@"fc_has_color_params"];
              v73 = *(v3 + 14);
              if ((v73 & 0x4000000) != 0)
              {
                LOBYTE(v74) = 1;
              }

              else
              {
                v74 = (*&v4[8 * (v73 & 0x7F) + 6] >> 9) & 1;
              }

              LOBYTE(v120) = v74;
              [@"fc_has_lut_tex" UTF8String];
              [v5 setConstantValue:&v120 type:53 withName:@"fc_has_lut_tex"];
              v75 = 0;
              do
              {
                v76 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fc_has_attachment_%d", v75];
                LOBYTE(v120) = 0;
                [v76 UTF8String];
                [v5 setConstantValue:&v120 type:53 withName:v76];
                v75 = (v75 + 1);
              }

              while (v75 != 3);
              if ((*(v3 + 17) & 4) == 0)
              {
                LOBYTE(v120) = BYTE1(v122);
                [@"fc_texture_function" UTF8String];
                [v5 setConstantValue:&v120 type:49 withName:@"fc_texture_function"];
                LOBYTE(v120) = BYTE2(v122);
                [@"fc_blend_function" UTF8String];
                [v5 setConstantValue:&v120 type:49 withName:@"fc_blend_function"];
                LOBYTE(v120) = BYTE3(v122);
                [@"fc_destination_function" UTF8String];
                [v5 setConstantValue:&v120 type:49 withName:@"fc_destination_function"];
                LOBYTE(v120) = BYTE4(v122);
                [@"fc_image_count" UTF8String];
                [v5 setConstantValue:&v120 type:49 withName:@"fc_image_count"];
                LOBYTE(v120) = BYTE5(v122);
                [@"fc_dest_index" UTF8String];
                [v5 setConstantValue:&v120 type:49 withName:@"fc_dest_index"];
                LOBYTE(v120) = BYTE6(v122);
                [@"fc_dest_count" UTF8String];
                [v5 setConstantValue:&v120 type:49 withName:@"fc_dest_count"];
                LOBYTE(v120) = BYTE7(v122);
                [@"fc_noise_width" UTF8String];
                [v5 setConstantValue:&v120 type:49 withName:@"fc_noise_width"];
                LOBYTE(v120) = BYTE9(v122);
                [@"fc_clamp_color" UTF8String];
                [v5 setConstantValue:&v120 type:53 withName:@"fc_clamp_color"];
                LOBYTE(v120) = BYTE10(v122);
                [@"fc_extended_range" UTF8String];
                [v5 setConstantValue:&v120 type:53 withName:@"fc_extended_range"];
                LOBYTE(v120) = BYTE11(v122);
                [@"fc_unbounded_range" UTF8String];
                [v5 setConstantValue:&v120 type:53 withName:@"fc_unbounded_range"];
                LOBYTE(v120) = BYTE12(v122);
                [@"fc_debug_xr" UTF8String];
                [v5 setConstantValue:&v120 type:53 withName:@"fc_debug_xr"];
                LOBYTE(v120) = BYTE13(v122);
                [@"fc_has_premultiply" UTF8String];
                [v5 setConstantValue:&v120 type:53 withName:@"fc_has_premultiply"];
                LOBYTE(v120) = BYTE14(v122);
                [@"fc_has_hdr_scale" UTF8String];
                [v5 setConstantValue:&v120 type:53 withName:@"fc_has_hdr_scale"];
                LOBYTE(v120) = HIBYTE(v122);
                [@"fc_has_edr_factor" UTF8String];
                [v5 setConstantValue:&v120 type:53 withName:@"fc_has_edr_factor"];
                LOBYTE(v120) = (*(v3 + 14) & 0x20000000) != 0;
                [@"fc_perspective" UTF8String];
                [v5 setConstantValue:&v120 type:53 withName:@"fc_perspective"];
              }

              v77 = 0;
              v78 = buf;
              v79 = 1;
              do
              {
                v115 = v79;
                if ((*(v3 + 17) & 4) == 0)
                {
                  v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fc_image_function%d", v77];
                  LOBYTE(v120) = *v78;
                  [v80 UTF8String];
                  [v5 setConstantValue:&v120 type:49 withName:v80];
                  v81 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fc_coord_function%d", v77];
                  LOBYTE(v120) = v78[1];
                  [v81 UTF8String];
                  [v5 setConstantValue:&v120 type:49 withName:v81];
                  v82 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fc_plane_count%d", v77];
                  LOBYTE(v120) = v78[12];
                  [v82 UTF8String];
                  [v5 setConstantValue:&v120 type:49 withName:v82];
                  v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fc_texcoord_count%d", v77];
                  LOBYTE(v120) = v78[13];
                  [v83 UTF8String];
                  [v5 setConstantValue:&v120 type:49 withName:v83];
                  v84 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fc_memoryless_index%d", v77];
                  LOBYTE(v120) = v78[14] + 1;
                  [v84 UTF8String];
                  [v5 setConstantValue:&v120 type:49 withName:v84];
                  v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fc_filter%d", v77];
                  LOBYTE(v120) = v78[2];
                  [v85 UTF8String];
                  [v5 setConstantValue:&v120 type:49 withName:v85];
                  v86 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fc_color_inputs%d", v77];
                  LOBYTE(v120) = v78[10];
                  [v86 UTF8String];
                  [v5 setConstantValue:&v120 type:49 withName:v86];
                  v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fc_color_opcodes%d", v77];
                  LODWORD(v120) = *(v78 + 1);
                  [v87 UTF8String];
                  [v5 setConstantValue:&v120 type:52 withName:v87];
                  v88 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fc_color_opcodes_ext%d", v77];
                  LOWORD(v120) = *(v78 + 4);
                  [v88 UTF8String];
                  [v5 setConstantValue:&v120 type:50 withName:v88];
                  v89 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fc_color_opaque%d", v77];
                  LOBYTE(v120) = v78[11];
                  [v89 UTF8String];
                  [v5 setConstantValue:&v120 type:53 withName:v89];
                }

                v90 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fc_has_color_trc%d", v77];
                v91 = v90;
                v92 = &v3[2 * v77] - v77;
                if ((*(v3 + 17) & 4) != 0 || (*(v92 + 2) & 0xF8) == 0x38)
                {
                  v93 = 1;
                }

                else
                {
                  v94 = *(v92 + 3);
                  v95 = vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(vdupq_n_s32(v94), xmmword_183E21410), xmmword_183E21420)));
                  v93 = (v94 & 0x1F00000) == 7340032;
                  if (v95)
                  {
                    v93 = 1;
                  }
                }

                LOBYTE(v120) = v93;
                [v90 UTF8String];
                [v5 setConstantValue:&v120 type:53 withName:v91];
                v96 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fc_has_color_cube%d", v77];
                v97 = v96;
                if ((*(v3 + 17) & 4) != 0 || (v98 = *(v92 + 2), (v98 - 64) < 0x18) || (v99 = *(v92 + 3), (v99 & 0x1F) - 8 < 3) || ((v99 >> 5) & 0x1F) - 8 < 3 || ((v99 >> 10) & 0x1F) - 8 < 3 || ((v99 >> 15) & 0x1F) - 8 < 3)
                {
                  v100 = 1;
                }

                else
                {
                  v107 = v98 & 0xF8;
                  v100 = 1;
                  if (v107 != 152 && ((v99 >> 20) & 0x1F) - 8 >= 3 && (v99 & 0xF8000) != 0x98000 && (v99 & 0x7C00) != 0x4C00 && (v99 & 0x1F) != 0x13 && (v99 & 0x3E0) != 0x260)
                  {
                    v100 = (v99 & 0x1F00000) == 19922944;
                  }
                }

                LOBYTE(v120) = v100;
                [v96 UTF8String];
                [v5 setConstantValue:&v120 type:53 withName:v97];
                for (i = 0; i != 3; ++i)
                {
                  v102 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fc_has_image_%d%c", v77, i + 65];
                  v103 = v102;
                  v104 = *(v3 + 14);
                  v106 = 1;
                  if ((v104 & 0x4000000) == 0)
                  {
                    if ((v105 = v104 & 0x7F, v105 != 60) && v77 >= CA::OGL::tex_image_count[v105] || i >= CA::OGL::image_plane_count[*v92 & 0x3FLL] || v77 < CA::OGL::tex_image_count[v105] && (*v92 & 0x8000) == 0)
                    {
                      v106 = 0;
                    }
                  }

                  LOBYTE(v120) = v106;
                  [v102 UTF8String];
                  [v5 setConstantValue:&v120 type:53 withName:v103];
                }

                v79 = 0;
                v78 = &buf[16];
                v77 = 1;
              }

              while ((v115 & 1) != 0);
              goto LABEL_3;
            }

            v72 = (v3 + 3);
            while (*(v72 - 1) <= 7u && (*v72 & 0x1FFFFFF) == 0)
            {
              v72 = (v72 + 7);
              if (!--v71)
              {
                goto LABEL_88;
              }
            }
          }

          LOBYTE(v71) = 1;
          goto LABEL_88;
        }

        v53 = (v3 + 3);
        while (1)
        {
          v54 = *(v53 - 1) >> 3;
          if (v54 == 11)
          {
            break;
          }

          v55 = *v53;
          v56 = *v53 & 0x1F;
          if (v56 == 11)
          {
            break;
          }

          v57 = (v55 >> 5) & 0x1F;
          if (v57 == 11)
          {
            break;
          }

          v58 = (v55 >> 10) & 0x1F;
          if (v58 == 11)
          {
            break;
          }

          v59 = (v55 >> 15) & 0x1F;
          if (v59 == 11)
          {
            break;
          }

          v60 = (v55 >> 20) & 0x1F;
          v61 = 1;
          if (v60 != 12 && v59 != 12 && v58 != 12 && v57 != 12 && v56 != 12 && v54 != 12 && v60 != 11)
          {
            v61 = 0;
            v53 = (v53 + 7);
            if (--v52)
            {
              continue;
            }
          }

          goto LABEL_72;
        }
      }
    }

    v61 = 1;
    goto LABEL_72;
  }

  v5 = 0;
LABEL_3:
  v6 = 1;
  v3 = &dword_183AA6000;
  while (1)
  {
    v120 = 0;
    shader_function = CA::OGL::MetalContext::load_shader_function(this, this[493], v118, v119, v5, a3, &v120);
    if (shader_function)
    {
      break;
    }

    if (v5)
    {
      if ((v6 & 1) == 0)
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v108 = x_log_get_ogl_metal(void)::log;
        if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
        {
          v109 = [(__CFString *)v118 UTF8String];
          v5 = [v119 UTF8String];
          v110 = [objc_msgSend(v120 "localizedDescription")];
          *buf = 136315650;
          *&buf[4] = v109;
          *&buf[12] = 2080;
          *&buf[14] = v5;
          *&buf[22] = 2080;
          *&buf[24] = v110;
          _os_log_error_impl(&dword_183AA6000, v108, OS_LOG_TYPE_ERROR, "Metal failed to specialize fragment function\nfunction=%s spec=%s\n%s", buf, 0x20u);
        }

LABEL_138:
        bzero(buf, 0x7FFuLL);
        v114 = [(__CFString *)v118 UTF8String];
        v4 = [v119 UTF8String];
        snprintf(buf, 0x800uLL, "function=%s spec=%s\n%s", v114, v4, [objc_msgSend(v120 "localizedDescription")]);
        v124 = 0;
        strlen(buf);
        abort_with_payload();
        __break(1u);
        goto LABEL_139;
      }

      if (dyld_shared_cache_some_image_overridden())
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v8 = x_log_get_ogl_metal(void)::log;
        if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
        {
          v9 = [(__CFString *)v118 UTF8String];
          v10 = [v119 UTF8String];
          v11 = [objc_msgSend(v120 "localizedDescription")];
          *buf = 136315650;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v10;
          *&buf[22] = 2080;
          *&buf[24] = v11;
          v12 = v8;
          v13 = "Metal failed to specialize fragment function\nfunction=%s spec=%s\n%s";
LABEL_18:
          _os_log_error_impl(&dword_183AA6000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x20u);
        }
      }

      else
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v18 = x_log_get_ogl_metal(void)::log;
        if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_FAULT))
        {
          v19 = [(__CFString *)v118 UTF8String];
          v20 = [v119 UTF8String];
          v21 = [objc_msgSend(v120 "localizedDescription")];
          *buf = 136315650;
          *&buf[4] = v19;
          *&buf[12] = 2080;
          *&buf[14] = v20;
          *&buf[22] = 2080;
          *&buf[24] = v21;
          v22 = v18;
          v23 = "Metal failed to specialize fragment function\nfunction=%s spec=%s\n%s";
LABEL_28:
          _os_log_fault_impl(&dword_183AA6000, v22, OS_LOG_TYPE_FAULT, v23, buf, 0x20u);
        }
      }
    }

    else
    {
      if ((v6 & 1) == 0)
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v111 = x_log_get_ogl_metal(void)::log;
        if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
        {
          v112 = [(__CFString *)v118 UTF8String];
          v5 = [v119 UTF8String];
          v113 = [objc_msgSend(v120 "localizedDescription")];
          *buf = 136315650;
          *&buf[4] = v112;
          *&buf[12] = 2080;
          *&buf[14] = v5;
          *&buf[22] = 2080;
          *&buf[24] = v113;
          _os_log_error_impl(&dword_183AA6000, v111, OS_LOG_TYPE_ERROR, "Metal failed to load fragment function\nfunction=%s spec=%s\n%s", buf, 0x20u);
        }

        goto LABEL_138;
      }

      if (dyld_shared_cache_some_image_overridden())
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v14 = x_log_get_ogl_metal(void)::log;
        if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
        {
          v15 = [(__CFString *)v118 UTF8String];
          v16 = [v119 UTF8String];
          v17 = [objc_msgSend(v120 "localizedDescription")];
          *buf = 136315650;
          *&buf[4] = v15;
          *&buf[12] = 2080;
          *&buf[14] = v16;
          *&buf[22] = 2080;
          *&buf[24] = v17;
          v12 = v14;
          v13 = "Metal failed to load fragment function\nfunction=%s spec=%s\n%s";
          goto LABEL_18;
        }
      }

      else
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v24 = x_log_get_ogl_metal(void)::log;
        if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_FAULT))
        {
          v25 = [(__CFString *)v118 UTF8String];
          v26 = [v119 UTF8String];
          v27 = [objc_msgSend(v120 "localizedDescription")];
          *buf = 136315650;
          *&buf[4] = v25;
          *&buf[12] = 2080;
          *&buf[14] = v26;
          *&buf[22] = 2080;
          *&buf[24] = v27;
          v22 = v24;
          v23 = "Metal failed to load fragment function\nfunction=%s spec=%s\n%s";
          goto LABEL_28;
        }
      }
    }

    v6 = 0;
  }

  [shader_function setLabel:{objc_msgSend(@"com.apple.coreanimation.frag.", "stringByAppendingString:", v119)}];

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_malloc(malloc_zone, 0x10uLL, 0x165299FDuLL);
  if (result)
  {
    *result = shader_function;
    result[1] = 0;
  }

  return result;
}

void *CA::OGL::MetalContext::load_shader_function(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6, uint64_t a7)
{
  v35 = *MEMORY[0x1E69E9840];
  v13 = &unk_1EA851000;
  if ((BYTE13(xmmword_1ED4E97DC) & 1) == 0 && (*(a1 + 874) & 0x10) == 0)
  {
LABEL_13:
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    goto LABEL_15;
  }

  if (a5)
  {
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v14 = x_log_get_ogl_metal(void)::log;
    if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v30 = [a3 UTF8String];
      v31 = 2080;
      v32 = [a4 UTF8String];
      v13 = &unk_1EA851000;
      v33 = 2080;
      v34 = [objc_msgSend(a5 "description")];
      v15 = "Specializing shader function %s for %s with constant values %s\n";
      v16 = v14;
      v17 = 32;
LABEL_12:
      _os_log_impl(&dword_183AA6000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      goto LABEL_13;
    }
  }

  else
  {
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v18 = x_log_get_ogl_metal(void)::log;
    if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = [a3 UTF8String];
      v31 = 2080;
      v32 = [a4 UTF8String];
      v15 = "Loading shader function %s for %s\n";
      v16 = v18;
      v17 = 22;
      goto LABEL_12;
    }
  }

LABEL_15:
  v19 = os_signpost_id_generate(v13[253]);
  if (x_log_get_ogl_metal(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = x_log_get_ogl_metal(void)::log;
    if (os_signpost_enabled(x_log_get_ogl_metal(void)::log))
    {
      *buf = 138543874;
      v30 = a3;
      v31 = 2114;
      v32 = a4;
      v33 = 1026;
      LODWORD(v34) = a5 != 0;
      _os_signpost_emit_with_name_impl(&dword_183AA6000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v19, "CompileShader", "function=%{public, name=function}@ spec=%{public, name=spec}@ specialized=%{public, name=specialized}u", buf, 0x1Cu);
    }
  }

  v21 = [MEMORY[0x1E6974070] functionDescriptor];
  [v21 setName:a3];
  if (a5)
  {
    [v21 setSpecializedName:a4];
    [v21 setConstantValues:a5];
  }

  if (a6 && (byte_1ED4E9829 & 1) == 0 && (*(a1 + 874) & 0x30) == 0 && *(a1 + 3952))
  {
    v28 = *(a1 + 3952);
    [v21 setBinaryArchives:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v28, 1)}];
  }

  v22 = [a2 newFunctionWithDescriptor:v21 error:v27];
  if (a5)
  {
    v23 = a4;
  }

  else
  {
    v23 = a3;
  }

  [v22 setLabel:{objc_msgSend(@"com.apple.coreanimation.", "stringByAppendingString:", v23)}];
  if (x_log_get_ogl_metal(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v24 = x_log_get_ogl_metal(void)::log;
    if (os_signpost_enabled(x_log_get_ogl_metal(void)::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_183AA6000, v24, OS_SIGNPOST_INTERVAL_END, v19, "CompileShader", "", buf, 2u);
    }
  }

  return v22;
}

void *CA::Render::aligned_malloc(CA::Render *this, unint64_t *a2, void **a3)
{
  if (!this)
  {
    return 0;
  }

  v3 = *MEMORY[0x1E69E9AC8];
  if (*MEMORY[0x1E69E9AC8] < a3)
  {
    __assert_rtn("aligned_malloc", "render-image.cpp", 752, "align <= PAGE_SIZE");
  }

  v4 = this + v3 - 1;
  v5 = -v3;
  v6 = v4 & v5;
  if ((v4 & v5) == 0)
  {
    return 0;
  }

  v8 = mmap(0, v4 & v5, 3, 4098, 855638016, 0);
  if (v8 == -1)
  {
    return 0;
  }

  v9 = v8;
  *a2 = v6;
  v10 = CAGetStatsStruct(0);
  v11 = *(v10 + 1);
  v12 = *v10 + v6;
  *v10 = v12;
  if (v12 > v11)
  {
    *(v10 + 1) = v12;
  }

  return v9;
}

uint64_t __CARequiresColorMatching_block_invoke()
{
  result = dyld_program_sdk_at_least();
  CARequiresColorMatching::compat_mode = result ^ 1;
  return result;
}

uint64_t _CACImageQueueDidComposite(mach_port_t a1, mach_msg_timeout_t timeout, int a3, int a4, int a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 40404;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v6 = mach_msg(&msg, 17, 0x2Cu, 0, 0, timeout, 0);
  if ((v6 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v6;
}

uint64_t CA::OGL::Context::flatten_detached_layers_(uint64_t this)
{
  if ((*(this + 1384) & 0x200) != 0)
  {
    v1 = this;
    this = *(this + 600);
    if (this)
    {
      *(v1 + 1384) &= ~0x200u;
    }
  }

  return this;
}

void accel_init(void)
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = getenv("CA_ACCEL_BACKING");
  if (v0)
  {
    accel_defined = 1;
    accel_enabled = atoi(v0) != 0;
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v1 = x_log_get_utilities::log;
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_DEFAULT))
    {
      if (accel_enabled)
      {
        v2 = "";
      }

      else
      {
        v2 = "non-";
      }

      v3 = 136315138;
      v4 = v2;
      _os_log_impl(&dword_183AA6000, v1, OS_LOG_TYPE_DEFAULT, "forcing %saccelerated backing\n", &v3, 0xCu);
    }
  }
}

atomic_uint *CA::Render::PortalLayer::commit_layer(CA::Render::PortalLayer *this, CA::Render::Context *a2, CA::Render::Layer *a3, CA::Render::Handle *a4, int a5)
{
  v6 = a2;
  v44[1] = *MEMORY[0x1E69E9840];
  if ((a5 & 0x200000) == 0)
  {
    v8 = *(this + 7);
    if (v8 && (a2 = *(v8 + 48)) != 0)
    {
      v44[0] = 0;
      CA::Render::Handle::Dependence::retain_source_handle(v44, a2);
      v9 = v44[0];
      if (v44[0])
      {
        CA::Render::Handle::set_update_flags(v44[0], 24);
        *(v9 + 13) |= 3uLL;
        if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v9 + 16))(v9);
        }
      }
    }

    else
    {
      v10 = *(a4 + 2);
      if (v10)
      {
        v11 = *(v10 + 136);
        if (v11)
        {
          v12 = *v11;
          if (v12)
          {
            if (*(v12 + 12) == 42)
            {
              v13 = *(v12 + 56);
              if (v13)
              {
                a2 = *(v13 + 48);
                if (a2)
                {
                  v44[0] = 0;
                  CA::Render::Handle::Dependence::retain_source_handle(v44, a2);
                  v14 = v44[0];
                  if (v44[0])
                  {
                    *(v44[0] + 13) |= 0x18uLL;
                    if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
                    {
                      (*(*v14 + 16))(v14);
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

  result = *(this + 7);
  if ((a5 & 0x10000) != 0 && result)
  {
    *(this + 7) = 0;
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      (*(*result + 16))(result, a2, a3, a4);
    }

    result = *(this + 7);
  }

  if (result)
  {
    goto LABEL_22;
  }

  v23 = *(v6 + 4);
  v24 = *(this + 10);
  v25 = *(this + 3);
  v26 = *(this + 4);
  v27 = *(this + 3);
  os_unfair_lock_lock(&CA::Render::PortalState::_list_lock);
  v28 = CA::Render::PortalState::_list;
  if (!CA::Render::PortalState::_list)
  {
LABEL_38:
    os_unfair_lock_unlock(&CA::Render::PortalState::_list_lock);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v29 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xD8uLL, 0xDEEC3011uLL);
    v28 = v29;
    if (v29)
    {
      v29[26] = 0;
      *(v29 + 11) = 0u;
      *(v29 + 12) = 0u;
      *(v29 + 9) = 0u;
      *(v29 + 10) = 0u;
      *(v29 + 7) = 0u;
      *(v29 + 8) = 0u;
      *(v29 + 5) = 0u;
      *(v29 + 6) = 0u;
      *(v29 + 3) = 0u;
      *(v29 + 4) = 0u;
      *(v29 + 1) = 0u;
      *(v29 + 2) = 0u;
      *(v29 + 2) = 1;
      *(v29 + 3) = 43;
      ++dword_1ED4EAAE4;
      *v29 = &unk_1EF203E78;
    }

    *(v29 + 6) = v23;
    *(v29 + 7) = v24;
    v29[4] = v25;
    v29[5] = v26;
    if ((v27 & 0x2000) != 0)
    {
      *(v29 + 3) |= 0x200u;
    }

    v30 = CA::Render::Context::context_by_id(v24);
    if (v30)
    {
      v31 = *(v30 + 584);
      if ((v31 & 8) != 0)
      {
        *(v28 + 12) |= 0x400u;
        v31 = *(v30 + 584);
      }

      if ((v31 & 0x10) != 0)
      {
        *(v28 + 12) |= 0x800u;
      }

      if (atomic_fetch_add((v30 + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v30 + 16))(v30);
      }
    }

    v32 = CA::Render::Context::context_by_id(v23);
    if (v32)
    {
      if ((*(v32 + 584) & 0x20) != 0)
      {
        *(v28 + 12) |= 0x1000u;
      }

      if (atomic_fetch_add((v32 + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v32 + 16))(v32);
      }
    }

    if (v24 == v23)
    {
      if (!v26 || !v23 || v26 == v25)
      {
LABEL_80:
        os_unfair_lock_lock(&CA::Render::PortalState::_list_lock);
        *(v28 + 16) = CA::Render::PortalState::_list;
        CA::Render::PortalState::_list = v28;
        goto LABEL_81;
      }
    }

    else if (!v24 || !v26)
    {
      goto LABEL_80;
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v34 = malloc_type_zone_malloc(malloc_zone, 0x40uLL, 0x165299FDuLL);
    if (v34)
    {
      v34[2] = v24;
      v34[3] = v23;
      *(v34 + 2) = v26;
      *(v34 + 3) = v25;
      *(v34 + 4) = 0;
      *(v34 + 5) = 0;
      *v34 = &unk_1EF203FF0;
      *(v34 + 6) = v28;
      v34[14] = 0;
      *(v34 + 60) = 0;
      *(v28 + 48) = v34;
    }

    else
    {
      *(v28 + 48) = 0;
    }

    CA::Render::Handle::add_dependence(v34, 0);
    goto LABEL_80;
  }

  while (1)
  {
    if (*(v28 + 24) != v23 || *(v28 + 32) != v25 || *(v28 + 28) != v24 || *(v28 + 40) != v26)
    {
      goto LABEL_37;
    }

    if (atomic_fetch_add((v28 + 8), 1u))
    {
      break;
    }

    atomic_fetch_add((v28 + 8), 0xFFFFFFFF);
LABEL_37:
    v28 = *(v28 + 16);
    if (!v28)
    {
      goto LABEL_38;
    }
  }

  v33 = *(v28 + 48);
  if (v33)
  {
    CA::Render::Handle::add_dependence(v33, 1);
  }

LABEL_81:
  os_unfair_lock_unlock(&CA::Render::PortalState::_list_lock);
  result = *(this + 7);
  *(this + 7) = v28;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*result + 16))(result);
  }

LABEL_22:
  if ((a5 & 0x10000) != 0)
  {
    v16 = *(this + 7);
    if (v16)
    {
      v17 = *(v16 + 48);
      if (v17)
      {
        v44[0] = 0;
        result = CA::Render::Handle::Dependence::retain_source_handle(v44, v17);
        v18 = v44[0];
        if (v44[0])
        {
          *(v44[0] + 13) |= 0x1BuLL;
          v19 = (v18 + 8);
          if (!atomic_fetch_add(v18 + 2, 1u))
          {
            v18 = 0;
            atomic_fetch_add(v19, 0xFFFFFFFF);
          }

          v21 = *(v6 + 50);
          v20 = *(v6 + 51);
          if (v21 >= v20)
          {
            v35 = *(v6 + 49);
            v36 = v21 - v35;
            v37 = (v21 - v35) >> 3;
            v38 = v37 + 1;
            if ((v37 + 1) >> 61)
            {
              std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
            }

            v39 = v20 - v35;
            if (v39 >> 2 > v38)
            {
              v38 = v39 >> 2;
            }

            if (v39 >= 0x7FFFFFFFFFFFFFF8)
            {
              v40 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v40 = v38;
            }

            if (v40)
            {
              if (!(v40 >> 61))
              {
                operator new();
              }

              std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
            }

            v41 = (v21 - v35) >> 3;
            v42 = (8 * v37);
            v43 = (8 * v37 - 8 * v41);
            *v42 = v18;
            v22 = v42 + 1;
            memcpy(v43, v35, v36);
            *(v6 + 49) = v43;
            *(v6 + 50) = v22;
            *(v6 + 51) = 0;
            if (v35)
            {
              operator delete(v35);
            }
          }

          else
          {
            *v21 = v18;
            v22 = v21 + 8;
          }

          *(v6 + 50) = v22;
          result = v44[0];
          if (v44[0] && atomic_fetch_add(v44[0] + 2, 0xFFFFFFFF) == 1)
          {
            result = (*(*result + 16))(result);
          }
        }
      }
    }
  }

  *(this + 2) = v6;
  return result;
}

CA::Render::Handle *CA::Render::MatchAnimation::was_removed(CA::Render::MatchAnimation *this, CA::Render::Handle *a2)
{
  result = *(this + 16);
  if (result)
  {
    CA::Render::Handle::remove_dependence(result, a2);
    result = *(this + 16);
    if (result)
    {
      result = (*(*result + 16))(result);
    }

    *(this + 16) = 0;
  }

  v5 = *(this + 3);
  if ((v5 & 0x1000) != 0)
  {
    *(a2 + 13) |= 8uLL;
    v5 = *(this + 3);
  }

  if ((v5 & 0x2000) != 0)
  {
    *(a2 + 13) |= 0x10uLL;
  }

  return result;
}

uint64_t CA::Render::Handle::remove_dependence(CA::Render::Handle *this, CA::Render::Handle::Dependence *a2)
{
  v3 = CA::Render::Context::context_by_id(*(this + 2));
  result = *(this + 3);
  if (*(this + 2) == result)
  {
    if (!v3)
    {
      return result;
    }

    v5 = v3;
    if (!atomic_fetch_add((v3 + 8), 1u))
    {
      v5 = 0;
      atomic_fetch_add((v3 + 8), 0xFFFFFFFF);
    }
  }

  else
  {
    result = CA::Render::Context::context_by_id(result);
    v5 = result;
    if (!v3)
    {
      if (!result)
      {
        return result;
      }

      v12 = 1;
      goto LABEL_18;
    }
  }

  pthread_mutex_lock((v3 + 72));
  v6 = CA::Render::Context::lookup_handle(v3, *(this + 2), 0, 0, 0);
  if (v6)
  {
    v8 = v6;
    v10 = (v6 + 56);
    v9 = *(v6 + 7);
    if (v9)
    {
      if (v9 == this)
      {
LABEL_12:
        *v10 = *(v9 + 4);
      }

      else
      {
        while (1)
        {
          v11 = v9;
          v9 = *(v9 + 4);
          if (!v9)
          {
            break;
          }

          if (v9 == this)
          {
            v10 = (v11 + 32);
            goto LABEL_12;
          }
        }
      }
    }

    CA::Render::Handle::update_container_state(v6, v7);
    *(v8 + 13) |= 0x1BuLL;
  }

  result = pthread_mutex_unlock((v3 + 72));
  if (!v5)
  {
    goto LABEL_29;
  }

  v12 = 0;
LABEL_18:
  pthread_mutex_lock((v5 + 72));
  v13 = CA::Render::Context::lookup_handle(v5, *(this + 3), 0, 0, 0);
  if (v13)
  {
    v15 = v13;
    v17 = (v13 + 64);
    v16 = *(v13 + 8);
    if (v16)
    {
      if (v16 == this)
      {
LABEL_24:
        *v17 = *(v16 + 5);
      }

      else
      {
        while (1)
        {
          v18 = v16;
          v16 = *(v16 + 5);
          if (!v16)
          {
            break;
          }

          if (v16 == this)
          {
            v17 = (v18 + 40);
            goto LABEL_24;
          }
        }
      }
    }

    CA::Render::Handle::update_container_state(v13, v14);
    *(v15 + 13) |= 0x1BuLL;
  }

  result = pthread_mutex_unlock((v5 + 72));
  if (atomic_fetch_add((v5 + 8), 0xFFFFFFFF) == 1)
  {
    result = (*(*v5 + 16))(v5);
  }

  if ((v12 & 1) == 0)
  {
LABEL_29:
    if (atomic_fetch_add((v3 + 8), 0xFFFFFFFF) == 1)
    {
      v19 = *(*v3 + 16);

      return v19(v3);
    }
  }

  return result;
}

void CA::Render::MatchPropertyAnimation::~MatchPropertyAnimation(CA::Render **this, void **a2)
{
  --dword_1ED4EAABC;
  *this = &unk_1EF1FEBD8;
  CA::Render::key_path_free(this[15], a2);
  CA::Render::Animation::~Animation(this, v3);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v4 = malloc_zone;

  malloc_zone_free(v4, this);
}

{
  --dword_1ED4EAABC;
  *this = &unk_1EF1FEBD8;
  CA::Render::key_path_free(this[15], a2);

  CA::Render::Animation::~Animation(this, v3);
}

uint64_t __CADeviceSupportsASTC_block_invoke()
{
  result = MGGetBoolAnswer();
  CADeviceSupportsASTC::supports_astc = result;
  return result;
}

void CA::Render::MatchPropertyDependence::~MatchPropertyDependence(CA::Render::MatchPropertyDependence *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

void ___ZN2CA6RenderL16initialize_typesEv_block_invoke()
{
  CA::Render::string_type = CFStringGetTypeID();
  CA::Render::array_type = CFArrayGetTypeID();
  CFDictionaryGetTypeID();
  CA::Render::number_type = CFNumberGetTypeID();
  CA::Render::BOOL_type = CFBooleanGetTypeID();
  CFDataGetTypeID();
  CA::Render::color_type = CGColorGetTypeID();
  CA::Render::image_type = CGImageGetTypeID();
  CA::Render::path_type = CGPathGetTypeID();
  if (CABackingStoreGetTypeID::once[0] != -1)
  {
    dispatch_once(CABackingStoreGetTypeID::once, &__block_literal_global_1020);
  }

  CA::Render::backing_type = CABackingStoreGetTypeID::type;
  if (CAImageQueueGetTypeID::once[0] != -1)
  {
    dispatch_once(CAImageQueueGetTypeID::once, &__block_literal_global_44_15357);
  }

  CA::Render::queue_type = CAImageQueueGetTypeID::type;
  if (CAImageProviderGetTypeID::once[0] != -1)
  {
    dispatch_once(CAImageProviderGetTypeID::once, &__block_literal_global_5_9450);
  }

  CA::Render::provider_type = CAImageProviderGetTypeID::type;
  if (CARenderObjectGetTypeID::once[0] != -1)
  {
    dispatch_once(CARenderObjectGetTypeID::once, &__block_literal_global_6);
  }

  CA::Render::render_object_type = CARenderObjectGetTypeID::type;
  CA::Render::surface_type = IOSurfaceGetTypeID();
  if (CAMachPortGetTypeID::once[0] != -1)
  {
    dispatch_once(CAMachPortGetTypeID::once, &__block_literal_global_6212);
  }

  CA::Render::machport_type = CAMachPortGetTypeID::type;
  CA::Render::cvpixelbuffer_type = CVPixelBufferGetTypeID();
  if (CAIOSurfaceGetTypeID::once != -1)
  {
    dispatch_once(&CAIOSurfaceGetTypeID::once, &__block_literal_global_2576);
  }

  CA::Render::caiosurface_type = CAIOSurfaceGetTypeID::type;
}

void *CA::Render::GainMapLayer::encode(CA::Render::GainMapLayer *this, CA::Render::Encoder *a2)
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

  return CA::Render::Encoder::encode_sanity_check(a2);
}

uint64_t __CAImageProviderGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CAImageProviderGetTypeID::type = result;
  return result;
}

void CA::Render::PortalLayer::~PortalLayer(CA::Render::PortalLayer *this, const CA::Render::Object *a2)
{
  *this = &unk_1EF203EE8;
  v3 = *(this + 7);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 6);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  --dword_1ED4EAAE0;
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
  *this = &unk_1EF203EE8;
  v3 = *(this + 7);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 6);
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  --dword_1ED4EAAE0;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

void CA::Render::GainMapLayer::~GainMapLayer(CA::Render::GainMapLayer *this, const CA::Render::Object *a2)
{
  --dword_1ED4EAA84;
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
  --dword_1ED4EAA84;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

uint64_t __CARenderObjectGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CARenderObjectGetTypeID::type = result;
  return result;
}

void CA::Render::PortalState::~PortalState(CA::Render::PortalState *this)
{
  CA::Render::PortalState::~PortalState(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF203E78;
  os_unfair_lock_lock(&CA::Render::PortalState::_list_lock);
  v2 = CA::Render::PortalState::_list;
  if (CA::Render::PortalState::_list)
  {
    if (CA::Render::PortalState::_list == this)
    {
      v4 = &CA::Render::PortalState::_list;
LABEL_7:
      *v4 = *(v2 + 2);
    }

    else
    {
      while (1)
      {
        v3 = v2;
        v2 = *(v2 + 2);
        if (!v2)
        {
          break;
        }

        if (v2 == this)
        {
          v4 = (v3 + 16);
          goto LABEL_7;
        }
      }
    }
  }

  os_unfair_lock_unlock(&CA::Render::PortalState::_list_lock);
  if (*(this + 6))
  {
    v6 = CA::Render::Context::context_by_id(*(this + 6));
    if (v6 || (v6 = CA::Render::Context::context_by_id(*(this + 7))) != 0)
    {
      v7 = v6;
      v8 = *(this + 6);
      os_unfair_lock_lock(v6 + 104);
      (*(*v8 + 24))(v8);
      v10 = *&v7[108]._os_unfair_lock_opaque;
      v9 = *&v7[110]._os_unfair_lock_opaque;
      if (v10 >= v9)
      {
        v12 = *&v7[106]._os_unfair_lock_opaque;
        v13 = v10 - v12;
        v14 = (v10 - v12) >> 3;
        v15 = v14 + 1;
        if ((v14 + 1) >> 61)
        {
          std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
        }

        v16 = v9 - v12;
        if (v16 >> 2 > v15)
        {
          v15 = v16 >> 2;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          if (!(v17 >> 61))
          {
            operator new();
          }

          std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
        }

        v18 = (v10 - v12) >> 3;
        v19 = (8 * v14);
        v20 = (8 * v14 - 8 * v18);
        *v19 = v8;
        v11 = v19 + 1;
        memcpy(v20, v12, v13);
        *&v7[106]._os_unfair_lock_opaque = v20;
        *&v7[108]._os_unfair_lock_opaque = v11;
        *&v7[110]._os_unfair_lock_opaque = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v10 = v8;
        v11 = v10 + 8;
      }

      *&v7[108]._os_unfair_lock_opaque = v11;
      os_unfair_lock_unlock(v7 + 104);
      *(this + 6) = 0;
      if (atomic_fetch_add(&v7[2], 0xFFFFFFFF) == 1)
      {
        (*(*&v7->_os_unfair_lock_opaque + 16))(v7);
      }
    }

    else
    {
      v21 = *(this + 6);
      if (v21)
      {
        (*(*v21 + 16))(v21);
      }

      *(this + 6) = 0;
    }
  }

  v22 = *(this + 3);
  if ((v22 & 0x200) != 0)
  {
    os_unfair_lock_lock(&CA::Render::_cross_display_sources_lock);
    v23 = CA::Render::_cross_display_sources;
    v24 = qword_1EA84F508;
    while (v23 != qword_1EA84F508 && *v23 != this)
    {
      v23 += 160;
    }

    if (v23 == qword_1EA84F508)
    {
      os_unfair_lock_unlock(&CA::Render::_cross_display_sources_lock);
    }

    else
    {
      v25 = *(v23 + 1);
      *v23 = *(qword_1EA84F508 - 160);
      v26 = *(v24 - 128);
      v27 = *(v24 - 112);
      v28 = *(v24 - 96);
      *(v23 + 1) = *(v24 - 144);
      *(v23 + 2) = v26;
      *(v23 + 3) = v27;
      *(v23 + 4) = v28;
      v29 = *(v24 - 64);
      v30 = *(v24 - 48);
      v31 = *(v24 - 32);
      *(v23 + 5) = *(v24 - 80);
      *(v23 + 6) = v29;
      *(v23 + 7) = v30;
      *(v23 + 8) = v31;
      *(v23 + 9) = *(v24 - 16);
      if (qword_1EA84F508 <= CA::Render::_cross_display_sources)
      {
        __assert_rtn("pop_back", "x-small-vector.h", 420, "_end > _begin && pop_back on empty container");
      }

      qword_1EA84F508 -= 160;
      os_unfair_lock_unlock(&CA::Render::_cross_display_sources_lock);
      if (v25 && atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v25 + 16))(v25);
      }
    }

    v22 = *(this + 3);
  }

  --dword_1ED4EAAE4;
  *this = &unk_1EF1F6D08;
  if (v22 < 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, v5);
  }
}

uint64_t __CAMachPortGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CAMachPortGetTypeID::type = result;
  return result;
}

void CA::Render::PortalState::Dependence::~Dependence(CA::Render::PortalState::Dependence *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

uint64_t __CAIOSurfaceGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CAIOSurfaceGetTypeID::type = result;
  return result;
}

uint64_t __CADeviceUseCIF10_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = MGGetBoolAnswer();
  CADeviceUseCIF10::enable_cif10 = result;
  if (result)
  {
    keyExistsAndHasValidFormat = 0;
    result = CFPreferencesGetAppBooleanValue(@"CAEnableDeepFramebuffer", *MEMORY[0x1E695E8A8], &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      CADeviceUseCIF10::enable_cif10 = result != 0;
    }
  }

  return result;
}

const void **X::CFRef<CGColorSpace *>::operator=(const void **a1, CFTypeRef cf)
{
  v3 = *a1;
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *a1 = cf;
    if (cf)
    {
      CFRetain(cf);
    }
  }

  return a1;
}

void CA::Render::add_filter(CA::Render *this, uint64_t a2, const CA::Render::FilterSubclass *a3)
{
  v4 = this;
  os_unfair_lock_lock(&CA::Render::filter_lock);
  v5 = CA::Render::filter_table;
  if (!CA::Render::filter_table)
  {
    v5 = x_hash_table_new_(0, 0, 0, 0, 0, 0);
    CA::Render::filter_table = v5;
  }

  hash_table_modify(v5, v4, a2, 0);

  os_unfair_lock_unlock(&CA::Render::filter_lock);
}

_DWORD *CA::ColorProgram::Program::color_program(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, float a8, float a9, float a10, float a11, float a12)
{
  v64 = *MEMORY[0x1E69E9840];
  v60 = 0;
  v61 = &v60;
  v62 = 0x2000000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2000000000;
  v59 = 0;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x2000000000;
  v55 = 0;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2000000000;
  v53[3] = 0;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2000000000;
  v52 = 0;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2000000000;
  v50 = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2000000000;
  v48[3] = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2000000000;
  v47 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2000000000;
  v45[3] = 0;
  v44 = MEMORY[0x1E69E9820];
  v42 = MEMORY[0x1E69E9820];
  v43 = a6;
  v41 = MEMORY[0x1E69E9820];
  v38 = MEMORY[0x1E69E9820];
  v39 = __PAIR64__(LODWORD(a8), a6);
  v40 = __PAIR64__(a3, LODWORD(a12));
  if ((CGColorConversionInfoIterateFunctionsWithCallbacks() & 1) == 0)
  {
    v25 = v61[3];
    if (v25)
    {
      CA::ColorProgram::Program::~Program(v25);
      v25 = MEMORY[0x1865EA9A0](v26, 0x10F0C4033556A7DLL, v27, v28, v29, v30, v31, v32, v38, 0x40000000, ___ZN2CA12ColorProgram7Program13color_programEPK21CGColorConversionInfoP12CGColorSpacei28CGColorConversionIterateTypebijfffffRb_block_invoke_2, &unk_1E6DF60A0, v53, v48, v46, v45, &v56, v54, &v60, v51, v39, v40, v41, 0x40000000, ___ZN2CA12ColorProgram7Program13color_programEPK21CGColorConversionInfoP12CGColorSpacei28CGColorConversionIterateTypebijfffffRb_block_invoke_34, &unk_1E6DF6078, v51, v53, &v56, v54, v42, 0x40000000, ___ZN2CA12ColorProgram7Program13color_programEPK21CGColorConversionInfoP12CGColorSpacei28CGColorConversionIterateTypebijfffffRb_block_invoke_31, &unk_1E6DF6050, v51, v53, &v60, v49, &v56, v54, v43, v44, 0x40000000, ___ZN2CA12ColorProgram7Program13color_programEPK21CGColorConversionInfoP12CGColorSpacei28CGColorConversionIterateTypebijfffffRb_block_invoke, &unk_1E6DF6028);
    }

    if (a3 == 1)
    {
      v33 = a1;
      v34 = a2;
      v35 = 2;
    }

    else
    {
      if (a3)
      {
        *a7 = 1;
        v36 = CA::ColorProgram::Program::null_program(v25);
        goto LABEL_11;
      }

      v33 = a1;
      v34 = a2;
      v35 = 1;
    }

    v36 = CA::ColorProgram::Program::color_program(v33, v34, v35, a4, a5, a6, a7, a8, a9, a10, a11, a12);
LABEL_11:
    v24 = v36;
    goto LABEL_12;
  }

  v24 = v61[3];
  v24[9] = *(v57 + 6);
LABEL_12:
  _Block_object_dispose(v45, 8);
  _Block_object_dispose(v46, 8);
  _Block_object_dispose(v48, 8);
  _Block_object_dispose(v49, 8);
  _Block_object_dispose(v51, 8);
  _Block_object_dispose(v53, 8);
  _Block_object_dispose(v54, 8);
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
  return v24;
}

_DWORD *CA::Render::Shmem::new_shmem(unint64_t this, char *a2, int a3, uint64_t (*a4)(CA::Render *this, void *a2, void *a3), void (*a5)(const void *, void *), void *a6)
{
  result = 0;
  v30 = *MEMORY[0x1E69E9840];
  if (this && a2)
  {
    v11 = a3 & 0xFFFFFFCB;
    if ((a3 & 3) != 0)
    {
LABEL_4:
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x38uLL, 0xDEEC3011uLL);
      if (result)
      {
        result[2] = 1;
        result[3] = (v11 << 8) | 0x34;
        ++dword_1ED4EAB08;
        *result = &unk_1EF1F5090;
        *(result + 2) = a2;
        *(result + 3) = this;
        result[8] = 0;
        *(result + 5) = a4;
        *(result + 6) = a5;
        result[9] = 0;
        if (a4 == CA::Render::release_deallocate && !a5)
        {
          *(result + 6) = result;
        }
      }
    }

    else
    {
      v25 = 0;
      *info = 0u;
      v24 = 0u;
      size = 0;
      v12 = &a2[this];
      if (__CFADD__(this, a2))
      {
        if (x_log_get_render(void)::once[0] != -1)
        {
          dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
        }

        v13 = x_log_get_render(void)::log;
        if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v27 = this;
          v28 = 2048;
          v29 = a2;
          v14 = "Data %p with size %zu underflow";
LABEL_32:
          _os_log_error_impl(&dword_183AA6000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x16u);
        }
      }

      else
      {
        address = ~*MEMORY[0x1E69E9AB8] & this;
        object_name = 0;
        infoCnt = 9;
        v15 = MEMORY[0x1E69E9A60];
        while (1)
        {
          v16 = mach_vm_region(*v15, &address, &size, 9, info, &infoCnt, &object_name);
          if (object_name)
          {
            mach_port_deallocate(*v15, object_name);
            object_name = 0;
          }

          if (v16)
          {
            break;
          }

          v17 = info[1] & 3;
          address += size;
          if (v12 <= address || v17 != 1)
          {
            if (v17 == 1)
            {
              v11 |= 2u;
            }

            goto LABEL_4;
          }
        }

        if (x_log_get_render(void)::once[0] != -1)
        {
          dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
        }

        v13 = x_log_get_render(void)::log;
        if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v27 = this;
          v28 = 2048;
          v29 = a2;
          v14 = "failed to query region %p (%zu bytes)\n";
          goto LABEL_32;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t ___ZN2CA12ColorProgram7Program13color_programEPK21CGColorConversionInfoP12CGColorSpacei28CGColorConversionIterateTypebijfffffRb_block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (BYTE13(xmmword_1ED4E982C) == 1)
  {
    CA::ColorProgram::print_CGColorConverterInfo(a2);
  }

  *(*(*(a1 + 32) + 8) + 24) = *(a2 + 12);
  if (*(a2 + 4) > 6)
  {
    if (x_log_get_color(void)::once != -1)
    {
      dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
    }

    v4 = x_log_get_color(void)::log;
    result = os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_INFO);
    if (result)
    {
      *buf = 67109120;
      *&buf[4] = 6;
      _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_INFO, "Color matching limited to %d-stage format (TRC -> ToneMap --> NxM/LUT -> TRC), falling back to cube LUT\n", buf, 8u);
      return 0;
    }

    return result;
  }

  if (*(a2 + 28) >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v25 = 0;
      *buf = 0u;
      v24 = 0u;
      CGColorTRCGetFunction();
      v9 = CGColorTRCGetGammaID();
      if ((*(a1 + 72) & 0x80) != 0)
      {
        if (v9 == 1)
        {
          v10 = 0xCu;
LABEL_17:
          v7 += CA::ColorProgram::kOpcodeParamCount[v10];
          if (*buf == 5)
          {
            v11 = *(*(a1 + 40) + 8);
            v12 = *(v11 + 24);
            if (*&buf[4] >= v12)
            {
              LODWORD(v12) = *&buf[4];
            }

            *(v11 + 24) = v12;
            ++v8;
          }

          goto LABEL_21;
        }

        if (v9 == 4)
        {
          v10 = 0xBu;
          goto LABEL_17;
        }
      }

      if (*buf <= 9u)
      {
        v10 = dword_183E2FAC4[*buf];
        goto LABEL_17;
      }

LABEL_21:
      if (*(a2 + 28) <= ++v6)
      {
        goto LABEL_24;
      }
    }
  }

  v8 = 0;
  v7 = 0;
LABEL_24:
  v13 = *(a2 + 36);
  if (v13 <= 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = 4 * v13;
  }

  v15 = v7 + v14;
  if (*(a2 + 44) > 0)
  {
    v16 = 0;
    do
    {
      v25 = 0;
      *buf = 0u;
      v24 = 0u;
      CGColorNxMTransformGetTransform();
      v15 += CA::ColorProgram::kOpcodeParamCount[0];
      ++v16;
    }

    while (*(a2 + 44) > v16);
  }

  result = malloc_type_calloc(1uLL, 16 * v15 + 136, 0x10F004033556A7DuLL);
  if (result)
  {
    *(result + 36) = *(*(*(a1 + 56) + 8) + 24);
    *(*(*(a1 + 48) + 8) + 24) = result;
    v17 = *(*(*(a1 + 48) + 8) + 24);
    if (!v17)
    {
      return 0;
    }

    *(v17 + 40) = v15;
    v18 = *(*(*(a1 + 48) + 8) + 24);
    *(v18 + 48) = v18 + 136;
    *(*(*(*(a1 + 48) + 8) + 24) + 56) = v8;
    *(*(*(*(a1 + 48) + 8) + 24) + 108) = *(a1 + 76);
    *(*(*(*(a1 + 48) + 8) + 24) + 120) = *(a1 + 80);
    *(*(*(*(a1 + 48) + 8) + 24) + 124) = *(a1 + 84);
    *(*(*(*(a1 + 48) + 8) + 24) + 128) = *(a1 + 88);
    if (v8)
    {
      *(*(*(*(a1 + 48) + 8) + 24) + 72) = malloc_type_calloc(4uLL, v8, 0x100004052888210uLL);
      if (*(a1 + 92))
      {
        v19 = 2;
      }

      else
      {
        v19 = 1;
      }

      v22 = (((*(*(*(a1 + 40) + 8) + 24) << v19) + 31) & 0xFFFFFFFE0);
      v20 = malloc_type_calloc(v8, v22, 0x1000040BDFB0063uLL);
      if (*(a2 + 28) >= 1)
      {
        v21 = 0;
        do
        {
          v25 = 0;
          *buf = 0u;
          v24 = 0u;
          CGColorTRCGetFunction();
          ++v21;
        }

        while (*(a2 + 28) > v21);
      }

      *(*(*(*(a1 + 48) + 8) + 24) + 64) = CA::Render::Image::new_image(0x17, *(*(*(a1 + 40) + 8) + 24), v8, 1u, 0, v20, &v22, CA::ColorProgram::free_lut_data, v20, v22);
    }

    *(*(*(a1 + 64) + 8) + 24) = *(*(*(*(a1 + 48) + 8) + 24) + 48);
    return 1;
  }

  return result;
}

void *std::__deque_iterator<std::pair<unsigned long long,unsigned long long>,std::pair<unsigned long long,unsigned long long>*,std::pair<unsigned long long,unsigned long long>&,std::pair<unsigned long long,unsigned long long>**,long,256l>::operator+[abi:nn200100](void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3 + ((a2 - *result) >> 4);
    if (v3 < 1)
    {
      result -= (255 - v3) >> 8;
    }

    else
    {
      result += v3 >> 8;
    }
  }

  return result;
}

uint64_t ___ZN2CA6Render22cacftype_from_cfobjectEPKv_block_invoke()
{
  CA::Render::cacftype_from_cfobject(void const*)::cfTypeIds[0] = 0;
  *algn_1ED4E5618 = 0;
  qword_1ED4E5620 = CFStringGetTypeID();
  qword_1ED4E5628 = CFNumberGetTypeID();
  qword_1ED4E5630 = CFBooleanGetTypeID();
  qword_1ED4E5638 = CFDataGetTypeID();
  qword_1ED4E5640 = CFArrayGetTypeID();
  qword_1ED4E5648 = CFDictionaryGetTypeID();
  qword_1ED4E5650 = CGColorSpaceGetTypeID();
  qword_1ED4E5658 = CGImageGetTypeID();
  qword_1ED4E5660 = CGColorGetTypeID();
  qword_1ED4E5668 = IOSurfaceGetTypeID();
  qword_1ED4E5678 = CGPathGetTypeID();
  v0 = objc_opt_new();
  CA::Render::cacftype_from_cfobject(void const*)::ns_object_type_id = CFGetTypeID(v0);
  result = objc_opt_class();
  CA::Render::cacftype_from_cfobject(void const*)::ns_value_class = result;
  return result;
}

void *CA::Render::encode_volatile(CA::Render *this, const CA::Render::Object *a2, CA::Render::Encoder *a3, void *a4)
{
  v5 = a2;
  if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
  {
    dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
  }

  if (this)
  {
    v7 = this + CA::Render::_render_id_slide;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a3 + 4);
  if ((v8 + 1) > *(a3 + 5))
  {
    CA::Render::Encoder::grow(a3, 1);
    v8 = *(a3 + 4);
  }

  *(a3 + 4) = v8 + 1;
  *v8 = 17;
  v9 = *(a3 + 4);
  if ((v9 + 1) > *(a3 + 5))
  {
    CA::Render::Encoder::grow(a3, 8);
    v9 = *(a3 + 4);
  }

  *v9 = v7;
  v10 = *(a3 + 4);
  v11 = *(a3 + 5);
  v12 = (v10 + 8);
  *(a3 + 4) = v10 + 8;
  if (v10 + 12 > v11)
  {
    CA::Render::Encoder::grow(a3, 4);
    v12 = *(a3 + 4);
  }

  *v12 = v5;
  *(a3 + 4) += 4;

  return CA::Render::Encoder::encode_sanity_check(a3);
}

__CFString *NSStringFromCADisplayState(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E6DF6248[a1];
  }
}

CA::Render::InterpolatedFunction *CA::Render::InterpolatedFunction::InterpolatedFunction(CA::Render::InterpolatedFunction *this, unint64_t a2, int a3, int a4)
{
  *(this + 2) = 1;
  ++dword_1ED4EAA80;
  *this = &unk_1EF1FBE88;
  *(this + 2) = a2;
  *(this + 6) = a3;
  *(this + 7) = a2 + -1.0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 3) = (a4 << 8) | 0x12;
  CA::Render::InterpolatedFunction::allocate_storage(this);
  return this;
}

void sub_183BBB3EC(_Unwind_Exception *exception_object, const CA::Render::Object *a2)
{
  v4 = v3;
  --*(v4 + 2688);
  *v2 = &unk_1EF1F6D08;
  if ((*(v2 + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void CA::Render::Gradient::set_colors(CA::Render::Gradient *this, CFArrayRef theArray, CGColorSpace *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(this + 4))
  {
    Count = CFArrayGetCount(theArray);
    if (*(this + 2) >= Count)
    {
      v7 = Count;
    }

    else
    {
      v7 = *(this + 2);
    }

    TypeID = CGColorGetTypeID();
    if (v7)
    {
      v9 = TypeID;
      v10 = 0;
      v11 = 0;
      LOBYTE(v12) = 1;
      do
      {
        v13 = (*(this + 4) + v10);
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
        if (CFGetTypeID(ValueAtIndex) == v9)
        {
          v18 = 0u;
          v19 = 0u;
          CA_CGColorGetRGBComponents(ValueAtIndex, a3, v18.f64);
          *v13 = vcvt_hight_f32_f64(vcvt_f32_f64(v18), v19);
          CGColorGetContentHeadroom();
          v13[1].i32[0] = v15;
          v12 = (v13->f32[3] >= 1.0) & v12;
        }

        else
        {
          v12 = 0;
          v13->i64[0] = 0;
          v13->i64[1] = 0;
          v13[1].i32[0] = 0;
        }

        ++v11;
        v10 += 20;
      }

      while (v7 != v11);
      v16 = *(this + 2);
      if (v7 >= v16)
      {
        if (v12)
        {
          goto LABEL_17;
        }

LABEL_16:
        v17 = *(this + 3) & 0xFFFFF7FF;
LABEL_18:
        *(this + 3) = v17;
        return;
      }
    }

    else
    {
      v16 = *(this + 2);
      if (!v16)
      {
LABEL_17:
        v17 = *(this + 3) | 0x800;
        goto LABEL_18;
      }
    }

    bzero((*(this + 4) + 20 * v7), 20 * (v16 - v7));
    goto LABEL_16;
  }
}

uint64_t CARetainColorTransform(CGColorSpace *a1)
{
  os_unfair_lock_lock(&transform_lock);
  v2 = transform_list;
  if (transform_list)
  {
    while (!CGColorSpaceEqualToColorSpace())
    {
      v2 = *(v2 + 8);
      if (!v2)
      {
        v3 = transform_list;
        if (transform_list)
        {
          v4 = 0;
          v5 = transform_list;
          do
          {
            ++v4;
            v5 = *(v5 + 8);
          }

          while (v5);
          if (v4 >= 3)
          {
            v6 = v4 + 1;
            do
            {
              v7 = *v3;
              CGColorSpaceRelease(**v3);
              CGColorTransformRelease();
              x_list_remove_head(v7);
              v3 = x_list_remove_head(transform_list);
              transform_list = v3;
              --v6;
            }

            while (v6 > 3);
          }
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v8 = MEMORY[0x1865E7E20](a1, 0);
    if (v8)
    {
      v9 = transform_list;
      v10 = CGColorSpaceRetain(a1);
      v11 = x_list_prepend(v8, v10);
      if (v9)
      {
        v12 = v9;
        do
        {
          v13 = v12;
          v12 = v12[1];
        }

        while (v12);
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v14 = malloc_type_zone_malloc(malloc_zone, 0x10uLL, 0xA0040BD48D6D6uLL);
        *v14 = v11;
        v14[1] = 0;
        v13[1] = v14;
      }

      else
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v9 = malloc_type_zone_malloc(malloc_zone, 0x10uLL, 0xA0040BD48D6D6uLL);
        *v9 = v11;
        v9[1] = 0;
      }

      transform_list = v9;
    }
  }

  v15 = CGColorTransformRetain();
  os_unfair_lock_unlock(&transform_lock);
  return v15;
}

void CA::Render::InterpolatedFunction::set_locations(CA::Render::InterpolatedFunction *this, CFArrayRef theArray)
{
  if (*(this + 5))
  {
    Count = CFArrayGetCount(theArray);
    v5 = *(this + 2);
    if (v5 >= Count)
    {
      v6 = Count;
    }

    else
    {
      v6 = *(this + 2);
    }

    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
        CFNumberGetValue(ValueAtIndex, kCFNumberFloatType, (*(this + 5) + v7));
        if (v8 && *(*(this + 5) + v7) < *(*(this + 5) + v7 - 4))
        {
          v9 = 0;
        }

        ++v8;
        v7 += 4;
      }

      while (v6 != v8);
      v5 = *(this + 2);
      if (v9)
      {
        v11 = 256;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 256;
    }

    v12 = v5 > v6;
    v13 = v5 - v6;
    if (v12)
    {
      memset_pattern16((*(this + 5) + 4 * v6), &unk_183E21910, 4 * v13);
    }

    *(this + 3) = *(this + 3) & 0xFFFFFCFF | v11 | 0x200;
  }
}

void *CA::Render::PortalLayer::encode(const CA::Render::Object **this, CA::Render::Encoder *a2)
{
  CA::Render::Object::encode(this, a2);
  v4 = this[3];
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
  v9 = this[4];
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
  v13 = *(this + 10);
  if (v10 + 12 > v11)
  {
    CA::Render::Encoder::grow(a2, 4);
    v12 = *(a2 + 4);
  }

  *v12 = v13;
  v14 = *(a2 + 4);
  v15 = *(a2 + 5);
  v16 = (v14 + 4);
  *(a2 + 4) = v14 + 4;
  v17 = *(this + 44);
  if (v14 + 5 > v15)
  {
    CA::Render::Encoder::grow(a2, 1);
    v16 = *(a2 + 4);
  }

  *(a2 + 4) = v16 + 1;
  *v16 = v17;
  CA::Render::Encoder::encode_object(a2, this[6]);

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void *CA::Render::GradientLayer::encode(CA::Render::GradientLayer *this, CA::Render::Encoder *a2)
{
  CA::Render::Object::encode(this, a2);
  CA::Render::InterpolatedFunction::encode((this + 16), a2);
  v4 = *(a2 + 4);
  if ((v4 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 16);
    v4 = *(a2 + 4);
  }

  *v4 = *(this + 72);
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  v7 = (v5 + 16);
  *(a2 + 4) = v5 + 16;
  if (v5 + 32 > v6)
  {
    CA::Render::Encoder::grow(a2, 16);
    v7 = *(a2 + 4);
  }

  *v7 = *(this + 88);
  *(a2 + 4) += 16;
  CA::Render::Encoder::encode_atom(a2, *(this + 26));
  v8 = *(this + 27);
  v9 = *(a2 + 4);
  if ((v9 + 1) > *(a2 + 5))
  {
    CA::Render::Encoder::grow(a2, 4);
    v9 = *(a2 + 4);
  }

  *v9 = v8;
  *(a2 + 4) += 4;
  if ((*(this + 13) & 8) != 0)
  {
    CA::Render::Encoder::encode_object(a2, *(this + 14));
  }

  CA::Render::Encoder::encode_colorspace(a2, *(this + 16));

  return CA::Render::Encoder::encode_sanity_check(a2);
}

void *CA::Render::InterpolatedFunction::encode(CA::Render::InterpolatedFunction *this, CA::Render::Encoder *a2)
{
  if (*(this + 4))
  {
    v4 = *(this + 2);
  }

  else
  {
    v4 = 0;
  }

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
  v9 = *(this + 6);
  if (v6 + 12 > v7)
  {
    CA::Render::Encoder::grow(a2, 4);
    v8 = *(a2 + 4);
  }

  *v8 = v9;
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v12 = (v10 + 4);
  *(a2 + 4) = v10 + 4;
  v13 = *(this + 3) >> 8;
  if (v10 + 8 > v11)
  {
    CA::Render::Encoder::grow(a2, 4);
    v12 = *(a2 + 4);
  }

  *v12 = v13;
  result = (*(a2 + 4) + 4);
  *(a2 + 4) = result;
  if (v4)
  {
    v15 = *(this + 4);
    v16 = 4 * v4 * *(this + 6);
    if (result + v16 > *(a2 + 5))
    {
      CA::Render::Encoder::grow(a2, 4 * v4 * *(this + 6));
      result = *(a2 + 4);
    }

    memcpy(result, v15, v16);
    v17 = (*(a2 + 4) + v16);
    *(a2 + 4) = v17;
    v18 = *(this + 5);
    if (v18)
    {
      if (v17 + 4 * v4 > *(a2 + 5))
      {
        CA::Render::Encoder::grow(a2, 4 * v4);
        v17 = *(a2 + 4);
      }

      memcpy(v17, v18, 4 * v4);
      v17 = (*(a2 + 4) + 4 * v4);
      *(a2 + 4) = v17;
    }

    v19 = *(this + 6);
    if (v19)
    {
      v20 = 32 * v4 - 32;
      if (v17 + v20 > *(a2 + 5))
      {
        CA::Render::Encoder::grow(a2, 32 * v4 - 32);
        v17 = *(a2 + 4);
      }

      memcpy(v17, v19, 32 * v4 - 32);
      *(a2 + 4) += v20;
    }

    return CA::Render::Encoder::encode_sanity_check(a2);
  }

  return result;
}

CA::Render::Filter *CA::Render::Filter::shared_filter(CA::Render::Filter *this)
{
  v1 = this;
  v2 = 0;
  if (this > 497)
  {
    if (this > 619)
    {
      if (this > 668)
      {
        if (this > 696)
        {
          switch(this)
          {
            case 0x2B9:
              v3 = 15;
              break;
            case 0x2BA:
              v3 = 46;
              break;
            case 0x2F6:
              v3 = 12;
              break;
            default:
              return v2;
          }
        }

        else
        {
          switch(this)
          {
            case 0x29D:
              v3 = 3;
              break;
            case 0x2B7:
              v3 = 32;
              break;
            case 0x2B8:
              v3 = 16;
              break;
            default:
              return v2;
          }
        }
      }

      else if (this > 661)
      {
        switch(this)
        {
          case 0x296:
            v3 = 6;
            break;
          case 0x298:
            v3 = 4;
            break;
          case 0x29C:
            v3 = 5;
            break;
          default:
            return v2;
        }
      }

      else
      {
        switch(this)
        {
          case 0x26C:
            v3 = 41;
            break;
          case 0x271:
            v3 = 22;
            break;
          case 0x293:
            v3 = 28;
            break;
          default:
            return v2;
        }
      }
    }

    else if (this > 548)
    {
      if (this > 562)
      {
        switch(this)
        {
          case 0x233:
            v3 = 45;
            break;
          case 0x234:
            v3 = 13;
            break;
          case 0x235:
            v3 = 44;
            break;
          default:
            return v2;
        }
      }

      else
      {
        switch(this)
        {
          case 0x225:
            v3 = 23;
            break;
          case 0x22B:
            v3 = 37;
            break;
          case 0x232:
            v3 = 14;
            break;
          default:
            return v2;
        }
      }
    }

    else if (this > 523)
    {
      switch(this)
      {
        case 0x20C:
          v3 = 17;
          break;
        case 0x20D:
          v3 = 21;
          break;
        case 0x215:
          v3 = 20;
          break;
        default:
          return v2;
      }
    }

    else
    {
      switch(this)
      {
        case 0x1F2:
          v3 = 43;
          break;
        case 0x200:
          v3 = 19;
          break;
        case 0x208:
          v3 = 18;
          break;
        default:
          return v2;
      }
    }
  }

  else if (this > 189)
  {
    if (this > 309)
    {
      if (this > 484)
      {
        switch(this)
        {
          case 0x1E5:
            v3 = 34;
            break;
          case 0x1E6:
            v3 = 35;
            break;
          case 0x1E7:
            v3 = 36;
            break;
          default:
            return v2;
        }
      }

      else
      {
        switch(this)
        {
          case 0x136:
            v3 = 47;
            break;
          case 0x1DB:
            v3 = 25;
            break;
          case 0x1DC:
            v3 = 39;
            break;
          default:
            return v2;
        }
      }
    }

    else if (this > 239)
    {
      switch(this)
      {
        case 0xF0:
          v3 = 31;
          break;
        case 0x125:
          v3 = 29;
          break;
        case 0x133:
          v3 = 40;
          break;
        default:
          return v2;
      }
    }

    else
    {
      switch(this)
      {
        case 0xBE:
          v3 = 7;
          break;
        case 0xBF:
          v3 = 30;
          break;
        case 0xCD:
          v3 = 33;
          break;
        default:
          return v2;
      }
    }
  }

  else if (this > 179)
  {
    if (this > 185)
    {
      switch(this)
      {
        case 0xBA:
          v3 = 8;
          break;
        case 0xBC:
          v3 = 9;
          break;
        case 0xBD:
          v3 = 10;
          break;
        default:
          return v2;
      }
    }

    else
    {
      switch(this)
      {
        case 0xB4:
          v3 = 38;
          break;
        case 0xB8:
          v3 = 2;
          break;
        case 0xB9:
          v3 = 11;
          break;
        default:
          return v2;
      }
    }
  }

  else if (this > 106)
  {
    switch(this)
    {
      case 0x6B:
        v3 = 26;
        break;
      case 0x9E:
        v3 = 1;
        break;
      case 0xB3:
        v3 = 24;
        break;
      default:
        return v2;
    }
  }

  else
  {
    switch(this)
    {
      case 'c':
        v3 = 0;
        break;
      case 'g':
        v3 = 42;
        break;
      case 'i':
        v3 = 27;
        break;
      default:
        return v2;
    }
  }

  os_unfair_lock_lock(&CA::Render::Filter::shared_filter::lock);
  v2 = CA::Render::Filter::shared_filter::filters[v3];
  if (!v2)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v4 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x38uLL, 0xDEEC3011uLL);
    v2 = v4;
    if (v4)
    {
      CA::Render::Filter::Filter(v4, v1, 0, 0);
      CA::Render::Filter::shared_filter::filters[v3] = v2;
      *(v2 + 3) |= 0x10100u;
    }

    else
    {
      CA::Render::Filter::shared_filter::filters[v3] = 0;
    }
  }

  os_unfair_lock_unlock(&CA::Render::Filter::shared_filter::lock);
  return v2;
}

double CA::Render::TimingFunction::evaluate_derivative_inverse(CA::Render::TimingFunction *this, const double *a2, float64x2_t a3, float64x2_t a4, double a5, double a6)
{
  __asm { FMOV            V5.2D, #3.0 }

  v10 = vmulq_f64(a3, _Q5);
  v11 = vmulq_f64(vsubq_f64(a4, a3), _Q5);
  v12 = vsubq_f64(v11, v10);
  __asm { FMOV            V5.2D, #1.0 }

  v14 = vsubq_f64(_Q5, v11);
  v15 = vmuld_lane_f64(3.0, v14, 1);
  v16 = 8;
  v17 = a5;
  while (1)
  {
    v18 = -(a5 - (v10.f64[1] + (v12.f64[1] + v17 * v14.f64[1]) * v17) * v17);
    if (fabs(v18) < a6)
    {
      break;
    }

    v19 = v10.f64[1] + (v12.f64[1] + v12.f64[1] + v15 * v17) * v17;
    if (fabs(v19) >= 0.000001)
    {
      v17 = v17 - v18 / v19;
      if (--v16)
      {
        continue;
      }
    }

    v17 = 0.0;
    if (a5 >= 0.0)
    {
      v17 = 1.0;
      if (a5 <= 1.0)
      {
        v20 = 0.0;
        v21 = 1.0;
        v22 = -1025;
        v17 = a5;
        do
        {
          if (__CFADD__(v22++, 1))
          {
            break;
          }

          v23 = -(a5 - (v10.f64[1] + (v12.f64[1] + v17 * v14.f64[1]) * v17) * v17);
          if (fabs(v23) < a6)
          {
            break;
          }

          if (v23 >= 0.0)
          {
            v21 = v17;
          }

          else
          {
            v20 = v17;
          }

          v17 = v20 + (v21 - v20) * 0.5;
        }

        while (v20 < v21);
      }
    }

    break;
  }

  v12.f64[0] = v12.f64[0] + v12.f64[0];
  v12.f64[1] = v12.f64[1] + v12.f64[1];
  v25 = vmlaq_n_f64(v10, vmlaq_n_f64(v12, v14, v17 * 3.0), v17);
  if (*v25.i64 == 0.0 && *&v25.i64[1] == 0.0)
  {
    v27 = -1;
  }

  else
  {
    v27 = 0;
  }

  v28 = vbslq_s8(vdupq_n_s64(v27), vmlaq_n_f64(v12, v14, v17 * 6.0), v25);
  *&result = *&vdivq_f64(vdupq_laneq_s64(v28, 1), v28);
  return result;
}

uint64_t CA::OGL::blur_downsample_alignment(CA::OGL *this, double a2)
{
  if (this)
  {
    v2 = 20.0;
    v3 = 5.5;
    v4 = 3.5;
  }

  else
  {
    v4 = 3.5;
    v3 = 5.5;
    if (a2 > 100.0)
    {
      v4 = 5.5;
      v3 = 9.5;
    }

    if (a2 > 3600.0)
    {
      v4 = v4 + 1.0;
      v3 = v3 + 1.0;
    }

    v2 = 20.0;
    if (a2 > 3600.0)
    {
      v2 = 21.0;
    }

    if (a2 > 10000.0)
    {
      v4 = v4 + 1.0;
      v3 = v3 + 1.0;
      v2 = v2 + 1.0;
    }
  }

  if (v2 * v2 < a2)
  {
    return 8;
  }

  if (v3 * v3 >= a2)
  {
    return 2 * (v4 * v4 < a2);
  }

  return 4;
}

BOOL CA::OGL::MetalContext::tile_downsample_surface(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, int8x8_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 3536))
  {
    return 0;
  }

  v6 = 0;
  if ((*(a2 + 93) & 0x40) != 0)
  {
    a5.i32[0] = a3;
    v7 = vcnt_s8(a5);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.i32[0] <= 1u)
    {
      v8 = __clz(__rbit32(a3));
      if (v8 >= 4)
      {
        __assert_rtn("tile_downsample_surface", "ogl-metal.mm", 15416, "index < 4");
      }

      v10 = *(a1 + 680);
      if ((*(v10 + 92) & 8) == 0)
      {
        return 0;
      }

      v13 = byte_183E21C44[v8];
      tile_pipeline = CA::OGL::MetalContext::get_tile_pipeline(a1, byte_183E21C44[v8], *(v10 + 192));
      v15 = a4[1];
      v27[0] = *a4;
      v27[1] = v15;
      v16 = *(&CA::OGL::MetalContext::tile_shader_type_info + 16 * v13 + 8);
      v17 = [*(a1 + 3536) tileWidth] / v16;
      v18 = [*(a1 + 3536) tileHeight] / v16;
      v6 = v18 * v17 != 0;
      if (v18 * v17)
      {
        _S0 = powf(*(a2 + 88) / *(v10 + 88), 1.0 / *(a1 + 576));
        __asm { FCVT            H0, S0 }

        v26 = LOWORD(_S0);
        [*(a1 + 3536) setRenderPipelineState:tile_pipeline];
        [*(a1 + 3536) setTileTexture:*(a2 + 168) atIndex:0];
        [*(a1 + 3536) setTileBytes:v27 length:4 atIndex:9];
        [*(a1 + 3536) setTileBytes:&v26 length:2 atIndex:6];
        v24 = *(a1 + 3536);
        v25[0] = v17;
        v25[1] = v18;
        v25[2] = 1;
        [v24 dispatchThreadsPerTile:v25];
        *(a1 + 3968) = tile_pipeline;
        *(a2 + 144) = *(a2 + 144) & 0x5FFFFFFF | 0x80000000;
      }
    }
  }

  return v6;
}

void *CA::OGL::MetalContext::get_tile_pipeline(uint64_t a1, unsigned int a2, size_t a3)
{
  v4 = a3;
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3 & 0x3FF | ((a2 & 0xF) << 10);
  v7 = *(a1 + 3160);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v9 = a3 & 0x3FF | ((a2 & 0xF) << 10);
      if (*&v7 <= v6)
      {
        v9 = v6 % v7.i32[0];
      }
    }

    else
    {
      v9 = (v7.i32[0] - 1) & v6;
    }

    v10 = *(*(a1 + 3152) + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == v6)
        {
          if (*(i + 4) == v6)
          {
            return i[3];
          }
        }

        else
        {
          if (v8.u32[0] > 1uLL)
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

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  j = *(&CA::OGL::MetalContext::tile_shader_type_info + 2 * a2);
  v35 = 0;
  shader_function = CA::OGL::MetalContext::load_shader_function(a1, *(a1 + 3944), j, 0, 0, 0, &v35);
  if (shader_function)
  {
    v3 = objc_opt_new();
    [v3 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"com.apple.coreanimation.%@", j)}];
    [objc_msgSend(objc_msgSend(v3 "colorAttachments")];
    if ((*(a1 + 3936) & 8) != 0)
    {
      [objc_msgSend(objc_msgSend(v3 "colorAttachments")];
    }

    [v3 setThreadgroupSizeMatchesTileSize:0];
    [v3 setTileFunction:shader_function];
    if (*(a1 + 3952))
    {
      v36 = *(a1 + 3952);
      [v3 setBinaryArchives:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v36, 1)}];
    }

    shader_function = [*(a1 + 3504) newRenderPipelineStateWithTileDescriptor:v3 options:0 reflection:0 error:&v35];
    if (shader_function)
    {
      v14 = *(a1 + 3160);
      if (v14)
      {
        v15 = vcnt_s8(v14);
        v15.i16[0] = vaddlv_u8(v15);
        if (v15.u32[0] > 1uLL)
        {
          v16 = v6;
          if (*&v14 <= v6)
          {
            v16 = v6 % v14.i32[0];
          }
        }

        else
        {
          v16 = (v14.i32[0] - 1) & v6;
        }

        v17 = *(*(a1 + 3152) + 8 * v16);
        if (v17)
        {
          for (j = *v17; j; j = *j)
          {
            v18 = j[1];
            if (v18 == v6)
            {
              if (*(j + 4) == v6)
              {
                goto LABEL_58;
              }
            }

            else
            {
              if (v15.u32[0] > 1uLL)
              {
                if (v18 >= *&v14)
                {
                  v18 %= *&v14;
                }
              }

              else
              {
                v18 &= *&v14 - 1;
              }

              if (v18 != v16)
              {
                break;
              }
            }
          }
        }
      }

      operator new();
    }

    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v29 = x_log_get_ogl_metal(void)::log;
    if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      Name = MTLPixelFormatGetName();
      v3 = [j UTF8String];
      v31 = [objc_msgSend(v35 "localizedDescription")];
      *buf = 136315650;
      v38 = Name;
      v39 = 2080;
      v40 = v3;
      v41 = 2080;
      v42 = v31;
      _os_log_error_impl(&dword_183AA6000, v29, OS_LOG_TYPE_ERROR, "Metal failed to build render pipeline with tile shader\ntile_pipeline=%s_%s\n%s", buf, 0x20u);
    }

    bzero(buf, 0x7FFuLL);
    v27 = MTLPixelFormatGetName();
    shader_function = [j UTF8String];
    snprintf(buf, 0x800uLL, "tile_pipeline=%s_%s\n%s", v27, shader_function, [objc_msgSend(v35 "localizedDescription")]);
    v43 = 0;
    strlen(buf);
    v28 = abort_with_payload();
  }

  else
  {
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v25 = x_log_get_ogl_metal(void)::log;
    if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      shader_function = [j UTF8String];
      v26 = [objc_msgSend(v35 "localizedDescription")];
      *buf = 136315394;
      v38 = shader_function;
      v39 = 2080;
      v40 = v26;
      _os_log_error_impl(&dword_183AA6000, v25, OS_LOG_TYPE_ERROR, "Metal failed to load compute shader\nfunction=%s\n%s", buf, 0x16u);
    }

    bzero(buf, 0x7FFuLL);
    v27 = [j UTF8String];
    snprintf(buf, 0x800uLL, "function=%s\n%s", v27, [objc_msgSend(v35 "localizedDescription")]);
    v43 = 0;
    strlen(buf);
    v28 = abort_with_payload();
  }

  __break(1u);
  prime = std::__next_prime(v28);
  if (v4 <= prime)
  {
    v4 = prime;
  }

  if (v4 >= v3)
  {
    v34 = *(v27 + 3160);
  }

  else
  {
    if (v4)
    {
      if (!(v4 >> 61))
      {
        operator new();
      }

      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v33 = *(v27 + 3152);
    *(v27 + 3152) = 0;
    if (v33)
    {
      operator delete(v33);
    }

    v34 = 0;
    *(v27 + 3160) = 0;
  }

  if ((v34 & (v34 - 1)) != 0)
  {
    if (v34 <= v6)
    {
      v19 = v6 % v34;
    }

    else
    {
      v19 = v6;
    }
  }

  else
  {
    v19 = (v34 - 1) & v6;
  }

  v20 = *(v27 + 3152);
  v21 = *(v20 + 8 * v19);
  if (v21)
  {
    *j = *v21;
  }

  else
  {
    *j = *(v27 + 3168);
    *(v27 + 3168) = j;
    *(v20 + 8 * v19) = v27 + 3168;
    if (!*j)
    {
      goto LABEL_57;
    }

    v22 = *(*j + 8);
    if ((v34 & (v34 - 1)) != 0)
    {
      if (v22 >= v34)
      {
        v22 %= v34;
      }
    }

    else
    {
      v22 &= v34 - 1;
    }

    v21 = (*(v27 + 3152) + 8 * v22);
  }

  *v21 = j;
LABEL_57:
  ++*(v27 + 3176);
LABEL_58:
  j[3] = shader_function;
  return shader_function;
}

uint64_t CA::OGL::MetalContext::reset_attached_surface(uint64_t this)
{
  *(this + 680) = 0;
  *(this + 4712) = 0;
  return this;
}

void CA::OGL::anonymous namespace::simdBlurParameters(CA::OGL::_anonymous_namespace_ *this, float a2, float *a3, int *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(v15, 0, sizeof(v15));
  v6 = 0;
  v7 = 0.0;
  while (1)
  {
    v8 = *(v15 + v6);
    if (v8 >= 0.002)
    {
      break;
    }

    v7 = v8 + v7;
    if (++v6 == 11)
    {
      goto LABEL_6;
    }
  }

  if (v6 > 0xD)
  {
    LODWORD(v9) = 0;
    goto LABEL_10;
  }

LABEL_6:
  v9 = (14 - v6);
  v10 = v15 + v6;
  v11 = v9;
  v12 = 1.0 / (1.0 - v7);
  do
  {
    v13 = *v10++;
    v14 = v13 * v12;
    *this = v14;
    this = (this + 4);
    --v11;
  }

  while (v11);
LABEL_10:
  *a3 = v9;
}

void CA::OGL::BlurState::tile_simd_blur(float32x2_t *this, int a2, const float *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = this[4].i16[0];
  v5 = v4;
  v6 = this + 1;
  v7 = this + 11;
  v8 = v4 & 1;
  v9 = &this[v8 + 11];
  if (v5 < 0)
  {
    v9 = this + 1;
  }

  if (this[15].i8[0])
  {
    v10 = 16;
  }

  else
  {
    v10 = 32;
  }

  v11 = v8 ^ 1;
  v12 = this[6];
  v13 = vsub_f32(this[7], v12);
  v14 = vceqz_f32(v13);
  v15.i64[0] = v14.i32[0];
  v15.i64[1] = v14.i32[1];
  if ((vorrq_s8(vdupq_laneq_s64(v15, 1), v15).u64[0] & 0x8000000000000000) != 0 || (v16 = vmvn_s8(vceq_f32(v13, v13)), v17.i64[0] = v16.i32[0], v17.i64[1] = v16.i32[1], (vorrq_s8(vdupq_laneq_s64(v17, 1), v17).u64[0] & 0x8000000000000000) != 0))
  {
    v40 = 0uLL;
    v24 = 0;
    v23 = -1;
  }

  else
  {
    v18 = vcvtq_f64_f32(v12);
    v19 = vmaxnmq_f64(v18, vdupq_n_s64(0xC1BFFFFFFF000000));
    v20 = vminnmq_f64(vaddq_f64(v18, vcvtq_f64_f32(v13)), vdupq_n_s64(0x41C0000000000000uLL));
    v21 = vcvtmq_s64_f64(v19);
    v22 = vsubq_s64(vcvtpq_s64_f64(v20), v21);
    v40 = vuzp1q_s32(v21, v22);
    v23 = vadd_s32(vmovn_s64(v21), -1);
    v24 = vmovn_s64(v22);
  }

  if (this[4].i8[2] == 1)
  {
    v25 = v24.i32[0];
    if (v24.i32[0] <= v24.i32[1])
    {
      v26 = v24.i32[1];
    }

    else
    {
      v26 = v24.i32[0];
    }

    if (v24.i32[0] >= v24.i32[1])
    {
      v25 = v24.i32[1];
    }

    if (v26 <= 1073741822 && v25 >= 1)
    {
      v28 = vadd_s32(v24, 0x200000002);
      v29 = vclez_s32(v28);
      if (vorr_s8(v29, vdup_lane_s32(v29, 1)).u8[0])
      {
        v30 = -1;
      }

      else
      {
        v30 = 0;
      }

      *v40.i8 = v23;
      v40.u64[1] = vbic_s8(v28, vdup_n_s32(v30));
    }
  }

  v31 = *v9;
  if (CA::OGL::PingPongState::create_surface(this, v11, &v40))
  {
    v32 = v7[v11];
    (*(**this + 760))(*this, v32, v10, v10);
    CA::OGL::Context::push_surface(*this, v32, 0, 64, 0);
    *v33.f32 = this[6];
    v34 = *this;
    *&v33.u32[2] = vsub_f32(this[7], *v33.f32);
    v40 = vcvtq_s32_f32(v33);
    (*(**&v34 + 976))(v34, v31);
    v40.i64[0] = *(*&v31 + 48);
    v35 = 32.0;
    if (this[15].i8[0])
    {
      v35 = 16.0;
    }

    CA::OGL::BlurState::process_edges(this, v35, 1.0, 1.0, v40.i32);
    v36 = *this;
    if ((*(*this + 1384) & 0x7000) != 0)
    {
      v37 = this[4].i16[0];
      v38 = v37;
      v39 = &v7[v37 & 1];
      if (v38 < 0)
      {
        v39 = v6;
      }

      *(*(v36 + 84) + 144) = *(*(v36 + 84) + 144) & 0xFFFFC0FF | (((*(*v39 + 144) >> 8) & 0x3F) << 8);
      v36 = *this;
    }

    CA::OGL::Context::pop_surface(v36);
    ++this[4].i16[0];
  }
}

CA::Render::GainMapLayer *CA::Render::GainMapLayer::GainMapLayer(CA::Render::GainMapLayer *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 19;
  ++dword_1ED4EAA84;
  *v4 = &unk_1EF2017B8;
  v5 = CA::Render::Decoder::decode_int8(a2);
  if (v5 >= 4)
  {
    CA::Render::Decoder::set_fatal_error(a2, "%s - enum %u out of range of %u", "decode_int8_enum", v5, 4);
    LOBYTE(v5) = 0;
  }

  *(this + 16) = v5;
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-gain-map-layer.cpp", 107);
  return this;
}

uint64_t CA::OGL::MetalContext::tile_simd_blur_surface(CA::OGL::Context *this, uint64_t a2, int32x2_t *a3, float32x4_t *a4, int a5, int a6)
{
  v61 = *MEMORY[0x1E69E9840];
  v11 = *(this + 85);
  v12 = *(this + 84);
  if (v11 != v12 || (!v11 ? (v13 = 0) : (v13 = (*(v12 + 144) >> 1) & 0x1F), *(this + 167) != v13))
  {
    CA::OGL::Context::prepare_destination_(this);
  }

  if ((*(this + 692) & 0x200) != 0)
  {
    CA::OGL::Context::flatten_detached_layers_(this);
  }

  result = CA::OGL::MetalContext::start_render_encoder(this);
  if (result)
  {
    v16 = *(this + 84);
    v17 = &CA::OGL::MetalContext::tile_simd_blur_surface(CA::OGL::Surface *,CA::Bounds,float const*,int,BOOL)::shaders;
    v18 = 84;
    v54 = a4;
    v52 = a6;
    while (*v17 >= a5)
    {
      v17 += 3;
      v18 -= 12;
      if (!v18)
      {
        v19 = 2;
        v20 = 10;
        goto LABEL_15;
      }
    }

    v19 = v17[1];
    v20 = *(v17 + 8);
LABEL_15:
    v51 = v20;
    v50 = *(v16 + 48);
    v21 = vsub_s32(*a3, v50);
    v22 = vadd_s32(a3[1], v21);
    v23 = ((v21.i32[0] - (v15 & 0xFFFFFFE0)) >> 31) + v21.i32[0] / 32;
    v24 = ((v21.i32[1] - (v21.i32[0] & 0xFFFFFFE0)) >> 31) + v21.i32[1] / 32;
    v25 = 32 * v24;
    if ((v22.i32[0] - (v15 & 0xFFFFFFE0)) <= 0)
    {
      v26 = v22.i32[0] / 32 - v23;
    }

    else
    {
      v26 = v22.i32[0] / 32 - v23 + 1;
    }

    v27 = 32 * v26;
    if ((v22.i32[1] - (v15 & 0xFFFFFFE0)) <= 0)
    {
      v28 = v22.i32[1] / 32 - v24;
    }

    else
    {
      v28 = v22.i32[1] / 32 - v24 + 1;
    }

    v29 = 32 * v28;
    v53 = *(this + 84);
    _S0 = powf(*(v16 + 88) / *(a2 + 88), 1.0 / *(this + 144));
    if (v52)
    {
      v31 = v19;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31 + *(a2 + 48);
    if (v52)
    {
      v33 = 0;
    }

    else
    {
      v33 = v19;
    }

    v34 = v33 + *(a2 + 52);
    if (v52)
    {
      v35 = 32;
    }

    else
    {
      v35 = 0;
    }

    if (v52)
    {
      v36 = 0;
    }

    else
    {
      v36 = 32;
    }

    v59[1] = v50.i16[2] + 32 * v24 - v34;
    v59[0] = v50.i16[0] + 32 * v23 - v32;
    v59[3] = v36;
    v59[2] = v35;
    v59[4] = v52;
    __asm { FCVT            H0, S0 }

    v59[5] = _H0;
    if (v19 >= a5)
    {
      bzero(v60, 2 * (v19 - a5) + 2);
    }

    v42 = 32 * v23;
    v43 = v27;
    CA::HalfFloat::convert_float_array(&v60[v19 - a5 + 1], v54, a5);
    if (v19 >= 1)
    {
      v44 = v19;
      v45 = &v60[v19 + 1];
      v46 = &v60[v19 - 1];
      do
      {
        v47 = *v46--;
        *v45++ = v47;
        --v44;
      }

      while (v44);
    }

    tile_pipeline = CA::OGL::MetalContext::get_tile_pipeline(this, v51, *(v53 + 192));
    [*(this + 442) setRenderPipelineState:tile_pipeline];
    [*(this + 442) setTileTexture:*(a2 + 168) atIndex:0];
    [*(this + 442) setTileBytes:v59 length:12 atIndex:0];
    [*(this + 442) setTileBytes:v60 length:2 * ((2 * v19) | 1) atIndex:1];
    v49 = *(this + 442);
    v57 = vdupq_n_s64(0x20uLL);
    v58 = 1;
    v56[0] = v42;
    v56[1] = v25;
    v56[2] = 0;
    v56[3] = v43;
    v56[4] = v29;
    v56[5] = 1;
    result = [v49 dispatchThreadsPerTile:&v57 inRegion:v56];
    *(this + 496) = tile_pipeline;
  }

  return result;
}

float16x8_t *CA::HalfFloat::convert_float_array(float16x8_t *this, float32x4_t *a2, unint64_t a3)
{
  if (((a2 | this) & 0xF) == 0)
  {
    if (a3 >= 0x10)
    {
      do
      {
        v4 = a2[2];
        v3 = a2[3];
        v6 = *a2;
        v5 = a2[1];
        a2 += 4;
        *this = vcvt_hight_f16_f32(vcvt_f16_f32(v6), v5);
        this[1] = vcvt_hight_f16_f32(vcvt_f16_f32(v4), v3);
        this += 2;
        a3 -= 16;
      }

      while (a3 > 0xF);
    }

    if (a3 >= 4)
    {
      do
      {
        v7 = *a2++;
        *this->i8 = vcvt_f16_f32(v7);
        this = (this + 8);
        a3 -= 4;
      }

      while (a3 > 3);
    }

    if (a3 > 1)
    {
      if (a3 != 2)
      {
        _S0 = a2->i32[2];
        __asm { FCVT            H0, S0 }

        this->i16[2] = _S0;
      }

      _S0 = a2->i32[1];
      __asm { FCVT            H0, S0 }

      this->i16[1] = _S0;
    }

    else if (!a3)
    {
      return this;
    }

    _S0 = a2->i32[0];
    __asm { FCVT            H0, S0 }

    this->i16[0] = _S0;
    return this;
  }

  if (a3 >= 4)
  {
    do
    {
      v15 = *a2++;
      *this->i8 = vcvt_f16_f32(v15);
      this = (this + 8);
      a3 -= 4;
    }

    while (a3 > 3);
  }

  for (; a3; --a3)
  {
    v16 = a2->i32[0];
    a2 = (a2 + 4);
    _S0 = v16;
    __asm { FCVT            H0, S0 }

    this->i16[0] = _S0;
    this = (this + 2);
  }

  return this;
}

__n128 CA::OGL::Context::reuse_surface(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[3] = *a3;
  a2[6].n128_u8[0] = 0;
  a2[9].n128_u32[0] &= 0xF0FFFFFF;
  a2[9].n128_u16[2] &= 0xFE7Fu;
  return result;
}

uint64_t CA::Render::Path::new_path(CGPathRef path, const CGPath *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!path)
  {
    return 0;
  }

  if (CA::Render::Path::_path_table)
  {
    os_unfair_lock_lock(&CA::Render::Path::_path_lock);
    v3 = x_hash_table_lookup(CA::Render::Path::_path_table, path, 0);
    if (v3)
    {
      v4 = v3;
      if (atomic_fetch_add((v3 + 8), 1u))
      {
LABEL_26:
        os_unfair_lock_unlock(&CA::Render::Path::_path_lock);
        return v4;
      }

      atomic_fetch_add((v3 + 8), 0xFFFFFFFF);
    }

    os_unfair_lock_unlock(&CA::Render::Path::_path_lock);
  }

  v29 = 1;
  v28 = 0uLL;
  v26 = 0;
  v27 = 0;
  info = 0;
  CGPathApply(path, &info, CA::Render::count_elements);
  if ((v29 & 1) == 0)
  {
    if ((CA::Render::Path::new_path(CGPath const*,BOOL)::_before & 1) == 0)
    {
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v11 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        LOWORD(rect.origin.x) = 0;
        _os_log_error_impl(&dword_183AA6000, v11, OS_LOG_TYPE_ERROR, "ignoring invalid path\n", &rect, 2u);
      }

      v4 = 0;
      CA::Render::Path::new_path(CGPath const*,BOOL)::_before = 1;
      return v4;
    }

    return 0;
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v5 = malloc_type_zone_malloc(malloc_zone, info + 16 * v26 + 161, 0x10F10403F876FEAuLL);
  v4 = v5;
  if (v5)
  {
    v7 = v26;
    v6 = v27;
    v8 = info;
    v5[2] = 1;
    v5[3] = 38;
    ++dword_1ED4EAAD0;
    *v5 = &unk_1EF1FBE10;
    v5[4] = v6;
    v5[5] = v8;
    v5[6] = v7;
    *(v5 + 4) = v5 + 40;
    *(v5 + 5) = &v5[4 * v7 + 40];
    *(v5 + 6) = path;
    *(v5 + 13) = 0;
    *(v5 + 14) = 0;
    memset(&rect, 0, sizeof(rect));
    v23 = 0.0;
    v24 = 0.0;
    if (CGPathIsRect(path, &rect))
    {
      v10 = *(v4 + 12) | 0x200;
    }

    else
    {
      if (!CGPathIsRoundedRect())
      {
        if (CGPathIsEllipse())
        {
          *(v4 + 12) |= 0x800u;
          v23 = rect.size.height * 0.5;
          v24 = rect.size.width * 0.5;
        }

        goto LABEL_23;
      }

      v10 = *(v4 + 12) | 0x400;
    }

    *(v4 + 12) = v10;
LABEL_23:
    v9.f64[0] = 0.0;
    v12 = vdupq_lane_s64(vcgtq_f64(v9, rect.size).i64[0], 0);
    v13.i64[1] = *&rect.size.height;
    *v13.i64 = -rect.size.width;
    v14 = vaddq_f64(rect.size, rect.origin);
    v15.i64[0] = vbslq_s8(v12, v14, rect.origin).u64[0];
    v16.i64[0] = v15.i64[0];
    v16.i64[1] = *&rect.origin.y;
    v17 = vbslq_s8(v12, v13, rect.size);
    v18 = vdupq_lane_s64(vcgtq_f64(v9, vdupq_laneq_s64(rect.size, 1)).i64[0], 0);
    v19.i64[0] = v17.i64[0];
    v19.i64[1] = *&vnegq_f64(*(&rect + 16)).f64[1];
    v15.i64[1] = v14.i64[1];
    *(v4 + 56) = vbslq_s8(v18, v15, v16);
    *(v4 + 72) = vbslq_s8(v18, v19, v17);
    *(v4 + 88) = v24;
    *(v4 + 96) = v23;
    *(v4 + 104) = CGPathRetain(path);
    v28 = vextq_s8(*(v4 + 32), *(v4 + 32), 8uLL);
    CGPathApply(path, &info, CA::Render::copy_elements);
    v20 = v28.i64[0]++;
    *v20 = 5;
    os_unfair_lock_lock(&CA::Render::Path::_path_lock);
    v21 = CA::Render::Path::_path_table;
    if (!CA::Render::Path::_path_table)
    {
      v21 = x_hash_table_new_(0, 0, 0, 0, 0, 0);
      CA::Render::Path::_path_table = v21;
    }

    hash_table_modify(v21, *(v4 + 48), v4, 0);
    goto LABEL_26;
  }

  return v4;
}

CA::Transaction *backing_store_callback(double a1, void *a2)
{
  next_collect_time = 0;
  result = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!result)
  {
    result = CA::Transaction::create(0);
  }

  if (!**(result + 15))
  {

    return CA::Transaction::ensure_implicit(result, 1);
  }

  return result;
}

int64x2_t *CA::Render::count_elements(int64x2_t *this, void *a2, const CGPathElement *a3)
{
  v3 = *a2;
  v4 = cgpath_counts[v3];
  v5.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v5.i64[1] = v4;
  *this = vaddq_s64(*this, v5);
  if (v3)
  {
    ++this[1].i64[0];
  }

  if (v3 != 4 && (this[2].i8[8] & 1) != 0)
  {
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v6 = (a2[1] + 8);
    do
    {
      if ((*(v6 - 1) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*v6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        this[2].i8[8] = 0;
      }

      v6 += 2;
      --v4;
    }

    while (v4);
  }

  return this;
}

void CA::OGL::Context::image_volatile(CA::OGL::Context *this, os_unfair_lock_s *a2, void *a3, void *a4)
{
  os_unfair_lock_lock(a2 + 178);
  v6 = std::__hash_table<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::__unordered_map_hasher<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,CA::OGL::Context::RenderObjectSlice::Hash,std::equal_to<CA::OGL::Context::RenderObjectSlice>,true>,std::__unordered_map_equal<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::equal_to<CA::OGL::Context::RenderObjectSlice>,CA::OGL::Context::RenderObjectSlice::Hash,true>,std::allocator<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>>>::find<CA::OGL::Context::RenderObjectSlice>(&a2[180]._os_unfair_lock_opaque, this, 0);
  if (v6)
  {
    v7 = v6[4];
    std::__hash_table<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::__unordered_map_hasher<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,CA::OGL::Context::RenderObjectSlice::Hash,std::equal_to<CA::OGL::Context::RenderObjectSlice>,true>,std::__unordered_map_equal<CA::OGL::Context::RenderObjectSlice,std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>,std::equal_to<CA::OGL::Context::RenderObjectSlice>,CA::OGL::Context::RenderObjectSlice::Hash,true>,std::allocator<std::__hash_value_type<CA::OGL::Context::RenderObjectSlice,CA::OGL::Image *>>>::erase(&a2[180]._os_unfair_lock_opaque, v6);
    CA::OGL::Context::prepend_deleted_image(a2, v7);
  }

  os_unfair_lock_unlock(a2 + 178);
}

uint64_t CA::Render::copy_elements(uint64_t this, void *a2, const CGPathElement *a3)
{
  v3 = CA::Render::cgpath_types[*a2];
  v4 = *(this + 24);
  *(this + 24) = v4 + 1;
  *v4 = v3;
  v5 = *a2;
  if (v5 != 4)
  {
    LODWORD(v6) = cgpath_counts[v5];
    v7 = a2[1];
    v8 = *(this + 32);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v6;
    }

    do
    {
      v9 = *v7++;
      *v8++ = v9;
      --v6;
    }

    while (v6);
    *(this + 32) = v8;
  }

  return this;
}

uint64_t CAImageQueueCreate(int a1, int a2, unsigned int a3)
{
  result = CAImageQueueCreate_(0, a3);
  if (result)
  {
    *(result + 32) = a1;
    *(result + 36) = a2;
  }

  return result;
}

void CA::Render::MatchMoveDependence::~MatchMoveDependence(CA::Render::MatchMoveDependence *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

CA::Render::PortalLayer *CA::Render::PortalLayer::PortalLayer(CA::Render::PortalLayer *this, CA::Render::Decoder *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 42;
  ++dword_1ED4EAAE0;
  *v4 = &unk_1EF203EE8;
  *(this + 3) = CA::Render::Decoder::decode_size_t(a2);
  *(this + 4) = CA::Render::Decoder::decode_size_t(a2);
  *(this + 10) = CA::Render::Decoder::decode_int32(a2);
  *(this + 44) = CA::Render::Decoder::decode_int8(a2);
  v9 = 28;
  v5 = CA::Render::Decoder::decode_array_object(a2, 1, &v9, 0);
  if (v5)
  {
    v6 = v5 + 2;
    v7 = v5;
    if (!atomic_fetch_add(v5 + 2, 1u))
    {
      v7 = 0;
      atomic_fetch_add(v6, 0xFFFFFFFF);
    }

    *(this + 6) = v7;
    if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      (*(*v5 + 16))(v5);
    }
  }

  else
  {
    *(this + 6) = 0;
  }

  *(this + 7) = 0;
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-portal-layer.cpp", 564);
  return this;
}

atomic_uint *CA::Render::ShapeLayer::invalidate_stroke_path(CA::Render::ShapeLayer *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
    }

    *(this + 19) = 0;
  }

  *(this + 20) = 0x3FF0000000000000;
  result = *(this + 18);
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*result + 16))(result);
    }

    *(this + 18) = 0;
  }

  return result;
}

void CA::Render::ShadowCache::entry_deleted(CA::Render::ShadowCache *this, CA::Render::Object *a2, void *a3, void *a4)
{
  os_unfair_lock_lock(a2 + 10);
  v6 = x_hash_table_remove(*(a2 + 1), this);
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7);
    *v8 = *(a2 + 4);
    *(a2 + 4) = v6;
  }

  v9 = x_hash_table_remove(*a2, this);
  if (v9)
  {
    v10 = v9;
    do
    {
      v11 = v10;
      v10 = *v10;
    }

    while (v10);
    *v11 = *(a2 + 3);
    *(a2 + 3) = v9;
  }

  os_unfair_lock_unlock(a2 + 10);
}

int *CAImageQueuePing_(uint64_t a1, int a2, int a3, double a4, double a5)
{
  v28 = *MEMORY[0x1E69E9840];
  result = *(a1 + 208);
  if (result)
  {
    result = CA::Context::retain_context_with_id(result);
    v11 = result ? result + 58 : 0;
    if (result)
    {
      v12 = (*(*v11 + 8))(v11);
      if (v12)
      {
        v13 = v12;
        CA::Render::Context::will_commit(v12);
        CA::Render::Context::did_commit(v13, 1, 0, 1, 0, 0);
        if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v13 + 16))(v13);
        }
      }

      else
      {
        v14 = (*(*v11 + 32))(v11);
        if (v14)
        {
          v15 = v14;
          v16 = (*(*v11 + 24))(v11);
          v17 = *(a1 + 48);
          if (!v17 || (v18 = *(*(v17 + 24) + 72)) == 0)
          {
            v18 = v16;
          }

          v22 = *MEMORY[0x1E69E99E0];
          v23 = v18;
          v24 = a4;
          v25 = a2;
          v26 = a3;
          v27 = a5;
          *&msg.msgh_bits = 19;
          msg.msgh_voucher_port = 0;
          msg.msgh_id = 40204;
          msg.msgh_remote_port = v15;
          msg.msgh_local_port = 0;
          if (MEMORY[0x1EEE9AC50])
          {
            voucher_mach_msg_set(&msg);
          }

          v19 = mach_msg(&msg, 1, 0x3Cu, 0, 0, 0, 0);
          CAVerifyServerReturn(v19);
        }
      }

      v20 = **v11;

      return v20(v11);
    }
  }

  return result;
}

void sub_183BBF094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  pthread_mutex_unlock((v15 + 16));
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t CA::Render::Handle::retain_context(CA::Render::Handle *this)
{
  os_unfair_lock_lock(&CA::Render::Handle::_handle_lock);
  v2 = *(this + 3);
  if (v2)
  {
    v3 = (v2 + 8);
    if (!atomic_fetch_add((v2 + 8), 1u))
    {
      v2 = 0;
      atomic_fetch_add(v3, 0xFFFFFFFF);
    }
  }

  os_unfair_lock_unlock(&CA::Render::Handle::_handle_lock);
  return v2;
}

uint64_t _XCreateSlot(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 24) || *(result + 28) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v4 = *(result + 12);
  *(a2 + 36) = 0;
  result = CA::Render::Context::context_by_server_port(v4);
  if (!result)
  {
    v3 = 56;
    goto LABEL_7;
  }

  v5 = result;
  pthread_mutex_lock((result + 72));
  *(a2 + 36) = CA::Render::Context::new_slot(v5);
  result = pthread_mutex_unlock((v5 + 72));
  v6 = *(a2 + 36);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 5;
  }

  if (atomic_fetch_add((v5 + 8), 0xFFFFFFFF) == 1)
  {
    result = (*(*v5 + 16))(v5);
  }

  *(a2 + 32) = v7;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (v6)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t CA::Render::Context::new_slot(CA::Render::Context *this)
{
  v18[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&CA::Render::Context::_context_lock);
  if (!CA::Render::Context::_slot_table)
  {
    CA::Render::Context::_slot_table = x_hash_table_new_(0, 0, 0, 0, 0, 0);
  }

  do
  {
    do
    {
      v2 = arc4random();
    }

    while (!v2);
    v3 = v2;
    v18[0] = 0;
    x_hash_table_lookup(CA::Render::Context::_slot_table, v2, v18);
  }

  while (LODWORD(v18[0]));
  hash_table_modify(CA::Render::Context::_slot_table, v3, 0, 0);
  v5 = *(this + 22);
  v4 = *(this + 23);
  if (v5 >= v4)
  {
    v7 = *(this + 21);
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Render::Context::Slot>>(v11);
    }

    v12 = (8 * v8);
    *v12 = v3;
    v6 = 8 * v8 + 8;
    v13 = *(this + 21);
    v14 = *(this + 22) - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = *(this + 21);
    *(this + 21) = v15;
    *(this + 22) = v6;
    *(this + 23) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = v3;
    v6 = (v5 + 1);
  }

  *(this + 22) = v6;
  os_unfair_lock_unlock(&CA::Render::Context::_context_lock);
  return v3;
}

uint64_t CAImageQueueCopyRenderValue(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v60 = *MEMORY[0x1E69E9840];
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg + 576);
  if (v4)
  {
    v5 = *(v4 + 40);
    if (v5)
    {
      if (*(v5 + 224))
      {
        v6 = v1;
        v7 = v5 + 232;
        v8 = (*(*(v5 + 232) + 16))(v5 + 232, v2);
        if (*(v6 + 208) != v8)
        {
          v9 = v8;
          if (*(v6 + 200) && *(v6 + 212))
          {
            os_unfair_lock_lock((v6 + 16));
            v10 = x_hash_table_values(*(v6 + 200));
            if (v10)
            {
              v11 = v10;
              v12 = v10;
              do
              {
                v13 = (*v12 + 8);
                if (!atomic_fetch_add(v13, 1u))
                {
                  atomic_fetch_add(v13, 0xFFFFFFFF);
                }

                v12 = v12[1];
              }

              while (v12);
              v57 = v7;
              os_unfair_lock_unlock((v6 + 16));
              v15 = *(StatusReg + 576);
              if (v15)
              {
                v16 = v11;
                do
                {
                  v17 = *v16;
                  if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
                  {
                    dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
                  }

                  if (v17)
                  {
                    v18 = CA::Render::_render_id_slide + v17;
                  }

                  else
                  {
                    v18 = 0;
                  }

                  CA::Transaction::add_deleted_id(*(v15 + 120), v18, *(*v16 + 16), *(v6 + 208));
                  v16 = v16[1];
                }

                while (v16);
              }

              v19 = v11;
              do
              {
                v20 = *v19;
                if (atomic_fetch_add((*v19 + 8), 0xFFFFFFFF) == 1)
                {
                  (*(*v20 + 16))(v20);
                }

                v19 = v19[1];
              }

              while (v19);
              v7 = v57;
              do
              {
                v21 = v11[1];
                free(v11);
                v11 = v21;
              }

              while (v21);
            }

            else
            {
              os_unfair_lock_unlock((v6 + 16));
            }
          }

          *(v6 + 208) = v9;
          v22 = (*(*v7 + 32))(v7);
          v23 = *(v6 + 212);
          if (v23 != v22)
          {
            v24 = v22;
            v25 = MEMORY[0x1E69E9A60];
            if (v23)
            {
              mach_port_deallocate(*MEMORY[0x1E69E9A60], v23);
            }

            *(v6 + 212) = 0;
            if (v24 - 1 <= 0xFFFFFFFD && !mach_port_mod_refs(*v25, v24, 0, 1))
            {
              *(v6 + 212) = v24;
            }
          }

          *(v6 + 216) = (*(*v7 + 24))(v7);
          if (*(v6 + 200) && *(v6 + 212))
          {
            os_unfair_lock_lock((v6 + 16));
            v26 = x_hash_table_values(*(v6 + 200));
            if (v26)
            {
              v27 = v26;
              v28 = v26;
              do
              {
                v29 = (*v28 + 8);
                if (!atomic_fetch_add(v29, 1u))
                {
                  atomic_fetch_add(v29, 0xFFFFFFFF);
                }

                v28 = v28[1];
              }

              while (v28);
              os_unfair_lock_unlock((v6 + 16));
              v30 = CA::Context::retain_context_with_id(*(v6 + 208));
              if (v30)
              {
                v31 = v30;
                bzero(valuePtr, 0x1090uLL);
                CAImageQueueCommit::CAImageQueueCommit(valuePtr, v6, (v31 + 58));
                v32 = v27;
                do
                {
                  v33 = *v32;
                  if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
                  {
                    dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
                  }

                  if (v33)
                  {
                    v34 = (CA::Render::_render_id_slide + v33);
                  }

                  else
                  {
                    v34 = 0;
                  }

                  CA::Render::encode_set_object(v59, v34, *(v33 + 16), *(v33 + 24), 0);
                  v59[104] = 1;
                  v32 = v32[1];
                }

                while (v32);
                CAImageQueueCommit::~CAImageQueueCommit(valuePtr);
              }

              v35 = v27;
              do
              {
                v36 = *v35;
                if (atomic_fetch_add((*v35 + 8), 0xFFFFFFFF) == 1)
                {
                  (*(*v36 + 16))(v36);
                }

                v35 = v35[1];
              }

              while (v35);
              do
              {
                v37 = v27[1];
                free(v27);
                v27 = v37;
              }

              while (v37);
            }

            else
            {
              os_unfair_lock_unlock((v6 + 16));
            }
          }
        }

        os_unfair_lock_lock((v6 + 16));
        v38 = *(v6 + 48);
        if (v38)
        {
          if (*(v6 + 24) != *(*(v38 + 24) + 16))
          {
            v39 = CA::Context::retain_context_with_id(*(v6 + 208));
            if (v39)
            {
              v40 = v39;
              valuePtr[0] = *(v6 + 24);
              v41 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
              v42 = *(v40 + 29);
              v40 += 58;
              v43 = (*(v42 + 16))(v40);
              CA::Transaction::add_command(0xE, v43, *(v6 + 28), v41, v44);
              CFRelease(v41);
              (**v40)(v40);
            }
          }
        }

        v45 = *(v6 + 56);
        if (v45)
        {
          goto LABEL_64;
        }

        v47 = *(v6 + 48);
        if (v47 && ((v48 = *(v6 + 40), (v48 - 1) >> 16) || 160 * v48 + 472 <= *(v47 + 16)))
        {
          if (x_malloc_get_zone::once != -1)
          {
            dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
          }

          v55 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x230uLL, 0xDEEC3011uLL);
          if (v55)
          {
            CA::Render::ImageQueue::ImageQueue(v55, *(v6 + 48), *(v6 + 40));
            *(v6 + 56) = v56;
            X::WeakDetails::Ptr::set((v56 + 472), v6, 1);
            v45 = *(v6 + 56);
            *(v45 + 448) = *(v6 + 28);
LABEL_64:
            if (*(v6 + 212))
            {
              v46 = (*(*v7 + 40))(v7);
              v45 = *(v6 + 56);
            }

            else
            {
              v46 = 0;
            }

            CA::Render::ImageQueue::set_client_port(v45, v46);
            v49 = *(v6 + 56);
            *(v49 + 116) = *(v6 + 216);
            CA::Render::Context::remove_image_queue(v49, v50);
            v51 = (*(*v7 + 8))(v7);
            if (v51)
            {
              v52 = v51;
              CA::Render::Context::add_image_queue(v51, *(v6 + 56));
              if (atomic_fetch_add(v52 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v52 + 16))(v52);
              }
            }

            v14 = *(v6 + 56);
            if (v14)
            {
              v53 = (v14 + 8);
              if (!atomic_fetch_add((v14 + 8), 1u))
              {
                v14 = 0;
                atomic_fetch_add(v53, 0xFFFFFFFF);
              }
            }

            goto LABEL_77;
          }

          v14 = 0;
          *(v6 + 56) = 0;
        }

        else
        {
          v14 = 0;
        }

LABEL_77:
        os_unfair_lock_unlock((v6 + 16));
        return v14;
      }
    }
  }

  return 0;
}