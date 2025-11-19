uint64_t CA::WindowServer::IOMFBDisplay::update_framebuffer_color_properties(uint64_t this, __int16 a2)
{
  v3 = this;
  if ((a2 & 8) != 0)
  {
    this = IOMobileFramebufferEnableDisableVideoPowerSavings();
  }

  if ((a2 & 0x20) != 0 && (*(v3 + 672) & 0x1C00) != 0x800)
  {
    this = IOMobileFramebufferSetContrast();
  }

  if ((a2 & 0x10) != 0)
  {
    this = IOMobileFramebufferSetColorRemapMode();
  }

  if ((a2 & 0x100) != 0)
  {

    return IOMobileFramebufferSetBrightnessCorrection();
  }

  return this;
}

uint64_t CA::WindowServer::IOMFBDisplay::swap_set_layer(CA::WindowServer::IOMFBDisplay *this, CA::Render::Update *a2, uint64_t a3, CA::WindowServer::Surface *a4, const CA::Rect *a5, uint64_t a6, unsigned int a7, unsigned int a8, _BYTE *a9, BOOL *a10)
{
  v107 = *MEMORY[0x1E69E9840];
  v19 = (*(*this + 1888))(this) ^ 1 | byte_1ED4E9840;
  if (a3)
  {
    v86 = a8;
    v87 = a7;
    v88 = a5;
    v89 = a4;
    v20 = (this + 27560);
    if (v19)
    {
      v21 = *(a3 + 236);
      v22 = *(this + 3212);
      if (init_iomfb(void)::once != -1)
      {
        dispatch_once(&init_iomfb(void)::once, &__block_literal_global_14192);
      }

      if (iomfb_swap_set_layer_edr_compensation_f)
      {
        iomfb_swap_set_layer_edr_compensation_f(v22, a2, (v21 >> 38) & 1, 2.22);
      }

      v23 = 1 << a2;
      goto LABEL_71;
    }

    v25 = (*(*a3 + 88))(a3);
    cf = v25;
    if (!v25)
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v26 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_183AA6000, v26, OS_LOG_TYPE_DEBUG, "source surface has no colorspace, setting to sRGB", buf, 2u);
      }

      v25 = CAGetColorSpace(36);
      cf = v25;
    }

    if (CACGColorSpaceIsRec709(v25))
    {
      CA::WindowServer::Display::display_attributes(buf, this);
      if (DWORD1(v103) == 2 || DWORD1(v103) == 6 && (CA::WindowServer::Display::display_attributes(buf, this), (BYTE14(v102) & 1) != 0))
      {
        v27 = 1;
        v28 = 26;
      }

      else
      {
        v27 = 0;
        v28 = 36;
      }

      v29 = CAGetColorSpace(v28);
      cf = v29;
    }

    else
    {
      v27 = 0;
      v29 = cf;
    }

    if (CACGColorSpaceIsRec601NTSC(v29) & 1) != 0 || (CACGColorSpaceIsRec601PAL(cf))
    {
      CA::WindowServer::Display::display_attributes(buf, this);
      if (DWORD1(v103) == 6)
      {
        CA::WindowServer::Display::display_attributes(buf, this);
        if ((BYTE14(v102) & 1) == 0)
        {
LABEL_30:
          v30 = CAGetColorSpace(36);
          v27 = 0;
          cf = v30;
          goto LABEL_37;
        }
      }

      else if (!v27)
      {
        goto LABEL_30;
      }

      if (CACGColorSpaceIsRec601NTSC(cf))
      {
        v31 = 31;
      }

      else
      {
        v31 = 32;
      }

      v30 = CAGetColorSpace(v31);
      cf = v30;
      v27 = 1;
    }

    else
    {
      v30 = cf;
    }

LABEL_37:
    if (v30 == CAGetColorSpace(11) || CGColorSpaceEqualToColorSpaceIgnoringRange())
    {
      CA::WindowServer::Display::display_attributes(buf, this);
      if ((BYTE14(v102) & 1) == 0)
      {
        cf = CAGetColorSpace(38);
      }
    }

    CA::WindowServer::IOMFBDisplay::set_tonemapping_state(this, a3, a2, &cf, v32);
    v33 = (*(a3 + 240) & 4) != 0 && ((*(*a3 + 136))(a3) & 1) == 0 && byte_1ED4E9803 == 0;
    v34 = v33 & CA::WindowServer::Display::all_clones_support_edr_fixup(this);
    if (!cf || cf == *(this + a2 + 3439))
    {
      v35 = 0;
    }

    else
    {
      v35 = CGColorSpaceEqualToColorSpaceIgnoringRange() ^ 1;
    }

    v36 = *(this + 6892);
    v23 = 1 << a2;
    if (v34 != ((v36 >> a2) & 1))
    {
      *(this + 6892) = v36 ^ v23;
      v35 = 1;
    }

    if (v34 && (*(*a3 + 200))(a3) != *(this + a2 + 6886))
    {
      v35 = 1;
    }

    v37 = CA::WindowServer::IOMFBDisplay::color_program_cache(this);
    v38 = v37;
    v39 = *v20;
    if ((v27 | BYTE11(xmmword_1ED4E982C)))
    {
      LOBYTE(v40) = 1;
      if ((v39 >> a2))
      {
        goto LABEL_56;
      }
    }

    else
    {
      v40 = (*(this + 906) >> 1) & 1;
      if (v40 == ((v39 >> a2) & 1))
      {
LABEL_56:
        v37[83] = v40;
        if (!v35)
        {
LABEL_68:
          if (v34)
          {
            *(this + a2 + 6886) = (*(*a3 + 200))(a3);
          }

          a5 = v88;
LABEL_71:
          v47 = (*(*a3 + 168))(a3);
          if (v47)
          {
            v48 = (a2 & 0xFFFFFFFD) == 0;
          }

          else
          {
            v48 = 0;
          }

          if (v48)
          {
            a6 = a6 | 0x200;
          }

          else
          {
            a6 = a6;
          }

          if (initialized[0] != -1)
          {
            dispatch_once_f(initialized, 0, init_debug);
          }

          v49 = v23 & *&dword_1ED4E976C;
          if (*(this + 29584) != 1 || *(this + 29585) == 1 && *(this + 29586) == 1)
          {
            if (!v49)
            {
              if (a9)
              {
                *a9 = 0;
              }

              v50 = v89;
              if (byte_1ED4E987C == 1)
              {
                if (x_log_get_sharedevent(void)::once != -1)
                {
                  dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
                }

                v74 = x_log_get_sharedevent(void)::log;
                if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_DEBUG))
                {
                  v75 = (*(*a3 + 168))(a3);
                  ID = IOSurfaceGetID(v75);
                  v77 = *(a3 + 16);
                  *buf = 67109632;
                  *&buf[4] = ID;
                  *&buf[8] = 1024;
                  *&buf[10] = a2;
                  *&buf[14] = 2048;
                  *&v100 = v77;
                  _os_log_debug_impl(&dword_183AA6000, v74, OS_LOG_TYPE_DEBUG, "IOSurfaceID: 0x%x  layer: %d  SharedEvent: %p", buf, 0x18u);
                }
              }

              v51 = *(a3 + 16);
              if (v51 && *(v51 + 32))
              {
                if (a2 > 3)
                {
                  v52 = 0;
                }

                else
                {
                  v52 = dword_183E21980[a2];
                }

                CA::CASharedEvent::get_wait_value(*(a3 + 16), v52, 1);
                v62 = IOMobileFramebufferSwapSetEventWait();
                if (v62)
                {
                  v63 = v62;
                  if (x_log_get_sharedevent(void)::once != -1)
                  {
                    dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
                  }

                  v64 = x_log_get_sharedevent(void)::log;
                  if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_ERROR))
                  {
                    v71 = (*(*a3 + 168))(a3);
                    v72 = IOSurfaceGetID(v71);
                    v73 = *(a3 + 16);
                    *buf = 67109888;
                    *&buf[4] = v72;
                    *&buf[8] = 1024;
                    *&buf[10] = a2;
                    *&buf[14] = 2048;
                    *&v100 = v73;
                    WORD4(v100) = 1024;
                    *(&v100 + 10) = v63;
                    _os_log_error_impl(&dword_183AA6000, v64, OS_LOG_TYPE_ERROR, "IOSurfaceID: 0x%x  layer: %d  SharedEvent: %p wait returned error: %x", buf, 0x1Eu);
                  }
                }

                CA::CASharedEvent::inc_signal_value(v51, v52, 1);
                v65 = IOMobileFramebufferSwapSetEventSignal();
                if (v65)
                {
                  v66 = v65;
                  v50 = v89;
                  if (x_log_get_sharedevent(void)::once != -1)
                  {
                    dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
                  }

                  v67 = x_log_get_sharedevent(void)::log;
                  if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_ERROR))
                  {
                    v68 = (*(*a3 + 168))(a3);
                    v69 = IOSurfaceGetID(v68);
                    v70 = *(a3 + 16);
                    *buf = 67109888;
                    *&buf[4] = v69;
                    *&buf[8] = 1024;
                    *&buf[10] = a2;
                    *&buf[14] = 2048;
                    *&v100 = v70;
                    WORD4(v100) = 1024;
                    *(&v100 + 10) = v66;
                    _os_log_error_impl(&dword_183AA6000, v67, OS_LOG_TYPE_ERROR, "IOSurfaceID: 0x%x  layer: %d  SharedEvent: %p signal returned error: %x", buf, 0x1Eu);
                  }
                }

                else
                {
                  v50 = v89;
                  if (a9)
                  {
                    *a9 = 1;
                  }
                }
              }

              v56 = *(this + 6);
              v83 = v86;
              v57 = (this + 25696);
              v58 = a2;
              v59 = v47;
              v60 = v50;
              v61 = v88;
              return CA::WindowServer::IOMFBDisplay::fb_swap_set_layer(v56, v57, v58, v59, v60, v61, a6, v87, v83);
            }
          }

          else if (!v49)
          {
            if (x_log_get_windowserver(void)::once != -1)
            {
              dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
            }

            v53 = x_log_get_windowserver(void)::log;
            if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              v54 = *(this + 29585);
              v55 = *(this + 29586);
              *buf = 67109376;
              *&buf[4] = v54;
              *&buf[8] = 1024;
              *&buf[10] = v55;
              _os_log_impl(&dword_183AA6000, v53, OS_LOG_TYPE_DEFAULT, "DBVFlashWorkaround: removing layer due to seen_brightness %i, swapped_brightness %i", buf, 0xEu);
            }
          }

          v56 = *(this + 6);
          v83 = v86;
          v57 = (this + 25696);
          v58 = a2;
          v59 = 0;
          v60 = v89;
          v61 = a5;
          return CA::WindowServer::IOMFBDisplay::fb_swap_set_layer(v56, v57, v58, v59, v60, v61, a6, v87, v83);
        }

LABEL_60:
        if (BYTE13(xmmword_1ED4E982C) == 1)
        {
          v79 = CGColorSpaceCopyICCProfileDescription();
          if (v79)
          {
            v80 = v79;
            v105 = 0u;
            v106 = 0u;
            v104 = 0u;
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            *buf = 0u;
            if (x_log_get_color(void)::once != -1)
            {
              dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
            }

            v81 = x_log_get_color(void)::log;
            if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              v85 = *(this + 6);
              CString = CA_CFStringGetCString(v80, buf, 128);
              v82 = (*(*a3 + 200))(a3);
              *v91 = 67109890;
              v92 = v85;
              v93 = 1024;
              v94 = a2;
              v95 = 2080;
              v96 = CString;
              v97 = 2048;
              v98 = v82;
              _os_log_impl(&dword_183AA6000, v81, OS_LOG_TYPE_DEFAULT, "Display %u setting IOMFB source layer %u colorspace to '%s' with EDR factor: %g", v91, 0x22u);
            }

            CFRelease(v80);
          }
        }

        v41 = CAGetColorSpace(37);
        CA::ColorProgram::Cache::set_colorspace(v38, v41);
        v42 = CA::ColorProgram::Cache::lookup(v38, cf, 0, 0);
        if (v42)
        {
          v43 = v42;
          v44 = 1.0;
          if (v34)
          {
            v44 = (*(*a3 + 200))(a3, 1.0);
          }

          CA::WindowServer::IOMFBDisplay::set_icc_matrix_and_trc(this, v43, 0, 0, a2, v44);
          X::CFRef<CGColorSpace *>::operator=(this + a2 + 3439, cf);
        }

        if ((*(this + 905) & 2) != 0)
        {
          v45 = (*(*this + 1856))(this);
          CA::ColorProgram::Cache::set_colorspace(v38, v45);
          v46 = CA::ColorProgram::Cache::lookup(v38, v41, 0, 0);
          if (v46)
          {
            CA::WindowServer::IOMFBDisplay::set_icc_matrix_and_trc(this, v46, 1u, 1u, 0xFFFFFFFF, 1.0);
          }
        }

        goto LABEL_68;
      }
    }

    *v20 = v39 ^ v23;
    v37[83] = v40;
    goto LABEL_60;
  }

  if ((v19 & 1) == 0)
  {
    CA::WindowServer::IOMFBDisplay::set_tonemapping_state(this, 0, a2, 0, v18);
  }

  if (byte_1ED4E987C == 1)
  {
    if (x_log_get_sharedevent(void)::once != -1)
    {
      dispatch_once(&x_log_get_sharedevent(void)::once, &__block_literal_global_16251);
    }

    v78 = x_log_get_sharedevent(void)::log;
    if (os_log_type_enabled(x_log_get_sharedevent(void)::log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = a2;
      _os_log_debug_impl(&dword_183AA6000, v78, OS_LOG_TYPE_DEBUG, "layer: %d  surface: nullptr", buf, 8u);
    }
  }

  return CA::WindowServer::IOMFBDisplay::fb_swap_set_layer(*(this + 6), (this + 25696), a2, 0, a4, a5, a6, a7, a8);
}

void CA::WindowServer::IOMFBDisplay::set_tonemapping_state(CA::WindowServer::IOMFBDisplay *this, CA::Render::Update *a2, const CA::WindowServer::Surface *a3, uint64_t a4, CGColorSpace **a5)
{
  v28 = *MEMORY[0x1E69E9840];
  if (CA::WindowServer::IOMFBDisplay::set_tonemapping_state(CA::Render::Update *,CA::WindowServer::Surface const*,unsigned int,CGColorSpace **)::identity_once != -1)
  {
    dispatch_once(&CA::WindowServer::IOMFBDisplay::set_tonemapping_state(CA::Render::Update *,CA::WindowServer::Surface const*,unsigned int,CGColorSpace **)::identity_once, &__block_literal_global_59);
  }

  v9 = *(this + 6);
  if (a2 && (*(a2 + 240) & 0x20) != 0 && *(a2 + 11) && ((*(*a2 + 40))(a2) == 18 || (*(*a2 + 40))(a2) == 16))
  {
    v10 = *(this + 6891);
    if ((v10 & (1 << a3)) == 0)
    {
      *(this + 6891) = v10 ^ (1 << a3);
    }

    if ((*(*a2 + 88))(a2))
    {
      v11 = (*(*a2 + 168))(a2);
      v12 = (*(*a2 + 88))(a2);
      CA::Render::iosurface_set_bulk_from_colorspace(v11, v12, v13, v14);
    }

    v15 = *(a2 + 11);
    v16 = (*(*a2 + 168))(a2);
    v17 = *(a2 + 58);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 0x40000000;
    v25[2] = ___ZN2CA12WindowServer12IOMFBDisplay21set_tonemapping_stateEPNS_6Render6UpdateEPKNS0_7SurfaceEjPP12CGColorSpace_block_invoke_2;
    v25[3] = &__block_descriptor_tmp_61_22546;
    v25[4] = this;
    v26 = a3;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 0x40000000;
    v22[2] = ___ZN2CA12WindowServer12IOMFBDisplay21set_tonemapping_stateEPNS_6Render6UpdateEPKNS0_7SurfaceEjPP12CGColorSpace_block_invoke_3;
    v22[3] = &__block_descriptor_tmp_63;
    v22[4] = this;
    v23 = v9;
    v24 = a3;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 0x40000000;
    v19[2] = ___ZN2CA12WindowServer12IOMFBDisplay21set_tonemapping_stateEPNS_6Render6UpdateEPKNS0_7SurfaceEjPP12CGColorSpace_block_invoke_64;
    v19[3] = &__block_descriptor_tmp_66;
    v19[4] = this;
    v20 = v9;
    v21 = a3;
    (*(*v15 + 32))(v15, v16, a3, a2 + 96, a4, v25, v22, v19, v17);
  }

  else
  {
    v18 = *(this + 6891);
    if ((v18 & (1 << a3)) != 0)
    {
      *(this + 6891) = v18 ^ (1 << a3);
      memset(v27, 0, sizeof(v27));
      IOMobileFramebufferSwapSetToneMapConfig();
      CA::WindowServer::IOMFBDisplay::swap_set_icc_curve(this, 3, v9, a3, 7, &CA::WindowServer::IOMFBDisplay::set_tonemapping_state(CA::Render::Update *,CA::WindowServer::Surface const*,unsigned int,CGColorSpace **)::bypass_curve);
      CA::WindowServer::IOMFBDisplay::swap_set_icc_curve(this, 7, v9, a3, 7, &CA::WindowServer::IOMFBDisplay::set_tonemapping_state(CA::Render::Update *,CA::WindowServer::Surface const*,unsigned int,CGColorSpace **)::bypass_curve);
      CA::WindowServer::IOMFBDisplay::swap_set_icc_curve(this, 6, v9, a3, 7, &CA::WindowServer::IOMFBDisplay::set_tonemapping_state(CA::Render::Update *,CA::WindowServer::Surface const*,unsigned int,CGColorSpace **)::bypass_curve);
      CA::WindowServer::IOMFBDisplay::swap_set_icc_curve(this, 11, v9, a3, 7, &CA::WindowServer::IOMFBDisplay::set_tonemapping_state(CA::Render::Update *,CA::WindowServer::Surface const*,unsigned int,CGColorSpace **)::bypass_curve);
      CA::WindowServer::IOMFBDisplay::swap_set_icc_matrix(this, 2, v9, a3, &CA::WindowServer::IOMFBDisplay::set_tonemapping_state(CA::Render::Update *,CA::WindowServer::Surface const*,unsigned int,CGColorSpace **)::identity_matrix);
      CA::WindowServer::IOMFBDisplay::swap_set_icc_matrix(this, 3, v9, a3, &CA::WindowServer::IOMFBDisplay::set_tonemapping_state(CA::Render::Update *,CA::WindowServer::Surface const*,unsigned int,CGColorSpace **)::identity_matrix);
    }
  }
}

char *CA::WindowServer::IOMFBDisplay::color_program_cache(CA::WindowServer::IOMFBDisplay *this)
{
  v1 = *(this + 3447);
  if (!v1)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v1 = malloc_type_zone_malloc(malloc_zone, 0x70uLL, 0x165299FDuLL);
    if (v1)
    {
      v3 = CAGetColorSpace(36);
      CA::ColorProgram::Cache::Cache(v1, v3);
      *(this + 3447) = v1;
      *(v1 + 92) = 0x180000000ELL;
      if ((v1[82] & 1) == 0)
      {
        v1[82] = 1;
      }

      *(v1 + 83) = 1;
      v1[85] = 0;
    }

    else
    {
      *(this + 3447) = 0;
    }
  }

  return v1;
}

void CA::WindowServer::IOMFBDisplay::set_icc_matrix_and_trc(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, float a6)
{
  v7 = a5;
  v8 = a4;
  v126 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 48);
  if (a3 > 1)
  {
    v10 = a5 == -1;
    if (a4 < 2 && v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 1;
    }

    if (a4 > 1)
    {
      v7 = 0;
      v11 = 1;
    }
  }

  else
  {
    v10 = a5 == -1;
    if (a5 == -1)
    {
      v11 = 3;
    }

    else
    {
      v11 = 1;
    }
  }

  v95 = a4 == 15 && CA::WindowServer::Display::Mode::is_hdr((a1 + 656));
  v12 = &CA::OGL::MetalContext::get_pipeline_queue(void)::once;
  v13 = *(a2 + 36) & 0x7FFFFFFF;
  v100 = v10;
  if ((*(a2 + 36) & 0x7FFFFFFF) != 0)
  {
    v14 = 0;
    v15 = *(a1 + 24);
    v16 = 1065353216 - LODWORD(a6);
    if (LODWORD(a6) - 1065353216 >= 0)
    {
      v16 = LODWORD(a6) - 1065353216;
    }

    v105 = v16 < 4;
    v103 = v8;
    v98 = v11;
    v99 = v7;
    v107 = a6;
    while (1)
    {
      v111 = v14;
      while (1)
      {
        v17 = v13 & 0x1F;
        v97 = v13;
        if (v17 > 0x10)
        {
          goto LABEL_32;
        }

        if (v17 != 1)
        {
          break;
        }

        v18 = 0;
        *&__src[8] = 0;
        *__src = 0;
        v19 = *(v9 + 16);
        *&__src[12] = *v9;
        LODWORD(__s1) = v19;
        v20 = *(v9 + 36);
        HIDWORD(__s1) = *(v9 + 32);
        v119 = *(v9 + 4);
        v120 = *(v9 + 20);
        v121[0] = v20;
        v121[1] = *(v9 + 8);
        LODWORD(v21) = *(v9 + 24);
        DWORD1(v21) = *(v9 + 40);
        *(&v21 + 1) = *(v9 + 48);
        v122 = v21;
        v22 = v9;
        v123 = *(v9 + 56);
        do
        {
          if (v10)
          {
            v23 = v18;
          }

          else
          {
            v23 = v7;
          }

          v24 = CA::WindowServer::IOMFBDisplay::swap_set_icc_matrix(a1, a3, v15, v23, __src);
          if (v24)
          {
            v25 = v24;
            if (x_log_get_color(void)::once != -1)
            {
              dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
            }

            v26 = x_log_get_color(void)::log;
            if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v114 = v25;
              _os_log_error_impl(&dword_183AA6000, v26, OS_LOG_TYPE_ERROR, "Failed to set ICC matrix, error = 0x%X", buf, 8u);
            }
          }

          ++v18;
        }

        while (v11 != v18);
        v12 = &CA::OGL::MetalContext::get_pipeline_queue(void)::once;
LABEL_36:
        v9 = v22 + 16 * CA::ColorProgram::kOpcodeParamCount[v17];
        v13 = v97 >> 5;
        if (v97 < 0x20)
        {
          if (v111)
          {
            return;
          }

          goto LABEL_178;
        }
      }

      v106 = v13 & 0x1F;
      if (((1 << v17) & 0x180FC) == 0)
      {
LABEL_32:
        v22 = v9;
        if (v12[438] != -1)
        {
          dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
        }

        v27 = x_log_get_color(void)::log;
        if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_ERROR))
        {
          *__src = 67109120;
          *&__src[4] = v17;
          _os_log_error_impl(&dword_183AA6000, v27, OS_LOG_TYPE_ERROR, "Unexpected opcode %d for blending space", __src, 8u);
        }

        goto LABEL_36;
      }

      v28 = v13 & 0x1F;
      bzero(__src, 0x648uLL);
      v29 = 0;
      v30 = CA::ColorProgram::kOpcodeParamCount[v13 & 0x1F];
      v31 = v9;
      do
      {
        if ((v13 & 0x1F) > 5)
        {
          if ((v13 & 0x1F) > 0xE)
          {
            if (v28 == 15)
            {
              *&__src[v29] = 7;
            }

            else if (v28 == 16)
            {
              *&__src[v29] = 6;
            }

            goto LABEL_73;
          }

          if (v28 != 6)
          {
            if (v28 == 7)
            {
              v33 = *(a2 + 64);
              v34 = (*v31 * *(v33 + 16));
              v35 = *(v33 + 176);
              v36 = (*(v31 + 16) * *(a2 + 56));
              v37 = &__src[v29];
              *v37 = 8;
              *(v37 + 2) = v34;
              *(v37 + 3) = 1065353216;
              *(v37 + 2) = *(v33 + 112) + v35 * v36;
            }

            goto LABEL_73;
          }

          v32 = 5;
        }

        else if ((v13 & 0x1F) > 3)
        {
          if (v28 == 4)
          {
            v32 = 3;
          }

          else
          {
            v32 = 4;
          }
        }

        else if (v28 == 2)
        {
          v32 = 1;
        }

        else
        {
          if (v28 != 3)
          {
            goto LABEL_73;
          }

          v32 = 2;
        }

        *&__src[v29] = v32;
        if (v30 > 3)
        {
          if (v30 > 5)
          {
            if (v30 != 6)
            {
              if (v30 != 7)
              {
                goto LABEL_73;
              }

              v121[v29 / 4] = *(v31 + 96);
            }

            *&v121[v29 / 4 - 1] = *(v31 + 80);
LABEL_68:
            *(&v119 + v29) = *(v31 + 64);
          }

          else if (v30 != 4)
          {
            goto LABEL_68;
          }

          *(&__s1 + v29 + 4) = *(v31 + 48);
LABEL_70:
          *&__src[v29 + 16] = *(v31 + 32);
LABEL_71:
          *&__src[v29 + 12] = *(v31 + 16);
LABEL_72:
          *&__src[v29 + 8] = *v31;
          goto LABEL_73;
        }

        switch(v30)
        {
          case 1:
            goto LABEL_72;
          case 2:
            goto LABEL_71;
          case 3:
            goto LABEL_70;
        }

LABEL_73:
        v29 += 536;
        v31 += 4;
      }

      while (v29 != 1608);
      v96 = v9;
      if (v95)
      {
        v38 = 6;
        *__src = 6;
        v124 = 6;
        v125 = 6;
        v39 = 6;
LABEL_80:
        v40 = 0;
        v41 = *&__src[8];
        v42 = *&__src[12];
        v43 = __s1;
        v44 = v119;
        v45 = v120;
        v46 = *v121;
        v47 = *&__src[8];
        v48 = __s1;
        v49 = 4 * *&__src[8];
        v50 = &v124;
        while (1)
        {
          v51 = v40;
          if (v39 > 3)
          {
            if (v39 == 4)
            {
              if (v41 != *(v50 + 2) || v42 != *(v50 + 3) || *&v43 != *(v50 + 4) || *(&v43 + 1) != *(v50 + 5) || v44 != *(v50 + 6))
              {
                goto LABEL_118;
              }
            }

            else if (v39 == 5)
            {
              if (v41 != *(v50 + 2) || v42 != *(v50 + 3) || *&v43 != *(v50 + 4) || *(&v43 + 1) != *(v50 + 5) || v44 != *(v50 + 6) || v45 != *(v50 + 7) || v46 != *(v50 + 8))
              {
                goto LABEL_118;
              }
            }

            else if (v39 == 8 && (v50[2] != v47 || v42 != *(v50 + 3) || !memcmp(v48, *(v50 + 2), v49)))
            {
              goto LABEL_118;
            }
          }

          else if (v39 == 1)
          {
            if (v41 != *(v50 + 2))
            {
              goto LABEL_118;
            }
          }

          else if (v39 == 2)
          {
            if (v41 != *(v50 + 2) || v42 != *(v50 + 3) || *&v43 != *(v50 + 4))
            {
              goto LABEL_118;
            }
          }

          else if (v39 == 3 && (v41 != *(v50 + 2) || v42 != *(v50 + 3) || *&v43 != *(v50 + 4) || *(&v43 + 1) != *(v50 + 5)))
          {
            goto LABEL_118;
          }

          v40 = 1;
          v50 = &v125;
          if (v51 & 1 | (v39 != v38))
          {
            goto LABEL_119;
          }
        }
      }

      v39 = *__src;
      if (*__src == v124)
      {
        v38 = v125;
        goto LABEL_80;
      }

LABEL_118:
      v51 = 0;
LABEL_119:
      v52 = 0;
      v8 = v103;
      v12 = &CA::OGL::MetalContext::get_pipeline_queue(void)::once;
      v53 = &CA::OGL::MetalContext::get_pipeline_queue(void)::once;
      v54 = 1.0;
      while (2)
      {
        v55 = 0;
        v101 = v52;
        if (v10)
        {
          v56 = v52;
        }

        else
        {
          v56 = v99;
        }

        while (2)
        {
          if (v51)
          {
            v57 = 7;
          }

          else
          {
            v57 = 1 << v55;
          }

          if (a6 != v54)
          {
            v62 = v105;
            if (a6 < 0.0)
            {
              v62 = 0;
            }

            if (v106 != 7 && !v62)
            {
              v63 = 0.0;
              if (*(a2 + 16) && CGColorSpaceCreateConversionCurve())
              {
                v63 = MEMORY[0x1865E7A90]();
                CGColorCurveRelease();
              }

              if (v8)
              {
                __assert_rtn("set_icc_matrix_and_trc", "windowserver-iomfb-display.cpp", 19819, "curve_loc == IOMFBCurveLoc_Src2XYZ");
              }

              v64 = powf(a6, v54 / v63);
              v65 = malloc_type_calloc(4uLL, 0x280uLL, 0x100004052888210uLL);
              v67 = 0;
              v68 = v64;
              v69 = &__src[536 * v55];
              v71 = *(v69 + 2);
              v70 = *(v69 + 3);
              v73 = *(v69 + 4);
              v72 = *(v69 + 5);
              v74 = *(v69 + 6);
              v75 = *v69;
              v109 = -v73 / v70;
              v110 = 1.0 / v68;
              while (1)
              {
                v66.i32[1] = HIDWORD(v110);
                v76 = v67 * 0.00196078424 * v110;
                *v66.i32 = v76;
                v77 = fabsf(*v66.i32);
                if (v75 <= 3)
                {
                  break;
                }

                if (v75 <= 5)
                {
                  if (v75 == 4)
                  {
                    v112 = v66;
                    *v81.i32 = powf(v73 + (v70 * v77), v71);
                    v82 = v72 * v77;
                  }

                  else
                  {
                    v78 = v74;
                    v79 = *(v69 + 7);
                    v80 = *(v69 + 8);
                    v112 = v66;
                    *v81.i32 = v79 + powf(v73 + (v70 * v77), v71);
                    v74 = v78;
                    v82 = v80 + (v72 * v77);
                    a6 = v107;
                  }

                  v87 = v77 < v74;
                  goto LABEL_167;
                }

                if (v75 == 6)
                {
                  v88 = pow(*v66.i32, 0.159302);
                  v85 = (v88 * 18.8515625 + 0.8359375) / (v88 * 18.6875 + 1.0);
                  v86 = 78.844;
                  goto LABEL_165;
                }

                if (v75 != 7)
                {
                  goto LABEL_161;
                }

                v83 = 0.0;
                if (*v66.i32 != 0.0)
                {
                  v84 = pow(*v66.i32, 0.0126833135);
                  v85 = (v84 + -0.8359375) / (v84 * -18.6875 + 18.8515625);
                  v86 = 6.2774;
LABEL_165:
                  v83 = powf(v85, v86);
                }

LABEL_171:
                v65[v67++] = v83 * a6;
                if (v67 == 640)
                {
                  bzero(buf, 0x218uLL);
                  *buf = 8;
                  v115 = 0x3FA0606000000280;
                  v116 = v65;
                  v58 = CA::WindowServer::IOMFBDisplay::swap_set_icc_curve(a1, 0, v15, v56, v57, buf);
                  free(v65);
                  v8 = v103;
                  v12 = &CA::OGL::MetalContext::get_pipeline_queue(void)::once;
                  v53 = &CA::OGL::MetalContext::get_pipeline_queue(void)::once;
                  v54 = 1.0;
                  if (!v58)
                  {
                    goto LABEL_132;
                  }

                  goto LABEL_128;
                }
              }

              switch(v75)
              {
                case 1:
                  v112 = v66;
                  *v81.i32 = powf(v77, v71);
                  goto LABEL_170;
                case 2:
                  v112 = v66;
                  *v81.i32 = powf(v73 + (v70 * v77), v71);
                  v87 = v77 < v109;
                  v82 = 0.0;
LABEL_167:
                  if (v87)
                  {
                    *v81.i32 = v82;
                  }

LABEL_170:
                  v66.i64[0] = 0x8000000080000000;
                  v66.i64[1] = 0x8000000080000000;
                  LODWORD(v83) = vbslq_s8(v66, v81, v112).u32[0];
                  goto LABEL_171;
                case 3:
                  v112 = v66;
                  *v81.i32 = powf(v73 + (v70 * v77), v71) + v72;
                  if (v77 < v109)
                  {
                    *v81.i32 = v72;
                  }

                  goto LABEL_170;
              }

LABEL_161:
              v83 = v76;
              goto LABEL_171;
            }
          }

          v58 = CA::WindowServer::IOMFBDisplay::swap_set_icc_curve(a1, v8, v15, v56, v57, &__src[536 * v55]);
          if (!v58)
          {
            goto LABEL_132;
          }

LABEL_128:
          if (v12[438] != -1)
          {
            dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
          }

          v59 = v53[439];
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v114 = v58;
            _os_log_error_impl(&dword_183AA6000, v59, OS_LOG_TYPE_ERROR, "Failed to set ICC curve, error = 0x%X", buf, 8u);
          }

LABEL_132:
          v61 = v55++ > 1;
          if (((v51 | v61) & 1) == 0)
          {
            continue;
          }

          break;
        }

        v10 = v100;
        v52 = v101 + 1;
        v11 = v98;
        if (v101 + 1 != v98)
        {
          continue;
        }

        break;
      }

      v9 = v96 + 16 * CA::ColorProgram::kOpcodeParamCount[v106];
      v13 = v97 >> 5;
      v14 = 1;
      v7 = v99;
      if (v97 < 0x20)
      {
        return;
      }
    }
  }

LABEL_178:
  if (v95)
  {
    v89 = 6;
  }

  else
  {
    v89 = 0;
  }

  bzero(__src, 0x218uLL);
  v90 = 0;
  *__src = v89;
  do
  {
    if (v10)
    {
      v91 = v90;
    }

    else
    {
      v91 = v7;
    }

    v92 = CA::WindowServer::IOMFBDisplay::swap_set_icc_curve(a1, v8, *(a1 + 24), v91, 7, __src);
    if (v92)
    {
      v93 = v92;
      if (x_log_get_color(void)::once != -1)
      {
        dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
      }

      v94 = x_log_get_color(void)::log;
      if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v114 = v93;
        _os_log_error_impl(&dword_183AA6000, v94, OS_LOG_TYPE_ERROR, "Failed to set ICC curve, error = 0x%X", buf, 8u);
      }
    }

    ++v90;
    v10 = v100;
  }

  while (v11 != v90);
}

uint64_t CA::WindowServer::IOMFBDisplay::swap_set_icc_matrix(uint64_t a1, signed int a2, int a3, unsigned int a4, __int128 *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2 <= 7 && a4 <= 2)
  {
    v5 = *(a1 + 24 * a2 + 8 * a4 + 28040);
    if (!v5)
    {
      operator new();
    }

    v6 = *a5;
    v7 = a5[1];
    v8 = a5[2];
    *(v5 + 44) = *(a5 + 44);
    v5[1] = v7;
    v5[2] = v8;
    *v5 = v6;
  }

  if (BYTE13(xmmword_1ED4E982C) == 1)
  {
    memset(v12, 0, sizeof(v12));
    CA::IOMobileFramebuffer::print_icc_matrix_to_stream(v12, a2, a3, a4, a5);
    if (x_log_get_color(void)::once != -1)
    {
      dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
    }

    v10 = x_log_get_color(void)::log;
    if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = x_stream_get(v12);
      *buf = 136315138;
      v14 = v11;
      _os_log_impl(&dword_183AA6000, v10, OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
    }

    if (v12[0])
    {
      free(v12[0]);
    }
  }

  return IOMobileFramebufferSwapSetICCMatrix();
}

uint64_t CA::WindowServer::IOMFBDisplay::swap_set_icc_curve(uint64_t a1, signed int a2, int a3, unsigned int a4, int a5, void *__src)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 <= 17 && a4 <= 2)
  {
    v11 = *(a1 + 24 * a2 + 8 * a4 + 27608);
    if (!v11)
    {
      operator new();
    }

    memcpy(v11, __src, 0x218uLL);
  }

  if (BYTE13(xmmword_1ED4E982C) == 1)
  {
    memset(v15, 0, sizeof(v15));
    CA::IOMobileFramebuffer::print_icc_curve_to_stream(v15, a2, a3, a4, a5, __src);
    if (x_log_get_color(void)::once != -1)
    {
      dispatch_once(&x_log_get_color(void)::once, &__block_literal_global_12256);
    }

    v13 = x_log_get_color(void)::log;
    if (os_log_type_enabled(x_log_get_color(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v14 = x_stream_get(v15);
      *buf = 136315138;
      v17 = v14;
      _os_log_impl(&dword_183AA6000, v13, OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
    }

    if (v15[0])
    {
      free(v15[0]);
    }
  }

  return IOMobileFramebufferSwapSetICCCurve();
}

void ___ZN2CA12WindowServer12IOMFBDisplay21set_tonemapping_stateEPNS_6Render6UpdateEPKNS0_7SurfaceEjPP12CGColorSpace_block_invoke_3(uint64_t a1, signed int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2 > 18)
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v9 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109120;
      v10[1] = a2;
      _os_log_error_impl(&dword_183AA6000, v9, OS_LOG_TYPE_ERROR, "unexpected ICC curve location %d", v10, 8u);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    v6 = *(a1 + 44);
    if (a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = &CA::WindowServer::IOMFBDisplay::set_tonemapping_state(CA::Render::Update *,CA::WindowServer::Surface const*,unsigned int,CGColorSpace **)::bypass_curve;
    }

    CA::WindowServer::IOMFBDisplay::swap_set_icc_curve(v5, a2, v7, v6, 7, v8);
  }
}

void ___ZN2CA12WindowServer12IOMFBDisplay21set_tonemapping_stateEPNS_6Render6UpdateEPKNS0_7SurfaceEjPP12CGColorSpace_block_invoke_64(uint64_t a1, signed int a2, __int128 *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2 > 8)
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v9 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109120;
      v10[1] = a2;
      _os_log_error_impl(&dword_183AA6000, v9, OS_LOG_TYPE_ERROR, "unexpected ICC matrix location %d", v10, 8u);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    v6 = *(a1 + 44);
    if (a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = &CA::WindowServer::IOMFBDisplay::set_tonemapping_state(CA::Render::Update *,CA::WindowServer::Surface const*,unsigned int,CGColorSpace **)::identity_matrix;
    }

    CA::WindowServer::IOMFBDisplay::swap_set_icc_matrix(v5, a2, v7, v6, v8);
  }
}

double ___ZN2CA12WindowServer12IOMFBDisplay21set_tonemapping_stateEPNS_6Render6UpdateEPKNS0_7SurfaceEjPP12CGColorSpace_block_invoke()
{
  dword_1EA853408 = 0;
  qword_1EA853400 = 0;
  result = 0.0;
  CA::WindowServer::IOMFBDisplay::set_tonemapping_state(CA::Render::Update *,CA::WindowServer::Surface const*,unsigned int,CGColorSpace **)::identity_matrix = xmmword_183E20E40;
  unk_1EA8533E0 = xmmword_183E20E40;
  xmmword_1EA8533F0 = xmmword_183E20E40;
  return result;
}

void CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::IOMFBDisplay *this, CA::WindowServer::Display::ModeSet *a2, CA::WindowServer::Display::Mode *a3, const __CFArray *a4, const __CFArray *a5)
{
  v6 = this;
  buf[7] = *MEMORY[0x1E69E9840];
  v7 = (this + 26416);
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v8 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(v6 + 6);
    v10 = *(v7 + 3114);
    buf[0].i32[0] = 67109888;
    buf[0].i32[1] = v9;
    buf[1].i16[0] = 1024;
    *(buf[1].i32 + 2) = v10;
    buf[1].i16[3] = 2048;
    buf[2] = a4;
    buf[3].i16[0] = 2048;
    *(&buf[3] + 2) = a5;
    _os_log_impl(&dword_183AA6000, v8, OS_LOG_TYPE_DEFAULT, "Display %u hotplug-state %d updating digital modes: color %p; timing %p\n", buf, 0x22u);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::clear(v6 + 3338);
  if (!a4 || !a5 || (*(v7 + 3114) & 1) == 0)
  {
    CA::WindowServer::IOMFBDisplay::release_everything(v6);
    return;
  }

  Count = CFArrayGetCount(a5);
  v12 = CFArrayGetCount(a4);
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v13 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(v6 + 6);
    buf[0].i32[0] = 67109632;
    buf[0].i32[1] = v14;
    buf[1].i16[0] = 2048;
    *(&buf[1] + 2) = Count;
    buf[2].i16[1] = 2048;
    *(&buf[2] + 4) = v12;
    _os_log_impl(&dword_183AA6000, v13, OS_LOG_TYPE_DEFAULT, "Display %u %zu timing modes, %zu color modes\n", buf, 0x1Cu);
  }

  *a3 = 0;
  if ((CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::initialized & 1) == 0)
  {
    v15 = getenv("CA_DISPLAY_OVERSCANNED");
    if (v15)
    {
      CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::value = atoi(v15) != 0;
      CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::override = 1;
    }

    buf[0].i8[0] = 0;
    if (CFPreferencesGetAppBooleanValue(@"FilterYUVDisplayModes", @"com.apple.coreanimation", buf))
    {
      v16 = buf[0].u8[0] == 0;
    }

    else
    {
      v16 = 1;
    }

    v17 = !v16;
    CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::filter_yuv = v17;
    if (CFPreferencesGetAppBooleanValue(@"FilterDisplayModes", @"com.apple.coreanimation", buf))
    {
      v18 = buf[0].u8[0] == 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = !v18;
    CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::filter_timing = v19;
    CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::filter_resolution = v19;
    if (CFPreferencesGetAppBooleanValue(@"Filter420DisplayModes", @"com.apple.coreanimation", buf))
    {
      v20 = buf[0].u8[0] == 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = !v20;
    CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::filter_420 = v21;
    if (CFPreferencesGetAppBooleanValue(@"FilterHighBitDepthDisplayModes", @"com.apple.coreanimation", buf))
    {
      v22 = 1;
    }

    else
    {
      v22 = buf[0].u8[0] == 0;
    }

    v23 = v22;
    CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::filter_high_bit_depths = v23;
    if (CFPreferencesGetAppBooleanValue(@"IgnoreUnsafeDisplayModes", @"com.apple.coreanimation", buf))
    {
      v24 = buf[0].u8[0] == 0;
    }

    else
    {
      v24 = 1;
    }

    v25 = !v24;
    CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::ignore_unsafe = v25;
    CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::initialized = 1;
  }

  if (CADeviceSupportsAPT::once != -1)
  {
    dispatch_once(&CADeviceSupportsAPT::once, &__block_literal_global_46);
  }

  v271 = a5;
  v268 = Count;
  v26 = CADeviceSupportsAPT::supports_apt != 1 || (*(v6 + 336) & 0x1C00) != 0;
  v266 = v26;
  cf = IOMobileFramebufferCopyProperty();
  if (cf)
  {
    v27 = CFGetTypeID(cf);
    if (v27 == CFArrayGetTypeID())
    {
      v28 = CFArrayGetCount(cf);
      v29 = cf;
      if (v28)
      {
        for (i = 0; i != v28; ++i)
        {
          Dictionary = CA_CFArrayGetDictionary(v29, i);
          if (Dictionary)
          {
            v33 = Dictionary;
            v34 = CA::WindowServer::dictionary_dict(Dictionary, @"HorizontalAttributes", v32);
            v36 = CA::WindowServer::dictionary_dict(v33, @"VerticalAttributes", v35);
            if (v34)
            {
              v37 = v36;
              if (v36)
              {
                Value = CFDictionaryGetValue(v34, @"Active");
                if (Value)
                {
                  CA_CFIntValue(Value);
                }

                v39 = CFDictionaryGetValue(v37, @"Active");
                if (v39)
                {
                  CA_CFIntValue(v39);
                }
              }
            }
          }

          v29 = cf;
        }
      }
    }
  }

  v40 = IOMobileFramebufferCopyProperty();
  theDict = v40;
  if (v40)
  {
    v41 = v40;
    v42 = CFGetTypeID(v40);
    if (v42 == CFDictionaryGetTypeID())
    {
      v43 = CFDictionaryGetValue(v41, @"NativeFormatHorizontalPixels");
      if (v43)
      {
        CA_CFIntValue(v43);
      }

      v44 = CFDictionaryGetValue(theDict, @"NativeFormatVerticalPixels");
      if (v44)
      {
        CA_CFIntValue(v44);
      }
    }
  }

  v291[0] = 0;
  v291[1] = 0;
  if (v12)
  {
    v45 = CA_CFArrayGetDictionary(a4, 0);
    CA_CFDictionaryGetInt(v45, @"ID");
    operator new();
  }

  v280 = v6;
  if (!Count)
  {
    v219 = 0;
    v220 = 0;
    goto LABEL_543;
  }

  v258 = 0;
  v255 = 0;
  v46 = 0;
  v265 = 0uLL;
  v264 = 0;
  v275 = vdupq_n_s64(0x40847AE147AE147BuLL);
  v276 = vdupq_n_s64(0x3F59000000000000uLL);
  v274 = vdupq_n_s64(0x3FFFFFE0000000uLL);
  v47 = a5;
  v277 = v7;
  do
  {
    v48 = CA_CFArrayGetDictionary(v47, v46);
    if (v48)
    {
      v50 = v48;
      v51 = CA::WindowServer::dictionary_dict(v48, @"HorizontalAttributes", v49);
      v53 = CA::WindowServer::dictionary_dict(v50, @"VerticalAttributes", v52);
      if (v51)
      {
        v54 = v53;
        if (v53)
        {
          v55 = CFDictionaryGetValue(v50, @"IsVirtual");
          if (v55)
          {
            v281 = CA_CFBoolValue(v55);
          }

          else
          {
            v281 = 0;
          }

          v56 = CFDictionaryGetValue(v50, @"Score");
          if (v56)
          {
            LODWORD(v56) = CA_CFIntValue(v56);
          }

          if (v56 != 0 || (*(v7 + 3079) & 1) == 0 || v281)
          {
            v269 = v56;
            v57 = CFDictionaryGetValue(v54, @"PreciseSyncRate");
            if (!v57 || (LODWORD(v58) = CA_CFIntValue(v57), !v58))
            {
              v58 = CFDictionaryGetValue(v54, @"SyncRate");
              if (v58)
              {
                LODWORD(v58) = CA_CFIntValue(v58);
              }
            }

            v273 = v50;
            v59 = (*(v7 + 3079) & 1) == 0 && (*(v280 + 336) & 0x1C00) != 4096;
            if (v59 && v58 < 121)
            {
              v60 = v58 << 16;
            }

            else
            {
              v60 = v58;
            }

            if ((v60 - 3997697) <= 0xFFF3FFFE && (CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::filter_timing & 1) != 0 || ((v61 = CFDictionaryGetValue(v54, @"PixelRepetition")) == 0 ? (v62 = 0) : (v62 = CA_CFIntValue(v61) != 0), (v63 = CFDictionaryGetValue(v51, @"PixelRepetition")) == 0 ? (v64 = 0) : (v64 = CA_CFIntValue(v63) != 0), *(v7 + 3079) == 1 && (v62 || v64)))
            {
              v47 = v271;
              goto LABEL_540;
            }

            v65 = CFDictionaryGetValue(v51, @"Active");
            if (v65)
            {
              v66 = CA_CFIntValue(v65);
            }

            else
            {
              v66 = 0;
            }

            v67 = CFDictionaryGetValue(v54, @"Active");
            if (v67)
            {
              v68 = CA_CFIntValue(v67);
              v69 = v68;
              if (*(v7 + 3079) == 1 && v66 >= 0xF01 && v68 >= 0x870 && (CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::filter_resolution & 1) != 0)
              {
                v47 = v271;
                goto LABEL_540;
              }
            }

            else
            {
              v69 = 0;
            }

            v70 = CFDictionaryGetValue(v273, @"IsOverscanned");
            if (v70)
            {
              LOBYTE(v70) = CA_CFBoolValue(v70);
            }

            if (CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::override)
            {
              v71 = CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::value;
            }

            else
            {
              v71 = v70;
            }

            Array = CA_CFDictionaryGetArray(v273, @"ColorModes");
            if (Array && (v73 = Array, CFArrayGetCount(Array)) || (v73 = a4, (*(v280 + 336) & 0x1C00) != 0x400))
            {
              *(a2 + 22) = (*(*v280 + 2464))(v280);
              v74 = CA_CFDictionaryGetArray(v273, @"UnsafeColorElementIDs");
              v295 = 1065353216;
              memset(v294, 0, sizeof(v294));
              if ((CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::ignore_unsafe & 1) == 0)
              {
                v75 = v74;
                if (v74)
                {
                  v76 = CFGetTypeID(v74);
                  if (v76 == CFArrayGetTypeID())
                  {
                    v77 = CFArrayGetCount(v75);
                    if (v77)
                    {
                      v78 = v77;
                      for (j = 0; j != v78; ++j)
                      {
                        ValueAtIndex = CFArrayGetValueAtIndex(v75, j);
                        buf[0].i32[0] = CA_CFIntValue(ValueAtIndex);
                        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(v294, buf[0].u32[0]);
                      }
                    }
                  }
                }
              }

              v287 = CFArrayGetCount(v73);
              if (v287)
              {
                v278 = 0;
                v288 = 0;
                v284 = 0;
                v81 = 0;
                v286 = v73;
                do
                {
                  v82 = CA_CFArrayGetDictionary(v73, v81);
                  Int = CA_CFDictionaryGetInt(v82, @"PixelEncoding");
                  v84 = CA_CFDictionaryGetInt(v82, @"Colorimetry");
                  if (Int == 3)
                  {
                    v85 = *(a2 + 1);
                    if (*a2 != v85)
                    {
                      v86 = *a2 + 8;
                      do
                      {
                        v87 = (*(v86 - 8) >> 29) & 0x1FFFFFFLL;
                        v88 = v87 == v60 || v86 == v85;
                        v86 += 8;
                      }

                      while (!v88);
                      v278 |= v87 == v60;
                    }
                  }

                  v89 = v84 == 1;
                  if (*(v7 + 3117) == 1 && v84 == 16 && Int == 0)
                  {
                    v92 = CA_CFDictionaryGetInt(v82, @"EOTF");
                    v94 = CA_CFDictionaryGetInt(v82, @"Depth") > 9 && v92 == 2;
                    LOBYTE(v284) = v94 | v284;
                    BYTE4(v284) |= !v94;
                  }

                  v288 |= v89;
                  ++v81;
                  v73 = v286;
                }

                while (v81 != v287);
                v95 = 0;
                if ((v284 & 0x100000000) != 0)
                {
                  v96 = 0;
                }

                else
                {
                  v96 = 8;
                }

                v254 = v96;
                if ((v284 & 0x100000000) != 0)
                {
                  v97 = 0;
                }

                else
                {
                  v97 = 4;
                }

                v249 = v97;
                v99 = v66 != 3840 && v66 != 1920;
                if (v69 == 2160 || v69 == 1080)
                {
                  v99 = 0;
                }

                v270 = v99;
                v263 = v66 & 0x3FFF | ((v69 & 0x3FFF) << 14);
                v261 = (v60 & 0x1FFFFFF) << 29;
                v262 = (fabs((v60 * -0.00000012716) + 1.0) < 0.001) << 63;
                v253 = v71 & 1;
                while (1)
                {
                  v101 = CA_CFArrayGetDictionary(v73, v95);
                  v102 = CA_CFDictionaryGetInt(v101, @"ID");
                  v103 = CA_CFDictionaryGetDictionary(v101, @"DownstreamFormat");
                  v104 = v103 ? v103 : v101;
                  Bool = CA_CFDictionaryGetBool(v104, @"IsVirtual");
                  v105 = CA_CFDictionaryGetInt(v104, @"PixelEncoding");
                  v106 = CA_CFDictionaryGetInt(v104, @"Depth");
                  v107 = CA_CFDictionaryGetInt(v104, @"Colorimetry");
                  v108 = CA_CFDictionaryGetInt(v104, @"EOTF");
                  v109 = CA_CFDictionaryGetInt(v104, @"DynamicRange");
                  v110 = v109;
                  if (v105 > 3)
                  {
                    break;
                  }

                  if (v105 > 1)
                  {
                    if (v105 == 2)
                    {
                      if (CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::filter_yuv)
                      {
                        goto LABEL_401;
                      }

                      if (v107 != 7 || v106 < 10 || v108 != 2 || v109 != 1 || *(v277 + 3117) != 1 || (CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::filter_high_bit_depths & 1) == 0)
                      {
                        v117 = v106 == 12 || v106 == 10;
                        if (!v117 || v109 != 1)
                        {
                          if (v106 > 8 || (v278 & 1) != 0)
                          {
                            goto LABEL_401;
                          }

                          v116 = 7;
                          v115 = v249;
                          goto LABEL_361;
                        }

                        if (*(v277 + 3117) != 1 || (CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::filter_high_bit_depths & 1) != 0 || (v108 & 0xFFFFFFFD) != 0)
                        {
                          goto LABEL_401;
                        }

                        if (v107 != 7 || v108 != 2)
                        {
                          if (v108 || (v278 & 1) != 0)
                          {
                            goto LABEL_401;
                          }

                          if (v106 == 10)
                          {
                            v116 = 8;
                          }

                          else
                          {
                            v116 = 9;
                          }

                          v115 = v249;
                          goto LABEL_363;
                        }

                        v118 = v106 == 10;
                        v119 = 18;
                        goto LABEL_291;
                      }

                      v115 = 32;
                      goto LABEL_239;
                    }

                    if (CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::filter_yuv)
                    {
                      goto LABEL_401;
                    }

                    if (v107 != 7 || v106 < 10 || v108 != 2 || v109 != 1 || *(v277 + 3117) != 1 || (CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::filter_high_bit_depths & 1) == 0)
                    {
                      v121 = v106 == 12 || v106 == 10;
                      if (!v121 || v109 != 1)
                      {
                        if (v106 >= 9)
                        {
                          goto LABEL_401;
                        }

                        v116 = 10;
                        v115 = v254;
LABEL_361:
                        if (*(v280 + 652) != 1 && v108)
                        {
                          goto LABEL_401;
                        }

                        goto LABEL_363;
                      }

                      if (*(v277 + 3117) != 1 || (CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::filter_high_bit_depths & 1) != 0 || (v108 & 0xFFFFFFFD) != 0)
                      {
                        goto LABEL_401;
                      }

                      if (v107 != 7 || v108 != 2)
                      {
                        if (v108)
                        {
                          goto LABEL_401;
                        }

                        if (v106 == 10)
                        {
                          v116 = 11;
                        }

                        else
                        {
                          v116 = 12;
                        }

                        v115 = v254;
                        goto LABEL_363;
                      }

                      v118 = v106 == 10;
                      v119 = 16;
LABEL_291:
                      if (v118)
                      {
                        v116 = v119;
                      }

                      else
                      {
                        v116 = v119 + 1;
                      }

                      v115 = 32;
                      goto LABEL_240;
                    }

                    v115 = 32;
                    v116 = 16;
                  }

                  else if (v105)
                  {
                    if (v105 != 1)
                    {
                      goto LABEL_246;
                    }

                    if (CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::filter_yuv & 1) != 0 || (CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::filter_420)
                    {
                      goto LABEL_401;
                    }

                    if (v107 != 7 || v106 < 10 || v108 != 2 || v109 != 1 || CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::filter_high_bit_depths != 1)
                    {
                      v122 = v106 == 12 || v106 == 10;
                      if (!v122 || v109 != 1)
                      {
                        if (v107 != 1 || v106 != 8 || v108 || v109 != 1)
                        {
                          goto LABEL_401;
                        }

                        v115 = 0;
                        v116 = 4;
LABEL_376:
                        v115 += 2;
                        goto LABEL_387;
                      }

                      if (CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::filter_high_bit_depths)
                      {
                        goto LABEL_401;
                      }

                      v259 = CA_CFDictionaryGetInt(v101, @"Depth");
                      v123 = CA_CFDictionaryGetInt(v101, @"Colorimetry");
                      v124 = CA_CFDictionaryGetInt(v101, @"EOTF");
                      v125 = CA_CFDictionaryGetInt(v101, @"DynamicRange");
                      if (v259 != v106 || v123 != v107 || v124 != v108 || v125 != 1)
                      {
                        goto LABEL_401;
                      }

                      if (v107 == 7 && v108 == 2)
                      {
                        v115 = 0;
                        if (v106 == 10)
                        {
                          v116 = 20;
                        }

                        else
                        {
                          v116 = 21;
                        }

                        goto LABEL_240;
                      }

                      if (v106 == 10)
                      {
                        v116 = 5;
                      }

                      else
                      {
                        v116 = 6;
                      }

                      if (v108 || v107 != 1)
                      {
                        goto LABEL_401;
                      }

                      v115 = 0;
                      goto LABEL_359;
                    }

                    v111 = CA_CFDictionaryGetInt(v101, @"Depth");
                    v112 = CA_CFDictionaryGetInt(v101, @"Colorimetry");
                    v113 = CA_CFDictionaryGetInt(v101, @"EOTF");
                    v114 = CA_CFDictionaryGetInt(v101, @"DynamicRange");
                    if (v111 < 10 || v112 != 7 || v113 != 2 || v114 != 1)
                    {
                      goto LABEL_401;
                    }

                    v115 = 0;
                    v116 = 20;
                  }

                  else
                  {
                    if (*(v280 + 652) == 1)
                    {
                      if (CADeviceIsVirtualized::once[0] != -1)
                      {
                        dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
                      }

                      v115 = 0;
                      v116 = 1;
                      if (CADeviceIsVirtualized::is_virtualized != 1 || v106 < 10 || v108 != 2 || v110)
                      {
                        goto LABEL_361;
                      }

                      goto LABEL_220;
                    }

                    if (v106 < 10 || v108 != 2 || v109 || *(v277 + 3117) != 1 || CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::filter_high_bit_depths != 1)
                    {
                      v120 = v106 == 12 || v106 == 10;
                      if (!v120 || v109)
                      {
                        if (v106 > 8)
                        {
                          goto LABEL_401;
                        }

                        if ((v284 & 0x100000000) != 0)
                        {
                          if (v107 != 16)
                          {
                            goto LABEL_401;
                          }

                          v116 = 13;
                          v115 = 8;
                        }

                        else
                        {
                          v115 = 0;
                          v116 = 1;
                        }

                        goto LABEL_361;
                      }

                      if (*(v277 + 3117) != 1 || (CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::filter_high_bit_depths & 1) != 0)
                      {
                        goto LABEL_401;
                      }

                      if (((v108 == 2) & v284) != 0)
                      {
                        if (v107 != 16)
                        {
                          goto LABEL_401;
                        }

                        goto LABEL_336;
                      }

                      if (((v108 != 2) & BYTE4(v284)) == 1 && v107 != 16)
                      {
                        goto LABEL_401;
                      }

                      if (((v108 != 2) & BYTE4(v284)) != 0)
                      {
LABEL_336:
                        v126 = v108 == 2;
                        if (v106 == 10)
                        {
                          v127 = 14;
                          v128 = 24;
                        }

                        else
                        {
                          v127 = 15;
                          v128 = 25;
                        }
                      }

                      else
                      {
                        v126 = v108 == 2;
                        if (v106 == 10)
                        {
                          v127 = 2;
                          v128 = 22;
                        }

                        else
                        {
                          v127 = 3;
                          v128 = 23;
                        }
                      }

                      if (v126)
                      {
                        v116 = v128;
                      }

                      else
                      {
                        v116 = v127;
                      }

                      if (v108 == 2)
                      {
                        v115 = 32;
                      }

                      else
                      {
                        v115 = 16;
                      }

LABEL_359:
                      if (((1 << v116) & 0xFB6C) != 0 || ((1 << v116) & 0x3FF0000) == 0)
                      {
                        goto LABEL_361;
                      }

LABEL_223:
                      if (v108 != 2)
                      {
                        goto LABEL_401;
                      }

                      goto LABEL_240;
                    }

                    if ((v284 & 1) == 0)
                    {
                      v115 = 32;
LABEL_220:
                      v116 = 22;
                      goto LABEL_240;
                    }

                    if (v107 != 16)
                    {
                      goto LABEL_401;
                    }

                    v115 = 32;
                    v116 = 24;
                  }

LABEL_240:
                  if (v270 && (*(v277 + 3117) & 1) == 0)
                  {
                    if (CADeviceIsVirtualized::once[0] != -1)
                    {
                      dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
                    }

                    if ((CADeviceIsVirtualized::is_virtualized & 1) == 0)
                    {
                      goto LABEL_401;
                    }
                  }

LABEL_363:
                  if (v107 > 8)
                  {
                    if (v107 > 13)
                    {
                      if (v107 == 14)
                      {
LABEL_377:
                        v129 = v116 - 28;
                        goto LABEL_381;
                      }

                      if (v107 == 16)
                      {
                        goto LABEL_376;
                      }
                    }

                    else
                    {
                      if (v107 == 9)
                      {
                        v129 = v116 - 24;
LABEL_381:
                        if (v129 < 0xFFFFFFFE)
                        {
                          goto LABEL_401;
                        }

                        goto LABEL_387;
                      }

                      if (v107 == 10)
                      {
                        goto LABEL_376;
                      }
                    }

                    goto LABEL_386;
                  }

                  if (v107 <= 6)
                  {
                    if (!v107)
                    {
                      if (v288)
                      {
                        goto LABEL_401;
                      }

                      goto LABEL_387;
                    }

                    if (v107 == 1)
                    {
                      goto LABEL_376;
                    }

LABEL_386:
                    if (*(v277 + 3079))
                    {
                      goto LABEL_401;
                    }

                    goto LABEL_387;
                  }

                  if (v107 != 7)
                  {
                    goto LABEL_377;
                  }

                  if (v116 > 0x1C || ((1 << v116) & 0x101D0000) == 0)
                  {
                    goto LABEL_401;
                  }

LABEL_387:
                  v130 = CA_CFDictionaryGetInt(v104, @"DynamicRange");
                  if (!v130)
                  {
                    goto LABEL_391;
                  }

                  if (v130 != 1)
                  {
                    if (*(v277 + 3079))
                    {
                      goto LABEL_401;
                    }

LABEL_391:
                    v132 = 0;
                    v131 = 0x1000000000000000;
                    goto LABEL_392;
                  }

                  ++v115;
                  v131 = 0x2000000000000000;
                  v132 = 1;
LABEL_392:
                  v133 = v291[0];
                  if (!v291[0])
                  {
                    goto LABEL_401;
                  }

                  v134 = v291;
                  do
                  {
                    v135 = v133;
                    v136 = v134;
                    v137 = *(v133 + 7);
                    if (v137 >= v102)
                    {
                      v134 = v133;
                    }

                    v133 = v133[v137 < v102];
                  }

                  while (v133);
                  if (v134 == v291)
                  {
                    goto LABEL_401;
                  }

                  if (v137 < v102)
                  {
                    v135 = v136;
                  }

                  if (v102 < *(v135 + 7))
                  {
                    goto LABEL_401;
                  }

                  v256 = v115;
                  if (*(v277 + 3079))
                  {
                    v138 = 0;
                    v139 = v280;
                  }

                  else
                  {
                    v139 = v280;
                    v138 = ((*(v280 + 336) & 0x1C00) != 4096) << 28;
                  }

                  v140 = v281 || Bool;
                  v141 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v294, v102);
                  v257 = v141;
                  v142 = v262;
                  if (v281 || Bool || v266)
                  {
                    v142 = 0;
                  }

                  v143 = v138 | v263 | v261;
                  v144 = 0x40000000000000;
                  if (!v281 && !Bool)
                  {
                    v144 = 0;
                  }

                  v145 = v116 & 0x1F;
                  v260 = v143;
                  v252 = v144 & 0xF07FFFFFFFFFFFFFLL | (v145 << 55) | v143;
                  v146 = v252 | v131;
                  v283 = v141 != 0;
                  v292 = v142 | (v283 << 62) | v252 | v131;
                  if ((*(*v139 + 2464))(v139))
                  {
                    v147 = CFDictionaryGetValue(v273, @"HorizontalPipeCount");
                    if (v147)
                    {
                      v148 = CA_CFIntValue(v147);
                    }

                    else
                    {
                      v148 = 0;
                    }

                    v149 = CFDictionaryGetValue(v273, @"VerticalPipeCount");
                    v251 = v132;
                    if (v149)
                    {
                      v150 = CA_CFIntValue(v149);
                    }

                    else
                    {
                      v150 = 0;
                    }

                    v250 = v148;
                    v151 = (*(*v280 + 2448))(v280, v148);
                    v152 = (*(*v280 + 2456))(v280, v150);
                    *v293 = v292;
                    buf[0] = v293;
                    v153 = std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a2 + 6, v292);
                    *(v153 + 6) = v151;
                    *(v153 + 7) = v152;
                    *(v153 + 32) = v250;
                    *(v153 + 33) = v150;
                    *(v153 + 17) = 0;
                    v132 = v251;
                    v145 = v116 & 0x1F;
                  }

                  v154 = v145 << 55;
                  v155 = v283 << 62;
                  if (v140)
                  {
                    v156 = *a2;
                    v157 = *(a2 + 1);
                    if (*a2 != v157)
                    {
                      v158 = v131 | v154 | v260 | v155;
                      while (*v156 != v158)
                      {
                        v159.i64[0] = *v156;
                        v159.i64[1] = v158;
                        v160 = vshrn_n_s64(v159, 0x1DuLL);
                        v161.i64[0] = v160.i32[0] & 0x1FFFFFF;
                        v161.i64[1] = v160.i32[1] & 0x1FFFFFF;
                        v162 = vbslq_s8(v274, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v161), v276)), v275)), 0x1DuLL), v159);
                        if (vmovn_s64(vceqq_s64(v162, vdupq_laneq_s64(v162, 1))).u32[0])
                        {
                          break;
                        }

                        if (++v156 == v157)
                        {
                          goto LABEL_428;
                        }
                      }
                    }

                    if (v156 != v157)
                    {
LABEL_401:
                      v73 = v286;
                      goto LABEL_402;
                    }
                  }

                  else
                  {
                    buf[0] = (v154 | v131 | v260 | v155 | 0x40000000000000);
                    CA::WindowServer::Display::ModeSet::remove_mode(a2, buf);
                  }

LABEL_428:
                  if (v257)
                  {
                    buf[0] = (v252 | v131);
                    v163 = *a2;
                    v164 = *(a2 + 1);
                    if (*a2 != v164)
                    {
                      while (*v163 != v146)
                      {
                        v165.i64[0] = *v163;
                        v165.i64[1] = v252 | v131;
                        v166 = vshrn_n_s64(v165, 0x1DuLL);
                        v167.i64[0] = v166.i32[0] & 0x1FFFFFF;
                        v167.i64[1] = v166.i32[1] & 0x1FFFFFF;
                        v168 = vbslq_s8(v274, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v167), v276)), v275)), 0x1DuLL), v165);
                        if (vmovn_s64(vceqq_s64(v168, vdupq_laneq_s64(v168, 1))).u32[0])
                        {
                          break;
                        }

                        if (++v163 == v164)
                        {
                          goto LABEL_450;
                        }
                      }
                    }

                    if (v163 != v164)
                    {
                      if (x_log_get_windowserver(void)::once != -1)
                      {
                        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
                      }

                      v169 = x_log_get_windowserver(void)::log;
                      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
                      {
                        *v293 = 0;
                        _os_log_error_impl(&dword_183AA6000, v169, OS_LOG_TYPE_ERROR, "Mode set already contains low-bandwidth version of same mode", v293, 2u);
                      }

                      CA::WindowServer::Display::ModeSet::remove_mode(a2, buf);
                    }
                  }

                  else
                  {
                    v170 = *a2;
                    v171 = *(a2 + 1);
                    if (*a2 != v171)
                    {
                      while (*v170 != (v146 | 0x4000000000000000))
                      {
                        v172.i64[0] = *v170;
                        v172.i64[1] = v146 | 0x4000000000000000;
                        v173 = vshrn_n_s64(v172, 0x1DuLL);
                        v174.i64[0] = v173.i32[0] & 0x1FFFFFF;
                        v174.i64[1] = v173.i32[1] & 0x1FFFFFF;
                        v175 = vbslq_s8(v274, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v174), v276)), v275)), 0x1DuLL), v172);
                        if (vmovn_s64(vceqq_s64(v175, vdupq_laneq_s64(v175, 1))).u32[0])
                        {
                          break;
                        }

                        if (++v170 == v171)
                        {
                          goto LABEL_450;
                        }
                      }
                    }

                    if (v170 != v171)
                    {
                      if (x_log_get_windowserver(void)::once != -1)
                      {
                        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
                      }

                      v73 = v286;
                      v176 = x_log_get_windowserver(void)::log;
                      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
                      {
                        buf[0].i16[0] = 0;
                        _os_log_error_impl(&dword_183AA6000, v176, OS_LOG_TYPE_ERROR, "Mode set already contains high-bandwidth version of same mode", buf, 2u);
                      }

                      goto LABEL_402;
                    }
                  }

LABEL_450:
                  (*(*v280 + 1384))(buf);
                  if (buf[3].i32[1] == 1552 && v116 <= 0x19 && ((1 << v116) & 0x3C0E00E) != 0)
                  {
                    v177 = v252 | v155;
                    if (v132)
                    {
                      v178 = *a2;
                      v179 = *(a2 + 1);
                      if (*a2 == v179)
                      {
                        v181 = v273;
                        v182 = v256;
                      }

                      else
                      {
                        v180 = v177 | 0x1000000000000000;
                        v181 = v273;
                        v182 = v256;
                        while (*v178 != v180)
                        {
                          v183.i64[0] = *v178;
                          v183.i64[1] = v180;
                          v184 = vshrn_n_s64(v183, 0x1DuLL);
                          v185.i64[0] = v184.i32[0] & 0x1FFFFFF;
                          v185.i64[1] = v184.i32[1] & 0x1FFFFFF;
                          v186 = vbslq_s8(v274, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v185), v276)), v275)), 0x1DuLL), v183);
                          if (vmovn_s64(vceqq_s64(v186, vdupq_laneq_s64(v186, 1))).u8[0])
                          {
                            break;
                          }

                          if (++v178 == v179)
                          {
                            goto LABEL_461;
                          }
                        }
                      }

                      if (v178 != v179)
                      {
                        goto LABEL_401;
                      }
                    }

                    else
                    {
                      v195 = v177 | 0x2000000000000000;
                      buf[0] = v195;
                      v196 = *a2;
                      v197 = *(a2 + 1);
                      if (*a2 == v197)
                      {
                        v181 = v273;
                        v182 = v256;
                      }

                      else
                      {
                        v181 = v273;
                        v182 = v256;
                        while (*v196 != v195)
                        {
                          v198.i64[0] = *v196;
                          v198.i64[1] = v195;
                          v199 = vshrn_n_s64(v198, 0x1DuLL);
                          v200.i64[0] = v199.i32[0] & 0x1FFFFFF;
                          v200.i64[1] = v199.i32[1] & 0x1FFFFFF;
                          v201 = vbslq_s8(v274, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v200), v276)), v275)), 0x1DuLL), v198);
                          if (vmovn_s64(vceqq_s64(v201, vdupq_laneq_s64(v201, 1))).u8[0])
                          {
                            break;
                          }

                          if (++v196 == v197)
                          {
                            goto LABEL_461;
                          }
                        }
                      }

                      if (v196 != v197)
                      {
                        CA::WindowServer::Display::ModeSet::remove_mode(a2, buf);
                      }
                    }
                  }

                  else
                  {
                    v181 = v273;
                    v182 = v256;
                  }

LABEL_461:
                  v187 = *a2;
                  v188 = *(a2 + 1);
                  if (*a2 != v188)
                  {
                    while (*v187 != v292)
                    {
                      v189.i64[0] = *v187;
                      v189.i64[1] = v292;
                      v190 = vshrn_n_s64(v189, 0x1DuLL);
                      v191.i64[0] = v190.i32[0] & 0x1FFFFFF;
                      v191.i64[1] = v190.i32[1] & 0x1FFFFFF;
                      v192 = vbslq_s8(v274, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v191), v276)), v275)), 0x1DuLL), v189);
                      if (vmovn_s64(vceqq_s64(v192, vdupq_laneq_s64(v192, 1))).u8[0])
                      {
                        break;
                      }

                      if (++v187 == v188)
                      {
                        goto LABEL_469;
                      }
                    }
                  }

                  if (v187 == v188)
                  {
LABEL_469:
                    if (CADeviceSupportsHDRProcessing::once != -1)
                    {
                      dispatch_once(&CADeviceSupportsHDRProcessing::once, &__block_literal_global_199);
                    }

                    if ((CADeviceSupportsHDRProcessing::supports_hdr & 1) == 0 && CA::WindowServer::Display::Mode::is_hdr(&v292))
                    {
                      goto LABEL_401;
                    }

                    CA::WindowServer::Display::ModeSet::add_mode(a2, &v292);
                  }

                  else
                  {
                    buf[0] = &v292;
                    if (*(std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,CA::WindowServer::IOMFBDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::IOMFBDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(v280 + 3338, v292) + 8) >= v269)
                    {
                      goto LABEL_401;
                    }
                  }

                  v193 = CFDictionaryGetValue(v181, @"ID");
                  if (v193)
                  {
                    v194 = CA_CFIntValue(v193);
                  }

                  else
                  {
                    v194 = 0;
                  }

                  v202 = CFDictionaryGetValue(v181, @"preferredUIScale");
                  if (v202)
                  {
                    v203 = CA_CFIntValue(v202);
                  }

                  else
                  {
                    v203 = 0;
                  }

                  v204 = v182 + v269;
                  buf[0] = &v292;
                  v205 = std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,CA::WindowServer::IOMFBDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::IOMFBDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(v280 + 3338, v292);
                  *(v205 + 6) = v102;
                  *(v205 + 7) = v194;
                  *(v205 + 8) = v269;
                  *(v205 + 9) = v203;
                  *(v205 + 10) = 0;
                  *(v205 + 44) = v253;
                  *(v205 + 45) = 0;
                  *(v205 + 47) = 0;
                  v206 = v292;
                  if (v204 <= v258)
                  {
                    v73 = v286;
                    if ((v292 & 0x40000000000000) == 0)
                    {
                      goto LABEL_490;
                    }
                  }

                  else
                  {
                    v73 = v286;
                    if ((v292 & 0x40000000000000) == 0)
                    {
                      *a3 = v292;
                      v258 = v204;
LABEL_490:
                      v207 = v206 & 0x3FFF;
                      v208 = (v206 >> 14) & 0x3FFF;
                      v209 = DWORD1(v265);
                      if (v208 <= SDWORD2(v265))
                      {
                        v210 = DWORD1(v265);
                      }

                      else
                      {
                        v210 = v206 & 0x3FFF;
                      }

                      if (v208 <= SDWORD2(v265))
                      {
                        v211 = DWORD2(v265);
                      }

                      else
                      {
                        v211 = (v206 >> 14) & 0x3FFF;
                      }

                      v212 = v207 <= SDWORD1(v265);
                      if (v207 > SDWORD1(v265))
                      {
                        v209 = v210;
                      }

                      DWORD1(v265) = v209;
                      if (v212)
                      {
                        v213 = DWORD2(v265);
                      }

                      else
                      {
                        v213 = v211;
                      }

                      *(&v265 + 1) = v213;
                      *v293 = v206;
                      memset(buf, 0, 44);
                      (*(*v280 + 1384))(v280);
                      if (buf[3].i32[1] == 1552 && (buf[3].i32[0] - 44577) <= 0xE)
                      {
                        v214 = 0x7007u >> (buf[3].i8[0] - 33);
                      }

                      else
                      {
                        LOBYTE(v214) = 0;
                      }

                      if (v206)
                      {
                        if (v214)
                        {
                          goto LABEL_530;
                        }

                        if (CADeviceSupportsHDRTVModes::once != -1)
                        {
                          dispatch_once(&CADeviceSupportsHDRTVModes::once, &__block_literal_global_202);
                        }

                        if ((CADeviceSupportsHDRTVModes::supports_hdr_modes & 1) != 0 || !CA::WindowServer::Display::Mode::is_hdr(v293))
                        {
LABEL_530:
                          if ((v206 & 0xFFFFFFF) != 0x21C1000 && (CA::WindowServer::Display::Mode::hdr_type(v206) != 1 || (v206 & 0x4000000000000000) == 0) && *v277 != 0.0 && vabds_f32(*v277, v207 / v208) <= (*v277 * 0.05) && v207 >= 0x780 && v208 >= 0x438)
                          {
                            v215 = (((v206 >> 29) & 0x1FFFFFF) * 0.0000152587891 + 0.5);
                            v216 = v215 < 0x3C && v255 > 0x3B;
                            v217 = v216 || v207 < v265;
                            v218 = v217 || v208 < v264;
                            if (!v218 && (v207 != v265 || v208 != v264 || v255 <= v215))
                            {
                              LODWORD(v265) = v292 & 0x3FFF;
                              v264 = (v292 >> 14) & 0x3FFF;
                              v255 = (((v292 >> 29) & 0x1FFFFFF) * 0.0000152587891 + 0.5);
                            }
                          }
                        }
                      }
                    }
                  }

LABEL_402:
                  if (++v95 == v287)
                  {
                    goto LABEL_538;
                  }
                }

                if (v105 > 5)
                {
                  if (v105 != 6)
                  {
                    if (v105 != 9)
                    {
LABEL_246:
                      if (*(v277 + 3079))
                      {
                        goto LABEL_401;
                      }

                      v115 = 0;
                      v116 = 0;
                      goto LABEL_363;
                    }

                    if ((CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::filter_yuv & 1) != 0 || v107 != 7 || v106 < 10 || v108 != 2 || v109 != 1)
                    {
                      goto LABEL_401;
                    }

                    v115 = 64;
                    v116 = 28;
                    goto LABEL_240;
                  }

                  if ((CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::filter_yuv & 1) != 0 || v107 != 7 || v106 < 10 || v108 != 2 || v109 != 1)
                  {
                    goto LABEL_401;
                  }

                  v115 = 16;
LABEL_239:
                  v116 = 19;
                  goto LABEL_240;
                }

                if (v105 == 4)
                {
                  v116 = 26;
                }

                else
                {
                  v116 = 27;
                }

                v115 = 128;
                goto LABEL_223;
              }

LABEL_538:
              std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v294);
              v7 = v277;
            }

            v47 = v271;
            Count = v268;
          }
        }
      }
    }

LABEL_540:
    ++v46;
  }

  while (v46 != Count);
  v219 = v265 >> 32;
  v220 = v265 | (v264 << 32);
  v6 = v280;
LABEL_543:
  *(v6 + 9) = v219;
  *(v6 + 10) = v220;
  if (*(v7 + 3117))
  {
    CA::WindowServer::Display::ModeSet::sort(a2);
    buf[0] = 0;
    buf[1] = 0;
    *(&buf[2].i32[1] + 3) = 0;
    buf[2] = 0;
    buf[3].i32[1] = *(v6 + 336) >> 13;
    v221 = *(v6 + 904);
    buf[4].i8[0] = (v221 & 2) != 0;
    buf[4].i8[1] = (v221 & 4) != 0;
    buf[4].i8[2] = 1;
    buf[5] = (v6 + 26588);
    *a3 = CA::WindowServer::Display::ModeSet::preferred_mode_with_criteria(a2, buf);
  }

  v222 = theDict;
  if (CA_CFDictionaryGetBool(theDict, @"SupportsVariableRefreshRate"))
  {
    v223 = CA_CFDictionaryGetInt(theDict, @"MinimumVariableRefreshRate");
    atomic_store(v223, v7 + 574);
    v224 = CA_CFDictionaryGetInt(theDict, @"MaximumVariableRefreshRate");
    v225 = v224;
    buf[4] = 1065353216;
    memset(buf, 0, 32);
    v227 = *a2;
    v226 = *(a2 + 1);
    if (*a2 == v226)
    {
      v228 = v224;
    }

    else
    {
      v289 = *(a2 + 1);
      v228 = v224;
      do
      {
        *&v294[0] = v227;
        v229 = *(std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,CA::WindowServer::IOMFBDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::IOMFBDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(v6 + 3338, *v227) + 10);
        if (!v229)
        {
          v229 = v225;
        }

        if (v229 >= 0x788000)
        {
          v230 = 7897088;
        }

        else
        {
          v230 = v229;
        }

        v231 = *v227;
        if ((*v227 & 0x40000000000000) == 0)
        {
          v232 = (v231 >> 29) & 0x1FFFFFF;
          if (v232 > v223 && v232 <= v230)
          {
            if (v228 <= v230)
            {
              v228 = v230;
            }

            v234 = (32 * (*v227 & 0xFFFC000 | ((*v227 & 0x3FFF) << 28) | (*v227 >> 55) & 0x1F)) | (*v227 >> 60) & 3;
            if (buf[1])
            {
              v235 = vcnt_s8(buf[1]);
              v235.i16[0] = vaddlv_u8(v235);
              if (v235.u32[0] > 1uLL)
              {
                v236 = (32 * (*v227 & 0xFFFC000 | ((*v227 & 0x3FFF) << 28) | (*v227 >> 55) & 0x1F)) | (*v227 >> 60) & 3;
                if (v234 >= *&buf[1])
                {
                  v236 = v234 % *&buf[1];
                }
              }

              else
              {
                v236 = (*&buf[1] - 1) & v234;
              }

              v237 = *(*buf + 8 * v236);
              if (v237)
              {
                for (k = *v237; k; k = *k)
                {
                  v239 = k[1];
                  if (v239 == v234)
                  {
                    if (k[2] == v234)
                    {
                      v245 = k[3];
                      if (((*(8 * v245) >> 29) & 0x1FFFFFF) < v232)
                      {
                        *(8 * v245) = v231;
                      }

                      v226 = v289;
                      goto LABEL_593;
                    }
                  }

                  else
                  {
                    if (v235.u32[0] > 1uLL)
                    {
                      if (v239 >= *&buf[1])
                      {
                        v239 %= *&buf[1];
                      }
                    }

                    else
                    {
                      v239 &= *&buf[1] - 1;
                    }

                    if (v239 != v236)
                    {
                      break;
                    }
                  }
                }
              }

              v240 = vcnt_s8(buf[1]);
              v240.i16[0] = vaddlv_u8(v240);
              if (v240.u32[0] > 1uLL)
              {
                v241 = (32 * (*v227 & 0xFFFC000 | ((*v227 & 0x3FFF) << 28) | (*v227 >> 55) & 0x1F)) | (*v227 >> 60) & 3;
                if (v234 >= *&buf[1])
                {
                  v241 = v234 % *&buf[1];
                }
              }

              else
              {
                v241 = (*&buf[1] - 1) & v234;
              }

              v242 = *(*buf + 8 * v241);
              if (v242)
              {
                v243 = *v242;
                if (*v242)
                {
                  do
                  {
                    v244 = v243[1];
                    if (v244 == v234)
                    {
                      if (v243[2] == v234)
                      {
                        v243[3] = 0;
                        std::__allocate_at_least[abi:nn200100]<std::allocator<CA::WindowServer::Display::Mode>>(1uLL);
                      }
                    }

                    else
                    {
                      if (v240.u32[0] > 1uLL)
                      {
                        if (v244 >= *&buf[1])
                        {
                          v244 %= *&buf[1];
                        }
                      }

                      else
                      {
                        v244 &= *&buf[1] - 1;
                      }

                      if (v244 != v241)
                      {
                        break;
                      }
                    }

                    v243 = *v243;
                  }

                  while (v243);
                }
              }
            }

            operator new();
          }
        }

LABEL_593:
        ++v227;
      }

      while (v227 != v226);
    }

    atomic_store(CAHostTimeWithTime(65536.0 / v223), v6 + 3588);
    atomic_store(CAHostTimeWithTime(65536.0 / v228), v6 + 3587);
    std::__introsort<std::_ClassicAlgPolicy,CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::$_0 &,CA::WindowServer::Display::Mode*,false>(0, 0, 0, 1);
    DWORD2(v294[0]) = 0;
    *&v294[0] = 0;
    v246 = buf[2];
    v222 = theDict;
    if (buf[2])
    {
      do
      {
        v247 = *v246;
        operator delete(v246);
        v246 = v247;
      }

      while (v247);
    }

    v248 = buf[0];
    buf[0] = 0;
    if (v248)
    {
      operator delete(v248);
    }
  }

  else
  {
    atomic_store(0, v6 + 3588);
    atomic_store(0, v6 + 3587);
  }

  CA::WindowServer::Display::ModeSet::sort(a2);
  std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(v291[0]);
  if (v222)
  {
    CFRelease(v222);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

const void *CA::WindowServer::dictionary_dict(CA::WindowServer *this, const __CFDictionary *a2, const __CFString *a3)
{
  Value = CFDictionaryGetValue(this, a2);
  if (!Value)
  {
    return 0;
  }

  v4 = Value;
  v5 = CFGetTypeID(Value);
  if (v5 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return v4;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::$_0 &,CA::WindowServer::Display::Mode*,false>(unint64_t result, unint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  j = v7;
  while (1)
  {
    v7 = j;
    v10 = a2 - j;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::$_0 &,CA::WindowServer::Display::Mode*,0>(j, j + 1, a2 - 1);
        case 4:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::$_0 &,CA::WindowServer::Display::Mode*,0>(j, j + 1, j + 2, a2 - 1);
        case 5:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::$_0 &,CA::WindowServer::Display::Mode*,0>(j, j + 1, j + 2, j + 3, a2 - 1);
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v73 = *v8;
        v74 = *v8 & 0x3FFF;
        v75 = *j;
        v76 = *j & 0x3FFF;
        if (v74 > v76 || v74 >= v76 && ((v161 = (v73 >> 14) & 0x3FFF, v162 = (v75 >> 14) & 0x3FFF, v161 > v162) || v161 >= v162 && ((v73 >> 29) & 0x1FFFFFF) > ((v75 >> 29) & 0x1FFFFFF)))
        {
          *j = v73;
          *v8 = v75;
        }

        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (j != a2)
      {
        v94 = (v10 - 2) >> 1;
        v95 = v94;
        do
        {
          v96 = v95;
          if (v94 >= v95)
          {
            v97 = (2 * v95) | 1;
            v98 = &j[v97];
            if (2 * v96 + 2 < v10)
            {
              v99 = v98[1];
              v100 = *v98;
              v101 = *v98 & 0x3FFF;
              result = v99 & 0x3FFF;
              if (v101 > (v99 & 0x3FFF) || v101 >= result && ((v102 = (v100 >> 14) & 0x3FFF, result = (v99 >> 14) & 0x3FFF, v102 > result) || ((v103 = (v100 >> 29) & 0x1FFFFFF, v104 = (v99 >> 29) & 0x1FFFFFF, v102 >= result) ? (v105 = v103 > v104) : (v105 = 0), v105)))
              {
                ++v98;
                v97 = 2 * v96 + 2;
              }
            }

            v106 = *v98;
            v107 = *v98 & 0x3FFF;
            v108 = j[v96];
            v109 = v108 & 0x3FFF;
            if (v107 <= v109)
            {
              if (v107 < v109 || (v110 = (v106 >> 14) & 0x3FFF, v111 = (v108 >> 14) & 0x3FFF, v110 <= v111) && (v110 >= v111 ? (v112 = ((v106 >> 29) & 0x1FFFFFF) > ((v108 >> 29) & 0x1FFFFFF)) : (v112 = 0), !v112))
              {
                j[v96] = v106;
                if (v94 >= v97)
                {
                  v114 = (v108 >> 14) & 0x3FFF;
                  while (1)
                  {
                    v115 = 2 * v97;
                    v97 = (2 * v97) | 1;
                    v113 = &j[v97];
                    v116 = v115 + 2;
                    if (v116 < v10)
                    {
                      v117 = v113[1];
                      v118 = *v113;
                      v119 = *v113 & 0x3FFF;
                      if (v119 > (v117 & 0x3FFF) || v119 >= (v117 & 0x3FFF) && ((v120 = (v118 >> 14) & 0x3FFF, v121 = (v117 >> 14) & 0x3FFF, v120 > v121) || ((v122 = (v118 >> 29) & 0x1FFFFFF, v123 = (v117 >> 29) & 0x1FFFFFF, v120 >= v121) ? (v124 = v122 > v123) : (v124 = 0), v124)))
                      {
                        ++v113;
                        v97 = v116;
                      }
                    }

                    result = *v113;
                    v125 = *v113 & 0x3FFF;
                    if (v125 > v109)
                    {
                      break;
                    }

                    if (v125 >= v109)
                    {
                      v126 = (result >> 14) & 0x3FFF;
                      if (v126 > v114)
                      {
                        break;
                      }

                      if (v126 >= v114 && ((result >> 29) & 0x1FFFFFF) > ((v108 >> 29) & 0x1FFFFFF))
                      {
                        break;
                      }
                    }

                    *v98 = result;
                    v98 = v113;
                    if (v94 < v97)
                    {
                      goto LABEL_187;
                    }
                  }
                }

                v113 = v98;
LABEL_187:
                *v113 = v108;
              }
            }
          }

          v95 = v96 - 1;
        }

        while (v96);
        do
        {
          v128 = 0;
          v129 = *j;
          v130 = j;
          do
          {
            v131 = v130;
            v132 = &v130[v128];
            v130 = v132 + 1;
            v133 = 2 * v128;
            v128 = (2 * v128) | 1;
            v134 = v133 + 2;
            if (v134 < v10)
            {
              v137 = v132[2];
              v135 = v132 + 2;
              v136 = v137;
              v138 = *(v135 - 1);
              result = v138 & 0x3FFF;
              v139 = v137 & 0x3FFF;
              if ((v138 & 0x3FFF) > v139 || result >= v139 && ((result = (v138 >> 14) & 0x3FFF, v140 = (v136 >> 14) & 0x3FFF, result > v140) || ((v141 = (v138 >> 29) & 0x1FFFFFF, v142 = (v136 >> 29) & 0x1FFFFFF, result >= v140) ? (v143 = v141 > v142) : (v143 = 0), v143)))
              {
                v130 = v135;
                v128 = v134;
              }
            }

            *v131 = *v130;
          }

          while (v128 <= ((v10 - 2) >> 1));
          if (v130 == --a2)
          {
            *v130 = v129;
          }

          else
          {
            *v130 = *a2;
            *a2 = v129;
            v144 = (v130 - j + 8) >> 3;
            v145 = v144 - 2;
            if (v144 >= 2)
            {
              v146 = v145 >> 1;
              v147 = &j[v145 >> 1];
              v148 = *v147;
              v149 = *v147 & 0x3FFF;
              v150 = *v130;
              v151 = *v130 & 0x3FFF;
              if (v149 > v151 || v149 >= v151 && ((v153 = (v148 >> 14) & 0x3FFF, v154 = (v150 >> 14) & 0x3FFF, v153 > v154) || (v153 >= v154 ? (v155 = ((v148 >> 29) & 0x1FFFFFF) > ((v150 >> 29) & 0x1FFFFFF)) : (v155 = 0), v155)))
              {
                *v130 = v148;
                if (v145 >= 2)
                {
                  v156 = (v150 >> 14) & 0x3FFF;
                  while (1)
                  {
                    v157 = v146 - 1;
                    v146 = (v146 - 1) >> 1;
                    v152 = &j[v146];
                    v158 = *v152;
                    result = *v152 & 0x3FFF;
                    if (result <= v151)
                    {
                      if (result < v151)
                      {
                        break;
                      }

                      result = (v158 >> 14) & 0x3FFF;
                      v159 = result >= v156;
                      if (result <= v156)
                      {
                        result = (v158 >> 29) & 0x1FFFFFF;
                        if (!v159 || result <= ((v150 >> 29) & 0x1FFFFFF))
                        {
                          break;
                        }
                      }
                    }

                    *v147 = v158;
                    v147 = &j[v146];
                    if (v157 <= 1)
                    {
                      goto LABEL_244;
                    }
                  }
                }

                v152 = v147;
LABEL_244:
                *v152 = v150;
              }
            }
          }

          v65 = v10-- <= 2;
        }

        while (!v65);
      }

      return result;
    }

    v11 = v10 >> 1;
    v12 = &j[v10 >> 1];
    if (v10 < 0x81)
    {
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::$_0 &,CA::WindowServer::Display::Mode*,0>(&v7[v10 >> 1], v7, a2 - 1);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::$_0 &,CA::WindowServer::Display::Mode*,0>(v7, &v7[v10 >> 1], a2 - 1);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::$_0 &,CA::WindowServer::Display::Mode*,0>(v7 + 1, v12 - 1, a2 - 2);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::$_0 &,CA::WindowServer::Display::Mode*,0>(v7 + 2, &v7[v11 + 1], a2 - 3);
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::$_0 &,CA::WindowServer::Display::Mode*,0>(v12 - 1, v12, &v7[v11 + 1]);
      v13 = *v7;
      *v7 = *v12;
      *v12 = v13;
    }

    --a3;
    v14 = *v7;
    v15 = (*v7 >> 29) & 0x1FFFFFF;
    if (a4)
    {
      v16 = v14 & 0x3FFF;
LABEL_22:
      v20 = (v14 >> 14) & 0x3FFF;
      for (i = v7 + 1; ; ++i)
      {
        v22 = *i;
        v23 = *i & 0x3FFF;
        if (v23 <= v16)
        {
          if (v23 < v16)
          {
            break;
          }

          v24 = (v22 >> 14) & 0x3FFF;
          if (v24 <= v20 && (v24 < v20 || ((v22 >> 29) & 0x1FFFFFF) <= v15))
          {
            break;
          }
        }
      }

      v25 = i - 1;
      if (i - 1 == v7)
      {
        v28 = a2;
        if (i < a2)
        {
          v31 = *v8;
          v32 = *v8 & 0x3FFF;
          v28 = a2 - 1;
          if (v32 <= v16)
          {
            v28 = a2 - 1;
            do
            {
              if (v32 < v16)
              {
                goto LABEL_44;
              }

              v33 = (v31 >> 14) & 0x3FFF;
              if (v33 > v20)
              {
                break;
              }

              if (v33 >= v20)
              {
                if (i >= v28 || ((v31 >> 29) & 0x1FFFFFF) > v15)
                {
                  break;
                }
              }

              else
              {
LABEL_44:
                if (i >= v28)
                {
                  break;
                }
              }

              v34 = *--v28;
              v31 = v34;
              LODWORD(v32) = v34 & 0x3FFF;
            }

            while (v32 <= v16);
          }
        }
      }

      else
      {
        v26 = *v8;
        v27 = *v8 & 0x3FFF;
        v28 = a2 - 1;
        if (v27 <= v16)
        {
          v28 = a2 - 1;
          do
          {
            if (v27 >= v16)
            {
              v29 = (v26 >> 14) & 0x3FFF;
              if (v29 > v20 || v29 >= v20 && ((v26 >> 29) & 0x1FFFFFF) > v15)
              {
                break;
              }
            }

            v30 = *--v28;
            v26 = v30;
            LODWORD(v27) = v30 & 0x3FFF;
          }

          while (v27 <= v16);
        }
      }

      if (i < v28)
      {
        v35 = *v28;
        v36 = i;
        v37 = v28;
        do
        {
          *v36++ = v35;
          *v37 = v22;
          while (1)
          {
            v22 = *v36;
            v38 = *v36 & 0x3FFF;
            if (v38 <= v16)
            {
              if (v38 < v16)
              {
                break;
              }

              v39 = (v22 >> 14) & 0x3FFF;
              if (v39 <= v20 && (v39 < v20 || ((v22 >> 29) & 0x1FFFFFF) <= v15))
              {
                break;
              }
            }

            ++v36;
          }

          v25 = v36 - 1;
          while (1)
          {
            v40 = *--v37;
            v35 = v40;
            v41 = v40 & 0x3FFF;
            if (v41 > v16)
            {
              break;
            }

            if (v41 >= v16)
            {
              v42 = (v35 >> 14) & 0x3FFF;
              if (v42 > v20 || v42 >= v20 && ((v35 >> 29) & 0x1FFFFFF) > v15)
              {
                break;
              }
            }
          }
        }

        while (v36 < v37);
      }

      if (v25 != v7)
      {
        *v7 = *v25;
      }

      *v25 = v14;
      if (i < v28)
      {
        goto LABEL_70;
      }

      v43 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::$_0 &,CA::WindowServer::Display::Mode*>(v7, v25);
      j = v25 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::$_0 &,CA::WindowServer::Display::Mode*>(v25 + 1, a2);
      if (result)
      {
        a2 = v25;
        if (v43)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v43)
      {
LABEL_70:
        result = std::__introsort<std::_ClassicAlgPolicy,CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::$_0 &,CA::WindowServer::Display::Mode*,false>(v7, v25, a3, a4 & 1);
        a4 = 0;
        j = v25 + 1;
      }
    }

    else
    {
      v17 = *(v7 - 1);
      v16 = v14 & 0x3FFF;
      if ((v17 & 0x3FFF) > v16)
      {
        goto LABEL_22;
      }

      if ((v17 & 0x3FFF) >= v16)
      {
        v18 = (v17 >> 14) & 0x3FFF;
        v19 = (v14 >> 14) & 0x3FFF;
        if (v18 > v19 || v18 >= v19 && ((v17 >> 29) & 0x1FFFFFF) > v15)
        {
          goto LABEL_22;
        }
      }

      v44 = *v8;
      v45 = *v8 & 0x3FFF;
      v46 = v16 >= v45;
      if (v16 > v45)
      {
        v47 = (v14 >> 14) & 0x3FFF;
LABEL_73:
        j = v7;
        while (1)
        {
          v49 = j[1];
          ++j;
          v48 = v49;
          v50 = v49 & 0x3FFF;
          if (v16 > v50)
          {
            break;
          }

          if (v16 >= v50)
          {
            v51 = (v48 >> 14) & 0x3FFF;
            if (v47 > v51 || v47 >= v51 && v15 > ((v48 >> 29) & 0x1FFFFFF))
            {
              break;
            }
          }
        }

        goto LABEL_79;
      }

      v47 = (v14 >> 14) & 0x3FFF;
      if (v46)
      {
        v72 = (v44 >> 14) & 0x3FFF;
        if (v47 > v72 || v47 >= v72 && v15 > ((v44 >> 29) & 0x1FFFFFF))
        {
          goto LABEL_73;
        }
      }

      for (j = v7 + 1; j < a2; ++j)
      {
        v67 = *j;
        v68 = *j & 0x3FFF;
        if (v16 > v68)
        {
          break;
        }

        if (v16 >= v68)
        {
          v69 = (v67 >> 14) & 0x3FFF;
          if (v47 > v69)
          {
            break;
          }

          v70 = (v67 >> 29) & 0x1FFFFFF;
          if (v47 >= v69 && v15 > v70)
          {
            break;
          }
        }
      }

LABEL_79:
      k = a2;
      if (j < a2)
      {
        v53 = (v14 >> 14) & 0x3FFF;
        for (k = a2 - 1; ; --k)
        {
          if (v16 <= (v44 & 0x3FFF))
          {
            if (v16 < (v44 & 0x3FFF))
            {
              break;
            }

            v54 = (v44 >> 14) & 0x3FFF;
            if (v53 <= v54 && (v53 < v54 || v15 <= ((v44 >> 29) & 0x1FFFFFF)))
            {
              break;
            }
          }

          v55 = *(k - 1);
          v44 = v55;
        }
      }

      if (j < k)
      {
        v56 = (v14 >> 14) & 0x3FFF;
        v57 = *j;
        v58 = *k;
        do
        {
          *j = v58;
          *k = v57;
          while (1)
          {
            v59 = j[1];
            ++j;
            v57 = v59;
            v60 = v59 & 0x3FFF;
            if (v16 > v60)
            {
              break;
            }

            if (v16 >= v60)
            {
              v61 = (v57 >> 14) & 0x3FFF;
              if (v56 > v61 || v56 >= v61 && v15 > ((v57 >> 29) & 0x1FFFFFF))
              {
                break;
              }
            }
          }

          while (1)
          {
            do
            {
              v62 = *--k;
              v58 = v62;
              v63 = v62 & 0x3FFF;
            }

            while (v16 > v63);
            if (v16 < v63)
            {
              break;
            }

            v64 = (v58 >> 14) & 0x3FFF;
            if (v56 <= v64)
            {
              v65 = v56 >= v64 && v15 > ((v58 >> 29) & 0x1FFFFFF);
              if (!v65)
              {
                break;
              }
            }
          }
        }

        while (j < k);
      }

      v66 = j - 1;
      if (j - 1 != v7)
      {
        *v7 = *v66;
      }

      a4 = 0;
      *v66 = v14;
    }
  }

  v77 = j + 1;
  v79 = j == a2 || v77 == a2;
  if ((a4 & 1) == 0)
  {
    if (v79)
    {
      return result;
    }

    while (1)
    {
      v163 = v7;
      v7 = v77;
      v165 = *v163;
      v164 = v163[1];
      v166 = v164 & 0x3FFF;
      v167 = *v163 & 0x3FFF;
      if (v166 > v167)
      {
        break;
      }

      if (v166 >= v167)
      {
        v168 = (v164 >> 14) & 0x3FFF;
        v175 = (v165 >> 14) & 0x3FFF;
        if (v168 > v175)
        {
          goto LABEL_256;
        }

        if (v168 >= v175 && ((v164 >> 29) & 0x1FFFFFF) > ((v165 >> 29) & 0x1FFFFFF))
        {
          goto LABEL_256;
        }
      }

LABEL_270:
      v77 = v7 + 1;
      if (v7 + 1 == a2)
      {
        return result;
      }
    }

    v168 = (v164 >> 14) & 0x3FFF;
    do
    {
      do
      {
LABEL_256:
        v169 = v163;
        v170 = v165;
        v171 = *--v163;
        v165 = v171;
        v163[2] = v170;
        v172 = v171 & 0x3FFF;
      }

      while (v166 > v172);
      if (v166 < v172)
      {
        break;
      }

      v173 = (v165 >> 14) & 0x3FFF;
    }

    while (v168 > v173 || v168 >= v173 && ((v164 >> 29) & 0x1FFFFFF) > ((v165 >> 29) & 0x1FFFFFF));
    *v169 = v164;
    goto LABEL_270;
  }

  if (!v79)
  {
    v80 = 0;
    v81 = j;
    do
    {
      v82 = v81;
      v81 = v77;
      v84 = *v82;
      v83 = v82[1];
      v85 = v83 & 0x3FFF;
      v86 = *v82 & 0x3FFF;
      if (v85 > v86 || v85 >= v86 && ((v91 = (v83 >> 14) & 0x3FFF, v92 = (v84 >> 14) & 0x3FFF, v91 > v92) || (v91 >= v92 ? (v93 = ((v83 >> 29) & 0x1FFFFFF) > ((v84 >> 29) & 0x1FFFFFF)) : (v93 = 0), v93)))
      {
        v82[1] = v84;
        v87 = j;
        if (v82 != j)
        {
          v88 = (v83 >> 14) & 0x3FFF;
          v89 = v80;
          while (1)
          {
            v90 = *(j + v89 - 8);
            result = v90 & 0x3FFF;
            if (v85 <= (v90 & 0x3FFF))
            {
              if (v85 < result)
              {
                break;
              }

              result = (v90 >> 14) & 0x3FFF;
              if (v88 <= result)
              {
                if (v88 < result)
                {
                  v87 = (j + v89);
                  goto LABEL_163;
                }

                result = (v90 >> 29) & 0x1FFFFFF;
                if (((v83 >> 29) & 0x1FFFFFF) <= result)
                {
                  break;
                }
              }
            }

            --v82;
            *(j + v89) = v90;
            v89 -= 8;
            if (!v89)
            {
              v87 = j;
              goto LABEL_163;
            }
          }

          v87 = v82;
        }

LABEL_163:
        *v87 = v83;
      }

      v77 = v81 + 1;
      v80 += 8;
    }

    while (v81 + 1 != a2);
  }

  return result;
}

unint64_t *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::$_0 &,CA::WindowServer::Display::Mode*,0>(unint64_t *result, unint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *a2 & 0x3FFF;
  v5 = *result;
  v6 = *result & 0x3FFF;
  if (v4 > v6 || v4 >= v6 && ((v9 = (v3 >> 14) & 0x3FFF, v10 = (v5 >> 14) & 0x3FFF, v9 > v10) || (v9 >= v10 ? (v11 = ((v3 >> 29) & 0x1FFFFFF) > ((v5 >> 29) & 0x1FFFFFF)) : (v11 = 0), v11)))
  {
    v7 = *a3;
    v8 = *a3 & 0x3FFF;
    if (v8 > v4 || v8 >= v4 && ((v22 = (v7 >> 14) & 0x3FFF, v23 = (v3 >> 14) & 0x3FFF, v22 > v23) || v22 >= v23 && ((v7 >> 29) & 0x1FFFFFF) > ((v3 >> 29) & 0x1FFFFFF)))
    {
      *result = v7;
    }

    else
    {
      *result = v3;
      *a2 = v5;
      v18 = *a3;
      v19 = *a3 & 0x3FFF;
      if (v19 <= v6)
      {
        if (v19 < v6)
        {
          return result;
        }

        v26 = (v18 >> 14) & 0x3FFF;
        v27 = (v5 >> 14) & 0x3FFF;
        if (v26 <= v27 && (v26 < v27 || ((v18 >> 29) & 0x1FFFFFF) <= ((v5 >> 29) & 0x1FFFFFF)))
        {
          return result;
        }
      }

      *a2 = v18;
    }

    *a3 = v5;
    return result;
  }

  v12 = *a3;
  v13 = *a3 & 0x3FFF;
  if (v13 > v4 || v13 >= v4 && ((v20 = (v12 >> 14) & 0x3FFF, v21 = (v3 >> 14) & 0x3FFF, v20 > v21) || v20 >= v21 && ((v12 >> 29) & 0x1FFFFFF) > ((v3 >> 29) & 0x1FFFFFF)))
  {
    *a2 = v12;
    *a3 = v3;
    v14 = *a2;
    v15 = *a2 & 0x3FFF;
    v16 = *result;
    v17 = *result & 0x3FFF;
    if (v15 > v17 || v15 >= v17 && ((v24 = (v14 >> 14) & 0x3FFF, v25 = (v16 >> 14) & 0x3FFF, v24 > v25) || v24 >= v25 && ((v14 >> 29) & 0x1FFFFFF) > ((v16 >> 29) & 0x1FFFFFF)))
    {
      *result = v14;
      *a2 = v16;
    }
  }

  return result;
}

unint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::$_0 &,CA::WindowServer::Display::Mode*,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::$_0 &,CA::WindowServer::Display::Mode*,0>(a1, a2, a3);
  v9 = *a4;
  v10 = *a4 & 0x3FFF;
  v11 = *a3;
  v12 = *a3 & 0x3FFF;
  if (v10 > v12 || v10 >= v12 && ((v21 = (v9 >> 14) & 0x3FFF, v22 = (v11 >> 14) & 0x3FFF, v21 > v22) || (v21 >= v22 ? (v23 = ((v9 >> 29) & 0x1FFFFFF) > ((v11 >> 29) & 0x1FFFFFF)) : (v23 = 0), v23)))
  {
    *a3 = v9;
    *a4 = v11;
    v13 = *a3;
    v14 = *a3 & 0x3FFF;
    v15 = *a2;
    v16 = *a2 & 0x3FFF;
    if (v14 > v16 || v14 >= v16 && ((v24 = (v13 >> 14) & 0x3FFF, v25 = (v15 >> 14) & 0x3FFF, v24 > v25) || v24 >= v25 && ((v13 >> 29) & 0x1FFFFFF) > ((v15 >> 29) & 0x1FFFFFF)))
    {
      *a2 = v13;
      *a3 = v15;
      v17 = *a2;
      v18 = *a2 & 0x3FFF;
      v19 = *a1;
      v20 = *a1 & 0x3FFF;
      if (v18 > v20 || v18 >= v20 && ((v26 = (v17 >> 14) & 0x3FFF, v27 = (v19 >> 14) & 0x3FFF, v26 > v27) || v26 >= v27 && ((v17 >> 29) & 0x1FFFFFF) > ((v19 >> 29) & 0x1FFFFFF)))
      {
        *a1 = v17;
        *a2 = v19;
      }
    }
  }

  return result;
}

unint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::$_0 &,CA::WindowServer::Display::Mode*,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::$_0 &,CA::WindowServer::Display::Mode*,0>(a1, a2, a3, a4);
  v11 = *a5;
  v12 = *a5 & 0x3FFF;
  v13 = *a4;
  v14 = *a4 & 0x3FFF;
  if (v12 > v14 || v12 >= v14 && ((v27 = (v11 >> 14) & 0x3FFF, v28 = (v13 >> 14) & 0x3FFF, v27 > v28) || (v27 >= v28 ? (v29 = ((v11 >> 29) & 0x1FFFFFF) > ((v13 >> 29) & 0x1FFFFFF)) : (v29 = 0), v29)))
  {
    *a4 = v11;
    *a5 = v13;
    v15 = *a4;
    v16 = *a4 & 0x3FFF;
    v17 = *a3;
    v18 = *a3 & 0x3FFF;
    if (v16 > v18 || v16 >= v18 && ((v30 = (v15 >> 14) & 0x3FFF, v31 = (v17 >> 14) & 0x3FFF, v30 > v31) || v30 >= v31 && ((v15 >> 29) & 0x1FFFFFF) > ((v17 >> 29) & 0x1FFFFFF)))
    {
      *a3 = v15;
      *a4 = v17;
      v19 = *a3;
      v20 = *a3 & 0x3FFF;
      v21 = *a2;
      v22 = *a2 & 0x3FFF;
      if (v20 > v22 || v20 >= v22 && ((v32 = (v19 >> 14) & 0x3FFF, v33 = (v21 >> 14) & 0x3FFF, v32 > v33) || v32 >= v33 && ((v19 >> 29) & 0x1FFFFFF) > ((v21 >> 29) & 0x1FFFFFF)))
      {
        *a2 = v19;
        *a3 = v21;
        v23 = *a2;
        v24 = *a2 & 0x3FFF;
        v25 = *a1;
        v26 = *a1 & 0x3FFF;
        if (v24 > v26 || v24 >= v26 && ((v34 = (v23 >> 14) & 0x3FFF, v35 = (v25 >> 14) & 0x3FFF, v34 > v35) || v34 >= v35 && ((v23 >> 29) & 0x1FFFFFF) > ((v25 >> 29) & 0x1FFFFFF)))
        {
          *a1 = v23;
          *a2 = v25;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::$_0 &,CA::WindowServer::Display::Mode*>(unint64_t *a1, unint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::$_0 &,CA::WindowServer::Display::Mode*,0>(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::$_0 &,CA::WindowServer::Display::Mode*,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::$_0 &,CA::WindowServer::Display::Mode*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      v7 = *a1 & 0x3FFF;
      if ((v5 & 0x3FFF) > v7 || (v5 & 0x3FFF) >= v7 && ((v22 = (v5 >> 14) & 0x3FFF, v23 = (v6 >> 14) & 0x3FFF, v22 > v23) || v22 >= v23 && ((v5 >> 29) & 0x1FFFFFF) > ((v6 >> 29) & 0x1FFFFFF)))
      {
        *a1 = v5;
        *(a2 - 1) = v6;
      }

      return 1;
    }
  }

  v8 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,CA::WindowServer::IOMFBDisplay::update_digital_modes(CA::WindowServer::Display::ModeSet &,CA::WindowServer::Display::Mode &,__CFArray const*,__CFArray const*)::$_0 &,CA::WindowServer::Display::Mode*,0>(a1, a1 + 1, a1 + 2);
  v9 = a1 + 3;
  if (a1 + 3 != a2)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *v9;
      v13 = *v9 & 0x3FFF;
      v14 = *v8;
      v15 = *v8 & 0x3FFF;
      if (v13 <= v15)
      {
        if (v13 < v15)
        {
          goto LABEL_32;
        }

        v16 = (v12 >> 14) & 0x3FFF;
        v20 = (v14 >> 14) & 0x3FFF;
        if (v16 <= v20 && (v16 < v20 || ((v12 >> 29) & 0x1FFFFFF) <= ((v14 >> 29) & 0x1FFFFFF)))
        {
          goto LABEL_32;
        }
      }

      else
      {
        v16 = (v12 >> 14) & 0x3FFF;
      }

      *v9 = v14;
      v17 = v10;
      do
      {
        v18 = *(a1 + v17 + 8);
        if (v13 <= (v18 & 0x3FFF))
        {
          if (v13 < (v18 & 0x3FFF))
          {
            goto LABEL_24;
          }

          v19 = (v18 >> 14) & 0x3FFF;
          if (v16 <= v19)
          {
            if (v16 < v19)
            {
              v8 = (a1 + v17 + 16);
              goto LABEL_24;
            }

            if (((v12 >> 29) & 0x1FFFFFF) <= ((v18 >> 29) & 0x1FFFFFF))
            {
              goto LABEL_24;
            }
          }
        }

        --v8;
        *(a1 + v17 + 16) = v18;
        v17 -= 8;
      }

      while (v17 != -16);
      v8 = a1;
LABEL_24:
      *v8 = v12;
      if (++v11 == 8)
      {
        return v9 + 1 == a2;
      }

LABEL_32:
      v8 = v9;
      v10 += 8;
      ++v9;
    }

    while (v9 != a2);
  }

  return 1;
}

uint64_t CA::WindowServer::IOMFBDisplay::set_postprocess_timing_info(CA::WindowServer::IOMFBDisplay *this, int a2, uint64_t a3, uint64_t a4)
{
  pthread_mutex_lock((this + 29136));
  v8 = *(this + 3650);
  v9 = *(this + 3651);
  while (v8 != v9 && *(v8 + 16) != a2)
  {
    v8 += 24;
  }

  if (v8 != v9)
  {
    if (a3)
    {
      *v8 = a3;
    }

    if (a4)
    {
      *(v8 + 8) = a4;
    }
  }

  return pthread_mutex_unlock((this + 29136));
}

void CA::WindowServer::IOMFBDisplay::announce_next_swap_timestamp(CA::WindowServer::IOMFBDisplay *this, CA::Render::Update *a2, double a3)
{
  if (*(this + 3684) <= 0.0)
  {
    v5 = *(a2 + 10);
    v6 = v5 + (*(*this + 776))(this) * -0.125;
    if ((*(*this + 144))(this) != 2 || v6 - a3 >= (*(*this + 760))(this))
    {
      v7 = CAHostTimeWithTime(v6);
      v8 = *(this + 3212);

      MEMORY[0x1EEE11950](v8, v7);
    }
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::update_power_state_locked(BOOL)::$_0::operator()(unsigned __int8 **a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  result = CA::IOMobileFramebuffer::swap_wait((*a1 + 25696));
  if (result)
  {
    v4 = result;
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v5 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      v10 = 67109120;
      v11 = v4;
      _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "Wait Power On failed with error 0x%x. Retrying...", &v10, 8u);
    }

    result = CA::IOMobileFramebuffer::swap_wait((v2 + 25696));
    if (result)
    {
      v6 = result;
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v7 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_FAULT))
      {
        v10 = 67109120;
        v11 = v6;
        _os_log_fault_impl(&dword_183AA6000, v7, OS_LOG_TYPE_FAULT, "Wait Power On failed with error 0x%x", &v10, 8u);
      }

      result = sleep(0x1Eu);
    }
  }

  v8 = a1[1];
  v9 = atomic_load(a1[2]);
  atomic_store(v9, v8);
  return result;
}

void CA::WindowServer::IOMFBDisplay::SecureIndicator::set_state(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (x_log_get_secure_indicators(void)::once != -1)
  {
    dispatch_once(&x_log_get_secure_indicators(void)::once, &__block_literal_global_5775);
  }

  v4 = x_log_get_secure_indicators(void)::log;
  if (os_log_type_enabled(x_log_get_secure_indicators(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 8);
    if (v5 > 4)
    {
      v6 = "Unknown SILState Value";
    }

    else
    {
      v6 = off_1E6DFA248[v5];
    }

    v7 = off_1E6DFA248[a2];
    v8 = 136315394;
    v9 = v6;
    v10 = 2080;
    v11 = v7;
    _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "SIL State %s -> %s", &v8, 0x16u);
  }

  *(a1 + 8) = a2;
}

void CA::WindowServer::IOMFBDisplay::post_secure_indicator_statistics_power_log(CA::WindowServer::IOMFBDisplay *this)
{
  os_unfair_lock_lock(this + 7142);
  if (*(this + 7162))
  {
    v2 = MEMORY[0x1E695E9D8];
    v3 = MEMORY[0x1E695E9E8];
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v5 = CFDictionaryCreateMutable(0, 0, v2, v3);
    CA_CFDictionarySetLongLong(Mutable, @"indicator_start_time", *(this + 3580));
    v6 = mach_absolute_time();
    CA_CFDictionarySetLongLong(Mutable, @"indicator_end_time", v6);
    CA_CFDictionarySetInt(Mutable, @"indicator_frame_count", *(this + 7162));
    v7 = *(this + 3572);
    v8 = *(this + 3573);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7;
        v10 = v7[1];
        if (MEMORY[0x1EEE91100])
        {
          v11 = SILManagerIndicatorNameFromType();
        }

        else
        {
          v11 = "Unknown Indicator";
          if (v9 <= 3)
          {
            v11 = off_1E6DED9B0[v9];
          }
        }

        v12 = CFStringCreateWithCString(0, v11, 0x8000100u);
        if (v12)
        {
          v13 = v12;
          CA_CFDictionarySetInt(v5, v12, v10);
          CFRelease(v13);
        }

        v7 += 2;
      }

      while (v7 != v8);
      v7 = *(this + 3572);
    }

    *(this + 3573) = v7;
    *(this + 7162) = 0;
    os_unfair_lock_unlock(this + 7142);
    if (CA::WindowServer::IOMFBDisplay::post_secure_indicator_statistics_power_log(void)::once[0] != -1)
    {
      dispatch_once(CA::WindowServer::IOMFBDisplay::post_secure_indicator_statistics_power_log(void)::once, &__block_literal_global_453_22761);
    }

    if (CA::WindowServer::IOMFBDisplay::post_secure_indicator_statistics_power_log(void)::secure_indicator_interval_telemetry_id)
    {
      pps_send_telemetry();
    }

    if (CA::WindowServer::IOMFBDisplay::post_secure_indicator_statistics_power_log(void)::secure_indicator_types_telemetry_id)
    {
      pps_send_telemetry();
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (Mutable)
    {

      CFRelease(Mutable);
    }
  }

  else
  {

    os_unfair_lock_unlock(this + 7142);
  }
}

void CA::WindowServer::IOMFBDisplay::reset_timings(os_unfair_lock_s *this)
{
  v2 = this + 6144;
  os_unfair_lock_lock(this + 6576);
  v2[438]._os_unfair_lock_opaque = 0;
  LOBYTE(v2[433]._os_unfair_lock_opaque) = 0;
  *&this[6584]._os_unfair_lock_opaque = 0u;
  *&this[6588]._os_unfair_lock_opaque = 0u;
  CA::WindowServer::IOMFBDisplay::initialize_timings(this);

  os_unfair_lock_unlock(this + 6576);
}

uint64_t ___ZN2CA12WindowServer12IOMFBDisplay42post_secure_indicator_statistics_power_logEv_block_invoke()
{
  CA::WindowServer::IOMFBDisplay::post_secure_indicator_statistics_power_log(void)::secure_indicator_interval_telemetry_id = pps_create_telemetry_identifier();
  result = pps_create_telemetry_identifier();
  CA::WindowServer::IOMFBDisplay::post_secure_indicator_statistics_power_log(void)::secure_indicator_types_telemetry_id = result;
  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::is_secure_indicator_frame_insecure(CA::WindowServer::IOMFBDisplay *this)
{
  v1 = *(this + 3220);
  if (v1 && (*v1 || (v2 = sil_mgr_instance(0, 0xFFFFFFFFLL), (*v1 = v2) != 0)) && MEMORY[0x1EEE910F0])
  {
    return SILManagerIndicatorFrameIsInsecure();
  }

  else
  {
    return 0;
  }
}

void CA::WindowServer::IOMFBDisplay::draw_debug_valid_positions_bounding_boxes(CA::WindowServer::IOMFBDisplay *this, __n128 a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3220);
  if (v2)
  {
    if (!*v2)
    {
      v4 = sil_mgr_instance(0, 0xFFFFFFFFLL);
      *v2 = v4;
      if (!v4)
      {
        return;
      }

      v2 = *(this + 3220);
    }

    if (!*(v2 + 8))
    {
      operator new();
    }

    a2.n128_u64[0] = *(v2 + 248);
    v46 = a2;
    memset(v52, 0, 24);
    v5.f64[1] = 0.0;
    v48 = 0u;
    if (MEMORY[0x1EEE91120])
    {
      valid = SILManagerIndicatorValidPositions();
      v7 = valid;
      if (valid)
      {
        std::vector<CGRect>::resize(v52, [valid count]);
        *&v5.f64[1] = v52[1];
        v8 = v52[0];
        v48 = *v52;
        v9 = v52[1];
        if (v52[1] != v52[0])
        {
          v10 = 0;
          if (((v52[1] - v52[0]) >> 5) <= 1)
          {
            v11 = 1;
          }

          else
          {
            v11 = (v52[1] - v52[0]) >> 5;
          }

          v12 = v52[0];
          do
          {
            [objc_msgSend(v7 objectAtIndexedSubscript:{v10++, *&v46), "getValue:", v12}];
            v12 += 32;
          }

          while (v11 != v10);
          v13.i64[0] = v46.n128_i32[0];
          v13.i64[1] = v46.n128_i32[1];
          v5 = vcvtq_f64_s64(v13);
          do
          {
            v14 = vmulq_f64(v8[1], v5);
            *v8 = vmulq_f64(*v8, v5);
            v8[1] = v14;
            v8 += 2;
          }

          while (v8 != v9);
        }
      }

      else
      {
        v5.f64[1] = 0.0;
        v48 = 0u;
      }
    }

    v5.f64[0] = *(v2 + 248);
    v47 = v5;
    v50 = 0;
    v51 = 0;
    v49 = 0;
    if (MEMORY[0x1EEE91118] && (v15 = SILManagerIndicatorValidDynamicPositions(), (v16 = v15) != 0))
    {
      std::vector<CGRect>::resize(&v49, [v15 count]);
      v17 = v49;
      v18 = v50;
      if (v50 != v49)
      {
        v19 = 0;
        if (((v50 - v49) >> 5) <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = (v50 - v49) >> 5;
        }

        v21 = v49;
        do
        {
          [objc_msgSend(v16 objectAtIndexedSubscript:{v19++, *&v47), "getValue:", v21}];
          v21 += 32;
        }

        while (v20 != v19);
        v22.i64[0] = SLODWORD(v47.f64[0]);
        v22.i64[1] = SHIDWORD(v47.f64[0]);
        v23 = vcvtq_f64_s64(v22);
        v24 = v17;
        do
        {
          v25 = vmulq_f64(v24[1], v23);
          *v24 = vmulq_f64(*v24, v23);
          v24[1] = v25;
          v24 += 2;
        }

        while (v24 != v18);
      }
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    v26.f64[1] = *(&v48 + 1);
    if (v48 != *(&v48 + 1) || v17 != v18)
    {
      v28 = *(v2 + 8);
      v28[8] = v28[6];
      v28[10] = 0x3C003C0000003C00;
      if (v48 != *(&v48 + 1))
      {
        v29 = v48;
        do
        {
          v30 = *(v2 + 8);
          v31 = *v29;
          v32 = v29[1];
          v29 += 2;
          *&v31.f64[0] = vcvt_f32_f64(v31);
          *&v53[0].f64[0] = vadd_f32(vcvt_f32_f64(v32), *&v31.f64[0]);
          v30[2] = *&v31.f64[0];
          CA::OGL::DebugRenderer::draw_rectangle_with_fill(v30, v53, v31.f64[0]);
        }

        while (v29 != *(&v48 + 1));
      }

      *(*(v2 + 8) + 80) = 0x3C0000003C003C00;
      if (v17 != v18)
      {
        v33 = v17;
        do
        {
          v34 = *(v2 + 8);
          v35 = *v33;
          v36 = v33[1];
          v33 += 2;
          *&v35.f64[0] = vcvt_f32_f64(v35);
          *&v53[0].f64[0] = vadd_f32(vcvt_f32_f64(v36), *&v35.f64[0]);
          v34[2] = *&v35.f64[0];
          CA::OGL::DebugRenderer::draw_rectangle_with_fill(v34, v53, v35.f64[0]);
        }

        while (v33 != v18);
      }

      v37 = *(this + 41);
      v38 = *(this + 52);
      LODWORD(v26.f64[0]) = *(this + 53);
      v40 = *(this + 40);
      v39 = *(this + 41);
      v54 = 0;
      v41 = SLODWORD(v26.f64[0]) / v39;
      *v26.f64 = v38 / v40;
      v53[0] = xmmword_183E20E00;
      v53[1] = 0u;
      v53[2] = xmmword_183E20E60;
      memset(&v53[3], 0, 32);
      v53[5] = xmmword_183E20E00;
      v53[6] = 0u;
      __asm { FMOV            V1.2D, #1.0 }

      v53[7] = xmmword_183E20E60;
      v53[8] = _Q1;
      v26.f64[0] = *v26.f64;
      CA::Transform::scale(v53, v26, v41, 1.0);
      CA::OGL::DebugRenderer::render(*(v2 + 8), *v37, v53, 1);
    }

    if (v17)
    {
      operator delete(v17);
    }

    if (v48)
    {
      operator delete(v48);
    }
  }
}

void sub_183DE4F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CA::WindowServer::IOMFBDisplay::print_secure_indicator_state(uint64_t result, X::Stream *this)
{
  v2 = *(result + 25760);
  if (v2)
  {
    v4 = result;
    if (*v2 || (result = sil_mgr_instance(0, 0xFFFFFFFFLL), (*v2 = result) != 0))
    {
      X::Stream::printf(this, "Secure Indicator State for Display %d\n", *(v4 + 24));
      v5 = 0;
      v6 = 0;
      v7 = *(v4 + 25760);
      do
      {
        if (*(v7 + v5 + 36) >= 0.0)
        {
          if (*(v7 + v5 + 24) > 2u)
          {
            if (MEMORY[0x1EEE91100])
            {
              SILManagerIndicatorNameFromType();
            }
          }

          result = X::Stream::printf(this, "  Region[%u] : %s %s ([%f %f] opacity %f frame: %u rot %f)\n");
        }

        else
        {
          result = X::Stream::printf(this, "  Region[%u] : inactive\n");
        }

        ++v6;
        v5 += 28;
      }

      while (v5 != 112);
    }
  }

  return result;
}

void CA::WindowServer::IOMFBDisplay::reset_secure_indicator_animating_deadline(CA::WindowServer::IOMFBDisplay *this)
{
  if (*(this + 3349) != 0.0)
  {
    *(this + 3349) = 0;
    if ((*(this + 160) & 0x100) != 0)
    {
      CA::WindowServer::IOMFBDisplay::update_server_source_frame_interval_range(this, this + 2356, *(this + 29573), 0);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CAFrameIntervalRequest>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(CAFrameIntervalRequest const&,CAFrameIntervalRequest const&),CAFrameIntervalRequest*>(uint64_t a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v11 = (a2 - 24);
      v12 = (*a3)((a1 + 24), a1);
      v13 = (*a3)(v11, (a1 + 24));
      if (v12)
      {
        if (v13)
        {
          v14 = *(a1 + 16);
          v15 = *a1;
          v16 = v11[1].n128_u64[0];
          *a1 = *v11;
          *(a1 + 16) = v16;
        }

        else
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v39;
          *(a1 + 40) = v38;
          if (!(*a3)(v11, (a1 + 24)))
          {
            return 1;
          }

          v14 = *(a1 + 40);
          v15 = *(a1 + 24);
          v40 = v11[1].n128_u64[0];
          *(a1 + 24) = *v11;
          *(a1 + 40) = v40;
        }

        *v11 = v15;
        v11[1].n128_u64[0] = v14;
        return 1;
      }

      if (!v13)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *(a1 + 24);
      v29 = v11[1].n128_u64[0];
      *(a1 + 24) = *v11;
      *(a1 + 40) = v29;
      *v11 = v28;
      v11[1].n128_u64[0] = v27;
LABEL_50:
      if ((*a3)((a1 + 24), a1))
      {
        v56 = *(a1 + 16);
        v57 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v57;
        *(a1 + 40) = v56;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(CAFrameIntervalRequest const&,CAFrameIntervalRequest const&),CAFrameIntervalRequest*,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v22 = (a2 - 24);
    v23 = (*a3)((a1 + 24), a1);
    v24 = (*a3)((a1 + 48), (a1 + 24));
    if ((v23 & 1) == 0)
    {
      if (v24)
      {
        v34 = *(a1 + 40);
        v35 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v35;
        *(a1 + 64) = v34;
        if ((*a3)((a1 + 24), a1))
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_47;
    }

    if (v24)
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *(a1 + 48);
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v49 = *(a1 + 16);
      v50 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v50;
      *(a1 + 40) = v49;
      if (!(*a3)((a1 + 48), (a1 + 24)))
      {
        goto LABEL_47;
      }

      v25 = *(a1 + 40);
      v26 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 40) = *(a1 + 64);
    }

    *(a1 + 48) = v26;
    *(a1 + 64) = v25;
LABEL_47:
    if (!(*a3)(v22, (a1 + 48)))
    {
      return 1;
    }

    v51 = *(a1 + 64);
    v52 = *(a1 + 48);
    v53 = v22[1].n128_u64[0];
    *(a1 + 48) = *v22;
    *(a1 + 64) = v53;
    *v22 = v52;
    v22[1].n128_u64[0] = v51;
    if (!(*a3)((a1 + 48), (a1 + 24)))
    {
      return 1;
    }

    v54 = *(a1 + 40);
    v55 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v55;
    *(a1 + 64) = v54;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 24);
    if ((*a3)((a2 - 24), a1))
    {
      v8 = *(a1 + 16);
      v9 = *a1;
      v10 = a2[-1].n128_i64[1];
      *a1 = *v7;
      *(a1 + 16) = v10;
      *v7 = v9;
      a2[-1].n128_u64[1] = v8;
    }

    return 1;
  }

LABEL_13:
  v17 = (a1 + 48);
  v18 = (*a3)((a1 + 24), a1);
  v19 = (*a3)((a1 + 48), (a1 + 24));
  if (v18)
  {
    if (v19)
    {
      v20 = *(a1 + 16);
      v21 = *a1;
      *a1 = *v17;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v41 = *(a1 + 16);
      v42 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v42;
      *(a1 + 40) = v41;
      if (!(*a3)((a1 + 48), (a1 + 24)))
      {
        goto LABEL_33;
      }

      v20 = *(a1 + 40);
      v21 = *(a1 + 24);
      *(a1 + 24) = *v17;
      *(a1 + 40) = *(a1 + 64);
    }

    *v17 = v21;
    *(a1 + 64) = v20;
  }

  else if (v19)
  {
    v30 = *(a1 + 40);
    v31 = *(a1 + 24);
    *(a1 + 24) = *v17;
    *(a1 + 40) = *(a1 + 64);
    *v17 = v31;
    *(a1 + 64) = v30;
    if ((*a3)((a1 + 24), a1))
    {
      v32 = *(a1 + 16);
      v33 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v33;
      *(a1 + 40) = v32;
    }
  }

LABEL_33:
  v43 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    if ((*a3)(v43, v17))
    {
      v59 = *v43;
      v60 = v43[1].n128_u64[0];
      v46 = v44;
      while (1)
      {
        v47 = a1 + v46;
        *(v47 + 72) = *(a1 + v46 + 48);
        *(v47 + 88) = *(a1 + v46 + 64);
        if (v46 == -48)
        {
          break;
        }

        v46 -= 24;
        if (((*a3)(&v59, (v47 + 24)) & 1) == 0)
        {
          v48 = a1 + v46 + 72;
          goto LABEL_41;
        }
      }

      v48 = a1;
LABEL_41:
      *v48 = v59;
      *(v48 + 16) = v60;
      if (++v45 == 8)
      {
        return &v43[1].n128_i8[8] == a2;
      }
    }

    v17 = v43;
    v44 += 24;
    v43 = (v43 + 24);
    if (v43 == a2)
    {
      return 1;
    }
  }
}

void CA::WindowServer::IOMFBDisplay::update_secure_indicator_animating_deadline(CA::WindowServer::IOMFBDisplay *this, char a2, __n128 a3)
{
  v3 = *(this + 3349);
  if (a2)
  {
    *(this + 3349) = a3.n128_f64[0] + 0.05;
    if (v3 == 0.0 && (*(this + 160) & 0x100) != 0)
    {
      CA::WindowServer::IOMFBDisplay::update_server_source_frame_interval_range(this, this + 2356, *(this + 29573), 1);
    }
  }

  else if (v3 != 0.0 && v3 < a3.n128_f64[0])
  {
    (*(*this + 2176))(a3);
  }
}

void CA::WindowServer::IOMFBDisplay::set_secure_indicator_callback(uint64_t a1, const void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 25760);
  if (v2)
  {
    v4 = *(v2 + 16);
    if (v4 != a2)
    {
      _Block_release(v4);
      *(v2 + 16) = _Block_copy(a2);
    }
  }

  else
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v5 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "Failed to set indicator callback! SILMgr was not created", v6, 2u);
    }
  }
}

void CA::WindowServer::IOMFBDisplay::emit_mode_set_signpost(CA::WindowServer::IOMFBDisplay *this, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3415);
  if (v2 + 1 >= 2)
  {
    if (x_log_get_display_perf(void)::once != -1)
    {
      dispatch_once(&x_log_get_display_perf(void)::once, &__block_literal_global_9);
    }

    v5 = *(this + 6);
    if (v5)
    {
      v6 = x_log_get_display_perf(void)::log;
      if (os_signpost_enabled(x_log_get_display_perf(void)::log))
      {
        v7 = *(this + 29530);
        v8 = vcvtd_n_f64_u32((v2 >> 29) & 0x1FFFFFF, 0x10uLL);
        v9 = ((v2 >> 55) & 0x1F) - 1;
        if (v9 > 0x1B)
        {
          v10 = "";
        }

        else
        {
          v10 = off_1E6DED668[v9];
        }

        v11[0] = 67241986;
        v11[1] = v5;
        v12 = 1026;
        v13 = v7;
        v14 = 1026;
        v15 = v2 & 0x3FFF;
        v16 = 1026;
        v17 = (v2 >> 14) & 0x3FFF;
        v18 = 2050;
        v19 = v8;
        v20 = 2082;
        v21 = v10;
        v22 = 1026;
        v23 = (v2 & 0x4000000000000000) != 0;
        v24 = 2050;
        v25 = a2;
        _os_signpost_emit_with_name_impl(&dword_183AA6000, v6, OS_SIGNPOST_EVENT, v5, "ModeSet", "displayId=%{public, name=displayId}u state=%{public, name=state}u width=%{public, name=width}d height=%{public, name=height}d refreshRate=%{public, name=refreshRate}.3f format=%{public, name=format}s highBandwidth=%{public, BOOL, name=highBandwidth}d begin=%{public,signpost.description:begin_time}llu", v11, 0x3Eu);
      }
    }
  }
}

void CA::WindowServer::IOMFBDisplay::update_render_statistics(os_unfair_lock_s *this, const CA::OGL::Context *a2, unsigned int a3, unsigned int a4, int a5)
{
  v5 = *(a2 + 316);
  if (((v5 | a3) & 0x80000000) == 0)
  {
    v10 = this + 6144;
    v11 = fmin((v5 / 0xA), 9.0);
    v12 = fmin((a3 / 0xC8), 9.0);
    os_unfair_lock_lock(this + 7098);
    if ((v10[955]._os_unfair_lock_opaque & 1) == 0)
    {
      v13 = clock_gettime_nsec_np(_CLOCK_REALTIME);
      *&this[7114]._os_unfair_lock_opaque = v13;
      *&this[7126]._os_unfair_lock_opaque = v13;
      *&this[7140]._os_unfair_lock_opaque = v13;
    }

    v14 = 0;
    ++this[v11 + 7100]._os_unfair_lock_opaque;
    ++this[v12 + 7116]._os_unfair_lock_opaque;
    do
    {
      this[CA::WindowServer::IOMFBDisplay::offscreen_reason[v14] + 7128]._os_unfair_lock_opaque += *(a2 + v14 * 4 + 1296);
      ++v14;
    }

    while (v14 != 17);
    os_unfair_lock_opaque = v10[966]._os_unfair_lock_opaque;
    if (os_unfair_lock_opaque <= a4)
    {
      os_unfair_lock_opaque = a4;
    }

    v10[966]._os_unfair_lock_opaque = os_unfair_lock_opaque;
    *&this[7112]._os_unfair_lock_opaque += a5;
    LOBYTE(v10[955]._os_unfair_lock_opaque) = 1;

    os_unfair_lock_unlock(this + 7098);
  }
}

char *CA::WindowServer::IOMFBDisplay::print_display_icc_log(char *result, X::Stream *a2)
{
  if (a2)
  {
    v3 = result;
    result = (*(*result + 1888))(result);
    if (result)
    {
      v4 = 0;
      v5 = v3 + 27608;
      do
      {
        for (i = 0; i != 3; ++i)
        {
          if (v4 >= 0xC && i)
          {
            break;
          }

          v7 = *&v5[8 * i];
          if (v7)
          {
            result = CA::IOMobileFramebuffer::print_icc_curve_to_stream(a2, v4, *(v3 + 6), i, 7, v7);
          }
        }

        ++v4;
        v5 += 24;
      }

      while (v4 != 18);
      v8 = 0;
      v9 = v3 + 28040;
      do
      {
        for (j = 0; j != 3; ++j)
        {
          if (v8 >= 4 && j)
          {
            break;
          }

          v11 = *&v9[8 * j];
          if (v11)
          {
            result = CA::IOMobileFramebuffer::print_icc_matrix_to_stream(a2, v8, *(v3 + 6), j, v11);
          }
        }

        ++v8;
        v9 += 24;
      }

      while (v8 != 8);
    }

    else
    {
      return X::Stream::printf(a2, "Display %d ICC Interface Unsupported\n", *(v3 + 6));
    }
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::set_gamma_adjustment_curves(CA::WindowServer::IOMFBDisplay *this, CGColorTRC *__s2)
{
  v4 = *(this + 3450);
  if (!v4)
  {
    operator new[]();
  }

  if (CA::WindowServer::IOMFBDisplay::set_cg_curve(this, v4, __s2))
  {
    *(this + 29565) = 1;
  }

  if (CA::WindowServer::IOMFBDisplay::set_cg_curve(this, (*(this + 3450) + 36), &__s2->var1.var1.var3.var1))
  {
    *(this + 29565) = 1;
  }

  result = CA::WindowServer::IOMFBDisplay::set_cg_curve(this, (*(this + 3450) + 72), (__s2 + 72));
  if (result)
  {
    *(this + 29565) = 1;
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::set_cg_curve(CA::WindowServer::IOMFBDisplay *this, CGColorTRC *__s1, CGColorTRC *__s2)
{
  result = 0;
  v12 = *MEMORY[0x1E69E9840];
  if (__s1 && __s2)
  {
    if (*(this + 29566))
    {
      result = memcmp(__s1, __s2, 0x24uLL);
      if (result)
      {
        if (__s2->var0 == 5 && *(&__s2->var0 + 1))
        {
          operator new[]();
        }

        if (__s1->var0 == 5)
        {
          v8 = *(&__s1->var1.var1.var0 + 4);
          if (v8)
          {
            MEMORY[0x1865EA9A0](v8, 0x1000C4052888210);
          }
        }

        v9 = *&__s2->var0;
        v10 = *&__s2->var1.var1.var1;
        __s1->var1.var0.var6 = __s2->var1.var0.var6;
        *&__s1->var0 = v9;
        *&__s1->var1.var1.var1 = v10;
        return 1;
      }
    }

    else
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v7 = x_log_get_windowserver(void)::log;
      result = os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *v11 = 0;
        _os_log_error_impl(&dword_183AA6000, v7, OS_LOG_TYPE_ERROR, "Setting system gamma failed, display does not support ICC", v11, 2u);
        return 0;
      }
    }
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::set_blackpoint_curve(CA::WindowServer::IOMFBDisplay *this, CGColorTRC *__s2)
{
  v4 = *(this + 3449);
  if (!v4)
  {
    operator new();
  }

  result = CA::WindowServer::IOMFBDisplay::set_cg_curve(this, v4, __s2);
  if (result)
  {
    *(this + 29564) = 1;
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::set_system_gamma_curve(CA::WindowServer::IOMFBDisplay *this, CGColorTRC *__s2)
{
  v4 = *(this + 3448);
  if (!v4)
  {
    operator new();
  }

  result = CA::WindowServer::IOMFBDisplay::set_cg_curve(this, v4, __s2);
  if (result)
  {
    *(this + 29563) = 1;
  }

  return result;
}

void CA::WindowServer::IOMFBDisplay::set_display_color_space(const void **this, CGColorSpace *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = (this + 3584);
  if (*(this + 29566))
  {
    if (!CFEqual(this[3438], a2))
    {
      X::CFRef<CGColorSpace *>::operator=(this + 3438, a2);
      v2[890] = 1;
    }
  }

  else
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v5 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "Setting display space failed, display does not support ICC", v6, 2u);
    }
  }
}

void CA::WindowServer::IOMFBDisplay::set_blend_color_space(const void **this, CGColorSpace *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = (this + 3584);
  if (*(this + 29566))
  {
    if (!CFEqual(this[3437], a2))
    {
      X::CFRef<CGColorSpace *>::operator=(this + 3437, a2);
      v2[889] = (this[113] & 0x200) != 0;
    }
  }

  else
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v5 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "Setting blend space failed, display does not support ICC", v6, 2u);
    }
  }
}

void CA::WindowServer::IOMFBDisplay::set_update_request_callback(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 26816);
  if (v4)
  {
    _Block_release(v4);
    *(a1 + 26816) = 0;
  }

  if (aBlock)
  {
    *(a1 + 26816) = _Block_copy(aBlock);
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::acquire_frozen_surface(CA::WindowServer::IOMFBDisplay *this)
{
  v1 = *(this + 3431);
  *(this + 3431) = 0;
  return v1;
}

void CA::WindowServer::IOMFBDisplay::post_notification_of_disallowed_cloning_layers(CA::WindowServer::IOMFBDisplay *this, mach_port_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(*this + 1600))(this))
  {
    if (*(this + 29499) != a2)
    {
      out_token.msgh_bits = 0;
      if (!notify_register_check("com.apple.CoreAnimation.CADisplay.DisallowedLayersChanged", &out_token))
      {
        notify_set_state(out_token.msgh_bits, a2);
        notify_post("com.apple.CoreAnimation.CADisplay.DisallowedLayersChanged");
        *(this + 29499) = a2;
      }
    }
  }

  os_unfair_lock_lock(this + 7228);
  v4 = *(this + 3617);
  if (v4)
  {
    v5 = MEMORY[0x1E69E99E0];
    do
    {
      v6 = *(v4 + 4);
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v7 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(this + 6);
        out_token.msgh_bits = 67109376;
        out_token.msgh_size = v8;
        LOWORD(out_token.msgh_remote_port) = 1024;
        *(&out_token.msgh_remote_port + 2) = a2;
        _os_log_impl(&dword_183AA6000, v7, OS_LOG_TYPE_DEFAULT, "signal clients display %u disallowed layers state changed to %d", &out_token, 0xEu);
      }

      v9 = *(this + 6);
      v11 = *v5;
      v12 = v9;
      v13 = a2;
      v14 = 0;
      v15 = 0;
      *&out_token.msgh_bits = 19;
      out_token.msgh_voucher_port = 0;
      out_token.msgh_id = 40414;
      out_token.msgh_remote_port = v6;
      out_token.msgh_local_port = 0;
      if (MEMORY[0x1EEE9AC50])
      {
        voucher_mach_msg_set(&out_token);
      }

      if ((mach_msg(&out_token, 17, 0x28u, 0, 0, 0, 0) - 268435459) <= 1)
      {
        if ((out_token.msgh_bits & 0x1F00) == 0x1100)
        {
          mach_port_deallocate(*MEMORY[0x1E69E9A60], out_token.msgh_local_port);
        }

        mach_msg_destroy(&out_token);
      }

      v4 = *v4;
    }

    while (v4);
  }

  os_unfair_lock_unlock(this + 7228);
}

uint64_t CA::WindowServer::IOMFBDisplay::ax_ns_color_matrix(float32x4_t *this)
{
  v2 = this + 1536;
  if ((this[1682].i8[4] & 1) != 0 || this[1682].i8[5] == 1)
  {
    v3 = this[1694];
    v4 = this[1695];
    v5 = this[1696];
    v6 = this[1697];
    v7 = vcvtq_f64_f32(*v4.f32);
    v8 = vcvtq_f64_f32(*v5.f32);
    v9 = this[1698].f32[0];
    v10 = vmulq_n_f64(vcvt_hight_f64_f32(v3), v9);
    v11 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v3.f32), v9));
    v12 = vmulq_n_f64(vcvt_hight_f64_f32(v4), v9);
    v13 = vcvt_f32_f64(vmulq_n_f64(v7, v9));
    v14 = vmulq_n_f64(vcvt_hight_f64_f32(v5), v9);
    v15 = vcvt_f32_f64(vmulq_n_f64(v8, v9));
    this[1682].i8[4] = 0;
    if (CADeviceSupportsWirelessNightShift::once != -1)
    {
      v42 = v13;
      v43 = v11;
      v40 = v15;
      v41 = v6;
      v38 = v12;
      v39 = v10;
      v37 = v14;
      dispatch_once(&CADeviceSupportsWirelessNightShift::once, &__block_literal_global_449);
      v14 = v37;
      v12 = v38;
      v10 = v39;
      v15 = v40;
      v6 = v41;
      v13 = v42;
      v11 = v43;
    }

    v16 = vcvt_hight_f32_f64(v11, v10);
    v17 = vcvt_hight_f32_f64(v13, v12);
    v18 = vcvt_hight_f32_f64(v15, v14);
    if (CADeviceSupportsWirelessNightShift::enabled == 1)
    {
      v19.i64[0] = this[1688].i64[0];
      v19.i64[1] = v2[152].u32[2];
      v20.i64[0] = *(&v2[152].i64[1] + 4);
      v20.i64[1] = v2[153].u32[1];
      v21.i64[0] = this[1689].i64[1];
      v21.i64[1] = v2[154].u32[0];
      v22 = vcvt_hight_f64_f32(v19);
      v23 = vcvtq_f64_f32(*v19.f32);
      v24 = vcvt_hight_f64_f32(v20);
      v25 = vcvtq_f64_f32(*v20.f32);
      v26 = vcvt_hight_f64_f32(v21);
      v27 = vcvtq_f64_f32(*v21.f32);
      v28 = vcvt_hight_f64_f32(v16);
      v29 = vcvtq_f64_f32(*v16.f32);
      v30 = vcvtq_f64_f32(*v17.f32);
      v31 = vcvt_hight_f64_f32(v17);
      v32 = vcvt_hight_f64_f32(v18);
      v33 = vcvtq_f64_f32(*v18.f32);
      v34 = vcvtq_f64_f32(*v6.f32);
      v35 = vcvt_hight_f64_f32(v6);
      v16 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v29, v23.f64[0]), v30, v23, 1), v33, v22.f64[0]), v34, v22, 1)), vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v28, v23.f64[0]), v31, v23, 1), v32, v22.f64[0]), v35, v22, 1));
      v17 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v29, v25.f64[0]), v30, v25, 1), v33, v24.f64[0]), v34, v24, 1)), vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v28, v25.f64[0]), v31, v25, 1), v32, v24.f64[0]), v35, v24, 1));
      v18 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v29, v27.f64[0]), v30, v27, 1), v33, v26.f64[0]), v34, v26, 1)), vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v28, v27.f64[0]), v31, v27, 1), v32, v26.f64[0]), v35, v26, 1));
      v6 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(v34, 0, vaddq_f64(vaddq_f64(v30, v29), v33))), vmlaq_f64(v35, 0, vaddq_f64(vaddq_f64(v31, v28), v32)));
    }

    v2[146].i8[5] = 0;
    *(v2 + 2276) = v16;
    *(v2 + 2292) = v17;
    *(v2 + 2308) = v18;
    *(v2 + 2324) = v6;
  }

  return this[1678].i64 + 4;
}

uint64_t CA::WindowServer::IOMFBDisplay::set_accessibility_color_matrix(uint64_t this, float *a2, float a3)
{
  *(this + 27104) = xmmword_183E20E10;
  *(this + 27120) = xmmword_183E20E20;
  *(this + 27136) = xmmword_183E20E30;
  *(this + 27152) = xmmword_183E20E40;
  if (a2)
  {
    *(this + 27104) = *a2;
    *(this + 27108) = a2[1];
    *(this + 27112) = a2[2];
    *(this + 27120) = a2[3];
    *(this + 27124) = a2[4];
    *(this + 27128) = a2[5];
    *(this + 27136) = a2[6];
    *(this + 27140) = a2[7];
    *(this + 27144) = a2[8];
  }

  *(this + 27168) = a3;
  *(this + 27172) = 0;
  *(this + 26916) = 1;
  *(this + 26493) = 1;
  return this;
}

uint64_t CA::WindowServer::IOMFBDisplay::set_user_adjustment(uint64_t this, float *a2, float a3)
{
  v3 = (this + 27060);
  if (a2)
  {
    v4 = *a2;
    v5 = *(a2 + 1);
    *(this + 27092) = a2[8];
    *v3 = v4;
    *(this + 27076) = v5;
  }

  else
  {
    *v3 = xmmword_183E20E10;
    *(this + 27076) = xmmword_183E20E10;
    *(this + 27092) = 1065353216;
    a3 = 1.0;
  }

  *(this + 27096) = a3;
  *(this + 27100) = 0;
  return this;
}

uint64_t CA::WindowServer::IOMFBDisplay::abort_color_matrix_ramp(uint64_t this, float *a2, float *a3)
{
  if (a2)
  {
    v3 = *(this + 27008);
    v4 = *(this + 27024);
    a2[8] = *(this + 27040);
    *a2 = v3;
    *(a2 + 1) = v4;
  }

  v5 = *(this + 27052);
  if (a3)
  {
    *a3 = v5;
  }

  *(this + 27056) = 1;
  v6 = *(this + 27008);
  v7 = *(this + 27024);
  *(this + 26936) = v6;
  *(this + 26952) = v7;
  v8 = *(this + 27040);
  *(this + 26968) = v8;
  *(this + 26972) = v6;
  *(this + 26988) = v7;
  *(this + 27004) = v8;
  *(this + 27048) = v5;
  *(this + 26928) = 0;
  return this;
}

_OWORD *CA::ColorAdaptation::RGBXYZConversionMatrices<double>::RGBXYZConversionMatrices(_OWORD *a1, float64x2_t *a2, float64x2_t *a3, double a4, float64x2_t a5, double a6, double a7, double a8, float64x2_t a9, double a10, float64x2_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, float64x2_t a33, float64x2_t a34, float64x2_t a35, float64x2_t a36, float64x2_t a37, float64x2_t a38)
{
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  a5.f64[0] = a2[1].f64[0];
  v39 = a2->f64[1];
  v40.f64[0] = a5.f64[0] * a2->f64[0] / v39;
  a9.f64[0] = (1.0 - vaddvq_f64(*a2)) * a5.f64[0] / v39;
  v40.f64[1] = a5.f64[0];
  v54 = v40;
  v41 = a2[2];
  a5.f64[0] = a2[3].f64[0];
  v40.f64[0] = a2[2].f64[1];
  v42.f64[0] = a5.f64[0] * v41.f64[0] / v40.f64[0];
  a11.f64[0] = (1.0 - vaddvq_f64(v41)) * a5.f64[0] / v40.f64[0];
  v55 = a11;
  v56 = a9;
  v42.f64[1] = a5.f64[0];
  v53 = v42;
  v43 = a2[4];
  a5.f64[0] = a2[5].f64[0];
  v40.f64[0] = a2[4].f64[1];
  v42.f64[0] = a5.f64[0] * v43.f64[0] / v40.f64[0];
  v40.f64[0] = (1.0 - vaddvq_f64(v43)) * a5.f64[0] / v40.f64[0];
  v57 = v40;
  v42.f64[1] = a5.f64[0];
  v52 = v42;
  v44 = *a3;
  v45 = a3[1];
  v42.f64[0] = a3->f64[1];
  a5.f64[0] = vmuld_n_f64(a3->f64[0], v45.f64[0]) / v42.f64[0];
  v50 = v45;
  v51 = a5;
  v44.f64[0] = (1.0 - vaddvq_f64(*a3)) * v45.f64[0] / v42.f64[0];
  vars0 = v44;
  __invert_d3();
  *&v46 = *&vmlaq_f64(vmlaq_f64(vmulq_f64(a34, v51), v50, a36), vars0, a38);
  v47 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(a33, v51.f64[0]), a35, v50.f64[0]), a37, vars0.f64[0]);
  *a1 = vmulq_n_f64(v54, v47.f64[0]);
  a1[1] = vmulq_n_f64(v56, v47.f64[0]);
  a1[2] = vmulq_laneq_f64(v53, v47, 1);
  a1[3] = vmulq_laneq_f64(v55, v47, 1);
  a1[4] = vmulq_n_f64(v52, v46);
  a1[5] = vmulq_n_f64(v57, v46);
  __invert_d3();
  a1[8] = a35;
  a1[9] = a36;
  a1[10] = a37;
  a1[11] = a38;
  a1[6] = a33;
  a1[7] = a34;
  return a1;
}

uint64_t ___ZN2CA12WindowServer12IOMFBDisplay21set_preset_propertiesENS0_7Display16PresetPropertiesE_block_invoke()
{
  result = MGIsDeviceOneOfType();
  if (result)
  {
    CA::WindowServer::IOMFBDisplay::set_preset_properties(CA::WindowServer::Display::PresetProperties)::is_d65a_ipad = 1;
    CA::WindowServer::IOMFBDisplay::set_preset_properties(CA::WindowServer::Display::PresetProperties)::cone_response = 1;
    CA::WindowServer::IOMFBDisplay::set_preset_properties(CA::WindowServer::Display::PresetProperties)::adaptation = 1;
  }

  return result;
}

BOOL CA::WindowServer::IOMFBDisplay::set_preset(CA::WindowServer::IOMFBDisplay *this)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  HIDWORD(v13[0]) = -1082130432;
  DWORD2(v14) = -1082130432;
  DWORD1(v16) = -1082130432;
  LODWORD(v18) = -1082130432;
  v2 = *(this + 3220);
  if (v2)
  {
    if (*v2)
    {
LABEL_5:
      CA::WindowServer::SILMgr::turn_off_all_regions(v2, 1, v13, 0);
      CA::WindowServer::IOMFBDisplay::SecureIndicator::set_state(this + 25760, 2);
      goto LABEL_6;
    }

    v3 = sil_mgr_instance(0, 0xFFFFFFFFLL);
    *v2 = v3;
    if (v3)
    {
      v2 = *(this + 3220);
      goto LABEL_5;
    }
  }

LABEL_6:
  v4 = IOMobileFramebufferSetPreset();
  *(this + 712) = 0u;
  v5 = *(this + 3220);
  if (v5)
  {
    if (*v5 || (v6 = sil_mgr_instance(0, 0xFFFFFFFFLL), (*v5 = v6) != 0))
    {
      CA::IOMobileFramebuffer::swap_wait((this + 25696));
      CA::WindowServer::SILMgr::set_power(*(this + 3220), 1, 1);
      v7 = 0;
      v8 = *(this + 3220);
      v9 = (v8 + 24);
      v10 = v13;
      do
      {
        if (*(v10 + 3) > 0.0 && CA::WindowServer::SILMgr::swap_region(v8, v7, v10, 0, 0))
        {
          v11 = *v10;
          *(v9 + 10) = *(v10 + 10);
          *v9 = v11;
        }

        ++v7;
        v9 = (v9 + 28);
        v10 = (v10 + 28);
      }

      while (v7 != 4);
      CA::WindowServer::SILMgr::end_swap_region(v8, 0, 0.0);
      CA::WindowServer::IOMFBDisplay::SecureIndicator::set_state(this + 25760, 3);
    }
  }

  return v4 == 0;
}

float CA::WindowServer::IOMFBDisplay::auto_luminance_boost(CA::WindowServer::IOMFBDisplay *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 1.0;
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  if (*&dword_1ED4E96EC != 0.0)
  {
    return *&dword_1ED4E96EC;
  }

  AutoLuminanceBoost = IOMobileFrameBufferGetAutoLuminanceBoost();
  if (AutoLuminanceBoost != -536870201 && AutoLuminanceBoost != 0)
  {
    v3 = AutoLuminanceBoost;
    v6 = 1.0;
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v4 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v8 = v3;
      _os_log_error_impl(&dword_183AA6000, v4, OS_LOG_TYPE_ERROR, "get_auto_luminance_boost returned %d", buf, 8u);
    }
  }

  return v6;
}

_BYTE *CA::WindowServer::IOMFBDisplay::set_force_brightness_control(_BYTE *this)
{
  if ((this[29571] & 1) == 0)
  {
    this[29571] = 1;
    return (*(*this + 1000))(this, 1);
  }

  return this;
}

_BYTE *CA::WindowServer::IOMFBDisplay::set_brightness_control_disabled(_BYTE *this, int a2)
{
  if (this[29570] != a2)
  {
    this[29570] = a2;
    return (*(*this + 1000))(this, 1);
  }

  return this;
}

uint64_t CA::WindowServer::IOMFBDisplay::set_maximum_brightness(uint64_t this, float a2)
{
  if (*(this + 26512) != a2)
  {
    *(this + 26512) = a2;
    if ((*(this + 29492) & 1) == 0)
    {
      *(this + 26516) = a2;
      return IOMobileFramebufferSetBrightnessCorrection();
    }
  }

  return this;
}

float CA::WindowServer::IOMFBDisplay::default_ui_nits(CA::WindowServer::IOMFBDisplay *this)
{
  result = *(this + 6634);
  if (result <= 0.0)
  {
    if ((*(*this + 720))(this))
    {
      return 100.0;
    }

    else
    {
      v5 = (*(*this + 728))(this);
      result = 200.0;
      if (v5)
      {
        return 100.0;
      }
    }
  }

  else
  {
    v2 = 5.0;
    v3 = result > 200.0 || result < 5.0;
    if (result >= 5.0 || result > 200.0)
    {
      v2 = 200.0;
    }

    if (v3)
    {
      return v2;
    }
  }

  return result;
}

void CA::WindowServer::IOMFBDisplay::save_brightness_preferences(CA::WindowServer::IOMFBDisplay *this, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v12, 0, sizeof(v12));
  if ((*(*this + 816))(this, 1, v12, 64, 0))
  {
    v3 = CFStringCreateWithCString(0, v12, 0x8000100u);
    if (v3)
    {
      v4 = v3;
      v5 = *MEMORY[0x1E695E8A8];
      v6 = CFPreferencesCopyAppValue(@"CABrightnessPreferences", *MEMORY[0x1E695E8A8]);
      v7 = v6;
      if (v6 && (v8 = CFGetTypeID(v6), v8 == CFDictionaryGetTypeID()))
      {
        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v7);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      v10 = MutableCopy;
      if (MutableCopy)
      {
        v11 = MEMORY[0x1E695E4D0];
        if (!a2)
        {
          v11 = MEMORY[0x1E695E4C0];
        }

        CFDictionarySetValue(MutableCopy, v4, *v11);
        CFPreferencesSetAppValue(@"CABrightnessPreferences", v10, v5);
        CFRelease(v10);
      }

      if (v7)
      {
        CFRelease(v7);
      }

      CFRelease(v4);
    }
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::set_contrast(uint64_t this, float a2)
{
  if (*(this + 26420) != a2)
  {
    *(this + 26420) = a2;
    *(this + 26493) = 1;
    if ((*(this + 29492) & 1) == 0)
    {
      *(this + 26424) = a2;
      if ((*(this + 672) & 0x1C00) != 0x800)
      {
        return IOMobileFramebufferSetContrast();
      }
    }
  }

  return this;
}

_BYTE *CA::WindowServer::IOMFBDisplay::set_grayscale(_BYTE *this, int a2)
{
  if (this[29504] != a2)
  {
    this[29504] = a2;
    if ((this[29492] & 1) == 0 && (this[29557] & 1) == 0)
    {
      this[29505] = a2;
      return IOMobileFramebufferSetColorRemapMode();
    }
  }

  return this;
}

double CA::WindowServer::IOMFBDisplay::set_allows_edr(CA::WindowServer::IOMFBDisplay *this, char a2)
{
  *(this + 29503) = a2;
  if ((a2 & 1) == 0)
  {
    result = 0.0;
    *(this + 712) = 0u;
  }

  return result;
}

void CA::WindowServer::IOMFBDisplay::set_pulse_width_maximization(CA::WindowServer::IOMFBDisplay *this, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a2 && (*(this + 29559) & 1) == 0)
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v3 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      v4 = *(this + 6);
      v5[0] = 67109120;
      v5[1] = v4;
      _os_log_error_impl(&dword_183AA6000, v3, OS_LOG_TYPE_ERROR, "Display %d does not support Pulse Width Maximization", v5, 8u);
    }
  }

  else
  {
    *(this + 29506) = a2;
  }
}

_BYTE *CA::WindowServer::IOMFBDisplay::set_inverse_color(_BYTE *this, int a2)
{
  if (this[29496] != a2)
  {
    this[29496] = a2;
    if ((this[29492] & 1) == 0 && (this[29557] & 1) == 0)
    {
      this[29502] = a2;
      return IOMobileFramebufferSetColorRemapMode();
    }
  }

  return this;
}

uint64_t CA::WindowServer::IOMFBDisplay::update_display_modes(CA::WindowServer::IOMFBDisplay *this, int a2)
{
  v4 = this + 28672;
  if (*(this + 29513) == 1)
  {
    v5 = IOMobileFramebufferCopyProperty();
    if (v5)
    {
      v6 = v5;
      v4[838] = CA_CFBoolValue(v5);
      CFRelease(v6);
    }
  }

  if ((*(*this + 80))(this))
  {
    v4[838] = 0;
  }

  if (a2)
  {
    v7 = 70;
  }

  else
  {
    v7 = 66;
  }

  pthread_mutex_lock(this + 9);
  CA::WindowServer::IOMFBDisplay::update_framebuffer_locked(this, v7);

  return pthread_mutex_unlock(this + 9);
}

void CA::WindowServer::IOMFBDisplay::set_mode(pthread_mutex_t *this, const CA::WindowServer::Display::Mode *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = atomic_load((this[12].__sig + 4));
  if (v4 || (v5 = atomic_load((this[12].__sig + 5))) != 0)
  {
    if (*&this[10].__opaque[8] != *a2)
    {
      v6.i64[0] = *&this[10].__opaque[8];
      v6.i64[1] = *a2;
      v7 = vshrn_n_s64(v6, 0x1DuLL);
      v8.i64[0] = v7.i32[0] & 0x1FFFFFF;
      v8.i64[1] = v7.i32[1] & 0x1FFFFFF;
      v9 = vdupq_n_s64(0x40847AE147AE147BuLL);
      v10 = vbslq_s8(vdupq_n_s64(0x3FFFFFE0000000uLL), vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v8), vdupq_n_s64(0x3F59000000000000uLL))), v9)), 0x1DuLL), v6);
      if ((vmovn_s64(vceqq_s64(v10, vdupq_laneq_s64(v10, 1))).u32[0] & 1) == 0)
      {
        v24 = v9;
        pthread_mutex_lock(this + 9);
        v11 = this[10].__opaque[40];
        this[10].__opaque[40] = v11 + 1;
        if (!v11)
        {
          *&this[10].__opaque[32] = mach_continuous_time();
        }

        v12 = *&this[10].__opaque[8];
        v13 = v24;
        if (v12 != *a2)
        {
          v14.i64[0] = *&this[10].__opaque[8];
          v14.i64[1] = *a2;
          v15 = vshrn_n_s64(v14, 0x1DuLL);
          v16.i64[0] = v15.i32[0] & 0x1FFFFFF;
          v16.i64[1] = v15.i32[1] & 0x1FFFFFF;
          v17 = vbslq_s8(vdupq_n_s64(0x3FFFFFE0000000uLL), vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v16), vdupq_n_s64(0x3F59000000000000uLL))), v24)), 0x1DuLL), v14);
          if ((vmovn_s64(vceqq_s64(v17, vdupq_laneq_s64(v17, 1))).u8[0] & 1) == 0)
          {
            *&this[10].__opaque[8] = *a2;
            CA::WindowServer::Display::post_display_changed(this);
            v13 = v24;
          }

          v12 = *a2;
        }

        if (*&this[426].__opaque[48] == v12 || (v19.i64[0] = *&this[426].__opaque[48], v19.i64[1] = v12, v20 = vshrn_n_s64(v19, 0x1DuLL), v21.i64[0] = v20.i32[0] & 0x1FFFFFF, v21.i64[1] = v20.i32[1] & 0x1FFFFFF, v22 = vbslq_s8(vdupq_n_s64(0x3FFFFFE0000000uLL), vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v21), vdupq_n_s64(0x3F59000000000000uLL))), v13)), 0x1DuLL), v19), (vmovn_s64(vceqq_s64(v22, vdupq_laneq_s64(v22, 1))).u8[0])) && this[462].__opaque[0] != 1)
        {
          v23 = 128;
        }

        else
        {
          *&this[426].__opaque[48] = v12;
          v23 = 132;
        }

        CA::WindowServer::IOMFBDisplay::update_framebuffer_locked(this, v23);
        CA::WindowServer::Display::end_display_changes(this);

        pthread_mutex_unlock(this + 9);
      }
    }
  }

  else
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v18 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_183AA6000, v18, OS_LOG_TYPE_ERROR, "Cannot switch display modes while powered off.", buf, 2u);
    }
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::clone_exceeds_display_bandwidth_limits_p(CA::WindowServer::IOMFBDisplay *this, CA::WindowServer::Display *a2, CA::WindowServer::Surface *a3, unsigned int a4, const CA::Rect *a5, const CA::Rect *a6)
{
  result = 0;
  v37[1] = *MEMORY[0x1E69E9840];
  if (a5 && a6)
  {
    v37[0] = *(this + 3415);
    v12 = v37[0] & 0x3FFF;
    v13 = (LODWORD(v37[0]) >> 14) & 0x3FFF;
    *&v34.f64[0] = v37;
    v15 = *(std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,CA::WindowServer::IOMFBDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::IOMFBDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(this + 3338, v37[0]) + 44);
    v16 = *(a2 + 52);
    v17 = *(a2 + 53);
    if (v12 / v16 >= v13 / v17)
    {
      v18 = v13 / v17;
    }

    else
    {
      v18 = v12 / v16;
    }

    if (v15 != 1 || (*(this + 56) & 8) != 0)
    {
      v21 = v18;
    }

    else
    {
      v19 = *&CA::WindowServer::clone_overscan_amounts_x;
      if (*&CA::WindowServer::clone_overscan_amounts_x == 0.0 || (v20 = *&CA::WindowServer::clone_overscan_amounts_y, *&CA::WindowServer::clone_overscan_amounts_y == 0.0))
      {
        v19 = *(this + 15);
        v20 = *(this + 16);
      }

      v21 = v18 * v20;
      v18 = v18 * v19;
    }

    if ((byte_1ED4E9887 & 1) == 0 && *(this + 29512) == 1)
    {
      v22 = (*(*this + 80))(this);
      if ((v22 & 1) == 0)
      {
        CA::ScalerUtil::ScalerLimits::limits(v22);
        v23 = *&xmmword_1EA84FD90;
        CA::ScalerUtil::ScalerLimits::limits(v24);
        v25 = v23;
        if (v18 >= v23)
        {
          v25 = v18;
        }

        else
        {
          v21 = v21 * v25 / v18;
        }

        v26 = *(&xmmword_1EA84FD90 + 1);
        if (v21 < *(&xmmword_1EA84FD90 + 1))
        {
          v18 = v25 * v26 / v21;
LABEL_23:
          v34 = *a5;
          v27 = *(a5 + 2);
          v28 = *(a5 + 3);
          v31 = *a6;
          v29 = *(a6 + 2) * v18;
          v30 = *(a6 + 3) * v26;
          v35 = (((v29 * v27 / v27) + 1) & 0xFFFFFFFE);
          v36 = (((v30 * v28 / v28) + 1) & 0xFFFFFFFE);
          v32 = ((vcvtmd_u64_f64(v29 + 0.5) + 1) & 0xFFFFFFFE);
          v33 = ((vcvtmd_u64_f64(v30 + 0.5) + 1) & 0xFFFFFFFE);
          return CA::WindowServer::IOMFBDisplay::detach_exceeds_display_bandwidth_limits_p(this, a3, &v34, &v31, v14);
        }

        v18 = v25;
      }
    }

    v26 = v21;
    goto LABEL_23;
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::detach_exceeds_display_bandwidth_limits_p(CA::WindowServer::IOMFBDisplay *this, CA::WindowServer::Surface *a2, float64x2_t *a3, const CA::Rect *a4, const CA::Rect *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = (this + 25832);
  if (a3 | a4)
  {
    if (a3 && a4)
    {
      *(this + 3407) = CA::WindowServer::IOMFBDisplay::compute_layer_bw(*(a2 + 16), a3, a3, a4, *(this + 3404), *(a4 + 3));
    }
  }

  else if ((*(this + 27264) & 1) == 0)
  {
    return 0;
  }

  v7 = *(this + 3407);
  if (v7 > *(this + 3401))
  {
    if (HIBYTE(xmmword_1ED4E97DC) == 1)
    {
      if (x_log_get_CADebug(void)::once != -1)
      {
        dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
      }

      v8 = x_log_get_CADebug(void)::log;
      v9 = 1;
      if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_INFO))
      {
        v10 = *(this + 6);
        v11 = *(this + 3407);
        v12 = *(this + 3401);
        *v34 = 67109632;
        *&v34[4] = v10;
        *&v34[8] = 2048;
        *&v34[10] = v11;
        *&v34[18] = 2048;
        *&v34[20] = v12;
        v13 = "Display %d gpBandwidth Exceeded. Detach disabled. Req BW:%llu gpBW limit:%llu";
        v14 = v8;
        v15 = 28;
LABEL_35:
        _os_log_impl(&dword_183AA6000, v14, OS_LOG_TYPE_INFO, v13, v34, v15);
        return v9;
      }

      return v9;
    }

    return 1;
  }

  *(v6 + 1432) = 0;
  if (*(v6 + 3706))
  {
    v16 = 0;
  }

  else
  {
    pthread_mutex_lock((this + 25848));
    v19 = *(this + 6 * *v6 + 3240);
    if (v19 && (v20 = *(v19 + 32)) != 0)
    {
      *v34 = 0;
      *&v34[8] = 0;
      v21 = *(v20 + 56);
      v22.i64[0] = v21;
      v22.i64[1] = HIDWORD(v21);
      *&v34[16] = vcvtq_f64_u64(v22);
      v23 = *(this + 40);
      v24 = *(this + 41);
      if (v23 <= v24)
      {
        v23 = *(this + 41);
      }

      v25 = 1.79769313e308;
      if (v23 <= 1073741822)
      {
        v25 = v24;
      }

      v16 = CA::WindowServer::IOMFBDisplay::compute_layer_bw(*(v20 + 64), v34, v17, v18, *(this + 3404), v25);
    }

    else
    {
      v16 = 0;
    }

    pthread_mutex_unlock((this + 25848));
    v7 = *(this + 3407);
  }

  if (v7 + v16 <= *(this + 3403))
  {
    return 0;
  }

  if (HIBYTE(xmmword_1ED4E97DC) != 1)
  {
    return 1;
  }

  if (x_log_get_CADebug(void)::once != -1)
  {
    dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
  }

  v27 = x_log_get_CADebug(void)::log;
  if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_INFO))
  {
    v28 = *(this + 6);
    v29 = *(this + 3401);
    v30 = *(this + 3402);
    v31 = *(this + 3403);
    *v34 = 67109888;
    *&v34[4] = v28;
    *&v34[8] = 2048;
    *&v34[10] = v29;
    *&v34[18] = 2048;
    *&v34[20] = v30;
    *&v34[28] = 2048;
    *&v34[30] = v31;
    _os_log_impl(&dword_183AA6000, v27, OS_LOG_TYPE_INFO, "Display %d BW limits gpBW:%llu gpliteBW:%llu gpSumBW:%llu", v34, 0x26u);
    if (x_log_get_CADebug(void)::once != -1)
    {
      dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
    }
  }

  v32 = x_log_get_CADebug(void)::log;
  v9 = 1;
  if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_INFO))
  {
    v33 = *(this + 3407);
    *v34 = 134218496;
    *&v34[4] = v16;
    *&v34[12] = 2048;
    *&v34[14] = v33;
    *&v34[22] = 2048;
    *&v34[24] = 0;
    v13 = "gpSumBandwidth Exceeded. Detach disabled UI-BW:%llu, Detach-BW:%llu gplite-BW:%llu";
    v14 = v32;
    v15 = 32;
    goto LABEL_35;
  }

  return v9;
}

unsigned int CA::WindowServer::IOMFBDisplay::compute_layer_bw(CA::WindowServer::IOMFBDisplay *this, float64x2_t *a2, const CA::Rect *a3, const CA::Rect *a4, double a5, double a6)
{
  v10 = ceil(vcvtd_n_f64_u64(CA::WindowServer::Surface::bits_per_pixel(this), 3uLL));
  if (CA::Render::fourcc_compressed_of_type(this, 0, 0) == this)
  {
    if (this <= 1885746227)
    {
      if (this <= 1882469427)
      {
        if (this != 1882468912)
        {
          v21 = 1882468914;
LABEL_17:
          if (this != v21)
          {
            v20 = (ceil(v10 * (0.0078125 * a2[1].f64[0])) * 128.0 + 128.0) * a2[1].f64[1];
            goto LABEL_20;
          }
        }
      }

      else if (this != 1882469428 && this != 1885745712)
      {
        v11 = 12850;
LABEL_12:
        v21 = v11 | 0x70660000;
        goto LABEL_17;
      }

      v22 = a2[1].f64[1];
      v23 = ceil(a2[1].f64[0] * 0.333333333);
      v24 = v10;
      v25 = 0.0234375;
      goto LABEL_19;
    }

    if ((this - 1886676528) <= 4 && ((1 << (this - 48)) & 0x15) != 0 || (this - 1886680624) <= 4 && ((1 << (this - 48)) & 0x15) != 0)
    {
      v22 = a2[1].f64[1];
      v23 = ceil(a2[1].f64[0] * 0.2);
      v24 = v10;
      v25 = 0.0390625;
LABEL_19:
      v20 = (ceil(v24 * (v25 * v23)) * 128.0 + 1.0) * v22;
      goto LABEL_20;
    }

    v11 = 13364;
    goto LABEL_12;
  }

  __asm { FMOV            V1.2D, #0.125 }

  v17 = vrndpq_f64(vmulq_f64(a2[1], _Q1));
  __asm { FMOV            V1.2D, #1.0 }

  v19 = vaddq_f64(v17, _Q1);
  v20 = vmuld_lane_f64((v10 * 64.0) * v19.f64[0], v19, 1);
LABEL_20:
  v26 = a5;
  return vcvtpd_u64_f64(v20 / (v26 * a6));
}

double CA::WindowServer::IOMFBDisplay::clone_scale(CA::WindowServer::IOMFBDisplay *this, CA::WindowServer::Display *a2)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = *(this + 3415);
  v14[0] = v4;
  if ((v4 & 0x10000000) != 0)
  {
    v5 = *(this + 40);
  }

  else
  {
    v5 = v4 & 0x3FFF;
  }

  v14[1] = v14;
  v6 = std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,CA::WindowServer::IOMFBDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::IOMFBDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(this + 3338, v4);
  v7 = *(a2 + 82);
  if ((v7 & 0x10000000) != 0)
  {
    v8 = *(a2 + 40);
    v9 = *(a2 + 41);
  }

  else
  {
    v8 = v7 & 0x3FFF;
    v9 = (v7 >> 14) & 0x3FFF;
  }

  v10 = *(this + 14);
  result = 1.0;
  if ((v10 & 2) == 0)
  {
    v12 = (v10 >> 2) & 1;
    if ((*(a2 + 336) & 1) == 0)
    {
      v12 = 1;
    }

    if (!v12)
    {
      v8 = v9;
    }

    result = v5 / v8;
    if ((v10 & 8) == 0 && *(v6 + 44))
    {
      v13 = *&CA::WindowServer::clone_overscan_amounts_x;
      if (*&CA::WindowServer::clone_overscan_amounts_x == 0.0 || *&CA::WindowServer::clone_overscan_amounts_y == 0.0)
      {
        v13 = *(this + 15);
      }

      return result * v13;
    }
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::update_cloning_flag(atomic_uint *this)
{
  if (!*(this + 6) || !*(this + 83))
  {
    if ((this[160] & 2) != 0)
    {
      atomic_fetch_and(this + 160, 0xFFFFFFFD);
      goto LABEL_8;
    }

    return 0;
  }

  if ((this[160] & 2) != 0)
  {
    return 0;
  }

  atomic_fetch_or(this + 160, 2u);
LABEL_8:
  v2 = *(this + 6);
  if (v2)
  {
    os_unfair_lock_lock((v2 + 16));
    if (*(v2 + 128))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = *(*(v2 + 112) + 16 * v4);
        if (v5)
        {
          v6 = (v5 + 8);
          if (!atomic_fetch_add((v5 + 8), 1u))
          {
            v5 = 0;
            atomic_fetch_add(v6, 0xFFFFFFFF);
          }
        }

        if (((v3 >> 3) + 1) >> 61)
        {
          std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
        }

        if (v3 >> 3 != -1)
        {
          if (!(((v3 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
        }

        v7 = (8 * (v3 >> 3));
        *v7 = v5;
        if (v3)
        {
          v8 = 0;
          v9 = 0;
          do
          {
            *v9++ = *v8;
            *v8++ = 0;
          }

          while (v8 != v3);
          for (i = 0; i != v3; ++i)
          {
            v11 = *i;
            if (*i && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v11 + 16))(v11);
            }
          }
        }

        v3 = (v7 + 1);
        ++v4;
      }

      while (v4 < *(v2 + 128));
      os_unfair_lock_unlock((v2 + 16));
      if (v7 != -8)
      {
        v12 = 0;
        do
        {
          pthread_mutex_lock((*v12 + 72));
          v13 = CA::Render::Context::root_layer_handle(*v12);
          if (v13)
          {
            *(v13 + 13) |= 8uLL;
          }

          v14 = *v12++;
          pthread_mutex_unlock((v14 + 72));
        }

        while (v12 != v3);
      }
    }

    else
    {
      os_unfair_lock_unlock((v2 + 16));
    }
  }

  return 1;
}

uint64_t CA::WindowServer::IOMFBDisplay::clone_update(CA::WindowServer::IOMFBDisplay *this, CA::WindowServer::Server *a2, CA::WindowServer::Display *a3, CA::Render::Update *a4, unsigned int *a5, BOOL *a6)
{
  v335 = *MEMORY[0x1E69E9840];
  if ((*(a3 + 226) & 0x8000) != 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = 0;
  }

  if (CA::WindowServer::IOMFBDisplay::set_framebuffer_ax_matrix(this))
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v12 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_183AA6000, v12, OS_LOG_TYPE_ERROR, "IOMFB was not able to clone accessibility matrix on external display.\n", buf, 2u);
      if (!a4)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  if (a4)
  {
LABEL_9:
    CA::WindowServer::IOMFBDisplay::update_brightness_deadline(this, *(a4 + 10));
  }

LABEL_10:
  active = CA::WindowServer::IOMFBDisplay::cloning_active_status(this);
  v14 = active;
  if (!active)
  {
    if (!CA::WindowServer::Display::is_enabled_for_vsync_render(a3))
    {
      return -20;
    }

    v15 = *(this + 652);
    v14 = v15 == 2 ? -19 : -20;
    if (a4 && v15 == 2)
    {
      v16 = *(a4 + 41);
      v17 = (*(*this + 1416))(this);
      v18 = ((*(*a3 + 1416))(a3) ^ v17) & v16;
      v19 = v18 != 0;
      if (*(this + 29513) == 1)
      {
        v20 = *(a4 + 40);
        v21 = (*(*this + 1416))(this);
        v19 = (v21 | v20) != v21 || v18 != 0;
      }

      if (*(this + 29578) == 1)
      {
        if (x_log_get_windowserver(void)::once != -1)
        {
          dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
        }

        v276 = x_log_get_windowserver(void)::log;
        if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          v277 = *(this + 6);
          *buf = 67109120;
          *&buf[4] = v277;
          _os_log_impl(&dword_183AA6000, v276, OS_LOG_TYPE_DEFAULT, "resuming display %d cloning", buf, 8u);
        }

        *(this + 29578) = 0;
      }

      if ((*(this + 29492) & 1) == 0)
      {
        *(this + 29508) = 1;
      }

      *(this + 29492) = 1;
      v23 = *(this + 3415);
      v323 = v23;
      v24 = *(this + 83);
      if (v24 && !v23)
      {
        *(this + 3415) = v24;
        pthread_mutex_lock(this + 9);
        CA::WindowServer::IOMFBDisplay::update_framebuffer_locked(this, 4);
        pthread_mutex_unlock(this + 9);
        if (*(this + 3415) != v24)
        {
          v25.i64[0] = *(this + 3415);
          v25.i64[1] = v24;
          v26 = vshrn_n_s64(v25, 0x1DuLL);
          v27.i64[0] = v26.i32[0] & 0x1FFFFFF;
          v27.i64[1] = v26.i32[1] & 0x1FFFFFF;
          v28 = vbslq_s8(vdupq_n_s64(0x3FFFFFE0000000uLL), vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v27), vdupq_n_s64(0x3F59000000000000uLL))), vdupq_n_s64(0x40847AE147AE147BuLL))), 0x1DuLL), v25);
          if ((vmovn_s64(vceqq_s64(v28, vdupq_laneq_s64(v28, 1))).u32[0] & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        v23 = v323;
      }

      if (v23)
      {
        ++*(this + 6385);
        *a6 = 1;
        v29 = *(a4 + 10) - *(this + 3346);
        v30 = (*(*this + 760))(this) * 0.95;
        if (CA::WindowServer::IOMFBDisplay::can_update_(this, BYTE1(*(a4 + 344)) & 1, 0.0, 0.0) && v29 >= v30)
        {
          CA::WindowServer::IOMFBDisplay::update_color_matrix(this, *(a4 + 10));
          v31 = v323;
          *buf = &v323;
          v32 = *(std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,CA::WindowServer::IOMFBDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::IOMFBDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(this + 3338, v323) + 44);
          v33 = *(a4 + 38);
          v298 = v19;
          if (byte_1ED4E9864 == 1)
          {
            v34 = 0;
          }

          else
          {
            v34 = v19 | (v33 >> 19) & 1;
          }

          if ((v33 & 0x200000000) != 0)
          {
            v34 |= (*(*this + 1424))(this);
          }

          if (((*(*this + 720))(this) & 1) != 0 || (*(*this + 736))(this))
          {
            LOBYTE(v34) = 1;
          }

          pthread_mutex_lock((this + 25848));
          v314 = (this + 25912);
          v37 = *(a3 + 52);
          v38 = *(this + 14);
          v39 = *(a3 + 672) + 4;
          v40 = 4;
          if ((v38 & 4) != 0)
          {
            v39 = 4;
          }

          v41 = v39 - *(this + 672) - ((v39 - *(this + 672) + (((v39 - *(this + 672)) & 0xC000) >> 14)) & 0xFFFC);
          v42 = v41;
          v306 = v34;
          switch(v41)
          {
            case 1:
              goto LABEL_49;
            case 2:
              v299 = 3;
              break;
            case 3:
              v40 = 7;
LABEL_49:
              v43 = (v41 & 1) == 0;
LABEL_50:
              v44 = v43;
              v299 = v40;
              v45 = *(a3 + 53);
LABEL_63:
              v47 = v31 & 0x3FFF;
              v48 = (v31 >> 14) & 0x3FFF;
              v317 = (v314 + 48 * *(this + 6458));
              __asm { FMOV            V0.2D, #1.0 }

              v322 = _Q0;
              if ((v38 & 2) != 0)
              {
                v53 = v45;
                v313 = 0u;
                v54 = v37;
                _Q0.n128_u64[0] = 1.0;
                v309 = 0;
                v57.f64[0] = 1.0;
              }

              else
              {
                v53 = v45;
                v54 = v37;
                _Q0.n128_f64[0] = v47 / v45;
                if (_Q0.n128_f64[0] >= v48 / v37)
                {
                  _Q0.n128_f64[0] = v48 / v37;
                }

                *&v322.f64[0] = _Q0.n128_u64[0];
                *&v322.f64[1] = _Q0.n128_u64[0];
                if ((v38 & 8) != 0 || !v32)
                {
                  *&v57.f64[0] = _Q0.n128_u64[0];
                }

                else
                {
                  v55 = *&CA::WindowServer::clone_overscan_amounts_x;
                  if (*&CA::WindowServer::clone_overscan_amounts_x == 0.0 || (v56 = *&CA::WindowServer::clone_overscan_amounts_y, *&CA::WindowServer::clone_overscan_amounts_y == 0.0))
                  {
                    v55 = *(this + 15);
                    v56 = *(this + 16);
                  }

                  v57.f64[0] = _Q0.n128_f64[0] * v55;
                  _Q0.n128_f64[0] = _Q0.n128_f64[0] * v56;
                  v322.f64[0] = v57.f64[0];
                  *&v322.f64[1] = _Q0.n128_u64[0];
                }

                v58 = vcvtmd_s64_f64(v57.f64[0] * v53 + 0.5);
                v59 = vcvtmd_s64_f64(_Q0.n128_f64[0] * v54 + 0.5);
                v309 = __PAIR64__(v59, v58);
                v60 = (v48 - v59) >> 1;
                LODWORD(v36) = (v47 - v58) >> 1;
                DWORD1(v36) = v60;
                v313 = v36;
                v61 = *(this + 17);
                if (v61 >= 1)
                {
                  _VF = __OFSUB__(v61, v60);
                  v62 = v61 - v60;
                  if (!((v62 < 0) ^ _VF | (v62 == 0)))
                  {
                    v63 = v61 + v59 - v48;
                    if (v63 < 1)
                    {
                      v66 = 1.0;
                      LODWORD(v35) = 0;
                    }

                    else
                    {
                      v64 = v63 / v59;
                      v65 = v64 * (0.5 * v58);
                      v66 = 1.0 - v64;
                      *&v35 = truncf(v65);
                    }

                    *(&v35 + 1) = v62;
                    v309 = vcvt_s32_f32(vrnda_f32(vmul_n_f32(vcvt_f32_s32(__PAIR64__(v59, v58)), v66)));
                    *&v35 = vcvt_s32_f32(vadd_f32(*&v35, vcvt_f32_s32(*&v36)));
                    v313 = v35;
                    v57 = vmulq_n_f64(v322, v66);
                    v322 = v57;
                    _Q0.n128_u64[0] = *&v57.f64[1];
                  }
                }

                if ((byte_1ED4E9887 & 1) == 0 && *(this + 29512) == 1)
                {
                  v67 = (*(*this + 80))(this, _Q0);
                  if (v67)
                  {
                    _Q0.n128_u64[0] = *&v322.f64[1];
                    v57.f64[0] = v322.f64[0];
                    v47 = v31 & 0x3FFF;
                    v48 = (v31 >> 14) & 0x3FFF;
                  }

                  else
                  {
                    CA::ScalerUtil::ScalerLimits::limits(v67);
                    v68 = *&xmmword_1EA84FD90;
                    CA::ScalerUtil::ScalerLimits::limits(v69);
                    v70 = *(&xmmword_1EA84FD90 + 1);
                    if (v44)
                    {
                      v71 = v68;
                    }

                    else
                    {
                      v71 = *(&xmmword_1EA84FD90 + 1);
                    }

                    if (!v44)
                    {
                      v70 = v68;
                    }

                    v57.f64[0] = v71;
                    v72 = v322.f64[1];
                    if (v322.f64[0] >= v57.f64[0])
                    {
                      v57.f64[0] = v322.f64[0];
                    }

                    else
                    {
                      v72 = v322.f64[1] * v57.f64[0] / v322.f64[0];
                      v322.f64[0] = v57.f64[0];
                      v322.f64[1] = v72;
                    }

                    _Q0.n128_f64[0] = v70;
                    v47 = v31 & 0x3FFF;
                    v48 = (v31 >> 14) & 0x3FFF;
                    if (v72 >= _Q0.n128_f64[0])
                    {
                      _Q0.n128_f64[0] = v72;
                    }

                    else
                    {
                      v57.f64[0] = v57.f64[0] * _Q0.n128_f64[0] / v72;
                      v322.f64[0] = v57.f64[0];
                      *&v322.f64[1] = _Q0.n128_u64[0];
                    }
                  }
                }
              }

              v73 = vcvtmd_s64_f64(v57.f64[0] * v53 + 0.5);
              v74 = vcvtmd_s64_f64(_Q0.n128_f64[0] * v54 + 0.5);
              if (((byte_1ED4E9887 & 1) != 0 || (*(this + 29512) & 1) == 0) && (*(this + 29513) & 1) == 0)
              {
                v75 = (v47 - v73) / 2 == v313 && (v48 - v74) / 2 == DWORD1(v313);
                v76 = v75 && v309 == v73;
                if (!v76 || HIDWORD(v309) != v74)
                {
                  v317[6] = 0;
                  if (x_log_get_windowserver(void)::once != -1)
                  {
                    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
                  }

                  v78 = x_log_get_windowserver(void)::log;
                  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109376;
                    *&buf[4] = v309;
                    *&buf[8] = 1024;
                    *&buf[10] = HIDWORD(v309);
                    _os_log_error_impl(&dword_183AA6000, v78, OS_LOG_TYPE_ERROR, "Requested size (%i x %i) requires scaling on display that can't scale!", buf, 0xEu);
                  }

                  v14 = -12;
                  goto LABEL_451;
                }
              }

              v292 = v48;
              v293 = v47;
              v296 = v74;
              v297 = v73;
              v79 = v317;
              v80 = v317 + 6;
              if (!v317[6])
              {
                CA::IOMobileFramebuffer::swap_begin((this + 25696), v317 + 6);
              }

              *(this + 6516) = 0;
              v81 = 0.0;
              if (*(this + 29549) == 1)
              {
                v81 = CACurrentMediaTimeDelta();
              }

              v82 = CAHostTimeWithTime(*(a4 + 10) + v81);
              *v324 = 1;
              *buf = v82;
              IOMobileFramebufferSwapSetTimestamps();
              v310 = v317 + 6;
              v294 = v11 + 24576;
              if ((*(a3 + 905) & 0x80) != 0)
              {
                v303 = v42;
                v86 = v11 + 48 * *(v11 + 6459);
                v87 = v317[10] & 0xFE | v86[25952] & 1;
                *(v317 + 40) = v87;
                *(v317 + 40) = v87 & 0x3D | v86[25952] & 2;
                v88 = *(v86 + 3240);
                v89 = *(v88 + 68);
                if (*(v88 + 8) >= 2u && *(this + 6460) >= 2u && (*(this + 29513) & 1) == 0)
                {
                  v90 = *(v314 + 6 * *(this + 6459) + 1);
                  if (v90)
                  {
                    if ((*(v90 + 68) & 0x20) != 0 && *(v90 + 48) == v322.f64[0] && *(v90 + 56) == v322.f64[1])
                    {
                      ++*(v90 + 8);
                      *(v317 + 1) = v90;
                    }
                  }
                }

                v85 = *(v11 + 3287);
                v91 = *(v11 + 26689);
                v315 = *(v11 + 26688);
                v92 = *(v88 + 32);
                v93 = v11;
                v84 = *(v88 + 40);
                v83 = CA::WindowServer::IOMFBDisplay::color_remap_mode(v93);
                if (v92)
                {
                  v94 = v92;
                }

                else
                {
                  v94 = v84;
                }

                if (v85 && (*(this + 905) & 1) == 0)
                {
                  if (x_log_get_windowserver(void)::once != -1)
                  {
                    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
                  }

                  v95 = x_log_get_windowserver(void)::log;
                  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    _os_log_debug_impl(&dword_183AA6000, v95, OS_LOG_TYPE_DEBUG, "Clone does not support detaching. Disabling detachment", buf, 2u);
                  }

                  v294[982] = 1;
                  v14 = -7;
                  goto LABEL_451;
                }

                v307 = v94;
                v311 = (v89 >> 2) & 1;
                v290 = v91 == 2;
                v79 = v317;
                v80 = v317 + 6;
                v42 = v303;
              }

              else
              {
                v290 = 1;
                v307 = (*(*a3 + 464))(a3, 1);
                v83 = 0;
                v84 = 0;
                v315 = 0;
                v85 = 0;
                v311 = 0;
              }

              v287 = v83;
              if ((*(a4 + 1380) & 0x80) != 0 && (*(*a3 + 600))(a3))
              {
                v96 = (*(*a3 + 616))(a3);
                if (v96)
                {
                  v84 = 0;
                }

                v289 = v84;
                v97 = v307;
                if (v96)
                {
                  v97 = v96;
                }

                v307 = v97;
              }

              else
              {
                v289 = v84;
              }

              buffer = CA::WindowServer::IOMFBDisplay::allocate_buffer(this, v79, 0, *(a4 + 40));
              v100 = buffer;
              if (v311)
              {
                v101 = 36;
              }

              else
              {
                v101 = 32;
              }

              *(buffer + 68) = v101 | buffer[17] & 0xDA;
              *(buffer + 3) = v322;
              if (*(this + 29508) == 1)
              {
                IOMobileFramebufferSwapSetBackgroundColor();
                *buf = 0u;
                v327 = 0u;
                *v324 = 0u;
                v325 = 0u;
                CA::WindowServer::IOMFBDisplay::swap_set_layer(this, 0, 0, buf, v324, 0, *v80, *(a4 + 68), 0, v279);
                *buf = 0u;
                v327 = 0u;
                *v324 = 0u;
                v325 = 0u;
                CA::WindowServer::IOMFBDisplay::swap_set_layer(this, 1, 0, buf, v324, 0, *v80, *(a4 + 68), 0, v280);
                *buf = 0u;
                v327 = 0u;
                *v324 = 0u;
                v325 = 0u;
                CA::WindowServer::IOMFBDisplay::swap_set_layer(this, 2, 0, buf, v324, 0, *v80, *(a4 + 68), 0, v281);
                if ((*(*this + 1704))(this))
                {
                  v102 = *(this + 26691);
                  *buf = 0u;
                  v327 = 0u;
                  *v324 = 0u;
                  v325 = 0u;
                  CA::WindowServer::IOMFBDisplay::swap_set_layer(this, v102, 0, buf, v324, 0, *v80, *(a4 + 68), 0, v279);
                }
              }

              if (*(this + 905) & 1) == 0 || !v85 || (*(v85 + 292))
              {
                CA::WindowServer::IOMFBDisplay::delete_detached_layer(this);
                v300 = 0;
                goto LABEL_157;
              }

              v122 = *(this + 3287);
              if (!v122)
              {
                v122 = x_new0<CA::WindowServer::IOMFBDisplay::DetachedLayer>();
                *(this + 3287) = v122;
              }

              v123 = *v122;
              v124 = v299;
              if (*v122)
              {
                if (atomic_fetch_add(v123 + 2, 0xFFFFFFFF) == 1)
                {
                  (*(*v123 + 16))(v123, v299);
                  v124 = v299;
                }

                *v122 = 0;
                *(v122 + 72) = 0;
              }

              v125 = *(v122 + 1);
              if (v125)
              {
                if (atomic_fetch_add(v125 + 2, 0xFFFFFFFF) == 1)
                {
                  (*(*v125 + 16))(v125, v124);
                  v124 = v299;
                }

                *(v122 + 1) = 0;
              }

              v122[292] = v122[292] & 0xFB | *(v85 + 292) & 4;
              *(v122 + 8) = *(v85 + 32);
              v126 = *(v85 + 36) & 0xFFFFFF78 | 0x80;
              *(v122 + 9) = v126;
              if (v124 && (v127 = (*(*this + 2472))(this, v124, *(v85 + 16)), LODWORD(v124) = v299, v126 = *(v122 + 9), v127))
              {
                *(v122 + 10) = 2 * v299;
                v128 = v126 | *(v85 + 36) & 7;
                *(v122 + 9) = v128;
              }

              else
              {
                v128 = v126 | CA::WindowServer::IOMFBDisplay::clone_update(CA::WindowServer::Server *,CA::WindowServer::Display *,CA::Render::Update *,unsigned int &,BOOL &)::concat_rot[(8 * v42) | (*(v85 + 36) & 7)];
                *(v122 + 36) = v128;
              }

              v136 = *(v85 + 96);
              *(v122 + 20) = v136;
              _D2 = *(v85 + 104);
              *(v122 + 21) = _D2;
              v138 = *(v85 + 112);
              *(v122 + 22) = v138;
              v139 = *(v85 + 120);
              *(v122 + 23) = v139;
              *(v122 + 4) = *(v85 + 64);
              *(v122 + 5) = *(v85 + 80);
              *(v122 + 6) = *(v85 + 96);
              *(v122 + 7) = *(v85 + 112);
              if (v124)
              {
                if (v124 >= 4)
                {
                  v159 = _D2 + v139;
                  _D2 = v136;
                  v136 = v53 - v159;
                  v140 = v138;
                }

                else
                {
                  v140 = v139;
                  v139 = v138;
                }

                if ((v124 & 2) != 0)
                {
                  v136 = v53 - (v136 + v139);
                }

                if (v124)
                {
                  _D2 = v54 - (_D2 + v140);
                }
              }

              else
              {
                v140 = v139;
                v139 = v138;
              }

              _Q0.i64[1] = *(&v313 + 1);
              v160 = (*(v85 + 36) & 4) == 0;
              _Q6 = v322;
              v162 = v313 + v322.f64[0] * v136;
              __asm { FMLA            D0, D2, V6.D[1] }

              *(v122 + 20) = v162;
              *(v122 + 21) = _Q0.i64[0];
              v164 = v139 * _Q6.f64[0];
              v165 = vmuld_lane_f64(v140, _Q6, 1);
              *(v122 + 22) = v164;
              *(v122 + 23) = v165;
              v166 = vdup_n_s32(v160);
              v167.i64[0] = v166.u32[0];
              v167.i64[1] = v166.u32[1];
              v168 = *(v85 + 128);
              v169 = *(v85 + 144);
              v170 = vdivq_f64(vmulq_f64(vbslq_s8(vcltzq_s64(vshlq_n_s64(v167, 0x3FuLL)), *(v85 + 112), vextq_s8(*(v85 + 112), *(v85 + 112), 8uLL)), _Q6), v169);
              v171 = vmulq_f64(v170, v168);
              v172 = vmulq_f64(v170, v169);
              v305 = v42;
              if ((v128 & 7) != 0)
              {
                v170.i32[0] = 0;
                v173 = vaddq_f64(v171, v172);
                v168.i32[0] = v128 & 4;
                v174 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v168, v170), 0), v173, vextq_s8(v171, v173, 8uLL));
                v175 = vdup_n_s32(v168.i32[0] == 0);
                v176.i64[0] = v175.u32[0];
                v176.i64[1] = v175.u32[1];
                v177 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v176, 0x3FuLL)), v171, vextq_s8(v173, v171, 8uLL));
                *v173.i8 = vceqz_s32(vand_s8(vdup_n_s32(v128), 0x100000002));
                v176.i64[0] = v173.i32[0];
                v176.i64[1] = v173.i32[1];
                v178 = vbslq_s8(v176, v177, v174);
                v179 = vbslq_s8(v176, v174, v177);
                v171 = vbslq_s8(vcgtq_f64(v179, v178), v178, v179);
                v180 = vsubq_f64(v179, v178);
                v172 = vbslq_s8(vcgezq_f64(v180), v180, vnegq_f64(v180));
              }

              __asm { FMOV            V7.2D, #0.5 }

              v182 = vrndmq_f64(vaddq_f64(v171, _Q7));
              *(v122 + 12) = v182;
              v183 = floor(v162 + 0.5);
              *_Q0.i64 = floor(*_Q0.i64 + 0.5);
              *(v122 + 20) = v183;
              *(v122 + 21) = _Q0.i64[0];
              v184 = floor(v164 + 0.5);
              *v99.i64 = floor(v165 + 0.5);
              *(v122 + 22) = v184;
              *(v122 + 23) = v99.i64[0];
              v284 = _Q7;
              v185 = vrndmq_f64(vaddq_f64(v172, _Q7));
              *(v122 + 8) = v182;
              *(v122 + 9) = v185;
              *(v122 + 28) = v183;
              *(v122 + 13) = v185;
              *(v122 + 29) = _Q0.i64[0];
              *(v122 + 30) = v184;
              *(v122 + 31) = v99.i64[0];
              v186 = HIDWORD(v309);
              if (v309 > SHIDWORD(v309))
              {
                v186 = v309;
              }

              _Q0.i32[0] = v186;
              v99.i32[0] = 1073741822;
              v187.i64[0] = v313;
              v187.i64[1] = SDWORD1(v313);
              v188 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(_Q0, v99), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v187));
              v187.i64[0] = v309;
              v187.i64[1] = SHIDWORD(v309);
              v189 = vcvtq_f64_s64(v187);
              v190 = vdup_n_s32(v186 > 1073741822);
              v187.i64[0] = v190.u32[0];
              v187.i64[1] = v190.u32[1];
              v301 = v188;
              v285 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v187, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v189);
              if ((CA::BoundsImpl::contains(v188, v285, *(v122 + 14), *(v122 + 15)) & 1) == 0)
              {
                v192 = CA::OGL::clip_detached_rects(v122 + 12, v122 + 28, 0, v191, v301, v285, v193, v194, v195, v196, v197, v198);
              }

              if (v290)
              {
                goto LABEL_288;
              }

              v192.f64[0] = *(v122 + 18);
              if (v192.f64[0] == *(v122 + 22))
              {
                v192.f64[0] = *(v122 + 19);
                if (v192.f64[0] == *(v122 + 23))
                {
                  v192 = *(v122 + 13);
                  *(v122 + 15) = v192;
                }
              }

              if ((*(this + 29513) & 1) == 0)
              {
LABEL_288:
                v199 = *(v85 + 16);
                v302 = v199[16];
                v291 = (*(*v199 + 24))(v199, v192);
              }

              else
              {
                v291 = 0;
                v302 = 875704422;
              }

              v286 = (*(**(v85 + 16) + 56))(*(v85 + 16));
              v200 = vadd_s32(vmovn_s64(vcvtq_u64_f64(*(v122 + 13))), 0x100000001);
              v201.i64[0] = v200.i32[0] & 0xFFFFFFFE;
              v201.i64[1] = v200.i32[1] & 0xFFFFFFFE;
              v202 = vcvtq_f64_u64(v201);
              *(v122 + 13) = v202;
              v203 = vadd_s32(vmovn_s64(vcvtq_u64_f64(*(v122 + 15))), 0x100000001);
              v201.i64[0] = v203.i32[0] & 0xFFFFFFFE;
              v201.i64[1] = v203.i32[1] & 0xFFFFFFFE;
              v204 = vcvtq_f64_u64(v201);
              *(v122 + 15) = v204;
              v205 = *(v122 + 10);
              if (v205)
              {
                v206 = v202.f64[0];
              }

              else
              {
                v206 = v204.f64[0];
              }

              v207 = v206;
              v208 = v202.f64[1];
              if (!v205)
              {
                v208 = v204.f64[1];
              }

              v209 = v208;
              v210 = *(v122 + 3);
              if (v210)
              {
                if (*(v122 + 2) != *(v85 + 16) || *(v210 + 14) != v207 || *(v210 + 60) != __PAIR64__(v302, v209))
                {
                  goto LABEL_411;
                }

                v211 = (*(*v210 + 24))(v210);
                v210 = *(v122 + 3);
                if (v211 == v291)
                {
                  v212 = (*(*v210 + 56))(v210);
                  v210 = *(v122 + 3);
                  if (v212 == v286)
                  {
                    v300 = 0;
                    v79 = v317;
                    v42 = v305;
                    goto LABEL_430;
                  }
                }

                if (v210)
                {
LABEL_411:
                  CA::WindowServer::Surface::unref(v210);
                  *(v122 + 3) = 0;
                }
              }

              v263 = *(v122 + 2);
              if (v263)
              {
                CA::WindowServer::Surface::unref(v263);
              }

              v264 = *(v85 + 16);
              v264[118] = *(v264 + 59) + 1;
              *(v122 + 2) = v264;
              if (*(this + 29513) == 1)
              {
                v337.width = v207;
                *v324 = 0;
                v337.height = v209;
                v79 = v317;
                wireless_surface_options = CA::IOMobileFramebuffer::get_wireless_surface_options(*(this + 3212), *(a4 + 10), v337, v324);
                v300 = wireless_surface_options == 0;
                if (wireless_surface_options)
                {
                  v155 = wireless_surface_options;
                  if (!(*(*this + 2384))(this))
                  {
                    CA::WindowServer::IOMFBDisplay::delete_detached_layer(this);
                    IOMobileFramebufferSwapCancel();
                    *v310 = 0;
                    if (v155 != -536870184)
                    {
                      if (x_log_get_windowserver(void)::once != -1)
                      {
                        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
                      }

                      v156 = x_log_get_windowserver(void)::log;
                      if (!os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_450;
                      }

LABEL_466:
                      v278 = *(this + 6);
                      *buf = 67109376;
                      *&buf[4] = v278;
                      *&buf[8] = 1024;
                      *&buf[10] = v155;
                      _os_log_error_impl(&dword_183AA6000, v156, OS_LOG_TYPE_ERROR, "display %u get_wireless_surface_options returned error %x\n", buf, 0xEu);
LABEL_450:
                      v14 = -14;
                      goto LABEL_451;
                    }

                    goto LABEL_446;
                  }

                  surface = *(v122 + 3);
                }

                else
                {
                  surface = CA::WindowServer::IOSurface::wrap_buffer(this, *v324, 0, 0);
                  *(v122 + 3) = surface;
                }
              }

              else
              {
                v267 = (*(*v264 + 232))(v264);
                surface = CA::WindowServer::Display::allocate_surface(this, v207, v209, v302, v291, v286, 0, v267, @"CA Clone Surface", 0);
                v300 = 0;
                *(v122 + 3) = surface;
                v79 = v317;
              }

              v42 = v305;
              if (!surface)
              {
                *(this + 29494) = 1;
                goto LABEL_433;
              }

              *(this + 26689) = 2;
              *(this + 26688) = v315;
              v268 = *(v122 + 9) & 7 | (((*(v122 + 9) >> 3) & 1) << 9);
              if (byte_1ED4E9887 == 1)
              {
                v269 = v268 | 0x400;
              }

              else if (*(this + 29512))
              {
                v269 = v268;
              }

              else
              {
                v269 = v268 | 0x400;
              }

              *buf = 0u;
              v327 = 0u;
              if ((*(v85 + 36) & 0x8000080) != 0 || (*(v85 + 44) & 7) != 0)
              {
                *buf = vrndq_f64(vaddq_f64(*(v85 + 128), v284));
                v270 = *(v85 + 152);
                v327.f64[0] = trunc(*(v85 + 144) + 0.5);
                v271 = trunc(v270 + 0.5);
              }

              else
              {
                *buf = *(v85 + 192);
                v271 = *(v85 + 216);
                v327.f64[0] = *(v85 + 208);
              }

              v327.f64[1] = v271;
              if (!CA::WindowServer::IOMFBDisplay::copy_surface(this, *(v122 + 3), *(v122 + 2), v269, 0, 0, buf, 0, *&v271))
              {
                if (x_log_get_windowserver(void)::once != -1)
                {
                  dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
                }

                v272 = x_log_get_windowserver(void)::log;
                if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
                {
                  *v324 = 0;
                  _os_log_impl(&dword_183AA6000, v272, OS_LOG_TYPE_DEFAULT, "clone failed to copy detached layer - Disabling detachment", v324, 2u);
                }

                *(this + 226) &= ~0x100u;
                v294[982] = 1;
                if (v300)
                {
                  if ((*(**(v122 + 3) + 168))(*(v122 + 3)))
                  {
                    LOBYTE(v318[0]) = 0;
                    v273 = *(this + 26689);
                    v274 = *(v122 + 3);
                    *v324 = 0u;
                    v325 = 0u;
                    v320 = 0u;
                    v321 = 0u;
                    CA::WindowServer::IOMFBDisplay::swap_set_layer(this, v273, v274, v324, &v320, 0, *v310, *(a4 + 68), v318, v279);
                    if (LOBYTE(v318[0]) == 1)
                    {
                      CA::CASharedEvent::force_complete(*(*(v122 + 3) + 16), [*(*(*(v122 + 3) + 16) + 32) signaledValue] + 1, 0, 0);
                    }
                  }
                }

                CA::WindowServer::IOMFBDisplay::delete_detached_layer(this);
                IOMobileFramebufferSwapCancel();
                *v310 = 0;
                goto LABEL_444;
              }

              v210 = *(v122 + 3);
LABEL_430:
              *(this + 29494) = 1;
              if (v210)
              {
LABEL_434:
                v122[292] &= ~1u;
LABEL_157:
                v103 = *(this + 3287);
                v104 = v307;
                v316 = *(this + 26688);
                if (!v103 && *(this + 26688) != 2 && *(this + 29513) == 1)
                {
                  v105 = *(this + 26688);
                  if ((*(this + 14) & 0x10) == 0)
                  {
                    v105 = 2;
                  }

                  v316 = v105;
                }

                if ((*(this + 29494) & 1) != 0 || *(this + 29508) == 1)
                {
                  if (v103)
                  {
                    v106 = *(v103 + 24);
                    memset(buf, 0, sizeof(buf));
                    v107 = *(v106 + 56);
                    v108.i64[0] = v107;
                    v108.i64[1] = HIDWORD(v107);
                    v327 = vcvtq_f64_u64(v108);
                    v109 = *(v103 + 240);
                    *v324 = *(v103 + 224);
                    v325 = v109;
                    v319 = 0;
                    CA::WindowServer::IOMFBDisplay::swap_set_layer(this, *(this + 26689), v106, buf, v324, *(v103 + 40), *(v79 + 24), *(a4 + 68), &v319, v279);
                    *(v79 + 40) = *(v79 + 40) & 0xBF | (v319 << 6);
                    v320 = 0u;
                    v321 = 0u;
                    memset(v318, 0, sizeof(v318));
                    CA::WindowServer::IOMFBDisplay::swap_set_layer(this, (v316 == 0), 0, &v320, v318, 0, *(v79 + 24), *(a4 + 68), 0, v282);
                    v110 = *(v103 + 24);
                    ++*(v110 + 236);
                    *(v79 + 16) = v110;
                    if ((*(v103 + 292) & 4) != 0)
                    {
                      *(v79 + 40) |= 2u;
                    }
                  }

                  else
                  {
                    *buf = 0u;
                    v327 = 0u;
                    *v324 = 0u;
                    v325 = 0u;
                    CA::WindowServer::IOMFBDisplay::swap_set_layer(this, 1, 0, buf, v324, 0, *v310, *(a4 + 68), 0, v279);
                    *buf = 0u;
                    v327 = 0u;
                    *v324 = 0u;
                    v325 = 0u;
                    v104 = v307;
                    CA::WindowServer::IOMFBDisplay::swap_set_layer(this, (2 * (v316 == 0)), 0, buf, v324, 0, *v310, *(a4 + 68), 0, v283);
                  }
                }

                if ((*(*this + 2384))(this))
                {
                  v113 = v104 == 0;
                }

                else if (*(this + 3287))
                {
                  v113 = 1;
                }

                else
                {
                  v113 = v104 == 0;
                }

                v114 = v113;
                if ((v114 | v311))
                {
                  *buf = 0u;
                  v327 = 0u;
                  *v324 = 0u;
                  v325 = 0u;
                  v115 = v317 + 6;
                  CA::WindowServer::IOMFBDisplay::swap_set_layer(this, v316, 0, buf, v324, 0, *v310, *(a4 + 68), 0, v279);
                  v116 = 0;
                  goto LABEL_365;
                }

                v117 = v42 - 1;
                if ((v42 - 1) > 2)
                {
                  v312 = 0;
                  v121 = 0;
                }

                else
                {
                  v118 = dword_183E31E98[(v42 - 1)];
                  v119 = (*(*this + 2472))(this, dword_183E31E98[v117], v104);
                  v120 = 2 * v118;
                  if (!v119)
                  {
                    v120 = 0;
                  }

                  v312 = v120;
                  if (v119)
                  {
                    v121 = 0;
                  }

                  else
                  {
                    v121 = v118;
                  }
                }

                if (byte_1ED4E9887 == 1)
                {
                  v129 = v121 | 0x400;
                }

                else if (*(this + 29512))
                {
                  v129 = v121;
                }

                else
                {
                  v129 = v121 | 0x400;
                }

                if (v100[2] != 1)
                {
                  v116 = 0;
                  goto LABEL_355;
                }

                v308 = v129;
                if ((v306 & 1) == 0)
                {
                  v141 = *(v100 + 5);
                  if (v141)
                  {
                    CA::WindowServer::Surface::unref(v141);
                    *(v100 + 5) = 0;
                  }

                  (*(*this + 1608))(this, 0);
LABEL_225:
                  is_hdr = CA::WindowServer::Display::Mode::is_hdr(&v323);
                  v143 = is_hdr;
                  if (v316 == 2)
                  {
                    v144 = 875704422;
                  }

                  else
                  {
                    v144 = 1380411457;
                  }

                  if (v316 != 2 && !is_hdr)
                  {
                    v144 = CA::WindowServer::IOMFBDisplay::framebuffer_pixel_format(this);
                  }

                  v295 = v143;
                  v304 = v144;
                  if ((*(*this + 80))(this))
                  {
                    v308 = v129 | 0x10000;
                    v146 = v292;
                    v145 = v293;
                  }

                  else
                  {
                    if (((*(*this + 2504))(this, v316, &v322) & 1) != 0 || (byte_1ED4E9887 & 1) != 0 || *(this + 29512) != 1)
                    {
                      v149 = (v312 & 8) == 0;
                      v148 = v296;
                      v147 = v297;
                    }

                    else
                    {
                      v147 = *(v104 + 14);
                      v148 = *(v104 + 15);
                      v149 = (v129 & 4) == 0;
                    }

                    if (v149)
                    {
                      v145 = v147;
                    }

                    else
                    {
                      v145 = v148;
                    }

                    if (v149)
                    {
                      v146 = v148;
                    }

                    else
                    {
                      v146 = v147;
                    }
                  }

                  if (v316 == 2)
                  {
                    v150 = (v145 + 1) & 0xFFFFFFFE;
                  }

                  else
                  {
                    v150 = v145;
                  }

                  if (v316 == 2)
                  {
                    v151 = (v146 + 1) & 0xFFFFFFFE;
                  }

                  else
                  {
                    v151 = v146;
                  }

                  v152 = (*(*v104 + 232))(v104);
                  if (v298)
                  {
                    v153 = 0;
                  }

                  else
                  {
                    v153 = v152;
                  }

                  v116 = *(this + 29513);
                  if (v116 == 1)
                  {
                    if (*(this + 29510) == 1)
                    {
                      LODWORD(v150) = *(v104 + 14);
                      LODWORD(v151) = *(v104 + 15);
                    }

                    v336.height = v151;
                    v336.width = v150;
                    *v324 = 0;
                    v154 = CA::IOMobileFramebuffer::get_wireless_surface_options(*(this + 3212), *(a4 + 10), v336, v324);
                    if (v154)
                    {
                      v155 = v154;
                      IOMobileFramebufferSwapCancel();
                      *v310 = 0;
                      if (v155 != -536870184)
                      {
                        if (x_log_get_windowserver(void)::once != -1)
                        {
                          dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
                        }

                        v156 = x_log_get_windowserver(void)::log;
                        if (!os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_450;
                        }

                        goto LABEL_466;
                      }

LABEL_446:
                      v14 = -13;
                      goto LABEL_451;
                    }

                    v157 = CA::WindowServer::IOSurface::wrap_buffer(this, *v324, 0, 0);
                  }

                  else
                  {
                    v157 = *(v100 + 4);
                    if (v157)
                    {
                      if (*(v157 + 14) != v150 || *(v157 + 15) != v151 || *(v157 + 16) != v304)
                      {
                        goto LABEL_269;
                      }

                      v158 = (*(*v157 + 24))(v157);
                      v157 = *(v100 + 4);
                      if (!v158)
                      {
                        if (*(*v157 + 56))(v157) == 2 || ((*(*this + 1888))(this))
                        {
                          v275 = (*(**(v100 + 4) + 232))(*(v100 + 4));
                          v157 = *(v100 + 4);
                          if (v275 == v153)
                          {
                            goto LABEL_303;
                          }
                        }

                        else
                        {
                          v157 = *(v100 + 4);
                        }
                      }

                      if (v157)
                      {
LABEL_269:
                        CA::WindowServer::Surface::unref(v157);
                        *(v100 + 4) = 0;
                      }
                    }

                    v157 = CA::WindowServer::Display::allocate_surface(this, v150, v151, v304, 0, 2u, 0, v153, @"CA Clone Surface", 0);
                  }

                  *(v100 + 4) = v157;
LABEL_303:
                  if (v157)
                  {
                    if (v306 & 1 | (v289 == 0))
                    {
                      v213 = v104;
                    }

                    else
                    {
                      v213 = v289;
                    }

                    if ((*(this + 29513) & v295 & 1) != 0 && (((*(*v213 + 136))(v213) & 1) != 0 || ((*(*this + 728))(this) & 1) != 0 || (*(*this + 720))(this)))
                    {
                      v334 = 0;
                      v332 = 0u;
                      v333 = 0u;
                      v330 = 0u;
                      v331 = 0u;
                      v328 = 0u;
                      v329 = 0u;
                      *buf = 0u;
                      v327 = 0u;
                      CA::WindowServer::Display::display_attributes(buf, this);
                      if (((*(*this + 720))(this) & 1) != 0 || (*(*this + 728))(this))
                      {
                        DWORD1(v330) = 5;
                      }

                      v214 = *(v100 + 4);
                      v215 = (*(*v214 + 232))(v214);
                      v216 = (*(*this + 624))(this, v214, v213, buf, a4, v308, v215, 1);
                      if ((*(*this + 728))(this))
                      {
                        v217 = *(a4 + 295);
                        if ((*(a4 + 305) & 0x180) != 0 && v217 <= *(a4 + 296))
                        {
                          v217 = *(a4 + 296);
                        }

                        v218 = *(a4 + 101);
                        v111.n128_u32[0] = 10.0;
                        if (v218 < 10.0)
                        {
                          v111.n128_u32[0] = 1.0;
                          if (v218 >= v217)
                          {
                            if (v217 >= 1.0)
                            {
                              v111.n128_f32[0] = v217;
                            }
                          }

                          else if (v218 >= 1.0)
                          {
                            v111.n128_u32[0] = *(a4 + 101);
                          }
                        }

                        else
                        {
                          v219 = 1.0;
                          if (v217 >= 1.0)
                          {
                            v219 = v217;
                          }

                          if (v217 <= 10.0)
                          {
                            v111.n128_f32[0] = v219;
                          }
                        }

                        (*(**(v100 + 4) + 224))(*(v100 + 4), 0, v111);
                      }

                      if ((v216 & 1) == 0)
                      {
                        goto LABEL_325;
                      }
                    }

                    else
                    {
                      *buf = 0u;
                      v327 = 0u;
                      if ((*(*this + 80))(this))
                      {
                        v226 = v309;
                        if (v309 <= SHIDWORD(v309))
                        {
                          v226 = HIDWORD(v309);
                        }

                        v224.i32[0] = v226;
                        v225.i32[0] = 1073741822;
                        v227.i64[0] = v313;
                        v227.i64[1] = SDWORD1(v313);
                        v224 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v224, v225), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v227));
                        v227.i64[0] = v309;
                        v227.i64[1] = SHIDWORD(v309);
                        v228 = vdup_n_s32(v226 > 1073741822);
                        v229 = vcvtq_f64_s64(v227);
                        v227.i64[0] = v228.u32[0];
                        v227.i64[1] = v228.u32[1];
                        *buf = v224;
                        v327 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v227, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v229);
                        v308 |= 0x400u;
                        v230 = buf;
                      }

                      else
                      {
                        v230 = 0;
                      }

                      if (CA::ScalerUtil::get_io_service(void)::once != -1)
                      {
                        dispatch_once(&CA::ScalerUtil::get_io_service(void)::once, &__block_literal_global_77);
                      }

                      if (CA::ScalerUtil::get_io_service(void)::scaler_service)
                      {
                        v231 = v308;
                      }

                      else
                      {
                        v231 = v308 | 0x800;
                      }

                      if (v295)
                      {
                        v232 = v287;
                      }

                      else if (*(this + 29513))
                      {
                        v232 = v287;
                      }

                      else
                      {
                        v232 = 0;
                      }

                      if (CADeviceIsVirtualized::once[0] != -1)
                      {
                        v288 = v232;
                        dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
                        v232 = v288;
                      }

                      if ((CA::WindowServer::IOMFBDisplay::copy_surface(this, *(v100 + 4), v213, v231, v232, v230, 0, 0, *v224.i32) & 1) == 0)
                      {
LABEL_325:
                        if (x_log_get_windowserver(void)::once != -1)
                        {
                          dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
                        }

                        v220 = x_log_get_windowserver(void)::log;
                        if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 0;
                          _os_log_error_impl(&dword_183AA6000, v220, OS_LOG_TYPE_ERROR, "failed to copy main layer", buf, 2u);
                          if (v116)
                          {
                            goto LABEL_329;
                          }
                        }

                        else if (v116)
                        {
LABEL_329:
                          if ((*(**(v100 + 4) + 168))(*(v100 + 4)))
                          {
                            LOBYTE(v320) = 0;
                            v221 = *(this + 26688);
                            v222 = *(v100 + 4);
                            *buf = 0u;
                            v327 = 0u;
                            *v324 = 0u;
                            v325 = 0u;
                            CA::WindowServer::IOMFBDisplay::swap_set_layer(this, v221, v222, buf, v324, 0, *v310, *(a4 + 68), &v320, v279);
                            if (v320 == 1)
                            {
                              CA::CASharedEvent::force_complete(*(*(v100 + 4) + 16), [*(*(*(v100 + 4) + 16) + 32) signaledValue] + 1, 0, 1);
                            }
                          }
                        }

                        v223 = *(v100 + 4);
                        if (v223)
                        {
                          CA::WindowServer::Surface::unref(v223);
                        }

                        *(v100 + 4) = 0;
                        IOMobileFramebufferSwapCancel();
                        *v310 = 0;
LABEL_444:
                        v14 = -15;
LABEL_451:
                        pthread_mutex_unlock((this + 25848));
                        return v14;
                      }
                    }

                    *(v100 + 68) = v100[17] & 0xF6 | 1;
                  }

                  v79 = v317;
LABEL_355:
                  v233 = *(v100 + 4);
                  if (v233)
                  {
                    v111.n128_u32[0] = *(v233 + 56);
                    v112.i32[0] = *(v233 + 60);
                    v234 = v111.n128_u64[0];
                    v235 = v112.u64[0];
                    memset(buf, 0, sizeof(buf));
                    v327.f64[0] = v111.n128_u64[0];
                    v327.f64[1] = v112.u64[0];
                    v236 = v309;
                    if (v309 <= SHIDWORD(v309))
                    {
                      v236 = HIDWORD(v309);
                    }

                    v111.n128_u32[0] = v236;
                    v112.i32[0] = 1073741822;
                    v237.i64[0] = v313;
                    v237.i64[1] = SDWORD1(v313);
                    v238 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v111, v112), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v237));
                    v237.i64[0] = v309;
                    v237.i64[1] = SHIDWORD(v309);
                    v239 = vcvtq_f64_s64(v237);
                    v240 = vdup_n_s32(v236 > 1073741822);
                    v237.i64[0] = v240.u32[0];
                    v237.i64[1] = v240.u32[1];
                    *v324 = v238;
                    v325 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v237, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v239);
                    if ((*(*this + 80))(this))
                    {
                      memset(v324, 0, sizeof(v324));
                      *v325.i64 = v234;
                      *&v325.i64[1] = v235;
                    }

                    LOBYTE(v320) = 0;
                    CA::WindowServer::IOMFBDisplay::swap_set_layer(this, v316, *(v100 + 4), buf, v324, v312, *(v79 + 24), *(a4 + 68), &v320, v279);
                    *(v79 + 40) = *(v79 + 40) & 0x7F | (v320 << 7);
                    if (initialized[0] != -1)
                    {
                      dispatch_once_f(initialized, 0, init_debug);
                    }

                    v115 = v317 + 6;
                    v241 = v306;
                    if (*&dword_1ED4E9658)
                    {
                      v242 = (*(**(v100 + 4) + 168))(*(v100 + 4));
                      CA::WindowServer::IOMFBDisplay::dump_framebuffer(this, v242);
                    }

                    goto LABEL_366;
                  }

                  v115 = v317 + 6;
LABEL_365:
                  v241 = v306;
LABEL_366:
                  v100[3] = *v115;
                  CA::WindowServer::IOMFBDisplay::update_color_matrix(this, *(a4 + 10));
                  CA::WindowServer::IOMFBDisplay::update_blend_display_color_spaces(this);
                  CA::WindowServer::IOMFBDisplay::update_system_gamma(this);
                  CA::WindowServer::IOMFBDisplay::update_blackpoint_adaptation(this);
                  CA::WindowServer::IOMFBDisplay::update_gamma_adjustment(this);
                  updated = CA::WindowServer::IOMFBDisplay::update_user_adjustment(this);
                  if (*(this + 29557) == 1)
                  {
                    v244 = *(this + 29502);
                    if (v244 != (*(*a3 + 864))(a3, updated))
                    {
                      *(this + 29502) = (*(*a3 + 864))(a3);
                      IOMobileFramebufferSwapSetColorRemapMode();
                    }
                  }

                  CA::WindowServer::IOMFBDisplay::update_contrast_preservation_allowed(this);
                  CA::WindowServer::IOMFBDisplay::swap_brightness(this);
                  CA::WindowServer::IOMFBDisplay::update_display_edr_factor(this);
                  CA::WindowServer::IOMFBDisplay::swap_display_edr_factor(this);
                  CA::WindowServer::IOMFBDisplay::swap_display_headroom_used(this, a4);
                  CA::WindowServer::IOMFBDisplay::swap_hdr_metadata(this, a4);
                  v245 = *(this + 29507);
                  if (v245 != (*(*a3 + 888))(a3))
                  {
                    v246 = (*(*a3 + 888))(a3);
                    *(this + 29507) = v246;
                    iomfb_swap_set_pulse_width_maximization(*(this + 3212), v246);
                  }

                  if ((v241 & 1) == 0)
                  {
                    if (v297 <= v296)
                    {
                      v247 = v296;
                    }

                    else
                    {
                      v247 = v297;
                    }

                    if (v247 <= 1073741822)
                    {
                      v248 = v296 * v297;
                    }

                    else
                    {
                      v248 = INFINITY;
                    }

                    v249 = mach_absolute_time();
                    v250 = CATimeWithHostTime(v249);
                    CARecordFrame(0, 0, 0, 0, v250, v248, 0.0);
                  }

                  v251 = IOMobileFramebufferSwapEnd();
                  if (v300)
                  {
                    v252 = *(this + 3287);
                    if (v252)
                    {
                      v253 = *(v252 + 24);
                      if (v253)
                      {
                        CA::WindowServer::Surface::unref(v253);
                        *(*(this + 3287) + 24) = 0;
                      }
                    }
                  }

                  if (v116)
                  {
                    v254 = *(v100 + 4);
                    if (v254)
                    {
                      CA::WindowServer::Surface::unref(v254);
                      *(v100 + 4) = 0;
                    }
                  }

                  if (v251)
                  {
                    if (x_log_get_windowserver(void)::once != -1)
                    {
                      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
                    }

                    v255 = x_log_get_windowserver(void)::log;
                    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
                    {
                      v262 = *(this + 6);
                      *buf = 67109376;
                      *&buf[4] = v262;
                      *&buf[8] = 1024;
                      *&buf[10] = v251;
                      _os_log_error_impl(&dword_183AA6000, v255, OS_LOG_TYPE_ERROR, "display %u swap_end returned error %x\n", buf, 0xEu);
                    }

                    if (BYTE11(xmmword_1ED4E980C) == 1)
                    {
                      kdebug_trace();
                    }

                    v256 = *(v79 + 40);
                    if ((v256 & 0x40) != 0)
                    {
                      CA::CASharedEvent::force_complete(*(*(v79 + 16) + 16), [*(*(*(v79 + 16) + 16) + 32) signaledValue] + 1, 0, 1);
                      v256 = *(v79 + 40) & 0xBF;
                      *(v79 + 40) = v256;
                    }

                    if (v256 < 0)
                    {
                      v257 = *(*(*(v79 + 8) + 32) + 16);
                      CA::CASharedEvent::force_complete(v257, [v257[4] signaledValue] + 1, 0, 1);
                      *(v79 + 40) &= ~0x80u;
                    }

                    *v115 = 0;
                    v14 = -16;
                  }

                  else
                  {
                    *(this + 3346) = *(a4 + 10);
                    CA::WindowServer::IOMFBDisplay::finish_update_(this, v79, a4, 0);
                    if ((*(this + 29557) & 1) != 0 || (v258 = *(this + 29502), v258 == (*(*a3 + 864))(a3)))
                    {
                      v259 = 0;
                    }

                    else
                    {
                      *(this + 29502) = (*(*a3 + 864))(a3);
                      v259 = 16;
                    }

                    v260 = *(this + 6606);
                    if (v260 != (*(*a3 + 936))(a3))
                    {
                      *(this + 6606) = (*(*a3 + 936))(a3);
                      v259 |= 0x20u;
                    }

                    v261 = *(this + 6629);
                    if (v261 != (*(*a3 + 1016))(a3))
                    {
                      *(this + 6629) = (*(*a3 + 1016))(a3);
                      v259 |= 0x100u;
                    }

                    CA::WindowServer::IOMFBDisplay::update_framebuffer_color_properties(this, v259);
                    v14 = 0;
                  }

                  goto LABEL_451;
                }

                v130 = CA::WindowServer::IOMFBDisplay::framebuffer_pixel_format(this);
                v131 = (*(*v104 + 232))(v104);
                if (v298)
                {
                  v132 = 0;
                }

                else
                {
                  v132 = v131;
                }

                v104 = *(v100 + 5);
                if (v104)
                {
                  if (*(v104 + 14) != *(a3 + 52) || *(v104 + 15) != *(a3 + 53) || *(v104 + 16) != v130)
                  {
                    goto LABEL_214;
                  }

                  v133 = (*(*v104 + 232))(*(v100 + 5));
                  v104 = *(v100 + 5);
                  if (v133 == v132)
                  {
LABEL_216:
                    v134 = mach_absolute_time();
                    v135 = CATimeWithHostTime(v134);
                    CA::WindowServer::Server::inhibit_clone_render(a2, v104, a4, a3, v135);
                    v129 = v308;
                    goto LABEL_225;
                  }

                  if (v104)
                  {
LABEL_214:
                    CA::WindowServer::Surface::unref(v104);
                  }
                }

                v104 = CA::WindowServer::Display::allocate_surface(this, *(a3 + 52), *(a3 + 53), v130, 0, 2u, 0, v132, @"CA Clone Surface", 0);
                *(v100 + 5) = v104;
                goto LABEL_216;
              }

LABEL_433:
              CA::WindowServer::IOMFBDisplay::delete_detached_layer(this);
              goto LABEL_434;
            default:
              v43 = 0;
              if (v42)
              {
                v40 = 0;
                goto LABEL_50;
              }

              v299 = 0;
              break;
          }

          v44 = 1;
          v45 = *(a3 + 52);
          v37 = *(a3 + 53);
          goto LABEL_63;
        }

        ++*(this + 6386);
        if (v29 < v30)
        {
          return -22;
        }

        else
        {
          return -6;
        }
      }

LABEL_53:
      *(this + 29492) = 0;
      return -2;
    }
  }

  return v14;
}

uint64_t CA::WindowServer::IOMFBDisplay::color_remap_mode(CA::WindowServer::IOMFBDisplay *this)
{
  if ((*(this + 29495) & 1) != 0 || (*(this + 336) & 0x1C00) == 0x1000)
  {
    return 0;
  }

  IOMobileFramebufferGetColorRemapMode();
  return 0;
}

void CA::WindowServer::IOMFBDisplay::dump_framebuffer(CA::WindowServer::IOMFBDisplay *this, __IOSurface *a2)
{
  v4 = *(this + 3345);
  if (v4)
  {
    (**v4)(v4);
  }

  if (*(this + 29513))
  {
    v5 = "wireless-framebuffer";
  }

  else
  {
    v5 = "framebuffer";
  }

  v6 = CAIOSurfaceWriteToFileWithSuffix(a2, v5);
  if (v6)
  {
    if (*&dword_1ED4E9658 > 0.0)
    {
      *&dword_1ED4E9658 = *&dword_1ED4E9658 + -1.0;
    }

    free(v6);
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::update_contrast_preservation_allowed(uint64_t this)
{
  if (*(this + 26493) == 1)
  {
    *(this + 26493) = 0;
    *(this + 26492) = (*(this + 29502) & 1) == 0 && (*(this + 29505) & 1) == 0 && fabsf(*(this + 27168) + -1.0) <= 0.001 && fabs(*(this + 27104) + -1.0) < 0.00100000005 && fabsf(*(this + 27108)) < 0.001 && fabsf(*(this + 27112)) < 0.001 && fabsf(*(this + 27116)) < 0.001 && fabsf(*(this + 27120)) < 0.001 && fabs(*(this + 27124) + -1.0) < 0.00100000005 && fabsf(*(this + 27128)) < 0.001 && fabsf(*(this + 27132)) < 0.001 && fabsf(*(this + 27136)) < 0.001 && fabsf(*(this + 27140)) < 0.001 && fabs(*(this + 27144) + -1.0) < 0.00100000005 && fabsf(*(this + 27148)) < 0.001 && *(this + 26424) <= 0.001;
  }

  return this;
}

uint64_t CA::WindowServer::IOMFBDisplay::SecureIndicator::is_fbi_active(CA::WindowServer::IOMFBDisplay::SecureIndicator *this)
{
  v1 = *this;
  if (!*this)
  {
    goto LABEL_6;
  }

  if (!*v1)
  {
    v3 = sil_mgr_instance(0, 0xFFFFFFFFLL);
    *v1 = v3;
    if (v3)
    {
      v1 = *this;
      goto LABEL_5;
    }

LABEL_6:
    v4 = 0;
    return v4 & 1;
  }

LABEL_5:
  v4 = *(v1 + 259);
  return v4 & 1;
}

uint64_t CA::WindowServer::IOMFBDisplay::set_icc_curve_with_cg_trc(uint64_t a1, uint64_t a2, signed int a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  bzero(&v12, 0x218uLL);
  if (!a2)
  {
    return CA::WindowServer::IOMFBDisplay::swap_set_icc_curve(a1, a3, *(a1 + 24), 0, a4, &v12);
  }

  v8 = *a2;
  if (*a2 > 3)
  {
    if (v8 > 5)
    {
      if (v8 == 6)
      {
        v10 = 7;
      }

      else
      {
        if (v8 != 7)
        {
          return CA::WindowServer::IOMFBDisplay::swap_set_icc_curve(a1, a3, *(a1 + 24), 0, a4, &v12);
        }

        v10 = 6;
      }

      v12 = v10;
      return CA::WindowServer::IOMFBDisplay::swap_set_icc_curve(a1, a3, *(a1 + 24), 0, a4, &v12);
    }

    if (v8 != 4)
    {
      if (v8 == 5)
      {
        v9 = *(a2 + 4);
        v12 = 8;
        v14 = *(a2 + 12);
        v13 = v9 | 0x3F80000000000000;
      }

      return CA::WindowServer::IOMFBDisplay::swap_set_icc_curve(a1, a3, *(a1 + 24), 0, a4, &v12);
    }

    v12 = 5;
    v16 = *(a2 + 24);
    goto LABEL_19;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v12 = 3;
      goto LABEL_21;
    }

    if (v8 != 3)
    {
      return CA::WindowServer::IOMFBDisplay::swap_set_icc_curve(a1, a3, *(a1 + 24), 0, a4, &v12);
    }

    v12 = 4;
LABEL_19:
    v15 = *(a2 + 20);
LABEL_21:
    HIDWORD(v14) = *(a2 + 16);
    goto LABEL_22;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      v12 = 2;
LABEL_22:
      LODWORD(v14) = *(a2 + 12);
      v13 = *(a2 + 4);
    }
  }

  else
  {
    LODWORD(v13) = *(a2 + 4);
    v12 = *&v13 != 1.0;
  }

  return CA::WindowServer::IOMFBDisplay::swap_set_icc_curve(a1, a3, *(a1 + 24), 0, a4, &v12);
}

uint64_t CA::WindowServer::IOMFBDisplay::add_timing_info(CA::WindowServer::IOMFBDisplay *this, uint64_t a2, char a3)
{
  pthread_mutex_lock((this + 29136));
  v6 = *(this + 3651);
  v7 = *(this + 3650);
  v8 = &v6[-v7];
  v9 = 0xAAAAAAAAAAAAAAABLL * (&v6[-v7] >> 3);
  v10 = *(this + 3653);
  if (v9 == v10)
  {
    if (v6 != (v7 + 24))
    {
      memmove(*(this + 3650), (v7 + 24), &v6[-v7 - 24]);
      v6 = *(this + 3651);
      v7 = *(this + 3650);
    }

    if (v6 <= v7)
    {
      __assert_rtn("pop_back", "x-small-vector.h", 420, "_end > _begin && pop_back on empty container");
    }

    v6 -= 24;
    *(this + 3651) = v6;
    v10 = *(this + 3653);
    v8 = &v6[-v7];
    v9 = 0xAAAAAAAAAAAAAAABLL * (&v6[-v7] >> 3);
  }

  v11 = v9 + 1;
  if (v10 < v11)
  {
    v12 = *(this + 3652);
    v13 = (v10 + 1) | ((v10 + 1) >> 1) | (((v10 + 1) | ((v10 + 1) >> 1)) >> 2);
    v14 = v13 | (v13 >> 4) | ((v13 | (v13 >> 4)) >> 8);
    v15 = v14 | (v14 >> 16) | ((v14 | (v14 >> 16)) >> 32);
    if (v15 + 1 > v11)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = v11;
    }

    v17 = malloc_type_malloc(24 * v16, 0x10000402C707793uLL);
    v18 = v17;
    v19 = *(this + 3650);
    v20 = *(this + 3651);
    if (v19 != v20)
    {
      v21 = v17;
      do
      {
        v22 = *v19;
        *(v21 + 2) = *(v19 + 2);
        *v21 = v22;
        v21 += 24;
        v19 = (v19 + 24);
      }

      while (v19 != v20);
    }

    if (v7 != v12)
    {
      free(*(this + 3650));
    }

    *(this + 3650) = v18;
    v6 = &v8[v18];
    *(this + 3651) = &v8[v18];
    *(this + 3653) = v16;
  }

  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 4) = a2;
  v6[20] = a3;
  *(v6 + 21) = 0;
  v6[23] = 0;
  *(this + 3651) += 24;
  if ((a3 & 1) == 0)
  {
    v23 = *(this + 41);
    if (v23)
    {
      (*(**v23 + 1176))(*v23, a2);
    }
  }

  return pthread_mutex_unlock((this + 29136));
}

BOOL CA::WindowServer::IOMFBDisplay::presents_metal_layer_on_finish(CA::WindowServer::IOMFBDisplay *this)
{
  v1 = *(this + 3287);
  if (!v1 || (*(v1 + 292) & 1) != 0)
  {
    return 1;
  }

  v3 = *(this + 6 * *(this + 6459) + 3240);
  return v3 && (*(v3 + 68) & 4) == 0;
}

double CA::WindowServer::IOMFBDisplay::detaching_rect@<D0>(CA::WindowServer::IOMFBDisplay *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 3287);
  if (v2)
  {
    v3 = v2[7];
    v4 = vceqzq_f64(v3);
    v5 = vdupq_laneq_s64(v4, 1);
    v6 = vorrq_s8(v5, v4).u64[0];
    v7 = 0uLL;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v8 = vceqq_f64(v3, v3);
      v5 = vornq_s8(vdupq_laneq_s64(vmvnq_s8(v8), 1), v8);
      if ((*&v5.f64[0] & 0x8000000000000000) == 0)
      {
        v9 = v2[6];
        v5 = vmaxnmq_f64(v9, vdupq_n_s64(0xC1BFFFFFFF000000));
        v10 = vminnmq_f64(vaddq_f64(v9, v3), vdupq_n_s64(0x41C0000000000000uLL));
        v3 = vcvtmq_s64_f64(v5);
        v7 = vuzp1q_s32(v3, vsubq_s64(vcvtpq_s64_f64(v10), v3));
      }
    }

    v11 = v7.i32[2];
    v12 = v7.i32[3];
    if (v7.i32[2] <= v7.i32[3])
    {
      v13 = v7.i32[3];
    }

    else
    {
      v13 = v7.i32[2];
    }

    LODWORD(v3.f64[0]) = 1073741822;
    LODWORD(v5.f64[0]) = v13;
    v14.i64[0] = v7.i32[0];
    v14.i64[1] = v7.i32[1];
    v15 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v5, v3), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v14));
    v16 = v11;
    if (v13 > 1073741822)
    {
      v16 = 1.79769313e308;
    }

    *a2 = v15;
    if (v13 <= 1073741822)
    {
      result = v12;
    }

    else
    {
      result = 1.79769313e308;
    }

    *(a2 + 16) = v16;
    *(a2 + 24) = result;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::tonemap_surface(CA::CAHDRProcessor *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8 = 0;
  if (a2 && a3)
  {
    if (CADeviceHasHardwareAcceleratedHDR::once != -1)
    {
      dispatch_once(&CADeviceHasHardwareAcceleratedHDR::once, &__block_literal_global_144);
    }

    if (CADeviceHasHardwareAcceleratedHDR::has_capability == 1)
    {
      if (!*(a1 + 3335))
      {
        CA::CAHDRProcessor::new_hdr_processor(a1);
      }

      if (a4 && !*(a4 + 68))
      {
        (*(*a2 + 208))(a2, 1.0 / *(a4 + 20));
      }

      *(a2 + 236) &= ~0x200000000uLL;
      v16 = *(a1 + 3335);
      v17 = (*(*a2 + 168))(a2);
      v18 = (*(*a3 + 168))(a3);
      v19 = (*(*v16 + 16))(v16, v17, v18, a2[2], *(a3 + 16), a4, a5, 0, *(a3 + 232), a7, a8, 0);
      v8 = v19;
      v20 = 0x800000000;
      if (v19)
      {
        v20 = 0;
      }

      v21 = *(a2 + 236) & 0xFFFFFFF7FFFFFFFFLL | v20;
      *(a2 + 236) = v21;
      if (v19)
      {
        v22 = 0;
        v23 = (*(a5 + 520) == 2) << 36;
      }

      else
      {
        v23 = 0;
        v22 = 0x2000000000;
      }

      *(a2 + 236) = v22 | v23 | v21 & 0xFFFFFFCFFFFFFFFFLL;
      (*(*a2 + 224))(a2, 1, *(a3 + 68));
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

_DWORD *CA::WindowServer::IOMFBDisplay::allocate_cloning_termination_surface(CA::WindowServer::IOMFBDisplay *this)
{
  v2 = *(this + 3353);
  if (v2)
  {
    CA::WindowServer::Surface::unref(v2);
  }

  *(this + 3353) = 0;
  v3 = *(this + 6 * *(this + 6458) + 3240);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 40);
  if (!v4)
  {
    v4 = *(v3 + 32);
    if (!v4)
    {
      return 0;
    }
  }

  v5 = v4[14];
  v6 = v4[15];
  v7 = CA::WindowServer::IOMFBDisplay::framebuffer_pixel_format(this);
  v8 = (*(*v4 + 232))(v4);
  result = CA::WindowServer::Display::allocate_surface(this, v5, v6, v7, 0, 2u, 0, v8, @"CA Cloning Terminator Surface", 0);
  *(result + 59) |= 0x2000000uLL;
  *(this + 3353) = result;
  return result;
}

float CA::WindowServer::layer_bandwidth_v2(CA::WindowServer *this, CA::WindowServer::Surface *a2, const CA::Rect *a3, const CA::Rect *a4, double a5, float *a6, float *a7, double a8, double a9, float a10)
{
  v13 = a8;
  v14 = a9;
  v15 = CA::WindowServer::Surface::bits_per_pixel(this) * a5;
  v16 = ((v15 * v13) / v14) / (a10 * 8.0) + *a2;
  *a2 = v16;
  result = *a3 + ((v15 * ((v13 + v14 - 1) / v14)) / (a10 * 8.0));
  *a3 = result;
  return result;
}

void CA::WindowServer::rotate_surface_log(CA::WindowServer *this, CA::WindowServer::Surface *a2, const char *a3)
{
  v3 = a2;
  v47 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v5 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (*(*this + 168))(this);
    ID = IOSurfaceGetID(v6);
    v8 = (*(*this + 168))(this);
    PixelFormat = IOSurfaceGetPixelFormat(v8);
    v10 = HIBYTE(PixelFormat);
    v11 = MEMORY[0x1E69E9830];
    if ((PixelFormat & 0x80000000) != 0)
    {
      if (__maskrune(v10, 0x40000uLL))
      {
        goto LABEL_6;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x40000) != 0)
    {
LABEL_6:
      v12 = (*(*this + 168))(this);
      v13 = IOSurfaceGetPixelFormat(v12) >> 24;
      goto LABEL_9;
    }

    v13 = 32;
LABEL_9:
    v14 = (*(*this + 168))(this);
    v15 = (IOSurfaceGetPixelFormat(v14) >> 16);
    if (v15 <= 0x7F)
    {
      if ((*(v11 + 4 * v15 + 60) & 0x40000) != 0)
      {
        goto LABEL_11;
      }
    }

    else if (__maskrune(v15, 0x40000uLL))
    {
LABEL_11:
      v16 = (*(*this + 168))(this);
      v17 = (IOSurfaceGetPixelFormat(v16) << 8) >> 24;
      goto LABEL_14;
    }

    v17 = 32;
LABEL_14:
    v18 = (*(*this + 168))(this);
    v19 = (IOSurfaceGetPixelFormat(v18) >> 8);
    if (v19 <= 0x7F)
    {
      if ((*(v11 + 4 * v19 + 60) & 0x40000) != 0)
      {
        goto LABEL_16;
      }
    }

    else if (__maskrune(v19, 0x40000uLL))
    {
LABEL_16:
      v20 = (*(*this + 168))(this);
      v21 = IOSurfaceGetPixelFormat(v20) >> 8;
      goto LABEL_19;
    }

    v21 = 32;
LABEL_19:
    v22 = (*(*this + 168))(this);
    v23 = IOSurfaceGetPixelFormat(v22);
    if (v23 <= 0x7F)
    {
      if ((*(v11 + 4 * v23 + 60) & 0x40000) != 0)
      {
        goto LABEL_21;
      }
    }

    else if (__maskrune(v23, 0x40000uLL))
    {
LABEL_21:
      v24 = (*(*this + 168))(this);
      v25 = IOSurfaceGetPixelFormat(v24);
LABEL_24:
      v26 = (*(*this + 168))(this);
      Width = IOSurfaceGetWidth(v26);
      v28 = (*(*this + 168))(this);
      v29 = 136317186;
      v30 = "Display";
      v31 = 1024;
      v32 = ID;
      v33 = 1024;
      v34 = v13;
      v35 = 1024;
      v36 = v17;
      v37 = 1024;
      v38 = v21;
      v39 = 1024;
      v40 = v25;
      v41 = 2048;
      v42 = Width;
      v43 = 2048;
      Height = IOSurfaceGetHeight(v28);
      v45 = 1024;
      v46 = v3;
      _os_log_impl(&dword_183AA6000, v5, OS_LOG_TYPE_DEFAULT, "Rotate with %s: Surface 0x%x %c%c%c%c [%zu x %zu] rotation_flags 0x%x", &v29, 0x44u);
      return;
    }

    v25 = 32;
    goto LABEL_24;
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::color_flush_color(CA::WindowServer::IOMFBDisplay *this, const CA::Render::Update *a2)
{
  if ((*(a2 + 1382) & 0x20) != 0)
  {
    return 3768639712;
  }

  else
  {
    return 3772776672;
  }
}

CA::Shape *CA::WindowServer::IOMFBDisplay::update_surface(CA::WindowServer::IOMFBDisplay *this, int a2, int a3, uint64_t a4, BOOL a5, int a6)
{
  v11 = CA::WindowServer::IOMFBDisplay::use_assembly_surface(this);

  return CA::WindowServer::IOMFBDisplay::current_page_surface(this, v11, a2, a3, 0, a4, a6);
}

CA::Shape *CA::WindowServer::IOMFBDisplay::current_page_surface(CA::WindowServer::IOMFBDisplay *this, uint64_t a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  v48 = *MEMORY[0x1E69E9840];
  v12 = this + 24576;
  pthread_mutex_lock((this + 25848));
  v13 = this + 48 * *(v12 + 314);
  v14 = *(v13 + 3240);
  v15 = CA::WindowServer::IOMFBDisplay::use_assembly_surface(this);
  if (!v14)
  {
    surface = 0;
    goto LABEL_65;
  }

  v16 = v15;
  v18 = v14 + 5;
  v17 = v14[5];
  if (v17)
  {
    v19 = v16;
  }

  else
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    CA::WindowServer::Surface::unref(v17);
    *v18 = 0;
  }

  v20 = *(this + 164);
  v44 = 0;
  v45 = v20 & 0x3FFF;
  v46 = (v20 >> 14) & 0x3FFF;
  v41 = a6;
  if (v16 != a2 || (BYTE14(xmmword_1ED4E97EC) & 1) != 0)
  {
    if (*(*this + 80))(this) && (v47 = this + 27320, (*(std::__hash_table<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::__unordered_map_hasher<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,CA::WindowServer::IOMFBDisplay::ModeHash,std::equal_to<CA::WindowServer::Display::Mode>,true>,std::__unordered_map_equal<CA::WindowServer::Display::Mode,std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>,std::equal_to<CA::WindowServer::Display::Mode>,CA::WindowServer::IOMFBDisplay::ModeHash,true>,std::allocator<std::__hash_value_type<CA::WindowServer::Display::Mode,CA::WindowServer::IOMFBDisplay::ModeInfo>>>::__emplace_unique_key_args<CA::WindowServer::Display::Mode,std::piecewise_construct_t const&,std::tuple<CA::WindowServer::Display::Mode const&>,std::tuple<>>(this + 3338, *(this + 3415)) + 44)))
    {
      v21 = &v44;
    }

    else
    {
      v21 = (this + 152);
    }
  }

  else
  {
    v21 = (this + 200);
  }

  if (a2)
  {
    v38 = 0;
    v40 = 0;
    surface = *v18;
    v39 = @"CA Assembly Buffer";
  }

  else
  {
    v38 = (*(*this + 1576))(this);
    if (v38)
    {
      v23 = 5;
    }

    else
    {
      v23 = 1;
    }

    v40 = v23;
    v18 = v14 + 4;
    surface = v14[4];
    v39 = @"CA Framebuffer";
    if (v12[2112] == 2)
    {
      v24 = 875704422;
      goto LABEL_23;
    }
  }

  v24 = CA::WindowServer::IOMFBDisplay::framebuffer_pixel_format(this);
LABEL_23:
  if (a7)
  {
    v25 = 1380411457;
  }

  else
  {
    v25 = v24;
  }

  if (a5)
  {
    v25 = 1027423537;
  }

  if ((v12[983] & a2) != 0)
  {
    v26 = 1380411457;
  }

  else
  {
    v26 = v25;
  }

  v27 = (*(*this + 2480))(this, v26, *(v21 + 2), a2);
  if (a4)
  {
    v28 = 1111970369;
  }

  else
  {
    v28 = v27;
  }

  if (a3)
  {
    if (!surface || *(surface + 14) != *(v21 + 2) || *(surface + 15) != *(v21 + 3) || *(surface + 16) != v28 || v38 != (HIBYTE(*(surface + 59)) & 1) || (*(*surface + 232))(surface) != v41)
    {
      if ((*(*this + 1888))(this))
      {
        v29 = 16;
      }

      else
      {
        v29 = 2;
      }

      surface = CA::WindowServer::Display::allocate_surface(this, *(v21 + 2), *(v21 + 3), v28, 0, v29, v40, v41, v39, 0);
      if (!surface)
      {
        goto LABEL_65;
      }

      v13[25952] &= ~0x10u;
      if (*v18)
      {
        CA::WindowServer::Surface::unref(*v18);
      }

      *v18 = surface;
      v32 = v14[2];
      v31 = v14 + 2;
      if (v32)
      {
        CA::shape_union(v31, v21, v30);
      }

      v33 = *(surface + 236);
      *(surface + 236) = v33 | 0x200000000;
      if ((v40 & 1) != 0 && (a2 & 1) == 0 && (*(this + 336) & 0x1800) == 0 && *(v12 + 244) <= 2u && (v33 & 0x4000000) == 0)
      {
        *(surface + 236) = v33 | 0x204000000;
        ++*(v12 + 244);
      }

      v12[2688] = 1;
    }
  }

  else if (!surface)
  {
    goto LABEL_65;
  }

  if (a2 && (v12[983] & 1) != 0)
  {
    v34 = 0;
  }

  else
  {
    is_hdr = CA::WindowServer::Display::Mode::is_hdr((this + 27320));
    v34 = 0x100000000;
    if (is_hdr)
    {
      v34 = 0;
    }
  }

  *(surface + 236) = *(surface + 236) & 0xFFFFFFFEFFFFFFFFLL | v34;
  if ((*(*this + 1888))(this))
  {
    v36 = (*(*this + 1848))(this);
    (*(*surface + 96))(surface, v36, 0);
  }

  *(surface + 40) = 0u;
  *(surface + 24) = 0u;
LABEL_65:
  pthread_mutex_unlock((this + 25848));
  return surface;
}

uint64_t CA::WindowServer::IOMFBDisplay::displayed_surface(CA::WindowServer::IOMFBDisplay *this, char a2)
{
  pthread_mutex_lock((this + 25848));
  v4 = *(this + 6 * *(this + 6459) + 3240);
  if (v4)
  {
    if ((a2 & 1) == 0)
    {
      *(v4 + 68) |= 8u;
    }

    v5 = *(v4 + 32);
  }

  else
  {
    v5 = 0;
  }

  pthread_mutex_unlock((this + 25848));
  return v5;
}

void CA::WindowServer::IOMFBDisplay::cancel_all_swaps(CA::WindowServer::IOMFBDisplay *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = this + 24576;
  pthread_mutex_lock((this + 25848));
  v3 = *(v2 + 316);
  if (v3)
  {
    v4 = (v2 + 1360);
    while (1)
    {
      v5 = *v4;
      v4 += 12;
      if (v5)
      {
        break;
      }

      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    pthread_mutex_unlock((this + 25848));
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v6 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10[0]) = 0;
      _os_log_error_impl(&dword_183AA6000, v6, OS_LOG_TYPE_ERROR, "cancel_all_swaps() called with user-swaps in queue", v10, 2u);
    }
  }

  else
  {
LABEL_5:
    pthread_mutex_unlock((this + 25848));
  }

  v7 = IOMobileFramebufferSwapCancelAll();
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
      v10[0] = 67109120;
      v10[1] = v8;
      _os_log_error_impl(&dword_183AA6000, v9, OS_LOG_TYPE_ERROR, "swap_cancel_all() returned 0x%x", v10, 8u);
    }
  }
}

uint64_t CA::WindowServer::IOMFBDisplay::current_surface_is_read_only(CA::WindowServer::IOMFBDisplay *this)
{
  pthread_mutex_lock((this + 25848));
  v2 = (*(this + 48 * *(this + 6458) + 25952) >> 4) & 1;
  pthread_mutex_unlock((this + 25848));
  return v2;
}

uint64_t CA::WindowServer::IOMFBDisplay::update_secure_indicators(CA::WindowServer::IOMFBDisplay *this, const CA::Render::Update *a2, double a3)
{
  v81 = *MEMORY[0x1E69E9840];
  v6 = this + 25660;
  v7 = *(a2 + 142);
  v8 = *(a2 + 141);
  v9 = 1;
  v10 = v7 - v8;
  if (v7 == v8)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0x6DB6DB6DB6DB6DB7 * (v10 >> 3);
    if (v14 >= 4)
    {
      LODWORD(v14) = 4;
    }

    if (v14 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v14;
    }

    v15 = (v8 + 47);
    do
    {
      if (*v15)
      {
        if (*(v15 - 1) == 1)
        {
          v13 |= 1 << v11;
        }

        else
        {
          ++v12;
        }
      }

      else
      {
        v13 |= 1 << v11;
      }

      ++v11;
      v15 += 56;
    }

    while (v14 != v11);
    v9 = v12 == 0;
  }

  v16 = (*(*this + 2144))(this);
  v17 = v6[108];
  v18 = (*(*this + 2216))(this);
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  v19 = (v9 | v18 ^ 1) & v16 | (*&dword_1ED4E9754 != 0);
  if (*&dword_1ED4E9754)
  {
    if (*&dword_1ED4E9754 > 0.0)
    {
      *&dword_1ED4E9754 = *&dword_1ED4E9754 + -1.0;
    }

LABEL_20:
    if (x_log_get_secure_indicators(void)::once != -1)
    {
      dispatch_once(&x_log_get_secure_indicators(void)::once, &__block_literal_global_5775);
    }

    v20 = x_log_get_secure_indicators(void)::log;
    if (os_log_type_enabled(x_log_get_secure_indicators(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_183AA6000, v20, OS_LOG_TYPE_DEFAULT, "No indicator in update, hiding sil", buf, 2u);
    }

    if (v17)
    {
LABEL_25:
      if (v16)
      {
        v21 = CA::WindowServer::IOMFBDisplay::hide_secure_indicators(this, 15);
        buf[0] = 0;
        CA::WindowServer::IOMFBDisplay::secure_indicator_swap_end(this, buf, 0.0);
        if (!v21 || (buf[0] & 1) != 0)
        {
          return 1;
        }

        if ((CA::WindowServer::IOMFBDisplay::set_secure_indicator_state(this, 0, 1) & 1) == 0)
        {
          __assert_rtn("update_secure_indicators", "windowserver-iomfb-display.cpp", 15465, "success");
        }

        CA::WindowServer::IOMFBDisplay::post_secure_indicator_statistics_power_log(this);
      }

      (*(*this + 2176))(this);
      return 0;
    }

    goto LABEL_79;
  }

  if ((v9 | v18 ^ 1) & v16 & 1 | (*&dword_1ED4E9754 != 0))
  {
    goto LABEL_20;
  }

  if (!v17)
  {
LABEL_79:
    v49 = *(this + 3220);
    if (!v49)
    {
      return 0;
    }

    *(v49 + 260) = 1;
    if (!*v49)
    {
      v50 = sil_mgr_instance(0, 0xFFFFFFFFLL);
      *v49 = v50;
      if (!v50)
      {
        return 0;
      }

      v49 = *(this + 3220);
    }

    if (!CA::WindowServer::SILMgr::set_power(v49, 1, 0))
    {
      return 0;
    }

    if (v9)
    {
      buf[0] = 0;
      v51 = CA::WindowServer::SILMgr::turn_off_all_regions(*(this + 3220), 0, 0, buf);
      v22 = buf[0];
      if ((buf[0] & 1) == 0 && v51)
      {
        CA::WindowServer::IOMFBDisplay::SecureIndicator::set_state(this + 25760, 2);
      }

      return v22;
    }

    if (v19)
    {
      goto LABEL_25;
    }

    goto LABEL_31;
  }

  if (v9)
  {
    return 0;
  }

LABEL_31:
  os_unfair_lock_lock(this + 6701);
  if (v6[108] == 1)
  {
    v23 = atomic_load((*(this + 96) + 1));
    if (!v23 && ((*(*this + 2272))(this) & 1) == 0)
    {
      if (x_log_get_secure_indicators(void)::once != -1)
      {
        dispatch_once(&x_log_get_secure_indicators(void)::once, &__block_literal_global_5775);
      }

      v64 = x_log_get_secure_indicators(void)::log;
      v22 = 0;
      if (os_log_type_enabled(x_log_get_secure_indicators(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_183AA6000, v64, OS_LOG_TYPE_DEFAULT, "Display off, dropping SIL update", buf, 2u);
        v22 = 0;
      }

      goto LABEL_133;
    }
  }

  if ((CA::WindowServer::IOMFBDisplay::set_secure_indicator_state(this, 1, 0) & 1) == 0)
  {
    if (x_log_get_secure_indicators(void)::once != -1)
    {
      dispatch_once(&x_log_get_secure_indicators(void)::once, &__block_literal_global_5775);
    }

    v52 = x_log_get_secure_indicators(void)::log;
    if (os_log_type_enabled(x_log_get_secure_indicators(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_183AA6000, v52, OS_LOG_TYPE_DEFAULT, "SIL Powering on failed", buf, 2u);
    }

    v22 = 1;
    goto LABEL_133;
  }

  if (v16)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 0.0;
  }

  CA::WindowServer::IOMFBDisplay::hide_secure_indicators(this, v13);
  if (*(this + 3349) != 0.0)
  {
    ++*(*(this + 3220) + 264);
  }

  v25 = 0;
  v67 = 0;
  v26 = 48;
  v27 = 1;
  v66 = v6;
  do
  {
    v28 = *(a2 + 141);
    if (*(v28 + v26 - 1) == 1 && (*(v28 + v26 - 2) & 1) == 0)
    {
      v29 = (v28 + v26);
      v68 = *(v29 - 40);
      v69 = *(v29 - 24);
      v30 = *(v29 - 3);
      v31 = *(v29 - 2);
      v32 = *(v29 - 2);
      v33 = *v29;
      *v74 = vcvtq_s32_f32(v68);
      if (!CA::Shape::intersects(v27, v74))
      {
        v27 = CA::Shape::Union(v27, v74);
        v73 = 0;
        if (CADeviceSupportsHWGainMap::once != -1)
        {
          dispatch_once(&CADeviceSupportsHWGainMap::once, &__block_literal_global_86);
        }

        v34 = v68;
        v36.i32[0] = v69.i32[0];
        v35 = vmuls_lane_f32(v24, v69, 1);
        *&v36.i32[1] = v35;
        if (CADeviceSupportsHWGainMap::supports_gain_map == 1 && v31 <= 2)
        {
          v37 = powf(v35, 2.2);
          v34 = v68;
          v36 = __PAIR64__(LODWORD(v37), v69.u32[0]);
        }

        v38 = *(this + 3220);
        if (!v38)
        {
          goto LABEL_76;
        }

        if (!*v38)
        {
          v70 = v36;
          v39 = sil_mgr_instance(0, 0xFFFFFFFFLL);
          v34 = v68;
          v36 = v70;
          *v38 = v39;
          if (!v39)
          {
LABEL_76:
            LODWORD(v67) = (v73 | v67 & 1) != 0;
            HIDWORD(v67) = (HIBYTE(v73) | BYTE4(v67) & 1) != 0;
            v6 = v66;
            goto LABEL_77;
          }

          v38 = *(this + 3220);
        }

        if (initialized[0] != -1)
        {
          v72 = v36;
          dispatch_once_f(initialized, 0, init_debug);
          v34 = v68;
          v36 = v72;
        }

        if (*(v38 + 256) != *&dword_1ED4E9750)
        {
          v71 = v36;
          SILManagerSetLogLevel();
          v34 = v68;
          v36 = v71;
        }

        v40 = vextq_s8(v34, v34, 8uLL).u64[0];
        v41 = vmla_f32(*v34.i8, 0x3F0000003F000000, v40);
        if ((v33 & 1) == 0)
        {
          v42 = vdiv_f32(vcvt_f32_s32(*(this + 160)), vcvt_f32_s32(*(this + 208)));
          v41 = vmul_f32(v42, v41);
          v40 = vmul_f32(v42, v40);
        }

        *buf = v31;
        v76 = v41;
        v77 = vrev64_s32(v36);
        v78 = v30;
        v79 = v32;
        if (v32 == 0xFFFF)
        {
          v80 = v40;
          if (MEMORY[0x1EEE910D8])
          {
            v43 = SILManagerFrameNumberFromBoundsAndBlur();
          }

          else if (MEMORY[0x1EEE910D0])
          {
            v43 = SILManagerFrameNumberFromBounds();
          }

          else
          {
            v43 = -1;
          }

          LOWORD(v79) = v43;
        }

        v44 = v66[1140];
        v66[1140] = v44 & 0xFD;
        v45 = *(this + 3349);
        v46 = *(this + 3220);
        is_visibly_equal = CA::WindowServer::SILMgr::is_visibly_equal(v46, v25, buf);
        if (!is_visibly_equal || v45 != 0.0)
        {
          v48 = v45 != 0.0 || is_visibly_equal;
          if (v48)
          {
            if (*(v46 + 264) == 3)
            {
              v66[1140] = v44 | 2;
            }
          }

          else
          {
            *(v46 + 264) = 1;
          }

          CA::WindowServer::SILMgr::swap_region(v46, v25, buf, &v73 + 1, &v73);
        }

        goto LABEL_76;
      }
    }

LABEL_77:
    ++v25;
    v26 += 56;
  }

  while (v26 != 272);
  CA::Shape::unref(v27);
  v53 = mach_absolute_time();
  v54.n128_f64[0] = CATimeWithHostTime(v53);
  (*(*this + 2168))(this, BYTE4(v67) & 1, v54);
  if (*(a2 + 141) == *(a2 + 142))
  {
    __assert_rtn("update_secure_indicators_statistics", "windowserver-iomfb-display.cpp", 17247, "!indicators.empty ()");
  }

  os_unfair_lock_lock(this + 7142);
  if ((v16 & 1) == 0)
  {
    *(this + 3580) = mach_absolute_time();
  }

  v55 = -1227133513 * ((*(a2 + 142) - *(a2 + 141)) >> 3);
  if (v55)
  {
    v56 = 0;
    if (v55 >= 4)
    {
      v57 = 4;
    }

    else
    {
      v57 = v55;
    }

    do
    {
      v58 = *(a2 + 141) + 56 * v56;
      if (*(v58 + 47) == 1 && (*(v58 + 46) & 1) == 0)
      {
        v59 = *(this + 3573);
        v60 = *(this + 3572);
        v61 = *(v58 + 40);
        for (i = v60; i != v59; i += 8)
        {
          if (v61 == *i)
          {
            break;
          }
        }

        if (i == v59)
        {
          v63 = ((v59 - v60) >> 3) + 1;
          if (*(this + 3575) < v63)
          {
            X::small_vector_base<CA::WindowServer::IOMFBDisplay::IndicatorStats>::grow(this + 28576, v63);
            v59 = *(this + 3573);
          }

          *v59 = v61;
          i = *(this + 3573);
          *(this + 3573) = i + 8;
        }

        ++*(i + 1);
      }

      ++v56;
    }

    while (v56 != v57);
  }

  ++*(v6 + 747);
  os_unfair_lock_unlock(this + 7142);
  v74[0] = 0;
  CA::WindowServer::IOMFBDisplay::secure_indicator_swap_end(this, v74, a3);
  v22 = ((HIDWORD(v67) | v67) & 1) != 0 || v74[0];
  if ((v6[3927] & 1) != 0 || *v6 != 1 || (v6[1140] & 2) == 0)
  {
LABEL_133:
    os_unfair_lock_unlock(this + 6701);
    return v22;
  }

  if (x_log_get_secure_indicators(void)::once != -1)
  {
    dispatch_once(&x_log_get_secure_indicators(void)::once, &__block_literal_global_5775);
  }

  if (os_signpost_enabled(x_log_get_secure_indicators(void)::log))
  {
    *buf = 0;
    _os_signpost_emit_unreliably_with_name_impl();
  }

  os_unfair_lock_unlock(this + 6701);
  return v22 | CA::WindowServer::IOMFBDisplay::update_secure_indicators(this, a2, 0.0);
}

__n128 X::small_vector_base<std::pair<unsigned long,unsigned int>>::push_back(uint64_t a1, __n128 *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = v4 - *a1;
  v7 = (v6 >> 4) + 1;
  v8 = *(a1 + 24);
  if (v8 < v7)
  {
    v9 = *(a1 + 16);
    v10 = (v8 + 1) | ((v8 + 1) >> 1) | (((v8 + 1) | ((v8 + 1) >> 1)) >> 2);
    v11 = v10 | (v10 >> 4) | ((v10 | (v10 >> 4)) >> 8);
    v12 = v11 | (v11 >> 16) | ((v11 | (v11 >> 16)) >> 32);
    if (v12 + 1 > v7)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = (v6 >> 4) + 1;
    }

    v14 = malloc_type_malloc(16 * v13, 0x1000040D9A13B51uLL);
    v15 = v14;
    v16 = *a1;
    v17 = *(a1 + 8);
    if (*a1 != v17)
    {
      v18 = v14;
      do
      {
        v19 = *v16++;
        *v18++ = v19;
      }

      while (v16 != v17);
    }

    if (v5 != v9)
    {
      free(*a1);
    }

    v4 = (v15 + v6);
    *a1 = v15;
    *(a1 + 8) = v15 + v6;
    *(a1 + 24) = v13;
  }

  result = *a2;
  *v4 = *a2;
  *(a1 + 8) += 16;
  return result;
}

double CA::WindowServer::IOMFBDisplay::finish_update(CA::Render::Update *,unsigned int,unsigned long long)::$_4::operator()(_OWORD *a1, int a2, int a3, double *a4)
{
  v4 = a4[2] / a2;
  v5 = a4[3] / a3;
  *a4 = *a1;
  *(a4 + 1) = a1[1];
  return CA::BoundsImpl::scale(a4, v4, v5);
}

xpc_object_t ___ZN2CA12WindowServer12IOMFBDisplay32send_refmode_residency_telemetryEv_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, "is_in_reference_mode_BOOL", *(a1 + 32));
  return v2;
}

void *___ZN2CA12WindowServer12IOMFBDisplay7get_ctxEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(v1 + 312);
  if (result || (result = CAMetalContextCreate(), (*(v1 + 312) = result) != 0))
  {
    result = CA::OGL::new_metal_context(result, 0, 0, 0, 4, @"com.apple.coreanimation.IOMFBDisplay");
    CA::WindowServer::IOMFBDisplay::_ctx = result;
  }

  return result;
}

unint64_t CA::WindowServer::IOMFBDisplay::work_interval_deadline(CA::WindowServer::IOMFBDisplay *this, double a2, double a3, int a4)
{
  (*(*this + 776))(this);
  v9 = *(this + 3684);
  if ((*(this + 160) & 0x100) != 0)
  {
    v9 = *(this + 3685);
  }

  v10 = a2 + v8 * -0.125;
  v11 = v9 + v10;
  if (a4)
  {
    v11 = v10;
  }

  v12 = 0.001;
  if (a4)
  {
    v12 = 0.0014;
  }

  if (v9 > 0.0)
  {
    v10 = v11;
  }

  v13 = v10 - v12;
  if (v13 <= a3 + 0.0001)
  {
    v13 = a3 + 0.0001;
  }

  return CAHostTimeWithTime(v13);
}

uint64_t CA::WindowServer::IOMFBDisplay::hide_secure_indicators(CA::WindowServer::IOMFBDisplay *this, char a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3220);
  if (!v2)
  {
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  if (!*v2)
  {
    v5 = sil_mgr_instance(0, 0xFFFFFFFFLL);
    *v2 = v5;
    if (!v5)
    {
      return v5 & 1;
    }

    v2 = *(this + 3220);
  }

  v6 = a2 & 0xF;
  if ((a2 & 0xF) != 0)
  {
    LOBYTE(v5) = 1;
    do
    {
      v7 = __clz(__rbit32(v6));
      v8 = (v2 + 28 * v7 + 24);
      if (*(v8 + 3) > 0.0)
      {
        if (x_log_get_secure_indicators(void)::once != -1)
        {
          dispatch_once(&x_log_get_secure_indicators(void)::once, &__block_literal_global_5775);
        }

        v9 = x_log_get_secure_indicators(void)::log;
        if (os_log_type_enabled(x_log_get_secure_indicators(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          buf[0] = 67109120;
          buf[1] = v7;
          _os_log_impl(&dword_183AA6000, v9, OS_LOG_TYPE_DEFAULT, "Hiding region %u", buf, 8u);
        }

        *&buf[3] = *(v8 + 12);
        buf[0] = *v8;
        buf[3] = 0;
        *&buf[1] = (50 * v7 + 200);
        buf[2] = buf[1];
        LOBYTE(v5) = CA::WindowServer::SILMgr::swap_region(v2, v7, buf, 0, 0);
      }

      v6 &= ~(1 << v7);
    }

    while (v6);
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5 & 1;
}

uint64_t CA::WindowServer::IOMFBDisplay::secure_indicator_swap_end(uint64_t this, BOOL *a2, double a3)
{
  v3 = *(this + 25760);
  if (v3)
  {
    if (!*v3)
    {
      v6 = this;
      this = sil_mgr_instance(0, 0xFFFFFFFFLL);
      *v3 = this;
      if (!this)
      {
        return this;
      }

      v3 = *(v6 + 25760);
    }

    v7 = CAHostTimeWithTime(a3);

    return CA::WindowServer::SILMgr::end_swap_region(v3, a2, v7);
  }

  return this;
}

uint64_t CA::WindowServer::IOMFBDisplay::set_secure_indicator_state(CA::WindowServer::IOMFBDisplay *this, int a2, int a3)
{
  v3 = *(this + 3220);
  if (!v3)
  {
    return 0;
  }

  if (*v3 || (result = sil_mgr_instance(0, 0xFFFFFFFFLL), (*v3 = result) != 0))
  {
    if (a2)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    if (a3)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    v10 = *(this + 25768);
    if (v9 == v10)
    {
      return 1;
    }

    if (v10 > 1 || (result = CA::WindowServer::SILMgr::set_power(*(this + 3220), 1, 0), result))
    {
      CA::WindowServer::IOMFBDisplay::SecureIndicator::set_state(this + 25760, v9);
      return 1;
    }
  }

  return result;
}

void X::small_vector_base<CA::WindowServer::IOMFBDisplay::IndicatorStats>::grow(uint64_t a1, unint64_t a2)
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

  v11 = malloc_type_malloc(8 * v10, 0x100004000313F17uLL);
  v12 = v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  if (*a1 != v14)
  {
    v15 = v11;
    do
    {
      v16 = *v13++;
      *v15++ = v16;
    }

    while (v13 != v14);
  }

  if (v3 != v5)
  {
    free(*a1);
  }

  *a1 = v12;
  *(a1 + 8) = v12 + v4 - v3;
  *(a1 + 24) = v10;
}

void *CA::WindowServer::IOMFBDisplay::work_interval(CA::WindowServer::IOMFBDisplay *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = *(**(v2 + 96) + 392);

    return v3();
  }

  else
  {
    result = *(this + 3208);
    if (!result)
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x68uLL, 0xDEEC3011uLL);
      if (result)
      {
        result[12] = 0;
        *(result + 4) = 0u;
        *(result + 5) = 0u;
        *(result + 2) = 0u;
        *(result + 3) = 0u;
        *result = 0u;
        *(result + 1) = 0u;
      }

      *(this + 3208) = result;
    }
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::finish_work_interval(uint64_t this)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(this + 25664))
  {
    v1 = this;
    v2 = mach_absolute_time();
    v3 = *(v1 + 25664);
    *(v3 + 24) = v2;
    v4 = mach_absolute_time();
    if (*(v3 + 96))
    {
      memset(data.opaque, 0, sizeof(data.opaque));
      data.sig = 1386695757;
      os_workgroup_interval_data_set_complexity();
      os_workgroup_interval_finish(*(v3 + 48), &data);
    }

    else
    {
      this = *(v3 + 40);
      if (!this)
      {
        return this;
      }

      if ((*(v3 + 96) & 2) != 0)
      {
        work_interval_instance_set_deadline();
        work_interval_instance_set_complexity();
      }

      else
      {
        work_interval_instance_set_complexity();
        *(v3 + 24) = v4;
      }

      work_interval_instance_set_finish();
      work_interval_instance_finish();
    }

    this = kdebug_trace();
    *(v3 + 24) = 0;
  }

  return this;
}

uint64_t CA::WindowServer::IOMFBDisplay::blanked_can_update(CA::WindowServer::IOMFBDisplay *this, char a2, double a3, double a4)
{
  if (!*(this + 82))
  {
    return 254;
  }

  v4 = (this + 25536);
  if (*(this + 29523))
  {
    return 253;
  }

  v6 = atomic_load(*(this + 96));
  if (v6 == 2)
  {
    return 252;
  }

  v7 = atomic_load(*(this + 96));
  if (v7 == 3)
  {
    return 252;
  }

  if ((*(this + 905) & 8) != 0)
  {
    return 251;
  }

  if (CA::WindowServer::IOMFBDisplay::can_update_(this, a2, a3, a4))
  {
    return 0;
  }

  ++*v4;
  return 250;
}

uint64_t CA::WindowServer::IOMFBDisplay::set_force_fixed_display_links(CA::WindowServer::IOMFBDisplay *this, int a2)
{
  *(this + 6854) = a2;
  if (*(this + 6854))
  {
    CA::WindowServer::IOMFBDisplay::update_server_source_frame_interval_range(this, this + 2356, *(this + 29573), 1);
  }

  return CA::WindowServer::Display::post_display_changed(this);
}

uint64_t CA::WindowServer::IOMFBDisplay::set_dmrr_enabled(uint64_t this, int a2)
{
  if (a2)
  {
    __assert_rtn("set_dmrr_enabled", "windowserver-iomfb-display.cpp", 10848, "!enabled || CADeviceDMRRCapable ()");
  }

  *(this + 29576) = *(this + 29575);
  *(this + 29575) = 0;
  return this;
}

void CA::WindowServer::IOMFBDisplay::will_unblank(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 189);
  if (!atomic_load((*&this[192]._os_unfair_lock_opaque + 4)))
  {
    (*(*&this->_os_unfair_lock_opaque + 2248))(this, 1, 0);
    v3 = mach_absolute_time();
    *&CATailspinMinimumTimestamp = CATimeWithHostTime(v3) + 10.0;
  }

  os_unfair_lock_unlock(this + 189);
}

uint64_t CA::WindowServer::IOMFBDisplay::max_layer_bandwidth(CA::WindowServer::IOMFBDisplay *this)
{
  if (!*(this + 6418))
  {
    v2 = IOMobileFramebufferCopyProperty();
    if (v2)
    {
      v3 = v2;
      CFNumberGetValue(v2, kCFNumberIntType, this + 25672);
      CFRelease(v3);
    }
  }

  return *(this + 6418);
}

uint64_t CA::WindowServer::IOMFBDisplay::set_aot_service_property(CA::WindowServer::IOMFBDisplay *this, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = (this + 25688);
  if (x_log_get_flipbook(void)::once != -1)
  {
    dispatch_once(&x_log_get_flipbook(void)::once, &__block_literal_global_17);
  }

  v4 = x_log_get_flipbook(void)::log;
  if (os_log_type_enabled(x_log_get_flipbook(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "set aot service property: %d", v7, 8u);
  }

  *(v3 + 3858) = a2;
  result = *v3;
  if (result)
  {
    v6 = MEMORY[0x1E695E4D0];
    if (!a2)
    {
      v6 = MEMORY[0x1E695E4C0];
    }

    return IORegistryEntrySetCFProperty(result, @"AOTEnable", *v6);
  }

  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::set_aot_power_saving_mode_enabled(uint64_t this, unsigned int a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = this + 28672;
  if (*(this + 29547) == 1)
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v4 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v5[0]) = 67109120;
      HIDWORD(v5[0]) = a2;
      _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "set aot power saving mode enabled: %d", v5, 8u);
    }

    *(v2 + 876) = a2;
    v5[0] = a2;
    return IOMobileFramebufferSetParameter();
  }

  return this;
}

uint64_t ___ZN2CA12WindowServer12IOMFBDisplayC2EPK10__CFStringjj16IOMFBDisplayType_block_invoke(uint64_t a1, int token)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4[0] = 0;
  result = notify_get_state(token, v4);
  if (!result)
  {
    *(v2 + 29579) = v4[0] != 0;
  }

  return result;
}

void CA::WindowServer::IOMFBDisplay::unregister_for_disallowed_layers_notification(CA::WindowServer::IOMFBDisplay *this, os_unfair_lock_s *a2, _BYTE *a3, void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((*a3 == 0xFFFF || *a3 == a2[6]._os_unfair_lock_opaque) && (*(a3 + 1) + 1) >= 2)
  {
    os_unfair_lock_lock(a2 + 7228);
    v6 = *&a2[7234]._os_unfair_lock_opaque;
    if (v6)
    {
      v7 = *(a3 + 1);
      while (*(v6 + 4) != v7)
      {
        v6 = *v6;
        if (!v6)
        {
          goto LABEL_14;
        }
      }

      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v8 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        os_unfair_lock_opaque = a2[6]._os_unfair_lock_opaque;
        v10[0] = 67109376;
        v10[1] = os_unfair_lock_opaque;
        v11 = 1024;
        v12 = v7;
        _os_log_impl(&dword_183AA6000, v8, OS_LOG_TYPE_DEFAULT, "Destroying disallowed layers notification port for display=%u port=%u", v10, 0xEu);
      }

      CA::Render::Server::remove_dead_name_watch(v7);
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v7);
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__erase_unique<unsigned int>(&a2[7230]._os_unfair_lock_opaque, v7);
      a3[8] = 1;
    }

LABEL_14:
    os_unfair_lock_unlock(a2 + 7228);
  }
}

void CA::WindowServer::IOMFBDisplay::register_for_disallowed_layers_notification(CA::WindowServer::IOMFBDisplay *this, os_unfair_lock_s *a2, _BYTE *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a3 == a2[6]._os_unfair_lock_opaque)
  {
    v5 = (a3 + 4);
    if ((*(a3 + 1) + 1) >= 2)
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v7 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        os_unfair_lock_opaque = a2[6]._os_unfair_lock_opaque;
        v9 = *v5;
        v12[0] = 67109376;
        v12[1] = os_unfair_lock_opaque;
        v13 = 1024;
        v14 = v9;
        _os_log_impl(&dword_183AA6000, v7, OS_LOG_TYPE_DEFAULT, "Register for disallowed layers notifications for display=%u client_port=%u", v12, 0xEu);
      }

      os_unfair_lock_lock(a2 + 7228);
      v10 = *v5;
      if (!std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(&a2[7230]._os_unfair_lock_opaque, *v5))
      {
        v12[0] = 0;
        CA::Render::Server::add_dead_name_watch(v10, v12, CA::WindowServer::handle_disallowed_layers_notification_dead_name, v11);
        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&a2[7230]._os_unfair_lock_opaque, *v5);
      }

      a3[8] = 1;
      os_unfair_lock_unlock(a2 + 7228);
    }
  }
}

uint64_t CA::WindowServer::handle_disallowed_layers_notification_dead_name(CA::WindowServer *this)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[1] = this;
  v2[2] = 0;
  v2[0] = 0xFFFF;
  CA::Render::post_notification(0x25u, 0, v2, 0);
  return 1;
}

void CA::WindowServer::IOMFBDisplay::copy_power_assertion_info(CA::WindowServer::IOMFBDisplay *this, os_unfair_lock_s *a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a3 == a2[6]._os_unfair_lock_opaque)
  {
    os_unfair_lock_lock(a2 + 7192);
    v6 = *&a2[7194]._os_unfair_lock_opaque;
    for (i = *&a2[7196]._os_unfair_lock_opaque; v6 != i; v6 += 24)
    {
      memset(buffer, 0, sizeof(buffer));
      proc_name(*v6, buffer, 0x20u);
      v8 = *(v6 + 8);
      if (v8 <= 3)
      {
        switch(v8)
        {
          case 1:
            v9 = "Unblank";
            break;
          case 2:
            v9 = "Audio";
            break;
          case 3:
            v9 = "SecureIndicator";
            break;
          default:
            goto LABEL_16;
        }
      }

      else if (v8 > 65533)
      {
        if (v8 == 65534)
        {
          v9 = "BLSAssertion";
          goto LABEL_20;
        }

        if (v8 != 0xFFFF)
        {
          goto LABEL_16;
        }

        v9 = "Debug";
      }

      else
      {
        if (v8 == 4)
        {
          v9 = "BIM";
          goto LABEL_20;
        }

        if (v8 != 5)
        {
LABEL_16:
          v9 = "Unknown";
          goto LABEL_20;
        }

        v9 = "HardwarePropertyAccess";
      }

LABEL_20:
      v10 = *(a3 + 1);
      v11 = *v6;
      v12 = mach_absolute_time();
      v13 = CATimeWithHostTime(v12);
      X::Stream::printf(v10, "\t\t %sPowerAssertion from %s[%d] since %.0f seconds ago\n", v9, buffer, v11, v13 - *(v6 + 16));
    }

    if (LOBYTE(a2[7227]._os_unfair_lock_opaque) == 1)
    {
      X::Stream::printf(*(a3 + 1), "\t\t ImplicitPowerAssertion\n");
    }

    os_unfair_lock_unlock(a2 + 7192);
  }
}

void CA::WindowServer::IOMFBDisplay::destroy_power_assertion(CA::WindowServer::IOMFBDisplay *this, os_unfair_lock_s *a2, unsigned int *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if ((*a3 == 0xFFFF || *a3 == a2[6]._os_unfair_lock_opaque) && a3[1] + 1 >= 2)
  {
    os_unfair_lock_lock(a2 + 7192);
    v6 = *&a2[7194]._os_unfair_lock_opaque;
    v7 = *&a2[7196]._os_unfair_lock_opaque;
    if (v6 == v7)
    {
LABEL_8:
      if (*a3 != 0xFFFF)
      {
        if (x_log_get_display_state(void)::once != -1)
        {
          dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
        }

        v9 = x_log_get_display_state(void)::log;
        if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_ERROR))
        {
          os_unfair_lock_opaque = a2[6]._os_unfair_lock_opaque;
          v11 = a3[1];
          v20 = 67109376;
          v21 = os_unfair_lock_opaque;
          v22 = 1024;
          v23 = v11;
          _os_log_error_impl(&dword_183AA6000, v9, OS_LOG_TYPE_ERROR, "No power assertion found on display %u for port %u", &v20, 0xEu);
        }
      }
    }

    else
    {
      v8 = a2 + 6702;
      while (v6[1] != a3[1])
      {
        v6 += 6;
        if (v6 == v7)
        {
          goto LABEL_8;
        }
      }

      if (x_log_get_display_state(void)::once != -1)
      {
        dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
      }

      v12 = x_log_get_display_state(void)::log;
      if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v13 = a2[6]._os_unfair_lock_opaque;
        v14 = *v6;
        v15 = v6[1];
        v16 = v6[2];
        v20 = 67109888;
        v21 = v13;
        v22 = 1024;
        v23 = v14;
        v24 = 1024;
        v25 = v15;
        v26 = 1024;
        v27 = v16;
        _os_log_impl(&dword_183AA6000, v12, OS_LOG_TYPE_DEFAULT, "Destroying power assertion for display=%u pid=%i port=%u reason=%i", &v20, 0x1Au);
      }

      if (v6[2] == 3)
      {
        if (!LOBYTE(v8->_os_unfair_lock_opaque))
        {
          __assert_rtn("destroy_power_assertion", "windowserver-iomfb-display.cpp", 21014, "d->_sil_power_assertion_count > 0");
        }

        --LOBYTE(v8->_os_unfair_lock_opaque);
      }

      v17 = *&a2[7196]._os_unfair_lock_opaque;
      v18 = *(v17 - 24);
      *(v6 + 2) = *(v17 - 8);
      *v6 = v18;
      v19 = *&a2[7196]._os_unfair_lock_opaque;
      if (v19 <= *&a2[7194]._os_unfair_lock_opaque)
      {
        __assert_rtn("pop_back", "x-small-vector.h", 420, "_end > _begin && pop_back on empty container");
      }

      *&a2[7196]._os_unfair_lock_opaque = v19 - 24;
      CA::Render::Server::remove_dead_name_watch(a3[1]);
      mach_port_deallocate(*MEMORY[0x1E69E9A60], a3[1]);
      if (*&a2[7194]._os_unfair_lock_opaque == *&a2[7196]._os_unfair_lock_opaque)
      {
        a2[7226]._os_unfair_lock_opaque = 0;
        os_unfair_lock_lock(a2 + 189);
        CA::WindowServer::IOMFBDisplay::update_power_state_locked(a2, 0);
        os_unfair_lock_unlock(a2 + 189);
      }

      *(a3 + 8) = 1;
    }

    os_unfair_lock_unlock(a2 + 7192);
  }
}

uint64_t CA::WindowServer::handle_power_assertion_dead_name(CA::WindowServer *this)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[1] = this;
  v2[2] = 0;
  v2[0] = 0xFFFF;
  CA::Render::post_notification(0x44u, 0, v2, 0);
  return 1;
}

void CA::WindowServer::IOMFBDisplay::~IOMFBDisplay(CA::WindowServer::IOMFBDisplay *this)
{
  v56[1] = *MEMORY[0x1E69E9840];
  v2 = this + 25688;
  *this = &unk_1EF204040;
  CA::WindowServer::IOMFBDisplay::release_everything(this);
  if (*(this + 3212))
  {
    if (v2[3807] == 1)
    {
      IOMobileFramebufferSetDisplayDevice();
      CA::WindowServer::IOMFBDisplay::set_all_layers_to_null(this, 0);
    }

    IOMobileFramebufferDisableVSyncNotifications();
    IOMobileFramebufferDisableHotPlugDetectNotifications();
  }

  v3 = *(this + 3220);
  if (v3)
  {
    _Block_release(*(v3 + 16));
    v4 = *(v3 + 8);
    if (v4)
    {
      CA::OGL::DebugRenderer::~DebugRenderer(v4);
      MEMORY[0x1865EA9A0]();
    }

    v56[0] = (v3 + 288);
    std::vector<std::pair<unsigned int,std::vector<CA::Vec2<int>>>>::__destroy_vector::operator()[abi:nn200100](v56);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v3);
  }

  os_unfair_lock_lock(this + 6576);
  v5 = *(this + 3289);
  if (v5)
  {
    *(this + 3290) = 0;
    if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v5 + 16))(v5);
    }
  }

  os_unfair_lock_unlock(this + 6576);
  v6 = *(this + 3208);
  if (v6)
  {
    CA::CAWorkInterval::release_work_interval(*(this + 3208));
    CA::CAWorkInterval::release_workgroup(v6);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v6);
    *(this + 3208) = 0;
  }

  CA::Render::remove_observer(0x3Au, 0, CA::WindowServer::IOMFBDisplay::find_fastest_display, this);
  CA::Render::remove_observer(0x43u, 0, CA::WindowServer::IOMFBDisplay::create_power_assertion, this);
  CA::Render::remove_observer(0x44u, 0, CA::WindowServer::IOMFBDisplay::destroy_power_assertion, this);
  CA::Render::remove_observer(0x45u, 0, CA::WindowServer::IOMFBDisplay::copy_power_assertion_info, this);
  CA::Render::remove_observer(0x24u, 0, CA::WindowServer::IOMFBDisplay::register_for_disallowed_layers_notification, this);
  CA::Render::remove_observer(0x25u, 0, CA::WindowServer::IOMFBDisplay::unregister_for_disallowed_layers_notification, this);
  v7 = *(this + 3617);
  if (v7)
  {
    v8 = MEMORY[0x1E69E9A60];
    do
    {
      v9 = *(v7 + 4);
      CA::Render::Server::remove_dead_name_watch(v9);
      mach_port_deallocate(*v8, v9);
      v7 = *v7;
    }

    while (v7);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::clear(this + 3615);
  notify_cancel(*(v2 + 769));
  if (*v2)
  {
    IOObjectRelease(*v2);
  }

  v10 = *(this + 3409);
  if (v10)
  {
    free(v10);
  }

  v11 = *(this + 3410);
  if (v11)
  {
    free(v11);
  }

  v12 = *(this + 3411);
  if (v12)
  {
    free(v12);
  }

  v13 = *(this + 3412);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(this + 3413);
  if (v14)
  {
    free(v14);
  }

  free(*(this + 3222));
  v15 = *(this + 3435);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(this + 3448);
  if (v16)
  {
    if (*v16 != 5 || !*(v16 + 12) || (MEMORY[0x1865EA9A0](*(v16 + 12), 0x1000C4052888210), *(this + 3448)))
    {
      MEMORY[0x1865EA9A0]();
    }
  }

  v17 = *(this + 3449);
  if (v17)
  {
    if (*v17 != 5 || !*(v17 + 12) || (MEMORY[0x1865EA9A0](*(v17 + 12), 0x1000C4052888210), *(this + 3449)))
    {
      MEMORY[0x1865EA9A0]();
    }
  }

  if (*(this + 3450))
  {
    for (i = 0; i != 108; i += 36)
    {
      v19 = *(this + 3450);
      if (*(v19 + i) == 5)
      {
        v20 = *(v19 + i + 12);
        if (v20)
        {
          MEMORY[0x1865EA9A0](v20, 0x1000C4052888210);
        }
      }
    }

    v21 = *(this + 3450);
    if (v21)
    {
      MEMORY[0x1865EA980](v21, 0x10C2C80BCA6C08DLL);
    }
  }

  pthread_mutex_destroy((this + 25848));
  pthread_mutex_destroy((this + 29352));
  pthread_cond_destroy((this + 29416));
  pthread_mutex_destroy((this + 26168));
  pthread_cond_destroy((this + 26232));
  v22 = *(this + 3352);
  if (v22)
  {
    _Block_release(v22);
  }

  free(*(this + 3399));
  v23 = *(this + 3536);
  if (v23)
  {
  }

  v24 = *(this + 3436);
  if (v24)
  {
    free(*v24);
    free(v24[1]);
    MEMORY[0x1865EA9A0](v24, 0x1080C40397D7476);
  }

  os_unfair_lock_lock(&CA::WindowServer::IOMFBDisplay::_displays_lock);
  v25 = CA::WindowServer::IOMFBDisplay::_displays;
  if (CA::WindowServer::IOMFBDisplay::_displays)
  {
    v26 = *CA::WindowServer::IOMFBDisplay::_displays;
    v27 = *(CA::WindowServer::IOMFBDisplay::_displays + 8);
    v28 = *CA::WindowServer::IOMFBDisplay::_displays;
    if (*CA::WindowServer::IOMFBDisplay::_displays != v27)
    {
      while (*v28 != this)
      {
        if (++v28 == v27)
        {
          v28 = *(CA::WindowServer::IOMFBDisplay::_displays + 8);
          break;
        }
      }
    }

    if (v27 != v28)
    {
      v29 = v27 - (v28 + 1);
      if (v27 != v28 + 1)
      {
        memmove(v28, v28 + 1, v27 - (v28 + 1));
        v26 = *v25;
      }

      v27 = (v28 + v29);
      *(v25 + 8) = v28 + v29;
    }

    if (v26 == v27)
    {
      if (v27)
      {
        *(v25 + 8) = v26;
        operator delete(v26);
      }

      MEMORY[0x1865EA9A0](v25, 0x80C40D6874129);
      CA::WindowServer::IOMFBDisplay::_displays = 0;
    }
  }

  os_unfair_lock_unlock(&CA::WindowServer::IOMFBDisplay::_displays_lock);
  v30 = *(this + 3650);
  if (v30 != *(this + 3652))
  {
    free(v30);
  }

  pthread_mutex_destroy((this + 29136));
  v31 = *(this + 3620);
  if (v31 != *(this + 3622))
  {
    free(v31);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(this + 28920);
  v32 = *(this + 3597);
  if (v32 != *(this + 3599))
  {
    free(v32);
  }

  v33 = *(this + 3572);
  if (v33 != *(this + 3574))
  {
    free(v33);
  }

  v34 = *(this + 3544);
  if (v34)
  {
    do
    {
      v35 = *v34;
      operator delete(v34);
      v34 = v35;
    }

    while (v35);
  }

  v36 = *(this + 3542);
  *(this + 3542) = 0;
  if (v36)
  {
    operator delete(v36);
  }

  v37 = *(this + 3538);
  if (v37)
  {
    *(this + 3539) = v37;
    operator delete(v37);
  }

  v38 = *(this + 3531);
  if (v38)
  {
    *(this + 3532) = v38;
    operator delete(v38);
  }

  for (j = 0; j != -32; j -= 8)
  {
    v40 = *(this + j + 27536);
    if (v40)
    {
      CFRelease(v40);
    }
  }

  v41 = *(this + 3438);
  if (v41)
  {
    CFRelease(v41);
  }

  v42 = *(this + 3437);
  if (v42)
  {
    CFRelease(v42);
  }

  v43 = *(this + 3423);
  if (v43)
  {
    do
    {
      v44 = *v43;
      operator delete(v43);
      v43 = v44;
    }

    while (v44);
  }

  v45 = *(this + 3421);
  *(this + 3421) = 0;
  if (v45)
  {
    operator delete(v45);
  }

  v46 = *(this + 3418);
  if (v46)
  {
    CFRelease(v46);
  }

  v47 = *(this + 3417);
  if (v47)
  {
    CFRelease(v47);
  }

  v48 = *(this + 3340);
  if (v48)
  {
    do
    {
      v49 = *v48;
      operator delete(v48);
      v48 = v49;
    }

    while (v49);
  }

  v50 = *(this + 3338);
  *(this + 3338) = 0;
  if (v50)
  {
    operator delete(v50);
  }

  v51 = *(this + 3263);
  if (v51 != *(this + 3265))
  {
    free(v51);
  }

  v52 = *(this + 3260);
  if (v52)
  {
    v53 = *(this + 3261);
    v54 = *(this + 3260);
    if (v53 != v52)
    {
      do
      {
        std::unique_ptr<CA::WindowServer::IOMFBDisplay::FrameInfo>::reset[abi:nn200100](--v53, 0);
      }

      while (v53 != v52);
      v54 = *(this + 3260);
    }

    *(this + 3261) = v52;
    operator delete(v54);
  }

  v55 = *(this + 3212);
  if (v55)
  {
    CFRelease(v55);
  }

  CA::WindowServer::Display::~Display(this);
}

void sub_183DEFDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 + 288);
  std::vector<std::pair<unsigned int,std::vector<CA::Vec2<int>>>>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t CA::WindowServer::IOMFBDisplay::emit_server_timing_update_locked(CA::WindowServer::IOMFBDisplay *this)
{
  atomic_load((*(this + 3290) + 40));
  atomic_load((*(this + 3290) + 41));
  atomic_load((*(this + 3290) + 32));
  atomic_load((*(this + 3290) + 52));
  atomic_load((*(this + 3290) + 56));
  kdebug_trace();
  atomic_load((*(this + 3290) + 64));
  atomic_load((*(this + 3290) + 80));
  atomic_load((*(this + 3290) + 72));

  return kdebug_trace();
}

void *___ZL39getIOGPUDeviceSetDisplayParamsSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = IOGPULibrary();
  result = dlsym(v2, "IOGPUDeviceSetDisplayParams");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIOGPUDeviceSetDisplayParamsSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t IOGPULibrary(void)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v0 = IOGPULibraryCore(v3);
  v1 = v3[0];
  if (!v0)
  {
    v1 = abort_report_np();
    goto LABEL_5;
  }

  if (v3[0])
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

uint64_t IOGPULibraryCore(char **a1)
{
  if (!IOGPULibraryCore(char **)::frameworkLibrary)
  {
    IOGPULibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  return IOGPULibraryCore(char **)::frameworkLibrary;
}

uint64_t ___ZL16IOGPULibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  IOGPULibraryCore(char **)::frameworkLibrary = result;
  return result;
}

uint64_t ___ZN2CA12WindowServer12IOMFBDisplay15hint_agx_timingEyy_block_invoke()
{
  result = IOGPULibraryCore(0);
  if (result)
  {
    result = getIOGPUDeviceCreateSymbolLoc();
    if (result)
    {
      result = IOGPULibraryCore(0);
      if (result)
      {
        result = getIOGPUDeviceSetDisplayParamsSymbolLoc();
        if (result)
        {
          v1 = *MEMORY[0x1E696CD60];
          v2 = IOServiceMatching("AGXAccelerator");
          result = IOServiceGetMatchingService(v1, v2);
          if (result)
          {
            v3 = result;
            SymbolLoc = getIOGPUDeviceCreateSymbolLoc();
            if (SymbolLoc)
            {
              result = SymbolLoc(v3);
              CA::WindowServer::IOMFBDisplay::hint_agx_timing(unsigned long long,unsigned long long)::agx_device = result;
            }

            else
            {
              dlerror();
              abort_report_np();
              return getIOGPUDeviceCreateSymbolLoc();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t getIOGPUDeviceCreateSymbolLoc(void)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v0 = getIOGPUDeviceCreateSymbolLoc(void)::ptr;
  v6 = getIOGPUDeviceCreateSymbolLoc(void)::ptr;
  if (!getIOGPUDeviceCreateSymbolLoc(void)::ptr)
  {
    v1 = IOGPULibrary();
    v4[3] = dlsym(v1, "IOGPUDeviceCreate");
    getIOGPUDeviceCreateSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void *___ZL29getIOGPUDeviceCreateSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = IOGPULibrary();
  result = dlsym(v2, "IOGPUDeviceCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIOGPUDeviceCreateSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CA::WindowServer::IOMFBDisplay::minimum_frame_duration_changed(os_unfair_lock_s *this)
{
  if ((this[160]._os_unfair_lock_opaque & 0x100) != 0)
  {
    os_unfair_lock_lock(this + 7061);
    CA::WindowServer::IOMFBDisplay::recompute_server_frame_interval_locked(this);
    os_unfair_lock_unlock(this + 7061);
  }

  return CA::WindowServer::Display::post_display_changed(this);
}

uint64_t ___ZN2CA12WindowServer12IOMFBDisplay25post_frame_rate_power_logEv_block_invoke()
{
  result = pps_create_telemetry_identifier();
  CA::WindowServer::IOMFBDisplay::post_frame_rate_power_log(void)::frame_count_id = result;
  return result;
}

uint64_t ___ZN2CA12WindowServer12IOMFBDisplay32post_render_statistics_power_logEv_block_invoke()
{
  CA::WindowServer::IOMFBDisplay::post_render_statistics_power_log(void)::render_pass_id = pps_create_telemetry_identifier();
  CA::WindowServer::IOMFBDisplay::post_render_statistics_power_log(void)::layer_count_id = pps_create_telemetry_identifier();
  CA::WindowServer::IOMFBDisplay::post_render_statistics_power_log(void)::offscreen_reasons_id = pps_create_telemetry_identifier();
  result = pps_create_telemetry_identifier();
  CA::WindowServer::IOMFBDisplay::post_render_statistics_power_log(void)::glass_counts_id = result;
  return result;
}

uint64_t ___ZN2CA12WindowServer12IOMFBDisplay27post_edr_requests_power_logEPKNS_6Render6UpdateE_block_invoke()
{
  result = pps_create_telemetry_identifier();
  CA::WindowServer::IOMFBDisplay::post_edr_requests_power_log(CA::Render::Update const*)::edr_requests_telemetry_id = result;
  return result;
}

uint64_t CAObject_propertyKeys(objc_class *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  result = classDescription(a1);
  if (result)
  {
    v2 = result;
    result = *(result + 120);
    if (!result)
    {
      Mutable = CFSetCreateMutable(*MEMORY[0x1E695E490], 0, 0);
      v4 = v2;
      do
      {
        if (*(v4 + 24))
        {
          v5 = 0;
          v6 = 0;
          do
          {
            String = CAAtomGetString(*(*(v4 + 16) + v5));
            CFSetAddValue(Mutable, String);
            ++v6;
            v5 += 32;
          }

          while (v6 < *(v4 + 24));
        }

        v4 = *v4;
      }

      while (v4);
      Count = CFSetGetCount(Mutable);
      v9 = Count;
      v10 = 8 * Count;
      if ((8 * Count) > 0x1000)
      {
        v11 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
      }

      else
      {
        MEMORY[0x1EEE9AC00](Count);
        v11 = v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v11, v10);
      }

      CFSetGetValues(Mutable, v11);
      *(v2 + 120) = CFArrayCreate(0, v11, v9, 0);
      if (v10 > 0x1000)
      {
        free(v11);
      }

      CFRelease(Mutable);
      return *(v2 + 120);
    }
  }

  return result;
}

void CAObject_encodeWithCoder(void *a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = classDescription(v4);
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [a2 delegate];
      if (objc_opt_respondsToSelector())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E490], 0, 0);
    do
    {
      if (*(v6 + 24))
      {
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = *(v6 + 16) + v10;
          if ((*(v12 + 6) & 1) == 0)
          {
            String = CAAtomGetString(*v12);
            if ([a1 shouldArchiveValueForKey:String])
            {
              if (!v8 || [v8 CA_shouldArchiveValueForKey:String ofObject:a1])
              {
                v14 = [a1 CA_archivingValueForKey:String];
                if (v14)
                {
                  v15 = v14;
                  if (!CFSetContainsValue(Mutable, String))
                  {
                    [a2 CA_encodeObject:v15 forKey:String conditional:(*(*(v6 + 16) + v10 + 4) >> 29) & 1];
                    CFSetAddValue(Mutable, String);
                  }
                }
              }
            }
          }

          ++v11;
          v10 += 32;
        }

        while (v11 < *(v6 + 24));
      }

      v6 = *v6;
    }

    while (v6);
    Count = CFSetGetCount(Mutable);
    v17 = Count;
    v18 = 8 * Count;
    if ((8 * Count) > 0x1000)
    {
      v19 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
    }

    else
    {
      MEMORY[0x1EEE9AC00](Count);
      v19 = v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v19, v18);
    }

    CFSetGetValues(Mutable, v19);
    CFRelease(Mutable);
    qsort(v19, v17, 8uLL, compare_strings);
    v20 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v19 count:v17];
    [a2 encodeObject:v20 forKey:@"__CACodingContents"];

    if (v18 > 0x1000)
    {
      free(v19);
    }
  }
}

uint64_t CAObject_encodeWithCAMLWriter(void *a1, void *a2)
{
  v4 = objc_opt_class();
  result = classDescription(v4);
  if (result)
  {
    v6 = result;
    result = [a2 encodingForReverseSerializationTest];
    v7 = result;
    do
    {
      if (*(v6 + 24))
      {
        v8 = 0;
        v9 = 0;
        do
        {
          String = CAAtomGetString(*(*(v6 + 16) + v8));
          result = [a1 shouldArchiveValueForKey:String];
          if ((result | v7))
          {
            result = [a1 CA_archivingValueForKey:String];
            if (result)
            {
              v11 = result;
              [a2 beginPropertyElement:{-[objc_class CA_CAMLPropertyForKey:](v4, "CA_CAMLPropertyForKey:", String)}];
              [a2 encodeObject:v11 conditionally:(*(*(v6 + 16) + v8 + 4) >> 29) & 1];
              result = [a2 endElement];
            }
          }

          ++v9;
          v8 += 32;
        }

        while (v9 < *(v6 + 24));
      }

      v6 = *v6;
    }

    while (v6);
  }

  return result;
}

id CAMetalContextCreate()
{
  v0 = objc_autoreleasePoolPush();
  if (CAMetalContextCreate::once[0] != -1)
  {
    dispatch_once(CAMetalContextCreate::once, &__block_literal_global_23659);
  }

  v1 = MTLCreateSystemDefaultDevice();
  objc_autoreleasePoolPop(v0);
  return v1;
}

uint64_t __CAMetalContextCreate_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  *iterator = 0;
  result = MEMORY[0x1865E9A60](*MEMORY[0x1E69E99F8], &iterator[1]);
  if (!result)
  {
    for (i = 0; ; ++i)
    {
      v2 = iterator[1];
      v3 = IOServiceMatching("IOAcceleratorES");
      result = IOServiceGetMatchingServices(v2, v3, iterator);
      if (result)
      {
        break;
      }

      for (j = 0; ; j = 1)
      {
        v5 = IOIteratorNext(iterator[0]);
        if (!v5)
        {
          break;
        }

        IOObjectRelease(v5);
      }

      result = IOObjectRelease(iterator[0]);
      if (j & 1 | (i > 0x12B))
      {
        break;
      }

      usleep(0x186A0u);
    }
  }

  return result;
}

uint64_t *CA::Render::ContentStream::get_or_create_stream_and_lock(CA::Render::ContentStream *this, int a2, uint64_t a3)
{
  v18[3] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&CA::Render::s_streams_lock);
  if (CA::Render::ContentStream::get_or_create_stream_and_lock(unsigned int,unsigned int,int)::once_token[0] != -1)
  {
    dispatch_once(CA::Render::ContentStream::get_or_create_stream_and_lock(unsigned int,unsigned int,int)::once_token, &__block_literal_global_23674);
  }

  v6 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(CA::Render::s_streams, this);
  if (v6)
  {
LABEL_28:
    pthread_mutex_lock(v6[3]);
    v6 = v6[3];
  }

  else if (a2 && a3 >= 1)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v7 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x1A0uLL, 0xDEEC3011uLL);
    v8 = v7;
    if (v7)
    {
      pthread_mutex_init(v7, 0);
      *&v8[2].__opaque[8] = v8 + 176;
      *&v8[2].__opaque[16] = v8 + 176;
      *&v8[2].__opaque[24] = v8 + 176;
      *&v8[2].__opaque[32] = 8;
      *&v8[3].__opaque[8] = v8 + 240;
      *&v8[3].__opaque[16] = v8 + 240;
      *&v8[3].__opaque[24] = v8 + 240;
      *&v8[3].__opaque[32] = 8;
      *&v8[5].__sig = 0u;
      *&v8[5].__opaque[8] = 0u;
      *&v8[5].__opaque[24] = 0u;
      *&v8[5].__opaque[40] = 0u;
      v8[6].__sig = 0;
      LODWORD(v8[1].__sig) = this;
      *&v8[4].__opaque[24] = a2;
      *&v8[4].__opaque[28] = a3;
      LODWORD(v18[0]) = 0;
      CA::Render::Server::add_dead_name_watch(this, v18, CA::Render::ContentStream::destroy_stream, v9);
    }

    v16 = v8;
    v17 = 0;
    v10 = *(CA::Render::s_streams + 8);
    if (!v10)
    {
      goto LABEL_27;
    }

    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v12 = this;
      if (v10 <= this)
      {
        v12 = this % v10;
      }
    }

    else
    {
      v12 = (v10 - 1) & this;
    }

    v13 = *(*CA::Render::s_streams + 8 * v12);
    if (!v13 || (v6 = *v13) == 0)
    {
LABEL_27:
      operator new();
    }

    while (1)
    {
      v14 = v6[1];
      if (v14 == this)
      {
        if (*(v6 + 4) == this)
        {
          std::unique_ptr<CA::Render::ContentStream>::~unique_ptr[abi:nn200100](&v16);
          [CA::Render::s_process_monitor addMonitoringProcess:a3];
          std::unique_ptr<CA::Render::ContentStream>::~unique_ptr[abi:nn200100](&v17);
          goto LABEL_28;
        }
      }

      else
      {
        if (v11.u32[0] > 1uLL)
        {
          if (v14 >= v10)
          {
            v14 %= v10;
          }
        }

        else
        {
          v14 &= v10 - 1;
        }

        if (v14 != v12)
        {
          goto LABEL_27;
        }
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_27;
      }
    }
  }

  os_unfair_lock_unlock(&CA::Render::s_streams_lock);
  return v6;
}

CA::Render::ContentStream **std::unique_ptr<CA::Render::ContentStream>::~unique_ptr[abi:nn200100](CA::Render::ContentStream **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CA::Render::ContentStream::~ContentStream(v2);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v2);
  }

  return a1;
}

void CA::Render::ContentStream::~ContentStream(CA::Render::ContentStream *this)
{
  pthread_mutex_lock(this);
  pthread_mutex_unlock(this);
  if (*(this + 40) != *(this + 41) || *(this + 43) != *(this + 44) || *(this + 46) != *(this + 47) || *(this + 37))
  {
    __assert_rtn("~ContentStream", "render-content-stream.cpp", 544, "_avail_surf.empty () && _used_surf.empty () && _pending_names_release.empty () && !_intermediate_surf.iosurface");
  }

  v2 = *(this + 16);
  v3 = MEMORY[0x1E69E9A60];
  if (v2)
  {
    CA::Render::Server::remove_dead_name_watch(v2);
    mach_port_deallocate(*v3, *(this + 16));
  }

  v4 = *(this + 72);
  if (v4)
  {
    mach_port_deallocate(*v3, v4);
  }

  v5 = *(this + 35);
  if (v5)
  {
    CA::VideoToolbox::~VideoToolbox(*(this + 35));
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v5);
  }

  v6 = *(this + 46);
  if (v6)
  {
    *(this + 47) = v6;
    operator delete(v6);
  }

  v7 = *(this + 43);
  if (v7)
  {
    *(this + 44) = v7;
    operator delete(v7);
  }

  v8 = *(this + 40);
  if (v8)
  {
    *(this + 41) = v8;
    operator delete(v8);
  }

  v9 = *(this + 26);
  if (v9 != *(this + 28))
  {
    free(v9);
  }

  v10 = *(this + 18);
  if (v10 != *(this + 20))
  {
    free(v10);
  }

  pthread_mutex_destroy(this);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<CA::Render::ContentStream>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<CA::Render::ContentStream>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<CA::Render::ContentStream>::~unique_ptr[abi:nn200100](v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t CA::Render::ContentStream::destroy_stream(CA::Render::ContentStream *this, unsigned int a2, uint64_t a3, int a4)
{
  v33[6] = *MEMORY[0x1E69E9840];
  if ((this - 1) > 0xFFFFFFFD)
  {
    return 0;
  }

  v4 = this;
  stream_and_lock = CA::Render::ContentStream::get_or_create_stream_and_lock(this, 0, 0, a4);
  if (stream_and_lock)
  {
    v6 = stream_and_lock;
    memset(v33, 0, 40);
    v32 = 0u;
    v31 = 0u;
    memset(v30, 0, sizeof(v30));
    v29 = 0u;
    *&v28[24] = 0u;
    v7 = *(stream_and_lock + 112);
    v27 = *(stream_and_lock + 96);
    *v28 = v7;
    *&v28[11] = *(stream_and_lock + 123);
    v8 = *(stream_and_lock + 80);
    v25 = *(stream_and_lock + 64);
    v26 = v8;
    *&v28[32] = &v30[1];
    *&v29 = &v30[1];
    *(&v29 + 1) = &v30[1];
    v30[0] = 8;
    X::small_vector_base<unsigned int>::append<unsigned int const*>(&v28[32], *(stream_and_lock + 144), *(stream_and_lock + 152));
    *(&v31 + 1) = &v33[1];
    *&v32 = &v33[1];
    *(&v32 + 1) = &v33[1];
    v33[0] = 8;
    X::small_vector_base<unsigned int>::append<unsigned int const*>(&v31 + 8, *(v6 + 208), *(v6 + 216));
    pthread_mutex_unlock(v6);
    v24[0] = &v25;
    v24[1] = 256;
    CA::Render::post_notification(0x3Eu, 0, v24, 0);
    if (*(&v31 + 1) != *(&v32 + 1))
    {
      free(*(&v31 + 1));
    }

    if (*&v28[32] != *(&v29 + 1))
    {
      free(*&v28[32]);
    }
  }

  os_unfair_lock_lock(&CA::Render::s_streams_lock);
  v9 = CA::Render::s_streams;
  if (!CA::Render::s_streams || (v10 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(CA::Render::s_streams, v4)) == 0)
  {
    os_unfair_lock_unlock(&CA::Render::s_streams_lock);
    return 0;
  }

  v11 = v10[3];
  v10[3] = 0;
  v12 = v9[1];
  v13 = v10[1];
  v14 = vcnt_s8(v12);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    if (v13 >= *&v12)
    {
      v13 %= *&v12;
    }
  }

  else
  {
    v13 &= *&v12 - 1;
  }

  v16 = *(*v9 + 8 * v13);
  do
  {
    v17 = v16;
    v16 = *v16;
  }

  while (v16 != v10);
  if (v17 == v9 + 2)
  {
    goto LABEL_28;
  }

  v18 = v17[1];
  if (v14.u32[0] > 1uLL)
  {
    if (v18 >= *&v12)
    {
      v18 %= *&v12;
    }
  }

  else
  {
    v18 &= *&v12 - 1;
  }

  if (v18 != v13)
  {
LABEL_28:
    if (!*v10)
    {
      goto LABEL_29;
    }

    v19 = *(*v10 + 8);
    if (v14.u32[0] > 1uLL)
    {
      if (v19 >= *&v12)
      {
        v19 %= *&v12;
      }
    }

    else
    {
      v19 &= *&v12 - 1;
    }

    if (v19 != v13)
    {
LABEL_29:
      *(*v9 + 8 * v13) = 0;
    }
  }

  v20 = *v10;
  if (*v10)
  {
    v21 = *(v20 + 8);
    if (v14.u32[0] > 1uLL)
    {
      if (v21 >= *&v12)
      {
        v21 %= *&v12;
      }
    }

    else
    {
      v21 &= *&v12 - 1;
    }

    if (v21 != v13)
    {
      *(*v9 + 8 * v21) = v17;
      v20 = *v10;
    }
  }

  *v17 = v20;
  *v10 = 0;
  --v9[3];
  *&v25 = v10;
  *(&v25 + 1) = v9;
  LOBYTE(v26) = 1;
  *(&v26 + 1) = 0;
  DWORD1(v26) = 0;
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<CA::Render::ContentStream>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<CA::Render::ContentStream>>,void *>>>>::~unique_ptr[abi:nn200100](&v25);
  v22 = v11[73];
  v23 = (CA::Render::s_streams + 16);
  while (1)
  {
    v23 = *v23;
    if (!v23)
    {
      break;
    }

    if (*(v23[3] + 292) == v22)
    {
      os_unfair_lock_unlock(&CA::Render::s_streams_lock);
      goto LABEL_43;
    }
  }

  os_unfair_lock_unlock(&CA::Render::s_streams_lock);
  if (v22)
  {
    [CA::Render::s_process_monitor removeMonitoringProcess:v22];
  }

LABEL_43:
  if (v11)
  {
    CA::Render::ContentStream::~ContentStream(v11);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v11);
  }

  return 1;
}

void ___ZN2CA6RenderL23init_process_monitoringEv_block_invoke(uint64_t a1, int a2, unsigned int a3, unsigned int a4)
{
  v34 = __PAIR64__(a4, a3);
  v44[104] = *MEMORY[0x1E69E9840];
  bzero(v44, 0x340uLL);
  v40 = v44;
  v41 = v44;
  v42 = v44;
  v43 = 4;
  os_unfair_lock_lock(&CA::Render::s_streams_lock);
  v5 = *(CA::Render::s_streams + 16);
  if (v5)
  {
    v35 = a2;
    do
    {
      v6 = v5[3];
      if (*(v6 + 292) == a2 && *(v6 + 408) == 1)
      {
        v8 = v40;
        v7 = v41;
        v9 = v41 - v40;
        v10 = 0x4EC4EC4EC4EC4EC5 * ((v41 - v40) >> 4) + 1;
        if (v43 < v10)
        {
          v11 = (v43 + 1) | ((v43 + 1) >> 1) | (((v43 + 1) | ((v43 + 1) >> 1)) >> 2);
          v12 = v11 | (v11 >> 4) | ((v11 | (v11 >> 4)) >> 8);
          v13 = v12 | (v12 >> 16) | ((v12 | (v12 >> 16)) >> 32);
          if (v13 + 1 > v10)
          {
            v14 = v13 + 1;
          }

          else
          {
            v14 = 0x4EC4EC4EC4EC4EC5 * ((v41 - v40) >> 4) + 1;
          }

          v36 = v42;
          v37 = v14;
          v15 = malloc_type_malloc(208 * v14, 0x1010040C02652CDuLL);
          v16 = v40;
          v17 = v41;
          if (v40 != v41)
          {
            v18 = 0;
            do
            {
              v19 = &v15[v18 * 8];
              *v19 = *&v16[v18];
              v20 = *&v16[v18 + 2];
              v21 = *&v16[v18 + 4];
              v22 = *&v16[v18 + 6];
              *(v19 + 59) = *(&v16[v18 + 7] + 3);
              *(v19 + 2) = v21;
              *(v19 + 3) = v22;
              *(v19 + 1) = v20;
              X::small_vector_base<unsigned int>::small_vector_base(&v15[v18 * 8 + 80], &v16[v18 + 10], &v15[v18 * 8 + 112]);
              X::small_vector_base<unsigned int>::small_vector_base(v19 + 18, &v16[v18 + 18], v19 + 44);
              v18 += 26;
            }

            while (&v16[v18] != v17);
            v16 = v40;
            v17 = v41;
            a2 = v35;
          }

          X::small_vector_base<CA::Render::ContentStreamConfig>::runDestructors(v16, v17);
          if (v8 != v36)
          {
            free(v40);
          }

          v7 = &v15[v9];
          v40 = v15;
          v41 = &v15[v9];
          v43 = v37;
        }

        *v7 = *(v6 + 64);
        v23 = *(v6 + 80);
        v24 = *(v6 + 96);
        v25 = *(v6 + 112);
        *(v7 + 59) = *(v6 + 123);
        *(v7 + 2) = v24;
        *(v7 + 3) = v25;
        *(v7 + 10) = v7 + 112;
        *(v7 + 1) = v23;
        *(v7 + 11) = v7 + 112;
        *(v7 + 12) = v7 + 112;
        *(v7 + 13) = 8;
        X::small_vector_base<unsigned int>::append<unsigned int const*>((v7 + 80), *(v6 + 144), *(v6 + 152));
        v26 = v7 + 176;
        *(v7 + 18) = v7 + 176;
        *(v7 + 19) = v7 + 176;
        v27 = (v7 + 144);
        *(v27 + 16) = v26;
        *(v27 + 24) = 8;
        X::small_vector_base<unsigned int>::append<unsigned int const*>(v27, *(v6 + 208), *(v6 + 216));
        v41 += 208;
      }

      v5 = *v5;
    }

    while (v5);
  }

  os_unfair_lock_unlock(&CA::Render::s_streams_lock);
  if (v40 != v41)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v28 = x_log_get_render(void)::log;
    v29 = os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_INFO);
    if (v34 == 1)
    {
      if (v29)
      {
        *buf = 67109376;
        *&buf[4] = a2;
        LOWORD(v39[0]) = 2048;
        *(v39 + 2) = 0x4EC4EC4EC4EC4EC5 * ((v41 - v40) >> 4);
        _os_log_impl(&dword_183AA6000, v28, OS_LOG_TYPE_INFO, "pid %u resumed. Resuming %lu streams", buf, 0x12u);
      }

      v32 = v40;
      v33 = v41;
      if (v40 != v41)
      {
        do
        {
          v32[74] &= ~1u;
          *buf = v32;
          v39[0] = 1;
          CA::Render::post_notification(0x3Eu, 0, buf, 0);
          v32 += 208;
        }

        while (v32 != v33);
      }
    }

    else
    {
      if (v29)
      {
        *buf = 67109376;
        *&buf[4] = a2;
        LOWORD(v39[0]) = 2048;
        *(v39 + 2) = 0x4EC4EC4EC4EC4EC5 * ((v41 - v40) >> 4);
        _os_log_impl(&dword_183AA6000, v28, OS_LOG_TYPE_INFO, "pid %u suspended. Stopping %lu streams", buf, 0x12u);
      }

      v30 = v40;
      v31 = v41;
      if (v40 != v41)
      {
        do
        {
          v30[74] = v30[74] & 0xFE | v34 & BYTE4(v34);
          *buf = v30;
          v39[0] = 0;
          CA::Render::post_notification(0x3Eu, 0, buf, 0);
          v30 += 208;
        }

        while (v30 != v31);
      }
    }
  }

  X::small_vector_base<CA::Render::ContentStreamConfig>::runDestructors(v40, v41);
  if (v40 != v42)
  {
    free(v40);
  }
}

void X::small_vector_base<CA::Render::ContentStreamConfig>::runDestructors(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      v4 = v3[18];
      if (v4 != v3[20])
      {
        free(v4);
      }

      v5 = v3[10];
      if (v5 != v3[12])
      {
        free(v5);
      }

      v3 += 26;
    }

    while (v3 != a2);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Render::ContentStreamSurface>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
}

void CA::Render::release_surfaces(uint64_t *a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v6 = MEMORY[0x1E69E9A60];
    do
    {
      *name = *v3;
      v8[0] = *(v3 + 16);
      if (name[3])
      {
        mach_port_deallocate(*v6, name[3]);
      }

      if (v8[0])
      {
        std::vector<unsigned long>::push_back[abi:nn200100](a2, v8);
      }

      CFRelease(*name);
      v3 += 24;
    }

    while (v3 != v4);
    v3 = *a1;
  }

  a1[1] = v3;
}

void CA::Render::release_single_iosurface(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    std::vector<unsigned long>::push_back[abi:nn200100](a2, (a1 + 16));
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void std::vector<unsigned long>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
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

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void X::small_vector_base<unsigned int>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *a1;
  v6 = (v4 - *a1) >> 2;
  if (v6 <= a2)
  {
    if (v6 >= a2)
    {
      return;
    }

    if (*(a1 + 24) < a2)
    {
      X::small_vector_base<unsigned int>::grow(a1, a2);
      v5 = *a1;
      v4 = *(a1 + 8);
    }

    v7 = &v5[a2];
    if (v4 != v7)
    {
      bzero(v4, ((&v5[a2] - v4 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4);
    }
  }

  else
  {
    v7 = &v5[a2];
  }

  *(a1 + 8) = v7;
}

uint64_t CA::Render::free_pending_names(uint64_t result, void *a2)
{
  if (((a2[1] - *a2) >> 3))
  {
    result = (*(*result + 64))(result);
    a2[1] = *a2;
  }

  return result;
}

void std::vector<CA::Render::ContentStreamSurface>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Render::ContentStreamSurface>>(v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    v6 = 24 * v7 + 24;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
  }

  *(a1 + 8) = v6;
}

void CA::Render::ContentStream::produce_surface(uint64_t a1, int a2, __int128 *a3, int a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v18 = *a3;
  v19 = a3[1];
  v20 = a3[2];
  v8 = *(a1 + 64);
  v21 = *(a3 + 6);
  *buf = *a3;
  *&buf[16] = v19;
  v36 = a3[2];
  v37 = *(a3 + 6);
  v9 = _CACContentStreamSurfaceProduced(v8, 0, a2, buf);
  v10 = v9;
  if (!v9)
  {
    goto LABEL_2;
  }

  if (v9 == 268435460)
  {
    if (v8 - 1 > 0xFFFFFFFD || mach_port_mod_refs(*MEMORY[0x1E69E9A60], v8, 0, 1))
    {
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v12 = x_log_get_utilities::log;
      if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "StreamSurfProduced";
        _os_log_error_impl(&dword_183AA6000, v12, OS_LOG_TYPE_ERROR, "%s failed to retain right", buf, 0xCu);
      }
    }

    else
    {
      if (CA::MachPortUtil::reply_queue(void)::once[0] != -1)
      {
        dispatch_once(CA::MachPortUtil::reply_queue(void)::once, &__block_literal_global_10344);
      }

      *block = MEMORY[0x1E69E9820];
      *&v23 = 0x40000000;
      *(&v23 + 1) = ___ZN2CA12MachPortUtil17call_with_timeoutIPFijjj28CA_content_stream_frame_infoEJjS2_EEEijjbPKcT_DpT0__block_invoke;
      v24 = &__block_descriptor_tmp_18_23720;
      v26 = v18;
      v25 = _CACContentStreamSurfaceProduced;
      v31 = v8;
      v32 = 5;
      v33 = a2;
      v27 = v19;
      v28 = v20;
      v34 = 0;
      v29 = v21;
      v30 = "StreamSurfProduced";
      dispatch_async(CA::MachPortUtil::reply_queue(void)::queue, block);
    }

LABEL_2:
    if (*(a3 + 4))
    {
      goto LABEL_3;
    }

LABEL_19:
    v11 = 1;
    goto LABEL_20;
  }

  if (x_log_get_utilities::once != -1)
  {
    dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
  }

  v13 = x_log_get_utilities::log;
  if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
  {
    v17 = mach_error_string(v10);
    *buf = 136315650;
    *&buf[4] = "StreamSurfProduced";
    *&buf[12] = 1024;
    *&buf[14] = v10;
    *&buf[18] = 2080;
    *&buf[20] = v17;
    _os_log_error_impl(&dword_183AA6000, v13, OS_LOG_TYPE_ERROR, "%s client message err=0x%x : %s", buf, 0x1Cu);
  }

  v14 = *(a3 + 4);
  v11 = v14 == 0;
  if (v10 != 268435460 && v10)
  {
    goto LABEL_4;
  }

  if (!v14)
  {
    goto LABEL_19;
  }

LABEL_3:
  v11 = 0;
LABEL_4:
  ++*(a1 + 404);
LABEL_20:
  if (v10 != 268435460 && v10)
  {
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v15 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      v16 = mach_error_string(v10);
      *block = 67109378;
      *&block[4] = v10;
      LOWORD(v23) = 2080;
      *(&v23 + 2) = v16;
      _os_log_error_impl(&dword_183AA6000, v15, OS_LOG_TYPE_ERROR, "Failed to produced surface 0x%x : %s", block, 0x12u);
    }
  }

  else if (v11)
  {
    *(a1 + 404) = 0;
    *(a1 + 392) = CATimeWithHostTime(*a3);
    *(a1 + 400) = a4;
  }
}

uint64_t ___ZN2CA12MachPortUtil17call_with_timeoutIPFijjj28CA_content_stream_frame_infoEJjS2_EEEijjbPKcT_DpT0__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 104);
  v4 = *(a1 + 108);
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  *v13 = *(a1 + 40);
  *&v13[16] = v6;
  v14 = *(a1 + 72);
  v15 = *(a1 + 88);
  v7 = v2(v3, v4, v5, v13);
  if (v7)
  {
    v9 = v7;
    if (v7 != 268435460 || (*(a1 + 116) & 1) == 0)
    {
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v10 = x_log_get_utilities::log;
      if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 96);
        v12 = mach_error_string(v9);
        *v13 = 136315650;
        *&v13[4] = v11;
        *&v13[12] = 1024;
        *&v13[14] = v9;
        *&v13[18] = 2080;
        *&v13[20] = v12;
        _os_log_error_impl(&dword_183AA6000, v10, OS_LOG_TYPE_ERROR, "%s client message err=0x%x : %s", v13, 0x1Cu);
      }
    }
  }

  return mach_port_deallocate(*MEMORY[0x1E69E9A60], *(a1 + 104));
}

BOOL CA::Render::ContentStream::reuse_surface(CA::Render::ContentStream *this, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v4 = *(this + 43);
  v3 = *(this + 44);
  if (v4 != v3)
  {
    while (*(v4 + 8) != a2)
    {
      v4 += 24;
      if (v4 == v3)
      {
        goto LABEL_10;
      }
    }
  }

  if (v4 == v3)
  {
LABEL_10:
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v8 = x_log_get_render(void)::log;
    result = os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *v9 = 0;
    _os_log_error_impl(&dword_183AA6000, v8, OS_LOG_TYPE_ERROR, "Releasing invalid surfaces", v9, 2u);
    return 0;
  }

  std::vector<CA::Render::ContentStreamSurface>::push_back[abi:nn200100](this + 320, v4);
  v5 = *(this + 44);
  v6 = v5 - (v4 + 24);
  if (v5 != v4 + 24)
  {
    memmove(v4, (v4 + 24), v5 - (v4 + 24));
  }

  *(this + 44) = v4 + v6;
  return 1;
}

char *CA::Render::Proxy::show(int a1, X::Stream *this, uint64_t a3, char a4)
{
  if (a4)
  {
    return X::Stream::printf(this, "(proxy %d)");
  }

  else
  {
    return X::Stream::printf(this, "(proxy %d 0x%llx)");
  }
}

void sub_183DF4D88(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(&CA::Context::_lock);
  v6 = *(v1 + 152);
  if (v6)
  {
    CFRelease(v6);
  }

  if (*v2)
  {
    if (*(v1 + 88) == 1)
    {
      objc_storeWeakOrNil(v2, 0);
    }

    else
    {
      *v2 = 0;
    }
  }

  if (*(v4 + 760) != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  malloc_zone_free(*(v3 + 2880), v1);
  _Unwind_Resume(a1);
}

char *CA::Render::Pattern::show(uint64_t a1, X::Stream *this, int a3, uint64_t a4)
{
  if (a4)
  {
    return X::Stream::printf(this, "[%g %g] [%g %g])", *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104));
  }

  X::Stream::printf(this, "(pattern [%g %g %g %g] [%g %g]", *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104));
  CA::Render::show_affine_transform(this, "matrix", (a1 + 16), a3);
  v8 = (a3 + 1);
  X::Stream::printf(this, "\n%*s", 2 * v8, "");
  if (*(a1 + 128))
  {
    X::Stream::printf(this, "(cell ");
    (*(**(a1 + 128) + 40))(*(a1 + 128), this, v8, a4);
    X::Stream::printf(this, ")");
  }

  return X::Stream::printf(this, ")");
}

void CA::Render::Pattern::~Pattern(CA::Render::Pattern *this, const CA::Render::Object *a2)
{
  *this = &unk_1EF204BD8;
  v3 = *(this + 16);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  --dword_1ED4EAAD4;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v4 = malloc_zone;

  malloc_zone_free(v4, this);
}

{
  *this = &unk_1EF204BD8;
  v3 = *(this + 16);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  --dword_1ED4EAAD4;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

CGColorSpace *CA::Render::create_pattern_image(uint64_t a1, CGColorSpace *a2, CGFloat *a3, double *a4)
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (CGPatternIsOpaque())
    {
      v8 = 3;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 8;
  }

  v9 = vcvtpd_s64_f64(a4[2]);
  LODWORD(v4) = vcvtpd_s64_f64(a4[3]);
  v10 = CA::Render::format_rowbytes(v8, v9);
  v11 = v10;
  v24 = 0;
  v25[0] = v10;
  if (is_mul_ok(v10, v4))
  {
    v12 = (v10 * v4);
  }

  else
  {
    v12 = 0;
  }

  result = CA::Render::aligned_malloc(v12, &v24, 0);
  if (result)
  {
    v14 = result;
    v15 = CAGetCachedCGBitmapContext_(result, v9, v4, v8, v11, a2);
    if (v15 && (v17 = *(v15 + 2)) != 0)
    {
      CGContextSetCompositeOperation();
      v18 = *(MEMORY[0x1E695EFD0] + 16);
      *&v23.a = *MEMORY[0x1E695EFD0];
      *&v23.c = v18;
      *&v23.tx = *(MEMORY[0x1E695EFD0] + 32);
      *&transform.a = *&v23.a;
      *&transform.c = v18;
      *&transform.tx = *&v23.tx;
      CGAffineTransformScale(&v23, &transform, v9 / a4[2], v4 / a4[3]);
      v21 = v23;
      CGAffineTransformTranslate(&transform, &v21, -*a4, -a4[1]);
      v23 = transform;
      v21 = transform;
      CGAffineTransformScale(&transform, &v21, *a3, a3[1]);
      v23 = transform;
      CGContextConcatCTM(v17, &transform);
      transform = v23;
      CGContextSetBaseCTM();
      CGContextDrawPatternCell();
      CGContextFlush(v17);
      CAReleaseCachedCGContext(v17);
      v19 = v24;
      MEMORY[0x1865EC180](*MEMORY[0x1E69E9A60], v14, v24, 1, 1);
      return CA::Render::Image::new_image(v8, v9, v4, 1u, a2, v14, v25, CA::Render::aligned_free, v19, v20);
    }

    else
    {
      CA::Render::aligned_free(v14, v24, v16);
      return 0;
    }
  }

  return result;
}

void CA::Render::pattern_deleted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(&CA::Render::pattern_lock);
  v5 = x_hash_table_remove(CA::Render::pattern_cache, a4);
  if (v5)
  {
    v6 = v5;
    if (*(v5 + 32) > 0.0)
    {
      v8 = *v5;
      v7 = *(v5 + 8);
      *(v8 + 8) = v7;
      *v7 = v8;
      *v5 = v5;
      *(v5 + 8) = v5;
    }

    os_unfair_lock_unlock(&CA::Render::pattern_lock);
    v9 = v6[3];
    if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v9 + 16))(v9);
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v10 = malloc_zone;

    malloc_zone_free(v10, v6);
  }

  else
  {

    os_unfair_lock_unlock(&CA::Render::pattern_lock);
  }
}

CA::Render::Pattern *CA::Render::Pattern::Pattern(CA::Render::Pattern *this, CA::Render::Decoder *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 39;
  ++dword_1ED4EAAD4;
  *v4 = &unk_1EF204BD8;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 1) = 0u;
  CA::Render::Decoder::decode_cgfloat(a2, v4 + 2, 6);
  v7 = 0u;
  v8 = 0u;
  CA::Render::Decoder::decode_cgfloat(a2, &v7, 4);
  v5 = v8;
  *(this + 4) = v7;
  *(this + 5) = v5;
  v7 = 0uLL;
  CA::Render::Decoder::decode_cgfloat(a2, &v7, 2);
  *(this + 6) = v7;
  v7 = 0uLL;
  CA::Render::Decoder::decode_cgfloat(a2, &v7, 2);
  *(this + 7) = v7;
  *(this + 16) = CA::Render::Decoder::decode_object(a2, 6, &CA::Render::texture_types);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-pattern.cpp", 425);
  return this;
}

uint64_t CA::OGL::Shape::FlattenedLines::emit_line(CA::OGL::Shape::FlattenedLines *this, double a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const double *a12)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v28 = a3;
  v29[0] = a2;
  v26 = a6;
  v27 = a5;
  if (fabs(a4 + -1.0) >= 0.001)
  {
    v13 = 1.0 / a4;
    v29[0] = v13 * a2;
    v28 = v13 * a3;
  }

  if (fabs(a7 + -1.0) >= 0.001)
  {
    v26 = 1.0 / a7 * a6;
    v27 = 1.0 / a7 * a5;
  }

  result = CA::OGL::Shape::clip_line(v29, &v28, &v27, &v26, this + 1, a12);
  if (result)
  {
    v15 = *(this + 5);
    v16 = v29[0];
    v17 = v28;
    v18 = v27;
    v19 = v26;
    v20 = *(v15 + 65);
    v21 = v15 + 32;
    v22 = *(v15 + 32 + 8 * v20);
    v23 = v15 + 8 * v20;
    if ((v22 + 2) > *(v23 + 48))
    {
      result = CA::OGL::Shape::Lines::flush(v15, *(v15 + 65));
      v22 = *(v21 + 8 * v20);
    }

    v24 = *(v23 + 16) + 16 * v22;
    v25 = *(v15 + 8);
    *(v24 + 24) = v25;
    *(v24 + 8) = v25;
    *v24 = v16;
    *(v24 + 4) = v17;
    *(v24 + 16) = v18;
    *(v24 + 20) = v19;
    *(v21 + 8 * v20) += 2;
  }

  return result;
}

BOOL CA::OGL::Shape::clip_line(CA::OGL::Shape *this, double *a2, double *a3, double *a4, double *a5, const double *a6)
{
  v6 = *a2;
  v7 = a5[2];
  if (v7 >= *this)
  {
    if (*a5 > *this)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 4;
  }

  v9 = a5[3];
  if (v9 >= v6)
  {
    v10 = v8 | 2;
    if (a5[1] <= v6)
    {
      v10 = v8;
    }
  }

  else
  {
    v10 = v8 | 1;
  }

  v11 = *a4;
  if (v7 >= *a3)
  {
    if (*a5 > *a3)
    {
      v12 = 8;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 4;
  }

  if (v9 >= v11)
  {
    v13 = v12 | 2;
    if (a5[1] <= v11)
    {
      v13 = v12;
    }
  }

  else
  {
    v13 = v12 | 1;
  }

  v14 = (v13 | v10) == 0;
  while ((v13 & v10) == 0 && v13 | v10)
  {
    if (v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      v17 = a5[3];
    }

    else
    {
      if ((v15 & 2) == 0)
      {
        if ((v15 & 4) != 0)
        {
          v16 = a5[2];
        }

        else
        {
          v16 = *a5;
        }

        v17 = (v16 - *this) * (*a4 - *a2) / (*a3 - *this) + *a2;
        goto LABEL_33;
      }

      v17 = a5[1];
    }

    v16 = (v17 - *a2) * (*a3 - *this) / (*a4 - *a2) + *this;
LABEL_33:
    if (a5[2] >= v16)
    {
      if (*a5 <= v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = 8;
      }
    }

    else
    {
      v18 = 4;
    }

    if (a5[3] >= v17)
    {
      if (a5[1] > v17)
      {
        v18 |= 2u;
      }
    }

    else
    {
      v18 |= 1u;
    }

    v19 = v10 == 0;
    if (v10)
    {
      v20 = this;
    }

    else
    {
      v20 = a3;
    }

    if (v10)
    {
      v21 = a2;
    }

    else
    {
      v21 = a4;
    }

    if (v10)
    {
      v10 = v18;
    }

    else
    {
      v10 = 0;
    }

    if (v19)
    {
      v13 = v18;
    }

    *v20 = v16;
    *v21 = v17;
    v14 = (v13 | v10) == 0;
  }

  return v14;
}

double CA::OGL::Shape::FlattenedMask::emit_line(CA::OGL::Shape::FlattenedMask *this, double a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const double *a12)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v30 = a3;
  v31[0] = a2;
  v28 = a6;
  v29 = a5;
  if (fabs(a4 + -1.0) >= 0.001)
  {
    v13 = 1.0 / a4;
    v31[0] = v13 * a2;
    v30 = v13 * a3;
  }

  if (fabs(a7 + -1.0) >= 0.001)
  {
    v28 = 1.0 / a7 * a6;
    v29 = 1.0 / a7 * a5;
  }

  if (CA::OGL::Shape::clip_line(v31, &v30, &v29, &v28, this + 1, a12))
  {
    result = v31[0];
    v15 = v29 - v31[0];
    v16 = v28 - v30;
    v17 = vabdd_f64(v29, v31[0]);
    v18 = vabdd_f64(v28, v30);
    if (v17 <= v18)
    {
      if (v18 > v17)
      {
        v23 = *(this + 6);
        v24 = v16 > 0.0 ? *(this + 6) : -v23;
        if ((v18 & 0x80000000) == 0)
        {
          v25 = v15 / v18;
          v26 = *(this + 5) + v23 * (v30 - *(this + 2));
          result = v31[0] - *(this + 1);
          v27 = v18 + 1;
          do
          {
            *(v26 + result) = -1;
            result = result + v25;
            v26 += v24;
            --v27;
          }

          while (v27);
        }
      }
    }

    else
    {
      v19 = -1;
      if (v15 > 0.0)
      {
        v19 = 1;
      }

      if ((v17 & 0x80000000) == 0)
      {
        v20 = *(this + 6);
        v21 = *(this + 5) + (v31[0] - *(this + 1));
        result = v30 - *(this + 2);
        v22 = v17 + 1;
        do
        {
          *(v21 + v20 * result) = -1;
          v21 += v19;
          result = result + v16 / v17;
          --v22;
        }

        while (v22);
      }
    }
  }

  return result;
}

uint64_t CA::OGL::Shape::flatten_quad(uint64_t (***a1)(void, __n128, __n128, __n128, __n128, __n128, __n128), __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, double a8, double a9, double a10)
{
  v20 = a5.n128_f64[0] - a2.n128_f64[0];
  v21 = a6.n128_f64[0] - a3.n128_f64[0];
  v22 = a8 - a5.n128_f64[0];
  v23 = a9 - a6.n128_f64[0];
  if (vabdd_f64(a9 - a6.n128_f64[0], a6.n128_f64[0] - a3.n128_f64[0]) + vabdd_f64(a8 - a5.n128_f64[0], a5.n128_f64[0] - a2.n128_f64[0]) >= 2.0)
  {
    do
    {
      v22 = v22 * 0.5;
      v23 = v23 * 0.5;
      v24 = a2.n128_f64[0] + v20 * 0.5 + (a8 - v22 - (a2.n128_f64[0] + v20 * 0.5)) * 0.5;
      v25 = a3.n128_f64[0] + v21 * 0.5 + (a9 - v23 - (a3.n128_f64[0] + v21 * 0.5)) * 0.5;
      v26 = a4.n128_f64[0] + (a7.n128_f64[0] - a4.n128_f64[0]) * 0.5 + (a10 + (a7.n128_f64[0] - a10) * 0.5 - (a4.n128_f64[0] + (a7.n128_f64[0] - a4.n128_f64[0]) * 0.5)) * 0.5;
      v29 = a10 + (a7.n128_f64[0] - a10) * 0.5;
      CA::OGL::Shape::flatten_quad(a1);
      v20 = a8 - v22 - v24;
      a7.n128_f64[0] = v29;
      v21 = a9 - v23 - v25;
      a4.n128_f64[0] = v26;
      a3.n128_f64[0] = v25;
      a2.n128_f64[0] = v24;
    }

    while (vabdd_f64(v23, v21) + vabdd_f64(v22, v20) >= 2.0);
  }

  else
  {
    v24 = a2.n128_f64[0];
    v25 = a3.n128_f64[0];
    v26 = a4.n128_f64[0];
  }

  v27 = **a1;
  a2.n128_f64[0] = v24;
  a3.n128_f64[0] = v25;
  a4.n128_f64[0] = v26;
  a5.n128_f64[0] = a8;
  a6.n128_f64[0] = a9;
  a7.n128_f64[0] = a10;

  return v27(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t CA::OGL::Shape::flatten_cube(uint64_t (***a1)(void, __n128, __n128, __n128, __n128, __n128, __n128), int a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v38 = a8.n128_f64[0];
  v22 = a6.n128_f64[0];
  v24 = 2.0;
  v25 = (a2 + 1);
  while (v25 != 25)
  {
    v26 = a12 - a9;
    v27 = a13 - a10;
    if (vabdd_f64(a12 - a9, a9 - v22) + vabdd_f64(a9 - v22, v22 - a3.n128_f64[0]) + vabdd_f64(a10 - a7.n128_f64[0], a7.n128_f64[0] - a4.n128_f64[0]) + vabdd_f64(a13 - a10, a10 - a7.n128_f64[0]) < v24)
    {
      break;
    }

    v28 = a3.n128_f64[0] + (a9 + a3.n128_f64[0] - v22 * v24) * 0.75 + (a12 - a3.n128_f64[0] + (a9 - v22) * -3.0) * 0.125 + (v22 - a3.n128_f64[0]) * 1.5;
    v29 = a4.n128_f64[0] + (a10 + a4.n128_f64[0] - a7.n128_f64[0] * v24) * 0.75 + (a13 - a4.n128_f64[0] + (a10 - a7.n128_f64[0]) * -3.0) * 0.125 + (a7.n128_f64[0] - a4.n128_f64[0]) * 1.5;
    v30 = a5.n128_f64[0] + (a11 + a5.n128_f64[0] - v38 * v24) * 0.75 + (a14 - a5.n128_f64[0] + (a11 - v38) * -3.0) * 0.125 + (v38 - a5.n128_f64[0]) * 1.5;
    v31 = a13 - (v27 + v27 + (a10 + a10 - (a7.n128_f64[0] + a13)) * 0.5) * 0.5;
    v38 = a14 - (a14 - a11 + a14 - a11 + (a11 + a11 - (v38 + a14)) * 0.5) * 0.5;
    v32 = a12 - v26 * 0.5;
    a10 = a13 - v27 * 0.5;
    v36 = a12 - (v26 + v26 + (a9 + a9 - (v22 + a12)) * 0.5) * 0.5;
    a11 = a14 - (a14 - a11) * 0.5;
    v33 = a13;
    CA::OGL::Shape::flatten_cube(a1, v25);
    v22 = v36;
    a9 = v32;
    a7.n128_f64[0] = v31;
    v24 = 2.0;
    a13 = v33;
    v25 = (v25 + 1);
    a3.n128_f64[0] = v28;
    a4.n128_f64[0] = v29;
    a5.n128_f64[0] = v30;
  }

  v34 = **a1;
  a6.n128_f64[0] = a12;
  a7.n128_f64[0] = a13;
  a8.n128_f64[0] = a14;

  return v34(a1, a3, a4, a5, a6, a7, a8);
}

void *CA::OGL::Shape::HairlineRenderer<CA::OGL::RenderPathIterator>::render_mask(uint64_t a1, uint64_t a2, uint64_t a3, int32x2_t *a4, double a5, double a6, double a7, __n128 a8, __n128 a9, __n128 a10)
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = *a4;
  v11 = a4[1];
  v12.i64[0] = a4->i32[0];
  v12.i64[1] = HIDWORD(*a4);
  v22 = vcvtq_f64_s64(v12);
  v13 = *(a1 + 8);
  v14 = vadd_s32(v11, v10);
  v12.i64[0] = v14.i32[0];
  v12.i64[1] = v14.i32[1];
  v15 = vdupq_n_s64(0xBF50624DD2F1A9FCLL);
  v23 = vaddq_f64(vcvtq_f64_s64(v12), v15);
  v21 = &unk_1EF204C60;
  v24 = a2;
  v25 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v17 = &v21;
  return CA::OGL::RenderPathIterator::iterate<CA::OGL::Shape::FlatteningIterator>(v13, &v17, 0, v15, v22, a8, a9, a10);
}

void *CA::OGL::RenderPathIterator::iterate<CA::OGL::Shape::FlatteningIterator>(void *result, uint64_t (****a2)(double, double, double, double, double, double), __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = *(*result + 32);
  v10 = *(*result + 40);
  v11 = *(*result + 20);
  v12 = &v10[v11];
  if (!result[1])
  {
    if (!v11)
    {
      return result;
    }

    while (1)
    {
      v23 = *v10;
      if (v23 <= 1)
      {
        if (*v10)
        {
          if (v23 == 1)
          {
            v26 = *v9;
            v27 = *(v9 + 8);
            v9 += 16;
            a2[4] = v26;
            a2[5] = v27;
            a2[1] = v26;
            a2[2] = v27;
            a2[6] = 0x3FF0000000000000;
            a2[3] = 0x3FF0000000000000;
          }
        }

        else
        {
          result = (***a2)(*(a2 + 4), *(a2 + 5), *(a2 + 6), *(a2 + 1), *(a2 + 2), *(a2 + 3));
          a3 = *(a2 + 1);
          *(a2 + 2) = a3;
          a2[6] = a2[3];
        }

        goto LABEL_38;
      }

      if (v23 == 2)
      {
        break;
      }

      if (v23 == 3)
      {
        a6.n128_u64[0] = *v9;
        a7.n128_u64[0] = *(v9 + 8);
        v30 = *(v9 + 16);
        v31 = *(v9 + 24);
        a3.n128_u64[0] = a2[4];
        a4.n128_u64[0] = a2[5];
        a5.n128_u64[0] = a2[6];
        a8.n128_u64[0] = 1.0;
        result = CA::OGL::Shape::flatten_quad(*a2, a3, a4, a5, a6, a7, a8, v30, v31, 1.0);
        *(a2 + 4) = v30;
        *(a2 + 5) = v31;
        v9 += 32;
        goto LABEL_36;
      }

      if (v23 == 4)
      {
        a6.n128_u64[0] = *v9;
        a7.n128_u64[0] = *(v9 + 8);
        v24 = *(v9 + 32);
        v25 = *(v9 + 40);
        a3.n128_u64[0] = a2[4];
        a4.n128_u64[0] = a2[5];
        a5.n128_u64[0] = a2[6];
        a8.n128_u64[0] = 1.0;
        result = CA::OGL::Shape::flatten_cube(*a2, 0, a3, a4, a5, a6, a7, a8, *(v9 + 16), *(v9 + 24), 1.0, v24, v25, 1.0);
        *(a2 + 4) = v24;
        *(a2 + 5) = v25;
        v9 += 48;
LABEL_36:
        a2[6] = 0x3FF0000000000000;
      }

LABEL_38:
      if (++v10 >= v12)
      {
        return result;
      }
    }

    v28 = *v9;
    v29 = *(v9 + 8);
    v9 += 16;
    result = (***a2)(*(a2 + 4), *(a2 + 5), *(a2 + 6), v28, v29, 1.0);
    *(a2 + 4) = v28;
    *(a2 + 5) = v29;
    goto LABEL_36;
  }

  if (v11)
  {
    v13 = result;
    v14 = xmmword_183E20E60;
    do
    {
      v15.n128_u64[1] = 0;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v16 = *v10;
      if ((v16 - 1) < 2)
      {
        v17 = 1;
      }

      else
      {
        if (v16 == 3)
        {
          v17 = 2;
        }

        else
        {
          if (v16 != 4)
          {
            goto LABEL_12;
          }

          v36 = *(v9 + 32);
          *(&v37 + 1) = 0x3FF0000000000000;
          v17 = 3;
        }

        v34 = *(v9 + 16);
        v35 = v14;
      }

      v32 = *v9;
      v33 = v14;
      result = CA::Transform::apply_to_point4(v13[1], &v32, &v32, v17);
      v9 += 16 * v17;
      v16 = *v10;
LABEL_12:
      if (v16 <= 1)
      {
        if (v16)
        {
          v21 = v32;
          a2[5] = *&v32.f64[1];
          *&v22 = v33.n128_u64[1];
          a2[6] = v33.n128_u64[1];
          *(&v22 + 1) = *&v21.f64[0];
          *(a2 + 1) = v21;
          *(a2 + 3) = v22;
        }

        else
        {
          result = (***a2)(*(a2 + 4), *(a2 + 5), *(a2 + 6), *(a2 + 1), *(a2 + 2), *(a2 + 3));
          *(a2 + 2) = *(a2 + 1);
          a2[6] = a2[3];
        }

        goto LABEL_23;
      }

      switch(v16)
      {
        case 2:
          v19 = v32.f64[1];
          v18 = v32.f64[0];
          v20 = v33.n128_u64[1];
          result = (***a2)(*(a2 + 4), *(a2 + 5), *(a2 + 6), v32.f64[0], v32.f64[1], v33.n128_f64[1]);
          goto LABEL_21;
        case 3:
          a7.n128_u64[0] = *&v32.f64[1];
          a6.n128_u64[0] = *&v32.f64[0];
          a8.n128_u64[0] = v33.n128_u64[1];
          v19 = *(&v34 + 1);
          v18 = *&v34;
          v20 = v35.n128_u64[1];
          v15.n128_u64[0] = a2[4];
          v14.n128_u64[0] = a2[5];
          a5.n128_u64[0] = a2[6];
          result = CA::OGL::Shape::flatten_quad(*a2, v15, v14, a5, a6, a7, a8, *&v34, *(&v34 + 1), v35.n128_f64[1]);
          goto LABEL_21;
        case 4:
          a7.n128_u64[0] = *&v32.f64[1];
          a6.n128_u64[0] = *&v32.f64[0];
          a8.n128_u64[0] = v33.n128_u64[1];
          v19 = *(&v36 + 1);
          v18 = *&v36;
          v20 = *(&v37 + 1);
          v15.n128_u64[0] = a2[4];
          v14.n128_u64[0] = a2[5];
          a5.n128_u64[0] = a2[6];
          result = CA::OGL::Shape::flatten_cube(*a2, 0, v15, v14, a5, a6, a7, a8, *&v34, *(&v34 + 1), v35.n128_f64[1], *&v36, *(&v36 + 1), *(&v37 + 1));
LABEL_21:
          *(a2 + 4) = v18;
          *(a2 + 5) = v19;
          a2[6] = v20;
          break;
      }

LABEL_23:
      ++v10;
      v14 = xmmword_183E20E60;
    }

    while (v10 < v12);
  }

  return result;
}

void *CA::OGL::Shape::HairlineRenderer<CA::OGL::RenderPathIterator>::render_lines(uint64_t a1, uint64_t a2, int32x2_t *a3, double a4, double a5, double a6, __n128 a7, __n128 a8, __n128 a9)
{
  v23 = *MEMORY[0x1E69E9840];
  v9.i64[0] = a3->i32[0];
  v9.i64[1] = HIDWORD(*a3);
  v10 = vcvtq_f64_s64(v9);
  v11 = *(a1 + 8);
  v12 = vadd_s32(a3[1], *a3);
  v9.i64[0] = v12.i32[0];
  v9.i64[1] = v12.i32[1];
  v13 = vdupq_n_s64(0xBF50624DD2F1A9FCLL);
  v20 = v10;
  v21 = vaddq_f64(vcvtq_f64_s64(v9), v13);
  v19 = &unk_1EF204C48;
  v22 = a2;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = &v19;
  return CA::OGL::RenderPathIterator::iterate<CA::OGL::Shape::FlatteningIterator>(v11, &v15, 0, v13, v10, a7, a8, a9);
}

_DWORD *CA::CG::GaussianBlurStyle::copy(CA::CG::GaussianBlurStyle *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_type_zone_malloc(malloc_zone, 0x58uLL, 0x165299FDuLL);
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
    *v3 = &unk_1EF204CB8;
    *(v3 + 10) = *(this + 10);
  }

  return v3;
}

uint64_t CA::CG::GaussianBlurStyle::expand_layer_roi(uint64_t this, float64x2_t *a2, double a3, double a4, double a5, double a6, float64x2_t a7)
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
      v11.f64[0] = *(this + 80) * -2.8 + -1.0;
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

  v16 = vclezq_f64(v8);
  v17 = vclezq_f64(v11);
  v18 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v17, v16), vzip2q_s64(v17, v16))));
  if (v18.i8[4])
  {
    if (v18.i8[0])
    {
      return this;
    }

LABEL_16:
    *a2 = v12;
    a2[1] = v11;
    return this;
  }

  if ((v18.i8[0] & 1) == 0)
  {
    v19 = vaddq_f64(v12, v11);
    v12 = vminnmq_f64(v7, v12);
    v11 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v7, v8), v19), v12);
    goto LABEL_16;
  }

  return this;
}

void CA::CG::GaussianBlurStyle::~GaussianBlurStyle(CA::CG::Renderer **this, const void *a2)
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

double CA::Render::GradientLayer::set_property(CA::Render::GradientLayer *this, uint64_t a2, unsigned int *a3, BOOL a4, unint64_t a5, const double *a6, __n128 a7, uint64_t a8, CGColorSpace *a9)
{
  v10 = *a3;
  if (*a3 <= 445)
  {
    if (v10 != 121)
    {
      if (v10 == 237)
      {
        goto LABEL_5;
      }

LABEL_13:
      if (a5 && v10 == 532)
      {
        a7.n128_f64[0] = *a6;
        a7.n128_f32[0] = *a6;
        *(this + 27) = a7.n128_u32[0];
      }

      return a7.n128_f64[0];
    }

LABEL_16:
    a7 = CA::Render::Gradient::set_values((this + 16), a2, a3, a5, a6, *(this + 17), *(this + 16), a9, a7);
    if ((*(this + 13) & 8) == 0)
    {
      v14 = *(this + 14);
      if (v14)
      {
        if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v14 + 16))(v14, a7);
        }

        *(this + 14) = 0;
      }

      v15 = *(this + 15);
      if (v15)
      {
        if (atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v15 + 16))(v15, a7);
        }

        *(this + 15) = 0;
      }
    }

    return a7.n128_f64[0];
  }

  if (v10 == 446 || v10 == 490)
  {
    goto LABEL_16;
  }

  if (v10 != 683)
  {
    goto LABEL_13;
  }

LABEL_5:
  v11 = v10 == 683;
  v12 = 88;
  if (v11)
  {
    v12 = 72;
  }

  v13 = this + v12;
  if (a2 == 1 && a5 >= 2)
  {
    *v13 = *a6;
    a7.n128_f64[0] = a6[1];
LABEL_10:
    *(v13 + 1) = a7.n128_u64[0];
    return a7.n128_f64[0];
  }

  if (a2 == 2)
  {
    v16 = a3[1];
    if (a5 && v16 == 756)
    {
      a7.n128_f64[0] = *a6;
      *v13 = *a6;
      return a7.n128_f64[0];
    }

    if (a5 && v16 == 760)
    {
      a7.n128_f64[0] = *a6;
      goto LABEL_10;
    }
  }

  return a7.n128_f64[0];
}

char *CA::Render::GradientLayer::show(uint64_t a1, X::Stream *this, int a3, char a4)
{
  v7 = *(a1 + 104);
  switch(v7)
  {
    case 58:
      v8 = "axial";
      goto LABEL_7;
    case 128:
      v8 = "conic";
      goto LABEL_7;
    case 587:
      v8 = "radial";
LABEL_7:
      if (a4)
      {
        X::Stream::printf(this, "gradient-layer");
        return X::Stream::printf(this, " %s", v8);
      }

      X::Stream::printf(this, "(gradient-layer");
      X::Stream::printf(this, "\n%*s", 2 * a3 + 2, "");
      X::Stream::printf(this, "(gradientType %s)", v8);
      v9 = 2 * a3 + 2;
      goto LABEL_11;
  }

  if ((a4 & 1) == 0)
  {
    X::Stream::printf(this, "(gradient-layer");
    v9 = 2 * a3 + 2;
LABEL_11:
    v10 = *(a1 + 72);
    v11 = *(a1 + 80);
    v12 = *(a1 + 88);
    v13 = *(a1 + 96);
    X::Stream::printf(this, "\n%*s", v9, "");
    X::Stream::printf(this, "(startPoint [%.10g %.10g])", v10, v11);
    X::Stream::printf(this, "\n%*s", v9, "");
    X::Stream::printf(this, "(endPoint [%.10g %.10g])", v12, v13);
    v14 = *(a1 + 108);
    if (v14 != 1.0)
    {
      X::Stream::printf(this, "(noiseScale %g)", v14);
    }

    v15 = ")";
    goto LABEL_14;
  }

  v15 = "gradient-layer";
LABEL_14:

  return X::Stream::printf(this, v15);
}

void CA::OGL::fill_surface_mesh_3d(uint64_t a1, uint64_t a2, float64x2_t *a3, uint64_t a4, unsigned int a5, uint64_t a6, int a7, __n128 a8, float a9)
{
  v119 = a7;
  v117 = a8;
  v128[7] = *MEMORY[0x1E69E9840];
  v120 = *(a1 + 656);
  os_unfair_lock_lock((a2 + 16));
  CA::Render::MeshTransform::update_locked(a2, 1);
  os_unfair_lock_unlock((a2 + 16));
  v112 = (*(a2 + 32) - *(a2 + 24)) >> 1;
  if (v112 > 0x1000)
  {
    v18 = malloc_type_malloc(v112, 0x1E2A687uLL);
    if (!v18)
    {
      return;
    }
  }

  else
  {
    v16 = MEMORY[0x1EEE9AC00](v112);
    v17 = &v110 - ((v16 + 30) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v16 | 0xF);
    v18 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!v18)
    {
      return;
    }
  }

  v113 = a4;
  v19 = v120;
  v118 = *(v120 + 32);
  v125 = 0.0;
  v124 = 0;
  v123 = 0.0;
  v122 = 0;
  CA::Render::MeshTransform::vertex_transform(*(a2 + 96), &v124, &v122, *a3, a3[1]);
  v126[0] = xmmword_183E20E00;
  v126[1] = 0u;
  v126[2] = xmmword_183E20E60;
  memset(&v126[3], 0, 32);
  v126[5] = xmmword_183E20E00;
  v126[6] = 0u;
  v126[7] = xmmword_183E20E60;
  __asm { FMOV            V0.2D, #1.0 }

  v126[8] = _Q0;
  _Q0.f64[0] = v122.f32[0];
  v127 = 0;
  v25 = CA::Transform::translate(v126, _Q0, v122.f32[1], v123);
  v25.f64[0] = *&v124;
  CA::Transform::scale(v126, v25, *(&v124 + 1), v125);
  CA::Transform::concat(v126, *(v19 + 24), v26, v27);
  v28 = CA::Transform::apply_to_point4(v126, v18, (*(a2 + 24) + 16), 0x20, (*(a2 + 32) - *(a2 + 24)) >> 5);
  v29 = *(a2 + 48);
  v30 = *(a2 + 56);
  v31 = v30 - v29;
  if ((v30 - v29) > 0x4000)
  {
    v34 = malloc_type_malloc(2 * (v30 - v29), 0x10800407411B482uLL);
    if (!v34)
    {
      goto LABEL_56;
    }

    v111 = v34;
    v29 = *(a2 + 48);
    v30 = *(a2 + 56);
    v33 = v30 - v29;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v28);
    v111 = &v110 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v111, v32);
    v33 = v30 - v29;
  }

  v110 = v31;
  v35 = v33 >> 4;
  _ZF = v30 == v29;
  v36 = v111;
  if (!_ZF)
  {
    v37 = 0;
    if (v35 <= 1)
    {
      v38 = 1;
    }

    else
    {
      v38 = v35;
    }

    v39 = v111 + 8;
    v40 = (v29 + 8);
    do
    {
      v41 = v18[2 * *(v40 - 1) + 1].f32[0] + v18[2 * *(v40 - 2) + 1].f32[0];
      v42 = *v40;
      v43 = v40[1];
      v40 += 4;
      *&v44 = (v41 + (v18[2 * v42 + 1].f32[0] + v18[2 * v43 + 1].f32[0])) * 0.25;
      *(v39 - 2) = ((v44 >> 31) | 0x80000000) ^ v44;
      *v39 = v37;
      v39 += 2;
      ++v37;
    }

    while (v38 != v37);
  }

  CA::radix_sort(v35);
  *(*(a1 + 16) + 16) = 1;
  if (v118 == 0x3C003C003C003C00)
  {
    v45 = 1;
  }

  else
  {
    v45 = 3;
  }

  *(*(a1 + 16) + 16) = v45;
  v46 = v113;
  CA::OGL::Context::bind_surface(a1, v113, 0, a5, a6, a9);
  v48 = *(a1 + 16);
  if (v48[31].u8[0] >= 2u)
  {
    v48[31].i8[1] |= 1u;
    v48 = *(a1 + 16);
  }

  v49.i64[0] = v124;
  v50 = v48[6];
  v49.i64[1] = v48[6].i64[0];
  v51.i32[0] = v117.n128_u32[0];
  *&v51.u32[2] = vsub_f32(v122, vcvt_f32_s32(v46[6]));
  v51.i32[1] = v117.n128_u32[0];
  v52 = vmulq_f32(v49, v51);
  v53.i64[0] = vmulq_f32(v52, v50).u64[0];
  v53.i64[1] = vaddq_f32(v52, v50).i64[1];
  v48[6] = v53;
  v48[31].i8[1] |= 8u;
  if (v119)
  {
    v54 = *(v120 + 24);
    v55 = a3[1];
    *v128 = *a3;
    *&v128[2] = v55;
    CA::Rect::apply_transform(v128, v54, v47);
    if (v117.n128_f32[0] != 1.0)
    {
      v56 = v117.n128_f32[0];
      if (*&v128[2] < 1.79769313e308)
      {
        *v128 = *v128 * v56;
        *&v128[2] = *&v128[2] * v56;
      }

      if (*&v128[3] < 1.79769313e308)
      {
        *&v128[1] = *&v128[1] * v56;
        *&v128[3] = *&v128[3] * v56;
      }
    }

    v58 = v46[5];
    v57 = v46[6];
    v59.i64[0] = v57.i32[0];
    v59.i64[1] = v57.i32[1];
    v60 = vsubq_f64(*v128, vcvtq_f64_s64(v59));
    v59.i64[0] = v58.i32[0];
    v59.i64[1] = v58.i32[1];
    v61 = vcvtq_f64_s64(v59);
    *(*(a1 + 16) + 96) = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(*&v128[2], v61)), vdivq_f64(v60, v61));
  }

  if (*(a2 + 108))
  {
    v62 = v46[7];
    v63.i64[0] = v62.i32[0];
    v63.i64[1] = v62.i32[1];
    __asm { FMOV            V1.2D, #-0.5 }

    v65 = vaddq_f64(vcvtq_f64_s64(v63), _Q1);
    *&_Q1.f64[0] = v46[5];
    v63.i64[0] = SLODWORD(_Q1.f64[0]);
    v63.i64[1] = SHIDWORD(_Q1.f64[0]);
    v66 = vcvtq_f64_s64(v63);
    __asm { FMOV            V2.2D, #0.5 }

    *(*(a1 + 16) + 19) = 5;
    *(*(a1 + 16) + 384) = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(_Q2, v66)), vdivq_f64(v65, v66));
  }

  v68 = *(*(a1 + 656) + 8);
  v128[0] = a1;
  v128[1] = v68;
  memset(&v128[2], 0, 40);
  LOWORD(v128[4]) = 256;
  CA::OGL::Context::ClippedArray::start(v128);
  v121[0] = 0;
  v121[1] = 0;
  v117.n128_u64[0] = a1 + 1386;
  v114 = v36 + 8;
  v116 = xmmword_183E20E50;
  v115 = 0.000001;
LABEL_30:
  while (CA::OGL::Context::ClippedArray::next_rect(v128, v121))
  {
    v69 = *(a2 + 48);
    if (*(a2 + 56) != v69)
    {
      v70 = 0;
      v71 = v114;
      while (1)
      {
        v72 = (v69 + 16 * *v71);
        v73 = *v72;
        v74 = v72[1];
        v76 = v72[2];
        v75 = v72[3];
        v77 = *(a2 + 24);
        v78 = (v77 + 32 * v73);
        v79 = *v78;
        v80 = v78[1];
        v81 = (v77 + 32 * v74);
        v83 = *v81;
        v82 = v81[1];
        v84 = (v77 + 32 * v76);
        v86 = *v84;
        v85 = v84[1];
        v87 = (v77 + 32 * v75);
        v88 = *v87;
        v89 = v87[1];
        v90 = 6;
        if (!*(a1 + 108))
        {
          v90 = 4;
        }

        v91 = *(a1 + 144);
        if ((v91 + 4) > *(a1 + 152) || (v92 = *(a1 + 128)) != 0 && *(a1 + 120) + v90 > v92)
        {
          *(a1 + 1384) |= 0x20u;
          CA::OGL::Context::array_flush(a1);
          v91 = 0;
          *(a1 + 112) = v117.n128_u64[0];
          *(a1 + 120) = v116;
        }

        v93 = *(a1 + 136);
        *(a1 + 144) = v91 + 4;
        v94 = *v18[2 * v74].f32;
        v95 = *v18[2 * v76].f32;
        v96 = *v18[2 * v75].f32;
        v97 = (v93 + 48 * v91);
        *v97 = *v18[2 * v73].f32;
        v97[3] = v94;
        v97[6] = v95;
        v97[9] = v96;
        if (*(a1 + 112))
        {
          CA::OGL::Context::array_indices(a1, v91);
        }

        if (!v119)
        {
          goto LABEL_47;
        }

        v98 = *(v120 + 24);
        v99 = v98[1];
        v100 = v98[4];
        if (fabs(v99) >= v115 || fabs(v100) >= v115)
        {
          v102 = v99 < 0.0;
          v106 = 1.0 - v80;
          v107 = 1.0 - v82;
          v108 = 1.0 - v85;
          v109 = 1.0 - v89;
          v82 = v83;
          v85 = v86;
          v89 = v88;
          v80 = v79;
          v88 = v109;
          v86 = v108;
          v83 = v107;
          v79 = v106;
          if (v100 > 0.0)
          {
LABEL_52:
            v79 = 1.0 - v79;
            v83 = 1.0 - v83;
            v86 = 1.0 - v86;
            v88 = 1.0 - v88;
            if (!v102)
            {
              goto LABEL_47;
            }

LABEL_46:
            v80 = 1.0 - v80;
            v82 = 1.0 - v82;
            v85 = 1.0 - v85;
            v89 = 1.0 - v89;
            goto LABEL_47;
          }
        }

        else
        {
          v101 = *v98;
          v102 = v98[5] < 0.0;
          if (v101 < 0.0)
          {
            goto LABEL_52;
          }
        }

        if (v102)
        {
          goto LABEL_46;
        }

LABEL_47:
        v103 = *(a1 + 136) + 48 * *(a1 + 144);
        *(v103 - 176) = v79;
        *(v103 - 172) = v80;
        *(v103 - 128) = v83;
        *(v103 - 124) = v82;
        *(v103 - 80) = v86;
        *(v103 - 76) = v85;
        *(v103 - 32) = v88;
        *(v103 - 28) = v89;
        if (v118 != 0x3C003C003C003C00)
        {
          v104 = *(v120 + 32);
          v105 = *(a1 + 136) + 48 * *(a1 + 144);
          *(v105 - 160) = v104;
          *(v105 - 112) = v104;
          *(v105 - 64) = v104;
          *(v105 - 16) = v104;
        }

        ++v70;
        v69 = *(a2 + 48);
        v71 += 16;
        if (v70 >= (*(a2 + 56) - v69) >> 4)
        {
          goto LABEL_30;
        }
      }
    }
  }

  *(*(a1 + 16) + 497) &= ~8u;
  *(*(a1 + 16) + 497) &= ~1u;
  CA::OGL::Context::unbind_surface(a1, v113, 0);
  *(*(a1 + 16) + 16) = 0;
  if (v110 > 0x4000)
  {
    free(v111);
  }

LABEL_56:
  if (v112 > 0x1000)
  {
    free(v18);
  }
}

void CA::OGL::fill_surface_mesh(uint64_t a1, os_unfair_lock_s *this, float64x2_t *a3, int32x2_t *a4, unsigned int a5, uint64_t a6, int a7, __n128 a8, float a9)
{
  v130 = *MEMORY[0x1E69E9840];
  if ((this[25]._os_unfair_lock_opaque & 0x80000000) != 0)
  {
    os_unfair_lock_opaque = 3;
  }

  else
  {
    os_unfair_lock_opaque = this[25]._os_unfair_lock_opaque;
  }

  v17 = CA::Render::MeshTransform::retain_subdivided_mesh(this, os_unfair_lock_opaque);
  if (v17)
  {
    v18 = v17;
    if (*(v17 + 21) == *(v17 + 24))
    {
      v19 = *(a1 + 656);
      os_unfair_lock_lock(v17 + 4);
      v20 = 1;
      CA::Render::MeshTransform::update_locked(v18, 1);
      os_unfair_lock_unlock(v18 + 4);
      v117 = v19;
      v21 = *(v19 + 32);
      if (v21 == 0x3C003C003C003C00)
      {
        v22 = 1;
      }

      else
      {
        v22 = 3;
      }

      *(*(a1 + 16) + 16) = v22;
      CA::OGL::Context::bind_surface(a1, a4, 0, a5, a6, a9);
      if ((a4[18].i16[2] & 0x10) != 0)
      {
        v20 = *(v18 + 108) == 0;
      }

      v23 = *(a1 + 16);
      v24 = *(v23 + 496);
      if (v24 >= 2 && (v24 != 3 || v20))
      {
        *(v23 + 497) |= 1u;
      }

      v124 = 0.0;
      v123 = 0;
      v122 = 0.0;
      v121 = 0;
      CA::Render::MeshTransform::vertex_transform(*(v18 + 24), &v123, &v121, *a3, a3[1]);
      v127 = 0;
      v26 = *(v19 + 24);
      v27 = *(v26 + 16);
      v28 = *(v26 + 32);
      v29 = *(v26 + 48);
      v125[0] = *v26;
      v125[1] = v27;
      v125[2] = v28;
      v125[3] = v29;
      v30 = *(v26 + 80);
      v31 = *(v26 + 96);
      v32 = *(v26 + 112);
      v125[4] = *(v26 + 64);
      v125[5] = v30;
      v125[6] = v31;
      v125[7] = v32;
      v126 = *(v26 + 128);
      v33.f64[1] = *(&v126 + 1);
      v33.f64[0] = v121.f32[0];
      LOBYTE(v127) = *(v26 + 144) & 0x1F;
      v34 = CA::Transform::translate(v125, v33, v121.f32[1], v122);
      v34.f64[0] = *&v123;
      CA::Transform::scale(v125, v34, *(&v123 + 1), v124);
      *(a1 + 1368) = v125;
      ++*(a1 + 664);
      v36 = *(a1 + 16);
      v37.i64[0] = v123;
      v38 = v36[6];
      v37.i64[1] = v36[6].i64[0];
      v39.i32[0] = a8.n128_u32[0];
      *&v39.u32[2] = vsub_f32(v121, vcvt_f32_s32(a4[6]));
      v39.i32[1] = a8.n128_u32[0];
      v40 = vmulq_f32(v37, v39);
      v41.i64[0] = vmulq_f32(v40, v38).u64[0];
      v41.i64[1] = vaddq_f32(v40, v38).i64[1];
      v36[6] = v41;
      v36[31].i8[1] |= 8u;
      if (a7)
      {
        v42 = *(v19 + 24);
        v43 = a3[1];
        v128[0] = *a3;
        v128[1] = v43;
        CA::Rect::apply_transform(v128, v42, v35);
        if (a8.n128_f32[0] != 1.0)
        {
          v44 = a8.n128_f32[0];
          if (*v128[1].i64 < 1.79769313e308)
          {
            *v128[0].i64 = *v128[0].i64 * v44;
            *v128[1].i64 = *v128[1].i64 * v44;
          }

          if (*&v128[1].i64[1] < 1.79769313e308)
          {
            *&v128[0].i64[1] = *&v128[0].i64[1] * v44;
            *&v128[1].i64[1] = *&v128[1].i64[1] * v44;
          }
        }

        v46 = a4[5];
        v45 = a4[6];
        v47.i64[0] = v45.i32[0];
        v47.i64[1] = v45.i32[1];
        v48 = vsubq_f64(v128[0], vcvtq_f64_s64(v47));
        v47.i64[0] = v46.i32[0];
        v47.i64[1] = v46.i32[1];
        v49 = vcvtq_f64_s64(v47);
        *(*(a1 + 16) + 96) = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v128[1], v49)), vdivq_f64(v48, v49));
      }

      if (*(v18 + 108))
      {
        v50 = a4[7];
        v51.i64[0] = v50.i32[0];
        v51.i64[1] = v50.i32[1];
        __asm { FMOV            V1.2D, #-0.5 }

        v56 = vaddq_f64(vcvtq_f64_s64(v51), _Q1);
        *&_Q1.f64[0] = a4[5];
        v51.i64[0] = SLODWORD(_Q1.f64[0]);
        v51.i64[1] = SHIDWORD(_Q1.f64[0]);
        v57 = vcvtq_f64_s64(v51);
        __asm { FMOV            V2.2D, #0.5 }

        *(*(a1 + 16) + 19) = 5;
        *(*(a1 + 16) + 384) = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(_Q2, v57)), vdivq_f64(v56, v57));
      }

      v116 = a4;
      v59 = *(*(a1 + 656) + 8);
      v128[0].i64[0] = a1;
      v128[0].i64[1] = v59;
      memset(&v128[1], 0, 40);
      v128[2].i16[0] = 256;
      CA::OGL::Context::ClippedArray::start(v128);
      v120[0] = 0;
      v120[1] = 0;
LABEL_27:
      while (CA::OGL::Context::ClippedArray::next_rect(v128, v120))
      {
        v60 = *(v18 + 6);
        if (*(v18 + 7) != v60)
        {
          v61 = 0;
          v62 = 0;
          while (1)
          {
            v63 = (v60 + v61);
            v64 = *(v18 + 3);
            v65 = v64 + 32 * *v63;
            v66 = (v64 + 32 * v63[1]);
            v67 = (v64 + 32 * v63[2]);
            v68 = (v64 + 32 * v63[3]);
            v70 = *v65;
            v69 = *(v65 + 4);
            v72 = v66->f32[0];
            v71 = v66->f32[1];
            v73 = v67->f32[0];
            v74 = v67->f32[1];
            v75 = v68->f32[0];
            v76 = v68->f32[1];
            v77 = 6;
            if (!*(a1 + 108))
            {
              v77 = 4;
            }

            v78 = *(a1 + 144);
            if ((v78 + 4) > *(a1 + 152) || (v79 = *(a1 + 128)) != 0 && *(a1 + 120) + v77 > v79)
            {
              *(a1 + 1384) |= 0x20u;
              CA::OGL::Context::array_flush(a1);
              v78 = 0;
              *(a1 + 112) = a1 + 1386;
              *(a1 + 120) = xmmword_183E20E50;
            }

            v80 = v66[2];
            v81 = v67[2];
            *&v82 = *(v65 + 16);
            v83 = v68[2];
            v84 = vsub_f32(vadd_f32(*&v82, v81), vadd_f32(v80, v83));
            if (fabsf(v84.f32[0]) >= 0.000001 || fabsf(v84.f32[1]) >= 0.000001)
            {
              DWORD2(v82) = *(v65 + 24);
              HIDWORD(v82) = 1.0;
              v89 = vsub_f32(__PAIR64__(v80.u32[1], v83.u32[0]), v81);
              v90.i32[0] = v66[2];
              v90.i32[1] = HIDWORD(*&v68[2]);
              v91 = vsub_f32(v90, v81);
              v92 = vrev64_s32(v91);
              v93 = vmla_f32(vneg_f32(vmul_f32(v89, vrev64_s32(v84))), v92, v84);
              v92.i32[1] = v89.i32[1];
              v94 = vmul_f32(v92, vzip1_s32(v91, v89));
              v95 = vmul_n_f32(v93, 1.0 / vsub_f32(v94, vdup_lane_s32(v94, 1)).f32[0]);
              __asm { FMOV            V5.2S, #1.0 }

              v97 = vadd_f32(v95, _D5);
              *&v98 = vmul_n_f32(v80, v97.f32[0]);
              *(&v98 + 2) = v66[3].f32[0] * v97.f32[0];
              HIDWORD(v98) = v97.i32[0];
              v99 = vext_s8(v95, v83, 4uLL);
              v92.f32[0] = vadd_f32(v97, v99).f32[0];
              v92.i32[1] = vmul_f32(v97, v99).i32[1];
              v99.f32[0] = v67[3].f32[0] * v92.f32[0];
              *v129 = vmul_n_f32(v81, v92.f32[0]);
              *&v129[8] = v99.i32[0];
              *&v129[12] = v92;
              v100.i32[0] = vdup_lane_s32(v83, 1).u32[0];
              v100.i32[1] = v68[3].i32[0];
              *&v129[28] = v97.i32[1];
              *&v129[20] = vmul_lane_f32(v100, v97, 1);
              v101 = (*(a1 + 136) + 48 * v78);
              *(a1 + 144) = v78 + 4;
              v102 = *v129;
              v103 = *&v129[16];
              *v101 = v82;
              v101[3] = v98;
              v101[6] = v102;
              v101[9] = v103;
            }

            else
            {
              v85 = (*(a1 + 136) + 48 * v78);
              *(a1 + 144) = v78 + 4;
              v86 = *v66[2].f32;
              v87 = *v67[2].f32;
              v88 = *v68[2].f32;
              *v85 = *(v65 + 16);
              v85[3] = v86;
              v85[6] = v87;
              v85[9] = v88;
            }

            if (*(a1 + 112))
            {
              CA::OGL::Context::array_indices(a1, v78);
            }

            if (!a7)
            {
              goto LABEL_48;
            }

            v104 = *(v117 + 24);
            v105 = v104[1];
            v106 = v104[4];
            if (fabs(v105) >= 0.000001 || fabs(v106) >= 0.000001)
            {
              v108 = v105 < 0.0;
              v111 = 1.0 - v69;
              v112 = 1.0 - v71;
              v113 = 1.0 - v74;
              v114 = 1.0 - v76;
              v69 = v70;
              v71 = v72;
              v74 = v73;
              v76 = v75;
              v75 = v114;
              v73 = v113;
              v72 = v112;
              v70 = v111;
              if (v106 > 0.0)
              {
LABEL_53:
                v70 = 1.0 - v70;
                v72 = 1.0 - v72;
                v73 = 1.0 - v73;
                v75 = 1.0 - v75;
                if (!v108)
                {
                  goto LABEL_48;
                }

LABEL_47:
                v69 = 1.0 - v69;
                v71 = 1.0 - v71;
                v74 = 1.0 - v74;
                v76 = 1.0 - v76;
                goto LABEL_48;
              }
            }

            else
            {
              v107 = *v104;
              v108 = v104[5] < 0.0;
              if (v107 < 0.0)
              {
                goto LABEL_53;
              }
            }

            if (v108)
            {
              goto LABEL_47;
            }

LABEL_48:
            v109 = *(a1 + 136) + 48 * *(a1 + 144);
            *(v109 - 176) = v70;
            *(v109 - 172) = v69;
            *(v109 - 128) = v72;
            *(v109 - 124) = v71;
            *(v109 - 80) = v73;
            *(v109 - 76) = v74;
            *(v109 - 32) = v75;
            *(v109 - 28) = v76;
            if (v21 != 0x3C003C003C003C00)
            {
              v110 = *(a1 + 136) + 48 * *(a1 + 144);
              *(v110 - 160) = v21;
              *(v110 - 112) = v21;
              *(v110 - 64) = v21;
              *(v110 - 16) = v21;
            }

            ++v62;
            v60 = *(v18 + 6);
            v61 += 16;
            if (v62 >= (*(v18 + 7) - v60) >> 4)
            {
              goto LABEL_27;
            }
          }
        }
      }

      *(*(a1 + 16) + 497) &= ~8u;
      *(*(a1 + 16) + 497) &= ~1u;
      CA::OGL::Context::unbind_surface(a1, v116, 0);
      *(*(a1 + 16) + 16) = 0;
      *(*(a1 + 16) + 19) = 0;
      *(a1 + 1368) = 0;
      ++*(a1 + 664);
    }

    else
    {
      CA::OGL::fill_surface_mesh_3d(a1, v17, a3, a4, a5, a6, a7, a8, a9);
    }

    if (atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
    {
      v115 = *(*v18 + 16);

      v115(v18);
    }
  }
}

void CA::Render::TileCache::image_deleted(CA::Render::TileCache *this, CA::Render::Object *a2, void *a3, void *a4)
{
  os_unfair_lock_lock(a2 + 10);
  v6 = x_hash_table_remove(*(a2 + 2), this);
  if (v6)
  {
    *(a2 + 3) = x_list_prepend(*(a2 + 3), v6);
  }

  os_unfair_lock_unlock(a2 + 10);
}

void CA::Render::free_entry(uint64_t a1, void *a2, void *a3)
{
  CA::Render::tile_cache_entry_release_images(a3, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v4 = malloc_zone;

  malloc_zone_free(v4, a2);
}

void *CA::Render::tile_cache_entry_release_images(void *result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result[1];
    if (v4)
    {
      result = v4(*result);
      v3 = *(a2 + 16);
    }

    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*v3 + 16))(v3);
    }

    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t CA::Render::TileCache::collect_entry(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = *a3;
  v4 = *(a2 + 24);
  if (v4 <= a3[1])
  {
    *(*&v3 + 24) = x_list_prepend(*(*&v3 + 24), a2);
    return 1;
  }

  else
  {
    result = 0;
    if (v4 < *(*&v3 + 32))
    {
      *(*&v3 + 32) = v4;
    }
  }

  return result;
}

void *CA::Render::TileCache::get_image(CA::Render::TileCache *this, CA::Render::Image *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  v8 = vcvtpd_u64_f64(a5 + a3);
  v45[1] = *MEMORY[0x1E69E9840];
  v9 = vcvtpd_u64_f64(a6 + a4);
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    return 0;
  }

  v14 = *(a2 + 168);
  if (v14 > 0xA || ((1 << v14) & 0x70F) == 0)
  {
    return 0;
  }

  v11 = 0;
  if (v8 <= 0x800 && v9 <= 0x800)
  {
    v17 = *(a2 + 4);
    v16 = *(a2 + 5);
    if (v17 <= v8 || v16 <= v9)
    {
      return 0;
    }

    os_unfair_lock_lock(this + 10);
    v24 = x_hash_table_lookup(*(this + 2), a2, 0);
    if (!v24)
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v24 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x40uLL, 0x10A00404DEA72F2uLL);
      hash_table_modify(*(this + 2), a2, v24, 0);
    }

    os_unfair_lock_unlock(this + 10);
    v25 = *(v24 + 24);
    if (v25 < a7)
    {
      *(v24 + 24) = a7;
      v25 = a7;
    }

    if (v25 < *(this + 4))
    {
      *(this + 4) = v25;
    }

    v11 = *(v24 + 16);
    if (!v11 || vabdd_f64(*(v24 + 48), a5) >= 0.001 || vabdd_f64(*(v24 + 56), a6) >= 0.001 || vabdd_f64(*(v24 + 32), a3) >= 0.001 || vabdd_f64(*(v24 + 40), a4) >= 0.001)
    {
      v26 = *(a2 + 14);
      v27 = *(a2 + 169);
      v28 = *(a2 + 22);
      if (v27 != 1)
      {
        v29 = v17 >> 1;
        if (v17 >> 1 >= v8)
        {
          v30 = v16 >> 1;
          if (v16 >> 1 >= v9)
          {
            v31 = v27 - 2;
            v32 = (a2 + 184);
            do
            {
              v17 = v29;
              v33 = v16;
              v16 = v30;
              v26 += v28 * v33;
              v29 = v17 >> 1;
              if (v17 <= 1)
              {
                v29 = 1;
              }

              v30 >>= 1;
              if (v16 <= 1)
              {
                v30 = 1;
              }

              v34 = *v32++;
              v28 = v34;
              if (!v31)
              {
                break;
              }

              if (v29 < v8)
              {
                break;
              }

              --v31;
            }

            while (v30 >= v9);
          }
        }
      }

      v44 = 0;
      if (v11 && ((v35 = *(this + 1)) == 0 || (v35(*this), (v11 = *(v24 + 16)) != 0)) && *(v11 + 4) == v17 && *(v11 + 5) == v16)
      {
        v36 = v16;
      }

      else
      {
        CA::Render::tile_cache_entry_release_images(this, v24);
        v37 = CA::Render::format_rowbytes(v14, v17);
        v45[0] = v37;
        v36 = v16;
        if (is_mul_ok(v37, v16))
        {
          v38 = (v37 * v16);
        }

        else
        {
          v38 = 0;
        }

        v39 = CA::Render::aligned_malloc(v38, &v44, 0);
        if (!v39)
        {
          return 0;
        }

        v11 = CA::Render::Image::new_image(v14, v17, v16, 1u, *(a2 + 7), v39, v45, CA::Render::aligned_free, v44, v44);
        *(v24 + 16) = v11;
      }

      v40 = v11[14];
      v45[0] = v11[22];
      v41 = (v40 + v45[0] * (v16 - v9));
      CA::downsample_image(v14, v26, v28, v17, v36, v41, v45[0], 4, a3, a4, a5, a6, v43);
      *(v24 + 32) = a3;
      *(v24 + 40) = a4;
      *(v24 + 48) = a5;
      *(v24 + 56) = a6;
      if (v14 > 0x25)
      {
        v42 = 0;
      }

      else
      {
        v42 = dword_183E22690[v14];
      }

      if (v16 > v9)
      {
        CGBlt_copyBytes();
      }

      if (v17 > v8)
      {
        CGBlt_copyBytes();
        if (v16 > v9)
        {
          *(v41 + v42 * v8 - v45[0]) = *(v41 + v42 * v8 - v42);
        }
      }

      atomic_fetch_add((*(v24 + 16) + 36), 1u);
      return *(v24 + 16);
    }
  }

  return v11;
}

void sub_183DF9A0C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 16))(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZL23mode_dictionary_classesv_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  result = [v0 initWithObjects:{v1, v2, objc_opt_class(), 0}];
  mode_dictionary_classes(void)::set = result;
  return result;
}

__CFDictionary *reload_mode(CFDictionaryRef theDict)
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  CA::WindowServer::Display::Mode::Mode(v2, theDict);
  return CA::WindowServer::Display::Mode::create_dictionary_representation(v2);
}

void ___ZL17framework_versionv_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  framework_version(void)::version = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "objectForInfoDictionaryKey:", @"CFBundleVersion"}];

  objc_autoreleasePoolPop(v0);
}

void sub_183DFBBB0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x183DFBB04);
  }

  _Unwind_Resume(a1);
}

void cancelTimer(const void *a1, const void *a2, void *a3)
{
  v3 = *(a2 + 5);
  if (v3)
  {
    [v3 invalidate];
    *(a2 + 5) = 0;

    *(a2 + 6) = 0;
  }
}

NSObject *CACreateQueueWithWorkloop(const char *a1)
{
  inactive = dispatch_workloop_create_inactive(a1);
  dispatch_set_qos_class_fallback();
  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(inactive);
  return inactive;
}

NSObject *__CAGetRootQueue_block_invoke()
{
  result = CACreateQueueWithWorkloop("com.apple.coreanimation.workloop_queue");
  CA::_root_queue = result;
  return result;
}

void CA::CG::ImageDelegate::draw(CA::CG::ImageDelegate *this, CGContext *a2)
{
  CGContextSetCompositeOperation();
  CGContextSetInterpolationQuality(a2, *(this + 18));
  LODWORD(v4) = *(this + 6);
  LODWORD(v5) = *(this + 7);
  v6 = v4;
  v7 = v5;
  if ((*(this + 76) & 1) != 0 || CGImageIsMask(*(this + 8)))
  {
    CGContextSetRGBFillColor(a2, 1.0, 1.0, 1.0, 1.0);
    v18.origin.x = 0.0;
    v18.origin.y = 0.0;
    v18.size.width = v6;
    v18.size.height = v7;
    CGContextClipToMask(a2, v18, *(this + 8));
    v8 = 0;
    v9 = 0;
    v10 = v6;
    v11 = v7;

    CGContextFillRect(a2, *&v8);
  }

  else
  {
    v12 = *(this + 8);
    v13 = 0;
    v14 = 0;
    v15 = v6;
    v16 = v7;

    CGContextDrawImage(a2, *&v13, v12);
  }
}

uint64_t CA::CG::ImageRectDelegate::draw_image_rects(uint64_t this)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 1392))
  {
    v1 = this;
    v3 = 0u;
    v6 = 0u;
    v2 = *(*(*(this + 16) + 656) + 8);
    v4[0] = *(this + 16);
    v4[1] = v2;
    v5 = 0u;
    v4[2] = 0;
    WORD4(v5) = 0;
    CA::OGL::Context::ClippedArray::start(v4);
    while (1)
    {
      this = CA::OGL::Context::ClippedArray::next_rect(v4, &v3);
      if (!this)
      {
        break;
      }

      (*(**(v1 + 16) + 424))(*(v1 + 16), *(v1 + 1392), v1 + 112);
    }

    *(v1 + 1392) = 0;
  }

  return this;
}

double CA::CG::ImageRectDelegate::aa_quad(CA::CG::ImageRectDelegate *this, int32x2_t *a2, double *a3, __int32 a4)
{
  v8 = *(this + 348);
  if (v8 == 32)
  {
    CA::CG::ImageRectDelegate::draw_image_rects(this);
    v8 = *(this + 348);
  }

  v9 = (this + 40 * v8);
  *(this + 348) = v8 + 1;
  v9[14] = vcvt_f32_s32(*a2);
  v9[15] = vcvt_f32_s32(vadd_s32(a2[1], *a2));
  v9[16] = *a3;
  result = a3[1];
  *&v9[17] = result;
  v9[18].i32[0] = a4;
  return result;
}

double CA::CG::ImageRectDelegate::quad(CA::CG::ImageRectDelegate *this, int32x2_t *a2, double *a3)
{
  v6 = *(this + 348);
  if (v6 == 32)
  {
    CA::CG::ImageRectDelegate::draw_image_rects(this);
    v6 = *(this + 348);
  }

  v7 = (this + 40 * v6);
  *(this + 348) = v6 + 1;
  v7[14] = vcvt_f32_s32(*a2);
  v7[15] = vcvt_f32_s32(vadd_s32(a2[1], *a2));
  v7[16] = *a3;
  result = a3[1];
  *&v7[17] = result;
  v7[18].i32[0] = 0;
  return result;
}

void CA::CG::ImageRectDelegate::~ImageRectDelegate(CA::CG::ImageRectDelegate *this)
{
  CA::CG::ImageRectDelegate::~ImageRectDelegate(this);

  JUMPOUT(0x1865EA9A0);
}

{
  *this = &unk_1EF204EA8;
  CA::CG::ImageRectDelegate::draw_image_rects(this);
  (*(**(this + 2) + 560))(*(this + 2), 0, 1);
  v2 = *(this + 2);
  *(v2 + 1368) = 0;
  ++*(v2 + 664);
  *(*(v2 + 16) + 16) = *(this + 89);

  CA::CG::MosaicBitmapDelegate::~MosaicBitmapDelegate(this);
}

void CA::CG::DrawImage::draw_image(CA::CG::DrawImage *this, CA::CG::Renderer *a2, unsigned int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(this + 16);
  v6 = *(this + 17);
  v5 = *(this + 18);
  v9 = v6;
  v10 = v5;
  v8 = *(this + 19);
  v7 = *(this + 20);
  v11 = v8;
  v12 = v7;
  if (v8 < 0.0)
  {
    v9 = v8 + v6;
    v11 = -v8;
  }

  if (v7 < 0.0)
  {
    v10 = v7 + v5;
    v12 = -v7;
  }

  CA::CG::fill_image(a2, v4, &v9, a2 + 32, *(this + 25) & a3, (*(this + 25) >> 1) & 1, (*(this + 60) >> 8), *(this + 60), *(this + 14), 0);
}

void CA::CG::fill_image(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v205 = v12;
  v206 = v11;
  v13 = *&v10;
  v200 = v14;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v207 = v23;
  v259 = *MEMORY[0x1E69E9840];
  v216 = v21;
  Width = CGImageGetWidth(v21);
  Height = CGImageGetHeight(v22);
  Mask = CGImageGetMask();
  if (Mask)
  {
    v28 = Mask;
    v29 = CGImageGetWidth(Mask);
    v30 = CGImageGetHeight(v28);
    if (v30 > Height)
    {
      v31 = v30;
    }

    else
    {
      v31 = Height;
    }

    if (v30 > Height)
    {
      v32 = v29;
    }

    else
    {
      v32 = Width;
    }

    v33 = v29 > Width && v30 > Height;
    if (v29 > Width)
    {
      Height = v31;
    }

    else
    {
      Height = Height;
    }

    if (v29 > Width)
    {
      Width = v32;
    }
  }

  else
  {
    v33 = 0;
  }

  v204 = a10 != 0;
  v196 = Height;
  if (a10)
  {
    v34 = *a10;
  }

  else
  {
    *&v34 = 0;
    *(&v34 + 1) = __PAIR64__(Height, Width);
  }

  v215 = v34;
  v214 = 0uLL;
  v35 = DWORD2(v34);
  v36 = HIDWORD(v34);
  v198 = v33;
  if (!v33)
  {
    v203 = v34;
    if (CGImageIsSubimage())
    {
      *&v215 = vadd_s32(*&v203, vmovn_s64(vcvtq_s64_f64(v214)));
      Width = CGImageGetWidth(v216);
      v204 = 1;
      v196 = CGImageGetHeight(v216);
    }
  }

  v212 = 0u;
  v213 = 0u;
  CA::CG::ImageFilter::ImageFilter(&v212, v35, v36, v20, v18, v206, 0, v27);
  v202 = v18;
  *&v203 = v20;
  if (v16)
  {
    v37 = v207;
    if ((*(v207 + 136) & 2) == 0)
    {
      goto LABEL_31;
    }

    if (fabs(v18->f64[1]) < 0.000001 && fabs(v18[1].f64[0]) < 0.000001)
    {
      v38 = 1;
      goto LABEL_32;
    }

    if (fabs(v18->f64[0]) < 0.000001)
    {
      v38 = fabs(v18[1].f64[1]) < 0.000001;
    }

    else
    {
LABEL_31:
      v38 = 0;
    }
  }

  else
  {
    v38 = 1;
    v37 = v207;
  }

LABEL_32:
  v39 = (v212 & 9) == 0 || v38;
  if (v39)
  {
    v40 = 0;
  }

  else
  {
    v40 = 255;
  }

  v199 = v40;
  v41 = v37[1];
  if (*(*(v41 + 16) + 14) != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) || (v42 = v216, (CGImageHasAlpha() & 1) != 0) || CGImageIsMask(v42) || CGImageGetMask() || CGImageGetMatte() || CGImageGetMaskingColors())
  {
    v43 = 0;
  }

  else
  {
    v43 = ((v212 & 9) == 0) | v39;
  }

  v44 = *(v41 + 16);
  v45 = *(v44 + 497);
  v197 = v43;
  if (v45)
  {
    v46 = *(v44 + 496);
    if (v46 != 3)
    {
      v43 = 0;
    }

    if (v46 >= 2)
    {
      v47 = v43;
    }

    else
    {
      v47 = 1;
    }

    v201 = v47;
  }

  else
  {
    v201 = 0;
  }

  CGImageGetContentHeadroom();
  v49 = v48;
  ColorSpace = CGImageGetColorSpace(v22);
  v51 = CA::OGL::Context::color_program_cache(v41);
  v52 = CA::ColorProgram::Cache::push_whippet_cache(v51, ColorSpace, v49, v13, v205, a9);
  Identifier = CGImageGetIdentifier();
  os_unfair_lock_lock(&CA::CG::AccelDataProvider::_table_lock);
  if (!CA::CG::AccelDataProvider::_table)
  {
    os_unfair_lock_unlock(&CA::CG::AccelDataProvider::_table_lock);
    goto LABEL_74;
  }

  v54 = x_hash_table_lookup(CA::CG::AccelDataProvider::_table, Identifier, 0);
  if (v54)
  {
    v55 = v54;
    atomic_fetch_add(&v54[3], 1u);
    os_unfair_lock_lock(v54 + 2);
    v56 = *&v55[4]._os_unfair_lock_opaque;
    if (!v56 || (*(v56 + 68) & 1) != 0 || (*(*v37 + 24))(v37))
    {
      os_unfair_lock_unlock(v55 + 2);
    }

    else
    {
      v133 = *&v55[4]._os_unfair_lock_opaque;
      while (1)
      {
        v134 = v133[2];
        if (!v134)
        {
          break;
        }

        v135 = v133[2];
        atomic_compare_exchange_strong(v133 + 2, &v135, v134 + 1);
        if (v135 == v134)
        {
          goto LABEL_230;
        }
      }

      v133 = 0;
LABEL_230:
      CA::CG::AccelDataProvider::wait_data(v55);
      os_unfair_lock_unlock(v55 + 2);
      if (v133)
      {
        v163 = (*(*v37[1] + 232))(v37[1], 4);
        if (v133[11] <= v163 && v133[12] <= v163)
        {
          (*(*v133 + 56))(&v227, v133);
          v57 = v227;
        }

        else
        {
          v57 = 0;
        }

        global_queue = dispatch_get_global_queue(17, 0);
        dispatch_async_f(global_queue, v133, CA::CG::AccelDataProvider::retain_texture(CA::CG::Renderer &)::$_0::__invoke);
LABEL_60:
        if (atomic_fetch_add(&v55[3], 0xFFFFFFFF) == 1)
        {
          (*(*&v55->_os_unfair_lock_opaque + 16))(v55);
        }

        os_unfair_lock_unlock(&CA::CG::AccelDataProvider::_table_lock);
        if (v57)
        {
          v258 = 0;
          v257 = 0u;
          v256 = 0u;
          v255 = 0u;
          v254 = 0u;
          v253 = 0u;
          v252 = 0u;
          v251 = 0u;
          v250 = 0u;
          v249 = 0u;
          v248 = 0u;
          v247 = 0u;
          v246 = 0u;
          v245 = 0u;
          v244 = 0u;
          v243 = 0u;
          v242 = 0u;
          v241 = 0u;
          v240 = 0u;
          v239 = 0u;
          v238 = 0u;
          v237 = 0u;
          v236 = 0u;
          v235 = 0u;
          v234 = 0u;
          v233 = 0u;
          v232 = 0u;
          v231 = 0u;
          v230 = 0u;
          v229 = 0u;
          v228 = 0u;
          v227 = 0u;
          v58 = v57[2].i32[0];
          v59 = v57[2].i32[1];
          v60 = (*(*v57 + 104))(v57);
          CA::OGL::ContentsGeometry::ContentsGeometry(&v227, v58, v59, v60, v203, &v215, v202->f64, v212, v199);
          v61 = v201;
          if (v201)
          {
            *(*(v41 + 16) + 497) &= ~1u;
          }

          v62 = CA::OGL::Context::bind_image(v41, 0, v57, DWORD1(v246), BYTE4(v212), BYTE5(v212), 0, &v227, *(&v212 + 2), (&v244 + 4), 0);
          v65 = v197;
          if (v62)
          {
            CA::OGL::ContentsGeometry::fill_and_unbind(&v227, v41, v62, BYTE4(v212), *(&v212 + 2));
          }

          if (v61)
          {
            *(*(v41 + 16) + 497) |= 1u;
          }

          CA::OGL::ContentsGeometry::fill_debug(&v227, v41, 0, v57, v65 & 1, v63, v64);
          if (!v52)
          {
            goto LABEL_225;
          }

LABEL_224:
          v162 = CA::OGL::Context::color_program_cache(v41);
          CA::ColorProgram::Cache::pop_whippet_cache(v162);
          goto LABEL_225;
        }

        goto LABEL_73;
      }
    }

    v57 = 0;
    goto LABEL_60;
  }

  os_unfair_lock_unlock(&CA::CG::AccelDataProvider::_table_lock);
LABEL_73:
  v35 = DWORD2(v215);
LABEL_74:
  v66 = BYTE4(v212);
  if (BYTE4(v212) <= 1u)
  {
    v68 = HIDWORD(v215);
    v194 = v35;
    v195 = HIDWORD(v215);
  }

  else
  {
    v67 = llround(*&v213 * v35);
    v68 = HIDWORD(v215);
    v69 = llround(*(&v213 + 1) * SHIDWORD(v215));
    if (v67 <= 1)
    {
      v70 = 1;
    }

    else
    {
      v70 = v67;
    }

    if (v69 <= 1)
    {
      v71 = 1;
    }

    else
    {
      v71 = v69;
    }

    v194 = v70;
    v195 = v71;
  }

  if ((CGImageGetBitmapInfo(v216) & 0x100) != 0)
  {
    IsWideGamutRGB = 1;
  }

  else
  {
    v72 = CGImageGetColorSpace(v216);
    IsWideGamutRGB = CGColorSpaceIsWideGamutRGB(v72);
  }

  v74 = *(v41 + 672);
  v205 = v52;
  if (v74 && ((*(v74 + 92) & 0x130) != 0 ? (v75 = IsWideGamutRGB) : (v75 = 0), v75))
  {
    v193 = 1;
    v76 = 4;
  }

  else
  {
    v77 = v37[1];
    if (v77)
    {
      v78 = *(v77 + 560);
    }

    else
    {
      v78 = 0;
    }

    Model = CGColorSpaceGetModel(v78);
    v193 = Model != kCGColorSpaceModelMonochrome;
    if (Model)
    {
      v76 = 2;
    }

    else
    {
      v76 = 1;
    }
  }

  if (CGImageGetProperty() != *MEMORY[0x1E695E4D0])
  {
    v80 = *MEMORY[0x1E695E4D0];
    if (CGImageGetProperty() != v80)
    {
      v81 = CA::OGL::Context::color_program_cache(v41);
      v82 = v207 + 192 * v76;
      if ((v195 + *(v82 + 1448) - 1) / *(v82 + 1448) * ((v194 + *(v82 + 1444) - 1) / *(v82 + 1444)) <= *(&CA::CG::Renderer::_max_mosaic_cells + v76) && (*(v81 + 84) & 1) == 0)
      {
        v83 = v82 + 1440;
        v84 = *(v41 + 16);
        v85 = *(v84 + 16) & 0xFFFFFF00FF00FF00;
        if (*(v84 + 8) == 0x3C003C003C003C00)
        {
          v86 = 1;
        }

        else
        {
          v86 = 3;
        }

        *(v84 + 16) = v86 | v85;
        *(v84 + 20) = HIDWORD(v85);
        v87 = v205;
        if ((*(v83 + 144) & 0x80000000) != 0)
        {
          v88 = BYTE5(v212);
          v89 = BYTE4(v212);
          if (v66 > 1)
          {
            v89 = 1;
          }

          *(v83 + 144) = 0;
          *(v83 + 148) = v89;
          *(v83 + 149) = v88;
          if (v201)
          {
            *(*(v41 + 16) + 497) &= ~1u;
          }

          v90 = CGImageGetIdentifier();
          if (((v66 < 2) & ~v204) != 0)
          {
            v93 = 0;
            v97 = 2;
            v96 = v194;
            v95 = v195;
          }

          else
          {
            MEMORY[0x1EEE9AC00](v90);
            v93 = &v186;
            v186 = &unk_1EF2051B0;
            v187 = v94;
            v188 = v215;
            v189 = v35;
            v96 = v194;
            v95 = v195;
            v190 = v68;
            v191 = v194;
            v192 = v195;
            v90 = 33 * (33 * (33 * (33 * (33 * (DWORD1(v215) + 33 * v215) + v35) + v68) + v194) + v195) + v94;
            v97 = 3;
          }

          v164 = 0;
          v165 = v200;
          if (v200)
          {
            v97 |= 0x100u;
          }

          v204 = v97;
          v91.i64[0] = &v209;
          v92.i64[0] = v202;
          v166 = vdupq_lane_s64(vmvnq_s8(vceqq_s64(v91, v92)).i64[0], 0);
          v167 = vandq_s8(v202[1], v166);
          v168 = vandq_s8(*v202, v166);
          v170 = *(v203 + 16);
          v169 = *(v203 + 24);
          v211 = vmlaq_n_f64(vmlaq_n_f64(vandq_s8(v202[2], v166), v168, *v203), v167, v169 + *(v203 + 8));
          v171 = vmulq_n_f64(v168, v170 / v96);
          v172 = vmulq_n_f64(v167, -v169 / v95);
          v209 = v171;
          v210 = v172;
          v173 = v90;
          if (vabdd_f64(v171.f64[0], trunc(v172.f64[1])) < 0.000001 && fabs(v171.f64[1]) < 0.000001)
          {
            v164 = fabs(v172.f64[0]) < 0.000001;
          }

          v174 = (*(*v41 + 232))(v41, 9);
          v175 = !v193;
          if (!v174)
          {
            v175 = 1;
          }

          if ((v175 & 1) != 0 || (v176 = *(*(v41 + 16) + 496), v176 == 12) || (v176 - 1) > 0x18)
          {
            v222 = 0u;
            v223 = 0u;
            v220 = 0u;
            v221 = 0u;
            v218 = 0u;
            v219 = 0u;
            v217 = 0u;
            v180 = v22;
            v182 = v194;
            v181 = v195;
            CA::CG::ImageDelegate::ImageDelegate(&v217, v207, v41, v180, v194, v195, v206, v165, &v209, v164, &v227);
            CA::OGL::Mosaic::draw(v83, v41, v204, v173, v93, v182, v181, 1, &v217, v199);
            CA::CG::MosaicBitmapDelegate::~MosaicBitmapDelegate(&v217);
          }

          else
          {
            v177 = v22;
            v179 = v194;
            v178 = v195;
            CA::CG::ImageRectDelegate::ImageRectDelegate(&v217, v207, v41, v177, v194, v195, v206, v165, &v209, v164, &v227);
            CA::OGL::Mosaic::draw(v83, v41, v204, v173, v93, v179, v178, 1, &v217, v199);
            CA::CG::ImageRectDelegate::~ImageRectDelegate(&v217);
          }

          v183 = v201;
          if (v93)
          {
            (**v93)(v93);
          }

          if (v183)
          {
            *(*(v41 + 16) + 497) |= 1u;
          }

          v184 = *(v83 + 160);
          if (v184)
          {
            (*(*v41 + 560))(v41, v184, 0);
            *(v83 + 160) = 0;
            *(v83 + 152) = -1;
          }

          *(v83 + 144) = -1;
          *(v83 + 112) = 0;
        }

        v57 = 0;
        *(*(v41 + 16) + 16) = 0;
        if (v87)
        {
          goto LABEL_224;
        }

LABEL_225:
        if (!v57)
        {
          return;
        }

        goto LABEL_226;
      }
    }
  }

  if (v200)
  {
    v98 = 158;
  }

  else
  {
    v98 = 156;
  }

  if (v198)
  {
    v99 = (v98 | 0x40);
  }

  else
  {
    v99 = v98;
  }

  v100 = *(v41 + 648);
  v101 = 1.0;
  if (CGImageGetCachingFlags() == 1)
  {
    v102 = 0.1;
  }

  else
  {
    v102 = 1.0;
  }

  v103 = (*(*v41 + 232))(v41, 4);
  v104 = v204;
  if (v68 * v35 <= 0x100000)
  {
    v105 = 1;
  }

  else
  {
    v105 = v204;
  }

  if ((v105 & 1) == 0)
  {
    v106 = CGImageGetColorSpace(v216);
    if (CGColorSpaceGetModel(v106) >= kCGColorSpaceModelCMYK)
    {
      v107 = v202;
      v108 = vmulq_f64(v107[1], v107[1]);
      v109 = vaddvq_f64(vmulq_f64(*v107, *v107));
      v110 = vaddq_f64(vdupq_laneq_s64(v108, 1), v108).f64[0];
      v111 = v109 != 1.0;
      if (v110 != 1.0)
      {
        v111 = 1;
      }

      v112 = sqrt(v109);
      v113 = sqrt(v110);
      if (v111)
      {
        v110 = v113;
        v109 = v112;
      }

      v101 = fmin(fmax(*(v203 + 16) * v109 / v35, *(v203 + 24) * v110 / v68), 1.0);
    }
  }

  v114 = v102 + v100;
  if (v101 * v101 * v35 * v68 > (v103 * v103))
  {
    v115 = v35 <= v68 ? v68 : v35;
    v116 = v103 / v115;
    v101 = v116;
    if (v116 * v115 > v103)
    {
      v101 = floorf(v116 * 10000.0) * 0.0001;
    }
  }

  v117 = CA::Render::copy_image(v216, *(v41 + 560), v99, v114, v101);
  v57 = v117;
  if (!v117)
  {
    if (!v205)
    {
      goto LABEL_225;
    }

    goto LABEL_224;
  }

  v118 = v117[1].i32[1];
  v117[1].i32[1] = v118 & 0xFFF7FFFF;
  v119 = v117[2];
  v209 = 0u;
  v210 = 0u;
  v120 = v119.i32[0];
  v121 = v119.i32[1];
  if (*&v119 == __PAIR64__(v196, Width))
  {
LABEL_146:
    if (v118 == 23)
    {
      v127 = v104;
    }

    else
    {
      v127 = 0;
    }

    if (v127 != 1)
    {
      goto LABEL_202;
    }

    if (BYTE4(v212) != 2 && BYTE4(v212) != 11)
    {
      v136 = v120 <= v103 && v121 <= v103;
      v137 = !v136 && SDWORD2(v215) <= v103;
      if (!v137 || v68 > v103)
      {
        goto LABEL_202;
      }
    }

    v128 = (*(*v41 + 248))(v41, v117[21].u8[0], DWORD2(v215), v68);
    v129 = v128;
    v130 = v57[1].i32[1];
    if ((v130 & 0x2000000) != 0)
    {
      *&v229 = 0;
      *&v227 = v57;
      *(&v227 + 1) = v128;
      v228 = v215;
      *(&v229 + 1) = 0x7FF0000000000000;
      os_unfair_lock_lock(&CA::Render::Image::_subimage_table_lock);
      if (CA::Render::Image::_subimage_table)
      {
        *&v217 = 0;
        v131 = x_hash_table_lookup(CA::Render::Image::_subimage_table, &v227, &v217);
        if (v131)
        {
          v132 = v131;
          if (v114 > 0.0)
          {
            if (*(v217 + 40) < v114)
            {
              *(v217 + 40) = v114;
            }

            if (*&CA::Render::Image::_subimage_deadline > v114)
            {
              CA::Render::Image::_subimage_deadline = *&v114;
            }
          }

          goto LABEL_197;
        }
      }

      os_unfair_lock_unlock(&CA::Render::Image::_subimage_table_lock);
      v130 = v57[1].i32[1];
    }

    v57[1].i32[1] = v130 | 0x2000000;
    v140 = CA::Render::Image::copy_subimage(v57, 0, &v215, v129, 0);
    if (!v140)
    {
      goto LABEL_202;
    }

    v132 = v140;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v141 = malloc_type_zone_malloc(malloc_zone, 0x30uLL, 0x165299FDuLL);
    v142 = v141;
    if (v141)
    {
      *v141 = v57;
      *(v141 + 1) = v129;
      *(v141 + 1) = v215;
      *(v141 + 8) = 0;
      v141[5] = INFINITY;
    }

    os_unfair_lock_lock(&CA::Render::Image::_subimage_table_lock);
    if (v114 > 0.0)
    {
      v142[5] = v114;
      if (*&CA::Render::Image::_subimage_deadline > v114)
      {
        CA::Render::Image::_subimage_deadline = *&v114;
      }
    }

    v143 = CA::Render::Image::_subimage_table;
    if (!CA::Render::Image::_subimage_table)
    {
      v143 = x_hash_table_new_(CA::Render::Image::SubimageKey::hash, CA::Render::Image::SubimageKey::compare, 0, 0, 0, 0);
      CA::Render::Image::_subimage_table = v143;
    }

    if ((hash_table_modify(v143, v142, v132, 0) & 1) == 0)
    {
      if (atomic_fetch_add(&v132[1], 0xFFFFFFFF) == 1)
      {
        (*(*v132 + 16))(v132);
      }

      v132 = x_hash_table_lookup(CA::Render::Image::_subimage_table, v142, 0);
      if (v142)
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        malloc_zone_free(malloc_zone, v142);
      }

      if (!v132)
      {
LABEL_199:
        os_unfair_lock_unlock(&CA::Render::Image::_subimage_table_lock);
        if (v132)
        {
          *&v215 = 0;
          v120 = v132[2].i32[0];
          v121 = v132[2].i32[1];
          if (atomic_fetch_add(&v57[1], 0xFFFFFFFF) == 1)
          {
            (*(*v57 + 16))(v57);
          }

LABEL_203:
          v258 = 0;
          v257 = 0u;
          v256 = 0u;
          v255 = 0u;
          v254 = 0u;
          v253 = 0u;
          v252 = 0u;
          v251 = 0u;
          v250 = 0u;
          v249 = 0u;
          v248 = 0u;
          v247 = 0u;
          v246 = 0u;
          v245 = 0u;
          v244 = 0u;
          v243 = 0u;
          v242 = 0u;
          v241 = 0u;
          v240 = 0u;
          v239 = 0u;
          v238 = 0u;
          v237 = 0u;
          v236 = 0u;
          v235 = 0u;
          v234 = 0u;
          v233 = 0u;
          v232 = 0u;
          v231 = 0u;
          v230 = 0u;
          v229 = 0u;
          v228 = 0u;
          v227 = 0u;
          v145 = (*(*v132 + 104))(v132);
          CA::OGL::ContentsGeometry::ContentsGeometry(&v227, v120, v121, v145, v203, &v215, v202->f64, v212, v199);
          v146 = *(v41 + 16);
          v147 = *(v146 + 497);
          if (v147)
          {
            DWORD1(v246) |= 0x100u;
          }

          v148 = v205;
          v149 = v201;
          if (v201)
          {
            *(v146 + 497) = v147 & 0xFE;
          }

          v152 = (*(*v132 + 216))(v132);
          v153 = v152;
          if (v152 || (v132[1].i8[4] == 23 && BYTE4(v212) == 11 && (CA::OGL::ContentsGeometry::scale(&v227, v150, v151), v157 < 0.75) || (*(*v41 + 608))(v41, v132)) && (LODWORD(v217) = 0, v208 = 0, ((*(*v132 + 232))(v132, &v217, &v208) & 1) != 0) && (v158 = (*(*v132 + 104))(v132), v159 = (*(*v41 + 248))(v41, v158, v217, v208), (v153 = (*(*v132 + 224))(v132, v159, (DWORD1(v246) >> 11) & 1)) != 0))
          {
            v226 = 0;
            v224 = 0u;
            v225 = 0u;
            v222 = 0u;
            v223 = 0u;
            v220 = 0u;
            v221 = 0u;
            v218 = 0u;
            v219 = 0u;
            v217 = 0u;
            CA::OGL::TiledImageGeometry::TiledImageGeometry(&v217, v153, v41, SDWORD1(v246), SBYTE4(v212), SBYTE5(v212), &v227, *(&v212 + 2));
            CA::OGL::TiledImageGeometry::draw_tiles(&v217, 0, 1);
            v156 = v197;
            if (!v152 && atomic_fetch_add(v153 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v153 + 16))(v153);
            }
          }

          else
          {
            v160 = CA::OGL::Context::bind_image(v41, 0, v132, DWORD1(v246), BYTE4(v212), BYTE5(v212), 0, &v227, *(&v212 + 2), (&v244 + 4), 0);
            v156 = v197;
            if (v160)
            {
              CA::OGL::ContentsGeometry::fill_and_unbind(&v227, v41, v160, BYTE4(v212), *(&v212 + 2));
            }
          }

          if (v149)
          {
            *(*(v41 + 16) + 497) |= 1u;
          }

          v161 = CA::OGL::ContentsGeometry::fill_debug(&v227, v41, 0, v132, v156 & 1, v154, v155);
          if (atomic_fetch_add(&v132[1], 0xFFFFFFFF) == 1)
          {
            (*(*v132 + 16))(v132, v161);
          }

          v57 = 0;
          if (v148)
          {
            goto LABEL_224;
          }

          goto LABEL_225;
        }

LABEL_202:
        v132 = v57;
        goto LABEL_203;
      }
    }

LABEL_197:
    v144 = &v132[1];
    if (!atomic_fetch_add(&v132[1], 1u))
    {
      v132 = 0;
      atomic_fetch_add(v144, 0xFFFFFFFF);
    }

    goto LABEL_199;
  }

  if (!v104)
  {
    v123 = vsub_s32(vmin_s32(vadd_s32(*(&v215 + 8), *&v215), v119), *&v215);
    goto LABEL_145;
  }

  v122 = vcgt_s32(v119, *&v215);
  if (v122.i32[0] & v122.i32[1])
  {
    v123 = vsub_s32(vmin_s32(vadd_s32(*(&v215 + 8), *&v215), v119), *&v215);
    v124 = *(v203 + 16);
    v125.i64[0] = v123.i32[0];
    v125.i64[1] = v123.i32[1];
    v126 = vmulq_f64(v124, vcvtq_f64_s64(v125));
    v125.i64[0] = SDWORD2(v215);
    v125.i64[1] = SHIDWORD(v215);
    v210 = vdivq_f64(v126, vcvtq_f64_s64(v125));
    v124.f64[0] = COERCE_DOUBLE(*&vsubq_f64(v124, v210).f64[1]) + *(v203 + 8);
    v209.f64[0] = *v203;
    v209.f64[1] = v124.f64[0];
    *&v203 = &v209;
LABEL_145:
    *(&v215 + 1) = v123;
    v68 = v123.u32[1];
    goto LABEL_146;
  }

LABEL_226:
  if (atomic_fetch_add(&v57[1], 0xFFFFFFFF) == 1)
  {
    (*(*v57 + 16))(v57);
  }
}

uint64_t CA::CG::ImageFilter::ImageFilter(uint64_t a1, unsigned int a2, unsigned int a3, double *a4, float64x2_t *a5, int a6, int8x16_t a7, int8x16_t a8)
{
  v32[4] = *MEMORY[0x1E69E9840];
  *a7.i64 = a2;
  *a8.i64 = a3;
  v32[0] = 0.0;
  v32[1] = 0.0;
  v32[2] = a2;
  v32[3] = a3;
  v11 = *a5;
  v10 = a5[1];
  v29 = *a5;
  v30 = v10;
  v12 = a5[2];
  v31 = v12;
  v13 = a4[1];
  if (*a4 != 0.0 || v13 != 0.0)
  {
    v12 = vmlaq_n_f64(vmlaq_n_f64(v12, v11, *a4), v10, v13);
    v31 = v12;
  }

  v12.f64[0] = a4[2];
  v14 = a4[3];
  if (v12.f64[0] == *a7.i64 && v14 == *a8.i64)
  {
    v27 = v11;
    v28 = v10;
  }

  else
  {
    *a7.i64 = v12.f64[0] / *a7.i64;
    *a8.i64 = v14 / *a8.i64;
    v27 = vmulq_n_f64(v11, *a7.i64);
    v28 = vmulq_n_f64(v10, *a8.i64);
    v29 = v27;
    v30 = v28;
  }

  v16 = CA::CG::mat2_filter_bits(&v29, a7, a8, v12);
  v17 = CA::CG::rect_filter_bits(v32, &v29, v16);
  *a1 = v17;
  *(a1 + 8) = 0;
  if ((v17 & 0x3F) == 0)
  {
    goto LABEL_16;
  }

  if (a6 > 2)
  {
    v18 = v27;
    v19 = v28;
    if ((a6 - 3) >= 2)
    {
      return a1;
    }
  }

  else
  {
    v18 = v27;
    v19 = v28;
    if (a6)
    {
      if (a6 != 1)
      {
        if (a6 == 2)
        {
          *(a1 + 4) = 257;
        }

        return a1;
      }

LABEL_16:
      *(a1 + 4) = 0;
      return a1;
    }
  }

  *(a1 + 4) = 257;
  if ((v17 & 0x12) != 0)
  {
    v21 = vaddvq_f64(vmulq_f64(v18, v18));
    v22 = vmulq_f64(v19, v19);
    v23 = vaddq_f64(vdupq_laneq_s64(v22, 1), v22).f64[0];
    v24 = v21 != 1.0;
    if (v23 != 1.0)
    {
      v24 = 1;
    }

    v25 = sqrt(v21);
    v26 = sqrt(v23);
    if (v24)
    {
      v23 = v26;
      v21 = v25;
    }

    *(a1 + 16) = v21;
    *(a1 + 24) = v23;
    if (v21 >= v23)
    {
      v21 = v23;
    }

    if (a6 == 3)
    {
      if (v21 < 0.75)
      {
        *(a1 + 4) = 11;
      }
    }

    else if (v21 < 0.75)
    {
      *(a1 + 4) = 2;
      *(a1 + 8) = -1102263091;
    }
  }

  return a1;
}

uint64_t CA::CG::ImageRectDelegate::ImageRectDelegate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, char a8, uint64_t a9, char a10, uint64_t a11)
{
  v13 = CA::CG::ImageDelegate::ImageDelegate(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  *v13 = &unk_1EF204EA8;
  *(v13 + 1392) = 0;
  v14 = v13 + 1400;
  *(*(a3 + 16) + 16) = 112;
  v15 = CA::Transform::operator=(v13 + 1400, &CA::identity_transform);
  v15.n128_u64[0] = *(a9 + 32);
  CA::Transform::translate(v16, v15, *(a9 + 40), 0.0);
  *(a3 + 1368) = v14;
  ++*(a3 + 664);
  v17 = *(*(a3 + 16) + 8);
  v18 = (*(a3 + 1384) >> 12) & 7;
  v19 = HIWORD(v17);
  if (v18 == 2)
  {
    goto LABEL_4;
  }

  if (v18 == 1)
  {
    v17 = v17 & 0xFFFFFFFFFFFF0000 | v19;
LABEL_4:
    v17 = v17 & 0xFFFF00000000FFFFLL | (v19 << 16) | (v19 << 32);
  }

  v20 = vcvtq_f32_f16(v17);
  v23.val[1] = vcvt_f32_f64(*(a9 + 16));
  v23.val[0] = vcvt_f32_f64(*a9);
  v21 = (a3 + 160);
  vst2_f32(v21, v23);
  *(a3 + 240) = v20;
  return a1;
}

uint64_t CA::CG::ImageDelegate::ImageDelegate(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, char a8, uint64_t a9, char a10, uint64_t a11)
{
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(a3 + 144) = 0;
  *(a3 + 112) = a3 + 1386;
  *(a3 + 120) = xmmword_183E20E50;
  *(result + 24) = a5;
  *(result + 28) = a6;
  *(result + 32) = a11;
  *(result + 40) = 0x2000;
  *(result + 48) = 0;
  *result = &unk_1EF205160;
  *(result + 64) = a4;
  *(result + 72) = a7;
  *(result + 76) = a8;
  *(result + 80) = a9;
  *(result + 88) = a10;
  *(result + 89) = *(*(a3 + 16) + 16);
  v11 = *a9;
  v11.f64[1] = *(a9 + 24);
  v12 = vmlaq_f64(vmulq_f64(v11, v11), *(a9 + 8), *(a9 + 8));
  if (v12.f64[0] == 1.0 && v12.f64[1] == 1.0)
  {
    __asm { FMOV            V0.2D, #2.0 }
  }

  else
  {
    __asm { FMOV            V1.2D, #2.0 }

    _Q0 = vdivq_f64(_Q1, vsqrtq_f64(v12));
  }

  *(result + 96) = _Q0;
  return result;
}

uint64_t CA::CG::ImageDelegate::flush(CA::CG::MosaicDelegate **this)
{
  v2 = CA::CG::MosaicDelegate::draw_array(this[2]);
  result = (*(*this[2] + 560))(this[2], 0, 1, v2);
  *(*(this[2] + 2) + 16) = *(this + 89);
  return result;
}

float32x4_t *CA::CG::ImageDelegate::aa_quad(CA::CG::ImageDelegate *this, const CA::Bounds *a2, float *a3, char a4)
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = *(this + 2);
  v9 = v8[18];
  v10 = v9 + 16;
  if ((v9 + 16) > v8[19] || (v11 = v8[16]) != 0 && v8[15] + 54 > v11 || *(v8[2] + 16) == *(this + 89))
  {
    CA::CG::MosaicDelegate::draw_array(*(this + 2));
    v9 = v8[18];
    v10 = v9 + 16;
  }

  v12 = v8[17];
  v8[18] = v10;
  v13 = -4;
  v14 = &CA::CG::ImageDelegate::aa_quad(CA::Bounds const&,float *,unsigned int)const::nine_part_indices;
  v15 = vdup_n_s16(v9);
  do
  {
    v16 = *v14++;
    *v54 = vadd_s16(v16, v15);
    CA::OGL::Context::array_indices_vec(v8, v54);
    v13 += 4;
  }

  while (v13 < 0x20);
  v17 = (v12 + 48 * v9);
  v47 = 0;
  *(v8[2] + 16) = 5;
  (*(*v8 + 496))(v8, 1, 0, 0, &v47);
  v18 = 0;
  v20 = *(a2 + 2);
  v19 = *(a2 + 3);
  v21 = vcvtd_n_f64_s32(v20, 1uLL);
  if (*(this + 12) < v21)
  {
    v21 = *(this + 12);
  }

  v22 = v21;
  v23 = vcvtd_n_f64_s32(v19, 1uLL);
  if (*(this + 13) < v23)
  {
    v23 = *(this + 13);
  }

  v24 = *(a2 + 1);
  v25 = *a2;
  v26 = (*a2 + v20);
  v27 = v23;
  v53[0] = v25;
  v53[1] = v22 + v25;
  v53[2] = v26 - v22;
  v53[3] = v26;
  v52[0] = v24;
  v52[1] = v24 + v27;
  v52[2] = (v24 + v19) - v27;
  v52[3] = (v24 + v19);
  v28 = v22 / v20;
  v29 = a3[1];
  v30 = a3[2];
  v31 = a3[3];
  v32 = v30 - *a3;
  v33 = *a3 + (v32 * v28);
  v34 = *a3 + (v32 * (1.0 - v28));
  *v51 = *a3;
  *&v51[1] = v33;
  *&v51[2] = v34;
  *&v51[3] = v30;
  v35 = v27 / v19;
  *v50 = v29;
  *&v50[1] = v29 + ((v31 - v29) * v35);
  *&v50[2] = v29 + ((v31 - v29) * (1.0 - v35));
  *&v50[3] = v31;
  v36 = *&v47;
  if (a4)
  {
    v37 = *&v47;
  }

  else
  {
    v37 = *&v47 + ((*(&v47 + 1) - *&v47) * 0.5);
  }

  *v49 = v37;
  *&v49[1] = *&v47 + ((*(&v47 + 1) - *&v47) * 0.5);
  if ((a4 & 2) != 0)
  {
    v38 = *(&v47 + 1);
  }

  else
  {
    v38 = *&v47 + ((*(&v47 + 1) - *&v47) * 0.5);
  }

  *&v49[2] = *&v47 + ((*(&v47 + 1) - *&v47) * 0.5);
  *&v49[3] = v38;
  if ((a4 & 4) == 0)
  {
    v36 = *&v47 + ((*(&v47 + 1) - *&v47) * 0.5);
  }

  *v48 = v36;
  *&v48[1] = *&v47 + ((*(&v47 + 1) - *&v47) * 0.5);
  if ((a4 & 8) != 0)
  {
    v39 = *(&v47 + 1);
  }

  else
  {
    v39 = *&v47 + ((*(&v47 + 1) - *&v47) * 0.5);
  }

  *&v48[2] = *&v47 + ((*(&v47 + 1) - *&v47) * 0.5);
  *&v48[3] = v39;
  v40 = *(*(*(this + 2) + 16) + 8);
  v41 = v17 + 2;
  do
  {
    v42 = 0;
    v43 = v50[v18];
    v44 = v48[v18];
    v45 = vdupq_lane_s64(COERCE__INT64(v52[v18]), 0);
    result = v41;
    do
    {
      *result[-2].f32 = vcvt_f32_f64(vmlaq_f64(vmlaq_n_f64(*(*(this + 10) + 32), **(this + 10), v53[v42]), v45, *(*(this + 10) + 16)));
      result[-2].i64[1] = 0x3F80000000000000;
      result[-1].i32[0] = v51[v42];
      result[-1].i32[1] = v43;
      result[-1].i32[2] = v49[v42];
      result[-1].i32[3] = v44;
      result->i64[0] = v40;
      result += 3;
      ++v42;
    }

    while (v42 != 4);
    ++v18;
    v41 += 12;
  }

  while (v18 != 4);
  if ((a4 & 4) != 0)
  {
    result = CA::OGL::aa_adjust_vertices(v17, v17 + 12, 48, 4);
    if ((a4 & 8) == 0)
    {
LABEL_29:
      if ((a4 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_35;
    }
  }

  else if ((a4 & 8) == 0)
  {
    goto LABEL_29;
  }

  result = CA::OGL::aa_adjust_vertices(v17 + 36, v17 + 24, 48, 4);
  if ((a4 & 1) == 0)
  {
LABEL_30:
    if ((a4 & 2) == 0)
    {
      return result;
    }

    return CA::OGL::aa_adjust_vertices(v17 + 9, v17 + 6, 192, 4);
  }

LABEL_35:
  result = CA::OGL::aa_adjust_vertices(v17, v17 + 3, 192, 4);
  if ((a4 & 2) == 0)
  {
    return result;
  }

  return CA::OGL::aa_adjust_vertices(v17 + 9, v17 + 6, 192, 4);
}

float32_t CA::CG::ImageDelegate::quad(CA::CG::ImageDelegate *this, const CA::Bounds *a2, float *a3)
{
  v6 = *(this + 2);
  v7 = 6;
  if (!*(v6 + 108))
  {
    v7 = 4;
  }

  if ((*(v6 + 144) + 4) > *(v6 + 152) || (v8 = *(v6 + 128)) != 0 && *(v6 + 120) + v7 > v8 || (v9 = *(v6 + 16), v10 = *(v9 + 16), v10 != *(this + 89)))
  {
    CA::CG::MosaicDelegate::draw_array(*(this + 2));
    LOBYTE(v10) = *(this + 89);
    v9 = *(v6 + 16);
  }

  *(v9 + 16) = v10;
  v12 = *(v6 + 136);
  v11 = *(v6 + 144);
  *(v6 + 144) = v11 + 4;
  CA::OGL::Context::array_indices(v6, v11);
  v13 = *(a2 + 1);
  v14 = v13;
  v15 = (*(a2 + 3) + v13);
  v16 = *(this + 10);
  v17 = *(*(*(this + 2) + 16) + 8);
  v18 = v16[1];
  v19 = vcvt_f32_f64(vmulq_n_f64(*v16, *a2));
  v20 = vcvt_f32_f64(vmulq_n_f64(v18, v14));
  v21 = vcvt_f32_f64(vmulq_n_f64(*v16, (*(a2 + 2) + *a2)));
  v22 = vcvt_f32_f64(vmulq_n_f64(v18, v15));
  v23 = v16[2];
  v24 = vcvt_f32_f64(vaddq_f64(v23, vcvtq_f64_f32(vadd_f32(v20, v19))));
  if (*(this + 88) == 1)
  {
    v25 = vcvt_f32_f64(vaddq_f64(v23, vcvtq_f64_f32(vadd_f32(v22, v21))));
    v26 = __PAIR64__(v25.u32[1], v24.u32[0]);
    v27 = __PAIR64__(v24.u32[1], v25.u32[0]);
  }

  else
  {
    v27 = vcvt_f32_f64(vaddq_f64(v23, vcvtq_f64_f32(vadd_f32(v20, v21))));
    v25 = vcvt_f32_f64(vaddq_f64(v23, vcvtq_f64_f32(vadd_f32(v22, v21))));
    v26 = vcvt_f32_f64(vaddq_f64(v23, vcvtq_f64_f32(vadd_f32(v22, v19))));
  }

  v28 = (v12 + 48 * v11);
  *v28 = v24;
  v28[1] = 0x3F80000000000000;
  v28[6] = v27;
  v28[7] = 0x3F80000000000000;
  v28[12] = v25;
  v28[13] = 0x3F80000000000000;
  v28[18] = v26;
  v28[19] = 0x3F80000000000000;
  result = *a3;
  v30 = *(a3 + 1);
  v31 = *(a3 + 2);
  v32 = *(a3 + 3);
  v28[2].f32[0] = *a3;
  v28[2].i32[1] = v30;
  v28[4] = v17;
  v28[8].i32[0] = v31;
  v28[8].i32[1] = v30;
  v28[10] = v17;
  v28[14].i32[0] = v31;
  v28[14].i32[1] = v32;
  v28[16] = v17;
  v28[20].f32[0] = result;
  v28[20].i32[1] = v32;
  v28[22] = v17;
  return result;
}

void CA::CG::ImageDelegate::~ImageDelegate(CA::CG::ImageDelegate *this)
{
  CA::CG::MosaicBitmapDelegate::~MosaicBitmapDelegate(this);

  JUMPOUT(0x1865EA9A0);
}

double CA::CG::ImageKey::copy(CA::CG::ImageKey *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_type_zone_malloc(malloc_zone, 0x28uLL, 0x165299FDuLL);
  if (v2)
  {
    *v2 = &unk_1EF2051B0;
    *(v2 + 8) = *(this + 8);
    result = *(this + 3);
    *(v2 + 3) = result;
    *(v2 + 8) = *(this + 8);
  }

  return result;
}

void CA::CG::ImageKey::~ImageKey(CA::CG::ImageKey *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

void CA::CG::DrawImage::draw_color(CA::CG::DrawImage *this, CA::CG::Renderer *a2)
{
  if ((*(this + 100) & 2) != 0)
  {
    CA::CG::DrawOp::draw_color(this, a2);
  }

  else
  {
    (*(*this + 184))(this, a2, 0);
  }
}

uint64_t CA::CG::DrawImage::draw_shape(CA::CG::DrawImage *this, CA::CG::Renderer *a2, int8x16_t a3, int8x16_t a4, int8x16_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = *(this + 25);
  if ((v6 & 2) != 0)
  {
    v14 = *(*this + 184);

    return v14();
  }

  else
  {
    v7 = *(a2 + 1);
    v8 = (v6 << 31 >> 31);
    a5.i64[0] = *(this + 17);
    a3.i64[0] = *(this + 18);
    v15 = a5.i64[0];
    v16 = a3.i64[0];
    v9 = *(this + 19);
    a4.i64[0] = *(this + 20);
    v17 = v9;
    v18 = a4.i64[0];
    if (v9 < 0.0)
    {
      *a5.i64 = v9 + *a5.i64;
      v15 = a5.i64[0];
      v17 = -v9;
    }

    if (*a4.i64 < 0.0)
    {
      *a3.i64 = *a4.i64 + *a3.i64;
      *a4.i64 = -*a4.i64;
      v16 = a3.i64[0];
      v18 = a4.i64[0];
    }

    v10 = CA::CG::mat2_filter_bits(a2 + 32, a3, a4, a5);
    v11 = CA::CG::rect_filter_bits(&v15, a2 + 32, v10);
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    memset(v19, 0, sizeof(v19));
    CA::Transform::set_affine(v19, *(a2 + 4), *(a2 + 5), *(a2 + 6), *(a2 + 7), *(a2 + 8), *(a2 + 9));
    *(&v20 + 1) = &v15;
    *&v21 = v19;
    *(&v21 + 1) = __PAIR64__(v8, v11);
    v23 = 0;
    v22 = 0uLL;
    return CA::OGL::fill_rect(v7, &v20 + 8, v12);
  }
}

uint64_t CA::CG::DrawImage::color_type(CA::CG::DrawImage *this, CA::CG::Renderer *a2)
{
  if ((*(this + 100) & 2) != 0)
  {
    v4 = *(this + 10);
    v5 = 9;
    if (v4)
    {
      if (*(this + 14))
      {
        v5 = 10;
      }

      else
      {
        v5 = 9;
      }
    }

    if (*(this + 47) == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) && v4 == 0)
    {
      return v5 | 4;
    }

    else
    {
      return v5;
    }
  }

  else if ((CGImageHasAlpha() & 1) != 0 || CGImageGetMask() || *(this + 47) != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
  {
    return 0;
  }

  else
  {
    return 4;
  }
}

uint64_t CA::CG::DrawImage::shape_extent_contains(CA::CG::DrawImage *this, CA::CG::Renderer *a2, const CA::Shape *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(this + 17);
  v4 = *(this + 18);
  v13.f64[0] = v5;
  v13.f64[1] = v4;
  v7 = *(this + 19);
  v6 = *(this + 20);
  v14.f64[0] = v7;
  v14.f64[1] = v6;
  if (v7 < 0.0)
  {
    v13.f64[0] = v7 + v5;
    v14.f64[0] = -v7;
  }

  if (v6 < 0.0)
  {
    v13.f64[1] = v6 + v4;
    v14.f64[1] = -v6;
  }

  CA::Mat2Impl::mat2_apply_to_rect_interior((a2 + 32), &v13, a3);
  v8 = vceqzq_f64(v14);
  if ((vorrq_s8(vdupq_laneq_s64(v8, 1), v8).u64[0] & 0x8000000000000000) != 0 || (v9 = vceqq_f64(v14, v14), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v9), 1), v9).u64[0] & 0x8000000000000000) != 0))
  {
    v12 = 0uLL;
  }

  else
  {
    v10 = vcvtpq_s64_f64(vmaxnmq_f64(v13, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v12 = vuzp1q_s32(v10, vsubq_s64(vcvtmq_s64_f64(vminnmq_f64(vaddq_f64(v13, v14), vdupq_n_s64(0x41C0000000000000uLL))), v10));
  }

  return CA::Bounds::contains(&v12, a3);
}

uint64_t CA::CG::DrawImage::compute_dod_corners(uint64_t a1, float64x2_t *a2)
{
  v2 = 0;
  v3 = *(a1 + 152);
  v4 = vcltzq_f64(v3);
  v5 = vbslq_s8(v4, vaddq_f64(v3, *(a1 + 136)), *(a1 + 136));
  v6 = vaddq_f64(vbslq_s8(v4, vnegq_f64(v3), v3), v5);
  v4.i64[0] = *&v6.f64[0];
  v4.i64[1] = *&v5.f64[1];
  *a2 = v5;
  a2[1] = v4;
  v5.f64[1] = v6.f64[1];
  a2[2] = v6;
  a2[3] = v5;
  v7 = (a1 + 48);
  v8 = (a1 + 32);
  v9 = (a1 + 16);
  v10 = (a1 + 8);
  v11 = vld1q_dup_f64(v10);
  v12 = (a1 + 40);
  v13 = (a1 + 24);
  v14 = vld1q_dup_f64(v13);
  v15 = vld1q_dup_f64(v12);
  v16 = vld1q_dup_f64(v9);
  v17 = vld1q_dup_f64(v8);
  v18 = vld1q_dup_f64(v7);
  do
  {
    f64 = a2[v2].f64;
    v21 = vld2q_f64(f64);
    v22.val[0] = vmlaq_f64(vmlaq_f64(v15, v21.val[0], v11), v21.val[1], v14);
    v22.val[1] = vmlaq_f64(vmlaq_f64(v18, v21.val[0], v16), v21.val[1], v17);
    vst2q_f64(f64, v22);
    v2 += 2;
  }

  while (v2 != 4);
  return 1;
}

double CA::CG::DrawImage::compute_dod(CA::CG::DrawImage *this, CA::Rect *a2)
{
  CA::Rect::operator=(a2, this + 17);

  *&result = *&CA::Rect::apply_transform(v3, (this + 8));
  return result;
}

void CA::CG::DrawImage::~DrawImage(CGImageRef *this)
{
  CA::CG::DrawImage::~DrawImage(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF204EF8;
  CGImageRelease(this[16]);
  v2 = this[14];
  if (v2)
  {
    CFRelease(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
}

void CA::CG::DrawSubimage::draw_image(CA::CG::DrawSubimage *this, CA::CG::Renderer *a2, unsigned int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(this + 16);
  v6 = *(this + 17);
  v5 = *(this + 18);
  v9 = v6;
  v10 = v5;
  v8 = *(this + 19);
  v7 = *(this + 20);
  v11 = v8;
  v12 = v7;
  if (v8 < 0.0)
  {
    v9 = v8 + v6;
    v11 = -v8;
  }

  if (v7 < 0.0)
  {
    v10 = v7 + v5;
    v12 = -v7;
  }

  CA::CG::fill_image(a2, v4, &v9, a2 + 32, *(this + 25) & a3, (*(this + 25) >> 1) & 1, (*(this + 60) >> 8), *(this + 60), *(this + 14), (this + 168));
}

void CA::CG::DrawSubimage::~DrawSubimage(CGImageRef *this)
{
  CA::CG::DrawImage::~DrawImage(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

uint64_t CA::CG::DrawTiledImage::draw_image(CA::CG::DrawTiledImage *this, float64x2_t *a2, int a3, double a4, float64x2_t a5, float64x2_t a6)
{
  v84 = *MEMORY[0x1E69E9840];
  v8 = *(this + 16);
  a6.f64[0] = *(this + 19);
  a5.f64[0] = *(this + 20);
  v74 = a6;
  if (a6.f64[0] >= 0.0)
  {
    v9 = *(this + 19);
  }

  else
  {
    v9 = -a6.f64[0];
  }

  v75 = a5;
  v76 = *(this + 136);
  if (a5.f64[0] >= 0.0)
  {
    v10 = *(this + 20);
  }

  else
  {
    v10 = -a5.f64[0];
  }

  v12 = *(this + 21);
  v11 = *(this + 22);
  v77.f64[0] = v12;
  v77.f64[1] = v11;
  v14 = *(this + 23);
  v13 = *(this + 24);
  v78.f64[0] = v14;
  v78.f64[1] = v13;
  if (v14 < 0.0)
  {
    v77.f64[0] = v14 + v12;
    v78.f64[0] = -v14;
  }

  if (v13 < 0.0)
  {
    v77.f64[1] = v13 + v11;
    v78.f64[1] = -v13;
  }

  v15 = *(this + 25);
  v16 = *(this + 121);
  v17 = *(this + 31);
  Width = CGImageGetWidth(v8);
  Height = CGImageGetHeight(v8);
  memset(v79, 0, sizeof(v79));
  CA::CG::ImageFilter::ImageFilter(v79, Width, Height, v77.f64, a2 + 2, v16, 0, v20);
  v21 = 1;
  if ((v15 & 1) != 0 && a3)
  {
    if ((LOBYTE(a2[8].f64[1]) & 2) == 0)
    {
LABEL_18:
      v21 = 0;
      goto LABEL_19;
    }

    if (fabs(a2[2].f64[1]) >= 0.000001 || fabs(a2[3].f64[0]) >= 0.000001)
    {
      if (fabs(a2[2].f64[0]) < 0.000001)
      {
        v21 = fabs(a2[3].f64[1]) < 0.000001;
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

LABEL_19:
  v22 = a2->f64[1];
  v23 = *(*&v22 + 648);
  CachingFlags = CGImageGetCachingFlags();
  v25 = 0.1;
  if (CachingFlags != 1)
  {
    v25 = 1.0;
  }

  result = CA::Render::copy_image(v8, *(*&v22 + 560), (v15 & 2 | 0x8Cu), v25 + v23, 1.0);
  if (result)
  {
    v27 = result;
    v28 = CA::OGL::Context::color_program_cache(*&v22);
    v29 = CA::ColorProgram::Cache::push_whippet_cache(v28, *(v27 + 56), *(v27 + 64), v17, 0, 0);
    *(v27 + 12) &= ~0x80000u;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v30 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x88uLL, 0xDEEC3011uLL);
    v32 = v30;
    if (v30)
    {
      v31.f64[0] = 0.0;
      v33.i64[1] = v76.i64[1];
      *v33.i64 = v74.f64[0] + *v76.i64;
      v34 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(v31, v74).i64[0], 0), v33, v76);
      v35.i64[0] = v34.i64[0];
      *&v35.i64[1] = v75.f64[0] + *&v76.i64[1];
      v30->i32[2] = 1;
      v30->i32[3] = 39;
      ++dword_1ED4EAAD4;
      v30->i64[0] = &unk_1EF204BD8;
      *v30[1].i64 = v9 / Width;
      v30[1].i64[1] = 0;
      v30[2].i64[0] = 0;
      *&v30[2].i64[1] = v10 / Height;
      v30[3] = vbslq_s8(vdupq_lane_s64(vcgtq_f64(v31, v75).i64[0], 0), v35, v34);
      v36 = *(v27 + 16);
      v37.i64[0] = v36;
      v37.i64[1] = HIDWORD(v36);
      v38 = vcvtq_f64_u64(v37);
      v30[4].i64[0] = 0;
      v30[4].i64[1] = 0;
      v30[5] = v38;
      v30[6] = v38;
      __asm { FMOV            V0.2D, #1.0 }

      v30[7] = _Q0;
      v44 = v27;
      if (!atomic_fetch_add((v27 + 8), 1u))
      {
        v44 = 0;
        atomic_fetch_add((v27 + 8), 0xFFFFFFFF);
      }

      v30[8].i64[0] = v44;
      if (*v30[1].i64 == 1.0 && *&v30[1].i64[1] == 0.0 && *v30[2].i64 == 0.0 && *&v30[2].i64[1] == 1.0)
      {
        v30->i32[3] |= 0x100u;
      }
    }

    v45 = *(*&v22 + 16);
    if (*(v45 + 14) != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
    {
      goto LABEL_37;
    }

    v46 = v30[8].i64[0];
    if (!v46)
    {
      goto LABEL_38;
    }

    if ((*(v46 + 13) & 0x10) != 0 && *v30[6].i64 <= *v30[5].i64 && *&v30[6].i64[1] <= *&v30[5].i64[1])
    {
      LODWORD(v46) = 1;
    }

    else
    {
LABEL_37:
      LODWORD(v46) = 0;
    }

LABEL_38:
    if ((*(v45 + 497) & 1) != 0 && ((v47 = *(v45 + 496), v47 < 2) || v47 == 3 && ((v79[0] & 9) == 0 ? (v49 = 1) : (v49 = v21), (v49 & v46) == 1)))
    {
      *(v45 + 497) &= ~1u;
      v48 = 1;
    }

    else
    {
      v48 = 0;
    }

    if ((v30->i32[3] & 0x300) == 0x100 && (*(**&v22 + 648))(COERCE_FLOAT64_T(*&v22), v30[8].i64[0], 1))
    {
      v50 = (*(*&v22 + 872) << 10) & 0x800 ^ (LODWORD(v79[0]) | 0x1000);
      if (*(*(*&v22 + 16) + 497))
      {
        v51 = v50 | 0x100;
      }

      else
      {
        v51 = v50;
      }

      v81 = 0uLL;
      result = CA::OGL::Context::bind_image(*&v22, 0, *(v32 + 128), v51, BYTE4(v79[0]), BYTE5(v79[0]), 1, 0, *(v79 + 2), &v81, 0);
      if (result)
      {
        v52 = result;
        v53.f64[0] = *(v32 + 16);
        v53.f64[1] = *(v32 + 40);
        v54 = vmulq_f64(*(v32 + 96), v53);
        v55 = vsubq_f64(v77, *(v32 + 48));
        v56 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v55, v54)), vdivq_f64(vaddq_f64(v55, v78), v54));
        v55.f64[0] = v81.f64[0];
        *v57.f32 = vsub_f32(*&v81.f64[1], *&v81.f64[0]);
        v57.i64[1] = v57.i64[0];
        v55.f64[1] = v81.f64[0];
        v58 = vmlaq_f32(v55, v56, v57);
        *v56.f32 = vrndm_f32(*v58.f32);
        v56.i64[1] = v56.i64[0];
        v83 = vsubq_f32(v58, v56);
        memset(v80, 0, 200);
        CA::Transform::set_affine(v80, a2[2].f64[0], a2[2].f64[1], a2[3].f64[0], a2[3].f64[1], a2[4].f64[0], a2[4].f64[1]);
        *(&v80[9] + 1) = &v77;
        *&v80[10] = v80;
        memset(&v80[10] + 12, 0, 28);
        DWORD2(v80[10]) = v51;
        CA::OGL::fill_rect_tex(*&v22, &v80[9] + 8, v83.f32);
        result = (*(**&v22 + 560))(COERCE_FLOAT64_T(*&v22), v52, 0);
      }
    }

    else
    {
      v81 = v77;
      v82 = v78;
      v59 = v78.f64[1];
      if (v78.f64[0] > v78.f64[1])
      {
        v59 = v78.f64[0];
      }

      if (v59 >= 1.79769313e308)
      {
        v60.f64[0] = a2[2].f64[0];
        v72 = a2[2].f64[1];
        v61 = a2[3];
        v71 = a2[4];
      }

      else
      {
        v60 = a2[2];
        v61 = a2[3];
        v62 = vmlaq_laneq_f64(vmulq_n_f64(v60, v77.f64[0]), v61, v77, 1);
        v63 = vmulq_n_f64(v60, v78.f64[0]);
        v64 = vaddq_f64(v62, v63);
        v65 = vminnmq_f64(v62, v64);
        v66 = vmaxnmq_f64(v62, v64);
        v67 = vmlaq_laneq_f64(v62, v61, v78, 1);
        v68 = vaddq_f64(v67, v63);
        v69 = vminnmq_f64(v65, vminnmq_f64(v67, v68));
        v70 = vmaxnmq_f64(v66, vmaxnmq_f64(v67, v68));
        v71 = a2[4];
        v81 = vaddq_f64(v69, v71);
        v82 = vsubq_f64(v70, v69);
        v72 = v60.f64[1];
      }

      v83 = 0uLL;
      CA::Transform::set_affine(v80, v60.f64[0], v72, v61.f64[0], v61.f64[1], v71.f64[0], v71.f64[1]);
      result = CA::OGL::fill_pattern_rect(*&v22, v32, &v77, &v83, v80, &v81, BYTE4(v79[0]), BYTE5(v79[0]), *(v79 + 2), 0, 0);
    }

    if (v48)
    {
      *(*(*&v22 + 16) + 497) |= 1u;
    }

    if (v29)
    {
      v73 = CA::OGL::Context::color_program_cache(*&v22);
      result = CA::ColorProgram::Cache::pop_whippet_cache(v73);
    }

    if (atomic_fetch_add((v32 + 8), 0xFFFFFFFF) == 1)
    {
      result = (*(*v32 + 16))(v32);
    }

    if (atomic_fetch_add((v27 + 8), 0xFFFFFFFF) == 1)
    {
      return (*(*v27 + 16))(v27);
    }
  }

  return result;
}

void CA::CG::DrawTiledImage::draw_color(CA::CG::DrawTiledImage *this, CA::CG::Renderer *a2, double a3, float64x2_t a4, float64x2_t a5)
{
  if ((*(this + 100) & 2) != 0)
  {
    CA::CG::DrawOp::draw_color(this, a2);
  }

  else
  {
    CA::CG::DrawTiledImage::draw_image(this, a2, 0, a3, a4, a5);
  }
}

uint64_t CA::CG::DrawTiledImage::draw_shape(CA::CG::DrawTiledImage *this, float64x2_t *a2, int8x16_t a3, float64x2_t a4, float64x2_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = *(this + 25);
  if ((v6 & 2) != 0)
  {

    return CA::CG::DrawTiledImage::draw_image(this, a2, 1, *a3.i64, a4, a5);
  }

  else
  {
    v7 = *&a2->f64[1];
    v8 = (v6 << 31 >> 31);
    a5.f64[0] = *(this + 21);
    a3.i64[0] = *(this + 22);
    v14 = *&a5.f64[0];
    v15 = a3.i64[0];
    v9 = *(this + 23);
    a4.f64[0] = *(this + 24);
    v16 = v9;
    v17 = *&a4.f64[0];
    if (v9 < 0.0)
    {
      a5.f64[0] = v9 + a5.f64[0];
      v14 = *&a5.f64[0];
      v16 = -v9;
    }

    if (a4.f64[0] < 0.0)
    {
      *a3.i64 = a4.f64[0] + *a3.i64;
      a4.f64[0] = -a4.f64[0];
      v15 = a3.i64[0];
      v17 = *&a4.f64[0];
    }

    v10 = CA::CG::mat2_filter_bits(&a2[2], a3, a4, a5);
    v11 = CA::CG::rect_filter_bits(&v14, &a2[2], v10);
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    memset(v18, 0, sizeof(v18));
    CA::Transform::set_affine(v18, a2[2].f64[0], a2[2].f64[1], a2[3].f64[0], a2[3].f64[1], a2[4].f64[0], a2[4].f64[1]);
    *(&v19 + 1) = &v14;
    *&v20 = v18;
    *(&v20 + 1) = __PAIR64__(v8, v11);
    v22 = 0;
    v21 = 0uLL;
    return CA::OGL::fill_rect(v7, &v19 + 8, v12);
  }
}

uint64_t CA::CG::DrawTiledImage::color_type(CA::CG::DrawTiledImage *this, CA::CG::Renderer *a2)
{
  if ((*(this + 100) & 2) != 0)
  {
    v4 = *(this + 10);
    v5 = 9;
    if (v4)
    {
      if (*(this + 14))
      {
        v5 = 10;
      }

      else
      {
        v5 = 9;
      }
    }

    if (*(this + 47) == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) && v4 == 0)
    {
      return v5 | 4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = vbslq_s8(vcltzq_f64(*(this + 184)), vnegq_f64(*(this + 184)), *(this + 184));
    if (*v2.i64 <= *&v2.i64[1])
    {
      v2.i64[0] = v2.i64[1];
    }

    v3 = 8 * (*v2.i64 >= 1.79769313e308);
    if ((CGImageHasAlpha() & 1) == 0)
    {
      if (CGImageGetMask())
      {
        return v3;
      }

      else
      {
        return v3 | 4;
      }
    }
  }

  return v3;
}

uint64_t CA::CG::DrawTiledImage::shape_extent_contains(CA::CG::DrawTiledImage *this, CA::CG::Renderer *a2, const CA::Shape *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(this + 21);
  v4 = *(this + 22);
  v13.f64[0] = v5;
  v13.f64[1] = v4;
  v7 = *(this + 23);
  v6 = *(this + 24);
  v14.f64[0] = v7;
  v14.f64[1] = v6;
  if (v7 < 0.0)
  {
    v13.f64[0] = v7 + v5;
    v14.f64[0] = -v7;
  }

  if (v6 < 0.0)
  {
    v13.f64[1] = v6 + v4;
    v14.f64[1] = -v6;
  }

  CA::Mat2Impl::mat2_apply_to_rect_interior((a2 + 32), &v13, a3);
  v8 = vceqzq_f64(v14);
  if ((vorrq_s8(vdupq_laneq_s64(v8, 1), v8).u64[0] & 0x8000000000000000) != 0 || (v9 = vceqq_f64(v14, v14), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v9), 1), v9).u64[0] & 0x8000000000000000) != 0))
  {
    v12 = 0uLL;
  }

  else
  {
    v10 = vcvtpq_s64_f64(vmaxnmq_f64(v13, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v12 = vuzp1q_s32(v10, vsubq_s64(vcvtmq_s64_f64(vminnmq_f64(vaddq_f64(v13, v14), vdupq_n_s64(0x41C0000000000000uLL))), v10));
  }

  return CA::Bounds::contains(&v12, a3);
}

double CA::CG::DrawTiledImage::compute_dod(CA::CG::DrawTiledImage *this, CA::Rect *a2)
{
  CA::Rect::operator=(a2, this + 21);

  *&result = *&CA::Rect::apply_transform(v3, (this + 8));
  return result;
}

void CA::CG::DrawTiledImage::~DrawTiledImage(CGImageRef *this)
{
  CA::CG::DrawTiledImage::~DrawTiledImage(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF205098;
  CGImageRelease(this[16]);
  v2 = this[14];
  if (v2)
  {
    CFRelease(v2);
  }

  CA::CG::DrawOp::~DrawOp(this);
}

uint64_t CA_CGAffineTransformIsValid()
{
  if (!CGFloatIsValid() || !CGFloatIsValid() || !CGFloatIsValid() || !CGFloatIsValid() || !CGFloatIsValid())
  {
    return 0;
  }

  return CGFloatIsValid();
}

uint64_t CAGetCachedCGIOSurfaceContext(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    os_unfair_lock_lock(&context_lock);
    v5 = context_list;
    if (!context_list)
    {
LABEL_6:
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      *(malloc_type_zone_calloc(malloc_zone, 1uLL, 0x48uLL, 0x1020040FD15FAF7uLL) + 2) = 1;
      operator new();
    }

    while ((*(v5 + 64) & 1) != 0 || *(v5 + 8) != 1)
    {
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    *(v5 + 64) = 1;
    os_unfair_lock_unlock(&context_lock);
    while (1)
    {
      v9 = *(a1 + 8);
      if (!v9)
      {
        break;
      }

      v10 = *(a1 + 8);
      atomic_compare_exchange_strong((a1 + 8), &v10, v9 + 1);
      if (v10 == v9)
      {
        v11 = a1;
        goto LABEL_18;
      }
    }

    v11 = 0;
LABEL_18:
    *(v5 + 40) = v11;
    CA::CG::AccelContextDelegate<CA::CG::MetalDrawable>::set_drawable(*(v5 + 56), a1);
    v12 = *(v5 + 40);
    v13 = v12[9];
    if (v13 || (v13 = (*(*v12 + 80))(*(v5 + 40)), (v12[9] = v13) != 0))
    {
      *(v13 + 24) = a3;
      CA::CG::AccelQueue::set_label(v13, @"com.apple.coreanimation.CGIOSurfaceContext");
    }

    return *(v5 + 16);
  }

  v6 = *(a1 + 16);
  if (v6 <= 0x23 && ((0x1FFFFFF2FuLL >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = (*(*a1 + 24))(a1);
  if (IOSurfaceLock(v7, 0, 0))
  {
    return 0;
  }

  v14 = (*(*a1 + 24))(a1);
  BaseAddress = IOSurfaceGetBaseAddress(v14);
  v16 = (*(*a1 + 24))(a1);
  BytesPerRow = IOSurfaceGetBytesPerRow(v16);
  v18 = CAGetCachedCGBitmapContext_(BaseAddress, *(a1 + 52), *(a1 + 56), *(a1 + 16), BytesPerRow, *(a1 + 24));
  if (!v18)
  {
    v23 = (*(*a1 + 24))(a1);
    IOSurfaceUnlock(v23, 0, 0);
    return 0;
  }

  v19 = v18;
  while (1)
  {
    v20 = *(a1 + 8);
    if (!v20)
    {
      break;
    }

    v21 = *(a1 + 8);
    atomic_compare_exchange_strong((a1 + 8), &v21, v20 + 1);
    if (v21 == v20)
    {
      v22 = a1;
      goto LABEL_29;
    }
  }

  v22 = 0;
LABEL_29:
  *(v18 + 5) = v22;
  v24 = (*(*a1 + 24))(a1);
  *(v19 + 6) = v24;
  CFRetain(v24);
  return *(v19 + 2);
}

BOOL CAIOSurfaceIsAcceleratable(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  result = 0;
  if (a2)
  {
    if (a3)
    {
      result = 0;
      if (a4 <= 0x23 && ((1 << a4) & 0xA0006660ALL) != 0)
      {
        if (gpu_access_once[0] != -1)
        {
          dispatch_once_f(gpu_access_once, 0, init_gpu_access);
        }

        if (gpu_access_override == 1)
        {
          if ((gpu_access_allowed & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (CAIsAppSuspended::once != -1)
          {
            dispatch_once_f(&CAIsAppSuspended::once, 0, init_suspended);
          }

          v8 = atomic_load(is_suspended);
          if (v8)
          {
            return 0;
          }
        }

        if (a2 <= 0x800 && a3 < 0x801)
        {
          return 1;
        }

        if ((a3 | a2) >> 13)
        {
          return 0;
        }

        {
        }

        result = 0;
        {
          if (a1)
          {
            os_unfair_lock_lock(&CA::CG::AccelRenderer::_list_lock);
            v9 = CA::CG::AccelRenderer::_list;
            if (CA::CG::AccelRenderer::_list)
            {
              while (1)
              {
                if (!*(v9 + 4280) && *(v9 + 144) == a1)
                {
                  v10 = *(v9 + 4296);
                  if (v10)
                  {
                    break;
                  }
                }

                v9 = *(v9 + 4320);
                if (!v9)
                {
                  goto LABEL_27;
                }
              }
            }

            else
            {
LABEL_27:
              LODWORD(v10) = 0;
            }

            os_unfair_lock_unlock(&CA::CG::AccelRenderer::_list_lock);
          }

          else
          {
            LODWORD(v10) = 0;
          }

          if (a2 <= a3)
          {
            v11 = a3;
          }

          else
          {
            v11 = a2;
          }

          if (v10)
          {
            v12 = v11 > v10;
          }

          else
          {
            v12 = 0;
          }

          return !v12;
        }
      }
    }
  }

  return result;
}

void CA_CGContextAddRoundRect(CGContext *a1, int a2, CGFloat a3, CGFloat a4, double a5, double a6, CGFloat a7)
{
  IsNull = CGRectIsNull(*&a3);
  if (fabs(a7) != INFINITY && !IsNull)
  {
    if (a7 <= 0.0)
    {
      v20 = a3;
      v21 = a4;
      v22 = a5;
      v23 = a6;

      CGContextAddRect(a1, *&v20);
    }

    else
    {
      if (a2)
      {
        v15 = a3 + a5;
        v16 = a4 + a6;
        v47 = a7 * 1.528665;
        CGContextMoveToPoint(a1, a3, a7 * 1.528665 + a4);
        v43 = a7 * 1.08849;
        v36 = a7 * 1.08849 + a4;
        v17 = a7 * 0.868407;
        v35 = a7 * 0.868407 + a4;
        v46 = a7 * 0.0749114;
        v42 = a7 * 0.0749114 + a3;
        y = a7 * 0.631494 + a4;
        CGContextAddCurveToPoint(a1, a3, v36, a3, v35, v42, y);
        v29 = a7 * 0.16906;
        v41 = a7 * 0.16906 + a3;
        v30 = a7 * 0.372824;
        cp2y = a7 * 0.372824 + a4;
        cp1y = a7 * 0.16906 + a4;
        v39 = a7 * 0.631494 + a3;
        v40 = a7 * 0.372824 + a3;
        v18 = a7 * 0.0749114 + a4;
        CGContextAddCurveToPoint(a1, v41, cp2y, v40, cp1y, v39, v18);
        v27 = a7 * 0.868407;
        v38 = a7 * 0.868407 + a3;
        v37 = a7 * 1.08849 + a3;
        v45 = a7 * 1.52866;
        CGContextAddCurveToPoint(a1, v38, a4, v37, a4, a7 * 1.52866 + a3, a4);
        CGContextAddLineToPoint(a1, v15 - a7 * 1.528665, a4);
        v32 = v15 - a7 * 0.868407;
        v33 = v15 - a7 * 1.08849;
        v19 = a7 * 0.631494;
        CGContextAddCurveToPoint(a1, v15 - v43, a4, v15 - v17, a4, v15 - v19, v18);
        CGContextAddCurveToPoint(a1, v15 - v30, cp1y, v15 - v29, cp2y, v15 - v46, y);
        CGContextAddCurveToPoint(a1, v15, v35, v15, v36, v15, v45 + a4);
        CGContextAddLineToPoint(a1, v15, v16 - v47);
        v44 = v16 - v43;
        CGContextAddCurveToPoint(a1, v15, v44, v15, v16 - v27, v15 - v46, v16 - v19);
        CGContextAddCurveToPoint(a1, v15 - v29, v16 - v30, v15 - v30, v16 - v29, v15 - v19, v16 - v46);
        CGContextAddCurveToPoint(a1, v32, v16, v33, v16, v15 - v45, v16);
        CGContextAddLineToPoint(a1, v47 + a3, v16);
        CGContextAddCurveToPoint(a1, v37, v16, v38, v16, v39, v16 - v46);
        CGContextAddCurveToPoint(a1, v40, v16 - v29, v41, v16 - v30, v42, v16 - v19);
        CGContextAddCurveToPoint(a1, a3, v16 - v27, a3, v44, a3, v16 - v45);
      }

      else
      {
        v24 = a3 + a7;
        CGContextMoveToPoint(a1, a3 + a7, a4);
        v25 = a3 + a5 - a7;
        CGContextAddArc(a1, v25, a4 + a7, a7, 4.71238898, 0.0, 0);
        v26 = a4 + a6 - a7;
        CGContextAddArc(a1, v25, v26, a7, 0.0, 1.57079633, 0);
        CGContextAddArc(a1, v24, v26, a7, 1.57079633, 3.14159265, 0);
        CGContextAddArc(a1, v24, a4 + a7, a7, 3.14159265, 4.71238898, 0);
      }

      CGContextClosePath(a1);
    }
  }
}

void CA_CGContextAddUnevenRoundRect(CGContext *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if (!CGRectIsNull(*&a3))
  {
    v8 = 0;
    while ((*(a2 + v8) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a2 + v8 + 8) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v8 += 16;
      if (v8 == 64)
      {
        v9 = CGPathCreateWithUnevenCornersRoundedRect();
        CGContextAddPath(a1, v9);

        CGPathRelease(v9);
        return;
      }
    }
  }
}

CGColorRef CA_CGPatternColorCreate(CGPattern *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  if (CGPatternIsColored())
  {
    Pattern = CGColorSpaceCreatePattern(0);
    *&v11 = 0x3FF0000000000000;
  }

  else
  {
    v3 = CAGetColorSpace(36);
    Pattern = CGColorSpaceCreatePattern(v3);
    __asm { FMOV            V0.2D, #1.0 }

    v11 = _Q0;
    v12 = _Q0;
  }

  v9 = CGColorCreateWithPattern(Pattern, a1, &v11);
  CGColorSpaceRelease(Pattern);
  return v9;
}

uint64_t colorspace_has_srgb_gamma(CGColorSpace *a1)
{
  os_unfair_lock_lock(&colorspace_has_srgb_gamma(CGColorSpace *)::lock);
  if (!colorspace_has_srgb_gamma(CGColorSpace *)::src_curve)
  {
    CAGetColorSpace(3);
    colorspace_has_srgb_gamma(CGColorSpace *)::src_curve = CGColorSpaceCreateConversionCurve();
  }

  v2 = 64;
  v3 = &colorspace_has_srgb_gamma(CGColorSpace *)::cache;
  do
  {
    if (*v3 == a1)
    {
      v5 = *(v3 + 8);
      goto LABEL_10;
    }

    ++v3;
    v2 -= 16;
  }

  while (v2);
  os_unfair_lock_unlock(&colorspace_has_srgb_gamma(CGColorSpace *)::lock);
  ConversionCurve = CGColorSpaceCreateConversionCurve();
  v5 = CGColorCurveEqualToGammaCurve();
  if (ConversionCurve)
  {
    CGColorCurveRelease();
  }

  os_unfair_lock_lock(&colorspace_has_srgb_gamma(CGColorSpace *)::lock);
  CGColorSpaceRelease(xmmword_1EA8511F8);
  v6 = xmmword_1EA8511D8;
  v7 = xmmword_1EA8511E8;
  xmmword_1EA8511D8 = colorspace_has_srgb_gamma(CGColorSpace *)::cache;
  xmmword_1EA8511E8 = v6;
  xmmword_1EA8511F8 = v7;
  *&colorspace_has_srgb_gamma(CGColorSpace *)::cache = CGColorSpaceRetain(a1);
  BYTE8(colorspace_has_srgb_gamma(CGColorSpace *)::cache) = v5;
LABEL_10:
  os_unfair_lock_unlock(&colorspace_has_srgb_gamma(CGColorSpace *)::lock);
  return v5 & 1;
}

_BYTE *get_colorspace_map(_BYTE *result)
{
  {
    v15 = result;
    result = v15;
    if (v1)
    {
      v2 = *MEMORY[0x1E695F0B8];
      get_colorspace_map(unsigned char *)::space_names = 0;
      unk_1EA8537E0 = v2;
      v3 = *MEMORY[0x1E695F0F0];
      qword_1EA8537E8 = *MEMORY[0x1E695F0C0];
      unk_1EA8537F0 = v3;
      v4 = *MEMORY[0x1E695F110];
      qword_1EA8537F8 = *MEMORY[0x1E695F1C0];
      unk_1EA853800 = v4;
      v5 = *MEMORY[0x1E695F128];
      qword_1EA853808 = *MEMORY[0x1E695F108];
      unk_1EA853810 = v5;
      v6 = *MEMORY[0x1E695F0E0];
      qword_1EA853818 = *MEMORY[0x1E695F1A0];
      unk_1EA853820 = v6;
      v7 = *MEMORY[0x1E695F140];
      qword_1EA853828 = *MEMORY[0x1E695F0F8];
      unk_1EA853830 = v7;
      v8 = *MEMORY[0x1E695F148];
      qword_1EA853838 = *MEMORY[0x1E695F118];
      unk_1EA853840 = v8;
      v9 = *MEMORY[0x1E695F098];
      qword_1EA853848 = *MEMORY[0x1E695F130];
      unk_1EA853850 = v9;
      v10 = *MEMORY[0x1E695F0B0];
      qword_1EA853858 = *MEMORY[0x1E695F0A0];
      unk_1EA853860 = v10;
      v11 = *MEMORY[0x1E695F1B8];
      qword_1EA853868 = *MEMORY[0x1E695F180];
      unk_1EA853870 = v11;
      v12 = *MEMORY[0x1E695F100];
      qword_1EA853878 = *MEMORY[0x1E695F150];
      unk_1EA853880 = v12;
      v13 = *MEMORY[0x1E695F120];
      qword_1EA853888 = *MEMORY[0x1E695F138];
      unk_1EA853890 = v13;
      v14 = *MEMORY[0x1E695F178];
      qword_1EA853898 = *MEMORY[0x1E695F0C8];
      unk_1EA8538A0 = v14;
      qword_1EA8538A8 = *MEMORY[0x1E695F190];
      result = v15;
    }
  }

  *result = 27;
  return result;
}

uint64_t CAGetReconciledColorSpace(uint64_t a1)
{
  if (!a1)
  {
    return a1;
  }

  Type = CGColorSpaceGetType();
  if (Type <= 1)
  {
    if (!Type)
    {
      v3 = 3;
      goto LABEL_14;
    }

    if (Type == 1)
    {
      v3 = 36;
LABEL_14:

      return CAGetColorSpace(v3);
    }

    return a1;
  }

  if (Type == 2)
  {
    v3 = 5;
    goto LABEL_14;
  }

  if (Type != 8)
  {
    return a1;
  }

  return MEMORY[0x1EEDB9100](a1);
}

CGImage *CA_CGImageIsA8(CGImage *result)
{
  if (result)
  {
    v1 = result;
    return (CGImageGetBitsPerPixel(result) == 8 && (CGImageIsMask(v1) || !CGImageGetColorSpace(v1)));
  }

  return result;
}

CGImageRef CA_copyA8CGImageAsL8(CGImage *a1)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  BytesPerRow = CGImageGetBytesPerRow(a1);
  v5 = CAGetColorSpace(3);
  DataProvider = CGImageGetDataProvider(a1);
  return CGImageCreate(Width, Height, 8uLL, 8uLL, BytesPerRow, v5, 0, DataProvider, 0, 0, kCGRenderingIntentDefault);
}

CFStringRef CACreateStringWithFloatArray(uint64_t a1, unint64_t a2, double a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = 32 * a2;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16[-4 * v7];
  bzero(v8, v6);
  v9 = 0;
  v10 = v8;
  while (1)
  {
    if (v9)
    {
      *v10++ = 32;
      --v6;
    }

    v11 = *(a1 + 4 * v9);
    v12 = truncf(v11);
    if (fabsf(v11) <= 9.2234e18 && v11 == v12)
    {
      v14 = snprintf_l(v10, v6, 0, "%ld", v11);
      if (v6 < v14)
      {
        return 0;
      }

      v10 += v14;
    }

    else
    {
      v10 = x_dtostr_(v10, v6, 1, v11, a3);
    }

    if (!v10)
    {
      break;
    }

    if (v6 >= 2 && ++v9 < a2)
    {
      continue;
    }

    return CFStringCreateWithBytes(0, v8, v10 - v8, 0x8000100u, 0);
  }

  return 0;
}

CFStringRef CACreateStringWithDoubleArray(uint64_t a1, unint64_t a2, double a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = 32 * a2;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16[-4 * v7];
  bzero(v8, v6);
  v9 = v8;
  if (!v6)
  {
    return CFStringCreateWithBytes(0, v8, v9 - v8, 0x8000100u, 0);
  }

  v10 = 0;
  v9 = v8;
  while (1)
  {
    if (v10)
    {
      *v9++ = 32;
      --v6;
    }

    v11 = *(a1 + 8 * v10);
    v12 = trunc(v11);
    if (fabs(v11) <= 9.22337204e18 && v11 == v12)
    {
      v14 = snprintf_l(v9, v6, 0, "%ld", v11);
      if (v6 < v14)
      {
        return 0;
      }

      v9 += v14;
    }

    else
    {
      v9 = x_dtostr_(v9, v6, 1, v11, a3);
    }

    if (!v9)
    {
      break;
    }

    if (v6 >= 2 && ++v10 < a2)
    {
      continue;
    }

    return CFStringCreateWithBytes(0, v8, v9 - v8, 0x8000100u, 0);
  }

  return 0;
}

__IOSurface *CACreateIOSurfaceBackedCGImage(__IOSurface *result, char a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    CFRetain(result);
    if ((a2 & 0x1F) != 0)
    {
      v6 = CFDictionaryCreate(0, MEMORY[0x1E695F2C8], MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
      v6 = 0;
    }

    PixelFormat = IOSurfaceGetPixelFormat(v5);
    v8 = CA::Render::fourcc_compressed_of_type(PixelFormat, 0, 0);
    if (!a3)
    {
      v9 = CA::Render::fourcc_to_format(v8);
      CA::Render::format_default_colorspace(v9);
    }

    CGImageProviderCreate();
    if (v6)
    {
      CFRelease(v6);
    }

    v10 = CGImageCreateWithImageProvider();
    CGImageProviderRelease();
    return v10;
  }

  return result;
}

uint64_t copy_image_block_set_compressed(IOSurfaceRef buffer, uint64_t a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 0;
  }

  v5 = BYTE11(xmmword_1ED4E980C);
  if (BYTE11(xmmword_1ED4E980C) == 1)
  {
    kdebug_trace();
  }

  Width = IOSurfaceGetWidth(buffer);
  Height = IOSurfaceGetHeight(buffer);
  PixelFormat = IOSurfaceGetPixelFormat(buffer);
  v9 = CA::Render::fourcc_compressed_of_type(PixelFormat, 0, 0);
  ComponentType = CGImageProviderGetComponentType();
  v11 = CA::Render::fourcc_to_format(v9);
  if (v9 == 1647534392)
  {
    v12 = 13;
  }

  else
  {
    v12 = v11;
  }

  if (v9 == 1647534392)
  {
    v13 = 1380411457;
  }

  else
  {
    v13 = v9;
  }

  if (v12 > 0x25)
  {
    v14 = 0;
  }

  else
  {
    v14 = dword_183E22690[v12];
  }

  v15 = MEMORY[0x1865EA040](*MEMORY[0x1E696CE58], Width * v14);
  v16 = malloc_type_calloc(1uLL, v15 * Height, 0xCC91E2CFuLL);
  CAGetBytesFromCompressedIOSurface(buffer, v16, v15);
  if (v13 > 1279340599)
  {
    if (v13 > 1380411456)
    {
      if (v13 != 1380411457)
      {
        v18 = 1815491698;
LABEL_26:
        if (v13 == v18)
        {
          goto LABEL_27;
        }

        if (v13 == 1999843442 && ComponentType == 1)
        {
          {
          }

          v20 = qword_1ED4E4918 - 1 + 4 * Width;
          if ((qword_1ED4E4918 & (qword_1ED4E4918 - 1)) != 0)
          {
            v21 = v20 / qword_1ED4E4918 * qword_1ED4E4918;
          }

          else
          {
            v21 = v20 & -qword_1ED4E4918;
          }

          v25 = malloc_type_calloc(v21, Height, 0x100004077774924uLL);
          if (!v25)
          {
            goto LABEL_58;
          }

          v26 = v25;
          v27 = convert_CIF10(Width, Height, v15, 0, v16, 0, 1999843442, v25, v21, 0);
        }

        else
        {
          if (v13 != 1999843442 || ComponentType != 5)
          {
            if (x_log_get_utilities::once != -1)
            {
              dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
            }

            v24 = x_log_get_utilities::log;
            if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
            {
              v29 = HIBYTE(v13);
              v30 = MEMORY[0x1E69E9830];
              if (v13 < 0)
              {
                v31 = __maskrune(v29, 0x40000uLL);
              }

              else
              {
                v31 = *(MEMORY[0x1E69E9830] + 4 * v29 + 60) & 0x40000;
              }

              if (v31)
              {
                v32 = v13 >> 24;
              }

              else
              {
                v32 = 32;
              }

              if (BYTE2(v13) <= 0x7Fu)
              {
                v33 = *(v30 + 4 * BYTE2(v13) + 60) & 0x40000;
              }

              else
              {
                v33 = __maskrune(BYTE2(v13), 0x40000uLL);
              }

              if (v33)
              {
                v34 = SBYTE2(v13);
              }

              else
              {
                v34 = 32;
              }

              if (BYTE1(v13) <= 0x7Fu)
              {
                v35 = *(v30 + 4 * BYTE1(v13) + 60) & 0x40000;
              }

              else
              {
                v35 = __maskrune(BYTE1(v13), 0x40000uLL);
              }

              if (v35)
              {
                v36 = SBYTE1(v13);
              }

              else
              {
                v36 = 32;
              }

              if (v13 <= 0x7Fu)
              {
                v37 = *(v30 + 4 * v13 + 60) & 0x40000;
              }

              else
              {
                v37 = __maskrune(v13, 0x40000uLL);
              }

              src.data = __PAIR64__(v32, 67109888);
              v38 = v13;
              LOWORD(src.height) = 1024;
              if (!v37)
              {
                v38 = 32;
              }

              *(&src.height + 2) = v34;
              HIWORD(src.height) = 1024;
              LODWORD(src.width) = v36;
              WORD2(src.width) = 1024;
              *(&src.width + 6) = v38;
              _os_log_error_impl(&dword_183AA6000, v24, OS_LOG_TYPE_ERROR, "unsupported surface format: %c%c%c%c\n", &src, 0x1Au);
            }

            free(v16);
            v3 = 0;
            goto LABEL_28;
          }

          {
          }

          v22 = qword_1ED4E4918 - 1 + 8 * Width;
          if ((qword_1ED4E4918 & (qword_1ED4E4918 - 1)) != 0)
          {
            v23 = v22 / qword_1ED4E4918 * qword_1ED4E4918;
          }

          else
          {
            v23 = v22 & -qword_1ED4E4918;
          }

          v28 = malloc_type_calloc(v23, Height, 0x2A413C33uLL);
          if (!v28)
          {
            goto LABEL_58;
          }

          v26 = v28;
          v27 = convert_CIF10(Width, Height, v15, 0, v16, 0, 1999843442, v28, v23, 1);
        }

        if (v27)
        {
          src.data = CGImageBlockCreate();
          goto LABEL_32;
        }

        free(v26);
LABEL_58:
        v3 = 0;
        goto LABEL_59;
      }
    }

    else if (v13 != 1279340600)
    {
      v18 = 1380401729;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (v13 > 1278226535)
  {
    if (v13 != 1278226536)
    {
      v17 = 12598;
      goto LABEL_23;
    }

LABEL_27:
    src.data = CGImageBlockCreate();
    v3 = CGImageBlockSetCreate();
    goto LABEL_28;
  }

  if (v13 != 1111970369)
  {
    v17 = 12344;
LABEL_23:
    v18 = v17 | 0x4C300000;
    goto LABEL_26;
  }

  src.data = v16;
  src.height = Height;
  src.width = Width;
  src.rowBytes = v15;
  dest.data = malloc_type_malloc(v15 * Height, 0x9BCA755EuLL);
  dest.height = Height;
  dest.width = Width;
  dest.rowBytes = v15;
  *permuteMap = 50331906;
  vImagePermuteChannels_ARGB8888(&src, &dest, permuteMap, 0);
  CGImageBlockCreate();
LABEL_32:
  v3 = CGImageBlockSetCreate();
LABEL_59:
  free(v16);
LABEL_28:
  if (v5)
  {
    kdebug_trace();
  }

  return v3;
}

BOOL convert_CIF10(vImagePixelCount a1, vImagePixelCount a2, size_t a3, uint64_t a4, unsigned __int8 *a5, unsigned __int8 *a6, int a7, void *a8, size_t a9, BOOL a10)
{
  v20 = *MEMORY[0x1E69E9840];
  src.data = a5;
  src.height = a2;
  src.width = a1;
  src.rowBytes = a3;
  v14 = a6;
  v15 = a2;
  v16 = a1;
  v17 = a4;
  v13.data = a8;
  v13.height = a2;
  v13.width = a1;
  v13.rowBytes = a9;
  v10 = !a10;
  *permuteMap = 197121;
  if (a7 != 1999843442 || !a10)
  {
    if (a7 != 1647534392)
    {
      v10 = 1;
    }

    if (v10)
    {
      if (a7 != 1999843442 || a10)
      {
        v11 = 0;
        if (a7 == 1647534392 && !a10)
        {
          v11 = vImageConvert_XRGB2101010_A8ToARGB8888();
        }
      }

      else
      {
        v11 = vImageConvert_XRGB2101010ToARGB8888(&src, 0xFFu, &v13, 384, 894, permuteMap, 0);
      }
    }

    else
    {
      v11 = vImageConvert_XRGB2101010_A8ToARGB16F();
    }
  }

  else
  {
    v11 = vImageConvert_XRGB2101010ToARGB16F(&src, 1.0, &v13, 384, 894, permuteMap, 0x800u);
  }

  return v11 == 0;
}

uint64_t copy_image_block_set(IOSurfaceRef buffer, uint64_t a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 0;
  }

  v5 = BYTE11(xmmword_1ED4E980C);
  if (BYTE11(xmmword_1ED4E980C) == 1)
  {
    kdebug_trace();
  }

  Width = IOSurfaceGetWidth(buffer);
  Height = IOSurfaceGetHeight(buffer);
  PixelFormat = IOSurfaceGetPixelFormat(buffer);
  ComponentType = CGImageProviderGetComponentType();
  BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(buffer, 0);
  BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(buffer, 0);
  if (PixelFormat <= 1279340599)
  {
    if (PixelFormat <= 1278226535)
    {
      if (PixelFormat == 1111970369)
      {
        IOSurfaceLock(buffer, 1u, 0);
        src.data = BaseAddressOfPlane;
        src.height = Height;
        src.width = Width;
        src.rowBytes = BytesPerRowOfPlane;
        dest.data = malloc_type_malloc(BytesPerRowOfPlane * Height, 0xB560ED41uLL);
        dest.height = Height;
        dest.width = Width;
        dest.rowBytes = BytesPerRowOfPlane;
        *permuteMap = 50331906;
        vImagePermuteChannels_ARGB8888(&src, &dest, permuteMap, 0);
        CGImageBlockCreate();
        v3 = CGImageBlockSetCreate();
        IOSurfaceUnlock(buffer, 1u, 0);
        goto LABEL_20;
      }

      v12 = 12344;
      goto LABEL_14;
    }

    if (PixelFormat != 1278226536)
    {
      v12 = 12598;
LABEL_14:
      v13 = v12 | 0x4C300000;
      goto LABEL_17;
    }

LABEL_18:
    IOSurfaceLock(buffer, 1u, 0);
    CFRetain(buffer);
LABEL_19:
    src.data = CGImageBlockCreate();
    v3 = CGImageBlockSetCreate();
    goto LABEL_20;
  }

  if (PixelFormat <= 1380411456)
  {
    if (PixelFormat != 1279340600)
    {
      v13 = 1380401729;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (PixelFormat == 1380411457)
  {
    goto LABEL_18;
  }

  v13 = 1815491698;
LABEL_17:
  if (PixelFormat == v13)
  {
    goto LABEL_18;
  }

  v15 = PixelFormat == 1999843442 || PixelFormat == 1647534392;
  v16 = v15;
  if (v15 && ComponentType == 1)
  {
    {
    }

    v17 = qword_1ED4E4918 - 1 + 4 * Width;
    if ((qword_1ED4E4918 & (qword_1ED4E4918 - 1)) != 0)
    {
      v18 = v17 / qword_1ED4E4918 * qword_1ED4E4918;
    }

    else
    {
      v18 = v17 & -qword_1ED4E4918;
    }

    v25 = malloc_type_calloc(v18, Height, 0x100004077774924uLL);
    if (v25)
    {
      v26 = v25;
      v27 = buffer;
      v28 = v26;
      v29 = v18;
      v30 = 0;
LABEL_55:
      if (convert_CIF10(v27, v28, v29, v30))
      {
        goto LABEL_19;
      }

      free(v26);
    }
  }

  else
  {
    if (ComponentType != 5)
    {
      v16 = 0;
    }

    if (v16 == 1)
    {
      {
      }

      v19 = qword_1ED4E4918 - 1 + 8 * Width;
      if ((qword_1ED4E4918 & (qword_1ED4E4918 - 1)) != 0)
      {
        v20 = v19 / qword_1ED4E4918 * qword_1ED4E4918;
      }

      else
      {
        v20 = v19 & -qword_1ED4E4918;
      }

      v31 = malloc_type_calloc(v20, Height, 0x6D36A30FuLL);
      if (v31)
      {
        v26 = v31;
        v27 = buffer;
        v28 = v26;
        v29 = v20;
        v30 = 1;
        goto LABEL_55;
      }
    }

    else
    {
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v21 = x_log_get_utilities::log;
      if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
      {
        v22 = HIBYTE(PixelFormat);
        v23 = MEMORY[0x1E69E9830];
        if (PixelFormat < 0)
        {
          v24 = __maskrune(v22, 0x40000uLL);
        }

        else
        {
          v24 = *(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x40000;
        }

        if (v24)
        {
          v32 = PixelFormat >> 24;
        }

        else
        {
          v32 = 32;
        }

        if (BYTE2(PixelFormat) <= 0x7Fu)
        {
          v33 = *(v23 + 4 * BYTE2(PixelFormat) + 60) & 0x40000;
        }

        else
        {
          v33 = __maskrune(BYTE2(PixelFormat), 0x40000uLL);
        }

        if (v33)
        {
          v34 = SBYTE2(PixelFormat);
        }

        else
        {
          v34 = 32;
        }

        if (BYTE1(PixelFormat) <= 0x7Fu)
        {
          v35 = *(v23 + 4 * BYTE1(PixelFormat) + 60) & 0x40000;
        }

        else
        {
          v35 = __maskrune(BYTE1(PixelFormat), 0x40000uLL);
        }

        if (v35)
        {
          v36 = SBYTE1(PixelFormat);
        }

        else
        {
          v36 = 32;
        }

        if (PixelFormat <= 0x7Fu)
        {
          v37 = *(v23 + 4 * PixelFormat + 60) & 0x40000;
        }

        else
        {
          v37 = __maskrune(PixelFormat, 0x40000uLL);
        }

        src.data = __PAIR64__(v32, 67109888);
        v38 = PixelFormat;
        LOWORD(src.height) = 1024;
        if (!v37)
        {
          v38 = 32;
        }

        *(&src.height + 2) = v34;
        HIWORD(src.height) = 1024;
        LODWORD(src.width) = v36;
        WORD2(src.width) = 1024;
        *(&src.width + 6) = v38;
        _os_log_error_impl(&dword_183AA6000, v21, OS_LOG_TYPE_ERROR, "unsupported surface format: %c%c%c%c\n", &src, 0x1Au);
      }
    }
  }

  v3 = 0;
LABEL_20:
  if (v5)
  {
    kdebug_trace();
  }

  return v3;
}

BOOL convert_CIF10(__IOSurface *a1, void *a2, size_t a3, BOOL a4)
{
  if (IOSurfaceLock(a1, 1u, 0))
  {
    return 0;
  }

  PixelFormat = IOSurfaceGetPixelFormat(a1);
  v10 = PixelFormat;
  if (PixelFormat == 1999843442)
  {
    Width = IOSurfaceGetWidth(a1);
    Height = IOSurfaceGetHeight(a1);
    BytesPerRow = IOSurfaceGetBytesPerRow(a1);
    BaseAddress = IOSurfaceGetBaseAddress(a1);
    BytesPerRowOfPlane = 0;
LABEL_8:
    BaseAddressOfPlane = 0;
    goto LABEL_9;
  }

  if (PixelFormat != 1647534392)
  {
    Width = 0;
    Height = 0;
    BytesPerRow = 0;
    BytesPerRowOfPlane = 0;
    BaseAddress = 0;
    goto LABEL_8;
  }

  Width = IOSurfaceGetWidthOfPlane(a1, 0);
  Height = IOSurfaceGetHeightOfPlane(a1, 0);
  BytesPerRow = IOSurfaceGetBytesPerRowOfPlane(a1, 0);
  BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(a1, 1uLL);
  BaseAddress = IOSurfaceGetBaseAddressOfPlane(a1, 0);
  BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(a1, 1uLL);
LABEL_9:
  v17 = convert_CIF10(Width, Height, BytesPerRow, BytesPerRowOfPlane, BaseAddress, BaseAddressOfPlane, v10, a2, a3, a4);
  IOSurfaceUnlock(a1, 1u, 0);
  return v17;
}

void release_surface_block(__IOSurface *a1)
{
  IOSurfaceUnlock(a1, 1u, 0);

  CFRelease(a1);
}

uint64_t copy_image_block_set_metal(void *a1)
{
  v1 = a1;
  v31 = *MEMORY[0x1E69E9840];
  v2 = [a1 width];
  v3 = [v1 height];
  BytesPerRow = CAMetalTextureGetBytesPerRow(v1);
  PixelFormat = CAMetalTextureGetPixelFormat(v1);
  if (PixelFormat == 1647534392)
  {
    v6 = CACreateFloat16TextureFromTexture(v1);
    v7 = CAMetalTextureGetPixelFormat(v6);
    BytesPerRow = CAMetalTextureGetBytesPerRow(v6);
    v1 = v6;
  }

  else
  {
    v7 = PixelFormat;
    v6 = 0;
  }

  ComponentType = CGImageProviderGetComponentType();
  v28 = 0;
  v29 = 0;
  CAMetalTextureGetBytes(v1, &v29, &v28);
  v9 = 0;
  v10 = v29;
  if (v29 && BytesPerRow)
  {
    if (v7 == 1380411457 || v7 == 1380401729)
    {
      v12 = malloc_type_malloc(0x18uLL, 0xC004023DE3DC6uLL);
      v13 = v28;
      *v12 = v10;
      v12[1] = v13;
      v12[2] = CFRetain(v1);
      goto LABEL_11;
    }

    if (v7 == 1111970369)
    {
      src.data = v29;
      src.height = v3;
      src.width = v2;
      src.rowBytes = BytesPerRow;
      dest.data = malloc_type_malloc(BytesPerRow * v3, 0xFB347DF3uLL);
      dest.height = v3;
      dest.width = v2;
      dest.rowBytes = BytesPerRow;
      *permuteMap = 50331906;
      vImagePermuteChannels_ARGB8888(&src, &dest, permuteMap, 0);
      CGImageBlockCreate();
      v9 = CGImageBlockSetCreate();
      CA::Render::aligned_free(v10, v28, v11);
      goto LABEL_12;
    }

    if (v7 == 1999843442 && ComponentType == 1)
    {
      {
      }

      v15 = qword_1ED4E4918 - 1 + 4 * v2;
      if ((qword_1ED4E4918 & (qword_1ED4E4918 - 1)) != 0)
      {
        v16 = v15 / qword_1ED4E4918 * qword_1ED4E4918;
      }

      else
      {
        v16 = v15 & -qword_1ED4E4918;
      }

      v19 = malloc_type_calloc(v16, v3, 0x100004077774924uLL);
      if (!v19)
      {
        goto LABEL_35;
      }

      v20 = v19;
      v21 = v1;
      v22 = v20;
      v23 = v16;
      v24 = 0;
LABEL_33:
      if (!convert_CIF10(v21, v22, v23, v24))
      {
        free(v20);
LABEL_35:
        v9 = 0;
        goto LABEL_12;
      }

LABEL_11:
      src.data = CGImageBlockCreate();
      v9 = CGImageBlockSetCreate();
      goto LABEL_12;
    }

    v9 = 0;
    if (v7 == 1999843442 && ComponentType == 5)
    {
      {
      }

      v17 = qword_1ED4E4918 - 1 + 8 * v2;
      if ((qword_1ED4E4918 & (qword_1ED4E4918 - 1)) != 0)
      {
        v18 = v17 / qword_1ED4E4918 * qword_1ED4E4918;
      }

      else
      {
        v18 = v17 & -qword_1ED4E4918;
      }

      v25 = malloc_type_calloc(v18, v3, 0xC05AE7C1uLL);
      if (!v25)
      {
        goto LABEL_35;
      }

      v20 = v25;
      v21 = v1;
      v22 = v20;
      v23 = v18;
      v24 = 1;
      goto LABEL_33;
    }
  }

LABEL_12:
  if (v6)
  {
    CFRelease(v6);
  }

  return v9;
}

BOOL convert_CIF10(void *a1, void *a2, size_t a3, BOOL a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18[0] = 0;
  CAMetalTextureGetBytes(a1, v18, &v17);
  PixelFormat = CAMetalTextureGetPixelFormat(a1);
  v10 = v18[0];
  if (v18[0])
  {
    v11 = PixelFormat == 1999843442;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v14 = [a1 width];
    v15 = [a1 height];
    BytesPerRow = CAMetalTextureGetBytesPerRow(a1);
    v12 = convert_CIF10(v14, v15, BytesPerRow, 0, v10, 0, 1999843442, a2, a3, a4);
    goto LABEL_8;
  }

  v12 = 0;
  result = 0;
  if (v18[0])
  {
LABEL_8:
    CA::Render::aligned_free(v10, v17, v9);
    return v12;
  }

  return result;
}

void $_2::__invoke(uint64_t a1, uint64_t a2, void *a3)
{
  CA::Render::aligned_free(*a1, *(a1 + 8), a3);
  CFRelease(*(a1 + 16));

  free(a1);
}

void CA::CG::DrawLines::draw_shape(CA::CG::DrawLines *this, CA::CG::Renderer *a2)
{
  v146 = *MEMORY[0x1E69E9840];
  if (*(this + 16) && *(this + 36))
  {
    v138.i64[0] = 0;
    v128.f64[0] = 0.0;
    CGDashGetPattern();
  }

  v4 = *(a2 + 1);
  v5 = *(this + 25);
  v6 = 88;
  if ((v5 & 4) == 0)
  {
    v6 = 32;
  }

  v7 = a2 + v6;
  v8 = *(this + 14);
  v9 = *MEMORY[0x1E695F2F0];
  if (v8 == *MEMORY[0x1E695F2F0])
  {
    v10 = (*(*v4 + 232))(*(a2 + 1), 10);
    v13 = *(this + 25) & 1;
    if (v10)
    {
      _ZF = v13 == 0;
    }

    else
    {
      _ZF = 0;
    }

    if (!_ZF)
    {
      v15 = 1.0;
      goto LABEL_23;
    }

    v137 = 0;
    v17 = *v7;
    _ZF = *v7 == 1.0;
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v128 = 0u;
    if (_ZF)
    {
      v29 = 1;
      while (v29 != 6)
      {
        v30 = v29;
        v31 = *&v7[8 * v29];
        v32 = CA::Mat2Impl::mat2_identity_double[v29++];
        if (v31 != v32)
        {
          if ((v30 - 1) <= 4)
          {
            goto LABEL_15;
          }

          break;
        }
      }

      v122 = 1;
    }

    else
    {
LABEL_15:
      CA::Transform::set_affine(&v128, v17, *(v7 + 1), *(v7 + 2), *(v7 + 3), *(v7 + 4), *(v7 + 5));
      v122 = 0;
      v4[171] = &v128;
      ++v4[83].i32[0];
    }

    v127 = 0u;
    v145 = 0u;
    v33 = *(*&v4[82] + 8);
    v143[0] = v4;
    v143[1] = v33;
    v144 = 0u;
    v143[2] = 0;
    WORD4(v144) = 0;
    CA::OGL::Context::ClippedArray::start(v143);
    v34.i32[0] = 1073741822;
    v124 = v34;
    v123 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    while (CA::OGL::Context::ClippedArray::next_rect(v143, &v127))
    {
      v35.i32[1] = 0;
      v35.i64[1] = 0;
      v125 = 0u;
      v126 = 0u;
      if (*(this + 16))
      {
        if (SDWORD2(v127) <= SHIDWORD(v127))
        {
          v36 = HIDWORD(v127);
        }

        else
        {
          v36 = DWORD2(v127);
        }

        v35.i32[0] = v36;
        v37.i64[0] = v127;
        v37.i64[1] = SDWORD1(v127);
        v38 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v35, v124), 0), v123, vcvtq_f64_s64(v37));
        v39 = 1.79769313e308;
        if (v36 <= 1073741822)
        {
          v40.f64[0] = SDWORD2(v127);
        }

        else
        {
          v40.f64[0] = 1.79769313e308;
        }

        if (v36 <= 1073741822)
        {
          v39 = SHIDWORD(v127);
        }

        v125 = v38;
        v126.f64[0] = v40.f64[0];
        v126.f64[1] = v39;
        v41.f64[1] = *(v7 + 2);
        v41.f64[0] = *(v7 + 3);
        v42 = vmulq_f64(v41, *v7);
        v43 = vsubq_f64(v42, vdupq_laneq_s64(v42, 1)).f64[0];
        if (v43 == 0.0)
        {
          v51 = 0uLL;
          v52 = 0uLL;
          v48 = 0uLL;
        }

        else
        {
          v44 = 1.0 / v43;
          v45 = *(v7 + 2);
          v46 = vmulq_n_f64(*(v7 + 8), v44);
          v47.f64[1] = *v7;
          v47.f64[0] = *(v7 + 3);
          v52 = vmulq_n_f64(v47, v44);
          v48.f64[0] = v52.f64[0];
          v48.f64[1] = -v46.f64[0];
          v49 = -v46.f64[1];
          v50 = vmulq_f64(v45, v46);
          v51 = vmlsq_f64(vextq_s8(v50, v50, 8uLL), v52, v45);
          v52.f64[0] = v49;
        }

        if (v40.f64[0] <= v39)
        {
          v53 = v39;
        }

        else
        {
          v53 = v40.f64[0];
        }

        if (v53 < 1.79769313e308)
        {
          v54 = vmlaq_laneq_f64(vmulq_n_f64(v48, v38.f64[0]), v52, v38, 1);
          v55 = vmulq_n_f64(v48, v40.f64[0]);
          v56 = vaddq_f64(v54, v55);
          v57 = vminnmq_f64(v54, v56);
          v58 = vmaxnmq_f64(v54, v56);
          v59 = vmlaq_n_f64(v54, v52, v39);
          v60 = vaddq_f64(v59, v55);
          v61 = vminnmq_f64(v57, vminnmq_f64(v59, v60));
          v62 = vmaxnmq_f64(v58, vmaxnmq_f64(v59, v60));
          v38 = vaddq_f64(v61, v51);
          v40 = vsubq_f64(v62, v61);
          v125 = v38;
          v126 = v40;
          v39 = v40.f64[1];
        }

        if (v40.f64[0] <= v39)
        {
          v63 = v39;
        }

        else
        {
          v63 = v40.f64[0];
        }

        if (v63 < 1.79769313e308)
        {
          v64 = v40.f64[0] >= v39 ? v39 : v40.f64[0];
          if (v64 > 0.0)
          {
            __asm { FMOV            V3.2D, #-1.0 }

            v125 = vaddq_f64(v38, _Q3);
            v69 = v39 + 2.0;
            v126.f64[0] = v40.f64[0] + 2.0;
            v126.f64[1] = v69;
            if (v40.f64[0] + 2.0 <= 0.0 || v69 <= 0.0)
            {
              v126 = 0uLL;
            }
          }
        }
      }

      bzero(&v139, 0xC00uLL);
      v138.i64[0] = &unk_1EF2053C0;
      v138.i64[1] = v4;
      v142 = 0;
      if (*(this + 19) >= 2uLL)
      {
        v70 = (this + 160);
        v71 = 1;
        do
        {
          v72 = *(this + 16);
          if (v72)
          {
          }

          else
          {
          }

          v71 += 2;
          v70 += 4;
        }

        while (v71 < *(this + 19));
        if (v142)
        {
          (*(*v138.i64[1] + 360))(v138.i64[1], 0, v142, &v139, v73);
        }
      }
    }

    if ((v122 & 1) == 0)
    {
      v4[171] = 0;
      ++v4[83].i32[0];
    }
  }

  else
  {
    CA::CG::DrawOp::shape_line_width(this, a2, *(this + 14));
    if (v16 < 0.0)
    {
      CA::CG::DrawLines::draw_shape_as_paths(this, a2);
      return;
    }

    if (v16 >= 0.001)
    {
      v13 = v5 & 1;
      if (v5)
      {
        v18 = v16;
      }

      else
      {
        v18 = 1.0;
      }

      if (v16 < 1.0)
      {
        v15 = v18;
      }

      else
      {
        v15 = v16;
      }

LABEL_23:
      if (v13)
      {
        v19 = 255;
      }

      else
      {
        v19 = 0;
      }

      v20.f64[1] = 0.0;
      v128 = 0u;
      v129 = 0u;
      if (*(this + 16))
      {
        v138 = 0uLL;
        CA::Shape::get_bounds(*(*&v4[82] + 8), &v138);
        v23 = v4[84];
        if (v23)
        {
          v24 = v23 + 6;
        }

        else
        {
          v24 = v4 + 76;
        }

        v21.i64[0] = v138.i64[1];
        v25 = vclez_s32(v138.u64[1]);
        *v22.i8 = vpmax_u32(v25, v25);
        if ((v22.i32[0] & 0x80000000) == 0)
        {
          *v22.i8 = v24[1];
          v26 = vclez_s32(*v22.i8);
          if ((vpmax_u32(v26, v26).u32[0] & 0x80000000) != 0 || (v27 = vadd_s32(*v24, *v22.i8), *v22.i8 = vmax_s32(*v138.i8, *v24), *v21.i8 = vsub_s32(vmin_s32(vadd_s32(*v138.i8, v138.u64[1]), v27), *v22.i8), v28 = vclez_s32(*v21.i8), (vpmax_u32(v28, v28).u32[0] & 0x80000000) != 0))
          {
            v21 = 0uLL;
          }

          else
          {
            v22.i64[1] = v21.i64[0];
            v138 = v22;
          }
        }

        v74 = v21.i32[0];
        v75 = v21.i32[1];
        if (v21.i32[0] <= v21.i32[1])
        {
          v76 = v21.i32[1];
        }

        else
        {
          v76 = v21.i32[0];
        }

        v21.i32[0] = v76;
        v22.i32[0] = 1073741822;
        v20 = vdupq_lane_s32(*&vcgtq_s32(v21, v22), 0);
        v77.i64[0] = v138.i32[0];
        v77.i64[1] = v138.i32[1];
        v12 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
        v11 = vbslq_s8(v20, v12, vcvtq_f64_s64(v77));
        if (v76 <= 1073741822)
        {
          v12.f64[0] = v74;
        }

        else
        {
          v12.f64[0] = 1.79769313e308;
        }

        if (v76 <= 1073741822)
        {
          v20.f64[0] = v75;
        }

        else
        {
          v20.f64[0] = 1.79769313e308;
        }

        v128 = v11;
        v129.f64[0] = v12.f64[0];
        v129.f64[1] = v20.f64[0];
        v78.f64[1] = *(v7 + 2);
        v78.f64[0] = *(v7 + 3);
        v79 = vmulq_f64(v78, *v7);
        v80 = vsubq_f64(v79, vdupq_laneq_s64(v79, 1)).f64[0];
        if (v80 == 0.0)
        {
          v88 = 0uLL;
          v89 = 0uLL;
          v85 = 0uLL;
        }

        else
        {
          v81 = 1.0 / v80;
          v82 = *(v7 + 2);
          v83 = vmulq_n_f64(*(v7 + 8), v81);
          v84.f64[1] = *v7;
          v84.f64[0] = *(v7 + 3);
          v89 = vmulq_n_f64(v84, v81);
          v85.f64[0] = v89.f64[0];
          v85.f64[1] = -v83.f64[0];
          v86 = -v83.f64[1];
          v87 = vmulq_f64(v82, v83);
          v88 = vmlsq_f64(vextq_s8(v87, v87, 8uLL), v89, v82);
          v89.f64[0] = v86;
        }

        if (v12.f64[0] <= v20.f64[0])
        {
          v90 = v20.f64[0];
        }

        else
        {
          v90 = v12.f64[0];
        }

        if (v90 < 1.79769313e308)
        {
          v91 = vmlaq_laneq_f64(vmulq_n_f64(v85, v11.f64[0]), v89, v11, 1);
          v92 = vmulq_n_f64(v85, v12.f64[0]);
          v93 = vaddq_f64(v91, v92);
          v94 = vminnmq_f64(v91, v93);
          v95 = vmaxnmq_f64(v91, v93);
          v96 = vmlaq_n_f64(v91, v89, v20.f64[0]);
          v97 = vaddq_f64(v96, v92);
          v98 = vminnmq_f64(v94, vminnmq_f64(v96, v97));
          v20 = vmaxnmq_f64(v95, vmaxnmq_f64(v96, v97));
          v11 = vaddq_f64(v98, v88);
          v12 = vsubq_f64(v20, v98);
          v128 = v11;
          v129 = v12;
          v20.f64[0] = v12.f64[1];
        }

        if (v12.f64[0] <= v20.f64[0])
        {
          v99 = v20.f64[0];
        }

        else
        {
          v99 = v12.f64[0];
        }

        if (v99 < 1.79769313e308)
        {
          v100 = v12.f64[0] >= v20.f64[0] ? v20.f64[0] : v12.f64[0];
          if (v100 > 0.0)
          {
            v11 = vaddq_f64(v11, vdupq_lane_s64(COERCE__INT64(v15 * -0.5), 0));
            v128 = v11;
            v101 = v15 + v20.f64[0];
            v129.f64[0] = v15 + v12.f64[0];
            v129.f64[1] = v101;
            if (v15 + v12.f64[0] <= 0.0 || v101 <= 0.0)
            {
              v129 = 0uLL;
            }
          }
        }
      }

      v141 = 0;
      v102 = *(this + 36);
      v138.i64[0] = &unk_1EF2053D8;
      v138.i64[1] = v4;
      v139 = v7;
      v140 = v15;
      LODWORD(v141) = v19;
      BYTE4(v141) = v102;
      BYTE5(v141) = v8 == v9;
      if (v102 == 1 || !(*(*v4 + 232))(v4, 9))
      {
        goto LABEL_121;
      }

      v103 = *(*&v4[2] + 496);
      if (v103 == 12 || (v103 - 1) > 0x18)
      {
        goto LABEL_121;
      }

      v20 = vmulq_f64(*v139, *v139);
      v20.f64[0] = vaddvq_f64(v20);
      v105 = vmulq_f64(v139[1], v139[1]);
      v12 = vdupq_laneq_s64(v105, 1);
      v11 = vaddq_f64(v12, v105);
      v106 = v20.f64[0] != 1.0;
      if (v11.f64[0] != 1.0)
      {
        v106 = 1;
      }

      v107 = sqrt(v20.f64[0]);
      v108 = sqrt(v11.f64[0]);
      if (v106)
      {
        v11.f64[0] = v108;
        v109 = v107;
      }

      else
      {
        v109 = v20.f64[0];
      }

      v110 = (v108 + v107) * 0.5;
      v111 = COERCE_UNSIGNED_INT64(fabs(v110)) > 0x7FEFFFFFFFFFFFFFLL;
      if (v106 && v111)
      {
        goto LABEL_121;
      }

      if (v109 == v11.f64[0])
      {
        BYTE6(v141) = 1;
      }

      else
      {
        if (v109 >= 0.0 == v11.f64[0] < 0.0)
        {
LABEL_121:
          BYTE6(v141) = 0;
LABEL_122:
          if (*(this + 19) >= 2uLL)
          {
            v112 = (this + 160);
            v113 = 1;
            do
            {
              v114 = *(this + 16);
              if (v114)
              {
              }

              else
              {
                v12.f64[0] = v112[2];
                v20.f64[0] = *v112;
                v11.f64[0] = v112[1];
              }

              v113 += 2;
              v112 += 4;
            }

            while (v113 < *(this + 19));
          }

          return;
        }

        v121 = *&v109 - *&v11.f64[0];
        if ((*&v109 - *&v11.f64[0]) < 0)
        {
          v121 = *&v11.f64[0] - *&v109;
        }

        BYTE6(v141) = v121 < 4;
        if (v121 > 3)
        {
          goto LABEL_122;
        }
      }

      v115 = v138.i64[1];
      v116 = *(*(v138.i64[1] + 16) + 8);
      v117 = (*(v138.i64[1] + 1384) >> 12) & 7;
      v118 = HIWORD(v116);
      if (v117 != 2)
      {
        if (v117 != 1)
        {
LABEL_135:
          v11 = vcvtq_f32_f16(v116);
          if (!v106)
          {
            v110 = 1.0;
          }

          v119 = v140 * 0.5 * v110 + 0.5;
          _ZF = BYTE4(v141) == 2;
          *(v138.i64[1] + 160) = v11;
          if (_ZF)
          {
            v120 = v119;
          }

          else
          {
            v120 = 0.5;
          }

          *(v115 + 176) = v119;
          *(v115 + 180) = v120;
          goto LABEL_122;
        }

        v116 = v116 & 0xFFFFFFFFFFFF0000 | v118;
      }

      v116 = v116 & 0xFFFF00000000FFFFLL | (v118 << 16) | (v118 << 32);
      goto LABEL_135;
    }
  }
}

void CA::CG::DrawLines::draw_shape_as_paths(CA::CG::DrawLines *this, CA::CG::Renderer *a2)
{
  Mutable = CGPathCreateMutable();
  if (*(this + 19) >= 2uLL)
  {
    v5 = (this + 184);
    v6 = 1;
    do
    {
      CGPathMoveToPoint(Mutable, 0, *(v5 - 3), *(v5 - 2));
      CGPathAddLineToPoint(Mutable, 0, *(v5 - 1), *v5);
      v6 += 2;
      v5 += 4;
    }

    while (v6 < *(this + 19));
  }

  CA::CG::stroke_path(a2, Mutable, 0, this + 8, this + 112);

  CGPathRelease(Mutable);
}

float CA::CG::anonymous namespace::HairLineRenderer::operator()(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = *(a1 + 3088);
  if ((v10 - 191) <= 0xFFFFFFFFFFFFFF3ELL)
  {
    (*(**(a1 + 8) + 360))(*(a1 + 8), 0);
    v10 = 0;
    *(a1 + 3088) = 0;
  }

  v11 = a2;
  v12 = a1 + 16 * v10;
  v13 = a3;
  *(v12 + 16) = v11;
  *(v12 + 20) = v13;
  result = a4;
  v15 = a5;
  *(v12 + 32) = result;
  *(v12 + 36) = v15;
  *(v12 + 24) = *(*(*(a1 + 8) + 16) + 8);
  *(v12 + 40) = *(*(*(a1 + 8) + 16) + 8);
  *(a1 + 3088) = v10 + 2;
  return result;
}

uint64_t CA::CG::anonymous namespace::dash_line(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, double *a5)
{
  v5 = a5[1];
  v6 = a4[1];
  v7 = a4[2];
  v8 = a4[3];
  v9 = -*a4;
  v10 = -v7;
  if (*a4 > v7)
  {
    v11 = -*a5;
  }

  else
  {
    v11 = a5[2] + *a5;
  }

  if (*a4 > v7)
  {
    v12 = -(a5[2] + *a5);
  }

  else
  {
    v12 = *a5;
  }

  if (*a4 <= v7)
  {
    v10 = a4[2];
    v9 = *a4;
  }

  if (v6 > v8)
  {
    v13 = -v5;
  }

  else
  {
    v13 = a5[3] + v5;
  }

  if (v6 > v8)
  {
    v14 = -(a5[3] + v5);
  }

  else
  {
    v14 = a5[1];
  }

  if (v6 > v8)
  {
    v15.f64[0] = -v8;
  }

  else
  {
    v15.f64[0] = a4[3];
  }

  if (v6 > v8)
  {
    v16.f64[0] = -v6;
  }

  else
  {
    v16.f64[0] = a4[1];
  }

  if (v10 >= v12 && v9 <= v11 && v15.f64[0] >= v14 && v16.f64[0] <= v13)
  {
    v15.f64[1] = v10;
    v16.f64[1] = v9;
    v20 = vsubq_f64(v15, v16);
    if (vaddvq_f64(vmulq_f64(v20, v20)) > 0.0)
    {
      return CGDashGetPattern();
    }
  }

  return result;
}

CA::OGL::Context *CA::CG::anonymous namespace::WideLineRenderer::operator()(uint64_t a1, int8x16_t a2, int8x16_t a3, float64x2_t a4, double a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 37);
  if (v6 & 1) != 0 || (*(a1 + 38))
  {
    v7 = *(a1 + 16);
    v8 = v7[1];
    v9 = vmlaq_n_f64(vmlaq_n_f64(v7[2], *v7, *a2.i64), v8, *a3.i64);
    v10 = vmlaq_n_f64(vmlaq_n_f64(v7[2], *v7, a4.f64[0]), v8, a5);
    if (*(a1 + 38))
    {
      *&v44.f64[0] = vcvt_f32_f64(v9);
      *&v44.f64[1] = vcvt_f32_f64(v10);
      *(*(*(a1 + 8) + 16) + 16) = 102;
      v11 = *(*(*(a1 + 8) + 656) + 8);
      *&v38 = *(a1 + 8);
      *(&v38 + 1) = v11;
      memset(v39, 0, 40);
      LOWORD(v39[1]) = 0;
      CA::OGL::Context::ClippedArray::start(&v38);
      v34 = 0.0;
      v35 = 0.0;
      while (1)
      {
        rect = CA::OGL::Context::ClippedArray::next_rect(&v38, &v34);
        result = *(a1 + 8);
        if (!rect)
        {
          break;
        }

        (*(*result + 376))(result, 2, &v44);
      }

      *(*(result + 2) + 16) = 0;
      return result;
    }

    a3.i64[0] = *&v9.f64[1];
    a5 = v10.f64[1];
    a4.f64[0] = v10.f64[0];
    a2.i64[0] = *&v9.f64[0];
  }

  v14 = a4.f64[0] - *a2.i64;
  v15 = a5 - *a3.i64;
  v16 = sqrt(v14 * v14 + v15 * v15);
  v17 = v15 / v16;
  if (v16 <= 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v17;
  }

  v19 = v14 / v16;
  if (v16 <= 0.0)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = v19;
  }

  v44.f64[0] = v20;
  v44.f64[1] = v18;
  v21.f64[0] = -v18;
  v45.f64[0] = -v18;
  v45.f64[1] = v20;
  *&v46.f64[0] = a2.i64[0];
  *&v46.f64[1] = a3.i64[0];
  if (v6)
  {
    v30 = v20;
    v28 = v20;
  }

  else
  {
    v22 = *(a1 + 16);
    a4 = *v22;
    v23 = v22[1];
    v21 = vmlaq_n_f64(vmulq_n_f64(*v22, v21.f64[0]), v23, v20);
    v44 = vmlaq_n_f64(vmulq_n_f64(*v22, v20), v23, v18);
    v45 = v21;
    v46 = vmlaq_n_f64(vmlaq_n_f64(v22[2], a4, *a2.i64), v23, *a3.i64);
    v18 = v44.f64[1];
    v28 = v44.f64[0];
    v30 = v21.f64[1];
    a3.i64[0] = *&v46.f64[1];
    a2.i64[0] = *&v46.f64[0];
  }

  v29 = v18;
  v31 = v21.f64[0];
  v32 = *a2.i64;
  v33 = *a3.i64;
  a4.f64[0] = *(a1 + 24);
  v34 = 0.0;
  v35 = -(a4.f64[0] * 0.5);
  v36 = v16;
  v37 = *&a4.f64[0];
  if (*(a1 + 36) == 1)
  {
    v24 = a4.f64[0] * 0.5;
  }

  else
  {
    v24 = 0.0;
  }

  if (*(a1 + 36))
  {
    *a2.i64 = a4.f64[0] + v16;
    v34 = -(a4.f64[0] * 0.5);
    v36 = a4.f64[0] + v16;
  }

  v25 = CA::CG::mat2_filter_bits(&v44, a2, a3, a4);
  v26 = CA::CG::rect_filter_bits(&v34, &v44, v25);
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  v27 = *(a1 + 32);
  CA::Transform::set_affine(&v38, v28, v29, v31, v30, v32, v33);
  *(&v40 + 1) = &v34;
  *&v41 = &v38;
  *(&v41 + 1) = __PAIR64__(v27, v26);
  v43 = 0;
  v42 = 0uLL;
  return CA::OGL::fill_round_rect(*(a1 + 8), &v40 + 1, 0xF, 0, v24, v24);
}

BOOL CA::CG::DrawLines::can_coalesce(CA::CG::DrawLines *this, const CA::CG::DrawLines *a2)
{
  if (*(this + 1) != *(a2 + 1))
  {
    return 0;
  }

  if (*(this + 2) != *(a2 + 2))
  {
    return 0;
  }

  if (*(this + 3) != *(a2 + 3))
  {
    return 0;
  }

  if (*(this + 4) != *(a2 + 4))
  {
    return 0;
  }

  if (*(this + 5) != *(a2 + 5))
  {
    return 0;
  }

  if (*(this + 6) != *(a2 + 6))
  {
    return 0;
  }

  v4 = *(this + 14);
  if (v4 != *(a2 + 14) || *(this + 8) != *(a2 + 8) || *(this + 9) != *(a2 + 9) || *(this + 11) != *(a2 + 11))
  {
    return 0;
  }

  v5 = *(this + 10);
  v6 = *(a2 + 10);
  if (v5 && v6)
  {
    if (!CA::CG::DeviceColor::Pattern::operator==(v5, v6))
    {
      return 0;
    }
  }

  else if (v5 | v6)
  {
    return 0;
  }

  if (*(this + 25) != *(a2 + 25) || *(this + 14) != *(a2 + 14) || *(this + 15) != *(a2 + 15) || *(this + 16) != *(a2 + 16) || *(this + 17) != *(a2 + 17) || *(this + 36) != *(a2 + 36))
  {
    return 0;
  }

  return *(this + 37) == *(a2 + 37) && v4 != 0;
}

float64x2_t CA::CG::DrawLines::compute_dod(CA::CG::DrawLines *this, float64x2_t *a2)
{
  result = *(this + 10);
  v5 = *(this + 19);
  if (v5 < 2)
  {
    v8 = *(this + 10);
  }

  else
  {
    v6 = v5 - 1;
    v7 = (this + 176);
    v8 = *(this + 10);
    do
    {
      v9 = *v7++;
      result = vminnmq_f64(result, v9);
      v8 = vmaxnmq_f64(v8, v9);
      --v6;
    }

    while (v6);
  }

  v10 = vsubq_f64(v8, result);
  *a2 = result;
  a2[1] = v10;
  if ((*(this + 100) & 4) == 0)
  {
    CA::Rect::apply_transform(a2, (this + 8));
    v10 = a2[1];
  }

  result.f64[0] = v10.f64[1];
  if (v10.f64[0] > v10.f64[1])
  {
    result.f64[0] = v10.f64[0];
  }

  if (result.f64[0] < 1.79769313e308)
  {
    v22 = v10;
    v11.f64[0] = CA::CG::stroke_radius(this + 112, *(this + 8), *(this + 24));
    v12.i64[0] = 0;
    v11.f64[1] = v13;
    v14 = vsubq_f64(*a2, v11);
    __asm { FMOV            V3.2D, #2.0 }

    v20 = vmlaq_f64(v22, _Q3, v11);
    v21 = vclezq_f64(v20);
    result = vandq_s8(v20, vdupq_lane_s64(vmvnq_s8(vcgtq_s64(v12, vorrq_s8(vdupq_laneq_s64(v21, 1), v21))).i64[0], 0));
    *a2 = v14;
    a2[1] = result;
  }

  return result;
}

void CA::CG::DrawLines::~DrawLines(CA::CG::DrawLines *this)
{
  *this = &unk_1EF2052F8;
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
  *this = &unk_1EF2052F8;
  if (*(this + 16))
  {
    CGDashRelease();
  }

  CA::CG::DrawOp::~DrawOp(this);
}

void *server_error(void *result, uint64_t a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Server error %u", a2];
    v4 = *MEMORY[0x1E696A578];
    v5[0] = v3;
    result = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:4 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v5, &v4, 1)}];
    *v2 = result;
  }

  return result;
}

void X::small_vector_base<ContentStreamClientFrame>::grow(uint64_t a1, unint64_t a2)
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

  v11 = malloc_type_malloc(16 * v10, 0x1020040EDED9539uLL);
  v12 = v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  if (*a1 != v14)
  {
    v15 = v11;
    do
    {
      v16 = *v13++;
      *v15++ = v16;
    }

    while (v13 != v14);
  }

  if (v3 != v5)
  {
    free(*a1);
  }

  *a1 = v12;
  *(a1 + 8) = v12 + v4 - v3;
  *(a1 + 24) = v10;
}

void sub_183E05860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12)
{
  if (a10 != a12)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

void *stream_active_error(void *result)
{
  v3[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x1E696A578];
    v3[0] = @"Stream is currently active";
    result = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v3, &v2, 1)}];
    *v1 = result;
  }

  return result;
}

BOOL validate_options(CAContentStreamOptions *a1, NSError **a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = [(CAContentStreamOptions *)a1 pixelFormat];
  [(CAContentStreamOptions *)a1 frameSize];
  v6 = v5 > 0.0;
  [(CAContentStreamOptions *)a1 frameSize];
  v8 = v7 > 0.0 && v6;
  if (v4)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (![(CAContentStreamOptions *)a1 queueDepth])
  {
    v9 = 0;
  }

  [(CAContentStreamOptions *)a1 minimumFrameTime];
  v11 = v10 >= 0.0 && v9;
  if (a2 && !v11)
  {
    v13 = *MEMORY[0x1E696A578];
    v14[0] = @"Invalid option";
    *a2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v14, &v13, 1)}];
  }

  return v11;
}

void *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,unsigned int,unsigned int>(void *result, unsigned int a2)
{
  v2 = result[1];
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

  v5 = *(*result + 8 * v4);
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

  return result;
}

void remove_observer(CARenderer *a1)
{
  v2 = [*a1->_priv renderContext];
  if (v2)
  {

    CA::Render::remove_observer(0, v2, context_changed, a1);
  }
}

void context_changed(CA::Render::Object *a1, void *a2, void *a3)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *(a2[1] + 8);
  if (objc_opt_respondsToSelector())
  {
    [v5 rendererDidChange:a2];
  }

  objc_autoreleasePoolPop(v4);
}

void add_observer(CARenderer *a1)
{
  priv = a1->_priv;
  if (priv[1])
  {
    v3 = [*priv renderContext];
    if (v3)
    {

      CA::Render::add_observer(0, v3, context_changed, a1, 0);
    }
  }
}

void _CASFlipBookModify(mach_port_t a1, int a2, int a3, int a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a2;
  v11 = a3;
  v12 = a4;
  reply_port = mig_get_reply_port();
  *&msg.msgh_bits = 5395;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  *&msg.msgh_voucher_port = 0x9D3800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v7 = mach_msg(&msg, 3, 0x2Cu, 0x2Cu, msgh_local_port, 0, 0);
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else if (v7)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  else if (msg.msgh_id != 40348 || (msg.msgh_bits & 0x80000000) != 0 || msg.msgh_size != 36 || msg.msgh_remote_port || v10)
  {
    mach_msg_destroy(&msg);
  }
}

uint64_t _CASContentStreamModify(unsigned int a1, int a2, int a3, __int128 *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  memset(msg + 4, 0, 32);
  msg[2] = 0u;
  v5 = *a4;
  v16 = a4[1];
  v6 = a4[3];
  v17 = a4[2];
  v18 = v6;
  v19 = a4[4];
  DWORD2(msg[1]) = 2;
  HIDWORD(msg[1]) = a2;
  DWORD1(msg[2]) = 1245184;
  DWORD2(msg[2]) = a3;
  v13 = 1245184;
  v14 = *MEMORY[0x1E69E99E0];
  v15 = v5;
  reply_port = mig_get_reply_port();
  *(&msg[0] + 1) = __PAIR64__(reply_port, a1);
  LODWORD(msg[0]) = -2147478253;
  *&msg[1] = 0x9D3900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v8 = HIDWORD(msg[0]);
  }

  else
  {
    v8 = reply_port;
  }

  v9 = mach_msg(msg, 3, 0x8Cu, 0x2Cu, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) <= 0xE && ((1 << (v9 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(HIDWORD(msg[0]));
    return v10;
  }

  if (v9)
  {
    mig_dealloc_reply_port(HIDWORD(msg[0]));
    return v10;
  }

  if (DWORD1(msg[1]) == 71)
  {
    v10 = 4294966988;
LABEL_17:
    mach_msg_destroy(msg);
    return v10;
  }

  if (DWORD1(msg[1]) != 40349)
  {
    v10 = 4294966995;
    goto LABEL_17;
  }

  v10 = 4294966996;
  if ((msg[0] & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  if (*(msg + 4) != 36)
  {
    goto LABEL_17;
  }

  v10 = LODWORD(msg[2]);
  if (LODWORD(msg[2]))
  {
    goto LABEL_17;
  }

  return v10;
}

uint64_t _CASContentStreamStartStop(int a1, int a2, char a3, uint64_t a4, int a5, int a6, int a7)
{
  v25 = *MEMORY[0x1E69E9840];
  *&msg[20] = 0u;
  *&msg[4] = 0u;
  *&msg[24] = 2;
  *&msg[28] = a2;
  v14 = 1245184;
  v15 = a4;
  v16 = 16777472;
  v17 = 4 * a5;
  v18 = *MEMORY[0x1E69E99E0];
  v19 = a3;
  v20 = 0;
  v21 = 0;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = -2147478253;
  *&msg[16] = 0x9D3A00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = reply_port;
  }

  v10 = mach_msg(msg, 3, 0x50u, 0x2Cu, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(*&msg[12]);
    return v11;
  }

  if (*&msg[20] == 71)
  {
    v11 = 4294966988;
LABEL_18:
    mach_msg_destroy(msg);
    return v11;
  }

  if (*&msg[20] != 40350)
  {
    v11 = 4294966995;
    goto LABEL_18;
  }

  v11 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_18;
  }

  if (*&msg[8])
  {
    goto LABEL_18;
  }

  v11 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_18;
  }

  return v11;
}

void _CASDebugBrightness(int a1, double a2)
{
  *&msg[11] = *MEMORY[0x1E69E9840];
  memset(&msg[1], 0, 40);
  *&msg[6] = *MEMORY[0x1E69E99E0];
  *&msg[8] = a2;
  reply_port = mig_get_reply_port();
  msg[2] = a1;
  msg[3] = reply_port;
  msg[0] = 5395;
  *&msg[4] = 0x9D4A00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v4 = msg[3];
  }

  else
  {
    v4 = reply_port;
  }

  v5 = mach_msg(msg, 3, 0x28u, 0x2Cu, v4, 0, 0);
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg[3]);
  }

  else if (v5)
  {
    mig_dealloc_reply_port(msg[3]);
  }

  else if (msg[5] != 40366 || (msg[0] & 0x80000000) != 0 || msg[1] != 36 || msg[2] || msg[8])
  {
    mach_msg_destroy(msg);
  }
}

void _CASDebugPreset(int a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(&msg[4], 0, 32);
  v7 = 0;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  *&msg[32] = a2;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x9D4B00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v4 = *&msg[12];
  }

  else
  {
    v4 = reply_port;
  }

  v5 = mach_msg(msg, 3, 0x24u, 0x2Cu, v4, 0, 0);
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else if (v5)
  {
    mig_dealloc_reply_port(*&msg[12]);
  }

  else if (*&msg[20] != 40367 || (*msg & 0x80000000) != 0 || *&msg[4] != 36 || *&msg[8] || *&msg[32])
  {
    mach_msg_destroy(msg);
  }
}

void _CASDebugFrameInfo(int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  *&msg[4] = 0;
  *&msg[20] = 0u;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x9D4C00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v3 = *&msg[12];
  }

  else
  {
    v3 = reply_port;
  }

  v4 = mach_msg(msg, 3, 0x18u, 0x2Cu, v3, 0, 0);
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(*&msg[12]);
  }

  else if (*&msg[20] != 40368 || (*msg & 0x80000000) != 0 || *&msg[4] != 36 || *&msg[8] || *&msg[32])
  {
    mach_msg_destroy(msg);
  }
}

uint64_t _CASSetDisplayCloningState(int a1, int a2, int a3, char a4, char a5)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(&msg[4], 0, 32);
  *&msg[28] = a2;
  v7 = 1245184;
  v8 = *MEMORY[0x1E69E99E0];
  v9 = a3;
  v10 = a4;
  v11 = 0;
  v12 = 0;
  v13 = a5;
  v14 = 0;
  v15 = 0;
  *msg = -2147483629;
  *&msg[8] = a1;
  *&msg[20] = 0x100009D59;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 1, 0x3Cu, 0, 0, 0, 0);
}

void _XGetArchivedLocalLayerTree(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 56)
  {
    v11 = -304;
LABEL_10:
    *(a2 + 32) = v11;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return;
  }

  if (*(a1 + 38) << 16 != 1179648)
  {
    v11 = -300;
    goto LABEL_10;
  }

  v3 = *(a1 + 28);
  if (v3)
  {
    v4 = *(a1 + 52);
    v5 = CA::Context::retain_context_with_client_id(*(a1 + 48));
    if (v5)
    {
      v6 = v5;
      v7 = CA::Context::retain_layer(v5);
      if (v7)
      {
        v8 = v7;
        v9 = CAEncodeIOSurfacesAsCGImages;
        CAEncodeIOSurfacesAsCGImages = v4 & 1;
        v10 = CAEncodeLayerTreeWithInfo(v7, 0);
        CAEncodeIOSurfacesAsCGImages = v9;
        CFRelease(v8);
      }

      else
      {
        v10 = 0;
      }

      CA::Context::unref(v6, 0);
    }

    else
    {
      v10 = 0;
    }

    Length = 0;
    v14 = 0u;
    *&msg.msgh_bits = 0x2C00000012;
    msg.msgh_remote_port = v3;
    msg.msgh_local_port = 0;
    msg.msgh_voucher_port = 0;
    msg.msgh_id = 1195461716;
    if (v10)
    {
      msg.msgh_bits = -2147483630;
      LODWORD(v14) = 1;
      *(&v14 + 4) = CFDataGetBytePtr(v10);
      HIDWORD(v14) = 16777472;
      Length = CFDataGetLength(v10);
    }

    v12 = mach_msg(&msg, 1, 0x2Cu, 0, 0, 0, 0);
    if ((v12 - 268435459) <= 1)
    {
      mach_msg_destroy(&msg);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    v12 = 0;
  }

  *(a2 + 32) = v12;
}

void _XDisableAutomaticWirelessDisplayStateControl(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 36)
  {
    v3 = -304;
  }

  else if (*(a1 + 36) || *(a1 + 40) < 0x20u)
  {
    v3 = -309;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 72);
    v10[0] = *(a1 + 56);
    v10[1] = v6;
    if ((CA::Render::Server::audit_token_cache_lookup(v10, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(v10, v7) & 0x20000) != 0)
    {
      v3 = -81182719;
    }

    else
    {
      v9[0] = 0;
      v9[1] = v5;
      CA::Render::post_notification(0x48u, 0, v9, 0);
      if ((v9[0] & 1) == 0)
      {
        if (x_log_get_display_state(void)::once != -1)
        {
          dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
        }

        v8 = x_log_get_display_state(void)::log;
        if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v12 = v5;
          _os_log_error_impl(&dword_183AA6000, v8, OS_LOG_TYPE_ERROR, "Failed to find display %u to disable state control.", buf, 8u);
        }
      }

      v3 = 0;
    }
  }

  v4 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = v3;
  *(a2 + 24) = *v4;
}

void _XGetDisplayDebugProperties(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 36)
  {
    v3 = -304;
  }

  else if (*(a1 + 36) || *(a1 + 40) <= 0x1Fu)
  {
    v3 = -309;
  }

  else
  {
    *(a2 + 36) = 16777473;
    v4 = *(a1 + 32);
    v5 = *(a1 + 72);
    v18[0] = *(a1 + 56);
    v18[1] = v5;
    if ((CA::Render::Server::audit_token_cache_lookup(v18, a2) & 0x80) == 0 && (CA::Render::Server::audit_token_cache_lookup(v18, v6) & 0x20000) == 0 && (CA::Render::Server::audit_token_cache_lookup(v18, v7) & 0x100) != 0)
    {
      v16 = v4;
      theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CA::Render::post_notification(0x47u, 0, &v16, 0);
      if (CFDictionaryGetCount(theDict))
      {
        address = 0;
        Data = CFPropertyListCreateData(*MEMORY[0x1E695E490], theDict, kCFPropertyListBinaryFormat_v1_0, 0, 0);
        if (Data)
        {
          v9 = Data;
          Length = CFDataGetLength(Data);
          vm_allocate(*MEMORY[0x1E69E9A60], &address, (Length + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8], 1);
          v11 = address;
          if (address)
          {
            BytePtr = CFDataGetBytePtr(v9);
            memcpy(v11, BytePtr, Length);
          }

          CFRelease(v9);
        }

        else
        {
          LODWORD(Length) = 0;
        }

        CFRelease(theDict);
        v14 = address;
        *(a2 + 28) = address;
        if (v14)
        {
          v13 = Length;
        }

        else
        {
          v13 = 0;
        }

        *(a2 + 52) = v13;
        if (!v14)
        {
          v3 = 5;
          goto LABEL_7;
        }
      }

      else
      {
        CFRelease(theDict);
        v13 = *(a2 + 52);
      }

      *(a2 + 40) = v13;
      *(a2 + 44) = *MEMORY[0x1E69E99E0];
      *a2 |= 0x80000000;
      *(a2 + 4) = 56;
      *(a2 + 24) = 1;
      return;
    }

    v3 = -81182719;
  }

LABEL_7:
  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

void _XDebugDisplayStateOldInterface(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 36)
  {
    v3 = -304;
  }

  else if (*(a1 + 36) || *(a1 + 40) < 0x20u)
  {
    v3 = -309;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 72);
    v11[0] = *(a1 + 56);
    v11[1] = v6;
    v10 = v5;
    if ((CA::Render::Server::audit_token_cache_lookup(v11, a2) & 0x80) == 0 && (CA::Render::Server::audit_token_cache_lookup(v11, v7) & 0x20000) == 0 && (CA::Render::Server::audit_token_cache_lookup(v11, v8) & 0x100) != 0 && (CA::Render::Server::audit_token_cache_lookup(v11, v9) & 0x10000) != 0)
    {
      CA::Render::post_notification(0x46u, 0, &v10, 0);
      v3 = 0;
    }

    else
    {
      v3 = -81182719;
    }
  }

  v4 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = v3;
  *(a2 + 24) = *v4;
}

void _XCopyDisplayPowerAssertionInfo(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 36)
  {
    v3 = -304;
  }

  else if (*(a1 + 36) || *(a1 + 40) <= 0x1Fu)
  {
    v3 = -309;
  }

  else
  {
    *(a2 + 36) = 16777473;
    v4 = *(a1 + 32);
    v5 = *(a1 + 72);
    v20[0] = *(a1 + 56);
    v20[1] = v5;
    if ((CA::Render::Server::audit_token_cache_lookup(v20, a2) & 0x80) == 0 && (CA::Render::Server::audit_token_cache_lookup(v20, v6) & 0x20000) == 0 && (CA::Render::Server::audit_token_cache_lookup(v20, v7) & 0x100) != 0 && (CA::Render::Server::audit_token_cache_lookup(v20, v8) & 0x10000) != 0)
    {
      __src = 0;
      v18 = 0;
      v19 = 0;
      v16[1] = &__src;
      v16[0] = v4;
      CA::Render::post_notification(0x45u, 0, v16, 0);
      v10 = __src;
      v9 = v18;
      __dst = 0;
      v11 = v18 - __src;
      if (v18 == __src)
      {
        v12 = __src;
      }

      else
      {
        vm_allocate(*MEMORY[0x1E69E9A60], &__dst, (v11 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8], 1);
        v12 = __src;
        if (__dst)
        {
          memcpy(__dst, __src, v11);
          v12 = __src;
        }
      }

      if (v12)
      {
        free(v12);
      }

      v13 = __dst;
      *(a2 + 28) = __dst;
      if (v13)
      {
        v14 = v11;
      }

      else
      {
        v14 = 0;
      }

      *(a2 + 52) = v14;
      if (v9 == v10 || v13)
      {
        *(a2 + 40) = v14;
        *(a2 + 44) = *MEMORY[0x1E69E99E0];
        *a2 |= 0x80000000;
        *(a2 + 4) = 56;
        *(a2 + 24) = 1;
        return;
      }

      v3 = 5;
    }

    else
    {
      v3 = -81182719;
    }
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

uint64_t _XDestroyDisplayPowerAssertion(uint64_t result, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 52)
  {
    if (*(result + 38) << 16 == 1114112)
    {
      if (!*(result + 52) && *(result + 56) > 0x1Fu)
      {
        v4 = *(result + 48);
        v5 = *(result + 28);
        v6 = *(result + 88);
        v7[0] = *(result + 72);
        v7[1] = v6;
        result = CASDestroyDisplayPowerAssertion(v4, v5, v7);
        *(a2 + 32) = result;
        return result;
      }

      v3 = -309;
    }

    else
    {
      v3 = -300;
    }
  }

  else
  {
    v3 = -304;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XCreateDisplayPowerAssertionSync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, audit_token_t *a7)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 60)
  {
    if (*(a1 + 38) << 16 == 1114112)
    {
      if (*(a1 + 60) || *(a1 + 64) < 0x20u)
      {
        result = 4294966987;
      }

      else
      {
        v11 = *(a1 + 48);
        v10 = *(a1 + 52);
        v12 = *(a1 + 28);
        v13 = *(a1 + 56);
        v14 = *(a1 + 96);
        v15[0] = *(a1 + 80);
        v15[1] = v14;
        result = _CreateDisplayPowerAssertion(v11, v10, v12, v13, 1u, v15, a7);
      }
    }

    else
    {
      result = 4294966996;
    }
  }

  else
  {
    result = 4294966992;
  }

  v9 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = result;
  *(a2 + 24) = *v9;
  return result;
}

uint64_t _XSetDisplayCloningState(uint64_t result, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 60)
  {
    if (*(result + 38) << 16 == 1114112)
    {
      if (!*(result + 60) && *(result + 64) > 0x1Fu)
      {
        v4 = *(result + 28);
        v5 = *(result + 48);
        v6 = *(result + 52);
        v7 = *(result + 56);
        v8 = *(result + 96);
        v9[0] = *(result + 80);
        v9[1] = v8;
        result = CASSetDisplayCloningState(v4, v5, v6, v7, v9);
        *(a2 + 32) = result;
        return result;
      }

      v3 = -309;
    }

    else
    {
      v3 = -300;
    }
  }

  else
  {
    v3 = -304;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XGetDisplayStateShmem(uint64_t result, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 32) = 0x13000000000000;
  v4 = *(result + 32);
  v5 = *(result + 72);
  v11[0] = *(result + 56);
  v11[1] = v5;
  result = CA::Render::Server::audit_token_cache_lookup(v11, a2);
  if ((result & 0x80) != 0 || (result = CA::Render::Server::audit_token_cache_lookup(v11, v6), (result & 0x20000) != 0) || (result = CA::Render::Server::audit_token_cache_lookup(v11, v7), (result & 0x10000) == 0))
  {
    v3 = -81182719;
    goto LABEL_7;
  }

  object_handle = 0;
  v9 = v4;
  CA::Render::post_notification(0x40u, 0, &v9, 0);
  result = object_handle;
  if (object_handle)
  {
    result = CA::Render::Shmem::port(object_handle);
    v8 = object_handle;
    *(a2 + 28) = result;
    if (v8)
    {
      v8 = *(v8 + 2);
    }
  }

  else
  {
    v8 = 0;
    *(a2 + 28) = 0;
  }

  *(a2 + 40) = *MEMORY[0x1E69E99E0];
  *(a2 + 48) = v8;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

void _XRequestFramePhaseShift(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 48)
  {
    v3 = -304;
  }

  else
  {
    if (!*(a1 + 48) && *(a1 + 52) > 0x1Fu)
    {
      v4 = *(a1 + 40);
      v5 = 0uLL;
      *(&v5 + 4) = *(a1 + 32);
      v6 = v4;
      CA::Render::post_notification(0x38u, 0, &v5, 0);
      *(a2 + 36) = v5;
      *(a2 + 32) = 0;
      *(a2 + 24) = *MEMORY[0x1E69E99E0];
      *(a2 + 4) = 40;
      return;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

uint64_t _XGetLayerRendererInfo(uint64_t result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 || *(result + 4) != 44)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 44) || *(result + 48) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v4 = *(result + 12);
  v5 = *(result + 32);
  v6 = *(result + 40);
  v7 = *(result + 80);
  v15[0] = *(result + 64);
  v15[1] = v7;
  result = CA::Render::Server::audit_token_cache_lookup(v15, a2);
  if ((result & 0x80) != 0 || (result = CA::Render::Server::audit_token_cache_lookup(v15, v8), (result & 0x20000) != 0))
  {
    v3 = -81182719;
    goto LABEL_7;
  }

  result = CA::Render::Context::context_by_server_port(v4);
  if (!result)
  {
    v3 = 56;
    goto LABEL_7;
  }

  v9 = result;
  pthread_mutex_lock((result + 72));
  *v14 = 0;
  v13 = 0;
  layer_renderer_info = CA::Render::Context::get_layer_renderer_info(v9, v5, v6, &v14[1], v14, &v13);
  if (layer_renderer_info)
  {
    v11 = 0;
    v12 = v14[0];
    *(a2 + 36) = v14[1];
    *(a2 + 40) = v12;
    *(a2 + 44) = v13;
  }

  else
  {
    v11 = 5;
  }

  result = pthread_mutex_unlock((v9 + 72));
  if (atomic_fetch_add((v9 + 8), 0xFFFFFFFF) == 1)
  {
    result = (*(*v9 + 16))(v9);
  }

  *(a2 + 32) = v11;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (layer_renderer_info)
  {
    *(a2 + 4) = 48;
  }

  return result;
}

uint64_t _XImageProviderGetNeededSubImage(uint64_t result, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 || *(result + 4) != 40)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 40) || *(result + 44) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v4 = *(result + 12);
  v5 = *(result + 32);
  v6 = *(result + 76);
  v11[0] = *(result + 60);
  v11[1] = v6;
  result = CA::Render::Server::audit_token_cache_lookup(v11, a2);
  if ((result & 0x80) != 0 || (result = CA::Render::Server::audit_token_cache_lookup(v11, v7), (result & 0x20000) != 0))
  {
    v3 = -81182719;
    goto LABEL_7;
  }

  result = CA::Render::Context::context_by_server_port(v4);
  if (!result)
  {
    v3 = 56;
    goto LABEL_7;
  }

  v8 = result;
  pthread_mutex_lock((result + 72));
  v9 = CA::Render::ImageProvider::needed_subimage(*(v8 + 136), *(v8 + 148), v5, (a2 + 36), (a2 + 40), (a2 + 44), (a2 + 48));
  result = pthread_mutex_unlock((v8 + 72));
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 48;
  }

  if (atomic_fetch_add((v8 + 8), 0xFFFFFFFF) == 1)
  {
    result = (*(*v8 + 16))(v8);
  }

  *(a2 + 32) = v10;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (v9)
  {
    *(a2 + 4) = 52;
  }

  return result;
}

void _XGetServerInfo(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 44)
  {
    v3 = -304;
  }

  else if (*(a1 + 44) || *(a1 + 48) <= 0x1Fu)
  {
    v3 = -309;
  }

  else
  {
    *(a2 + 36) = 16777473;
    v4 = *(a1 + 32);
    v5 = *(a1 + 36);
    v6 = *(a1 + 80);
    v19[0] = *(a1 + 64);
    v19[1] = v6;
    *(a2 + 28) = 0;
    *(a2 + 52) = 0;
    if ((CA::Render::Server::audit_token_cache_lookup(v19, a2) & 0x10) == 0)
    {
      goto LABEL_10;
    }

    if ((CA::Render::Server::audit_token_cache_lookup(v19, v7) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(v19, v8) & 0x20000) != 0)
    {
      v3 = -81182719;
      goto LABEL_7;
    }

    if ((CA::Render::Server::audit_token_cache_lookup(v19, v9) & 0x100) != 0)
    {
      __src = 0;
      v17 = 0;
      v18 = 0;
      v15[1] = v5;
      v15[0] = v4;
      v15[2] = &__src;
      CA::Render::post_notification(0x2Fu, 0, v15, 0);
      v10 = __src;
      address = 0;
      v11 = v17 - __src;
      if (v17 != __src)
      {
        vm_allocate(*MEMORY[0x1E69E9A60], &address, (v11 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8], 1);
        v10 = __src;
        if (address)
        {
          memcpy(address, __src, v11);
          v10 = __src;
        }
      }

      if (v10)
      {
        free(v10);
      }

      v12 = address;
      *(a2 + 28) = address;
      if (v12)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      *(a2 + 52) = v13;
      if (v12)
      {
        *(a2 + 40) = v13;
        *(a2 + 44) = *MEMORY[0x1E69E99E0];
        *a2 |= 0x80000000;
        *(a2 + 4) = 56;
        *(a2 + 24) = 1;
        return;
      }

      v3 = 5;
    }

    else
    {
LABEL_10:
      v3 = 53;
    }
  }

LABEL_7:
  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

void _XSetAXMatrix(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 72)
  {
    v4 = -304;
  }

  else if (*(a1 + 72) || *(a1 + 76) < 0x20u)
  {
    v4 = -309;
  }

  else
  {
    v6 = *(a1 + 108);
    v10[0] = *(a1 + 92);
    v10[1] = v6;
    if ((CA::Render::Server::audit_token_cache_lookup(v10, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(v10, v7) & 0x20000) != 0)
    {
      v4 = -81182719;
    }

    else if ((CA::Render::Server::audit_token_cache_lookup(v10, v8) & 0x100) != 0)
    {
      v9 = *(a1 + 48);
      v11[0] = *(a1 + 32);
      v11[1] = v9;
      v12 = *(a1 + 64);
      CA::Render::post_notification(0x27u, 0, v11, 0);
      v4 = 0;
    }

    else
    {
      v4 = 53;
    }
  }

  v5 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = v4;
  *(a2 + 24) = *v5;
}

uint64_t _XSetDebugMessage(const char *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  result = 4294966992;
  if ((v4 & 0x80000000) == 0)
  {
    v6 = *(a1 + 1);
    if (v6 - 301 >= 0xFFFFFEFF)
    {
      v7 = *(a1 + 9);
      if (v7 <= 0x100)
      {
        v8 = (v7 + 3) & 0xFFFFFFFC;
        if (v6 - 44 >= v7 && v6 == v8 + 44)
        {
          if (v6 >= 0x128)
          {
            v10 = 296;
          }

          else
          {
            v10 = v6;
          }

          if (memchr((a1 + 40), 0, v10 - 40))
          {
            v11 = &a1[(v6 + 3) & 0x3FC];
            if (*v11 || *(v11 + 1) < 0x20u)
            {
              result = 4294966987;
            }

            else
            {
              v12 = *&a1[v8 + 40];
              v13 = *(v11 + 36);
              v15[0] = *(v11 + 20);
              v15[1] = v13;
              result = CASSetDebugMessage(a1 + 40, v12, v15);
            }
          }

          else
          {
            result = 4294966992;
          }
        }
      }
    }
  }

  v14 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = result;
  *(a2 + 24) = *v14;
  return result;
}

void _XDebugFrameInfo(_DWORD *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    v5 = -304;
  }

  else
  {
    v4 = a1[6];
    v3 = a1 + 6;
    if (v4 || v3[1] < 0x20u)
    {
      v5 = -309;
    }

    else
    {
      v7 = *(v3 + 9);
      v11[0] = *(v3 + 5);
      v11[1] = v7;
      if ((CA::Render::Server::audit_token_cache_lookup(v11, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(v11, v8) & 0x20000) != 0)
      {
        v5 = -81182719;
      }

      else if ((CA::Render::Server::audit_token_cache_lookup(v11, v9) & 0x100) != 0)
      {
        global_queue = dispatch_get_global_queue(33, 0);
        dispatch_async(global_queue, &__block_literal_global_229);
        v5 = 0;
      }

      else
      {
        v5 = 53;
      }
    }
  }

  v6 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = v5;
  *(a2 + 24) = *v6;
}

void _XDebugPreset(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 36)
  {
    v3 = -304;
  }

  else if (*(a1 + 36) || *(a1 + 40) < 0x20u)
  {
    v3 = -309;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 72);
    v12[0] = *(a1 + 56);
    v12[1] = v6;
    if ((CA::Render::Server::audit_token_cache_lookup(v12, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(v12, v7) & 0x20000) != 0)
    {
      v3 = -81182719;
    }

    else if ((CA::Render::Server::audit_token_cache_lookup(v12, v8) & 0x100) != 0)
    {
      if (CADeviceDisplaySupportsICC::once != -1)
      {
        dispatch_once(&CADeviceDisplaySupportsICC::once, &__block_literal_global_239);
      }

      if (CADeviceDisplaySupportsICC::supports_icc == 1)
      {
        global_queue = dispatch_get_global_queue(33, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ___ZN2CA12WindowServer11DebugPresetEj_block_invoke;
        block[3] = &__block_descriptor_36_e5_v8__0l;
        v11 = v5;
        dispatch_async(global_queue, block);
      }

      v3 = 0;
    }

    else
    {
      v3 = 53;
    }
  }

  v4 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = v3;
  *(a2 + 24) = *v4;
}

void _XDebugBrightness(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 40)
  {
    v3 = -304;
  }

  else if (*(a1 + 40) || *(a1 + 44) < 0x20u)
  {
    v3 = -309;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 76);
    v11[0] = *(a1 + 60);
    v11[1] = v6;
    if ((CA::Render::Server::audit_token_cache_lookup(v11, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(v11, v7) & 0x20000) != 0)
    {
      v3 = -81182719;
    }

    else if ((CA::Render::Server::audit_token_cache_lookup(v11, v8) & 0x100) != 0)
    {
      global_queue = dispatch_get_global_queue(33, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZN2CA12WindowServer15DebugBrightnessEd_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v5;
      dispatch_async(global_queue, block);
      v3 = 0;
    }

    else
    {
      v3 = 53;
    }
  }

  v4 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = v3;
  *(a2 + 24) = *v4;
}

void _XSetDebugValue(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 40)
  {
    v3 = -304;
  }

  else if (*(a1 + 40) || *(a1 + 44) < 0x20u)
  {
    v3 = -309;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 36);
    v7 = *(a1 + 76);
    v10[0] = *(a1 + 60);
    v10[1] = v7;
    if ((CA::Render::Server::audit_token_cache_lookup(v10, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(v10, v8) & 0x20000) != 0)
    {
      v3 = -81182719;
    }

    else if ((CA::Render::Server::audit_token_cache_lookup(v10, v9) & 0x100) != 0)
    {
      CASetDebugValueFloat(v5, v6);
      v3 = 0;
    }

    else
    {
      v3 = 53;
    }
  }

  v4 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = v3;
  *(a2 + 24) = *v4;
}

void _XGetDebugValue(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 36)
  {
    v3 = -304;
  }

  else if (*(a1 + 36) || *(a1 + 40) <= 0x1Fu)
  {
    v3 = -309;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 72);
    v8[0] = *(a1 + 56);
    v8[1] = v5;
    if ((CA::Render::Server::audit_token_cache_lookup(v8, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(v8, v6) & 0x20000) != 0)
    {
      v3 = -81182719;
    }

    else
    {
      if ((CA::Render::Server::audit_token_cache_lookup(v8, v7) & 0x100) != 0)
      {
        *(a2 + 36) = CAGetDebugValueFloat(v4);
        *(a2 + 32) = 0;
        *(a2 + 24) = *MEMORY[0x1E69E99E0];
        *(a2 + 4) = 40;
        return;
      }

      v3 = 53;
    }
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

void _XSetDebugFlags(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 40)
  {
    v3 = -304;
  }

  else if (*(a1 + 40) || *(a1 + 44) < 0x20u)
  {
    v3 = -309;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 36);
    v7 = *(a1 + 76);
    v10[0] = *(a1 + 60);
    v10[1] = v7;
    if ((CA::Render::Server::audit_token_cache_lookup(v10, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(v10, v8) & 0x20000) != 0)
    {
      v3 = -81182719;
    }

    else if ((CA::Render::Server::audit_token_cache_lookup(v10, v9) & 0x100) != 0)
    {
      CASetDebugFlags(v5, v6);
      v3 = 0;
    }

    else
    {
      v3 = 53;
    }
  }

  v4 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = v3;
  *(a2 + 24) = *v4;
}

uint64_t _XGetDebugFlags(uint64_t result, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v4 = -304;
  }

  else
  {
    v3 = *(result + 24);
    result += 24;
    if (v3 || *(result + 4) <= 0x1Fu)
    {
      v4 = -309;
    }

    else
    {
      v5 = *(result + 36);
      v9[0] = *(result + 20);
      v9[1] = v5;
      result = CA::Render::Server::audit_token_cache_lookup(v9, a2);
      if ((result & 0x80) != 0 || (result = CA::Render::Server::audit_token_cache_lookup(v9, v6), (result & 0x20000) != 0))
      {
        v4 = -81182719;
      }

      else
      {
        result = CA::Render::Server::audit_token_cache_lookup(v9, v7);
        if ((result & 0x100) != 0)
        {
          result = CAGetDebugFlags(v8);
          *(a2 + 32) = 0;
          *(a2 + 36) = result;
          *(a2 + 24) = *MEMORY[0x1E69E99E0];
          *(a2 + 4) = 40;
          return result;
        }

        v4 = 53;
      }
    }
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

void _XClearColorDebugOptions(_DWORD *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    v5 = -304;
  }

  else
  {
    v4 = a1[6];
    v3 = a1 + 6;
    if (v4 || v3[1] < 0x20u)
    {
      v5 = -309;
    }

    else
    {
      v7 = *(v3 + 9);
      v10[0] = *(v3 + 5);
      v10[1] = v7;
      if ((CA::Render::Server::audit_token_cache_lookup(v10, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(v10, v8) & 0x20000) != 0)
      {
        v5 = -81182719;
      }

      else if ((CA::Render::Server::audit_token_cache_lookup(v10, v9) & 0x100) != 0)
      {
        CAClearColorDebugOptions();
        v5 = 0;
      }

      else
      {
        v5 = 53;
      }
    }
  }

  v6 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = v5;
  *(a2 + 24) = *v6;
}

uint64_t _XClearDebugOptions(uint64_t result, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v4 = -304;
  }

  else
  {
    v3 = *(result + 24);
    result += 24;
    if (v3 || *(result + 4) < 0x20u)
    {
      v4 = -309;
    }

    else
    {
      v6 = *(result + 36);
      v10[0] = *(result + 20);
      v10[1] = v6;
      result = CA::Render::Server::audit_token_cache_lookup(v10, a2);
      if ((result & 0x80) != 0 || (result = CA::Render::Server::audit_token_cache_lookup(v10, v7), (result & 0x20000) != 0))
      {
        v4 = -81182719;
      }

      else
      {
        result = CA::Render::Server::audit_token_cache_lookup(v10, v8);
        if ((result & 0x100) != 0)
        {
          v9 = 0;
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
          while (*(&ca_debug_options + dword_183E316B0[v9]) != 1)
          {
            if (++v9 == 43)
            {
              v4 = 0;
              goto LABEL_7;
            }
          }

          v4 = 0;
          options_are_visual = 1;
        }

        else
        {
          v4 = 53;
        }
      }
    }
  }

LABEL_7:
  v5 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = v4;
  *(a2 + 24) = *v5;
  return result;
}

void _XSetDebugOption(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 40)
  {
    v3 = -304;
  }

  else if (*(a1 + 40) || *(a1 + 44) < 0x20u)
  {
    v3 = -309;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 36);
    v7 = *(a1 + 76);
    v10[0] = *(a1 + 60);
    v10[1] = v7;
    if ((CA::Render::Server::audit_token_cache_lookup(v10, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(v10, v8) & 0x20000) != 0)
    {
      v3 = -81182719;
    }

    else if ((CA::Render::Server::audit_token_cache_lookup(v10, v9) & 0x100) != 0)
    {
      CASetDebugOption(v5, v6 != 0);
      v3 = 0;
    }

    else
    {
      v3 = 53;
    }
  }

  v4 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = v3;
  *(a2 + 24) = *v4;
}

uint64_t _XGetDebugOption(uint64_t result, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
  }

  else if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
  }

  else
  {
    v4 = *(result + 32);
    v5 = *(result + 72);
    v8[0] = *(result + 56);
    v8[1] = v5;
    result = CA::Render::Server::audit_token_cache_lookup(v8, a2);
    if ((result & 0x80) != 0 || (result = CA::Render::Server::audit_token_cache_lookup(v8, v6), (result & 0x20000) != 0))
    {
      v3 = -81182719;
    }

    else
    {
      result = CA::Render::Server::audit_token_cache_lookup(v8, v7);
      if ((result & 0x100) != 0)
      {
        result = CAGetDebugOption(v4);
        *(a2 + 32) = 0;
        *(a2 + 36) = result;
        *(a2 + 24) = *MEMORY[0x1E69E99E0];
        *(a2 + 4) = 40;
        return result;
      }

      v3 = 53;
    }
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XGetFrameCounter(uint64_t result, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 || *(result + 4) != 24)
  {
    v4 = -304;
  }

  else
  {
    v3 = *(result + 24);
    result += 24;
    if (v3 || *(result + 4) <= 0x1Fu)
    {
      v4 = -309;
    }

    else
    {
      v5 = *(result + 36);
      v8[0] = *(result + 20);
      v8[1] = v5;
      result = CA::Render::Server::audit_token_cache_lookup(v8, a2);
      if ((result & 0x80) == 0)
      {
        result = CA::Render::Server::audit_token_cache_lookup(v8, v6);
        if ((result & 0x20000) == 0)
        {
          result = CAGetStatsStruct(0);
          v7 = *(result + 20);
          *(a2 + 32) = 0;
          *(a2 + 36) = v7;
          *(a2 + 24) = *MEMORY[0x1E69E99E0];
          *(a2 + 4) = 40;
          return result;
        }
      }

      v4 = -81182719;
    }
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

void _XGetPerformanceInfo(_DWORD *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    v5 = -304;
  }

  else
  {
    v4 = a1[6];
    v3 = a1 + 6;
    if (v4 || v3[1] <= 0x1Fu)
    {
      v5 = -309;
    }

    else
    {
      *(a2 + 36) = 16777473;
      v6 = *(v3 + 9);
      v17[0] = *(v3 + 5);
      v17[1] = v6;
      *(a2 + 28) = 0;
      *(a2 + 52) = 0;
      if ((CA::Render::Server::audit_token_cache_lookup(v17, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(v17, v7) & 0x20000) != 0)
      {
        v5 = -81182719;
      }

      else if ((CA::Render::Server::audit_token_cache_lookup(v17, v8) & 0x100) != 0)
      {
        v9 = *MEMORY[0x1E695E490];
        propertyList = CFArrayCreateMutable(*MEMORY[0x1E695E490], 0, MEMORY[0x1E695E9C0]);
        CA::Render::post_notification(0x2Cu, 0, &propertyList, 0);
        v15 = 0;
        Data = CFPropertyListCreateData(v9, propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
        if (Data)
        {
          v11 = Data;
          Length = CFDataGetLength(Data);
          vm_allocate(*MEMORY[0x1E69E9A60], &v15, (Length + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8], 1);
          v13 = v15;
          if (v15)
          {
            BytePtr = CFDataGetBytePtr(v11);
            memcpy(v13, BytePtr, Length);
          }

          CFRelease(v11);
        }

        else
        {
          LODWORD(Length) = 0;
        }

        CFRelease(propertyList);
        if (v15)
        {
          *(a2 + 28) = v15;
          *(a2 + 52) = Length;
          *(a2 + 40) = Length;
          *(a2 + 44) = *MEMORY[0x1E69E99E0];
          *a2 |= 0x80000000;
          *(a2 + 4) = 56;
          *(a2 + 24) = 1;
          return;
        }

        v5 = 5;
      }

      else
      {
        v5 = 53;
      }
    }
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

void _XPostPowerLog(_DWORD *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    v5 = -304;
  }

  else
  {
    v4 = a1[6];
    v3 = a1 + 6;
    if (v4 || v3[1] < 0x20u)
    {
      v5 = -309;
    }

    else
    {
      v7 = *(v3 + 9);
      v10[0] = *(v3 + 5);
      v10[1] = v7;
      if ((CA::Render::Server::audit_token_cache_lookup(v10, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(v10, v8) & 0x20000) != 0)
      {
        v5 = -81182719;
      }

      else if ((CA::Render::Server::audit_token_cache_lookup(v10, v9) & 0x100) != 0)
      {
        CA::Render::post_notification(0x29u, 0, 0, 0);
        v5 = 0;
      }

      else
      {
        v5 = 53;
      }
    }
  }

  v6 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = v5;
  *(a2 + 24) = *v6;
}

void _XGetUpdateHistograms(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 36)
  {
    v3 = -304;
  }

  else if (*(a1 + 36) || *(a1 + 40) <= 0x1Fu)
  {
    v3 = -309;
  }

  else
  {
    *(a2 + 36) = 16777473;
    v4 = *(a1 + 32);
    v5 = *(a1 + 72);
    v19[0] = *(a1 + 56);
    v19[1] = v5;
    *(a2 + 28) = 0;
    *(a2 + 52) = 0;
    if ((CA::Render::Server::audit_token_cache_lookup(v19, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(v19, v6) & 0x20000) != 0)
    {
      v3 = -81182719;
    }

    else if ((CA::Render::Server::audit_token_cache_lookup(v19, v7) & 0x100) != 0)
    {
      v18 = 0;
      v8 = *MEMORY[0x1E695E490];
      propertyList = CFArrayCreateMutable(*MEMORY[0x1E695E490], 0, MEMORY[0x1E695E9C0]);
      v18 = v4 != 0;
      CA::Render::post_notification(0x28u, 0, &propertyList, 0);
      address = 0;
      Data = CFPropertyListCreateData(v8, propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      if (Data)
      {
        v10 = Data;
        Length = CFDataGetLength(Data);
        vm_allocate(*MEMORY[0x1E69E9A60], &address, (Length + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8], 1);
        v12 = address;
        if (address)
        {
          BytePtr = CFDataGetBytePtr(v10);
          memcpy(v12, BytePtr, Length);
        }

        CFRelease(v10);
      }

      else
      {
        LODWORD(Length) = 0;
      }

      CFRelease(propertyList);
      v14 = address;
      *(a2 + 28) = address;
      if (v14)
      {
        v15 = Length;
      }

      else
      {
        v15 = 0;
      }

      *(a2 + 52) = v15;
      if (v14)
      {
        *(a2 + 40) = v15;
        *(a2 + 44) = *MEMORY[0x1E69E99E0];
        *a2 |= 0x80000000;
        *(a2 + 4) = 56;
        *(a2 + 24) = 1;
        return;
      }

      v3 = 5;
    }

    else
    {
      v3 = 53;
    }
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

void _XPurgeServer(_DWORD *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    v5 = -304;
  }

  else
  {
    v4 = a1[6];
    v3 = a1 + 6;
    if (v4 || v3[1] < 0x20u)
    {
      v5 = -309;
    }

    else
    {
      v7 = *(v3 + 9);
      v9[0] = *(v3 + 5);
      v9[1] = v7;
      if ((CA::Render::Server::audit_token_cache_lookup(v9, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(v9, v8) & 0x20000) != 0)
      {
        v5 = -81182719;
      }

      else
      {
        CA::Render::post_notification(0x26u, 0, 0, 0);
        v5 = 0;
      }
    }
  }

  v6 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = v5;
  *(a2 + 24) = *v6;
}

uint64_t _XContentStreamReleaseSurf(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 52)
  {
    if (*(a1 + 38) << 16 == 1114112)
    {
      if (*(a1 + 52) || *(a1 + 56) < 0x20u)
      {
        result = 4294966987;
      }

      else
      {
        v5 = *(a1 + 28);
        v6 = *(a1 + 48);
        v7 = *(a1 + 88);
        v8[0] = *(a1 + 72);
        v8[1] = v7;
        result = CASContentStreamReleaseSurf(v5, v6, v8);
      }
    }

    else
    {
      result = 4294966996;
    }
  }

  else
  {
    result = 4294966992;
  }

  v4 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = result;
  *(a2 + 24) = *v4;
  return result;
}

uint64_t _XContentStreamStartStop(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 2 && *(a1 + 4) == 80)
  {
    if (*(a1 + 38) << 16 == 1114112 && *(a1 + 51) == 1 && (v3 = *(a1 + 52) >> 2, v3 == *(a1 + 68)))
    {
      if (*(a1 + 80) || *(a1 + 84) < 0x20u)
      {
        result = 4294966987;
      }

      else
      {
        v6 = *(a1 + 28);
        v7 = *(a1 + 40);
        v8 = *(a1 + 72);
        v9 = *(a1 + 76);
        v10 = *(a1 + 116);
        v11[0] = *(a1 + 100);
        v11[1] = v10;
        result = CASContentStreamStartStop(v6, v7, v3, v8, v9, v11);
      }
    }

    else
    {
      result = 4294966996;
    }
  }

  else
  {
    result = 4294966992;
  }

  v5 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = result;
  *(a2 + 24) = *v5;
  return result;
}

uint64_t _XContentStreamModify(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 2 && *(a1 + 4) == 140)
  {
    if (*(a1 + 38) << 16 == 1114112 && *(a1 + 50) << 16 == 1114112)
    {
      if (*(a1 + 140) || *(a1 + 144) < 0x20u)
      {
        result = 4294966987;
      }

      else
      {
        v5 = *(a1 + 28);
        v6 = *(a1 + 40);
        v7 = *(a1 + 76);
        v8 = *(a1 + 108);
        v11[2] = *(a1 + 92);
        v11[3] = v8;
        v11[4] = *(a1 + 124);
        v11[0] = *(a1 + 60);
        v11[1] = v7;
        v9 = *(a1 + 176);
        v10[0] = *(a1 + 160);
        v10[1] = v9;
        result = CASContentStreamModify(v5, v6, v11, v10);
      }
    }

    else
    {
      result = 4294966996;
    }
  }

  else
  {
    result = 4294966992;
  }

  v4 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = result;
  *(a2 + 24) = *v4;
  return result;
}

void _XFlipBookModify(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 44)
  {
    v3 = -304;
  }

  else if (*(a1 + 44) || *(a1 + 48) < 0x20u)
  {
    v3 = -309;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 80);
    v10[0] = *(a1 + 64);
    v10[1] = v7;
    if ((CA::Render::Server::audit_token_cache_lookup(v10, a2) & 0x40) != 0)
    {
      v8 = v5;
      v9 = v6;
      CA::Render::post_notification(0x12u, 0, &v8, 0);
      v3 = 0;
    }

    else
    {
      v3 = 53;
    }
  }

  v4 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = v3;
  *(a2 + 24) = *v4;
}

void _XFlipBookCancel(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 40)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(a1 + 40) || *(a1 + 44) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return;
  }

  *(a2 + 32) = 0x11000000000000;
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);
  v6 = *(a1 + 76);
  v12[0] = *(a1 + 60);
  v12[1] = v6;
  if ((CA::Render::Server::audit_token_cache_lookup(v12, a2) & 0x40) == 0)
  {
    v3 = 53;
    goto LABEL_7;
  }

  v7 = a2 + 28;
  v10 = 0;
  v9 = v4;
  if (!v5)
  {
    v7 = 0;
  }

  v11 = v7;
  CA::Render::post_notification(0x11u, 0, &v9, 0);
  v8 = v10;
  *(a2 + 40) = *MEMORY[0x1E69E99E0];
  *(a2 + 48) = v8;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
}

void _XFlipBookCopyCurrentFrame(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 36)
  {
    v3 = -304;
  }

  else if (*(a1 + 36) || *(a1 + 40) <= 0x1Fu)
  {
    v3 = -309;
  }

  else
  {
    *(a2 + 32) = 0x11000000000000;
    v4 = *(a1 + 32);
    v5 = *(a1 + 72);
    v10[0] = *(a1 + 56);
    v10[1] = v5;
    if ((CA::Render::Server::audit_token_cache_lookup(v10, a2) & 0x40) != 0)
    {
      v8 = 0;
      v7 = v4;
      v9 = a2 + 28;
      CA::Render::post_notification(0x10u, 0, &v7, 0);
      v6 = v8;
      *(a2 + 40) = *MEMORY[0x1E69E99E0];
      *(a2 + 48) = v6;
      *a2 |= 0x80000000;
      *(a2 + 4) = 56;
      *(a2 + 24) = 1;
      return;
    }

    v3 = 53;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

void _XFlipBookQueryMemoryUsage(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 36)
  {
    v3 = -304;
  }

  else if (*(a1 + 36) || *(a1 + 40) <= 0x1Fu)
  {
    v3 = -309;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 72);
    v8[0] = *(a1 + 56);
    v8[1] = v5;
    if ((CA::Render::Server::audit_token_cache_lookup(v8, a2) & 0x40) != 0)
    {
      v7 = 0;
      v6 = v4;
      CA::Render::post_notification(0xFu, 0, &v6, 0);
      *(a2 + 36) = v7;
      *(a2 + 32) = 0;
      *(a2 + 24) = *MEMORY[0x1E69E99E0];
      *(a2 + 4) = 44;
      return;
    }

    v3 = 53;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

double _XFlipBookQueryFrame(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 44)
  {
    v3 = -304;
  }

  else if (*(a1 + 44) || *(a1 + 48) <= 0x1Fu)
  {
    v3 = -309;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 36);
    v6 = *(a1 + 80);
    v10[0] = *(a1 + 64);
    v10[1] = v6;
    if ((CA::Render::Server::audit_token_cache_lookup(v10, a2) & 0x40) != 0)
    {
      v9 = 0u;
      v8[0] = v4;
      v8[1] = v5;
      CA::Render::post_notification(0xEu, 0, v8, 0);
      result = *&v9;
      *(a2 + 36) = v9;
      *(a2 + 32) = 0;
      *(a2 + 24) = *MEMORY[0x1E69E99E0];
      *(a2 + 4) = 52;
      return result;
    }

    v3 = 53;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XFlipBookRender(uint64_t result, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 68)
  {
    if (*(result + 38) << 16 == 1114112)
    {
      if (!*(result + 68) && *(result + 72) > 0x1Fu)
      {
        v4 = *(result + 28);
        v5 = *(result + 48);
        v6 = *(result + 52);
        v7 = *(result + 56);
        v8 = *(result + 64);
        v9 = *(result + 104);
        v10[0] = *(result + 88);
        v10[1] = v9;
        result = CASFlipBookRender(v4, v5, v6, v7, v8, v10);
        *(a2 + 32) = result;
        return result;
      }

      v3 = -309;
    }

    else
    {
      v3 = -300;
    }
  }

  else
  {
    v3 = -304;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XUnregisterForDisallowedLayersNotification(uint64_t result, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 52)
  {
    if (*(result + 38) << 16 == 1114112)
    {
      if (!*(result + 52) && *(result + 56) > 0x1Fu)
      {
        v4 = *(result + 12);
        v5 = *(result + 28);
        v6 = *(result + 48);
        v7 = *(result + 88);
        v8[0] = *(result + 72);
        v8[1] = v7;
        result = CASUnregisterForDisallowedLayersNotification(v4, v5, v6, v8);
        *(a2 + 32) = result;
        return result;
      }

      v3 = -309;
    }

    else
    {
      v3 = -300;
    }
  }

  else
  {
    v3 = -304;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XRegisterForDisallowedLayersNotification(uint64_t result, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 52)
  {
    if (*(result + 38) << 16 == 1114112)
    {
      if (!*(result + 52) && *(result + 56) > 0x1Fu)
      {
        v4 = *(result + 28);
        v5 = *(result + 48);
        v6 = *(result + 88);
        v7[0] = *(result + 72);
        v7[1] = v6;
        result = CASRegisterForDisallowedLayersNotification(v4, v5, v7);
        *(a2 + 32) = result;
        return result;
      }

      v3 = -309;
    }

    else
    {
      v3 = -300;
    }
  }

  else
  {
    v3 = -304;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XSetDisplayLatency(int *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  result = 4294966992;
  if ((v4 & 0x80000000) == 0)
  {
    v6 = a1[1];
    if (v6 - 125 >= 0xFFFFFFBF)
    {
      v7 = a1[10];
      if (v7 <= 0x40)
      {
        v8 = (v7 + 3) & 0xFFFFFFFC;
        if (v6 - 60 >= v7 && v6 == v8 + 60)
        {
          if (v6 >= 0x6C)
          {
            v10 = 108;
          }

          else
          {
            v10 = v6;
          }

          if (memchr(a1 + 11, 0, v10 - 44))
          {
            v11 = a1 + ((v6 + 3) & 0xFC);
            if (*v11 || *(v11 + 4) < 0x20u)
            {
              result = 4294966987;
            }

            else
            {
              v12 = a1[8];
              v13 = *(a1 + v8 + 52);
              v14 = *(a1 + v8 + 44);
              v15 = *(v11 + 36);
              v17[0] = *(v11 + 20);
              v17[1] = v15;
              result = CASSetDisplayLatency(v12, (a1 + 11), v14, v17, v13);
            }
          }

          else
          {
            result = 4294966992;
          }
        }
      }
    }
  }

  v16 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = result;
  *(a2 + 24) = *v16;
  return result;
}

void _XSetDisplayUserPreferences(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 52)
  {
    v3 = -304;
  }

  else if (*(a1 + 52) || *(a1 + 56) < 0x20u)
  {
    v3 = -309;
  }

  else
  {
    v3 = -81182719;
    v5 = *(a1 + 32);
    v6 = *(a1 + 36);
    v7 = *(a1 + 40);
    v8 = *(a1 + 44);
    v9 = *(a1 + 48);
    v10 = *(a1 + 88);
    v16[0] = *(a1 + 72);
    v16[1] = v10;
    if ((CA::Render::Server::audit_token_cache_lookup(v16, a2) & 0x80) == 0 && (CA::Render::Server::audit_token_cache_lookup(v16, v11) & 0x20000) == 0)
    {
      v12[0] = 0;
      v12[1] = v5;
      v12[2] = v6 != 0;
      v12[3] = v7;
      v15 = 0;
      v13 = v8 != 0;
      v14 = v9 != 0;
      CA::Render::post_notification(0x22u, 0, v12, 0);
      if (LOBYTE(v12[0]))
      {
        v3 = 0;
      }

      else
      {
        v3 = 56;
      }
    }
  }

  v4 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = v3;
  *(a2 + 24) = *v4;
}

uint64_t _XSetDisplayPresetProperties(uint64_t result, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 88)
  {
    if (*(result + 38) << 16 == 1114112)
    {
      if (!*(result + 88) && *(result + 92) > 0x1Fu)
      {
        v4 = *(result + 48);
        v5 = *(result + 52);
        v6 = *(result + 56);
        v7 = *(result + 64);
        v8 = *(result + 72);
        v9 = *(result + 80);
        v10 = *(result + 28);
        v11 = *(result + 124);
        v12[0] = *(result + 108);
        v12[1] = v11;
        result = CASSetDisplayPresetProperties(v4, v5, v10, v12, v6, v7, v8, v9);
        *(a2 + 32) = result;
        return result;
      }

      v3 = -309;
    }

    else
    {
      v3 = -300;
    }
  }

  else
  {
    v3 = -304;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XSetDisplayProperties(uint64_t result, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 100)
  {
    if (*(result + 38) << 16 == 1114112)
    {
      if (!*(result + 100) && *(result + 104) > 0x1Fu)
      {
        v4 = *(result + 12);
        v5 = *(result + 48);
        v6 = *(result + 52);
        v7 = *(result + 64);
        v8 = *(result + 68);
        v9 = *(result + 72);
        v10 = *(result + 76);
        v11 = *(result + 80);
        v12 = *(result + 84);
        v13 = *(result + 88);
        v14 = *(result + 92);
        v15 = *(result + 96);
        v16 = *(result + 28);
        v17 = *(result + 56);
        v18 = *(result + 136);
        v19[0] = *(result + 120);
        v19[1] = v18;
        result = CASSetDisplayProperties(v4, v5, v6, v17, v7, v8, v9, v12, v10, v11, v13, v14, v15, v16, v19);
        *(a2 + 32) = result;
        return result;
      }

      v3 = -309;
    }

    else
    {
      v3 = -300;
    }
  }

  else
  {
    v3 = -304;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

void _XGetVsyncOffSupportsRGBCompression(_DWORD *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    v3 = -304;
  }

  else
  {
    if (!a1[6] && a1[7] > 0x1Fu)
    {
      v4 = 0;
      CA::Render::post_notification(0x1Fu, 0, &v4, 0);
      *(a2 + 36) = v4;
      *(a2 + 32) = 0;
      *(a2 + 24) = *MEMORY[0x1E69E99E0];
      *(a2 + 4) = 40;
      return;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

float _XGetAutoLuminanceBoost(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 36)
  {
    v3 = -304;
  }

  else if (*(a1 + 36) || *(a1 + 40) <= 0x1Fu)
  {
    v3 = -309;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 72);
    v10[0] = *(a1 + 56);
    v10[1] = v5;
    if ((CA::Render::Server::audit_token_cache_lookup(v10, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(v10, v6) & 0x20000) != 0)
    {
      v3 = -81182719;
    }

    else
    {
      v8[0] = 0;
      v8[1] = v4;
      v9 = 0.0;
      CA::Render::post_notification(0x1Eu, 0, v8, 0);
      if (v8[0])
      {
        result = v9;
        *(a2 + 36) = v9;
        *(a2 + 32) = 0;
        *(a2 + 24) = *MEMORY[0x1E69E99E0];
        *(a2 + 4) = 40;
        return result;
      }

      v3 = 56;
    }
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

void _XGetLogicalBounds(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(a1 + 36) || *(a1 + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return;
  }

  *(a2 + 36) = 16777473;
  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  v12[0] = *(a1 + 56);
  v12[1] = v5;
  if ((CA::Render::Server::audit_token_cache_lookup(v12, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(v12, v6) & 0x20000) != 0)
  {
    v3 = -81182719;
    goto LABEL_7;
  }

  memset(v11, 0, 40);
  DWORD1(v11[0]) = v4;
  CA::Render::post_notification(0x1Du, 0, v11, 0);
  if (LOBYTE(v11[0]) != 1)
  {
    v3 = 56;
    goto LABEL_7;
  }

  address = 0;
  vm_allocate(*MEMORY[0x1E69E9A60], &address, (*MEMORY[0x1E69E9AC8] + 31) & -*MEMORY[0x1E69E9AC8], 1);
  v7 = address;
  if (address)
  {
    v8 = *(&v11[1] + 8);
    *address = *(v11 + 8);
    *(v7 + 16) = v8;
    v9 = 32;
  }

  else
  {
    v9 = 0;
  }

  *(a2 + 28) = v7;
  *(a2 + 52) = v9;
  *(a2 + 40) = v9;
  *(a2 + 44) = *MEMORY[0x1E69E99E0];
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
}

void _XFlushIRDC(_DWORD *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    v5 = -304;
    goto LABEL_7;
  }

  v4 = a1[6];
  v3 = a1 + 6;
  if (v4 || v3[1] <= 0x1Fu)
  {
    v5 = -309;
LABEL_7:
    *(a2 + 32) = v5;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return;
  }

  v6 = *(v3 + 9);
  v10[0] = *(v3 + 5);
  v10[1] = v6;
  if ((CA::Render::Server::audit_token_cache_lookup(v10, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(v10, v7) & 0x20000) != 0)
  {
    v9 = -81182719;
  }

  else if ((CA::Render::Server::audit_token_cache_lookup(v10, v8) & 0x200) != 0)
  {
    CA::Render::post_notification(0x19u, 0, 0, 0);
    v9 = 0;
  }

  else
  {
    v9 = 5;
  }

  *(a2 + 32) = v9;
}

uint64_t _XCaptureDisplayContextList(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) == 0)
  {
LABEL_2:
    result = 4294966992;
    goto LABEL_21;
  }

  v5 = *(a1 + 24);
  result = 4294966992;
  if (v5 == 3)
  {
    v6 = *(a1 + 4);
    if (v6 - 377 >= 0xFFFFFEFF)
    {
      if (*(a1 + 39) != 1 || *(a1 + 54) << 16 != 1114112 || *(a1 + 67) != 1)
      {
        goto LABEL_20;
      }

      v7 = *(a1 + 84);
      if (v7 > 0x100)
      {
        goto LABEL_21;
      }

      if (v6 - 120 < v7)
      {
        goto LABEL_21;
      }

      v8 = (v7 + 3) & 0xFFFFFFFC;
      if (v6 != v8 + 120)
      {
        goto LABEL_21;
      }

      v9 = a1 + v8;
      v10 = *(a1 + 40) >> 2;
      if (v10 != *(v9 + 88) || (v11 = v9 - 256, v12 = *(a1 + 68) >> 7, v12 != *(v9 + 112)))
      {
LABEL_20:
        result = 4294966996;
        goto LABEL_21;
      }

      if (v6 >= 0x158)
      {
        v13 = 344;
      }

      else
      {
        v13 = v6;
      }

      if (!memchr((a1 + 88), 0, v13 - 88))
      {
        goto LABEL_2;
      }

      v14 = ((v6 + 3) & 0x3FC) + a1;
      if (*v14 || *(v14 + 4) < 0x20u)
      {
        result = 4294966987;
      }

      else
      {
        v16 = *(a1 + 28);
        v17 = *(v11 + 348);
        v18 = *(a1 + 44);
        v19 = *(v11 + 352);
        v20 = *(v11 + 356);
        v21 = *(v11 + 360);
        v22 = *(a1 + 56);
        v23 = *(v11 + 372);
        v24 = *(v14 + 36);
        v25[0] = *(v14 + 20);
        v25[1] = v24;
        result = CASCaptureDisplayContextList((a1 + 88), v16, v10, v17, v18, v19, v20, v22, v21, v12, v23, v25);
      }
    }
  }

LABEL_21:
  v15 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = result;
  *(a2 + 24) = *v15;
  return result;
}

uint64_t _XCaptureDisplay(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) == 0)
  {
LABEL_2:
    result = 4294966992;
    goto LABEL_3;
  }

  v6 = *(a1 + 24);
  result = 4294966992;
  if (v6 == 2)
  {
    v7 = *(a1 + 4);
    if (v7 - 493 >= 0xFFFFFEFF)
    {
      if (*(a1 + 39) != 1 || *(a1 + 54) << 16 != 1114112)
      {
        goto LABEL_19;
      }

      v8 = *(a1 + 68);
      if (v8 > 0x100)
      {
        goto LABEL_3;
      }

      if (v7 - 236 < v8)
      {
        goto LABEL_3;
      }

      v9 = (v8 + 3) & 0xFFFFFFFC;
      if (v7 != v9 + 236)
      {
        goto LABEL_3;
      }

      v10 = a1 + v9;
      v11 = (*(a1 + 40) >> 2);
      if (v11 != *(v10 + 72))
      {
LABEL_19:
        result = 4294966996;
        goto LABEL_3;
      }

      if (v7 >= 0x148)
      {
        v12 = 328;
      }

      else
      {
        v12 = v7;
      }

      if (!memchr((a1 + 72), 0, v12 - 72))
      {
        goto LABEL_2;
      }

      v13 = ((v7 + 3) & 0x3FC) + a1;
      if (*v13 || *(v13 + 4) < 0x20u)
      {
        result = 4294966987;
      }

      else
      {
        v14 = *(a1 + 28);
        v15 = *(v10 + 76);
        v16 = *(v10 + 80);
        v17 = *(a1 + 44);
        v18 = *(v10 + 84);
        v19 = *(v10 + 88);
        v20 = *(v10 + 92);
        v21 = *(v10 + 228);
        v22 = *(v10 + 232);
        v23 = *(v13 + 36);
        v24[0] = *(v13 + 20);
        v24[1] = v23;
        result = CASCaptureDisplay((a1 + 72), v14, v11, v15, v16, v17, v18, v19, v20, (v10 + 100), v21, v22, v24);
      }
    }
  }

LABEL_3:
  v4 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = result;
  *(a2 + 24) = *v4;
  return result;
}

uint64_t _XRenderDisplayContextListShmem(uint64_t result, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = result;
  v3 = -304;
  if (*(result + 24) != 3)
  {
    goto LABEL_21;
  }

  v5 = *(result + 4);
  if (v5 - 409 < 0xFFFFFEFF)
  {
    goto LABEL_21;
  }

  if (*(result + 39) != 1 || *(result + 54) << 16 != 1114112 || *(result + 67) != 1)
  {
    goto LABEL_20;
  }

  v6 = *(result + 84);
  if (v6 > 0x100)
  {
LABEL_2:
    v3 = -304;
LABEL_21:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v3 = -304;
  if (v5 - 152 < v6)
  {
    goto LABEL_21;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v5 != v7 + 152)
  {
    goto LABEL_21;
  }

  v8 = result + v7;
  v9 = *(result + 40) >> 2;
  if (v9 != *(v8 + 88) || (v10 = v8 - 256, v11 = *(result + 68) >> 7, v11 != *(v8 + 144)))
  {
LABEL_20:
    v3 = -300;
    goto LABEL_21;
  }

  if (v5 >= 0x158)
  {
    v12 = 344;
  }

  else
  {
    v12 = v5;
  }

  result = memchr((result + 88), 0, v12 - 88);
  if (!result)
  {
    goto LABEL_2;
  }

  v13 = ((v5 + 3) & 0x3FC) + v4;
  if (*v13 || *(v13 + 4) <= 0x1Fu)
  {
    v3 = -309;
    goto LABEL_21;
  }

  v14 = *(v4 + 28);
  v15 = *(v10 + 348);
  v16 = *(v10 + 352);
  v17 = *(v10 + 356);
  v18 = *(v4 + 44);
  v19 = *(v10 + 364);
  v20 = *(v10 + 380);
  v21 = *(v10 + 388);
  v22 = *(v10 + 392);
  v23 = *(v4 + 56);
  v24 = *(v10 + 404);
  v25 = *(v13 + 36);
  v26[0] = *(v13 + 20);
  v26[1] = v25;
  result = CASRenderDisplayContextListShmem((v4 + 88), v14, v9, v15, v16, v17, v18, v19, v22, v20, SHIDWORD(v20), v21, v23, v11, v24, (a2 + 36), v26);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

uint64_t _XRenderDisplayContextListSurface(uint64_t result, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = result;
  v3 = -304;
  if (*(result + 24) != 4)
  {
    goto LABEL_22;
  }

  v5 = *(result + 4);
  if (v5 - 385 < 0xFFFFFEFF)
  {
    goto LABEL_22;
  }

  if (*(result + 39) != 1 || *(result + 54) << 16 != 1114112 || *(result + 66) << 16 != 1114112 || *(result + 79) != 1)
  {
    goto LABEL_21;
  }

  v6 = *(result + 96);
  if (v6 > 0x100)
  {
LABEL_2:
    v3 = -304;
LABEL_22:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v3 = -304;
  if (v5 - 128 < v6)
  {
    goto LABEL_22;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v5 != v7 + 128)
  {
    goto LABEL_22;
  }

  v8 = result + v7;
  v9 = *(result + 40) >> 2;
  if (v9 != *(v8 + 100) || (v10 = v8 - 256, v11 = *(result + 80) >> 7, v11 != *(v8 + 120)))
  {
LABEL_21:
    v3 = -300;
    goto LABEL_22;
  }

  if (v5 >= 0x164)
  {
    v12 = 356;
  }

  else
  {
    v12 = v5;
  }

  result = memchr((result + 100), 0, v12 - 100);
  if (!result)
  {
    goto LABEL_2;
  }

  v13 = ((v5 + 3) & 0x3FC) + v4;
  if (*v13 || *(v13 + 4) <= 0x1Fu)
  {
    v3 = -309;
    goto LABEL_22;
  }

  v14 = *(v4 + 28);
  v15 = *(v4 + 44);
  v16 = *(v4 + 56);
  v17 = *(v10 + 360);
  v18 = *(v10 + 364);
  v19 = *(v10 + 368);
  v20 = *(v4 + 68);
  v21 = *(v10 + 380);
  v22 = *(v13 + 36);
  v23[0] = *(v13 + 20);
  v23[1] = v22;
  result = CASRenderDisplayContextListSurface((v4 + 100), v14, v9, v15, v16, v17, v18, v20, v19, v11, v21, (a2 + 36), v23);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

uint64_t _XRenderDisplayLayerShmem(uint64_t result, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = result;
  v3 = -304;
  if (*(result + 24) != 1)
  {
    goto LABEL_3;
  }

  v5 = *(result + 4);
  if (v5 - 509 < 0xFFFFFEFF)
  {
    goto LABEL_3;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v3 = -300;
    goto LABEL_3;
  }

  v6 = *(result + 52);
  if (v6 > 0x100)
  {
    goto LABEL_2;
  }

  v3 = -304;
  if (v5 - 252 < v6)
  {
    goto LABEL_3;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v5 != v7 + 252)
  {
    goto LABEL_3;
  }

  v8 = v5 >= 0x138 ? 312 : v5;
  result = memchr((result + 56), 0, v8 - 56);
  if (!result)
  {
LABEL_2:
    v3 = -304;
LABEL_3:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v9 = ((v5 + 3) & 0x3FC) + v4;
  if (*v9 || *(v9 + 4) <= 0x1Fu)
  {
    v3 = -309;
    goto LABEL_3;
  }

  v10 = *(v4 + v7 + 56);
  v11 = *(v4 + v7 + 60);
  v12 = *(v4 + v7 + 68);
  v13 = *(v4 + v7 + 72);
  v14 = *(v4 + v7 + 76);
  v15 = *(v4 + 28);
  v16 = *(v4 + v7 + 84);
  v17 = *(v4 + v7 + 100);
  v18 = *(v4 + v7 + 108);
  v19 = *(v4 + v7 + 112);
  v20 = *(v4 + v7 + 248);
  v21 = *(v9 + 36);
  v22[0] = *(v9 + 20);
  v22[1] = v21;
  result = CASRenderDisplayLayerShmem((v4 + 56), v10, v11, v12, v13, v14, v15, v16, v19, v17, SHIDWORD(v17), v18, (v4 + v7 + 120), v20, (a2 + 36), v22);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

uint64_t _XRenderDisplayLayerSurface(uint64_t result, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = result;
  v3 = -304;
  if (*(result + 24) != 2)
  {
    goto LABEL_3;
  }

  v5 = *(result + 4);
  if (v5 - 485 < 0xFFFFFEFF)
  {
    goto LABEL_3;
  }

  if (*(result + 38) << 16 != 1114112 || *(result + 50) << 16 != 1114112)
  {
    v3 = -300;
    goto LABEL_3;
  }

  v6 = *(result + 64);
  if (v6 > 0x100)
  {
    goto LABEL_2;
  }

  v3 = -304;
  if (v5 - 228 < v6)
  {
    goto LABEL_3;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v5 != v7 + 228)
  {
    goto LABEL_3;
  }

  v8 = v5 >= 0x144 ? 324 : v5;
  result = memchr((result + 68), 0, v8 - 68);
  if (!result)
  {
LABEL_2:
    v3 = -304;
LABEL_3:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v9 = ((v5 + 3) & 0x3FC) + v4;
  if (*v9 || *(v9 + 4) <= 0x1Fu)
  {
    v3 = -309;
    goto LABEL_3;
  }

  v10 = *(v4 + v7 + 68);
  v11 = *(v4 + v7 + 72);
  v12 = *(v4 + 28);
  v13 = *(v4 + 40);
  v14 = *(v4 + v7 + 80);
  v15 = *(v4 + v7 + 84);
  v16 = *(v4 + v7 + 88);
  v17 = *(v4 + v7 + 224);
  v18 = *(v9 + 36);
  v19[0] = *(v9 + 20);
  v19[1] = v18;
  result = CASRenderDisplayLayerSurface((v4 + 68), v10, v11, v12, v13, v14, v15, (v4 + v7 + 96), v16, v17, (a2 + 36), v19);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

uint64_t _XRenderDisplayShmem(uint64_t result, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = result;
  v3 = -304;
  if (*(result + 24) != 2)
  {
    goto LABEL_3;
  }

  v5 = *(result + 4);
  if (v5 - 521 < 0xFFFFFEFF)
  {
    goto LABEL_3;
  }

  if (*(result + 39) != 1 || *(result + 54) << 16 != 1114112)
  {
    goto LABEL_20;
  }

  v6 = *(result + 68);
  if (v6 > 0x100)
  {
LABEL_2:
    v3 = -304;
LABEL_3:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v3 = -304;
  if (v5 - 264 < v6)
  {
    goto LABEL_3;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v5 != v7 + 264)
  {
    goto LABEL_3;
  }

  v8 = result + v7;
  v9 = (*(result + 40) >> 2);
  if (v9 != *(v8 + 72))
  {
LABEL_20:
    v3 = -300;
    goto LABEL_3;
  }

  if (v5 >= 0x148)
  {
    v10 = 328;
  }

  else
  {
    v10 = v5;
  }

  result = memchr((result + 72), 0, v10 - 72);
  if (!result)
  {
    goto LABEL_2;
  }

  v11 = ((v5 + 3) & 0x7FC) + v4;
  if (*v11 || *(v11 + 4) <= 0x1Fu)
  {
    v3 = -309;
    goto LABEL_3;
  }

  v12 = *(v4 + 28);
  v13 = *(v8 + 76);
  v14 = *(v8 + 80);
  v15 = *(v8 + 84);
  v16 = *(v4 + 44);
  v17 = *(v8 + 92);
  v18 = *(v8 + 108);
  v19 = *(v8 + 116);
  v20 = *(v8 + 120);
  v21 = *(v8 + 256);
  v22 = *(v8 + 260);
  v23 = *(v11 + 36);
  v24[0] = *(v11 + 20);
  v24[1] = v23;
  result = CASRenderDisplayShmem((v4 + 72), v12, v9, v13, v14, v15, v16, v17, v20, v18, SHIDWORD(v18), v19, (v8 + 128), v21, v22, (a2 + 36), v24);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

uint64_t _XRenderDisplaySurface(uint64_t result, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = result;
  v3 = -304;
  if (*(result + 24) != 3)
  {
    goto LABEL_20;
  }

  v5 = *(result + 4);
  if (v5 - 501 < 0xFFFFFEFF)
  {
    goto LABEL_20;
  }

  if (*(result + 39) != 1 || *(result + 54) << 16 != 1114112 || *(result + 66) << 16 != 1114112)
  {
    goto LABEL_19;
  }

  v6 = *(result + 80);
  if (v6 > 0x100)
  {
LABEL_2:
    v3 = -304;
LABEL_20:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v3 = -304;
  if (v5 - 244 < v6)
  {
    goto LABEL_20;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v5 != v7 + 244)
  {
    goto LABEL_20;
  }

  v8 = result + v7;
  v9 = (*(result + 40) >> 2);
  if (v9 != *(v8 + 84))
  {
LABEL_19:
    v3 = -300;
    goto LABEL_20;
  }

  if (v5 >= 0x154)
  {
    v10 = 340;
  }

  else
  {
    v10 = v5;
  }

  result = memchr((result + 84), 0, v10 - 84);
  if (!result)
  {
    goto LABEL_2;
  }

  v11 = ((v5 + 3) & 0x3FC) + v4;
  if (*v11 || *(v11 + 4) <= 0x1Fu)
  {
    v3 = -309;
    goto LABEL_20;
  }

  v12 = *(v4 + 28);
  v13 = *(v4 + 44);
  v14 = *(v4 + 56);
  v15 = *(v8 + 88);
  v16 = *(v8 + 92);
  v17 = *(v8 + 96);
  v18 = *(v8 + 100);
  v19 = *(v8 + 236);
  v20 = *(v8 + 240);
  v21 = *(v11 + 36);
  v22[0] = *(v11 + 20);
  v22[1] = v21;
  result = CASRenderDisplaySurface((v4 + 84), v12, v9, v13, v14, v15, v16, v17, v18, (v8 + 108), v19, v20, (a2 + 36), v22);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

uint64_t _XHitTestContext(uint64_t result, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 || *(result + 4) != 48)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 48) || *(result + 52) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v4 = *(result + 12);
  v5 = *(result + 84);
  v8[0] = *(result + 68);
  v8[1] = v5;
  *(a2 + 36) = 0;
  result = CA::Render::Server::audit_token_cache_lookup(v8, a2);
  if ((result & 0x80) != 0 || (result = CA::Render::Server::audit_token_cache_lookup(v8, v6), (result & 0x20000) != 0))
  {
    v3 = -81182719;
    goto LABEL_7;
  }

  result = CA::Render::Context::context_by_server_port(v4);
  if (!result)
  {
    v3 = 56;
    goto LABEL_7;
  }

  v7 = result;
  pthread_mutex_lock((result + 72));
  *(a2 + 36) = CA::Render::Context::hit_test_context(v7);
  result = pthread_mutex_unlock((v7 + 72));
  if (atomic_fetch_add((v7 + 8), 0xFFFFFFFF) == 1)
  {
    result = (*(*v7 + 16))(v7);
  }

  *(a2 + 32) = 0;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  *(a2 + 4) = 40;
  return result;
}

void _XSetEDRHeadroom(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 36)
  {
    v3 = -304;
  }

  else if (*(a1 + 36) || *(a1 + 40) < 0x20u)
  {
    v3 = -309;
  }

  else
  {
    v5 = *(a1 + 12);
    v6 = *(a1 + 32);
    v7 = *(a1 + 72);
    v12[0] = *(a1 + 56);
    v12[1] = v7;
    if ((CA::Render::Server::audit_token_cache_lookup(v12, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(v12, v8) & 0x20000) != 0)
    {
      v3 = -81182719;
    }

    else
    {
      v9 = CA::Render::Context::context_by_server_port(v5);
      if (v9)
      {
        v10 = v9;
        CA::Render::Context::will_commit(v9);
        v11 = *(v10 + 308);
        *(v10 + 308) = v6;
        CA::Render::Context::did_commit(v10, v11 != v6, 0, 1, 0, 0);
        v3 = 0;
        if (atomic_fetch_add((v10 + 8), 0xFFFFFFFF) == 1)
        {
          (*(*v10 + 16))(v10);
          v3 = 0;
        }
      }

      else
      {
        v3 = 56;
      }
    }
  }

  v4 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = v3;
  *(a2 + 24) = *v4;
}

uint64_t _XGetEDRHeadroom(uint64_t result, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
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
  v5 = *(result + 60);
  v9[0] = *(result + 44);
  v9[1] = v5;
  result = CA::Render::Server::audit_token_cache_lookup(v9, a2);
  if ((result & 0x80) != 0 || (result = CA::Render::Server::audit_token_cache_lookup(v9, v6), (result & 0x20000) != 0))
  {
    v3 = -81182719;
    goto LABEL_7;
  }

  result = CA::Render::Context::context_by_server_port(v4);
  if (!result)
  {
    v3 = 56;
    goto LABEL_7;
  }

  v7 = result;
  pthread_mutex_lock((result + 72));
  v8 = *(v7 + 308);
  result = pthread_mutex_unlock((v7 + 72));
  *(a2 + 36) = v8;
  if (atomic_fetch_add((v7 + 8), 0xFFFFFFFF) == 1)
  {
    result = (*(*v7 + 16))(v7);
  }

  *(a2 + 32) = 0;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  *(a2 + 4) = 40;
  return result;
}

uint64_t _XSetSecure(uint64_t result, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
  }

  else if (*(result + 36) || *(result + 40) < 0x20u)
  {
    v3 = -309;
  }

  else
  {
    v5 = *(result + 12);
    v6 = *(result + 32);
    v7 = *(result + 72);
    v11[0] = *(result + 56);
    v11[1] = v7;
    result = CA::Render::Server::audit_token_cache_lookup(v11, a2);
    if ((result & 4) != 0)
    {
      result = CA::Render::Server::audit_token_cache_lookup(v11, v8);
      if ((result & 0x80) != 0 || (result = CA::Render::Server::audit_token_cache_lookup(v11, v9), (result & 0x20000) != 0))
      {
        v3 = -81182719;
      }

      else
      {
        result = CA::Render::Context::context_by_server_port(v5);
        if (result)
        {
          v10 = result;
          pthread_mutex_lock((result + 72));
          *(v10 + 584) = *(v10 + 584) & 0xFFFB | (4 * (v6 != 0));
          result = pthread_mutex_unlock((v10 + 72));
          if (atomic_fetch_add((v10 + 8), 0xFFFFFFFF) == 1)
          {
            result = (*(*v10 + 16))(v10);
          }

          v3 = 0;
        }

        else
        {
          v3 = 56;
        }
      }
    }

    else
    {
      v3 = 53;
    }
  }

  v4 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = v3;
  *(a2 + 24) = *v4;
  return result;
}

uint64_t _XGetSecure(uint64_t result, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
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
  v5 = *(result + 60);
  v9[0] = *(result + 44);
  v9[1] = v5;
  result = CA::Render::Server::audit_token_cache_lookup(v9, a2);
  if ((result & 0x80) != 0 || (result = CA::Render::Server::audit_token_cache_lookup(v9, v6), (result & 0x20000) != 0))
  {
    v3 = -81182719;
    goto LABEL_7;
  }

  result = CA::Render::Context::context_by_server_port(v4);
  if (!result)
  {
    v3 = 56;
    goto LABEL_7;
  }

  v7 = result;
  pthread_mutex_lock((result + 72));
  v8 = *(v7 + 584);
  result = pthread_mutex_unlock((v7 + 72));
  *(a2 + 36) = (v8 >> 2) & 1;
  if (atomic_fetch_add((v7 + 8), 0xFFFFFFFF) == 1)
  {
    result = (*(*v7 + 16))(v7);
  }

  *(a2 + 32) = 0;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  *(a2 + 4) = 40;
  return result;
}

uint64_t _XSetColormatchUntaggedContent(uint64_t result, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
  }

  else if (*(result + 36) || *(result + 40) < 0x20u)
  {
    v3 = -309;
  }

  else
  {
    v5 = *(result + 12);
    v6 = *(result + 32);
    v7 = *(result + 72);
    v10[0] = *(result + 56);
    v10[1] = v7;
    result = CA::Render::Server::audit_token_cache_lookup(v10, a2);
    if ((result & 0x80) != 0 || (result = CA::Render::Server::audit_token_cache_lookup(v10, v8), (result & 0x20000) != 0))
    {
      v3 = -81182719;
    }

    else
    {
      result = CA::Render::Context::context_by_server_port(v5);
      if (result)
      {
        v9 = result;
        pthread_mutex_lock((result + 72));
        *(v9 + 584) = *(v9 + 584) & 0xFFFD | (2 * (v6 != 0));
        result = pthread_mutex_unlock((v9 + 72));
        if (atomic_fetch_add((v9 + 8), 0xFFFFFFFF) == 1)
        {
          result = (*(*v9 + 16))(v9);
        }

        v3 = 0;
      }

      else
      {
        v3 = 56;
      }
    }
  }

  v4 = MEMORY[0x1E69E99E0];
  *(a2 + 32) = v3;
  *(a2 + 24) = *v4;
  return result;
}

uint64_t _XGetColormatchUntaggedContent(uint64_t result, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
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
  v5 = *(result + 60);
  v9[0] = *(result + 44);
  v9[1] = v5;
  result = CA::Render::Server::audit_token_cache_lookup(v9, a2);
  if ((result & 0x80) != 0 || (result = CA::Render::Server::audit_token_cache_lookup(v9, v6), (result & 0x20000) != 0))
  {
    v3 = -81182719;
    goto LABEL_7;
  }

  result = CA::Render::Context::context_by_server_port(v4);
  if (!result)
  {
    v3 = 56;
    goto LABEL_7;
  }

  v7 = result;
  pthread_mutex_lock((result + 72));
  v8 = *(v7 + 584);
  result = pthread_mutex_unlock((v7 + 72));
  *(a2 + 36) = (v8 >> 1) & 1;
  if (atomic_fetch_add((v7 + 8), 0xFFFFFFFF) == 1)
  {
    result = (*(*v7 + 16))(v7);
  }

  *(a2 + 32) = 0;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  *(a2 + 4) = 40;
  return result;
}

void _XRemoveContextFromFences(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 24)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(a1 + 24) || *(a1 + 28) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return;
  }

  v4 = *(a1 + 12);
  v5 = *(a1 + 60);
  v10[0] = *(a1 + 44);
  v10[1] = v5;
  if ((CA::Render::Server::audit_token_cache_lookup(v10, a2) & 0x80) != 0 || (CA::Render::Server::audit_token_cache_lookup(v10, v6) & 0x20000) != 0)
  {
    v9 = -81182719;
  }

  else
  {
    v7 = CA::Render::Context::context_by_server_port(v4);
    if (v7)
    {
      v8 = v7;
      CA::Render::Fence::remove_context(v7, 0);
      v9 = 0;
      if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v8 + 16))(v8);
        v9 = 0;
      }
    }

    else
    {
      v9 = 56;
    }
  }

  *(a2 + 32) = v9;
}

uint64_t _XGetClientProcessId(uint64_t result, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 40)
  {
    v4 = -304;
    goto LABEL_9;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v4 = -300;
    goto LABEL_9;
  }

  v3 = result + 40;
  if (*(result + 40) || *(result + 44) <= 0x1Fu)
  {
    v4 = -309;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v5 = *(result + 28);
  v6 = *(v3 + 36);
  v7[0] = *(v3 + 20);
  v7[1] = v6;
  result = CASGetClientProcessId(v5, (a2 + 36), v7);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XGetClientPort(uint64_t result, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 32) = 0x13000000000000;
  v4 = *(result + 32);
  v5 = *(result + 72);
  v9 = *(result + 56);
  v10 = v5;
  *(a2 + 28) = 0;
  if (DWORD1(v10) != getpid())
  {
    result = CA::Render::Server::audit_token_cache_lookup(&v9, v6);
    if ((result & 0x20) == 0)
    {
      v3 = 53;
      goto LABEL_7;
    }
  }

  result = CA::Render::Server::audit_token_cache_lookup(&v9, v6);
  if ((result & 0x80) != 0 || (result = CA::Render::Server::audit_token_cache_lookup(&v9, v7), (result & 0x20000) != 0))
  {
    v3 = -81182719;
    goto LABEL_7;
  }

  result = CA::Render::Context::context_by_id(v4);
  if (!result)
  {
    v3 = 56;
    goto LABEL_7;
  }

  v8 = result;
  pthread_mutex_lock((result + 72));
  *(a2 + 28) = *(v8 + 260);
  result = pthread_mutex_unlock((v8 + 72));
  if (atomic_fetch_add((v8 + 8), 0xFFFFFFFF) == 1)
  {
    result = (*(*v8 + 16))(v8);
  }

  *a2 |= 0x80000000;
  *(a2 + 4) = 40;
  *(a2 + 24) = 1;
  return result;
}

uint64_t _XSetClientPorts(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 3 || *(result + 4) != 64)
  {
    v2 = -304;
    goto LABEL_11;
  }

  if (*(result + 38) << 16 != 1114112 || *(result + 50) << 16 != 1114112 || *(result + 62) << 16 != 1114112)
  {
    v2 = -300;
    goto LABEL_11;
  }

  if (*(result + 64) || *(result + 68) <= 0x1Fu)
  {
    v2 = -309;
LABEL_11:
    *(a2 + 32) = v2;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 32) = 5;
  return result;
}

uint64_t (*CARenderServices_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 40290) >= 0xFFFFFFA6)
  {
    return CASCARenderServices_subsystem[5 * (v1 - 40200) + 5];
  }

  else
  {
    return 0;
  }
}

uint64_t _CACImageQueueDidChangeDisplay(mach_port_t a1, mach_msg_timeout_t timeout, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E69E99E0];
  v8 = a3;
  *&v6.msgh_bits = 19;
  v6.msgh_voucher_port = 0;
  v6.msgh_id = 40406;
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

uint64_t _CACContentStreamSurfaceProduced(mach_port_name_t a1, mach_msg_timeout_t timeout, int a3, __int128 *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  *name = 0u;
  DWORD2(v10) = a3;
  v11 = 1245184;
  v12 = *MEMORY[0x1E69E99E0];
  v5 = a4[1];
  v13 = *a4;
  v14 = v5;
  v15 = a4[2];
  v16 = *(a4 + 6);
  v8 = -2147483629;
  name[1] = a1;
  *&v10 = 0x100009DDBLL;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v8);
  }

  v6 = mach_msg(&v8, 17, 0x68u, 0, 0, timeout, 0);
  if ((v6 - 268435459) <= 1)
  {
    if ((v8 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[2]);
    }

    mach_msg_destroy(&v8);
  }

  return v6;
}

uint64_t _CACDisplayCloningStateDidChange(mach_port_t a1, int a2, char a3, char a4, char a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E99E0];
  v9 = a2;
  v10 = a3;
  v11 = 0;
  v12 = 0;
  v13 = a4;
  v14 = 0;
  v15 = 0;
  v16 = a5;
  v17 = 0;
  v18 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 40413;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v5 = mach_msg(&msg, 17, 0x30u, 0, 0, 0, 0);
  if ((v5 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v5;
}

void _XWindowLayerDidChangeFlatten(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 44)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___Z29CAWindowLayerDidChangeFlattenmh_block_invoke;
    block[3] = &__block_descriptor_41_e5_v8__0l;
    block[4] = v3;
    v6 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    *(a2 + 32) = 0;
  }
}

uint64_t _XFlipBookRenderDidComplete(uint64_t result, uint64_t a2, double a3, double a4)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 112)
  {
    if (*(result + 38) << 16 == 1114112)
    {
      LODWORD(a3) = *(result + 80);
      LODWORD(a4) = *(result + 84);
      result = [flipbook _notifyRenderCompletedForTime:*(result + 52) status:*(result + 60) frameId:*(result + 64) oldestFrameId:*(result + 72) apl:*(result + 88) aplDimming:*(result + 28) memoryUsage:a3 rawSurfacePort:a4 rawSurfaceDestRect:{*(result + 96), *(result + 100), *(result + 104), *(result + 108)}];
      *(a2 + 32) = 0;
      return result;
    }

    v5 = -300;
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XFlipBookRenderDidBegin(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = [flipbook _notifyRenderBegin];
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t _XDisplayNotifyDisallowedLayersChange(uint64_t result, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((*result & 0x80000000) != 0 || *(result + 4) != 40)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    v3 = *(result + 32);
    v4 = *(result + 36);
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v5 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109376;
      v11[1] = v3;
      v12 = 1024;
      v13 = v4;
      _os_log_impl(&dword_183AA6000, v5, OS_LOG_TYPE_DEFAULT, "CADisplayNotifyDisallowedLayersChange display_id=%u, state=%d", v11, 0xEu);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = current_displays();
    result = [v6 countByEnumeratingWithState:&v14 objects:v11 count:16];
    if (result)
    {
      v7 = result;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * v9);
          if ([v10 displayId] == v3)
          {
            [v10 _notifyDisallowedLayersChange:v4 != 0];
          }

          ++v9;
        }

        while (v7 != v9);
        result = [v6 countByEnumeratingWithState:&v14 objects:v11 count:16];
        v7 = result;
      }

      while (result);
    }

    *(a2 + 32) = 0;
  }

  return result;
}

void _XDisplayCloningStateDidChange(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 48)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    CADisplayCloningStateDidChange(*(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 44));
    *(a2 + 32) = 0;
  }
}

void _XContentStreamSurfaceProduced(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 104)
  {
    v9 = -304;
LABEL_10:
    *(a2 + 32) = v9;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return;
  }

  if (*(a1 + 38) << 16 != 1114112)
  {
    v9 = -300;
    goto LABEL_10;
  }

  v3 = *(a1 + 12);
  v4 = *(a1 + 28);
  v5 = *(a1 + 64);
  v10 = *(a1 + 48);
  v11 = v5;
  v12 = *(a1 + 80);
  v13 = *(a1 + 96);
  os_unfair_lock_lock(&_all_streams_lock);
  v6 = _all_streams;
  v7 = qword_1EA84F7F0;
  while (v6 != v7)
  {
    v8 = *v6;
    if ([*v6 streamId] == v3)
    {
      [v8 produceSurface:v4 withFrameInfo:&v10];
      break;
    }

    ++v6;
  }

  os_unfair_lock_unlock(&_all_streams_lock);
  if (v4)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v4);
  }

  *(a2 + 32) = 0;
}

void _XGetArchivedLayerTree(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 52)
  {
    v11 = -304;
LABEL_10:
    *(a2 + 32) = v11;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return;
  }

  if (*(a1 + 38) << 16 != 1179648)
  {
    v11 = -300;
    goto LABEL_10;
  }

  v3 = *(a1 + 28);
  if (v3)
  {
    v4 = *(a1 + 48);
    v5 = CA::Context::retain_context_with_client_port(*(a1 + 12));
    if (v5)
    {
      v6 = v5;
      v7 = CA::Context::retain_layer(v5);
      if (v7)
      {
        v8 = v7;
        v9 = CAEncodeIOSurfacesAsCGImages;
        CAEncodeIOSurfacesAsCGImages = v4 & 1;
        v10 = CAEncodeLayerTreeWithInfo(v7, 0);
        CAEncodeIOSurfacesAsCGImages = v9;
        CFRelease(v8);
      }

      else
      {
        v10 = 0;
      }

      CA::Context::unref(v6, 0);
    }

    else
    {
      v10 = 0;
    }

    Length = 0;
    v14 = 0u;
    *&msg.msgh_bits = 0x2C00000012;
    msg.msgh_remote_port = v3;
    msg.msgh_local_port = 0;
    msg.msgh_voucher_port = 0;
    msg.msgh_id = 1195461716;
    if (v10)
    {
      msg.msgh_bits = -2147483630;
      LODWORD(v14) = 1;
      *(&v14 + 4) = CFDataGetBytePtr(v10);
      HIDWORD(v14) = 16777472;
      Length = CFDataGetLength(v10);
    }

    v12 = mach_msg(&msg, 1, 0x2Cu, 0, 0, 0, 0);
    if ((v12 - 268435459) <= 1)
    {
      mach_msg_destroy(&msg);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    v12 = 0;
  }

  *(a2 + 32) = v12;
}

void _XImageProviderSignal(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 44)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    CAImageProviderSignal(*(a1 + 32), *(a1 + 40));
    *(a2 + 32) = 0;
  }
}

void _XTransactionDidPresent(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 68)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    if (BYTE11(xmmword_1ED4E980C) == 1)
    {
      kdebug_trace();
    }

    if (CACTransactionDidPresent::max_seed < v3)
    {
      CACTransactionDidPresent::max_seed = v3;
      os_unfair_lock_lock(&CA::Transaction::presentation_handler_lock);
      if (CA::Transaction::presentation_handler)
      {
        v5 = _Block_copy(CA::Transaction::presentation_handler);
      }

      else
      {
        v5 = 0;
      }

      if (CA::Transaction::presentation_handler_queue)
      {
        v6 = CA::Transaction::presentation_handler_queue;
      }

      else
      {
        v6 = MEMORY[0x1E69E96A0];
      }

      dispatch_retain(v6);
      os_unfair_lock_unlock(&CA::Transaction::presentation_handler_lock);
      if (v5)
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = ___Z23CATransactionDidPresentjjdyyh_block_invoke;
        v7[3] = &unk_1E6DF9C40;
        v7[4] = v5;
        v8 = v3;
        v7[5] = v4;
        dispatch_async(v6, v7);
        _Block_release(v5);
      }

      dispatch_release(v6);
    }

    *(a2 + 32) = 0;
  }
}

void _XImageQueueDidChangeDisplay(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    v3 = a1[8];
    pthread_mutex_lock(&display_change_mutex);
    v4 = display_change_list;
    if (display_change_list)
    {
      while (1)
      {
        v5 = *v4;
        if (*(*v4 + 7) == v3)
        {
          break;
        }

        v4 = v4[1];
        if (!v4)
        {
          goto LABEL_6;
        }
      }

      CFRetain(*v4);
      pthread_mutex_unlock(&display_change_mutex);
      if (CA::MachPortUtil::reply_queue(void)::once[0] != -1)
      {
        dispatch_once(CA::MachPortUtil::reply_queue(void)::once, &__block_literal_global_10344);
      }

      dispatch_async_f(CA::MachPortUtil::reply_queue(void)::queue, v5, invoke_display_change_callback);
    }

    else
    {
LABEL_6:
      pthread_mutex_unlock(&display_change_mutex);
    }

    *(a2 + 32) = 0;
  }
}

_DWORD *_XSetContextGPURegistryID(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 40)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t (*CARenderClient_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 40418) >= 0xFFFFFFEE)
  {
    return CACCARenderClient_subsystem[5 * (v1 - 40400) + 5];
  }

  else
  {
    return 0;
  }
}

__CFString *atomDescription(unsigned int a1)
{
  result = CAAtomGetString(a1);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CGRect CGFontGetFontBBox(CGFontRef font)
{
  MEMORY[0x1EEDB9B58](font);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC38](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x1EEDBF2E0](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize CVImageBufferGetEncodedSize(CVImageBufferRef imageBuffer)
{
  MEMORY[0x1EEDBF858](imageBuffer);
  result.height = v2;
  result.width = v1;
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x1EEE73558](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}