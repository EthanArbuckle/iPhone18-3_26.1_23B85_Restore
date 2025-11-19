void CA::WindowServer::Display::set_user_preferences(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v44 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 672);
  if (a3 != v9 >> 13)
  {
    *(a1 + 672) = v9 & 0x1FFF | (a3 << 13);
    a6 = 1;
  }

  if ((*(a1 + 904) & 1) != a2)
  {
    *(a1 + 904) = *(a1 + 904) & 0xFFFFFFFE | a2;
    a6 = 1;
  }

  if (CADeviceSupportsExternalHighRefreshRateAndVRR::once != -1)
  {
    dispatch_once(&CADeviceSupportsExternalHighRefreshRateAndVRR::once, &__block_literal_global_474);
  }

  if (CADeviceSupportsExternalHighRefreshRateAndVRR::b != 1)
  {
    goto LABEL_15;
  }

  v11 = *(a1 + 904);
  if (((((v11 & 2) == 0) ^ a4) & 1) == 0)
  {
    if (a4)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    v11 = v11 & 0xFFFFFFFD | v12;
    *(a1 + 904) = v11;
    a6 = 1;
  }

  if (((((v11 & 4) == 0) ^ a5) & 1) == 0)
  {
    if (a5)
    {
      v13 = 4;
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 904) = v11 & 0xFFFFFFFB | v13;
  }

  else
  {
LABEL_15:
    if (!a6)
    {
      return;
    }
  }

  v42 = 0u;
  v43 = 0u;
  *cStr = 0u;
  v41 = 0u;
  if ((*(*a1 + 816))(a1, 0, cStr, 64, 0))
  {
    v14 = CFStringCreateWithCString(0, cStr, 0x8000100u);
    if (v14)
    {
      v15 = v14;
      v16 = *MEMORY[0x1E695E8A8];
      v17 = CFPreferencesCopyAppValue(@"CADisplayPreferences", *MEMORY[0x1E695E8A8]);
      v18 = v17;
      if (v17 && (v19 = CFGetTypeID(v17), v19 == CFDictionaryGetTypeID()))
      {
        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v18);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      v21 = MutableCopy;
      if (MutableCopy)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v23 = Mutable;
          v24 = *MEMORY[0x1E695E4D0];
          v25 = *MEMORY[0x1E695E4C0];
          if (*(a1 + 904))
          {
            v26 = *MEMORY[0x1E695E4D0];
          }

          else
          {
            v26 = *MEMORY[0x1E695E4C0];
          }

          CFDictionarySetValue(Mutable, @"matchContent", v26);
          CA_CFDictionarySetInt(v23, @"preferredHdrType", *(a1 + 672) >> 13);
          if (CADeviceSupportsExternalHighRefreshRateAndVRR::once != -1)
          {
            dispatch_once(&CADeviceSupportsExternalHighRefreshRateAndVRR::once, &__block_literal_global_474);
          }

          if (CADeviceSupportsExternalHighRefreshRateAndVRR::b == 1)
          {
            if ((*(a1 + 904) & 2) != 0)
            {
              v27 = v24;
            }

            else
            {
              v27 = v25;
            }

            CFDictionarySetValue(v23, @"prefersHighRefreshRate", v27);
            if ((*(a1 + 904) & 4) != 0)
            {
              v28 = v24;
            }

            else
            {
              v28 = v25;
            }

            CFDictionarySetValue(v23, @"prefersVRR", v28);
          }

          if (x_log_get_windowserver(void)::once != -1)
          {
            dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
          }

          v29 = x_log_get_windowserver(void)::log;
          if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v30 = *(a1 + 904);
            v31 = *(a1 + 672) >> 13;
            v32 = 136315906;
            v33 = cStr;
            v34 = 1024;
            v35 = v30 & 1;
            v36 = 1024;
            v37 = v31;
            v38 = 1024;
            v39 = (v30 >> 2) & 1;
            _os_log_impl(&dword_183AA6000, v29, OS_LOG_TYPE_DEFAULT, "set_user_preferences (uuid=%s, matchContent=%i, preferredHdrType=%i, prefersVRR=%i)", &v32, 0x1Eu);
          }

          CFDictionarySetValue(v21, v15, v23);
          CFRelease(v23);
          CFPreferencesSetAppValue(@"CADisplayPreferences", v21, v16);
        }

        CFRelease(v21);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      CFRelease(v15);
    }
  }

  CA::WindowServer::Display::post_display_changed(a1);
}

_DWORD *CA::WindowServer::Display::allocate_surface(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, CA::Render *a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, uint64_t a9, char a10)
{
  v28 = *MEMORY[0x1E69E9840];
  if ((((a7 & 0x21) == 1) & ((a1[226]._os_unfair_lock_opaque & 0x80) >> 7)) != 0)
  {
    v16 = a7 | 2;
  }

  else
  {
    v16 = a7;
  }

  os_unfair_lock_lock(a1 + 56);
  for (i = *&a1[64]._os_unfair_lock_opaque; i != *&a1[66]._os_unfair_lock_opaque; ++i)
  {
    surface = *i;
    v27 = surface;
    if (surface[14] == a2 && surface[15] == a3 && surface[16] == a4 && (*(*surface + 24))(surface) == a5)
    {
      v19 = *(surface + 59);
      if (((v16 & 4) == 0) != ((v19 >> 24) & 1) && (((v19 >> 34) & 1 ^ v16) & 1) == 0 && (*(*surface + 232))(surface) == a8 && ((v16 & 2) == 0) != (*(surface + 239) & 0x20) >> 5)
      {
        v20 = *(surface + 2);
        if (!v20 || (v21 = *(v20 + 32)) == 0 || [v21 signaledValue] == *(v20 + 48))
        {
          std::vector<CA::WindowServer::Surface *>::push_back[abi:nn200100](&a1[58], &v27);
          *i = *(*&a1[66]._os_unfair_lock_opaque - 8);
          *&a1[66]._os_unfair_lock_opaque -= 8;
          os_unfair_lock_unlock(a1 + 56);
          (*(*surface + 72))(surface, a6, 0);
          return surface;
        }
      }
    }
  }

  os_unfair_lock_unlock(a1 + 56);
  if (a10)
  {
    return 0;
  }

  v22 = CA::Render::fourcc_compressed_of_type(a4, 0, 0);
  v23 = a6;
  if (v22 == a4 || (surface = CA::WindowServer::Display::allocate_surface(a1, a2, a3, v22, a5, a6, v16, a8, a9, 1, v27, v28)) == 0)
  {
    v24 = (*(*&a1->_os_unfair_lock_opaque + 2344))(a1, a2, a3, a4, a5, v23, v16, a8, a9);
    if (v24)
    {
      surface = v24;
    }

    else
    {
      if (!CA::WindowServer::Display::purge_surfaces(a1, 1))
      {
        return 0;
      }

      surface = (*(*&a1->_os_unfair_lock_opaque + 2344))(a1, a2, a3, a4, a5, v23, v16, a8, a9);
      if (!surface)
      {
        return surface;
      }
    }

    v27 = surface;
    os_unfair_lock_lock(a1 + 56);
    surface[61] = 1;
    std::vector<CA::WindowServer::Surface *>::push_back[abi:nn200100](&a1[58], &v27);
    os_unfair_lock_unlock(a1 + 56);
  }

  return surface;
}

uint64_t CA::WindowServer::Display::end_display_changes(uint64_t this)
{
  if (!*(this + 688))
  {
    __assert_rtn("end_display_changes", "windowserver-display.cpp", 2120, "_display_changing > 0");
  }

  v1 = this;
  v2 = *(this + 688) - 1;
  *(this + 688) = v2;
  if (!v2 && (*(this + 906) & 4) != 0)
  {
    (*(*this + 2136))(this, *(this + 680));
    this = CA::WindowServer::Display::post_display_changed(v1);
    *(v1 + 904) &= ~0x40000u;
  }

  return this;
}

__n128 CA::WindowServer::Display::recording_display_attributes(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  v10 = *&dword_1ED4E9778;
  if (!*&dword_1ED4E9778)
  {
    v10 = 4;
  }

  if (v10 != 5)
  {
    *(a3 + 28) = 1065353216;
    *a3 = 1000593162;
    if (a4)
    {
      *(a3 + 16) = 1084227584;
      *(a3 + 24) = 889599933;
      *(a3 + 68) = 0x300000006;
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v17 = *(a3 + 4);
          *(a3 + 12) = v17;
          *(a3 + 20) = v17 * 0.01;
        }

        else if (v10 == 4)
        {
          if (a5)
          {
            v15 = *(a2 + 736);
            if (v15 != 0.0)
            {
              if (v15 >= *(a3 + 20))
              {
                v15 = *(a3 + 20);
              }

              *(a3 + 20) = v15;
            }
          }

          v16 = *(a3 + 20) * 100.0;
          *(a3 + 4) = v16;
          *(a3 + 12) = v16;
        }
      }

      else if (v10 == 1)
      {
        *(a3 + 4) = 1148846080;
        *(a3 + 12) = 1148846080;
        *(a3 + 20) = 1092616192;
      }

      else if (v10 == 2)
      {
        *(a3 + 4) = 1148846080;
        *(a3 + 12) = 1148846080;
        *(a3 + 20) = 1092616192;
        if ((*(a3 + 62) & 1) == 0)
        {
          *(a3 + 66) = 1;
        }

        *(a3 + 62) = 1;
      }
    }

    else
    {
      *(a3 + 4) = 1120403456;
      *(a3 + 12) = xmmword_183E211C0;
      *(a3 + 68) = 0x200000000;
      *(a3 + 62) = 0;
    }

    *(a3 + 64) = 0;
  }

  v11 = *(a3 + 112);
  *(a1 + 96) = *(a3 + 96);
  *(a1 + 112) = v11;
  *(a1 + 128) = *(a3 + 128);
  v12 = *(a3 + 48);
  *(a1 + 32) = *(a3 + 32);
  *(a1 + 48) = v12;
  v13 = *(a3 + 80);
  *(a1 + 64) = *(a3 + 64);
  *(a1 + 80) = v13;
  result = *(a3 + 16);
  *a1 = *a3;
  *(a1 + 16) = result;
  return result;
}

unint64_t CA::WindowServer::Display::ModeSet::preferred_mode_with_criteria_internal(unint64_t **a1, int a2, unsigned int a3, uint64_t a4, unsigned int *a5, int a6, int a7, unsigned int a8, double a9, double a10, float a11, unsigned __int8 a12, unsigned __int8 a13)
{
  v18 = a1;
  v113[1] = *MEMORY[0x1E69E9840];
  if (byte_1ED4E98A5 == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = a13;
  }

  if (!a6)
  {
    a2 = 0;
  }

  if (!a6)
  {
    a11 = 0.0;
  }

  if (a7 == 5 && !a2)
  {
    v22 = CA::WindowServer::Display::ModeSet::supports_4k60_dovi(a1, *a5);
    a2 = v22 ? 0 : 5;
    if (!v22)
    {
      a11 = 30.0;
    }
  }

  if (a2)
  {
    v23 = a2;
  }

  else
  {
    v23 = a7;
  }

  v106 = a7;
  v111 = a5;
  if (a5[7] == 1552)
  {
    v24 = a5[6] - 44577;
    v38 = v24 > 0xE;
    v25 = 0x7007u >> v24;
    if (v38)
    {
      v26 = 0;
    }

    else
    {
      v26 = v25;
    }
  }

  else
  {
    v26 = 0;
  }

  v113[0] = 0;
  v27 = *v18;
  v28 = v18[1];
  if (*v18 == v28)
  {
    v72 = 0;
    v73 = a3;
    goto LABEL_159;
  }

  v110 = 0;
  v29 = 0;
  v30 = v18 + 4;
  v31 = a11 > 30.0 || a11 == 0.0;
  v102 = a11;
  v103 = 0.5 - a11;
  v32 = a9 != 0.0;
  if (a10 == 0.0)
  {
    v32 = 0;
  }

  v104 = v32;
  v105 = v19;
  v100 = (a9 * a10);
  v101 = v31;
  v98 = vdupq_n_s64(0x40847AE147AE147BuLL);
  v99 = vdupq_n_s64(0x3F59000000000000uLL);
  v97 = vdupq_n_s64(0x3FFFFFE0000000uLL);
  v107 = v23;
  do
  {
    v33 = *v27;
    v112 = v33;
    if (!v33)
    {
      goto LABEL_147;
    }

    if ((v26 & 1) == 0)
    {
      if (CADeviceSupportsHDRTVModes::once != -1)
      {
        dispatch_once(&CADeviceSupportsHDRTVModes::once, &__block_literal_global_202);
      }

      if ((CADeviceSupportsHDRTVModes::supports_hdr_modes & 1) == 0 && CA::WindowServer::Display::Mode::is_hdr(&v112))
      {
        goto LABEL_147;
      }
    }

    v34 = vcvtd_n_f64_u32((v33 >> 29) & 0x1FFFFFF, 0x10uLL);
    v35 = v34;
    v36 = v35 < 49.0 && a11 == 0.0;
    v37 = v36;
    v38 = v35 >= 23.9 && v35 <= 60.5;
    if (!v38 || v37)
    {
      goto LABEL_147;
    }

    v39 = v33 & 0x3FFF;
    if (v39 == 1920)
    {
      if ((v33 & 0xFFFC000) != 0x21C0000 || a9 == 1920.0 || a10 == 2160.0)
      {
        goto LABEL_63;
      }

LABEL_62:
      if (v30 != std::__tree<std::tuple<unsigned short,unsigned short>>::find<std::tuple<unsigned short,unsigned short>>((v18 + 3), 0xF00u, 0x870u))
      {
        goto LABEL_147;
      }

      goto LABEL_63;
    }

    if (v39 == 3840)
    {
      if ((v33 & 0xFFFC000) != 0x10E0000 || a9 == 3840.0 || a10 == 1080.0)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v39 == 4096 && (v33 & 0xFFFC000) == 0x21C0000)
    {
      goto LABEL_147;
    }

LABEL_63:
    if (v23 && CA::WindowServer::Display::Mode::hdr_type(v33) > v23)
    {
      goto LABEL_147;
    }

    v40 = CA::WindowServer::Display::Mode::hdr_type(v33);
    if (v33 & 0x4000000000000000) != 0 && v40 == 1 && (v111[5])
    {
      goto LABEL_147;
    }

    if ((v33 & 0x40000000000000) != 0)
    {
      if (CA::WindowServer::Display::Mode::is_hdr(&v112) && *(v111 + 20) != 1 || v30 == std::__tree<std::tuple<unsigned short,unsigned short>>::find<std::tuple<unsigned short,unsigned short>>((v18 + 3), v33 & 0x3FFF, (v33 >> 14) & 0x3FFF))
      {
        goto LABEL_147;
      }

      if (CA::WindowServer::Display::Mode::hdr_type(v33) == 5)
      {
        v65 = *v111;
        if (!*v111 || v65 == 3 || v65 == 1 && v101)
        {
          goto LABEL_147;
        }
      }

      else if (CA::WindowServer::Display::Mode::hdr_type(v33) == 4 || CA::WindowServer::Display::Mode::hdr_type(v33) != 3 || v111[2] != 2 && v111[1] != 2 && v111[3] != 2)
      {
        goto LABEL_147;
      }
    }

    if (!v29)
    {
      goto LABEL_132;
    }

    if (v23)
    {
      v23 = v107;
      if (CA::WindowServer::Display::Mode::hdr_type(v33) == v107 && CA::WindowServer::Display::Mode::hdr_type(v110) != v107)
      {
LABEL_132:
        v113[0] = v33;
        v110 = v33;
        v29 = v33;
        goto LABEL_147;
      }

      if (CA::WindowServer::Display::Mode::hdr_type(v110) == v107 && CA::WindowServer::Display::Mode::hdr_type(v33) != v107)
      {
        goto LABEL_147;
      }

      v41 = v18;
      v42 = CA::WindowServer::Display::Mode::hdr_type(v33);
      v36 = v42 == CA::WindowServer::Display::Mode::hdr_type(v110);
      v18 = v41;
      if (!v36)
      {
        v43 = CA::WindowServer::Display::Mode::hdr_type(v33);
        v38 = v43 > CA::WindowServer::Display::Mode::hdr_type(v110);
        v18 = v41;
        if (v38)
        {
          goto LABEL_145;
        }
      }
    }

    if (a11 > 0.0)
    {
      v44 = fabs(v103 + v34);
      v45 = fabs(v103 + ((v29 >> 29) & 0x1FFFFFF) * 0.0000152587891);
      if (v44)
      {
        v46 = 1;
      }

      else
      {
        v46 = v45 == 0;
      }

      if (!v46)
      {
        goto LABEL_145;
      }

      if (v44)
      {
        v47 = v45 == 0;
      }

      else
      {
        v47 = 0;
      }

      if (v47)
      {
        goto LABEL_146;
      }
    }

    if (v104)
    {
      v48 = (v33 >> 14) & 0x3FFF;
      v49 = v48;
      v50 = a9 == v39 && a10 == v49;
      if (v50 && (a9 != (v29 & 0x3FFF) || a10 != ((v29 >> 14) & 0x3FFF)))
      {
        goto LABEL_145;
      }

      v51 = v29 & 0x3FFF;
      v52 = (v29 >> 14) & 0x3FFF;
      if (a9 == v51 && a10 == v52 && (a9 != v39 || a10 != v49))
      {
        goto LABEL_146;
      }

      if (v39 != v51 || ((v29 ^ v33) & 0xFFFC000) != 0)
      {
        v54 = v48 * v39 - v100;
        if (v54 < 0)
        {
          v54 = -v54;
        }

        v55 = v52 * v51 - v100;
        if (v55 < 0)
        {
          v55 = -v55;
        }

        if (v54 < v55)
        {
LABEL_145:
          v113[0] = v33;
          v110 = v33;
          v29 = v33;
LABEL_146:
          v23 = v107;
          goto LABEL_147;
        }

        if (v54 > v55)
        {
          goto LABEL_146;
        }
      }
    }

    if (a11 <= 0.0)
    {
      v58 = vcvtd_n_f64_u32((v29 >> 29) & 0x1FFFFFF, 0x10uLL);
      v23 = v107;
    }

    else
    {
      v56 = v34 - v102;
      v57 = fabsf(v56);
      v58 = vcvtd_n_f64_u32((v29 >> 29) & 0x1FFFFFF, 0x10uLL);
      v59 = v58 - v102;
      v60 = fabsf(v59);
      v64 = v57 <= 0.5 && v57 < v60 && v39 == (v29 & 0x3FFF) && ((v29 ^ v33) & 0xFFFC000) == 0 && ((v29 ^ v33) & 0xF80000000000000) == 0;
      v23 = v107;
      if (v64)
      {
LABEL_142:
        v113[0] = v33;
        v110 = v33;
        v29 = v33;
        goto LABEL_147;
      }
    }

    v66 = (v58 + 0.5);
    v67 = (v34 + 0.5);
    if (v66 <= v67)
    {
      if (v66 < v67)
      {
        goto LABEL_142;
      }

      if (v33 != v110)
      {
        v68.i64[0] = v33;
        v68.i64[1] = v110;
        v69 = vshrn_n_s64(v68, 0x1DuLL);
        v70.i64[0] = v69.i32[0] & 0x1FFFFFF;
        v70.i64[1] = v69.i32[1] & 0x1FFFFFF;
        v71 = vbslq_s8(v97, vshlq_n_s64(vcvtq_u64_f64(vmulq_f64(vrndaq_f64(vmulq_f64(vcvtq_f64_u64(v70), v99)), v98)), 0x1DuLL), v68);
        if ((vmovn_s64(vceqq_s64(v71, vdupq_laneq_s64(v71, 1))).u8[0] & 1) == 0 && !CA::WindowServer::Display::Mode::operator<(&v112, v113))
        {
          goto LABEL_142;
        }
      }
    }

LABEL_147:
    ++v27;
  }

  while (v27 != v28);
  if (v29)
  {
    v72 = v110;
    v73 = a3;
    v19 = v105;
  }

  else
  {
    v27 = *v18;
    v28 = v18[1];
    v72 = v110;
    v73 = a3;
    v19 = v105;
    while (1)
    {
LABEL_159:
      if (v27 == v28)
      {
        v29 = 0;
        goto LABEL_162;
      }

      v29 = *v27;
      if ((*v27 & 0x40000000000000) == 0)
      {
        break;
      }

      ++v27;
    }

    v113[0] = *v27;
    v72 = v29;
  }

LABEL_162:
  v75 = a11 <= 30.0 && a11 > 0.0;
  if ((v19 & v75) == 1)
  {
    v76 = v18;
    v77 = (v29 >> 14) & 0x3FFF;
    v78 = CA::WindowServer::Display::Mode::hdr_type(v72);
    v79 = v76;
    v80 = CA::WindowServer::Display::ModeSet::preferred_mode_with_criteria_internal(v76, v78, v73, a4, v111, 1, v106, a8, (v29 & 0x3FFF), v77, a11 + a11, a12);
    v81 = v80;
    if ((((v80 >> 29) & 0x1FFFFFF) * 0.0000152587891 + 0.5) == rintf(a11 + a11) && (v80 & 0x3FFF) == (v29 & 0x3FFF) && ((v80 >> 14) & 0x3FFF) == v77 && ((v80 ^ v29) & 0xF80000000000000) == 0 && ((v29 >> 54) & 1) == ((v80 >> 54) & 1))
    {
      v18 = v79;
      if (((v29 & 0x4000000000000000) != 0) == ((v80 & 0x4000000000000000) != 0) || CA::WindowServer::Display::Mode::is_hdr(v113))
      {
        v113[0] = v81;
        v72 = v81;
        v29 = v81;
      }
    }

    else
    {
      v18 = v79;
    }
  }

  if (v73)
  {
    if (a11 != 0.0)
    {
      return v29;
    }

LABEL_188:
    if ((((v29 >> 29) & 0x1FFFFFF) * 0.0000152587891 + 0.5) == 60)
    {
      v86 = v18;
      v87 = *v18;
      v88 = v18[1];
      if (v87 != v88)
      {
        while (1)
        {
          if ((((*v87 >> 29) & 0x1FFFFFF) * 0.0000152587891 + 0.5) == 120 && ((v29 ^ *v87) & 0xFFFFFFF) == 0)
          {
            v90 = CA::WindowServer::Display::Mode::hdr_type(*v87);
          }

          if (++v87 == v88)
          {
            v87 = v88;
            break;
          }
        }

        v88 = v86[1];
      }

      v36 = v87 == v88;
      v18 = v86;
      if (!v36)
      {
        v72 = *v87;
        v113[0] = v72;
        v29 = v72;
      }
    }
  }

  else if (a11 == 0.0 && (a8 & 1) != 0)
  {
    goto LABEL_188;
  }

  if (a4)
  {
    if (a11 != 0.0)
    {
      return v29;
    }

LABEL_207:
    if ((((v29 >> 29) & 0x1FFFFFF) * 0.0000152587891 + 0.5) == 120)
    {
      v91 = *v18;
      v92 = v18[1];
      if (*v18 != v92)
      {
        while (1)
        {
          if ((((*v91 >> 29) & 0x1FFFFFF) * 0.0000152587891 + 0.5) == 120 && ((*v91 ^ v29) & 0xFFFFFFF) == 0)
          {
            v94 = CA::WindowServer::Display::Mode::hdr_type(*v91);
            if (v94 == CA::WindowServer::Display::Mode::hdr_type(v72))
            {
              v95 = *v91;
            }
          }

          if (++v91 == v92)
          {
            v91 = v92;
            break;
          }
        }

        v92 = v18[1];
      }

      if (v91 != v92)
      {
        return *v91;
      }
    }
  }

  else if (a11 == 0.0 && (a12 & 1) != 0)
  {
    goto LABEL_207;
  }

  return v29;
}

uint64_t CA::WindowServer::Display::ModeSet::supports_4k60_dovi(unint64_t **this, const EDIDAttributes *a2)
{
  if (a2 == 2)
  {
    return 1;
  }

  if (a2 != 3)
  {
    return 0;
  }

  v2 = *this;
  v3 = this[1];
  if (*this == v3)
  {
    return 0;
  }

  while (1)
  {
    v4 = *v2;
    if ((*v2 & 0xFFC0000) >= 0x21BC001)
    {
      if (CA::WindowServer::Display::Mode::hdr_type(*v2) == 5)
      {
        if ((v4 & 0x40000000000000) != 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v5 = CA::WindowServer::Display::Mode::hdr_type(v4);
        if ((v4 & 0x40000000000000) != 0 || v5 != 4)
        {
          goto LABEL_11;
        }
      }

      if ((((v4 >> 29) & 0x1FFFFFF) * 0.0000152587891 + 0.5) > 0x3B)
      {
        return 1;
      }
    }

LABEL_11:
    if (++v2 == v3)
    {
      return 0;
    }
  }
}

uint64_t std::__tree<std::tuple<unsigned short,unsigned short>>::find<std::tuple<unsigned short,unsigned short>>(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    return v3;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 26);
    v8 = v7 == a2;
    if (v7 >= a2)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }

    if (v8)
    {
      v10 = *(v4 + 28);
      v11 = v10 == a3;
      v9 = v10 >= a3 ? 1 : -1;
      if (v11)
      {
        v9 = 0;
      }
    }

    v12 = v9 & 0x80;
    v8 = v12 == 0;
    v13 = v12 >> 4;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + v13);
  }

  while (v4);
  if (v3 == v6)
  {
    return v3;
  }

  v14 = *(v6 + 26);
  if (v14 <= a2)
  {
    v15 = 1;
  }

  else
  {
    v15 = -1;
  }

  if (v14 == a2)
  {
    v16 = *(v6 + 28);
    v17 = -1;
    if (v16 <= a3)
    {
      v17 = 1;
    }

    if (v16 == a3)
    {
      v15 = 0;
    }

    else
    {
      v15 = v17;
    }
  }

  if (v15 < 0)
  {
    return v3;
  }

  return v6;
}

unint64_t CA::WindowServer::Display::ModeSet::preferred_mode_with_criteria(unint64_t **a1, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = CA::WindowServer::Display::ModeSet::preferred_mode_with_criteria_internal(a1, *(a2 + 20), *(a2 + 24), *(a2 + 25), *(a2 + 40), *(a2 + 26), *(a2 + 28), *(a2 + 32), *a2, *(a2 + 8), *(a2 + 16), *(a2 + 33), HIBYTE(*(a2 + 33)));
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v4 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 20);
    if (v5 > 5)
    {
      v6 = "UNKNOWN";
    }

    else
    {
      v6 = CA::WindowServer::hdr_type_name(CA::WindowServer::Display::HDRType)::names[v5];
    }

    v7 = *(a2 + 28);
    if (v7 > 5)
    {
      v8 = "UNKNOWN";
    }

    else
    {
      v8 = CA::WindowServer::hdr_type_name(CA::WindowServer::Display::HDRType)::names[v7];
    }

    v9 = *a2;
    v10 = *(a2 + 8);
    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
    v13 = *(a2 + 25);
    v14 = *(a2 + 26);
    v15 = *(a2 + 32);
    v16 = vcvtd_n_f64_u32((v3 >> 29) & 0x1FFFFFF, 0x10uLL);
    v17 = ((v3 >> 55) & 0x1F) - 1;
    v18 = *(a2 + 33);
    if (v17 > 0x1B)
    {
      v19 = "";
    }

    else
    {
      v19 = off_1E6DED668[v17];
    }

    *buf = 134221314;
    v22 = v9;
    v23 = 2048;
    v24 = v10;
    v25 = 2048;
    v26 = v11;
    v27 = 2080;
    v28 = v6;
    v29 = 1024;
    v30 = v12;
    v31 = 1024;
    v32 = v13;
    v33 = 1024;
    v34 = v14;
    v35 = 2080;
    v36 = v8;
    v37 = 1024;
    v38 = v15;
    v39 = 1024;
    v40 = v18;
    v41 = 1024;
    v42 = v3 & 0x3FFF;
    v43 = 1024;
    v44 = (v3 >> 14) & 0x3FFF;
    v45 = 2048;
    v46 = v16;
    v47 = 2080;
    v48 = v19;
    _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "preferred_mode_with_criteria: target resolution [%g x %g] target rate (%g) target hdr (%s) target high refresh rate (%i) target vrr (%i), user match content (%i), user preferred hdr type (%s) user prefers high refresh rate (%i), user prefers vrr (%i) --> %dx%d@%g %s", buf, 0x72u);
  }

  return v3;
}

uint64_t CA::WindowServer::anonymous namespace::OGLDisplay::update_detached_layer(CA::WindowServer::_anonymous_namespace_::OGLDisplay *this, CA::Render::Handle *a2, uint64_t a3, CA::Render::Texture *a4, CA::WindowServer::Surface *a5, int a6)
{
  if (a5)
  {
    v12 = *(this + 1);
    if (*(a5 + 1) != v12)
    {
      CA::WindowServer::Surface::set_display(a5, v12);
      a6 |= 0x400000u;
    }
  }

  return (*(**(this + 1) + 560))(*(this + 1), a2, a3, a4, a5, 0, 0, a6 | 0x40u, 0);
}

void CA::WindowServer::anonymous namespace::OGLDisplay::~OGLDisplay(CA::WindowServer::_anonymous_namespace_::OGLDisplay *this)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

void CA::WindowServer::Display::print_display_trace_log_in_range(uint64_t a1, X::Stream *a2, unint64_t a3, unint64_t a4)
{
  v58 = *MEMORY[0x1E69E9840];
  if (x_log_get_display_trace(void)::once != -1)
  {
    dispatch_once(&x_log_get_display_trace(void)::once, &__block_literal_global_13_5124);
  }

  v7 = x_log_get_display_trace(void)::log;
  v43 = a1 + 912;
  if (*(a1 + 25488) == a3 && os_signpost_enabled(x_log_get_display_trace(void)::log))
  {
    v8 = *(a1 + 24);
    v9 = *(v43 + 48 * a3 + 8);
    *buf = 67240448;
    *v46 = v8;
    *&v46[4] = 2050;
    *&v46[6] = v9;
    _os_signpost_emit_with_name_impl(&dword_183AA6000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DisplayTrace", "DisplayID=%{public, name=DisplayID}u %{public, signpost.description:begin_time}llu", buf, 0x12u);
  }

  v42 = a1;
  v10 = a3;
  if (a3 < a4)
  {
    v11 = a3 + 1;
    do
    {
      v12 = v43 + 48 * v10;
      memset(v57, 0, sizeof(v57));
      v13 = CACreateDateStringFromHostContinuousTime(*(v12 + 8), @"yyyy-MM-dd HH:mm:ss.SSS");
      CString = CA_CFStringGetCString(v13, v57, 32);
      v15 = CString;
      v16 = *v12;
      if (*v12 > 2)
      {
        if (v16 != 3)
        {
          if (v16 != 4)
          {
            goto LABEL_31;
          }

          v22 = *(v12 + 24);
          v23 = (v22 >> 5) & 3;
          v24 = (v22 >> 7) & 3;
          if (a2)
          {
            X::Stream::printf(a2, "%20s  SharedEvent IOSurface ID: 0x%16llx  Usage: %35s  Operation: %9s  Access: %6s  Value: 0x%16llx\n", CString, *(v12 + 16), CA::CASharedEvent::UsageString[v22 & 0x1F], CA::CASharedEvent::OperationString[v23], CA::CASharedEvent::AccessString[v24], *(v12 + 32));
          }

          if (!os_signpost_enabled(v7))
          {
            goto LABEL_31;
          }

          v25 = CA::CASharedEvent::UsageString[v22 & 0x1F];
          v26 = CA::CASharedEvent::OperationString[v23];
          v27 = CA::CASharedEvent::AccessString[v24];
          v28 = *(v12 + 32);
          v30 = *(v12 + 8);
          v29 = *(v12 + 16);
          *buf = 136447746;
          *v46 = v15;
          *&v46[8] = 2050;
          *&v46[10] = v29;
          v47 = 2082;
          v48 = v25;
          v49 = 2082;
          v50 = v26;
          v51 = 2082;
          v52 = v27;
          v53 = 2050;
          v54 = v28;
          v55 = 2050;
          v56 = v30;
          v19 = v7;
          v20 = "SharedEvent";
          v21 = " DateTime=%{public, name=DateTime}s IOSurfaceID=%{public, name=IOSurfaceID}#llx Usage=%{public, name=Usage}s Operation=%{public, name=Operation}s Access=%{public, name=Access}s Value=%{public, name=Value}#llx eventTime=%{public, signpost.description:event_time}llu";
          v31 = 72;
          goto LABEL_30;
        }

        if (a2)
        {
          X::Stream::printf(a2, "%s  Detach Disable Reason: %llu\n", CString, *(v12 + 16));
        }

        if (!os_signpost_enabled(v7))
        {
          goto LABEL_31;
        }

        v38 = *(v12 + 8);
        v37 = *(v12 + 16);
        *buf = 136446722;
        *v46 = v15;
        *&v46[8] = 2050;
        *&v46[10] = v37;
        v47 = 2050;
        v48 = v38;
        v19 = v7;
        v20 = "DisableDetach";
        v21 = " DateTime=%{public, name=DateTime}s Reason=%{public, name=Reason}llu eventTime=%{public, signpost.description:event_time}llu";
      }

      else
      {
        if (v16 == 1)
        {
          if (a2)
          {
            X::Stream::printf(a2, "%s  Detach Surface: %llu x %llu Displayed Surface: %llu x %llu\n", CString, *(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 40));
          }

          if (!os_signpost_enabled(v7))
          {
            goto LABEL_31;
          }

          v32 = *(v12 + 24);
          v33 = *(v12 + 32);
          v34 = *(v12 + 40);
          v36 = *(v12 + 8);
          v35 = *(v12 + 16);
          *buf = 136447490;
          *v46 = v15;
          *&v46[8] = 2050;
          *&v46[10] = v35;
          v47 = 2050;
          v48 = v32;
          v49 = 2050;
          v50 = v33;
          v51 = 2050;
          v52 = v34;
          v53 = 2050;
          v54 = v36;
          v19 = v7;
          v20 = "DetachedDimensions";
          v21 = " DateTime=%{public, name=DateTime}s detachedWidth=%{public, name=detachedWidth}llu detachedHeight=%{public, name=detachedHeight}llu displayedWidth=%{public, name=displayedWidth}llu displayedHeight=%{public, name=displayedHeight}llu eventTime=%{public, signpost.description:event_time}llu";
          v31 = 62;
          goto LABEL_30;
        }

        if (v16 != 2)
        {
          goto LABEL_31;
        }

        if (a2)
        {
          X::Stream::printf(a2, "%s  Speculative Release Surface ID: 0x%llx\n", CString, *(v12 + 16));
        }

        if (!os_signpost_enabled(v7))
        {
          goto LABEL_31;
        }

        v18 = *(v12 + 8);
        v17 = *(v12 + 16);
        *buf = 136446722;
        *v46 = v15;
        *&v46[8] = 2050;
        *&v46[10] = v17;
        v47 = 2050;
        v48 = v18;
        v19 = v7;
        v20 = "SpeculativeRelease";
        v21 = " DateTime=%{public, name=DateTime}s IOSurfaceID=%{public, name=IOSurfaceID}#llx eventTime=%{public, signpost.description:event_time}llu";
      }

      v31 = 32;
LABEL_30:
      _os_signpost_emit_with_name_impl(&dword_183AA6000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v20, v21, buf, v31);
LABEL_31:
      if (v13)
      {
        CFRelease(v13);
      }

      a3 = v10;
      v39 = v11++;
      v10 = v39;
    }

    while (v39 < a4);
  }

  if (*(v42 + 25488) == a4 && os_signpost_enabled(v7))
  {
    v40 = *(v42 + 24);
    v41 = *(v43 + 48 * a3 + 8);
    *buf = 67240448;
    *v46 = v40;
    *&v46[4] = 2050;
    *&v46[6] = v41;
    _os_signpost_emit_with_name_impl(&dword_183AA6000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DisplayTrace", "DisplayID=%{public, name=DisplayID}u %{public, signpost.description:end_time}llu", buf, 0x12u);
  }
}

void CA::WindowServer::Display::print_display_trace_shared_event(uint64_t a1, X::Stream *a2)
{
  if (x_log_get_display_trace(void)::once != -1)
  {
    dispatch_once(&x_log_get_display_trace(void)::once, &__block_literal_global_13_5124);
  }

  v4 = x_log_get_display_trace(void)::log;
  os_unfair_lock_lock((a1 + 224));
  if (a2)
  {
    X::Stream::printf(a2, "\nCA Shared Events per Surface Inuse:\n");
    v5 = *(a1 + 232);
    for (i = *(a1 + 240); v5 != i; ++v5)
    {
      v7 = *v5;
      if (*(*v5 + 16))
      {
        X::Stream::printf(a2, "\n");
        CA::CASharedEvent::stream_print(*(v7 + 16), a2, v4);
      }
    }

    X::Stream::printf(a2, "\nCA Shared Events per Surface Free:\n");
  }

  else
  {
    v16 = *(a1 + 232);
    v17 = *(a1 + 240);
    while (v16 != v17)
    {
      v18 = *(*v16 + 16);
      if (v18)
      {
        CA::CASharedEvent::stream_print(v18, 0, v4);
      }

      v16 += 8;
    }
  }

  v8 = *(a1 + 256);
  for (j = *(a1 + 264); v8 != j; ++v8)
  {
    v10 = *v8;
    v11 = *(*v8 + 16);
    if (v11)
    {
      if (a2)
      {
        X::Stream::printf(a2, "\n");
        v11 = *(v10 + 16);
        v12 = a2;
      }

      else
      {
        v12 = 0;
      }

      CA::CASharedEvent::stream_print(v11, v12, v4);
    }
  }

  if (a2)
  {
    X::Stream::printf(a2, "\nCA Shared Events per Surface Shared with Render::Surface:\n");
    v13 = *(a1 + 280);
    for (k = *(a1 + 288); v13 != k; ++v13)
    {
      v15 = *v13;
      if (*(*v13 + 16))
      {
        X::Stream::printf(a2, "\n");
        CA::CASharedEvent::stream_print(*(v15 + 16), a2, v4);
      }
    }

    os_unfair_lock_unlock((a1 + 224));

    X::Stream::printf(a2, "\n");
  }

  else
  {
    v19 = *(a1 + 280);
    v20 = *(a1 + 288);
    while (v19 != v20)
    {
      v21 = *(*v19 + 16);
      if (v21)
      {
        CA::CASharedEvent::stream_print(v21, 0, v4);
      }

      v19 += 8;
    }

    os_unfair_lock_unlock((a1 + 224));
  }
}

BOOL CA::WindowServer::Display::is_enabled_for_render(CA::WindowServer::Display *this)
{
  if (!*(this + 82))
  {
    return 0;
  }

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
  return v7 != 1;
}

void CA::Render::AsynchronousState::~AsynchronousState(atomic_uint **this)
{
  CA::Render::AsynchronousState::~AsynchronousState(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

{
  *this = &unk_1EF1F7830;
  CA::Render::AsynchronousState::set_item(this, 0);
  v3 = this[5];
  if (v3)
  {
    this[6] = v3;
    operator delete(v3);
  }

  v4 = this[4];
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = this[3];
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 8))(v5);
  }

  --dword_1ED4EAACC;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, v2);
  }
}

atomic_uint *CA::Render::AsynchronousState::set_item(CA::Render::AsynchronousState *this, atomic_uint *a2)
{
  result = *(this + 3);
  if (result)
  {
    (*(*result + 40))(result);
    result = *(this + 3);
    *(result + 2) = 0;
    if (result == a2)
    {
      return result;
    }

    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*result + 8))(result);
    }

    if (!a2)
    {
      goto LABEL_9;
    }
  }

  else if (!a2)
  {
    return result;
  }

  atomic_fetch_add(a2 + 2, 1u);
LABEL_9:
  *(this + 3) = a2;
  return result;
}

void CA::Render::LayerHost::count_layers(CA::Render::LayerHost *this, int *a2, int *a3, char a4)
{
  os_unfair_lock_lock(&CA::Render::LayerHost::_lock);
  v8 = *(this + 11);
  if (v8)
  {
    if (atomic_fetch_add((v8 + 8), 1u))
    {
      os_unfair_lock_unlock(&CA::Render::LayerHost::_lock);
      pthread_mutex_lock((v8 + 72));
      v9 = CA::Render::Context::root_layer_handle(*(this + 11));
      if (v9)
      {
        v10 = *(v9 + 2);
        if (v10)
        {
          v11 = v10 + 2;
          if (atomic_fetch_add(v10 + 2, 1u))
          {
            pthread_mutex_unlock((v8 + 72));
            CA::Render::Layer::count_layers(v10, a2, a3, a4);
            if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
            {
              (*(*v10 + 16))(v10);
            }

            goto LABEL_14;
          }

          atomic_fetch_add(v11, 0xFFFFFFFF);
        }
      }

      pthread_mutex_unlock((v8 + 72));
LABEL_14:
      if (atomic_fetch_add((v8 + 8), 0xFFFFFFFF) == 1)
      {
        v12 = *(*v8 + 16);

        v12(v8);
      }

      return;
    }

    atomic_fetch_add((v8 + 8), 0xFFFFFFFF);
  }

  os_unfair_lock_unlock(&CA::Render::LayerHost::_lock);
}

atomic_uint **X::Ref<CA::Render::AsynchronousState>::operator=(atomic_uint **a1, atomic_uint **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != *a2)
  {
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
      }

      v4 = *a2;
    }

    if (v4)
    {
      v6 = v4 + 2;
      if (!atomic_fetch_add(v4 + 2, 1u))
      {
        v4 = 0;
        atomic_fetch_add(v6, 0xFFFFFFFF);
      }
    }

    *a1 = v4;
  }

  return a1;
}

double CA::Render::AsynchronousState::AsynchronousState(uint64_t a1, uint64_t *a2, int a3)
{
  *(a1 + 8) = 1;
  *(a1 + 12) = 37;
  ++dword_1ED4EAACC;
  *a1 = &unk_1EF1F7830;
  *(a1 + 16) = a3;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v4 = (v3 + 8);
    if (!atomic_fetch_add((v3 + 8), 1u))
    {
      v3 = 0;
      atomic_fetch_add(v4, 0xFFFFFFFF);
    }
  }

  *(a1 + 32) = v3;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

__n128 std::vector<unsigned long long>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void CA::Render::LayerHost::show(uint64_t a1, X::Stream *this, int a3, uint64_t a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    X::Stream::printf(this, "layer-host ");
    v23[0] = 0;
    os_unfair_lock_lock(&CA::Render::LayerHost::_lock);
    X::Ref<CA::Render::Texture>::operator=(v23, *(a1 + 88));
    os_unfair_lock_unlock(&CA::Render::LayerHost::_lock);
    v22 = 0;
    if (v23[0])
    {
      pthread_mutex_lock((v23[0] + 18));
      v17 = CA::Render::Context::root_layer_handle(*(a1 + 88));
      if (v17)
      {
        v18 = *(v17 + 2);
      }

      else
      {
        v18 = 0;
      }

      X::Ref<CA::Render::Texture>::operator=(&v22, v18);
      pthread_mutex_unlock((v23[0] + 18));
      if (v22)
      {
        (*(*v22 + 40))(v22, this, (a3 + 1), a4);
        v20 = v22;
        if (v22)
        {
          if (atomic_fetch_add(v22 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v20 + 16))(v20);
          }
        }
      }

      v21 = v23[0];
      if (v23[0] && atomic_fetch_add(v23[0] + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v21 + 16))(v21);
      }
    }

    return;
  }

  X::Stream::printf(this, "(layer-host %x", *(a1 + 28));
  v8 = *(a1 + 12);
  v9 = 2 * a3;
  if ((v8 & 0x200) != 0)
  {
    X::Stream::printf(this, "\n%*s", v9 + 2, "");
    X::Stream::printf(this, "(inherits-security true)");
    v8 = *(a1 + 12);
    if ((v8 & 0x400) == 0)
    {
LABEL_4:
      if ((v8 & 0x800) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  else if ((v8 & 0x400) == 0)
  {
    goto LABEL_4;
  }

  X::Stream::printf(this, "\n%*s", v9 + 2, "");
  X::Stream::printf(this, "(renders-asynchronously true)");
  v8 = *(a1 + 12);
  if ((v8 & 0x800) == 0)
  {
LABEL_5:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  X::Stream::printf(this, "\n%*s", v9 + 2, "");
  X::Stream::printf(this, "(renders-opaque true)");
  v8 = *(a1 + 12);
  if ((v8 & 0x1000) == 0)
  {
LABEL_6:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  X::Stream::printf(this, "\n%*s", v9 + 2, "");
  X::Stream::printf(this, "(resizes-hosted-context true)");
  v8 = *(a1 + 12);
  if ((v8 & 0x8000) == 0)
  {
LABEL_7:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  X::Stream::printf(this, "\n%*s", v9 + 2, "");
  X::Stream::printf(this, "(sequestered true)");
  v8 = *(a1 + 12);
  if ((v8 & 0x4000) == 0)
  {
LABEL_8:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_23:
  X::Stream::printf(this, "\n%*s", v9 + 2, "");
  X::Stream::printf(this, "(transforms-to-screen-space true)");
  if ((*(a1 + 12) & 0x2000) != 0)
  {
LABEL_9:
    X::Stream::printf(this, "\n%*s", v9 + 2, "");
    X::Stream::printf(this, "(stops-hit-test-transform-accumulation true)");
  }

LABEL_10:
  v10 = *(a1 + 96);
  if (v10 && (*(v10 + 584) & 0x20) != 0 || (v11 = *(a1 + 12), (v11 & 0x10000) != 0))
  {
    X::Stream::printf(this, "\n%*s", v9 + 2, "");
    X::Stream::printf(this, "(stop-secure-superlayers-validation true)");
    v11 = *(a1 + 12);
  }

  if ((v11 & 0x20000) != 0)
  {
    v12 = "(zombificationMode default)";
    goto LABEL_27;
  }

  if ((v11 & 0x40000) != 0)
  {
    v12 = "(zombificationMode always)";
    goto LABEL_27;
  }

  if ((v11 & 0x80000) != 0)
  {
    v12 = "(zombificationMode never)";
LABEL_27:
    X::Stream::printf(this, "\n%*s", v9 + 2, "");
    X::Stream::printf(this, v12);
  }

  os_unfair_lock_lock(&CA::Render::LayerHost::_lock);
  v13 = *(a1 + 88);
  if (v13)
  {
    if (atomic_fetch_add((v13 + 8), 1u))
    {
      os_unfair_lock_unlock(&CA::Render::LayerHost::_lock);
      if ((*(v13 + 14) & 0x10) != 0)
      {
        X::Stream::printf(this, "\n%*s", v9 + 2, "");
        X::Stream::printf(this, "(hosted-ctx-can-zombify)");
      }

      pthread_mutex_lock((v13 + 72));
      v14 = CA::Render::Context::root_layer_handle(*(a1 + 88));
      if (v14)
      {
        v15 = *(v14 + 2);
        if (v15)
        {
          if (atomic_fetch_add(v15 + 2, 1u))
          {
            pthread_mutex_unlock((v13 + 72));
            v16 = (a3 + 1);
            X::Stream::printf(this, "\n%*s", 2 * v16, "");
            (*(*v15 + 40))(v15, this, v16, a4);
            X::Stream::printf(this, ")");
            if (atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v15 + 16))(v15);
            }

            goto LABEL_46;
          }

          atomic_fetch_add(v15 + 2, 0xFFFFFFFF);
        }
      }

      pthread_mutex_unlock((v13 + 72));
      X::Stream::printf(this, ")");
LABEL_46:
      if (atomic_fetch_add((v13 + 8), 0xFFFFFFFF) == 1)
      {
        v19 = *(*v13 + 16);

        v19(v13);
      }

      return;
    }

    atomic_fetch_add((v13 + 8), 0xFFFFFFFF);
  }

  os_unfair_lock_unlock(&CA::Render::LayerHost::_lock);

  X::Stream::printf(this, ")");
}

dispatch_queue_t ___ZN2CA6Render16AsynchronousItemD2Ev_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  result = dispatch_queue_create("com.apple.coreanimation.async_hit_test_tree_dealloc", v0);
  CA::Render::AsynchronousItem::~AsynchronousItem()::queue = result;
  return result;
}

void CA::Render::Context::show_hosts(uint64_t a1, X::Stream *a2)
{
  os_unfair_lock_lock(&CA::Render::LayerHost::_lock);
  os_unfair_lock_lock(&CA::Render::Context::_context_lock);
  if (!*(a1 + 448))
  {
    CA::Render::Context::show_hosts_(a1, a2, 0);
    X::Stream::printf(a2, "\n");
  }

  os_unfair_lock_unlock(&CA::Render::Context::_context_lock);

  os_unfair_lock_unlock(&CA::Render::LayerHost::_lock);
}

uint64_t CA::Render::Context::show_hosts_(uint64_t a1, X::Stream *a2, int a3)
{
  pthread_mutex_lock((a1 + 72));
  v6 = *(a1 + 16);
  v7 = atomic_load((a1 + 228));
  if (!v7)
  {
    if (*(a1 + 256))
    {
      v8 = 0;
    }

    else
    {
      v8 = getpid();
    }

    v9 = 0;
    atomic_compare_exchange_strong((a1 + 228), &v9, v8);
    if (v9)
    {
      v7 = v9;
    }

    else
    {
      v7 = v8;
    }
  }

  v10 = CA::Render::Context::process_path(a1);
  X::Stream::printf(a2, "  %x; %spid %d [%s]", v6, "", v7, v10 + 28);
  if (!*(a1 + 260))
  {
    X::Stream::printf(a2, " (local)");
  }

  if (*(a1 + 352))
  {
    X::Stream::printf(a2, " (visible)");
  }

  if ((*(a1 + 584) & 4) != 0)
  {
    X::Stream::printf(a2, " (secure)");
  }

  v11 = (a3 + 1);
  X::Stream::printf(a2, "\n%*s", 2 * v11, "");
  for (i = *(a1 + 456); i; i = i[1])
  {
    v13 = *(*i + 88);
    if (v13)
    {
      CA::Render::Context::show_hosts_(v13, a2, v11);
    }
  }

  return pthread_mutex_unlock((a1 + 72));
}

uint64_t CA::Render::Context::needs_defer_update_locked(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 166);
  v2 = *&this[174]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(this + 166);
  if (v2)
  {
    return 1;
  }

  v4 = *&this[114]._os_unfair_lock_opaque;
  if (v4)
  {
    while (1)
    {
      v5 = *(*v4 + 88);
      if (v5)
      {
        if (CA::Render::Context::needs_defer_update_locked(v5))
        {
          break;
        }
      }

      v4 = v4[1];
      if (!v4)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t CA::OGL::clip_primitives(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int *a5, void *a6, float64x2_t *a7, _BYTE *a8, unsigned int a9, uint64_t a10, unsigned __int8 a11)
{
  v11 = a8;
  v78 = a4;
  v76 = a2;
  v16 = a1;
  v17 = a11;
  v85[5] = *MEMORY[0x1E69E9840];
  if (!a8 && a11)
  {
    MEMORY[0x1EEE9AC00](a1);
    bzero(v65, 0x300FuLL);
    v11 = v65;
    a9 = 256;
  }

  memset(v85, 0, 32);
  memset(v84, 0, sizeof(v84));
  memset(v83, 0, sizeof(v83));
  memset(v82, 0, sizeof(v82));
  memset(v81, 0, sizeof(v81));
  if (a5)
  {
    v19 = a5[1];
    v20 = *a5;
    v21 = (a5[2] + *a5);
    v22 = (a5[3] + v19);
    *(v81 + 12) = xmmword_183E20E40;
    if (a6)
    {
      v23 = *(a6 + 2) + 1;
    }

    else
    {
      v23 = 1;
    }

    DWORD2(v81[0]) = v23;
    *&v81[0] = a6;
    *(v82 + 12) = 1065353216;
    *(&v82[1] + 2) = -v20;
    DWORD2(v82[0]) = v23 + 1;
    *&v82[0] = v81;
    *(v83 + 12) = 3212836864;
    *(&v83[1] + 2) = v21;
    DWORD2(v83[0]) = v23 + 2;
    *&v83[0] = v82;
    *(v84 + 12) = 0x3F80000000000000;
    *(&v84[1] + 2) = -v19;
    DWORD2(v84[0]) = v23 + 3;
    *&v84[0] = v83;
    a6 = v85;
    *(&v85[1] + 4) = 0xBF80000000000000;
    *&v85[3] = v22;
    LODWORD(v85[1]) = v23 + 4;
    v85[0] = v84;
  }

  if (v16)
  {
    if (v16 == 2)
    {
      v74 = 0;
      v24 = 3;
      v73 = 1;
    }

    else
    {
      if (v16 != 1)
      {
        return 0;
      }

      v74 = 0;
      v73 = 3;
      v24 = 3;
    }
  }

  else
  {
    v74 = 1;
    v73 = 4;
    v24 = 4;
  }

  v79 = a10;
  v25 = *(a6 + 2) + v24;
  v26 = 48 * v25 + 16;
  v77 = v25;
  v75 = a3;
  if (v25 > 0x55)
  {
    v27 = malloc_type_malloc(48 * v25 + 16, 0xB1DDDCB4uLL);
    v29 = malloc_type_malloc(v26, 0x99745A89uLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v27 = &v65[-((v26 + 15) & 0xFFFFFFFFF0)];
    bzero(v27, v26);
    MEMORY[0x1EEE9AC00](v28);
    v29 = v27;
    a3 = v75;
    bzero(v27, v26);
  }

  if (v24 > v76)
  {
    v30 = 0;
    v31 = 0;
    goto LABEL_44;
  }

  v72 = a6;
  v69 = a11;
  v32 = 0;
  v30 = 0;
  v67 = v27;
  v33 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v66 = v29;
  v71 = (v29 + 15);
  v68 = v24;
  v70 = v24;
  while (1)
  {
    v34 = v32;
    if (a3)
    {
      v35 = v78;
      v36 = v78 + 48 * *(a3 + 2 * v32);
      v37 = *(v36 + 16);
      *v33 = *v36;
      *(v33 + 16) = v37;
      *(v33 + 32) = *(v36 + 32);
      v38 = v35 + 48 * *(a3 + 2 * (v34 + 1));
      v39 = *(v38 + 16);
      *(v33 + 48) = *v38;
      *(v33 + 64) = v39;
      *(v33 + 80) = *(v38 + 32);
      v40 = v35 + 48 * *(a3 + 2 * (v34 + 2));
      v41 = *(v40 + 16);
      *(v33 + 96) = *v40;
      *(v33 + 112) = v41;
      *(v33 + 128) = *(v40 + 32);
      if (v74)
      {
        v42 = *(a3 + 2 * (v34 + 3));
LABEL_26:
        v50 = v78 + 48 * v42;
        v51 = *(v50 + 16);
        *(v33 + 144) = *v50;
        *(v33 + 160) = v51;
        *(v33 + 176) = *(v50 + 32);
      }
    }

    else
    {
      v43 = v78;
      v44 = v78 + 48 * v32;
      v45 = *(v44 + 16);
      *v33 = *v44;
      *(v33 + 16) = v45;
      *(v33 + 32) = *(v44 + 32);
      v46 = v43 + 48 * (v34 + 1);
      v47 = *(v46 + 16);
      *(v33 + 48) = *v46;
      *(v33 + 64) = v47;
      *(v33 + 80) = *(v46 + 32);
      v48 = v43 + 48 * (v34 + 2);
      v49 = *(v48 + 16);
      *(v33 + 96) = *v48;
      *(v33 + 112) = v49;
      *(v33 + 128) = *(v48 + 32);
      if (v74)
      {
        v42 = v34 + 3;
        goto LABEL_26;
      }
    }

    if (a7)
    {
      v52 = v68;
      v53 = v33;
      do
      {
        *v53->f32 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vcvt_hight_f32_f64(vcvt_f32_f64(*a7), a7[1]), COERCE_FLOAT(*v53->f32)), vcvt_hight_f32_f64(vcvt_f32_f64(a7[2]), a7[3]), *v53, 1), vcvt_hight_f32_f64(vcvt_f32_f64(a7[4]), a7[5]), *v53->f32, 2), vcvt_hight_f32_f64(vcvt_f32_f64(a7[6]), a7[7]), *v53->f32, 3);
        v53 += 6;
        --v52;
      }

      while (v52);
    }

    v80 = 0;
    v54 = CA::OGL::clip_vertices(v72, v24, v33, (v71 & 0xFFFFFFFFFFFFFFF0), v77, &v80);
    if (v80)
    {
      if (v69)
      {
        if ((v80 - 1) >= 2)
        {
          v55 = &v54[6 * (v80 - 1)];
          v56 = (v80 - 2);
          v57 = v54 + 6;
          do
          {
            if (v30 + 3 > a9)
            {
              if ((std::function<BOOL ()(CA::OGL::Vertex *,unsigned int)>::operator()(*(v79 + 24), v11, v30) & 1) == 0)
              {
                goto LABEL_42;
              }

              v30 = 0;
            }

            v58 = &v11[48 * v30];
            v59 = *v57[-4].f32;
            *v58 = *v57[-6].f32;
            *(v58 + 1) = v59;
            *(v58 + 4) = v57[-2];
            LODWORD(v58) = v30 + 2;
            v60 = &v11[48 * v30 + 48];
            v61 = *v57[2].f32;
            *v60 = *v57->f32;
            *(v60 + 1) = v61;
            *(v60 + 4) = v57[4];
            v30 += 3;
            v62 = &v11[48 * v58];
            v63 = *v55[2].f32;
            *v62 = *v55->f32;
            *(v62 + 1) = v63;
            *(v62 + 4) = v55[4];
            v57 += 6;
            --v56;
          }

          while (v56);
        }

        goto LABEL_40;
      }

      if ((std::function<BOOL ()(CA::OGL::Vertex *,unsigned int)>::operator()(*(v79 + 24), v54, v80) & 1) == 0)
      {
        break;
      }
    }

LABEL_40:
    v32 = v34 + v73;
    v24 = v70;
    a3 = v75;
    if (v34 + v73 + v70 > v76)
    {
      v31 = 0;
      goto LABEL_43;
    }
  }

LABEL_42:
  v31 = 1;
LABEL_43:
  v17 = v69;
  v27 = v67;
  v29 = v66;
LABEL_44:
  if (v77 >= 0x56)
  {
    free(v27);
    free(v29);
  }

  if (v31)
  {
    return 0;
  }

  result = 1;
  if (v17)
  {
    if (v30)
    {
      return std::function<BOOL ()(CA::OGL::Vertex *,unsigned int)>::operator()(*(v79 + 24), v11, v30);
    }
  }

  return result;
}

float32x2_t *CA::OGL::clip_vertices(uint64_t *a1, unsigned int a2, float32x2_t *a3, float32x2_t *a4, unsigned int a5, unsigned int *a6)
{
  v11 = a1;
  v69[1] = *MEMORY[0x1E69E9840];
  v12 = 8 * a5;
  MEMORY[0x1EEE9AC00](a1);
  v13 = v69 - ((v12 + 15) & 0xFFFFFFFF0);
  bzero(v13, v12);
  MEMORY[0x1EEE9AC00](v14);
  v15 = v13;
  bzero(v13, v12);
  if (!v11)
  {
    goto LABEL_32;
  }

  do
  {
    v16 = 0;
    v17 = 0;
    v18 = vcvtq_f64_f32(*(v11 + 12));
    v19 = *(v11 + 6);
    v20 = a2;
    v21 = a3;
    do
    {
      v22 = vaddvq_f64(vmulq_f64(v18, vcvtq_f64_f32(*v21))) + v19 * v21[1].f32[1];
      *&v13[8 * v16] = v22;
      if (v22 < 0.0)
      {
        ++v17;
      }

      ++v16;
      v21 += 6;
    }

    while (a2 != v16);
    if (v17)
    {
      if (v17 != a2)
      {
        v23 = 0;
        v24 = &a3[6 * a2 - 6];
        v25 = *&v13[8 * a2 - 8];
        a2 = 0;
        while (1)
        {
          v26 = &a3[6 * v23];
          v27 = *&v13[8 * v23];
          if (v25 >= 0.0)
          {
            break;
          }

          if (v27 >= 0.0)
          {
            if (a2 >= a5 - 1)
            {
              goto LABEL_30;
            }

            v28 = 0;
            v29 = v25 / (v25 - v27);
            v30 = v24 + 1;
            v31 = &a4[6 * a2];
            v32 = vcvt_hight_f64_f32(*v24);
            v33 = vcvtq_f64_f32(*v24->f32);
            v34 = v26 + 2;
            v35 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(v33, vsubq_f64(vcvtq_f64_f32(*v26), v33), v29)), vmlaq_n_f64(v32, vsubq_f64(vcvt_hight_f64_f32(*v26->f32), v32), v29));
            *v31->f32 = v35;
            v36 = v31 + 2;
            v37 = 1;
            do
            {
              v38 = v30->f32[v28 * 2] + (v34[v28].f32[0] - v30->f32[v28 * 2]) * v29;
              v36[v28].f32[0] = v38;
              v39 = (2 * v28) | 4;
              v40 = v37;
              v41 = *(v30->f32 + v39) + (*(v34->f32 + v39) - *(v30->f32 + v39)) * v29;
              *(v36->f32 + v39) = v41;
              v28 = 1;
              v37 = 0;
            }

            while ((v40 & 1) != 0);
            v42 = v29;
            v43 = *v24[2].f32;
            v31[4] = v43;
            v31[4] = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(v43), 1.0 - v42), vcvtq_f32_f16(v26[4]), v42));
            *&v15[8 * a2] = vaddvq_f64(vmulq_f64(vcvtq_f64_f32(*(v11 + 12)), vcvtq_f64_f32(*v35.f32))) + *(v11 + 6) * v35.f32[3];
            v44 = a2 + 1;
            v45 = &a4[6 * v44];
            v46 = *v26[2].f32;
            *v45->f32 = *v26->f32;
            *v45[2].f32 = v46;
            v45[4] = v26[4];
            v47 = 2;
            goto LABEL_22;
          }

LABEL_24:
          ++v23;
          v25 = v27;
          v24 = v26;
          if (v23 == v20)
          {
            result = a4;
            a4 = a3;
            v68 = v15;
            v15 = v13;
            goto LABEL_27;
          }
        }

        if (v27 >= 0.0)
        {
          if (a2 == a5)
          {
LABEL_30:
            a2 = 0;
            result = a4;
            break;
          }

          v44 = a2;
          v65 = &a4[6 * a2];
          v66 = *v26[2].f32;
          *v65->f32 = *v26->f32;
          *v65[2].f32 = v66;
          v65[4] = v26[4];
          v47 = 1;
LABEL_22:
          v64 = v27;
        }

        else
        {
          if (a2 == a5)
          {
            goto LABEL_30;
          }

          v48 = 0;
          v49 = v25 / (v25 - v27);
          v44 = a2;
          v50 = v24 + 1;
          v51 = &a4[6 * a2];
          v52 = vcvt_hight_f64_f32(*v24);
          v53 = vcvtq_f64_f32(*v24->f32);
          v54 = v26 + 2;
          v55 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(v53, vsubq_f64(vcvtq_f64_f32(*v26), v53), v49)), vmlaq_n_f64(v52, vsubq_f64(vcvt_hight_f64_f32(*v26->f32), v52), v49));
          *v51->f32 = v55;
          v56 = v51 + 2;
          v57 = 1;
          do
          {
            v58 = v50->f32[v48 * 2] + (v54[v48].f32[0] - v50->f32[v48 * 2]) * v49;
            v56[v48].f32[0] = v58;
            v59 = (2 * v48) | 4;
            v60 = v57;
            v61 = *(v50->f32 + v59) + (*(v54->f32 + v59) - *(v50->f32 + v59)) * v49;
            *(v56->f32 + v59) = v61;
            v48 = 1;
            v57 = 0;
          }

          while ((v60 & 1) != 0);
          v62 = v49;
          v63 = *v24[2].f32;
          v51[4] = v63;
          v51[4] = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(v63), 1.0 - v62), vcvtq_f32_f16(v26[4]), v62));
          v64 = vaddvq_f64(vmulq_f64(vcvtq_f64_f32(*(v11 + 12)), vcvtq_f64_f32(*v55.f32))) + *(v11 + 6) * v55.f32[3];
          v47 = 1;
        }

        *&v15[8 * v44] = v64;
        a2 += v47;
        goto LABEL_24;
      }

      a2 = 0;
LABEL_32:
      result = a3;
      break;
    }

    result = a3;
    v68 = v13;
LABEL_27:
    if (a2 < 3)
    {
      break;
    }

    v11 = *v11;
    v13 = v68;
    a3 = result;
  }

  while (v11);
  *a6 = a2;
  return result;
}

uint64_t std::function<BOOL ()(CA::OGL::Vertex *,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = a2;
  v4 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  return (*(*a1 + 48))(a1, v5, &v4);
}

x_list_struct *list_sort_1(x_list_struct *a1, unint64_t a2, BOOL (*a3)(const void *, const void *))
{
  v3 = a1;
  if (a2 >= 2)
  {
    v5 = a2 >> 1;
    v6 = a1;
    v7 = (a2 >> 1) - 1;
    if (a2 >> 1 != 1)
    {
      v6 = a1;
      do
      {
        v6 = *(v6 + 1);
        --v7;
      }

      while (v7);
    }

    v8 = *(v6 + 1);
    *(v6 + 1) = 0;
    v9 = list_sort_1(a1, a2 >> 1, a3);
    v3 = list_sort_1(v8, a2 - v5, v10);
    if (atom_less(*v3, *v9))
    {
      v11 = *(v3 + 1);
      v12 = v9;
    }

    else
    {
      v12 = *(v9 + 1);
      v11 = v3;
      v3 = v9;
    }

    v13 = v12 != 0;
    if (v12 && v11)
    {
      v14 = v3;
      do
      {
        if (atom_less(*v11, *v12))
        {
          *(v14 + 1) = v11;
          v15 = *(v11 + 1);
          v16 = v12;
          v14 = v11;
          v11 = v15;
        }

        else
        {
          *(v14 + 1) = v12;
          v16 = *(v12 + 1);
          v15 = v11;
          v14 = v12;
          v12 = v16;
        }

        v13 = v16 != 0;
        if (v16)
        {
          v17 = v15 == 0;
        }

        else
        {
          v17 = 1;
        }
      }

      while (!v17);
    }

    else
    {
      v16 = v12;
      v15 = v11;
      v14 = v3;
    }

    if (!v13)
    {
      v16 = v15;
    }

    *(v14 + 1) = v16;
  }

  return v3;
}

int32x4_t CA::WindowServer::d65a_to_d65_matrix(uint64_t a1, unint64_t *a2, double a3, float32x4_t a4, double a5, double a6, float32x4_t a7)
{
  v61 = *MEMORY[0x1E69E9840];
  v8 = CA::OGL::MetalContext::get_pipeline_queue(void)::once;
  {
    v46 = a2;
    v8 = CA::OGL::MetalContext::get_pipeline_queue(void)::once;
    a2 = v46;
    if (v36)
    {
      CA::WindowServer::d65a_to_d65_matrix(CAChromaticities)::D65_xyY = xmmword_183E211D0;
      v8 = CA::OGL::MetalContext::get_pipeline_queue(void)::once;
      a2 = v46;
    }
  }

  v9 = CA::OGL::MetalContext::get_pipeline_queue(void)::once;
  {
    v47 = a2;
    v9 = CA::OGL::MetalContext::get_pipeline_queue(void)::once;
    v8 = CA::OGL::MetalContext::get_pipeline_queue(void)::once;
    a2 = v47;
    if (v37)
    {
      CA::WindowServer::d65a_to_d65_matrix(CAChromaticities)::D65a_xyY = xmmword_183E211E0;
      v9 = CA::OGL::MetalContext::get_pipeline_queue(void)::once;
      v8 = CA::OGL::MetalContext::get_pipeline_queue(void)::once;
      a2 = v47;
    }
  }

  a4.i64[0] = *a2;
  a7.i64[0] = a2[1];
  a4.i32[2] = 1.0;
  v10 = a4;
  v44 = a4;
  a7.i32[2] = 1.0;
  v45 = *(v8 + 131);
  v11.i64[0] = a2[2];
  v11.i64[1] = __PAIR64__(v45.u32[3], 1.0);
  v39 = v11;
  v41 = a7;
  v12 = *(v9 + 133);
  v43 = v12;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  CA::ColorAdaptation::RGBXYZConversionMatrices<float>::RGBXYZConversionMatrices(&v49, v10, a7, v11, v12);
  memset(v48, 0, sizeof(v48));
  CA::ColorAdaptation::RGBXYZConversionMatrices<float>::RGBXYZConversionMatrices(v48, v44, v41, v39, v45);
  v13 = vdivq_f32(vmlaq_n_f32(vmlaq_laneq_f32(vmulq_n_f32(xmmword_183E211F0, vmuls_lane_f32(v45.f32[0], v45, 2) / v45.f32[1]), xmmword_183E21200, v45, 2), xmmword_183E21210, vmuls_lane_f32(1.0 - vaddv_f32(*v45.f32), v45, 2) / v45.f32[1]), vmlaq_n_f32(vmlaq_laneq_f32(vmulq_n_f32(xmmword_183E211F0, vmuls_lane_f32(v43.f32[0], v43, 2) / v43.f32[1]), xmmword_183E21200, v43, 2), xmmword_183E21210, vmuls_lane_f32(1.0 - vaddv_f32(*v43.f32), v43, 2) / v43.f32[1]));
  *&v14 = 0;
  *(&v14 + 1) = v13.u32[2];
  v42 = v14;
  DWORD1(v14) = v13.i32[1];
  v40 = v14;
  v38 = v13.u32[0];
  v62 = __invert_f3(*_PromotedConst);
  v15 = 0;
  v55 = v38;
  v56 = v40;
  v57 = v42;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  do
  {
    *(&v58 + v15) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v62.columns[0], COERCE_FLOAT(*(&v55 + v15))), v62.columns[1], *(&v55 + v15), 1), v62.columns[2], *(&v55 + v15), 2);
    v15 += 16;
  }

  while (v15 != 48);
  v16 = 0;
  v17 = v58;
  v18 = v59;
  v19 = v60;
  v55 = xmmword_183E211F0;
  v56 = xmmword_183E21200;
  v57 = xmmword_183E21210;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  do
  {
    *(&v58 + v16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, COERCE_FLOAT(*(&v55 + v16))), v18, *(&v55 + v16), 1), v19, *(&v55 + v16), 2);
    v16 += 16;
  }

  while (v16 != 48);
  v20 = 0;
  v21 = v58;
  v22 = v59;
  v23 = v60;
  v21.i32[3] = 0;
  v22.i32[3] = 0;
  v23.i32[3] = 0;
  v24 = v52;
  v25 = v53;
  v26 = v54;
  v55 = v21;
  v56 = v22;
  v57 = v23;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  do
  {
    *(&v58 + v20) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(*(&v55 + v20))), v25, *(&v55 + v20), 1), v26, *(&v55 + v20), 2);
    v20 += 16;
  }

  while (v20 != 48);
  v27 = 0;
  v28 = v58;
  v29 = v59;
  v30 = v60;
  v55 = v49;
  v56 = v50;
  v57 = v51;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  do
  {
    *(&v58 + v27) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, COERCE_FLOAT(*(&v55 + v27))), v29, *(&v55 + v27), 1), v30, *(&v55 + v27), 2);
    v27 += 16;
  }

  while (v27 != 48);
  v31 = vaddq_f32(vaddq_f32(v59, v58), v60);
  v31.f32[0] = 1.0 / fmaxf(fmaxf(v31.f32[0], v31.f32[2]), v31.f32[1]);
  result = vmulq_n_f32(v58, v31.f32[0]);
  v33 = vmulq_n_f32(v59, v31.f32[0]);
  v34 = vmulq_n_f32(v60, v31.f32[0]);
  v31.i64[0] = vtrn1q_s32(result, v33).u64[0];
  v31.i64[1] = __PAIR64__(result.u32[1], v34.u32[0]);
  v35 = vuzp1q_s32(vuzp2q_s32(v33, v34), v33);
  v35.i32[2] = result.i32[2];
  *a1 = v31;
  *(a1 + 16) = v35;
  *(a1 + 32) = v34.i32[2];
  return result;
}

uint64_t CA::ColorAdaptation::RGBXYZConversionMatrices<float>::RGBXYZConversionMatrices(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v5.f32[0] = vmuls_lane_f32(a2.f32[0], a2, 2) / a2.f32[1];
  v6.f32[0] = vmuls_lane_f32(a3.f32[0], a3, 2) / a3.f32[1];
  v7.f32[0] = vmuls_lane_f32(a4.f32[0], a4, 2) / a4.f32[1];
  v16 = vmuls_lane_f32(a5.f32[0], a5, 2) / a5.f32[1];
  v5.i32[1] = a2.i32[2];
  v5.f32[2] = vmuls_lane_f32(1.0 - vaddv_f32(*a2.f32), a2, 2) / a2.f32[1];
  v6.i32[1] = a3.i32[2];
  v6.f32[2] = vmuls_lane_f32(1.0 - vaddv_f32(*a3.f32), a3, 2) / a3.f32[1];
  v17.columns[1] = v6;
  v12 = v6;
  v13 = v5;
  v7.i32[1] = a4.i32[2];
  v7.f32[2] = vmuls_lane_f32(1.0 - vaddv_f32(*a4.f32), a4, 2) / a4.f32[1];
  v17.columns[2] = v7;
  v11 = v7;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v14 = vmuls_lane_f32(1.0 - vaddv_f32(*a5.f32), a5, 2) / a5.f32[1];
  v17.columns[0] = v5;
  v18 = __invert_f3(v17);
  v9 = vmlaq_n_f32(vmlaq_laneq_f32(vmulq_n_f32(v18.columns[0], v16), v18.columns[1], a5, 2), v18.columns[2], v14);
  v18.columns[0] = vmulq_n_f32(v13, v9.f32[0]);
  v18.columns[1] = vmulq_lane_f32(v12, *v9.f32, 1);
  v18.columns[2] = vmulq_laneq_f32(v11, v9, 2);
  *a1 = v18;
  v19 = __invert_f3(v18);
  *(a1 + 56) = v19.columns[0].i32[2];
  *(a1 + 48) = v19.columns[0].i64[0];
  *(a1 + 72) = v19.columns[1].i32[2];
  *(a1 + 64) = v19.columns[1].i64[0];
  *(a1 + 88) = v19.columns[2].i32[2];
  *(a1 + 80) = v19.columns[2].i64[0];
  return a1;
}

void ___ZN2CA12WindowServer11DebugPresetEj_block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = +[CAWindowServer serverIfRunning];
  if (v2)
  {
    v3 = v2;
    context = objc_autoreleasePoolPush();
    v4 = [v3 displays];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v32 objects:v31 count:16];
    if (v5)
    {
      v6 = *v33;
      do
      {
        v7 = 0;
        do
        {
          if (*v33 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v32 + 1) + 8 * v7);
          if (![v8 displayType])
          {
            v10 = *(a1 + 32);
            if (v10 == 2)
            {
              LODWORD(v9) = 1.0;
              [v8 setUserAdjustment:&_ZZZN2CA12WindowServer11DebugPresetEjEUb_E8identity scale:v9];
              [v8 setMaximumSDRLuminance:100.0];
              [v8 setMaximumHDRLuminance:1000.0];
              [v8 setMinimumLuminance:0.0005];
              [v8 setMaximumReferenceLuminance:1000.0];
              [v8 setTrinityCabalConfig:1];
              [v8 setPreserveAppleSRGBGammaResponse:0];
              [v8 setIsReferencePreset:1];
              v17 = [objc_msgSend(v8 "brightnessCapabilities")];
              [v17 setObject:&unk_1EF22B850 forKeyedSubscript:@"EDRPotentialHeadroom"];
              [v17 setObject:&unk_1EF22B850 forKeyedSubscript:@"EDRReferenceHeadroom"];
              [v17 setObject:&unk_1EF22B860 forKeyedSubscript:@"MinNits"];
              [v17 setObject:&unk_1EF22B860 forKeyedSubscript:@"MaxNits"];
              [v17 setObject:&unk_1EF22B870 forKeyedSubscript:@"MaxNitsEDR"];
              [v8 setBrightnessCapabilities:v17];

              v30 = 0;
              *buf = 0u;
              v29 = 0u;
              v22 = CA::WindowServer::d65a_to_d65_matrix(buf, _ZZZN2CA12WindowServer11DebugPresetEjEUb_E4srgb, 0.0, v18, v19, v20, v21);
              v22.i32[0] = 1.0;
              [v8 setColorMatrix:buf scale:*v22.i64 rampDuration:0.0];
            }

            else
            {
              LODWORD(v9) = 1.0;
              if (v10 == 1)
              {
                [v8 setUserAdjustment:&_ZZZN2CA12WindowServer11DebugPresetEjEUb_E8identity scale:v9];
                [v8 setMaximumSDRLuminance:100.0];
                [v8 setMaximumHDRLuminance:1000.0];
                [v8 setMinimumLuminance:0.0005];
                [v8 setMaximumReferenceLuminance:1000.0];
                [v8 setTrinityCabalConfig:1];
                [v8 setPreserveAppleSRGBGammaResponse:0];
                [v8 setIsReferencePreset:1];
                v11 = [objc_msgSend(v8 "brightnessCapabilities")];
                [v11 setObject:&unk_1EF22B850 forKeyedSubscript:@"EDRPotentialHeadroom"];
                [v11 setObject:&unk_1EF22B850 forKeyedSubscript:@"EDRReferenceHeadroom"];
                [v11 setObject:&unk_1EF22B860 forKeyedSubscript:@"MinNits"];
                [v11 setObject:&unk_1EF22B860 forKeyedSubscript:@"MaxNits"];
                [v11 setObject:&unk_1EF22B870 forKeyedSubscript:@"MaxNitsEDR"];
                [v8 setBrightnessCapabilities:v11];

                v30 = 0;
                *buf = 0u;
                v29 = 0u;
                v16 = CA::WindowServer::d65a_to_d65_matrix(buf, _ZZZN2CA12WindowServer11DebugPresetEjEUb_E2p3, 0.0, v12, v13, v14, v15);
                v16.i32[0] = 1.0;
                [v8 setColorMatrix:buf scale:*v16.i64 rampDuration:0.0];
              }

              else
              {
                [v8 setUserAdjustment:&_ZZZN2CA12WindowServer11DebugPresetEjEUb_E8identity scale:v9];
                [v8 setMaximumSDRLuminance:500.0];
                [v8 setMaximumHDRLuminance:1600.0];
                [v8 setMinimumLuminance:0.0005];
                [v8 setMaximumReferenceLuminance:600.0];
                [v8 setTrinityCabalConfig:1];
                [v8 setPreserveAppleSRGBGammaResponse:1];
                [v8 setIsReferencePreset:0];
                v23 = [objc_msgSend(v8 "brightnessCapabilities")];
                [v23 setObject:&unk_1EF22B880 forKeyedSubscript:@"EDRPotentialHeadroom"];
                [v23 setObject:&unk_1EF22B890 forKeyedSubscript:@"EDRReferenceHeadroom"];
                [v23 setObject:&unk_1EF22B8A0 forKeyedSubscript:@"MinNits"];
                [v23 setObject:&unk_1EF22B8B0 forKeyedSubscript:@"MaxNits"];
                [v23 setObject:&unk_1EF22B8C0 forKeyedSubscript:@"MaxNitsEDR"];
                [v8 setBrightnessCapabilities:v23];

                LODWORD(v24) = 1.0;
                [v8 setColorMatrix:&_ZZZN2CA12WindowServer11DebugPresetEjEUb_E8identity scale:v24 rampDuration:0.0];
              }
            }

            v25 = [v8 commitPreset];
            if (x_log_get_windowserver(void)::once != -1)
            {
              dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
            }

            v26 = x_log_get_windowserver(void)::log;
            if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *&buf[4] = v25;
              _os_log_error_impl(&dword_183AA6000, v26, OS_LOG_TYPE_ERROR, "success: %d", buf, 8u);
            }
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v32 objects:v31 count:16];
      }

      while (v5);
    }

    objc_autoreleasePoolPop(context);
  }
}

void ___ZN2CA12WindowServer15DebugBrightnessEd_block_invoke(uint64_t a1)
{
  v87 = *MEMORY[0x1E69E9840];
  v2 = +[CAWindowServer serverIfRunning];
  if (v2)
  {
    v3 = v2;
    context = objc_autoreleasePoolPush();
    v4 = [v3 displays];
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v72 = [v4 countByEnumeratingWithState:&v83 objects:v82 count:16];
    if (!v72)
    {
      goto LABEL_56;
    }

    v71 = *v84;
    __asm { FMOV            V10.2S, #1.0 }

    obj = v4;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v84 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v83 + 1) + 8 * v10);
        if (![v11 displayType] || objc_msgSend(v11, "displayType") == 1)
        {
          if (x_log_get_windowserver(void)::once != -1)
          {
            dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
          }

          v12 = x_log_get_windowserver(void)::log;
          if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v11 displayId];
            *buf = 67109120;
            *&buf[4] = v13;
            _os_log_impl(&dword_183AA6000, v12, OS_LOG_TYPE_DEFAULT, "Debug Brightness Display %u", buf, 8u);
            if (x_log_get_windowserver(void)::once != -1)
            {
              dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
            }
          }

          v14 = x_log_get_windowserver(void)::log;
          if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v11 brightnessAvailable];
            *buf = 67109120;
            *&buf[4] = v15;
            _os_log_impl(&dword_183AA6000, v14, OS_LOG_TYPE_DEFAULT, "    Brightness Available: %d", buf, 8u);
            if (x_log_get_windowserver(void)::once != -1)
            {
              dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
            }
          }

          v16 = x_log_get_windowserver(void)::log;
          if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v11 whitePointAvailable];
            *buf = 67109120;
            *&buf[4] = v17;
            _os_log_impl(&dword_183AA6000, v16, OS_LOG_TYPE_DEFAULT, "    WhitePoint Available: %d", buf, 8u);
            if (x_log_get_windowserver(void)::once != -1)
            {
              dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
            }
          }

          v18 = x_log_get_windowserver(void)::log;
          if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v11 whitePointD50XYZ];
            *buf = 67109120;
            *&buf[4] = v19;
            _os_log_impl(&dword_183AA6000, v18, OS_LOG_TYPE_DEFAULT, "    WhitePoint XYZD50: %d", buf, 8u);
          }

          v20 = [v11 brightnessCapabilities];
          if (x_log_get_windowserver(void)::once != -1)
          {
            dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
          }

          v21 = x_log_get_windowserver(void)::log;
          if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [objc_msgSend(v20 "debugDescription")];
            *buf = 136315138;
            *&buf[4] = v22;
            _os_log_impl(&dword_183AA6000, v21, OS_LOG_TYPE_DEFAULT, "    Capabilities: %s", buf, 0xCu);
          }

          v23 = [v11 averagePixelConstraints];
          if (v23)
          {
            if (x_log_get_windowserver(void)::once != -1)
            {
              dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
            }

            v24 = x_log_get_windowserver(void)::log;
            if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              v25 = [objc_msgSend(v23 "debugDescription")];
              *buf = 136315138;
              *&buf[4] = v25;
              v26 = v24;
              v27 = "    Average Pixel Constraints: %s";
              v28 = 12;
              goto LABEL_35;
            }
          }

          else
          {
            if (x_log_get_windowserver(void)::once != -1)
            {
              dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
            }

            v29 = x_log_get_windowserver(void)::log;
            if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v26 = v29;
              v27 = "    Average Pixel Constraints: NONE";
              v28 = 2;
LABEL_35:
              _os_log_impl(&dword_183AA6000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, v28);
            }
          }

          [objc_msgSend(v20 objectForKeyedSubscript:{@"MinNits", "doubleValue"}];
          v31 = v30;
          [objc_msgSend(v20 objectForKeyedSubscript:{@"MaxNits", "doubleValue"}];
          v33 = v32;
          if ([v11 brightnessAvailable])
          {
            v73 = 0;
            if (CADeviceSupportsRTPLC::once[0] != -1)
            {
              dispatch_once(CADeviceSupportsRTPLC::once, &__block_literal_global_356);
            }

            if (CADeviceSupportsRTPLC::rtplc == 1)
            {
              LODWORD(v34) = 2.0;
              [v11 setSDRBrightness:v34];
              LODWORD(v35) = 10.0;
              [v11 setAmbient:v35];
              [v11 commitBrightness:&v73];
              usleep(0xF4240u);
              v36 = [[CABrightnessRamper alloc] initWithDisplay:v11];
              [(CABrightnessRamper *)v36 setLowAmbientStrengthBegin:0.0];
              [(CABrightnessRamper *)v36 setLowAmbientStrengthEnd:1.0];
              [(CAWindowServerRamper *)v36 setDuration:*(a1 + 32)];
              [(CAWindowServerRamper *)v36 runRamp];

              usleep(0x1E8480u);
              v37 = [[CABrightnessRamper alloc] initWithDisplay:v11];
              [(CABrightnessRamper *)v37 setLowAmbientStrengthBegin:1.0];
              [(CABrightnessRamper *)v37 setLowAmbientStrengthEnd:0.0];
              [(CAWindowServerRamper *)v37 setDuration:*(a1 + 32)];
              [(CAWindowServerRamper *)v37 runRamp];

              usleep(0x2DC6C0u);
            }

            v38 = MGGetSInt64Answer();
            if ((v38 - 33072) <= 0x20 && ((1 << (v38 - 48)) & 0x100010001) != 0)
            {
              LODWORD(v39) = 1146388480;
              [v11 setSDRBrightness:v39];
              LODWORD(v40) = 1189765120;
              [v11 setAmbient:v40];
              [v11 commitBrightness:&v73];
              usleep(0xF4240u);
              v41 = [[CABrightnessRamper alloc] initWithDisplay:v11];
              [(CABrightnessRamper *)v41 setHighAmbientStrengthBegin:0.0];
              [(CABrightnessRamper *)v41 setHighAmbientStrengthEnd:1.0];
              [(CAWindowServerRamper *)v41 setDuration:*(a1 + 32)];
              [(CAWindowServerRamper *)v41 runRamp];

              usleep(0x1E8480u);
              v42 = [[CABrightnessRamper alloc] initWithDisplay:v11];
              [(CABrightnessRamper *)v42 setHighAmbientStrengthBegin:1.0];
              [(CABrightnessRamper *)v42 setHighAmbientStrengthEnd:0.0];
              [(CAWindowServerRamper *)v42 setDuration:*(a1 + 32)];
              [(CAWindowServerRamper *)v42 runRamp];

              usleep(0x2DC6C0u);
            }

            if (CADeviceSupportsGCP::once != -1)
            {
              dispatch_once(&CADeviceSupportsGCP::once, &__block_literal_global_488);
            }

            if (CADeviceSupportsGCP::b == 1)
            {
              LODWORD(v39) = 1128792064;
              [v11 setSDRBrightness:v39];
              LODWORD(v43) = 5.0;
              [v11 setAmbient:v43];
              [v11 commitBrightness:&v73];
              usleep(0xF4240u);
              v44 = [[CABrightnessRamper alloc] initWithDisplay:v11];
              [(CABrightnessRamper *)v44 setContrastPreservationBegin:1.0];
              [(CABrightnessRamper *)v44 setContrastPreservationEnd:1.5];
              [(CAWindowServerRamper *)v44 setDuration:*(a1 + 32)];
              [(CAWindowServerRamper *)v44 runRamp];

              usleep(0x1E8480u);
              v45 = [[CABrightnessRamper alloc] initWithDisplay:v11];
              [(CABrightnessRamper *)v45 setContrastPreservationBegin:1.5];
              [(CABrightnessRamper *)v45 setContrastPreservationEnd:0.5];
              [(CAWindowServerRamper *)v45 setDuration:*(a1 + 32)];
              [(CAWindowServerRamper *)v45 runRamp];

              usleep(0x1E8480u);
              v46 = [[CABrightnessRamper alloc] initWithDisplay:v11];
              [(CABrightnessRamper *)v46 setContrastPreservationBegin:0.5];
              [(CABrightnessRamper *)v46 setContrastPreservationEnd:1.0];
              [(CAWindowServerRamper *)v46 setDuration:*(a1 + 32)];
              [(CAWindowServerRamper *)v46 runRamp];

              usleep(0x2DC6C0u);
            }

            if (CADeviceSupportsMedina::once != -1)
            {
              dispatch_once(&CADeviceSupportsMedina::once, &__block_literal_global_368);
            }

            if (CADeviceSupportsMedina::medina == 1)
            {
              LODWORD(v39) = 1133903872;
              [v11 setSDRBrightness:v39];
              [v11 commitBrightness:&v73];
              usleep(0xF4240u);
              v47 = [[CABrightnessRamper alloc] initWithDisplay:v11];
              [(CABrightnessRamper *)v47 setIndicatorNitsBegin:0.0];
              [(CABrightnessRamper *)v47 setIndicatorNitsEnd:1000.0];
              [(CAWindowServerRamper *)v47 setDuration:*(a1 + 32)];
              [(CAWindowServerRamper *)v47 runRamp];

              v48 = [[CABrightnessRamper alloc] initWithDisplay:v11];
              [(CABrightnessRamper *)v48 setIndicatorLimitBegin:200.0];
              [(CABrightnessRamper *)v48 setIndicatorLimitEnd:1000.0];
              [(CAWindowServerRamper *)v48 setDuration:*(a1 + 32)];
              [(CAWindowServerRamper *)v48 runRamp];

              usleep(0x1E8480u);
            }

            LODWORD(v39) = 1153957888;
            [v11 setBrightnessLimit:v39];
            [v11 commitBrightness:&v73];
            v49 = [[CABrightnessRamper alloc] initWithDisplay:v11];
            [(CABrightnessRamper *)v49 setSdrNitsBegin:v31];
            v50 = fmin(v33, 600.0);
            [(CABrightnessRamper *)v49 setSdrNitsEnd:v50];
            [(CAWindowServerRamper *)v49 setDuration:*(a1 + 32)];
            [(CAWindowServerRamper *)v49 runRamp];

            v51 = [[CABrightnessRamper alloc] initWithDisplay:v11];
            [(CABrightnessRamper *)v51 setSdrNitsBegin:v50];
            [(CABrightnessRamper *)v51 setSdrNitsEnd:v31];
            [(CAWindowServerRamper *)v51 setDuration:*(a1 + 32)];
            [(CAWindowServerRamper *)v51 runRamp];

            v52 = [[CABrightnessRamper alloc] initWithDisplay:v11];
            [(CABrightnessRamper *)v52 setSdrNitsBegin:100.0];
            [(CABrightnessRamper *)v52 setSdrNitsEnd:100.0];
            [(CABrightnessRamper *)v52 setHeadroomBegin:1.0];
            [(CABrightnessRamper *)v52 setHeadroomEnd:16.0];
            [(CAWindowServerRamper *)v52 setDuration:*(a1 + 32)];
            [(CAWindowServerRamper *)v52 runRamp];

            v53 = [[CABrightnessRamper alloc] initWithDisplay:v11];
            [(CABrightnessRamper *)v53 setSdrNitsBegin:100.0];
            [(CABrightnessRamper *)v53 setSdrNitsEnd:100.0];
            [(CABrightnessRamper *)v53 setHeadroomBegin:16.0];
            [(CABrightnessRamper *)v53 setHeadroomEnd:1.0];
            [(CAWindowServerRamper *)v53 setDuration:*(a1 + 32)];
            [(CAWindowServerRamper *)v53 runRamp];

            v54 = [[CABrightnessRamper alloc] initWithDisplay:v11];
            [(CABrightnessRamper *)v54 setLimitBegin:100.0];
            [(CABrightnessRamper *)v54 setLimitEnd:v31];
            [(CAWindowServerRamper *)v54 setDuration:*(a1 + 32)];
            [(CAWindowServerRamper *)v54 runRamp];

            v55 = [[CABrightnessRamper alloc] initWithDisplay:v11];
            [(CABrightnessRamper *)v55 setLimitBegin:v31];
            [(CABrightnessRamper *)v55 setLimitEnd:100.0];
            [(CAWindowServerRamper *)v55 setDuration:*(a1 + 32)];
            [(CAWindowServerRamper *)v55 runRamp];

            v56 = [[CABrightnessRamper alloc] initWithDisplay:v11];
            [(CABrightnessRamper *)v56 setContrastEnhancerBegin:0.0];
            [(CABrightnessRamper *)v56 setContrastEnhancerEnd:1.0];
            [(CAWindowServerRamper *)v56 setDuration:*(a1 + 32)];
            [(CAWindowServerRamper *)v56 runRamp];

            v57 = [[CABrightnessRamper alloc] initWithDisplay:v11];
            [(CABrightnessRamper *)v57 setContrastEnhancerBegin:1.0];
            [(CABrightnessRamper *)v57 setContrastEnhancerEnd:0.0];
            [(CAWindowServerRamper *)v57 setDuration:*(a1 + 32)];
            [(CAWindowServerRamper *)v57 runRamp];

            LODWORD(v58) = 1153957888;
            [v11 setBrightnessLimit:v58];
            [v11 commitBrightness:&v73];
            v80 = 0x3F800000uLL;
            *&buf[12] = 0;
            *&buf[4] = 0;
            *buf = 1065353216;
            v81 = 1065353216;
            memset(v77, 0, sizeof(v77));
            DWORD1(v77[0]) = 1065353216;
            HIDWORD(v77[0]) = 1065353216;
            v78 = 1065353216;
            [v11 setWhitePoint:v77 rampDuration:&v73 error:2.0];
            usleep(0x2DC6C0u);
            [v11 setWhitePoint:buf rampDuration:&v73 error:2.0];
            usleep(0x2DC6C0u);
            v59 = [[CAWhitePointRamper alloc] initWithDisplay:v11];
            [(CAWindowServerRamper *)v59 setDuration:2.0];
            v75 = *buf;
            *v76 = v80;
            *&v76[16] = v81;
            [(CAWhitePointRamper *)v59 setWhitePointStart:&v75];
            *&v76[8] = 0;
            *v76 = 0;
            *&v75 = 0;
            *(&v75 + 1) = _D10;
            *&v76[12] = 1065353216;
            [(CAWhitePointRamper *)v59 setWhitePointEnd:&v75];
            LODWORD(v60) = 1.0;
            [(CAWhitePointRamper *)v59 setScaleStart:v60];
            LODWORD(v61) = 1050253722;
            [(CAWhitePointRamper *)v59 setScaleEnd:v61];
            [(CAWindowServerRamper *)v59 runRamp];

            v62 = [[CAWhitePointRamper alloc] initWithDisplay:v11];
            [(CAWindowServerRamper *)v62 setDuration:2.0];
            *&v75 = 0;
            *(&v75 + 1) = _D10;
            *v76 = 0;
            *&v76[8] = 0;
            *&v76[12] = 1065353216;
            [(CAWhitePointRamper *)v62 setWhitePointEnd:&v75];
            *&v75 = 0;
            *(&v75 + 1) = _D10;
            *v76 = 0;
            *&v76[8] = 0;
            *&v76[12] = 1065353216;
            [(CAWhitePointRamper *)v62 setWhitePointStart:&v75];
            LODWORD(v63) = 1050253722;
            [(CAWhitePointRamper *)v62 setScaleStart:v63];
            LODWORD(v64) = 1.0;
            [(CAWhitePointRamper *)v62 setScaleEnd:v64];
            [(CAWindowServerRamper *)v62 runRamp];

            v65 = [[CAWhitePointRamper alloc] initWithDisplay:v11];
            [(CAWindowServerRamper *)v65 setDuration:2.0];
            *&v76[8] = 0;
            *v76 = 0;
            *&v75 = 0;
            *(&v75 + 1) = _D10;
            *&v76[12] = 1065353216;
            [(CAWhitePointRamper *)v65 setWhitePointStart:&v75];
            v75 = *buf;
            *v76 = v80;
            *&v76[16] = v81;
            [(CAWhitePointRamper *)v65 setWhitePointEnd:&v75];
            [(CAWindowServerRamper *)v65 runRamp];

            v66 = dispatch_queue_create("CA Debug Brightness", 0);
            [v11 setNotificationQueue:v66];
            v74 = @"notificationEDR";
            [v11 registerForNotifications:objc_msgSend(MEMORY[0x1E695DEC8] withBlock:{"arrayWithObjects:count:", &v74, 1), &__block_literal_global_5698}];
            dispatch_release(v66);
          }

          v67 = [[CAAccessibilityRamper alloc] initWithDisplay:v11];
          [(CAAccessibilityRamper *)v67 setAxScaleBegin:1.0];
          [(CAAccessibilityRamper *)v67 setAxScaleEnd:0.25];
          [(CAWindowServerRamper *)v67 setDuration:2.0];
          [(CAWindowServerRamper *)v67 runRamp];

          v68 = [[CAAccessibilityRamper alloc] initWithDisplay:v11];
          [(CAAccessibilityRamper *)v68 setAxScaleBegin:0.25];
          [(CAAccessibilityRamper *)v68 setAxScaleEnd:1.0];
          [(CAWindowServerRamper *)v68 setDuration:2.0];
          [(CAWindowServerRamper *)v68 runRamp];
        }

        ++v10;
      }

      while (v72 != v10);
      v72 = [obj countByEnumeratingWithState:&v83 objects:v82 count:16];
      if (!v72)
      {
LABEL_56:
        objc_autoreleasePoolPop(context);
        return;
      }
    }
  }
}

void ___ZN2CA12WindowServer15DebugBrightnessEd_block_invoke_224(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v4 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = [objc_msgSend(a3 "debugDescription")];
    _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "Received EDRRequest notification with payload: %s", &v5, 0xCu);
  }
}

void ___ZN2CA12WindowServer22DebugFrameInfoCallbackEv_block_invoke()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = +[CAWindowServer serverIfRunning];
  if (v0)
  {
    v1 = v0;
    v2 = objc_autoreleasePoolPush();
    v3 = [v1 displays];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
    if (v4)
    {
      v5 = *v11;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v10 + 1) + 8 * i);
          if (![v7 displayType] || objc_msgSend(v7, "displayType") == 1)
          {
            v8[0] = MEMORY[0x1E69E9820];
            v8[1] = 3221225472;
            v8[2] = ___ZN2CA12WindowServer22DebugFrameInfoCallbackEv_block_invoke_2;
            v8[3] = &unk_1E6DED8C0;
            v8[4] = v7;
            [v7 setFrameInfoCallback:v8];
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
      }

      while (v4);
    }

    objc_autoreleasePoolPop(v2);
  }
}

void ___ZN2CA12WindowServer22DebugFrameInfoCallbackEv_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v4 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) displayId];
    v6 = *(a2 + 56);
    v7 = *(a2 + 45);
    v8 = *(a2 + 46);
    v9 = *(a2 + 48);
    v10 = *(a2 + 52);
    v11 = "No";
    if (*(a2 + 76))
    {
      v11 = "Yes";
    }

    v12[0] = 67110658;
    v12[1] = v5;
    v13 = 2048;
    v14 = v6;
    v15 = 1024;
    v16 = v7;
    v17 = 1024;
    v18 = v8;
    v19 = 2048;
    v20 = v9;
    v21 = 2048;
    v22 = v10;
    v23 = 2080;
    v24 = v11;
    _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "CAExternalFrameInfo Display %u\n    APCE:               %f\n    RTPLC Triggered:    %d\n    RTPLC Capping:      %d\n    Nominal Brightness: %f\n    Brightness Scale:   %f\n    Has EDR:            %s\n", v12, 0x3Cu);
  }
}

unint64_t CA::Render::compute_occlusion_data(unint64_t *a1, uint64_t a2)
{
  v85 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 144);
  if (v4)
  {
    v5 = *(v4 + 8) + 5;
  }

  else
  {
    v36 = *(a2 + 32);
    v38 = v36[9];
    v37 = v36[10];
    v39 = v36[11];
    v40 = v36[12];
    v41 = *(a2 + 56);
    if (!v41)
    {
      v59 = CA::Render::alloc_occlusion_data(a1, 4);
      v6 = v59;
      v60 = 0;
      v61 = *(a2 + 80);
      v62 = *(a2 + 64) + v38;
      v63 = *(a2 + 72) + v37;
      v65 = v59[10];
      v64 = v59[11];
      v66 = v59[12];
      do
      {
        if ((v60 - 1) >= 2)
        {
          v67 = 0.0;
        }

        else
        {
          v67 = v39;
        }

        *&v65[v60] = v62 + v67;
        if (v60 >= 2)
        {
          v68 = v40;
        }

        else
        {
          v68 = 0.0;
        }

        *&v64[v60] = v63 + v68;
        *(v66 + 8 * v60++) = v61;
      }

      while (v60 != 4);
      *v59 = *v65;
      v59[2] = v65[1];
      v59[1] = *v64;
      v59[3] = v64[2];
      goto LABEL_37;
    }

    v42 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v43 = v41[3];
    v44 = v41[7];
    v45 = v41[15];
    while (1)
    {
      v46 = v38 + *&CA::Render::compute_occlusion_data(CA::Render::occlusion_closure *,CA::Render::LayerNode *)::mx[v42] * v39;
      v47 = v37 + *&CA::Render::compute_occlusion_data(CA::Render::occlusion_closure *,CA::Render::LayerNode *)::my[v42] * v40;
      v48 = v45 + v46 * v43 + v47 * v44;
      if (v48 <= 0.0)
      {
        break;
      }

      v49 = v41[1];
      v50 = v41[13];
      v51 = v41[5];
      v52 = 1.0 / v48;
      *(&v83 + v42 * 8) = (v41[12] + *v41 * v46 + v41[4] * v47) * v52;
      *(&v81 + v42 * 8) = (v50 + v49 * v46 + v51 * v47) * v52;
      *(&v79 + v42 * 8) = (v41[14] + v41[2] * v46 + v41[6] * v47) * v52;
      if (++v42 == 4)
      {
        v6 = CA::Render::alloc_occlusion_data(a1, 4);
        v53 = *(v6 + 80);
        v54 = v84;
        *v53 = v83;
        v53[1] = v54;
        v55 = *(v6 + 88);
        v56 = v82;
        *v55 = v81;
        v55[1] = v56;
        v57 = *(v6 + 96);
        v58 = v80;
        *v57 = v79;
        v57[1] = v58;
        v8 = *(v6 + 72);
        goto LABEL_5;
      }
    }

    v5 = 5;
  }

  v6 = CA::Render::alloc_occlusion_data(a1, v5);
  v8 = CA::Render::clip_layer(a2, *(v6 + 80), *(v6 + 88), *(v6 + 96), v7);
  if (!v8)
  {
    goto LABEL_27;
  }

  *(v6 + 72) = v8;
LABEL_5:
  v10 = *(v6 + 80);
  v11 = *(v6 + 88);
  v12 = *v10;
  *(v6 + 16) = *v10;
  *v6 = v12;
  v13 = *v11;
  *(v6 + 24) = *v11;
  *(v6 + 8) = v13;
  if (v8 >= 2)
  {
    v14 = v8 - 1;
    v15 = v11 + 1;
    v16 = v10 + 1;
    v17 = v13;
    v18 = v12;
    do
    {
      v19 = *v16;
      if (*v16 >= v18)
      {
        v20 = *v16;
      }

      else
      {
        *v6 = v19;
        v20 = *v16;
        v18 = v19;
      }

      if (v20 > v12)
      {
        *(v6 + 16) = v20;
        v12 = v20;
      }

      v21 = *v15;
      if (*v15 >= v17)
      {
        v22 = *v15;
      }

      else
      {
        *(v6 + 8) = v21;
        v22 = *v15;
        v17 = v21;
      }

      if (v22 > v13)
      {
        *(v6 + 24) = v22;
        v13 = v22;
      }

      ++v15;
      ++v16;
      --v14;
    }

    while (v14);
  }

  v23 = *(a2 + 56);
  if (!v23)
  {
LABEL_37:
    *(v6 + 32) = 0;
    *(v6 + 40) = 0;
    *(v6 + 48) = xmmword_183E20E00;
    return v6;
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v24 = *(v6 + 96);
  v25 = v10[1];
  v26 = v11[1];
  v27 = v24[1];
  v28 = v10[2];
  v29 = v11[2];
  v30 = v24[2];
  v31 = v29 * (*v24 - v27) + (v30 - *v24) * v26 + (v27 - v30) * *v11;
  v32 = (v28 - *v10) * v27 + (v25 - v28) * *v24 + v30 * (*v10 - v25);
  v33 = v28 * (*v11 - v26) + (v29 - *v11) * v25 + (v26 - v29) * *v10;
  v34 = v32 * v32 + v33 * v33 + v31 * v31;
  if (fabs(v34) <= 0.1)
  {
    CA::Mat4Impl::mat4_invert(&v71, v23, v9);
    v31 = *&v72 * (1.0 / *(&v78 + 1));
    v32 = *&v74 * (1.0 / *(&v78 + 1));
    v33 = *&v76 * (1.0 / *(&v78 + 1));
    v34 = v31 * v31 + v32 * v32 + v33 * v33;
    if (v34 >= 0.0000999999975)
    {
      v35 = *&v78 * (1.0 / *(&v78 + 1));
      goto LABEL_40;
    }

LABEL_27:
    *(v6 + 64) = *a1;
    *a1 = v6;
    return 0;
  }

  v35 = -(v27 * *v11 - v26 * *v24) * v28 + -(v29 * *v24 - v30 * *v11) * v25 + -(v30 * v26 - v29 * v27) * *v10;
LABEL_40:
  if (fabs(v34 + -1.0) > 0.0001)
  {
    v69 = 1.0 / sqrt(v34);
    v31 = v69 * v31;
    v32 = v69 * v32;
    v33 = v69 * v33;
    v35 = v69 * v35;
  }

  if (v33 < 0.0)
  {
    v31 = -v31;
    v32 = -v32;
    v33 = -v33;
    v35 = -v35;
    *(v6 + 104) = 1;
  }

  *(v6 + 32) = v31;
  *(v6 + 40) = v32;
  *(v6 + 48) = v33;
  *(v6 + 56) = v35;
  return v6;
}

BOOL CA::Render::separating_axis(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (*(a1 + 104))
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  v7 = *(v5 + 8 * v4);
  v8 = *(v6 + 8 * v4);
  if (*(a1 + 104))
  {
    v9 = a3;
  }

  else
  {
    v9 = a4;
  }

  v10 = *(v5 + 8 * v9) - v7;
  v11 = *(v6 + 8 * v9) - v8;
  v12 = v10 * v10 + v11 * v11;
  if (v12 < 0.01)
  {
    return 0;
  }

  v14 = *(a2 + 72);
  if (!v14)
  {
    return 1;
  }

  v15 = *(a2 + 80);
  v16 = *(a2 + 88);
  v17 = 1.0 / sqrt(v12);
  v18 = v14 - 1;
  do
  {
    v19 = *v15++;
    v20 = v19;
    v21 = *v16++;
    v22 = ((v7 - v20) * v11 + (v21 - v8) * v10) * v17;
    v24 = v18-- != 0;
    result = v22 <= 0.5;
  }

  while (v22 <= 0.5 && v24);
  return result;
}

BOOL CA::Render::in_both_half_spaces(double *a1, uint64_t a2, double a3)
{
  v3 = *(a2 + 72);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = *(a2 + 80);
  v7 = *(a2 + 88);
  v8 = *(a2 + 96);
  do
  {
    v9 = *v6++;
    v10 = v9;
    v11 = *v7++;
    v12 = a1[7] + a1[4] * v10 + a1[5] * v11;
    v13 = *v8++;
    v14 = v12 + a1[6] * v13;
    v5 += COERCE_UNSIGNED_INT64(v14 + a3) >> 63;
    v4 += COERCE_UNSIGNED_INT64(a3 - v14) >> 63;
    --v3;
  }

  while (v3);
  if (v5)
  {
    v15 = v4 == 0;
  }

  else
  {
    v15 = 1;
  }

  return !v15;
}

void CA::Render::insert_node_by_minz(CA::Render::LayerNode **a1, CA::Render::LayerNode *this)
{
  v2 = this;
  CA::Render::LayerNode::update_z_range(this, this);
  if ((*(v2 + 24) & 0x18) != 0)
  {
    v4 = *a1;
    *a1 = v2;
    *v2 = v4;
    *(v2 + 1) = a1;
  }

  else
  {
    v5 = a1;
    do
    {
      v5 = *(v5 + 1);
    }

    while (v5 != a1 && v5[30] <= *(v2 + 30));
    v6 = *(v2 + 1);
    v4 = *v5;
    *(v2 + 1) = v5;
    *v5 = v2;
    *v6 = v4;
    v2 = v6;
  }

  *(v4 + 1) = v2;
}

uint64_t CA::Render::in_positive_half_space(double *a1, uint64_t a2)
{
  v2 = *(a2 + 72);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = a1[4];
  v6 = a1[5];
  v7 = *(a2 + 96);
  v8 = a1[6];
  v9 = a1[7];
  if (v5 * *v3 + 0.0000999999975 + v6 * *v4 + v8 * *v7 + v9 < 0.0)
  {
    return 0;
  }

  v11 = 0;
  v12 = v3 + 1;
  v13 = v4 + 1;
  v14 = v7 + 1;
  while (v2 - 1 != v11)
  {
    v15 = v5 * v12[v11] + 0.0000999999975 + v6 * v13[v11] + v8 * v14[v11] + v9;
    ++v11;
    if (v15 < 0.0)
    {
      return v11 >= v2;
    }
  }

  v11 = *(a2 + 72);
  return v11 >= v2;
}

uint64_t CA::Render::in_negative_half_space(double *a1, uint64_t a2)
{
  v2 = *(a2 + 72);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = a1[4];
  v6 = a1[5];
  v7 = *(a2 + 96);
  v8 = a1[6];
  v9 = a1[7];
  if (v5 * *v3 + -0.0000999999975 + v6 * *v4 + v8 * *v7 + v9 > 0.0)
  {
    return 0;
  }

  v11 = 0;
  v12 = v3 + 1;
  v13 = v4 + 1;
  v14 = v7 + 1;
  while (v2 - 1 != v11)
  {
    v15 = v5 * v12[v11] + -0.0000999999975 + v6 * v13[v11] + v8 * v14[v11] + v9;
    ++v11;
    if (v15 > 0.0)
    {
      return v11 >= v2;
    }
  }

  v11 = *(a2 + 72);
  return v11 >= v2;
}

unint64_t CA::Render::alloc_occlusion_data(unint64_t *a1, int a2)
{
  v2 = a1;
  v3 = (a2 + 1) & 0xFFFFFFFE;
  result = *a1;
  if (!result)
  {
LABEL_7:
    result = (x_heap_malloc(v2[1], 24 * v3 + 128) + 15) & 0xFFFFFFFFFFFFFFF0;
    *(result + 76) = v3;
    v6 = result + 112 + 8 * v3;
    *(result + 80) = result + 112;
    *(result + 88) = v6;
    *(result + 96) = v6 + 8 * v3;
    goto LABEL_8;
  }

  if (*(result + 76) < v3)
  {
    while (1)
    {
      v5 = result;
      result = *(result + 64);
      if (!result)
      {
        goto LABEL_7;
      }

      if (*(result + 76) >= v3)
      {
        v2 = (v5 + 64);
        break;
      }
    }
  }

  *v2 = *(result + 64);
LABEL_8:
  *(result + 72) = v3;
  *(result + 104) = 0;
  return result;
}

float CA::ColorMatrix::set_hue_rotate(CA::ColorMatrix *this, float a2)
{
  *(this + 9) = 1065353216;
  *(this + 12) = 0;
  *(this + 4) = 0;
  *(this + 60) = 0;
  *(this + 52) = 0;
  *(this + 17) = 0;
  v4 = __sincosf_stret(a2);
  v3.f32[0] = v4.__cosval;
  v5.i32[0] = 1046066128;
  *this = ((v4.__cosval * 0.7873) + 0.2126) + (v4.__sinval * -0.2126);
  v6 = vmls_lane_f32(0x3D93DD983F371759, 0x3D93DD983F371759, v3, 0);
  v7 = vmul_n_f32(0x3F6D844D3F371759, v4.__sinval);
  LODWORD(v8) = vsub_f32(v6, v7).u32[0];
  v9 = vadd_f32(v6, v7);
  HIDWORD(v8) = v9.i32[1];
  *(this + 4) = v8;
  v10 = vmul_n_f32(0x3E91D14E3E59B3D0, v4.__cosval);
  v5.f32[0] = vsub_f32(v5, v10).f32[0];
  v5.i32[1] = vadd_f32(v10, vdup_n_s32(0x3F371759u)).i32[1];
  *(this + 20) = vmla_n_f32(v5, 0x3E0F5C293E126E98, v4.__sinval);
  *(this + 7) = v6.f32[1] + (v4.__sinval * -0.283);
  *(this + 10) = v5.f32[0] - (v4.__sinval * 0.7873);
  *(this + 11) = v9.i32[0];
  result = ((v4.__cosval * 0.9278) + 0.0722) + (v4.__sinval * 0.0722);
  *(this + 12) = result;
  return result;
}

double CAColorMatrixMakeSaturation@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *&a2 = fmaxf(*&a2, 0.0);
  v2 = (*&a2 * 0.9278) + 0.0722;
  *a1 = (*&a2 * 0.7873) + 0.2126;
  v3 = vmls_lane_f32(0x3D93DD983F371759, 0x3D93DD983F371759, *&a2, 0);
  *(a1 + 4) = v3;
  *(a1 + 12) = 0;
  v4 = vmul_n_f32(0x3E91D14E3E59B3D0, *&a2);
  v5 = vsub_f32(1046066128, v4);
  v6 = vzip1_s32(v5, v3);
  v5.i32[1] = vadd_f32(v4, vdup_n_s32(0x3F371759u)).i32[1];
  *(a1 + 20) = v5;
  *(a1 + 28) = v3.i32[1];
  *(a1 + 32) = 0;
  *(a1 + 40) = v6;
  *(a1 + 48) = v2;
  *(a1 + 60) = 0;
  *(a1 + 52) = 0;
  *(a1 + 68) = 0;
  *&result = 1065353216;
  *(a1 + 72) = 1065353216;
  return result;
}

void CAColorMatrixMakeBrightness(uint64_t a1@<X8>, float a2@<S0>)
{
  *a1 = 1065353216;
  *(a1 + 4) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = a2;
  *(a1 + 20) = 0x3F80000000000000;
  *(a1 + 28) = 0;
  *(a1 + 36) = a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1065353216;
  *(a1 + 56) = a2;
  *(a1 + 60) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = 1065353216;
}

double CAColorMatrixMakeContrast@<D0>(uint64_t a1@<X8>, float a2@<S0>)
{
  *a1 = a2;
  *(a1 + 4) = 0;
  v2 = 0.5 - (a2 * 0.5);
  *(a1 + 12) = 0;
  *(a1 + 16) = v2;
  *(a1 + 20) = 0;
  *(a1 + 24) = a2;
  *(a1 + 28) = 0;
  *(a1 + 36) = v2;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 52) = 0;
  *(a1 + 56) = v2;
  *(a1 + 60) = 0;
  *(a1 + 68) = 0;
  *&result = 1065353216;
  *(a1 + 72) = 1065353216;
  return result;
}

void CAColorMatrixMakeMultiplyColor(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>)
{
  *a1 = a2;
  *(a1 + 12) = 0;
  *(a1 + 4) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = a3;
  *(a1 + 36) = 0;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = a4;
  *(a1 + 60) = 0;
  *(a1 + 52) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = a5;
  *(a1 + 76) = 0;
}

float CAColorMatrixMakeColorSourceOver@<S0>(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>)
{
  *a1 = 1.0 - a5;
  *(a1 + 4) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = a5 * a2;
  result = a5 * a3;
  *(a1 + 20) = 0;
  *(a1 + 24) = 1.0 - a5;
  *(a1 + 28) = 0;
  *(a1 + 36) = a5 * a3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1.0 - a5;
  *(a1 + 52) = 0;
  *(a1 + 56) = a5 * a4;
  *(a1 + 60) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = 1.0 - a5;
  *(a1 + 76) = a5;
  return result;
}

double CAColorMatrixMakePlusL@<D0>(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>)
{
  *a1 = 1065353216;
  *(a1 + 4) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = a5 * a2;
  *(a1 + 20) = 0x3F80000000000000;
  *(a1 + 28) = 0;
  *(a1 + 36) = a5 * a3;
  *(a1 + 40) = 0;
  *&result = 1065353216;
  *(a1 + 48) = 1065353216;
  *(a1 + 56) = a5 * a4;
  *(a1 + 60) = 0;
  *(a1 + 68) = 0x3F80000000000000;
  *(a1 + 76) = a5;
  return result;
}

double CAColorMatrixMakePlusD@<D0>(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>)
{
  *a1 = 1065353216;
  *(a1 + 4) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = -(a5 - (a5 * a2));
  *(a1 + 20) = 0x3F80000000000000;
  *(a1 + 28) = 0;
  *(a1 + 36) = -(a5 - (a5 * a3));
  *(a1 + 40) = 0;
  *&result = 1065353216;
  *(a1 + 48) = 1065353216;
  *(a1 + 56) = -(a5 - (a5 * a4));
  *(a1 + 60) = 0;
  *(a1 + 68) = 0x3F80000000000000;
  *(a1 + 76) = a5;
  return result;
}

__n128 CAColorMatrixConcat@<Q0>(CA::ColorMatrix *a1@<X0>, CA::ColorMatrix *a2@<X1>, const CA::ColorMatrix *a3@<X3>, uint64_t a4@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  CA::concat(&v7, a1, a2, a3);
  v5 = v10;
  *(a4 + 32) = v9;
  *(a4 + 48) = v5;
  *(a4 + 64) = v11;
  result = v8;
  *a4 = v7;
  *(a4 + 16) = result;
  return result;
}

void CA::CG::fill_path(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v6 = v4;
  v7 = v3;
  v8 = v2;
  v10 = v9;
  v12 = v11;
  v13 = v1;
  v15 = v14;
  v257 = *MEMORY[0x1E69E9840];
  v16 = *(*&v14 + 8);
  if (!v11)
  {
    v19 = v2 == 1 ? v4 ^ 1 | 0x10 : v4 ^ 1;
    v20 = CA::Shape::new_shape(v1, v3, v19);
    if (v20)
    {
      v22 = v20;
      CA::OGL::emit_shape(v16, v20, v21);

      CA::Shape::unref(v22);
      return;
    }
  }

  if (v10)
  {
    v18 = *v10;
    v17 = v10[1];
  }

  else
  {
    *(&v5 - 8) = CGPathGetBoundingBox(v13);
    v23.i64[0] = *&v259.origin.x;
    v23.i64[1] = v5.i64[0];
    v24.f64[0] = 0.0;
    v25.i64[0] = *&v259.size.width;
    v25.i64[1] = *&v259.size.height;
    v26 = vdupq_lane_s64(vcgtq_f64(v24, v259.size).i64[0], 0);
    v27.i64[1] = v5.i64[0];
    *v27.i64 = v259.size.width + v259.origin.x;
    v18 = vbslq_s8(v26, v27, v23);
    v28.i64[1] = *&v259.size.height;
    v259.origin.x = -v259.size.width;
    v17 = vbslq_s8(v26, v28, v25);
    if (v259.size.height < 0.0)
    {
      v18.f64[1] = v259.size.height + *v5.i64;
      v17.f64[1] = -v259.size.height;
    }
  }

  if (v12)
  {
    v29 = *(v12 + 4) * 0.5;
    if (!*(v12 + 11))
    {
      v30 = *(v12 + 6);
      if (v30 < 1.0)
      {
        v30 = 1.0;
      }

      v29 = v30 * v29;
    }

    v31 = v17.f64[1];
    if (v17.f64[0] > v17.f64[1])
    {
      v31 = v17.f64[0];
    }

    if (v31 < 1.79769313e308)
    {
      v5.i64[0] = 0;
      v32 = vaddq_f64(vbslq_s8(vcgezq_f64((*v12)[1]), (*v12)[1], vnegq_f64((*v12)[1])), vbslq_s8(vcgezq_f64(**v12), **v12, vnegq_f64(**v12)));
      if (*(v12 + 10) == 2)
      {
        v29 = v29 * 1.41421356;
      }

      v33 = vmulq_n_f64(vnegq_f64(v32), v29);
      v18 = vaddq_f64(v18, v33);
      __asm { FMOV            V2.2D, #-2.0 }

      v39 = vmlaq_f64(v17, _Q2, v33);
      v40 = vclezq_f64(v39);
      v17 = vandq_s8(v39, vdupq_lane_s64(vmvnq_s8(vcgtq_s64(v5, vorrq_s8(vdupq_laneq_s64(v40, 1), v40))).i64[0], 0));
    }
  }

  v41 = v17.f64[1];
  if (v17.f64[0] > v17.f64[1])
  {
    v41 = v17.f64[0];
  }

  if (v41 < 1.79769313e308)
  {
    v42 = *(v7 + 16);
    v43 = vmlaq_laneq_f64(vmulq_n_f64(*v7, v18.f64[0]), v42, v18, 1);
    v44 = vmulq_n_f64(*v7, v17.f64[0]);
    v45 = vaddq_f64(v43, v44);
    v46 = vminnmq_f64(v43, v45);
    v47 = vmaxnmq_f64(v43, v45);
    v48 = vmlaq_laneq_f64(v43, v42, v17, 1);
    v49 = vaddq_f64(v48, v44);
    v50 = vminnmq_f64(v46, vminnmq_f64(v48, v49));
    v18 = vaddq_f64(v50, *(v7 + 32));
    v17 = vsubq_f64(vmaxnmq_f64(v47, vmaxnmq_f64(v48, v49)), v50);
  }

  v51 = vceqzq_f64(v17);
  v52 = 0uLL;
  if ((vorrq_s8(vdupq_laneq_s64(v51, 1), v51).u64[0] & 0x8000000000000000) == 0)
  {
    v53 = vceqq_f64(v17, v17);
    if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v53), 1), v53).u64[0] & 0x8000000000000000) == 0)
    {
      v54 = vcvtmq_s64_f64(vmaxnmq_f64(v18, vdupq_n_s64(0xC1BFFFFFFF000000)));
      v52 = vuzp1q_s32(v54, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v18, v17), vdupq_n_s64(0x41C0000000000000uLL))), v54));
    }
  }

  v55 = vextq_s8(v52, v52, 8uLL);
  v56 = vceq_s32(*v55.i8, 0x100000001);
  if ((v56.i8[0] & 1) == 0 || (v56.i8[4] & 1) == 0 || vmulq_laneq_f64(v17, v17, 1).f64[0] >= 0.00392156886)
  {
    v228 = v52;
    v229 = v55;
    v226 = v18;
    v227 = v17;
    v233 = 0uLL;
    CA::Shape::get_bounds(*(*(v16 + 656) + 8), &v233);
    v59 = *(v16 + 672);
    v60 = (v59 ? v59 + 48 : v16 + 608);
    v61 = vclez_s32(*(&v233 + 8));
    if ((vpmax_u32(v61, v61).u32[0] & 0x80000000) == 0)
    {
      v62 = v60[1];
      v63 = vclez_s32(v62);
      if ((vpmax_u32(v63, v63).u32[0] & 0x80000000) == 0)
      {
        *&v58 = vmax_s32(*&v233, *v60);
        *&v57 = vsub_s32(vmin_s32(vadd_s32(*&v233, *(&v233 + 8)), vadd_s32(*v60, v62)), *&v58);
        v64 = vclez_s32(*&v57);
        if ((vpmax_u32(v64, v64).u32[0] & 0x80000000) == 0)
        {
          v225 = v58;
          *(&v58 + 1) = v57;
          v223 = v57;
          v224 = v58;
          v233 = v58;
          v65 = CA::OGL::Context::need_transparent_source(v16);
          v67 = DWORD2(v224);
          v68 = *(&v224 + 8);
          v69 = vclez_s32(*(&v224 + 8));
          v70 = vpmax_u32(v69, v69).u32[0];
          if (v65)
          {
            v71 = v225;
            if ((v70 & 0x80000000) != 0 || (v72 = vclez_s32(*v229.i8), (vpmax_u32(v72, v72).u32[0] & 0x80000000) != 0) || (v73 = vclez_s32(vsub_s32(vmin_s32(vadd_s32(*&v225, *(&v224 + 8)), vadd_s32(*v228.i8, *v229.i8)), vmax_s32(*&v225, *v228.i8))), (vpmax_u32(v73, v73).u32[0] & 0x80000000) != 0))
            {
              v250 = 0uLL;
              v93 = &v250;
              goto LABEL_61;
            }

            v229.i32[0] = v65;
            v228.i32[0] = DWORD1(v223);
          }

          else
          {
            *(&v71 + 1) = *(&v225 + 1);
            if ((v70 & 0x80000000) != 0)
            {
              return;
            }

            v74 = vclez_s32(*v229.i8);
            if ((vpmax_u32(v74, v74).u32[0] & 0x80000000) != 0)
            {
              return;
            }

            *&v71 = vmax_s32(*&v225, *v228.i8);
            v75 = vsub_s32(vmin_s32(vadd_s32(*&v225, *(&v224 + 8)), vadd_s32(*v228.i8, *v229.i8)), *&v71);
            v76 = vclez_s32(v75);
            if ((vpmax_u32(v76, v76).u32[0] & 0x80000000) != 0)
            {
              return;
            }

            v229.i32[0] = v65;
            *&v77 = v71;
            *(&v77 + 1) = v75;
            v233 = v77;
            v67 = v75.i32[0];
            v68 = v75;
            v228.i32[0] = v75.i32[1];
          }

          v225 = v71;
          if (v8 == 1 || (v78 = (*(*v16 + 232))(v16, 32), *&v71 = v225, !v78) || (v80 = *(v16 + 672)) == 0 || (v81 = v80[11].i32[1], (v81 & 0x2000) == 0) || (v136 = *(*(v16 + 16) + 496), v136 == 12) || (v136 - 1) > 0x18)
          {
            v82 = 0;
            v251 = &v253;
            v252 = xmmword_183E21150;
            v250.i64[1] = 0;
            v250.i64[0] = &v250.i64[1];
            *&v240.f64[0] = &v250.i64[1];
            v240.f64[1] = 0.0;
            v241 = 0uLL;
            v245 = 0;
            v242 = 0x3FC0000000000000;
            v243 = 0u;
            memset(v244, 0, sizeof(v244));
            *(&v244[1] + 15) = 0;
            v83 = vadd_s32(v68, *&v71);
            v84.i64[0] = v83.i32[0];
            v84.i64[1] = v83.i32[1];
            v246 = vdupq_n_s64(0x7FF0000000000000uLL);
            v247 = vdupq_n_s64(0xFFF0000000000000);
            v85 = vcvtq_f64_s64(v84);
            v86 = *v7;
            _ZF = *v7 == 1.0;
            v84.i64[0] = v71;
            v84.i64[1] = SDWORD1(v71);
            v87 = vcvtq_f64_s64(v84);
            v88 = v7;
            v248 = v87;
            v249 = v85;
            v89 = v229.i32[0];
            if (!_ZF)
            {
              goto LABEL_64;
            }

            v90 = 1;
            while (v90 != 6)
            {
              v91 = v90;
              v85.i64[0] = *(v7 + 8 * v90);
              *v66.i64 = CA::Mat2Impl::mat2_identity_double[v90++];
              if (*v85.i64 != *v66.i64)
              {
                v92 = v91 - 1;
                v82 = (v91 - 1) > 4;
                v88 = v7;
                if (v92 < 5)
                {
LABEL_64:
                  if (v12)
                  {
                    if (v67 <= v228.i32[0])
                    {
                      v94 = v228.i32[0];
                    }

                    else
                    {
                      v94 = v67;
                    }

                    v85.i32[0] = 1073741822;
                    v66.i32[0] = v94;
                    v95 = vdupq_lane_s32(*&vcgtq_s32(v66, v85), 0);
                    v96 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
                    *v85.i64 = v67;
                    v97 = v228.i32[0];
                    if (v94 > 1073741822)
                    {
                      *v85.i64 = 1.79769313e308;
                    }

                    v98 = *(v7 + 8);
                    v100 = vdupq_lane_s64(*&v98.f64[0], 0);
                    v100.f64[0] = v86;
                    if (v94 > 1073741822)
                    {
                      v97 = 1.79769313e308;
                    }

                    v99.f64[0] = *(v7 + 24);
                    v99.f64[1] = *(v7 + 16);
                    v101 = vmulq_f64(v99, v100);
                    v102 = vsubq_f64(v101, vdupq_laneq_s64(v101, 1)).f64[0];
                    if (v102 == 0.0)
                    {
                      v109 = 0uLL;
                      v110 = 0uLL;
                      v107 = 0uLL;
                    }

                    else
                    {
                      v103 = 1.0 / v102;
                      v104 = *(v7 + 32);
                      v105 = vmulq_n_f64(v98, v103);
                      v106.f64[1] = v86;
                      v106.f64[0] = *(v7 + 24);
                      v110 = vmulq_n_f64(v106, v103);
                      v107.f64[0] = v110.f64[0];
                      v107.f64[1] = -v105.f64[0];
                      v108 = vmulq_f64(v104, v105);
                      v109 = vmlsq_f64(vextq_s8(v108, v108, 8uLL), v110, v104);
                      v110.f64[0] = -v105.f64[1];
                    }

                    v112 = vbslq_s8(v95, v96, v87);
                    if (*v85.i64 <= v97)
                    {
                      v113 = v97;
                    }

                    else
                    {
                      v113 = *v85.i64;
                    }

                    if (v113 >= 1.79769313e308)
                    {
                      *&v85.i64[1] = v97;
                    }

                    else
                    {
                      v114 = vmlaq_laneq_f64(vmulq_n_f64(v107, v112.f64[0]), v110, v112, 1);
                      v115 = vmulq_n_f64(v107, *v85.i64);
                      v116 = vaddq_f64(v114, v115);
                      v117 = vminnmq_f64(v114, v116);
                      v118 = vmaxnmq_f64(v114, v116);
                      v119 = vmlaq_n_f64(v114, v110, v97);
                      v120 = vaddq_f64(v119, v115);
                      v121 = vminnmq_f64(v117, vminnmq_f64(v119, v120));
                      v122 = vmaxnmq_f64(v118, vmaxnmq_f64(v119, v120));
                      v112 = vaddq_f64(v121, v109);
                      v85 = vsubq_f64(v122, v121);
                    }

                    v236 = v112;
                    v237 = v85;
                    *&v234[0] = v88;
                    *(&v234[0] + 1) = &v240;
                    CGPathApplyStrokedDashedPath();
                  }

                  else
                  {
                    *&v236.f64[0] = v88;
                    *&v236.f64[1] = &v240;
                    if (v82)
                    {
                      v111 = CA::CG::PathIterator::Iterator<CA::ScanConverter::Path>::callback_1;
                    }

                    else
                    {
                      v111 = CA::CG::PathIterator::Iterator<CA::ScanConverter::Path>::callback_0;
                    }

                    CGPathApply(v13, &v236, v111);
                  }

                  CA::ScanConverter::Path::closepath(v240.f64);
                  v123 = (*(*v16 + 232))(v16, 10);
                  if (v123 || (v228.i32[0] + *(*&v15 + 1448) - 1) / *(*&v15 + 1448) * ((v67 + *(*&v15 + 1444) - 1) / *(*&v15 + 1444)) > CA::CG::Renderer::_max_mosaic_cells)
                  {
                    CA::OGL::Shape::fill_sc_path(v16, &v240, v8, v229.i8[0], v6, *&v225, v68);
LABEL_89:
                    x_heap_free(v250.i64[0]);
                    return;
                  }

                  v125 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(v246)));
                  v126 = vmovn_s64(vcvtq_s64_f64(vrndpq_f64(v247)));
                  *&v234[0] = v125;
                  *(&v234[0] + 1) = vsub_s32(v126, v125);
                  v127 = vclez_s32(*(v234 + 8));
                  if ((vpmax_u32(v127, v127).u32[0] & 0x80000000) == 0)
                  {
                    v128 = vclez_s32(v68);
                    if ((vpmax_u32(v128, v128).u32[0] & 0x80000000) != 0 || (*v124.i8 = vmax_s32(v125, *&v225), v129 = vsub_s32(vmin_s32(v126, v83), *v124.i8), v130 = vclez_s32(v129), (vpmax_u32(v130, v130).u32[0] & 0x80000000) != 0))
                    {
                      *(&v234[0] + 1) = 0;
                    }

                    else
                    {
                      *&v131 = v124.i64[0];
                      *(&v131 + 1) = v129;
                      v234[0] = v131;
                      v132 = v129.i32[0];
                      if (is_mul_ok(v129.i32[0], v129.i32[1]))
                      {
                        v228 = v124;
                        v227.i32[0] = v129.i32[1];
                        v133 = v129.i32[0] * v129.i32[1];
                        if (v133 <= 0x1000)
                        {
                          MEMORY[0x1EEE9AC00](v123);
                          v134 = &v223 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
                          bzero(v134, v133);
                          v135 = v228.i64[0];
                          goto LABEL_163;
                        }

                        v134 = malloc_type_malloc(v129.i32[0] * v129.i32[1], 0x537D68A7uLL);
                        v135 = v228.i64[0];
                        if (v134)
                        {
LABEL_163:
                          v229.i32[0] = v89;
                          v214 = v135;
                          v215 = HIDWORD(v135);
                          bzero(v134, v133);
                          v222 = v6;
                          v216 = v227.i32[0];
                          CA::ScanConverter::render_mask(&v240, v8, v134, v132, v214, v215, (v214 + v132), (v227.i32[0] + v215), v222);
                          v217 = *(v16 + 16);
                          v218 = *(v217 + 16) & 0xFFFFFF00FF00FF00;
                          if (*(v217 + 8) == 0x3C003C003C003C00)
                          {
                            v219 = 1;
                          }

                          else
                          {
                            v219 = 3;
                          }

                          *(v217 + 16) = v219 | v218;
                          *(v217 + 20) = HIDWORD(v218);
                          if ((*(*&v15 + 1584) & 0x80000000) != 0)
                          {
                            *(*&v15 + 1584) = 0;
                            *(*&v15 + 1588) = 0;
                            v236.f64[1] = v15;
                            v237.i64[0] = v16;
                            *(v16 + 144) = 0;
                            *(v16 + 112) = v16 + 1386;
                            *(v16 + 120) = xmmword_183E20E50;
                            *&v236.f64[0] = &unk_1EF1F79F0;
                            v237.i64[1] = v134;
                            v238 = v234;
                            v239 = 0x3FF0000000000000;
                            CA::OGL::Mosaic::draw(*&v15 + 1440, v16, 4, 0, 0, v132, v216, 1, &v236, 0);
                            *&v236.f64[0] = &unk_1EF203C98;
                            v220 = CA::CG::MosaicDelegate::draw_array(v237.i64[0]);
                            v221 = *(*&v15 + 1600);
                            if (v221)
                            {
                              (*(*v16 + 560))(v16, v221, 0, v220);
                              *(*&v15 + 1600) = 0;
                              *(*&v15 + 1592) = -1;
                            }

                            *(*&v15 + 1584) = -1;
                            *(*&v15 + 1552) = 0;
                          }

                          *(*(v16 + 16) + 16) = 0;
                          v89 = v229.i32[0];
                          if (v133 > 0x1000)
                          {
                            free(v134);
                          }
                        }
                      }
                    }
                  }

                  if (v89)
                  {
                    CA::OGL::emit_bounds_surround(v16, v234);
                  }

                  goto LABEL_89;
                }

LABEL_63:
                v88 = 0;
                goto LABEL_64;
              }
            }

            v82 = 1;
            goto LABEL_63;
          }

          v137 = *(*(v16 + 656) + 8);
          if (v137)
          {
            v138 = v226;
            v139 = v227;
            if (v137 == 1)
            {
              goto LABEL_101;
            }
          }

          else
          {
            v138 = v226;
            v139 = v227;
            if (*(v137 + 4) != 12)
            {
LABEL_101:
              v140 = 0;
LABEL_109:
              v256 = 0u;
              v254[0] = v16;
              v254[1] = v137;
              v255 = 0u;
              v254[2] = 0;
              BYTE8(v255) = v140;
              CA::OGL::Context::ClippedArray::start(v254);
              v232 = 0uLL;
              v141.i32[0] = 1073741822;
              v228 = v141;
              v227 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
              v142 = v229.i32[0];
              while (1)
              {
                while (1)
                {
                  while (1)
                  {
                    if (!CA::OGL::Context::ClippedArray::next_rect(v254, &v232))
                    {
                      if (v142)
                      {
                        v93 = &v233;
LABEL_61:
                        CA::OGL::emit_bounds_surround(v16, v93);
                      }

                      return;
                    }

                    if (v12)
                    {
                      break;
                    }

                    CA::OGL::PathFiller::PathFiller(v234, v16, v7, &v232, &v250, &v240, &v236, v142, v143, v144, v145, v146.f64[0], v147, v148);
                    v166 = *(&v234[0] + 1);
                    *(*&v234[0] + 160) = v235;
                    v167 = CA::OGL::PathRenderer::cgpath_apply_transform<CA::OGL::PathFiller>;
                    if (*v166 == 1.0)
                    {
                      v168 = 1;
                      while (v168 != 6)
                      {
                        v169 = v168;
                        v170 = v166[v168];
                        v171 = CA::Mat2Impl::mat2_identity_double[v168++];
                        if (v170 != v171)
                        {
                          v167 = CA::OGL::PathRenderer::cgpath_apply_transform<CA::OGL::PathFiller>;
                          if ((v169 - 1) < 5)
                          {
                            goto LABEL_126;
                          }

                          break;
                        }
                      }

                      v167 = CA::OGL::PathRenderer::cgpath_apply<CA::OGL::PathFiller>;
                    }

LABEL_126:
                    CGPathApply(v13, v234, v167);
LABEL_159:
                    CA::OGL::PathFiller::finish(v234);
                  }

                  v149 = vmulq_f64(*v7, *v7);
                  v150 = vmulq_f64(*(v7 + 16), *(v7 + 16));
                  v151 = vdupq_laneq_s64(v150, 1);
                  v152 = vaddq_f64(v151, v150);
                  v153 = vzip1q_s64(v152, vaddq_f64(vdupq_laneq_s64(v149, 1), v149));
                  *&v153.f64[0] = vcvt_f32_f64(v153);
                  v154 = *v12;
                  if (*v12)
                  {
                    v155 = vmulq_f64(*v154, *v154);
                    v156 = vmulq_f64(v154[1], v154[1]);
                    v146 = vdupq_laneq_s64(v156, 1);
                    v151 = vaddq_f64(v146, v156);
                    v152 = vzip1q_s64(v151, vaddq_f64(vdupq_laneq_s64(v155, 1), v155));
                    v153 = vmulq_f64(v152, vcvtq_f64_f32(*&v153.f64[0]));
                    *&v153.f64[0] = vcvt_f32_f64(v153);
                  }

                  LODWORD(v152.f64[0]) = HIDWORD(v153.f64[0]);
                  if (*(v153.f64 + 1) != *v153.f64)
                  {
                    if (*(v153.f64 + 1) >= 0.0 == *v153.f64 < 0.0)
                    {
                      goto LABEL_131;
                    }

                    *&v151.f64[0] = vdup_lane_s32(*&v153.f64[0], 1);
                    *&v153.f64[0] = vsub_s32(*&v151.f64[0], *&v153.f64[0]);
                    v172 = LODWORD(v153.f64[0]);
                    if (SLODWORD(v153.f64[0]) < 0)
                    {
                      v172 = -LODWORD(v153.f64[0]);
                    }

                    if (v172 > 3)
                    {
LABEL_131:
                      CA::OGL::PathFiller::PathFiller(v234, v16, v7, &v232, &v250, &v240, &v236, v142, v153, v152.f64[0], v151.f64[0], v146.f64[0], v147, v148);
                      v173 = v232.i32[2];
                      v174.f64[0] = v232.i32[2];
                      if (v232.i32[2] <= v232.i32[3])
                      {
                        v173 = v232.i32[3];
                      }

                      v175 = v232.i32[3];
                      if (v173 > 1073741822)
                      {
                        v174.f64[0] = 1.79769313e308;
                        v175 = 1.79769313e308;
                      }

                      v176.f64[1] = *(v7 + 16);
                      v176.f64[0] = *(v7 + 24);
                      v177 = vmulq_f64(v176, *v7);
                      v178 = vdupq_laneq_s64(v177, 1);
                      v179 = vsubq_f64(v177, v178).f64[0];
                      if (v179 == 0.0)
                      {
                        v186 = 0uLL;
                        v187 = 0uLL;
                        v184 = 0uLL;
                      }

                      else
                      {
                        v180 = 1.0 / v179;
                        v181 = *(v7 + 32);
                        v182 = vmulq_n_f64(*(v7 + 8), v180);
                        v183.f64[1] = *v7;
                        v183.f64[0] = *(v7 + 24);
                        v187 = vmulq_n_f64(v183, v180);
                        v184.f64[0] = v187.f64[0];
                        v184.f64[1] = -v182.f64[0];
                        *v178.i64 = -v182.f64[1];
                        v185 = vmulq_f64(v181, v182);
                        v186 = vmlsq_f64(vextq_s8(v185, v185, 8uLL), v187, v181);
                        *&v187.f64[0] = v178.i64[0];
                      }

                      v178.i32[0] = v173;
                      v199.i64[0] = v232.i32[0];
                      v199.i64[1] = v232.i32[1];
                      v200 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v178, v228), 0), v227, vcvtq_f64_s64(v199));
                      if (v174.f64[0] <= v175)
                      {
                        v201 = v175;
                      }

                      else
                      {
                        v201 = v174.f64[0];
                      }

                      if (v201 >= 1.79769313e308)
                      {
                        v174.f64[1] = v175;
                      }

                      else
                      {
                        v202 = vmlaq_laneq_f64(vmulq_n_f64(v184, v200.f64[0]), v187, v200, 1);
                        v203 = vmulq_n_f64(v184, v174.f64[0]);
                        v204 = vaddq_f64(v202, v203);
                        v205 = vminnmq_f64(v202, v204);
                        v206 = vmaxnmq_f64(v202, v204);
                        v207 = vmlaq_n_f64(v202, v187, v175);
                        v208 = vaddq_f64(v207, v203);
                        v209 = vminnmq_f64(v205, vminnmq_f64(v207, v208));
                        v200 = vaddq_f64(v209, v186);
                        v174 = vsubq_f64(vmaxnmq_f64(v206, vmaxnmq_f64(v207, v208)), v209);
                      }

                      v230 = v200;
                      v231 = v174;
                      v210 = *(&v234[0] + 1);
                      *(*&v234[0] + 160) = v235;
                      if (*v210 == 1.0)
                      {
                        v211 = 1;
                        do
                        {
                          if (v211 == 6)
                          {
                            break;
                          }

                          v212 = v210[v211];
                          v213 = CA::Mat2Impl::mat2_identity_double[v211++];
                        }

                        while (v212 == v213);
                      }

                      CGPathApplyStrokedDashedPath();
                      goto LABEL_159;
                    }
                  }

                  v157 = v12[2];
                  v158 = sqrtf(*v152.f64);
                  if (v157)
                  {
                    break;
                  }

                  *&v240.f64[0] = v16;
                  *&v240.f64[1] = v7;
                  v188 = vcvtq_f32_s32(v232);
                  v241 = vextq_s8(v188, v188, 8uLL);
                  v242 = vcvt_f32_s32(vadd_s32(*v232.i8, *&vextq_s8(v232, v232, 8uLL)));
                  v243 = 0uLL;
                  *&v244[0] = &v250;
                  DWORD2(v244[0]) = 1024;
                  v188.i64[0] = v12[5];
                  v189 = *(v12 + 6);
                  v190 = *(v12 + 4) * 0.5 * v158;
                  v191 = v190;
                  *(v244 + 12) = vbsl_s8(vceq_s32(*v188.i8, 0x100000002), (LODWORD(v191) | 0x4000000000000000), 0x3F80000000000000);
                  BYTE4(v244[1]) = 0;
                  *(&v244[1] + 5) = v188.u8[0];
                  v192 = v190 + 0.5;
                  v193 = v189 * v189;
                  if (v188.i32[1])
                  {
                    v193 = 0.0;
                  }

                  *(&v244[1] + 1) = __PAIR64__(LODWORD(v192), LODWORD(v191));
                  *&v244[2] = LODWORD(v193);
                  v245 = 0;
LABEL_140:
                  *(v16 + 160) = *(&v244[1] + 8);
                  v194 = CA::OGL::PathRenderer::cgpath_apply_transform<CA::OGL::PathStroker>;
                  if (*v7 == 1.0)
                  {
                    v195 = 1;
                    while (v195 != 6)
                    {
                      v196 = v195;
                      v197 = *(v7 + 8 * v195);
                      v198 = CA::Mat2Impl::mat2_identity_double[v195++];
                      if (v197 != v198)
                      {
                        v194 = CA::OGL::PathRenderer::cgpath_apply_transform<CA::OGL::PathStroker>;
                        if ((v196 - 1) < 5)
                        {
                          goto LABEL_146;
                        }

                        break;
                      }
                    }

                    v194 = CA::OGL::PathRenderer::cgpath_apply<CA::OGL::PathStroker>;
                  }

LABEL_146:
                  CGPathApply(v13, &v240, v194);
                  CA::OGL::PathStroker::finish(&v240);
                }

                v159 = v12[3];
                *&v240.f64[0] = v16;
                *&v240.f64[1] = v7;
                v160 = vcvtq_f32_s32(v232);
                v241 = vextq_s8(v160, v160, 8uLL);
                v242 = vcvt_f32_s32(vadd_s32(*v232.i8, *&vextq_s8(v232, v232, 8uLL)));
                v243 = 0uLL;
                *&v244[0] = &v250;
                DWORD2(v244[0]) = 1024;
                v160.i64[0] = v12[5];
                v161 = *(v12 + 6);
                v162 = *(v12 + 4) * 0.5 * v158;
                v163 = v162;
                *(v244 + 12) = vbsl_s8(vceq_s32(*v160.i8, 0x100000002), (LODWORD(v163) | 0x4000000000000000), 0x3F80000000000000);
                BYTE4(v244[1]) = v159 != 0;
                *(&v244[1] + 5) = v160.u8[0];
                v164 = v162 + 0.5;
                v165 = v161 * v161;
                if (v160.i32[1])
                {
                  v165 = 0.0;
                }

                *(&v244[1] + 1) = __PAIR64__(LODWORD(v164), LODWORD(v163));
                *&v244[2] = LODWORD(v165);
                v245 = 0;
                if (!v159)
                {
                  goto LABEL_140;
                }

                CA::OGL::PathStroker::render(&v240, v13, v154, *(v12 + 1), v157, v159);
              }
            }
          }

          if ((v81 & 0x800) != 0)
          {
            v80 = v80[1];
          }

          v250 = 0uLL;
          CA::Bounds::set_exterior(&v250, v79, v138, v139);
          CA::BoundsImpl::intersect(&v250, v80[6], v80[7]);
          v140 = CA::Shape::contains(v137, &v250);
          goto LABEL_109;
        }
      }
    }
  }
}

float CA::OGL::PathFiller::PathFiller(uint64_t a1, uint64_t a2, uint64_t a3, int32x2_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, float32x4_t a9, double a10, double a11, double a12, double a13, int64x2_t a14)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *v14.i8 = *a4;
  v15 = a4[1];
  *a9.f32 = vcvt_f32_s32(v15);
  v14.u64[1] = vadd_s32(*a4, v15);
  *(a1 + 16) = a9.i64[0];
  v16 = vcvtq_f32_s32(v14);
  *(a1 + 24) = v16;
  *(a1 + 40) = 0u;
  v17 = a4[1].u32[0];
  v18 = a4[1].u32[1];
  v19 = vcvtd_n_f64_s32(v17, 6uLL);
  v20 = ceil(v19);
  v21 = v20 > 32.0 || v20 < 1.0;
  if (v20 < 1.0 && v20 <= 32.0)
  {
    LODWORD(v22) = 1;
  }

  else
  {
    LODWORD(v22) = 32;
  }

  v23 = vcvtpd_s64_f64(v19);
  if (v21)
  {
    v22 = v22;
  }

  else
  {
    v22 = v23;
  }

  v24 = vcvtd_n_f64_s32(v18, 5uLL);
  v25 = floorf(v24);
  v26 = v25 > 32.0 || v25 < 1.0;
  if (v25 < 1.0 && v25 <= 32.0)
  {
    LODWORD(v27) = 1;
  }

  else
  {
    LODWORD(v27) = 32;
  }

  v28 = vcvtms_s32_f32(v24);
  if (v26)
  {
    v27 = v27;
  }

  else
  {
    v27 = v28;
  }

  *(a1 + 56) = v22;
  *(a1 + 60) = v27;
  *(a1 + 584) = a5;
  *(a1 + 592) = a6;
  *(a1 + 600) = a7;
  *(a1 + 608) = 0x20000000600;
  *(a1 + 616) = 1024;
  v29 = *(a2 + 672);
  *(a1 + 620) = v29[6].i32[0];
  v30 = v29[5];
  *(a1 + 624) = vcvt_f32_s32(v30);
  v31.i64[0] = v30.i32[0];
  v31.i64[1] = v30.i32[1];
  __asm { FMOV            V4.2D, #1.125 }

  v37 = vdivq_f64(_Q4, vcvtq_f64_s64(v31));
  *v37.f32 = vcvt_f32_f64(v37);
  *(a1 + 632) = v37.i64[0];
  *(a1 + 640) = 0;
  *(a1 + 641) = (v18 * v17) > 2048;
  *(a1 + 664) = 0;
  if (a8)
  {
    v38 = ~(-1 << v27);
  }

  else
  {
    v38 = 0;
  }

  *(a1 + 644) = 0uLL;
  if (v22 >= 1)
  {
    v39 = (a1 + 456);
    v40 = v22;
    do
    {
      *(v39 - 32) = v38;
      *v39++ = 0;
      --v40;
    }

    while (v40);
  }

  if ((v22 & 0x80000000) == 0)
  {
    v41 = 0;
    v37.f32[0] = v22;
    v42 = vdupq_n_s64(v22);
    v37.i32[0] = vdivq_f32(a9, v37).u32[0];
    _Q4 = xmmword_183E21240;
    a14 = xmmword_183E20FF0;
    v43 = (a1 + 76);
    v44 = vdupq_n_s64(4uLL);
    do
    {
      v45 = vmovn_s64(vcgeq_u64(v42, a14));
      v46.i32[0] = v41;
      v46.i32[1] = v41 + 1;
      v46.u64[1] = vorr_s8(vdup_n_s32(v41), 0x300000002);
      v47 = vrndmq_f32(vmulq_n_f32(vcvtq_f32_u32(v46), v37.f32[0]));
      if (vuzp1_s16(v45, *a9.f32).u8[0])
      {
        *(v43 - 3) = vaddq_f32(v47, v16).u32[0];
      }

      if (vuzp1_s16(v45, *&a9).i8[2])
      {
        *(v43 - 2) = v47.f32[1] + v16.f32[0];
      }

      if (vuzp1_s16(*&a9, vmovn_s64(vcgeq_u64(v42, *&_Q4))).i32[1])
      {
        *(v43 - 1) = v47.f32[2] + v16.f32[0];
        *v43 = v47.f32[3] + v16.f32[0];
      }

      v41 += 4;
      _Q4 = vaddq_s64(_Q4, v44);
      a14 = vaddq_s64(a14, v44);
      v43 += 4;
    }

    while ((v22 & 0x7FFFFFFC) + 4 != v41);
  }

  if ((v27 & 0x80000000) == 0)
  {
    v48 = 0;
    _Q4.f32[0] = v27;
    v49 = vdupq_n_s64(v27);
    *a14.i8 = vdup_lane_s32(*a9.f32, 1);
    _Q4.i32[0] = vdivq_f32(a14, _Q4).u32[0];
    v50 = xmmword_183E21240;
    v51 = xmmword_183E20FF0;
    v52 = (a1 + 208);
    v53 = vdupq_n_s64(4uLL);
    do
    {
      v54 = vmovn_s64(vcgeq_u64(v49, v51));
      v55.i32[0] = v48;
      v55.i32[1] = v48 + 1;
      v55.u64[1] = vorr_s8(vdup_n_s32(v48), 0x300000002);
      v56 = vrndmq_f32(vmulq_n_f32(vcvtq_f32_u32(v55), _Q4.f32[0]));
      if (vuzp1_s16(v54, *a9.f32).u8[0])
      {
        *(v52 - 3) = v56.f32[0] + v16.f32[1];
      }

      if (vuzp1_s16(v54, *&a9).i8[2])
      {
        *(v52 - 2) = vaddq_f32(v56, v16).i32[1];
      }

      if (vuzp1_s16(*&a9, vmovn_s64(vcgeq_u64(v49, *&v50))).i32[1])
      {
        *(v52 - 1) = v56.f32[2] + v16.f32[1];
        *v52 = v56.f32[3] + v16.f32[1];
      }

      v48 += 4;
      v50 = vaddq_s64(v50, v53);
      v51 = vaddq_s64(v51, v53);
      v52 += 4;
    }

    while ((v27 & 0x7FFFFFFC) + 4 != v48);
  }

  *(a1 + 4 * v22 + 64) = v16.f32[0] + a9.f32[0];
  result = *(a1 + 28) + *(a1 + 20);
  *(a1 + 4 * v27 + 196) = result;
  return result;
}

float CA::CG::PathDelegate::quad(CA::CG::PathDelegate *this, const CA::Bounds *a2, float *a3)
{
  v6 = *(this + 2);
  v7 = 6;
  if (!*(v6 + 108))
  {
    v7 = 4;
  }

  if ((*(v6 + 144) + 4) > *(v6 + 152) || (v8 = *(v6 + 128)) != 0 && *(v6 + 120) + v7 > v8)
  {
    CA::CG::MosaicDelegate::draw_array(*(this + 2));
  }

  v9 = *(this + 4);
  v10 = *(this + 5);
  v11 = v10 * (*a2 + *v9);
  v12 = v10 * (*(a2 + 1) + v9[1]);
  v13 = v11 + v10 * *(a2 + 2);
  v14 = v12 + v10 * *(a2 + 3);
  *&v11 = v11;
  *&v10 = v12;
  *&v12 = v13;
  *&v13 = v14;
  CA::OGL::Context::array_rect(v6, *&v11, *&v10, *&v12, *&v13);
  result = *a3;
  v16 = *(a3 + 1);
  v17 = *(a3 + 2);
  v18 = *(a3 + 3);
  v19 = *(v6 + 136) + 48 * *(v6 + 144);
  *(v19 - 176) = *a3;
  *(v19 - 172) = v16;
  *(v19 - 128) = v17;
  *(v19 - 124) = v16;
  *(v19 - 80) = v17;
  *(v19 - 76) = v18;
  *(v19 - 32) = result;
  *(v19 - 28) = v18;
  v20 = *(*(v6 + 16) + 8);
  *(v19 - 160) = v20;
  *(v19 - 112) = v20;
  *(v19 - 64) = v20;
  *(v19 - 16) = v20;
  return result;
}

uint64_t CA::CG::PathDelegate::read(uint64_t this, int a2, const CA::Bounds *a3, unsigned __int8 *a4, uint64_t a5)
{
  if (a2 == 9)
  {
    v5 = *(a3 + 3);
    if (v5 >= 1)
    {
      v6 = *(this + 32);
      v7 = *(this + 24) + *(v6 + 8) * *(a3 + 1) + *a3;
      do
      {
        v8 = *(a3 + 2);
        if (v8 >= 1)
        {
          v9 = 0;
          v10 = v8 + 1;
          do
          {
            a4[v9] = *(v7 + v9);
            --v10;
            ++v9;
          }

          while (v10 > 1);
          v6 = *(this + 32);
        }

        v7 += *(v6 + 8);
        a4 += a5;
      }

      while (v5-- > 1);
    }
  }

  return this;
}

void CA::CG::PathDelegate::~PathDelegate(CA::CG::MosaicDelegate **this)
{
  *this = &unk_1EF203C98;
  CA::CG::MosaicDelegate::draw_array(this[2]);

  JUMPOUT(0x1865EA9A0);
}

{
  *this = &unk_1EF203C98;
  CA::CG::MosaicDelegate::draw_array(this[2]);
}

double *CA::CG::PathIterator::Iterator<CA::ScanConverter::Path>::callback_0(double *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v8 = *a2;
  if (*a2 <= 2)
  {
    if (v8 < 2)
    {
      v9 = 1;
LABEL_9:
      v27 = **(a2 + 8);
      v11 = **result;
      v12 = *(*result + 16);
      v13 = *(*result + 32);
      v14 = &v27;
      do
      {
        *v14 = vmlaq_n_f64(vmlaq_n_f64(v13, v11, *v14), v12, v14[1]);
        v14 += 2;
        --v9;
      }

      while (v9);
      if (v8 <= 1)
      {
        if (v8)
        {
          v16 = *(result + 1);
          v17 = v27;

          return CA::ScanConverter::Path::lineto(v16, *&v17, *(&v17 + 1));
        }

        else
        {
          v25 = *(result + 1);
          v26 = v27;
          result = CA::ScanConverter::Path::closepath(v25);
          *(v25 + 40) = v26;
          *(v25 + 64) = v26;
          *(v25 + 56) = 0x3FF0000000000000;
          *(v25 + 80) = 0x3FF0000000000000;
        }
      }

      else if (v8 == 2)
      {
        v18 = *(result + 1);
        v19 = v27;
        v20 = v28;

        return CA::ScanConverter::Path::quadto(v18, *&v19, *(&v19 + 1), *&v20, *(&v20 + 1), a2, a3, a4, a5, a6, a7, a8);
      }

      else
      {
        v21 = *(result + 1);
        v22 = v27;
        v23 = v28;
        v24 = v29;

        return CA::ScanConverter::Path::cubeto(v21, *&v22, *(&v22 + 1), *&v23, *(&v23 + 1), *&v24, *(&v24 + 1), a2, a3, a4, a5, a6, a7, a8);
      }

      return result;
    }

    if (v8 != 2)
    {
      return result;
    }

    v10 = *(a2 + 8);
    v9 = 2;
LABEL_8:
    v28 = *(v10 + 16);
    goto LABEL_9;
  }

  if (v8 == 3)
  {
    v10 = *(a2 + 8);
    v29 = *(v10 + 32);
    v9 = 3;
    goto LABEL_8;
  }

  if (v8 == 4)
  {
    v15 = *(result + 1);

    return CA::ScanConverter::Path::closepath(v15);
  }

  return result;
}

double *CA::CG::PathIterator::Iterator<CA::ScanConverter::Path>::callback_1(double *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*a2 <= 1)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v11 = *(result + 1);
        v12 = *(a2 + 8);
        v13 = *v12;
        v14 = v12[1];

        return CA::ScanConverter::Path::lineto(v11, v13, v14);
      }
    }

    else
    {
      v29 = *(result + 1);
      v30 = *(a2 + 8);
      v31 = *v30;
      v32 = v30[1];
      result = CA::ScanConverter::Path::closepath(v29);
      *(v29 + 40) = v31;
      *(v29 + 48) = v32;
      *(v29 + 64) = v31;
      *(v29 + 72) = v32;
      *(v29 + 56) = 0x3FF0000000000000;
      *(v29 + 80) = 0x3FF0000000000000;
    }
  }

  else
  {
    switch(v9)
    {
      case 2:
        v15 = *(result + 1);
        v16 = *(a2 + 8);
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        v20 = v16[3];

        return CA::ScanConverter::Path::quadto(v15, v17, v18, v19, v20, a2, a3, a4, a5, a6, a7, a8);
      case 3:
        v21 = *(result + 1);
        v22 = *(a2 + 8);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = v22[4];
        v28 = v22[5];

        return CA::ScanConverter::Path::cubeto(v21, v23, v24, v25, v26, v27, v28, a2, a3, a4, a5, a6, a7, a8);
      case 4:
        v10 = *(result + 1);

        return CA::ScanConverter::Path::closepath(v10);
    }
  }

  return result;
}

BOOL CA::CG::FillPath::shape_extent_contains(CA::CG::FillPath *this, CA::CG::Renderer *a2, const CA::Shape *a3)
{
  MEMORY[0x1EEE9AC00](this);
  v5 = v4;
  v7 = v6;
  v40[508] = *MEMORY[0x1E69E9840];
  if (v3)
  {
    if (v3 == 1)
    {
      return 0;
    }
  }

  else if (*(v3 + 4) != 12)
  {
    return 0;
  }

  v25 = 0;
  v26 = 0;
  CA::Shape::get_bounds(v3, &v25);
  v9 = *(v7 + 100);
  v38[0] = 0;
  v38[1] = v40;
  v10 = 88;
  if ((v9 & 4) == 0)
  {
    v10 = 32;
  }

  v11 = *(v7 + 112);
  v12 = (v5 + v10);
  v39 = xmmword_183E21150;
  v37 = v38;
  v31 = 0;
  *&v27[0] = v38;
  memset(&v27[1], 0, 24);
  v27[4] = 0.125;
  v28 = 0u;
  v29 = 0u;
  memset(v30, 0, sizeof(v30));
  v32 = vdupq_n_s64(0x7FF0000000000000uLL);
  v33 = vdupq_n_s64(0xFFF0000000000000);
  v13 = *v12 == 1.0;
  v14 = vadd_s32(v26, v25);
  v15.i64[0] = v14.i32[0];
  v15.i64[1] = v14.i32[1];
  v16 = vcvtq_f64_s64(v15);
  v15.i64[0] = v25.i32[0];
  v15.i64[1] = v25.i32[1];
  v34 = vcvtq_f64_s64(v15);
  v35 = v16;
  if (v13)
  {
    v18 = 1;
    while (v18 != 6)
    {
      v19 = v18;
      v20 = v12[v18];
      v21 = CA::Mat2Impl::mat2_identity_double[v18++];
      if (v20 != v21)
      {
        if ((v19 - 1) < 5)
        {
          goto LABEL_8;
        }

        break;
      }
    }

    info[0] = 0;
    v17 = CA::CG::PathIterator::Iterator<CA::ScanConverter::Path>::callback_1;
  }

  else
  {
LABEL_8:
    info[0] = v12;
    v17 = CA::CG::PathIterator::Iterator<CA::ScanConverter::Path>::callback_0;
  }

  info[1] = v27;
  CGPathApply(v11, info, v17);
  CA::ScanConverter::Path::closepath(v27);
  v22.i32[0] = vuzp1_s16(vmovn_s64(vcgtq_f64(v32, vdupq_n_s64(0xC1E0000000000000))), *&v33.f64[0]).u32[0];
  v23 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x41DFFFFFFFC00000uLL), v33));
  v22.i32[1] = vuzp1_s16(v23, v23).i32[1];
  v8 = (vminv_u16(v22) & 1) != 0 && CA::ScanConverter::path_rect_containment(v27) == 0;
  x_heap_free(v37);
  return v8;
}

void *CA::CG::FillPath::styled_op(uint64_t a1, const double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_malloc(malloc_zone, 0xA0uLL, 0x165299FDuLL);
  if (result)
  {
    result = CA::CG::DrawPathShadow::DrawPathShadow(result, a2, a1, a4, a5, a3, *(a1 + 100) & 4);
    *result = &unk_1EF1FFB50;
  }

  return result;
}

uint64_t CA::CG::DrawPathShadow::DrawPathShadow(void *a1, const double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  Color = CGStyleGetColor();
  result = CA::CG::DrawOp::DrawOp(a1, a2, a3, a4, a5, Color, a7 | 0x840u);
  *a1 = &unk_1EF203CE0;
  a1[18] = a3;
  atomic_fetch_add((a6 + 8), 1u);
  a1[19] = a6;
  *a1 = &unk_1EF1FFA68;
  return result;
}

uint64_t CA::CG::DrawOp::DrawOp(uint64_t a1, const double *a2, uint64_t a3, uint64_t a4, uint64_t a5, CGColor *a6, int a7)
{
  v22[1] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1EF2053F0;
  v14 = *(a3 + 8);
  v15 = *(a3 + 24);
  *(a1 + 40) = *(a3 + 40);
  *(a1 + 24) = v15;
  *(a1 + 8) = v14;
  *(a1 + 56) = *(a3 + 56);
  if (*(a3 + 64))
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v16 = malloc_type_zone_malloc(malloc_zone, 0x18uLL, 0x165299FDuLL);
    if (v16)
    {
      *v16 = CGSoftMaskRetain();
      v16[1] = CGRenderingStateRetain();
      v16[2] = CGGStateRetain();
    }
  }

  else
  {
    v16 = 0;
  }

  *(a1 + 64) = v16;
  v17 = *(a3 + 72);
  if (v17)
  {
    atomic_fetch_add(v17, 1u);
  }

  *(a1 + 72) = v17;
  v22[0] = 0x3C003C003C003C00;
  CA::CG::DeviceColor::DeviceColor((a1 + 80), a6, a4, a5, a2, v22);
  ShouldAntialias = CGGStateGetShouldAntialias();
  if (ShouldAntialias)
  {
    ShouldAntialias = CGRenderingStateGetAllowsAntialiasing();
  }

  *(a1 + 100) = ShouldAntialias | (2 * (a6 != 0)) | a7 | *(a3 + 100) & 0x1900;
  *(a1 + 104) = 0;
  if ((a7 & 0x40) == 0)
  {
    CGGStateGetAlpha();
    v20 = v19;
    if (v20 != 1.0)
    {
      *(a1 + 88) = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*(a1 + 88)), v20));
    }
  }

  return a1;
}

uint64_t CA::CG::FillPath::compute_dod_corners(uint64_t a1, float64x2_t *a2)
{
  v2 = *(a1 + 120);
  v3 = vaddq_f64(*(a1 + 136), v2);
  v4.f64[0] = v3.f64[0];
  v4.f64[1] = *(a1 + 128);
  *a2 = v2;
  a2[1] = v4;
  v2.f64[1] = v3.f64[1];
  a2[2] = v3;
  a2[3] = v2;
  if ((*(a1 + 100) & 4) == 0)
  {
    v5 = 0;
    v6 = (a1 + 48);
    v7 = (a1 + 32);
    v8 = (a1 + 16);
    v9 = (a1 + 40);
    v10 = (a1 + 24);
    v11 = (a1 + 8);
    v12 = vld1q_dup_f64(v11);
    v13 = vld1q_dup_f64(v10);
    v14 = vld1q_dup_f64(v9);
    v15 = vld1q_dup_f64(v8);
    v16 = vld1q_dup_f64(v7);
    v17 = vld1q_dup_f64(v6);
    do
    {
      f64 = a2[v5].f64;
      v20 = vld2q_f64(f64);
      v21.val[0] = vmlaq_f64(vmlaq_f64(v14, v20.val[0], v12), v20.val[1], v13);
      v21.val[1] = vmlaq_f64(vmlaq_f64(v17, v20.val[0], v15), v20.val[1], v16);
      vst2q_f64(f64, v21);
      v5 += 2;
    }

    while (v5 != 4);
  }

  return 1;
}

double CA::CG::FillPath::compute_dod(CA::CG::FillPath *this, CA::Rect *a2)
{
  *a2 = *(this + 120);
  v2 = *(this + 136);
  *(a2 + 1) = v2;
  if ((*(this + 100) & 4) == 0)
  {
    *&v2 = *&CA::Rect::apply_transform(a2, (this + 8));
  }

  return *&v2;
}

void CA::CG::FillPath::~FillPath(CA::CG::Renderer **this, const void *a2)
{
  *this = &unk_1EF1FCDC8;
  CA::CG::Renderer::release_object(this[14], a2);
  CA::CG::DrawOp::~DrawOp(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF1FCDC8;
  CA::CG::Renderer::release_object(this[14], a2);

  CA::CG::DrawOp::~DrawOp(this);
}

void CA::CG::stroke_path(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 16))
  {
    CGDashGetPattern();
  }

  CA::CG::fill_path(a1);
}

void *CA::CG::StrokePath::styled_op(uint64_t a1, const double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_malloc(malloc_zone, 0xA0uLL, 0x165299FDuLL);
  if (result)
  {
    result = CA::CG::DrawPathShadow::DrawPathShadow(result, a2, a1, a4, a5, a3, *(a1 + 100) & 4);
    *result = &unk_1EF1FFC38;
  }

  return result;
}

float64x2_t CA::CG::StrokePath::compute_dod(CA::CG::StrokePath *this, float64x2_t *a2)
{
  *a2 = *(this + 120);
  v4 = *(this + 136);
  a2[1] = v4;
  if ((*(this + 100) & 4) == 0)
  {
    CA::Rect::apply_transform(a2, (this + 8));
    v4 = a2[1];
  }

  result.f64[0] = v4.f64[1];
  if (v4.f64[0] > v4.f64[1])
  {
    result.f64[0] = v4.f64[0];
  }

  if (result.f64[0] < 1.79769313e308)
  {
    v17 = v4;
    v6.f64[0] = CA::CG::stroke_radius(this + 152, *(this + 8), *(this + 24));
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

void CA::CG::StrokePath::~StrokePath(CA::CG::StrokePath *this, const void *a2)
{
  *this = &unk_1EF1FCE90;
  if (*(this + 21))
  {
    CGDashRelease();
  }

  *this = &unk_1EF1FCDC8;
  CA::CG::Renderer::release_object(*(this + 14), a2);
  CA::CG::DrawOp::~DrawOp(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF1FCE90;
  if (*(this + 21))
  {
    CGDashRelease();
  }

  *this = &unk_1EF1FCDC8;
  CA::CG::Renderer::release_object(*(this + 14), a2);

  CA::CG::DrawOp::~DrawOp(this);
}

uint64_t CA::CG::fill_path_blurred(uint64_t a1)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = v6;
  v8 = v4;
  v10 = v9;
  v11 = v2;
  v12 = v1;
  v188[508] = *MEMORY[0x1E69E9840];
  if (*&v5 != 0.0)
  {
    v15 = sqrt(*v4 * *v4 + v4[1] * v4[1]) * *&v5;
    v16 = *(v1 + 8);
    if (v3)
    {
      v18 = *v3;
      v17 = v3[1];
    }

    else
    {
      BoundingBox = CGPathGetBoundingBox(v2);
      v19.i64[0] = *&BoundingBox.origin.x;
      v19.i64[1] = *&BoundingBox.origin.y;
      v20.f64[0] = 0.0;
      v21.i64[0] = *&BoundingBox.size.width;
      v21.i64[1] = *&BoundingBox.size.height;
      v22 = -BoundingBox.size.width;
      v23 = vdupq_lane_s64(vcgtq_f64(v20, BoundingBox.size).i64[0], 0);
      v24.i64[1] = *&BoundingBox.origin.y;
      *v24.i64 = BoundingBox.size.width + BoundingBox.origin.x;
      v18 = vbslq_s8(v23, v24, v19);
      v25.i64[1] = *&BoundingBox.size.height;
      *v25.i64 = v22;
      v17 = vbslq_s8(v23, v25, v21);
      if (BoundingBox.size.height < 0.0)
      {
        v18.f64[1] = BoundingBox.size.height + BoundingBox.origin.y;
        v17.f64[1] = -BoundingBox.size.height;
      }
    }

    v26 = v15;
    v27 = v17.f64[1];
    if (v17.f64[0] > v17.f64[1])
    {
      v27 = v17.f64[0];
    }

    if (v27 < 1.79769313e308)
    {
      v28 = v8[1];
      v29 = vmlaq_laneq_f64(vmulq_n_f64(*v8, v18.f64[0]), v28, v18, 1);
      v30 = vmulq_n_f64(*v8, v17.f64[0]);
      v31 = vaddq_f64(v29, v30);
      v32 = vminnmq_f64(v29, v31);
      v33 = vmaxnmq_f64(v29, v31);
      v34 = vmlaq_laneq_f64(v29, v28, v17, 1);
      v35 = vaddq_f64(v34, v30);
      v36 = vminnmq_f64(v32, vminnmq_f64(v34, v35));
      v37 = vmaxnmq_f64(v33, vmaxnmq_f64(v34, v35));
      v18 = vaddq_f64(v36, v8[2]);
      v17 = vsubq_f64(v37, v36);
    }

    v38 = v26;
    v39 = vcvtps_s32_f32((v26 * 2.82) + 0.5);
    if (v26 <= 0.6)
    {
      v40 = 0;
    }

    else
    {
      v40 = v39;
    }

    v41 = vceqzq_f64(v17);
    v42 = 0uLL;
    if ((vorrq_s8(vdupq_laneq_s64(v41, 1), v41).u64[0] & 0x8000000000000000) == 0)
    {
      v43 = vceqq_f64(v17, v17);
      if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v43), 1), v43).u64[0] & 0x8000000000000000) == 0)
      {
        v44 = vcvtmq_s64_f64(vmaxnmq_f64(v18, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v42 = vuzp1q_s32(v44, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v18, v17), vdupq_n_s64(0x41C0000000000000uLL))), v44));
      }
    }

    if (v42.i32[2] <= v42.i32[3])
    {
      v45 = v42.i32[3];
    }

    else
    {
      v45 = v42.i32[2];
    }

    if (v42.i32[2] >= v42.i32[3])
    {
      v46 = v42.i32[3];
    }

    else
    {
      v46 = v42.i32[2];
    }

    if (v45 > 1073741822 || v46 < 1)
    {
      v163 = v42;
    }

    else
    {
      v48.i64[0] = vsubq_s32(v42, vdupq_n_s32(v40)).u64[0];
      v49.i64[0] = v48.i64[0];
      v49.i32[2] = v42.i32[2] + 2 * v40;
      v49.i32[3] = v42.i32[3] + 2 * v40;
      v50 = v49.i32[3] < 1 || v42.i32[2] + 2 * v40 < 1;
      v48.i64[1] = 0;
      if (v50)
      {
        v51 = -1;
      }

      else
      {
        v51 = 0;
      }

      v163 = vbslq_s8(vdupq_n_s32(v51), v48, v49);
    }

    v178 = 0uLL;
    CA::Shape::get_bounds(*(*(v16 + 656) + 8), &v178);
    v54 = *(v16 + 672);
    if (v54)
    {
      v55 = v54 + 6;
    }

    else
    {
      v55 = (v16 + 608);
    }

    v56 = vclez_s32(v178.u64[1]);
    if ((vpmax_u32(v56, v56).u32[0] & 0x80000000) != 0)
    {
      return 1;
    }

    v57 = v55[1];
    v58 = vclez_s32(v57);
    if ((vpmax_u32(v58, v58).u32[0] & 0x80000000) != 0)
    {
      return 1;
    }

    *v53.i8 = vmax_s32(*v178.i8, *v55);
    *&v52 = vsub_s32(vmin_s32(vadd_s32(*v178.i8, v178.u64[1]), vadd_s32(*v55, v57)), *v53.i8);
    v59 = vclez_s32(*&v52);
    if ((vpmax_u32(v59, v59).u32[0] & 0x80000000) != 0)
    {
      return 1;
    }

    v160 = v52;
    v161 = v53;
    v53.i64[1] = v52;
    v162 = v53;
    v178 = v53;
    v61 = CA::OGL::Context::need_transparent_source(v16);
    v64 = v163;
    v65 = vextq_s8(v64, v64, 8uLL);
    *v66.i8 = vclez_s32(v162.u64[1]);
    v67 = vpmax_u32(*v66.i8, *v66.i8).u32[0];
    if (v61)
    {
      v68.i64[0] = v161.i64[0];
      if ((v67 & 0x80000000) != 0 || (v69 = vclez_s32(*v65.i8), (vpmax_u32(v69, v69).u32[0] & 0x80000000) != 0) || (v70 = vclez_s32(vsub_s32(vmin_s32(vadd_s32(*v161.i8, v162.u64[1]), vadd_s32(*v163.i8, *v65.i8)), vmax_s32(*v161.i8, *v163.i8))), (vpmax_u32(v70, v70).u32[0] & 0x80000000) != 0))
      {
        v185 = 0;
        v186[0] = 0;
        CA::OGL::emit_bounds_surround(v16, &v185);
        return 1;
      }

      v71 = __PAIR64__(DWORD1(v160), v162.u32[2]);
    }

    else
    {
      if ((v67 & 0x80000000) != 0)
      {
        return 1;
      }

      v72 = vclez_s32(*v65.i8);
      if ((vpmax_u32(v72, v72).u32[0] & 0x80000000) != 0)
      {
        return 1;
      }

      *v68.i8 = vmax_s32(*v161.i8, *v163.i8);
      v71 = vsub_s32(vmin_s32(vadd_s32(*v161.i8, v162.u64[1]), vadd_s32(*v163.i8, *v65.i8)), *v68.i8);
      v73 = vclez_s32(v71);
      if ((vpmax_u32(v73, v73).u32[0] & 0x80000000) != 0)
      {
        return 1;
      }

      v68.u64[1] = v71;
      v178 = v68;
    }

    v74 = 4.0;
    if (v26 > 8.0)
    {
      v74 = 8.0;
    }

    if (v26 <= 4.0)
    {
      v74 = 2.0;
    }

    if (v74 >= v38)
    {
      v13 = 0;
      if (v38 <= 0.6)
      {
        return v13;
      }

      v76 = v71.i32[0];
      v77 = v71.i32[1];
      v75 = 1.0;
    }

    else
    {
      v63.i64[0] = 1.0;
      v62.i64[0] = 0.5;
      v75 = 1.0;
      do
      {
        v75 = v75 + v75;
        *v63.i64 = *v63.i64 * 0.5;
        v26 = v26 * 0.5;
      }

      while (v74 < v26);
      if (v26 <= 0.6)
      {
        return 0;
      }

      v76 = v71.i32[0];
      v77 = v71.i32[1];
      v65.i64[0] = 1.0;
      if (*v63.i64 != 1.0)
      {
        if (v71.i32[0] <= v71.i32[1])
        {
          v76 = v71.i32[1];
        }

        v65.i32[0] = 1073741822;
        v62.i32[0] = v76;
        v78.i64[0] = v68.i32[0];
        v78.i64[1] = v68.i32[1];
        v79 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v62, v65), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v78));
        v78.i64[0] = v71.i32[0];
        v78.i64[1] = v71.i32[1];
        v80 = vdup_n_s32(v76 > 1073741822);
        v81 = vcvtq_f64_s64(v78);
        v78.i64[0] = v80.u32[0];
        v78.i64[1] = v80.u32[1];
        v82 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        v83 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v78, 0x3FuLL)), v82, v81);
        v82.f64[0] = 1.79769313e308;
        v84 = vdupq_lane_s64(vcgtq_f64(v82, v83).i64[0], 0);
        v85.i64[1] = v79.i64[1];
        *v85.i64 = *v63.i64 * *v79.i64;
        v86 = vbslq_s8(v84, v85, v79);
        v85.i64[1] = *&v83.f64[1];
        *v85.i64 = *v63.i64 * v83.f64[0];
        v87 = vbslq_s8(v84, v85, v83);
        v163 = v63;
        if (v87.f64[1] < 1.79769313e308)
        {
          v86.f64[1] = vmuld_lane_f64(*v63.i64, v86, 1);
          v87.f64[1] = v87.f64[1] * *v63.i64;
        }

        CA::Bounds::set_exterior(&v178, v60, v86, v87);
        v88 = *v163.i64;
        v40 = vcvtpd_s64_f64(*v163.i64 * v40);
        LODWORD(v13) = 1;
        v76 = v178.i32[2];
        v77 = v178.i32[3];
LABEL_73:
        if (v76 <= v77)
        {
          v89 = v77;
        }

        else
        {
          v89 = v76;
        }

        if (v76 >= v77)
        {
          v90 = v77;
        }

        else
        {
          v90 = v76;
        }

        if (v89 <= 1073741822 && v90 >= 1)
        {
          *v178.i8 = vsub_s32(*v178.i8, vdup_n_s32(v40));
          v178.i32[2] = v76 + 2 * v40;
          v178.i32[3] = v77 + 2 * v40;
          if (v178.i32[2] < 1 || v77 + 2 * v40 <= 0)
          {
            v178.i64[1] = 0;
          }
        }

        v186[0] = 0;
        v186[1] = v188;
        v187 = xmmword_183E21150;
        v185 = v186;
        *&v169[0] = v186;
        memset(&v169[1], 0, 24);
        v173 = 0;
        v169[4] = 0.125;
        v170 = 0u;
        v171 = 0u;
        memset(v172, 0, sizeof(v172));
        v66.i64[0] = v8;
        v64.i64[0] = v168;
        v92 = vdupq_lane_s64(vmvnq_s8(vceqq_s64(v64, v66)).i64[0], 0);
        v174 = vdupq_n_s64(0x7FF0000000000000uLL);
        v175 = vdupq_n_s64(0xFFF0000000000000);
        v93 = vandq_s8(v8[2], v92);
        v94 = vandq_s8(v8[1], v92);
        v168[0] = vmulq_n_f64(vandq_s8(*v8, v92), v88);
        v168[1] = vmulq_n_f64(v94, v88);
        v168[2] = vmulq_n_f64(v93, v88);
        v95 = v178;
        v96 = vadd_s32(v178.u64[1], *v178.i8);
        v97.i64[0] = v96.i32[0];
        v97.i64[1] = v96.i32[1];
        v98 = vcvtq_f64_s64(v97);
        v97.i64[0] = v178.i32[0];
        v97.i64[1] = v178.i32[1];
        v176 = vcvtq_f64_s64(v97);
        v177 = v98;
        if (*v168 == 1.0)
        {
          v100 = 1;
          while (v100 != 6)
          {
            v101 = v100;
            v102 = *(v168 + v100);
            v103 = CA::Mat2Impl::mat2_identity_double[v100++];
            if (v102 != v103)
            {
              if ((v101 - 1) < 5)
              {
                goto LABEL_87;
              }

              break;
            }
          }

          v179 = 0;
          v99 = CA::CG::PathIterator::Iterator<CA::ScanConverter::Path>::callback_1;
        }

        else
        {
LABEL_87:
          v179 = v168;
          v99 = CA::CG::PathIterator::Iterator<CA::ScanConverter::Path>::callback_0;
        }

        v180 = v169;
        CGPathApply(v11, &v179, v99);
        v104 = CA::ScanConverter::Path::closepath(v169);
        v105 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(v174)));
        v106 = vmovn_s64(vcvtq_s64_f64(vrndpq_f64(v175)));
        *&v167 = v105;
        *(&v167 + 1) = vsub_s32(v106, v105);
        v107 = vclez_s32(*(&v167 + 8));
        if ((vpmax_u32(v107, v107).u32[0] & 0x80000000) != 0)
        {
          goto LABEL_132;
        }

        v108 = vclez_s32(v95.u64[1]);
        if ((vpmax_u32(v108, v108).u32[0] & 0x80000000) != 0 || (v109 = vmax_s32(v105, *v95.i8), v110 = vsub_s32(vmin_s32(v106, v96), v109), v111 = vclez_s32(v110), (vpmax_u32(v111, v111).u32[0] & 0x80000000) != 0))
        {
          *(&v167 + 1) = 0;
LABEL_132:
          v149 = v75;
          if (v75 != 1)
          {
            if (SDWORD2(v167) <= 1073741822)
            {
              LODWORD(v167) = v167 * v149;
              DWORD2(v167) *= v149;
            }

            if (SHIDWORD(v167) <= 1073741822)
            {
              DWORD1(v167) *= v149;
              HIDWORD(v167) *= v149;
            }
          }

          if (v61)
          {
            CA::OGL::emit_bounds_surround(v16, &v167);
          }

          v120 = 1;
          goto LABEL_140;
        }

        *&v112 = v109;
        *(&v112 + 1) = v110;
        v167 = v112;
        v113 = v110.u32[0];
        v114 = v110.u32[1];
        if (v110.i32[0] <= v110.i32[1])
        {
          v115 = v110.i32[1];
        }

        else
        {
          v115 = v110.i32[0];
        }

        if (v110.i32[0] >= v110.i32[1])
        {
          v116 = v110.i32[1];
        }

        else
        {
          v116 = v110.i32[0];
        }

        v117 = v109.u32[1];
        if (v115 <= 1073741822 && v116 >= 1)
        {
          v117 = (v109.i32[1] - v40);
          LODWORD(v167) = v109.i32[0] - v40;
          DWORD1(v167) = v109.i32[1] - v40;
          v113 = (v110.i32[0] + 2 * v40);
          v114 = (v110.i32[1] + 2 * v40);
          *(&v167 + 1) = __PAIR64__(v114, v113);
          if (v113 < 1 || v114 <= 0)
          {
            v114 = 0;
            v113 = 0;
            *(&v167 + 1) = 0;
          }
        }

        v120 = 0;
        if (v113 > 2048 || v114 > 2048)
        {
          goto LABEL_140;
        }

        if ((v114 + *(v12 + 1448) - 1) / *(v12 + 1448) * ((v113 + *(v12 + 1444) - 1) / *(v12 + 1444)) <= CA::CG::Renderer::_max_mosaic_cells)
        {
          if (is_mul_ok(v113, v114))
          {
            v161.i64[0] = v113;
            v162.i32[0] = v117;
            v150 = v113 * v114;
            v163.i64[0] = v150;
            if (v150 > 0x1000)
            {
              *&v160 = malloc_type_malloc(v113 * v114, 0x9C11AB88uLL);
              if (!v160)
              {
                goto LABEL_143;
              }
            }

            else
            {
              MEMORY[0x1EEE9AC00](v104);
              *&v160 = &v160 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
              bzero(v160, v113 * v114);
            }

            v151 = v160;
            bzero(v160, v163.u64[0]);
            v152 = v10;
            v153 = v161.i64[0];
            CA::ScanConverter::render_mask(v169, v152, v151, v161.i64[0], v167, v162.u32[0], (v167 + v113), (v114 + v162.i32[0]), v7);
            v154 = *(v16 + 16);
            v155 = *(v154 + 16) & 0xFFFFFF00FF00FF00;
            if (*(v154 + 8) == 0x3C003C003C003C00)
            {
              v156 = 1;
            }

            else
            {
              v156 = 3;
            }

            *(v154 + 16) = v156 | v155;
            *(v154 + 20) = HIDWORD(v155);
            if ((*(v12 + 1584) & 0x80000000) != 0)
            {
              *(v12 + 1584) = 0;
              *(v12 + 1588) = v13;
              *(v12 + 1589) = v13;
              v180 = v12;
              v181 = v16;
              *(v16 + 144) = 0;
              *(v16 + 112) = v16 + 1386;
              *(v16 + 120) = xmmword_183E20E50;
              v179 = &unk_1EF1F79F0;
              *&v182 = v151;
              *(&v182 + 1) = &v167;
              *&v183 = v75;
              CA::OGL::Mosaic::draw(v12 + 1440, v16, 4, 0, 0, v113, v114, 1, &v179, 0);
              v179 = &unk_1EF203C98;
              v157 = CA::CG::MosaicDelegate::draw_array(v181);
              v158 = *(v12 + 1600);
              if (v158)
              {
                (*(*v16 + 560))(v16, v158, 0, v157);
                *(v12 + 1600) = 0;
                *(v12 + 1592) = -1;
              }

              *(v12 + 1584) = -1;
              *(v12 + 1552) = 0;
            }

            *(*(v16 + 16) + 16) = 0;
            if (v163.i64[0] > 0x1000uLL)
            {
              free(v151);
            }

            goto LABEL_132;
          }
        }

        else
        {
          v121 = v117;
          v122 = CA::Render::format_rowbytes(9, v113);
          v123 = v122;
          v166 = v122;
          if (is_mul_ok(v122, v114))
          {
            v124 = v122 * v114;
          }

          else
          {
            v124 = 0;
          }

          if (v124 <= 0x100000)
          {
            v165 = 0;
            v125 = CA::Render::aligned_malloc(v124, &v165, 0);
            if (v125)
            {
              v126 = v10;
              v127 = v125;
              v161.i32[0] = v167;
              v162.i32[0] = v113 + v167;
              v163.i32[0] = v114 + v121;
              CA::ScanConverter::render_mask(v169, v126, v125, v123, v167, v121, (v113 + v167), (v114 + v121), v7);
              v128 = CA::Render::Image::new_image(9, v113, v114, 1u, 0, v127, &v166, CA::Render::aligned_free, v165, v159);
              if (v128)
              {
                v129 = v128;
                v130 = *(v16 + 16);
                v131 = *(v130 + 16) & 0xFFFFFF00FF00FF00;
                v132 = *(v130 + 8) == 0x3C003C003C003C00 ? 1 : 3;
                *(v130 + 16) = v132 | v131;
                *(v130 + 20) = HIDWORD(v131);
                v133 = v13 ? 36 : 0;
                v184 = 0uLL;
                v134 = CA::OGL::Context::bind_image(v16, 0, v128, v133, 1u, 1, 0, 0, 0.0, &v184, 0);
                if (v134)
                {
                  v135 = v134;
                  v136 = v75 * v162.i32[0];
                  v137 = v75;
                  v138 = v75 * v163.i32[0];
                  v183 = 0u;
                  v139 = *(*(v16 + 656) + 8);
                  v179 = v16;
                  v180 = v139;
                  v182 = 0u;
                  v181 = 0;
                  WORD4(v182) = 256;
                  CA::OGL::Context::ClippedArray::start(&v179);
                  v164[0] = 0;
                  v164[1] = 0;
                  v140 = v75 * v161.i32[0];
                  v141 = v75 * v121;
                  v142 = v136;
                  while (CA::OGL::Context::ClippedArray::next_rect(&v179, v164))
                  {
                    v143 = v138;
                    CA::OGL::Context::array_rect(v16, v140, v141, v142, v143);
                    v144 = v184.i32[3];
                    v145 = v184.i32[2];
                    v146 = v184.i64[0];
                    v147 = *(v16 + 136) + 48 * *(v16 + 144);
                    *(v147 - 176) = v184.i32[0];
                    *(v147 - 172) = v144;
                    *(v147 - 128) = v145;
                    *(v147 - 124) = v144;
                    *(v147 - 80) = v145;
                    *(v147 - 76) = HIDWORD(v146);
                    *(v147 - 32) = v146;
                    v148 = *(*(v16 + 16) + 8);
                    *(v147 - 160) = v148;
                    *(v147 - 112) = v148;
                    *(v147 - 64) = v148;
                    *(v147 - 16) = v148;
                  }

                  (*(*v16 + 560))(v16, v135, 0);
                  *(*(v16 + 16) + 16) = 0;
                  v75 = v137;
                }

                else
                {
                  *(*(v16 + 16) + 16) = 0;
                }

                if (atomic_fetch_add(v129 + 2, 0xFFFFFFFF) == 1)
                {
                  (*(*v129 + 16))(v129);
                }
              }

              goto LABEL_132;
            }
          }
        }

LABEL_143:
        v120 = 0;
LABEL_140:
        x_heap_free(v185);
        return v120;
      }

      LODWORD(v13) = 0;
    }

    v88 = 1.0;
    goto LABEL_73;
  }

  CA::CG::fill_path(v1);
  return 1;
}

void CA::OGL::DebugRenderer::DebugRenderer(CA::OGL::DebugRenderer *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 24) = xmmword_183E21250;
  *(this + 5) = a2;
  operator new[]();
}

void CA::OGL::DebugRenderer::~DebugRenderer(CA::OGL::DebugRenderer *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    CA::Render::Image::finalize(v2);
  }

  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    MEMORY[0x1865EA980](v3, 0x1000C803C748740);
  }
}

float16x4_t *CA::OGL::DebugRenderer::render(float16x4_t *this, CA::OGL::Context *a2, const CA::Transform *a3, char a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = this[8];
  v5 = this[6];
  v6 = *&v4 - *&v5;
  if (*&v4 != *&v5)
  {
    v8 = this;
    v29 = 0uLL;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v19 = 0;
    v9 = *(a3 + 1);
    v10 = *(a3 + 2);
    v11 = *(a3 + 3);
    v18[0] = *a3;
    v18[1] = v9;
    v18[2] = v10;
    v18[3] = v11;
    v12 = *(a3 + 5);
    v13 = *(a3 + 6);
    v14 = *(a3 + 7);
    v18[4] = *(a3 + 4);
    v18[5] = v12;
    v18[6] = v13;
    v18[7] = v14;
    v18[8] = *(a3 + 8);
    LOBYTE(v19) = *(a3 + 144) & 0x1F;
    if ((a4 & 1) == 0)
    {
      CA::OGL::DebugRenderer::apply_display_rotation(*(a2 + 75), v18, a3);
    }

    v22 = 0x3C003C003C003C00;
    v24 = 0;
    v25 = 0;
    v23 = 0;
    v27 = 0;
    v20[0] = 0;
    v21 = 0u;
    LODWORD(v26) = 1065353216;
    LOWORD(v28) = 1025;
    v20[1] = &CA::Shape::_infinite_shape;
    v20[0] = CA::OGL::Context::set_gstate(a2, v20);
    v15 = CA::OGL::Context::bind_image(a2, 0, *&v8[9], 256, 0, 0, 0, 0, 0.0, &v29, 0);
    if (v15)
    {
      v16 = v15;
      *(a2 + 171) = v18;
      ++*(a2 + 166);
      v17 = *(a2 + 2);
      *(v17 + 497) |= 1u;
      *(v17 + 496) = 3;
      *(*(a2 + 2) + 16) = 3;
      (*(*a2 + 344))(a2, 1, 0xAAAAAAAAAAAAAAABLL * (v6 >> 4), 0, *&v8[6], 0, 0xAAAAAAAAAAAAAAABLL * (v6 >> 4), 0);
      *(*(a2 + 2) + 497) &= ~1u;
      *(a2 + 171) = 0;
      ++*(a2 + 166);
      (*(*a2 + 560))(a2, v16, 0);
    }

    *(*(a2 + 2) + 16) = 0;
    return CA::OGL::Context::set_gstate(a2, **(a2 + 82));
  }

  return this;
}

float64_t CA::OGL::DebugRenderer::apply_display_rotation(CA::OGL::DebugRenderer *this, CA::OGL::Context *a2, CA::Transform *a3)
{
  if (this)
  {
    v4 = (*(*this + 16))(this, a2, a3);
    if (v4)
    {
      v6 = v4;
      if ((*(*v4 + 680))(v4))
      {
        v6 = *(*(v6 + 48) + 96);
      }

      v10 = *(v6 + 672);
      v11 = *(v6 + 176);
      if (v10 == 3)
      {
        *a2 = xmmword_183E20E00;
        *(a2 + 2) = 0;
        *(a2 + 3) = 0;
        *(a2 + 2) = xmmword_183E20E60;
        *(a2 + 3) = 0u;
        *(a2 + 4) = 0u;
        *(a2 + 5) = xmmword_183E20E00;
        *(a2 + 12) = v11;
        __asm { FMOV            V0.2D, #1.0 }

        *(a2 + 7) = xmmword_183E20E60;
        *(a2 + 8) = _Q0;
        *(a2 + 13) = 0;
        *(a2 + 14) = 0;
        *(a2 + 144) &= 0xE0u;
      }

      else
      {
        v12 = *(v6 + 180);
        if (v10 == 2)
        {
          *a2 = xmmword_183E20E00;
          *(a2 + 2) = 0;
          *(a2 + 3) = 0;
          *(a2 + 2) = xmmword_183E20E60;
          *(a2 + 3) = 0u;
          *(a2 + 4) = 0u;
          *(a2 + 5) = xmmword_183E20E00;
          *(a2 + 12) = v11;
          *(a2 + 13) = v12;
          __asm { FMOV            V0.2D, #1.0 }

          *(a2 + 7) = xmmword_183E20E60;
          *(a2 + 8) = _Q0;
          *(a2 + 14) = 0;
          *(a2 + 144) &= 0xE0u;
        }

        else
        {
          if (v10 != 1)
          {
            return result;
          }

          *a2 = xmmword_183E20E00;
          *(a2 + 2) = 0;
          *(a2 + 3) = 0;
          *(a2 + 2) = xmmword_183E20E60;
          *(a2 + 3) = 0u;
          *(a2 + 4) = 0u;
          *(a2 + 5) = xmmword_183E20E00;
          *(a2 + 12) = 0;
          *(a2 + 13) = v12;
          __asm { FMOV            V0.2D, #1.0 }

          *(a2 + 7) = xmmword_183E20E60;
          *(a2 + 8) = _Q0;
          *(a2 + 14) = 0;
          *(a2 + 144) &= 0xE0u;
          CA::Transform::rotate90(a2, v7, v8, v9);
        }

        CA::Transform::rotate90(a2, v7, v8, v9);
      }

      return CA::Transform::rotate90(a2, v7, v8, v9);
    }
  }

  return result;
}

double CA::OGL::DebugRenderer::visible_bounds(CA::OGL::DebugRenderer *this, CA::OGL::Context *a2, const CA::Transform *a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  *this = 0;
  v6 = *a2;
  v5 = *(a2 + 1);
  v8 = *(a2 + 2);
  v7 = *(a2 + 3);
  *(this + 2) = v8;
  *(this + 3) = v7;
  v27 = 0;
  v9 = *(a4 + 16);
  v10 = *(a4 + 32);
  v11 = *(a4 + 48);
  v23[0] = *a4;
  v23[1] = v9;
  v23[2] = v10;
  v23[3] = v11;
  v12 = *(a4 + 80);
  v13 = *(a4 + 96);
  v14 = *(a4 + 112);
  v23[4] = *(a4 + 64);
  v23[5] = v12;
  v24 = v13;
  v25 = v14;
  v26 = *(a4 + 128);
  LOBYTE(v27) = *(a4 + 144) & 0x1F;
  CA::OGL::DebugRenderer::apply_display_rotation(a3, v23, a3);
  v15 = v27;
  if ((v27 & 8) != 0)
  {
    v16 = *&v26;
    v6 = (*&v26 * v6);
    v5 = (*&v26 * v5);
    v8 = (*&v26 * v8);
    *this = v6;
    v7 = (v16 * v7);
    *(this + 2) = v8;
    *(this + 3) = v7;
  }

  if ((v15 & 4) != 0)
  {
    v18 = v5 + v7;
    v5 = v6;
    v6 = -v18;
    *(this + 2) = v7;
    *(this + 3) = v8;
    v17 = v8;
  }

  else
  {
    v17 = v7;
    v7 = v8;
  }

  if ((v15 & 2) != 0)
  {
    v19 = -(v6 + v7);
  }

  else
  {
    v19 = v6;
  }

  v20 = v5 + v17;
  if (v15)
  {
    v21 = -v20;
  }

  else
  {
    v21 = v5;
  }

  result = *(&v24 + 1) + v21;
  *this = (*&v24 + v19);
  *(this + 1) = result;
  return result;
}

uint64_t CA::OGL::DebugRenderer::draw_string(uint64_t this, const char *a2, uint64_t a3)
{
  if (!a2)
  {
    __assert_rtn("draw_string", "ogl-debug-renderer.cpp", 298, "text");
  }

  v4 = *(this + 16);
  v3 = *(this + 20);
  v5 = *(this + 64);
  if (v5 + 288 * a3 > *(this + 56) || a3 == 0)
  {
    v7 = *(this + 16);
  }

  else
  {
    do
    {
      v9 = *a2++;
      v8 = v9;
      if (v9 < 0x21)
      {
        switch(v8)
        {
          case 0x20u:
            v7 = *(this + 24) + v4;
            break;
          case 0xAu:
            v7 = *(this + 16);
            v3 = *(this + 20) + (*(this + 28) * 1.125);
            *(this + 20) = v3;
            break;
          case 9u:
            v7 = v4 + (*(this + 24) * 4.0);
            break;
          default:
            v7 = v4;
            break;
        }
      }

      else
      {
        if (v5 >= *(this + 56) || (v10 = (v8 - 32) * 0.0068359, v11 = *(this + 80), v13 = *(this + 24), v12 = *(this + 28), *v5 = v4, *(v5 + 4) = v3, *(v5 + 16) = v10, *(v5 + 20) = 0, *(v5 + 32) = v11, v15 = *(this + 56), v14 = *(this + 64), *(this + 64) = v14 + 48, v14 + 48 >= v15) || (v16 = v12 + v3, v17 = *(this + 80), *(v14 + 48) = v4, *(v14 + 52) = v16, *(v14 + 64) = v10, *(v14 + 68) = 1065353216, *(v14 + 80) = v17, v19 = *(this + 56), v18 = *(this + 64), *(this + 64) = v18 + 48, v18 + 48 >= v19) || (v20 = v10 + 0.0068359, v7 = v13 + v4, v21 = *(this + 80), *(v18 + 48) = v13 + v4, *(v18 + 52) = v3, *(v18 + 64) = v10 + 0.0068359, *(v18 + 68) = 0, *(v18 + 80) = v21, v23 = *(this + 56), v22 = *(this + 64), *(this + 64) = v22 + 48, v22 + 48 >= v23) || (v24 = *(this + 80), *(v22 + 48) = v7, *(v22 + 52) = v3, *(v22 + 64) = v20, *(v22 + 68) = 0, *(v22 + 80) = v24, v26 = *(this + 56), v25 = *(this + 64), *(this + 64) = v25 + 48, v25 + 48 >= v26) || (v27 = *(this + 80), *(v25 + 48) = v4, *(v25 + 52) = v16, *(v25 + 64) = v10, *(v25 + 68) = 1065353216, *(v25 + 80) = v27, v29 = *(this + 56), v28 = *(this + 64), *(this + 64) = v28 + 48, v28 + 48 >= v29))
        {
          __assert_rtn("add_vertex", "ogl-debug-renderer.cpp", 245, "_vertices_cur < _vertices_end");
        }

        v30 = *(this + 80);
        *(v28 + 48) = v7;
        *(v28 + 52) = v16;
        *(v28 + 64) = v20;
        *(v28 + 68) = 1065353216;
        *(v28 + 80) = v30;
        v5 = *(this + 64) + 48;
        *(this + 64) = v5;
      }

      v4 = v7;
      --a3;
    }

    while (a3);
  }

  *(this + 16) = v7;
  *(this + 20) = v3;
  return this;
}

float32_t CA::OGL::DebugRenderer::draw_bar(float32x2_t *this, float32_t result)
{
  v2 = this[8];
  if ((v2 + 36) <= *&this[7])
  {
    v3 = this[3].f32[1];
    v4 = this[10];
    *v2 = this[2];
    v2[2] = 1059586048;
    v2[4] = v4;
    v6 = this[7];
    v5 = this[8];
    this[8] = (*&v5 + 48);
    if (*&v5 + 48 >= v6 || (v7 = this[10], v8 = this[2].f32[1] + v3, *(*&v5 + 48) = this[2].i32[0], *(*&v5 + 52) = v8, *(*&v5 + 64) = 0x3F8000003F280000, *(*&v5 + 80) = v7, v10 = this[7], v9 = this[8], this[8] = (*&v9 + 48), *&v9 + 48 >= v10) || (v11 = this[10], v12 = this[2].i32[1], *(*&v9 + 48) = this[2].f32[0] + result, *(*&v9 + 52) = v12, *(*&v9 + 64) = 1059700736, *(*&v9 + 80) = v11, v14 = this[7], v13 = this[8], this[8] = (*&v13 + 48), *&v13 + 48 >= v14) || (v15 = this[10], v16 = this[2].i32[1], *(*&v13 + 48) = this[2].f32[0] + result, *(*&v13 + 52) = v16, *(*&v13 + 64) = 1059700736, *(*&v13 + 80) = v15, v18 = this[7], v17 = this[8], this[8] = (*&v17 + 48), *&v17 + 48 >= v18) || (v19 = this[10], v20 = this[2].f32[1] + v3, *(*&v17 + 48) = this[2].i32[0], *(*&v17 + 52) = v20, *(*&v17 + 64) = 0x3F8000003F280000, *(*&v17 + 80) = v19, v22 = this[7], v21 = this[8], this[8] = &v21[6], &v21[6] >= v22))
    {
      __assert_rtn("add_vertex", "ogl-debug-renderer.cpp", 245, "_vertices_cur < _vertices_end");
    }

    v23 = this[10];
    v21[6] = vadd_f32(this[2], __PAIR64__(LODWORD(v3), LODWORD(result)));
    v21[8] = 0x3F8000003F29C000;
    v21[10] = v23;
    *&this[8] += 48;
    result = this[2].f32[0] + result;
    this[2].f32[0] = result;
  }

  return result;
}

double CA::OGL::DebugRenderer::draw_rectangle_with_fill(float32x2_t *a1, float32x2_t *a2, double result)
{
  v3 = a1[8];
  if (&v3[36] <= *&a1[7])
  {
    v4 = *a2;
    v5 = a1[2];
    v6 = a1[10];
    *v3 = v5;
    v3[2] = 1063141376;
    v3[4] = v6;
    v8 = a1[7];
    v7 = a1[8];
    a1[8] = (*&v7 + 48);
    if (*&v7 + 48 >= v8 || (v9 = vsub_f32(v4, v5), v10 = a1[10], v11 = a1[2].f32[1] + v9.f32[1], *(*&v7 + 48) = a1[2].i32[0], *(*&v7 + 52) = v11, *(*&v7 + 64) = 0x3F8000003F5E4000, *(*&v7 + 80) = v10, v13 = a1[7], v12 = a1[8], a1[8] = (*&v12 + 48), *&v12 + 48 >= v13) || (v14 = a1[10], v15 = a1[2].i32[1], *(*&v12 + 48) = a1[2].f32[0] + v9.f32[0], *(*&v12 + 52) = v15, *(*&v12 + 64) = 1063256064, *(*&v12 + 80) = v14, v17 = a1[7], v16 = a1[8], a1[8] = (*&v16 + 48), *&v16 + 48 >= v17) || (v18 = a1[10], v19 = a1[2].i32[1], *(*&v16 + 48) = a1[2].f32[0] + v9.f32[0], *(*&v16 + 52) = v19, *(*&v16 + 64) = 1063256064, *(*&v16 + 80) = v18, v21 = a1[7], v20 = a1[8], a1[8] = (*&v20 + 48), *&v20 + 48 >= v21) || (v22 = a1[10], v23 = a1[2].f32[1] + v9.f32[1], *(*&v20 + 48) = a1[2].i32[0], *(*&v20 + 52) = v23, *(*&v20 + 64) = 0x3F8000003F5E4000, *(*&v20 + 80) = v22, v25 = a1[7], v24 = a1[8], a1[8] = &v24[6], &v24[6] >= v25))
    {
      __assert_rtn("add_vertex", "ogl-debug-renderer.cpp", 245, "_vertices_cur < _vertices_end");
    }

    v26 = a1[10];
    v24[6] = vadd_f32(a1[2], v9);
    result = 0.00781250184;
    v24[8] = 4575657222471680000;
    v24[10] = v26;
    *&a1[8] += 48;
    a1[2] = *a2;
  }

  return result;
}

void *___ZL40getVTPixelTransferSessionCreateSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = VideoToolboxLibrary();
  result = dlsym(v2, "VTPixelTransferSessionCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVTPixelTransferSessionCreateSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t VideoToolboxLibrary(void)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!VideoToolboxLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = ___ZL23VideoToolboxLibraryCorePPc_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E6DED908;
    v5 = 0;
    VideoToolboxLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = VideoToolboxLibraryCore(char **)::frameworkLibrary;
    if (VideoToolboxLibraryCore(char **)::frameworkLibrary)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    return v0;
  }

  return VideoToolboxLibraryCore(char **)::frameworkLibrary;
}

void *___ZL73getkVTPixelTransferPropertyKey_EnableHardwareAcceleratedTransferSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = VideoToolboxLibrary();
  result = dlsym(v2, "kVTPixelTransferPropertyKey_EnableHardwareAcceleratedTransfer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkVTPixelTransferPropertyKey_EnableHardwareAcceleratedTransferSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t VTSessionSetPropertyFunc(const void *a1, const __CFString *a2, const void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v6 = getVTSessionSetPropertySymbolLoc(void)::ptr;
  v12 = getVTSessionSetPropertySymbolLoc(void)::ptr;
  if (!getVTSessionSetPropertySymbolLoc(void)::ptr)
  {
    v7 = VideoToolboxLibrary();
    v10[3] = dlsym(v7, "VTSessionSetProperty");
    getVTSessionSetPropertySymbolLoc(void)::ptr = v10[3];
    v6 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v6)
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }

  return v6(a1, a2, a3);
}

void sub_183CAE850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL68getkVTPixelTransferPropertyKey_EnableGPUAcceleratedTransferSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = VideoToolboxLibrary();
  result = dlsym(v2, "kVTPixelTransferPropertyKey_EnableGPUAcceleratedTransfer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkVTPixelTransferPropertyKey_EnableGPUAcceleratedTransferSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL62getkVTPixelTransferPropertyKey_EnableSoftwareTransferSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = VideoToolboxLibrary();
  result = dlsym(v2, "kVTPixelTransferPropertyKey_EnableSoftwareTransfer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkVTPixelTransferPropertyKey_EnableSoftwareTransferSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkVTPixelTransferPropertyKey_RealTimeSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = VideoToolboxLibrary();
  result = dlsym(v2, "kVTPixelTransferPropertyKey_RealTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkVTPixelTransferPropertyKey_RealTimeSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL63getkVTPixelTransferPropertyKey_EnableHighSpeedTransferSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = VideoToolboxLibrary();
  result = dlsym(v2, "kVTPixelTransferPropertyKey_EnableHighSpeedTransfer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkVTPixelTransferPropertyKey_EnableHighSpeedTransferSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL71getkVTPixelTransferPropertyKey_WriteBlackPixelsOutsideDestRectSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = VideoToolboxLibrary();
  result = dlsym(v2, "kVTPixelTransferPropertyKey_WriteBlackPixelsOutsideDestRect");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkVTPixelTransferPropertyKey_WriteBlackPixelsOutsideDestRectSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL56getkVTPixelTransferPropertyKey_DownsamplingModeSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = VideoToolboxLibrary();
  result = dlsym(v2, "kVTPixelTransferPropertyKey_DownsamplingMode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkVTPixelTransferPropertyKey_DownsamplingModeSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL39getkVTDownsamplingMode_AverageSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = VideoToolboxLibrary();
  result = dlsym(v2, "kVTDownsamplingMode_Average");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkVTDownsamplingMode_AverageSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL61getkVTPixelTransferPropertyKey_DestinationICCProfileSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = VideoToolboxLibrary();
  result = dlsym(v2, "kVTPixelTransferPropertyKey_DestinationICCProfile");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkVTPixelTransferPropertyKey_DestinationICCProfileSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL62getkVTPixelTransferPropertyKey_DestinationYCbCrMatrixSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = VideoToolboxLibrary();
  result = dlsym(v2, "kVTPixelTransferPropertyKey_DestinationYCbCrMatrix");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkVTPixelTransferPropertyKey_DestinationYCbCrMatrixSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL32getVTSessionSetPropertySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = VideoToolboxLibrary();
  result = dlsym(v2, "VTSessionSetProperty");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVTSessionSetPropertySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL23VideoToolboxLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  VideoToolboxLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___ZL44getVTPixelTransferSessionInvalidateSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = VideoToolboxLibrary();
  result = dlsym(v2, "VTPixelTransferSessionInvalidate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVTPixelTransferSessionInvalidateSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CA::VideoToolbox::~VideoToolbox(CFTypeRef *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (*this)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v3 = getVTPixelTransferSessionInvalidateSymbolLoc(void)::ptr;
    v8 = getVTPixelTransferSessionInvalidateSymbolLoc(void)::ptr;
    if (!getVTPixelTransferSessionInvalidateSymbolLoc(void)::ptr)
    {
      v4 = VideoToolboxLibrary();
      v6[3] = dlsym(v4, "VTPixelTransferSessionInvalidate");
      getVTPixelTransferSessionInvalidateSymbolLoc(void)::ptr = v6[3];
      v3 = v6[3];
    }

    _Block_object_dispose(&v5, 8);
    if (!v3)
    {
      dlerror();
      abort_report_np();
    }

    v3(v2);
    CFRelease(*this);
  }
}

void sub_183CAED90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CA::VideoToolbox::copy_surface(OpaqueVTPixelTransferSession **this, __IOSurface *a2, __IOSurface *a3)
{
  texture[1] = *MEMORY[0x1E69E9840];
  pixelBufferOut = 0;
  v5 = CVPixelBufferCreateWithIOSurface(0, a2, 0, &pixelBufferOut);
  if (v5)
  {
    v6 = v5;
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v7 = x_log_get_utilities::log;
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      LODWORD(texture[0]) = 67109120;
      HIDWORD(texture[0]) = v6;
      _os_log_error_impl(&dword_183AA6000, v7, OS_LOG_TYPE_ERROR, "CVPixelBufferCreateWithIOSurface failed (src): %d", texture, 8u);
    }
  }

  texture[0] = 0;
  v8 = CVPixelBufferCreateWithIOSurface(0, a3, 0, texture);
  if (v8)
  {
    v9 = v8;
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v10 = x_log_get_utilities::log;
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v21 = v9;
      _os_log_error_impl(&dword_183AA6000, v10, OS_LOG_TYPE_ERROR, "CVPixelBufferCreateWithIOSurface failed (dst): %d", buf, 8u);
    }
  }

  if (pixelBufferOut)
  {
    if (texture[0])
    {
      v11 = VTPixelTransferSessionTransferImageFunc(*this, pixelBufferOut, texture[0]);
      if (v11)
      {
        v12 = v11;
        if (x_log_get_utilities::once != -1)
        {
          dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
        }

        v13 = x_log_get_utilities::log;
        if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v21 = v12;
          _os_log_error_impl(&dword_183AA6000, v13, OS_LOG_TYPE_ERROR, "VTPixelTransferSessionTransferImage failed: %d", buf, 8u);
        }
      }
    }
  }

  if (*(this + 8) == 1)
  {
    v14 = pixelBufferOut;
    if (pixelBufferOut)
    {
      v15 = texture[0];
      if (texture[0])
      {
        *(this + 8) = 0;
        v16 = VTPixelTransferSessionTransferImageFunc(*this, v14, v15);
        if (v16)
        {
          v17 = v16;
          if (x_log_get_utilities::once != -1)
          {
            dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
          }

          v18 = x_log_get_utilities::log;
          if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v21 = v17;
            _os_log_error_impl(&dword_183AA6000, v18, OS_LOG_TYPE_ERROR, "VTPixelTransferSessionTransferImage failed: %d", buf, 8u);
          }
        }
      }
    }
  }

  CVPixelBufferRelease(pixelBufferOut);
  CVPixelBufferRelease(texture[0]);
}

uint64_t VTPixelTransferSessionTransferImageFunc(OpaqueVTPixelTransferSession *a1, __CVBuffer *a2, __CVBuffer *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v6 = getVTPixelTransferSessionTransferImageSymbolLoc(void)::ptr;
  v12 = getVTPixelTransferSessionTransferImageSymbolLoc(void)::ptr;
  if (!getVTPixelTransferSessionTransferImageSymbolLoc(void)::ptr)
  {
    v7 = VideoToolboxLibrary();
    v10[3] = dlsym(v7, "VTPixelTransferSessionTransferImage");
    getVTPixelTransferSessionTransferImageSymbolLoc(void)::ptr = v10[3];
    v6 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v6)
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }

  return v6(a1, a2, a3);
}

void sub_183CAF1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL47getVTPixelTransferSessionTransferImageSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = VideoToolboxLibrary();
  result = dlsym(v2, "VTPixelTransferSessionTransferImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVTPixelTransferSessionTransferImageSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

os_log_t ___Z27x_log_get_secure_indicatorsv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "Indicators");
  x_log_get_secure_indicators(void)::log = result;
  return result;
}

os_log_t ___Z23x_log_get_sil_telemetryv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "SecureIndicator.Telemetry");
  x_log_get_sil_telemetry(void)::log = result;
  return result;
}

uint64_t sil_mgr_instance(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  {
    sil_mgr_instance(void *,unsigned int)::pending_sil = 0;
  }

  v4 = g_sil_mgr_inst;
  if (g_sil_mgr_inst)
  {
    return v4;
  }

  v4 = sil_mgr_instance(void *,unsigned int)::pending_sil;
  if (!sil_mgr_instance(void *,unsigned int)::pending_sil)
  {
    if (MEMORY[0x1EEE91128] && MEMORY[0x1EEE910E8] && MEMORY[0x1EEE910D0] && MEMORY[0x1EEE91158] && MEMORY[0x1EEE91130] && MEMORY[0x1EEE910C8] && MEMORY[0x1EEE91138])
    {
      v13 = objc_autoreleasePoolPush();
      v14 = objc_opt_new();
      v15 = *MEMORY[0x1E69C8728];
      [v14 setObject:&unk_1EF22B970 forKeyedSubscript:*MEMORY[0x1E69C8728]];
      if (CADeviceSupportsMedina::once != -1)
      {
        dispatch_once(&CADeviceSupportsMedina::once, &__block_literal_global_368);
      }

      if ((CADeviceSupportsMedina::medina & 1) == 0)
      {
        if (!a1)
        {
          v4 = 0;
          objc_autoreleasePoolPop(v13);
          return v4;
        }

        v16 = [MEMORY[0x1E696B098] valueWithPointer:a1];
        [v14 setObject:v16 forKeyedSubscript:*MEMORY[0x1E69C8730]];
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
        [v14 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69C8738]];
        [v14 setObject:&unk_1EF22B988 forKeyedSubscript:v15];
      }

      v18 = v14;
      operator new();
    }

    return v4;
  }

  v6.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  m = (v4 + 24);
  __lk.__m_ = (v4 + 24);
  *&__lk.__owns_ = 1;
  std::mutex::lock((v4 + 24));
  v8 = *(v4 + 136);
  if ((v8 & 8) != 0)
  {
    v19 = 2;
    goto LABEL_42;
  }

  if ((v8 & 4) != 0)
  {
    goto LABEL_40;
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v6.__d_.__rep_)
  {
    if (v6.__d_.__rep_ > std::chrono::steady_clock::now().__d_.__rep_)
    {
      v9.__d_.__rep_ = v6.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v9.__d_.__rep_ >= 1)
      {
        std::chrono::steady_clock::now();
        v10.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        if (v10.__d_.__rep_)
        {
          if (v10.__d_.__rep_ < 1)
          {
            if (v10.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
            {
              goto LABEL_17;
            }

            v11 = 0x8000000000000000;
          }

          else
          {
            if (v10.__d_.__rep_ > 0x20C49BA5E353F7)
            {
              v11 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_18;
            }

LABEL_17:
            v11 = 1000 * v10.__d_.__rep_;
LABEL_18:
            if (v11 > (v9.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
            {
              v12.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_21;
            }
          }
        }

        else
        {
          v11 = 0;
        }

        v12.__d_.__rep_ = v11 + v9.__d_.__rep_;
LABEL_21:
        std::condition_variable::__do_timed_wait((v4 + 88), &__lk, v12);
        std::chrono::steady_clock::now();
      }

      std::chrono::steady_clock::now();
    }

    v8 = *(v4 + 136);
    if ((v8 & 4) != 0)
    {
      goto LABEL_40;
    }
  }

  v8 = *(v4 + 136);
LABEL_40:
  v19 = ((v8 >> 2) & 1) == 0;
  if (__lk.__owns_)
  {
    m = __lk.__m_;
LABEL_42:
    std::mutex::unlock(m);
  }

  if (v19)
  {
    return g_sil_mgr_inst;
  }

  v20 = sil_mgr_instance(void *,unsigned int)::pending_sil;
  sil_mgr_instance(void *,unsigned int)::pending_sil = 0;
  __lk.__m_ = &v20->__mut_;
  *&__lk.__owns_ = 1;
  std::mutex::lock(&v20->__mut_);
  std::__assoc_sub_state::__sub_wait(v20, &__lk);
  ptr = v20->__exception_.__ptr_;
  v24.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v24);
  if (ptr)
  {
    std::exception_ptr::exception_ptr(&v24, &v20->__exception_);
    v23.__ptr_ = &v24;
    std::rethrow_exception(v23);
    __break(1u);
    std::__throw_future_error[abi:nn200100]();
LABEL_59:
    dispatch_once(&x_log_get_secure_indicators(void)::once, &__block_literal_global_5775);
LABEL_52:
    v22 = x_log_get_secure_indicators(void)::log;
    if (os_log_type_enabled(x_log_get_secure_indicators(void)::log, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__lk.__m_) = 0;
      _os_log_error_impl(&dword_183AA6000, v22, OS_LOG_TYPE_ERROR, "CoreAnimation: Failed to create SILManager, aborting...", &__lk, 2u);
    }

    abort();
  }

  v4 = v20[1].__vftable;
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
  }

  g_sil_mgr_inst = v4;
  if (!v4)
  {
    if (x_log_get_secure_indicators(void)::once == -1)
    {
      goto LABEL_52;
    }

    goto LABEL_59;
  }

  return v4;
}

void sub_183CAF894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, std::mutex *a11, char a12)
{
  if (!atomic_fetch_add(v14, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v13 + 16))(v13);
  }

  objc_autoreleasePoolPop(v12);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<SILManager *,std::__async_func<sil_mgr_instance(void *,unsigned int)::$_0,NSMutableDictionary *>>::*)(void),std::__async_assoc_state<SILManager *,std::__async_func<sil_mgr_instance(void *,unsigned int)::$_0,NSMutableDictionary *>>*>>::~unique_ptr[abi:nn200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](v2);
    MEMORY[0x1865EA9A0](v3, 0xA0C40F20CD8FBLL);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x1865EA800]();
    MEMORY[0x1865EA9A0](v3, 0x20C4093837F09);
  }

  return a1;
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<SILManager *,std::__async_func<sil_mgr_instance(void *,unsigned int)::$_0,NSMutableDictionary *>>::*)(void),std::__async_assoc_state<SILManager *,std::__async_func<sil_mgr_instance(void *,unsigned int)::$_0,NSMutableDictionary *>>*>>(uint64_t *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v8[0][1];
  v5 = v8[0][2];
  v6 = (v8[0][3] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<SILManager *,std::__async_func<sil_mgr_instance(void *,unsigned int)::$_0,NSMutableDictionary *>>::*)(void),std::__async_assoc_state<SILManager *,std::__async_func<sil_mgr_instance(void *,unsigned int)::$_0,NSMutableDictionary *>>*>>::~unique_ptr[abi:nn200100](v8);
  return 0;
}

void std::__async_assoc_state<SILManager *,std::__async_func<sil_mgr_instance(void *,unsigned int)::$_0,NSMutableDictionary *>>::__execute(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 152);
  v3 = SILManagerCreate();
  if (v3)
  {
    atexit(cleanup_stale_indicators);
  }

  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5[0].__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(v5), v4))
  {
    std::__throw_future_error[abi:nn200100]();
  }

  *(a1 + 144) = v3;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

uint64_t cleanup_stale_indicators(void)
{
  if (!g_sil_mgr_inst)
  {
    __assert_rtn("cleanup_stale_indicators", "windowserver-secure-indicators.mm", 106, "g_sil_mgr_inst");
  }

  return SILManagerTurnOffRegions();
}

uint64_t std::__async_assoc_state<SILManager *,std::__async_func<sil_mgr_instance(void *,unsigned int)::$_0,NSMutableDictionary *>>::__on_zero_shared(std::__assoc_sub_state *a1)
{
  std::__assoc_sub_state::wait(a1);
  v2 = a1->~__assoc_sub_state_0;

  return (v2)(a1);
}

void std::__async_assoc_state<SILManager *,std::__async_func<sil_mgr_instance(void *,unsigned int)::$_0,NSMutableDictionary *>>::~__async_assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x1E69E5550] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x1865EA9A0);
}

{
  *a1 = MEMORY[0x1E69E5550] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void std::vector<std::pair<unsigned int,std::vector<CA::Vec2<int>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 32;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

BOOL CA::WindowServer::SILMgr::set_power(CA::WindowServer::SILMgr *this, int a2, int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (x_log_get_secure_indicators(void)::once != -1)
  {
    dispatch_once(&x_log_get_secure_indicators(void)::once, &__block_literal_global_5775);
  }

  v6 = x_log_get_secure_indicators(void)::log;
  if (os_log_type_enabled(x_log_get_secure_indicators(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = a2;
    LOWORD(v16) = 1024;
    *(&v16 + 2) = a3;
    _os_log_impl(&dword_183AA6000, v6, OS_LOG_TYPE_DEFAULT, "SILMgr::set_power %u sync : %u", buf, 0xEu);
  }

  if ((a2 & 1) == 0)
  {
    CA::WindowServer::SILMgr::turn_off_all_regions(this, 1, 0, 0);
  }

  v7 = *this;
  if (!MEMORY[0x1EEE91150] || (a3 & 1) != 0)
  {
    if (*(this + 258))
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v14 = 0;
      *buf = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = ___ZL19_SILManagerSetPowerP10SILManagerbb_block_invoke;
      v18 = &unk_1E6DED940;
      v19 = &v11;
      v20 = v7;
      v21 = a2;
      BMMonitorBlockExecutionWithSignature();
      goto LABEL_13;
    }

    v9 = SILManagerSetPower();
LABEL_16:
    v8 = v9;
    return v8 < 0x200;
  }

  if (!*(this + 258))
  {
    v9 = SILManagerTrySetPower();
    goto LABEL_16;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  *buf = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = ___ZL22_SILManagerTrySetPowerP10SILManagerbb_block_invoke;
  v18 = &unk_1E6DED940;
  v19 = &v11;
  v20 = v7;
  v21 = a2;
  BMMonitorBlockExecutionWithSignature();
LABEL_13:
  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8 < 0x200;
}

BOOL CA::WindowServer::SILMgr::turn_off_all_regions(uint64_t a1, uint64_t a2, _OWORD *a3, BOOL *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (x_log_get_secure_indicators(void)::once != -1)
  {
    dispatch_once(&x_log_get_secure_indicators(void)::once, &__block_literal_global_5775);
  }

  v8 = x_log_get_secure_indicators(void)::log;
  if (os_log_type_enabled(x_log_get_secure_indicators(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_183AA6000, v8, OS_LOG_TYPE_DEFAULT, "Turning off all regions", buf, 2u);
  }

  v9 = _SILManagerTurnOffRegions(*a1, 15, a2, *(a1 + 258));
  if (v9 >= 0x200)
  {
    if (x_log_get_secure_indicators(void)::once != -1)
    {
      dispatch_once(&x_log_get_secure_indicators(void)::once, &__block_literal_global_5775);
    }

    v15 = x_log_get_secure_indicators(void)::log;
    if (os_log_type_enabled(x_log_get_secure_indicators(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_183AA6000, v15, OS_LOG_TYPE_ERROR, "Failed to turn off all regions !", v17, 2u);
    }
  }

  else
  {
    *(a1 + 257) = 1;
    if (a3)
    {
      v10 = *(a1 + 24);
      v11 = *(a1 + 56);
      a3[1] = *(a1 + 40);
      a3[2] = v11;
      *a3 = v10;
      v12 = *(a1 + 72);
      v13 = *(a1 + 88);
      v14 = *(a1 + 120);
      a3[5] = *(a1 + 104);
      a3[6] = v14;
      a3[3] = v12;
      a3[4] = v13;
    }

    *(a1 + 36) = -1082130432;
    *(a1 + 64) = -1082130432;
    *(a1 + 92) = -1082130432;
    *(a1 + 120) = -1082130432;
    CA::WindowServer::SILMgr::end_swap_region(a1, a4, 0.0);
  }

  return v9 < 0x200;
}

uint64_t ___ZL22_SILManagerTrySetPowerP10SILManagerbb_block_invoke(uint64_t a1)
{
  result = SILManagerTrySetPower();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t ___ZL19_SILManagerSetPowerP10SILManagerbb_block_invoke(uint64_t a1)
{
  result = SILManagerSetPower();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _SILManagerTurnOffRegions(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return SILManagerTurnOffRegions();
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  BMMonitorBlockExecutionWithSignature();
  v4 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v4;
}

void sub_183CB03E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CA::WindowServer::SILMgr::end_swap_region(CA::WindowServer::SILMgr *this, BOOL *a2, double a3)
{
  *(this + 260) = 1;
  if (*(this + 257) != 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0uLL;
  v7 = vdupq_n_s64(1uLL);
  do
  {
    v8.i32[0] = *(this + v5 + 36);
    v8.i32[1] = *(this + v5 + 64);
    v9 = vcgtz_f32(v8);
    v10.i64[0] = v9.u32[0];
    v10.i64[1] = v9.u32[1];
    v6 = vaddq_s64(v6, vandq_s8(v10, v7));
    v5 += 56;
  }

  while (v5 != 112);
  v11 = (this + 24);
  if (vaddvq_s64(v6) || !*(this + 2))
  {
    v12 = 0;
    v13 = (this + 36);
    do
    {
      if (*v13 == 0.0)
      {
        CA::WindowServer::SILMgr::turn_off_region(this, v12);
      }

      ++v12;
      v13 += 7;
    }

    while (v12 != 4);
  }

  if (!MEMORY[0x1EEE91140])
  {
    *(this + 257) = 0;
    goto LABEL_30;
  }

  if (MEMORY[0x1EEE91148])
  {
    v15 = SILManagerSwapEndPresentationTime();
  }

  else
  {
    v15 = SILManagerSwapEnd();
  }

  if (v15 == 9)
  {
    v16 = 1;
LABEL_23:
    v17 = 0;
    goto LABEL_24;
  }

  if (v15 != 10)
  {
    if (v15 != 11)
    {
      v21 = 0;
      goto LABEL_29;
    }

    v16 = 0;
    goto LABEL_23;
  }

  v16 = 3;
  v17 = 2;
LABEL_24:
  v18 = 5;
  v19 = this + 24;
  do
  {
    *v19 = 0;
    *(v19 + 12) = 3212836864;
    *(v19 + 5) = 0;
    *(v19 + 12) = 0;
    v19 += 28;
    --v18;
  }

  while (v18 > 1);
  v20 = v11 + 7 * v17;
  v20[3] = 1065353216;
  *v20 = v16;
  v21 = 1;
  if (a2)
  {
    *a2 = 1;
  }

LABEL_29:
  *(this + 259) = v21;
  *(this + 257) = 0;
  if (v15 > 0x1FF)
  {
    return 0;
  }

LABEL_30:
  v22 = *(this + 2);
  if (v22)
  {
    v23.i32[0] = *(this + 9);
    v23.i32[1] = *(this + 16);
    v23.i32[2] = *(this + 23);
    v23.i32[3] = *(this + 30);
    v24 = vandq_s8(vcgtzq_f32(v23), xmmword_183E21260);
    v24.i32[0] = vaddvq_s32(v24) & 0xF;
    *v24.i8 = vcnt_s8(*v24.i8);
    v24.i16[0] = vaddlv_u8(*v24.i8);
    v25 = v24.u32[0];
    v26 = (this + 148);
    v27 = 4;
    do
    {
      v28 = *(v26 - 28);
      if (*v26 <= 0.0 == v28 > 0.0)
      {
        (*(v22 + 16))(v22, v28 > 0.0, *(v26 - 31), v25);
      }

      v26 += 7;
      --v27;
    }

    while (v27);
  }

  v29 = *(this + 56);
  *(this + 184) = *(this + 72);
  v30 = *(this + 104);
  *(this + 200) = *(this + 88);
  *(this + 216) = v30;
  *(this + 232) = *(this + 120);
  v31 = *(this + 40);
  *(this + 136) = *v11;
  *(this + 152) = v31;
  result = 1;
  *(this + 168) = v29;
  return result;
}

uint64_t CA::WindowServer::SILMgr::turn_off_region(CA::WindowServer::SILMgr *this, unsigned int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (x_log_get_secure_indicators(void)::once != -1)
  {
    dispatch_once(&x_log_get_secure_indicators(void)::once, &__block_literal_global_5775);
  }

  v4 = x_log_get_secure_indicators(void)::log;
  if (os_log_type_enabled(x_log_get_secure_indicators(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "Turning off region %u", v6, 8u);
  }

  result = _SILManagerTurnOffRegions(*this, (1 << a2), 0, *(this + 258));
  if (result <= 0x1FF)
  {
    *(this + 257) = 1;
    *(this + 7 * a2 + 9) = -1082130432;
  }

  return result;
}

uint64_t ___ZL25_SILManagerTurnOffRegionsP10SILManagerjbb_block_invoke(uint64_t a1)
{
  result = SILManagerTurnOffRegions();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

BOOL CA::WindowServer::SILMgr::is_visibly_equal(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = a1 + 28 * a2;
  v5 = *(v3 + 24);
  v4 = v3 + 24;
  return *a3 == v5 && *(a3 + 24) == *(v4 + 24) && vabds_f32(*(a3 + 4), *(v4 + 4)) < 0.00001 && vabds_f32(*(a3 + 8), *(v4 + 8)) < 0.00001 && vabds_f32(*(a3 + 12), *(v4 + 12)) < 0.001 && vabds_f32(*(a3 + 16), *(v4 + 16)) < 0.001 && vabds_f32(*(a1 + 280), *(a1 + 276)) < 0.001 && vabds_f32(*(a3 + 20), *(v4 + 20)) < 0.001;
}

BOOL CA::WindowServer::SILMgr::swap_region(uint64_t a1, unsigned int a2, uint64_t a3, BOOL *a4, BOOL *a5)
{
  v96 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 12);
  if (v5 < 0.0)
  {
    __assert_rtn("swap_region", "windowserver-secure-indicators.mm", 470, "state.opacity >= 0.0f");
  }

  if (a2 > 3)
  {
    return 0;
  }

  if (MEMORY[0x1EEE910E0])
  {
    if (!SILManagerIndicatorExtent())
    {
      if (x_log_get_secure_indicators(void)::once != -1)
      {
        dispatch_once(&x_log_get_secure_indicators(void)::once, &__block_literal_global_5775);
      }

      v27 = x_log_get_secure_indicators(void)::log;
      if (os_log_type_enabled(x_log_get_secure_indicators(void)::log, OS_LOG_TYPE_ERROR))
      {
        v28 = *a3;
        v29 = *(a3 + 24);
        *buf = 67109376;
        *&buf[4] = v28;
        *&buf[8] = 1024;
        *&buf[10] = v29;
        _os_log_error_impl(&dword_183AA6000, v27, OS_LOG_TYPE_ERROR, "Failure to query indicator extent for indicator: %u frame: %u", buf, 0xEu);
      }

      return 0;
    }

    v5 = *(a3 + 12);
  }

  v92[0] = 4;
  v93 = 0;
  v94 = 0;
  BYTE1(v92[0]) = a2;
  HIDWORD(v92[0]) = *a3;
  v92[1] = *(a3 + 4);
  v12 = *(a3 + 20);
  LODWORD(v93) = *(a3 + 16);
  *(&v93 + 1) = v5;
  LOWORD(v94) = *(a3 + 24);
  v95 = v12;
  v13 = *a1;
  if (*(a1 + 258) == 1)
  {
    v83 = 0;
    v84 = &v83;
    *&v85 = 0x2020000000;
    DWORD2(v85) = 0;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL15_SILManagerSwapP10SILManagerPK18SILManagerSwapInfob_block_invoke;
    *v88 = &unk_1E6DED968;
    *&v88[8] = &v83;
    *&v88[16] = v13;
    *&v88[24] = v92;
    BMMonitorBlockExecutionWithSignature();
    v14 = *(v84 + 6);
    _Block_object_dispose(&v83, 8);
  }

  else
  {
    v14 = SILManagerSwap();
  }

  v7 = v14 < 0x200;
  if (v14 >= 0x200)
  {
    kdebug_trace();
    if (a5)
    {
      *a5 = v14 == 519;
    }

    if (v14 == 521 && *(a1 + 28 * a2 + 36) >= 0.0)
    {
      CA::WindowServer::SILMgr::turn_off_region(a1, a2);
    }
  }

  else
  {
    ValidSwapID = SILManagerLastValidSwapID();
    if (x_log_get_secure_indicators(void)::once != -1)
    {
      dispatch_once(&x_log_get_secure_indicators(void)::once, &__block_literal_global_5775);
    }

    v16 = x_log_get_secure_indicators(void)::log;
    if (os_log_type_enabled(x_log_get_secure_indicators(void)::log, OS_LOG_TYPE_INFO))
    {
      v17 = *a3;
      v18 = *(a3 + 4);
      v19 = *(a3 + 8);
      v20 = *(a3 + 12);
      v21 = *(a3 + 16);
      v22 = *(a3 + 20);
      *buf = 134219776;
      *&buf[4] = ValidSwapID;
      *&buf[12] = 1024;
      *&buf[14] = a2;
      *&buf[18] = 1024;
      *&buf[20] = v17;
      *v88 = 2048;
      *&v88[2] = v18;
      *&v88[10] = 2048;
      *&v88[12] = v19;
      *&v88[20] = 2048;
      *&v88[22] = v20;
      *&v88[30] = 2048;
      v89 = v21;
      v90 = 2048;
      v91 = v22;
      _os_log_impl(&dword_183AA6000, v16, OS_LOG_TYPE_INFO, "SILMgr::swap_region id:%llu region: %u indicator %u pos: [%f %f] opacity: %f rotation: %f glyph: %f", buf, 0x4Au);
    }

    if (a4)
    {
      *a4 = !CA::WindowServer::SILMgr::is_visibly_equal(a1, a2, a3);
    }

    if (a5 && v14 == 1)
    {
      *a5 = 1;
    }

    if (*(a3 + 12) > 0.0)
    {
      v23 = *a3;
      v80 = vcvt_s32_f32(vadd_f32(*(a3 + 4), 0x3F0000003F000000));
      v82 = v80;
      v25 = *(a1 + 288);
      v24 = *(a1 + 296);
      v26 = v25;
      if (v25 != v24)
      {
        while (*v26 != v23)
        {
          v26 += 32;
          if (v26 == v24)
          {
            goto LABEL_35;
          }
        }
      }

      if (v26 == v24)
      {
LABEL_35:
        v30 = (a1 + 296);
        v31 = *(a1 + 304);
        if (v24 >= v31)
        {
          v32 = v24 - v25;
          v33 = (v24 - v25) >> 5;
          v34 = v33 + 1;
          if ((v33 + 1) >> 59)
          {
            std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
          }

          v35 = v31 - v25;
          if (v35 >> 4 > v34)
          {
            v34 = v35 >> 4;
          }

          if (v35 >= 0x7FFFFFFFFFFFFFE0)
          {
            v36 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v36 = v34;
          }

          v86 = a1 + 288;
          if (v36)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,std::vector<CA::Vec2<int>>>>>(v36);
          }

          v37 = 32 * v33;
          v83 = 0;
          v84 = (32 * v33);
          v85 = (32 * v33);
          if (!v33)
          {
            if (v32 < 1)
            {
              if (v25 == v24)
              {
                v38 = 1;
              }

              else
              {
                v38 = v32 >> 4;
              }

              *&v88[8] = v86;
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,std::vector<CA::Vec2<int>>>>>(v38);
            }

            v37 -= ((v32 >> 1) + 16) & 0xFFFFFFFFFFFFFFE0;
            v84 = v37;
            *&v85 = v37;
          }

          *v37 = v23;
          *(v37 + 16) = 0;
          *(v37 + 24) = 0;
          *(v37 + 8) = 0;
          v26 = v84;
          v39 = (v85 + 32);
          *&v85 = v39;
          memcpy(v39, v24, *(a1 + 296) - v24);
          v40 = *(a1 + 288);
          *&v85 = &v39[*(a1 + 296) - v24];
          *(a1 + 296) = v24;
          v41 = v24 - v40;
          v42 = &v26[-(v24 - v40)];
          memcpy(v42, v40, v41);
          v43 = *(a1 + 288);
          *(a1 + 288) = v42;
          v44 = *(a1 + 304);
          *v30 = v85;
          *&v85 = v43;
          *(&v85 + 1) = v44;
          v83 = v43;
          v84 = v43;
          std::__split_buffer<std::pair<unsigned int,std::vector<CA::Vec2<int>>>>::~__split_buffer(&v83);
        }

        else
        {
          *v24 = v23;
          *(v24 + 2) = 0;
          *(v24 + 3) = 0;
          *(v24 + 1) = 0;
          v26 = v24;
          *v30 = v24 + 32;
        }
      }

      v46 = *(v26 + 1);
      v45 = *(v26 + 2);
      v47 = v45 - v46;
      if (v45 == v46)
      {
        v49 = *(v26 + 2);
      }

      else
      {
        v48 = v47 >> 3;
        v49 = *(v26 + 1);
        do
        {
          v50 = v48 >> 1;
          v51 = &v49[v48 >> 1];
          v53 = *v51;
          v52 = v51 + 1;
          v54 = vcgt_s32(v80, v53);
          if (vceq_s32(v53, v80).u8[0])
          {
            v55 = v54.i8[4];
          }

          else
          {
            v55 = v54.i8[0];
          }

          v48 += ~(v48 >> 1);
          if (v55)
          {
            v49 = v52;
          }

          else
          {
            v48 = v50;
          }
        }

        while (v48);
      }

      if (v45 == v49 || *v49 != *&v80)
      {
        v56 = *(v26 + 3);
        if (v45 >= v56)
        {
          v59 = (v47 >> 3) + 1;
          if (v59 >> 61)
          {
            std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
          }

          v60 = v56 - v46;
          v61 = (v56 - v46) >> 2;
          if (v61 > v59)
          {
            v59 = v61;
          }

          if (v60 >= 0x7FFFFFFFFFFFFFF8)
          {
            v62 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v62 = v59;
          }

          if (v62)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<CA::WindowServer::Display::Mode>>(v62);
          }

          v63 = v49 - v46;
          v64 = (v49 - v46) >> 3;
          v65 = (8 * v64);
          v66 = 8 * v64;
          if (!v64)
          {
            if (v63 < 1)
            {
              v69 = v63 >> 2;
              if (v49 == v46)
              {
                v70 = 1;
              }

              else
              {
                v70 = v69;
              }

              std::__allocate_at_least[abi:nn200100]<std::allocator<CA::WindowServer::Display::Mode>>(v70);
            }

            v65 = (v65 - (((v63 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
            v66 = v65;
          }

          *v65 = v82;
          v71 = v66 + 8;
          memcpy((v66 + 8), v49, *(v26 + 2) - v49);
          v72 = *(v26 + 1);
          v81 = (v71 + *(v26 + 2) - v49);
          *(v26 + 2) = v49;
          v73 = v49 - v72;
          v74 = v65 - (v49 - v72);
          memcpy(v74, v72, v73);
          v75 = *(v26 + 1);
          *(v26 + 1) = v74;
          *(v26 + 1) = v81;
          if (v75)
          {
            operator delete(v75);
          }
        }

        else if (v49 == v45)
        {
          *v45 = v82;
          *(v26 + 2) = v45 + 1;
        }

        else
        {
          v57 = &v49[1];
          if (v45 < 8)
          {
            v58 = *(v26 + 2);
          }

          else
          {
            *v45 = v45[-1];
            v58 = v45 + 1;
          }

          *(v26 + 2) = v58;
          if (v45 != v57)
          {
            memmove(&v49[1], v49, v45 - v57);
            v58 = *(v26 + 2);
          }

          v67 = v58 <= &v82 || v49 > &v82;
          v68 = 8;
          if (v67)
          {
            v68 = 0;
          }

          *v49 = *(&v82 + v68);
        }

        v76 = SILManagerIndicatorNameFromType();
        if (x_log_get_sil_telemetry(void)::once != -1)
        {
          dispatch_once(&x_log_get_sil_telemetry(void)::once, &__block_literal_global_4);
        }

        if (os_signpost_enabled(x_log_get_sil_telemetry(void)::log))
        {
          *buf = 136446722;
          *&buf[4] = v76;
          *&buf[12] = 1026;
          *&buf[14] = v82.i32[0];
          *&buf[18] = 1026;
          *&buf[20] = v82.i32[1];
          _os_signpost_emit_unreliably_with_name_impl();
        }
      }
    }

    *(a1 + 257) = 1;
    v77 = a1 + 28 * a2;
    v78 = *a3;
    *(v77 + 34) = *(a3 + 10);
    *(v77 + 24) = v78;
    *(a1 + 276) = *(a1 + 280);
    if (BYTE11(xmmword_1ED4E980C) == 1)
    {
      kdebug_trace();
    }
  }

  return v7;
}

void sub_183CB1268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<unsigned int,std::vector<CA::Vec2<int>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZL15_SILManagerSwapP10SILManagerPK18SILManagerSwapInfob_block_invoke(uint64_t a1)
{
  result = SILManagerSwap();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,std::vector<CA::Vec2<int>>>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::pair<unsigned int,std::vector<CA::Vec2<int>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 32;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL CA::WindowServer::SILMgr::needs_soft_boundary_update(CA::WindowServer::SILMgr *this, int a2)
{
  if (CADeviceSupportsHWGainMap::once != -1)
  {
    dispatch_once(&CADeviceSupportsHWGainMap::once, &__block_literal_global_86);
  }

  if ((CADeviceSupportsHWGainMap::supports_gain_map & 1) != 0 || *(this + 68) == a2)
  {
    return 0;
  }

  *(this + 68) = a2;
  SILManagerSoftBoundaryStrength();
  *(this + 70) = v5;
  return vabds_f32(*(this + 69), v5) > 0.01;
}

void std::vector<CGRect>::resize(uint64_t *a1, unint64_t a2)
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

        if (!(v10 >> 59))
        {
          operator new();
        }

        std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
      }

      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    bzero(a1[1], 32 * v6);
    v11 = v4 + 32 * v6;
  }

  a1[1] = v11;
}

void CA::OGL::GaussianBlurFilter::render(float a1, uint64_t a2, CA::Render::KeyValueArray **a3, uint64_t a4, void *a5, uint64_t *a6, float *a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v61 = *MEMORY[0x1E69E9840];
  if (CA::OGL::GaussianBlurFilter::render(CA::Render::Filter const*,CA::OGL::Layer const*,CA::OGL::Context &,float,CA::OGL::Surface **,float *,CA::OGL::Layer const*,BOOL,CA::ColorMatrix const*,CA::Shape const*,CA::Shape const*,float *,CA::OGL::Surface **)const::once != -1)
  {
    dispatch_once(&CA::OGL::GaussianBlurFilter::render(CA::Render::Filter const*,CA::OGL::Layer const*,CA::OGL::Context &,float,CA::OGL::Surface **,float *,CA::OGL::Layer const*,BOOL,CA::ColorMatrix const*,CA::Shape const*,CA::Shape const*,float *,CA::OGL::Surface **)const::once, &__block_literal_global_6016);
  }

  v20 = *a6;
  if (v20)
  {
    v21 = *a7;
    v58 = 0u;
    v60 = 0;
    v56 = 0u;
    v57 = 0u;
    HIDWORD(v58) = 15;
    v59 = 0uLL;
    v22 = *(a5[82] + 24);
    if ((*(v22 + 144) & 0x10) != 0)
    {
      v23 = vaddvq_f64(vmulq_f64(*v22, *v22));
      v24 = vaddvq_f64(vmulq_f64(*(v22 + 32), *(v22 + 32)));
      v25 = *(v22 + 120);
      if (v25 != 1.0)
      {
        v26 = 1.0 / (v25 * v25);
        v23 = v26 * v23;
        v24 = v26 * v24;
      }

      v27 = v23 != 1.0;
      if (v24 != 1.0)
      {
        v27 = 1;
      }

      v28 = sqrt(v23);
      v29 = sqrt(v24);
      if (v27)
      {
        v24 = v29;
        v23 = v28;
      }

      v50 = v24;
      v51 = v23;
    }

    else
    {
      v51 = *(v22 + 128);
      v50 = v51;
    }

    float_key = CA::Render::KeyValueArray::get_float_key(a3[5], 400, 0.0);
    v31.f64[0] = v51;
    v31.f64[1] = v50;
    v55 = vmul_n_f32(vcvt_f32_f64(v31), v21 * float_key);
    *&v53[0].top = 0u;
    v54 = 0u;
    if (CA::OGL::GaussianBlurFilter::get_bounds(v32, a3, *(a4 + 24), v53))
    {
      CA::Rect::apply_transform(v53, v22, v33);
      *&v57 = v53;
    }

    v34 = a3[5];
    if (v34 && (v35 = *(v34 + 4), v35))
    {
      v36 = 0;
      while (1)
      {
        v37 = *(v34 + v36 + 3);
        if (*(v37 + 16) == 399)
        {
          break;
        }

        if (v35 == ++v36)
        {
          goto LABEL_46;
        }
      }

      if ((v36 & 0x80000000) != 0)
      {
        goto LABEL_46;
      }

      v38 = *(v37 + 24);
      if (!v38)
      {
        goto LABEL_47;
      }

      if (*(v38 + 12) != 54)
      {
LABEL_46:
        LOBYTE(v38) = 0;
        goto LABEL_47;
      }

      if (!strcmp((v38 + 28), "low"))
      {
        LOBYTE(v38) = 2;
      }

      else
      {
        if (strcmp((v38 + 28), "high"))
        {
          goto LABEL_46;
        }

        LOBYTE(v38) = 4;
      }

      LOBYTE(v60) = v38;
LABEL_47:
      v46 = 0;
      while (1)
      {
        v47 = *(v34 + v46 + 3);
        if (*(v47 + 16) == 388)
        {
          break;
        }

        if (v35 == ++v46)
        {
          goto LABEL_22;
        }
      }

      if ((v46 & 0x80000000) == 0)
      {
        v48 = *(v47 + 24);
        if (v48)
        {
          if (*(v48 + 12) == 54)
          {
            if (!strcmp((v48 + 28), "medium"))
            {
              v49 = 31;
              v39 = 31;
              goto LABEL_61;
            }

            if (!strcmp((v48 + 28), "high"))
            {
              v39 = 63;
              v49 = 47;
LABEL_61:
              HIDWORD(v58) = v49;
LABEL_23:
              if ((*(*(a4 + 16) + 25) & 4) != 0 || (*(a4 + 36) & 0x20) != 0)
              {
                HIDWORD(v58) = v39;
              }

              *(&v57 + 1) = a11;
              *&v58 = a12;
              v40 = v38 | a9;
              *(&v56 + 1) = a10;
              if ((*(*a5 + 232))(a5, 24))
              {
                v41 = a3[5];
                if (CA::OGL::GaussianBlurFilter::render(CA::Render::Filter const*,CA::OGL::Layer const*,CA::OGL::Context &,float,CA::OGL::Surface **,float *,CA::OGL::Layer const*,BOOL,CA::ColorMatrix const*,CA::Shape const*,CA::Shape const*,float *,CA::OGL::Surface **)const::all_linear)
                {
                  v42 = 8;
                }

                else
                {
                  v42 = 8 * (CA::Render::KeyValueArray::get_int_key(a3[5], 389, 0) != 0);
                }
              }

              else
              {
                v42 = 0;
                v41 = a3[5];
              }

              LOBYTE(v60) = v40 | v42 | (16 * (CA::Render::KeyValueArray::get_int_key(v41, 366, 0) != 0));
              if (CA::Render::KeyValueArray::get_int_key(v41, 385, 0) || CA::Render::KeyValueArray::get_rect_key(v41, &v52))
              {
                DWORD2(v58) = 1;
              }

              if (CA::Render::KeyValueArray::get_int_key(v41, 392, 0))
              {
                DWORD2(v58) = 2;
              }

              v43 = a5[2];
              v44 = *(v43 + 16) & 0xFFFFFF00FF00FF00;
              if (*(v43 + 8) == 0x3C003C003C003C00)
              {
                v45 = 1;
              }

              else
              {
                v45 = 3;
              }

              *(v43 + 16) = v45 | v44;
              *(v43 + 20) = HIDWORD(v44);
              (*(*a5 + 928))(a5, v20, &v55, a13, a1, v21);
              *(a5[2] + 16) = 0;
              return;
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(v38) = 0;
    }

LABEL_22:
    v39 = 31;
    goto LABEL_23;
  }
}

uint64_t ___ZNK2CA3OGL18GaussianBlurFilter6renderEPKNS_6Render6FilterEPKNS0_5LayerERNS0_7ContextEfPPNS0_7SurfaceEPfS8_bPKNS_11ColorMatrixEPKNS_5ShapeESK_SE_SD__block_invoke()
{
  result = CFPreferencesGetAppBooleanValue(@"CALinearBlurs", *MEMORY[0x1E695E8A8], 0);
  CA::OGL::GaussianBlurFilter::render(CA::Render::Filter const*,CA::OGL::Layer const*,CA::OGL::Context &,float,CA::OGL::Surface **,float *,CA::OGL::Layer const*,BOOL,CA::ColorMatrix const*,CA::Shape const*,CA::Shape const*,float *,CA::OGL::Surface **)const::all_linear = result != 0;
  return result;
}

void CA::OGL::VariableBlurFilter::render(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v92 = *MEMORY[0x1E69E9840];
  v14 = *a6;
  if (*a6)
  {
    v21 = *a7;
    v22 = *(a3 + 40);
    if (!v22)
    {
      goto LABEL_11;
    }

    v23 = *(v22 + 16);
    if (!v23)
    {
      goto LABEL_11;
    }

    v24 = 0;
    v25 = v22 + 24;
    while (1)
    {
      v26 = *(v25 + 8 * v24);
      if (*(v26 + 16) == 390)
      {
        break;
      }

      if (v23 == ++v24)
      {
        goto LABEL_11;
      }
    }

    if ((v24 & 0x80000000) != 0 || (v27 = *(v26 + 24)) == 0 || (v28 = (*(*v27 + 80))(v27)) == 0)
    {
LABEL_11:
      if (!a6[1])
      {
        return;
      }

      v28 = 0;
    }

    v88 = 0u;
    v90 = 0;
    v91 = 0;
    v87 = 0u;
    v86 = 0u;
    HIDWORD(v88) = 15;
    v89 = 0;
    v29 = *(*(a5 + 656) + 24);
    if ((*(v29 + 144) & 0x10) != 0)
    {
      v30 = vaddvq_f64(vmulq_f64(*v29, *v29));
      v31 = vaddvq_f64(vmulq_f64(*(v29 + 32), *(v29 + 32)));
      v32 = *(v29 + 120);
      if (v32 != 1.0)
      {
        v33 = 1.0 / (v32 * v32);
        v30 = v33 * v30;
        v31 = v33 * v31;
      }

      v34 = v30 != 1.0;
      if (v31 != 1.0)
      {
        v34 = 1;
      }

      v35 = sqrt(v30);
      v36 = sqrt(v31);
      if (v34)
      {
        v31 = v36;
        v30 = v35;
      }

      v66 = v31;
      v67 = v30;
    }

    else
    {
      v67 = *(v29 + 128);
      v66 = v67;
    }

    float_key = CA::Render::KeyValueArray::get_float_key(*(a3 + 40), 400, 0.0);
    v38.f64[0] = v67;
    v38.f64[1] = v66;
    v85 = vmul_n_f32(vcvt_f32_f64(v38), v21 * float_key);
    memset(v84, 0, sizeof(v84));
    CA::OGL::VariableBlurFilter::get_bounds(v39, v40, *(a4 + 24), v84);
    CA::Rect::apply_transform(v84, v29, v41);
    *&v87 = v84;
    *(&v87 + 1) = a11;
    v42 = *(a3 + 40);
    v43 = CA::Render::KeyValueArray::get_int_key(v42, 366, 0) != 0;
    DWORD2(v88) = 0;
    DWORD2(v88) = 2 * (CA::Render::KeyValueArray::get_int_key(v42, 392, 0) != 0);
    LOBYTE(v91) = (32 * (CA::Render::KeyValueArray::get_int_key(v42, 379, 0) != 0)) | (16 * v43);
    v45 = *v29;
    v46 = *(v29 + 16);
    v47 = *(v29 + 32);
    v48 = *(v29 + 48);
    v50 = *(v29 + 64);
    v49 = *(v29 + 80);
    v51 = *(v29 + 96);
    v52 = *(v29 + 112);
    v82 = v51;
    v83 = v52;
    v54 = *(a4 + 16);
    v53 = *(a4 + 24);
    v55 = *(v53 + 88);
    v56 = *(v53 + 96);
    v57 = vmulq_n_f64(v45, v55);
    v58 = vmulq_n_f64(v46, v55);
    v59 = vmulq_n_f64(v47, v56);
    v60 = vmulq_n_f64(v48, v56);
    v76 = v57;
    v77 = v58;
    v78 = v59;
    v79 = v60;
    v80 = v50;
    v81 = v49;
    if (((*(a5 + 872) & 2) == 0) != (*(v54 + 24) & 1))
    {
      v82 = vmlaq_f64(vaddq_f64(vmlaq_f64(v51, 0, v57), v59), 0, v50);
      v83 = vmlaq_f64(vaddq_f64(vmlaq_f64(v52, 0, v58), v60), 0, v49);
      v77 = v58;
      v78 = vnegq_f64(v59);
      v79 = vnegq_f64(v60);
      v81 = v49;
    }

    v74 = 0uLL;
    v75 = 0uLL;
    v72 = 0uLL;
    v73 = 0uLL;
    v70 = 0uLL;
    v71 = 0uLL;
    v68 = 0uLL;
    v69 = 0uLL;
    CA::Mat4Impl::mat4_invert(&v68, &v76, v44);
    v61 = (1.0 / v21);
    v62 = vmulq_n_f64(v69, v61);
    v68 = vmulq_n_f64(v68, v61);
    v69 = v62;
    v70 = vmulq_n_f64(v70, v61);
    v71 = vmulq_n_f64(v71, v61);
    v63 = *(a5 + 16);
    v64 = *(v63 + 16) & 0xFFFFFF00FF00FF00;
    if (*(v63 + 8) == 0x3C003C003C003C00)
    {
      v65 = 1;
    }

    else
    {
      v65 = 3;
    }

    *(v63 + 16) = v65 | v64;
    *(v63 + 20) = HIDWORD(v64);
    v62.n128_u32[0] = *(a7 + 4);
    (*(*a5 + 936))(a5, v14, a6[1], v28, &v68, &v85, a13, a14, a1, v21, v62);
    *(*(a5 + 16) + 16) = 0;
  }
}

uint64_t CA::OGL::VariableBlurFilter::opaque_shape(CA::OGL::VariableBlurFilter *this, const CA::Render::Filter *a2, const CA::Render::Layer *a3, CA::Rect *a4)
{
  v6 = *(a2 + 5);
  result = CA::Render::KeyValueArray::get_int_key(v6, 379, 0);
  if (result)
  {
    *a4 = 0u;
    *(a4 + 1) = 0u;
  }

  else
  {
    if (!CA::Render::KeyValueArray::get_int_key(v6, 392, 0))
    {
      float_key = CA::Render::KeyValueArray::get_float_key(v6, 400, 0.0);
      v10 = *(a4 + 2);
      v9 = *(a4 + 3);
      v11 = v10 <= v9 ? *(a4 + 3) : *(a4 + 2);
      if (v11 < 1.79769313e308)
      {
        v12 = v10 >= v9 ? *(a4 + 3) : *(a4 + 2);
        if (v12 > 0.0)
        {
          *a4 = vaddq_f64(*a4, vdupq_lane_s64(COERCE__INT64(float_key * 5.5999999), 0));
          v13 = float_key * -11.1999998;
          v14 = v13 + v10;
          v15 = v13 + v9;
          *(a4 + 2) = v14;
          *(a4 + 3) = v15;
          if (v14 <= 0.0 || v15 <= 0.0)
          {
            *(a4 + 2) = 0;
            *(a4 + 3) = 0;
          }
        }
      }
    }

    v16 = *(a3 + 72);
    v17 = *(a3 + 88);

    return CA::BoundsImpl::intersect(a4, v16, v17);
  }

  return result;
}

uint64_t CA::OGL::LanczosResizeFilter::render(float a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, float *a7)
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = *a6;
  if (*a6)
  {
    v11 = *(a3 + 40);
    float_key = CA::Render::KeyValueArray::get_float_key(v11, 327, 1.0);
    v13 = CA::Render::KeyValueArray::get_float_key(v11, 416, 1.0);
    v14 = *a7;
    v39 = 0;
    v15 = *(a5[82] + 24);
    v16 = *(v15 + 16);
    v17 = *(v15 + 32);
    v18 = *(v15 + 48);
    v33[0] = *v15;
    v33[1] = v16;
    v33[2] = v17;
    v33[3] = v18;
    v19 = *(v15 + 80);
    v20 = *(v15 + 96);
    v21 = *(v15 + 112);
    v22 = v13 * (a1 / v14);
    v34 = *(v15 + 64);
    v35 = v19;
    v36 = v20;
    v37 = v21;
    v38 = *(v15 + 128);
    LOBYTE(v39) = *(v15 + 144) & 0x1F;
    v31[0] = v33[0];
    v31[1] = v16;
    v31[2] = v17;
    v31[3] = v18;
    v31[4] = v34;
    v31[5] = v19;
    v31[6] = v20;
    v31[7] = v21;
    v31[8] = v38;
    v32 = v39;
    CA::Transform::invert(v31, v23, v24);
    v25 = float_key * v22;
    v26.f64[0] = v25;
    CA::Transform::scale(v33, v26, v22, 1.0);
    CA::Transform::concat_left(v33, v31, v27, v28);
    *v30 = v25;
    *&v30[1] = v22;
    return (*(*a5 + 952))(a5, v7, v30, v33, 1, 0.0);
  }

  return result;
}

double CA::OGL::LanczosResizeFilter::ROI(CA::OGL::LanczosResizeFilter *this, const CA::Render::Filter *a2, const CA::Render::Layer *a3, CA::Rect *a4)
{
  v5 = *(a2 + 5);
  float_key = CA::Render::KeyValueArray::get_float_key(v5, 416, 1.0);
  v7 = 1.0 / (CA::Render::KeyValueArray::get_float_key(v5, 327, 1.0) * float_key);

  return CA::BoundsImpl::scale(a4, v7, 1.0 / float_key);
}

double CA::OGL::LanczosResizeFilter::opaque_shape(CA::OGL::LanczosResizeFilter *this, const CA::Render::Filter *a2, const CA::Render::Layer *a3, CA::Rect *a4)
{
  v5 = *(a2 + 5);
  float_key = CA::Render::KeyValueArray::get_float_key(v5, 416, 1.0);
  v7 = CA::Render::KeyValueArray::get_float_key(v5, 327, 1.0) * float_key;

  return CA::BoundsImpl::scale(a4, v7, float_key);
}

double CA::OGL::LanczosResizeFilter::DOD(CA::OGL::LanczosResizeFilter *this, const CA::Render::Filter *a2, const CA::Render::Layer *a3, CA::Rect *a4)
{
  v5 = *(a2 + 5);
  float_key = CA::Render::KeyValueArray::get_float_key(v5, 416, 1.0);
  v7 = CA::Render::KeyValueArray::get_float_key(v5, 327, 1.0) * float_key;

  return CA::BoundsImpl::scale(a4, v7, float_key);
}

BOOL CA::OGL::LanczosResizeFilter::identity(CA::OGL::LanczosResizeFilter *this, const CA::Render::Filter *a2)
{
  v2 = *(a2 + 5);
  float_key = CA::Render::KeyValueArray::get_float_key(v2, 416, 1.0);
  v4 = CA::Render::KeyValueArray::get_float_key(v2, 327, 1.0);
  v5 = fabs(float_key + -1.0) < 0.0001;
  return fabs(v4 + -1.0) < 0.0001 && v5;
}

void CA::OGL::ChromaticAberrationFilter::render(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, float *a7)
{
  v85 = *MEMORY[0x1E69E9840];
  v7 = *a6;
  if (*a6)
  {
    v10 = *a7;
    v11 = *(a3 + 40);
    v80 = 0;
    v81 = 0;
    vec2_key = CA::Render::KeyValueArray::get_vec2_key(v11, 401, &v80);
    v76 = v12;
    v80 = 0;
    v81 = 0;
    v69 = CA::Render::KeyValueArray::get_vec2_key(v11, 382, &v80);
    v72 = v13;
    v80 = 0;
    v81 = 0;
    v18.f64[0] = CA::Render::KeyValueArray::get_vec2_key(v11, 344, &v80);
    *v15.i64 = vec2_key;
    v15.i64[1] = v76;
    v16.f64[0] = v69;
    v16.f64[1] = v72;
    v18.f64[1] = v17;
    v19 = *(*(a5 + 656) + 24);
    if ((*(v19 + 144) & 0x10) != 0)
    {
      v21 = vaddvq_f64(vmulq_f64(*v19, *v19));
      v22 = vaddvq_f64(vmulq_f64(*(v19 + 32), *(v19 + 32)));
      v23 = *(v19 + 120);
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
        *v14.i64 = v27;
      }

      else
      {
        *v14.i64 = v22;
      }

      if (v25)
      {
        v20.f64[0] = v26;
      }

      else
      {
        v20.f64[0] = v21;
      }
    }

    else
    {
      v20.f64[0] = *(v19 + 128);
      v14.i64[0] = *&v20.f64[0];
    }

    v28 = vcvt_f32_f64(v15);
    v29 = vcvt_f32_f64(v16);
    v30 = vcvt_f32_f64(v18);
    *&v20.f64[1] = v14.i64[0];
    *&v20.f64[0] = vcvt_f32_f64(vmulq_n_f64(v20, v10));
    v32 = a1 / v10;
    v33 = v32;
    v34 = *(v7 + 56);
    v35 = *(v7 + 60);
    if (v34 <= v35)
    {
      v36 = *(v7 + 60);
    }

    else
    {
      v36 = *(v7 + 56);
    }

    v14.i32[0] = 1073741822;
    v15.i32[0] = v36;
    v37 = vdupq_lane_s32(*&vcgtq_s32(v15, v14), 0);
    v39 = *(v7 + 40);
    v38 = *(v7 + 48);
    v40.i64[0] = v38;
    v40.i64[1] = SHIDWORD(v38);
    v41 = vbslq_s8(v37, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v40));
    v42 = v34;
    v43 = v35;
    if (v36 > 1073741822)
    {
      v42 = 1.79769313e308;
      v43 = 1.79769313e308;
    }

    v78 = v41;
    v79.f64[0] = v42;
    v79.f64[1] = v43;
    if (v32 != 1.0 && v42 < 1.79769313e308)
    {
      v78.f64[0] = v33 * *v41.i64;
      v79.f64[0] = v42 * v33;
    }

    *v45.f32 = vmul_f32(*&v20.f64[0], v28);
    v46 = vmul_f32(*&v20.f64[0], v29);
    v47 = vmul_f32(*&v20.f64[0], v30);
    v48 = vcvt_f32_s32(v39);
    if (v32 != 1.0 && v43 < 1.79769313e308)
    {
      v78.f64[1] = *&v41.i64[1] * v33;
      v79.f64[1] = v43 * v33;
    }

    v50 = vminnm_f32(*v45.f32, vminnm_f32(v46, vminnm_f32(v47, 0)));
    *v51.f32 = vneg_f32(v48);
    v52 = vdiv_f32(v47, *v51.f32);
    *&v45.u32[2] = v46;
    v51.i64[1] = v51.i64[0];
    v77 = vaddq_f64(v78, vcvtq_f64_f32(v50));
    v78 = v77;
    v79 = vaddq_f64(v79, vcvtq_f64_f32(vadd_f32(vmaxnm_f32(*v45.f32, vmaxnm_f32(v46, vmaxnm_f32(v47, 0))), vabs_f32(v50))));
    v73 = vdivq_f32(v45, v51);
    v75 = v79;
    v53 = vdiv_f32(0x3F0000003F000000, v48);
    v54 = vcvtq_f64_f32(v48);
    v55 = *(v7 + 56);
    v56.i64[0] = v55;
    v56.i64[1] = SHIDWORD(v55);
    __asm { FMOV            V2.2D, #-0.5 }

    v70 = vcvt_hight_f32_f64(v53, vdivq_f64(vaddq_f64(vcvtq_f64_s64(v56), _Q2), v54));
    int_key = CA::Render::KeyValueArray::get_int_key(v11, 373, 0);
    v62.i32[0] = 0;
    v63.i32[0] = int_key;
    v64 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v63, v62), 0), v70, xmmword_183E21270);
    v65 = 1.0 / v32;
    if (*(a5 + 672) == v7)
    {
      *(*(a5 + 16) + 17) = 42;
    }

    else
    {
      v71 = v64;
      CA::OGL::Context::bind_surface(a5, v7, 0, 0, 0, 0.0);
      v64 = v71;
    }

    *(*(a5 + 16) + 16) = 42;
    *(a5 + 160) = v73;
    *(a5 + 176) = v52;
    *(a5 + 240) = v64;
    v80 = &v78;
    v81 = &CA::identity_transform;
    v82 = 0u;
    v83 = 0u;
    v66 = *(v7 + 48);
    v67.i64[0] = v66;
    v67.i64[1] = SHIDWORD(v66);
    v68 = vnegq_f64(vcvtq_f64_s64(v67));
    v84 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(v68, v77, v65)), vmlaq_n_f64(v68, vaddq_f64(v75, v77), v65));
    CA::OGL::emit_one_part_rect(a5, &v80, &v84, 0, 0);
    if (*(a5 + 672) != v7)
    {
      CA::OGL::Context::unbind_surface(a5, v7, 0);
    }

    *(*(a5 + 16) + 16) = 0;
    *(*(a5 + 16) + 19) = 0;
  }
}

void CA::OGL::ChromaticAberrationFilter::ROI(CA::OGL::ChromaticAberrationFilter *this, const CA::Render::Filter *a2, const CA::Render::Layer *a3, float64x2_t *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 5);
  v30 = 0;
  v31 = 0;
  vec2_key = CA::Render::KeyValueArray::get_vec2_key(v5, 401, &v30);
  v28 = v7;
  v29 = vec2_key;
  v30 = 0;
  v31 = 0;
  v8 = CA::Render::KeyValueArray::get_vec2_key(v5, 382, &v30);
  v26 = v9;
  v27 = v8;
  v30 = 0;
  v31 = 0;
  v10.f64[0] = CA::Render::KeyValueArray::get_vec2_key(v5, 344, &v30);
  v11.f64[0] = v29;
  v11.f64[1] = v28;
  v12.f64[0] = v27;
  v12.f64[1] = v26;
  *&v11.f64[0] = vcvt_f32_f64(v11);
  *&v12.f64[0] = vcvt_f32_f64(v12);
  v10.f64[1] = v13;
  *&v10.f64[0] = vcvt_f32_f64(v10);
  v14 = vminnm_f32(*&v11.f64[0], vminnm_f32(*&v12.f64[0], vminnm_f32(*&v10.f64[0], 0)));
  v15 = vmaxnm_f32(*&v11.f64[0], vmaxnm_f32(*&v12.f64[0], vmaxnm_f32(*&v10.f64[0], 0)));
  v16 = vsubq_f64(*a4, vcvtq_f64_f32(v15));
  v17 = a4[1];
  *a4 = v16;
  v18 = vaddq_f64(v17, vcvtq_f64_f32(vadd_f32(v15, vabs_f32(v14))));
  a4[1] = v18;
  if (v18.f64[0] <= v18.f64[1])
  {
    v19 = v18.f64[1];
  }

  else
  {
    v19 = v18.f64[0];
  }

  if (v19 < 1.79769313e308)
  {
    if (v18.f64[0] >= v18.f64[1])
    {
      v20 = v18.f64[1];
    }

    else
    {
      v20 = v18.f64[0];
    }

    if (v20 > 0.0)
    {
      __asm { FMOV            V3.2D, #-1.0 }

      *a4 = vaddq_f64(v16, _Q3);
      v18.f64[0] = v18.f64[0] + 2.0;
      a4[1].f64[0] = v18.f64[0];
      a4[1].f64[1] = v18.f64[1] + 2.0;
      if (v18.f64[0] <= 0.0 || v18.f64[1] + 2.0 <= 0.0)
      {
        a4[1].f64[0] = 0.0;
        a4[1].f64[1] = 0.0;
      }
    }
  }
}

void CA::OGL::ChromaticAberrationFilter::opaque_shape(CA::OGL::ChromaticAberrationFilter *this, const CA::Render::Filter *a2, const CA::Render::Layer *a3, float64x2_t *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 5);
  v43 = 0;
  v44 = 0;
  vec2_key = CA::Render::KeyValueArray::get_vec2_key(v5, 401, &v43);
  v41 = v7;
  v42 = vec2_key;
  v43 = 0;
  v44 = 0;
  v8 = CA::Render::KeyValueArray::get_vec2_key(v5, 382, &v43);
  v39 = v9;
  v40 = v8;
  v43 = 0;
  v44 = 0;
  v10.f64[0] = CA::Render::KeyValueArray::get_vec2_key(v5, 344, &v43);
  v12.f64[0] = v42;
  v12.f64[1] = v41;
  v14 = *a4;
  v13 = a4[1];
  v15 = vaddq_f64(*a4, vcvtq_f64_f32(vcvt_f32_f64(v12)));
  v16 = vclezq_f64(v13);
  v17 = vorrq_s8(vdupq_laneq_s64(v16, 1), v16).u64[0];
  if ((v17 & 0x8000000000000000) != 0)
  {
    v27 = a4[1];
  }

  else
  {
    v18.f64[0] = v40;
    v18.f64[1] = v39;
    v19 = vaddq_f64(v14, vcvtq_f64_f32(vcvt_f32_f64(v18)));
    v20 = vaddq_f64(v19, v13);
    v21 = vmaxnmq_f64(v15, v19);
    v22 = vsubq_f64(vminnmq_f64(vaddq_f64(v15, v13), v20), v21);
    v23 = vclezq_f64(v22);
    v24 = vdupq_laneq_s64(v23, 1);
    v25 = vorrq_s8(v24, v23);
    v24.i64[0] = -1;
    v26 = vdupq_lane_s64(vcgtq_s64(v25, v24).i64[0], 0);
    v15 = vbslq_s8(v26, v21, v15);
    v27 = vandq_s8(v22, v26);
  }

  v28 = vclezq_f64(v27);
  v29 = vorrq_s8(vdupq_laneq_s64(v28, 1), v28);
  if (((v29.i64[0] | v17) & 0x8000000000000000) != 0)
  {
    v10.f64[0] = 0.0;
    v38 = vandq_s8(v27, vdupq_lane_s64(vcgtq_s64(v10, v29).i64[0], 0));
  }

  else
  {
    v10.f64[1] = v11;
    v30 = vaddq_f64(v14, vcvtq_f64_f32(vcvt_f32_f64(v10)));
    v31 = vaddq_f64(v30, v13);
    v32 = vmaxnmq_f64(v15, v30);
    v33 = vsubq_f64(vminnmq_f64(vaddq_f64(v15, v27), v31), v32);
    v34 = vclezq_f64(v33);
    v35 = vdupq_laneq_s64(v34, 1);
    v36 = vorrq_s8(v35, v34);
    v35.i64[0] = -1;
    v37 = vdupq_lane_s64(vcgtq_s64(v36, v35).i64[0], 0);
    v15 = vbslq_s8(v37, v32, v15);
    v38 = vandq_s8(v33, v37);
  }

  *a4 = v15;
  a4[1] = v38;
}

float64x2_t CA::OGL::ChromaticAberrationFilter::DOD(CA::OGL::ChromaticAberrationFilter *this, const CA::Render::Filter *a2, const CA::Render::Layer *a3, float64x2_t *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 5);
  v20 = 0;
  v21 = 0;
  vec2_key = CA::Render::KeyValueArray::get_vec2_key(v5, 401, &v20);
  v18 = v7;
  v19 = vec2_key;
  v20 = 0;
  v21 = 0;
  v8 = CA::Render::KeyValueArray::get_vec2_key(v5, 382, &v20);
  v16 = v9;
  v17 = v8;
  v20 = 0;
  v21 = 0;
  v10.f64[0] = CA::Render::KeyValueArray::get_vec2_key(v5, 344, &v20);
  v11.f64[0] = v19;
  v11.f64[1] = v18;
  *&v11.f64[0] = vcvt_f32_f64(v11);
  v12.f64[0] = v17;
  v12.f64[1] = v16;
  *&v12.f64[0] = vcvt_f32_f64(v12);
  v10.f64[1] = v13;
  *&v10.f64[0] = vcvt_f32_f64(v10);
  v14 = vminnm_f32(*&v11.f64[0], vminnm_f32(*&v12.f64[0], vminnm_f32(*&v10.f64[0], 0)));
  result = vaddq_f64(a4[1], vcvtq_f64_f32(vadd_f32(vmaxnm_f32(*&v11.f64[0], vmaxnm_f32(*&v12.f64[0], vmaxnm_f32(*&v10.f64[0], 0))), vabs_f32(v14))));
  *a4 = vaddq_f64(*a4, vcvtq_f64_f32(v14));
  a4[1] = result;
  return result;
}

BOOL CA::OGL::ChromaticAberrationFilter::identity(CA::OGL::ChromaticAberrationFilter *this, const CA::Render::Filter *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 5);
  v13 = 0;
  v14 = 0;
  vec2_key = CA::Render::KeyValueArray::get_vec2_key(v2, 401, &v13);
  v5 = v4;
  v13 = 0;
  v14 = 0;
  v6 = CA::Render::KeyValueArray::get_vec2_key(v2, 382, &v13);
  v8 = v7;
  v13 = 0;
  v14 = 0;
  v9 = CA::Render::KeyValueArray::get_vec2_key(v2, 344, &v13);
  v11 = vec2_key == 0.0;
  if (v5 != 0.0)
  {
    v11 = 0;
  }

  if (v6 != 0.0)
  {
    v11 = 0;
  }

  if (v8 != 0.0)
  {
    v11 = 0;
  }

  if (v9 != 0.0)
  {
    v11 = 0;
  }

  return v10 == 0.0 && v11;
}

double CA::OGL::GlassBackgroundFilter::max_range(CA::OGL::GlassBackgroundFilter *this, const CA::Render::Filter *a2)
{
  v3 = fabs(CA::Render::KeyValueArray::get_float_key(this, 333, 0.0));
  v4 = fabs(CA::Render::KeyValueArray::get_float_key(this, 386, 0.0));
  v5 = fabs(CA::Render::KeyValueArray::get_float_key(this, 395, 0.0));
  return fmax(fmax(fmax(v3, v4), v5), fabs(CA::Render::KeyValueArray::get_float_key(this, 417, 0.0)));
}

double CA::OGL::gaussian_expansion_factor(CA::OGL *this, double a2)
{
  if (byte_1ED4E98BD)
  {
    return 2.8;
  }

  if (a2 >= 0.505)
  {
    return a2 * 0.101010101 + 1.5989899;
  }

  v2 = 0.0;
  if (a2 > 0.005)
  {
    v3 = a2 + -0.005;
    if (v3 < 0.0)
    {
      v3 = 0.0;
    }

    v4 = log(v3 + v3);
    v5 = *&v4 & 0x7FFFFFFFFFFFFFFFLL;
    if (v4 * 0.3 + 1.65 >= 0.0)
    {
      v6 = v4 * 0.3 + 1.65;
    }

    else
    {
      v6 = 0.0;
    }

    if (v5 >= 0x7FF0000000000000)
    {
      return 0.0;
    }

    else
    {
      return v6;
    }
  }

  return v2;
}

void CA::OGL::GlassBackgroundFilter::render(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v323 = *MEMORY[0x1E69E9840];
  v8 = *a6;
  if (!*a6)
  {
    return;
  }

  v9 = a6[1];
  if (!(a8 | v9))
  {
    return;
  }

  if (a8)
  {
    v11 = *(a8 + 200);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(*(a5 + 656) + 24);
  if ((*(v12 + 144) & 0x10) != 0)
  {
    v15 = vaddvq_f64(vmulq_f64(*v12, *v12));
    v14 = vaddvq_f64(vmulq_f64(*(v12 + 32), *(v12 + 32)));
    v16 = *(v12 + 120);
    if (v16 != 1.0)
    {
      v17 = 1.0 / (v16 * v16);
      v15 = v17 * v15;
      v14 = v17 * v14;
    }

    v18 = v15 != 1.0;
    if (v14 != 1.0)
    {
      v18 = 1;
    }

    v19 = sqrt(v15);
    v20 = sqrt(v14);
    if (v18)
    {
      v14 = v20;
      v13 = v19;
    }

    else
    {
      v13 = v15;
    }
  }

  else
  {
    v13 = *(v12 + 128);
    v14 = v13;
  }

  v21 = *(a3 + 40);
  if (v13 <= v14)
  {
    v22 = v14;
  }

  else
  {
    v22 = v13;
  }

  v23 = *(a5 + 624);
  if (v23)
  {
    v24 = *(v23 + 404);
  }

  else
  {
    v24 = 1.0;
  }

  LODWORD(v13) = *a7;
  v25 = *(a7 + 4);
  v304 = *&v13;
  if (*(a5 + 672) == v8)
  {
    *(*(a5 + 16) + 17) = 42;
  }

  else
  {
    CA::OGL::Context::bind_surface(a5, v8, 0, 0, 0, 0.0);
  }

  v26 = *(*(a5 + 656) + 24);
  v27.f64[0] = *v26;
  v28.f64[0] = v26[1];
  v29 = *(v8 + 40);
  v28.f64[1] = v26[5];
  v298 = v28;
  v27.f64[1] = v26[4];
  v307 = vcvt_f32_f64(v27);
  v27.f64[0] = *v12;
  v28.f64[0] = *(v12 + 32);
  v28.f64[1] = *(v12 + 8);
  v30 = vcvt_f32_f64(v28);
  v27.f64[1] = *(v12 + 40);
  v31 = vcvt_f32_f64(v27);
  v315[0] = xmmword_183E210C0;
  v32.f64[0] = CA::Render::KeyValueArray::get_vec2_key(v21, 427, v315);
  v209 = v30;
  if (!v11)
  {
    v33.f64[1] = v32.f64[0];
    v48 = vdiv_f32(vmul_n_f32(vcvt_f32_f64(vmlaq_f64(vmulq_f64(vextq_s8(v33, v33, 8uLL), vcvtq_f64_f32(v31)), vcvtq_f64_f32(v30), v33)), -v25), vcvt_f32_s32(*(v9 + 40)));
    goto LABEL_28;
  }

  v32.f64[1] = v33.f64[0];
  *&v32.f64[0] = vcvt_f32_f64(v32);
  v35.f64[0] = v11[33];
  v36.f64[0] = v11[34];
  v37 = vcvt_f32_f64(*v12);
  v38 = vcvt_f32_f64(*(v12 + 32));
  v35.f64[1] = v11[30];
  v36.f64[1] = v11[29];
  v39 = vcvt_f32_f64(v35);
  v40 = vcvt_f32_f64(v36);
  *v41.f32 = v37;
  *&v41.u32[2] = v38;
  v42 = vzip2_s32(v40, v39);
  *v43.f32 = v42;
  v43.i64[1] = __PAIR64__(v40.u32[0], v39.u32[0]);
  v44 = vneg_f32(*&v32.f64[0]);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(v41, v43)))))
  {
    v45 = vmul_f32(vzip1_s32(v40, v39), v42);
    v45.f32[0] = 1.0 / vsub_f32(v45, vdup_lane_s32(v45, 1)).f32[0];
    v46 = vmul_n_f32(v39, v45.f32[0]);
    v47 = vmul_n_f32(v40, v45.f32[0]);
    v48 = vmla_lane_f32(vmul_n_f32(vmla_f32(vneg_f32(vmul_f32(v47, v37)), vrev64_s32(v37), v46), *v32.f64), vmla_f32(vneg_f32(vmul_f32(v46, vrev64_s32(v38))), v38, v47), v44, 1);
LABEL_28:
    v287 = v48;
    goto LABEL_30;
  }

  v287 = v44;
LABEL_30:
  v49 = vcvt_f32_s32(v29);
  v50 = vdup_lane_s32(v304, 0);
  v51 = v22 * *v304.i32;
  v322 = 0uLL;
  CA::Render::KeyValueArray::get_float_color_key(v21, 375, &v322);
  memset(v315, 0, sizeof(v315));
  float_key = CA::Render::KeyValueArray::get_float_key(v21, 377, 1.0);
  v53 = CA::Render::KeyValueArray::get_float_key(v21, 374, 0.0);
  v54 = CA::Render::KeyValueArray::get_float_key(v21, 376, 1.0);
  CA::ColorMatrix::set_ycc_composite(v315, float_key, v53, v54, v322.f32, v55, v56);
  v321 = 0uLL;
  CA::Render::KeyValueArray::get_float_color_key(v21, 336, &v321);
  memset(v314, 0, sizeof(v314));
  v57 = CA::Render::KeyValueArray::get_float_key(v21, 338, 1.0);
  v58 = CA::Render::KeyValueArray::get_float_key(v21, 335, 0.0);
  v59 = CA::Render::KeyValueArray::get_float_key(v21, 337, 1.0);
  CA::ColorMatrix::set_ycc_composite(v314, v57, v58, v59, v321.f32, v60, v61);
  v320 = 0uLL;
  CA::Render::KeyValueArray::get_float_color_key(v21, 422, &v320);
  *v62.i32 = CA::Render::KeyValueArray::get_float_key(v21, 391, 1.2);
  v63 = 1.0;
  if (*v62.i32 > 1.0)
  {
    if (v24 <= *v62.i32)
    {
      v64 = v24;
    }

    else
    {
      v64 = *v62.i32;
    }

    v65 = v64 + -1.0;
    _NF = v64 < 1.0;
    v67 = 0.0;
    if (!_NF)
    {
      v67 = v65;
    }

    v63 = v67 / (*v62.i32 + -1.0);
  }

  *v62.i8 = vdiv_f32(v50, v49);
  v291 = v62;
  v308 = vcvt_hight_f32_f64(v307, v298);
  v69 = CA::Render::KeyValueArray::get_float_key(v21, 415, 0.0);
  v211 = v25;
  v210 = v31;
  v266 = v63;
  v68 = v51;
  v262 = v68;
  if (v69 <= 0.0)
  {
    v286 = v320.f32[3];
  }

  else
  {
    v286 = (v69 - (v63 * v69)) + v320.f32[3];
    v320.f32[3] = v286;
  }

  v283 = vmulq_f32(v308, 0);
  memset(v313, 0, sizeof(v313));
  v70 = CA::Render::KeyValueArray::get_float_key(v21, 424, 1.0);
  v71 = CA::Render::KeyValueArray::get_float_key(v21, 421, 0.0);
  v72 = CA::Render::KeyValueArray::get_float_key(v21, 423, 1.0);
  CA::ColorMatrix::set_ycc_composite(v313, v70, v71, v72, v320.f32, v73, v74);
  v75 = CA::Render::KeyValueArray::get_float_key(v21, 386, -150.0);
  v289 = v75;
  v273 = CA::Render::KeyValueArray::get_float_key(v21, 387, 60.0);
  v76 = CA::Render::KeyValueArray::get_float_key(v21, 395, 100.0);
  v271 = CA::Render::KeyValueArray::get_float_key(v21, 396, 50.0);
  v281 = CA::Render::KeyValueArray::get_float_key(v21, 405, -11.0);
  v279 = CA::Render::KeyValueArray::get_float_key(v21, 406, -3.0);
  v299 = CA::Render::KeyValueArray::get_float_key(v21, 356, 30.0);
  glass_filter_bleed_blur_radius = CA::Render::get_glass_filter_bleed_blur_radius(v21, v77);
  v79.f64[0] = v299;
  v79.f64[1] = glass_filter_bleed_blur_radius;
  v300 = v79;
  v277 = CA::Render::KeyValueArray::get_float_key(v21, 333, 400.0);
  v253 = CA::Render::KeyValueArray::get_float_key(v21, 342, 500.0);
  v275 = CA::Render::KeyValueArray::get_float_key(v21, 417, 200.0);
  v247 = CA::Render::KeyValueArray::get_float_key(v21, 426, 250.0);
  glass_filter_shadow_blur_radius = CA::Render::get_glass_filter_shadow_blur_radius(v21, v80);
  v239 = CA::Render::KeyValueArray::get_float_key(v21, 429, 25.0);
  v81 = CA::Render::KeyValueArray::get_float_key(v21, 351, 1.0);
  v82 = CA::Render::KeyValueArray::get_float_key(v21, 352, 0.1);
  v83 = CA::Render::KeyValueArray::get_float_key(v21, 353, 0.1);
  v84 = CA::Render::KeyValueArray::get_float_key(v21, 354, 0.4);
  v257 = CA::Render::KeyValueArray::get_float_key(v21, 346, -450.0);
  v255 = CA::Render::KeyValueArray::get_float_key(v21, 347, -3.0);
  v251 = CA::Render::KeyValueArray::get_float_key(v21, 348, -0.0);
  v249 = CA::Render::KeyValueArray::get_float_key(v21, 349, 0.0);
  v245 = CA::Render::KeyValueArray::get_float_key(v21, 340, -400.0);
  v241 = CA::Render::KeyValueArray::get_float_key(v21, 341, -42.0);
  v295 = CA::Render::KeyValueArray::get_float_key(v21, 343, 0.2);
  v268 = CA::Render::KeyValueArray::get_float_key(v21, 378, 1.0);
  int_key = CA::Render::KeyValueArray::get_int_key(v21, 339, 0);
  if (int_key)
  {
    v86 = 1;
  }

  else
  {
    v86 = -1;
  }

  v87 = 0.0;
  if (!int_key)
  {
    v87 = 1.0;
  }

  v222 = v87;
  v237 = CA::Render::KeyValueArray::get_float_key(v21, 425, -50.0);
  v88 = CA::Render::KeyValueArray::get_float_key(v21, 428, 1.0);
  v235 = CA::Render::KeyValueArray::get_float_key(v21, 409, 0.75);
  v233 = CA::Render::KeyValueArray::get_float_key(v21, 430, 1.0);
  if (v88 <= 1.0)
  {
    v89 = v88;
  }

  else
  {
    v89 = 1.0;
  }

  if (v89 >= 0.0)
  {
    v90 = v89;
  }

  else
  {
    v90 = 0.0;
  }

  v91 = v76;
  v92 = v76 != 0.0;
  if (v289 != 0.0)
  {
    v92 = 1;
  }

  v93.f64[0] = v295;
  v93.f64[1] = v268;
  v94 = v315[0];
  v288 = v81;
  if (v81 != v82)
  {
    v92 = 1;
  }

  v269 = v82;
  v94.i32[3] = v315[1];
  v232 = v94;
  if (v82 != v83)
  {
    v92 = 1;
  }

  v95 = *(&v315[1] + 4);
  v95.i32[3] = DWORD1(v315[2]);
  v231 = v95;
  v96 = *(&v315[2] + 8);
  v96.i32[3] = DWORD2(v315[3]);
  v230 = v96;
  v97 = v314[0];
  v97.i32[3] = v314[1];
  v229 = v97;
  v98 = *(&v314[1] + 4);
  v98.i32[3] = DWORD1(v314[2]);
  v228 = v98;
  v264 = v83;
  v259 = v84;
  v99 = *(&v314[2] + 8);
  v99.i32[3] = DWORD2(v314[3]);
  v227 = v99;
  v100 = v313[0];
  v100.i32[3] = v313[1];
  v226 = v100;
  v101 = *(&v313[1] + 4);
  v101.i32[3] = DWORD1(v313[2]);
  v225 = v101;
  *v101.f32 = vcvt_f32_f64(v93);
  _Q1 = *(&v313[2] + 8);
  _Q1.i32[3] = DWORD2(v313[3]);
  v224 = _Q1;
  __asm { FMOV            V1.2S, #1.0 }

  v106 = vbsl_s8(vcgt_f32(*v101.f32, *_Q1.f32), *_Q1.f32, *v101.f32);
  if (_ZF)
  {
    v107 = v92;
  }

  else
  {
    v107 = 1;
  }

  v219 = v262 * 1.6;
  v108 = CA::Render::KeyValueArray::get_int_key(v21, 413, 0);
  v109 = CA::Render::KeyValueArray::get_float_key(v21, 411, -2.5);
  v110 = CA::Render::KeyValueArray::get_float_key(v21, 412, -1.5);
  v111 = CA::Render::KeyValueArray::get_float_key(v21, 414, 0.97);
  if (v108)
  {
    v112 = 1.0 - v266;
  }

  else
  {
    v112 = 0.0;
  }

  v113 = CA::Render::KeyValueArray::get_float_key(v21, 358, 0.0);
  v285 = v91;
  v261 = v90;
  v267 = v112;
  v263 = v109;
  v221 = v110;
  v218 = v111;
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  v216 = vzip1q_s32(v291, v291);
  v292 = vextq_s8(v283, v283, 8uLL);
  v114 = vcvt_f32_f64(v300);
  v296 = __PAIR64__(LODWORD(v222), v86);
  v116 = vcltz_f32(v106);
  v117 = *&dword_1ED4E9760;
  if (*&dword_1ED4E9760 == 0.0)
  {
    v117 = v113;
  }

  v284 = powf(v117, 1.0 / *(a5 + 576));
  v118 = CA::Render::KeyValueArray::get_int_key(v21, 359, 0);
  if (BYTE14(xmmword_1ED4E98AC) == 1)
  {
    v119 = 1.0;
  }

  else
  {
    v119 = v118;
  }

  v301 = v119;
  v293 = vmlaq_f32(v292, v308, v216);
  v309 = vbic_s8(v106, v116);
  v115 = glass_filter_shadow_blur_radius;
  v120 = v219 * v115;
  v214 = vmul_n_f32(v114, v219);
  v121 = 1.0 / v273;
  v122 = 1.0 / v271;
  v123 = v281;
  v124 = v279;
  v125 = v277;
  v126 = 1.0 / v253;
  v127 = v275;
  v213 = v127;
  v128 = 1.0 / v247;
  v215 = v128;
  v217 = v120;
  v129 = 1.0 / v239;
  v220 = v129;
  v254 = v264 - v259;
  v240 = v269 - v264;
  v223 = v288 - v269;
  v130 = v257;
  v244 = v130;
  v131 = v255;
  v248 = v131;
  v132 = v251;
  v256 = v132;
  v133 = v249;
  v258 = v133;
  v134 = v245;
  v260 = v134;
  v135 = v241;
  v265 = v135;
  v136 = v237;
  v274 = v136;
  v137 = v235;
  v278 = v137;
  v138 = v233;
  v282 = v138;
  v139 = vcvt_f16_f32(v232);
  v140 = vcvt_f16_f32(v231);
  v234 = vcvt_f16_f32(v230);
  v236 = vcvt_f16_f32(v229);
  v238 = vcvt_f16_f32(v228);
  v242 = vcvt_f16_f32(v227);
  v246 = vcvt_f16_f32(v226);
  v250 = vcvt_f16_f32(v225);
  v252 = vcvt_f16_f32(v224);
  v141 = v263;
  v270 = v141;
  v142 = v221;
  v272 = v142;
  v143 = v218;
  v276 = v143;
  v280 = v107;
  v144 = CA::Render::KeyValueArray::get_float_key(v21, 343, 0.2);
  v145 = *(a5 + 16);
  if (!v11)
  {
    if (v144 <= 0.0)
    {
      v150 = 70;
    }

    else
    {
      v150 = 68;
    }

    *(v145 + 16) = v150;
    *(a5 + 160) = v293;
    *(a5 + 176) = v289;
    *(a5 + 180) = v121;
    *(a5 + 188) = v122;
    *(a5 + 192) = v123;
    *(a5 + 196) = v124;
    *(a5 + 200) = v214;
    *(a5 + 208) = v125;
    *(a5 + 212) = v126;
    *(a5 + 216) = v213;
    *(a5 + 220) = v215;
    *(a5 + 224) = v287;
    *(a5 + 232) = v217;
    *(a5 + 236) = v220;
    *(a5 + 240) = v139;
    *(a5 + 248) = v140;
    *(a5 + 184) = v285;
    v294 = a1 / *v304.i32;
    *(a5 + 256) = v234;
    *(a5 + 264) = v236;
    *(a5 + 272) = v238;
    *(a5 + 280) = v242;
    *(a5 + 288) = v246;
    *(a5 + 296) = v250;
    *(a5 + 304) = v252;
    *(a5 + 312) = v282;
    *(a5 + 316) = v286;
    *(a5 + 320) = v288;
    *(a5 + 324) = v223;
    *(a5 + 328) = v240;
    *(a5 + 332) = v254;
    *(a5 + 336) = v244;
    *(a5 + 340) = v248;
    *(a5 + 344) = v256;
    *(a5 + 348) = v258;
    *(a5 + 352) = v260;
    *(a5 + 356) = v265;
    *(a5 + 360) = v309;
    *(a5 + 368) = v296;
    *(a5 + 376) = v274;
    *(a5 + 380) = v261;
    *(a5 + 384) = v278;
    *(a5 + 388) = v267;
    *(a5 + 392) = v270;
    *(a5 + 396) = v272;
    *(a5 + 400) = v284;
    *(a5 + 404) = v301;
    *(a5 + 408) = v276;
    *(a5 + 412) = 0;
    *(a5 + 416) = v280;
    *(a5 + 428) = 0;
    *(a5 + 420) = 0;
    v151 = 0.0;
    CA::OGL::Context::bind_surface(a5, v9, 1u, 1u, 1, 0.0);
    v153 = *(v8 + 48);
    v152 = *(v8 + 56);
    v155 = *(v9 + 48);
    v154 = *(v9 + 52);
    v156 = v211 / *v304.i32;
    if (v282 != 0.0)
    {
      v157 = v153.i32[0];
      v310 = v294 * v153.i32[0];
      v305 = v294 * v153.i32[1];
      *v153.i32 = (v152.i32[0] + v153.i32[0]);
      v302 = v294 * *v153.i32;
      v158 = (v152.i32[1] + v153.i32[1]);
      v297 = v294 * v158;
      v159 = v152.i32[0];
      v160 = v152.i32[1];
      v161 = -(v155 - (v156 * v157));
      v162 = -(v154 - (v156 * v153.i32[1]));
      v163 = -(v155 - (v156 * *v153.i32));
      v164 = -(v154 - (v156 * v158));
      v165 = 0.0;
      goto LABEL_99;
    }

    v290 = *(v8 + 48);
    v166 = vmul_n_f32(vcvt_f32_s32(v152), v294);
    v303 = vcvtq_f64_f32(v166);
    v306 = vcvtq_f64_f32(vmul_n_f32(vcvt_f32_s32(v153), v294));
    v316 = xmmword_183E210C0;
    v167.f64[0] = CA::Render::KeyValueArray::get_vec2_key(v21, 427, &v316);
    v167.f64[1] = v168;
    v169 = vmulq_f64(v167, vcvtq_f64_f32(v209));
    v311 = vcvtq_f64_f32(vcvt_f32_f64(vmlaq_f64(vextq_s8(v169, v169, 8uLL), vcvtq_f64_f32(v210), v167)));
    v170 = CA::Render::KeyValueArray::get_float_key(v21, 429, 25.0);
    v173 = v303.f64[0];
    v172 = v306;
    v174 = fabsf(v285);
    v175 = -(v174 - v170 * 5.6);
    v176 = -(v170 * 5.6 - v174);
    if (v175 >= 0.0)
    {
      v177 = v176;
    }

    else
    {
      v177 = -0.0;
    }

    v178 = v303.f64[1];
    if (v303.f64[0] <= v303.f64[1])
    {
      v179 = v303.f64[1];
    }

    else
    {
      v179 = v303.f64[0];
    }

    _NF = v179 < 1.79769313e308;
    v180 = v303;
    v181 = v306;
    if (_NF)
    {
      v182 = v303.f64[0] >= v303.f64[1] ? v303.f64[1] : v303.f64[0];
      v183 = v182 <= 0.0;
      v180 = v303;
      v181 = v306;
      if (!v183)
      {
        v184 = vdupq_lane_s64(*&v177, 0);
        v181 = vaddq_f64(v184, v306);
        v184.f64[0] = v177 * -2.0;
        *v185.i64 = v177 * -2.0 + v303.f64[0];
        v184.f64[0] = v184.f64[0] + v303.f64[1];
        v171.f64[0] = fmin(*v185.i64, v184.f64[0]);
        v185.i64[1] = *&v184.f64[0];
        v184.f64[0] = 0.0;
        v180 = vandq_s8(v185, vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v184, v171)).i64[0], 0));
      }
    }

    v186 = vaddq_f64(v181, v311);
    v187 = vclez_f32(v166);
    v188.i64[0] = v187.i32[0];
    v188.i64[1] = v187.i32[1];
    v189 = vclezq_f64(v180);
    v190 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v189, v188), vzip2q_s64(v189, v188))));
    v191 = v190.i8[0];
    if (v190.i8[4])
    {
      v192 = v294;
      if (v191)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v192 = v294;
      if (v191)
      {
LABEL_98:
        v194 = 1.0 / v192;
        v195 = v194 * v172.f64[0];
        v196 = vmuld_lane_f64(v194, v172, 1);
        v197 = v173 * v194;
        v198 = v178 * v194;
        v199 = v172.f64[0];
        v310 = v199;
        v200 = v172.f64[1];
        v305 = v200;
        v201 = v173 + v172.f64[0];
        v302 = v201;
        v202 = v178 + v172.f64[1];
        v297 = v202;
        v203 = v195 - v290;
        v151 = v203;
        v204 = v196 - SHIDWORD(v290);
        v165 = v204;
        v159 = v197 + v203;
        v160 = v198 + v204;
        v161 = -(v155 - v195 * v156);
        v162 = -(v154 - v196 * v156);
        v163 = -(v155 - (v197 + v195) * v156);
        v164 = -(v154 - (v198 + v196) * v156);
LABEL_99:
        v319 = 0u;
        v205 = *(*(a5 + 656) + 8);
        *&v316 = a5;
        *(&v316 + 1) = v205;
        v318 = 0u;
        v317 = 0;
        WORD4(v318) = 256;
        CA::OGL::Context::ClippedArray::start(&v316);
        v312[1] = 0;
        v312[0] = 0;
        while (CA::OGL::Context::ClippedArray::next_rect(&v316, v312))
        {
          if (*(a5 + 108))
          {
            v206 = 6;
          }

          else
          {
            v206 = 4;
          }

          if ((*(a5 + 144) + 4) > *(a5 + 152) || (v207 = *(a5 + 128)) != 0 && *(a5 + 120) + v206 > v207)
          {
            *(a5 + 1384) |= 0x20u;
            CA::OGL::Context::array_flush(a5);
            *(a5 + 144) = 0;
            *(a5 + 112) = a5 + 1386;
            *(a5 + 120) = xmmword_183E20E50;
          }

          CA::OGL::Context::array_rect(a5, v310, v305, v302, v297);
          v208 = *(a5 + 136) + 48 * *(a5 + 144);
          *(v208 - 176) = v151;
          *(v208 - 172) = v165;
          *(v208 - 128) = v159;
          *(v208 - 124) = v165;
          *(v208 - 80) = v159;
          *(v208 - 76) = v160;
          *(v208 - 32) = v151;
          *(v208 - 28) = v160;
          *(v208 - 168) = v161;
          *(v208 - 164) = v162;
          *(v208 - 120) = v163;
          *(v208 - 116) = v162;
          *(v208 - 72) = v163;
          *(v208 - 68) = v164;
          *(v208 - 24) = v161;
          *(v208 - 20) = v164;
        }

        CA::OGL::Context::unbind_surface(a5, v9, 1);
        goto LABEL_110;
      }

      v193 = vaddq_f64(v186, v180);
      v186 = vminnmq_f64(v306, v186);
      v180 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v306, v303), v193), v186);
    }

    v178 = v180.f64[1];
    v173 = v180.f64[0];
    v172 = v186;
    goto LABEL_98;
  }

  if (v144 <= 0.0)
  {
    v146 = 71;
  }

  else
  {
    v146 = 69;
  }

  *(v145 + 16) = v146;
  *(a5 + 240) = v293;
  *(a5 + 256) = v289;
  *(a5 + 260) = v121;
  *(a5 + 264) = v285;
  *(a5 + 268) = v122;
  *(a5 + 272) = v123;
  *(a5 + 276) = v124;
  *(a5 + 280) = v214;
  *(a5 + 288) = v125;
  *(a5 + 292) = v126;
  *(a5 + 296) = v213;
  *(a5 + 300) = v215;
  *(a5 + 312) = v217;
  *(a5 + 316) = v220;
  *(a5 + 320) = v139;
  *(a5 + 328) = v140;
  *(a5 + 304) = v287;
  *(a5 + 336) = v234;
  *(a5 + 344) = v236;
  *(a5 + 352) = v238;
  *(a5 + 360) = v242;
  *(a5 + 368) = v246;
  *(a5 + 376) = v250;
  *(a5 + 384) = v252;
  *(a5 + 392) = v282;
  *(a5 + 396) = v286;
  *(a5 + 400) = v288;
  *(a5 + 404) = v223;
  *(a5 + 408) = v240;
  *(a5 + 412) = v254;
  *(a5 + 416) = v244;
  *(a5 + 420) = v248;
  *(a5 + 424) = v256;
  *(a5 + 428) = v258;
  *(a5 + 432) = v260;
  *(a5 + 436) = v265;
  *(a5 + 440) = v309;
  *(a5 + 448) = v296;
  *(a5 + 456) = v274;
  *(a5 + 460) = v261;
  *(a5 + 464) = v278;
  *(a5 + 468) = v267;
  *(a5 + 472) = v270;
  *(a5 + 476) = v272;
  *(a5 + 480) = v284;
  *(a5 + 484) = v301;
  *(a5 + 488) = v276;
  *(a5 + 492) = 0;
  *(a5 + 496) = v280;
  *(a5 + 508) = 0;
  *(a5 + 500) = 0;
  v147 = CA::Render::KeyValueArray::get_float_key(v21, 429, 25.0);
  v148 = v147 + v147;
  v149 = vneg_f32(v287);
  CA::OGL::emit_sdf_bounds(a5, v11, v8, 0, 0.0, *v304.i32, v148, v149.f32[0], v149.f32[1]);
LABEL_110:
  if (*(a5 + 672) != v8)
  {
    CA::OGL::Context::unbind_surface(a5, v8, 0);
  }

  *(*(a5 + 16) + 16) = 0;
  *(*(a5 + 16) + 19) = 0;
}