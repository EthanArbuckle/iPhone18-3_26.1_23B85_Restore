uint64_t CA::OGL::MetalContext::begin_rendering(uint64_t a1, float16x4_t *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 3936);
  *(a1 + 3936) = v4 & 0xFF7F;
  if (byte_1ED4E985F == 1 && (v4 & 0x40) == 0)
  {
    if (x_log_get_metal_perf(void)::once != -1)
    {
      dispatch_once(&x_log_get_metal_perf(void)::once, &__block_literal_global_10_8314);
    }

    v20 = x_log_get_metal_perf(void)::log;
    *(a1 + 5184) = mach_continuous_time();
    v21 = os_signpost_id_generate(v20);
    *(a1 + 5192) = v21;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v22 = v21;
      if (os_signpost_enabled(v20))
      {
        v23 = *(a1 + 8);
        v24 = *(a1 + 636);
        *buf = 67240706;
        *v27 = v23;
        *&v27[4] = 1026;
        *&v27[6] = v24;
        *&v27[10] = 2114;
        *&v27[12] = _MXSignpostMetricsSnapshot();
        _os_signpost_emit_with_name_impl(&dword_183AA6000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v22, "Rendering", "context=%{public,name=context}u update=0x%{public,name=update}x\n%{public, signpost:metrics}@", buf, 0x18u);
      }
    }
  }

  if (*(a1 + 3608))
  {
    if ((*(a1 + 3936) & 4) == 0)
    {
      v5 = *(a1 + 600);
      if (v5)
      {
        v6 = (*(*v5 + 16))(v5);
        if (v6)
        {
          if ((*(v6 + 672) & 0x1C00) == 0)
          {
            [*(a1 + 3600) setDefaultCaptureScope:*(a1 + 3608)];
          }
        }
      }

      *(a1 + 3936) |= 4u;
    }

    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    if (!*&dword_1ED4E96F0 || ([*(a1 + 3600) isCapturing] & 1) != 0)
    {
      goto LABEL_28;
    }

    if ([*(a1 + 3600) supportsDestination:2])
    {
      v7 = objc_opt_new();
      [v7 setDateFormat:@"yyyyMMdd-HHmmssSSS"];
      v8 = -[NSString stringByAppendingPathComponent:](NSTemporaryDirectory(), "stringByAppendingPathComponent:", [MEMORY[0x1E696AEC0] stringWithFormat:@"CoreAnimation-%@.gputrace", objc_msgSend(v7, "stringFromDate:", objc_msgSend(MEMORY[0x1E695DF00], "date"))]);
      v9 = objc_opt_new();
      [v9 setCaptureObject:*(a1 + 3512)];
      [v9 setDestination:2];
      [v9 setOutputURL:{objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithPath:", v8)}];
      v25 = 0;
      if ([*(a1 + 3600) startCaptureWithDescriptor:v9 error:&v25])
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v10 = x_log_get_ogl_metal(void)::log;
        if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          if (initialized[0] != -1)
          {
            dispatch_once_f(initialized, 0, init_debug);
          }

          v11 = *&dword_1ED4E96F0;
          v12 = [(NSString *)v8 UTF8String];
          *buf = 67109378;
          *v27 = v11;
          *&v27[4] = 2080;
          *&v27[6] = v12;
          _os_log_impl(&dword_183AA6000, v10, OS_LOG_TYPE_DEFAULT, "Capturing %d GPU frames to %s\n", buf, 0x12u);
        }

        goto LABEL_28;
      }

      if (x_log_get_ogl_metal(void)::once != -1)
      {
        dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
      }

      v17 = x_log_get_ogl_metal(void)::log;
      if (!os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      v19 = [objc_msgSend(v25 "localizedDescription")];
      *buf = 136315138;
      *v27 = v19;
      v14 = "Unable to capture to GPU trace file: %s\n";
      v15 = v17;
      v16 = 12;
    }

    else
    {
      if (x_log_get_ogl_metal(void)::once != -1)
      {
        dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
      }

      v13 = x_log_get_ogl_metal(void)::log;
      if (!os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v14 = "Capture to a GPU trace file is not supported. Try setting env var: METAL_CAPTURE_ENABLED=1\n";
      v15 = v13;
      v16 = 2;
    }

    _os_log_error_impl(&dword_183AA6000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
LABEL_28:
    [*(a1 + 3608) beginScope];
  }

  *(a1 + 3920) = 1;
  return CA::OGL::Context::begin_rendering(a1, a2);
}

uint64_t CA::OGL::Context::begin_rendering(uint64_t a1, float16x4_t *a2)
{
  for (i = 0; i != 93; ++i)
  {
    *(a1 + 4 * i + 884) = CAGetDebugValueFloat(i);
  }

  *(a1 + 1368) = 0;
  v5 = *(a1 + 24);
  *(v5 + 496) = 0;
  *(v5 + 464) = 0u;
  *(v5 + 480) = 0u;
  *(v5 + 432) = 0u;
  *(v5 + 448) = 0u;
  *(v5 + 400) = 0u;
  *(v5 + 416) = 0u;
  *(v5 + 368) = 0u;
  *(v5 + 384) = 0u;
  *(v5 + 336) = 0u;
  *(v5 + 352) = 0u;
  *(v5 + 304) = 0u;
  *(v5 + 320) = 0u;
  *(v5 + 272) = 0u;
  *(v5 + 288) = 0u;
  *(v5 + 240) = 0u;
  *(v5 + 256) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *v5 = 0u;
  v6 = *(a1 + 16);
  *(v6 + 496) = 0;
  *(v6 + 464) = 0u;
  *(v6 + 480) = 0u;
  *(v6 + 432) = 0u;
  *(v6 + 448) = 0u;
  *(v6 + 400) = 0u;
  *(v6 + 416) = 0u;
  *(v6 + 368) = 0u;
  *(v6 + 384) = 0u;
  *(v6 + 336) = 0u;
  *(v6 + 352) = 0u;
  *(v6 + 304) = 0u;
  *(v6 + 320) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0u;
  *(v6 + 240) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 208) = 0u;
  *(v6 + 224) = 0u;
  *(v6 + 176) = 0u;
  *(v6 + 192) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *v6 = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 65) &= ~1u;
  *(a1 + 64) = 0;
  *(a1 + 104) = (*(*a1 + 232))(a1, 3);
  (*(*a1 + 280))(a1);
  result = (*(*a1 + 232))(a1, 8);
  *(a1 + 108) = result == 0;
  v8 = *(a1 + 16);
  *(v8 + 96) = xmmword_183E21110;
  *(v8 + 112) = xmmword_183E21110;
  *(v8 + 128) = xmmword_183E21110;
  *(v8 + 497) &= ~1u;
  v9 = *(a1 + 16);
  v9[31].i8[0] = a2[10].i8[0];
  v9[18] = vcvtq_f32_f16(a2[5]);
  v9[19] = vcvtq_f32_f16(a2[6]);
  *&v9[17].u32[2] = a2[7];
  v10 = a2[1];
  if (v10.i8[0])
  {
    v11 = *&v10 != 1;
  }

  else
  {
    v11 = *(*&v10 + 4) == 12;
  }

  if (v11)
  {
    v12 = 24;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 1384) = v12 | *(a1 + 1384) & 0xFFE7;
  *(a1 + 656) = a2;
  return result;
}

double CA::OGL::MetalContext::init_state(CA::OGL::MetalContext *this)
{
  if (!*(this + 84))
  {
    __assert_rtn("init_state", "ogl-metal.mm", 4917, "current_surface () && no such thing as current fbo");
  }

  *(*(this + 3) + 16) = 0;
  *(*(this + 3) + 17) = 0;
  *(*(this + 3) + 18) = 0;
  *(*(this + 3) + 19) = 0;
  *(*(this + 3) + 20) = 0;
  v1 = *(this + 3);
  *(v1 + 496) = 1;
  *(v1 + 96) = xmmword_183E21110;
  *(v1 + 112) = xmmword_183E21110;
  *(v1 + 128) = xmmword_183E21110;
  *(this + 65) &= ~1u;
  result = NAN;
  *(this + 7) = -1;
  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::begin_update(uint64_t this, CA::Render::Update *a2)
{
  v102 = *MEMORY[0x1E69E9840];
  v2 = this + 25558;
  if (*(this + 29523))
  {
    return this;
  }

  v4 = this;
  if ((*(a2 + 1378) & 4) != 0)
  {
    goto LABEL_6;
  }

  if (*(this + 656) && CA::WindowServer::Display::is_enabled_for_vsync_render(this))
  {
    if ((*(a2 + 1378) & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    if (CA::WindowServer::Display::is_enabled_for_replay_render_with_mode(v4))
    {
      goto LABEL_8;
    }
  }

  this = (*(*v4 + 2272))(v4);
  if (!this)
  {
    return this;
  }

LABEL_8:
  if (*(v2 + 3964) == 1)
  {
    *(v2 + 3950) = 1;
    *(a2 + 172) &= ~0x80000uLL;
  }

  CA::WindowServer::IOMFBDisplay::mark_buffers_non_static(v4, *(a2 + 40));
  CA::WindowServer::IOMFBDisplay::update_color_matrix(v4, *(a2 + 10));
  v5 = *(v2 + 3979);
  v98 = 0;
  v99 = 0x3F80000000000000;
  v100 = 0;
  v101 = 0x3F80000000000000;
  __s2 = 1065353216;
  *(v2 + 3979) = memcmp((v4 + 27008), &__s2, 0x24uLL) != 0;
  if ((*(v4 + 904) & 0x10) == 0)
  {
    goto LABEL_11;
  }

  v7 = *(a2 + 4);
  if ((v7 & 1) == 0)
  {
    if (*(v7 + 4) != 6)
    {
      goto LABEL_16;
    }

LABEL_11:
    v6 = 0;
    goto LABEL_19;
  }

  if (v7 == 1)
  {
    goto LABEL_11;
  }

LABEL_16:
  if (CADeviceNeedsSurfaceAlphaUnpremultiply::once != -1)
  {
    dispatch_once(&CADeviceNeedsSurfaceAlphaUnpremultiply::once, &__block_literal_global_92);
  }

  v6 = CADeviceNeedsSurfaceAlphaUnpremultiply::needs;
LABEL_19:
  *(v2 + 3996) = v6 & 1;
  v8 = (*(*v4 + 952))(v4);
  v9 = CA::WindowServer::Display::edr_headroom(v4);
  *(v2 + 3993) = 0;
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  v10 = *(&xmmword_1ED4E96DC + 2);
  if (*(v2 + 3937) & 1) != 0 || (*(v4 + 672) & 0x1C00) == 0x1000 || (BYTE3(xmmword_1ED4E982C))
  {
    goto LABEL_30;
  }

  v11 = *(&xmmword_1ED4E96DC + 3);
  if (CADeviceNeedsLumaBoost::once != -1)
  {
    dispatch_once(&CADeviceNeedsLumaBoost::once, &__block_literal_global_67);
  }

  if (CADeviceNeedsLumaBoost::needs_luma_bost != 1 || (v12 = v9 * v8, (v12 / *(a2 + 101)) >= v11) || ((*(*v4 + 864))(v4) & 1) != 0 || *(v4 + 40))
  {
LABEL_30:
    *(v2 + 1274) = 1065353216;
LABEL_31:
    v13 = 0;
    *(v2 + 3995) = 0;
    *(v2 + 1278) = 0;
    *(v2 + 1290) = 0;
    goto LABEL_32;
  }

  v56 = CA::WindowServer::Display::Mode::operator==(*(v4 + 656), *(v4 + 664));
  v57 = (v2 + 1274);
  *(v2 + 1274) = 1065353216;
  if (!v56)
  {
    goto LABEL_31;
  }

  v58 = IOMobileFramebufferCopyProperty();
  if (v58)
  {
    v59 = v58;
    valuePtr.i32[0] = 0;
    CFNumberGetValue(v58, kCFNumberIntType, &valuePtr);
    CFRelease(v59);
    v60 = valuePtr.i32[0] * 0.000015259;
    *v57 = v60;
  }

  else
  {
    v60 = *v57;
  }

  v75 = (v2 + 1282);
  v76 = (v60 * v12) / *(a2 + 101);
  v77 = 1.0;
  if (v76 >= v10)
  {
    v77 = 0.0;
    if (v76 <= v11 && v10 != v11)
    {
      v79 = (((((((v76 * 0.000008375) + -0.00027092) * v76) + 0.0038907) * v76) + -0.094163) * v76) + 1.156;
      if (v79 > 1.0)
      {
        v79 = 1.0;
      }

      if (v79 >= 0.0)
      {
        v77 = v79;
      }

      else
      {
        v77 = 0.0;
      }
    }
  }

  v80 = *(v2 + 3994);
  v81 = *v75;
  v82 = *(v4 + 26296);
  *(v2 + 3994) = v82 != 0;
  if (v82)
  {
    *(v2 + 1286) = 0;
  }

  else
  {
    if ((v80 & 1) != 0 || (*(v2 + 3995) & 1) == 0)
    {
      v83 = (v2 + 1290);
      v84 = 2;
    }

    else
    {
      v83 = (v2 + 1290);
      v84 = 1;
    }

    *v83 = v84;
  }

  v85 = (*(*v4 + 760))(v4) * 0.666666667;
  v86 = *(v2 + 1290);
  v87 = (v2 + 1286);
  v88 = *(v2 + 1286);
  if (v86 == 2)
  {
    v88 = v88 + v85;
  }

  else if (v86 == 1)
  {
    v88 = v88 - v85;
  }

  v89 = 1.0;
  v90 = v88 > 1.0 || v88 < 0.0;
  if (v88 < 0.0 && v88 <= 1.0)
  {
    v89 = 0.0;
  }

  if (v90)
  {
    v88 = v89;
  }

  *v87 = v88;
  *v75 = v88 * v77;
  *(v2 + 3995) = 0;
  if (CADeviceSupportsAndromeda::once != -1)
  {
    dispatch_once(&CADeviceSupportsAndromeda::once, &__block_literal_global_95);
  }

  if (CADeviceSupportsAndromeda::supports_andromeda)
  {
    v91 = (*(*v4 + 1272))(v4);
    v92 = *v75;
    if ((LODWORD(v91) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      v93 = 1.0 - v91;
      if (v93 > 1.0)
      {
        v93 = 1.0;
      }

      if (v93 < 0.0)
      {
        v93 = 0.0;
      }

      v92 = v92 * v93;
      *v75 = v92;
    }
  }

  else
  {
    v92 = *v75;
  }

  *(v2 + 1278) = (*(a2 + 101) * v11) / *v57;
  v13 = v92 == 0.0;
  if (v92 == 0.0 || *v87 == 0.0 || *v87 == 1.0)
  {
    *(v2 + 1290) = 0;
  }

  if (v81 != 0.0 || v92 == 0.0)
  {
    if (v81 == 0.0)
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

LABEL_32:
  if (*(v2 + 3999) != 1)
  {
    goto LABEL_38;
  }

  v14 = *(v2 + 3946);
  if (*(v2 + 3947) != v14)
  {
    LOBYTE(v15) = *(v2 + 3938);
    goto LABEL_37;
  }

  v15 = *(v2 + 3938);
  if (*(v2 + 3944) != v15)
  {
LABEL_37:
    *(v2 + 3947) = v14;
    *(v2 + 3944) = v15;
    *(v2 + 4000) = 1;
    *(v2 + 935) = 1;
  }

LABEL_38:
  v16 = *(v2 + 3948);
  if (*(v2 + 3949) != v16)
  {
    *(v2 + 3949) = v16;
    *(v2 + 4002) = 1;
  }

  v17 = 0;
  v18 = *(a2 + 38);
  v19 = *(v4 + 26296);
  if (v19 && (v18 & 0x200000) == 0)
  {
    if ((v18 & 4) != 0)
    {
      goto LABEL_48;
    }

    if ((v18 & 2) == 0)
    {
      v13 = 1;
    }

    if (v13 || (*v2 & 1) != 0 || (*(v2 + 3964) & 1) != 0 || (*(v4 + 640) & 4) != 0 && CA::WindowServer::Display::clones_support_detaching(*(v4 + 40)) && (v19 = *(v4 + 26296), (v55 = *(*v19 + 40)) != 0) && (CA::Render::LayerNode::clear_above_and_black_below(v55, 1, v53, v54) & 1) == 0)
    {
LABEL_48:
      CA::WindowServer::IOMFBDisplay::release_detached_handle(v19);
      *(v19 + 292) = *(v19 + 292) & 0xFC | 1;
      *(v2 + 3936) = 1;
      *(v2 + 1130) = *(v2 + 1132);
      v21 = *(v19 + 112);
      v22 = vceqzq_f64(v21);
      if ((vorrq_s8(vdupq_laneq_s64(v22, 1), v22).u64[0] & 0x8000000000000000) != 0 || (v23 = vceqq_f64(v21, v21), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v23), 1), v23).u64[0] & 0x8000000000000000) != 0))
      {
        valuePtr = 0uLL;
      }

      else
      {
        v24 = *(v19 + 96);
        v25 = vcvtmq_s64_f64(vmaxnmq_f64(v24, vdupq_n_s64(0xC1BFFFFFFF000000)));
        valuePtr = vuzp1q_s32(v25, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v24, v21), vdupq_n_s64(0x41C0000000000000uLL))), v25));
      }

      for (i = *(v4 + 26288); i; i = *i)
      {
        if (i[2])
        {
          CA::shape_union(i + 2, &valuePtr, v20);
        }
      }

      *v2 = 0;
      v27 = *(a2 + 38);
      if ((v27 & 0x8000) != 0)
      {
        *(a2 + 38) = v27 | 0x10000;
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
    }
  }

  pthread_mutex_lock((v4 + 25848));
  v28 = v4 + 25912;
  v29 = v4 + 25912 + 48 * *(v2 + 274);
  v95 = (a2 + 16);
  if (v5 == *(v2 + 3979))
  {
    v30 = (a2 + 16);
  }

  else
  {
    v30 = (v4 + 216);
  }

  v31 = *v30;
  updated = CA::WindowServer::IOMFBDisplay::update_display_edr_factor(v4);
  v34 = *(a2 + 38);
  *(v29 + 40) &= ~0x10u;
  if ((v18 & 0x200000) != 0)
  {
    if (v17)
    {
      __assert_rtn("begin_update", "windowserver-iomfb-display.cpp", 3389, "!invalidated_detached");
    }

    v35 = *(v28 + 48 * *(v2 + 278) + 8);
    if (v35)
    {
      ++*(v35 + 8);
      *(v29 + 8) = v35;
      *(v29 + 40) |= 0x10u;
      kdebug_trace();
    }

    goto LABEL_101;
  }

  v36 = updated;
  if (v31)
  {
    if (v31 != 1)
    {
      goto LABEL_96;
    }
  }

  else if (*(v31 + 4) != 6)
  {
    goto LABEL_96;
  }

  if ((*(*v4 + 1576))(v4) & 1) != 0 || (*(v4 + 640) & 4) != 0 || ((v36 | (*(*v4 + 2312))(v4)) & 1) != 0 || (*(a2 + 307))
  {
LABEL_96:
    if ((v34 & 0x100000) == 0)
    {
      for (j = *(v4 + 26288); j; j = *j)
      {
        if (j[2])
        {
          CA::shape_union(j + 2, v31, v33);
        }
      }
    }

    goto LABEL_101;
  }

  if (*(v2 + 282) < 2u)
  {
    v37 = 1;
  }

  else
  {
    v37 = v17;
  }

  if ((v37 & 1) == 0)
  {
    v38 = *(v28 + 48 * *(v2 + 278) + 8);
    if (v38)
    {
      if ((*(v38 + 68) & 0x20) == 0 && !*(v38 + 24))
      {
        v39 = *(v38 + 32);
        if (v39)
        {
          v40 = *(v39 + 236);
          v41 = (v40 & 0x8000000) == 0 || (*(v4 + 905) & 4) == 0;
          if (v41 && (v40 & 0x200000000) == 0)
          {
            if (*(v38 + 16))
            {
              if ((*(v38 + 68) & 8) == 0 && *(v38 + 64) == *(v2 + 1282))
              {
                v43 = *(v38 + 32);
                if ((CA::WindowServer::IOMFBDisplay::edr_factor_changed(v4, v38, a2) & 1) == 0 && (*(*v43 + 232))(v43) == *(a2 + 40))
                {
                  ++*(v38 + 8);
                  *(v29 + 8) = v38;
                  *(v29 + 40) |= 0x10u;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_101:
  buffer = CA::WindowServer::IOMFBDisplay::allocate_buffer(v4, v29, (*(v4 + 904) >> 10) & 1, *(a2 + 40));
  v47 = buffer;
  if ((v34 & 0x100000) != 0)
  {
    v48 = (buffer + 4);
    if (*(v47 + 2))
    {
      CA::shape_union(v48, v31, v46);
    }
  }

  v49 = *(v47 + 2);
  if (v49 && (v50 = *(v47 + 4)) != 0 && (*(v50 + 240) & 2) == 0 && (CA::WindowServer::IOMFBDisplay::edr_factor_changed(v4, v47, a2) & 1) == 0 && (v47[17] & 8) == 0 && (!CA::WindowServer::IOMFBDisplay::use_assembly_surface(v4) || *(v47 + 5)) && *(v47 + 16) == *(v2 + 1282))
  {
    v51 = (*(**(v47 + 4) + 232))(*(v47 + 4)) != *(a2 + 40);
    if ((v18 & 0x200000) != 0)
    {
      goto LABEL_113;
    }
  }

  else
  {
    v51 = 1;
    if ((v18 & 0x200000) != 0)
    {
LABEL_113:
      v49 = 1;
      v52 = (v4 + 216);
      goto LABEL_145;
    }
  }

  v52 = (v4 + 216);
  if (!v51)
  {
    v62 = *(v47 + 4);
    if (!v62)
    {
      goto LABEL_144;
    }

    v63 = *(v62 + 64);
    if (v63 != 1647534392 && v63 != 643969848)
    {
      goto LABEL_144;
    }

    v65 = *(a2 + 38);
    if ((v65 & 0x2000) != 0)
    {
      LODWORD(v66) = 1;
    }

    else
    {
      LODWORD(v66) = 1;
      if ((v65 & 2) == 0 && (BYTE10(xmmword_1ED4E980C) & 1) == 0)
      {
        v66 = (*(v62 + 236) >> 33) & 1;
      }
    }

    if (v66 == ((*(v62 + 236) >> 30) & 1))
    {
LABEL_144:
      v51 = 0;
      goto LABEL_145;
    }
  }

  v49 = *(v4 + 216);
  v61 = *v95;
  if (*v95)
  {
    if (v61 != 1)
    {
      goto LABEL_127;
    }

    goto LABEL_126;
  }

  if (*(v61 + 4) == 6)
  {
LABEL_126:
    *(v2 + 3998) = 1;
  }

LABEL_127:
  if ((*(v29 + 40) & 0x10) != 0)
  {
    --v47[2];
    *(v29 + 8) = 0;
    v47 = CA::WindowServer::IOMFBDisplay::allocate_buffer(v4, v29, (*(v4 + 904) >> 10) & 1, *(a2 + 40));
    *(v29 + 40) &= ~0x10u;
  }

  v51 = 1;
LABEL_145:
  *(v47 + 68) &= ~0x20u;
  v47[16] = *(v2 + 1282);
  CA::Render::Update::set_shape(a2, v49);
  v67 = *(v47 + 3);
  if (v67)
  {
    v68 = CA::Shape::Union(v49, v67);
    CA::Render::Update::set_shape(a2, v68);
    CA::Shape::unref(v68);
    CA::Shape::unref(*(v47 + 3));
    *(v47 + 3) = 0;
  }

  v69 = *(v47 + 68);
  *(v47 + 68) = v69 & 0xEF;
  if ((ca_debug_options & 1) == 0 && (byte_1ED4E981F & 1) == 0)
  {
    goto LABEL_149;
  }

  if (ca_debug_options)
  {
    v94 = *(v47 + 2);
    if ((byte_1ED4E981F & 1) == 0)
    {
      goto LABEL_205;
    }
  }

  else
  {
    v94 = 0;
    if ((byte_1ED4E981F & 1) == 0)
    {
      goto LABEL_205;
    }
  }

  if (v51)
  {
    *(v47 + 68) = v69 | 0x10;
    *(a2 + 172) |= 0x20000000000000uLL;
    v94 = v49;
  }

LABEL_205:
  if (v94)
  {
    if (v94)
    {
      if (v94 != 1)
      {
LABEL_210:
        *(v47 + 3) = CA::Shape::ref(v94, v67);
        CA::Render::Update::set_color_flush_shape(a2, v94);
      }
    }

    else if (*(v94 + 4) != 6)
    {
      goto LABEL_210;
    }
  }

LABEL_149:
  v70 = CA::Shape::intersect(v49, *v52);
  v71 = CA::Shape::area(v70);
  v72 = fminf(v71 / CA::Shape::area(*v52), 1.0);
  CA::Shape::unref(v70);
  if (v72 <= 0.0)
  {
    v73 = 0;
  }

  else
  {
    v73 = (ceilf(v72 * 10.0) + -1.0);
    ++*(v4 + 4 * v73 + 25576);
  }

  *(v2 + 98) = v73;
  v74 = mach_absolute_time();
  *(v4 + 26776) = CATimeWithHostTime(v74);
  CA::WindowServer::IOMFBDisplay::update_brightness_deadline(v4, *(a2 + 10));
  return pthread_mutex_unlock((v4 + 25848));
}

_DWORD *CA::WindowServer::IOMFBDisplay::allocate_buffer(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    v7 = *(a1 + 26288);
    if (!v7)
    {
      goto LABEL_17;
    }

    v4 = 0;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v11 = v7[4];
      if ((!v11 || (*(*v11 + 232))(v11) == a4 && (!a3 || (*(v7[4] + 239) & 8) == 0)) && !*(v7 + 2))
      {
        v12 = v7[2];
        if (v12)
        {
          v13 = CA::Shape::area(v12);
          if (v13 < v10)
          {
            v4 = v7;
            v10 = v13;
          }
        }

        else
        {
          v10 = 0;
          v4 = v7;
        }
      }

      v7 = *v7;
    }

    while (v7);
    if (v4)
    {
      ++v4[2];
    }

    else
    {
LABEL_17:
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v4 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x48uLL, 0x1020040B1711252uLL);
      *v4 = *(a1 + 26288);
      *(a1 + 26288) = v4;
      v4[2] = 1;
    }

    *(a2 + 8) = v4;
  }

  return v4;
}

CA::Shape *CA::Render::Update::set_shape(CA::Render::Update *this, const CA::Shape *a2)
{
  result = *(this + 2);
  if (result != a2)
  {
    CA::Shape::unref(result);
    result = CA::Shape::ref(a2, v5);
    *(this + 2) = result;
  }

  return result;
}

void CA::WindowServer::IOMFBDisplay::update_frame_interval_reason_statistics(CA::WindowServer::IOMFBDisplay *this, double a2, double a3, unsigned int *a4, unsigned int a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = COERCE_DOUBLE(atomic_load(this + 3548));
  if (v5 > a3)
  {
    a3 = v5;
  }

  v6 = atomic_load(*(this + 96));
  if (v6 == 1)
  {
    v7 = a2 - a3;
    if (a2 - a3 >= 0.0 && v7 >= (*(*this + 776))(this) + -0.001)
    {
      v11 = v7 + -0.001;
      if (v7 + -0.001 >= 0.00833333333)
      {
        if (v11 >= 0.0125)
        {
          if (v11 >= 0.0166666667)
          {
            v12 = v11 >= 0.0208333333;
            if (v11 < 0.0208333333)
            {
              v13 = 0;
            }

            else
            {
              v13 = -1;
            }
          }

          else
          {
            v12 = 0;
            v13 = 4;
          }
        }

        else
        {
          v12 = 0;
          v13 = 8;
        }
      }

      else
      {
        v12 = 0;
        v13 = 12;
      }

      v14 = (v11 * 1000.0 + 1.0);
      os_unfair_lock_lock(this + 7074);
      os_unfair_lock_lock(this + 7082);
      memset(v30, 0, sizeof(v30));
      v31 = 1065353216;
      v15 = *(this + 3538);
      for (i = *(this + 3539); v15 != i; v15 += 28)
      {
        if ((*(v15 + 24) & 1) == 0)
        {
          for (j = 8; j != 24; j += 4)
          {
            v17 = *(v15 + j);
            v28 = v17;
            if (!v17)
            {
              break;
            }

            v29 = &v28;
            v18 = std::__hash_table<std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 3542, v17);
            v19 = v18;
            if (!v12)
            {
              ++*(v18 + v13 + 20);
            }

            v20 = v28;
            if (!std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v30, v28))
            {
              *(v19 + 9) += v14;
              std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(v30, v20);
            }
          }
        }
      }

      v21 = a4;
      if (a5)
      {
        v22 = a5;
        do
        {
          v23 = *v21++;
          v28 = v23;
          v29 = &v28;
          v24 = std::__hash_table<std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 3542, v23);
          v25 = v24;
          if (!v12)
          {
            ++*(v24 + v13 + 20);
          }

          if (!std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v30, v28))
          {
            *(v25 + 9) += v14;
          }

          --v22;
        }

        while (v22);
      }

      v29 = &kCAHighFrameRateReasonTotal;
      v26 = std::__hash_table<std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 3542, 0xFFFFFFFF);
      if (!v12)
      {
        ++*(v26 + v13 + 20);
      }

      *(v26 + 9) += v14;
      std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v30);
      os_unfair_lock_unlock(this + 7082);
      os_unfair_lock_unlock(this + 7074);
    }
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,CA::WindowServer::IOMFBDisplay::FrameRateBuckets>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
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
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

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
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t CA::WindowServer::IOMFBDisplay::edr_factor_changed(CA::WindowServer::IOMFBDisplay *a1, uint64_t a2, uint64_t a3)
{
  CA::Render::Update::render_edr_factor();
  v7 = v6;
  v8 = *(a3 + 404);
  v9 = *(a2 + 32);
  if (*(a2 + 40))
  {
    if (CA::WindowServer::IOMFBDisplay::use_assembly_surface(a1))
    {
      v9 = *(a2 + 40);
    }

    v10 = v9;
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    v10 = *(a2 + 32);
    if (!v9)
    {
      return 0;
    }
  }

  if (((*(*a1 + 1552))(a1) & 1) == 0 && (1.0 / v8) != (*(*v10 + 200))(v10))
  {
    return 1;
  }

  result = (*(*a1 + 1552))(a1);
  if (!result)
  {
    return result;
  }

  return (1.0 / v7) != v10[17];
}

double *CA::WindowServer::IOMFBDisplay::update_brightness_deadline(double *this, double a2)
{
  v2 = this[3348];
  if (v2 != 0.0 && v2 <= a2)
  {
    v4 = this;
    CA::WindowServer::IOMFBDisplay::save_brightness_preferences(this, 0);
    (*(*v4 + 984))(v4);
    this = (*(*v4 + 960))(v4);
    v4[3348] = 0.0;
  }

  return this;
}

void CA::Render::Updater::prepare_transform_layers(uint64_t a1, CA::Render::LayerNode *a2)
{
  v2 = *(a2 + 1);
  if (v2 != a2)
  {
    do
    {
      v5 = *v2;
      v6 = *(v2 + 1);
      *(v5 + 8) = v6;
      *v6 = v5;
      *v2 = v2;
      *(v2 + 1) = v2;
      if ((*(*a1 + 1376) & 1) == 0 && (*(v2 + 27) & 4) == 0)
      {
        v7 = *(*(v2 + 4) + 152);
        if (v7)
        {
          v8 = v7[13];
          if ((v8 & 0x3C) != 0)
          {
            CA::Render::Updater::update_handle(*a1, v7, *(a1 + 64), *(a1 + 8));
            v9 = *(v2 + 4);
            v10 = *(v9 + 112);
            if ((*(v9 + 13) & 0x20) != 0)
            {
              if (v10)
              {
                v14 = *(v10 + 152);
                if (v14)
                {
                  CA::BoundsImpl::Union(v7 + 15, v14[15], v14[16]);
                }
              }
            }

            else if (v10)
            {
              v11 = *(v10 + 16);
              if (v11)
              {
                v12 = v10 + 24;
                do
                {
                  if (*v12)
                  {
                    v13 = *(*v12 + 152);
                    if (v13)
                    {
                      CA::BoundsImpl::Union(v7 + 15, v13[15], v13[16]);
                    }
                  }

                  v12 += 8;
                  --v11;
                }

                while (v11);
              }
            }

            v8 = v7[13];
            v15 = v8 | 4;
            if ((v8 & 0x300) == 0)
            {
              v15 = v7[13];
            }

            v16 = *&v7[13] & 0x300 | v15 & 0x100;
            v17 = v15 | ((v15 & 0x100) >> 5);
            if (v16)
            {
              v8 = v17;
            }

            v7[12] = 0;
          }

          v7[13] = (v8 & 0xFFFFFFFFFFFFFFFDLL);
        }
      }

      *(v2 + 11) = 0;
      if (atomic_fetch_add(v2 + 4, 0xFFFFFFFF) == 1)
      {
        CA::Render::LayerNode::delete_node(v2, a2);
      }

      v2 = v6;
    }

    while (v6 != a2);
  }
}

BOOL CA::Shape::equal(CA::Shape *this, const CA::Shape *a2)
{
  if (this == a2)
  {
    return 1;
  }

  if ((a2 | this))
  {
    return 0;
  }

  v2 = *(this + 1);
  if (v2 != *(a2 + 1))
  {
    return 0;
  }

  v3 = (this + 12);
  v4 = (a2 + 12);
  v5 = v2 - 3;
  while (1)
  {
    result = v5 == 0;
    if (!v5)
    {
      break;
    }

    --v5;
    v8 = *v3++;
    v7 = v8;
    v9 = *v4++;
    if (v7 != v9)
    {
      return 0;
    }
  }

  return result;
}

double std::__introsort<std::_ClassicAlgPolicy,CA::Render::BackdropGroup::finalize_update(unsigned int,BOOL,void *)::$_0 &,CA::Render::BackdropGroup::Item *,false>(uint64_t a1, __int128 *a2, uint64_t a3, char a4, double result)
{
  while (2)
  {
    v210 = a2 - 360;
    v211 = a2 - 12;
    v209 = a2 - 552;
    v9 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v9;
          v10 = a2 - v9;
          v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 6);
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                v85 = *(*(v9 + 216) + 112);
                v86 = *(*(a2 - 21) + 112);
                if (v85 >= *(*(v9 + 24) + 112))
                {
                  if (v86 >= v85)
                  {
                    return result;
                  }

                  *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>((v9 + 192), v211).n128_u64[0];
                  if (*(*(v9 + 216) + 112) >= *(*(v9 + 24) + 112))
                  {
                    return result;
                  }

                  v88 = (v9 + 192);
                  v87 = v9;
                }

                else
                {
                  if (v86 < v85)
                  {
                    goto LABEL_112;
                  }

                  *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v9, (v9 + 192)).n128_u64[0];
                  if (*(*(a2 - 21) + 112) >= *(*(v9 + 216) + 112))
                  {
                    return result;
                  }

                  v87 = (v9 + 192);
LABEL_113:
                  v88 = a2 - 12;
                }

                *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v87, v88).n128_u64[0];
                return result;
              case 4:

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,CA::Render::BackdropGroup::finalize_update(unsigned int,BOOL,void *)::$_0 &,CA::Render::BackdropGroup::Item *,0>(v9, v9 + 192, v9 + 384, v211);
              case 5:

                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,CA::Render::BackdropGroup::finalize_update(unsigned int,BOOL,void *)::$_0 &,CA::Render::BackdropGroup::Item *,0>(v9, v9 + 192, v9 + 384, v9 + 576, v211);
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            if (v11 == 2)
            {
              if (*(*(a2 - 21) + 112) >= *(*(v9 + 24) + 112))
              {
                return result;
              }

LABEL_112:
              v87 = v9;
              goto LABEL_113;
            }
          }

          if (v10 <= 4607)
          {
            v89 = (v9 + 192);
            v91 = v9 == a2 || v89 == a2;
            if (a4)
            {
              if (!v91)
              {
                v92 = 0;
                v93 = v9;
                do
                {
                  v94 = v89;
                  v95 = *(v93 + 216);
                  if (*(v95 + 112) < *(*(v93 + 24) + 112))
                  {
                    v238 = *(v94 + 2);
                    v231 = *v94;
                    v96 = *(v93 + 224);
                    v97 = *(v93 + 240);
                    v98 = *(v93 + 256);
                    v99 = *(v93 + 272);
                    v100 = *(v93 + 288);
                    v101 = *(v93 + 304);
                    v246 = *(v93 + 320);
                    v253 = *(v93 + 336);
                    *v260 = *(v93 + 352);
                    v102 = v92;
                    *&v260[12] = *(v93 + 364);
                    while (1)
                    {
                      v103 = v102;
                      v104 = (v9 + v102);
                      v105 = v104[1];
                      v104[12] = *v104;
                      v104[13] = v105;
                      v106 = v104[3];
                      v104[14] = v104[2];
                      v104[15] = v106;
                      v107 = v104[5];
                      v104[16] = v104[4];
                      v104[17] = v107;
                      v108 = v104[7];
                      v104[18] = v104[6];
                      v104[19] = v108;
                      v109 = v104[8];
                      v110 = v104[9];
                      v111 = v104[10];
                      *(v104 + 364) = *(v104 + 172);
                      v104[21] = v110;
                      v104[22] = v111;
                      v104[20] = v109;
                      if (!v103)
                      {
                        break;
                      }

                      v112 = *(*(v104 - 21) + 112);
                      v102 = v103 - 192;
                      if (*(v95 + 112) >= v112)
                      {
                        v113 = (v9 + v103 + 128);
                        v114 = v9 + v102 + 192;
                        goto LABEL_135;
                      }
                    }

                    v113 = v104 + 8;
                    v114 = v9;
LABEL_135:
                    *v114 = v231;
                    *(v114 + 16) = v238;
                    *(v114 + 24) = v95;
                    *(v114 + 32) = v96;
                    *(v114 + 48) = v97;
                    *(v114 + 64) = v98;
                    *(v114 + 80) = v99;
                    *(v114 + 96) = v100;
                    *(v114 + 112) = v101;
                    result = *&v246;
                    *(v113 + 44) = *&v260[12];
                    v113[1] = v253;
                    v113[2] = *v260;
                    *v113 = v246;
                  }

                  v89 = v94 + 12;
                  v92 += 192;
                  v93 = v94;
                }

                while (v94 + 12 != a2);
              }
            }

            else if (!v91)
            {
              v189 = (v9 + 80);
              do
              {
                v190 = v89;
                v191 = *(a1 + 216);
                if (*(v191 + 112) < *(*(a1 + 24) + 112))
                {
                  v241 = *(v190 + 16);
                  v234 = *v190;
                  v192 = *(a1 + 224);
                  v193 = *(a1 + 240);
                  v194 = *(a1 + 256);
                  v195 = *(a1 + 272);
                  v196 = *(a1 + 288);
                  v197 = *(a1 + 304);
                  v249 = *(a1 + 320);
                  v256 = *(a1 + 336);
                  *v263 = *(a1 + 352);
                  v198 = v189;
                  *&v263[12] = *(a1 + 364);
                  do
                  {
                    v199 = v198;
                    v200 = *(v198 - 4);
                    v198[7] = *(v198 - 5);
                    v198[8] = v200;
                    v201 = *(v198 - 2);
                    v198[9] = *(v198 - 3);
                    v198[10] = v201;
                    v202 = *v198;
                    v198[11] = *(v198 - 1);
                    v198[12] = v202;
                    v203 = v198[2];
                    v198[13] = v198[1];
                    v198[14] = v203;
                    v204 = v198[3];
                    v205 = v198[4];
                    v206 = v198[5];
                    *(v198 + 284) = *(v198 + 92);
                    v198[16] = v205;
                    v198[17] = v206;
                    v198[15] = v204;
                    v207 = *(v198 - 31);
                    v198 -= 12;
                  }

                  while (*(v191 + 112) < *(v207 + 112));
                  v208 = v199 - 5;
                  *v208 = v234;
                  *(v208 + 2) = v241;
                  *(v208 + 3) = v191;
                  v208[2] = v192;
                  v208[3] = v193;
                  v208[4] = v194;
                  *v199 = v195;
                  v199[1] = v196;
                  v199[2] = v197;
                  result = *&v249;
                  *(v199 + 92) = *&v263[12];
                  v199[4] = v256;
                  v199[5] = *v263;
                  v199[3] = v249;
                }

                v89 = (v190 + 192);
                v189 += 12;
                a1 = v190;
              }

              while ((v190 + 192) != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v115 = (v11 - 2) >> 1;
              v116 = v115;
              do
              {
                v117 = v116;
                if (v115 >= v116)
                {
                  v118 = (2 * v116) | 1;
                  v119 = v9 + 192 * v118;
                  if (2 * v116 + 2 < v11)
                  {
                    v120 = *(*(v119 + 24) + 112);
                    v121 = *(*(v119 + 216) + 112);
                    v122 = v120 >= v121;
                    v123 = v120 >= v121 ? 0 : 192;
                    v119 += v123;
                    if (!v122)
                    {
                      v118 = 2 * v116 + 2;
                    }
                  }

                  v124 = v9 + 192 * v116;
                  v125 = *(v124 + 24);
                  if (*(*(v119 + 24) + 112) >= *(v125 + 112))
                  {
                    v239 = *(v124 + 16);
                    v232 = *v124;
                    v126 = *(v124 + 32);
                    v127 = *(v124 + 48);
                    v128 = *(v124 + 64);
                    v129 = *(v124 + 80);
                    v130 = *(v124 + 96);
                    v131 = *(v124 + 112);
                    *&v261[12] = *(v124 + 172);
                    v254 = *(v124 + 144);
                    *v261 = *(v124 + 160);
                    v247 = *(v124 + 128);
                    do
                    {
                      v132 = v124;
                      v124 = v119;
                      v133 = *(v119 + 16);
                      *v132 = *v119;
                      v132[1] = v133;
                      v132[2] = *(v119 + 32);
                      v132[3] = *(v119 + 48);
                      v132[4] = *(v119 + 64);
                      v132[5] = *(v119 + 80);
                      v132[6] = *(v119 + 96);
                      v132[7] = *(v119 + 112);
                      v134 = *(v119 + 128);
                      v135 = *(v119 + 144);
                      v136 = *(v119 + 160);
                      *(v132 + 172) = *(v119 + 172);
                      v132[9] = v135;
                      v132[10] = v136;
                      v132[8] = v134;
                      if (v115 < v118)
                      {
                        break;
                      }

                      v137 = (2 * v118) | 1;
                      v119 = v9 + 192 * v137;
                      v138 = 2 * v118 + 2;
                      if (v138 < v11)
                      {
                        v139 = *(*(v119 + 24) + 112);
                        v140 = *(*(v119 + 216) + 112);
                        v141 = v139 >= v140;
                        v142 = v139 >= v140 ? 0 : 192;
                        v119 += v142;
                        if (!v141)
                        {
                          v137 = v138;
                        }
                      }

                      v118 = v137;
                    }

                    while (*(*(v119 + 24) + 112) >= *(v125 + 112));
                    *v124 = v232;
                    *(v124 + 16) = v239;
                    *(v124 + 24) = v125;
                    *(v124 + 32) = v126;
                    *(v124 + 48) = v127;
                    *(v124 + 64) = v128;
                    *(v124 + 80) = v129;
                    *(v124 + 96) = v130;
                    *(v124 + 112) = v131;
                    *(v124 + 128) = v247;
                    *(v124 + 144) = v254;
                    *(v124 + 160) = *v261;
                    *(v124 + 172) = *&v261[12];
                  }
                }

                v116 = v117 - 1;
              }

              while (v117);
              v143 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 6);
              do
              {
                v144 = 0;
                v145 = a2;
                v224 = *v9;
                v225 = *(v9 + 16);
                v147 = *(v9 + 32);
                v146 = *(v9 + 40);
                v149 = *(v9 + 48);
                v148 = *(v9 + 56);
                v151 = *(v9 + 64);
                v150 = *(v9 + 72);
                v153 = *(v9 + 80);
                v152 = *(v9 + 88);
                v155 = *(v9 + 96);
                v154 = *(v9 + 104);
                v157 = *(v9 + 112);
                v156 = *(v9 + 120);
                *&v242[12] = *(v9 + 172);
                v240 = *(v9 + 144);
                *v242 = *(v9 + 160);
                v158 = v9;
                v233 = *(v9 + 128);
                do
                {
                  v159 = &v158[12 * v144];
                  v160 = v159 + 12;
                  v161 = (2 * v144) | 1;
                  v144 = 2 * v144 + 2;
                  if (v144 >= v143)
                  {
                    v144 = v161;
                  }

                  else
                  {
                    v162 = *(*(v159 + 27) + 112);
                    v163 = *(*(v159 + 51) + 112);
                    v164 = v159 + 24;
                    if (v162 >= v163)
                    {
                      v144 = v161;
                    }

                    else
                    {
                      v160 = v164;
                    }
                  }

                  v165 = v160[1];
                  *v158 = *v160;
                  v158[1] = v165;
                  v158[2] = v160[2];
                  v158[3] = v160[3];
                  v158[4] = v160[4];
                  v158[5] = v160[5];
                  v158[6] = v160[6];
                  v158[7] = v160[7];
                  v166 = v160[8];
                  v167 = v160[9];
                  v168 = v160[10];
                  *(v158 + 172) = *(v160 + 172);
                  v158[9] = v167;
                  v158[10] = v168;
                  v158[8] = v166;
                  v158 = v160;
                }

                while (v144 <= ((v143 - 2) >> 1));
                a2 -= 12;
                if (v160 == v145 - 12)
                {
                  *v160 = v224;
                  v160[1] = v225;
                  *(v160 + 4) = v147;
                  *(v160 + 5) = v146;
                  *(v160 + 6) = v149;
                  *(v160 + 7) = v148;
                  *(v160 + 8) = v151;
                  *(v160 + 9) = v150;
                  *(v160 + 10) = v153;
                  *(v160 + 11) = v152;
                  *(v160 + 12) = v155;
                  *(v160 + 13) = v154;
                  *(v160 + 14) = v157;
                  *(v160 + 15) = v156;
                  result = *&v233;
                  *(v160 + 172) = *&v242[12];
                  v160[9] = v240;
                  v160[10] = *v242;
                  v160[8] = v233;
                }

                else
                {
                  v169 = *(v145 - 11);
                  *v160 = *a2;
                  v160[1] = v169;
                  v160[2] = *(v145 - 10);
                  v160[3] = *(v145 - 9);
                  v160[4] = *(v145 - 8);
                  v160[5] = *(v145 - 7);
                  v160[6] = *(v145 - 6);
                  v160[7] = *(v145 - 5);
                  v170 = *(v145 - 4);
                  v171 = *(v145 - 3);
                  v172 = *(v145 - 2);
                  *(v160 + 172) = *(v145 - 20);
                  v160[9] = v171;
                  v160[10] = v172;
                  v160[8] = v170;
                  *a2 = v224;
                  *(v145 - 11) = v225;
                  *(v145 - 20) = v147;
                  *(v145 - 19) = v146;
                  *(v145 - 18) = v149;
                  *(v145 - 17) = v148;
                  *(v145 - 16) = v151;
                  *(v145 - 15) = v150;
                  *(v145 - 14) = v153;
                  *(v145 - 13) = v152;
                  *(v145 - 12) = v155;
                  *(v145 - 11) = v154;
                  *(v145 - 10) = v157;
                  *(v145 - 9) = v156;
                  result = *&v233;
                  *(v145 - 20) = *&v242[12];
                  *(v145 - 3) = v240;
                  *(v145 - 2) = *v242;
                  *(v145 - 4) = v233;
                  v173 = v160 - v9 + 192;
                  if (v173 >= 193)
                  {
                    v174 = (-2 - 0x5555555555555555 * (v173 >> 6)) >> 1;
                    v175 = v9 + 192 * v174;
                    v176 = *(v160 + 3);
                    if (*(*(v175 + 24) + 112) < *(v176 + 112))
                    {
                      v227 = *(v160 + 2);
                      v226 = *v160;
                      v177 = v160[2];
                      v178 = v160[3];
                      v179 = v160[4];
                      v180 = v160[5];
                      v181 = v160[6];
                      v182 = v160[7];
                      *&v262[12] = *(v160 + 172);
                      v255 = v160[9];
                      *v262 = v160[10];
                      v248 = v160[8];
                      do
                      {
                        v183 = v160;
                        v160 = v175;
                        v184 = *(v175 + 16);
                        *v183 = *v175;
                        v183[1] = v184;
                        v183[2] = *(v175 + 32);
                        v183[3] = *(v175 + 48);
                        v183[4] = *(v175 + 64);
                        v183[5] = *(v175 + 80);
                        v183[6] = *(v175 + 96);
                        v183[7] = *(v175 + 112);
                        v185 = *(v175 + 128);
                        v186 = *(v175 + 144);
                        v187 = *(v175 + 160);
                        *(v183 + 172) = *(v175 + 172);
                        v183[9] = v186;
                        v183[10] = v187;
                        v183[8] = v185;
                        if (!v174)
                        {
                          break;
                        }

                        v174 = (v174 - 1) >> 1;
                        v175 = v9 + 192 * v174;
                      }

                      while (*(*(v175 + 24) + 112) < *(v176 + 112));
                      *v160 = v226;
                      *(v160 + 2) = v227;
                      *(v160 + 3) = v176;
                      v160[2] = v177;
                      v160[3] = v178;
                      v160[4] = v179;
                      v160[5] = v180;
                      v160[6] = v181;
                      v160[7] = v182;
                      v160[8] = v248;
                      v160[9] = v255;
                      v160[10] = *v262;
                      result = *&v262[12];
                      *(v160 + 172) = *&v262[12];
                    }
                  }
                }
              }

              while (v143-- > 2);
            }

            return result;
          }

          v12 = v11 >> 1;
          v13 = v9 + 192 * (v11 >> 1);
          v14 = *(*(a2 - 21) + 112);
          if (v10 > 0x6000)
          {
            v15 = *(*(v13 + 24) + 112);
            if (v15 >= *(*(a1 + 24) + 112))
            {
              if (v14 >= v15 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v13, v211), *(*(v13 + 24) + 112) >= *(*(a1 + 24) + 112)))
              {
LABEL_26:
                v21 = a1 + 192 * v12;
                v22 = v21 - 192;
                v23 = *(*(v21 - 168) + 112);
                v24 = *(*v210 + 112);
                if (v23 >= *(*(a1 + 216) + 112))
                {
                  if (v24 >= v23 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v22, a2 - 24), *(*(v22 + 24) + 112) >= *(*(a1 + 216) + 112)))
                  {
LABEL_39:
                    v27 = a1 + 192 * v12;
                    v28 = *(*(v27 + 216) + 112);
                    v29 = *(*v209 + 112);
                    if (v28 >= *(*(a1 + 408) + 112))
                    {
                      if (v29 >= v28 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>((v27 + 192), a2 - 36), *(*(v27 + 216) + 112) >= *(*(a1 + 408) + 112)))
                      {
LABEL_48:
                        v32 = *(*(v13 + 24) + 112);
                        v33 = *(*(v27 + 216) + 112);
                        if (v32 >= *(*(v22 + 24) + 112))
                        {
                          if (v33 >= v32)
                          {
                            goto LABEL_57;
                          }

                          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v13, (v27 + 192));
                          if (*(*(v13 + 24) + 112) >= *(*(v22 + 24) + 112))
                          {
                            goto LABEL_57;
                          }

                          v35 = v22;
                          v34 = v13;
                        }

                        else if (v33 >= v32)
                        {
                          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v22, v13);
                          if (*(*(v27 + 216) + 112) >= *(*(v13 + 24) + 112))
                          {
LABEL_57:
                            v228 = *a1;
                            v235 = *(a1 + 16);
                            v36 = *(a1 + 32);
                            v37 = *(a1 + 48);
                            *&v257[12] = *(a1 + 172);
                            v250 = *(a1 + 144);
                            *v257 = *(a1 + 160);
                            v243 = *(a1 + 128);
                            v38 = *(v13 + 16);
                            *a1 = *v13;
                            *(a1 + 16) = v38;
                            v39 = *(v13 + 48);
                            *(a1 + 32) = *(v13 + 32);
                            *(a1 + 48) = v39;
                            v40 = *(v13 + 128);
                            v41 = *(v13 + 144);
                            v42 = *(v13 + 160);
                            *(a1 + 172) = *(v13 + 172);
                            *(a1 + 144) = v41;
                            *(a1 + 160) = v42;
                            *(a1 + 128) = v40;
                            v43 = *(v13 + 64);
                            v44 = *(v13 + 80);
                            v45 = *(v13 + 96);
                            v46 = *(v13 + 112);
                            *v13 = v228;
                            *(v13 + 16) = v235;
                            *(v13 + 32) = v36;
                            *(v13 + 48) = v37;
                            v47 = *(a1 + 64);
                            v48 = *(a1 + 80);
                            *(a1 + 64) = v43;
                            *(a1 + 80) = v44;
                            *(v13 + 64) = v47;
                            *(v13 + 80) = v48;
                            v49 = *(a1 + 96);
                            v50 = *(a1 + 112);
                            *(a1 + 96) = v45;
                            *(a1 + 112) = v46;
                            *(v13 + 96) = v49;
                            *(v13 + 112) = v50;
                            *(v13 + 172) = *&v257[12];
                            *(v13 + 144) = v250;
                            *(v13 + 160) = *v257;
                            *(v13 + 128) = v243;
                            goto LABEL_58;
                          }

                          v34 = (v27 + 192);
                          v35 = v13;
                        }

                        else
                        {
                          v34 = (v27 + 192);
                          v35 = v22;
                        }

                        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v35, v34);
                        goto LABEL_57;
                      }

                      v30 = (a1 + 384);
                      v31 = (v27 + 192);
                    }

                    else
                    {
                      v30 = (a1 + 384);
                      if (v29 >= v28)
                      {
                        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v30, (v27 + 192));
                        if (*(*v209 + 112) >= *(*(v27 + 216) + 112))
                        {
                          goto LABEL_48;
                        }

                        v30 = (v27 + 192);
                      }

                      v31 = a2 - 36;
                    }

                    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v30, v31);
                    goto LABEL_48;
                  }

                  v25 = (a1 + 192);
                  v26 = v22;
                }

                else
                {
                  v25 = (a1 + 192);
                  if (v24 >= v23)
                  {
                    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v25, v22);
                    if (*(*v210 + 112) >= *(*(v22 + 24) + 112))
                    {
                      goto LABEL_39;
                    }

                    v25 = v22;
                  }

                  v26 = a2 - 24;
                }

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v25, v26);
                goto LABEL_39;
              }

              v16 = a1;
              v17 = v13;
            }

            else
            {
              v16 = a1;
              if (v14 >= v15)
              {
                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(a1, v13);
                if (*(*(a2 - 21) + 112) >= *(*(v13 + 24) + 112))
                {
                  goto LABEL_26;
                }

                v16 = v13;
              }

              v17 = a2 - 12;
            }

            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v16, v17);
            goto LABEL_26;
          }

          v18 = *(*(a1 + 24) + 112);
          if (v18 < *(*(v13 + 24) + 112))
          {
            v19 = v13;
            if (v14 >= v18)
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v13, a1);
              if (*(*(a2 - 21) + 112) >= *(*(a1 + 24) + 112))
              {
                goto LABEL_58;
              }

              v19 = a1;
            }

            v20 = a2 - 12;
            goto LABEL_34;
          }

          if (v14 < v18)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(a1, v211);
            if (*(*(a1 + 24) + 112) < *(*(v13 + 24) + 112))
            {
              v19 = v13;
              v20 = a1;
LABEL_34:
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v19, v20);
            }
          }

LABEL_58:
          --a3;
          if (a4)
          {
            break;
          }

          v51 = *(a1 + 24);
          v52 = *(v51 + 112);
          if (*(*(a1 - 168) + 112) < v52)
          {
            goto LABEL_61;
          }

          v237 = *(a1 + 16);
          v230 = *a1;
          v221 = *(a1 + 48);
          v223 = *(a1 + 32);
          v217 = *(a1 + 80);
          v219 = *(a1 + 64);
          v213 = *(a1 + 112);
          v215 = *(a1 + 96);
          *&v259[12] = *(a1 + 172);
          v245 = *(a1 + 128);
          v252 = *(a1 + 144);
          *v259 = *(a1 + 160);
          if (v52 >= *(*(a2 - 21) + 112))
          {
            v72 = a1 + 192;
            do
            {
              v9 = v72;
              if (v72 >= a2)
              {
                break;
              }

              v73 = *(*(v72 + 24) + 112);
              v72 += 192;
            }

            while (v52 >= v73);
          }

          else
          {
            v70 = a1;
            do
            {
              v9 = v70 + 192;
              v71 = *(*(v70 + 216) + 112);
              v70 += 192;
            }

            while (v52 >= v71);
          }

          v74 = a2;
          if (v9 < a2)
          {
            v75 = a2;
            do
            {
              v74 = v75 - 12;
              v76 = *(*(v75 - 21) + 112);
              v75 -= 12;
            }

            while (v52 < v76);
          }

          while (v9 < v74)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v9, v74);
            v77 = *(v51 + 112);
            do
            {
              v78 = *(v9 + 216);
              v9 += 192;
            }

            while (v77 >= *(v78 + 112));
            do
            {
              v79 = *(v74 - 21);
              v74 -= 12;
            }

            while (v77 < *(v79 + 112));
          }

          v80 = (v9 - 192);
          if (v9 - 192 != a1)
          {
            v81 = *(v9 - 176);
            *a1 = *v80;
            *(a1 + 16) = v81;
            *(a1 + 32) = *(v9 - 160);
            *(a1 + 48) = *(v9 - 144);
            *(a1 + 64) = *(v9 - 128);
            *(a1 + 80) = *(v9 - 112);
            *(a1 + 96) = *(v9 - 96);
            *(a1 + 112) = *(v9 - 80);
            v82 = *(v9 - 64);
            v83 = *(v9 - 48);
            v84 = *(v9 - 32);
            *(a1 + 172) = *(v9 - 20);
            *(a1 + 144) = v83;
            *(a1 + 160) = v84;
            *(a1 + 128) = v82;
          }

          a4 = 0;
          *(v9 - 176) = v237;
          *v80 = v230;
          *(v9 - 168) = v51;
          *(v9 - 160) = v223;
          *(v9 - 144) = v221;
          *(v9 - 128) = v219;
          *(v9 - 112) = v217;
          *(v9 - 96) = v215;
          *(v9 - 80) = v213;
          result = *&v245;
          *(v9 - 20) = *&v259[12];
          *(v9 - 48) = v252;
          *(v9 - 32) = *v259;
          *(v9 - 64) = v245;
        }

        v51 = *(a1 + 24);
        v52 = *(v51 + 112);
LABEL_61:
        v236 = *(a1 + 16);
        v229 = *a1;
        v220 = *(a1 + 48);
        v222 = *(a1 + 32);
        v216 = *(a1 + 80);
        v218 = *(a1 + 64);
        v212 = *(a1 + 112);
        v214 = *(a1 + 96);
        *&v258[12] = *(a1 + 172);
        v251 = *(a1 + 144);
        *v258 = *(a1 + 160);
        v53 = a1;
        v244 = *(a1 + 128);
        do
        {
          v54 = v53;
          v53 += 192;
        }

        while (*(*(v54 + 216) + 112) < v52);
        v55 = a2;
        if (v54 == a1)
        {
          v58 = a2;
          while (v53 < v58)
          {
            v56 = v58 - 12;
            v59 = *(*(v58 - 21) + 112);
            v58 -= 12;
            if (v59 < v52)
            {
              goto LABEL_71;
            }
          }

          v56 = v58;
        }

        else
        {
          do
          {
            v56 = v55 - 12;
            v57 = *(*(v55 - 21) + 112);
            v55 -= 12;
          }

          while (v57 >= v52);
        }

LABEL_71:
        if (v53 >= v56)
        {
          v9 = v53;
        }

        else
        {
          v60 = v56;
          v9 = v53;
          do
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<CA::Render::BackdropGroup::Item *&,CA::Render::BackdropGroup::Item *&>(v9, v60);
            v61 = *(v51 + 112);
            do
            {
              v62 = *(v9 + 216);
              v9 += 192;
            }

            while (*(v62 + 112) < v61);
            do
            {
              v63 = *(v60 - 21);
              v60 -= 12;
            }

            while (*(v63 + 112) >= v61);
          }

          while (v9 < v60);
        }

        v64 = (v9 - 192);
        if (v9 - 192 != a1)
        {
          v65 = *(v9 - 176);
          *a1 = *v64;
          *(a1 + 16) = v65;
          *(a1 + 32) = *(v9 - 160);
          *(a1 + 48) = *(v9 - 144);
          *(a1 + 64) = *(v9 - 128);
          *(a1 + 80) = *(v9 - 112);
          *(a1 + 96) = *(v9 - 96);
          *(a1 + 112) = *(v9 - 80);
          v66 = *(v9 - 64);
          v67 = *(v9 - 48);
          v68 = *(v9 - 32);
          *(a1 + 172) = *(v9 - 20);
          *(a1 + 144) = v67;
          *(a1 + 160) = v68;
          *(a1 + 128) = v66;
        }

        *(v9 - 176) = v236;
        *v64 = v229;
        *(v9 - 168) = v51;
        *(v9 - 160) = v222;
        *(v9 - 144) = v220;
        *(v9 - 128) = v218;
        *(v9 - 112) = v216;
        *(v9 - 96) = v214;
        *(v9 - 80) = v212;
        *(v9 - 20) = *&v258[12];
        *(v9 - 48) = v251;
        *(v9 - 32) = *v258;
        *(v9 - 64) = v244;
        if (v53 >= v56)
        {
          break;
        }

LABEL_84:
        std::__introsort<std::_ClassicAlgPolicy,CA::Render::BackdropGroup::finalize_update(unsigned int,BOOL,void *)::$_0 &,CA::Render::BackdropGroup::Item *,false>(a1, v9 - 192, a3, a4 & 1);
        a4 = 0;
      }

      v69 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CA::Render::BackdropGroup::finalize_update(unsigned int,BOOL,void *)::$_0 &,CA::Render::BackdropGroup::Item *>(a1, (v9 - 192));
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CA::Render::BackdropGroup::finalize_update(unsigned int,BOOL,void *)::$_0 &,CA::Render::BackdropGroup::Item *>(v9, a2))
      {
        break;
      }

      if (!v69)
      {
        goto LABEL_84;
      }
    }

    a2 = (v9 - 192);
    if (!v69)
    {
      continue;
    }

    return result;
  }
}

void CA::WindowServer::Server::get_active_display_count(CA::WindowServer::Server *this, Object *a2, _BYTE *a3, void *a4)
{
  var0 = a2[6].var0;
  if ((*(var0 + 905) & 8) == 0 && (*(*var0 + 95))(var0) != 0.0)
  {
    ++*a3;
    v7 = a3[8] == 1 && fabs((*(*a2[6].var0 + 95))(a2[6].var0) + -0.00416666667) < 0.005;
    a3[8] = v7;
  }
}

void CA::WindowServer::IOMFBServer::set_edr_enabled(CA::WindowServer::IOMFBServer *this, BOOL a2, BOOL a3, float a4, CA::Render::Update *a5)
{
  v5 = MEMORY[0x1EEE9AC00](this);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v5;
  v59 = *MEMORY[0x1E69E9840];
  if (CADeviceHasBacklight::once != -1)
  {
    dispatch_once(&CADeviceHasBacklight::once, &__block_literal_global_132);
  }

  if (CADeviceHasBacklight::has_backlight != 1 || (*(*(v14 + 96) + 905) & 0x10) == 0 || !CA::WindowServer::IOMFBServer::edr_client(v14))
  {
    return;
  }

  v15 = *(v14 + 96);
  if ((*(v14 + 1446) & 4) == 0 && v13 && (*(v15 + 29568) & 1) == 0)
  {
    CA::WindowServer::IOMFBServer::register_libedr_callbacks(v14);
    v15 = *(v14 + 96);
  }

  if (v13)
  {
    v16 = *(v15 + 704);
    if (v16)
    {
      v17 = COERCE_FLOAT(atomic_load((v16 + 4)));
      v18 = 1.0;
      if (v17 > 1.0)
      {
        v19 = *(*(v14 + 96) + 704);
        if (v19)
        {
          *&v20 = COERCE_FLOAT(atomic_load((v19 + 4)));
          v18 = *&v20;
        }
      }
    }

    else
    {
      v18 = 1.0;
    }

    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    if (v18 >= *&dword_1ED4E9694)
    {
      v22 = dword_1ED4E9694;
    }

    else
    {
      *&v22 = v18;
    }

    if (*&dword_1ED4E9694 <= 1.0)
    {
      v23 = v18;
    }

    else
    {
      v23 = *&v22;
    }

    if (v9 <= 1.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = v9;
    }

    if (v24 >= v23)
    {
      v21 = v23;
    }

    else
    {
      v21 = v24;
    }

    if (*(*(v14 + 96) + 29568))
    {
      goto LABEL_33;
    }

    if (v21 > 1.0)
    {
      v26 = CA::WindowServer::IOMFBServer::edr_client(v14);
      CA::EDRClient::set_edr_max_headroom(v26, v21);
LABEL_46:
      if (v21 == *(v14 + 1152))
      {
        return;
      }

      *(v14 + 1152) = v21;
      goto LABEL_48;
    }

LABEL_38:
    v27 = CA::WindowServer::IOMFBServer::edr_client(v14);
    if (CADeviceHasBacklight::once != -1)
    {
      dispatch_once(&CADeviceHasBacklight::once, &__block_literal_global_132);
    }

    if (CADeviceHasBacklight::has_backlight == 1)
    {
      pthread_mutex_lock((v27 + 64));
      if (*(v27 + 145) != v13 || *(v27 + 148) != 0.0)
      {
        *(v27 + 145) = v13;
        *(v27 + 148) = 0;
        v28 = CA::EDRClient::client(v27);
        if (v28)
        {
          v29 = *(v27 + 128);
          block.n128_u64[0] = MEMORY[0x1E69E9820];
          block.n128_u64[1] = 0x40000000;
          v50 = ___ZN2CA9EDRClient15set_edr_enabledEb_block_invoke;
          v51 = &__block_descriptor_tmp_3_18913;
          v53 = v13;
          v52 = v28;
          dispatch_async(v29, &block);
        }
      }

      pthread_mutex_unlock((v27 + 64));
    }

    goto LABEL_46;
  }

  v21 = 1.0;
  if ((*(v15 + 29568) & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_33:
  if (v21 == *(v14 + 1152))
  {
    return;
  }

  *(v14 + 1152) = v21;
  v25 = *(v14 + 248);
  if (v25)
  {
    (*(v25 + 16))(v25, v13, v11, v21);
  }

LABEL_48:
  if (BYTE11(xmmword_1ED4E980C) == 1)
  {
    kdebug_trace();
    if (!v7)
    {
      return;
    }
  }

  else if (!v7)
  {
    return;
  }

  block.n128_u16[0] = 512;
  block.n128_u32[1] = -1;
  block.n128_f32[2] = v21;
  block.n128_f32[3] = v21;
  X::small_vector_base<CA::Render::Update::EDRRequest>::push_back((v7 + 1216), &block);
  v30 = v58;
  memset(v58, 0, sizeof(v58));
  v54 = v58;
  v55 = v58;
  v56 = v58;
  v57 = 8;
  v31 = *(v7 + 1216);
  v32 = *(v7 + 1224);
  v33 = v32 - v31;
  v34 = (v32 - v31) >> 4;
  if (v34 >= 9)
  {
    X::small_vector_base<CA::Render::Update::EDRRequest>::grow(&v54, v34);
    v30 = v55;
  }

  if (v31 != v32)
  {
    do
    {
      v35 = *v31;
      v31 += 16;
      *v30++ = v35;
    }

    while (v31 != v32);
    v30 = v55;
  }

  v55 = (v30 + v33);
  if (v54 != v30 + v33)
  {
    theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v37 = v54;
    if (v55 != v54)
    {
      v38 = 0;
      v39 = 0;
      do
      {
        v40 = &v37[v38];
        v41 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        bzero(&block, 0x1000uLL);
        proc_pidpath(*(v40 + 1), &block, 0x1000u);
        v42 = strrchr(&block, 47);
        if (v42)
        {
          p_block = (v42 + 1);
        }

        else
        {
          p_block = &block;
        }

        v44 = CFStringCreateWithCString(0, p_block, 0x8000100u);
        if (v44)
        {
          v45 = v44;
          CFDictionarySetValue(v41, @"process", v44);
          CFRelease(v45);
        }

        CA_CFDictionarySetInt(v41, @"request_type", *v40);
        v46 = *(v40 + 2);
        if (v46 == 3.4028e38)
        {
          v46 = 10000.0;
        }

        CA_CFDictionarySetFloat(v41, @"headroom", v46);
        v47 = *(v40 + 3);
        if (v47 == 3.4028e38)
        {
          v47 = 10000.0;
        }

        CA_CFDictionarySetFloat(v41, @"max_desired_headroom", v47);
        CFArrayAppendValue(Mutable, v41);
        if (v41)
        {
          CFRelease(v41);
        }

        ++v39;
        v37 = v54;
        v38 += 16;
      }

      while (v39 < (v55 - v54) >> 4);
    }

    CFDictionarySetValue(theDict, @"EDRRequests", Mutable);
    if (CA::WindowServer::IOMFBDisplay::post_edr_requests_power_log(CA::Render::Update const*)::once != -1)
    {
      dispatch_once(&CA::WindowServer::IOMFBDisplay::post_edr_requests_power_log(CA::Render::Update const*)::once, &__block_literal_global_474_23296);
    }

    if (CA::WindowServer::IOMFBDisplay::post_edr_requests_power_log(CA::Render::Update const*)::edr_requests_telemetry_id)
    {
      pps_send_telemetry();
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (theDict)
    {
      CFRelease(theDict);
    }
  }

  if (v54 != v56)
  {
    free(v54);
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::ignore_update_p(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 659) & 0x10) != 0)
  {
    v3 = *(a2 + 304) & 0xALL;
    v4 = *(a1 + 29527) | (v3 != 0);
    *(a1 + 29527) = v4;
    if (!atomic_load((*(a1 + 768) + 4)))
    {
      v6 = v3 != 0;
      v7 = atomic_load((*(a1 + 768) + 5));
      if (v7 == 1)
      {
        v4 = v6;
      }
    }

    v2 = v4 ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void CA::WindowServer::IOMFBDisplay::update_server_source_frame_interval_range(os_unfair_lock_s *this, const CAFrameIntervalRange *a2, int a3, int a4)
{
  v8 = this + 7068;
  v9 = (*(*&this->_os_unfair_lock_opaque + 2264))(this);
  v10 = *&v8->_os_unfair_lock_opaque != *&a2->var0 || v8[2]._os_unfair_lock_opaque != a2->var2;
  v11 = v9 | a4;
  v12 = BYTE1(v8[325]._os_unfair_lock_opaque);
  if (v10 || (v12 == a3 ? (v13 = BYTE2(v8[325]._os_unfair_lock_opaque) == v11) : (v13 = 0), !v13))
  {
    if (BYTE2(v8[325]._os_unfair_lock_opaque) != v11)
    {
      v10 = 1;
    }

    if (v10)
    {
      v14 = *&a2->var0;
      v8[2]._os_unfair_lock_opaque = a2->var2;
      *&v8->_os_unfair_lock_opaque = v14;
      BYTE2(v8[325]._os_unfair_lock_opaque) = v11;
      if (v11)
      {
        var0 = 2;
      }

      else
      {
        var0 = a2->var0;
      }

      if (v11)
      {
        var1 = 2;
      }

      else
      {
        var1 = a2->var1;
      }

      if (v11)
      {
        var2 = 2;
      }

      else
      {
        var2 = a2->var2;
      }

      CA::WindowServer::IOMFBDisplay::register_frame_interval_range(this, 0, var0, var1, var2, a3);
    }

    if (v12 != a3)
    {
      BYTE1(v8[325]._os_unfair_lock_opaque) = a3;
      os_unfair_lock_lock(this + 7061);
      CA::WindowServer::IOMFBDisplay::recompute_server_frame_interval_locked(this);

      os_unfair_lock_unlock(this + 7061);
    }
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::update_display_edr_factor(CA::WindowServer::IOMFBDisplay *this)
{
  if (CADeviceDisplaySupportsEDRFactor::once != -1)
  {
    dispatch_once(&CADeviceDisplaySupportsEDRFactor::once, &__block_literal_global_63);
  }

  if (CADeviceDisplaySupportsEDRFactor::supports_edr != 1)
  {
    return 0;
  }

  v2 = (this + 26432);
  (*(*this + 1072))(this);
  v3 = (*(*this + 1552))(this);
  v4 = 0.0;
  if (v3)
  {
    if (CA::WindowServer::Display::Mode::hdr_type(*(this + 82)) > 2)
    {
      v4 = (*(*this + 1096))(this);
    }

    else
    {
      v4 = 1.0 / CA::WindowServer::Display::edr_headroom(this);
    }
  }

  if (*v2 == v4)
  {
    return 0;
  }

  *v2 = v4;
  if (!(*(*this + 1888))(this))
  {
    return 1;
  }

  if ((*(*this + 1920))(this))
  {
    *(this + 29564) = 1;
  }

  v5 = (*(*this + 1904))(this);
  result = 1;
  if (v5)
  {
    *(this + 29563) = 1;
  }

  return result;
}

uint64_t CA::WindowServer::IOSurface::protection_options(CA::WindowServer::IOSurface *this)
{
  result = *(this + 33);
  if (result)
  {
    return IOSurfaceGetProtectionOptions();
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::mark_buffers_non_static(uint64_t this, uint64_t a2)
{
  v2 = *(this + 26288);
  if (v2)
  {
    v4 = this;
    do
    {
      this = v2[4];
      if (this)
      {
        v5 = (*(*this + 232))(this);
        this = v2[4];
        if ((v5 != a2 || *(this + 56) != v4[52] || *(this + 60) != v4[53]) && (*(this + 239) & 4) != 0)
        {
          this = (*(*this + 232))(this);
          if (this)
          {
            v6 = v2[4];
            if ((*(v6 + 236) & 0xC000000) == 0x4000000)
            {
              *(v6 + 236) &= 0xFFFFFFFFF3FFFFFFLL;
              --v4[6388];
            }
          }
        }
      }

      v2 = *v2;
    }

    while (v2);
  }

  return this;
}

void CA::WindowServer::IOMFBDisplay::update_color_matrix(CA::WindowServer::IOMFBDisplay *this, double a2)
{
  v80 = *MEMORY[0x1E69E9840];
  if (!CA::WindowServer::IOMFBDisplay::needs_harmony_update(this))
  {
    return;
  }

  v5 = *(this + 3366);
  v6 = (a2 - *(this + 3365)) / v5;
  v4.n128_u64[0] = 1.0;
  if (v6 < 0.0 && v6 <= 1.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = (a2 - *(this + 3365)) / v5;
  }

  if (v6 <= 1.0)
  {
    if (v5 != 0.0 && v8 != 1.0)
    {
      v9 = 0;
      v10 = this + 26936;
      v11 = this + 26972;
      v4.n128_u32[0] = 1.0;
      v12 = this + 27008;
      do
      {
        v13 = 0;
        *&v59[8] = 0;
        *v59 = 0;
        LODWORD(v69) = 0;
        v14 = 0.0;
        v68 = 0;
        do
        {
          v14 = v14 + (*&v10[v13] * *&v10[v13]);
          v13 += 4;
        }

        while (v13 != 12);
        v15 = sqrtf(v14);
        if (v15 <= 0.0)
        {
          *&v59[8] = 0;
          *v59 = 0;
        }

        else
        {
          v16 = 0;
          v17 = 1.0 / v15;
          do
          {
            *&v59[v16] = *&v10[v16] * v17;
            v16 += 4;
          }

          while (v16 != 12);
        }

        v18 = 0;
        v19 = 0.0;
        do
        {
          v19 = v19 + (*&v11[v18] * *&v11[v18]);
          v18 += 4;
        }

        while (v18 != 12);
        v20 = sqrtf(v19);
        if (v20 <= 0.0)
        {
          LODWORD(v69) = 0;
          v68 = 0;
        }

        else
        {
          v21 = 0;
          v22 = 1.0 / v20;
          do
          {
            *(&v68 + v21) = *&v11[v21] * v22;
            v21 += 4;
          }

          while (v21 != 12);
        }

        v23 = 0;
        LODWORD(v77) = 0;
        v76 = 0;
        do
        {
          v24 = *&v59[v23] + v8 * (*(&v68 + v23) - *&v59[v23]);
          *(&v76 + v23) = v24;
          v23 += 4;
        }

        while (v23 != 12);
        v25 = 0;
        v26 = 0.0;
        do
        {
          v26 = v26 + (*(&v76 + v25) * *(&v76 + v25));
          v25 += 4;
        }

        while (v25 != 12);
        v27 = sqrtf(v26);
        if (v27 <= 0.0)
        {
          v30 = this + 12 * v9 + 27008;
          *(v30 + 2) = 0;
          *v30 = 0;
        }

        else
        {
          v28 = 0;
          v29 = 1.0 / v27;
          do
          {
            *&v12[v28] = *(&v76 + v28) * v29;
            v28 += 4;
          }

          while (v28 != 12);
        }

        v31 = 0;
        v32 = 0.0;
        do
        {
          v32 = v32 + (*&v10[v31] * *&v10[v31]);
          v31 += 4;
        }

        while (v31 != 12);
        v33 = 0;
        v34 = 0.0;
        do
        {
          v34 = v34 + (*&v11[v33] * *&v11[v33]);
          v33 += 4;
        }

        while (v33 != 12);
        v35 = 0;
        v36 = sqrtf(v32);
        v37 = v36 + v8 * (sqrtf(v34) - v36);
        do
        {
          *&v12[v35] = *&v12[v35] * v37;
          v35 += 4;
        }

        while (v35 != 12);
        ++v9;
        v10 += 12;
        v11 += 12;
        v12 += 12;
      }

      while (v9 != 3);
      goto LABEL_45;
    }

    v4.n128_f64[0] = v8;
  }

  v38 = *(this + 26988);
  *(this + 1688) = *(this + 26972);
  *(this + 27056) = 1;
  *(this + 1689) = v38;
  *(this + 6760) = *(this + 6751);
  *(this + 6763) = *(this + 6762);
  v8 = v4.n128_f64[0];
LABEL_45:
  if ((*(this + 336) & 0x1C00) != 0x800)
  {
    if (!(*(*this + 1888))(this, v4))
    {
      goto LABEL_51;
    }

    if (CADeviceUseHarmonyXYZD50::once != -1)
    {
      dispatch_once(&CADeviceUseHarmonyXYZD50::once, &__block_literal_global_308);
    }

    if (CADeviceUseHarmonyXYZD50::use_d50_xyz == 1)
    {
      memset(v59, 0, 60);
      *&v59[12] = *(this + 1688);
      *&v59[28] = *(this + 1689);
      *&v59[44] = *(this + 6760);
      CA::WindowServer::IOMFBDisplay::swap_set_icc_matrix(this, 6, *(this + 6), 0, v59);
    }

    else
    {
LABEL_51:
      v39 = 0;
      memset(v59, 0, 72);
      v40 = this + 27008;
      v41 = v59;
      do
      {
        for (i = 0; i != 3; ++i)
        {
          v43 = *&v40[4 * i];
          v44 = v43 < 0.0;
          if (v43 >= 0.0)
          {
            v45 = v43;
          }

          else
          {
            v45 = -v43;
          }

          v46 = vcvtd_n_s64_f64(v45, 0x20uLL);
          if (v44)
          {
            v46 = -v46;
          }

          *&v41[8 * i] = v46;
        }

        ++v39;
        v41 += 24;
        v40 += 12;
      }

      while (v39 != 3);
      if (*(this + 25704) == 1)
      {
        v76 = 0;
        v77 = &v76;
        v78 = 0x2000000000;
        v79 = 0;
        v68 = MEMORY[0x1E69E9820];
        v69 = 0x40000000;
        v70 = ___ZN2CA19IOMobileFramebuffer10set_matrixE20IOMFB_MatrixLocationPA3_A3_Ky_block_invoke;
        v71 = &unk_1E6DFA1E0;
        v72 = &v76;
        v73 = this + 25696;
        v75 = 9;
        v74 = v59;
        BMMonitorBlockExecutionWithSignature();
        _Block_object_dispose(&v76, 8);
      }

      else
      {
        IOMobileFramebufferSetMatrix();
      }
    }

    IOMobileFramebufferSetBrightnessCorrection();
  }

  if (BYTE9(xmmword_1ED4E97EC) == 1)
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v47 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v48 = *(this + 6);
      v49 = *(this + 6752);
      v50 = *(this + 6753);
      v51 = *(this + 6754);
      v52 = *(this + 6755);
      v53 = *(this + 6756);
      v54 = *(this + 6757);
      v55 = *(this + 6758);
      v56 = *(this + 6759);
      v57 = *(this + 6760);
      v58 = *(this + 6763);
      *v59 = 67111936;
      *&v59[4] = v48;
      *&v59[8] = 2048;
      *&v59[10] = v49;
      *&v59[18] = 2048;
      *&v59[20] = v50;
      *&v59[28] = 2048;
      *&v59[30] = v51;
      *&v59[38] = 2048;
      *&v59[40] = v52;
      *&v59[48] = 2048;
      *&v59[50] = v53;
      *&v59[58] = 2048;
      *&v59[60] = v54;
      *&v59[68] = 2048;
      *&v59[70] = v55;
      v60 = 2048;
      v61 = v56;
      v62 = 2048;
      v63 = v57;
      v64 = 2048;
      v65 = v58;
      v66 = 2048;
      v67 = v8;
      _os_log_impl(&dword_183AA6000, v47, OS_LOG_TYPE_DEFAULT, "display %d harmony matrix [%g, %g, %g; %g, %g, %g; %g, %g, %g], scale %g, t: %g\n", v59, 0x76u);
    }
  }
}

void ___ZN2CA12MachPortUtil9ClientIPC6createEPKc_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E69E99E0];
  while (1)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    memset(msg, 0, sizeof(msg));
    v3 = mach_msg(msg, 258, 0, 0xB4u, v1, 0, 0);
    if (v3)
    {
      break;
    }

    v12 = 0;
    *&v11[8] = 0;
    v8 = msg[0] & 0x1F;
    LODWORD(v9) = 36;
    *v11 = (*&msg[20] + 100);
    HIDWORD(v9) = *&msg[8];
    v10 = 0;
    if ((*&msg[20] - 40418) >= 0xFFFFFFEE && (v4 = CACCARenderClient_subsystem[5 * (*&msg[20] - 40400) + 5]) != 0)
    {
      (v4)(msg, &v8);
    }

    else
    {
      *&v11[4] = *v2;
      v12 = -303;
      mach_msg_destroy(msg);
    }
  }

  v5 = v3;
  if (v3 != 268451843)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v6 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      v7 = mach_error_string(v5);
      v8 = 136315394;
      v9 = v7;
      LOWORD(v10) = 1024;
      *(&v10 + 2) = v5;
      _os_log_error_impl(&dword_183AA6000, v6, OS_LOG_TYPE_ERROR, "CARenderServerProcessClientMessage mach_msg failed with %s [0x%x]", &v8, 0x12u);
    }
  }
}

void invoke_collectable_callback(_BYTE *a1)
{
  pthread_mutex_lock(&collectable_mutex);
  if (a1[112] == 1)
  {
    do
    {
      pthread_cond_wait(&collectable_cond, &collectable_mutex);
    }

    while ((a1[112] & 1) != 0);
  }

  if (*(a1 + 12))
  {
    a1[112] = 1;
    pthread_mutex_unlock(&collectable_mutex);
    (*(a1 + 12))(a1, *(a1 + 13));
    pthread_mutex_lock(&collectable_mutex);
    a1[112] = 0;
    pthread_cond_broadcast(&collectable_cond);
  }

  pthread_mutex_unlock(&collectable_mutex);

  CFRelease(a1);
}

uint64_t CA::Render::ImageQueue::forward_dm(os_unfair_lock_s *this, CA::Render::Context *a2, CA::Render::Update *a3, float a4, int a5, unsigned int a6, _BYTE *a7, BOOL *a8)
{
  v210 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    LOBYTE(v167) = 0;
    return v167 & 1;
  }

  v12 = a2;
  v13 = this;
  os_unfair_lock_lock(this + 14);
  v15 = *(v13 + 3);
  if (!v15 || *(v15 + 12) != 57)
  {
    goto LABEL_275;
  }

  v203 = *(*(v13 + 2) + 24);
  if (CADeviceSupportsHDRProcessing::once != -1)
  {
    dispatch_once(&CADeviceSupportsHDRProcessing::once, &__block_literal_global_199);
  }

  if (CADeviceSupportsHDRProcessing::supports_hdr != 1)
  {
    goto LABEL_275;
  }

  v16 = *(v13 + 3);
  v17 = *(v13 + 10);
  v18 = *(a3 + 130);
  if (!v18)
  {
    v18 = *(v13 + 102);
    *(a3 + 130) = v18;
  }

  v190 = v18;
  v187 = a7;
  v19 = 1.0;
  v193 = v16;
  v195 = a3;
  v200 = v12;
  v205 = v13;
  while (1)
  {
    v20 = CA::Render::ImageQueue::hdr_processor(v13, v14);
    if (!(*(*v20 + 40))(v20, v16, a3))
    {
      a5 = -1;
    }

    v22 = CA::Render::ImageQueue::hdr_processor(v13, v21);
    if (!(*(*v22 + 48))(v22, v16, a3))
    {
      a4 = v19;
    }

    v199 = a5;
    if (a5 == -1)
    {
      v23 = 0;
    }

    else
    {
      v23 = a5;
    }

    v196 = v23;
    v24 = a4;
    if ((*(v13 + 57) + 0.01 < a4) | *(a3 + 172) & 1)
    {
      v17 = 0;
    }

    v201 = *(v13 + 49);
    v25 = *(v13 + 100);
    v191 = v17;
    if (v17)
    {
      v26 = v17;
    }

    else
    {
      v26 = v16;
    }

    v27 = *(v26 + 184);
    if (a6)
    {
      goto LABEL_72;
    }

    if (BYTE5(xmmword_1ED4E980C))
    {
      goto LABEL_284;
    }

    v28 = *(a3 + 130);
    v29 = CA::Render::ImageQueue::resolved_display_attributes(v13, a3);
    v30 = v29;
    if ((*(v29 + 62) & 1) != 0 || *(v29 + 68) == 2)
    {
      if ((*(*v16 + 288))(v16))
      {
        if ((*(v30 + 66) & 1) == 0)
        {
          v31 = *(v16 + 16);
          memset(v208, 0, 132);
          *buf = 132;
          if (!IOSurfaceGetBulkAttachments() && *buf == 132 && v208[60] != 18)
          {
            if (v208[60] == 16 && v208[59] <= 0xCu && ((1 << v208[59]) & 0x1202) != 0)
            {
              v32 = IOSurfaceCopyValue(v31, _kHDRProcessingDolbyVisionRPUDataKey);
              if (!v32)
              {
                goto LABEL_257;
              }

              goto LABEL_39;
            }

            v34 = IOSurfaceCopyAllValues(v31);
            if (CFDictionaryGetValue(v34, _kHDRProcessingDolbyVisionRPUDataKey))
            {
              if (v34)
              {
                v32 = v34;
LABEL_39:
                CFRelease(v32);
              }
            }

            else
            {
              Bool = CA_CFDictionaryGetBool(v34, @"isHLG");
              if (v34)
              {
                CFRelease(v34);
              }

              if (!Bool)
              {
LABEL_257:
                if ((*(v195 + 1381) & 0x10) == 0)
                {
                  v170 = *(v30 + 28);
                  if (v170 == 0.0)
                  {
                    v170 = 1.0;
                  }

                  v171 = *(v16 + 184) | 4;
                  *(v16 + 184) = v171;
                  if (*(v16 + 37) != v170)
                  {
                    *(v193 + 37) = v170;
                    CA::Render::iosurface_set_edr_factor(*(v193 + 16), v33, v170);
                    v171 = *(v193 + 184);
                  }

                  v16 = v193;
                  *(v193 + 184) = v171 | 8;
                  *(v195 + 172) |= 0x10000000000000uLL;
LABEL_284:
                  v13 = v205;
                  if ((*(*v16 + 304))(v16) && a4 != *(v205 + 103))
                  {
                    if (v187)
                    {
                      *v187 = 1;
                    }

                    v13 = v205;
                    *(v205 + 103) = a4;
                    v16 = v193;
                  }

                  v167 = (*(v16 + 184) >> 4) & 1;
                  goto LABEL_276;
                }
              }
            }
          }
        }
      }
    }

    v35 = v16[4];
    v36 = v16[5];
    if ((!v28 && (v27 & 0x10) != 0 || v28 == 3 && (v16[92] & 0x10) != 0) && *(v30 + 64) == 1)
    {
      v37 = (*(*v16 + 288))(v16);
      if (v37)
      {
        if ((byte_1ED4E985E & 1) != 0 || (CA::CAPSEProcessor::needs_processing(v37) & 1) == 0)
        {
          v38 = v196 & 7;
          v39 = v38 == 4 || v38 == 7;
          if (!v39 && v16[4] >> 10 <= 4 && v16[5] <= 0xFFF)
          {
            if (CADeviceSupportsDCP::once[0] != -1)
            {
              dispatch_once(CADeviceSupportsDCP::once, &__block_literal_global_341);
            }

            if (CADeviceSupportsDCP::has_dcp != 1)
            {
              goto LABEL_315;
            }

            CacheMode = v16[91];
            if (CacheMode == -1)
            {
              CacheMode = IOSurfaceGetCacheMode();
              v16[91] = CacheMode;
            }

            if ((CacheMode & 0xF00) == 0x700)
            {
LABEL_315:
              if (CA::Render::display_tonemap_supports_pixel_format(v16[36]))
              {
                if ((*(v13 + 440) & 1) == 0 && *(v30 + 40) * 1.01 < v24 && *(v30 + 48) * 0.99 > v24 && (CA::ScalerStatistics::should_enhance(v35, v36, (a4 * v35), (a4 * v36)) & 1) == 0 && *(v13 + 105) == 0.0 && *(v13 + 104) == v19 && CA::CAHDRProcessor::can_display_tonemap(*(v16 + 16), v41) && (CA::CAHDRProcessor::is_hdr10plus_screen_recording(v16, v42) & 1) == 0)
                {
                  CA::Render::Surface::reload_iosurface_color_attributes(v16, 0x7E);
                  if (((*(*v16 + 280))(v16) & 1) == 0)
                  {
                    v172 = *(v13 + 10);
                    if (v172)
                    {
                      if (atomic_fetch_add(v172 + 2, 0xFFFFFFFF) == 1)
                      {
                        (*(*v172 + 16))(v172);
                      }

                      *(v205 + 10) = 0;
                    }

                    *(v193 + 184) |= 0x100u;
                    v208[75] = 0;
                    *&v208[116] = 0x3F80000000000000;
                    *&v208[144] = 0;
                    memset(v208, 0, 20);
                    *&v208[32] = 0u;
                    *&v208[20] = xmmword_183E20F10;
                    *&v208[36] = 1065353216;
                    *&v208[48] = xmmword_183E20F20;
                    *&v208[64] = 0;
                    *&v208[71] = 0;
                    *&v208[76] = 0x100000001;
                    memset(&v208[84], 0, 32);
                    *&v208[124] = 0uLL;
                    *&v208[140] = -1;
                    v173 = CA::Render::ImageQueue::hdr_processor(v205, v43);
                    X::Ref<CA::CAHDRProcessor>::operator=(v208, v173);
                    v208[144] = (*(*v193 + 288))(v193) ^ 1;
                    *&v208[8] = *v30;
                    v174 = *(v30 + 16);
                    v175 = *(v30 + 32);
                    v176 = *(v30 + 48);
                    *&v208[72] = *(v30 + 64);
                    *&v208[56] = v176;
                    *&v208[40] = v175;
                    *&v208[24] = v174;
                    v177 = *(v30 + 80);
                    v178 = *(v30 + 96);
                    v179 = *(v30 + 112);
                    *&v208[136] = *(v30 + 128);
                    *&v208[120] = v179;
                    *&v208[104] = v178;
                    *&v208[88] = v177;
                    *&v208[148] = *(v205 + 105);
                    v180 = *v208;
                    if (*v208)
                    {
                      atomic_fetch_add((*v208 + 16), 1u);
                    }

                    *&v206[88] = *&v208[88];
                    *&v206[104] = *&v208[104];
                    *&v206[120] = *&v208[120];
                    v207 = *&v208[136];
                    *&v206[24] = *&v208[24];
                    *&v206[40] = *&v208[40];
                    *&v206[56] = *&v208[56];
                    *&v206[72] = *&v208[72];
                    *v206 = v180;
                    *&v206[8] = *&v208[8];
                    CA::Render::OnDemandTonemapCfg::operator=((v193 + 46), v206);
                    if (v180 && atomic_fetch_add(v180 + 4, 0xFFFFFFFF) == 1)
                    {
                      (*(*v180 + 8))(v180);
                    }

                    if (*(v30 + 68) == 2)
                    {
                      v182 = *(v30 + 28);
                      if (v182 == 0.0)
                      {
                        v182 = 1.0;
                      }

                      *(v193 + 184) |= 4u;
                      if (*(v193 + 37) != v182)
                      {
                        *(v193 + 37) = v182;
                        CA::Render::iosurface_set_edr_factor(*(v193 + 16), v181, v182);
                      }
                    }

                    if (byte_1ED4E983D == 1)
                    {
                      if (x_log_get_render(void)::once[0] != -1)
                      {
                        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
                      }

                      v184 = x_log_get_render(void)::log;
                      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEBUG))
                      {
                        v185 = v193[30];
                        *buf = 67109120;
                        *&buf[4] = v185;
                        _os_log_debug_impl(&dword_183AA6000, v184, OS_LOG_TYPE_DEBUG, "Try Display TM, and Skip MSR/GPU TM on surface (0x%x)", buf, 8u);
                      }
                    }

                    v183 = *v208;
                    if (*v208 && atomic_fetch_add((*v208 + 16), 0xFFFFFFFF) == 1)
                    {
                      (*(*v183 + 8))(v183);
                    }

                    v16 = v193;
                    goto LABEL_284;
                  }
                }
              }
            }
          }
        }
      }
    }

    a3 = v195;
    v12 = v200;
LABEL_72:
    v44 = 0;
    if ((v27 & 0x10) != 0 && v25 != 0.0)
    {
      if (*(a3 + 344))
      {
        v44 = 0;
      }

      else
      {
        v44 = byte_1ED4E981E ^ 1;
      }
    }

    v189 = *(v16 + 360);
    v45 = *(v13 + 48);
    if (!v45)
    {
      operator new[]();
    }

    ID = IOSurfaceGetID(*(v16 + 16));
    v188 = v16[8];
    v47 = *(v13 + 168);
    v48 = *(v13 + 200);
    *&v208[96] = *(v13 + 184);
    *&v208[112] = v48;
    *&v208[128] = *(v13 + 27);
    v49 = *(v13 + 104);
    v50 = *(v13 + 136);
    *&v208[32] = *(v13 + 120);
    *&v208[48] = v50;
    *&v208[64] = *(v13 + 152);
    *&v208[80] = v47;
    *v208 = *(v13 + 88);
    *&v208[16] = v49;
    v192 = *(v13 + 56);
    v51 = CA::Render::ImageQueue::resolved_display_attributes(v13, a3);
    v54 = 0.0;
    v202 = v51;
    if ((*(v51 + 62) & 1) == 0 && (*(v51 + 68) - 2) >= 3)
    {
      v54 = *(v13 + 105);
    }

    v197 = v44;
    if (v44)
    {
      for (i = 0; i != 576; i += 192)
      {
        if (*(v45 + i))
        {
          v56 = (*(*v16 + 256))(v16);
          v57 = (*(**(v45 + i) + 256))();
          v58 = *(v45 + i);
          if (v56 != v57)
          {
            if (v58)
            {
LABEL_93:
              if (atomic_fetch_add(v58 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v58 + 16))(v58);
              }

              *(v45 + i) = 0;
            }

            v59 = v45 + i;
            v60 = *(v45 + i + 8);
            if (v60)
            {
              if (atomic_fetch_add(v60 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v60 + 16))(v60);
              }

              *(v59 + 8) = 0;
            }

            *(v59 + 16) = 0xFFF0000000000000;
            *(v59 + 24) = 0;
            *(v59 + 32) = 1065353216;
            *(v59 + 40) = xmmword_183E20F30;
            *(v59 + 56) = xmmword_183E20F40;
            *(v59 + 72) = 0;
            *(v59 + 80) = xmmword_183E20F20;
            *(v59 + 96) = 0;
            *(v59 + 104) = 0;
            *(v59 + 108) = 0x100000001;
            *(v59 + 116) = 0u;
            *(v59 + 132) = 0u;
            *(v59 + 148) = 0x3F80000000000000;
            *(v59 + 164) = 0;
            *(v59 + 156) = 0;
            *(v59 + 172) = -1;
            *(v59 + 184) = 0;
            *(v59 + 180) = 0;
            continue;
          }

          if (v16[4] != v58[4] || v16[5] != v58[5] || a4 != *(v45 + i + 32) || *(v45 + i + 184) != a6 || v54 != *(v45 + i + 180))
          {
            goto LABEL_93;
          }
        }
      }
    }

    v194 = v45;
    if ((v27 & 0x10) == 0)
    {
      break;
    }

    v61 = 0;
    v62 = 0;
    v63 = 1;
    do
    {
      v64 = v45 + v61;
      if (*(v45 + v61 + 28) == ID && *(v64 + 16) == *(v13 + 5) && *(v45 + v61 + 24) == *(v13 + 113) && *(v45 + v61 + 32) == a4)
      {
        v65 = v45 + v61;
        if (*(v45 + v61 + 184) == a6)
        {
          CA::Render::ImageQueue::hdr_processor(v13, v52);
          if ((CA::CAHDRProcessor::should_invalidate_tonemapping((v65 + 40), v202, *(v65 + 180), v54) & 1) == 0 && (*(a3 + 1381) & 8) == 0)
          {
            v152 = *(v64 + 8);
            v153 = *(v13 + 10);
            if (v153 != v152)
            {
              if (v153 && atomic_fetch_add(v153 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v153 + 16))(v153);
              }

              if (v152)
              {
                v154 = v152 + 2;
                if (!atomic_fetch_add(v152 + 2, 1u))
                {
                  v152 = 0;
                  atomic_fetch_add(v154, 0xFFFFFFFF);
                }
              }

              *(v13 + 10) = v152;
              v153 = v152;
            }

            *(v13 + 88) = *(v65 + 40);
            v155 = *(v65 + 56);
            v156 = *(v65 + 72);
            v157 = *(v65 + 88);
            *(v13 + 152) = *(v65 + 104);
            *(v13 + 136) = v157;
            *(v13 + 120) = v156;
            *(v13 + 104) = v155;
            v158 = *(v65 + 120);
            v159 = *(v65 + 136);
            v160 = *(v65 + 152);
            *(v13 + 27) = *(v65 + 168);
            *(v13 + 200) = v160;
            *(v13 + 184) = v159;
            *(v13 + 168) = v158;
            *(v13 + 56) = *(v64 + 180);
            *(v13 + 57) = *(v64 + 32);
            CA::Render::Surface::ensure_scheduled_block(v153);
            if (byte_1ED4E983D != 1)
            {
              goto LABEL_163;
            }

            if (x_log_get_render(void)::once[0] != -1)
            {
              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            }

            v164 = x_log_get_render(void)::log;
            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEBUG))
            {
              v165 = v193[30];
              v13 = v205;
              v166 = *(*(v205 + 10) + 120);
              *v206 = 67109376;
              *&v206[4] = v165;
              *&v206[8] = 1024;
              *&v206[10] = v166;
              _os_log_debug_impl(&dword_183AA6000, v164, OS_LOG_TYPE_DEBUG, "No Display TM, using previously MSR/GPU tonemapped ForwardDMCache src (0x%x), tm_cache_surf (0x%x)", v206, 0xEu);
              a3 = v195;
              v12 = v200;
              v86 = v197;
            }

            else
            {
              a3 = v195;
              v12 = v200;
              v86 = v197;
              v13 = v205;
            }

LABEL_164:
            v111 = *(v13 + 10);
            if (v111)
            {
              if (a4 != *(v13 + 103))
              {
                if (v187)
                {
                  *v187 = 1;
                }

                *(v13 + 103) = a4;
              }

              *(v111 + 32) = v188;
              atomic_fetch_add((v111 + 36), 1u);
              *(v13 + 404) = 1;
              *(*(v13 + 10) + 360) = v189;
            }

            goto LABEL_170;
          }
        }
      }

      v63 = v62++ < 2;
      v61 += 192;
    }

    while (v61 != 576);
    if (BYTE11(xmmword_1ED4E980C) == 1)
    {
      kdebug_trace();
    }

    *(v13 + 88) = *v202;
    v67 = *(v202 + 16);
    v68 = *(v202 + 32);
    v69 = *(v202 + 48);
    *(v13 + 152) = *(v202 + 64);
    *(v13 + 136) = v69;
    *(v13 + 120) = v68;
    *(v13 + 104) = v67;
    v70 = *(v202 + 80);
    v71 = *(v202 + 96);
    v72 = *(v202 + 112);
    *(v13 + 27) = *(v202 + 128);
    *(v13 + 200) = v72;
    *(v13 + 184) = v71;
    *(v13 + 168) = v70;
    *(v13 + 56) = v54;
    v73 = CA::Render::ImageQueue::hdr_processor(v13, v52);
    v76 = (*(*v73 + 56))(v73, a3);
    v16 = v193;
    v77 = *(v193 + 7);
    a5 = v199;
    if (v77)
    {
      CA::Render::iosurface_set_bulk_from_colorspace(*(v193 + 16), v77, v74, v75);
    }

    if (byte_1ED4E983D == 1)
    {
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v162 = x_log_get_render(void)::log;
      v16 = v193;
      a3 = v195;
      a5 = v199;
      v19 = 1.0;
      v13 = v205;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEBUG))
      {
        v163 = v193[30];
        *v206 = 67109120;
        *&v206[4] = v163;
        _os_log_debug_impl(&dword_183AA6000, v162, OS_LOG_TYPE_DEBUG, "No Display TM, using MSR/GPU TM on surface (0x%x)", v206, 8u);
      }
    }

    v78 = CA::Render::ImageQueue::hdr_processor(v13, v77);
    v79 = (*(*v16 + 288))(v16) ^ 1;
    v80 = (*(*v16 + 280))(v16);
    LOWORD(v186) = 0;
    v81 = (*(*v78 + 24))(v78, v16, a3, v202, v76, v196, v79 | a6, v80, a4, v54, v186);
    if (v81)
    {
      v82 = v81;
      *(v13 + 102) = *(a3 + 130);
      v83 = *(v13 + 10);
      *(v13 + 10) = v82;
      v12 = v200;
      if (v83 && atomic_fetch_add(v83 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v83 + 16))(v83);
      }

      *(v13 + 57) = a4;
      v84 = v16[3];
      v85 = v84 >> 8;
      v86 = v197;
      if (a5 == -1)
      {
        v87 = *(v82 + 12);
      }

      else
      {
        v87 = *(v82 + 12) & 0xFFFFF8FF | (image_queue_rotation_from_logical_rotation(CAMetalLayerRotation,BOOL)::invert_table[concat_table[(8 * a5) | image_queue_rotation_from_logical_rotation(CAMetalLayerRotation,BOOL)::invert_table[(v84 >> 8) & 7]]] << 8);
        v85 &= 0xFFFFF8u;
      }

      *(v82 + 12) = v87 | (v85 << 8);
      *(v82 + 368) = *(v82 + 368) & 0xFFDF | v16[92] & 0x20;
      v191 = v82;
      if (*(a3 + 344))
      {
        v63 = 0;
        goto LABEL_164;
      }

      v89 = 0;
      v90 = 0;
      v91 = 1;
      do
      {
        v92 = v89;
        if (v25 > 0.0 && ((v93 = v45 + 192 * v91, v94 = *(v93 + 16), v95 = v45 + 192 * v90, v96 = *(v95 + 16), v94 < v96) && *(v93 + 24) == *(v95 + 24) || v94 == v96 && *(v93 + 24) < *(v95 + 24)) || v25 < 0.0 && ((v97 = v45 + 192 * v91, v98 = *(v97 + 16), v99 = v45 + 192 * v90, v100 = *(v99 + 16), v98 > v100) && *(v97 + 24) == *(v99 + 24) || v98 == v100 && *(v97 + 24) < *(v99 + 24)))
        {
          v90 = v91;
        }

        v89 = 1;
        v91 = 2;
      }

      while ((v92 & 1) == 0);
      v101 = v45 + 192 * v90;
      v102 = *v101;
      if (*v101 != v16)
      {
        if (v102 && atomic_fetch_add(v102 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v102 + 16))(v102);
        }

        v103 = (v16 + 2);
        if (!atomic_fetch_add(v16 + 2, 1u))
        {
          v16 = 0;
          atomic_fetch_add(v103, 0xFFFFFFFF);
        }

        *v101 = v16;
      }

      v104 = *(v101 + 8);
      if (v104 != v82)
      {
        if (v104 && atomic_fetch_add(v104 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v104 + 16))(v104);
        }

        v105 = v82;
        if (!atomic_fetch_add((v82 + 8), 1u))
        {
          v105 = 0;
          atomic_fetch_add((v82 + 8), 0xFFFFFFFF);
        }

        *(v101 + 8) = v105;
      }

      v63 = 0;
      *(v101 + 28) = ID;
      *(v101 + 16) = *(v13 + 5);
      *(v101 + 24) = *(v13 + 113);
      *(v101 + 32) = a4;
      *(v101 + 40) = *v202;
      v106 = *(v202 + 16);
      v107 = *(v202 + 32);
      v108 = *(v202 + 48);
      *(v101 + 104) = *(v202 + 64);
      *(v101 + 88) = v108;
      *(v101 + 72) = v107;
      *(v101 + 56) = v106;
      v109 = *(v202 + 80);
      v110 = *(v202 + 96);
      v53 = *(v202 + 112);
      *(v101 + 168) = *(v202 + 128);
      *(v101 + 152) = v53;
      *(v101 + 136) = v110;
      *(v101 + 120) = v109;
      *(v101 + 180) = v54;
      *(v101 + 184) = a6;
LABEL_163:
      v86 = v197;
      goto LABEL_164;
    }

    v12 = v200;
    if (CADeviceSupportsToneMapAcceleratorSwitching::once != -1)
    {
      dispatch_once(&CADeviceSupportsToneMapAcceleratorSwitching::once, &__block_literal_global_294);
    }

    if (CADeviceSupportsToneMapAcceleratorSwitching::accelerator_switching != 1 || v190 == *(a3 + 130))
    {
      LOBYTE(v167) = 0;
      *(v13 + 404) = 0;
      goto LABEL_276;
    }

    memset(v206, 0, 48);
    CA::Shape::operator=(v206, CA::RectTraits<int>::infinity);
    CA::shape_union(a3 + 2, v206, v88);
    v17 = 0;
LABEL_243:
    v190 = *(a3 + 130);
  }

  v63 = 0;
  v86 = v197;
LABEL_170:
  if ((v86 & 1) == 0)
  {
    goto LABEL_274;
  }

  LODWORD(v53.f64[0]) = 1.0;
  if (*(v205 + 27) >= 1.0 && *&v208[20] >= 1.0)
  {
    CA::Render::ImageQueue::hdr_processor(v205, v52);
    if (CA::CAHDRProcessor::should_invalidate_tonemapping(v208, v205 + 22, v192, *(v205 + 56)))
    {
      goto LABEL_274;
    }
  }

  v113 = 0;
  v114 = 0;
  v115 = *(a3 + 15);
  v198 = (v45 + 28);
  v116 = v115;
  while (2)
  {
    v117 = v45 + 192 * v113;
    v118 = -(*(v117 + 16) - *(v205 + 5));
    if (v25 >= 0.0)
    {
      v118 = *(v117 + 16) - *(v205 + 5);
    }

    v119 = COERCE_UNSIGNED_INT64(fabs(*(v117 + 16) - *(v205 + 5))) < 0x7FF0000000000000;
    v120 = v118 >= 0.208333333 || !v119;
    if (!v120 && v118 >= 0.0 && *(v117 + 24) >= *(v205 + 113))
    {
      goto LABEL_230;
    }

    v121 = *v117;
    if (*v117)
    {
      if (atomic_fetch_add(v121 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v121 + 16))(v121);
      }

      *v117 = 0;
    }

    v122 = *(v117 + 8);
    if (v122)
    {
      if (atomic_fetch_add(v122 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v122 + 16))(v122);
      }

      *(v117 + 8) = 0;
    }

    *(v117 + 40) = xmmword_183E20F30;
    *(v117 + 16) = 0xFFF0000000000000;
    *(v117 + 24) = 0;
    *(v117 + 32) = 1065353216;
    *(v117 + 56) = xmmword_183E20F40;
    *(v117 + 72) = 0;
    *(v117 + 80) = xmmword_183E20F20;
    *(v117 + 96) = 0;
    *(v117 + 104) = 0;
    *(v117 + 108) = 0x100000001;
    *(v117 + 116) = 0u;
    *(v117 + 132) = 0u;
    *(v117 + 148) = 0x3F80000000000000;
    *(v117 + 164) = 0;
    *(v117 + 156) = 0;
    *(v117 + 172) = -1;
    *(v117 + 180) = 0;
    *(v117 + 184) = 0;
    if (v114 > 1 || !v63 && v114 == 1)
    {
      goto LABEL_230;
    }

    memset(v206, 0, sizeof(v206));
    if (v116 > 0.200000003)
    {
      goto LABEL_274;
    }

LABEL_196:
    if (!CAShmemImageQueueCopyImageInfo(v205, *(v205 + 111), v203, a3, v206, 0, 0, 0, v201 + v116 * v25, v25, v53) || (v123 = CA::Render::Context::lookup_object(*(v12 + 17), *(v12 + 37), *&v206[48], 0, 0, 0)) == 0 || (v124 = (*(*v123 + 80))(v123)) == 0 || (v125 = v124, *(v124 + 12) != 57))
    {
LABEL_228:
      if (!*(v117 + 8))
      {
        v168 = *v117;
        if (*v117)
        {
          if (atomic_fetch_add(v168 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v168 + 16))(v168);
          }

          *v117 = 0;
        }

        *(v117 + 160) = 0u;
        *(v117 + 176) = 0u;
        *(v117 + 128) = 0u;
        *(v117 + 144) = 0u;
        *(v117 + 96) = 0u;
        *(v117 + 112) = 0u;
        *(v117 + 64) = 0u;
        *(v117 + 80) = 0u;
        *(v117 + 32) = 0u;
        *(v117 + 48) = 0u;
        *v117 = 0u;
        *(v117 + 16) = 0u;
        goto LABEL_274;
      }

      v116 = v116 + v115;
      goto LABEL_230;
    }

    CA::Render::Surface::reload_iosurface_needs_film_grain(v124);
    if (!*(v125 + 128) || (*(v125 + 368) & 0x10) == 0)
    {
LABEL_230:
      if (++v113 == 3)
      {
        goto LABEL_274;
      }

      continue;
    }

    break;
  }

  CA::Render::update_texture_flags(v125, v203, *&v206[8], *&v206[20]);
  v126 = IOSurfaceGetID(*(v125 + 128));
  v130 = v126;
  v131 = v198;
  v132 = 3;
  do
  {
    if (*(v131 - 3) == *&v206[56] && *(v131 - 1) == *&v206[4] && *v131 == v126)
    {
      v116 = v116 + v115;
      v12 = v200;
      if (v116 <= 0.200000003)
      {
        goto LABEL_196;
      }

      goto LABEL_274;
    }

    v131 += 48;
    --v132;
  }

  while (v132);
  if (*(v125 + 56))
  {
    CA::Render::iosurface_set_bulk_from_colorspace(*(v193 + 16), *(v193 + 7), v128, v129);
  }

  if (byte_1ED4E983D == 1)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v150 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEBUG))
    {
      v151 = *(v125 + 120);
      *buf = 67109120;
      *&buf[4] = v151;
      _os_log_debug_impl(&dword_183AA6000, v150, OS_LOG_TYPE_DEBUG, "Pre-warming using MSR/GPU tonemapping on surface (0x%x)", buf, 8u);
    }
  }

  v133 = CA::Render::ImageQueue::hdr_processor(v205, v127);
  v134 = (*(*v125 + 288))(v125) ^ 1;
  v135 = (*(*v125 + 280))(v125);
  LOWORD(v186) = 256;
  v136 = v134 | a6;
  a3 = v195;
  v137 = (*(*v133 + 24))(v133, v125, v195, v202, 1, v196, v136, v135, a4, v54, v186);
  if (v137)
  {
    v138 = v137;
    *(v205 + 102) = *(v195 + 130);
    v139 = *(v125 + 12);
    v140 = v139 >> 8;
    if (v199 == -1)
    {
      v141 = *(v137 + 12);
    }

    else
    {
      v141 = *(v137 + 12) & 0xFFFFF8FF | (image_queue_rotation_from_logical_rotation(CAMetalLayerRotation,BOOL)::invert_table[concat_table[(8 * v199) | image_queue_rotation_from_logical_rotation(CAMetalLayerRotation,BOOL)::invert_table[(v139 >> 8) & 7]]] << 8);
      v140 &= 0xFFFFF8u;
    }

    *(v137 + 12) = v141 | (v140 << 8);
    *(v137 + 368) = *(v137 + 368) & 0xFFDF | *(v125 + 368) & 0x20;
    *(v117 + 28) = v130;
    v142 = *v117;
    v12 = v200;
    v45 = v194;
    if (*v117 != v125)
    {
      if (v142 && atomic_fetch_add(v142 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v142 + 16))(v142);
      }

      v143 = (v125 + 8);
      if (!atomic_fetch_add((v125 + 8), 1u))
      {
        v125 = 0;
        atomic_fetch_add(v143, 0xFFFFFFFF);
      }

      *v117 = v125;
    }

    v144 = *(v117 + 8);
    *(v117 + 8) = v138;
    if (v144 && atomic_fetch_add(v144 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v144 + 16))(v144);
    }

    *(v117 + 16) = *&v206[56];
    *(v117 + 24) = *&v206[4];
    *(v117 + 32) = a4;
    v145 = *(v202 + 128);
    v147 = *(v202 + 96);
    v146 = *(v202 + 112);
    *(v117 + 120) = *(v202 + 80);
    *(v117 + 136) = v147;
    *(v117 + 152) = v146;
    *(v117 + 168) = v145;
    v149 = *(v202 + 48);
    v148 = *(v202 + 64);
    v53 = *(v202 + 32);
    *(v117 + 56) = *(v202 + 16);
    *(v117 + 72) = v53;
    *(v117 + 88) = v149;
    *(v117 + 104) = v148;
    *(v117 + 40) = *v202;
    *(v117 + 180) = v54;
    *(v117 + 184) = a6;
    ++v114;
    goto LABEL_228;
  }

  if (CADeviceSupportsToneMapAcceleratorSwitching::once != -1)
  {
    dispatch_once(&CADeviceSupportsToneMapAcceleratorSwitching::once, &__block_literal_global_294);
  }

  v16 = v193;
  a5 = v199;
  v12 = v200;
  v19 = 1.0;
  v17 = v191;
  v13 = v205;
  if (CADeviceSupportsToneMapAcceleratorSwitching::accelerator_switching == 1 && v190 != *(v195 + 130))
  {
    CA::Render::Update::invalidate(v195, CA::RectTraits<int>::infinity);
    goto LABEL_243;
  }

LABEL_274:
  v13 = v205;
LABEL_275:
  LOBYTE(v167) = *(v13 + 404);
LABEL_276:
  os_unfair_lock_unlock(v13 + 14);
  return v167 & 1;
}

void sub_183AD49CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void CA::Render::ImageQueue::pse_mitigate(CA::Render::ImageQueue *this, CA::Render::Update *a2)
{
  if ((*(a2 + 1381) & 4) != 0)
  {
    os_unfair_lock_lock(this + 14);
    v5 = *(this + 3);
    if (v5 && *(v5 + 12) == 57 && *(this + 5) != 0.0)
    {
      v6 = *(this + 10) ? *(this + 10) : *(this + 3);
      if ((*(v6 + 368) & 0x20) != 0 && !*(this + 8))
      {
        if (!*(this + 9))
        {
          v7 = X::Allocator0::operator new(0x20uLL);
          if (v7)
          {
            *v7 = objc_opt_new();
          }

          *(this + 9) = v7;
        }

        v8 = CA::Render::ImageQueue::resolved_display_attributes(this, a2);
        v9 = CA::CAPSEProcessor::process_surface(*(this + 9), v6, *(this + 5), *(v8 + 12), *(v8 + 20));
        v10 = *(this + 8);
        *(this + 8) = v9;
        if (v10)
        {
          if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v10 + 16))(v10);
          }

          v9 = *(this + 8);
        }

        if (v9)
        {
          atomic_fetch_add(v9 + 9, 1u);
        }
      }
    }

    os_unfair_lock_unlock(this + 14);
  }
}

void CAShmemImageQueueCollectable(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a3)
  {
    v4 = *(a1 + 44) != a3;
  }

  else
  {
    v4 = 1;
  }

  v5 = *(a1 + 28);
  v6 = v4 | a4;
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (a2 && a3)
    {
      *(a1 + 44) = a3;
LABEL_12:
      *(a1 + 76) = CA::MachPortUtil::call_with_timeout<int (*)(unsigned int,unsigned int,unsigned int),unsigned int>(a2, *(a1 + 76), "IQCollectable", _CACImageQueueCollectable, v5) == 268435460;
      return;
    }

    if (a2)
    {
      goto LABEL_12;
    }

    if (CA::MachPortUtil::reply_queue(void)::once[0] != -1)
    {
      v9 = *(a1 + 28);
      dispatch_once(CA::MachPortUtil::reply_queue(void)::once, &__block_literal_global_10344);
      v5 = v9;
    }

    v8 = CA::MachPortUtil::reply_queue(void)::queue;

    dispatch_async_f(v8, v5, collectable_callback);
  }
}

uint64_t CA::MachPortUtil::call_with_timeout<int (*)(unsigned int,unsigned int,unsigned int),unsigned int>(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, uint64_t), uint64_t a5)
{
  v5 = a5;
  v9 = a1;
  v29 = *MEMORY[0x1E69E9840];
  v10 = a4(a1, 0, a5);
  v11 = v10;
  if (!v10)
  {
    return v11;
  }

  if (v10 == 268435460)
  {
    if (v9 - 1 > 0xFFFFFFFD || mach_port_mod_refs(*MEMORY[0x1E69E9A60], v9, 0, 1))
    {
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v13 = x_log_get_utilities::log;
      if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v24 = a3;
        v14 = "%s failed to retain right";
        v15 = v13;
        v16 = 12;
LABEL_14:
        _os_log_error_impl(&dword_183AA6000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
      }
    }

    else
    {
      if (CA::MachPortUtil::reply_queue(void)::once[0] != -1)
      {
        dispatch_once(CA::MachPortUtil::reply_queue(void)::once, &__block_literal_global_10344);
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 0x40000000;
      v18[2] = ___ZN2CA12MachPortUtil17call_with_timeoutIPFijjjEJjEEEijjbPKcT_DpT0__block_invoke;
      v18[3] = &__block_descriptor_tmp_102_15235;
      v19 = v9;
      v20 = 2;
      v21 = v5;
      v22 = a2;
      v18[4] = a4;
      v18[5] = a3;
      dispatch_async(CA::MachPortUtil::reply_queue(void)::queue, v18);
    }
  }

  else
  {
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v17 = x_log_get_utilities::log;
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = a3;
      v25 = 1024;
      v26 = v11;
      v27 = 2080;
      v28 = mach_error_string(v11);
      v14 = "%s client message err=0x%x : %s";
      v15 = v17;
      v16 = 28;
      goto LABEL_14;
    }
  }

  return v11;
}

uint64_t _CACImageQueueCollectable(mach_port_t a1, mach_msg_timeout_t timeout, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E69E99E0];
  v8 = a3;
  *&v6.msgh_bits = 19;
  v6.msgh_voucher_port = 0;
  v6.msgh_id = 40403;
  v6.msgh_remote_port = a1;
  v6.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v6);
  }

  v4 = mach_msg(&v6, 17, 0x24u, 0, 0, timeout, 0);
  if ((v4 - 268435459) <= 1)
  {
    if ((v6.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v6.msgh_local_port);
    }

    mach_msg_destroy(&v6);
  }

  return v4;
}

BOOL CA::Render::Layer::append_texture_transform(CA::Render::Layer *this, CA::Transform *a2, CA::Render::Texture *a3, CA::Render::Object *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  if ((*(this + 46) & 2) != 0)
  {
    return 0;
  }

  v7 = (a3 + 16);
  v8 = *(a3 + 4);
  v10 = (a3 + 20);
  v9 = *(a3 + 5);
  v11 = v9;
  v43.f64[0] = v8;
  v43.f64[1] = v9;
  v45 = 0;
  v44[0] = xmmword_183E20E00;
  v44[1] = 0u;
  v12 = 0.0;
  v44[2] = xmmword_183E20E60;
  memset(&v44[3], 0, 32);
  v44[5] = xmmword_183E20E00;
  v44[6] = 0u;
  v44[7] = xmmword_183E20E60;
  __asm { FMOV            V0.2D, #1.0 }

  v40 = _Q0;
  v44[8] = _Q0;
  if (*(a4 + 12) != 56)
  {
    v18 = *(a3 + 3);
    if ((v18 & 0x6400) == 0)
    {
      goto LABEL_15;
    }

    if ((v18 & 0x100) != 0)
    {
      _Q0.f64[0] = 0.0;
      v24 = CA::Transform::translate(v44, _Q0, -v9, 0.0);
      v24.f64[0] = 1.0;
      _Q0.f64[0] = CA::Transform::scale(v44, v24, -1.0, 1.0);
      v18 = *(a3 + 3);
      if ((v18 & 0x200) == 0)
      {
LABEL_7:
        if ((v18 & 0x400) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_26;
      }
    }

    else if ((v18 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    _Q0.f64[0] = -*(a3 + 4);
    v25 = CA::Transform::translate(v44, _Q0, 0.0, 0.0);
    v25.f64[0] = -1.0;
    _Q0.f64[0] = CA::Transform::scale(v44, v25, 1.0, 1.0);
    v18 = *(a3 + 3);
    if ((v18 & 0x400) == 0)
    {
LABEL_8:
      if ((v18 & 0x4000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }

LABEL_26:
    _Q0.f64[0] = 0.0;
    CA::Transform::translate(v44, _Q0, -*(a3 + 5), 0.0);
    _Q0.f64[0] = CA::Transform::rotate90(v44, v26, v27, v28);
    v18 = *(a3 + 3);
    if ((v18 & 0x4000) == 0)
    {
LABEL_9:
      if ((v18 & 0x2000) == 0)
      {
LABEL_11:
        LODWORD(v41.f64[0]) = 0;
        v42 = 0;
        if ((v18 & 0x6400) != 0)
        {
          v7 = &v41;
          v10 = &v42;
          CA::Render::Texture::displayed_size_(a3, &v41, &v42);
        }

        LODWORD(_Q0.f64[0]) = *v7;
        v8 = *&_Q0.f64[0];
        LODWORD(_Q0.f64[0]) = *v10;
        v11 = *&_Q0.f64[0];
        goto LABEL_14;
      }

LABEL_10:
      _Q0.f64[0] = *(a3 + 8);
      _Q0.f64[0] = CA::Transform::scale(v44, _Q0, 1.0, 1.0);
      v18 = *(a3 + 3);
      goto LABEL_11;
    }

LABEL_27:
    _Q0.f64[0] = -*(a3 + 12);
    _Q0 = CA::Transform::translate(v44, _Q0, -*(a3 + 13), 0.0);
    if ((v18 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  LODWORD(_Q0.f64[0]) = *(a4 + 8);
  v8 = *&_Q0.f64[0];
  v11 = *(a4 + 9);
LABEL_14:
  v43.f64[0] = v8;
  v43.f64[1] = v11;
LABEL_15:
  v19 = *(this + 17);
  if (!v19)
  {
    v23 = *(this + 38);
    if (!*(this + 38))
    {
      v22 = 0;
      v21 = 0.0;
LABEL_30:
      _Q0.f64[0] = v21;
      CA::Transform::scale_2d_right(v44, _Q0, a2, a3, a4);
      v8 = v8 * v21;
      v11 = v11 * v21;
      v43.f64[0] = v8;
      v43.f64[1] = v11;
      if (!v22)
      {
        goto LABEL_37;
      }

      goto LABEL_31;
    }

    if (v23 == 1)
    {
      goto LABEL_37;
    }

    v20 = v23;
LABEL_22:
    v22 = *(this + 17);
    v21 = 1.0 / v20;
    goto LABEL_30;
  }

  v20 = *(v19 + 304);
  if (v20 != 1.0)
  {
    if (v20 == 0.0)
    {
      v21 = 0.0;
      v22 = *(this + 17);
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  v22 = *(this + 17);
LABEL_31:
  v29 = *(v22 + 40);
  if (v29)
  {
    v30 = v29[3];
    if (v30 < 0.0)
    {
      return 0;
    }

    v31 = v29[4];
    if (v31 < 0.0)
    {
      return 0;
    }

    v32 = v29[5];
    if (v32 > 1.0)
    {
      return 0;
    }

    v33 = v29[6];
    if (v33 > 1.0)
    {
      return 0;
    }

    _Q0.f64[0] = -(v30 * v8);
    CA::Transform::translate_right(v44, _Q0, -(v31 * v11), v12);
    v8 = (v32 - v30) * v8;
    v11 = (v33 - v31) * v11;
    v43.f64[0] = v8;
    v43.f64[1] = v11;
  }

LABEL_37:
  v41 = v40;
  if ((*(this + 5) & 0xF000) != 0x9000 || *(this + 9) != 0.0 || *(this + 10) != 0.0 || v19 && *(v19 + 32) || *(this + 11) != v8 || *(this + 12) != v11)
  {
    CA::Render::Layer::append_contents_transform(this, a2, &v43, &v41);
    v35 = v41.f64[0];
    v34 = v41.f64[1];
    CA::Transform::concat_left(a2, v44, v36, v37);
    if (v35 == 1.0 && v34 == 1.0)
    {
      return 1;
    }

    v38 = *(this + 17);
    return !v38 || !*(v38 + 48);
  }

  CA::Transform::concat_left(a2, v44, a3, a4);
  return 1;
}

double CA::Transform::scale_2d_right(CA::Transform *this, __n128 a2, uint64_t a3, uint64_t a4, const double *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2.n128_f64[0] != 1.0)
  {
    v5 = *(this + 144);
    if ((v5 & 0x10) != 0)
    {
      v19 = 8;
      v9[1] = 0u;
      v10 = 0;
      v12 = 0u;
      v13 = 0u;
      v15 = 0u;
      v16 = xmmword_183E20E60;
      v9[0] = a2.n128_u64[0];
      v11 = a2.n128_u64[0];
      v14 = 0x3FF0000000000000uLL;
      v17 = a2.n128_u64[0];
      v18 = 1.0 / a2.n128_f64[0];
      a2.n128_f64[0] = CA::Transform::concat(this, v9, a4, a5);
    }

    else
    {
      v6 = *(this + 16) * a2.n128_f64[0];
      v7 = *(this + 17) / a2.n128_f64[0];
      *(this + 16) = v6;
      *(this + 17) = v7;
      *(this + 144) = v5 & 0xE7 | (8 * (v6 != 1.0));
      *this = vmulq_n_f64(*this, a2.n128_f64[0]);
      *(this + 2) = vmulq_n_f64(*(this + 2), a2.n128_f64[0]);
      a2 = vmulq_n_f64(*(this + 6), a2.n128_f64[0]);
      *(this + 6) = a2;
    }
  }

  return a2.n128_f64[0];
}

uint64_t CA::HDRProcessorInternal::supports_scaling_transforms(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 520);
  if (CADeviceHasHardwareAcceleratedHDR::once != -1)
  {
    dispatch_once(&CADeviceHasHardwareAcceleratedHDR::once, &__block_literal_global_144);
  }

  if (CADeviceHasHardwareAcceleratedHDR::has_capability != 1 || (v4 <= 3 ? (v5 = v4 == 2) : (v5 = 1), v5))
  {
    v6 = 0;
  }

  else if ((*(*a2 + 280))(a2))
  {
    if (CADeviceSupportsFilmGrainScaling::once != -1)
    {
      dispatch_once(&CADeviceSupportsFilmGrainScaling::once, &__block_literal_global_211);
    }

    v6 = CADeviceSupportsFilmGrainScaling::supports_film_grain_scaling;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t CA::Render::ImageQueue::hdr_processor(CA::Render::ImageQueue *this, CA::Render::Context *a2)
{
  if (!*(this + 47))
  {
    CA::CAHDRProcessor::new_hdr_processor(this);
  }

  return *(this + 47);
}

BOOL CA::HDRProcessorInternal::supports_rotation_transforms(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 520);
  if (CADeviceHasHardwareAcceleratedHDR::once != -1)
  {
    dispatch_once(&CADeviceHasHardwareAcceleratedHDR::once, &__block_literal_global_144);
  }

  v5 = v3 < 2 || v3 == 3;
  return CADeviceHasHardwareAcceleratedHDR::has_capability == 1 && v5;
}

void _XImageQueueCollectable(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    CAImageQueueCollectable(a1[8]);
    *(a2 + 32) = 0;
  }
}

BOOL CA::OGL::MetalContext::update(CA::OGL::MetalContext *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(this + 75);
  if (v2 && (v3 = (*(*v2 + 16))(v2)) != 0)
  {
    v4 = *(v3 + 180) * *(v3 + 176);
    if (CADeviceUseCIF10::once != -1)
    {
      dispatch_once(&CADeviceUseCIF10::once, &__block_literal_global_12623);
    }

    v5 = 10;
    if (CADeviceUseCIF10::enable_cif10)
    {
      v5 = 20;
    }

    v6 = v5 * v4;
    if (v6 <= 0x200000)
    {
      v6 = 0x200000;
    }
  }

  else
  {
    v6 = 0x8000000;
  }

  *(this + 104) = v6;
  v7 = *(this + 84);
  if (!v7)
  {
    if (x_log_get_ogl_metal(void)::once != -1)
    {
      dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
    }

    v8 = x_log_get_ogl_metal(void)::log;
    if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_183AA6000, v8, OS_LOG_TYPE_ERROR, "Can't run metal against null surface\n", v10, 2u);
    }
  }

  return v7 != 0;
}

void CA::OGL::Context::prepare_context(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2 + 504;
  *(a1 + 24) = a2;
  *(a1 + 872) = global_feature_flags | *(a1 + 632);
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  for (i = 0; i != 93; ++i)
  {
    *(a1 + 884 + 4 * i) = CAGetDebugValueFloat(i);
  }

  *(a1 + 656) = 0;
}

float CAGetDebugValueFloat(unsigned int a1)
{
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  result = 0.0;
  if (a1 <= 0x5C)
  {
    return *&debug_values[a1];
  }

  return result;
}

void CA::IOMobileFramebuffer::swap_begin(CA::IOMobileFramebuffer *this, unsigned int *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(this + 8) == 1)
  {
    v3[0] = 0;
    v3[1] = v3;
    v3[2] = 0x2000000000;
    v4 = 0;
    BMMonitorBlockExecutionWithSignature();
    _Block_object_dispose(v3, 8);
  }

  else if (!IOMobileFramebufferSwapBegin())
  {
    *(this + 16) = 0;
  }
}

void CAImageQueueCollectable(int a1)
{
  pthread_mutex_lock(&collectable_mutex);
  v2 = collectable_list;
  if (collectable_list)
  {
    while (1)
    {
      v3 = *v2;
      if (*(*v2 + 7) == a1)
      {
        break;
      }

      v2 = v2[1];
      if (!v2)
      {
        goto LABEL_4;
      }
    }

    CFRetain(*v2);
    pthread_mutex_unlock(&collectable_mutex);
    v4 = v3[9];
    if (v4)
    {

      dispatch_async_f(v4, v3, invoke_collectable_callback);
    }

    else
    {

      invoke_collectable_callback(v3);
    }
  }

  else
  {
LABEL_4:

    pthread_mutex_unlock(&collectable_mutex);
  }
}

void layer_private_cleanup_callbacks(_CAMetalLayerPrivate *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 208);
  os_unfair_lock_lock(a1 + 52);
  v3 = [*(a1 + 27) copy];
  [*(a1 + 27) removeAllObjects];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v4)
  {
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        [v7 setStatus:3];
        [v7 didPresentAtTime:0.0];
      }

      v4 = [v3 countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock(v2);

  v8 = (a1 + 184);
  os_unfair_lock_lock(a1 + 46);
  v9 = [*(a1 + 24) copy];
  [*(a1 + 24) removeAllObjects];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v10)
  {
    v11 = *v15;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * j) didScheduledPresent];
      }

      v10 = [v9 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v10);
  }

  os_unfair_lock_unlock(v8);
}

double CA::Rect::apply_transform_interior(int8x16_t *this, const CA::Transform *a2)
{
  v17[8] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 144);
  if ((v4 & 0x10) != 0)
  {
    if (CA::Mat4Impl::mat4_is_rectilinear(a2, a2))
    {

      *&result = CA::Mat4Impl::mat4_apply_to_rect(a2, this, v10).u64[0];
    }

    else
    {
      v11 = *this[1].i64;
      result = *&this[1].i64[1];
      if (v11 <= result)
      {
        v12 = *&this[1].i64[1];
      }

      else
      {
        v12 = *this[1].i64;
      }

      if (v12 < 1.79769313e308)
      {
        v13 = 0;
        v14 = *&this->i64[1];
        v17[0] = *this->i64;
        v17[1] = v14;
        v17[2] = v11 + v17[0];
        v17[3] = v14;
        v17[4] = v11 + v17[0];
        v17[5] = result + v14;
        v17[6] = v17[0];
        v17[7] = result + v14;
        do
        {
          CA::Mat4Impl::mat4_apply_to_point2(a2, &v17[v13], v10);
          v13 += 2;
        }

        while (v13 != 8);
        CA::Rect::set_corners_interior(this, v17);
      }
    }
  }

  else
  {
    v6 = *this[1].i64;
    result = *&this[1].i64[1];
    if (v6 <= result)
    {
      v7 = *&this[1].i64[1];
    }

    else
    {
      v7 = *this[1].i64;
    }

    if (v7 < 1.79769313e308)
    {
      if ((*(a2 + 144) & 8) != 0)
      {
        v8 = *&this->i64[1];
        *this->i64 = *this->i64 * *(a2 + 16);
        *&this->i64[1] = v8 * *(a2 + 16);
        v6 = *(a2 + 16) * v6;
        *this[1].i64 = v6;
        result = *(a2 + 16) * result;
        *&this[1].i64[1] = result;
        v4 = *(a2 + 144);
      }

      if ((v4 & 4) != 0)
      {
        v15 = this->i64[0];
        *this->i64 = -(result + *&this->i64[1]);
        this->i64[1] = v15;
        *this[1].i64 = result;
        *&this[1].i64[1] = v6;
        v4 = *(a2 + 144);
        v9 = v6;
        if ((v4 & 2) == 0)
        {
LABEL_24:
          v16 = *&this->i64[1];
          if (v4)
          {
            v16 = -(v9 + v16);
            *&this->i64[1] = v16;
          }

          *this->i64 = *this->i64 + *(a2 + 12);
          result = v16 + *(a2 + 13);
          *&this->i64[1] = result;
          return result;
        }
      }

      else
      {
        v9 = result;
        result = v6;
        if ((v4 & 2) == 0)
        {
          goto LABEL_24;
        }
      }

      *this->i64 = -(result + *this->i64);
      v4 = *(a2 + 144);
      goto LABEL_24;
    }
  }

  return result;
}

uint64_t CA::Rect::set_corners_interior(uint64_t result, double *a2)
{
  v3 = result;
  v41 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v4 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v37 = v5;
  v38 = v7;
  v9 = a2[4];
  v8 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  v39 = v9;
  v40 = v11;
  v33 = v4;
  v34 = v6;
  v35 = v8;
  v36 = v10;
  if (v5 <= v7)
  {
    v7 = v5;
  }

  else
  {
    v37 = v7;
    v38 = v5;
  }

  if (v9 <= v11)
  {
    v11 = v9;
  }

  else
  {
    v39 = v11;
    v40 = v9;
  }

  if (v4 <= v6)
  {
    v6 = v4;
  }

  else
  {
    v33 = v6;
    v34 = v4;
  }

  if (v8 <= v10)
  {
    v10 = v8;
  }

  else
  {
    v35 = v10;
    v36 = v8;
  }

  v12 = v7 < v11;
  v13 = 2;
  if (v7 >= v11)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  v15 = *(&v37 + (v7 < v11));
  v16 = *(&v37 + v14);
  if (v15 < v16)
  {
    v17 = *(&v37 + (v7 < v11));
  }

  else
  {
    ++v14;
    v17 = v16;
  }

  if (v6 >= v10)
  {
    v18 = 3;
  }

  else
  {
    v18 = 2;
  }

  v19 = *(&v33 + (v6 < v10));
  v20 = *(&v33 + v18);
  if (v6 >= v10)
  {
    v13 = 1;
  }

  if (v19 < v20)
  {
    v21 = *(&v33 + (v6 < v10));
  }

  else
  {
    v13 = v6 < v10;
    ++v18;
    v21 = v20;
  }

  if (v7 >= v11 || v15 >= v16)
  {
    v23 = 2;
    if (v7 >= v11)
    {
      v23 = 1;
    }

    if (v15 < v16)
    {
      v12 = v23;
    }

    v22 = *(&v37 + v12);
    if (v14 <= 3 && v22 >= *(&v37 + v14))
    {
      v22 = *(&v37 + v14);
    }
  }

  else
  {
    v22 = *(&v37 + v14);
  }

  if (v6 >= v10 || v19 >= v20)
  {
    v24 = *(&v33 + v13);
    if (v18 <= 3 && v24 >= *(&v33 + v18))
    {
      v24 = *(&v33 + v18);
    }
  }

  else
  {
    v24 = *(&v33 + v18);
  }

  v25 = 0;
  v26 = a2 + 1;
  v27 = 0.0;
  v28 = 3;
  do
  {
    v27 = v27 + *v26 * a2[2 * v28] - a2[2 * v28 + 1] * *(v26 - 1);
    v28 = v25++;
    v26 += 2;
  }

  while (v25 != 4);
  v29 = (v24 - v21) * (v22 - v17);
  if (v27 < 0.0)
  {
    v27 = -v27;
  }

  if (COERCE__INT64(fabs((v24 - v21) * (v22 - v17))) <= 0x7FEFFFFFFFFFFFFFLL && ((v30 = v27 * 0.5, v31 = v27 * 0.25, v29 <= v30) ? (v32 = v29 <= v31) : (v32 = 1), !v32 && (result = CA::point_inside_quad(a2, v17, v21), result) && (result = CA::point_inside_quad(a2, v22, v21), result) && (result = CA::point_inside_quad(a2, v22, v24), result) && (result = CA::point_inside_quad(a2, v17, v24), result)))
  {
    *v3 = v17;
    v3[1] = v21;
    v3[2] = v22 - v17;
    v3[3] = v24 - v21;
  }

  else
  {
    *v3 = 0u;
    *(v3 + 1) = 0u;
  }

  return result;
}

uint64_t CA::point_inside_quad(double *a1, double a2, double a3)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = (v3 - v5) * (a2 - *a1) + (v4 - *a1) * (a3 - v3);
  v7 = a1[4];
  v8 = a1[5];
  v9 = (v5 - v8) * (a2 - v4) + (v7 - v4) * (a3 - v5);
  v10 = a1[6];
  v11 = a1[7];
  v12 = (v8 - v11) * (a2 - v7) + (v10 - v7) * (a3 - v8);
  v13 = (v11 - v3) * (a2 - v10) + (a3 - v11) * (*a1 - v10);
  if (v6 <= 0.0 && v9 <= 0.0 && v12 <= 0.0 && v13 <= 0.0)
  {
    return 1;
  }

  v15 = v6 >= 0.0;
  if (v9 < 0.0)
  {
    v15 = 0;
  }

  if (v12 < 0.0)
  {
    v15 = 0;
  }

  return v13 >= 0.0 && v15;
}

uint64_t CA::OGL::MetalBufferPool::set_encoder(uint64_t this, objc_object *a2)
{
  if (a2)
  {
    v3 = this;
    *(this + 160) = 0u;
    *(this + 176) = 0u;
    *(this + 128) = 0u;
    *(this + 144) = 0u;
    *(this + 96) = 0u;
    *(this + 112) = 0u;
    *(this + 64) = 0u;
    *(this + 80) = 0u;
    *(this + 192) = a2;
    *(this + 200) = [(objc_object *)a2 methodForSelector:sel_setVertexBuffer_offset_atIndex_];
    v3[26] = [(objc_object *)a2 methodForSelector:sel_setFragmentBuffer_offset_atIndex_];
    v3[27] = [(objc_object *)a2 methodForSelector:sel_setVertexBufferOffset_atIndex_];
    v3[28] = [(objc_object *)a2 methodForSelector:sel_setFragmentBufferOffset_atIndex_];
    this = [(objc_object *)a2 methodForSelector:sel_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_];
    v3[29] = this;
  }

  return this;
}

double CA::OGL::MetalContext::update_encoder_state(uint64_t a1, uint64_t a2, int a3, double a4, double a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 3536);
  if (v7)
  {
    v16[0] = 0;
    v16[1] = 0;
    v8 = 44;
    if ((*(a2 + 308) & 0x400) == 0)
    {
      v8 = 40;
    }

    v9 = *(a2 + v8);
    v10 = *(a1 + 672);
    if (v10)
    {
      v11 = *(v10 + 144) >> 1;
      LOBYTE(v10) = v11 & 0x1F;
      v9 >>= v11;
    }

    v12 = 40;
    if ((*(a2 + 308) & 0x400) == 0)
    {
      v12 = 44;
    }

    v13 = (*(a2 + v12) >> v10);
    *&v16[2] = v9;
    *&v16[3] = v13;
    v17 = xmmword_183E20E60;
    [v7 setViewport:v16];
    *(a1 + 3856) |= 2u;
  }

  if ((a3 & 4) != 0)
  {
    [*(a1 + 3536) setFrontFacingWinding:0];
    if ((a3 & 8) == 0)
    {
LABEL_11:
      if ((a3 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

  else if ((a3 & 8) == 0)
  {
    goto LABEL_11;
  }

  [*(a1 + 3536) setCullMode:0];
  if ((a3 & 0x20) == 0)
  {
LABEL_12:
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  LODWORD(a5) = 1.0;
  [*(a1 + 3536) setDepthBias:0.0 slopeScale:a5 clamp:0.0];
  if ((a3 & 0x80) == 0)
  {
LABEL_13:
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_21:
  [*(a1 + 3536) setTriangleFillMode:0];
  if ((a3 & 0x100) == 0)
  {
LABEL_14:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_15;
    }

LABEL_23:
    [*(a1 + 3536) setDepthStencilState:*(a1 + 4704)];
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_22:
  [*(a1 + 3536) setBlendColorRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  if ((a3 & 0x200) != 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  if ((a3 & 0x400) != 0)
  {
LABEL_16:
    [*(a1 + 3536) setVisibilityResultMode:0 offset:0];
  }

LABEL_17:
  *(a1 + 3856) |= a3;
  *(a1 + 3976) = -1;
  *(a1 + 3968) = 0;
  v14 = *(a1 + 4016);
  *(a1 + 4032) = 2143289344;
  *(a1 + 4520) = 2143289344;
  *(a1 + 4020) = 0x7FC000007FC00000;
  *(a1 + 4464) = 9;
  *(a1 + 4480) = 2143289344;
  *(a1 + 4512) = -1;
  result = 0.0;
  *(a1 + 4528) = 0u;
  *(a1 + 4544) = 0u;
  *(a1 + 4560) = 0u;
  *(a1 + 4576) = 0u;
  *(a1 + 4592) = 0u;
  *(a1 + 4608) = 0u;
  *(a1 + 4624) = 0u;
  *(a1 + 4640) = 0u;
  *(a1 + 4656) = 0;
  *(a1 + 4016) = v14 & 0xE0;
  *(a1 + 65) = *(a1 + 65) & 0xFE | ((a3 & 0x40) != 0);
  *(a1 + 48) = -1;
  return result;
}

void CA::OGL::LayerNode::prepare_sublayers_roi_if_needed(CA::OGL::LayerNode *this)
{
  v2[1] = *MEMORY[0x1E69E9840];
  if ((*(this + 240) & 2) == 0)
  {
    CA::OGL::LayerNode::prepare_sublayers_if_needed(this);
    *(this + 31) = CA::OGL::prepare_layers_roi(*(this + 1), *(this + 31), this + 56, this + 32);
    if ((*(*(this + 2) + 32) & 0x84000000000) == 0x4000000000 && (BYTE11(xmmword_1ED4E98AC) & 1) == 0)
    {
      v2[0] = 1;
      CA::OGL::LayerNode::prepare_sublayers_sdf_blending(this, v2);
      CA::Shape::unref(v2[0]);
    }

    *(this + 240) |= 2u;
  }
}

uint64_t CA::OGL::MetalContext::start_render_encoder(CA::OGL::MetalContext *this)
{
  LOBYTE(v2) = 0;
  v3 = this + 4680;
  v51 = *MEMORY[0x1E69E9840];
  for (i = *(this + 442); ; i = 0)
  {
    v5 = *(this + 84);
    if (i && (v6 = *(this + 589)) != 0 && *(v6 + 288) != *(v6 + 286))
    {
      v9 = *(this + 595);
      if (*(this + 692))
      {
        v10 = 2;
      }

      else
      {
        v10 = 8;
      }

      v11 = v9[10];
      LOBYTE(v12) = 1;
      if (v11 > v10)
      {
        return 1;
      }
    }

    else
    {
      v7 = *(this + 2);
      if (v7)
      {
        v8 = *(v7 + 497);
        v9 = *(this + 595);
        if (*(this + 692))
        {
          v10 = 2;
        }

        else
        {
          v10 = 8;
        }

        v11 = v9[10];
        if (v11 > v10)
        {
          if ((v8 & 4) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_25;
        }

        v12 = (v8 >> 2) & 1;
      }

      else
      {
        v9 = *(this + 595);
        if (*(this + 692))
        {
          v10 = 2;
        }

        else
        {
          v10 = 8;
        }

        v11 = v9[10];
        if (v11 > v10)
        {
LABEL_24:
          CA::OGL::MetalContext::flush(this, 0);
          i = *(this + 442);
          goto LABEL_25;
        }

        LOBYTE(v12) = 0;
      }
    }

    if (v11 == v10 && !((v9[6] <= (v9[7] - (v9[7] >> 4))) | v12 & 1))
    {
      goto LABEL_24;
    }

LABEL_25:
    if (i)
    {
      return 1;
    }

    v49 = v2;
    v13 = *(this + 589);
    if (v13)
    {
      v14 = *(v5 + 272) == v13;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v15 = *(this + 589);
    }

    else
    {
      v15 = v5;
    }

    v16 = *(v15 + 144);
    if ((v16 & 0x20000000) != 0)
    {
      v17 = 2;
    }

    else
    {
      v17 = v16 >> 31;
    }

    if ((*(v5 + 308) << 12) >= 1)
    {
      v18 = 0;
      do
      {
        v19 = *(this + 84);
        if (v19)
        {
          LODWORD(v19) = (*(v19 + 144) >> 1) & 0x1F;
        }

        v20 = *(v5 + 286);
        if (((1 << v18) & v20) != 0)
        {
          v21 = 0;
        }

        else
        {
          v21 = v19;
        }

        if (((1 << v18) & v20) != 0)
        {
          v22 = 0;
        }

        else
        {
          v22 = v17;
        }

        if (((v18 == 2) & ((*(v5 + 92) & 0x2000u) >> 13)) != 0)
        {
          v23 = 2;
        }

        else
        {
          v23 = v22;
        }

        v24 = *&v3[8 * v18];
        [v24 setLoadAction:v23];
        [v24 setLevel:v21];
        ++v18;
      }

      while (v18 < (*(v5 + 308) << 60) >> 60);
    }

    [*(this + 584) setFineGrainedBackgroundVisibilityEnabled:*(v5 + 286) != 0];
    CA::OGL::MetalContext::stop_encoders(this);
    if ((CA::OGL::MetalContext::start_command_buffer(this, *(this + 455), v25) & 1) == 0)
    {
      return 0;
    }

    CA::OGL::MetalContext::SharedEvent::encode_all((this + 2776), this, v26);
    v27 = [*(this + 441) renderCommandEncoderWithDescriptor:*(this + 584)];
    *(this + 442) = v27;
    if (!v27)
    {
      break;
    }

    if (byte_1ED4E9879 == 1)
    {
      v28 = mach_continuous_time();
      v27 = *(this + 442);
    }

    else
    {
      v28 = 0;
    }

    *(this + 457) = v28;
    ++*(this + 874);
    *(this + 445) = [v27 methodForSelector:sel_setRenderPipelineState_];
    *(this + 446) = [*(this + 442) methodForSelector:sel_setFragmentTexture_atIndex_];
    *(this + 447) = [*(this + 442) methodForSelector:sel_setFragmentSamplerState_atIndex_];
    *(this + 448) = [*(this + 442) methodForSelector:sel_setScissorRect_];
    *(this + 449) = [*(this + 442) methodForSelector:sel_drawPrimitives_vertexStart_vertexCount_instanceCount_];
    CA::OGL::MetalBufferPool::set_encoder(*(this + 595), *(this + 442));
    v29 = *(v5 + 144);
    *(v5 + 144) = v29 | 0x80000000;
    v30 = *(v5 + 92);
    if ((v29 & 0x20000000) != 0 && (v30 & 0x800) == 0)
    {
      *(v5 + 144) = v29 & 0x1FFFFFFF | 0xC0000000;
      *(v5 + 264) = *(v5 + 256);
    }

    if ((v30 & 0x40) != 0)
    {
      *(v5 + 308) |= 0x100u;
    }

    v31 = *(v5 + 24);
    if (!v31)
    {
      v31 = *(this + 172);
      if (!v31)
      {
        *(this + 916) = 0;
        *(this + 459) = 0;
        *(this + 920) = 0;
LABEL_65:
        v33 = *(this + 442);
        v34 = @"com.apple.coreanimation.assembly-encoder";
LABEL_66:
        [v33 setLabel:v34];
        goto LABEL_67;
      }
    }

    v32 = *(v31 + 388) & 0x1FFFF;
    *(this + 916) = v32;
    *(this + 459) = 0;
    *(this + 920) = 0;
    if (byte_1ED4E9879)
    {
      v43 = *(v31 + 24);
      if (v43)
      {
        *(this + 459) = CA::Render::Object::render_id(v43);
      }

      v44 = *(v31 + 16);
      if (v44)
      {
        v45 = *(v44 + 40);
        if (v45)
        {
          v46 = *(v45 + 24);
          if (v46)
          {
            LODWORD(v46) = *(v46 + 16);
          }

          *(this + 920) = v46;
        }
      }
    }

    if (!v32)
    {
      goto LABEL_65;
    }

    if (byte_1ED4E98BE != 1)
    {
      v33 = *(this + 442);
      v34 = @"com.apple.coreanimation.offscreen-encoder";
      goto LABEL_66;
    }

    v37 = [@"com.apple.coreanimation.offscreen-encoder:" mutableCopy];
    v38 = *(v31 + 24);
    if (v38)
    {
      v39 = *(v38 + 128);
      if (v39)
      {
        v38 = v39 + 28;
      }

      else
      {
        v38 = 0;
      }
    }

    v40 = v37;
    [v37 appendFormat:@" [%s]", v38];
    for (j = 0; j != 32; ++j)
    {
      if ((v32 >> j))
      {
        if (j <= 0x10)
        {
          v42 = CA::Render::offscreen_flag_names[j];
        }

        else
        {
          v42 = 0;
        }

        [v40 appendFormat:@" [%s]", v42];
      }
    }

    [*(this + 442) setLabel:v40];

LABEL_67:
    CA::OGL::MetalContext::update_encoder_state(this, v5, 0, v35, v36);
    if (v49)
    {
      return 1;
    }

    if (v17 != 1)
    {
      CA::OGL::Context::marked_destination(this);
      if ((v16 & 0x20000000) != 0)
      {
        *(v5 + 144) |= 0x40000000u;
      }
    }

    v2 = 1;
    if (*(this + 442))
    {
      return v2;
    }
  }

  if (x_log_get_ogl_metal(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
  }

  v48 = x_log_get_ogl_metal(void)::log;
  if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_183AA6000, v48, OS_LOG_TYPE_ERROR, "Unable to start render command encoder\n", buf, 2u);
  }

  return 0;
}

void CA::OGL::Context::marked_destination(CA::OGL::Context *this)
{
  v9 = *MEMORY[0x1E69E9840];
  *(this + 692) |= 0x880u;
  v1 = *(this + 84);
  if (v1)
  {

    CA::OGL::Context::marked_surface(this, v1);
  }

  else if (*(this + 225) && (BYTE2(xmmword_1ED4E97EC) & 1) != 0)
  {
    v3 = 0u;
    v4 = 0u;
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
    memset(v2, 0, 48);
    v2[3] = *(this + 38);
    v4 = 0uLL;
    *(&v3 + 1) = 0;
    LODWORD(v8) = -2147483647;
    CA::OGL::export_surface(this, v2, "dest");
  }
}

void CA::OGL::Context::marked_surface(uint64_t a1, uint64_t a2)
{
  *(a2 + 144) = *(a2 + 144) & 0x3FFFFFFF | 0x80000000;
  v2 = *(a1 + 624);
  if (v2)
  {
    *(a2 + 4) = *(v2 + 272);
  }

  if (*(a1 + 900))
  {
    if (BYTE2(xmmword_1ED4E97EC))
    {
      CA::OGL::export_surface(a1, a2, "surf");
    }
  }
}

void CA::OGL::ImagingNode::render(float16x4_t *a1, uint64_t a2, unsigned int a3)
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  if (*(*&v3 + 101))
  {
    return;
  }

  v6 = **&v3;
  if (a1[28].i8[5])
  {
    ++*(v6 + 1292);
    CA::OGL::ImagingNode::render(*&a1[3], a2);
    --*(v6 + 1292);
    return;
  }

  v64 = a1[1];
  v71 = 0;
  v72 = 0;
  v70 = 0x3F8000003F800000;
  v7 = a1[29].u32[1];
  v8 = (v7 >> 25) & 1;
  if (!a2)
  {
    v8 = 0;
  }

  v9 = 1.0;
  v63 = v8;
  if (v8 == 1)
  {
    if ((v7 & 0x4400000) != 0x4000000)
    {
      v63 = 0;
      goto LABEL_21;
    }

    v10 = 0;
    v11 = a1 + 3;
    v12 = &v71;
    v13 = &v70;
    v14 = 1;
    do
    {
      v15 = v14;
      v16 = v11[v10];
      if (v16)
      {
        CA::OGL::ImagingNode::remove_feature_passthrough_aware(v16, a2);
        v17 = v11[v10];
        v18 = v17[6];
        if (v18)
        {
          *v13 = 1065353216;
          *(v17[1] + 88) -= *(v18 + 44) * *(v18 + 40) * (*(v18 + 146) & 0x1F);
          v17[6] = 0;
          v19 = 1.0;
        }

        else
        {
          v18 = (*(*v17 + 80))(v17, v13, a1[29].i32[1] & 0x1FFFF);
          v19 = *v13;
        }

        *v12 = v18;
        if (v19 > v9 && v19 < 1.0)
        {
          v9 = v19;
        }
      }

      v14 = 0;
      v13 = (&v70 + 4);
      v12 = &v72;
      v10 = 1;
    }

    while ((v15 & 1) != 0);
  }

  if (!a2)
  {
LABEL_23:
    v21 = 0;
    v22 = &v71;
    v23 = &v70;
    v24 = 1;
    do
    {
      v25 = v24;
      v26 = a1[v21 + 3];
      if (v26)
      {
        v27 = v26[6];
        if (v27)
        {
          *v23 = 1065353216;
          *(v26[1] + 88) -= *(v27 + 44) * *(v27 + 40) * (*(v27 + 146) & 0x1F);
          v26[6] = 0;
        }

        else
        {
          v27 = (*(*v26 + 80))(v26, v23, a1[29].i32[1] & 0x1FFFF);
        }

        *v22 = v27;
      }

      v24 = 0;
      v23 = (&v70 + 4);
      v22 = &v72;
      v21 = 1;
    }

    while ((v25 & 1) != 0);
LABEL_30:
    v28 = a1[8];
    memset(v69, 0, sizeof(v69));
    if (v9 != 1.0)
    {
      CA::Shape::operator=(v69, (*(v6 + 672) + 48));
      a1[8] = v69;
    }

    a1[7] = CA::OGL::Context::set_gstate(v6, a1 + 7);
    v68 = 0;
    memset(v67, 0, sizeof(v67));
    if ((a1[29].i8[6] & 0x40) != 0)
    {
      CA::OGL::MaskCorners::begin(v67, a1, v29);
    }

    if (*(*(v6 + 656) + 80) == 42 && !*(*(v6 + 672) + 8))
    {
      v30 = *(v6 + 600);
      if (!v30 || (buf[0] = 0, (*(*v30 + 80))(v30, CA::OGL::Display::has_detached_layers(void)const::$_0::__invoke, buf), (buf[0] & 1) == 0))
      {
        a1[17].i8[0] = 43;
        *(*(v6 + 16) + 496) = 43;
      }
    }

    v31 = *v64;
    if (*(*(*v64 + 656) + 80) == 42 && ((*v31)[29])(*v64, 27))
    {
      v66 = 0uLL;
      CA::Shape::get_bounds(v31[82][1], &v66);
      v32 = v31[84];
      v33 = v32 + 6;
      v34 = (v31 + 76);
      if (v32)
      {
        v34 = v32 + 6;
      }

      v35 = *(&v66 + 8);
      v36 = vclez_s32(*(&v66 + 8));
      if ((vpmax_u32(v36, v36).u32[0] & 0x80000000) == 0)
      {
        v37 = v34[1];
        v38 = vclez_s32(v37);
        if ((vpmax_u32(v38, v38).u32[0] & 0x80000000) != 0 || (*&v39 = vmax_s32(*&v66, *v34), v40 = vsub_s32(vmin_s32(vadd_s32(*&v66, *(&v66 + 8)), vadd_s32(*v34, v37)), *&v39), v41 = vclez_s32(v40), (vpmax_u32(v41, v41).u32[0] & 0x80000000) != 0))
        {
          v35 = 0;
          *(&v66 + 1) = 0;
        }

        else
        {
          *(&v39 + 1) = v40;
          v66 = v39;
          v35 = v40;
        }
      }

      v42 = vclez_s32(v35);
      if ((vpmax_u32(v42, v42).u32[0] & 0x80000000) == 0)
      {
        v43 = v32[7];
        v44 = vclez_s32(v43);
        if ((vpmax_u32(v44, v44).u32[0] & 0x80000000) != 0 || (v45 = vadd_s32(*&v66, v35), *&v46 = vmax_s32(*&v66, *v33), v47 = vsub_s32(vmin_s32(v45, vadd_s32(*v33, v43)), *&v46), v48 = vclez_s32(v47), (vpmax_u32(v48, v48).u32[0] & 0x80000000) != 0))
        {
          *(&v66 + 1) = 0;
        }

        else
        {
          *(&v46 + 1) = v47;
          v66 = v46;
        }
      }

      v49 = ((*v31)[87])(v31, 1, &v66, 2063, @"implicit-backdrop-vibrant-color-matrix");
      v50 = v49;
      if (!v49)
      {
        goto LABEL_61;
      }

      if ((*(v49 + 93) & 8) != 0)
      {
        v76 = 0;
        *&v74[16] = 0u;
        v75 = 0u;
        *&buf[16] = 0u;
        *v74 = 0u;
        *buf = 0u;
        v60 = v31[82];
        *&buf[8] = *(v60 + 1);
        v61 = v60[4];
        *&buf[24] = v60[3];
        *v74 = v61;
        *&v74[8] = *(v60 + 5);
        *&v74[24] = v60[7];
        v62 = *(v60 + 40);
        LODWORD(v75) = *(v60 + 16);
        v76 = v62 & 0x5FF;
        *(&v75 + 1) = v60[9];
        *buf = CA::OGL::Context::set_gstate(v31, buf);
        CA::OGL::Context::push_surface(v31, v50, 0, 8, 0);
        CA::OGL::capture_in_place_backdrop(v64, 1);
        CA::OGL::Context::pop_surface(v31);
        CA::OGL::Context::set_gstate(v31, *v31[82]);
LABEL_61:
        v52 = 0;
        v53 = &v71;
        v54 = 1;
        do
        {
          v55 = v54;
          v56 = a1[v52 + 3];
          if (*&v56 && *v53 && (*(*v53 + 148) & 0x100) != 0)
          {
            (*(**&v56 + 88))(v56);
          }

          v54 = 0;
          v53 = &v72;
          v52 = 1;
        }

        while ((v55 & 1) != 0);
        (*(*a1 + 112))(a1, &v71, &v70, v9);
        if (v50)
        {
          CA::OGL::Context::release_surface(*v64, v50);
        }

        if ((a1[29].i8[6] & 0x40) != 0)
        {
          CA::OGL::MaskCorners::finish(v67, a1);
        }

        CA::OGL::Context::set_gstate(v6, **(v6 + 656));
        a1[8] = v28;
        goto LABEL_72;
      }

      if (x_log_get_ogl(void)::once != -1)
      {
        dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
      }

      v51 = x_log_get_ogl(void)::log;
      if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_183AA6000, v51, OS_LOG_TYPE_FAULT, "Unable to render backdrop-aware vibrant color matrix filter while existing memoryless offscreen surface in use", buf, 2u);
      }

      CA::OGL::Context::release_surface(v31, v50);
    }

    v50 = 0;
    goto LABEL_61;
  }

LABEL_21:
  if ((*(*a2 + 16))(a2, a3, v9))
  {
    if (v63)
    {
      goto LABEL_30;
    }

    goto LABEL_23;
  }

LABEL_72:
  v57 = &v71;
  v58 = 1;
  do
  {
    v59 = v58;
    if (*v57)
    {
      CA::OGL::Context::release_surface(v6, *v57);
    }

    v58 = 0;
    v57 = &v72;
  }

  while ((v59 & 1) != 0);
}

void CA::OGL::render_layers(uint64_t *a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = a2;
    v4 = *a1;
    while (1)
    {
      v5 = *(v2 + 176);
      *(v4 + 1376) = v2;
      *(v4 + 1384) &= ~0x800u;
      if (byte_1ED4E9879 == 1)
      {
        v6 = mach_continuous_time();
      }

      else
      {
        v6 = 0;
      }

      if (BYTE1(xmmword_1ED4E97DC) == 1)
      {
        v5[29].i32[1] = v5[29].i32[1] & 0xFFE1FFFF | 0x120000;
      }

      v7 = *(v2 + 184);
      v8 = v7 != 0;
      if (v7)
      {
        v9 = *(v4 + 680);
        v10 = *(v4 + 672);
        if (v9 != v10 || (!v9 ? (v11 = 0) : (v11 = (*(v10 + 144) >> 1) & 0x1F), *(v4 + 668) != v11))
        {
          CA::OGL::Context::prepare_destination_(v4);
        }

        if ((*(v4 + 1384) & 0x200) != 0)
        {
          CA::OGL::Context::flatten_detached_layers_(v4);
        }

        *(*(v2 + 184) + 240) = *(v4 + 672);
      }

      if ((*(v2 + 40) & 8) != 0)
      {
        v12 = *(v4 + 680);
        v13 = *(v4 + 672);
        if (v12 != v13 || (!v12 ? (v14 = 0) : (v14 = (*(v13 + 144) >> 1) & 0x1F), *(v4 + 668) != v14))
        {
          CA::OGL::Context::prepare_destination_(v4);
        }

        if ((*(v4 + 1384) & 0x200) != 0)
        {
          CA::OGL::Context::flatten_detached_layers_(v4);
        }

        CA::OGL::capture_backdrop(a1, v2);
        if (BYTE12(xmmword_1ED4E97DC) == 1)
        {
          v5[29].i32[1] = v5[29].i32[1] & 0xFFE1FFFF | 0x120000;
        }

        v8 = 1;
      }

      CA::OGL::ImagingNode::render(v5, 0, 0);
      v15 = *(v2 + 184);
      if (v15)
      {
        *(v15 + 240) = 0;
      }

      v16 = *(*(v2 + 24) + 152);
      if (!v16)
      {
        goto LABEL_43;
      }

      v17 = *(v2 + 386);
      v18 = *(v2 + 388);
      v19 = v18 & 0x1FFFF;
      if (*(v2 + 386) || v19)
      {
        goto LABEL_36;
      }

      if (*(v16 + 100) >> 28)
      {
        break;
      }

LABEL_43:
      if (v6 && (v8 || (*(v4 + 1384) & 0x800) != 0))
      {
        if (x_log_get_render_trace(void)::once != -1)
        {
          dispatch_once(&x_log_get_render_trace(void)::once, &__block_literal_global_2897);
        }

        v24 = *(a1[1] + 272);
        if (v24)
        {
          v25 = x_log_get_render_trace(void)::log;
          if (os_signpost_enabled(x_log_get_render_trace(void)::log))
          {
            v26 = *(v2 + 24);
            if (v26)
            {
              v26 = *(v26 + 128);
              if (v26)
              {
                v27 = *(v26 + 24);
                v26 += 28;
                if (!v27)
                {
                  v26 = 0;
                }
              }
            }

            *buf = 136446466;
            v30 = v26;
            v31 = 2050;
            v32 = v6;
            _os_signpost_emit_with_name_impl(&dword_183AA6000, v25, OS_SIGNPOST_EVENT, v24, "RenderLayer", "ID is update layer=%{public,name=layer}s begin=%{public,signpost.description:begin_time}llu", buf, 0x16u);
          }
        }
      }

      *(v4 + 1376) = *(v2 + 8);
      *(v4 + 1384) &= ~0x800u;
      v28 = *v2;
      CA::OGL::Renderer::dealloc_layer(a1, v2);
      v2 = v28;
      if (!v28)
      {
        return;
      }
    }

    v19 = 0;
LABEL_36:
    v20 = *(*a1 + 636);
    if (*(v16 + 96) == v20)
    {
      v21 = *(v16 + 100);
    }

    else
    {
      v21 = 0;
      *(v16 + 96) = v20;
    }

    v22 = v17 + (v21 >> 28);
    if (v22 >= 0xF)
    {
      v23 = -268435456;
    }

    else
    {
      v23 = v22 << 28;
    }

    *(v16 + 100) = (v21 | v18) & 0xFFE0000 | v21 & 0x1FFFF | v19 | v23;
    goto LABEL_43;
  }
}

void CA::OGL::LayerNode::apply(CA::OGL::LayerNode *this, __n128 a2, double a3, float64x2_t a4, uint64_t a5, uint64_t a6, const int *a7)
{
  v89 = *MEMORY[0x1E69E9840];
  v7 = *(this + 2);
  v8 = *(v7 + 32);
  if ((v8 & 8) != 0)
  {
    return;
  }

  v10 = *(this + 1);
  if ((v8 & 0x8000000000) != 0)
  {
    v11 = *v10;
    v12 = *(*(v7 + 24) + 136);
    if (v12)
    {
      v12 = *v12;
    }

    v13 = *(v11 + 16);
    v14 = *(v7 + 192);
    if (v14)
    {
      v15 = *(*(v14 + 24) + 136);
      v16 = 0;
      if (v15)
      {
        v17 = *v15;
        if (v17)
        {
          v16.i32[0] = *(v17 + 140);
        }
      }

      v18 = *(v7 + 104);
      if ((*(v14 + 32) & 0x180000000400) == 0)
      {
        a2.n128_u32[0] = *(v7 + 108);
LABEL_15:
        v19 = *(v13 + 496);
        *(v13 + 497) |= 1u;
        if (*(v12 + 17) == 1)
        {
          v20 = *(v11 + 16);
          v20[31].i8[0] = 58;
          v21 = a2.n128_f32[0];
          a2.n128_u32[0] = v18;
        }

        else
        {
          v22 = *(v7 + 40);
          if ((v22 & 0x80) != 0)
          {
            *(*(v11 + 16) + 497) &= ~1u;
            v20 = *(v11 + 16);
            v23 = 1;
          }

          else
          {
            v20 = *(v11 + 16);
            if ((v22 & 0x40) != 0)
            {
              v23 = 57;
            }

            else
            {
              v23 = 3;
            }
          }

          v20[31].i8[0] = v23;
          v21 = *&v18;
        }

        *v16.i32 = fmaxf(*v16.i32, 0.0001);
        v24 = vdupq_lane_s32(v16, 0);
        v20[18] = v24;
        if (*(v12 + 16) == 1)
        {
          v25 = *(*(v7 + 16) + 48);
          if (v25)
          {
            v26 = (*(*v25 + 80))(*(*(v7 + 16) + 48), a2);
            if (v26)
            {
              v27 = v26;
              v28 = *v10;
              v29 = *(*v10 + 656);
              v88 = 0;
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v82 = 0u;
              v83 = 0u;
              v80 = 0u;
              v81 = 0u;
              v78 = 0u;
              v79 = 0u;
              v76 = 0u;
              v77 = 0u;
              memset(v75, 0, sizeof(v75));
              v73 = 0u;
              v74 = 0u;
              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              v67 = 0u;
              v68 = 0u;
              v65 = 0u;
              v66 = 0u;
              v63 = 0u;
              v64 = 0u;
              v61 = 0u;
              v62 = 0u;
              v59 = 0u;
              v60 = 0u;
              v58 = 0u;
              CA::OGL::ContentsGeometry::ContentsGeometry(&v58, v7, v29, v26, v25, v28);
              if (v75[0].u8[0] == 1)
              {
                v30 = *(v7 + 24);
                v31 = *(v30 + 136);
                if (v31)
                {
                  v32 = *v31;
                }

                else
                {
                  v32 = 0;
                }

                *(&v78 + 3) = 257;
                DWORD2(v76) = 0;
                v33 = *(v30 + 40);
                if ((v33 & 0xFu) > 0xAuLL)
                {
                  v34 = 1;
                }

                else
                {
                  v34 = CA::OGL::texture_filter(CA::Render::ImageFilter)::filters[v33 & 0xF];
                }

                v35 = v33 >> 4;
                if (v35 > 0xA)
                {
                  v36 = 1;
                }

                else
                {
                  v36 = CA::OGL::texture_filter(CA::Render::ImageFilter)::filters[v35];
                }

                if (v31)
                {
                  v37 = v31[78];
                }

                else
                {
                  v37 = 0.0;
                }

                *(v28[2] + 8) = 0x3C003C003C003C00;
                if (BYTE2(v78) == 1 && (BYTE1(v78) & 1) == 0)
                {
                  v38 = (*(*v28 + 648))(v28, v27, 1);
                }

                else
                {
                  v38 = 0;
                }

                v39 = *(v7 + 24);
                if (v39)
                {
                  v39 = *(v39 + 128);
                  if (v39)
                  {
                    v40 = *(v39 + 24);
                    v39 += 28;
                    if (!v40)
                    {
                      v39 = 0;
                    }
                  }
                }

                v41 = CA::OGL::Context::bind_image(v28, 0, v27, DWORD1(v76), v34, v36, v38, &v58, v37, &v75[0].i32[1], v39);
                if (v41)
                {
                  v42 = v41;
                  v57 = v34;
                  v43 = (*(*v27 + 104))(v27);
                  v44 = v43;
                  v45 = *(v32 + 20);
                  v46 = *(v32 + 24) - v45;
                  if (v43 <= 0x1C && ((0x17826000u >> v43) & 1) != 0)
                  {
                    _D0 = 1065353216;
                  }

                  else
                  {
                    v48 = (*(*v27 + 112))(v27);
                    __asm { FMOV            V0.2S, #-1.0 }

                    *&_D0 = ~(-1 << v48) / ~(-1 << (v48 - 1));
                  }

                  if (((v44 < 0x19) & (0x1800200u >> v44)) != 0)
                  {
                    v53 = 47;
                  }

                  else
                  {
                    v53 = 46;
                  }

                  *(v28[2] + 17) = v53;
                  v54 = v28[2];
                  *(v54 + 400) = v46;
                  *(v54 + 404) = v45;
                  *(v54 + 408) = _D0;
                  CA::OGL::ContentsGeometry::fill_and_unbind(&v58, v28, v42, v57, v37);
                }
              }
            }
          }
        }

        else if (!*(v12 + 16))
        {
          v24.i32[0] = 1166016512;
          if (v21 <= 4096.0)
          {
            *v24.i32 = v21;
          }

          if (*v24.i32 < 1.0)
          {
            *v24.i32 = 1.0;
          }

          v20[1].i8[0] = 1;
          a4.f64[0] = 0.0;
          CA::OGL::emit_sdf_bounds_internal(v11, v7, 0, 1, a2.n128_f32[0], *v24.i64, a4, 0.0, 0.0, 1.0, *(v12 + 7));
          *(*(v11 + 16) + 16) = 0;
        }

        *(*(v11 + 16) + 497) &= ~1u;
        *(*(v11 + 16) + 496) = v19;
        goto LABEL_63;
      }
    }

    else
    {
      v18 = *(v7 + 104);
      v16 = 0;
    }

    a2.n128_u32[0] = 1166016512;
    goto LABEL_15;
  }

  if ((v8 & 0x200005120) != 0)
  {
    CA::OGL::render_contents_background(*(this + 1), v7, a6, a7, a2.n128_f64[0], a3, a4);
  }

LABEL_63:
  v55 = *(v7 + 32);
  if ((v55 & 0x2000) != 0)
  {
    v56 = **(*(v7 + 24) + 136);
    *&v58 = &unk_1EF1F5980;
    *(&v58 + 1) = v10;
    *&v59 = v7;
    (*(*v56 + 232))(v56, &v58);
    v55 = *(v7 + 32);
  }

  if ((v55 & 0x200) != 0)
  {
    CA::OGL::LayerNode::prepare_sublayers_roi_if_needed(this);
    CA::OGL::render_layers(v10, *(this + 31));
    *(this + 31) = 0;
    *(this + 240) &= 0xFCu;
    v55 = *(v7 + 32);
  }

  if ((v55 & 0x1080) != 0)
  {
    CA::OGL::render_border(v10, v7);
    if ((*(v7 + 33) & 0x10) != 0 && (*(*(v7 + 24) + 48) & 0x80) != 0)
    {

      CA::OGL::render_shadow_path(v10, v7);
    }
  }
}

float16x4_t *CA::OGL::Context::set_gstate(uint64_t a1, float16x4_t *a2)
{
  result = *(a1 + 656);
  if (result != a2)
  {
    v4 = *(a1 + 16);
    v4[31].i8[0] = a2[10].i8[0];
    v4[18] = vcvtq_f32_f16(a2[5]);
    v4[19] = vcvtq_f32_f16(a2[6]);
    *&v4[17].u32[2] = a2[7];
    v5 = a2[1];
    if (v5.i8[0])
    {
      if (*&v5 == 1)
      {
        goto LABEL_4;
      }
    }

    else if (*(*&v5 + 4) != 12)
    {
LABEL_4:
      v6 = 0;
      v7 = 0;
      goto LABEL_9;
    }

    if ((*(a1 + 1384) & 8) != 0 && *&result[1] == *&v5)
    {
      goto LABEL_10;
    }

    v7 = 8;
    v6 = 16;
LABEL_9:
    *(a1 + 64) = 0;
    *(a1 + 1384) = v7 | v6 | *(a1 + 1384) & 0xFFE7;
LABEL_10:
    *(a1 + 656) = a2;
  }

  return result;
}

uint64_t CA::OGL::Context::ClippedArray::start(CA::OGL::Context::ClippedArray *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 656);
  result = *(v3 + 8);
  if ((result & 1) == 0 && *(result + 4) == 12)
  {
    v5 = *(result + 32) - *(result + 28);
    if (v5 <= *(result + 36) - *(result + 20))
    {
      v5 = *(result + 36) - *(result + 20);
    }

    if (v5 >= 0x3FFFFFFF)
    {
      LOBYTE(v6) = 0;
      *(this + 49) = 0;
      v7 = this + 49;
      v8 = this + 32;
LABEL_14:
      *(this + 50) = 1;
      goto LABEL_15;
    }
  }

  v9 = *(this + 5);
  if (v9)
  {
    result = CA::Shape::contains(result, v9);
    v6 = result ^ 1;
  }

  else
  {
    v6 = 1;
  }

  *(this + 49) = v6;
  v7 = this + 49;
  v8 = this + 32;
  if ((*(this + 32) & 1) != 0 || !v6)
  {
    goto LABEL_14;
  }

  v10 = *(v2 + 1384);
  *(this + 50) = (v10 & 8) != 0;
  if ((v10 & 8) != 0)
  {
LABEL_15:
    if (*(this + 33))
    {
      *(v2 + 144) = 0;
      *(v2 + 112) = v2 + 1386;
      *(v2 + 120) = xmmword_183E20E50;
      v12 = *(v2 + 1384) & 0xFFDF;
      *(v2 + 1384) = v12;
      LOBYTE(v6) = *v7;
    }

    else
    {
      v12 = *(v2 + 1384);
    }

    v11 = v12 & 0xFFBF | ((v6 & 3) << 6);
    goto LABEL_19;
  }

  *(v2 + 64) = 1;
  v11 = *(v2 + 1384) & 0xFFBF;
LABEL_19:
  *(v2 + 1384) = v11;
  if ((*v8 & 1) == 0 && *v7 == 1 && (v11 & 0x10) != 0)
  {
    v13 = 0uLL;
    result = CA::Shape::get_bounds(*(v3 + 8), &v13);
    *(v2 + 32) = v13;
    *(v2 + 64) = 1;
    *(v2 + 1384) &= ~0x10u;
  }

  *(this + 48) = 0;
  return result;
}

uint64_t CA::OGL::MetalBufferPool::encode_vertex_arg(CA::OGL::MetalBufferPool *this, uint64_t a2, const void *__src, unsigned int a4, unsigned int a5)
{
  if ((a5 & (a5 - 1)) != 0)
  {
    __assert_rtn("get_buffer", "ogl-metal.mm", 3452, "x_power_of_two (alignment)");
  }

  if (*(this + 1))
  {
    v9 = *(this + 11);
    if (v9 <= a5)
    {
      v9 = a5;
    }

    v10 = *(this + 6);
    v11 = *(this + 7);
    v12 = (v9 + v10 - 1) & -v9;
    if ((v11 == v12 || v11 < v12 + a4) && v10 != 0)
    {
      CA::OGL::MetalBufferPool::retire_metal_buffer(this);
    }
  }

  else
  {
    result = CA::OGL::MetalBufferPool::allocate_buffer(this, a4);
    *(this + 1) = result;
    if (!result)
    {
      return result;
    }

    ++*(this + 10);
    *(this + 4) = [result contents];
    v12 = 0;
    *(this + 7) = [*(this + 1) length];
  }

  if (__src)
  {
    memcpy((*(this + 4) + v12), __src, a4);
  }

  *(this + 6) = v12 + a4;
  v16 = *(this + 1);
  v17 = *(this + 24);
  if (*(this + a2 + 8) == v16)
  {
    (*(this + 27))(v17, sel_setVertexBufferOffset_atIndex_, v12, a2);
  }

  else
  {
    (*(this + 25))(v17, sel_setVertexBuffer_offset_atIndex_, *(this + 1), v12, a2);
    *(this + a2 + 8) = v16;
  }

  return 1;
}

void CA::OGL::Renderer::dealloc_layer(CA::OGL::Renderer *a1, uint64_t a2)
{
  v4 = *(a2 + 176);
  if (v4)
  {
    v5 = v4[57] - 1;
    --*(v4 + 228);
    if (!v5)
    {
      CA::OGL::ImagingNode::finalize(v4, a1);
    }
  }

  v6 = *(a2 + 184);
  if (v6)
  {
    v7 = v6[57] - 1;
    --*(v6 + 228);
    if (!v7)
    {
      CA::OGL::ImagingNode::finalize(v6, a1);
    }
  }

  if (*(a2 + 208))
  {
    CA::OGL::Renderer::dealloc_layer(a1);
  }

  if ((*(a2 + 40) & 0x20) != 0)
  {
    free(*(a2 + 88));
  }

  v8 = *(a2 + 384);
  if (*(a2 + 384))
  {
    v9 = *(a2 + 216);
    v10 = *(a1 + 10);
    do
    {
      v11 = v10;
      v10 = v9;
      v9 = *v9;
      *v10 = v11;
      --v8;
    }

    while (v8);
    *(a1 + 10) = v10;
  }

  v12 = *(a2 + 160);
  if (v12)
  {
    CA::Shape::unref(v12);
  }

  *a2 = *(a1 + 8);
  *(a1 + 8) = a2;
}

uint64_t CA::OGL::state_image_texture_unit(uint64_t result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 17);
  v4 = (v2 + 40);
  v5 = a2;
  do
  {
    v6 = *v3++;
    result = result + CA::OGL::image_plane_count[v6];
    v7 = *v4;
    if (*v4)
    {
      v8 = *(v7 + 80);
      v9 = v8 == 0;
      v10 = v8 != 0;
      v11 = *(v7 + 56);
      if (v9)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11)
      {
        v13 = v12;
      }

      else
      {
        v13 = v10;
      }

      result = (v13 + result);
    }

    ++v4;
    --v5;
  }

  while (v5);
  return result;
}

uint64_t CA::OGL::ImagingNode::finalize(CA::OGL::ImagingNode *this, CA::OGL::Renderer *a2)
{
  v4 = 0;
  v5 = this + 24;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = *&v5[8 * v4];
    if (v8)
    {
      v9 = v8[57] - 1;
      --*(v8 + 228);
      if (!v9)
      {
        CA::OGL::ImagingNode::finalize(v8, a2);
      }
    }

    v6 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  v10 = *(this + 6);
  if (v10)
  {
    CA::OGL::Context::release_surface(*a2, v10);
  }

  result = (**this)(this);
  *this = *(a2 + 9);
  *(a2 + 9) = this;
  return result;
}

void CA::OGL::LayerNode::~LayerNode(CA::OGL::LayerNode *this)
{
  *this = &unk_1EF1FD580;
  v2 = *(this + 1);
  v3 = *(this + 31);
  if (v3)
  {
    do
    {
      v4 = *v3;
      CA::OGL::Renderer::dealloc_layer(v2, v3);
      v3 = v4;
    }

    while (v4);
    v2 = *(this + 1);
  }

  v5 = *(this + 32);
  if (v5)
  {
    do
    {
      v6 = *v5;
      CA::OGL::Renderer::dealloc_layer(v2, v5);
      v5 = v6;
    }

    while (v6);
  }
}

{
  CA::OGL::LayerNode::~LayerNode(this);
  abort();
}

uint64_t CA::OGL::MetalBufferPool::encode_fragment_arg(CA::OGL::MetalBufferPool *this, uint64_t a2, const void *__src, unsigned int a4, unsigned int a5)
{
  if ((a5 & (a5 - 1)) != 0)
  {
    __assert_rtn("get_buffer", "ogl-metal.mm", 3452, "x_power_of_two (alignment)");
  }

  if (*(this + 1))
  {
    v9 = *(this + 11);
    if (v9 <= a5)
    {
      v9 = a5;
    }

    v10 = *(this + 6);
    v11 = *(this + 7);
    v12 = (v9 + v10 - 1) & -v9;
    if ((v11 == v12 || v11 < v12 + a4) && v10 != 0)
    {
      CA::OGL::MetalBufferPool::retire_metal_buffer(this);
    }
  }

  else
  {
    result = CA::OGL::MetalBufferPool::allocate_buffer(this, a4);
    *(this + 1) = result;
    if (!result)
    {
      return result;
    }

    ++*(this + 10);
    *(this + 4) = [result contents];
    v12 = 0;
    *(this + 7) = [*(this + 1) length];
  }

  if (__src)
  {
    memcpy((*(this + 4) + v12), __src, a4);
  }

  *(this + 6) = v12 + a4;
  v16 = *(this + 1);
  v17 = *(this + 24);
  if (*(this + a2 + 14) == v16)
  {
    (*(this + 28))(v17, sel_setFragmentBufferOffset_atIndex_, v12, a2);
  }

  else
  {
    (*(this + 26))(v17, sel_setFragmentBuffer_offset_atIndex_, *(this + 1), v12, a2);
    *(this + a2 + 14) = v16;
  }

  return 1;
}

uint64_t CA::OGL::Context::ClippedArray::next_rect(CA::OGL::Context::ClippedArray *this, int32x2_t *a2)
{
  v4 = *this;
  if (*(this + 48) == 1)
  {
    if (*(this + 33) == 1 && (*(this + 50) & 1) == 0)
    {
      CA::OGL::Context::array_flush(*this);
      if ((*(v4 + 1384) & 0x20) == 0)
      {
        while (1)
        {
          while (1)
          {
            if (!CA::ShapeIterator::iterate((this + 8), a2))
            {
              goto LABEL_14;
            }

            v5 = *(this + 5);
            if (v5)
            {
              break;
            }

            v11 = a2->i32[0];
LABEL_12:
            *(v4 + 32) = v11;
            *(v4 + 36) = a2->i32[1];
            *(v4 + 40) = a2[1].i32[0];
            *(v4 + 44) = a2[1].i32[1];
            CA::OGL::Context::array_flush(v4);
          }

          v6 = v5[1];
          v7 = vclez_s32(v6);
          if ((vpmax_u32(v7, v7).u32[0] & 0x80000000) == 0)
          {
            v8 = a2[1];
            v9 = vclez_s32(v8);
            if ((vpmax_u32(v9, v9).u32[0] & 0x80000000) == 0)
            {
              v10 = vclez_s32(vsub_s32(vmin_s32(vadd_s32(*v5, v6), vadd_s32(*a2, v8)), vmax_s32(*v5, *a2)));
              if ((vpmax_u32(v10, v10).u32[0] & 0x80000000) == 0)
              {
                v11 = *a2;
                goto LABEL_12;
              }
            }
          }
        }
      }
    }

LABEL_14:
    while (*(this + 49) == 1 && CA::ShapeIterator::iterate((this + 8), a2))
    {
      v12 = *(this + 5);
      if (v12)
      {
        v13 = v12[1];
        v14 = vclez_s32(v13);
        if ((vpmax_u32(v14, v14).u32[0] & 0x80000000) != 0)
        {
          continue;
        }

        v15 = a2[1];
        v16 = vclez_s32(v15);
        if ((vpmax_u32(v16, v16).u32[0] & 0x80000000) != 0)
        {
          continue;
        }

        v17 = vclez_s32(vsub_s32(vmin_s32(vadd_s32(*v12, v13), vadd_s32(*a2, v15)), vmax_s32(*v12, *a2)));
        if ((vpmax_u32(v17, v17).u32[0] & 0x80000000) != 0)
        {
          continue;
        }
      }

      if ((*(this + 50) & 1) == 0)
      {
        *(v4 + 32) = a2->i32[0];
        *(v4 + 36) = a2->i32[1];
        *(v4 + 40) = a2[1].i32[0];
        *(v4 + 44) = a2[1].i32[1];
        if (*(this + 33) == 1)
        {
          *(v4 + 144) = 0;
          *(v4 + 112) = v4 + 1386;
          *(v4 + 120) = xmmword_183E20E50;
          *(v4 + 1384) &= ~0x20u;
        }
      }

      return 1;
    }

    if (*(this + 33) == 1 && *(this + 50) == 1)
    {
      CA::OGL::Context::array_flush(v4);
    }

    if ((*(v4 + 1384) & 8) == 0)
    {
      *(v4 + 64) = 0;
    }

    if (BYTE4(ca_debug_options) != 1)
    {
      return 0;
    }

    result = (*(*v4 + 864))(v4);
    if (result)
    {
      (*(*v4 + 456))(v4, 1);
      return 0;
    }
  }

  else
  {
    *(this + 48) = 1;
    if (*(this + 49))
    {
      goto LABEL_14;
    }

    *a2->i8 = xmmword_183E21120;
    return 1;
  }

  return result;
}

uint64_t CA::OGL::Context::array_flush(uint64_t this)
{
  v1 = *(this + 120);
  if (v1)
  {
    return (*(*this + 344))(this, *(this + 108), v1, *(this + 112), *(this + 136), 0, *(this + 144), *(*(this + 656) + 16));
  }

  v2 = *(this + 144);
  if (v2)
  {
    return (*(*this + 344))(this, *(this + 108), v2, 0, *(this + 136), 0, *(this + 144), *(*(this + 656) + 16));
  }

  return this;
}

void CA::OGL::MetalContext::draw(CA::OGL::Context *this, uint64_t a2, unsigned int a3, unsigned int a4, char *a5, size_t a6, unsigned int a7, int a8, int a9, unsigned __int16 *a10, void *a11, uint64_t a12)
{
  v496 = *MEMORY[0x1E69E9840];
  v12 = *(this + 84);
  if (!v12)
  {
    __assert_rtn("draw", "ogl-metal.mm", 8727, "current_metal_surface () != nullptr");
  }

  if (*(this + 85) != v12 || *(this + 167) != ((*(v12 + 144) >> 1) & 0x1F))
  {
    CA::OGL::Context::prepare_destination_(this);
  }

  if ((*(this + 692) & 0x200) != 0)
  {
    CA::OGL::Context::flatten_detached_layers_(this);
  }

  if (!CA::OGL::MetalContext::start_render_encoder(this))
  {
    return;
  }

  v18 = *(this + 84);
  if ((*(v18 + 93) & 8) != 0 && (*(v18 + 147) & 0x20) != 0)
  {
    CA::OGL::MetalContext::clear_memoryless_texture_(this);
    v18 = *(this + 84);
  }

  memset(v483, 0, sizeof(v483));
  if (*(v18 + 272))
  {
    v19 = *(v18 + 272);
  }

  else
  {
    v19 = v18;
  }

  v20 = *(this + 2);
  v21 = v20[16];
  v22 = &CA::OGL::MetalContext::texture_function_info[8 * v21];
  v23 = *v22 & 0x3F;
  if (a2)
  {
    v24 = a2 == 1;
  }

  else
  {
    v24 = 2;
  }

  _ZF = (*v22 & 0x3F) != 0 || v18 == 0;
  if (_ZF || ((v26 = *(v18 + 88), v26 != 0.0) ? (v27 = v26 == 1.0) : (v27 = 1), v27))
  {
    v28 = 0;
  }

  else
  {
    v28 = 8 * (*(this + 872) != 1.0);
  }

  v29 = &CA::OGL::MetalContext::fragment_shader_type_info[2 * v23];
  v30 = v20[496];
  if (v20[496] && (*(v22 + 3) & 8) == 0)
  {
    if (v30 == 1)
    {
      v30 = 62;
    }

    if ((v20[497] & 1) == 0)
    {
      v30 = 62;
    }
  }

  if ((v20[497] & 2) != 0)
  {
    v31 = ((*(v29 + 8) >> 5) & 1) << 27;
  }

  else
  {
    v31 = 0;
  }

  v32 = ((v24 << 19) | (v30 << 8) | v21) & 0x183F7F | ((*(v19 + 308) & 3) << 21);
  v33 = *(this + 829);
  v34 = (v33 << 20) & 0x40000000;
  v35 = (v33 << 12) & 0x10000000;
  if (v20 && (v20[497] & 8) != 0 || (v37 = *(*(this + 82) + 24)) != 0 && (*(v37 + 144) & 0x10) != 0 && (*(v37 + 24) != 0.0 || *(v37 + 56) != 0.0))
  {
    v36 = 0x20000000;
  }

  else
  {
    v36 = 0;
  }

  v38 = v34 | v36 | v35 | v31 | v32;
  *(v483 + 14) = v38;
  *(&v483[1] + 7) = (((*(v19 + 286) != 0) << 24) | ((*(v19 + 192) & 0x3FF) << 8)) & 0xFDFFFFFF | (((*(v19 + 92) >> 13) & 1) << 25) | 0xF80000;
  __n = this;
  __src = a5;
  v464 = a2;
  v461 = a4;
  v462 = a6;
  if (v23)
  {
    if (v24)
    {
      __assert_rtn("get_pipeline_spec", "ogl-metal.mm", 6151, "layout == VertexLayout_Surface");
    }

    if ((v29[1] & 0x40) != 0)
    {
      v38 = v38 & 0x78F83F7F | ((*(v18 + 284) & 3) << 24);
      *(v483 + 14) = v38;
    }

    else if ((*(v22 + 3) & 0x10) == 0 && *(v18 + 284))
    {
      __assert_rtn("get_pipeline_spec", "ogl-metal.mm", 6159, "surf->backing_attachment == 0");
    }

    if (CA::OGL::tex_image_count[v38 & 0x7F])
    {
      v45 = 0;
      v46 = v483;
      do
      {
        *v46 |= 0xE000u;
        v46 = (v46 + 7);
        ++v45;
      }

      while (v45 < CA::OGL::tex_image_count[BYTE14(v483[0]) & 0x7F]);
    }

    CA::OGL::MetalContext::Pipeline::Spec::lift_blend_function(v483);
    v47 = BYTE14(v483[0]);
    if ((HIWORD(v483[0]) & 0x3F00) != 0x3E00)
    {
      __assert_rtn("get_pipeline_spec", "ogl-metal.mm", 6168, "spec.fragment.blend_function == OGL_BLEND_NONE");
    }

    *(&v483[1] + 3) = 0;
    v48 = (*(v483 + 14) >> 20) & 0x300;
    if ((*(v483 + 14) & 0x4000000) == 0)
    {
      *(&v483[1] + 5) = CA::OGL::MetalContext::fragment_shader_type_info[2 * (CA::OGL::MetalContext::texture_function_info[8 * (BYTE14(v483[0]) & 0x7F)] & 0x3F) + 1] & 0x1F | (32 * ((*(v483 + 14) >> 19) & 3)) | v48;
      v49 = CA::OGL::tex_image_count[BYTE14(v483[0]) & 0x7F];
      v50 = this;
      if (CA::OGL::tex_image_count[BYTE14(v483[0]) & 0x7F])
      {
        v51 = &v483[1] + 3;
        v52 = v483;
        do
        {
          v53 = *v52;
          v52 = (v52 + 7);
          *v51 = *v51 & 0xFC | byte_183E28164[v53 & 0x3F] & 3;
          ++v51;
          --v49;
        }

        while (v49);
      }

      goto LABEL_124;
    }

LABEL_123:
    v50 = __n;
    *(&v483[1] + 5) = v48 | 0x80;
    goto LABEL_124;
  }

  v39 = v21 & 0x7F;
  v40 = *(v18 + 192);
  *(v483 + 14) = v38 & 0x78FF3F7F | (((*(this + 692) >> 12) & 7) << 16) & 0xFCFFFFFF | ((*(v18 + 284) & 3) << 24) | (((v40 - 550) < 6) << 31);
  v42 = v40 == 115 || v40 == 125;
  v43 = v28 | (4 * (v20[321] != 0)) | v42 | (2 * (v20[323] != 0));
  if (v35)
  {
    if (CADeviceUseCIF10::once != -1)
    {
      dispatch_once(&CADeviceUseCIF10::once, &__block_literal_global_12623);
    }

    if (CADeviceUseCIF10::enable_cif10)
    {
      v44 = 16;
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v44 = 16;
  }

  BYTE2(v483[1]) = (v43 | v44) & 0x9F | (32 * ((*(this + 948) >> 1) & 3));
  if (CA::OGL::tex_image_count[v39])
  {
    v54 = 0;
    v55 = (v483 + 3);
    do
    {
      v56 = *(__n + 2);
      v57 = *(v56 + v54 + 17);
      v58 = v57 & 0x3F | ((*(v56 + v54 + 19) & 7) << 6);
      v59 = v58 | 0xE000;
      if ((0x42000FFFE00uLL >> v57))
      {
        v60 = 0;
      }

      else
      {
        v60 = *(v56 + 8 * CA::OGL::state_image_texture_unit(*(__n + 2), v54) + 176) & 0xFFFFFFFFFFFFFFFCLL;
        if (v60)
        {
          v61 = 0;
          v59 = v58 | (*(v60 + 125) << 13);
          goto LABEL_81;
        }
      }

      v61 = 1;
LABEL_81:
      v62 = *(v56 + 8 * v54 + 40);
      if (v62)
      {
        v63 = *(v62 + 36);
        v64 = *v55 & 0xFC000000 | (v63 >> 5) & 0x1FFFFFF;
        *(v55 - 1) = CGColorSpaceGetNumberOfComponents(*(v62 + 16)) & 7 | (8 * v63);
        *v55 = v64 | (*(v62 + 36) >> 31 << 25);
        v65 = (v63 & 0x1F) > 0x15 || ((1 << (v63 & 0x1F)) & 0x348000) == 0;
        if (!v65 || ((v69 = (v63 >> 5) & 0x1F, v115 = v69 > 0x15, v70 = (1 << v69) & 0x348000, !v115) ? (v71 = v70 == 0) : (v71 = 1), !v71 || ((v72 = (v63 >> 10) & 0x1F, v115 = v72 > 0x15, v73 = (1 << v72) & 0x348000, !v115) ? (v74 = v73 == 0) : (v74 = 1), !v74 || ((v75 = (v63 >> 15) & 0x1F, v115 = v75 > 0x15, v76 = (1 << v75) & 0x348000, !v115) ? (v77 = v76 == 0) : (v77 = 1), !v77 || ((v78 = (v63 >> 20) & 0x1F, v115 = v78 > 0x15, v79 = (1 << v78) & 0x348000, !v115) ? (v80 = v79 == 0) : (v80 = 1), !v80 || (v81 = (v63 >> 25) & 0x1F, v81 <= 0x15) && ((1 << v81) & 0x348000) != 0)))))
        {
          BYTE2(v483[1]) |= 0x10u;
        }
      }

      if (v61)
      {
        LOWORD(v66) = 0;
      }

      else
      {
        v67 = *(v60 + 52);
        v68 = HIWORD(v67) & 0xF;
        v66 = (v67 >> 20) & 0xF;
        if (v68 > v66)
        {
          LOWORD(v66) = v68;
        }

        if ((v66 & 0xFC) == 0)
        {
          LOWORD(v66) = 0;
        }
      }

      *(v55 - 3) = (v59 & 0xE1FF) + (v66 << 9);
      ++v54;
      v55 = (v55 + 7);
    }

    while (v54 < CA::OGL::tex_image_count[BYTE14(v483[0]) & 0x7F]);
  }

  CA::OGL::MetalContext::Pipeline::Spec::lift_blend_function(v483);
  *(&v483[1] + 3) = 0;
  v47 = BYTE14(v483[0]);
  v48 = (*(v483 + 14) >> 20) & 0x300;
  if ((*(v483 + 14) & 0x4000000) != 0)
  {
    goto LABEL_123;
  }

  *(&v483[1] + 5) = CA::OGL::MetalContext::fragment_shader_type_info[2 * (CA::OGL::MetalContext::texture_function_info[8 * (BYTE14(v483[0]) & 0x7F)] & 0x3F) + 1] & 0x1F | (32 * ((*(v483 + 14) >> 19) & 3)) | v48;
  v82 = CA::OGL::tex_image_count[BYTE14(v483[0]) & 0x7F];
  v50 = __n;
  if (CA::OGL::tex_image_count[BYTE14(v483[0]) & 0x7F])
  {
    v83 = &v483[1] + 3;
    v84 = v483;
    do
    {
      v85 = *v84;
      v84 = (v84 + 7);
      *v83 = *v83 & 0xFC | byte_183E28164[v85 & 0x3F] & 3;
      ++v83;
      --v82;
    }

    while (v82);
  }

LABEL_124:
  memset(v482, 0, sizeof(v482));
  v86 = *(v50 + 218);
  v87 = *(v50 + 873);
  if (v86 & 0x40000) != 0 || (v86 & 0x80000) == 0 && (byte_1ED4E9827)
  {
    v88 = 0;
    LOBYTE(v89) = 0;
    memset(v491, 0, sizeof(v491));
  }

  else
  {
    v89 = byte_1ED4E9828 | ((v86 & 0x80000u) >> 19);
    v90 = CA::OGL::MetalContext::texture_function_info[8 * (v47 & 0x7F)] & 0x3F;
    v88 = v90 == 0;
    memset(v491, 0, sizeof(v491));
    if (byte_1ED4E9828 & 1 | ((v86 & 0x80000) != 0) && !v90)
    {
      v409 = 0;
      v410 = 0;
      v97 = 0;
      *v488 = 0uLL;
      v489 = 0uLL;
      LOBYTE(v89) = 1;
      goto LABEL_700;
    }
  }

  v91 = std::__hash_table<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::__unordered_map_hasher<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::__unordered_map_equal<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::allocator<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>>>::find<CA::OGL::MetalContext::Pipeline::Spec>(v50 + 335, v483);
  v97 = v91 != 0;
  if (!v91)
  {
    if (v86 & 0x400000 | v87 & 8)
    {
      v411 = mach_continuous_time();
      v412 = CA::OGL::MetalContext::Pipeline::Spec::name(v483);
      pipeline_state = CA::OGL::MetalContext::load_pipeline_state(__n, v412);
      if (pipeline_state)
      {
        v414 = pipeline_state;
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v415 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
        v98 = v415;
        if (v415)
        {
          *v415 = 0;
          *(v415 + 1) = 0;
          *(v415 + 12) = 0;
          *(v415 + 2) = 0;
          *(v415 + 26) = 1;
        }

        v488[0] = v483;
        std::__hash_table<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::__unordered_map_hasher<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::__unordered_map_equal<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::allocator<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>>>::__emplace_unique_key_args<CA::OGL::MetalContext::Pipeline::Spec,std::piecewise_construct_t const&,std::tuple<CA::OGL::MetalContext::Pipeline::Spec const&>,std::tuple<>>(__n + 335, v483)[6] = v415;
        v416 = *(__n + 341);
        *(__n + 341) = v416 + 1;
        *(v98 + 2) = v416;
        if (atomic_load(v98))
        {
          __assert_rtn("set_pipeline_state", "ogl-metal.mm", 1542, "!is_complete ()");
        }

        atomic_store(v414, v98);
        *(v98 + 25) = 1;
        ++*(__n + 680);
        v418 = CA::OGL::MetalContext::begin_new_render_pipeline(v412, 1, v411);
        CA::OGL::MetalContext::end_new_render_pipeline(__n, v418, 0x24, 1);
        v482[0] = v483[0];
        v482[1] = v483[1];
        v50 = __n;
        goto LABEL_135;
      }

      v50 = __n;
      if ((v86 & 0x400000) != 0 && (BYTE7(v483[1]) & 1) == 0)
      {
        if (x_log_get_ogl_metal(void)::once != -1)
        {
          dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
        }

        v429 = x_log_get_ogl_metal(void)::log;
        v50 = __n;
        if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
        {
          v456 = [(NSString *)v412 UTF8String];
          LODWORD(v488[0]) = 136315138;
          *(v488 + 4) = v456;
          _os_log_error_impl(&dword_183AA6000, v429, OS_LOG_TYPE_ERROR, "Required precompiled pipeline not found: %s\n", v488, 0xCu);
        }
      }
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v430 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
    v98 = v430;
    if (v430)
    {
      *v430 = 0;
      *(v430 + 1) = 0;
      *(v430 + 12) = 0;
      *(v430 + 2) = 0;
      *(v430 + 26) = 1;
    }

    v488[0] = v483;
    std::__hash_table<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::__unordered_map_hasher<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::__unordered_map_equal<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::allocator<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>>>::__emplace_unique_key_args<CA::OGL::MetalContext::Pipeline::Spec,std::piecewise_construct_t const&,std::tuple<CA::OGL::MetalContext::Pipeline::Spec const&>,std::tuple<>>(v50 + 335, v483)[6] = v430;
    v50 = __n;
    v431 = *(__n + 341);
    *(__n + 341) = v431 + 1;
    *(v98 + 2) = v431;
    *(v98 + 25) = 1;
    goto LABEL_697;
  }

  v98 = v91[6];
  v99 = *(v50 + 341);
  *(v50 + 341) = v99 + 1;
  *(v98 + 2) = v99;
  if (!atomic_load(v98))
  {
    if (*(v98 + 1))
    {
      v97 = 0;
      v410 = 0;
LABEL_698:
      *v488 = 0u;
      v489 = 0u;
      if (!v88)
      {
        v487 = 0uLL;
        v486 = 0uLL;
        goto LABEL_704;
      }

      v409 = v98;
LABEL_700:
      CA::OGL::MetalContext::Pipeline::Spec::get_generic(&v486, v483);
      *v488 = v486;
      v489 = v487;
      v432 = std::__hash_table<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::__unordered_map_hasher<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::__unordered_map_equal<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::allocator<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>>>::find<CA::OGL::MetalContext::Pipeline::Spec>(__n + 335, v488);
      v433 = v432;
      v434 = v432 == 0;
      if (v432)
      {
        v435 = v432[6];
        v487 = 0u;
        v486 = 0u;
        if (!v435)
        {
          v98 = v409;
          v50 = __n;
LABEL_704:
          v409 = 0;
          v482[0] = v483[0];
          v482[1] = v483[1];
          v434 = v410;
          v436 = v97;
          LOBYTE(v97) = 0;
LABEL_722:
          if (!atomic_load(v98))
          {
            v441 = MEMORY[0x1E696AEC0];
            v442 = CA::OGL::MetalContext::Pipeline::Spec::encode_segment(v482);
            v443 = [v441 stringWithFormat:@"%@_%@", v442, CA::OGL::MetalContext::FragmentShader::Spec::name(v482)];
            v480 = 32;
            v444 = CA::OGL::MetalContext::begin_new_render_pipeline(v443, 1, 0);
            if (v436)
            {
              v480 = 160;
            }

            if (v434)
            {
              v445 = CA::OGL::MetalContext::create_pipeline_state(__n, v482, &v480, 0);
              if (v445 == 0 && (v89 & 1) != 0)
              {
                if (x_log_get_ogl_metal(void)::once != -1)
                {
                  dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
                }

                v446 = x_log_get_ogl_metal(void)::log;
                if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
                {
                  v452 = [CA::OGL::MetalContext::Pipeline::Spec::name(v488) UTF8String];
                  *buf = 136315138;
                  v485 = v452;
                  _os_log_error_impl(&dword_183AA6000, v446, OS_LOG_TYPE_ERROR, "Required precompiled pipeline not found: %s\n", buf, 0xCu);
                }
              }

              if (atomic_load(v98))
              {
                __assert_rtn("set_pipeline_state", "ogl-metal.mm", 1542, "!is_complete ()");
              }

              atomic_store(v445, v98);
              v448 = __n;
              ++*(__n + 680);
              v449 = v480;
            }

            else
            {
              CA::OGL::MetalContext::Pipeline::wait_for_completion(v98);
              v449 = (v480 | 8);
              v448 = __n;
            }

            CA::OGL::MetalContext::end_new_render_pipeline(v448, v444, v449, 0);
            v50 = __n;
            ++*(__n + 318);
          }

          if (v409)
          {
            CA::OGL::MetalContext::dispatch_async_pipeline(v50, &v486, v409, 0, v97);
          }

          if (!atomic_load(v98))
          {
            __assert_rtn("get_pipeline", "ogl-metal.mm", 7664, "pipeline && pipeline->is_complete ()");
          }

          v451 = *(v50 + 341);
          *(v50 + 341) = v451 + 1;
          *(v98 + 2) = v451;
          goto LABEL_135;
        }
      }

      else
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v437 = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x165299FDuLL);
        v435 = v437;
        if (v437)
        {
          *v437 = 0;
          v437[1] = 0;
          *(v437 + 12) = 0;
          v437[2] = 0;
          *(v437 + 26) = 1;
        }

        *&v486 = v488;
        std::__hash_table<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::__unordered_map_hasher<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::__unordered_map_equal<CA::OGL::MetalContext::Pipeline::Spec,std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>,std::equal_to<CA::OGL::MetalContext::Pipeline::Spec>,CA::OGL::MetalContext::StructHasher<CA::OGL::MetalContext::Pipeline::Spec>,true>,std::allocator<std::__hash_value_type<CA::OGL::MetalContext::Pipeline::Spec,CA::OGL::MetalContext::Pipeline*>>>::__emplace_unique_key_args<CA::OGL::MetalContext::Pipeline::Spec,std::piecewise_construct_t const&,std::tuple<CA::OGL::MetalContext::Pipeline::Spec const&>,std::tuple<>>(__n + 335, v488)[6] = v437;
        v438 = *(__n + 341);
        *(__n + 341) = v438 + 1;
        v435[2] = v438;
        *(v435 + 25) = 0;
        v487 = 0u;
        v486 = 0u;
      }

      v439 = atomic_load(v435);
      if (v439 || (v89 & 1) != 0 && *(v435 + 26) == 1)
      {
        CA::OGL::MetalContext::Pipeline::Spec::push_blend_function(v483);
        v482[0] = *v488;
        v482[1] = v489;
        v436 = 0;
        if (v410)
        {
          v486 = v491[0];
          v487 = v491[1];
        }

        else
        {
          v409 = 0;
          LOBYTE(v97) = 0;
        }

        v98 = v435;
      }

      else
      {
        v482[0] = v483[0];
        v482[1] = v483[1];
        if (v433)
        {
          v98 = v409;
          v434 = v410;
          v436 = v97;
          v409 = 0;
        }

        else
        {
          v98 = v409;
          v486 = *v488;
          v487 = v489;
          v434 = v410;
          v436 = v97;
          v409 = v435;
        }

        LOBYTE(v97) = 0;
      }

      v50 = __n;
      goto LABEL_722;
    }

LABEL_697:
    v491[0] = v483[0];
    v491[1] = v483[1];
    v410 = 1;
    goto LABEL_698;
  }

  if (*(v98 + 24) == 1)
  {
    v419 = CA::OGL::MetalContext::Pipeline::Spec::name(v483);
    v50 = __n;
    CA::OGL::MetalContext::emit_new_render_pipeline(__n, v419);
    *(v98 + 24) = 0;
  }

  v482[0] = v483[0];
  v482[1] = v483[1];
  CA::OGL::MetalContext::Pipeline::wait_for_completion(v98);
LABEL_135:
  if (!atomic_load(v98))
  {
    return;
  }

  v102 = atomic_load(v98);
  if (*(v50 + 496) != v102)
  {
    *(v50 + 496) = v102;
    (*(v50 + 445))(*(v50 + 442), sel_setRenderPipelineState_);
    v50 = __n;
  }

  v103 = *(v50 + 84);
  v104 = *(v103 + 272) ? *(v103 + 272) : *(v50 + 84);
  v105 = v104[32];
  v106 = *(v50 + 64);
  if (v106 == 1)
  {
    v107 = *(v50 + 40);
    v108 = *(v50 + 9);
    if ((v104[38].i16[2] & 0x200) != 0)
    {
      v108 = v105.i32[1] - (v108 + v107.i32[1]);
      v109 = v104[6].i32[1];
    }

    else
    {
      v109 = -v104[6].i32[1];
    }

    v110 = v109 + v108;
    if ((v104[38].i16[2] & 0x400) != 0)
    {
      v111.i32[0] = v104[7].i32[1] - v107.i32[1] - v110;
      v111.i32[1] = *(v50 + 8) - v104[6].i32[0];
      v107 = vrev64_s32(v107);
    }

    else
    {
      v111.i32[0] = *(v50 + 8) - v104[6].i32[0];
      v111.i32[1] = v110;
    }

    v114 = vmin_s32(v105, vadd_s32(v107, v111));
    v113 = vmax_s32(v111, 0);
    v105 = vsub_s32(v114, v113);
  }

  else
  {
    v112 = (*(v103 + 144) >> 1) & 0x1F;
    if (v112)
    {
      v105 = vmax_s32(vshl_s32(v105, vneg_s32(vdup_n_s32(v112))), 0x100000001);
    }

    v113 = 0;
  }

  v115 = v105.i32[0] <= 0 || v105.i32[1] <= 0;
  v116 = !v115;
  if (*&v113 != *(v50 + 6) || *&v105 != *(v50 + 7))
  {
    if (v116)
    {
      v117 = *(v50 + 448);
      v118 = *(v50 + 442);
      v473 = v113;
      v476 = v105;
      *&v119 = v113.u32[0];
      *(&v119 + 1) = v113.u32[1];
      v120 = v119;
      *&v119 = v105.u32[0];
      *(&v119 + 1) = v105.u32[1];
      v491[0] = v120;
      v491[1] = v119;
      v117(v118, sel_setScissorRect_, v491);
      v50 = __n;
      LOBYTE(v106) = *(__n + 64);
      v113 = v473;
      v105 = v476;
    }

    *(v50 + 6) = v113;
    *(v50 + 7) = v105;
    *(v50 + 964) |= 0x40u;
  }

  *(v50 + 65) = *(v50 + 65) & 0xFE | v106;
  if (!v116)
  {
    return;
  }

  v121 = *(v482 + 14);
  if ((*(v482 + 14) & 0x4000000) != 0)
  {
    v122 = CA::OGL::MetalBufferPool::alloc_fragment_arg(*(v50 + 595), 0, 0x34u, 4u);
    v50 = __n;
    if (v122)
    {
      CA::OGL::MetalContext::FragmentShader::Spec::get_config(v491, v483, v123, v124, v125, v126, v127, v128, v129);
      *v122 = v491[0];
      v122[1] = v491[1];
      v122[2] = v492;
      *(v122 + 48) = v493;
    }
  }

  v130 = v50 + 4064;
  v131 = *(v483 + 14);
  v132 = BYTE14(v483[0]) & 0x7F;
  if ((CA::OGL::MetalContext::texture_function_info[8 * v132] & 0x3F) != 0)
  {
    v133 = 0;
    v134 = v50 + 4064;
    goto LABEL_270;
  }

  v477 = v50 + 4064;
  v135 = 0;
  v136 = 0;
  v137 = (v483 + 7);
  v138 = 0uLL;
  v494 = 0u;
  v495 = 0u;
  v492 = 0u;
  v493 = 0u;
  memset(v491, 0, sizeof(v491));
  v139 = *(v50 + 2);
  v140 = v139 + 400;
  v141 = *(v139 + 376);
  v142 = v483;
  v143 = 1;
  v144 = CA::OGL::tex_image_count;
  v474 = v139;
  do
  {
    v145 = v143;
    v146 = &v491[3 * v135];
    if (v141)
    {
      if (v131 & 0x4000000) != 0 || (v147 = v144[v132], v135 < v147) && (CA::OGL::MetalContext::image_function_info[2 * (*v142 & 0x3F)])
      {
        v148 = *v141;
        if ((v148 - 5) <= 0xFFFFFFFB)
        {
          __assert_rtn("encode_uniform_image_arg", "ogl-metal.mm", 9398, "rs->op >= RenderState::distance_fill && rs->op <= RenderState::distance_outer_stroke");
        }

        if (*(v141 + 4))
        {
          v149 = -1.0;
        }

        else
        {
          v149 = 1.0;
        }

        *v146 = v149;
        *(v146 + 1) = v141[4];
        if (v148 == 1)
        {
          *(v146 + 2) = v141[2];
          *(v146 + 3) = 0;
        }

        else
        {
          *v488 = v138;
          HIDWORD(v489) = HIDWORD(v138);
          v490 = 0x3F80000000000000;
          *&v489 = --0.0000305175998;
          DWORD2(v489) = -1082130432;
          v153 = (v141 + 2);
          v154 = vld1_dup_f32(v153);
          v155 = vmla_n_f32(v154, v488[v148], *(v141 + 3));
          *(v146 + 1) = vbsl_s8(vdup_lane_s32(vcgt_f32(v155, vdup_lane_s32(v155, 1)), 0), vrev64_s32(v155), v155);
        }

        goto LABEL_191;
      }
    }

    else
    {
      v147 = v144[v132];
    }

    if (v135 >= v147)
    {
      goto LABEL_192;
    }

    v150 = *v142 & 0x3F;
    v151 = CA::OGL::MetalContext::image_function_info[2 * v150];
    if ((v151 & 0x10) != 0)
    {
      *v146 = *(v140 + 48 * v135 + 32);
      if ((v151 & 0x20) == 0)
      {
        goto LABEL_191;
      }

      goto LABEL_190;
    }

    if ((CA::OGL::MetalContext::image_function_info[2 * v150] & 0x20) != 0)
    {
      *v146 = *(v140 + 48 * v135 + 32);
LABEL_190:
      v156 = (v140 + 48 * v135);
      v157 = v156[1];
      v146[1] = *v156;
      v146[2] = v157;
      goto LABEL_191;
    }

    if (((0x3FFFFF8FFFFFuLL >> v150) & 1) == 0)
    {
      v152 = v144;
      memcpy(v146, (v140 + 48 * v135), 16 * CA::OGL::MetalContext::image_function_info[2 * v150 + 1]);
      v138 = 0uLL;
      v144 = v152;
      v139 = v474;
LABEL_191:
      v136 = v491;
      goto LABEL_192;
    }

    if ((CA::OGL::MetalContext::image_function_info[2 * v150] & 0x40) != 0)
    {
      v158 = (v140 + 48 * v135);
      *v146 = *v158;
      *(v146 + 12) = *(v158 + 12);
      goto LABEL_191;
    }

LABEL_192:
    v143 = 0;
    v142 = (v483 + 7);
    v135 = 1;
  }

  while ((v145 & 1) != 0);
  v130 = v477;
  v159 = (v477 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v136)
  {
    v160 = 0;
    v133 = 0;
    do
    {
      v161 = *(v136 + v160);
      if (*(v159 + v160) != v161)
      {
        *(v159 + v160) = v161;
        v133 = 1;
      }

      v160 += 4;
    }

    while (v160 != 96);
    v131 = *(v483 + 14);
  }

  else
  {
    v133 = 0;
  }

  v162 = *(&CA::OGL::MetalContext::blend_function_info + 3 * ((v131 >> 8) & 0x3F));
  v50 = __n;
  if ((v162 & 0xE) != 0)
  {
    v494 = 0u;
    v495 = 0u;
    v492 = 0u;
    v493 = 0u;
    memset(v491, 0, sizeof(v491));
    if ((v162 & 2) != 0)
    {
      v164 = *(v139 + 304);
      v491[0] = *(v139 + 288);
      v491[1] = v164;
      goto LABEL_209;
    }

    if ((v162 & 8) != 0)
    {
      v165 = *(v139 + 280);
      v163 = (v159 + 103) & 0xFFFFFFFFFFFFFFF0;
      if (v165)
      {
        goto LABEL_210;
      }
    }

    else
    {
      if ((v162 & 4) == 0)
      {
        goto LABEL_207;
      }

      LODWORD(v491[0]) = *(v139 + 288);
LABEL_209:
      v163 = (v159 + 103) & 0xFFFFFFFFFFFFFFF0;
      v165 = v491;
LABEL_210:
      for (i = 0; i != 24; ++i)
      {
        _S0 = *(v165 + i);
        __asm { FCVT            H0, S0 }

        if (*(v163 + 2 * i) != _H0)
        {
          *(v163 + 2 * i) = _H0;
          v133 = 1;
        }
      }
    }
  }

  else
  {
LABEL_207:
    v163 = (v159 + 103) & 0xFFFFFFFFFFFFFFF0;
  }

  v171 = BYTE2(v483[1]);
  if ((BYTE2(v483[1]) & 4) != 0)
  {
    v183 = *(v139 + 321);
    v184 = 1.0;
    _S9 = 1.0;
    if (v183)
    {
      _S9 = *(v139 + 328);
      if ((*(v139 + 322) & 1) == 0)
      {
        v186 = *(v139 + 328);
        v187 = v144;
        v188 = powf(v186, 1.0 / *(__n + 144));
        v144 = v187;
        v139 = v474;
        _S9 = v188;
      }
    }

    if ((v183 & 2) != 0)
    {
      v184 = *(v139 + 332);
      if ((*(v139 + 322) & 2) == 0)
      {
        v189 = v144;
        v190 = powf(*(v139 + 332), 1.0 / *(__n + 144));
        v144 = v189;
        v184 = v190;
      }
    }

    v191 = 0;
    v192 = 0;
    v172 = (v163 + 49) & 0xFFFFFFFFFFFFFFFELL;
    v130 = v477;
    do
    {
      v193 = v191;
      __asm { FCVT            H0, S9 }

      if (*(v172 + 2 * v192) != _H0)
      {
        *(v172 + 2 * v192) = _H0;
        v133 = 1;
      }

      v191 = 1;
      _S9 = v184;
      v192 = 1;
    }

    while ((v193 & 1) == 0);
    v171 = BYTE2(v483[1]);
    if ((BYTE2(v483[1]) & 8) == 0)
    {
      goto LABEL_233;
    }

LABEL_216:
    v173 = fmaxf(*(__n + 872), 0.000001);
    v174 = 1.0 / *(__n + 144);
    v175 = v144;
    _S8 = powf(v173, v174);
    v177 = powf(1.0 / v173, v174);
    v144 = v175;
    v178 = 0;
    v179 = 0;
    v180 = (v172 + 5) & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v181 = v178;
      __asm { FCVT            H1, S8 }

      if (*(v180 + 2 * v179) != _H1)
      {
        *(v180 + 2 * v179) = _H1;
        v133 = 1;
      }

      v178 = 1;
      _S8 = v177;
      v179 = 1;
    }

    while ((v181 & 1) == 0);
    v171 = BYTE2(v483[1]);
    if ((BYTE2(v483[1]) & 2) != 0)
    {
LABEL_234:
      v195 = *(v139 + 323);
      if (*(v180 + 4) != v195)
      {
        *(v180 + 4) = v195;
        v171 = BYTE2(v483[1]);
        v133 = 1;
      }
    }
  }

  else
  {
    v172 = (v163 + 49) & 0xFFFFFFFFFFFFFFFELL;
    if ((BYTE2(v483[1]) & 8) != 0)
    {
      goto LABEL_216;
    }

LABEL_233:
    v180 = (v172 + 5) & 0xFFFFFFFFFFFFFFFELL;
    if ((v171 & 2) != 0)
    {
      goto LABEL_234;
    }
  }

  if ((v171 & 4) != 0)
  {
    v196 = *(*(__n + 2) + 322);
    if (*(v180 + 5) != v196)
    {
      *(v180 + 5) = v196;
      v133 = 1;
    }
  }

  *&v491[0] = 0x3F80000000000000;
  v197 = BYTE14(v483[0]) & 0x7F;
  if ((*&CA::OGL::MetalContext::texture_function_info[8 * v197 + 6] & 4) != 0 || (*(&CA::OGL::MetalContext::blend_function_info + 3 * ((*(v483 + 14) >> 8) & 0x3F)) & 2) != 0)
  {
    v199 = *(*(__n + 84) + 192);
    if (v199 == 125 || v199 == 115)
    {
      *v491 = -COERCE_DOUBLE(0x7F0000007FLL);
    }

    else
    {
      if ((v199 - 550) > 5)
      {
        v340 = 0x3F80000000000000;
      }

      else
      {
        v340 = 0x3FA00000BF400000;
        *&v491[0] = 0x3FA00000BF400000;
      }

      if ((BYTE2(v483[1]) & 8) != 0)
      {
        v341 = v144;
        v342 = powf(1.0 / fmaxf(*(__n + 872), 0.000001), 1.0 / *(__n + 144));
        v144 = v341;
        *&v491[0] = vmul_n_f32(v340, v342);
      }
    }

    v200 = 0;
    v201 = 0;
    v198 = (v180 + 9) & 0xFFFFFFFFFFFFFFFCLL;
    v202 = v491;
    do
    {
      v203 = v200;
      _S0 = *v202;
      __asm { FCVT            H0, S0 }

      if (*(v198 + 2 * v201) != _H0)
      {
        *(v198 + 2 * v201) = _H0;
        v133 = 1;
      }

      v200 = 1;
      v202 = v491 + 1;
      v201 = 1;
    }

    while ((v203 & 1) == 0);
    v197 = BYTE14(v483[0]) & 0x7F;
  }

  else
  {
    v198 = (v180 + 9) & 0xFFFFFFFFFFFFFFFCLL;
  }

  v206 = v144[v197];
  if (!v206)
  {
    goto LABEL_261;
  }

  if ((CA::OGL::MetalContext::texture_filter_info[(LOWORD(v483[0]) >> 9) & 0xF] & 1) == 0)
  {
    v211 = 0;
    while (v206 - 1 != v211)
    {
      v212 = *v137;
      v137 = (v137 + 7);
      ++v211;
      if (CA::OGL::MetalContext::texture_filter_info[(v212 >> 9) & 0xF])
      {
        if (v211 < v206)
        {
          goto LABEL_252;
        }

        break;
      }
    }

LABEL_261:
    v209 = (v198 + 19) & 0xFFFFFFFFFFFFFFF0;
    goto LABEL_262;
  }

LABEL_252:
  v207 = 0;
  v208 = *(__n + 2) + 336;
  v209 = (v198 + 19) & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v210 = *(v208 + v207);
    if (*(v209 + v207) != v210)
    {
      *(v209 + v207) = v210;
      v133 = 1;
    }

    v207 += 4;
  }

  while (v207 != 32);
LABEL_262:
  if (CA::OGL::MetalContext::coord_function_info[(LOWORD(v483[0]) >> 6) & 7])
  {
    v213 = 0;
    v214 = *(__n + 2) + 384;
    v215 = (v209 + 47) & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v216 = *(v214 + v213);
      if (*(v215 + v213) != v216)
      {
        *(v215 + v213) = v216;
        v133 = 1;
      }

      v213 += 4;
    }

    while (v213 != 16);
  }

  else
  {
    v215 = (v209 + 47) & 0xFFFFFFFFFFFFFFF0;
  }

  v134 = (v215 + 16);
  v132 = BYTE14(v483[0]) & 0x7F;
LABEL_270:
  v217 = &CA::OGL::MetalContext::texture_function_info[8 * v132];
  if (*(v217 + 3))
  {
    v218 = 0;
    v219 = *(v50 + 2) + 24;
    v220 = (v134 + 7) & 0xFFFFFFFFFFFFFFF8;
    do
    {
      _S0 = *(v219 + 4 * v218);
      __asm { FCVT            H0, S0 }

      if (*(v220 + 2 * v218) != _H0)
      {
        *(v220 + 2 * v218) = _H0;
        v133 = 1;
      }

      ++v218;
    }

    while (v218 != 4);
    v134 = (v220 + 8);
  }

  else
  {
    v223 = 0;
    v224 = v217 + 1;
    v225 = (v50 + 160);
    do
    {
      v226 = v224[v223];
      if ((v226 & 0x78) == 0)
      {
        break;
      }

      v227 = ((v226 >> 3) & 0xF) * (v226 & 7);
      v228 = v224[v223] & 7;
      if ((v226 & 0x80000000) != 0)
      {
        v237 = 2 * v228 - 1;
        v238 = &v134[v237];
        v239 = v238 / (2 * v228) * 2 * v228;
        v232 = v238 & (-2 * v228);
        if ((v237 & (2 * v228)) != 0)
        {
          v232 = v239;
        }

        if (v227)
        {
          for (j = 0; j != v227; ++j)
          {
            _S0 = v225[j];
            __asm { FCVT            H0, S0 }

            if (*(v232 + 2 * j) != _H0)
            {
              *(v232 + 2 * j) = _H0;
              v133 = 1;
            }
          }
        }

        v236 = 1;
      }

      else
      {
        v229 = 4 * v228 - 1;
        v230 = &v134[v229];
        v231 = v230 / (4 * v228) * 4 * v228;
        v232 = v230 & (-4 * v228);
        if ((v229 & (4 * v228)) != 0)
        {
          v232 = v231;
        }

        if (v227)
        {
          v233 = v225;
          v234 = v232;
          v235 = v227;
          do
          {
            if (*v234 != *v233)
            {
              *v234 = *v233;
              v133 = 1;
            }

            ++v234;
            ++v233;
            --v235;
          }

          while (v235);
        }

        v236 = 2;
      }

      v134 = (v232 + (v227 << v236));
      ++v223;
      v225 += 20;
    }

    while (v223 != 5);
  }

  if ((v134 - v130) <= 0x100)
  {
    v243 = 256;
  }

  else
  {
    v243 = v134 - v130;
  }

  if ((v134 - v130) >= 0x191)
  {
    __assert_rtn("encode_fragment_uniforms", "ogl-metal.mm", 9365, "uintptr_t (dst) - uintptr_t (_encoded.frag_uniform) <= kMaxUniformSize");
  }

  if ((v133 & 1) != 0 || (*(v50 + 4016) & 2) == 0)
  {
    v244 = CA::OGL::MetalBufferPool::encode_fragment_arg(*(v50 + 595), 1, v130, v243, 0x10u);
    v50 = __n;
    if (!v244)
    {
      return;
    }

    *(__n + 4016) |= 2u;
  }

  if ((v121 & 0x4000000) != 0)
  {
LABEL_310:
    if (*(v50 + 2232) != *(*(v50 + 2) + 60))
    {
      v248 = CA::OGL::MetalBufferPool::alloc_fragment_arg(*(v50 + 595), 3, 0x30u, 8u);
      v50 = __n;
      if (!v248)
      {
        return;
      }

      v249 = 0;
      v250 = *(__n + 2);
      v251 = v250 + 60;
      v252 = v250 + 62;
      v253 = 1;
      do
      {
        v254 = 0;
        v255 = v253;
        v256 = *(v251 + v249);
        v257 = *(v252 + v249);
        v258 = v256 - 1;
        _ZF = v257 == 0;
        v259 = v257 - 1;
        v260 = _ZF || v256 == 0;
        v261 = &CA::OGL::ycbcr_matrices + 48 * v256;
        v92 = (&CA::OGL::ycbcr_matrix_book + 96 * v258);
        v262 = v92 + 48 * v259;
        if (v260)
        {
          v262 = v261;
        }

        v263 = (v248 + 7) & 0xFFFFFFFFFFFFFFF8;
        do
        {
          _S0 = *&v262[4 * v254];
          __asm { FCVT            H0, S0 }

          if (*(v263 + 2 * v254) != _H0)
          {
            *(v263 + 2 * v254) = _H0;
          }

          ++v254;
        }

        while (v254 != 12);
        v253 = 0;
        v248 = (v263 + 24);
        v249 = 1;
      }

      while ((v255 & 1) != 0);
    }

LABEL_323:
    if ((v121 & 0x4000000) == 0)
    {
      goto LABEL_324;
    }

LABEL_330:
    v268 = CA::OGL::tex_image_count[BYTE14(v483[0]) & 0x7F];
    v269 = v50 + 4512;
    if (*(v50 + 1128) == -1)
    {
      v273 = v268 == 0;
      v270 = BYTE2(v482[1]);
    }

    else
    {
      v270 = BYTE2(v482[1]);
      v271 = BYTE2(v482[1]) ^ *(v50 + 4016);
      LODWORD(v272) = (v271 >> 4) & 1;
      v273 = v268 == 0;
      if ((v271 & 0x10) == 0 && CA::OGL::tex_image_count[BYTE14(v483[0]) & 0x7F])
      {
        v274 = 0;
        do
        {
          v272 = *(*(v50 + 2) + 40 + 8 * v274);
          if (v272)
          {
            LOBYTE(v272) = *(v272 + 8) != *&v269[4 * v274];
          }

          if (v272)
          {
            break;
          }

          ++v274;
        }

        while (v274 < v268);
      }

      if ((v272 & 1) == 0)
      {
LABEL_339:
        if ((v121 & 0x4000000) == 0)
        {
          goto LABEL_340;
        }

LABEL_382:
        v275 = 2;
        v467 = 2;
        goto LABEL_383;
      }
    }

    if ((v270 & 0x10) != 0)
    {
      v280 = 1344;
    }

    else
    {
      v280 = 672;
    }

    if ((v270 & 0x10) != 0)
    {
      v281 = 16;
    }

    else
    {
      v281 = 8;
    }

    v282 = CA::OGL::MetalBufferPool::alloc_fragment_arg(*(v50 + 595), 4, v280, v281);
    v50 = __n;
    if (!v282)
    {
      return;
    }

    if (!v273)
    {
      v283 = 0;
      v284 = *(__n + 2) + 40;
      v285 = 3;
      if ((v270 & 0x10) != 0)
      {
        v285 = 4;
      }

      v286 = BYTE2(v482[1]);
      do
      {
        *&v269[4 * v283] = 0;
        v287 = *(v284 + 8 * v283);
        if (v287)
        {
          v288 = 0;
          v92 = *(v287 + 48);
          v102 = *(v287 + 36);
          do
          {
            v289 = (v102 >> (5 * v288)) & 0x1FLL;
            v93 = &v282[((42 * v283) << v285) + ((7 * v288) << v285)];
            v243 = 4 * CA::ColorProgram::kOpcodeParamCount[v289];
            LODWORD(v95) = v92 != 0;
            v94 = (v95 & (0x3FE7FEuLL >> v289));
            if ((v286 & 0x10) != 0)
            {
              if (v94)
              {
                v93 = ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
                v94 = v92;
                v95 = v243;
                do
                {
                  if (*v93 != *v94)
                  {
                    *v93 = *v94;
                  }

                  v93 += 4;
                  v94 += 4;
                  --v95;
                }

                while (v95);
              }
            }

            else if (v94)
            {
              v93 = ((v93 + 7) & 0xFFFFFFFFFFFFFFF8);
              v94 = v92;
              v95 = v243;
              do
              {
                _S0 = *v94;
                __asm { FCVT            H0, S0 }

                if (*v93 != _H0)
                {
                  *v93 = _H0;
                }

                v93 += 2;
                v94 += 4;
                --v95;
              }

              while (v95);
            }

            v92 = (v92 + 4 * v243);
            ++v288;
          }

          while (v288 != 6);
          *&v269[4 * v283] = *(v287 + 8);
        }

        ++v283;
      }

      while (v283 != v268);
    }

    if (v268 <= 1)
    {
      do
      {
        v292 = v268;
        *&v269[4 * v268] = 0;
        v268 = 1;
      }

      while (!v292);
    }

    *(__n + 4016) = *(__n + 4016) & 0xEF | BYTE2(v482[1]) & 0x10;
    if ((v121 & 0x4000000) == 0)
    {
      goto LABEL_340;
    }

    goto LABEL_382;
  }

  v245 = CA::OGL::tex_image_count[v121 & 0x7F];
  if (CA::OGL::tex_image_count[v121 & 0x7F])
  {
    v246 = v482;
    while (1)
    {
      v247 = *v246;
      v246 = (v246 + 7);
      if ((CA::OGL::MetalContext::image_function_info[2 * (v247 & 0x3F)] & 2) != 0)
      {
        goto LABEL_310;
      }

      if (!--v245)
      {
        goto LABEL_323;
      }
    }
  }

LABEL_324:
  v266 = CA::OGL::tex_image_count[v121 & 0x7F];
  if (CA::OGL::tex_image_count[v121 & 0x7F])
  {
    v267 = (v482 + 3);
    while (*(v267 - 1) <= 7u && (*v267 & 0x1FFFFFF) == 0)
    {
      v267 = (v267 + 7);
      if (!--v266)
      {
        goto LABEL_339;
      }
    }

    goto LABEL_330;
  }

LABEL_340:
  v275 = CA::OGL::tex_image_count[v121 & 0x7F];
  if ((v121 & 0x7F) == 0x3C)
  {
    v467 = 2;
  }

  else
  {
    v467 = CA::OGL::tex_image_count[v121 & 0x7F];
    if (!CA::OGL::tex_image_count[v121 & 0x7F])
    {
      if ((v121 & 0x4000000) != 0)
      {
        goto LABEL_515;
      }

      goto LABEL_344;
    }
  }

LABEL_383:
  v293 = 0;
  v466 = v275;
  v478 = v50 + 4528;
  v475 = v50 + 4648;
  v294 = &unk_1E6DFA000;
  v295 = 3;
  v296 = &unk_1E6DFA000;
  v458 = (v50 + 4744);
  while (2)
  {
    v297 = 0;
    v471 = v483 + 8 * v293 - v293;
    v472 = v482 + 8 * v293 - v293;
    v469 = v294[428];
    v470 = v296[429];
    v468 = v295;
    while (2)
    {
      if ((*(v482 + 14) & 0x4000000) == 0)
      {
        v298 = BYTE14(v482[0]) & 0x7F;
        v299 = v298 == 60 ? 2 : CA::OGL::tex_image_count[v298];
        if (v299 <= v293 || v297 >= CA::OGL::image_plane_count[*v472 & 0x3FLL] || v293 < CA::OGL::tex_image_count[v298] && (*v472 & 0x8000) == 0)
        {
          goto LABEL_463;
        }
      }

      v300 = *(v50 + 2);
      v301 = *(v300 + 8 * (v297 + CA::OGL::state_image_texture_unit(v300, v293)) + 176);
      if ((*(v483 + 14) & 0x4000000) != 0 || ((v302 = BYTE14(v483[0]) & 0x7F, v302 != 60) ? (v303 = CA::OGL::tex_image_count[v302]) : (v303 = 2), v303 > v293 && v297 < CA::OGL::image_plane_count[*v471 & 0x3FLL] && (v293 >= CA::OGL::tex_image_count[v302] || (*v471 & 0x8000) != 0)))
      {
        v305 = v301 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v301 & 0xFFFFFFFFFFFFFFFCLL) == 0)
        {
          return;
        }

        v306 = v301 & 3;
        v307 = v305 + 64;
        if (!*(v305 + 64 + 8 * v306))
        {
          return;
        }

        v308 = *(v305 + 123);
        if ((v308 & 8) == 0)
        {
          v309 = 0;
          goto LABEL_451;
        }

        v310 = *(v50 + 416);
        if (!v310)
        {
          v310 = malloc_type_calloc(8uLL, 0x100uLL, 0x80040B8603338uLL);
          v50 = __n;
          *(__n + 416) = v310;
          v308 = *(v305 + 123);
        }

        v311 = (*(v305 + 52) >> 18) & 0xC | WORD1(*(v305 + 52)) & 3 | (*(v305 + 52) >> 47) & 0x30 | ((v308 & 1) << 6) & 0x7F | (((v308 >> 4) & 1) << 7);
        v309 = v310[v311];
        if (v309)
        {
LABEL_451:
          v326 = atomic_load(v50 + 593);
          *(v305 + 112) = v326;
          if ((*(v305 + 123) & 0x20) != 0)
          {
            if (v297)
            {
              __assert_rtn("encode_image_plane", "ogl-metal.mm", 9828, "plane == 0");
            }

            v102 = *(v307 + 8 * v306);
            if (*&v478[8 * v295] == v102 && *&v475[8 * v293] == v309)
            {
              goto LABEL_463;
            }

            *&v478[8 * v295] = v102;
            *&v475[8 * v293] = v309;
            [*(v50 + 442) setFragmentTexture:? atTextureIndex:? samplerState:? atSamplerIndex:?];
          }

          else
          {
            v102 = *(v307 + 8 * v306);
            if (*&v478[8 * v295] != v102)
            {
              *&v478[8 * v295] = v102;
              (*(v50 + 446))(*(v50 + 442), v469);
              v50 = __n;
            }

            if (v297 || !v309 || *&v475[8 * v293] == v309)
            {
              goto LABEL_463;
            }

            *&v475[8 * v293] = v309;
            (*(v50 + 447))(*(v50 + 442), v470, v309, v293);
          }

LABEL_462:
          v50 = __n;
          goto LABEL_463;
        }

        v312 = objc_opt_new();
        v313 = v312;
        if ((*(__n + 3316) & 2) == 0 || (v314 = *(v305 + 123), (v314 & 0x10) != 0))
        {
          v315 = 0;
        }

        else
        {
          v315 = v314 ^ 1;
        }

        v316 = *(v305 + 54) & 0xF;
        if ((*(v305 + 54) & 0xF) == 0 || v316 == 8)
        {
          v318 = 0;
        }

        else if (v316 == 3 && (v315 & 1) != 0)
        {
          v318 = 2;
        }

        else
        {
          v318 = 1;
        }

        [v312 setMinFilter:v318];
        v319 = (*(v305 + 52) >> 20) & 0xF;
        if (v319)
        {
          v320 = v319 == 8;
        }

        else
        {
          v320 = 1;
        }

        if (v320)
        {
          v321 = 0;
        }

        else if (v319 == 3 && (v315 & 1) != 0)
        {
          v321 = 2;
        }

        else
        {
          v321 = 1;
        }

        [v313 setMagFilter:v321];
        v322 = *(v305 + 52);
        v323 = (v322 >> 51) & 3;
        if (((v322 >> 51) & 3) > 1)
        {
          if (v323 != 2)
          {
            if (x_log_get_ogl_metal(void)::once != -1)
            {
              dispatch_once(&x_log_get_ogl_metal(void)::once, &__block_literal_global_8312);
            }

            v457 = x_log_get_ogl_metal(void)::log;
            if (os_log_type_enabled(x_log_get_ogl_metal(void)::log, OS_LOG_TYPE_ERROR))
            {
              *&v491[0] = 0x304000100;
              _os_log_error_impl(&dword_183AA6000, v457, OS_LOG_TYPE_ERROR, "CoreAnimation: Invalid TextureEdgeMode 0x%x", v491, 8u);
            }

            abort();
          }

          v323 = 4;
        }

        else if (v323)
        {
          v323 = 2;
        }

        [v313 setTAddressMode:v323];
        [v313 setSAddressMode:v323];
        v324 = *(v305 + 123);
        if (v324)
        {
          v325 = *(v305 + 54) & 0xF;
          if (v325 == 2)
          {
LABEL_447:
            [v313 setMipFilter:v325];
            v324 = *(v305 + 123);
            goto LABEL_448;
          }

          if (v325 == 7)
          {
            v325 = 1;
            goto LABEL_447;
          }
        }

LABEL_448:
        if ((v324 & 0x10) != 0)
        {
          [v313 setMaxAnisotropy:8];
        }

        v309 = [*(__n + 438) newSamplerStateWithDescriptor:v313];

        v50 = __n;
        *(*(__n + 416) + 8 * v311) = v309;
        goto LABEL_451;
      }

      v304 = CA::OGL::MetalContext::encode_placeholder_texture(v50, v295);
      v50 = __n;
      if (!v304)
      {
        return;
      }

      if (!v297)
      {
        v102 = *(__n + 435);
        if (!v102)
        {
          v102 = [*(__n + 438) newSamplerStateWithDescriptor:objc_opt_new()];
          v50 = __n;
          *(__n + 435) = v102;
          if (!v102)
          {
            return;
          }
        }

        if (*&v475[8 * v293] != v102)
        {
          *&v475[8 * v293] = v102;
          (*(v50 + 447))(*(v50 + 442), v470);
          goto LABEL_462;
        }
      }

LABEL_463:
      ++v297;
      v295 += 2;
      if (v297 != 3)
      {
        continue;
      }

      break;
    }

    if (v293 < v466)
    {
      v327 = *(v482 + 14);
      if (*(v482 + 14) & 0x4000000) != 0 || (v472[2] & 0xF8) == 0x38 || (v336 = *(v472 + 3), (vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(vdupq_n_s32(v336), xmmword_183E21410), xmmword_183E21420)))) || (v336 & 0x1F00000) == 0x700000)
      {
        v243 = (v293 + 10);
        if (BYTE1(v483[1]) & 4) != 0 || (v471[2] & 0xF8) == 0x38 || (v337 = *(v471 + 3), (vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(vdupq_n_s32(v337), xmmword_183E21410), xmmword_183E21420)))) || (v337 & 0x1F00000) == 0x700000)
        {
          v328 = *(*(v50 + 2) + 8 * *(*(v50 + 2) + v293 + 56) + 176) & 0xFFFFFFFFFFFFFFFCLL;
          v329 = atomic_load(v458);
          *(v328 + 112) = v329;
          v102 = *(v328 + 64);
          if (*&v478[8 * v243] != v102)
          {
            *&v478[8 * v243] = v102;
            (*(v50 + 446))(*(v50 + 442), sel_setFragmentTexture_atIndex_);
            v50 = __n;
          }
        }

        else
        {
          v338 = CA::OGL::MetalContext::encode_placeholder_texture(v50, v293 + 10);
          v50 = __n;
          if (!v338)
          {
            return;
          }
        }

        v327 = *(v482 + 14);
      }

      if ((v327 & 0x4000000) != 0 || (v330 = v472[2], (v330 - 64) < 0x18) || (v331 = *(v472 + 3), (v331 & 0x1F) - 8 < 3) || ((v331 >> 5) & 0x1F) - 8 < 3 || ((v331 >> 10) & 0x1F) - 8 < 3 || ((v331 >> 15) & 0x1F) - 8 < 3 || (v330 & 0xF8) == 0x98 || ((v331 >> 20) & 0x1F) - 8 < 3 || (vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(vdupq_n_s32(v331), xmmword_183E21430), xmmword_183E21440))) & 1) != 0 || (v331 & 0x1F) == 0x13)
      {
        v243 = (v293 + 12);
        if ((BYTE1(v483[1]) & 4) != 0 || (v332 = v471[2], (v332 - 64) < 0x18) || (v333 = *(v471 + 3), (v333 & 0x1F) - 8 < 3) || ((v333 >> 5) & 0x1F) - 8 < 3 || ((v333 >> 10) & 0x1F) - 8 < 3 || ((v333 >> 15) & 0x1F) - 8 < 3 || (v332 & 0xF8) == 0x98 || ((v333 >> 20) & 0x1F) - 8 < 3 || (vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(vdupq_n_s32(v333), xmmword_183E21430), xmmword_183E21440))) & 1) != 0 || (v333 & 0x1F) == 0x13)
        {
          v334 = *(*(v50 + 2) + 8 * *(*(v50 + 2) + v293 + 58) + 176) & 0xFFFFFFFFFFFFFFFCLL;
          v335 = atomic_load(v50 + 593);
          *(v334 + 112) = v335;
          v102 = *(v334 + 64);
          if (*&v478[8 * v243] != v102)
          {
            *&v478[8 * v243] = v102;
            (*(v50 + 446))(*(v50 + 442), sel_setFragmentTexture_atIndex_);
            v50 = __n;
          }
        }

        else
        {
          v339 = CA::OGL::MetalContext::encode_placeholder_cube(v50, v293 + 12);
          v50 = __n;
          if (!v339)
          {
            return;
          }
        }
      }
    }

    ++v293;
    v295 = v468 + 1;
    v294 = &unk_1E6DFA000;
    v296 = &unk_1E6DFA000;
    if (v293 != v467)
    {
      continue;
    }

    break;
  }

  v121 = *(v482 + 14);
  if ((*(v482 + 14) & 0x4000000) != 0)
  {
    goto LABEL_515;
  }

LABEL_344:
  v276 = v121 & 0x7F;
  if ((*&CA::OGL::MetalContext::texture_function_info[8 * v276 + 6] & 0x20) != 0 || !CA::OGL::tex_image_count[v276])
  {
LABEL_517:
    if ((v121 & 0xC000000) != 0)
    {
      if (!CA::OGL::MetalContext::encode_noise_texture(v50, v92, v102, v243, v93, v94, v95, v96))
      {
        return;
      }

      v50 = __n;
      if (!CA::OGL::MetalContext::encode_noise_scale(__n, v344))
      {
        return;
      }

      v121 = *(v482 + 14);
    }

    if ((*&CA::OGL::MetalContext::texture_function_info[8 * (v121 & 0x7F) + 6] & 0x40) != 0)
    {
      v345 = CA::OGL::MetalContext::encode_edr_resolve(v50, v92);
      v50 = __n;
      if (!v345)
      {
        return;
      }

      v121 = *(v482 + 14);
    }

    if ((v121 & 0x4000000) == 0 && (BYTE2(v482[1]) & 4) == 0)
    {
      v346 = v121 & 0x7F;
      if ((*&CA::OGL::MetalContext::texture_function_info[8 * v346 + 6] & 0x80) == 0)
      {
        v347 = CA::OGL::tex_image_count[v346];
        if (!v347)
        {
          goto LABEL_565;
        }

        v348 = (v482 + 3);
        while (1)
        {
          v349 = *(v348 - 1) >> 3;
          if (v349 == 11)
          {
            break;
          }

          v350 = *v348;
          v351 = *v348 & 0x1F;
          v352 = (*v348 >> 5) & 0x1F;
          v353 = v351 == 11 || v352 == 11;
          v354 = (v350 >> 10) & 0x1F;
          v355 = v353 || v354 == 11;
          v356 = (v350 >> 15) & 0x1F;
          v357 = v355 || v356 == 11;
          v358 = (v350 >> 20) & 0x1F;
          v359 = v357 || v358 == 12;
          v360 = v359 || v356 == 12;
          v361 = v360 || v354 == 12;
          v362 = v361 || v352 == 12;
          v363 = v362 || v351 == 12;
          v364 = v363 || v349 == 12;
          if (v364 || v358 == 11)
          {
            break;
          }

          v348 = (v348 + 7);
          if (!--v347)
          {
            goto LABEL_565;
          }
        }
      }
    }

    v366 = CA::OGL::MetalContext::encode_gamma_luts(v50);
    v50 = __n;
    if (!v366)
    {
      return;
    }

    v121 = *(v482 + 14);
LABEL_565:
    if ((v121 & 0x4000000) == 0)
    {
      v367 = CA::OGL::tex_image_count[v121 & 0x7F];
      if (!CA::OGL::tex_image_count[v121 & 0x7F])
      {
        goto LABEL_573;
      }

      v368 = v482;
      while (1)
      {
        v369 = *v368;
        v368 = (v368 + 7);
        if ((CA::OGL::MetalContext::texture_filter_info[(v369 >> 9) & 0xF] & 2) != 0)
        {
          break;
        }

        if (!--v367)
        {
          goto LABEL_573;
        }
      }
    }

    v370 = CA::OGL::MetalContext::encode_asg77_weights(v50, v92);
    v50 = __n;
    if (!v370)
    {
      return;
    }

    v121 = *(v482 + 14);
LABEL_573:
    if ((v121 & 0x4000000) != 0 || (*&CA::OGL::MetalContext::texture_function_info[8 * (v121 & 0x7F) + 6] & 0x100) != 0)
    {
      CA::OGL::MetalContext::encode_fragment_data(*(v50 + 595), a12);
      v121 = *(v482 + 14);
      v50 = __n;
    }

    if ((v121 & 0x4000000) != 0 || (*&CA::OGL::MetalContext::texture_function_info[8 * (v121 & 0x7F) + 6] & 0x200) != 0)
    {
      v371 = CA::OGL::MetalContext::encode_lut_texture(v50, *(v483 + 14));
      v50 = __n;
      if (!v371)
      {
        return;
      }
    }

    v372 = *(v482 + 14);
    if ((*(v482 + 14) & 0x4000000) != 0)
    {
      v373 = 2;
    }

    else
    {
      v373 = CA::OGL::tex_image_count[BYTE14(v483[0]) & 0x7F];
    }

    v374 = *(&v482[1] + 5);
    if ((BYTE5(v482[1]) & 0x80) != 0)
    {
      v376 = CA::OGL::MetalBufferPool::alloc_vertex_arg(*(v50 + 595), 0, 4u, 4u);
      v50 = __n;
      if (v376)
      {
        *v376 = BYTE3(v483[1]) & 3 | ((BYTE4(v483[1]) & 3) << 8) | (((*(&v483[1] + 5) >> 5) & 3) << 16);
      }
    }

    else
    {
      LOBYTE(v375) = 0;
      if ((BYTE5(v482[1]) & 0x60) != 0 || (*(&v482[1] + 3) & 0x303) == 0)
      {
        goto LABEL_594;
      }
    }

    CA::OGL::MetalContext::flip_texture_matrices(v50, v373);
    if (v373 > 1 || (*(v50 + 4016) & 1) == 0 || memcmp(v50 + 3984, v50 + 3120, 16 * v373))
    {
      v377 = CA::OGL::MetalBufferPool::encode_vertex_arg(*(v50 + 595), 3, v50 + 3120, 16 * v373, 0x10u);
      v50 = __n;
      if (!v377)
      {
        return;
      }

      memcpy(__n + 3984, __n + 3120, 16 * v373);
      *(__n + 4016) = *(__n + 4016) & 0xFE | v373 & 1;
    }

    v375 = (v374 >> 7) & 1;
LABEL_594:
    if (v375 & 1) != 0 || ((0x9F10uLL >> (v374 & 0x1F)))
    {
      v378 = BYTE5(v483[1]) & 0x1F;
      if ((vminvq_u32(vceqq_f32(*(v50 + 252), *(v50 + 10))) & 0x80000000) == 0 || v378 == 8 && (vminvq_u32(vceqq_f32(*(v50 + 253), *(v50 + 11))) & 0x80000000) == 0)
      {
        v379 = CA::OGL::MetalContext::vertex_shader_type_info[3 * (BYTE5(v483[1]) & 0x1F) + 2];
        v380 = CA::OGL::MetalBufferPool::encode_vertex_arg(*(v50 + 595), 5, v50 + 160, 4 * (v379 & 0xFu), 4 * (v379 & 0xFu));
        v50 = __n;
        if (!v380)
        {
          return;
        }

        if ((0x160EFuLL >> v378))
        {
          *(__n + 1008) = 2143289344;
        }

        else
        {
          *(__n + 252) = *(__n + 10);
          if (v378 == 8)
          {
            *(__n + 253) = *(__n + 11);
          }
        }
      }
    }

    if (*(v50 + 994) != *(v50 + 166) || a11)
    {
      v381 = CA::OGL::MetalBufferPool::alloc_vertex_arg(*(v50 + 595), 2, 0x40u, 0x10u);
      v50 = __n;
      if (!v381)
      {
        return;
      }

      if (a11 || (v386 = *(__n + 171)) == 0)
      {
        v383 = *(__n + 3048);
        v384 = *(__n + 3064);
        v385 = *(__n + 3096);
        v381[2] = *(__n + 3080);
        v381[3] = v385;
        *v381 = v383;
        v381[1] = v384;
      }

      else
      {
        CA::Mat4Impl::mat4_concat(v381, v386, __n + 381, v382);
      }

      *(__n + 994) = *(__n + 166);
    }

    if ((v374 & 0x80) != 0 || (v374 & 0x60) == 0 && (*(&v482[1] + 3) & 0x202) != 0)
    {
      v387 = *(v50 + 2);
      v389 = *(v387 + 64);
      v390 = *(v387 + 72);
      v388 = (v387 + 64);
      v391 = *(v50 + 560) == v389 && *(v50 + 561) == v390;
      v392 = v391 && *(v50 + 562) == v388[2];
      if (!v392 || *(v50 + 563) != v388[3])
      {
        v394 = CA::OGL::MetalBufferPool::encode_vertex_arg(*(v50 + 595), 4, v388, 0x20u, 0x10u);
        v50 = __n;
        if (!v394)
        {
          return;
        }

        v395 = *(__n + 2);
        v396 = *(v395 + 80);
        *(__n + 280) = *(v395 + 64);
        *(__n + 281) = v396;
      }
    }

    v397 = a10;
    if (a11)
    {
      if (v464 == 3)
      {
        v398 = 1;
      }

      else
      {
        v398 = 2;
      }

      v399 = *(v50 + 171);
      v481[0] = &unk_1EF1FBC80;
      v481[1] = v50;
      v481[3] = v481;
      v400 = CA::OGL::clip_primitives(v398, a3, a10, __src, 0, a11, v399, 0, 0, v481, 1u);
      std::__function::__value_func<BOOL ()(CA::OGL::Vertex *,unsigned int)>::~__value_func[abi:nn200100](v481);
      if (!v400)
      {
        return;
      }

      ++*(v50 + 166);
      goto LABEL_679;
    }

    if (v462)
    {
      v401 = a9 + a8;
      if (a10 && v464 == 3 && v401 > a3)
      {
        v402 = CA::OGL::MetalBufferPool::alloc_vertex_arg(*(v50 + 595), 1, v462 * a3, 0x10u);
        v403 = __n;
        if (!v402)
        {
          return;
        }

        if (a3)
        {
          v404 = a3;
          do
          {
            v405 = *v397++;
            memcpy(v402, &__src[v405 * v462], v462);
            v402 += v462;
            --v404;
          }

          while (v404);
        }

        goto LABEL_677;
      }

      v403 = __n;
      if (!CA::OGL::MetalBufferPool::encode_vertex_arg(*(v50 + 595), 1, __src, v401 * v462, a7))
      {
        return;
      }
    }

    else
    {
      v406 = *(v50 + 595);
      v407 = *(__src + 4);
      v408 = *(v406 + 192);
      if (*(v406 + 72) == v407)
      {
        (*(v406 + 216))(v408, sel_setVertexBufferOffset_atIndex_, *(__src + 10), 1);
      }

      else
      {
        (*(v406 + 200))(v408, sel_setVertexBuffer_offset_atIndex_, *(__src + 4), *(__src + 10), 1);
        *(v406 + 72) = v407;
      }

      v403 = __n;
    }

    if (a10)
    {
      if (v461 != 1)
      {
        __assert_rtn("encode_draw", "ogl-metal.mm", 10287, "instance_count == 1");
      }

      v420 = *(v403 + 595);
      v421 = 2 * a3;
      if (*(v420 + 8))
      {
        if (*(v420 + 44) <= 4u)
        {
          v422 = 4;
        }

        else
        {
          v422 = *(v420 + 44);
        }

        v423 = *(v420 + 24);
        v424 = *(v420 + 28);
        v425 = (v422 + v423 - 1) & -v422;
        _CF = v424 != v425 && v424 >= v425 + v421;
        if (!_CF && v423)
        {
          CA::OGL::MetalBufferPool::retire_metal_buffer(v420);
        }
      }

      else
      {
        buffer = CA::OGL::MetalBufferPool::allocate_buffer(v420, v421);
        *(v420 + 8) = buffer;
        if (!buffer)
        {
          return;
        }

        ++*(v420 + 40);
        *(v420 + 32) = [buffer contents];
        v425 = 0;
        *(v420 + 28) = [*(v420 + 8) length];
      }

      memcpy((*(v420 + 32) + v425), a10, v421);
      *(v420 + 24) = v425 + v421;
      (*(v420 + 232))(*(v420 + 192), sel_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_, v464, a3, 0, *(v420 + 8), v425);
      goto LABEL_678;
    }

LABEL_677:
    (*(v403 + 449))(*(v403 + 442), sel_drawPrimitives_vertexStart_vertexCount_instanceCount_, v464, 0, a3, v461);
LABEL_678:
    v50 = __n;
LABEL_679:
    v428.i32[0] = 1;
    v428.i32[1] = a3;
    *(v50 + 157) = vadd_s32(*(v50 + 1256), v428);
    if ((v372 & 0x4000000) != 0)
    {
      ++*(v50 + 319);
    }

    if (byte_1ED4E9879 == 1)
    {
      if (x_log_get_metal_trace(void)::once != -1)
      {
        dispatch_once(&x_log_get_metal_trace(void)::once, &__block_literal_global_13_8335);
      }

      v50 = __n;
      v453 = *(__n + 159);
      if (v453)
      {
        v454 = x_log_get_metal_trace(void)::log;
        if (os_signpost_enabled(x_log_get_metal_trace(void)::log))
        {
          v455 = CA::OGL::MetalContext::TextureFunction_codes[BYTE14(v483[0]) & 0x7F];
          LODWORD(v491[0]) = 136446466;
          *(v491 + 4) = v455;
          WORD6(v491[0]) = 1026;
          *(v491 + 14) = a3;
          _os_signpost_emit_with_name_impl(&dword_183AA6000, v454, OS_SIGNPOST_EVENT, v453, "Draw", "ID is update texture_function=%{public,name=texture_function}s draw_count=%{public,name=draw_count}d", v491, 0x12u);
        }
      }
    }

    CA::OGL::Context::marked_destination(v50);
    return;
  }

  v277 = 0;
  v121 = *(v482 + 14);
  v278 = v482;
  while (1)
  {
    v279 = *v278;
    v278 = (v278 + 7);
    if (((0x42000FFFE00uLL >> v279) & 1) == 0)
    {
      break;
    }

    if (++v277 >= CA::OGL::tex_image_count[BYTE14(v482[0]) & 0x7F])
    {
      goto LABEL_517;
    }
  }

LABEL_515:
  v343 = CA::OGL::MetalContext::encode_lod_bias(v50, v483);
  v50 = __n;
  if (v343)
  {
    v121 = *(v482 + 14);
    goto LABEL_517;
  }
}