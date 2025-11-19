uint64_t CA::OGL::prepare_layer(uint64_t a1, uint64_t a2, const CA::Render::TransitionSubclass *a3, uint64_t a4, uint64_t a5, int a6)
{
  v239 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 32);
  if (!v6)
  {
    return 0;
  }

  v8 = *(a2 + 24);
  if ((v8 & 0x18) != 0 && (*(a2 + 24) & 0x1000) == 0)
  {
    return 0;
  }

  if ((v8 & 0x81000) == 0)
  {
    v21 = *(a1 + 40);
    v22 = vclez_s32(v21);
    if ((vpmax_u32(v22, v22).u32[0] & 0x80000000) != 0)
    {
      return 0;
    }

    v23 = *(a2 + 184);
    v24 = vclez_s32(v23);
    if ((vpmax_u32(v24, v24).u32[0] & 0x80000000) != 0)
    {
      return 0;
    }

    v25 = vclez_s32(vsub_s32(vmin_s32(vadd_s32(*(a1 + 32), v21), vadd_s32(*(a2 + 176), v23)), vmax_s32(*(a1 + 32), *(a2 + 176))));
    if ((vpmax_u32(v25, v25).u32[0] & 0x80000000) != 0)
    {
      return 0;
    }
  }

  v15 = *(a1 + 8);
  if (*(v15 + 1376))
  {
    v16 = *(v15 + 376);
    if (v16)
    {
      if (!(*(*v16 + 24))(v16, a2, *(a2 + 32)))
      {
        return 0;
      }
    }
  }

  v188 = a6;
  if ((a5 & 0x4000000) != 0 || (v17 = *(a2 + 120)) == 0)
  {
    v26 = CA::OGL::Renderer::alloc_layer(a1, a2, a3, a4);
    *(v26 + 32) |= a5;
    v31 = CA::OGL::prepare_layer_image(a1, v26, a4, v28);
  }

  else
  {
    v18 = CA::Render::Transition::subclass(*(a2 + 120), a2, a3);
    if (v18)
    {
      v19 = ((*v18)[6])(v18, v17);
      v20 = 0;
    }

    else
    {
      v20 = *(v17 + 32) == 0;
      if (*(v17 + 32))
      {
        v19 = 3;
      }

      else
      {
        v19 = 0;
      }
    }

    v206 = 0u;
    v205 = 0u;
    *&v216 = 0;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    v208 = 0u;
    v209 = 0u;
    v207 = 0u;
    v204 = 0u;
    *&v206 = 0;
    v201 = *(a4 + 8);
    v32 = *(a4 + 80) & 0x500;
    v34 = *(a4 + 24);
    v33 = *(a4 + 32);
    v199 = 0;
    v200 = 0;
    v202 = v34;
    v203 = v33;
    DWORD2(v205) = *(a4 + 64);
    v35 = v32 | 1;
    WORD4(v206) = v32 | 1;
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    if (CA::OGL::test_source_requirement(v19, v34))
    {
      v39 = *(v34 + 16);
      v40 = *(v34 + 32);
      v41 = *(v34 + 48);
      v190 = *v34;
      v191 = v39;
      v192 = v40;
      v193 = v41;
      v42 = *(v34 + 80);
      v43 = *(v34 + 96);
      v44 = *(v34 + 112);
      v194 = *(v34 + 64);
      v195 = v42;
      v196 = v43;
      v197 = v44;
      v198 = *(v34 + 128);
      LOBYTE(v199) = *(v34 + 144) & 0x1F;
      CA::Transform::invert(&v190, v36, v37);
    }

    else
    {
      v45 = xmmword_183E20E00;
      v207 = xmmword_183E20E00;
      v208 = 0u;
      v46 = xmmword_183E20E60;
      v209 = xmmword_183E20E60;
      v210 = 0u;
      v211 = 0u;
      v212 = xmmword_183E20E00;
      v213 = 0u;
      v214 = xmmword_183E20E60;
      __asm { FMOV            V0.2D, #1.0 }

      v215 = _Q0;
      LOBYTE(v216) = 0;
      v202 = &v207;
      WORD4(v206) = v35 & 0xFC01 | 0x200;
      v190 = xmmword_183E20E00;
      v192 = xmmword_183E20E60;
      v193 = 0u;
      v194 = 0u;
      v195 = xmmword_183E20E00;
      v197 = xmmword_183E20E60;
      v198 = _Q0;
      if (v19 != 8)
      {
        if ((*(v34 + 144) & 0x10) != 0)
        {
          scale = CA::Mat4Impl::mat4_get_scale(v34, 0, 0, v38);
          v46 = xmmword_183E20E60;
          v45 = xmmword_183E20E00;
        }

        else
        {
          scale = *(v34 + 128);
        }

        if (scale != 1.0)
        {
          *&v215 = scale;
          *(&v215 + 1) = 1.0 / scale;
          LOBYTE(v216) = 8;
          v207 = vmulq_n_f64(v45, scale);
          v209 = vmulq_n_f64(v46, scale);
        }

        v51 = 1.0 / scale;
        if (1.0 / scale != 1.0)
        {
          *&v198 = 1.0 / scale;
          *(&v198 + 1) = scale;
          LOBYTE(v199) = 8;
          v190 = vmulq_n_f64(v45, v51);
          v192 = vmulq_n_f64(v46, v51);
        }
      }
    }

    v26 = CA::OGL::Renderer::alloc_layer(a1, a2, a3, &v200);
    CA::OGL::prepare_layer_image(a1, v26, &v200, v52);
    v53 = *(a2 + 24);
    if ((v53 & 0x4000000) == 0 && *(v17 + 72))
    {
      *(v26 + 176) = CA::OGL::cache_node(a1, v26, (v17 + 72), *(v26 + 176), 0, 1.0);
    }

    v54 = CA::OGL::Renderer::alloc_layer(a1, *(a2 + 136), a3, &v200);
    *(v54 + 32) |= 0x4000000uLL;
    CA::OGL::prepare_layer_image(a1, v54, &v200, v55);
    if ((v53 & 0x4000000) == 0 && *(v17 + 64))
    {
      *(v54 + 176) = CA::OGL::cache_node(a1, v54, (v17 + 64), *(v54 + 176), 0, 1.0);
    }

    v56 = *(v26 + 176);
    if (v20)
    {
      v57 = CA::OGL::combine_node(a1, v26, 7, a4, *(v26 + 176), *(v54 + 176), *(v17 + 48), *(v17 + 48), *(v17 + 48), *(v17 + 48));
      *(v26 + 176) = v57;
      *(v57 + 236) = *(v57 + 236) & 0xFFFE0000 | 0x20;
    }

    else
    {
      v58 = *(v54 + 176);
      v59 = *(a1 + 72);
      if (v59)
      {
        *(a1 + 72) = *v59;
      }

      else
      {
        v59 = x_heap_malloc_small_(*(a1 + 56), 0x110uLL);
      }

      CA::OGL::ImagingNode::ImagingNode(v59, a1, v26, v58, v56);
      *v59 = &unk_1EF1FDD60;
      *(v59 + 240) = v17;
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v60 = malloc_type_zone_malloc(malloc_zone, 0x98uLL, 0x165299FDuLL);
      if (v60)
      {
        v61 = v191;
        v62 = v192;
        v63 = v193;
        *v60 = v190;
        v60[1] = v61;
        v60[2] = v62;
        v60[3] = v63;
        v64 = v195;
        v65 = v196;
        v66 = v197;
        v60[4] = v194;
        v60[5] = v64;
        v60[6] = v65;
        v60[7] = v66;
        v60[8] = v198;
        *(v60 + 144) = v60[9] & 0xE0 | v199 & 0x1F;
      }

      *(v59 + 248) = v60;
      CA::OGL::init_gstate(v59 + 56, a4);
      *(v59 + 236) = (*(v59 + 236) & 0xFFDE0000 | 0x200040) - 32;
      *(v26 + 176) = v59;
    }

    *(v26 + 208) = v54;
    *(v54 + 176) = 0;
    v31 = (*(v26 + 176) + 56);
  }

  v67 = *(v26 + 8);
  if (v67 && (*(v67 + 37) & 4) != 0)
  {
    *(v26 + 32) |= 0x40000000000uLL;
  }

  v68 = *(v26 + 32);
  if ((v68 & 0x4000000) == 0)
  {
    v70 = *(v26 + 16);
    v69 = *(v26 + 24);
    if (*(v70 + 128))
    {
      if ((v68 & 0x2C0000) == 0 && (*(v70 + 25) & 0x20) != 0)
      {
        goto LABEL_115;
      }

      *(v26 + 32) = v68 | 2;
    }

    else
    {
      if ((*(v69 + 45) & 1) == 0)
      {
        goto LABEL_115;
      }

      if ((v68 & 0x2C0000) == 0)
      {
        if ((*(v70 + 25) & 0x20) != 0)
        {
          goto LABEL_115;
        }

        if ((v68 & 0x300007FE0) == 0x100 && (v68 & 0x10) != 0 && (v77 = *(v70 + 48)) != 0 && (v78 = (*(*v77 + 80))(*(v70 + 48))) != 0)
        {
          v238 = 0;
          v236 = 0u;
          v237 = 0u;
          v234 = 0u;
          v235 = 0u;
          v232 = 0u;
          v233 = 0u;
          v230 = 0u;
          v231 = 0u;
          v228 = 0u;
          v229 = 0u;
          v226 = 0u;
          v227 = 0u;
          v224 = 0u;
          v225 = 0u;
          v222 = 0u;
          v223 = 0u;
          v220 = 0u;
          v221 = 0u;
          v218 = 0u;
          v219 = 0u;
          v216 = 0u;
          v217 = 0u;
          v214 = 0u;
          v215 = 0u;
          v212 = 0u;
          v213 = 0u;
          v210 = 0u;
          v211 = 0u;
          v208 = 0u;
          v209 = 0u;
          v207 = 0u;
          CA::OGL::ContentsGeometry::ContentsGeometry(&v207, v26, a4, v78, v77, 0);
          if (BYTE10(v237))
          {
            goto LABEL_115;
          }
        }

        else if ((v68 & 0x300003F40) == 0)
        {
          goto LABEL_115;
        }
      }
    }

    v71 = *(v69 + 40);
    v72 = *(v26 + 32);
    if ((v71 & 0x10000000000) != 0)
    {
      if ((v72 & 0x1000000) != 0 || ((v73 = *(v70 + 56)) != 0 && !CA::Mat4Impl::mat4_is_rectilinear(v73, v29) || (v74 = *(a4 + 24), (*(v74 + 144) & 0x10) != 0) && !CA::Mat4Impl::mat4_is_rectilinear(v74, v29)) && ((v72 & 0x300007AE0) != 0 || (v72 & 0x100) != 0 && (v71 >> 12) - 11 <= 0xFFFFFFFD))
      {
        if ((*(v26 + 41) & 0xF) != 0)
        {
          v75 = 1;
        }

        else
        {
          v209 = 0u;
          v210 = 0u;
          v207 = 0u;
          v208 = 0u;
          CA::OGL::map_layer_corners(v26, a4, v207.f64);
          v79 = 0;
          v75 = 0x8000000;
          do
          {
            if ((*&v207.f64[v79] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v207.f64[v79 + 1] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
            {
              v75 = 1;
            }

            v79 += 2;
          }

          while (v79 != 8);
          v72 = *(v26 + 32);
        }

        v72 |= v75;
        *(v26 + 32) = v72;
      }

      if ((*(v26 + 41) & 0xF) != 0 && (v72 & 1) == 0)
      {
        v80 = *(v69 + 72);
        v81 = *(v69 + 88);
        v207 = v80;
        v208 = v81;
        v82 = *(v70 + 56);
        if (v82)
        {
          CA::Mat4Impl::mat4_apply_to_rect(v82, &v207, v30);
        }

        else
        {
          v207 = vaddq_f64(*(v70 + 64), v80);
        }

        CA::Rect::apply_transform(&v207, *(a4 + 24), v30);
        v72 = *(v26 + 32);
        if (vaddvq_f64(vaddq_f64(vabdq_f64(v207, vrndaq_f64(v207)), vabdq_f64(v208, vrndaq_f64(v208)))) >= 0.000004)
        {
          v72 |= 1uLL;
          *(v26 + 32) = v72;
        }
      }

      if ((v72 & 0x11) == 0x10)
      {
        if ((v72 & 0x1480002) != 0)
        {
          goto LABEL_111;
        }

        if (!(*(**(v26 + 176) + 24))(*(v26 + 176)))
        {
          goto LABEL_111;
        }

        v83 = *(v26 + 176);
        v84 = *(v83 + 80);
        if ((*(v84 + 144) & 0x10) != 0 && (*(v84 + 24) != 0.0 || *(v84 + 56) != 0.0))
        {
          goto LABEL_111;
        }

        v85 = *(v26 + 24);
        v86 = *(v85 + 136);
        if (v86)
        {
          if (*(v86 + 72))
          {
            CA::Render::Layer::max_corner_radii(*(v85 + 136));
          }

          else
          {
            v87 = *(v86 + 232);
          }
        }

        else
        {
          v87 = 0.0;
        }

        v89 = *(v85 + 88);
        v88 = *(v85 + 96);
        v90 = v89 >= v88 ? *(v85 + 96) : *(v85 + 88);
        if ((v91 = *(v85 + 40), v92 = HIWORD(v91) & 0xF, v92 == 15) || v86 && *(v86 + 72) || v92 == 9 || v92 == 6)
        {
          v93 = v90 * 0.5;
        }

        else
        {
          v183 = (~v91 & 0xC0000) == 0 || (~v91 & 0x30000) == 0;
          v184 = v89 * 0.5;
          if (v183 && v184 < v90)
          {
            v90 = v184;
          }

          v186 = (~v91 & 0x50000) == 0 || (~v91 & 0xA0000) == 0;
          v93 = v88 * 0.5;
          if (!v186 || v93 >= v90)
          {
            v93 = v90;
          }
        }

        if (v87 > v93 * 1.00001 || v86 && *(v86 + 56) && (*(v85 + 50) & 1) != 0)
        {
LABEL_111:
          v72 = *(v26 + 32) | 1;
          *(v26 + 32) = v72;
        }

        else
        {
          *(v83 + 236) |= 0x400000u;
          v72 = *(v26 + 32);
        }
      }
    }

    if ((v72 & 3) != 0)
    {
      v94 = *(a1 + 72);
      if (v94)
      {
        *(a1 + 72) = *v94;
      }

      else
      {
        v94 = x_heap_malloc_small_(*(a1 + 56), 0x110uLL);
      }

      CA::OGL::ImagingNode::ImagingNode(v94, a1, v26, 0, 0);
      *v94 = &unk_1EF1FD610;
      *(v94 + 240) &= ~1u;
      *(v94 + 248) = 0;
      *(v94 + 88) = 0x3C003C003C003C00;
      *(v94 + 104) = 0;
      *(v94 + 112) = 0;
      *(v94 + 96) = 0;
      v98 = *(v94 + 136);
      *(v94 + 128) = 0;
      *(v94 + 56) = 0u;
      *(v94 + 72) = 0u;
      *(v94 + 120) = 1065353216;
      v99 = v98 & 0xF800 | 0x401;
      *(v94 + 136) = v99;
      *(v94 + 236) = *(v94 + 236) & 0xFFFE0000 | 0x100;
      v100 = v99 | *(a4 + 80) & 0x100;
      *(v94 + 136) = v100;
      if ((~*(v26 + 32) & 3) == 0)
      {
        *(v94 + 136) = v100 & 0xFD00 | 4;
      }

      *&v216 = 0;
      v214 = 0uLL;
      v215 = 0uLL;
      v212 = 0uLL;
      v213 = 0uLL;
      v210 = 0uLL;
      v211 = 0uLL;
      v208 = 0uLL;
      v209 = 0uLL;
      v207 = 0uLL;
      v101 = *(v70 + 56);
      if (v101)
      {
        CA::Transform::set(&v207, v101, 1);
      }

      else
      {
        v102 = *(v70 + 80);
        if (fabs(v102) < 0.001)
        {
          v103 = *(a4 + 24);
          v104 = *(v103 + 16);
          v105 = *(v103 + 32);
          v106 = *(v103 + 48);
          v207 = *v103;
          v208 = v104;
          v209 = v105;
          v210 = v106;
          v107 = *(v103 + 80);
          v108 = *(v103 + 96);
          v109 = *(v103 + 112);
          v211 = *(v103 + 64);
          v212 = v107;
          v213 = v108;
          v214 = v109;
          v215 = *(v103 + 128);
          v110.f64[1] = *(&v215 + 1);
          LOBYTE(v216) = *(v103 + 144) & 0x1F;
          v110.f64[0] = *(v70 + 64);
          CA::Transform::translate(&v207, v110, *(v70 + 72), 0.0);
          v95 = v94;
LABEL_126:
          v113 = v26 + 232;
          if (!CA::Transform::operator==(&v207, v26 + 232))
          {
            v113 = x_heap_malloc_small_(*(a1 + 56), 0x98uLL);
            v114 = v208;
            v115 = v209;
            v116 = v210;
            *v113 = v207;
            *(v113 + 16) = v114;
            *(v113 + 32) = v115;
            *(v113 + 48) = v116;
            v117 = v212;
            v118 = v213;
            v119 = v214;
            *(v113 + 64) = v211;
            *(v113 + 80) = v117;
            *(v113 + 96) = v118;
            *(v113 + 112) = v119;
            *(v113 + 128) = v215;
            *(v113 + 144) = *(v113 + 144) & 0xE0 | v216 & 0x1F;
          }

          *(v94 + 80) = v113;
          goto LABEL_129;
        }

        v207 = xmmword_183E20E00;
        v208 = 0uLL;
        v209 = xmmword_183E20E60;
        v210 = 0u;
        v211 = 0u;
        v212 = xmmword_183E20E00;
        v214 = xmmword_183E20E60;
        v213 = *(v70 + 64);
        *&v214 = v102;
        __asm { FMOV            V0.2D, #1.0 }

        v215 = _Q0;
        LOBYTE(v216) = 16;
      }

      v95 = v94;
      if ((CA::OGL::maybe_concatenate(&v207, *(a4 + 24), v96, v97) & 1) == 0)
      {
        *(v94 + 136) = *(v94 + 136) & 0xFCFF | 0x200;
        CA::OGL::quad_node(a1, v26, v94, 1, 1, 0, 0.0);
        v95 = v112;
        *(v112 + 80) = *(a4 + 24);
        *(v112 + 136) = *(v112 + 136) & 0xFEFF | *(a4 + 80) & 0x100;
        *(v112 + 236) = *(v112 + 236) & 0xFFFE0000 | 0x80;
      }

      goto LABEL_126;
    }

LABEL_115:
    v94 = 0;
    v95 = 0;
LABEL_129:
    v120 = *(v26 + 176);
    v121 = *(v26 + 32);
    if ((v121 & 0x480000) != 0 || v95 && (v121 & 0x200000) != 0)
    {
      v122 = *(v26 + 40);
      if (HIBYTE(v122) != 3)
      {
        *(v26 + 64) = *(v26 + 48);
        *(v26 + 88) = *(v26 + 80);
        *(v26 + 40) = v122 | (HIBYTE(v122) << 16) | 0x3000000;
        *(v26 + 32) = v121 | 0x100000;
      }

      v123 = *(v26 + 184);
      if (!v123)
      {
        v123 = *(a1 + 72);
        if (v123)
        {
          *(a1 + 72) = *v123;
        }

        else
        {
          v123 = x_heap_malloc_small_(*(a1 + 56), 0x110uLL);
        }

        CA::OGL::ImagingNode::ImagingNode(v123, a1, v26, 0, 0);
        *v123 = &unk_1EF1FDA90;
        *(v123 + 240) = 0;
        *(v123 + 236) |= 0x1000000u;
        *(v26 + 184) = v123;
      }

      ++*(v123 + 228);
      for (i = *(v26 + 224); i; i = *i)
      {
        v123 = CA::OGL::filter_node(a1, v26, i, a4, 0, v123);
      }

      if ((*(v26 + 34) & 0x40) != 0)
      {
        v135 = *(v6 + 136);
        if (v135)
        {
          v136 = *(v135 + 88);
        }

        else
        {
          v136 = 0;
        }

        v137 = *(a1 + 72);
        if (v137)
        {
          *(a1 + 72) = *v137;
        }

        else
        {
          v137 = x_heap_malloc_small_(*(a1 + 56), 0x110uLL);
        }

        CA::OGL::ImagingNode::ImagingNode(v137, a1, v26, v120, v123);
        *v137 = &unk_1EF1FDCD0;
        *(v137 + 240) = v136;
        CA::OGL::init_gstate(v137 + 56, a4);
        *(v137 + 236) = *(v137 + 236) & 0xFFDE0000 | 0x200040;
        v123 = v137;
      }

      else
      {
        v128 = v31;
        v129 = *(v26 + 40);
        v130 = *(v26 + 88);
        v131 = v120[38];
        if (v131 < 0)
        {
          (*(*v120 + 40))(v120, v120 + 36);
          v131 = v120[38];
        }

        if (v131 >= v120[39])
        {
          v131 = v120[39];
        }

        v132 = HIWORD(v129);
        if (v131 <= 0 && ((v129 & 0xF00000) != 0 || ((0x3ACCu >> SBYTE2(v129)) & 1) != 0))
        {
          v182 = v120[57] - 1;
          --*(v120 + 228);
          if (!v182)
          {
            CA::OGL::ImagingNode::finalize(v120, a1);
          }
        }

        else
        {
          v133 = v130;
          v134 = *(a1 + 72);
          if (v134)
          {
            *(a1 + 72) = *v134;
          }

          else
          {
            v134 = x_heap_malloc_small_(*(a1 + 56), 0x110uLL);
          }

          CA::OGL::ImagingNode::ImagingNode(v134, a1, v26, v123, v120);
          *v134 = &unk_1EF1FDC40;
          CA::OGL::init_gstate(v134 + 56, a4);
          *(v134 + 136) = v132;
          *(v134 + 96) = *(v26 + 64);
          *(v134 + 104) = *(v26 + 72);
          *(v134 + 112) = v133;
          *(v134 + 236) = *(v134 + 236) & 0xFFDE0000 | 0x200040;
          v123 = v134;
        }

        v31 = v128;
      }

      if (v95)
      {
        *(v95 + 236) |= 0x200000u;
        ++*(v95 + 228);
        v138 = CA::OGL::combine_node(a1, v26, 5, a4, v123, v95, 0.0, 0.0, 0.0, 0.0);
        v139 = *(v26 + 184);
        ++*(v139 + 228);
        v140 = CA::OGL::combine_node(a1, v26, 6, a4, v139, v95, 0.0, 0.0, 0.0, 0.0);
        v123 = CA::OGL::combine_node(a1, v26, 10, a4, v138, v140, 0.0, 0.0, 0.0, 0.0);
        *(v123 + 236) = *(v123 + 236) & 0xFFFE0000 | 0x100;
      }

      v76 = 1;
    }

    else if (v95)
    {
      CA::OGL::apply_pending_blending(v26);
      if (v94 == v95 && (v125 = *(v94 + 80), v125 == *(v120 + 10)) && ((*(v125 + 144) & 0x10) == 0 || CA::Mat4Impl::mat4_is_2d_affine(v125, v124)) && (*(v26 + 32) & 2) == 0)
      {
        v76 = 0;
        *(v95 + 24) = v120;
        *(v95 + 236) |= 0x200000u;
        v123 = v95;
      }

      else
      {
        if ((*(v6 + 40) & 0x20000000000) != 0)
        {
          v126 = 6;
        }

        else
        {
          v126 = 5;
        }

        v123 = CA::OGL::combine_node(a1, v26, v126, a4, v120, v95, 0.0, 0.0, 0.0, 0.0);
        v76 = 0;
        *(v123 + 236) = *(v123 + 236) & 0xFFFE0000 | 0x100;
      }
    }

    else
    {
      v76 = 0;
      v123 = *(v26 + 176);
    }

    *(v26 + 176) = v123;
    goto LABEL_172;
  }

  v76 = 1;
LABEL_172:
  if (*(*(v26 + 16) + 144) | *(a4 + 16))
  {
    v141 = 1;
  }

  else
  {
    v141 = (*(v26 + 35) >> 3) & 1;
  }

  v142 = *(v26 + 176);
  v143 = *(v142 + 136);
  v145 = *(v142 + 96);
  v144 = *(v142 + 104);
  v146 = *(v142 + 112);
  if ((v76 & 1) == 0)
  {
    *(v142 + 136) = *(v26 + 42) | v143 & 0xFF00;
    *(*(v26 + 176) + 96) = *(v26 + 64);
    *(*(v26 + 176) + 104) = *(v26 + 72);
    v142 = *(v26 + 176);
    *(v142 + 112) = *(v26 + 88);
  }

  v147 = (*(*v142 + 16))(v142, v141);
  v149 = *(v26 + 176);
  if (v147)
  {
    *(v149 + 136) = v143;
    *(*(v26 + 176) + 96) = v145;
    *(*(v26 + 176) + 104) = v144;
    v150 = *(v26 + 176);
    *(v150 + 112) = v146;
    v151 = CA::OGL::combine_node(a1, v26, 1, v31, v150, 0, 0.0, 0.0, 0.0, 0.0);
    *(v26 + 176) = v151;
    *(v151 + 236) = *(v151 + 236) & 0xFFFE0000 | 0x10;
    v149 = *(v26 + 176);
    if ((v76 & 1) == 0)
    {
      *(v149 + 136) = *(v26 + 42);
      *(*(v26 + 176) + 96) = *(v26 + 64);
      *(*(v26 + 176) + 104) = *(v26 + 72);
      v149 = *(v26 + 176);
      *(v149 + 112) = *(v26 + 88);
    }
  }

  *(v149 + 72) = *(a4 + 16);
  if (*(*(v26 + 16) + 144))
  {
    v213 = 0u;
    v214 = 0u;
    v211 = 0u;
    v212 = 0u;
    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    v196 = 0u;
    v197 = 0u;
    v194 = 0u;
    v195 = 0u;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    CA::Mat4Impl::mat4_invert(&v190, *(a4 + 24), v148);
    CA::Mat4Impl::mat4_transpose(&v207, v190.f64, v152);
    CA::Mat4Impl::mat4_invert(&v190, *&v31[3], v153);
    for (j = *(*(v26 + 16) + 144); j; j = *&j->f64[0])
    {
      v155 = j[1];
      v156 = j[2];
      v157 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v207, v155.f64[0]), v209, v155, 1), v211, v156.f64[0]), v213, v156, 1);
      v158 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v208, v155.f64[0]), v210, v155, 1), v212, v156.f64[0]), v214, v156, 1);
      v155.f64[0] = -v158.f64[0] / *&v195;
      *&v156.f64[0] = v191;
      v159 = v158.f64[1] + *&v197 * v155.f64[0];
      *&v156.f64[1] = v193;
      v189 = vmlaq_n_f64(v157, v156, v155.f64[0]);
      v160 = CA::OGL::Renderer::add_clip_plane(a1, v26);
      *(v160 + 12) = vcvt_f32_f64(v189);
      *(v160 + 20) = 0;
      v161 = v159;
      *(v160 + 24) = v161;
    }
  }

  if ((*(v26 + 35) & 8) != 0)
  {
    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    CA::OGL::map_layer_corners(v26, a4, v207.f64);
    v162 = 0;
    v163 = 0;
    v192 = 0u;
    v193 = 0u;
    LODWORD(v164) = 3;
    v190 = 0u;
    v191 = 0u;
    while (1)
    {
      v165 = &v207 + v164;
      v164 = v162;
      v166 = &v207 + v162;
      v167 = v166->f64[0];
      v168 = v166->f64[1];
      v169 = v166->f64[0] - v165->f64[0];
      v170 = v168 - v165->f64[1];
      if (v169 != 0.0)
      {
        break;
      }

      if (v170 != 0.0)
      {
        v173 = v169 / v170;
        v172 = v167 - v173 * v168;
        v171 = -1.0;
        goto LABEL_189;
      }

      v162 = v164 + 1;
LABEL_192:
      if (v162 == 4)
      {
        if (v163)
        {
          v178 = &v190;
          do
          {
            v179 = CA::OGL::Renderer::add_clip_plane(a1, v26);
            v180 = *v178++;
            *(v179 + 12) = v180;
            --v163;
          }

          while (v163);
        }

        goto LABEL_198;
      }
    }

    v171 = v170 / v169;
    v172 = v168 - v171 * v167;
    v173 = -1.0;
LABEL_189:
    v162 = v164 + 1;
    if (v172 + v207.f64[2 * ((v164 + 1) & 3)] * v171 + v207.f64[2 * ((v164 + 1) & 3) + 1] * v173 < 0.0)
    {
      v171 = -v171;
      v173 = -v173;
      v172 = -v172;
    }

    v174 = v171;
    v175 = (&v190 + v163);
    v176 = v173;
    *v175 = v174;
    v175[1] = v176;
    v175[2] = 0.0;
    v177 = v172;
    v175[3] = v177;
    ++v163;
    goto LABEL_192;
  }

LABEL_198:
  v181 = *(v26 + 176);
  if (v188)
  {
    v181[59] |= 0x800000u;
    v181 = *(v26 + 176);
  }

  (*(*v181 + 96))(v181);
  return v26;
}

uint64_t CA::OGL::Renderer::alloc_layer(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = *(a1 + 64);
  if (v8)
  {
    *(a1 + 64) = *v8;
  }

  else
  {
    v8 = x_heap_malloc_small_(*(a1 + 56), 0x188uLL);
  }

  *v8 = 0;
  *(v8 + 8) = a3;
  v9 = *(a2 + 32);
  *(v8 + 16) = a2;
  *(v8 + 24) = v9;
  *(v8 + 32) = 0;
  *(v8 + 40) = 64;
  if ((*(v9 + 47) & 0x20) == 0 || (*(*a1 + 872) & 8) != 0 || (*(a2 + 24) & 0x100) != 0)
  {
    v10 = 64;
  }

  else
  {
    v10 = -192;
  }

  *(v8 + 40) = v10 | 0x3030000;
  *(v8 + 160) = 0;
  *(v8 + 384) = 0;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 176) = 0;
  *(v8 + 184) = 0;
  *(v8 + 216) = 0;
  *(v8 + 224) = 0;
  *(v8 + 388) &= 0xF0000000;
  *(v8 + 200) = 0;
  *(v8 + 208) = 0;
  v11 = a3[24];
  *(v8 + 192) = v11;
  *(v8 + 96) = a3[12];
  *(v8 + 104) = a3[13];
  if (v11 && (byte_1ED4E98C7 & 1) == 0)
  {
    *(v8 + 32) = 0x8000;
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    *(a1 + 72) = *v12;
  }

  else
  {
    v12 = x_heap_malloc_small_(*(a1 + 56), 0x110uLL);
  }

  v13 = CA::OGL::ImagingNode::ImagingNode(v12, a1, v8, 0, 0);
  *v13 = &unk_1EF1FD580;
  *(v13 + 240) &= 0xFCu;
  *(v13 + 248) = 0;
  *(v13 + 256) = 0;
  *(v8 + 168) = v13;
  *(v8 + 176) = v13;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  v14 = (*(v13 + 137) << 8) | 3;
  v15 = *(a4 + 32);
  *(v13 + 136) = v14;
  *(v13 + 104) = 0;
  *(v13 + 112) = 0;
  *(v13 + 88) = v15;
  *(v13 + 96) = 0;
  *(v13 + 120) = *(a4 + 64);
  v16 = v14 & 0xFCFF | *(a4 + 80) & 0x100;
  *(v13 + 136) = v16;
  *(v13 + 136) = v16 & 0xFBFF | *(a4 + 80) & 0x400;
  *(v13 + 128) = 0;
  return v8;
}

void *CA::OGL::prepare_layers(uint64_t a1, const CA::Render::TransitionSubclass *a2, void **a3, uint64_t a4, int a5, _BYTE *a6, _BYTE *a7)
{
  v7 = *a3;
  if (*a3 == a3)
  {
    return 0;
  }

  v15 = 0;
  do
  {
    v16 = CA::OGL::prepare_layer(a1, v7, a2, a4, (v15 == 0) << 29, a5);
    if (v16)
    {
      *v16 = v15;
      v17 = v16[22];
      v18 = *(v17 + 236);
      v19 = (v18 & 0x200000) != 0 || (v18 & 0x400000) != 0;
      *a7 |= v19;
      *a6 |= *(v17 + 239) & 1;
      v15 = v16;
    }

    v7 = *v7;
  }

  while (v7 != a3);
  return v15;
}

uint64_t CA::OGL::prepare_compositing_filter(uint64_t result, int8x8_t *a2, uint64_t a3, int a4)
{
  v6 = result;
  v41 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 24);
  if (v7 <= 523)
  {
    if (v7 > 189)
    {
      if (v7 <= 475)
      {
        if (v7 <= 239)
        {
          switch(v7)
          {
            case 190:
              v8 = 7;
              goto LABEL_129;
            case 191:
              v8 = 36;
              goto LABEL_129;
            case 205:
              v8 = 38;
              goto LABEL_129;
          }
        }

        else if (v7 > 306)
        {
          if (v7 == 307)
          {
            v8 = 53;
            goto LABEL_129;
          }

          if (v7 == 475)
          {
            v8 = 31;
            goto LABEL_129;
          }
        }

        else
        {
          if (v7 == 240)
          {
            v8 = 20;
            goto LABEL_129;
          }

          if (v7 == 293)
          {
            v8 = 35;
LABEL_129:
            a2[5].i8[2] = v8;
            goto LABEL_130;
          }
        }

        goto LABEL_130;
      }

      if (v7 <= 486)
      {
        switch(v7)
        {
          case 476:
            v8 = 51;
            goto LABEL_129;
          case 485:
            v8 = 39;
            goto LABEL_129;
          case 486:
            v8 = 19;
            goto LABEL_129;
        }

        goto LABEL_130;
      }

      if (v7 <= 511)
      {
        if (v7 == 487)
        {
          v8 = 40;
          goto LABEL_129;
        }

        if (v7 == 498)
        {
          v8 = 56;
          goto LABEL_129;
        }

        goto LABEL_130;
      }

      if (v7 == 512)
      {
        v8 = 18;
        goto LABEL_129;
      }

      if (v7 != 520)
      {
        goto LABEL_130;
      }

      v9 = 17;
      goto LABEL_126;
    }

    if (v7 > 178)
    {
      if (v7 <= 184)
      {
        switch(v7)
        {
          case 179:
            v8 = 30;
            goto LABEL_129;
          case 180:
            v19 = 50;
            break;
          case 184:
            v19 = 2;
            break;
          default:
            goto LABEL_130;
        }
      }

      else
      {
        if (v7 <= 187)
        {
          if (v7 != 185)
          {
            if (v7 != 186)
            {
              goto LABEL_130;
            }

            v9 = 8;
            goto LABEL_126;
          }

          v10 = 10;
LABEL_102:
          a2[5].i8[2] = v10;
          *&a2[4] |= 0x200000uLL;
          goto LABEL_130;
        }

        v19 = 9;
      }

LABEL_133:
      a2[5].i8[2] = v19;
      goto LABEL_134;
    }

    if (v7 > 104)
    {
      if (v7 == 105)
      {
        v8 = 33;
        goto LABEL_129;
      }

      if (v7 == 107)
      {
        v8 = 32;
        goto LABEL_129;
      }

      if (v7 != 158)
      {
        goto LABEL_130;
      }

      v10 = 1;
      goto LABEL_102;
    }

    if (v7 != 60)
    {
      if (v7 != 99)
      {
        if (v7 == 103)
        {
          v8 = 55;
          goto LABEL_129;
        }

        goto LABEL_130;
      }

      a2[5].i32[0] &= 0xFF00FFFF;
LABEL_127:
      *&a2[4] |= 0x200000uLL;
      goto LABEL_134;
    }

    goto LABEL_93;
  }

  if (v7 <= 663)
  {
    if (v7 > 562)
    {
      if (v7 <= 619)
      {
        switch(v7)
        {
          case 563:
            v19 = 27;
            break;
          case 564:
            a2[5].i8[2] = 12;
            result = (*(**result + 232))();
            if (result)
            {
              v21 = a2[2];
              if (!*&v21 || (*(*&v21 + 25) & 4) == 0)
              {
                v8 = 60;
                goto LABEL_129;
              }
            }

            goto LABEL_130;
          case 565:
            v19 = 22;
            break;
          default:
            goto LABEL_130;
        }
      }

      else
      {
        if (v7 <= 658)
        {
          if (v7 == 620)
          {
            v8 = 54;
            goto LABEL_129;
          }

          if (v7 == 625)
          {
            v8 = 16;
            goto LABEL_129;
          }

LABEL_130:
          if ((a2[4].i8[3] & 0x20) == 0 || (*(*&a2[1] + 32) & 0x300807920) != 0x800000)
          {
            goto LABEL_134;
          }

          goto LABEL_132;
        }

        if (v7 == 659)
        {
          v8 = 34;
          goto LABEL_129;
        }

        if (v7 != 662)
        {
          goto LABEL_130;
        }

        v19 = 6;
      }

      goto LABEL_133;
    }

    if (v7 > 548)
    {
      switch(v7)
      {
        case 549:
          v8 = 29;
          goto LABEL_129;
        case 555:
          v8 = 41;
          goto LABEL_129;
        case 562:
          v8 = 26;
          goto LABEL_129;
      }

      goto LABEL_130;
    }

    if (v7 != 524)
    {
      if (v7 == 525)
      {
        v8 = 28;
        goto LABEL_129;
      }

      if (v7 != 533)
      {
        goto LABEL_130;
      }

      goto LABEL_132;
    }

    v9 = 15;
    goto LABEL_126;
  }

  if (v7 <= 696)
  {
    if (v7 > 668)
    {
      if (v7 != 669)
      {
        if (v7 == 695)
        {
          v8 = 37;
          goto LABEL_129;
        }

        if (v7 != 696)
        {
          goto LABEL_130;
        }

        v10 = 14;
        goto LABEL_102;
      }

LABEL_132:
      v19 = 3;
      goto LABEL_133;
    }

    if (v7 != 664)
    {
      if (v7 != 668)
      {
        goto LABEL_130;
      }

      v10 = 5;
      goto LABEL_102;
    }

    v9 = 4;
LABEL_126:
    a2[5].i8[2] = v9;
    goto LABEL_127;
  }

  if ((v7 - 742) > 0x10)
  {
LABEL_95:
    if (v7 == 697)
    {
      v19 = 13;
      goto LABEL_133;
    }

    if (v7 != 698)
    {
      goto LABEL_130;
    }

    v19 = 23;
    goto LABEL_133;
  }

  if (((1 << (v7 + 26)) & 0x6C) == 0)
  {
    if (v7 == 742)
    {
LABEL_93:
      if (a4)
      {
        v20 = a2[5].i32[0];
      }

      else
      {
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        CA::OGL::get_filter_color_matrix(*(a3 + 40), &v36);
        v22 = *(*&a2[3] + 136);
        if (v22)
        {
          v23 = *(v22 + 316);
          if (v23 > 1.0)
          {
            v24 = powf(v23, 1.0 / *(*v6 + 576));
            v36 = vmulq_n_f32(v36, v24);
            v37 = vmulq_n_f32(v37, v24);
            __asm { FMOV            V3.4S, #1.0 }

            *_Q3.i32 = v24;
            v30 = vzip1q_s32(_Q3, _Q3);
            v30.f32[2] = v24;
            v38 = vmulq_n_f32(v38, v24);
            v39 = vmulq_f32(v39, v30);
          }
        }

        v31 = malloc_type_malloc(0x60uLL, 0x100004052888210uLL);
        CA::OGL::uniform_swizzle_4x4_bias_matrix(v31, &v36);
        float_key = CA::Render::KeyValueArray::get_float_key(*(a3 + 40), 358, 0.0);
        if (initialized[0] != -1)
        {
          dispatch_once_f(initialized, 0, init_debug);
        }

        v33 = *&dword_1ED4E9760;
        if (*&dword_1ED4E9760 == 0.0)
        {
          v33 = float_key;
        }

        v34 = 1.0;
        v35 = powf(v33, 1.0 / *(*v6 + 576));
        result = CA::Render::KeyValueArray::get_int_key(*(a3 + 40), 359, 0);
        if (BYTE14(xmmword_1ED4E98AC) != 1)
        {
          v34 = result;
        }

        v31[20] = v35;
        v31[21] = v34;
        *(v31 + 11) = 0;
        a2[11] = v31;
        v20 = a2[5].i32[0] | 0x20;
      }

      if (v7 == 742)
      {
        v18 = 2818048;
      }

      else
      {
        v18 = 2752512;
      }

      v17 = v20 & 0xFF00FFFF;
      goto LABEL_151;
    }

    if (v7 == 758)
    {
      v8 = 11;
      goto LABEL_129;
    }

    goto LABEL_95;
  }

  v11 = *(a3 + 40);
  v36 = 0uLL;
  float_color_key = CA::Render::KeyValueArray::get_float_color_key(v11, 361, &v36);
  v13 = vcvt_f16_f32(v36);
  if (float_color_key)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  a2[8] = vbsl_s8(vdup_n_s16(v14), v13, 0x3C003C003C003C00);
  result = CA::Render::KeyValueArray::get_float_color_key(v11, 362, &v36);
  v15 = vcvt_f16_f32(v36);
  if (result)
  {
    v16 = -1;
  }

  else
  {
    v16 = 0;
  }

  a2[9] = vbsl_s8(vdup_n_s16(v16), v15, 0x3C003C003C003C00);
  v17 = a2[5].i32[0] & 0xFF00FFFF;
  if ((v7 - 744) > 4)
  {
    v18 = 196608;
  }

  else
  {
    v18 = dword_183E243E4[v7 - 744];
  }

LABEL_151:
  a2[5].i32[0] = v17 | v18;
LABEL_134:
  if (a2[5].u8[2] << 16 != 196608)
  {
    *&a2[4] |= 0x100000uLL;
  }

  return result;
}

float CA::OGL::uniform_swizzle_4x4_bias_matrix(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 20);
  *(a1 + 8) = *(a2 + 40);
  *(a1 + 12) = *(a2 + 60);
  *(a1 + 16) = *(a2 + 4);
  *(a1 + 20) = *(a2 + 24);
  *(a1 + 24) = *(a2 + 44);
  *(a1 + 28) = *(a2 + 64);
  *(a1 + 32) = *(a2 + 8);
  *(a1 + 36) = *(a2 + 28);
  *(a1 + 40) = *(a2 + 48);
  *(a1 + 44) = *(a2 + 68);
  *(a1 + 48) = *(a2 + 12);
  *(a1 + 52) = *(a2 + 32);
  *(a1 + 56) = *(a2 + 52);
  *(a1 + 60) = *(a2 + 72);
  *(a1 + 64) = *(a2 + 16);
  *(a1 + 68) = *(a2 + 36);
  *(a1 + 72) = *(a2 + 56);
  result = *(a2 + 76);
  *(a1 + 76) = result;
  return result;
}

BOOL CA::OGL::test_source_requirement(int a1, CA::Mat4Impl *this)
{
  result = 1;
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        return (*(this + 144) & 0x1F) == 0;
      }

      if (a1 != 8)
      {
        return result;
      }

      result = 0;
      if ((*(this + 144) & 0x1F) != 0 || *(this + 12) != 0.0)
      {
        return result;
      }

      v5 = *(this + 13);
      return v5 == 0.0;
    }

    if (a1 != 5)
    {
      return (*(this + 144) & 0x17) == 0;
    }

    if ((*(this + 144) & 0x10) == 0)
    {
      return result;
    }

    if (fabs(*(this + 3)) < 0.000001 && fabs(*(this + 7)) < 0.000001 && fabs(*(this + 15) + -1.0) < 0.000001)
    {
      v6 = vpaddq_f64(vmulq_f64(*this, *this), vmulq_f64(*(this + 2), *(this + 2)));
      return fabs(vsubq_f64(v6, vdupq_laneq_s64(v6, 1)).f64[0]) < 0.000001;
    }

    return 0;
  }

  if (a1 <= 2)
  {
    if (a1 != 1)
    {
      if (a1 == 2 && (*(this + 144) & 0x10) != 0)
      {
        return CA::Mat4Impl::mat4_is_affine_with_z_translate(this, this);
      }

      return result;
    }

    if ((*(this + 144) & 0x10) == 0)
    {
      return result;
    }

    if (*(this + 3) == 0.0)
    {
      v5 = *(this + 7);
      return v5 == 0.0;
    }

    return 0;
  }

  if (a1 == 3)
  {
    if ((*(this + 144) & 0x10) != 0)
    {
      return CA::Mat4Impl::mat4_is_affine(this, this);
    }
  }

  else if ((*(this + 144) & 0x10) != 0)
  {
    return CA::Mat4Impl::mat4_is_rectilinear(this, this);
  }

  return result;
}

uint64_t CA::OGL::prepare_layer_image(CA::OGL::Renderer &,CA::OGL::Layer *,CA::OGL::Gstate const&)::visitor::visit_subclass(uint64_t a1)
{
  result = CA::OGL::should_render_secure_indicators_with_gpu(**(a1 + 8), *(*(a1 + 8) + 8), *(*(a1 + 16) + 16));
  v3 = *(a1 + 16);
  v4 = *(v3 + 32);
  *(v3 + 32) = v4 | 0x4000;
  if ((result & 1) == 0 && (byte_1ED4E989C & 1) == 0)
  {
    *(v3 + 32) = v4 | 0x4008;
  }

  return result;
}

uint64_t ___ZN2CA19IOMobileFramebuffer10swap_beginEPj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = IOMobileFramebufferSwapBegin();
  if (!result)
  {
    *(v2 + 16) = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t CA::OGL::maybe_concatenate(CA::OGL *this, CA::Transform *a2, const CA::Transform *a3, const double *a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if ((*(this + 144) & 0x10) != 0 && (*(a2 + 144) & 0x10) != 0 && !CA::Mat4Impl::mat4_is_affine(this, a2) && !CA::Mat4Impl::mat4_is_affine(a2, v6))
  {
    if (CA::Mat4Impl::mat4_is_affine_with_z_translate(a2, v7))
    {
      v11 = *(a2 + 1);
      v12 = *(a2 + 2);
      v13 = *(a2 + 3);
      v37 = *a2;
      v38 = v11;
      v39 = v12;
      v40 = v13;
      v14 = *(a2 + 5);
      v15 = *(a2 + 6);
      v16 = *(a2 + 7);
      v41 = *(a2 + 4);
      v42 = v14;
      v43 = v15;
      v45 = *(&v16 + 1);
      v44 = 0;
LABEL_9:
      v8 = 1;
      CA::Transform::set(&v46, &v37, 1);
      v19 = &v46;
      v20 = this;
LABEL_13:
      CA::Transform::concat(v20, v19, v17, v18);
      return v8;
    }

    if (CA::Mat4Impl::mat4_is_affine_with_z_translate(this, v10))
    {
      v22 = *(this + 1);
      v23 = *(this + 2);
      v24 = *(this + 3);
      v46 = *this;
      v47 = v22;
      v48 = v23;
      v49 = v24;
      v25 = *(this + 5);
      v26 = *(this + 6);
      v27 = *(this + 7);
      v50 = *(this + 4);
      v51 = v25;
      v52 = v26;
      v54 = *(&v27 + 1);
      v53 = 0;
    }

    else
    {
      if (CA::Mat4Impl::mat4_is_fixed_z_with_z_translate(a2, v21))
      {
        v29 = *(a2 + 1);
        v30 = *(a2 + 2);
        v31 = *(a2 + 3);
        v37 = *a2;
        v38 = v29;
        v39 = v30;
        v40 = v31;
        v32 = *(a2 + 7);
        v43 = *(a2 + 6);
        v45 = *(&v32 + 1);
        v44 = 0;
        v41 = 0uLL;
        v42 = xmmword_183E20E00;
        goto LABEL_9;
      }

      if (!CA::Mat4Impl::mat4_is_fixed_z_with_z_translate(this, v28))
      {
        return 0;
      }

      v33 = *(this + 1);
      v34 = *(this + 2);
      v35 = *(this + 3);
      v46 = *this;
      v47 = v33;
      v48 = v34;
      v49 = v35;
      v36 = *(this + 7);
      v52 = *(this + 6);
      v54 = *(&v36 + 1);
      v53 = 0;
      v50 = 0uLL;
      v51 = xmmword_183E20E00;
    }

    v8 = 1;
    CA::Transform::set(this, &v46, 1);
    v20 = this;
    v19 = a2;
    goto LABEL_13;
  }

  CA::Transform::concat(this, a2, a3, a4);
  return 1;
}

BOOL CA::OGL::prepare_layer_image(CA::OGL::Renderer &,CA::OGL::Layer *,CA::OGL::Gstate const&)::visitor::visit_subclass(uint64_t a1, CA::Render::GradientLayer *this)
{
  result = CA::Render::GradientLayer::is_valid(this);
  if (result)
  {
    *(*(a1 + 16) + 32) |= 0x4000uLL;
  }

  return result;
}

void CA::OGL::MetalContext::add_shared_event(CA::OGL::MetalContext *this, CA::Render::Surface *a2)
{
  if (a2)
  {
    v3 = *(a2 + 42);
    if (v3)
    {
      CA::OGL::MetalContext::SharedEvent::add(this + 2776, v3, 0x200000010);
      v5 = *(a2 + 42);
      if (v5)
      {

        CA::OGL::MetalContext::SharedEvent::add(this + 2912, v5, 0x200000010);
      }
    }
  }
}

void *CA::OGL::prepare_filters(const CA::Render::Filter **a1, uint64_t a2, uint64_t a3, char a4, int *a5, char a6, uint64_t a7)
{
  v13 = 0;
  v23[1] = *MEMORY[0x1E69E9840];
  v23[0] = 0;
  v14 = *(*(a2 + 16) + 256);
  if (v14 && (a6 & 1) == 0)
  {
    v15 = *(v14 + 56);
    if (v15 && (v16 = *(v15 + 624)) != 0)
    {
      v13 = *(v16 + 16);
    }

    else
    {
      v13 = 0;
    }
  }

  if (a3 && v13 < *(a3 + 16))
  {
    do
    {
      CA::OGL::prepare_one_filter(v23, a1, a2, *(a3 + 24 + 8 * v13++), 0, a4, a5);
    }

    while (v13 < *(a3 + 16));
  }

  if (a7)
  {
    CA::OGL::prepare_one_filter(v23, a1, a2, a7, 1, a4, a5);
  }

  v17 = v23[0];
  if (!v23[0])
  {
    return 0;
  }

  v18 = *(v23[0] + 8);
  if (v18)
  {
    v19 = 0;
    do
    {
      v20 = v18;
      v18 = *(v18 + 8);
      *(v20 + 8) = v19;
      v19 = v20;
    }

    while (v18);
    v17[1] = v20;
  }

  v21 = 0;
  do
  {
    result = v17;
    v17 = *v17;
    *result = v21;
    v21 = result;
  }

  while (v17);
  return result;
}

void CA::OGL::prepare_one_filter(uint64_t *a1, const CA::Render::Filter **a2, uint64_t a3, uint64_t a4, char a5, char a6, int *a7)
{
  v100 = *MEMORY[0x1E69E9840];
  v7 = *(a4 + 12);
  if ((v7 & 0x40100) != 0x100 || (v7 & 0x20000) != 0 && !*(*(a3 + 16) + 88) && (*(a2[1] + 1377) & 0x10) != 0)
  {
    return;
  }

  if ((v7 & 0x200) != 0 && !*(a4 + 16))
  {
    *(a4 + 16) = atomic_fetch_add(CA::Render::next_cache_id(void)::cache_id, 1u) + 1;
  }

  memset(v97, 0, sizeof(v97));
  v14 = *(a4 + 48);
  if (v14)
  {
    if (!(*(*v14 + 72))(*(a4 + 48)))
    {
      return;
    }

    v15 = *a7;
    v16 = (*(*v14 + 136))(v14, a4);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    *a7 = v17;
    goto LABEL_14;
  }

  v22 = *(a4 + 24);
  if (v22 > 214)
  {
    if (v22 > 525)
    {
      if (v22 > 678)
      {
        if (v22 > 742)
        {
          if (v22 == 743 || v22 == 746)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (v22 == 679)
          {
            goto LABEL_14;
          }

          if (v22 == 741)
          {
            v18 = *a1;
            v19 = a4;
            v20 = a5;
            goto LABEL_16;
          }
        }

        return;
      }

      if (v22 != 526)
      {
        if (v22 == 540 || v22 == 627)
        {
          goto LABEL_14;
        }

        return;
      }

      v98 = 0uLL;
      if (CA::Render::KeyValueArray::get_float_color_key(*(a4 + 40), 360, &v98))
      {
        v92 = -1;
      }

      else
      {
        v92 = 0;
      }

      v29 = vbsl_s8(vdup_n_s16(v92), vcvt_f16_f32(v98), 0x3C003C003C003C00);
      if (*&v29 == 0x3C003C003C003C00)
      {
        return;
      }

      if ((a6 & 1) != 0 || *a1)
      {
        v98 = 0uLL;
        CA::OGL::get_filter_color_float(*(a4 + 40), &v98, v90, v91);
        if (!v95)
        {
          return;
        }

        DWORD2(v97[1]) = v98.i32[1];
        LODWORD(v97[0]) = v98.i32[0];
        LODWORD(v97[3]) = v98.i32[2];
        memset(v97 + 4, 0, 20);
        memset(&v97[1] + 12, 0, 20);
        memset(&v97[3] + 4, 0, 20);
        *(&v97[4] + 1) = v98.u32[3];
        goto LABEL_131;
      }

LABEL_126:
      *(*(a3 + 176) + 88) = vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(v29), vcvtq_f32_f16(*(*(a3 + 176) + 88))));
      if (*&v29.i16[3] != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
      {
        *(a3 + 32) |= 4uLL;
        *(a3 + 40) |= 1u;
      }

      return;
    }

    if (v22 <= 494)
    {
      switch(v22)
      {
        case 215:
          v18 = *a1;
          if (a6)
          {
            goto LABEL_15;
          }

          if (v18)
          {
            goto LABEL_15;
          }

          if ((*(a3 + 32) & 0x300007FE0) != 0x20)
          {
            goto LABEL_15;
          }

          if (*(*(a3 + 176) + 88) != 0x3C003C003C003C00)
          {
            goto LABEL_15;
          }

          v82 = *(*(a3 + 24) + 16);
          __asm { FMOV            V1.4S, #1.0 }

          v84 = vuzp2q_s32(vextq_s8(v82, v82, 4uLL), _Q1);
          v84.i32[2] = HIDWORD(*(*(a3 + 24) + 16));
          if ((vminv_u16(vmovn_s32(vceqq_f32(v82, v84))) & 1) == 0 || v82.f32[0] <= 0.001)
          {
            goto LABEL_15;
          }

          v96 = *(*(a3 + 24) + 16);
          CA::Render::Update::render_edr_factor();
          v85 = *(*a2 + 144);
          v88 = CA::OGL::edr_gain_filter_gain(*(a4 + 40), a2[1], v86, v87, v85);
          v89 = powf(*&v96, v85);
          v50 = powf((v88 * v89) + 1.0, 1.0 / v85) / *&v96;
          break;
        case 216:
          v45 = *(a4 + 40);
          if (CA::Render::KeyValueArray::get_int_key(v45, 320, 0) && *(a2[1] + 296) <= 1.0)
          {
            return;
          }

          if (CA::Render::KeyValueArray::get_int_key(v45, 323, 1))
          {
            goto LABEL_14;
          }

          CA::Render::Update::render_edr_factor();
          v46 = *(*a2 + 144);
          v49 = CA::OGL::edr_gain_filter_gain(*(a4 + 40), a2[1], v47, v48, v46);
          v50 = powf(v49 + 1.0, 1.0 / v46);
          break;
        case 304:
          goto LABEL_14;
        default:
          return;
      }

      v51 = *(a3 + 176);
      _H1 = v51[44];
      __asm { FCVT            S1, H1 }

      _S1 = v50 * _S1;
      __asm { FCVT            H1, S1 }

      v51[44] = LOWORD(_S1);
      LOWORD(_S1) = v51[45];
      __asm { FCVT            S1, H1 }

      _S1 = v50 * _S1;
      __asm { FCVT            H1, S1 }

      v51[45] = LOWORD(_S1);
      LOWORD(_S1) = v51[46];
      __asm { FCVT            S1, H1 }

      _S0 = v50 * _S1;
      __asm { FCVT            H0, S0 }

      v51[46] = LOWORD(_S0);
      return;
    }

    if (v22 > 498)
    {
      if (v22 == 499 || v22 == 516)
      {
        goto LABEL_14;
      }

      return;
    }

    if ((v22 - 495) < 2)
    {
      float_key = CA::Render::KeyValueArray::get_float_key(*(a4 + 40), 325, 1.0);
      if (float_key == 0.0)
      {
        return;
      }

      goto LABEL_14;
    }

    if (v22 != 497)
    {
      return;
    }

    memset(v97, 0, 60);
    *(&v97[3] + 12) = xmmword_183E20E70;
    v41 = CA::Render::KeyValueArray::get_int_key(*(a4 + 40), 398, 0) == 0;
    v42 = *a1;
    v43 = *a2;
    v44 = v97;
LABEL_134:
    v93 = a4;
    v94 = a7;
    goto LABEL_135;
  }

  if (v22 > 110)
  {
    if (v22 > 119)
    {
      if (v22 > 176)
      {
        if (v22 == 177 || v22 == 204)
        {
          goto LABEL_14;
        }

        return;
      }

      if (v22 != 120)
      {
        if (v22 != 125)
        {
          return;
        }

        goto LABEL_14;
      }

      goto LABEL_68;
    }

    if (v22 > 113)
    {
      if (v22 == 114)
      {
        v67 = *(a4 + 40);
        if (CA::Render::KeyValueArray::get_float_key(v67, 325, 1.0) == 0.0)
        {
          return;
        }

        v99 = 0uLL;
        CA::OGL::get_filter_color_float(v67, &v99, v68, v69);
        if ((v70 & 1) == 0)
        {
          __asm { FMOV            V0.4S, #1.0 }

          v99 = _Q0;
        }

        memset(&v98, 0, 80);
        v72 = *(a4 + 40);
        v73 = CA::Render::KeyValueArray::get_float_key(v72, 332, 0.0);
        v74 = CA::Render::KeyValueArray::get_float_key(v72, 325, 1.0);
        CA::ColorMatrix::set_color_monochrome(&v98, v73, v74, &v99, v75, v76, v77, v78, v79);
        v42 = *a1;
        v43 = *a2;
        v44 = &v98;
        goto LABEL_132;
      }

      if (v22 != 117)
      {
        return;
      }

      v37 = CA::Render::KeyValueArray::get_float_key(*(a4 + 40), 325, 1.0);
      *&v37 = v37;
      if (*&v37 == 1.0)
      {
        return;
      }

      *&v37 = fmaxf(*&v37, 0.0);
      *(&v97[4] + 1) = 1065353216;
      *&v97[2] = 0;
      memset(&v97[3] + 4, 0, 20);
      *v97 = (*&v37 * 0.7873) + 0.2126;
      *(v97 + 4) = vmls_lane_f32(0x3D93DD983F371759, 0x3D93DD983F371759, *&v37, 0);
      v38 = vmul_n_f32(0x3E91D14E3E59B3D0, *&v37);
      v39 = vsub_f32(1046066128, v38);
      v40 = vzip1_s32(v39, *(v97 + 4));
      v39.i32[1] = vadd_f32(v38, vdup_n_s32(0x3F371759u)).i32[1];
      *(&v97[1] + 4) = v39;
      HIDWORD(v97[1]) = DWORD2(v97[0]);
      *(&v97[2] + 1) = v40;
      *&v97[3] = (*&v37 * 0.9278) + 0.0722;
LABEL_131:
      v42 = *a1;
      v43 = *a2;
      v44 = v97;
LABEL_132:
      v93 = a4;
      v94 = a7;
      v41 = 1;
LABEL_135:
      v21 = CA::OGL::add_color_matrix(v42, v93, v43, v44, v94, v41);
      goto LABEL_17;
    }

    if (v22 == 111)
    {
      v63 = *(*a2 + 75);
      if (v63 && (v64 = (*(*v63 + 16))(v63)) != 0 && (*(*v64 + 880))(v64))
      {
        if ((*(*a2 + 692) & 2) == 0 || (v65 = *(a2[1] + 172), (v65 & 0x40000000) != 0))
        {
          LODWORD(v66) = 1;
        }

        else
        {
          v66 = HIDWORD(v65) & 1;
        }
      }

      else
      {
        LODWORD(v66) = 0;
      }

      if (CA::Render::KeyValueArray::get_int_key(*(a4 + 40), 410, 0) != v66)
      {
        return;
      }

      goto LABEL_130;
    }

    if (v22 != 113)
    {
      return;
    }

    v24 = *(a4 + 40);
    CA::OGL::get_filter_color_matrix(v24, v97);
    int_key = CA::Render::KeyValueArray::get_int_key(v24, 398, 0);
    v26 = int_key;
    v27 = *a1;
    if (!*a1 && !int_key && (a6 & 1) == 0 && CA::ColorMatrix::is_diagonal(v97))
    {
      *v28.f32 = vmul_n_f32(__PAIR64__(DWORD2(v97[1]), v97[0]), *(&v97[4] + 2));
      v28.f32[2] = *&v97[3] * *(&v97[4] + 2);
      v28.i32[3] = DWORD2(v97[4]);
      v29 = vcvt_f16_f32(v28);
      goto LABEL_126;
    }

    v41 = v26 == 0;
    v43 = *a2;
    v44 = v97;
    v42 = v27;
    goto LABEL_134;
  }

  if (v22 > 103)
  {
    if (v22 <= 108)
    {
      if (v22 == 104)
      {
        v31 = CA::Render::KeyValueArray::get_float_key(*(a4 + 40), 325, 1.0);
        if (v31 == 0.0)
        {
          return;
        }

        LODWORD(v97[0]) = 1065353216;
        *(&v97[4] + 1) = 1065353216;
        *(v97 + 4) = 0uLL;
        *(&v97[1] + 4) = 0x3F80000000000000;
        *(&v97[2] + 12) = 0x3F80000000000000;
        *(&v97[1] + 12) = 0uLL;
        memset(&v97[3] + 4, 0, 20);
      }

      else
      {
        if (v22 != 106)
        {
          return;
        }

        v30 = CA::Render::KeyValueArray::get_float_key(*(a4 + 40), 325, 1.0);
        if (v30 == 1.0)
        {
          return;
        }

        *(&v97[4] + 1) = 1065353216;
        memset(v97 + 4, 0, 20);
        memset(&v97[1] + 12, 0, 20);
        memset(&v97[3] + 4, 0, 20);
        *&v97[3] = v30;
        *(&v97[1] + 2) = v30;
        *v97 = v30;
        v31 = 0.5 - (v30 * 0.5);
      }

      *(&v97[3] + 2) = v31;
      *(&v97[2] + 1) = v31;
      *&v97[1] = v31;
      goto LABEL_131;
    }

    if (v22 == 109)
    {
      v80 = *(a4 + 40);
      v81 = CA::Render::KeyValueArray::get_float_key(v80, 326, 0.0);
      if (v81 == 0.0)
      {
        return;
      }

      if (CA::Render::KeyValueArray::get_int_key(v80, 384, 0))
      {
        goto LABEL_14;
      }

      CA::ColorMatrix::set_hue_rotate(v97, v81);
      goto LABEL_131;
    }

LABEL_130:
    *(&v97[4] + 1) = 1065353216;
    v97[0] = 0xBF800000uLL;
    *(&v97[1] + 4) = 0xBF80000000000000;
    *(&v97[2] + 12) = 0xBF80000000000000;
    *(&v97[3] + 4) = 0x3F80000000000000uLL;
    DWORD1(v97[4]) = 0;
    *(&v97[2] + 4) = 1065353216;
    LODWORD(v97[1]) = 1065353216;
    goto LABEL_131;
  }

  if (v22 <= 66)
  {
    if (v22 != 28 && v22 != 30)
    {
      return;
    }

LABEL_14:
    v18 = *a1;
LABEL_15:
    v19 = a4;
    v20 = 0;
LABEL_16:
    v21 = CA::OGL::add_primitive_filter(v18, v19, v20);
LABEL_17:
    *a1 = v21;
    return;
  }

  if (v22 == 67)
  {
    if (fabs(CA::Render::KeyValueArray::get_float_key(*(a4 + 40), 325, 1.0) + -0.5) <= 0.001)
    {
      return;
    }

    goto LABEL_14;
  }

  if (v22 != 102)
  {
    return;
  }

LABEL_68:
  v98 = 0uLL;
  float_color_key = CA::Render::KeyValueArray::get_float_color_key(*(a4 + 40), 360, &v98);
  v33 = 1.0;
  v34 = 1.0;
  v35 = 1.0;
  if (!float_color_key || (v34 = v98.f32[1], v35 = v98.f32[0], v33 = v98.f32[2], v98.f32[0] != 0.0) || v98.f32[1] != 0.0 || v98.f32[2] != 0.0)
  {
    LODWORD(v97[0]) = 1065353216;
    *(&v97[4] + 1) = 1065353216;
    *(v97 + 4) = 0uLL;
    *(&v97[1] + 4) = 0x3F80000000000000;
    *(&v97[2] + 12) = 0x3F80000000000000;
    *(&v97[1] + 12) = 0uLL;
    memset(&v97[3] + 4, 0, 20);
    if (*(a4 + 24) == 120)
    {
      v36 = -1;
    }

    else
    {
      v36 = 1;
    }

    *&v97[1] = v35 * v36;
    *(&v97[2] + 1) = v34 * v36;
    *(&v97[3] + 2) = v33 * v36;
    goto LABEL_131;
  }
}

void *CA::OGL::add_primitive_filter(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v7 = 0;
      do
      {
        v8 = v6;
        v6 = *(v6 + 8);
        *(v8 + 8) = v7;
        v7 = v8;
      }

      while (v6);
      *(a1 + 8) = v8;
    }
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x40uLL, 0x10600405D376E66uLL);
  result[2] = a2;
  result[5] = *(a2 + 16);
  *(result + 57) = a3;
  *result = a1;
  return result;
}

BOOL CA::OGL::can_filter_in_place(void *a1)
{
  if (a1[1])
  {
    return 0;
  }

  v2 = a1[6];
  v3 = a1[2];
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  result = v4;
  if (v2)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    v6 = *(v3 + 24);
    if (v6 == 741)
    {
      return CA::Render::KeyValueArray::get_int_key(*(v3 + 40), 331, 0) == 0;
    }

    else
    {
      return (*(v3 + 12) & 0x40100) != 0x100 || CAAtomIndexInArray(25, CA::Render::Filter::is_one_to_one(void)const::atoms, v6) != -1;
    }
  }

  return result;
}

uint64_t CA::OGL::init_gstate(uint64_t result, uint64_t a2)
{
  *(result + 32) = 0x3C003C003C003C00;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  v2 = *(result + 80) | 1;
  *(result + 80) = *(result + 80) & 0xFD00 | 1;
  *(result + 72) = 0;
  *result = 0;
  if (a2)
  {
    *(result + 8) = *(a2 + 8);
    *(result + 24) = *(a2 + 24);
    *(result + 64) = *(a2 + 64);
    v3 = *(a2 + 80) & 0x100 | v2 & 0xFC01;
    *(result + 80) = v3;
    v4 = v3 & 0xFBFF | *(a2 + 80) & 0x400;
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 64) = 1065353216;
    v4 = v2 & 0xF801 | 0x400;
  }

  *(result + 80) = v4;
  return result;
}

_DWORD *CA::OGL::ImagingNode::prepare(CA::OGL::ImagingNode *this)
{
  v2 = 0;
  v3 = this + 24;
  v4 = 1;
  do
  {
    v5 = v4;
    result = *&v3[8 * v2];
    if (result)
    {
      if ((*(this + 238) & 0x80) != 0)
      {
        result[59] |= 0x800000u;
        result = *&v3[8 * v2];
      }

      result = (*(*result + 96))(result);
      v7 = *&v3[8 * v2];
      v8 = *(v7 + 236);
      if ((v8 & 0x600000) != 0)
      {
        *(this + 59) |= 0x200000u;
        v8 = *(v7 + 236);
      }

      if ((v8 & 0x1000000) != 0)
      {
        *(this + 59) |= 0x1000000u;
      }
    }

    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  return result;
}

uint64_t CA::OGL::filter_node(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v12 = *(a1 + 72);
  if (v12)
  {
    *(a1 + 72) = *v12;
  }

  else
  {
    v12 = x_heap_malloc_small_(*(a1 + 56), 0x110uLL);
  }

  CA::OGL::ImagingNode::ImagingNode(v12, a1, a2, a6, 0);
  *v12 = &unk_1EF1FD850;
  *(v12 + 240) = *(v12 + 240) & 0xFE | a5;
  *(v12 + 248) = a3;
  CA::OGL::init_gstate(v12 + 56, a4);
  *(v12 + 236) = *(v12 + 236) & 0xFFDE0000 | 0x200040;
  return v12;
}

uint64_t CA::OGL::prepare_layer_image(CA::OGL::Renderer &,CA::OGL::Layer *,CA::OGL::Gstate const&)::visitor::visit_subclass(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(*(v2 + 16) + 256);
  if (v3)
  {
    v5 = *(v3 + 72);
    v4 = *(v3 + 76);
    if (v5 < v4)
    {
      v4 = v5;
    }

    if (v4 >= 1)
    {
      v6 = *(a2 + 12);
      if ((v6 & 0x100) != 0)
      {
        *(v2 + 32) |= 0x4000uLL;
        v6 = *(a2 + 12);
      }

      if ((v6 & 0x500) != 0)
      {
        *(v2 + 40) |= 8u;
      }
    }
  }

  if ((*(a2 + 13) & 0x10) != 0)
  {
    *(v2 + 32) |= 0x8000uLL;
  }

  return result;
}

{
  if (*(a2 + 16) == 3)
  {
    *(*(result + 16) + 32) |= 0x4000uLL;
  }

  return result;
}

{
  if (*(a2 + 28) > 0.0)
  {
    *(*(result + 16) + 32) = *(*(result + 16) + 32) & 0xFFFFFFFFFFFFBFDFLL | 0x4000;
  }

  return result;
}

uint64_t CA::OGL::FilterNode::needs_surface(CA::OGL::FilterNode *this)
{
  v2 = *(this + 31);
  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = *(this + 68);
  if (v5 & 0xF0) == 0 && ((0xC533u >> (v5 & 0xF)))
  {
    return 1;
  }

  v7 = *(v2 + 16);
  if (v7)
  {
    v8 = *(v7 + 48);
    if (v8 && (*(*v8 + 72))(*(v7 + 48)))
    {
      LODWORD(result) = (*(*v8 + 88))(v8, v7, *(v4 + 24), *v3, this + 56);
    }

    else
    {
      v9 = *(v7 + 24);
      LODWORD(result) = 1;
      if (v9 > 66)
      {
        if (v9 != 304)
        {
          if (v9 == 67)
          {
            LODWORD(result) = *(this + 11) == 0x3C003C003C003C00;
          }

          return result ^ 1;
        }
      }

      else if (v9 != 28 && v9 != 30)
      {
        return result ^ 1;
      }

      v11 = *(this + 136);
      LODWORD(result) = v11 != 12 && (v11 - 1) < 0x19;
    }

    return result ^ 1;
  }

  result = 1;
  if (*(v2 + 48))
  {
    return result ^ 1;
  }

  return result;
}

uint64_t CA::OGL::FilterNode::prepare(CA::OGL::FilterNode *this)
{
  result = CA::OGL::ImagingNode::prepare(this);
  v3 = *(*(this + 31) + 16);
  if (v3 && *(v3 + 24) == 741)
  {
    result = CA::Render::KeyValueArray::get_int_key(*(v3 + 40), 331, 0);
    if (result)
    {
      *(this + 59) |= 0x1000000u;
    }
  }

  return result;
}

void CA::OGL::prepare_layer_image(CA::OGL::Renderer &,CA::OGL::Layer *,CA::OGL::Gstate const&)::visitor::visit_subclass(uint64_t a1, CA::Render::SDFLayer *this)
{
  v3 = *(a1 + 16);
  v4 = *(this + 20);
  if (v4 && *(v3 + 192))
  {
    if (*(v4 + 16))
    {
      v4 = *(v4 + 16);
    }

    *(v4 + 380) = 1;
  }

  *(v3 + 32) |= 0x4000000000uLL;
  CA::Render::SDFLayer::sdf_padding(this);
  *(v3 + 104) = v5;
  *(v3 + 108) = v6;
  *(v3 + 192) = v3;
  if (*(this + 136) == 1)
  {
    *(v3 + 32) |= 0x8000uLL;
  }
}

uint64_t CA::OGL::prepare_layer_image(CA::OGL::Renderer &,CA::OGL::Layer *,CA::OGL::Gstate const&)::visitor::visit_subclass(uint64_t result)
{
  *(*(result + 16) + 32) |= 0x8000002000uLL;
  return result;
}

{
  *(*(result + 16) + 32) |= 0x200000000000uLL;
  return result;
}

{
  v1 = *(result + 16);
  *(v1 + 32) |= 0x4000uLL;
  *(*(v1 + 176) + 236) |= 0x1000000u;
  *(*(*(result + 16) + 176) + 236) |= 0x200000u;
  return result;
}

{
  *(*(result + 16) + 32) |= 0x10000000uLL;
  return result;
}

uint64_t CA::OGL::GaussianBlurFilter::get_bounds(CA::OGL::GaussianBlurFilter *this, const CA::Render::Filter *a2, const CA::Render::Layer *a3, Rect *a4)
{
  if (CA::Render::KeyValueArray::get_rect_key(*(a2 + 5), a4))
  {
    return 1;
  }

  v7 = *(a2 + 5);
  if (!CA::Render::KeyValueArray::get_int_key(v7, 392, 0))
  {
    result = CA::Render::KeyValueArray::get_int_key(v7, 385, 0);
    if (!result)
    {
      return result;
    }
  }

  v9 = *(a3 + 17);
  if (!v9 || (v10 = *v9) == 0 || v10[12] != 3)
  {
    *&a4->top = *(a3 + 72);
    *&a4[2].top = *(a3 + 88);
    return 1;
  }

  v11 = *(*v10 + 184);

  return v11();
}

uint64_t CA::Render::KeyValueArray::get_rect_key(uint64_t this, Rect *a2)
{
  if (this)
  {
    v2 = *(this + 16);
    if (!v2)
    {
      return 0;
    }

    v3 = 0;
    while (1)
    {
      v4 = *(this + 24 + 8 * v3);
      if (*(v4 + 16) == 357)
      {
        break;
      }

      if (v2 == ++v3)
      {
        return 0;
      }
    }

    if ((v3 & 0x80000000) == 0 && (v5 = *(v4 + 24)) != 0 && *(v5 + 12) == 62 && *(v5 + 16) >= 4u)
    {
      v6 = *(v5 + 24);
      v7 = vsubq_f64(*(v5 + 40), v6);
      *&a2->top = v6;
      *&a2[2].top = v7;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return this;
}

uint64_t CA::OGL::metal_pixel_format_Bpp(CA::OGL *this, MTLPixelFormat a2)
{
  if (this > 114)
  {
    if (this - 550 < 2)
    {
      return 5;
    }

    if (this - 552 >= 2 && this != 115)
    {
      return 4;
    }

    return 8;
  }

  if (this <= 0x2B)
  {
    if (((1 << this) & 0xA00C0000000) != 0)
    {
      return 2;
    }

    if (((1 << this) & 0xC02) != 0)
    {
      return 1;
    }
  }

  if (this != 105)
  {
    if (this != 110)
    {
      return 4;
    }

    return 8;
  }

  return 16;
}

double CA::OGL::Context::bind_supercircle(CA::OGL::Context *this, unsigned int a2, int a3, BOOL a4, BOOL a5, double *a6, int a7, float *a8)
{
  v8 = *(this + 2);
  *(v8 + 16 * a2 + 96) = xmmword_183E21110;
  *(v8 + a2 + 17) = byte_183E21C3C[a7];
  if (a8)
  {
    *&v9 = *a8;
  }

  else
  {
    *&v9 = 0;
  }

  *(&v9 + 1) = v9;
  *(*(this + 2) + 48 * a2 + 432) = v9;
  __asm { FMOV            V0.2S, #-1.0 }

  result = -_D0;
  *a6 = result;
  return result;
}

uint64_t CA::OGL::combine_node(uint64_t **a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, CA::OGL::ImagingNode *this, float a7, float a8, float a9, float a10)
{
  v10 = this;
  if (a3 == 6)
  {
    v19 = *(this + 38);
    if (v19 < 0)
    {
      (*(*this + 40))(this, this + 144);
      v19 = *(v10 + 38);
    }

    if (v19 >= *(v10 + 39))
    {
      v19 = *(v10 + 39);
    }

    if (v19 <= 0)
    {
      v21 = *(v10 + 57) - 1;
      --*(v10 + 228);
      if (!v21)
      {
        CA::OGL::ImagingNode::finalize(v10, a1);
      }

      v10 = 0;
      v20 = 3;
    }

    else
    {
      v20 = 6;
    }
  }

  else
  {
    v20 = a3;
  }

  v22 = a1[9];
  if (v22)
  {
    a1[9] = *v22;
  }

  else
  {
    v22 = x_heap_malloc_small_(a1[7], 0x110uLL);
  }

  CA::OGL::ImagingNode::ImagingNode(v22, a1, a2, a5, v10);
  *v22 = &unk_1EF1FDBB0;
  *(v22 + 240) = v20;
  *(v22 + 244) = a7;
  *(v22 + 248) = a8;
  *(v22 + 252) = a9;
  *(v22 + 256) = a10;
  CA::OGL::init_gstate(v22 + 56, a4);
  *(v22 + 236) |= 0x200000u;
  return v22;
}

BOOL CA::OGL::MetalContext::function_supported(CA::OGL::MetalContext *this)
{
  v1 = *(this + 2);
  v2 = *(v1 + 16);
  if ((CA::OGL::MetalContext::texture_function_info[8 * v2] & 0x3F) == 0)
  {
    return 1;
  }

  v3 = CA::OGL::tex_image_count[v2];
  if (!v3)
  {
    return 1;
  }

  v4 = (v1 + 17);
  v5 = v3 - 1;
  do
  {
    v7 = *v4++;
    v6 = v7;
    result = v7 == 0;
    v10 = v5-- != 0;
  }

  while (!v6 && v10);
  return result;
}

uint64_t CA::OGL::CombineNode::compute_dod(uint64_t this, int32x2_t *a2)
{
  v3 = this;
  v4 = *(this + 240);
  if (v4 > 0xE)
  {
    goto LABEL_22;
  }

  if (((1 << v4) & 0x4B4A) != 0)
  {
LABEL_3:
    v5 = *(this + 24);
    v6 = v5[19].i32[0];
    if (v6 < 0)
    {
      this = (*(*v5 + 40))(v5, v5 + 18);
      v6 = v5[19].i32[0];
    }

    *a2 = v5[18];
    v7 = v5[19].i32[1];
    a2[1].i32[0] = v6;
    a2[1].i32[1] = v7;
    return this;
  }

  if (((1 << v4) & 0x480) != 0)
  {
    v8 = *(this + 24);
    v9 = v8[19].i32[0];
    if (v9 < 0)
    {
      (*(*v8 + 40))(*(this + 24), v8 + 18);
      v9 = v8[19].i32[0];
    }

    *a2 = v8[18];
    v10 = v8[19].i32[1];
    a2[1].i32[0] = v9;
    a2[1].i32[1] = v10;
    v11 = *(v3 + 32);
    if (v11[19].i32[0] < 0)
    {
      (*(*v11 + 40))(v11, v11 + 18);
    }

    v12 = v11[18];
    v13 = v11[19];

    return CA::BoundsImpl::Union(a2, v12, v13);
  }

  if (v4 != 5)
  {
LABEL_22:
    if (v4 != 77)
    {
      return this;
    }

    goto LABEL_3;
  }

  v14 = *(this + 24);
  v15 = v14[19].i32[0];
  if (v15 < 0)
  {
    (*(*v14 + 40))(*(this + 24), v14 + 18);
    v15 = v14[19].i32[0];
  }

  *a2 = v14[18];
  v16 = v14[19].i32[1];
  a2[1].i32[0] = v15;
  a2[1].i32[1] = v16;
  v17 = *(v3 + 32);
  if (v17[19].i32[0] < 0)
  {
    (*(*v17 + 40))(v17, v17 + 18);
  }

  v18 = v17[18];
  v19 = v17[19];

  return CA::BoundsImpl::intersect(a2, v18, v19);
}

uint64_t CA::OGL::CombineNode::propagate_roi(CA::OGL::CombineNode *this, const CA::Bounds *a2)
{
  v4 = 0;
  v5 = (this + 24);
  v6 = 1;
  do
  {
    v7 = v6;
    result = v5[v4];
    if (result)
    {
      result = (*(*result + 56))(result, a2);
    }

    v6 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  v9 = *v5;
  if (*v5)
  {
    if (*(this + 4))
    {
      if (*(this + 240) != 5)
      {
        *(v9 + 228) |= 0x200uLL;
        v9 = *(this + 4);
        v10 = 512;
LABEL_12:
        *(v9 + 228) |= v10;
        return result;
      }

      *(v9 + 236) |= 0x2000000u;
      *(*(this + 4) + 236) |= 0x2000000u;
      v9 = *(this + 4);
    }

    if ((*(v9 + 238) & 0x20) != 0)
    {
      return result;
    }

    v10 = 0x80000000000;
    goto LABEL_12;
  }

  return result;
}

void CA::OGL::emit_combine(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4, CA::Shape *a5, unsigned int *a6)
{
  v72[3] = *MEMORY[0x1E69E9840];
  *(*(a1 + 16) + 16) = a2;
  if (a3)
  {
    CA::OGL::Context::bind_surface(a1, a3, 0, 0, 0, 0.0);
    v11 = a3[12];
    v12 = a3[13];
    v13 = a3[14];
    v14 = a3[15];
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  v67 = __PAIR64__(v12, v11);
  v68 = v13;
  v69 = v14;
  if (a4)
  {
    CA::OGL::Context::bind_surface(a1, a4, 1u, 0, 0, 0.0);
    v15 = *(a4 + 48);
  }

  else
  {
    v15 = 0uLL;
  }

  v64 = v15;
  if ((*(*a1 + 1072))(a1))
  {
    v65 = 0;
    v66 = 0;
    v16 = &v67;
    if (a2 <= 0x36)
    {
      if (((1 << a2) & 0x78000003FC1B5ELL) != 0)
      {
LABEL_10:
        v62 = CA::Shape::intersect(a5, v16);
LABEL_11:
        v17 = 1;
        goto LABEL_12;
      }

      if (((1 << a2) & 0x480) != 0)
      {
        v65 = __PAIR64__(v12, v11);
        v66 = __PAIR64__(v14, v13);
        v53 = vextq_s8(v64, v64, 8uLL).u64[0];
        v54 = vclez_s32(__PAIR64__(v14, v13));
        v55 = vpmax_u32(v54, v54).u32[0];
        v56 = vclez_s32(v53);
        v57 = vpmax_u32(v56, v56).u32[0];
        if ((v55 & 0x80000000) != 0)
        {
          if ((v57 & 0x80000000) != 0)
          {
            v62 = 1;
            goto LABEL_11;
          }

          v65 = v64.i64[0];
          v66.i32[0] = v64.i32[2];
          v60 = v64.i32[3];
        }

        else
        {
          if ((v57 & 0x80000000) != 0)
          {
LABEL_79:
            v16 = &v65;
            goto LABEL_10;
          }

          v58 = vmin_s32(v65, *v64.i8);
          v59 = vsub_s32(vmax_s32(vadd_s32(v65, __PAIR64__(v14, v13)), vadd_s32(*v64.i8, v53)), v58);
          v65 = v58;
          v66.i32[0] = v59.i32[0];
          v60 = v59.i32[1];
        }

        v66.i32[1] = v60;
        goto LABEL_79;
      }

      if (a2 == 5)
      {
        v65 = __PAIR64__(v12, v11);
        v66 = __PAIR64__(v14, v13);
        v16 = &v65;
        if ((CA::BoundsImpl::intersect(&v65, *v64.i8, *&vextq_s8(v64, v64, 8uLL)) & 1) == 0)
        {
          v19 = *(*(a1 + 16) + 8);
          v20 = v19 >> 16;
          v21 = HIDWORD(v19);
          v22 = HIWORD(v19);
          v61 = 1;
          v62 = 1;
          goto LABEL_24;
        }

        goto LABEL_10;
      }
    }

    v17 = 0;
    if (a2 - 75 > 0x11)
    {
      v62 = a5;
    }

    else
    {
      v62 = a5;
      if (((1 << (a2 - 75)) & 0x30C01) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    v18 = *(a1 + 16);
    v19 = *(v18 + 8);
    v20 = v19 >> 16;
    v21 = HIDWORD(v19);
    v22 = HIWORD(v19);
    v61 = v17;
    if (a2 - 8 >= 2)
    {
      if (a2 == 7)
      {
        _S0 = *a6;
        __asm { FCVT            H0, S0 }

        LOWORD(v19) = _S0;
        LOWORD(v20) = _S0;
        LOWORD(v21) = _S0;
        v22 = _S0;
      }
    }

    else
    {
      *(v18 + 24) = *a6;
    }

LABEL_24:
    v29 = CA::OGL::Context::need_transparent_source(a1);
    v30 = *(a1 + 64);
    if (v30 == 1)
    {
      *(a1 + 64) = 0;
    }

    *(a1 + 144) = 0;
    v31 = a1 + 1386;
    *(a1 + 112) = a1 + 1386;
    *(a1 + 120) = xmmword_183E20E50;
    v72[1] = 0;
    v72[2] = 0;
    v72[0] = v62;
    v32 = (v21 << 32) | (v22 << 48) | (v20 << 16) | v19;
    v33 = v67;
    while (CA::ShapeIterator::iterate(v72, &v65))
    {
      if (*(a1 + 108))
      {
        v34 = 6;
      }

      else
      {
        v34 = 4;
      }

      if ((*(a1 + 144) + 4) > *(a1 + 152) || (v35 = *(a1 + 128)) != 0 && *(a1 + 120) + v34 > v35)
      {
        *(a1 + 1384) |= 0x20u;
        CA::OGL::Context::array_flush(a1);
        *(a1 + 144) = 0;
        *(a1 + 112) = v31;
        *(a1 + 120) = xmmword_183E20E50;
      }

      CA::OGL::Context::array_rect(a1, v65, SHIDWORD(v65), (v66.i32[0] + v65), (v66.i32[1] + HIDWORD(v65)));
      v36 = *(a1 + 136) + 48 * *(a1 + 144);
      *(v36 - 160) = v32;
      *(v36 - 112) = v32;
      *(v36 - 64) = v32;
      *(v36 - 16) = v32;
      if (a3)
      {
        v37 = *(a1 + 136) + 48 * *(a1 + 144);
        v38 = vsub_s32(v65, v33);
        v39 = vcvt_f32_s32(v38);
        v40 = vcvt_f32_s32(vadd_s32(v66, v38));
        *(v37 - 176) = v39;
        *(v37 - 128) = __PAIR64__(v39.u32[1], v40.u32[0]);
        *(v37 - 80) = v40;
        v39.i32[1] = v40.i32[1];
        *(v37 - 32) = v39;
      }

      if (a4)
      {
        v41 = *(a1 + 136) + 48 * *(a1 + 144);
        v42 = vsub_s32(v65, *v64.i8);
        v43 = vcvt_f32_s32(v42);
        v44 = vcvt_f32_s32(vadd_s32(v66, v42));
        *(v41 - 168) = v43;
        *(v41 - 120) = __PAIR64__(v43.u32[1], v44.u32[0]);
        *(v41 - 72) = v44;
        v43.i32[1] = v44.i32[1];
        *(v41 - 24) = v43;
      }
    }

    CA::OGL::Context::array_flush(a1);
    if (!v29)
    {
      goto LABEL_56;
    }

    v47 = CA::Shape::subtract(a5, v62, v45, v46);
    v48 = v47;
    if (v47)
    {
      if (v47 == 1)
      {
LABEL_55:
        CA::Shape::unref(v48);
LABEL_56:
        if (v30)
        {
          *(a1 + 64) = 1;
        }

        if (v61)
        {
          CA::Shape::unref(v62);
        }

        if (a4)
        {
          CA::OGL::Context::unbind_surface(a1, a4, 1);
        }

        if (a3)
        {
          CA::OGL::Context::unbind_surface(a1, a3, 0);
        }

        *(*(a1 + 16) + 16) = 0;
        return;
      }
    }

    else if (*(v47 + 4) == 6)
    {
      goto LABEL_55;
    }

    v49 = *(a1 + 16);
    memcpy(buf, v49, sizeof(buf));
    v70[2] = 0;
    *buf = v49;
    *(a1 + 16) = buf;
    buf[16] = 0;
    *(a1 + 144) = 0;
    *(a1 + 112) = v31;
    *(a1 + 120) = xmmword_183E20E50;
    v70[0] = v48;
    v70[1] = 0;
    while (CA::ShapeIterator::iterate(v70, &v65))
    {
      if (*(a1 + 108))
      {
        v50 = 6;
      }

      else
      {
        v50 = 4;
      }

      if ((*(a1 + 144) + 4) > *(a1 + 152) || (v51 = *(a1 + 128)) != 0 && *(a1 + 120) + v50 > v51)
      {
        *(a1 + 1384) |= 0x20u;
        CA::OGL::Context::array_flush(a1);
        *(a1 + 144) = 0;
        *(a1 + 112) = v31;
        *(a1 + 120) = xmmword_183E20E50;
      }

      CA::OGL::Context::array_rect(a1, v65, SHIDWORD(v65), (v66.i32[0] + v65), (v66.i32[1] + HIDWORD(v65)));
      v52 = *(a1 + 136) + 48 * *(a1 + 144);
      *(v52 - 160) = 0;
      *(v52 - 112) = 0;
      *(v52 - 64) = 0;
      *(v52 - 16) = 0;
    }

    CA::OGL::Context::array_flush(a1);
    *(a1 + 16) = *buf;
    goto LABEL_55;
  }

  if (a4)
  {
    CA::OGL::Context::unbind_surface(a1, a4, 1);
  }

  if (a3)
  {
    CA::OGL::Context::unbind_surface(a1, a3, 0);
  }

  *(*(a1 + 16) + 16) = 0;
  if (x_log_get_ogl(void)::once != -1)
  {
    dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
  }

  v23 = x_log_get_ogl(void)::log;
  if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_183AA6000, v23, OS_LOG_TYPE_ERROR, "unhandled combiner function: %d\n", buf, 8u);
  }
}

void CA::OGL::CombineNode::apply(uint64_t a1, void *a2, float *a3)
{
  v29[2] = *MEMORY[0x1E69E9840];
  v5 = **(a1 + 8);
  *(*(v5 + 16) + 8) = *(a1 + 88);
  v6 = *(v5 + 16);
  if (*(v6 + 496) >= 2u)
  {
    *(v6 + 497) |= 1u;
  }

  v7 = *a3;
  v8 = a3[1];
  v9 = *(a1 + 240);
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a1 + 64);
  if (v7 == 1.0 && v8 == 1.0)
  {
    CA::OGL::emit_combine(v5, v9, v10, v11, v12, (a1 + 244));
  }

  else
  {
    CA::OGL::emit_combine_scaled(v5, v9, v10, v11, v12, (a1 + 244), v7, v8);
  }

  v14 = *(a1 + 236);
  if ((v14 & 0x1E0000) != 0)
  {
    v17 = 0;
    v29[0] = 0;
    v29[1] = 0;
    v18 = 1;
    do
    {
      v19 = v18;
      v20 = a2[v17];
      if (v20)
      {
        CA::BoundsImpl::Union(v29, v20[6], v20[7]);
      }

      v18 = 0;
      v17 = 1;
    }

    while ((v19 & 1) != 0);
    v21 = ((v14 >> 17) & 0xF) - 1;
    if (v21 > 0xB)
    {
      v22 = 0;
    }

    else
    {
      v22 = dword_183E2D698[v21];
    }

    if ((v14 & 0x1E0000) == 0x120000 && *a2 && (*(*a2 + 93) & 8) != 0)
    {
      v22 = 8388736;
    }

    v23 = *(v5 + 16);
    *(v23 + 496) = 3;
    *(v23 + 497) |= 1u;
    v24 = bswap32(v22);
    v16.i32[0] = v24;
    v16.i32[1] = v24 >> 8;
    v16.i32[2] = HIWORD(v24);
    v25.i64[0] = 0xFF000000FFLL;
    v25.i64[1] = 0xFF000000FFLL;
    v26 = vandq_s8(v16, v25);
    v26.i32[3] = vshrq_n_u32(vdupq_n_s32(v24), 0x18uLL).i32[3];
    *(*(v5 + 16) + 8) = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(v26), vdupq_n_s32(0x3B808081u)));
    v27 = CA::Shape::intersect(*(a1 + 64), v29);
    v28[0] = 0;
    v28[1] = 0;
    CA::OGL::emit_combine(v5, 0, 0, 0, v27, v28);
    CA::Shape::unref(v27);
    v15 = *(v5 + 16);
    *(v15 + 496) = *(a1 + 136);
  }

  else
  {
    v15 = *(v5 + 16);
  }

  *(v15 + 497) &= ~1u;
}

void CA::OGL::SDFNode::apply(uint64_t a1, int32x2_t **a2, float *a3, int32x4_t a4, int32x4_t a5)
{
  v7 = *a4.i32;
  v215 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 8);
  v10 = *v9;
  *(*(*v9 + 2) + 497) |= 1u;
  v11 = *(a1 + 240);
  v12 = *(v11 + 148);
  v13 = *(a1 + 152);
  if (v13 < 0)
  {
    (*(*a1 + 40))(a1, a1 + 144);
    v13 = *(a1 + 152);
  }

  v14 = *(a1 + 156);
  if (v13 <= v14)
  {
    v15 = *(a1 + 156);
  }

  else
  {
    v15 = v13;
  }

  a4.i32[0] = 1073741822;
  a5.i32[0] = v15;
  v19 = vdupq_lane_s32(*&vcgtq_s32(a5, a4), 0);
  v16 = *(a1 + 144);
  v17.i64[0] = v16;
  v17.i64[1] = SHIDWORD(v16);
  v18 = vbslq_s8(v19, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v17));
  *v19.i64 = v13;
  if (v15 <= 1073741822)
  {
    v20 = v14;
  }

  else
  {
    *v19.i64 = 1.79769313e308;
    v20 = 1.79769313e308;
  }

  v21 = v7;
  *&v19.i64[1] = v20;
  v22 = *v19.i64 >= 1.79769313e308 || v7 == 1.0;
  v23.i64[1] = v18.i64[1];
  *&v24.i64[1] = v20;
  if (v22)
  {
    v25 = 0;
  }

  else
  {
    v25 = -1;
  }

  v26 = vdupq_n_s64(v25);
  *v24.i64 = *v19.i64 * v7;
  v27 = vbslq_s8(v26, v24, v19);
  *v23.i64 = v21 * *v18.i64;
  v28 = vbslq_s8(v26, v23, v18);
  if (v7 != 1.0 && v27.f64[1] < 1.79769313e308)
  {
    v28.f64[1] = vmuld_lane_f64(v21, v28, 1);
    v27.f64[1] = v27.f64[1] * v21;
  }

  v29 = vceqzq_f64(v27);
  if ((vorrq_s8(vdupq_laneq_s64(v29, 1), v29).u64[0] & 0x8000000000000000) != 0 || (v30 = vceqq_f64(v27, v27), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v30), 1), v30).u64[0] & 0x8000000000000000) != 0))
  {
    v203 = 0uLL;
  }

  else
  {
    v31 = vminnmq_f64(vaddq_f64(v28, v27), vdupq_n_s64(0x41C0000000000000uLL));
    v32 = vcvtmq_s64_f64(vmaxnmq_f64(v28, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v203 = vuzp1q_s32(v32, vsubq_s64(vcvtpq_s64_f64(v31), v32));
  }

  v33 = CA::Shape::intersect(*(*(v10 + 656) + 8), &v203);
  v211 = 0;
  *&v209[16] = 0u;
  v210 = 0u;
  *&v208[16] = 0u;
  *v209 = 0u;
  *v208 = 0u;
  v34 = *(v10 + 656);
  *&v208[8] = *(v34 + 8);
  v35 = *(v34 + 24);
  v36 = *(v34 + 32);
  *&v209[8] = *(v34 + 40);
  v37 = *(v34 + 56);
  *&v208[24] = v35;
  *v209 = v36;
  *&v209[24] = v37;
  LOWORD(v36) = *(v34 + 80);
  LOWORD(v211) = v36;
  v38 = *(v34 + 64);
  LOWORD(v211) = *(v34 + 80) & 0x100 | v36;
  LOWORD(v36) = v211 | *(v34 + 80) & 0x400;
  LODWORD(v210) = v38;
  LOWORD(v211) = v36;
  *(&v210 + 1) = *(v34 + 72);
  *&v208[8] = v33;
  v39 = CA::OGL::Context::set_gstate(v10, v208);
  v42 = 0;
  *v208 = v39;
  v43 = *a2;
  if (!*a2)
  {
    v42 = *(*(a1 + 16) + 200);
  }

  v192 = v42;
  v44 = *(v11 + 136);
  if (v44 > 4)
  {
    if (*(v11 + 136) > 6u)
    {
      if (v44 == 7)
      {
        v106 = *(v11 + 36);
        v48 = *a3;
        v107 = *(v10 + 16);
        v108 = __sincosf_stret(*(v11 + 32));
        v109 = *(v11 + 24);
        *(v107 + 16) = 65;
        *(v10 + 160) = v109;
        *(v10 + 168) = v12;
        *(v10 + 172) = v106;
        *(v10 + 240) = v108.__cosval;
        *(v10 + 244) = v108.__sinval;
        *(v10 + 248) = 0;
        v47 = v192;
        if (v192)
        {
LABEL_79:
          v110 = 1.0;
          v111 = v10;
LABEL_126:
          CA::OGL::emit_sdf_bounds(v111, v47, 0, 1, 4096.0, v110, 0.0, 0.0, 0.0);
          goto LABEL_132;
        }

LABEL_127:
        CA::OGL::bind_filter_surface(v10, v43, 0, v48);
        goto LABEL_128;
      }

      if (v44 != 8)
      {
        goto LABEL_84;
      }

      v61 = *(v11 + 96);
      v62 = *(v11 + 100);
      v63 = *(v11 + 112);
      v64 = *(v11 + 116);
      v65 = *(v11 + 120);
      v66 = 1.0;
      if (*(v11 + 132) == 1)
      {
        v67 = *(*(a1 + 8) + 8);
        v68 = *(*(*(a1 + 16) + 16) + 272) + 1.57079633;
        v69 = v68 + v62;
        v70 = v68 + v64;
        v71 = v67[299];
        v66 = 1.0;
        v56 = v192;
        if (v71 <= 1.0)
        {
          v66 = 0.0;
          if (v71 >= 0.0)
          {
            v66 = v67[299];
          }
        }

        v62 = v69;
        v64 = v70;
        v61 = v67[301];
        v63 = v61;
        v131 = v67[300];
        v65 = v131;
      }

      else
      {
        v131 = *(v11 + 104);
        v56 = v192;
      }

      v159 = *(v11 + 24);
      v160 = *(a1 + 88);
      if (*&v160 != 0x3C003C003C003C00)
      {
        v159 = vmulq_f32(vcvtq_f32_f16(v160), v159);
      }

      v161 = 1.0 / *(v11 + 108) + -2.0;
      v162 = 1.0 / *(v11 + 124) + -2.0;
      v163 = vmulq_n_f32(v159, v66);
      v164 = *(v11 + 40);
      v165 = *(v11 + 60);
      v166 = *(v11 + 76);
      v194 = v12;
      v200 = v161;
      v191 = *(v11 + 48) + (*(v11 + 44) * v61);
      v188 = v163;
      if (*&v160 != 0x3C003C003C003C00)
      {
        v165 = vmulq_f32(vcvtq_f32_f16(v160), v165);
      }

      v187 = vmulq_n_f32(v165, v66);
      v167 = *(v11 + 84) + (*(v11 + 80) * v63);
      v168 = *(v11 + 92) + (*(v11 + 88) * v65);
      v169 = cosf(*(v11 + 56) + (*(v11 + 52) * v131));
      v170 = cosf(v168);
      v213.i64[0] = 0;
      v171 = *(a1 + 16);
      *&v204.f64[0] = vcvt_f16_f32(v188);
      CA::OGL::colormatched_layer_color(&v213, v9, v171, &v204, v164);
      v204.f64[0] = 0.0;
      v172 = *(a1 + 16);
      *&v201.f64[0] = vcvt_f16_f32(v187);
      CA::OGL::colormatched_layer_color(&v204, v9, v172, &v201, v166);
      v173 = __sincosf_stret(v62);
      v189 = vcvtq_f32_f16(*v213.f32);
      v174 = __sincosf_stret(v64);
      v43 = *a2;
      v158 = vcvtq_f32_f16(*&v204.f64[0]);
      v48 = *a3;
      v175 = *(v11 + 128);
      *(*(v10 + 16) + 16) = 66;
      *(v10 + 160) = v191;
      *(v10 + 164) = v169;
      *(v10 + 168) = v200;
      *(v10 + 172) = v173.__sinval;
      *(v10 + 176) = -v173.__cosval;
      *(v10 + 180) = v167;
      *(v10 + 184) = v170;
      *(v10 + 188) = v162;
      *(v10 + 192) = v174.__sinval;
      *(v10 + 196) = -v174.__cosval;
      *(v10 + 200) = v175;
      *(v10 + 204) = v194;
      *(v10 + 240) = v189;
    }

    else
    {
      if (v44 == 5)
      {
        v74 = *(a1 + 80);
        v73 = *(a1 + 88);
        v76.f64[0] = *v74;
        v75.f64[0] = v74[1];
        v75.f64[1] = v74[4];
        v77 = vcvt_f32_f64(v75);
        v76.f64[1] = v74[5];
        v78 = vcvt_f32_f64(v76);
        v79 = *(v11 + 28);
        v80 = vmul_f32(vrev64_s32(v79), v77);
        v81 = *(v11 + 36);
        if (*&v73 != 0x3C003C003C003C00)
        {
          v81 = vmulq_f32(vcvtq_f32_f16(v73), v81);
        }

        v186 = v81;
        v196 = vmla_f32(v80, v78, v79);
        v82 = *(v11 + 24);
        v83 = *(v11 + 56);
        v84 = *a3;
        CA::OGL::bind_filter_surface(v10, v43, 0, *a3);
        if (v83)
        {
          CA::OGL::bind_filter_surface(v10, v43, 1u, v84);
        }

        v85 = -1.0;
        if ((v83 & 2) != 0)
        {
          v85 = 1.0;
        }

        *(v10 + 160) = -1.0 / v82;
        *(v10 + 164) = 0;
        *(v10 + 168) = v12;
        *(v10 + 172) = v85;
        *(v10 + 240) = v186;
        v86 = *(*(v10 + 656) + 8);
        v213.i64[0] = v10;
        v213.i64[1] = v86;
        memset(v214, 0, sizeof(v214));
        *&v214[16] = 256;
        CA::OGL::Context::ClippedArray::start(&v213);
        v204 = 0uLL;
        while (CA::OGL::Context::ClippedArray::next_rect(&v213, &v204))
        {
          if (*(v10 + 108))
          {
            v87 = 6;
          }

          else
          {
            v87 = 4;
          }

          if ((*(v10 + 144) + 4) > *(v10 + 152) || (v88 = *(v10 + 128)) != 0 && *(v10 + 120) + v87 > v88)
          {
            *(v10 + 1384) |= 0x20u;
            CA::OGL::Context::array_flush(v10);
            *(v10 + 144) = 0;
            *(v10 + 112) = v10 + 1386;
            *(v10 + 120) = xmmword_183E20E50;
          }

          v89 = v43[6].i32[0];
          v90 = v43[6].i32[1];
          v91 = (v196.f32[0] + v89) * v84;
          v92 = (v196.f32[1] + v90) * v84;
          v93 = (v196.f32[0] + (v43[7].i32[0] + v89)) * v84;
          v94 = (v196.f32[1] + (v43[7].i32[1] + v90)) * v84;
          v95 = *(v10 + 16);
          if (v83)
          {
            *(v95 + 16) = 63;
            CA::OGL::Context::array_rect(v10, v91, v92, v93, v94);
            v96 = *(v10 + 136) + 48 * *(v10 + 144);
            *(v96 - 176) = 0;
            *(v96 - 124) = 0;
            v97 = vcvt_f32_s32(v43[7]);
            *(v96 - 128) = v97.i32[0];
            *(v96 - 80) = v97;
            *(v96 - 32) = 0;
            *(v96 - 28) = v97.i32[1];
            v97.i32[0] = vadd_f32(v196, v97).u32[0];
            *(v96 - 168) = v196;
            *(v96 - 120) = v97.i32[0];
            *(v96 - 116) = v196.i32[1];
            *(v96 - 72) = v97.i32[0];
            *(v96 - 68) = v196.f32[1] + v97.f32[1];
            *(v96 - 24) = v196.i32[0];
            *(v96 - 20) = v196.f32[1] + v97.f32[1];
          }

          else
          {
            *(v95 + 16) = 62;
            CA::OGL::Context::array_rect(v10, v91, v92, v93, v94);
            v98 = *(v10 + 136) + 48 * *(v10 + 144);
            *(v98 - 176) = 0;
            *(v98 - 124) = 0;
            v99 = vcvt_f32_s32(v43[7]);
            *(v98 - 128) = v99.i32[0];
            *(v98 - 80) = v99;
            *(v98 - 32) = 0;
            *(v98 - 28) = v99.i32[1];
          }
        }

        if (v83)
        {
          if (*(v10 + 672) != v43)
          {
            CA::OGL::Context::unbind_surface(v10, v43, 1);
          }

          *(*(v10 + 16) + 16) = 0;
          *(*(v10 + 16) + 20) = 0;
        }

        goto LABEL_129;
      }

      if (v44 != 6)
      {
        goto LABEL_84;
      }

      v49 = *(v11 + 40);
      if (v49 == 0.0 || *(v11 + 36) == 0.0)
      {
        goto LABEL_132;
      }

      v50 = *(v11 + 44);
      v51 = *(a1 + 88);
      if (*&v51 != 0x3C003C003C003C00)
      {
        v50 = vmulq_f32(vcvtq_f32_f16(v51), v50);
      }

      v52 = *(v11 + 32);
      v53 = *(v11 + 24);
      if (*(v11 + 64))
      {
        v54 = *(*(a1 + 8) + 8);
        v53 = *(v54 + 1204);
        v55 = *(v54 + 1196);
        v56 = v192;
        v57 = 1.0;
        if (v55 <= 1.0)
        {
          v57 = 0.0;
          if (v55 >= 0.0)
          {
            v57 = *(v54 + 1196);
          }
        }

        v52 = v52 + 1.57079633 + *(*(*(a1 + 16) + 16) + 272);
        v58 = *(v54 + 1200);
        v195 = vmulq_n_f32(v50, v57);
      }

      else
      {
        v195 = v50;
        v58 = *(v11 + 36);
        v56 = v192;
      }

      v148 = 1.0 / v49 + -2.0;
      v149 = *(v11 + 60);
      v150 = *(v11 + 28);
      v151 = cosf(v58);
      if (v151 == -1.0 && v49 == 1.0)
      {
        v153 = v151 + -0.01;
        v154 = v153;
      }

      else
      {
        v154 = v151;
      }

      v213.i64[0] = 0;
      if (byte_1ED4E9864 == 1)
      {
        v156 = vcvt_f16_f32(v195);
      }

      else
      {
        v155 = *(a1 + 16);
        *&v204.f64[0] = vcvt_f16_f32(v195);
        CA::OGL::colormatched_layer_color(&v213, v9, v155, &v204, v149);
        v156 = *v213.f32;
        v43 = *a2;
      }

      v157 = __sincosf_stret(v52);
      v48 = *a3;
      v158 = vcvtq_f32_f16(v156);
      *(*(v10 + 16) + 16) = 64;
      *(v10 + 160) = v53;
      *(v10 + 164) = v154;
      *(v10 + 168) = v157.__sinval;
      *(v10 + 172) = -v157.__cosval;
      *(v10 + 240) = v148;
      *(v10 + 244) = v150;
      *(v10 + 248) = v12;
      *(v10 + 252) = 0;
    }

    *(v10 + 320) = v158;
    if (v56)
    {
      v110 = 1.0;
      v111 = v10;
      v47 = v56;
      goto LABEL_126;
    }

    goto LABEL_127;
  }

  if (*(v11 + 136) <= 2u)
  {
    if (v44 == 1)
    {
      v72 = *(a1 + 64);
      v213 = 0uLL;
      CA::OGL::emit_combine(v10, 1u, v43, 0, v72, &v213);
      goto LABEL_132;
    }

    if (v44 == 2)
    {
      v45 = *(v11 + 24);
      v46 = *(a1 + 88);
      if (*&v46 != 0x3C003C003C003C00)
      {
        v45 = vmulq_f32(vcvtq_f32_f16(v46), v45);
      }

      v47 = v192;
      v48 = *a3;
      *(*(v10 + 16) + 16) = 59;
      *(v10 + 160) = v12;
      *(v10 + 168) = 0;
      *(v10 + 164) = 0;
      *(v10 + 240) = v45;
      if (!v192)
      {
        goto LABEL_127;
      }

      goto LABEL_79;
    }

LABEL_84:
    v48 = *a3;
    CA::OGL::bind_filter_surface(v10, v43, 0, *a3);
    *(*(v10 + 16) + 16) = 58;
    v112 = *(v10 + 16);
    *(v112 + 24) = 1036831949;
    *(v112 + 28) = v12;
    *(v112 + 32) = 0;
LABEL_128:
    CA::OGL::emit_filter_quads(v10, v43, v48);
LABEL_129:
    if (*(v10 + 672) != v43)
    {
      CA::OGL::Context::unbind_surface(v10, v43, 0);
    }

    *(*(v10 + 16) + 16) = 0;
    *(*(v10 + 16) + 19) = 0;
    goto LABEL_132;
  }

  if (v44 == 3)
  {
    v100 = *(v11 + 24);
    if (v100)
    {
      v101 = *(v100 + 16);
      color_map = *(v11 + 32);
      if (color_map || (color_map = CA::Render::Gradient::create_color_map(*(v11 + 24), *(v10 + 560), 1), (*(v11 + 32) = color_map) != 0))
      {
        v103 = *(v100 + 40);
        if (v103)
        {
          v104 = *v103;
          v105 = v103[v101 - 1];
        }

        else
        {
          v105 = 1.0;
          v104 = 0.0;
        }

        v199 = vcvtq_f32_f16(*(a1 + 88));
        v144 = *a2;
        v145 = *a3;
        *(*(v10 + 16) + 16) = 60;
        v146 = (*(*color_map + 80))(color_map);
        v213 = 0uLL;
        v147 = CA::OGL::Context::bind_image(v10, v192 == 0, v146, 528647, 1u, 1, 0, 0, 0.0, &v213, 0);
        *(v10 + 160) = v12;
        *(v10 + 164) = v104;
        *(v10 + 168) = v105;
        *(v10 + 172) = -1.0 / (v105 - v104);
        *(v10 + 240) = v199;
        if (v192)
        {
          CA::OGL::emit_sdf_bounds(v10, v192, 0, 1, 4096.0, 1.0, 0.0, 0.0, 0.0);
        }

        else
        {
          CA::OGL::bind_filter_surface(v10, v144, 0, v145);
          CA::OGL::emit_filter_quads(v10, v144, v145);
          if (*(v10 + 672) != v144)
          {
            CA::OGL::Context::unbind_surface(v10, v144, 0);
          }

          *(*(v10 + 16) + 16) = 0;
          *(*(v10 + 16) + 19) = 0;
        }

        (*(*v10 + 560))(v10, v147, 1);
      }
    }
  }

  else
  {
    if (v44 != 4)
    {
      goto LABEL_84;
    }

    v59 = *(v11 + 44);
    v60 = *(a1 + 88);
    v193 = v12;
    if (*&v60 == 0x3C003C003C003C00)
    {
      v190 = *(v11 + 24);
    }

    else
    {
      v113 = vcvtq_f32_f16(v60);
      v190 = vmulq_f32(v113, *(v11 + 24));
      v59 = vmulq_f32(v113, v59);
    }

    v114 = v33;
    v115 = *(v10 + 656);
    v116 = *(a1 + 16);
    v117 = *(v116 + 24);
    v118 = *(v117 + 88);
    v197 = v59;
    v201 = *(v117 + 72);
    v202 = v118;
    CA::Rect::apply_transform(&v201, *(v115 + 24), v40);
    v119 = *a3;
    v120 = *(v11 + 64);
    v121 = *(v11 + 68);
    v123 = *(v11 + 72);
    v122 = *(v11 + 76);
    v125 = *(v11 + 80);
    v124 = *(v11 + 84);
    v126 = *(v11 + 88);
    v127 = *(v116 + 32);
    v206 = v197;
    v207 = v190;
    v198 = v119;
    CA::OGL::bind_filter_surface(v10, v43, 0, v119);
    *(*(v10 + 16) + 16) = 61;
    *(*(v10 + 16) + 96) = xmmword_183E21110;
    if ((v127 & 0x40000000000) != 0)
    {
      v128 = 1.0 - v125;
    }

    else
    {
      v128 = v122;
    }

    if ((v127 & 0x40000000000) != 0)
    {
      v120 = -v120;
      v125 = 1.0 - v122;
      v129 = &v206;
      v130 = &v207;
    }

    else
    {
      v129 = &v207;
      v130 = &v206;
    }

    v133 = __sincosf_stret(v120);
    *(v10 + 160) = v193;
    *(v10 + 164) = -1.0 / v121;
    *(v10 + 168) = v128;
    *(v10 + 172) = v125;
    *(v10 + 176) = v123;
    *(v10 + 180) = v124;
    *(v10 + 184) = 0;
    *(v10 + 188) = v126;
    *(v10 + 192) = v133;
    *(v10 + 200) = 0;
    *(v10 + 240) = *v129;
    v134 = *v130;
    *(v10 + 320) = *v130;
    v135 = v43[7].i32[0];
    v136 = v43[7].i32[1];
    if (v135 <= v136)
    {
      v137 = v43[7].i32[1];
    }

    else
    {
      v137 = v43[7].i32[0];
    }

    v134.i32[0] = 1073741822;
    v132.i32[0] = v137;
    v138 = vdupq_lane_s32(*&vcgtq_s32(v132, v134), 0);
    v139 = v43[6];
    v140.i64[0] = v139.i32[0];
    v140.i64[1] = v139.i32[1];
    v141 = vbslq_s8(v138, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v140));
    v142 = v135;
    v143 = v136;
    if (v137 > 1073741822)
    {
      v142 = 1.79769313e308;
      v143 = 1.79769313e308;
    }

    v204 = v141;
    v205.f64[0] = v142;
    v205.f64[1] = v143;
    v213.i64[0] = &v204;
    v213.i64[1] = &CA::identity_transform;
    memset(v214, 0, 32);
    v212[0] = vcvt_f32_f64(vdivq_f64(vmulq_n_f64(vsubq_f64(v141, v201), v198), v202));
    v212[1] = vcvt_f32_f64(vmulq_n_f64(vaddq_f64(vdivq_f64(v205, v202), vcvtq_f64_f32(v212[0])), v198));
    CA::OGL::emit_one_part_rect(v10, &v213, v212, 0, 0);
    if (*(v10 + 672) != v43)
    {
      CA::OGL::Context::unbind_surface(v10, v43, 0);
    }

    *(*(v10 + 16) + 16) = 0;
    *(*(v10 + 16) + 19) = 0;
    v33 = v114;
  }

LABEL_132:
  v176 = (*(a1 + 236) >> 17) & 0xF;
  if (v176 || (BYTE5(xmmword_1ED4E98AC) & 1) != 0 || BYTE8(xmmword_1ED4E98AC) == 1 && v192)
  {
    v213 = 0uLL;
    v177 = *a2;
    if (*a2)
    {
      v213 = v177[3];
      if (v176 - 1 > 0xB)
      {
        v178 = 0;
      }

      else
      {
        v178 = dword_183E2D698[v176 - 1];
      }

      if (v176 == 9)
      {
        if ((v177[5].i8[13] & 8) != 0)
        {
          v176 = 8388736;
        }

        else
        {
          v176 = v178;
        }
      }

      else
      {
        v176 = v178;
      }
    }

    else if (v192 && (BYTE8(xmmword_1ED4E98AC) & 1) != 0)
    {
      v179 = *(v192 + 176);
      v180 = *(v179 + 152);
      if ((v180 & 0x80000000) != 0)
      {
        (*(*v179 + 40))(*(v192 + 176), v179 + 144);
        v180 = *(v179 + 152);
      }

      v213.i64[0] = *(v179 + 144);
      v213.i64[1] = __PAIR64__(*(v179 + 156), v180);
      v176 = -2143256448;
    }

    v181 = *(v10 + 16);
    *(v181 + 496) = 3;
    *(v181 + 497) |= 1u;
    v182 = bswap32(v176);
    v41.i32[0] = v182;
    v41.i32[1] = v182 >> 8;
    v41.i32[2] = HIWORD(v182);
    v183.i64[0] = 0xFF000000FFLL;
    v183.i64[1] = 0xFF000000FFLL;
    v184 = vandq_s8(v41, v183);
    v184.i32[3] = vshrq_n_u32(vdupq_n_s32(v182), 0x18uLL).i32[3];
    *(*(v10 + 16) + 8) = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(v184), vdupq_n_s32(0x3B808081u)));
    v185 = CA::Shape::intersect(*(a1 + 64), &v213);
    v204 = 0uLL;
    CA::OGL::emit_combine(v10, 0, 0, 0, v185, &v204);
    *(*(v10 + 16) + 497) &= ~1u;
    CA::Shape::unref(v185);
  }

  CA::OGL::Context::set_gstate(v10, **(v10 + 656));
  *(*(v10 + 16) + 497) &= ~1u;
  if (v33)
  {
    CA::Shape::unref(v33);
  }
}

uint64_t CA::OGL::bind_filter_surface(uint64_t result, uint64_t a2, unsigned int a3, float a4)
{
  v5 = result;
  if (*(result + 672) == a2)
  {
    *(*(result + 16) + a3 + 17) = 42;
  }

  else
  {
    result = CA::OGL::Context::bind_surface(result, a2, a3, a4 != 1.0, a4 != 1.0, 0.0);
    if (a4 > 1.0)
    {
      v8 = *(v5 + 16);
      v9 = v8[12];
      v10 = *(a2 + 56);
      v11.i64[0] = v10;
      v11.i64[1] = SHIDWORD(v10);
      __asm { FMOV            V3.2D, #-0.5 }

      v8[2].i8[a3 + 3] = 5;
      v17 = *(v5 + 16);
      v17[48] = vmul_f32(v9, 0x3F0000003F000000);
      v17[49] = vcvt_f32_f64(vmulq_f64(vaddq_f64(vcvtq_f64_s64(v11), _Q3), vcvtq_f64_f32(v9)));
    }
  }

  return result;
}

uint64_t CA::OGL::emit_filter_quads(uint64_t a1, int32x2_t *a2, float a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v6 = *(*(a1 + 656) + 8);
  v13[0] = a1;
  v13[1] = v6;
  v14 = 0u;
  v13[2] = 0;
  WORD4(v14) = 256;
  CA::OGL::Context::ClippedArray::start(v13);
  v12[0] = 0;
  v12[1] = 0;
  while (1)
  {
    result = CA::OGL::Context::ClippedArray::next_rect(v13, v12);
    if (!result)
    {
      break;
    }

    if (*(a1 + 108))
    {
      v8 = 6;
    }

    else
    {
      v8 = 4;
    }

    if ((*(a1 + 144) + 4) > *(a1 + 152) || (v9 = *(a1 + 128)) != 0 && *(a1 + 120) + v8 > v9)
    {
      *(a1 + 1384) |= 0x20u;
      CA::OGL::Context::array_flush(a1);
      *(a1 + 144) = 0;
      *(a1 + 112) = a1 + 1386;
      *(a1 + 120) = xmmword_183E20E50;
    }

    CA::OGL::Context::array_rect(a1, a2[6].i32[0] * a3, a2[6].i32[1] * a3, (a2[7].i32[0] + a2[6].i32[0]) * a3, (a2[7].i32[1] + a2[6].i32[1]) * a3);
    v10 = *(a1 + 136) + 48 * *(a1 + 144);
    *(v10 - 176) = 0;
    *(v10 - 124) = 0;
    v11 = vcvt_f32_s32(a2[7]);
    *(v10 - 128) = v11.i32[0];
    *(v10 - 80) = v11;
    *(v10 - 32) = 0;
    *(v10 - 28) = v11.i32[1];
  }

  return result;
}

void CA::OGL::MetalContext::draw_axis_aligned_rects(CA::OGL::Context *a1, unsigned int a2, char *a3)
{
  v3 = *(*(a1 + 2) + 16);
  if ((v3 - 108) >= 3 && v3 != 116)
  {
    __assert_rtn("draw_axis_aligned_rects", "ogl-metal.mm", 8919, "get_texture_function () == OGL_TEX_PATH_CLEAR || get_texture_function () == OGL_TEX_PATH_BLIT || get_texture_function () == OGL_TEX_PATH_BLIT_EO || get_texture_function () == OGL_TEX_ATTACHMENT_CLEAR");
  }

  CA::OGL::MetalContext::draw(a1, 4, 4u, a2, a3, 0x18uLL, 8u, 0, a2, 0, 0, 0);
}

double CA::Rect::unapply_transform(CA::Rect *this, float64x2_t *a2, const double *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  result = *(this + 3);
  if (v4 <= result)
  {
    v5 = *(this + 3);
  }

  else
  {
    v5 = *(this + 2);
  }

  if (v5 < 1.79769313e308)
  {
    if ((LOBYTE(a2[9].f64[0]) & 0x10) != 0)
    {
      CA::Mat4Impl::mat4_invert(v14, a2, a3);
      *&result = CA::Mat4Impl::mat4_unapply_inverse_to_rect(v14, this, v13).u64[0];
      return result;
    }

    v7 = *(this + 1);
    v8 = *this - a2[6].f64[0];
    *this = v8;
    v9 = v7 - a2[6].f64[1];
    *(this + 1) = v9;
    v10 = LOBYTE(a2[9].f64[0]);
    if (v10)
    {
      v9 = -(v9 + result);
      *(this + 1) = v9;
      v10 = LOBYTE(a2[9].f64[0]);
      if ((v10 & 2) == 0)
      {
LABEL_8:
        if ((v10 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_14;
      }
    }

    else if ((LOBYTE(a2[9].f64[0]) & 2) == 0)
    {
      goto LABEL_8;
    }

    v8 = -(v8 + v4);
    *this = v8;
    v10 = LOBYTE(a2[9].f64[0]);
    if ((v10 & 4) == 0)
    {
LABEL_9:
      v11 = result;
      result = v4;
      v12 = v9;
      v9 = v8;
      if ((v10 & 8) == 0)
      {
        return result;
      }

LABEL_15:
      *this = v9 * a2[8].f64[1];
      *(this + 1) = v12 * a2[8].f64[1];
      *(this + 2) = result * a2[8].f64[1];
      result = v11 * a2[8].f64[1];
      *(this + 3) = result;
      return result;
    }

LABEL_14:
    v12 = -(v8 + v4);
    *this = v9;
    *(this + 1) = v12;
    *(this + 2) = result;
    *(this + 3) = v4;
    v11 = v4;
    if ((LOBYTE(a2[9].f64[0]) & 8) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

  return result;
}

void CA::OGL::GlassBackgroundFilter::ROI(CA::OGL::GlassBackgroundFilter *this, const CA::Render::Filter *a2, const CA::Render::Layer *a3, float64x2_t *a4)
{
  v69 = *MEMORY[0x1E69E9840];
  f64 = a4[1].f64;
  v64 = *a4;
  v66 = a4[1];
  v7 = *(a2 + 5);
  v68 = xmmword_183E210C0;
  vec2_key = CA::Render::KeyValueArray::get_vec2_key(v7, 427, &v68);
  v57 = v8;
  float_key = CA::Render::KeyValueArray::get_float_key(v7, 429, 25.0);
  v10 = CA::Render::KeyValueArray::get_float_key(v7, 428, 1.0);
  v13.f64[0] = CA::OGL::gaussian_expansion_factor(v11, v10);
  v14.f64[1] = v64.f64[1];
  if (v66.f64[0] <= v66.f64[1])
  {
    v15 = v66.f64[1];
  }

  else
  {
    v15 = v66.f64[0];
  }

  v16 = v66;
  v17 = v64;
  if (v15 < 1.79769313e308)
  {
    v18 = v66.f64[0] >= v66.f64[1] ? v66.f64[1] : v66.f64[0];
    v19 = v18 <= 0.0;
    v16 = v66;
    v17 = v64;
    if (!v19)
    {
      v13.f64[0] = -(float_key * v13.f64[0]);
      v17 = vaddq_f64(v64, vdupq_lane_s64(*&v13.f64[0], 0));
      v13.f64[0] = v13.f64[0] * -2.0;
      *v20.i64 = v13.f64[0] + v66.f64[0];
      v13.f64[0] = v13.f64[0] + v66.f64[1];
      v14.f64[0] = fmin(*v20.i64, v13.f64[0]);
      v20.i64[1] = *&v13.f64[0];
      v13.f64[0] = 0.0;
      v16 = vandq_s8(v20, vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v13, v14)).i64[0], 0));
    }
  }

  v58 = v17;
  v60 = v16;
  v22.f64[0] = CA::OGL::GlassBackgroundFilter::max_range(v7, v12);
  v23.f64[1] = v64.f64[1];
  v24 = v66;
  v25 = v64;
  if (v15 < 1.79769313e308)
  {
    v26 = v66.f64[0] >= v66.f64[1] ? v66.f64[1] : v66.f64[0];
    v19 = v26 <= 0.0;
    v24 = v66;
    v25 = v64;
    if (!v19)
    {
      v25 = vaddq_f64(v64, vdupq_lane_s64(COERCE__INT64(-v22.f64[0]), 0));
      v22.f64[0] = v22.f64[0] + v22.f64[0];
      *v27.i64 = v22.f64[0] + v66.f64[0];
      v22.f64[0] = v22.f64[0] + v66.f64[1];
      v23.f64[0] = fmin(*v27.i64, v22.f64[0]);
      v27.i64[1] = *&v22.f64[0];
      v22.f64[0] = 0.0;
      v24 = vandq_s8(v27, vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v22, v23)).i64[0], 0));
    }
  }

  v59 = v24;
  v28.f64[0] = vec2_key;
  v28.f64[1] = v57;
  v61 = v25;
  v63 = v28;
  glass_filter_bleed_blur_radius = CA::Render::get_glass_filter_bleed_blur_radius(v7, v21);
  v30 = CA::Render::KeyValueArray::get_float_key(v7, 356, 30.0);
  v31 = v30 + v30;
  if (glass_filter_bleed_blur_radius >= v31)
  {
    v31 = glass_filter_bleed_blur_radius;
  }

  if (v15 < 1.79769313e308)
  {
    v33 = v66;
    if (v66.f64[0] >= v66.f64[1])
    {
      v35 = v66.f64[1];
    }

    else
    {
      v35 = v66.f64[0];
    }

    v34 = v60;
    if (v35 > 0.0)
    {
      v32 = vaddq_f64(v64, vdupq_lane_s64(COERCE__INT64(v31 * -2.8), 0));
      v33 = vaddq_f64(vdupq_lane_s64(COERCE__INT64(v31 * 5.6), 0), v66);
      *a4 = v32;
      a4[1] = v33;
      if (v33.f64[0] <= 0.0 || v33.f64[1] <= 0.0)
      {
        *f64 = 0.0;
        f64[1] = 0.0;
        v33 = 0uLL;
      }
    }

    else
    {
      v32 = v64;
    }
  }

  else
  {
    v32 = v64;
    v33 = v66;
    v34 = v60;
  }

  v36 = vsubq_f64(v58, v63);
  v37 = vclezq_f64(v33);
  v38 = vclezq_f64(v34);
  v39 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v38, v37), vzip2q_s64(v38, v37))));
  if ((v39.i8[4] & 1) == 0)
  {
    if (v39.i8[0])
    {
      goto LABEL_34;
    }

    v40 = vaddq_f64(v36, v34);
    v36 = vminnmq_f64(v32, v36);
    v34 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v32, v33), v40), v36);
    goto LABEL_33;
  }

  if ((v39.i8[0] & 1) == 0)
  {
LABEL_33:
    *a4 = v36;
    a4[1] = v34;
    v32 = v36;
    v33 = v34;
  }

LABEL_34:
  v41 = vclezq_f64(v33);
  v42 = v59;
  v43 = vclezq_f64(v59);
  v44 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v43, v41), vzip2q_s64(v43, v41))));
  if ((v44.i8[4] & 1) == 0)
  {
    if (v44.i8[0])
    {
      goto LABEL_40;
    }

    v45 = vmaxnmq_f64(vaddq_f64(v32, v33), vaddq_f64(v61, v59));
    v61 = vminnmq_f64(v32, v61);
    v42 = vsubq_f64(v45, v61);
    goto LABEL_39;
  }

  if ((v44.i8[0] & 1) == 0)
  {
LABEL_39:
    v32 = v61;
    *a4 = v61;
    a4[1] = v42;
    v33 = v42;
  }

LABEL_40:
  v65 = v32;
  v67 = v33;
  if (CA::Render::KeyValueArray::get_float_key(*(a2 + 5), 430, 1.0) == 0.0)
  {
    if (v67.f64[0] <= v67.f64[1])
    {
      v46 = v67.f64[1];
    }

    else
    {
      v46 = v67.f64[0];
    }

    if (v46 < 1.79769313e308)
    {
      v47 = v67.f64[0] >= v67.f64[1] ? v67.f64[1] : v67.f64[0];
      if (v47 > 0.0)
      {
        __asm { FMOV            V1.2D, #-1.0 }

        v65 = vaddq_f64(v65, _Q1);
        *a4 = v65;
        a4[1].f64[0] = v67.f64[0] + 2.0;
        a4[1].f64[1] = v67.f64[1] + 2.0;
        if (v67.f64[0] + 2.0 <= 0.0 || v67.f64[1] + 2.0 <= 0.0)
        {
          *f64 = 0.0;
          f64[1] = 0.0;
        }
      }
    }

    v53 = *f64;
    v54 = f64[1];
    if (*f64 <= v54)
    {
      v55 = f64[1];
    }

    else
    {
      v55 = *f64;
    }

    if (v55 < 1.79769313e308)
    {
      if (v53.f64[0] < v54)
      {
        v54 = *f64;
      }

      if (v54 > 0.0)
      {
        v56 = vrndmq_f64(v65);
        *a4 = v56;
        a4[1] = vsubq_f64(vrndpq_f64(vaddq_f64(v65, v53)), v56);
      }
    }
  }
}

_DWORD *CA::OGL::LayerNode::retain_surface(CA::OGL::LayerNode *this, float *a2, unsigned int a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  v5 = *(v4 + 32);
  if ((v5 & 8) != 0)
  {
    v10 = *(this + 1);
    v11 = *v10;
    v9 = *(*v10 + 688);
    if (v9 || (v9 = (*(*v11 + 792))(v11, a2), (v11[86] = v9) != 0))
    {
      ++*v9;
    }

    return v9;
  }

  if (*(v4 + 200))
  {
    v8 = *(**(*(*(v4 + 192) + 24) + 136) + 136) - 2;
    if (v8 < 7 && ((0x73u >> v8) & 1) != 0)
    {
      return 0;
    }
  }

  if ((*(v4 + 40) & 8) != 0 && (v5 & 0x2000013C0) == 0)
  {
    v13 = *(this + 1);
    if ((v5 & 0x20) == 0 || (v14 = *(*(v4 + 24) + 136)) == 0 || !*(v14 + 80))
    {
      v15 = *(v4 + 16);
      if (!v15 || (*(v15 + 28) & 0x10) == 0)
      {
        v16 = *(*(v4 + 24) + 136);
        if (!v16 || *(v16 + 232) == 0.0)
        {
          v17 = *(v15 + 256);
          if (v17)
          {
            os_unfair_lock_lock((v17 + 52));
            v18 = *(v17 + 56);
            if (!v18)
            {
              os_unfair_lock_unlock((v17 + 52));
              goto LABEL_12;
            }

            os_unfair_lock_lock((v18 + 40));
            v20 = *v13;
            v21 = *(v18 + 48);
            if (v21)
            {
              if (*(v21 + 8) == v20)
              {
                if ((*(v21 + 224) & 2) == 0)
                {
                  goto LABEL_41;
                }

                v22 = 0;
LABEL_28:
                v23 = *(v18 + 72);
                v24 = *(v18 + 80);
                v25 = 0.0;
                if (v23 != v24)
                {
                  while (*v23 != *(v17 + 24) || *(v17 + 32) != *(v23 + 8) || *(v23 + 16) != *(v17 + 40))
                  {
                    v23 += 192;
                    if (v23 == v24)
                    {
                      goto LABEL_33;
                    }
                  }

                  if ((*(v23 + 180) & 1) == 0)
                  {
                    v26 = *(v4 + 24);
                    v27 = *(v26 + 136);
                    if (v27)
                    {
                      v27 = *v27;
                      if (v27)
                      {
                        if (*(v27 + 12) != 3)
                        {
                          v27 = 0;
                        }
                      }
                    }

                    if ((v22 & 1) != 0 || !*(v21 + 32) || (*(v27 + 13) & 0x10) != 0)
                    {
                      if ((*(v4 + 32) & 0x20) == 0)
                      {
                        v9 = CA::OGL::Context::retain_null_surface(v20);
                        v25 = 1.0;
                        goto LABEL_34;
                      }
                    }

                    else
                    {
                      v31 = v4;
                      v32 = v23;
                      v33 = v27;
                      v34 = v21;
                      if ((*(this + 68) & 0x100) != 0)
                      {
                        v28 = *(this + 10);
                        if ((*(v28 + 144) & 0x10) == 0 || CA::Mat4Impl::mat4_is_rectilinear(*(this + 10), v19))
                        {
                          goto LABEL_58;
                        }
                      }

                      if ((*(v34 + 224) & 4) != 0)
                      {
                        v28 = *(this + 10);
LABEL_58:
                        v35 = 0u;
                        v36 = 0u;
                        CA::Render::BackdropLayer::get_backdrop_bounds(v33, v26, &v35);
                        CA::BoundsImpl::intersect(&v35, v32[2], v32[3]);
                        v29.i64[0] = 1.0;
                        if ((CA::OGL::rect_transform_filter_bits(v28, v30, v35, v36, v29, 1.0) & 9) != 0 && (*(v31 + 41) & 0xF) != 0)
                        {
                          v9 = 0;
                          v25 = 0.0;
                          if ((*(v34 + 224) & 4) == 0 || *(this + 11) != 0x3C003C003C003C00)
                          {
                            goto LABEL_34;
                          }

                          goto LABEL_64;
                        }

                        if (*(this + 11) == 0x3C003C003C003C00)
                        {
LABEL_64:
                          v25 = *(v34 + 28);
                          v9 = *(v34 + 48);
                          if (v9)
                          {
                            ++*v9;
                          }

LABEL_34:
                          os_unfair_lock_unlock((v18 + 40));
                          os_unfair_lock_unlock((v17 + 52));
                          if (v9)
                          {
                            if (v25 == 1.0 || (*(this + 239) & 2) != 0)
                            {
                              *a2 = v25;
                              return v9;
                            }

                            CA::OGL::Context::release_surface(**(this + 1), v9);
                          }

                          goto LABEL_12;
                        }

LABEL_41:
                        v9 = 0;
                        v25 = 0.0;
                        goto LABEL_34;
                      }
                    }
                  }
                }

LABEL_33:
                v9 = 0;
                goto LABEL_34;
              }

              v21 = 0;
            }

            v22 = 1;
            goto LABEL_28;
          }
        }
      }
    }
  }

LABEL_12:

  return CA::OGL::ImagingNode::retain_surface(this, a2, a3);
}

uint64_t CA::OGL::filter_flags(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    v8 = *(a1 + 48);
    if (!v8)
    {
      return 0;
    }

    if (CA::ColorMatrix::is_opaque_identity(v8))
    {
      return 70;
    }

    return 6;
  }

  v4 = *(v3 + 48);
  if (v4 && (*(*v4 + 72))(*(v3 + 48)))
  {
    v6 = (*(*v4 + 112))(v4, v3, a2);
    goto LABEL_25;
  }

  v7 = *(v3 + 24);
  if (v7 > 203)
  {
    if ((v7 - 495) >= 2 && v7 != 304)
    {
      v6 = v7 == 204;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v7 <= 108)
  {
    v6 = 0;
    if (v7 != 28 && v7 != 30)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v7 == 109 || v7 == 125 || (v6 = 0, v7 == 177))
  {
LABEL_24:
    v6 = 6;
  }

LABEL_25:
  v10 = *(a1 + 48);
  if (v10)
  {
    if (CA::ColorMatrix::is_opaque_identity(v10))
    {
      return v6 | 0x40;
    }

    else
    {
      return v6 & 0xFFFFFFEF;
    }
  }

  return v6;
}

uint64_t CA::Shape::scale_and_dilate(CA::Shape *this, float32x2_t a2, float32_t a3, unsigned int a4, unsigned int a5)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12 = 1;
  v13[0] = this;
  v11[0] = 0;
  v11[1] = 0;
  v13[1] = 0;
  v13[2] = 0;
  a2.f32[1] = a3;
  v10 = a2;
  v9 = __PAIR64__(a5, a4);
  while (CA::ShapeIterator::iterate(v13, v11))
  {
    v6 = vcvt_f32_s32(v11[0]);
    *&v7 = vsub_s32(vcvtm_s32_f32(vmul_f32(v10, v6)), v9);
    *(&v7 + 1) = vsub_s32(vadd_s32(vcvtp_s32_f32(vmul_f32(vadd_f32(vcvt_f32_s32(v11[1]), v6), v10)), v9), *&v7);
    *v11 = v7;
    CA::shape_union(&v12, v11, v5);
  }

  return v12;
}

void CA::shape_intersect(CA *this, uint64_t a2, const CA::Shape *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *this;
  if (*this)
  {
    if (v4 == 1)
    {
      return;
    }
  }

  else
  {
    v5 = *(v4 + 4);
    if (v5 == 6)
    {
      return;
    }

    if (v5 != 12)
    {
      goto LABEL_8;
    }
  }

  if (a2)
  {
    if (a2 == 1)
    {
      goto LABEL_8;
    }
  }

  else if (*(a2 + 4) != 12)
  {
LABEL_8:
    v6 = CA::Shape::intersect(*this, a2);
    CA::Shape::unref(v4);
    *this = v6;
    return;
  }

  if (v4)
  {
    v9 = v4 >> 48;
    v7 = v4 << 16 >> 48;
    v10 = ((v4 >> 2) & 0x7FFF) + v7;
    v8 = (v4 >> 48) + (v4 >> 17);
    if (a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    LODWORD(v7) = *(v4 + 20);
    LODWORD(v9) = *(v4 + 28);
    v8 = *(v4 + 32);
    v10 = *(v4 + 36);
    if (a2)
    {
LABEL_12:
      v11 = a2 >> 48;
      v12 = a2 << 16 >> 48;
      v13 = ((a2 >> 2) & 0x7FFF) + v12;
      v14 = (a2 >> 48) + (a2 >> 17);
      goto LABEL_15;
    }
  }

  LODWORD(v12) = *(a2 + 20);
  LODWORD(v11) = *(a2 + 28);
  v14 = *(a2 + 32);
  v13 = *(a2 + 36);
LABEL_15:
  if (v9 >= v11)
  {
    if (v7 < v12 || v8 > v14)
    {
      LODWORD(v11) = v9;
    }

    else
    {
      LODWORD(v11) = v9;
      if (v10 <= v13)
      {
        return;
      }
    }
  }

  if (v7 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v7;
  }

  if (v8 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v8;
  }

  if (v10 >= v13)
  {
    v10 = v13;
  }

  v17 = v16 - v11;
  if (v16 <= v11 || (v18 = v10 - v15, v10 <= v15))
  {
    CA::Shape::unref(*this);
    *this = 1;
  }

  else if ((v4 & 1) != 0 || *v4 != 1)
  {
    CA::Shape::unref(*this);
    v20[0] = v11;
    v20[1] = v15;
    v20[2] = v17;
    v20[3] = v18;
    *this = CA::Shape::new_shape(v20, v19);
  }

  else
  {
    *(v4 + 20) = v15;
    *(v4 + 28) = v11;
    *(v4 + 32) = v16;
    *(v4 + 36) = v10;
  }
}

void CA::OGL::anonymous namespace::filter_backdrop(uint64_t a1, const CA::Bounds *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CA::Shape **a7, uint64_t a8, double a9, __n128 a10, uint64_t a11, unsigned __int8 a12)
{
  v12 = a5;
  v190 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  *(a5 + 28) = *(a5 + 24);
  if (!a4)
  {
    goto LABEL_40;
  }

  v15 = *(a4 + 16);
  if (!v15)
  {
    goto LABEL_40;
  }

  v17 = a4 + 24;
  if ((*(*(a4 + 24) + 13) & 1) == 0)
  {
    v18 = 0;
    do
    {
      if (v15 - 1 == v18)
      {
        goto LABEL_40;
      }

      v19 = *(a4 + 32 + 8 * v18++);
    }

    while ((*(v19 + 13) & 1) == 0);
    if (v18 >= v15)
    {
      goto LABEL_40;
    }
  }

  v20 = *(a5 + 32);
  if (v20)
  {
    v21 = v20[3].i32[2];
    v22 = v20[3].i32[3];
    v174[0] = v20[3].i64[0];
    a10.n128_u64[0] = v174[0];
    v174[1] = __PAIR64__(v22, v21);
    v173 = 0;
    v167 = a10;
    if (a12)
    {
      if (v21 <= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v21;
      }

      if (v21 >= v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = v21;
      }

      if (v23 <= 1073741822 && v24 >= 1)
      {
        v174[0] = vadd_s32(v174[0], 0x100000001);
        LODWORD(v174[1]) = v21 - 2;
        HIDWORD(v174[1]) = v22 - 2;
        if (v21 - 2 < 1 || v22 - 2 <= 0)
        {
          v174[1] = 0;
        }
      }

      v27 = v20[3];
      v179 = v27;
      if (*(a5 + 224))
      {
        v28 = v27.i32[2];
        if (v27.i32[2] <= v27.i32[3])
        {
          v29 = v27.i32[3];
        }

        else
        {
          v29 = v27.i32[2];
        }

        if (v27.i32[2] >= v27.i32[3])
        {
          v28 = v27.i32[3];
        }

        if (v29 <= 1073741822 && v28 >= 1)
        {
          v179 = vaddq_s32(v27, xmmword_183E21750);
          v31 = vclez_s32(*&vextq_s8(v179, v179, 8uLL));
          if (vorr_s8(v31, vdup_lane_s32(v31, 1)).u8[0])
          {
            v179.i64[1] = 0;
          }
        }
      }

      v173 = CA::Shape::new_shape(&v179, a2);
      if (a7)
      {
        CA::shape_subtract(&v173, a7, v32, v33);
      }

      else
      {
        CA::shape_subtract(&v173, v174, v32);
      }
    }

    v36 = *(v12 + 48);
    if (v36 && v36 == *(v12 + 32))
    {
      CA::OGL::Context::release_surface(v13, v36);
      a7 = 0;
      a6 = 0;
      *(v12 + 48) = 0;
    }

    v161 = v13;
    v182 = 0x3C003C003C003C00;
    v185 = 0;
    v187 = 0;
    v183 = 0;
    v184 = 0;
    v188 = 0;
    v189 = 1025;
    v180 = 0;
    v179 = 0uLL;
    v186 = 1065353216;
    memset(v178, 0, sizeof(v178));
    CA::Shape::operator=(v178, v174);
    v37 = a6;
    if (!a6)
    {
      v37 = v178;
    }

    v179.i64[1] = v37;
    v38 = *(a4 + 16);
    if (v38)
    {
      v39 = 8 * v38;
      v40 = v39;
      v41 = a4 + 24;
      while (*(*v41 + 24) != 57)
      {
        v41 += 8;
        v40 -= 8;
        if (!v40)
        {
          v42 = 16777231;
          goto LABEL_64;
        }
      }

      if (*(*v17 + 24) == 57)
      {
        v42 = 16777231;
      }

      else
      {
        v42 = 17039439;
      }

      v179.i64[1] = &CA::Shape::_infinite_shape;
LABEL_64:
      v43 = 0;
      v160 = 0;
      v148 = 0;
      while (1)
      {
        if ((*(*v17 + 12) & 0x40100) == 0x100)
        {
          v44 = *(*v17 + 24);
          if (v44 <= 282)
          {
            if (v44 != 97 && v44 != 202)
            {
              if (v44 != 280)
              {
                goto LABEL_75;
              }

LABEL_74:
              ++v43;
              ++v160;
              goto LABEL_75;
            }

LABEL_72:
            ++v43;
            v148 = 1;
            goto LABEL_75;
          }

          if ((v44 - 283) < 2)
          {
            goto LABEL_72;
          }

          if (v44 == 737)
          {
            goto LABEL_74;
          }
        }

LABEL_75:
        v17 += 8;
        v39 -= 8;
        if (!v39)
        {
          if (a7)
          {
            if (v43)
            {
              v179.i64[1] = a7;
            }
          }

          else
          {
            a7 = v178;
          }

          goto LABEL_80;
        }
      }
    }

    v43 = 0;
    v160 = 0;
    v148 = 0;
    v42 = 16777231;
    if (!a7)
    {
      a7 = v178;
    }

LABEL_80:
    v181 = v12 + 72;
    v172 = 0;
    v171 = 0;
    v45 = CA::OGL::prepare_filters(a1, a2, a4, 1, &v172, 1, 0);
    if (v45)
    {
      v145 = a7;
      v46 = 0;
      ptr = v45;
      v47 = v45;
      do
      {
        v46 += !CA::OGL::can_filter_in_place(v47);
        v47 = *v47;
      }

      while (v47);
      v49 = *(v12 + 48);
      v50 = *(v12 + 32);
      v51 = v50[23] & 0x30 | v42;
      v52 = v161;
      v150 = v43;
      v158 = v51;
      if (!v46)
      {
        v54 = *(v12 + 32);
        ++*v50;
        v53 = a2;
        if (v49)
        {
          CA::OGL::Context::release_surface(v161, v49);
        }

        goto LABEL_101;
      }

      v53 = a2;
      v48 = v167;
      if (v49)
      {
        *(v49 + 48) = v167.n128_u64[0];
        v54 = v49;
        *(v49 + 56) = v21;
        *(v49 + 60) = v22;
LABEL_101:
        (*(*v161 + 760))(v161, v54, 16, 16, v48);
        *(v54 + 48) = v167.n128_u64[0];
        v165 = v21;
        *(v54 + 56) = v21;
        *(v54 + 60) = v22;
        v63 = v54;
        if (v46 < 2)
        {
          v65 = 0;
        }

        else
        {
          v64 = (*(*v161 + 696))(v161, 1, a11, v158, @"image-filter-backdrop-temporary-surface");
          if (!v64)
          {
            v57 = 0;
            *(v12 + 48) = 0;
            v66 = v54;
            goto LABEL_209;
          }

          v65 = v64;
          (*(*v161 + 760))(v161, v64, 16, 16);
          *(v65 + 48) = v167.n128_u64[0];
          v53 = a2;
          *(v65 + 56) = v165;
          *(v65 + 60) = v22;
        }

        v91 = (v46 & 1) == 0;
        v66 = v63;
        if (v91)
        {
          v66 = v65;
        }

        else
        {
          v63 = v65;
        }

        if (BYTE11(xmmword_1ED4E97DC) == 1)
        {
          if (x_log_get_ogl(void)::once != -1)
          {
            dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
          }

          v136 = x_log_get_ogl(void)::log;
          v53 = a2;
          if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v137 = *(a4 + 16);
            *buf = 67109376;
            *&buf[4] = v137;
            LOWORD(v177[0]) = 2048;
            *(v177 + 2) = ptr;
            _os_log_impl(&dword_183AA6000, v136, OS_LOG_TYPE_DEFAULT, "  applying %d merged group filters (lst %p)\n", buf, 0x12u);
          }
        }

        v57 = 0;
        v67 = 0;
        v68 = 0;
        v151 = 0;
        v69 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        v142 = v69;
        v143 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
        v69.i32[0] = 1073741822;
        v141 = v69;
        v139 = vdupq_n_s64(0x41C0000000000000uLL);
        v140 = vdupq_n_s64(0xC1BFFFFFFF000000);
        v70 = ptr;
        v168 = 1;
        v71 = v63;
        v162 = v12;
        while (1)
        {
          v163 = v67;
          v166 = v66;
          v159 = v68;
          v72 = *(v12 + 224);
          can_filter_in_place = CA::OGL::can_filter_in_place(v70);
          v155 = v57 != 0;
          *buf = 0;
          v177[0] = 0;
          v175 = 0;
          v74 = *(v53 + 21);
          v75 = v70[2];
          v76 = CA::OGL::filter_source_layer_name(v75);
          v77 = CA::OGL::LayerNode::filter_source_layer(v74, v76);
          v149 = v57;
          v156 = v72;
          if (v77)
          {
            v78 = v77;
            v170 = 0uLL;
            CA::Shape::get_bounds(v179.u64[1], &v170);
            v79.i32[1] = v170.i32[3];
            v80.i64[0] = v170.i32[0];
            v80.i64[1] = v170.i32[1];
            v81 = v80;
            v82 = v170.i32[3];
            v80.i64[0] = v170.i32[2];
            v80.i64[1] = v170.i32[3];
            v83 = v80;
            if (v170.i32[2] > v170.i32[3])
            {
              v82 = v170.i32[2];
            }

            v79.i32[0] = v82;
            v84 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v79, v141), 0), v143, vcvtq_f64_s64(v81));
            v85 = vcvtq_f64_s64(v83);
            v86 = vdup_n_s32(v82 > 1073741822);
            v87.i64[0] = v86.u32[0];
            v87.i64[1] = v86.u32[1];
            v88 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v87, 0x3FuLL)), v142, v85);
            v89 = 1.0 / *(v12 + 28);
            v90 = v89;
            v91 = *v88.i64 >= 1.79769313e308 || v89 == 1.0;
            v92.i64[1] = v84.i64[1];
            v93.i64[1] = v88.i64[1];
            if (v91)
            {
              v94 = 0;
            }

            else
            {
              v94 = -1;
            }

            v95 = vdupq_n_s64(v94);
            *v93.i64 = v90 * *v88.i64;
            v96 = vbslq_s8(v95, v93, v88);
            *v92.i64 = v90 * *v84.i64;
            v97 = vbslq_s8(v95, v92, v84);
            if (v89 != 1.0 && v96.f64[1] < 1.79769313e308)
            {
              v97.f64[1] = vmuld_lane_f64(v90, v97, 1);
              v96.f64[1] = v96.f64[1] * v90;
            }

            v98 = *(v53 + 21);
            v99 = vceqzq_f64(v96);
            if ((vorrq_s8(vdupq_laneq_s64(v99, 1), v99).u64[0] & 0x8000000000000000) != 0 || (v100 = vceqq_f64(v96, v96), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v100), 1), v100).u64[0] & 0x8000000000000000) != 0))
            {
              v170 = 0uLL;
            }

            else
            {
              v101 = vminnmq_f64(vaddq_f64(v97, v96), v139);
              v102 = vcvtmq_s64_f64(vmaxnmq_f64(v97, v140));
              v170 = vuzp1q_s32(v102, vsubq_s64(vcvtpq_s64_f64(v101), v102));
            }

            v177[0] = CA::OGL::LayerNode::retain_filter_source_surface(v98, v78, v70, &v175 + 4, &v170);
            if (v177[0])
            {
              v103 = 0;
            }

            else
            {
              v103 = v78;
            }

            v75 = v70[2];
          }

          else
          {
            v103 = 0;
          }

          v104 = 0;
          if (!v75)
          {
            v107 = v161;
            goto LABEL_158;
          }

          v105 = *(v75 + 24);
          if (v105 <= 279)
          {
            v107 = v161;
            if (v105 != 97 && v105 != 202)
            {
              goto LABEL_158;
            }
          }

          else
          {
            v106 = (v105 - 280) > 4 || ((1 << (v105 - 24)) & 0x19) == 0;
            v107 = v161;
            if (v106 && v105 != 737)
            {
              goto LABEL_158;
            }
          }

          v109 = v105 == 280 || v105 == 737;
          --v150;
          if (a6 && !v150)
          {
            v179.i64[1] = a6;
          }

          v160 -= v109;
          v110 = *(a3 + 12);
          if ((v110 & 0x400) == 0 || (*(v107 + 873) & 0x20) != 0)
          {
            v104 = 0;
          }

          else
          {
            v104 = 0;
            if ((*(*(a1 + 8) + 1379) & 2) != 0 && v105 == 737)
            {
              v104 = (byte_1ED4E98AA ^ 1) & ((v110 & 0x40000u) >> 18);
            }
          }

LABEL_158:
          v111 = v71;
          if (!v163)
          {
            v111 = *(v162 + 32);
          }

          if (can_filter_in_place)
          {
            v112 = v71;
          }

          else
          {
            v112 = v166;
          }

          v113 = v179.i64[1];
          if (v163)
          {
            v114 = v179.i64[1];
          }

          else
          {
            v114 = a8;
          }

          v168 &= can_filter_in_place;
          v154 = v112;
          if (v168)
          {
            v115 = can_filter_in_place;
            v112 = *(v162 + 32);
            v179.i64[1] = a8;
            v111 = v112;
            v151 = v113;
          }

          else
          {
            v116 = a12 ^ 1;
            if (v160)
            {
              v116 = 1;
            }

            v115 = can_filter_in_place;
            if (((v116 | can_filter_in_place) & 1) == 0)
            {
              *(v112 + 48) = *v174;
            }
          }

          v179.i64[0] = CA::OGL::Context::set_gstate(v107, &v179);
          CA::OGL::Context::push_surface(v107, v112, *(v112 + 144) >= 0, 64, 0);
          if ((v168 & 1) == 0 && v173 && v160)
          {
            v170.i64[0] = 0;
            (*(*v107 + 1000))(v107);
          }

          v169 = 1.0;
          v117 = *(v162 + 28);
          *buf = v111;
          *&v175 = v117;
          v118 = &v169;
          if ((v155 | v148))
          {
            v118 = 0;
          }

          v119 = &v171;
          if (!v104)
          {
            v119 = 0;
          }

          v53 = a2;
          CA::OGL::emit_filter(a1, v70, a2, buf, &v175, v103, v156 & 1, v145, v117, v114, v118, v119);
          if (v177[0])
          {
            CA::OGL::Context::release_surface(v161, v177[0]);
          }

          if (v168)
          {
            v121 = v151;
          }

          else
          {
            v121 = v179.i64[1];
          }

          v120.f32[0] = v169;
          v122 = v115;
          if ((v169 == 1.0) | (v155 | v148) & 1)
          {
            v52 = v161;
            v12 = v162;
            v66 = v166;
            v57 = v149;
            goto LABEL_194;
          }

          v57 = CA::Shape::scale_and_dilate(v121, v120, v169, 1u, 1u);
          v12 = v162;
          *(v162 + 28) = *(v162 + 28) * v169;
          v66 = v166;
          *v174 = *(v166 + 48);
          v157 = *v174;
          v170 = 0uLL;
          CA::Shape::get_bounds(v57, &v170);
          v123 = v170.i64[1];
          v124 = vclez_s32(*(&v157 + 8));
          v125 = vpmax_u32(v124, v124).u32[0];
          v126 = vclez_s32(v170.u64[1]);
          v127 = vpmax_u32(v126, v126).u32[0];
          v52 = v161;
          if ((v125 & 0x80000000) != 0)
          {
            if ((v127 & 0x80000000) == 0)
            {
              v128 = v170.i64[0];
              goto LABEL_192;
            }
          }

          else if ((v127 & 0x80000000) == 0)
          {
            v128 = vmin_s32(*&v157, *v170.i8);
            v123 = vsub_s32(vmax_s32(vadd_s32(*&v157, *(&v157 + 8)), vadd_s32(*v170.i8, v170.u64[1])), v128);
LABEL_192:
            v174[0] = v128;
            v174[1] = v123;
          }

          v121 = v57;
LABEL_194:
          if (BYTE1(xmmword_1ED4E97DC) == 1 && !*v70)
          {
            *(*(v52 + 16) + 497) |= 1u;
            v131 = *(v52 + 16);
            *(v131 + 496) = 3;
            *(v131 + 8) = 0x3804000038043804;
            v170 = 0uLL;
            CA::OGL::emit_combine(v52, 0, 0, 0, v121, &v170);
            *(*(v52 + 16) + 497) &= ~1u;
          }

          CA::OGL::Context::pop_surface(v52);
          CA::OGL::Context::set_gstate(v52, **(v52 + 656));
          v179.i64[1] = v121;
          if (!v122)
          {
            v66 = v71;
          }

          v129 = CA::OGL::filter_flags(v70, a2);
          if ((v129 & 0x10) != 0)
          {
            v130 = ~(8 * *(v52 + 1384)) & 0x10;
          }

          else
          {
            v130 = 0;
          }

          v67 = v163 + !v122;
          v68 = v159 | ((v129 & 8) >> 3);
          *(v112 + 148) = *(v112 + 148) & 0xFFEF | v130;
          v70 = *v70;
          v71 = v154;
          if (!v70)
          {
            if (v159 & 1 | ((v129 & 8) != 0))
            {
              *(v154 + 148) |= 2u;
            }

            *(v12 + 48) = v154;
            if (!v66)
            {
LABEL_210:
              v132 = ptr;
              do
              {
                v133 = *v132;
                CA::OGL::finalize_filter(v132);
                v132 = v133;
              }

              while (v133);
              goto LABEL_212;
            }

LABEL_209:
            CA::OGL::Context::release_surface(v52, v66);
            goto LABEL_210;
          }
        }
      }

      v164 = (*(*v161 + 696))(v161, 1, a11, v51 | 0x400u, @"image-filter-backdrop", v167);
      v58 = *(a2 + 3);
      if (v58)
      {
        v60 = CA::Render::Layer::process_id(*(v58 + 152));
        v61 = *(a2 + 3);
        if (v61)
        {
          layer_resource_text = CA::Render::create_layer_resource_text(v61, v59);
          goto LABEL_98;
        }
      }

      else
      {
        v60 = 0;
      }

      layer_resource_text = 0;
LABEL_98:
      (*(*v161 + 888))(v161, v164, 0, v60, @"image-filter-backdrop", layer_resource_text);
      if (layer_resource_text)
      {
        CFRelease(layer_resource_text);
      }

      v53 = a2;
      v54 = v164;
      if (!v164)
      {
        v57 = 0;
        *(v12 + 48) = 0;
        goto LABEL_210;
      }

      goto LABEL_101;
    }

    v55 = *(v12 + 48);
    v52 = v161;
    if (v55)
    {
      CA::OGL::Context::release_surface(v161, v55);
      *(v12 + 48) = 0;
    }

    v56 = *(v12 + 32);
    v57 = 0;
    if (v56)
    {
      ++*v56;
      *(v12 + 48) = v56;
    }

LABEL_212:
    if (v173)
    {
      CA::Shape::unref(v173);
    }

    if (v57)
    {
      CA::Shape::unref(v57);
    }

    v134 = v171;
    if (v171)
    {
      v135 = *(v12 + 40);
      if (v135)
      {
        CA::OGL::Context::release_surface(v52, v135);
        v134 = v171;
      }

      *(v12 + 40) = v134;
    }
  }

  else
  {
LABEL_40:
    v34 = *(a5 + 48);
    v35 = *(a5 + 32);
    if (v34 != v35)
    {
      if (v34)
      {
        CA::OGL::Context::release_surface(v13, v34);
        v35 = *(v12 + 32);
      }

      if (v35)
      {
        ++*v35;
        *(v12 + 48) = v35;
      }

      else
      {
        *(v12 + 48) = 0;
      }
    }
  }
}

void CA::WindowServer::IOMFBDisplay::foreach_detached_layer_geometry(CA::WindowServer::IOMFBDisplay *this, void (__high *a2)(CA::Render::Handle *, uint64_t, CA::Render::Texture *, CA::Rect, CA::Rect, unsigned int, void *), void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3287);
  if (v3 && (*(v3 + 292) & 1) == 0)
  {
    v5 = *v3;
    if (*v3)
    {
      v8 = *(v3 + 72);
      v9 = v3[1];
      v10 = *(v3 + 5);
      v13[0] = *(v3 + 4);
      v13[1] = v10;
      v11 = *(v3 + 7);
      v12[0] = *(v3 + 6);
      v12[1] = v11;
      (a2)(v5, v8, v9, v13, v12, *(v3 + 8), a3);
    }

    else
    {

      CA::WindowServer::IOMFBDisplay::delete_detached_layer(this);
    }
  }
}

uint64_t CA::OGL::emit_filter_quads_color(uint64_t a1, int32x2_t *a2, uint64_t *a3, float a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v8 = *(*(a1 + 656) + 8);
  v16[0] = a1;
  v16[1] = v8;
  v17 = 0u;
  v16[2] = 0;
  WORD4(v17) = 256;
  CA::OGL::Context::ClippedArray::start(v16);
  v15[0] = 0;
  v15[1] = 0;
  while (1)
  {
    result = CA::OGL::Context::ClippedArray::next_rect(v16, v15);
    if (!result)
    {
      break;
    }

    if (*(a1 + 108))
    {
      v10 = 6;
    }

    else
    {
      v10 = 4;
    }

    if ((*(a1 + 144) + 4) > *(a1 + 152) || (v11 = *(a1 + 128)) != 0 && *(a1 + 120) + v10 > v11)
    {
      *(a1 + 1384) |= 0x20u;
      CA::OGL::Context::array_flush(a1);
      *(a1 + 144) = 0;
      *(a1 + 112) = a1 + 1386;
      *(a1 + 120) = xmmword_183E20E50;
    }

    CA::OGL::Context::array_rect(a1, a2[6].i32[0] * a4, a2[6].i32[1] * a4, (a2[7].i32[0] + a2[6].i32[0]) * a4, (a2[7].i32[1] + a2[6].i32[1]) * a4);
    v12 = *(a1 + 136) + 48 * *(a1 + 144);
    *(v12 - 176) = 0;
    *(v12 - 124) = 0;
    v13 = vcvt_f32_s32(a2[7]);
    *(v12 - 128) = v13.i32[0];
    *(v12 - 80) = v13;
    *(v12 - 28) = v13.i32[1];
    *(v12 - 32) = 0;
    v14 = *a3;
    *(v12 - 160) = *a3;
    *(v12 - 112) = v14;
    *(v12 - 64) = v14;
    *(v12 - 16) = v14;
  }

  return result;
}

uint64_t CA::OGL::GlassBackgroundFilter::filter_source_roi(int32x4_t a1, int32x4_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int32x2_t *a7)
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a7[1].i32[0];
  v9 = a7[1].i32[1];
  if (v8 <= v9)
  {
    v10 = a7[1].i32[1];
  }

  else
  {
    v10 = a7[1].i32[0];
  }

  a1.i32[0] = 1073741822;
  a2.i32[0] = v10;
  v11.i64[0] = a7->i32[0];
  v11.i64[1] = HIDWORD(*a7);
  v37 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(a2, a1), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v11));
  if (v10 <= 1073741822)
  {
    v12.f64[0] = v8;
  }

  else
  {
    v12.f64[0] = 1.79769313e308;
  }

  if (v10 <= 1073741822)
  {
    v13 = v9;
  }

  else
  {
    v13 = 1.79769313e308;
  }

  v38 = v13;
  v39 = v12.f64[0];
  v12.f64[1] = v13;
  v36 = v12;
  v14 = *(a5 + 40);
  v40 = xmmword_183E210C0;
  vec2_key = CA::Render::KeyValueArray::get_vec2_key(v14, 427, &v40);
  v34 = v16;
  v35 = vec2_key;
  float_key = CA::Render::KeyValueArray::get_float_key(v14, 429, 25.0);
  v18 = CA::Render::KeyValueArray::get_float_key(v14, 428, 1.0);
  v20.f64[0] = CA::OGL::gaussian_expansion_factor(v19, v18);
  if (fmax(v39, v38) < 1.79769313e308 && (v39 >= v38 ? (v21 = v38) : (v21 = v39), v21 > 0.0))
  {
    v20.f64[0] = -(float_key * v20.f64[0]);
    v23 = vaddq_f64(v37, vdupq_lane_s64(*&v20.f64[0], 0));
    v37 = v23;
    v20.f64[0] = v20.f64[0] * -2.0;
    *v24.i64 = v20.f64[0] + v39;
    v20.f64[0] = v20.f64[0] + v38;
    v23.f64[0] = fmin(*v24.i64, v20.f64[0]);
    v24.i64[1] = *&v20.f64[0];
    v20.f64[0] = 0.0;
    v22 = vandq_s8(v24, vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v20, v23)).i64[0], 0));
  }

  else
  {
    v22 = v36;
  }

  v25 = vceqzq_f64(v22);
  v26 = vorrq_s8(vdupq_laneq_s64(v25, 1), v25).u64[0];
  v27 = 0uLL;
  if ((v26 & 0x8000000000000000) == 0)
  {
    v28 = vceqq_f64(v22, v22);
    if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v28), 1), v28).u64[0] & 0x8000000000000000) == 0)
    {
      v29.f64[0] = v35;
      v29.f64[1] = v34;
      v30 = vsubq_f64(v37, v29);
      v31 = vcvtmq_s64_f64(vmaxnmq_f64(v30, vdupq_n_s64(0xC1BFFFFFFF000000)));
      v27 = vuzp1q_s32(v31, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v30, v22), vdupq_n_s64(0x41C0000000000000uLL))), v31));
    }
  }

  v32 = vextq_s8(v27, v27, 8uLL).u64[0];

  return CA::BoundsImpl::Union(a7, *v27.i8, v32);
}

void CA::OGL::capture_backdrop(uint64_t *a1, const CA::Bounds *a2)
{
  v659 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = *(*a1 + 656);
  if (BYTE6(xmmword_1ED4E97EC) == 1)
  {
    PerfHud = CA::OGL::GetPerfHud(a1);
    if (PerfHud)
    {
      ++*(PerfHud + 512);
    }
  }

  v6 = *(*(a2 + 3) + 136);
  if (v6 && (v7 = *v6) != 0)
  {
    if (*(v7 + 12) == 3)
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

  v9 = *(*(a2 + 2) + 256);
  if (v9)
  {
    os_unfair_lock_lock((v9 + 52));
    v10 = *(v9 + 56);
    if (!v10 || *(v9 + 116) != *(a1[1] + 272) && ((v15 = *(v10 + 48)) == 0 || *(v15 + 8) != v4 || (v16 = *(v15 + 32)) == 0 || (v17 = v8, v18 = *(v16 + 72), _ZF = v18 == (*(*v4 + 144))(v4), v8 = v17, _ZF)))
    {
LABEL_119:
      os_unfair_lock_unlock((v9 + 52));
      return;
    }

    os_unfair_lock_lock((v10 + 40));
    v11 = *(v8 + 12);
    v588 = v5;
    if ((v11 & 0x1000) != 0)
    {
      v12 = *(v10 + 72);
      v13 = *(v10 + 80);
      if ((v11 & 0x400) == 0 && v13 - v12 == 192)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v12 = *(v10 + 72);
      v13 = *(v10 + 80);
    }

    v592 = CA::Render::BackdropGroup::layer_item(v12, v13, v9, *(a1[1] + 272));
    if (!v592)
    {
      goto LABEL_118;
    }

    if (*(v592 + 180) == 1 && (*(*v4 + 232))(v4, 27))
    {
      v14 = *(v10 + 584);
      if (v14)
      {
        CA::Shape::unref(v14);
        *(v10 + 584) = 0;
      }

      *(v10 + 12) |= 0x800u;
      goto LABEL_118;
    }

    *(v10 + 12) &= ~0x800u;
    v20 = *(v10 + 48);
    if (v20)
    {
      v21 = *(v20 + 8);
      v22 = v21 == v4 ? *(v10 + 48) : 0;
      if (v21 == v4)
      {
LABEL_45:
        v27 = a1[1];
        v28 = *(v27 + 272);
        if (*(v22 + 15) == v28)
        {
          v29 = *(v27 + 288);
          if (*(v22 + 16) == v29)
          {
            goto LABEL_118;
          }
        }

        else
        {
          v29 = *(v27 + 288);
        }

        if ((*(v10 + 492) != v28 || *(v10 + 496) != v29) && *(v10 + 488) == v28)
        {
          v31 = *(v10 + 72);
          v30 = *(v10 + 80);
          if (v30 != v31)
          {
            v32 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v31) >> 6);
            v33 = v32 - 1;
            v34 = (v31 + ((v30 - v31) >> 6 << 6) - 192);
            v35 = -1;
            do
            {
              if (*v34 == *(v9 + 24) && *(v9 + 32) == v34[1] && v34[2] == *(v9 + 40))
              {
                v35 = v33;
              }

              --v33;
              v34 -= 24;
            }

            while (v33 != -1);
            if (v35 < v32)
            {
              v557 = v8;
              v570 = v22;
              v36 = 0;
              *(v10 + 492) = v28;
              *(v10 + 496) = v29;
              *(v10 + 504) = v35;
              v37 = (v31 + 192 * v35);
              *(v10 + 512) = v37[2];
              v38 = v37[3];
              *(v10 + 528) = v38;
              v568 = v37[4];
              v39 = 152;
              v38.i32[0] = 2139095040;
              v571 = v38;
              v574 = v37[5];
              v577 = v38;
              v580 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
              v583 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
              while (1)
              {
                v40 = (v31 + v39);
                v41 = vcvt_f32_f64(*(v31 + v39 - 120));
                v42 = vadd_f32(vcvt_f32_f64(*(v31 + v39 - 104)), v41);
                *(v40 - 3) = *&v41;
                *(v40 - 2) = __PAIR64__(v41.u32[1], v42.u32[0]);
                v41.i32[1] = v42.i32[1];
                *(v40 - 1) = *&v42;
                *v40 = *&v41;
                if (v35 != v36)
                {
                  break;
                }

LABEL_88:
                ++v36;
                v39 += 192;
                if (v36 >= 0xAAAAAAAAAAAAAAABLL * ((v30 - v31) >> 6))
                {
                  v78 = *(v10 + 624);
                  if (v78)
                  {
                    v79 = *(v78 + 16);
                    if (v79)
                    {
                      v80 = 0;
                      v81 = v78 + 24;
                      while (1)
                      {
                        v82 = *(v81 + 8 * v80);
                        if (*(v82 + 24) == 280)
                        {
                          break;
                        }

                        if (v79 == ++v80)
                        {
                          goto LABEL_111;
                        }
                      }

                      v83 = *(v82 + 40);
                      v649 = 0u;
                      v648 = 0u;
                      CA::Render::KeyValueArray::get_rect_key(&v648, v83, 0x165, 0, 0);
                      v84 = *&v649;
                      if (*&v649 >= *(&v649 + 1))
                      {
                        v84 = *(&v649 + 1);
                      }

                      if (v84 > 0.0)
                      {
                        v85 = CA::Render::Array::new_array(v83[4], v83 + 6, 1, v83[3] >> 8);
                        buf[0] = v568;
                        buf[1] = vaddq_f64(v574, v568);
                        v87 = CA::Render::Vector::new_vector(4, buf, v86);
                        CA::Render::KeyValueArray::set_key(v85, 357, v87);
                        if (atomic_fetch_add(v87 + 2, 0xFFFFFFFF) == 1)
                        {
                          (*(*v87 + 16))(v87);
                        }

                        v88 = CA::Render::Array::new_array(*(*(v10 + 624) + 16), (*(v10 + 624) + 24), 1, *(*(v10 + 624) + 12) >> 8);
                        v89 = *(v10 + 624);
                        *(v10 + 624) = v88;
                        if (v89 && atomic_fetch_add(v89 + 2, 0xFFFFFFFF) == 1)
                        {
                          (*(*v89 + 16))(v89);
                        }

                        *(*(v10 + 624) + 8 * v80 + 24) = CA::Render::Filter::copy_with_inputs(v82, v85);
                        if (atomic_fetch_add(v85 + 2, 0xFFFFFFFF) == 1)
                        {
                          (*(*v85 + 16))(v85);
                        }

                        if (atomic_fetch_add((v82 + 8), 0xFFFFFFFF) == 1)
                        {
                          (*(*v82 + 16))(v82);
                        }
                      }
                    }
                  }

LABEL_111:
                  if ((*(v570 + 224) & 8) != 0)
                  {
                    goto LABEL_118;
                  }

                  v90 = CA::Transform::operator=(v570 + 72, *(v588 + 24));
                  v91 = *(a2 + 2);
                  v92 = *(v91 + 56);
                  if (v92)
                  {
                    v635 = 0;
                    v634 = 0u;
                    v633 = 0u;
                    v632 = 0u;
                    v631 = 0u;
                    memset(buf, 0, sizeof(buf));
                    CA::Transform::set(buf, v92, 1);
                    if ((v635 & 0x10) != 0)
                    {
                      buf[1].f64[0] = 0.0;
                      buf[3].f64[0] = 0.0;
                      *&v631 = 0x3FF0000000000000;
                      *&v633 = 0;
                    }

                    v95.f64[0] = CA::Transform::concat_left((v570 + 72), buf, v93, v94);
                  }

                  else
                  {
                    v90.n128_u64[0] = *(v91 + 64);
                    v95 = CA::Transform::translate((v570 + 72), v90, *(v91 + 72), 0.0);
                  }

                  if (*(v592 + 181))
                  {
                    goto LABEL_118;
                  }

                  *(v570 + 2) = (*(*v4 + 144))(v4, v95);
                  v658 = 0;
                  memset(v657, 0, sizeof(v657));
                  v656 = 0u;
                  v655 = 0u;
                  v654 = 0u;
                  v653 = 0u;
                  v652 = 0u;
                  v651 = 0u;
                  v650 = 0u;
                  v649 = 0u;
                  v648 = 0u;
                  v620 = 0u;
                  v621 = 0u;
                  v96 = *(v10 + 632);
                  v97 = *(v10 + 656);
                  v593 = *(v10 + 640);
                  v617 = v593;
                  v584 = v97;
                  v618 = v97;
                  v619 = 0u;
                  v616 = 0;
                  v566 = v96;
                  if (v96)
                  {
                  }

                  else
                  {
                  }

                  v100 = v98;
                  if (v98)
                  {
                    v101 = a1[1];
                    *(v570 + 15) = *(v101 + 272);
                    *(v570 + 16) = *(v101 + 288);
                    v102 = fmax(fmin(*(v10 + 64), 1.0), 0.01);
                    *(v570 + 6) = v102;
                    v103 = *(v4 + 896);
                    if (v103)
                    {
                      *(v570 + 6) = 1.0 / v103;
                    }

                    memset(v615, 0, sizeof(v615));
                    v614 = 0;
                    v613 = 0;
                    v612 = 0;
                    v104 = v612;
                    *(v570 + 224) = *(v570 + 224) & 0xEF | (16 * v612);
                    v105 = *(v10 + 528);
                    v610 = *(v10 + 512);
                    v611 = v105;
                    CA::Rect::apply_transform(&v610, (v570 + 72), v106);
                    if (v566)
                    {
                      CA::BoundsImpl::Union(&v610, v593, v584);
                      CA::Render::MeshTransform::apply_rect(buf, v566, v452, v610, v611, v610, v611);
                      v454 = buf[0];
                      v455 = buf[1];
                      v610 = buf[0];
                      v611 = buf[1];
                      v548 = v588 + 80;
                      v456 = a1[1];
                      v457 = *(v456 + 208);
                      v458 = *(v456 + 212);
                      if (v457 <= v458)
                      {
                        v459 = *(v456 + 212);
                      }

                      else
                      {
                        v459 = *(v456 + 208);
                      }

                      v454.i32[0] = 1073741822;
                      v455.i32[0] = v459;
                      v460 = vdupq_lane_s32(*&vcgtq_s32(v455, v454), 0);
                      v461 = *(v456 + 200);
                      v462.i64[0] = v461;
                      v462.i64[1] = SHIDWORD(v461);
                      v463 = vbslq_s8(v460, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v462));
                      v464 = v457;
                      v465 = v458;
                      if (v459 > 1073741822)
                      {
                        v464 = 1.79769313e308;
                        v465 = 1.79769313e308;
                      }

                      v608 = v463;
                      v609.f64[0] = v464;
                      v609.f64[1] = v465;
                      buf[0] = v619;
                      buf[1] = v620;
                      buf[2] = v621;
                      CA::Mat2Impl::mat2_invert(buf, buf[0].f64, v453);
                      CA::Mat2Impl::mat2_apply_to_rect(buf, &v608, v466);
                      v120 = v608;
                    }

                    else
                    {
                      v109.i32[1] = 0;
                      v109.i64[1] = 0;
                      v608 = 0u;
                      v609 = 0u;
                      v548 = v588 + 80;
                      if (*(v588 + 81))
                      {
                        v122 = a1[1];
                        v115 = *(v122 + 208);
                        v116 = *(v122 + 212);
                        if (v115 <= v116)
                        {
                          v123 = *(v122 + 212);
                        }

                        else
                        {
                          v123 = *(v122 + 208);
                        }

                        v118 = v123 <= 1073741822;
                        v109.i32[0] = 1073741822;
                        v107.i32[0] = v123;
                        v124 = vdupq_lane_s32(*&vcgtq_s32(v107, v109), 0);
                        v125 = *(v122 + 200);
                        v126.i64[0] = v125;
                        v126.i64[1] = SHIDWORD(v125);
                        v120 = vbslq_s8(v124, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v126));
                      }

                      else
                      {
                        v110 = v648;
                        v111 = v648.i32[3];
                        if (v648.i32[2] <= v648.i32[3])
                        {
                          v112 = v648.i32[3];
                        }

                        else
                        {
                          v112 = v648.i32[2];
                        }

                        if (v648.i32[2] < v648.i32[3])
                        {
                          v111 = v648.i32[2];
                        }

                        if (v112 <= 1073741822 && v111 >= 1)
                        {
                          v113.i64[0] = 0x100000001;
                          v113.i64[1] = 0x100000001;
                          v108.i64[0] = vaddq_s32(v648, v113).u64[0];
                          v108.u64[1] = vadd_s32(*&vextq_s8(v648, v648, 8uLL), 0x100000001);
                          v114 = vclez_s32(v108.u64[1]);
                          v107 = v108.u64[0];
                          v110 = vbslq_s8(vmovl_s16(vdup_lane_s16(vorr_s8(v114, vdup_lane_s32(v114, 1)), 0)), v108.u64[0], v108);
                        }

                        v115 = v110.i32[2];
                        v116 = v110.i32[3];
                        if (v110.i32[2] <= v110.i32[3])
                        {
                          v117 = v110.i32[3];
                        }

                        else
                        {
                          v117 = v110.i32[2];
                        }

                        v107.i32[0] = 1073741822;
                        v108.i32[0] = v117;
                        v118 = v117 <= 1073741822;
                        v119.i64[0] = v110.i32[0];
                        v119.i64[1] = v110.i32[1];
                        v120 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v108, v107), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v119));
                      }

                      v127 = v115;
                      v128 = v116;
                      if (!v118)
                      {
                        v127 = 1.79769313e308;
                      }

                      v608 = v120;
                      if (!v118)
                      {
                        v128 = 1.79769313e308;
                      }

                      v609.f64[0] = v127;
                      v609.f64[1] = v128;
                    }

                    v607[0] = v610;
                    v607[1] = v611;
                    CA::BoundsImpl::intersect(&v610, v120, v609);
                    if (v104)
                    {
                      v561 = v610;
                    }

                    else
                    {
                      *v130.i8 = CA::OGL::Context::raster_round_rect(buf, v4, v610.f64);
                      if (SLODWORD(buf[0].f64[1]) <= SHIDWORD(buf[0].f64[1]))
                      {
                        v132 = HIDWORD(buf[0].f64[1]);
                      }

                      else
                      {
                        v132 = LODWORD(buf[0].f64[1]);
                      }

                      v130.i32[0] = 1073741822;
                      v131.i32[0] = v132;
                      v133.i64[0] = SLODWORD(buf[0].f64[0]);
                      v133.i64[1] = SHIDWORD(buf[0].f64[0]);
                      v134 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v131, v130), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v133));
                      v135 = SLODWORD(buf[0].f64[1]);
                      v136 = SHIDWORD(buf[0].f64[1]);
                      if (v132 > 1073741822)
                      {
                        v135 = 1.79769313e308;
                      }

                      v561 = v134;
                      v610 = v134;
                      if (v132 > 1073741822)
                      {
                        v136 = 1.79769313e308;
                      }

                      v611.f64[0] = v135;
                      v611.f64[1] = v136;
                    }

                    v137 = v611;
                    v138 = *(v570 + 6);
                    v139 = v138;
                    if (v138 != 1.0 && v611.f64[0] < 1.79769313e308)
                    {
                      v610.f64[0] = v139 * v561.f64[0];
                      v611.f64[0] = v611.f64[0] * v139;
                    }

                    if (v138 != 1.0 && v137.f64[1] < 1.79769313e308)
                    {
                      v610.f64[1] = v561.f64[1] * v139;
                      v611.f64[1] = v137.f64[1] * v139;
                    }

                    v545 = v137.f64[1];
                    v140 = v611;
                    v558 = v137;
                    if (v104)
                    {
                      v141 = v611.f64[1];
                      v142 = v611.f64[0] <= v611.f64[1] ? v611.f64[1] : v611.f64[0];
                      if (v142 < 1.79769313e308)
                      {
                        if (v611.f64[0] < v611.f64[1])
                        {
                          v141 = v611.f64[0];
                        }

                        if (v141 > 0.0)
                        {
                          v143 = vrndpq_f64(v610);
                          v140 = vsubq_f64(vrndmq_f64(vaddq_f64(v610, v611)), v143);
                          v610 = v143;
                          v611 = v140;
                        }
                      }
                    }

                    v606 = 0uLL;
                    CA::Bounds::set_exterior(&v606, v129, v610, v140);
                    v144 = *(a2 + 4);
                    v145 = v144 & 0x2000013C0;
                    v147 = (v144 & 0x20) == 0 || (v146 = *(*(a2 + 3) + 136)) == 0 || *(v146 + 80) == 0;
                    v148 = v145 == 0;
                    has_consistent_background_color = CA::Render::BackdropGroup::has_consistent_background_color(*(v10 + 72), *(v10 + 80));
                    v578 = has_consistent_background_color & v147;
                    v155 = v148 & has_consistent_background_color & v147 | v149;
                    if (v155)
                    {
                      v156 = v613;
                    }

                    else
                    {
                      v156 = 0;
                      LOBYTE(v613) = 0;
                    }

                    v157 = v570;
                    *(v570 + 224) = *(v570 + 224) & 0xFE | v156;
                    v158 = *(v557 + 12);
                    v575 = v100;
                    if (v155 & 1) != 0 && HIBYTE(v613) == 1 && (v156)
                    {
                      v159 = LODWORD(v606.f64[1]);
                      if (SLODWORD(v606.f64[1]) <= SHIDWORD(v606.f64[1]))
                      {
                        v160 = HIDWORD(v606.f64[1]);
                      }

                      else
                      {
                        v160 = LODWORD(v606.f64[1]);
                      }

                      if (SLODWORD(v606.f64[1]) >= SHIDWORD(v606.f64[1]))
                      {
                        v159 = HIDWORD(v606.f64[1]);
                      }

                      v161 = 1;
                      if (v160 <= 1073741822 && v159 >= 1)
                      {
                        v153.i64[1] = *&v606.f64[1];
                        v606 = vaddq_s32(v606, xmmword_183E20FD0);
                        v162 = vclez_s32(*&vextq_s8(v606, v606, 8uLL));
                        if (vorr_s8(v162, vdup_lane_s32(v162, 1)).u32[0])
                        {
                          v606.f64[1] = 0.0;
                        }

                        v157 = v570;
                      }
                    }

                    else
                    {
                      v161 = 0;
                    }

                    v163 = v606;
                    v605 = v606;
                    v164 = *(v557 + 12);
                    v594 = v606;
                    if ((v164 & 0x10000) != 0)
                    {
                      CA::OGL::Context::raster_round_rect(buf, v4, v607);
                      v469.i32[1] = HIDWORD(buf[0].f64[1]);
                      v470 = HIDWORD(buf[0].f64[1]);
                      v471.i64[0] = SLODWORD(buf[0].f64[0]);
                      v471.i64[1] = SHIDWORD(buf[0].f64[0]);
                      v472 = v471;
                      v471.i64[0] = SLODWORD(buf[0].f64[1]);
                      v471.i64[1] = SHIDWORD(buf[0].f64[1]);
                      v473 = v471;
                      if (SLODWORD(buf[0].f64[1]) > SHIDWORD(buf[0].f64[1]))
                      {
                        v470 = LODWORD(buf[0].f64[1]);
                      }

                      v469.i32[0] = v470;
                      v468.i32[0] = 1073741822;
                      v474 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v469, v468), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v472));
                      v475 = vcvtq_f64_s64(v473);
                      v476 = vdup_n_s32(v470 > 1073741822);
                      v477.i64[0] = v476.u32[0];
                      v477.i64[1] = v476.u32[1];
                      v478 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v477, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v475);
                      v479 = *(v157 + 6);
                      v480 = v479;
                      v481 = *v478.i64 >= 1.79769313e308 || v479 == 1.0;
                      v482.i64[1] = v474.i64[1];
                      v483.i64[1] = v478.i64[1];
                      if (v481)
                      {
                        v484 = 0;
                      }

                      else
                      {
                        v484 = -1;
                      }

                      v485 = vdupq_n_s64(v484);
                      *v482.i64 = v480 * *v474.i64;
                      v486 = vbslq_s8(v485, v482, v474);
                      *v483.i64 = v480 * *v478.i64;
                      v487 = vbslq_s8(v485, v483, v478);
                      if (v479 != 1.0 && v487.f64[1] < 1.79769313e308)
                      {
                        v486.f64[1] = vmuld_lane_f64(v480, v486, 1);
                        v487.f64[1] = v487.f64[1] * v480;
                      }

                      CA::Bounds::set_exterior(&v605, v467, v486, v487);
                      if (v161)
                      {
                        v488 = v605.i32[3];
                        if (v605.i32[2] <= v605.i32[3])
                        {
                          v489 = v605.i32[3];
                        }

                        else
                        {
                          v489 = v605.i32[2];
                        }

                        if (v605.i32[2] < v605.i32[3])
                        {
                          v488 = v605.i32[2];
                        }

                        if (v489 <= 1073741822 && v488 >= 1)
                        {
                          v153.i64[1] = v605.i64[1];
                          v605 = vaddq_s32(v605, xmmword_183E20FD0);
                          v490 = vclez_s32(*&vextq_s8(v605, v605, 8uLL));
                          if (vorr_s8(v490, vdup_lane_s32(v490, 1)).u32[0])
                          {
                            v605.i64[1] = 0;
                          }
                        }
                      }

                      v163 = v594;
                      if ((*(v557 + 12) & 0x20000) != 0)
                      {
                        goto LABEL_524;
                      }
                    }

                    else
                    {
                      if ((v164 & 0x20000) == 0)
                      {
                        goto LABEL_201;
                      }

LABEL_524:
                      v491 = a1[1];
                      v492 = *(v491 + 200);
                      v153.i64[0] = *(v491 + 208);
                      v493 = v153.i32[1];
                      v494.i64[0] = v492;
                      v494.i64[1] = SHIDWORD(v492);
                      v495 = v494;
                      v494.i64[0] = v153.i32[0];
                      v494.i64[1] = v153.i32[1];
                      v496 = v494;
                      if (v153.i32[0] > v153.i32[1])
                      {
                        v493 = v153.i32[0];
                      }

                      v153.i32[0] = v493;
                      v154.i32[0] = 1073741822;
                      v497 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v153, v154), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v495));
                      v498 = vcvtq_f64_s64(v496);
                      v499 = vdup_n_s32(v493 > 1073741822);
                      v500.i64[0] = v499.u32[0];
                      v500.i64[1] = v499.u32[1];
                      v501 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v500, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v498);
                      v502 = *(v570 + 6);
                      v503 = v502;
                      v504 = *v501.i64 >= 1.79769313e308 || v502 == 1.0;
                      v505.i64[1] = v497.i64[1];
                      v506.i64[1] = v501.i64[1];
                      if (v504)
                      {
                        v507 = 0;
                      }

                      else
                      {
                        v507 = -1;
                      }

                      v508 = vdupq_n_s64(v507);
                      *v505.i64 = v503 * *v497.i64;
                      v509 = vbslq_s8(v508, v505, v497);
                      *v506.i64 = v503 * *v501.i64;
                      v510 = vbslq_s8(v508, v506, v501);
                      if (v502 != 1.0 && v510.f64[1] < 1.79769313e308)
                      {
                        v509.f64[1] = vmuld_lane_f64(v503, v509, 1);
                        v510.f64[1] = v510.f64[1] * v503;
                      }

                      CA::Bounds::set_exterior(&v605, v151, v509, v510);
                      v163 = v594;
                      if (v161)
                      {
                        v511 = v605.i32[3];
                        if (v605.i32[2] <= v605.i32[3])
                        {
                          v512 = v605.i32[3];
                        }

                        else
                        {
                          v512 = v605.i32[2];
                        }

                        if (v605.i32[2] < v605.i32[3])
                        {
                          v511 = v605.i32[2];
                        }

                        if (v512 <= 1073741822 && v511 >= 1)
                        {
                          v605 = vaddq_s32(v605, xmmword_183E20FD0);
                          v513 = vclez_s32(*&vextq_s8(v605, v605, 8uLL));
                          if (vorr_s8(v513, vdup_lane_s32(v513, 1)).u32[0])
                          {
                            v605.i64[1] = 0;
                          }
                        }
                      }
                    }

LABEL_201:
                    v165 = LODWORD(v163.f64[1]);
                    v166 = HIDWORD(v163.f64[1]);
                    v167 = *(v570 + 4);
                    if (v167 && *(v167 + 56) != *&v163.f64[1])
                    {
                      v163.f64[0] = v594.f64[0];
                    }

                    if (v165 >= v166)
                    {
                      v168 = v166;
                    }

                    else
                    {
                      v168 = v165;
                    }

                    if (v168 < 1)
                    {
                      goto LABEL_118;
                    }

                    v547 = v158 & 0x2000;
                    v169 = BYTE9(xmmword_1ED4E980C);
                    v170 = *(a1[1] + 304) & 0x38000;
                    v171 = v570;
                    v172 = *(v570 + 4);
                    if (v172)
                    {
                      if ((((v170 != 0) ^ *(v10 + 688)) & 1) != 0 || (v173 = *(v172 + 72), v174 = (*(*v4 + 144))(v4), v163.f64[0] = v594.f64[0], v173 != v174))
                      {
                        v163.f64[0] = v594.f64[0];
                      }
                    }

                    if (v170)
                    {
                      v175 = 16778271;
                    }

                    else
                    {
                      v175 = 16778255;
                    }

                    v176 = v175 | (8 * v547);
                    v177 = *(v10 + 624);
                    if (v177)
                    {
                      v178 = *(v177 + 16);
                      if (v178)
                      {
                        v179 = 8 * v178;
                        v180 = v177 + 24;
                        while (*(*v180 + 24) != 57)
                        {
                          v180 += 8;
                          v179 -= 8;
                          if (!v179)
                          {
                            goto LABEL_222;
                          }
                        }

                        v176 = v176 | 0x40040;
                      }
                    }

LABEL_222:
                    v181 = *(v570 + 4);
                    if (v181)
                    {
                      {
                        if (*(v181 + 48) != *&v163.f64[0])
                        {
                          *(v181 + 48) = v163.f64[0];
                          v169 = 1;
                        }

                        goto LABEL_238;
                      }
                    }

                    else
                    {
                      *(v570 + 14) = v176;
                    }

                    v182 = (*(*v4 + 696))(v4, 1, &v605, v176, @"image-capture-backdrop");
                    *(v570 + 4) = v182;
                    if (!v182)
                    {
                      goto LABEL_118;
                    }

                    v183 = *(a2 + 3);
                    if (v183)
                    {
                      v185 = CA::Render::Layer::process_id(*(v183 + 152));
                      v186 = *(a2 + 3);
                      if (v186)
                      {
                        layer_resource_text = CA::Render::create_layer_resource_text(v186, v184);
LABEL_235:
                        (*(*v4 + 888))(v4, *(v570 + 4), 0, v185, @"image-capture-backdrop", layer_resource_text);
                        *(v10 + 688) = v170 != 0;
                        (*(*v4 + 760))(v4, *(v570 + 4), 16, 16);
                        *(*(v570 + 4) + 48) = v594;
                        if (layer_resource_text)
                        {
                          CFRelease(layer_resource_text);
                        }

                        v169 = 1;
                        v171 = v570;
LABEL_238:
                        v188 = *(a2 + 3);
                        v189 = v188[2].f32[0];
                        v638 = vcvt_f16_f32(v188[1]);
                        CA::OGL::colormatched_layer_color(buf, a1, a2, &v638, v189);
                        v191 = *&buf[0].f64[0];
                        v543 = v161;
                        if (v578)
                        {
                          v192 = *(v588 + 32);
                          if (*&v192 != 0x3C003C003C003C00)
                          {
                            v191 = vcvt_f16_f32(vmulq_f32(vcvtq_f32_f16(v192), vcvtq_f32_f16(*&buf[0].f64[0])));
                          }

                          v572 = v191;
                          if (v169)
                          {
                            *(v171 + 224) |= 2u;
                            v647 = 0u;
                            v646 = 0u;
                            v645 = 0u;
                            if ((*(v548 + 1) & 1) == 0)
                            {
                              LOBYTE(v169) = 1;
                              goto LABEL_251;
                            }

LABEL_252:
                            v193 = v558;
LABEL_253:
                            v194 = 584;
                            if (v169)
                            {
                              v194 = 544;
                            }

LABEL_257:
                            v195 = *(v10 + v194);
                            v196 = *(v10 + 544);
                            if (v196)
                            {
                              buf[0] = 0uLL;
                              CA::Bounds::set_exterior(buf, v190, v561, v193);
                              v197 = CA::Shape::intersect(v196, buf);
                              v171 = v570;
                              goto LABEL_263;
                            }

                            v171 = v570;
LABEL_266:
                            v197 = 0;
                            LOBYTE(v613) = 0;
                            *(v171 + 224) &= ~1u;
                            v199 = 1;
                            goto LABEL_267;
                          }

                          v647 = 0u;
                          v646 = 0u;
                          v645 = 0u;
                          v193 = v558;
                          if ((*v548 & 0x100) != 0)
                          {
                            goto LABEL_253;
                          }

LABEL_261:
                          LOBYTE(v169) = 0;
                          if (!*(v10 + 584))
                          {
                            v195 = 0.0;
                            goto LABEL_266;
                          }
                        }

                        else
                        {
                          v572 = *&buf[0].f64[0];
                          if ((*(v171 + 224) & 2) != 0)
                          {
                            *(v171 + 224) &= ~2u;
                            v647 = 0u;
                            v646 = 0u;
                            v645 = 0u;
                            LOBYTE(v169) = 1;
                            if (*(v548 + 1))
                            {
                              v194 = 544;
                              v193 = v558;
                              goto LABEL_257;
                            }
                          }

                          else
                          {
                            v647 = 0u;
                            v646 = 0u;
                            v645 = 0u;
                            if ((*v548 & 0x100) != 0)
                            {
                              goto LABEL_252;
                            }

                            if ((v169 & 1) == 0)
                            {
                              v171 = v570;
                              v193 = v558;
                              goto LABEL_261;
                            }

                            LOBYTE(v169) = 1;
                            v171 = v570;
                          }

LABEL_251:
                          v193 = v558;
                        }

                        buf[0] = 0uLL;
                        CA::Bounds::set_exterior(buf, v190, v561, v193);
                        v195 = COERCE_DOUBLE(&v645);
                        CA::Shape::operator=(&v645, buf);
                        v197 = CA::Shape::new_shape(buf, v198);
LABEL_263:
                        if (!v197)
                        {
                          goto LABEL_266;
                        }

                        v199 = 0;
LABEL_267:
                        if (v195 != 0.0)
                        {
                          if ((LOBYTE(v195) & 1) == 0)
                          {
                            if (*(*&v195 + 4) == 6)
                            {
                              goto LABEL_270;
                            }

LABEL_272:
                            v554 = *&v195;
                            v540 = v199;
                            v546 = v197;
                            v604 = 0;
                            v603 = 0;
                            v201.i32[1] = 0;
                            v201.i64[1] = 0;
                            v644 = 0u;
                            v641 = 0x3C003C003C003C00;
                            v643 = 0u;
                            v642 = 0u;
                            *&v644 = 0;
                            v638 = 0;
                            v640 = 0u;
                            DWORD2(v643) = 1065353216;
                            WORD4(v644) = 1025;
                            v639 = &CA::Shape::_infinite_shape;
                            v602 = 0uLL;
                            if (*(v548 + 1))
                            {
                              v604 = 1;
                              v603 = 1;
                              v601 = 0uLL;
                              v637 = 0;
                              v201.i32[0] = 1073741822;
                              v585 = v201;
                              v636 = *&v195;
                              v581 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
                              while (CA::ShapeIterator::iterate(&v636, &v602))
                              {
                                if (SDWORD2(v602) <= SHIDWORD(v602))
                                {
                                  v203 = HIDWORD(v602);
                                }

                                else
                                {
                                  v203 = DWORD2(v602);
                                }

                                v202.i32[0] = v203;
                                v204.i64[0] = v602;
                                v204.i64[1] = SDWORD1(v602);
                                v205 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v202, v585), 0), v581, vcvtq_f64_s64(v204));
                                v206 = SDWORD2(v602);
                                v207 = SHIDWORD(v602);
                                if (v203 > 1073741822)
                                {
                                  v206 = 1.79769313e308;
                                  v207 = 1.79769313e308;
                                }

                                buf[0] = v205;
                                buf[1].f64[0] = v206;
                                buf[1].f64[1] = v207;
                                v208 = -v614.f32[0];
                                v209 = -v614.f32[1];
                                CA::BoundsImpl::inset(buf, v208, v209);
                                v589 = buf[1];
                                v595 = buf[0];
                                v622 = buf[0];
                                v623 = buf[1];
                                CA::BoundsImpl::intersect(&v622, v561, v558);
                                v210 = *(v171 + 6);
                                if (v210 != 1.0)
                                {
                                  v211 = v210;
                                  if (v623.f64[0] < 1.79769313e308)
                                  {
                                    v622.f64[0] = v622.f64[0] * v211;
                                    v623.f64[0] = v623.f64[0] * v211;
                                  }

                                  if (v623.f64[1] < 1.79769313e308)
                                  {
                                    v622.f64[1] = v622.f64[1] * v211;
                                    v623.f64[1] = v623.f64[1] * v211;
                                  }
                                }

                                *v599 = v595;
                                v600 = v589;
                                CA::BoundsImpl::inset(v599, v208, v209);
                                CA::BoundsImpl::intersect(v599, v561, v558);
                                v213 = *(v171 + 6);
                                if (v213 != 1.0)
                                {
                                  v214 = v213;
                                  if (v600.f64[0] < 1.79769313e308)
                                  {
                                    *v599 = *v599 * v214;
                                    v600.f64[0] = v600.f64[0] * v214;
                                  }

                                  if (v600.f64[1] < 1.79769313e308)
                                  {
                                    *&v599[1] = *&v599[1] * v214;
                                    v600.f64[1] = v600.f64[1] * v214;
                                  }
                                }

                                CA::Bounds::set_exterior(&v601, v212, v622, v623);
                                CA::shape_union(&v604, &v601, v215);
                                CA::Bounds::set_exterior(&v601, v216, *v599, v600);
                                CA::shape_union(&v603, &v601, v217);
                              }

                              v202.i32[0] = *(v171 + 6);
                              v218 = CA::Shape::scale_and_dilate(v546, *v202.i8, *v202.i32, 1u, 1u);
                              CA::shape_intersect(&v604, v218, v219);
                              CA::shape_intersect(&v603, v218, v220);
                              v221 = v218;
                              v171 = v570;
                              CA::Shape::unref(v221);
                            }

                            v638 = CA::OGL::Context::set_gstate(v4, &v638);
                            CA::OGL::Context::push_surface(v4, *(v171 + 4), *(*(v171 + 4) + 144) >= 0, 8, 0);
                            v551 = *(v171 + 6) != 1.0;
                            v225 = *(v4 + 16);
                            v226 = *(v225 + 497);
                            v227 = *(v4 + 64);
                            v228 = *(v225 + 496);
                            v601.i8[0] = 0;
                            *(v225 + 497) = v226 & 0xFE;
                            v229 = *(v4 + 600);
                            v538 = v228;
                            v539 = v226;
                            v537 = v227;
                            if (!v229 || (*(a1[1] + 1376) & 1) != 0 || (v616 & 1) != 0)
                            {
LABEL_295:
                              v541 = 0;
                              goto LABEL_296;
                            }

                            if (v566)
                            {
                              *v599 = 0u;
                              v600 = 0u;
                              v223.i32[1] = HIDWORD(v600.f64[1]);
                              v224.i64[0] = *&v600.f64[0];
                              if (v600.f64[0] >= v600.f64[1])
                              {
                                *v224.i64 = v600.f64[1];
                              }

                              if (*v224.i64 <= 0.0)
                              {
                                goto LABEL_295;
                              }

                              v525 = *(v4 + 672);
                              do
                              {
                                v526 = v525;
                                v525 = *(v525 + 8);
                              }

                              while (v525);
                              *&v599[1] = *(v526 + 60) - (*&v599[1] + v600.f64[1]);
                              v527.f32[0] = (*(*v4 + 96))(v4);
                              v527.i32[1] = v529;
                              v530 = vsubq_f64(*v599, vcvtq_f64_f32(v527));
                              *v599 = v530;
                              v531 = *(a1[1] + 208);
                              v636 = *(a1[1] + 200);
                              if (SDWORD2(v636) <= SHIDWORD(v636))
                              {
                                v531 = HIDWORD(v636);
                              }

                              v530.i32[0] = 1073741822;
                              v528.i32[0] = v531;
                              v532.i64[0] = v636;
                              v532.i64[1] = SDWORD1(v636);
                              v533 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v528, v530), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v532));
                              v532.i64[0] = SDWORD2(v636);
                              v532.i64[1] = SHIDWORD(v636);
                              v534 = vcvtq_f64_s64(v532);
                              v535 = vdup_n_s32(v531 > 1073741822);
                              v532.i64[0] = v535.u32[0];
                              v532.i64[1] = v535.u32[1];
                              if (!CA::BoundsImpl::intersect(v599, v533, vbslq_s8(vcltzq_s64(vshlq_n_s64(v532, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v534)))
                              {
                                goto LABEL_295;
                              }

                              buf[0] = 0uLL;
                              CA::Bounds::set_exterior(buf, v536, *v599, v600);
                              v541 = (*(*v4 + 696))(v4, 1, buf, v176 & 0xFFFFFBFF, @"capture-backdrop-mesh-detached-surface");
                              if (!v541)
                              {
                                goto LABEL_295;
                              }

                              CA::OGL::Context::push_surface(v4, v541, 1u, 8, 0);
                              v623 = 0u;
                              v624 = 0u;
                              v622 = 0u;
                              CA::Shape::operator=(&v622, &v636);
                              *&buf[1].f64[0] = 1065353216;
                              buf[3] = 0u;
                              *(&buf[1] + 8) = *v599;
                              *&buf[0].f64[0] = v4;
                              *&buf[0].f64[1] = &v622;
                              *(&buf[2] + 8) = v600;
                              *&buf[4].f64[0] = &v601;
                              CA::OGL::Context::pop_surface(v4);
                              if (v601.u8[0] == 1)
                              {
                                *(v657 + v575) = v541;
                                v223 = *(v541 + 48);
                                *(&v648 + v575++) = v223;
                                v601.i8[0] = 0;
                              }

LABEL_296:
                              v230 = v558;
                              v231 = *&v195;
                            }

                            else
                            {
                              buf[4].f64[0] = 0.0;
                              memset(&buf[2], 0, 32);
                              buf[1] = 0u;
                              *&buf[0].f64[0] = v4;
                              v231 = *&v195;
                              buf[0].f64[1] = v195;
                              LODWORD(buf[1].f64[0]) = *(v570 + 6);
                              *(&buf[1] + 8) = v561;
                              *(&buf[2] + 8) = v558;
                              *&buf[4].f64[0] = &v601;
                              v230 = v558;
                              v541 = 0;
                            }

                            *(v4 + 64) = 0;
                            v232 = v570;
                            if (v601.u8[0] == 1 && v613 == 1 && (v613 & 0x100) == 0)
                            {
                              *(v570 + 224) &= ~1u;
                            }

                            if (v169)
                            {
                              v233.i64[0] = v572.u16[3];
                              v233.i64[1] = v572.u16[1];
                              v224.i64[0] = 0xFFFFLL;
                              v224.i64[1] = 0xFFFFLL;
                              v223 = vshlq_u64(vandq_s8(v233, v224), xmmword_183E21730);
                              v234 = *(v570 + 224);
                              if (!(v223.i64[0] | (v572.u16[2] << 32) | v572.u16[0] | v223.i64[1]))
                              {
                                if (v578)
                                {
                                  v235 = 2;
                                }

                                else
                                {
                                  v235 = 0;
                                }

                                v234 = v234 & 0xFD | v235;
                                *(v570 + 224) = v234;
                              }
                            }

                            else
                            {
                              v234 = *(v570 + 224);
                            }

                            v223.i32[0] = 0;
                            v224.i32[0] = v234 & 2;
                            *v223.i8 = vdup_lane_s8(vceq_s8(*v224.i8, *v223.i8), 0);
                            if (v547)
                            {
                              *(*(v4 + 16) + 497) |= 2u;
                              *(*(v4 + 16) + 368) = 1065353216;
                            }

                            v542 = vbic_s8(v572, *v223.i8);
                            v550 = (v575 - 1);
                            if (v575 >= 1)
                            {
                              v562 = v4 + 1386;
                              _Q0 = vaddq_f64(v230, v561);
                              v560 = _Q0.f64[0];
                              v559 = v545 + v561.f64[1];
                              v237 = 0.5;
                              v238 = 1.0;
                              __asm { FMOV            V0.2S, #3.0 }

                              v544 = *&_Q0.f64[0];
                              LODWORD(_Q0.f64[0]) = 1073741822;
                              v553 = _Q0;
                              v552 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
                              v549 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
                              v242 = (v575 - 1);
                              do
                              {
                                if ((v601.i8[0] & 1) != 0 || v242 < v550)
                                {
                                  *(*(v4 + 16) + 497) |= 1u;
                                  *(*(v4 + 16) + 496) = 3;
                                }

                                v243 = *(v657 + v242);
                                if (v243)
                                {
                                  CA::OGL::Context::bind_surface(v4, *(v657 + v242), 0, v551, v551, -16.0);
                                }

                                else
                                {
                                  v246 = (*(*v4 + 1152))(v4);
                                  if (v246)
                                  {
                                    (*(*v246 + 1280))(v246, 0, v551, v551);
                                  }
                                }

                                v247 = *(v232 + 6);
                                if (v247 >= v237)
                                {
                                  *(*(v4 + 16) + 16) = 1;
                                }

                                else if (v247 >= 0.25)
                                {
                                  v251 = sqrtf(fminf((v247 * -4.0) + 2.0, v238));
                                  v252 = *(v4 + 16);
                                  *&v253 = -v251;
                                  v245.i64[0] = *(v252 + 96);
                                  *(&v253 + 1) = v251;
                                  v254 = vmulq_f32(vzip1q_s32(v245, vrev64q_s32(v245)), vdupq_lane_s64(v253, 0));
                                  *&v255 = v254.i64[0];
                                  *(&v255 + 1) = __PAIR64__(v254.u32[1], v254.u32[3]);
                                  v256 = vuzp1q_s32(v254, v254);
                                  v256.i32[2] = v254.i32[3];
                                  *(v252 + 16) = 27;
                                  *(v4 + 160) = v255;
                                  *(v4 + 176) = v256;
                                  *(v4 + 240) = CA::OGL::capture_backdrop(CA::OGL::Renderer &,CA::OGL::Layer const*)::weight;
                                }

                                else
                                {
                                  *(*(v4 + 16) + 16) = 29;
                                  *&v248 = vmul_n_f32(*(*(v4 + 16) + 96), v237 + (sqrtf(fminf((*(v232 + 6) * -8.0) + 2.0, v238)) * v237));
                                  *(v4 + 160) = v248;
                                  HIDWORD(v249) = DWORD1(v248);
                                  v250 = vmul_f32(*&v248, v544);
                                  DWORD1(v248) = v250.i32[1];
                                  LODWORD(v249) = v250.i32[0];
                                  *(&v248 + 1) = v249;
                                  *(v4 + 168) = v248;
                                  *(v4 + 184) = v250;
                                }

                                if (v613 == 1 && (v613 & 0x100) == 0)
                                {
                                  v257 = *(v232 + 6);
                                  buf[0].f64[0] = 0.0;
                                }

                                v567 = (&v648 + v242);
                                if ((*(v232 + 224) & 4) != 0)
                                {
                                  v258 = v614.f32[1];
                                  if (v614.f32[1] > 0.0)
                                  {
                                    buf[0] = 0uLL;
                                    CA::Bounds::set_exterior(buf, v244, v561, v558);
                                    v599[0] = CA::Shape::new_shape(buf, v259);
                                    v622 = 0uLL;
                                    CA::Shape::get_bounds(v599[0], &v622);
                                    if (SLODWORD(v622.f64[1]) <= SHIDWORD(v622.f64[1]))
                                    {
                                      v262 = HIDWORD(v622.f64[1]);
                                    }

                                    else
                                    {
                                      v262 = LODWORD(v622.f64[1]);
                                    }

                                    v261.i32[0] = v262;
                                    v263.i64[0] = SLODWORD(v622.f64[0]);
                                    v263.i64[1] = SHIDWORD(v622.f64[0]);
                                    v264 = SLODWORD(v622.f64[1]);
                                    v596 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v261, v553), 0), v552, vcvtq_f64_s64(v263));
                                    v265 = SHIDWORD(v622.f64[1]);
                                    if (v262 > 1073741822)
                                    {
                                      v264 = 1.79769313e308;
                                      v265 = 1.79769313e308;
                                    }

                                    v586 = v265;
                                    v590 = v264;
                                    CA::shape_intersect(v599, v567, v260);
                                    v266 = v599[0];
                                    v622 = 0uLL;
                                    CA::Shape::get_bounds(v599[0], &v622);
                                    v267.i32[1] = HIDWORD(v622.f64[1]);
                                    v268.i64[0] = SLODWORD(v622.f64[0]);
                                    v268.i64[1] = SHIDWORD(v622.f64[0]);
                                    v269 = vcvtq_f64_s64(v268);
                                    v270 = HIDWORD(v622.f64[1]);
                                    v268.i64[0] = SLODWORD(v622.f64[1]);
                                    v268.i64[1] = SHIDWORD(v622.f64[1]);
                                    v271 = v268;
                                    if (SLODWORD(v622.f64[1]) > SHIDWORD(v622.f64[1]))
                                    {
                                      v270 = LODWORD(v622.f64[1]);
                                    }

                                    v267.i32[0] = v270;
                                    v272 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v267, v553), 0), v552, v269);
                                    v273 = vcvtq_f64_s64(v271);
                                    v274 = vdup_n_s32(v270 > 1073741822);
                                    v275.i64[0] = v274.u32[0];
                                    v275.i64[1] = v274.u32[1];
                                    v276.f64[0] = v590;
                                    v276.f64[1] = v586;
                                    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v596, v272), vceqq_f64(v276, vbslq_s8(vcltzq_s64(vshlq_n_s64(v275, 0x3FuLL)), v549, v273)))))))
                                    {
                                      v277 = *(v570 + 6);
                                      v622.f64[0] = 0.0;
                                    }

                                    CA::Shape::unref(v266);
                                    v232 = v570;
                                    v231 = v554;
                                  }
                                }

                                v556 = v242;
                                if (BYTE11(xmmword_1ED4E97DC) == 1)
                                {
                                  v363 = *(v10 + 544);
                                  v622 = 0uLL;
                                  CA::Shape::get_bounds(v363, &v622);
                                  if (x_log_get_ogl(void)::once != -1)
                                  {
                                    dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
                                  }

                                  v364 = x_log_get_ogl(void)::log;
                                  if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v365 = *(v557 + 16);
                                    v366 = *(v570 + 15);
                                    v367 = *(v10 + 32);
                                    v368 = (v367 + 28);
                                    _ZF = v367 == 0;
                                    v369 = "";
                                    if (!_ZF)
                                    {
                                      v369 = v368;
                                    }

                                    v370 = 0xAAAAAAAAAAAAAAABLL * ((*(v10 + 80) - *(v10 + 72)) >> 6);
                                    v371 = *(v570 + 4);
                                    v373 = v371[12];
                                    v372 = v371[13];
                                    v374 = v371[14];
                                    LODWORD(v371) = v371[15];
                                    v375 = *(v570 + 6);
                                    LODWORD(buf[0].f64[0]) = 134221314;
                                    *(buf[0].f64 + 4) = v365;
                                    WORD2(buf[0].f64[1]) = 1024;
                                    *(&buf[0].f64[1] + 6) = v366;
                                    WORD1(buf[1].f64[0]) = 2048;
                                    *(buf[1].f64 + 4) = v10;
                                    WORD2(buf[1].f64[1]) = 2080;
                                    *(&buf[1].f64[1] + 6) = v369;
                                    HIWORD(buf[2].f64[0]) = 2048;
                                    *&buf[2].f64[1] = v370;
                                    LOWORD(buf[3].f64[0]) = 1024;
                                    *(buf[3].f64 + 2) = LODWORD(v622.f64[0]);
                                    HIWORD(buf[3].f64[0]) = 1024;
                                    LODWORD(buf[3].f64[1]) = HIDWORD(v622.f64[0]);
                                    WORD2(buf[3].f64[1]) = 1024;
                                    *(&buf[3].f64[1] + 6) = LODWORD(v622.f64[1]);
                                    WORD1(buf[4].f64[0]) = 1024;
                                    HIDWORD(buf[4].f64[0]) = HIDWORD(v622.f64[1]);
                                    LOWORD(buf[4].f64[1]) = 1024;
                                    *(&buf[4].f64[1] + 2) = v373;
                                    HIWORD(buf[4].f64[1]) = 1024;
                                    LODWORD(v631) = v372;
                                    WORD2(v631) = 1024;
                                    *(&v631 + 6) = v374;
                                    WORD5(v631) = 1024;
                                    HIDWORD(v631) = v371;
                                    LOWORD(v632) = 2048;
                                    *(&v632 + 2) = v375;
                                    _os_log_impl(&dword_183AA6000, v364, OS_LOG_TYPE_DEFAULT, "backdrop 0x%lx; update %d; group %p %s size %zu; [%d %d; %d x %d]:\n  copying to surface [%d %d; %d x %d] scale %g:\n", buf, 0x6Au);
                                  }

                                  v232 = v570;
                                  v231 = v554;
                                  v238 = 1.0;
                                }

                                *(v4 + 144) = 0;
                                *(v4 + 112) = v562;
                                *(v4 + 120) = xmmword_183E20E50;
                                v622 = v231;
                                v623.f64[0] = 0.0;
                                v555 = v243;
                                if (v566)
                                {
                                  _ZF = 1;
                                }

                                else
                                {
                                  _ZF = v243 == 0;
                                }

                                v279 = _ZF;
                                v569 = v279;
                                while (CA::ShapeIterator::iterate(&v622, &v602))
                                {
                                  if (v569)
                                  {
LABEL_349:
                                    v280 = 6;
                                    if (!*(v4 + 108))
                                    {
                                      v280 = 4;
                                    }

                                    if ((*(v4 + 144) + 4) > *(v4 + 152) || (v281 = *(v4 + 128)) != 0 && *(v4 + 120) + v280 > v281)
                                    {
                                      *(v4 + 1384) |= 0x20u;
                                      CA::OGL::Context::array_flush(v4);
                                      *(v4 + 144) = 0;
                                      *(v4 + 112) = v562;
                                      *(v4 + 120) = xmmword_183E20E50;
                                    }

                                    v282 = DWORD1(v602);
                                    v283 = *(v232 + 6);
                                    v284 = v283 * v602;
                                    v564 = SDWORD1(v602);
                                    v285 = v283 * SDWORD1(v602);
                                    v286 = HIDWORD(v602);
                                    v287 = v283 * (DWORD2(v602) + v602);
                                    v288 = HIDWORD(v602) + DWORD1(v602);
                                    v563 = (HIDWORD(v602) + DWORD1(v602));
                                    v289 = v283 * v563;
                                    v290 = v238 / v283;
                                    v291 = floorf(v284);
                                    v292 = floorf(v285);
                                    v293 = ceilf(v287);
                                    v294 = ceilf(v289);
                                    v295 = *(v567 + 1);
                                    v296 = v602 - *v567;
                                    v297 = (v291 - v284) * v290;
                                    v298 = v297 + v296;
                                    v299 = (v292 - v285) * v290;
                                    v300 = v299 + (DWORD1(v602) - v295);
                                    v301 = (v293 - v287) * v290;
                                    v302 = v301 + (v296 + DWORD2(v602));
                                    v303 = (v294 - v289) * v290;
                                    v304 = v303 + (DWORD1(v602) - v295 + HIDWORD(v602));
                                    v591 = v291;
                                    v576 = v292;
                                    v587 = v293;
                                    v597 = v294;
                                    CA::OGL::Context::array_rect(v4, v291, v292, v293, v294);
                                    v305 = v298;
                                    v306 = v300;
                                    v307 = v302;
                                    v573 = v300;
                                    v579 = v302;
                                    v308 = v302;
                                    v309 = v304;
                                    v582 = v298;
                                    v310 = v304;
                                    if (v566)
                                    {
                                      v341 = (v297 + v602);
                                      v342 = (v299 + v564);
                                      v343 = v620.f64[0] * v342;
                                      v344 = v621.f64[0] + v619.f64[0] * v341;
                                      v345 = v344 + v620.f64[0] * v342;
                                      v346 = v620.f64[1] * v342;
                                      v347 = v621.f64[1] + v619.f64[1] * v341;
                                      v348 = v347 + v346;
                                      v349 = (v301 + (DWORD2(v602) + v602));
                                      v350 = v621.f64[0] + v619.f64[0] * v349;
                                      *&v343 = v350 + v343;
                                      v351 = v621.f64[1] + v619.f64[1] * v349;
                                      v352 = v351 + v346;
                                      v353 = (v303 + v563);
                                      v354 = v620.f64[0] * v353;
                                      v355 = v350 + v620.f64[0] * v353;
                                      v356 = v620.f64[1] * v353;
                                      v357 = v351 + v356;
                                      *&v350 = v344 + v354;
                                      v358 = v347 + v356;
                                      v359 = *v567;
                                      v305 = v345 - v359;
                                      v306 = v348 - v295;
                                      v307 = *&v343 - v359;
                                      v300 = v352 - v295;
                                      v308 = v355 - v359;
                                      v309 = v357 - v295;
                                      v298 = *&v350 - v359;
                                      v310 = v358 - v295;
                                    }

                                    v311 = *(v4 + 136) + 48 * *(v4 + 144);
                                    *(v311 - 176) = v305;
                                    *(v311 - 172) = v306;
                                    *(v311 - 128) = v307;
                                    *(v311 - 124) = v300;
                                    *(v311 - 80) = v308;
                                    *(v311 - 76) = v309;
                                    *(v311 - 32) = v298;
                                    *(v311 - 28) = v310;
                                    if (BYTE11(xmmword_1ED4E97DC) == 1)
                                    {
                                      if (x_log_get_ogl(void)::once != -1)
                                      {
                                        dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
                                      }

                                      v360 = x_log_get_ogl(void)::log;
                                      if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_DEFAULT))
                                      {
                                        v361 = *(v557 + 16);
                                        LODWORD(buf[0].f64[0]) = 134219008;
                                        *(buf[0].f64 + 4) = v361;
                                        WORD2(buf[0].f64[1]) = 1024;
                                        *(&buf[0].f64[1] + 6) = v602;
                                        WORD1(buf[1].f64[0]) = 1024;
                                        HIDWORD(buf[1].f64[0]) = v282;
                                        LOWORD(buf[1].f64[1]) = 1024;
                                        *(&buf[1].f64[1] + 2) = DWORD2(v602);
                                        HIWORD(buf[1].f64[1]) = 1024;
                                        LODWORD(buf[2].f64[0]) = v286;
                                        _os_log_impl(&dword_183AA6000, v360, OS_LOG_TYPE_DEFAULT, "backdrop 0x%lx rect [%d %d; %d x %d]\n", buf, 0x24u);
                                      }
                                    }

                                    v232 = v570;
                                    v238 = 1.0;
                                    if (*(v570 + 6) != 1.0)
                                    {
                                      v312 = 32;
                                      if (*(v4 + 108))
                                      {
                                        v312 = 48;
                                      }

                                      if ((*(v4 + 144) + 32) > *(v4 + 152) || (v313 = *(v4 + 128)) != 0 && *(v4 + 120) + v312 > v313)
                                      {
                                        *(v4 + 1384) |= 0x20u;
                                        CA::OGL::Context::array_flush(v4);
                                        *(v4 + 144) = 0;
                                        *(v4 + 112) = v562;
                                        *(v4 + 120) = xmmword_183E20E50;
                                      }

                                      v314 = v602;
                                      v565 = v602;
                                      if (v561.f64[0] == v602)
                                      {
                                        CA::OGL::Context::array_rect(v4, v591 + -1.0, v576, v591, v597);
                                        v315 = v582 + 0.5;
                                        v316 = *(v4 + 136) + 48 * *(v4 + 144);
                                        *(v316 - 176) = v582 + 0.5;
                                        *(v316 - 172) = v573;
                                        *(v316 - 128) = v582 + 0.5;
                                        *(v316 - 124) = v573;
                                        *(v316 - 80) = v582 + 0.5;
                                        *(v316 - 76) = v304;
                                        *(v316 - 32) = v582 + 0.5;
                                        *(v316 - 28) = v304;
                                        v317 = v282;
                                        v318 = v561.f64[1];
                                        v319 = v304;
                                        if (v561.f64[1] != v282)
                                        {
                                          goto LABEL_375;
                                        }

                                        CA::OGL::Context::array_rect(v4, v591 + -1.0, v576 + -1.0, v591, v576);
                                        v320 = *(v4 + 136) + 48 * *(v4 + 144);
                                        *(v320 - 176) = v315;
                                        *(v320 - 172) = v573 + 0.5;
                                        *(v320 - 128) = v315;
                                        *(v320 - 124) = v573 + 0.5;
                                        *(v320 - 80) = v315;
                                        *(v320 - 76) = v573 + 0.5;
                                        *(v320 - 32) = v315;
                                        *(v320 - 28) = v573 + 0.5;
                                      }

                                      else
                                      {
                                        v319 = v304;
                                        v317 = v282;
                                      }

                                      v318 = v561.f64[1];
LABEL_375:
                                      v327 = DWORD2(v602);
                                      if (v318 == v317)
                                      {
                                        CA::OGL::Context::array_rect(v4, v591, v576 + -1.0, v587, v576);
                                        v328 = v573 + 0.5;
                                        v329 = *(v4 + 136) + 48 * *(v4 + 144);
                                        *(v329 - 176) = v582;
                                        *(v329 - 172) = v573 + 0.5;
                                        *(v329 - 128) = v302;
                                        *(v329 - 124) = v573 + 0.5;
                                        *(v329 - 80) = v302;
                                        *(v329 - 76) = v573 + 0.5;
                                        *(v329 - 32) = v582;
                                        *(v329 - 28) = v573 + 0.5;
                                        v330 = (v327 + v314);
                                        if (v560 == v330)
                                        {
                                          CA::OGL::Context::array_rect(v4, v587, v576 + -1.0, v587 + 1.0, v576);
                                          v331 = *(v4 + 136) + 48 * *(v4 + 144);
                                          *(v331 - 176) = v302 + -0.5;
                                          *(v331 - 172) = v328;
                                          *(v331 - 128) = v302 + -0.5;
                                          *(v331 - 124) = v328;
                                          *(v331 - 80) = v302 + -0.5;
                                          *(v331 - 76) = v328;
                                          *(v331 - 32) = v302 + -0.5;
                                          *(v331 - 28) = v328;
                                        }
                                      }

                                      else
                                      {
                                        v330 = (DWORD2(v602) + v314);
                                      }

                                      v232 = v570;
                                      if (v560 == v330)
                                      {
                                        CA::OGL::Context::array_rect(v4, v587, v576, v587 + 1.0, v597);
                                        v332 = v302 + -0.5;
                                        v333 = *(v4 + 136) + 48 * *(v4 + 144);
                                        *(v333 - 176) = v302 + -0.5;
                                        *(v333 - 172) = v573;
                                        *(v333 - 128) = v302 + -0.5;
                                        *(v333 - 124) = v573;
                                        *(v333 - 80) = v302 + -0.5;
                                        *(v333 - 76) = v319;
                                        *(v333 - 32) = v302 + -0.5;
                                        *(v333 - 28) = v319;
                                        v334 = v288;
                                        if (v559 == v288)
                                        {
                                          CA::OGL::Context::array_rect(v4, v587, v597, v587 + 1.0, v597 + 1.0);
                                          v335 = v319;
                                          v336 = *(v4 + 136) + 48 * *(v4 + 144);
                                          *(v336 - 176) = v332;
                                          *(v336 - 172) = v319 + -0.5;
                                          *(v336 - 128) = v332;
                                          *(v336 - 124) = v319 + -0.5;
                                          *(v336 - 80) = v332;
                                          *(v336 - 76) = v319 + -0.5;
                                          *(v336 - 32) = v332;
                                          *(v336 - 28) = v319 + -0.5;
                                        }

                                        else
                                        {
                                          v335 = v319;
                                        }
                                      }

                                      else
                                      {
                                        v335 = v319;
                                        v334 = v288;
                                      }

                                      v238 = 1.0;
                                      if (v559 == v334)
                                      {
                                        v337 = v335;
                                        CA::OGL::Context::array_rect(v4, v591, v597, v587, v597 + 1.0);
                                        v338 = v337 + -0.5;
                                        v339 = *(v4 + 136) + 48 * *(v4 + 144);
                                        *(v339 - 176) = v582;
                                        *(v339 - 172) = v338;
                                        *(v339 - 128) = v579;
                                        *(v339 - 124) = v338;
                                        *(v339 - 80) = v579;
                                        *(v339 - 76) = v338;
                                        *(v339 - 32) = v582;
                                        *(v339 - 28) = v338;
                                        if (v561.f64[0] == v565)
                                        {
                                          CA::OGL::Context::array_rect(v4, v591 + -1.0, v597, v591, v597 + 1.0);
                                          v340 = *(v4 + 136) + 48 * *(v4 + 144);
                                          *(v340 - 176) = v582 + 0.5;
                                          *(v340 - 172) = v338;
                                          *(v340 - 128) = v582 + 0.5;
                                          *(v340 - 124) = v338;
                                          *(v340 - 80) = v582 + 0.5;
                                          *(v340 - 76) = v338;
                                          *(v340 - 32) = v582 + 0.5;
                                          *(v340 - 28) = v338;
                                        }
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v321 = vclez_s32(*(&v602 + 8));
                                    if ((vpmax_u32(v321, v321).u32[0] & 0x80000000) == 0)
                                    {
                                      v322 = v567[1];
                                      v323 = vclez_s32(v322);
                                      if ((vpmax_u32(v323, v323).u32[0] & 0x80000000) == 0)
                                      {
                                        *&v324 = vmax_s32(*&v602, *v567);
                                        v325 = vsub_s32(vmin_s32(vadd_s32(*&v602, *(&v602 + 8)), vadd_s32(*v567, v322)), *&v324);
                                        v326 = vclez_s32(v325);
                                        if ((vpmax_u32(v326, v326).u32[0] & 0x80000000) == 0)
                                        {
                                          *(&v324 + 1) = v325;
                                          v602 = v324;
                                          goto LABEL_349;
                                        }
                                      }

                                      *(&v602 + 1) = 0;
                                    }
                                  }
                                }

                                CA::OGL::Context::array_flush(v4);
                                v237 = 0.5;
                                if (v555)
                                {
                                  CA::OGL::Context::unbind_surface(v4, v555, 0);
                                }

                                else
                                {
                                  v362 = *(v4 + 16);
                                  *(v362 + 144) = 0;
                                  *(v362 + 176) = 0;
                                }

                                v230 = v558;
                                --v242;
                                v231 = v554;
                              }

                              while (v556 > 0);
                            }

                            v376.i64[0] = v542.u16[3];
                            v376.i64[1] = v542.u16[1];
                            v377.i64[0] = 0xFFFFLL;
                            v377.i64[1] = 0xFFFFLL;
                            v378 = vshlq_u64(vandq_s8(v376, v377), xmmword_183E21730);
                            v379 = *(v4 + 16);
                            v380 = v378.i64[0] | (v542.u16[2] << 32) | v542.u16[0] | v378.i64[1];
                            if (v380)
                            {
                              *(v379 + 16) = 0;
                              *(*(v4 + 16) + 497) |= 1u;
                              *(*(v4 + 16) + 496) = 3;
                              if (v613 == 1 && (v613 & 0x100) == 0)
                              {
                                v381 = *(v570 + 6);
                                buf[0] = 0uLL;
                                *&v622.f64[0] = v542;
                                v230 = v558;
                              }

                              *(v4 + 144) = 0;
                              *(v4 + 112) = v4 + 1386;
                              *(v4 + 120) = xmmword_183E20E50;
                              buf[1].f64[0] = 0.0;
                              buf[0] = v231;
                              *&v598 = *&vaddq_f64(v230, v561);
                              v382 = v545 + v561.f64[1];
                              v383 = 1.0;
                              while (CA::ShapeIterator::iterate(buf, &v602))
                              {
                                v384 = DWORD1(v602);
                                v385 = DWORD2(v602);
                                v386 = *(v570 + 6);
                                v387 = floorf(v386 * v602);
                                v388 = floorf(v386 * SDWORD1(v602));
                                v389 = ceilf(v386 * (DWORD2(v602) + v602));
                                v390 = HIDWORD(v602) + DWORD1(v602);
                                v391 = ceilf(v386 * (HIDWORD(v602) + DWORD1(v602)));
                                CA::OGL::Context::array_check(v4, 1);
                                CA::OGL::Context::array_rect(v4, v387, v388, v389, v391);
                                v392 = *(v4 + 136) + 48 * *(v4 + 144);
                                *(v392 - 160) = v380;
                                *(v392 - 112) = v380;
                                *(v392 - 64) = v380;
                                *(v392 - 16) = v380;
                                if (*(v570 + 6) != v383)
                                {
                                  v393 = v382;
                                  v394 = v602;
                                  v395 = v602;
                                  v396 = v384;
                                  v397 = v390;
                                  CA::OGL::Context::array_check(v4, 4);
                                  if (v561.f64[0] == v395)
                                  {
                                    v398 = 1.0;
                                    if (v561.f64[1] == v396)
                                    {
                                      v399 = 1.0;
                                    }

                                    else
                                    {
                                      v399 = 0.0;
                                    }

                                    v400 = v388 - v399;
                                    if (v393 != v397)
                                    {
                                      v398 = 0.0;
                                    }

                                    CA::OGL::Context::array_rect(v4, v387 + -1.0, v400, v387, v391 + v398);
                                    v401 = *(v4 + 136) + 48 * *(v4 + 144);
                                    *(v401 - 160) = v380;
                                    *(v401 - 112) = v380;
                                    *(v401 - 64) = v380;
                                    *(v401 - 16) = v380;
                                  }

                                  if (v561.f64[1] == v396)
                                  {
                                    CA::OGL::Context::array_rect(v4, v387, v388 + -1.0, v389, v388);
                                    v402 = *(v4 + 136) + 48 * *(v4 + 144);
                                    *(v402 - 160) = v380;
                                    *(v402 - 112) = v380;
                                    *(v402 - 64) = v380;
                                    *(v402 - 16) = v380;
                                  }

                                  v382 = v393;
                                  v383 = 1.0;
                                  if (v598 == (v385 + v394))
                                  {
                                    if (v561.f64[1] == v396)
                                    {
                                      v403 = 1.0;
                                    }

                                    else
                                    {
                                      v403 = 0.0;
                                    }

                                    v404 = v388 - v403;
                                    if (v382 == v397)
                                    {
                                      v405 = 1.0;
                                    }

                                    else
                                    {
                                      v405 = 0.0;
                                    }

                                    CA::OGL::Context::array_rect(v4, v389, v404, v389 + 1.0, v391 + v405);
                                    v406 = *(v4 + 136) + 48 * *(v4 + 144);
                                    *(v406 - 160) = v380;
                                    *(v406 - 112) = v380;
                                    *(v406 - 64) = v380;
                                    *(v406 - 16) = v380;
                                  }

                                  if (v382 == v397)
                                  {
                                    CA::OGL::Context::array_rect(v4, v387, v391, v389, v391 + 1.0);
                                    v407 = *(v4 + 136) + 48 * *(v4 + 144);
                                    *(v407 - 160) = v380;
                                    *(v407 - 112) = v380;
                                    *(v407 - 64) = v380;
                                    *(v407 - 16) = v380;
                                  }
                                }
                              }

                              CA::OGL::Context::array_flush(v4);
                              v379 = *(v4 + 16);
                            }

                            v408 = v543;
                            *(v379 + 497) &= ~1u;
                            if (v547)
                            {
                              *(*(v4 + 16) + 497) &= ~2u;
                            }

                            v409 = v613;
                            if (v613 == 1 && HIBYTE(v613) == 1)
                            {
                            }

                            {
                              *(v4 + 144) = 0;
                              *(v4 + 112) = v4 + 1386;
                              *(v4 + 120) = xmmword_183E20E50;
                              *(*(v4 + 16) + 16) = 0;
                              v410 = *(v10 + 592);
                              buf[1].f64[0] = 0.0;
                              buf[0] = v410;
                              while (CA::ShapeIterator::iterate(buf, &v602))
                              {
                                CA::OGL::Context::array_check(v4, 1);
                                CA::OGL::Context::array_rect(v4, *(v570 + 6) * v602, *(v570 + 6) * SDWORD1(v602), *(v570 + 6) * (DWORD2(v602) + v602), *(v570 + 6) * (HIDWORD(v602) + DWORD1(v602)));
                                v411 = *(v4 + 136) + 48 * *(v4 + 144);
                                *(v411 - 160) = 0;
                                *(v411 - 112) = 0;
                                *(v411 - 64) = 0;
                                *(v411 - 16) = 0;
                              }

                              CA::OGL::Context::array_flush(v4);
                            }

                            if (v543)
                            {
                              v412 = LODWORD(v606.f64[0]);
                              v413 = HIDWORD(v606.f64[0]);
                              v414 = LODWORD(v606.f64[1]);
                              v415 = HIDWORD(v606.f64[1]);
                              *(*(v4 + 16) + 16) = 0;
                              *(v4 + 144) = 0;
                              *(v4 + 112) = v4 + 1386;
                              *(v4 + 120) = xmmword_183E20E50;
                              CA::OGL::Context::array_check(v4, 4);
                              v416 = v415 + v413;
                              v408 = v543;
                              v417 = v416;
                              CA::OGL::Context::array_rect(v4, v412, v413, v412 + 1.0, v416);
                              v418 = *(v4 + 136) + 48 * *(v4 + 144);
                              *(v418 - 160) = 0;
                              *(v418 - 112) = 0;
                              *(v418 - 64) = 0;
                              *(v418 - 16) = 0;
                              v419 = (v414 + v412);
                              CA::OGL::Context::array_rect(v4, v419 + -1.0, v413, v419, v417);
                              v420 = *(v4 + 136) + 48 * *(v4 + 144);
                              *(v420 - 160) = 0;
                              *(v420 - 112) = 0;
                              *(v420 - 64) = 0;
                              *(v420 - 16) = 0;
                              CA::OGL::Context::array_rect(v4, v412, v413, v419, v413 + 1.0);
                              v421 = *(v4 + 136) + 48 * *(v4 + 144);
                              *(v421 - 160) = 0;
                              *(v421 - 112) = 0;
                              *(v421 - 64) = 0;
                              *(v421 - 16) = 0;
                              CA::OGL::Context::array_rect(v4, v412, v417 + -1.0, v419, v417);
                              v422 = *(v4 + 136) + 48 * *(v4 + 144);
                              *(v422 - 160) = 0;
                              *(v422 - 112) = 0;
                              *(v422 - 64) = 0;
                              *(v422 - 16) = 0;
                              CA::OGL::Context::array_flush(v4);
                            }

                            if (BYTE11(xmmword_1ED4E97DC) == 1)
                            {
                              if (x_log_get_ogl(void)::once != -1)
                              {
                                dispatch_once(&x_log_get_ogl(void)::once, &__block_literal_global_20462);
                              }

                              v522 = x_log_get_ogl(void)::log;
                              if (os_log_type_enabled(x_log_get_ogl(void)::log, OS_LOG_TYPE_DEFAULT))
                              {
                                v523 = *(v557 + 16);
                                LODWORD(buf[0].f64[0]) = 134217984;
                                *(buf[0].f64 + 4) = v523;
                                _os_log_impl(&dword_183AA6000, v522, OS_LOG_TYPE_DEFAULT, "backdrop 0x%lx complete\n", buf, 0xCu);
                              }
                            }

                            if (initialized[0] != -1)
                            {
                              dispatch_once_f(initialized, 0, init_debug);
                            }

                            v423 = v570;
                            if (*&dword_1ED4E9670)
                            {
                              bzero(buf, 0x400uLL);
                              if (*(v10 + 32))
                              {
                                snprintf(buf, 0x400uLL, "backdrop-0x%lx_%s");
                              }

                              else
                              {
                                snprintf(buf, 0x400uLL, "backdrop-0x%lx");
                              }

                              CA::OGL::export_surface(v4, *(v4 + 672), buf);
                              v423 = v570;
                            }

                            *(v9 + 120) = 0;
                            *(v9 + 128) = *(a1[1] + 80);
                            if (v537)
                            {
                              *(v4 + 64) = 1;
                            }

                            v424 = *(v4 + 16);
                            *(v424 + 496) = v538;
                            *(v424 + 497) = *(v424 + 497) & 0xFE | v539 & 1;
                            *(*(v4 + 16) + 16) = 0;
                            CA::OGL::Context::pop_surface(v4);
                            CA::OGL::Context::set_gstate(v4, **(v4 + 656));
                            if (*(v423 + 6) == 1.0 && (v616 & 1) == 0)
                            {
                              v426 = ~(8 * *(v4 + 1384)) & 0x10;
                            }

                            else
                            {
                              v426 = 0;
                            }

                            *(*(v423 + 4) + 148) = *(*(v423 + 4) + 148) & 0xFFEF | v426;
                            v425.i32[0] = *(v423 + 6);
                            v599[0] = CA::Shape::scale_and_dilate(v554, v425, v425.f32[0], 0, 0);
                            if (v409 && HIBYTE(v613) == 1)
                            {
                              v430 = v408;
                              v431 = CA::Shape::dilate(v554, v614.f32[0], v614.f32[1]);
                              v434 = CA::Shape::subtract(v431, v546, v432, v433);
                              v435.i32[0] = *(v570 + 6);
                              v436 = CA::Shape::scale_and_dilate(v434, v435, v435.f32[0], 0, 0);
                              CA::shape_subtract(v599, v436, v437, v438);
                              if (v436)
                              {
                                CA::Shape::unref(v436);
                              }

                              if (v434)
                              {
                                CA::Shape::unref(v434);
                              }

                              v408 = v430;
                              if (v431)
                              {
                                CA::Shape::unref(v431);
                              }
                            }

                            v439 = v557;
                            if (v408)
                            {
                              v440 = LODWORD(v606.f64[1]);
                              buf[0] = v606;
                              if (SLODWORD(v606.f64[1]) <= SHIDWORD(v606.f64[1]))
                              {
                                v441 = HIDWORD(v606.f64[1]);
                              }

                              else
                              {
                                v441 = LODWORD(v606.f64[1]);
                              }

                              if (SLODWORD(v606.f64[1]) >= SHIDWORD(v606.f64[1]))
                              {
                                v440 = HIDWORD(v606.f64[1]);
                              }

                              if (v441 <= 1073741822 && v440 >= 1)
                              {
                                buf[0] = vaddq_s32(v606, xmmword_183E21740);
                                v442 = vclez_s32(*&vextq_s8(buf[0], buf[0], 8uLL));
                                if (vorr_s8(v442, vdup_lane_s32(v442, 1)).u8[0])
                                {
                                  buf[0].f64[1] = 0.0;
                                }
                              }

                              CA::shape_intersect(v599, buf, v427);
                            }

                            v443 = v604;
                            if (v566)
                            {
                              v444 = v408;
                              if (v604)
                              {
                                CA::Shape::unref(v604);
                              }

                              if (v603)
                              {
                                CA::Shape::unref(v603);
                              }

                              v603 = 0;
                              v604 = 0;
                              v524 = *(v570 + 6);
                              if (v524)
                              {
                                CA::OGL::Context::release_surface(v4, v524);
                              }

                              v445 = 0;
                              v443 = 0;
                              v446 = v570;
                              *(v570 + 6) = 0;
                              v439 = v557;
                            }

                            else
                            {
                              v444 = v408;
                              v445 = v603;
                              v446 = v570;
                            }

                            v447 = v599[0];
                            if (v566)
                            {
                              if (*(v446 + 48))
                              {
                                buf[0] = 0uLL;
                                CA::Bounds::set_exterior(buf, v448, v617, v618);
                                v514 = (*(*v4 + 696))(v4, 1, buf, 1039, @"capture-backdrop-mesh-filtered-surface");
                                if (v514)
                                {
                                  v515 = v514;
                                  if (*(v566 + 25) < 0)
                                  {
                                    v516 = 3;
                                  }

                                  else
                                  {
                                    v516 = *(v566 + 25);
                                  }

                                  v517 = CA::Render::MeshTransform::retain_subdivided_mesh(v566, v516);
                                  v518 = v446;
                                  v519 = CA::Render::MeshTransform::retain_inverse_mesh(v517);
                                  v635 = 0;
                                  buf[0] = xmmword_183E20E00;
                                  buf[1] = 0u;
                                  buf[2] = xmmword_183E20E60;
                                  memset(&buf[3], 0, 32);
                                  v631 = xmmword_183E20E00;
                                  v632 = 0u;
                                  v633 = xmmword_183E20E60;
                                  __asm { FMOV            V0.2D, #1.0 }

                                  v634 = _Q0;
                                  v624 = 0x3C003C003C003C00uLL;
                                  v626 = 0;
                                  v625 = 0;
                                  v628 = 0;
                                  v627 = 1065353216;
                                  v629 = 1025;
                                  v622.f64[0] = 0.0;
                                  *&v622.f64[1] = &CA::Shape::_infinite_shape;
                                  v623.f64[0] = 0.0;
                                  *&v623.f64[1] = buf;
                                  *&v622.f64[0] = CA::OGL::Context::set_gstate(v4, &v622);
                                  CA::OGL::Context::push_surface(v4, v515, 1u, 0x2000, 0);
                                  v521.n128_u32[0] = *(v518 + 28);
                                  CA::OGL::fill_surface_mesh(v4, v519, &v617, *(v518 + 48), 1u, 1, 0, v521, 0.0);
                                  CA::OGL::Context::pop_surface(v4);
                                  CA::OGL::Context::set_gstate(v4, **(v4 + 656));
                                  CA::OGL::Context::release_surface(v4, *(v518 + 48));
                                  *(v518 + 48) = v515;
                                  *(v518 + 28) = 1065353216;
                                  if (atomic_fetch_add(&v519[2], 0xFFFFFFFF) == 1)
                                  {
                                    (*(*&v519->_os_unfair_lock_opaque + 16))(v519);
                                  }

                                  if (atomic_fetch_add(v517 + 2, 0xFFFFFFFF) == 1)
                                  {
                                    (*(*v517 + 16))(v517);
                                  }

                                  v447 = v599[0];
                                  v443 = v604;
                                  v446 = v570;
                                }
                              }
                            }

                            CA::Shape::unref(v447);
                            if (v443)
                            {
                              CA::Shape::unref(v443);
                            }

                            v200 = v541;
                            if (v603)
                            {
                              CA::Shape::unref(v603);
                            }

                            ++*(v446 + 68);
                            v197 = v546;
                            v199 = v540;
LABEL_489:
                            if ((v199 & 1) == 0)
                            {
                              CA::Shape::unref(v197);
                            }

                            v451 = *(v10 + 584);
                            if (v451)
                            {
                              CA::Shape::unref(v451);
                              *(v10 + 584) = 0;
                            }

                            if (v200)
                            {
                              CA::OGL::Context::release_surface(v4, v200);
                            }

                            goto LABEL_118;
                          }

                          if (*&v195 != 1)
                          {
                            goto LABEL_272;
                          }
                        }

LABEL_270:
                        v200 = 0;
                        goto LABEL_489;
                      }
                    }

                    else
                    {
                      v185 = 0;
                    }

                    layer_resource_text = 0;
                    goto LABEL_235;
                  }

                  if (*(v570 + 4))
                  {
                    *(v570 + 15) = 0;
                    ++*(v570 + 17);
                    *(v570 + 3) = 0;
                  }

LABEL_27:
                  v19 = *(v10 + 584);
                  if (v19)
                  {
                    CA::Shape::unref(v19);
                    *(v10 + 584) = 0;
                  }

                  goto LABEL_118;
                }
              }

              memset(&buf[2], 0, 32);
              memset(buf, 0, 32);
              v43 = *(v40 - 1);
              v44 = *(v40 - 3);
              buf[2] = vcvtq_f64_f32(*v43.f32);
              buf[3] = vcvt_hight_f64_f32(v43);
              buf[0] = vcvtq_f64_f32(*v44.f32);
              buf[1] = vcvt_hight_f64_f32(v44);
              v648.i64[0] = &unk_1EF1FECF0;
              v648.i64[1] = 4;
              *&v649 = buf;
              v45 = *(v10 + 72);
              if (0xAAAAAAAAAAAAAAABLL * ((*(v10 + 80) - v45) >> 6) <= v35)
              {
                goto LABEL_232;
              }

              CA::Render::LayerNode::MapGeometry::map(&v648, *(v40 - 16), *(v45 + 192 * v35 + 24));
              v46 = buf;
              v660 = vld2q_f64(v46->f64);
              v46 += 2;
              v662 = vld2q_f64(v46->f64);
              v47 = vcvt_hight_f32_f64(vcvt_f32_f64(v660.val[0]), v662.val[0]);
              v660.val[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v660.val[1]), v662.val[1]);
              v660.val[1] = vzip1q_s32(v47, v660.val[0]);
              v660.val[0] = vzip2q_s32(v47, v660.val[0]);
              *(v40 - 1) = v660.val[0];
              *(v40 - 3) = v660.val[1];
              *v47.i8 = vbsl_s8(vcgt_f32(*&v660.val[1].f64[1], *&v660.val[1].f64[0]), *&v660.val[1].f64[0], *&v660.val[1].f64[1]);
              v48 = vbsl_s8(vcgt_f32(*&v660.val[0].f64[1], *&v660.val[0].f64[0]), *&v660.val[0].f64[0], *&v660.val[0].f64[1]);
              *v47.i8 = vbsl_s8(vcgt_f32(v48, *v47.i8), *v47.i8, v48);
              *&v660.val[1].f64[0] = vbsl_s8(vcgt_f32(*&v660.val[1].f64[0], *&v660.val[1].f64[1]), *&v660.val[1].f64[0], *&v660.val[1].f64[1]);
              *&v660.val[0].f64[0] = vbsl_s8(vcgt_f32(*&v660.val[0].f64[0], *&v660.val[0].f64[1]), *&v660.val[0].f64[0], *&v660.val[0].f64[1]);
              *&v660.val[0].f64[0] = vsub_f32(vbsl_s8(vcgt_f32(*&v660.val[1].f64[0], *&v660.val[0].f64[0]), *&v660.val[1].f64[0], *&v660.val[0].f64[0]), *v47.i8);
              LODWORD(v660.val[1].f64[0]) = COERCE_UNSIGNED_INT(vaddv_f32(*&v660.val[0].f64[0])) & 0x7FFFFFFF;
              v662.val[0] = vdupq_lane_s32(*&vcgtq_s32(v577, v660.val[1]), 0);
              v49 = vbslq_s8(v662.val[0], vcvtq_f64_f32(*&v660.val[0].f64[0]), v583);
              v50 = vbslq_s8(v662.val[0], vcvtq_f64_f32(*v47.i8), v580);
              v51 = *(v10 + 528);
              v52 = vclezq_f64(v51);
              v53 = vclezq_f64(v49);
              v54 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v53, v52), vzip2q_s64(v53, v52))));
              v55 = v54.i8[0];
              if (v54.i8[4])
              {
                v56 = v50;
                v57 = v49;
                if (v55)
                {
LABEL_69:
                  v60 = v31 + v39;
                  v62 = *(v31 + v39 - 72);
                  v61 = *(v31 + v39 - 64);
                  if (v62 >= v61)
                  {
                    v63 = *(v31 + v39 - 64);
                  }

                  else
                  {
                    v63 = *(v31 + v39 - 72);
                  }

                  if (v63 <= 0.0)
                  {
                    goto LABEL_87;
                  }

                  if (*(v60 - 88) == *(v40 - 15) && *(v31 + v39 - 80) == *(v31 + v39 - 112) && v62 == *(v40 - 13) && v61 == *(v31 + v39 - 96))
                  {
                    v64 = vclezq_f64(v574);
                    v65 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v53, v64), vzip2q_s64(v53, v64))));
                    if (v65.i8[4])
                    {
                      if ((v65.i8[0] & 1) == 0)
                      {
                        goto LABEL_92;
                      }
                    }

                    else if ((v65.i8[0] & 1) == 0)
                    {
                      v77 = vaddq_f64(v50, v49);
                      v50 = vminnmq_f64(v568, v50);
                      v49 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v568, v574), v77), v50);
LABEL_92:
                      v568 = v50;
                      v574 = v49;
                    }

LABEL_87:
                    v31 = *(v10 + 72);
                    v30 = *(v10 + 80);
                    goto LABEL_88;
                  }

                  v66 = vcvt_f32_f64(*(v60 - 88));
                  v67 = vadd_f32(vcvt_f32_f64(*(v60 - 72)), v66);
                  *v68.f32 = v66;
                  v68.i64[1] = __PAIR64__(v66.u32[1], v67.u32[0]);
                  v66.i32[1] = v67.i32[1];
                  buf[2] = vcvtq_f64_f32(v67);
                  buf[3] = vcvtq_f64_f32(v66);
                  buf[0] = vcvtq_f64_f32(*v68.f32);
                  buf[1] = vcvt_hight_f64_f32(v68);
                  v638 = &unk_1EF1FECF0;
                  v639 = 4;
                  *&v640 = buf;
                  v69 = *(v10 + 72);
                  if (0xAAAAAAAAAAAAAAABLL * ((*(v10 + 80) - v69) >> 6) <= v35)
                  {
LABEL_232:
                    __assert_rtn("operator[]", "x-small-vector.h", 91, "pos < size () && Out of bounds access");
                  }

                  CA::Render::LayerNode::MapGeometry::map(&v638, *(v40 - 16), *(v69 + 192 * v35 + 24));
                  v70 = buf;
                  v661 = vld2q_f64(v70->f64);
                  v70 += 2;
                  v663 = vld2q_f64(v70->f64);
                  v71 = vcvt_hight_f32_f64(vcvt_f32_f64(v661.val[0]), v663.val[0]);
                  v661.val[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v661.val[1]), v663.val[1]);
                  v661.val[1] = vzip2q_s32(v71, v661.val[0]);
                  v661.val[0] = vzip1q_s32(v71, v661.val[0]);
                  *&v663.val[0].f64[0] = vextq_s8(v661.val[0], v661.val[0], 8uLL).u64[0];
                  *&v663.val[1].f64[0] = vextq_s8(v661.val[1], v661.val[1], 8uLL).u64[0];
                  *v71.i8 = vbsl_s8(vcgt_f32(*&v663.val[0].f64[0], *&v661.val[0].f64[0]), *&v661.val[0].f64[0], *&v663.val[0].f64[0]);
                  v72 = vbsl_s8(vcgt_f32(*&v663.val[1].f64[0], *&v661.val[1].f64[0]), *&v661.val[1].f64[0], *&v663.val[1].f64[0]);
                  *v71.i8 = vbsl_s8(vcgt_f32(v72, *v71.i8), *v71.i8, v72);
                  *&v661.val[0].f64[0] = vbsl_s8(vcgt_f32(*&v661.val[0].f64[0], *&v663.val[0].f64[0]), *&v661.val[0].f64[0], *&v663.val[0].f64[0]);
                  *&v661.val[1].f64[0] = vbsl_s8(vcgt_f32(*&v661.val[1].f64[0], *&v663.val[1].f64[0]), *&v661.val[1].f64[0], *&v663.val[1].f64[0]);
                  *&v661.val[0].f64[0] = vsub_f32(vbsl_s8(vcgt_f32(*&v661.val[0].f64[0], *&v661.val[1].f64[0]), *&v661.val[0].f64[0], *&v661.val[1].f64[0]), *v71.i8);
                  LODWORD(v661.val[1].f64[0]) = COERCE_UNSIGNED_INT(vaddv_f32(*&v661.val[0].f64[0])) & 0x7FFFFFFF;
                  v661.val[1] = vdupq_lane_s32(*&vcgtq_s32(v571, v661.val[1]), 0);
                  v73 = vbslq_s8(v661.val[1], vcvtq_f64_f32(*&v661.val[0].f64[0]), v583);
                  v74 = vbslq_s8(v661.val[1], vcvtq_f64_f32(*v71.i8), v580);
                  v663.val[0] = vclezq_f64(v574);
                  v663.val[1] = vclezq_f64(v73);
                  v75 = vmovn_s64(vcltzq_s64(vorrq_s8(vzip1q_s64(v663.val[1], v663.val[0]), vzip2q_s64(v663.val[1], v663.val[0]))));
                  if (v75.i8[4])
                  {
                    if (v75.i8[0])
                    {
                      goto LABEL_87;
                    }
                  }

                  else
                  {
                    if (v75.i8[0])
                    {
                      goto LABEL_87;
                    }

                    v76 = vaddq_f64(v74, v73);
                    v74 = vminnmq_f64(v568, v74);
                    v73 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v568, v574), v76), v74);
                  }

                  v568 = v74;
                  v574 = v73;
                  goto LABEL_87;
                }
              }

              else
              {
                if (v54.i8[0])
                {
                  goto LABEL_69;
                }

                v58 = *(v10 + 512);
                v59 = vaddq_f64(v58, v51);
                v56 = vminnmq_f64(v58, v50);
                v57 = vsubq_f64(vmaxnmq_f64(v59, vaddq_f64(v50, v49)), v56);
              }

              *(v10 + 512) = v56;
              *(v10 + 528) = v57;
              goto LABEL_69;
            }
          }
        }

LABEL_118:
        os_unfair_lock_unlock((v10 + 40));
        goto LABEL_119;
      }
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v22 = malloc_type_zone_malloc(malloc_zone, 0xE8uLL, 0x165299FDuLL);
    if (v22)
    {
      v23 = (*(*v4 + 144))(v4);
      *(v22 + 1) = v4;
      *(v22 + 2) = v23;
      *v22 = &unk_1EF202840;
      *(v22 + 24) = 0u;
      *(v22 + 40) = 0u;
      *(v22 + 56) = 0u;
      v22[224] &= 0xE0u;
      v24 = *(v10 + 48);
      if (v24 != v22)
      {
        v25 = v8;
        v26 = v22;
        if (!v24)
        {
          v26 = v22;
LABEL_43:
          *(v10 + 48) = v26;
          v8 = v25;
          goto LABEL_44;
        }

LABEL_42:
        (*(*v24 + 8))(v24);
        goto LABEL_43;
      }
    }

    else
    {
      v24 = *(v10 + 48);
      if (v24)
      {
        v25 = v8;
        v26 = 0;
        goto LABEL_42;
      }
    }

LABEL_44:
    *(v22 + 2) = (*(*v4 + 144))(v4);
    goto LABEL_45;
  }
}

uint64_t CA::OGL::MetalContext::encode_edr_resolve(CA::OGL::MetalContext *this, const CA::OGL::MetalContext::FragmentShader::Spec *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(this + 2);
  v4 = 1.0;
  if (*(v3 + 321))
  {
    v4 = *(v3 + 328);
  }

  _S8 = powf(*(*(this + 84) + 88) * v4, 1.0 / *(this + 144));
  if (*(this + 1006) == _S8)
  {
    return 1;
  }

  __asm { FCVT            H0, S8 }

  __src = _H0;
  result = CA::OGL::MetalBufferPool::encode_fragment_arg(*(this + 595), 6, &__src, 2u, 2u);
  if (result)
  {
    *(this + 1006) = _S8;
  }

  return result;
}

uint64_t CA::OGL::rect_transform_filter_bits(CA::Mat4Impl *a1, const double *a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, double a6)
{
  v7 = a5.i64[0];
  v13 = a3;
  v14 = a4;
  a3.i64[0] = a5.i64[0];
  *a4.i64 = a6;
  v9 = CA::OGL::transform_filter_bits(a1, a2, a3, a4, a5);
  v11.i64[0] = v7;

  return CA::OGL::rect_filter_bits(a1, v9, v10, v13, v14, v11, a6);
}

void CA::OGL::FilterNode::apply(uint64_t a1, int32x2_t **a2, float *a3, int32x4_t a4, int32x4_t a5)
{
  v7 = *a4.i32;
  v71 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 8);
  v10 = *v9;
  if (a2[1])
  {
    v11 = 0;
  }

  else
  {
    v12 = *(*(a1 + 16) + 168);
    v13 = CA::OGL::filter_source_layer_name(*(*(a1 + 248) + 16));
    v11 = CA::OGL::LayerNode::filter_source_layer(v12, v13);
    if (v11)
    {
      *v67 = 0uLL;
      CA::Shape::get_bounds(a1 + 160, v67);
      v14 = *(*(a1 + 248) + 16);
      if (v14)
      {
        v15 = *(v14 + 48);
        if (v15)
        {
          v16 = *(a1 + 16);
          if ((*(*v15 + 72))(*(v14 + 48)))
          {
            (*(*v15 + 128))(v15, v9, v14, v16, v67);
          }
        }
      }

      v17 = *(*(a1 + 16) + 168);
      v18 = *(a1 + 248);
      v66 = *v67;
      v19 = CA::OGL::LayerNode::retain_filter_source_surface(v17, v11, v18, (a3 + 1), &v66);
      a2[1] = v19;
      if (v19)
      {
        v11 = 0;
      }
    }
  }

  v20 = *(a1 + 152);
  if (v20 < 0)
  {
    (*(*a1 + 40))(a1, a1 + 144);
    v20 = *(a1 + 152);
  }

  v21 = *(a1 + 156);
  if (v20 <= v21)
  {
    v22 = *(a1 + 156);
  }

  else
  {
    v22 = v20;
  }

  a4.i32[0] = 1073741822;
  a5.i32[0] = v22;
  v26 = vdupq_lane_s32(*&vcgtq_s32(a5, a4), 0);
  v23 = *(a1 + 144);
  v24.i64[0] = v23;
  v24.i64[1] = SHIDWORD(v23);
  v25 = vbslq_s8(v26, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v24));
  *v26.i64 = v20;
  if (v22 <= 1073741822)
  {
    v27 = v21;
  }

  else
  {
    *v26.i64 = 1.79769313e308;
    v27 = 1.79769313e308;
  }

  v28 = v7;
  *&v26.i64[1] = v27;
  v29 = *v26.i64 >= 1.79769313e308 || v7 == 1.0;
  v30.i64[1] = v25.i64[1];
  *&v31.i64[1] = v27;
  if (v29)
  {
    v32 = 0;
  }

  else
  {
    v32 = -1;
  }

  v33 = vdupq_n_s64(v32);
  *v31.i64 = *v26.i64 * v7;
  v34 = vbslq_s8(v33, v31, v26);
  *v30.i64 = v28 * *v25.i64;
  v35 = vbslq_s8(v33, v30, v25);
  if (v7 != 1.0 && v34.f64[1] < 1.79769313e308)
  {
    v35.f64[1] = vmuld_lane_f64(v28, v35, 1);
    v34.f64[1] = v34.f64[1] * v28;
  }

  v36 = vceqzq_f64(v34);
  if ((vorrq_s8(vdupq_laneq_s64(v36, 1), v36).u64[0] & 0x8000000000000000) != 0 || (v37 = vceqq_f64(v34, v34), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v37), 1), v37).u64[0] & 0x8000000000000000) != 0))
  {
    v66 = 0uLL;
  }

  else
  {
    v38 = vminnmq_f64(vaddq_f64(v35, v34), vdupq_n_s64(0x41C0000000000000uLL));
    v39 = vcvtmq_s64_f64(vmaxnmq_f64(v35, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v66 = vuzp1q_s32(v39, vsubq_s64(vcvtpq_s64_f64(v38), v39));
  }

  v40 = CA::Shape::intersect(*(v10[41].i64[0] + 8), &v66);
  v70 = 0;
  *&v68[16] = 0u;
  v69 = 0u;
  *&v67[16] = 0u;
  *v68 = 0u;
  *v67 = 0u;
  v41 = v10[41].i64[0];
  *&v67[8] = *(v41 + 8);
  v42 = *(v41 + 32);
  *&v67[24] = *(v41 + 24);
  *v68 = v42;
  *&v68[8] = *(v41 + 40);
  *&v68[24] = *(v41 + 56);
  LOWORD(v42) = *(v41 + 80) & 0x500;
  v43 = *(v41 + 80);
  LODWORD(v69) = *(v41 + 64);
  v70 = (v42 | v43);
  *(&v69 + 1) = *(v41 + 72);
  *&v67[8] = v40;
  *v67 = CA::OGL::Context::set_gstate(v10, v67);
  v44 = ((*a2)[18].i8[4] & 0x10) == 0 || (CA::OGL::filter_flags(*(a1 + 248), *(a1 + 16)) & 0x40) == 0;
  v45 = v10[1].i64[0];
  v46 = *(v45 + 496);
  if (v46 >= 2 && (v46 != 3 || v44))
  {
    *(v45 + 497) |= 1u;
  }

  v47 = *(a1 + 16);
  v48 = *(*(v47 + 24) + 136);
  if (!v48 || !*v48)
  {
    goto LABEL_49;
  }

  v49 = 0;
  if (*(*v48 + 12) != 3)
  {
    goto LABEL_50;
  }

  v50 = v48[12];
  if (!v50)
  {
    goto LABEL_50;
  }

  v51 = *(v50 + 16);
  if (!v51)
  {
    goto LABEL_49;
  }

  v52 = *(v50 + 24);
  if ((*(v52 + 13) & 1) == 0)
  {
    v53 = 0;
    v54 = v50 + 32;
    while (v51 - 1 != v53)
    {
      v55 = *(v54 + 8 * v53++);
      if (*(v55 + 13))
      {
        if (v53 >= v51)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }
    }

    goto LABEL_49;
  }

LABEL_48:
  if (v52 != *(*(a1 + 248) + 16) || (v58 = *(*(v47 + 16) + 256)) == 0)
  {
LABEL_49:
    v49 = 0;
    goto LABEL_50;
  }

  os_unfair_lock_lock((v58 + 52));
  v59 = *(v58 + 56);
  if (v59)
  {
    os_unfair_lock_lock((v59 + 40));
    v60 = *(v59 + 48);
    if (v60 && *(v60 + 8) == *v9)
    {
      v49 = *(v60 + 224);
    }

    else
    {
      v49 = 0;
    }

    os_unfair_lock_unlock((v59 + 40));
  }

  else
  {
    v49 = 0;
  }

  os_unfair_lock_unlock((v58 + 52));
  v47 = *(a1 + 16);
LABEL_50:
  CA::OGL::emit_filter(v9, *(a1 + 248), v47, a2, a3, v11, v49 & 1, 0, v7, 0, 0, 0);
  CA::OGL::Context::set_gstate(v10, *v10[41].i64[0]);
  v57 = (*(a1 + 236) >> 17) & 0xF;
  if (v57)
  {
    if (v57 > 0xC)
    {
      v61 = 0;
    }

    else
    {
      v61 = dword_183E2D698[v57 - 1];
      if (v57 == 9 && *a2 && ((*a2)[11].i8[5] & 8) != 0)
      {
        v61 = 8388736;
      }
    }

    v62 = bswap32(v61);
    v56.i32[0] = v62;
    v56.i32[1] = v62 >> 8;
    v56.i32[2] = HIWORD(v62);
    v63.i64[0] = 0xFF000000FFLL;
    v63.i64[1] = 0xFF000000FFLL;
    v64 = vandq_s8(v56, v63);
    v64.i32[3] = vshrq_n_u32(vdupq_n_s32(v62), 0x18uLL).i32[3];
    *(v10[1].i64[0] + 8) = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(v64), vdupq_n_s32(0x3B808081u)));
    v65[0] = 0;
    v65[1] = 0;
    CA::OGL::emit_combine(v10, 0, 0, 0, *&v67[8], v65);
  }

  *(v10[1].i64[0] + 497) &= ~1u;
  if (v40)
  {
    CA::Shape::unref(v40);
  }
}

uint64_t CA::OGL::filter_source_layer_name(uint64_t result)
{
  if (result)
  {
    if ((*(result + 14) & 8) == 0)
    {
      return 0;
    }

    v1 = *(result + 40);
    if (!v1)
    {
      return 0;
    }

    v2 = *(v1 + 16);
    if (!v2)
    {
      return 0;
    }

    v3 = 0;
    v4 = v1 + 24;
    while (1)
    {
      v5 = *(v4 + 8 * v3);
      if (*(v5 + 16) == 431)
      {
        break;
      }

      if (v2 == ++v3)
      {
        return 0;
      }
    }

    if ((v3 & 0x80000000) == 0)
    {
      return *(v5 + 24);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void CA::OGL::finalize_filter(void *ptr)
{
  v2 = ptr[1];
  if (v2)
  {
    do
    {
      v3 = v2[1];
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = ptr[6];
  if (v4)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, v4);
  }

  if (*(ptr + 57) == 1)
  {
    v5 = ptr[2];
    if (v5)
    {
      if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v5 + 16))(v5);
      }
    }
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v6 = malloc_zone;

  malloc_zone_free(v6, ptr);
}

void CA::OGL::FilterNode::~FilterNode(CA::OGL::FilterNode *this)
{
  *this = &unk_1EF1FD850;
  CA::OGL::finalize_filter(*(this + 31));
}

{
  *this = &unk_1EF1FD850;
  CA::OGL::finalize_filter(*(this + 31));
  abort();
}

__n128 CA::ColorMatrix::set_ycc_composite(CA::ColorMatrix *this, float a2, float a3, float a4, const float *a5, uint64_t a6, const CA::ColorMatrix *a7)
{
  v41 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  memset(v40, 0, sizeof(v40));
  v36 = a2 - a3;
  *(&v37 + 3) = a3;
  DWORD1(v38) = 1065353216;
  HIDWORD(v39) = 1065353216;
  v40[5] = 1065353216;
  v9 = 0.5 - a4 * 0.5;
  v25 = 0;
  v24 = 0;
  v23 = 1065353216;
  v26 = 0;
  v28 = 0;
  v27 = a4;
  v29 = v9;
  v30 = 0;
  v31 = a4;
  v32 = 0;
  v33 = v9;
  v34 = xmmword_183E20E40;
  v35 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  CA::concat(&v18, &v36, &unk_183E24238, a7);
  CA::concat(v17, &v23, &v18, v10);
  CA::concat(&v18, &unk_183E24288, v17, v11);
  if (a5)
  {
    v12 = 0;
    v13 = a5[3];
    do
    {
      *(&v18 + v12) = vmulq_n_f32(*(&v18 + v12), 1.0 - v13);
      v12 += 16;
    }

    while (v12 != 80);
    v14 = *(&v20 + 1) + a5[1];
    v19.n128_f32[0] = v19.n128_f32[0] + *a5;
    *(&v20 + 1) = v14;
    *(&v21 + 2) = *(&v21 + 2) + a5[2];
    *(&v22 + 2) = *(&v22 + 2) + v13;
  }

  v15 = v21;
  *(this + 2) = v20;
  *(this + 3) = v15;
  *(this + 4) = v22;
  result = v19;
  *this = v18;
  *(this + 1) = result;
  return result;
}

float CA::concat(CA *this, CA::ColorMatrix *a2, const CA::ColorMatrix *a3, const CA::ColorMatrix *a4)
{
  v5 = *(a2 + 2);
  v4 = *(a2 + 3);
  v7 = *(a3 + 14);
  v6 = *(a3 + 15);
  v8 = *(a3 + 10);
  v9 = *(a3 + 11);
  v10 = *(a2 + 1);
  v12 = *(a3 + 4);
  v11 = *(a3 + 5);
  v13 = *(a3 + 1);
  *this = (((v6 * v4) + (v8 * v5)) + (v11 * v10)) + (*a3 * *a2);
  v15 = *(a2 + 7);
  v14 = *(a2 + 8);
  v16 = *(a2 + 5);
  v17 = *(a2 + 6);
  v19 = *(a3 + 16);
  v18 = *(a3 + 17);
  v20 = *(a3 + 6);
  v21 = *(a3 + 7);
  v22 = *a2;
  *(this + 1) = (((v19 * v4) + (v9 * v5)) + (v20 * v10)) + (v13 * *a2);
  v24 = *a3;
  v23 = *(a3 + 1);
  v25 = (((v14 * v6) + (v15 * v8)) + (v17 * v11)) + (*a3 * v16);
  v27 = *(a2 + 12);
  v26 = *(a2 + 13);
  v28 = (v26 * v6) + (v27 * v8);
  v30 = *(a3 + 12);
  v29 = *(a3 + 13);
  v31 = *(a2 + 1);
  v32 = *(a3 + 3);
  *(this + 2) = (((v18 * v4) + (v30 * v5)) + (v21 * v31)) + (*(a3 + 2) * v22);
  v34 = *(a3 + 18);
  v33 = *(a3 + 19);
  v35 = *(a2 + 2);
  v36 = *(a3 + 8);
  v37 = *(a3 + 9);
  *(this + 3) = (((v34 * v4) + (v29 * v35)) + (v36 * v31)) + (v32 * v22);
  v38 = (((*(a2 + 4) + (v33 * *(a2 + 3))) + (v7 * v35)) + (v37 * v31)) + (v12 * v22);
  v39 = *(a2 + 10);
  v40 = *(a2 + 11);
  *(this + 4) = v38;
  *(this + 5) = v25;
  v41 = *(a3 + 4);
  v42 = *(a3 + 5);
  v43 = (v28 + (v42 * v40)) + (v39 * v24);
  v44 = ((v19 * v14) + (v9 * v15)) + (v20 * v17);
  v45 = *(a2 + 5);
  *(this + 6) = v44 + (v23 * v45);
  v46 = *(a2 + 6);
  v47 = ((v18 * v14) + (v30 * v15)) + (v46 * v21);
  v49 = *(a3 + 2);
  v48 = *(a3 + 3);
  *(this + 7) = v47 + (v49 * v45);
  v50 = *(a2 + 7);
  *(this + 8) = (((v34 * v14) + (v36 * v46)) + (v50 * v29)) + (v48 * v45);
  v51 = (((*(a2 + 9) + (v7 * v50)) + (v37 * v46)) + (*(a2 + 8) * v33)) + (v41 * v45);
  *(this + 10) = v43;
  v53 = *(a2 + 17);
  v52 = *(a2 + 18);
  v54 = *(a3 + 6);
  v55 = *(a3 + 7);
  v56 = ((v19 * v26) + (v9 * v27)) + (v54 * v40);
  v57 = *(a2 + 10);
  *(this + 11) = v56 + (v57 * v23);
  v58 = *(a3 + 11);
  v59 = *(a2 + 16);
  v60 = (((v52 * v6) + (*(a3 + 10) * v53)) + (v59 * v42)) + (*(a2 + 15) * v24);
  v61 = (v18 * v26) + (v30 * v27);
  v62 = *(a2 + 11);
  *(this + 12) = (v61 + (v49 * v57)) + (v55 * v62);
  v63 = *(a2 + 12);
  v64 = ((v34 * v26) + (v48 * v57)) + (v63 * v29);
  *(this + 9) = v51;
  v65 = *(a3 + 8);
  v66 = *(a3 + 9);
  *(this + 13) = v64 + (v65 * v62);
  v67 = *(a2 + 13);
  v68 = *(a2 + 14);
  *(this + 15) = v60;
  v69 = (v19 * v52) + (v54 * v59);
  v70 = *(a2 + 15);
  *(this + 16) = (v69 + (v58 * v53)) + (v70 * v23);
  v71 = v18 * v52;
  v72 = *(a2 + 16);
  v73 = *(a3 + 13);
  *(this + 17) = ((v71 + (v49 * v70)) + (*(a3 + 12) * v53)) + (v72 * v55);
  v74 = *(a2 + 17);
  *(this + 18) = (((v34 * v52) + (v48 * v70)) + (v65 * v72)) + (v73 * v74);
  *(this + 14) = (((v68 + (v7 * v63)) + (v41 * v57)) + (v67 * v33)) + (v66 * v62);
  result = (((*(a2 + 19) + (v41 * v70)) + (v66 * v72)) + (*(a2 + 18) * v33)) + (*(a3 + 14) * v74);
  *(this + 19) = result;
  return result;
}

void CA::OGL::render_vibrant_color_matrix(CA::OGL *a1, uint64_t a2, int32x2_t *a3, uint64_t a4, float a5)
{
  v185 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v177 = 0u;
  v178 = 0u;
  v175 = 0u;
  v176 = 0u;
  v174 = 0u;
  v11 = *(a2 + 40);
  v12 = &v174;
  CA::OGL::get_filter_color_matrix(v11, &v174);
  if (CA::Render::KeyValueArray::get_int_key(v11, 331, 0) && ((v14 = v10[84], *&v14) && *(*&v14 + 8) || (v15 = v10[75], *&v15) && (v181.i8[0] = 0, (*(**&v15 + 80))(v15, CA::OGL::Display::has_detached_layers(void)const::$_0::__invoke, &v181), (v181.i8[0] & 1) != 0)))
  {
    v173 = 0uLL;
    CA::Shape::get_bounds(*(*&v10[82] + 8), &v173);
    v16 = v10[84];
    if (v16)
    {
      v17 = v16 + 6;
    }

    else
    {
      v17 = v10 + 76;
    }

    v18 = *(&v173 + 8);
    v19 = vclez_s32(*(&v173 + 8));
    if ((vpmax_u32(v19, v19).u32[0] & 0x80000000) == 0)
    {
      v20 = v17[1];
      v21 = vclez_s32(v20);
      if ((vpmax_u32(v21, v21).u32[0] & 0x80000000) != 0 || (*&v22 = vmax_s32(*&v173, *v17), v23 = vsub_s32(vmin_s32(vadd_s32(*&v173, *(&v173 + 8)), vadd_s32(*v17, v20)), *&v22), v24 = vclez_s32(v23), (vpmax_u32(v24, v24).u32[0] & 0x80000000) != 0))
      {
        v18 = 0;
        *(&v173 + 1) = 0;
      }

      else
      {
        *(&v22 + 1) = v23;
        v173 = v22;
        v18 = v23;
      }
    }

    v73 = vclez_s32(v18);
    if ((vpmax_u32(v73, v73).u32[0] & 0x80000000) == 0)
    {
      v74 = a3[7];
      v75 = vclez_s32(v74);
      if ((vpmax_u32(v75, v75).u32[0] & 0x80000000) != 0 || (v76 = a3[6], v77 = vadd_s32(*&v173, v18), *&v78 = vmax_s32(*&v173, v76), v79 = vsub_s32(vmin_s32(v77, vadd_s32(v76, v74)), *&v78), v80 = vclez_s32(v79), (vpmax_u32(v80, v80).u32[0] & 0x80000000) != 0))
      {
        *(&v173 + 1) = 0;
      }

      else
      {
        *(&v78 + 1) = v79;
        v173 = v78;
      }
    }

    v81 = (*(*v10 + 696))(v10, 1, &v173, 2063, @"render-image-render-vibrant-backdrop");
    if (v81)
    {
      v82 = v81;
      v83 = *(a4 + 24);
      if (v83)
      {
        v85 = CA::Render::Layer::process_id(*(v83 + 152));
        v86 = *(a4 + 24);
        if (v86)
        {
          layer_resource_text = CA::Render::create_layer_resource_text(v86, v84);
LABEL_40:
          v168 = a2;
          cfa = layer_resource_text;
          (*(*v10 + 888))(v10, v82, 0, v85, @"image-render-vibrant-color", layer_resource_text);
          CA::OGL::Context::push_surface(v10, v82, 0, 8, 0);
          CA::OGL::capture_in_place_backdrop(a1, 1);
          CA::OGL::Context::pop_surface(v10);
          v171 = 0u;
          v172 = 0u;
          v169 = 0u;
          v170 = 0u;
          v180 = 0u;
          v88 = v10[2];
          v89 = v88[4];
          v90.i32[0] = v88[5];
          v90.i32[1] = v88[6];
          v91 = v88[7];
          v92.i64[0] = v90.u32[0];
          v92.i64[1] = v90.u32[1];
          v93.i64[0] = 0xFFFFLL;
          v93.i64[1] = 0xFFFFLL;
          v94 = vandq_s8(v92, v93);
          _Q2 = xmmword_183E21280;
          v96 = vshlq_u64(v94, xmmword_183E21280);
          v97 = v96.i64[0] | v89 | v96.i64[1] | (v91 << 48);
          if (v97 == 0x3C003C003C003C00)
          {
            v98 = &v174;
            v99 = &v175.i8[4];
            v144 = &v176.i64[1];
            v146 = &v177.i32[3];
            v148 = &v175.i64[1];
            v150 = &v176.i32[3];
            v100 = &v178;
            v101 = &v177;
            v152 = &v175.i32[3];
            v154 = &v178.i8[4];
            v102 = &v176;
            v103 = &v175;
            v156 = &v177.i8[4];
            v158 = &v176.i8[4];
            v160 = &v178.i64[1];
            v162 = &v177.i64[1];
            v164 = &v178.i32[3];
          }

          else
          {
            v100 = &v180;
            v101 = &v169;
            v162 = &v169.i64[1];
            v164 = (&v180 | 0xC);
            v102 = &v170;
            v158 = &v170.i8[4];
            v160 = &v180.i64[1];
            v154 = &v180.i8[4];
            v156 = &v169.i8[4];
            v103 = &v171;
            v150 = (&v170 | 0xC);
            v152 = (&v171 | 0xC);
            v146 = (&v169 | 0xC);
            v148 = &v171.i64[1];
            v144 = &v170.i64[1];
            v99 = &v171.i8[4];
            _H1 = v91;
            v105 = vuzp1_s16(v90, v90);
            _Q2.i16[0] = v89;
            __asm
            {
              FCVT            S16, H1
              FCMP            H1, #0
            }

            v108 = 0.0;
            if (!(_NF ^ _VF | _ZF))
            {
              v108 = 1.0 / _S16;
            }

            __asm { FCVT            S2, H2 }

            *_Q2.i32 = v108 * *_Q2.i32;
            v109 = vcvtq_f32_f16(v105);
            *v109.i8 = vmul_n_f32(*v109.i8, v108);
            v172 = vmulq_n_f32(v174, *_Q2.i32);
            v110 = vzip1q_s32(_Q2, v109);
            v111 = vmulq_f32(v175, vzip1q_s32(v110, vdupq_lane_s32(*v110.i8, 1)));
            v112 = vmulq_f32(v176, vzip1q_s32(v109, v109));
            *v109.i8 = vdup_lane_s32(*v109.i8, 1);
            v113 = v109;
            *&v113.i32[1] = _S16;
            v114 = vzip1q_s32(v113, v113);
            v114.i32[2] = v109.i32[0];
            v170 = v112;
            v171 = v111;
            v169 = vmulq_f32(v177, v114);
            v180 = vmulq_n_f32(v178, _S16);
            v98 = &v172;
          }

          CA::OGL::bind_filter_surface(v10, a3, 0, a5);
          CA::OGL::Context::bind_surface(v10, v82, 1u, 0, 0, 0.0);
          *(*&v10[2] + 16) = 51;
          v115 = *v99;
          v116 = *v144;
          v117 = *v146;
          v118 = v98->i32[1];
          v119 = *v148;
          v120 = *v150;
          v121 = v100->i32[0];
          v122 = *v152;
          v123 = v101->i32[0];
          v124 = *v154;
          v125 = v98->i32[2];
          v126 = v98->i32[3];
          v127 = v102->i32[0];
          v128 = *v156;
          v129 = *v160;
          v130 = v103->i32[0];
          v131 = *v158;
          v132 = *v162;
          v133 = *v164;
          v10[20].i32[0] = v98->i32[0];
          v10[20].i32[1] = v115;
          v10[21].i32[0] = v116;
          v10[21].i32[1] = v117;
          v10[22].i32[0] = v118;
          v10[22].i32[1] = v119;
          v10[23].i32[0] = v120;
          v10[23].i32[1] = v121;
          v10[24].i32[0] = v125;
          v10[24].i32[1] = v122;
          v10[25].i32[0] = v123;
          v10[25].i32[1] = v124;
          v10[26].i32[0] = v126;
          v10[26].i32[1] = v127;
          v10[27].i32[0] = v128;
          v10[27].i32[1] = v129;
          v10[28].i32[0] = v130;
          v10[28].i32[1] = v131;
          v10[29].i32[0] = v132;
          v10[29].i32[1] = v133;
          float_key = CA::Render::KeyValueArray::get_float_key(*(v168 + 40), 358, 0.0);
          if (initialized[0] != -1)
          {
            dispatch_once_f(initialized, 0, init_debug);
          }

          v135 = *&dword_1ED4E9760;
          if (*&dword_1ED4E9760 == 0.0)
          {
            v135 = float_key;
          }

          v136 = 1.0;
          *v10[30].i32 = powf(v135, 1.0 / *v10[72].i32);
          int_key = CA::Render::KeyValueArray::get_int_key(*(v168 + 40), 359, 0);
          if (BYTE14(xmmword_1ED4E98AC) != 1)
          {
            v136 = int_key;
          }

          *v10[40].i32 = v136;
          v184 = 0u;
          v138 = *(*&v10[82] + 8);
          v181.i64[0] = v10;
          v181.i64[1] = v138;
          v183 = 0u;
          v182 = 0;
          WORD4(v183) = 256;
          CA::OGL::Context::ClippedArray::start(&v181);
          v179[0] = 0;
          v179[1] = 0;
          while (CA::OGL::Context::ClippedArray::next_rect(&v181, v179))
          {
            if (v10[13].i32[1])
            {
              v139 = 6;
            }

            else
            {
              v139 = 4;
            }

            if ((*&v10[18] + 4) > *&v10[19] || (v140 = v10[16]) != 0 && *&v10[15] + v139 > v140)
            {
              v10[173].i16[0] |= 0x20u;
              CA::OGL::Context::array_flush(v10);
              v10[18] = 0;
              v10[14] = (&v10[173] + 2);
              *v10[15].i8 = xmmword_183E20E50;
            }

            CA::OGL::Context::array_rect(v10, a3[6].i32[0] * a5, a3[6].i32[1] * a5, (a3[7].i32[0] + a3[6].i32[0]) * a5, (a3[7].i32[1] + a3[6].i32[1]) * a5);
            v141 = *&v10[17] + 48 * *&v10[18];
            *(v141 - 124) = 0;
            *(v141 - 32) = 0;
            *(v141 - 176) = 0;
            *(v141 - 168) = 0;
            *(v141 - 116) = 0;
            *&v142 = vcvt_f32_s32(a3[7]);
            *(v141 - 128) = v142;
            *(v141 - 28) = DWORD1(v142);
            *(v141 - 120) = v142;
            *(v141 - 20) = DWORD1(v142);
            *(&v142 + 1) = v142;
            *(v141 - 80) = v142;
            *(v141 - 24) = 0;
            *(v141 - 160) = v97;
            *(v141 - 112) = v97;
            *(v141 - 64) = v97;
            *(v141 - 16) = v97;
          }

          CA::OGL::Context::unbind_surface(v10, v82, 1);
          if (v10[84] != a3)
          {
            CA::OGL::Context::unbind_surface(v10, a3, 0);
          }

          *(*&v10[2] + 16) = 0;
          *(*&v10[2] + 19) = 0;
          CA::OGL::Context::release_surface(v10, v82);
          if (cfa)
          {
            CFRelease(cfa);
          }

          return;
        }
      }

      else
      {
        v85 = 0;
      }

      layer_resource_text = 0;
      goto LABEL_40;
    }
  }

  else
  {
    v167 = a2;
    v181 = 0u;
    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    v25 = v10[2];
    v26 = v25[4];
    _Q2.i16[0] = v25[5];
    _Q2.i16[2] = v25[6];
    v27 = v25[7];
    v28.i64[0] = _Q2.u32[0];
    v28.i64[1] = _Q2.u32[1];
    v29.i64[0] = 0xFFFFLL;
    v29.i64[1] = 0xFFFFLL;
    _Q0 = vshlq_u64(vandq_s8(v28, v29), xmmword_183E21280);
    cf = v26;
    v163 = _Q2.i64[0];
    v161 = v27;
    if ((_Q0.i64[0] | v26 | _Q0.i64[1] | (v27 << 48)) == 0x3C003C003C003C00)
    {
      v31 = &v175.i8[4];
      v32 = &v176.i64[1];
      v33 = &v177.i32[3];
      v143 = &v175.i64[1];
      v145 = &v176.i32[3];
      v34 = &v178;
      v35 = &v177;
      v147 = &v175.i32[3];
      v149 = &v178.i8[4];
      v36 = &v176;
      v37 = &v175;
      v151 = &v177.i8[4];
      v153 = &v176.i8[4];
      v155 = &v178.i64[1];
      v157 = &v177.i64[1];
      v159 = &v178.i32[3];
    }

    else
    {
      v34 = &v169;
      v35 = &v170;
      v157 = &v170.i64[1];
      v159 = (&v169 | 0xC);
      v36 = &v171;
      v153 = &v171.i8[4];
      v155 = &v169.i64[1];
      v149 = &v169.i8[4];
      v151 = &v170.i8[4];
      v37 = &v172;
      v145 = (&v171 | 0xC);
      v147 = (&v172 | 0xC);
      v143 = &v172.i64[1];
      v33 = (&v170 | 0xC);
      v32 = &v171.i64[1];
      v31 = &v172.i8[4];
      _Q0.i32[0] = v27;
      v38 = vuzp1_s16(*_Q2.i8, *_Q0.i8);
      _Q2.i16[0] = v26;
      __asm
      {
        FCVT            S16, H0
        FCMP            H0, #0
      }

      _Q0.i32[0] = 0;
      if (!(_NF ^ _VF | _ZF))
      {
        *_Q0.i32 = 1.0 / _S16;
      }

      __asm { FCVT            S2, H2 }

      *_Q2.i32 = *_Q0.i32 * *_Q2.i32;
      *_Q0.i8 = vmul_n_f32(*&vcvtq_f32_f16(v38), *_Q0.i32);
      v181 = vmulq_n_f32(v174, *_Q2.i32);
      v45 = vzip1q_s32(_Q2, _Q0);
      v46 = vmulq_f32(v175, vzip1q_s32(v45, vdupq_lane_s32(*v45.i8, 1)));
      v47 = vmulq_f32(v176, vzip1q_s32(_Q0, _Q0));
      *_Q0.i8 = vdup_lane_s32(*_Q0.i8, 1);
      v48 = _Q0;
      *&v48.i32[1] = _S16;
      v49 = vzip1q_s32(v48, v48);
      v49.i32[2] = _Q0.i32[0];
      v171 = v47;
      v172 = v46;
      v169 = vmulq_n_f32(v178, _S16);
      v170 = vmulq_f32(v177, v49);
      v12 = &v181;
    }

    CA::OGL::bind_filter_surface(v10, a3, 0, a5);
    *(*&v10[2] + 16) = 52;
    v50 = *v31;
    v51 = *v32;
    v52 = *v33;
    v53 = v12->i32[1];
    v54 = *v143;
    v55 = *v145;
    v56 = v34->i32[0];
    v57 = *v147;
    v58 = v35->i32[0];
    v59 = *v149;
    v60 = v12->i32[2];
    v61 = v12->i32[3];
    v62 = v36->i32[0];
    v63 = *v151;
    v64 = *v155;
    v65 = v37->i32[0];
    v66 = *v153;
    v67 = *v157;
    v68 = *v159;
    v10[20].i32[0] = v12->i32[0];
    v10[20].i32[1] = v50;
    v10[21].i32[0] = v51;
    v10[21].i32[1] = v52;
    v10[22].i32[0] = v53;
    v10[22].i32[1] = v54;
    v10[23].i32[0] = v55;
    v10[23].i32[1] = v56;
    v10[24].i32[0] = v60;
    v10[24].i32[1] = v57;
    v10[25].i32[0] = v58;
    v10[25].i32[1] = v59;
    v10[26].i32[0] = v61;
    v10[26].i32[1] = v62;
    v10[27].i32[0] = v63;
    v10[27].i32[1] = v64;
    v10[28].i32[0] = v65;
    v10[28].i32[1] = v66;
    v10[29].i32[0] = v67;
    v10[29].i32[1] = v68;
    v69 = CA::Render::KeyValueArray::get_float_key(*(v167 + 40), 358, 0.0);
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    v70 = *&dword_1ED4E9760;
    if (*&dword_1ED4E9760 == 0.0)
    {
      v70 = v69;
    }

    v71 = 1.0;
    *v10[30].i32 = powf(v70, 1.0 / *v10[72].i32);
    v72 = CA::Render::KeyValueArray::get_int_key(*(v167 + 40), 359, 0);
    if (BYTE14(xmmword_1ED4E98AC) != 1)
    {
      v71 = v72;
    }

    *v10[40].i32 = v71;
    v180.i16[0] = cf;
    v180.i16[1] = v163;
    v180.i16[2] = WORD2(v163);
    v180.i16[3] = v161;
    CA::OGL::emit_filter_quads_color(v10, a3, &v180, a5);
    if (v10[84] != a3)
    {
      CA::OGL::Context::unbind_surface(v10, a3, 0);
    }

    *(*&v10[2] + 16) = 0;
    *(*&v10[2] + 19) = 0;
  }
}