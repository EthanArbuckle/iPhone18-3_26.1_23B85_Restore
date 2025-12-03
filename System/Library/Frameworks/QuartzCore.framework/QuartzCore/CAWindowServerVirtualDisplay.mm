@interface CAWindowServerVirtualDisplay
- (CAWindowServerVirtualDisplay)initWithOptions:(id)options;
@end

@implementation CAWindowServerVirtualDisplay

- (CAWindowServerVirtualDisplay)initWithOptions:(id)options
{
  v57 = *MEMORY[0x1E69E9840];
  if (![options objectForKeyedSubscript:@"kCAVirtualDisplayWidth"] || !objc_msgSend(options, "objectForKeyedSubscript:", @"kCAVirtualDisplayHeight"))
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v9 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buffer = 0;
      _os_log_error_impl(&dword_183AA6000, v9, OS_LOG_TYPE_ERROR, "kCAVirtualDisplayWidth and kCAVirtualDisplayHeight are required", buffer, 2u);
    }

    return 0;
  }

  v5 = [objc_msgSend(options objectForKeyedSubscript:{@"kCAVirtualDisplayWidth", "unsignedIntegerValue"}];
  v6 = [objc_msgSend(options objectForKeyedSubscript:{@"kCAVirtualDisplayHeight", "unsignedIntegerValue"}];
  if ([options objectForKeyedSubscript:@"kCAVirtualDisplayUpdateRate"])
  {
    [objc_msgSend(options objectForKeyedSubscript:{@"kCAVirtualDisplayUpdateRate", "doubleValue"}];
    if (v7 == 0.0)
    {
      v8 = 0.0166666667;
    }

    else
    {
      v8 = 1.0 / v7;
    }
  }

  else
  {
    v8 = 0.0166666667;
  }

  v11 = [options objectForKeyedSubscript:@"kCAVirtualDisplayMinimumFrameDuration"];
  if (v11)
  {
    unsignedIntValue = [v11 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 1;
  }

  if ([options objectForKeyedSubscript:@"kCAVirtualDisplayPixelFormat"])
  {
    v13 = [objc_msgSend(options objectForKeyedSubscript:{@"kCAVirtualDisplayPixelFormat", "unsignedIntegerValue"}];
  }

  else
  {
    v13 = 1111970369;
  }

  v14 = [options objectForKeyedSubscript:@"kCAVirtualDisplayName"];
  v15 = [objc_msgSend(options objectForKeyedSubscript:{@"kCAVirtualDisplayPixelFormatFollowsMode", "BOOLValue"}];
  cf = v14;
  if (!v14)
  {
    cf = CFStringCreateWithFormat(0, 0, @"Virtual-%d", atomic_fetch_add(CA::WindowServer::VirtualDisplay::open(__CFString const*,unsigned int,unsigned int,double,unsigned int,BOOL,unsigned int)::count, 1u));
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v16 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x6520uLL, 0xDEEC3011uLL);
  v17 = v16;
  if (v16)
  {
    CA::WindowServer::Display::Display(v16, cf);
    *v17 = &unk_1EF1F4150;
    v18 = (v17 + 25672);
    v19 = 48;
    do
    {
      *(v18 - 2) = 0;
      *v18 = 0;
      v18 += 2;
      v19 -= 16;
    }

    while (v19);
    *(v17 + 25712) = 0;
    *(v17 + 25720) = 0;
    *(v17 + 25728) = v8;
    if (unsignedIntValue <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = unsignedIntValue;
    }

    *(v17 + 25736) = v20;
    *(v17 + 25744) = v8 / v20;
    *(v17 + 25756) = v13;
    *(v17 + 25760) = 0;
    *(v17 + 25768) = *(v17 + 25768) & 0xFE | v15;
    *(v17 + 25776) = 0u;
    *(v17 + 25792) = 0u;
    *(v17 + 25808) = 0;
    *(v17 + 25816) = 1065353216;
    *(v17 + 25856) = 0;
    *(v17 + 25824) = 0u;
    if (CA::Render::fourcc_to_format(v13) - 33 <= 2)
    {
      atomic_fetch_or((v17 + 640), 8u);
    }

    v40[0] = v5;
    v40[1] = v6;
    __asm { FMOV            V0.2D, #1.0 }

    *buffer = _Q0;
    CA::WindowServer::Display::set_size(v17, v40, v40, buffer, *&_Q0, v21, v22, v23, v24, v25, v26, v27);
    v33 = CFUUIDCreate(0);
    v34 = CFUUIDCreateString(0, v33);
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    *buffer = 0u;
    if (CFStringGetCString(v34, buffer, 256, 0x8000100u))
    {
      *(v17 + 25760) = strdup(buffer);
    }

    *(v17 + 672) = *(v17 + 672) & 0xE3FF | 0xC00;
    (*(*v17 + 2320))(v17, 2);
    CFRelease(v33);
    CFRelease(v34);
    os_unfair_lock_lock((v17 + 756));
    v35 = *(v17 + 768);
    atomic_store(1u, (v35 + 4));
    atomic_store(1u, (v35 + 5));
    os_unfair_lock_unlock((v17 + 756));
  }

  if (!v14)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    v36 = (*(*v17 + 1656))(v17);
    if (v36)
    {
      v37 = v36;
      CA::WindowServer::Server::attach_contexts(v36);
      v39.receiver = self;
      v39.super_class = CAWindowServerVirtualDisplay;
      self = [(CAWindowServerDisplay *)&v39 _initWithCADisplayServer:v37];
      if (!self)
      {
        (**v37)(v37);
        (*(*v37 + 112))(v37);
      }

      return self;
    }

    return 0;
  }

  return self;
}

@end